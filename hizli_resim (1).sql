-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 19 Mar 2019, 20:11:44
-- Sunucu sürümü: 5.6.24
-- PHP Sürümü: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `hizli_resim`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `arsiv_resimleri`
--

CREATE TABLE IF NOT EXISTS `arsiv_resimleri` (
  `arsiv_resimleri_id` int(11) NOT NULL,
  `arsiv_id` int(11) NOT NULL,
  `arsiv_resimleri_kapak_foto` varchar(55) NOT NULL,
  `arsiv_resimleri_kapak_foto_uzanti` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `arsiv_resimleri`
--

INSERT INTO `arsiv_resimleri` (`arsiv_resimleri_id`, `arsiv_id`, `arsiv_resimleri_kapak_foto`, `arsiv_resimleri_kapak_foto_uzanti`) VALUES
(1, 1, 'alex-pettyfer-01-f354', 'png'),
(2, 2, 'amy-adams-01-f358', 'png'),
(3, 2, 'amy-adams-02-f359', 'jpg'),
(4, 2, 'amy-adams-03-f360', 'png'),
(5, 2, 'amy-adams-04-f361', 'jpg'),
(6, 2, 'amy-adams-05-f362-884', 'jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `begenenler`
--

CREATE TABLE IF NOT EXISTS `begenenler` (
  `begenenler_id` int(11) NOT NULL,
  `resim_id` varchar(32) NOT NULL,
  `begenen_id` int(11) NOT NULL,
  `begeni_turu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `blog_id` int(11) NOT NULL,
  `blog_baslik` varchar(55) NOT NULL,
  `blog_yazi` varchar(1000) NOT NULL,
  `blog_tarih` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `blog`
--

INSERT INTO `blog` (`blog_id`, `blog_baslik`, `blog_yazi`, `blog_tarih`) VALUES
(2, '"Sürükle & Bırak" ve "Kopyala & Yapıştır"', '"Sürükle & Bırak" ve "Kopyala & Yapıştır" özelliklerini de artık sitemizle birlikte kullanabilirsiniz.\r\nBu özellik şimdilik sadece Chrome internet tarayıcı ile çalışmaktadır.', '2016-03-15 00:00:00'),
(3, 'WEBP Desteği', 'WEBP resim formatı desteği tamamlanmıştır.\r\nArtık sitemize WEBP formatında resimleri de yükleyebilirsiniz.\r\nWEBP her tarayıcılarında desteklenmediği için yükleme sonrası JPEG formatına dönüştürülecektir.', '2015-09-29 00:00:00'),
(4, 'Albüm Oluşturma', 'Merhaba,\r\nBir süredir üzerinde çalıştığımız albüm oluşturma özelliğimiz aktif olmuştur.\r\nArtık yüklediğiniz resimleri yönetim panelinizden albümlere ekleyebilir ve albümü paylaşabilirsiniz.', '2015-09-19 00:00:00'),
(5, 'Caps Bölümü Yenilendi', 'Caps hazırlama bölümümüz yenilendi.\r\nArtık yazı ve arkaplan renklerini seçerek caps yapabilirsiniz.', '2015-09-05 00:00:00'),
(6, 'Hızlı Resim Transfer', 'Imgur sitesinin Türkiye’de yasaklanmasından sonra sitedeki resimlerini Hızlı Resim’e taşımak isteyen kullanıcılarımızdan bir çok talep aldık.\r\n\r\nBunun üzerine sizin için Hızlı Resim Transfer uygulamasını hazırladık.\r\n\r\nAşağıdaki bağlantıdan uygulamayı indirip kurarak Imgur hesabınızdaki resimleri toplu olarak Hızlı Resim hesabınıza aktarabilirsiniz.\r\n\r\nUygulamayı kullanmak için sitemizde hesabınız olması gereklidir.\r\n\r\n<a href="#">Uygulamayı İndir</a>\r\n\r\n\r\nUygulama .NET 4.5 ile hazırlanmıştır. Eğer sisteminizde .NET 4.5 yüklü değilse aşağıdaki adresten indirebilirsiniz.\r\n\r\nhttps://www.microsoft.com/tr-tr/download/details.aspx?id=30653', '2015-08-26 00:00:00'),
(7, 'Chrome Eklentisi', 'Başka sitelerde gördüğünüz resimleri sağ tıklayarak Hızlı Resim''e yüklemenizi sağlayan Chrome eklentimiz yayınlandı.\r\n\r\nYüklemek için tıklayınız.', '2015-08-07 00:00:00'),
(8, 'Performans Sorunu', 'Merhaba,\r\n\r\nYüklediğiniz resimlere erişmek konusunda birkaç gündür sorun yaşadığınızı biliyoruz.\r\n\r\nSize bu sorunun çözüldüğünü bildirmek için ulaşıyoruz.\r\n\r\nBirkaç gün önce ana sunucumuzda işletim sistemi diski arızası tespit edilmiş ve sunucuyu sağlayan firmadan yeni disk temini için randevu alınmıştır.\r\n\r\nDün gece 4''te sağlanan yeni disk, bozuk disk ile değiştirilmiştir.\r\n\r\nBu süre zarfında eksik disk sebebiyle sunucuda yavaşlık yaşanmış, bu da sizin farkettiğiniz bazı resimlerin yüklenememesine sebep olmuştur.\r\n\r\nSizi temin ederiz ki bu sürede veya sonrasında yüklediğiniz resimlerde veri kaybı olmamıştır.\r\n\r\nYüklenen resimler çok sayıda yedekli diskte saklanmaktadır bu yüzden güvenlidir. Sadece işletim sistemi tek yedekli diskte saklandığı için ve bu diskte sorun yaşandığı için kısa süreli performans kaybı olmuştur. Bu sebeple de işletim sistemi yedek sayısı da artırılmıştır.\r\n\r\nSitemizi bundan sonra da önceden olduğu gibi güvenle kullanabilirsin.\r\n\r\nTeşekkürler.', '2015-07-21 00:00:00'),
(9, 'Dosya Web', 'Merhaba,\r\n\r\nYeni bir proje ile uğraşmakta olduğumuz için uzun süredir blog yazamıyorduk.\r\nSonunda uğraştığımız proje tamamlandı.\r\n\r\nDosya Web - Hızlı ve Kolay Dosya Paylaşımı\r\nhttp://dosya.web.tr\r\n\r\nResim harici dosya yüklemelerinizi yeni sitemize yapabilirsiniz.\r\nPaylaşımlarınız için yükleme sonrası size verilecek internet adresini kullanabilir veya e-posta formunu doldurarak dosyayı arkadaşlarınıza gönderebilirsiniz.\r\n\r\nHızlı Resim gibi bu projemizi de beğeneceğinizi umuyoruz.', '2015-03-13 00:00:00'),
(10, 'Çoklu Resim Yükleme', 'Artık yüklemek için resim seçme penceresinden birden fazla resim seçip yükleyebilirsiniz. Bu özellik sadece yeni nesil internet tarayıcıları tarafından desteklenmektedir.', '2014-01-17 00:00:00'),
(11, 'İnternetten Dosya Yükleme', 'Adresini bildiğiniz resimleri artık İnternetten yükle seçeneği ile sitemize kendi bilgisayarınıza yükleme gereği olmadan yükleyebilirsiniz.', '2014-01-06 00:00:00'),
(12, 'Yeni Resim Türleri', 'JPEG2000 ve XCF dosya türleri de artık desteklenmektedir.\r\n\r\nAdobe Photoshop (PSD) ve Adobe Taşınabilir Belge Biçimi (PDF) dosyalarının yüklenebilmesi için çalışmalarımız ve testlerimiz devam ediyor.', '2014-01-05 00:00:00'),
(13, 'Bmp ve Tiff Resim Türleri', 'Daha önceden değiştirilmeden kaydedilen BMP türündeki resimler artık internet ortamına daha uygun olan PNG türüne çevirilerek kaydedilmektedir.\r\n\r\nBu değişiklikle beraber TIFF türündeki resimlerin yüklenmesine de destek verilmiştir. Bu türde yüklenen resimler JPEG türüne çevirilerek kaydedilmektedir. Birden fazla sayfaya sahip TIFF dosyalarının çevrimi sırasında sayfalar alt alta gelecek şekilde birleştirme yapılmaktadır. Bu özellik henüz deneme aşamasındadır.', '2014-01-04 00:00:00'),
(14, 'Merhaba', 'Merhaba,\r\n\r\nYeni yıl ile birlikte yenilenen tasarım ve altyapımız sonrasında bundan böyle sitemizde yapılan değişiklik ve gelişmeleri bu bölümden takip edebileceksiniz.\r\n\r\nHerkese iyi yıllar.', '2014-01-03 00:00:00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE IF NOT EXISTS `kullanicilar` (
  `id` int(11) NOT NULL,
  `adi` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `kullanici_adi` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `e_posta` varchar(50) NOT NULL,
  `d_tarihi` datetime DEFAULT NULL,
  `cinsiyet` varchar(5) DEFAULT NULL,
  `bio` text,
  `sifre` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`id`, `adi`, `kullanici_adi`, `e_posta`, `d_tarihi`, `cinsiyet`, `bio`, `sifre`) VALUES
(0, 'Anonim', '', '', NULL, NULL, NULL, ''),
(1, 'Batuhan seçkin', 'batuhanseckin', 'batu-han957@hotmail.com', NULL, NULL, NULL, '121212'),
(2, 'asdasd', 'adsdas', 'asdasd@asdasd', NULL, NULL, NULL, '121212'),
(3, 'asd', 'asd', 'asd@asd.com', NULL, NULL, NULL, '121212'),
(4, 'Anonim', 'Anonim', 'Anonim@hotmail.com', NULL, NULL, NULL, '121212');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `resimler`
--

CREATE TABLE IF NOT EXISTS `resimler` (
  `resim_id` varchar(32) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `aciklama` varchar(50) NOT NULL,
  `resim_uzanti` varchar(5) NOT NULL,
  `yuklenme_tarihi` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `resimler`
--

INSERT INTO `resimler` (`resim_id`, `kullanici_id`, `aciklama`, `resim_uzanti`, `yuklenme_tarihi`) VALUES
('05912a5eb87e6dff51c81a765d9c032f', 0, 'asd', 'jpg', '2019-03-19 22:04:11'),
('1722ec610a41542715858051efb2bda2', 0, 'asd', 'jpg', '2019-03-19 22:04:11'),
('2c8d5afbb0c412328bf7f2b68faf8aee', 0, 'asd', 'jpg', '2019-03-19 22:04:11'),
('423cfb335ac4acc38685f33eec15edc0', 0, 'asd', 'jpg', '2019-03-19 22:04:11'),
('502206c45906b1552e905d633e56981b', 0, 'asd', 'jpg', '2019-03-19 22:04:11'),
('a5d18f5cf8ee5c0d437ff43044bd059d', 0, 'asd', 'jpg', '2019-03-19 22:04:11'),
('dfb33746eaff575969add8d1c0c55a3c', 0, 'asd', 'jpg', '2019-03-19 22:04:11'),
('dfc846d5e43210a894a9326b52f9a26d', 0, 'asd', 'jpg', '2019-03-19 22:04:11'),
('e89ab228155cfa9d7c6cf915d552247d', 0, 'asd', 'jpg', '2019-03-19 22:04:11');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `resim_arsivi`
--

CREATE TABLE IF NOT EXISTS `resim_arsivi` (
  `arsiv_id` int(11) NOT NULL,
  `arsiv_ismi` varchar(55) NOT NULL,
  `arsiv_kapak_foto` varchar(55) NOT NULL,
  `arsiv_kapak_foto_uzanti` varchar(25) NOT NULL,
  `arsiv_aciklama` mediumtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `resim_arsivi`
--

INSERT INTO `resim_arsivi` (`arsiv_id`, `arsiv_ismi`, `arsiv_kapak_foto`, `arsiv_kapak_foto_uzanti`, `arsiv_aciklama`) VALUES
(1, 'Alex Pettyfer', 'alex-pettyfer-01-f354', 'png', 'Alexander Richard "Alex" Pettyfer, İngiliz aktör ve model. Stormbreaker filmindeki Alex Rider karakteriyle Young Artist Award ve Empire Award rollerine aday gösterildi. Ünlü Burberry markası için modellik yapan Pettyfer, 2011 yılında vizyona giren I Am Number Four ve Beastly filmleriyle ismini duyurdu. 2012 yılında Magic Mike filminde Adam karakterini canlandırdı.'),
(2, 'Amy Adams', 'amy-adams-05-f362-884', 'jpg', 'Amy Lou Adams 20 Ağustos 1974’te dünyaya gelmiş Amerikalı bir televizyon ve film yıldızıdır. Junebug filmindeki rolüyle Akademi Ödülü’ne aday gösterilen yıldızı son dönem, Enchanted filminde canlandırdığı ve Altın Küre’ye aday gösterildiği rolü Giselle ile hatırlayabilirsiniz. \nYıldız aslen Vicence, İtalya doğumludur. Amerikalı ebeveynleri Kathryn ve Richard Adams’ın yedi çocuğundan biri olan Adams, balerin olma hayaliyle yanıp tutuşurken bir yandan da okul korosunda şarkı söyledi. Yıllar ilerledikçe iyi bir balerin olma umutları da sönen yıldız, sonunda müzikal eğitimi almaya karar verdi.\nİlerleyen yıllarda garsonluğun da aralarında bulunduğu irili ufaklı pek çok iş yapacak ve çalıştığı mekanlarda şarkı söylemeye devam edecekti. Televizyon serisi olarak hazırlanan “Cruel Intentions” yapımında rol alması bu yıllara rastlar. Televizyon yapımı olarak isteneni veremeyen yapım, aynı adla sinema filmi olarak da çekildi.'),
(3, 'Avril Lavigne', 'avril-lavigne-04-f303', 'jpg', 'Avril Ramona Lavigne (d. 27 Eylül 1984; Belleville, Ontario), Kanadalı rock şarkıcısı, müzisyen ve söz yazarı. 2006 yılında Canadian Business dergisine göre Lavigne Hollywood''da yaşayan yedinci en zengin Kanadalıdır. Avril Lavigne''in ailesi Quebec kökenlidir, buna karşın kendisi Fransızca bilmemektedir. Şarkıcının ismi Fransızca söylenişe uygun olarak evrıl laviin şeklinde telaffuz edilir. Lavigne''in ilk albümü olan Let Go, 2002 yılında çıktı. İkinci ve üçüncü albümleri Under My Skin ve The Best Damn Thing ise sırasıyla 2004 ve 2007 yıllarında çıktı. Bu albümlerin ikisi de Billboard 200 listesinde ilk sıraya yerleşmeyi başardı. Avril Lavigne''in bu listelerde en üst sıraya yerleşen şarkıları Complicated, Sk8er Boi, I''m With You, My Happy Ending, Nobody''s Home, Keep Holding On, Girlfriend, Hot. Lavigne''nin 2010 yılı Haziran ayı içerisinde yeni albümünü piyasaya sürdü. Lavigne, 31.12.2010 tarihinde Dic Clark''s NYE''de What The Hell adlı şarkının konserini verdi. 2011 yılında ikinci single''ı "Smile" adlı şarkısını çıkarmıştır. 1 Mart 2012''de hayranlarına bir sürpriz yaparak Goodbye adlı şarkısına kısa film çekmiştir.'),
(4, 'Diğer', 'ayi-caldilar-f117-884', 'jpg', ''),
(5, 'Doğum Günü', 'dogum-gunu-hediyesi-f497', 'jpg', ''),
(6, 'Çiçek', 'beyaz-papatyalar-f398', 'jpg', ''),
(7, 'Araç', 'jeep-grand-cherokee-srt8-f199', 'jpg', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `resim_ayrintilari`
--

CREATE TABLE IF NOT EXISTS `resim_ayrintilari` (
  `ayrinti_id` int(11) NOT NULL,
  `resim_id` varchar(50) NOT NULL,
  `like_sayisi` int(11) NOT NULL DEFAULT '0',
  `dislike_sayisi` int(11) NOT NULL DEFAULT '0',
  `puan` int(11) NOT NULL DEFAULT '0',
  `gosterim_sayisi` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `resim_ayrintilari`
--

INSERT INTO `resim_ayrintilari` (`ayrinti_id`, `resim_id`, `like_sayisi`, `dislike_sayisi`, `puan`, `gosterim_sayisi`) VALUES
(1, '502206c45906b1552e905d633e56981b', 0, 0, 0, 0),
(2, 'dfc846d5e43210a894a9326b52f9a26d', 0, 0, 0, 0),
(3, 'a5d18f5cf8ee5c0d437ff43044bd059d', 0, 0, 0, 0),
(4, 'e89ab228155cfa9d7c6cf915d552247d', 0, 0, 0, 0),
(5, 'dfb33746eaff575969add8d1c0c55a3c', 0, 0, 0, 0),
(6, '05912a5eb87e6dff51c81a765d9c032f', 0, 0, 0, 0),
(7, '1722ec610a41542715858051efb2bda2', 0, 0, 0, 0),
(8, '2c8d5afbb0c412328bf7f2b68faf8aee', 0, 0, 0, 0),
(9, '423cfb335ac4acc38685f33eec15edc0', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE IF NOT EXISTS `yorumlar` (
  `yorum_id` int(11) NOT NULL,
  `kullanici_id` int(25) NOT NULL,
  `yorum` varchar(250) NOT NULL,
  `yorum_tarihi` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `resim_id` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`yorum_id`, `kullanici_id`, `yorum`, `yorum_tarihi`, `resim_id`) VALUES
(1, 1, 'asd', '2019-03-16 05:24:06', 'e0d29d161bc18e8d2a30e3068f0ec8aa'),
(2, 1, 'dasdsa', '2019-03-17 05:54:05', '18baf98de6b3b4d27645a109aff390c2'),
(3, 2, 'uojh', '2019-03-18 03:53:40', 'd2eafeab68da85b1d71995a3a87d22c3'),
(4, 1, 'asdasd', '2019-03-19 19:36:44', 'd8dc87a09cccbd3158141907b486257d');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `arsiv_resimleri`
--
ALTER TABLE `arsiv_resimleri`
  ADD PRIMARY KEY (`arsiv_resimleri_id`);

--
-- Tablo için indeksler `begenenler`
--
ALTER TABLE `begenenler`
  ADD PRIMARY KEY (`begenenler_id`);

--
-- Tablo için indeksler `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Tablo için indeksler `kullanicilar`
--
ALTER TABLE `kullanicilar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `resimler`
--
ALTER TABLE `resimler`
  ADD PRIMARY KEY (`resim_id`);

--
-- Tablo için indeksler `resim_arsivi`
--
ALTER TABLE `resim_arsivi`
  ADD PRIMARY KEY (`arsiv_id`);

--
-- Tablo için indeksler `resim_ayrintilari`
--
ALTER TABLE `resim_ayrintilari`
  ADD PRIMARY KEY (`ayrinti_id`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`yorum_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `arsiv_resimleri`
--
ALTER TABLE `arsiv_resimleri`
  MODIFY `arsiv_resimleri_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Tablo için AUTO_INCREMENT değeri `begenenler`
--
ALTER TABLE `begenenler`
  MODIFY `begenenler_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- Tablo için AUTO_INCREMENT değeri `kullanicilar`
--
ALTER TABLE `kullanicilar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Tablo için AUTO_INCREMENT değeri `resim_arsivi`
--
ALTER TABLE `resim_arsivi`
  MODIFY `arsiv_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- Tablo için AUTO_INCREMENT değeri `resim_ayrintilari`
--
ALTER TABLE `resim_ayrintilari`
  MODIFY `ayrinti_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- Tablo için AUTO_INCREMENT değeri `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `yorum_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
