-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生時間： 2017 年 07 月 14 日 13:14
-- 伺服器版本: 5.7.18-0ubuntu0.16.04.1
-- PHP 版本： 7.0.18-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `Meeting`
--

-- --------------------------------------------------------

--
-- 資料表結構 `Notes`
--

CREATE TABLE `Notes` (
  `process_id` int(11) NOT NULL,
  `record_date` date NOT NULL COMMENT '記錄日期',
  `sponsor` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '記錄者',
  `source` varchar(800) COLLATE utf8_bin NOT NULL COMMENT '列管事項 來源',
  `grade` varchar(3) COLLATE utf8_bin NOT NULL,
  `discuss_matter` varchar(3000) COLLATE utf8_bin NOT NULL COMMENT '討論事項',
  `presentation` varchar(3000) COLLATE utf8_bin NOT NULL COMMENT '決議',
  `reference` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '參考',
  `upload` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '上傳路徑'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 資料表的匯出資料 `Notes`
--

INSERT INTO `Notes` (`process_id`, `record_date`, `sponsor`, `source`, `grade`, `discuss_matter`, `presentation`, `reference`, `upload`) VALUES
(1, '2017-07-12', '林彥亨', '106年第3次工作會議 106/5/9(二)', 'B01', '建請教育部協助協調縣市政府，將初階認證線上審查作業規劃，訂於6/1後進行，提請討論。', '一、 精緻網須於各縣市完成初階認證審查人員培訓前，完成初階認證審查功能介面。', 'xx', 'gg'),
(2, '2017-07-13', '林彥亨', '106年第3次工作會議 106/5/9(二)', 'B01', '建請教育部協助協調縣市政府，將初階認證線上審查作業規劃，訂於6/1後進行，提請討論。', '一、 精緻網須於各縣市完成初階認證審查人員培訓前，完成初階認證審查功能介面。', 'xx', 'gg'),
(14, '2017-07-13', '林彥亨', '106年第3次工作會議 106/5/9(二)', 'B01', '建請教育部協助協調縣市政府，將初階認證線上審查作業規劃，訂於6/1後進行，提請討論。', '一、 精緻網須於各縣市完成初階認證審查人員培訓前，完成初階認證審查功能介面。', 'xx', 'gg'),
(15, '2017-07-13', '林彥亨', '106年第3次工作會議 106/5/9(二)', 'B01', '建請教育部協助協調縣市政府，將初階認證線上審查作業規劃，訂於6/1後進行，提請討論。', '一、 精緻網須於各縣市完成初階認證審查人員培訓前，完成初階認證審查功能介面。', 'xx', 'gg');

-- --------------------------------------------------------

--
-- 資料表結構 `Process`
--

CREATE TABLE `Process` (
  `id` int(11) NOT NULL,
  `process_id` int(11) NOT NULL,
  `reply_date` date NOT NULL,
  `sponsor` varchar(16) COLLATE utf8_bin NOT NULL,
  `status` varchar(3000) COLLATE utf8_bin NOT NULL,
  `presestation` varchar(30) COLLATE utf8_bin NOT NULL,
  `reference` varchar(200) COLLATE utf8_bin NOT NULL,
  `upload` varchar(200) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 資料表的匯出資料 `Process`
--

INSERT INTO `Process` (`id`, `process_id`, `reply_date`, `sponsor`, `status`, `presestation`, `reference`, `upload`) VALUES
(1, 2, '2017-07-04', '', '', '', '', ''),
(2, 2, '2017-07-13', '林彥亨', '111', 'A1', 'xxx', 'ooo'),
(3, 2, '2017-07-13', '林彥亨', '111', 'A1', 'ooo', 'ggg');

-- --------------------------------------------------------

--
-- 資料表結構 `User`
--

CREATE TABLE `User` (
  `id` int(11) NOT NULL,
  `user` varchar(32) COLLATE utf8_bin NOT NULL,
  `passwd` varchar(32) COLLATE utf8_bin NOT NULL,
  `ChineseName` varchar(32) COLLATE utf8_bin NOT NULL,
  `email` varchar(60) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 資料表的匯出資料 `User`
--

INSERT INTO `User` (`id`, `user`, `passwd`, `ChineseName`, `email`) VALUES
(1, 'Peter', 'qwerty', '彼得', 'Peter@gmail.com'),
(2, 'Peter', 'qwerty', '彼得', 'Peter@gmail.com'),
(3, 'Peter', 'qwerty', '彼得', 'Peter@gmail.com'),
(4, 'Peter', 'qwerty', '彼得', 'Peter@gmail.com');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `Notes`
--
ALTER TABLE `Notes`
  ADD PRIMARY KEY (`process_id`),
  ADD UNIQUE KEY `id` (`process_id`);

--
-- 資料表索引 `Process`
--
ALTER TABLE `Process`
  ADD PRIMARY KEY (`id`),
  ADD KEY `process_id` (`process_id`) USING BTREE;

--
-- 資料表索引 `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `Notes`
--
ALTER TABLE `Notes`
  MODIFY `process_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- 使用資料表 AUTO_INCREMENT `Process`
--
ALTER TABLE `Process`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用資料表 AUTO_INCREMENT `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 已匯出資料表的限制(Constraint)
--

--
-- 資料表的 Constraints `Process`
--
ALTER TABLE `Process`
  ADD CONSTRAINT `process_fk` FOREIGN KEY (`process_id`) REFERENCES `Notes` (`process_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
