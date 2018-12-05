-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Oct 09, 2018 at 02:01 AM
-- Server version: 5.7.22
-- PHP Version: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bitnami_wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-06-12 08:53:31', '2018-06-12 08:53:31', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://127.0.0.1:8081/wordpress/', 'yes'),
(2, 'home', 'http://127.0.0.1:8081/wordpress/', 'yes'),
(3, 'blogname', 'MaHi', 'yes'),
(4, 'blogdescription', 'Mythology &amp; History Online Database', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'kkalarasl@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '5', 'yes'),
(23, 'date_format', 'd/m/Y', 'yes'),
(24, 'time_format', 'g:i A', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:110:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:9:\"events/?$\";s:25:\"index.php?post_type=event\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:115:\"/home/konstantinoskalaras/Documents/wordpress-4.9.6-0/apps/wordpress/htdocs/wp-content/themes/MaHi Theme/footer.php\";i:1;s:119:\"/home/konstantinoskalaras/Documents/wordpress-4.9.6-0/apps/wordpress/htdocs/wp-content/themes/MaHi Theme/front-page.php\";i:2;s:116:\"/home/konstantinoskalaras/Documents/wordpress-4.9.6-0/apps/wordpress/htdocs/wp-content/themes/MaHi Theme/archive.php\";i:3;s:114:\"/home/konstantinoskalaras/Documents/wordpress-4.9.6-0/apps/wordpress/htdocs/wp-content/themes/MaHi Theme/style.css\";i:4;s:0:\"\";}', 'no'),
(40, 'template', 'MaHi Theme', 'yes'),
(41, 'stylesheet', 'MaHi Theme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '8', 'yes'),
(84, 'page_on_front', '5', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:5:{i:1538999668;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1539032069;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1539075340;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1539077315;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1528793758;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(119, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1538990281;s:7:\"checked\";a:1:{s:10:\"MaHi Theme\";s:3:\"0.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(124, 'can_compress_scripts', '0', 'no'),
(138, 'current_theme', 'Mythology &amp; History (MaHi)', 'yes'),
(139, 'theme_mods_MaHi Theme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:18:\"headerMenuLocation\";i:3;s:21:\"footerMenuLocationOne\";i:4;s:21:\"footerMenuLocationTwo\";i:5;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(140, 'theme_switched', '', 'yes'),
(143, 'WPLANG', '', 'yes'),
(144, 'new_admin_email', 'kkalarasl@gmail.com', 'yes'),
(196, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(207, 'recently_activated', 'a:0:{}', 'yes'),
(212, 'widget_maxmegamenu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(213, 'megamenu_version', '2.4.2', 'yes'),
(214, 'megamenu_settings', 'a:2:{s:6:\"prefix\";s:8:\"disabled\";s:12:\"descriptions\";s:7:\"enabled\";}', 'yes'),
(247, 'category_children', 'a:0:{}', 'yes'),
(438, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:19:\"kkalarasl@gmail.com\";s:7:\"version\";s:5:\"4.9.8\";s:9:\"timestamp\";i:1536837835;}', 'no'),
(559, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1538990267;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(568, '_site_transient_timeout_theme_roots', '1538992073', 'no'),
(569, '_site_transient_theme_roots', 'a:1:{s:10:\"MaHi Theme\";s:7:\"/themes\";}', 'no'),
(570, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1538990282;s:7:\"checked\";a:9:{s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"6.73\";s:43:\"all-in-one-seo-pack/all_in_one_seo_pack.php\";s:5:\"2.7.2\";s:50:\"google-analytics-for-wordpress/googleanalytics.php\";s:5:\"7.0.9\";s:9:\"hello.php\";s:3:\"1.7\";s:19:\"jetpack/jetpack.php\";s:5:\"6.3.3\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.0.2\";s:27:\"simple-tags/simple-tags.php\";s:5:\"2.4.7\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:5:\"1.3.3\";}s:8:\"response\";a:4:{s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"6.77\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.6.77.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=1268186\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=1268186\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=1876524\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=1876524\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";s:6:\"5.2.17\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:43:\"all-in-one-seo-pack/all_in_one_seo_pack.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:33:\"w.org/plugins/all-in-one-seo-pack\";s:4:\"slug\";s:19:\"all-in-one-seo-pack\";s:6:\"plugin\";s:43:\"all-in-one-seo-pack/all_in_one_seo_pack.php\";s:11:\"new_version\";s:3:\"2.8\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/all-in-one-seo-pack/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/all-in-one-seo-pack.2.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/all-in-one-seo-pack/assets/icon-256x256.png?rev=979908\";s:2:\"1x\";s:71:\"https://ps.w.org/all-in-one-seo-pack/assets/icon-128x128.png?rev=979908\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/all-in-one-seo-pack/assets/banner-1544x500.png?rev=1354894\";s:2:\"1x\";s:74:\"https://ps.w.org/all-in-one-seo-pack/assets/banner-772x250.png?rev=1354894\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:50:\"google-analytics-for-wordpress/googleanalytics.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:44:\"w.org/plugins/google-analytics-for-wordpress\";s:4:\"slug\";s:30:\"google-analytics-for-wordpress\";s:6:\"plugin\";s:50:\"google-analytics-for-wordpress/googleanalytics.php\";s:11:\"new_version\";s:5:\"7.2.0\";s:3:\"url\";s:61:\"https://wordpress.org/plugins/google-analytics-for-wordpress/\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/plugin/google-analytics-for-wordpress.7.2.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:83:\"https://ps.w.org/google-analytics-for-wordpress/assets/icon-256x256.png?rev=1598927\";s:2:\"1x\";s:75:\"https://ps.w.org/google-analytics-for-wordpress/assets/icon.svg?rev=1598927\";s:3:\"svg\";s:75:\"https://ps.w.org/google-analytics-for-wordpress/assets/icon.svg?rev=1598927\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:86:\"https://ps.w.org/google-analytics-for-wordpress/assets/banner-1544x500.png?rev=1598927\";s:2:\"1x\";s:85:\"https://ps.w.org/google-analytics-for-wordpress/assets/banner-772x250.png?rev=1598927\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:19:\"jetpack/jetpack.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/jetpack\";s:4:\"slug\";s:7:\"jetpack\";s:6:\"plugin\";s:19:\"jetpack/jetpack.php\";s:11:\"new_version\";s:3:\"6.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/jetpack/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/jetpack.6.5.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=1791404\";s:2:\"1x\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";s:3:\"svg\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1791404\";s:2:\"1x\";s:62:\"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=1791404\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.0.2\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"simple-tags/simple-tags.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/simple-tags\";s:4:\"slug\";s:11:\"simple-tags\";s:6:\"plugin\";s:27:\"simple-tags/simple-tags.php\";s:11:\"new_version\";s:5:\"2.4.7\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/simple-tags/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/simple-tags.2.4.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/simple-tags/assets/icon-256x256.jpg?rev=1675933\";s:2:\"1x\";s:64:\"https://ps.w.org/simple-tags/assets/icon-128x128.jpg?rev=1675933\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/simple-tags/assets/banner-772x250.png?rev=1675933\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"1.3.3\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.png?rev=1900656\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.png?rev=1900656\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3, 5, '_edit_last', '1'),
(4, 5, '_edit_lock', '1531138860:1'),
(6, 8, '_edit_last', '1'),
(7, 8, '_edit_lock', '1531139064:1'),
(8, 10, '_edit_last', '1'),
(9, 10, '_edit_lock', '1531138870:1'),
(10, 13, '_edit_last', '1'),
(11, 13, '_edit_lock', '1531138792:1'),
(12, 15, '_edit_last', '1'),
(13, 15, '_edit_lock', '1531910175:1'),
(14, 17, '_edit_last', '1'),
(15, 17, '_edit_lock', '1531138774:1'),
(16, 19, '_edit_last', '1'),
(17, 19, '_edit_lock', '1531138751:1'),
(18, 21, '_edit_last', '1'),
(19, 21, '_edit_lock', '1531910188:1'),
(20, 23, '_edit_last', '1'),
(21, 23, '_edit_lock', '1531910502:1'),
(22, 25, '_edit_last', '1'),
(23, 25, '_edit_lock', '1528795801:1'),
(24, 27, '_edit_last', '1'),
(25, 27, '_edit_lock', '1528795810:1'),
(26, 29, '_edit_last', '1'),
(27, 29, '_edit_lock', '1531138669:1'),
(34, 33, '_edit_last', '1'),
(35, 33, '_edit_lock', '1528795935:1'),
(36, 35, '_edit_last', '1'),
(37, 35, '_edit_lock', '1528795949:1'),
(38, 37, '_edit_last', '1'),
(39, 37, '_edit_lock', '1528967024:1'),
(40, 39, '_edit_last', '1'),
(41, 39, '_edit_lock', '1528966849:1'),
(42, 41, '_edit_last', '1'),
(43, 41, '_edit_lock', '1528796078:1'),
(44, 43, '_edit_last', '1'),
(45, 43, '_edit_lock', '1528796455:1'),
(46, 45, '_edit_last', '1'),
(47, 45, '_edit_lock', '1528796119:1'),
(48, 47, '_edit_last', '1'),
(49, 47, '_edit_lock', '1528796132:1'),
(239, 73, '_menu_item_type', 'custom'),
(240, 73, '_menu_item_menu_item_parent', '0'),
(241, 73, '_menu_item_object_id', '73'),
(242, 73, '_menu_item_object', 'custom'),
(243, 73, '_menu_item_target', ''),
(244, 73, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(245, 73, '_menu_item_xfn', ''),
(246, 73, '_menu_item_url', 'http://localhost:8081/wordpress/'),
(247, 73, '_menu_item_orphaned', '1528980647'),
(248, 74, '_menu_item_type', 'post_type'),
(249, 74, '_menu_item_menu_item_parent', '0'),
(250, 74, '_menu_item_object_id', '8'),
(251, 74, '_menu_item_object', 'page'),
(252, 74, '_menu_item_target', ''),
(253, 74, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(254, 74, '_menu_item_xfn', ''),
(255, 74, '_menu_item_url', ''),
(266, 76, '_menu_item_type', 'post_type'),
(267, 76, '_menu_item_menu_item_parent', '0'),
(268, 76, '_menu_item_object_id', '13'),
(269, 76, '_menu_item_object', 'page'),
(270, 76, '_menu_item_target', ''),
(271, 76, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(272, 76, '_menu_item_xfn', ''),
(273, 76, '_menu_item_url', ''),
(320, 82, '_menu_item_type', 'post_type'),
(321, 82, '_menu_item_menu_item_parent', '0'),
(322, 82, '_menu_item_object_id', '10'),
(323, 82, '_menu_item_object', 'page'),
(324, 82, '_menu_item_target', ''),
(325, 82, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(326, 82, '_menu_item_xfn', ''),
(327, 82, '_menu_item_url', ''),
(356, 86, '_menu_item_type', 'post_type'),
(357, 86, '_menu_item_menu_item_parent', '0'),
(358, 86, '_menu_item_object_id', '15'),
(359, 86, '_menu_item_object', 'page'),
(360, 86, '_menu_item_target', ''),
(361, 86, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(362, 86, '_menu_item_xfn', ''),
(363, 86, '_menu_item_url', ''),
(365, 87, '_menu_item_type', 'post_type'),
(366, 87, '_menu_item_menu_item_parent', '0'),
(367, 87, '_menu_item_object_id', '19'),
(368, 87, '_menu_item_object', 'page'),
(369, 87, '_menu_item_target', ''),
(370, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(371, 87, '_menu_item_xfn', ''),
(372, 87, '_menu_item_url', ''),
(374, 88, '_menu_item_type', 'post_type'),
(375, 88, '_menu_item_menu_item_parent', '0'),
(376, 88, '_menu_item_object_id', '17'),
(377, 88, '_menu_item_object', 'page'),
(378, 88, '_menu_item_target', ''),
(379, 88, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(380, 88, '_menu_item_xfn', ''),
(381, 88, '_menu_item_url', ''),
(401, 91, '_menu_item_type', 'post_type'),
(402, 91, '_menu_item_menu_item_parent', '0'),
(403, 91, '_menu_item_object_id', '15'),
(404, 91, '_menu_item_object', 'page'),
(405, 91, '_menu_item_target', ''),
(406, 91, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(407, 91, '_menu_item_xfn', ''),
(408, 91, '_menu_item_url', ''),
(410, 92, '_menu_item_type', 'post_type'),
(411, 92, '_menu_item_menu_item_parent', '0'),
(412, 92, '_menu_item_object_id', '19'),
(413, 92, '_menu_item_object', 'page'),
(414, 92, '_menu_item_target', ''),
(415, 92, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(416, 92, '_menu_item_xfn', ''),
(417, 92, '_menu_item_url', ''),
(419, 93, '_menu_item_type', 'post_type'),
(420, 93, '_menu_item_menu_item_parent', '0'),
(421, 93, '_menu_item_object_id', '17'),
(422, 93, '_menu_item_object', 'page'),
(423, 93, '_menu_item_target', ''),
(424, 93, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(425, 93, '_menu_item_xfn', ''),
(426, 93, '_menu_item_url', ''),
(428, 94, '_menu_item_type', 'post_type'),
(429, 94, '_menu_item_menu_item_parent', '0'),
(430, 94, '_menu_item_object_id', '13'),
(431, 94, '_menu_item_object', 'page'),
(432, 94, '_menu_item_target', ''),
(433, 94, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(434, 94, '_menu_item_xfn', ''),
(435, 94, '_menu_item_url', ''),
(446, 96, '_menu_item_type', 'post_type'),
(447, 96, '_menu_item_menu_item_parent', '0'),
(448, 96, '_menu_item_object_id', '10'),
(449, 96, '_menu_item_object', 'page'),
(450, 96, '_menu_item_target', ''),
(451, 96, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(452, 96, '_menu_item_xfn', ''),
(453, 96, '_menu_item_url', ''),
(455, 97, '_menu_item_type', 'post_type'),
(456, 97, '_menu_item_menu_item_parent', '0'),
(457, 97, '_menu_item_object_id', '8'),
(458, 97, '_menu_item_object', 'page'),
(459, 97, '_menu_item_target', ''),
(460, 97, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(461, 97, '_menu_item_xfn', ''),
(462, 97, '_menu_item_url', ''),
(464, 98, '_menu_item_type', 'post_type'),
(465, 98, '_menu_item_menu_item_parent', '0'),
(466, 98, '_menu_item_object_id', '29'),
(467, 98, '_menu_item_object', 'page'),
(468, 98, '_menu_item_target', ''),
(469, 98, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(470, 98, '_menu_item_xfn', ''),
(471, 98, '_menu_item_url', ''),
(473, 99, '_menu_item_type', 'post_type'),
(474, 99, '_menu_item_menu_item_parent', '0'),
(475, 99, '_menu_item_object_id', '25'),
(476, 99, '_menu_item_object', 'page'),
(477, 99, '_menu_item_target', ''),
(478, 99, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(479, 99, '_menu_item_xfn', ''),
(480, 99, '_menu_item_url', ''),
(482, 100, '_menu_item_type', 'post_type'),
(483, 100, '_menu_item_menu_item_parent', '0'),
(484, 100, '_menu_item_object_id', '27'),
(485, 100, '_menu_item_object', 'page'),
(486, 100, '_menu_item_target', ''),
(487, 100, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(488, 100, '_menu_item_xfn', ''),
(489, 100, '_menu_item_url', ''),
(505, 103, '_menu_item_type', 'custom'),
(506, 103, '_menu_item_menu_item_parent', '0'),
(507, 103, '_menu_item_object_id', '103'),
(508, 103, '_menu_item_object', 'custom'),
(509, 103, '_menu_item_target', ''),
(510, 103, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(511, 103, '_menu_item_xfn', ''),
(512, 103, '_menu_item_url', 'http://localhost:8081/wordpress/'),
(514, 104, '_menu_item_type', 'custom'),
(515, 104, '_menu_item_menu_item_parent', '0'),
(516, 104, '_menu_item_object_id', '104'),
(517, 104, '_menu_item_object', 'custom'),
(518, 104, '_menu_item_target', ''),
(519, 104, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(520, 104, '_menu_item_xfn', ''),
(521, 104, '_menu_item_url', 'http://localhost:8081/wordpress/'),
(523, 1, '_edit_lock', '1529658738:1'),
(524, 1, '_edit_last', '1'),
(527, 106, '_edit_last', '1'),
(528, 106, '_edit_lock', '1529659521:1'),
(531, 108, '_edit_last', '1'),
(532, 108, '_edit_lock', '1531138430:1'),
(533, 111, '_wp_attached_file', '2018/06/Zeus.jpg'),
(534, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2560;s:6:\"height\";i:917;s:4:\"file\";s:16:\"2018/06/Zeus.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"Zeus-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"Zeus-300x107.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:107;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"Zeus-768x275.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:275;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"Zeus-1024x367.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:367;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(535, 106, '_thumbnail_id', '111'),
(544, 115, '_wp_attached_file', '2018/06/Alexander_the_Great_mosaic.jpg'),
(545, 115, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1152;s:4:\"file\";s:38:\"2018/06/Alexander_the_Great_mosaic.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"Alexander_the_Great_mosaic-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"Alexander_the_Great_mosaic-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"Alexander_the_Great_mosaic-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:39:\"Alexander_the_Great_mosaic-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(546, 108, '_thumbnail_id', '115'),
(553, 137, '_edit_last', '1'),
(554, 137, '_edit_lock', '1530518173:1'),
(555, 137, '_thumbnail_id', '115'),
(558, 139, '_edit_last', '1'),
(561, 139, '_edit_lock', '1530518205:1'),
(562, 141, '_edit_last', '1'),
(563, 141, '_edit_lock', '1530518196:1'),
(564, 141, '_thumbnail_id', '115'),
(567, 139, '_thumbnail_id', '115'),
(570, 143, '_edit_last', '1'),
(571, 143, '_edit_lock', '1530518238:1'),
(572, 143, '_thumbnail_id', '115'),
(575, 145, '_edit_last', '1'),
(576, 145, '_edit_lock', '1530518249:1'),
(577, 145, '_thumbnail_id', '115'),
(590, 19, '_wp_page_template', 'contact-page.php'),
(591, 15, '_wp_page_template', 'cardgame-page.php'),
(592, 17, '_wp_page_template', 'forum-page.php'),
(593, 13, '_wp_page_template', 'history-page.php'),
(594, 10, '_wp_page_template', 'mythology-page.php'),
(595, 157, '_wp_attached_file', '2018/07/homebanner.jpg'),
(596, 157, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:796;s:4:\"file\";s:22:\"2018/07/homebanner.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"homebanner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"homebanner-300x124.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:124;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"homebanner-768x318.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:318;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"homebanner-1024x425.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:425;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"SmallThumbnail\";a:4:{s:4:\"file\";s:22:\"homebanner-377x242.jpg\";s:5:\"width\";i:377;s:6:\"height\";i:242;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"DefaultSize\";a:4:{s:4:\"file\";s:23:\"homebanner-1200x796.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:796;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(597, 158, '_wp_attached_file', '2018/07/banner.jpg'),
(598, 158, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:796;s:4:\"file\";s:18:\"2018/07/banner.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"banner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"banner-300x124.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:124;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"banner-768x318.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:318;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"banner-1024x425.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:425;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"SmallThumbnail\";a:4:{s:4:\"file\";s:18:\"banner-377x242.jpg\";s:5:\"width\";i:377;s:6:\"height\";i:242;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"DefaultSize\";a:4:{s:4:\"file\";s:19:\"banner-1200x796.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:796;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(599, 159, '_wp_attached_file', '2018/07/map.jpg'),
(600, 159, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:742;s:4:\"file\";s:15:\"2018/07/map.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"map-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"map-300x116.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:116;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"map-768x297.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:297;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"map-1024x396.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:396;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"SmallThumbnail\";a:4:{s:4:\"file\";s:15:\"map-377x242.jpg\";s:5:\"width\";i:377;s:6:\"height\";i:242;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"DefaultSize\";a:4:{s:4:\"file\";s:16:\"map-1200x742.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:742;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"PageBanner\";a:4:{s:4:\"file\";s:16:\"map-1920x742.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:742;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(601, 160, '_wp_attached_file', '2018/07/History.jpg'),
(602, 160, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2018/07/History.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"History-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"History-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"History-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"History-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"SmallThumbnail\";a:4:{s:4:\"file\";s:19:\"History-377x242.jpg\";s:5:\"width\";i:377;s:6:\"height\";i:242;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"PageBanner\";a:4:{s:4:\"file\";s:20:\"History-1200x796.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:796;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:18:\"Tryfonov - Fotolia\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1318267066\";s:9:\"copyright\";s:18:\"Tryfonov - Fotolia\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:28:\"adventure stories background\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:49:{i:0;s:7:\"history\";i:1;s:3:\"map\";i:2;s:3:\"old\";i:3;s:10:\"background\";i:4;s:7:\"compass\";i:5;s:4:\"ship\";i:6;s:6:\"design\";i:7;s:4:\"page\";i:8;s:9:\"adventure\";i:9;s:6:\"seaman\";i:10;s:5:\"dirty\";i:11;s:10:\"historical\";i:12;s:7:\"america\";i:13;s:4:\"aged\";i:14;s:5:\"north\";i:15;s:7:\"collage\";i:16;s:6:\"burned\";i:17;s:4:\"rope\";i:18;s:8:\"treasure\";i:19;s:6:\"canvas\";i:20;s:5:\"burnt\";i:21;s:7:\"pirates\";i:22;s:8:\"abstract\";i:23;s:9:\"parchment\";i:24;s:14:\"sailing vessel\";i:25;s:10:\"manuscript\";i:26;s:5:\"frame\";i:27;s:4:\"node\";i:28;s:8:\"sea node\";i:29;s:6:\"grungy\";i:30;s:7:\"science\";i:31;s:4:\"gold\";i:32;s:5:\"float\";i:33;s:7:\"corsair\";i:34;s:9:\"engraving\";i:35;s:5:\"shell\";i:36;s:5:\"paper\";i:37;s:6:\"global\";i:38;s:3:\"art\";i:39;s:7:\"antique\";i:40;s:9:\"geography\";i:41;s:7:\"ancient\";i:42;s:3:\"sea\";i:43;s:6:\"grunge\";i:44;s:9:\"traveling\";i:45;s:6:\"border\";i:46;s:10:\"navigation\";i:47;s:9:\"decoupage\";i:48;s:6:\"oceans\";}}}'),
(603, 161, '_wp_attached_file', '2018/07/Mythology.jpg'),
(604, 161, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:800;s:4:\"file\";s:21:\"2018/07/Mythology.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Mythology-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"Mythology-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"Mythology-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"Mythology-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"SmallThumbnail\";a:4:{s:4:\"file\";s:21:\"Mythology-377x242.jpg\";s:5:\"width\";i:377;s:6:\"height\";i:242;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"PageBanner\";a:4:{s:4:\"file\";s:22:\"Mythology-1200x796.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:796;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(605, 162, '_wp_attached_file', '2018/07/alexander.jpg'),
(606, 162, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:800;s:4:\"file\";s:21:\"2018/07/alexander.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"alexander-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"alexander-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"alexander-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"alexander-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"SmallThumbnail\";a:4:{s:4:\"file\";s:21:\"alexander-377x242.jpg\";s:5:\"width\";i:377;s:6:\"height\";i:242;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"PageBanner\";a:4:{s:4:\"file\";s:22:\"alexander-1200x796.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:796;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(607, 163, '_wp_attached_file', '2018/07/forum.jpg'),
(608, 163, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:800;s:4:\"file\";s:17:\"2018/07/forum.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"forum-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"forum-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"forum-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"forum-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"SmallThumbnail\";a:4:{s:4:\"file\";s:17:\"forum-377x242.jpg\";s:5:\"width\";i:377;s:6:\"height\";i:242;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"PageBanner\";a:4:{s:4:\"file\";s:18:\"forum-1200x796.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:796;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(609, 164, '_wp_attached_file', '2018/07/zeus.jpg'),
(610, 164, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:800;s:4:\"file\";s:16:\"2018/07/zeus.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"zeus-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"zeus-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"zeus-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"zeus-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"SmallThumbnail\";a:4:{s:4:\"file\";s:16:\"zeus-377x242.jpg\";s:5:\"width\";i:377;s:6:\"height\";i:242;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"PageBanner\";a:4:{s:4:\"file\";s:17:\"zeus-1200x796.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:796;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(611, 165, '_wp_attached_file', '2018/07/ranks.jpg'),
(612, 165, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:896;s:6:\"height\";i:576;s:4:\"file\";s:17:\"2018/07/ranks.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"ranks-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"ranks-300x193.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:193;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"ranks-768x494.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:494;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"SmallThumbnail\";a:4:{s:4:\"file\";s:17:\"ranks-377x242.jpg\";s:5:\"width\";i:377;s:6:\"height\";i:242;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(613, 166, '_wp_attached_file', '2018/07/thumpa.jpg'),
(614, 166, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:377;s:6:\"height\";i:242;s:4:\"file\";s:18:\"2018/07/thumpa.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"thumpa-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"thumpa-300x193.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:193;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(615, 167, '_wp_attached_file', '2018/07/thumpb.jpg'),
(616, 167, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:377;s:6:\"height\";i:242;s:4:\"file\";s:18:\"2018/07/thumpb.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"thumpb-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"thumpb-300x193.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:193;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(617, 168, '_wp_attached_file', '2018/07/thumpc.jpg'),
(618, 168, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:377;s:6:\"height\";i:242;s:4:\"file\";s:18:\"2018/07/thumpc.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"thumpc-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"thumpc-300x193.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:193;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(619, 169, '_wp_attached_file', '2018/07/about.jpg'),
(620, 169, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:896;s:6:\"height\";i:576;s:4:\"file\";s:17:\"2018/07/about.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"about-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"about-300x193.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:193;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"about-768x494.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:494;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"SmallThumbnail\";a:4:{s:4:\"file\";s:17:\"about-377x242.jpg\";s:5:\"width\";i:377;s:6:\"height\";i:242;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(621, 15, 'Subheader', 'The Cardgame Of The Gods & Heroes'),
(622, 19, 'Subheader', 'You Can Contact Us Here'),
(623, 17, 'Subheader', 'Here Is Our Forum'),
(624, 13, 'Subheader', 'HIstory Database'),
(625, 10, 'Subheader', 'Mythology Database'),
(626, 21, '_wp_page_template', 'login-page.php'),
(627, 23, '_wp_page_template', 'Signup-Page.php');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-06-12 08:53:31', '2018-06-12 08:53:31', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-06-14 17:32:09', '2018-06-14 14:32:09', '', 0, 'http:/?p=1', 0, 'post', '', 1),
(5, 1, '2018-06-12 12:28:56', '2018-06-12 09:28:56', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-06-19 12:41:29', '2018-06-19 09:41:29', '', 0, 'http://localhost:8081/wordpress/?page_id=5', 0, 'page', '', 0),
(6, 1, '2018-06-12 12:28:56', '2018-06-12 09:28:56', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-06-12 12:28:56', '2018-06-12 09:28:56', '', 5, 'http://localhost:8081/wordpress/2018/06/12/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-06-12 12:29:20', '2018-06-12 09:29:20', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-06-12 12:29:20', '2018-06-12 09:29:20', '', 5, 'http://localhost:8081/wordpress/2018/06/12/5-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-06-12 12:29:54', '2018-06-12 09:29:54', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2018-07-09 15:26:47', '2018-07-09 12:26:47', '', 0, 'http://localhost:8081/wordpress/?page_id=8', 0, 'page', '', 0),
(9, 1, '2018-06-12 12:29:54', '2018-06-12 09:29:54', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'News', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-06-12 12:29:54', '2018-06-12 09:29:54', '', 8, 'http://localhost:8081/wordpress/2018/06/12/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-06-12 12:30:11', '2018-06-12 09:30:11', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Mythology', '', 'publish', 'closed', 'closed', '', 'mythology', '', '', '2018-07-09 15:22:44', '2018-07-09 12:22:44', '', 0, 'http://localhost:8081/wordpress/?page_id=10', 0, 'page', '', 0),
(11, 1, '2018-06-12 12:30:11', '2018-06-12 09:30:11', '', 'Mythology', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-06-12 12:30:11', '2018-06-12 09:30:11', '', 10, 'http://localhost:8081/wordpress/2018/06/12/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2018-06-12 12:30:14', '2018-06-12 09:30:14', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Mythology', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-06-12 12:30:14', '2018-06-12 09:30:14', '', 10, 'http://localhost:8081/wordpress/2018/06/12/10-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-06-12 12:30:22', '2018-06-12 09:30:22', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'History', '', 'publish', 'closed', 'closed', '', 'history', '', '', '2018-07-09 15:22:15', '2018-07-09 12:22:15', '', 0, 'http://localhost:8081/wordpress/?page_id=13', 0, 'page', '', 0),
(14, 1, '2018-06-12 12:30:22', '2018-06-12 09:30:22', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'History', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-06-12 12:30:22', '2018-06-12 09:30:22', '', 13, 'http://localhost:8081/wordpress/2018/06/12/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-06-12 12:30:38', '2018-06-12 09:30:38', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Cardgame', '', 'publish', 'closed', 'closed', '', 'cardgame', '', '', '2018-07-09 15:20:46', '2018-07-09 12:20:46', '', 0, 'http://localhost:8081/wordpress/?page_id=15', 0, 'page', '', 0),
(16, 1, '2018-06-12 12:30:38', '2018-06-12 09:30:38', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'CardGame', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-06-12 12:30:38', '2018-06-12 09:30:38', '', 15, 'http://localhost:8081/wordpress/2018/06/12/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-06-12 12:30:50', '2018-06-12 09:30:50', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Forum', '', 'publish', 'closed', 'closed', '', 'forum', '', '', '2018-07-09 15:21:58', '2018-07-09 12:21:58', '', 0, 'http://localhost:8081/wordpress/?page_id=17', 0, 'page', '', 0),
(18, 1, '2018-06-12 12:30:50', '2018-06-12 09:30:50', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Forum', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-06-12 12:30:50', '2018-06-12 09:30:50', '', 17, 'http://localhost:8081/wordpress/2018/06/12/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-06-12 12:30:59', '2018-06-12 09:30:59', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-07-09 15:21:23', '2018-07-09 12:21:23', '', 0, 'http://localhost:8081/wordpress/?page_id=19', 0, 'page', '', 0),
(20, 1, '2018-06-12 12:30:59', '2018-06-12 09:30:59', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Contact', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-06-12 12:30:59', '2018-06-12 09:30:59', '', 19, 'http://localhost:8081/wordpress/2018/06/12/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2018-06-12 12:31:19', '2018-06-12 09:31:19', '<strong>Lorem Ipsum</strong> is simply dummy', 'Login', '', 'publish', 'closed', 'closed', '', 'login', '', '', '2018-07-18 13:38:50', '2018-07-18 10:38:50', '', 0, 'http://localhost:8081/wordpress/?page_id=21', 0, 'page', '', 0),
(22, 1, '2018-06-12 12:31:19', '2018-06-12 09:31:19', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Login', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-06-12 12:31:19', '2018-06-12 09:31:19', '', 21, 'http://localhost:8081/wordpress/2018/06/12/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-06-12 12:31:30', '2018-06-12 09:31:30', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'SignUp', '', 'publish', 'closed', 'closed', '', 'signup', '', '', '2018-07-18 13:44:06', '2018-07-18 10:44:06', '', 0, 'http://localhost:8081/wordpress/?page_id=23', 0, 'page', '', 0),
(24, 1, '2018-06-12 12:31:30', '2018-06-12 09:31:30', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'SignUp', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-06-12 12:31:30', '2018-06-12 09:31:30', '', 23, 'http://localhost:8081/wordpress/2018/06/12/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2018-06-12 12:32:24', '2018-06-12 09:32:24', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Legal', '', 'publish', 'closed', 'closed', '', 'legal', '', '', '2018-06-12 12:32:24', '2018-06-12 09:32:24', '', 0, 'http://localhost:8081/wordpress/?page_id=25', 0, 'page', '', 0),
(26, 1, '2018-06-12 12:32:24', '2018-06-12 09:32:24', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Legal', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-06-12 12:32:24', '2018-06-12 09:32:24', '', 25, 'http://localhost:8081/wordpress/2018/06/12/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-06-12 12:32:31', '2018-06-12 09:32:31', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Privacy', '', 'publish', 'closed', 'closed', '', 'privacy', '', '', '2018-06-12 12:32:31', '2018-06-12 09:32:31', '', 0, 'http://localhost:8081/wordpress/?page_id=27', 0, 'page', '', 0),
(28, 1, '2018-06-12 12:32:31', '2018-06-12 09:32:31', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Privacy', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-06-12 12:32:31', '2018-06-12 09:32:31', '', 27, 'http://localhost:8081/wordpress/2018/06/12/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-06-12 12:32:38', '2018-06-12 09:32:38', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'About Us', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2018-06-22 13:09:49', '2018-06-22 10:09:49', '', 0, 'http://localhost:8081/wordpress/?page_id=29', 0, 'page', '', 0),
(30, 1, '2018-06-12 12:32:38', '2018-06-12 09:32:38', '', 'About', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-06-12 12:32:38', '2018-06-12 09:32:38', '', 29, 'http://localhost:8081/wordpress/2018/06/12/29-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-06-12 12:34:38', '2018-06-12 09:34:38', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Greek', '', 'publish', 'closed', 'closed', '', 'greek', '', '', '2018-06-12 12:34:38', '2018-06-12 09:34:38', '', 10, 'http://localhost:8081/wordpress/?page_id=33', 0, 'page', '', 0),
(34, 1, '2018-06-12 12:34:38', '2018-06-12 09:34:38', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Greek', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-06-12 12:34:38', '2018-06-12 09:34:38', '', 33, 'http://localhost:8081/wordpress/2018/06/12/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-06-12 12:34:51', '2018-06-12 09:34:51', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Norse', '', 'publish', 'closed', 'closed', '', 'norse', '', '', '2018-06-12 12:34:51', '2018-06-12 09:34:51', '', 10, 'http://localhost:8081/wordpress/?page_id=35', 1, 'page', '', 0),
(36, 1, '2018-06-12 12:34:51', '2018-06-12 09:34:51', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Norse', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-06-12 12:34:51', '2018-06-12 09:34:51', '', 35, 'http://localhost:8081/wordpress/2018/06/12/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2018-06-12 12:35:11', '2018-06-12 09:35:11', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Egyptian', '', 'publish', 'closed', 'closed', '', 'egyptian', '', '', '2018-06-12 12:35:11', '2018-06-12 09:35:11', '', 10, 'http://localhost:8081/wordpress/?page_id=37', 2, 'page', '', 0),
(38, 1, '2018-06-12 12:35:11', '2018-06-12 09:35:11', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Egyptian', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2018-06-12 12:35:11', '2018-06-12 09:35:11', '', 37, 'http://localhost:8081/wordpress/2018/06/12/37-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2018-06-12 12:36:37', '2018-06-12 09:36:37', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Battles', '', 'publish', 'closed', 'closed', '', 'battles', '', '', '2018-06-12 12:36:37', '2018-06-12 09:36:37', '', 13, 'http://localhost:8081/wordpress/?page_id=39', 0, 'page', '', 0),
(40, 1, '2018-06-12 12:36:37', '2018-06-12 09:36:37', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Battles', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2018-06-12 12:36:37', '2018-06-12 09:36:37', '', 39, 'http://localhost:8081/wordpress/2018/06/12/39-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-06-12 12:37:01', '2018-06-12 09:37:01', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2018-06-12 12:37:01', '2018-06-12 09:37:01', '', 13, 'http://localhost:8081/wordpress/?page_id=41', 1, 'page', '', 0),
(42, 1, '2018-06-12 12:37:01', '2018-06-12 09:37:01', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Events', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-06-12 12:37:01', '2018-06-12 09:37:01', '', 41, 'http://localhost:8081/wordpress/2018/06/12/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-06-12 12:37:24', '2018-06-12 09:37:24', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Armies', '', 'publish', 'closed', 'closed', '', 'armys', '', '', '2018-06-12 12:43:18', '2018-06-12 09:43:18', '', 13, 'http://localhost:8081/wordpress/?page_id=43', 2, 'page', '', 0),
(44, 1, '2018-06-12 12:37:24', '2018-06-12 09:37:24', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Armys', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2018-06-12 12:37:24', '2018-06-12 09:37:24', '', 43, 'http://localhost:8081/wordpress/2018/06/12/43-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-06-12 12:37:41', '2018-06-12 09:37:41', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Persons', '', 'publish', 'closed', 'closed', '', 'persons', '', '', '2018-06-12 12:37:41', '2018-06-12 09:37:41', '', 13, 'http://localhost:8081/wordpress/?page_id=45', 3, 'page', '', 0),
(46, 1, '2018-06-12 12:37:41', '2018-06-12 09:37:41', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Persons', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-06-12 12:37:41', '2018-06-12 09:37:41', '', 45, 'http://localhost:8081/wordpress/2018/06/12/45-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2018-06-12 12:37:56', '2018-06-12 09:37:56', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Locations', '', 'publish', 'closed', 'closed', '', 'locations', '', '', '2018-06-12 12:37:56', '2018-06-12 09:37:56', '', 13, 'http://localhost:8081/wordpress/?page_id=47', 4, 'page', '', 0),
(48, 1, '2018-06-12 12:37:56', '2018-06-12 09:37:56', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Locations', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2018-06-12 12:37:56', '2018-06-12 09:37:56', '', 47, 'http://localhost:8081/wordpress/2018/06/12/47-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-06-12 12:43:18', '2018-06-12 09:43:18', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Armies', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2018-06-12 12:43:18', '2018-06-12 09:43:18', '', 43, 'http://localhost:8081/wordpress/2018/06/12/43-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2018-06-13 13:22:13', '2018-06-13 10:22:13', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'About', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-06-13 13:22:13', '2018-06-13 10:22:13', '', 29, 'http://localhost:8081/wordpress/29-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2018-06-14 15:50:46', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-14 15:50:46', '0000-00-00 00:00:00', '', 0, 'http://localhost:8081/wordpress/?p=73', 1, 'nav_menu_item', '', 0),
(74, 1, '2018-06-14 15:53:30', '2018-06-14 12:53:30', ' ', '', '', 'publish', 'closed', 'closed', '', '74', '', '', '2018-07-09 13:29:59', '2018-07-09 10:29:59', '', 0, 'http://localhost:8081/wordpress/?p=74', 2, 'nav_menu_item', '', 0),
(76, 1, '2018-06-14 15:53:31', '2018-06-14 12:53:31', ' ', '', '', 'publish', 'closed', 'closed', '', '76', '', '', '2018-07-09 13:29:59', '2018-07-09 10:29:59', '', 0, 'http://localhost:8081/wordpress/?p=76', 4, 'nav_menu_item', '', 0),
(82, 1, '2018-06-14 15:53:30', '2018-06-14 12:53:30', ' ', '', '', 'publish', 'closed', 'closed', '', '82', '', '', '2018-07-09 13:29:59', '2018-07-09 10:29:59', '', 0, 'http://localhost:8081/wordpress/?p=82', 3, 'nav_menu_item', '', 0),
(86, 1, '2018-06-14 15:53:33', '2018-06-14 12:53:33', ' ', '', '', 'publish', 'closed', 'closed', '', '86', '', '', '2018-07-09 13:29:59', '2018-07-09 10:29:59', '', 0, 'http://localhost:8081/wordpress/?p=86', 5, 'nav_menu_item', '', 0),
(87, 1, '2018-06-14 15:53:33', '2018-06-14 12:53:33', ' ', '', '', 'publish', 'closed', 'closed', '', '87', '', '', '2018-07-09 13:29:59', '2018-07-09 10:29:59', '', 0, 'http://localhost:8081/wordpress/?p=87', 6, 'nav_menu_item', '', 0),
(88, 1, '2018-06-14 15:53:33', '2018-06-14 12:53:33', ' ', '', '', 'publish', 'closed', 'closed', '', '88', '', '', '2018-07-09 13:29:59', '2018-07-09 10:29:59', '', 0, 'http://localhost:8081/wordpress/?p=88', 7, 'nav_menu_item', '', 0),
(91, 1, '2018-06-14 16:03:27', '2018-06-14 13:03:27', ' ', '', '', 'publish', 'closed', 'closed', '', '91', '', '', '2018-06-14 17:10:33', '2018-06-14 14:10:33', '', 0, 'http://localhost:8081/wordpress/?p=91', 5, 'nav_menu_item', '', 0),
(92, 1, '2018-06-14 16:03:28', '2018-06-14 13:03:28', ' ', '', '', 'publish', 'closed', 'closed', '', '92', '', '', '2018-06-14 17:10:33', '2018-06-14 14:10:33', '', 0, 'http://localhost:8081/wordpress/?p=92', 7, 'nav_menu_item', '', 0),
(93, 1, '2018-06-14 16:03:28', '2018-06-14 13:03:28', ' ', '', '', 'publish', 'closed', 'closed', '', '93', '', '', '2018-06-14 17:10:33', '2018-06-14 14:10:33', '', 0, 'http://localhost:8081/wordpress/?p=93', 6, 'nav_menu_item', '', 0),
(94, 1, '2018-06-14 16:03:27', '2018-06-14 13:03:27', ' ', '', '', 'publish', 'closed', 'closed', '', '94', '', '', '2018-06-14 17:10:33', '2018-06-14 14:10:33', '', 0, 'http://localhost:8081/wordpress/?p=94', 4, 'nav_menu_item', '', 0),
(96, 1, '2018-06-14 16:03:27', '2018-06-14 13:03:27', ' ', '', '', 'publish', 'closed', 'closed', '', '96', '', '', '2018-06-14 17:10:33', '2018-06-14 14:10:33', '', 0, 'http://localhost:8081/wordpress/?p=96', 3, 'nav_menu_item', '', 0),
(97, 1, '2018-06-14 16:03:27', '2018-06-14 13:03:27', ' ', '', '', 'publish', 'closed', 'closed', '', '97', '', '', '2018-06-14 17:10:32', '2018-06-14 14:10:32', '', 0, 'http://localhost:8081/wordpress/?p=97', 2, 'nav_menu_item', '', 0),
(98, 1, '2018-06-14 16:04:41', '2018-06-14 13:04:41', ' ', '', '', 'publish', 'closed', 'closed', '', '98', '', '', '2018-06-14 16:05:05', '2018-06-14 13:05:05', '', 0, 'http://localhost:8081/wordpress/?p=98', 3, 'nav_menu_item', '', 0),
(99, 1, '2018-06-14 16:04:40', '2018-06-14 13:04:40', ' ', '', '', 'publish', 'closed', 'closed', '', '99', '', '', '2018-06-14 16:05:05', '2018-06-14 13:05:05', '', 0, 'http://localhost:8081/wordpress/?p=99', 1, 'nav_menu_item', '', 0),
(100, 1, '2018-06-14 16:04:41', '2018-06-14 13:04:41', ' ', '', '', 'publish', 'closed', 'closed', '', '100', '', '', '2018-06-14 16:05:05', '2018-06-14 13:05:05', '', 0, 'http://localhost:8081/wordpress/?p=100', 2, 'nav_menu_item', '', 0),
(103, 1, '2018-06-14 17:10:17', '2018-06-14 14:10:17', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-07-09 13:29:59', '2018-07-09 10:29:59', '', 0, 'http://localhost:8081/wordpress/?p=103', 1, 'nav_menu_item', '', 0),
(104, 1, '2018-06-14 17:10:32', '2018-06-14 14:10:32', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home-2', '', '', '2018-06-14 17:10:32', '2018-06-14 14:10:32', '', 0, 'http://localhost:8081/wordpress/?p=104', 1, 'nav_menu_item', '', 0),
(105, 1, '2018-06-14 17:32:09', '2018-06-14 14:32:09', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-06-14 17:32:09', '2018-06-14 14:32:09', '', 1, 'http://localhost:8081/wordpress/1-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2018-06-14 17:32:21', '2018-06-14 14:32:21', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Zeus', '', 'publish', 'open', 'open', '', 'test-1', '', '', '2018-06-22 12:27:43', '2018-06-22 09:27:43', '', 0, 'http://localhost:8081/wordpress/?p=106', 0, 'post', '', 0),
(107, 1, '2018-06-14 17:32:21', '2018-06-14 14:32:21', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Test 1', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2018-06-14 17:32:21', '2018-06-14 14:32:21', '', 106, 'http://localhost:8081/wordpress/106-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2018-06-14 17:32:28', '2018-06-14 14:32:28', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Alexander The Great', '', 'publish', 'open', 'open', '', 'test-2', '', '', '2018-06-22 12:27:51', '2018-06-22 09:27:51', '', 0, 'http://localhost:8081/wordpress/?p=108', 0, 'post', '', 0),
(109, 1, '2018-06-14 17:32:28', '2018-06-14 14:32:28', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Test 2', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2018-06-14 17:32:28', '2018-06-14 14:32:28', '', 108, 'http://localhost:8081/wordpress/108-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2018-06-15 15:44:31', '2018-06-15 12:44:31', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Zeus', '', 'inherit', 'closed', 'closed', '', '106-autosave-v1', '', '', '2018-06-15 15:44:31', '2018-06-15 12:44:31', '', 106, 'http://localhost:8081/wordpress/106-autosave-v1/', 0, 'revision', '', 0),
(111, 1, '2018-06-15 15:46:31', '2018-06-15 12:46:31', '', 'Zeus', '', 'inherit', 'open', 'closed', '', 'zeus', '', '', '2018-06-15 15:46:31', '2018-06-15 12:46:31', '', 106, 'http://localhost:8081/wordpress/wp-content/uploads/2018/06/Zeus.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2018-06-15 15:46:44', '2018-06-15 12:46:44', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Zeus', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2018-06-15 15:46:44', '2018-06-15 12:46:44', '', 106, 'http://localhost:8081/wordpress/106-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2018-06-15 15:47:40', '2018-06-15 12:47:40', '<strong><img class=\"aligncenter wp-image-111 size-large\" src=\"http://localhost:8081/wordpress/wp-content/uploads/2018/06/Zeus-1024x367.jpg\" alt=\"\" width=\"1024\" height=\"367\" /></strong>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Zeus', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2018-06-15 15:47:40', '2018-06-15 12:47:40', '', 106, 'http://localhost:8081/wordpress/106-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(114, 1, '2018-06-15 15:52:42', '2018-06-15 12:52:42', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Alexander The Great', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2018-06-15 15:52:42', '2018-06-15 12:52:42', '', 108, 'http://localhost:8081/wordpress/108-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2018-06-15 15:55:22', '2018-06-15 12:55:22', '', 'Alexander_the_Great_mosaic', '', 'inherit', 'open', 'closed', '', 'alexander_the_great_mosaic', '', '', '2018-06-15 15:55:22', '2018-06-15 12:55:22', '', 108, 'http://localhost:8081/wordpress/wp-content/uploads/2018/06/Alexander_the_Great_mosaic.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2018-06-15 15:55:40', '2018-06-15 12:55:40', '<strong><img class=\"aligncenter size-large wp-image-115\" src=\"http://localhost:8081/wordpress/wp-content/uploads/2018/06/Alexander_the_Great_mosaic-1024x614.jpg\" alt=\"\" width=\"1024\" height=\"614\" /></strong>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Alexander The Great', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2018-06-15 15:55:40', '2018-06-15 12:55:40', '', 108, 'http://localhost:8081/wordpress/108-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2018-06-19 12:41:10', '2018-06-19 09:41:10', '<strong><img class=\"aligncenter size-large wp-image-111\" src=\"http://localhost:8081/wordpress/wp-content/uploads/2018/06/Zeus-1024x367.jpg\" alt=\"\" width=\"1024\" height=\"367\" />Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-06-19 12:41:10', '2018-06-19 09:41:10', '', 5, 'http://localhost:8081/wordpress/5-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2018-06-19 12:41:29', '2018-06-19 09:41:29', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-06-19 12:41:29', '2018-06-19 09:41:29', '', 5, 'http://localhost:8081/wordpress/5-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2018-06-22 11:30:28', '2018-06-22 08:30:28', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'About', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-06-22 11:30:28', '2018-06-22 08:30:28', '', 29, 'http://localhost:8081/wordpress/29-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2018-06-22 12:02:51', '2018-06-22 09:02:51', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 'About', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-06-22 12:02:51', '2018-06-22 09:02:51', '', 29, 'http://localhost:8081/wordpress/29-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2018-06-22 12:03:15', '2018-06-22 09:03:15', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'About', '', 'inherit', 'closed', 'closed', '', '29-autosave-v1', '', '', '2018-06-22 12:03:15', '2018-06-22 09:03:15', '', 29, 'http://localhost:8081/wordpress/29-autosave-v1/', 0, 'revision', '', 0),
(126, 1, '2018-06-22 12:03:19', '2018-06-22 09:03:19', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'About', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-06-22 12:03:19', '2018-06-22 09:03:19', '', 29, 'http://localhost:8081/wordpress/29-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2018-06-22 12:20:23', '2018-06-22 09:20:23', '&nbsp;\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Zeus', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2018-06-22 12:20:23', '2018-06-22 09:20:23', '', 106, 'http://localhost:8081/wordpress/106-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2018-06-22 12:20:34', '2018-06-22 09:20:34', '&nbsp;\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Alexander The Great', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2018-06-22 12:20:34', '2018-06-22 09:20:34', '', 108, 'http://localhost:8081/wordpress/108-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2018-06-22 12:27:43', '2018-06-22 09:27:43', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Zeus', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2018-06-22 12:27:43', '2018-06-22 09:27:43', '', 106, 'http://localhost:8081/wordpress/106-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2018-06-22 12:27:51', '2018-06-22 09:27:51', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Alexander The Great', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2018-06-22 12:27:51', '2018-06-22 09:27:51', '', 108, 'http://localhost:8081/wordpress/108-revision-v1/', 0, 'revision', '', 0),
(131, 1, '2018-06-22 13:09:04', '2018-06-22 10:09:04', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '~ About Us ~', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-06-22 13:09:04', '2018-06-22 10:09:04', '', 29, 'http://localhost:8081/wordpress/29-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2018-06-22 13:09:19', '2018-06-22 10:09:19', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '~ CardGame ~', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-06-22 13:09:19', '2018-06-22 10:09:19', '', 15, 'http://localhost:8081/wordpress/15-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2018-06-22 13:09:49', '2018-06-22 10:09:49', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'About Us', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-06-22 13:09:49', '2018-06-22 10:09:49', '', 29, 'http://localhost:8081/wordpress/29-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2018-06-22 13:10:03', '2018-06-22 10:10:03', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'CardGame', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-06-22 13:10:03', '2018-06-22 10:10:03', '', 15, 'http://localhost:8081/wordpress/15-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2018-06-22 13:13:48', '2018-06-22 10:13:48', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'CardGame', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-06-22 13:13:48', '2018-06-22 10:13:48', '', 15, 'http://localhost:8081/wordpress/15-revision-v1/', 0, 'revision', '', 0),
(137, 1, '2018-07-02 10:58:30', '2018-07-02 07:58:30', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Test 1', '', 'publish', 'open', 'open', '', 'test-1-2', '', '', '2018-07-02 10:58:30', '2018-07-02 07:58:30', '', 0, 'http://localhost:8081/wordpress/?p=137', 0, 'post', '', 0),
(138, 1, '2018-07-02 10:58:30', '2018-07-02 07:58:30', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Test 1', '', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2018-07-02 10:58:30', '2018-07-02 07:58:30', '', 137, 'http://localhost:8081/wordpress/137-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2018-07-02 10:58:45', '2018-07-02 07:58:45', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Test 2', '', 'publish', 'open', 'open', '', 'test-2-2', '', '', '2018-07-02 10:59:08', '2018-07-02 07:59:08', '', 0, 'http://localhost:8081/wordpress/?p=139', 0, 'post', '', 0),
(140, 1, '2018-07-02 10:58:45', '2018-07-02 07:58:45', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Test 2', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2018-07-02 10:58:45', '2018-07-02 07:58:45', '', 139, 'http://localhost:8081/wordpress/139-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2018-07-02 10:58:56', '2018-07-02 07:58:56', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Test 3', '', 'publish', 'open', 'open', '', 'test-3', '', '', '2018-07-02 10:58:56', '2018-07-02 07:58:56', '', 0, 'http://localhost:8081/wordpress/?p=141', 0, 'post', '', 0),
(142, 1, '2018-07-02 10:58:56', '2018-07-02 07:58:56', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Test 3', '', 'inherit', 'closed', 'closed', '', '141-revision-v1', '', '', '2018-07-02 10:58:56', '2018-07-02 07:58:56', '', 141, 'http://localhost:8081/wordpress/141-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2018-07-02 10:59:40', '2018-07-02 07:59:40', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Test 4', '', 'publish', 'open', 'open', '', 'test-4', '', '', '2018-07-02 10:59:40', '2018-07-02 07:59:40', '', 0, 'http://localhost:8081/wordpress/?p=143', 0, 'post', '', 0),
(144, 1, '2018-07-02 10:59:40', '2018-07-02 07:59:40', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Test 4', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2018-07-02 10:59:40', '2018-07-02 07:59:40', '', 143, 'http://localhost:8081/wordpress/143-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2018-07-02 10:59:51', '2018-07-02 07:59:51', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Test 5', '', 'publish', 'open', 'open', '', 'test-5', '', '', '2018-07-02 10:59:51', '2018-07-02 07:59:51', '', 0, 'http://localhost:8081/wordpress/?p=145', 0, 'post', '', 0),
(146, 1, '2018-07-02 10:59:51', '2018-07-02 07:59:51', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Test 5', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2018-07-02 10:59:51', '2018-07-02 07:59:51', '', 145, 'http://localhost:8081/wordpress/145-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2018-07-02 16:18:19', '2018-07-02 13:18:19', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Forum', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-07-02 16:18:19', '2018-07-02 13:18:19', '', 17, 'http://localhost:8081/wordpress/17-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2018-07-02 16:18:26', '2018-07-02 13:18:26', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Contact', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-07-02 16:18:26', '2018-07-02 13:18:26', '', 19, 'http://localhost:8081/wordpress/19-revision-v1/', 0, 'revision', '', 0),
(150, 1, '2018-07-09 13:12:23', '2018-07-09 10:12:23', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\n&nbsp;\n\n&nbsp;', 'Contact', '', 'inherit', 'closed', 'closed', '', '19-autosave-v1', '', '', '2018-07-09 13:12:23', '2018-07-09 10:12:23', '', 19, 'http://localhost:8081/wordpress/19-autosave-v1/', 0, 'revision', '', 0),
(151, 1, '2018-07-09 13:13:03', '2018-07-09 10:13:03', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Contact', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-07-09 13:13:03', '2018-07-09 10:13:03', '', 19, 'http://localhost:8081/wordpress/19-revision-v1/', 0, 'revision', '', 0),
(155, 1, '2018-07-09 13:38:57', '2018-07-09 10:38:57', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Contact', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-07-09 13:38:57', '2018-07-09 10:38:57', '', 19, 'http://localhost:8081/wordpress/19-revision-v1/', 0, 'revision', '', 0),
(156, 1, '2018-07-09 14:20:04', '2018-07-09 11:20:04', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Cardgame', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-07-09 14:20:04', '2018-07-09 11:20:04', '', 15, 'http://localhost:8081/wordpress/15-revision-v1/', 0, 'revision', '', 0),
(157, 1, '2018-07-09 14:58:46', '2018-07-09 11:58:46', '', 'homebanner', '', 'inherit', 'open', 'closed', '', 'homebanner', '', '', '2018-07-09 14:58:46', '2018-07-09 11:58:46', '', 0, 'http://localhost:8081/wordpress/wp-content/uploads/2018/07/homebanner.jpg', 0, 'attachment', 'image/jpeg', 0),
(158, 1, '2018-07-09 14:58:47', '2018-07-09 11:58:47', '', 'banner', '', 'inherit', 'open', 'closed', '', 'banner', '', '', '2018-07-09 14:58:47', '2018-07-09 11:58:47', '', 0, 'http://localhost:8081/wordpress/wp-content/uploads/2018/07/banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(159, 1, '2018-07-09 14:58:48', '2018-07-09 11:58:48', '', 'map', '', 'inherit', 'open', 'closed', '', 'map', '', '', '2018-07-09 14:58:48', '2018-07-09 11:58:48', '', 0, 'http://localhost:8081/wordpress/wp-content/uploads/2018/07/map.jpg', 0, 'attachment', 'image/jpeg', 0),
(160, 1, '2018-07-09 14:58:49', '2018-07-09 11:58:49', '', 'adventure stories background', '', 'inherit', 'open', 'closed', '', 'adventure-stories-background', '', '', '2018-07-09 14:58:49', '2018-07-09 11:58:49', '', 0, 'http://localhost:8081/wordpress/wp-content/uploads/2018/07/History.jpg', 0, 'attachment', 'image/jpeg', 0),
(161, 1, '2018-07-09 14:58:49', '2018-07-09 11:58:49', '', 'Mythology', '', 'inherit', 'open', 'closed', '', 'mythology-2', '', '', '2018-07-09 14:58:49', '2018-07-09 11:58:49', '', 0, 'http://localhost:8081/wordpress/wp-content/uploads/2018/07/Mythology.jpg', 0, 'attachment', 'image/jpeg', 0),
(162, 1, '2018-07-09 14:58:50', '2018-07-09 11:58:50', '', 'alexander', '', 'inherit', 'open', 'closed', '', 'alexander', '', '', '2018-07-09 14:58:50', '2018-07-09 11:58:50', '', 0, 'http://localhost:8081/wordpress/wp-content/uploads/2018/07/alexander.jpg', 0, 'attachment', 'image/jpeg', 0),
(163, 1, '2018-07-09 14:58:51', '2018-07-09 11:58:51', '', 'forum', '', 'inherit', 'open', 'closed', '', 'forum-2', '', '', '2018-07-09 14:58:51', '2018-07-09 11:58:51', '', 0, 'http://localhost:8081/wordpress/wp-content/uploads/2018/07/forum.jpg', 0, 'attachment', 'image/jpeg', 0),
(164, 1, '2018-07-09 14:58:52', '2018-07-09 11:58:52', '', 'zeus', '', 'inherit', 'open', 'closed', '', 'zeus-2', '', '', '2018-07-09 14:58:52', '2018-07-09 11:58:52', '', 0, 'http://localhost:8081/wordpress/wp-content/uploads/2018/07/zeus.jpg', 0, 'attachment', 'image/jpeg', 0),
(165, 1, '2018-07-09 14:58:53', '2018-07-09 11:58:53', '', 'ranks', '', 'inherit', 'open', 'closed', '', 'ranks', '', '', '2018-07-09 14:58:53', '2018-07-09 11:58:53', '', 0, 'http://localhost:8081/wordpress/wp-content/uploads/2018/07/ranks.jpg', 0, 'attachment', 'image/jpeg', 0),
(166, 1, '2018-07-09 14:58:53', '2018-07-09 11:58:53', '', 'thumpa', '', 'inherit', 'open', 'closed', '', 'thumpa', '', '', '2018-07-09 14:58:53', '2018-07-09 11:58:53', '', 0, 'http://localhost:8081/wordpress/wp-content/uploads/2018/07/thumpa.jpg', 0, 'attachment', 'image/jpeg', 0),
(167, 1, '2018-07-09 14:58:53', '2018-07-09 11:58:53', '', 'thumpb', '', 'inherit', 'open', 'closed', '', 'thumpb', '', '', '2018-07-09 14:58:53', '2018-07-09 11:58:53', '', 0, 'http://localhost:8081/wordpress/wp-content/uploads/2018/07/thumpb.jpg', 0, 'attachment', 'image/jpeg', 0),
(168, 1, '2018-07-09 14:58:54', '2018-07-09 11:58:54', '', 'thumpc', '', 'inherit', 'open', 'closed', '', 'thumpc', '', '', '2018-07-09 14:58:54', '2018-07-09 11:58:54', '', 0, 'http://localhost:8081/wordpress/wp-content/uploads/2018/07/thumpc.jpg', 0, 'attachment', 'image/jpeg', 0),
(169, 1, '2018-07-09 14:58:54', '2018-07-09 11:58:54', '', 'about', '', 'inherit', 'open', 'closed', '', 'about-2', '', '', '2018-07-09 14:58:54', '2018-07-09 11:58:54', '', 0, 'http://localhost:8081/wordpress/wp-content/uploads/2018/07/about.jpg', 0, 'attachment', 'image/jpeg', 0),
(171, 1, '2018-07-18 13:36:27', '2018-07-18 10:36:27', '<strong>Lorem Ipsum</strong> is simply dummy', 'Login', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-07-18 13:36:27', '2018-07-18 10:36:27', '', 21, 'http://localhost:8081/wordpress/21-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(3, 'Header Menu', 'header-menu', 0),
(4, 'Footer Menu One', 'footer-menu-one', 0),
(5, 'Footer Menu Two', 'footer-menu-two', 0),
(6, 'Test', 'test', 0),
(7, 'Mythology', 'mythology', 0),
(8, 'History', 'history', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(74, 3, 0),
(76, 3, 0),
(82, 3, 0),
(86, 3, 0),
(87, 3, 0),
(88, 3, 0),
(91, 4, 0),
(92, 4, 0),
(93, 4, 0),
(94, 4, 0),
(96, 4, 0),
(97, 4, 0),
(98, 5, 0),
(99, 5, 0),
(100, 5, 0),
(103, 3, 0),
(104, 4, 0),
(106, 7, 0),
(108, 8, 0),
(137, 1, 0),
(139, 1, 0),
(141, 1, 0),
(143, 1, 0),
(145, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 6),
(3, 3, 'nav_menu', '', 0, 7),
(4, 4, 'nav_menu', '', 0, 7),
(5, 5, 'nav_menu', '', 0, 3),
(6, 6, 'category', 'Test Description', 0, 0),
(7, 7, 'category', '', 0, 1),
(8, 8, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'KKalarasL'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', 'Admin of the page'),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice'),
(16, 1, 'show_welcome_panel', '1'),
(18, 1, 'wp_user-settings', 'mfold=o&posts_list_mode=list&libraryContent=browse&align=center&imgsize=large&editor=tinymce&hidetb=0&post_dfw=off'),
(19, 1, 'wp_user-settings-time', '1531136746'),
(20, 1, 'wp_dashboard_quick_press_last_post_id', '172'),
(21, 1, 'closedpostboxes_page', 'a:0:{}'),
(22, 1, 'metaboxhidden_page', 'a:5:{i:0;s:12:\"revisionsdiv\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(25, 1, 'nav_menu_recently_edited', '3'),
(26, 1, 'session_tokens', 'a:1:{s:64:\"859108e86b04cabe3894f4a1a622ddabecc30e4992e3d493a933ad51de32aba8\";a:4:{s:10:\"expiration\";i:1533214076;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.75 Safari/537.36\";s:5:\"login\";i:1533041276;}}'),
(27, 1, 'closedpostboxes_post', 'a:0:{}'),
(28, 1, 'metaboxhidden_post', 'a:8:{i:0;s:12:\"revisionsdiv\";i:1;s:11:\"postexcerpt\";i:2;s:13:\"trackbacksdiv\";i:3;s:10:\"postcustom\";i:4;s:16:\"commentstatusdiv\";i:5;s:11:\"commentsdiv\";i:6;s:7:\"slugdiv\";i:7;s:9:\"authordiv\";}'),
(29, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'kkalarasl', '$P$BNzeGgCNSALZY5PCufnN3c0P5JAxzR1', 'kkalarasl', 'kkalarasl@gmail.com', '', '2018-06-12 08:53:30', '', 0, 'kkalarasl');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=571;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=628;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
