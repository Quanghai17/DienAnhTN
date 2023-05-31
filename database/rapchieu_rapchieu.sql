-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 31, 2023 at 09:03 AM
-- Server version: 10.3.27-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rapchieu_rapchieu`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `description`, `image`, `images`, `created_at`, `updated_at`, `type`, `status`, `url`) VALUES
(12, NULL, NULL, 'banners/November2022/929w7glbOGdlOtG0qG0f.jpg', NULL, '2022-11-21 02:42:00', '2022-11-21 03:34:59', 'home', 'ACTIVE', NULL),
(14, NULL, NULL, 'banners/December2022/tgSbwcPCBOApPbRX985d.png', NULL, '2022-12-12 19:11:54', '2022-12-12 19:11:54', 'home', 'ACTIVE', NULL),
(16, 'Sở văn hóa, Thể thao và Du lịch', NULL, 'banners/February2023/YDla7g0RVCQnMUlREe0q.jpeg', NULL, '2022-12-13 01:02:00', '2023-02-19 20:10:40', 'home2', 'ACTIVE', 'https://sovhttdl.thainguyen.gov.vn'),
(17, 'ubnd tỉnh', NULL, 'banners/December2022/Uz3KZy4JwFGU5IR1NIsj.png', NULL, '2022-12-13 01:02:00', '2022-12-13 02:00:35', 'home2', 'ACTIVE', 'https://thainguyen.gov.vn/vi_VN/trang-chu'),
(18, 'Cục điện ảnh', NULL, 'banners/December2022/QTo9cY687KHqNw2OWyEi.png', NULL, '2022-12-13 01:02:00', '2022-12-13 01:49:18', 'home2', 'ACTIVE', 'https://www.cucdienanh.vn');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(3, NULL, 1, 'Tin Tức', 'tin-tuc', '2022-11-18 18:23:09', '2022-11-18 18:23:09'),
(4, NULL, 1, 'Sự kiện', 'su-kien', '2022-11-19 00:16:42', '2022-11-19 00:16:42');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
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
(23, 4, 'parent_id', 'select_dropdown', 'Danh mục cha', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Sắp xếp', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Tên danh mục', 1, 1, 1, 1, 1, 1, '{}', 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Ngày tạo', 0, 0, 1, 0, 0, 0, '{}', 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'author_id', 'text', 'Tác giả', 1, 0, 1, 1, 0, 1, '{}', 2),
(31, 5, 'category_id', 'text', 'Danh mục bài viết', 0, 0, 1, 1, 1, 0, '{}', 3),
(32, 5, 'title', 'text', 'Tiêu đề', 1, 1, 1, 1, 1, 1, '{}', 4),
(34, 5, 'body', 'rich_text_box', 'Nội dung', 1, 0, 1, 1, 1, 1, '{}', 6),
(35, 5, 'image', 'image', 'Ảnh đại diện', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 10),
(39, 5, 'status', 'select_dropdown', 'Trạng thái', 1, 1, 1, 1, 1, 1, '{\"default\":\"PUBLISHED\",\"options\":{\"PUBLISHED\":\"Ho\\u1ea1t \\u0111\\u1ed9ng\",\"DRAFT\":\"Nh\\u00e1p\",\"PENDING\":\"Ch\\u1edd duy\\u1ec7t\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Ngày tạo', 0, 1, 1, 0, 0, 0, '{}', 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '{}', 14),
(43, 5, 'featured', 'checkbox', 'Nổi bật?', 1, 1, 1, 1, 1, 1, '{}', 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(45, 6, 'author_id', 'text', 'Tác giả', 1, 0, 0, 0, 0, 0, '{}', 2),
(46, 6, 'title', 'text', 'Tiêu đề', 1, 1, 1, 1, 1, 1, '{}', 3),
(48, 6, 'body', 'rich_text_box', 'Nội dung', 0, 0, 1, 1, 1, 1, '{}', 6),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 4),
(52, 6, 'status', 'select_dropdown', 'Trạng thái', 1, 1, 1, 1, 1, 1, '{\"default\":\"ACTIVE\",\"options\":{\"INACTIVE\":\"Kh\\u00f4ng ho\\u1ea1t \\u0111\\u1ed9ng\",\"ACTIVE\":\"Ho\\u1ea1t \\u0111\\u1ed9ng\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Ngày tạo', 0, 1, 1, 0, 0, 0, '{}', 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(55, 6, 'image', 'image', 'Ảnh đại diện', 0, 1, 1, 1, 1, 1, '{}', 7),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'title', 'text', 'Tiêu đề', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'description', 'text_area', 'Mô tả', 0, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'image', 'image', 'Ảnh', 0, 1, 1, 1, 1, 1, '{}', 4),
(60, 7, 'images', 'media_picker', 'Nhiều ảnh', 0, 0, 0, 0, 0, 1, '{\"max\":10,\"min\":0,\"expanded\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[],\"hide_thumbnails\":false,\"quality\":90,\"watermark\":{\"source\":\"...\",\"position\":\"top-left\",\"x\":0,\"y\":0}}', 5),
(61, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(62, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(63, 7, 'type', 'select_dropdown', 'Loại', 0, 1, 1, 1, 1, 1, '{\"default\":\"home\",\"options\":{\"home\":\"Banner trang ch\\u1ee7\",\"home2\":\"Banner ph\\u1ee5\"}}', 6),
(64, 7, 'status', 'select_dropdown', 'Trạng thái', 0, 1, 1, 1, 1, 1, '{\"default\":\"ACTIVE\",\"options\":{\"ACTIVE\":\"K\\u00edch ho\\u1ea1t\",\"INACTIVE\":\"Kh\\u00f4ng k\\u00edch ho\\u1ea1t\"}}', 8),
(65, 6, 'description', 'text_area', 'Mô tả ngắn', 0, 1, 1, 1, 1, 1, '{}', 5),
(66, 6, 'media', 'media_picker', 'Media', 0, 1, 1, 1, 1, 1, '{}', 8),
(67, 5, 'description', 'text', 'Mô tả ngắn', 0, 1, 1, 1, 1, 1, '{}', 6),
(68, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(69, 8, 'title', 'text', 'Tiêu đề', 1, 1, 1, 1, 1, 1, '{}', 2),
(70, 8, 'description', 'text_area', 'Mô tả', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Tr\\u01b0\\u1eddng m\\u00f4 t\\u1ea3 l\\u00e0 b\\u1eaft bu\\u1ed9c\"}}}', 4),
(71, 8, 'body', 'rich_text_box', 'Nội dung', 0, 0, 1, 1, 1, 1, '{}', 5),
(72, 8, 'image', 'image', 'Ảnh', 1, 1, 1, 1, 1, 1, '{}', 6),
(73, 8, 'media', 'media_picker', 'Media', 0, 0, 1, 1, 1, 1, '{\"max\":10,\"min\":0,\"expanded\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[],\"hide_thumbnails\":false,\"quality\":90,\"watermark\":{\"source\":\"...\",\"position\":\"top-left\",\"x\":0,\"y\":0}}', 7),
(74, 8, 'time', 'text', 'Thời lượng', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\"}}', 8),
(75, 8, 'debut', 'date', 'Ra mắt', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\"}}', 9),
(76, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 18),
(77, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 19),
(78, 8, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:films,slug\"}}', 3),
(81, 8, 'film_belongstomany_film_category_relationship', 'relationship', 'Danh mục phim', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"model\":\"App\\\\Models\\\\FilmCategory\",\"table\":\"film_categories\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"pivot_category_films\",\"pivot\":\"1\",\"taggable\":\"0\"}', 15),
(82, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(83, 9, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(84, 9, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:film_categories,slug\"}}', 3),
(85, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(86, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(87, 9, 'film_category_belongstomany_film_relationship', 'relationship', 'Danh sách phim', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Film\",\"table\":\"films\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"pivot_category_films\",\"pivot\":\"1\",\"taggable\":\"0\"}', 4),
(88, 8, 'film_belongstomany_film_type_relationship', 'relationship', 'Thể loại', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\"},\"model\":\"App\\\\Models\\\\FilmType\",\"table\":\"film_types\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"pivot_types_films\",\"pivot\":\"1\",\"taggable\":\"on\"}', 14),
(89, 8, 'trailer', 'text', 'Trailer (Liên kết youtube)', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\"}}', 10),
(90, 8, 'rate', 'number', 'Đánh giá', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\"}}', 11),
(91, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(92, 10, 'titile', 'text', 'Titile', 0, 1, 1, 1, 1, 1, '{}', 2),
(93, 8, 'year', 'text', 'Năm xuất bản', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\"}}', 12),
(94, 8, 'status', 'select_dropdown', 'Trạng thái', 0, 1, 1, 1, 1, 1, '{\"default\":\"ACTIVE\",\"options\":{\"ACTIVE\":\"K\\u00edch ho\\u1ea1t\",\"INACTIVE\":\"Kh\\u00f4ng k\\u00edch ho\\u1ea1t\"}}', 17),
(95, 8, 'film_belongstomany_film_author_relationship', 'relationship', 'Tác giả', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"model\":\"App\\\\Models\\\\FilmAuthor\",\"table\":\"film_authors\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"pivot_authors_films\",\"pivot\":\"1\",\"taggable\":\"on\"}', 16),
(96, 8, 'hot', 'checkbox', 'Phim Hot', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\"},\"on\":\"Phim Hot\",\"off\":\"M\\u1eb7c \\u0111\\u1ecbnh\",\"checked\":false}', 13),
(97, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(98, 11, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(99, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(100, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(101, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(102, 14, 'email', 'text', 'Địa chỉ Email', 0, 1, 1, 1, 1, 1, '{}', 2),
(103, 14, 'name', 'text', 'Tên', 0, 1, 1, 1, 1, 1, '{}', 3),
(104, 14, 'phone', 'text', 'Số điện thoại', 0, 1, 1, 1, 1, 1, '{}', 4),
(105, 14, 'content', 'text', 'Nội dung', 0, 1, 1, 1, 1, 1, '{}', 5),
(106, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(107, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(108, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(109, 15, 'title', 'text', 'Tiêu đề', 1, 1, 1, 1, 1, 1, '{}', 2),
(110, 15, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:showtimes,slug\"}}', 3),
(111, 15, 'description', 'text_area', 'Mô tả', 0, 1, 1, 1, 1, 1, '{}', 4),
(112, 15, 'body', 'rich_text_box', 'Nội dung', 0, 0, 1, 1, 1, 1, '{}', 5),
(113, 15, 'time', 'timestamp', 'Thời gian', 0, 0, 1, 1, 1, 1, '{}', 6),
(114, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(115, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(116, 15, 'status', 'text', 'Trạng thái', 0, 1, 1, 1, 1, 1, '{\"default\":\"ACTIVE\",\"options\":{\"ACTIVE\":\"K\\u00edch ho\\u1ea1t\",\"INACTIVE\":\"Kh\\u00f4ng k\\u00edch ho\\u1ea1t\"}}', 7),
(117, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(118, 17, 'title', 'text', 'Tiêu đề', 0, 1, 1, 1, 1, 1, '{}', 2),
(119, 17, 'description', 'text', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 3),
(120, 17, 'image', 'text', 'Ảnh', 0, 1, 1, 1, 1, 1, '{\"thumbnails\":[{\"name\":\"cropped\",\"crop\":{\"width\":\"900\",\"height\":\"600\"}}]}', 4),
(121, 17, 'created_at', 'timestamp', 'Ngày tạo', 0, 1, 1, 1, 0, 1, '{}', 5),
(122, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(123, 7, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, '{}', 7);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2022-11-17 21:13:00', '2022-11-17 21:13:00'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-11-17 21:13:00', '2022-11-17 21:13:00'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-11-17 21:13:00', '2022-11-17 21:13:00'),
(4, 'categories', 'categories', 'Danh mục bài viết', 'Danh mục bài viết', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2022-11-17 21:13:04', '2022-12-04 20:08:53'),
(5, 'posts', 'posts', 'Bài viết', 'Bài viết', 'voyager-news', 'App\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2022-11-17 21:13:04', '2022-12-04 20:06:31'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'App\\Models\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2022-11-17 21:13:04', '2022-12-04 20:04:02'),
(7, 'banners', 'banners', 'Banner', 'Banners', NULL, 'App\\Models\\Banner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-11-18 00:02:41', '2022-12-13 03:03:06'),
(8, 'films', 'films', 'Phim', 'Phim', NULL, 'App\\Models\\Film', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-11-18 01:29:31', '2022-11-19 02:25:48'),
(9, 'film_categories', 'film-categories', 'Film Category', 'Film Categories', NULL, 'App\\Models\\FilmCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-11-18 03:00:20', '2022-11-18 03:00:57'),
(10, 'film_types', 'film-types', 'Film Type', 'Film Types', NULL, 'App\\Models\\FilmType', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-11-18 19:06:45', '2022-11-18 19:06:45'),
(11, 'film_authors', 'film-authors', 'Tác giả', 'Tác giả', NULL, 'App\\Models\\FilmAuthor', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-11-19 00:15:52', '2022-11-19 00:15:52'),
(14, 'contacts', 'contacts', 'Contact', 'Contacts', NULL, 'App\\Models\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-11-19 00:25:46', '2022-11-19 00:26:14'),
(15, 'showtimes', 'showtimes', 'Lịch chiếu', 'Lịch chiếu', 'voyager-receipt', 'App\\Models\\Showtime', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-11-19 02:45:45', '2022-11-19 03:04:32'),
(16, 'gallery', 'gallery', 'Danh mục ảnh', 'Danh mục ảnh', NULL, 'App\\Models\\Gallery', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-11-20 18:24:25', '2022-11-20 18:24:25'),
(17, 'galleries', 'galleries', 'Gallery', 'Galleries', NULL, 'App\\Models\\Gallery', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-11-20 18:33:42', '2022-11-20 18:33:42');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `films`
--

CREATE TABLE `films` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `media` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `debut` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trailer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` float DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hot` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `films`
--

INSERT INTO `films` (`id`, `title`, `description`, `body`, `image`, `media`, `time`, `debut`, `created_at`, `updated_at`, `slug`, `trailer`, `rate`, `year`, `status`, `hot`) VALUES
(7, 'Anh thầy ngôi sao', 'Hoàng là một chàng trai trẻ ôm mộng thành ngôi sao ca nhạc, vì chưa gặp thời nên tạm kiếm sống bằng công việc làm thầy giáo dạy nhạc. Sau biến cố, Hoàng buộc phải chuyển công tác ra một hòn đảo cách xa đất liền và tiếp quản một lớp học đặc biệt', NULL, 'films/November2022/yfOE2psdWkIRzYqpPLkm.jpg', NULL, NULL, NULL, '2022-11-18 18:02:58', '2022-11-18 18:02:58', 'anh-thay-ngoi-sao', NULL, NULL, NULL, 'ACTIVE', 0),
(8, 'Nhắm Mắt Thấy Mùa Hè', 'Đặt chân tới xứ sở hoa anh đào, Nhật Hạ tình cờ gặp gỡ Akira - một chàng trai lạnh lùng, ít nói. Khi biết rằng anh từng quen biết và là học trò của cha, cô quyết tâm tìm hiểu cuộc sống của ông tại Nhật Bản thông qua Akira. Song, càng đi sâu tìm hiểu, cô càng phát hiện ra nhiều sự thật mà mình không hề mong đợi.', NULL, 'films/November2022/DjtMor2OSygEgZG6hvPO.jpg', NULL, NULL, NULL, '2022-11-18 18:03:58', '2022-11-18 18:03:58', 'nham-mat-thay-mua-he', NULL, NULL, NULL, 'ACTIVE', 0),
(9, 'Trạng Quỳnh', 'Phim kể về hành trình giải cứu người thầy của Trạng Quỳnh cùng \'\'đồng bọn\'\' là cô gái Điềm xinh đẹp và anh bạn Xẩm tinh quái. Mặc dù chỉ là những người \'\'thấp cổ bé họng\'\' trong xã hội nhưng họ không hề ngần ngại đối đầu với bọn cường hào ác bá.', NULL, 'films/November2022/0kfQeo0Y9Ez0mGoZxvGO.jpg', NULL, NULL, NULL, '2022-11-18 18:05:13', '2022-11-18 18:05:13', 'trang-quynh', NULL, NULL, NULL, 'ACTIVE', 0),
(10, 'Lật mặt nhà có khách', 'Bộ phim xoay quanh chuyến trở về nhà ngỡ rất vui vẻ đầm ấm của Vy cùng bạn bè. Thế nhưng, một chuỗi những tai nạn và sự việc bất thường diễn ra đã đẩy tất cả mọi người, đặc biệt là Vy vào tình thế nguy hiểm. Rốt cuộc bí ẩn đằng sau câu chuyện này là gì?', NULL, 'films/November2022/vE3GAifp5Yx0SEo6arlu.jpg', NULL, NULL, NULL, '2022-11-18 18:06:05', '2022-11-18 18:06:05', 'lat-mat-nha-co-khach', NULL, NULL, NULL, 'ACTIVE', 0),
(11, 'Thập Tam Muội', '\'\'Thập Tam Muội\'\' là câu chuyện về tình huynh đệ trong Thế giới ngầm - cuộc chiến giữa phe Chợ Mới và Chợ Cũ được kể lại bằng ngôn ngữ điện ảnh với những pha hành động gay cấn, lẫn cười ra nước mắt, và những cú twist bất ngờ.', NULL, 'films/November2022/pgzR7seREqIoDxaAMUYY.jpg', NULL, NULL, NULL, '2022-11-18 18:07:29', '2022-11-18 18:07:29', 'thap-tam-muoi', NULL, NULL, NULL, 'ACTIVE', 0),
(12, '\'Vi Cá Tiền Truyện', '\'\'Vi Cá Tiền Truyện\'\' có cốt truyện xoay quanh cuộc sống của nhân vật Cá Con khi còn là đàn em của Bảy Gà và trận chiến đầy cam go với người anh em kết nghĩa Khô Mực...', NULL, 'films/November2022/Y7mKajbwVJHE3WiBZ9OD.jpg', NULL, NULL, NULL, '2022-11-18 18:08:10', '2022-11-18 18:08:10', 'vi-ca-tien-truyen', NULL, NULL, NULL, 'ACTIVE', 0),
(13, 'Truyền thuyết về Quán Tiên', 'Ba nữ chiến sĩ Mùi, Phượng và Tuyết Lan được giao nhiệm vụ tổ chức một chốn nghỉ chân giữa rừng cho bộ đội trên đường hành quân, gọi là Quán Tiên. Ở nơi hiu quạnh, họ phải đối mặt với nhiều hiểm nguy lẫn sự thiếu thốn tình cảm.', NULL, 'films/November2022/ubxk5GiClUXBFkNlfkXq.jpg', NULL, NULL, NULL, '2022-11-18 18:09:03', '2022-11-18 18:09:03', 'truyen-thuyet-ve-quan-tien', NULL, NULL, NULL, 'ACTIVE', 0),
(14, 'Làm rể Mười Xuân', 'Làm rể Mười Xuân là sự kết hợp giữa tiếng cười hài hước, thú vị, hấp dẫn của cha vợ và những chàng rể có một không hai cùng với những cung bậc cảm xúc tình yêu của những người trẻ trong mối quan hệ phức tạp.', NULL, 'films/November2022/iCsh9KPhww888HYn5jU8.jpg', NULL, NULL, NULL, '2022-11-18 18:09:41', '2022-11-18 18:09:41', 'lam-re-muoi-xuan', NULL, NULL, NULL, 'ACTIVE', 0),
(15, 'Trời sáng rồi ta đi ngủ thôi', 'Phim theo chân chàng nhạc sĩ trẻ Vĩnh Tâm và nữ tài xế Giang Thanh. Tình cờ gặp nhau qua một cuốc xe ôm công nghệ, cả hai quyết định dành một ngày để cùng vi vu khắp Sài Gòn. Từ đây, những tâm sự và nỗi buồn trong lòng họ dần được hé lộ.', NULL, 'films/November2022/QWngntuQ49Di6lvdkxIt.jpg', NULL, NULL, NULL, '2022-11-18 18:10:21', '2022-11-18 18:10:21', 'troi-sang-roi-ta-di-ngu-thoi', NULL, NULL, NULL, 'ACTIVE', 0),
(16, 'Bao giờ hết ế', 'Phim xoay quanh nữ doanh nhân thành đạt Thiên Kim. Ở tuổi 30, cô chẳng thể tìm nổi một tấm chồng bởi lời nguyền “sát phu” của gia tộc. Không những thế, cô còn bị tay người yêu Johnny lừa dối và trộm hết sạch tài sản sau một đêm mặn nồng.', '<p>Phim xoay quanh nữ doanh nh&acirc;n th&agrave;nh đạt Thi&ecirc;n Kim. Ở tuổi 30, c&ocirc; chẳng thể t&igrave;m nổi một tấm chồng bởi lời nguyền &ldquo;s&aacute;t phu&rdquo; của gia tộc. Kh&ocirc;ng những thế, c&ocirc; c&ograve;n bị tay người y&ecirc;u Johnny lừa dối v&agrave; trộm hết sạch t&agrave;i sản sau một đ&ecirc;m mặn nồng.</p>\r\n<ul>\r\n<li>Phim xoay quanh nữ doanh nh&acirc;n th&agrave;nh đạt Thi&ecirc;n Kim. Ở tuổi 30, c&ocirc; chẳng thể t&igrave;m nổi một tấm chồng bởi lời nguyền &ldquo;s&aacute;t phu&rdquo; của gia tộc. Kh&ocirc;ng những thế, c&ocirc; c&ograve;n bị tay người y&ecirc;u Johnny lừa dối v&agrave; trộm hết sạch t&agrave;i sản sau một đ&ecirc;m mặn nồng.</li>\r\n<li>Phim xoay quanh nữ doanh nh&acirc;n th&agrave;nh đạt Thi&ecirc;n Kim. Ở tuổi 30, c&ocirc; chẳng thể t&igrave;m nổi một tấm chồng bởi lời nguyền &ldquo;s&aacute;t phu&rdquo; của gia tộc. Kh&ocirc;ng những thế, c&ocirc; c&ograve;n bị tay người y&ecirc;u Johnny lừa dối v&agrave; trộm hết sạch t&agrave;i sản sau một đ&ecirc;m mặn nồng.</li>\r\n<li>Phim xoay quanh nữ doanh nh&acirc;n th&agrave;nh đạt Thi&ecirc;n Kim. Ở tuổi 30, c&ocirc; chẳng thể t&igrave;m nổi một tấm chồng bởi lời nguyền &ldquo;s&aacute;t phu&rdquo; của gia tộc. Kh&ocirc;ng những thế, c&ocirc; c&ograve;n bị tay người y&ecirc;u Johnny lừa dối v&agrave; trộm hết sạch t&agrave;i sản sau một đ&ecirc;m mặn nồng.</li>\r\n</ul>\r\n<p>Phim xoay quanh nữ doanh nh&acirc;n th&agrave;nh đạt Thi&ecirc;n Kim. Ở tuổi 30, c&ocirc; chẳng thể t&igrave;m nổi một tấm chồng bởi lời nguyền &ldquo;s&aacute;t phu&rdquo; của gia tộc. Kh&ocirc;ng những thế, c&ocirc; c&ograve;n bị tay người y&ecirc;u Johnny lừa dối v&agrave; trộm hết sạch t&agrave;i sản sau một đ&ecirc;m mặn nồng.</p>', 'films/November2022/H4mv1KB0zOoyfGmx8dSY.jpg', NULL, '90 Phút', '2022-11-24 00:00:00', '2022-11-18 18:13:00', '2022-11-19 00:56:30', 'bao-gio-het-e', 'https://www.youtube.com/watch?v=XL_3eYx3OVE', 9, '2022', 'ACTIVE', 1),
(17, 'Ngôi nhà bươm bướm', 'Phim kể về hành trình vượt qua trở ngại của Hoàng và Mai để đi đến cuộc hôn nhân mơ ước. Qua nhiều phen \'\'chiêu dụ\'\', Hoàng và Mai đã sắp xếp được buổi gặp cho hai gia đình. Nhưng chính từ đây, câu chuyện oái oăm của nhà trai bị phơi bày và đem đến tình cảnh có một không hai cho buổi gặp mặt.', NULL, 'films/November2022/CwHN45NuWAQZ1OxA6KUb.jpg', NULL, NULL, NULL, '2022-11-18 18:14:00', '2022-11-19 00:50:39', 'ngoi-nha-buom-buom', NULL, NULL, NULL, 'ACTIVE', 1),
(18, 'Cuộc chiến nhân tình', 'Xoay quanh cuộc chiến đẫm máu trong việc tranh giành tình yêu, danh vọng, tiền tài vật chất, phim vẽ nên một bức tranh toàn cảnh về những âm mưu, thủ đoạn độc ác, ghê tởm và đáng lên án của những kẻ máu lạnh trong xã hội.', NULL, 'films/November2022/LEXTL2ymDpn7jZtYc699.jpg', NULL, NULL, NULL, '2022-11-18 18:16:00', '2022-11-19 00:50:32', 'cuoc-chien-nhan-tinh', NULL, NULL, NULL, 'ACTIVE', 1);

-- --------------------------------------------------------

--
-- Table structure for table `film_authors`
--

CREATE TABLE `film_authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `film_authors`
--

