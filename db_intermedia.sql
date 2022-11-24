-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 24, 2022 at 02:26 PM
-- Server version: 5.7.33
-- PHP Version: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_laravel_jwt`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_24_071244_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(7, 'eyJpdiI6IlhNNVV3U09zVzBsclUyTXZ5dGdKWmc9PSIsInZhbHVlIjoiODBsdmNGdUNITTgrdUQzTStMdjdqQT09IiwibWFjIjoiOWUyMDA0N2M1YjA3MmNjOGExOTk1ZjhkYTVjNDgyYTEwZWVmODIxZGE5Y2M0YjVlZTNhZDQ5NDBkMTc3YWFmYiIsInRhZyI6IiJ9', 'eyJpdiI6IkNwYlNiRVBQY3drY3NvZkNrcVJhNlE9PSIsInZhbHVlIjoiSVNDZGVjOUhUS0pOT0VNN0J0WkFrODJwZjNsd3RLRzJIVjgvdDlIck8yST0iLCJtYWMiOiI2ZTY3NWNiMzRkNjFiZGNjYTE5OTcwY2EwZGI1ZGE1YmJiZjMzNmM2NDRiYjFhMzc3MjEzMjZiZjU2ZjUwMTBkIiwidGFnIjoiIn0=', '2022-11-24 03:59:52', '2022-11-24 03:59:52'),
(8, 'eyJpdiI6IjlLRnhZbW9lU3lTMTdKaU1MNTAxcFE9PSIsInZhbHVlIjoiYTF3bi9pR0lGRlFENXRYaERKSWVtUT09IiwibWFjIjoiYTUzYWNhMzEzMTI5ODQ0MjY1ZTNmNTFmMWZlMThmMzgzYTkxNGNhNjY4YjRkMDc3YThlYzEzOTc0MjE3MzczMSIsInRhZyI6IiJ9', 'eyJpdiI6Imx2ZTZuMHZvYzF6eGxtL1ZGYWwreEE9PSIsInZhbHVlIjoiSzN5Ym1hU2JkVXZXQjlsMFgyQk0vMHQzMitsSW9RZ0gveXdhL3EvS2tycz0iLCJtYWMiOiJlZWI0NzhkYWUxNTM2OGQ4ODVkY2I1MzE0MDE1Y2Q2NjEzMTJmOTNiOTcxY2U2OTg1MTc3NTA0NTI5ODlhMmRkIiwidGFnIjoiIn0=', '2022-11-24 07:21:12', '2022-11-24 07:21:12'),
(9, 'eyJpdiI6IjJDUEFXZ1NvM1FtUlhuelhVc3RkdGc9PSIsInZhbHVlIjoiMGZ0ZUR6RWxqOFdSNVhEOEZYWFh5dz09IiwibWFjIjoiYzZmNGE0ZDNhNGQ3ODA2MjM1MTA1ZDUxZWE0ZDA0OGQ3YjdjM2ZmZWFlYmFiYTY4MThjOTJkNzg3YjBlYWY1MiIsInRhZyI6IiJ9', 'eyJpdiI6IkhmV2xFbGorQ0R6UVFlU1U3WHpvYUE9PSIsInZhbHVlIjoieWdoQVJrVmJZOW5aaENEcGQvRUY3K3k4OVVlMEFtZzF2eTRNZWo0LzF1VT0iLCJtYWMiOiJiOWY1MWVkMDU5ZjI5ZjlhMTI0MWJjZDQzMjQ2YWRlMzk4NGEyMjQ2ZDBmM2E0MTUxYjA5Yjc3YWI2NDMwNWEzIiwidGFnIjoiIn0=', '2022-11-24 07:21:36', '2022-11-24 07:21:36'),
(10, 'eyJpdiI6IkozT2RteWlBUHZaVVpCQ1R1WGpZQlE9PSIsInZhbHVlIjoiejVvOXBsVXUyQ2pPMVkwR2ZqbHdsY08zclNjZGpEcmkrcS9pRXZ3eDduVT0iLCJtYWMiOiJhOWYzMGQxODRhYmIwMTE5ZTAzZTA5YjM3ODY4MmZkNWM4Mzk0MDA4OGVhMTQ0NGI3ZTY4NzAwZDEwYWQwZGNiIiwidGFnIjoiIn0=', 'eyJpdiI6Im0zZHU4N3U5WXE1ZytidE5rNWtJZHc9PSIsInZhbHVlIjoiRVRaWjlZdUhpZEVqR0Foa2xVR1VSNjNJeGlJeFV5TU9DYXJYMlQ1WGl5Yz0iLCJtYWMiOiIzYzNkZmRhYzFiZjU4YWEyZWNhMmFmYzYwYTU5N2NkMjlkNTczMjU5YzEyMGYyY2RhOWJlZWNiMzk3NWI2OGNhIiwidGFnIjoiIn0=', '2022-11-24 07:21:42', '2022-11-24 07:21:42'),
(11, 'eyJpdiI6ImpGYmN3ZUE0ZnREbno2aGhFZUphVlE9PSIsInZhbHVlIjoidW9FNGRRKy9YRG8xZzVWNWpWdngyN1k2WjBCTzZocnFrdmpkN04vT2llQT0iLCJtYWMiOiI2YmNlOWEwNmZlOTM4OTE4M2Y0YjY4ZjgxYjRkNmMwNDczYTExNmZhNjllNzE4YzgyOWFhYWFkM2YxNzE5YjBmIiwidGFnIjoiIn0=', 'eyJpdiI6Ijl4UHo3VTd0K0FQUG9IMUJqeGtRUEE9PSIsInZhbHVlIjoiMkNHK0VRR1dHR0JPRHdaQUZLMS9SRWRid2p3N09scXN2ZTRDUktZNW1jND0iLCJtYWMiOiI4NDc1NTQxYzZkNTk2NmNjZTgzY2VkNmU3MWViMmY5ZmI4M2ZhYzlhMjUwMTU3NzAxYjU0ZGMxMGJhMTI5ZjgwIiwidGFnIjoiIn0=', '2022-11-24 07:21:45', '2022-11-24 07:21:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@mail.com', NULL, '$2y$10$r.moTHbQiuk1k0/UuhLUBexePDoN6Fl/rinMLZKDWV43yjwfnOOw2', NULL, '2022-11-24 04:31:13', '2022-11-24 04:31:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
