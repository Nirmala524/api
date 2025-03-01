-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2025 at 06:50 AM
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
-- Database: `api`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(4, '2024_12_19_082505_create_personal_access_tokens_table', 2),
(5, '2024_12_20_060414_create_products_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, 'App\\Models\\User', 3, 'auth_token', '01ee7880e6a93ab5caec4799f367360c63cac3f24b9c7aa7fbff0d495129fc39', '[\"*\"]', NULL, NULL, '2024-12-20 00:13:00', '2024-12-20 00:13:00'),
(8, 'App\\Models\\User', 5, 'auth_token', '3dcc607740208c1940d6281e9212c8fd99ec4a2f4d3b7519e549340bcb6c85f6', '[\"*\"]', '2024-12-20 02:25:54', NULL, '2024-12-20 02:25:08', '2024-12-20 02:25:54'),
(9, 'App\\Models\\User', 5, 'auth_token', '209e96e6ce08ca4d0daafe41b8422f400c43a348c861a21c55be040a486507b7', '[\"*\"]', '2024-12-21 02:21:52', NULL, '2024-12-21 00:57:37', '2024-12-21 02:21:52'),
(10, 'App\\Models\\User', 6, 'auth_token', '64a2655399d52d205f6d2f5acf5920704a0fdc1939b88963176fd05de539f7a4', '[\"*\"]', '2025-01-20 02:17:47', NULL, '2025-01-17 01:30:49', '2025-01-20 02:17:47'),
(11, 'App\\Models\\User', 5, 'auth_token', 'c77fdb9c727ba08361057cee3dc18b80b50b9f5f89567b872881b56e0f68aa39', '[\"*\"]', '2025-01-17 02:45:48', NULL, '2025-01-17 01:45:19', '2025-01-17 02:45:48'),
(12, 'App\\Models\\User', 5, 'auth_token', '794ecce082f798e7e83de8904b9767e3ff4cf670e7a5ba79bc95ce25314250e0', '[\"*\"]', NULL, NULL, '2025-01-20 01:16:03', '2025-01-20 01:16:03'),
(13, 'App\\Models\\User', 5, 'auth_token', '42bd4165f8aed88182cbe17141e0359cd5d798a76e439e11672bc1a928685f71', '[\"*\"]', '2025-01-21 00:01:08', NULL, '2025-01-20 23:54:19', '2025-01-21 00:01:08'),
(14, 'App\\Models\\User', 4, 'auth_token', '7b340eda2f7068339c398f75b52b63f3f273f9912363761ba6960d0050b3f0db', '[\"*\"]', '2025-01-21 00:52:50', NULL, '2025-01-21 00:12:00', '2025-01-21 00:52:50');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `desc` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `desc`, `created_at`, `updated_at`) VALUES
(2, 'dsvgfdsghrd', 45465, 'fdhgtyhtrujhrtfujfhgfhfghtf', '2024-12-21 00:58:21', '2025-01-21 00:16:33'),
(3, 'one', 150, 'this is test', '2024-12-21 02:21:52', '2024-12-21 02:21:52'),
(4, 'dsvgfdsghrd', 45465, 'fdhgtyhtrujhrtfujfhgfhfghtf', '2025-01-21 00:25:13', '2025-01-21 00:25:13'),
(5, 'ertfgere', 45465, 'fdhgtyhtrujhrtfujfhgfhfghtf', '2025-01-21 00:50:35', '2025-01-21 00:50:35');

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
('3AQOlCMsYiWJ8IGHCgI2U4MoD0fVt5UwTZAiTfco', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVGtPcTA2ak9WOU04WEJOR1RIemw5UVFsU0VSbzdKY1dzWWEwcGQ4WCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737098371),
('3fkO8lYqSvKhtK8d866j8SR8zgFDJgOy34zUBqiZ', NULL, '127.0.0.1', 'PostmanRuntime/7.43.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYzF4bWpib1V2a1VNOGxJMmM2aEw5ZTJYNVJOUWRyTGVkTVY4MXh0NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1734770836),
('JIRx2HqwnmIpbomdx2o3hmLfSymj69ImDWG3k8qx', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmxsOTUwS2NVd0xmc2dtUnRscUtHZW1jRHZTOU9UT2FJSHhta2ZrSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737355340),
('t8JZCsWcSgxPv8hnX1HPNoF2P8lFC342tvdL6i1p', NULL, '127.0.0.1', 'PostmanRuntime/7.43.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNUhUNzYxTlFZalM0SDVBbkVOdHFEWGIweWpQdDhndkgxUVczemVtVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737440425),
('V3IDU8Ftb9tkOtvzxRoA9zerVtBIV5r2EXTVSC7i', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYk9tUExWaklJdFhJSVBucVJTa1Juc3pYZFl2Nm1RR25WanltT0pQMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737437161),
('WMquaH0xvXr4tiK4TGzquAFkn55lJJCoZi3S6k5q', NULL, '127.0.0.1', 'PostmanRuntime/7.43.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ2NwbUMwVlRybldtTjVUY0p5ZWRtbUVIT283TjF5WWxhRlhBRnpNOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737359512),
('xesUrywUmNQQca0z8pXhbbbNNBY7U4BN5dEXfhqo', NULL, '127.0.0.1', 'Thunder Client (https://www.thunderclient.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2ZIbmZPd0Rpa2JCU2VkZ1Z5dnp4NFUyU2VTSHFKTmNEZFQ3ak9STiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737097633);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test user', 'testuser@gmail.com', NULL, '$2y$12$5gwPlyt/3RQjK95hOOUaz.FbXISCyTplC6ChRghwGFMjTryWFv6km', NULL, '2024-12-19 02:44:27', '2024-12-19 02:44:27'),
(2, 'pooja', 'pooja@gmail.com', NULL, '$2y$12$H04Pr/DQ9CG9d.hBCZUrs.Gw9fK7beBh7FzRg02yPm2fveAGmJH6K', NULL, '2024-12-19 02:57:56', '2024-12-19 02:57:56'),
(3, 'newuser', 'newuser@gmail.com', NULL, '$2y$12$iingErYSgpWS439G5xqLEO9NNMGNMeElk2anPuBYlu7sZWm4BLdnC', NULL, '2024-12-19 03:29:45', '2024-12-19 03:29:45'),
(4, 'Rohit Mali', 'rohitmali@gmail.com', NULL, '$2y$12$xfz5tUArZ9VgUIk8XiMsDulK9Qb9zlpoNKy5uTHnbZmcnt8vOCISC', NULL, '2024-12-20 00:22:36', '2024-12-20 00:22:36'),
(5, 'vicky mali', 'vickymali@gmail.com', NULL, '$2y$12$COkBney89EvS7kS.2jWeB.PschDqD1ub2o3WVzw33O8qGbGUgtW.m', NULL, '2024-12-20 00:26:25', '2024-12-20 00:26:25'),
(6, 'nirmala', 'nirmala@gmail.com', NULL, '$2y$12$mjtpLla5F0.Fl866D7T07exPQzXw0.FkZO0b/C4FwITIIau9khyUy', NULL, '2025-01-17 01:28:45', '2025-01-17 01:28:45');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
