-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 17 Tem 2026, 09:03:26
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `personel_db`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `anasayfa_duyurular`
--

CREATE TABLE `anasayfa_duyurular` (
  `id` int(11) NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `aciklama` text NOT NULL,
  `resim` varchar(255) NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `anasayfa_duyurular`
--

INSERT INTO `anasayfa_duyurular` (`id`, `baslik`, `aciklama`, `resim`, `view`) VALUES
(1, 'Stajyer Oryantasyon Eğitimi Tamamlandı', 'Belediyemizde yeni döneme başlayan stajyer öğrencilerimiz için oryantasyon programı düzenlendi.', '../images/stajyer-oryantasyon-e-t-m_8697.webp', 1),
(2, 'Geleneksel Bayramlaşma Töreni Gerçekleşti', 'Kurban Bayramı vesilesiyle tüm personelimizin katılımıyla coşkulu bir bayramlaşma programı yapıldı.', '../images/24-kas-m-o-retmenler-gunu_2947.webp', 1),
(3, '8 Mart Dünya Kadınlar Günü Kutlandı', 'Belediyemizdeki kadın personelimizin Dünya Kadınlar Günü\'nü özel bir etkinlikle kutladık.', '../images/8-mart-dunya-kadinlar-gunu-programi_8383.webp', 0),
(4, 'Personel İftar Programı Büyük İlgi Gördü', 'Ramazan ayının manevi atmosferinde personelimizle birlikte iftar sofrasında buluştuk.', '../images/personel-ftar-program_109.webp', 1),
(5, 'Öğretmenler Günü Unutulmadı', 'Gebze\'deki öğretmenlerimizi bu özel günlerinde yalnız bırakmadık ve çeşitli ziyaretler gerçekleştirdik.', '../images/24-kas-m-o-retmenler-gunu_2947.webp', 0),
(6, 'Dağ Bisikleti Kupası Gebze\'de Nefes Kesti', 'Türkiye Ulusal Dağ Bisikleti Kupası\'nın bir ayağına ev sahipliği yapmanın gururunu yaşadık.', '../images/ulusal-da-bisikleti-kupas-yar-lar_128.webp', 0),
(7, 'Personelimize Ağız ve Diş Sağlığı Taraması', 'Çalışanlarımızın sağlığını önemsiyor, düzenli olarak sağlık taramaları gerçekleştiriyoruz.', '../images/personellerimizin-a-z-ve-di-sa-l-n-onemsiyoruz_7091.webp', 0),
(8, 'Yaz Sezonunu Piknikle Açtık', 'Yoğun çalışma temposuna mola vererek tüm birimlerimizin katıldığı bir piknik organizasyonu düzenledik.', '../images/personel-p-kn-k-programi_9118.webp', 3),
(9, 'Stajyerlerle Film Okuma Etkinliği', 'Gençlerimizin vizyonunu geliştirmek amacıyla film okuma ve analiz programları düzenliyoruz.', '../images/stajyer-f-lm-okuma-programi_3604.webp', 1),
(10, 'İkinci Geleneksel İftar Buluşması', 'Personelimiz ve aileleriyle birlikte Ramazan ayının bereketini paylaştığımız iftar programımız.', '../images/personel-ftar-program_109.webp', 1),
(11, 'Stajyer Dönem Sonu Veda Programı', 'Staj dönemini başarıyla tamamlayan öğrencilerimiz için bir veda ve teşekkür etkinliği düzenlendi.', '../images/stajyer-donem-sonu-etk-nl_6028.webp', 1),
(12, 'Yeni Stajyerlerimize \"Hoş Geldin\" Dedik', 'Belediye çalışmalarını yakından tanımaları için yeni stajyerlerimize yönelik bir oryantasyon yapıldı.', '../images/stajyer-oryantasyon-e-t-m_8697.webp', 2),
(13, 'Kadın Personelimize Özel İkramlar', '8 Mart kapsamında belediyemizdeki tüm kadın çalışanlarımıza küçük bir jest hazırladık.', '../images/8-mart-dunya-kadinlar-gunu-programi_8383.webp', 2),
(14, 'Ramazan Bayramı Buluşması', 'Ramazan Bayramı dolayısıyla personelimizle bir araya gelerek bayramlaştık.', '../images/personel-bayramla-ma-programi_5965.webp', 1),
(15, 'Birlik ve Beraberlik İftarı', 'İftar programımız, personelimiz arasındaki birlik ve beraberliği pekiştirdi.', '../images/personel-ftar-program_109.webp', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `anasayfa_linkler`
--

CREATE TABLE `anasayfa_linkler` (
  `id` int(11) NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `logo_url` varchar(255) DEFAULT NULL,
  `hedef_url` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `anasayfa_linkler`
--

INSERT INTO `anasayfa_linkler` (`id`, `baslik`, `logo_url`, `hedef_url`) VALUES
(1, 'OMIS', '../images/otomasyon/omis_7572.webp', 'https://ebelediye.gebze.bel.tr/eBelediye/'),
(2, 'Ulakbel', '../images/otomasyon/ulakbel_5496.webp', 'https://ulakbel.gebze.bel.tr/ulakbel#/'),
(3, 'İmar Yönetim Sistemi', '../images/otomasyon/imar-yonetim-sistemi_8038.webp', 'https://www.gebze.bel.tr/ebelediye/'),
(4, 'Dijital Arşiv', '../images/otomasyon/dijital-arsiv_415.webp', 'https://www.gebze.bel.tr/'),
(5, 'Outlook', '../images/otomasyon/outlook_4005.webp', 'https://outlook.live.com/'),
(6, 'Sosyal Yardım', '../images/otomasyon/sosyal-yardim_3767.webp', 'https://www.turkiye.gov.tr/ashb-sosyal-yardim-bilgileri-sorgulama'),
(7, 'Netcad', '../images/otomasyon/netcad_3888.webp', 'https://www.netcad.com/'),
(8, 'E-Belediye Sistemi', '../images/otomasyon/ebys_8493.webp', 'https://www.belediye.gov.tr/'),
(9, 'E-Belediye Evlendrme Modülü', '../images/otomasyon/e-belediye-evlendirme-modulu_3993.webp', 'https://www.belediye.gov.tr/evlendirme-modulu'),
(10, 'E-Belediye Sosyal Yardım Modülü', '../images/otomasyon/e-belediye-sosyal-yard-m-modulu_4432.webp', 'https://www.belediye.gov.tr/sosyal-yardim-takip-sistemi-syts-modulu');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `anketler`
--

CREATE TABLE `anketler` (
  `id` int(11) NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `aciklama` text DEFAULT NULL,
  `resim_url` varchar(500) DEFAULT NULL,
  `baslangic_tarihi` date DEFAULT NULL,
  `bitis_tarihi` date DEFAULT NULL,
  `katilim_sayisi` int(11) DEFAULT 0,
  `hedef_katilim` int(11) DEFAULT 0,
  `favori` tinyint(1) NOT NULL DEFAULT 0,
  `kategori_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `anketler`
--

INSERT INTO `anketler` (`id`, `baslik`, `aciklama`, `resim_url`, `baslangic_tarihi`, `bitis_tarihi`, `katilim_sayisi`, `hedef_katilim`, `favori`, `kategori_id`) VALUES
(13, 'Personel Memnuniyet Anketi', 'Belediyemiz bünyesindeki genel memnuniyeti, yönetim süreçlerini ve kurumsal aidiyet duygusunu ölçümlemek amacıyla hazırlanmıştır.', 'https://images.unsplash.com/photo-1541746972996-4e0b0f43e02a?q=80&w=600', '2026-07-01', '2026-08-31', 1, 200, 1, 1),
(14, 'Eğitim İhtiyaç Analizi', 'Gelecek dönem düzenleyeceğimiz mesleki ve kişisel gelişim eğitimlerini sizin talep ve ihtiyaçlarınıza göre şekillendiriyoruz.', 'https://images.unsplash.com/photo-1524178232363-1fb2b075b655?q=80&w=600', '2026-07-10', '2026-09-15', 1, 150, 0, 1),
(15, 'İş Ortamı Değerlendirme Anketi', 'Çalıştığınız birimdeki fiziksel koşulları, teknik donanım yeterliliğini ve iş sağlığı standartlarını tespit etmeyi amaçlıyoruz.', 'https://images.unsplash.com/photo-1497366216548-37526070297c?q=80&w=600', '2026-07-12', '2026-08-15', 0, 250, 0, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `anketler_kategori`
--

CREATE TABLE `anketler_kategori` (
  `id` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `ad` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `anketler_kategori`
--

INSERT INTO `anketler_kategori` (`id`, `slug`, `ad`) VALUES
(1, 'active', 'Aktif'),
(2, 'pending', 'Beklemede'),
(3, 'completed', 'Tamamlandı'),
(4, 'expired', 'Süresi Doldu');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `anket_cevaplari`
--

CREATE TABLE `anket_cevaplari` (
  `id` int(11) NOT NULL,
  `anket_id` int(11) NOT NULL,
  `personel_id` int(11) NOT NULL,
  `soru_id` int(11) NOT NULL,
  `secenek_id` int(11) DEFAULT NULL,
  `cevap_metni` text DEFAULT NULL,
  `olusturma_tarihi` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `anket_cevaplari`
--

INSERT INTO `anket_cevaplari` (`id`, `anket_id`, `personel_id`, `soru_id`, `secenek_id`, `cevap_metni`, `olusturma_tarihi`) VALUES
(21, 14, 1, 36, 95, NULL, '2026-07-14 14:33:41'),
(22, 14, 1, 37, 99, NULL, '2026-07-14 14:33:41'),
(23, 14, 1, 38, 103, NULL, '2026-07-14 14:33:41'),
(24, 14, 1, 39, 107, NULL, '2026-07-14 14:33:41'),
(25, 14, 1, 40, NULL, 'ljnlnj', '2026-07-14 14:33:41'),
(30, 13, 1, 31, 83, NULL, '2026-07-14 14:42:20'),
(31, 13, 1, 32, 88, NULL, '2026-07-14 14:42:20'),
(32, 13, 1, 33, 91, NULL, '2026-07-14 14:42:20'),
(33, 13, 1, 34, 94, NULL, '2026-07-14 14:42:20'),
(34, 13, 1, 35, NULL, 'sdfsdfsd', '2026-07-14 14:42:20');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `anket_katilimlari`
--

CREATE TABLE `anket_katilimlari` (
  `id` int(11) NOT NULL,
  `anket_id` int(11) NOT NULL,
  `personel_id` int(11) NOT NULL,
  `tamamlanma_tarihi` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `anket_katilimlari`
--

INSERT INTO `anket_katilimlari` (`id`, `anket_id`, `personel_id`, `tamamlanma_tarihi`) VALUES
(62, 13, 1, '2026-07-14 14:42:20'),
(63, 14, 1, '2026-07-14 14:33:41');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `anket_secenekleri`
--

CREATE TABLE `anket_secenekleri` (
  `id` int(11) NOT NULL,
  `soru_id` int(11) NOT NULL,
  `secenek_metni` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `anket_secenekleri`
--

INSERT INTO `anket_secenekleri` (`id`, `soru_id`, `secenek_metni`) VALUES
(82, 31, 'Tamamen Adil Buluyorum'),
(83, 31, 'Kısmen Adil Buluyorum / Geliştirilmeli'),
(84, 31, 'Adil Bulmuyorum'),
(85, 32, 'Mükemmel - Her zaman açık, çözüm odaklı ve destekleyici'),
(86, 32, 'İyi - İş akışında ihtiyaç duyduğumda rahatlıkla ulaşabiliyorum'),
(87, 32, 'Orta - Sadece resmi ve zorunlu durumlarda iletişimimiz oluyor'),
(88, 32, 'Yetersiz - İletişim kurmakta ve rehberlik almakta zorlanıyorum'),
(89, 33, 'Evet, emeğimin karşılık bulduğunu ve değer gördüğünü her zaman hissediyorum'),
(90, 33, 'Bazen, projelere ve dönemsel durumlara göre takdir görüyorum'),
(91, 33, 'Hayır, yaptığım işlerin kurumsal düzeyde fark edildiğini düşünmüyorum'),
(92, 34, 'Çok yüksek kurumsal aidiyet hissediyorum, gurur duyuyorum'),
(93, 34, 'Normal düzeyde, sadece görev bilinciyle yaklaşıyorum'),
(94, 34, 'Herhangi bir aidiyet veya kurumsal bağ hissetmiyorum'),
(95, 36, 'Kamu Mevzuatı, İhale Kanunu ve Resmi Yazışma Usulleri'),
(96, 36, 'Bilişim Teknolojileri, Web Geliştirme ve Siber Güvenlik'),
(97, 36, 'Halkla İlişkiler, Vatandaş İletişimi ve Etkili Kriz Yönetimi'),
(98, 36, 'Mali Hizmetler, Bütçe Yönetimi ve Stratejik Planlama'),
(99, 37, 'Stres Yönetimi, Öfke Kontrolü ve Tükenmişlikten Korunma'),
(100, 37, 'Zaman Yönetimi, İş Planlama ve Görev Delegasyonu Çalışmaları'),
(101, 37, 'Diksiyon, Güzel Konuşma ve Beden Dili Yetkinlikleri'),
(102, 37, 'Liderlik, Takım Çalışması ve Sinerji Oluşturma Yaklaşımları'),
(103, 38, 'Hafta içi mesai saatleri içerisinde planlanmalı'),
(104, 38, 'Hafta içi mesai bitiminden sonra (Akşam saatlerinde) yapılmalı'),
(105, 38, 'Hafta sonu (Cumartesi günleri) dinlenme vaktini bozmadan yapılmalı'),
(106, 39, 'Sınıf İçi (Yüz Yüze) Uygulamalı ve İnteraktif Workshop'),
(107, 39, 'Uzaktan Eğitim Portalı Üzerinden Canlı (Online) Webinarlar'),
(108, 39, 'Dilediğim Zaman İzleyebileceğim Önceden Kaydedilmiş Video Dersler'),
(109, 41, 'Çok Memnunum, standartlar tam olarak karşılanıyor'),
(110, 41, 'Kısmen Memnunum, havalandırma veya ışıklandırma gibi iyileştirmeler gerekiyor'),
(111, 41, 'Hiç Memnun Değilim, çalışma konforumuzu ciddi derecede olumsuz etkiliyor'),
(112, 42, 'Tamamen Yeterli ve Hızlı, işimi yavaşlatacak bir sorun yok'),
(113, 42, 'Kısmen Yeterli, donanımların veya kurumsal sistemlerin yenilenmesi gerekiyor'),
(114, 42, 'Kesinlikle Yetersiz, teknik aksaklıklar sebebiyle iş kayıpları yaşıyorum'),
(115, 43, 'En üst düzeyde önem veriliyor, kurallara tam uyum sağlanıyor'),
(116, 43, 'Orta düzeyde, bazı eksikliklerin acilen tamamlanması şart'),
(117, 43, 'Gerekli hassasiyetin gösterilmediğini ve riskler barındırdığını düşünüyorum'),
(118, 44, 'Olumlu etkiliyor, sessiz ve düzenli bir konsantrasyon ortamı var'),
(119, 44, 'Nötr/Bazen olumsuz etkiliyor, aşırı kalabalık veya anlık gürültüler oluyor'),
(120, 44, 'Çok olumsuz etkiliyor, yerleşim planı odaklanmayı ve çalışmayı engelliyor');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `anket_sorulari`
--

CREATE TABLE `anket_sorulari` (
  `id` int(11) NOT NULL,
  `anket_id` int(11) NOT NULL,
  `soru_metni` text NOT NULL,
  `soru_tipi` enum('coktan_secmeli','acik_uclu') NOT NULL DEFAULT 'coktan_secmeli',
  `sira` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `anket_sorulari`
--

INSERT INTO `anket_sorulari` (`id`, `anket_id`, `soru_metni`, `soru_tipi`, `sira`) VALUES
(31, 13, 'Belediyemizde yürütülen insan kaynakları ve yönetim politikalarını genel olarak adil buluyor musunuz?', 'coktan_secmeli', 1),
(32, 13, 'Bağlı bulunduğunuz birim amiriyle olan iletişim, geri bildirim ve koordinasyon düzeyinizi nasıl değerlendiriyorsunuz?', 'coktan_secmeli', 2),
(33, 13, 'Kurum içerisinde yaptığınız işlerin ve başarılarınızın üst yönetim tarafından takdir edildiğini düşünüyor musunuz?', 'coktan_secmeli', 3),
(34, 13, 'Belediyemiz personeli olmaktan ve bu kuruma hizmet etmekten ne derece memnuniyet duyuyorsunuz (Kurumsal Aidiyet)?', 'coktan_secmeli', 4),
(35, 13, 'Kurum içi çalışma motivasyonunuzu ve iş memnuniyetinizi en üst seviyeye çıkarmak adına yönetimden temel beklentiniz nedir?', 'acik_uclu', 5),
(36, 14, 'Önümüzdeki dönemde hangi alanda mesleki-teknik ve mevzuat eğitimine öncelikli olarak ihtiyaç duyuyorsunuz?', 'coktan_secmeli', 1),
(37, 14, 'Kişisel gelişim ve yetkinlik eğitimleri kapsamında aşağıdaki başlıklardan hangisine öncelik verilmesini istersiniz?', 'coktan_secmeli', 2),
(38, 14, 'Düzenlenecek hizmet içi eğitimlerin hangi zaman diliminde yapılması iş verimliliğinizi olumsuz etkilemez?', 'coktan_secmeli', 3),
(39, 14, 'Eğitimlerin aktarım yönteminde hangi modeli kendiniz için daha efektif ve kalıcı buluyorsunuz?', 'coktan_secmeli', 4),
(40, 14, 'Mevcut görev tanımınızla ilgili teknik, pratik veya yazılımsal olarak kendinizi yetersiz hissettiğiniz ve eğitim almayı acilen talep ettiğiniz spesifik konuları detaylıca yazınız.', 'acik_uclu', 5),
(41, 15, 'Mevcut çalışma ofisinizin fiziksel şartlarından (ışıklandırma, havalandırma, iklimlendirme ve temizlik vb.) memnun musunuz?', 'coktan_secmeli', 1),
(42, 15, 'Görevinizi tam olarak yerine getirirken kullandığınız teknik donanımların (bilgisayar donanımı, yazıcı, kurumsal yazılımlar ve internet hızı vb.) yeterli olduğunu düşünüyor musunuz?', 'coktan_secmeli', 2),
(43, 15, 'Çalıştığınız birimde iş sağlığı ve güvenliği (İSG) standartlarına, acil durum ekipmanlarına ve kurallarına uyumu ne düzeyde görüyorsunuz?', 'coktan_secmeli', 3),
(44, 15, 'Ofis içi ortak çalışma düzeninin, yerleşim planının ve ses seviyesinin günlük iş odağınıza etkisini nasıl tanımlarsınız?', 'coktan_secmeli', 4),
(45, 15, 'Çalışma ortamınızın fiziksel koşullarını, ergonomisini veya donanımsal altyapısını mükemmelleştirmek adına mimari veya teknik çözüm önerileriniz nelerdir?', 'acik_uclu', 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `duyurular`
--

CREATE TABLE `duyurular` (
  `id` int(11) NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `aciklama` text NOT NULL,
  `resim` varchar(255) NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `duyurular`
--

INSERT INTO `duyurular` (`id`, `baslik`, `aciklama`, `resim`, `view`) VALUES
(1, 'Stajyer Oryantasyon Eğitimi Tamamlandı', 'Belediyemizde yeni döneme başlayan stajyer öğrencilerimiz için oryantasyon programı düzenlendi.', '../images/stajyer-oryantasyon-e-t-m_8697.webp', 0),
(2, 'Geleneksel Bayramlaşma Töreni Gerçekleşti', 'Kurban Bayramı vesilesiyle tüm personelimizin katılımıyla coşkulu bir bayramlaşma programı yapıldı.', '../images/24-kas-m-o-retmenler-gunu_2947.webp', 0),
(3, '8 Mart Dünya Kadınlar Günü Kutlandı', 'Belediyemizdeki kadın personelimizin Dünya Kadınlar Günü\'nü özel bir etkinlikle kutladık.', '../images/8-mart-dunya-kadinlar-gunu-programi_8383.webp', 0),
(4, 'Personel İftar Programı Büyük İlgi Gördü', 'Ramazan ayının manevi atmosferinde personelimizle birlikte iftar sofrasında buluştuk.', '../images/personel-ftar-program_109.webp', 0),
(5, 'Öğretmenler Günü Unutulmadı', 'Gebze\'deki öğretmenlerimizi bu özel günlerinde yalnız bırakmadık ve çeşitli ziyaretler gerçekleştirdik.', '../images/24-kas-m-o-retmenler-gunu_2947.webp', 0),
(6, 'Dağ Bisikleti Kupası Gebze\'de Nefes Kesti', 'Türkiye Ulusal Dağ Bisikleti Kupası\'nın bir ayağına ev sahipliği yapmanın gururunu yaşadık.', '../images/ulusal-da-bisikleti-kupas-yar-lar_128.webp', 0),
(7, 'Personelimize Ağız ve Diş Sağlığı Taraması', 'Çalışanlarımızın sağlığını önemsiyor, düzenli olarak sağlık taramaları gerçekleştiriyoruz.', '../images/personellerimizin-a-z-ve-di-sa-l-n-onemsiyoruz_7091.webp', 0),
(8, 'Yaz Sezonunu Piknikle Açtık', 'Yoğun çalışma temposuna mola vererek tüm birimlerimizin katıldığı bir piknik organizasyonu düzenledik.', '../images/personel-p-kn-k-programi_9118.webp', 0),
(9, 'Stajyerlerle Film Okuma Etkinliği', 'Gençlerimizin vizyonunu geliştirmek amacıyla film okuma ve analiz programları düzenliyoruz.', '../images/stajyer-f-lm-okuma-programi_3604.webp', 0),
(10, 'İkinci Geleneksel İftar Buluşması', 'Personelimiz ve aileleriyle birlikte Ramazan ayının bereketini paylaştığımız iftar programımız.', '../images/personel-ftar-program_109.webp', 0),
(11, 'Stajyer Dönem Sonu Veda Programı', 'Staj dönemini başarıyla tamamlayan öğrencilerimiz için bir veda ve teşekkür etkinliği düzenlendi.', '../images/stajyer-donem-sonu-etk-nl_6028.webp', 0),
(12, 'Yeni Stajyerlerimize \"Hoş Geldin\" Dedik', 'Belediye çalışmalarını yakından tanımaları için yeni stajyerlerimize yönelik bir oryantasyon yapıldı.', '../images/stajyer-oryantasyon-e-t-m_8697.webp', 0),
(13, 'Kadın Personelimize Özel İkramlar', '8 Mart kapsamında belediyemizdeki tüm kadın çalışanlarımıza küçük bir jest hazırladık.', '../images/8-mart-dunya-kadinlar-gunu-programi_8383.webp', 0),
(14, 'Ramazan Bayramı Buluşması', 'Ramazan Bayramı dolayısıyla personelimizle bir araya gelerek bayramlaştık.', '../images/personel-bayramla-ma-programi_5965.webp', 0),
(15, 'Birlik ve Beraberlik İftarı', 'İftar programımız, personelimiz arasındaki birlik ve beraberliği pekiştirdi.', '../images/personel-ftar-program_109.webp', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `duyurular_kategori`
--

CREATE TABLE `duyurular_kategori` (
  `id` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `ad` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `duyurular_kategori`
--

INSERT INTO `duyurular_kategori` (`id`, `slug`, `ad`) VALUES
(1, 'insan', 'İnsan Kaynakları'),
(2, 'bilgi', 'Bilgi İşlem');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `etkinlikler`
--

CREATE TABLE `etkinlikler` (
  `id` int(11) NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `aciklama` text DEFAULT NULL,
  `tarih` date NOT NULL,
  `bitis_tarihi` date DEFAULT NULL,
  `view` int(11) DEFAULT 0,
  `resim` varchar(255) DEFAULT NULL,
  `durum_id` int(11) DEFAULT NULL,
  `durum` varchar(20) NOT NULL DEFAULT 'aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `etkinlikler`
--

INSERT INTO `etkinlikler` (`id`, `baslik`, `aciklama`, `tarih`, `bitis_tarihi`, `view`, `resim`, `durum_id`, `durum`) VALUES
(1, 'Stajyer Oryantasyon Eğitimi', '6734 ve 6735 Sayılı Kanun Eğitimi - Biyomedikal Eğitimi - Üniversite Eğitimi - Oryantasyon Eğitimi - Fen Programlama Eğitimi - Mevzuat Eğitimi - Teknoloji Çalışma Eğitimi...', '2025-08-06', '2025-12-31', 96, '../images/stajyer-oryantasyon-e-t-m_8697.webp', 1, 'aktif'),
(2, 'Stajyer Dönem Sonu Etkinliği', 'Köprülü Geçmis Mahallesi, 503 Sokak\'taki çalışmalar...Köprülü Geçmis Mahallesi, 503 Sokak\'taki çalışmalar...', '2025-05-22', '2025-06-30', 153, '../images/stajyer-donem-sonu-etk-nl_6028.webp', 1, 'aktif'),
(3, 'Personel İftar Programı', 'Kül, katkısız ve tüm güzelleştirme organlarından şeye çeşit kurtarıcılar...Kül, katkısız ve tüm güzelleştirme organlarından şeye çeşit kurtarıcılar...', '2024-03-15', '2024-04-15', 80, '../images/pesonel-ftar-programi_3732.webp', 2, 'pasif'),
(4, '8 Mart Dünya Kadınlar Günü Programı', '4 Ekim Dünya Hayvanları Koruma Günü nedeniyle 4 Ekim boyunca...4 Ekim Dünya Hayvanları Koruma Günü nedeniyle 4 Ekim boyunca...', '2024-03-08', '2024-03-08', 236, '../images/8-mart-dunya-kadinlar-gunu-programi_8383.webp', 2, 'pasif'),
(5, 'Ön Ödeme Kredi ve Avans Eğitimi', 'Bağışlanmış günlük programı göbildirinde park ve yeşil alanlarımızda...', '2025-02-27', '2025-03-31', 159, '../images/on-odeme-kred-ve-avans-e-t-m_2065.webp', 2, 'pasif'),
(6, 'Marmara Kariyer Yer Fuarı', 'Personel gelişimi için düzenlenen eğitim seminerimiz tamamlandı. Katılımcılarımız başarı sertifikalarını aldı...', '2024-02-26', '2024-02-28', 198, '../images/marmara-kar-yer-fuari-kocael-2024_9790.webp', 2, 'pasif'),
(7, 'Ofis Programları Eğitimi', 'Şehrimizin çeşitli bölgelerinde gerçekleştirilen yol bakım ve onarım çalışmaları devam ediyor...', '2025-02-19', '2025-08-31', 271, '../images/of-s-programlari-e-t-m_2683.webp', 1, 'pasif'),
(8, 'İlkyardım Eğitimi', 'Doğal yaşam alanlarının korunması için başlatılan temizlik kampanyası büyük ilgi gördü...', '2024-02-12', '2025-12-31', 200, '../images/lkyardim-e-t-m_1307.webp', 1, 'pasif'),
(9, 'Stajyer Film-Okuma Programı', 'Doğal yaşam alanlarının korunması için başlatılan temizlik kampanyası büyük ilgi gördü...', '2024-02-07', '2024-03-15', 201, '../images/stajyer-f-lm-okuma-programi_3604.webp', 2, 'pasif'),
(10, '3 Aralık Dünya Engelliler Günü Personel Etkinliği', 'Personelimize yönelik dijital dönüşüm ve teknoloji kullanımı eğitimi başarıyla tamamlandı...', '2023-12-03', '2023-12-03', 314, '../images/3-aralik-dunya-engell-ler-gunu-personel-yeme_9554.webp', 2, 'pasif'),
(11, 'Stajyer Öğrenci Oryantasyonu', 'Şehir merkezindeki altyapı geliştirme ve modernizasyon çalışmaları hızla devam ediyor...', '2025-11-29', '2025-12-15', 434, '../images/stajyer-o-renci-oryantasyonu_2177.webp', 2, 'aktif'),
(12, '24 Kasım Öğretmenler Günü Etkinliği', 'Sokak hayvanlarının sağlık kontrolü ve bakım programı kapsamında çalışmalar sürdürülüyor...', '2023-11-24', '2023-11-24', 186, '../images/24-kas-m-o-retmenler-gunu_2947.webp', 2, 'pasif'),
(13, 'Müdürlükler Arası Spor Turnuvası', 'Kent genelindeki park ve yeşil alanların bakım ve düzenleme çalışmaları tamamlandı...', '2023-08-21', '2023-09-30', 280, '../images/futbol-turnuvasi_9646.webp', 2, 'pasif'),
(14, 'Personel Piknik Programı', 'Kent genelindeki park ve yeşil alanların bakım ve düzenleme çalışmaları tamamlandı...', '2023-07-22', '2023-07-22', 279, '../images/personel-p-kn-k-programi_9118.webp', 2, 'pasif'),
(15, 'Personel Bayramlaşma Programı', 'Kent genelindeki park ve yeşil alanların bakım ve düzenleme çalışmaları tamamlandı...', '2023-06-23', '2023-06-25', 280, '../images/personel-bayramla-ma-programi_5965.webp', 2, 'pasif'),
(16, 'Personel İftar Programı', 'Kent genelindeki park ve yeşil alanların bakım ve düzenleme çalışmaları tamamlandı...', '2023-04-10', '2023-05-15', 280, '../images/personel-ftar-program_109.webp', 2, 'pasif');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `etkinlikler_durum`
--

CREATE TABLE `etkinlikler_durum` (
  `id` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `ad` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `etkinlikler_durum`
--

INSERT INTO `etkinlikler_durum` (`id`, `slug`, `ad`) VALUES
(1, 'aktif', 'Aktif'),
(2, 'pasif', 'Pasif');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `etkinlikler_duyurular`
--

CREATE TABLE `etkinlikler_duyurular` (
  `id` int(11) NOT NULL,
  `sayfa_tipi` varchar(50) NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `aciklama` text DEFAULT NULL,
  `resim_url` varchar(255) DEFAULT NULL,
  `tarih` date DEFAULT NULL,
  `kategori_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `etkinlikler_duyurular`
--

INSERT INTO `etkinlikler_duyurular` (`id`, `sayfa_tipi`, `baslik`, `aciklama`, `resim_url`, `tarih`, `kategori_id`) VALUES
(1, 'duyuru', 'DİL EĞİTİM MODELLERİNDE GEÇERLİ %50 İNDİRİM!', 'KURUMUMUZ PERSONELİ VE 1. DERECE YAKINLARINA ÖZEL AMERICAN VIP DİL OKULLARINDA GEÇERLİ %50 İNİDİRİM ANLAŞMASI İMZALANDI.', '../images/d-l-e-t-m-modeller-nde-gecerl-50-nd-r-m_4469.webp', '2023-10-04', 1),
(2, 'duyuru', 'Gebze\'de Zabıta Haftası Kutlandı', 'Gebze Belediye Başkanı Zinnur Büyükgöz, her yıl 1-7 Eylül tarihleri arasında kutlanan Zabıta Haftası münasebetiyle zabıta personelleriyle bir araya geldi.', '../images/gebze-de-zab-ta-haftas-kutland_5157 (1).webp', '2023-10-04', 1),
(3, 'duyuru', 'GEBZE\'DE EK ZAM PROTOKOLÜ İMZALANDI', 'Gebze Belediyesi, bünyesinde görev yapan tüm işçilerin maaşlarına %20 zam müjdesini verdi. Ek zam protokolü Gebze Belediye Başkanı Zinnur BÜYÜKGÖZ ve Hizmet-İş ve Özgüven-Sen Sendikası yetkilileri arasında imzalandı.', '../images/gebze-de-ek-zam-protokolu-mzalandi_4681.webp', '2023-10-04', 1),
(4, 'duyuru', 'Gebze\'nin Filosu Büyüyor;', 'Gebze\'nin mahallelerine daha kaliteli hizmet verebilmek adına makine ve araç filosuna yeni takviyeler yapılmasını sağlayan Gebze Belediye Başkanı Zinnur Büyükgöz, belediyenin öz kaynaklarıyla satın alınan 100 yeni aracı filoya kazandırdı.', '../images/gebze-nin-filosu-buyuyor_2355.webp', '2023-10-04', 1),
(5, 'duyuru', 'Daha Sağlıklı Personel İçin', 'Gebze Belediyesi bünyesinde görev yapan tüm personellerimiz ve 1. derece yakınları (anne, baba, eş ve çocuk ) anlaşmalı sağlık kurumlarında indirimli fiyatlardan faydalanabilme olanağına sahip olacaklardır.', '../images/daha-saazlikli-ba-r-personel-a-a-a-n_7523.webp', '2023-10-04', 1),
(6, 'duyuru', 'Parola Güvenlik Politika Geçişi', 'T.C. Cumhurbaşkanlığı Dijital Dönüşüm Ofisi Başkanlığı koordinasyonunda başlatılan \"Bilgi ve İletişim Güvenliği Rehberi\" uyum süreci doğrultusunda gerçekleştireceğimiz \"Güvenli Parola Politikası\" geçişi kapsamında, bilgisayar oturumu açma parolaları değişecektir.', '../images/parola-guvenlik-politikasi-duyurusu_2090.webp', '2023-10-04', 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `haberler`
--

CREATE TABLE `haberler` (
  `id` int(11) NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `resim` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `haberler`
--

INSERT INTO `haberler` (`id`, `baslik`, `resim`) VALUES
(1, '8 Mart Dünya Kadınlar Günü Programı', '../images/8-mart-dunya-kadinlar-gunu-programi_8383.webp'),
(2, '24 Kasım Öğretmenler Günü Ziyareti', '../images/24-kas-m-o-retmenler-gunu_2947.webp'),
(3, 'Personel Bayramlaşma Programı', '../images/personel-bayramla-ma-programi_5965.webp'),
(4, 'Personel İftar Programı', '../images/personel-ftar-program_109.webp'),
(5, 'Personel Piknik Programı', '../images/personel-p-kn-k-programi_9118.webp'),
(6, 'Ağız ve Diş Sağlığı Taraması', '../images/personellerimizin-a-z-ve-di-sa-l-n-onemsiyoruz_7091.webp'),
(7, 'İkinci İftar Buluşması', '../images/pesonel-ftar-programi_3732.webp'),
(8, 'Stajyer Dönem Sonu Etkinliği', '../images/stajyer-donem-sonu-etk-nl_6028.webp'),
(9, 'Stajyer Film Okuma Programı', '../images/stajyer-f-lm-okuma-programi_3604.webp'),
(10, 'Stajyer Öğrenci Oryantasyonu', '../images/stajyer-o-renci-oryantasyonu_2177.webp'),
(11, 'Stajyer Oryantasyon Eğitimi', '../images/stajyer-oryantasyon-e-t-m_8697.webp'),
(12, 'Ulusal Dağ Bisikleti Kupası', '../images/ulusal-da-bisikleti-kupas-yar-lar_128.webp');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `haber_galeri`
--

CREATE TABLE `haber_galeri` (
  `id` int(11) NOT NULL,
  `haber_id` int(11) NOT NULL DEFAULT 1,
  `resim_url` varchar(255) NOT NULL,
  `sira` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `haber_galeri`
--

INSERT INTO `haber_galeri` (`id`, `haber_id`, `resim_url`, `sira`) VALUES
(1, 1, '../images/off-road-foto/gebze-de-off-road-heyecan_120.webp', 1),
(2, 1, '../images/off-road-foto/gebze-de-off-road-heyecan_2075.webp', 2),
(3, 1, '../images/off-road-foto/gebze-de-off-road-heyecan_2143.webp', 3),
(4, 1, '../images/off-road-foto/gebze-de-off-road-heyecan_3569.webp', 4),
(5, 1, '../images/off-road-foto/gebze-de-off-road-heyecan_3911.webp', 5),
(6, 1, '../images/off-road-foto/gebze-de-off-road-heyecan_4046.webp', 6),
(7, 1, '../images/off-road-foto/gebze-de-off-road-heyecan_4564.webp', 7),
(8, 1, '../images/off-road-foto/gebze-de-off-road-heyecan_4975.webp', 8),
(9, 1, '../images/off-road-foto/gebze-de-off-road-heyecan_5429.webp', 9);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `icerik_izlemeleri`
--

CREATE TABLE `icerik_izlemeleri` (
  `id` int(11) NOT NULL,
  `tablo` varchar(64) NOT NULL,
  `kayit_id` int(11) NOT NULL,
  `izleyici` varchar(96) NOT NULL,
  `olusturma_tarihi` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `icerik_izlemeleri`
--

INSERT INTO `icerik_izlemeleri` (`id`, `tablo`, `kayit_id`, `izleyici`, `olusturma_tarihi`) VALUES
(1, 'etkinlikler', 1, 'personel:1', '2026-07-08 15:18:38'),
(2, 'sizden_gelenler', 1, 'personel:1', '2026-07-08 15:19:20'),
(3, 'sizden_gelenler', 2, 'personel:1', '2026-07-08 15:19:38'),
(4, 'sizden_gelenler', 3, 'personel:1', '2026-07-08 15:20:14'),
(5, 'etkinlikler', 2, 'personel:1', '2026-07-08 15:20:40'),
(6, 'etkinlikler', 8, 'personel:1', '2026-07-08 15:20:44'),
(7, 'sizden_gelenler', 6, 'personel:1', '2026-07-08 15:20:52'),
(8, 'sizden_gelenler', 7, 'personel:1', '2026-07-08 15:52:57'),
(9, 'sizden_gelenler', 8, 'personel:1', '2026-07-08 15:53:07'),
(10, 'sizden_gelenler', 5, 'personel:1', '2026-07-08 15:53:15'),
(11, 'anasayfa_duyurular', 11, 'personel:1', '2026-07-08 15:55:22'),
(12, 'etkinlikler', 11, 'personel:1', '2026-07-08 15:56:57'),
(13, 'anasayfa_duyurular', 15, 'personel:1', '2026-07-08 15:58:43'),
(14, 'etkinlikler', 4, 'personel:1', '2026-07-08 15:58:54'),
(15, 'etkinlikler', 16, 'personel:1', '2026-07-08 16:01:04'),
(16, 'etkinlikler', 15, 'personel:1', '2026-07-08 16:01:08'),
(17, 'etkinlikler', 9, 'personel:1', '2026-07-08 16:01:28'),
(18, 'anasayfa_duyurular', 10, 'personel:1', '2026-07-08 16:05:28'),
(19, 'etkinlikler', 14, 'personel:1', '2026-07-08 16:36:13'),
(20, 'etkinlikler', 3, 'personel:1', '2026-07-08 16:36:34'),
(21, 'etkinlikler', 7, 'personel:1', '2026-07-08 16:39:26'),
(22, 'etkinlikler', 6, 'personel:1', '2026-07-08 16:39:41'),
(23, 'anasayfa_duyurular', 13, 'personel:1', '2026-07-08 16:40:07'),
(24, 'anasayfa_duyurular', 14, 'personel:1', '2026-07-08 16:40:16'),
(25, 'etkinlikler', 5, 'personel:1', '2026-07-08 16:55:53'),
(26, 'sizden_gelenler', 4, 'personel:1', '2026-07-08 16:56:30'),
(27, 'etkinlikler', 10, 'personel:1', '2026-07-08 16:57:46'),
(28, 'anasayfa_duyurular', 2, 'personel:1', '2026-07-08 17:08:18'),
(29, 'sizden_gelenler', 8, 'guest:81103e765626c0a68d547c30e1fe6b33', '2026-07-08 17:08:40'),
(30, 'sizden_gelenler', 11, 'guest:81103e765626c0a68d547c30e1fe6b33', '2026-07-08 17:08:45'),
(31, 'sizden_gelenler', 12, 'guest:81103e765626c0a68d547c30e1fe6b33', '2026-07-08 17:08:58'),
(32, 'anasayfa_duyurular', 12, 'guest:81103e765626c0a68d547c30e1fe6b33', '2026-07-08 17:12:31'),
(33, 'etkinlikler', 6, 'guest:81103e765626c0a68d547c30e1fe6b33', '2026-07-08 17:12:55'),
(34, 'sizden_gelenler', 9, 'personel:1', '2026-07-09 14:33:34'),
(35, 'anasayfa_duyurular', 12, 'personel:1', '2026-07-09 14:37:38'),
(41, 'etkinlikler', 13, 'personel:1', '2026-07-10 14:36:39'),
(43, 'etkinlikler', 1, 'guest:81103e765626c0a68d547c30e1fe6b33', '2026-07-10 15:38:55'),
(49, 'etkinlikler', 11, 'guest:f4b16c1f1db262291f4a07def2a685a4', '2026-07-13 11:30:32'),
(54, 'sizden_gelenler', 11, 'personel:1', '2026-07-14 11:36:06'),
(57, 'sizden_gelenler', 9, 'guest:81103e765626c0a68d547c30e1fe6b33', '2026-07-14 14:03:51'),
(58, 'sizden_gelenler', 3, 'guest:81103e765626c0a68d547c30e1fe6b33', '2026-07-14 14:03:54'),
(59, 'sizden_gelenler', 4, 'guest:81103e765626c0a68d547c30e1fe6b33', '2026-07-14 14:04:04'),
(62, 'anasayfa_duyurular', 13, 'guest:81103e765626c0a68d547c30e1fe6b33', '2026-07-14 15:03:48'),
(65, 'sizden_gelenler', 2, 'guest:81103e765626c0a68d547c30e1fe6b33', '2026-07-14 15:37:29'),
(73, 'etkinlikler_duyurular', 5, 'personel:1', '2026-07-16 10:23:32'),
(77, 'etkinlikler_duyurular', 4, 'personel:1', '2026-07-17 09:14:14');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kaynaklar`
--

CREATE TABLE `kaynaklar` (
  `id` int(11) NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `aciklama` text NOT NULL,
  `ikon` varchar(50) DEFAULT 'fa-file-signature',
  `dosya_yolu` varchar(255) NOT NULL,
  `resmi_sayfa` varchar(500) DEFAULT NULL,
  `boyut` varchar(50) NOT NULL,
  `tarih` varchar(50) NOT NULL,
  `kategori_id` int(11) DEFAULT NULL,
  `alt_kategori_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `kaynaklar`
--

INSERT INTO `kaynaklar` (`id`, `baslik`, `aciklama`, `ikon`, `dosya_yolu`, `resmi_sayfa`, `boyut`, `tarih`, `kategori_id`, `alt_kategori_id`) VALUES
(1, 'Aile Bildirim Formu', 'Personelin medeni durumu, eş, çocuk ve bakmakla yükümlü olduğu aile bireylerine ilişkin bilgileri bildirmek veya güncellemek amacıyla kullanılan resmi form.', 'fas fa-user-friends', '../images/dokumanlar/a-le-durum-b-ld-r-r-formu_7664 (1).xlsx', NULL, '2.3 MB', '04.10.2023', 2, NULL),
(2, 'Mal Bildirim Formu', 'Kamu görevlilerinin kendileri, eşleri ve velayetleri altındaki çocuklarına ait taşınır ve taşınmaz mallar ile diğer mal varlığı unsurlarını 3628 sayılı Kanun gereğince beyan etmek amacıyla kullanılan form.', 'fas fa-briefcase', '../images/dokumanlar/mal-b-ld-r-m-formu_501.docx', NULL, '29 KB', '08.01.2025', 2, NULL),
(3, 'Personel İlişki Kesme Formu', 'Kurumdan ayrılan personelin zimmetli eşyalarının teslimi ve ilgili birimlerle ilişiğinin resmi olarak kesilmesi amacıyla kullanılan form.', 'fas fa-sign-out-alt', '../images/dokumanlar/personel-l-k-kesme-formu_9657.docx', NULL, '1.7 MB', '20.12.2024', 2, NULL),
(4, 'Gebze Merkez Prime Hastanesi', 'Gebze Merkez Prime Hastanesi İle Gebze Belediyesi Personelleri Ve Birinci Derece Yakınlarına Yönelik % 20 Oranında İndirim Anlaşması İmzalanmıştır.', 'fas fa-hospital', 'https://personel.gebze.bel.tr/upload/antlasma/gebze-merkez-pr-me-hastanes/gebze-merkez-pr-me-hastanes_2019.pdf', NULL, '2.3 MB', '04.10.2023', 1, NULL),
(5, 'Gebze MedicalPark Hastanesi', 'Gebze Medıcalpark Hastanesi İle Gebze Belediyesi Personelleri Ve Birinci Derece\r\nYakınlarına Yönelik % 20 Oranında İndirim Anlaşması İmzalanmıştır.', 'fas fa-hospital', 'https://personel.gebze.bel.tr/upload/antlasma/gebze-medicalpark-hastanes/gebze-medicalpark-hastanes_3836.pdf', NULL, '845 KB', '04.10.2023', 1, NULL),
(6, 'Gebze Özel Yüzyıl Hastanesi', 'Gebze Özel Yüzyıl Hastanesi İle Gebze Belediyesi Personelleri Ve Birinci Derece\r\nYakınlarına Yönelik % 20 Oranında İndirim Anlaşması İmzalanmıştır.', 'fas fa-hospital', 'https://personel.gebze.bel.tr/upload/antlasma/gebze-ozel-yuzyil-hastanes/gebze-ozel-yuzyil-hastanes_6572.pdf', NULL, '1.7 MB', ' 04.10.2023', 1, NULL),
(7, 'Darıca Hospitalpark Hastanesi', ' Darıca Hospıtalpark Hastanesi İle Gebze Belediyesi Personelleri Ve Birinci Derece\r\nYakınlarına Yönelik % 30 Oranında İndirim Anlaşması İmzalanmıştır.', 'fas fa-hospital', 'https://personel.gebze.bel.tr/upload/antlasma/darica-hospitalpark-hastanes/darica-hospitalpark-hastanes_1530.pdf', NULL, '1.7 MB', '04.10.2023', 1, NULL),
(8, 'Özel Ülker Ağız ve Diş Sağlığı Polikliniği', ' Personellerimizin ve 1. derece yakınlarının (anne, baba, eş ve çocuklar) diş sağlığına katkıda bulunmak adına çevre Polikliniklerimizle muayene, tetkik ve tedavilerde indirim anlaşmaları imzalanmıştır.', 'fas fa-tooth', 'https://personel.gebze.bel.tr/upload/antlasma/ozel-ulker-a-iz-ve-d-sa-li-i-pol-kl-n/ozel-ulker-a-iz-ve-d-sa-li-i-pol-kl-n_3454.pdf', NULL, '1.7 MB', ' 04.10.2023', 1, NULL),
(9, 'Özel Dentriva Ağız ve Diş Sağlığı Polikliniği', 'Personellerimizin ve 1. derece yakınlarının (anne, baba, eş ve çocuklar) diş sağlığına katkıda bulunmak adına çevre Polikliniklerimizle muayene, tetkik ve tedavilerde indirim anlaşmaları imzalanmıştır.', 'fas fa-tooth', 'https://personel.gebze.bel.tr/upload/antlasma/ozel-dentr-va-a-iz-ve-d-sa-li-i-pol-kl-n/ozel-dentr-va-a-iz-ve-d-sa-li-i-pol-kl-n_5515.pdf', NULL, '1.7 MB', '04.10.2023', 1, NULL),
(10, 'Özel Arapçeşme Ağız ve Diş Sağlığı Polikliniği', 'Personellerimizin ve 1. derece yakınlarının (anne, baba, eş ve çocuklar) diş sağlığına katkıda bulunmak adına çevre Polikliniklerimizle muayene, tetkik ve tedavilerde indirim anlaşmaları imzalanmıştır.', 'fas fa-tooth', 'https://personel.gebze.bel.tr/upload/antlasma/ozel-arapce-me-a-iz-ve-d-sa-li-i-pol-kl-n/ozel-arapce-me-a-iz-ve-d-sa-li-i-pol-kl-n_7964.pdf', NULL, '1.7 MB', '04.10.2023', 1, NULL),
(11, 'Şimşekdent Ağız ve Diş Sağlığı Polikliniği', 'Personellerimizin ve 1. derece yakınlarının (anne, baba, eş ve çocuklar) diş sağlığına katkıda bulunmak adına çevre Polikliniklerimizle muayene, tetkik ve tedavilerde indirim anlaşmaları imzalanmıştır.', 'fas fa-tooth', 'https://personel.gebze.bel.tr/upload/antlasma/m-ekdent-a-iz-ve-d-sa-li-i-pol-kl-n/m-ekdent-a-iz-ve-d-sa-li-i-pol-kl-n_2554.pdf', NULL, '2.3 MB', '20.12.2024', 1, NULL),
(12, 'Resmi Yazışma Kuralları', 'Kamu kurum ve kuruluşlarında kullanılması esas ve her kamu görevlisi tarafından bilinmesi gereken resmi yazışmalar hakkında mevzuat hükümleri.', 'fas fa-folder-open', 'https://personel.gebze.bel.tr/upload/regulation/resm-yazi-ma-kurallari/resm-yazi-ma-kurallari_1373.pdf', 'https://www.mevzuat.gov.tr/mevzuatmetin/21.5.2646.pdf', '2.3 MB', '04.10.2023', 3, 1),
(13, 'Belediye Kanunu', 'Kanun Numarası : 5393 Kabul Tarihi : 3/7/2005 Yayımlandığı Resmî Gazete : Tarih :13/7/2005 Sayı : 25874 Yayımlandığı Düstur : Tertip : 5 Cilt : 44', 'fas fa-folder-open', 'https://personel.gebze.bel.tr/upload/regulation/5393-sayili-beled-ye-kanunu/5393-sayili-beled-ye-kanunu_8722.pdf', 'https://www.mevzuat.gov.tr/mevzuatmetin/1.5.5393.pdf', '845 KB', '04.10.2023', 3, 1),
(14, 'Kamu İhale Kanunu', 'Kanunun Numarası : 4734 Kabul Tarihi : 4/1/2002 Yayımlandığı Resmî Gazete : Tarih :22/1/2002 Sayı : 24648 Yayımlandığı Düstur : Tertip : 5 Cilt : 42', 'fas fa-folder-open', 'https://personel.gebze.bel.tr/upload/regulation/kamu-hale-kanunu/kamu-hale-kanunu_4328.pdf', 'https://www.mevzuat.gov.tr/MevzuatMetin/1.5.4734.pdf', '1.7 MB', '04.10.2023', 3, 1),
(15, 'Kamu İhale Sözleşmeleri Kanunu', ' Kanun Numarası : 4735 Kabul Tarihi : 5/1/2002 Yayımlandığı Resmî Gazete : Tarih :22/1/2002 Sayı : 24648 Yayımlandığı Düstur : Tertip : 5 Cilt : 42', 'fas fa-folder-open', 'https://personel.gebze.bel.tr/upload/regulation/kamu-hale-sozle-meler-kanunu/kamu-hale-sozle-meler-kanunu_8417.pdf', 'https://www.mevzuat.gov.tr/MevzuatMetin/1.5.4735.pdf', '2.3 MB', '04.10.2023', 3, 1),
(16, 'İmar Kanunu', ' Kanun Numarası : 3194 Kabul Tarihi : 3/5/1985 Yayımlandığı R. Gazete : Tarih :9/5/1985 Sayı: 18749 Yayımlandığı Düstur : Tertip : 5 Cilt : 24 Sayfa : 378', 'fas fa-folder-open', 'https://personel.gebze.bel.tr/upload/regulation/3194-sayili-mar-kanunu/3194-sayili-mar-kanunu_9104.pdf', 'https://www.mevzuat.gov.tr/mevzuat?MevzuatNo=20122665&MevzuatTur=21&MevzuatTertip=5', '1.7 MB', '04.10.2023', 3, 1),
(17, 'Kişisel Verilerin Korunması Kanunu', ' Kanun Numarası : 6698 Kabul Tarihi : 24/3/2016 Yayımlandığı Resmî Gazete : Tarih :7/4/2016 Sayı : 29677 Yayımlandığı Düstur : Tertip : 5 Cilt : 57', 'fa-file-signature', 'https://personel.gebze.bel.tr/upload/regulation/k-sel-ver-ler-n-korunmasi-kanunu/k-sel-ver-ler-n-korunmasi-kanunu_7116.pdf', 'https://www.mevzuat.gov.tr/mevzuat?MevzuatNo=6698&MevzuatTur=1&MevzuatTertip=5', '2.3 MB', '04.10.2023', 3, 1),
(18, 'Devlet Memurları Kanunu', 'Kanun Numarası : 657 Kabul Tarihi : 14/7/1965 Yayımlandığı Resmî Gazete : Tarih :23/7/1965 Sayı : 12056 Yayımlandığı Düstur : Tertip : 5 Cilt : 4 Sayfa : 3044', 'fas fa-folder-open', 'https://personel.gebze.bel.tr/upload/regulation/657-sayili-devlet-memurlari-kanunu/657-sayili-devlet-memurlari-kanunu_1477.pdf', 'https://www.mevzuat.gov.tr/MevzuatMetin/1.5.657.pdf', '1.7 MB', '04.10.2023', 3, 2),
(19, ' Devlet Memurlarına Verilecek Hastalık Raporları ile Hastalık ve Refakat İznine İlişkin Usul ve Esaslar Hakkında Yönetmenlik', 'Bakanlar Kurulu Kararının Tarihi : 22/8/2011 No : 2011/2226 Dayandığı Kanunun Tarihi :14/7/1965 No : 657 Yayımlandığı R.Gazetenin Tarihi : 29/10/2011 No : 28099 Yayımlandığı\r\nDüsturun Tertibi : 5 Cilt : 51', 'fas fa-folder-open', 'https://www.mevzuat.gov.tr/MevzuatMetin/3.5.20112226.pdf', 'https://personel.gebze.bel.tr/upload/regulation/devlet-memurlarina-ver-lecek-hastalik-raporlari-le-hastalik-ve-refakat-zn-ne-l-k-n-usul-ve-esaslar-hakkinda-yonetmel-k/devlet-memurlarina-ver-lecek-hastalik-raporlari-le-hastalik-ve-refakat-zn-ne-l-k-n-usul-ve-esaslar-hakkinda-yonetmel-k_3060.pdf', '1.7 MB', '04.10.2023', 3, 2),
(20, 'Memurlar ve Diğer Kamu Görevlilerinin Yargılanması Hakkında Kanun', ' Kanun Numarası : 4483 Kabul Tarihi : 2/12/1999 Yayımlandığı Resmî Gazete : Tarih :4/12/1999 Sayı : 23896 Yayımlandığı Düstur : Tertip : 5 Cilt : 39', 'fas fa-folder-open', 'https://www.mevzuat.gov.tr/mevzuat?MevzuatNo=4483&MevzuatTur=1&MevzuatTertip=5', 'https://personel.gebze.bel.tr/upload/regulation/memurlar-ve-d-er-kamu-gorevl-ler-n-n-yargilanmasi-hakkinda-kanun/memurlar-ve-d-er-kamu-gorevl-ler-n-n-yargilanmasi-hakkinda-kanun_4777.pdf', '1.7 MB', '04.10.2023', 3, 2),
(21, 'Mahalli İdareler Disiplin Amirleri Yönetmenliği', 'MAHALLİ İDARELER DİSİPLİN AMİRLERİ YÖNETMELİĞİ', 'fas fa-folder-open', 'https://personel.gebze.bel.tr/upload/regulation/mahall-dareler-d-s-pl-n-am-rler-yonetmel/mahall-dareler-d-s-pl-n-am-rler-yonetmel_5784.pdf', 'https://www.mevzuat.gov.tr/MevzuatMetin/yonetmelik/7.5.39416.pdf', '1.7 MB', '04.10.2023', 3, 2),
(22, 'Sözleşmeli Personel Çalıştırılmasına İlişkin Esaslar', 'Bakanlar Kurulu Kararının; Tarihi ve No\'su : 6/6/1978-7/15754 Dayandığı Kanun :28/2/1978-2143 Yayımlandığı Resmi Gazete : 28/6/1978-16330 9/5/2020 tarihli ve 31122 sayılı Resmî Gazete\'de yayımlanan 8/5/2020 tarihli ve 2506 sayılı Cumhurbaşkanı Kararı uyarınca bu Yönetmelik Cumhurbaşkanlığı Yönetmeliği bölümüne eklenmiştir.', 'fas fa-folder-open', 'https://personel.gebze.bel.tr/upload/regulation/sozle-mel-personel-cali-tirilmasina-l-k-n-esaslar/sozle-mel-personel-cali-tirilmasina-l-k-n-esaslar_7813.pdf', 'https://www.mevzuat.gov.tr/anasayfa/MevzuatFihristDetayIframe?MevzuatTur=21&MevzuatNo=715754&MevzuatTertip=5', '1.7 MB', '04.10.2023', 3, 3),
(23, 'Sözleşmeli Personele Ek Ödeme Yapılmasına Dair Karar', 'Bakanlar Kurulu Kararının Tarihi: 3/1/2012 Sayısı: 2012/2665 Yayımlandığı Resmi Gazete Tarihi:10/1/2012 Sayısı: 28169', 'fas fa-folder-open', 'https://personel.gebze.bel.tr/upload/regulation/sozle-mel-personele-ek-odeme-yapilmasina-da-r-karar/sozle-mel-personele-ek-odeme-yapilmasina-da-r-karar_7257.pdf', 'https://www.mevzuat.gov.tr/mevzuat?MevzuatNo=20122665&MevzuatTur=21&MevzuatTertip=5', '1.7 MB', '04.10.2023', 3, 3),
(24, 'İş Kanunu', 'Kanun Numarası : 4857 Kabul Tarihi : 22/5/2003 Yayımlandığı Resmî Gazete : Tarih: 10/6/2003 Sayı : 25134 Yayımlandığı Düstur : Tertip : 5 Cilt : 42', 'fas fa-folder-open', 'https://personel.gebze.bel.tr/upload/regulation/4857-sayili-kanunu/4857-sayili-kanunu_8535.pdf', 'https://www.mevzuat.gov.tr/mevzuatmetin/1.5.4857.pdf', '1.7 MB', '04.10.2023', 3, 4),
(25, 'Yaşam Enerjisini Yükseltme Yolları', 'Yaşam Enerjisini Yükseltme Yolları', '', 'https://www.youtube.com/watch?v=NkLIwJsycKw', NULL, '2.3 MB', '04.10.2023', 4, NULL),
(26, 'Satın Alma Yöntem ve Süreçleri', 'Satın Alma Yöntem ve Süreçleri', '', 'https://www.youtube.com/watch?v=HlSLDMRZOAE', NULL, '845 KB', '08.01.2025', 4, NULL),
(27, 'Disiplin Uygulamaları', 'Disiplin Uygulamaları', '', 'https://www.youtube.com/watch?v=oQaAM3yFu5k', NULL, '2.3 MB', '20.12.2024', 4, NULL),
(28, 'Belediye Şirketleri', 'Belediye Şirketleri', '', 'https://www.youtube.com/watch?v=Bpl95iZ8Gkc', NULL, '845 KB', '08.01.2025', 4, NULL),
(29, 'Belediyelerin Sosyal Yardım ve Hizmetleri', 'Belediyelerin Sosyal Yardım ve Hizmetleri', '', 'https://www.youtube.com/watch?v=v_43pkCuwdg', NULL, '845 KB', '04.10.2023', 4, NULL),
(30, 'Bilgi Edinme Hakkı', 'Bilgi Edinme Hakkı', '', 'https://www.youtube.com/watch?v=nTbrb8pqY9U', NULL, '2.3 MB', ' 04.10.2023', 4, NULL),
(31, 'Kırsal Mahalle ve Kırsal Yerleşik Alan Yönetmeliği', 'Kırsal Mahalle ve Kırsal Yerleşik Alan Yönetmeliği', '', 'https://www.youtube.com/watch?v=HULXxszRxVk', NULL, '2.3 MB', '20.12.2024', 4, NULL),
(32, 'Kamulaştırma', 'Kamulaştırma', '', 'https://www.youtube.com/watch?v=F5pE70bPaWM', NULL, '2.3 MB', ' 04.10.2023', 4, NULL),
(33, 'Yeni Zabıta Yönetmeliği', 'Yeni Zabıta Yönetmeliği', '', 'https://www.youtube.com/watch?v=9QWJRD0G_Iw', NULL, '1.7 MB', '20.12.2024', 4, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kaynaklar_alt_kategori`
--

CREATE TABLE `kaynaklar_alt_kategori` (
  `id` int(11) NOT NULL,
  `kaynak_kategori_id` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `ad` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `kaynaklar_alt_kategori`
--

INSERT INTO `kaynaklar_alt_kategori` (`id`, `kaynak_kategori_id`, `slug`, `ad`) VALUES
(1, 3, 'genel', 'Genel Mevzuatlar'),
(2, 3, 'memur', 'Memur Mevzuatları'),
(3, 3, 'sozlesmeli', 'Sözleşmeli Memur Mevzuatları'),
(4, 3, 'isci', 'İşçi Mevzuatları');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kaynaklar_kategori`
--

CREATE TABLE `kaynaklar_kategori` (
  `id` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `ad` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `kaynaklar_kategori`
--

INSERT INTO `kaynaklar_kategori` (`id`, `slug`, `ad`) VALUES
(1, 'Protokoller', 'Protokoller'),
(2, 'Dökümanlar', 'Dökümanlar'),
(3, 'Mevzuatlar', 'Mevzuatlar'),
(4, 'Eğitimler', 'Eğitimler');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oturum_kayitlari`
--

CREATE TABLE `oturum_kayitlari` (
  `id` int(11) NOT NULL,
  `personel_id` int(11) NOT NULL,
  `giris_zamani` datetime NOT NULL,
  `cikis_zamani` datetime DEFAULT NULL,
  `ip_adresi` varchar(45) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `kapanis_tipi` varchar(20) DEFAULT NULL,
  `son_aktivite` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `oturum_kayitlari`
--

INSERT INTO `oturum_kayitlari` (`id`, `personel_id`, `giris_zamani`, `cikis_zamani`, `ip_adresi`, `user_agent`, `kapanis_tipi`, `son_aktivite`) VALUES
(1, 1, '2026-07-06 14:39:17', '2026-07-06 14:39:17', NULL, NULL, 'eski', NULL),
(2, 1, '2026-07-06 14:40:20', '2026-07-06 14:40:20', NULL, NULL, 'eski', NULL),
(3, 1, '2026-07-06 14:47:54', '2026-07-06 14:47:54', NULL, NULL, 'eski', NULL),
(4, 1, '2026-07-06 14:48:21', '2026-07-06 14:48:21', NULL, NULL, 'eski', NULL),
(5, 1, '2026-07-06 14:55:05', '2026-07-06 14:55:05', NULL, NULL, 'eski', NULL),
(6, 1, '2026-07-06 14:56:53', '2026-07-06 14:56:53', NULL, NULL, 'eski', NULL),
(7, 1, '2026-07-06 15:02:01', '2026-07-06 15:02:01', NULL, NULL, 'eski', NULL),
(8, 1, '2026-07-06 15:24:53', '2026-07-06 15:29:04', NULL, NULL, NULL, NULL),
(9, 1, '2026-07-06 15:29:26', '2026-07-06 15:29:26', NULL, NULL, 'eski', NULL),
(10, 1, '2026-07-06 15:48:53', '2026-07-06 15:48:53', NULL, NULL, 'eski', NULL),
(11, 1, '2026-07-07 08:48:16', '2026-07-07 08:48:16', NULL, NULL, 'eski', NULL),
(12, 1, '2026-07-07 09:00:50', '2026-07-07 09:07:06', NULL, NULL, NULL, NULL),
(13, 1, '2026-07-07 09:07:54', '2026-07-07 09:08:23', NULL, NULL, NULL, NULL),
(14, 1, '2026-07-07 09:08:58', '2026-07-07 09:09:07', NULL, NULL, NULL, NULL),
(15, 1, '2026-07-07 09:15:32', '2026-07-07 09:18:04', NULL, NULL, NULL, NULL),
(16, 1, '2026-07-07 09:18:20', '2026-07-07 09:19:42', NULL, NULL, NULL, NULL),
(17, 1, '2026-07-07 09:19:52', '2026-07-07 09:35:43', NULL, NULL, NULL, NULL),
(18, 1, '2026-07-07 09:35:56', '2026-07-07 11:49:26', NULL, NULL, NULL, NULL),
(19, 1, '2026-07-07 11:49:39', '2026-07-07 12:17:40', NULL, NULL, NULL, NULL),
(20, 1, '2026-07-07 15:01:28', '2026-07-07 15:03:15', NULL, NULL, NULL, NULL),
(21, 1, '2026-07-07 15:03:22', '2026-07-07 15:03:22', NULL, NULL, 'eski', NULL),
(22, 1, '2026-07-08 13:30:07', '2026-07-08 13:34:04', NULL, NULL, NULL, NULL),
(23, 1, '2026-07-08 13:34:41', '2026-07-08 13:34:56', NULL, NULL, NULL, NULL),
(24, 1, '2026-07-08 13:35:22', '2026-07-08 13:39:23', NULL, NULL, NULL, NULL),
(25, 1, '2026-07-08 14:22:03', '2026-07-08 14:45:04', NULL, NULL, NULL, NULL),
(26, 1, '2026-07-08 14:45:08', '2026-07-08 15:01:24', NULL, NULL, NULL, NULL),
(27, 1, '2026-07-08 15:01:29', '2026-07-08 15:01:29', NULL, NULL, 'eski', NULL),
(28, 1, '2026-07-08 15:13:11', '2026-07-08 15:13:11', NULL, NULL, 'eski', NULL),
(29, 1, '2026-07-08 16:10:00', '2026-07-08 16:10:00', NULL, NULL, 'eski', NULL),
(30, 1, '2026-07-08 16:10:56', '2026-07-08 16:10:56', NULL, NULL, 'eski', NULL),
(31, 1, '2026-07-08 17:01:48', '2026-07-08 17:07:02', NULL, NULL, 'sekme', '2026-07-08 17:06:50'),
(32, 1, '2026-07-08 17:07:09', '2026-07-08 17:08:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-08 17:08:29'),
(33, 1, '2026-07-08 17:10:15', '2026-07-08 17:10:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-08 17:10:34'),
(34, 1, '2026-07-08 17:13:24', '2026-07-08 17:14:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-08 17:14:06'),
(35, 1, '2026-07-08 17:14:15', '2026-07-08 17:14:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-08 17:14:15'),
(36, 1, '2026-07-08 17:14:39', '2026-07-09 12:03:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'otomatik', '2026-07-08 17:15:53'),
(37, 1, '2026-07-09 12:03:43', '2026-07-09 12:10:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-09 12:10:38'),
(38, 1, '2026-07-09 12:14:25', '2026-07-09 12:17:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-09 12:17:28'),
(39, 1, '2026-07-09 12:18:09', '2026-07-09 13:50:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-09 13:50:51'),
(40, 1, '2026-07-09 13:54:49', '2026-07-09 14:00:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'otomatik', '2026-07-09 13:55:48'),
(41, 1, '2026-07-09 14:00:48', '2026-07-09 14:02:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-09 14:00:48'),
(42, 1, '2026-07-09 14:04:04', '2026-07-09 14:12:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-09 14:05:44'),
(43, 1, '2026-07-09 14:18:23', '2026-07-09 14:19:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-09 14:19:07'),
(44, 1, '2026-07-09 14:21:00', '2026-07-09 14:33:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-09 14:33:24'),
(45, 1, '2026-07-09 14:33:27', '2026-07-09 14:34:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-09 14:34:45'),
(46, 1, '2026-07-09 14:34:47', '2026-07-10 10:14:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'otomatik', '2026-07-09 14:38:32'),
(47, 1, '2026-07-10 10:14:55', '2026-07-10 11:12:25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'otomatik', '2026-07-10 10:16:43'),
(48, 1, '2026-07-10 11:12:25', '2026-07-10 11:27:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-10 11:13:49'),
(49, 1, '2026-07-10 11:27:34', '2026-07-10 11:28:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-10 11:27:35'),
(50, 1, '2026-07-10 11:32:50', '2026-07-10 11:42:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-10 11:42:01'),
(51, 1, '2026-07-10 11:42:33', '2026-07-10 11:47:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-10 11:42:33'),
(52, 1, '2026-07-10 11:49:51', '2026-07-10 11:52:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-10 11:50:05'),
(53, 1, '2026-07-10 12:02:06', '2026-07-10 12:06:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'otomatik', '2026-07-10 12:02:31'),
(54, 1, '2026-07-10 12:06:06', '2026-07-10 12:18:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-10 12:06:24'),
(55, 1, '2026-07-10 12:19:43', '2026-07-10 12:19:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-10 12:19:48'),
(56, 1, '2026-07-10 14:12:11', '2026-07-10 14:15:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-10 14:12:11'),
(57, 1, '2026-07-10 14:16:35', '2026-07-10 14:19:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-10 14:16:36'),
(58, 1, '2026-07-10 14:20:49', '2026-07-10 14:28:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'otomatik', '2026-07-10 14:27:04'),
(59, 1, '2026-07-10 14:28:37', '2026-07-10 14:30:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-10 14:30:11'),
(60, 1, '2026-07-10 14:31:29', '2026-07-10 14:37:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-10 14:37:12'),
(61, 1, '2026-07-10 14:47:31', '2026-07-10 14:48:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'otomatik', '2026-07-10 14:47:31'),
(62, 1, '2026-07-10 14:48:28', '2026-07-10 15:33:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-10 15:33:25'),
(63, 1, '2026-07-13 09:09:34', '2026-07-13 09:12:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'manuel', '2026-07-13 09:12:32'),
(64, 1, '2026-07-13 09:39:50', '2026-07-13 09:45:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'manuel', '2026-07-13 09:45:14'),
(65, 1, '2026-07-13 11:24:44', '2026-07-13 11:26:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'manuel', '2026-07-13 11:26:09'),
(66, 2, '2026-07-13 12:01:04', '2026-07-13 12:01:15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'manuel', '2026-07-13 12:01:05'),
(67, 1, '2026-07-13 16:18:54', '2026-07-13 16:23:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'otomatik', '2026-07-13 16:22:58'),
(68, 1, '2026-07-13 16:32:32', '2026-07-13 16:34:20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'otomatik', '2026-07-13 16:34:03'),
(69, 1, '2026-07-13 16:37:19', '2026-07-13 16:40:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'otomatik', '2026-07-13 16:39:24'),
(70, 1, '2026-07-14 09:50:37', '2026-07-14 09:50:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-14 09:50:38'),
(71, 1, '2026-07-14 10:10:09', '2026-07-14 11:35:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-14 11:35:21'),
(72, 1, '2026-07-14 11:35:37', '2026-07-14 11:47:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-14 11:47:46'),
(73, 2, '2026-07-14 11:47:58', '2026-07-14 11:51:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-14 11:51:17'),
(74, 2, '2026-07-14 11:51:34', '2026-07-14 11:51:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-14 11:51:35'),
(75, 2, '2026-07-14 11:51:56', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', NULL, '2026-07-14 11:51:56'),
(76, 1, '2026-07-14 13:52:16', '2026-07-14 13:56:12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-14 13:55:28'),
(77, 1, '2026-07-14 13:56:22', '2026-07-14 14:02:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'cikis', '2026-07-14 14:02:40'),
(78, 1, '2026-07-14 14:04:56', '2026-07-14 14:05:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'cikis', '2026-07-14 14:05:00'),
(79, 1, '2026-07-14 14:05:04', '2026-07-14 14:07:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-14 14:07:41'),
(80, 1, '2026-07-14 14:09:13', '2026-07-14 14:13:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-14 14:12:47'),
(81, 1, '2026-07-14 14:14:03', '2026-07-14 14:24:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'cikis', '2026-07-14 14:24:38'),
(82, 1, '2026-07-14 14:26:30', '2026-07-14 14:27:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'cikis', '2026-07-14 14:27:24'),
(83, 1, '2026-07-14 14:27:30', '2026-07-14 14:27:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'cikis', '2026-07-14 14:27:51'),
(84, 1, '2026-07-14 14:29:58', '2026-07-14 14:33:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'cikis', '2026-07-14 14:33:03'),
(85, 1, '2026-07-14 14:33:08', '2026-07-14 14:33:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'cikis', '2026-07-14 14:33:50'),
(86, 1, '2026-07-14 14:35:30', '2026-07-14 14:42:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'cikis', '2026-07-14 14:42:29'),
(87, 1, '2026-07-14 14:50:53', '2026-07-14 14:51:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'cikis', '2026-07-14 14:51:34'),
(88, 1, '2026-07-14 14:52:29', '2026-07-14 14:55:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-14 14:54:51'),
(89, 1, '2026-07-14 14:59:00', '2026-07-14 14:59:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'otomatik', '2026-07-14 14:59:05'),
(90, 1, '2026-07-14 15:09:36', '2026-07-14 15:09:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-14 15:09:36'),
(91, 1, '2026-07-14 15:16:43', '2026-07-14 15:17:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'cikis', '2026-07-14 15:17:28'),
(92, 1, '2026-07-14 15:27:29', '2026-07-14 15:34:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'cikis', '2026-07-14 15:34:41'),
(93, 1, '2026-07-14 15:35:56', '2026-07-14 15:36:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'cikis', '2026-07-14 15:36:18'),
(94, 1, '2026-07-14 15:55:25', '2026-07-14 15:58:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-14 15:56:01'),
(95, 1, '2026-07-14 15:59:01', '2026-07-14 16:04:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'cikis', '2026-07-14 16:04:33'),
(96, 1, '2026-07-14 16:05:05', '2026-07-16 08:36:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'otomatik', '2026-07-14 17:14:08'),
(97, 1, '2026-07-16 08:36:05', '2026-07-16 09:10:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-16 09:10:08'),
(98, 1, '2026-07-16 09:10:26', '2026-07-16 09:20:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-16 09:20:26'),
(99, 1, '2026-07-16 09:20:38', '2026-07-16 09:59:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-16 09:59:52'),
(100, 1, '2026-07-16 10:00:12', '2026-07-16 10:14:44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-16 10:02:00'),
(101, 1, '2026-07-16 10:14:49', '2026-07-16 10:22:25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-16 10:18:23'),
(102, 1, '2026-07-16 10:22:38', '2026-07-16 10:23:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-16 10:22:57'),
(103, 1, '2026-07-16 10:23:15', '2026-07-16 10:40:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'cikis', '2026-07-16 10:40:11'),
(104, 1, '2026-07-16 12:22:51', '2026-07-16 12:24:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'cikis', '2026-07-16 12:24:37'),
(105, 1, '2026-07-16 14:20:11', '2026-07-16 14:47:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-16 14:27:55'),
(106, 1, '2026-07-16 14:47:35', '2026-07-16 15:04:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-16 15:01:15'),
(107, 1, '2026-07-16 15:04:53', '2026-07-16 15:23:28', '::1', 'Mozilla/5.0 (Linux; Android 15; Pixel 9) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Mobile Safari/537.36', 'sekme', '2026-07-16 15:23:23'),
(108, 1, '2026-07-16 15:25:39', '2026-07-16 15:34:20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-16 15:33:44'),
(109, 1, '2026-07-16 15:34:28', '2026-07-16 15:39:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-16 15:39:24'),
(110, 1, '2026-07-16 15:41:06', '2026-07-16 15:42:36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'cikis', '2026-07-16 15:42:36'),
(111, 1, '2026-07-16 16:25:48', '2026-07-16 16:50:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-16 16:50:23'),
(112, 1, '2026-07-16 16:52:32', '2026-07-16 17:02:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'cikis', '2026-07-16 17:02:38'),
(113, 1, '2026-07-16 17:03:15', '2026-07-16 17:06:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-16 17:03:46'),
(114, 1, '2026-07-16 17:06:20', '2026-07-16 17:15:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-16 17:11:48'),
(115, 1, '2026-07-16 17:17:15', '2026-07-16 17:17:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'otomatik', '2026-07-16 17:17:26'),
(116, 1, '2026-07-16 17:18:09', '2026-07-16 17:18:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'otomatik', '2026-07-16 17:18:09'),
(117, 1, '2026-07-16 17:18:26', '2026-07-17 08:33:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'otomatik', '2026-07-16 17:18:26'),
(118, 1, '2026-07-17 08:33:03', '2026-07-17 08:47:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'cikis', '2026-07-17 08:47:10'),
(119, 1, '2026-07-17 08:53:57', '2026-07-17 08:58:20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-17 08:53:57'),
(120, 1, '2026-07-17 08:58:32', '2026-07-17 09:04:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-17 08:58:59'),
(121, 1, '2026-07-17 09:04:23', '2026-07-17 09:12:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'cikis', '2026-07-17 09:12:45'),
(122, 1, '2026-07-17 09:13:23', '2026-07-17 09:20:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'cikis', '2026-07-17 09:20:18'),
(123, 1, '2026-07-17 09:34:38', '2026-07-17 09:35:42', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-17 09:35:17');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personeller`
--

CREATE TABLE `personeller` (
  `id` int(11) NOT NULL,
  `sicil_no` varchar(50) NOT NULL,
  `ad` varchar(50) NOT NULL,
  `soyad` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sifre` varchar(255) NOT NULL,
  `dogum_tarihi` date NOT NULL,
  `foto_url` varchar(255) NOT NULL,
  `remember_token_hash` varchar(64) DEFAULT NULL,
  `remember_token_expires` datetime DEFAULT NULL,
  `tc_no` varchar(11) DEFAULT NULL,
  `telefon` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `personeller`
--

INSERT INTO `personeller` (`id`, `sicil_no`, `ad`, `soyad`, `email`, `sifre`, `dogum_tarihi`, `foto_url`, `remember_token_hash`, `remember_token_expires`, `tc_no`, `telefon`) VALUES
(1, '12345', 'Zehra', 'Aralık', 'test3@gebze.bel.tr', '81dc9bdb52d04dc20036dbd8313ed055', '2006-07-14', '../images/gebze-logo.webp', NULL, NULL, NULL, NULL),
(2, '1234', 'yusuf', 'sancar', 'yusuf@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2026-07-13', '../images/favicon.webp', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `site_ikonlari`
--

CREATE TABLE `site_ikonlari` (
  `id` int(11) NOT NULL,
  `anahtar` varchar(100) NOT NULL,
  `ad` varchar(150) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `ikon_sinifi` varchar(150) NOT NULL,
  `renk` varchar(30) DEFAULT NULL,
  `sira` int(11) NOT NULL DEFAULT 0,
  `aktif` tinyint(1) NOT NULL DEFAULT 1,
  `olusturma_tarihi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `site_ikonlari`
--

INSERT INTO `site_ikonlari` (`id`, `anahtar`, `ad`, `kategori`, `ikon_sinifi`, `renk`, `sira`, `aktif`, `olusturma_tarihi`) VALUES
(1, 'menu_ac', 'Mobil Menüyü Aç', 'arayuz', 'fas fa-bars', NULL, 1, 1, '2026-07-14 08:46:13'),
(2, 'anasayfa', 'Anasayfa', 'navigasyon', 'fas fa-home', NULL, 2, 1, '2026-07-14 08:46:13'),
(3, 'videolar', 'Videolar', 'navigasyon', 'fas fa-video', NULL, 3, 1, '2026-07-14 08:46:14'),
(4, 'etkinlikler', 'Etkinlikler', 'navigasyon', 'fas fa-newspaper', NULL, 4, 1, '2026-07-14 08:46:14'),
(5, 'sizden_gelenler', 'Sizden Gelenler', 'navigasyon', 'fas fa-comments', NULL, 5, 1, '2026-07-14 08:46:14'),
(6, 'etkinlik_takvimi', 'Etkinlik Takvimi', 'navigasyon', 'fas fa-calendar-check', NULL, 6, 1, '2026-07-14 08:46:14'),
(7, 'duyurular', 'Duyurular', 'navigasyon', 'fas fa-bullhorn', NULL, 7, 1, '2026-07-14 08:46:14'),
(8, 'kaynaklar', 'Kaynaklar', 'navigasyon', 'fas fa-landmark', NULL, 8, 1, '2026-07-14 08:46:14'),
(9, 'protokoller', 'Protokoller', 'navigasyon', 'fas fa-file-signature', NULL, 9, 1, '2026-07-14 08:46:14'),
(10, 'dokumanlar', 'Dokümanlar', 'navigasyon', 'fas fa-file-alt', NULL, 10, 1, '2026-07-14 08:46:14'),
(11, 'mevzuatlar', 'Mevzuatlar', 'navigasyon', 'fas fa-balance-scale', NULL, 11, 1, '2026-07-14 08:46:14'),
(12, 'egitimler', 'Eğitimler', 'navigasyon', 'fas fa-graduation-cap', NULL, 12, 1, '2026-07-14 08:46:14'),
(13, 'diger', 'Diğer', 'navigasyon', 'fas fa-file-alt', NULL, 13, 1, '2026-07-14 08:46:14'),
(14, 'anketler', 'Anketler', 'navigasyon', 'fas fa-poll', NULL, 14, 1, '2026-07-14 08:46:14'),
(15, 'yardimci_linkler', 'Yardımcı Linkler', 'navigasyon', 'fas fa-link', NULL, 15, 1, '2026-07-14 08:46:14'),
(16, 'vefat_bilgisi', 'Vefat Eden Bilgisi', 'navigasyon', 'fas fa-ribbon', '#222222', 16, 1, '2026-07-14 08:46:14'),
(17, 'dogum_gunu', 'Doğum Günü Bilgisi', 'navigasyon', 'fas fa-birthday-cake', NULL, 17, 1, '2026-07-14 08:46:14'),
(18, 'yonetim_paneli', 'Yönetim Paneli', 'profil', 'fas fa-cog', NULL, 18, 1, '2026-07-14 08:46:14'),
(19, 'oturum_bilgileri', 'Oturum Bilgileri', 'profil', 'fas fa-history', NULL, 19, 1, '2026-07-14 08:46:14'),
(20, 'email_degistir', 'E-posta Değiştir', 'profil', 'fas fa-envelope', NULL, 20, 1, '2026-07-14 08:46:14'),
(21, 'sifre_degistir', 'Şifre Değiştir', 'profil', 'fas fa-key', NULL, 21, 1, '2026-07-14 08:46:14'),
(22, 'cikis_yap', 'Çıkış Yap', 'profil', 'fas fa-sign-out-alt', NULL, 22, 1, '2026-07-14 08:46:14'),
(23, 'telefon', 'Telefon', 'iletisim', 'fas fa-phone', NULL, 23, 1, '2026-07-14 08:46:14'),
(24, 'eposta', 'E-posta', 'iletisim', 'fas fa-envelope', NULL, 24, 1, '2026-07-14 08:46:14'),
(25, 'facebook', 'Facebook', 'sosyal', 'fab fa-facebook-f', NULL, 25, 1, '2026-07-14 08:46:14'),
(26, 'twitter', 'Twitter / X', 'sosyal', 'fab fa-twitter', NULL, 26, 1, '2026-07-14 08:46:14'),
(27, 'instagram', 'Instagram', 'sosyal', 'fab fa-instagram', NULL, 27, 1, '2026-07-14 08:46:14'),
(28, 'youtube', 'YouTube', 'sosyal', 'fab fa-youtube', NULL, 28, 1, '2026-07-14 08:46:14'),
(29, 'linkedin', 'LinkedIn', 'sosyal', 'fab fa-linkedin-in', NULL, 29, 1, '2026-07-14 08:46:14'),
(30, 'arama', 'Arama', 'arayuz', 'fas fa-search', NULL, 30, 1, '2026-07-14 08:56:15'),
(31, 'tarih', 'Tarih', 'bilgi', 'fas fa-calendar-alt', NULL, 31, 1, '2026-07-14 08:56:15'),
(32, 'goruntulenme', 'Görüntülenme', 'bilgi', 'fas fa-eye', NULL, 32, 1, '2026-07-14 08:56:15'),
(33, 'kullanici', 'Kullanıcı / Yazar', 'bilgi', 'fas fa-user', NULL, 33, 1, '2026-07-14 08:56:15'),
(34, 'geri_don', 'Geri Dön', 'arayuz', 'fas fa-arrow-left', NULL, 34, 1, '2026-07-14 08:56:15'),
(35, 'onceki', 'Önceki', 'arayuz', 'fas fa-chevron-left', NULL, 35, 1, '2026-07-14 08:56:15'),
(36, 'sonraki', 'Sonraki', 'arayuz', 'fas fa-chevron-right', NULL, 36, 1, '2026-07-14 08:56:15'),
(37, 'pdf_dosyasi', 'PDF Dosyası', 'dosya', 'fas fa-file-pdf', NULL, 37, 1, '2026-07-14 08:56:15'),
(38, 'kaydet', 'Kaydet', 'form', 'fas fa-save', NULL, 38, 1, '2026-07-14 08:56:16'),
(39, 'video_oynat', 'Videoyu Oynat', 'video', 'fas fa-play', NULL, 39, 1, '2026-07-14 08:56:16'),
(40, 'harici_baglanti', 'Harici Bağlantı', 'baglanti', 'fas fa-external-link-alt', NULL, 40, 1, '2026-07-14 08:56:16'),
(41, 'etkinlik_sayfa', 'Etkinlik Sayfası', 'sayfa', 'fa-solid fa-calendar-days', NULL, 41, 1, '2026-07-14 08:56:16'),
(42, 'oturum_saati', 'Oturum Saati', 'oturum', 'far fa-clock', NULL, 42, 1, '2026-07-14 08:56:16'),
(43, 'yonetim_guvenlik_bi', 'Yönetim Güvenliği', 'giris', 'fas fa-shield-halved', NULL, 43, 1, '2026-07-14 08:56:16'),
(44, 'sifre_goster_bi', 'Şifreyi Göster', 'giris', 'fas fa-eye', NULL, 44, 1, '2026-07-14 08:56:16'),
(45, 'sifre_gizle_bi', 'Şifreyi Gizle', 'giris', 'fas fa-eye-slash', NULL, 45, 1, '2026-07-14 08:56:16'),
(46, 'giris_yap_bi', 'Giriş Yap', 'giris', 'fas fa-right-to-bracket', NULL, 46, 1, '2026-07-14 08:56:16'),
(47, 'geri_don_bi', 'Geri Dön', 'giris', 'fas fa-arrow-left', NULL, 47, 1, '2026-07-14 08:56:16'),
(48, 'islem_yukleniyor_bi', 'İşlem Yapılıyor', 'arayuz', 'fas fa-arrows-rotate', NULL, 48, 1, '2026-07-14 08:56:16'),
(49, 'personel_kayit_bi', 'Personel Kaydı', 'giris', 'fas fa-user-plus', NULL, 49, 1, '2026-07-14 08:56:16'),
(50, 'islem_basarili_bi', 'İşlem Başarılı', 'durum', 'fas fa-circle-check', NULL, 50, 1, '2026-07-14 08:56:16'),
(51, 'anasayfa_haberler', 'Ana Sayfa Haberler Başlığı', 'anasayfa', 'fas fa-bullhorn', NULL, 51, 1, '2026-07-14 09:11:28'),
(52, 'duyuru_zili', 'Duyuru Zili', 'duyuru', 'fas fa-bell', NULL, 52, 1, '2026-07-14 09:11:28'),
(53, 'dogum_sayfa', 'Doğum Günü Sayfa İkonu', 'dogum', 'fa-solid fa-cake-candles', NULL, 53, 1, '2026-07-14 09:11:28'),
(54, 'otomasyon_sistem', 'Otomasyon Sistemi', 'anasayfa', 'fas fa-desktop', NULL, 54, 1, '2026-07-14 09:11:28'),
(55, 'anket_kilit_acik', 'Anket Cevapları Açık', 'anket', 'fas fa-lock-open', NULL, 55, 1, '2026-07-14 09:11:28'),
(56, 'anket_gonder', 'Anketi Gönder', 'anket', 'fas fa-paper-plane', NULL, 56, 1, '2026-07-14 09:11:28'),
(57, 'anket_durum_aktif', 'Aktif Anket', 'anket', 'fas fa-play-circle', NULL, 57, 1, '2026-07-14 09:11:28'),
(58, 'anket_durum_beklemede', 'Bekleyen Anket', 'anket', 'fas fa-clock', NULL, 58, 1, '2026-07-14 09:11:28'),
(59, 'anket_durum_tamamlandi', 'Tamamlanan Anket', 'anket', 'fas fa-check-circle', NULL, 59, 1, '2026-07-14 09:11:28'),
(60, 'anket_durum_suresi_doldu', 'Süresi Dolan Anket', 'anket', 'fas fa-times-circle', NULL, 60, 1, '2026-07-14 09:11:29'),
(61, 'anket_tarih', 'Anket Tarihi', 'anket', 'fas fa-calendar', NULL, 61, 1, '2026-07-14 09:11:29'),
(62, 'anket_giris', 'Ankete Giriş', 'anket', 'fas fa-sign-in-alt', NULL, 62, 1, '2026-07-14 09:11:29'),
(63, 'anket_duzenle', 'Ankete Katıl / Düzenle', 'anket', 'fas fa-edit', NULL, 63, 1, '2026-07-14 09:11:29'),
(64, 'anket_favori_dolu', 'Favorideki Anket', 'anket', 'fas fa-star', NULL, 64, 1, '2026-07-14 09:11:29'),
(65, 'anket_favori_bos', 'Favoride Olmayan Anket', 'anket', 'far fa-star', NULL, 65, 1, '2026-07-14 09:11:29'),
(66, 'anket_liste', 'Anket Listesi', 'anket', 'fas fa-list', NULL, 66, 1, '2026-07-14 09:11:29'),
(67, 'indir', 'Dosya İndir', 'dosya', 'fas fa-download', NULL, 67, 1, '2026-07-14 09:11:29'),
(68, 'dosya_word', 'Word Dosyası', 'dosya', 'fas fa-file-word', NULL, 68, 1, '2026-07-14 09:11:29'),
(69, 'dosya_excel', 'Excel Dosyası', 'dosya', 'fas fa-file-excel', NULL, 69, 1, '2026-07-14 09:11:29'),
(70, 'dosya_belge', 'Belge Dosyası', 'dosya', 'fas fa-file-alt', NULL, 70, 1, '2026-07-14 09:11:29'),
(71, 'dosya_genel', 'Genel Dosya', 'dosya', 'fas fa-file', NULL, 71, 1, '2026-07-14 09:11:29'),
(72, 'egitim_video', 'Eğitim Videosu', 'egitim', 'fas fa-video', NULL, 72, 1, '2026-07-14 09:11:29');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sizdengelenler_kategori`
--

CREATE TABLE `sizdengelenler_kategori` (
  `id` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `ad` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `sizdengelenler_kategori`
--

INSERT INTO `sizdengelenler_kategori` (`id`, `slug`, `ad`) VALUES
(1, 'insan-kaynaklari', 'İnsan Kaynakları ve Eğitim Müdürlüğü'),
(2, 'fen-isleri', 'Fen İşleri Müdürlüğü'),
(3, 'temizlik', 'Temizlik İşleri Müdürlüğü'),
(4, 'veteriner', 'Veteriner İşleri Müdürlüğü'),
(5, 'park-bahce', 'Park ve Bahçeler Müdürlüğü'),
(6, 'zabita', 'Zabıta Müdürlüğü');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sizden_gelenler`
--

CREATE TABLE `sizden_gelenler` (
  `id` int(11) NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `ozet` text NOT NULL,
  `tarih` date NOT NULL,
  `goruntulenme` int(11) DEFAULT 0,
  `gorsel_yolu` varchar(255) DEFAULT NULL,
  `olusturma_tarihi` timestamp NOT NULL DEFAULT current_timestamp(),
  `kategori_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `sizden_gelenler`
--

INSERT INTO `sizden_gelenler` (`id`, `baslik`, `ozet`, `tarih`, `goruntulenme`, `gorsel_yolu`, `olusturma_tarihi`, `kategori_id`) VALUES
(1, 'İnsan Kaynakları ve Eğitim Müdürlüğü', '6734 ve 6735 Sayılı Kanun Eğitimi - Biyomedikal Eğitimi - Üniversite Eğitimi - Oryantasyon Eğitimi - Fen Programlama Eğitimi - Mevzuat Eğitimi - Teknoloji Çalışma Eğitimi...', '2023-11-06', 106, '../images/sizden_gelenler/insan_kaynaklari/nsan-kaynaklar-ve-e-itim-mudurlu-u_1547.webP', '2026-07-02 12:20:03', 1),
(2, 'Fen İşleri Müdürlüğü', 'Köprülü Geçmis Mahallesi, 503 Sokak\'taki çalışmalar...Köprülü Geçmis Mahallesi, 503 Sokak\'taki çalışmalar...', '2023-10-19', 148, '../images/sizden_gelenler/fen_isleri/fen-leri-mudurlu-u_3604.webp', '2026-07-02 12:20:03', 2),
(3, 'Temizlik İşleri Müdürlüğü', 'Kül, katkısız ve tüm güzelleştirme organlarından şeye çeşit kurtarıcılar...Kül, katkısız ve tüm güzelleştirme organlarından şeye çeşit kurtarıcılar...', '2023-10-19', 80, '../images/sizden_gelenler/temizlik_isleri/temizlik-leri-mudurlu-u_2142.webp', '2026-07-02 12:20:03', 3),
(4, 'Veteriner İşleri Müdürlüğü', '4 Ekim Dünya Hayvanları Koruma Günü nedeniyle 4 Ekim boyunca...4 Ekim Dünya Hayvanları Koruma Günü nedeniyle 4 Ekim boyunca...', '2023-10-17', 236, '../images/sizden_gelenler/veteriner_isleri/veteriner-leri-mudurlu-u_547.webp', '2026-07-02 12:20:03', 4),
(5, 'Park ve Bahçeler Müdürlüğü', 'Bağışlanmış günlük programı göbildirinde park ve yeşil alanlarımızda...', '2023-10-17', 157, '../images/sizden_gelenler/park_bahce/park-ve-bahceler-mudurlu-u_357.webp', '2026-07-02 12:20:03', 5),
(6, 'İnsan Kaynakları Eğitim Semineri', 'Personel gelişimi için düzenlenen eğitim seminerimiz tamamlandı. Katılımcılarımız başarı sertifikalarını aldı...', '2023-10-15', 190, '../images/sizden_gelenler/insan_kaynaklari/nsan-kaynaklar-ve-e-itim-mudurlu-u_4846.webp', '2026-07-02 12:20:03', 1),
(7, 'Yol Bakım ve Onarım Çalışmaları', 'Şehrimizin çeşitli bölgelerinde gerçekleştirilen yol bakım ve onarım çalışmaları devam ediyor...', '2023-10-12', 268, '../images/sizden_gelenler/fen_isleri/fen-leri-mudurlu-u_8989.webp', '2026-07-02 12:20:03', 2),
(8, 'Çevre Temizlik Kampanyası', 'Doğal yaşam alanlarının korunması için başlatılan temizlik kampanyası büyük ilgi gördü...', '2023-10-10', 200, '../images/sizden_gelenler/temizlik_isleri/temizlik-leri-mudurlu-u_6633.webp', '2026-07-02 12:20:03', 3),
(9, 'Dijital Dönüşüm Eğitimi', 'Personelimize yönelik dijital dönüşüm ve teknoloji kullanımı eğitimi başarıyla tamamlandı...', '2023-10-08', 314, '../images/sizden_gelenler/genel/gebze-de-zab-ta-haftas-kutland_5157_cdeeb53c.webp', '2026-07-02 12:20:03', 6),
(10, 'Altyapı Geliştirme Projesi', 'Şehir merkezindeki altyapı geliştirme ve modernizasyon çalışmaları hızla devam ediyor...', '2023-10-05', 423, '../images/sizden_gelenler/fen_isleri/fen-leri-mudurlu-u_8989.webp', '2026-07-02 12:20:03', 2),
(11, 'Sokak Hayvanları Bakım Programı', 'Sokak hayvanlarının sağlık kontrolü ve bakım programı kapsamında çalışmalar sürdürülüyor...', '2023-10-03', 188, '../images/sizden_gelenler/veteriner_isleri/veteriner-leri-mudurlu-u_547.webp', '2026-07-02 12:20:03', 4),
(12, 'Yeşil Alan Düzenleme Çalışması', 'Kent genelindeki park ve yeşil alanların bakım ve düzenleme çalışmaları tamamlandı...', '2023-10-01', 279, '../images/sizden_gelenler/park_bahce/park-ve-bahceler-mudurlu-u_4188.webp', '2026-07-02 12:20:03', 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `vefat_bilgileri`
--

CREATE TABLE `vefat_bilgileri` (
  `id` int(11) NOT NULL,
  `vefat_eden_adi` varchar(255) NOT NULL,
  `iliski_pozisyon` text NOT NULL,
  `vefat_tarihi` date NOT NULL,
  `vefat_tarihi_metin` varchar(50) NOT NULL,
  `cenaze_mesaji` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `vefat_bilgileri`
--

INSERT INTO `vefat_bilgileri` (`id`, `vefat_eden_adi`, `iliski_pozisyon`, `vefat_tarihi`, `vefat_tarihi_metin`, `cenaze_mesaji`) VALUES
(1, 'Sedat TÜRKKAN', 'Destek Hizmetleri Müdürlüğü personeli Ali Türkkan\'ın Babası ', '2024-12-21', '21 Aralık 2024', 'Destek Hizmetleri Müdürlüğü personeli Ali Türkkan\'ın babası Sedat Türkkan Vefat etmiştir.Cenazesi Yarın öğlen namazına müteakip Gebze Kargalı Köyü Camii\'nden kaldırılacaktır. İrtibat: Ali Türkkan 05312611643'),
(2, 'Emine AYDIN GÜL', 'Temizlik İşleri Müdürlüğü personeli Fahrettin Aydın\'ın kardeşi', '2024-12-21', '21 Aralık 2024', 'Temizlik İşleri Müdürlüğü personeli Fahrettin Aydın\'ın kardeşi Emine Aydın Gül vefat etmiştir.Cenazesi bugün öğlen namazına müteakip Darıca Fevzi Çakmak Mahallesi Camii\'nden kaldırılacaktır. İrtibat:05356598417'),
(3, 'Cevat ALTINTAŞ Annesi', 'Teftiş Kurulu Müdürü Cevat Altıntaş\'ın annesi', '2024-12-21', '21 Aralık 2024', 'Teftiş Kurulu Müdürü Cevat Altıntaş\'ın annesi vefat etmiştir.Cenazesi yarın öğlen namazına müteakip Trabzon,Sürmene Petekli Mahallesi Camii\'nden kaldırılacaktır. İrtibat:05337219067'),
(4, 'Nevzat TAŞKIN', 'Kültür Ve Sosyal İşler Müdürlüğü Personeli Engin Taşkın\'ın abisi', '2024-01-15', '15 Ocak 2024', 'Kültür Ve Sosyal İşler Müdürlüğü Personeli Engin Taşkın\'ın abisi Nevzat Taşkın vefat etmiştir. Cenazesi bugün öğlen namazına müteakip memleketi Yalova\'dan kaldırılcaktır.İrtibat: Engin Taşkın 05327823276'),
(5, 'Yavuz HORASAN Babası', 'İşletme ve İştirakler Müdürlüğü Personeli Yavuz Horasın\'ın babası ', '2024-01-15', '15 Ocak 2024', 'İşletme ve İştirakler Müdürlüğü Personeli Yavuz Horasın\'ın babası vefat etmiştir. Cenazesi bugün ikindi namazına müteakip Tokat Turhal\'dan kaldırılcaktır. İrtibat: Yavuz Horasan 05335423041'),
(6, 'Mehmet tevfik ŞAHİN', 'Destek Hizmetleri Müdürlüğü personeli Haluk Şahin\'in abisi', '2023-12-26', '26 Aralık 2023', 'Destek Hizmetleri Müdürlüğü personeli Haluk Şahin\'in abisi Mehmet Teşvik Şahin vefat etmiştir. Cenazesi öğlen namazına müteakip Eskişehir Günyüzü\'nde kaldırılacaktır. İrtibat: Haluk Şahin 05326311898'),
(7, 'Yusuf BİTMEZ', 'Emekli Belediye Başkan Danışmanımız Şakir Bitmez\'in babası', '2023-12-25', '25 Aralık 2023', 'Emekli Belediye Başkan Danışmanımız Şakir Bitmez\'in babası Yusuf Bitmez vefat etmiştir.Cenazesi bugün ikindi namazına müteakip Pendik Yayalar Mahallesi Mehmet Akif Ersoy Camii\'nden kaldırılacaktır.'),
(8, 'Erdoğan POLAT', 'Park Ve Bahçeler Müdürlüğü Personeli Tarık Polat\'ın amcası', '2023-12-20', '20 Aralık 2023', 'Park Ve Bahçeler Müdürlüğü Personeli Tarık Polat\'ın amcası Erdoğan Polat vefat etmiştir.Cenazesi bugün ikindi namazına müteakip Çayırova Bedir Camii\'nden kaldırılacaktır. İrtibat: Tarık Polat 05072524854'),
(9, 'Enver YAZICI\'NIN Kayınvalidesi', 'Kültür Müdürlüğü Personeli Enver Yazıcı\'nın kayınvalidesi', '2023-12-20', '20 Aralık 2023', 'Kültür Müdürlüğü Personeli Enver Yazıcı\'nın kayınvalidesi vefat etmiştir. Cenazesi bugün Cuma namazına müteakip Eskihisar Akşemseddin Camii\'nden kaldırılacaktır. İrtibat: Enver Yazıcı 05423454169'),
(10, 'Hafız Bahattin YİĞİT', 'Güvenlik Personellerimiz Adnan Yiğit ve Fuat Yiğit\'in babası', '2023-12-15', '15 Aralık 2023', 'Güvenlik Personellerimiz Adnan Yiğit ve Fuat Yiğit\'in babası Hafız Bahattin Yiğit vefat etmiştir. Cenazesi Cumartesi öğlen namazına müteakip Hürriyet Mahallesi Hz.Osman Camiin\'den kaldırılacaktır. İrtibat: Adnan Yiğit 05333502447-Fuat Yiğit 05421867958'),
(11, 'İsmail BİNGÖL Babası', 'Temizlik İşleri Müdürlüğü Personeli İsmail Bingöl\'ün babası', '2023-12-12', '12 Aralık 2023', 'Temizlik İşleri Müdürlüğü Personeli İsmail Bingöl\'ün babası vefat etmiştir. Cenazesi bugün öğlen namazına müteakip kaldırılacaktır. İrtibat: İsmail Bingöl 05354091358'),
(12, 'Cengiz AĞAÜZÜM', 'Belediyemizin Emekli Personeli Cengiz Ağaüzüm', '2023-12-12', '12 Aralık 2023', 'Belediyemizin Emekli Personeli Cengiz Ağaüzüm vefat etmiştir. Cenazesi bugün ikindi namazına müteakip Yıldız Camii\'nden kaldırılacaktır.İrtibat: Engin Ağaüzüm 05343033746'),
(13, 'Nuray Dal', 'Etüt Proje Müdürlüğü Personeli Günay Çatak\'ın ablası', '2023-12-12', '12 Aralık 2023', 'Etüt Proje Müdürlüğü Personeli Günay Çatak\'ın ablası Nury Dal vefat etmiştir. Cenazesi yarın öğlen namazına müteakip Aydın İli Çine İlçesinden kaldırılacaktır.'),
(14, 'Ali Osman İŞÇİ', 'Emlak ve İstimlak Müdürlüğü Personeli Salih Katı\'nın Kayınpederi', '2023-12-12', '12 Aralık 2023', 'Emlak ve İstimlak Müdürlüğü Personeli Salih Katı\'nın Kayınpederi Ali Osman İşçi vefat etmiştir. Cenazesi bugün öğle namazına müteakip Darıa Emek Mahallesi Merkez Camii\'nden kaldırılacaktır. İrtibat: Salih Katı 05327433232 '),
(15, 'Fikar KESKİNOĞLU', 'Basın Yayın Ve Halkla İlişkiler Müdürü Mecit Keskinoğlu\'nun Yengesi', '2023-12-05', '5 Aralık 2023', 'Basın Yayın Ve Halkla İlişkiler Müdürü Mecit Keskinoğlu\'nun Yengesi Fikar Keskinoğlu vefat etmiştir. Cenazesi yarın öğlen namazına müteakip Nenehatun Mahallesi Eyüpoğlu Camii\'nden kaldırılacaktır. İrtibat: Mecit Keskinoğlu 05359431643'),
(16, 'Murat ÇOBAN\'ın Ablası', 'Belediyemizin emekli personeli Murat Çoban\'ın Ablası', '2023-11-29', '29 Kasım 2023', 'Belediyemizin emekli personeli Murat Çoban\'ın ablası vefat etmiştir. Cenazesi bugün öğle namazına müteakip Darıca\'dan kaldırılacaktır. İrtibat:'),
(17, 'Teyfik BAYRAM', 'Zabıta Müdürlüğü Güvenlik Personeli Olcay Bayram\'ın Babası', '2023-11-24', '24 Kasım 2023', 'Zabıta Müdürlüğü Güvenlik Personeli Olcay Bayram\'ın babası Teyfik Bayram vefat etmiştir. Cenazesi bugün öğle namazına mütakip memleketi Amasya\'dan kaldırılcaktır. İrtibat: Olcay Bayram 0546226207'),
(18, 'Ahmet KARDEŞ\'in Amcası', 'Ruhsat Müdürlüğü Personeli Ahmet Kardeş\'in amcası ', '2023-11-23', '23 Kasım 2023', 'Ruhsat Müdürlüğü Personeli Ahmet Kardeş\'in amcası vefat etmiştir. Cenazesi bugün öğle namazına müteakip Yenimahalle Merkez Camii\'nden kaldırılacaktır. İrtibat: Ahmet Kardeş 05370308461'),
(19, 'Ramazan ZOR\'un Halası', 'Basın Yayın Halkla İlişkiler Müdürlüğü Personeli Ramazan Zor\'un Halası', '2023-11-13', '13 Kasım 2023', 'Baın Yayın Halkla İlişkiler Müdürlüğü Personeli Ramazan Zor\'un halası vefat etmiştir. Cenazesi yarın öğlen namazına müteakip İlyasbey Camii\'nden kaldırılacaktır. İrtibat: Ramazan Zor 05333360656'),
(20, 'Davut Şahin', 'Etüt Proje Müdürlüğü Personeli Ömer Şahin\'in Amcası', '2023-11-06', '6 Kasım 2023', 'Etüt Proje Müdürlüğü Personeli Ömer Şahin\'in amcası Davut Şahin vefat etmiştir. Cenazesi bugün öğle namazına müteakip İstanbul Rüzgarlı Bahçe Camii\'nden kaldırılacaktır. İrtibat Ömer Şahin 05387303472 '),
(21, 'Remzi DURAN', ' Destek Hizmetleri Personeli Tenzile Deniz\'in Babası', '2023-11-06', '6 Kasım 2023', 'Destek Hizmetleri Personeli Tenzile Deniz\'in babası Remzi Duran vefat etmiştir. Cenazesi bugün Öğlen namazına müteakip Elbizli Mahallesinde kaldırılacaktır.İrtibat: Tenzile Deniz 05454151007'),
(22, 'İsmet YILMAZ', 'Destek Hizmetleri Personeli İlker Yılmaz\'ın Babası', '2023-11-06', '6 Kasım 2023', 'Destek Hizmetleri Personeli İlker Yılmaz\'ın babası İsmet Yılmaz vefat etmiştir.Cenazesi yarın öğle namazına müteakip Beylikbağı Fatih Camii\'nden kaldırılacaktır. İrtibat: İlker YILMAZ 05438092966'),
(23, 'Erdal GÜNEY\'ın Kayınbiraderi', 'Temizlik İşleri Personeli Nazım Ertürk\'ün abisi Erdal Güney\'ın Kayınbiraderi', '2023-11-06', '6 Kasım 2023', 'Temizlik İşleri Personeli Nazım Ertürk\'ün abisi Erdal Güney\'ın kayınbiraderi vefat etmiştir. Cenazesi bugün öğlen namazından sonra Hürriyet Mahallesi Hz.Ali Camii\'nden kaldırılacaktır.İrtibat: Nazım Ertürk 05362215339-ErdalGüzey 05343572975'),
(24, 'Elmas ARSLAN', 'Veteriner İşleri Müdürlüğü Personeli Barış Arslan\'ın annesi', '2023-11-06', '6 Kasım 2023', 'Belediyemiz Veteriner İşleri Müdürlüğü Personeli Barış Arslan\'ın annesi Elmas Arslan vefat etmiştir. Cenazesi memleketi Giresun\'dan kaldırılacaktır. İrtibat: Barış Arslan 05333969761'),
(25, 'Fuat CAN', 'Özel Kalem Müdürlüğü Personeli Filiz Can\'ın Eşi', '2023-11-26', '26 Kasım 2023', 'Belediyemiz Özel KALEM Müdürlüğü personeli Filiz Can\'ın eşi Fuat Can vefat etmiştir. Cenazesi yarın öğlen namazına müteakip Nur Osmaniye Camii\'nden kaldırılacaktır. İrtibat: Eren Can 05523429125'),
(26, 'Ayşe VAROL', ' Belediyemizin Emekli Personeli İhsan Varol\'un eşi', '2023-11-26', '26 Kasım 2023', 'Belediyemizin emekli personeli İhsan Varol\'un eşi Ayşe Varol vefat etmiştir. Cenazesi ikindi namazına müteakip Yavuz Selim Mahallesi Ulu Camii\'nden kaldırılacaktır. İrtibat: İhsan Varol 05453676219'),
(27, 'Saadettin Gürkan\'ın Kayınpederi', 'Kültür Müdürlüğü Personeli Saadettin Gürkan\'ın Kayınpederi', '2023-11-26', '26 Kasım 2023', 'Belediyemizin Kültür Müdürlüğü Personeli Saadettin GÜRKAN\'ın kayınpederi vefat etmiştir. Cenazesi memleketi Ordu\'da defnedilcektir. İrtibat: Saadettin Gürkan 05427181294'),
(28, 'Tuncay KUYUCU\'nun Babası', 'Emlak İstimlak Müdürlüğü Personeli Tuncay Kuyucu\'nun babası', '2023-11-16', '16 Kasım 2023', 'Belediyemiz Emlak İstimlak Müdürlüğü personelimiz Tuncay Kuyucu\'nun babası vefat etmiştir. Cenaze pazar günü öğlen namazına müteakip Mudarlı köyünde defnedilmiştir. İrtibat: Tuncay Kuyucu 05363270149'),
(29, 'Metin Ve Murat ÇİMEN\'in babaannesi', 'Fen işleri Personelimiz Metin ve Murat Çimen\'in Babaannesi ', '2023-11-16', '16 Kasım 2023', 'Emekli Fen İşleri personelimiz İsmail ÇİMEN\'in annesi,Fen işleri Personelimiz Metin ve Murat Çimen\'in babaannesi vefat etmiştir.Cenazesi bugün ikindi namazına müteakip Barış Mahallesi Merkez Camii\'nden kaldırılacaktır. İrtibat: İsmail Çimen 05358250415 Metin Çimen 05378878231'),
(30, 'Hasan ALTINPARMAK\'ın Babası', 'Temizlik İşleri Müdürlüğü Personeli Hasan Altınparmak\'ın Babası', '2023-11-16', '16 Kasım 2023', 'Temizlik İşleri Müdürlüğü Personeli Hasan Altınparmak\'ın babası vefat etmiştir.Cenazesi bugün ikindi namazına müteakip Çayırova Mandıra(Mescid-i Aksa)Camii-\'nden kaldırılacaktır. İrtibat: Hasan Altınparmak 05310132598'),
(31, 'Namık Demir\'in Babası', 'Bilgi İşlem Müdürlüğü Personeli Namık Demir\'in Babası', '2023-09-07', '7 Eylül 2023', 'Belediyemiz Bilgi İşlem Müdürlüğü Personeli Namık Demir\'in babası vefat etmiştir. Cenazesi bugün öğle namazına müteakip memleketi Erzurum\'dan kaldırılacaktır. İrtibat: Namık Demir 05063654125');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `videolar`
--

CREATE TABLE `videolar` (
  `id` int(11) NOT NULL,
  `youtube_id` varchar(50) NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `aciklama` text NOT NULL,
  `sure` varchar(20) NOT NULL,
  `kategori_id` int(11) DEFAULT NULL,
  `vitrin` tinyint(1) NOT NULL DEFAULT 0,
  `vitrin_baslik` varchar(255) DEFAULT NULL,
  `vitrin_aciklama` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `videolar`
--

INSERT INTO `videolar` (`id`, `youtube_id`, `baslik`, `aciklama`, `sure`, `kategori_id`, `vitrin`, `vitrin_baslik`, `vitrin_aciklama`) VALUES
(1, 'qLqYPQgUPEc', 'Gebze Offroad Heyecanı', 'Nefes kesen anlar ve çamurlu yollar... Offroad tutkunları bu etkinlikte buluştu.', '00:30', 3, 1, NULL, NULL),
(2, 'aUQ3uIAfL-k', 'Türkiye\'nin Sıfır Atık Kenti Bilgilendiriyor', 'Sıfır Atık Projesi Kapsamında atıkları kaynağından ayrıştıran Mobil Atık Getirme Merkezlerini Gebze\'mizde yaygınlaştırıyoruz.\r\n', '00:33', 3, 0, NULL, NULL),
(3, 'RhVDYrAb0xQ', 'Gebze #shorts', 'Gebzemiz', '00:07', 3, 0, NULL, NULL),
(4, 'c0vbYSFwMzU', 'Gebze Belediyesi MBB Altın Karınca Yarışması Dijital Kapı Projesi', 'Altın Karınca Yarışması', '02:46', 1, 0, NULL, NULL),
(5, '-0Wxna6PjqQ', 'Vatandaşlarımızın Hayatını Kolaylaştırıyoruz', 'İnteraktif Belediyecilik Vatandaşlarımızın Hayatını Kolaylaştırıyoruz.', '00:56', 3, 0, NULL, NULL),
(6, 'e65zC48s8Wc', 'Çocuklarımızı Da Elbette Unutmadık', 'Çocuklarımızı da elbette unutmadık.', '00:46', 3, 0, NULL, NULL),
(7, 'YXat3fIWc7w', 'İnteraktif Belediyecilikle Gebze\'de artık her şey çok kolay...', 'İnteraktif Belediyecilikle Gebze\'de artık her şey çok kolay.', '00:59', 1, 0, NULL, NULL),
(8, 'QRizu8RhGnU', 'Dijital Belediye İnteraktif Yaklaşım', 'Dijital Belediye İnteraktif Yaklaşım', '05:12', 1, 0, NULL, NULL),
(9, 'Z2dH2UIXb8Y', 'Zeki Bey\'in \'interaktif\' macerası başlıyor...', 'Zeki Bey\'in \'interaktif\' macerası başlıyor.', '00:55', 1, 0, NULL, NULL),
(10, 'G2KNC3OAnjE', 'Türkiye Aşkına', 'Türkiye Aşkına', '00:42', 3, 0, NULL, NULL),
(11, 'RhD1ArYsuKo', 'Türkiye\'nin 7/24 hizmet veren ilk ve tek bebek & çocuk bakımevini Gebze\'mizde hizmete açtık\r\n', 'Türkiye\'nin 7/24 hizmet veren ilk ve tek bebek & çocuk bakımevini Gebze\'mizde hizmete açtık\r\n', '00:48', 3, 0, NULL, NULL),
(12, 'IEc5W0JyADU', 'Gesmek Sergimiz ', '#shorts', '00:07', 3, 0, NULL, NULL),
(13, '3ePuzpC2S0Q', 'Eskihisarda Müzik Rüzgarı', 'Eskihisar\'da müzik rüzgarı', '00:26', 3, 0, NULL, NULL),
(14, 'qdPXmtKXXc4', 'Yapım işini tamamladığımız İlyasbey Sağlıklı Yaşam Merkezi \'miz', 'İlyasbey Sağlıklı Yaşam Merkezi', '00:34', 1, 0, NULL, NULL),
(15, 'uUFZvM9kqf4', 'Marmara\'nın İncisi Eskihisar\'da,30 bin metrekare yakın hayalet ağ çıkaracağız\r\n', 'Marmara\'nın İncisi Eskihisar', '00:42', 1, 0, NULL, NULL),
(16, 'BiY2WK24UHY', 'Şehirler Arası Otobüs Terminalimizin işlevselliğini artırıyoruz\r\n', 'Şehirler Arası Otobüs Terminalimizin işlevselliğini artırıyoruz', '00:41', 1, 0, NULL, NULL),
(17, 'xot-DBvkkq4', 'Matematik, Edebiyat Sınıfları ve modern derslikler gençliğin Güzide Merkezinde...\r\n', 'Matematik, Edebiyat Sınıfları ve modern derslikler gençliğin Güzide Merkezinde...\r\n\r\n', '00:26', 3, 0, NULL, NULL),
(18, 'ABIqjRnV5dU', 'Cam Şişe Bırakma, Ormanlarımız Hep Yaşasın!', 'Cam Şişe Bırakma, Ormanlarımız Hep Yaşasın!', '00:21', 3, 0, NULL, NULL),
(19, 'psmlNSPRDsM', 'Türkiye Panorama II', 'Türkiye Panorama II', '03:22', 3, 0, NULL, NULL),
(20, 'pAHStsCd9jo', 'E Atık | Kent Madenciliği', 'Geçtiğimiz hafta sonu düzenlediğimiz personel pikniğinden renkli anlar.', '05:14', 3, 0, NULL, NULL),
(21, 'eUBQYWMZyH8', 'Atık Sonu | End of Waste', 'Atık Sonu | End of Waste', '03:51', 3, 0, NULL, NULL),
(22, 'GWfDmGr6tlg', 'Gebze\'yi Sağlama Aldık', '\"Gebze\'yi Sağlama Aldık\" mottosuyla düzenlediğimiz 2019-2023 dönemi hizmet ve eserlerimizin sunumu il ve ilçe protokolünün katılımıyla gerçekleştirdik.', '03:20', 3, 0, NULL, NULL),
(23, 'D1b-CZYtCTg', 'Gebzeli CEZA', 'Gebzeli CEZA', '00:40', 3, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `videolar_kategori`
--

CREATE TABLE `videolar_kategori` (
  `id` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `ad` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `videolar_kategori`
--

INSERT INTO `videolar_kategori` (`id`, `slug`, `ad`) VALUES
(1, 'duyurular', 'Duyurular'),
(2, 'egitimler', 'Eğitimler'),
(3, 'etkinlikler', 'Etkinlikler');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yardimci_linkler`
--

CREATE TABLE `yardimci_linkler` (
  `id` int(11) NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `logo_url` varchar(255) DEFAULT NULL,
  `hedef_url` varchar(500) NOT NULL,
  `kategori_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `yardimci_linkler`
--

INSERT INTO `yardimci_linkler` (`id`, `baslik`, `logo_url`, `hedef_url`, `kategori_id`) VALUES
(1, 'OMIS', '../images/otomasyon/omis_7572.webp', 'https://ebelediye.gebze.bel.tr/eBelediye/', 1),
(2, 'Ulakbel', '../images/otomasyon/ulakbel_5496.webp', 'https://ulakbel.gebze.bel.tr/ulakbel#/', 1),
(3, 'İmar Yönetim Sistemi', '../images/otomasyon/imar-yonetim-sistemi_8038.webp', 'https://www.gebze.bel.tr/ebelediye/', 1),
(4, 'Dijital Arşiv', '../images/otomasyon/dijital-arsiv_415.webp', 'https://www.gebze.bel.tr/', 1),
(5, 'Outlook', '../images/otomasyon/outlook_4005.webp', 'https://outlook.live.com/', 1),
(6, 'Sosyal Yardım', '../images/otomasyon/sosyal-yardim_3767.webp', 'https://www.turkiye.gov.tr/ashb-sosyal-yardim-bilgileri-sorgulama', 1),
(7, 'Netcad', '../images/otomasyon/netcad_3888.webp', 'https://www.netcad.com/', 1),
(8, 'E-Belediye Sistemi', '../images/otomasyon/ebys_8493.webp', 'https://www.belediye.gov.tr/', 1),
(9, 'E-Belediye Evlendrme Modülü', '../images/otomasyon/e-belediye-evlendirme-modulu_3993.webp', 'https://www.belediye.gov.tr/evlendirme-modulu', 1),
(10, 'E-Belediye Sosyal Yardım Modülü', '../images/otomasyon/e-belediye-sosyal-yard-m-modulu_4432.webp', 'https://www.belediye.gov.tr/sosyal-yardim-takip-sistemi-syts-modulu', 1),
(11, 'Gebze Belediyesi', '../images/yardimci_linkler/web_siteleri/gebze-belediyesi.webp', 'https://www.gebze.bel.tr/', 2),
(12, 'Kocaeli Büyükşehir Belediyesi', '../images/yardimci_linkler/web_siteleri/kocaeli-buyuksehir-belediyesi.webp', 'https://www.kocaeli.bel.tr/', 2),
(13, 'Kocaeli Valiliği', '../images/yardimci_linkler/web_siteleri/kocaeli-vali.webp', 'http://www.kocaeli.gov.tr/', 2),
(14, 'Gebze Kaymakamlığı', '../images/yardimci_linkler/web_siteleri/gebze-kaymakam.webp', 'http://www.gebze.gov.tr/', 2),
(15, 'Türkiye Belediyeler Birliği', '../images/yardimci_linkler/bilgi_portallari/turkiye-belediyeler-birligi_2430.webp', 'https://www.tbb.gov.tr/tr', 3),
(16, 'Cumhurbaşkanlığı Uzaktan Eğitim Kapısı', '../images/yardimci_linkler/bilgi_portallari/cumhur.webp', 'https://uzaktanegitimkapisi.cbiko.gov.tr/Giris', 3),
(17, 'BTK Akademi Eğitim Portalı', '../images/yardimci_linkler/bilgi_portallari/btk-akademi.webp', 'https://www.btkakademi.gov.tr/', 3),
(18, 'Memurlar.Net', '../images/yardimci_linkler/faydali_linkler/memurlar.webp', 'https://www.memurlar.net/', 4),
(19, 'İlan', '../images/yardimci_linkler/faydali_linkler/ilan.webp', 'https://www.ilan.gov.tr/', 4),
(20, 'Resmi Gazete', '../images/yardimci_linkler/faydali_linkler/resmi.webp', 'https://www.resmigazete.gov.tr/', 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yardimci_linkler_kategori`
--

CREATE TABLE `yardimci_linkler_kategori` (
  `id` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `ad` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `yardimci_linkler_kategori`
--

INSERT INTO `yardimci_linkler_kategori` (`id`, `slug`, `ad`) VALUES
(1, 'kurum-ici', 'Kurum İçi Linkler'),
(2, 'website', 'Website Linkler'),
(3, 'bilgi', 'Bilgi Portalları'),
(4, 'faydalı', 'Faydalı Linkler');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yoneticiler`
--

CREATE TABLE `yoneticiler` (
  `id` int(11) NOT NULL,
  `kullanici_adi` varchar(50) NOT NULL,
  `sifre` varchar(255) NOT NULL,
  `ad` varchar(100) NOT NULL,
  `soyad` varchar(100) NOT NULL,
  `yetki` enum('super','editor') NOT NULL DEFAULT 'editor',
  `aktif` tinyint(1) NOT NULL DEFAULT 1,
  `olusturma_tarihi` datetime NOT NULL DEFAULT current_timestamp(),
  `foto_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `yoneticiler`
--

INSERT INTO `yoneticiler` (`id`, `kullanici_adi`, `sifre`, `ad`, `soyad`, `yetki`, `aktif`, `olusturma_tarihi`, `foto_url`) VALUES
(1, 'admin', '$2y$10$wDGGWd7w8Ue6SEf1xQsKLuLXChd4ymCGx0sB.vH8DyBx3qKRfGE2K', 'Sistem', 'Yöneticisi', 'super', 1, '2026-07-09 13:44:07', NULL),
(2, 'admin2', '$2y$10$jFtms1gZTClDK49aQMJUjeZLEEcwQ5scL2VDFF8GQl7eEqNEm1IMe', 'diğer', 'admin', '', 1, '2026-07-13 14:13:32', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yonetici_oturum_kayitlari`
--

CREATE TABLE `yonetici_oturum_kayitlari` (
  `id` int(11) NOT NULL,
  `yonetici_id` int(11) NOT NULL,
  `giris_zamani` datetime NOT NULL,
  `cikis_zamani` datetime DEFAULT NULL,
  `ip_adresi` varchar(45) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `kapanis_tipi` varchar(20) DEFAULT NULL,
  `son_aktivite` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `yonetici_oturum_kayitlari`
--

INSERT INTO `yonetici_oturum_kayitlari` (`id`, `yonetici_id`, `giris_zamani`, `cikis_zamani`, `ip_adresi`, `user_agent`, `kapanis_tipi`, `son_aktivite`) VALUES
(1, 1, '2026-07-09 13:48:41', '2026-07-10 11:28:25', NULL, NULL, 'otomatik', NULL),
(2, 1, '2026-07-09 13:58:36', '2026-07-10 11:28:25', NULL, NULL, 'otomatik', NULL),
(3, 1, '2026-07-10 11:28:25', '2026-07-10 11:32:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'manuel', '2026-07-10 11:32:34'),
(4, 1, '2026-07-10 11:32:44', '2026-07-10 11:42:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-10 11:35:58'),
(5, 1, '2026-07-10 11:42:28', '2026-07-10 11:47:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-10 11:42:29'),
(6, 1, '2026-07-10 11:47:11', '2026-07-10 11:49:42', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-10 11:47:55'),
(7, 1, '2026-07-10 11:52:25', '2026-07-10 11:56:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-10 11:52:26'),
(8, 1, '2026-07-10 11:56:35', '2026-07-10 11:57:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-10 11:56:36'),
(9, 1, '2026-07-10 11:59:24', '2026-07-10 12:00:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-10 11:59:25'),
(10, 1, '2026-07-10 12:02:48', '2026-07-10 12:03:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-10 12:02:48'),
(11, 1, '2026-07-10 12:05:31', '2026-07-10 12:05:57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-10 12:05:53'),
(12, 1, '2026-07-10 12:18:19', '2026-07-10 14:15:41', NULL, NULL, 'manuel', '2026-07-10 14:15:39'),
(13, 1, '2026-07-10 14:15:53', '2026-07-10 14:15:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-10 14:15:53'),
(14, 1, '2026-07-10 14:16:06', '2026-07-10 14:16:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-10 14:16:22'),
(15, 1, '2026-07-10 14:19:51', '2026-07-10 14:20:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-10 14:19:51'),
(16, 1, '2026-07-10 14:37:26', '2026-07-10 14:46:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-10 14:46:01'),
(17, 1, '2026-07-10 15:33:39', '2026-07-10 15:58:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-10 15:43:13'),
(18, 1, '2026-07-10 15:59:13', '2026-07-10 16:00:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-10 16:00:40'),
(19, 1, '2026-07-13 09:12:57', '2026-07-13 09:15:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'manuel', '2026-07-13 09:15:11'),
(20, 1, '2026-07-13 11:27:03', '2026-07-13 13:47:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'otomatik', '2026-07-13 12:00:35'),
(21, 1, '2026-07-13 13:47:02', '2026-07-13 14:07:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-13 14:07:48'),
(22, 1, '2026-07-13 14:08:15', '2026-07-13 14:08:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-13 14:08:57'),
(23, 1, '2026-07-13 14:09:39', '2026-07-13 14:10:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-13 14:10:15'),
(24, 1, '2026-07-13 14:12:34', '2026-07-13 14:13:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'manuel', '2026-07-13 14:13:43'),
(25, 2, '2026-07-13 14:14:00', '2026-07-13 14:14:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'manuel', '2026-07-13 14:14:18'),
(26, 1, '2026-07-13 14:14:34', '2026-07-13 14:14:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'manuel', '2026-07-13 14:14:46'),
(27, 1, '2026-07-13 14:15:13', '2026-07-13 16:23:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'otomatik', '2026-07-13 16:18:31'),
(28, 1, '2026-07-13 16:23:33', '2026-07-13 16:34:20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'otomatik', '2026-07-13 16:32:17'),
(29, 1, '2026-07-13 16:34:20', '2026-07-13 16:40:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'otomatik', '2026-07-13 16:34:41'),
(30, 1, '2026-07-13 16:40:22', '2026-07-13 17:16:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-13 16:44:15'),
(31, 1, '2026-07-14 14:02:47', '2026-07-14 14:05:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'cikis', '2026-07-14 14:04:46'),
(32, 1, '2026-07-14 14:13:24', '2026-07-14 14:13:57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'cikis', '2026-07-14 14:13:57'),
(33, 1, '2026-07-14 14:24:47', '2026-07-14 14:27:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'cikis', '2026-07-14 14:26:18'),
(34, 1, '2026-07-14 14:27:58', '2026-07-14 14:33:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'cikis', '2026-07-14 14:31:59'),
(35, 1, '2026-07-14 14:34:01', '2026-07-14 14:35:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'otomatik', '2026-07-14 14:35:20'),
(36, 1, '2026-07-14 14:42:38', '2026-07-14 14:49:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-14 14:49:18'),
(37, 1, '2026-07-14 14:49:29', '2026-07-14 14:50:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'otomatik', '2026-07-14 14:50:48'),
(38, 1, '2026-07-14 14:51:43', '2026-07-14 14:52:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'manuel', '2026-07-14 14:52:10'),
(39, 1, '2026-07-14 14:55:38', '2026-07-14 14:59:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'otomatik', '2026-07-14 14:58:47'),
(40, 1, '2026-07-14 14:59:52', '2026-07-14 15:07:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'manuel', '2026-07-14 15:07:42'),
(41, 1, '2026-07-14 15:07:52', '2026-07-14 15:09:36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'otomatik', '2026-07-14 15:09:22'),
(42, 1, '2026-07-14 15:09:54', '2026-07-14 15:16:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'otomatik', '2026-07-14 15:16:36'),
(43, 1, '2026-07-14 15:17:35', '2026-07-14 15:27:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'cikis', '2026-07-14 15:27:23'),
(44, 1, '2026-07-14 15:34:49', '2026-07-14 15:35:56', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'otomatik', '2026-07-14 15:35:51'),
(45, 1, '2026-07-14 15:36:29', '2026-07-14 15:55:25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'otomatik', '2026-07-14 15:55:14'),
(46, 1, '2026-07-14 16:04:40', '2026-07-14 16:05:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'otomatik', '2026-07-14 16:04:53'),
(47, 1, '2026-07-16 10:40:23', '2026-07-16 12:22:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'otomatik', '2026-07-16 12:22:45'),
(48, 1, '2026-07-16 12:24:46', '2026-07-16 14:20:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'cikis', '2026-07-16 14:20:06'),
(49, 1, '2026-07-16 15:39:40', '2026-07-16 15:41:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'otomatik', '2026-07-16 15:41:00'),
(50, 1, '2026-07-16 15:42:47', '2026-07-16 16:25:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'cikis', '2026-07-16 16:25:39'),
(51, 1, '2026-07-16 17:02:47', '2026-07-16 17:03:15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'otomatik', '2026-07-16 17:03:10'),
(52, 1, '2026-07-16 17:17:33', '2026-07-16 17:18:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'otomatik', '2026-07-16 17:17:33'),
(53, 1, '2026-07-16 17:18:17', '2026-07-16 17:18:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'otomatik', '2026-07-16 17:18:17'),
(54, 1, '2026-07-17 08:47:20', '2026-07-17 08:53:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-17 08:52:46'),
(55, 1, '2026-07-17 09:13:00', '2026-07-17 09:13:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'otomatik', '2026-07-17 09:13:17'),
(56, 1, '2026-07-17 09:20:25', '2026-07-17 09:34:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'cikis', '2026-07-17 09:34:32'),
(57, 1, '2026-07-17 09:36:10', '2026-07-17 09:46:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'sekme', '2026-07-17 09:46:47'),
(58, 1, '2026-07-17 09:48:46', NULL, '::1', 'Mozilla/5.0 (Linux; Android 15; Pixel 9) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Mobile Safari/537.36', NULL, '2026-07-17 10:02:41');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `anasayfa_duyurular`
--
ALTER TABLE `anasayfa_duyurular`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `anasayfa_linkler`
--
ALTER TABLE `anasayfa_linkler`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_anasayfa_linkler_baslik_url` (`baslik`,`hedef_url`);

--
-- Tablo için indeksler `anketler`
--
ALTER TABLE `anketler`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_anketler_kategori_id` (`kategori_id`);

--
-- Tablo için indeksler `anketler_kategori`
--
ALTER TABLE `anketler_kategori`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_anketler_kategori_slug` (`slug`);

--
-- Tablo için indeksler `anket_cevaplari`
--
ALTER TABLE `anket_cevaplari`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_personel_soru` (`personel_id`,`soru_id`),
  ADD KEY `anket_id` (`anket_id`),
  ADD KEY `soru_id` (`soru_id`),
  ADD KEY `secenek_id` (`secenek_id`);

--
-- Tablo için indeksler `anket_katilimlari`
--
ALTER TABLE `anket_katilimlari`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_anket_personel` (`anket_id`,`personel_id`),
  ADD KEY `idx_anket_katilim_personel` (`personel_id`);

--
-- Tablo için indeksler `anket_secenekleri`
--
ALTER TABLE `anket_secenekleri`
  ADD PRIMARY KEY (`id`),
  ADD KEY `soru_id` (`soru_id`);

--
-- Tablo için indeksler `anket_sorulari`
--
ALTER TABLE `anket_sorulari`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anket_id` (`anket_id`);

--
-- Tablo için indeksler `duyurular`
--
ALTER TABLE `duyurular`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `duyurular_kategori`
--
ALTER TABLE `duyurular_kategori`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_duyurular_kategori_slug` (`slug`);

--
-- Tablo için indeksler `etkinlikler`
--
ALTER TABLE `etkinlikler`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_etkinlikler_durum_id` (`durum_id`);

--
-- Tablo için indeksler `etkinlikler_durum`
--
ALTER TABLE `etkinlikler_durum`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_etkinlikler_durum_slug` (`slug`);

--
-- Tablo için indeksler `etkinlikler_duyurular`
--
ALTER TABLE `etkinlikler_duyurular`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_etkinlikler_duyurular_kategori_id` (`kategori_id`);

--
-- Tablo için indeksler `haberler`
--
ALTER TABLE `haberler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `haber_galeri`
--
ALTER TABLE `haber_galeri`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_haber_galeri_haber_id` (`haber_id`);

--
-- Tablo için indeksler `icerik_izlemeleri`
--
ALTER TABLE `icerik_izlemeleri`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_icerik_izleme` (`tablo`,`kayit_id`,`izleyici`);

--
-- Tablo için indeksler `kaynaklar`
--
ALTER TABLE `kaynaklar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_kaynaklar_kategori_id` (`kategori_id`),
  ADD KEY `idx_kaynaklar_alt_kategori_id` (`alt_kategori_id`);

--
-- Tablo için indeksler `kaynaklar_alt_kategori`
--
ALTER TABLE `kaynaklar_alt_kategori`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_kaynaklar_alt_kategori` (`kaynak_kategori_id`,`slug`);

--
-- Tablo için indeksler `kaynaklar_kategori`
--
ALTER TABLE `kaynaklar_kategori`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_kaynaklar_kategori_slug` (`slug`);

--
-- Tablo için indeksler `oturum_kayitlari`
--
ALTER TABLE `oturum_kayitlari`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_oturum_personel_id` (`personel_id`),
  ADD KEY `idx_oturum_acik` (`personel_id`,`cikis_zamani`);

--
-- Tablo için indeksler `personeller`
--
ALTER TABLE `personeller`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_personeller_sicil_no` (`sicil_no`),
  ADD UNIQUE KEY `uq_personeller_email` (`email`),
  ADD UNIQUE KEY `uq_personeller_remember_token_hash` (`remember_token_hash`),
  ADD KEY `idx_personeller_dogum_tarihi` (`dogum_tarihi`);

--
-- Tablo için indeksler `site_ikonlari`
--
ALTER TABLE `site_ikonlari`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `anahtar` (`anahtar`) USING BTREE;

--
-- Tablo için indeksler `sizdengelenler_kategori`
--
ALTER TABLE `sizdengelenler_kategori`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_sizdengelenler_kategori_slug` (`slug`);

--
-- Tablo için indeksler `sizden_gelenler`
--
ALTER TABLE `sizden_gelenler`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_sizden_gelenler_kategori_id` (`kategori_id`);

--
-- Tablo için indeksler `vefat_bilgileri`
--
ALTER TABLE `vefat_bilgileri`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `videolar`
--
ALTER TABLE `videolar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_videolar_youtube_id` (`youtube_id`),
  ADD KEY `idx_videolar_kategori_id` (`kategori_id`),
  ADD KEY `idx_videolar_vitrin` (`vitrin`);

--
-- Tablo için indeksler `videolar_kategori`
--
ALTER TABLE `videolar_kategori`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_videolar_kategori_slug` (`slug`);

--
-- Tablo için indeksler `yardimci_linkler`
--
ALTER TABLE `yardimci_linkler`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_yardimci_linkler_kat_baslik_url` (`kategori_id`,`baslik`,`hedef_url`),
  ADD KEY `idx_yardimci_linkler_kategori_id` (`kategori_id`);

--
-- Tablo için indeksler `yardimci_linkler_kategori`
--
ALTER TABLE `yardimci_linkler_kategori`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_yardimci_linkler_kategori_slug` (`slug`);

--
-- Tablo için indeksler `yoneticiler`
--
ALTER TABLE `yoneticiler`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_yoneticiler_kullanici_adi` (`kullanici_adi`);

--
-- Tablo için indeksler `yonetici_oturum_kayitlari`
--
ALTER TABLE `yonetici_oturum_kayitlari`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_yonetici_oturum_yonetici_id` (`yonetici_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `anasayfa_duyurular`
--
ALTER TABLE `anasayfa_duyurular`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `anasayfa_linkler`
--
ALTER TABLE `anasayfa_linkler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `anketler`
--
ALTER TABLE `anketler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `anketler_kategori`
--
ALTER TABLE `anketler_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `anket_cevaplari`
--
ALTER TABLE `anket_cevaplari`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Tablo için AUTO_INCREMENT değeri `anket_katilimlari`
--
ALTER TABLE `anket_katilimlari`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=610;

--
-- Tablo için AUTO_INCREMENT değeri `anket_secenekleri`
--
ALTER TABLE `anket_secenekleri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- Tablo için AUTO_INCREMENT değeri `anket_sorulari`
--
ALTER TABLE `anket_sorulari`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Tablo için AUTO_INCREMENT değeri `duyurular`
--
ALTER TABLE `duyurular`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `duyurular_kategori`
--
ALTER TABLE `duyurular_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `etkinlikler`
--
ALTER TABLE `etkinlikler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `etkinlikler_durum`
--
ALTER TABLE `etkinlikler_durum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `etkinlikler_duyurular`
--
ALTER TABLE `etkinlikler_duyurular`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `haberler`
--
ALTER TABLE `haberler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `haber_galeri`
--
ALTER TABLE `haber_galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `icerik_izlemeleri`
--
ALTER TABLE `icerik_izlemeleri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- Tablo için AUTO_INCREMENT değeri `kaynaklar`
--
ALTER TABLE `kaynaklar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Tablo için AUTO_INCREMENT değeri `kaynaklar_alt_kategori`
--
ALTER TABLE `kaynaklar_alt_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4901;

--
-- Tablo için AUTO_INCREMENT değeri `kaynaklar_kategori`
--
ALTER TABLE `kaynaklar_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4901;

--
-- Tablo için AUTO_INCREMENT değeri `oturum_kayitlari`
--
ALTER TABLE `oturum_kayitlari`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- Tablo için AUTO_INCREMENT değeri `personeller`
--
ALTER TABLE `personeller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `site_ikonlari`
--
ALTER TABLE `site_ikonlari`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- Tablo için AUTO_INCREMENT değeri `sizdengelenler_kategori`
--
ALTER TABLE `sizdengelenler_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `sizden_gelenler`
--
ALTER TABLE `sizden_gelenler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `vefat_bilgileri`
--
ALTER TABLE `vefat_bilgileri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Tablo için AUTO_INCREMENT değeri `videolar`
--
ALTER TABLE `videolar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Tablo için AUTO_INCREMENT değeri `videolar_kategori`
--
ALTER TABLE `videolar_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `yardimci_linkler`
--
ALTER TABLE `yardimci_linkler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `yardimci_linkler_kategori`
--
ALTER TABLE `yardimci_linkler_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `yoneticiler`
--
ALTER TABLE `yoneticiler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `yonetici_oturum_kayitlari`
--
ALTER TABLE `yonetici_oturum_kayitlari`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `anketler`
--
ALTER TABLE `anketler`
  ADD CONSTRAINT `fk_anketler_kategori` FOREIGN KEY (`kategori_id`) REFERENCES `anketler_kategori` (`id`) ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `anket_cevaplari`
--
ALTER TABLE `anket_cevaplari`
  ADD CONSTRAINT `anket_cevaplari_ibfk_1` FOREIGN KEY (`anket_id`) REFERENCES `anketler` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `anket_cevaplari_ibfk_2` FOREIGN KEY (`personel_id`) REFERENCES `personeller` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `anket_cevaplari_ibfk_3` FOREIGN KEY (`soru_id`) REFERENCES `anket_sorulari` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `anket_cevaplari_ibfk_4` FOREIGN KEY (`secenek_id`) REFERENCES `anket_secenekleri` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `anket_secenekleri`
--
ALTER TABLE `anket_secenekleri`
  ADD CONSTRAINT `anket_secenekleri_ibfk_1` FOREIGN KEY (`soru_id`) REFERENCES `anket_sorulari` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `anket_sorulari`
--
ALTER TABLE `anket_sorulari`
  ADD CONSTRAINT `anket_sorulari_ibfk_1` FOREIGN KEY (`anket_id`) REFERENCES `anketler` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `etkinlikler`
--
ALTER TABLE `etkinlikler`
  ADD CONSTRAINT `fk_etkinlikler_durum` FOREIGN KEY (`durum_id`) REFERENCES `etkinlikler_durum` (`id`) ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `etkinlikler_duyurular`
--
ALTER TABLE `etkinlikler_duyurular`
  ADD CONSTRAINT `fk_etkinlikler_duyurular_duyurular_kategori` FOREIGN KEY (`kategori_id`) REFERENCES `duyurular_kategori` (`id`) ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `haber_galeri`
--
ALTER TABLE `haber_galeri`
  ADD CONSTRAINT `fk_haber_galeri_haber` FOREIGN KEY (`haber_id`) REFERENCES `haberler` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `kaynaklar`
--
ALTER TABLE `kaynaklar`
  ADD CONSTRAINT `fk_kaynaklar_alt_kategori` FOREIGN KEY (`alt_kategori_id`) REFERENCES `kaynaklar_alt_kategori` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_kaynaklar_kategori` FOREIGN KEY (`kategori_id`) REFERENCES `kaynaklar_kategori` (`id`) ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `kaynaklar_alt_kategori`
--
ALTER TABLE `kaynaklar_alt_kategori`
  ADD CONSTRAINT `fk_kaynaklar_alt_kategori_ust` FOREIGN KEY (`kaynak_kategori_id`) REFERENCES `kaynaklar_kategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `oturum_kayitlari`
--
ALTER TABLE `oturum_kayitlari`
  ADD CONSTRAINT `fk_oturum_personel` FOREIGN KEY (`personel_id`) REFERENCES `personeller` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `sizden_gelenler`
--
ALTER TABLE `sizden_gelenler`
  ADD CONSTRAINT `fk_sizden_gelenler_kategori` FOREIGN KEY (`kategori_id`) REFERENCES `sizdengelenler_kategori` (`id`) ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `videolar`
--
ALTER TABLE `videolar`
  ADD CONSTRAINT `fk_videolar_kategori` FOREIGN KEY (`kategori_id`) REFERENCES `videolar_kategori` (`id`) ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `yardimci_linkler`
--
ALTER TABLE `yardimci_linkler`
  ADD CONSTRAINT `fk_yardimci_linkler_kategori` FOREIGN KEY (`kategori_id`) REFERENCES `yardimci_linkler_kategori` (`id`) ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `yonetici_oturum_kayitlari`
--
ALTER TABLE `yonetici_oturum_kayitlari`
  ADD CONSTRAINT `fk_yonetici_oturum_yonetici` FOREIGN KEY (`yonetici_id`) REFERENCES `yoneticiler` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
