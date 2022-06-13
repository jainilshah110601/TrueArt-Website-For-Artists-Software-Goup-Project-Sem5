-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2021 at 06:40 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `true_art`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(23, '2021_11_02_165344_create_table_painting_info', 2),
(34, '2021_11_02_165344_create_table_paintingInfo', 3),
(46, '2021_11_07_153523_create_table_cart', 6),
(47, '2021_11_07_154212_create_table_cart', 7),
(49, '2021_11_08_121914_create_table_order', 9),
(50, '2021_11_08_142738_create_table_order', 10),
(51, '2021_11_08_143109_create_table_order', 11),
(53, '2019_08_19_000000_create_failed_jobs_table', 12),
(54, '2019_12_14_000001_create_personal_access_tokens_table', 12),
(55, '2021_10_23_051237_create_sessions_table', 12),
(56, '2021_10_30_052801_create_table_user', 12),
(57, '2021_11_01_060342_create_table_artist', 12),
(58, '2021_11_02_173126_create_table_painting_info', 12),
(59, '2021_11_07_155526_create_table_cart', 12),
(60, '2021_11_08_143323_create_table_order', 12),
(61, '2021_11_12_055419_create_table_order', 13),
(62, '2021_11_12_062657_create_table_painting_info', 14),
(63, '2021_11_12_065153_create_table_cart', 15),
(64, '2021_11_12_070018_create_table_order', 16),
(65, '2021_11_12_111234_create_table_order', 17),
(66, '2021_11_12_111318_create_table_cart', 17),
(67, '2021_11_12_111515_create_table_cart', 18),
(68, '2021_11_12_111622_create_table_order', 19);

-- --------------------------------------------------------

--
-- Table structure for table `paintinginfo`
--

CREATE TABLE `paintinginfo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `artist_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artist_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `painting_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orientation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `painting_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paintinginfo`
--

INSERT INTO `paintinginfo` (`id`, `artist_id`, `artist_name`, `painting_name`, `category`, `price`, `size`, `orientation`, `description`, `painting_path`, `created_at`, `updated_at`) VALUES
(1, 'mira20@gmail.com', 'Mira Rai', 'Nature\'s Beauty', 'Canvas Painting', '3000.00', '15 * 13', 'Landscape', 'Nature scene with trees and river which depicts the beauty of tranquil ecological environment.', 'Nature painting by Mira Rai.jpg', '2021-11-12 01:01:32', '2021-11-12 01:01:32'),
(2, 'mira20@gmail.com', 'Mira Rai', 'Ronaldo Sketch', 'Pencil Sketch', '4000.00', '13 * 14', 'Portrait', 'A sketch made of Graphite Pencil on Portrait paper, of Cristiano Ronaldo, the footballer.', 'Ronaldo Sketch by Mira Rai.jpg', '2021-11-12 01:04:26', '2021-11-12 01:04:26'),
(3, 'mira20@gmail.com', 'Mira Rai', 'Buddha Painting', 'Canvas Painting', '6500.00', '13 * 13', 'Square', 'Meditating Buddha Canvas Art which creates peaceful atmosphere in your ambience.', 'Buddha Painting by Mira Rai.jpg', '2021-11-12 01:12:02', '2021-11-12 01:12:02'),
(4, 'mira20@gmail.com', 'Mira Rai', 'Time Apparatus', 'Canvas Painting', '4500.00', '16 * 14', 'Landscape', 'This artwork depicts that life needs to be in balance with nature and man made machines.', 'Time Apparatus by Mira Rai.jpg', '2021-11-11 00:57:17', '2021-11-11 00:57:17'),
(5, 'mira20@gmail.com', 'Mira Rai', 'Abstract Art', 'Canvas Painting', '5000.00', '15 * 13', 'Landscape', 'An abstract work done on canvas using acrylic colors.', 'Abstract Art by Mira Rai.jpg', '2021-11-11 01:08:55', '2021-11-11 01:08:55'),
(6, 'mira20@gmail.com', 'Mira Rai', 'Shooting Star', 'Canvas Painting', '6000.00', '12 * 11', 'Landscape', 'Keep your eyes wide open in the darkest of times. Only then you can rely on shooting stars.', 'Shooting Star by Mira Rai.jpg', '2021-11-11 02:20:49', '2021-11-11 02:20:49'),
(7, 'mark15@gmail.com', 'Mark Smith', 'Digital River Landscape', 'Digital Artwork', '2000.00', '15 * 13', 'Landscape', 'A river cuts through the rocks, not because of its power, but because of its persistence.', 'Digital River Landscape by Mark Smith.jpg', '2021-11-12 05:14:54', '2021-11-12 05:14:54'),
(11, 'mira20@gmail.com', 'Mira Rai', 'Night Sky', 'Digital Art', '3000.00', '15 * 13', 'Landscape', 'A digital artwork depicting night sky', 'Night Sky.jpg', '2021-11-13 00:19:11', '2021-11-13 00:19:11');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('MVHtCGqToKeDk26SYG1acvNuQQKxOmSAsYPBiDK8', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSXFGRXJLQzg0bEdLV1RsVEt1MHNzVUZGRnNqVmJ2WDR6aUJ4TVAxMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1636776357),
('TpVwd99zQLixqAW5xy8XsYVsWKkGC1B5VyCgwbO3', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'YTo0OntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMDoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FydHdvcmtzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo2OiJfdG9rZW4iO3M6NDA6IlIzMjhLc2w5Ymx3eWRGaWFHdjBxUjRWSEdWelcyZjhFbW1DcXFoYVEiO3M6NToibG9naW4iO3M6MjQ6InNoYWhkaHJ1dmkxNTEyQGdtYWlsLmNvbSI7fQ==', 1636782566),
('XD7WZz7DxFHwxYw1QKi1vEI8YXU036QyVzSVDvHb', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0YzaWVMQnlvRTdseFZYNWlsYU1QUEx4YzNwdlc0azljTlExSmdqbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcnR3b3JrcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1638077716),
('ZDF2x0ITTuaHLm6SjNKndbSa0Q50ssCCkDRzn3qQ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYmhmQzlIWFdxNFpXeWxHRGo2Rk9Xc2pkeUdQRkdTM0syeFhoS1VIQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1638077966);

-- --------------------------------------------------------

--
-- Table structure for table `tblartist`
--

CREATE TABLE `tblartist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint(20) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblartist`
--

INSERT INTO `tblartist` (`id`, `name`, `username`, `gender`, `phone`, `email`, `password`, `path`, `created_at`, `updated_at`) VALUES
(1, 'Mira Rai', 'mira20', 'female', 7154278360, 'mira20@gmail.com', '$2y$10$BU.nNM0m59bEwLJ1BLHcdezJlu68Nj.qy70qKnx89wNJpOht9YRMa', 'Mira rai portfolio.pdf', '2021-11-09 02:02:02', '2021-11-09 02:02:02'),
(2, 'Mark Smith', 'mark15', 'male', 9879879876, 'mark15@gmail.com', '$2y$10$BU.nNM0m59bEwLJ1BLHcdezJlu68Nj.qy70qKnx89wNJpOht9YRMa', 'Mark Smith Resume.pdf', '2021-11-12 03:28:09', '2021-11-12 03:28:09'),
(4, 'Anya Verma', 'anya10', 'female', 9876543210, 'anya10@gmail.com', '$2y$10$YfGKowKXf5S0YaKlgqvvZOnwwUl8ytJmDFj6Mm.FXFUSuuZkAemQu', 'Anya Verma portfolio.pdf', '2021-11-13 00:16:56', '2021-11-13 00:16:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblcart`
--

