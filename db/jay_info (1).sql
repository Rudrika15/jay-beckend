-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2025 at 08:36 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jay_info`
--

-- --------------------------------------------------------

--
-- Table structure for table `assigns`
--

CREATE TABLE `assigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` int(11) NOT NULL,
  `callId` int(11) NOT NULL,
  `slot` varchar(255) DEFAULT NULL,
  `charge` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assigns`
--

INSERT INTO `assigns` (`id`, `userId`, `callId`, `slot`, `charge`, `date`, `created_at`, `updated_at`) VALUES
(1, 37, 1, 'afternoon', '100', '2024-12-02', '2024-12-02 12:53:37', '2024-12-02 12:53:37'),
(2, 39, 1, 'afternoon', '100', '2024-12-02', '2024-12-02 12:53:37', '2024-12-02 12:53:37'),
(3, 37, 2, 'Morning', '100', '2024-12-02', '2024-12-02 13:08:52', '2024-12-02 13:08:52'),
(4, 39, 2, 'Morning', '100', '2024-12-02', '2024-12-02 13:08:52', '2024-12-02 13:08:52'),
(5, 37, 3, 'Morning', '100', '2024-12-02', '2024-12-02 13:29:35', '2024-12-02 13:29:35'),
(6, 39, 3, 'Morning', '100', '2024-12-02', '2024-12-02 13:29:35', '2024-12-02 13:29:35'),
(7, 37, 4, 'Morning', '100', '2024-12-03', '2024-12-03 05:39:29', '2024-12-03 05:39:29'),
(8, 39, 4, 'Morning', '100', '2024-12-03', '2024-12-03 05:39:29', '2024-12-03 05:39:29'),
(9, 37, 1, 'Morning', '100', '2024-12-03', '2024-12-03 11:35:01', '2024-12-03 11:35:01'),
(10, 39, 1, 'Morning', '100', '2024-12-03', '2024-12-03 11:35:01', '2024-12-03 11:35:01'),
(11, 37, 5, 'Morning', '100', '2024-12-04', '2024-12-04 04:30:58', '2024-12-04 04:30:58'),
(12, 39, 5, 'Morning', '100', '2024-12-04', '2024-12-04 04:30:58', '2024-12-04 04:30:58'),
(13, 37, 6, 'Morning', '500', '2024-12-10', '2024-12-10 10:33:40', '2024-12-10 10:33:40'),
(14, 39, 6, 'Morning', '500', '2024-12-10', '2024-12-10 10:33:40', '2024-12-10 10:33:40'),
(15, 37, 6, 'Morning', '1000', '2024-12-10', '2024-12-10 10:52:39', '2024-12-10 10:52:39'),
(16, 39, 6, 'Morning', '1000', '2024-12-10', '2024-12-10 10:52:39', '2024-12-10 10:52:39'),
(17, 37, 9, 'Morning', '400', '2024-12-16', '2024-12-16 13:18:33', '2024-12-16 13:18:33'),
(18, 39, 9, 'Morning', '400', '2024-12-16', '2024-12-16 13:18:33', '2024-12-16 13:18:33'),
(19, 37, 10, 'Morning', '100', '2024-12-21', '2024-12-21 04:47:02', '2024-12-21 04:47:02'),
(20, 39, 10, 'Morning', '100', '2024-12-21', '2024-12-21 04:47:02', '2024-12-21 04:47:02'),
(21, 38, 2, 'morning', '150', '2025-12-02', '2025-01-16 23:33:49', '2025-01-16 23:33:49'),
(22, 38, 2, 'morning', '150', '2025-12-02', '2025-01-16 23:34:24', '2025-01-16 23:34:24'),
(23, 38, 2, 'morning', '150', '2025-12-02', '2025-01-16 23:34:54', '2025-01-16 23:34:54'),
(24, 38, 2, 'morning', '150', '2025-12-02', '2025-01-16 23:35:16', '2025-01-16 23:35:16'),
(25, 38, 2, 'morning', '150', '2025-12-02', '2025-01-16 23:36:19', '2025-01-16 23:36:19'),
(26, 38, 2, 'morning', '150', '2025-12-02', '2025-01-16 23:36:38', '2025-01-16 23:36:38'),
(27, 38, 2, 'morning', '150', '2025-12-02', '2025-01-16 23:36:57', '2025-01-16 23:36:57'),
(28, 38, 2, 'morning', '150', '2025-12-02', '2025-01-16 23:39:10', '2025-01-16 23:39:10'),
(29, 38, 2, 'morning', '150', '2025-12-02', '2025-01-16 23:39:22', '2025-01-16 23:39:22'),
(30, 38, 2, 'morning', '150', '2025-12-02', '2025-01-16 23:39:36', '2025-01-16 23:39:36'),
(31, 38, 2, 'morning', '150', '2025-12-02', '2025-01-16 23:39:51', '2025-01-16 23:39:51'),
(32, 38, 2, 'morning', '150', '2025-12-02', '2025-01-16 23:40:29', '2025-01-16 23:40:29'),
(33, 38, 2, 'morning', '150', '2025-12-02', '2025-01-16 23:43:32', '2025-01-16 23:43:32'),
(34, 38, 2, 'morning', '500', '2025-01-17', '2025-01-17 04:44:35', '2025-01-17 04:44:35'),
(35, 38, 2, 'morning', '500', '2025-01-17', '2025-01-17 04:46:39', '2025-01-17 04:46:39'),
(36, 38, 2, 'morning', '500', '2025-01-17', '2025-01-17 04:46:55', '2025-01-17 04:46:55'),
(37, 38, 2, 'morning', '500', '2025-01-17', '2025-01-17 04:47:05', '2025-01-17 04:47:05'),
(38, 38, 2, 'morning', '500', '2025-01-17', '2025-01-17 04:47:10', '2025-01-17 04:47:10'),
(39, 36, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:19:42', '2025-01-17 06:19:42'),
(40, 36, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:20:32', '2025-01-17 06:20:32'),
(41, 36, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:20:54', '2025-01-17 06:20:54'),
(42, 2, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:21:02', '2025-01-17 06:21:02'),
(43, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:21:05', '2025-01-17 06:21:05'),
(44, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:21:16', '2025-01-17 06:21:16'),
(45, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:21:46', '2025-01-17 06:21:46'),
(46, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:22:51', '2025-01-17 06:22:51'),
(47, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:23:05', '2025-01-17 06:23:05'),
(48, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:23:13', '2025-01-17 06:23:13'),
(49, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:23:31', '2025-01-17 06:23:31'),
(50, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:25:15', '2025-01-17 06:25:15'),
(51, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:25:59', '2025-01-17 06:25:59'),
(52, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:27:31', '2025-01-17 06:27:31'),
(53, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:27:37', '2025-01-17 06:27:37'),
(54, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:29:28', '2025-01-17 06:29:28'),
(55, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:30:27', '2025-01-17 06:30:27'),
(56, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:31:10', '2025-01-17 06:31:10'),
(57, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:31:27', '2025-01-17 06:31:27'),
(58, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:31:39', '2025-01-17 06:31:39'),
(59, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:32:04', '2025-01-17 06:32:04'),
(60, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:32:24', '2025-01-17 06:32:24'),
(61, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:32:42', '2025-01-17 06:32:42'),
(62, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:33:02', '2025-01-17 06:33:02'),
(63, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:33:47', '2025-01-17 06:33:47'),
(64, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:34:02', '2025-01-17 06:34:02'),
(65, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:34:25', '2025-01-17 06:34:25'),
(66, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:34:58', '2025-01-17 06:34:58'),
(67, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:36:10', '2025-01-17 06:36:10'),
(68, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:37:04', '2025-01-17 06:37:04'),
(69, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:37:19', '2025-01-17 06:37:19'),
(70, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:37:46', '2025-01-17 06:37:46'),
(71, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:39:27', '2025-01-17 06:39:27'),
(72, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:39:45', '2025-01-17 06:39:45'),
(73, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:40:05', '2025-01-17 06:40:05'),
(74, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:40:27', '2025-01-17 06:40:27'),
(75, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:40:37', '2025-01-17 06:40:37'),
(76, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:41:36', '2025-01-17 06:41:36'),
(77, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:41:54', '2025-01-17 06:41:54'),
(78, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:42:23', '2025-01-17 06:42:23'),
(79, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:42:31', '2025-01-17 06:42:31'),
(80, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:43:06', '2025-01-17 06:43:06'),
(81, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:43:21', '2025-01-17 06:43:21'),
(82, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:43:27', '2025-01-17 06:43:27'),
(83, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:43:31', '2025-01-17 06:43:31'),
(84, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:43:38', '2025-01-17 06:43:38'),
(85, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:44:09', '2025-01-17 06:44:09'),
(86, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:44:19', '2025-01-17 06:44:19'),
(87, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:44:58', '2025-01-17 06:44:58'),
(88, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:46:41', '2025-01-17 06:46:41'),
(89, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:46:48', '2025-01-17 06:46:48'),
(90, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:47:14', '2025-01-17 06:47:14'),
(91, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:54:21', '2025-01-17 06:54:21'),
(92, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:54:47', '2025-01-17 06:54:47'),
(93, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:54:51', '2025-01-17 06:54:51'),
(94, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:54:59', '2025-01-17 06:54:59'),
(95, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:55:23', '2025-01-17 06:55:23'),
(96, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:55:42', '2025-01-17 06:55:42'),
(97, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:55:50', '2025-01-17 06:55:50'),
(98, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 06:55:59', '2025-01-17 06:55:59'),
(99, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 08:03:22', '2025-01-17 08:03:22'),
(100, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 08:03:36', '2025-01-17 08:03:36'),
(101, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 08:03:52', '2025-01-17 08:03:52'),
(102, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 08:05:41', '2025-01-17 08:05:41'),
(103, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 08:05:45', '2025-01-17 08:05:45'),
(104, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 08:05:55', '2025-01-17 08:05:55'),
(105, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 08:06:10', '2025-01-17 08:06:10'),
(106, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 08:06:22', '2025-01-17 08:06:22'),
(107, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 08:08:44', '2025-01-17 08:08:44'),
(108, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 08:08:53', '2025-01-17 08:08:53'),
(109, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 08:09:33', '2025-01-17 08:09:33'),
(110, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 08:10:11', '2025-01-17 08:10:11'),
(111, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 08:10:15', '2025-01-17 08:10:15'),
(112, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 08:10:37', '2025-01-17 08:10:37'),
(113, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 08:10:46', '2025-01-17 08:10:46'),
(114, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 08:10:55', '2025-01-17 08:10:55'),
(115, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 08:11:04', '2025-01-17 08:11:04'),
(116, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 08:11:15', '2025-01-17 08:11:15'),
(117, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 08:11:26', '2025-01-17 08:11:26'),
(118, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 08:11:29', '2025-01-17 08:11:29'),
(119, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 08:13:16', '2025-01-17 08:13:16'),
(120, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 08:13:46', '2025-01-17 08:13:46'),
(121, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 08:47:54', '2025-01-17 08:47:54'),
(122, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 08:48:38', '2025-01-17 08:48:38'),
(123, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 08:48:45', '2025-01-17 08:48:45'),
(124, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 08:49:06', '2025-01-17 08:49:06'),
(125, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 08:49:32', '2025-01-17 08:49:32'),
(126, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 08:50:36', '2025-01-17 08:50:36'),
(127, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 08:51:05', '2025-01-17 08:51:05'),
(128, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 08:51:54', '2025-01-17 08:51:54'),
(129, 1, 2, 'morning', '500', '2025-01-17', '2025-01-17 08:52:26', '2025-01-17 08:52:26');

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `date` date NOT NULL DEFAULT '2024-06-19',
  `checkin` time DEFAULT NULL,
  `checkout` time DEFAULT NULL,
  `on_break` time DEFAULT NULL,
  `off_break` time DEFAULT NULL,
  `total_hours` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `user_id`, `date`, `checkin`, `checkout`, `on_break`, `off_break`, `total_hours`, `created_at`, `updated_at`) VALUES
(1, 37, '2024-12-10', '15:36:17', '15:36:27', '15:36:21', '15:36:24', '00:00:07', '2024-12-10 10:06:17', '2024-12-10 10:06:27'),
(2, 37, '2024-12-16', '18:46:14', '18:46:51', '18:46:33', '18:46:44', '00:00:26', '2024-12-16 13:16:14', '2024-12-16 13:16:51'),
(3, 37, '2024-12-17', '09:40:49', '09:40:59', '09:40:52', '09:40:55', '00:00:07', '2024-12-17 04:10:49', '2024-12-17 04:10:59'),
(4, 37, '2024-12-21', '10:13:41', NULL, '10:23:45', NULL, NULL, '2024-12-21 04:43:41', '2024-12-21 04:53:45'),
(5, 38, '2025-01-16', '10:00:00', '18:00:00', '13:15:00', '14:15:00', '07:00:00', '2025-01-16 02:10:53', '2025-01-16 03:57:43'),
(6, 38, '2025-01-15', '17:50:04', '18:12:59', '17:55:25', NULL, '00:22:55', '2025-01-16 05:02:51', '2025-01-16 06:55:25');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('9909941341|127.0.0.1', 'i:2;', 1736342530),
('9909941341|127.0.0.1:timer', 'i:1736342530;', 1736342530),
('admin@gmail.com|127.0.0.1', 'i:1;', 1736587284),
('admin@gmail.com|127.0.0.1:timer', 'i:1736587284;', 1736587284),
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:8:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:9:\"role-list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:11:\"role-create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:9:\"role-edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:11:\"role-delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:9:\"user-list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:11:\"user-create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:9:\"user-edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:11:\"user-delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}}s:5:\"roles\";a:3:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:5:\"Admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:3;s:1:\"b\";s:6:\"Client\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:4:\"User\";s:1:\"c\";s:3:\"web\";}}}', 1737110879);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calllogs`
--

CREATE TABLE `calllogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `userId` int(11) NOT NULL,
  `photo` text DEFAULT NULL,
  `description` text NOT NULL,
  `address` mediumtext DEFAULT NULL,
  `part_name` varchar(255) DEFAULT NULL,
  `payment_method` enum('cash','qr','debit') DEFAULT NULL,
  `total_charge` int(50) DEFAULT NULL,
  `qr_id` int(50) DEFAULT NULL,
  `status` enum('pending','cancelled','allocated','completed','waiting') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `calllogs`
--

INSERT INTO `calllogs` (`id`, `date`, `userId`, `photo`, `description`, `address`, `part_name`, `payment_method`, `total_charge`, `qr_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '2024-12-02', 42, NULL, 'office Camera not working', 'Flipcode solution pvt LTD, Yoginagar society, near panama sales, dalmil road, surendranagar, gujarat, 363001', 'cctv lens', 'cash', 550, NULL, 'completed', '2024-12-02 12:47:54', '2024-12-25 05:35:21'),
(2, '2024-12-03', 38, NULL, 'test by ravi', 'bapunagar', NULL, 'cash', 500, NULL, 'cancelled', '2024-12-02 12:58:01', '2025-01-17 23:49:32'),
(3, '2024-12-02', 38, NULL, 'testing', 'address', NULL, 'qr', NULL, 2, 'completed', '2024-12-02 13:27:51', '2024-12-10 10:02:14'),
(4, '2024-12-03', 38, NULL, 'testing', 'testing', NULL, 'cash', 150, NULL, 'waiting', '2024-12-03 05:21:25', '2025-01-07 08:37:49'),
(5, '2024-12-03', 38, '1733226678.jpg', 'test', 'test', NULL, 'qr', 150, NULL, 'cancelled', '2024-12-03 11:51:18', '2025-01-07 08:37:57'),
(6, '2024-12-12', 38, '1733826624.jpg', 'test', 'Surendranagar', NULL, 'qr', 200, 2, 'allocated', '2024-12-10 10:30:24', '2025-01-07 08:39:49'),
(7, '2024-12-10', 38, NULL, 'h7g7g', 'bvini', NULL, 'debit', NULL, NULL, 'cancelled', '2024-12-10 10:42:19', '2024-12-10 10:43:35'),
(8, '2024-12-11', 38, '1733827382.jpg', 'yg6g', 'ggfb', NULL, NULL, NULL, NULL, 'waiting', '2024-12-10 10:43:02', '2024-12-10 10:43:20'),
(9, '2024-12-16', 38, '1734337057.jpg', 'test', 'test', NULL, NULL, NULL, NULL, 'allocated', '2024-12-16 08:17:37', '2024-12-16 13:18:33'),
(10, '2024-12-21', 38, '1734756378.jpg', 'fault dvr', 'test address', NULL, NULL, NULL, NULL, 'allocated', '2024-12-21 04:46:18', '2024-12-21 04:47:02'),
(11, '2025-01-17', 38, NULL, 'test', 'test', NULL, NULL, NULL, NULL, 'pending', '2025-01-16 04:45:22', '2025-01-16 04:45:22'),
(12, '2025-01-17', 38, NULL, 'test', 'test', NULL, NULL, NULL, NULL, 'pending', '2025-01-16 04:55:54', '2025-01-16 04:55:54'),
(13, '2025-01-17', 38, NULL, 'test', 'test', NULL, NULL, NULL, NULL, 'pending', '2025-01-16 05:17:31', '2025-01-16 05:17:31'),
(14, '2025-01-17', 38, NULL, 'test', 'test', NULL, NULL, NULL, NULL, 'pending', '2025-01-16 05:19:09', '2025-01-16 05:19:09'),
(15, '2025-01-17', 38, NULL, 'test', 'test', NULL, NULL, NULL, NULL, 'pending', '2025-01-16 05:20:10', '2025-01-16 05:20:10'),
(16, '2025-01-17', 38, NULL, 'test', 'test', NULL, NULL, NULL, NULL, 'pending', '2025-01-16 05:20:18', '2025-01-16 05:20:18'),
(17, '2025-01-17', 38, NULL, 'test', 'test', NULL, NULL, NULL, NULL, 'pending', '2025-01-16 05:20:28', '2025-01-16 05:20:28'),
(18, '2025-01-17', 38, NULL, 'test', 'test', NULL, NULL, NULL, NULL, 'pending', '2025-01-16 05:20:40', '2025-01-16 05:20:40'),
(19, '2025-01-17', 38, NULL, 'test', 'test', NULL, NULL, NULL, NULL, 'pending', '2025-01-16 05:21:06', '2025-01-16 05:21:06'),
(20, '2025-01-17', 38, NULL, 'test', 'test', NULL, NULL, NULL, NULL, 'pending', '2025-01-16 05:21:21', '2025-01-16 05:21:21'),
(21, '2025-01-17', 38, NULL, 'test', 'test', NULL, 'cash', 500, NULL, 'completed', '2025-01-16 05:21:39', '2025-01-17 01:05:22'),
(22, '2025-01-17', 38, NULL, 'test', 'test', NULL, 'cash', 500, NULL, 'completed', '2025-01-16 05:21:44', '2025-01-17 02:00:59'),
(23, '2025-01-17', 38, NULL, 'test', 'test', NULL, NULL, NULL, NULL, 'pending', '2025-01-16 05:22:15', '2025-01-16 05:22:15'),
(24, '2025-01-17', 38, NULL, 'test', 'test', NULL, NULL, NULL, NULL, 'pending', '2025-01-16 05:22:49', '2025-01-16 05:22:49'),
(25, '2025-01-17', 38, NULL, 'test', 'test', NULL, NULL, NULL, NULL, 'pending', '2025-01-16 05:22:54', '2025-01-16 05:22:54'),
(26, '2025-01-17', 38, NULL, 'test', 'test', NULL, NULL, NULL, NULL, 'pending', '2025-01-16 05:23:36', '2025-01-16 05:23:36'),
(27, '2025-01-17', 38, NULL, 'test', 'test', NULL, NULL, NULL, NULL, 'pending', '2025-01-16 05:24:49', '2025-01-16 05:24:49');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` int(11) NOT NULL,
  `leaveType` varchar(255) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `reason` longtext DEFAULT NULL,
  `status` enum('Pending','Approved','Rejected') NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `userId`, `leaveType`, `startDate`, `endDate`, `reason`, `status`, `created_at`, `updated_at`) VALUES
(1, 37, 'Half Day Leave (Second Half)', '2024-12-10', '2024-12-10', 'going to attend family function', 'Approved', '2024-12-10 10:07:21', '2024-12-10 10:11:46'),
(2, 37, 'Plan Leave', '2024-12-13', '2024-12-20', 'going on tour', 'Rejected', '2024-12-10 10:08:04', '2024-12-10 10:11:38'),
(3, 37, 'Plan Leave', '2024-12-13', '2024-12-14', 'h7h7', 'Rejected', '2024-12-10 10:09:35', '2024-12-10 10:11:25'),
(4, 37, 'Plan Leave', '2024-12-14', '2024-12-14', 'not feelin well', 'Pending', '2024-12-10 10:23:22', '2024-12-10 10:23:22'),
(5, 37, 'Plan Leave', '2024-12-20', '2024-12-31', 'testing', 'Pending', '2024-12-17 06:25:59', '2024-12-17 06:25:59'),
(6, 37, 'Plan Leave', '2024-12-20', '2024-12-21', 'testing', 'Pending', '2024-12-17 06:26:24', '2024-12-17 06:26:24'),
(7, 37, 'Plan Leave', '2024-12-20', '2024-12-20', 'test', 'Pending', '2024-12-17 06:27:52', '2024-12-17 06:27:52'),
(8, 37, 'Plan Leave', '2024-12-21', '2024-12-24', 'test', 'Pending', '2024-12-18 11:42:26', '2024-12-18 11:42:26'),
(9, 37, 'Plan Leave', '2024-12-21', '2024-12-22', 'test', 'Pending', '2024-12-18 11:45:58', '2024-12-18 11:45:58'),
(10, 37, 'Plan Leave', '2024-12-21', '2024-12-22', 'test', 'Pending', '2024-12-18 11:46:49', '2024-12-18 11:46:49'),
(11, 37, 'Emergency Leave', '2024-12-18', '2024-12-18', 'test', 'Pending', '2024-12-18 11:53:45', '2024-12-18 11:53:45'),
(12, 38, 'casual', '2024-12-12', '2024-12-14', 'maza nhi aa rha', 'Pending', '2024-12-27 00:57:41', '2024-12-27 00:57:41'),
(13, 38, 'casual', '2024-12-12', '2024-12-14', 'maza nhi aa rha', 'Pending', '2024-12-27 01:02:23', '2024-12-27 01:02:23'),
(14, 38, 'casual', '2024-12-12', '2024-12-14', 'maza nhi aa rha', 'Pending', '2024-12-27 01:07:35', '2024-12-27 01:07:35'),
(15, 38, 'casual', '2024-12-12', '2024-12-14', 'maza nhi aa rha', 'Pending', '2024-12-27 01:08:27', '2024-12-27 01:08:27'),
(16, 38, 'casual', '2024-12-12', '2024-12-14', 'maza nhi aa rha', 'Approved', '2024-12-27 01:18:33', '2024-12-29 23:43:23'),
(17, 37, 'casual', '2024-12-12', '2024-12-14', 'maza nhi aa rha', 'Pending', '2025-01-02 01:05:15', '2025-01-02 01:05:15'),
(18, 37, 'casual', '2024-12-12', '2024-12-14', 'maza nhi aa rha', 'Pending', '2025-01-02 01:06:06', '2025-01-02 01:06:06'),
(19, 37, 'casual', '2024-12-12', '2024-12-14', 'maza nhi aa rha', 'Pending', '2025-01-02 01:09:28', '2025-01-02 01:09:28'),
(20, 37, 'casual', '2024-12-12', '2024-12-14', 'maza nhi aa rha', 'Pending', '2025-01-02 01:45:36', '2025-01-02 01:45:36');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_20_052917_create_permission_tables', 1),
(5, '2024_05_20_052941_create_products_table', 1),
(6, '2024_06_17_091242_create_personal_access_tokens_table', 1),
(7, '2024_06_17_094319_create_attandance_table', 1),
(8, '2024_11_19_133736_create_teammembers_table', 2),
(9, '2024_11_19_133703_create_teams_table', 3),
(10, '2024_11_20_063528_create_calllog_table', 4),
(11, '2024_11_20_064848_create_calllogs_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 21),
(1, 'App\\Models\\User', 29),
(1, 'App\\Models\\User', 31),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 10),
(2, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 12),
(2, 'App\\Models\\User', 13),
(2, 'App\\Models\\User', 14),
(2, 'App\\Models\\User', 15),
(2, 'App\\Models\\User', 16),
(2, 'App\\Models\\User', 17),
(2, 'App\\Models\\User', 18),
(2, 'App\\Models\\User', 19),
(2, 'App\\Models\\User', 24),
(2, 'App\\Models\\User', 25),
(2, 'App\\Models\\User', 26),
(2, 'App\\Models\\User', 27),
(2, 'App\\Models\\User', 28),
(2, 'App\\Models\\User', 30),
(2, 'App\\Models\\User', 32),
(2, 'App\\Models\\User', 33),
(2, 'App\\Models\\User', 34),
(2, 'App\\Models\\User', 35),
(2, 'App\\Models\\User', 36),
(2, 'App\\Models\\User', 37),
(2, 'App\\Models\\User', 42),
(3, 'App\\Models\\User', 38);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `detail` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `detail`, `created_at`, `updated_at`) VALUES
(29, 'test', 'test', '2025-01-07 01:19:20', '2025-01-07 01:19:20'),
(30, 'New Call Log Created', 'A new call log has been created on 2025-01-17', '2025-01-16 04:45:22', '2025-01-16 04:45:22'),
(31, 'New Call Log Created', 'A new call log has been created on 2025-01-17', '2025-01-16 04:55:54', '2025-01-16 04:55:54'),
(32, 'New Call Log Created', 'A new call log has been created on 2025-01-17', '2025-01-16 05:22:58', '2025-01-16 05:22:58'),
(33, 'New Call Log Created', 'A new call log has been created on 2025-01-17', '2025-01-16 05:24:50', '2025-01-16 05:24:50'),
(34, 'Task Completed', 'Task Completed Successfully', '2025-01-17 01:44:09', '2025-01-17 01:44:09'),
(35, 'Task Completed', 'Task Completed Successfully', '2025-01-17 02:13:26', '2025-01-17 02:13:26'),
(36, 'Task assigned To You', 'A new task has been assigned to you by Admin', '2025-01-17 04:44:35', '2025-01-17 04:44:35'),
(37, 'Task assigned To You', 'A new task has been assigned to you by Admin', '2025-01-17 04:47:10', '2025-01-17 04:47:10'),
(38, 'Task Completed', 'Task Completed Successfully', '2025-01-17 04:48:25', '2025-01-17 04:48:25'),
(39, 'Task Completed', 'Task Completed Successfully', '2025-01-17 04:53:13', '2025-01-17 04:53:13'),
(40, 'Task assigned To You', 'A new task has been assigned to you by Admin', '2025-01-17 06:20:33', '2025-01-17 06:20:33'),
(41, 'Task assigned To You', 'A new task has been assigned to you by Admin', '2025-01-17 06:21:16', '2025-01-17 06:21:16'),
(42, 'Task Assigned To Raviraj', 'A new task has been assigned to Raviraj', '2025-01-17 06:37:04', '2025-01-17 06:37:04'),
(43, 'Task Assigned To Raviraj', 'A new task has been assigned to Raviraj', '2025-01-17 08:13:16', '2025-01-17 08:13:16'),
(44, ' Call Assigned', 'Call #2 has been assigned to Raviraj', '2025-01-17 08:52:26', '2025-01-17 08:52:26'),
(45, 'Call Log Status Changed', 'The status of call #2 log has been changed to cancelled', '2025-01-17 23:49:33', '2025-01-17 23:49:33'),
(46, 'Call Log Status Changed', 'The status of call #2 log has been changed to cancelled', '2025-01-17 23:50:19', '2025-01-17 23:50:19'),
(47, 'Call Log Status Changed', 'The status of call #2 log has been changed to cancelled', '2025-01-17 23:52:44', '2025-01-17 23:52:44'),
(48, 'Call Log Status Changed', 'The status of call #2 log has been changed to cancelled', '2025-01-18 00:22:02', '2025-01-18 00:22:02');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('Jaydevmori2003@gmail.com', '$2y$12$dgy.g.tBPc5Bzm7ts5Qc9.xIZRDK0oNupA0bGzx7NQvNgMsIVZYfu', '2024-06-20 01:14:36');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2024-06-18 22:53:15', '2024-06-18 22:53:15'),
(2, 'role-create', 'web', '2024-06-18 22:53:15', '2024-06-18 22:53:15'),
(3, 'role-edit', 'web', '2024-06-18 22:53:15', '2024-06-18 22:53:15'),
(4, 'role-delete', 'web', '2024-06-18 22:53:15', '2024-06-18 22:53:15'),
(5, 'user-list', 'web', '2024-06-18 22:53:15', '2024-06-18 22:53:15'),
(6, 'user-create', 'web', '2024-06-18 22:53:15', '2024-06-18 22:53:15'),
(7, 'user-edit', 'web', '2024-06-18 22:53:15', '2024-06-18 22:53:15'),
(8, 'user-delete', 'web', '2024-06-18 22:53:15', '2024-06-18 22:53:15');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'API TOKEN', '77a2dd04968bf322fb32adc82177a4faef64d0a7ee9e4dee3451571ff6c7cf03', '[\"*\"]', '2024-06-18 23:15:31', NULL, '2024-06-18 23:14:06', '2024-06-18 23:15:31'),
(2, 'App\\Models\\User', 3, 'API TOKEN', 'b10aa950e40a845c397df4aed4608575d45acb0f5dc2db4137d0bf675f72212d', '[\"*\"]', '2024-06-19 00:26:46', NULL, '2024-06-19 00:24:17', '2024-06-19 00:26:46'),
(3, 'App\\Models\\User', 4, 'API TOKEN', '11f0bdb077518009d7a467304bcd2b23608de66d4952bbd40754e6a7cd056461', '[\"*\"]', '2024-06-19 01:12:12', NULL, '2024-06-19 00:28:32', '2024-06-19 01:12:12'),
(4, 'App\\Models\\User', 4, 'API TOKEN', '3ac8c8fe05d5d6f048e6b47c5e60dffab4f79a6f03e6efdd7e6577ef98b22f49', '[\"*\"]', '2024-06-19 01:14:53', NULL, '2024-06-19 01:14:23', '2024-06-19 01:14:53'),
(5, 'App\\Models\\User', 4, 'API TOKEN', 'b67d665a50441a1282984b2da45bf0ae4a725226c60c310c541b7f9ac6b03536', '[\"*\"]', '2024-06-19 01:23:39', NULL, '2024-06-19 01:21:07', '2024-06-19 01:23:39'),
(6, 'App\\Models\\User', 5, 'API TOKEN', '8144f25ab0b106ac4e9cd51fca6c4cbe9d1b3d05b9244a1d62b25d368e829172', '[\"*\"]', '2024-06-19 03:47:02', NULL, '2024-06-19 01:25:14', '2024-06-19 03:47:02'),
(7, 'App\\Models\\User', 5, 'API TOKEN', '4374cafe43c5aec49168d85ca3e93c66e6c70b0998be36f67bc5d7b0e3d4d331', '[\"*\"]', '2024-06-19 01:42:41', NULL, '2024-06-19 01:42:30', '2024-06-19 01:42:41'),
(8, 'App\\Models\\User', 1, 'API TOKEN', '1be5017776fd97d2adfc95e801f131e1e6faacafa0b24560f9ec2d24be3f7de4', '[\"*\"]', '2024-06-19 01:47:56', NULL, '2024-06-19 01:46:16', '2024-06-19 01:47:56'),
(9, 'App\\Models\\User', 2, 'API TOKEN', 'e30f4b7dc615594813f3dd944cc280f1faaf493f531c034bf7d15bbb05357ceb', '[\"*\"]', '2024-06-19 01:49:06', NULL, '2024-06-19 01:48:55', '2024-06-19 01:49:06'),
(10, 'App\\Models\\User', 6, 'API TOKEN', '5b667a4eeabbf012b65b42b2da3453a8cf0b2a972db9824ad035d28d6ba8d2aa', '[\"*\"]', '2024-06-19 04:05:54', NULL, '2024-06-19 03:53:31', '2024-06-19 04:05:54'),
(11, 'App\\Models\\User', 6, 'API TOKEN', 'dffa6e5cbfb1a4e1d99bec045d61e72e812e4123daa69bc8cfb0cccae27ac8b8', '[\"*\"]', '2024-06-19 04:09:04', NULL, '2024-06-19 04:08:47', '2024-06-19 04:09:04'),
(12, 'App\\Models\\User', 2, 'API TOKEN', '93c56174b578b78a296ec50ca7cbd63cd14aedd1fb5d7e59ec975c52e1d96de6', '[\"*\"]', NULL, NULL, '2024-06-19 04:10:58', '2024-06-19 04:10:58'),
(13, 'App\\Models\\User', 2, 'API TOKEN', 'e9880b8ee5b491983c85f95fd490a5e539f2478695f8a00264b4e4de0d551703', '[\"*\"]', '2024-06-19 04:12:07', NULL, '2024-06-19 04:11:50', '2024-06-19 04:12:07'),
(14, 'App\\Models\\User', 6, 'API TOKEN', '79d1142a77a6858c6270881cd7a5307965d9eee4bc1827b9032fee315b20506e', '[\"*\"]', '2024-06-19 04:19:06', NULL, '2024-06-19 04:13:14', '2024-06-19 04:19:06'),
(15, 'App\\Models\\User', 2, 'API TOKEN', '764519815cffc917751f3153e0fb2afdc51135063680e768d4e83b304b83bb40', '[\"*\"]', '2024-06-19 04:20:03', NULL, '2024-06-19 04:19:25', '2024-06-19 04:20:03'),
(16, 'App\\Models\\User', 6, 'API TOKEN', '4c47f601977d5a8847ae3eb5ec1a59613ee9d6356c860e0d1fea03c8ce361068', '[\"*\"]', '2024-06-19 04:21:14', NULL, '2024-06-19 04:20:56', '2024-06-19 04:21:14'),
(17, 'App\\Models\\User', 7, 'API TOKEN', '6f3cb16284b0b82ab5ee31abe09882938a4bed0ac7d8b4291422f9e15aad57e2', '[\"*\"]', '2024-06-19 04:28:53', NULL, '2024-06-19 04:27:09', '2024-06-19 04:28:53'),
(18, 'App\\Models\\User', 4, 'API TOKEN', 'b33a99b20eaa9d49c5ae46959058a471fdf2821af6d292737d7041a6500e4a95', '[\"*\"]', '2024-06-19 04:30:52', NULL, '2024-06-19 04:29:52', '2024-06-19 04:30:52'),
(19, 'App\\Models\\User', 4, 'API TOKEN', 'a1ebdef7829fa63fe23302ec482f94f6be5885b9107ec61ab5db9be7dfdbb0d4', '[\"*\"]', '2024-06-19 04:31:41', NULL, '2024-06-19 04:31:19', '2024-06-19 04:31:41'),
(20, 'App\\Models\\User', 9, 'API TOKEN', 'cd6ecbf9ef601aff91172640b2b5f262a405c65b2cae7c9c81af8bc54363f8a0', '[\"*\"]', '2024-06-19 04:44:53', NULL, '2024-06-19 04:43:32', '2024-06-19 04:44:53'),
(21, 'App\\Models\\User', 5, 'API TOKEN', '208063a702d3a2bacaa204a31d9bc25a84fd305d617267ca6c3b85bc86963aaf', '[\"*\"]', '2024-06-19 04:46:18', NULL, '2024-06-19 04:46:03', '2024-06-19 04:46:18'),
(22, 'App\\Models\\User', 6, 'API TOKEN', 'd51f69249c4ac76c3dd3b6062d084115aceb66b03fbebc567c438c358fda992b', '[\"*\"]', '2024-06-19 04:49:30', NULL, '2024-06-19 04:49:17', '2024-06-19 04:49:30'),
(23, 'App\\Models\\User', 7, 'API TOKEN', '872b16ed53e1234e6fa17fa0a23a471f05650b0f2eae0af56bea1d76ebd1bbdb', '[\"*\"]', '2024-06-19 04:50:15', NULL, '2024-06-19 04:49:48', '2024-06-19 04:50:15'),
(24, 'App\\Models\\User', 9, 'API TOKEN', '3aa71c2e51f5356f998f617323eacf40e8dff4f695a034a40ad789cd784fa633', '[\"*\"]', '2024-06-19 04:55:39', NULL, '2024-06-19 04:55:29', '2024-06-19 04:55:39'),
(25, 'App\\Models\\User', 10, 'API TOKEN', '30a2ac864711cc715f0a472c2102300c8a770782c600291c38d8c7f5ea08a338', '[\"*\"]', '2024-06-19 04:59:57', NULL, '2024-06-19 04:58:12', '2024-06-19 04:59:57'),
(26, 'App\\Models\\User', 9, 'API TOKEN', '92e2a9b94c2e0d707d2f3918f7699e05fedb67bf9667a46389c4193dbc6f8ba7', '[\"*\"]', '2024-06-19 05:01:40', NULL, '2024-06-19 05:00:30', '2024-06-19 05:01:40'),
(27, 'App\\Models\\User', 9, 'API TOKEN', 'c42f77bc0c54fbc27da3b84e67bf939cc93aa87c8dd21b4ef692ca468ddce895', '[\"*\"]', '2024-06-19 05:05:30', NULL, '2024-06-19 05:02:25', '2024-06-19 05:05:30'),
(28, 'App\\Models\\User', 9, 'API TOKEN', 'd8c116ce61d12ee649ac2b78818964435bde7dd2602cf088ea751868c888f284', '[\"*\"]', '2024-06-19 05:18:34', NULL, '2024-06-19 05:07:25', '2024-06-19 05:18:34'),
(29, 'App\\Models\\User', 10, 'API TOKEN', '57e8985b1ad2b8309bdfca9e21a7ea9b450718ac4f9a580ae0847d96b3ac9581', '[\"*\"]', '2024-06-19 05:19:32', NULL, '2024-06-19 05:19:21', '2024-06-19 05:19:32'),
(30, 'App\\Models\\User', 2, 'API TOKEN', 'c56c216ae75b1ad0765caf55b5c6e4a9433fb7affd3a84949ef4dabac1a041c9', '[\"*\"]', '2024-06-19 05:20:06', NULL, '2024-06-19 05:19:53', '2024-06-19 05:20:06'),
(31, 'App\\Models\\User', 11, 'API TOKEN', '3f684a6e30bd909b770eb79a343cb28b7cd777e13f9202eb35f0b158fb98e780', '[\"*\"]', '2024-06-19 05:24:37', NULL, '2024-06-19 05:22:59', '2024-06-19 05:24:37'),
(32, 'App\\Models\\User', 2, 'API TOKEN', '952b6e4335da735e61ffcd67e529ea5edf6a9ba360f54e562b82eae020fca376', '[\"*\"]', '2024-06-19 23:56:31', NULL, '2024-06-19 23:55:07', '2024-06-19 23:56:31'),
(33, 'App\\Models\\User', 2, 'API TOKEN', 'b7e0e1a56f391fa141ba0db66290a1e1bb2b092850776d655f605116c7e05ccf', '[\"*\"]', '2024-06-20 01:16:24', NULL, '2024-06-20 01:16:06', '2024-06-20 01:16:24'),
(34, 'App\\Models\\User', 1, 'API TOKEN', 'fb7999c6bdc825d886ad3c1caf84214daa096640083bdbb0af2450c9b9697029', '[\"*\"]', '2024-06-20 08:57:07', NULL, '2024-06-20 08:56:11', '2024-06-20 08:57:07'),
(35, 'App\\Models\\User', 2, 'API TOKEN', '613c5b146ae470dcf2dc2b0ff2c4abc04880fcd34d6b9ebf06809245f17371d8', '[\"*\"]', '2024-06-25 12:54:48', NULL, '2024-06-20 09:01:09', '2024-06-25 12:54:48'),
(36, 'App\\Models\\User', 2, 'API TOKEN', 'af774ac42f60ad1b752db5cfdb33334f0f61d7cb5fb01284bff2519355355cf2', '[\"*\"]', NULL, NULL, '2024-06-20 09:23:04', '2024-06-20 09:23:04'),
(37, 'App\\Models\\User', 2, 'API TOKEN', '66d37554f54b4a6742863b6ff642c28c39e2d42ec5019376036874a29e2bed68', '[\"*\"]', NULL, NULL, '2024-06-20 09:24:18', '2024-06-20 09:24:18'),
(38, 'App\\Models\\User', 2, 'API TOKEN', '272b8f2bc7c31be674c36d74fe5a0f2e84ee4147cc0e229b87925a8fa837a7a2', '[\"*\"]', NULL, NULL, '2024-06-20 09:29:01', '2024-06-20 09:29:01'),
(39, 'App\\Models\\User', 2, 'API TOKEN', '2162d080aaad88846e66ec66bcd86aab51f1c51b7047d7dc4b914a7bf2915bfe', '[\"*\"]', NULL, NULL, '2024-06-20 09:41:20', '2024-06-20 09:41:20'),
(40, 'App\\Models\\User', 2, 'API TOKEN', '264401dbcfde5404caf7c627c8dc4366c0f4a0801bbe78976b9a54067c9b3e62', '[\"*\"]', NULL, NULL, '2024-06-20 09:53:16', '2024-06-20 09:53:16'),
(41, 'App\\Models\\User', 2, 'API TOKEN', 'ec361badcd9923628abbe41b1531960c896b6bc11f365e7d081e6bc068d4198d', '[\"*\"]', NULL, NULL, '2024-06-20 09:53:37', '2024-06-20 09:53:37'),
(42, 'App\\Models\\User', 2, 'API TOKEN', '927572f310c9ce82489b3291cbbd55cfc418f8fd836d184485ec7b9ab430af21', '[\"*\"]', NULL, NULL, '2024-06-20 09:53:54', '2024-06-20 09:53:54'),
(43, 'App\\Models\\User', 2, 'API TOKEN', '277ad392e4847dcb86ad60b21c685abb097c511ddbf45ae595f2b7bf621a1cac', '[\"*\"]', NULL, NULL, '2024-06-20 10:00:52', '2024-06-20 10:00:52'),
(44, 'App\\Models\\User', 2, 'API TOKEN', '766bfdde3cd5ab1e8d292c84df277120623d0ccb1de88855634c521842b124bf', '[\"*\"]', '2024-06-20 11:10:51', NULL, '2024-06-20 10:13:43', '2024-06-20 11:10:51'),
(45, 'App\\Models\\User', 2, 'API TOKEN', '865d3a265846713702d0633a35ebe5587a9ac0ad33d9df4cc76324d00e6254c3', '[\"*\"]', NULL, NULL, '2024-06-20 10:14:01', '2024-06-20 10:14:01'),
(46, 'App\\Models\\User', 2, 'API TOKEN', '2d12d06fff064ce31a1b1650aeecaaafe5db89264f1b5535867817c52ce39d0b', '[\"*\"]', NULL, NULL, '2024-06-20 10:22:19', '2024-06-20 10:22:19'),
(47, 'App\\Models\\User', 2, 'API TOKEN', '0fa379befdb18bf942507c9f42bd8805595c0a9585b700b8fdad22d6fdc61a95', '[\"*\"]', NULL, NULL, '2024-06-20 10:23:30', '2024-06-20 10:23:30'),
(48, 'App\\Models\\User', 2, 'API TOKEN', '058b4f76716560f3422311cbb8da986b78cf1fd66f697d4de434d6fc2687d635', '[\"*\"]', NULL, NULL, '2024-06-20 10:29:13', '2024-06-20 10:29:13'),
(49, 'App\\Models\\User', 2, 'API TOKEN', 'fd749aa4df61a937907cdfda5de6001dd37b794ea969a6c24a3ef315b8121837', '[\"*\"]', NULL, NULL, '2024-06-20 10:30:32', '2024-06-20 10:30:32'),
(50, 'App\\Models\\User', 2, 'API TOKEN', '2b4ce513af197e99246ac6bb5c35d72855d0d500d02e3d9c878fd6d3a259c529', '[\"*\"]', NULL, NULL, '2024-06-20 11:16:05', '2024-06-20 11:16:05'),
(51, 'App\\Models\\User', 2, 'API TOKEN', 'a30159829fc85ec2793ff030916eeff7ee7fc47cd4e85224e30b192aff945ad7', '[\"*\"]', NULL, NULL, '2024-06-20 11:18:34', '2024-06-20 11:18:34'),
(52, 'App\\Models\\User', 2, 'API TOKEN', '9f5c783d9eb632d00d09f5624dc7ae4db64c47749bcd9fbddd4454088915e4d4', '[\"*\"]', NULL, NULL, '2024-06-20 11:19:56', '2024-06-20 11:19:56'),
(53, 'App\\Models\\User', 2, 'API TOKEN', '83ca127ce096db5a5d335bd18f6149e6547024d2b12254c0139b77937d1a0106', '[\"*\"]', NULL, NULL, '2024-06-20 11:26:49', '2024-06-20 11:26:49'),
(54, 'App\\Models\\User', 2, 'API TOKEN', '580ae570ead9e5fe7177454820823a4ab1d6d3a7402aa8f24f32a9bc0c698825', '[\"*\"]', NULL, NULL, '2024-06-20 11:28:24', '2024-06-20 11:28:24'),
(55, 'App\\Models\\User', 2, 'API TOKEN', '52ffe83d3a4f5c6e52028e0d8915d5e2d083d6b5920ccd763c25b09fc8c11708', '[\"*\"]', NULL, NULL, '2024-06-20 11:37:57', '2024-06-20 11:37:57'),
(56, 'App\\Models\\User', 2, 'API TOKEN', '1f24c5f0ffc106d876b5f6e98aa61147014263706616da6fe159e5a74e4e39cc', '[\"*\"]', NULL, NULL, '2024-06-20 11:43:45', '2024-06-20 11:43:45'),
(57, 'App\\Models\\User', 2, 'API TOKEN', 'c0eaa9e0f7bf2a955b04761aac7f02443f3fa862a2f52214be434af1fd422e27', '[\"*\"]', NULL, NULL, '2024-06-20 11:46:23', '2024-06-20 11:46:23'),
(58, 'App\\Models\\User', 2, 'API TOKEN', '5a37c95e3b297d60a73e2a78ef0dc844c47c9770515b283b3a3418f8409789ef', '[\"*\"]', NULL, NULL, '2024-06-20 11:50:27', '2024-06-20 11:50:27'),
(59, 'App\\Models\\User', 2, 'API TOKEN', '019f4e8b2dd2be1b4ddd6d11c2332e24da38371247727fc85bb55113b24d2ac1', '[\"*\"]', NULL, NULL, '2024-06-20 13:36:59', '2024-06-20 13:36:59'),
(60, 'App\\Models\\User', 2, 'API TOKEN', '1ffc63e18f2bc79855f45444aeaffd1b990efd6d17f2c3d5d9a34c7958223dae', '[\"*\"]', NULL, NULL, '2024-06-21 05:19:57', '2024-06-21 05:19:57'),
(61, 'App\\Models\\User', 2, 'API TOKEN', '9c922ebfed41b0b16264f488c5b5c9dd3982a01bf627528c6b1dd1e8815fd74d', '[\"*\"]', '2024-06-21 07:35:53', NULL, '2024-06-21 05:19:57', '2024-06-21 07:35:53'),
(62, 'App\\Models\\User', 2, 'API TOKEN', 'fcad703362bf7e7d630ad96fc7713701f061adbb3d78943f0dc024f2242e9798', '[\"*\"]', '2024-06-21 05:55:28', NULL, '2024-06-21 05:55:16', '2024-06-21 05:55:28'),
(63, 'App\\Models\\User', 2, 'API TOKEN', 'c488313c64a11290dee68844ef543724c4fbc748cfc159c5b12b3d7990f39a45', '[\"*\"]', '2024-06-21 06:08:09', NULL, '2024-06-21 06:05:31', '2024-06-21 06:08:09'),
(64, 'App\\Models\\User', 2, 'API TOKEN', '2096c0f7b7a39992cc8f4d91271737138c7785af4e7a4fa4a56b5ce3c116be96', '[\"*\"]', '2024-06-21 08:28:14', NULL, '2024-06-21 06:50:54', '2024-06-21 08:28:14'),
(65, 'App\\Models\\User', 2, 'API TOKEN', '210f870509987c69e5b3c47d541a638adfa9abac3952609b0e47210d83f10883', '[\"*\"]', '2024-06-21 07:39:24', NULL, '2024-06-21 07:37:40', '2024-06-21 07:39:24'),
(66, 'App\\Models\\User', 2, 'API TOKEN', '89e823c539ee8e4fee1bb053b15b7d371499db31112eb4bcf3f02b8124118d5e', '[\"*\"]', '2024-06-21 12:04:18', NULL, '2024-06-21 09:01:40', '2024-06-21 12:04:18'),
(67, 'App\\Models\\User', 2, 'API TOKEN', '64987864b4b441b3e8751815a76e87a748e4c7445011a003351206801b5b9a38', '[\"*\"]', '2024-06-21 12:55:45', NULL, '2024-06-21 12:06:29', '2024-06-21 12:55:45'),
(68, 'App\\Models\\User', 2, 'API TOKEN', 'eda4bf8c5b61de25bcde78291b3fa94fbb3c3d28bf4c84547f84a97ec370bc26', '[\"*\"]', '2024-06-24 12:07:34', NULL, '2024-06-24 05:35:45', '2024-06-24 12:07:34'),
(69, 'App\\Models\\User', 2, 'API TOKEN', 'b8d7a3c108b1ebed22a97f2423c000c25b6170c0be5af94030c10209b60ba348', '[\"*\"]', NULL, NULL, '2024-06-24 12:00:54', '2024-06-24 12:00:54'),
(70, 'App\\Models\\User', 2, 'API TOKEN', 'ed3fd1391a3d59d24f4400d3ea10847abe76bc636b99eb227dc7b4e424aeebee', '[\"*\"]', '2024-06-24 12:16:11', NULL, '2024-06-24 12:01:49', '2024-06-24 12:16:11'),
(71, 'App\\Models\\User', 2, 'API TOKEN', 'eccdf3cebbbac4b54a402bb815d325a41c0d7eab93f865c591757fab66b9a87c', '[\"*\"]', '2024-06-24 12:19:42', NULL, '2024-06-24 12:17:50', '2024-06-24 12:19:42'),
(72, 'App\\Models\\User', 2, 'API TOKEN', '0dc52de3422a1a116b56c5756911dc523e1423c76e252272c7a7576736483c32', '[\"*\"]', '2024-06-24 13:11:29', NULL, '2024-06-24 12:21:18', '2024-06-24 13:11:29'),
(73, 'App\\Models\\User', 2, 'API TOKEN', 'a10c0f27307d61902fb58a7d71e3d5a51d3c9626a6938e049e970b9f6ee5e0e4', '[\"*\"]', '2024-06-26 11:31:45', NULL, '2024-06-26 05:43:28', '2024-06-26 11:31:45'),
(74, 'App\\Models\\User', 2, 'API TOKEN', '67bbfc5bd7dc508c1cfc10dd6d804a7c950bd63dbb7b79b701b1ff599599e60a', '[\"*\"]', '2024-06-26 07:47:56', NULL, '2024-06-26 06:15:42', '2024-06-26 07:47:56'),
(75, 'App\\Models\\User', 2, 'API TOKEN', '53735f9be2a211c6f30b24af53781b733d165c446852257ac8ed4c1e6753da81', '[\"*\"]', '2024-06-27 10:43:29', NULL, '2024-06-26 07:50:32', '2024-06-27 10:43:29'),
(76, 'App\\Models\\User', 2, 'API TOKEN', 'd8f7bb04763bbe535acb038cb7a9cfb98ba4c4adaff906e9f3f13b8c8aba8a33', '[\"*\"]', '2024-06-26 10:07:25', NULL, '2024-06-26 10:07:14', '2024-06-26 10:07:25'),
(77, 'App\\Models\\User', 2, 'API TOKEN', 'aea854b488ef80a8acef4db20d5fa26fc97ce95eada900ebccafddedf01ccacc', '[\"*\"]', '2024-06-26 11:21:40', NULL, '2024-06-26 11:15:16', '2024-06-26 11:21:40'),
(78, 'App\\Models\\User', 2, 'API TOKEN', 'b86951c059c045eaecb71926db46e7db158af6ca6139e0c4761a98763c70046c', '[\"*\"]', NULL, NULL, '2024-06-27 10:38:24', '2024-06-27 10:38:24'),
(79, 'App\\Models\\User', 2, 'API TOKEN', 'c7a71c0ce03425b361a0eb005110dc91b0c44e4d952ab910da5b57bca4ad0943', '[\"*\"]', '2024-06-27 10:43:46', NULL, '2024-06-27 10:43:45', '2024-06-27 10:43:46'),
(80, 'App\\Models\\User', 2, 'API TOKEN', 'c416b78d999247fe7682fba3595ce0647fb8cdcd2de4f1793c7ef662e89c5511', '[\"*\"]', '2024-06-27 10:50:00', NULL, '2024-06-27 10:46:15', '2024-06-27 10:50:00'),
(81, 'App\\Models\\User', 2, 'API TOKEN', 'a48a54d7e2e4b41dfb1d0d899e947c662bfbc10165df8219c8d980d1c9295dc8', '[\"*\"]', '2024-06-27 10:59:46', NULL, '2024-06-27 10:55:41', '2024-06-27 10:59:46'),
(82, 'App\\Models\\User', 2, 'API TOKEN', '4525f3db4d8dbc8e08e405e017b4599ebdc422625057d4464b7e311472c4cbfc', '[\"*\"]', '2024-06-27 11:00:28', NULL, '2024-06-27 11:00:01', '2024-06-27 11:00:28'),
(83, 'App\\Models\\User', 2, 'API TOKEN', '292e31dd2e34508adae5d3513b7ff76755d8f6bd6c4279046625070d4155f089', '[\"*\"]', '2024-06-27 11:01:08', NULL, '2024-06-27 11:00:41', '2024-06-27 11:01:08'),
(84, 'App\\Models\\User', 2, 'API TOKEN', 'de58577237a982ad718dd98cfe15d635d0d33f2ec1bd1397ac852f8b70c05d71', '[\"*\"]', '2024-06-27 12:56:04', NULL, '2024-06-27 11:02:08', '2024-06-27 12:56:04'),
(85, 'App\\Models\\User', 2, 'API TOKEN', 'cf1939df5270dd2fead8be0f39e523dde9d92385a54342aff85d23255132a3a6', '[\"*\"]', '2024-06-28 08:12:15', NULL, '2024-06-27 12:56:20', '2024-06-28 08:12:15'),
(86, 'App\\Models\\User', 2, 'API TOKEN', '9a8b2597f457e115461c9bb79d4a255102a42dcdc07c1f0bf420256a9660e4e4', '[\"*\"]', '2024-06-28 08:00:07', NULL, '2024-06-28 08:00:03', '2024-06-28 08:00:07'),
(87, 'App\\Models\\User', 2, 'API TOKEN', '3cab93432f8e9c049be7acc66f960e12f0430e87c1e4770e0ecaf08e9adc9f42', '[\"*\"]', '2024-06-28 08:00:27', NULL, '2024-06-28 08:00:26', '2024-06-28 08:00:27'),
(88, 'App\\Models\\User', 2, 'API TOKEN', '4293db2ca35bb08e5ee88974bc9d16185d2c4201794bd390494900ff03605e9b', '[\"*\"]', '2024-06-28 08:14:30', NULL, '2024-06-28 08:14:30', '2024-06-28 08:14:30'),
(89, 'App\\Models\\User', 2, 'API TOKEN', 'f7143ac98cb219633ce922318c2656b7ec976b2cc571b995296669525c6df762', '[\"*\"]', '2024-06-28 08:36:20', NULL, '2024-06-28 08:36:19', '2024-06-28 08:36:20'),
(90, 'App\\Models\\User', 2, 'API TOKEN', '455c7c8a9c7c85af24241c4ce4a0a7aa5d2bb8e933b3754df9ad993360e1a9ce', '[\"*\"]', '2024-06-28 09:23:19', NULL, '2024-06-28 08:38:12', '2024-06-28 09:23:19'),
(91, 'App\\Models\\User', 2, 'API TOKEN', 'e3a49e52d050be09d3416d90a8176c4faa8e563545df02a6714e3a4dc1c9805a', '[\"*\"]', '2024-06-28 08:40:56', NULL, '2024-06-28 08:40:44', '2024-06-28 08:40:56'),
(92, 'App\\Models\\User', 2, 'API TOKEN', '70ffeef11cc5c5586df2d610469d7a99d03af4c12797fa48f0134d405c1ddd48', '[\"*\"]', '2024-06-28 08:49:51', NULL, '2024-06-28 08:45:18', '2024-06-28 08:49:51'),
(93, 'App\\Models\\User', 2, 'API TOKEN', '7a19f4dd237372dd3e8c56e678b59a5c6e21aa091a5d20738eafeab2f9e20059', '[\"*\"]', '2024-06-28 08:52:50', NULL, '2024-06-28 08:50:59', '2024-06-28 08:52:50'),
(94, 'App\\Models\\User', 2, 'API TOKEN', '4e6f97c8c9f84069b70948a4c109376bfdd6c6cb374fe7020346745fc6577b3b', '[\"*\"]', '2024-06-28 08:58:06', NULL, '2024-06-28 08:57:58', '2024-06-28 08:58:06'),
(95, 'App\\Models\\User', 2, 'API TOKEN', 'e231998447529c6e85022e2a9011c530ebe9c589e321079ff9b28ae4677c0570', '[\"*\"]', '2024-06-28 10:37:15', NULL, '2024-06-28 10:37:14', '2024-06-28 10:37:15'),
(96, 'App\\Models\\User', 2, 'API TOKEN', '50d893f827ead5302bf95418daa28dd5020b756cee83e58fc1325a9c40256010', '[\"*\"]', '2024-06-28 10:43:32', NULL, '2024-06-28 10:43:28', '2024-06-28 10:43:32'),
(97, 'App\\Models\\User', 2, 'API TOKEN', '293749ab2c3e698f27f308142591210d455aed1c1baf6e23b89465d69a037caf', '[\"*\"]', '2024-06-28 10:48:05', NULL, '2024-06-28 10:47:06', '2024-06-28 10:48:05'),
(98, 'App\\Models\\User', 2, 'API TOKEN', 'a5f0500d2c7b0803692f2e8961c9ca6ff099d66019fa31ae0bee5fc784ea0bed', '[\"*\"]', '2024-06-28 10:48:31', NULL, '2024-06-28 10:48:20', '2024-06-28 10:48:31'),
(99, 'App\\Models\\User', 2, 'API TOKEN', '91396e6e3de6163df120abf605209b88888684edd3bf89c9bd44e462e9f6deb3', '[\"*\"]', '2024-06-28 10:54:52', NULL, '2024-06-28 10:51:33', '2024-06-28 10:54:52'),
(100, 'App\\Models\\User', 2, 'API TOKEN', 'c44a39feedc128fedc1e6bd31194990e4cf4b0dd1c06067f522bac1bbff2b5b7', '[\"*\"]', '2024-06-28 11:00:10', NULL, '2024-06-28 11:00:06', '2024-06-28 11:00:10'),
(101, 'App\\Models\\User', 2, 'API TOKEN', '9f6ef6f264b3f746d29948bc00256b39592c98c6b889ba7c38e06383d3c9f0e5', '[\"*\"]', '2024-06-28 11:04:32', NULL, '2024-06-28 11:00:49', '2024-06-28 11:04:32'),
(102, 'App\\Models\\User', 2, 'API TOKEN', '98f13d91b633347c425c24942219ae1854ad1f82b3a47c24df2cdd7f087e0cce', '[\"*\"]', '2024-06-28 11:03:31', NULL, '2024-06-28 11:03:26', '2024-06-28 11:03:31'),
(103, 'App\\Models\\User', 2, 'API TOKEN', '15ce11977e830e8c1e42d11dd84d488cb88a1f2912cd40fc0eadef652574efc0', '[\"*\"]', '2024-06-28 11:09:01', NULL, '2024-06-28 11:08:52', '2024-06-28 11:09:01'),
(104, 'App\\Models\\User', 2, 'API TOKEN', '468c461efa1aa98c0c57065b1d4e45a42ec016e6e9fa702cb0dfdbc8d89be7ce', '[\"*\"]', '2024-06-28 11:11:46', NULL, '2024-06-28 11:11:06', '2024-06-28 11:11:46'),
(105, 'App\\Models\\User', 2, 'API TOKEN', 'bb71a8000a6c4bfd8e0d0e9b49424123066af309f833d25854a61d63570449cf', '[\"*\"]', '2024-06-28 11:33:19', NULL, '2024-06-28 11:23:18', '2024-06-28 11:33:19'),
(106, 'App\\Models\\User', 2, 'API TOKEN', 'bffafc8de2f664cee33de2dbdc5c53d90d235067f0f5a450f36e5fa920620de3', '[\"*\"]', '2024-06-28 11:37:38', NULL, '2024-06-28 11:37:26', '2024-06-28 11:37:38'),
(107, 'App\\Models\\User', 13, 'API TOKEN', 'ea4c491bb67e70daa6df077ef2d088953eab542baf298c1b9cb52bcbb4b4405f', '[\"*\"]', '2024-06-28 12:56:40', NULL, '2024-06-28 12:55:11', '2024-06-28 12:56:40'),
(108, 'App\\Models\\User', 13, 'API TOKEN', 'a2f38c7d40d6ee664c3e5dce7cd1611b526e6f868ed5737fd7278fabda3b65d4', '[\"*\"]', '2024-06-29 13:37:53', NULL, '2024-06-28 12:57:47', '2024-06-29 13:37:53'),
(109, 'App\\Models\\User', 2, 'API TOKEN', 'ed852b1bcd8e70f325a8ca650c64fac45b69186a272110ea213edd98e661f8f9', '[\"*\"]', '2024-06-28 13:43:16', NULL, '2024-06-28 13:40:39', '2024-06-28 13:43:16'),
(110, 'App\\Models\\User', 2, 'API TOKEN', '0cebd4aff465f01ab4463b6cabfa076066beb978c97280e33c0ab2af4073e4f3', '[\"*\"]', '2024-06-29 04:37:43', NULL, '2024-06-28 13:43:42', '2024-06-29 04:37:43'),
(111, 'App\\Models\\User', 2, 'API TOKEN', '589babeb121a749be30470b782f17520987561483bbb6a3a3dbc8640b680e8bd', '[\"*\"]', '2024-06-29 04:38:11', NULL, '2024-06-29 04:38:01', '2024-06-29 04:38:11'),
(112, 'App\\Models\\User', 15, 'API TOKEN', 'c779a11fa0353d2324f48fa4ca9f0f418010b928739df7e177c5abb1322630be', '[\"*\"]', '2024-06-29 06:12:07', NULL, '2024-06-29 06:09:49', '2024-06-29 06:12:07'),
(113, 'App\\Models\\User', 2, 'API TOKEN', '317027b008b65cd3926c2d7429843383bfd28ac90be8865350e53f843188fcb3', '[\"*\"]', '2024-06-29 08:19:22', NULL, '2024-06-29 08:19:18', '2024-06-29 08:19:22'),
(114, 'App\\Models\\User', 15, 'API TOKEN', 'b4faf2a9e83a693ca5d863a2864849d5fb17a3a6060415fc18a61dabdddc1aa7', '[\"*\"]', '2024-06-29 08:26:00', NULL, '2024-06-29 08:25:44', '2024-06-29 08:26:00'),
(115, 'App\\Models\\User', 15, 'API TOKEN', '28b1a0ad4820ee53df20ad117e012e1e1b001ff9939f7d927c16f928f580cfa0', '[\"*\"]', '2024-06-29 08:27:18', NULL, '2024-06-29 08:26:58', '2024-06-29 08:27:18'),
(116, 'App\\Models\\User', 16, 'API TOKEN', '99f0288077f83c9e2803188d78082fec4f1e97d524e70cb92df928da4bf79555', '[\"*\"]', '2024-06-29 09:32:16', NULL, '2024-06-29 08:27:30', '2024-06-29 09:32:16'),
(117, 'App\\Models\\User', 15, 'API TOKEN', '5968afb55d7471857b2c486a7066dfc5b4f753ab6f2832dd1d527d617dba7514', '[\"*\"]', '2024-06-29 09:57:50', NULL, '2024-06-29 09:56:16', '2024-06-29 09:57:50'),
(118, 'App\\Models\\User', 2, 'API TOKEN', '007df6ae24ef5727082a7f15d9a62a302bb1fe4e26381393c07b1c94d9545416', '[\"*\"]', '2024-06-29 09:58:58', NULL, '2024-06-29 09:58:58', '2024-06-29 09:58:58'),
(119, 'App\\Models\\User', 2, 'API TOKEN', '87af4a4229b9639df5a875283fad1e68d9a698f82be32b371bc6d1c0ffd875a5', '[\"*\"]', '2024-06-29 09:59:54', NULL, '2024-06-29 09:59:51', '2024-06-29 09:59:54'),
(120, 'App\\Models\\User', 2, 'API TOKEN', 'a7edb1f595dbc1fd6cd5660f94142f322f586c3aff94fbaffc3a3e7c4c6e75c5', '[\"*\"]', '2024-06-29 10:00:28', NULL, '2024-06-29 10:00:25', '2024-06-29 10:00:28'),
(121, 'App\\Models\\User', 2, 'API TOKEN', '457cc1dba67fb08f4214c2af0f468ea395cb839995aab35e5b6d916aac5bdcb9', '[\"*\"]', '2024-06-29 11:15:38', NULL, '2024-06-29 10:01:05', '2024-06-29 11:15:38'),
(122, 'App\\Models\\User', 18, 'API TOKEN', '978070ef00342cea48fcb770daee6c74b9ff3ddf075aad888aa651625061c277', '[\"*\"]', '2024-06-29 12:40:38', NULL, '2024-06-29 11:15:59', '2024-06-29 12:40:38'),
(123, 'App\\Models\\User', 16, 'API TOKEN', '7e889b40cb665c4868daf2443f403ba807132371b17e4e13a8158de3823dde74', '[\"*\"]', '2024-06-29 12:41:11', NULL, '2024-06-29 12:41:05', '2024-06-29 12:41:11'),
(124, 'App\\Models\\User', 18, 'API TOKEN', 'f6b521a81469867f92c83cec1b166489f77fe89ebdf10bfdda91cb3790c258d5', '[\"*\"]', '2024-06-29 12:53:40', NULL, '2024-06-29 12:41:26', '2024-06-29 12:53:40'),
(125, 'App\\Models\\User', 18, 'API TOKEN', '4bef6f71faeef7a9d8a02d0f3bf9af757193e55c55532ec204110e82b607c167', '[\"*\"]', '2024-06-29 13:14:09', NULL, '2024-06-29 13:14:05', '2024-06-29 13:14:09'),
(126, 'App\\Models\\User', 18, 'API TOKEN', '4f10a834d35c750e3a1c3534c035241768d1eacfd501d3d98668171bb3d7c611', '[\"*\"]', '2024-06-29 13:19:07', NULL, '2024-06-29 13:19:07', '2024-06-29 13:19:07'),
(127, 'App\\Models\\User', 18, 'API TOKEN', '8029dd508ecc8b8c5a46283f9c7a8c601722b9d1aee5a10549722e025588c84b', '[\"*\"]', '2024-06-29 13:19:48', NULL, '2024-06-29 13:19:22', '2024-06-29 13:19:48'),
(128, 'App\\Models\\User', 15, 'API TOKEN', '8e8b1987b43bf9c722adff7c26b83d1dcff08b3fa222fc77c2106cd3f088f4f3', '[\"*\"]', '2024-06-29 13:22:33', NULL, '2024-06-29 13:22:04', '2024-06-29 13:22:33'),
(129, 'App\\Models\\User', 2, 'API TOKEN', 'e45e019afe60ce12beec4afaeccc8c740474ef1dcf792897192bb52838a07cbc', '[\"*\"]', '2024-06-29 13:22:46', NULL, '2024-06-29 13:22:46', '2024-06-29 13:22:46'),
(130, 'App\\Models\\User', 18, 'API TOKEN', '01ac0d5cbebc8477727eacecad47c6f81d1179b59338674ecb1bedbf347351ad', '[\"*\"]', '2024-06-29 16:09:51', NULL, '2024-06-29 13:27:57', '2024-06-29 16:09:51'),
(131, 'App\\Models\\User', 2, 'API TOKEN', '91011502253b711b6c1e2f2f95ed94aac7fdfdcd2976c6df35a41e3b4bbd63d0', '[\"*\"]', '2024-06-29 13:47:53', NULL, '2024-06-29 13:45:36', '2024-06-29 13:47:53'),
(132, 'App\\Models\\User', 21, 'API TOKEN', 'be864cb2251a1da5bfa95d81f36ef53173a2d774dc94b5691f7a08904be8b91e', '[\"*\"]', '2024-06-29 13:51:43', NULL, '2024-06-29 13:47:54', '2024-06-29 13:51:43'),
(133, 'App\\Models\\User', 21, 'API TOKEN', '63e86e4f017f18acc3ea851ad5629babdce7b1c8b30e84fb95f3e60098e34940', '[\"*\"]', '2024-07-03 03:46:09', NULL, '2024-06-29 13:52:00', '2024-07-03 03:46:09'),
(134, 'App\\Models\\User', 21, 'API TOKEN', '0e7ceb0d091efd8004c2ce64adbbfe6a56fb5973e2e572ea7a25a6bc5bfde571', '[\"*\"]', '2024-06-29 13:52:36', NULL, '2024-06-29 13:52:35', '2024-06-29 13:52:36'),
(135, 'App\\Models\\User', 21, 'API TOKEN', '521511532766b9edae8983a5bc3d283b4025e7d159f0b2ec0fcd2c8bc3c5afef', '[\"*\"]', '2024-06-29 13:53:05', NULL, '2024-06-29 13:53:04', '2024-06-29 13:53:05'),
(136, 'App\\Models\\User', 21, 'API TOKEN', 'f85417136fe6044c0996d4480a2cbb680dcae06f0f1f9747aa7ef5acff990c27', '[\"*\"]', '2024-07-06 15:58:59', NULL, '2024-06-29 13:54:16', '2024-07-06 15:58:59'),
(137, 'App\\Models\\User', 16, 'API TOKEN', '3d0df85934e7050bdec1fa3b06c14a1e686bac8492d96357cfd46f87d8788010', '[\"*\"]', '2024-06-29 14:03:45', NULL, '2024-06-29 13:59:23', '2024-06-29 14:03:45'),
(138, 'App\\Models\\User', 2, 'API TOKEN', '55bbcdd3e5778a11037397e26ad69781f0cf996c5270c0b1df521f2f53960aec', '[\"*\"]', '2024-06-29 15:13:37', NULL, '2024-06-29 15:13:36', '2024-06-29 15:13:37'),
(139, 'App\\Models\\User', 2, 'API TOKEN', '0cf6d3865e0ea652c393a9cd0cf6567b1df807f074a10632ca342d5692896cb3', '[\"*\"]', '2024-07-01 04:07:13', NULL, '2024-06-29 15:13:37', '2024-07-01 04:07:13'),
(140, 'App\\Models\\User', 18, 'API TOKEN', '2fe657763090c0fe4529b4ee6fdfd0f7a038b172266042242417cde9541e9efa', '[\"*\"]', '2024-06-30 05:15:57', NULL, '2024-06-29 16:10:07', '2024-06-30 05:15:57'),
(141, 'App\\Models\\User', 15, 'API TOKEN', '59004c723cc3cf953db1d3e147170e557e78483cc7a343f0eb65486ba230a406', '[\"*\"]', '2024-06-29 18:42:56', NULL, '2024-06-29 18:42:44', '2024-06-29 18:42:56'),
(142, 'App\\Models\\User', 18, 'API TOKEN', '449395bca27a4eda0350e794c53074662a97172fc48da3b9b396bef8504a25a2', '[\"*\"]', '2024-06-30 05:17:36', NULL, '2024-06-30 05:17:25', '2024-06-30 05:17:36'),
(143, 'App\\Models\\User', 18, 'API TOKEN', 'bde9fb8972e7ecde7f66a944beac50768fe098a75563d31788f8709ccbdf7bb3', '[\"*\"]', '2024-06-30 05:26:41', NULL, '2024-06-30 05:20:01', '2024-06-30 05:26:41'),
(144, 'App\\Models\\User', 2, 'API TOKEN', '52fea8724264f895657f02fa13242d3a32bdf081d51e6eb43cd2ece32357f040', '[\"*\"]', '2024-06-30 05:32:12', NULL, '2024-06-30 05:32:11', '2024-06-30 05:32:12'),
(145, 'App\\Models\\User', 18, 'API TOKEN', 'a4a052f1c983b8d3e2740dab1b9595df371ebd6df4f2068fb589b4f52c199d5f', '[\"*\"]', '2024-06-30 05:33:01', NULL, '2024-06-30 05:32:44', '2024-06-30 05:33:01'),
(146, 'App\\Models\\User', 18, 'API TOKEN', '6bc977b481732dea46275efb8f14cd4feb3a78f690efb1c891dd5b78ea5a5101', '[\"*\"]', '2024-06-30 05:52:52', NULL, '2024-06-30 05:49:58', '2024-06-30 05:52:52'),
(147, 'App\\Models\\User', 15, 'API TOKEN', '083b8ed563d55f8e731622e8d3747c211a5d1656adf3b857add3dac7e1cf09d3', '[\"*\"]', '2024-07-06 05:55:26', NULL, '2024-07-01 03:13:06', '2024-07-06 05:55:26'),
(148, 'App\\Models\\User', 16, 'API TOKEN', '1ebb6b659e21e74ac44a776642f50c6c59a06d172f78b3c0598054c0fd912cbe', '[\"*\"]', '2024-07-06 09:20:34', NULL, '2024-07-01 03:38:14', '2024-07-06 09:20:34'),
(149, 'App\\Models\\User', 22, 'API TOKEN', '5f79ee85a2eb3d2af0f57664dbd7193b561177fc45784ef1eb58868d36db07c7', '[\"*\"]', '2024-07-10 08:39:14', NULL, '2024-07-01 03:48:48', '2024-07-10 08:39:14'),
(150, 'App\\Models\\User', 17, 'API TOKEN', '5883eafa9c4df1838738175406529ced89356a08d3a2d3e5044a0f9d8d2c2019', '[\"*\"]', '2024-07-06 09:15:05', NULL, '2024-07-01 04:08:26', '2024-07-06 09:15:05'),
(151, 'App\\Models\\User', 19, 'API TOKEN', 'dfffef4eccae984a6d023834ed92784d206543578d2b840b63c1c7d855f67a48', '[\"*\"]', '2024-07-01 09:33:04', NULL, '2024-07-01 04:10:12', '2024-07-01 09:33:04'),
(152, 'App\\Models\\User', 18, 'API TOKEN', 'ac2794e64dffdcf288556617f03e35df61c659a6741aa10fbca649d936e97364', '[\"*\"]', '2024-07-01 11:54:57', NULL, '2024-07-01 04:13:26', '2024-07-01 11:54:57'),
(153, 'App\\Models\\User', 14, 'API TOKEN', 'ecc53fc9c28edccecccc7707c98928c8b15234831536a89bb7447ac10c508434', '[\"*\"]', '2024-07-06 09:37:35', NULL, '2024-07-01 04:49:11', '2024-07-06 09:37:35'),
(154, 'App\\Models\\User', 23, 'API TOKEN', '7a8902b83b529282f7e4475860412cd925db524ccdca9ac3ed9ace7df6e152eb', '[\"*\"]', '2024-07-06 12:30:13', NULL, '2024-07-01 04:50:57', '2024-07-06 12:30:13'),
(155, 'App\\Models\\User', 13, 'API TOKEN', 'b5d71ac23d0e28d1c1dcb909063a84d956cef17637ee70a1c3fce19858e50442', '[\"*\"]', '2024-07-06 08:41:32', NULL, '2024-07-01 05:09:19', '2024-07-06 08:41:32'),
(156, 'App\\Models\\User', 18, 'API TOKEN', '777347d48c75e20eb9059cced88180b9ab2e17a7e204b90e14841640cbc56fdd', '[\"*\"]', '2024-07-01 11:55:08', NULL, '2024-07-01 11:55:05', '2024-07-01 11:55:08'),
(157, 'App\\Models\\User', 19, 'API TOKEN', 'eca9ddefd97c30a59ae1fbbc7cb00d9f8a18a5e265f9188fc4f0beea92c33d3e', '[\"*\"]', '2024-07-01 12:13:48', NULL, '2024-07-01 11:55:22', '2024-07-01 12:13:48'),
(158, 'App\\Models\\User', 19, 'API TOKEN', 'bb00c604dbed0a077034255aa5258678adf61c9190e0fb8437ed3cbe99ff09e3', '[\"*\"]', '2024-07-06 09:42:46', NULL, '2024-07-01 11:56:23', '2024-07-06 09:42:46'),
(159, 'App\\Models\\User', 19, 'API TOKEN', '2b63c0248d8c0fe8a0e47efcf6790e7b46d3854cffac65c2d8373119ab440e32', '[\"*\"]', '2024-07-01 12:00:01', NULL, '2024-07-01 11:59:48', '2024-07-01 12:00:01'),
(160, 'App\\Models\\User', 25, 'API TOKEN', 'c8bd2dc9cce0d07ed5ca437520dc5ee7264704d4f2d7e96caec402795ae55327', '[\"*\"]', '2024-07-06 08:58:18', NULL, '2024-07-01 12:02:06', '2024-07-06 08:58:18'),
(161, 'App\\Models\\User', 2, 'API TOKEN', '5ed1ddb5daac06bf2ba4a80f03f4c81b179dc1b00ae0c5971e6573c6b889500a', '[\"*\"]', '2024-07-01 12:14:19', NULL, '2024-07-01 12:14:19', '2024-07-01 12:14:19'),
(162, 'App\\Models\\User', 2, 'API TOKEN', '0c1c50e1b45f117040ecb33960b0c0dbfcadaf03e889cdf57cd536519b40df72', '[\"*\"]', '2024-07-01 14:50:05', NULL, '2024-07-01 12:14:56', '2024-07-01 14:50:05'),
(163, 'App\\Models\\User', 18, 'API TOKEN', 'ce0e33229ded5b2e18f3d42de59f5ba4bd718e95bb0acdb4bf03c329fd802480', '[\"*\"]', '2024-07-02 08:54:56', NULL, '2024-07-01 14:50:15', '2024-07-02 08:54:56'),
(164, 'App\\Models\\User', 24, 'API TOKEN', '31737ff52def0c09f8ecdfb6f63ea66049b91848d7ce2919403effd4ad41afda', '[\"*\"]', '2024-07-04 12:35:59', NULL, '2024-07-02 06:29:19', '2024-07-04 12:35:59'),
(165, 'App\\Models\\User', 18, 'API TOKEN', '3c89afbf706274182f18362dd0f5f97a0ae71a78bb711f44b406b8ec1f32fb97', '[\"*\"]', '2024-07-02 11:12:59', NULL, '2024-07-02 08:56:58', '2024-07-02 11:12:59'),
(166, 'App\\Models\\User', 15, 'API TOKEN', 'f1a9aac970f8da897de33bed0872805401cd5a9f1bb28e474553845097e22e76', '[\"*\"]', '2024-07-02 11:15:58', NULL, '2024-07-02 11:15:29', '2024-07-02 11:15:58'),
(167, 'App\\Models\\User', 18, 'API TOKEN', 'd646582697a2ffdc80ad5821b39d2e7da65eedac7a49cd123db3a991e7f9a11f', '[\"*\"]', '2024-07-10 08:16:39', NULL, '2024-07-02 11:16:32', '2024-07-10 08:16:39'),
(168, 'App\\Models\\User', 26, 'API TOKEN', 'f095bca3b9a86f2c6418fa6ea6f7d3425c5b6d856a3c148c287513c173f8f23a', '[\"*\"]', '2024-07-04 04:23:14', NULL, '2024-07-02 14:14:14', '2024-07-04 04:23:14'),
(169, 'App\\Models\\User', 24, 'API TOKEN', '7187519750da6800d118eefecb3faa98de689ecfa0fb1c5c135cef70f889a84d', '[\"*\"]', '2024-07-05 12:32:05', NULL, '2024-07-04 17:03:07', '2024-07-05 12:32:05'),
(170, 'App\\Models\\User', 27, 'API TOKEN', 'fae981cf0562b5ce0f4d862e9f879ef80ee89c1e965d0fec0f064f21505f21f6', '[\"*\"]', '2024-07-31 13:45:02', NULL, '2024-07-05 08:42:51', '2024-07-31 13:45:02'),
(171, 'App\\Models\\User', 24, 'API TOKEN', '14a1be36fc624384ca935e5b6491e839d1f54c2ae5c588bf943bc46c1c623b8d', '[\"*\"]', '2024-07-06 09:02:18', NULL, '2024-07-06 03:54:20', '2024-07-06 09:02:18'),
(172, 'App\\Models\\User', 2, 'API TOKEN', '49b23090f0fe72572d5c44b9ed593ac48d28d1ae9cea90c3a7530d9ae5229ac3', '[\"*\"]', '2024-07-06 08:54:03', NULL, '2024-07-06 06:20:38', '2024-07-06 08:54:03'),
(173, 'App\\Models\\User', 2, 'API TOKEN', 'b21d014e4e7e7db06d87d17cb1793bc1ff9222b446c971db22808297b7605e69', '[\"*\"]', '2024-07-06 08:58:24', NULL, '2024-07-06 08:58:24', '2024-07-06 08:58:24'),
(174, 'App\\Models\\User', 2, 'API TOKEN', '05cdb58a51c03b8b6b1d3b69b01abed5597dcb90f0ed28e4bef3c2ca626a3993', '[\"*\"]', '2024-07-06 09:01:53', NULL, '2024-07-06 08:59:03', '2024-07-06 09:01:53'),
(175, 'App\\Models\\User', 15, 'API TOKEN', '5898b42ef9242c58b444444d512de219b6c6afb926da723c11c8417e1dabc0d0', '[\"*\"]', '2024-07-06 09:08:28', NULL, '2024-07-06 09:07:18', '2024-07-06 09:08:28'),
(176, 'App\\Models\\User', 15, 'API TOKEN', 'ad8fc76d46d3e7f4656fdf82216e4a5d737f2f756d9a05d62823be1b85a95f08', '[\"*\"]', '2024-07-06 09:09:17', NULL, '2024-07-06 09:08:51', '2024-07-06 09:09:17'),
(177, 'App\\Models\\User', 15, 'API TOKEN', '047e381305550de7df142fe487bf7b6f7bf262068ee04e7eeb67de7967fa5443', '[\"*\"]', '2024-07-06 09:17:22', NULL, '2024-07-06 09:14:25', '2024-07-06 09:17:22'),
(178, 'App\\Models\\User', 16, 'API TOKEN', 'e890509f6c792d250bf0b7f4db468bf413829d718c1abad4db42c38c24188c4d', '[\"*\"]', '2024-07-06 09:27:34', NULL, '2024-07-06 09:25:55', '2024-07-06 09:27:34'),
(179, 'App\\Models\\User', 13, 'API TOKEN', '7b7b40ae43bfd56db076ca65b2b8d406c03dbf9aec5d479c0bb8e85c4cd4d42a', '[\"*\"]', '2024-08-28 04:43:46', NULL, '2024-07-06 09:27:43', '2024-08-28 04:43:46'),
(180, 'App\\Models\\User', 16, 'API TOKEN', '4392e3f9c86d57a6d03e4748b482ac1f6196d059693adf65f6ce138c52829e1a', '[\"*\"]', '2024-08-28 08:34:52', NULL, '2024-07-06 09:27:51', '2024-08-28 08:34:52'),
(181, 'App\\Models\\User', 15, 'API TOKEN', '9570ec59e0f9640b7476ae9173246ac0378754af2cce97ab37026f682e9998e5', '[\"*\"]', '2024-07-10 10:45:15', NULL, '2024-07-06 09:28:14', '2024-07-10 10:45:15'),
(182, 'App\\Models\\User', 17, 'API TOKEN', 'a63e75720d95c9b9847a6acb7e20728eb2c441015a11c4215cc544346ecfb667', '[\"*\"]', '2024-09-12 11:48:46', NULL, '2024-07-06 09:29:23', '2024-09-12 11:48:46'),
(183, 'App\\Models\\User', 14, 'API TOKEN', 'fe2a251465d2be3ffd496a428db4e63698bea1c2ffbbee7760994f0148adf0ff', '[\"*\"]', '2024-09-02 07:03:08', NULL, '2024-07-06 09:39:09', '2024-09-02 07:03:08'),
(184, 'App\\Models\\User', 19, 'API TOKEN', '930a84143b17ee20b9f13d16daf9ad750d3c5aec73e7636c3e992f7b8e5ad98d', '[\"*\"]', '2024-08-31 11:45:09', NULL, '2024-07-06 09:43:43', '2024-08-31 11:45:09'),
(185, 'App\\Models\\User', 25, 'API TOKEN', 'c26c4f5fa81334b0522dcb7233bbbf2c9a6c30bdf70c6c1eb3202ef7f0805658', '[\"*\"]', '2024-09-02 03:44:31', NULL, '2024-07-06 09:55:17', '2024-09-02 03:44:31'),
(186, 'App\\Models\\User', 2, 'API TOKEN', '5eefa15e637fb7b864993922d6a4597811b36684c3dd4ed86cb3037830f20336', '[\"*\"]', '2024-07-26 13:27:19', NULL, '2024-07-06 10:33:24', '2024-07-26 13:27:19'),
(187, 'App\\Models\\User', 24, 'API TOKEN', '83ce4b73aaffd1982a711c1ec1a373d07aaa1410854c7bd08c64ad8b985c0264', '[\"*\"]', '2024-08-10 04:39:04', NULL, '2024-07-06 10:55:31', '2024-08-10 04:39:04'),
(188, 'App\\Models\\User', 23, 'API TOKEN', '3beb8bf6304aaea4fc1ba756b1a6801876f40a4404e699723fa7ca06f4e40563', '[\"*\"]', '2024-09-02 03:41:22', NULL, '2024-07-06 12:33:29', '2024-09-02 03:41:22'),
(189, 'App\\Models\\User', 21, 'API TOKEN', '701f8ce37aad0f11ce15ed7acfb804bff506d4144191db03a0435643f8e2620a', '[\"*\"]', '2024-07-06 16:57:10', NULL, '2024-07-06 16:02:07', '2024-07-06 16:57:10'),
(190, 'App\\Models\\User', 26, 'API TOKEN', '257586e3ab873f0bcabacf35027110a875e33ff1c2199a622fd08e74f0a07992', '[\"*\"]', '2024-08-01 05:50:43', NULL, '2024-07-08 05:25:55', '2024-08-01 05:50:43'),
(191, 'App\\Models\\User', 18, 'API TOKEN', 'faaccd73152132deaddb32250509e049e0640fb8469fdf965e01fc18ec089283', '[\"*\"]', '2024-07-10 08:20:05', NULL, '2024-07-10 08:18:24', '2024-07-10 08:20:05'),
(192, 'App\\Models\\User', 18, 'API TOKEN', '28d019fa615fdc3bd3137a614224326c8dee19b66bb0a69ea819c3b551b36ad6', '[\"*\"]', '2024-07-10 08:33:55', NULL, '2024-07-10 08:33:08', '2024-07-10 08:33:55'),
(193, 'App\\Models\\User', 22, 'API TOKEN', '6d4df421f5adb3d7b3b3ef9296da6143dedb72f816e90df2d7021334a0e813b6', '[\"*\"]', '2024-08-01 04:12:55', NULL, '2024-07-10 08:41:21', '2024-08-01 04:12:55'),
(194, 'App\\Models\\User', 15, 'API TOKEN', 'd5e5b84da60f4c410fd4ed01bd1d618ff09d4fe3f9dd8cb56e5f1b294855fae8', '[\"*\"]', '2024-08-01 05:47:13', NULL, '2024-07-10 10:45:48', '2024-08-01 05:47:13'),
(195, 'App\\Models\\User', 18, 'API TOKEN', '9d595c5a37fd1b20b63212221615d58e902a8b0d0cbffff634d413f8b817f71f', '[\"*\"]', '2024-07-11 08:04:51', NULL, '2024-07-10 13:51:02', '2024-07-11 08:04:51'),
(196, 'App\\Models\\User', 18, 'API TOKEN', 'a696c8529cb020eda953a17bebaa7a95f22bcc5eca3a12a086ec42146cee2a98', '[\"*\"]', '2024-07-15 08:53:02', NULL, '2024-07-11 08:05:03', '2024-07-15 08:53:02'),
(197, 'App\\Models\\User', 2, 'API TOKEN', '474c8cf12f4fa960e3981c779d92d27d80a7fde4865dd4f9c98111cdaf002287', '[\"*\"]', '2024-07-13 13:29:47', NULL, '2024-07-13 13:29:43', '2024-07-13 13:29:47'),
(198, 'App\\Models\\User', 18, 'API TOKEN', '7bb088cb441c2168653fd62036700f17baf2e53dc874fe26cae67d966ac0a098', '[\"*\"]', '2024-08-31 14:26:41', NULL, '2024-07-15 08:54:46', '2024-08-31 14:26:41'),
(199, 'App\\Models\\User', 2, 'API TOKEN', '1b7a2e8d3cf63b49c63f4d39e4621ebbba3777b935b65ff7a8e38092ae9f6ec9', '[\"*\"]', '2024-07-19 17:38:25', NULL, '2024-07-19 17:24:15', '2024-07-19 17:38:25'),
(200, 'App\\Models\\User', 2, 'API TOKEN', '7035ab61c4716de59960f2a733b0219bdf1cd575fd951de0df0654942beae0ab', '[\"*\"]', '2024-07-19 19:43:29', NULL, '2024-07-19 17:47:52', '2024-07-19 19:43:29'),
(201, 'App\\Models\\User', 2, 'API TOKEN', 'bda702ea6768cef7f8c53150e35b5b8dc22baec25f0238455aee095c78b6fee1', '[\"*\"]', '2024-07-20 05:32:54', NULL, '2024-07-20 04:42:00', '2024-07-20 05:32:54'),
(202, 'App\\Models\\User', 2, 'API TOKEN', 'aaf1b8971a38b32acac8b15bc095bf5f7c33595d28bf869b2bdc80ff84c28251', '[\"*\"]', '2024-07-20 06:47:02', NULL, '2024-07-20 06:41:47', '2024-07-20 06:47:02'),
(203, 'App\\Models\\User', 2, 'API TOKEN', '1ed441be5bdd9043f74b6d592914cb0de0b47dd21c992357d0b01c136fb32e84', '[\"*\"]', '2024-07-20 09:00:50', NULL, '2024-07-20 07:00:41', '2024-07-20 09:00:50'),
(204, 'App\\Models\\User', 2, 'API TOKEN', '80e5be09376eec415b74558a594dbc4559b2ce3e2ff814074254725665e26b49', '[\"*\"]', '2024-07-20 09:27:54', NULL, '2024-07-20 09:01:08', '2024-07-20 09:27:54'),
(205, 'App\\Models\\User', 2, 'API TOKEN', '4562703468f345907a9c6c3d3ce16226da46d8466ca38fa0474e9f466472ef14', '[\"*\"]', '2024-07-20 10:48:37', NULL, '2024-07-20 09:40:26', '2024-07-20 10:48:37'),
(206, 'App\\Models\\User', 1, 'API TOKEN', 'a6db0026a3992fd9f7c17360a92cc84efcb26e60c35e8db3d2bf8b571550e112', '[\"*\"]', '2024-08-05 04:14:13', NULL, '2024-07-26 13:28:12', '2024-08-05 04:14:13'),
(207, 'App\\Models\\User', 1, 'API TOKEN', '2e6f076d2228667438fc9c1486831e98cd5c59176c350e7c29a180cf5f41033c', '[\"*\"]', NULL, NULL, '2024-07-26 13:30:26', '2024-07-26 13:30:26'),
(208, 'App\\Models\\User', 13, 'API TOKEN', 'b58f67a0853a1b5dd09e9ff9526925b3ea51bceae9f4cc5ed72316a8bbf9efba', '[\"*\"]', NULL, NULL, '2024-07-26 13:30:54', '2024-07-26 13:30:54'),
(209, 'App\\Models\\User', 1, 'API TOKEN', 'b7f4f07ee8e2da9dd7c567e9300aeeddc67d24cd6f294313e9e955cacd3cff0d', '[\"*\"]', '2024-07-26 13:32:27', NULL, '2024-07-26 13:31:23', '2024-07-26 13:32:27'),
(210, 'App\\Models\\User', 27, 'API TOKEN', '11edf41d98142c77943e82d75bb93532ca85eba1cbe19debada47dc2edccaa9c', '[\"*\"]', '2024-08-01 09:06:07', NULL, '2024-08-01 05:31:56', '2024-08-01 09:06:07'),
(211, 'App\\Models\\User', 2, 'API TOKEN', 'd597dbd8525d9f853c666c792fc370411894c4bcdcd46e712ed9ee0a3a4fd634', '[\"*\"]', '2024-08-01 06:39:20', NULL, '2024-08-01 05:47:26', '2024-08-01 06:39:20'),
(212, 'App\\Models\\User', 15, 'API TOKEN', 'b6bf2270f05ee3374717d9354c8e69b33db0b93c346e56271441c308c96f02d0', '[\"*\"]', '2024-08-31 10:15:07', NULL, '2024-08-01 06:39:30', '2024-08-31 10:15:07'),
(213, 'App\\Models\\User', 27, 'API TOKEN', 'ead19def25d346b132771889901e5d8f6c366c004fc2ee21117b7a3303dc0b15', '[\"*\"]', '2024-08-01 13:32:12', NULL, '2024-08-01 13:31:44', '2024-08-01 13:32:12'),
(214, 'App\\Models\\User', 27, 'API TOKEN', '2af2b95ae5fb2e05bc2f88d3dc66defe4ae169f7f438e01aaed0a41355e261ac', '[\"*\"]', '2024-08-05 13:06:24', NULL, '2024-08-02 05:18:50', '2024-08-05 13:06:24'),
(215, 'App\\Models\\User', 27, 'API TOKEN', '386deb96c19684475079bf7fd230b921703db0613f3bac5da003b15ae2a50f17', '[\"*\"]', '2024-08-15 09:19:14', NULL, '2024-08-06 05:11:50', '2024-08-15 09:19:14'),
(216, 'App\\Models\\User', 24, 'API TOKEN', '5b83ef0b6cc303b6481a4b7c5b828746359ea3e35e76ccbd48eea8b149977cba', '[\"*\"]', '2024-09-02 03:40:31', NULL, '2024-08-11 15:37:10', '2024-09-02 03:40:31'),
(217, 'App\\Models\\User', 27, 'API TOKEN', 'ce7241aa6f77444125fc11582fb1f5d5b9f9350d9502f96793f9dcc933d46e24', '[\"*\"]', '2024-09-02 05:03:15', NULL, '2024-08-15 14:42:32', '2024-09-02 05:03:15'),
(218, 'App\\Models\\User', 28, 'API TOKEN', 'bbcda4d5c74ef6d8f12620477b0cd246c662386c44c46223b4e4ecd5eeabecc6', '[\"*\"]', '2024-08-31 13:48:13', NULL, '2024-08-24 12:47:01', '2024-08-31 13:48:13'),
(219, 'App\\Models\\User', 16, 'API TOKEN', '57a400227755feeb9cfa3309e8fabee3dff4a9aa5326070fbae5891e61e20a3e', '[\"*\"]', '2024-08-28 05:55:04', NULL, '2024-08-28 05:54:31', '2024-08-28 05:55:04'),
(220, 'App\\Models\\User', 1, 'API TOKEN', 'f9bc137a314df99e3ace547b7a0d16e4e9378f150c0c782943ca1075b07d4dc8', '[\"*\"]', '2024-08-28 05:55:36', NULL, '2024-08-28 05:55:29', '2024-08-28 05:55:36'),
(221, 'App\\Models\\User', 13, 'API TOKEN', '4d84321f65afe0323094448e7fda87cfd3c1794f75fd4a938f0edf5f7ad6d103', '[\"*\"]', '2024-08-28 05:58:56', NULL, '2024-08-28 05:58:50', '2024-08-28 05:58:56'),
(222, 'App\\Models\\User', 1, 'API TOKEN', '462f89d91aa19f09adfbcb80dd3530e0b50a1320f8b7e94b1e13572787b00413', '[\"*\"]', '2024-08-28 06:32:50', NULL, '2024-08-28 06:32:50', '2024-08-28 06:32:50'),
(223, 'App\\Models\\User', 16, 'API TOKEN', '28b06288e8f58ec00f8b9823fa7c926c048118f6e7558e4ec2f3178147b32f0e', '[\"*\"]', '2024-08-28 06:33:14', NULL, '2024-08-28 06:33:14', '2024-08-28 06:33:14'),
(224, 'App\\Models\\User', 16, 'API TOKEN', '3a2d7896b7791227ebf8a80a481031204cdc0446f4ab35666dce25cbc522cdcb', '[\"*\"]', '2024-08-28 06:35:05', NULL, '2024-08-28 06:35:05', '2024-08-28 06:35:05'),
(225, 'App\\Models\\User', 16, 'API TOKEN', '541a7f9a147e042548ac0ae5cde45ccdfecace7014eae5825b16a0624896b927', '[\"*\"]', '2024-08-28 06:40:10', NULL, '2024-08-28 06:40:09', '2024-08-28 06:40:10'),
(226, 'App\\Models\\User', 16, 'API TOKEN', '1e289a423ee2975fd6ee665794de32fccb02a1e0270139a6e4981c1bc95d1a8e', '[\"*\"]', '2024-08-28 07:40:24', NULL, '2024-08-28 06:41:25', '2024-08-28 07:40:24'),
(227, 'App\\Models\\User', 13, 'API TOKEN', '1a2eac72166dd54d14eed56fad139fcaa15d95fac3373330bbf7919bb1935d37', '[\"*\"]', '2024-08-28 07:58:33', NULL, '2024-08-28 07:58:33', '2024-08-28 07:58:33'),
(228, 'App\\Models\\User', 13, 'API TOKEN', '4907abc02c7e06f8f15aaf9b17cad6abe9de190196679d2fc9af232d4d913b77', '[\"*\"]', '2024-08-28 08:03:44', NULL, '2024-08-28 08:03:44', '2024-08-28 08:03:44'),
(229, 'App\\Models\\User', 13, 'API TOKEN', 'fc59414e41f0ae7726d2d1a561a11a01bd74df842f1df90cb2fdb5fa33e48e18', '[\"*\"]', '2024-08-28 08:30:53', NULL, '2024-08-28 08:05:34', '2024-08-28 08:30:53'),
(230, 'App\\Models\\User', 2, 'API TOKEN', '8c7edf272b34ca14f14c2c2aa3773676980f740443221a707a5f16d60cca69fe', '[\"*\"]', '2024-08-28 08:51:22', NULL, '2024-08-28 08:07:05', '2024-08-28 08:51:22'),
(231, 'App\\Models\\User', 1, 'API TOKEN', '870d11390de88cbc31cc5d1d18c2db31a31d7aff010001b6b3a2a891cb8c4175', '[\"*\"]', '2024-08-28 08:32:26', NULL, '2024-08-28 08:31:15', '2024-08-28 08:32:26'),
(232, 'App\\Models\\User', 1, 'API TOKEN', 'a22a437f9b6dc620f889d7c6a9da392c5c5f0c685757c11ede3f0ea4c4bd12fa', '[\"*\"]', '2024-08-28 08:33:24', NULL, '2024-08-28 08:32:43', '2024-08-28 08:33:24'),
(233, 'App\\Models\\User', 1, 'API TOKEN', 'c9a65b63b038d201ffbf68bb81aec232cee354cdbc0f006d2c6bcc40bd5f9c50', '[\"*\"]', '2024-08-28 08:37:13', NULL, '2024-08-28 08:33:36', '2024-08-28 08:37:13'),
(234, 'App\\Models\\User', 1, 'API TOKEN', '29c01b03a67fb34678990bc2f6cdd8e54819d6a055f6bacb373dda5f4a074b7e', '[\"*\"]', '2024-08-28 11:28:29', NULL, '2024-08-28 08:48:08', '2024-08-28 11:28:29'),
(235, 'App\\Models\\User', 13, 'API TOKEN', '2908228f3b730993e26e761bf0665bf1d6dc91b127b706f2114ad2a3eed9d6b4', '[\"*\"]', '2024-08-29 14:33:53', NULL, '2024-08-28 09:15:06', '2024-08-29 14:33:53'),
(236, 'App\\Models\\User', 2, 'API TOKEN', '08aab49b6af4ad9e6a37943a7c46cade55ff3a6edfa6e3d767d73fe29f6907c9', '[\"*\"]', NULL, NULL, '2024-08-28 09:52:08', '2024-08-28 09:52:08'),
(237, 'App\\Models\\User', 15, 'API TOKEN', '4acee11a04ab7aac71097ed401c70f6b1aba37f7123df193226ffd543d9b6f26', '[\"*\"]', '2024-08-28 12:54:09', NULL, '2024-08-28 10:45:10', '2024-08-28 12:54:09'),
(238, 'App\\Models\\User', 21, 'API TOKEN', 'e705d54e8bf5c3e2aa1051e404d89f90e6443a093f541ecc6fb609a9995e8812', '[\"*\"]', '2024-08-28 11:34:17', NULL, '2024-08-28 10:46:41', '2024-08-28 11:34:17'),
(239, 'App\\Models\\User', 29, 'API TOKEN', 'e24236b4e0fa676ca50cfef9796ffaff67771c2c4ff83012de3f56db41dce666', '[\"*\"]', '2024-08-28 11:06:43', NULL, '2024-08-28 11:06:42', '2024-08-28 11:06:43'),
(240, 'App\\Models\\User', 2, 'API TOKEN', 'f9ccf5f331fd6e97b9fde45f071454d5deb3c944f85317f67d7fdd9e57b2ce7b', '[\"*\"]', '2024-08-28 11:43:52', NULL, '2024-08-28 11:28:46', '2024-08-28 11:43:52'),
(241, 'App\\Models\\User', 1, 'API TOKEN', 'd3d36bcc030c8a480dac970e44f583bb51f4fce1ecff97f6c7448e9ceaa69f1b', '[\"*\"]', '2024-08-28 13:29:39', NULL, '2024-08-28 11:44:39', '2024-08-28 13:29:39'),
(242, 'App\\Models\\User', 16, 'API TOKEN', 'a7f146756a75b4bfe61f237645031796ed06169a464988724c0ff3a79d5b3378', '[\"*\"]', '2024-08-29 11:38:29', NULL, '2024-08-28 13:29:55', '2024-08-29 11:38:29'),
(243, 'App\\Models\\User', 21, 'API TOKEN', '5a0d323e53fe8fed220d647d0c2b13762fd756636dd497624d9385c25a251bd3', '[\"*\"]', '2024-08-30 07:41:21', NULL, '2024-08-28 13:45:18', '2024-08-30 07:41:21'),
(244, 'App\\Models\\User', 29, 'API TOKEN', 'c21514de462a78e972feced982793676c1dec235737d60e54e22dcb0cf4bf078', '[\"*\"]', '2024-08-31 13:35:57', NULL, '2024-08-28 13:48:16', '2024-08-31 13:35:57'),
(245, 'App\\Models\\User', 1, 'API TOKEN', '256cb3569db6aac015b14634ffc6afe03925ff94a44e423a7b1e76d5ed29161c', '[\"*\"]', '2024-08-29 12:48:33', NULL, '2024-08-29 12:32:16', '2024-08-29 12:48:33'),
(246, 'App\\Models\\User', 1, 'API TOKEN', '103816565ab47213896f6ec969a08590ea72171986c3aee70bdcdf1752c03fff', '[\"*\"]', '2024-08-29 13:07:00', NULL, '2024-08-29 13:02:33', '2024-08-29 13:07:00'),
(247, 'App\\Models\\User', 2, 'API TOKEN', '451df5f8d4b43f1d41018b180bb836e7547523a31a24fa9e171dc171350e6740', '[\"*\"]', '2024-08-29 13:08:16', NULL, '2024-08-29 13:07:36', '2024-08-29 13:08:16'),
(248, 'App\\Models\\User', 1, 'API TOKEN', 'c7c4dba545001e666bf3d5b4852969011999b1faf5364834a13c796dbdf81236', '[\"*\"]', '2024-08-29 13:09:48', NULL, '2024-08-29 13:09:32', '2024-08-29 13:09:48'),
(249, 'App\\Models\\User', 2, 'API TOKEN', 'e6ef7404dc6e37813b18461e2e5532b153b0711a53ccf25a677de97ce35b9d9d', '[\"*\"]', '2024-08-29 13:20:22', NULL, '2024-08-29 13:10:13', '2024-08-29 13:20:22'),
(250, 'App\\Models\\User', 1, 'API TOKEN', '255c52e936c4563db73fa25e970d31c523705150fa2d25959976277f25d4d7cd', '[\"*\"]', '2024-08-29 13:26:17', NULL, '2024-08-29 13:22:42', '2024-08-29 13:26:17'),
(251, 'App\\Models\\User', 2, 'API TOKEN', '92e61639d9d703e00c850a23feb1b03431bd96046f0953869738f23056386acf', '[\"*\"]', '2024-08-29 13:27:05', NULL, '2024-08-29 13:26:36', '2024-08-29 13:27:05'),
(252, 'App\\Models\\User', 1, 'API TOKEN', 'c6b9bcdd04c9d3e9938d8baf02e8940171584c7e4d487dcfb10c773616faf929', '[\"*\"]', '2024-08-29 13:38:18', NULL, '2024-08-29 13:27:21', '2024-08-29 13:38:18'),
(253, 'App\\Models\\User', 2, 'API TOKEN', '5b0168e80d55a10182b4829454e88737d31a2c0948c66ffaa0fc4d68e98edd51', '[\"*\"]', '2024-08-29 13:39:12', NULL, '2024-08-29 13:38:41', '2024-08-29 13:39:12'),
(254, 'App\\Models\\User', 2, 'API TOKEN', '1feda1d75601575d8cac1dcdf1504294f437b66ac94eceafe1f57b6ce4edb57a', '[\"*\"]', '2024-08-29 13:41:39', NULL, '2024-08-29 13:39:26', '2024-08-29 13:41:39'),
(255, 'App\\Models\\User', 1, 'API TOKEN', '4e12cebc269492f8c5f9675fc33bab1d5446158f870dcc369baf3fc3c44d9c57', '[\"*\"]', '2024-08-29 13:44:01', NULL, '2024-08-29 13:42:03', '2024-08-29 13:44:01'),
(256, 'App\\Models\\User', 2, 'API TOKEN', '70083d53f196700f877883c41ec44ead7c1067c9fb26024cdbd7d1905db5b9b2', '[\"*\"]', '2024-08-29 13:49:25', NULL, '2024-08-29 13:44:27', '2024-08-29 13:49:25');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(257, 'App\\Models\\User', 16, 'API TOKEN', '86c746497d61018b5fadabcda7c854936dd54534f183edf329b9987ce84d827f', '[\"*\"]', '2024-08-30 04:01:38', NULL, '2024-08-29 13:49:37', '2024-08-30 04:01:38'),
(258, 'App\\Models\\User', 2, 'API TOKEN', '84ce0b032252b57d75a164417e76d10a14922e5042b6ce670edc299229ff05d6', '[\"*\"]', '2024-08-30 04:04:13', NULL, '2024-08-30 04:02:17', '2024-08-30 04:04:13'),
(259, 'App\\Models\\User', 1, 'API TOKEN', 'cc842aeab7ac3c92f95f271e7dfd3488d74cd2484974ab226a756a7f5243ed3c', '[\"*\"]', '2024-08-30 09:41:39', NULL, '2024-08-30 04:04:31', '2024-08-30 09:41:39'),
(260, 'App\\Models\\User', 2, 'API TOKEN', '078eaa376ca9db5de5a7348a1b95eba2e3e76ac65cdfee1f546a0c10c1faeb2a', '[\"*\"]', '2024-08-30 06:55:02', NULL, '2024-08-30 06:04:38', '2024-08-30 06:55:02'),
(261, 'App\\Models\\User', 1, 'API TOKEN', '02d885a93f7a898a04f8e1405737416ee65a8b8f01ade0c2a8c5105e1ac9c788', '[\"*\"]', '2024-08-30 07:33:38', NULL, '2024-08-30 06:08:19', '2024-08-30 07:33:38'),
(262, 'App\\Models\\User', 13, 'API TOKEN', '3a20f2edd984967609270ed83908f6282810443782ecfe868943167f05854473', '[\"*\"]', '2024-08-31 14:35:09', NULL, '2024-08-30 07:39:06', '2024-08-31 14:35:09'),
(263, 'App\\Models\\User', 1, 'API TOKEN', '694ada1303774b59328aa5a128ab06894fd14fca4acf7dd9b9e5482b1a0f6f3b', '[\"*\"]', '2024-08-30 08:05:37', NULL, '2024-08-30 07:41:49', '2024-08-30 08:05:37'),
(264, 'App\\Models\\User', 16, 'API TOKEN', '7de2b2aeef912ef9182b17f452baf9d123ac1a9c8b45f03f702d938ff58e74d6', '[\"*\"]', '2024-08-30 09:02:26', NULL, '2024-08-30 08:18:12', '2024-08-30 09:02:26'),
(265, 'App\\Models\\User', 1, 'API TOKEN', 'e146a3059a6bf6969e167e7de1dc3269c17fbcd97d3d6c6bd1ac3a909a42725b', '[\"*\"]', '2024-08-30 09:03:22', NULL, '2024-08-30 09:02:56', '2024-08-30 09:03:22'),
(266, 'App\\Models\\User', 2, 'API TOKEN', '0b1e659ccd9afcd1c15020c72e36bfeadc87712532bd0744ef164aa5950da7e7', '[\"*\"]', '2024-08-30 09:28:07', NULL, '2024-08-30 09:10:11', '2024-08-30 09:28:07'),
(267, 'App\\Models\\User', 2, 'API TOKEN', 'c0bf561d4bbe94e266c218371c9942e2caa78725486283ef0efd07d979adabf0', '[\"*\"]', '2024-08-30 09:57:35', NULL, '2024-08-30 09:40:28', '2024-08-30 09:57:35'),
(268, 'App\\Models\\User', 1, 'API TOKEN', '0dd5c122e03351236cfa0ec832760b9b68985f98cfd82d796900e095f0f834df', '[\"*\"]', '2024-08-30 11:41:33', NULL, '2024-08-30 09:58:45', '2024-08-30 11:41:33'),
(269, 'App\\Models\\User', 21, 'API TOKEN', 'ec22f5e969e3ddce8f3fb55092e8b25877e0cba5266c262d55d51bb99f9f3e94', '[\"*\"]', '2024-08-30 11:12:12', NULL, '2024-08-30 10:48:47', '2024-08-30 11:12:12'),
(270, 'App\\Models\\User', 1, 'API TOKEN', '6afd778f93abcf3037169734dc26b2d399372bde7706d6ea20f5d084394ff5d8', '[\"*\"]', '2024-08-31 17:52:57', NULL, '2024-08-30 11:09:28', '2024-08-31 17:52:57'),
(271, 'App\\Models\\User', 2, 'API TOKEN', '5776b30cc3141d65d8d7d31f3f4edb9e78418c26b91311025fe9b795c46bf992', '[\"*\"]', '2024-08-30 12:59:46', NULL, '2024-08-30 11:13:40', '2024-08-30 12:59:46'),
(272, 'App\\Models\\User', 2, 'API TOKEN', '6dd88ade16c5d9953f3931e0aae3b3ec10bb8b31610102ac9f65aa1bcab3545e', '[\"*\"]', '2024-08-30 13:22:10', NULL, '2024-08-30 11:41:44', '2024-08-30 13:22:10'),
(273, 'App\\Models\\User', 21, 'API TOKEN', '4da5eb87f08202bb9c461f0ca158030c38951a4ccbc642a10516565e478870a6', '[\"*\"]', '2024-08-31 14:38:50', NULL, '2024-08-30 13:00:01', '2024-08-31 14:38:50'),
(274, 'App\\Models\\User', 16, 'API TOKEN', 'd7482b03b130745045e158ac9fb2a583e348b966be4206811f13022631a21899', '[\"*\"]', '2024-08-31 06:56:03', NULL, '2024-08-30 13:22:29', '2024-08-31 06:56:03'),
(275, 'App\\Models\\User', 2, 'API TOKEN', 'f40897e4a2433923d8436fa5f8e51eeebfd0a411f4aecc42ce5e3b538482570a', '[\"*\"]', '2024-08-31 06:56:56', NULL, '2024-08-31 06:56:47', '2024-08-31 06:56:56'),
(276, 'App\\Models\\User', 16, 'API TOKEN', '0f9c6a9d1012fd0c38f299930896069c821107a52a8497a5e9020e4c83f2abb7', '[\"*\"]', '2024-08-31 14:20:26', NULL, '2024-08-31 07:31:21', '2024-08-31 14:20:26'),
(277, 'App\\Models\\User', 15, 'API TOKEN', 'e295016acf853dd5bfab0b9a504a87569394c3149fe6b41d71a17319fb68e8ae', '[\"*\"]', '2024-08-31 08:45:08', NULL, '2024-08-31 08:44:55', '2024-08-31 08:45:08'),
(278, 'App\\Models\\User', 1, 'API TOKEN', 'c9a30078c9e23565847dddbb953249f406d9b160c0a95f2bc40bb49d577517ac', '[\"*\"]', '2024-08-31 09:15:53', NULL, '2024-08-31 08:45:42', '2024-08-31 09:15:53'),
(279, 'App\\Models\\User', 2, 'API TOKEN', 'd675eb52a05b92a173ab204a916ad3808f9edee697ca581031005dd5133df238', '[\"*\"]', '2024-08-31 09:10:55', NULL, '2024-08-31 09:10:35', '2024-08-31 09:10:55'),
(280, 'App\\Models\\User', 2, 'API TOKEN', 'bb56837f09a6f08aaffac9c6e824c60cd6119283167b1a380af8ff0ee8a9cbca', '[\"*\"]', '2024-08-31 09:15:25', NULL, '2024-08-31 09:13:55', '2024-08-31 09:15:25'),
(281, 'App\\Models\\User', 2, 'API TOKEN', '5cf110867222b0a2b3cab0283a7b26194ec48f25b0c21ee45597bf279849491a', '[\"*\"]', '2024-08-31 13:15:13', NULL, '2024-08-31 13:06:53', '2024-08-31 13:15:13'),
(282, 'App\\Models\\User', 15, 'API TOKEN', 'f91f605ecedb0840e8b79ef2cc7038fb4e6950d1fc3f6787d63357ed13cae439', '[\"*\"]', '2024-08-31 19:38:55', NULL, '2024-08-31 14:07:36', '2024-08-31 19:38:55'),
(283, 'App\\Models\\User', 19, 'API TOKEN', '8470a7595a606b981c63c7afbceee1f19a6b9afd11b8adc375c30ee5234f8b4b', '[\"*\"]', '2024-09-20 07:59:11', NULL, '2024-08-31 14:13:52', '2024-09-20 07:59:11'),
(284, 'App\\Models\\User', 28, 'API TOKEN', '98247f6ab2678a1c14c5b781b73e0e956ddad8911c8b45dd719b7c88d7e37aec', '[\"*\"]', '2024-09-17 09:55:45', NULL, '2024-08-31 14:14:20', '2024-09-17 09:55:45'),
(285, 'App\\Models\\User', 17, 'API TOKEN', '175652e1c5139e62f367d4819efa2d2fc6ca105e32885c9517284193fab71d04', '[\"*\"]', '2024-09-17 09:55:47', NULL, '2024-08-31 14:15:16', '2024-09-17 09:55:47'),
(286, 'App\\Models\\User', 29, 'API TOKEN', '559f244844d589bace8bed2b59268d7d0283d6d403dda560382f858114d670b9', '[\"*\"]', '2024-09-02 06:34:10', NULL, '2024-08-31 14:23:17', '2024-09-02 06:34:10'),
(287, 'App\\Models\\User', 18, 'API TOKEN', '12d2cf819735193eeb9bdbed6630c99f85d6aaf6d7ce2054d9cf7b5e79fa6a9d', '[\"*\"]', '2024-09-19 05:25:15', NULL, '2024-08-31 14:28:41', '2024-09-19 05:25:15'),
(288, 'App\\Models\\User', 16, 'API TOKEN', 'a9be6c8c468316091c5a3c358e35e8aecf518deee755b65418e269c2c843442f', '[\"*\"]', '2024-09-04 08:29:54', NULL, '2024-08-31 14:31:50', '2024-09-04 08:29:54'),
(289, 'App\\Models\\User', 2, 'API TOKEN', 'db0d22017fa2c92dd800202f629aa2f842017725f5ddcf6969c2a74794859ed5', '[\"*\"]', '2024-08-31 14:42:56', NULL, '2024-08-31 14:40:36', '2024-08-31 14:42:56'),
(290, 'App\\Models\\User', 21, 'API TOKEN', '56853b42de2f94d945a17567e4829320ec5d1e133965c518479b9df418e2b944', '[\"*\"]', '2024-08-31 16:40:46', NULL, '2024-08-31 14:43:11', '2024-08-31 16:40:46'),
(291, 'App\\Models\\User', 13, 'API TOKEN', '03114c5f9002f194ed9efb5cd9ffc85f7b9bf2085eda180714b9c9c81a01a208', '[\"*\"]', '2024-09-17 09:44:01', NULL, '2024-08-31 15:56:06', '2024-09-17 09:44:01'),
(292, 'App\\Models\\User', 2, 'API TOKEN', '2a3cbcffde5eabd74825155ffd4e4f87f8ba4afa91049c33a6ff4e2a0387ab23', '[\"*\"]', '2024-08-31 16:41:59', NULL, '2024-08-31 16:41:13', '2024-08-31 16:41:59'),
(293, 'App\\Models\\User', 2, 'API TOKEN', '8a01b7a8d02a839ace7bd8a7661822799ee461b41507dd9c2374df5b7508442f', '[\"*\"]', '2024-08-31 16:42:45', NULL, '2024-08-31 16:42:14', '2024-08-31 16:42:45'),
(294, 'App\\Models\\User', 21, 'API TOKEN', '817f530852b7f8ec420a70d03337cfe327baf4118d5f13a25e1c9f2e3f125755', '[\"*\"]', '2024-08-31 16:43:17', NULL, '2024-08-31 16:43:16', '2024-08-31 16:43:17'),
(295, 'App\\Models\\User', 15, 'API TOKEN', '7f0fe76692bf943c1dd4c5f530bb018396c9b009fc5384812ba65422addfbd83', '[\"*\"]', '2024-09-17 05:51:14', NULL, '2024-09-01 11:11:12', '2024-09-17 05:51:14'),
(296, 'App\\Models\\User', 21, 'API TOKEN', '8ba5fb55a3c0f3d156613b1ea01e2a3766fee7221f443402861275314ed59cc0', '[\"*\"]', '2024-09-16 10:38:04', NULL, '2024-09-01 14:47:56', '2024-09-16 10:38:04'),
(297, 'App\\Models\\User', 26, 'API TOKEN', 'c1ddfe1336ec4a4e99a015e6fe8a5e76b66c444713c4ca0eae7277a257f568d8', '[\"*\"]', '2024-09-17 09:55:35', NULL, '2024-09-02 04:13:04', '2024-09-17 09:55:35'),
(298, 'App\\Models\\User', 23, 'API TOKEN', 'b582b97048599e7b99770b4de75eed4733da832399fe038999a956b203bfc894', '[\"*\"]', '2024-09-17 09:55:53', NULL, '2024-09-02 04:15:34', '2024-09-17 09:55:53'),
(299, 'App\\Models\\User', 24, 'API TOKEN', 'da4c3e0d7d4cfb954d44e6851aa6b8163838d71cdf8c42e3a73b5e128e701d7a', '[\"*\"]', '2024-09-17 09:55:29', NULL, '2024-09-02 04:15:34', '2024-09-17 09:55:29'),
(300, 'App\\Models\\User', 25, 'API TOKEN', 'b5bc914956a17090a6c2c0d6dc3c150965b1efad35dba7ae0b3988267186d8a2', '[\"*\"]', '2024-09-17 08:39:54', NULL, '2024-09-02 05:53:48', '2024-09-17 08:39:54'),
(301, 'App\\Models\\User', 29, 'API TOKEN', '6d93ac9ab09ba7350a6801d90167b0dd12fff8452a9920b9a3f1903848cbdb38', '[\"*\"]', '2024-10-11 05:52:42', NULL, '2024-09-02 06:34:58', '2024-10-11 05:52:42'),
(302, 'App\\Models\\User', 27, 'API TOKEN', 'b318de9a74111c5ec6f0d5ddc8f378dbc17cc2d99d18957d799dce94aba42998', '[\"*\"]', '2024-09-17 09:25:40', NULL, '2024-09-02 07:04:45', '2024-09-17 09:25:40'),
(303, 'App\\Models\\User', 14, 'API TOKEN', 'cee8fd8aa5d09a5f27a95788d92f5e8ec2dadf18259fd94807e04bb21f764e35', '[\"*\"]', '2024-09-17 09:57:05', NULL, '2024-09-02 07:05:30', '2024-09-17 09:57:05'),
(304, 'App\\Models\\User', 30, 'API TOKEN', '06bf109f70c8b1a42ec56eefecf3f72c0e3f8c3eeb44481efcddaa3aa42a5209', '[\"*\"]', '2024-09-17 09:56:03', NULL, '2024-09-04 07:10:21', '2024-09-17 09:56:03'),
(305, 'App\\Models\\User', 16, 'API TOKEN', '009219a55d94c925cb635b945fc1764339fab34d62aab4874d35c9160d1ae7eb', '[\"*\"]', '2024-09-04 13:26:22', NULL, '2024-09-04 13:26:19', '2024-09-04 13:26:22'),
(306, 'App\\Models\\User', 15, 'API TOKEN', 'bc29c805d04d12c44375227777c5e330035faf2b17f973a8452a5b8403031791', '[\"*\"]', '2024-09-04 13:51:08', NULL, '2024-09-04 13:32:07', '2024-09-04 13:51:08'),
(307, 'App\\Models\\User', 16, 'API TOKEN', '9494697c7e462cb2a2cffb78e67689b6cd2fbdf2bd421f8d4228dabc7451c2dd', '[\"*\"]', '2024-09-05 03:39:21', NULL, '2024-09-04 13:53:13', '2024-09-05 03:39:21'),
(308, 'App\\Models\\User', 16, 'API TOKEN', '516cbce9d4a85c0cbafe80dedc2cbfcbfac579ec3345e282cfaf841d1f4047cb', '[\"*\"]', '2024-09-05 05:02:08', NULL, '2024-09-05 03:45:17', '2024-09-05 05:02:08'),
(309, 'App\\Models\\User', 16, 'API TOKEN', 'dcfcc80efb59e8b9df69c964c4a083a0ec4b58b18b2912233630eceabfc11a97', '[\"*\"]', '2024-09-06 04:17:22', NULL, '2024-09-05 05:59:17', '2024-09-06 04:17:22'),
(310, 'App\\Models\\User', 16, 'API TOKEN', 'a9cbc5bc445fa41a8b17560de4e91758d193fe6d8c5613a009e3a4642bd99c82', '[\"*\"]', '2024-09-06 06:42:53', NULL, '2024-09-06 06:28:54', '2024-09-06 06:42:53'),
(311, 'App\\Models\\User', 13, 'API TOKEN', '2703e66c154d50f668b82944041fb43cae6289a7627013190eae0a040f1dcb8d', '[\"*\"]', '2024-09-06 06:38:52', NULL, '2024-09-06 06:37:54', '2024-09-06 06:38:52'),
(312, 'App\\Models\\User', 16, 'API TOKEN', '5986150ff2cad0c604b5c7a16363947ff1f46273ff03ae6d32cf3c09438f5af4', '[\"*\"]', '2024-09-06 07:02:45', NULL, '2024-09-06 06:51:34', '2024-09-06 07:02:45'),
(313, 'App\\Models\\User', 16, 'API TOKEN', '8ba349cbb0913568b361e226173571eee3c4c80adb2fd7409221851e12530fd2', '[\"*\"]', '2024-09-17 09:55:54', NULL, '2024-09-06 07:06:22', '2024-09-17 09:55:54'),
(314, 'App\\Models\\User', 21, 'API TOKEN', 'dbc32da0fa4790dff7311002c654feceb52b7db6920a4413573d7b82223e1c02', '[\"*\"]', '2024-09-17 05:51:57', NULL, '2024-09-17 05:51:32', '2024-09-17 05:51:57'),
(315, 'App\\Models\\User', 15, 'API TOKEN', '10bc2f6e613834925d1ec6e5c072eaa6b89e8ef41d9e284a2ef76a1d20b69aea', '[\"*\"]', '2024-09-17 07:04:56', NULL, '2024-09-17 05:54:59', '2024-09-17 07:04:56'),
(316, 'App\\Models\\User', 15, 'API TOKEN', 'c23b44ad7947f05ed9e88da19d6878fb69331854bac36345261ad86170961d53', '[\"*\"]', '2024-09-20 12:08:59', NULL, '2024-09-17 07:08:31', '2024-09-20 12:08:59'),
(317, 'App\\Models\\User', 31, 'API TOKEN', '61d53c4bd06aa63e920d10f77024a6867cf9efb9564734eb29430f90eb6a56a0', '[\"*\"]', '2024-09-17 09:54:18', NULL, '2024-09-17 09:46:33', '2024-09-17 09:54:18'),
(318, 'App\\Models\\User', 31, 'API TOKEN', 'e7e3c6a16c863e068d1fbd8cbbd01500b9387985c2723a6acd2186ae832881a6', '[\"*\"]', '2024-09-17 09:59:39', NULL, '2024-09-17 09:54:35', '2024-09-17 09:59:39'),
(319, 'App\\Models\\User', 26, 'API TOKEN', '02fa67d58fedbcc8e54ea9cf8acbd66f644a9f53200cb78a3732df5d544ecb5e', '[\"*\"]', '2024-11-16 12:34:17', NULL, '2024-09-17 09:56:06', '2024-11-16 12:34:17'),
(320, 'App\\Models\\User', 28, 'API TOKEN', '489d5d5e4c5b5161ae8ae096b03fe2f2fdd551ca566b73af0db4bea0a6af18a1', '[\"*\"]', '2024-11-18 08:01:14', NULL, '2024-09-17 09:56:08', '2024-11-18 08:01:14'),
(321, 'App\\Models\\User', 17, 'API TOKEN', '9c60bceb78bbb2c906b58ceb62a28dfcf3ac25f55b452f3175854f39ee1d50e4', '[\"*\"]', '2024-11-18 07:46:07', NULL, '2024-09-17 09:56:11', '2024-11-18 07:46:07'),
(322, 'App\\Models\\User', 27, 'API TOKEN', '7a91bc80fbb7d423973c5d5556fe0a8a8ddb04b00a0a24872294e9a3718ac841', '[\"*\"]', '2024-11-18 04:59:55', NULL, '2024-09-17 09:56:13', '2024-11-18 04:59:55'),
(323, 'App\\Models\\User', 23, 'API TOKEN', '048784d4f6a04f511c43e76ecf2a2ae79a70cc08af5bc8be391d3dbd58545be4', '[\"*\"]', '2024-09-23 13:17:21', NULL, '2024-09-17 09:56:22', '2024-09-23 13:17:21'),
(324, 'App\\Models\\User', 30, 'API TOKEN', 'fcd393e0e50b804c7db4fd6e421405276ee04482253598ff3d452c8f27a5bb89', '[\"*\"]', '2024-09-23 13:18:27', NULL, '2024-09-17 09:56:39', '2024-09-23 13:18:27'),
(325, 'App\\Models\\User', 24, 'API TOKEN', '345f68d3f5661cad4f367991e11619568dedaca1f7ffb57049ffcdae8f2c8145', '[\"*\"]', '2024-11-18 03:17:21', NULL, '2024-09-17 09:56:44', '2024-11-18 03:17:21'),
(326, 'App\\Models\\User', 16, 'API TOKEN', 'e681bdf63e21ed893e57739707d76567eefc9b16fe8e1e67af2f7425426218b4', '[\"*\"]', '2024-09-20 08:48:06', NULL, '2024-09-17 09:56:47', '2024-09-20 08:48:06'),
(327, 'App\\Models\\User', 13, 'API TOKEN', '4ebbfceb0c4bb2a4e117cf05415e0cb468e8003249db90ac68edf4497d21c297', '[\"*\"]', '2024-09-20 11:45:33', NULL, '2024-09-17 09:56:51', '2024-09-20 11:45:33'),
(328, 'App\\Models\\User', 14, 'API TOKEN', '5b22455f3a304240493f3bc65400b38dd61de743bdee19fd3e59c0794715a9e5', '[\"*\"]', '2024-10-30 12:29:06', NULL, '2024-09-17 09:57:18', '2024-10-30 12:29:06'),
(329, 'App\\Models\\User', 25, 'API TOKEN', '8f75cb8c5be3de331603e03d3c78dba3b940433686424d82edcfd05978cee4dd', '[\"*\"]', '2024-11-18 07:39:49', NULL, '2024-09-17 09:58:02', '2024-11-18 07:39:49'),
(330, 'App\\Models\\User', 31, 'API TOKEN', '937463e64ae552460425483014aa03babd9de08905378c6c6bf2075c44cc566d', '[\"*\"]', '2024-09-19 05:30:54', NULL, '2024-09-17 10:00:27', '2024-09-19 05:30:54'),
(331, 'App\\Models\\User', 18, 'API TOKEN', 'dbab6ee44b56604c96b4bada5ad29336f9dd0f9d9d671e72dddf037d2dea3a58', '[\"*\"]', '2024-09-19 06:40:33', NULL, '2024-09-19 05:57:50', '2024-09-19 06:40:33'),
(332, 'App\\Models\\User', 27, 'API TOKEN', 'f38b08a5e98303c2fd3cdd874f683167135914f4f0a14b52c3e06a181f6e700d', '[\"*\"]', NULL, NULL, '2024-09-19 06:39:53', '2024-09-19 06:39:53'),
(333, 'App\\Models\\User', 27, 'API TOKEN', 'cd2ae2207f5f9eb62c6b4511c2bce7c48984ba3b968f7d8aedcc5bfc814d2497', '[\"*\"]', '2024-09-19 06:42:00', NULL, '2024-09-19 06:41:59', '2024-09-19 06:42:00'),
(334, 'App\\Models\\User', 27, 'API TOKEN', 'f59bd03d181245d2f3ea6d5d1b2df71edafae5fe534043fbf046b457f2d8ef41', '[\"*\"]', NULL, NULL, '2024-09-19 06:43:56', '2024-09-19 06:43:56'),
(335, 'App\\Models\\User', 18, 'API TOKEN', '8c4e93ca6872faa27d98b58030b83593cb64073af0098463c166b3f98cee7d29', '[\"*\"]', '2024-09-20 05:17:08', NULL, '2024-09-19 06:45:39', '2024-09-20 05:17:08'),
(336, 'App\\Models\\User', 18, 'API TOKEN', '8a4606b1267cc177551da699af9f4680d60ba1808c23c85508913f07f9fb04c8', '[\"*\"]', '2024-09-20 06:27:42', NULL, '2024-09-19 13:31:22', '2024-09-20 06:27:42'),
(337, 'App\\Models\\User', 13, 'API TOKEN', 'ca5986430aa3cb46e06367dc99150e4b36ee7121ea1b146a4444a9e4cc918ca8', '[\"*\"]', '2024-09-19 13:42:35', NULL, '2024-09-19 13:39:14', '2024-09-19 13:42:35'),
(338, 'App\\Models\\User', 30, 'API TOKEN', '028d7ffcd1b53753555e93251594f049c3dd933d4552486894b05f5442a82109', '[\"*\"]', '2024-09-20 06:03:46', NULL, '2024-09-20 06:03:16', '2024-09-20 06:03:46'),
(339, 'App\\Models\\User', 19, 'API TOKEN', 'edab40129224540eae0b1843cc6309d41ff3b2caa8d379417dca7932b8228503', '[\"*\"]', '2024-09-20 06:04:59', NULL, '2024-09-20 06:04:12', '2024-09-20 06:04:59'),
(340, 'App\\Models\\User', 14, 'API TOKEN', 'b0ff87c2718f4f418f8bea71d9430c419aa39ee1b2c4652ccedea0e00488cd6d', '[\"*\"]', '2024-09-20 06:06:32', NULL, '2024-09-20 06:06:08', '2024-09-20 06:06:32'),
(341, 'App\\Models\\User', 24, 'API TOKEN', 'bd1ac464449c2fa5115064b28b26d60225a775eec67d0cce80341563a07d8a54', '[\"*\"]', '2024-09-20 06:07:37', NULL, '2024-09-20 06:06:55', '2024-09-20 06:07:37'),
(342, 'App\\Models\\User', 23, 'API TOKEN', 'd888597ecadeaab8252f6383982a7f7347ff9b954321a2413d14e239c5e3d960', '[\"*\"]', '2024-09-20 06:08:30', NULL, '2024-09-20 06:07:54', '2024-09-20 06:08:30'),
(343, 'App\\Models\\User', 18, 'API TOKEN', '5127f8225c4b2cde603593f25fbe91f388b9329130779f8612d90a106bd2789e', '[\"*\"]', '2024-09-20 07:21:47', NULL, '2024-09-20 06:16:52', '2024-09-20 07:21:47'),
(344, 'App\\Models\\User', 18, 'API TOKEN', '47aaa9bc9f07310c778ae5741b56584c98e3a4419a056d3ea26e6005f836bba1', '[\"*\"]', '2024-09-20 07:27:04', NULL, '2024-09-20 07:23:59', '2024-09-20 07:27:04'),
(345, 'App\\Models\\User', 18, 'API TOKEN', 'cc27ab5aebdf5196ff2c68444bd5df998d7e07e19db12a38be39e9dce33c0a38', '[\"*\"]', '2024-09-20 07:35:04', NULL, '2024-09-20 07:28:58', '2024-09-20 07:35:04'),
(346, 'App\\Models\\User', 18, 'API TOKEN', 'e3e00f97de1fca57a7bde19a4317f5913fca3032ed50a8455662f1c1ac13e17c', '[\"*\"]', '2024-09-20 07:40:43', NULL, '2024-09-20 07:37:05', '2024-09-20 07:40:43'),
(347, 'App\\Models\\User', 18, 'API TOKEN', '44be7165ff24048ad244ef766f889954c03547b4ae454c284d831b71501c0be8', '[\"*\"]', '2024-09-20 07:41:00', NULL, '2024-09-20 07:41:00', '2024-09-20 07:41:00'),
(348, 'App\\Models\\User', 18, 'API TOKEN', '7172bb7b62b09f9c14eb8e0de229dd6ec39397bdddd6cbcd26e32fe46fb1d316', '[\"*\"]', '2024-09-20 07:45:27', NULL, '2024-09-20 07:45:27', '2024-09-20 07:45:27'),
(349, 'App\\Models\\User', 18, 'API TOKEN', '9e7cc983f41a9566e2b20c9f0553de04ad10759459350f4e4e063731a8af0886', '[\"*\"]', '2024-09-20 07:49:01', NULL, '2024-09-20 07:48:49', '2024-09-20 07:49:01'),
(350, 'App\\Models\\User', 18, 'API TOKEN', '09fd3b95516627288e937f163fd66d55675cc76f8c7042190d5fc078c114a6ea', '[\"*\"]', '2024-09-20 07:50:29', NULL, '2024-09-20 07:50:29', '2024-09-20 07:50:29'),
(351, 'App\\Models\\User', 18, 'API TOKEN', '2018fea3f330c2d5c15dba02653c19dad9f26958a6d1b553c23bc9642c508861', '[\"*\"]', '2024-09-20 07:52:08', NULL, '2024-09-20 07:52:06', '2024-09-20 07:52:08'),
(352, 'App\\Models\\User', 18, 'API TOKEN', '46eeffcdd38a08ee73c311748fbe147d9c6b99d2dca7b960e28698092f6d5c99', '[\"*\"]', '2024-09-20 07:53:35', NULL, '2024-09-20 07:53:35', '2024-09-20 07:53:35'),
(353, 'App\\Models\\User', 18, 'API TOKEN', '3111b0216286b6f34606ad406d4201111f806aac91563e24851afff871083af5', '[\"*\"]', '2024-09-20 08:47:11', NULL, '2024-09-20 07:54:02', '2024-09-20 08:47:11'),
(354, 'App\\Models\\User', 18, 'API TOKEN', '41ac0607d770b25b06c6f200f3805fc4f3cd26c4e486c1a517efd1845df12f7b', '[\"*\"]', '2024-09-20 07:59:33', NULL, '2024-09-20 07:59:27', '2024-09-20 07:59:33'),
(355, 'App\\Models\\User', 19, 'API TOKEN', '3d34268d4d8b055ae3a5a29c1c501a933d754898fee5f907531a6e3a0e457cdc', '[\"*\"]', '2024-09-20 08:30:27', NULL, '2024-09-20 08:20:14', '2024-09-20 08:30:27'),
(356, 'App\\Models\\User', 18, 'API TOKEN', '3a5dd97d2847c2b2eccedb063aa4fc362181be86bcf4f4f8b45a873d2003f2b2', '[\"*\"]', '2024-09-20 08:33:36', NULL, '2024-09-20 08:32:56', '2024-09-20 08:33:36'),
(357, 'App\\Models\\User', 19, 'API TOKEN', 'd16ae0875e6674fe0531ba89cfdbf43ee39eaf92d967996cd865f1a7a7ac292e', '[\"*\"]', '2024-09-23 08:42:49', NULL, '2024-09-20 08:38:28', '2024-09-23 08:42:49'),
(358, 'App\\Models\\User', 18, 'API TOKEN', 'e8716e30bf89d17cc9e11e13fb4b52ff0869fb121be3ce4a1f6b595008843e5e', '[\"*\"]', '2024-09-20 08:48:48', NULL, '2024-09-20 08:48:46', '2024-09-20 08:48:48'),
(359, 'App\\Models\\User', 18, 'API TOKEN', 'b8f2e1f456f844c993635d119cf561f69248d4df9c896f2242b634ff49714d40', '[\"*\"]', '2024-09-20 09:26:27', NULL, '2024-09-20 08:53:49', '2024-09-20 09:26:27'),
(360, 'App\\Models\\User', 18, 'API TOKEN', 'f15db54d79e36174f125b41fb5115b23fab7e2322297bb0d9f870ba3579a9cb5', '[\"*\"]', '2024-09-20 09:16:00', NULL, '2024-09-20 08:58:53', '2024-09-20 09:16:00'),
(361, 'App\\Models\\User', 16, 'API TOKEN', '3b6e4a1f14cc5d0307e366e0d8edc5a36603fa7ff3c63bf51440777433031fa5', '[\"*\"]', '2024-09-23 08:23:37', NULL, '2024-09-20 09:23:10', '2024-09-23 08:23:37'),
(362, 'App\\Models\\User', 18, 'API TOKEN', '94875f8316451f54a20ad63e72bb7e62fc14eb9f9745410d07c34b20cfb4a6a5', '[\"*\"]', '2024-09-20 12:35:05', NULL, '2024-09-20 09:27:55', '2024-09-20 12:35:05'),
(363, 'App\\Models\\User', 18, 'API TOKEN', '8113e2176a59140a558f038b91e47c8b7508f88655dfbd34748334f6aca5af90', '[\"*\"]', '2024-09-20 11:03:05', NULL, '2024-09-20 11:02:52', '2024-09-20 11:03:05'),
(364, 'App\\Models\\User', 18, 'API TOKEN', 'fd3b7313c5beae2f3c5fe7c96a0dfcfeef408241f2519da8631ebcb38872e6e3', '[\"*\"]', '2024-09-20 11:18:31', NULL, '2024-09-20 11:07:21', '2024-09-20 11:18:31'),
(365, 'App\\Models\\User', 18, 'API TOKEN', '7e03d107a1eed270a3b8c94b31e584d2c755688a24ac78479bf0ac0467ec3632', '[\"*\"]', '2024-09-20 11:25:06', NULL, '2024-09-20 11:21:04', '2024-09-20 11:25:06'),
(366, 'App\\Models\\User', 18, 'API TOKEN', '487277968125fc5d755a606f87a2d834cf8d7962c79a9916d962d2306edea303', '[\"*\"]', '2024-09-20 11:24:44', NULL, '2024-09-20 11:24:38', '2024-09-20 11:24:44'),
(367, 'App\\Models\\User', 18, 'API TOKEN', '16f2b3b76170cc12113895758ba99aa02b6d5c27a2c0d6e3571b68bd853ced4b', '[\"*\"]', '2024-09-20 11:27:52', NULL, '2024-09-20 11:25:18', '2024-09-20 11:27:52'),
(368, 'App\\Models\\User', 31, 'API TOKEN', '64b8ae35dab35eb97972efbfb7dcd897efe888136522f62ab4c5fe4a0b7be57e', '[\"*\"]', '2024-09-21 10:32:38', NULL, '2024-09-20 11:25:20', '2024-09-21 10:32:38'),
(369, 'App\\Models\\User', 18, 'API TOKEN', '54213102bfe596b39f9bd4373ecc9e573ad0aaa67ab80409287e6ad57aa15690', '[\"*\"]', '2024-09-20 11:38:37', NULL, '2024-09-20 11:32:52', '2024-09-20 11:38:37'),
(370, 'App\\Models\\User', 18, 'API TOKEN', 'd788fae3142e5d2f04a9315adf463eaade85003ed811f8c90f4d026271c74464', '[\"*\"]', '2024-09-20 11:44:59', NULL, '2024-09-20 11:40:40', '2024-09-20 11:44:59'),
(371, 'App\\Models\\User', 18, 'API TOKEN', 'a795b9c63503dded14df39c20ddf100fa2b1f5a048ee1cecc8c6d9f643e12bc7', '[\"*\"]', '2024-09-20 11:51:54', NULL, '2024-09-20 11:50:40', '2024-09-20 11:51:54'),
(372, 'App\\Models\\User', 18, 'API TOKEN', '5736b1166342f106b7b2bf09610b4d8e5de6154bd19fc571d17c24671749f52c', '[\"*\"]', '2024-09-20 12:19:00', NULL, '2024-09-20 11:59:08', '2024-09-20 12:19:00'),
(373, 'App\\Models\\User', 15, 'API TOKEN', '7e96c9b1947c7a5f19fb653d4d8270533e7a575588bd49a8dc1c84967c5e38e3', '[\"*\"]', '2024-09-20 12:23:16', NULL, '2024-09-20 12:15:32', '2024-09-20 12:23:16'),
(374, 'App\\Models\\User', 18, 'API TOKEN', '2813b9bb6bbc8fc6473de8d42fe34e98d9fb2c24ed5bb71c64d4ab10d7fcbb6a', '[\"*\"]', '2024-09-20 12:23:49', NULL, '2024-09-20 12:21:33', '2024-09-20 12:23:49'),
(375, 'App\\Models\\User', 13, 'API TOKEN', 'a1266447f27052bb54dea038d7ad0cd8c356f355559438bc1bf6ed5825e907ce', '[\"*\"]', '2024-09-21 09:32:53', NULL, '2024-09-20 12:21:48', '2024-09-21 09:32:53'),
(376, 'App\\Models\\User', 15, 'API TOKEN', '5dd4def5e915d0d4f45b08e956d5adc86715916edb88dca99625ff8e101f5a63', '[\"*\"]', '2024-09-20 12:25:29', NULL, '2024-09-20 12:25:12', '2024-09-20 12:25:29'),
(377, 'App\\Models\\User', 31, 'API TOKEN', 'c9dfd08dd87f2550c94ab82100db966dd6831e651a536698b2135ad6ef70245a', '[\"*\"]', '2024-09-20 12:25:56', NULL, '2024-09-20 12:25:51', '2024-09-20 12:25:56'),
(378, 'App\\Models\\User', 31, 'API TOKEN', 'e9280a198c096d150370b17daac8eb8fcac2f697acaa4a9da1b3b828f5b035a8', '[\"*\"]', '2024-09-20 12:26:45', NULL, '2024-09-20 12:26:13', '2024-09-20 12:26:45'),
(379, 'App\\Models\\User', 18, 'API TOKEN', 'a351179578876410db04ffbd8e37e9392d5133cb442341374fc0dd496988fb6e', '[\"*\"]', '2024-09-20 13:19:38', NULL, '2024-09-20 12:27:19', '2024-09-20 13:19:38'),
(380, 'App\\Models\\User', 15, 'API TOKEN', '64c09d91fd8fa5e17619b24dc4ac6861e3c58c6e28172b4f5f9ae38d30cf53ab', '[\"*\"]', '2024-09-20 12:28:46', NULL, '2024-09-20 12:27:27', '2024-09-20 12:28:46'),
(381, 'App\\Models\\User', 15, 'API TOKEN', '7a9460c8c9e62ba9933bec083f169cffcb3c73316fbbe5729aff82e65ea88e77', '[\"*\"]', '2024-09-21 10:00:35', NULL, '2024-09-20 12:35:53', '2024-09-21 10:00:35'),
(382, 'App\\Models\\User', 18, 'API TOKEN', 'a508665fb6857646cd1dea73f7f5fbe5d72f767186769457215097ad80f3516c', '[\"*\"]', '2024-09-20 13:50:02', NULL, '2024-09-20 12:43:20', '2024-09-20 13:50:02'),
(383, 'App\\Models\\User', 13, 'API TOKEN', 'cdc3b7f902455d6b72b56879ae73edd0ad41939bdc604be66f560124c17bb37d', '[\"*\"]', '2024-09-20 13:27:48', NULL, '2024-09-20 13:00:18', '2024-09-20 13:27:48'),
(384, 'App\\Models\\User', 18, 'API TOKEN', 'b55cec2c7edc783d5b5f0073a15a9cd7b23c22daa9ba6a7c70504083a384c065', '[\"*\"]', '2024-09-21 09:43:28', NULL, '2024-09-20 13:54:09', '2024-09-21 09:43:28'),
(385, 'App\\Models\\User', 15, 'API TOKEN', '69e31decd0f992e30962efd171897939779bb236bc4a0cffffe901659a2e5668', '[\"*\"]', '2024-09-21 10:15:54', NULL, '2024-09-21 10:01:33', '2024-09-21 10:15:54'),
(386, 'App\\Models\\User', 18, 'API TOKEN', 'd3b3eb802141c0b048130d7159d710326f8ca906298384163264233bae8db9b8', '[\"*\"]', '2024-09-21 10:15:24', NULL, '2024-09-21 10:13:22', '2024-09-21 10:15:24'),
(387, 'App\\Models\\User', 31, 'API TOKEN', '14287b4c926a13318d89cfd1f9e8e62b00b3c67d507aa028940c7834f7d841b3', '[\"*\"]', '2024-09-21 10:26:51', NULL, '2024-09-21 10:16:34', '2024-09-21 10:26:51'),
(388, 'App\\Models\\User', 18, 'API TOKEN', 'f8b4ecc8296f08232a20598d13c6607af91eec42e46370e5a12d945a28e23242', '[\"*\"]', '2024-09-21 10:21:08', NULL, '2024-09-21 10:17:28', '2024-09-21 10:21:08'),
(389, 'App\\Models\\User', 13, 'API TOKEN', 'fe984ee6c1e071f3e6507ef124858dfa4cdb213f8537642a800d0a91adf05177', '[\"*\"]', '2024-09-21 14:16:05', NULL, '2024-09-21 10:19:47', '2024-09-21 14:16:05'),
(390, 'App\\Models\\User', 31, 'API TOKEN', '1a917d662dd084d08e9aba9a7c8a46e96a914145eea96dc8a778a485706e0c7d', '[\"*\"]', '2024-09-21 10:31:59', NULL, '2024-09-21 10:29:22', '2024-09-21 10:31:59'),
(391, 'App\\Models\\User', 31, 'API TOKEN', '0051b1557fe912973aba9e142557f66eedb01391ae841595f4417e5ba7123e6d', '[\"*\"]', '2024-09-21 10:30:48', NULL, '2024-09-21 10:30:33', '2024-09-21 10:30:48'),
(392, 'App\\Models\\User', 15, 'API TOKEN', '0b4ab0f85f7f3970385b6d886ff44728a00f424e2e8b7d9fece66a65c82d1ea3', '[\"*\"]', '2024-09-21 10:42:23', NULL, '2024-09-21 10:31:01', '2024-09-21 10:42:23'),
(393, 'App\\Models\\User', 31, 'API TOKEN', 'f01a151052debcb3f531717a387c25d48fee4b4008e8c5241bf90478bf3faced', '[\"*\"]', '2024-09-21 10:36:40', NULL, '2024-09-21 10:36:24', '2024-09-21 10:36:40'),
(394, 'App\\Models\\User', 31, 'API TOKEN', 'df026eb197d4ac13a6395534d2a9c03b9395af1fb411a5588c06d2f53cd70d46', '[\"*\"]', '2024-09-21 10:44:08', NULL, '2024-09-21 10:42:37', '2024-09-21 10:44:08'),
(395, 'App\\Models\\User', 15, 'API TOKEN', '0dfb27c2d5d993692888b3716b3a20ea7003ab675c16f76286eddd6bc756b44b', '[\"*\"]', '2024-09-21 10:44:59', NULL, '2024-09-21 10:44:43', '2024-09-21 10:44:59'),
(396, 'App\\Models\\User', 31, 'API TOKEN', '0df5788bdfb03e826fd0fced607b4ca08e44c4a0185808ad1e1a6655d6c3e3a5', '[\"*\"]', '2024-09-21 11:13:24', NULL, '2024-09-21 10:47:45', '2024-09-21 11:13:24'),
(397, 'App\\Models\\User', 18, 'API TOKEN', 'd066526f83757651ec8561c6cdb240f6d8e9c0c6b0a5534325a233c219eda5ab', '[\"*\"]', '2024-09-21 14:23:15', NULL, '2024-09-21 10:56:46', '2024-09-21 14:23:15'),
(398, 'App\\Models\\User', 15, 'API TOKEN', '5e4f099fe505f07c3f965e0b90a507abbf081a83eb64b961e19aadf350f07e5a', '[\"*\"]', '2024-11-18 06:32:29', NULL, '2024-09-21 14:09:32', '2024-11-18 06:32:29'),
(399, 'App\\Models\\User', 13, 'API TOKEN', 'ff4c8670d8a5298574c61955e32f79d5a233395840680247a7fd224393862f4e', '[\"*\"]', '2024-10-07 14:37:55', NULL, '2024-09-21 14:17:11', '2024-10-07 14:37:55'),
(400, 'App\\Models\\User', 31, 'API TOKEN', '38fb9f03079fc17a9869d388331200416743da0b81e62bbd1eb237022a8edab7', '[\"*\"]', '2024-10-15 10:47:15', NULL, '2024-09-21 14:17:52', '2024-10-15 10:47:15'),
(401, 'App\\Models\\User', 18, 'API TOKEN', 'd480587bd5eef1268a0717dd05f2dad2c3e8cbec95e3bd3986317f18807578ca', '[\"*\"]', '2024-10-01 04:15:25', NULL, '2024-09-22 14:38:35', '2024-10-01 04:15:25'),
(402, 'App\\Models\\User', 19, 'API TOKEN', '7967163576fb312672ce93642dc5fabe1b8a7e6ed21145fb8fbb4f499f7e0312', '[\"*\"]', '2024-11-18 06:34:05', NULL, '2024-09-23 08:44:06', '2024-11-18 06:34:05'),
(403, 'App\\Models\\User', 16, 'API TOKEN', '39e1d087f1a1d71b51aa0353a1659f2174330a4871c67705c1717787000a0ea3', '[\"*\"]', '2024-10-29 13:41:16', NULL, '2024-09-23 08:48:14', '2024-10-29 13:41:16'),
(404, 'App\\Models\\User', 30, 'API TOKEN', '462cd2b9b3c720ed7013e16be2af2f41850b490be68e4dc2dab703bdb879bdb2', '[\"*\"]', '2024-11-07 12:27:31', NULL, '2024-09-23 13:19:30', '2024-11-07 12:27:31'),
(405, 'App\\Models\\User', 1, 'API TOKEN', 'de9e8aa3ce9c7bf2a0f6e0054bf240b81f030d8bb24582aac701aa3c511fbd33', '[\"*\"]', '2024-09-30 05:39:02', NULL, '2024-09-29 05:49:02', '2024-09-30 05:39:02'),
(406, 'App\\Models\\User', 1, 'API TOKEN', '6ed5026573b4da2932438141af51624c433520cac43def3684293e793eb1b45e', '[\"*\"]', '2024-10-18 11:09:30', NULL, '2024-09-30 12:30:19', '2024-10-18 11:09:30'),
(407, 'App\\Models\\User', 18, 'API TOKEN', '2ff15662e6fd350482c8dc9d9618eeebcf076ae1a844cffd3a1e121040002828', '[\"*\"]', '2024-10-01 05:22:17', NULL, '2024-10-01 04:54:22', '2024-10-01 05:22:17'),
(408, 'App\\Models\\User', 32, 'API TOKEN', 'c6af568785b17aa137cd4951e1818a8c212fcca524a649ef61bd5d141f16ee00', '[\"*\"]', '2024-11-16 11:45:11', NULL, '2024-10-01 05:09:05', '2024-11-16 11:45:11'),
(409, 'App\\Models\\User', 18, 'API TOKEN', '5f763f6091d65027720551d1e18fe7a46c300cfb9c0d07e9ea3187473c0f7145', '[\"*\"]', '2024-10-01 05:26:40', NULL, '2024-10-01 05:25:46', '2024-10-01 05:26:40'),
(410, 'App\\Models\\User', 18, 'API TOKEN', 'cd98c8d370155f149f521096c693d79fc323a8d11a0dae55725af41f54c9c958', '[\"*\"]', '2024-10-01 05:35:28', NULL, '2024-10-01 05:27:55', '2024-10-01 05:35:28'),
(411, 'App\\Models\\User', 18, 'API TOKEN', 'e87dfb38b8d7562bc9ae75d60d52095d90b6f57e7ac1f0e40b1f36f5fa00113d', '[\"*\"]', '2024-10-01 06:12:50', NULL, '2024-10-01 05:51:54', '2024-10-01 06:12:50'),
(412, 'App\\Models\\User', 18, 'API TOKEN', '2a406eddef30d57e126a447b0b5642c66cbebf1f2f2fdddd9d5e9379bdcd3b42', '[\"*\"]', '2024-10-01 07:01:15', NULL, '2024-10-01 06:14:31', '2024-10-01 07:01:15'),
(413, 'App\\Models\\User', 18, 'API TOKEN', 'e62bbc2e7bc640e1ad576647c3c43978c8335c3c99b356b0c2389acb0514ef08', '[\"*\"]', '2024-10-01 07:09:50', NULL, '2024-10-01 07:04:09', '2024-10-01 07:09:50'),
(414, 'App\\Models\\User', 18, 'API TOKEN', '7b1a5a408b3c67dfb867f22400a2298921f860309bda7226043c7f1e0c0f270d', '[\"*\"]', '2024-10-01 07:44:26', NULL, '2024-10-01 07:13:34', '2024-10-01 07:44:26'),
(415, 'App\\Models\\User', 18, 'API TOKEN', '22c7c51cf759e46b99ae7de245e7b755f4bd2e944b45a72b76f823146441dd1b', '[\"*\"]', '2024-10-01 07:47:38', NULL, '2024-10-01 07:46:41', '2024-10-01 07:47:38'),
(416, 'App\\Models\\User', 18, 'API TOKEN', '61e33736d6051787dbcf9ff4dd832578f08937829e6afc0239e9dc5386b2216a', '[\"*\"]', '2024-10-03 12:15:48', NULL, '2024-10-01 08:08:46', '2024-10-03 12:15:48'),
(417, 'App\\Models\\User', 34, 'API TOKEN', '3efbc00e3ffeddd347f4f6858335042d661b154648e91cefd54ad5a27e765abf', '[\"*\"]', '2024-11-18 07:34:25', NULL, '2024-10-03 09:08:37', '2024-11-18 07:34:25'),
(418, 'App\\Models\\User', 18, 'API TOKEN', 'a0fbdba94339734f58199c6bbf9def6b607bf80065072d525dfdf59d4cda694f', '[\"*\"]', '2024-10-04 06:36:12', NULL, '2024-10-03 12:16:00', '2024-10-04 06:36:12'),
(419, 'App\\Models\\User', 18, 'API TOKEN', '5d1629d7237f291a8177284c88d5736119f48703075aa8db7c11c7492ddc326a', '[\"*\"]', '2024-10-04 13:46:24', NULL, '2024-10-04 06:42:40', '2024-10-04 13:46:24'),
(420, 'App\\Models\\User', 18, 'API TOKEN', 'ef935bd85b0d88cc02563d2454cce48ed64dddf582c8d194a7913b5faa05f3d6', '[\"*\"]', '2024-10-04 13:53:54', NULL, '2024-10-04 13:50:11', '2024-10-04 13:53:54'),
(421, 'App\\Models\\User', 18, 'API TOKEN', '65774c1114f8cd836420e5027597ed1e2cab6a5cd3600baf9e1754c6214d3763', '[\"*\"]', '2024-10-05 10:15:14', NULL, '2024-10-04 13:54:27', '2024-10-05 10:15:14'),
(422, 'App\\Models\\User', 33, 'API TOKEN', 'd87e3cf41ebec0ad8fdc92f081f0a10faa6b14441b694b58a28c8cfdec410510', '[\"*\"]', '2024-11-18 08:16:34', NULL, '2024-10-05 10:27:52', '2024-11-18 08:16:34'),
(423, 'App\\Models\\User', 18, 'API TOKEN', '0ad45eb06a67de32428daa65acaab9c65caefd527debb01bcaa26463a9cedad4', '[\"*\"]', '2024-10-06 04:00:19', NULL, '2024-10-05 13:14:54', '2024-10-06 04:00:19'),
(424, 'App\\Models\\User', 18, 'API TOKEN', 'b29b5621cbc850be83c8fb48ec6abe0134ae80f24e9a69f1f05d785a76002ee6', '[\"*\"]', '2024-10-07 04:38:51', NULL, '2024-10-06 04:01:07', '2024-10-07 04:38:51'),
(425, 'App\\Models\\User', 18, 'API TOKEN', '5d84edf5db0de0e5241034316250d57dad544bf39c6dd8d62c3cb62d24c3ea97', '[\"*\"]', '2024-10-07 09:41:22', NULL, '2024-10-07 07:54:11', '2024-10-07 09:41:22'),
(426, 'App\\Models\\User', 18, 'API TOKEN', 'b6c25b4c8b2fc68ec3dd0f368bd404a0e9ce20f325182bfd0377c6f60d374e4a', '[\"*\"]', '2024-10-07 09:53:35', NULL, '2024-10-07 09:46:08', '2024-10-07 09:53:35'),
(427, 'App\\Models\\User', 18, 'API TOKEN', 'ea85921a1a41c7c43450ff75b96da311d622e1229b23666e09536a4930f8012c', '[\"*\"]', '2024-10-07 10:17:07', NULL, '2024-10-07 09:54:12', '2024-10-07 10:17:07'),
(428, 'App\\Models\\User', 18, 'API TOKEN', '348b57a1e4aa96756bc34d290f44754b1165ac045ec9e2be69505aee7c8b4719', '[\"*\"]', '2024-10-07 10:20:10', NULL, '2024-10-07 10:19:44', '2024-10-07 10:20:10'),
(429, 'App\\Models\\User', 18, 'API TOKEN', 'c0474f068ba9e3276cfa9472b3110c434dbec2cd825416a5187fff588834b7cc', '[\"*\"]', '2024-10-08 04:11:41', NULL, '2024-10-07 10:29:10', '2024-10-08 04:11:41'),
(430, 'App\\Models\\User', 13, 'API TOKEN', '15312ec5c65688d1b07dd7bbdaea3394b09aee9ad8899f08d337bcd002c8007d', '[\"*\"]', '2024-10-08 05:28:47', NULL, '2024-10-07 14:39:02', '2024-10-08 05:28:47'),
(431, 'App\\Models\\User', 13, 'API TOKEN', '1cca7aa8319f59d34ff9cf2d1eb887b8cc53f5ceadd6eed6094f3df64ab616bb', '[\"*\"]', '2024-10-08 05:30:05', NULL, '2024-10-08 05:29:54', '2024-10-08 05:30:05'),
(432, 'App\\Models\\User', 13, 'API TOKEN', '525d02d6ba11b7179acccf03ee9225b48a9d334e73b86894f5a63891351b2eb8', '[\"*\"]', '2024-10-08 05:32:49', NULL, '2024-10-08 05:32:45', '2024-10-08 05:32:49'),
(433, 'App\\Models\\User', 13, 'API TOKEN', 'f4fedb1687fc171e2f301f9b4012f8261fa593e540702058f62e6963a9fa0081', '[\"*\"]', '2024-10-08 05:33:27', NULL, '2024-10-08 05:33:27', '2024-10-08 05:33:27'),
(434, 'App\\Models\\User', 18, 'API TOKEN', 'ac530b91183e4cbca459f9bff9abcc3988adc749b6a0ee58cfe29ddc414b6139', '[\"*\"]', '2024-10-08 05:43:20', NULL, '2024-10-08 05:37:14', '2024-10-08 05:43:20'),
(435, 'App\\Models\\User', 18, 'API TOKEN', 'd80f0cd256abd0c76a96869b7f820922fab0bc8d3df37126911e19d5edf33b2b', '[\"*\"]', '2024-10-08 10:13:56', NULL, '2024-10-08 05:45:50', '2024-10-08 10:13:56'),
(436, 'App\\Models\\User', 13, 'API TOKEN', '64aba2127c597a373bdee41f081aace185e8cafbe3198b0d66fc861890b3f36d', '[\"*\"]', '2024-10-11 05:53:12', NULL, '2024-10-08 05:50:59', '2024-10-11 05:53:12'),
(437, 'App\\Models\\User', 35, 'API TOKEN', '712d9abc6a383f5ac535cb09d0041feb3b309caa4550de4f4bf9470081f0e5bc', '[\"*\"]', '2024-11-16 11:46:51', NULL, '2024-10-08 10:09:42', '2024-11-16 11:46:51'),
(438, 'App\\Models\\User', 18, 'API TOKEN', 'fbdbbd005dc92fc76da1bb62ff35be01b93310a14e2e4bc0efc418a2fc622104', '[\"*\"]', '2024-10-08 10:38:35', NULL, '2024-10-08 10:16:36', '2024-10-08 10:38:35'),
(439, 'App\\Models\\User', 18, 'API TOKEN', 'a3d9e324eedf6e37a3153cc730981c48f6c6bb05b12a4330d4ace0cb85f60d61', '[\"*\"]', '2024-10-08 11:02:01', NULL, '2024-10-08 10:41:54', '2024-10-08 11:02:01'),
(440, 'App\\Models\\User', 18, 'API TOKEN', '915676325b2d5fbd610a8c8e97254b50b10bc0465f492399f50a129b6d80717a', '[\"*\"]', '2024-10-08 11:49:54', NULL, '2024-10-08 11:04:34', '2024-10-08 11:49:54'),
(441, 'App\\Models\\User', 18, 'API TOKEN', '284bba9498c6c9ebfc1a736800daa985f15160ebca603c74c24b1afccac05f84', '[\"*\"]', '2024-10-08 12:05:34', NULL, '2024-10-08 11:53:57', '2024-10-08 12:05:34'),
(442, 'App\\Models\\User', 18, 'API TOKEN', 'b31f3e6692948c4d015372607fdcc1ec24b78bcf5ab542ccff0cc5bdddc0a054', '[\"*\"]', '2024-10-15 04:24:14', NULL, '2024-10-08 12:09:33', '2024-10-15 04:24:14'),
(443, 'App\\Models\\User', 31, 'API TOKEN', '93c488307ea8ce752462f7a461797e2c262a8a811965f9ae624ddfaa8c4b6cb0', '[\"*\"]', '2024-10-11 05:54:32', NULL, '2024-10-11 05:54:24', '2024-10-11 05:54:32'),
(444, 'App\\Models\\User', 13, 'API TOKEN', 'a9b206535ce03a1ca29a158f2f3b36be658c27a560420ebaa6b8f72805e0c80a', '[\"*\"]', '2024-10-11 13:43:16', NULL, '2024-10-11 05:54:52', '2024-10-11 13:43:16'),
(445, 'App\\Models\\User', 13, 'API TOKEN', '986eb2c9f3818c9e98124bd2dbd45a82bc5487aad45848e8d02ab188b379c5e9', '[\"*\"]', '2024-11-13 05:33:32', NULL, '2024-10-11 13:45:45', '2024-11-13 05:33:32'),
(446, 'App\\Models\\User', 29, 'API TOKEN', 'bd66c1921bf93a3bec0f17b1e13a34be62fe920976afdcd8a2d26942f880975e', '[\"*\"]', '2024-11-07 06:12:14', NULL, '2024-10-14 09:24:51', '2024-11-07 06:12:14'),
(447, 'App\\Models\\User', 18, 'API TOKEN', '1e20c91d57594e4c3afda73bad7a9e10e4ce5bacfeae4a4b3c42d60b48f2a325', '[\"*\"]', '2024-10-15 04:28:08', NULL, '2024-10-15 04:26:46', '2024-10-15 04:28:08'),
(448, 'App\\Models\\User', 18, 'API TOKEN', 'c8a0caf5b2a82903ea8d9b1688794b2fd8b01a5d233a18a7035a0ff3bf4d67af', '[\"*\"]', '2024-10-15 04:29:51', NULL, '2024-10-15 04:29:44', '2024-10-15 04:29:51'),
(449, 'App\\Models\\User', 1, 'API TOKEN', '5d2dccec5bb93cc3c4aebfbdb66d37e8ba8188c004662747aace58e00e2dc10b', '[\"*\"]', '2024-10-15 05:12:03', NULL, '2024-10-15 05:11:35', '2024-10-15 05:12:03'),
(450, 'App\\Models\\User', 18, 'API TOKEN', 'e7bd24b13625c0c5b43d09e347adde397f0ff8443d8c43e016baf9440af0f90a', '[\"*\"]', '2024-10-18 10:27:24', NULL, '2024-10-15 05:30:49', '2024-10-18 10:27:24'),
(451, 'App\\Models\\User', 18, 'API TOKEN', '6170b970581e4c5956e484b6a5fc06be6fd41419d29b17a4ca2c92a66fdcf172', '[\"*\"]', '2024-10-15 07:59:02', NULL, '2024-10-15 07:53:47', '2024-10-15 07:59:02'),
(452, 'App\\Models\\User', 18, 'API TOKEN', 'fec29702c4f291db40d546c64513abf3f415982f8041f95e9e941462f6f55bf6', '[\"*\"]', '2024-10-15 08:53:09', NULL, '2024-10-15 08:00:22', '2024-10-15 08:53:09'),
(453, 'App\\Models\\User', 31, 'API TOKEN', '78cb62dc5e4251303436fff604f44b717add13ae6e94f67f9a3ff05c4ab77883', '[\"*\"]', '2024-10-15 10:50:42', NULL, '2024-10-15 10:48:52', '2024-10-15 10:50:42'),
(454, 'App\\Models\\User', 18, 'API TOKEN', 'c32e7f164423385f7465dc9df3e6dac7b166b1401ad040ca2aac35184ae7ebb7', '[\"*\"]', '2024-10-15 10:55:02', NULL, '2024-10-15 10:54:56', '2024-10-15 10:55:02'),
(455, 'App\\Models\\User', 31, 'API TOKEN', '2669bb6e6947a89d59a0fa84a36cc64454789fdf30cad2f43acce0679d63d72b', '[\"*\"]', '2024-10-18 11:02:14', NULL, '2024-10-15 10:58:30', '2024-10-18 11:02:14'),
(456, 'App\\Models\\User', 18, 'API TOKEN', '61b35a1b71cc908fc605631fad975290602b8bd09f2ea6e1c295067000532435', '[\"*\"]', '2024-10-18 10:06:04', NULL, '2024-10-15 11:05:19', '2024-10-18 10:06:04'),
(457, 'App\\Models\\User', 31, 'API TOKEN', 'dabde6a427b9251360ef767d70ae8ec94f5b5fc50e48be152e7bc8a711a3df8b', '[\"*\"]', '2024-10-18 10:38:41', NULL, '2024-10-18 10:03:37', '2024-10-18 10:38:41'),
(458, 'App\\Models\\User', 18, 'API TOKEN', '35d635db9ab27b5742fc8e577fbd65163b50c259242a3784eb71aacf5fdf24b2', '[\"*\"]', '2024-10-18 10:50:03', NULL, '2024-10-18 10:19:32', '2024-10-18 10:50:03'),
(459, 'App\\Models\\User', 18, 'API TOKEN', '896905c3b5a8317b1f99b1d63f91cba774d3488147c5a359d6efdbbf1049d1ca', '[\"*\"]', '2024-10-18 11:04:43', NULL, '2024-10-18 11:04:42', '2024-10-18 11:04:43'),
(460, 'App\\Models\\User', 31, 'API TOKEN', '9318a3c31330b704f7178b3323eb82722563dc646f51f3e1be79fe5dd872e202', '[\"*\"]', '2024-10-28 06:24:19', NULL, '2024-10-18 11:08:57', '2024-10-28 06:24:19'),
(461, 'App\\Models\\User', 18, 'API TOKEN', 'e4a95f17ba6de4128fa40640e4ba59be94ea94fead980a81552f40319f793677', '[\"*\"]', '2024-10-19 10:41:34', NULL, '2024-10-18 11:09:11', '2024-10-19 10:41:34'),
(462, 'App\\Models\\User', 1, 'API TOKEN', 'a82801e627cbb779b36873cb7d406e5196b184a9e6a76adf47065925852353eb', '[\"*\"]', '2024-10-28 12:45:10', NULL, '2024-10-18 11:10:32', '2024-10-28 12:45:10'),
(463, 'App\\Models\\User', 18, 'API TOKEN', '23f5efa552cac1164923f0933a8c67b7c837dcd96ab35ae2713fb1534251c13b', '[\"*\"]', '2024-10-19 11:13:03', NULL, '2024-10-19 11:11:54', '2024-10-19 11:13:03'),
(464, 'App\\Models\\User', 18, 'API TOKEN', 'c6dfcd799f68106c889973df8001a4f31290299c79e0f382dd214d8847923bcf', '[\"*\"]', '2024-10-19 11:21:37', NULL, '2024-10-19 11:19:32', '2024-10-19 11:21:37'),
(465, 'App\\Models\\User', 18, 'API TOKEN', '37741ca057449a8073707ad4cd804c33fbdc65113cce409f8b131c1c80f3c0ad', '[\"*\"]', '2024-10-21 08:02:23', NULL, '2024-10-19 11:23:19', '2024-10-21 08:02:23'),
(466, 'App\\Models\\User', 18, 'API TOKEN', 'd8bc9f01d395fe82f4f05cf656107e5c1863d73057e38f2037145f580a89629a', '[\"*\"]', '2024-10-21 08:08:28', NULL, '2024-10-21 08:06:48', '2024-10-21 08:08:28'),
(467, 'App\\Models\\User', 18, 'API TOKEN', '35b248607a8458dbbe1256c7f68e6624bb3a704fb6060cc2f07ea678d5d57605', '[\"*\"]', '2024-10-29 07:39:51', NULL, '2024-10-21 08:11:28', '2024-10-29 07:39:51'),
(468, 'App\\Models\\User', 31, 'API TOKEN', '0f731aa8b1500d8ff002ab79077b9212c7a3ac01b7847cc980214f8211ef26e4', '[\"*\"]', '2024-11-14 05:41:19', NULL, '2024-10-28 06:25:40', '2024-11-14 05:41:19'),
(469, 'App\\Models\\User', 1, 'API TOKEN', '4f11131e5dca9c0434d700867e81fab89bda14d2ad22fa7a22be87943c0e98b9', '[\"*\"]', '2024-11-07 06:13:23', NULL, '2024-10-28 12:47:02', '2024-11-07 06:13:23'),
(470, 'App\\Models\\User', 18, 'API TOKEN', '9ea24782a2b0dfc07e9eae28075ca9dc0c2fbaed2327b687c168deae9ba8b3ce', '[\"*\"]', '2024-10-29 11:10:22', NULL, '2024-10-29 07:54:06', '2024-10-29 11:10:22'),
(471, 'App\\Models\\User', 18, 'API TOKEN', '83d6785650e561d4d1076ef7f814b48a4e7cdcd536443e876193630334f9f316', '[\"*\"]', '2024-10-29 11:20:57', NULL, '2024-10-29 11:13:15', '2024-10-29 11:20:57'),
(472, 'App\\Models\\User', 18, 'API TOKEN', 'b93e9bbcefba4b42d7a956728a3a0f82a86a3f5004ae6e3d532c005340b6041f', '[\"*\"]', '2024-10-29 12:06:05', NULL, '2024-10-29 11:22:43', '2024-10-29 12:06:05'),
(473, 'App\\Models\\User', 16, 'API TOKEN', '1d7049d16e56895c77136669191b0aa643a607e10d355f3693a5206f25e2caa6', '[\"*\"]', '2024-11-18 08:22:32', NULL, '2024-10-29 13:45:35', '2024-11-18 08:22:32'),
(474, 'App\\Models\\User', 18, 'API TOKEN', 'ca83fda3b964b9146da2cbe33d0bca781b0dee1515a046099c613224d3ac73d7', '[\"*\"]', '2024-10-29 15:50:36', NULL, '2024-10-29 14:27:50', '2024-10-29 15:50:36'),
(475, 'App\\Models\\User', 18, 'API TOKEN', '0e4e05cca173b09b6e38fa7586dc18763fa097f95ff01e45325b64fcae3bdebc', '[\"*\"]', '2024-10-31 12:04:15', NULL, '2024-10-31 12:04:10', '2024-10-31 12:04:15'),
(476, 'App\\Models\\User', 18, 'API TOKEN', 'a348ebb8363b3d3683070e25ad935973e28165f044011f416b7c0d9bcee2952c', '[\"*\"]', '2024-11-13 04:32:27', NULL, '2024-10-31 12:04:56', '2024-11-13 04:32:27'),
(477, 'App\\Models\\User', 14, 'API TOKEN', '5fd1dc7e4ba592fe4151b40beb7b6b1e5f6279a1be46548650322ddac1879209', '[\"*\"]', '2024-11-18 05:49:24', NULL, '2024-11-03 10:14:31', '2024-11-18 05:49:24'),
(478, 'App\\Models\\User', 29, 'API TOKEN', '3b57f86fcd915e90704fd249a821115629dba4105c16cb5730ef63a49c15c829', '[\"*\"]', '2024-11-07 06:12:37', NULL, '2024-11-07 06:12:37', '2024-11-07 06:12:37'),
(479, 'App\\Models\\User', 29, 'API TOKEN', '629b88dbe6e338a6d99c0fa9bf9553871126a31de1634505f5838fb1777c953d', '[\"*\"]', '2024-11-18 06:57:14', NULL, '2024-11-07 06:13:17', '2024-11-18 06:57:14'),
(480, 'App\\Models\\User', 1, 'API TOKEN', '78afecf87025b00155cbefd6419859190a45ac4b3a03416c7a240e0ad995b382', '[\"*\"]', '2024-11-18 05:15:36', NULL, '2024-11-07 06:17:12', '2024-11-18 05:15:36'),
(481, 'App\\Models\\User', 36, 'API TOKEN', '44e8cefd7ae96f3846d27eabf6e90a43e6dfcda71e29cb65ceda85601d4c819d', '[\"*\"]', '2024-11-17 02:22:53', NULL, '2024-11-12 05:40:23', '2024-11-17 02:22:53'),
(482, 'App\\Models\\User', 13, 'API TOKEN', 'cdd1b0028a3154c5b962e4af53499facb895f2de9dce2f923dd9be0d18271a62', '[\"*\"]', '2024-11-18 06:40:35', NULL, '2024-11-13 05:33:49', '2024-11-18 06:40:35'),
(483, 'App\\Models\\User', 18, 'API TOKEN', '4ed9a476496656a657652424ed775dfd5db91e5dbd12d18bebe6400360f35f7f', '[\"*\"]', '2024-11-13 07:43:53', NULL, '2024-11-13 05:53:08', '2024-11-13 07:43:53'),
(484, 'App\\Models\\User', 18, 'API TOKEN', '61a870252b368b05c412581c0696559459cef76c29a78757a207a73408ede070', '[\"*\"]', '2024-11-13 07:48:33', NULL, '2024-11-13 07:46:31', '2024-11-13 07:48:33'),
(485, 'App\\Models\\User', 18, 'API TOKEN', 'a377b9e31d31a8ed948283d1852600d4e1985b2a5c2b6041d313d1aaa476df66', '[\"*\"]', '2024-11-14 05:49:11', NULL, '2024-11-13 07:51:17', '2024-11-14 05:49:11'),
(486, 'App\\Models\\User', 18, 'API TOKEN', 'd8831a141e960b300cc535814b00ae910bc93767ed0323821fb36eeb35a39e84', '[\"*\"]', '2024-11-13 09:31:08', NULL, '2024-11-13 09:31:06', '2024-11-13 09:31:08'),
(487, 'App\\Models\\User', 18, 'API TOKEN', '71de149763acdf7e8b828524ff161c4849b0ef82c29dcf217315007caee90639', '[\"*\"]', '2024-11-14 05:15:30', NULL, '2024-11-13 09:35:56', '2024-11-14 05:15:30'),
(488, 'App\\Models\\User', 18, 'API TOKEN', 'c03cca165bda393b8a7aa877090a45fa7305848a8869aa3ac3be1adce3a43456', '[\"*\"]', '2024-11-14 06:01:25', NULL, '2024-11-14 05:25:28', '2024-11-14 06:01:25'),
(489, 'App\\Models\\User', 18, 'API TOKEN', '56c3758e4c81b1add18a80ab0160cb865789b420f129212b7797effd7eb929b3', '[\"*\"]', '2024-11-18 06:33:10', NULL, '2024-11-14 06:04:42', '2024-11-18 06:33:10'),
(490, 'App\\Models\\User', 31, 'API TOKEN', '3684949de6bbdf5535bcc6788a6065521339c4cf3f0a779d62d562fa5b346913', '[\"*\"]', '2024-11-14 06:29:23', NULL, '2024-11-14 06:29:22', '2024-11-14 06:29:23'),
(491, 'App\\Models\\User', 31, 'API TOKEN', '081cb403d3d2fd1bb93f7770baa65af9bced2f551b9983b6e0a520c8556ada4b', '[\"*\"]', '2024-11-18 06:30:55', NULL, '2024-11-14 06:43:16', '2024-11-18 06:30:55'),
(492, 'App\\Models\\User', 18, 'API TOKEN', '417083d0434857574652e583780048bd4aa235ed087a77b343722c48e870ee24', '[\"*\"]', '2024-11-18 06:56:34', NULL, '2024-11-18 06:34:34', '2024-11-18 06:56:34'),
(493, 'App\\Models\\User', 18, 'API TOKEN', 'a242c930f67ae63f51b87d8e0968fca3853101db1453dc89c8f45b9685eef97b', '[\"*\"]', '2024-11-18 08:04:30', NULL, '2024-11-18 07:52:45', '2024-11-18 08:04:30'),
(494, 'App\\Models\\User', 18, 'API TOKEN', '453eb26f1575f108b8f185fc46b7498ea1d00e23535130d31db04b03f58a083a', '[\"*\"]', '2024-11-18 08:24:37', NULL, '2024-11-18 08:24:36', '2024-11-18 08:24:37'),
(495, 'App\\Models\\User', 1, 'API TOKEN', '490c0b648cde09bceafaf4464b1e38c81ba05c915cdd5c8bd7e3210041f4b69e', '[\"*\"]', '2024-11-28 12:19:25', NULL, '2024-11-20 00:49:20', '2024-11-28 12:19:25'),
(496, 'App\\Models\\User', 1, 'API TOKEN', 'ac7a11a6d9d9edd43e9f407a213ec8dab8e3b3fb0dd77c5a9b684550f843be85', '[\"*\"]', NULL, NULL, '2024-11-20 01:55:02', '2024-11-20 01:55:02'),
(497, 'App\\Models\\User', 1, 'API TOKEN', '370d474ced18c646bf49064a25dab73e5e799d4ffacd42a5fe910fcfd51b4b80', '[\"*\"]', NULL, NULL, '2024-11-20 01:56:17', '2024-11-20 01:56:17'),
(498, 'App\\Models\\User', 37, 'API TOKEN', '7289817bc8d5372d762bb1146bae5c9d8118a285d606601194a5254812c2cd3e', '[\"*\"]', '2024-11-20 02:33:27', NULL, '2024-11-20 02:20:06', '2024-11-20 02:33:27'),
(499, 'App\\Models\\User', 38, 'API TOKEN', '6f83f9754034c883e5a42c0aa63b9bfd94a12478aa1da0324e4d327ab0c3ad3c', '[\"*\"]', '2024-11-20 02:33:20', NULL, '2024-11-20 02:20:39', '2024-11-20 02:33:20'),
(500, 'App\\Models\\User', 1, 'API TOKEN', '5a60ec48b2cd74c10a189abba48ef217a3defd0ecb8a8d8116c96c9535fe765a', '[\"*\"]', '2024-11-20 10:25:56', NULL, '2024-11-20 10:25:45', '2024-11-20 10:25:56'),
(501, 'App\\Models\\User', 1, 'API TOKEN', '3eefa440980aeb3dc5e11d3294a2689d784d120ace27582d60f32a3162a68616', '[\"*\"]', '2024-11-22 11:21:38', NULL, '2024-11-20 10:26:50', '2024-11-22 11:21:38'),
(502, 'App\\Models\\User', 1, 'API TOKEN', '7ba02d5accceabc78ea37ae873a7f4b3aed0a832cb20b963a3b2e052f89f241f', '[\"*\"]', '2024-12-02 12:50:56', NULL, '2024-11-21 05:12:30', '2024-12-02 12:50:56'),
(503, 'App\\Models\\User', 1, 'API TOKEN', '7e07990a77e15123bd3b0a07741cbaa63046b0485d3e518b2b4818564615ca77', '[\"*\"]', '2024-11-21 13:01:05', NULL, '2024-11-21 12:58:57', '2024-11-21 13:01:05'),
(504, 'App\\Models\\User', 1, 'API TOKEN', '5edee182ad1f718df75884246fdfd920e402357bc528d6495aa970372cfd83dc', '[\"*\"]', '2024-11-21 13:17:59', NULL, '2024-11-21 13:01:35', '2024-11-21 13:17:59'),
(505, 'App\\Models\\User', 1, 'API TOKEN', '1f37524e8e4bfa8f3c8a7bff24d985008b13a48a6094086d46678297180df369', '[\"*\"]', '2024-11-21 13:36:13', NULL, '2024-11-21 13:18:21', '2024-11-21 13:36:13'),
(506, 'App\\Models\\User', 1, 'API TOKEN', 'a6f83a15efe17cc83fa3e3d6fa91866dc5025cdefe101ca8748c3ee2757896e6', '[\"*\"]', '2024-11-22 13:47:24', NULL, '2024-11-22 07:15:17', '2024-11-22 13:47:24'),
(507, 'App\\Models\\User', 1, 'API TOKEN', '48fc10d95ab7e4c30867ec0acfb02656d6a64e50c2c12c632749747ead13f5c6', '[\"*\"]', '2024-11-23 09:44:37', NULL, '2024-11-23 06:26:21', '2024-11-23 09:44:37'),
(508, 'App\\Models\\User', 1, 'API TOKEN', '60536e82e9956dfc15fe079b6d50ffeea8e49b1a6a7ee02846e3bf4b38ae9eac', '[\"*\"]', '2024-11-23 10:22:35', NULL, '2024-11-23 09:51:11', '2024-11-23 10:22:35'),
(509, 'App\\Models\\User', 1, 'API TOKEN', 'd0d0618da05a6f1ee5ff090c17e87ad6d42b0ab46df572c9a0fac30f79c9754d', '[\"*\"]', NULL, NULL, '2024-11-23 10:33:24', '2024-11-23 10:33:24');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(510, 'App\\Models\\User', 1, 'API TOKEN', 'c0081544e7491eb5fa57e45e99aa25740d1aa342e7faa8ca6811708ecb666030', '[\"*\"]', '2024-11-27 11:59:42', NULL, '2024-11-27 11:34:05', '2024-11-27 11:59:42'),
(511, 'App\\Models\\User', 1, 'API TOKEN', 'e59cb8abf8f416ecb185c58e63331ad193a09871f77628f49209498d300d995a', '[\"*\"]', '2024-11-27 11:42:41', NULL, '2024-11-27 11:40:57', '2024-11-27 11:42:41'),
(512, 'App\\Models\\User', 1, 'API TOKEN', '4eaedcd21486fa279322d398c9b359ebf0fee82457ac357fadf74cb671307708', '[\"*\"]', '2024-11-27 11:44:34', NULL, '2024-11-27 11:43:58', '2024-11-27 11:44:34'),
(513, 'App\\Models\\User', 1, 'API TOKEN', '772955b16477a8b7a889d79cdda71fd6ebe0e61921d88232e7a8b8d472b802f3', '[\"*\"]', '2024-11-27 12:48:37', NULL, '2024-11-27 11:44:59', '2024-11-27 12:48:37'),
(514, 'App\\Models\\User', 1, 'API TOKEN', 'f3f7b64109f28a0df090328d659fcd25522eeff3263ea451ae50282fab4616f9', '[\"*\"]', '2024-11-28 09:36:46', NULL, '2024-11-28 05:00:50', '2024-11-28 09:36:46'),
(515, 'App\\Models\\User', 1, 'API TOKEN', 'c574dcd939b0f33d938a7b84bb0d3cfaed6f66c326375869020f04c32c70dd0d', '[\"*\"]', '2024-11-28 12:45:32', NULL, '2024-11-28 09:37:02', '2024-11-28 12:45:32'),
(516, 'App\\Models\\User', 1, 'API TOKEN', '4a63a1403144d70125c6e56ff0cee91081267cc529aa005beac0f511d032422b', '[\"*\"]', NULL, NULL, '2024-11-28 09:53:50', '2024-11-28 09:53:50'),
(517, 'App\\Models\\User', 1, 'API TOKEN', '3e1661c0414d0ae10570cfc5ba176a5fc867b5eef5ebd8dd24a67878e578ff4d', '[\"*\"]', '2024-11-28 11:13:03', NULL, '2024-11-28 11:13:03', '2024-11-28 11:13:03'),
(518, 'App\\Models\\User', 37, 'API TOKEN', '2ac5e2b23cea56ae71df7859cbbf3d56da261384035eb7b2ecf5a5f7e7278e6e', '[\"*\"]', '2024-11-28 11:14:05', NULL, '2024-11-28 11:14:05', '2024-11-28 11:14:05'),
(519, 'App\\Models\\User', 38, 'API TOKEN', '70d576fe058a898bcf7476beb70a58bc029168f3606e714ac77a5ea57e9129e0', '[\"*\"]', '2024-11-28 11:14:22', NULL, '2024-11-28 11:14:22', '2024-11-28 11:14:22'),
(520, 'App\\Models\\User', 37, 'API TOKEN', '313cc7f557303445a9a80118a41955f9c911d79b77baa073cb66cbcba48c4e58', '[\"*\"]', NULL, NULL, '2024-11-28 11:16:42', '2024-11-28 11:16:42'),
(521, 'App\\Models\\User', 1, 'API TOKEN', '9634f16fa79838aa18d53367d8b1b509ac3e0a81d5b4cb976098d9a98f4437ba', '[\"*\"]', NULL, NULL, '2024-11-28 11:17:06', '2024-11-28 11:17:06'),
(522, 'App\\Models\\User', 37, 'API TOKEN', 'ce3f28108ebeb192dbb0823828067ee57e812a10b8b26493fd63cbb007f14a8d', '[\"*\"]', '2024-11-28 12:43:35', NULL, '2024-11-28 11:18:11', '2024-11-28 12:43:35'),
(523, 'App\\Models\\User', 37, 'API TOKEN', 'f08e9e2bf3f8c26bba3c7ef467e46b01f9618ef07b8c366d42f0d364a9147c62', '[\"*\"]', '2024-11-28 11:19:07', NULL, '2024-11-28 11:18:57', '2024-11-28 11:19:07'),
(524, 'App\\Models\\User', 37, 'API TOKEN', 'bf020563c837288fb3080e5471267b05665a21ab4ef59e6e859c420413bebde6', '[\"*\"]', '2024-11-28 11:32:08', NULL, '2024-11-28 11:30:33', '2024-11-28 11:32:08'),
(525, 'App\\Models\\User', 1, 'API TOKEN', '98faf8b79ccf057dce09a0bc239711d7ea2c2811fb8d99058e58c59f41d32703', '[\"*\"]', '2024-11-28 11:57:52', NULL, '2024-11-28 11:57:46', '2024-11-28 11:57:52'),
(526, 'App\\Models\\User', 37, 'API TOKEN', 'd8719a47f80c80fd69385a9d2eb54035209fb9249fa009b69286e500fe5a5159', '[\"*\"]', '2024-11-28 12:04:07', NULL, '2024-11-28 11:58:37', '2024-11-28 12:04:07'),
(527, 'App\\Models\\User', 37, 'API TOKEN', '8f4798b44ae7b1e106d5160aae6270e2f4c53c666539856ff4fe3662d748fef8', '[\"*\"]', '2024-11-28 12:05:15', NULL, '2024-11-28 12:05:15', '2024-11-28 12:05:15'),
(528, 'App\\Models\\User', 37, 'API TOKEN', '9717b3d4cdb98125c2661b7908aecd11d996233b619ef35ab8ffbdcc8fa13dbf', '[\"*\"]', '2024-11-28 12:21:17', NULL, '2024-11-28 12:06:48', '2024-11-28 12:21:17'),
(529, 'App\\Models\\User', 38, 'API TOKEN', '709c4583c173a985a1da18a5eaabf2d4fa5e279413a09b8a434b9470905dbb48', '[\"*\"]', NULL, NULL, '2024-11-28 12:21:48', '2024-11-28 12:21:48'),
(530, 'App\\Models\\User', 38, 'API TOKEN', '4cea79c61dc53fecb350858b8486ac8ffe69587d2fdedba9ea12e7572d968a1b', '[\"*\"]', '2024-12-04 05:01:42', NULL, '2024-11-28 12:23:28', '2024-12-04 05:01:42'),
(531, 'App\\Models\\User', 38, 'API TOKEN', '6fd185af62fe3757d7b2e84597ee4e7be5a497d99ff01114b9ddbe4bf0f735fe', '[\"*\"]', '2024-11-28 12:54:09', NULL, '2024-11-28 12:27:23', '2024-11-28 12:54:09'),
(532, 'App\\Models\\User', 37, 'API TOKEN', '6b714a12cabb04c83004b00fb6c1c6b626e3484df82d3f3ad322001670d5dce5', '[\"*\"]', '2024-12-03 11:49:31', NULL, '2024-11-28 12:46:14', '2024-12-03 11:49:31'),
(533, 'App\\Models\\User', 1, 'API TOKEN', 'e7ef30e95cbc7b875ac142081840628796b798e26cfa43e29cf5021091b6d6d7', '[\"*\"]', '2024-11-29 07:15:34', NULL, '2024-11-28 12:54:25', '2024-11-29 07:15:34'),
(534, 'App\\Models\\User', 37, 'API TOKEN', 'e2c2b7d7f192f6f828bd7bedc12815e7b1a54657a3f2c78a05bfd7273ed0ec7a', '[\"*\"]', '2024-11-29 07:16:22', NULL, '2024-11-29 07:16:09', '2024-11-29 07:16:22'),
(535, 'App\\Models\\User', 1, 'API TOKEN', 'f22238d06a1c5912d1fe685d3541388dd8d3d693a346c5611630e3f7887e7ab7', '[\"*\"]', '2024-11-29 07:17:18', NULL, '2024-11-29 07:16:37', '2024-11-29 07:17:18'),
(536, 'App\\Models\\User', 37, 'API TOKEN', '692747579739fbab30a1cf6ced14cdb12cd23ee34a40facd8bd2dfbcb25afd85', '[\"*\"]', '2024-11-29 07:42:28', NULL, '2024-11-29 07:42:20', '2024-11-29 07:42:28'),
(537, 'App\\Models\\User', 1, 'API TOKEN', '977e894c2b18ac70d7e30f0f9b47a240444e6e7c426c04d0da5577ebbe353a3f', '[\"*\"]', '2024-11-29 07:42:55', NULL, '2024-11-29 07:42:51', '2024-11-29 07:42:55'),
(538, 'App\\Models\\User', 37, 'API TOKEN', '8edf204200e76956c4b1bfb24d2ec4b6cd18ab77444dfccba872923870eebff2', '[\"*\"]', '2024-11-29 11:06:42', NULL, '2024-11-29 07:43:57', '2024-11-29 11:06:42'),
(539, 'App\\Models\\User', 1, 'API TOKEN', '71030c9025a6f8c210080bcbb5db42b84d578dfbba43aa590bcc94db84a96890', '[\"*\"]', '2024-11-29 11:06:07', NULL, '2024-11-29 10:10:33', '2024-11-29 11:06:07'),
(540, 'App\\Models\\User', 37, 'API TOKEN', '4ad15658bc3151f561267e72f4bbc20dbd25a8051864cc42714fc7f0c62b894e', '[\"*\"]', '2024-11-29 11:07:13', NULL, '2024-11-29 11:06:21', '2024-11-29 11:07:13'),
(541, 'App\\Models\\User', 38, 'API TOKEN', '75150ad34f919616f6d7117d93a0508b304f56daa98eea5d7e30ad3b899d0321', '[\"*\"]', '2024-11-29 11:13:36', NULL, '2024-11-29 11:07:42', '2024-11-29 11:13:36'),
(542, 'App\\Models\\User', 1, 'API TOKEN', '8b1100b7e77e977b8cad1386fadcab10e9f5496432d30594a188af609b0cd39d', '[\"*\"]', '2024-11-29 12:39:50', NULL, '2024-11-29 11:13:57', '2024-11-29 12:39:50'),
(543, 'App\\Models\\User', 38, 'API TOKEN', 'a1ca1c52678e85648ad3f2c4cac2205fa1c474a01e513d07b27d61c8e24da54c', '[\"*\"]', NULL, NULL, '2024-11-29 12:21:32', '2024-11-29 12:21:32'),
(544, 'App\\Models\\User', 37, 'API TOKEN', 'fe8c75edd6fcbfac99702caf33bc193b618c9779666fa2eb344d9f2fe7d3d3df', '[\"*\"]', '2024-11-29 13:12:59', NULL, '2024-11-29 12:30:09', '2024-11-29 13:12:59'),
(545, 'App\\Models\\User', 37, 'API TOKEN', '7c5fd355d7e581ff072007c5bb36bd89d2670e2c643d0852c16303cbddea3b94', '[\"*\"]', '2024-11-29 13:30:11', NULL, '2024-11-29 12:40:02', '2024-11-29 13:30:11'),
(546, 'App\\Models\\User', 1, 'API TOKEN', '6f22e28dda29f05462394c66d5d16fb541db9f6823c4eaa5e500deea343b9683', '[\"*\"]', '2024-11-30 09:32:22', NULL, '2024-11-30 09:32:04', '2024-11-30 09:32:22'),
(547, 'App\\Models\\User', 37, 'API TOKEN', 'a0e377c0aa351fa0205ce717ebec460541ed9c163b62a74cccd14b71f9f40f7c', '[\"*\"]', '2024-12-03 11:49:58', NULL, '2024-11-30 09:35:28', '2024-12-03 11:49:58'),
(548, 'App\\Models\\User', 37, 'API TOKEN', '03990d31f5ba11be4a330c195775d8d7c0747499bf0103a1653d51c24dc4079d', '[\"*\"]', '2024-11-30 10:39:19', NULL, '2024-11-30 10:01:08', '2024-11-30 10:39:19'),
(549, 'App\\Models\\User', 1, 'API TOKEN', 'e5a5be2ffabef6da9dbc6d86572770512f949c34085aa14f605b139ab1d6a581', '[\"*\"]', '2024-11-30 11:05:37', NULL, '2024-11-30 10:41:16', '2024-11-30 11:05:37'),
(550, 'App\\Models\\User', 1, 'API TOKEN', '67cee8302ff442543382d56c2b831a99e3fed5f79817719209ab358093165309', '[\"*\"]', '2024-11-30 13:17:37', NULL, '2024-11-30 11:06:49', '2024-11-30 13:17:37'),
(551, 'App\\Models\\User', 37, 'API TOKEN', 'ac4bff78b7171ec7caea70adb9e7a5f308d547f55c57d9deeb736c1213b12b42', '[\"*\"]', '2024-12-02 11:31:37', NULL, '2024-12-02 11:31:28', '2024-12-02 11:31:37'),
(552, 'App\\Models\\User', 38, 'API TOKEN', '3bf9ae278af88a24a35b9103e20a7dc0ce2289d78c1fee25c79eff3bfdcc676c', '[\"*\"]', '2024-12-02 11:31:46', NULL, '2024-12-02 11:31:45', '2024-12-02 11:31:46'),
(553, 'App\\Models\\User', 1, 'API TOKEN', 'ccfc31347a5c829c607a984f2f84c9885183ba90387fce795dfd95e66584a8cd', '[\"*\"]', '2024-12-02 12:54:39', NULL, '2024-12-02 11:32:15', '2024-12-02 12:54:39'),
(554, 'App\\Models\\User', 37, 'API TOKEN', '8cf503a31c833c6ee880edb710aea0cab91bcd146b8d32290fbbc283fd352a6f', '[\"*\"]', '2024-12-02 12:55:36', NULL, '2024-12-02 12:54:56', '2024-12-02 12:55:36'),
(555, 'App\\Models\\User', 38, 'API TOKEN', 'd2ee808c4850a94df2e156238e6432f6ac6c1dcfb185832590483df3c361f127', '[\"*\"]', '2024-12-02 12:56:07', NULL, '2024-12-02 12:55:52', '2024-12-02 12:56:07'),
(556, 'App\\Models\\User', 38, 'API TOKEN', 'f46235ff5b2fc7776a9e6c5ca04c4406363b38388b12780d2965b43c5bb0bd4e', '[\"*\"]', '2024-12-02 13:01:11', NULL, '2024-12-02 12:56:15', '2024-12-02 13:01:11'),
(557, 'App\\Models\\User', 1, 'API TOKEN', 'b21b1e49629e65e7c773e75d130fa43774bf132b5c74f1d8d16f9446b51a74a9', '[\"*\"]', '2024-12-02 13:09:10', NULL, '2024-12-02 13:01:19', '2024-12-02 13:09:10'),
(558, 'App\\Models\\User', 37, 'API TOKEN', '592e747c1420758f7a5af26f6449a4bd55534ddefaf32610cf74d4ca4935155a', '[\"*\"]', '2024-12-02 13:09:30', NULL, '2024-12-02 13:09:15', '2024-12-02 13:09:30'),
(559, 'App\\Models\\User', 38, 'API TOKEN', 'de56f623f5e9a7e489ff417ee5853b98455aab11dd83a3e5e8e8c8816c1bb501', '[\"*\"]', '2024-12-02 13:09:52', NULL, '2024-12-02 13:09:37', '2024-12-02 13:09:52'),
(560, 'App\\Models\\User', 1, 'API TOKEN', '61423ec548f973620427b023dda41f2ba0cc0f103bbfc8f0de0466c02a36f425', '[\"*\"]', '2024-12-02 13:13:34', NULL, '2024-12-02 13:13:33', '2024-12-02 13:13:34'),
(561, 'App\\Models\\User', 37, 'API TOKEN', '7a01f6591d435707e06f459807c433358fd237c7838da17b7763bd1488e403e1', '[\"*\"]', '2024-12-02 13:13:40', NULL, '2024-12-02 13:13:39', '2024-12-02 13:13:40'),
(562, 'App\\Models\\User', 38, 'API TOKEN', '294c3ae3ecd0bf96fe816d173223dc0e53e2dcd438f3c7e3949e20dfea763119', '[\"*\"]', '2024-12-02 13:13:45', NULL, '2024-12-02 13:13:45', '2024-12-02 13:13:45'),
(563, 'App\\Models\\User', 1, 'API TOKEN', 'ffba63c8648a135fb7027f101398e9e35d68366cf19d4d71aa2d23ef4d1a9f80', '[\"*\"]', '2024-12-02 13:18:46', NULL, '2024-12-02 13:18:31', '2024-12-02 13:18:46'),
(564, 'App\\Models\\User', 37, 'API TOKEN', '322d2f58376d67d5cf561d7256c07fe32624d278a319b9d357c48eff7dc6713c', '[\"*\"]', '2024-12-02 13:18:54', NULL, '2024-12-02 13:18:51', '2024-12-02 13:18:54'),
(565, 'App\\Models\\User', 1, 'API TOKEN', 'b7594bc27a758de2bfd91a9f6c3a0db3143574b9e1605018ab0675061d858ef0', '[\"*\"]', '2024-12-02 13:22:33', NULL, '2024-12-02 13:21:33', '2024-12-02 13:22:33'),
(566, 'App\\Models\\User', 37, 'API TOKEN', 'cc5bc76fd4a833f441f7267aefbf5b90e6a0a062582b196f2c896e5f6065f015', '[\"*\"]', '2024-12-02 13:24:28', NULL, '2024-12-02 13:22:37', '2024-12-02 13:24:28'),
(567, 'App\\Models\\User', 1, 'API TOKEN', '4c4603d2a47d27528c0e36cd70b1793244e36750f440b7115cddadb29ed54dc0', '[\"*\"]', '2024-12-02 13:29:48', NULL, '2024-12-02 13:24:31', '2024-12-02 13:29:48'),
(568, 'App\\Models\\User', 37, 'API TOKEN', 'b555b556156687cbe4bd6c39ded0f50be840a75c7a54e11de9b8640b1e76a3c0', '[\"*\"]', '2024-12-02 13:30:09', NULL, '2024-12-02 13:30:01', '2024-12-02 13:30:09'),
(569, 'App\\Models\\User', 38, 'API TOKEN', '9bdc0d3455c039e59030c5d65c316eb5b10ca82b769b96f754fd922476fd7906', '[\"*\"]', '2024-12-02 13:35:46', NULL, '2024-12-02 13:34:33', '2024-12-02 13:35:46'),
(570, 'App\\Models\\User', 37, 'API TOKEN', '8f71a85058cbaea6ba090826a8e21b928f1a9acce781413a59a1d1c6dc925b4e', '[\"*\"]', '2024-12-02 13:36:19', NULL, '2024-12-02 13:36:18', '2024-12-02 13:36:19'),
(571, 'App\\Models\\User', 37, 'API TOKEN', '7399bdf68eb7077f23baf7630048d557dca48d0e56253f2859f6ef608efc08c0', '[\"*\"]', '2024-12-02 13:37:11', NULL, '2024-12-02 13:36:59', '2024-12-02 13:37:11'),
(572, 'App\\Models\\User', 37, 'API TOKEN', '2eeecad17c37b11bbfbfa6686246e7b8ab840ee02e82e88ed3e37142361d980c', '[\"*\"]', '2024-12-03 04:46:36', NULL, '2024-12-03 03:52:38', '2024-12-03 04:46:36'),
(573, 'App\\Models\\User', 1, 'API TOKEN', '137605a7f32f332fce7909400363f1edca75ceeead27db88515082c54a3cab68', '[\"*\"]', '2024-12-03 04:54:03', NULL, '2024-12-03 04:47:03', '2024-12-03 04:54:03'),
(574, 'App\\Models\\User', 1, 'API TOKEN', '8d2bebd641386cbaa14a39d33d3c06be0611ac1d8075cdfe133cfe1252c62119', '[\"*\"]', '2024-12-03 04:54:11', NULL, '2024-12-03 04:54:07', '2024-12-03 04:54:11'),
(575, 'App\\Models\\User', 37, 'API TOKEN', '4d8c0d45bf8d863461c32a6768f5627bdc321a0d58de972614f705108b35265a', '[\"*\"]', '2024-12-03 04:54:15', NULL, '2024-12-03 04:54:15', '2024-12-03 04:54:15'),
(576, 'App\\Models\\User', 37, 'API TOKEN', '43926ea6f6cc549585cef77a0bfc50bc4f182285dd8f4c81c9b70c1d79f501d6', '[\"*\"]', '2024-12-03 05:01:13', NULL, '2024-12-03 04:54:15', '2024-12-03 05:01:13'),
(577, 'App\\Models\\User', 1, 'API TOKEN', '196856e02ee91c65007ff2e376de8565bcef3b259163dccdff64c413406ead78', '[\"*\"]', '2024-12-03 05:04:29', NULL, '2024-12-03 05:02:24', '2024-12-03 05:04:29'),
(578, 'App\\Models\\User', 37, 'API TOKEN', 'c6862ffc45008819b61a97b8bc4ecf5eaa60c3fcab9cce92d98195ceb5c6e396', '[\"*\"]', '2024-12-03 05:20:55', NULL, '2024-12-03 05:04:33', '2024-12-03 05:20:55'),
(579, 'App\\Models\\User', 1, 'API TOKEN', '3a8813c6f474197910fd7d600d05973f8475d098c1efacd00c6d0fef49a370f5', '[\"*\"]', '2024-12-03 05:38:13', NULL, '2024-12-03 05:21:02', '2024-12-03 05:38:13'),
(580, 'App\\Models\\User', 37, 'API TOKEN', '998b71dd5fd0ab87a4a11459dd3b9c06b28f08b64a9ecc1ea8baf700945300d8', '[\"*\"]', '2024-12-03 05:38:21', NULL, '2024-12-03 05:38:20', '2024-12-03 05:38:21'),
(581, 'App\\Models\\User', 38, 'API TOKEN', '28a797496f71032ad15e96cb167ffacfef66f35695378bf3ca93fadbc0a498de', '[\"*\"]', '2024-12-03 05:38:39', NULL, '2024-12-03 05:38:26', '2024-12-03 05:38:39'),
(582, 'App\\Models\\User', 1, 'API TOKEN', 'e2ec7399b12029204c6e7e18055ee3a1fd9e64bc036cf202eaca6aa72350937d', '[\"*\"]', '2024-12-03 05:39:02', NULL, '2024-12-03 05:38:48', '2024-12-03 05:39:02'),
(583, 'App\\Models\\User', 38, 'API TOKEN', '8c579bb54ac58895f0516e405e824b3e245aabd45ec860413c83aa28d2c6b13d', '[\"*\"]', '2024-12-03 05:39:09', NULL, '2024-12-03 05:39:05', '2024-12-03 05:39:09'),
(584, 'App\\Models\\User', 1, 'API TOKEN', 'e5291a4ce8c845925796e3467b6bde81434228302675b9bf5dc325a79994c369', '[\"*\"]', '2024-12-03 05:39:29', NULL, '2024-12-03 05:39:17', '2024-12-03 05:39:29'),
(585, 'App\\Models\\User', 38, 'API TOKEN', '47fae421863104a2da9dad3dc9fff18003ccbc5c9731806fd49fa61b697caa22', '[\"*\"]', '2024-12-03 05:41:47', NULL, '2024-12-03 05:39:34', '2024-12-03 05:41:47'),
(586, 'App\\Models\\User', 37, 'API TOKEN', 'e53b5fcb984e86128289d996a56bf3894aa690385bc81385d1bb513adb47445a', '[\"*\"]', '2024-12-03 06:02:54', NULL, '2024-12-03 05:45:11', '2024-12-03 06:02:54'),
(587, 'App\\Models\\User', 1, 'API TOKEN', '511398f56b8cee0acd5ce580aa91bb8b3790e339228dcb06a58429a12621e300', '[\"*\"]', '2024-12-03 06:18:21', NULL, '2024-12-03 06:03:00', '2024-12-03 06:18:21'),
(588, 'App\\Models\\User', 37, 'API TOKEN', 'dca1441a2c3cd7fed86f2437830deed48747ce839dde4da211a5583a84bd7088', '[\"*\"]', '2024-12-03 06:19:51', NULL, '2024-12-03 06:18:31', '2024-12-03 06:19:51'),
(589, 'App\\Models\\User', 38, 'API TOKEN', '26cc1c372e93e42b8f0b7089892541c08034dcd343c36ffce1b79e83dee428d6', '[\"*\"]', '2024-12-03 06:37:20', NULL, '2024-12-03 06:19:57', '2024-12-03 06:37:20'),
(590, 'App\\Models\\User', 1, 'API TOKEN', '9fb3c9a6aa6f59bd0b503b364831bff0737bd8945c45faafe1354777f4b91d77', '[\"*\"]', '2024-12-03 06:37:56', NULL, '2024-12-03 06:37:49', '2024-12-03 06:37:56'),
(591, 'App\\Models\\User', 38, 'API TOKEN', '9ceb070465b6ba6a71d0871bd9b34caf9f7c3555ccd24597333f7de554f93233', '[\"*\"]', '2024-12-03 06:38:34', NULL, '2024-12-03 06:38:03', '2024-12-03 06:38:34'),
(592, 'App\\Models\\User', 1, 'API TOKEN', '50907ea160a2a37dc06a47512d4a383289d7465a5c628ab4b6ad5983530b5711', '[\"*\"]', '2024-12-03 06:39:29', NULL, '2024-12-03 06:39:22', '2024-12-03 06:39:29'),
(593, 'App\\Models\\User', 38, 'API TOKEN', 'b05308c855c585f5ea925c16d82d49962e1418f964883e00750f4ea9bb30568d', '[\"*\"]', '2024-12-03 06:42:35', NULL, '2024-12-03 06:39:34', '2024-12-03 06:42:35'),
(594, 'App\\Models\\User', 1, 'API TOKEN', '4ed142650a04e60c520cf6df779166bc4c305a93374449cae474c3fc49aacedf', '[\"*\"]', '2024-12-03 06:46:13', NULL, '2024-12-03 06:42:55', '2024-12-03 06:46:13'),
(595, 'App\\Models\\User', 37, 'API TOKEN', '3ccf25c6b218b32e9f3037e44bbac1d7cb0cf18dbcab5e85cae2ac99fb4042c4', '[\"*\"]', '2024-12-03 06:46:33', NULL, '2024-12-03 06:46:32', '2024-12-03 06:46:33'),
(596, 'App\\Models\\User', 38, 'API TOKEN', '6f6648790c85906c9d7e04be6b7cd7232c322ff8925e8436a2a67f87f53e22f9', '[\"*\"]', '2024-12-03 06:55:13', NULL, '2024-12-03 06:46:41', '2024-12-03 06:55:13'),
(597, 'App\\Models\\User', 1, 'API TOKEN', '8d1360f3dc06107520a4f911bbaa4273f26cafef450b1e543f1f161c8c9d73e7', '[\"*\"]', '2024-12-03 07:03:07', NULL, '2024-12-03 07:03:03', '2024-12-03 07:03:07'),
(598, 'App\\Models\\User', 38, 'API TOKEN', '3f926f40cc1872f58853ee097534006a4f1d4793eadcf8a8decf85b3ef571003', '[\"*\"]', '2024-12-03 07:05:55', NULL, '2024-12-03 07:05:31', '2024-12-03 07:05:55'),
(599, 'App\\Models\\User', 38, 'API TOKEN', 'b218296e05cf5ce251bef76dd71220945f32c28228b802aa5d166350c36989cb', '[\"*\"]', '2024-12-03 07:07:20', NULL, '2024-12-03 07:07:19', '2024-12-03 07:07:20'),
(600, 'App\\Models\\User', 37, 'API TOKEN', '260357c37c28ff1b3b3d96e4628e43ed4d79fcac9adda0ff0c998dc9dc02af93', '[\"*\"]', '2024-12-03 07:08:21', NULL, '2024-12-03 07:08:17', '2024-12-03 07:08:21'),
(601, 'App\\Models\\User', 38, 'API TOKEN', 'ccd42da4d5ae9faf19ea627f48f9d0e28640b5bacb13b90d1ee5f71c3c18c464', '[\"*\"]', '2024-12-03 07:11:51', NULL, '2024-12-03 07:09:10', '2024-12-03 07:11:51'),
(602, 'App\\Models\\User', 1, 'API TOKEN', 'bf0fac4bb5e7184dcbebf055bd8f7e1032082061af11092d9d77df3f4ffcf958', '[\"*\"]', '2024-12-03 07:12:36', NULL, '2024-12-03 07:12:31', '2024-12-03 07:12:36'),
(603, 'App\\Models\\User', 1, 'API TOKEN', 'fddf3c9c3dc0be3bfcc9c9f7066147aeb53b7c1507aafb341e135bc6a3e0d869', '[\"*\"]', NULL, NULL, '2024-12-03 07:13:06', '2024-12-03 07:13:06'),
(604, 'App\\Models\\User', 1, 'API TOKEN', '9634484bd62c8f652dad679b9da2ff0f4b3ec655c73b3aaa736cfbc60b554752', '[\"*\"]', '2024-12-03 07:14:03', NULL, '2024-12-03 07:13:17', '2024-12-03 07:14:03'),
(605, 'App\\Models\\User', 1, 'API TOKEN', '0169eab3dbb950159be6e4e326ff60c80ef367f8571c7909a591a4f1eb190565', '[\"*\"]', '2024-12-03 07:14:43', NULL, '2024-12-03 07:14:42', '2024-12-03 07:14:43'),
(606, 'App\\Models\\User', 38, 'API TOKEN', 'ab2c1156a20433238607f6945defc69d38ab58097e45c0132237452f45d578cb', '[\"*\"]', '2024-12-03 07:15:18', NULL, '2024-12-03 07:14:50', '2024-12-03 07:15:18'),
(607, 'App\\Models\\User', 1, 'API TOKEN', 'c4986f92d76789783d76d502042476320dd74334a579349491764b21a05a8416', '[\"*\"]', '2024-12-03 07:16:25', NULL, '2024-12-03 07:15:22', '2024-12-03 07:16:25'),
(608, 'App\\Models\\User', 1, 'API TOKEN', '2e88a5bce80ef834ca5acda2458bab2d09249ed4304051ed1015ad121cd4510f', '[\"*\"]', '2024-12-03 07:16:42', NULL, '2024-12-03 07:16:30', '2024-12-03 07:16:42'),
(609, 'App\\Models\\User', 1, 'API TOKEN', 'ad75d78aa1055fa71ec665d2e63c689c260dded0d9b76de902f43eb842797917', '[\"*\"]', '2024-12-03 07:16:54', NULL, '2024-12-03 07:16:47', '2024-12-03 07:16:54'),
(610, 'App\\Models\\User', 1, 'API TOKEN', '1623e2d76229e3ca45375309723d6d6bb80505b4120a8c524681ac4384670c17', '[\"*\"]', '2024-12-03 07:19:56', NULL, '2024-12-03 07:19:55', '2024-12-03 07:19:56'),
(611, 'App\\Models\\User', 1, 'API TOKEN', '5175da6e868206484f75815125b8655f0a56a667873c9405f72605416b88bda2', '[\"*\"]', '2024-12-03 07:20:29', NULL, '2024-12-03 07:20:29', '2024-12-03 07:20:29'),
(612, 'App\\Models\\User', 1, 'API TOKEN', '64e0b60d53b25107b874756ca420737fa51024ec5a7dde8d242f75c38c56cf68', '[\"*\"]', NULL, NULL, '2024-12-03 07:22:33', '2024-12-03 07:22:33'),
(613, 'App\\Models\\User', 1, 'API TOKEN', '554ba191b6107a944e1ae21a8aa391c8e6a00d452d27de870c5eff128efa95bb', '[\"*\"]', NULL, NULL, '2024-12-03 07:23:03', '2024-12-03 07:23:03'),
(614, 'App\\Models\\User', 1, 'API TOKEN', 'd36bbf81e83b6cbd3fd8caf6275d5afb1b56eae721aad474597e49e5a323f750', '[\"*\"]', NULL, NULL, '2024-12-03 07:23:52', '2024-12-03 07:23:52'),
(615, 'App\\Models\\User', 37, 'API TOKEN', '8a361cca34b2efe156c61cd89470e0f3f01483af26c13fa4601153ceb65ae8da', '[\"*\"]', NULL, NULL, '2024-12-03 07:24:06', '2024-12-03 07:24:06'),
(616, 'App\\Models\\User', 38, 'API TOKEN', '66641db3f39c9fc60c2a7143a7ac4498e33396d54fb6b435d893dec8472305aa', '[\"*\"]', NULL, NULL, '2024-12-03 07:24:11', '2024-12-03 07:24:11'),
(617, 'App\\Models\\User', 1, 'API TOKEN', '61dda2a99492a4fe0b3d230dba920aea1bdf8048127931835384ad083a5252ba', '[\"*\"]', '2024-12-03 07:25:11', NULL, '2024-12-03 07:25:10', '2024-12-03 07:25:11'),
(618, 'App\\Models\\User', 37, 'API TOKEN', '877ef81557b8d57b95a7a95d7715b4cb47b1b96044cc1de49232c866e6c04610', '[\"*\"]', '2024-12-03 07:25:17', NULL, '2024-12-03 07:25:16', '2024-12-03 07:25:17'),
(619, 'App\\Models\\User', 38, 'API TOKEN', 'faa57d7f8126589fc1fd2e98bc5d84f8c9ceed0c19505482f963779bf0ccffef', '[\"*\"]', '2024-12-03 07:25:21', NULL, '2024-12-03 07:25:21', '2024-12-03 07:25:21'),
(620, 'App\\Models\\User', 1, 'API TOKEN', '3b811704470b8a6f3cdd41d469d2d16e875eba811ff421eecc3b14d50cda31ab', '[\"*\"]', '2024-12-03 07:25:45', NULL, '2024-12-03 07:25:35', '2024-12-03 07:25:45'),
(621, 'App\\Models\\User', 37, 'API TOKEN', '75394f7a1bc70790661711f43644bef2fb303fe89bd6a8e8d4ac4fcfbdac8cb7', '[\"*\"]', '2024-12-03 07:26:02', NULL, '2024-12-03 07:25:49', '2024-12-03 07:26:02'),
(622, 'App\\Models\\User', 38, 'API TOKEN', 'd652012396861fd9e4dde32062c66fe5a6a8ed965190e31858dc897901afc09e', '[\"*\"]', '2024-12-03 07:32:01', NULL, '2024-12-03 07:26:05', '2024-12-03 07:32:01'),
(623, 'App\\Models\\User', 1, 'API TOKEN', '794144eea9a01ed2c0b6836ea4e941fd1c18b9b14cad2aee0367508a4ef4d166', '[\"*\"]', '2024-12-03 10:41:06', NULL, '2024-12-03 07:32:09', '2024-12-03 10:41:06'),
(624, 'App\\Models\\User', 38, 'API TOKEN', '0e345d9e446dadf9cd28fde7ba2baf70a2ce54e6cd0c77c771d3a9643c080352', '[\"*\"]', '2024-12-03 10:32:14', NULL, '2024-12-03 10:32:05', '2024-12-03 10:32:14'),
(625, 'App\\Models\\User', 37, 'API TOKEN', '68107a418c1573d2d712eb241c8e01efa5431e422b5093b496102ac57a6d2c95', '[\"*\"]', '2024-12-03 11:33:05', NULL, '2024-12-03 10:41:12', '2024-12-03 11:33:05'),
(626, 'App\\Models\\User', 1, 'API TOKEN', 'dcef279b98b6d5ee0688a3ba48a29d6134aa54651ea15f7fe35bc700243a7cb3', '[\"*\"]', '2024-12-03 11:35:16', NULL, '2024-12-03 11:34:08', '2024-12-03 11:35:16'),
(627, 'App\\Models\\User', 37, 'API TOKEN', '8aa9d84d3e2eefbd1909a0493014caa685a6a3386b7a22e99ddc133796d9d54b', '[\"*\"]', '2024-12-03 11:36:05', NULL, '2024-12-03 11:35:22', '2024-12-03 11:36:05'),
(628, 'App\\Models\\User', 38, 'API TOKEN', '8f85e537a9f1faf8d51d3e2976888237e97ee4c1c06a784aa133c8395b1e06fc', '[\"*\"]', '2024-12-03 11:41:34', NULL, '2024-12-03 11:36:48', '2024-12-03 11:41:34'),
(629, 'App\\Models\\User', 1, 'API TOKEN', '70a381f018624df7ac823becd5533a0b8d0ac41be7bb15c8fd7750294e285e8d', '[\"*\"]', '2024-12-03 11:43:22', NULL, '2024-12-03 11:41:41', '2024-12-03 11:43:22'),
(630, 'App\\Models\\User', 38, 'API TOKEN', '54c5febaab3b65ee51d49a34cabeb1a776582cb1da7320951d2ced07489b33f1', '[\"*\"]', '2024-12-03 11:43:52', NULL, '2024-12-03 11:43:27', '2024-12-03 11:43:52'),
(631, 'App\\Models\\User', 37, 'API TOKEN', 'dc796fbe7c8eca0244b3116cc53d95b37405f61cfd9d2533cd0512e8bb2dd31e', '[\"*\"]', '2024-12-03 11:45:03', NULL, '2024-12-03 11:44:58', '2024-12-03 11:45:03'),
(632, 'App\\Models\\User', 1, 'API TOKEN', '2035e8748edaa292f6a22d1fdc4c58ac133fccf6c72a44608110958ddc43d88a', '[\"*\"]', '2024-12-03 11:56:50', NULL, '2024-12-03 11:45:11', '2024-12-03 11:56:50'),
(633, 'App\\Models\\User', 1, 'API TOKEN', '5250fe1f286ff9e22cb7c3e1f460cb25f50fc8404098a33a0a26c0b537be91f1', '[\"*\"]', '2024-12-03 11:57:50', NULL, '2024-12-03 11:56:53', '2024-12-03 11:57:50'),
(634, 'App\\Models\\User', 37, 'API TOKEN', 'f0d5b4e7941b02ffe9a33f211d94cf30e10d74021dd78dc73c371b3c956ec9fa', '[\"*\"]', '2024-12-03 11:58:04', NULL, '2024-12-03 11:57:54', '2024-12-03 11:58:04'),
(635, 'App\\Models\\User', 38, 'API TOKEN', '9ad882c21df53c33e0985b59028207b8e6a672bcb9d95fbc8b938cc9cc550b87', '[\"*\"]', '2024-12-03 11:58:36', NULL, '2024-12-03 11:58:14', '2024-12-03 11:58:36'),
(636, 'App\\Models\\User', 37, 'API TOKEN', 'd3f35ca1e068a7340e3571944407c83fd2033d69e632bbdd7a079fa02c1bf79b', '[\"*\"]', '2024-12-03 12:14:11', NULL, '2024-12-03 12:14:06', '2024-12-03 12:14:11'),
(637, 'App\\Models\\User', 1, 'API TOKEN', 'f811959fb7f7b1a62c924cbaa410594df30bac1e229be204a888068e41b58d33', '[\"*\"]', '2024-12-04 04:21:26', NULL, '2024-12-04 04:21:17', '2024-12-04 04:21:26'),
(638, 'App\\Models\\User', 37, 'API TOKEN', 'c8b232dcf382a457e3d626a6f497dbc1c6ba7974819b0933b51248337b6e350d', '[\"*\"]', '2024-12-04 04:30:37', NULL, '2024-12-04 04:30:35', '2024-12-04 04:30:37'),
(639, 'App\\Models\\User', 1, 'API TOKEN', 'c408ad9f46f3b94360cdf096c31083b4fa11131855b8fb33c42ea5f4d1039d9f', '[\"*\"]', '2024-12-04 04:30:59', NULL, '2024-12-04 04:30:42', '2024-12-04 04:30:59'),
(640, 'App\\Models\\User', 37, 'API TOKEN', '211ce9a83332c946f9b6d1d3f28ed91b1724f5369abb8b9c643af7549821549a', '[\"*\"]', '2024-12-04 04:33:38', NULL, '2024-12-04 04:31:03', '2024-12-04 04:33:38'),
(641, 'App\\Models\\User', 1, 'API TOKEN', '92ebb778d188f8fe93ceeb894484b1cfeb929addca9e6e46f19b5d90ae044b26', '[\"*\"]', '2024-12-04 04:35:15', NULL, '2024-12-04 04:34:40', '2024-12-04 04:35:15'),
(642, 'App\\Models\\User', 38, 'API TOKEN', '39cf6692ae9512261ce79f00f0407e9714d5c5faf8714512e13fb8b6a9a2bbc3', '[\"*\"]', '2024-12-04 04:36:16', NULL, '2024-12-04 04:36:14', '2024-12-04 04:36:16'),
(643, 'App\\Models\\User', 1, 'API TOKEN', '550243716b00907fd30cc5f0f230f15c5960e15995b3291709f61f32945754be', '[\"*\"]', '2024-12-04 04:42:17', NULL, '2024-12-04 04:36:21', '2024-12-04 04:42:17'),
(644, 'App\\Models\\User', 37, 'API TOKEN', 'fe58b0b1e60dad7f94708b9a5ce1bcce24e8e3fd5e76b0732e35bddd2dd495eb', '[\"*\"]', '2024-12-04 04:44:12', NULL, '2024-12-04 04:42:22', '2024-12-04 04:44:12'),
(645, 'App\\Models\\User', 1, 'API TOKEN', '55d7b0858f714a14cf7aec713859b993e7602ca11723b72f6301d80d5d4f1753', '[\"*\"]', '2024-12-04 05:00:27', NULL, '2024-12-04 04:44:17', '2024-12-04 05:00:27'),
(646, 'App\\Models\\User', 38, 'API TOKEN', 'a481889262bc8fcad5463ced04e5441959a0f582665311681062280ca368e8fa', '[\"*\"]', '2024-12-04 05:40:57', NULL, '2024-12-04 05:00:36', '2024-12-04 05:40:57'),
(647, 'App\\Models\\User', 1, 'API TOKEN', '9742ccd97ac7c75e1371c993e820e624ae33ca48e3973228df6278364275d40e', '[\"*\"]', '2024-12-04 10:09:54', NULL, '2024-12-04 10:09:09', '2024-12-04 10:09:54'),
(648, 'App\\Models\\User', 1, 'API TOKEN', 'fce09a95433edf110f90e8e4773615afac4673d8306ea7754b06701b9f9a8748', '[\"*\"]', '2024-12-04 12:07:51', NULL, '2024-12-04 10:10:02', '2024-12-04 12:07:51'),
(649, 'App\\Models\\User', 1, 'API TOKEN', 'b58decf765c81f45d41226683183457e42192db9b5010d96300b34a009dde3b0', '[\"*\"]', '2024-12-06 17:02:32', NULL, '2024-12-06 10:57:26', '2024-12-06 17:02:32'),
(650, 'App\\Models\\User', 1, 'API TOKEN', '14275c3fd5535c030b539caf5d1b43197bbc67c03ccc7166a162821e50a536a8', '[\"*\"]', '2024-12-10 10:01:06', NULL, '2024-12-10 10:00:03', '2024-12-10 10:01:06'),
(651, 'App\\Models\\User', 37, 'API TOKEN', '01cfb4e5c07d8eb549c246494a6a86a490d4d424efa540d569f414c7c81e2507', '[\"*\"]', '2024-12-10 10:01:40', NULL, '2024-12-10 10:01:30', '2024-12-10 10:01:40'),
(652, 'App\\Models\\User', 38, 'API TOKEN', '9ffd210e21b14d3833bbb12be6a9a8ad5fad2fa01eb4f724ab6943f88fae9327', '[\"*\"]', '2024-12-10 10:02:23', NULL, '2024-12-10 10:01:47', '2024-12-10 10:02:23'),
(653, 'App\\Models\\User', 37, 'API TOKEN', '96fca412bc3c5eb4364fd22372967b4a83c17149326e035a067813310815c9a3', '[\"*\"]', '2024-12-10 10:04:42', NULL, '2024-12-10 10:02:42', '2024-12-10 10:04:42'),
(654, 'App\\Models\\User', 1, 'API TOKEN', '70cd7ecb22863ee136922305c280f3c2b4e510cab588490342d4d890c4102a5d', '[\"*\"]', '2024-12-10 10:06:07', NULL, '2024-12-10 10:05:44', '2024-12-10 10:06:07'),
(655, 'App\\Models\\User', 37, 'API TOKEN', 'a069e7f27b473b8bd74424c0cfc29aacfb037c5a091a17ba94c2bc03e46d8764', '[\"*\"]', '2024-12-10 10:10:54', NULL, '2024-12-10 10:06:12', '2024-12-10 10:10:54'),
(656, 'App\\Models\\User', 1, 'API TOKEN', '9687039f143ac665715b2aa0e36d8aef6736cc6b685975ab132010a36520ad26', '[\"*\"]', '2024-12-10 10:13:10', NULL, '2024-12-10 10:11:02', '2024-12-10 10:13:10'),
(657, 'App\\Models\\User', 38, 'API TOKEN', 'a2f6e35a8f2fde6a025dae77af0d44480c229d02b36ab6a7dcf2bd2f9162f189', '[\"*\"]', '2024-12-10 10:13:26', NULL, '2024-12-10 10:13:26', '2024-12-10 10:13:26'),
(658, 'App\\Models\\User', 37, 'API TOKEN', '41e4cf7ca2eb7c8d7190bb7f0a92d034ce37a79d728ff72a7da90fc1b7a61ff5', '[\"*\"]', '2024-12-10 10:19:30', NULL, '2024-12-10 10:19:23', '2024-12-10 10:19:30'),
(659, 'App\\Models\\User', 37, 'API TOKEN', 'c0ced6d82d55cab087b19756eb37967e425dec9d5253ce1d3b4831d04a74290a', '[\"*\"]', '2024-12-10 10:22:30', NULL, '2024-12-10 10:22:30', '2024-12-10 10:22:30'),
(660, 'App\\Models\\User', 37, 'API TOKEN', 'e6d612fd15e6b00050c1003aefad041af8fb00bafa98d060524c003cf8e40864', '[\"*\"]', '2024-12-10 10:22:39', NULL, '2024-12-10 10:22:39', '2024-12-10 10:22:39'),
(661, 'App\\Models\\User', 37, 'API TOKEN', '66ed82d7c8958e50de43be3eef521fe04a9b6fbf43bf0707eb79e5e4526d5b9d', '[\"*\"]', '2024-12-10 10:23:56', NULL, '2024-12-10 10:22:55', '2024-12-10 10:23:56'),
(662, 'App\\Models\\User', 1, 'API TOKEN', 'c87374bb61def35d64103219ae8e6d8d2bb01345205851b803ba667163dde4c2', '[\"*\"]', '2024-12-10 10:25:02', NULL, '2024-12-10 10:24:04', '2024-12-10 10:25:02'),
(663, 'App\\Models\\User', 37, 'API TOKEN', 'e0616088bdcdf50ae6f8db094803cce86e2d170e56a0b59eef2a7862f66fc7ec', '[\"*\"]', '2024-12-10 10:26:47', NULL, '2024-12-10 10:25:06', '2024-12-10 10:26:47'),
(664, 'App\\Models\\User', 1, 'API TOKEN', '1c8f0bac9f922a91ecb5f038270bc549a97cc7765ec7df7d74736d207dccaecd', '[\"*\"]', '2024-12-10 10:29:10', NULL, '2024-12-10 10:27:00', '2024-12-10 10:29:10'),
(665, 'App\\Models\\User', 37, 'API TOKEN', 'a296ecc14f7fce36168862e1d575af5794ec671059b1a24801f7d9053516132e', '[\"*\"]', '2024-12-10 10:29:33', NULL, '2024-12-10 10:29:33', '2024-12-10 10:29:33'),
(666, 'App\\Models\\User', 38, 'API TOKEN', '1ec24a00ed9d10b8bf3d0966f54e2a9ca14477ef14b588ea669ce31de36cf63f', '[\"*\"]', '2024-12-10 10:30:24', NULL, '2024-12-10 10:29:41', '2024-12-10 10:30:24'),
(667, 'App\\Models\\User', 1, 'API TOKEN', '23490496714e74320a7bf3cf539b6383f64ed67e3e88504362132bd539fe2cb8', '[\"*\"]', '2024-12-10 10:33:50', NULL, '2024-12-10 10:30:33', '2024-12-10 10:33:50'),
(668, 'App\\Models\\User', 38, 'API TOKEN', '934b918daf2b1accc524b580a5c6e5a01693b85ef2ce98512bcfc5802dcf78eb', '[\"*\"]', '2024-12-10 10:34:17', NULL, '2024-12-10 10:34:17', '2024-12-10 10:34:17'),
(669, 'App\\Models\\User', 1, 'API TOKEN', 'fe57c1fbfcaf93e451efdc10f3570ca016b36fc6a90f711bdf133042a0fe61d2', '[\"*\"]', '2024-12-10 10:35:38', NULL, '2024-12-10 10:34:58', '2024-12-10 10:35:38'),
(670, 'App\\Models\\User', 38, 'API TOKEN', '1a2329f83e4fa57747d09eeb0752921afe09beaf49f014cf2f52c578825658e0', '[\"*\"]', '2024-12-10 10:35:49', NULL, '2024-12-10 10:35:48', '2024-12-10 10:35:49'),
(671, 'App\\Models\\User', 1, 'API TOKEN', '70d66b5eac200a0a9e8afe766922a06e4459c1d6c05af3a8005cc7aaa3369284', '[\"*\"]', '2024-12-10 10:51:39', NULL, '2024-12-10 10:36:05', '2024-12-10 10:51:39'),
(672, 'App\\Models\\User', 37, 'API TOKEN', 'd347fe278d4a16c374d3fdab50c2b6b981722b5f48ef208132187d56b2db238b', '[\"*\"]', '2024-12-10 10:51:48', NULL, '2024-12-10 10:51:44', '2024-12-10 10:51:48'),
(673, 'App\\Models\\User', 1, 'API TOKEN', '29730de781d59ff3676c8fc008012d830fe6e4373927d74790745054f5a31928', '[\"*\"]', '2024-12-10 10:52:40', NULL, '2024-12-10 10:52:02', '2024-12-10 10:52:40'),
(674, 'App\\Models\\User', 37, 'API TOKEN', 'cba350f6ee477897acec45b093209aa287ad6b0e464dc31e721ae1d4e4aa0d3f', '[\"*\"]', '2024-12-10 11:02:31', NULL, '2024-12-10 10:52:48', '2024-12-10 11:02:31'),
(675, 'App\\Models\\User', 37, 'API TOKEN', '860097dec612c7d3dbe06b22de9d841df4a43f750844b4f33cf04136e78bcb5c', '[\"*\"]', '2024-12-10 11:02:49', NULL, '2024-12-10 11:02:43', '2024-12-10 11:02:49'),
(676, 'App\\Models\\User', 1, 'API TOKEN', 'd76cb68bee5ba37b88631c54ceb2c920cc8a3b4e7d915259aaa9a09a30e13686', '[\"*\"]', '2024-12-11 09:46:19', NULL, '2024-12-10 11:03:03', '2024-12-11 09:46:19'),
(677, 'App\\Models\\User', 38, 'API TOKEN', '913987bc4606ed14ea53e2a6b2be1e2d0b36f6b0f43e3621faeb3be8ee2459b6', '[\"*\"]', '2024-12-16 06:19:35', NULL, '2024-12-16 06:19:29', '2024-12-16 06:19:35'),
(678, 'App\\Models\\User', 1, 'API TOKEN', '9462c95c59441fd086293fdf0ed0a82fc19f965fd56dbbfd354aabb088b33863', '[\"*\"]', '2024-12-16 06:25:09', NULL, '2024-12-16 06:23:49', '2024-12-16 06:25:09'),
(679, 'App\\Models\\User', 38, 'API TOKEN', 'a413e1944dc3f93cfa5174e9efdb5f461539e43871aa77544b3e50b4eee548c2', '[\"*\"]', '2024-12-16 08:16:56', NULL, '2024-12-16 06:25:21', '2024-12-16 08:16:56'),
(680, 'App\\Models\\User', 1, 'API TOKEN', '1aba19f5a9194b4093c06d4ed90376b9b70f33f318489ca4935898c3414dd5b3', '[\"*\"]', '2024-12-16 08:17:37', NULL, '2024-12-16 08:17:11', '2024-12-16 08:17:37'),
(681, 'App\\Models\\User', 38, 'API TOKEN', 'd56f59db5ed377ae767012e94911accd9ff6a32bad5fde974d138c4af67ab1d3', '[\"*\"]', '2024-12-16 11:33:13', NULL, '2024-12-16 08:17:42', '2024-12-16 11:33:13'),
(682, 'App\\Models\\User', 1, 'API TOKEN', 'a19a6bb30bf708dd0a32e566335a3c72827d4daa38a64c49f45680db062d4cbc', '[\"*\"]', '2024-12-16 13:10:32', NULL, '2024-12-16 13:08:44', '2024-12-16 13:10:32'),
(683, 'App\\Models\\User', 1, 'API TOKEN', '4a4340eb3a1cd3b0cdfe26ef499451df19b42dd78e67f7c12612b27c3e6d51be', '[\"*\"]', '2024-12-16 13:23:08', NULL, '2024-12-16 13:12:51', '2024-12-16 13:23:08'),
(684, 'App\\Models\\User', 37, 'API TOKEN', '06cc97138f738001e4155eafe0f58a9c43553c010d2ef1a4a2d017ac003a7660', '[\"*\"]', '2024-12-16 13:18:55', NULL, '2024-12-16 13:13:11', '2024-12-16 13:18:55'),
(685, 'App\\Models\\User', 38, 'API TOKEN', 'e4add4ee9214078ff0affd3fd70d00b99203fe2fc1130d96fb1e82487b5d31b7', '[\"*\"]', '2024-12-20 08:04:18', NULL, '2024-12-16 13:19:04', '2024-12-20 08:04:18'),
(686, 'App\\Models\\User', 1, 'API TOKEN', '76c943896928013aca1a655b155dc3741de9cbdbd39d7f1202bd31799bb1d0d0', '[\"*\"]', '2024-12-17 04:10:39', NULL, '2024-12-17 04:10:00', '2024-12-17 04:10:39'),
(687, 'App\\Models\\User', 37, 'API TOKEN', 'feedd7cc98b99658f71a7a4456297135d39a247292d83d101cc58ce74c674c27', '[\"*\"]', '2024-12-17 04:10:59', NULL, '2024-12-17 04:10:44', '2024-12-17 04:10:59'),
(688, 'App\\Models\\User', 1, 'API TOKEN', '300e0d683b3dc0854d652cd75f0b28f09c2128b021cf70b93b9ca5308788e8ad', '[\"*\"]', '2024-12-17 04:11:03', NULL, '2024-12-17 04:11:02', '2024-12-17 04:11:03'),
(689, 'App\\Models\\User', 37, 'API TOKEN', '9108ac8b1582d3ad011b3091fe5b39c8e6652779ee0515d9730ca5eece92f414', '[\"*\"]', '2024-12-17 04:12:31', NULL, '2024-12-17 04:12:30', '2024-12-17 04:12:31'),
(690, 'App\\Models\\User', 1, 'API TOKEN', '2fa94ca146b1cda64ced5d4e74632a5895a4c27a4cd5274974dd98b9e350cdc6', '[\"*\"]', '2024-12-17 04:21:18', NULL, '2024-12-17 04:12:35', '2024-12-17 04:21:18'),
(691, 'App\\Models\\User', 37, 'API TOKEN', 'e10ad6b0c735139d6167ea19eca08defde51c29eae50464cc3f59f61360f94c4', '[\"*\"]', '2024-12-17 04:29:42', NULL, '2024-12-17 04:22:10', '2024-12-17 04:29:42'),
(692, 'App\\Models\\User', 38, 'API TOKEN', 'abfa30e5263163dca9fb4caa7beb092f8afd45101bc10e811e2e023c7a4ed79d', '[\"*\"]', '2024-12-17 05:13:18', NULL, '2024-12-17 04:29:58', '2024-12-17 05:13:18'),
(693, 'App\\Models\\User', 1, 'API TOKEN', '5146025c42b887450a04aefb40ea7c148cccaa3687be06350a4cebd4a70c3739', '[\"*\"]', '2024-12-17 05:30:54', NULL, '2024-12-17 05:13:28', '2024-12-17 05:30:54'),
(694, 'App\\Models\\User', 38, 'API TOKEN', '3c4f1f813f03490a28647a6341710e632e0ef37470fc3f9369687008305f1b03', '[\"*\"]', '2024-12-17 06:25:05', NULL, '2024-12-17 05:31:02', '2024-12-17 06:25:05'),
(695, 'App\\Models\\User', 1, 'API TOKEN', '228e6d8e493d6892cd0a03f3c6fe8139ed0a5f950f2aa014551c1a5da32895d5', '[\"*\"]', '2024-12-17 06:25:39', NULL, '2024-12-17 06:25:09', '2024-12-17 06:25:39'),
(696, 'App\\Models\\User', 37, 'API TOKEN', '999ca4d0cfaae2d0f09c9250438fec5011a26f35f24a82398d1ae1a72d3610ca', '[\"*\"]', '2024-12-17 06:27:54', NULL, '2024-12-17 06:25:43', '2024-12-17 06:27:54'),
(697, 'App\\Models\\User', 38, 'API TOKEN', '147170b55c6a0e3be103f467faaacc100020f84cd6e01a866900fc87c0232662', '[\"*\"]', '2024-12-18 08:04:58', NULL, '2024-12-18 08:04:06', '2024-12-18 08:04:58'),
(698, 'App\\Models\\User', 1, 'API TOKEN', '44dc5afce07b9bb21af1928f4322bbe47ca3b38ce93d60cf266925932c403cd4', '[\"*\"]', '2024-12-18 11:05:14', NULL, '2024-12-18 08:06:03', '2024-12-18 11:05:14'),
(699, 'App\\Models\\User', 38, 'API TOKEN', '769867a61ae419a65aaa53a22eae392928d51b0aae9850137be3a6ebb0c8b58e', '[\"*\"]', '2024-12-18 11:05:28', NULL, '2024-12-18 11:05:27', '2024-12-18 11:05:28'),
(700, 'App\\Models\\User', 1, 'API TOKEN', '24f96d02f902e1bf893741f16a580956d78f828d1d2d5f07d765a9965ac0d80f', '[\"*\"]', '2024-12-18 11:05:48', NULL, '2024-12-18 11:05:46', '2024-12-18 11:05:48'),
(701, 'App\\Models\\User', 37, 'API TOKEN', '80165bba18834e486a7ddfc9b654932ae0ccb030ce68cc701c0c2a6a8d4e6fde', '[\"*\"]', '2024-12-18 11:57:16', NULL, '2024-12-18 11:05:54', '2024-12-18 11:57:16'),
(702, 'App\\Models\\User', 1, 'API TOKEN', '0678858341393b3febb293b2e737d65f44a51e1aa2172fa64e4359bb005c8d6b', '[\"*\"]', '2024-12-21 04:43:24', NULL, '2024-12-21 04:43:24', '2024-12-21 04:43:24'),
(703, 'App\\Models\\User', 37, 'API TOKEN', '53d365fc9155d83022c1877fdea19780f649dfd66881266d9d9ab475edeb5703', '[\"*\"]', '2024-12-21 04:43:41', NULL, '2024-12-21 04:43:34', '2024-12-21 04:43:41'),
(704, 'App\\Models\\User', 1, 'API TOKEN', 'ca3c8f859e5679e6bab0380a8b63ca692d5938d8d8c6a5e2b4c91bb3384ff5ae', '[\"*\"]', '2024-12-21 04:47:08', NULL, '2024-12-21 04:43:49', '2024-12-21 04:47:08'),
(705, 'App\\Models\\User', 38, 'API TOKEN', 'fc8ab148e3535da019ab5d87f69039c096cb72db92ac9b0400db6ec57538e389', '[\"*\"]', '2024-12-21 04:47:37', NULL, '2024-12-21 04:47:24', '2024-12-21 04:47:37'),
(706, 'App\\Models\\User', 37, 'API TOKEN', 'b49199aa1a4b2651f96af628f1f48c8dcecd2966685cfacb5ced416bc92e556f', '[\"*\"]', '2024-12-21 04:50:59', NULL, '2024-12-21 04:48:34', '2024-12-21 04:50:59'),
(707, 'App\\Models\\User', 1, 'API TOKEN', 'd33d5683228f44aa51c8e21a22f78c8955c77f7f73f786dee4cd99eee96cc19c', '[\"*\"]', '2024-12-21 04:52:08', NULL, '2024-12-21 04:51:12', '2024-12-21 04:52:08'),
(708, 'App\\Models\\User', 37, 'API TOKEN', '54c57b1c0e84ba95e2c13599da83076b6fa3a80805a19fd3ad0005870d74fe97', '[\"*\"]', '2024-12-21 04:53:45', NULL, '2024-12-21 04:52:14', '2024-12-21 04:53:45'),
(709, 'App\\Models\\User', 1, 'API TOKEN', '5b5b78487dc9b27e8ee7fea4c32ea8bab7ae2840d73374ac24e80608135eb9d5', '[\"*\"]', '2024-12-21 04:54:00', NULL, '2024-12-21 04:53:59', '2024-12-21 04:54:00'),
(710, 'App\\Models\\User', 38, 'API TOKEN', '07f7fce0c658f36f6a182eb79d7e77a91bc8b7be0e966f5f75b99c0a056e3e0b', '[\"*\"]', '2024-12-21 06:13:03', NULL, '2024-12-21 06:13:03', '2024-12-21 06:13:03'),
(711, 'App\\Models\\User', 37, 'API TOKEN', 'ff76c0665a826e1d41206961462b8e380f51c644ecfc8940bfb273518d9c3bc9', '[\"*\"]', '2024-12-21 14:42:14', NULL, '2024-12-21 06:13:11', '2024-12-21 14:42:14'),
(712, 'App\\Models\\User', 1, 'API TOKEN', '4ab295d272d098e63fdf0fd3e083d6d1e669bbf6d94916e1b3511265ffb7dbb1', '[\"*\"]', '2024-12-21 14:43:13', NULL, '2024-12-21 14:42:20', '2024-12-21 14:43:13'),
(713, 'App\\Models\\User', 1, 'API TOKEN', 'b8385ebf2779c76a445c26153beb5d8e6e45a05e3a7b2dce0cd8780ad1a9a118', '[\"*\"]', '2024-12-23 08:05:49', NULL, '2024-12-23 08:05:35', '2024-12-23 08:05:49'),
(714, 'App\\Models\\User', 37, 'API TOKEN', '298794fd9d6e4e7a2cc3f0df66def17293c3bdfaf73c7fef5504367ed06abf64', '[\"*\"]', '2024-12-23 08:06:02', NULL, '2024-12-23 08:05:55', '2024-12-23 08:06:02'),
(715, 'App\\Models\\User', 38, 'API TOKEN', '29430a122a5ecaa6a2f9ffb4e8614275ed3fb2bf68b9bf28c0c578017a759895', '[\"*\"]', '2024-12-23 08:06:06', NULL, '2024-12-23 08:06:06', '2024-12-23 08:06:06'),
(716, 'App\\Models\\User', 1, 'API TOKEN', 'fd645c87e32a6c11e7e99d4fe2f858889cdcb74ee6ba5e637e56288813cce347', '[\"*\"]', '2024-12-23 08:08:19', NULL, '2024-12-23 08:08:15', '2024-12-23 08:08:19'),
(717, 'App\\Models\\User', 37, 'API TOKEN', 'cd9fd56d382a488d86f53058748218883639202a89321102f1d903630647eb9e', '[\"*\"]', '2024-12-23 08:08:37', NULL, '2024-12-23 08:08:24', '2024-12-23 08:08:37'),
(718, 'App\\Models\\User', 38, 'API TOKEN', 'cdcd5713f8797393dd54d0e8e7de818e3fd0783d1443ab4c23b70c3116d5faf8', '[\"*\"]', '2024-12-23 11:48:20', NULL, '2024-12-23 08:08:50', '2024-12-23 11:48:20'),
(719, 'App\\Models\\User', 37, 'API TOKEN', '8a66bc4cc3f362d8c906b2660d71679276941e6d8d9aa54a5d83688cd8fe8280', '[\"*\"]', '2024-12-23 12:00:49', NULL, '2024-12-23 11:56:50', '2024-12-23 12:00:49'),
(720, 'App\\Models\\User', 1, 'API TOKEN', '38fad8ec3fcbf968fcb63443f524b30228fbfb71db1f49667fb3563c4ea6209b', '[\"*\"]', '2024-12-23 12:25:35', NULL, '2024-12-23 12:00:56', '2024-12-23 12:25:35'),
(721, 'App\\Models\\User', 37, 'API TOKEN', 'f2fcbcb71f0bd0971ef737d074cb6ef15744a512171f7e7bead40e3d4350c7c9', '[\"*\"]', '2024-12-23 13:40:49', NULL, '2024-12-23 13:40:40', '2024-12-23 13:40:49'),
(722, 'App\\Models\\User', 38, 'API TOKEN', 'ab21a7f27aa6442fe0a1820f9d58fd6ad91342d88fa95c80e5e6341f288aea98', '[\"*\"]', '2024-12-27 01:32:43', NULL, '2024-12-25 01:35:29', '2024-12-27 01:32:43'),
(723, 'App\\Models\\User', 38, 'API TOKEN', '9fd2b8fe9f1b592b64285fcb216e080192d121e28ec2682fc47a3c381343be88', '[\"*\"]', NULL, NULL, '2024-12-25 01:35:45', '2024-12-25 01:35:45'),
(724, 'App\\Models\\User', 37, 'API TOKEN', '0bdc533093b27924ba256ffe6b79b3a167395f77896a199735cc89909c036207', '[\"*\"]', NULL, NULL, '2025-01-02 00:31:59', '2025-01-02 00:31:59'),
(725, 'App\\Models\\User', 37, 'API TOKEN', '1be45280d98d4699f083c4aec9afdca28346ce6c85beea094a70c3c512a36895', '[\"*\"]', NULL, NULL, '2025-01-02 00:40:37', '2025-01-02 00:40:37'),
(726, 'App\\Models\\User', 37, 'API TOKEN', 'b770521f8169ec12a3ad4a8b8fb87312157ffd431ff20dd7f2f530e79a180b1d', '[\"*\"]', '2025-01-02 01:45:36', NULL, '2025-01-02 01:04:47', '2025-01-02 01:45:36'),
(727, 'App\\Models\\User', 38, 'API TOKEN', '1453f18eff3ba2ad3b5b82a98bc64d1917110e0957bd29e04de7d7def1d8a1d6', '[\"*\"]', '2025-01-21 04:09:48', NULL, '2025-01-16 02:10:13', '2025-01-21 04:09:48');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `image`, `type`, `created_at`, `updated_at`) VALUES
(3, 'aaaadfs', 'dddddddddddddddd', '1731996317.png', 'product', '2024-11-19 00:35:17', '2024-12-03 11:21:49'),
(5, 'abc', 'tewts', '1736147914.png', 'parts', '2025-01-06 01:48:34', '2025-01-06 01:48:34'),
(6, 'abc', 'test', '1736147956.jpeg', 'parts', '2025-01-06 01:49:16', '2025-01-06 01:49:16'),
(7, 'abc', 'tewt', '1736148106.jpeg', 'parts', '2025-01-06 01:51:46', '2025-01-06 01:51:46'),
(9, 'abcc', 'test', '1736148171.jpg', 'product', '2025-01-06 01:52:51', '2025-01-08 08:00:27');

-- --------------------------------------------------------

--
-- Table structure for table `qrs`
--

CREATE TABLE `qrs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `qrs`
--

INSERT INTO `qrs` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'HDFC', '1731996586.jpg', 'Active', '2024-11-19 06:41:34', '2024-11-19 06:41:34'),
(3, 'SBI', '1731996586.jpg', 'Active', '2024-11-19 09:58:19', '2024-11-19 09:58:19');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2024-06-18 22:53:15', '2024-06-18 22:53:15'),
(2, 'User', 'web', '2024-06-18 23:18:13', '2024-06-18 23:18:13'),
(3, 'Client', 'web', '2024-11-18 23:32:55', '2024-11-18 23:32:55');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(2, 3),
(3, 1),
(3, 3),
(4, 1),
(4, 3),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 3),
(7, 1),
(7, 3),
(8, 1),
(8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('iR0t5uBg7rS2Ehs5YUabgzEMrmuA9el55aZbuT0W', NULL, '127.0.0.1', 'PostmanRuntime/7.43.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVFVQODBka3o5cndmWE9kcERrRFJkdU1TdGNmQVJBcmhMNHJ3Y25UbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737183711),
('nAzrNUpxLUznjwMymHdweAZHOHjI1CWhOmDzxan7', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUlJSQnNWU0lSaWtRZFNwYWt0WlFLYUtBamNPZFNhUXo5R0pDQ3NYOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737094599),
('orgQj5LLYIUKf2XxUiTMTvsHq9qQ6UIqim4fjZTQ', NULL, '127.0.0.1', 'PostmanRuntime/7.43.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUGxrbnUxN1NwRHJWN0dYdlY4akZBUmt4ek93RTIzdWI1QTZrTjFnWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737095664),
('rzzf40CS3Wp4kiU9CdcqBQggZGYTs8idrr4whJaW', NULL, '127.0.0.1', 'PostmanRuntime/7.43.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSExSR2xrWDV5NFR6WU9kemI4UW1EVURvY3ZKTzhzenloWnlBeVVwMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737452189),
('SJMKygRUYpMij7cURC0I16ZPIs3F1nOycAVdussA', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiQW5YczdZZ1RoQjNmRFo3cHNMVG1YV3c2Q21YOTJzQ1MweHVldHgzVyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvdXNlcnMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NDoiYXV0aCI7YToxOntzOjIxOiJwYXNzd29yZF9jb25maXJtZWRfYXQiO2k6MTczNzAyNDQ3ODt9fQ==', 1737027584),
('xmFVm6kdvKWVEzaggYCovIvLrdvrWf8vIFRaMiBG', NULL, '127.0.0.1', 'PostmanRuntime/7.43.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicW8yM00zWVJ0amt6c29jelNoRnFmT2hLMUo0aGRGRG5OQWhKNlZtSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737022227);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` int(11) NOT NULL,
  `task` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teammembers`
--

CREATE TABLE `teammembers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teamId` varchar(255) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teammembers`
--

INSERT INTO `teammembers` (`id`, `teamId`, `userId`, `created_at`, `updated_at`) VALUES
(1, '1', '37', '2024-11-21 10:43:25', '2024-11-21 10:43:25'),
(2, '1', '39', '2024-11-21 10:43:25', '2024-11-21 10:43:25'),
(3, '18', '37', '2025-01-11 03:50:52', '2025-01-11 03:50:52'),
(4, '18', '37', '2025-01-11 03:54:30', '2025-01-11 03:54:30');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `created_at`, `updated_at`) VALUES
(18, 'test1', '2025-01-06 01:53:54', '2025-01-11 04:03:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `password`, `remember_token`, `token`, `birthdate`, `created_at`, `updated_at`) VALUES
(1, 'Raviraj', '9979404044', 'contact@flipcodesolutions.com', '$2y$12$sGafd1vW37GYUAZn8xYvwe62zted6/xWn.ja//FHLFVpUtkwuUwDu', NULL, 'eIGZV7jwQie14-X3-Sp6oI:APA91bE2ww8RrO2otarJVV_nrYEsH2LwWIOLnNQvF9lvU30uMt8N1ur3dLWfbAvVu_MFWA3VRqireg-fbY6agkbUM3cJPAWW37otVtYSAPiTl-O8qNnpx74', '1981-05-19', '2024-06-18 22:53:15', '2024-10-28 12:47:03'),
(37, 'user', '9687574999', 'user@gmail.com', '$2y$12$Th/xN9uLF3l5cNG4TygMuertm7ACS6LKNNObfn27rhBHfLzEr9vNa', NULL, 'cDvEcuT2SB6kaEMP50fl3A:APA91bF4TZ7NYtXficlrk6oMdNzzoPtTHfyy6h-hu-kRu94xRNnaIwiGN8_O7ckVknPQSDnavvL7dPITN1l5Pi6XOqHq4OkEg_jE40hNZOMNV1LKGgj2L6QDatOjvr33UEvG8W7D6EpY', '1221-03-12', '2024-11-18 23:34:15', '2024-11-18 23:34:15'),
(38, 'Client', '8306180808', 'client@gmail.com', '$2y$12$sSwFhGRaPHII4QUd/TYq6.yxFbroA1TxnQtB.7QWUzI1tGH4KzuNi', NULL, 'fP1J9k7wTE6mJmj7ghyfiL:APA91bGgZPt_8PmTYXsAceVhkYEgRyZu0ChzzGiHri3FtB1pQSLTju_N73S7rIAGUbBOUo1-oj53B5bnC2JxxOfA92uHKehovO1hEcDOJT1pO-5XeMMN614', '1212-12-12', '2024-11-18 23:34:47', '2024-11-18 23:34:47'),
(42, 'test', '8487868595', 'test@gmail.com', '$2y$12$nwFTQckzWmPdK6AHfax0yO4Ljx.cLXp39A45XGpxWmPep.0utOMWS', NULL, NULL, '2000-08-09', '2025-01-06 08:05:50', '2025-01-06 08:05:50');

-- --------------------------------------------------------

--
-- Table structure for table `versions`
--

CREATE TABLE `versions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `majorUpdate` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `versions`
--

INSERT INTO `versions` (`id`, `version`, `majorUpdate`, `created_at`, `updated_at`) VALUES
(1, '1.0.1', 1, '2024-09-20 09:44:43', '2024-11-19 05:16:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assigns`
--
ALTER TABLE `assigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `calllogs`
--
ALTER TABLE `calllogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qrs`
--
ALTER TABLE `qrs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teammembers`
--
ALTER TABLE `teammembers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `versions`
--
ALTER TABLE `versions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assigns`
--
ALTER TABLE `assigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `calllogs`
--
ALTER TABLE `calllogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=728;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `qrs`
--
ALTER TABLE `qrs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teammembers`
--
ALTER TABLE `teammembers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `versions`
--
ALTER TABLE `versions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
