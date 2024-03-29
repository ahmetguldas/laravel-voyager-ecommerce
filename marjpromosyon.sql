-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 22 Kas 2019, 15:56:19
-- Sunucu sürümü: 5.7.26
-- PHP Sürümü: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `marjpromosyon`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`, `image`, `description`) VALUES
(3, NULL, 1, 'deneme kategori', 'deneme-kategori', '2019-11-20 12:40:51', '2019-11-20 12:40:51', 'categories\\November2019\\IPS1zhoBCjZuUr7JfFl3.jpg', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE IF NOT EXISTS `data_rows` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'parent_id', 'select_dropdown', 'Ana Kategori', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- Yok --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 3),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 4),
(25, 4, 'name', 'text', 'Ad', 1, 1, 1, 1, 1, 1, '{}', 5),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 7),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 8),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'name', 'text', 'Başlık', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|min:5\",\"messages\":{\"required\":\":attribute bo\\u015f b\\u0131rak\\u0131lmamal\\u0131d\\u0131r.\",\"min\":\":attribute alan\\u0131 :max de\\u011ferde olmal\\u0131d\\u0131r.\"}}}', 3),
(58, 7, 'description', 'rich_text_box', 'Açıklama', 0, 0, 1, 1, 1, 1, '{}', 4),
(59, 7, 'price', 'number', 'Fiyat', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|min:1\",\"messages\":{\"required\":\":attribute bo\\u015f b\\u0131rak\\u0131lmamal\\u0131d\\u0131r.\",\"max\":\":attribute alan\\u0131 :max de\\u011ferde olmal\\u0131d\\u0131r.\"}}}', 5),
(60, 7, 'image', 'image', 'Resim', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 2),
(61, 7, 'created_at', 'timestamp', 'Oluşturma Tarihi', 0, 1, 1, 1, 0, 1, '{}', 8),
(62, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(63, 7, 'KDV', 'select_dropdown', 'KDV', 0, 0, 1, 1, 1, 1, '{\"default\":\"18\",\"options\":{\"8\":\"%8\",\"18\":\"%18\"}}', 6),
(65, 7, 'seo', 'text', 'Seo URL', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 7),
(66, 7, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"1\",\"options\":{\"0\":\"Kapal\\u0131\",\"1\":\"A\\u00e7\\u0131k\"}}', 10),
(67, 4, 'image', 'image', 'Resim', 1, 1, 1, 1, 1, 1, '{}', 2),
(68, 4, 'description', 'text', 'Açıklama', 0, 1, 1, 1, 1, 1, '{}', 6),
(69, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(70, 12, 'popup_name', 'text', 'Başlık', 0, 1, 1, 1, 1, 1, '{}', 3),
(71, 12, 'popup_image', 'image', 'Resim', 0, 1, 1, 1, 1, 1, '{}', 2),
(72, 12, 'popup_isactive', 'checkbox', 'Durum', 0, 1, 1, 1, 1, 1, '{\"default\":\"1\",\"options\":{\"0\":\"Kapal\\u0131\",\"1\":\"A\\u00e7\\u0131k\"}}', 5),
(73, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 0, 0, 0, 0, '{}', 6),
(74, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(75, 12, 'popup_url', 'text', 'URL', 0, 1, 1, 1, 1, 1, '{}', 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `data_types`
--

DROP TABLE IF EXISTS `data_types`;
CREATE TABLE IF NOT EXISTS `data_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-11-17 06:20:18', '2019-11-17 06:20:18'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-11-17 06:20:18', '2019-11-17 06:20:18'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-11-17 06:20:18', '2019-11-17 06:20:18'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-11-17 06:20:20', '2019-11-21 06:53:37'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(7, 'products', 'products', 'Ürün', 'Ürünler', 'voyager-basket', 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-11-18 13:26:00', '2019-11-21 10:53:45'),
(11, 'popup', 'popup', 'Popup', 'Popups', NULL, 'App\\Popup', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-11-21 05:38:59', '2019-11-21 05:38:59'),
(12, 'popups', 'popups', 'Popup', 'Popups', 'voyager-window-list', 'App\\Popup', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-11-21 05:48:01', '2019-11-21 06:49:04'),
(13, 'slider', 'slider', 'Slider', 'Sliders', NULL, 'App\\Slider', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-11-22 07:23:59', '2019-11-22 07:23:59');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-11-17 06:20:19', '2019-11-17 06:20:19');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-11-17 06:20:19', '2019-11-17 06:20:19', 'voyager.dashboard', NULL),
(2, 1, 'Galeri', '', '_self', 'voyager-images', '#000000', NULL, 5, '2019-11-17 06:20:19', '2019-11-18 13:33:07', 'voyager.media.index', 'null'),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 8, '2019-11-17 06:20:19', '2019-11-18 13:33:18', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 7, '2019-11-17 06:20:19', '2019-11-18 13:33:18', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 10, '2019-11-17 06:20:19', '2019-11-21 05:49:04', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2019-11-17 06:20:19', '2019-11-18 13:27:50', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2019-11-17 06:20:19', '2019-11-18 13:27:50', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-11-17 06:20:19', '2019-11-18 13:27:50', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-11-17 06:20:19', '2019-11-18 13:27:50', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 11, '2019-11-17 06:20:19', '2019-11-21 05:49:04', 'voyager.settings.index', NULL),
(11, 1, 'Kategoriler', '', '_self', 'voyager-categories', '#000000', NULL, 2, '2019-11-17 06:20:20', '2019-11-18 13:28:07', 'voyager.categories.index', 'null'),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2019-11-17 06:20:20', '2019-11-18 13:33:18', 'voyager.posts.index', NULL),
(13, 1, 'Sayfalar', '', '_self', 'voyager-file-text', '#000000', NULL, 4, '2019-11-17 06:20:20', '2019-11-18 13:32:48', 'voyager.pages.index', 'null'),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2019-11-17 06:20:20', '2019-11-18 13:27:50', 'voyager.hooks', NULL),
(15, 1, 'Ürünler', '', '_self', 'voyager-basket', '#000000', NULL, 3, '2019-11-18 13:26:00', '2019-11-18 13:28:10', 'voyager.products.index', 'null'),
(17, 1, 'Popups', '', '_self', 'voyager-window-list', NULL, NULL, 9, '2019-11-21 05:48:01', '2019-11-21 05:49:04', 'voyager.popups.index', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2016_01_01_000000_create_pages_table', 2),
(25, '2016_01_01_000000_create_posts_table', 2),
(26, '2016_02_15_204651_create_categories_table', 2),
(27, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2019-11-17 06:20:20', '2019-11-17 06:20:20');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-11-17 06:20:19', '2019-11-17 06:20:19'),
(2, 'browse_bread', NULL, '2019-11-17 06:20:19', '2019-11-17 06:20:19'),
(3, 'browse_database', NULL, '2019-11-17 06:20:19', '2019-11-17 06:20:19'),
(4, 'browse_media', NULL, '2019-11-17 06:20:19', '2019-11-17 06:20:19'),
(5, 'browse_compass', NULL, '2019-11-17 06:20:19', '2019-11-17 06:20:19'),
(6, 'browse_menus', 'menus', '2019-11-17 06:20:19', '2019-11-17 06:20:19'),
(7, 'read_menus', 'menus', '2019-11-17 06:20:19', '2019-11-17 06:20:19'),
(8, 'edit_menus', 'menus', '2019-11-17 06:20:19', '2019-11-17 06:20:19'),
(9, 'add_menus', 'menus', '2019-11-17 06:20:19', '2019-11-17 06:20:19'),
(10, 'delete_menus', 'menus', '2019-11-17 06:20:19', '2019-11-17 06:20:19'),
(11, 'browse_roles', 'roles', '2019-11-17 06:20:19', '2019-11-17 06:20:19'),
(12, 'read_roles', 'roles', '2019-11-17 06:20:19', '2019-11-17 06:20:19'),
(13, 'edit_roles', 'roles', '2019-11-17 06:20:19', '2019-11-17 06:20:19'),
(14, 'add_roles', 'roles', '2019-11-17 06:20:19', '2019-11-17 06:20:19'),
(15, 'delete_roles', 'roles', '2019-11-17 06:20:19', '2019-11-17 06:20:19'),
(16, 'browse_users', 'users', '2019-11-17 06:20:19', '2019-11-17 06:20:19'),
(17, 'read_users', 'users', '2019-11-17 06:20:19', '2019-11-17 06:20:19'),
(18, 'edit_users', 'users', '2019-11-17 06:20:19', '2019-11-17 06:20:19'),
(19, 'add_users', 'users', '2019-11-17 06:20:19', '2019-11-17 06:20:19'),
(20, 'delete_users', 'users', '2019-11-17 06:20:19', '2019-11-17 06:20:19'),
(21, 'browse_settings', 'settings', '2019-11-17 06:20:19', '2019-11-17 06:20:19'),
(22, 'read_settings', 'settings', '2019-11-17 06:20:19', '2019-11-17 06:20:19'),
(23, 'edit_settings', 'settings', '2019-11-17 06:20:19', '2019-11-17 06:20:19'),
(24, 'add_settings', 'settings', '2019-11-17 06:20:19', '2019-11-17 06:20:19'),
(25, 'delete_settings', 'settings', '2019-11-17 06:20:19', '2019-11-17 06:20:19'),
(26, 'browse_categories', 'categories', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(27, 'read_categories', 'categories', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(28, 'edit_categories', 'categories', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(29, 'add_categories', 'categories', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(30, 'delete_categories', 'categories', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(31, 'browse_posts', 'posts', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(32, 'read_posts', 'posts', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(33, 'edit_posts', 'posts', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(34, 'add_posts', 'posts', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(35, 'delete_posts', 'posts', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(36, 'browse_pages', 'pages', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(37, 'read_pages', 'pages', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(38, 'edit_pages', 'pages', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(39, 'add_pages', 'pages', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(40, 'delete_pages', 'pages', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(41, 'browse_hooks', NULL, '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(42, 'browse_products', 'products', '2019-11-18 13:26:00', '2019-11-18 13:26:00'),
(43, 'read_products', 'products', '2019-11-18 13:26:00', '2019-11-18 13:26:00'),
(44, 'edit_products', 'products', '2019-11-18 13:26:00', '2019-11-18 13:26:00'),
(45, 'add_products', 'products', '2019-11-18 13:26:00', '2019-11-18 13:26:00'),
(46, 'delete_products', 'products', '2019-11-18 13:26:00', '2019-11-18 13:26:00'),
(47, 'browse_popup', 'popup', '2019-11-21 05:38:59', '2019-11-21 05:38:59'),
(48, 'read_popup', 'popup', '2019-11-21 05:38:59', '2019-11-21 05:38:59'),
(49, 'edit_popup', 'popup', '2019-11-21 05:38:59', '2019-11-21 05:38:59'),
(50, 'add_popup', 'popup', '2019-11-21 05:38:59', '2019-11-21 05:38:59'),
(51, 'delete_popup', 'popup', '2019-11-21 05:38:59', '2019-11-21 05:38:59'),
(52, 'browse_popups', 'popups', '2019-11-21 05:48:01', '2019-11-21 05:48:01'),
(53, 'read_popups', 'popups', '2019-11-21 05:48:01', '2019-11-21 05:48:01'),
(54, 'edit_popups', 'popups', '2019-11-21 05:48:01', '2019-11-21 05:48:01'),
(55, 'add_popups', 'popups', '2019-11-21 05:48:01', '2019-11-21 05:48:01'),
(56, 'delete_popups', 'popups', '2019-11-21 05:48:01', '2019-11-21 05:48:01'),
(57, 'browse_slider', 'slider', '2019-11-22 07:23:59', '2019-11-22 07:23:59'),
(58, 'read_slider', 'slider', '2019-11-22 07:23:59', '2019-11-22 07:23:59'),
(59, 'edit_slider', 'slider', '2019-11-22 07:23:59', '2019-11-22 07:23:59'),
(60, 'add_slider', 'slider', '2019-11-22 07:23:59', '2019-11-22 07:23:59'),
(61, 'delete_slider', 'slider', '2019-11-22 07:23:59', '2019-11-22 07:23:59');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `popups`
--

DROP TABLE IF EXISTS `popups`;
CREATE TABLE IF NOT EXISTS `popups` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `popup_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popup_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popup_isactive` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `popup_url` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `popups`
--

INSERT INTO `popups` (`id`, `popup_name`, `popup_image`, `popup_isactive`, `created_at`, `updated_at`, `popup_url`) VALUES
(1, 'deneme', 'popups\\November2019\\u5ttSkeKwpavuGunoHfY.jpg', 1, NULL, '2019-11-21 06:29:47', '#');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-11-17 06:20:20', '2019-11-17 06:20:20');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci,
  `description` tinytext COLLATE utf8mb4_unicode_ci,
  `price` decimal(10,0) DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `KDV` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo` text COLLATE utf8mb4_unicode_ci,
  `status` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-11-17 06:20:19', '2019-11-17 06:20:19'),
(2, 'user', 'Normal User', '2019-11-17 06:20:19', '2019-11-17 06:20:19');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Marj Promosyon - Firmalar için Çeşitli Promosyon Ürünleri', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Marj Promosyon 2018 - Ajandalar, Bloknotlar, Anahtarlık, Çantalar, Geri Dönüşümlü Ürünler, Kalem Setleri, Matbaa Ürünleri, Ofis ve Kırtasiye', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '(function(d, s, id) {             var js, fjs = d.getElementsByTagName(s)[0];             if (d.getElementById(id)) return;             js = d.createElement(s); js.id = id;             js.src = \"//connect.facebook.net/tr_TR/sdk.js#xfbml=1&version=v2.10\";             fjs.parentNode.insertBefore(js, fjs);         }(document, \'script\', \'facebook-jssdk\'));', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'marjpromosyon', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Digitagram. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(14, 'iletisim.mail', 'Mail Adresi', 'info@marjpromosyon.com', NULL, 'text', 6, 'İletişim'),
(15, 'iletisim.whatsapp_tel', 'Whatsapp Numarası', '05436634911', NULL, 'text', 7, 'İletişim'),
(16, 'iletisim.tel1', 'Tel 1', '0532 555 22 22', NULL, 'text', 8, 'İletişim'),
(17, 'iletisim.tel2', 'Tel2', '0532 555 22 22', NULL, 'text', 9, 'İletişim'),
(18, 'site.vizyon', 'Vizyon', NULL, NULL, 'rich_text_box', 10, 'Site'),
(19, 'hakkimizda.vizyon', 'Vizyon', NULL, NULL, 'rich_text_box', 11, 'Hakkimizda'),
(20, 'hakkimizda.misyon', 'Misyon', NULL, NULL, 'rich_text_box', 12, 'Hakkimizda'),
(21, 'hakkimizda.hakkimizda', 'Hakkımızda', NULL, NULL, 'rich_text_box', 13, 'Hakkimizda'),
(22, 'iletisim.facebook', 'Facebook Adresi', NULL, NULL, 'text', 14, 'İletişim'),
(23, 'iletisim.instagram', 'Instagram', NULL, NULL, 'text', 15, 'İletişim'),
(24, 'iletisim.twitter', 'Twitter', NULL, NULL, 'text', 16, 'İletişim'),
(25, 'katalog.katalog', 'Katalog', '', NULL, 'file', 18, 'Katalog'),
(26, 'katalog.katalog_baslik', 'Katalog Görünen Başlık', '2020 PDF KATALOĞUMUZU İNCELEMEK İÇİN TIKLAYINIZ.', NULL, 'text', 17, 'Katalog');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2019-11-17 06:20:20', '2019-11-17 06:20:20'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-11-17 06:20:20', '2019-11-17 06:20:20');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ahmet Güldaş', 'ahmet@guldas.com', 'users/default.png', NULL, '$2y$10$aPGmh/WG/2wL0DelArffuORp6ftY4Z9/buz/GWlYJ62rB//6hHjHO', 'zTDhjDqcGB33k5xIfEyL3H6ddszq5X9oKafn4Q5a11Un65NUQgGLlTdUzaSR', '{\"locale\":\"tr\"}', '2019-11-17 06:20:20', '2019-11-18 05:34:46'),
(2, 2, 'admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$8.U9l8CmNKCzWBSo69kKe.MD8Y/rNWu70/tGDhkpOa7iQxEQvp1Ki', NULL, '{\"locale\":\"tr\"}', '2019-11-18 10:19:42', '2019-11-18 10:19:42');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Tablo kısıtlamaları `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
