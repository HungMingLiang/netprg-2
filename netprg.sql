-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- 主機: localhost:3306
-- 產生時間： 2018 年 01 月 18 日 01:05
-- 伺服器版本: 10.2.12-MariaDB-10.2.12+maria~artful
-- PHP 版本： 7.1.11-0ubuntu0.17.10.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `netprg`
--

-- --------------------------------------------------------

--
-- 資料表結構 `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `history`
--

INSERT INTO `history` (`id`, `type`, `time`, `keyword`, `title`, `url`) VALUES
(55, 'jsonp', '2018-01-18 00:10:23', 'earth', NULL, 'https://farm5.staticflickr.com/4753/24872032957_f421d4270d.jpg'),
(56, 'html', '2018-01-18 00:10:37', 'cat', NULL, 'https://farm5.staticflickr.com/4741/25872496118_e4ba66fe28.jpg'),
(57, 'html', '2018-01-18 00:10:39', 'cat', NULL, 'https://farm5.staticflickr.com/4631/39713366442_89ba7acf32.jpg'),
(58, 'json', '2018-01-18 00:11:04', 'cat', NULL, 'https://farm5.staticflickr.com/4713/39744659931_fb03d19249.jpg'),
(59, 'json', '2018-01-18 00:11:07', 'cat', NULL, 'https://farm5.staticflickr.com/4746/39713463472_96fc6aac83.jpg'),
(60, 'json', '2018-01-18 00:11:11', 'cat', NULL, 'https://farm5.staticflickr.com/4704/39036001234_ae860283f9.jpg'),
(61, 'json', '2018-01-18 00:11:12', 'cat', NULL, 'https://farm5.staticflickr.com/4694/39035991024_eb6de48688.jpg'),
(62, 'json', '2018-01-18 00:11:13', 'cat', NULL, 'https://farm5.staticflickr.com/4714/27966300329_aaa59a0659.jpg'),
(63, 'jsonp', '2018-01-18 00:11:40', 'cat', NULL, 'https://farm5.staticflickr.com/4743/25873001838_f7c3389c9a.jpg'),
(64, 'jsonp', '2018-01-18 00:12:39', 'cat', NULL, 'https://farm5.staticflickr.com/4624/25873191118_7edfff50ed.jpg'),
(65, 'jsonp', '2018-01-18 00:12:41', 'cat', NULL, 'https://farm5.staticflickr.com/4660/24875404257_33fbb0bed2.jpg'),
(66, 'jsonp', '2018-01-18 00:12:42', 'cat', NULL, 'https://farm5.staticflickr.com/4670/38846706955_c304af0d04.jpg'),
(67, 'jsonp', '2018-01-18 00:12:43', 'cat', NULL, 'https://farm5.staticflickr.com/4653/24875611847_5ee7d9a54c.jpg'),
(68, 'jsonp', '2018-01-18 00:12:44', 'cat', NULL, 'https://farm5.staticflickr.com/4616/38846144395_b68819de2b.jpg'),
(69, 'jsonp', '2018-01-18 00:12:45', 'cat', NULL, 'https://farm5.staticflickr.com/4670/38846706955_c304af0d04.jpg'),
(70, 'jsonp', '2018-01-18 00:12:59', 'cat', NULL, 'https://farm5.staticflickr.com/4713/39712738862_bab84877e2.jpg'),
(71, 'jsonp', '2018-01-18 00:13:03', 'cat', NULL, 'https://farm5.staticflickr.com/4620/27966183559_de837f716c.jpg'),
(72, 'jsonp', '2018-01-18 00:13:04', 'cat', NULL, 'https://farm5.staticflickr.com/4710/39712737652_9d6ba433ec.jpg'),
(73, 'jsonp', '2018-01-18 00:13:06', 'cat', NULL, 'https://farm5.staticflickr.com/4746/39745005231_c315abee5d.jpg'),
(74, 'jsonp', '2018-01-18 00:15:33', 'cat', NULL, 'https://farm5.staticflickr.com/4612/39713296402_1d3e0b5cee.jpg'),
(75, 'jsonp', '2018-01-18 00:15:35', 'cat', NULL, 'https://farm5.staticflickr.com/4765/39035978534_e2925ee292.jpg'),
(76, 'jsonp', '2018-01-18 00:15:36', 'cat', NULL, 'https://farm5.staticflickr.com/4620/27966183559_de837f716c.jpg'),
(77, 'json', '2018-01-18 00:15:45', 'cat', NULL, 'https://farm5.staticflickr.com/4675/24875748197_08d082a81c.jpg'),
(78, 'json', '2018-01-18 00:15:47', 'cat', NULL, 'https://farm5.staticflickr.com/4615/39745068461_2b2c8d4d97.jpg'),
(79, 'json', '2018-01-18 00:15:48', 'cat', NULL, 'https://farm5.staticflickr.com/4616/38846837605_66993d1a4a.jpg'),
(80, 'json', '2018-01-18 00:15:48', 'cat', NULL, 'https://farm5.staticflickr.com/4740/39745061001_725db5b2c3.jpg'),
(81, 'json', '2018-01-18 00:15:49', 'cat', NULL, 'https://farm5.staticflickr.com/4700/27966357019_05800a278c.jpg'),
(82, 'json', '2018-01-18 00:15:49', 'cat', NULL, 'https://farm5.staticflickr.com/4608/39036114364_a2431df8a8.jpg'),
(83, 'json', '2018-01-18 00:15:50', 'cat', NULL, 'https://farm5.staticflickr.com/4753/39745070451_ca953115a0.jpg'),
(84, 'jsonp', '2018-01-18 00:15:57', 'cat', NULL, 'https://farm5.staticflickr.com/4675/24875748197_08d082a81c.jpg'),
(85, 'jsonp', '2018-01-18 00:17:40', 'earth', NULL, 'https://farm5.staticflickr.com/4627/24869137877_17ccc85e98.jpg'),
(86, 'jsonp', '2018-01-18 00:17:41', 'earth', NULL, 'https://farm5.staticflickr.com/4698/39032183154_36f342c936.jpg'),
(87, 'jsonp', '2018-01-18 00:17:42', 'earth', NULL, 'https://farm5.staticflickr.com/4650/39742219721_08cd2f496f.jpg'),
(88, 'jsonp', '2018-01-18 00:17:43', 'earth', NULL, 'https://farm5.staticflickr.com/4655/24872779917_942639e97d.jpg'),
(89, 'jsonp', '2018-01-18 00:17:52', 'earth', NULL, 'https://farm5.staticflickr.com/4625/39033255944_6f405e5ec5.jpg'),
(90, 'jsonp', '2018-01-18 00:17:54', 'earth', NULL, 'https://farm5.staticflickr.com/4606/39032445674_02c4112e95.jpg'),
(91, 'json', '2018-01-18 00:18:59', 'cat', NULL, 'https://farm5.staticflickr.com/4747/24875834487_3343101044.jpg'),
(92, 'jsonp', '2018-01-18 00:21:26', 'earth', NULL, 'https://farm5.staticflickr.com/4648/24875006207_6915af4f29.jpg'),
(93, 'jsonp', '2018-01-18 00:21:31', 'earth', NULL, 'https://farm5.staticflickr.com/4623/25869822668_16a34e4022.jpg'),
(94, 'jsonp', '2018-01-18 00:21:46', 'earth', NULL, 'https://farm5.staticflickr.com/4625/39033255944_6f405e5ec5.jpg'),
(95, 'jsonp', '2018-01-18 00:22:13', 'earth', NULL, 'https://farm5.staticflickr.com/4749/25870059988_4f0ba7e129.jpg'),
(96, 'jsonp', '2018-01-18 00:24:13', 'earth', NULL, 'https://farm5.staticflickr.com/4627/25868670218_7679ba79c2.jpg'),
(97, 'jsonp', '2018-01-18 00:24:34', 'earth', NULL, 'https://farm5.staticflickr.com/4753/38843362525_5c114c45e9.jpg'),
(98, 'jsonp', '2018-01-18 00:24:35', 'earth', NULL, 'https://farm5.staticflickr.com/4622/39710475322_f5aefecd9d.jpg'),
(99, 'jsonp', '2018-01-18 00:24:36', 'earth', NULL, 'https://farm5.staticflickr.com/4651/38844991205_5d9dac2bdb.jpg'),
(100, 'jsonp', '2018-01-18 00:24:49', 'earth', NULL, 'https://farm5.staticflickr.com/4721/39030084484_4fa73b7537.jpg'),
(101, 'jsonp', '2018-01-18 00:24:51', 'earth', NULL, 'https://farm5.staticflickr.com/4668/38841911335_ae93c3cfbe.jpg'),
(102, 'jsonp', '2018-01-18 00:24:51', 'earth', NULL, 'https://farm5.staticflickr.com/4750/39710874262_7ab98a582b.jpg'),
(103, 'jsonp', '2018-01-18 00:24:53', 'earth', NULL, 'https://farm5.staticflickr.com/4694/38841747385_020f7edba9.jpg'),
(104, 'jsonp', '2018-01-18 00:24:54', 'earth', NULL, 'https://farm5.staticflickr.com/4663/24870173407_90eab52159.jpg'),
(105, 'jsonp', '2018-01-18 00:25:06', 'earth', NULL, 'https://farm5.staticflickr.com/4609/25869950558_c4a4b88a81.jpg'),
(106, 'jsonp', '2018-01-18 00:25:11', 'earth', NULL, 'https://farm5.staticflickr.com/4704/25872254468_071a770929.jpg'),
(107, 'jsonp', '2018-01-18 00:25:12', 'earth', NULL, 'https://farm5.staticflickr.com/4706/39709318292_e6430c97e4.jpg'),
(108, 'jsonp', '2018-01-18 00:25:13', 'earth', NULL, 'https://farm5.staticflickr.com/4624/25867191098_ae0f7a725e.jpg'),
(109, 'jsonp', '2018-01-18 00:27:29', 'earth', NULL, 'https://farm5.staticflickr.com/4702/24873881857_db0eb6d8a1.jpg'),
(110, 'jsonp', '2018-01-18 00:27:34', 'earth', NULL, 'https://farm5.staticflickr.com/4703/27961543949_68440a2743.jpg'),
(111, 'jsonp', '2018-01-18 00:28:01', 'earth', NULL, 'https://farm5.staticflickr.com/4703/27961543949_68440a2743.jpg'),
(112, 'jsonp', '2018-01-18 00:28:45', 'earth', NULL, 'https://farm5.staticflickr.com/4694/38846903995_a3d3ff4a20.jpg'),
(113, 'jsonp', '2018-01-18 00:28:46', 'earth', NULL, 'https://farm5.staticflickr.com/4614/39741831861_13d4818d55.jpg'),
(114, 'jsonp', '2018-01-18 00:28:47', 'earth', NULL, 'https://farm5.staticflickr.com/4651/38844991205_5d9dac2bdb.jpg'),
(115, 'jsonp', '2018-01-18 00:28:47', 'earth', NULL, 'https://farm5.staticflickr.com/4655/24872779917_942639e97d.jpg'),
(116, 'jsonp', '2018-01-18 00:28:49', 'earth', NULL, 'https://farm5.staticflickr.com/4770/25870057938_ae1e0913a4.jpg'),
(117, 'jsonp', '2018-01-18 00:28:59', 'cat', NULL, 'https://farm5.staticflickr.com/4669/39036248444_123797e5b6.jpg'),
(118, 'jsonp', '2018-01-18 00:29:01', 'cat', NULL, 'https://farm5.staticflickr.com/4756/39745023211_49a6e9df12.jpg'),
(119, 'jsonp', '2018-01-18 00:29:02', 'cat', NULL, 'https://farm5.staticflickr.com/4632/39036231404_fab42383c1.jpg'),
(120, 'jsonp', '2018-01-18 00:29:41', 'cat', NULL, 'https://farm5.staticflickr.com/4615/39745068461_2b2c8d4d97.jpg'),
(121, 'jsonp', '2018-01-18 00:29:42', 'cat', NULL, 'https://farm5.staticflickr.com/4653/39713551532_006020fe43.jpg'),
(122, 'jsonp', '2018-01-18 00:29:44', 'cat', NULL, 'https://farm5.staticflickr.com/4721/39745020251_e6d459325b.jpg'),
(123, 'json', '2018-01-18 00:29:53', 'cat', NULL, 'https://farm5.staticflickr.com/4703/39036175924_480466978a.jpg'),
(124, 'jsonp', '2018-01-18 00:32:37', 'earth', NULL, 'https://farm5.staticflickr.com/4624/24870511877_38053e6db1.jpg'),
(125, 'jsonp', '2018-01-18 00:32:39', 'earth', NULL, 'https://farm5.staticflickr.com/4656/38845894715_2ff0d25be1.jpg'),
(126, 'json', '2018-01-18 00:32:47', 'cat', NULL, 'https://farm5.staticflickr.com/4753/39745070451_ca953115a0.jpg'),
(127, 'json', '2018-01-18 00:32:50', 'cat', NULL, 'https://farm5.staticflickr.com/4712/38846869485_81d8cc3b9d.jpg'),
(128, 'jsonp', '2018-01-18 00:33:22', 'earth', NULL, 'https://farm5.staticflickr.com/4748/39743601601_cc4e2fc832.jpg'),
(129, 'jsonp', '2018-01-18 00:33:24', 'earth', NULL, 'https://farm5.staticflickr.com/4753/24872032957_f421d4270d.jpg'),
(130, 'jsonp', '2018-01-18 00:33:38', 'earth', NULL, 'https://farm5.staticflickr.com/4619/38842559375_8541eca0b8.jpg'),
(131, 'jsonp', '2018-01-18 00:33:42', 'earth', NULL, 'https://farm5.staticflickr.com/4755/39712131372_4158569554.jpg'),
(132, 'jsonp', '2018-01-18 00:33:43', 'earth', NULL, 'https://farm5.staticflickr.com/4624/39710284152_8098f40588.jpg'),
(133, 'jsonp', '2018-01-18 00:33:44', 'earth', NULL, 'https://farm5.staticflickr.com/4663/24870173407_90eab52159.jpg'),
(134, 'html', '2018-01-18 00:51:21', 'sss', NULL, 'https://farm5.staticflickr.com/4652/39744189051_d4fc6e3fa7.jpg');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
