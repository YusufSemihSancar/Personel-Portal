# Personel Portalı - backend + frontend başlat
$Root = Split-Path -Parent $MyInvocation.MyCommand.Path

if (-not (Test-Path "$Root\backend\venv\Scripts\python.exe")) {
    Write-Host "Önce kurulum yapın: .\kurulum.ps1" -ForegroundColor Red
    exit 1
}

Write-Host "Personel Portalı başlatılıyor..." -ForegroundColor Cyan

Start-Process powershell -ArgumentList @(
    "-NoExit",
    "-Command",
    "Set-Location '$Root\backend'; .\venv\Scripts\Activate.ps1; python manage.py runserver"
)

Start-Process powershell -ArgumentList @(
    "-NoExit",
    "-Command",
    "Set-Location '$Root\frontend'; npm run dev"
)

Write-Host ""
Write-Host "Backend  -> http://127.0.0.1:8000"
Write-Host "Frontend -> http://localhost:5173"
Write-Host "Test     -> http://localhost:5173/test"
Write-Host "İki pencere açıldı. Durdurmak için o pencereleri kapatın."
Start-Sleep -Seconds 2
