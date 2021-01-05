-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2019 at 01:36 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `repertoar`
--

-- --------------------------------------------------------

--
-- Table structure for table `filmovi`
--

CREATE TABLE `filmovi` (
  `id` int(5) NOT NULL,
  `ime` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slika_h` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slika_v` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `godina` int(4) NOT NULL,
  `zanr` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cena` int(3) NOT NULL,
  `opis` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imdb` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lajkovi` int(10) NOT NULL,
  `slika_slajder` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `datum_od` date NOT NULL,
  `datum_do` date NOT NULL,
  `cas` time NOT NULL,
  `prvslajd` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `filmovi`
--

INSERT INTO `filmovi` (`id`, `ime`, `slika_h`, `slika_v`, `godina`, `zanr`, `cena`, `opis`, `imdb`, `lajkovi`, `slika_slajder`, `datum_od`, `datum_do`, `cas`, `prvslajd`) VALUES
(1, 'Капетанка <span class=\"b\">Марвел</span>', 'https://i.imgur.com/9ic58E8.jpg', 'https://i.imgur.com/2nH6Ehz.jpg', 2019, 'Акција, Авантура', 200, 'Капетанка Марвел од студиото на Марвел е сосема нова авантура, од до сега неоткриената историја на филмскиот универзум на Марвел која ја следи Керол Денверс на патот да стане една од најмоќните херои во универзумот. Во време кога војната меѓу два вида на вонземјани ја зафаќа и Земјата, Денверс и мала група нејзини сојузници ќе се најдат во средиштето на конфликтот.', 'tt4154664', 34, 'https://i.imgur.com/21m61f2.jpg', '2019-04-03', '2019-05-05', '20:00:00', ''),
(2, '<span class=\"b\">Алита</span>', 'https://i.imgur.com/TiGV1EV.jpg', 'https://i.imgur.com/t0YQwv0.jpg', 2019, 'Акција, Фантазија', 200, 'Додека Алита се прилагодува на новиот живот во Ајрон Сити, Ајдо сѐ обидува да ја заштити од нејзиното мистериозно минато, а нејзиниот нов другар Хуго (Киан Џонсон) се обидува да и ги врати сеќавањата. Но, кога смртоносните и корумпирани сили кои го водат градот ја напаѓаат Алита, таа ја дознава вистината за своето минато, таа поседува борбени вештини кои моќниците ќе се обидат да ги контролираат по секоја цена. Доколку успее да остане надвор од нивниот дофат, таа може да биде клучот за спасување на нејзините пријатели, семејство и светот во кој е израсната.', 'tt0437086', 48, 'https://i.imgur.com/HstcjlR.jpg', '2019-04-25', '2019-05-30', '21:00:00', ''),
(3, 'Црниот <span class=\"b\">Пантер</span>', 'https://i.imgur.com/e1ssMjI.jpg', 'https://i.imgur.com/VU74ezM.jpg', 2018, 'Акција, Авантура', 200, 'По настаните од „Капетан Америка: Граѓанска војна“, кралот ТЧала се враќа дома во изолираната и технолошки напредна африканска нација Ваканда за да служи како нов лидер на неговата земја. Сепак, ТЧала наскоро дознава дека е предизвикан на борба за тронот од одредени фракции во неговата сопствена земја, односно за да ја оттргнат Ваканда од граѓанска војна.', 'tt1825683', 10, 'https://i.imgur.com/5hp1ooj.jpg', '2019-04-05', '2019-05-31', '22:00:00', ''),
(4, 'Дедпул <span class=\"b\">2</span>', 'https://i.imgur.com/qye4anS.jpg', 'https://i.imgur.com/qHWN8DG.jpg', 2018, 'Акција, Авантура', 150, 'По преживеаниот фатален напад од говеда, унаказениот шеф на кафитеријата (Вејд Вилсон) се труди да го оствари својот сон и да стане најзгодниот шанкер во Мејбери, а истовремено мора да научи да живее со изгубеното сетило за вкус.', 'tt5463162', 4, 'https://i.imgur.com/v73TM52.jpg', '2019-05-01', '2019-05-09', '19:30:00', ''),
(5, '<span class=\"b\">Дамбо</span>', 'https://i.imgur.com/vh1wcLO.jpg', 'https://i.imgur.com/0IypCzh.jpg', 2019, 'Семеен, Фантазија', 100, 'Сопственикот на циркусот ја ангажира поранешната звезда Холт Фариер и нговите деца да се грижат за новороденото слонче, чии огромни уши го прават предмет на исмејување во циркусот кој веќе и се бори за опстанок. Но, кога тие ќе откријат дека Дамбо може да лета, циркусот се враќа на големи врати и го привлекува големиот убедлив претприемач Вендевер.', 'tt3861390', 3, '', '2019-03-02', '2019-06-02', '17:00:00', ''),
(6, '<span class=\"b\">Хелбој</span>', 'https://i.imgur.com/idcqjf9.jpg', 'https://i.imgur.com/jpByRDh.jpg', 2019, 'Акција, Фантазија', 250, 'Базиран на графичките новели од Мајк Мињола, Хелбој, растргнат меѓу светот на натприродното и човечкото, се бори со античка волшебничка која е одмазднички настроена.', 'tt2274648', 33, 'https://i.imgur.com/XKqkZC8.jpg', '2019-04-19', '2019-05-27', '23:00:00', ''),
(7, '<span class=\"b\">Шазам!</span>', 'https://i.imgur.com/QiIAMtJ.jpg', 'https://i.imgur.com/zTNF8Q1.jpg', 2019, 'Акција, Фантазија', 200, 'Сите имаме суперхерој во нас, само потребно е малку магија да го разбудиме суперхеројот. Во случајот на 14-годишниот Били Бетсон, овој суперхерој излегува кога Били ќе се развика ШАЗАМ! на цел глас и се претвора во возрасниот суперхерој Шазам.', 'tt0448115', 40, '', '2019-04-18', '2019-05-16', '21:00:00', ''),
(8, 'Чудесен <span class=\"b\">Парк</span>', 'https://i.imgur.com/q9QBKuX.jpg', 'https://i.imgur.com/U7xPza5.jpg', 2019, 'Анимиран, Авантура', 100, 'Талентирано осум годишно девојче во својата фантазија дизајнира величествен забавен парк, а потоа открива дека он станал стварност. Но, кога нејзиниот сакан парк ќе се најде во опасност, само она со неколку свои посебни пријатели со помош на нејзината бујна фантазија ќе можат да го спасат.', 'tt6428676', 5, '', '2019-04-26', '2019-04-30', '18:00:00', ''),
(9, 'Житието на <span class=\"b\">Брајан</span>', 'https://i.imgur.com/uhpdaQK.jpg', 'https://i.imgur.com/1BhH18d.jpg', 1979, 'Комедија', 150, 'По 40 години, филмот Житието на Брајан се враќа на големото филмско платно. Овој јубилеј го прославуваме со повторно прикажување на филмот, во ремастерирана верзија.', 'tt0079470', 0, '', '2019-05-24', '2019-06-12', '20:00:00', ''),
(10, '<span class=\"b\">Ние</span>', 'https://i.imgur.com/8MzHthL.jpg', 'https://i.imgur.com/0rKmqF3.jpg', 2019, 'Трилер, Хорор', 200, 'По бранувањето на современата култура и поставувањето нов стандард за провокативни, социјално-свесни хорор филмови со своето режисерско деби, БЕГАЈ, оскаровецот и визионер Џордан Пил се враќа со нов оригинален кошмар кој тој го напиша, го режираше и го продуцираше.', 'tt6857112', 0, '', '2019-04-02', '2019-04-26', '00:00:00', ''),
(11, 'Среќен како <span class=\"b\">Лазаро</span>', 'https://i.imgur.com/pnX5nWk.jpg', 'https://i.imgur.com/4shGble.jpg', 2018, 'Драма', 200, 'Ова е приказна за средбата на Лазаро, младо моче кое поради својата добрина често е погрешно сватен, и Танкреди, млад благородник со бујна фантазија.', 'tt6752992', 0, '', '2019-02-21', '2019-03-14', '19:00:00', ''),
(12, 'Скитникот од <span class=\"b\">плажата</span>', 'https://i.imgur.com/nawgL6i.jpg', 'https://i.imgur.com/Qy2M1a4.jpg', 2019, 'Комедија', 150, 'Приказната ги следи постојаните невољи ма Мундог (Метју Меконахи), бунтовничкиот скитник кој живее по сопствени правила. Од режисерот на филмот Бунтовници, Хармони Корин пристигнува „Скитникот од Плажата“ – освежувачки оригинална комедија во која играат: Снуп Дог, Зак Ефрон, Ила Фишер и други.', 'tt6511932', 0, '', '2019-04-02', '2019-04-20', '17:00:00', ''),
(13, '<span class=\"b\">Пеперутка</span>', 'https://i.imgur.com/hXZ6HlM.jpg', 'https://i.imgur.com/xmTiEVt.jpg', 2017, 'Драма', 300, 'Во гламурозниот свет на Париз 1931, крадецот на сефови Хенри \"Пеперутка\", краде мало богатство дијаманти за локалнот гангстер Кастиљ. Во суштина филмот е преработка на култниот „Papillon“ од 1973 ', 'tt5093026', 24, 'https://i.imgur.com/JCv3G1g.jpg', '2019-02-05', '2019-06-05', '15:00:00', ''),
(14, '<span class=\"b\">Џулиет,</span> Искрено', 'https://i.imgur.com/Sm33R8F.jpg', 'https://i.imgur.com/yxJ9aYD.jpg', 2018, 'Комедија, Романтичен', 150, 'Романтична комедија која пристига од Холивуд, кадешто Ени е заглавена во долгогодишна врска со Данкан, кој во меѓувреме е навистина опседнат со рокерот Такер Кроу.', 'tt5607096', 0, 'https://i.imgur.com/aVK5Fnc.jpg', '2019-03-05', '2019-05-08', '14:00:00', ''),
(15, '<span class=\"b\">Стакло</span>', 'https://i.imgur.com/030YkxO.jpg', 'https://i.imgur.com/V5Ngtp6.jpg', 2019, 'Мистерија', 200, 'Чуварот Дејвид Дан ги користи своите натприродни способности да го следи Кевин Вендел Крамб, непредвидлив човек кој има дваесет и четири личности', 'tt6823368', 2, 'https://i.imgur.com/ZeLiiuA.jpg', '2019-04-02', '2019-04-24', '15:00:00', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE `korisnici` (
  `id` int(1) NOT NULL,
  `ime` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `korisnik` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lozinka` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`id`, `ime`, `korisnik`, `lozinka`) VALUES
(1, 'Кристијан', 'kristijan', 'najdovski'),
(5, 'Администратор', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `filmovi`
--
ALTER TABLE `filmovi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `filmovi`
--
ALTER TABLE `filmovi`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `korisnici`
--
ALTER TABLE `korisnici`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