CREATE TABLE `tblcart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `painting_id` int(11) NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artist_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblorder`
--

CREATE TABLE `tblorder` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `painting_id` int(11) NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artist_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblorder`
--

INSERT INTO `tblorder` (`id`, `painting_id`, `user_id`, `artist_id`, `status`, `payment_method`, `payment_status`, `address`, `phone`, `created_at`, `updated_at`) VALUES
(3, 1, 'shahdhruvi1512@gmail.com', 'mira20@gmail.com', 'Pending', 'Cash On Delivery', 'Pending', '12, Shivam Heights, Canal Road, Ahmedabad', 9123412345, '2021-11-13 00:15:53', '2021-11-13 00:15:53'),
(4, 7, 'shahdhruvi1512@gmail.com', 'mark15@gmail.com', 'Pending', 'Cash On Delivery', 'Pending', '12, Shivam Heights, Canal Road, Ahmedabad', 9123412345, '2021-11-13 00:15:53', '2021-11-13 00:15:53');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` int(11) NOT NULL DEFAULT 1,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`id`, `role`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 3, 'admin', 'admin@gmail.com', '$2a$05$RijqEPg2tb8i85KXRu392.KgT8Ez7zsAbrBnYrypkvIYi1bhxoe3G', NULL, NULL),
(2, 2, 'Mira Rai', 'mira20@gmail.com', '$2y$10$BU.nNM0m59bEwLJ1BLHcdezJlu68Nj.qy70qKnx89wNJpOht9YRMa', NULL, NULL),
(4, 2, 'Mark Smith', 'mark15@gmail.com', '$2y$10$BU.nNM0m59bEwLJ1BLHcdezJlu68Nj.qy70qKnx89wNJpOht9YRMa', NULL, NULL),
(9, 1, 'Dhruvi Shah', 'shahdhruvi1512@gmail.com', '$2y$10$TZ9Ktn56TxcR2aPEMbIhSu7rV6icGXxAClwuhZISmE3XKAdd/3tuq', '2021-11-13 00:11:38', '2021-11-13 00:11:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paintinginfo`
--
ALTER TABLE `paintinginfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tblartist`
--
ALTER TABLE `tblartist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tblartist_email_unique` (`email`);

--
-- Indexes for table `tblcart`
--
ALTER TABLE `tblcart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblorder`
--
ALTER TABLE `tblorder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbluser_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `paintinginfo`
--
ALTER TABLE `paintinginfo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblartist`
--
ALTER TABLE `tblartist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblcart`
--
ALTER TABLE `tblcart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblorder`
--
ALTER TABLE `tblorder`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
