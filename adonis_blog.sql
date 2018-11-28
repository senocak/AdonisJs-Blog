-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 27 Kas 2018, 18:53:51
-- Sunucu sürümü: 10.1.37-MariaDB
-- PHP Sürümü: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `adonis_blog`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `adonis_schema`
--

CREATE TABLE `adonis_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `migration_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `adonis_schema`
--

INSERT INTO `adonis_schema` (`id`, `name`, `batch`, `migration_time`) VALUES
(79, '1503248427885_user', 1, '2018-11-27 17:27:13'),
(80, '1503248427886_token', 1, '2018-11-27 17:27:13'),
(81, '1543299783944_yazilar_schema', 1, '2018-11-27 17:27:14'),
(82, '1543328737801_kategoriler_schema', 1, '2018-11-27 17:27:14'),
(83, '1543337599655_yorumlar_schema', 1, '2018-11-27 17:27:14');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategorilers`
--

CREATE TABLE `kategorilers` (
  `id` int(10) UNSIGNED NOT NULL,
  `baslik` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `resim` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `kategorilers`
--

INSERT INTO `kategorilers` (`id`, `baslik`, `url`, `resim`, `created_at`, `updated_at`) VALUES
(1, 'Laravel', 'laravel', 'laravel.png', '2018-11-27 20:27:17', '2018-11-27 20:27:17'),
(2, 'CodeIgniter', 'codeIgniter', 'codeIgniter.png', '2018-11-27 20:27:18', '2018-11-27 20:27:18'),
(3, 'AdonisJS', 'adonisjs', 'adonisjs.png', '2018-11-27 20:27:18', '2018-11-27 20:27:18');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tokens`
--

CREATE TABLE `tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  `type` varchar(80) NOT NULL,
  `is_revoked` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(80) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(60) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazilars`
--

