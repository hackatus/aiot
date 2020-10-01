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
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `value` int(11) NOT NULL,
  `temp` float NOT NULL,
  `humi` float NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `sensors`
--

INSERT INTO `sensors` (`id`, `time`, `value`, `temp`, `humi`, `status`) VALUES
(1, '2020-09-30 11:29:52', 417, 565.191, 294.93, 0),
(2, '2020-09-30 11:29:52', 994, 738.424, 23.6902, 1),
(3, '2020-09-30 11:29:52', 977, 672.588, 170.85, 1),
(4, '2020-09-30 11:29:52', 904, 901.478, 682.741, 1),
(5, '2020-09-30 11:29:52', 790, 775.465, 341.299, 1),
(6, '2020-09-30 11:29:52', 445, 452.858, 763.55, 0),
(7, '2020-09-30 11:29:52', 502, 357.56, 252.554, 0),
(8, '2020-09-30 11:29:52', 220, 969.55, 778.617, 0),
(9, '2020-09-30 11:29:52', 54, 489.48, 608.55, 1),
(10, '2020-09-30 11:29:52', 623, 270.033, 664.593, 0),
(11, '2020-09-30 11:29:52', 544, 749.453, 662.97, 1),
(12, '2020-09-30 11:29:52', 122, 693.799, 566.631, 1),
(13, '2020-09-30 11:29:52', 819, 115.189, 653.975, 0),
(14, '2020-09-30 11:29:52', 954, 720.23, 416.404, 1),
(15, '2020-09-30 11:29:52', 994, 140.586, 854.533, 1),
(16, '2020-09-30 11:29:52', 881, 122.336, 376.235, 1),
(17, '2020-09-30 11:29:52', 535, 877.922, 831.34, 0),
(18, '2020-09-30 11:29:52', 598, 401.898, 674.514, 0),
(19, '2020-09-30 11:29:52', 200, 179.449, 19.8278, 1),
(20, '2020-09-30 11:29:52', 587, 325.222, 165.302, 1),
(21, '2020-09-30 11:29:52', 894, 759.883, 92.4476, 1),
(22, '2020-09-30 11:29:52', 241, 824.999, 320.088, 1),
(23, '2020-09-30 11:29:52', 188, 240.23, 302.024, 1),
(24, '2020-09-30 11:29:52', 825, 213.787, 667.233, 0),
(25, '2020-09-30 11:29:52', 726, 622.467, 396.959, 1),
(26, '2020-09-30 11:29:52', 165, 605.384, 111.166, 1),
(27, '2020-09-30 11:29:52', 800, 554.897, 976.283, 1),
(28, '2020-09-30 11:29:52', 262, 1005.61, 860.648, 0),
(29, '2020-09-30 11:29:52', 365, 969.603, 123.449, 0),
(30, '2020-09-30 11:29:52', 560, 360.332, 163.088, 0),
(31, '2020-09-30 11:29:52', 186, 159.372, 757.969, 0),
(32, '2020-09-30 11:29:52', 330, 752.656, 652.788, 0),
(33, '2020-09-30 11:29:52', 60, 515.955, 510.982, 0),
(34, '2020-09-30 11:29:52', 44, 295.318, 390.963, 1),
(35, '2020-09-30 11:29:52', 92, 109.833, 710.617, 0),
(36, '2020-09-30 11:29:52', 237, 439.866, 73.6909, 0),
(37, '2020-09-30 11:29:52', 82, 665.508, 715.99, 0),
(38, '2020-09-30 11:29:52', 645, 127.996, 615.585, 0),
(39, '2020-09-30 11:29:52', 719, 236.373, 150.381, 1),
(40, '2020-09-30 11:29:52', 61, 52.4288, 718.35, 1),
(41, '2020-09-30 11:29:52', 448, 884.828, 213.322, 0),
(42, '2020-09-30 11:29:52', 485, 241.308, 983.06, 1),
(43, '2020-09-30 11:29:52', 213, 857.739, 910.581, 0),
(44, '2020-09-30 11:29:52', 41, 226.552, 701.467, 0),
(45, '2020-09-30 11:29:52', 863, 38.3411, 846.246, 0),
(46, '2020-09-30 11:32:32', 99, 1013.76, 990, 0),
(47, '2020-09-30 11:32:32', 99, 1013.76, 990, 0),
(48, '2020-09-30 11:32:32', 99, 1013.76, 990, 0),
(49, '2020-09-30 11:32:32', 99, 1013.76, 990, 0),
(50, '2020-09-30 11:32:32', 99, 1013.76, 990, 0),
(51, '2020-09-30 11:29:58', 99, 99, 99, 0),
(52, '2020-09-30 11:31:05', 99, 99, 99, 0),
(53, '2020-09-30 11:34:16', 915, 499, 399, 0),
(54, '2020-09-30 12:21:53', 0, 26, 18, 0),
(55, '2020-09-30 12:21:58', 1, 25, 18, 0),
(56, '2020-09-30 12:22:04', 0, 26, 18, 0),
(57, '2020-09-30 12:22:11', 1, 25, 18, 0),
(58, '2020-09-30 12:22:19', 0, 26, 18, 0),
(59, '2020-09-30 12:22:25', 0, 26, 18, 0),
(60, '2020-09-30 12:22:30', 0, 26, 18, 0),
(61, '2020-09-30 12:22:35', 0, 26, 18, 0),
(62, '2020-09-30 12:22:41', 1, 26, 18, 0),
(63, '2020-09-30 12:22:46', 0, 26, 18, 0),
(64, '2020-09-30 12:22:53', 0, 26, 18, 0),
(65, '2020-09-30 12:22:59', 1, 26, 18, 0),
(66, '2020-09-30 12:23:04', 1, 26, 18, 0),
(67, '2020-09-30 12:23:09', 0, 26, 18, 0),
(68, '2020-09-30 12:23:16', 0, 26, 18, 0),
(69, '2020-09-30 12:23:22', 1, 26, 18, 0),
(70, '2020-09-30 12:23:27', 1, 26, 18, 0),
(71, '2020-09-30 12:23:32', 0, 26, 18, 0),
(72, '2020-09-30 12:23:38', 0, 26, 18, 0),
(73, '2020-09-30 12:23:43', 0, 26, 18, 0),
(74, '2020-09-30 12:23:49', 0, 26, 18, 0),
(75, '2020-09-30 12:23:54', 1, 26, 18, 0),
(76, '2020-09-30 12:23:59', 1, 26, 18, 0),
(77, '2020-09-30 12:24:06', 1, 26, 18, 0),
(78, '2020-09-30 12:24:12', 0, 26, 18, 0),
(79, '2020-09-30 12:24:17', 0, 26, 18, 0),
(80, '2020-09-30 12:24:22', 0, 26, 18, 0),
(81, '2020-09-30 12:24:28', 1, 26, 18, 0),
(82, '2020-09-30 12:24:33', 0, 26, 18, 0),
(83, '2020-09-30 12:24:38', 0, 26, 18, 0),
(84, '2020-09-30 12:24:44', 1, 26, 18, 0),
(85, '2020-09-30 12:24:49', 1, 26, 18, 0),
(86, '2020-09-30 12:24:54', 0, 26, 18, 0),
(87, '2020-09-30 12:25:00', 0, 26, 18, 0),
(88, '2020-09-30 12:25:05', 1, 26, 18, 0),
(89, '2020-09-30 12:25:10', 0, 26, 18, 0),
(90, '2020-09-30 12:25:18', 1, 26, 18, 0),
(91, '2020-09-30 12:25:23', 0, 26, 18, 0),
(92, '2020-09-30 12:25:28', 1, 26, 18, 0),
(93, '2020-09-30 12:25:34', 1, 26, 18, 0),
(94, '2020-09-30 12:25:39', 1, 26, 18, 0),
(95, '2020-09-30 12:25:44', 0, 26, 18, 0),
(96, '2020-09-30 12:25:50', 0, 26, 18, 0),
(97, '2020-09-30 12:25:55', 0, 26, 18, 0),
(98, '2020-09-30 12:26:00', 1, 26, 18, 0),
(99, '2020-09-30 12:26:08', 0, 26, 18, 0),
(100, '2020-09-30 12:26:13', 1, 26, 18, 0),
(101, '2020-09-30 12:26:24', 1, 27, 17, 0),
(102, '2020-09-30 12:26:30', 0, 27, 17, 0),
(103, '2020-09-30 12:26:37', 1, 27, 17, 0),
(104, '2020-09-30 12:26:42', 0, 27, 17, 0),
(105, '2020-09-30 12:26:56', 0, 27, 17, 0),
(106, '2020-09-30 12:26:57', 0, 27, 17, 0),
(107, '2020-09-30 12:26:59', 1, 27, 17, 0),
(108, '2020-09-30 12:27:04', 0, 27, 17, 0),
(109, '2020-09-30 12:27:09', 0, 27, 41, 0),
(110, '2020-09-30 12:27:17', 1, 27, 17, 0),
(111, '2020-09-30 12:27:25', 1, 27, 17, 0),
(112, '2020-09-30 12:27:28', 1, 27, 17, 0),
(113, '2020-09-30 12:27:35', 1, 27, 17, 0),
(114, '2020-09-30 12:27:39', 1, 27, 17, 0),
(115, '2020-09-30 12:27:44', 1, 27, 17, 0),
(116, '2020-09-30 12:27:49', 0, 27, 17, 0),
(117, '2020-09-30 12:27:54', 0, 27, 17, 0),
(118, '2020-09-30 12:28:03', 0, 27, 17, 0),
(119, '2020-09-30 12:28:08', 1, 27, 17, 0),
(120, '2020-09-30 12:28:13', 0, 27, 17, 0),
(121, '2020-09-30 12:28:21', 0, 27, 17, 0),
(122, '2020-09-30 12:28:27', 1, 27, 17, 0),
(123, '2020-09-30 12:28:32', 0, 27, 17, 0),
(124, '2020-09-30 12:28:38', 0, 27, 17, 0),
(125, '2020-09-30 12:28:43', 1, 27, 17, 0),
(126, '2020-09-30 12:28:48', 1, 27, 17, 0),
(127, '2020-09-30 12:28:53', 1, 27, 17, 0),
(128, '2020-09-30 12:28:59', 0, 27, 17, 0),
(129, '2020-09-30 12:29:04', 1, 27, 17, 0),
(130, '2020-09-30 12:29:11', 0, 27, 17, 0),
(131, '2020-09-30 12:29:17', 1, 27, 17, 0),
(132, '2020-09-30 12:29:22', 1, 27, 17, 0),
(133, '2020-09-30 12:29:27', 0, 27, 17, 0),
(134, '2020-09-30 12:29:36', 0, 27, 17, 0),
(135, '2020-09-30 12:29:41', 0, 27, 17, 0),
(136, '2020-09-30 12:29:48', 0, 27, 17, 0),
(137, '2020-09-30 12:29:53', 1, 27, 17, 0),
(138, '2020-09-30 12:29:59', 1, 27, 17, 0),
(139, '2020-09-30 12:30:06', 0, 27, 17, 0),
(140, '2020-09-30 12:30:11', 1, 27, 17, 0),
(141, '2020-09-30 12:30:17', 1, 27, 17, 0),
(142, '2020-09-30 12:30:22', 0, 27, 17, 0),
(143, '2020-09-30 12:30:27', 1, 27, 17, 0),
(144, '2020-09-30 12:30:33', 1, 27, 17, 0),
(145, '2020-09-30 12:30:38', 1, 27, 17, 0),
(146, '2020-09-30 12:30:43', 1, 27, 17, 0),
(147, '2020-09-30 12:30:51', 1, 27, 17, 0),
(148, '2020-09-30 12:30:56', 1, 27, 17, 0),
(149, '2020-09-30 12:31:03', 1, 27, 17, 0),
(150, '2020-09-30 12:31:09', 0, 27, 17, 0),
(151, '2020-09-30 12:31:14', 1, 27, 17, 0),
(152, '2020-09-30 12:31:19', 0, 27, 17, 0),
(153, '2020-09-30 12:31:25', 1, 27, 17, 0),
(154, '2020-09-30 12:31:30', 1, 27, 17, 0),
(155, '2020-09-30 12:31:37', 1, 27, 17, 0),
(156, '2020-09-30 12:31:42', 0, 27, 17, 0),
(157, '2020-09-30 12:31:48', 0, 27, 17, 0),
(158, '2020-09-30 12:31:53', 1, 27, 17, 0),
(159, '2020-09-30 12:31:58', 1, 27, 17, 0),
(160, '2020-09-30 12:32:04', 0, 27, 17, 0),
(161, '2020-09-30 12:32:11', 1, 27, 17, 0),
(162, '2020-09-30 12:32:16', 0, 27, 17, 0),
(163, '2020-09-30 12:32:22', 1, 27, 17, 0),
(164, '2020-09-30 12:32:27', 0, 27, 17, 0),
(165, '2020-09-30 12:32:32', 1, 27, 17, 0),
(166, '2020-09-30 12:32:38', 1, 27, 17, 0),
(167, '2020-09-30 12:32:43', 1, 27, 17, 0),
(168, '2020-09-30 12:32:48', 0, 27, 17, 0),
(169, '2020-09-30 12:32:54', 1, 27, 17, 0),
(170, '2020-09-30 12:32:59', 0, 27, 17, 0),
(171, '2020-09-30 12:33:04', 0, 27, 17, 0),
(172, '2020-09-30 12:33:10', 1, 27, 17, 0),
(173, '2020-09-30 12:33:15', 0, 27, 17, 0),
(174, '2020-09-30 12:33:20', 0, 27, 17, 0),
(175, '2020-09-30 12:33:28', 0, 27, 17, 0),
(176, '2020-09-30 12:33:33', 0, 27, 17, 0),
(177, '2020-09-30 12:33:38', 0, 27, 17, 0),
(178, '2020-09-30 12:33:43', 0, 27, 17, 0),
(179, '2020-09-30 12:33:51', 0, 27, 17, 0),
(180, '2020-09-30 12:33:56', 0, 27, 17, 0),
(181, '2020-09-30 12:34:01', 0, 27, 17, 0),
(182, '2020-09-30 12:34:09', 1, 27, 17, 0),
(183, '2020-09-30 12:34:14', 0, 27, 17, 0),
(184, '2020-09-30 12:34:19', 0, 27, 17, 0),
(185, '2020-09-30 12:34:25', 0, 27, 17, 0),
(186, '2020-09-30 12:34:30', 1, 27, 17, 0),
(187, '2020-09-30 12:34:35', 0, 27, 17, 0),
(188, '2020-09-30 12:34:41', 1, 27, 17, 0),
(189, '2020-09-30 12:34:46', 1, 27, 17, 0),
(190, '2020-09-30 12:34:51', 0, 27, 17, 0),
(191, '2020-09-30 12:34:57', 0, 27, 17, 0),
(192, '2020-09-30 12:35:02', 1, 27, 17, 0),
(193, '2020-09-30 12:35:07', 0, 27, 17, 0),
(194, '2020-09-30 12:35:12', 1, 27, 17, 0),
(195, '2020-09-30 12:35:18', 0, 27, 17, 0),
(196, '2020-09-30 12:35:23', 0, 27, 17, 0),
(197, '2020-09-30 12:35:28', 0, 27, 17, 0),
(198, '2020-09-30 12:35:36', 1, 27, 17, 0),
(199, '2020-09-30 12:35:41', 0, 27, 17, 0),
(200, '2020-09-30 12:35:46', 1, 27, 17, 0),
(201, '2020-09-30 12:35:52', 1, 27, 17, 0),
(202, '2020-09-30 12:35:57', 0, 27, 17, 0),
(203, '2020-09-30 12:36:02', 0, 27, 17, 0),
(204, '2020-09-30 12:36:08', 0, 27, 17, 0),
(205, '2020-09-30 12:36:13', 1, 27, 17, 0),
(206, '2020-09-30 12:36:18', 0, 27, 17, 0),
(207, '2020-09-30 12:36:24', 0, 27, 17, 0),
(208, '2020-09-30 12:36:29', 0, 27, 17, 0),
(209, '2020-09-30 12:36:34', 0, 27, 17, 0),
(210, '2020-09-30 12:36:40', 1, 27, 17, 0),
(211, '2020-09-30 12:36:45', 1, 27, 17, 0),
(212, '2020-09-30 12:36:52', 1, 27, 17, 0),
(213, '2020-09-30 12:36:57', 1, 27, 17, 0),
(214, '2020-09-30 12:37:03', 1, 27, 17, 0),
(215, '2020-09-30 12:37:08', 1, 27, 17, 0),
(216, '2020-09-30 12:37:15', 0, 27, 17, 0),
(217, '2020-09-30 12:37:21', 0, 27, 17, 0),
(218, '2020-09-30 12:37:26', 1, 27, 17, 0),
(219, '2020-09-30 12:37:36', 1, 27, 17, 0),
(220, '2020-09-30 12:37:44', 1, 27, 17, 0),
(221, '2020-09-30 12:37:49', 0, 27, 17, 0),
(222, '2020-09-30 12:37:54', 0, 27, 17, 0),
(223, '2020-09-30 12:38:00', 1, 27, 17, 0),
(224, '2020-09-30 12:38:05', 0, 27, 17, 0),
(225, '2020-09-30 12:38:12', 1, 27, 17, 0),
(226, '2020-09-30 12:38:17', 0, 27, 17, 0),
(227, '2020-09-30 12:38:23', 0, 27, 17, 0),
(228, '2020-09-30 12:38:28', 0, 27, 17, 0),
(229, '2020-09-30 12:38:35', 1, 27, 17, 0),
(230, '2020-09-30 12:38:41', 1, 27, 17, 0),
(231, '2020-09-30 12:38:48', 1, 27, 17, 0),
(232, '2020-09-30 12:38:55', 1, 27, 17, 0),
(233, '2020-09-30 12:39:01', 1, 27, 17, 0),
(234, '2020-09-30 12:39:06', 1, 27, 17, 0),
(235, '2020-09-30 12:39:11', 0, 27, 17, 0),
(236, '2020-09-30 12:39:17', 1, 27, 17, 0),
(237, '2020-09-30 12:39:25', 0, 27, 17, 0),
(238, '2020-09-30 12:39:32', 1, 27, 17, 0),
(239, '2020-09-30 12:39:38', 0, 27, 17, 0),
(240, '2020-09-30 12:39:43', 1, 27, 17, 0),
(241, '2020-09-30 12:39:48', 1, 27, 17, 0),
(242, '2020-09-30 12:39:54', 1, 27, 17, 0),
(243, '2020-09-30 12:39:59', 1, 27, 17, 0),
(244, '2020-09-30 12:40:04', 1, 27, 17, 0),
(245, '2020-09-30 12:40:12', 0, 27, 17, 0),
(246, '2020-09-30 12:40:17', 1, 27, 17, 0),
(247, '2020-09-30 12:40:22', 0, 27, 17, 0),
(248, '2020-09-30 12:40:30', 0, 27, 17, 0),
(249, '2020-09-30 12:40:35', 1, 27, 17, 0),
(250, '2020-09-30 12:40:40', 1, 27, 17, 0),
(251, '2020-09-30 12:40:46', 0, 27, 17, 0),
(252, '2020-09-30 12:40:51', 1, 27, 17, 0),
(253, '2020-09-30 12:40:58', 0, 27, 17, 0),
(254, '2020-09-30 12:41:03', 0, 27, 17, 0),
(255, '2020-09-30 12:41:09', 0, 27, 17, 0),
(256, '2020-09-30 12:41:16', 1, 27, 17, 0),
(257, '2020-09-30 12:41:21', 1, 27, 17, 0),
(258, '2020-09-30 12:41:27', 1, 27, 17, 0),
(259, '2020-09-30 12:41:34', 1, 27, 17, 0),
(260, '2020-09-30 12:41:39', 0, 27, 17, 0),
(261, '2020-09-30 12:41:45', 0, 27, 17, 0),
(262, '2020-09-30 12:41:50', 0, 27, 17, 0),
(263, '2020-09-30 12:41:55', 1, 27, 17, 0),
(264, '2020-09-30 12:42:01', 0, 27, 17, 0),
(265, '2020-09-30 12:42:06', 1, 27, 17, 0),
(266, '2020-09-30 12:42:13', 1, 27, 17, 0),
(267, '2020-09-30 12:42:18', 1, 27, 17, 0),
(268, '2020-09-30 12:42:24', 1, 27, 17, 0),
(269, '2020-09-30 12:42:29', 0, 27, 17, 0),
(270, '2020-09-30 12:42:37', 1, 27, 17, 0),
(271, '2020-09-30 12:42:42', 0, 27, 17, 0),
(272, '2020-09-30 12:42:47', 1, 27, 17, 0),
(273, '2020-09-30 12:42:53', 0, 27, 17, 0),
(274, '2020-09-30 12:42:58', 0, 27, 17, 0),
(275, '2020-09-30 12:43:03', 0, 27, 17, 0),
(276, '2020-09-30 12:43:08', 0, 27, 17, 0),
(277, '2020-09-30 12:43:16', 1, 27, 17, 0),
(278, '2020-09-30 12:43:21', 1, 27, 17, 0),
(279, '2020-09-30 12:43:28', 0, 27, 17, 0),
(280, '2020-09-30 12:43:34', 1, 27, 48, 0),
(281, '2020-09-30 12:43:39', 1, 27, 17, 0),
(282, '2020-09-30 12:43:44', 0, 27, 17, 0),
(283, '2020-09-30 12:43:50', 0, 27, 17, 0),
(284, '2020-09-30 12:43:55', 0, 27, 17, 0),
(285, '2020-09-30 12:44:00', 1, 27, 17, 0),
(286, '2020-09-30 12:44:08', 0, 27, 17, 0),
(287, '2020-09-30 12:44:13', 1, 27, 17, 0),
(288, '2020-09-30 12:44:18', 1, 27, 17, 0),
(289, '2020-09-30 12:44:24', 0, 27, 17, 0),
(290, '2020-09-30 12:44:29', 1, 27, 17, 0),
(291, '2020-09-30 12:44:36', 0, 27, 17, 0),
(292, '2020-09-30 12:44:41', 0, 27, 17, 0),
(293, '2020-09-30 12:44:47', 0, 27, 17, 0),
(294, '2020-09-30 12:44:52', 0, 27, 17, 0),
(295, '2020-09-30 12:44:57', 0, 27, 17, 0),
(296, '2020-09-30 12:45:03', 0, 27, 17, 0),
(297, '2020-09-30 12:45:08', 0, 27, 17, 0),
(298, '2020-09-30 12:45:13', 0, 27, 17, 0),
(299, '2020-09-30 12:45:19', 1, 27, 17, 0),
(300, '2020-09-30 12:45:24', 1, 27, 17, 0),
(301, '2020-09-30 12:45:29', 0, 27, 17, 0),
(302, '2020-09-30 12:45:35', 0, 27, 17, 0),
(303, '2020-09-30 12:45:40', 0, 27, 17, 0),
(304, '2020-09-30 12:45:47', 0, 27, 17, 0),
(305, '2020-09-30 12:45:53', 1, 27, 17, 0),
(306, '2020-09-30 12:45:58', 1, 27, 17, 0),
(307, '2020-09-30 12:46:03', 1, 27, 17, 0),
(308, '2020-09-30 12:46:10', 1, 27, 17, 0),
(309, '2020-09-30 12:46:16', 0, 27, 17, 0),
(310, '2020-09-30 12:46:30', 1024, 27, 17, 0),
(311, '2020-09-30 12:46:35', 1024, 27, 17, 0),
(312, '2020-09-30 12:46:40', 1024, 27, 17, 0),
(313, '2020-09-30 12:46:48', 1024, 27, 17, 0),
(314, '2020-09-30 12:46:53', 1024, 27, 17, 0),
(315, '2020-09-30 12:46:58', 1024, 27, 17, 0),
(316, '2020-09-30 12:47:04', 1024, 27, 17, 0),
(317, '2020-09-30 12:47:09', 1024, 27, 17, 0),
(318, '2020-09-30 12:47:14', 1024, 27, 17, 0),
(319, '2020-09-30 12:47:24', 1024, 27, 17, 0),
(320, '2020-09-30 12:47:29', 1024, 27, 17, 0),
(321, '2020-09-30 12:47:36', 1024, 28, 17, 0),
(322, '2020-09-30 12:47:42', 1024, 28, 17, 0),
(323, '2020-09-30 12:47:47', 1024, 28, 17, 0),
(324, '2020-09-30 12:47:52', 1024, 28, 17, 0),
(325, '2020-09-30 12:47:58', 1024, 28, 17, 0),
(326, '2020-09-30 12:48:03', 1024, 28, 17, 0),
(327, '2020-09-30 12:48:08', 1024, 28, 17, 0),
(328, '2020-09-30 12:48:14', 1024, 28, 17, 0),
(329, '2020-09-30 12:48:19', 1024, 28, 17, 0),
(330, '2020-09-30 12:48:24', 1024, 28, 17, 0),
(331, '2020-09-30 12:48:30', 1024, 28, 17, 0),
(332, '2020-09-30 12:48:35', 1024, 28, 17, 0),
(333, '2020-09-30 12:48:40', 1024, 28, 17, 0),
(334, '2020-09-30 12:48:45', 1024, 28, 17, 0),
(335, '2020-09-30 12:48:51', 1024, 28, 17, 0),
(336, '2020-09-30 12:48:56', 1024, 28, 17, 0),
(337, '2020-09-30 12:49:03', 1024, 28, 17, 0),
(338, '2020-09-30 12:49:09', 1024, 28, 17, 0),
(339, '2020-09-30 12:49:14', 1024, 28, 17, 0),
(340, '2020-09-30 12:49:19', 1024, 28, 17, 0),
(341, '2020-09-30 12:49:25', 1024, 28, 17, 0),
(342, '2020-09-30 12:49:32', 1024, 28, 17, 0),
(343, '2020-09-30 12:49:37', 1024, 28, 17, 0),
(344, '2020-09-30 12:49:43', 1002, 28, 17, 0),
(345, '2020-09-30 12:49:48', 1024, 27, 17, 0),
(346, '2020-09-30 12:49:53', 1024, 28, 17, 0),
(347, '2020-09-30 12:49:59', 1024, 28, 17, 0),
(348, '2020-09-30 12:50:06', 1024, 27, 17, 0),
(349, '2020-09-30 12:50:11', 1024, 27, 17, 0),
(350, '2020-09-30 12:50:16', 1024, 27, 17, 0),
(351, '2020-09-30 12:50:24', 1024, 27, 17, 0),
(352, '2020-09-30 12:50:29', 1024, 27, 17, 0),
(353, '2020-09-30 12:50:34', 1024, 27, 17, 0),
(354, '2020-09-30 12:50:40', 1024, 27, 17, 0),
(355, '2020-09-30 12:50:45', 1024, 27, 17, 0),
(356, '2020-09-30 12:50:50', 1024, 27, 17, 0),
(357, '2020-09-30 12:50:56', 1024, 27, 17, 0),
(358, '2020-09-30 12:51:01', 1024, 27, 17, 0),
(359, '2020-09-30 12:51:08', 1024, 27, 17, 0),
(360, '2020-09-30 12:51:14', 1024, 27, 17, 0),
(361, '2020-09-30 12:51:21', 10, 27, 17, 0),
(362, '2020-09-30 12:51:26', 14, 27, 17, 0),
(363, '2020-09-30 12:51:32', 12, 27, 17, 0),
(364, '2020-09-30 12:51:37', 14, 27, 17, 0),
(365, '2020-09-30 12:51:42', 14, 27, 17, 0),
(366, '2020-09-30 12:51:48', 14, 27, 17, 0),
(367, '2020-09-30 12:51:55', 10, 27, 17, 0),
(368, '2020-09-30 12:52:00', 7, 27, 17, 0),
(369, '2020-09-30 12:52:06', 12, 27, 17, 0),
(370, '2020-09-30 12:52:11', 14, 27, 17, 0),
(371, '2020-09-30 12:52:16', 12, 27, 17, 0),
(372, '2020-09-30 12:52:21', 14, 27, 17, 0),
(373, '2020-09-30 12:52:27', 6, 27, 17, 0),
(374, '2020-09-30 12:52:32', 12, 27, 17, 0),
(375, '2020-09-30 12:52:37', 15, 27, 17, 0),
(376, '2020-09-30 12:52:43', 14, 27, 17, 0),
(377, '2020-09-30 12:52:48', 13, 27, 17, 0),
(378, '2020-09-30 12:52:53', 6, 27, 17, 0),
(379, '2020-09-30 12:52:59', 14, 27, 17, 0),
(380, '2020-09-30 12:53:04', 7, 27, 17, 0),
(381, '2020-09-30 12:53:09', 12, 27, 17, 0),
(382, '2020-09-30 12:53:15', 7, 27, 17, 0),
(383, '2020-09-30 12:53:20', 14, 27, 17, 0),
(384, '2020-09-30 12:53:25', 6, 27, 17, 0),
(385, '2020-09-30 12:53:34', 7, 27, 17, 0),
(386, '2020-09-30 12:53:39', 1024, 27, 17, 0),
(387, '2020-09-30 12:53:44', 1024, 28, 17, 0),
(388, '2020-09-30 12:53:50', 1024, 28, 17, 0),
(389, '2020-09-30 12:53:55', 1024, 28, 17, 0),
(390, '2020-09-30 12:54:00', 1024, 28, 17, 0),
(391, '2020-09-30 12:54:06', 1024, 28, 17, 0),
(392, '2020-09-30 12:54:11', 825, 28, 17, 0),
(393, '2020-09-30 12:54:16', 756, 28, 17, 0),
(394, '2020-09-30 12:54:22', 833, 28, 17, 0),
(395, '2020-09-30 12:54:29', 829, 28, 17, 0),
(396, '2020-09-30 12:54:34', 831, 28, 17, 0),
(397, '2020-09-30 12:54:40', 804, 28, 17, 0),
(398, '2020-09-30 12:54:45', 800, 28, 17, 0),
(399, '2020-09-30 12:54:50', 806, 28, 17, 0),
(400, '2020-09-30 12:54:56', 439, 28, 17, 0),
(401, '2020-09-30 12:55:03', 832, 28, 17, 0),
(402, '2020-09-30 12:55:08', 795, 28, 17, 0),
(403, '2020-09-30 12:55:13', 790, 28, 17, 0),
(404, '2020-09-30 12:55:21', 725, 28, 17, 0),
(405, '2020-09-30 12:55:26', 793, 28, 17, 0),
(406, '2020-09-30 12:55:33', 714, 27, 17, 0),
(407, '2020-09-30 12:55:39', 681, 28, 17, 0),
(408, '2020-09-30 12:55:44', 684, 28, 17, 0),
(409, '2020-09-30 12:55:49', 816, 28, 17, 0),
(410, '2020-09-30 12:55:55', 813, 28, 17, 0),
(411, '2020-09-30 12:56:00', 640, 27, 17, 0),
(412, '2020-09-30 12:56:05', 812, 27, 17, 0),
(413, '2020-09-30 12:56:11', 813, 27, 17, 0),
(414, '2020-09-30 12:56:16', 801, 27, 17, 0),
(415, '2020-09-30 12:56:21', 618, 27, 17, 0),
(416, '2020-09-30 12:56:29', 807, 27, 17, 0),
(417, '2020-09-30 12:56:32', 816, 27, 17, 0),
(418, '2020-09-30 12:56:38', 809, 27, 17, 0),
(419, '2020-09-30 12:56:43', 799, 27, 17, 0),
(420, '2020-09-30 12:56:48', 838, 27, 17, 0),
(421, '2020-09-30 12:56:53', 782, 27, 17, 0),
(422, '2020-09-30 12:56:59', 811, 27, 17, 0),
(423, '2020-09-30 12:57:04', 817, 27, 17, 0),
(424, '2020-09-30 12:57:09', 807, 27, 17, 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
