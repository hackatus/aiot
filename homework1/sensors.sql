-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 
-- 伺服器版本： 10.4.6-MariaDB
-- PHP 版本： 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `aiotdb`
--

-- --------------------------------------------------------

--
-- 資料表結構 `sensors`
--

CREATE TABLE `sensors` (
  `id` int(11) NOT NULL,
  `time` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `value` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `sensors`
--

INSERT INTO `sensors` (`id`, `time`, `value`) VALUES
(1, '2020-09-23 11:35:44', 111),
(2, '2020-09-23 11:24:57', 200),
(3, '2020-09-23 11:25:03', 300),
(4, '2020-09-23 11:31:15', 100),
(5, '2020-09-23 11:31:15', 100),
(6, '2020-09-23 11:31:15', 100),
(7, '2020-09-23 11:31:15', 100),
(8, '2020-09-23 11:31:15', 100),
(9, '2020-09-23 11:31:15', 100),
(10, '2020-09-23 11:31:15', 100),
(11, '2020-09-23 11:31:15', 100),
(12, '2020-09-23 11:31:15', 100),
(13, '2020-09-23 11:31:15', 100),
(14, '2020-09-23 11:31:15', 100),
(15, '2020-09-23 11:31:15', 100),
(16, '2020-09-23 11:31:15', 100),
(17, '2020-09-23 11:31:15', 100),
(18, '2020-09-23 11:31:15', 100),
(19, '2020-09-23 11:31:15', 100),
(20, '2020-09-23 11:31:16', 100),
(21, '2020-09-23 11:31:16', 100),
(22, '2020-09-23 11:31:16', 100),
(23, '2020-09-23 11:31:16', 100),
(24, '2020-09-23 11:31:16', 100),
(25, '2020-09-23 11:31:16', 100),
(26, '2020-09-23 11:32:31', 358),
(27, '2020-09-23 11:32:31', 556),
(28, '2020-09-23 11:32:31', 684),
(29, '2020-09-23 11:32:31', 728),
(30, '2020-09-23 11:32:31', 567),
(31, '2020-09-23 11:32:31', 648),
(32, '2020-09-23 11:32:31', 517),
(33, '2020-09-23 11:32:31', 640),
(34, '2020-09-23 11:32:31', 628),
(35, '2020-09-23 11:32:31', 195),
(36, '2020-09-23 11:32:31', 114),
(37, '2020-09-23 11:32:31', 1007),
(38, '2020-09-23 11:32:31', 601),
(39, '2020-09-23 11:32:31', 1006),
(40, '2020-09-23 11:32:31', 158),
(41, '2020-09-23 11:32:31', 843);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `sensors`
--
ALTER TABLE `sensors`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `sensors`
--
ALTER TABLE `sensors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