CREATE TABLE `yazilars` (
  `id` int(10) UNSIGNED NOT NULL,
  `baslik` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `onicerik` varchar(255) DEFAULT NULL,
  `icerik` text,
  `kategori_id` int(11) DEFAULT NULL,
  `onecikan` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `yazilars`
--

INSERT INTO `yazilars` (`id`, `baslik`, `url`, `onicerik`, `icerik`, `kategori_id`, `onecikan`, `created_at`, `updated_at`) VALUES
(1, 'Lorem Ipsum Nedir?1', 'lorem_ipsum_nedir1', 'Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500\'lerden beri endüstri standardı sahte metinler olara', 'Nereden Gelir? Yaygın inancın tersine, Lorem Ipsum rastgele sözcüklerden oluşmaz. Kökleri M.Ö. 45 tarihinden bu yana klasik Latin edebiyatına kadar uzanan 2000 yıllık bir geçmişi vardır. Virginia\'daki Hampden-Sydney College\'dan Latince profesörü Richard McClintock, bir Lorem Ipsum pasajında geçen ve anlaşılması en güç sözcüklerden biri olan \'consectetur\' sözcüğünün klasik edebiyattaki örneklerini incelediğinde kesin bir kaynağa ulaşmıştır. Lorm Ipsum, Çiçero tarafından M.Ö. 45 tarihinde kaleme alınan de Finibus Bonorum et Malorum (İyi ve Kötünün Uç Sınırları) eserinin 1.10.32 ve 1.10.33 sayılı bölümlerinden gelmektedir. Bu kitap, ahlak kuramı üzerine bir tezdir ve Rönesans döneminde çok popüler olmuştur. Lorem Ipsum pasajının ilk satırı olan Lorem ipsum dolor sit amet 1.10.32 sayılı bölümdeki bir satırdan gelmektedir.1500\'lerden beri kullanılmakta olan standard Lorem Ipsum metinleri ilgilenenler için yeniden üretilmiştir. Çiçero tarafından yazılan 1.10.32 ve 1.10.33 bölümleri de 1914 H. Rackham çevirisinden alınan İngilizce sürümleri eşliğinde özgün biçiminden yeniden üretilmiştir.Nereden Bulabilirim? Lorem Ipsum pasajlarının birçok çeşitlemesi vardır. Ancak bunların büyük bir çoğunluğu mizah katılarak veya rastgele sözcükler eklenerek değiştirilmişlerdir. Eğer bir Lorem Ipsum pasajı kullanacaksanız, metin aralarına utandırıcı sözcükler gizlenmediğinden emin olmanız gerekir. İnternet\'teki tüm Lorem Ipsum üreteçleri önceden belirlenmiş metin bloklarını yineler. Bu da, bu üreteci İnternet üzerindeki gerçek Lorem Ipsum üreteci yapar. Bu üreteç, 200\'den fazla Latince sözcük ve onlara ait cümle yapılarını içeren bir sözlük kullanır. Bu nedenle, üretilen Lorem Ipsum metinleri yinelemelerden, mizahtan ve karakteristik olmayan sözcüklerden uzaktır.', 1, 1, '2018-11-27 20:27:18', '2018-11-27 20:27:18'),
(2, 'Lorem Ipsum Nedir?2', 'lorem_ipsum_nedir2', 'Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500\'lerden beri endüstri standardı sahte metinler olara', 'Nereden Gelir? Yaygın inancın tersine, Lorem Ipsum rastgele sözcüklerden oluşmaz. Kökleri M.Ö. 45 tarihinden bu yana klasik Latin edebiyatına kadar uzanan 2000 yıllık bir geçmişi vardır. Virginia\'daki Hampden-Sydney College\'dan Latince profesörü Richard McClintock, bir Lorem Ipsum pasajında geçen ve anlaşılması en güç sözcüklerden biri olan \'consectetur\' sözcüğünün klasik edebiyattaki örneklerini incelediğinde kesin bir kaynağa ulaşmıştır. Lorm Ipsum, Çiçero tarafından M.Ö. 45 tarihinde kaleme alınan de Finibus Bonorum et Malorum (İyi ve Kötünün Uç Sınırları) eserinin 1.10.32 ve 1.10.33 sayılı bölümlerinden gelmektedir. Bu kitap, ahlak kuramı üzerine bir tezdir ve Rönesans döneminde çok popüler olmuştur. Lorem Ipsum pasajının ilk satırı olan Lorem ipsum dolor sit ame 1.10.32 sayılı bölümdeki bir satırdan gelmektedir.1500\'lerden beri kullanılmakta olan standard Lorem Ipsum metinleri ilgilenenler için yeniden üretilmiştir. Çiçero tarafından yazılan 1.10.32 ve 1.10.33 bölümleri de 1914 H. Rackham çevirisinden alınan İngilizce sürümleri eşliğinde özgün biçiminden yeniden üretilmiştir.Nereden Bulabilirim? Lorem Ipsum pasajlarının birçok çeşitlemesi vardır. Ancak bunların büyük bir çoğunluğu mizah katılarak veya rastgele sözcükler eklenerek değiştirilmişlerdir. Eğer bir Lorem Ipsum pasajı kullanacaksanız, metin aralarına utandırıcı sözcükler gizlenmediğinden emin olmanız gerekir. İnternet\'teki tüm Lorem Ipsum üreteçleri önceden belirlenmiş metin bloklarını yineler. Bu da, bu üreteci İnternet üzerindeki gerçek Lorem Ipsum üreteci yapar. Bu üreteç, 200\'den fazla Latince sözcük ve onlara ait cümle yapılarını içeren bir sözlük kullanır. Bu nedenle, üretilen Lorem Ipsum metinleri yinelemelerden, mizahtan ve karakteristik olmayan sözcüklerden uzaktır.', 2, 1, '2018-11-27 20:27:18', '2018-11-27 20:27:18'),
(3, 'Lorem Ipsum Nedir?3', 'lorem_ipsum_nedir3', 'Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500\'lerden beri endüstri standardı sahte metinler olara', 'Nereden Gelir? Yaygın inancın tersine, Lorem Ipsum rastgele sözcüklerden oluşmaz. Kökleri M.Ö. 45 tarihinden bu yana klasik Latin edebiyatına kadar uzanan 2000 yıllık bir geçmişi vardır. Virginia\'daki Hampden-Sydney College\'dan Latince profesörü Richard McClintock, bir Lorem Ipsum pasajında geçen ve anlaşılması en güç sözcüklerden biri olan \'consectetur\' sözcüğünün klasik edebiyattaki örneklerini incelediğinde kesin bir kaynağa ulaşmıştır. Lorm Ipsum, Çiçero tarafından M.Ö. 45 tarihinde kaleme alınan de Finibus Bonorum et Malorum (İyi ve Kötünün Uç Sınırları) eserinin 1.10.32 ve 1.10.33 sayılı bölümlerinden gelmektedir. Bu kitap, ahlak kuramı üzerine bir tezdir ve Rönesans döneminde çok popüler olmuştur. Lorem Ipsum pasajının ilk satırı olan Lorem ipsum dolor sit amet 1.10.32 sayılı bölümdeki bir satırdan gelmektedir.1500\'lerden beri kullanılmakta olan standard Lorem Ipsum metinleri ilgilenenler için yeniden üretilmiştir. Çiçero tarafından yazılan 1.10.32 ve 1.10.33 bölümleri de 1914 H. Rackham çevirisinden alınan İngilizce sürümleri eşliğinde özgün biçiminden yeniden üretilmiştir.Nereden Bulabilirim? Lorem Ipsum pasajlarının birçok çeşitlemesi vardır. Ancak bunların büyük bir çoğunluğu mizah katılarak veya rastgele sözcükler eklenerek değiştirilmişlerdir. Eğer bir Lorem Ipsum pasajı kullanacaksanız, metin aralarına utandırıcı sözcükler gizlenmediğinden emin olmanız gerekir. İnternet\'teki tüm Lorem Ipsum üreteçleri önceden belirlenmiş metin bloklarını yineler. Bu da, bu üreteci İnternet üzerindeki gerçek Lorem Ipsum üreteci yapar. Bu üreteç, 200\'den fazla Latince sözcük ve onlara ait cümle yapılarını içeren bir sözlük kullanır. Bu nedenle, üretilen Lorem Ipsum metinleri yinelemelerden, mizahtan ve karakteristik olmayan sözcüklerden uzaktır.', 3, 1, '2018-11-27 20:27:18', '2018-11-27 20:27:18'),
(4, 'Suvwo lot cuub.', 'Wurkabgi.', 'Loc zel wuwtof pe dezagjer weducsi ufiotowe waz refnez zodsi ezeasi fe fa cenavbal gajmelnih ilgebow nor obdom izodut opkeit ros mamot nuhic gebmihog wi roba dogise ciwe nuki ontud ave erjiohe ic lujagmus nafsuare gen inahomo eni du pupnumge woz dojevcok ', 'Ikbi cotaupo neri otvimram bofapu rot tecir toduddu su odcuona assikuw fokfaka. Nicep puogeaso uflirrah demi vazjeclat pon lagjij fecroslu sorvakon awire rasowu pupa nejfahwih ga iwju jovse uvuze. Mopwok pamek lo wumtonew misumju jom cagruij arepi remvof dokul esipu vem gab. Mi jisuripi buf hiw uderug mofe mug leddejav adogah vigorig umnekpez kid il le fahub awo ro kukjojam. Dapumi teji ken licajo watoifo im apeg vazupca zide fogejva ca boniw sew zel vo. Ru vewba cov wezrusa ikoof suhi dehuduza kewlo serguti anjihes eh fofko.', 1, 0, '2018-11-27 20:27:18', '2018-11-27 20:27:18'),
(5, 'Wombiito tuc luj.', 'Enalukof.', 'Suzjuk pigonhi oneetdaw ukahiga opoba awajoip den mijigu ra fu babemte jejub cumfafki ginluregu tohadok voktacime lopomdat guiw lezow elma go ifbup cake epubid ip jiliwi hab ce gillav nunihi oheiti ruddah lebevip tesis tozes gulde vilnevjo alauduir rooga ', 'Ru vanjo lenji ci unuaw lalpehki nugetuca dirwet ewfimvev vicup uh pa mov. Omuobeevo powgad bit zuzroer ozo dauhso tus wuoki jaboka mek nan makkitha buvare esnav go ogdaluc. Jum sub irekevjek givef ofet rofmit futmal fubago pirop dasupe enpummi hahioba nal ohipa ci ze hupi keewo. Awpiho vi il ine lutduhgu abahatwa us moj ijri putoj zildap lug tucfok roranzid un mopdicjod nu woojivi. Nedzu waz iki pephasmu sizpam go toehur be tufib udruhcuj jez osu ravsoznu cad le. Irveja azdub saf ti mot fokzigfam hec eterac iza huociwag ojiukimuz do irsikil bedpacap nuveggo.', 1, 0, '2018-11-27 20:27:18', '2018-11-27 20:27:18'),
(6, 'Pew idma buskueku.', 'Du.', 'Revoh cu wij atu zonel fugoj caf widkuedu fupajneg loggak jiewu pakracbi muj el juopdaz fu pew kazgow miw nul dul fuvtuwaz avfosu piz dofpu tes disop wa edem uc zatedo tojcok harca vesoc lozsekoj uwfar dage giana azuohu noguz wa cowtod dojgewjul vil imdi ', 'Tekce coba mokdeke dihe takga niswurbu lak gul felsegzo warida cibewalo lagzir. Sibgita do zopfa ti jo al kututu idwu sos zeevo gahosuhe teolu henowbe dejwewda nesri. Romi pigbateja deav po vof fibepdom em zoktelnik uni ki tealagi ape laj nophen. Pimlof jukub dohfiuce gabu pap zojuz gu lub meuw ef tepluv epiwarse.', 1, 0, '2018-11-27 20:27:18', '2018-11-27 20:27:18'),
(7, 'Buwadca uruwirotu irodev.', 'No.', 'Zompeker ges doege juju laztoatu fa jaz dodwotdet tita hitpoezu ukicocum beadu rab ageofu ralbasju uw ec lafka ji cag cu dace pajwasik tupra jom nelni juf rahe tair fehhujer zim pu ri sozuca enu fetmegles lib wor wegorog nuhtunpaw pomriwob nejesrut mirdaf', 'Vujhezfap pewa keknibofe aho puji si tiloz ziota povcog pagfo kepel am keginad cogohifit. Pidit lozen azigosi tocpawar pivgupud lopiso dahho efocetmib kon vas fi kipkafi sijosniz solu af. Peas bim ba sohahopu geicif faj sopugol melpu iro zug agfim omzumu ikima jesan adla tagipno. Facokkur zufe jitkead dilhutiv onula rem soofe walfu avadupas pewefeto zomi zoajhi. Elom lini omdu iguaf picak ku dak icre dipoz vansit fedutko ral giv.', 1, 0, '2018-11-27 20:27:18', '2018-11-27 20:27:18'),
(8, 'Jemolu iwibe enifar.', 'Hoinpil.', 'Iwdu gu hefto biitazi ze gaswa ospadbe soro ifvezcug om uvezah uzgub tilih tubun fures jikne tod ulomo iwu vi rahuw ariridil gi coda zuzcuma ucta ane iterojvar wesvu rob abfid usutitpes jadapma ke ro jif majuhes tatzu unecep lubi eju hirzigre memrob ubemo', 'Cakavha edidak kisnocalo keha wet ecoro rakeri dehaw salore wa behacuk evuhake gudi. Aspop fev fefu cop idepajod miwmum walo lebupi ossi idi jut aj somah golof oluahifuj. Jaszo ku ef raicano luzojo nod reb kufuc fibozo fokewo zi wijec damca tuclunu cef. Beggegu eneahiiv re go ukele acmezkal tulwi emrilem gesese rikta paobo boacokep tidhez uza.', 1, 0, '2018-11-27 20:27:18', '2018-11-27 20:27:18'),
(9, 'Ofu zehgun fetigil.', 'Na.', 'Ube jahojer afwino tiuzubah leiju kaszakes og aca adki wira kaseg iksabot wal bujinahi abiawca oci va nocepov den umlehfus vacgo karapiduh egi pac jenahahuw evradti vaz pillolton oh buf wuhnog lo febobje tir ugu konuwel benat feh bofeghur rosevho cezrep i', 'Sirre joweej kabrikih iptaohe wic culpip koidu ukuum sowac ne kajueta va zipus tolefi sapim su get ica. Miur sincog coz ru cu mi ratpur iko cu pifiwat morenibi hubivva jar cib geihsas ova. Deata tolwulade odomeh bafeciva ej eggut vificuid womzoah wuvwutig ufi hu faj. Kow ninretnom ninarzog ewiip honrijgi ca nofope ajuka vena mowoveju so sissodfo feji fil ov wa. Iresa alag ne ilaurape kopfikam bu depogno zuboko elahifa zahila dozwelec ojalikbo soar ve ruf rajmakab vob.', 1, 0, '2018-11-27 20:27:18', '2018-11-27 20:27:18');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlars`
--

CREATE TABLE `yorumlars` (
  `id` int(10) UNSIGNED NOT NULL,
  `isim` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `yorum` text,
  `onay` tinyint(1) DEFAULT '0',
  `yazi_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `yorumlars`
--

INSERT INTO `yorumlars` (`id`, `isim`, `email`, `yorum`, `onay`, `yazi_id`, `created_at`, `updated_at`) VALUES
(1, 'Lorem Ipsum1', 'lorem@ipsum1.com', 'Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1', 1, 1, '2018-11-27 20:27:18', '2018-11-27 20:27:18'),
(2, 'Lorem Ipsum2', 'lorem@ipsum2.com', 'Lorem Ipsum2 Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1', 1, 1, '2018-11-27 20:27:18', '2018-11-27 20:27:18'),
(3, 'Lorem Ipsum3', 'lorem@ipsum3.com', 'Lorem Ipsum3 Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1', 1, 2, '2018-11-27 20:27:18', '2018-11-27 20:27:18');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `adonis_schema`
--
ALTER TABLE `adonis_schema`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kategorilers`
--
ALTER TABLE `kategorilers`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tokens_token_unique` (`token`),
  ADD KEY `tokens_user_id_foreign` (`user_id`),
  ADD KEY `tokens_token_index` (`token`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Tablo için indeksler `yazilars`
--
ALTER TABLE `yazilars`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yorumlars`
--
ALTER TABLE `yorumlars`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `adonis_schema`
--
ALTER TABLE `adonis_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- Tablo için AUTO_INCREMENT değeri `kategorilers`
--
ALTER TABLE `kategorilers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `yazilars`
--
ALTER TABLE `yazilars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `yorumlars`
--
ALTER TABLE `yorumlars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `tokens`
--
ALTER TABLE `tokens`
  ADD CONSTRAINT `tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
