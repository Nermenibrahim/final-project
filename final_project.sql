-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2024 at 08:59 PM
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
-- Database: `final_project`
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

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('nancyibrahim051@gmail.com|127.0.0.1', 'i:1;', 1726520124),
('nancyibrahim051@gmail.com|127.0.0.1:timer', 'i:1726520124;', 1726520124),
('nermenibrahim1@gmail.com|127.0.0.1', 'i:1;', 1726520172),
('nermenibrahim1@gmail.com|127.0.0.1:timer', 'i:1726520172;', 1726520172);

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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoryName` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryName`, `created_at`, `updated_at`) VALUES
(11, 'Education', '2024-09-13 10:06:08', '2024-09-20 12:59:42'),
(12, 'Finance', '2024-09-13 10:06:09', '2024-09-13 10:06:09'),
(13, 'Music', '2024-09-13 10:06:09', '2024-09-13 10:06:09'),
(14, 'Marketing', '2024-09-13 10:06:09', '2024-09-13 10:06:09'),
(15, 'Design', '2024-09-13 10:06:09', '2024-09-13 10:06:09');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Aser', 'Aser11@gmail.com', 'finding job', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dolorum accusantium aliquid aspernatur provident deserunt veniam ex, sunt minus atque officiis laboriosam voluptatum tenetur iure itaque quae vero sequi. Cumque, sit!', NULL, NULL, NULL),
(13, 'Sleem', 'Sleem20@gmail.com', 'test2', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dolorum accusantium aliquid aspernatur provident deserunt veniam ex, sunt minus atque officiis laboriosam voluptatum tenetur iure itaque quae vero sequi. Cumque, sit!', NULL, '2024-09-11 18:40:22', '2024-09-11 18:40:22'),
(14, 'Nermen', 'nermenibrahim051@gmail.com', 'test', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dolorum accusantium aliquid aspernatur provident deserunt veniam ex, sunt minus atque officiis laboriosam voluptatum tenetur iure itaque quae vero sequi. Cumque, sit!', NULL, '2024-09-11 18:40:57', '2024-09-11 18:40:57'),
(20, 'Ahmed', 'Ahmed2@example.com', 'test2', 'lorem', NULL, '2024-09-11 18:56:10', '2024-09-11 18:56:10'),
(21, 'Ahmed', 'Ahmed2@example.com', 'test2', 'nhihih', NULL, '2024-09-20 12:39:40', '2024-09-20 12:39:40');

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
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_09_04_152507_create_testimonials_table', 1),
(5, '2024_09_08_135900_create_messages_table', 1),
(6, '2024_09_08_154748_create_categories_table', 1),
(7, '2024_09_08_154830_create_topics_table', 1),
(8, '2024_09_11_201037_create_contacts_table', 2),
(15, '0001_01_01_000000_create_users_table', 3);

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
('Hg3ZJTAawwRIbJQy1euxSuUHHDHzuB2zgT4tn5oF', 14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiY25GYnhGZVIwZTVOS2RnT1RtQkJWZWlUOEFwVmtGc1dscEZ5SzRtSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90ZXN0aW1vbmlhbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTQ7czo0OiJhdXRoIjthOjE6e3M6MjE6InBhc3N3b3JkX2NvbmZpcm1lZF9hdCI7aToxNzI2ODU2ODMzO319', 1726858737);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `content` varchar(255) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `image` varchar(250) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `content`, `published`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'Nada', 'Voluptas porro quia doloribus odit. Quia velit porro unde eum velit dicta aspernatur. Facere modi est libero enim.', 1, 'c9e5b71b0a5e5b45973a26e2d882ec1e.png', NULL, '2024-09-09 10:40:52', '2024-09-11 15:51:02'),
(4, 'Ahmed', 'Incidunt quaerat voluptas ducimus enim. Voluptatem occaecati nulla accusamus velit. Enim nisi officiis suscipit. Est qui consectetur asperiores et. Nam sit ea ut possimus eaque labore necessitatibus.', 1, 'c9e5b71b0a5e5b45973a26e2d882ec1e.png', NULL, '2024-09-09 10:40:52', '2024-09-09 10:40:52'),
(7, 'Nermeen', 'Nostrum aut voluptatem officia vel quis. Dicta dolor totam est odit omnis. Aperiam corporis placeat nobis occaecati. Sint maiores qui facilis quia provident.', 1, '01a123feb814f27fb27d0a7ea33d1c4c.png', NULL, '2024-09-13 12:18:32', '2024-09-13 12:18:32'),
(31, 'Jone Due', 'Architecto dolorem laboriosam aut autem. Temporibus iusto impedit rerum modi. Facere dolor architecto molestiae voluptates eum maiores architecto.', 1, '97796ac1c4c058f23a0c300dbb58b36c.png', NULL, '2024-09-15 11:38:37', '2024-09-15 11:38:37'),
(32, 'Nada', 'Eum eum nemo sit quam qui a dolor. Mollitia veritatis minus itaque eligendi deserunt odit quam quia. Commodi et veniam ipsa numquam. Dignissimos sunt quis deleniti quibusdam et cumque.', 0, '6588bef75e1b16bf5fab7984e7a0d433.png', NULL, '2024-09-15 11:38:37', '2024-09-15 11:38:37'),
(33, 'nancy', 'Facere maxime a ut maxime. Rerum totam qui voluptates est. Quis molestias qui laborum quaerat vel.', 1, '506009d8790e90039e16096b924fb051.png', NULL, '2024-09-15 11:38:37', '2024-09-15 11:38:37'),
(34, 'mena', 'Perferendis magni doloremque qui rerum debitis odit officiis. Quaerat non fugiat enim quis laudantium est eos. Fugiat quas cumque eos eveniet sed quia et. Culpa placeat praesentium iure.', 0, '5a4010d818224737bfbe851cf04059a5.png', NULL, '2024-09-15 11:38:37', '2024-09-15 11:38:37'),
(35, 'mohamed', 'Sed eaque expedita dolor aut quae atque. Nesciunt dolore id mollitia dolores aut. Est et ut qui est omnis. Debitis neque natus eos saepe odio veritatis sint.', 1, '2b84e6c2b68f497fe85cba46f308aa76.png', NULL, '2024-09-15 11:38:37', '2024-09-15 11:38:37'),
(37, 'nour', 'Et nobis et aperiam nobis vel pariatur. Laboriosam dolor minima a eos et aliquam.', 0, '927b6cca8a92eeaa7d30eb9b5bc18a20.png', NULL, '2024-09-15 12:47:39', '2024-09-15 12:47:39'),
(38, 'esraa', 'Cumque quod aut voluptatem in est qui consequatur qui. Aut placeat laudantium eius sint voluptatem eum. Ullam saepe non molestiae similique molestiae.', 1, '711996aae99d848b53b6a81937702613.png', NULL, '2024-09-15 12:47:39', '2024-09-15 12:47:39'),
(39, 'rancy', 'Tenetur laudantium odio non ea. Sequi velit aut natus numquam unde. Aliquam officiis ducimus alias quas dolorem perferendis. Dicta laborum facilis veniam autem possimus.', 0, 'c5d34cbd60171137235b049b218b6586.png', NULL, '2024-09-15 12:47:40', '2024-09-15 12:47:40'),
(40, 'rana', 'Quia dolore in dolor aliquid ipsam voluptatum. Non natus consectetur voluptates totam ut ducimus. Commodi sit voluptatibus sapiente dolores molestiae et.', 1, '499f60b02ab6f7b4be85c2a8487aaea6.png', NULL, '2024-09-15 12:47:40', '2024-09-15 12:47:40'),
(41, 'ali ahmed', 'test', 1, '1726847664.png', NULL, '2024-09-20 12:54:24', '2024-09-20 12:54:43');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topicTitle` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `trending` tinyint(1) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image` varchar(300) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `topicTitle`, `content`, `trending`, `published`, `deleted_at`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(12, 'Web Design', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Deleniti blanditiis ullam quo sequi itaque cupiditate doloremque', 1, 1, NULL, '1726233525.png', 15, '2024-09-13 10:18:45', '2024-09-13 10:18:45'),
(13, 'Graphic', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Deleniti blanditiis ullam quo sequi itaque cupiditate doloremque dolor', 1, 1, NULL, '1726233613.png', 15, '2024-09-13 10:20:13', '2024-09-13 10:20:13'),
(14, 'Logo Design', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Deleniti blanditiis ullam quo sequi itaque cupiditate doloremque dolor', 1, 1, NULL, '1726233658.png', 15, '2024-09-13 10:20:58', '2024-09-13 10:20:58'),
(17, 'video Contact', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque, sequi assumenda. Delectus velit consequatur voluptatum voluptatem', 1, 1, NULL, '1726237311.png', 14, '2024-09-13 11:21:51', '2024-09-13 11:21:51'),
(18, 'Viral Tweet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque, sequi assumenda. Delectus velit consequatur voluptatum voluptatem fugit', 1, 1, NULL, '1726237365.png', 14, '2024-09-13 11:22:45', '2024-09-13 11:22:45'),
(19, 'Investment', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque, sequi assumenda. Delectus velit consequatur voluptatum voluptatem fugit similique, eveniet', 1, 1, NULL, '1726237428.png', 12, '2024-09-13 11:23:48', '2024-09-13 11:23:48'),
(20, 'Finance', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque, sequi assumenda. Delectus velit consequatur voluptatum voluptatem fugit', 1, 1, NULL, '1726237472.png', 12, '2024-09-13 11:24:32', '2024-09-13 11:24:32'),
(21, 'Compusing Song', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque, sequi assumenda. Delectus velit consequatur voluptatum voluptatem fugit', 1, 1, NULL, '1726237544.png', 13, '2024-09-13 11:25:44', '2024-09-13 11:25:44'),
(22, 'Online Music', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque, sequi assumenda. Delectus velit consequatur voluptatum voluptatem fugit similique, eveniet cupiditate! Quidem velit', 1, 1, NULL, '1726237577.png', 13, '2024-09-13 11:26:17', '2024-09-13 11:26:17'),
(23, 'Podcast', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque, sequi assumenda. Delectus velit consequatur voluptatum voluptatem fugit similique, eveniet cupiditat', 1, 1, NULL, '1726237628.png', 13, '2024-09-13 11:27:08', '2024-09-13 11:27:08'),
(24, 'Graduation', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque, sequi assumenda. Delectus velit consequatur voluptatum voluptatem fugit', 1, 1, NULL, '1726237697.png', 11, '2024-09-13 11:28:17', '2024-09-13 11:28:17'),
(25, 'Educator', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque, sequi assumenda. Delectus velit consequatur voluptatum voluptatem fugit', 1, 1, NULL, '1726237742.png', 11, '2024-09-13 11:29:02', '2024-09-13 11:29:02'),
(26, 'Finance2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque, sequi assumenda. Delectus velit consequatur voluptatum voluptatem fugit', 0, 1, NULL, '1726237472.png', 12, '2024-09-13 11:24:32', '2024-09-13 11:24:32'),
(27, 'Graduation', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque, sequi assumenda. Delectus velit consequatur voluptatum voluptatem fugit', 0, 1, NULL, '1726237697.png', 11, '2024-09-13 11:28:17', '2024-09-20 12:56:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `password` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `userName`, `email`, `email_verified_at`, `password`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Reece Leannon', 'Miss Crystel Cummings', 'Lori Hansen Jr.', 'jasmin.schimmel@example.com', '2024-09-20 16:00:17', '$2y$12$lI8GQ6tVFqBoCQvMhren7OrsE.jkevbF2Gz6XfDN9sx4lNOoyVi42', 1, 'L20NdTeVMX', '2024-09-15 12:47:07', '2024-09-20 13:00:17'),
(2, 'Dr  Arely', 'Prof. Jedediah', 'Kraig Turner', 'nicklaus04@example.com', '2024-09-18 15:04:22', '$2y$12$pqRQlFKl/8icXNxunn38WuPthpmX35kzXy6/wPjBf7cM1uGN.pqNK', 0, 'xQBioccGEM', '2024-09-15 12:47:07', '2024-09-18 12:04:22'),
(3, 'Bridget Feest', 'Reginald Homenick', 'Merritt Stracke', 'rozella16@example.com', '2024-09-15 15:56:20', '$2y$12$L9M.TWdDrdC3lkzfBiIvO.HVKDybzm2ndMwzK5psHAWz0w2Q29dv2', 0, 'RYBOZl1AZR', '2024-09-15 12:47:07', '2024-09-15 12:56:20'),
(4, 'Polly Blick I', 'Victoria Goldner', 'Meredith Labadie', 'kuhn.fritz@example.net', '2024-09-16 14:27:32', '$2y$12$3ckvUpw8HQPVnL4cOgsgeu48vwCWAS7qdjaEOuwYJGOr7kCPmLIWW', 0, 'koepGjMm75', '2024-09-15 12:47:07', '2024-09-16 11:27:32'),
(5, 'Leonardo Pfeffer', 'Cortney Ullrich', 'Mr. Billy Nicolas PhD', 'corwin.dorthy@example.com', '2024-09-15 12:47:07', '$2y$12$XI15MqZ9pFKBtAIArZn25.m6/rW3HluAydulZlGvNOmvpdnzk8e7m', 1, 'TMf6jqSBX2', '2024-09-15 12:47:07', '2024-09-15 12:47:07'),
(14, 'nermeen', 'ibrahim', 'nermenibrahim', 'nermenibrahim051@gmail.com', '2024-09-18 12:56:17', '$2y$12$RzXJBFCrfVep6T4oG2OteuSbZhVxaPV6cR0CoPLltuMGWFxosqp1q', 1, NULL, '2024-09-18 09:56:17', '2024-09-18 09:56:17'),
(15, 'Ammar', 'ahmed', 'ammar ahmed', 'ammar@email.com', '2024-09-18 13:15:43', '$2y$12$VGra4N5celLTtng5ydncuubxw7TVmsarW9Py.4zf.d7DpqMKi9pBu', 1, NULL, '2024-09-18 10:15:43', '2024-09-18 10:15:43'),
(17, 'Amdad', 'ahmed', 'amgad ahmed', 'amgad@email.com', '2024-09-18 15:06:04', '$2y$12$QwlAgAe9Q3W9lq7ZrTYoqOkUjJ2anNjPKPYwAVl3OHTAg7IXCJe4q', 1, NULL, '2024-09-18 12:06:04', '2024-09-18 12:06:04'),
(19, 'yasser', 'ahmed', 'yasser ahmed', 'yasser@email.com', '2024-09-20 16:02:32', '$2y$12$PNy3pMgsm5YCVAPmWgTote9Qt9CiRoEtt/JaxX/G2Gp1ld4D/U.lO', 1, NULL, '2024-09-20 13:01:17', '2024-09-20 13:02:32');

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_categoryname_unique` (`categoryName`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topics_category_id_foreign` (`category_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `topics_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
