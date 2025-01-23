-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 23, 2025 at 01:12 PM
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
-- Database: `my_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `profile_photo_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name_en` varchar(255) NOT NULL,
  `brand_name_bn` varchar(255) NOT NULL,
  `brand_slug_en` varchar(255) NOT NULL,
  `brand_slug_bn` varchar(255) NOT NULL,
  `brand_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name_en`, `brand_name_bn`, `brand_slug_en`, `brand_slug_bn`, `brand_image`, `created_at`, `updated_at`) VALUES
(6, 'Aarong', 'আড়ং', 'aarong', 'আড়ং', 'upload/brand/1821756537021660.gif', NULL, NULL),
(7, 'Samsung', 'স্যামসাং', 'samsung', 'স্যামসাং', 'upload/brand/1821756607010284.png', NULL, NULL),
(8, 'Apple', 'এপল', 'apple', 'এপল', 'upload/brand/1821756717059128.png', NULL, NULL),
(9, 'Yellow', 'ইয়েলো', 'yellow', 'ইয়েলো', 'upload/brand/1821756823249608.png', NULL, NULL);

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
('admin1@example.com|127.0.0.1', 'i:1;', 1737015084),
('admin1@example.com|127.0.0.1:timer', 'i:1737015084;', 1737015084),
('gofran.inument@gmail.com|127.0.0.1', 'i:1;', 1737015062),
('gofran.inument@gmail.com|127.0.0.1:timer', 'i:1737015062;', 1737015062),
('gofran0123@gmail.com|127.0.0.1', 'i:1;', 1737015069),
('gofran0123@gmail.com|127.0.0.1:timer', 'i:1737015069;', 1737015069),
('user1@example.com|127.0.0.1', 'i:1;', 1737015093),
('user1@example.com|127.0.0.1:timer', 'i:1737015093;', 1737015093);

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
  `category_name_en` varchar(255) NOT NULL,
  `category_name_bn` varchar(255) NOT NULL,
  `category_slug_en` varchar(255) NOT NULL,
  `category_slug_bn` varchar(255) NOT NULL,
  `category_icon` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name_en`, `category_name_bn`, `category_slug_en`, `category_slug_bn`, `category_icon`, `created_at`, `updated_at`) VALUES
