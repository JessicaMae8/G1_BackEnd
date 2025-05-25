-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 25, 2025 at 05:32 PM
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
-- Database: `laravel`
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
(4, '2025_05_20_165658_create_personal_access_tokens_table', 1);

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
(1, 'App\\Models\\User', 1, 'auth_token', 'ca3b06198b8a0a1c6d64a5d538d7b68fe15d86bd52a324b6cda8bf1a8f571478', '[\"*\"]', NULL, NULL, '2025-05-21 20:50:05', '2025-05-21 20:50:05'),
(2, 'App\\Models\\User', 1, 'auth_token', '02f326ed042f11856d35cb78b19753adf4bcddf3fb819d1deca68addf87256a3', '[\"*\"]', NULL, NULL, '2025-05-21 20:50:27', '2025-05-21 20:50:27'),
(3, 'App\\Models\\User', 1, 'auth_token', '9f8515531da1239c8466151955cf0bb6c65493f34e6efd1cf56d11790bb9ac27', '[\"*\"]', NULL, NULL, '2025-05-21 21:02:34', '2025-05-21 21:02:34'),
(4, 'App\\Models\\User', 1, 'auth_token', '81d9d6dd85494fc6e4f0f0f97ac744b5fb3f4eafc7e98329ff9cdc80f5f5e530', '[\"*\"]', NULL, NULL, '2025-05-21 21:10:54', '2025-05-21 21:10:54'),
(5, 'App\\Models\\User', 1, 'auth_token', '37fe710280f6e580f287a11aa25bb948218255743ae84c2a5a575e0c34064c0a', '[\"*\"]', NULL, NULL, '2025-05-21 21:11:57', '2025-05-21 21:11:57'),
(6, 'App\\Models\\User', 1, 'auth_token', 'e13b9c1fe55d13c313eca406efd12f0a4df746ad9708838ff19c6f56a7d65ea0', '[\"*\"]', NULL, NULL, '2025-05-21 21:14:36', '2025-05-21 21:14:36'),
(7, 'App\\Models\\User', 1, 'auth_token', 'c13e0d8329c27e62306e9f4f1298ca650165f4480e430dcbd105cef86ea1cbd4', '[\"*\"]', NULL, NULL, '2025-05-22 04:41:09', '2025-05-22 04:41:09'),
(8, 'App\\Models\\User', 2, 'auth_token', '4b5df7709d37203142baa14b65067a4098682f7b63d171b897c952ccf270f1da', '[\"*\"]', NULL, NULL, '2025-05-22 04:48:53', '2025-05-22 04:48:53'),
(9, 'App\\Models\\User', 2, 'auth_token', '4dcb17d92aa663ba13814976474d8ec60105cd28bd065d8fd6c9be2ab2af6090', '[\"*\"]', NULL, NULL, '2025-05-22 05:02:44', '2025-05-22 05:02:44'),
(10, 'App\\Models\\User', 2, 'auth_token', '8be5183d234c583037a13edfee3fe26f779169571a6b8b4706d56aa41fd63bdc', '[\"*\"]', NULL, NULL, '2025-05-22 05:04:27', '2025-05-22 05:04:27'),
(11, 'App\\Models\\User', 2, 'auth_token', 'be1332dc316d38510c61b819595c1b84e877e8d8988f38d0595c4b5fd1b1f478', '[\"*\"]', NULL, NULL, '2025-05-22 05:07:45', '2025-05-22 05:07:45'),
(12, 'App\\Models\\User', 2, 'auth_token', 'df6103f7acde761ea8d7960f7ebe58e7149b39f9440ddb715c0d73b4815c5217', '[\"*\"]', NULL, NULL, '2025-05-22 05:10:26', '2025-05-22 05:10:26'),
(13, 'App\\Models\\User', 2, 'auth_token', 'e0dfead61743f1b9c1f7baaeaf9d6b81d096d4ca8ef01a9f552543e6761fb180', '[\"*\"]', NULL, NULL, '2025-05-22 05:15:56', '2025-05-22 05:15:56'),
(14, 'App\\Models\\User', 2, 'auth_token', '0dc4ace0f49744ce2e217723e1fe39c8757bec5e3c621a2731cc491675e4978a', '[\"*\"]', NULL, NULL, '2025-05-22 05:16:06', '2025-05-22 05:16:06'),
(15, 'App\\Models\\User', 2, 'auth_token', 'b605dca267f74f2ea03800bb131dd4d1334aec66970f0f8663435f2fcf8d2b7e', '[\"*\"]', NULL, NULL, '2025-05-22 05:17:27', '2025-05-22 05:17:27'),
(16, 'App\\Models\\User', 2, 'auth_token', 'b52af1932c0f935e184ca7cda98f62be9d7ff3b25c3cb6a4d7cf203035f24ab8', '[\"*\"]', '2025-05-22 05:19:45', NULL, '2025-05-22 05:19:42', '2025-05-22 05:19:45'),
(17, 'App\\Models\\User', 2, 'auth_token', '5d1808ead713f9bb470491b6a8caa0a4847ce79ab61154f675b2f7b4ae3a85f9', '[\"*\"]', '2025-05-22 05:21:14', NULL, '2025-05-22 05:21:12', '2025-05-22 05:21:14'),
(18, 'App\\Models\\User', 1, 'auth_token', '0c9c6db6dfff7c880fdad6e45ebdc343a63e642ab8e662a2d55d0925e5d41613', '[\"*\"]', '2025-05-22 05:21:51', NULL, '2025-05-22 05:21:49', '2025-05-22 05:21:51'),
(19, 'App\\Models\\User', 1, 'auth_token', 'c9aeb2659bf51a35646f2794696abf2e09ae6770773c3b82ddf71af02985dfe6', '[\"*\"]', NULL, NULL, '2025-05-22 05:54:15', '2025-05-22 05:54:15'),
(20, 'App\\Models\\User', 1, 'auth_token', '0524d26335558141d948c0e5a2e34766c3fa2125130670346ab192835173f31c', '[\"*\"]', NULL, NULL, '2025-05-22 05:54:21', '2025-05-22 05:54:21'),
(21, 'App\\Models\\User', 2, 'auth_token', 'd2c42cba8703694c9ef39c3fa2bcd293937718a71474117d3c02a8556778423b', '[\"*\"]', NULL, NULL, '2025-05-22 05:54:29', '2025-05-22 05:54:29'),
(22, 'App\\Models\\User', 2, 'auth_token', '27fe42081b6680e2492c81d0126d0a112ae6b80fd64eace3bee140106e100afa', '[\"*\"]', NULL, NULL, '2025-05-22 05:54:38', '2025-05-22 05:54:38'),
(23, 'App\\Models\\User', 2, 'auth_token', '72fe7250149f302044413c1154538b93a5b1cd761f8a76f6fa5cc0579f35404e', '[\"*\"]', NULL, NULL, '2025-05-22 05:55:12', '2025-05-22 05:55:12'),
(24, 'App\\Models\\User', 2, 'auth_token', '2a79fc6bc1a6bce67504166b4860b5a08cead929609ed5d8a0b91423f9ca7449', '[\"*\"]', NULL, NULL, '2025-05-22 05:55:16', '2025-05-22 05:55:16'),
(25, 'App\\Models\\User', 4, 'auth_token', 'b20044a399fe5ed8ecf86058cef2a97527f85a54effd5f11f4da8d9377e99a36', '[\"*\"]', NULL, NULL, '2025-05-22 05:57:57', '2025-05-22 05:57:57'),
(26, 'App\\Models\\User', 4, 'auth_token', '07a53c263357526e667d877d83d90d655a08397cb3f7196553a62b0112416ee8', '[\"*\"]', '2025-05-22 05:59:05', NULL, '2025-05-22 05:59:03', '2025-05-22 05:59:05'),
(27, 'App\\Models\\User', 4, 'auth_token', '2d560d85ddae372f2f4022b62ecb4f2a7b50f165164f99900c0fb1d7989aa278', '[\"*\"]', '2025-05-22 06:02:56', NULL, '2025-05-22 06:02:54', '2025-05-22 06:02:56'),
(28, 'App\\Models\\User', 4, 'auth_token', '4d97962b2cba832f8cac8813f57aa77b26eaf5776e56a9c593d335fcd9b5b801', '[\"*\"]', '2025-05-22 06:09:02', NULL, '2025-05-22 06:07:42', '2025-05-22 06:09:02'),
(29, 'App\\Models\\User', 4, 'auth_token', '05b9d2a58831498a6e35df6777d9db960cd951c57bf7687057684f1b5b7d6607', '[\"*\"]', '2025-05-22 06:57:34', NULL, '2025-05-22 06:57:32', '2025-05-22 06:57:34'),
(30, 'App\\Models\\User', 4, 'auth_token', 'd02518b4c2a7c5df1f2e7d6cb7de8a4225317352945e5bad1f0f7718221e250b', '[\"*\"]', '2025-05-22 07:00:08', NULL, '2025-05-22 07:00:02', '2025-05-22 07:00:08'),
(31, 'App\\Models\\User', 4, 'auth_token', 'cd951a7cc4d0eb273c1110f4280fbf7799f3cc9e2209935d0df7ffdf073d9c8e', '[\"*\"]', '2025-05-22 07:02:37', NULL, '2025-05-22 07:02:35', '2025-05-22 07:02:37'),
(32, 'App\\Models\\User', 4, 'auth_token', '9f0a68923ec1799a10397f4e09a1cb1654c46e4f90c39c24b903353a4aaac0c7', '[\"*\"]', '2025-05-22 07:11:23', NULL, '2025-05-22 07:09:15', '2025-05-22 07:11:23'),
(33, 'App\\Models\\User', 4, 'auth_token', '45c82ce36ae8dde238f7a2acf0cbbe60530b67968c20319f9f92ba929288de91', '[\"*\"]', '2025-05-22 07:15:04', NULL, '2025-05-22 07:11:50', '2025-05-22 07:15:04'),
(34, 'App\\Models\\User', 4, 'auth_token', '8b9822625ed2165ff1459545195f20147082a01fef10a24b0dd153f49ecaaf97', '[\"*\"]', '2025-05-22 07:19:20', NULL, '2025-05-22 07:19:19', '2025-05-22 07:19:20'),
(35, 'App\\Models\\User', 4, 'auth_token', '481094f3e24276e850bff986c4c612ae22ddca939064738a16e040ca8e4092f8', '[\"*\"]', '2025-05-22 07:20:51', NULL, '2025-05-22 07:20:49', '2025-05-22 07:20:51'),
(36, 'App\\Models\\User', 4, 'auth_token', 'c507b4886505ce1ba32ba0d6253834523bd197269b21a137b373f75cf56bd25b', '[\"*\"]', '2025-05-22 07:52:29', NULL, '2025-05-22 07:22:42', '2025-05-22 07:52:29'),
(37, 'App\\Models\\User', 4, 'auth_token', '5d78a8ee34b19d9ddff8c5037dfacc15a0c1febcbbc41ddd4e645e80e42efcc8', '[\"*\"]', '2025-05-22 07:57:41', NULL, '2025-05-22 07:52:36', '2025-05-22 07:57:41'),
(38, 'App\\Models\\User', 4, 'auth_token', '202dbfb69eb48cf5ce51152d53a0203c55d3a8915944bb7c775dd4fe0a858bc2', '[\"*\"]', '2025-05-22 19:47:56', NULL, '2025-05-22 10:50:57', '2025-05-22 19:47:56');

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
(1, 'johnloyd', 'john@gmail.com', NULL, '$2y$12$zB3JzLMMrW4ZH2aWf8iNm.QHp0Nln3jxTvt0LEeHKPVDt1oOCYziW', NULL, '2025-05-21 20:49:57', '2025-05-21 20:49:57'),
(2, 'JOHN LOYD', 'sifuewifheu@gamil.com', NULL, '$2y$12$RVhGiOPLurwDGBRSJ4mtg.RkHc9GC00ogzdVFXWLC40Fi4tfTMpxO', NULL, '2025-05-22 04:48:38', '2025-05-22 04:48:38'),
(4, 'dehfeffhuf', 'kfgmfdgbkgfmg@gmail.com', NULL, '$2y$12$v4JaNDNZhxGtAo/AYN.33uzpQci8yZSJZEKhyD7DbUq2ynJeV8h8e', NULL, '2025-05-22 05:57:50', '2025-05-22 05:57:50');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
