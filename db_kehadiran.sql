-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 21, 2026 at 07:03 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kehadiran`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_logs`
--

CREATE TABLE `api_logs` (
  `id` int NOT NULL,
  `token_id` varchar(255) DEFAULT NULL,
  `endpoint` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `user_agent` text NOT NULL,
  `request_body` longtext,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `api_logs`
--

INSERT INTO `api_logs` (`id`, `token_id`, `endpoint`, `method`, `ip_address`, `user_agent`, `request_body`, `created_at`) VALUES
(1, 'TOKEN_39BECC93F97DAB52', '/Uts_tws/api.php', 'GET', '::1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-16 03:11:25'),
(2, 'TOKEN_39BECC93F97DAB52', '/Uts_tws/api.php', 'GET', '::1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-16 03:11:30'),
(3, 'TOKEN_39BECC93F97DAB52', '/Uts_tws/api.php', 'GET', '::1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-16 03:11:31'),
(4, 'TOKEN_1D3D7769FC2558F2', '/Uts_tws/api.php?action=login', 'POST', '::1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"username\":\"admin\",\"action\":\"login_success\"}', '2026-08-16 03:11:50'),
(5, 'TOKEN_1D3D7769FC2558F2', '/Uts_tws/api.php', 'GET', '::1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-16 03:11:52'),
(6, 'TOKEN_1D3D7769FC2558F2', '/Uts_tws/api.php', 'POST', '::1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"student\":\"sulastri\",\"date\":\"2026-08-11\",\"status\":\"Sakit\",\"remark\":\"demam\"}', '2026-08-16 03:13:04'),
(7, 'TOKEN_1D3D7769FC2558F2', '/Uts_tws/api.php', 'GET', '::1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-16 03:13:06'),
(8, 'TOKEN_1D3D7769FC2558F2', '/Uts_tws/api.php', 'PUT', '::1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"student\":\"wiro\",\"date\":\"2026-08-16\",\"status\":\"Alpa\",\"remark\":\"-\",\"id\":7}', '2026-08-16 03:13:12'),
(9, 'TOKEN_1D3D7769FC2558F2', '/Uts_tws/api.php', 'GET', '::1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-16 03:13:13'),
(10, 'TOKEN_1D3D7769FC2558F2', '/Uts_tws/api.php', 'DELETE', '::1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"id\":7}', '2026-08-16 03:13:19'),
(11, 'TOKEN_1D3D7769FC2558F2', '/Uts_tws/api.php', 'GET', '::1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-16 03:13:20'),
(12, NULL, '/Uts_tws/api.php?action=login', 'POST', '::1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"username\":\"fbz\",\"action\":\"login_failed\"}', '2026-08-16 03:15:44'),
(13, NULL, '/Uts_tws/api.php?action=login', 'POST', '::1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"username\":\"superadmin@gmail.com\",\"action\":\"login_failed\"}', '2026-08-16 03:17:18'),
(14, 'TOKEN_0DE884780680D6E0', '/Uts_tws/api.php?action=login', 'POST', '::1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"username\":\"admin\",\"action\":\"login_success\"}', '2026-08-16 03:17:28'),
(15, 'TOKEN_0DE884780680D6E0', '/Uts_tws/api.php', 'GET', '::1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-16 03:17:30'),
(16, 'TOKEN_0DE884780680D6E0', '/Uts_tws/api.php', 'GET', '::1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-16 03:21:35'),
(17, 'TOKEN_E51AFD0090B49DAF', '/api.php?action=login', 'POST', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"username\":\"admin\",\"action\":\"login_success\"}', '2026-08-18 19:23:46'),
(18, 'TOKEN_E51AFD0090B49DAF', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-18 19:23:48'),
(19, 'TOKEN_99626FA176439F51', '/api.php?action=login', 'POST', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"username\":\"admin\",\"action\":\"login_success\"}', '2026-08-19 00:25:35'),
(20, 'TOKEN_99626FA176439F51', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-19 00:25:37'),
(21, 'TOKEN_99626FA176439F51', '/Uts_tws/api.php/', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', '{\"username\":\"admin\",\"password\":\"admin123\"}', '2026-08-19 00:47:12'),
(22, 'TOKEN_E0C03210174F3A91', '/kehadiran-tws/api.php?action=login', 'POST', '::1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"username\":\"admin\",\"action\":\"login_success\"}', '2026-08-19 01:01:10'),
(23, 'TOKEN_E0C03210174F3A91', '/kehadiran-tws/api.php', 'GET', '::1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-19 01:01:13'),
(24, 'TOKEN_E0C03210174F3A91', '/kehadiran-tws/api.php', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', '{\"username\":\"admin\",\"password\":\"admin123\"}', '2026-08-19 01:06:36'),
(25, 'TOKEN_E0C03210174F3A91', '/kehadiran-tws/api.php', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', '{\"username\":\"admin\",\"password\":\"admin123\"}', '2026-08-19 01:07:57'),
(26, 'TOKEN_E0C03210174F3A91', '/kehadiran-tws/api.php', 'POST', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', '{\"username\":\"admin\",\"password\":\"admin123\"}', '2026-08-19 01:09:06'),
(27, 'TOKEN_E0C03210174F3A91', '/kehadiran-tws/api.php', 'GET', '::1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-19 01:09:22'),
(28, 'TOKEN_E0C03210174F3A91', '/kehadiran-tws/api.php', 'POST', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', '{\"username\":\"admin\",\"password\":\"admin123\"}', '2026-08-19 01:09:33'),
(29, 'TOKEN_E0C03210174F3A91', '/kehadiran-tws/api.php', 'POST', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', NULL, '2026-08-19 01:10:26'),
(30, 'TOKEN_E0C03210174F3A91', '/kehadiran-tws/api.php', 'POST', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', '{\"id\":\"1\"}', '2026-08-19 01:10:43'),
(31, 'TOKEN_E0C03210174F3A91', '/kehadiran-tws/api.php', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', '{\"id\":\"1\"}', '2026-08-19 01:10:48'),
(32, 'TOKEN_E0C03210174F3A91', '/kehadiran-tws/api.php', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', '{\"id\":\"2\"}', '2026-08-19 01:11:25'),
(33, 'TOKEN_E0C03210174F3A91', '/kehadiran-tws/api.php', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', '{\"id\":\"2\"}', '2026-08-19 01:12:54'),
(34, 'TOKEN_23BB8EDDE5718798', '/api.php?action=login', 'POST', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"username\":\"admin\",\"action\":\"login_success\"}', '2026-08-19 19:52:47'),
(35, 'TOKEN_23BB8EDDE5718798', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-19 19:52:49'),
(36, 'TOKEN_23BB8EDDE5718798', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-19 20:06:07'),
(37, 'TOKEN_23BB8EDDE5718798', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-19 20:06:08'),
(38, 'TOKEN_23BB8EDDE5718798', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-19 20:06:10'),
(39, 'TOKEN_E0C03210174F3A91', '/kehadiran-tws/api.php', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', NULL, '2026-08-19 20:16:42'),
(40, 'TOKEN_23BB8EDDE5718798', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-19 20:17:44'),
(41, 'TOKEN_23BB8EDDE5718798', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-19 20:17:46'),
(42, 'TOKEN_E0C03210174F3A91', '/kehadiran-tws/api.php', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', NULL, '2026-08-19 20:17:51'),
(43, 'TOKEN_23BB8EDDE5718798', '/kehadiran-tws/api.php', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', NULL, '2026-08-19 20:18:12'),
(44, 'TOKEN_23BB8EDDE5718798', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-19 20:18:24'),
(45, 'TOKEN_B951AD304E276BA1', '/kehadiran-tws/api.php?action=login', 'POST', '::1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"username\":\"admin\",\"action\":\"login_success\"}', '2026-08-19 20:19:48'),
(46, 'TOKEN_B951AD304E276BA1', '/kehadiran-tws/api.php', 'GET', '::1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-19 20:19:50'),
(47, 'TOKEN_23BB8EDDE5718798', '/kehadiran-tws/api.php', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', NULL, '2026-08-19 20:20:04'),
(48, 'TOKEN_D024739DC0E906EA', '/api.php?action=login', 'POST', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"username\":\"admin\",\"action\":\"login_success\"}', '2026-08-19 20:34:19'),
(49, 'TOKEN_D024739DC0E906EA', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-19 20:34:22'),
(50, 'TOKEN_23BB8EDDE5718798', '/kehadiran-tws/api.php', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', NULL, '2026-08-19 20:34:53'),
(51, 'TOKEN_23BB8EDDE5718798', '/kehadiran-tws/api.php', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', NULL, '2026-08-19 20:37:29'),
(52, 'TOKEN_23BB8EDDE5718798', '/kehadiran-tws/api.php', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', NULL, '2026-08-19 20:39:33'),
(53, 'TOKEN_23BB8EDDE5718798', '/kehadiran-tws/api.php', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', NULL, '2026-08-19 20:42:18'),
(54, 'TOKEN_23BB8EDDE5718798', '/kehadiran-tws/api.php', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', NULL, '2026-08-19 20:42:19'),
(55, 'TOKEN_23BB8EDDE5718798', '/kehadiran-tws/api.php', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', NULL, '2026-08-19 20:44:27'),
(56, 'TOKEN_23BB8EDDE571879', '/kehadiran-tws/api.php', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', NULL, '2026-08-19 20:44:36'),
(57, 'TOKEN_23BB8EDDE57187', '/kehadiran-tws/api.php', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', NULL, '2026-08-19 20:44:39'),
(58, 'TOKEN_23BB8EDDE57187', '/kehadiran-tws/api.php', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', NULL, '2026-08-19 20:44:52'),
(59, 'TOKEN_23BB8EDDE57187', '/kehadiran-tws/api.php', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', NULL, '2026-08-19 20:48:35'),
(60, 'TOKEN_23BB8EDDE5718798', '/kehadiran-tws/api.php', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', NULL, '2026-08-19 20:49:02'),
(61, 'TOKEN_E0C03210174F3A91', '/kehadiran-tws/api.php', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', NULL, '2026-08-19 20:49:09'),
(62, 'TOKEN_5951959', '/kehadiran-tws/api.php', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', NULL, '2026-08-19 20:50:04'),
(63, 'TOKEN_', '/kehadiran-tws/api.php', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', NULL, '2026-08-19 20:51:32'),
(64, 'TOKEN', '/kehadiran-tws/api.php', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', NULL, '2026-08-19 20:51:36'),
(65, 'T', '/kehadiran-tws/api.php', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', NULL, '2026-08-19 20:51:41'),
(66, 'TOKEN_D024739DC0E906EA', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome', NULL, '2026-08-19 20:59:40'),
(67, 'TOKEN_D024739DC0E906EA', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome', NULL, '2026-08-19 20:59:41'),
(68, 'TOKEN_D024739DC0E906EA', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome', NULL, '2026-08-19 20:59:42'),
(69, 'TOKEN_D024739DC0E906EA', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome', NULL, '2026-08-19 20:59:43'),
(70, 'TOKEN_D024739DC0E906EA', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome', NULL, '2026-08-19 20:59:49'),
(71, 'TOKEN_23BB8EDDE5718798', '/kehadiran-tws/api.php', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown', NULL, '2026-08-19 20:59:55'),
(72, 'TOKEN_D024739DC0E906EA', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome', NULL, '2026-08-19 21:00:17'),
(73, 'TOKEN_D024739DC0E906EA', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome', NULL, '2026-08-19 21:00:23'),
(74, 'TOKEN_D024739DC0E906EA', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome', NULL, '2026-08-19 21:00:43'),
(75, 'TOKEN_D024739DC0E906EA', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-19 21:01:09'),
(76, 'TOKEN_D024739DC0E906EA', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-19 21:01:10'),
(77, 'TOKEN_D024739DC0E906EA', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-19 21:01:11'),
(78, 'TOKEN_D024739DC0E906EA', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-19 21:01:12'),
(79, 'TOKEN_23BB8EDDE5718798', '/kehadiran-tws/api.php?%20id=2', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', '{\"username\":\"admin\",\"password\":\"admin123\"}', '2026-08-19 21:09:52'),
(80, 'TOKEN_FEC11E7DF041BF13', '/api.php?action=login', 'POST', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"username\":\"admin\",\"action\":\"login_success\"}', '2026-08-19 21:20:46'),
(81, 'TOKEN_FEC11E7DF041BF13', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-19 21:20:48'),
(82, 'TOKEN_FEC11E7DF041BF13', '/kehadiran-tws/api.php?%20id=2', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', '{\"username\":\"admin\",\"password\":\"admin123\"}', '2026-08-19 21:21:01'),
(83, 'TOKEN_FEC11E7DF041BF13', '/kehadiran-tws/api.php?action=login', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', '{\"username\":\"admin\",\"password\":\"admin123\"}', '2026-08-19 21:26:53'),
(84, 'TOKEN_FEC11E7DF041BF13', '/kehadiran-tws/api.php?action=login', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', '{\"username\":\"admin\",\"password\":\"admin123\"}', '2026-08-20 01:19:43'),
(85, 'TOKEN_FEC11E7DF041BF13', '/kehadiran-tws/api.php?action=login', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', '{\"username\":\"admin\",\"password\":\"admin123\"}', '2026-08-20 01:21:35'),
(86, 'TOKEN_FEC11E7DF041BF13', '/kehadiran-tws/api.php?action=login', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', '{\"username\":\"admin\",\"password\":\"admin123\"}', '2026-08-20 01:21:51'),
(87, 'TOKEN_FEC11E7DF041BF13', '/kehadiran-tws/api.php?action=login', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', '{\"username\":\"admin\",\"password\":\"admin123\"}', '2026-08-20 01:22:37'),
(88, 'TOKEN_FEC11E7DF041BF13', '/kehadiran-tws/api.php?id=2', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', '{\"username\":\"admin\",\"password\":\"admin123\"}', '2026-08-20 01:22:59'),
(89, 'TOKEN_7B8F7465469646CC', '/kehadiran-tws/api.php?action=login', 'POST', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', '{\"username\":\"admin\",\"action\":\"login_success\"}', '2026-08-20 01:24:30'),
(90, 'TOKEN_C8A45CC852BE8B75', '/api.php?action=login', 'POST', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"username\":\"admin\",\"action\":\"login_success\"}', '2026-08-20 01:35:50'),
(91, 'TOKEN_C8A45CC852BE8B75', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 01:35:52'),
(92, 'TOKEN_C8A45CC852BE8B75', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 01:39:22'),
(93, 'TOKEN_C8A45CC852BE8B75', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 01:47:17'),
(94, 'TOKEN_C8A45CC852BE8B75', '/api.php', 'POST', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"student\":\"sulis\",\"date\":\"2026-08-01\",\"status\":\"Sakit\",\"remark\":\"-\"}', '2026-08-20 01:47:54'),
(95, 'TOKEN_C8A45CC852BE8B75', '/kehadiran-tws/api.php', 'POST', '::1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"student\":\"sulis\",\"date\":\"2026-08-01\",\"status\":\"Sakit\",\"remark\":\"-\",\"phone\":\"085878026381\"}', '2026-08-20 01:47:54'),
(96, 'TOKEN_C8A45CC852BE8B75', '/api.php', 'POST', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"student\":\"sulis\",\"date\":\"2026-08-01\",\"status\":\"Sakit\",\"remark\":\"-\"}', '2026-08-20 01:47:56'),
(97, 'TOKEN_C8A45CC852BE8B75', '/kehadiran-tws/api.php', 'POST', '::1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"student\":\"sulis\",\"date\":\"2026-08-01\",\"status\":\"Sakit\",\"remark\":\"-\",\"phone\":\"085878026381\"}', '2026-08-20 01:47:56'),
(98, 'TOKEN_C8A45CC852BE8B75', '/kehadiran-tws/api.php', 'POST', '::1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"student\":\"sulis\",\"date\":\"2026-08-01\",\"status\":\"Sakit\",\"remark\":\"-\",\"phone\":\"085878026381\"}', '2026-08-20 01:47:58'),
(99, 'TOKEN_C8A45CC852BE8B75', '/api.php', 'POST', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"student\":\"sulis\",\"date\":\"2026-08-01\",\"status\":\"Sakit\",\"remark\":\"-\"}', '2026-08-20 01:47:58'),
(100, 'TOKEN_C8A45CC852BE8B75', '/kehadiran-tws/api.php', 'POST', '::1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"student\":\"sulis\",\"date\":\"2026-08-01\",\"status\":\"Sakit\",\"remark\":\"-\",\"phone\":\"085878026381\"}', '2026-08-20 01:47:59'),
(101, 'TOKEN_C8A45CC852BE8B75', '/api.php', 'POST', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"student\":\"sulis\",\"date\":\"2026-08-01\",\"status\":\"Sakit\",\"remark\":\"-\"}', '2026-08-20 01:47:59'),
(102, 'TOKEN_C8A45CC852BE8B75', '/kehadiran-tws/api.php', 'POST', '::1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"student\":\"sulis\",\"date\":\"2026-08-01\",\"status\":\"Sakit\",\"remark\":\"-\",\"phone\":\"085878026381\"}', '2026-08-20 01:48:00'),
(103, 'TOKEN_C8A45CC852BE8B75', '/api.php', 'POST', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"student\":\"sulis\",\"date\":\"2026-08-01\",\"status\":\"Sakit\",\"remark\":\"-\"}', '2026-08-20 01:48:00'),
(104, 'TOKEN_C8A45CC852BE8B75', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 01:49:11'),
(105, 'TOKEN_C8A45CC852BE8B75', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 01:49:45'),
(106, 'TOKEN_C8A45CC852BE8B75', '/api.php', 'DELETE', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"id\":18}', '2026-08-20 01:49:50'),
(107, 'TOKEN_C8A45CC852BE8B75', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 01:49:51'),
(108, 'TOKEN_C8A45CC852BE8B75', '/api.php', 'DELETE', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"id\":17}', '2026-08-20 01:49:55'),
(109, 'TOKEN_C8A45CC852BE8B75', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 01:49:55'),
(110, 'TOKEN_C8A45CC852BE8B75', '/api.php', 'DELETE', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"id\":16}', '2026-08-20 01:49:57'),
(111, 'TOKEN_C8A45CC852BE8B75', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 01:49:58'),
(112, 'TOKEN_C8A45CC852BE8B75', '/api.php', 'DELETE', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"id\":15}', '2026-08-20 01:50:00'),
(113, 'TOKEN_C8A45CC852BE8B75', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 01:50:01'),
(114, 'TOKEN_C8A45CC852BE8B75', '/api.php', 'DELETE', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"id\":14}', '2026-08-20 01:50:03'),
(115, 'TOKEN_C8A45CC852BE8B75', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 01:50:04'),
(116, 'TOKEN_C8A45CC852BE8B75', '/api.php', 'DELETE', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"id\":13}', '2026-08-20 01:50:05'),
(117, 'TOKEN_C8A45CC852BE8B75', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 01:50:07'),
(118, 'TOKEN_C8A45CC852BE8B75', '/api.php', 'DELETE', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"id\":12}', '2026-08-20 01:50:09'),
(119, 'TOKEN_C8A45CC852BE8B75', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 01:50:09'),
(120, 'TOKEN_C8A45CC852BE8B75', '/api.php', 'DELETE', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"id\":11}', '2026-08-20 01:50:11'),
(121, 'TOKEN_C8A45CC852BE8B75', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 01:50:12'),
(122, 'TOKEN_C8A45CC852BE8B75', '/api.php', 'DELETE', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"id\":10}', '2026-08-20 01:50:14'),
(123, 'TOKEN_C8A45CC852BE8B75', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 01:50:14'),
(124, 'TOKEN_C8A45CC852BE8B75', '/api.php', 'DELETE', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"id\":9}', '2026-08-20 01:50:17'),
(125, 'TOKEN_C8A45CC852BE8B75', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 01:50:18'),
(126, 'TOKEN_C8A45CC852BE8B75', '/api.php', 'PUT', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"student\":\"sulastri\",\"date\":\"2026-08-11\",\"status\":\"Izin\",\"remark\":\"demam\",\"id\":8}', '2026-08-20 01:50:35'),
(127, 'TOKEN_C8A45CC852BE8B75', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 01:50:37'),
(128, 'TOKEN_200F48D4B674AFE5', '/kehadiran-tws/api.php?action=login', 'POST', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', '{\"username\":\"admin\",\"action\":\"login_success\"}', '2026-08-20 01:50:50'),
(129, 'TOKEN_48E17DDD131EB154', '/api.php?action=login', 'POST', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"username\":\"admin\",\"action\":\"login_success\"}', '2026-08-20 01:59:44'),
(130, 'TOKEN_48E17DDD131EB154', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 01:59:46'),
(131, 'TOKEN_48E17DDD131EB154', '/api.php', 'POST', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"student\":\"yura\",\"date\":\"2026-08-12\",\"status\":\"Hadir\",\"remark\":\"\"}', '2026-08-20 02:00:06'),
(132, 'TOKEN_48E17DDD131EB154', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 02:00:12'),
(133, 'TOKEN_48E17DDD131EB154', '/api.php', 'POST', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"student\":\"yura\",\"date\":\"2026-08-07\",\"status\":\"Sakit\",\"remark\":\"-\"}', '2026-08-20 02:00:38'),
(134, 'TOKEN_48E17DDD131EB154', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 02:00:52'),
(135, 'TOKEN_48E17DDD131EB154', '/api.php', 'PUT', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"student\":\"yura\",\"date\":\"2026-08-07\",\"status\":\"Hadir\",\"remark\":\"-\",\"id\":19}', '2026-08-20 02:01:02'),
(136, 'TOKEN_48E17DDD131EB154', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 02:01:05'),
(137, 'TOKEN_48E17DDD131EB154', '/kehadiran-tws/api.php', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', '{\"username\":\"admin\",\"password\":\"admin123\"}', '2026-08-20 02:05:25'),
(138, 'TOKEN_48E17DDD131EB154', '/kehadiran-tws/api.php', 'POST', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', '{\"student\":\"Raka Zhafran\",\"date\":\"2026-08-20\",\"status\":\"Hadir\",\"remark\":\"Hadir di kelas\",\"latitude\":-6.982512,\"longitude\":110.435312}', '2026-08-20 02:07:22'),
(139, 'TOKEN_48E17DDD131EB154', '/kehadiran-tws/api.php', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', NULL, '2026-08-20 02:08:48'),
(140, 'TOKEN_48E17DDD131EB154', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 02:11:24'),
(141, 'TOKEN_48E17DDD131EB154', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 02:11:25'),
(142, 'TOKEN_48E17DDD131EB154', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 02:12:03'),
(143, 'TOKEN_48E17DDD131EB154', '/api.php', 'DELETE', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"id\":19}', '2026-08-20 02:12:16'),
(144, 'TOKEN_48E17DDD131EB154', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 02:12:18'),
(145, 'TOKEN_48E17DDD131EB154', '/api.php', 'POST', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"student\":\"romo\",\"date\":\"2026-08-06\",\"status\":\"Hadir\",\"remark\":\"\"}', '2026-08-20 02:12:34'),
(146, 'TOKEN_48E17DDD131EB154', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 02:12:46'),
(147, 'TOKEN_48E17DDD131EB154', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 02:15:50'),
(148, 'TOKEN_48E17DDD131EB154', '/api.php', 'POST', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"student\":\"romo\",\"date\":\"2026-08-01\",\"status\":\"Hadir\",\"remark\":\"\"}', '2026-08-20 02:16:04'),
(149, 'TOKEN_48E17DDD131EB154', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 02:16:09'),
(150, 'TOKEN_48E17DDD131EB154', '/api.php', 'POST', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"student\":\"romo\",\"date\":\"2026-08-07\",\"status\":\"Sakit\",\"remark\":\"\"}', '2026-08-20 02:46:03'),
(151, 'TOKEN_48E17DDD131EB154', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 02:46:06'),
(152, 'TOKEN_07EA4813BC16C793', '/api.php?action=login', 'POST', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"username\":\"admin\",\"action\":\"login_success\"}', '2026-08-20 02:57:07'),
(153, 'TOKEN_07EA4813BC16C793', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 02:57:09'),
(154, 'TOKEN_1F29433F3DBDECB2', '/api.php?action=login', 'POST', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"username\":\"admin\",\"action\":\"login_success\"}', '2026-08-20 03:06:33'),
(155, 'TOKEN_1F29433F3DBDECB2', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 03:06:35'),
(156, 'TOKEN_1F29433F3DBDECB2', '/api.php', 'PUT', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"student\":\"Budi Santoso\",\"date\":\"2025-11-06\",\"status\":\"Hadir\",\"remark\":\"-\",\"id\":2}', '2026-08-20 03:07:02'),
(157, 'TOKEN_1F29433F3DBDECB2', '/api.php', 'PUT', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"student\":\"Budi Santoso\",\"date\":\"2025-11-06\",\"status\":\"Hadir\",\"remark\":\"-\",\"id\":2}', '2026-08-20 03:07:02'),
(158, 'TOKEN_1F29433F3DBDECB2', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 03:07:04'),
(159, 'TOKEN_1F29433F3DBDECB2', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 03:07:05'),
(160, 'TOKEN_1F29433F3DBDECB2', '/api.php', 'DELETE', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"id\":8}', '2026-08-20 03:07:18'),
(161, 'TOKEN_1F29433F3DBDECB2', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 03:07:19'),
(162, 'TOKEN_1F29433F3DBDECB2', '/api.php', 'DELETE', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"id\":20}', '2026-08-20 03:07:22'),
(163, 'TOKEN_1F29433F3DBDECB2', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 03:07:23'),
(164, 'TOKEN_1F29433F3DBDECB2', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 06:26:42'),
(165, 'TOKEN_1F29433F3DBDECB2', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 06:26:44'),
(166, 'TOKEN_3117547E9A43A77B', '/api.php?action=login', 'POST', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"username\":\"admin\",\"action\":\"login_success\"}', '2026-08-20 06:28:57'),
(167, 'TOKEN_3117547E9A43A77B', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 06:29:00'),
(168, 'TOKEN_3117547E9A43A77B', '/api.php', 'POST', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"student\":\"ulil\",\"date\":\"2026-08-20\",\"status\":\"Izin\",\"remark\":\"\"}', '2026-08-20 06:29:36'),
(169, 'TOKEN_3117547E9A43A77B', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 06:29:38'),
(170, 'TOKEN_3117547E9A43A77B', '/api.php', 'DELETE', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"id\":21}', '2026-08-20 06:29:57'),
(171, 'TOKEN_3117547E9A43A77B', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 06:29:58'),
(172, 'TOKEN_99A8D2795186C690', '/kehadiran-tws/api.php?action=login', 'POST', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', '{\"username\":\"admin\",\"action\":\"login_success\"}', '2026-08-20 06:32:18'),
(173, 'TOKEN_0694BCC65BB6945F', '/api.php?action=login', 'POST', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', '{\"username\":\"admin\",\"action\":\"login_success\"}', '2026-08-20 06:33:41'),
(174, 'TOKEN_0694BCC65BB6945F', '/api.php', 'GET', '127.0.0.1', 'Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36, Type: Desktop, OS: Windows, Browser: Chrome, Model: Unknown', NULL, '2026-08-20 06:33:43'),
(175, 'TOKEN_0694BCC65BB6945F', '/kehadiran-tws/api.php', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', '{\"student\":\"Raka Zhafran\",\"date\":\"2026-08-20\",\"status\":\"Hadir\",\"remark\":\"Hadir di kelas\",\"latitude\":-6.982512,\"longitude\":110.435312}', '2026-08-20 06:33:55'),
(176, 'TOKEN_0694BCC65BB6945F', '/kehadiran-tws/api.php', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', '{\"id\":1}', '2026-08-20 06:34:46'),
(177, 'TOKEN_0694BCC65BB6945F', '/kehadiran-tws/api.php', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', NULL, '2026-08-20 06:34:59'),
(178, 'TOKEN_0694BCC65BB6945F', '/kehadiran-tws/api.php?%20id=2', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', '{\"id\":1}', '2026-08-20 06:35:47'),
(179, 'TOKEN_0694BCC65BB6945F', '/kehadiran-tws/api.php?%20id=2', 'POST', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', '{\"student\":\"ulil\",\"date\":\"2025-11-06\",\"status\":\"Hadir\",\"remark\":\"-\",\"latitude\":null,\"longitude\":null,\"phone\":null,\"created_at\":\"2026-08-12 00:08:09\"}', '2026-08-20 06:36:38');
INSERT INTO `api_logs` (`id`, `token_id`, `endpoint`, `method`, `ip_address`, `user_agent`, `request_body`, `created_at`) VALUES
(180, 'TOKEN_0694BCC65BB6945F', '/kehadiran-tws/api.php?%20id=2', 'POST', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', '{\"student\":\"ulil\",\"date\":\"2025-11-06\",\"status\":\"Hadir\",\"remark\":\"-\",\"latitude\":-6.9846973,\"longitude\":110.4531899,\"phone\":null,\"created_at\":\"2026-08-12 00:08:09\"}', '2026-08-20 06:37:53'),
(181, 'TOKEN_0694BCC65BB6945F', '/kehadiran-tws/api.php?%20id=2', 'PUT', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', '{\"student\":\"dhyta\",\"date\":\"2025-11-06\",\"status\":\"Hadir\",\"remark\":\"-\",\"latitude\":-6.9846973,\"longitude\":110.4531899,\"phone\":null,\"created_at\":\"2026-08-12 00:08:09\"}', '2026-08-20 06:38:45'),
(182, 'TOKEN_0694BCC65BB6945F', '/kehadiran-tws/api.php?%20id=2', 'PUT', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', '{\"student\":\"dhyta\",\"date\":\"2025-11-06\",\"status\":\"Hadir\",\"remark\":\"di kelas a\",\"latitude\":-6.9846973,\"longitude\":110.4531899,\"phone\":null,\"created_at\":\"2026-08-12 00:08:09\"}', '2026-08-20 06:39:21'),
(183, 'TOKEN_0694BCC65BB6945F', '/kehadiran-tws/api.php?%20id=2', 'PUT', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', '{\"student\":\"ulil\",\"date\":\"2025-11-06\",\"status\":\"Hadir\",\"remark\":\"di kelas a\",\"latitude\":-6.9846973,\"longitude\":110.4531899,\"phone\":null,\"created_at\":\"2026-08-12 00:08:09\"}', '2026-08-20 06:39:30'),
(184, 'TOKEN_0694BCC65BB6945F', '/kehadiran-tws/api.php?%20id=2', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', '{\"student\":\"ulil\",\"date\":\"2025-11-06\",\"status\":\"Hadir\",\"remark\":\"di kelas a\",\"latitude\":-6.9846973,\"longitude\":110.4531899,\"phone\":null,\"created_at\":\"2026-08-12 00:08:09\"}', '2026-08-20 06:39:45'),
(185, 'TOKEN_0694BCC65BB6945F', '/kehadiran-tws/api.php?%20', 'GET', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', '{\"student\":\"ulil\",\"date\":\"2025-11-06\",\"status\":\"Hadir\",\"remark\":\"di kelas a\",\"latitude\":-6.9846973,\"longitude\":110.4531899,\"phone\":null,\"created_at\":\"2026-08-12 00:08:09\"}', '2026-08-20 06:39:52'),
(186, 'TOKEN_0694BCC65BB6945F', '/kehadiran-tws/api.php?%20', 'PUT', '::1', 'Agent: PostmanRuntime/7.51.1, Type: Desktop, OS: Unknown, Browser: Unknown, Model: Unknown', NULL, '2026-08-20 06:40:29');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int NOT NULL,
  `student` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `remark` text,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `student`, `date`, `status`, `remark`, `latitude`, `longitude`, `phone`, `created_at`) VALUES
(1, 'Raka Zhafran', '2025-11-07', 'Hadir', 'hadir di kelas a', NULL, NULL, NULL, '2026-08-11 17:08:09'),
(2, 'Budi Santoso', '2025-11-06', 'Hadir', '-', NULL, NULL, NULL, '2026-08-11 17:08:09'),
(22, 'ulil', '2025-11-06', 'Hadir', '-', '-6.98469730', '110.45318990', NULL, '2026-08-20 06:37:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `client_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `fullname`, `client_token`, `created_at`) VALUES
(1, 'admin', '$2y$10$e0MYzXyjpJS7Pd0RVvHwHe11.758d4e9.1/1/1/1/1/1/1/1/1/1', 'Administrator Raka', 'TOKEN_0694BCC65BB6945F', '2026-08-16 03:00:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_logs`
--
ALTER TABLE `api_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api_logs`
--
ALTER TABLE `api_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
