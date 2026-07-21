from django.urls import path

from .views import health, system_status

urlpatterns = [
    path("health/", health, name="health"),
    path("system-status/", system_status, name="system-status"),
]