(8, 'Home', 'হোম', 'home', 'হোম', 'fa fa-home', NULL, NULL),
(9, 'Clothing', 'পোশাক', 'clothing', 'পোশাক', 'fa fa-female', NULL, '2025-01-23 01:21:03'),
(10, 'Electronics', 'ইলেকট্রনিক্স', 'electronics', 'ইলেকট্রনিক্স', 'fa fa-microchip', NULL, NULL),
(11, 'Health & Beauty', 'স্বাস্থ্য ও সৌন্দর্য', 'health-&-beauty', 'স্বাস্থ্য-ও-সৌন্দর্য', 'fa fa-heart', NULL, NULL),
(12, 'Watches', 'ঘড়ি', 'watches', 'ঘড়ি', 'fa fa-clock-o', NULL, NULL),
(13, 'Jewellery', 'গহনা', 'jewellery', 'গহনা', 'fa fa-asterisk', NULL, NULL),
(14, 'Shoes', 'জুতা', 'shoes', 'জুতা', 'fa fa-hand-lizard-o', NULL, NULL),
(15, 'Kids & Girls', 'বাচ্চা ও মেয়েরা', 'kids-&-girls', 'বাচ্চা-ও-মেয়েরা', 'fa fa-user-circle', NULL, NULL);

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
(4, '2025_01_03_085428_create_admins_table', 2),
(5, '2025_01_04_121002_create_personal_access_tokens_table', 2),
(6, '2025_01_10_213142_create_brands_table', 3),
(7, '2025_01_12_110933_add_role_column_to_users_table', 3),
(8, '2025_01_14_091834_create_categories_table', 4),
(9, '2025_01_14_182154_create_sub_categories_table', 5),
(10, '2025_01_16_052717_create_sub_sub_categories_table', 6),
(11, '2025_01_16_085846_create_products_table', 7),
(12, '2025_01_16_124907_create_multi_imgs_table', 8),
(13, '2025_01_22_092411_create_sliders_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `multi_imgs`
--

CREATE TABLE `multi_imgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `photo_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_imgs`
--

INSERT INTO `multi_imgs` (`id`, `product_id`, `photo_name`, `created_at`, `updated_at`) VALUES
(4, 2, 'upload/products/multi-image/1821847174378068.png', '2025-01-21 02:40:58', NULL),
(5, 2, 'upload/products/multi-image/1821847174380947.png', '2025-01-21 02:40:58', NULL),
(6, 3, 'upload/products/multi-image/1821848316857951.png', '2025-01-21 02:59:08', NULL),
(7, 3, 'upload/products/multi-image/1821848316860926.png', '2025-01-21 02:59:08', NULL),
(8, 4, 'upload/products/multi-image/1821858149920449.png', '2025-01-21 03:00:16', '2025-01-21 05:35:25'),
(9, 4, 'upload/products/multi-image/1821848388122187.png', '2025-01-21 03:00:16', NULL),
(10, 5, 'upload/products/multi-image/1821848436366862.png', '2025-01-21 03:01:02', NULL),
(11, 5, 'upload/products/multi-image/1821848436368480.png', '2025-01-21 03:01:02', NULL);

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

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subsubcategory_id` int(11) NOT NULL,
  `product_name_en` varchar(255) NOT NULL,
  `product_name_bn` varchar(255) NOT NULL,
  `product_slug_en` varchar(255) NOT NULL,
  `product_slug_bn` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_qty` varchar(255) NOT NULL,
  `product_tags_en` varchar(255) NOT NULL,
  `product_tags_bn` varchar(255) NOT NULL,
  `product_size_en` varchar(255) DEFAULT NULL,
  `product_size_bn` varchar(255) DEFAULT NULL,
  `product_color_en` varchar(255) NOT NULL,
  `product_color_bn` varchar(255) NOT NULL,
  `selling_price` varchar(255) NOT NULL,
  `discount_price` varchar(255) DEFAULT NULL,
  `short_descp_en` varchar(255) NOT NULL,
  `short_descp_bn` varchar(255) NOT NULL,
  `long_descp_en` varchar(255) NOT NULL,
  `long_descp_bn` varchar(255) NOT NULL,
  `product_thambnail` varchar(255) NOT NULL,
  `digital_file` varchar(100) DEFAULT NULL,
  `hot_deals` int(11) DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `special_offer` int(11) DEFAULT NULL,
  `special_deals` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `product_name_en`, `product_name_bn`, `product_slug_en`, `product_slug_bn`, `product_code`, `product_qty`, `product_tags_en`, `product_tags_bn`, `product_size_en`, `product_size_bn`, `product_color_en`, `product_color_bn`, `selling_price`, `discount_price`, `short_descp_en`, `short_descp_bn`, `long_descp_en`, `long_descp_bn`, `product_thambnail`, `digital_file`, `hot_deals`, `featured`, `special_offer`, `special_deals`, `status`, `created_at`, `updated_at`) VALUES
(2, 6, 3, 9, 4, 'LAMMP php config file', 'LAMMP php config file', 'lammp-php-config-file', 'LAMMP-php-config-file', '1200', '200', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Midium,Large', 'Small,Midium,Large', 'Red,Black,Amet', 'Red,Black,Large', '1000', '800', 'LAMMP php config file', 'LAMMP php config file', 'LAMMP php config file', 'LAMMP php config file', 'upload/products/thambnail/1821847174361675.png', '20250121084058.pdf', 1, 1, 1, 1, 1, '2025-01-21 02:40:58', NULL),
(3, 6, 3, 9, 5, 'Session lifetime timeout and csrf token mismatch', 'Session lifetime timeout and csrf token mismatch', 'session-lifetime-timeout-and-csrf-token-mismatch', 'Session-lifetime-timeout-and-csrf-token-mismatch', '1234567', '100', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Midium,Large', 'Small,Midium,Large', 'Red,Black,Amet', 'Red,Black,Large', '1200', '1000', 'Session lifetime timeout and csrf token mismatch', 'Session lifetime timeout and csrf token mismatch', 'Session lifetime timeout and csrf token mismatch', 'Session lifetime timeout and csrf token mismatch', 'upload/products/thambnail/1821848316854381.png', '20250121085908.pdf', 1, 1, 1, 1, 1, '2025-01-21 02:59:08', NULL),
(4, 6, 3, 9, 4, 'CSRF token mismatch', 'Session lifetime timeout and csrf token mismatch', 'csrf-token-mismatch', 'Session-lifetime-timeout-and-csrf-token-mismatch', '1234567', '100', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Midium,Large', 'Small,Midium,Large', 'Red,Black,Amet', 'Red,Black,Large', '1200', '1000', 'Session lifetime timeout and csrf token mismatch', 'Session lifetime timeout and csrf token mismatch', '<p>Session lifetime timeout and csrf token mismatch</p>', '<p>Session lifetime timeout and csrf token mismatch</p>', 'upload/products/thambnail/1821858275685038.png', '20250121090016.pdf', 1, 1, 1, 1, 1, '2025-01-21 05:18:35', '2025-01-21 05:37:25'),
(5, 7, 3, 9, 6, 'Session lifetime timeout', 'Session lifetime timeout and csrf token mismatch', 'session-lifetime-timeout', 'Session-lifetime-timeout-and-csrf-token-mismatch', '1234567', '100', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Midium,Large', 'Small,Midium,Large', 'Red,Black,Amet', 'Red,Black', '1200', '1000', 'Session lifetime timeout and csrf token mismatch', 'Session lifetime timeout and csrf token mismatch', '<p>Session lifetime&nbsp;</p>', '<p>Session lifetime timeout and csrf token mismatch</p>', 'upload/products/thambnail/1821848436349849.png', '20250121090102.pdf', NULL, NULL, NULL, 1, 0, '2025-01-21 05:17:48', '2025-01-21 05:18:00');

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
('dGbOF90DPKS88gHvWVKyMzcH41ElPTDGEEbuyv8e', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:134.0) Gecko/20100101 Firefox/134.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRHRodGxxYXVGNXpmWXA1M0FrRmdoVUNYbmc5T2pQM0FjdTJCbjhocSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6ODoibGFuZ3VhZ2UiO3M6NjoiYmFuZ2xhIjt9', 1737623237),
('SFzghXLkTEl4b7i6cULhY0p08SC3cZoTfIZEN8LD', 4, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiWDBzZ0lRdUUwazFDODJmSTBwbXpMYlhBQThmanFZRzdnbjJsMWVoQiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjQ7czo4OiJsYW5ndWFnZSI7czo2OiJiYW5nbGEiO30=', 1737629197);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_img` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_img`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'upload/slider/1821949066659274.png', 't\'s January', 'Gofran 2025 at 9:00 AM GMT+6 today!', 1, NULL, '2025-01-22 05:40:30'),
(3, 'upload/slider/1822014872574103.png', 'Microsoft 365 Copilot explained: genAI meets Office', 'Copilot AI comes to Microsoft 365 plans: Everything you need to know', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name_en` varchar(255) NOT NULL,
  `subcategory_name_bn` varchar(255) NOT NULL,
  `subcategory_slug_en` varchar(255) NOT NULL,
  `subcategory_slug_bn` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `subcategory_name_en`, `subcategory_name_bn`, `subcategory_slug_en`, `subcategory_slug_bn`, `created_at`, `updated_at`) VALUES
