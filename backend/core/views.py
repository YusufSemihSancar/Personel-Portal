from django.db import connection
from rest_framework.decorators import api_view
from rest_framework.response import Response


@api_view(["GET"])
def health(request):
    return Response({"status": "ok"})


@api_view(["GET"])
def system_status(request):
    db_ok = False
    db_error = None

    try:
        with connection.cursor() as cursor:
            cursor.execute("SELECT version()")
            version = cursor.fetchone()[0]
        db_ok = True
    except Exception as exc:
        version = None
        db_error = str(exc)

    return Response(
        {
            "status": "ok",
            "database": {
                "connected": db_ok,
                "engine": "postgresql",
                "version": version,
                "error": db_error,
            },
            "stack": {
                "backend": "Django",
                "frontend": "React",
                "database": "PostgreSQL",
            },
        }
    )