INSERT INTO `film_authors` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Việt Hùng', '2022-11-19 00:18:56', '2022-11-19 00:18:56'),
(2, 'Phạm Mạnh Cường', '2022-11-19 00:19:06', '2022-11-19 00:19:06'),
(3, 'Vương Văn Huy', '2022-11-19 00:19:11', '2022-11-19 00:19:11');

-- --------------------------------------------------------

--
-- Table structure for table `film_categories`
--

CREATE TABLE `film_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `film_categories`
--

INSERT INTO `film_categories` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Phim đang chiếu', 'phim-dang-chieu', '2022-11-18 03:01:00', '2022-11-18 03:06:49'),
(2, 'Phim sắp chiếu', 'phim-sap-chieu', '2022-11-18 03:02:00', '2022-11-18 03:06:35');

-- --------------------------------------------------------

--
-- Table structure for table `film_types`
--

CREATE TABLE `film_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `film_types`
--

INSERT INTO `film_types` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Hành động', '2022-11-18 19:07:55', '2022-11-18 19:07:55'),
(2, 'Hành động', '2022-11-18 19:08:04', '2022-11-18 19:08:04'),
(3, 'Tình cảm', '2022-11-18 19:08:11', '2022-11-18 19:08:11'),
(5, 'hoạt hình', '2022-11-18 19:30:48', '2022-11-18 19:30:48'),
(6, 'Tội ác', '2022-11-18 19:30:55', '2022-11-18 19:30:55'),
(7, 'Kịch', '2022-11-18 19:30:59', '2022-11-18 19:30:59'),
(8, 'Huyền bí', '2022-11-18 19:31:06', '2022-11-18 19:31:06'),
(9, 'Lịch sử', '2022-11-18 19:31:11', '2022-11-18 19:31:11'),
(10, 'Khoa học viễn tưởng', '2022-11-18 19:31:16', '2022-11-18 19:31:16'),
(11, 'Chiến tranh', '2022-11-18 19:31:22', '2022-11-18 19:31:22'),
(12, 'Cuộc phiêu lưu', '2022-11-18 19:32:06', '2022-11-18 19:32:06'),
(13, 'Hài kịch', '2022-11-18 19:32:10', '2022-11-18 19:32:10'),
(14, 'Phim tài liệu', '2022-11-18 19:32:17', '2022-11-18 19:32:17'),
(15, 'Lãng mạn', '2022-11-18 19:32:24', '2022-11-18 19:32:24'),
(16, 'Phim truyền hình', '2022-11-18 19:32:31', '2022-11-18 19:32:31');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-11-17 21:13:00', '2022-11-17 21:13:00'),
(2, 'header', '2022-11-18 00:03:19', '2022-11-18 00:03:19'),
(3, 'footer', '2022-11-18 23:46:38', '2022-11-18 23:46:47');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2022-11-17 21:13:00', '2022-11-17 21:13:00', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 10, '2022-11-17 21:13:00', '2022-11-20 18:34:23', 'voyager.media.index', NULL),
(3, 1, 'Tài khoản quản trị', '', '_self', NULL, '#000000', 29, 1, '2022-11-17 21:13:01', '2022-11-18 21:22:04', 'voyager.users.index', 'null'),
(4, 1, 'Phân quyền', '', '_self', NULL, '#000000', 29, 2, '2022-11-17 21:13:01', '2022-11-18 21:22:11', 'voyager.roles.index', 'null'),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 13, '2022-11-17 21:13:01', '2022-11-20 18:34:23', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, NULL, 11, '2022-11-17 21:13:01', '2022-11-20 18:34:23', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 1, '2022-11-17 21:13:01', '2022-11-18 21:19:12', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 2, '2022-11-17 21:13:01', '2022-11-18 21:19:12', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 3, '2022-11-17 21:13:01', '2022-11-18 21:19:12', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 12, '2022-11-17 21:13:01', '2022-11-20 18:34:23', 'voyager.settings.index', NULL),
(11, 1, 'Danh mục', '', '_self', NULL, '#000000', 27, 1, '2022-11-17 21:13:04', '2022-11-18 21:22:25', 'voyager.categories.index', 'null'),
(12, 1, 'Bài viết', '', '_self', NULL, '#000000', 27, 2, '2022-11-17 21:13:04', '2022-11-18 21:22:32', 'voyager.posts.index', 'null'),
(13, 1, 'Trang nội dung', '', '_self', 'voyager-file-text', '#000000', NULL, 4, '2022-11-17 21:13:05', '2022-11-20 18:34:23', 'voyager.pages.index', 'null'),
(14, 1, 'Banners', '', '_self', 'voyager-play', '#000000', NULL, 2, '2022-11-18 00:02:41', '2022-11-18 21:20:44', 'voyager.banners.index', 'null'),
(15, 2, 'Trang chủ', '/', '_self', NULL, '#000000', NULL, 1, '2022-11-18 00:03:38', '2022-11-18 00:04:19', NULL, ''),
(16, 2, 'Giới thiệu', '/gioi-thieu', '_self', NULL, '#000000', 25, 1, '2022-11-18 00:03:51', '2022-11-18 20:47:03', NULL, ''),
(17, 2, 'Lịch chiếu', '/lich-chieu', '_self', NULL, '#000000', NULL, 3, '2022-11-18 00:04:30', '2022-11-19 03:00:32', NULL, ''),
(18, 2, 'Tin tức - Sự kiện', '/news', '_self', NULL, '#000000', NULL, 5, '2022-11-18 00:04:38', '2022-11-19 00:40:34', NULL, ''),
(20, 2, 'Liên hệ', '/lien-he', '_self', NULL, '#000000', NULL, 6, '2022-11-18 00:05:07', '2022-11-18 20:47:20', NULL, ''),
(21, 2, 'Phim', '/phim', '_self', NULL, '#000000', NULL, 4, '2022-11-18 00:10:13', '2022-11-19 01:01:32', NULL, ''),
(22, 1, 'Danh sách phim', '', '_self', NULL, '#000000', 28, 1, '2022-11-18 01:29:31', '2022-11-18 21:17:00', 'voyager.films.index', 'null'),
(23, 1, 'Danh mục', '', '_self', NULL, '#000000', 28, 2, '2022-11-18 03:00:21', '2022-11-18 21:17:10', 'voyager.film-categories.index', 'null'),
(24, 1, 'Thể loại', '', '_self', NULL, '#000000', 28, 3, '2022-11-18 19:06:45', '2022-11-18 21:17:18', 'voyager.film-types.index', 'null'),
(25, 2, 'Giới thiệu', '/gioi-thieu', '_self', NULL, '#000000', NULL, 2, '2022-11-18 20:46:30', '2022-11-21 03:38:43', NULL, ''),
(26, 2, 'Cơ cấu tổ chức', '/pages/co-cau-to-chuc', '_self', NULL, '#000000', 25, 2, '2022-11-18 20:46:57', '2022-11-19 02:40:17', NULL, ''),
(27, 1, 'Tin tức -sự kiện', '', '_self', 'voyager-file-text', '#000000', NULL, 5, '2022-11-18 21:15:50', '2022-11-20 18:34:23', NULL, ''),
(28, 1, 'Phim', '', '_self', 'voyager-video', '#000000', NULL, 6, '2022-11-18 21:16:36', '2022-11-20 18:34:23', NULL, ''),
(29, 1, 'QL tài khoản', '', '_self', 'voyager-people', '#000000', NULL, 9, '2022-11-18 21:18:58', '2022-11-20 18:34:23', NULL, ''),
(30, 3, 'Sở văn hóa tỉnh Thái Nguyên', 'https://sovhttdl.thainguyen.gov.vn', '_blank', NULL, '#000000', NULL, 11, '2022-11-18 23:47:09', '2022-12-04 23:54:16', NULL, ''),
(31, 3, 'UBND tỉnh Thái Nguyên', 'https://thainguyen.gov.vn/vi_VN/trang-chu', '_blank', NULL, '#000000', NULL, 12, '2022-11-18 23:47:28', '2022-12-04 23:54:23', NULL, ''),
(32, 3, 'Cục điện ảnh', 'https://www.cucdienanh.vn', '_blank', NULL, '#000000', NULL, 13, '2022-11-18 23:47:42', '2022-12-04 23:55:10', NULL, ''),
(35, 1, 'Tác giả', '', '_self', NULL, NULL, 28, 4, '2022-11-19 00:15:52', '2022-11-19 01:34:56', 'voyager.film-authors.index', NULL),
(38, 1, 'Liên hệ', '', '_self', 'voyager-paper-plane', '#000000', NULL, 8, '2022-11-19 00:25:46', '2022-11-20 18:34:23', 'voyager.contacts.index', 'null'),
(39, 1, 'Lịch chiếu', '', '_self', 'voyager-receipt', NULL, NULL, 7, '2022-11-19 02:45:46', '2022-11-20 18:34:23', 'voyager.showtimes.index', NULL),
(41, 1, 'Galleries', '', '_self', 'voyager-photos', '#000000', NULL, 3, '2022-11-20 18:33:42', '2022-11-20 18:36:03', 'voyager.galleries.index', 'null');

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
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `media` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `description`, `body`, `image`, `slug`, `status`, `created_at`, `updated_at`, `media`) VALUES
(1, 1, 'TRUNG TÂM PHÁT HÀNH PHIM VÀ CHIẾU BÓNG TỈNH THÁI NGUYÊN', 'Trung tâm Phát hành phim và Chiếu bóng Thái Nguyên được uỷ quyền thực hiện nhiệm vụ quản lý nhà nước và quản lý chuyên ngành mọi hoạt động điện ảnh, băng đĩa hình tại địa phương, và tổ chức chỉ đạo các mặt hoạt động điện ảnh, băng đĩa hình thống nhất trong toàn tỉnh.', '<p>(Thực hiện theo Quyết định số121/QĐ-UBND, ng&agrave;y 15/7/1997 của UBND tỉnh Th&aacute;i Nguy&ecirc;n về việc th&agrave;nh lập Trung t&acirc;m Điện ảnh Th&aacute;i Nguy&ecirc;n thuộc Sở Văn h&oacute;a Th&ocirc;ng tin Thể thao Th&aacute;i Nguy&ecirc;n. Nay đổi t&ecirc;n th&agrave;nh Trung t&acirc;m Ph&aacute;t h&agrave;nh phim v&agrave; Chiếu b&oacute;ng theo Quyết định số:1105/QĐ-UBND tỉnh Th&aacute;i Nguy&ecirc;n, ng&agrave;y 20/5/2016 quy định chức năng, nhiệm vụ, quyền hạn v&agrave; cơ cấu tổ chức của Sở Văn h&oacute;a, Thể thao v&agrave; Du lich).</p>\r\n<p>- Trung t&acirc;m Ph&aacute;t h&agrave;nh phim v&agrave; Chiếu b&oacute;ng Th&aacute;i Nguy&ecirc;n được uỷ quyền thực hiện nhiệm vụ quản l&yacute; nh&agrave; nước v&agrave; quản l&yacute; chuy&ecirc;n ng&agrave;nh mọi hoạt động điện ảnh, băng đĩa h&igrave;nh tại địa phương, v&agrave; tổ chức chỉ đạo c&aacute;c mặt hoạt động điện ảnh, băng đĩa h&igrave;nh thống nhất trong to&agrave;n tỉnh.</p>\r\n<p>- X&acirc;y dựng quy hoạch - kế hoạch v&agrave; tổ chức thực hiện c&aacute;c hoạt động điện ảnh v&agrave; băng đĩa h&igrave;nh tr&ecirc;n địa b&agrave;n, quản l&yacute; trực tiếp v&agrave; to&agrave;n diện c&aacute;c đơn vị chiếu phim điện ảnh v&agrave; băng đĩa h&igrave;nh tại th&agrave;nh phố, thị x&atilde;, c&aacute;c huyện lỵ.</p>\r\n<p>- Được độc quyền về ph&aacute;t h&agrave;nh phim điện ảnh v&agrave; băng đĩa h&igrave;nh trong phạm vi to&agrave;n tỉnh.</p>\r\n<p>- Chỉ đạo hướng dẫn kiểm tra c&aacute;c đơn vị cơ sở trực thuộc v&agrave; kh&ocirc;ng trực thuộc về c&aacute;c mặt chuy&ecirc;n m&ocirc;n v&agrave; thực hiện c&aacute;c quy chế, chế độ ch&iacute;nh s&aacute;ch của nh&agrave; nước v&agrave; của ng&agrave;nh về điện ảnh.</p>\r\n<p>- X&acirc;y dựng kế hoạch đề t&agrave;i về sản xuất phim điện ảnh v&agrave; băng đĩa h&igrave;nh, phim truyện, phim t&agrave;i liệu, thời sự, khoa học. Kế hoạch tiết mục ph&aacute;t h&agrave;nh h&agrave;ng năm v&agrave; tổ chức thực hiện sau khi được cấp c&oacute; thẩm quyền ph&ecirc; duyệt.</p>\r\n<p>- Tập hợp mọi nhu cầu của c&aacute;c đơn vị hoạt động điện ảnh trong to&agrave;n tỉnh để k&yacute; kết hợp đồng kinh tế với c&aacute;c cơ sở của ng&agrave;nh, Trung ương v&agrave; c&aacute;c đơn vị kinh tế trong cả nước về phim ảnh, băng, đĩa h&igrave;nh, về thiết bị, vật tư chuy&ecirc;n ng&agrave;nh điện ảnh v&agrave; kế hoạch đ&agrave;o tạo bồi dưỡng c&aacute;n bộ c&ocirc;ng nh&acirc;n vi&ecirc;n.</p>\r\n<p>- Tổ chức đ&agrave;o tạo bồi dưỡng c&aacute;n bộ quản l&yacute;, c&aacute;n bộ nghiệp vụ, c&ocirc;ng nh&acirc;n kỹ thuật sơ cấp cho to&agrave;n mạng lưới chiếu phim điện ảnh v&agrave; băng h&igrave;nh tại địa phương.</p>\r\n<p>- Thực hiện c&aacute;c nhiệm vụ c&oacute; thu về điện ảnh, băng đĩa h&igrave;nh gồm:</p>\r\n<p>+ Chiếu phim nhựa v&agrave; băng h&igrave;nh, đĩa h&igrave;nh.</p>\r\n<p>+ Ph&aacute;t h&agrave;nh phim nhựa, băng đĩa h&igrave;nh.</p>\r\n<p>+ Dịch vụ l&agrave;m phim c&aacute;c thể loại như quay CAMERA, in nh&acirc;n bản băng h&igrave;nh...</p>\r\n<p>+ Dịch vụ vật tư thiết bị kỹ thuật điện ảnh, băng, đĩa từ.</p>\r\n<p>+ Dịch vụ mua b&aacute;n cho thu&ecirc; băng h&igrave;nh.</p>\r\n<p>+ C&aacute;c dịch vụ về văn ho&aacute; kh&aacute;c ( nếu c&oacute; ).</p>\r\n<p>- Ph&acirc;n loại đơn vị sự nghiệp: đơn vị sự nghiệp c&oacute; thu.</p>\r\n<p>- Cơ chế t&agrave;i ch&iacute;nh &aacute;p dụng: Đơn vị tự bảo đảm một phần chi ph&iacute; hoạt động thường xuy&ecirc;n.</p>', 'pages/December2022/cptxAoo4BMqGQuvnueAA.png', 'about', 'ACTIVE', '2022-11-17 21:13:05', '2022-12-05 00:29:41', NULL),
(2, 1, 'Cơ cấu tổ chức', 'Cơ cấu tổ chức của Trung tâm Phát hành phim và Chiếu bóng tỉnh Thái Nguyên', '<p><img src=\"https://phim.mhtwindows.com/storage/pages/December2022/image_2022-12-05_143232451.png\" alt=\"\" width=\"100%\"></p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\">I. Ban l&atilde;nh đạo</strong></p>\r\n<table class=\"MsoTableGrid\" style=\"border-collapse: collapse; border: none; mso-border-alt: solid windowtext .5pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt;\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"mso-yfti-irow: 0; mso-yfti-firstrow: yes;\">\r\n<td style=\"width: 40.85pt; border: solid windowtext 1.0pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt;\" valign=\"top\" width=\"54\">\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\">STT</strong></p>\r\n</td>\r\n<td style=\"width: 233.9pt; border: solid windowtext 1.0pt; border-left: none; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt;\" valign=\"top\" width=\"312\">\r\n<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">Họ t&ecirc;n</strong></p>\r\n</td>\r\n<td style=\"width: 106.3pt; border: solid windowtext 1.0pt; border-left: none; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt;\" valign=\"top\" width=\"142\">\r\n<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">Chức vụ</strong></p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 1;\">\r\n<td style=\"width: 40.85pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt;\" width=\"54\">\r\n<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">1</strong></p>\r\n</td>\r\n<td style=\"width: 233.9pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt;\" width=\"312\">\r\n<p class=\"MsoNormal\">Nguyễn Thế Hảo</p>\r\n<p class=\"MsoNormal\">Điện thoại: 0912 224 975</p>\r\n<p class=\"MsoNormal\">Email:<strong style=\"mso-bidi-font-weight: normal;\"> </strong>@gmail.com</p>\r\n</td>\r\n<td style=\"width: 106.3pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt;\" width=\"142\">\r\n<p class=\"MsoNormal\">Gi&aacute;m đốc</p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 2;\">\r\n<td style=\"width: 40.85pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt;\" width=\"54\">\r\n<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">2</strong></p>\r\n</td>\r\n<td style=\"width: 233.9pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt;\" valign=\"top\" width=\"312\">\r\n<p class=\"MsoNormal\">Đ&agrave;o Minh Tu&acirc;n</p>\r\n<p class=\"MsoNormal\">Điện thoại: 0983 640 267</p>\r\n<p class=\"MsoNormal\">Email: Tuanphamdatn@gmail.com</p>\r\n</td>\r\n<td style=\"width: 106.3pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt;\" width=\"142\">\r\n<p class=\"MsoNormal\">Ph&oacute; gi&aacute;m đốc</p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 3; mso-yfti-lastrow: yes;\">\r\n<td style=\"width: 40.85pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt;\" width=\"54\">\r\n<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">3</strong></p>\r\n</td>\r\n<td style=\"width: 233.9pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt;\" valign=\"top\" width=\"312\">\r\n<p class=\"MsoNormal\">Phạm Thu Hương</p>\r\n<p class=\"MsoNormal\">Điện thoại: 0913 526 390</p>\r\n<p class=\"MsoNormal\">Email: thuhuongdl1504@gmail.com</p>\r\n</td>\r\n<td style=\"width: 106.3pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt;\" width=\"142\">\r\n<p class=\"MsoNormal\">Ph&oacute; gi&aacute;m đốc (Phụ tr&aacute;ch Rạp)</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\">II. Ph&ograve;ng H&agrave;nh ch&iacute;nh tổng hợp - T&agrave;i vụ</strong></p>\r\n<table class=\"MsoTableGrid\" style=\"border-collapse: collapse; border: none; mso-border-alt: solid windowtext .5pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt;\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"mso-yfti-irow: 0; mso-yfti-firstrow: yes;\">\r\n<td style=\"width: 40.85pt; border: solid windowtext 1.0pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt;\" valign=\"top\" width=\"54\">\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\">STT</strong></p>\r\n</td>\r\n<td style=\"width: 233.9pt; border: solid windowtext 1.0pt; border-left: none; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt;\" valign=\"top\" width=\"312\">\r\n<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">Họ t&ecirc;n</strong></p>\r\n</td>\r\n<td style=\"width: 106.3pt; border: solid windowtext 1.0pt; border-left: none; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt;\" valign=\"top\" width=\"142\">\r\n<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">Chức vụ</strong></p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 1; mso-yfti-lastrow: yes;\">\r\n<td style=\"width: 40.85pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt;\" width=\"54\">\r\n<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">1</strong></p>\r\n</td>\r\n<td style=\"width: 233.9pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt;\" width=\"312\">\r\n<p class=\"MsoNormal\">Nguyễn Thị Thương Huyền</p>\r\n<p class=\"MsoNormal\">Điện thoại: 0912 082 882</p>\r\n<p class=\"MsoNormal\">Email:<strong style=\"mso-bidi-font-weight: normal;\"> </strong>Hiendatn@gmail.com</p>\r\n</td>\r\n<td style=\"width: 106.3pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt;\" width=\"142\">\r\n<p class=\"MsoNormal\">Trưởng ph&ograve;ng</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\">III. Ph&ograve;ng Nghiệp vụ Ph&aacute;t h&agrave;nh Tuy&ecirc;n truyền</strong></p>\r\n<table class=\"MsoTableGrid\" style=\"border-collapse: collapse; border: none; mso-border-alt: solid windowtext .5pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt;\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"mso-yfti-irow: 0; mso-yfti-firstrow: yes;\">\r\n<td style=\"width: 40.85pt; border: solid windowtext 1.0pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt;\" valign=\"top\" width=\"54\">\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\">STT</strong></p>\r\n</td>\r\n<td style=\"width: 233.9pt; border: solid windowtext 1.0pt; border-left: none; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt;\" valign=\"top\" width=\"312\">\r\n<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">Họ t&ecirc;n</strong></p>\r\n</td>\r\n<td style=\"width: 106.3pt; border: solid windowtext 1.0pt; border-left: none; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt;\" valign=\"top\" width=\"142\">\r\n<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">Chức vụ</strong></p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 1; mso-yfti-lastrow: yes;\">\r\n<td style=\"width: 40.85pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt;\" width=\"54\">\r\n<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">1</strong></p>\r\n</td>\r\n<td style=\"width: 233.9pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt;\" width=\"312\">\r\n<p class=\"MsoNormal\">Phạm Trung Nghĩa</p>\r\n<p class=\"MsoNormal\">Điện thoại: 0982 050 339</p>\r\n<p class=\"MsoNormal\">Email:<strong style=\"mso-bidi-font-weight: normal;\"> </strong>trungnghia669@gmail.com</p>\r\n</td>\r\n<td style=\"width: 106.3pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt;\" width=\"142\">\r\n<p class=\"MsoNormal\">Trưởng ph&ograve;ng</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\">IV. Đội Chiếu phim lưu động</strong></p>\r\n<table class=\"MsoTableGrid\" style=\"border-collapse: collapse; border: none; mso-border-alt: solid windowtext .5pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt;\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"mso-yfti-irow: 0; mso-yfti-firstrow: yes;\">\r\n<td style=\"width: 40.85pt; border: solid windowtext 1.0pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt;\" valign=\"top\" width=\"54\">\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\">STT</strong></p>\r\n</td>\r\n<td style=\"width: 233.9pt; border: solid windowtext 1.0pt; border-left: none; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt;\" valign=\"top\" width=\"312\">\r\n<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">Họ t&ecirc;n</strong></p>\r\n</td>\r\n<td style=\"width: 106.3pt; border: solid windowtext 1.0pt; border-left: none; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt;\" valign=\"top\" width=\"142\">\r\n<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">Chức vụ</strong></p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 1; mso-yfti-lastrow: yes;\">\r\n<td style=\"width: 40.85pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt;\" width=\"54\">\r\n<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">1</strong></p>\r\n</td>\r\n<td style=\"width: 233.9pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt;\" width=\"312\">\r\n<p class=\"MsoNormal\">Nguyễn Đức Trung</p>\r\n<p class=\"MsoNormal\">Điện thoại: 0913 515 010</p>\r\n<p class=\"MsoNormal\">Email:<strong style=\"mso-bidi-font-weight: normal;\"> </strong>@gmail.com</p>\r\n</td>\r\n<td style=\"width: 106.3pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt;\" width=\"142\">\r\n<p class=\"MsoNormal\">Đội Trưởng</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', NULL, 'co-cau-to-chuc', 'ACTIVE', '2022-11-19 02:39:55', '2023-01-11 00:32:02', NULL);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-11-17 21:13:01', '2022-11-17 21:13:01'),
(2, 'browse_bread', NULL, '2022-11-17 21:13:01', '2022-11-17 21:13:01'),
(3, 'browse_database', NULL, '2022-11-17 21:13:01', '2022-11-17 21:13:01'),
(4, 'browse_media', NULL, '2022-11-17 21:13:01', '2022-11-17 21:13:01'),
(5, 'browse_compass', NULL, '2022-11-17 21:13:01', '2022-11-17 21:13:01'),
(6, 'browse_menus', 'menus', '2022-11-17 21:13:01', '2022-11-17 21:13:01'),
(7, 'read_menus', 'menus', '2022-11-17 21:13:01', '2022-11-17 21:13:01'),
(8, 'edit_menus', 'menus', '2022-11-17 21:13:01', '2022-11-17 21:13:01'),
(9, 'add_menus', 'menus', '2022-11-17 21:13:01', '2022-11-17 21:13:01'),
(10, 'delete_menus', 'menus', '2022-11-17 21:13:01', '2022-11-17 21:13:01'),
(11, 'browse_roles', 'roles', '2022-11-17 21:13:01', '2022-11-17 21:13:01'),
(12, 'read_roles', 'roles', '2022-11-17 21:13:01', '2022-11-17 21:13:01'),
(13, 'edit_roles', 'roles', '2022-11-17 21:13:01', '2022-11-17 21:13:01'),
(14, 'add_roles', 'roles', '2022-11-17 21:13:01', '2022-11-17 21:13:01'),
(15, 'delete_roles', 'roles', '2022-11-17 21:13:01', '2022-11-17 21:13:01'),
(16, 'browse_users', 'users', '2022-11-17 21:13:01', '2022-11-17 21:13:01'),
(17, 'read_users', 'users', '2022-11-17 21:13:01', '2022-11-17 21:13:01'),
(18, 'edit_users', 'users', '2022-11-17 21:13:01', '2022-11-17 21:13:01'),
(19, 'add_users', 'users', '2022-11-17 21:13:01', '2022-11-17 21:13:01'),
(20, 'delete_users', 'users', '2022-11-17 21:13:01', '2022-11-17 21:13:01'),
(21, 'browse_settings', 'settings', '2022-11-17 21:13:01', '2022-11-17 21:13:01'),
(22, 'read_settings', 'settings', '2022-11-17 21:13:01', '2022-11-17 21:13:01'),
(23, 'edit_settings', 'settings', '2022-11-17 21:13:01', '2022-11-17 21:13:01'),
(24, 'add_settings', 'settings', '2022-11-17 21:13:01', '2022-11-17 21:13:01'),
(25, 'delete_settings', 'settings', '2022-11-17 21:13:01', '2022-11-17 21:13:01'),
(26, 'browse_categories', 'categories', '2022-11-17 21:13:04', '2022-11-17 21:13:04'),
(27, 'read_categories', 'categories', '2022-11-17 21:13:04', '2022-11-17 21:13:04'),
(28, 'edit_categories', 'categories', '2022-11-17 21:13:04', '2022-11-17 21:13:04'),
(29, 'add_categories', 'categories', '2022-11-17 21:13:04', '2022-11-17 21:13:04'),
(30, 'delete_categories', 'categories', '2022-11-17 21:13:04', '2022-11-17 21:13:04'),
(31, 'browse_posts', 'posts', '2022-11-17 21:13:04', '2022-11-17 21:13:04'),
(32, 'read_posts', 'posts', '2022-11-17 21:13:04', '2022-11-17 21:13:04'),
(33, 'edit_posts', 'posts', '2022-11-17 21:13:04', '2022-11-17 21:13:04'),
(34, 'add_posts', 'posts', '2022-11-17 21:13:04', '2022-11-17 21:13:04'),
(35, 'delete_posts', 'posts', '2022-11-17 21:13:04', '2022-11-17 21:13:04'),
(36, 'browse_pages', 'pages', '2022-11-17 21:13:05', '2022-11-17 21:13:05'),
(37, 'read_pages', 'pages', '2022-11-17 21:13:05', '2022-11-17 21:13:05'),
(38, 'edit_pages', 'pages', '2022-11-17 21:13:05', '2022-11-17 21:13:05'),
(39, 'add_pages', 'pages', '2022-11-17 21:13:05', '2022-11-17 21:13:05'),
(40, 'delete_pages', 'pages', '2022-11-17 21:13:05', '2022-11-17 21:13:05'),
(41, 'browse_banners', 'banners', '2022-11-18 00:02:41', '2022-11-18 00:02:41'),
(42, 'read_banners', 'banners', '2022-11-18 00:02:41', '2022-11-18 00:02:41'),
(43, 'edit_banners', 'banners', '2022-11-18 00:02:41', '2022-11-18 00:02:41'),
(44, 'add_banners', 'banners', '2022-11-18 00:02:41', '2022-11-18 00:02:41'),
(45, 'delete_banners', 'banners', '2022-11-18 00:02:41', '2022-11-18 00:02:41'),
(46, 'browse_films', 'films', '2022-11-18 01:29:31', '2022-11-18 01:29:31'),
(47, 'read_films', 'films', '2022-11-18 01:29:31', '2022-11-18 01:29:31'),
(48, 'edit_films', 'films', '2022-11-18 01:29:31', '2022-11-18 01:29:31'),
(49, 'add_films', 'films', '2022-11-18 01:29:31', '2022-11-18 01:29:31'),
(50, 'delete_films', 'films', '2022-11-18 01:29:31', '2022-11-18 01:29:31'),
(51, 'browse_film_categories', 'film_categories', '2022-11-18 03:00:20', '2022-11-18 03:00:20'),
(52, 'read_film_categories', 'film_categories', '2022-11-18 03:00:20', '2022-11-18 03:00:20'),
(53, 'edit_film_categories', 'film_categories', '2022-11-18 03:00:20', '2022-11-18 03:00:20'),
(54, 'add_film_categories', 'film_categories', '2022-11-18 03:00:21', '2022-11-18 03:00:21'),
(55, 'delete_film_categories', 'film_categories', '2022-11-18 03:00:21', '2022-11-18 03:00:21'),
(56, 'browse_film_types', 'film_types', '2022-11-18 19:06:45', '2022-11-18 19:06:45'),
(57, 'read_film_types', 'film_types', '2022-11-18 19:06:45', '2022-11-18 19:06:45'),
(58, 'edit_film_types', 'film_types', '2022-11-18 19:06:45', '2022-11-18 19:06:45'),
(59, 'add_film_types', 'film_types', '2022-11-18 19:06:45', '2022-11-18 19:06:45'),
(60, 'delete_film_types', 'film_types', '2022-11-18 19:06:45', '2022-11-18 19:06:45'),
(61, 'browse_film_authors', 'film_authors', '2022-11-19 00:15:52', '2022-11-19 00:15:52'),
(62, 'read_film_authors', 'film_authors', '2022-11-19 00:15:52', '2022-11-19 00:15:52'),
(63, 'edit_film_authors', 'film_authors', '2022-11-19 00:15:52', '2022-11-19 00:15:52'),
(64, 'add_film_authors', 'film_authors', '2022-11-19 00:15:52', '2022-11-19 00:15:52'),
(65, 'delete_film_authors', 'film_authors', '2022-11-19 00:15:52', '2022-11-19 00:15:52'),
(76, 'browse_contacts', 'contacts', '2022-11-19 00:25:46', '2022-11-19 00:25:46'),
(77, 'read_contacts', 'contacts', '2022-11-19 00:25:46', '2022-11-19 00:25:46'),
(78, 'edit_contacts', 'contacts', '2022-11-19 00:25:46', '2022-11-19 00:25:46'),
(79, 'add_contacts', 'contacts', '2022-11-19 00:25:46', '2022-11-19 00:25:46'),
(80, 'delete_contacts', 'contacts', '2022-11-19 00:25:46', '2022-11-19 00:25:46'),
(81, 'browse_showtimes', 'showtimes', '2022-11-19 02:45:45', '2022-11-19 02:45:45'),
(82, 'read_showtimes', 'showtimes', '2022-11-19 02:45:45', '2022-11-19 02:45:45'),
(83, 'edit_showtimes', 'showtimes', '2022-11-19 02:45:45', '2022-11-19 02:45:45'),
(84, 'add_showtimes', 'showtimes', '2022-11-19 02:45:45', '2022-11-19 02:45:45'),
(85, 'delete_showtimes', 'showtimes', '2022-11-19 02:45:45', '2022-11-19 02:45:45'),
(86, 'browse_gallery', 'gallery', '2022-11-20 18:24:25', '2022-11-20 18:24:25'),
(87, 'read_gallery', 'gallery', '2022-11-20 18:24:25', '2022-11-20 18:24:25'),
(88, 'edit_gallery', 'gallery', '2022-11-20 18:24:25', '2022-11-20 18:24:25'),
(89, 'add_gallery', 'gallery', '2022-11-20 18:24:25', '2022-11-20 18:24:25'),
(90, 'delete_gallery', 'gallery', '2022-11-20 18:24:25', '2022-11-20 18:24:25'),
(91, 'browse_galleries', 'galleries', '2022-11-20 18:33:42', '2022-11-20 18:33:42'),
(92, 'read_galleries', 'galleries', '2022-11-20 18:33:42', '2022-11-20 18:33:42'),
(93, 'edit_galleries', 'galleries', '2022-11-20 18:33:42', '2022-11-20 18:33:42'),
(94, 'add_galleries', 'galleries', '2022-11-20 18:33:42', '2022-11-20 18:33:42'),
(95, 'delete_galleries', 'galleries', '2022-11-20 18:33:42', '2022-11-20 18:33:42');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(25, 1),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(49, 1),
(49, 2),
(50, 1),
(50, 2),
(51, 1),
(51, 2),
(52, 1),
(52, 2),
(53, 1),
(53, 2),
(54, 1),
(54, 2),
(55, 1),
(55, 2),
(56, 1),
(56, 2),
(57, 1),
(57, 2),
(58, 1),
(58, 2),
(59, 1),
(59, 2),
(60, 1),
(60, 2),
(61, 1),
(61, 2),
(62, 1),
(62, 2),
(63, 1),
(63, 2),
(64, 1),
(64, 2),
(65, 1),
(65, 2),
(76, 1),
(76, 2),
(77, 1),
(77, 2),
(78, 1),
(78, 2),
(79, 1),
(79, 2),
(80, 1),
(80, 2),
(81, 1),
(81, 2),
(82, 1),
(82, 2),
(83, 1),
(83, 2),
(84, 1),
(84, 2),
(85, 1),
(85, 2),
(86, 1),
(86, 2),
(87, 1),
(87, 2),
(88, 1),
(88, 2),
(89, 1),
(89, 2),
(90, 1),
(90, 2),
(91, 1),
(91, 2),
(92, 1),
(92, 2),
(93, 1),
(93, 2),
(94, 1),
(94, 2),
(95, 1),
(95, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pivot_authors_films`
--

CREATE TABLE `pivot_authors_films` (
  `id` int(10) UNSIGNED NOT NULL,
  `film_author_id` int(11) DEFAULT NULL,
  `film_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pivot_authors_films`
--

INSERT INTO `pivot_authors_films` (`id`, `film_author_id`, `film_id`) VALUES
(1, 1, 16),
(2, 2, 16),
(3, 3, 16);

-- --------------------------------------------------------

--
-- Table structure for table `pivot_category_films`
--

CREATE TABLE `pivot_category_films` (
  `id` int(10) UNSIGNED NOT NULL,
  `film_category_id` int(11) DEFAULT NULL,
  `film_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pivot_category_films`
--

INSERT INTO `pivot_category_films` (`id`, `film_category_id`, `film_id`) VALUES
(4, 3, 8),
(5, 3, 7),
(6, 3, 10),
(7, 3, 9),
(8, 3, 15),
(9, 3, 18),
(10, 1, 16),
(11, 2, 16),
(12, 1, 13),
(13, 1, 17),
(14, 1, 18),
(15, 1, 11),
(16, 2, 13),
(17, 2, 12),
(18, 2, 7),
(19, 2, 10),
(20, 2, 18);

-- --------------------------------------------------------

--
-- Table structure for table `pivot_types_films`
--

CREATE TABLE `pivot_types_films` (
  `id` int(10) UNSIGNED NOT NULL,
  `film_type_id` int(11) DEFAULT NULL,
  `film_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pivot_types_films`
--

INSERT INTO `pivot_types_films` (`id`, `film_type_id`, `film_id`) VALUES
(1, 1, 18),
(2, 3, 18),
(3, 5, 18),
(4, 6, 18),
(5, 7, 18),
(6, 8, 18),
(7, 9, 18),
(8, 10, 18),
(9, 11, 18),
(10, 12, 18),
(11, 13, 18),
(12, 14, 18),
(13, 15, 18),
(14, 16, 18),
(15, 1, 16),
(16, 3, 16),
(17, 5, 16),
(18, 6, 16);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `description`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Dự án Phát triển tổng hợp đô thị động lực cơ bản đảm bảo tiến độ', 'Dự án Phát triển tổng hợp đô thị động lực cơ bản đảm bảo tiến độ', 'Chiều 16-11, đồng chí Lê Quang Tiến, Phó Chủ tịch UBND tỉnh, chủ trì buổi làm việc với đại diện Ngân hàng Thế giới để đánh giá tiến độ thực hiện Dự án Phát triển tổng hợp đô thị động lực TP. Thái Nguyên, vay vốn WB (ảnh). Tham dự buổi làm việc có lãnh đạo các sở, ngành của tỉnh; lãnh đạo TP. Thái Nguyên.', '<div>\r\n<table class=\"image center\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"new\"><a class=\"example-image-link\" href=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/1dscf2627_20221116144330_20221116161929.jpg\" data-lightbox=\"slide-1\" data-title=\"&nbsp;\"><img src=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/1dscf2627_20221116144330_20221116161929.jpg\" alt=\"\"></a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"desc\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p><strong>Chiều 16-11, đồng ch&iacute; L&ecirc; Quang Tiến, Ph&oacute; Chủ tịch UBND tỉnh,&nbsp;</strong><strong>chủ tr&igrave; buổi l&agrave;m việc với đại diện Ng&acirc;n h&agrave;ng Thế giới để đ&aacute;nh gi&aacute; tiến độ thực hiện Dự &aacute;n Ph&aacute;t triển tổng hợp đ&ocirc; thị động lực TP. Th&aacute;i Nguy&ecirc;n, vay vốn WB (ảnh). Tham dự buổi l&agrave;m việc c&oacute; l&atilde;nh đạo c&aacute;c sở, ng&agrave;nh của tỉnh; l&atilde;nh đạo TP. Th&aacute;i Nguy&ecirc;n.</strong></p>\r\n<div class=\"media_core\" align=\"center\">\r\n<p>Dự &aacute;n Ph&aacute;t triển tổng hợp đ&ocirc; thị động lực gồm c&oacute; 2 hợp phần. Hợp phần 1 l&agrave; đầu tư kết cấu, n&acirc;ng cấp, cải thiện v&agrave; x&acirc;y dựng cơ sở hạ tầng đ&ocirc; thị (3/9 hạng mục đ&atilde; ho&agrave;n th&agrave;nh); hợp phần 2 l&agrave; đầu tư phi kết cấu, hỗ trợ kỹ thuật v&agrave; hỗ trợ thực hiện (4/11 g&oacute;i thầu đ&atilde; ho&agrave;n th&agrave;nh).</p>\r\n</div>\r\n<p>Tổng mức đầu tư của Dự &aacute;n 2.250 tỷ đồng, trong đ&oacute;, vốn vay Ng&acirc;n h&agrave;ng Thế giới l&agrave; tr&ecirc;n 1.200 tỷ đồng, c&ograve;n lại l&agrave; vốn đối ứng địa phương tự c&acirc;n đối. Dự &aacute;n c&oacute; thời gian thực hiện từ năm 2018 đến năm 2023.</p>\r\n<p>Theo b&aacute;o c&aacute;o, trong hợp phần 1, với 9 hạng mục đầu tư, đến nay đ&atilde; c&oacute; 3 c&ocirc;ng tr&igrave;nh ho&agrave;n th&agrave;nh, gồm: Trường mầm non Hương Sơn; Trường Mầm non Phan Đ&igrave;nh Ph&ugrave;ng v&agrave; cầu Đ&aacute;n. 6 c&ocirc;ng tr&igrave;nh đang được đẩy nhanh tiến độ x&acirc;y lắp, với khối lượng ho&agrave;n th&agrave;nh từ 60-70%, gồm: N&acirc;ng cấp đường Khu d&acirc;n cư Đồng Bẩm; x&acirc;y dựng đường Huống Thượng - Ch&ugrave;a Hang; x&acirc;y dựng đường Bắc Nam v&agrave; cầu Huống Thượng; n&acirc;ng cấp đường L&ecirc; Hữu Tr&aacute;c; cải tạo tuyến mương tho&aacute;t nước Xương Rồng v&agrave; tuyến mương tho&aacute;t nước Mỏ Bạch.</p>\r\n<p>Về c&ocirc;ng t&aacute;c t&agrave;i ch&iacute;nh, lũy kế giải ng&acirc;n nguồn vốn vay đến nay đạt hơn 680 tỷ đồng (tr&ecirc;n 53% kế hoạch); lũy kế giải ng&acirc;n vốn đối ứng đạt tr&ecirc;n 613 tỷ đồng, bằng hơn 63% kế hoạch&hellip;</p>\r\n<p>Ph&aacute;t biểu tại buổi l&agrave;m việc, đồng ch&iacute; Ph&oacute; Chủ tịch UBND tỉnh Th&aacute;i Nguy&ecirc;n L&ecirc; Quang Tiến khẳng định, thời gian qua tỉnh đ&atilde; rất s&aacute;t sao trong c&ocirc;ng t&aacute;c l&atilde;nh đạo, chỉ đạo triển khai Dự &aacute;n, v&igrave; thế hầu hết c&aacute;c hạng mục, c&ocirc;ng tr&igrave;nh cơ bản đạt tiến độ đề ra, tỷ lệ giải ph&oacute;ng mặt bằng hiện đạt 93%.</p>\r\n<div>\r\n<table class=\"image center\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"new\"><a class=\"example-image-link\" href=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/2dscf2615_20221116144330_20221116161856.jpg\" data-lightbox=\"slide-1\" data-title=\"Đồng ch&iacute; L&ecirc; Quang Tiến ph&aacute;t biểu tại buổi l&agrave;m việc. Ảnh: LK\"><img src=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/2dscf2615_20221116144330_20221116161856.jpg\" alt=\"Đồng ch&iacute; L&ecirc; Quang Tiến ph&aacute;t biểu tại buổi l&agrave;m việc. Ảnh: LK\"></a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"desc\">Đồng ch&iacute; L&ecirc; Quang Tiến ph&aacute;t biểu tại buổi l&agrave;m việc. Ảnh: LK</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>Để Dự &aacute;n ho&agrave;n th&agrave;nh v&agrave; đưa v&agrave;o sử dụng trong năm 2023 theo kế hoạch, đồng ch&iacute; Ph&oacute; Chủ tịch UBND tỉnh chỉ đạo UBND TP. Th&aacute;i Nguy&ecirc;n quyết liệt hơn nữa trong c&ocirc;ng t&aacute;c giải ph&oacute;ng mặt bằng; tập trung đối thoại, tuy&ecirc;n truyền, vận động để nh&acirc;n d&acirc;n đồng thuận. Những trường hợp cố t&igrave;nh kh&ocirc;ng b&agrave;n giao mặt bằng, kh&ocirc;ng chấp h&agrave;nh quy định của ph&aacute;p luật sẽ bị xử l&yacute; nghi&ecirc;m minh.</p>\r\n<p>Đồng ch&iacute; y&ecirc;u cầu c&aacute;c sở, ng&agrave;nh li&ecirc;n quan của tỉnh tiếp tục phối hợp chặt chẽ, ho&agrave;n thiện thủ tục khi c&aacute;c hạng mục của Dự &aacute;n ho&agrave;n th&agrave;nh để sớm đưa v&agrave;o sử dụng&hellip;</p>', 'posts/November2022/7bswZdSNXQpteYJc25Xo.png', 'du-an-phat-trien-tong-hop-do-thi-dong-luc-co-ban-dam-bao-tien-do', 'Chiều 16-11, đồng chí Lê Quang Tiến, Phó Chủ tịch UBND tỉnh, chủ trì buổi làm việc với đại diện Ngân hàng Thế giới để đánh giá tiến độ thực hiện Dự án Phát triển tổng hợp đô thị động lực TP. Thái Nguyên, vay vốn WB (ảnh). Tham dự buổi làm việc có lãnh đạo các sở, ngành của tỉnh; lãnh đạo TP. Thái Nguyên.', 'keyword1, keyword2, keyword3', 'PUBLISHED', 1, '2022-11-17 21:13:04', '2022-11-19 01:14:05'),
(2, 1, 3, 'Đồng chí Chủ tịch UBND tỉnh chung vui Ngày hội Đại đoàn kết với nhân dân xóm Long Vân', 'Đồng chí Chủ tịch UBND tỉnh chung vui Ngày hội Đại đoàn kết với nhân dân xóm Long Vân', 'Ngày 16-11, đồng chí Trịnh Việt Hùng, Ủy viên dự khuyết Trung ương Đảng, Phó Bí thư Tỉnh ủy, Chủ tịch UBND tỉnh, đến dự và chung vui Ngày hội Đại đoàn kết toàn dân tộc với bà con nhân dân xóm Long Vân, xã Bình Sơn', '<p><strong>Ng&agrave;y 16-11, đồng ch&iacute; Trịnh Việt H&ugrave;ng, Ủy vi&ecirc;n dự khuyết Trung ương Đảng, Ph&oacute; B&iacute; thư Tỉnh ủy, Chủ tịch UBND tỉnh, đến dự v&agrave; chung vui Ng&agrave;y hội Đại đo&agrave;n kết to&agrave;n d&acirc;n tộc với b&agrave; con nh&acirc;n d&acirc;n x&oacute;m Long V&acirc;n, x&atilde; B&igrave;nh Sơn (TP. S&ocirc;ng C&ocirc;ng). C&ugrave;ng dự c&oacute; đồng ch&iacute; Dương Xu&acirc;n H&ugrave;ng, Uỷ vi&ecirc;n Ban Thường vụ, Trưởng Ban Tổ chức Tỉnh uỷ; l&atilde;nh đạo c&aacute;c sở, ng&agrave;nh của tỉnh v&agrave; TP. S&ocirc;ng C&ocirc;ng.</strong></p>\r\n<div>\r\n<table class=\"image center\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"new\"><a class=\"example-image-link\" href=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/chutich16-11-2022_20221116141315.jpg\" data-lightbox=\"slide-1\" data-title=\"Đồng ch&iacute; Trịnh Việt H&ugrave;ng v&agrave; người d&acirc;n x&oacute;m Long V&acirc;n. Ảnh: M.H\"><img src=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/chutich16-11-2022_20221116141315.jpg\"></a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"desc\">Đồng ch&iacute; Trịnh Việt H&ugrave;ng v&agrave; người d&acirc;n x&oacute;m Long V&acirc;n. Ảnh: M.H</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>X&oacute;m Long V&acirc;n c&oacute; 81 hộ&nbsp;với 375 nh&acirc;n khẩu. Đa số hộ&nbsp;l&agrave;m n&ocirc;ng nghiệp, với nghề truyền thống l&agrave; trồng v&agrave; chế biến ch&egrave;. Những năm qua, người d&acirc;n trong x&oacute;m đ&atilde; tập trung ph&aacute;t triển kinh tế, x&acirc;y dựng đời sống văn h&oacute;a, thực hiện nếp sống văn minh trong việc cưới, việc tang, chấp h&agrave;nh tốt c&aacute;c chủ trương, đường lối của Đảng, ch&iacute;nh s&aacute;ch, ph&aacute;p luật của Nh&agrave; nước&hellip;</p>\r\n<div class=\"media_core\" align=\"center\"><video id=\"aid-e7837c02847ee9b801847f828aa90b49\" poster=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/e7837c0280098a32018025deb5503ba0/112022/16112022_sep_hung_du_dai_doan_ket.00_00_00_29.still001_20221116150412.jpg\" controls=\"controls\" width=\"100%\"></video>\r\n<p>&nbsp;</p>\r\n</div>\r\n<table class=\"image center\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"new\"><a class=\"example-image-link\" href=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/chutich3.16-11-2022_20221116141315.jpg\" data-lightbox=\"slide-1\" data-title=\"Người d&acirc;n x&oacute;m Long V&acirc;n tham gia thi đ&oacute;ng g&oacute;i v&agrave; pha ch&egrave; tại Ng&agrave;y hội.&nbsp;Ảnh: M.H\"><img src=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/chutich3.16-11-2022_20221116141315.jpg\"></a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"desc\">Người d&acirc;n x&oacute;m Long V&acirc;n tham gia thi đ&oacute;ng g&oacute;i v&agrave; pha ch&egrave; tại Ng&agrave;y hội.&nbsp;Ảnh: M.H</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Hiện nay, thu nhập b&igrave;nh qu&acirc;n của người d&acirc;n trong x&oacute;m đạt 40 triệu đồng/người/năm; số hộ kh&aacute;, gi&agrave;u chiếm 65%;&nbsp;100% hộ được sử dụng điện v&agrave; nước&nbsp;hợp vệ sinh trong&nbsp;sinh hoạt. X&oacute;m Long V&acirc;n hiện chỉ c&ograve;n 1 hộ ngh&egrave;o v&agrave; 1 hộ cận ngh&egrave;o.&nbsp;</p>\r\n<table class=\"image center\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"new\"><a class=\"example-image-link\" href=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/chutich4.16-11-2022_20221116141315.jpg\" data-lightbox=\"slide-1\" data-title=\"L&atilde;nh đạo TP. S&ocirc;ng C&ocirc;ng chung vui Ng&agrave;y hội Đại đo&agrave;n kết với nh&acirc;n d&acirc;n x&oacute;m Long V&acirc;n.&nbsp;Ảnh: M.H\"><img src=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/chutich4.16-11-2022_20221116141315.jpg\"></a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"desc\">L&atilde;nh đạo TP. S&ocirc;ng C&ocirc;ng chung vui Ng&agrave;y hội Đại đo&agrave;n kết với nh&acirc;n d&acirc;n x&oacute;m Long V&acirc;n.&nbsp;Ảnh: M.H</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Trong năm 2022, x&oacute;m Long V&acirc;n&nbsp;đ&atilde; huy động được c&aacute;c nguồn lực để x&acirc;y dựng Nh&agrave; văn h&oacute;a với tổng trị gi&aacute; tr&ecirc;n 700 triệu đồng; lắp đặt hệ thống điện chiếu s&aacute;ng c&ocirc;ng cộng; chỉnh trang khu vui chơi, thể thao... Qua đ&oacute;&nbsp;phấn đấu trở th&agrave;nh x&oacute;m n&ocirc;ng th&ocirc;n mới kiểu mẫu v&agrave;o cuối năm nay. 2022 cũng l&agrave; năm thứ 6 li&ecirc;n tiếp Long V&acirc;n&nbsp;đạt X&oacute;m văn ho&aacute;; 100%&nbsp;hộ đạt Gia đ&igrave;nh văn h&oacute;a,&nbsp;trong đ&oacute; c&oacute; 12 gia đ&igrave;nh văn h&oacute;a ti&ecirc;u biểu&hellip;</p>\r\n<div>\r\n<table class=\"image center\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"new\"><a class=\"example-image-link\" href=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/chutich6.16-11-2022_20221116141453.jpg\" data-lightbox=\"slide-1\" data-title=\"Đồng ch&iacute; Trịnh Việt H&ugrave;ng trao tặng x&oacute;m Long V&acirc;n bức tranh \"><img src=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/chutich6.16-11-2022_20221116141453.jpg\"></a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"desc\">Đồng ch&iacute; Trịnh Việt H&ugrave;ng trao tặng x&oacute;m Long V&acirc;n bức tranh \"B&aacute;c Hồ với B&aacute;c T&ocirc;n\".&nbsp;Ảnh: M.H</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>Ph&aacute;t biểu tại Ng&agrave;y hội, đồng ch&iacute; Chủ tịch UBND tỉnh Trịnh Việt H&ugrave;ng ghi nhận, biểu dương những kết quả nổi bật nh&acirc;n d&acirc;n x&oacute;m Long V&acirc;n đ&atilde; đạt được. Đồng thời&nbsp;động vi&ecirc;n b&agrave; con tiếp tục phấn đấu&nbsp;đạt th&agrave;nh t&iacute;ch cao hơn nữa trong ph&aacute;t triển kinh tế, n&acirc;ng cao đời sống&nbsp;v&agrave;&nbsp;x&acirc;y dựng n&ocirc;ng th&ocirc;n mới; tiếp tục ph&aacute;t huy sức mạnh khối đại đo&agrave;n kết to&agrave;n d&acirc;n...</p>\r\n<p>Đồng ch&iacute; Chủ tịch UBND tỉnh cũng&nbsp;đề nghị TP. S&ocirc;ng C&ocirc;ng tập trung đẩy nhanh tiến độ Dự &aacute;n&nbsp;đường du lịch S&ocirc;ng C&ocirc;ng - N&uacute;i Cốc, qua đ&oacute; tạo động lực th&uacute;c đẩy ph&aacute;t triển kinh tế - x&atilde; hội của địa phương.</p>\r\n<div>\r\n<table class=\"image center\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"new\"><a class=\"example-image-link\" href=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/chutich5.16-11-2022_20221116141453.jpg\" data-lightbox=\"slide-1\" data-title=\"Đồng ch&iacute; Trịnh Việt H&ugrave;ng tặng qu&agrave; cho c&aacute;c hộ ngh&egrave;o, gia đ&igrave;nh ch&iacute;nh s&aacute;ch của x&oacute;m Long V&acirc;n.&nbsp;Ảnh: M.H\"><img src=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/chutich5.16-11-2022_20221116141453.jpg\"></a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"desc\">Đồng ch&iacute; Trịnh Việt H&ugrave;ng tặng qu&agrave; cho c&aacute;c hộ ngh&egrave;o, gia đ&igrave;nh ch&iacute;nh s&aacute;ch của x&oacute;m Long V&acirc;n.&nbsp;Ảnh: M.H</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>Trong kh&ocirc;ng kh&iacute; thắm t&igrave;nh đo&agrave;n kết, thay mặt&nbsp;Tỉnh uỷ, HĐND, UBND, Uỷ ban MTTQ tỉnh, đồng ch&iacute;&nbsp;Chủ tịch UBND tỉnh&nbsp;tặng nh&acirc;n d&acirc;n x&oacute;m Long V&acirc;n&nbsp;bức tranh \"B&aacute;c Hồ với B&aacute;c T&ocirc;n\" v&agrave; phần qu&agrave; trị gi&aacute; 3 triệu đồng; trao&nbsp;tặng&nbsp;10 phần qu&agrave; cho c&aacute;c&nbsp;hộ ngh&egrave;o, gia đ&igrave;nh ch&iacute;nh s&aacute;ch của&nbsp;x&oacute;m.&nbsp;</p>\r\n<p>Dịp n&agrave;y, l&atilde;nh đạo TP. S&ocirc;ng C&ocirc;ng v&agrave; một số&nbsp;cơ quan, đơn vị&nbsp;cũng&nbsp;tặng nhiều phần qu&agrave; &yacute; nghĩa cho b&agrave; con x&oacute;m Long V&acirc;n.</p>\r\n<div>\r\n<table class=\"image center\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"new\"><a class=\"example-image-link\" href=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/chutich2.16-11-2022_20221116141453.jpg\" data-lightbox=\"slide-1\" data-title=\"C&ocirc;ng ty CP Minh Tr&acirc;m Th&aacute;i Nguy&ecirc;n trao tặng 100 chiếc ghế Xu&acirc;n H&ograve;a (trị gi&aacute; 33 triệu đồng) cho x&oacute;m Long V&acirc;n.&nbsp;Ảnh: M.H\"><img src=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/chutich2.16-11-2022_20221116141453.jpg\"></a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"desc\">C&ocirc;ng ty CP Minh Tr&acirc;m Th&aacute;i Nguy&ecirc;n trao tặng 100 chiếc ghế Xu&acirc;n H&ograve;a (trị gi&aacute; 33 triệu đồng) cho x&oacute;m Long V&acirc;n.&nbsp;Ảnh: M.H</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>Cũng trong dịp n&agrave;y, Uỷ ban MTTQ tỉnh&nbsp;trao tặng Bằng khen cho nh&acirc;n d&acirc;n x&atilde; B&igrave;nh Sơn v&agrave; x&oacute;m Long V&acirc;n v&igrave; đ&atilde;&nbsp;c&oacute; th&agrave;nh t&iacute;ch ti&ecirc;u biểu trong thực hiện cuộc vận động &ldquo;To&agrave;n d&acirc;n đo&agrave;n kết x&acirc;y dựng n&ocirc;ng th&ocirc;n mới, đ&ocirc; thị văn minh&rdquo;.&nbsp;</p>', 'posts/November2022/4eo6PA3ONRgfWe0obUAt.png', 'dong-chi-chu-tich-ubnd-tinh-chung-vui-ngay-hoi-dai-doan-ket-voi-nhan-dan-xom-long-van', 'Ngày 16-11, đồng chí Trịnh Việt Hùng, Ủy viên dự khuyết Trung ương Đảng, Phó Bí thư Tỉnh ủy, Chủ tịch UBND tỉnh, đến dự và chung vui Ngày hội Đại đoàn kết toàn dân tộc với bà con nhân dân xóm Long Vân, xã Bình Sơn', 'keyword1, keyword2, keyword3', 'PUBLISHED', 1, '2022-11-17 21:13:04', '2022-11-19 01:14:57'),
(3, 1, 3, 'HĐND TP. Thái Nguyên: Thống nhất nội dung, chương trình kỳ họp cuối năm', 'HĐND TP. Thái Nguyên: Thống nhất nội dung, chương trình kỳ họp cuối năm', 'Chiều 14-11, HĐND TP. Thái Nguyên tổ chức Hội nghị thống nhất nội dung, chương trình kỳ họp thường lệ cuối năm 2022 (kỳ họp thứ 8) khóa XIX, nhiệm kỳ 2021-2026.', '<p><strong>Chiều 14-11, HĐND TP. Th&aacute;i Nguy&ecirc;n tổ chức Hội nghị thống nhất nội dung, chương tr&igrave;nh kỳ họp thường lệ cuối năm 2022 (kỳ họp thứ 8) kh&oacute;a XIX, nhiệm kỳ 2021-2026.</strong></p>\r\n<div>\r\n<table class=\"image center\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"new\"><a class=\"example-image-link\" href=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/hdnd14-11-2022_20221114155044.jpg\" data-lightbox=\"slide-1\" data-title=\"L&atilde;nh đạo HĐND TP. Th&aacute;i Nguy&ecirc;n ph&aacute;t biểu tại Hội nghị.\"><img src=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/hdnd14-11-2022_20221114155044.jpg\"></a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"desc\">L&atilde;nh đạo HĐND TP. Th&aacute;i Nguy&ecirc;n ph&aacute;t biểu tại Hội nghị.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>Kỳ họp thứ 8 HĐND TP. Th&aacute;i Nguy&ecirc;n dự kiến sẽ được tổ chức trong ba&nbsp;ng&agrave;y, từ 14 đến 16/12/2022.</p>\r\n<p>C&aacute;c đại biểu dự Kỳ họp sẽ được nghe 20 b&aacute;o c&aacute;o, tờ tr&igrave;nh, th&ocirc;ng b&aacute;o của Thường trực HĐND, c&aacute;c ban HĐND, UBND, Ủy ban MTTQ th&agrave;nh phố tr&igrave;nh. Trong đ&oacute; c&oacute;&nbsp;một số nội dung đ&aacute;ng ch&uacute; &yacute; như: B&aacute;o c&aacute;o kết quả c&ocirc;ng t&aacute;c năm 2022, phương hướng nhiệm vụ c&ocirc;ng t&aacute;c năm 2023 của HĐND th&agrave;nh phố; B&aacute;o c&aacute;o, tờ tr&igrave;nh về kết quả thực hiện nhiệm vụ ph&aacute;t triển kinh tế - x&atilde; hội năm 2022, nhiệm vụ ph&aacute;t triển kinh tế - x&atilde; hội năm 2023 TP. Th&aacute;i Nguy&ecirc;n; B&aacute;o c&aacute;o kết quả triển khai thực hiện c&aacute;c đề &aacute;n ph&aacute;t triển kinh tế - x&atilde; hội TP. Th&aacute;i Nguy&ecirc;n&nbsp;giai đoạn 2021-2025&hellip;</p>\r\n<p>Ngo&agrave;i ra, tại kỳ họp n&agrave;y, c&aacute;c đại biểu cũng sẽ thảo luận, xem x&eacute;t v&agrave; th&ocirc;ng qua&nbsp;một số nghị quyết, vấn đề quan trọng kh&aacute;c.</p>\r\n<p>Để chuẩn bị cho kỳ họp, l&atilde;nh đạo HĐND TP. Th&aacute;i Nguy&ecirc;n giao nhiệm vụ cho c&aacute;c cơ quan, đơn vị chuy&ecirc;n m&ocirc;n phối hợp x&acirc;y dựng kế hoạch, chương tr&igrave;nh v&agrave; lịch tiếp x&uacute;c cử tri trước v&agrave; sau kỳ họp; chuẩn bị c&aacute;c t&agrave;i liệu, b&aacute;o c&aacute;o, tờ tr&igrave;nh v&agrave; dự thảo nghị quyết dự kiến sẽ tr&igrave;nh tại kỳ họp.</p>\r\n<p>Tr&ecirc;n cơ sở thống nhất &yacute; kiến của c&aacute;c đại biểu, l&atilde;nh đạo HĐND th&agrave;nh phố đề nghị UBND TP. Th&aacute;i Nguy&ecirc;n bổ sung th&ecirc;m 3 b&aacute;o c&aacute;o sẽ tr&igrave;nh tại Kỳ họp thứ t&aacute;m&nbsp;HĐND TP. Th&aacute;i Nguy&ecirc;n, gồm: B&aacute;o c&aacute;o tiến độ điều chỉnh quy hoạch chung TP. Th&aacute;i Nguy&ecirc;n; tiến độ thực hiện c&aacute;c dự &aacute;n sau Hội nghị x&uacute;c tiến đầu tư của tỉnh năm 2018; b&aacute;o c&aacute;o tiến độ triển khai c&aacute;c dự &aacute;n sử dụng nguồn vốn vay Ng&acirc;n h&agrave;ng Thế giới.</p>', 'posts/November2022/WbVMcTCGGpo6yXoBuOkT.png', 'hdnd-tp-thai-nguyen-thong-nhat-noi-dung-chuong-trinh-ky-hop-cuoi-nam', 'Chiều 14-11, HĐND TP. Thái Nguyên tổ chức Hội nghị thống nhất nội dung, chương trình kỳ họp thường lệ cuối năm 2022 (kỳ họp thứ 8) khóa XIX, nhiệm kỳ 2021-2026.', 'keyword1, keyword2, keyword3', 'PUBLISHED', 1, '2022-11-17 21:13:04', '2022-11-19 01:16:05'),
(4, 1, 3, 'Chủ tịch UBND tỉnh Thái Nguyên khen thưởng đột xuất lực lượng tham gia khám phá vụ cướp ngân hàng', 'Chủ tịch UBND tỉnh Thái Nguyên khen thưởng đột xuất lực lượng tham gia khám phá vụ cướp ngân hàng', 'Sáng 15-11, đồng chí Trịnh Việt Hùng, Uỷ viên dự khuyết Trung ương Đảng, Phó Bí thư Tỉnh uỷ, Chủ tịch UBND tỉnh, Chủ tịch Hội đồng Thi đua khen thưởng tỉnh đã gặp mặt, khen thưởng đột xuất lực lượng Công an vì có thành tích xuất sắc trong việc đấu tranh, truy bắt đối tượng gây ra vụ cướp ngân hàng tại T.P Sông Công.', '<div>\r\n<table class=\"image center\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"new\"><a class=\"example-image-link\" href=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/1dsc_0691_20221115122707_20221115130218.jpg\" data-lightbox=\"slide-1\" data-title=\"Đồng ch&iacute; Chủ tịch UBND tỉnh tặng Bằng khen cho c&aacute;c tập thể tham gia điều tra, kh&aacute;m ph&aacute; vụ cướp ng&acirc;n h&agrave;ng tại TP. S&ocirc;ng C&ocirc;ng.\"><img src=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/1dsc_0691_20221115122707_20221115130218.jpg\" alt=\"Đồng ch&iacute; Chủ tịch UBND tỉnh tặng Bằng khen cho c&aacute;c tập thể tham gia điều tra, kh&aacute;m ph&aacute; vụ cướp ng&acirc;n h&agrave;ng tại TP. S&ocirc;ng C&ocirc;ng.\"></a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"desc\">Đồng ch&iacute; Chủ tịch UBND tỉnh tặng Bằng khen cho c&aacute;c tập thể tham gia điều tra, kh&aacute;m ph&aacute; vụ cướp ng&acirc;n h&agrave;ng tại TP. S&ocirc;ng C&ocirc;ng.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>Trước đ&oacute;, v&agrave;o khoảng 14 giờ ng&agrave;y 14-11, tại Ph&ograve;ng Giao dịch Chi nh&aacute;nh Ng&acirc;n h&agrave;ng VietinBank (phường Phố C&ograve;, TP. S&ocirc;ng C&ocirc;ng) xảy ra một vụ cướp. Đối tượng l&agrave; nam thanh ni&ecirc;n đội mũ, đeo khẩu trang, d&ugrave;ng một vật giống s&uacute;ng đe doạ c&aacute;c nh&acirc;n vi&ecirc;n v&agrave; y&ecirc;u cầu lấy tiền bỏ v&agrave;o t&uacute;i của đối tượng. Sau đ&oacute;, đối tượng n&agrave;y điều khiển xe m&ocirc; t&ocirc; kh&ocirc;ng biển kiểm so&aacute;t chạy trốn khỏi hiện trường.</p>\r\n<p>Lực lượng C&ocirc;ng an đ&atilde; nhanh ch&oacute;ng thực hiện đồng bộ c&aacute;c biện ph&aacute;p nghiệp vụ, thu thập th&ocirc;ng tin, r&agrave; so&aacute;t c&aacute;c địa b&agrave;n, đối tượng. Tập trung v&agrave;o c&aacute;c đối tượng li&ecirc;n quan đến cờ bạc, ma tu&yacute; hoặc đ&atilde; phạm tội cướp t&agrave;i sản.</p>\r\n<p>Với tinh thần quyết t&acirc;m v&agrave; mưu tr&iacute;, chỉ sau hơn 10 giờ, c&aacute;c lực lượng đ&atilde; bắt giữ được đối tượng g&acirc;y &aacute;n l&agrave; Phạm Đức Anh, sinh năm 1989, tr&uacute; tại x&atilde; Thượng Đ&igrave;nh (Ph&uacute; B&igrave;nh); đang tạm tr&uacute; tại phường Hồng Tiến (TP. Phổ Y&ecirc;n).</p>\r\n<p>Kh&aacute;m x&eacute;t nơi ở của đối tượng, cơ quan C&ocirc;ng an thu giữ gần 400 triệu đồng, một khẩu s&uacute;ng bằng nhựa v&agrave; một số vật chứng li&ecirc;n quan. Đối tượng khai nhận đ&atilde; d&ugrave;ng 292 triệu đồng mang đi trả nợ&hellip;</p>\r\n<p>Với th&agrave;nh t&iacute;ch đặc biệt xuất sắc của c&aacute;c lực lượng tham gia kh&aacute;m ph&aacute; vụ cướp, Chủ tịch UBND tỉnh quyết định tặng Bằng khen cho 3 tập thể l&agrave;: C&ocirc;ng an tỉnh, C&ocirc;ng an T.P S&ocirc;ng C&ocirc;ng, Ph&ograve;ng Ph&ograve;ng ngừa, đấu tranh v&agrave; hướng dẫn điều tra tội phạm c&oacute; tổ chức, tội phạm g&acirc;y &aacute;n đặc biệt nghi&ecirc;m trọng, Cục Cảnh s&aacute;t h&igrave;nh sự (Bộ C&ocirc;ng an) v&agrave; 10 c&aacute; nh&acirc;n; Gi&aacute;m đốc C&ocirc;ng an tỉnh tặng Giấy khen cho 6 tập thể v&agrave; 12 c&aacute; nh&acirc;n.</p>\r\n<div>\r\n<table class=\"image center\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"new\"><a class=\"example-image-link\" href=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/2dsc_0700_20221115122709_20221115130246.jpg\" data-lightbox=\"slide-1\" data-title=\"Đồng ch&iacute; Chủ tịch UBND tỉnh tặng Bằng khen cho c&aacute;c c&aacute; nh&acirc;n tham gia điều tra, kh&aacute;m ph&aacute; vụ cướp ng&acirc;n h&agrave;ng tại TP. S&ocirc;ng C&ocirc;ng.\"><img src=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/2dsc_0700_20221115122709_20221115130246.jpg\" alt=\"Đồng ch&iacute; Chủ tịch UBND tỉnh tặng Bằng khen cho c&aacute;c c&aacute; nh&acirc;n tham gia điều tra, kh&aacute;m ph&aacute; vụ cướp ng&acirc;n h&agrave;ng tại TP. S&ocirc;ng C&ocirc;ng.\"></a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"desc\">Đồng ch&iacute; Chủ tịch UBND tỉnh tặng Bằng khen cho c&aacute;c c&aacute; nh&acirc;n tham gia điều tra, kh&aacute;m ph&aacute; vụ cướp ng&acirc;n h&agrave;ng tại TP. S&ocirc;ng C&ocirc;ng.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>Đồng ch&iacute; Chủ tịch UBND tỉnh ghi nhận, biểu dương th&agrave;nh t&iacute;ch xuất sắc của c&aacute;c lực lượng khi đ&atilde; nhanh ch&oacute;ng điều tra, kh&aacute;m ph&aacute; vụ việc; qua đ&oacute; g&oacute;p phần đảm bảo an ninh trật tự, trấn an dư luận, củng cố niềm tin của nh&acirc;n d&acirc;n v&agrave;o lực lượng C&ocirc;ng an. Đồng ch&iacute; mong muốn lực lượng C&ocirc;ng an tiếp tục ph&aacute;t huy truyền thống, nỗ lực giữ vững an ninh ch&iacute;nh trị, trật tự - an to&agrave;n x&atilde; hội tr&ecirc;n địa b&agrave;n, đảm bảo cuộc sống b&igrave;nh y&ecirc;n cho nh&acirc;n d&acirc;n.</p>', 'posts/November2022/rXYKWGek9rZhBYhpxkN3.png', 'chu-tich-ubnd-tinh-thai-nguyen-khen-thuong-dot-xuat-luc-luong-tham-gia-kham-pha-vu-cuop-ngan-hang', 'Sáng 15-11, đồng chí Trịnh Việt Hùng, Uỷ viên dự khuyết Trung ương Đảng, Phó Bí thư Tỉnh uỷ, Chủ tịch UBND tỉnh, Chủ tịch Hội đồng Thi đua khen thưởng tỉnh đã gặp mặt, khen thưởng đột xuất lực lượng Công an vì có thành tích xuất sắc trong việc đấu tranh, truy bắt đối tượng gây ra vụ cướp ngân hàng tại T.P Sông Công.', NULL, 'PUBLISHED', 1, '2022-11-17 21:13:04', '2022-11-19 01:17:29'),
(5, 1, 4, 'Mang lại luồng gió mới trong mỗi bài giảng, bồi dưỡng thế hệ tương lai vừa hồng vừa chuyên', 'Mang lại luồng gió mới trong mỗi bài giảng, bồi dưỡng thế hệ tương lai vừa hồng vừa chuyên', 'Nâng cao trình độ chuyên môn; năng động, có cách tiếp cận mới trong dạy và học; tích cực ứng dụng khoa học công nghệ mang lại luồng gió mới với sức thuyết phục cao trong mỗi bài giảng, qua đó góp phần bồi dưỡng thế hệ tương lai của đất nước vừa hồng vừa chuyên.', '<p><strong>N&acirc;ng cao tr&igrave;nh độ chuy&ecirc;n m&ocirc;n; năng động, c&oacute; c&aacute;ch tiếp cận mới trong dạy v&agrave; học; t&iacute;ch cực ứng dụng khoa học c&ocirc;ng nghệ mang lại luồng gi&oacute; mới với sức thuyết phục cao trong mỗi b&agrave;i giảng, qua đ&oacute; g&oacute;p phần bồi dưỡng thế hệ tương lai của đất nước vừa hồng vừa chuy&ecirc;n.</strong></p>\r\n<div>\r\n<table class=\"image center\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"new\"><a class=\"example-image-link\" href=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/thutuong19-11-2022_20221119140934.jpg\" data-lightbox=\"slide-1\" data-title=\"Thủ tướng Phạm Minh Ch&iacute;nh ph&aacute;t biểu tại lễ kỷ niệm.&nbsp;Ảnh: VGP\"><img src=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/thutuong19-11-2022_20221119140934.jpg\"></a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"desc\">Thủ tướng Phạm Minh Ch&iacute;nh ph&aacute;t biểu tại lễ kỷ niệm.&nbsp;Ảnh: VGP</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>Đ&acirc;y l&agrave; chỉ đạo của Thủ tướng Phạm Minh Ch&iacute;nh tại Lễ kỷ niệm 40 năm Ng&agrave;y Nh&agrave; gi&aacute;o Việt Nam (20/11/1982 - 20/11/2022) diễn ra s&aacute;ng 19-11 tại H&agrave; Nội. C&ugrave;ng dự c&oacute; Ph&oacute; Thủ tướng Vũ Đức Đam.</p>\r\n<p>Nh&acirc;n dịp n&agrave;y, Tổng B&iacute; thư Nguyễn Ph&uacute; Trọng, Chủ tịch Quốc hội Vương Đ&igrave;nh Huệ gửi lẵng hoa ch&uacute;c mừng.</p>\r\n<p>Tại buổi lễ, Bộ trưởng Gi&aacute;o dục v&agrave; Đ&agrave;o tạo Nguyễn Kim Sơn cho biết, sau hơn 10 năm thực hiện mục ti&ecirc;u quốc gia về phổ cập gi&aacute;o dục mầm non cho trẻ em 5 tuổi, mức phổ cập đ&atilde; đạt 99,9%; cấp tiểu học 63/63 tỉnh th&agrave;nh đều đạt chất lượng phổ cập mức độ 2, trong đ&oacute; 26 địa phương đạt mức độ 3. 63/63 tỉnh th&agrave;nh đều đạt chuẩn phổ cập gi&aacute;o dục THCS cấp độ 1, một số địa phương đạt mức độ 2 v&agrave; 3.</p>\r\n<p>Hơn 60% trường mầm non v&agrave; trường phổ th&ocirc;ng đạt chuẩn Quốc gia. Uy t&iacute;n v&agrave; chất lượng gi&aacute;o dục nước ta kh&ocirc;ng ngừng được cải thiện v&agrave; được c&aacute;c tổ chức quốc tế ghi nhận.</p>\r\n<p>Theo Bảng xếp hạng c&aacute;c quốc gia c&oacute; nền gi&aacute;o dục tốt nhất năm 2021, gi&aacute;o dục Việt Nam đứng thứ 59 tr&ecirc;n thế giới (USNEWS). Việt Nam hiện được xếp v&agrave;o nh&oacute;m 10 hệ thống gi&aacute;o dục c&oacute; sự đổi mới mạnh mẽ h&agrave;ng đầu của thế giới.</p>\r\n<p>Trong c&aacute;c Chương tr&igrave;nh đ&aacute;nh gi&aacute; học sinh quốc tế, lứa tuổi 15 (PISA), học sinh nước ta đều đạt kết quả ấn tượng, vượt qua mức trung b&igrave;nh của Tổ chức Hợp t&aacute;c v&agrave; Ph&aacute;t triển kinh tế (OECD).</p>\r\n<p>Học sinh Việt Nam tham dự c&aacute;c kỳ thi Olympic ch&acirc;u &Aacute; v&agrave; quốc tế đều đoạt giải cao với nhiều huy chương, đặc biệt, đo&agrave;n học sinh Việt Nam tham dự c&aacute;c kỳ thi Olympic To&aacute;n học v&agrave; khoa học quốc tế đều nằm ở top đầu.</p>\r\n<p>Hiện nay, Việt Nam đ&atilde; c&oacute; nhiều trường đại học nằm trong top 500 c&aacute;c trường đại học tốt nhất ch&acirc;u &Aacute; v&agrave; trong nh&oacute;m 1.000 c&aacute;c trường đại học tốt nhất thế giới, theo c&aacute;c bảng xếp hạng c&oacute; uy t&iacute;n tr&ecirc;n thế giới. Th&agrave;nh tựu về gi&aacute;o dục đ&atilde; g&oacute;p phần quan trọng v&agrave;o việc n&acirc;ng cao chất lượng nguồn nh&acirc;n lực phục vụ c&ocirc;ng nghiệp h&oacute;a v&agrave; hiện đại h&oacute;a đất nước&hellip;</p>\r\n<div>\r\n<table class=\"image center\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"new\"><a class=\"example-image-link\" href=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/nhagiao2.19-11-2022_20221119140935.jpg\" data-lightbox=\"slide-1\" data-title=\"Chương tr&igrave;nh nghệ thuật mở đầu cho buổi lễ kỷ niệm.\"><img src=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/nhagiao2.19-11-2022_20221119140935.jpg\"></a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"desc\">Chương tr&igrave;nh nghệ thuật mở đầu cho buổi lễ kỷ niệm.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>Ph&aacute;t biểu &yacute; kiến tại buổi lễ, Thủ tướng Phạm Minh Ch&iacute;nh nhấn mạnh, sự kiện n&agrave;y l&agrave; ng&agrave;y hội của c&aacute;c thế hệ thầy gi&aacute;o, c&ocirc; gi&aacute;o, những người lu&ocirc;n hết m&igrave;nh cống hiến cho sự nghiệp trồng người cao cả, được cả x&atilde; hội biết ơn v&agrave; t&ocirc;n vinh.</p>\r\n<p>Thay mặt L&atilde;nh đạo Đảng, Nh&agrave; nước, với tất cả t&igrave;nh cảm, sự tri &acirc;n s&acirc;u sắc, Thủ tướng th&acirc;n &aacute;i gửi tới c&aacute;c thế hệ thầy gi&aacute;o, c&ocirc; gi&aacute;o, c&aacute;n bộ quản l&yacute; gi&aacute;o dục tr&ecirc;n mọi miền Tổ quốc lời ch&agrave;o tr&acirc;n trọng, lời thăm hỏi th&acirc;n thiết v&agrave; lời ch&uacute;c mừng tốt đẹp nhất.</p>\r\n<p>Thủ tướng n&ecirc;u r&otilde;, truyền thống hiếu học, t&ocirc;n sư trọng đạo, qu&yacute; trọng hiền t&agrave;i l&agrave; những gi&aacute; trị nh&acirc;n văn s&acirc;u sắc của d&acirc;n tộc ta; l&agrave; một nh&acirc;n tố quan trọng tạo n&ecirc;n tr&iacute; tuệ Việt Nam, đạo đức Việt Nam, văn h&oacute;a v&agrave; con người Việt Nam.</p>\r\n<p>Mỗi người ch&uacute;ng ta đều nhớ những c&acirc;u ca dao, tục ngữ về sự t&ocirc;n trọng v&agrave; biết ơn c&aacute;c thầy c&ocirc; gi&aacute;o: \"Con ơi nhớ lấy c&acirc;u n&agrave;y - Ơn cha, nghĩa mẹ, c&ocirc;ng thầy chớ qu&ecirc;n\"; \"Một kho v&agrave;ng kh&ocirc;ng bằng một nang chữ\".</p>\r\n<p>Chủ tịch Hồ Ch&iacute; Minh - \"Nh&agrave; gi&aacute;o dục vĩ đại\" khai sinh v&agrave; đặt nền m&oacute;ng cho nền gi&aacute;o dục Việt Nam mới lu&ocirc;n quan t&acirc;m x&acirc;y dựng, ph&aacute;t triển nền gi&aacute;o dục nước nh&agrave;. Người chỉ r&otilde; nạn dốt l&agrave; một trong ba thứ giặc, đồng thời khẳng định: \"Một d&acirc;n tộc dốt l&agrave; một d&acirc;n tộc yếu\".</p>\r\n<p>Trong c&ocirc;ng cuộc đổi mới, x&aacute;c định gi&aacute;o dục đ&agrave;o tạo l&agrave; quốc s&aacute;ch h&agrave;ng đầu, Đảng v&agrave; Nh&agrave; nước ta lu&ocirc;n đặc biệt quan t&acirc;m, ban h&agrave;nh v&agrave; triển khai nhiều chủ trương, ch&iacute;nh s&aacute;ch v&agrave; đ&atilde; đạt được những kết quả quan trọng về tư duy, nhận thức v&agrave; tổ chức thực hiện; về cơ chế, ch&iacute;nh s&aacute;ch đ&agrave;o tạo nguồn nh&acirc;n lực, g&oacute;p phần x&acirc;y dựng v&agrave; bảo vệ Tổ quốc. Chất lượng gi&aacute;o dục phổ th&ocirc;ng của nước ta những năm qua được quốc tế ghi nhận, đ&aacute;nh gi&aacute; cao.</p>\r\n<div>\r\n<table class=\"image center\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"new\"><a class=\"example-image-link\" href=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/nhagiao3.19-11-2022_20221119140935.jpg\" data-lightbox=\"slide-1\" data-title=\"Thủ tướng Phạm Minh Ch&iacute;nh v&agrave; c&aacute;c đại biểu tham dự buổi lễ.\"><img src=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/nhagiao3.19-11-2022_20221119140935.jpg\"></a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"desc\">Thủ tướng Phạm Minh Ch&iacute;nh v&agrave; c&aacute;c đại biểu tham dự buổi lễ.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>Hơn hai năm qua, mặc d&ugrave; bị ảnh hưởng nặng nề do đại dịch COVID-19 nhưng nhiều m&ocirc; h&igrave;nh, phương ph&aacute;p dạy học linh hoạt, s&aacute;ng tạo, nhất l&agrave; dạy học trực tuyến đ&atilde; được triển khai với tinh thần &ldquo;tạm dừng đến trường, kh&ocirc;ng dừng việc học&rdquo;; tổ chức th&agrave;nh c&ocirc;ng kỳ thi tốt nghiệp trung học phổ th&ocirc;ng, tuyển sinh đại học, cao đẳng, được nh&acirc;n d&acirc;n ghi nhận, x&atilde; hội đ&aacute;nh gi&aacute; cao.</p>\r\n<p>Kỷ niệm 40 năm Ng&agrave;y Nh&agrave; gi&aacute;o Việt Nam l&agrave; dịp ch&uacute;ng ta tri &acirc;n hơn 1,6 triệu nh&agrave; gi&aacute;o tr&ecirc;n cả nước v&agrave; biết bao thế hệ thầy gi&aacute;o, c&ocirc; gi&aacute;o lu&ocirc;n cống hiến thầm lặng, bền bỉ cho sự nghiệp gi&aacute;o dục thế hệ tương lai. Nhiều thầy c&ocirc; đ&atilde; vượt kh&oacute; vươn l&ecirc;n, l&agrave; tấm gương s&aacute;ng về đạo đức, sự tận tụy, hy sinh, t&acirc;m huyết với nghề; c&oacute; những thầy c&ocirc; đ&atilde; hiến d&acirc;ng cả tuổi xu&acirc;n, trở th&agrave;nh người cha, người mẹ thứ hai của c&aacute;c em học sinh.</p>\r\n<p>Thay mặt L&atilde;nh đạo Đảng, Nh&agrave; nước, một lần nữa, Thủ tướng b&agrave;y tỏ sự k&iacute;nh trọng, tri &acirc;n s&acirc;u sắc tới c&aacute;c thế hệ thầy c&ocirc; gi&aacute;o tr&ecirc;n cả nước, những người g&aacute;nh v&aacute;c sự nghiệp trồng người hết sức cao cả.</p>\r\n<p>Thủ tướng n&ecirc;u r&otilde;, Ch&uacute;ng ta đang sống trong kỷ nguy&ecirc;n to&agrave;n cầu h&oacute;a, hội nhập quốc tế s&acirc;u rộng v&agrave; cuộc C&aacute;ch mạng c&ocirc;ng nghiệp lần thứ tư với nhiều cơ hội, vận hội, nhưng cũng đặt ra kh&ocirc;ng &iacute;t kh&oacute; khăn, thử th&aacute;ch mới.</p>\r\n<p>Sự nghiệp gi&aacute;o dục đ&agrave;o tạo của ch&uacute;ng ta đ&atilde; đạt được nhiều th&agrave;nh tựu quan trọng nhưng vẫn c&ograve;n kh&ocirc;ng &iacute;t hạn chế, yếu k&eacute;m, tồn tại cần sớm khắc phục v&agrave; những th&aacute;ch thức cần vượt qua.</p>\r\n<p>Đại hội XIII của Đảng x&aacute;c định: &ldquo;Tạo đột ph&aacute; trong đổi mới căn bản, to&agrave;n diện gi&aacute;o dục v&agrave; đ&agrave;o tạo, ph&aacute;t triển nguồn nh&acirc;n lực chất lượng cao, thu h&uacute;t v&agrave; trọng dụng nh&acirc;n t&agrave;i&hellip;&rdquo;; &ldquo;Tiếp tục đổi mới đồng bộ mục ti&ecirc;u, nội dung, chương tr&igrave;nh, phương thức, phương ph&aacute;p gi&aacute;o dục v&agrave; đ&agrave;o tạo theo hướng hiện đại, hội nhập quốc tế&hellip;&rdquo;; &ldquo;Gắn gi&aacute;o dục tri thức, đạo đức, thẩm mỹ, kỹ năng sống với gi&aacute;o dục thể chất, n&acirc;ng cao tầm v&oacute;c con người Việt Nam&rdquo;.</p>\r\n<div>\r\n<table class=\"image center\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"new\"><a class=\"example-image-link\" href=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/nhagiao19-11-2022_20221119140935.jpg\" data-lightbox=\"slide-1\" data-title=\"Thủ tướng Phạm Minh Ch&iacute;nh ph&aacute;t biểu tại lễ kỷ niệm.\"><img src=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/nhagiao19-11-2022_20221119140935.jpg\"></a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"desc\">Thủ tướng Phạm Minh Ch&iacute;nh ph&aacute;t biểu tại lễ kỷ niệm.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>Để đạt được những mục ti&ecirc;u n&agrave;y, cần x&aacute;c định r&otilde;, gi&aacute;o dục đ&agrave;o tạo l&agrave; sự nghiệp của Đảng, Nh&agrave; nước v&agrave; của to&agrave;n d&acirc;n. Ph&aacute;t triển gi&aacute;o dục v&agrave; đ&agrave;o tạo l&agrave; n&acirc;ng cao d&acirc;n tr&iacute;, đ&agrave;o tạo nh&acirc;n lực, bồi dưỡng nh&acirc;n t&agrave;i. Gi&aacute;o dục v&agrave; đ&agrave;o tạo phải gắn với nhu cầu ph&aacute;t triển kinh tế - x&atilde; hội v&agrave; bảo vệ Tổ quốc Việt Nam x&atilde; hội chủ nghĩa; với tiến bộ khoa học v&agrave; c&ocirc;ng nghệ; ph&ugrave; hợp với quy luật kh&aacute;ch quan.</p>\r\n<p><em>V&igrave; vậy, Thủ tướng chia sẻ quan t&acirc;m v&agrave; lưu &yacute; một số nội dung sau:</em></p>\r\n<p>Đối với đội ngũ nh&agrave; gi&aacute;o, Chủ tịch Hồ Ch&iacute; Minh từng n&oacute;i: &ldquo;Học tr&ograve; tốt hay xấu l&agrave; do thầy gi&aacute;o, c&ocirc; gi&aacute;o tốt hay xấu&rdquo;. Mỗi thầy, c&ocirc; gi&aacute;o phải xem nhiệm vụ gi&aacute;o dục l&agrave; cao cả, đặt to&agrave;n bộ t&acirc;m huyết, lương t&acirc;m, sự hiểu biết s&acirc;u sắc v&agrave; tr&aacute;ch nhiệm v&agrave;o c&ocirc;ng việc với phương ch&acirc;m xuy&ecirc;n suốt l&agrave; lấy học sinh l&agrave;m trung t&acirc;m, nh&agrave; trường l&agrave;m nền tảng, thầy c&ocirc; gi&aacute;o l&agrave;m động lực; l&agrave; người truyền cảm hứng, tạo động lực, l&ograve;ng y&ecirc;u nước; chấp nhận sự kh&aacute;c biệt, t&ocirc;n trọng sự đa dạng, ph&aacute;t huy cao nhất sở trường, năng khiếu của mỗi học sinh, tất cả v&igrave; học sinh th&acirc;n y&ecirc;u, v&iacute; sự nghiệp gi&aacute;o dục cao cả của ch&uacute;ng ta.</p>', 'posts/November2022/Fcg7pjIPp7MFMyS8Sydh.png', 'mang-lai-luong-gio-moi-trong-moi-bai-giang-boi-duong-the-he-tuong-lai-vua-hong-vua-chuyen', 'Nâng cao trình độ chuyên môn; năng động, có cách tiếp cận mới trong dạy và học; tích cực ứng dụng khoa học công nghệ mang lại luồng gió mới với sức thuyết phục cao trong mỗi bài giảng, qua đó góp phần bồi dưỡng thế hệ tương lai của đất nước vừa hồng vừa chuyên.', NULL, 'PUBLISHED', 1, '2022-11-19 00:20:18', '2022-11-19 00:20:18');
INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `description`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(6, 1, 4, 'Đâu là những giải pháp giúp báo Đảng không ngừng phát triển?', 'Đâu là những giải pháp giúp báo Đảng không ngừng phát triển?', 'Trong khuôn khổ Hội nghị “Nâng cao chất lượng báo Đảng toàn quốc” tại TP. Đà Nẵng ngày 12-11 có 6 phiên thảo luận được tổ chức. Diễn giả tại các phiên thảo luận là những nhà quản lý báo chí, đại diện các cơ quan hoạch định chính sách, đại diện các ban, bộ, ngành, lãnh đạo cấp uỷ địa phương, nhà báo giàu kinh nghiệm và chuyên gia trên nhiều lĩnh vực.', '<div>\r\n<table class=\"image center\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"new\"><a class=\"example-image-link\" href=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/1z3875052131368_dfe7e0bb9e2a9c688b6761fba35446b4_20221112171501.jpg\" data-lightbox=\"slide-1\" data-title=\"Quang cảnh một phi&ecirc;n thảo luận.\"><img src=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/1z3875052131368_dfe7e0bb9e2a9c688b6761fba35446b4_20221112171501.jpg\" alt=\"Quang cảnh một phi&ecirc;n thảo luận.\"></a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"desc\">Quang cảnh một phi&ecirc;n thảo luận.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>6 chủ đề ch&iacute;nh của c&aacute;c phi&ecirc;n thảo luận gồm: Đổi mới s&aacute;ng tạo trong b&aacute;o ch&iacute; x&acirc;y dựng Đảng; Th&aacute;o gỡ kh&oacute; khăn về cơ chế ch&iacute;nh s&aacute;ch cho b&aacute;o Đảng; N&acirc;ng cao chất lượng nội dung để duy tr&igrave; vị thế cho b&aacute;o Đảng; Chuyển đổi số v&agrave; c&ocirc;ng nghệ l&agrave;m b&aacute;o hiện đại; Đa dạng nguồn thu cho c&aacute;c cơ quan b&aacute;o ch&iacute;; Ph&aacute;t triển b&aacute;o ch&iacute; đa k&ecirc;nh, đa nền tảng để ph&aacute;t triển c&ocirc;ng ch&uacute;ng.</p>\r\n<p>Vấn đề n&acirc;ng cao chất lượng nội dung để duy tr&igrave; vị thế của b&aacute;o Đảng được c&aacute;c đại biểu rất quan t&acirc;m. Nh&agrave; b&aacute;o Hữu Việt, Vụ trưởng, Trưởng Ban Văn h&oacute;a-Văn nghệ, B&aacute;o Nh&acirc;n D&acirc;n, nhận định b&aacute;o ch&iacute; truyền thống đang phải đối mặt với nhiều th&aacute;ch thức v&agrave; sự cạnh tranh gay gắt của truyền th&ocirc;ng đa nền tảng như hiện nay. Để th&iacute;ch ứng v&agrave; ph&aacute;t triển, b&ecirc;n cạnh việc theo kịp sự ph&aacute;t triển của c&ocirc;ng nghệ truyền th&ocirc;ng, th&igrave; c&aacute;c cơ quan b&aacute;o ch&iacute; n&oacute;i chung v&agrave; b&aacute;o Đảng n&oacute;i ri&ecirc;ng cần phải đổi mới mạnh mẽ về nội dung theo xu hướng l&agrave;m b&aacute;o hiện đại.</p>\r\n<p>&ldquo;Chỉ c&oacute; n&acirc;ng cao chất lượng nội dung th&igrave; c&aacute;c cơ quan b&aacute;o Đảng mới duy tr&igrave; được vị thế l&agrave; c&ocirc;ng cụ chủ lực của Đảng về c&ocirc;ng t&aacute;c tư tưởng, l&agrave; k&ecirc;nh th&ocirc;ng tin ch&iacute;nh thống v&agrave; l&agrave; cầu nối của Đảng với d&acirc;n&rdquo;, nh&agrave; b&aacute;o Hữu Việt nhấn mạnh.</p>\r\n<p>C&aacute;c diễn giả về chủ đề n&agrave;y đều cho rằng: B&aacute;o Đảng cần phải đi đầu trong đổi mới, n&acirc;ng cao chất lượng, từ đ&oacute; mở rộng khả năng tiếp cận với độc giả, đặc biệt l&agrave; độc giả trẻ.</p>\r\n<div>\r\n<table class=\"image center\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"new\"><a class=\"example-image-link\" href=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/4z3875188174352_e449a97ff5fbecbabb2dbb68ec134fae_20221112171646.jpg\" data-lightbox=\"slide-1\" data-title=\"C&aacute;c diễn giả tại một phi&ecirc;n thảo luận.\"><img src=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/4z3875188174352_e449a97ff5fbecbabb2dbb68ec134fae_20221112171646.jpg\" alt=\"C&aacute;c diễn giả tại một phi&ecirc;n thảo luận.\"></a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"desc\">C&aacute;c diễn giả tại một phi&ecirc;n thảo luận.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>Trước hết, c&aacute;c tờ b&aacute;o Đảng cần tiếp tục b&aacute;m s&aacute;t t&ocirc;n chỉ mục đ&iacute;ch, x&aacute;c định gi&aacute; trị cốt l&otilde;i l&agrave; trở th&agrave;nh k&ecirc;nh th&ocirc;ng tin x&aacute;c thực, trụ cột, kịp thời, đ&aacute;ng tin cậy&hellip; kh&ocirc;ng chỉ của c&aacute;n bộ đảng vi&ecirc;n m&agrave; của rộng r&atilde;i bạn đọc. C&aacute;c b&aacute;o cần tăng cường t&iacute;nh Đảng, t&iacute;nh phản biện, ph&aacute;t hiện v&agrave; đấu tranh kịp thời với những biểu hiện sai tr&aacute;i, suy tho&aacute;i tư tưởng ch&iacute;nh trị, đạo đức lối sống, tham nhũng, ti&ecirc;u cực trong c&aacute;n bộ đảng vi&ecirc;n cũng như trong đời sống x&atilde; hội.</p>\r\n<p>B&ecirc;n cạnh đ&oacute;, c&aacute;c t&ograve;a soạn cũng phải ch&uacute; trọng ph&aacute;t hiện, lan tỏa những th&ocirc;ng tin t&iacute;ch cực, gương người tốt việc tốt, truyền cảm hứng, hướng người đọc đến những gi&aacute; trị ch&acirc;n, thiện, mỹ...</p>\r\n<p>Ph&oacute;ng vi&ecirc;n, người l&agrave;m b&aacute;o Đảng phải nắm chắc, am tường c&aacute;c cơ chế, ch&iacute;nh s&aacute;ch của Đảng, ph&aacute;p luật của Nh&agrave; nước v&agrave; thể hiện s&acirc;u rộng, kịp thời tr&ecirc;n mặt b&aacute;o bằng nhiều h&igrave;nh thức đa dạng, sinh động.</p>\r\n<p>C&aacute;c b&aacute;o Đảng cần đầu tư mở rộng, đa dạng h&oacute;a c&aacute;c chuy&ecirc;n trang, chuy&ecirc;n mục li&ecirc;n quan đến đời sống, việc l&agrave;m, giải tr&iacute;, t&acirc;m tư t&igrave;nh cảm&hellip; của bạn đọc bằng nhiều h&igrave;nh thức, đa phương tiện.</p>\r\n<p>Để thực hiện c&aacute;c mục ti&ecirc;u kể tr&ecirc;n, b&aacute;o Đảng lu&ocirc;n cần sự hỗ trợ kịp thời của cơ quan chủ quản cũng như c&aacute;c cơ quan li&ecirc;n quan để th&aacute;o gỡ những kh&oacute; khăn, vướng mắc về cơ chế ch&iacute;nh s&aacute;ch li&ecirc;n quan đến tổ chức bộ m&aacute;y, t&agrave;i ch&iacute;nh, ph&aacute;t triển nguồn nh&acirc;n lực; đặc biệt hỗ trợ c&aacute;c b&aacute;o trong thực hiện chuyển đổi số&hellip;</p>\r\n<div>\r\n<table class=\"image center\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"new\"><a class=\"example-image-link\" href=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/6giam-doc-san-pham-onecms-bui-cong-duyen-trinh-bay-tham-luan-4_20221112171735.jpg\" data-lightbox=\"slide-1\" data-title=\"Quang cảnh một phi&ecirc;n thảo luận.\"><img src=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/6giam-doc-san-pham-onecms-bui-cong-duyen-trinh-bay-tham-luan-4_20221112171735.jpg\" alt=\"Quang cảnh một phi&ecirc;n thảo luận.\"></a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"desc\">Quang cảnh một phi&ecirc;n thảo luận.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>Việc th&aacute;o gỡ kh&oacute; khăn về cơ chế, ch&iacute;nh s&aacute;ch cho B&aacute;o Đảng cũng được c&aacute;c đại biểu, nhất l&agrave; l&atilde;nh đạo c&aacute;c cơ quan b&aacute;o ch&iacute; rất quan t&acirc;m. Vấn đề tinh giản bi&ecirc;n chế dẫn tới thiếu hụt nguồn nh&acirc;n lực chất lượng cao đang l&agrave; &ldquo;b&agrave;i to&aacute;n&rdquo; đau đầu với nhiều cơ quan b&aacute;o Đảng. C&aacute;c t&ograve;a soạn thiếu nguồn kinh ph&iacute; để chi trả cho c&aacute;c cộng t&aacute;c vi&ecirc;n, mua sắm c&aacute;c thiết bị, phần mềm cho đổi mới b&aacute;o ch&iacute;.</p>\r\n<p>Nhiều đại biểu đề xuất cần c&oacute; m&ocirc; h&igrave;nh tổ chức bộ m&aacute;y thống nhất cho cơ quan b&aacute;o Đảng, x&aacute;c định khung bi&ecirc;n chế chung cho cơ quan b&aacute;o Đảng theo quy m&ocirc; tờ b&aacute;o; đồng thời kh&ocirc;ng thực hiện tinh giản bi&ecirc;n chế đối với b&aacute;o Đảng như đang thực hiện với ng&agrave;nh Gi&aacute;o dục, Y tế.</p>\r\n<p>Bộ Th&ocirc;ng tin v&agrave; Truyền th&ocirc;ng cần c&oacute; chủ trương cụ thể, thậm ch&iacute; c&oacute; thể lập ra một &ldquo;Tổ c&ocirc;ng t&aacute;c về chuyển đổi số c&aacute;c cơ quan b&aacute;o ch&iacute;&rdquo; để r&agrave; so&aacute;t qu&aacute; tr&igrave;nh chuyển đổi số của cơ quan b&aacute;o ch&iacute;, qua đ&oacute; th&uacute;c đẩy v&agrave; kiểm so&aacute;t qu&aacute; tr&igrave;nh chuyển đổi số theo đ&uacute;ng lộ tr&igrave;nh của Trung ương, c&oacute; t&iacute;nh tới đặc th&ugrave; của c&aacute;c cơ quan b&aacute;o Đảng ở địa phương.</p>\r\n<p>Để giải quyết vấn đề bi&ecirc;n chế, Thứ trưởng Bộ Th&ocirc;ng tin v&agrave; Truyền th&ocirc;ng Nguyễn Thanh L&acirc;m cho rằng c&aacute;c cơ quan b&aacute;o ch&iacute; cần c&oacute; tiếng n&oacute;i với l&atilde;nh đạo c&aacute;c tỉnh, th&agrave;nh phố để sửa đổi Quy định 338 về chức năng, nhiệm vụ tổ chức bộ m&aacute;y cơ quan của Đảng bộ tỉnh, th&agrave;nh phố trực thuộc Trung ương theo hướng ph&ugrave; hợp hơn&hellip;</p>\r\n<div>\r\n<table class=\"image center\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"new\"><a class=\"example-image-link\" href=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/7thu-truong-bo-thong-tin-va-truyen-thong-nguyen-thanh-lam-1_20221112171559.jpg\" data-lightbox=\"slide-1\" data-title=\"Thứ trưởng Bộ Th&ocirc;ng tin v&agrave; Truyền th&ocirc;ng Nguyễn Thanh L&acirc;m tại một phi&ecirc;n thảo luận.\"><img src=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/7thu-truong-bo-thong-tin-va-truyen-thong-nguyen-thanh-lam-1_20221112171559.jpg\" alt=\"Thứ trưởng Bộ Th&ocirc;ng tin v&agrave; Truyền th&ocirc;ng Nguyễn Thanh L&acirc;m tại một phi&ecirc;n thảo luận.\"></a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"desc\">Thứ trưởng Bộ Th&ocirc;ng tin v&agrave; Truyền th&ocirc;ng Nguyễn Thanh L&acirc;m tại một phi&ecirc;n thảo luận.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>Tại phi&ecirc;n thảo luận &ldquo;Đổi mới s&aacute;ng tạo trong b&aacute;o ch&iacute; x&acirc;y dựng Đảng&rdquo;, nh&igrave;n thẳng v&agrave;o những r&agrave;o cản đối với sự đổi mới s&aacute;ng tạo của hệ thống b&aacute;o Đảng, c&aacute;c diễn giả v&agrave; đại biểu đ&atilde; gợi mở nhiều giải ph&aacute;p để t&igrave;m ra những bước đột ph&aacute; cho một lĩnh vực vốn được đ&aacute;nh gi&aacute; l&agrave; &ldquo;kh&oacute;, kh&ocirc;, khổ&rdquo;.</p>\r\n<p>Theo diễn giả Trần Thanh L&acirc;m, Ph&oacute; Trưởng Ban Tuy&ecirc;n gi&aacute;o Trung ương, những người l&agrave;m b&aacute;o Đảng cần thay đổi tư duy. Tăng t&iacute;nh phản biện, kh&ocirc;ng t&ocirc; hồng qu&aacute; mức, th&ocirc;ng tin c&acirc;n bằng giữa tuy&ecirc;n truyền ch&iacute;nh s&aacute;ch với phản &aacute;nh t&acirc;m tư của nh&acirc;n d&acirc;n, những vấn đề được người d&acirc;n quan t&acirc;m cũng l&agrave; những yếu tố tạo n&ecirc;n sự đổi mới s&aacute;ng tạo cho c&aacute;c b&aacute;o Đảng.</p>\r\n<p>Đối với y&ecirc;u cầu đổi mới c&ocirc;ng nghệ l&agrave;m b&aacute;o, c&aacute;c cơ quan b&aacute;o Đảng cần nhanh ch&oacute;ng ứng dụng những th&agrave;nh tựu khoa học-c&ocirc;ng nghệ mới nhất v&agrave;o t&aacute;c nghiệp, sản xuất c&aacute;c sản phẩm b&aacute;o ch&iacute; trong kỷ nguy&ecirc;n số.</p>\r\n<p>Theo nh&agrave; b&aacute;o Tạ B&iacute;ch Loan, trong thời đại truyền th&ocirc;ng đa phương tiện, tuy&ecirc;n truyền cần c&oacute; sự đổi mới, đi v&agrave;o l&ograve;ng người, c&oacute; sự lan tỏa s&acirc;u rộng chứ kh&ocirc;ng phải chỉ th&ocirc;ng tin bằng văn bản, giấy tờ, kh&ocirc; cứng. Đ&oacute; l&agrave; y&ecirc;u cầu nhiệm vụ nhưng đồng thời cũng l&agrave; điều kiện để c&ocirc;ng t&aacute;c tuy&ecirc;n truyền th&agrave;nh c&ocirc;ng&hellip;</p>\r\n<p>C&aacute;c chuy&ecirc;n đề: Chuyển đổi số v&agrave; c&ocirc;ng nghệ l&agrave;m b&aacute;o hiện đại; Đa dạng nguồn thu cho c&aacute;c cơ quan b&aacute;o ch&iacute;; Ph&aacute;t triển b&aacute;o ch&iacute; đa k&ecirc;nh, đa nền tảng để ph&aacute;t triển c&ocirc;ng ch&uacute;ng cũng diễn ra sổi nổi, với nhiều th&ocirc;ng tin rất thiết thực, kinh nghiệm thực tiễn phong ph&uacute; của c&aacute;c cơ quan b&aacute;o ch&iacute; v&agrave; c&aacute; nh&acirc;n nh&agrave; b&aacute;o, diễn giả tham gia.</p>', 'posts/November2022/6WpiKMHBDxUqxlTLgBPV.png', 'dau-la-nhung-giai-phap-giup-bao-dang-khong-ngung-phat-trien', 'Trong khuôn khổ Hội nghị “Nâng cao chất lượng báo Đảng toàn quốc” tại TP. Đà Nẵng ngày 12-11 có 6 phiên thảo luận được tổ chức. Diễn giả tại các phiên thảo luận là những nhà quản lý báo chí, đại diện các cơ quan hoạch định chính sách, đại diện các ban, bộ, ngành, lãnh đạo cấp uỷ địa phương, nhà báo giàu kinh nghiệm và chuyên gia trên nhiều lĩnh vực.', NULL, 'PUBLISHED', 1, '2022-11-19 00:21:39', '2022-11-19 00:26:15'),
(7, 1, 4, 'Khai mạc Tuần lễ Đại đoàn kết các dân tộc - Di sản văn hóa Việt Nam', 'Khai mạc Tuần lễ Đại đoàn kết các dân tộc - Di sản văn hóa Việt Nam', 'Phó Thủ tướng Vũ Đức Đam đề nghị MTTQ động viên đồng bào các dân tộc phát huy truyền thống đoàn kết, gìn giữ các giá trị lịch sử văn hóa đang được lưu giữ bằng trí nhớ, bằng chữ viết của các dân tộc.', '<p><strong>Ph&oacute; Thủ tướng Vũ Đức Đam đề nghị MTTQ động vi&ecirc;n đồng b&agrave;o c&aacute;c d&acirc;n tộc ph&aacute;t huy truyền thống đo&agrave;n kết, g&igrave;n giữ c&aacute;c gi&aacute; trị lịch sử văn h&oacute;a đang được lưu giữ bằng tr&iacute; nhớ, bằng chữ viết của c&aacute;c d&acirc;n tộc.</strong></p>\r\n<div>\r\n<table class=\"image center\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"new\"><a class=\"example-image-link\" href=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/khaimac19-11-2022_20221119073035.jpg\" data-lightbox=\"slide-1\" data-title=\"Tiết mục \"><img src=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/khaimac19-11-2022_20221119073035.jpg\"></a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"desc\">Tiết mục \"Cội nguồn Việt Nam\". (Ảnh: Tuấn Đức/TTXVN)</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>Tối 18-11, Lễ khai mạc Tuần lễ Đại đo&agrave;n kết c&aacute;c d&acirc;n tộc - Di sản Văn h&oacute;a Việt Nam 2022 v&agrave; chương tr&igrave;nh nghệ thuật mang t&ecirc;n &ldquo;Kh&aacute;t vọng Việt Nam\" đ&atilde; diễn ra tại L&agrave;ng Văn h&oacute;a - Du lịch c&aacute;c d&acirc;n tộc Việt Nam (Đồng M&ocirc;, Sơn T&acirc;y, H&agrave; Nội).</p>\r\n<p>Chương tr&igrave;nh do Bộ Văn h&oacute;a, Thể thao v&agrave; Du lịch phối hợp với Ủy ban Trung ương Mặt trận Tổ quốc Việt Nam tổ chức nh&acirc;n kỷ niệm 92 năm ng&agrave;y truyền thống Mặt trận Tổ quốc Việt Nam (18-11) v&agrave; 77 năm ng&agrave;y Di sản Văn h&oacute;a Việt Nam (23-11).</p>\r\n<p>Thay mặt l&atilde;nh đạo Đảng, Nh&agrave; nước, Ph&oacute; Thủ tướng Vũ Đức Đam gửi lời ch&uacute;c mừng tới c&aacute;c vị đại biểu v&agrave; to&agrave;n thể đồng ch&iacute;, đồng b&agrave;o; ch&uacute;c mừng Mặt trận Tổ quốc Việt Nam nh&acirc;n kỷ niệm 92 năm Ng&agrave;y truyền thống v&agrave; b&agrave;y tỏ sự vui mừng tham dự khai mạc Tuần lễ Đại đo&agrave;n kết c&aacute;c d&acirc;n tộc - Di sản Văn h&oacute;a Việt Nam.</p>\r\n<p>Ph&oacute; Thủ tướng Vũ Đức Đam khẳng định đo&agrave;n kết l&agrave; truyền thống qu&yacute; b&aacute;u của d&acirc;n tộc ta được kết tinh qua h&agrave;ng ngh&igrave;n năm lịch sử dựng nước v&agrave; giữ nước.</p>\r\n<p>Đảng ta v&agrave; chủ tịch Hồ Ch&iacute; Minh k&iacute;nh y&ecirc;u lu&ocirc;n coi trọng x&acirc;y dựng củng cố v&agrave; mở rộng khối đại đo&agrave;n kết to&agrave;n d&acirc;n tộc, dưới sự l&atilde;nh đạo của Đảng, c&aacute;c tầng lớp nh&acirc;n d&acirc;n kh&ocirc;ng ph&acirc;n biệt th&agrave;nh phần, giai cấp, d&acirc;n tộc, t&ocirc;n gi&aacute;o đ&atilde; tập hợp đo&agrave;n kết với l&aacute; cờ của Mặt trận d&acirc;n tộc thống nhất Việt Nam tạo n&ecirc;n sức mạnh vĩ đại, l&agrave;m n&ecirc;n c&aacute;ch mạng th&aacute;ng T&aacute;m lịch sử, gi&agrave;nh độc lập d&acirc;n tộc v&agrave; tiếp tục gi&agrave;nh thắng lợi trong c&aacute;c cuộc đấu tranh thống nhất đất nước, bảo vệ Tổ quốc.</p>\r\n<div>\r\n<table class=\"image center\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"new\"><a class=\"example-image-link\" href=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/khaimac2.19-11-2022_20221119073035.jpg\" data-lightbox=\"slide-1\" data-title=\"Tiết mục Đờn ca T&agrave;i tử Nam Bộ \'Người l&agrave; niềm tin tất thắng.\' (Ảnh: Tuấn Đức/TTXVN)\"><img src=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/khaimac2.19-11-2022_20221119073035.jpg\"></a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"desc\">Tiết mục Đờn ca T&agrave;i tử Nam Bộ \'Người l&agrave; niềm tin tất thắng.\' (Ảnh: Tuấn Đức/TTXVN)</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>Thực hiện lời dạy của B&aacute;c Hồ &ldquo;Đo&agrave;n kết, đo&agrave;n kết đại đo&agrave;n kết. Th&agrave;nh c&ocirc;ng, th&agrave;nh c&ocirc;ng đại th&agrave;nh c&ocirc;ng,\" đại đo&agrave;n kết to&agrave;n d&acirc;n tộc lu&ocirc;n l&agrave; đường lối chiến lược của Đảng ta, l&agrave; b&agrave;i học lớn của c&aacute;ch mạng Việt Nam, g&oacute;p phần tạo động lực quan trọng cho c&ocirc;ng cuộc đổi mới, mang lại những th&agrave;nh tựu to lớn c&oacute; &yacute; nghĩa lịch sử của đất nước.</p>\r\n<p>Trong suốt 92 năm h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển, Mặt trận Tổ quốc Việt Nam đ&atilde; tập hợp đo&agrave;n kết ng&agrave;y c&agrave;ng đ&ocirc;ng đảo c&aacute;c tầng lớp nh&acirc;n d&acirc;n trong khối đại đo&agrave;n kết thống nhất, g&oacute;p phần ho&agrave;n th&agrave;nh mục ti&ecirc;u c&aacute;ch mạng cao cả do Đảng ta khởi xướng v&agrave; l&atilde;nh đạo.</p>\r\n<p>Tuần Đại đo&agrave;n kết c&aacute;c d&acirc;n tộc l&agrave; hoạt động thường ni&ecirc;n được tổ chức tại L&agrave;ng Văn h&oacute;a - Du lịch c&aacute;c d&acirc;n tộc Việt Nam, l&agrave; nơi hội tụ những gi&aacute; trị văn h&oacute;a ti&ecirc;u biểu của 54 d&acirc;n tộc anh em, biểu dương c&aacute;c tấm gương từ cộng đồng đồng b&agrave;o c&aacute;c d&acirc;n tộc trong cả nước, t&ocirc;n vinh c&aacute;c hoạt động bảo tồn, ph&aacute;t huy bản sắc văn h&oacute;a của c&aacute;c d&acirc;n tộc.</p>\r\n<p>Tuần lễ Đại đo&agrave;n kết giới thiệu về những n&eacute;t đẹp văn h&oacute;a truyền thống, lan tỏa những gi&aacute; trị nh&acirc;n văn, tinh thần tương th&acirc;n, tương &aacute;i, t&igrave;nh y&ecirc;u qu&ecirc; hương đất nước v&agrave; người Việt Nam ch&uacute;ng ta.</p>\r\n<p>Ph&oacute; Thủ tướng đề nghị Mặt trận Tổ quốc Việt Nam v&agrave; c&aacute;c tổ chức th&agrave;nh vi&ecirc;n c&ugrave;ng c&aacute;c cấp, c&aacute;c ng&agrave;nh, c&aacute;c tổ chức, c&aacute;c cơ quan, đơn vị tiếp tục chung sức đồng l&ograve;ng, phục hồi v&agrave; ph&aacute;t triển kinh tế - x&atilde; hội, đẩy mạnh học tập v&agrave; l&agrave;m theo tư tưởng, đạo đức, phong c&aacute;ch Hồ Ch&iacute; Minh, quan t&acirc;m hơn nữa đến việc x&acirc;y dựng c&aacute;c chuẩn mực đạo đức x&atilde; hội, ph&aacute;t huy l&ograve;ng tự h&agrave;o d&acirc;n tộc, &yacute; ch&iacute; tự lực tự cường, tăng cường khối đại đo&agrave;n kết to&agrave;n d&acirc;n tộc, tạo n&ecirc;n nền tảng tinh thần vững chắc, đưa đất nước đi l&ecirc;n tr&ecirc;n con đường hội nhập v&agrave; ph&aacute;t triển.</p>\r\n<p>Ph&oacute; Thủ tướng đề nghị Mặt trận Tổ quốc Việt Nam v&agrave; c&aacute;c tổ chức th&agrave;nh vi&ecirc;n tiếp tục động vi&ecirc;n c&aacute;c tầng lớp nh&acirc;n d&acirc;n thực hiện tốt cuộc vận động v&agrave; c&aacute;c phong tr&agrave;o thi đua; động vi&ecirc;n đồng b&agrave;o c&aacute;c d&acirc;n tộc ph&aacute;t huy truyền thống đo&agrave;n kết, g&igrave;n giữ c&aacute;c gi&aacute; trị lịch sử văn h&oacute;a đang được lưu giữ bằng tr&iacute; nhớ, bằng chữ viết của c&aacute;c d&acirc;n tộc. C&aacute;c cấp ủy, ch&iacute;nh quyền tăng cường l&atilde;nh đạo, chỉ đạo, vận động nh&acirc;n d&acirc;n tham gia bảo vệ v&agrave; ph&aacute;t huy gi&aacute; trị văn h&oacute;a của d&acirc;n tộc.</p>\r\n<div>\r\n<table class=\"image center\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"new\"><a class=\"example-image-link\" href=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/khaimac3.19-11-2022_20221119073136.jpg\" data-lightbox=\"slide-1\" data-title=\"Ph&oacute; Thủ tướng Vũ Đức Đam ph&aacute;t biểu. (Ảnh: Tuấn Đức/TTXVN)\"><img src=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/khaimac3.19-11-2022_20221119073136.jpg\"></a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"desc\">Ph&oacute; Thủ tướng Vũ Đức Đam ph&aacute;t biểu. (Ảnh: Tuấn Đức/TTXVN)</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>Dưới sự l&atilde;nh đạo của Đảng, với truyền thống y&ecirc;u nước, truyền thống đo&agrave;n kết, với lịch sử văn h&oacute;a mấy ng&agrave;n năm của d&acirc;n tộc, t&igrave;nh đo&agrave;n kết gắn b&oacute; keo sơn trong cộng đồng 54 d&acirc;n tộc anh em, ch&uacute;ng ta sẽ tiếp tục tăng cường v&agrave; củng cố mối quan hệ gắn b&oacute;, mật thiết giữa Đảng, Nh&agrave; nước với nh&acirc;n d&acirc;n. Đ&oacute; ch&iacute;nh l&agrave; nền tảng tinh thần vững chắc, l&agrave; sức mạnh để đưa đất nước ta đi l&ecirc;n con đường đổi mới, thực hiện mục ti&ecirc;u d&acirc;n gi&agrave;u, nước mạnh, d&acirc;n chủ c&ocirc;ng bằng văn minh, Ph&oacute; Thủ tướng Vũ Đức Đam tin tưởng.</p>\r\n<p>Sau lễ khai mạc l&agrave; đ&ecirc;m nghệ thuật &ldquo;Kh&aacute;t vọng Việt Nam,\" gồm 2 chương với nhiều tiết mục nghệ thuật đặc sắc trải d&agrave;i theo h&agrave;nh tr&igrave;nh di sản văn h&oacute;a c&aacute;c d&acirc;n tộc Việt Nam dọc ba miền Bắc - Trung - Nam v&agrave; tinh thần đại đo&agrave;n kết c&aacute;c d&acirc;n tộc Việt Nam.</p>', 'posts/November2022/aOt7IIrXaoCKPeaBZhv5.png', 'khai-mac-tuan-le-dai-doan-ket-cac-dan-toc-di-san-van-hoa-viet-nam', 'Phó Thủ tướng Vũ Đức Đam đề nghị MTTQ động viên đồng bào các dân tộc phát huy truyền thống đoàn kết, gìn giữ các giá trị lịch sử văn hóa đang được lưu giữ bằng trí nhớ, bằng chữ viết của các dân tộc.', NULL, 'PUBLISHED', 1, '2022-11-19 00:22:33', '2022-11-19 00:25:59'),
(8, 1, 4, 'Tưng bừng Ngày hội Đại đoàn kết toàn dân tộc', 'Tưng bừng Ngày hội Đại đoàn kết toàn dân tộc', 'Nhân kỷ niệm 92 năm Ngày truyền thống MTTQ Việt Nam (18/11/1930 - 18/11/2022), ngày 14-11, các đồng chí lãnh đạo tỉnh tham dự Ngày hội Đại đoàn kết toàn dân tộc tại một số khu dân cư.', '<p><strong>Nh&acirc;n kỷ niệm 92 năm Ng&agrave;y truyền thống MTTQ Việt Nam (18/11/1930 - 18/11/2022), ng&agrave;y 14-11, c&aacute;c đồng ch&iacute; l&atilde;nh đạo tỉnh tham dự Ng&agrave;y hội Đại đo&agrave;n kết to&agrave;n d&acirc;n tộc tại một số khu d&acirc;n cư.</strong></p>\r\n<div>\r\n<table class=\"image center\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"new\"><a class=\"example-image-link\" href=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/ddk4.14-11-2022_20221114134118.jpg\" data-lightbox=\"slide-1\" data-title=\"&lt;em&gt;C&aacute;c đồng ch&iacute; l&atilde;nh đạo tỉnh tặng bức tranh \">\"&gt;<img src=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/ddk4.14-11-2022_20221114134118.jpg\"></a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"desc\"><em>C&aacute;c đồng ch&iacute; l&atilde;nh đạo tỉnh tặng bức tranh \"B&aacute;c Hồ với B&aacute;c T&ocirc;n\" cho khu d&acirc;n cư x&oacute;m Vang.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p><strong>* Đồng ch&iacute; Phạm Ho&agrave;ng Sơn, Ph&oacute; B&iacute; thư Thường trực Tỉnh ủy, Chủ tịch HĐND tỉnh, đến chung vui Ng&agrave;y hội Đại đo&agrave;n kết to&agrave;n d&acirc;n tộc với b&agrave; con khu d&acirc;n cư x&oacute;m Vang, x&atilde; Li&ecirc;n Minh (V&otilde; Nhai).&nbsp;C&ugrave;ng dự c&oacute; đồng ch&iacute; Phạm Văn Thọ, Ủy&nbsp;vi&ecirc;n Ban Thường vụ, Trưởng Ban Nội ch&iacute;nh Tỉnh ủy; l&atilde;nh đạo c&aacute;c sở, ban, ng&agrave;nh của tỉnh v&agrave;&nbsp;huyện V&otilde; Nhai.</strong></p>\r\n<div class=\"media_core\" align=\"center\">&nbsp;</div>\r\n<div>\r\n<table class=\"image center\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"new\"><a class=\"example-image-link\" style=\"box-sizing: border-box; outline: none; margin: 0px; padding: 0px; color: rgb(36, 42, 46); text-decoration: none; border: 0px none; list-style-type: none; font-family: Lora, serif; word-break: normal !important;\" href=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/ddk5.14-11-2022_20221114134118.jpg\" data-lightbox=\"slide-1\" data-title=\"&lt;em&gt;Nhiều tr&ograve; chơi d&acirc;n gian được tổ chức tại Ng&agrave;y hội.&lt;/em&gt;\"><img src=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/ddk5.14-11-2022_20221114134118.jpg\"></a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"desc\"><em>Nhiều tr&ograve; chơi d&acirc;n gian được tổ chức tại Ng&agrave;y hội.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>Tại Ng&agrave;y hội, c&aacute;c đại biểu v&agrave; nh&acirc;n d&acirc;n khu d&acirc;n cư x&oacute;m Vang&nbsp;c&ugrave;ng &ocirc;n lại truyền thống lịch sử 92 năm x&acirc;y dựng, trưởng th&agrave;nh của MTTQ Việt Nam v&agrave; đ&aacute;nh gi&aacute; việc thực hiện c&aacute;c cuộc vận động, phong tr&agrave;o thi đua y&ecirc;u nước năm 2022.</p>\r\n<div>\r\n<table class=\"image center\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"new\"><a class=\"example-image-link\" style=\"box-sizing: border-box; outline: none; margin: 0px; padding: 0px; color: rgb(36, 42, 46); text-decoration: none; border: 0px none; list-style-type: none; font-family: Lora, serif; word-break: normal !important;\" href=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/ddk14-11-2022_20221114134118.jpg\" data-lightbox=\"slide-1\" data-title=\"&lt;em&gt;Đồng ch&iacute; Phạm Ho&agrave;ng Sơn ph&aacute;t biểu với b&agrave; con khu d&acirc;n cư x&oacute;m Vang.&lt;/em&gt;\"><img src=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/ddk14-11-2022_20221114134118.jpg\"></a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"desc\"><em>Đồng ch&iacute; Phạm Ho&agrave;ng Sơn ph&aacute;t biểu với b&agrave; con khu d&acirc;n cư x&oacute;m Vang.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>L&agrave; x&oacute;m đặc biệt kh&oacute; khăn của x&atilde; Li&ecirc;n Minh, x&oacute;m Vang c&oacute; 210 hộ&nbsp;với 910 nh&acirc;n khẩu, thuộc 4 d&acirc;n tộc (Kinh, T&agrave;y, N&ugrave;ng, Dao). Những năm qua, người d&acirc;n trong x&oacute;m lu&ocirc;n đo&agrave;n kết, ph&aacute;t huy đức t&iacute;nh cần c&ugrave;, s&aacute;ng tạo trong lao động sản xuất, khắc phục kh&oacute; khăn để vươn l&ecirc;n.</p>\r\n<div>\r\n<table class=\"image center\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"new\"><a class=\"example-image-link\" style=\"box-sizing: border-box; outline: none; margin: 0px; padding: 0px; color: rgb(36, 42, 46); text-decoration: none; border: 0px none; list-style-type: none; font-family: Lora, serif; word-break: normal !important;\" href=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/ddk2.14-11-2022_20221114134118.jpg\" data-lightbox=\"slide-1\" data-title=\"&lt;em&gt;B&agrave; con x&oacute;m Vang tham gia phần thi g&oacute;i b&aacute;nh trong Ng&agrave;y hội.&lt;/em&gt;\"><img src=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/ddk2.14-11-2022_20221114134118.jpg\"></a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"desc\"><em>B&agrave; con x&oacute;m Vang tham gia phần thi g&oacute;i b&aacute;nh trong Ng&agrave;y hội.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>Năm 2022, thu nhập b&igrave;nh qu&acirc;n đầu người của x&oacute;m ước đạt tr&ecirc;n 40 triệu đồng/người/năm. Cả x&oacute;m&nbsp;chỉ c&ograve;n 5 hộ ngh&egrave;o v&agrave; 1 hộ cận ngh&egrave;o; 92% hộ đạt Gia đ&igrave;nh văn ho&aacute;; x&oacute;m giữ vững danh hiệu X&oacute;m văn h&oacute;a 5 năm li&ecirc;n tục.</p>\r\n<div>\r\n<table class=\"image center\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"new\"><a class=\"example-image-link\" style=\"box-sizing: border-box; outline: none; margin: 0px; padding: 0px; color: rgb(36, 42, 46); text-decoration: none; border: 0px none; list-style-type: none; font-family: Lora, serif; word-break: normal !important;\" href=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/ddk3.14-11-2022_20221114134118.jpg\" data-lightbox=\"slide-1\" data-title=\"&lt;em&gt;Đồng ch&iacute; Phạm Ho&agrave;ng Sơn v&agrave; đồng ch&iacute; Phạm Văn Thọ trao tặng 10 suất qu&agrave; cho c&aacute;c hộ ch&iacute;nh s&aacute;ch v&agrave; hộ c&oacute; ho&agrave;n cảnh kh&oacute; khăn tại x&oacute;m Vang.&lt;/em&gt;\"><img src=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/ddk3.14-11-2022_20221114134118.jpg\"></a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"desc\"><em>Đồng ch&iacute; Phạm Ho&agrave;ng Sơn v&agrave; đồng ch&iacute; Phạm Văn Thọ trao tặng 10 suất qu&agrave; cho c&aacute;c hộ ch&iacute;nh s&aacute;ch v&agrave; hộ c&oacute; ho&agrave;n cảnh kh&oacute; khăn tại x&oacute;m Vang.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>Ph&aacute;t biểu chung vui với nh&acirc;n d&acirc;n x&oacute;m Vang trong Ng&agrave;y hội Đại đo&agrave;n kết, đồng ch&iacute; Phạm Ho&agrave;ng Sơn biểu dương, ch&uacute;c mừng những kết quả x&oacute;m&nbsp;đạt được trong những năm qua. Đồng ch&iacute;&nbsp;mong muốn nh&acirc;n d&acirc;n x&oacute;m Vang tiếp tục đo&agrave;n kết,&nbsp;hỗ trợ nhau ph&aacute;t triển kinh tế, n&acirc;ng cao đời sống,&nbsp;ph&aacute;t huy bản sắc văn ho&aacute; d&acirc;n tộc; chung tay x&acirc;y dựng n&ocirc;ng th&ocirc;n mới...</p>\r\n<div>\r\n<table class=\"image center\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"new\"><a class=\"example-image-link\" style=\"box-sizing: border-box; outline: none; margin: 0px; padding: 0px; color: rgb(36, 42, 46); text-decoration: none; border: 0px none; list-style-type: none; font-family: Lora, serif; word-break: normal !important;\" href=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/ddk6.14-11-2022_20221114134118.jpg\" data-lightbox=\"slide-1\" data-title=\"&lt;em&gt;Đồng ch&iacute; Phạm Ho&agrave;ng Sơn c&ugrave;ng c&aacute;c đại biểu tham quan khu trưng b&agrave;y sản phẩm OCOP ch&egrave; m&oacute;c c&acirc;u của HTX n&ocirc;ng sản an to&agrave;n Li&ecirc;n Minh.&lt;/em&gt;\"><img src=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/ddk6.14-11-2022_20221114134118.jpg\"></a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"desc\"><em>Đồng ch&iacute; Phạm Ho&agrave;ng Sơn c&ugrave;ng c&aacute;c đại biểu tham quan khu trưng b&agrave;y sản phẩm OCOP ch&egrave; m&oacute;c c&acirc;u của HTX n&ocirc;ng sản an to&agrave;n Li&ecirc;n Minh.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>Nh&acirc;n dịp n&agrave;y, thay mặt Tỉnh uỷ -&nbsp;HĐND - UBND - Uỷ ban MTTQ tỉnh, đồng ch&iacute; Phạm Ho&agrave;ng Sơn&nbsp;trao tặng khu d&acirc;n cư x&oacute;m Vang 20 triệu đồng để mua sắm c&aacute;c trang thiết bị cho Nh&agrave; văn ho&aacute;;&nbsp;trao 10 suất qu&agrave; cho c&aacute;c gia đ&igrave;nh ch&iacute;nh s&aacute;ch, gia đ&igrave;nh c&oacute; ho&agrave;n cảnh đặc biệt kh&oacute; khăn. Huyện V&otilde; Nhai v&agrave; x&atilde; Li&ecirc;n Minh cũng trao tặng cho nh&acirc;n d&acirc;n x&oacute;m Vang nhiều phần qu&agrave; &yacute; nghĩa.</p>\r\n<p><strong>* Đồng ch&iacute; Phạm Th&aacute;i Hanh, Ủy vi&ecirc;n Ban Thường vụ Tỉnh ủy, Chủ tịch Ủy ban MTTQ tỉnh,&nbsp;chung vui Ng&agrave;y hội Đại đo&agrave;n kết to&agrave;n d&acirc;n tộc c&ugrave;ng b&agrave; con khu d&acirc;n cư tổ d&acirc;n phố 2, thị trấn Trại Cau (Đồng Hỷ).</strong></p>\r\n<div>\r\n<table class=\"image center\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"new\"><a class=\"example-image-link\" style=\"box-sizing: border-box; outline: none; margin: 0px; padding: 0px; color: rgb(36, 42, 46); text-decoration: none; border: 0px none; list-style-type: none; font-family: Lora, serif; word-break: normal !important;\" href=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/ddk7.14-11-2022_20221114144942.jpg\" data-lightbox=\"slide-1\" data-title=\"&lt;em&gt;&nbsp;Đồng ch&iacute; Phạm Th&aacute;i Hanh tặng qu&agrave; b&agrave; con&nbsp;tổ d&acirc;n phố 2.&lt;/em&gt;\"><img src=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/ddk7.14-11-2022_20221114144942.jpg\"></a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"desc\"><em>&nbsp;Đồng ch&iacute; Phạm Th&aacute;i Hanh tặng qu&agrave; b&agrave; con&nbsp;tổ d&acirc;n phố 2.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>Tổ d&acirc;n phố 2 c&oacute; 126 hộ, 454 nh&acirc;n khẩu. Nhiều năm qua, b&agrave; con tổ d&acirc;n phố lu&ocirc;n t&iacute;ch cực tham gia c&aacute;c phong tr&agrave;o thi đua, cuộc vận động &ldquo;To&agrave;n d&acirc;n đo&agrave;n kết x&acirc;y dựng n&ocirc;ng th&ocirc;n mới, đ&ocirc; thị văn minh&rdquo; v&agrave; đạt nhiều kết quả nổi bật. Hiện, thu nhập b&igrave;nh qu&acirc;n đầu người tr&ecirc;n địa b&agrave;n&nbsp;đạt 56 triệu đồng/người/năm. Qua b&igrave;nh x&eacute;t năm 2022,&nbsp;100% số hộ trong tổ d&acirc;n phố 2&nbsp;đạt danh hiệu Gia đ&igrave;nh văn h&oacute;a, 18 hộ đạt Gia đ&igrave;nh văn h&oacute;a ti&ecirc;u biểu 3 năm li&ecirc;n tục.</p>\r\n<div>\r\n<table class=\"image center\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"new\"><a class=\"example-image-link\" style=\"box-sizing: border-box; outline: none; margin: 0px; padding: 0px; color: rgb(36, 42, 46); text-decoration: none; border: 0px none; list-style-type: none; font-family: Lora, serif; word-break: normal !important;\" href=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/ddk8.14-11-2022_20221114145053.jpg\" data-lightbox=\"slide-1\" data-title=\"&lt;em&gt;Đồng ch&iacute; Phạm Th&aacute;i Hanh chụp ảnh lưu niệm với nh&acirc;n d&acirc;n tổ d&acirc;n phố 2.&lt;/em&gt;\"><img src=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/ddk8.14-11-2022_20221114145053.jpg\"></a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"desc\"><em>Đồng ch&iacute; Phạm Th&aacute;i Hanh chụp ảnh lưu niệm với nh&acirc;n d&acirc;n tổ d&acirc;n phố 2.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>Tại Ng&agrave;y hội, đồng ch&iacute; Chủ tịch Ủy ban MTTQ tỉnh đ&atilde; biểu dương sự nỗ lực v&agrave; kết quả đạt được&nbsp;của tổ d&acirc;n phố 2 trong thời gian qua; đồng thời tặng bức tranh &ldquo;B&aacute;c Hồ với B&aacute;c T&ocirc;n&rdquo; cho tổ d&acirc;n phố, tặng 10 phần qu&agrave; cho c&aacute;c gia đ&igrave;nh ti&ecirc;u biểu v&agrave; gia đ&igrave;nh c&oacute; ho&agrave;n cảnh kh&oacute; khăn.</p>', 'posts/November2022/CSsDrGUbUpbmzKLhfYN0.png', 'tung-bung-ngay-hoi-dai-doan-ket-toan-dan-toc', 'Nhân kỷ niệm 92 năm Ngày truyền thống MTTQ Việt Nam (18/11/1930 - 18/11/2022), ngày 14-11, các đồng chí lãnh đạo tỉnh tham dự Ngày hội Đại đoàn kết toàn dân tộc tại một số khu dân cư.', NULL, 'PUBLISHED', 1, '2022-11-19 00:23:48', '2022-11-19 00:25:26'),
(9, 1, 4, 'Lãnh đạo tỉnh chung vui Ngày hội Đại đoàn kết tại các địa phương', 'Lãnh đạo tỉnh chung vui Ngày hội Đại đoàn kết tại các địa phương', 'Ngày 15-11, các đồng chí lãnh đạo tỉnh dự và chung vui Ngày hội Đại đoàn kết toàn dân tộc tại một số khu dân cư trên địa bàn tỉnh.', '<p><strong>* Đồng ch&iacute; Ho&agrave;ng Văn H&ugrave;ng, Ủy vi&ecirc;n Ban Thường vụ, Chủ nhiệm Ủy ban Kiểm tra Tỉnh ủy dự Ng&agrave;y hội Đại đo&agrave;n kết to&agrave;n d&acirc;n tộc tại tổ d&acirc;n phố (TDP) T&acirc;n Hương, phường Đồng Bẩm (TP. Th&aacute;i Nguy&ecirc;n). C&ugrave;ng dự c&oacute; đồng ch&iacute; Dương Văn Lượng, B&iacute; thư Th&agrave;nh ủy Th&aacute;i Nguy&ecirc;n.</strong></p>\r\n<p>TDP T&acirc;n Hương hiện c&oacute; 256 hộ, với tr&ecirc;n 800 nh&acirc;n khẩu. Nhiều năm qua, TDP đặc biệt quan t&acirc;m ph&aacute;t triển kinh tế, x&acirc;y dựng đời sống văn h&oacute;a ở khu d&acirc;n cư. TDP T&acirc;n Hương&nbsp;đ&atilde; x&acirc;y dựng được hương ước, quy ước,; nh&acirc;n d&acirc;n thực hiện nghi&ecirc;m t&uacute;c nếp sống văn minh trong việc cưới, việc tang, chấp h&agrave;nh nghi&ecirc;m t&uacute;c c&aacute;c chủ trương, đường lối của Đảng, ch&iacute;nh s&aacute;ch ph&aacute;p luật của Nh&agrave; nước&hellip;</p>\r\n<p>Hiện nay, số hộ kh&aacute;, gi&agrave;u của TDP chiếm 88%;&nbsp;60% gia đ&igrave;nh c&oacute; xe &ocirc; t&ocirc;, 100% hộ d&acirc;n được sử dụng nước sạch, 100% hệ thống đường được đổ b&ecirc; t&ocirc;ng. Đặc biệt, TDP T&acirc;n Hương hiện chỉ c&ograve;n 1 hộ ngh&egrave;o v&agrave; 2 hộ cận ngh&egrave;o.</p>\r\n<div>\r\n<table class=\"image center\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"new\"><a class=\"example-image-link\" href=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/hoangvanhung15-11-2022_20221115135633.jpg\" data-lightbox=\"slide-1\" data-title=\"Đồng ch&iacute; Ho&agrave;ng Văn H&ugrave;ng v&agrave; đồng ch&iacute; Dương Văn Lượng tặng qu&agrave; cho c&aacute;c gia đ&igrave;nh ch&iacute;nh s&aacute;ch, hộ ngh&egrave;o, cận ngh&egrave;o của TDP T&acirc;n Hương.\"><img src=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/hoangvanhung15-11-2022_20221115135633.jpg\"></a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"desc\">Đồng ch&iacute; Ho&agrave;ng Văn H&ugrave;ng v&agrave; đồng ch&iacute; Dương Văn Lượng tặng qu&agrave; cho c&aacute;c gia đ&igrave;nh ch&iacute;nh s&aacute;ch, hộ ngh&egrave;o, cận ngh&egrave;o của TDP T&acirc;n Hương.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>Tại Ng&agrave;y hội, đồng ch&iacute; Ho&agrave;ng Văn H&ugrave;ng&nbsp;đ&atilde; tặng qu&agrave; cho TDP v&agrave; 10 gia đ&igrave;nh ch&iacute;nh s&aacute;ch, hộ ngh&egrave;o, cận ngh&egrave;o; l&atilde;nh đạo TP. Th&aacute;i Nguy&ecirc;n tặng 5 suất qu&agrave; cho 5 hộ ngh&egrave;o của c&aacute;c khu d&acirc;n cư&nbsp;tr&ecirc;n địa b&agrave;n phường Đồng Bẩm.</p>\r\n<p>Nh&acirc;n dịp n&agrave;y, Ủy ban MTTQ tỉnh đ&atilde; tặng Bằng khen cho TDP T&acirc;n Hương v&igrave; c&oacute; th&agrave;nh t&iacute;ch trong thực hiện Cuộc vận động &ldquo;To&agrave;n d&acirc;n đo&agrave;n kết x&acirc;y dựng n&ocirc;ng th&ocirc;n mới, đ&ocirc; thị văn minh&rdquo; năm 2022.</p>\r\n<p><strong>* Đồng ch&iacute; Vũ Duy Ho&agrave;ng, Uỷ vi&ecirc;n Ban Thường vụ, Trưởng Ban Tuy&ecirc;n gi&aacute;o Tỉnh uỷ dự v&agrave; chung vui Ng&agrave;y hội Đại đo&agrave;n kết to&agrave;n d&acirc;n tộc với nh&acirc;n d&acirc;n x&oacute;m B&atilde;i Cải, x&atilde; Ti&ecirc;n Hội (Đại Từ).</strong></p>\r\n<div>\r\n<table class=\"image center\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"new\"><a class=\"example-image-link\" href=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/vuduyhoang2.15-11-2022_20221115135633.jpg\" data-lightbox=\"slide-1\" data-title=\"Đồng ch&iacute; Trưởng Ban Tuy&ecirc;n gi&aacute;o Tỉnh ủy tặng bức tranh &ldquo;B&aacute;c Hồ với B&aacute;c T&ocirc;n&rdquo; cho x&oacute;m B&atilde;i Cải.\"><img src=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/vuduyhoang2.15-11-2022_20221115135633.jpg\"></a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"desc\">Đồng ch&iacute; Trưởng Ban Tuy&ecirc;n gi&aacute;o Tỉnh ủy tặng bức tranh &ldquo;B&aacute;c Hồ với B&aacute;c T&ocirc;n&rdquo; cho x&oacute;m B&atilde;i Cải.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>X&oacute;m B&atilde;i Cải c&oacute; 103 hộ, với 370 nh&acirc;n khẩu, thuộc 5 d&acirc;n tộc anh em. Những năm qua, người d&acirc;n trong x&oacute;m lu&ocirc;n đo&agrave;n kết, cần c&ugrave; lao động, sản xuất; t&iacute;ch cực hưởng ứng c&aacute;c phong tr&agrave;o thi đua, cuộc vận động; khắc phục kh&oacute; khăn để ph&aacute;t triển kinh tế, x&acirc;y dựng đời sống văn ho&aacute;.</p>\r\n<p>Năm 2022, tr&ecirc;n 95% hộ trong x&oacute;m đạt danh hiệu Gia đ&igrave;nh văn ho&aacute;; thu nhập b&igrave;nh qu&acirc;n đạt 51 triệu đồng/người/năm;&nbsp;số hộ kh&aacute;, gi&agrave;u chiếm 63%; số hộ ngh&egrave;o chỉ c&ograve;n 2%. Chi bộ, c&aacute;c đo&agrave;n thể trong x&oacute;m đều ho&agrave;n th&agrave;nh tốt nhiệm vụ. X&oacute;m B&atilde;i Cải đ&atilde; 5 năm li&ecirc;n tục đạt danh hiệu L&agrave;ng văn ho&aacute;&hellip;</p>\r\n<div>\r\n<table class=\"image center\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"new\"><a class=\"example-image-link\" href=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/vuduyhoang15-11-2022_20221115135633.jpg\" data-lightbox=\"slide-1\" data-title=\"C&aacute;c đại biểu dự Ng&agrave;y hội chụp ảnh lưu niệm với b&agrave; con x&oacute;m B&atilde;i Cải.\"><img src=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/vuduyhoang15-11-2022_20221115135633.jpg\"></a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"desc\">C&aacute;c đại biểu dự Ng&agrave;y hội chụp ảnh lưu niệm với b&agrave; con x&oacute;m B&atilde;i Cải.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>Nh&acirc;n dịp n&agrave;y, thay mặt Tỉnh uỷ, HĐND, UBND, Uỷ ban MTTQ tỉnh, đồng ch&iacute; Trưởng Ban Tuy&ecirc;n gi&aacute;o Tỉnh ủy Vũ Duy Ho&agrave;ng đ&atilde; tặng bức tranh &ldquo;B&aacute;c Hồ với B&aacute;c T&ocirc;n&rdquo; cho x&oacute;m B&atilde;i Cải; tặng 10 phần qu&agrave; cho c&aacute;c gia đ&igrave;nh ch&iacute;nh s&aacute;ch, gia đ&igrave;nh văn h&oacute;a ti&ecirc;u biểu v&agrave; gia đ&igrave;nh c&oacute; ho&agrave;n cảnh kh&oacute; khăn.</p>\r\n<p><strong>*&nbsp;Đồng ch&iacute; Dương Văn Tiến, Uỷ vi&ecirc;n Ban Thường vụ, Trưởng Ban D&acirc;n vận Tỉnh Uỷ dự Ng&agrave;y hội Đại đo&agrave;n kết to&agrave;n d&acirc;n tộc c&ugrave;ng nh&acirc;n d&acirc;n x&oacute;m Quyết Tiến, x&atilde; Ph&uacute; Tiến (Định Ho&aacute;).&nbsp;</strong></p>\r\n<div>\r\n<table class=\"image center\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"new\"><a class=\"example-image-link\" href=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/duongvantien15-11-2022_20221115135633.jpg\" data-lightbox=\"slide-1\" data-title=\"Đồng ch&iacute; Dương Văn Tiến chung vui Ng&agrave;y hội Đại đo&agrave;n kết to&agrave;n d&acirc;n tộc c&ugrave;ng nh&acirc;n d&acirc;n x&oacute;m Quyết Tiến.\"><img src=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/duongvantien15-11-2022_20221115135633.jpg\"></a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"desc\">Đồng ch&iacute; Dương Văn Tiến chung vui Ng&agrave;y hội Đại đo&agrave;n kết to&agrave;n d&acirc;n tộc c&ugrave;ng nh&acirc;n d&acirc;n x&oacute;m Quyết Tiến.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>X&oacute;m Quyết Tiến c&oacute; 192 hộ d&acirc;n, với 630 nh&acirc;n khẩu, thuộc 5 d&acirc;n tộc anh em. Thực hiện cuộc vận động &ldquo;To&agrave;n d&acirc;n đo&agrave;n kết x&acirc;y dựng đời sống văn h&oacute;a ở khu d&acirc;n cư&rdquo;, nh&acirc;n d&acirc;n x&oacute;m Quyết Tiến đ&atilde; ph&aacute;t huy sức mạnh đại đo&agrave;n kết; t&iacute;ch cực hưởng ứng c&aacute;c phong tr&agrave;o thi đua, cuộc vận động; khắc phục kh&oacute; khăn để ph&aacute;t triển kinh tế.</p>\r\n<p>Nhờ đ&oacute;, đời sống vật chất, tinh thần của b&agrave; con&nbsp;trong x&oacute;m ng&agrave;y c&agrave;ng được n&acirc;ng cao. Đến nay, tỷ lệ&nbsp;hộ ngh&egrave;o giảm c&ograve;n&nbsp;16,8%, hộ cận ngh&egrave;o c&ograve;n 14,2%, thu nhập b&igrave;nh qu&acirc;n của người d&acirc;n trong&nbsp;x&oacute;m đạt 40 triệu đồng/người/năm. Năm 2022, x&oacute;m c&oacute; 165/192 hộ đạt Gia đ&igrave;nh văn h&oacute;a (chiếm 86,8%). Qua đ&oacute;, Quyết Tiến đạt danh hiệu X&oacute;m văn h&oacute;a.</p>\r\n<div>\r\n<table class=\"image center\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"new\"><a class=\"example-image-link\" href=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/duongvantien2.15-11-2022_20221115135633.jpg\" data-lightbox=\"slide-1\" data-title=\"Đồng ch&iacute; Dương Văn Tiến c&ugrave;ng l&atilde;nh đạo huyện Định Ho&aacute; cắt băng kh&aacute;nh th&agrave;nh nh&agrave; văn ho&aacute; x&oacute;m Quyết Tiến.\"><img src=\"https://baothainguyen.vn/file/e7837c027f6ecd14017ffa4e5f2a0e34/112022/duongvantien2.15-11-2022_20221115135633.jpg\"></a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"desc\">Đồng ch&iacute; Dương Văn Tiến c&ugrave;ng l&atilde;nh đạo huyện Định Ho&aacute; cắt băng kh&aacute;nh th&agrave;nh nh&agrave; văn ho&aacute; x&oacute;m Quyết Tiến.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>Nh&acirc;n dịp n&agrave;y, x&oacute;m Quyết Tiến đ&atilde; tổ chức&nbsp;kh&aacute;nh th&agrave;nh c&ocirc;ng tr&igrave;nh nh&agrave; văn ho&aacute;.&nbsp;Thay mặt Tỉnh uỷ, HĐND, UBND, Ủy ban MTTQ tỉnh, đồng ch&iacute; Dương Văn Tiến đ&atilde;&nbsp;tặng bộ thiết bị nh&agrave; văn ho&aacute; trị gi&aacute; 50 triệu đồng cho x&oacute;m Quyết Tiến; tặng qu&agrave; cho 10 gia đ&igrave;nh ch&iacute;nh s&aacute;ch, gia đ&igrave;nh văn h&oacute;a ti&ecirc;u biểu của x&oacute;m.</p>', 'posts/November2022/Y2ZZILNhXBNCGMxEfd4q.png', 'lanh-dao-tinh-chung-vui-ngay-hoi-dai-doan-ket-tai-cac-dia-phuong', 'Ngày 15-11, các đồng chí lãnh đạo tỉnh dự và chung vui Ngày hội Đại đoàn kết toàn dân tộc tại một số khu dân cư trên địa bàn tỉnh.', NULL, 'PUBLISHED', 1, '2022-11-19 00:25:02', '2022-11-19 00:25:02');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'Develop', 'Develop permission', '2022-11-17 21:13:01', '2022-12-04 19:53:23'),
(2, 'Admin', 'Admin', '2022-11-17 21:13:01', '2022-12-04 19:55:16');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'TRUNG TÂM PHÁT HÀNH PHIM VÀ CHIẾU BÓNG TỈNH THÁI NGUYÊN', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Trung tâm Phát hành phim và Chiếu bóng là đơn vị sự nghiệp trực thuộc Sở Văn hóa, Thể thao và Du lịch có chức năng thực hiện các hoạt động điện ảnh trên địa bàn tỉnh.', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/December2022/kNY5bUCPU7raP32HRbxv.png', '', 'image', 4, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 11, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Rạp chiếu phim', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Rạp chiếu phim', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'social-network.facebook', 'Facebook', '#', NULL, 'text', 6, 'Social Network'),
(12, 'social-network.twitter', 'Twitter', '#', NULL, 'text', 7, 'Social Network'),
(13, 'social-network.pinterest', 'Pinterest', '#', NULL, 'text', 8, 'Social Network'),
(14, 'social-network.linkedin', 'Linkedin', '#', NULL, 'text', 9, 'Social Network'),
(15, 'site.email', 'Email', 'ttphathanhphimtn@gmail.com', NULL, 'text', 12, 'Site'),
(16, 'site.phone', 'Phone', '0280855627', NULL, 'text', 13, 'Site'),
(17, 'site.address', 'Address', 'Số 21 đường Hùng Vương -  Thành phố Thái Nguyên - Thái Nguyên.', NULL, 'text', 14, 'Site'),
(18, 'site.googlemap', 'Site Google Map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1854.8838046241194!2d105.84462036494293!3d21.594992448823376!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xe287a2d067b2902d!2zUuG6oXAgY2hp4bq_dSBiw7NuZyBOaMOibiBEw6Ju!5e0!3m2!1svi!2s!4v1668842147268!5m2!1svi!2s\" width=\"100%\" height=\"650\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, 'text', 15, 'Site'),
(19, 'site.paginate_news', 'Phân trang Bài viết - Sự kiện', '4', NULL, 'text', 16, 'Site'),
(20, 'site.favicon', 'Favicon', 'settings/November2022/u6r2C8SBjHamecHKSkzN.png', NULL, 'image', 10, 'Site'),
(21, 'site.copyright', 'Copyright', 'Bản quyền thuộc Trung tâm Phát hành phim và Chiếu bóng tỉnh Thái Nguyên', NULL, 'text', 17, 'Site'),
(22, 'site.top-banner', 'Top banner', 'settings/December2022/127RVIAobLFGCR7Jk1kC.png', NULL, 'image', 3, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `showtimes`
--

CREATE TABLE `showtimes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `showtimes`
--

INSERT INTO `showtimes` (`id`, `title`, `slug`, `description`, `body`, `time`, `created_at`, `updated_at`, `status`) VALUES
(1, 'LỊCH CHIẾU PHIM TỪ NGÀY 15/11/2013 - 30/11/2013', 'lich-chieu-phim-tu-ngay-15-11-2013-30-11-2013', NULL, '<p class=\"MsoNormal\" style=\"text-align: center;\"><strong><span style=\"font-family: \'Times New Roman\', serif;\">TRUNG T&Acirc;M PH&Aacute;T H&Agrave;NH PHIM V&Agrave; CHIẾU B&Oacute;NG ĐẮK LẮK</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: center;\"><strong><span style=\"font-family: \'Times New Roman\', serif;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PH&Ograve;NG PH&Aacute;T H&Agrave;NH V&Agrave; TUY&Ecirc;N TRUYỀN</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\"><strong><span style=\"font-size: 20pt; font-family: Arial, sans-serif;\">L</span></strong><strong><span style=\"font-size: 20pt; font-family: \'Times New Roman\', serif;\">ỊCH CHIẾU PHIM&nbsp;</span></strong><strong><span style=\"font-size: 20pt; font-family: \'Times New Roman\', serif;\">( Từ ng&agrave;y 1/11&nbsp; &ndash;15/11/2013)</span></strong></p>\r\n<table style=\"border-collapse: collapse; width: 100%; height: 129.067px;\" border=\"1\"><colgroup><col style=\"width: 20.0117%;\"><col style=\"width: 20.0117%;\"><col style=\"width: 20.0117%;\"><col style=\"width: 20.0117%;\"><col style=\"width: 20.0117%;\"></colgroup>\r\n<tbody>\r\n<tr style=\"height: 26.1333px;\">\r\n<td style=\"height: 26.1333px;\"><span id=\"dnn_ctr396_Tintucchitiet_lblContent\"><strong><span style=\"font-size: 14pt; font-family: \'Times New Roman\', serif;\">T&Ecirc;N PHIM</span></strong></span></td>\r\n<td style=\"height: 26.1333px; text-align: center;\"><span id=\"dnn_ctr396_Tintucchitiet_lblContent\"><strong><span style=\"font-size: 14pt; font-family: \'Times New Roman\', serif;\">NG&Agrave;Y CHIẾU</span></strong></span></td>\r\n<td style=\"height: 26.1333px; text-align: center;\"><span id=\"dnn_ctr396_Tintucchitiet_lblContent\"><strong><span style=\"font-size: 14pt; font-family: \'Times New Roman\', serif;\">XUẤT CHIẾU</span></strong></span></td>\r\n<td style=\"height: 26.1333px; text-align: center;\"><span id=\"dnn_ctr396_Tintucchitiet_lblContent\"><strong><span style=\"font-size: 14pt; font-family: \'Times New Roman\', serif;\">RẠP CHIẾU</span></strong></span></td>\r\n<td style=\"height: 26.1333px; text-align: center;\"><span id=\"dnn_ctr396_Tintucchitiet_lblContent\"><strong><span style=\"font-size: 14pt; font-family: \'Times New Roman\', serif;\">GHI CH&Uacute;</span></strong></span></td>\r\n</tr>\r\n<tr style=\"height: 26.1333px;\">\r\n<td style=\"height: 26.1333px;\"><span id=\"dnn_ctr396_Tintucchitiet_lblContent\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\', serif;\">ĐẠI N&Aacute;O HỌC ĐƯỜNG (PHIM HD)</span></span></td>\r\n<td style=\"height: 26.1333px; text-align: center;\">20/11/2013</td>\r\n<td style=\"height: 26.1333px; text-align: center;\">20h</td>\r\n<td style=\"height: 26.1333px; text-align: center;\">KIM ĐỒNG</td>\r\n<td style=\"height: 26.1333px; text-align: center;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 54.4px;\">\r\n<td style=\"height: 54.4px;\">TH&Agrave;NH PHỐ XƯƠNG (VŨ KH&Iacute; B&Oacute;NG Đ&Ecirc;M)</td>\r\n<td style=\"height: 54.4px; text-align: center;\">\r\n<p>15/11/2013</p>\r\n</td>\r\n<td style=\"height: 54.4px; text-align: center;\">20h</td>\r\n<td style=\"height: 54.4px; text-align: center;\">HƯNG ĐẠO</td>\r\n<td style=\"height: 54.4px; text-align: center;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 22.4px;\">\r\n<td style=\"height: 22.4px;\">NGƯỜI H&Ugrave;NG (MACHETE KILLS) (PHIM HD)</td>\r\n<td style=\"height: 22.4px; text-align: center;\">Sắp Chiếu</td>\r\n<td style=\"height: 22.4px; text-align: center;\">20h</td>\r\n<td style=\"height: 22.4px; text-align: center;\">KIM ĐỒNG</td>\r\n<td style=\"height: 22.4px; text-align: center;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"text-align: center;\">&nbsp;</p>', NULL, '2022-11-19 02:55:00', '2022-11-19 03:04:47', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2022-11-17 21:13:05', '2022-11-17 21:13:05'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2022-11-17 21:13:05', '2022-11-17 21:13:05'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2022-11-17 21:13:05', '2022-11-17 21:13:05'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2022-11-17 21:13:05', '2022-11-17 21:13:05'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2022-11-17 21:13:05', '2022-11-17 21:13:05'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2022-11-17 21:13:05', '2022-11-17 21:13:05'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2022-11-17 21:13:05', '2022-11-17 21:13:05'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2022-11-17 21:13:05', '2022-11-17 21:13:05'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2022-11-17 21:13:05', '2022-11-17 21:13:05'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2022-11-17 21:13:05', '2022-11-17 21:13:05'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2022-11-17 21:13:05', '2022-11-17 21:13:05'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2022-11-17 21:13:05', '2022-11-17 21:13:05'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2022-11-17 21:13:05', '2022-11-17 21:13:05'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2022-11-17 21:13:05', '2022-11-17 21:13:05'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2022-11-17 21:13:05', '2022-11-17 21:13:05'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2022-11-17 21:13:05', '2022-11-17 21:13:05'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2022-11-17 21:13:05', '2022-11-17 21:13:05'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2022-11-17 21:13:05', '2022-11-17 21:13:05'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2022-11-17 21:13:05', '2022-11-17 21:13:05'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2022-11-17 21:13:05', '2022-11-17 21:13:05'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2022-11-17 21:13:05', '2022-11-17 21:13:05'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2022-11-17 21:13:05', '2022-11-17 21:13:05'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2022-11-17 21:13:05', '2022-11-17 21:13:05'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2022-11-17 21:13:05', '2022-11-17 21:13:05'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2022-11-17 21:13:05', '2022-11-17 21:13:05'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2022-11-17 21:13:05', '2022-11-17 21:13:05'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2022-11-17 21:13:05', '2022-11-17 21:13:05'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2022-11-17 21:13:05', '2022-11-17 21:13:05'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2022-11-17 21:13:05', '2022-11-17 21:13:05'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2022-11-17 21:13:05', '2022-11-17 21:13:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Super Admin', 'superadmin@admin.com', 'users/default.png', NULL, '$2y$10$H/i/adR.GdO2xYt/iA1jReGgOGqnn1S1dNODvpRSHjmY4EKVH9342', 'UB8B6QDRDX4xd21F1lWsRnrtBmxvCQut9AIaWCcTDzwSLtSg4ApARVXUTVPz', '{\"locale\":\"vi\"}', '2022-11-17 21:13:04', '2022-12-04 19:52:35'),
(2, 2, 'Quản trị viên', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$xS8Z8zF2PEGjvtlvNWMdPO66Mc6Q9DLrI92wmkiCzqzjQYlH2eRF6', 'KS1Fubc5tFR647nPGSQ3QNaoaxLNkTwjOPIX7KJuL3LxjXYfmQPha7FtaPoQ', '{\"locale\":\"vi\"}', '2022-12-04 19:56:15', '2022-12-04 19:56:15'),
(3, 2, 'Bùi Lệ Nhài', 'kembongk8@gmail.com', 'users/default.png', NULL, '$2y$10$lVnNpNm9Joz5lvsoJZBAFOne5.tAJejcas2TMgmz2EauZyUaNyzDO', NULL, '{\"locale\":\"vi\"}', '2023-01-11 00:11:57', '2023-01-11 00:11:57');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(3, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `film_authors`
--
ALTER TABLE `film_authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `film_categories`
--
ALTER TABLE `film_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `film_types`
--
ALTER TABLE `film_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `pivot_authors_films`
--
ALTER TABLE `pivot_authors_films`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pivot_category_films`
--
ALTER TABLE `pivot_category_films`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pivot_types_films`
--
ALTER TABLE `pivot_types_films`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `showtimes`
--
ALTER TABLE `showtimes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `films`
--
ALTER TABLE `films`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `film_authors`
--
ALTER TABLE `film_authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `film_categories`
--
ALTER TABLE `film_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `film_types`
--
ALTER TABLE `film_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `pivot_authors_films`
--
ALTER TABLE `pivot_authors_films`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pivot_category_films`
--
ALTER TABLE `pivot_category_films`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pivot_types_films`
--
ALTER TABLE `pivot_types_films`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `showtimes`
--
ALTER TABLE `showtimes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
