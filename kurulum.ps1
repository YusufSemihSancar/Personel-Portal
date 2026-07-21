# Personel Portalı - tek seferlik kurulum (PostgreSQL)
# Çalıştır: .\kurulum.ps1

$ErrorActionPreference = "Stop"
$Root = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $Root

function Write-Step($msg) {
    Write-Host ""
    Write-Host "==> $msg" -ForegroundColor Cyan
}

function Fail($msg) {
    Write-Host ""
    Write-Host "HATA: $msg" -ForegroundColor Red
    Write-Host "Kurulum yarıda kaldı." -ForegroundColor Yellow
    exit 1
}

Write-Host "========================================" -ForegroundColor Green
Write-Host "  Personel Portalı - Kurulum" -ForegroundColor Green
Write-Host "  React + Django + PostgreSQL" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green

Write-Step "Önkoşullar kontrol ediliyor..."

try { $py = (python --version 2>&1) } catch { $py = $null }
if (-not $py) { Fail "Python bulunamadı. https://www.python.org (3.11/3.12, Add to PATH)." }
Write-Host "  Python: $py"

try { $node = (node --version 2>&1) } catch { $node = $null }
if (-not $node) { Fail "Node.js bulunamadı. https://nodejs.org LTS kurun." }
Write-Host "  Node: $node"

try { $npm = (npm --version 2>&1) } catch { $npm = $null }
if (-not $npm) { Fail "npm bulunamadı." }
Write-Host "  npm: $npm"

Write-Step "Backend sanal ortam ve paketler..."

$backend = Join-Path $Root "backend"
Set-Location $backend

if (-not (Test-Path "venv\Scripts\python.exe")) {
    python -m venv venv
    if ($LASTEXITCODE -ne 0) { Fail "python -m venv başarısız." }
}

& .\venv\Scripts\python.exe -m pip install --upgrade pip
& .\venv\Scripts\pip.exe install -r requirements.txt
if ($LASTEXITCODE -ne 0) { Fail "pip install başarısız." }

$envPath = Join-Path $backend ".env"
$needsPassword = $false

if (-not (Test-Path ".env")) {
    Copy-Item ".env.example" ".env"
    Write-Host "  backend/.env oluşturuldu"
    $needsPassword = $true
} else {
    $envContent = Get-Content $envPath -Raw
    if ($envContent -match 'DB_PASSWORD=(sifreniz|$)') { $needsPassword = $true }
}

if ($needsPassword) {
    Write-Host ""
    Write-Host "PostgreSQL postgres kullanıcı şifrenizi yazın (yoksa Enter):" -ForegroundColor Yellow
    $secure = Read-Host -AsSecureString
    $BSTR = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($secure)
    $dbPass = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)

    $envLines = Get-Content $envPath
    $newLines = foreach ($line in $envLines) {
        if ($line -match '^DB_PASSWORD=') { "DB_PASSWORD=$dbPass" } else { $line }
    }
    $newLines | Set-Content $envPath -Encoding UTF8
}

Write-Step "PostgreSQL veritabanı kontrol ediliyor..."

$pyCreateDb = Join-Path $backend "_create_db_tmp.py"
Set-Content -Path $pyCreateDb -Encoding UTF8 -Value @'
import os, sys
from pathlib import Path
from dotenv import load_dotenv
import psycopg2
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT

load_dotenv(Path(__file__).resolve().parent / ".env")
host = os.getenv("DB_HOST", "127.0.0.1")
user = os.getenv("DB_USER", "postgres")
password = os.getenv("DB_PASSWORD", "")
port = int(os.getenv("DB_PORT", "5432"))
name = os.getenv("DB_NAME", "personel_db")

try:
    conn = psycopg2.connect(host=host, user=user, password=password, port=port, dbname=name)
    conn.close()
    print("OK")
except psycopg2.OperationalError:
    try:
        conn = psycopg2.connect(host=host, user=user, password=password, port=port, dbname="postgres")
        conn.set_isolation_level(ISOLATION_LEVEL_AUTOCOMMIT)
        cur = conn.cursor()
        cur.execute("SELECT 1 FROM pg_database WHERE datname = %s", (name,))
        if not cur.fetchone():
            cur.execute(f'CREATE DATABASE "{name}" ENCODING \'UTF8\' TEMPLATE template0')
        cur.close()
        conn.close()
        print("OK")
    except Exception as e:
        print("FAIL:", e)
        sys.exit(1)
except Exception as e:
    print("FAIL:", e)
    sys.exit(1)
'@

& .\venv\Scripts\python.exe $pyCreateDb
$createOk = ($LASTEXITCODE -eq 0)
Remove-Item $pyCreateDb -ErrorAction SilentlyContinue
if (-not $createOk) {
    Fail @"
PostgreSQL bağlantısı başarısız.

Kontrol listesi:
  1) PostgreSQL servisinin çalıştığından emin olun (Windows: services.msc)
  2) DBeaver'da bağlantı test edin (Host: 127.0.0.1, Port: 5432)
  3) backend/.env → DB_NAME=personel_db, DB_PASSWORD doğru olmalı
"@
}

Write-Step "Django migrate..."
& .\venv\Scripts\python.exe manage.py migrate
if ($LASTEXITCODE -ne 0) { Fail "migrate başarısız." }

Write-Step "Frontend paketleri (npm install)..."
$frontend = Join-Path $Root "frontend"
Set-Location $frontend

if (-not (Test-Path ".env")) {
    Copy-Item ".env.example" ".env"
    Write-Host "  frontend/.env oluşturuldu"
}

npm install
if ($LASTEXITCODE -ne 0) { Fail "npm install başarısız." }

Set-Location $Root

Write-Host ""
Write-Host "========================================" -ForegroundColor Green
Write-Host "  Kurulum tamam!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""
Write-Host "Çalıştırmak için: .\baslat.ps1" -ForegroundColor Cyan
Write-Host "Site:  http://localhost:5173" -ForegroundColor White
Write-Host "Test:  http://localhost:5173/test" -ForegroundColor White
Write-Host "API:   http://127.0.0.1:8000/api/health/" -ForegroundColor White
