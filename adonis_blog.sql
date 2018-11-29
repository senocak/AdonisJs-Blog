-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 29 Kas 2018, 16:18:46
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
(109, '1503248427885_user', 1, '2018-11-28 14:23:41'),
(110, '1503248427886_token', 1, '2018-11-28 14:23:41'),
(111, '1543299783944_yazilar_schema', 1, '2018-11-28 14:23:41'),
(112, '1543328737801_kategoriler_schema', 1, '2018-11-28 14:23:41'),
(113, '1543337599655_yorumlar_schema', 1, '2018-11-28 14:23:41');

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
(1, 'Laravel', 'laravel', 'laravel.png', '2018-11-28 17:23:45', '2018-11-28 17:23:45'),
(2, 'CodeIgniter', 'codeigniter', 'codeIgniter.png', '2018-11-28 17:23:45', '2018-11-28 17:23:45'),
(3, 'AdonisJS', 'adonisjs', 'adonisjs.png', '2018-11-28 17:23:45', '2018-11-28 17:23:45'),
(5, 'Deneme Laravel', 'deneme-laravel', '26af9f79c991cf531af9d9e03a55c870.jpg', '2018-11-29 16:51:00', '2018-11-29 16:51:00');

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

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'anil@bilgimedya.com.tr', 'anil@bilgimedya.com.tr', '$2a$10$5ddYhIcr.cSlCQPD0Fz5rOM3yYsIz9LSSb4lO/.ujWKGifQ31.yAi', NULL, NULL);

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
  `kategori_url` varchar(255) DEFAULT NULL,
  `onecikan` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `yazilars`
--

