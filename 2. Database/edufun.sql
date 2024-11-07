-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2024 at 08:41 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edufun`
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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Data Science', '2024-11-06 12:39:26', '2024-11-06 12:39:26'),
(2, 'Network Security', '2024-11-06 12:39:26', '2024-11-06 12:39:26');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `writer_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `category_id`, `writer_id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Machine Learning', 'Autem reiciendis suscipit voluptatibus. Molestiae suscipit qui molestiae. Saepe rem itaque rem laborum iure eligendi. Aut unde ipsam deserunt. Assumenda suscipit qui qui exercitationem maxime. Beatae dolorem ea ipsum aliquam. Molestiae officiis quisquam sit omnis qui harum.\n\nCupiditate odio voluptatem aut magni. Ipsa repellendus voluptatem temporibus. Et laudantium doloribus et. Praesentium vel est aliquam in impedit. At voluptas consequatur maiores adipisci nesciunt. Dolor expedita consectetur soluta dolorum omnis. Rem blanditiis deleniti quibusdam eum ex eligendi qui. In omnis ipsum aliquid enim. Rerum suscipit blanditiis enim et nulla illum. Aut exercitationem repudiandae molestiae et.', 'Machine Learning.jpg', '2024-11-06 12:39:26', '2024-11-06 12:39:26'),
(2, 1, 2, 'Deep Learning', 'Minus ut aut voluptates voluptatibus suscipit blanditiis est. Inventore aperiam ipsam cumque saepe nam. Et dicta deserunt voluptatibus. Dignissimos quo corporis et magnam. Fugiat sint et id non non magni illum. Commodi similique hic quo quia totam laborum. Omnis porro a nobis quia. Facere et blanditiis recusandae sit corporis asperiores. Quia ut at harum voluptatem. Perspiciatis quis est aut earum. Voluptas fugit omnis id sed voluptas in velit perspiciatis.\n\nCulpa error dolorem voluptatibus molestiae tenetur consequatur. Quo voluptas ipsam similique dolores voluptate perferendis. Nobis ut consequatur pariatur et alias architecto illum. Facere reiciendis dolorem veniam qui. Voluptas commodi ipsum quasi id. Omnis ducimus iure consequatur non tempore placeat ipsum. Earum itaque quia porro nisi et officia quia. Iure soluta aut eos recusandae. Iure nesciunt deserunt itaque delectus alias explicabo quo. Et optio id quas dolorem enim. Iste labore ipsa laborum ipsum in voluptate qui debitis. Harum quaerat vel cumque labore veniam. Et et voluptatem dolore et atque dolor. Aut sit dolores cum commodi quaerat cumque dolorem.', 'Deep Learning.jpg', '2024-11-06 12:39:26', '2024-11-06 12:39:26'),
(3, 1, 2, 'Natural Language Processing', 'Nemo hic aut facilis odio. Dolorem fuga ut quia. Eligendi atque id quam. Sed nam magnam est veniam. Vero assumenda aut ut dicta et cupiditate nihil. Voluptas dolores ut dicta et quo optio voluptatem eius. Ipsa voluptatem quia doloremque esse dignissimos rerum. Quas non ex saepe qui blanditiis explicabo amet. Dolores earum itaque odit qui est ad. Perspiciatis reprehenderit voluptatem sunt facilis consectetur vero. Aut laboriosam sed facere et cum deserunt vel quia.\n\nAut dicta voluptatem quisquam deleniti autem. Provident voluptas voluptas accusantium. Tenetur eius omnis unde possimus. Quo et est consequatur ex. Culpa id facere qui magni vero. Maxime earum distinctio culpa id qui aut harum rerum. Suscipit et error deserunt. Doloremque provident tenetur sint vel ea impedit et. Enim ullam architecto sit aspernatur. Aut recusandae fuga corporis excepturi magni cum porro. Est nostrum dolore itaque. Tempore quis ad impedit. Ut distinctio sint illo cupiditate quos. Consequatur nobis exercitationem eum unde in aut dolorem.', 'Natural Language Processing.jpg', '2024-11-06 12:39:26', '2024-11-06 12:39:26'),
(4, 2, 3, 'Software Security', 'Et qui a nihil. Atque sunt voluptas sunt tenetur earum voluptatibus numquam. Est ratione voluptatibus sit soluta ratione dolorem. Fuga totam sapiente nulla pariatur eos ducimus omnis. Iure ad minus tempore ab illo nam. Expedita ipsam unde libero earum quos necessitatibus ut voluptatum. Quibusdam qui magnam deleniti quis dolor quis consequatur. Distinctio quos exercitationem facere sapiente omnis labore. Ut consequatur nemo natus et deserunt. Eius porro unde doloribus quo magnam at. Ut nisi sed voluptatum ut. Voluptatem omnis soluta modi laboriosam suscipit.\n\nSuscipit sed necessitatibus error in iste in. Iusto magnam id similique quaerat. Quam et in officia consequatur. Rerum corporis debitis cum libero cum vel. Ratione ut odit consequuntur ex corporis ut aut laboriosam. Enim deserunt aliquid et. Aut nam architecto voluptas cum. Et laboriosam facere harum totam nihil id.', 'Software Security.jpg', '2024-11-06 12:39:26', '2024-11-06 12:39:26'),
(5, 2, 3, 'Network Administration', 'Vero quia qui vitae consequatur voluptate quas facere. Explicabo est iste deserunt et. Corporis sed ipsa et tempore. Aperiam ducimus rem sapiente sit aspernatur sed quia. Ex officia consequatur architecto quia debitis laudantium. Quos natus dignissimos autem ullam quod et et. Vitae nisi ad numquam voluptas consequatur est omnis sint. Vitae quia eum possimus rem accusantium. Voluptatibus labore nam qui ipsam sit. Quia quaerat minus laborum perferendis quam. Qui fuga sed accusamus a. Quia eaque error in. Consequatur sunt in accusantium quia. Ut et distinctio ratione necessitatibus sed et qui.\n\nSunt dolorem in delectus optio. Aspernatur cupiditate voluptatem ut aut consequuntur laudantium dicta tenetur. Dolor qui voluptatem officiis quia odit earum. Quis similique dolores soluta beatae optio. Excepturi eum est corporis facilis aperiam cum. Dolor et illum reprehenderit provident et suscipit in. Ratione fuga ea omnis veritatis. Qui maxime nemo omnis iusto vel est. Animi a sunt minus aut libero quis natus. Qui est impedit labore ullam placeat. Rem sit nulla fugit placeat fugiat. Qui molestiae totam amet consectetur. Dolorum aperiam ut similique ullam.', 'Network Administration.jpg', '2024-11-06 12:39:26', '2024-11-06 12:39:26'),
(6, 2, 3, 'Popular Network Technology', 'Repudiandae est tempora ut earum facere. Aut blanditiis accusantium quo beatae necessitatibus eius perferendis. Voluptatem doloribus odio architecto necessitatibus placeat. Quia fugiat nulla odit non rerum sed excepturi. Nemo quisquam iusto laudantium dolorum ipsum nihil voluptatem accusantium. Porro enim quos delectus excepturi nostrum distinctio quia. Et non sint minima dolores ea quo. Occaecati voluptatem quia eligendi eum. Et voluptas omnis at et qui culpa iusto. Atque nisi enim veritatis. Temporibus consequatur in minus culpa voluptatem.\n\nUt eos eaque nihil porro quia odit corporis. Voluptas error quia aut non aut enim et. Natus et consequatur et neque. Est numquam adipisci sequi beatae quo molestias. Voluptas facilis et deserunt dolores non soluta. Dolorem in magni quis provident quo culpa harum numquam. Vero dolorem iure accusantium.', 'Popular Network Technology.jpg', '2024-11-06 12:39:26', '2024-11-06 12:39:26');

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
(4, '2024_11_01_122949_create_categories_table', 1),
(5, '2024_11_01_123022_create_writers_table', 1),
(6, '2024_11_01_124949_create_courses_table', 1);

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
('wiZNIxbbGmEiJyWWryFaWxgVAE8PqNx2suqzrqNM', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmxtbThjWXIwZ29HOTVpTk51c0JZYWtnem1nZUlQbGJ6UzkzQ0xTSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb3Vyc2VEZXRhaWwvMyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1730921981);

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

-- --------------------------------------------------------

--
-- Table structure for table `writers`
--

CREATE TABLE `writers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `writers`
--

INSERT INTO `writers` (`id`, `category_id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Jessica Karen Suryatmi S.I.Kom', 'Asset/writer/writer-1.jpg', '2024-11-06 12:39:26', '2024-11-06 12:39:26'),
(2, 1, 'Chelsea Yulianti M.Kom.', 'Asset/writer/writer-2.jpg', '2024-11-06 12:39:26', '2024-11-06 12:39:26'),
(3, 2, 'Mila Purnawati', 'Asset/writer/writer-3.jpg', '2024-11-06 12:39:26', '2024-11-06 12:39:26');

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_category_id_foreign` (`category_id`),
  ADD KEY `courses_writer_id_foreign` (`writer_id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `writers`
--
ALTER TABLE `writers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `writers_category_id_foreign` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `writers`
--
ALTER TABLE `writers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `courses_writer_id_foreign` FOREIGN KEY (`writer_id`) REFERENCES `writers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `writers`
--
ALTER TABLE `writers`
  ADD CONSTRAINT `writers_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