(12, 9, 'Men', 'পুরুষ', 'men', 'পুরুষ', NULL, NULL),
(13, 9, 'Women', 'নারী', 'women', 'নারী', NULL, NULL),
(14, 9, 'Boys', 'ছেলেদের', 'boys', 'ছেলেদের', NULL, NULL),
(15, 9, 'Girls', 'মেয়েদের', 'girls', 'মেয়েদের', NULL, NULL),
(16, 10, 'Laptops', 'ল্যাপটপ', 'laptops', 'ল্যাপটপ', NULL, NULL),
(17, 10, 'Desktops', 'ডেস্কটপ', 'desktops', 'ডেস্কটপ', NULL, NULL),
(18, 10, 'Cameras', 'ক্যামেরা', 'cameras', 'ক্যামেরা', NULL, NULL),
(19, 10, 'Mobile Phones', 'মোবাইল ফোন', 'mobile-phones', 'মোবাইল-ফোন', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_categories`
--

CREATE TABLE `sub_sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subsubcategory_name_en` varchar(255) NOT NULL,
  `subsubcategory_name_bn` varchar(255) NOT NULL,
  `subsubcategory_slug_en` varchar(255) NOT NULL,
  `subsubcategory_slug_bn` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_sub_categories`
--

INSERT INTO `sub_sub_categories` (`id`, `category_id`, `subcategory_id`, `subsubcategory_name_en`, `subsubcategory_name_bn`, `subsubcategory_slug_en`, `subsubcategory_slug_bn`, `created_at`, `updated_at`) VALUES
(7, 9, 12, 'Dresses', 'পোশাক', 'dresses', 'পোশাক', NULL, NULL),
(8, 9, 12, 'Shoes', 'জুতা', 'shoes', 'জুতা', NULL, NULL),
(9, 9, 12, 'Jackets', 'জ্যাকেট', 'jackets', 'জ্যাকেট', NULL, NULL),
(10, 9, 12, 'Sunglasses', 'সানগ্লাস', 'sunglasses', 'সানগ্লাস', NULL, NULL),
(11, 9, 12, 'Sport Wear', 'ক্রীড়া পরিধান', 'sport-wear', 'ক্রীড়া-পরিধান', NULL, NULL),
(12, 9, 12, 'Blazers', 'ব্লেজার', 'blazers', 'ব্লেজার', NULL, NULL),
(13, 9, 12, 'Shirts', 'শার্ট', 'shirts', 'শার্ট', NULL, NULL),
(14, 9, 13, 'Handbags', 'হ্যান্ডব্যাগ', 'handbags', 'হ্যান্ডব্যাগ', NULL, NULL),
(15, 9, 13, 'Jewellery', 'গহনা', 'jewellery', 'গহনা', NULL, NULL),
(16, 9, 13, 'Swimwear', 'সাঁতারের পোষাক', 'swimwear', 'সাঁতারের-পোষাক', NULL, NULL),
(17, 9, 13, 'Tops', 'টপস', 'tops', 'টপস', NULL, NULL),
(18, 9, 13, 'Flats', 'ফ্ল্যাট', 'flats', 'ফ্ল্যাট', NULL, NULL),
(19, 9, 13, 'Shoes', 'জুতা', 'shoes', 'জুতা', NULL, NULL),
(20, 9, 13, 'Winter Wear', 'শীতের পোশাক', 'winter-wear', 'শীতের-পোশাক', NULL, NULL),
(21, 9, 14, 'Toys & Games', 'খেলনা এবং গেম', 'toys-&-games', 'খেলনা-এবং-গেম', NULL, NULL),
(22, 9, 14, 'Jeans', 'জিন্স', 'jeans', 'জিন্স', NULL, NULL),
(23, 9, 14, 'Shirts', 'শার্ট', 'shirts', 'শার্ট', NULL, NULL),
(24, 9, 14, 'Shoes', 'জুতা', 'shoes', 'জুতা', NULL, NULL),
(25, 9, 14, 'School Bags', 'স্কুল ব্যাগ', 'school-bags', 'স্কুল-ব্যাগ', NULL, NULL),
(26, 9, 14, 'Lunch Box', 'লাঞ্চ বক্স', 'lunch-box', 'লাঞ্চ-বক্স', NULL, NULL),
(27, 9, 14, 'Footwear', 'পাদুকা', 'footwear', 'পাদুকা', NULL, NULL),
(28, 9, 15, 'Sandals', 'পাদুকা', 'sandals', 'পাদুকা', NULL, NULL),
(29, 9, 15, 'Shorts', 'শর্টস', 'shorts', 'শর্টস', NULL, NULL),
(30, 9, 15, 'Dresses', 'পোশাক', 'dresses', 'পোশাক', NULL, NULL),
(31, 9, 15, 'Jewellery', 'গহনা', 'jewellery', 'গহনা', NULL, NULL),
(32, 9, 15, 'Bags', 'ব্যাগ', 'bags', 'ব্যাগ', NULL, NULL),
(33, 9, 15, 'Night Dress', 'রাতের পোশাক', 'night-dress', 'রাতের-পোশাক', NULL, NULL),
(34, 9, 15, 'Swim Wear', 'সাঁতারের পোষাক', 'swim-wear', 'সাঁতারের-পোষাক', NULL, NULL),
(35, 10, 16, 'Gaming', 'গেমিং', 'gaming', 'গেমিং', NULL, NULL),
(36, 10, 16, 'Laptop Skins', 'ল্যাপটপ স্কিনস', 'laptop-skins', 'ল্যাপটপ-স্কিনস', NULL, NULL),
(37, 10, 16, 'Apple', 'আপেল', 'apple', 'আপেল', NULL, NULL),
(38, 10, 16, 'Dell', 'ডেল', 'dell', 'ডেল', NULL, NULL),
(39, 10, 16, 'Lenovo', 'লেনোভো', 'lenovo', 'লেনোভো', NULL, NULL),
(40, 10, 16, 'Microsoft', 'মাইক্রোসফট', 'microsoft', 'মাইক্রোসফট', NULL, NULL),
(41, 10, 16, 'Asus', 'আসুস', 'asus', 'আসুস', NULL, NULL),
(42, 10, 16, 'Adapters', 'অ্যাডাপ্টার', 'adapters', 'অ্যাডাপ্টার', NULL, NULL),
(43, 10, 16, 'Batteries', 'ব্যাটারি', 'batteries', 'ব্যাটারি', NULL, NULL),
(44, 10, 16, 'Cooling Pads', 'কুলিং প্যাড', 'cooling-pads', 'কুলিং-প্যাড', NULL, NULL),
(45, 10, 17, 'Routers & Modems', 'রাউটার এবং মডেম', 'routers-&-modems', 'রাউটার-এবং-মডেম', NULL, NULL),
(46, 10, 17, 'CPUs, Processors', 'সিপিইউ, প্রসেসর', 'cpus,-processors', 'সিপিইউ,-প্রসেসর', NULL, NULL),
(47, 10, 17, 'PC Gaming Store', 'পিসি গেমিং স্টোর', 'pc-gaming-store', 'পিসি-গেমিং-স্টোর', NULL, NULL),
(48, 10, 17, 'Graphics Cards', 'গ্রাফিক্স কার্ড', 'graphics-cards', 'গ্রাফিক্স-কার্ড', NULL, NULL),
(49, 10, 17, 'Components', 'উপাদান', 'components', 'উপাদান', NULL, NULL),
(50, 10, 17, 'Webcam', 'ওয়েবক্যাম', 'webcam', 'ওয়েবক্যাম', NULL, NULL),
(51, 10, 17, 'Memory (RAM)', 'মেমরি (RAM)', 'memory-(ram)', 'মেমরি-(RAM)', NULL, NULL),
(52, 10, 17, 'Motherboards', 'মাদারবোর্ড', 'motherboards', 'মাদারবোর্ড', NULL, NULL),
(53, 10, 17, 'Keyboards', 'কীবোর্ড', 'keyboards', 'কীবোর্ড', NULL, NULL),
(54, 10, 17, 'Headphones', 'হেডফোন', 'headphones', 'হেডফোন', NULL, NULL),
(55, 10, 18, 'Accessories', 'আনুষাঙ্গিক', 'accessories', 'আনুষাঙ্গিক', NULL, NULL),
(56, 10, 18, 'Binoculars', 'বাইনোকুলার', 'binoculars', 'বাইনোকুলার', NULL, NULL),
(57, 10, 18, 'Telescopes', 'টেলিস্কোপ', 'telescopes', 'টেলিস্কোপ', NULL, NULL),
(58, 10, 18, 'Camcorders', 'ক্যামকর্ডার', 'camcorders', 'ক্যামকর্ডার', NULL, NULL),
(59, 10, 18, 'Digital', 'ডিজিটাল', 'digital', 'ডিজিটাল', NULL, NULL),
(60, 10, 18, 'Film Cameras', 'ফিল্ম ক্যামেরা', 'film-cameras', 'ফিল্ম-ক্যামেরা', NULL, NULL),
(61, 10, 18, 'Flashes', 'ঝলকানি', 'flashes', 'ঝলকানি', NULL, NULL),
(62, 10, 18, 'Lenses', 'লেন্স', 'lenses', 'লেন্স', NULL, NULL),
(63, 10, 18, 'Surveillance', 'নজরদারি', 'surveillance', 'নজরদারি', NULL, NULL),
(64, 10, 18, 'Tripods', 'ট্রাইপডস', 'tripods', 'ট্রাইপডস', NULL, NULL),
(65, 10, 19, 'Apple', 'আপেল', 'apple', 'আপেল', NULL, NULL),
(66, 10, 19, 'Samsung', 'স্যামসাং', 'samsung', 'স্যামসাং', NULL, NULL),
(67, 10, 19, 'Lenovo', 'লেনোভো', 'lenovo', 'লেনোভো', NULL, NULL),
(68, 10, 19, 'Motorola', 'মটোরোলা', 'motorola', 'মটোরোলা', NULL, NULL),
(69, 10, 19, 'LeEco', 'LeEco', 'leeco', 'LeEco', NULL, NULL),
(70, 10, 19, 'Asus', 'আসুস', 'asus', 'আসুস', NULL, NULL),
(71, 10, 19, 'Acer', 'এসার', 'acer', 'এসার', NULL, NULL),
(72, 10, 19, 'Accessories', 'আনুষাঙ্গিক', 'accessories', 'আনুষাঙ্গিক', NULL, NULL),
(73, 10, 19, 'Headphones', 'হেডফোন', 'headphones', 'হেডফোন', NULL, NULL),
(74, 10, 19, 'Memory Cards', 'মেমরি কার্ড', 'memory-cards', 'মেমরি-কার্ড', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `profile_photo_path` varchar(100) DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `profile_photo_path`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Md Gofran Khan', 'gofran0123@gmail.com', NULL, NULL, '$2y$12$DhsQ2He6dLecvMB/AdvLFeh.fPEtDl4Z7YrLaxNKJC7I84HkjmZRS', NULL, 'user', NULL, '2025-01-04 23:32:42', '2025-01-04 23:32:42'),
(2, 'My Name Is Khan', 'gofran01234@gmail.com', NULL, NULL, '$2y$12$ZTURSGCIesXVmV4dsEaWxejojZMgH1.of.qhiudzpz0A9/nXUQ9WO', NULL, 'user', NULL, '2025-01-06 04:11:54', '2025-01-06 04:11:54'),
(3, 'I am at bKash Office', 'gofran01235@gmail.com', NULL, NULL, '$2y$12$R4KGrBMGcKN.pu5Y4pkG/.lxobD1hEGCigb/fUnrdup2EYa5b4T3G', NULL, 'user', NULL, '2025-01-06 04:16:49', '2025-01-06 04:16:49'),
(4, 'Admin', 'admin@example.com', '01812000000', NULL, '$2y$12$U7B33czInd4mozFOaep/TevzqYdN8FeWMfDO2rodgK4b7MLiSO/qm', NULL, 'admin', NULL, '2025-01-12 05:26:15', '2025-01-12 05:26:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
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
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