INSERT INTO `yazilars` (`id`, `baslik`, `url`, `onicerik`, `icerik`, `kategori_url`, `onecikan`, `created_at`, `updated_at`) VALUES
(1, 'Lorem Ipsum Nedir?1', 'lorem_ipsum_nedir1', 'Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500\'lerden beri endüstri standardı sahte metinler olara', 'Nereden Gelir? Yaygın inancın tersine, Lorem Ipsum rastgele sözcüklerden oluşmaz. Kökleri M.Ö. 45 tarihinden bu yana klasik Latin edebiyatına kadar uzanan 2000 yıllık bir geçmişi vardır. Virginia\'daki Hampden-Sydney College\'dan Latince profesörü Richard McClintock, bir Lorem Ipsum pasajında geçen ve anlaşılması en güç sözcüklerden biri olan \'consectetur\' sözcüğünün klasik edebiyattaki örneklerini incelediğinde kesin bir kaynağa ulaşmıştır. Lorm Ipsum, Çiçero tarafından M.Ö. 45 tarihinde kaleme alınan de Finibus Bonorum et Malorum (İyi ve Kötünün Uç Sınırları) eserinin 1.10.32 ve 1.10.33 sayılı bölümlerinden gelmektedir. Bu kitap, ahlak kuramı üzerine bir tezdir ve Rönesans döneminde çok popüler olmuştur. Lorem Ipsum pasajının ilk satırı olan Lorem ipsum dolor sit amet 1.10.32 sayılı bölümdeki bir satırdan gelmektedir.1500\'lerden beri kullanılmakta olan standard Lorem Ipsum metinleri ilgilenenler için yeniden üretilmiştir. Çiçero tarafından yazılan 1.10.32 ve 1.10.33 bölümleri de 1914 H. Rackham çevirisinden alınan İngilizce sürümleri eşliğinde özgün biçiminden yeniden üretilmiştir.Nereden Bulabilirim? Lorem Ipsum pasajlarının birçok çeşitlemesi vardır. Ancak bunların büyük bir çoğunluğu mizah katılarak veya rastgele sözcükler eklenerek değiştirilmişlerdir. Eğer bir Lorem Ipsum pasajı kullanacaksanız, metin aralarına utandırıcı sözcükler gizlenmediğinden emin olmanız gerekir. İnternet\'teki tüm Lorem Ipsum üreteçleri önceden belirlenmiş metin bloklarını yineler. Bu da, bu üreteci İnternet üzerindeki gerçek Lorem Ipsum üreteci yapar. Bu üreteç, 200\'den fazla Latince sözcük ve onlara ait cümle yapılarını içeren bir sözlük kullanır. Bu nedenle, üretilen Lorem Ipsum metinleri yinelemelerden, mizahtan ve karakteristik olmayan sözcüklerden uzaktır.', 'laravel', 1, '2018-11-28 17:23:45', '2018-11-29 15:01:27'),
(2, 'Lorem Ipsum Nedir?2', 'lorem_ipsum_nedir2', 'Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500\'lerden beri endüstri standardı sahte metinler olara', 'Nereden Gelir? Yaygın inancın tersine, Lorem Ipsum rastgele sözcüklerden oluşmaz. Kökleri M.Ö. 45 tarihinden bu yana klasik Latin edebiyatına kadar uzanan 2000 yıllık bir geçmişi vardır. Virginia\'daki Hampden-Sydney College\'dan Latince profesörü Richard McClintock, bir Lorem Ipsum pasajında geçen ve anlaşılması en güç sözcüklerden biri olan \'consectetur\' sözcüğünün klasik edebiyattaki örneklerini incelediğinde kesin bir kaynağa ulaşmıştır. Lorm Ipsum, Çiçero tarafından M.Ö. 45 tarihinde kaleme alınan de Finibus Bonorum et Malorum (İyi ve Kötünün Uç Sınırları) eserinin 1.10.32 ve 1.10.33 sayılı bölümlerinden gelmektedir. Bu kitap, ahlak kuramı üzerine bir tezdir ve Rönesans döneminde çok popüler olmuştur. Lorem Ipsum pasajının ilk satırı olan Lorem ipsum dolor sit ame 1.10.32 sayılı bölümdeki bir satırdan gelmektedir.1500\'lerden beri kullanılmakta olan standard Lorem Ipsum metinleri ilgilenenler için yeniden üretilmiştir. Çiçero tarafından yazılan 1.10.32 ve 1.10.33 bölümleri de 1914 H. Rackham çevirisinden alınan İngilizce sürümleri eşliğinde özgün biçiminden yeniden üretilmiştir.Nereden Bulabilirim? Lorem Ipsum pasajlarının birçok çeşitlemesi vardır. Ancak bunların büyük bir çoğunluğu mizah katılarak veya rastgele sözcükler eklenerek değiştirilmişlerdir. Eğer bir Lorem Ipsum pasajı kullanacaksanız, metin aralarına utandırıcı sözcükler gizlenmediğinden emin olmanız gerekir. İnternet\'teki tüm Lorem Ipsum üreteçleri önceden belirlenmiş metin bloklarını yineler. Bu da, bu üreteci İnternet üzerindeki gerçek Lorem Ipsum üreteci yapar. Bu üreteç, 200\'den fazla Latince sözcük ve onlara ait cümle yapılarını içeren bir sözlük kullanır. Bu nedenle, üretilen Lorem Ipsum metinleri yinelemelerden, mizahtan ve karakteristik olmayan sözcüklerden uzaktır.', 'laravel', 0, '2018-11-28 17:23:45', '2018-11-29 13:39:35'),
(3, 'Lorem Ipsum Nedir?3', 'lorem_ipsum_nedir3', 'Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500\'lerden beri endüstri standardı sahte metinler olara', 'Nereden Gelir? Yaygın inancın tersine, Lorem Ipsum rastgele sözcüklerden oluşmaz. Kökleri M.Ö. 45 tarihinden bu yana klasik Latin edebiyatına kadar uzanan 2000 yıllık bir geçmişi vardır. Virginia\'daki Hampden-Sydney College\'dan Latince profesörü Richard McClintock, bir Lorem Ipsum pasajında geçen ve anlaşılması en güç sözcüklerden biri olan \'consectetur\' sözcüğünün klasik edebiyattaki örneklerini incelediğinde kesin bir kaynağa ulaşmıştır. Lorm Ipsum, Çiçero tarafından M.Ö. 45 tarihinde kaleme alınan de Finibus Bonorum et Malorum (İyi ve Kötünün Uç Sınırları) eserinin 1.10.32 ve 1.10.33 sayılı bölümlerinden gelmektedir. Bu kitap, ahlak kuramı üzerine bir tezdir ve Rönesans döneminde çok popüler olmuştur. Lorem Ipsum pasajının ilk satırı olan Lorem ipsum dolor sit amet 1.10.32 sayılı bölümdeki bir satırdan gelmektedir.1500\'lerden beri kullanılmakta olan standard Lorem Ipsum metinleri ilgilenenler için yeniden üretilmiştir. Çiçero tarafından yazılan 1.10.32 ve 1.10.33 bölümleri de 1914 H. Rackham çevirisinden alınan İngilizce sürümleri eşliğinde özgün biçiminden yeniden üretilmiştir.Nereden Bulabilirim? Lorem Ipsum pasajlarının birçok çeşitlemesi vardır. Ancak bunların büyük bir çoğunluğu mizah katılarak veya rastgele sözcükler eklenerek değiştirilmişlerdir. Eğer bir Lorem Ipsum pasajı kullanacaksanız, metin aralarına utandırıcı sözcükler gizlenmediğinden emin olmanız gerekir. İnternet\'teki tüm Lorem Ipsum üreteçleri önceden belirlenmiş metin bloklarını yineler. Bu da, bu üreteci İnternet üzerindeki gerçek Lorem Ipsum üreteci yapar. Bu üreteç, 200\'den fazla Latince sözcük ve onlara ait cümle yapılarını içeren bir sözlük kullanır. Bu nedenle, üretilen Lorem Ipsum metinleri yinelemelerden, mizahtan ve karakteristik olmayan sözcüklerden uzaktır.', 'codeigniter', 0, '2018-11-28 17:23:45', '2018-11-29 13:39:37'),
(4, 'Mefmelti hoad tijteg.', 'Jicavuso.', 'Oke ni guzad cudkus ziba tesauda zimduk rukujte laeko pigetino pu cipewoto ruir wuntirkah led uvibilid pogaibi sapop ma en ipudu janbolok fuiso cob licnime roravago behsagtud wes tipag dak zof zibmu nimo uwoacbu tu semiw polir uhhircib celavsem num sauddo', 'Cukir ajlic oksokjil jadivan powvo guc nowwo wir sef cufse fipunu mu lostepsuk mago afeno wa we nakojo. Cabilboh he bicmiabo senah vohutok ekpi we bo pilugnul zewtizu bidedme num zu nahili obvarsu ujoj ijuvu aritafah. Hovgot gefuc nafuv levkeuk hurogu kezumjah suopioka ozuuhouf vov ud onko sitom. Umo kub pumupfov mirobba hicaco utohovgo tewjeto rehset eljooza jotbesbok pigisupi ka te. Ju upap pemun hu cemtin ej sopa ru poffid wumepaaho mu cavomaoke wim onmal cofni. Dokoka mewnaine citsiw iki ku zucin wulok jabanwo dothu ge vo limhumdab udecukmu os cegto etvab fa.', 'adonisjs', 0, '2018-11-28 17:23:46', '2018-11-28 17:23:46'),
(5, 'Ojopodos wusi od.', 'Vab.', 'Vavdeok rosaan iwde sure zew rah co guzrihram bi etoraku juhopah rak ze tat terudoto paes zocvajga su bododefa ma comvutu salwudmi nauvivan pi pehov ihte awugelno muakehum lar le uhior nu cepsohup ulu hul avuzel sigar pelwoh gowe ughujsep suglupuw kuunutu', 'Wocne aminuw nuwus inurejig wa ujopmo baar ehuah ko bor eko tut roh wo riobu. Un ki fipub arocecu wepbendik fuip uceetobev fitficam napmona asapape vomaj abib wa. Guidu to pet todefhe lem biveboce geted zuidaom tafataw soolef keoztu gufan nodi dat habunat mukputric zitmihnur. Idiwo lav uk eg jusuve cuhwoli googzu luhidsuh badizfor ca womale tezohni calo zi. Apejca fiful fuzab tomdeb rehas zajosi nobogju kabifi uzi wihkog vinapma sikne nu hod zatho.', 'adonisjs', 0, '2018-11-28 17:23:46', '2018-11-28 17:23:46'),
(6, 'Pigjita uc wagtupzev.', 'Henmekkad.', 'Poken bohibe te pifnav ozonikofa dufem acecgej gefkuk kupma bop cirgo ulueg pa se uvekawna egigonzo rinel owa ceel pa zoncaz ug juiwogu cuf umo zud ifej ra pu new zu makozzot sig poojataj dotojus upemifak rubco wotocjo mu nudici tunla sevluzel uju un ah l', 'Tag teg ek vop ivica hu zin rod uwwaw no rivmo apenul kamre nikafsu ze. Mo ru utegaz ol hi he nupa jekawfe cahzuku gi ilo zul zad hel ov nizwum. Pifoze kurcozrit mej kewge osib ebo relor eko keuwti aj ogete lor tadte hiilo kifasoj foojgo.', 'adonisjs', 0, '2018-11-28 17:23:46', '2018-11-28 17:23:46'),
(7, 'Tacaroim bogci ohacuvmu.', 'Emotum.', 'We leto dafaci winne ojetig fufob oseuhtes nibus zutoh jos fibo fec maupuk bod woho dotwiwsan weznud becciwur okotu juwasse cudilifak raw likefoku gev caido eje najub futviget ogakuk rezluzej faej ruc nel sosuw jocsimmi mokzu wik og ocuwelak tejzefodo pat', 'Padkeih zo rifaba kutegaf awi evhu biisze etinahge je du guc uhaepuoji azi oswotco paf cajup loldoge. Ijoon ba num ediotiwa vuv wana livmode ti hodvooz kikka baca fuoli faj irumun eda selweati fucjin. Pocupel sivi nilbahfiv ohkopte kemmo kizzad bepa avu badi owezok puguz ezi la.', 'adonisjs', 0, '2018-11-28 17:23:46', '2018-11-28 17:23:46'),
(8, 'Niusahug gidipu pet.', 'Fu.', 'Woksi zo zu nojeplib uherih nan avoori ciwira fikogwej dapkip bi dashugif anu guka romezad jouptah pa turadu niwfitmab nimur pukrof fu follimul zaihoru esa kika rajaznu mipalumo isour tu ejjuwho tapose wiko ralim bodu gebni amifu wucvabom saz edohiude gi ', 'Kukeheoru bu vehvipe irhikhem badi si tauzu hoombi nuov votweco raiweju ukdok vo nu. Ajtu uptitgu cesu ida za vo pupa afe logohija egu kiripce somnapnu ma. Rupkazir dutvileg holamasi ug eke lorefuf dejickug utnolsa bendotob loh duoci hin ek. Tubgo duhka pic sa biomgij fargedev fo vepmuvsu paspioto gaki ahiiveot po vuckucil jogte soghuzul cupilfu sug dibviripu. Hawom dumzebva rostow bip vitawlu giwte ziwkan cu ujaaggaw in agesuse hedgi uwupasvo liwdihit orenol bufasakok dadin. Kasuwa va wugazi lemnafi faj ciuwoepu vijaeh wiflan zocacwad fesejoc kiwra ce.', 'adonisjs', 0, '2018-11-28 17:23:46', '2018-11-29 13:40:07'),
(9, 'Is cezonep utufagu.3', 'is-cezonep-utufagu.', 'Uli hijruf hikate ne etkadiw tef ruog ziaj budetobol paipa zodcu sas wep nadu jiv leturu jipnuluke lu uve hegze suz utohore ji culilore wehvin arhu suakob ba bi izo piwha nuuwedij jagdovwo katab ba susah mub kaikoha lorlol wivu iniwukru ba woblaj wagej 3', '<p>Kukasir na avu wuijago sijofu zolice rorpecde fa bi rozane zic ikiuwupef bas utgapar reme jeppoz. Izo gunuw fok ruca fowjimho enmej itcu lu pigu baewe zenpig un lu halic suvtucleb hurba. Asa nuzvefij zubeko um fikja lati zefupe tufwuwi ico osjeh mive der ojoko vejigwoh za kojowiko. Ke gik savavusa okwezre rare mez zuk vutul mawo sonu za oc doz sawges gonmaruh vukecug. Uh mo pud rozve op maw ci bapag gos worsa bizu ra lunih tor difujpu ore. Su attigbun erwitdij nu osacubod owosiaz weciag gofa hu ufofovnos jit atamehez tedfel re perwi.3</p>\r\n', 'laravel', 0, '2018-11-28 17:23:46', '2018-11-29 16:25:24');

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
(1, 'Lorem Ipsum1', 'lorem@ipsum1.com', 'Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1', 1, 1, '2018-11-28 17:23:46', '2018-11-29 17:58:34'),
(2, 'Lorem Ipsum2', 'lorem@ipsum2.com', 'Lorem Ipsum2 Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1', 1, 1, '2018-11-28 17:23:46', '2018-11-29 17:58:31'),
(3, 'Lorem Ipsum3', 'lorem@ipsum3.com', 'Lorem Ipsum3 Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1', 0, 2, '2018-11-28 17:23:46', '2018-11-29 17:58:32');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- Tablo için AUTO_INCREMENT değeri `kategorilers`
--
ALTER TABLE `kategorilers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `yazilars`
--
ALTER TABLE `yazilars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
