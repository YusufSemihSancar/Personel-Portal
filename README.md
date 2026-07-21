# Personel Portalı

React + Django + PostgreSQL kurumsal personel portalı.

**Depo:** [https://github.com/YusufSemihSancar/Personel-Portal](https://github.com/YusufSemihSancar/Personel-Portal)

```
Tarayıcı (:5173)  →  Django API (:8000)  →  PostgreSQL
```

---

## GitHub'dan indirip çalıştırma

### 1) Gerekli yazılımlar (bir kez)

| Yazılım | Link |
|---------|------|
| Git | https://git-scm.com |
| Python 3.11 veya 3.12 | https://www.python.org — **Add to PATH** işaretleyin |
| Node.js LTS | https://nodejs.org |
| PostgreSQL | https://www.postgresql.org/download/windows/ |
| DBeaver (isteğe bağlı) | https://dbeaver.io/download/ |

PostgreSQL kurulumunda `postgres` şifrenizi not alın. Servisin çalışır durumda olduğundan emin olun.

### 2) Projeyi indirin

```powershell
git clone https://github.com/YusufSemihSancar/Personel-Portal.git
cd Personel-Portal
```

### 3) Kurulum (tek sefer)

```powershell
.\kurulum.ps1
```

Script şunları yapar:
- Python sanal ortam + Django paketleri
- `backend/.env` oluşturur, **PostgreSQL şifrenizi sorar**
- `personel_db` veritabanını oluşturur (yoksa)
- Django migrate çalıştırır
- Frontend `npm install`

### 4) Çalıştırma

```powershell
.\baslat.ps1
```

İki pencere açılır (Django + React). Durdurmak için pencereleri kapatın.

| Adres | Açıklama |
|-------|----------|
| http://localhost:5173 | Ana sayfa |
| http://localhost:5173/test | Sistem test sayfası |
| http://127.0.0.1:8000/api/health/ | API kontrolü |

---

## Şifre ve gizli bilgiler

Repoda **gerçek şifre yoktur**. Sadece örnek dosyalar vardır:

| Dosya | Açıklama |
|-------|----------|
| `backend/.env.example` | Şablon — `DB_PASSWORD=sifreniz` |
| `frontend/.env.example` | API adresi şablonu |

`kurulum.ps1` çalışınca `.env` dosyaları oluşturulur; şifrenizi siz girersiniz.  
`.env` dosyaları `.gitignore` ile repoya **gönderilmez**.

Her geliştirici kendi bilgisayarında kendi PostgreSQL şifresini kullanır.

---

## DBeaver bağlantısı

| Alan | Değer |
|------|-------|
| Host | `127.0.0.1` |
| Port | `5432` |
| Veritabanı | `personel_db` |
| Kullanıcı | `postgres` |
| Şifre | Kendi `backend/.env` dosyanızdaki `DB_PASSWORD` |

---

## Sorun giderme

**PostgreSQL bağlantı hatası**  
Servisin çalıştığını kontrol edin (`services.msc` → `postgresql-*`). Şifreyi kurulum sırasında doğru girin.

**Kurulum yapılmamış**  
`.\kurulum.ps1` çalıştırın, ardından `.\baslat.ps1`.

**Güncelleme sonrası**  
```powershell
git pull
.\kurulum.ps1
.\baslat.ps1
```

---

## Dosyalar

| Dosya | Görev |
|-------|--------|
| `kurulum.ps1` | İlk kurulum |
| `baslat.ps1` | Backend + frontend başlat |
| `backend/` | Django API |
| `frontend/` | React arayüz |
