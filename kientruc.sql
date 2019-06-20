-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 20, 2019 lúc 05:56 AM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `kientruc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Một người bình luận WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-06-04 12:51:55', '2019-06-04 12:51:55', 'Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://127.0.0.1/kientruc/', 'yes'),
(2, 'home', 'http://127.0.0.1/kientruc/', 'yes'),
(3, 'blogname', '[:vi]Thiết Kế Xây Dựng Lam Mộc[:en]Design for building Lam Moc[:]', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'tuan@ert.vn', 'yes'),
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
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd/m/Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:19:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:43:\"envira-gallery-lite/envira-gallery-lite.php\";i:4;s:41:\"hotline-phone-ring/hotline-phone-ring.php\";i:5;s:33:\"jquery-updater/jquery-updater.php\";i:6;s:35:\"modula-best-grid-gallery/Modula.php\";i:8;s:35:\"qtranslate-slug/qtranslate-slug.php\";i:9;s:27:\"qtranslate-x/qtranslate.php\";i:10;s:37:\"shortcode-widget/shortcode-widget.php\";i:11;s:25:\"shortcoder/shortcoder.php\";i:12;s:39:\"single-post-template/post_templates.php\";i:13;s:45:\"taxonomy-terms-order/taxonomy-terms-order.php\";i:14;s:25:\"widget-shortcode/init.php\";i:15;s:24:\"wordpress-seo/wp-seo.php\";i:16;s:37:\"wp-carousel-free/wp-carousel-free.php\";i:17;s:41:\"wp-gallery-metabox/wp-gallery-metabox.php\";i:18;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";i:19;s:31:\"wp-statistics/wp-statistics.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '7', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'halink-kientruc', 'yes'),
(41, 'stylesheet', 'halink-kientruc', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
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
(81, 'uninstall_plugins', 'a:2:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}s:35:\"qtranslate-slug/qtranslate-slug.php\";s:13:\"qts_uninstall\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '18', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '11', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:9:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:94:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;s:14:\"read_portfolio\";b:1;s:22:\"read_private_portfolio\";b:1;s:23:\"read_private_portfolios\";b:1;s:14:\"edit_portfolio\";b:1;s:15:\"edit_portfolios\";b:1;s:22:\"edit_others_portfolios\";b:1;s:23:\"edit_private_portfolios\";b:1;s:25:\"edit_published_portfolios\";b:1;s:16:\"delete_portfolio\";b:1;s:17:\"delete_portfolios\";b:1;s:24:\"delete_others_portfolios\";b:1;s:25:\"delete_private_portfolios\";b:1;s:27:\"delete_published_portfolios\";b:1;s:18:\"publish_portfolios\";b:1;s:22:\"manage_portfolio_terms\";b:1;s:20:\"edit_portfolio_terms\";b:1;s:22:\"delete_portfolio_terms\";b:1;s:22:\"assign_portfolio_terms\";b:1;s:12:\"read_vp_list\";b:1;s:20:\"read_private_vp_list\";b:1;s:21:\"read_private_vp_lists\";b:1;s:12:\"edit_vp_list\";b:1;s:13:\"edit_vp_lists\";b:1;s:20:\"edit_others_vp_lists\";b:1;s:21:\"edit_private_vp_lists\";b:1;s:23:\"edit_published_vp_lists\";b:1;s:14:\"delete_vp_list\";b:1;s:15:\"delete_vp_lists\";b:1;s:22:\"delete_others_vp_lists\";b:1;s:23:\"delete_private_vp_lists\";b:1;s:25:\"delete_published_vp_lists\";b:1;s:16:\"publish_vp_lists\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}s:17:\"portfolio_manager\";a:2:{s:4:\"name\";s:17:\"Portfolio Manager\";s:12:\"capabilities\";a:42:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:14:\"read_portfolio\";b:1;s:22:\"read_private_portfolio\";b:1;s:23:\"read_private_portfolios\";b:1;s:14:\"edit_portfolio\";b:1;s:15:\"edit_portfolios\";b:1;s:22:\"edit_others_portfolios\";b:1;s:23:\"edit_private_portfolios\";b:1;s:25:\"edit_published_portfolios\";b:1;s:16:\"delete_portfolio\";b:1;s:17:\"delete_portfolios\";b:1;s:24:\"delete_others_portfolios\";b:1;s:25:\"delete_private_portfolios\";b:1;s:27:\"delete_published_portfolios\";b:1;s:18:\"publish_portfolios\";b:1;s:22:\"manage_portfolio_terms\";b:1;s:20:\"edit_portfolio_terms\";b:1;s:22:\"delete_portfolio_terms\";b:1;s:22:\"assign_portfolio_terms\";b:1;s:12:\"read_vp_list\";b:1;s:20:\"read_private_vp_list\";b:1;s:21:\"read_private_vp_lists\";b:1;s:12:\"edit_vp_list\";b:1;s:13:\"edit_vp_lists\";b:1;s:20:\"edit_others_vp_lists\";b:1;s:21:\"edit_private_vp_lists\";b:1;s:23:\"edit_published_vp_lists\";b:1;s:14:\"delete_vp_list\";b:1;s:15:\"delete_vp_lists\";b:1;s:22:\"delete_others_vp_lists\";b:1;s:23:\"delete_private_vp_lists\";b:1;s:25:\"delete_published_vp_lists\";b:1;s:16:\"publish_vp_lists\";b:1;}}s:16:\"portfolio_author\";a:2:{s:4:\"name\";s:16:\"Portfolio Author\";s:12:\"capabilities\";a:28:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:14:\"read_portfolio\";b:1;s:22:\"read_private_portfolio\";b:1;s:23:\"read_private_portfolios\";b:1;s:14:\"edit_portfolio\";b:1;s:15:\"edit_portfolios\";b:1;s:22:\"edit_others_portfolios\";b:1;s:23:\"edit_private_portfolios\";b:1;s:25:\"edit_published_portfolios\";b:1;s:16:\"delete_portfolio\";b:1;s:17:\"delete_portfolios\";b:1;s:24:\"delete_others_portfolios\";b:1;s:25:\"delete_private_portfolios\";b:1;s:27:\"delete_published_portfolios\";b:1;s:18:\"publish_portfolios\";b:1;s:22:\"manage_portfolio_terms\";b:1;s:20:\"edit_portfolio_terms\";b:1;s:22:\"delete_portfolio_terms\";b:1;s:22:\"assign_portfolio_terms\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'vi', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:7:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:4:\"home\";a:0:{}s:7:\"contact\";a:2:{i:0;s:9:\"contact-2\";i:1;s:18:\"shortcode-widget-2\";}s:6:\"footer\";a:2:{i:0;s:13:\"footer_left-2\";i:1;s:14:\"footer_right-3\";}s:9:\"arbitrary\";a:0:{}s:9:\"mega-menu\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:7:{i:1561006317;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1561035117;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1561035137;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1561035139;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1561036254;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1561037825;a:1:{s:28:\"wp_statistics_add_visit_hook\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(129, 'can_compress_scripts', '1', 'no'),
(144, 'recently_activated', 'a:5:{s:43:\"portfolio-post-type/portfolio-post-type.php\";i:1560964796;s:23:\"ajax-text/ajax-test.php\";i:1560842115;s:43:\"visual-portfolio/class-visual-portfolio.php\";i:1560842109;s:51:\"display-posts-shortcode/display-posts-shortcode.php\";i:1560777035;s:21:\"megamenu/megamenu.php\";i:1560602836;}', 'yes'),
(148, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1559653154;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(149, 'current_theme', 'Kiến trúc', 'yes'),
(150, 'theme_mods_halink-kientruc', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"menu-head\";i:8;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:151;}', 'yes'),
(151, 'theme_switched', '', 'yes'),
(152, 'widget_conect', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(154, 'widget_contact', 'a:3:{i:1;a:0:{}i:2;a:5:{s:7:\"address\";s:100:\"Lô 4, B2-10 Đường Âu Dương Lân, Xã Hòa Châu, Huyện Hòa Vang. Thành Phố Đà Nẵng\";s:3:\"tel\";s:31:\"02363.53.75.78 - 02363.53.73.78\";s:5:\"email\";s:24:\"kientruclammoc@gmail.com\";s:3:\"url\";s:322:\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3835.3295953145343!2d108.19768761485759!3d15.996348988926032!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31421b888310e33f%3A0x90ed427144691158!2zQ8O0bmcgdHkgVMawIHbhuqVuIHRoaeG6v3Qga-G6vyB4w6J5IGThu7FuZyBMYW0gTeG7mWM!5e0!3m2!1svi!2s!4v1560476662922!5m2!1svi!2s\";s:7:\"hotline\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(155, 'widget_feedback', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(159, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1560992878;s:7:\"checked\";a:1:{s:15:\"halink-kientruc\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(160, 'wpseo', 'a:20:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:4:\"11.4\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1559653854;s:13:\"myyoast-oauth\";b:0;}', 'yes'),
(161, 'wpseo_titles', 'a:94:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:30:\"%%name%% %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:62:\"Bạn đã tìm %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:45:\"Không tìm thấy trang %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:81:\"Bài viết %%POSTLINK%% đã xuất hiện đầu tiên vào ngày %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:35:\"Lỗi 404: Không tìm thấy trang\";s:29:\"breadcrumbs-display-blog-page\";b:0;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:14:\"Lưu trữ cho\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:11:\"Trang chủ\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:15:\"Bạn đã tìm\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:14:\"person_logo_id\";i:0;s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:15:\"company_logo_id\";i:0;s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:1;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";s:8:\"category\";s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";s:1:\"0\";s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";s:1:\"0\";s:18:\"title-tax-category\";s:44:\"%%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:44:\"%%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:44:\"%%term_title%% %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;s:15:\"title-portfolio\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:18:\"metadesc-portfolio\";s:0:\"\";s:17:\"noindex-portfolio\";b:0;s:18:\"showdate-portfolio\";b:0;s:28:\"display-metabox-pt-portfolio\";b:1;s:28:\"post_types-portfolio-maintax\";i:0;s:25:\"title-ptarchive-portfolio\";s:54:\"Lưu trữ %%pt_plural%% %%page%% %%sep%% %%sitename%%\";s:28:\"metadesc-ptarchive-portfolio\";s:0:\"\";s:27:\"bctitle-ptarchive-portfolio\";s:0:\"\";s:27:\"noindex-ptarchive-portfolio\";b:0;s:28:\"title-tax-portfolio_category\";s:55:\"Lưu trữ %%term_title%% %%page%% %%sep%% %%sitename%%\";s:31:\"metadesc-tax-portfolio_category\";s:0:\"\";s:38:\"display-metabox-tax-portfolio_category\";b:1;s:30:\"noindex-tax-portfolio_category\";b:0;s:36:\"taxonomy-portfolio_category-ptparent\";i:0;s:23:\"title-tax-portfolio_tag\";s:55:\"Lưu trữ %%term_title%% %%page%% %%sep%% %%sitename%%\";s:26:\"metadesc-tax-portfolio_tag\";s:0:\"\";s:33:\"display-metabox-tax-portfolio_tag\";b:1;s:25:\"noindex-tax-portfolio_tag\";b:0;s:31:\"taxonomy-portfolio_tag-ptparent\";i:0;s:26:\"taxonomy-category-ptparent\";s:1:\"0\";s:26:\"taxonomy-post_tag-ptparent\";s:1:\"0\";s:29:\"taxonomy-post_format-ptparent\";s:1:\"0\";}', 'yes'),
(162, 'wpseo_social', 'a:19:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(164, '_transient_timeout_wpseo_link_table_inaccessible', '1591189854', 'no'),
(165, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(166, '_transient_timeout_wpseo_meta_table_inaccessible', '1591189854', 'no'),
(167, '_transient_wpseo_meta_table_inaccessible', '0', 'no'),
(170, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.3\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1559653922;s:7:\"version\";s:5:\"5.1.3\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(171, 'acf_version', '5.8.1', 'yes'),
(174, 'modula_version', 'a:2:{s:13:\"upgraded_from\";s:5:\"2.1.0\";s:15:\"current_version\";s:5:\"2.1.0\";}', 'yes'),
(175, 'qtranslate_admin_notices', 'a:5:{s:15:\"initial-install\";i:1559654361;s:26:\"integration-acf-qtranslate\";i:1559655354;s:31:\"integration-wp-seo-qtranslate-x\";i:1559655355;s:26:\"survey-translation-service\";i:1559655357;s:11:\"next_thanks\";i:1559655711;}', 'yes'),
(176, 'qtranslate_enabled_languages', 'a:2:{i:0;s:2:\"vi\";i:1;s:2:\"en\";}', 'yes'),
(177, 'qtranslate_default_language', 'vi', 'yes'),
(178, 'qtranslate_version_previous', '34680', 'yes'),
(179, 'qtranslate_versions', 'a:4:{i:34680;i:1559654054;s:1:\"l\";i:1559655711;s:1:\"t\";i:1286;s:1:\"p\";i:1559655612;}', 'yes'),
(180, 'qtranslate_admin_config', 'a:7:{s:4:\"post\";a:4:{s:5:\"pages\";a:2:{s:8:\"post.php\";s:0:\"\";s:12:\"post-new.php\";s:0:\"\";}s:7:\"anchors\";a:1:{s:17:\"post-body-content\";a:1:{s:5:\"where\";s:10:\"first last\";}}s:5:\"forms\";a:2:{s:4:\"post\";a:1:{s:6:\"fields\";a:8:{s:5:\"title\";a:0:{}s:7:\"excerpt\";a:0:{}s:18:\"attachment_caption\";a:0:{}s:14:\"attachment_alt\";a:0:{}s:13:\"view-post-btn\";a:1:{s:6:\"encode\";s:7:\"display\";}s:14:\"wp-editor-area\";a:1:{s:6:\"jquery\";s:15:\".wp-editor-area\";}s:15:\"gallery-caption\";a:2:{s:6:\"jquery\";s:16:\".gallery-caption\";s:6:\"encode\";s:4:\"none\";}s:15:\"wp-caption-text\";a:2:{s:6:\"jquery\";s:16:\".wp-caption-text\";s:6:\"encode\";s:7:\"display\";}}}s:14:\"wpbody-content\";a:1:{s:6:\"fields\";a:2:{s:7:\"wrap-h1\";a:2:{s:6:\"jquery\";s:8:\".wrap h1\";s:6:\"encode\";s:7:\"display\";}s:7:\"wrap-h2\";a:2:{s:6:\"jquery\";s:8:\".wrap h2\";s:6:\"encode\";s:7:\"display\";}}}}s:7:\"js-exec\";a:1:{s:9:\"post-exec\";a:1:{s:3:\"src\";s:27:\"./admin/js/post-exec.min.js\";}}}s:15:\"options-general\";a:3:{s:14:\"preg_delimiter\";s:1:\"#\";s:5:\"pages\";a:1:{s:19:\"options-general.php\";s:21:\"^(?!.*page=[^=&]+).*$\";}s:5:\"forms\";a:1:{s:7:\"options\";a:1:{s:6:\"fields\";a:3:{s:8:\"blogname\";a:0:{}s:15:\"blogdescription\";a:0:{}s:10:\"head-title\";a:2:{s:6:\"jquery\";s:10:\"head title\";s:6:\"encode\";s:7:\"display\";}}}}}s:7:\"widgets\";a:4:{s:5:\"pages\";a:1:{s:11:\"widgets.php\";s:0:\"\";}s:7:\"anchors\";a:1:{s:13:\"widgets-right\";a:1:{s:5:\"where\";s:12:\"before after\";}}s:5:\"forms\";a:1:{s:13:\"widgets-right\";a:1:{s:6:\"fields\";a:3:{s:12:\"widget-title\";a:1:{s:6:\"jquery\";s:34:\"input[id^=\'widget-\'][id$=\'-title\']\";}s:16:\"widget-text-text\";a:1:{s:6:\"jquery\";s:41:\"textarea[id^=\'widget-text-\'][id$=\'-text\']\";}s:15:\"in-widget-title\";a:2:{s:6:\"jquery\";s:20:\"span.in-widget-title\";s:6:\"encode\";s:7:\"display\";}}}}s:7:\"js-exec\";a:1:{s:12:\"widgets-exec\";a:1:{s:3:\"src\";s:30:\"./admin/js/widgets-exec.min.js\";}}}s:8:\"edit-tag\";a:3:{s:5:\"pages\";a:2:{s:8:\"term.php\";s:0:\"\";s:13:\"edit-tags.php\";s:11:\"action=edit\";}s:5:\"forms\";a:1:{s:7:\"edittag\";a:1:{s:6:\"fields\";a:3:{s:4:\"name\";a:0:{}s:11:\"description\";a:0:{}s:6:\"parent\";a:1:{s:6:\"encode\";s:7:\"display\";}}}}s:7:\"js-exec\";a:1:{s:13:\"edit-tag-exec\";a:1:{s:3:\"src\";s:31:\"./admin/js/edit-tag-exec.min.js\";}}}s:9:\"edit-tags\";a:5:{s:14:\"preg_delimiter\";s:1:\"#\";s:5:\"pages\";a:1:{s:13:\"edit-tags.php\";s:21:\"^(?!.*action=edit).*$\";}s:7:\"anchors\";a:1:{s:12:\"posts-filter\";a:1:{s:5:\"where\";s:12:\"before after\";}}s:5:\"forms\";a:3:{s:6:\"addtag\";a:1:{s:6:\"fields\";a:3:{s:8:\"tag-name\";a:0:{}s:15:\"tag-description\";a:0:{}s:6:\"parent\";a:1:{s:6:\"encode\";s:7:\"display\";}}}s:8:\"col-left\";a:1:{s:6:\"fields\";a:1:{s:8:\"tagcloud\";a:2:{s:6:\"jquery\";s:13:\".tagcloud > a\";s:6:\"encode\";s:7:\"display\";}}}s:8:\"the-list\";a:1:{s:6:\"fields\";a:2:{s:9:\"row-title\";a:2:{s:6:\"jquery\";s:10:\".row-title\";s:6:\"encode\";s:7:\"display\";}s:11:\"description\";a:2:{s:6:\"jquery\";s:12:\".description\";s:6:\"encode\";s:7:\"display\";}}}}s:7:\"js-exec\";a:1:{s:14:\"edit-tags-exec\";a:1:{s:3:\"src\";s:32:\"./admin/js/edit-tags-exec.min.js\";}}}s:9:\"nav-menus\";a:4:{s:5:\"pages\";a:1:{s:13:\"nav-menus.php\";s:23:\"action=edit|menu=\\d+|^$\";}s:7:\"anchors\";a:1:{s:12:\"menu-to-edit\";a:1:{s:5:\"where\";s:12:\"before after\";}}s:5:\"forms\";a:2:{s:15:\"update-nav-menu\";a:1:{s:6:\"fields\";a:5:{s:5:\"title\";a:1:{s:6:\"jquery\";s:27:\"[id^=edit-menu-item-title-]\";}s:10:\"attr-title\";a:1:{s:6:\"jquery\";s:32:\"[id^=edit-menu-item-attr-title-]\";}s:11:\"description\";a:1:{s:6:\"jquery\";s:33:\"[id^=edit-menu-item-description-]\";}s:10:\"span.title\";a:2:{s:6:\"jquery\";s:20:\"span.menu-item-title\";s:6:\"encode\";s:7:\"display\";}s:16:\"link-to-original\";a:2:{s:6:\"jquery\";s:20:\".link-to-original >a\";s:6:\"encode\";s:7:\"display\";}}}s:14:\"side-sortables\";a:1:{s:6:\"fields\";a:2:{s:11:\"label.title\";a:2:{s:6:\"jquery\";s:21:\"label.menu-item-title\";s:6:\"encode\";s:7:\"display\";}s:23:\"accordion-section-title\";a:2:{s:6:\"jquery\";s:26:\"h3.accordion-section-title\";s:6:\"encode\";s:7:\"display\";}}}}s:7:\"js-exec\";a:1:{s:14:\"nav-menus-exec\";a:1:{s:3:\"src\";s:32:\"./admin/js/nav-menus-exec.min.js\";}}}s:9:\"all-pages\";a:1:{s:7:\"filters\";a:1:{s:4:\"text\";a:1:{s:11:\"admin_title\";s:2:\"20\";}}}}', 'yes'),
(181, 'qtranslate_front_config', 'a:1:{s:9:\"all-pages\";a:1:{s:7:\"filters\";a:3:{s:4:\"text\";a:11:{s:12:\"widget_title\";s:2:\"20\";s:11:\"widget_text\";s:2:\"20\";s:9:\"the_title\";s:2:\"20\";s:20:\"category_description\";s:2:\"20\";s:9:\"list_cats\";s:2:\"20\";s:16:\"wp_dropdown_cats\";s:2:\"20\";s:9:\"term_name\";s:2:\"20\";s:18:\"get_comment_author\";s:2:\"20\";s:10:\"the_author\";s:2:\"20\";s:9:\"tml_title\";s:2:\"20\";s:16:\"term_description\";s:2:\"20\";}s:4:\"term\";a:10:{s:7:\"cat_row\";s:1:\"0\";s:8:\"cat_rows\";s:1:\"0\";s:19:\"wp_get_object_terms\";s:1:\"0\";s:16:\"single_cat_title\";s:1:\"0\";s:16:\"single_tag_title\";s:1:\"0\";s:17:\"single_term_title\";s:1:\"0\";s:12:\"the_category\";s:1:\"0\";s:8:\"get_term\";s:1:\"0\";s:9:\"get_terms\";s:1:\"0\";s:12:\"get_category\";s:1:\"0\";}s:3:\"url\";a:16:{s:16:\"author_feed_link\";s:2:\"10\";s:11:\"author_link\";s:2:\"10\";s:27:\"get_comment_author_url_link\";s:2:\"10\";s:23:\"post_comments_feed_link\";s:2:\"10\";s:8:\"day_link\";s:2:\"10\";s:10:\"month_link\";s:2:\"10\";s:9:\"year_link\";s:2:\"10\";s:9:\"page_link\";s:2:\"10\";s:9:\"post_link\";s:2:\"10\";s:13:\"category_link\";s:2:\"10\";s:18:\"category_feed_link\";s:2:\"10\";s:8:\"tag_link\";s:2:\"10\";s:9:\"term_link\";s:2:\"10\";s:13:\"the_permalink\";s:2:\"10\";s:9:\"feed_link\";s:2:\"10\";s:13:\"tag_feed_link\";s:2:\"10\";}}}}', 'yes'),
(182, 'widget_qtranslate', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(183, 'qtranslate_next_thanks', '1581426855', 'yes'),
(184, 'qtranslate_next_update_mo', '1561539356', 'yes'),
(185, 'wp_mail_smtp_initial_version', '1.4.2', 'no'),
(186, 'wp_mail_smtp_version', '1.4.2', 'no'),
(187, 'wp_mail_smtp', 'a:5:{s:4:\"mail\";a:6:{s:10:\"from_email\";s:11:\"tuan@ert.vn\";s:9:\"from_name\";s:34:\"Thiết Kế Xây Dựng Lam Mộc\";s:6:\"mailer\";s:4:\"smtp\";s:11:\"return_path\";b:0;s:16:\"from_email_force\";b:0;s:15:\"from_name_force\";b:0;}s:4:\"smtp\";a:7:{s:7:\"autotls\";b:1;s:4:\"host\";s:14:\"smtp.gmail.com\";s:10:\"encryption\";s:3:\"ssl\";s:4:\"port\";i:465;s:4:\"auth\";b:1;s:4:\"user\";s:23:\"truongtuan829@gmail.com\";s:4:\"pass\";s:16:\"fizzxcssqncpdvxo\";}s:5:\"gmail\";a:2:{s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";}s:7:\"mailgun\";a:3:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";s:6:\"region\";s:2:\"US\";}s:8:\"sendgrid\";a:1:{s:7:\"api_key\";s:0:\"\";}}', 'no'),
(188, '_amn_smtp_last_checked', '1560988800', 'yes'),
(189, 'sp_wpcp_settings', 'a:6:{s:20:\"wpcf_delete_all_data\";s:0:\"\";s:22:\"wpcp_enqueue_slick_css\";s:1:\"1\";s:19:\"wpcp_enqueue_fa_css\";s:1:\"1\";s:17:\"wpcp_preloader_js\";s:1:\"1\";s:13:\"wpcp_slick_js\";s:1:\"1\";s:15:\"wpcp_custom_css\";s:90:\".wpcp-carousel-section .wpcp-single-item img {\r\n    max-height: -webkit-fill-available;\r\n}\";}', 'yes'),
(190, 'shortcoder_flags', 'a:1:{s:7:\"version\";s:3:\"4.4\";}', 'yes'),
(191, 'widget_shortcode-widget', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:2935:\"<div class=\"col-md-8\" style=\"background: #fff;\">\r\n   <div class=\"row\">\r\n         <div class=\"col-md-6 dangky\">\r\n               <div class=\"row\">\r\n                     <div style=\"padding: 30px 20px;\">\r\n                           <div class=\"tt_lh\">Ý kiến phản hồi</div>\r\n                           <div style=\"text-align: center;padding-bottom: 5px;\">\r\n                           <img src=\"http://kavila.vn/images/tron.png\">\r\n                           </div>\r\n                            [contact-form-7 id=\"26\" title=\"Ý kiến phản hồi\"]\r\n                     </div>\r\n               </div>\r\n         </div>\r\n\r\n         <div class=\"col-md-6\">\r\n               <div style=\"padding: 30px 10px;\">\r\n                     <div class=\"tt_lh\">Kết nối với chúng tôi</div>\r\n                    <div style=\"text-align: center;padding-bottom: 5px;\">\r\n                    <img src=\"http://kavila.vn/images/tron.png\">\r\n                    </div>\r\n                    <div class=\"col-md-12 col-sm-6\"></div>\r\n                    <div class=\"l col-md-12 col-sm-6\" style=\"padding: 30px 0;\">\r\n                          <div class=\"col-md-4 col-sm-4 col-xs-4 col-xss-4\" style=\"text-align: center;\">\r\n                                <a target=\"_blank\" href=\"\">\r\n                                    <img src=\"https://img.icons8.com/color/48/000000/facebook.png\">\r\n                                </a>\r\n                                <div style=\"padding-top: 10px;color:#010101;font-size: 12px;\">FACEBOOK</div>\r\n                          </div>\r\n                          <div class=\"col-md-4 col-sm-4 col-xs-4 col-xss-4\" style=\"text-align: center;\">\r\n                                 <a target=\"_blank\" href=\"\">\r\n                                    <img src=\"https://img.icons8.com/color/48/000000/pinterest.png\">\r\n                                </a>\r\n                                <div style=\"padding-top: 10px;color:#010101;font-size: 12px;\">PINTEREST</div>\r\n                           </div>\r\n                          <div class=\"col-md-4 col-sm-4 col-xs-4 col-xss-4\" style=\"text-align: center;\">\r\n                                 <a target=\"_blank\" href=\"\">\r\n                                    <img src=\"https://img.icons8.com/color/48/000000/youtube-play.png\">\r\n                                </a>\r\n                                <div style=\"padding-top: 10px;color:#010101;font-size: 12px;\">YOUTUBE</div>\r\n                           </div>\r\n                    </div>\r\n               </div>\r\n               <div class=\"clear\"></div>\r\n               <div style=\"background: #808080; height: 1px;margin: 25px 0;\"></div>\r\n               <div class=\"clear\"></div>\r\n               <div style=\"font-family:Roboto-Bold;font-size: 14px;color:#000;text-transform: uppercase;padding-bottom: 5px;\">Đăng ký nhận tin</div>\r\n               [contact-form-7 id=\"169\" title=\"Đăng ký nhận tin\"]\r\n         </div>\r\n    </div>\r\n</div>\";s:6:\"filter\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(199, 'qtranslate_term_name', 'a:26:{s:27:\"Chưa được phân loại\";a:2:{s:2:\"vi\";s:27:\"Chưa được phân loại\";s:2:\"en\";s:18:\"Not yet classified\";}s:8:\"Dự án\";a:2:{s:2:\"vi\";s:8:\"Dự án\";s:2:\"en\";s:7:\"Project\";}s:9:\"Thi công\";a:2:{s:2:\"vi\";s:9:\"Thi công\";s:2:\"en\";s:12:\"Construction\";}s:19:\"Căn hộ cho thuê\";a:2:{s:2:\"vi\";s:19:\"Căn hộ cho thuê\";s:2:\"en\";s:18:\"Apartment for rent\";}s:10:\"Nhà phố\";a:2:{s:2:\"vi\";s:10:\"Nhà phố\";s:2:\"en\";s:10:\"Townhouses\";}s:10:\"Lát nền\";a:2:{s:2:\"vi\";s:10:\"Lát nền\";s:2:\"en\";s:0:\"\";}s:12:\"Biệt thự\";a:2:{s:2:\"vi\";s:12:\"Biệt thự\";s:2:\"en\";s:5:\"Villa\";}s:22:\"Bar, nhà hàng, coffe\";a:2:{s:2:\"vi\";s:22:\"Bar, nhà hàng, coffe\";s:2:\"en\";s:24:\"Bars, restaurants, coffe\";}s:15:\"Homestay, hotel\";a:2:{s:2:\"vi\";s:15:\"Homestay, hotel\";s:2:\"en\";s:15:\"Homestay, Hotel\";}s:12:\"Nội thất\";a:2:{s:2:\"vi\";s:12:\"Nội thất\";s:2:\"en\";s:0:\"\";}s:24:\"Kiến trúc cảnh quan\";a:2:{s:2:\"vi\";s:24:\"Kiến trúc cảnh quan\";s:2:\"en\";s:22:\"Landscape Architecture\";}s:14:\"Giới thiệu\";a:2:{s:2:\"vi\";s:14:\"Giới thiệu\";s:2:\"en\";s:0:\"\";}s:24:\"Văn phòng thiết kế\";a:2:{s:2:\"vi\";s:24:\"Văn phòng thiết kế\";s:2:\"en\";s:0:\"\";}s:21:\"Xưởng nội thất\";a:2:{s:2:\"vi\";s:21:\"Xưởng nội thất\";s:2:\"en\";s:0:\"\";}s:10:\"Nhân sự\";a:2:{s:2:\"vi\";s:10:\"Nhân sự\";s:2:\"en\";s:0:\"\";}s:14:\"Hoạt động\";a:2:{s:2:\"vi\";s:14:\"Hoạt động\";s:2:\"en\";s:0:\"\";}s:22:\"Cơ cấu chức năng\";a:2:{s:2:\"vi\";s:22:\"Cơ cấu chức năng\";s:2:\"en\";s:0:\"\";}s:13:\"Ốp tường\";a:2:{s:2:\"vi\";s:13:\"Ốp tường\";s:2:\"en\";s:0:\"\";}s:13:\"Đèn điện\";a:2:{s:2:\"vi\";s:13:\"Đèn điện\";s:2:\"en\";s:0:\"\";}s:12:\"Sân vườn\";a:2:{s:2:\"vi\";s:12:\"Sân vườn\";s:2:\"en\";s:0:\"\";}s:9:\"Furniture\";a:2:{s:2:\"vi\";s:9:\"Furniture\";s:2:\"en\";s:0:\"\";}s:12:\"Thiết bị\";a:2:{s:2:\"vi\";s:12:\"Thiết bị\";s:2:\"en\";s:0:\"\";}s:13:\"Vật liệuq\";a:2:{s:2:\"vi\";s:13:\"Vật liệuq\";s:2:\"en\";s:9:\"Materials\";}s:4:\"test\";a:2:{s:2:\"vi\";s:4:\"test\";s:2:\"en\";s:0:\"\";}s:5:\"tess2\";a:2:{s:2:\"vi\";s:5:\"tess2\";s:2:\"en\";s:0:\"\";}s:12:\"Vật liệu\";a:2:{s:2:\"vi\";s:12:\"Vật liệu\";s:2:\"en\";s:0:\"\";}}', 'yes'),
(200, 'wpseo_taxonomy_meta', 'a:1:{s:8:\"category\";a:11:{i:1;a:2:{s:13:\"wpseo_linkdex\";s:2:\"19\";s:19:\"wpseo_content_score\";s:2:\"30\";}i:3;a:3:{s:11:\"wpseo_title\";s:44:\"%%term_title%% %%page%% %%sep%% %%sitename%%\";s:13:\"wpseo_linkdex\";s:2:\"14\";s:19:\"wpseo_content_score\";s:2:\"30\";}i:6;a:2:{s:13:\"wpseo_linkdex\";s:2:\"18\";s:19:\"wpseo_content_score\";s:2:\"30\";}i:5;a:2:{s:13:\"wpseo_linkdex\";s:2:\"18\";s:19:\"wpseo_content_score\";s:2:\"30\";}i:4;a:2:{s:13:\"wpseo_linkdex\";s:2:\"18\";s:19:\"wpseo_content_score\";s:2:\"30\";}i:7;a:2:{s:13:\"wpseo_linkdex\";s:2:\"18\";s:19:\"wpseo_content_score\";s:2:\"30\";}i:11;a:2:{s:13:\"wpseo_linkdex\";s:5:\"-2819\";s:19:\"wpseo_content_score\";s:2:\"30\";}i:13;a:2:{s:13:\"wpseo_linkdex\";s:2:\"18\";s:19:\"wpseo_content_score\";s:2:\"30\";}i:12;a:2:{s:13:\"wpseo_linkdex\";s:2:\"14\";s:19:\"wpseo_content_score\";s:2:\"30\";}i:14;a:2:{s:13:\"wpseo_linkdex\";s:2:\"14\";s:19:\"wpseo_content_score\";s:2:\"30\";}i:15;a:2:{s:13:\"wpseo_linkdex\";s:2:\"18\";s:19:\"wpseo_content_score\";s:2:\"30\";}}}', 'yes'),
(204, 'new_admin_email', 'tuan@ert.vn', 'yes'),
(211, 'wp_statistics_plugin_version', '12.6.6.1', 'yes'),
(212, 'wp_statistics_db_version', '12.6.6.1', 'yes'),
(213, 'wp_statistics', 'a:28:{s:18:\"pending_db_updates\";a:2:{s:13:\"date_ip_agent\";b:0;s:11:\"unique_date\";b:0;}s:16:\"search_converted\";i:1;s:9:\"robotlist\";s:1715:\"007ac9\n5bot\nA6-Indexer\nAbachoBOT\naccoona\nAcoiRobot\nAddThis.com\nADmantX\nAdsBot-Google\nadvbot\nAhrefsBot\naiHitBot\nalexa\nalphabot\nAltaVista\nAntivirusPro\nanyevent\nappie\nApplebot\narchive.org_bot\nAsk Jeeves\nASPSeek\nBaiduspider\nBenjojo\nBeetleBot\nbingbot\nBlekkobot\nblexbot\nBOT for JCE\nbubing\nButterfly\ncbot\nclamantivirus\ncliqzbot\nclumboot\ncoccoc\ncrawler\nCrocCrawler\ncrowsnest.tv\ndbot\ndl2bot\ndotbot\ndownloadbot\nduckduckgo\nDumbot\nEasouSpider\neStyle\nEveryoneSocialBot\nExabot\nezooms\nfacebook.com\nfacebookexternalhit\nFAST\nFeedfetcher-Google\nfeedzirra\nfindxbot\nFirfly\nFriendFeedBot\nfroogle\nGeonaBot\nGigabot\ngirafabot\ngimme60bot\nglbot\nGooglebot\nGroupHigh\nia_archiver\nIDBot\nInfoSeek\ninktomi\nIstellaBot\njetmon\nKraken\nLeikibot\nlinkapediabot\nlinkdexbot\nLinkpadBot\nLoadTimeBot\nlooksmart\nltx71\nLycos\nMail.RU_Bot\nMe.dium\nmeanpathbot\nmediabot\nmedialbot\nMediapartners-Google\nMJ12bot\nmsnbot\nMojeekBot\nmonobot\nmoreover\nMRBOT\nNationalDirectory\nNerdyBot\nNetcraftSurveyAgent\nniki-bot\nnutch\nOpenbot\nOrangeBot\nowler\np4Bot\nPaperLiBot\npageanalyzer\nPagesInventory\nPimonster\nporkbun\npr-cy\nproximic\npwbot\nr4bot\nrabaz\nRambler\nRankivabot\nrevip\nriddler\nrogerbot\nScooter\nScrubby\nscrapy.org\nSearchmetricsBot\nsees.co\nSemanticBot\nSemrushBot\nSeznamBot\nsfFeedReader\nshareaholic-bot\nsistrix\nSiteExplorer\nSlurp\nSocialradarbot\nSocialSearch\nSogou web spider\nSpade\nspbot\nSpiderLing\nSputnikBot\nSuperfeedr\nSurveyBot\nTechnoratiSnoop\nTECNOSEEK\nTeoma\ntrendictionbot\nTweetmemeBot\nTwiceler\nTwitterbot\nTwitturls\nu2bot\nuMBot-LN\nuni5download\nunrulymedia\nUptimeRobot\nURL_Spider_SQL\nVagabondo\nvBSEO\nWASALive-Bot\nWebAlta Crawler\nWebBug\nWebFindBot\nWebMasterAid\nWeSEE\nWotbox\nwsowner\nwsr-agent\nwww.galaxy.com\nx100bot\nXoviBot\nxzybot\nyandex\nYahoo\nYammybot\nYoudaoBot\nZyBorg\nZemlyaCrawl\";s:13:\"anonymize_ips\";b:0;s:5:\"geoip\";b:0;s:10:\"useronline\";b:1;s:6:\"visits\";b:1;s:8:\"visitors\";b:1;s:5:\"pages\";b:1;s:12:\"check_online\";s:3:\"120\";s:8:\"menu_bar\";b:0;s:11:\"coefficient\";s:1:\"1\";s:12:\"stats_report\";b:0;s:11:\"time_report\";s:5:\"daily\";s:11:\"send_report\";s:4:\"mail\";s:14:\"content_report\";s:0:\"\";s:12:\"update_geoip\";b:1;s:8:\"store_ua\";b:0;s:21:\"exclude_administrator\";s:1:\"1\";s:18:\"disable_se_clearch\";b:1;s:16:\"disable_se_qwant\";b:1;s:16:\"disable_se_baidu\";b:1;s:14:\"disable_se_ask\";b:1;s:8:\"map_type\";s:6:\"jqvmap\";s:9:\"ip_method\";s:11:\"REMOTE_ADDR\";s:18:\"force_robot_update\";b:1;s:17:\"show_welcome_page\";b:0;s:23:\"first_show_welcome_page\";b:1;}', 'yes'),
(214, 'widget_wp_statistics_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(215, 'wp_statistics_check_useronline', '1561028068', 'yes'),
(220, 'widget_qtranslateslug', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(248, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(562, 'wp_statistics_referrals_detail', 'a:2:{s:9:\"127.0.0.1\";a:3:{s:2:\"ip\";s:9:\"127.0.0.1\";s:7:\"country\";s:0:\"\";s:5:\"title\";s:0:\"\";}s:24:\"thietkexaydunglammoc.com\";a:3:{s:2:\"ip\";s:14:\"103.90.232.172\";s:7:\"country\";s:0:\"\";s:5:\"title\";s:45:\"Dự án - Thiết Kế Xây Dựng Lam Mộc\";}}', 'no'),
(633, 'widget_maxmegamenu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(634, 'megamenu_version', '2.6', 'yes'),
(635, 'megamenu_initial_version', '2.6', 'yes'),
(636, 'megamenu_multisite_share_themes', 'false', 'yes'),
(637, 'megamenu_settings', 'a:8:{s:6:\"prefix\";s:8:\"disabled\";s:12:\"descriptions\";s:7:\"enabled\";s:9:\"menu-head\";a:7:{s:7:\"enabled\";s:1:\"1\";s:5:\"event\";s:5:\"hover\";s:6:\"effect\";s:8:\"slide_up\";s:12:\"effect_speed\";s:3:\"200\";s:13:\"effect_mobile\";s:5:\"slide\";s:19:\"effect_speed_mobile\";s:3:\"200\";s:5:\"theme\";s:7:\"default\";}s:12:\"second_click\";s:2:\"go\";s:16:\"mobile_behaviour\";s:9:\"accordion\";s:3:\"css\";s:2:\"fs\";s:6:\"unbind\";s:7:\"enabled\";s:9:\"instances\";a:1:{s:9:\"menu-head\";s:1:\"0\";}}', 'yes'),
(640, '_transient_timeout_megamenu_css_version', '4713413093', 'no'),
(641, '_transient_megamenu_css_version', '2.6', 'no'),
(642, '_transient_timeout_megamenu_css_last_updated', '4713413093', 'no'),
(643, '_transient_megamenu_css_last_updated', '1559813093', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(646, 'megamenu_themes', 'a:1:{s:7:\"default\";a:197:{s:5:\"title\";s:7:\"Default\";s:8:\"arrow_up\";s:9:\"dash-f142\";s:10:\"arrow_down\";s:9:\"dash-f140\";s:10:\"arrow_left\";s:9:\"dash-f141\";s:11:\"arrow_right\";s:9:\"dash-f139\";s:11:\"line_height\";s:3:\"1.7\";s:7:\"z_index\";s:3:\"999\";s:17:\"shadow_horizontal\";s:3:\"0px\";s:15:\"shadow_vertical\";s:3:\"0px\";s:11:\"shadow_blur\";s:3:\"5px\";s:13:\"shadow_spread\";s:3:\"0px\";s:12:\"shadow_color\";s:18:\"rgba(0, 0, 0, 0.1)\";s:11:\"transitions\";s:2:\"on\";s:6:\"resets\";s:2:\"on\";s:21:\"menu_item_link_height\";s:4:\"50px\";s:25:\"container_background_from\";s:4:\"#222\";s:23:\"container_background_to\";s:4:\"#222\";s:21:\"container_padding_top\";s:3:\"0px\";s:23:\"container_padding_right\";s:3:\"0px\";s:24:\"container_padding_bottom\";s:3:\"0px\";s:22:\"container_padding_left\";s:3:\"0px\";s:32:\"container_border_radius_top_left\";s:3:\"0px\";s:33:\"container_border_radius_top_right\";s:3:\"0px\";s:36:\"container_border_radius_bottom_right\";s:3:\"0px\";s:35:\"container_border_radius_bottom_left\";s:3:\"0px\";s:15:\"menu_item_align\";s:4:\"left\";s:25:\"menu_item_background_from\";s:13:\"rgba(0,0,0,0)\";s:23:\"menu_item_background_to\";s:13:\"rgba(0,0,0,0)\";s:31:\"menu_item_background_hover_from\";s:4:\"#333\";s:29:\"menu_item_background_hover_to\";s:4:\"#333\";s:17:\"menu_item_spacing\";s:3:\"0px\";s:20:\"menu_item_link_color\";s:7:\"#ffffff\";s:24:\"menu_item_link_font_size\";s:4:\"16px\";s:19:\"menu_item_link_font\";s:7:\"inherit\";s:29:\"menu_item_link_text_transform\";s:4:\"none\";s:21:\"menu_item_link_weight\";s:6:\"normal\";s:30:\"menu_item_link_text_decoration\";s:4:\"none\";s:25:\"menu_item_link_text_align\";s:4:\"left\";s:26:\"menu_item_link_color_hover\";s:7:\"#ffffff\";s:27:\"menu_item_link_weight_hover\";s:6:\"normal\";s:36:\"menu_item_link_text_decoration_hover\";s:4:\"none\";s:26:\"menu_item_link_padding_top\";s:3:\"0px\";s:28:\"menu_item_link_padding_right\";s:4:\"10px\";s:29:\"menu_item_link_padding_bottom\";s:3:\"0px\";s:27:\"menu_item_link_padding_left\";s:4:\"10px\";s:22:\"menu_item_border_color\";s:4:\"#fff\";s:20:\"menu_item_border_top\";s:3:\"0px\";s:22:\"menu_item_border_right\";s:3:\"0px\";s:23:\"menu_item_border_bottom\";s:3:\"0px\";s:21:\"menu_item_border_left\";s:3:\"0px\";s:28:\"menu_item_border_color_hover\";s:4:\"#fff\";s:37:\"menu_item_link_border_radius_top_left\";s:3:\"0px\";s:38:\"menu_item_link_border_radius_top_right\";s:3:\"0px\";s:41:\"menu_item_link_border_radius_bottom_right\";s:3:\"0px\";s:40:\"menu_item_link_border_radius_bottom_left\";s:3:\"0px\";s:23:\"menu_item_divider_color\";s:24:\"rgba(255, 255, 255, 0.1)\";s:30:\"menu_item_divider_glow_opacity\";s:3:\"0.1\";s:27:\"menu_item_highlight_current\";s:2:\"on\";s:21:\"panel_background_from\";s:7:\"#f1f1f1\";s:19:\"panel_background_to\";s:7:\"#f1f1f1\";s:11:\"panel_width\";s:4:\"100%\";s:17:\"panel_inner_width\";s:4:\"100%\";s:17:\"panel_padding_top\";s:3:\"0px\";s:19:\"panel_padding_right\";s:3:\"0px\";s:20:\"panel_padding_bottom\";s:3:\"0px\";s:18:\"panel_padding_left\";s:3:\"0px\";s:18:\"panel_border_color\";s:4:\"#fff\";s:16:\"panel_border_top\";s:3:\"0px\";s:18:\"panel_border_right\";s:3:\"0px\";s:19:\"panel_border_bottom\";s:3:\"0px\";s:17:\"panel_border_left\";s:3:\"0px\";s:28:\"panel_border_radius_top_left\";s:3:\"0px\";s:29:\"panel_border_radius_top_right\";s:3:\"0px\";s:32:\"panel_border_radius_bottom_right\";s:3:\"0px\";s:31:\"panel_border_radius_bottom_left\";s:3:\"0px\";s:24:\"panel_widget_padding_top\";s:4:\"15px\";s:26:\"panel_widget_padding_right\";s:4:\"15px\";s:27:\"panel_widget_padding_bottom\";s:4:\"15px\";s:25:\"panel_widget_padding_left\";s:4:\"15px\";s:18:\"panel_header_color\";s:4:\"#555\";s:22:\"panel_header_font_size\";s:4:\"20px\";s:17:\"panel_header_font\";s:7:\"inherit\";s:27:\"panel_header_text_transform\";s:9:\"uppercase\";s:24:\"panel_header_font_weight\";s:4:\"bold\";s:28:\"panel_header_text_decoration\";s:9:\"underline\";s:24:\"panel_header_padding_top\";s:3:\"0px\";s:26:\"panel_header_padding_right\";s:3:\"0px\";s:27:\"panel_header_padding_bottom\";s:3:\"5px\";s:25:\"panel_header_padding_left\";s:3:\"0px\";s:23:\"panel_header_margin_top\";s:3:\"0px\";s:25:\"panel_header_margin_right\";s:3:\"0px\";s:26:\"panel_header_margin_bottom\";s:3:\"0px\";s:24:\"panel_header_margin_left\";s:3:\"0px\";s:25:\"panel_header_border_color\";s:4:\"#555\";s:23:\"panel_header_border_top\";s:3:\"0px\";s:25:\"panel_header_border_right\";s:3:\"0px\";s:26:\"panel_header_border_bottom\";s:3:\"0px\";s:24:\"panel_header_border_left\";s:3:\"0px\";s:16:\"panel_font_color\";s:4:\"#666\";s:15:\"panel_font_size\";s:4:\"16px\";s:17:\"panel_font_family\";s:7:\"inherit\";s:29:\"panel_second_level_font_color\";s:4:\"#555\";s:28:\"panel_second_level_font_size\";s:4:\"16px\";s:23:\"panel_second_level_font\";s:7:\"inherit\";s:33:\"panel_second_level_text_transform\";s:9:\"uppercase\";s:30:\"panel_second_level_font_weight\";s:4:\"bold\";s:34:\"panel_second_level_text_decoration\";s:4:\"none\";s:35:\"panel_second_level_font_color_hover\";s:4:\"#555\";s:36:\"panel_second_level_font_weight_hover\";s:4:\"bold\";s:40:\"panel_second_level_text_decoration_hover\";s:4:\"none\";s:40:\"panel_second_level_background_hover_from\";s:13:\"rgba(0,0,0,0)\";s:38:\"panel_second_level_background_hover_to\";s:13:\"rgba(0,0,0,0)\";s:30:\"panel_second_level_padding_top\";s:3:\"0px\";s:32:\"panel_second_level_padding_right\";s:3:\"0px\";s:33:\"panel_second_level_padding_bottom\";s:3:\"0px\";s:31:\"panel_second_level_padding_left\";s:3:\"0px\";s:29:\"panel_second_level_margin_top\";s:3:\"0px\";s:31:\"panel_second_level_margin_right\";s:3:\"0px\";s:32:\"panel_second_level_margin_bottom\";s:3:\"0px\";s:30:\"panel_second_level_margin_left\";s:3:\"0px\";s:31:\"panel_second_level_border_color\";s:4:\"#555\";s:29:\"panel_second_level_border_top\";s:3:\"0px\";s:31:\"panel_second_level_border_right\";s:3:\"0px\";s:32:\"panel_second_level_border_bottom\";s:3:\"0px\";s:30:\"panel_second_level_border_left\";s:3:\"0px\";s:28:\"panel_third_level_font_color\";s:4:\"#666\";s:27:\"panel_third_level_font_size\";s:4:\"14px\";s:22:\"panel_third_level_font\";s:7:\"inherit\";s:32:\"panel_third_level_text_transform\";s:4:\"none\";s:29:\"panel_third_level_font_weight\";s:6:\"normal\";s:33:\"panel_third_level_text_decoration\";s:4:\"none\";s:34:\"panel_third_level_font_color_hover\";s:4:\"#666\";s:35:\"panel_third_level_font_weight_hover\";s:6:\"normal\";s:39:\"panel_third_level_text_decoration_hover\";s:4:\"none\";s:39:\"panel_third_level_background_hover_from\";s:13:\"rgba(0,0,0,0)\";s:37:\"panel_third_level_background_hover_to\";s:13:\"rgba(0,0,0,0)\";s:29:\"panel_third_level_padding_top\";s:3:\"0px\";s:31:\"panel_third_level_padding_right\";s:3:\"0px\";s:32:\"panel_third_level_padding_bottom\";s:3:\"0px\";s:30:\"panel_third_level_padding_left\";s:3:\"0px\";s:27:\"flyout_menu_background_from\";s:7:\"#f1f1f1\";s:25:\"flyout_menu_background_to\";s:7:\"#f1f1f1\";s:12:\"flyout_width\";s:5:\"250px\";s:18:\"flyout_padding_top\";s:3:\"0px\";s:20:\"flyout_padding_right\";s:3:\"0px\";s:21:\"flyout_padding_bottom\";s:3:\"0px\";s:19:\"flyout_padding_left\";s:3:\"0px\";s:19:\"flyout_border_color\";s:7:\"#ffffff\";s:17:\"flyout_border_top\";s:3:\"0px\";s:19:\"flyout_border_right\";s:3:\"0px\";s:20:\"flyout_border_bottom\";s:3:\"0px\";s:18:\"flyout_border_left\";s:3:\"0px\";s:29:\"flyout_border_radius_top_left\";s:3:\"0px\";s:30:\"flyout_border_radius_top_right\";s:3:\"0px\";s:33:\"flyout_border_radius_bottom_right\";s:3:\"0px\";s:32:\"flyout_border_radius_bottom_left\";s:3:\"0px\";s:22:\"flyout_background_from\";s:7:\"#f1f1f1\";s:20:\"flyout_background_to\";s:7:\"#f1f1f1\";s:28:\"flyout_background_hover_from\";s:7:\"#dddddd\";s:26:\"flyout_background_hover_to\";s:7:\"#dddddd\";s:18:\"flyout_link_height\";s:4:\"35px\";s:23:\"flyout_link_padding_top\";s:3:\"0px\";s:25:\"flyout_link_padding_right\";s:4:\"10px\";s:26:\"flyout_link_padding_bottom\";s:3:\"0px\";s:24:\"flyout_link_padding_left\";s:4:\"10px\";s:17:\"flyout_link_color\";s:4:\"#666\";s:16:\"flyout_link_size\";s:4:\"14px\";s:18:\"flyout_link_family\";s:7:\"inherit\";s:26:\"flyout_link_text_transform\";s:4:\"none\";s:18:\"flyout_link_weight\";s:6:\"normal\";s:27:\"flyout_link_text_decoration\";s:4:\"none\";s:23:\"flyout_link_color_hover\";s:4:\"#666\";s:24:\"flyout_link_weight_hover\";s:6:\"normal\";s:33:\"flyout_link_text_decoration_hover\";s:4:\"none\";s:30:\"flyout_menu_item_divider_color\";s:24:\"rgba(255, 255, 255, 0.1)\";s:21:\"responsive_breakpoint\";s:5:\"600px\";s:22:\"toggle_background_from\";s:4:\"#222\";s:20:\"toggle_background_to\";s:4:\"#222\";s:17:\"toggle_bar_height\";s:4:\"40px\";s:19:\"mobile_menu_overlay\";s:2:\"on\";s:32:\"mobile_menu_force_width_selector\";s:4:\"body\";s:23:\"mobile_menu_item_height\";s:4:\"40px\";s:22:\"mobile_background_from\";s:4:\"#222\";s:20:\"mobile_background_to\";s:4:\"#222\";s:38:\"mobile_menu_item_background_hover_from\";s:4:\"#333\";s:36:\"mobile_menu_item_background_hover_to\";s:4:\"#333\";s:27:\"mobile_menu_item_link_color\";s:7:\"#ffffff\";s:31:\"mobile_menu_item_link_font_size\";s:4:\"14px\";s:32:\"mobile_menu_item_link_text_align\";s:4:\"left\";s:33:\"mobile_menu_item_link_color_hover\";s:7:\"#ffffff\";s:14:\"mobile_columns\";s:1:\"2\";s:10:\"custom_css\";s:85:\"/** Push menu onto new line **/ \r\n#{$wrap} { \r\n    clear: both;\r\n	margin-top: 25%;\r\n}\";s:6:\"shadow\";s:3:\"off\";s:17:\"menu_item_divider\";s:3:\"off\";s:24:\"flyout_menu_item_divider\";s:3:\"off\";s:21:\"disable_mobile_toggle\";s:3:\"off\";s:23:\"mobile_menu_force_width\";s:3:\"off\";}}', 'yes'),
(647, 'megamenu_themes_last_updated', 'default', 'yes'),
(648, 'megamenu_toggle_blocks', 'a:1:{s:7:\"default\";a:1:{i:1;a:11:{s:4:\"type\";s:11:\"menu_toggle\";s:5:\"align\";s:5:\"right\";s:11:\"closed_text\";s:4:\"MENU\";s:9:\"open_text\";s:4:\"MENU\";s:11:\"closed_icon\";s:9:\"dash-f333\";s:9:\"open_icon\";s:9:\"dash-f335\";s:10:\"text_color\";s:18:\"rgb(221, 221, 221)\";s:9:\"text_size\";s:4:\"14px\";s:10:\"icon_color\";s:18:\"rgb(221, 221, 221)\";s:9:\"icon_size\";s:4:\"24px\";s:13:\"icon_position\";s:5:\"after\";}}}', 'yes'),
(674, '_transient_timeout_megamenu_css', '4713413093', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(675, '_transient_megamenu_css', '/** Thursday 6th June 2019 09:24:53 UTC (core) **/\n/** THIS FILE IS AUTOMATICALLY GENERATED - DO NOT MAKE MANUAL EDITS! **/\n/** Custom CSS should be added to Mega Menu > Menu Themes > Custom Styling **/\n\n.mega-menu-last-modified-1559813093 {\n	content: \'Thursday 6th June 2019 09:24:53 UTC\';\n}\n\n#mega-menu-wrap-menu-head #mega-menu-menu-head ul, #mega-menu-wrap-menu-head #mega-menu-menu-head li, #mega-menu-wrap-menu-head #mega-menu-menu-head p, #mega-menu-wrap-menu-head #mega-menu-menu-head img:not(.mega-menu-logo), #mega-menu-wrap-menu-head #mega-menu-menu-head div, #mega-menu-wrap-menu-head #mega-menu-menu-head a {\n  color: #666;\n  font-family: inherit;\n  font-size: 16px;\n  background: none;\n  border: 0;\n  -webkit-border-radius: 0 0 0 0;\n  -moz-border-radius: 0 0 0 0;\n  -ms-border-radius: 0 0 0 0;\n  -o-border-radius: 0 0 0 0;\n  border-radius: 0 0 0 0;\n  margin: 0;\n  opacity: 1;\n  padding: 0;\n  position: relative;\n  right: auto;\n  top: auto;\n  bottom: auto;\n  left: auto;\n  text-align: left;\n  text-transform: none;\n  vertical-align: baseline;\n  -webkit-box-shadow: none;\n  -moz-box-shadow: none;\n  -ms-box-shadow: none;\n  -o-box-shadow: none;\n  box-shadow: none;\n  list-style-type: none;\n  line-height: 1.7;\n  box-sizing: border-box;\n  float: none;\n  overflow: visible;\n  display: block;\n  min-height: 0;\n  -webkit-transition: none;\n  -moz-transition: none;\n  -o-transition: none;\n  transition: none;\n  text-decoration: none;\n  width: auto;\n  clip: auto;\n  height: auto;\n  outline: none;\n  visibility: inherit;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head ul:before, #mega-menu-wrap-menu-head #mega-menu-menu-head li:before, #mega-menu-wrap-menu-head #mega-menu-menu-head p:before, #mega-menu-wrap-menu-head #mega-menu-menu-head img:not(.mega-menu-logo):before, #mega-menu-wrap-menu-head #mega-menu-menu-head div:before, #mega-menu-wrap-menu-head #mega-menu-menu-head a:before, #mega-menu-wrap-menu-head #mega-menu-menu-head ul:after, #mega-menu-wrap-menu-head #mega-menu-menu-head li:after, #mega-menu-wrap-menu-head #mega-menu-menu-head p:after, #mega-menu-wrap-menu-head #mega-menu-menu-head img:not(.mega-menu-logo):after, #mega-menu-wrap-menu-head #mega-menu-menu-head div:after, #mega-menu-wrap-menu-head #mega-menu-menu-head a:after {\n  display: none;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head table, #mega-menu-wrap-menu-head #mega-menu-menu-head td, #mega-menu-wrap-menu-head #mega-menu-menu-head tr, #mega-menu-wrap-menu-head #mega-menu-menu-head th {\n  border: 0;\n  margin: 0;\n  padding: 0;\n  background: none;\n}\n#mega-menu-wrap-menu-head, #mega-menu-wrap-menu-head #mega-menu-menu-head, #mega-menu-wrap-menu-head #mega-menu-menu-head ul.mega-sub-menu, #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-item, #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-row, #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-column, #mega-menu-wrap-menu-head #mega-menu-menu-head a.mega-menu-link {\n  transition: none;\n  -webkit-border-radius: 0 0 0 0;\n  -moz-border-radius: 0 0 0 0;\n  -ms-border-radius: 0 0 0 0;\n  -o-border-radius: 0 0 0 0;\n  border-radius: 0 0 0 0;\n  -webkit-box-shadow: none;\n  -moz-box-shadow: none;\n  -ms-box-shadow: none;\n  -o-box-shadow: none;\n  box-shadow: none;\n  background: none;\n  border: 0;\n  bottom: auto;\n  box-sizing: border-box;\n  clip: auto;\n  color: #666;\n  display: block;\n  float: none;\n  font-family: inherit;\n  font-size: 16px;\n  height: auto;\n  left: auto;\n  line-height: 1.7;\n  list-style-type: none;\n  margin: 0;\n  min-height: auto;\n  max-height: none;\n  opacity: 1;\n  outline: none;\n  overflow: visible;\n  padding: 0;\n  position: relative;\n  pointer-events: auto;\n  right: auto;\n  text-align: left;\n  text-decoration: none;\n  text-indent: 0;\n  text-transform: none;\n  transform: none;\n  top: auto;\n  vertical-align: baseline;\n  visibility: inherit;\n  width: auto;\n  word-wrap: break-word;\n}\n#mega-menu-wrap-menu-head:before, #mega-menu-wrap-menu-head #mega-menu-menu-head:before, #mega-menu-wrap-menu-head #mega-menu-menu-head ul.mega-sub-menu:before, #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-item:before, #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-row:before, #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-column:before, #mega-menu-wrap-menu-head #mega-menu-menu-head a.mega-menu-link:before, #mega-menu-wrap-menu-head:after, #mega-menu-wrap-menu-head #mega-menu-menu-head:after, #mega-menu-wrap-menu-head #mega-menu-menu-head ul.mega-sub-menu:after, #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-item:after, #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-row:after, #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-column:after, #mega-menu-wrap-menu-head #mega-menu-menu-head a.mega-menu-link:after {\n  display: none;\n}\n#mega-menu-wrap-menu-head {\n  -webkit-border-radius: 0px 0px 0px 0px;\n  -moz-border-radius: 0px 0px 0px 0px;\n  -ms-border-radius: 0px 0px 0px 0px;\n  -o-border-radius: 0px 0px 0px 0px;\n  border-radius: 0px 0px 0px 0px;\n}\n@media only screen and (min-width: 601px) {\n  #mega-menu-wrap-menu-head {\n    background: #222;\n  }\n}\n#mega-menu-wrap-menu-head.mega-keyboard-navigation .mega-menu-toggle:focus, #mega-menu-wrap-menu-head.mega-keyboard-navigation .mega-toggle-block:focus, #mega-menu-wrap-menu-head.mega-keyboard-navigation .mega-toggle-block a:focus, #mega-menu-wrap-menu-head.mega-keyboard-navigation .mega-toggle-block .mega-search input[type=text]:focus, #mega-menu-wrap-menu-head.mega-keyboard-navigation .mega-toggle-block button.mega-toggle-animated:focus, #mega-menu-wrap-menu-head.mega-keyboard-navigation #mega-menu-menu-head a:focus, #mega-menu-wrap-menu-head.mega-keyboard-navigation #mega-menu-menu-head input:focus, #mega-menu-wrap-menu-head.mega-keyboard-navigation #mega-menu-menu-head li.mega-menu-item a.mega-menu-link:focus {\n  outline: 3px solid #109cde;\n  outline-offset: -3px;\n}\n#mega-menu-wrap-menu-head.mega-keyboard-navigation .mega-toggle-block button.mega-toggle-animated:focus {\n  outline-offset: 2px;\n}\n#mega-menu-wrap-menu-head.mega-keyboard-navigation > li.mega-menu-item > a.mega-menu-link:focus {\n  background: #333;\n  color: #fff;\n  font-weight: normal;\n  text-decoration: none;\n  border-color: #fff;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-head.mega-keyboard-navigation > li.mega-menu-item > a.mega-menu-link:focus {\n    color: #fff;\n    background: #333;\n  }\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head {\n  visibility: visible;\n  text-align: left;\n  padding: 0px 0px 0px 0px;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head a.mega-menu-link {\n  cursor: pointer;\n  display: inline;\n  transition: background 200ms linear, color 200ms linear, border 200ms linear;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head a.mega-menu-link .mega-description-group {\n  vertical-align: middle;\n  display: inline-block;\n  transition: none;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head a.mega-menu-link .mega-description-group .mega-menu-title, #mega-menu-wrap-menu-head #mega-menu-menu-head a.mega-menu-link .mega-description-group .mega-menu-description {\n  transition: none;\n  line-height: 1.5;\n  display: block;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head a.mega-menu-link .mega-description-group .mega-menu-description {\n  font-style: italic;\n  font-size: 0.8em;\n  text-transform: none;\n  font-weight: normal;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu li.mega-menu-item.mega-icon-left.mega-has-description.mega-has-icon > a.mega-menu-link {\n  display: flex;\n  align-items: center;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu li.mega-menu-item.mega-icon-left.mega-has-description.mega-has-icon > a.mega-menu-link:before {\n  flex: 0 0 auto;\n  align-self: flex-start;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-tabbed.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item.mega-icon-left.mega-has-description.mega-has-icon > a.mega-menu-link {\n  display: block;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-item.mega-icon-top > a.mega-menu-link {\n  display: table-cell;\n  vertical-align: middle;\n  line-height: initial;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-item.mega-icon-top > a.mega-menu-link:before {\n  display: block;\n  margin: 0 0 6px 0;\n  text-align: center;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-item.mega-icon-top > a.mega-menu-link > span.mega-title-below {\n  display: inline-block;\n  transition: none;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-item.mega-icon-top > a.mega-menu-link {\n    display: block;\n    line-height: 40px;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-item.mega-icon-top > a.mega-menu-link:before {\n    display: inline-block;\n    margin: 0 6px 0 0;\n    text-align: left;\n  }\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-item.mega-icon-right > a.mega-menu-link:before {\n  float: right;\n  margin: 0 0 0 6px;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-animating > ul.mega-sub-menu {\n  pointer-events: none;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-disable-link > a.mega-menu-link, #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu li.mega-disable-link > a.mega-menu-link {\n  cursor: default;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-item-has-children.mega-disable-link > a.mega-menu-link {\n  cursor: pointer;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head p {\n  margin-bottom: 10px;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head input, #mega-menu-wrap-menu-head #mega-menu-menu-head img {\n  max-width: 100%;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-item > ul.mega-sub-menu {\n  display: block;\n  visibility: hidden;\n  opacity: 1;\n  pointer-events: auto;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-item > ul.mega-sub-menu {\n    display: none;\n    visibility: visible;\n    opacity: 1;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-item.mega-toggle-on > ul.mega-sub-menu, #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu.mega-menu-item.mega-toggle-on ul.mega-sub-menu {\n    display: block;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu.mega-menu-item.mega-toggle-on li.mega-hide-sub-menu-on-mobile > ul.mega-sub-menu, #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-hide-sub-menu-on-mobile > ul.mega-sub-menu {\n    display: none;\n  }\n}\n@media only screen and (min-width: 601px) {\n  #mega-menu-wrap-menu-head #mega-menu-menu-head[data-effect=\"fade\"] li.mega-menu-item > ul.mega-sub-menu {\n    opacity: 0;\n    transition: opacity 200ms ease-in, visibility 200ms ease-in;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head[data-effect=\"fade\"].mega-no-js li.mega-menu-item:hover > ul.mega-sub-menu, #mega-menu-wrap-menu-head #mega-menu-menu-head[data-effect=\"fade\"].mega-no-js li.mega-menu-item:focus > ul.mega-sub-menu, #mega-menu-wrap-menu-head #mega-menu-menu-head[data-effect=\"fade\"] li.mega-menu-item.mega-toggle-on > ul.mega-sub-menu, #mega-menu-wrap-menu-head #mega-menu-menu-head[data-effect=\"fade\"] li.mega-menu-item.mega-menu-megamenu.mega-toggle-on ul.mega-sub-menu {\n    opacity: 1;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head[data-effect=\"fade_up\"] li.mega-menu-item.mega-menu-megamenu > ul.mega-sub-menu, #mega-menu-wrap-menu-head #mega-menu-menu-head[data-effect=\"fade_up\"] li.mega-menu-item.mega-menu-flyout ul.mega-sub-menu {\n    opacity: 0;\n    transform: translate(0, 10px);\n    transition: opacity 200ms ease-in, transform 200ms ease-in, visibility 200ms ease-in;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head[data-effect=\"fade_up\"].mega-no-js li.mega-menu-item:hover > ul.mega-sub-menu, #mega-menu-wrap-menu-head #mega-menu-menu-head[data-effect=\"fade_up\"].mega-no-js li.mega-menu-item:focus > ul.mega-sub-menu, #mega-menu-wrap-menu-head #mega-menu-menu-head[data-effect=\"fade_up\"] li.mega-menu-item.mega-toggle-on > ul.mega-sub-menu, #mega-menu-wrap-menu-head #mega-menu-menu-head[data-effect=\"fade_up\"] li.mega-menu-item.mega-menu-megamenu.mega-toggle-on ul.mega-sub-menu {\n    opacity: 1;\n    transform: translate(0, 0);\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head[data-effect=\"slide_up\"] li.mega-menu-item.mega-menu-megamenu > ul.mega-sub-menu, #mega-menu-wrap-menu-head #mega-menu-menu-head[data-effect=\"slide_up\"] li.mega-menu-item.mega-menu-flyout ul.mega-sub-menu {\n    transform: translate(0, 10px);\n    transition: transform 200ms ease-in, visibility 200ms ease-in;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head[data-effect=\"slide_up\"].mega-no-js li.mega-menu-item:hover > ul.mega-sub-menu, #mega-menu-wrap-menu-head #mega-menu-menu-head[data-effect=\"slide_up\"].mega-no-js li.mega-menu-item:focus > ul.mega-sub-menu, #mega-menu-wrap-menu-head #mega-menu-menu-head[data-effect=\"slide_up\"] li.mega-menu-item.mega-toggle-on > ul.mega-sub-menu, #mega-menu-wrap-menu-head #mega-menu-menu-head[data-effect=\"slide_up\"] li.mega-menu-item.mega-menu-megamenu.mega-toggle-on ul.mega-sub-menu {\n    transform: translate(0, 0);\n  }\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head.mega-no-js li.mega-menu-item:hover > ul.mega-sub-menu, #mega-menu-wrap-menu-head #mega-menu-menu-head.mega-no-js li.mega-menu-item:focus > ul.mega-sub-menu, #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-item.mega-toggle-on > ul.mega-sub-menu {\n  visibility: visible;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-item.mega-menu-megamenu ul.mega-sub-menu ul.mega-sub-menu {\n  visibility: inherit;\n  opacity: 1;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-item a[class^=\'dashicons\']:before {\n  font-family: dashicons;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-item a.mega-menu-link:before {\n  display: inline-block;\n  font: inherit;\n  font-family: dashicons;\n  position: static;\n  margin: 0 6px 0 0px;\n  vertical-align: top;\n  -webkit-font-smoothing: antialiased;\n  -moz-osx-font-smoothing: grayscale;\n  color: inherit;\n  background: transparent;\n  height: auto;\n  width: auto;\n  top: auto;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-item.mega-hide-text a.mega-menu-link:before {\n  margin: 0;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-item.mega-hide-text li.mega-menu-item a.mega-menu-link:before {\n  margin: 0 6px 0 0;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-align-bottom-left.mega-toggle-on > a.mega-menu-link {\n  -webkit-border-radius: 0px 0px 0 0;\n  -moz-border-radius: 0px 0px 0 0;\n  -ms-border-radius: 0px 0px 0 0;\n  -o-border-radius: 0px 0px 0 0;\n  border-radius: 0px 0px 0 0;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-align-bottom-right > ul.mega-sub-menu {\n  right: 0;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-align-bottom-right.mega-toggle-on > a.mega-menu-link {\n  -webkit-border-radius: 0px 0px 0 0;\n  -moz-border-radius: 0px 0px 0 0;\n  -ms-border-radius: 0px 0px 0 0;\n  -o-border-radius: 0px 0px 0 0;\n  border-radius: 0px 0px 0 0;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu.mega-menu-item {\n  position: static;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-item {\n  margin: 0 0px 0 0;\n  display: inline-block;\n  height: auto;\n  vertical-align: middle;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-item.mega-item-align-right {\n  float: right;\n}\n@media only screen and (min-width: 601px) {\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-item.mega-item-align-right {\n    margin: 0 0 0 0px;\n  }\n}\n@media only screen and (min-width: 601px) {\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-item.mega-item-align-float-left {\n    float: left;\n  }\n}\n@media only screen and (min-width: 601px) {\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-item > a.mega-menu-link:hover {\n    background: #333;\n    color: #fff;\n    font-weight: normal;\n    text-decoration: none;\n    border-color: #fff;\n  }\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-item.mega-toggle-on > a.mega-menu-link {\n  background: #333;\n  color: #fff;\n  font-weight: normal;\n  text-decoration: none;\n  border-color: #fff;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-item.mega-toggle-on > a.mega-menu-link {\n    color: #fff;\n    background: #333;\n  }\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-item.mega-current-menu-item > a.mega-menu-link, #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-item.mega-current-menu-ancestor > a.mega-menu-link, #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-item.mega-current-page-ancestor > a.mega-menu-link {\n  background: #333;\n  color: #fff;\n  font-weight: normal;\n  text-decoration: none;\n  border-color: #fff;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-item.mega-current-menu-item > a.mega-menu-link, #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-item.mega-current-menu-ancestor > a.mega-menu-link, #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-item.mega-current-page-ancestor > a.mega-menu-link {\n    color: #fff;\n    background: #333;\n  }\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-item > a.mega-menu-link {\n  border-top: 0px solid #fff;\n  border-left: 0px solid #fff;\n  border-right: 0px solid #fff;\n  border-bottom: 0px solid #fff;\n  outline: none;\n  text-decoration: none;\n  padding: 0px 10px 0px 10px;\n  line-height: 50px;\n  font-weight: normal;\n  height: 50px;\n  vertical-align: baseline;\n  text-align: left;\n  width: auto;\n  display: block;\n  color: #fff;\n  text-transform: none;\n  text-decoration: none;\n  background: rgba(0, 0, 0, 0);\n  -webkit-border-radius: 0px 0px 0px 0px;\n  -moz-border-radius: 0px 0px 0px 0px;\n  -ms-border-radius: 0px 0px 0px 0px;\n  -o-border-radius: 0px 0px 0px 0px;\n  border-radius: 0px 0px 0px 0px;\n  font-family: inherit;\n  font-size: 16px;\n}\n@media only screen and (min-width: 601px) {\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-item.mega-multi-line > a.mega-menu-link {\n    line-height: inherit;\n    display: table-cell;\n    vertical-align: middle;\n  }\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-item.mega-multi-line > a.mega-menu-link br {\n    display: none;\n  }\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-item {\n    display: list-item;\n    margin: 0;\n    clear: both;\n    border: 0;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-item.mega-item-align-right {\n    float: none;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-item > a.mega-menu-link {\n    -webkit-border-radius: 0 0 0 0;\n    -moz-border-radius: 0 0 0 0;\n    -ms-border-radius: 0 0 0 0;\n    -o-border-radius: 0 0 0 0;\n    border-radius: 0 0 0 0;\n    border: 0;\n    margin: 0;\n    line-height: 40px;\n    height: 40px;\n    padding: 0 10px;\n    background: transparent;\n    text-align: left;\n    color: #fff;\n    font-size: 14px;\n  }\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row {\n  width: 100%;\n  float: left;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row .mega-menu-column {\n  float: left;\n  min-height: 1px;\n}\n@media only screen and (min-width: 601px) {\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-1-of-1 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-1-of-2 {\n    width: 50%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-2-of-2 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-1-of-3 {\n    width: 33.33333%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-2-of-3 {\n    width: 66.66667%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-3-of-3 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-1-of-4 {\n    width: 25%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-2-of-4 {\n    width: 50%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-3-of-4 {\n    width: 75%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-4-of-4 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-1-of-5 {\n    width: 20%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-2-of-5 {\n    width: 40%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-3-of-5 {\n    width: 60%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-4-of-5 {\n    width: 80%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-5-of-5 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-1-of-6 {\n    width: 16.66667%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-2-of-6 {\n    width: 33.33333%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-3-of-6 {\n    width: 50%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-4-of-6 {\n    width: 66.66667%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-5-of-6 {\n    width: 83.33333%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-6-of-6 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-1-of-7 {\n    width: 14.28571%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-2-of-7 {\n    width: 28.57143%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-3-of-7 {\n    width: 42.85714%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-4-of-7 {\n    width: 57.14286%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-5-of-7 {\n    width: 71.42857%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-6-of-7 {\n    width: 85.71429%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-7-of-7 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-1-of-8 {\n    width: 12.5%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-2-of-8 {\n    width: 25%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-3-of-8 {\n    width: 37.5%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-4-of-8 {\n    width: 50%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-5-of-8 {\n    width: 62.5%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-6-of-8 {\n    width: 75%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-7-of-8 {\n    width: 87.5%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-8-of-8 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-1-of-9 {\n    width: 11.11111%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-2-of-9 {\n    width: 22.22222%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-3-of-9 {\n    width: 33.33333%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-4-of-9 {\n    width: 44.44444%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-5-of-9 {\n    width: 55.55556%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-6-of-9 {\n    width: 66.66667%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-7-of-9 {\n    width: 77.77778%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-8-of-9 {\n    width: 88.88889%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-9-of-9 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-1-of-10 {\n    width: 10%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-2-of-10 {\n    width: 20%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-3-of-10 {\n    width: 30%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-4-of-10 {\n    width: 40%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-5-of-10 {\n    width: 50%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-6-of-10 {\n    width: 60%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-7-of-10 {\n    width: 70%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-8-of-10 {\n    width: 80%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-9-of-10 {\n    width: 90%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-10-of-10 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-1-of-11 {\n    width: 9.09091%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-2-of-11 {\n    width: 18.18182%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-3-of-11 {\n    width: 27.27273%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-4-of-11 {\n    width: 36.36364%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-5-of-11 {\n    width: 45.45455%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-6-of-11 {\n    width: 54.54545%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-7-of-11 {\n    width: 63.63636%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-8-of-11 {\n    width: 72.72727%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-9-of-11 {\n    width: 81.81818%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-10-of-11 {\n    width: 90.90909%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-11-of-11 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-1-of-12 {\n    width: 8.33333%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-2-of-12 {\n    width: 16.66667%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-3-of-12 {\n    width: 25%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-4-of-12 {\n    width: 33.33333%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-5-of-12 {\n    width: 41.66667%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-6-of-12 {\n    width: 50%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-7-of-12 {\n    width: 58.33333%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-8-of-12 {\n    width: 66.66667%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-9-of-12 {\n    width: 75%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-10-of-12 {\n    width: 83.33333%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-11-of-12 {\n    width: 91.66667%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-columns-12-of-12 {\n    width: 100%;\n  }\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-column {\n    width: 50%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row > ul.mega-sub-menu > li.mega-menu-column.mega-menu-clear {\n    clear: left;\n  }\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-row .mega-menu-column > ul.mega-sub-menu > li.mega-menu-item {\n  padding: 15px 15px 15px 15px;\n  width: 100%;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu {\n  z-index: 999;\n  -webkit-border-radius: 0px 0px 0px 0px;\n  -moz-border-radius: 0px 0px 0px 0px;\n  -ms-border-radius: 0px 0px 0px 0px;\n  -o-border-radius: 0px 0px 0px 0px;\n  border-radius: 0px 0px 0px 0px;\n  background: #f1f1f1;\n  padding: 0px 0px 0px 0px;\n  position: absolute;\n  width: 100%;\n  border-top: 0px solid #fff;\n  border-left: 0px solid #fff;\n  border-right: 0px solid #fff;\n  border-bottom: 0px solid #fff;\n  max-width: none;\n  left: 0;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu {\n    float: left;\n    position: static;\n    width: 100%;\n  }\n}\n@media only screen and (min-width: 601px) {\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-1-of-1 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-1-of-2 {\n    width: 50%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-2-of-2 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-1-of-3 {\n    width: 33.33333%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-2-of-3 {\n    width: 66.66667%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-3-of-3 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-1-of-4 {\n    width: 25%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-2-of-4 {\n    width: 50%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-3-of-4 {\n    width: 75%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-4-of-4 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-1-of-5 {\n    width: 20%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-2-of-5 {\n    width: 40%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-3-of-5 {\n    width: 60%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-4-of-5 {\n    width: 80%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-5-of-5 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-1-of-6 {\n    width: 16.66667%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-2-of-6 {\n    width: 33.33333%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-3-of-6 {\n    width: 50%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-4-of-6 {\n    width: 66.66667%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-5-of-6 {\n    width: 83.33333%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-6-of-6 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-1-of-7 {\n    width: 14.28571%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-2-of-7 {\n    width: 28.57143%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-3-of-7 {\n    width: 42.85714%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-4-of-7 {\n    width: 57.14286%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-5-of-7 {\n    width: 71.42857%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-6-of-7 {\n    width: 85.71429%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-7-of-7 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-1-of-8 {\n    width: 12.5%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-2-of-8 {\n    width: 25%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-3-of-8 {\n    width: 37.5%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-4-of-8 {\n    width: 50%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-5-of-8 {\n    width: 62.5%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-6-of-8 {\n    width: 75%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-7-of-8 {\n    width: 87.5%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-8-of-8 {\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-1-of-9 {\n    width: 11.11111%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-2-of-9 {\n    width: 22.22222%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-3-of-9 {\n    width: 33.33333%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-4-of-9 {\n    width: 44.44444%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-5-of-9 {\n    width: 55.55556%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-6-of-9 {\n    width: 66.66667%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-7-of-9 {\n    width: 77.77778%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-8-of-9 {\n    width: 88.88889%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-columns-9-of-9 {\n    width: 100%;\n  }\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu .mega-description-group .mega-menu-description {\n  margin: 5px 0;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item ul.mega-sub-menu {\n  clear: both;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item ul.mega-sub-menu li.mega-menu-item ul.mega-sub-menu {\n  margin-left: 10px;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-column > ul.mega-sub-menu ul.mega-sub-menu ul.mega-sub-menu {\n  margin-left: 10px;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item, #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-column > ul.mega-sub-menu > li.mega-menu-item {\n  color: #666;\n  font-family: inherit;\n  font-size: 16px;\n  display: block;\n  float: left;\n  clear: none;\n  padding: 15px 15px 15px 15px;\n  vertical-align: top;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item.mega-menu-clear, #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-column > ul.mega-sub-menu > li.mega-menu-item.mega-menu-clear {\n  clear: left;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item h4.mega-block-title, #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-column > ul.mega-sub-menu > li.mega-menu-item h4.mega-block-title {\n  color: #555;\n  font-family: inherit;\n  font-size: 20px;\n  text-transform: uppercase;\n  text-decoration: underline;\n  font-weight: bold;\n  margin: 0px 0px 0px 0px;\n  padding: 0px 0px 5px 0px;\n  vertical-align: top;\n  display: block;\n  visibility: inherit;\n  border-top: 0px solid #555;\n  border-left: 0px solid #555;\n  border-right: 0px solid #555;\n  border-bottom: 0px solid #555;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item > a.mega-menu-link, #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-column > ul.mega-sub-menu > li.mega-menu-item > a.mega-menu-link {\n  /* Mega Menu > Menu Themes > Mega Menus > Second Level Menu Items */\n  color: #555;\n  font-family: inherit;\n  font-size: 16px;\n  text-transform: uppercase;\n  text-decoration: none;\n  font-weight: bold;\n  margin: 0px 0px 0px 0px;\n  padding: 0px 0px 0px 0px;\n  vertical-align: top;\n  display: block;\n  border-top: 0px solid #555;\n  border-left: 0px solid #555;\n  border-right: 0px solid #555;\n  border-bottom: 0px solid #555;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item > a.mega-menu-link:hover, #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-column > ul.mega-sub-menu > li.mega-menu-item > a.mega-menu-link:hover, #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item > a.mega-menu-link:focus, #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-column > ul.mega-sub-menu > li.mega-menu-item > a.mega-menu-link:focus {\n  /* Mega Menu > Menu Themes > Mega Menus > Second Level Menu Items (Hover) */\n  color: #555;\n  font-weight: bold;\n  text-decoration: none;\n  background: rgba(0, 0, 0, 0);\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item li.mega-menu-item > a.mega-menu-link, #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-column > ul.mega-sub-menu > li.mega-menu-item li.mega-menu-item > a.mega-menu-link {\n  /* Mega Menu > Menu Themes > Mega Menus > Third Level Menu Items */\n  color: #666;\n  font-family: inherit;\n  font-size: 14px;\n  text-transform: none;\n  text-decoration: none;\n  font-weight: normal;\n  margin: 0;\n  padding: 0px 0px 0px 0px;\n  vertical-align: top;\n  display: block;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item li.mega-menu-item.mega-icon-left.mega-has-description.mega-has-icon > a.mega-menu-link, #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-column > ul.mega-sub-menu > li.mega-menu-item li.mega-menu-item.mega-icon-left.mega-has-description.mega-has-icon > a.mega-menu-link {\n  display: flex;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item li.mega-menu-item > a.mega-menu-link:hover, #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-column > ul.mega-sub-menu > li.mega-menu-item li.mega-menu-item > a.mega-menu-link:hover, #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item li.mega-menu-item > a.mega-menu-link:focus, #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-column > ul.mega-sub-menu > li.mega-menu-item li.mega-menu-item > a.mega-menu-link:focus {\n  /* Mega Menu > Menu Themes > Mega Menus > Third Level Menu Items (Hover) */\n  color: #666;\n  font-weight: normal;\n  text-decoration: none;\n  background: rgba(0, 0, 0, 0);\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu {\n    border: 0;\n    padding: 10px;\n    -webkit-border-radius: 0 0 0 0;\n    -moz-border-radius: 0 0 0 0;\n    -ms-border-radius: 0 0 0 0;\n    -o-border-radius: 0 0 0 0;\n    border-radius: 0 0 0 0;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item {\n    width: 50%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu > li:nth-child(odd) {\n    clear: left;\n  }\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu.mega-no-headers > ul.mega-sub-menu > li.mega-menu-item > a.mega-menu-link, #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu.mega-no-headers > ul.mega-sub-menu li.mega-menu-column > ul.mega-sub-menu > li.mega-menu-item > a.mega-menu-link {\n  color: #666;\n  font-family: inherit;\n  font-size: 14px;\n  text-transform: none;\n  text-decoration: none;\n  font-weight: normal;\n  margin: 0;\n  border: 0;\n  padding: 0px 0px 0px 0px;\n  vertical-align: top;\n  display: block;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu.mega-no-headers > ul.mega-sub-menu > li.mega-menu-item > a.mega-menu-link:hover, #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu.mega-no-headers > ul.mega-sub-menu > li.mega-menu-item > a.mega-menu-link:focus, #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu.mega-no-headers > ul.mega-sub-menu li.mega-menu-column > ul.mega-sub-menu > li.mega-menu-item > a.mega-menu-link:hover, #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu.mega-no-headers > ul.mega-sub-menu li.mega-menu-column > ul.mega-sub-menu > li.mega-menu-item > a.mega-menu-link:focus {\n  color: #666;\n  font-weight: normal;\n  text-decoration: none;\n  background: rgba(0, 0, 0, 0);\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-flyout ul.mega-sub-menu {\n  z-index: 999;\n  position: absolute;\n  width: 250px;\n  border-top: 0px solid #fff;\n  border-left: 0px solid #fff;\n  border-right: 0px solid #fff;\n  border-bottom: 0px solid #fff;\n  padding: 0px 0px 0px 0px;\n  background: #f1f1f1;\n  max-width: none;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-flyout ul.mega-sub-menu {\n    float: left;\n    position: static;\n    width: 100%;\n    padding: 0;\n    border: 0;\n  }\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item {\n    clear: both;\n  }\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item a.mega-menu-link {\n  display: block;\n  background: #f1f1f1;\n  color: #666;\n  font-family: inherit;\n  font-size: 14px;\n  font-weight: normal;\n  padding: 0px 10px 0px 10px;\n  line-height: 35px;\n  text-decoration: none;\n  text-transform: none;\n  vertical-align: baseline;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item:first-child > a.mega-menu-link {\n  border-top-left-radius: 0px;\n  border-top-right-radius: 0px;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item:first-child > a.mega-menu-link {\n    border-top-left-radius: 0;\n    border-top-right-radius: 0;\n  }\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item:last-child > a.mega-menu-link {\n  border-bottom-right-radius: 0px;\n  border-bottom-left-radius: 0px;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item:last-child > a.mega-menu-link {\n    border-bottom-right-radius: 0;\n    border-bottom-left-radius: 0;\n  }\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item a.mega-menu-link:hover, #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item a.mega-menu-link:focus {\n  background: #ddd;\n  font-weight: normal;\n  text-decoration: none;\n  color: #666;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item ul.mega-sub-menu {\n  position: absolute;\n  left: 100%;\n  top: 0;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item ul.mega-sub-menu {\n    position: static;\n    left: 0;\n    width: 100%;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item ul.mega-sub-menu a.mega-menu-link {\n    padding-left: 20px;\n  }\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-item-has-children > a.mega-menu-link:after, #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-item-has-children > a.mega-menu-link span.mega-indicator:after {\n  content: \'\\f140\';\n  display: inline-block;\n  font-family: dashicons;\n  margin: 0 0 0 6px;\n  vertical-align: top;\n  -webkit-font-smoothing: antialiased;\n  -moz-osx-font-smoothing: grayscale;\n  transform: rotate(0);\n  color: inherit;\n  position: relative;\n  background: transparent;\n  height: auto;\n  width: auto;\n  right: auto;\n  line-height: inherit;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-item-has-children > a.mega-menu-link > span.mega-indicator {\n  display: none;\n  float: right;\n  height: auto;\n  width: auto;\n  background: transparent;\n  position: relative;\n  pointer-events: auto;\n  left: auto;\n  min-width: auto;\n  line-height: inherit;\n  color: inherit;\n  font-size: inherit;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-item-has-children > a.mega-menu-link > span.mega-indicator:after {\n  content: \'\\f142\';\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-item-has-children > a.mega-menu-link:after {\n    display: none;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-item-has-children > a.mega-menu-link > span.mega-indicator {\n    display: inline-block;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-item-has-children > a.mega-menu-link > span.mega-indicator:after {\n    content: \'\\f140\';\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-item-has-children.mega-toggle-on > a.mega-menu-link > span.mega-indicator:after {\n    content: \'\\f142\';\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-item-has-children.mega-hide-sub-menu-on-mobile > a.mega-menu-link > span.mega-indicator {\n    display: none;\n  }\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu:not(.mega-menu-tabbed) li.mega-menu-item-has-children > a.mega-menu-link:after, #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-megamenu:not(.mega-menu-tabbed) li.mega-menu-item-has-children > a.mega-menu-link > span.mega-indicator, #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-item-has-children.mega-hide-arrow > a.mega-menu-link:after {\n  display: none;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-item li.mega-menu-item-has-children > a.mega-menu-link:after {\n  content: \'\\f139\';\n  float: right;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-item li.mega-menu-item-has-children > a.mega-menu-link:after {\n    content: \'\\f140\';\n  }\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-flyout.mega-align-bottom-right li.mega-menu-item a.mega-menu-link {\n  text-align: right;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-flyout.mega-align-bottom-right li.mega-menu-item a.mega-menu-link {\n    text-align: left;\n  }\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-flyout.mega-align-bottom-right li.mega-menu-item a.mega-menu-link:before {\n  float: right;\n  margin: 0 0 0 6px;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-flyout.mega-align-bottom-right li.mega-menu-item a.mega-menu-link:before {\n    float: left;\n    margin: 0 6px 0 0;\n  }\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-flyout.mega-align-bottom-right li.mega-menu-item-has-children > a.mega-menu-link:after {\n  content: \'\\f141\';\n  float: left;\n  margin: 0;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-flyout.mega-align-bottom-right li.mega-menu-item-has-children > a.mega-menu-link:after {\n    content: \'\\f140\';\n    float: right;\n  }\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-menu-flyout.mega-align-bottom-right ul.mega-sub-menu li.mega-menu-item ul.mega-sub-menu {\n  left: -100%;\n  top: 0;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head li[class^=\'mega-lang-item\'] > a.mega-menu-link > img {\n  display: inline;\n}\n#mega-menu-wrap-menu-head #mega-menu-menu-head a.mega-menu-link > img.wpml-ls-flag, #mega-menu-wrap-menu-head #mega-menu-menu-head a.mega-menu-link > img.iclflag {\n  display: inline;\n  margin-right: 8px;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-hide-on-mobile, #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-hide-on-mobile, #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-column > ul.mega-sub-menu > li.mega-menu-item.mega-hide-on-mobile {\n    display: none;\n  }\n}\n@media only screen and (min-width: 601px) {\n  #mega-menu-wrap-menu-head #mega-menu-menu-head li.mega-hide-on-desktop, #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-hide-on-desktop, #mega-menu-wrap-menu-head #mega-menu-menu-head > li.mega-menu-megamenu > ul.mega-sub-menu li.mega-menu-column > ul.mega-sub-menu > li.mega-menu-item.mega-hide-on-desktop {\n    display: none;\n  }\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-head:after {\n    content: \"\";\n    display: table;\n    clear: both;\n  }\n  #mega-menu-wrap-menu-head #mega-menu-menu-head {\n    position: absolute;\n    width: 100%;\n    z-index: 9999999;\n    background: #222;\n  }\n}\n#mega-menu-wrap-menu-head .mega-menu-toggle {\n  display: none;\n  z-index: 1;\n  cursor: pointer;\n  background: #222;\n  -webkit-border-radius: 2px 2px 2px 2px;\n  -moz-border-radius: 2px 2px 2px 2px;\n  -ms-border-radius: 2px 2px 2px 2px;\n  -o-border-radius: 2px 2px 2px 2px;\n  border-radius: 2px 2px 2px 2px;\n  line-height: 40px;\n  height: 40px;\n  text-align: left;\n  -webkit-touch-callout: none;\n  -webkit-user-select: none;\n  -khtml-user-select: none;\n  -moz-user-select: none;\n  -ms-user-select: none;\n  -webkit-tap-highlight-color: transparent;\n  outline: none;\n  white-space: nowrap;\n}\n#mega-menu-wrap-menu-head .mega-menu-toggle img {\n  max-width: 100%;\n  padding: 0;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-head .mega-menu-toggle {\n    display: -webkit-box;\n    display: -ms-flexbox;\n    display: -webkit-flex;\n    display: flex;\n  }\n}\n#mega-menu-wrap-menu-head .mega-menu-toggle .mega-toggle-blocks-left, #mega-menu-wrap-menu-head .mega-menu-toggle .mega-toggle-blocks-center, #mega-menu-wrap-menu-head .mega-menu-toggle .mega-toggle-blocks-right {\n  display: -webkit-box;\n  display: -ms-flexbox;\n  display: -webkit-flex;\n  display: flex;\n  -ms-flex-preferred-size: 33.33%;\n  -webkit-flex-basis: 33.33%;\n  flex-basis: 33.33%;\n}\n#mega-menu-wrap-menu-head .mega-menu-toggle .mega-toggle-blocks-left {\n  -webkit-box-flex: 1;\n  -ms-flex: 1;\n  -webkit-flex: 1;\n  flex: 1;\n  -webkit-box-pack: start;\n  -ms-flex-pack: start;\n  -webkit-justify-content: flex-start;\n  justify-content: flex-start;\n}\n#mega-menu-wrap-menu-head .mega-menu-toggle .mega-toggle-blocks-left .mega-toggle-block {\n  margin-left: 6px;\n}\n#mega-menu-wrap-menu-head .mega-menu-toggle .mega-toggle-blocks-center {\n  -webkit-box-pack: center;\n  -ms-flex-pack: center;\n  -webkit-justify-content: center;\n  justify-content: center;\n}\n#mega-menu-wrap-menu-head .mega-menu-toggle .mega-toggle-blocks-center .mega-toggle-block {\n  margin-left: 3px;\n  margin-right: 3px;\n}\n#mega-menu-wrap-menu-head .mega-menu-toggle .mega-toggle-blocks-right {\n  -webkit-box-flex: 1;\n  -ms-flex: 1;\n  -webkit-flex: 1;\n  flex: 1;\n  -webkit-box-pack: end;\n  -ms-flex-pack: end;\n  -webkit-justify-content: flex-end;\n  justify-content: flex-end;\n}\n#mega-menu-wrap-menu-head .mega-menu-toggle .mega-toggle-blocks-right .mega-toggle-block {\n  margin-right: 6px;\n}\n#mega-menu-wrap-menu-head .mega-menu-toggle .mega-toggle-block {\n  display: -webkit-box;\n  display: -ms-flexbox;\n  display: -webkit-flex;\n  display: flex;\n  height: 100%;\n  outline: 0;\n  -webkit-align-self: center;\n  -ms-flex-item-align: center;\n  align-self: center;\n  -ms-flex-negative: 0;\n  -webkit-flex-shrink: 0;\n  flex-shrink: 0;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-menu-head .mega-menu-toggle + #mega-menu-menu-head {\n    background: #222;\n    padding: 0;\n    display: none;\n  }\n  #mega-menu-wrap-menu-head .mega-menu-toggle.mega-menu-open + #mega-menu-menu-head {\n    display: block;\n  }\n}\n#mega-menu-wrap-menu-head .mega-menu-toggle {\n  /** Push menu onto new line **/\n}\n#mega-menu-wrap-menu-head .mega-menu-toggle .mega-toggle-block-1:after {\n  content: \'\\f333\';\n  font-family: \'dashicons\';\n  font-size: 24px;\n  color: #ddd;\n  margin: 0 0 0 5px;\n}\n#mega-menu-wrap-menu-head .mega-menu-toggle .mega-toggle-block-1 .mega-toggle-label {\n  color: #ddd;\n  font-size: 14px;\n}\n#mega-menu-wrap-menu-head .mega-menu-toggle .mega-toggle-block-1 .mega-toggle-label .mega-toggle-label-open {\n  display: none;\n}\n#mega-menu-wrap-menu-head .mega-menu-toggle .mega-toggle-block-1 .mega-toggle-label .mega-toggle-label-closed {\n  display: inline;\n}\n#mega-menu-wrap-menu-head .mega-menu-toggle.mega-menu-open .mega-toggle-block-1:after {\n  content: \'\\f335\';\n}\n#mega-menu-wrap-menu-head .mega-menu-toggle.mega-menu-open .mega-toggle-block-1 .mega-toggle-label-open {\n  display: inline;\n}\n#mega-menu-wrap-menu-head .mega-menu-toggle.mega-menu-open .mega-toggle-block-1 .mega-toggle-label-closed {\n  display: none;\n}\n#mega-menu-wrap-menu-head {\n  clear: both;\n  margin-top: 25%;\n}\n', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(769, 'widget_footer_left', 'a:2:{i:2;a:7:{s:5:\"title\";s:115:\"[:vi]Công Ty TNHH Tư Vấn Thiết Kế Kiến Trúc & Xây Dựng LAM MỘC[:en]Design for building Carpentry[:]\";s:6:\"slogan\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:9:\"hotline_1\";s:38:\"0937 896 202 KTS. NGUYỄN ĐÌNH KHOA\";s:9:\"hotline_2\";s:42:\"0984 068 590 KS. HOÀNG THỊ LAN PHƯƠNG\";s:5:\"email\";s:24:\"kientruclammoc@gmail.com\";s:7:\"address\";s:100:\"Lô 4, B2-10 Đường Âu Dương Lân, Xã Hòa Châu, Huyện Hòa Vang. Thành Phố Đà Nẵng\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(770, 'widget_footer_right', 'a:2:{i:3;a:3:{s:3:\"url\";s:322:\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3835.3295953145343!2d108.19768761485759!3d15.996348988926032!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31421b888310e33f%3A0x90ed427144691158!2zQ8O0bmcgdHkgVMawIHbhuqVuIHRoaeG6v3Qga-G6vyB4w6J5IGThu7FuZyBMYW0gTeG7mWM!5e0!3m2!1svi!2s!4v1559891786489!5m2!1svi!2s\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(772, 'recovery_mode_email_last_sent', '1560502236', 'yes'),
(773, 'wp_mail_smtp_debug', 'a:0:{}', 'no'),
(780, 'widget_support-online', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(783, 'hpr_options', 'a:4:{s:5:\"phone\";s:12:\"0937 896 202\";s:5:\"style\";s:6:\"style2\";s:5:\"color\";s:7:\"#1e73be\";s:11:\"hotline_bar\";s:2:\"on\";}', 'no'),
(789, 'qts_options', 'a:0:{}', 'yes'),
(790, 'qts_version', '1.1.18', 'yes'),
(1079, '_site_transient_timeout_browser_5641c8c298152ceb3c5d9b07b076b9cc', '1561081199', 'no'),
(1080, '_site_transient_browser_5641c8c298152ceb3c5d9b07b076b9cc', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"73.0.3683.108\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(1164, 'portfolio_category_children', 'a:0:{}', 'yes'),
(1190, 'rewrite_rules', 'a:232:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:59:\"(chua-duoc-phan-loai)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"(chua-duoc-phan-loai)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:24:\"(chua-duoc-phan-loai)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:48:\"(thi-cong)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:31:\"(thi-cong)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:13:\"(thi-cong)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:45:\"(du-an)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:28:\"(du-an)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:10:\"(du-an)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:56:\"(du-an/townhouses)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:39:\"(du-an/townhouses)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:21:\"(du-an/townhouses)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:51:\"(du-an/villa)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:34:\"(du-an/villa)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:16:\"(du-an/villa)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:64:\"(du-an/bar-nha-hang-coffe)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:47:\"(du-an/bar-nha-hang-coffe)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:29:\"(du-an/bar-nha-hang-coffe)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:60:\"(du-an/homestay-hotel)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:43:\"(du-an/homestay-hotel)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:25:\"(du-an/homestay-hotel)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"(du-an/noi-that)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:37:\"(du-an/noi-that)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:19:\"(du-an/noi-that)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:65:\"(du-an/kien-truc-canh-quan)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:48:\"(du-an/kien-truc-canh-quan)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:30:\"(du-an/kien-truc-canh-quan)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:50:\"(gioi-thieu)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(gioi-thieu)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:15:\"(gioi-thieu)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:65:\"(gioi-thieu/xuong-noi-that)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:48:\"(gioi-thieu/xuong-noi-that)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:30:\"(gioi-thieu/xuong-noi-that)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:58:\"(gioi-thieu/nhan-su)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:41:\"(gioi-thieu/nhan-su)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:23:\"(gioi-thieu/nhan-su)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:60:\"(gioi-thieu/hoat-dong)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:43:\"(gioi-thieu/hoat-dong)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:25:\"(gioi-thieu/hoat-dong)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:67:\"(gioi-thieu/co-cau-chuc-nang)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:50:\"(gioi-thieu/co-cau-chuc-nang)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"(gioi-thieu/co-cau-chuc-nang)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:48:\"(vat-lieu)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:31:\"(vat-lieu)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:13:\"(vat-lieu)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:56:\"(vat-lieu/lat-nen)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:39:\"(vat-lieu/lat-nen)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:21:\"(vat-lieu/lat-nen)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:57:\"(vat-lieu/op-tuong)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:40:\"(vat-lieu/op-tuong)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:22:\"(vat-lieu/op-tuong)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:66:\"(vat-lieu/noi-that-vat-lieu)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:49:\"(vat-lieu/noi-that-vat-lieu)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:31:\"(vat-lieu/noi-that-vat-lieu)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:57:\"(vat-lieu/den-dien)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:40:\"(vat-lieu/den-dien)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:22:\"(vat-lieu/den-dien)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:58:\"(vat-lieu/furniture)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:41:\"(vat-lieu/furniture)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:23:\"(vat-lieu/furniture)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:57:\"(vat-lieu/thiet-bi)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:40:\"(vat-lieu/thiet-bi)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:22:\"(vat-lieu/thiet-bi)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:14:\"category/(.+)$\";s:45:\"index.php?wpseo_category_redirect=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"amn_smtp/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"amn_smtp/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"amn_smtp/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"amn_smtp/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"amn_smtp/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"amn_smtp/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"amn_smtp/([^/]+)/embed/?$\";s:41:\"index.php?amn_smtp=$matches[1]&embed=true\";s:29:\"amn_smtp/([^/]+)/trackback/?$\";s:35:\"index.php?amn_smtp=$matches[1]&tb=1\";s:37:\"amn_smtp/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?amn_smtp=$matches[1]&paged=$matches[2]\";s:44:\"amn_smtp/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?amn_smtp=$matches[1]&cpage=$matches[2]\";s:33:\"amn_smtp/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?amn_smtp=$matches[1]&page=$matches[2]\";s:25:\"amn_smtp/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"amn_smtp/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"amn_smtp/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"amn_smtp/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"amn_smtp/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"amn_smtp/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:61:\"portfolio_categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?portfolio_categories=$matches[1]&feed=$matches[2]\";s:56:\"portfolio_categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?portfolio_categories=$matches[1]&feed=$matches[2]\";s:37:\"portfolio_categories/([^/]+)/embed/?$\";s:53:\"index.php?portfolio_categories=$matches[1]&embed=true\";s:49:\"portfolio_categories/([^/]+)/page/?([0-9]{1,})/?$\";s:60:\"index.php?portfolio_categories=$matches[1]&paged=$matches[2]\";s:31:\"portfolio_categories/([^/]+)/?$\";s:42:\"index.php?portfolio_categories=$matches[1]\";s:37:\"portfolio/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"portfolio/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"portfolio/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"portfolio/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"portfolio/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"portfolio/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"portfolio/([^/]+)/embed/?$\";s:42:\"index.php?portfolio=$matches[1]&embed=true\";s:30:\"portfolio/([^/]+)/trackback/?$\";s:36:\"index.php?portfolio=$matches[1]&tb=1\";s:38:\"portfolio/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&paged=$matches[2]\";s:45:\"portfolio/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&cpage=$matches[2]\";s:34:\"portfolio/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?portfolio=$matches[1]&page=$matches[2]\";s:26:\"portfolio/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"portfolio/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"portfolio/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"portfolio/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"portfolio/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"portfolio/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"vatlieu_tags/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?vatlieu_tags=$matches[1]&feed=$matches[2]\";s:48:\"vatlieu_tags/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?vatlieu_tags=$matches[1]&feed=$matches[2]\";s:29:\"vatlieu_tags/([^/]+)/embed/?$\";s:45:\"index.php?vatlieu_tags=$matches[1]&embed=true\";s:41:\"vatlieu_tags/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?vatlieu_tags=$matches[1]&paged=$matches[2]\";s:23:\"vatlieu_tags/([^/]+)/?$\";s:34:\"index.php?vatlieu_tags=$matches[1]\";s:36:\"vat-lieu/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"vat-lieu/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"vat-lieu/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"vat-lieu/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"vat-lieu/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"vat-lieu/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"vat-lieu/([^/]+)/embed/?$\";s:40:\"index.php?vatlieu=$matches[1]&embed=true\";s:29:\"vat-lieu/([^/]+)/trackback/?$\";s:34:\"index.php?vatlieu=$matches[1]&tb=1\";s:37:\"vat-lieu/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?vatlieu=$matches[1]&paged=$matches[2]\";s:44:\"vat-lieu/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?vatlieu=$matches[1]&cpage=$matches[2]\";s:33:\"vat-lieu/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?vatlieu=$matches[1]&page=$matches[2]\";s:25:\"vat-lieu/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"vat-lieu/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"vat-lieu/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"vat-lieu/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"vat-lieu/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"vat-lieu/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:55:\"gioithieu_tags/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?gioithieu_tags=$matches[1]&feed=$matches[2]\";s:50:\"gioithieu_tags/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?gioithieu_tags=$matches[1]&feed=$matches[2]\";s:31:\"gioithieu_tags/([^/]+)/embed/?$\";s:47:\"index.php?gioithieu_tags=$matches[1]&embed=true\";s:43:\"gioithieu_tags/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?gioithieu_tags=$matches[1]&paged=$matches[2]\";s:25:\"gioithieu_tags/([^/]+)/?$\";s:36:\"index.php?gioithieu_tags=$matches[1]\";s:38:\"gioi-thieu/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"gioi-thieu/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"gioi-thieu/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"gioi-thieu/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"gioi-thieu/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"gioi-thieu/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"gioi-thieu/([^/]+)/embed/?$\";s:42:\"index.php?gioithieu=$matches[1]&embed=true\";s:31:\"gioi-thieu/([^/]+)/trackback/?$\";s:36:\"index.php?gioithieu=$matches[1]&tb=1\";s:39:\"gioi-thieu/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?gioithieu=$matches[1]&paged=$matches[2]\";s:46:\"gioi-thieu/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?gioithieu=$matches[1]&cpage=$matches[2]\";s:35:\"gioi-thieu/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?gioithieu=$matches[1]&page=$matches[2]\";s:27:\"gioi-thieu/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"gioi-thieu/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"gioi-thieu/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"gioi-thieu/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"gioi-thieu/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"gioi-thieu/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=18&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(1200, 'envira_gallery_116', '1', 'yes'),
(1201, 'envira_gallery_121', '1', 'yes'),
(1202, 'envira_gallery_review', 'a:2:{s:4:\"time\";i:1560500887;s:9:\"dismissed\";b:0;}', 'yes'),
(1239, 'portfolio_categories_children', 'a:0:{}', 'yes'),
(1359, '_transient_timeout_plugin_slugs', '1561088965', 'no'),
(1360, '_transient_plugin_slugs', 'a:22:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:23:\"ajax-text/ajax-test.php\";i:2;s:45:\"taxonomy-terms-order/taxonomy-terms-order.php\";i:3;s:33:\"classic-editor/classic-editor.php\";i:4;s:36:\"contact-form-7/wp-contact-form-7.php\";i:5;s:43:\"envira-gallery-lite/envira-gallery-lite.php\";i:6;s:41:\"hotline-phone-ring/hotline-phone-ring.php\";i:7;s:33:\"jquery-updater/jquery-updater.php\";i:8;s:35:\"modula-best-grid-gallery/Modula.php\";i:9;s:43:\"portfolio-post-type/portfolio-post-type.php\";i:10;s:27:\"qtranslate-x/qtranslate.php\";i:11;s:35:\"qtranslate-slug/qtranslate-slug.php\";i:12;s:25:\"shortcoder/shortcoder.php\";i:13;s:37:\"shortcode-widget/shortcode-widget.php\";i:14;s:39:\"single-post-template/post_templates.php\";i:15;s:43:\"visual-portfolio/class-visual-portfolio.php\";i:16;s:25:\"widget-shortcode/init.php\";i:17;s:37:\"wp-carousel-free/wp-carousel-free.php\";i:18;s:41:\"wp-gallery-metabox/wp-gallery-metabox.php\";i:19;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";i:20;s:31:\"wp-statistics/wp-statistics.php\";i:21;s:24:\"wordpress-seo/wp-seo.php\";}', 'no'),
(1423, 'vatlieu_tags_children', 'a:0:{}', 'yes'),
(1429, 'goithieu_tags_children', 'a:0:{}', 'yes'),
(1519, 'visual_portfolio_updated_caps', '1.12.0', 'yes'),
(1520, 'vp_general', '', 'yes'),
(1521, 'vp_popup_gallery', '', 'yes'),
(1523, '_transient_pk_image_placeholder_1200_667', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAABLAAAAKbAQMAAADfVOFDAAAAA1BMVEUAAP+KeNJXAAAAAXRSTlMAQObYZgAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAHhJREFUeNrtwTEBAAAAwqD1T20KP6AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA4GyJfAABgKE2ZAAAAABJRU5ErkJggg==', 'yes'),
(1524, '_transient_pk_image_placeholder_150_150', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAACWAQMAAAAGz+OhAAAAA1BMVEUAAP+KeNJXAAAAAXRSTlMAQObYZgAAAAlwSFlzAAAOxAAADsQBlSsOGwAAABpJREFUSMftwTEBAAAAwqD1T20ND6AAAIB3Awu4AAFdkeOZAAAAAElFTkSuQmCC', 'yes'),
(1525, '_transient_pk_image_placeholder_300_167', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAACnAQMAAACRs/OZAAAAA1BMVEUAAP+KeNJXAAAAAXRSTlMAQObYZgAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAB1JREFUWMPtwTEBAAAAwqD1T20IX6AAAAAAAAC4DBlxAAHnbQEuAAAAAElFTkSuQmCC', 'yes'),
(1526, '_transient_pk_image_placeholder_768_427', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAwAAAAGrAQMAAABNC2LJAAAAA1BMVEUAAP+KeNJXAAAAAXRSTlMAQObYZgAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAD9JREFUeNrtwTEBAAAAwqD1T20ND6AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAbgyhywABLWn+7wAAAABJRU5ErkJggg==', 'yes'),
(1527, '_transient_pk_image_placeholder_1024_569', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAABAAAAAI5AQMAAAAFdtqfAAAAA1BMVEUAAP+KeNJXAAAAAXRSTlMAQObYZgAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAF5JREFUeNrtwTEBAAAAwqD1T20MH6AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAM4GHsgAAQq3YgMAAAAASUVORK5CYII=', 'yes'),
(1535, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1561002563;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:21:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.1\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"taxonomy-terms-order/taxonomy-terms-order.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/taxonomy-terms-order\";s:4:\"slug\";s:20:\"taxonomy-terms-order\";s:6:\"plugin\";s:45:\"taxonomy-terms-order/taxonomy-terms-order.php\";s:11:\"new_version\";s:5:\"1.5.7\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/taxonomy-terms-order/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/taxonomy-terms-order.1.5.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/taxonomy-terms-order/assets/icon-256x256.png?rev=1564412\";s:2:\"1x\";s:73:\"https://ps.w.org/taxonomy-terms-order/assets/icon-128x128.png?rev=1564412\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/taxonomy-terms-order/assets/banner-1544x500.png?rev=1564412\";s:2:\"1x\";s:75:\"https://ps.w.org/taxonomy-terms-order/assets/banner-772x250.png?rev=1564412\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"envira-gallery-lite/envira-gallery-lite.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/envira-gallery-lite\";s:4:\"slug\";s:19:\"envira-gallery-lite\";s:6:\"plugin\";s:43:\"envira-gallery-lite/envira-gallery-lite.php\";s:11:\"new_version\";s:5:\"1.6.6\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/envira-gallery-lite/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/envira-gallery-lite.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/envira-gallery-lite/assets/icon-256x256.png?rev=2022837\";s:2:\"1x\";s:72:\"https://ps.w.org/envira-gallery-lite/assets/icon-128x128.png?rev=2022837\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/envira-gallery-lite/assets/banner-1544x500.jpg?rev=1686480\";s:2:\"1x\";s:74:\"https://ps.w.org/envira-gallery-lite/assets/banner-772x250.jpg?rev=1686480\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"hotline-phone-ring/hotline-phone-ring.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/hotline-phone-ring\";s:4:\"slug\";s:18:\"hotline-phone-ring\";s:6:\"plugin\";s:41:\"hotline-phone-ring/hotline-phone-ring.php\";s:11:\"new_version\";s:5:\"2.0.4\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/hotline-phone-ring/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/hotline-phone-ring.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/hotline-phone-ring/assets/icon-256x256.jpg?rev=1905675\";s:2:\"1x\";s:71:\"https://ps.w.org/hotline-phone-ring/assets/icon-128x128.jpg?rev=1905675\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:33:\"jquery-updater/jquery-updater.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/jquery-updater\";s:4:\"slug\";s:14:\"jquery-updater\";s:6:\"plugin\";s:33:\"jquery-updater/jquery-updater.php\";s:11:\"new_version\";s:5:\"3.4.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/jquery-updater/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/jquery-updater.3.4.1.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:58:\"https://s.w.org/plugins/geopattern-icon/jquery-updater.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:35:\"modula-best-grid-gallery/Modula.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/modula-best-grid-gallery\";s:4:\"slug\";s:24:\"modula-best-grid-gallery\";s:6:\"plugin\";s:35:\"modula-best-grid-gallery/Modula.php\";s:11:\"new_version\";s:5:\"2.1.0\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/modula-best-grid-gallery/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/modula-best-grid-gallery.2.1.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/modula-best-grid-gallery/assets/icon-256x256.jpg?rev=2019530\";s:2:\"1x\";s:77:\"https://ps.w.org/modula-best-grid-gallery/assets/icon-256x256.jpg?rev=2019530\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/modula-best-grid-gallery/assets/banner-772x250.jpg?rev=2019530\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"portfolio-post-type/portfolio-post-type.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/portfolio-post-type\";s:4:\"slug\";s:19:\"portfolio-post-type\";s:6:\"plugin\";s:43:\"portfolio-post-type/portfolio-post-type.php\";s:11:\"new_version\";s:5:\"1.0.0\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/portfolio-post-type/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/portfolio-post-type.1.0.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/portfolio-post-type/assets/icon-256x256.png?rev=974090\";s:2:\"1x\";s:71:\"https://ps.w.org/portfolio-post-type/assets/icon-256x256.png?rev=974090\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/portfolio-post-type/assets/banner-772x250.jpg?rev=497144\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"qtranslate-x/qtranslate.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/qtranslate-x\";s:4:\"slug\";s:12:\"qtranslate-x\";s:6:\"plugin\";s:27:\"qtranslate-x/qtranslate.php\";s:11:\"new_version\";s:7:\"3.4.6.8\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/qtranslate-x/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/qtranslate-x.3.4.6.8.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://s.w.org/plugins/geopattern-icon/qtranslate-x_f9f9f9.svg\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/qtranslate-x/assets/banner-1544x500.png?rev=1286019\";s:2:\"1x\";s:67:\"https://ps.w.org/qtranslate-x/assets/banner-772x250.png?rev=1286019\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"qtranslate-slug/qtranslate-slug.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/qtranslate-slug\";s:4:\"slug\";s:15:\"qtranslate-slug\";s:6:\"plugin\";s:35:\"qtranslate-slug/qtranslate-slug.php\";s:11:\"new_version\";s:6:\"1.1.18\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/qtranslate-slug/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/qtranslate-slug.1.1.18.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:66:\"https://s.w.org/plugins/geopattern-icon/qtranslate-slug_5fb35e.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/qtranslate-slug/assets/banner-772x250.png?rev=655052\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"shortcoder/shortcoder.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/shortcoder\";s:4:\"slug\";s:10:\"shortcoder\";s:6:\"plugin\";s:25:\"shortcoder/shortcoder.php\";s:11:\"new_version\";s:3:\"4.4\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/shortcoder/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/shortcoder.4.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:63:\"https://ps.w.org/shortcoder/assets/icon-256x256.png?rev=1667321\";s:2:\"1x\";s:55:\"https://ps.w.org/shortcoder/assets/icon.svg?rev=1667321\";s:3:\"svg\";s:55:\"https://ps.w.org/shortcoder/assets/icon.svg?rev=1667321\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/shortcoder/assets/banner-772x250.png?rev=1667321\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"shortcode-widget/shortcode-widget.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/shortcode-widget\";s:4:\"slug\";s:16:\"shortcode-widget\";s:6:\"plugin\";s:37:\"shortcode-widget/shortcode-widget.php\";s:11:\"new_version\";s:5:\"1.5.2\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/shortcode-widget/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/shortcode-widget.1.5.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/shortcode-widget/assets/icon-256x256.png?rev=1718887\";s:2:\"1x\";s:69:\"https://ps.w.org/shortcode-widget/assets/icon-128x128.png?rev=1718887\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:39:\"single-post-template/post_templates.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/single-post-template\";s:4:\"slug\";s:20:\"single-post-template\";s:6:\"plugin\";s:39:\"single-post-template/post_templates.php\";s:11:\"new_version\";s:5:\"1.4.4\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/single-post-template/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/single-post-template.1.4.4.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:64:\"https://s.w.org/plugins/geopattern-icon/single-post-template.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:43:\"visual-portfolio/class-visual-portfolio.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/visual-portfolio\";s:4:\"slug\";s:16:\"visual-portfolio\";s:6:\"plugin\";s:43:\"visual-portfolio/class-visual-portfolio.php\";s:11:\"new_version\";s:6:\"1.12.0\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/visual-portfolio/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/visual-portfolio.1.12.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/visual-portfolio/assets/icon-256x256.png?rev=1889846\";s:2:\"1x\";s:69:\"https://ps.w.org/visual-portfolio/assets/icon-128x128.png?rev=1889846\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/visual-portfolio/assets/banner-1544x500.jpg?rev=1734346\";s:2:\"1x\";s:71:\"https://ps.w.org/visual-portfolio/assets/banner-772x250.jpg?rev=1734346\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"widget-shortcode/init.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/widget-shortcode\";s:4:\"slug\";s:16:\"widget-shortcode\";s:6:\"plugin\";s:25:\"widget-shortcode/init.php\";s:11:\"new_version\";s:5:\"0.3.4\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/widget-shortcode/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/widget-shortcode.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:60:\"https://s.w.org/plugins/geopattern-icon/widget-shortcode.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:37:\"wp-carousel-free/wp-carousel-free.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/wp-carousel-free\";s:4:\"slug\";s:16:\"wp-carousel-free\";s:6:\"plugin\";s:37:\"wp-carousel-free/wp-carousel-free.php\";s:11:\"new_version\";s:5:\"2.1.1\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/wp-carousel-free/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/wp-carousel-free.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wp-carousel-free/assets/icon-256x256.png?rev=2000936\";s:2:\"1x\";s:69:\"https://ps.w.org/wp-carousel-free/assets/icon-128x128.png?rev=2000936\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/wp-carousel-free/assets/banner-1544x500.png?rev=2000936\";s:2:\"1x\";s:71:\"https://ps.w.org/wp-carousel-free/assets/banner-772x250.png?rev=2000936\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"wp-gallery-metabox/wp-gallery-metabox.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wp-gallery-metabox\";s:4:\"slug\";s:18:\"wp-gallery-metabox\";s:6:\"plugin\";s:41:\"wp-gallery-metabox/wp-gallery-metabox.php\";s:11:\"new_version\";s:5:\"1.0.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wp-gallery-metabox/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-gallery-metabox.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/wp-gallery-metabox/assets/icon-128x128.png?rev=1750881\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/wp-gallery-metabox/assets/banner-1544x500.jpg?rev=1750886\";s:2:\"1x\";s:73:\"https://ps.w.org/wp-gallery-metabox/assets/banner-772x250.jpg?rev=1750886\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"1.4.2\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.1.4.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.png?rev=1982773\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.png?rev=1982773\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"wp-statistics/wp-statistics.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/wp-statistics\";s:4:\"slug\";s:13:\"wp-statistics\";s:6:\"plugin\";s:31:\"wp-statistics/wp-statistics.php\";s:11:\"new_version\";s:8:\"12.6.6.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wp-statistics/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/wp-statistics.12.6.6.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wp-statistics/assets/icon-256x256.png?rev=1673578\";s:2:\"1x\";s:58:\"https://ps.w.org/wp-statistics/assets/icon.svg?rev=2041108\";s:3:\"svg\";s:58:\"https://ps.w.org/wp-statistics/assets/icon.svg?rev=2041108\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/wp-statistics/assets/banner-772x250.png?rev=2041108\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"11.4\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.11.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}}}}', 'no'),
(1551, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1560992872;s:15:\"version_checked\";s:5:\"5.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(1552, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:11:\"tuan@ert.vn\";s:7:\"version\";s:5:\"5.2.2\";s:9:\"timestamp\";i:1560912277;}', 'no'),
(1578, '_site_transient_timeout_php_check_b210b8aa09c12dbcb4a182813622790b', '1561539363', 'no'),
(1579, '_site_transient_php_check_b210b8aa09c12dbcb4a182813622790b', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(1582, 'gioithieu_tags_children', 'a:0:{}', 'yes'),
(1605, '_transient_timeout_wps_excluded_hostname_to_ip_cache', '1560963838', 'no'),
(1606, '_transient_wps_excluded_hostname_to_ip_cache', 'a:0:{}', 'no'),
(1625, '_transient_timeout_modula_all_extensions', '1561570403', 'no'),
(1626, '_transient_modula_all_extensions', 'a:5:{s:15:\"modula-deeplink\";a:5:{s:4:\"name\";s:15:\"Modula Deeplink\";s:5:\"image\";s:0:\"\";s:13:\"download_link\";s:0:\"\";s:11:\"description\";s:63:\"Create a unique and indexable URL for each Modula Gallery item.\";s:4:\"slug\";s:15:\"modula-deeplink\";}s:17:\"modula-protection\";a:5:{s:4:\"name\";s:17:\"Modula Protection\";s:5:\"image\";s:0:\"\";s:13:\"download_link\";s:0:\"\";s:11:\"description\";s:199:\"The Modula Protection extension allows you to easily prevent your visitors from downloading your images with right-click protection. Use this extension to retain full ownership of your creative work.\";s:4:\"slug\";s:17:\"modula-protection\";}s:26:\"modula-advanced-shortcodes\";a:5:{s:4:\"name\";s:25:\"Modula Advanced Shortcode\";s:5:\"image\";s:0:\"\";s:13:\"download_link\";s:0:\"\";s:11:\"description\";s:118:\"Allows you to dynamically link to specific galleries without creating pages for them by using URLs with query strings.\";s:4:\"slug\";s:26:\"modula-advanced-shortcodes\";}s:14:\"modula-speedup\";a:5:{s:4:\"name\";s:14:\"Modula SpeedUp\";s:5:\"image\";s:0:\"\";s:13:\"download_link\";s:0:\"\";s:11:\"description\";s:182:\"Allow Modula to automatically optimize your images to load as fast as possible by reducing their file sizes, resizing them and serving them from StackPath\'s content delivery network.\";s:4:\"slug\";s:14:\"modula-speedup\";}s:12:\"modula-video\";a:5:{s:4:\"name\";s:12:\"Modula Video\";s:5:\"image\";s:0:\"\";s:13:\"download_link\";s:0:\"\";s:11:\"description\";s:137:\"Adding a video gallery with both self-hosted videos and videos from sources like YouTube and Vimeo to your website has never been easier.\";s:4:\"slug\";s:12:\"modula-video\";}}', 'no'),
(1627, '_transient_timeout_wpseo_site_information', '1561052016', 'no'),
(1628, '_transient_wpseo_site_information', 'O:8:\"stdClass\":2:{s:3:\"url\";s:25:\"http://127.0.0.1/kientruc\";s:13:\"subscriptions\";a:0:{}}', 'no'),
(1636, '_transient_timeout_modula-galleries', '1561014448', 'no'),
(1637, '_transient_modula-galleries', '1', 'no'),
(1640, '_site_transient_timeout_theme_roots', '1560994677', 'no'),
(1641, '_site_transient_theme_roots', 'a:1:{s:15:\"halink-kientruc\";s:7:\"/themes\";}', 'no'),
(1642, '_site_transient_timeout_available_translations', '1561003714', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1643, '_site_transient_available_translations', 'a:117:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"5.0.4\";s:7:\"updated\";s:19:\"2019-05-16 12:52:45\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.4/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-15 14:27:16\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-05-14 14:59:20\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.10/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-10 20:13:25\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.1/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.6/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-16 03:25:39\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-14 07:58:27\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-14 11:54:05\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-14 05:36:50\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-11 08:51:16\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.1/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2019-03-25 20:13:18\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.1/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-13 17:30:49\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.2.2/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-13 17:30:07\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-19 09:56:19\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/5.2.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-19 09:55:37\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:3:\"5.2\";s:7:\"updated\";s:19:\"2019-05-07 21:15:55\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-13 16:40:55\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-18 10:42:08\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-13 17:33:22\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2019-06-06 15:48:01\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.1/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-13 17:25:10\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-18 10:42:19\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-05-19 17:09:08\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.1/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-18 18:47:51\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-18 21:14:52\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:3:\"5.2\";s:7:\"updated\";s:19:\"2019-05-11 15:51:57\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:3:\"5.1\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.1/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:3:\"5.0\";s:7:\"updated\";s:19:\"2018-12-07 18:38:30\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.0/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:3:\"5.0\";s:7:\"updated\";s:19:\"2018-12-06 21:26:01\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.0/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-05-23 02:23:28\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-17 03:26:22\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:9:\"5.0-beta3\";s:7:\"updated\";s:19:\"2018-11-28 16:04:33\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.0-beta3/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-12-09 21:12:23\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-05-29 05:00:30\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.1/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-12 08:08:56\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-17 01:38:53\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-13 17:32:08\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-15 09:41:31\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-19 09:14:09\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-11 14:05:23\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.1/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2019-03-19 14:36:40\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.1/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 13:16:13\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.7.11\";s:7:\"updated\";s:19:\"2018-09-20 11:13:37\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-14 07:31:31\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-18 06:50:11\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:3:\"5.1\";s:7:\"updated\";s:19:\"2019-02-21 08:17:32\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.1/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-21 14:15:57\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.8/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 07:34:10\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-05-08 04:00:57\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.10/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರೆಸಿ\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 14:27:41\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2018-12-18 14:32:44\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.9/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"5.0.4\";s:7:\"updated\";s:19:\"2019-06-17 20:45:59\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.4/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:6:\"4.7.13\";s:7:\"updated\";s:19:\"2019-05-10 10:24:08\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.13/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:54:41\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.6/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-30 20:27:25\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-10 17:45:28\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.1/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-17 06:02:07\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2019-03-23 09:40:21\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.1.1/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-13 17:34:52\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2019-03-09 16:36:42\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.1/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:8:\"5.2-beta\";s:7:\"updated\";s:19:\"2019-04-09 16:46:27\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.2-beta/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-18 18:21:38\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:3:\"5.2\";s:7:\"updated\";s:19:\"2019-05-08 11:59:02\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-17 09:24:27\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.2.2/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-19 12:07:01\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-19 23:38:29\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-15 12:19:22\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-17 15:22:52\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-14 13:39:13\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.2/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2019-04-02 15:10:17\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.1.1/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-05-21 18:58:08\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.1/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-13 17:16:16\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-16 03:13:05\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-19 20:42:44\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-17 19:34:53\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2019-03-31 10:39:40\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.1.1/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-23 12:32:40\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-05-24 10:49:36\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.1/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-17 05:35:37\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:3:\"5.2\";s:7:\"updated\";s:19:\"2019-05-09 17:07:08\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2018-12-21 00:57:14\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.1/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}', 'no'),
(1720, 'category_children', 'a:3:{i:11;a:6:{i:0;i:15;i:1;i:17;i:2;i:14;i:3;i:16;i:4;i:13;i:5;i:18;}i:45;a:4:{i:0;i:49;i:1;i:46;i:2;i:48;i:3;i:47;}i:50;a:6:{i:0;i:54;i:1;i:51;i:2;i:56;i:3;i:53;i:4;i:55;i:5;i:52;}}', 'yes');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3, 1, '_wp_trash_meta_status', 'publish'),
(4, 1, '_wp_trash_meta_time', '1559653165'),
(5, 1, '_wp_desired_post_slug', 'chao-moi-nguoi'),
(6, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(13, 8, '_wp_attached_file', '2019/06/cf89cb017be49ebac7f5.jpg'),
(14, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:424;s:4:\"file\";s:32:\"2019/06/cf89cb017be49ebac7f5.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"cf89cb017be49ebac7f5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"cf89cb017be49ebac7f5-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(15, 9, '_wp_trash_meta_status', 'publish'),
(16, 9, '_wp_trash_meta_time', '1559653204'),
(17, 10, '_wp_trash_meta_status', 'publish'),
(18, 10, '_wp_trash_meta_time', '1559653213'),
(19, 11, '_wp_attached_file', '2019/06/cropped-cf89cb017be49ebac7f5.jpg'),
(20, 11, '_wp_attachment_context', 'site-icon'),
(21, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:40:\"2019/06/cropped-cf89cb017be49ebac7f5.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"cropped-cf89cb017be49ebac7f5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"cropped-cf89cb017be49ebac7f5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:40:\"cropped-cf89cb017be49ebac7f5-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:40:\"cropped-cf89cb017be49ebac7f5-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:40:\"cropped-cf89cb017be49ebac7f5-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:38:\"cropped-cf89cb017be49ebac7f5-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(22, 12, '_wp_trash_meta_status', 'publish'),
(23, 12, '_wp_trash_meta_time', '1559653222'),
(30, 1, 'wp_gallery_metabox_allow_post', 's:245:\"a:11:{i:0;s:4:\"post\";i:1;s:6:\"envira\";i:2;s:15:\"acf-field-group\";i:3;s:9:\"acf-field\";i:4;s:18:\"wpcf7_contact_form\";i:5;s:14:\"modula-gallery\";i:6;s:8:\"amn_smtp\";i:7;s:9:\"portfolio\";i:8;s:7:\"vatlieu\";i:9;s:8:\"goithieu\";i:10;s:14:\"sp_wp_carousel\";}\";'),
(31, 18, '_edit_last', '1'),
(32, 18, '_wp_page_template', 'default'),
(33, 18, '_yoast_wpseo_content_score', '30'),
(34, 18, '_edit_lock', '1560783040:1'),
(62, 23, '_edit_last', '1'),
(63, 23, '_wp_page_template', 'template/lienhe.php'),
(64, 23, '_yoast_wpseo_content_score', '30'),
(65, 23, '_edit_lock', '1560779916:1'),
(66, 25, '_menu_item_type', 'post_type'),
(67, 25, '_menu_item_menu_item_parent', '0'),
(68, 25, '_menu_item_object_id', '23'),
(69, 25, '_menu_item_object', 'page'),
(70, 25, '_menu_item_target', ''),
(71, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(72, 25, '_menu_item_xfn', ''),
(73, 25, '_menu_item_url', ''),
(75, 26, '_form', '[text* txtName class:form-control placeholder \"Tên đơn vị\"]\n[email* txtEmail class:form-control placeholder \"Email\"]\n[tel* txtTel class:form-control placeholder \"SĐT\"]\n[textarea* txtContent class:form-control placeholder \"Ý kiến phản hồi\"]\n[submit id:send class:bu \"Gửi tin nhắn\"]'),
(76, 26, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:9:\"[txtName]\";s:6:\"sender\";s:88:\"[:vi]Thiết Kế Xây Dựng Lam Mộc[:en]Design for building Lam Moc[:] <tuan@ert.vn>\";s:9:\"recipient\";s:11:\"tuan@ert.vn\";s:4:\"body\";s:231:\"Gửi đến từ: [txtName] <[txtEmail]>\n\n\nNội dung thông điệp:\n[txtContent]\n\n-- \nEmail này được gửi đến từ form liên hệ của website [:vi]Thiết Kế Xây Dựng Lam Mộc[:en]Design for building Lam Moc[:]\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(77, 26, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:91:\"[:vi]Thiết Kế Xây Dựng Lam Mộc[:en]Design for building Lam Moc[:] \"[your-subject]\"\";s:6:\"sender\";s:88:\"[:vi]Thiết Kế Xây Dựng Lam Mộc[:en]Design for building Lam Moc[:] <tuan@ert.vn>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:217:\"Nội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website [:vi]Thiết Kế Xây Dựng Lam Mộc[:en]Design for building Lam Moc[:] (http://127.0.0.1/kientruc)\";s:18:\"additional_headers\";s:21:\"Reply-To: tuan@ert.vn\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(78, 26, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:53:\"Xin cảm ơn, form đã được gửi thành công.\";s:12:\"mail_sent_ng\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:16:\"validation_error\";s:86:\"Có một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\";s:4:\"spam\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:12:\"accept_terms\";s:67:\"Bạn phải chấp nhận điều khoản trước khi gửi form.\";s:16:\"invalid_required\";s:28:\"Mục này là bắt buộc.\";s:16:\"invalid_too_long\";s:36:\"Nhập quá số kí tự cho phép.\";s:17:\"invalid_too_short\";s:44:\"Nhập ít hơn số kí tự tối thiểu.\";s:12:\"invalid_date\";s:46:\"Định dạng ngày tháng không hợp lệ.\";s:14:\"date_too_early\";s:58:\"Ngày này trước ngày sớm nhất được cho phép.\";s:13:\"date_too_late\";s:54:\"Ngày này quá ngày gần nhất được cho phép.\";s:13:\"upload_failed\";s:36:\"Tải file lên không thành công.\";s:24:\"upload_file_type_invalid\";s:69:\"Bạn không được phép tải lên file theo định dạng này.\";s:21:\"upload_file_too_large\";s:31:\"File kích thước quá lớn.\";s:23:\"upload_failed_php_error\";s:36:\"Tải file lên không thành công.\";s:14:\"invalid_number\";s:38:\"Định dạng số không hợp lệ.\";s:16:\"number_too_small\";s:48:\"Con số nhỏ hơn số nhỏ nhất cho phép.\";s:16:\"number_too_large\";s:48:\"Con số lớn hơn số lớn nhất cho phép.\";s:23:\"quiz_answer_not_correct\";s:30:\"Câu trả lời chưa đúng.\";s:17:\"captcha_not_match\";s:34:\"Bạn đã nhập sai mã CAPTCHA.\";s:13:\"invalid_email\";s:38:\"Địa chỉ e-mail không hợp lệ.\";s:11:\"invalid_url\";s:22:\"URL không hợp lệ.\";s:11:\"invalid_tel\";s:39:\"Số điện thoại không hợp lệ.\";}'),
(79, 26, '_additional_settings', ''),
(80, 26, '_locale', 'vi'),
(82, 28, '_wp_attached_file', '2019/06/view-1.jpg'),
(83, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:2000;s:4:\"file\";s:18:\"2019/06/view-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"view-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"view-1-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"view-1-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"view-1-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(84, 29, '_wp_attached_file', '2019/06/view-2.jpg'),
(85, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:2000;s:4:\"file\";s:18:\"2019/06/view-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"view-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"view-2-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"view-2-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"view-2-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(86, 27, '_edit_last', '1'),
(87, 27, 'sp_wpcp_upload_options', 'a:6:{s:18:\"wpcp_carousel_type\";s:14:\"image-carousel\";s:12:\"wpcp_gallery\";s:5:\"28,29\";s:23:\"wpcp_display_posts_from\";s:6:\"latest\";s:21:\"number_of_total_posts\";s:2:\"10\";s:25:\"wpcp_display_product_from\";s:6:\"latest\";s:19:\"wpcp_total_products\";s:2:\"10\";}'),
(88, 27, 'sp_wpcp_shortcode_options', 'a:51:{s:13:\"section_title\";s:1:\"0\";s:27:\"section_title_margin_bottom\";a:1:{s:3:\"all\";s:2:\"30\";}s:22:\"wpcp_number_of_columns\";a:5:{s:10:\"lg_desktop\";s:1:\"1\";s:7:\"desktop\";s:1:\"1\";s:6:\"laptop\";s:1:\"1\";s:6:\"tablet\";s:1:\"1\";s:6:\"mobile\";s:1:\"1\";}s:19:\"wpcp_image_order_by\";s:4:\"rand\";s:18:\"wpcp_post_order_by\";s:10:\"menu_order\";s:15:\"wpcp_post_order\";s:3:\"ASC\";s:14:\"wpcp_preloader\";s:1:\"1\";s:23:\"wpcp_carousel_auto_play\";s:1:\"0\";s:24:\"carousel_auto_play_speed\";a:1:{s:3:\"all\";s:4:\"3000\";}s:30:\"standard_carousel_scroll_speed\";a:1:{s:3:\"all\";s:3:\"600\";}s:23:\"carousel_pause_on_hover\";s:1:\"1\";s:17:\"carousel_infinite\";s:1:\"1\";s:15:\"wpcp_navigation\";s:11:\"hide_mobile\";s:15:\"wpcp_nav_colors\";a:2:{s:6:\"color1\";s:4:\"#aaa\";s:6:\"color2\";s:7:\"#52b3d9\";}s:15:\"wpcp_pagination\";s:4:\"hide\";s:21:\"wpcp_pagination_color\";a:2:{s:6:\"color1\";s:7:\"#cccccc\";s:6:\"color2\";s:7:\"#52b3d9\";}s:18:\"wpcp_accessibility\";s:1:\"1\";s:12:\"slider_swipe\";s:1:\"1\";s:16:\"slider_draggable\";s:1:\"1\";s:25:\"wpcp_post_detail_position\";s:6:\"bottom\";s:17:\"wpcp_slide_border\";a:3:{s:3:\"all\";s:1:\"0\";s:5:\"style\";s:4:\"none\";s:5:\"color\";s:7:\"#dddddd\";}s:21:\"wpcp_slide_background\";s:7:\"#f9f9f9\";s:15:\"wpcp_post_title\";s:1:\"1\";s:22:\"wpcp_post_content_show\";s:1:\"1\";s:22:\"wpcp_post_content_type\";s:7:\"excerpt\";s:19:\"wpcp_post_date_show\";s:1:\"1\";s:21:\"wpcp_post_author_show\";s:1:\"1\";s:17:\"wpcp_product_name\";s:1:\"1\";s:18:\"wpcp_product_price\";s:1:\"1\";s:19:\"wpcp_product_rating\";s:1:\"1\";s:17:\"wpcp_product_cart\";s:1:\"1\";s:10:\"show_image\";s:1:\"1\";s:16:\"wpcp_image_sizes\";s:4:\"full\";s:25:\"wpcp_product_image_border\";a:3:{s:3:\"all\";s:1:\"1\";s:5:\"style\";s:5:\"solid\";s:5:\"color\";s:7:\"#dddddd\";}s:17:\"_image_title_attr\";s:0:\"\";s:23:\"section_title_font_load\";s:0:\"\";s:29:\"wpcp_section_title_typography\";a:2:{s:4:\"type\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:28:\"wpcp_image_caption_font_load\";s:0:\"\";s:29:\"wpcp_image_caption_typography\";a:2:{s:4:\"type\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:25:\"wpcp_image_desc_font_load\";s:0:\"\";s:26:\"wpcp_image_desc_typography\";a:2:{s:4:\"type\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:20:\"wpcp_title_font_load\";s:0:\"\";s:21:\"wpcp_title_typography\";a:2:{s:4:\"type\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:27:\"wpcp_post_content_font_load\";s:0:\"\";s:28:\"wpcp_post_content_typography\";a:2:{s:4:\"type\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:24:\"wpcp_post_meta_font_load\";s:0:\"\";s:25:\"wpcp_post_meta_typography\";a:2:{s:4:\"type\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:27:\"wpcp_product_name_font_load\";s:0:\"\";s:28:\"wpcp_product_name_typography\";a:2:{s:4:\"type\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:28:\"wpcp_product_price_font_load\";s:0:\"\";s:29:\"wpcp_product_price_typography\";a:2:{s:4:\"type\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}}'),
(89, 27, '_edit_lock', '1560480049:1'),
(90, 30, '_edit_last', '1'),
(91, 30, 'sp_wpcp_upload_options', 'a:6:{s:18:\"wpcp_carousel_type\";s:14:\"image-carousel\";s:12:\"wpcp_gallery\";s:23:\"31,32,33,34,35,36,37,38\";s:23:\"wpcp_display_posts_from\";s:6:\"latest\";s:21:\"number_of_total_posts\";s:2:\"10\";s:25:\"wpcp_display_product_from\";s:6:\"latest\";s:19:\"wpcp_total_products\";s:2:\"10\";}'),
(92, 30, 'sp_wpcp_shortcode_options', 'a:51:{s:13:\"section_title\";s:0:\"\";s:27:\"section_title_margin_bottom\";a:1:{s:3:\"all\";s:2:\"30\";}s:22:\"wpcp_number_of_columns\";a:5:{s:10:\"lg_desktop\";s:1:\"1\";s:7:\"desktop\";s:1:\"1\";s:6:\"laptop\";s:1:\"1\";s:6:\"tablet\";s:1:\"1\";s:6:\"mobile\";s:1:\"1\";}s:19:\"wpcp_image_order_by\";s:4:\"rand\";s:18:\"wpcp_post_order_by\";s:10:\"menu_order\";s:15:\"wpcp_post_order\";s:3:\"ASC\";s:14:\"wpcp_preloader\";s:1:\"1\";s:23:\"wpcp_carousel_auto_play\";s:1:\"0\";s:24:\"carousel_auto_play_speed\";a:1:{s:3:\"all\";s:4:\"3000\";}s:30:\"standard_carousel_scroll_speed\";a:1:{s:3:\"all\";s:3:\"600\";}s:23:\"carousel_pause_on_hover\";s:1:\"1\";s:17:\"carousel_infinite\";s:1:\"1\";s:15:\"wpcp_navigation\";s:11:\"hide_mobile\";s:15:\"wpcp_nav_colors\";a:2:{s:6:\"color1\";s:4:\"#aaa\";s:6:\"color2\";s:7:\"#52b3d9\";}s:15:\"wpcp_pagination\";s:4:\"hide\";s:21:\"wpcp_pagination_color\";a:2:{s:6:\"color1\";s:7:\"#cccccc\";s:6:\"color2\";s:7:\"#52b3d9\";}s:18:\"wpcp_accessibility\";s:1:\"1\";s:12:\"slider_swipe\";s:1:\"1\";s:16:\"slider_draggable\";s:1:\"1\";s:25:\"wpcp_post_detail_position\";s:6:\"bottom\";s:17:\"wpcp_slide_border\";a:3:{s:3:\"all\";s:1:\"1\";s:5:\"style\";s:4:\"none\";s:5:\"color\";s:7:\"#dddddd\";}s:21:\"wpcp_slide_background\";s:7:\"#f9f9f9\";s:15:\"wpcp_post_title\";s:1:\"1\";s:22:\"wpcp_post_content_show\";s:1:\"1\";s:22:\"wpcp_post_content_type\";s:7:\"excerpt\";s:19:\"wpcp_post_date_show\";s:1:\"1\";s:21:\"wpcp_post_author_show\";s:1:\"1\";s:17:\"wpcp_product_name\";s:1:\"1\";s:18:\"wpcp_product_price\";s:1:\"1\";s:19:\"wpcp_product_rating\";s:1:\"1\";s:17:\"wpcp_product_cart\";s:1:\"1\";s:10:\"show_image\";s:1:\"1\";s:16:\"wpcp_image_sizes\";s:4:\"full\";s:25:\"wpcp_product_image_border\";a:3:{s:3:\"all\";s:1:\"1\";s:5:\"style\";s:5:\"solid\";s:5:\"color\";s:7:\"#dddddd\";}s:17:\"_image_title_attr\";s:0:\"\";s:23:\"section_title_font_load\";s:0:\"\";s:29:\"wpcp_section_title_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:28:\"wpcp_image_caption_font_load\";s:0:\"\";s:29:\"wpcp_image_caption_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:25:\"wpcp_image_desc_font_load\";s:0:\"\";s:26:\"wpcp_image_desc_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:20:\"wpcp_title_font_load\";s:0:\"\";s:21:\"wpcp_title_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:27:\"wpcp_post_content_font_load\";s:0:\"\";s:28:\"wpcp_post_content_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:24:\"wpcp_post_meta_font_load\";s:0:\"\";s:25:\"wpcp_post_meta_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:27:\"wpcp_product_name_font_load\";s:0:\"\";s:28:\"wpcp_product_name_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:28:\"wpcp_product_price_font_load\";s:0:\"\";s:29:\"wpcp_product_price_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}}'),
(93, 30, '_edit_lock', '1559663834:1'),
(94, 31, '_wp_attached_file', '2019/06/1.jpg'),
(95, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6000;s:6:\"height\";i:4000;s:4:\"file\";s:13:\"2019/06/1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(96, 32, '_wp_attached_file', '2019/06/234..jpg'),
(97, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6000;s:6:\"height\";i:4001;s:4:\"file\";s:16:\"2019/06/234..jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"234.-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"234.-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"234.-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"234.-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(98, 33, '_wp_attached_file', '2019/06/19-02-20-cam-1.jpg'),
(99, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2500;s:6:\"height\";i:3969;s:4:\"file\";s:26:\"2019/06/19-02-20-cam-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"19-02-20-cam-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"19-02-20-cam-1-189x300.jpg\";s:5:\"width\";i:189;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"19-02-20-cam-1-768x1219.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1219;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"19-02-20-cam-1-645x1024.jpg\";s:5:\"width\";i:645;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(100, 34, '_wp_attached_file', '2019/06/19-02-20-cam-2.jpg'),
(101, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2500;s:6:\"height\";i:3969;s:4:\"file\";s:26:\"2019/06/19-02-20-cam-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"19-02-20-cam-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"19-02-20-cam-2-189x300.jpg\";s:5:\"width\";i:189;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"19-02-20-cam-2-768x1219.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1219;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"19-02-20-cam-2-645x1024.jpg\";s:5:\"width\";i:645;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(102, 35, '_wp_attached_file', '2019/06/19-02-20-cam-3.jpg'),
(103, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2500;s:6:\"height\";i:3969;s:4:\"file\";s:26:\"2019/06/19-02-20-cam-3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"19-02-20-cam-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"19-02-20-cam-3-189x300.jpg\";s:5:\"width\";i:189;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"19-02-20-cam-3-768x1219.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1219;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"19-02-20-cam-3-645x1024.jpg\";s:5:\"width\";i:645;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(104, 36, '_wp_attached_file', '2019/06/19-02-20-cam-4.jpg'),
(105, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2500;s:6:\"height\";i:3969;s:4:\"file\";s:26:\"2019/06/19-02-20-cam-4.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"19-02-20-cam-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"19-02-20-cam-4-189x300.jpg\";s:5:\"width\";i:189;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"19-02-20-cam-4-768x1219.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1219;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"19-02-20-cam-4-645x1024.jpg\";s:5:\"width\";i:645;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(106, 37, '_wp_attached_file', '2019/06/19-02-20-came.jpg'),
(107, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2500;s:6:\"height\";i:3969;s:4:\"file\";s:25:\"2019/06/19-02-20-came.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"19-02-20-came-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"19-02-20-came-189x300.jpg\";s:5:\"width\";i:189;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"19-02-20-came-768x1219.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1219;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"19-02-20-came-645x1024.jpg\";s:5:\"width\";i:645;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(108, 38, '_wp_attached_file', '2019/06/BIA.jpg'),
(109, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6945;s:6:\"height\";i:4911;s:4:\"file\";s:15:\"2019/06/BIA.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"BIA-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"BIA-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"BIA-768x543.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:543;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"BIA-1024x724.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(110, 40, '_wp_attached_file', '2019/06/MÁI-CÓ-BẠC-CHE.jpg'),
(111, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6000;s:6:\"height\";i:3335;s:4:\"file\";s:30:\"2019/06/MÁI-CÓ-BẠC-CHE.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"MÁI-CÓ-BẠC-CHE-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"MÁI-CÓ-BẠC-CHE-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"MÁI-CÓ-BẠC-CHE-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"MÁI-CÓ-BẠC-CHE-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(112, 41, '_wp_attached_file', '2019/06/MÁI-DẤU-MÁI-DÙ.jpg'),
(113, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6000;s:6:\"height\";i:3335;s:4:\"file\";s:31:\"2019/06/MÁI-DẤU-MÁI-DÙ.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"MÁI-DẤU-MÁI-DÙ-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"MÁI-DẤU-MÁI-DÙ-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"MÁI-DẤU-MÁI-DÙ-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"MÁI-DẤU-MÁI-DÙ-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(114, 42, '_wp_attached_file', '2019/06/PC.jpg'),
(115, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2500;s:6:\"height\";i:5000;s:4:\"file\";s:14:\"2019/06/PC.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"PC-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"PC-150x300.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"PC-768x1536.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"PC-512x1024.jpg\";s:5:\"width\";i:512;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(116, 39, '_edit_last', '1'),
(117, 39, 'sp_wpcp_upload_options', 'a:6:{s:18:\"wpcp_carousel_type\";s:14:\"image-carousel\";s:12:\"wpcp_gallery\";s:8:\"40,41,42\";s:23:\"wpcp_display_posts_from\";s:6:\"latest\";s:21:\"number_of_total_posts\";s:2:\"10\";s:25:\"wpcp_display_product_from\";s:6:\"latest\";s:19:\"wpcp_total_products\";s:2:\"10\";}'),
(118, 39, 'sp_wpcp_shortcode_options', 'a:51:{s:13:\"section_title\";s:0:\"\";s:27:\"section_title_margin_bottom\";a:1:{s:3:\"all\";s:2:\"30\";}s:22:\"wpcp_number_of_columns\";a:5:{s:10:\"lg_desktop\";s:1:\"1\";s:7:\"desktop\";s:1:\"1\";s:6:\"laptop\";s:1:\"1\";s:6:\"tablet\";s:1:\"1\";s:6:\"mobile\";s:1:\"1\";}s:19:\"wpcp_image_order_by\";s:10:\"menu_order\";s:18:\"wpcp_post_order_by\";s:10:\"menu_order\";s:15:\"wpcp_post_order\";s:3:\"ASC\";s:14:\"wpcp_preloader\";s:1:\"1\";s:23:\"wpcp_carousel_auto_play\";s:1:\"0\";s:24:\"carousel_auto_play_speed\";a:1:{s:3:\"all\";s:4:\"3000\";}s:30:\"standard_carousel_scroll_speed\";a:1:{s:3:\"all\";s:3:\"600\";}s:23:\"carousel_pause_on_hover\";s:1:\"1\";s:17:\"carousel_infinite\";s:1:\"1\";s:15:\"wpcp_navigation\";s:4:\"hide\";s:15:\"wpcp_nav_colors\";a:2:{s:6:\"color1\";s:4:\"#aaa\";s:6:\"color2\";s:7:\"#52b3d9\";}s:15:\"wpcp_pagination\";s:4:\"hide\";s:21:\"wpcp_pagination_color\";a:2:{s:6:\"color1\";s:7:\"#cccccc\";s:6:\"color2\";s:7:\"#52b3d9\";}s:18:\"wpcp_accessibility\";s:1:\"1\";s:12:\"slider_swipe\";s:1:\"1\";s:16:\"slider_draggable\";s:1:\"1\";s:25:\"wpcp_post_detail_position\";s:6:\"bottom\";s:17:\"wpcp_slide_border\";a:3:{s:3:\"all\";s:1:\"1\";s:5:\"style\";s:4:\"none\";s:5:\"color\";s:7:\"#dddddd\";}s:21:\"wpcp_slide_background\";s:7:\"#f9f9f9\";s:15:\"wpcp_post_title\";s:1:\"1\";s:22:\"wpcp_post_content_show\";s:1:\"1\";s:22:\"wpcp_post_content_type\";s:7:\"excerpt\";s:19:\"wpcp_post_date_show\";s:1:\"1\";s:21:\"wpcp_post_author_show\";s:1:\"1\";s:17:\"wpcp_product_name\";s:1:\"1\";s:18:\"wpcp_product_price\";s:1:\"1\";s:19:\"wpcp_product_rating\";s:1:\"1\";s:17:\"wpcp_product_cart\";s:1:\"1\";s:10:\"show_image\";s:1:\"1\";s:16:\"wpcp_image_sizes\";s:4:\"full\";s:25:\"wpcp_product_image_border\";a:3:{s:3:\"all\";s:1:\"1\";s:5:\"style\";s:5:\"solid\";s:5:\"color\";s:7:\"#dddddd\";}s:17:\"_image_title_attr\";s:1:\"1\";s:23:\"section_title_font_load\";s:0:\"\";s:29:\"wpcp_section_title_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:28:\"wpcp_image_caption_font_load\";s:0:\"\";s:29:\"wpcp_image_caption_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:25:\"wpcp_image_desc_font_load\";s:0:\"\";s:26:\"wpcp_image_desc_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:20:\"wpcp_title_font_load\";s:0:\"\";s:21:\"wpcp_title_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:27:\"wpcp_post_content_font_load\";s:0:\"\";s:28:\"wpcp_post_content_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:24:\"wpcp_post_meta_font_load\";s:0:\"\";s:25:\"wpcp_post_meta_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:27:\"wpcp_product_name_font_load\";s:0:\"\";s:28:\"wpcp_product_name_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:28:\"wpcp_product_price_font_load\";s:0:\"\";s:29:\"wpcp_product_price_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}}'),
(119, 39, '_edit_lock', '1559791429:1'),
(120, 44, '_wp_attached_file', '2019/06/BIA-1.jpg'),
(121, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6945;s:6:\"height\";i:4911;s:4:\"file\";s:17:\"2019/06/BIA-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"BIA-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"BIA-1-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"BIA-1-768x543.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:543;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"BIA-1-1024x724.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(122, 45, '_wp_attached_file', '2019/06/P.AN-1-V1.jpg'),
(123, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:2222;s:4:\"file\";s:21:\"2019/06/P.AN-1-V1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"P.AN-1-V1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"P.AN-1-V1-270x300.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"P.AN-1-V1-768x853.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:853;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"P.AN-1-V1-922x1024.jpg\";s:5:\"width\";i:922;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(124, 46, '_wp_attached_file', '2019/06/P.AN-1-V2.jpg'),
(125, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:2222;s:4:\"file\";s:21:\"2019/06/P.AN-1-V2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"P.AN-1-V2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"P.AN-1-V2-270x300.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"P.AN-1-V2-768x853.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:853;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"P.AN-1-V2-922x1024.jpg\";s:5:\"width\";i:922;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(126, 43, '_edit_last', '1'),
(127, 43, 'sp_wpcp_upload_options', 'a:6:{s:18:\"wpcp_carousel_type\";s:14:\"image-carousel\";s:12:\"wpcp_gallery\";s:8:\"44,45,46\";s:23:\"wpcp_display_posts_from\";s:6:\"latest\";s:21:\"number_of_total_posts\";s:2:\"10\";s:25:\"wpcp_display_product_from\";s:6:\"latest\";s:19:\"wpcp_total_products\";s:2:\"10\";}'),
(128, 43, 'sp_wpcp_shortcode_options', 'a:51:{s:13:\"section_title\";s:0:\"\";s:27:\"section_title_margin_bottom\";a:1:{s:3:\"all\";s:2:\"30\";}s:22:\"wpcp_number_of_columns\";a:5:{s:10:\"lg_desktop\";s:1:\"1\";s:7:\"desktop\";s:1:\"1\";s:6:\"laptop\";s:1:\"1\";s:6:\"tablet\";s:1:\"1\";s:6:\"mobile\";s:1:\"1\";}s:19:\"wpcp_image_order_by\";s:10:\"menu_order\";s:18:\"wpcp_post_order_by\";s:10:\"menu_order\";s:15:\"wpcp_post_order\";s:3:\"ASC\";s:14:\"wpcp_preloader\";s:1:\"1\";s:23:\"wpcp_carousel_auto_play\";s:1:\"0\";s:24:\"carousel_auto_play_speed\";a:1:{s:3:\"all\";s:4:\"3000\";}s:30:\"standard_carousel_scroll_speed\";a:1:{s:3:\"all\";s:3:\"600\";}s:23:\"carousel_pause_on_hover\";s:1:\"1\";s:17:\"carousel_infinite\";s:1:\"1\";s:15:\"wpcp_navigation\";s:4:\"show\";s:15:\"wpcp_nav_colors\";a:2:{s:6:\"color1\";s:4:\"#aaa\";s:6:\"color2\";s:7:\"#52b3d9\";}s:15:\"wpcp_pagination\";s:4:\"hide\";s:21:\"wpcp_pagination_color\";a:2:{s:6:\"color1\";s:7:\"#cccccc\";s:6:\"color2\";s:7:\"#52b3d9\";}s:18:\"wpcp_accessibility\";s:1:\"1\";s:12:\"slider_swipe\";s:1:\"1\";s:16:\"slider_draggable\";s:1:\"1\";s:25:\"wpcp_post_detail_position\";s:6:\"bottom\";s:17:\"wpcp_slide_border\";a:3:{s:3:\"all\";s:1:\"1\";s:5:\"style\";s:4:\"none\";s:5:\"color\";s:7:\"#dddddd\";}s:21:\"wpcp_slide_background\";s:7:\"#f9f9f9\";s:15:\"wpcp_post_title\";s:1:\"1\";s:22:\"wpcp_post_content_show\";s:1:\"1\";s:22:\"wpcp_post_content_type\";s:7:\"excerpt\";s:19:\"wpcp_post_date_show\";s:1:\"1\";s:21:\"wpcp_post_author_show\";s:1:\"1\";s:17:\"wpcp_product_name\";s:1:\"1\";s:18:\"wpcp_product_price\";s:1:\"1\";s:19:\"wpcp_product_rating\";s:1:\"1\";s:17:\"wpcp_product_cart\";s:1:\"1\";s:10:\"show_image\";s:1:\"1\";s:16:\"wpcp_image_sizes\";s:4:\"full\";s:25:\"wpcp_product_image_border\";a:3:{s:3:\"all\";s:1:\"1\";s:5:\"style\";s:5:\"solid\";s:5:\"color\";s:7:\"#dddddd\";}s:17:\"_image_title_attr\";s:0:\"\";s:23:\"section_title_font_load\";s:0:\"\";s:29:\"wpcp_section_title_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:28:\"wpcp_image_caption_font_load\";s:0:\"\";s:29:\"wpcp_image_caption_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:25:\"wpcp_image_desc_font_load\";s:0:\"\";s:26:\"wpcp_image_desc_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:20:\"wpcp_title_font_load\";s:0:\"\";s:21:\"wpcp_title_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:27:\"wpcp_post_content_font_load\";s:0:\"\";s:28:\"wpcp_post_content_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:24:\"wpcp_post_meta_font_load\";s:0:\"\";s:25:\"wpcp_post_meta_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:27:\"wpcp_product_name_font_load\";s:0:\"\";s:28:\"wpcp_product_name_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:28:\"wpcp_product_price_font_load\";s:0:\"\";s:29:\"wpcp_product_price_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}}'),
(129, 43, '_edit_lock', '1560480054:1'),
(130, 48, '_wp_attached_file', '2019/06/1-1.jpg'),
(131, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3000;s:6:\"height\";i:2001;s:4:\"file\";s:15:\"2019/06/1-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"1-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"1-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"1-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(132, 49, '_wp_attached_file', '2019/06/2.3.4.jpg'),
(133, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3000;s:6:\"height\";i:2001;s:4:\"file\";s:17:\"2019/06/2.3.4.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"2.3.4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"2.3.4-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"2.3.4-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"2.3.4-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(134, 50, '_wp_attached_file', '2019/06/P.AN-1.jpg'),
(135, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2500;s:6:\"height\";i:5000;s:4:\"file\";s:18:\"2019/06/P.AN-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"P.AN-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"P.AN-1-150x300.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"P.AN-1-768x1536.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"P.AN-1-512x1024.jpg\";s:5:\"width\";i:512;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(136, 47, '_edit_last', '1'),
(137, 47, 'sp_wpcp_upload_options', 'a:6:{s:18:\"wpcp_carousel_type\";s:14:\"image-carousel\";s:12:\"wpcp_gallery\";s:8:\"48,49,50\";s:23:\"wpcp_display_posts_from\";s:6:\"latest\";s:21:\"number_of_total_posts\";s:2:\"10\";s:25:\"wpcp_display_product_from\";s:6:\"latest\";s:19:\"wpcp_total_products\";s:2:\"10\";}'),
(138, 47, 'sp_wpcp_shortcode_options', 'a:51:{s:13:\"section_title\";s:0:\"\";s:27:\"section_title_margin_bottom\";a:1:{s:3:\"all\";s:2:\"30\";}s:22:\"wpcp_number_of_columns\";a:5:{s:10:\"lg_desktop\";s:1:\"1\";s:7:\"desktop\";s:1:\"1\";s:6:\"laptop\";s:1:\"1\";s:6:\"tablet\";s:1:\"1\";s:6:\"mobile\";s:1:\"1\";}s:19:\"wpcp_image_order_by\";s:10:\"menu_order\";s:18:\"wpcp_post_order_by\";s:10:\"menu_order\";s:15:\"wpcp_post_order\";s:3:\"ASC\";s:14:\"wpcp_preloader\";s:1:\"1\";s:23:\"wpcp_carousel_auto_play\";s:1:\"0\";s:24:\"carousel_auto_play_speed\";a:1:{s:3:\"all\";s:4:\"3000\";}s:30:\"standard_carousel_scroll_speed\";a:1:{s:3:\"all\";s:3:\"600\";}s:23:\"carousel_pause_on_hover\";s:1:\"1\";s:17:\"carousel_infinite\";s:1:\"1\";s:15:\"wpcp_navigation\";s:11:\"hide_mobile\";s:15:\"wpcp_nav_colors\";a:2:{s:6:\"color1\";s:4:\"#aaa\";s:6:\"color2\";s:7:\"#52b3d9\";}s:15:\"wpcp_pagination\";s:4:\"hide\";s:21:\"wpcp_pagination_color\";a:2:{s:6:\"color1\";s:7:\"#cccccc\";s:6:\"color2\";s:7:\"#52b3d9\";}s:18:\"wpcp_accessibility\";s:1:\"1\";s:12:\"slider_swipe\";s:1:\"1\";s:16:\"slider_draggable\";s:1:\"1\";s:25:\"wpcp_post_detail_position\";s:6:\"bottom\";s:17:\"wpcp_slide_border\";a:3:{s:3:\"all\";s:1:\"1\";s:5:\"style\";s:4:\"none\";s:5:\"color\";s:7:\"#dddddd\";}s:21:\"wpcp_slide_background\";s:7:\"#f9f9f9\";s:15:\"wpcp_post_title\";s:1:\"1\";s:22:\"wpcp_post_content_show\";s:1:\"1\";s:22:\"wpcp_post_content_type\";s:7:\"excerpt\";s:19:\"wpcp_post_date_show\";s:1:\"1\";s:21:\"wpcp_post_author_show\";s:1:\"1\";s:17:\"wpcp_product_name\";s:1:\"1\";s:18:\"wpcp_product_price\";s:1:\"1\";s:19:\"wpcp_product_rating\";s:1:\"1\";s:17:\"wpcp_product_cart\";s:1:\"1\";s:10:\"show_image\";s:1:\"1\";s:16:\"wpcp_image_sizes\";s:4:\"full\";s:25:\"wpcp_product_image_border\";a:3:{s:3:\"all\";s:1:\"1\";s:5:\"style\";s:5:\"solid\";s:5:\"color\";s:7:\"#dddddd\";}s:17:\"_image_title_attr\";s:0:\"\";s:23:\"section_title_font_load\";s:0:\"\";s:29:\"wpcp_section_title_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:28:\"wpcp_image_caption_font_load\";s:0:\"\";s:29:\"wpcp_image_caption_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:25:\"wpcp_image_desc_font_load\";s:0:\"\";s:26:\"wpcp_image_desc_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:20:\"wpcp_title_font_load\";s:0:\"\";s:21:\"wpcp_title_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:27:\"wpcp_post_content_font_load\";s:0:\"\";s:28:\"wpcp_post_content_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:24:\"wpcp_post_meta_font_load\";s:0:\"\";s:25:\"wpcp_post_meta_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:27:\"wpcp_product_name_font_load\";s:0:\"\";s:28:\"wpcp_product_name_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:28:\"wpcp_product_price_font_load\";s:0:\"\";s:29:\"wpcp_product_price_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}}'),
(139, 47, '_edit_lock', '1559663639:1'),
(140, 52, '_wp_attached_file', '2019/06/19-02-14-phoi-canh.jpg'),
(141, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1600;s:4:\"file\";s:30:\"2019/06/19-02-14-phoi-canh.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"19-02-14-phoi-canh-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"19-02-14-phoi-canh-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"19-02-14-phoi-canh-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"19-02-14-phoi-canh-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(142, 53, '_wp_attached_file', '2019/06/BIA-2.jpg'),
(143, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6945;s:6:\"height\";i:4911;s:4:\"file\";s:17:\"2019/06/BIA-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"BIA-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"BIA-2-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"BIA-2-768x543.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:543;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"BIA-2-1024x724.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(144, 54, '_wp_attached_file', '2019/06/tang-1.jpg'),
(145, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2500;s:6:\"height\";i:1667;s:4:\"file\";s:18:\"2019/06/tang-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"tang-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"tang-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"tang-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"tang-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(146, 55, '_wp_attached_file', '2019/06/tang-2.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(147, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2500;s:6:\"height\";i:1667;s:4:\"file\";s:18:\"2019/06/tang-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"tang-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"tang-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"tang-2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"tang-2-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(148, 56, '_wp_attached_file', '2019/06/tang-3.jpg'),
(149, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2500;s:6:\"height\";i:1668;s:4:\"file\";s:18:\"2019/06/tang-3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"tang-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"tang-3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"tang-3-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"tang-3-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(150, 51, '_edit_last', '1'),
(151, 51, 'sp_wpcp_upload_options', 'a:6:{s:18:\"wpcp_carousel_type\";s:14:\"image-carousel\";s:12:\"wpcp_gallery\";s:14:\"52,53,54,55,56\";s:23:\"wpcp_display_posts_from\";s:6:\"latest\";s:21:\"number_of_total_posts\";s:2:\"10\";s:25:\"wpcp_display_product_from\";s:6:\"latest\";s:19:\"wpcp_total_products\";s:2:\"10\";}'),
(152, 51, 'sp_wpcp_shortcode_options', 'a:51:{s:13:\"section_title\";s:0:\"\";s:27:\"section_title_margin_bottom\";a:1:{s:3:\"all\";s:2:\"30\";}s:22:\"wpcp_number_of_columns\";a:5:{s:10:\"lg_desktop\";s:1:\"1\";s:7:\"desktop\";s:1:\"1\";s:6:\"laptop\";s:1:\"1\";s:6:\"tablet\";s:1:\"1\";s:6:\"mobile\";s:1:\"1\";}s:19:\"wpcp_image_order_by\";s:10:\"menu_order\";s:18:\"wpcp_post_order_by\";s:10:\"menu_order\";s:15:\"wpcp_post_order\";s:3:\"ASC\";s:14:\"wpcp_preloader\";s:1:\"1\";s:23:\"wpcp_carousel_auto_play\";s:1:\"0\";s:24:\"carousel_auto_play_speed\";a:1:{s:3:\"all\";s:4:\"3000\";}s:30:\"standard_carousel_scroll_speed\";a:1:{s:3:\"all\";s:3:\"600\";}s:23:\"carousel_pause_on_hover\";s:1:\"1\";s:17:\"carousel_infinite\";s:1:\"1\";s:15:\"wpcp_navigation\";s:11:\"hide_mobile\";s:15:\"wpcp_nav_colors\";a:2:{s:6:\"color1\";s:4:\"#aaa\";s:6:\"color2\";s:7:\"#52b3d9\";}s:15:\"wpcp_pagination\";s:4:\"hide\";s:21:\"wpcp_pagination_color\";a:2:{s:6:\"color1\";s:7:\"#cccccc\";s:6:\"color2\";s:7:\"#52b3d9\";}s:18:\"wpcp_accessibility\";s:1:\"1\";s:12:\"slider_swipe\";s:1:\"1\";s:16:\"slider_draggable\";s:1:\"1\";s:25:\"wpcp_post_detail_position\";s:6:\"bottom\";s:17:\"wpcp_slide_border\";a:3:{s:3:\"all\";s:1:\"1\";s:5:\"style\";s:4:\"none\";s:5:\"color\";s:7:\"#dddddd\";}s:21:\"wpcp_slide_background\";s:7:\"#f9f9f9\";s:15:\"wpcp_post_title\";s:1:\"1\";s:22:\"wpcp_post_content_show\";s:1:\"1\";s:22:\"wpcp_post_content_type\";s:7:\"excerpt\";s:19:\"wpcp_post_date_show\";s:1:\"1\";s:21:\"wpcp_post_author_show\";s:1:\"1\";s:17:\"wpcp_product_name\";s:1:\"1\";s:18:\"wpcp_product_price\";s:1:\"1\";s:19:\"wpcp_product_rating\";s:1:\"1\";s:17:\"wpcp_product_cart\";s:1:\"1\";s:10:\"show_image\";s:1:\"1\";s:16:\"wpcp_image_sizes\";s:4:\"full\";s:25:\"wpcp_product_image_border\";a:3:{s:3:\"all\";s:1:\"1\";s:5:\"style\";s:5:\"solid\";s:5:\"color\";s:7:\"#dddddd\";}s:17:\"_image_title_attr\";s:0:\"\";s:23:\"section_title_font_load\";s:0:\"\";s:29:\"wpcp_section_title_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:28:\"wpcp_image_caption_font_load\";s:0:\"\";s:29:\"wpcp_image_caption_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:25:\"wpcp_image_desc_font_load\";s:0:\"\";s:26:\"wpcp_image_desc_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:20:\"wpcp_title_font_load\";s:0:\"\";s:21:\"wpcp_title_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:27:\"wpcp_post_content_font_load\";s:0:\"\";s:28:\"wpcp_post_content_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:24:\"wpcp_post_meta_font_load\";s:0:\"\";s:25:\"wpcp_post_meta_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:27:\"wpcp_product_name_font_load\";s:0:\"\";s:28:\"wpcp_product_name_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:28:\"wpcp_product_price_font_load\";s:0:\"\";s:29:\"wpcp_product_price_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}}'),
(153, 51, '_edit_lock', '1560480063:1'),
(154, 57, '_edit_last', '1'),
(157, 57, 'vdw_gallery_id', 'a:7:{i:0;s:2:\"31\";i:1;s:2:\"32\";i:2;s:2:\"35\";i:3;s:2:\"36\";i:4;s:2:\"34\";i:5;s:2:\"33\";i:6;s:2:\"38\";}'),
(158, 57, '_yoast_wpseo_content_score', '60'),
(159, 57, '_wp_post_template', 'single/single-vatlieu.php'),
(160, 57, '_yoast_wpseo_primary_category', '5'),
(161, 57, '_edit_lock', '1560496691:1'),
(166, 60, '_wp_attached_file', '2019/06/P.AN-1-.jpg'),
(167, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:2222;s:4:\"file\";s:19:\"2019/06/P.AN-1-.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"P.AN-1--150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"P.AN-1--270x300.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"P.AN-1--768x853.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:853;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"P.AN-1--922x1024.jpg\";s:5:\"width\";i:922;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(168, 59, '_edit_last', '1'),
(169, 59, 'sp_wpcp_upload_options', 'a:6:{s:18:\"wpcp_carousel_type\";s:14:\"image-carousel\";s:12:\"wpcp_gallery\";s:2:\"60\";s:23:\"wpcp_display_posts_from\";s:6:\"latest\";s:21:\"number_of_total_posts\";s:2:\"10\";s:25:\"wpcp_display_product_from\";s:6:\"latest\";s:19:\"wpcp_total_products\";s:2:\"10\";}'),
(170, 59, 'sp_wpcp_shortcode_options', 'a:51:{s:13:\"section_title\";s:0:\"\";s:27:\"section_title_margin_bottom\";a:1:{s:3:\"all\";s:2:\"30\";}s:22:\"wpcp_number_of_columns\";a:5:{s:10:\"lg_desktop\";s:1:\"1\";s:7:\"desktop\";s:1:\"1\";s:6:\"laptop\";s:1:\"1\";s:6:\"tablet\";s:1:\"1\";s:6:\"mobile\";s:1:\"1\";}s:19:\"wpcp_image_order_by\";s:10:\"menu_order\";s:18:\"wpcp_post_order_by\";s:10:\"menu_order\";s:15:\"wpcp_post_order\";s:3:\"ASC\";s:14:\"wpcp_preloader\";s:1:\"1\";s:23:\"wpcp_carousel_auto_play\";s:1:\"0\";s:24:\"carousel_auto_play_speed\";a:1:{s:3:\"all\";s:4:\"3000\";}s:30:\"standard_carousel_scroll_speed\";a:1:{s:3:\"all\";s:3:\"600\";}s:23:\"carousel_pause_on_hover\";s:1:\"1\";s:17:\"carousel_infinite\";s:1:\"1\";s:15:\"wpcp_navigation\";s:11:\"hide_mobile\";s:15:\"wpcp_nav_colors\";a:2:{s:6:\"color1\";s:4:\"#aaa\";s:6:\"color2\";s:7:\"#52b3d9\";}s:15:\"wpcp_pagination\";s:4:\"hide\";s:21:\"wpcp_pagination_color\";a:2:{s:6:\"color1\";s:7:\"#cccccc\";s:6:\"color2\";s:7:\"#52b3d9\";}s:18:\"wpcp_accessibility\";s:1:\"1\";s:12:\"slider_swipe\";s:1:\"1\";s:16:\"slider_draggable\";s:1:\"1\";s:25:\"wpcp_post_detail_position\";s:6:\"bottom\";s:17:\"wpcp_slide_border\";a:3:{s:3:\"all\";s:1:\"1\";s:5:\"style\";s:4:\"none\";s:5:\"color\";s:7:\"#dddddd\";}s:21:\"wpcp_slide_background\";s:7:\"#f9f9f9\";s:15:\"wpcp_post_title\";s:1:\"1\";s:22:\"wpcp_post_content_show\";s:1:\"1\";s:22:\"wpcp_post_content_type\";s:7:\"excerpt\";s:19:\"wpcp_post_date_show\";s:1:\"1\";s:21:\"wpcp_post_author_show\";s:1:\"1\";s:17:\"wpcp_product_name\";s:1:\"1\";s:18:\"wpcp_product_price\";s:1:\"1\";s:19:\"wpcp_product_rating\";s:1:\"1\";s:17:\"wpcp_product_cart\";s:1:\"1\";s:10:\"show_image\";s:1:\"1\";s:16:\"wpcp_image_sizes\";s:4:\"full\";s:25:\"wpcp_product_image_border\";a:3:{s:3:\"all\";s:1:\"1\";s:5:\"style\";s:5:\"solid\";s:5:\"color\";s:7:\"#dddddd\";}s:17:\"_image_title_attr\";s:0:\"\";s:23:\"section_title_font_load\";s:0:\"\";s:29:\"wpcp_section_title_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:28:\"wpcp_image_caption_font_load\";s:0:\"\";s:29:\"wpcp_image_caption_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:25:\"wpcp_image_desc_font_load\";s:0:\"\";s:26:\"wpcp_image_desc_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:20:\"wpcp_title_font_load\";s:0:\"\";s:21:\"wpcp_title_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:27:\"wpcp_post_content_font_load\";s:0:\"\";s:28:\"wpcp_post_content_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:24:\"wpcp_post_meta_font_load\";s:0:\"\";s:25:\"wpcp_post_meta_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:27:\"wpcp_product_name_font_load\";s:0:\"\";s:28:\"wpcp_product_name_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:28:\"wpcp_product_price_font_load\";s:0:\"\";s:29:\"wpcp_product_price_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}}'),
(171, 59, '_edit_lock', '1559663566:1'),
(172, 62, '_wp_attached_file', '2019/06/1-2.jpg'),
(173, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2500;s:6:\"height\";i:4000;s:4:\"file\";s:15:\"2019/06/1-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"1-2-188x300.jpg\";s:5:\"width\";i:188;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"1-2-768x1229.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1229;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"1-2-640x1024.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(174, 63, '_wp_attached_file', '2019/06/BIA-3.jpg'),
(175, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6945;s:6:\"height\";i:4911;s:4:\"file\";s:17:\"2019/06/BIA-3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"BIA-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"BIA-3-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"BIA-3-768x543.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:543;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"BIA-3-1024x724.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(176, 64, '_wp_attached_file', '2019/06/VIEW-2-1.jpg'),
(177, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2500;s:6:\"height\";i:4000;s:4:\"file\";s:20:\"2019/06/VIEW-2-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"VIEW-2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"VIEW-2-1-188x300.jpg\";s:5:\"width\";i:188;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"VIEW-2-1-768x1229.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1229;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"VIEW-2-1-640x1024.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(178, 61, '_edit_last', '1'),
(179, 61, 'sp_wpcp_upload_options', 'a:6:{s:18:\"wpcp_carousel_type\";s:14:\"image-carousel\";s:12:\"wpcp_gallery\";s:8:\"62,63,64\";s:23:\"wpcp_display_posts_from\";s:6:\"latest\";s:21:\"number_of_total_posts\";s:2:\"10\";s:25:\"wpcp_display_product_from\";s:6:\"latest\";s:19:\"wpcp_total_products\";s:2:\"10\";}'),
(180, 61, 'sp_wpcp_shortcode_options', 'a:51:{s:13:\"section_title\";s:0:\"\";s:27:\"section_title_margin_bottom\";a:1:{s:3:\"all\";s:2:\"30\";}s:22:\"wpcp_number_of_columns\";a:5:{s:10:\"lg_desktop\";s:1:\"1\";s:7:\"desktop\";s:1:\"1\";s:6:\"laptop\";s:1:\"1\";s:6:\"tablet\";s:1:\"1\";s:6:\"mobile\";s:1:\"1\";}s:19:\"wpcp_image_order_by\";s:10:\"menu_order\";s:18:\"wpcp_post_order_by\";s:10:\"menu_order\";s:15:\"wpcp_post_order\";s:3:\"ASC\";s:14:\"wpcp_preloader\";s:1:\"1\";s:23:\"wpcp_carousel_auto_play\";s:1:\"0\";s:24:\"carousel_auto_play_speed\";a:1:{s:3:\"all\";s:4:\"3000\";}s:30:\"standard_carousel_scroll_speed\";a:1:{s:3:\"all\";s:3:\"600\";}s:23:\"carousel_pause_on_hover\";s:1:\"1\";s:17:\"carousel_infinite\";s:1:\"1\";s:15:\"wpcp_navigation\";s:11:\"hide_mobile\";s:15:\"wpcp_nav_colors\";a:2:{s:6:\"color1\";s:4:\"#aaa\";s:6:\"color2\";s:7:\"#52b3d9\";}s:15:\"wpcp_pagination\";s:4:\"hide\";s:21:\"wpcp_pagination_color\";a:2:{s:6:\"color1\";s:7:\"#cccccc\";s:6:\"color2\";s:7:\"#52b3d9\";}s:18:\"wpcp_accessibility\";s:1:\"1\";s:12:\"slider_swipe\";s:1:\"1\";s:16:\"slider_draggable\";s:1:\"1\";s:25:\"wpcp_post_detail_position\";s:6:\"bottom\";s:17:\"wpcp_slide_border\";a:3:{s:3:\"all\";s:1:\"1\";s:5:\"style\";s:4:\"none\";s:5:\"color\";s:7:\"#dddddd\";}s:21:\"wpcp_slide_background\";s:7:\"#f9f9f9\";s:15:\"wpcp_post_title\";s:1:\"1\";s:22:\"wpcp_post_content_show\";s:1:\"1\";s:22:\"wpcp_post_content_type\";s:7:\"excerpt\";s:19:\"wpcp_post_date_show\";s:1:\"1\";s:21:\"wpcp_post_author_show\";s:1:\"1\";s:17:\"wpcp_product_name\";s:1:\"1\";s:18:\"wpcp_product_price\";s:1:\"1\";s:19:\"wpcp_product_rating\";s:1:\"1\";s:17:\"wpcp_product_cart\";s:1:\"1\";s:10:\"show_image\";s:1:\"1\";s:16:\"wpcp_image_sizes\";s:4:\"full\";s:25:\"wpcp_product_image_border\";a:3:{s:3:\"all\";s:1:\"1\";s:5:\"style\";s:5:\"solid\";s:5:\"color\";s:7:\"#dddddd\";}s:17:\"_image_title_attr\";s:0:\"\";s:23:\"section_title_font_load\";s:0:\"\";s:29:\"wpcp_section_title_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:28:\"wpcp_image_caption_font_load\";s:0:\"\";s:29:\"wpcp_image_caption_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:25:\"wpcp_image_desc_font_load\";s:0:\"\";s:26:\"wpcp_image_desc_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:20:\"wpcp_title_font_load\";s:0:\"\";s:21:\"wpcp_title_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:27:\"wpcp_post_content_font_load\";s:0:\"\";s:28:\"wpcp_post_content_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:24:\"wpcp_post_meta_font_load\";s:0:\"\";s:25:\"wpcp_post_meta_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:27:\"wpcp_product_name_font_load\";s:0:\"\";s:28:\"wpcp_product_name_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:28:\"wpcp_product_price_font_load\";s:0:\"\";s:29:\"wpcp_product_price_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}}'),
(181, 61, '_edit_lock', '1559663548:1'),
(182, 66, '_wp_attached_file', '2019/06/tang-2-1.jpg'),
(183, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6000;s:6:\"height\";i:4002;s:4:\"file\";s:20:\"2019/06/tang-2-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"tang-2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"tang-2-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"tang-2-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"tang-2-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(184, 67, '_wp_attached_file', '2019/06/view-1-1.jpg'),
(185, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:3000;s:4:\"file\";s:20:\"2019/06/view-1-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"view-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"view-1-1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"view-1-1-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"view-1-1-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(186, 68, '_wp_attached_file', '2019/06/view-2-2.jpg'),
(187, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1818;s:4:\"file\";s:20:\"2019/06/view-2-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"view-2-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"view-2-2-300x273.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:273;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"view-2-2-768x698.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:698;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"view-2-2-1024x931.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:931;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(188, 65, '_edit_last', '1'),
(189, 65, 'sp_wpcp_upload_options', 'a:6:{s:18:\"wpcp_carousel_type\";s:14:\"image-carousel\";s:12:\"wpcp_gallery\";s:8:\"66,67,68\";s:23:\"wpcp_display_posts_from\";s:6:\"latest\";s:21:\"number_of_total_posts\";s:2:\"10\";s:25:\"wpcp_display_product_from\";s:6:\"latest\";s:19:\"wpcp_total_products\";s:2:\"10\";}'),
(190, 65, 'sp_wpcp_shortcode_options', 'a:51:{s:13:\"section_title\";s:0:\"\";s:27:\"section_title_margin_bottom\";a:1:{s:3:\"all\";s:2:\"30\";}s:22:\"wpcp_number_of_columns\";a:5:{s:10:\"lg_desktop\";s:1:\"1\";s:7:\"desktop\";s:1:\"1\";s:6:\"laptop\";s:1:\"1\";s:6:\"tablet\";s:1:\"1\";s:6:\"mobile\";s:1:\"1\";}s:19:\"wpcp_image_order_by\";s:10:\"menu_order\";s:18:\"wpcp_post_order_by\";s:10:\"menu_order\";s:15:\"wpcp_post_order\";s:3:\"ASC\";s:14:\"wpcp_preloader\";s:1:\"1\";s:23:\"wpcp_carousel_auto_play\";s:1:\"0\";s:24:\"carousel_auto_play_speed\";a:1:{s:3:\"all\";s:4:\"3000\";}s:30:\"standard_carousel_scroll_speed\";a:1:{s:3:\"all\";s:3:\"600\";}s:23:\"carousel_pause_on_hover\";s:1:\"1\";s:17:\"carousel_infinite\";s:1:\"1\";s:15:\"wpcp_navigation\";s:11:\"hide_mobile\";s:15:\"wpcp_nav_colors\";a:2:{s:6:\"color1\";s:4:\"#aaa\";s:6:\"color2\";s:7:\"#52b3d9\";}s:15:\"wpcp_pagination\";s:4:\"hide\";s:21:\"wpcp_pagination_color\";a:2:{s:6:\"color1\";s:7:\"#cccccc\";s:6:\"color2\";s:7:\"#52b3d9\";}s:18:\"wpcp_accessibility\";s:1:\"1\";s:12:\"slider_swipe\";s:1:\"1\";s:16:\"slider_draggable\";s:1:\"1\";s:25:\"wpcp_post_detail_position\";s:6:\"bottom\";s:17:\"wpcp_slide_border\";a:3:{s:3:\"all\";s:1:\"0\";s:5:\"style\";s:4:\"none\";s:5:\"color\";s:7:\"#dddddd\";}s:21:\"wpcp_slide_background\";s:7:\"#f9f9f9\";s:15:\"wpcp_post_title\";s:1:\"1\";s:22:\"wpcp_post_content_show\";s:1:\"1\";s:22:\"wpcp_post_content_type\";s:7:\"excerpt\";s:19:\"wpcp_post_date_show\";s:1:\"1\";s:21:\"wpcp_post_author_show\";s:1:\"1\";s:17:\"wpcp_product_name\";s:1:\"1\";s:18:\"wpcp_product_price\";s:1:\"1\";s:19:\"wpcp_product_rating\";s:1:\"1\";s:17:\"wpcp_product_cart\";s:1:\"1\";s:10:\"show_image\";s:1:\"1\";s:16:\"wpcp_image_sizes\";s:4:\"full\";s:25:\"wpcp_product_image_border\";a:3:{s:3:\"all\";s:1:\"1\";s:5:\"style\";s:5:\"solid\";s:5:\"color\";s:7:\"#dddddd\";}s:17:\"_image_title_attr\";s:0:\"\";s:23:\"section_title_font_load\";s:0:\"\";s:29:\"wpcp_section_title_typography\";a:2:{s:4:\"type\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:28:\"wpcp_image_caption_font_load\";s:0:\"\";s:29:\"wpcp_image_caption_typography\";a:2:{s:4:\"type\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:25:\"wpcp_image_desc_font_load\";s:0:\"\";s:26:\"wpcp_image_desc_typography\";a:2:{s:4:\"type\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:20:\"wpcp_title_font_load\";s:0:\"\";s:21:\"wpcp_title_typography\";a:2:{s:4:\"type\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:27:\"wpcp_post_content_font_load\";s:0:\"\";s:28:\"wpcp_post_content_typography\";a:2:{s:4:\"type\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:24:\"wpcp_post_meta_font_load\";s:0:\"\";s:25:\"wpcp_post_meta_typography\";a:2:{s:4:\"type\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:27:\"wpcp_product_name_font_load\";s:0:\"\";s:28:\"wpcp_product_name_typography\";a:2:{s:4:\"type\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:28:\"wpcp_product_price_font_load\";s:0:\"\";s:29:\"wpcp_product_price_typography\";a:2:{s:4:\"type\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}}'),
(191, 65, '_edit_lock', '1559663531:1'),
(194, 57, '_thumbnail_id', '35'),
(197, 70, '_edit_last', '1'),
(198, 70, '_thumbnail_id', '42'),
(201, 70, '_yoast_wpseo_content_score', '60'),
(202, 70, '_wp_post_template', 'single/single-vatlieu.php'),
(203, 70, '_yoast_wpseo_primary_category', '5'),
(204, 70, '_edit_lock', '1560751769:1'),
(205, 72, '_edit_last', '1'),
(208, 72, '_yoast_wpseo_content_score', '60'),
(210, 72, '_yoast_wpseo_primary_category', '5'),
(211, 72, '_edit_lock', '1560495515:1'),
(212, 72, '_thumbnail_id', '33'),
(217, 75, '_edit_last', '1'),
(218, 75, '_thumbnail_id', '29'),
(221, 75, '_yoast_wpseo_content_score', '60'),
(222, 75, '_wp_post_template', 'single/single-vatlieu.php'),
(223, 75, '_yoast_wpseo_primary_category', '13'),
(224, 75, '_edit_lock', '1559870925:1'),
(225, 77, '_edit_last', '1'),
(226, 77, '_thumbnail_id', '67'),
(229, 77, '_yoast_wpseo_content_score', '60'),
(230, 77, '_wp_post_template', 'single/single-vatlieu.php'),
(231, 77, '_yoast_wpseo_primary_category', '13'),
(232, 77, '_edit_lock', '1559870846:1'),
(235, 80, '_wp_attached_file', '2019/06/P.AN-1-1-1.jpg'),
(236, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:2222;s:4:\"file\";s:22:\"2019/06/P.AN-1-1-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"P.AN-1-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"P.AN-1-1-1-270x300.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"P.AN-1-1-1-768x853.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:853;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"P.AN-1-1-1-922x1024.jpg\";s:5:\"width\";i:922;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(237, 79, '_edit_last', '1'),
(238, 79, '_thumbnail_id', '50'),
(241, 79, '_yoast_wpseo_content_score', '60'),
(242, 79, '_wp_post_template', 'single/single-vatlieu.php'),
(243, 79, '_yoast_wpseo_primary_category', '13'),
(244, 79, '_edit_lock', '1560753964:1'),
(245, 82, '_edit_last', '1'),
(249, 82, '_yoast_wpseo_content_score', '60'),
(250, 82, '_wp_post_template', 'single/single-vatlieu.php'),
(251, 82, '_yoast_wpseo_primary_category', '13'),
(252, 82, '_edit_lock', '1559870485:1'),
(253, 84, '_edit_last', '1'),
(254, 84, '_thumbnail_id', '36'),
(257, 84, '_yoast_wpseo_content_score', '60'),
(258, 84, '_wp_post_template', 'single/single-vatlieu.php'),
(259, 84, '_yoast_wpseo_primary_category', '13'),
(260, 84, '_edit_lock', '1560751725:1'),
(261, 86, '_edit_last', '1'),
(262, 86, '_thumbnail_id', '28'),
(265, 86, '_yoast_wpseo_content_score', '60'),
(266, 86, '_wp_post_template', 'single/singgle-duan.php'),
(267, 86, '_yoast_wpseo_primary_category', '13'),
(268, 86, '_edit_lock', '1560850429:1'),
(269, 89, '_edit_last', '1'),
(270, 89, '_edit_lock', '1560937881:1'),
(271, 91, '_edit_last', '1'),
(274, 91, 'vdw_gallery_id', 'a:3:{i:0;s:2:\"54\";i:1;s:2:\"55\";i:2;s:2:\"56\";}'),
(275, 91, '_yoast_wpseo_content_score', '60'),
(276, 91, '_wp_post_template', 'single/single-vatlieu.php'),
(277, 91, '_yoast_wpseo_primary_category', '4'),
(278, 91, '_edit_lock', '1560499274:1'),
(279, 91, '_thumbnail_id', '31'),
(311, 106, '_wp_attached_file', '2019/06/tmp_1557192248.jpg'),
(312, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:667;s:4:\"file\";s:26:\"2019/06/tmp_1557192248.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"tmp_1557192248-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"tmp_1557192248-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"tmp_1557192248-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"tmp_1557192248-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(313, 107, '_wp_attached_file', '2019/06/tmp_1557192256.jpg'),
(314, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:667;s:4:\"file\";s:26:\"2019/06/tmp_1557192256.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"tmp_1557192256-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"tmp_1557192256-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"tmp_1557192256-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"tmp_1557192256-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(315, 108, '_wp_attached_file', '2019/06/tmp_1557192267.jpg'),
(316, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:667;s:4:\"file\";s:26:\"2019/06/tmp_1557192267.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"tmp_1557192267-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"tmp_1557192267-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"tmp_1557192267-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"tmp_1557192267-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(317, 109, '_wp_attached_file', '2019/06/tmp_1557192274.jpg'),
(318, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:667;s:4:\"file\";s:26:\"2019/06/tmp_1557192274.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"tmp_1557192274-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"tmp_1557192274-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"tmp_1557192274-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"tmp_1557192274-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(319, 110, '_wp_attached_file', '2019/06/tmp_1557192281.jpg'),
(320, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:667;s:4:\"file\";s:26:\"2019/06/tmp_1557192281.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"tmp_1557192281-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"tmp_1557192281-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"tmp_1557192281-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"tmp_1557192281-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(321, 111, '_wp_attached_file', '2019/06/tmp_1557192288.jpg'),
(322, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:667;s:4:\"file\";s:26:\"2019/06/tmp_1557192288.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"tmp_1557192288-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"tmp_1557192288-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"tmp_1557192288-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"tmp_1557192288-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(323, 112, '_wp_attached_file', '2019/06/tmp_1557192295.jpg'),
(324, 112, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:667;s:4:\"file\";s:26:\"2019/06/tmp_1557192295.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"tmp_1557192295-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"tmp_1557192295-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"tmp_1557192295-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"tmp_1557192295-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(325, 105, '_edit_last', '1'),
(326, 105, 'sp_wpcp_upload_options', 'a:6:{s:18:\"wpcp_carousel_type\";s:14:\"image-carousel\";s:12:\"wpcp_gallery\";s:27:\"106,107,108,109,110,111,112\";s:23:\"wpcp_display_posts_from\";s:6:\"latest\";s:21:\"number_of_total_posts\";s:2:\"10\";s:25:\"wpcp_display_product_from\";s:6:\"latest\";s:19:\"wpcp_total_products\";s:2:\"10\";}'),
(327, 105, 'sp_wpcp_shortcode_options', 'a:51:{s:13:\"section_title\";s:0:\"\";s:27:\"section_title_margin_bottom\";a:1:{s:3:\"all\";s:2:\"30\";}s:22:\"wpcp_number_of_columns\";a:5:{s:10:\"lg_desktop\";s:1:\"1\";s:7:\"desktop\";s:1:\"1\";s:6:\"laptop\";s:1:\"1\";s:6:\"tablet\";s:1:\"1\";s:6:\"mobile\";s:1:\"1\";}s:19:\"wpcp_image_order_by\";s:10:\"menu_order\";s:18:\"wpcp_post_order_by\";s:10:\"menu_order\";s:15:\"wpcp_post_order\";s:3:\"ASC\";s:14:\"wpcp_preloader\";s:1:\"1\";s:23:\"wpcp_carousel_auto_play\";s:1:\"0\";s:24:\"carousel_auto_play_speed\";a:1:{s:3:\"all\";s:4:\"3000\";}s:30:\"standard_carousel_scroll_speed\";a:1:{s:3:\"all\";s:3:\"600\";}s:23:\"carousel_pause_on_hover\";s:1:\"1\";s:17:\"carousel_infinite\";s:1:\"1\";s:15:\"wpcp_navigation\";s:11:\"hide_mobile\";s:15:\"wpcp_nav_colors\";a:2:{s:6:\"color1\";s:4:\"#aaa\";s:6:\"color2\";s:7:\"#52b3d9\";}s:15:\"wpcp_pagination\";s:4:\"hide\";s:21:\"wpcp_pagination_color\";a:2:{s:6:\"color1\";s:7:\"#cccccc\";s:6:\"color2\";s:7:\"#52b3d9\";}s:18:\"wpcp_accessibility\";s:1:\"1\";s:12:\"slider_swipe\";s:1:\"1\";s:16:\"slider_draggable\";s:1:\"1\";s:25:\"wpcp_post_detail_position\";s:6:\"bottom\";s:17:\"wpcp_slide_border\";a:3:{s:3:\"all\";s:1:\"0\";s:5:\"style\";s:4:\"none\";s:5:\"color\";s:7:\"#dddddd\";}s:21:\"wpcp_slide_background\";s:7:\"#f9f9f9\";s:15:\"wpcp_post_title\";s:1:\"1\";s:22:\"wpcp_post_content_show\";s:1:\"1\";s:22:\"wpcp_post_content_type\";s:7:\"excerpt\";s:19:\"wpcp_post_date_show\";s:1:\"1\";s:21:\"wpcp_post_author_show\";s:1:\"1\";s:17:\"wpcp_product_name\";s:1:\"1\";s:18:\"wpcp_product_price\";s:1:\"1\";s:19:\"wpcp_product_rating\";s:1:\"1\";s:17:\"wpcp_product_cart\";s:1:\"1\";s:10:\"show_image\";s:1:\"1\";s:16:\"wpcp_image_sizes\";s:4:\"full\";s:25:\"wpcp_product_image_border\";a:3:{s:3:\"all\";s:1:\"1\";s:5:\"style\";s:5:\"solid\";s:5:\"color\";s:7:\"#dddddd\";}s:17:\"_image_title_attr\";s:0:\"\";s:23:\"section_title_font_load\";s:0:\"\";s:29:\"wpcp_section_title_typography\";a:2:{s:4:\"type\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:28:\"wpcp_image_caption_font_load\";s:0:\"\";s:29:\"wpcp_image_caption_typography\";a:2:{s:4:\"type\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:25:\"wpcp_image_desc_font_load\";s:0:\"\";s:26:\"wpcp_image_desc_typography\";a:2:{s:4:\"type\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:20:\"wpcp_title_font_load\";s:0:\"\";s:21:\"wpcp_title_typography\";a:2:{s:4:\"type\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:27:\"wpcp_post_content_font_load\";s:0:\"\";s:28:\"wpcp_post_content_typography\";a:2:{s:4:\"type\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:24:\"wpcp_post_meta_font_load\";s:0:\"\";s:25:\"wpcp_post_meta_typography\";a:2:{s:4:\"type\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:27:\"wpcp_product_name_font_load\";s:0:\"\";s:28:\"wpcp_product_name_typography\";a:2:{s:4:\"type\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:28:\"wpcp_product_price_font_load\";s:0:\"\";s:29:\"wpcp_product_price_typography\";a:2:{s:4:\"type\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}}'),
(328, 105, '_edit_lock', '1559720462:1'),
(329, 114, '_edit_last', '1'),
(332, 114, '_yoast_wpseo_content_score', '60'),
(333, 114, '_wp_post_template', 'single/singgle-duan.php'),
(334, 114, '_yoast_wpseo_primary_category', '14'),
(335, 114, '_edit_lock', '1559720657:1'),
(336, 114, '_thumbnail_id', '107'),
(339, 117, '_wp_attached_file', '2019/06/tmp_1557193738.jpg'),
(340, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:667;s:4:\"file\";s:26:\"2019/06/tmp_1557193738.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"tmp_1557193738-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"tmp_1557193738-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"tmp_1557193738-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"tmp_1557193738-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(341, 118, '_wp_attached_file', '2019/06/tmp_1557193750.jpg'),
(342, 118, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2835;s:6:\"height\";i:1576;s:4:\"file\";s:26:\"2019/06/tmp_1557193750.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"tmp_1557193750-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"tmp_1557193750-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"tmp_1557193750-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"tmp_1557193750-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(343, 119, '_wp_attached_file', '2019/06/tmp_1557193757.jpg'),
(344, 119, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2835;s:6:\"height\";i:1576;s:4:\"file\";s:26:\"2019/06/tmp_1557193757.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"tmp_1557193757-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"tmp_1557193757-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"tmp_1557193757-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"tmp_1557193757-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(345, 120, '_wp_attached_file', '2019/06/tmp_1557193766.jpg'),
(346, 120, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2835;s:6:\"height\";i:1576;s:4:\"file\";s:26:\"2019/06/tmp_1557193766.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"tmp_1557193766-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"tmp_1557193766-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"tmp_1557193766-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"tmp_1557193766-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(347, 121, '_wp_attached_file', '2019/06/tmp_1557193784.jpg'),
(348, 121, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2835;s:6:\"height\";i:1576;s:4:\"file\";s:26:\"2019/06/tmp_1557193784.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"tmp_1557193784-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"tmp_1557193784-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"tmp_1557193784-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"tmp_1557193784-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(349, 122, '_wp_attached_file', '2019/06/tmp_1557193794.jpg'),
(350, 122, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2835;s:6:\"height\";i:1576;s:4:\"file\";s:26:\"2019/06/tmp_1557193794.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"tmp_1557193794-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"tmp_1557193794-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"tmp_1557193794-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"tmp_1557193794-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(351, 116, '_edit_last', '1'),
(352, 116, 'sp_wpcp_upload_options', 'a:6:{s:18:\"wpcp_carousel_type\";s:14:\"image-carousel\";s:12:\"wpcp_gallery\";s:23:\"117,118,119,120,121,122\";s:23:\"wpcp_display_posts_from\";s:6:\"latest\";s:21:\"number_of_total_posts\";s:2:\"10\";s:25:\"wpcp_display_product_from\";s:6:\"latest\";s:19:\"wpcp_total_products\";s:2:\"10\";}');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(353, 116, 'sp_wpcp_shortcode_options', 'a:51:{s:13:\"section_title\";s:0:\"\";s:27:\"section_title_margin_bottom\";a:1:{s:3:\"all\";s:2:\"30\";}s:22:\"wpcp_number_of_columns\";a:5:{s:10:\"lg_desktop\";s:1:\"1\";s:7:\"desktop\";s:1:\"1\";s:6:\"laptop\";s:1:\"1\";s:6:\"tablet\";s:1:\"1\";s:6:\"mobile\";s:1:\"1\";}s:19:\"wpcp_image_order_by\";s:10:\"menu_order\";s:18:\"wpcp_post_order_by\";s:10:\"menu_order\";s:15:\"wpcp_post_order\";s:3:\"ASC\";s:14:\"wpcp_preloader\";s:1:\"1\";s:23:\"wpcp_carousel_auto_play\";s:1:\"0\";s:24:\"carousel_auto_play_speed\";a:1:{s:3:\"all\";s:4:\"3000\";}s:30:\"standard_carousel_scroll_speed\";a:1:{s:3:\"all\";s:3:\"600\";}s:23:\"carousel_pause_on_hover\";s:1:\"1\";s:17:\"carousel_infinite\";s:1:\"1\";s:15:\"wpcp_navigation\";s:11:\"hide_mobile\";s:15:\"wpcp_nav_colors\";a:2:{s:6:\"color1\";s:4:\"#aaa\";s:6:\"color2\";s:7:\"#52b3d9\";}s:15:\"wpcp_pagination\";s:4:\"hide\";s:21:\"wpcp_pagination_color\";a:2:{s:6:\"color1\";s:7:\"#cccccc\";s:6:\"color2\";s:7:\"#52b3d9\";}s:18:\"wpcp_accessibility\";s:1:\"1\";s:12:\"slider_swipe\";s:1:\"1\";s:16:\"slider_draggable\";s:1:\"1\";s:25:\"wpcp_post_detail_position\";s:6:\"bottom\";s:17:\"wpcp_slide_border\";a:3:{s:3:\"all\";s:1:\"1\";s:5:\"style\";s:5:\"solid\";s:5:\"color\";s:7:\"#dddddd\";}s:21:\"wpcp_slide_background\";s:7:\"#f9f9f9\";s:15:\"wpcp_post_title\";s:1:\"1\";s:22:\"wpcp_post_content_show\";s:1:\"1\";s:22:\"wpcp_post_content_type\";s:7:\"excerpt\";s:19:\"wpcp_post_date_show\";s:1:\"1\";s:21:\"wpcp_post_author_show\";s:1:\"1\";s:17:\"wpcp_product_name\";s:1:\"1\";s:18:\"wpcp_product_price\";s:1:\"1\";s:19:\"wpcp_product_rating\";s:1:\"1\";s:17:\"wpcp_product_cart\";s:1:\"1\";s:10:\"show_image\";s:1:\"1\";s:16:\"wpcp_image_sizes\";s:4:\"full\";s:25:\"wpcp_product_image_border\";a:3:{s:3:\"all\";s:1:\"1\";s:5:\"style\";s:5:\"solid\";s:5:\"color\";s:7:\"#dddddd\";}s:17:\"_image_title_attr\";s:0:\"\";s:23:\"section_title_font_load\";s:0:\"\";s:29:\"wpcp_section_title_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:28:\"wpcp_image_caption_font_load\";s:0:\"\";s:29:\"wpcp_image_caption_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:25:\"wpcp_image_desc_font_load\";s:0:\"\";s:26:\"wpcp_image_desc_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:20:\"wpcp_title_font_load\";s:0:\"\";s:21:\"wpcp_title_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:27:\"wpcp_post_content_font_load\";s:0:\"\";s:28:\"wpcp_post_content_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:24:\"wpcp_post_meta_font_load\";s:0:\"\";s:25:\"wpcp_post_meta_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:27:\"wpcp_product_name_font_load\";s:0:\"\";s:28:\"wpcp_product_name_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:28:\"wpcp_product_price_font_load\";s:0:\"\";s:29:\"wpcp_product_price_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}}'),
(354, 116, '_edit_lock', '1559720792:1'),
(355, 123, '_edit_last', '1'),
(356, 123, '_thumbnail_id', '117'),
(359, 123, '_yoast_wpseo_content_score', '60'),
(360, 123, '_wp_post_template', 'single/singgle-duan.php'),
(361, 123, '_yoast_wpseo_primary_category', '14'),
(362, 123, '_edit_lock', '1559720920:1'),
(363, 126, '_wp_attached_file', '2019/06/tmp_1557194030.jpg'),
(364, 126, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2835;s:6:\"height\";i:1576;s:4:\"file\";s:26:\"2019/06/tmp_1557194030.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"tmp_1557194030-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"tmp_1557194030-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"tmp_1557194030-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"tmp_1557194030-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(365, 127, '_wp_attached_file', '2019/06/tmp_1557194038.jpg'),
(366, 127, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2835;s:6:\"height\";i:1576;s:4:\"file\";s:26:\"2019/06/tmp_1557194038.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"tmp_1557194038-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"tmp_1557194038-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"tmp_1557194038-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"tmp_1557194038-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(367, 128, '_wp_attached_file', '2019/06/tmp_1557194047.jpg'),
(368, 128, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2835;s:6:\"height\";i:1576;s:4:\"file\";s:26:\"2019/06/tmp_1557194047.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"tmp_1557194047-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"tmp_1557194047-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"tmp_1557194047-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"tmp_1557194047-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(369, 125, '_edit_last', '1'),
(370, 125, 'sp_wpcp_upload_options', 'a:6:{s:18:\"wpcp_carousel_type\";s:14:\"image-carousel\";s:12:\"wpcp_gallery\";s:11:\"126,127,128\";s:23:\"wpcp_display_posts_from\";s:6:\"latest\";s:21:\"number_of_total_posts\";s:2:\"10\";s:25:\"wpcp_display_product_from\";s:6:\"latest\";s:19:\"wpcp_total_products\";s:2:\"10\";}'),
(371, 125, 'sp_wpcp_shortcode_options', 'a:51:{s:13:\"section_title\";s:0:\"\";s:27:\"section_title_margin_bottom\";a:1:{s:3:\"all\";s:2:\"30\";}s:22:\"wpcp_number_of_columns\";a:5:{s:10:\"lg_desktop\";s:1:\"1\";s:7:\"desktop\";s:1:\"1\";s:6:\"laptop\";s:1:\"1\";s:6:\"tablet\";s:1:\"1\";s:6:\"mobile\";s:1:\"1\";}s:19:\"wpcp_image_order_by\";s:10:\"menu_order\";s:18:\"wpcp_post_order_by\";s:10:\"menu_order\";s:15:\"wpcp_post_order\";s:3:\"ASC\";s:14:\"wpcp_preloader\";s:1:\"1\";s:23:\"wpcp_carousel_auto_play\";s:1:\"0\";s:24:\"carousel_auto_play_speed\";a:1:{s:3:\"all\";s:4:\"3000\";}s:30:\"standard_carousel_scroll_speed\";a:1:{s:3:\"all\";s:3:\"600\";}s:23:\"carousel_pause_on_hover\";s:1:\"1\";s:17:\"carousel_infinite\";s:1:\"1\";s:15:\"wpcp_navigation\";s:11:\"hide_mobile\";s:15:\"wpcp_nav_colors\";a:2:{s:6:\"color1\";s:4:\"#aaa\";s:6:\"color2\";s:7:\"#52b3d9\";}s:15:\"wpcp_pagination\";s:4:\"hide\";s:21:\"wpcp_pagination_color\";a:2:{s:6:\"color1\";s:7:\"#cccccc\";s:6:\"color2\";s:7:\"#52b3d9\";}s:18:\"wpcp_accessibility\";s:1:\"1\";s:12:\"slider_swipe\";s:1:\"1\";s:16:\"slider_draggable\";s:1:\"1\";s:25:\"wpcp_post_detail_position\";s:6:\"bottom\";s:17:\"wpcp_slide_border\";a:3:{s:3:\"all\";s:1:\"1\";s:5:\"style\";s:5:\"solid\";s:5:\"color\";s:7:\"#dddddd\";}s:21:\"wpcp_slide_background\";s:7:\"#f9f9f9\";s:15:\"wpcp_post_title\";s:1:\"1\";s:22:\"wpcp_post_content_show\";s:1:\"1\";s:22:\"wpcp_post_content_type\";s:7:\"excerpt\";s:19:\"wpcp_post_date_show\";s:1:\"1\";s:21:\"wpcp_post_author_show\";s:1:\"1\";s:17:\"wpcp_product_name\";s:1:\"1\";s:18:\"wpcp_product_price\";s:1:\"1\";s:19:\"wpcp_product_rating\";s:1:\"1\";s:17:\"wpcp_product_cart\";s:1:\"1\";s:10:\"show_image\";s:1:\"1\";s:16:\"wpcp_image_sizes\";s:4:\"full\";s:25:\"wpcp_product_image_border\";a:3:{s:3:\"all\";s:1:\"1\";s:5:\"style\";s:5:\"solid\";s:5:\"color\";s:7:\"#dddddd\";}s:17:\"_image_title_attr\";s:0:\"\";s:23:\"section_title_font_load\";s:0:\"\";s:29:\"wpcp_section_title_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:28:\"wpcp_image_caption_font_load\";s:0:\"\";s:29:\"wpcp_image_caption_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:25:\"wpcp_image_desc_font_load\";s:0:\"\";s:26:\"wpcp_image_desc_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:20:\"wpcp_title_font_load\";s:0:\"\";s:21:\"wpcp_title_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:27:\"wpcp_post_content_font_load\";s:0:\"\";s:28:\"wpcp_post_content_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:24:\"wpcp_post_meta_font_load\";s:0:\"\";s:25:\"wpcp_post_meta_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:27:\"wpcp_product_name_font_load\";s:0:\"\";s:28:\"wpcp_product_name_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:28:\"wpcp_product_price_font_load\";s:0:\"\";s:29:\"wpcp_product_price_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}}'),
(372, 125, '_edit_lock', '1559721029:1'),
(373, 129, '_edit_last', '1'),
(376, 129, '_yoast_wpseo_content_score', '60'),
(377, 129, '_wp_post_template', 'single/singgle-duan.php'),
(378, 129, '_yoast_wpseo_primary_category', '14'),
(379, 129, '_edit_lock', '1559721344:1'),
(380, 129, '_thumbnail_id', '128'),
(391, 82, '_thumbnail_id', '52'),
(406, 135, '_edit_last', '1'),
(407, 135, '_edit_lock', '1559728644:1'),
(410, 72, 'chu_dau_tu', 'Hoàng Kế Viên'),
(411, 72, '_chu_dau_tu', 'field_5cf78facebc94'),
(412, 72, 'dia_chi', 'Hồ Chí Minh'),
(413, 72, '_dia_chi', 'field_5cf79058ebc95'),
(414, 72, 'dien_tich', '500m2'),
(415, 72, '_dien_tich', 'field_5cf79077ebc96'),
(416, 72, 'huong', 'Đông Nam'),
(417, 72, '_huong', 'field_5cf790bcebc97'),
(418, 140, 'chu_dau_tu', 'Hoàng Kế Viên'),
(419, 140, '_chu_dau_tu', 'field_5cf78facebc94'),
(420, 140, 'dia_chi', 'Hồ Chí Minh'),
(421, 140, '_dia_chi', 'field_5cf79058ebc95'),
(422, 140, 'dien_tich', '500m2'),
(423, 140, '_dien_tich', 'field_5cf79077ebc96'),
(424, 140, 'huong', 'Đông Nam'),
(425, 140, '_huong', 'field_5cf790bcebc97'),
(428, 79, 'chu_dau_tu', ''),
(429, 79, '_chu_dau_tu', 'field_5cf78facebc94'),
(430, 79, 'dia_chi', ''),
(431, 79, '_dia_chi', 'field_5cf79058ebc95'),
(432, 79, 'dien_tich', ''),
(433, 79, '_dien_tich', 'field_5cf79077ebc96'),
(434, 79, 'huong', ''),
(435, 79, '_huong', 'field_5cf790bcebc97'),
(436, 104, 'chu_dau_tu', ''),
(437, 104, '_chu_dau_tu', 'field_5cf78facebc94'),
(438, 104, 'dia_chi', ''),
(439, 104, '_dia_chi', 'field_5cf79058ebc95'),
(440, 104, 'dien_tich', ''),
(441, 104, '_dien_tich', 'field_5cf79077ebc96'),
(442, 104, 'huong', ''),
(443, 104, '_huong', 'field_5cf790bcebc97'),
(444, 141, '_wp_attached_file', '2019/06/cropped-cf89cb017be49ebac7f5-1.jpg'),
(445, 141, '_wp_attachment_context', 'custom-logo'),
(446, 141, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:309;s:6:\"height\";i:295;s:4:\"file\";s:42:\"2019/06/cropped-cf89cb017be49ebac7f5-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"cropped-cf89cb017be49ebac7f5-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"cropped-cf89cb017be49ebac7f5-1-300x286.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:286;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(447, 142, '_wp_trash_meta_status', 'publish'),
(448, 142, '_wp_trash_meta_time', '1559789738'),
(449, 129, '_wp_trash_meta_status', 'publish'),
(450, 129, '_wp_trash_meta_time', '1559791579'),
(451, 129, '_wp_desired_post_slug', 'huynh-thi-kim-trang'),
(452, 123, '_wp_trash_meta_status', 'publish'),
(453, 123, '_wp_trash_meta_time', '1559791583'),
(454, 123, '_wp_desired_post_slug', 'pham-thi-ngoc-ha'),
(455, 114, '_wp_trash_meta_status', 'publish'),
(456, 114, '_wp_trash_meta_time', '1559791588'),
(457, 114, '_wp_desired_post_slug', 'trinh-thai-hoang'),
(460, 70, 'chu_dau_tu', ''),
(461, 70, '_chu_dau_tu', 'field_5cf78facebc94'),
(462, 70, 'dia_chi', ''),
(463, 70, '_dia_chi', 'field_5cf79058ebc95'),
(464, 70, 'dien_tich', ''),
(465, 70, '_dien_tich', 'field_5cf79077ebc96'),
(466, 70, 'huong', ''),
(467, 70, '_huong', 'field_5cf790bcebc97'),
(468, 71, 'chu_dau_tu', ''),
(469, 71, '_chu_dau_tu', 'field_5cf78facebc94'),
(470, 71, 'dia_chi', ''),
(471, 71, '_dia_chi', 'field_5cf79058ebc95'),
(472, 71, 'dien_tich', ''),
(473, 71, '_dien_tich', 'field_5cf79077ebc96'),
(474, 71, 'huong', ''),
(475, 71, '_huong', 'field_5cf790bcebc97'),
(478, 57, 'chu_dau_tu', ''),
(479, 57, '_chu_dau_tu', 'field_5cf78facebc94'),
(480, 57, 'dia_chi', ''),
(481, 57, '_dia_chi', 'field_5cf79058ebc95'),
(482, 57, 'dien_tich', ''),
(483, 57, '_dien_tich', 'field_5cf79077ebc96'),
(484, 57, 'huong', ''),
(485, 57, '_huong', 'field_5cf790bcebc97'),
(486, 69, 'chu_dau_tu', ''),
(487, 69, '_chu_dau_tu', 'field_5cf78facebc94'),
(488, 69, 'dia_chi', ''),
(489, 69, '_dia_chi', 'field_5cf79058ebc95'),
(490, 69, 'dien_tich', ''),
(491, 69, '_dien_tich', 'field_5cf79077ebc96'),
(492, 69, 'huong', ''),
(493, 69, '_huong', 'field_5cf790bcebc97'),
(498, 143, 'chu_dau_tu', ''),
(499, 143, '_chu_dau_tu', 'field_5cf78facebc94'),
(500, 143, 'dia_chi', ''),
(501, 143, '_dia_chi', 'field_5cf79058ebc95'),
(502, 143, 'dien_tich', ''),
(503, 143, '_dien_tich', 'field_5cf79077ebc96'),
(504, 143, 'huong', ''),
(505, 143, '_huong', 'field_5cf790bcebc97'),
(510, 144, 'chu_dau_tu', ''),
(511, 144, '_chu_dau_tu', 'field_5cf78facebc94'),
(512, 144, 'dia_chi', ''),
(513, 144, '_dia_chi', 'field_5cf79058ebc95'),
(514, 144, 'dien_tich', ''),
(515, 144, '_dien_tich', 'field_5cf79077ebc96'),
(516, 144, 'huong', ''),
(517, 144, '_huong', 'field_5cf790bcebc97'),
(520, 86, 'chu_dau_tu', ''),
(521, 86, '_chu_dau_tu', 'field_5cf78facebc94'),
(522, 86, 'dia_chi', ''),
(523, 86, '_dia_chi', 'field_5cf79058ebc95'),
(524, 86, 'dien_tich', ''),
(525, 86, '_dien_tich', 'field_5cf79077ebc96'),
(526, 86, 'huong', ''),
(527, 86, '_huong', 'field_5cf790bcebc97'),
(528, 145, 'chu_dau_tu', ''),
(529, 145, '_chu_dau_tu', 'field_5cf78facebc94'),
(530, 145, 'dia_chi', ''),
(531, 145, '_dia_chi', 'field_5cf79058ebc95'),
(532, 145, 'dien_tich', ''),
(533, 145, '_dien_tich', 'field_5cf79077ebc96'),
(534, 145, 'huong', ''),
(535, 145, '_huong', 'field_5cf790bcebc97'),
(538, 84, 'chu_dau_tu', ''),
(539, 84, '_chu_dau_tu', 'field_5cf78facebc94'),
(540, 84, 'dia_chi', ''),
(541, 84, '_dia_chi', 'field_5cf79058ebc95'),
(542, 84, 'dien_tich', ''),
(543, 84, '_dien_tich', 'field_5cf79077ebc96'),
(544, 84, 'huong', ''),
(545, 84, '_huong', 'field_5cf790bcebc97'),
(546, 102, 'chu_dau_tu', ''),
(547, 102, '_chu_dau_tu', 'field_5cf78facebc94'),
(548, 102, 'dia_chi', ''),
(549, 102, '_dia_chi', 'field_5cf79058ebc95'),
(550, 102, 'dien_tich', ''),
(551, 102, '_dien_tich', 'field_5cf79077ebc96'),
(552, 102, 'huong', ''),
(553, 102, '_huong', 'field_5cf790bcebc97'),
(558, 77, 'chu_dau_tu', ''),
(559, 77, '_chu_dau_tu', 'field_5cf78facebc94'),
(560, 77, 'dia_chi', ''),
(561, 77, '_dia_chi', 'field_5cf79058ebc95'),
(562, 77, 'dien_tich', ''),
(563, 77, '_dien_tich', 'field_5cf79077ebc96'),
(564, 77, 'huong', ''),
(565, 77, '_huong', 'field_5cf790bcebc97'),
(566, 146, 'chu_dau_tu', ''),
(567, 146, '_chu_dau_tu', 'field_5cf78facebc94'),
(568, 146, 'dia_chi', ''),
(569, 146, '_dia_chi', 'field_5cf79058ebc95'),
(570, 146, 'dien_tich', ''),
(571, 146, '_dien_tich', 'field_5cf79077ebc96'),
(572, 146, 'huong', ''),
(573, 146, '_huong', 'field_5cf790bcebc97'),
(574, 147, '_wp_attached_file', '2019/06/cropped-cf89cb017be49ebac7f5-2.jpg'),
(575, 147, '_wp_attachment_context', 'custom-logo'),
(576, 147, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:325;s:6:\"height\";i:201;s:4:\"file\";s:42:\"2019/06/cropped-cf89cb017be49ebac7f5-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"cropped-cf89cb017be49ebac7f5-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"cropped-cf89cb017be49ebac7f5-2-300x186.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(577, 148, '_wp_trash_meta_status', 'publish'),
(578, 148, '_wp_trash_meta_time', '1559794179'),
(579, 149, '_wp_attached_file', '2019/06/cropped-cf89cb017be49ebac7f5-3.jpg'),
(580, 149, '_wp_attachment_context', 'custom-logo'),
(581, 149, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:424;s:6:\"height\";i:317;s:4:\"file\";s:42:\"2019/06/cropped-cf89cb017be49ebac7f5-3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"cropped-cf89cb017be49ebac7f5-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"cropped-cf89cb017be49ebac7f5-3-300x224.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(582, 150, '_wp_trash_meta_status', 'publish'),
(583, 150, '_wp_trash_meta_time', '1559794454'),
(584, 151, '_wp_attached_file', '2019/06/cropped-cf89cb017be49ebac7f5-4.jpg'),
(585, 151, '_wp_attachment_context', 'custom-logo'),
(586, 151, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:308;s:6:\"height\";i:271;s:4:\"file\";s:42:\"2019/06/cropped-cf89cb017be49ebac7f5-4.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"cropped-cf89cb017be49ebac7f5-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"cropped-cf89cb017be49ebac7f5-4-300x264.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:264;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(587, 152, '_wp_trash_meta_status', 'publish'),
(588, 152, '_wp_trash_meta_time', '1559794500'),
(591, 86, 'vdw_gallery_id', 'a:2:{i:0;s:2:\"28\";i:1;s:2:\"29\";}'),
(592, 153, 'chu_dau_tu', ''),
(593, 153, '_chu_dau_tu', 'field_5cf78facebc94'),
(594, 153, 'dia_chi', ''),
(595, 153, '_dia_chi', 'field_5cf79058ebc95'),
(596, 153, 'dien_tich', ''),
(597, 153, '_dien_tich', 'field_5cf79077ebc96'),
(598, 153, 'huong', ''),
(599, 153, '_huong', 'field_5cf790bcebc97'),
(606, 154, 'chu_dau_tu', ''),
(607, 154, '_chu_dau_tu', 'field_5cf78facebc94'),
(608, 154, 'dia_chi', ''),
(609, 154, '_dia_chi', 'field_5cf79058ebc95'),
(610, 154, 'dien_tich', ''),
(611, 154, '_dien_tich', 'field_5cf79077ebc96'),
(612, 154, 'huong', ''),
(613, 154, '_huong', 'field_5cf790bcebc97'),
(616, 155, 'chu_dau_tu', ''),
(617, 155, '_chu_dau_tu', 'field_5cf78facebc94'),
(618, 155, 'dia_chi', ''),
(619, 155, '_dia_chi', 'field_5cf79058ebc95'),
(620, 155, 'dien_tich', ''),
(621, 155, '_dien_tich', 'field_5cf79077ebc96'),
(622, 155, 'huong', ''),
(623, 155, '_huong', 'field_5cf790bcebc97'),
(626, 84, 'vdw_gallery_id', 'a:3:{i:0;s:2:\"45\";i:1;s:2:\"46\";i:2;s:2:\"38\";}'),
(629, 82, 'vdw_gallery_id', 'a:5:{i:0;s:2:\"52\";i:1;s:2:\"38\";i:2;s:2:\"54\";i:3;s:2:\"55\";i:4;s:2:\"56\";}'),
(630, 82, 'chu_dau_tu', ''),
(631, 82, '_chu_dau_tu', 'field_5cf78facebc94'),
(632, 82, 'dia_chi', ''),
(633, 82, '_dia_chi', 'field_5cf79058ebc95'),
(634, 82, 'dien_tich', ''),
(635, 82, '_dien_tich', 'field_5cf79077ebc96'),
(636, 82, 'huong', ''),
(637, 82, '_huong', 'field_5cf790bcebc97'),
(638, 156, 'chu_dau_tu', ''),
(639, 156, '_chu_dau_tu', 'field_5cf78facebc94'),
(640, 156, 'dia_chi', ''),
(641, 156, '_dia_chi', 'field_5cf79058ebc95'),
(642, 156, 'dien_tich', ''),
(643, 156, '_dien_tich', 'field_5cf79077ebc96'),
(644, 156, 'huong', ''),
(645, 156, '_huong', 'field_5cf790bcebc97'),
(646, 157, '_wp_attached_file', '2019/06/P.AN-1-1-2.jpg'),
(647, 157, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:2222;s:4:\"file\";s:22:\"2019/06/P.AN-1-1-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"P.AN-1-1-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"P.AN-1-1-2-270x300.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"P.AN-1-1-2-768x853.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:853;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"P.AN-1-1-2-922x1024.jpg\";s:5:\"width\";i:922;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(650, 79, 'vdw_gallery_id', 'a:1:{i:0;s:3:\"157\";}'),
(651, 158, 'chu_dau_tu', ''),
(652, 158, '_chu_dau_tu', 'field_5cf78facebc94'),
(653, 158, 'dia_chi', ''),
(654, 158, '_dia_chi', 'field_5cf79058ebc95'),
(655, 158, 'dien_tich', ''),
(656, 158, '_dien_tich', 'field_5cf79077ebc96'),
(657, 158, 'huong', ''),
(658, 158, '_huong', 'field_5cf790bcebc97'),
(659, 159, '_wp_attached_file', '2019/06/1-3.jpg'),
(660, 159, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2500;s:6:\"height\";i:4000;s:4:\"file\";s:15:\"2019/06/1-3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"1-3-188x300.jpg\";s:5:\"width\";i:188;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"1-3-768x1229.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1229;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"1-3-640x1024.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(663, 77, 'vdw_gallery_id', 'a:3:{i:0;s:2:\"38\";i:1;s:3:\"159\";i:2;s:2:\"29\";}'),
(664, 160, 'chu_dau_tu', ''),
(665, 160, '_chu_dau_tu', 'field_5cf78facebc94'),
(666, 160, 'dia_chi', ''),
(667, 160, '_dia_chi', 'field_5cf79058ebc95'),
(668, 160, 'dien_tich', ''),
(669, 160, '_dien_tich', 'field_5cf79077ebc96'),
(670, 160, 'huong', ''),
(671, 160, '_huong', 'field_5cf790bcebc97'),
(674, 75, 'vdw_gallery_id', 'a:3:{i:0;s:2:\"55\";i:1;s:2:\"28\";i:2;s:2:\"29\";}'),
(675, 75, 'chu_dau_tu', ''),
(676, 75, '_chu_dau_tu', 'field_5cf78facebc94'),
(677, 75, 'dia_chi', ''),
(678, 75, '_dia_chi', 'field_5cf79058ebc95'),
(679, 75, 'dien_tich', ''),
(680, 75, '_dien_tich', 'field_5cf79077ebc96'),
(681, 75, 'huong', ''),
(682, 75, '_huong', 'field_5cf790bcebc97'),
(683, 161, 'chu_dau_tu', ''),
(684, 161, '_chu_dau_tu', 'field_5cf78facebc94'),
(685, 161, 'dia_chi', ''),
(686, 161, '_dia_chi', 'field_5cf79058ebc95'),
(687, 161, 'dien_tich', ''),
(688, 161, '_dien_tich', 'field_5cf79077ebc96'),
(689, 161, 'huong', ''),
(690, 161, '_huong', 'field_5cf790bcebc97'),
(693, 72, 'vdw_gallery_id', 'a:3:{i:0;s:2:\"31\";i:1;s:2:\"32\";i:2;s:2:\"50\";}'),
(694, 162, 'chu_dau_tu', 'Hoàng Kế Viên'),
(695, 162, '_chu_dau_tu', 'field_5cf78facebc94'),
(696, 162, 'dia_chi', 'Hồ Chí Minh'),
(697, 162, '_dia_chi', 'field_5cf79058ebc95'),
(698, 162, 'dien_tich', '500m2'),
(699, 162, '_dien_tich', 'field_5cf79077ebc96'),
(700, 162, 'huong', 'Đông Nam'),
(701, 162, '_huong', 'field_5cf790bcebc97'),
(704, 70, 'vdw_gallery_id', 'a:3:{i:0;s:2:\"40\";i:1;s:2:\"41\";i:2;s:2:\"42\";}'),
(705, 163, 'chu_dau_tu', ''),
(706, 163, '_chu_dau_tu', 'field_5cf78facebc94'),
(707, 163, 'dia_chi', ''),
(708, 163, '_dia_chi', 'field_5cf79058ebc95'),
(709, 163, 'dien_tich', ''),
(710, 163, '_dien_tich', 'field_5cf79077ebc96'),
(711, 163, 'huong', ''),
(712, 163, '_huong', 'field_5cf790bcebc97'),
(717, 164, 'chu_dau_tu', ''),
(718, 164, '_chu_dau_tu', 'field_5cf78facebc94'),
(719, 164, 'dia_chi', ''),
(720, 164, '_dia_chi', 'field_5cf79058ebc95'),
(721, 164, 'dien_tich', ''),
(722, 164, '_dien_tich', 'field_5cf79077ebc96'),
(723, 164, 'huong', ''),
(724, 164, '_huong', 'field_5cf790bcebc97'),
(727, 165, '_edit_last', '1'),
(728, 165, '_wp_page_template', 'template/gioithieu.php'),
(729, 165, '_yoast_wpseo_content_score', '30'),
(730, 165, '_edit_lock', '1560779910:1'),
(740, 168, '_menu_item_type', 'taxonomy'),
(741, 168, '_menu_item_menu_item_parent', '0'),
(742, 168, '_menu_item_object_id', '11'),
(743, 168, '_menu_item_object', 'category'),
(744, 168, '_menu_item_target', ''),
(745, 168, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(746, 168, '_menu_item_xfn', ''),
(747, 168, '_menu_item_url', ''),
(749, 169, '_form', '[email* txtEmail class:form-control placeholder \"Email\"]\n[submit id:send class:bu \"Đăng ký\"]'),
(750, 169, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:91:\"[:vi]Thiết Kế Xây Dựng Lam Mộc[:en]Design for building Lam Moc[:] \"[your-subject]\"\";s:6:\"sender\";s:88:\"[:vi]Thiết Kế Xây Dựng Lam Mộc[:en]Design for building Lam Moc[:] <tuan@ert.vn>\";s:9:\"recipient\";s:11:\"tuan@ert.vn\";s:4:\"body\";s:292:\"Gửi đến từ: [your-name] <[your-email]>\nTiêu đề: [your-subject]\n\nNội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website [:vi]Thiết Kế Xây Dựng Lam Mộc[:en]Design for building Lam Moc[:] (http://127.0.0.1/kientruc)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(751, 169, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:91:\"[:vi]Thiết Kế Xây Dựng Lam Mộc[:en]Design for building Lam Moc[:] \"[your-subject]\"\";s:6:\"sender\";s:88:\"[:vi]Thiết Kế Xây Dựng Lam Mộc[:en]Design for building Lam Moc[:] <tuan@ert.vn>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:217:\"Nội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website [:vi]Thiết Kế Xây Dựng Lam Mộc[:en]Design for building Lam Moc[:] (http://127.0.0.1/kientruc)\";s:18:\"additional_headers\";s:21:\"Reply-To: tuan@ert.vn\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(752, 169, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:53:\"Xin cảm ơn, form đã được gửi thành công.\";s:12:\"mail_sent_ng\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:16:\"validation_error\";s:86:\"Có một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\";s:4:\"spam\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:12:\"accept_terms\";s:67:\"Bạn phải chấp nhận điều khoản trước khi gửi form.\";s:16:\"invalid_required\";s:28:\"Mục này là bắt buộc.\";s:16:\"invalid_too_long\";s:36:\"Nhập quá số kí tự cho phép.\";s:17:\"invalid_too_short\";s:44:\"Nhập ít hơn số kí tự tối thiểu.\";s:12:\"invalid_date\";s:46:\"Định dạng ngày tháng không hợp lệ.\";s:14:\"date_too_early\";s:58:\"Ngày này trước ngày sớm nhất được cho phép.\";s:13:\"date_too_late\";s:54:\"Ngày này quá ngày gần nhất được cho phép.\";s:13:\"upload_failed\";s:36:\"Tải file lên không thành công.\";s:24:\"upload_file_type_invalid\";s:69:\"Bạn không được phép tải lên file theo định dạng này.\";s:21:\"upload_file_too_large\";s:31:\"File kích thước quá lớn.\";s:23:\"upload_failed_php_error\";s:36:\"Tải file lên không thành công.\";s:14:\"invalid_number\";s:38:\"Định dạng số không hợp lệ.\";s:16:\"number_too_small\";s:48:\"Con số nhỏ hơn số nhỏ nhất cho phép.\";s:16:\"number_too_large\";s:48:\"Con số lớn hơn số lớn nhất cho phép.\";s:23:\"quiz_answer_not_correct\";s:30:\"Câu trả lời chưa đúng.\";s:17:\"captcha_not_match\";s:34:\"Bạn đã nhập sai mã CAPTCHA.\";s:13:\"invalid_email\";s:38:\"Địa chỉ e-mail không hợp lệ.\";s:11:\"invalid_url\";s:22:\"URL không hợp lệ.\";s:11:\"invalid_tel\";s:39:\"Số điện thoại không hợp lệ.\";}'),
(753, 169, '_additional_settings', ''),
(754, 169, '_locale', 'vi'),
(755, 169, '_config_errors', 'a:1:{s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:47:\"Cú pháp không hợp lệ trong mục %name%.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(768, 171, '_wp_attached_file', '2019/06/tmp_1553481295.jpg'),
(769, 171, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:667;s:4:\"file\";s:26:\"2019/06/tmp_1553481295.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"tmp_1553481295-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"tmp_1553481295-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"tmp_1553481295-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"tmp_1553481295-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(770, 172, '_wp_attached_file', '2019/06/tmp_1553481295-1.jpg'),
(771, 172, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:667;s:4:\"file\";s:28:\"2019/06/tmp_1553481295-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"tmp_1553481295-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"tmp_1553481295-1-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"tmp_1553481295-1-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"tmp_1553481295-1-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(772, 173, '_wp_attached_file', '2019/06/tmp_1553481321.jpg'),
(773, 173, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:667;s:4:\"file\";s:26:\"2019/06/tmp_1553481321.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"tmp_1553481321-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"tmp_1553481321-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"tmp_1553481321-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"tmp_1553481321-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(774, 174, '_wp_attached_file', '2019/06/tmp_1553481329.jpg'),
(775, 174, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:667;s:4:\"file\";s:26:\"2019/06/tmp_1553481329.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"tmp_1553481329-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"tmp_1553481329-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"tmp_1553481329-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"tmp_1553481329-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(776, 170, '_edit_last', '1'),
(777, 170, '_thumbnail_id', '171'),
(781, 170, '_yoast_wpseo_content_score', '90'),
(783, 170, 'chu_dau_tu', 'Nguyễn Văn Ngà'),
(784, 170, '_chu_dau_tu', 'field_5cf78facebc94'),
(785, 170, 'dia_chi', 'Đường Hoàng Diệu TP. Đà Nẵng'),
(786, 170, '_dia_chi', 'field_5cf79058ebc95'),
(787, 170, 'dien_tich', '90m2'),
(788, 170, '_dien_tich', 'field_5cf79077ebc96'),
(789, 170, 'huong', 'Đông'),
(790, 170, '_huong', 'field_5cf790bcebc97'),
(791, 175, 'chu_dau_tu', 'Nguyễn Văn Ngà'),
(792, 175, '_chu_dau_tu', 'field_5cf78facebc94'),
(793, 175, 'dia_chi', 'Đường Hoàng Diệu TP. Đà Nẵng'),
(794, 175, '_dia_chi', 'field_5cf79058ebc95'),
(795, 175, 'dien_tich', '90m2'),
(796, 175, '_dien_tich', 'field_5cf79077ebc96'),
(797, 175, 'huong', 'Đông'),
(798, 175, '_huong', 'field_5cf790bcebc97'),
(799, 170, '_yoast_wpseo_primary_category', '1'),
(802, 170, '_edit_lock', '1560993021:1'),
(821, 176, 'chu_dau_tu', 'Nguyễn Văn Ngà'),
(822, 176, '_chu_dau_tu', 'field_5cf78facebc94'),
(823, 176, 'dia_chi', 'Đường Hoàng Diệu TP. Đà Nẵng'),
(824, 176, '_dia_chi', 'field_5cf79058ebc95'),
(825, 176, 'dien_tich', '90m2'),
(826, 176, '_dien_tich', 'field_5cf79077ebc96'),
(827, 176, 'huong', 'Đông'),
(828, 176, '_huong', 'field_5cf790bcebc97'),
(852, 177, '_edit_last', '1'),
(853, 177, 'sp_wpcp_upload_options', 'a:6:{s:18:\"wpcp_carousel_type\";s:14:\"image-carousel\";s:12:\"wpcp_gallery\";s:15:\"174,173,172,171\";s:23:\"wpcp_display_posts_from\";s:6:\"latest\";s:21:\"number_of_total_posts\";s:2:\"10\";s:25:\"wpcp_display_product_from\";s:6:\"latest\";s:19:\"wpcp_total_products\";s:2:\"10\";}'),
(854, 177, 'sp_wpcp_shortcode_options', 'a:51:{s:13:\"section_title\";s:0:\"\";s:27:\"section_title_margin_bottom\";a:1:{s:3:\"all\";s:2:\"30\";}s:22:\"wpcp_number_of_columns\";a:5:{s:10:\"lg_desktop\";s:1:\"1\";s:7:\"desktop\";s:1:\"1\";s:6:\"laptop\";s:1:\"1\";s:6:\"tablet\";s:1:\"1\";s:6:\"mobile\";s:1:\"1\";}s:19:\"wpcp_image_order_by\";s:10:\"menu_order\";s:18:\"wpcp_post_order_by\";s:10:\"menu_order\";s:15:\"wpcp_post_order\";s:3:\"ASC\";s:14:\"wpcp_preloader\";s:1:\"0\";s:23:\"wpcp_carousel_auto_play\";s:1:\"0\";s:24:\"carousel_auto_play_speed\";a:1:{s:3:\"all\";s:4:\"3000\";}s:30:\"standard_carousel_scroll_speed\";a:1:{s:3:\"all\";s:3:\"600\";}s:23:\"carousel_pause_on_hover\";s:1:\"1\";s:17:\"carousel_infinite\";s:1:\"0\";s:15:\"wpcp_navigation\";s:11:\"hide_mobile\";s:15:\"wpcp_nav_colors\";a:2:{s:6:\"color1\";s:4:\"#aaa\";s:6:\"color2\";s:7:\"#52b3d9\";}s:15:\"wpcp_pagination\";s:4:\"show\";s:21:\"wpcp_pagination_color\";a:2:{s:6:\"color1\";s:7:\"#cccccc\";s:6:\"color2\";s:7:\"#52b3d9\";}s:18:\"wpcp_accessibility\";s:1:\"1\";s:12:\"slider_swipe\";s:1:\"1\";s:16:\"slider_draggable\";s:1:\"1\";s:25:\"wpcp_post_detail_position\";s:6:\"bottom\";s:17:\"wpcp_slide_border\";a:3:{s:3:\"all\";s:1:\"1\";s:5:\"style\";s:4:\"none\";s:5:\"color\";s:7:\"#dddddd\";}s:21:\"wpcp_slide_background\";s:7:\"#f9f9f9\";s:15:\"wpcp_post_title\";s:1:\"1\";s:22:\"wpcp_post_content_show\";s:1:\"1\";s:22:\"wpcp_post_content_type\";s:7:\"excerpt\";s:19:\"wpcp_post_date_show\";s:1:\"1\";s:21:\"wpcp_post_author_show\";s:1:\"1\";s:17:\"wpcp_product_name\";s:1:\"1\";s:18:\"wpcp_product_price\";s:1:\"1\";s:19:\"wpcp_product_rating\";s:1:\"1\";s:17:\"wpcp_product_cart\";s:1:\"1\";s:10:\"show_image\";s:1:\"1\";s:16:\"wpcp_image_sizes\";s:4:\"full\";s:25:\"wpcp_product_image_border\";a:3:{s:3:\"all\";s:1:\"1\";s:5:\"style\";s:5:\"solid\";s:5:\"color\";s:7:\"#dddddd\";}s:17:\"_image_title_attr\";s:0:\"\";s:23:\"section_title_font_load\";s:0:\"\";s:29:\"wpcp_section_title_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:28:\"wpcp_image_caption_font_load\";s:0:\"\";s:29:\"wpcp_image_caption_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:25:\"wpcp_image_desc_font_load\";s:0:\"\";s:26:\"wpcp_image_desc_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:20:\"wpcp_title_font_load\";s:0:\"\";s:21:\"wpcp_title_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:27:\"wpcp_post_content_font_load\";s:0:\"\";s:28:\"wpcp_post_content_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:24:\"wpcp_post_meta_font_load\";s:0:\"\";s:25:\"wpcp_post_meta_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:27:\"wpcp_product_name_font_load\";s:0:\"\";s:28:\"wpcp_product_name_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}s:28:\"wpcp_product_price_font_load\";s:0:\"\";s:29:\"wpcp_product_price_typography\";a:2:{s:4:\"type\";s:6:\"google\";s:4:\"unit\";s:2:\"px\";}}'),
(857, 177, '_edit_lock', '1560480072:1'),
(864, 178, 'chu_dau_tu', 'Nguyễn Văn Ngà'),
(865, 178, '_chu_dau_tu', 'field_5cf78facebc94'),
(866, 178, 'dia_chi', 'Đường Hoàng Diệu TP. Đà Nẵng'),
(867, 178, '_dia_chi', 'field_5cf79058ebc95'),
(868, 178, 'dien_tich', '90m2'),
(869, 178, '_dien_tich', 'field_5cf79077ebc96'),
(870, 178, 'huong', 'Đông'),
(871, 178, '_huong', 'field_5cf790bcebc97'),
(878, 177, '_qts_slug_vi', 'nguyen-van-nga'),
(879, 177, '_qts_slug_en', 'nguyen-van-nga'),
(904, 181, '_edit_last', '1'),
(905, 181, '_yoast_wpseo_content_score', '30'),
(906, 181, '_yoast_wpseo_primary_portfolio_category', ''),
(909, 181, '_edit_lock', '1560750574:1'),
(931, 186, '_wp_attached_file', '2019/06/tmp_1553481295-2.jpg'),
(932, 186, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:667;s:4:\"file\";s:28:\"2019/06/tmp_1553481295-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"tmp_1553481295-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"tmp_1553481295-2-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"tmp_1553481295-2-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"tmp_1553481295-2-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:3:{i:0;s:7:\"500x278\";i:1;s:8:\"1000x556\";i:2;s:8:\"1200x667\";}}}'),
(933, 187, '_wp_attached_file', '2019/06/tmp_1553481312.jpg'),
(934, 187, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:667;s:4:\"file\";s:26:\"2019/06/tmp_1553481312.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"tmp_1553481312-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"tmp_1553481312-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"tmp_1553481312-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"tmp_1553481312-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:3:{i:0;s:7:\"500x278\";i:1;s:8:\"1000x556\";i:2;s:8:\"1200x667\";}}}'),
(935, 185, 'modula-images', 'a:10:{i:0;a:10:{s:2:\"id\";s:3:\"186\";s:3:\"alt\";s:9:\"werwerewr\";s:5:\"title\";s:9:\"ewrewrwer\";s:11:\"description\";s:11:\"erwerwerwer\";s:6:\"halign\";s:6:\"center\";s:6:\"valign\";s:6:\"bottom\";s:4:\"link\";s:0:\"\";s:6:\"target\";i:0;s:5:\"width\";i:2;s:6:\"height\";i:2;}i:1;a:10:{s:2:\"id\";s:3:\"187\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"halign\";s:6:\"center\";s:6:\"valign\";s:6:\"middle\";s:4:\"link\";s:0:\"\";s:6:\"target\";i:0;s:5:\"width\";i:2;s:6:\"height\";i:2;}i:2;a:10:{s:2:\"id\";s:3:\"188\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"halign\";s:6:\"center\";s:6:\"valign\";s:6:\"middle\";s:4:\"link\";s:0:\"\";s:6:\"target\";i:0;s:5:\"width\";i:2;s:6:\"height\";i:2;}i:3;a:10:{s:2:\"id\";s:3:\"189\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"halign\";s:6:\"center\";s:6:\"valign\";s:6:\"middle\";s:4:\"link\";s:0:\"\";s:6:\"target\";i:0;s:5:\"width\";i:2;s:6:\"height\";i:2;}i:4;a:10:{s:2:\"id\";s:3:\"190\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"halign\";s:6:\"center\";s:6:\"valign\";s:6:\"middle\";s:4:\"link\";s:0:\"\";s:6:\"target\";i:0;s:5:\"width\";i:2;s:6:\"height\";i:2;}i:5;a:10:{s:2:\"id\";s:3:\"191\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"halign\";s:6:\"center\";s:6:\"valign\";s:6:\"middle\";s:4:\"link\";s:0:\"\";s:6:\"target\";i:0;s:5:\"width\";i:2;s:6:\"height\";i:2;}i:6;a:10:{s:2:\"id\";s:3:\"192\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"halign\";s:6:\"center\";s:6:\"valign\";s:6:\"middle\";s:4:\"link\";s:0:\"\";s:6:\"target\";i:0;s:5:\"width\";i:2;s:6:\"height\";i:2;}i:7;a:10:{s:2:\"id\";s:3:\"193\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"halign\";s:6:\"center\";s:6:\"valign\";s:6:\"middle\";s:4:\"link\";s:0:\"\";s:6:\"target\";i:0;s:5:\"width\";i:2;s:6:\"height\";i:2;}i:8;a:10:{s:2:\"id\";s:3:\"194\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"halign\";s:6:\"center\";s:6:\"valign\";s:6:\"middle\";s:4:\"link\";s:0:\"\";s:6:\"target\";i:0;s:5:\"width\";i:2;s:6:\"height\";i:2;}i:9;a:10:{s:2:\"id\";s:3:\"195\";s:3:\"alt\";s:6:\"asdsad\";s:5:\"title\";s:6:\"ssdasd\";s:11:\"description\";s:9:\"asdsadasd\";s:6:\"halign\";s:6:\"center\";s:6:\"valign\";s:6:\"middle\";s:4:\"link\";s:0:\"\";s:6:\"target\";i:0;s:5:\"width\";i:2;s:6:\"height\";i:2;}}'),
(936, 188, '_wp_attached_file', '2019/06/tmp_1553481321-1.jpg'),
(937, 188, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:667;s:4:\"file\";s:28:\"2019/06/tmp_1553481321-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"tmp_1553481321-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"tmp_1553481321-1-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"tmp_1553481321-1-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"tmp_1553481321-1-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:3:{i:0;s:7:\"500x278\";i:1;s:8:\"1000x556\";i:2;s:8:\"1200x667\";}}}'),
(938, 189, '_wp_attached_file', '2019/06/tmp_1553481329-1.jpg'),
(939, 189, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:667;s:4:\"file\";s:28:\"2019/06/tmp_1553481329-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"tmp_1553481329-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"tmp_1553481329-1-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"tmp_1553481329-1-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"tmp_1553481329-1-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:3:{i:0;s:7:\"500x278\";i:1;s:8:\"1000x556\";i:2;s:8:\"1200x667\";}}}'),
(940, 190, '_wp_attached_file', '2019/06/tmp_1553852232.jpg'),
(941, 190, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:667;s:4:\"file\";s:26:\"2019/06/tmp_1553852232.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"tmp_1553852232-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"tmp_1553852232-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"tmp_1553852232-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"tmp_1553852232-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:3:{i:0;s:7:\"500x278\";i:1;s:8:\"1000x556\";i:2;s:8:\"1200x667\";}}}'),
(942, 191, '_wp_attached_file', '2019/06/tmp_1553852243.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(943, 191, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:667;s:4:\"file\";s:26:\"2019/06/tmp_1553852243.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"tmp_1553852243-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"tmp_1553852243-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"tmp_1553852243-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"tmp_1553852243-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:3:{i:0;s:7:\"500x278\";i:1;s:8:\"1000x556\";i:2;s:8:\"1200x667\";}}}'),
(944, 192, '_wp_attached_file', '2019/06/tmp_1553852253.jpg'),
(945, 192, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:667;s:4:\"file\";s:26:\"2019/06/tmp_1553852253.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"tmp_1553852253-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"tmp_1553852253-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"tmp_1553852253-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"tmp_1553852253-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:3:{i:0;s:7:\"500x278\";i:1;s:8:\"1000x556\";i:2;s:8:\"1200x667\";}}}'),
(946, 193, '_wp_attached_file', '2019/06/tmp_1553852262.jpg'),
(947, 193, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:667;s:4:\"file\";s:26:\"2019/06/tmp_1553852262.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"tmp_1553852262-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"tmp_1553852262-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"tmp_1553852262-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"tmp_1553852262-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:3:{i:0;s:7:\"500x278\";i:1;s:8:\"1000x556\";i:2;s:8:\"1200x667\";}}}'),
(948, 194, '_wp_attached_file', '2019/06/tmp_1553852273.jpg'),
(949, 194, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:667;s:4:\"file\";s:26:\"2019/06/tmp_1553852273.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"tmp_1553852273-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"tmp_1553852273-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"tmp_1553852273-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"tmp_1553852273-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:3:{i:0;s:7:\"500x278\";i:1;s:8:\"1000x556\";i:2;s:8:\"1200x667\";}}}'),
(950, 195, '_wp_attached_file', '2019/06/tmp_1553852283.jpg'),
(951, 195, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:667;s:4:\"file\";s:26:\"2019/06/tmp_1553852283.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"tmp_1553852283-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"tmp_1553852283-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"tmp_1553852283-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"tmp_1553852283-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:3:{i:0;s:7:\"500x278\";i:1;s:8:\"1000x556\";i:2;s:8:\"1200x667\";}}}'),
(952, 185, '_edit_last', '1'),
(953, 185, 'modula-settings', 'a:37:{s:4:\"type\";s:16:\"creative-gallery\";s:6:\"gutter\";s:3:\"100\";s:5:\"width\";s:4:\"100%\";s:6:\"height\";i:550;s:8:\"img_size\";i:0;s:6:\"margin\";i:0;s:12:\"randomFactor\";i:100;s:8:\"lightbox\";s:9:\"lightbox2\";s:15:\"show_navigation\";s:1:\"0\";s:25:\"show_navigation_on_mobile\";s:1:\"0\";s:7:\"shuffle\";s:1:\"0\";s:10:\"titleColor\";s:7:\"#1e73be\";s:12:\"captionColor\";s:7:\"#dd3333\";s:14:\"wp_field_title\";s:5:\"title\";s:16:\"wp_field_caption\";s:5:\"title\";s:10:\"hide_title\";s:1:\"1\";s:16:\"hide_description\";s:1:\"1\";s:13:\"titleFontSize\";i:17;s:15:\"captionFontSize\";i:20;s:13:\"enableTwitter\";s:1:\"1\";s:14:\"enableFacebook\";s:1:\"1\";s:14:\"enableLinkedin\";s:1:\"1\";s:15:\"enablePinterest\";s:1:\"1\";s:15:\"socialIconColor\";s:7:\"#ffffff\";s:11:\"loadedScale\";i:100;s:6:\"effect\";s:7:\"pufrobo\";s:10:\"borderSize\";i:0;s:12:\"borderRadius\";i:0;s:11:\"borderColor\";s:7:\"#ffffff\";s:10:\"shadowSize\";i:0;s:11:\"shadowColor\";s:7:\"#ffffff\";s:9:\"lazy_load\";s:1:\"0\";s:17:\"enable_responsive\";s:1:\"1\";s:14:\"tablet_columns\";s:1:\"2\";s:14:\"mobile_columns\";s:1:\"1\";s:5:\"style\";s:0:\"\";s:10:\"helpergrid\";i:0;}'),
(956, 185, '_edit_lock', '1560992762:1'),
(965, 89, '_qts_slug_vi', 'giao-dien-danh-muc'),
(966, 89, '_qts_slug_en', 'tieng-viet-giao-dien-danh-muc'),
(967, 197, '_edit_last', '1'),
(970, 197, '_yoast_wpseo_content_score', '60'),
(971, 197, '_wp_post_template', 'single/singgle-duan.php'),
(972, 197, 'chu_dau_tu', ''),
(973, 197, '_chu_dau_tu', 'field_5cf78facebc94'),
(974, 197, 'dia_chi', ''),
(975, 197, '_dia_chi', 'field_5cf79058ebc95'),
(976, 197, 'dien_tich', ''),
(977, 197, '_dien_tich', 'field_5cf79077ebc96'),
(978, 197, 'huong', ''),
(979, 197, '_huong', 'field_5cf790bcebc97'),
(980, 198, 'chu_dau_tu', ''),
(981, 198, '_chu_dau_tu', 'field_5cf78facebc94'),
(982, 198, 'dia_chi', ''),
(983, 198, '_dia_chi', 'field_5cf79058ebc95'),
(984, 198, 'dien_tich', ''),
(985, 198, '_dien_tich', 'field_5cf79077ebc96'),
(986, 198, 'huong', ''),
(987, 198, '_huong', 'field_5cf790bcebc97'),
(988, 197, '_yoast_wpseo_primary_category', '19'),
(991, 197, '_edit_lock', '1560751739:1'),
(1006, 197, '_qts_slug_vi', 'van-phong-thiet-ke'),
(1007, 197, '_qts_slug_en', 'office-design'),
(1008, 199, '_edit_last', '1'),
(1013, 199, '_edit_lock', '1560485678:1'),
(1016, 199, '_qts_slug_vi', 'single'),
(1017, 199, '_qts_slug_en', 'tieng-viet-single'),
(1018, 181, 'single', '1'),
(1019, 181, '_single', 'field_5d031f123f947'),
(1020, 183, 'single', '1'),
(1021, 183, '_single', 'field_5d031f123f947'),
(1024, 181, 'vdw_gallery_id', 'a:6:{i:0;s:3:\"193\";i:1;s:3:\"195\";i:2;s:3:\"194\";i:3;s:3:\"192\";i:4;s:3:\"191\";i:5;s:3:\"190\";}'),
(1045, 72, '_wp_post_template', 'single/single-vatlieu.php'),
(1054, 72, '_qts_slug_vi', 'hoang-ke-viem'),
(1055, 72, '_qts_slug_en', 'hoang-ke-viem'),
(1056, 201, '_menu_item_type', 'taxonomy'),
(1057, 201, '_menu_item_menu_item_parent', '0'),
(1058, 201, '_menu_item_object_id', '5'),
(1059, 201, '_menu_item_object', 'category'),
(1060, 201, '_menu_item_target', ''),
(1061, 201, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1062, 201, '_menu_item_xfn', ''),
(1063, 201, '_menu_item_url', ''),
(1071, 70, '_qts_slug_vi', 'bach-dang'),
(1072, 70, '_qts_slug_en', 'bach-dang'),
(1079, 57, '_qts_slug_vi', 'an-thuong-9'),
(1080, 57, '_qts_slug_en', 'an-thuong-9'),
(1083, 181, '_qts_slug_vi', 'thi-cong'),
(1084, 181, '_qts_slug_en', 'construction'),
(1085, 208, '_edit_last', '1'),
(1086, 208, '_yoast_wpseo_content_score', '60'),
(1089, 208, '_edit_lock', '1560761959:1'),
(1090, 208, '_thumbnail_id', '171'),
(1095, 214, '_edit_last', '1'),
(1096, 214, '_wp_page_template', 'template/vatlieu.php'),
(1097, 214, '_yoast_wpseo_content_score', '30'),
(1100, 214, '_edit_lock', '1560840817:1'),
(1105, 216, '_edit_last', '1'),
(1106, 216, '_thumbnail_id', '172'),
(1107, 216, '_yoast_wpseo_content_score', '60'),
(1110, 216, '_edit_lock', '1560750560:1'),
(1111, 208, '_yoast_wpseo_primary_vatlieu_tags', '31'),
(1114, 216, '_yoast_wpseo_primary_vatlieu_tags', '34'),
(1115, 216, '_qts_slug_vi', 'test-2'),
(1116, 216, '_qts_slug_en', 'tieng-viet-test-2'),
(1117, 208, 'vdw_gallery_id', 'a:5:{i:0;s:3:\"195\";i:1;s:3:\"194\";i:2;s:3:\"193\";i:3;s:3:\"192\";i:4;s:3:\"191\";}'),
(1145, 208, '_qts_slug_vi', 'test-1'),
(1146, 208, '_qts_slug_en', 'tieng-viet-test-1'),
(1147, 224, '_edit_last', '1'),
(1148, 224, '_thumbnail_id', '192'),
(1149, 224, '_yoast_wpseo_content_score', '60'),
(1150, 224, '_yoast_wpseo_primary_goithieu_tags', '37'),
(1151, 224, '_qts_slug_vi', 'van-phong-co-dien'),
(1152, 224, '_qts_slug_en', 'tieng-viet-van-phong-co-dien'),
(1153, 224, '_edit_lock', '1560772835:1'),
(1154, 227, '_wp_attached_file', '2019/06/tmp_1445920402.jpg'),
(1155, 227, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:667;s:4:\"file\";s:26:\"2019/06/tmp_1445920402.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"tmp_1445920402-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"tmp_1445920402-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"tmp_1445920402-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"tmp_1445920402-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1156, 226, '_edit_last', '1'),
(1157, 226, '_thumbnail_id', '227'),
(1158, 226, '_yoast_wpseo_content_score', '60'),
(1159, 226, '_yoast_wpseo_primary_goithieu_tags', '38'),
(1160, 226, '_qts_slug_vi', 'xuong-go'),
(1161, 226, '_qts_slug_en', 'tieng-viet-xuong-go'),
(1162, 226, '_edit_lock', '1560763481:1'),
(1174, 165, '_qts_slug_vi', 'gioi-thieu'),
(1175, 165, '_qts_slug_en', 'introduced'),
(1176, 231, '_wp_attached_file', '2019/06/tmp_1554112610.jpg'),
(1177, 231, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:677;s:4:\"file\";s:26:\"2019/06/tmp_1554112610.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"tmp_1554112610-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"tmp_1554112610-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"tmp_1554112610-768x433.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:433;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"tmp_1554112610-1024x578.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:578;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1178, 230, '_edit_last', '1'),
(1179, 230, '_thumbnail_id', '231'),
(1180, 230, '_yoast_wpseo_content_score', '60'),
(1181, 230, '_yoast_wpseo_primary_goithieu_tags', '39'),
(1182, 230, '_qts_slug_vi', 'nhan-su'),
(1183, 230, '_qts_slug_en', 'tieng-viet-nhan-su'),
(1184, 230, '_edit_lock', '1560763574:1'),
(1185, 234, '_wp_attached_file', '2019/06/tmp_1553485496.jpg'),
(1186, 234, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:667;s:4:\"file\";s:26:\"2019/06/tmp_1553485496.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"tmp_1553485496-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"tmp_1553485496-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"tmp_1553485496-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"tmp_1553485496-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1187, 233, '_edit_last', '1'),
(1188, 233, '_thumbnail_id', '234'),
(1189, 233, '_yoast_wpseo_content_score', '60'),
(1190, 233, '_yoast_wpseo_primary_goithieu_tags', '41'),
(1193, 233, '_edit_lock', '1560766979:1'),
(1196, 238, '_wp_attached_file', '2019/06/tmp_1553934690.jpg'),
(1197, 238, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:667;s:4:\"file\";s:26:\"2019/06/tmp_1553934690.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"tmp_1553934690-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"tmp_1553934690-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"tmp_1553934690-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"tmp_1553934690-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1198, 237, '_edit_last', '1'),
(1199, 237, '_thumbnail_id', '238'),
(1200, 237, '_yoast_wpseo_content_score', '60'),
(1201, 237, '_yoast_wpseo_primary_goithieu_tags', '40'),
(1202, 237, '_qts_slug_vi', 'co-cau-chuc-nang'),
(1203, 237, '_qts_slug_en', 'tieng-viet-co-cau-chuc-nang'),
(1204, 237, '_edit_lock', '1560764143:1'),
(1205, 208, '_wp_trash_meta_status', 'publish'),
(1206, 208, '_wp_trash_meta_time', '1560764706'),
(1207, 208, '_wp_desired_post_slug', 'test-1'),
(1208, 216, '_wp_trash_meta_status', 'publish'),
(1209, 216, '_wp_trash_meta_time', '1560764710'),
(1210, 216, '_wp_desired_post_slug', 'test-2'),
(1211, 241, '_wp_attached_file', '2019/06/tmp_1553943090.jpg'),
(1212, 241, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:667;s:4:\"file\";s:26:\"2019/06/tmp_1553943090.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"tmp_1553943090-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"tmp_1553943090-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"tmp_1553943090-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"tmp_1553943090-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1213, 240, '_edit_last', '1'),
(1214, 240, '_thumbnail_id', '241'),
(1215, 240, '_yoast_wpseo_content_score', '60'),
(1216, 240, '_yoast_wpseo_primary_vatlieu_tags', '31'),
(1219, 240, '_edit_lock', '1560841373:1'),
(1220, 244, '_wp_attached_file', '2019/06/tmp_1554033982.jpg'),
(1221, 244, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:667;s:4:\"file\";s:26:\"2019/06/tmp_1554033982.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"tmp_1554033982-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"tmp_1554033982-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"tmp_1554033982-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"tmp_1554033982-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1222, 243, '_edit_last', '1'),
(1223, 243, '_thumbnail_id', '244'),
(1224, 243, '_yoast_wpseo_content_score', '60'),
(1225, 243, '_yoast_wpseo_primary_vatlieu_tags', '32'),
(1228, 243, '_edit_lock', '1560798158:1'),
(1229, 247, '_wp_attached_file', '2019/06/tmp_1554041125.jpg'),
(1230, 247, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:667;s:4:\"file\";s:26:\"2019/06/tmp_1554041125.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"tmp_1554041125-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:11:\"placeholder\";s:198:\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAACWAQMAAAAGz+OhAAAAA1BMVEUAAP+KeNJXAAAAAXRSTlMAQObYZgAAAAlwSFlzAAAOxAAADsQBlSsOGwAAABpJREFUSMftwTEBAAAAwqD1T20ND6AAAIB3Awu4AAFdkeOZAAAAAElFTkSuQmCC\";}s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"tmp_1554041125-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";s:11:\"placeholder\";s:202:\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAACnAQMAAACRs/OZAAAAA1BMVEUAAP+KeNJXAAAAAXRSTlMAQObYZgAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAB1JREFUWMPtwTEBAAAAwqD1T20IX6AAAAAAAAC4DBlxAAHnbQEuAAAAAElFTkSuQmCC\";}s:12:\"medium_large\";a:5:{s:4:\"file\";s:26:\"tmp_1554041125-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";s:11:\"placeholder\";s:250:\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAwAAAAGrAQMAAABNC2LJAAAAA1BMVEUAAP+KeNJXAAAAAXRSTlMAQObYZgAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAD9JREFUeNrtwTEBAAAAwqD1T20ND6AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAbgyhywABLWn+7wAAAABJRU5ErkJggg==\";}s:5:\"large\";a:5:{s:4:\"file\";s:27:\"tmp_1554041125-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";s:11:\"placeholder\";s:290:\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAABAAAAAI5AQMAAAAFdtqfAAAAA1BMVEUAAP+KeNJXAAAAAXRSTlMAQObYZgAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAF5JREFUeNrtwTEBAAAAwqD1T20MH6AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAM4GHsgAAQq3YgMAAAAASUVORK5CYII=\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:11:\"placeholder\";s:326:\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAABLAAAAKbAQMAAADfVOFDAAAAA1BMVEUAAP+KeNJXAAAAAXRSTlMAQObYZgAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAHhJREFUeNrtwTEBAAAAwqD1T20KP6AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA4GyJfAABgKE2ZAAAAABJRU5ErkJggg==\";}'),
(1231, 246, '_edit_last', '1'),
(1232, 246, '_thumbnail_id', '247'),
(1233, 246, '_yoast_wpseo_content_score', '60'),
(1234, 246, '_yoast_wpseo_primary_vatlieu_tags', '33'),
(1237, 246, '_edit_lock', '1560772774:1'),
(1238, 250, '_wp_attached_file', '2019/06/tmp_1554055221.jpg'),
(1239, 250, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:667;s:4:\"file\";s:26:\"2019/06/tmp_1554055221.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"tmp_1554055221-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"tmp_1554055221-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"tmp_1554055221-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"tmp_1554055221-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1240, 249, '_edit_last', '1'),
(1241, 249, '_thumbnail_id', '250'),
(1242, 249, '_yoast_wpseo_content_score', '60'),
(1243, 249, '_yoast_wpseo_primary_vatlieu_tags', '34'),
(1246, 249, '_edit_lock', '1560772780:1'),
(1247, 253, '_wp_attached_file', '2019/06/tmp_1554043876.jpg'),
(1248, 253, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:667;s:4:\"file\";s:26:\"2019/06/tmp_1554043876.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"tmp_1554043876-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"tmp_1554043876-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"tmp_1554043876-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"tmp_1554043876-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1249, 252, '_edit_last', '1'),
(1250, 252, '_thumbnail_id', '253'),
(1251, 252, '_yoast_wpseo_content_score', '60'),
(1252, 252, '_yoast_wpseo_primary_vatlieu_tags', '35'),
(1255, 252, '_edit_lock', '1560772829:1'),
(1256, 255, '_edit_last', '1'),
(1257, 255, '_yoast_wpseo_content_score', '30'),
(1258, 255, '_yoast_wpseo_primary_vatlieu_tags', '36'),
(1259, 255, '_qts_slug_vi', 'english-thiet-bi'),
(1260, 255, '_qts_slug_en', 'thiet-bi'),
(1261, 255, '_edit_lock', '1560765408:1'),
(1262, 255, '_wp_trash_meta_status', 'publish'),
(1263, 255, '_wp_trash_meta_time', '1560765551'),
(1264, 255, '_wp_desired_post_slug', 'english-thiet-bi'),
(1267, 233, '_qts_slug_vi', 'nhan-su-2'),
(1268, 233, '_qts_slug_en', 'nhan-su'),
(1271, 240, '_wp_old_slug', 'english-lat-nen'),
(1280, 249, '_wp_old_slug', 'english-den-dien'),
(1281, 249, '_qts_slug_vi', 'den-dien'),
(1282, 249, '_qts_slug_en', 'electric-lamps'),
(1283, 243, '_wp_old_slug', 'english-op-tuong'),
(1286, 246, '_wp_old_slug', 'english-noi-that'),
(1287, 246, '_qts_slug_vi', 'noi-that'),
(1288, 246, '_qts_slug_en', 'interior'),
(1289, 252, '_wp_old_slug', 'english-furniture'),
(1290, 252, '_qts_slug_vi', 'furniture'),
(1291, 252, '_qts_slug_en', 'furniture'),
(1292, 263, '_edit_last', '1'),
(1293, 263, '_thumbnail_id', '64'),
(1294, 263, '_yoast_wpseo_content_score', '60'),
(1295, 263, '_yoast_wpseo_primary_goithieu_tags', '37'),
(1298, 263, '_edit_lock', '1560851314:1'),
(1301, 214, '_qts_slug_vi', 'vat-lieu'),
(1302, 214, '_qts_slug_en', 'materials'),
(1303, 18, '_qts_slug_vi', 'trang-chu'),
(1304, 18, '_qts_slug_en', 'home'),
(1311, 86, '_qts_slug_vi', 'van-tien-dung'),
(1312, 86, '_qts_slug_en', 'van-tien-dung'),
(1313, 243, '_qts_slug_vi', 'op-tuong'),
(1314, 243, '_qts_slug_en', 'wall-tiles'),
(1323, 240, 'vdw_gallery_id', 'a:1:{i:0;s:3:\"244\";}'),
(1332, 240, '_qts_slug_vi', 'lat-nen'),
(1333, 240, '_qts_slug_en', 'background-paving'),
(1334, 272, '_edit_last', '1'),
(1335, 272, '_thumbnail_id', '247'),
(1336, 272, 'video_url', ''),
(1337, 272, '_yoast_wpseo_content_score', '60'),
(1338, 272, '_yoast_wpseo_primary_portfolio_category', ''),
(1339, 272, '_yoast_wpseo_primary_portfolio_categories', ''),
(1340, 272, '_qts_slug_vi', 'test'),
(1341, 272, '_qts_slug_en', 'tieng-viet-test'),
(1342, 272, '_edit_lock', '1560841542:1'),
(1343, 274, '_edit_last', '1'),
(1344, 274, 'vp_layout', 'grid'),
(1345, 274, 'vp_tiles_type', '3|1,1|'),
(1346, 274, 'vp_masonry_columns', '3'),
(1347, 274, 'vp_grid_columns', '3'),
(1348, 274, 'vp_justified_row_height', '200'),
(1349, 274, 'vp_justified_row_height_tolerance', '0.25'),
(1350, 274, 'vp_slider_effect', 'slide'),
(1351, 274, 'vp_slider_speed', '0.3'),
(1352, 274, 'vp_slider_autoplay', '6'),
(1353, 274, 'vp_slider_autoplay_hover_pause', 'false'),
(1354, 274, 'vp_slider_items_height_type', 'dynamic'),
(1355, 274, 'vp_slider_items_height_static', '300'),
(1356, 274, 'vp_slider_items_height_dynamic', '80'),
(1357, 274, 'vp_slider_slides_per_view_type', 'custom'),
(1358, 274, 'vp_slider_slides_per_view_custom', '3'),
(1359, 274, 'vp_slider_centered_slides', 'true'),
(1360, 274, 'vp_slider_loop', 'false'),
(1361, 274, 'vp_slider_free_mode', 'false'),
(1362, 274, 'vp_slider_free_mode_sticky', 'false'),
(1363, 274, 'vp_slider_arrows', 'true'),
(1364, 274, 'vp_slider_arrows_icon_prev', 'fas fa-angle-left'),
(1365, 274, 'vp_slider_arrows_icon_next', 'fas fa-angle-right'),
(1366, 274, 'vp_slider_bullets', 'false'),
(1367, 274, 'vp_slider_bullets_dynamic', 'false'),
(1368, 274, 'vp_slider_mousewheel', 'false'),
(1369, 274, 'vp_slider_thumbnails', 'false'),
(1370, 274, 'vp_slider_thumbnails_gap', '15'),
(1371, 274, 'vp_slider_thumbnails_height_type', 'static'),
(1372, 274, 'vp_slider_thumbnails_height_static', '100'),
(1373, 274, 'vp_slider_thumbnails_height_dynamic', '30'),
(1374, 274, 'vp_slider_thumbnails_per_view_type', 'custom'),
(1375, 274, 'vp_slider_thumbnails_per_view_custom', '8'),
(1376, 274, 'vp_items_gap', '15'),
(1377, 274, 'vp_items_count', '6'),
(1378, 274, 'vp_stretch', 'false'),
(1379, 274, 'vp_items_style', 'fly'),
(1380, 274, 'vp_items_style_default__show_title', 'true'),
(1381, 274, 'vp_items_style_default__show_categories', 'true'),
(1382, 274, 'vp_items_style_default__categories_count', '1'),
(1383, 274, 'vp_items_style_default__show_date', 'false'),
(1384, 274, 'vp_items_style_default__date_format', 'F j, Y'),
(1385, 274, 'vp_items_style_default__show_excerpt', 'false'),
(1386, 274, 'vp_items_style_default__excerpt_words_count', '15'),
(1387, 274, 'vp_items_style_default__align', 'center'),
(1388, 274, 'vp_items_style_default__show_read_more', 'false'),
(1389, 274, 'vp_items_style_default__read_more_label', 'Read More'),
(1390, 274, 'vp_items_style_fly__show_title', 'true'),
(1391, 274, 'vp_items_style_fly__show_categories', 'true'),
(1392, 274, 'vp_items_style_fly__categories_count', '1'),
(1393, 274, 'vp_items_style_fly__show_date', 'false'),
(1394, 274, 'vp_items_style_fly__date_format', 'F j, Y'),
(1395, 274, 'vp_items_style_fly__show_excerpt', 'false'),
(1396, 274, 'vp_items_style_fly__excerpt_words_count', '15'),
(1397, 274, 'vp_items_style_fly__show_icon', 'false'),
(1398, 274, 'vp_items_style_fly__icon', 'fas fa-search'),
(1399, 274, 'vp_items_style_fly__icon_video', 'fas fa-play'),
(1400, 274, 'vp_items_style_fly__align', 'center'),
(1401, 274, 'vp_items_style_fly__bg_color', '#212125'),
(1402, 274, 'vp_items_style_fly__text_color', '#fff'),
(1403, 274, 'vp_items_style_emerge__show_title', 'true'),
(1404, 274, 'vp_items_style_emerge__show_categories', 'true'),
(1405, 274, 'vp_items_style_emerge__categories_count', '1'),
(1406, 274, 'vp_items_style_emerge__show_date', 'false'),
(1407, 274, 'vp_items_style_emerge__date_format', 'F j, Y'),
(1408, 274, 'vp_items_style_emerge__show_excerpt', 'false'),
(1409, 274, 'vp_items_style_emerge__excerpt_words_count', '15'),
(1410, 274, 'vp_items_style_emerge__align', 'center'),
(1411, 274, 'vp_items_style_emerge__bg_color', '#fff'),
(1412, 274, 'vp_items_style_emerge__text_color', '#000'),
(1413, 274, 'vp_items_style_fade__show_title', 'true'),
(1414, 274, 'vp_items_style_fade__show_categories', 'true'),
(1415, 274, 'vp_items_style_fade__categories_count', '1'),
(1416, 274, 'vp_items_style_fade__show_date', 'false'),
(1417, 274, 'vp_items_style_fade__date_format', 'F j, Y'),
(1418, 274, 'vp_items_style_fade__show_excerpt', 'false'),
(1419, 274, 'vp_items_style_fade__excerpt_words_count', '15'),
(1420, 274, 'vp_items_style_fade__show_icon', 'false'),
(1421, 274, 'vp_items_style_fade__icon', 'fas fa-search'),
(1422, 274, 'vp_items_style_fade__icon_video', 'fas fa-play'),
(1423, 274, 'vp_items_style_fade__align', 'center'),
(1424, 274, 'vp_items_style_fade__bg_color', 'rgba(0, 0, 0, 0.85)'),
(1425, 274, 'vp_items_style_fade__text_color', '#fff'),
(1426, 274, 'vp_items_click_action', 'url'),
(1427, 274, 'vp_items_click_action_url_target', ''),
(1428, 274, 'vp_items_click_action_popup_title_source', 'title'),
(1429, 274, 'vp_items_click_action_popup_description_source', 'description'),
(1430, 274, 'vp_filter', 'default'),
(1431, 274, 'vp_filter_align', 'center'),
(1432, 274, 'vp_filter_show_count', 'false'),
(1433, 274, 'vp_filter_text_all', 'All'),
(1434, 274, 'vp_sort', 'false'),
(1435, 274, 'vp_sort_align', 'center'),
(1436, 274, 'vp_pagination_style', 'default'),
(1437, 274, 'vp_pagination', 'load-more'),
(1438, 274, 'vp_pagination_infinite_notice', ''),
(1439, 274, 'vp_pagination_align', 'center'),
(1440, 274, 'vp_pagination_infinite_texts', ''),
(1441, 274, 'vp_pagination_load_more_texts', ''),
(1442, 274, 'vp_pagination_infinite_text_load', 'Load more'),
(1443, 274, 'vp_pagination_infinite_text_loading', 'Loading more...'),
(1444, 274, 'vp_pagination_infinite_text_end_list', 'You’ve reached the end of the list'),
(1445, 274, 'vp_pagination_load_more_text_load', 'Load more'),
(1446, 274, 'vp_pagination_load_more_text_loading', 'Loading more...'),
(1447, 274, 'vp_pagination_load_more_text_end_list', 'You’ve reached the end of the list'),
(1448, 274, 'vp_pagination_paged__show_arrows', 'true'),
(1449, 274, 'vp_pagination_paged__arrows_icon_prev', 'fas fa-angle-left'),
(1450, 274, 'vp_pagination_paged__arrows_icon_next', 'fas fa-angle-right'),
(1451, 274, 'vp_pagination_paged__show_numbers', 'true'),
(1452, 274, 'vp_custom_css', ''),
(1453, 274, 'vp_controls_styles', '.vp-id-274 .vp-portfolio__items-style-fly .vp-portfolio__item-overlay { background-color: #212125; } .vp-id-274 .vp-portfolio__items-style-fly .vp-portfolio__item-overlay { color: #fff; }'),
(1454, 274, 'vp_content_source', 'portfolio'),
(1455, 274, 'vp_posts_source', 'portfolio'),
(1456, 274, 'vp_posts_ids', ''),
(1457, 274, 'vp_posts_excluded_ids', ''),
(1458, 274, 'vp_posts_custom_query', ''),
(1459, 274, 'vp_posts_custom_query_clearfix', ''),
(1460, 274, 'vp_posts_taxonomies', ''),
(1461, 274, 'vp_posts_taxonomies_relation', 'or'),
(1462, 274, 'vp_posts_order_by', 'post_date'),
(1463, 274, 'vp_posts_order_direction', 'desc'),
(1464, 274, 'vp_images', '[]'),
(1465, 274, 'vp_images_order_by', 'default'),
(1466, 274, 'vp_images_order_direction', 'asc'),
(1467, 274, '_qts_slug_vi', '274'),
(1468, 274, '_qts_slug_en', '274'),
(1469, 274, '_edit_lock', '1560841597:1'),
(1470, 181, '_wp_trash_meta_status', 'publish'),
(1471, 181, '_wp_trash_meta_time', '1560841773'),
(1472, 181, '_wp_desired_post_slug', 'thi-cong'),
(1473, 272, '_wp_trash_meta_status', 'publish'),
(1474, 272, '_wp_trash_meta_time', '1560841778'),
(1475, 272, '_wp_desired_post_slug', 'test'),
(1476, 276, '_edit_last', '1'),
(1479, 276, '_yoast_wpseo_content_score', '60'),
(1480, 276, '_wp_post_template', 'single/single-thicong.php'),
(1481, 276, 'chu_dau_tu', ''),
(1482, 276, '_chu_dau_tu', 'field_5cf78facebc94'),
(1483, 276, 'dia_chi', ''),
(1484, 276, '_dia_chi', 'field_5cf79058ebc95'),
(1485, 276, 'dien_tich', ''),
(1486, 276, '_dien_tich', 'field_5cf79077ebc96'),
(1487, 276, 'huong', ''),
(1488, 276, '_huong', 'field_5cf790bcebc97'),
(1489, 277, 'chu_dau_tu', ''),
(1490, 277, '_chu_dau_tu', 'field_5cf78facebc94'),
(1491, 277, 'dia_chi', ''),
(1492, 277, '_dia_chi', 'field_5cf79058ebc95'),
(1493, 277, 'dien_tich', ''),
(1494, 277, '_dien_tich', 'field_5cf79077ebc96'),
(1495, 277, 'huong', ''),
(1496, 277, '_huong', 'field_5cf790bcebc97'),
(1497, 276, '_yoast_wpseo_primary_category', '5'),
(1500, 276, '_edit_lock', '1560850715:1'),
(1503, 278, 'chu_dau_tu', ''),
(1504, 278, '_chu_dau_tu', 'field_5cf78facebc94'),
(1505, 278, 'dia_chi', ''),
(1506, 278, '_dia_chi', 'field_5cf79058ebc95'),
(1507, 278, 'dien_tich', ''),
(1508, 278, '_dien_tich', 'field_5cf79077ebc96'),
(1509, 278, 'huong', ''),
(1510, 278, '_huong', 'field_5cf790bcebc97'),
(1525, 279, 'chu_dau_tu', ''),
(1526, 279, '_chu_dau_tu', 'field_5cf78facebc94'),
(1527, 279, 'dia_chi', ''),
(1528, 279, '_dia_chi', 'field_5cf79058ebc95'),
(1529, 279, 'dien_tich', ''),
(1530, 279, '_dien_tich', 'field_5cf79077ebc96'),
(1531, 279, 'huong', ''),
(1532, 279, '_huong', 'field_5cf790bcebc97'),
(1533, 276, '_qts_slug_vi', 'thi-cong'),
(1534, 276, '_qts_slug_en', 'construction'),
(1535, 263, '_qts_slug_vi', 'test-1'),
(1536, 263, '_qts_slug_en', 'tieng-viet-test-1'),
(1537, 281, '_edit_last', '1'),
(1538, 281, '_thumbnail_id', '194'),
(1539, 281, '_yoast_wpseo_content_score', '60'),
(1540, 281, '_yoast_wpseo_primary_gioithieu_tags', ''),
(1543, 281, '_edit_lock', '1560936766:1'),
(1546, 281, '_qts_slug_vi', 'van-phong-thiet-ke'),
(1547, 281, '_qts_slug_en', 'tieng-viet-van-phong-thiet-ke'),
(1548, 285, '_edit_last', '1'),
(1549, 285, '_thumbnail_id', '244'),
(1552, 285, '_yoast_wpseo_content_score', '60'),
(1554, 285, 'chu_dau_tu', ''),
(1555, 285, '_chu_dau_tu', 'field_5cf78facebc94'),
(1556, 285, 'dia_chi', ''),
(1557, 285, '_dia_chi', 'field_5cf79058ebc95'),
(1558, 285, 'dien_tich', ''),
(1559, 285, '_dien_tich', 'field_5cf79077ebc96'),
(1560, 285, 'huong', ''),
(1561, 285, '_huong', 'field_5cf790bcebc97'),
(1562, 286, 'chu_dau_tu', ''),
(1563, 286, '_chu_dau_tu', 'field_5cf78facebc94'),
(1564, 286, 'dia_chi', ''),
(1565, 286, '_dia_chi', 'field_5cf79058ebc95'),
(1566, 286, 'dien_tich', ''),
(1567, 286, '_dien_tich', 'field_5cf79077ebc96'),
(1568, 286, 'huong', ''),
(1569, 286, '_huong', 'field_5cf790bcebc97'),
(1570, 285, '_yoast_wpseo_primary_category', '43'),
(1573, 285, '_edit_lock', '1561000152:1'),
(1577, 287, 'chu_dau_tu', ''),
(1578, 287, '_chu_dau_tu', 'field_5cf78facebc94'),
(1579, 287, 'dia_chi', ''),
(1580, 287, '_dia_chi', 'field_5cf79058ebc95'),
(1581, 287, 'dien_tich', ''),
(1582, 287, '_dien_tich', 'field_5cf79077ebc96'),
(1583, 287, 'huong', ''),
(1584, 287, '_huong', 'field_5cf790bcebc97'),
(1598, 289, 'chu_dau_tu', 'Nguyễn Văn Ngà'),
(1599, 289, '_chu_dau_tu', 'field_5cf78facebc94'),
(1600, 289, 'dia_chi', 'Đường Hoàng Diệu TP. Đà Nẵng'),
(1601, 289, '_dia_chi', 'field_5cf79058ebc95'),
(1602, 289, 'dien_tich', '90m2'),
(1603, 289, '_dien_tich', 'field_5cf79077ebc96'),
(1604, 289, 'huong', 'Đông'),
(1605, 289, '_huong', 'field_5cf790bcebc97'),
(1649, 290, 'chu_dau_tu', 'Nguyễn Văn Ngà'),
(1650, 290, '_chu_dau_tu', 'field_5cf78facebc94'),
(1651, 290, 'dia_chi', 'Đường Hoàng Diệu TP. Đà Nẵng'),
(1652, 290, '_dia_chi', 'field_5cf79058ebc95'),
(1653, 290, 'dien_tich', '90m2'),
(1654, 290, '_dien_tich', 'field_5cf79077ebc96'),
(1655, 290, 'huong', 'Đông'),
(1656, 290, '_huong', 'field_5cf790bcebc97'),
(1675, 291, 'chu_dau_tu', 'Nguyễn Văn Ngà'),
(1676, 291, '_chu_dau_tu', 'field_5cf78facebc94'),
(1677, 291, 'dia_chi', 'Đường Hoàng Diệu TP. Đà Nẵng'),
(1678, 291, '_dia_chi', 'field_5cf79058ebc95'),
(1679, 291, 'dien_tich', '90m2'),
(1680, 291, '_dien_tich', 'field_5cf79077ebc96'),
(1681, 291, 'huong', 'Đông'),
(1682, 291, '_huong', 'field_5cf790bcebc97'),
(1683, 170, '_qts_slug_vi', 'nguyen-van-nga'),
(1684, 170, '_qts_slug_en', 'nguyen-van-nga'),
(1687, 185, '_qts_slug_vi', 'van-phong-thiet-ke'),
(1688, 185, '_qts_slug_en', 'office-design'),
(1694, 292, '_edit_last', '1'),
(1695, 292, '_thumbnail_id', '253'),
(1698, 292, '_yoast_wpseo_content_score', '60'),
(1700, 292, 'chu_dau_tu', ''),
(1701, 292, '_chu_dau_tu', 'field_5cf78facebc94'),
(1702, 292, 'dia_chi', ''),
(1703, 292, '_dia_chi', 'field_5cf79058ebc95'),
(1704, 292, 'dien_tich', ''),
(1705, 292, '_dien_tich', 'field_5cf79077ebc96'),
(1706, 292, 'huong', ''),
(1707, 292, '_huong', 'field_5cf790bcebc97'),
(1708, 293, 'chu_dau_tu', ''),
(1709, 293, '_chu_dau_tu', 'field_5cf78facebc94'),
(1710, 293, 'dia_chi', ''),
(1711, 293, '_dia_chi', 'field_5cf79058ebc95'),
(1712, 293, 'dien_tich', ''),
(1713, 293, '_dien_tich', 'field_5cf79077ebc96'),
(1714, 293, 'huong', ''),
(1715, 293, '_huong', 'field_5cf790bcebc97'),
(1716, 292, '_yoast_wpseo_primary_category', '44'),
(1719, 292, '_edit_lock', '1560999518:1'),
(1728, 292, '_qts_slug_vi', 'teest2'),
(1729, 292, '_qts_slug_en', 'tieng-viet-teest2'),
(1733, 295, 'chu_dau_tu', ''),
(1734, 295, '_chu_dau_tu', 'field_5cf78facebc94'),
(1735, 295, 'dia_chi', ''),
(1736, 295, '_dia_chi', 'field_5cf79058ebc95'),
(1737, 295, 'dien_tich', ''),
(1738, 295, '_dien_tich', 'field_5cf79077ebc96'),
(1739, 295, 'huong', ''),
(1740, 295, '_huong', 'field_5cf790bcebc97'),
(1741, 285, '_qts_slug_vi', 'test-1'),
(1742, 285, '_qts_slug_en', 'tieng-viet-test-1'),
(1743, 296, '_edit_last', '1'),
(1744, 296, '_thumbnail_id', '193'),
(1747, 296, '_yoast_wpseo_content_score', '60'),
(1749, 296, 'chu_dau_tu', ''),
(1750, 296, '_chu_dau_tu', 'field_5cf78facebc94'),
(1751, 296, 'dia_chi', ''),
(1752, 296, '_dia_chi', 'field_5cf79058ebc95'),
(1753, 296, 'dien_tich', ''),
(1754, 296, '_dien_tich', 'field_5cf79077ebc96'),
(1755, 296, 'huong', ''),
(1756, 296, '_huong', 'field_5cf790bcebc97'),
(1757, 297, 'chu_dau_tu', ''),
(1758, 297, '_chu_dau_tu', 'field_5cf78facebc94'),
(1759, 297, 'dia_chi', ''),
(1760, 297, '_dia_chi', 'field_5cf79058ebc95'),
(1761, 297, 'dien_tich', ''),
(1762, 297, '_dien_tich', 'field_5cf79077ebc96'),
(1763, 297, 'huong', ''),
(1764, 297, '_huong', 'field_5cf790bcebc97'),
(1765, 296, '_yoast_wpseo_primary_category', '45'),
(1766, 296, '_qts_slug_vi', 'van-phong-thiet-ke-2'),
(1767, 296, '_qts_slug_en', 'tieng-viet-van-phong-thiet-ke'),
(1768, 296, '_edit_lock', '1561000522:1'),
(1769, 298, '_edit_last', '1'),
(1770, 298, '_thumbnail_id', '109'),
(1773, 298, '_yoast_wpseo_content_score', '60'),
(1775, 298, 'chu_dau_tu', ''),
(1776, 298, '_chu_dau_tu', 'field_5cf78facebc94'),
(1777, 298, 'dia_chi', ''),
(1778, 298, '_dia_chi', 'field_5cf79058ebc95'),
(1779, 298, 'dien_tich', ''),
(1780, 298, '_dien_tich', 'field_5cf79077ebc96'),
(1781, 298, 'huong', ''),
(1782, 298, '_huong', 'field_5cf790bcebc97'),
(1783, 299, 'chu_dau_tu', ''),
(1784, 299, '_chu_dau_tu', 'field_5cf78facebc94'),
(1785, 299, 'dia_chi', ''),
(1786, 299, '_dia_chi', 'field_5cf79058ebc95'),
(1787, 299, 'dien_tich', ''),
(1788, 299, '_dien_tich', 'field_5cf79077ebc96'),
(1789, 299, 'huong', ''),
(1790, 299, '_huong', 'field_5cf790bcebc97'),
(1791, 298, '_yoast_wpseo_primary_category', '46'),
(1794, 298, '_edit_lock', '1561000750:1'),
(1798, 300, 'chu_dau_tu', ''),
(1799, 300, '_chu_dau_tu', 'field_5cf78facebc94'),
(1800, 300, 'dia_chi', ''),
(1801, 300, '_dia_chi', 'field_5cf79058ebc95'),
(1802, 300, 'dien_tich', ''),
(1803, 300, '_dien_tich', 'field_5cf79077ebc96'),
(1804, 300, 'huong', ''),
(1805, 300, '_huong', 'field_5cf790bcebc97'),
(1806, 298, '_qts_slug_vi', 'aaa'),
(1807, 298, '_qts_slug_en', 'tieng-viet-aaa'),
(1808, 301, '_edit_last', '1'),
(1809, 301, '_thumbnail_id', '231'),
(1812, 301, '_yoast_wpseo_content_score', '60'),
(1814, 301, 'chu_dau_tu', ''),
(1815, 301, '_chu_dau_tu', 'field_5cf78facebc94'),
(1816, 301, 'dia_chi', ''),
(1817, 301, '_dia_chi', 'field_5cf79058ebc95'),
(1818, 301, 'dien_tich', ''),
(1819, 301, '_dien_tich', 'field_5cf79077ebc96'),
(1820, 301, 'huong', ''),
(1821, 301, '_huong', 'field_5cf790bcebc97'),
(1822, 302, 'chu_dau_tu', ''),
(1823, 302, '_chu_dau_tu', 'field_5cf78facebc94'),
(1824, 302, 'dia_chi', ''),
(1825, 302, '_dia_chi', 'field_5cf79058ebc95'),
(1826, 302, 'dien_tich', ''),
(1827, 302, '_dien_tich', 'field_5cf79077ebc96'),
(1828, 302, 'huong', ''),
(1829, 302, '_huong', 'field_5cf790bcebc97'),
(1830, 301, '_yoast_wpseo_primary_category', '47'),
(1831, 301, '_qts_slug_vi', 'nhan-su'),
(1832, 301, '_qts_slug_en', 'tieng-viet-nhan-su'),
(1833, 301, '_edit_lock', '1561000895:1'),
(1834, 303, '_edit_last', '1'),
(1835, 303, '_thumbnail_id', '234'),
(1838, 303, '_yoast_wpseo_content_score', '60'),
(1840, 303, 'chu_dau_tu', ''),
(1841, 303, '_chu_dau_tu', 'field_5cf78facebc94'),
(1842, 303, 'dia_chi', ''),
(1843, 303, '_dia_chi', 'field_5cf79058ebc95'),
(1844, 303, 'dien_tich', ''),
(1845, 303, '_dien_tich', 'field_5cf79077ebc96'),
(1846, 303, 'huong', ''),
(1847, 303, '_huong', 'field_5cf790bcebc97'),
(1848, 304, 'chu_dau_tu', ''),
(1849, 304, '_chu_dau_tu', 'field_5cf78facebc94'),
(1850, 304, 'dia_chi', ''),
(1851, 304, '_dia_chi', 'field_5cf79058ebc95'),
(1852, 304, 'dien_tich', ''),
(1853, 304, '_dien_tich', 'field_5cf79077ebc96'),
(1854, 304, 'huong', ''),
(1855, 304, '_huong', 'field_5cf790bcebc97'),
(1856, 303, '_yoast_wpseo_primary_category', '48'),
(1859, 303, '_edit_lock', '1561000961:1'),
(1868, 303, '_qts_slug_vi', 'hoat-dong'),
(1869, 303, '_qts_slug_en', 'tieng-viet-hoat-dong'),
(1870, 305, '_edit_last', '1'),
(1871, 305, '_thumbnail_id', '238'),
(1874, 305, '_yoast_wpseo_content_score', '60'),
(1876, 305, 'chu_dau_tu', ''),
(1877, 305, '_chu_dau_tu', 'field_5cf78facebc94'),
(1878, 305, 'dia_chi', ''),
(1879, 305, '_dia_chi', 'field_5cf79058ebc95'),
(1880, 305, 'dien_tich', ''),
(1881, 305, '_dien_tich', 'field_5cf79077ebc96'),
(1882, 305, 'huong', ''),
(1883, 305, '_huong', 'field_5cf790bcebc97'),
(1884, 306, 'chu_dau_tu', ''),
(1885, 306, '_chu_dau_tu', 'field_5cf78facebc94'),
(1886, 306, 'dia_chi', ''),
(1887, 306, '_dia_chi', 'field_5cf79058ebc95'),
(1888, 306, 'dien_tich', ''),
(1889, 306, '_dien_tich', 'field_5cf79077ebc96'),
(1890, 306, 'huong', ''),
(1891, 306, '_huong', 'field_5cf790bcebc97'),
(1892, 305, '_yoast_wpseo_primary_category', '49'),
(1893, 305, '_qts_slug_vi', 'co-cau-chuc-nang'),
(1894, 305, '_qts_slug_en', 'tieng-viet-co-cau-chuc-nang'),
(1895, 305, '_edit_lock', '1561001087:1'),
(1896, 240, '_wp_trash_meta_status', 'publish'),
(1897, 240, '_wp_trash_meta_time', '1561001387'),
(1898, 240, '_wp_desired_post_slug', 'lat-nen'),
(1899, 252, '_wp_trash_meta_status', 'publish'),
(1900, 252, '_wp_trash_meta_time', '1561001391'),
(1901, 252, '_wp_desired_post_slug', 'furniture'),
(1902, 249, '_wp_trash_meta_status', 'publish'),
(1903, 249, '_wp_trash_meta_time', '1561001394'),
(1904, 249, '_wp_desired_post_slug', 'den-dien'),
(1905, 246, '_wp_trash_meta_status', 'publish'),
(1906, 246, '_wp_trash_meta_time', '1561001398'),
(1907, 246, '_wp_desired_post_slug', 'noi-that'),
(1908, 243, '_wp_trash_meta_status', 'publish'),
(1909, 243, '_wp_trash_meta_time', '1561001401'),
(1910, 243, '_wp_desired_post_slug', 'op-tuong'),
(1911, 307, '_edit_last', '1'),
(1912, 307, '_thumbnail_id', '241'),
(1915, 307, 'vdw_gallery_id', 'a:4:{i:0;s:3:\"250\";i:1;s:3:\"247\";i:2;s:3:\"244\";i:3;s:3:\"241\";}'),
(1916, 307, '_yoast_wpseo_content_score', '60'),
(1918, 307, 'chu_dau_tu', ''),
(1919, 307, '_chu_dau_tu', 'field_5cf78facebc94'),
(1920, 307, 'dia_chi', ''),
(1921, 307, '_dia_chi', 'field_5cf79058ebc95'),
(1922, 307, 'dien_tich', ''),
(1923, 307, '_dien_tich', 'field_5cf79077ebc96'),
(1924, 307, 'huong', ''),
(1925, 307, '_huong', 'field_5cf790bcebc97'),
(1926, 308, 'chu_dau_tu', ''),
(1927, 308, '_chu_dau_tu', 'field_5cf78facebc94'),
(1928, 308, 'dia_chi', ''),
(1929, 308, '_dia_chi', 'field_5cf79058ebc95'),
(1930, 308, 'dien_tich', ''),
(1931, 308, '_dien_tich', 'field_5cf79077ebc96'),
(1932, 308, 'huong', ''),
(1933, 308, '_huong', 'field_5cf790bcebc97'),
(1934, 307, '_yoast_wpseo_primary_category', '51'),
(1935, 307, '_qts_slug_vi', 'lat-nen'),
(1936, 307, '_qts_slug_en', 'tieng-viet-lat-nen'),
(1937, 307, '_edit_lock', '1561001577:1'),
(1938, 309, '_menu_item_type', 'taxonomy'),
(1939, 309, '_menu_item_menu_item_parent', '0'),
(1940, 309, '_menu_item_object_id', '45'),
(1941, 309, '_menu_item_object', 'category'),
(1942, 309, '_menu_item_target', ''),
(1943, 309, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1944, 309, '_menu_item_xfn', ''),
(1945, 309, '_menu_item_url', ''),
(1947, 310, '_menu_item_type', 'taxonomy'),
(1948, 310, '_menu_item_menu_item_parent', '0'),
(1949, 310, '_menu_item_object_id', '50'),
(1950, 310, '_menu_item_object', 'category'),
(1951, 310, '_menu_item_target', ''),
(1952, 310, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1953, 310, '_menu_item_xfn', ''),
(1954, 310, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-06-04 12:51:55', '2019-06-04 12:51:55', '<!-- wp:paragraph -->\n<p>Cảm ơn vì đã sử dụng WordPress. Đây là bài viết đầu tiên của bạn. Sửa hoặc xóa nó, và bắt đầu bài viết của bạn nhé!</p>\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'trash', 'open', 'open', '', 'chao-moi-nguoi__trashed', '', '', '2019-06-04 12:59:25', '2019-06-04 12:59:25', '', 0, 'http://127.0.0.1/kientruc/?p=1', 0, 'post', '', 1),
(5, 1, '2019-06-04 12:59:25', '2019-06-04 12:59:25', '<!-- wp:paragraph -->\n<p>Cảm ơn vì đã sử dụng WordPress. Đây là bài viết đầu tiên của bạn. Sửa hoặc xóa nó, và bắt đầu bài viết của bạn nhé!</p>\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-06-04 12:59:25', '2019-06-04 12:59:25', '', 1, 'http://127.0.0.1/kientruc/2019/06/04/1-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2019-06-04 12:59:58', '2019-06-04 12:59:58', '', 'cf89cb017be49ebac7f5', '', 'inherit', 'open', 'closed', '', 'cf89cb017be49ebac7f5', '', '', '2019-06-04 12:59:58', '2019-06-04 12:59:58', '', 0, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/cf89cb017be49ebac7f5.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2019-06-04 13:00:03', '2019-06-04 13:00:03', '{\n    \"halink-kientruc::custom_logo\": {\n        \"value\": 8,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-04 13:00:03\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '45562d5f-da7f-4fcc-b28d-f94ee11c0a3a', '', '', '2019-06-04 13:00:03', '2019-06-04 13:00:03', '', 0, 'http://127.0.0.1/kientruc/2019/06/04/45562d5f-da7f-4fcc-b28d-f94ee11c0a3a/', 0, 'customize_changeset', '', 0),
(10, 1, '2019-06-04 13:00:13', '2019-06-04 13:00:13', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-04 13:00:13\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '55afc0d6-b6fa-4ff0-bf5a-4e971ec7a4b9', '', '', '2019-06-04 13:00:13', '2019-06-04 13:00:13', '', 0, 'http://127.0.0.1/kientruc/2019/06/04/55afc0d6-b6fa-4ff0-bf5a-4e971ec7a4b9/', 0, 'customize_changeset', '', 0),
(11, 1, '2019-06-04 13:00:20', '2019-06-04 13:00:20', 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/cropped-cf89cb017be49ebac7f5.jpg', 'cropped-cf89cb017be49ebac7f5.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-cf89cb017be49ebac7f5-jpg', '', '', '2019-06-04 13:00:20', '2019-06-04 13:00:20', '', 0, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/cropped-cf89cb017be49ebac7f5.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2019-06-04 13:00:22', '2019-06-04 13:00:22', '{\n    \"site_icon\": {\n        \"value\": 11,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-04 13:00:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd0dd0e0a-9172-4737-ad71-96d9ce08335a', '', '', '2019-06-04 13:00:22', '2019-06-04 13:00:22', '', 0, 'http://127.0.0.1/kientruc/2019/06/04/d0dd0e0a-9172-4737-ad71-96d9ce08335a/', 0, 'customize_changeset', '', 0),
(18, 1, '2019-06-04 21:04:52', '2019-06-04 14:04:52', '', '[:vi]Trang chủ[:en]Home[:]', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2019-06-17 21:01:37', '2019-06-17 14:01:37', '', 0, 'http://127.0.0.1/kientruc/?page_id=18', 0, 'page', '', 0),
(19, 1, '2019-06-04 21:04:52', '2019-06-04 14:04:52', '', '[:vi]Trang chủ[:]', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-06-04 21:04:52', '2019-06-04 14:04:52', '', 18, 'http://127.0.0.1/kientruc/2019/06/04/18-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2019-06-04 21:07:41', '2019-06-04 14:07:41', '', '[:vi]Liên hệ[:en]Contact[:]', '', 'publish', 'closed', 'closed', '', 'lien-he', '', '', '2019-06-05 08:56:49', '2019-06-05 01:56:49', '', 0, 'http://127.0.0.1/kientruc/?page_id=23', 0, 'page', '', 0),
(24, 1, '2019-06-04 21:07:41', '2019-06-04 14:07:41', '', '[:vi]Liên hệ[:]', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-06-04 21:07:41', '2019-06-04 14:07:41', '', 23, 'http://127.0.0.1/kientruc/2019/06/04/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2019-06-04 21:07:57', '2019-06-04 14:07:57', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2019-06-20 10:36:24', '2019-06-20 03:36:24', '', 0, 'http://127.0.0.1/kientruc/?p=25', 5, 'nav_menu_item', '', 0),
(26, 1, '2019-06-04 21:13:46', '2019-06-04 14:13:46', '[text* txtName class:form-control placeholder \"Tên đơn vị\"]\r\n[email* txtEmail class:form-control placeholder \"Email\"]\r\n[tel* txtTel class:form-control placeholder \"SĐT\"]\r\n[textarea* txtContent class:form-control placeholder \"Ý kiến phản hồi\"]\r\n[submit id:send class:bu \"Gửi tin nhắn\"]\n1\n[txtName]\n[:vi]Thiết Kế Xây Dựng Lam Mộc[:en]Design for building Lam Moc[:] <tuan@ert.vn>\ntuan@ert.vn\nGửi đến từ: [txtName] <[txtEmail]>\r\n\r\n\r\nNội dung thông điệp:\r\n[txtContent]\r\n\r\n-- \r\nEmail này được gửi đến từ form liên hệ của website [:vi]Thiết Kế Xây Dựng Lam Mộc[:en]Design for building Lam Moc[:]\n\n\n\n\n\n[:vi]Thiết Kế Xây Dựng Lam Mộc[:en]Design for building Lam Moc[:] \"[your-subject]\"\n[:vi]Thiết Kế Xây Dựng Lam Mộc[:en]Design for building Lam Moc[:] <tuan@ert.vn>\n[your-email]\nNội dung thông điệp:\r\n[your-message]\r\n\r\n-- \r\nEmail này được gửi đến từ form liên hệ của website [:vi]Thiết Kế Xây Dựng Lam Mộc[:en]Design for building Lam Moc[:] (http://127.0.0.1/kientruc)\nReply-To: tuan@ert.vn\n\n\n\nXin cảm ơn, form đã được gửi thành công.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nCó một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nBạn phải chấp nhận điều khoản trước khi gửi form.\nMục này là bắt buộc.\nNhập quá số kí tự cho phép.\nNhập ít hơn số kí tự tối thiểu.\nĐịnh dạng ngày tháng không hợp lệ.\nNgày này trước ngày sớm nhất được cho phép.\nNgày này quá ngày gần nhất được cho phép.\nTải file lên không thành công.\nBạn không được phép tải lên file theo định dạng này.\nFile kích thước quá lớn.\nTải file lên không thành công.\nĐịnh dạng số không hợp lệ.\nCon số nhỏ hơn số nhỏ nhất cho phép.\nCon số lớn hơn số lớn nhất cho phép.\nCâu trả lời chưa đúng.\nBạn đã nhập sai mã CAPTCHA.\nĐịa chỉ e-mail không hợp lệ.\nURL không hợp lệ.\nSố điện thoại không hợp lệ.', 'Ý kiến phản hồi', '', 'publish', 'closed', 'closed', '', 'y-kien-phan-hoi', '', '', '2019-06-19 10:25:12', '2019-06-19 03:25:12', '', 0, 'http://127.0.0.1/kientruc/?post_type=wpcf7_contact_form&#038;p=26', 0, 'wpcf7_contact_form', '', 0),
(27, 1, '2019-06-04 21:22:08', '2019-06-04 14:22:08', '', '[:vi]VĂN TIẾN DŨNG[:]', '', 'publish', 'closed', 'closed', '', 'van-tien-dung', '', '', '2019-06-04 22:59:46', '2019-06-04 15:59:46', '', 0, 'http://127.0.0.1/kientruc/?post_type=sp_wp_carousel&#038;p=27', 0, 'sp_wp_carousel', '', 0),
(28, 1, '2019-06-04 21:20:40', '2019-06-04 14:20:40', '', 'view 1', '', 'inherit', 'open', 'closed', '', 'view-1', '', '', '2019-06-04 21:20:40', '2019-06-04 14:20:40', '', 27, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/view-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2019-06-04 21:20:42', '2019-06-04 14:20:42', '', 'view 2', '', 'inherit', 'open', 'closed', '', 'view-2', '', '', '2019-06-04 21:20:42', '2019-06-04 14:20:42', '', 27, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/view-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2019-06-04 21:23:07', '2019-06-04 14:23:07', '', '[:vi]AN THƯỢNG 9[:]', '', 'publish', 'closed', 'closed', '', 'an-thuong-9', '', '', '2019-06-04 22:59:32', '2019-06-04 15:59:32', '', 0, 'http://127.0.0.1/kientruc/?post_type=sp_wp_carousel&#038;p=30', 0, 'sp_wp_carousel', '', 0),
(31, 1, '2019-06-04 21:23:31', '2019-06-04 14:23:31', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2019-06-04 21:23:31', '2019-06-04 14:23:31', '', 30, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2019-06-04 21:23:35', '2019-06-04 14:23:35', '', '2,3,4.', '', 'inherit', 'open', 'closed', '', '234', '', '', '2019-06-04 21:23:35', '2019-06-04 14:23:35', '', 30, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/234..jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2019-06-04 21:23:40', '2019-06-04 14:23:40', '', '19-02-20- cam 1', '', 'inherit', 'open', 'closed', '', '19-02-20-cam-1', '', '', '2019-06-04 21:23:40', '2019-06-04 14:23:40', '', 30, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/19-02-20-cam-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2019-06-04 21:23:43', '2019-06-04 14:23:43', '', '19-02-20- cam 2', '', 'inherit', 'open', 'closed', '', '19-02-20-cam-2', '', '', '2019-06-04 21:23:43', '2019-06-04 14:23:43', '', 30, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/19-02-20-cam-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2019-06-04 21:23:46', '2019-06-04 14:23:46', '', '19-02-20- cam 3', '', 'inherit', 'open', 'closed', '', '19-02-20-cam-3', '', '', '2019-06-04 21:23:46', '2019-06-04 14:23:46', '', 30, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/19-02-20-cam-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2019-06-04 21:23:49', '2019-06-04 14:23:49', '', '19-02-20- cam 4', '', 'inherit', 'open', 'closed', '', '19-02-20-cam-4', '', '', '2019-06-04 21:23:49', '2019-06-04 14:23:49', '', 30, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/19-02-20-cam-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2019-06-04 21:23:52', '2019-06-04 14:23:52', '', '19-02-20- came', '', 'inherit', 'open', 'closed', '', '19-02-20-came', '', '', '2019-06-04 21:23:52', '2019-06-04 14:23:52', '', 30, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/19-02-20-came.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2019-06-04 21:23:55', '2019-06-04 14:23:55', '', 'BIA', '', 'inherit', 'open', 'closed', '', 'bia', '', '', '2019-06-04 21:23:55', '2019-06-04 14:23:55', '', 30, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/BIA.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2019-06-04 21:26:59', '2019-06-04 14:26:59', '', '[:vi]BẠCH ĐẰNG[:]', '', 'publish', 'closed', 'closed', '', 'bach-dang', '', '', '2019-06-06 10:20:49', '2019-06-06 03:20:49', '', 0, 'http://127.0.0.1/kientruc/?post_type=sp_wp_carousel&#038;p=39', 0, 'sp_wp_carousel', '', 0),
(40, 1, '2019-06-04 21:26:38', '2019-06-04 14:26:38', '', 'MÁI CÓ BẠC CHE', '', 'inherit', 'open', 'closed', '', 'mai-co-bac-che', '', '', '2019-06-04 21:26:38', '2019-06-04 14:26:38', '', 39, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/MÁI-CÓ-BẠC-CHE.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2019-06-04 21:26:43', '2019-06-04 14:26:43', '', 'MÁI DẤU MÁI DÙ', '', 'inherit', 'open', 'closed', '', 'mai-dau-mai-du', '', '', '2019-06-04 21:26:43', '2019-06-04 14:26:43', '', 39, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/MÁI-DẤU-MÁI-DÙ.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2019-06-04 21:26:47', '2019-06-04 14:26:47', '', 'PC', '', 'inherit', 'open', 'closed', '', 'pc', '', '', '2019-06-04 21:26:47', '2019-06-04 14:26:47', '', 39, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/PC.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2019-06-04 21:28:29', '2019-06-04 14:28:29', '', '[:vi]GIÁNG NAM 2[:]', '', 'publish', 'closed', 'closed', '', 'giang-nam-2', '', '', '2019-06-06 10:40:11', '2019-06-06 03:40:11', '', 0, 'http://127.0.0.1/kientruc/?post_type=sp_wp_carousel&#038;p=43', 0, 'sp_wp_carousel', '', 0),
(44, 1, '2019-06-04 21:28:04', '2019-06-04 14:28:04', '', 'BIA', '', 'inherit', 'open', 'closed', '', 'bia-2', '', '', '2019-06-04 21:28:04', '2019-06-04 14:28:04', '', 43, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/BIA-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2019-06-04 21:28:11', '2019-06-04 14:28:11', '', 'P.AN 1 V1', '', 'inherit', 'open', 'closed', '', 'p-an-1-v1', '', '', '2019-06-04 21:28:11', '2019-06-04 14:28:11', '', 43, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/P.AN-1-V1.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2019-06-04 21:28:13', '2019-06-04 14:28:13', '', 'P.AN 1 V2', '', 'inherit', 'open', 'closed', '', 'p-an-1-v2', '', '', '2019-06-04 21:28:13', '2019-06-04 14:28:13', '', 43, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/P.AN-1-V2.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2019-06-04 21:29:54', '2019-06-04 14:29:54', '', '[:vi]HOÀNG KẾ VIÊM[:]', '', 'publish', 'closed', 'closed', '', 'hoang-ke-viem', '', '', '2019-06-04 22:56:19', '2019-06-04 15:56:19', '', 0, 'http://127.0.0.1/kientruc/?post_type=sp_wp_carousel&#038;p=47', 0, 'sp_wp_carousel', '', 0),
(48, 1, '2019-06-04 21:29:39', '2019-06-04 14:29:39', '', '1', '', 'inherit', 'open', 'closed', '', '1-2', '', '', '2019-06-04 21:29:39', '2019-06-04 14:29:39', '', 47, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2019-06-04 21:29:41', '2019-06-04 14:29:41', '', '2.3.4', '', 'inherit', 'open', 'closed', '', '2-3-4', '', '', '2019-06-04 21:29:41', '2019-06-04 14:29:41', '', 47, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/2.3.4.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2019-06-04 21:29:43', '2019-06-04 14:29:43', '', 'P.AN 1', '', 'inherit', 'open', 'closed', '', 'p-an-1', '', '', '2019-06-04 21:29:43', '2019-06-04 14:29:43', '', 47, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/P.AN-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2019-06-04 21:32:59', '2019-06-04 14:32:59', '', '[:vi]HUỲNH NGỌC HUỆ[:]', '', 'publish', 'closed', 'closed', '', 'huynh-ngoc-hue', '', '', '2019-06-04 22:55:34', '2019-06-04 15:55:34', '', 0, 'http://127.0.0.1/kientruc/?post_type=sp_wp_carousel&#038;p=51', 0, 'sp_wp_carousel', '', 0),
(52, 1, '2019-06-04 21:31:07', '2019-06-04 14:31:07', '', '19-02-14- phoi canh', '', 'inherit', 'open', 'closed', '', '19-02-14-phoi-canh', '', '', '2019-06-04 21:31:07', '2019-06-04 14:31:07', '', 51, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/19-02-14-phoi-canh.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2019-06-04 21:31:08', '2019-06-04 14:31:08', '', 'BIA', '', 'inherit', 'open', 'closed', '', 'bia-3', '', '', '2019-06-04 21:31:08', '2019-06-04 14:31:08', '', 51, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/BIA-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2019-06-04 21:31:15', '2019-06-04 14:31:15', '', 'tang 1', '', 'inherit', 'open', 'closed', '', 'tang-1', '', '', '2019-06-04 21:31:15', '2019-06-04 14:31:15', '', 51, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tang-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2019-06-04 21:31:17', '2019-06-04 14:31:17', '', 'tang 2', '', 'inherit', 'open', 'closed', '', 'tang-2', '', '', '2019-06-04 21:31:17', '2019-06-04 14:31:17', '', 51, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tang-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2019-06-04 21:31:19', '2019-06-04 14:31:19', '', 'tang 3', '', 'inherit', 'open', 'closed', '', 'tang-3', '', '', '2019-06-04 21:31:19', '2019-06-04 14:31:19', '', 51, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tang-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2019-06-04 21:36:26', '2019-06-04 14:36:26', '', '[:vi]AN THƯỢNG 9[:en]AN THUONG 9[:]', '', 'publish', 'open', 'open', '', 'an-thuong-9', '', '', '2019-06-14 14:04:43', '2019-06-14 07:04:43', '', 0, 'http://127.0.0.1/kientruc/?p=57', 0, 'post', '', 0),
(58, 1, '2019-06-04 21:36:26', '2019-06-04 14:36:26', '', '[:vi]AN THƯỢNG 9[:]', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2019-06-04 21:36:26', '2019-06-04 14:36:26', '', 57, 'http://127.0.0.1/kientruc/2019/06/04/57-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2019-06-04 21:41:06', '2019-06-04 14:41:06', '', '[:vi]KHU FPT[:]', '', 'publish', 'closed', 'closed', '', 'khu-fpt', '', '', '2019-06-04 22:55:05', '2019-06-04 15:55:05', '', 0, 'http://127.0.0.1/kientruc/?post_type=sp_wp_carousel&#038;p=59', 0, 'sp_wp_carousel', '', 0),
(60, 1, '2019-06-04 21:40:55', '2019-06-04 14:40:55', '', 'P.AN 1', '', 'inherit', 'open', 'closed', '', 'p-an-1-2', '', '', '2019-06-04 21:40:55', '2019-06-04 14:40:55', '', 59, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/P.AN-1-.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2019-06-04 21:42:50', '2019-06-04 14:42:50', '', '[:vi]PHAN ĐĂNG LƯU[:]', '', 'publish', 'closed', 'closed', '', 'phan-dang-luu', '', '', '2019-06-04 22:54:48', '2019-06-04 15:54:48', '', 0, 'http://127.0.0.1/kientruc/?post_type=sp_wp_carousel&#038;p=61', 0, 'sp_wp_carousel', '', 0),
(62, 1, '2019-06-04 21:42:07', '2019-06-04 14:42:07', '', '1', '', 'inherit', 'open', 'closed', '', '1-3', '', '', '2019-06-04 21:42:07', '2019-06-04 14:42:07', '', 61, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2019-06-04 21:42:10', '2019-06-04 14:42:10', '', 'BIA', '', 'inherit', 'open', 'closed', '', 'bia-4', '', '', '2019-06-04 21:42:10', '2019-06-04 14:42:10', '', 61, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/BIA-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2019-06-04 21:42:17', '2019-06-04 14:42:17', '', 'VIEW 2', '', 'inherit', 'open', 'closed', '', 'view-2-2', '', '', '2019-06-04 21:42:17', '2019-06-04 14:42:17', '', 61, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/VIEW-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2019-06-04 21:44:24', '2019-06-04 14:44:24', '', '[:vi]PHÒNG TRỌ 2.9[:]', '', 'publish', 'closed', 'closed', '', 'phong-tro-2-9', '', '', '2019-06-04 22:54:31', '2019-06-04 15:54:31', '', 0, 'http://127.0.0.1/kientruc/?post_type=sp_wp_carousel&#038;p=65', 0, 'sp_wp_carousel', '', 0),
(66, 1, '2019-06-04 21:43:58', '2019-06-04 14:43:58', '', 'tang 2', '', 'inherit', 'open', 'closed', '', 'tang-2-2', '', '', '2019-06-04 21:43:58', '2019-06-04 14:43:58', '', 65, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tang-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2019-06-04 21:44:03', '2019-06-04 14:44:03', '', 'view 1', '', 'inherit', 'open', 'closed', '', 'view-1-2', '', '', '2019-06-04 21:44:03', '2019-06-04 14:44:03', '', 65, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/view-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2019-06-04 21:44:05', '2019-06-04 14:44:05', '', 'view 2', '', 'inherit', 'open', 'closed', '', 'view-2-3', '', '', '2019-06-04 21:44:05', '2019-06-04 14:44:05', '', 65, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/view-2-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2019-06-04 21:46:38', '2019-06-04 14:46:38', '[sp_wpcarousel id=\"30\"]', '[:vi]AN THƯỢNG 9[:en]AN THUONG 9[:]', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2019-06-04 21:46:38', '2019-06-04 14:46:38', '', 57, 'http://127.0.0.1/kientruc/2019/06/04/57-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2019-06-04 21:52:30', '2019-06-04 14:52:30', '', '[:vi]BẠCH ĐẰNG[:en]BACH DANG[:]', '', 'publish', 'open', 'open', '', 'bach-dang', '', '', '2019-06-14 14:03:25', '2019-06-14 07:03:25', '', 0, 'http://127.0.0.1/kientruc/?p=70', 0, 'post', '', 0),
(71, 1, '2019-06-04 21:52:30', '2019-06-04 14:52:30', '[sp_wpcarousel id=\"39\"]', '[:vi]BẠCH ĐẰNG[:en]BACH DANG[:]', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2019-06-04 21:52:30', '2019-06-04 14:52:30', '', 70, 'http://127.0.0.1/kientruc/2019/06/04/70-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2019-06-04 21:54:14', '2019-06-04 14:54:14', '[:vi]&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;[:]', '[:vi]HOÀNG KẾ VIÊM[:en]HOANG KE VIEM[:]', '', 'publish', 'open', 'open', '', 'hoang-ke-viem', '', '', '2019-06-14 14:00:42', '2019-06-14 07:00:42', '', 0, 'http://127.0.0.1/kientruc/?p=72', 0, 'post', '', 0),
(73, 1, '2019-06-04 21:54:14', '2019-06-04 14:54:14', '[:vi][sp_wpcarousel id=\"47\"][:]', '[:vi]HOÀNG KẾ VIÊM[:]', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2019-06-04 21:54:14', '2019-06-04 14:54:14', '', 72, 'http://127.0.0.1/kientruc/2019/06/04/72-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2019-06-04 21:57:11', '2019-06-04 14:57:11', '', '[:vi]PHÒNG TRỌ 2.9[:en]ACCOMMODATION 2.9[:]', '', 'publish', 'open', 'open', '', 'phong-tro-2-9', '', '', '2019-06-07 08:31:03', '2019-06-07 01:31:03', '', 0, 'http://127.0.0.1/kientruc/?p=75', 0, 'post', '', 0),
(76, 1, '2019-06-04 21:57:11', '2019-06-04 14:57:11', '[:vi][sp_wpcarousel id=\"65\"][:]', '[:vi]PHÒNG TRỌ 2.9[:]', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2019-06-04 21:57:11', '2019-06-04 14:57:11', '', 75, 'http://127.0.0.1/kientruc/2019/06/04/75-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2019-06-04 21:59:00', '2019-06-04 14:59:00', '', '[:vi]PHAN ĐĂNG LƯU[:en]PHAN ĐANG LUU[:]', '', 'publish', 'open', 'open', '', 'phan-dang-luu', '', '', '2019-06-07 08:29:44', '2019-06-07 01:29:44', '', 0, 'http://127.0.0.1/kientruc/?p=77', 0, 'post', '', 0),
(78, 1, '2019-06-04 21:59:00', '2019-06-04 14:59:00', '[:vi][sp_wpcarousel id=\"61\"][:]', '[:vi]PHAN ĐĂNG LƯU[:]', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2019-06-04 21:59:00', '2019-06-04 14:59:00', '', 77, 'http://127.0.0.1/kientruc/2019/06/04/77-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2019-06-04 22:01:53', '2019-06-04 15:01:53', '', '[:vi]KHU FPT[:en]FPT AREA[:]', '', 'publish', 'open', 'open', '', 'khu-fpt', '', '', '2019-06-07 08:26:01', '2019-06-07 01:26:01', '', 0, 'http://127.0.0.1/kientruc/?p=79', 0, 'post', '', 0),
(80, 1, '2019-06-04 22:01:36', '2019-06-04 15:01:36', '', 'P.AN 1', '', 'inherit', 'open', 'closed', '', 'p-an-1-3', '', '', '2019-06-04 22:01:36', '2019-06-04 15:01:36', '', 79, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/P.AN-1-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2019-06-04 22:01:53', '2019-06-04 15:01:53', '[:vi][sp_wpcarousel id=\"59\"][:]', '[:vi]KHU FPT[:]', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2019-06-04 22:01:53', '2019-06-04 15:01:53', '', 79, 'http://127.0.0.1/kientruc/2019/06/04/79-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2019-06-04 22:03:11', '2019-06-04 15:03:11', '', '[:vi]HUỲNH NGỌC HUỆ[:en]HUYNH NGOC HUE[:]', '', 'publish', 'open', 'open', '', 'huynh-ngoc-hue', '', '', '2019-06-07 08:23:24', '2019-06-07 01:23:24', '', 0, 'http://127.0.0.1/kientruc/?p=82', 0, 'post', '', 0),
(83, 1, '2019-06-04 22:03:11', '2019-06-04 15:03:11', '[:vi][sp_wpcarousel id=\"51\"][:]', '[:vi]HUỲNH NGỌC HUỆ[:]', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2019-06-04 22:03:11', '2019-06-04 15:03:11', '', 82, 'http://127.0.0.1/kientruc/2019/06/04/82-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2019-06-04 22:04:55', '2019-06-04 15:04:55', '', '[:vi]GIÁNG NAM 2[:en]GIANG NAM 2[:]', '', 'publish', 'open', 'open', '', 'giang-nam-2', '', '', '2019-06-07 08:21:24', '2019-06-07 01:21:24', '', 0, 'http://127.0.0.1/kientruc/?p=84', 0, 'post', '', 0),
(85, 1, '2019-06-04 22:04:55', '2019-06-04 15:04:55', '[:vi][sp_wpcarousel id=\"43\"][:]', '[:vi]GIÁNG NAM 2[:]', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2019-06-04 22:04:55', '2019-06-04 15:04:55', '', 84, 'http://127.0.0.1/kientruc/2019/06/04/84-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2019-06-04 22:06:38', '2019-06-04 15:06:38', '[:vi]&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;[:en][sp_wpcarousel id=\"27\"][:]', '[:vi]VĂN TIẾN DŨNG[:en]VAN TIEN DUNG[:]', '', 'publish', 'open', 'open', '', 'van-tien-dung', '', '', '2019-06-17 22:26:29', '2019-06-17 15:26:29', '', 0, 'http://127.0.0.1/kientruc/?p=86', 0, 'post', '', 0),
(87, 1, '2019-06-04 22:06:38', '2019-06-04 15:06:38', '[:vi][sp_wpcarousel id=\"27\"][:]', '[:vi]VĂN TIẾN DŨNG[:]', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2019-06-04 22:06:38', '2019-06-04 15:06:38', '', 86, 'http://127.0.0.1/kientruc/2019/06/04/86-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2019-06-05 04:00:40', '2019-06-04 21:00:40', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"category\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', '[:vi]Giao diện danh mục[:]', 'giao-dien-danh-muc', 'publish', 'closed', 'closed', '', 'group_5cf6d92b4ed55', '', '', '2019-06-14 10:01:35', '2019-06-14 03:01:35', '', 0, 'http://127.0.0.1/kientruc/?post_type=acf-field-group&#038;p=89', 0, 'acf-field-group', '', 0),
(90, 1, '2019-06-05 04:00:40', '2019-06-04 21:00:40', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:4:{i:1;s:8:\"Dự án\";i:2;s:12:\"Vật liệu\";i:3;s:9:\"Thi công\";i:4;s:14:\"Giới thiệu\";}s:13:\"default_value\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'giao diện danh mục', 'giao_dien_danh_muc', 'publish', 'closed', 'closed', '', 'field_5cf6d93779aaf', '', '', '2019-06-14 10:01:35', '2019-06-14 03:01:35', '', 89, 'http://127.0.0.1/kientruc/?post_type=acf-field&#038;p=90', 0, 'acf-field', '', 0),
(91, 1, '2019-06-05 08:16:39', '2019-06-05 01:16:39', '', '[:vi]Lát nền[:en]Background paving[:]', '', 'publish', 'open', 'open', '', 'lat-nen', '', '', '2019-06-05 08:55:07', '2019-06-05 01:55:07', '', 0, 'http://127.0.0.1/kientruc/?p=91', 0, 'post', '', 0),
(92, 1, '2019-06-05 08:16:39', '2019-06-05 01:16:39', '', '[:vi]Lát nền[:]', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2019-06-05 08:16:39', '2019-06-05 01:16:39', '', 91, 'http://127.0.0.1/kientruc/91-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2019-06-05 08:55:07', '2019-06-05 01:55:07', '', '[:vi]Lát nền[:en]Background paving[:]', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2019-06-05 08:55:07', '2019-06-05 01:55:07', '', 91, 'http://127.0.0.1/kientruc/91-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2019-06-05 08:56:49', '2019-06-05 01:56:49', '', '[:vi]Liên hệ[:en]Contact[:]', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-06-05 08:56:49', '2019-06-05 01:56:49', '', 23, 'http://127.0.0.1/kientruc/23-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2019-06-05 08:57:35', '2019-06-05 01:57:35', '', '[:vi]Trang chủ[:en]Home[:]', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-06-05 08:57:35', '2019-06-05 01:57:35', '', 18, 'http://127.0.0.1/kientruc/18-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2019-06-05 09:14:31', '2019-06-05 02:14:31', '[sp_wpcarousel id=\"27\"]', '[:vi]VĂN TIẾN DŨNG[:en]VAN TIEN DUNG[:]', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2019-06-05 09:14:31', '2019-06-05 02:14:31', '', 86, 'http://127.0.0.1/kientruc/86-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2019-06-05 09:17:51', '2019-06-05 02:17:51', '[sp_wpcarousel id=\"47\"]', '[:vi]HOÀNG KẾ VIÊM[:en]HOANG KE VIEM[:]', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2019-06-05 09:17:51', '2019-06-05 02:17:51', '', 72, 'http://127.0.0.1/kientruc/72-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2019-06-05 09:38:18', '2019-06-05 02:38:18', '[sp_wpcarousel id=\"61\"]', '[:vi]PHAN ĐĂNG LƯU[:en]PHAN ĐANG LUU[:]', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2019-06-05 09:38:18', '2019-06-05 02:38:18', '', 77, 'http://127.0.0.1/kientruc/77-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2019-06-05 09:39:30', '2019-06-05 02:39:30', '[sp_wpcarousel id=\"65\"]', '[:vi]PHÒNG TRỌ 2.9[:en]ACCOMMODATION 2.9[:]', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2019-06-05 09:39:30', '2019-06-05 02:39:30', '', 75, 'http://127.0.0.1/kientruc/75-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2019-06-05 09:40:49', '2019-06-05 02:40:49', '[sp_wpcarousel id=\"43\"]', '[:vi]GIÁNG NAM 2[:en]SOUTH CHRISTMAS 2[:]', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2019-06-05 09:40:49', '2019-06-05 02:40:49', '', 84, 'http://127.0.0.1/kientruc/84-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2019-06-05 09:41:32', '2019-06-05 02:41:32', '[sp_wpcarousel id=\"51\"]', '[:vi]HUỲNH NGỌC HUỆ[:en]HUYNH NGOC HUE[:]', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2019-06-05 09:41:32', '2019-06-05 02:41:32', '', 82, 'http://127.0.0.1/kientruc/82-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2019-06-05 09:42:42', '2019-06-05 02:42:42', '[sp_wpcarousel id=\"59\"]', '[:vi]KHU FPT[:en]FPT AREA[:]', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2019-06-05 09:42:42', '2019-06-05 02:42:42', '', 79, 'http://127.0.0.1/kientruc/79-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2019-06-05 14:42:32', '2019-06-05 07:42:32', '', '[:vi]Trịnh Thái Hoàng[:en]Trinh Thai Hoang[:]', '', 'publish', 'closed', 'closed', '', 'english-trinh-thai-hoang', '', '', '2019-06-05 14:43:24', '2019-06-05 07:43:24', '', 0, 'http://127.0.0.1/kientruc/?post_type=sp_wp_carousel&#038;p=105', 0, 'sp_wp_carousel', '', 0),
(106, 1, '2019-06-05 14:41:56', '2019-06-05 07:41:56', '', 'tmp_1557192248', '', 'inherit', 'open', 'closed', '', 'tmp_1557192248', '', '', '2019-06-05 14:41:56', '2019-06-05 07:41:56', '', 105, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1557192248.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2019-06-05 14:41:57', '2019-06-05 07:41:57', '', 'tmp_1557192256', '', 'inherit', 'open', 'closed', '', 'tmp_1557192256', '', '', '2019-06-05 14:41:57', '2019-06-05 07:41:57', '', 105, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1557192256.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2019-06-05 14:41:58', '2019-06-05 07:41:58', '', 'tmp_1557192267', '', 'inherit', 'open', 'closed', '', 'tmp_1557192267', '', '', '2019-06-05 14:41:58', '2019-06-05 07:41:58', '', 105, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1557192267.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2019-06-05 14:41:59', '2019-06-05 07:41:59', '', 'tmp_1557192274', '', 'inherit', 'open', 'closed', '', 'tmp_1557192274', '', '', '2019-06-05 14:41:59', '2019-06-05 07:41:59', '', 105, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1557192274.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2019-06-05 14:42:00', '2019-06-05 07:42:00', '', 'tmp_1557192281', '', 'inherit', 'open', 'closed', '', 'tmp_1557192281', '', '', '2019-06-05 14:42:00', '2019-06-05 07:42:00', '', 105, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1557192281.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2019-06-05 14:42:01', '2019-06-05 07:42:01', '', 'tmp_1557192288', '', 'inherit', 'open', 'closed', '', 'tmp_1557192288', '', '', '2019-06-05 14:42:01', '2019-06-05 07:42:01', '', 105, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1557192288.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2019-06-05 14:42:02', '2019-06-05 07:42:02', '', 'tmp_1557192295', '', 'inherit', 'open', 'closed', '', 'tmp_1557192295', '', '', '2019-06-05 14:42:02', '2019-06-05 07:42:02', '', 105, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1557192295.jpg', 0, 'attachment', 'image/jpeg', 0),
(114, 1, '2019-06-05 14:44:27', '2019-06-05 07:44:27', '[sp_wpcarousel id=\"105\"]', '[:vi]Trịnh Thái Hoàng[:en]Trinh Thai Hoang[:]', '', 'trash', 'open', 'open', '', 'trinh-thai-hoang__trashed', '', '', '2019-06-06 10:26:28', '2019-06-06 03:26:28', '', 0, 'http://127.0.0.1/kientruc/?p=114', 0, 'post', '', 0),
(115, 1, '2019-06-05 14:44:27', '2019-06-05 07:44:27', '[sp_wpcarousel id=\"105\"]', '[:vi]Trịnh Thái Hoàng[:en]Trinh Thai Hoang[:]', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2019-06-05 14:44:27', '2019-06-05 07:44:27', '', 114, 'http://127.0.0.1/kientruc/114-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2019-06-05 14:48:47', '2019-06-05 07:48:47', '', '[:vi]Phạm Thị Ngọc Hà[:en]Pham Thi Ngoc Ha[:]', '', 'publish', 'closed', 'closed', '', 'pham-thi-ngoc-ha', '', '', '2019-06-05 14:48:51', '2019-06-05 07:48:51', '', 0, 'http://127.0.0.1/kientruc/?post_type=sp_wp_carousel&#038;p=116', 0, 'sp_wp_carousel', '', 0),
(117, 1, '2019-06-05 14:48:08', '2019-06-05 07:48:08', '', 'tmp_1557193738', '', 'inherit', 'open', 'closed', '', 'tmp_1557193738', '', '', '2019-06-05 14:48:08', '2019-06-05 07:48:08', '', 116, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1557193738.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2019-06-05 14:48:09', '2019-06-05 07:48:09', '', 'tmp_1557193750', '', 'inherit', 'open', 'closed', '', 'tmp_1557193750', '', '', '2019-06-05 14:48:09', '2019-06-05 07:48:09', '', 116, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1557193750.jpg', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2019-06-05 14:48:11', '2019-06-05 07:48:11', '', 'tmp_1557193757', '', 'inherit', 'open', 'closed', '', 'tmp_1557193757', '', '', '2019-06-05 14:48:11', '2019-06-05 07:48:11', '', 116, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1557193757.jpg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2019-06-05 14:48:13', '2019-06-05 07:48:13', '', 'tmp_1557193766', '', 'inherit', 'open', 'closed', '', 'tmp_1557193766', '', '', '2019-06-05 14:48:13', '2019-06-05 07:48:13', '', 116, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1557193766.jpg', 0, 'attachment', 'image/jpeg', 0),
(121, 1, '2019-06-05 14:48:15', '2019-06-05 07:48:15', '', 'tmp_1557193784', '', 'inherit', 'open', 'closed', '', 'tmp_1557193784', '', '', '2019-06-05 14:48:15', '2019-06-05 07:48:15', '', 116, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1557193784.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2019-06-05 14:48:17', '2019-06-05 07:48:17', '', 'tmp_1557193794', '', 'inherit', 'open', 'closed', '', 'tmp_1557193794', '', '', '2019-06-05 14:48:17', '2019-06-05 07:48:17', '', 116, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1557193794.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2019-06-05 14:50:14', '2019-06-05 07:50:14', '[sp_wpcarousel id=\"116\"]', '[:vi] Phạm Thị Ngọc Hà[:en]Pham Thi Ngoc Ha[:]', '', 'trash', 'open', 'open', '', 'pham-thi-ngoc-ha__trashed', '', '', '2019-06-06 10:26:23', '2019-06-06 03:26:23', '', 0, 'http://127.0.0.1/kientruc/?p=123', 0, 'post', '', 0),
(124, 1, '2019-06-05 14:50:14', '2019-06-05 07:50:14', '[sp_wpcarousel id=\"116\"]', '[:vi] Phạm Thị Ngọc Hà[:en]Pham Thi Ngoc Ha[:]', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2019-06-05 14:50:14', '2019-06-05 07:50:14', '', 123, 'http://127.0.0.1/kientruc/123-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2019-06-05 14:52:48', '2019-06-05 07:52:48', '', '[:vi]Huỳnh Thị Kim Trang[:en]Huynh Thi Kim Trang[:]', '', 'publish', 'closed', 'closed', '', 'huynh-thi-kim-trang', '', '', '2019-06-05 14:52:48', '2019-06-05 07:52:48', '', 0, 'http://127.0.0.1/kientruc/?post_type=sp_wp_carousel&#038;p=125', 0, 'sp_wp_carousel', '', 0),
(126, 1, '2019-06-05 14:52:19', '2019-06-05 07:52:19', '', 'tmp_1557194030', '', 'inherit', 'open', 'closed', '', 'tmp_1557194030', '', '', '2019-06-05 14:52:19', '2019-06-05 07:52:19', '', 125, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1557194030.jpg', 0, 'attachment', 'image/jpeg', 0),
(127, 1, '2019-06-05 14:52:21', '2019-06-05 07:52:21', '', 'tmp_1557194038', '', 'inherit', 'open', 'closed', '', 'tmp_1557194038', '', '', '2019-06-05 14:52:21', '2019-06-05 07:52:21', '', 125, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1557194038.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2019-06-05 14:52:25', '2019-06-05 07:52:25', '', 'tmp_1557194047', '', 'inherit', 'open', 'closed', '', 'tmp_1557194047', '', '', '2019-06-05 14:52:25', '2019-06-05 07:52:25', '', 125, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1557194047.jpg', 0, 'attachment', 'image/jpeg', 0),
(129, 1, '2019-06-05 14:53:37', '2019-06-05 07:53:37', '[sp_wpcarousel id=\"125\"]', '[:vi]Huỳnh Thị Kim Trang[:en]Huynh Thi Kim Trang[:]', '', 'trash', 'open', 'open', '', 'huynh-thi-kim-trang__trashed', '', '', '2019-06-06 10:26:19', '2019-06-06 03:26:19', '', 0, 'http://127.0.0.1/kientruc/?p=129', 0, 'post', '', 0),
(130, 1, '2019-06-05 14:53:37', '2019-06-05 07:53:37', '[sp_wpcarousel id=\"125\"]', '[:vi]Huỳnh Thị Kim Trang[:en]Huynh Thi Kim Trang[:]', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2019-06-05 14:53:37', '2019-06-05 07:53:37', '', 129, 'http://127.0.0.1/kientruc/129-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2019-06-05 15:36:43', '2019-06-05 08:36:43', '[:vi][sp_wpcarousel id=\"47\"]\r\n\r\n&nbsp;[:en][sp_wpcarousel id=\"47\"][:]', '[:vi]HOÀNG KẾ VIÊM[:en]HOANG KE VIEM[:]', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2019-06-05 15:36:43', '2019-06-05 08:36:43', '', 72, 'http://127.0.0.1/kientruc/72-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2019-06-05 16:55:17', '2019-06-05 09:55:17', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', '[:vi]Chủ đầu tư[:en]Investor[:]', 'chu-dau-tu', 'publish', 'closed', 'closed', '', 'group_5cf78fd8a9df9', '', '', '2019-06-05 16:55:17', '2019-06-05 09:55:17', '', 0, 'http://127.0.0.1/kientruc/?post_type=acf-field-group&#038;p=135', 0, 'acf-field-group', '', 0),
(136, 1, '2019-06-05 16:55:17', '2019-06-05 09:55:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:16:\"Chủ đầu tư\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Chủ đầu tư', 'chu_dau_tu', 'publish', 'closed', 'closed', '', 'field_5cf78facebc94', '', '', '2019-06-05 16:55:17', '2019-06-05 09:55:17', '', 135, 'http://127.0.0.1/kientruc/?post_type=acf-field&p=136', 0, 'acf-field', '', 0),
(137, 1, '2019-06-05 16:55:17', '2019-06-05 09:55:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:12:\"Địa chỉ\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Địa chỉ', 'dia_chi', 'publish', 'closed', 'closed', '', 'field_5cf79058ebc95', '', '', '2019-06-05 16:55:17', '2019-06-05 09:55:17', '', 135, 'http://127.0.0.1/kientruc/?post_type=acf-field&p=137', 1, 'acf-field', '', 0),
(138, 1, '2019-06-05 16:55:17', '2019-06-05 09:55:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:12:\"Diện tích\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Diện tích', 'dien_tich', 'publish', 'closed', 'closed', '', 'field_5cf79077ebc96', '', '', '2019-06-05 16:55:17', '2019-06-05 09:55:17', '', 135, 'http://127.0.0.1/kientruc/?post_type=acf-field&p=138', 2, 'acf-field', '', 0),
(139, 1, '2019-06-05 16:55:17', '2019-06-05 09:55:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:8:\"Hướng\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Hướng', 'huong', 'publish', 'closed', 'closed', '', 'field_5cf790bcebc97', '', '', '2019-06-05 16:55:17', '2019-06-05 09:55:17', '', 135, 'http://127.0.0.1/kientruc/?post_type=acf-field&p=139', 3, 'acf-field', '', 0),
(140, 1, '2019-06-05 17:00:33', '2019-06-05 10:00:33', '[:vi][sp_wpcarousel id=\"47\"]\r\n\r\n&nbsp;[:en][sp_wpcarousel id=\"47\"][:]', '[:vi]HOÀNG KẾ VIÊM[:en]HOANG KE VIEM[:]', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2019-06-05 17:00:33', '2019-06-05 10:00:33', '', 72, 'http://127.0.0.1/kientruc/72-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2019-06-06 09:55:35', '2019-06-06 02:55:35', 'http://thietkexaydunglammoc.com/wp-content/uploads/2019/06/cropped-cf89cb017be49ebac7f5-1.jpg', 'cropped-cf89cb017be49ebac7f5-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-cf89cb017be49ebac7f5-1-jpg', '', '', '2019-06-06 09:55:35', '2019-06-06 02:55:35', '', 0, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/cropped-cf89cb017be49ebac7f5-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(142, 1, '2019-06-06 09:55:38', '2019-06-06 02:55:38', '{\n    \"halink-kientruc::custom_logo\": {\n        \"value\": 141,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-06 02:55:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '450f88db-125e-4bc0-af4b-1af44cbc8a7e', '', '', '2019-06-06 09:55:38', '2019-06-06 02:55:38', '', 0, 'http://127.0.0.1/kientruc/450f88db-125e-4bc0-af4b-1af44cbc8a7e/', 0, 'customize_changeset', '', 0),
(143, 1, '2019-06-06 10:31:39', '2019-06-06 03:31:39', '[:vi][sp_wpcarousel id=\"30\"]\r\n\r\n&nbsp;[:en][sp_wpcarousel id=\"30\"]\r\n\r\n&nbsp;\r\n\r\n&nbsp;[:]', '[:vi]AN THƯỢNG 9[:en]AN THUONG 9[:]', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2019-06-06 10:31:39', '2019-06-06 03:31:39', '', 57, 'http://127.0.0.1/kientruc/57-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2019-06-06 10:32:42', '2019-06-06 03:32:42', '[:vi][sp_wpcarousel id=\"39\"][:en][sp_wpcarousel id=\"39\"]\r\n\r\n&nbsp;\r\n\r\n&nbsp;[:]', '[:vi]BẠCH ĐẰNG[:en]BACH DANG[:]', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2019-06-06 10:32:42', '2019-06-06 03:32:42', '', 70, 'http://127.0.0.1/kientruc/70-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2019-06-06 10:33:10', '2019-06-06 03:33:10', '[:vi][sp_wpcarousel id=\"27\"]\r\n\r\n&nbsp;[:en][sp_wpcarousel id=\"27\"][:]', '[:vi]VĂN TIẾN DŨNG[:en]VAN TIEN DUNG[:]', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2019-06-06 10:33:10', '2019-06-06 03:33:10', '', 86, 'http://127.0.0.1/kientruc/86-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2019-06-06 10:35:12', '2019-06-06 03:35:12', '[:vi][sp_wpcarousel id=\"61\"][:en][sp_wpcarousel id=\"61\"]\r\n\r\n&nbsp;[:]', '[:vi]PHAN ĐĂNG LƯU[:en]PHAN ĐANG LUU[:]', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2019-06-06 10:35:12', '2019-06-06 03:35:12', '', 77, 'http://127.0.0.1/kientruc/77-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2019-06-06 11:09:36', '2019-06-06 04:09:36', 'http://thietkexaydunglammoc.com/wp-content/uploads/2019/06/cropped-cf89cb017be49ebac7f5-2.jpg', 'cropped-cf89cb017be49ebac7f5-2.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-cf89cb017be49ebac7f5-2-jpg', '', '', '2019-06-06 11:09:36', '2019-06-06 04:09:36', '', 0, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/cropped-cf89cb017be49ebac7f5-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(148, 1, '2019-06-06 11:09:39', '2019-06-06 04:09:39', '{\n    \"halink-kientruc::custom_logo\": {\n        \"value\": 147,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-06 04:09:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '24ac4697-75a7-460b-a720-9eefc2c56f60', '', '', '2019-06-06 11:09:39', '2019-06-06 04:09:39', '', 0, 'http://127.0.0.1/kientruc/24ac4697-75a7-460b-a720-9eefc2c56f60/', 0, 'customize_changeset', '', 0),
(149, 1, '2019-06-06 11:14:11', '2019-06-06 04:14:11', 'http://thietkexaydunglammoc.com/wp-content/uploads/2019/06/cropped-cf89cb017be49ebac7f5-3.jpg', 'cropped-cf89cb017be49ebac7f5-3.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-cf89cb017be49ebac7f5-3-jpg', '', '', '2019-06-06 11:14:11', '2019-06-06 04:14:11', '', 0, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/cropped-cf89cb017be49ebac7f5-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(150, 1, '2019-06-06 11:14:14', '2019-06-06 04:14:14', '{\n    \"halink-kientruc::custom_logo\": {\n        \"value\": 149,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-06 04:14:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '55fb279d-abf4-4469-bebb-0eb77d5927d2', '', '', '2019-06-06 11:14:14', '2019-06-06 04:14:14', '', 0, 'http://127.0.0.1/kientruc/55fb279d-abf4-4469-bebb-0eb77d5927d2/', 0, 'customize_changeset', '', 0),
(151, 1, '2019-06-06 11:14:58', '2019-06-06 04:14:58', 'http://thietkexaydunglammoc.com/wp-content/uploads/2019/06/cropped-cf89cb017be49ebac7f5-4.jpg', 'cropped-cf89cb017be49ebac7f5-4.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-cf89cb017be49ebac7f5-4-jpg', '', '', '2019-06-06 11:14:58', '2019-06-06 04:14:58', '', 0, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/cropped-cf89cb017be49ebac7f5-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(152, 1, '2019-06-06 11:15:00', '2019-06-06 04:15:00', '{\n    \"halink-kientruc::custom_logo\": {\n        \"value\": 151,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-06 04:15:00\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b16e2c89-bba2-4315-8849-bbfd7e53c89e', '', '', '2019-06-06 11:15:00', '2019-06-06 04:15:00', '', 0, 'http://127.0.0.1/kientruc/b16e2c89-bba2-4315-8849-bbfd7e53c89e/', 0, 'customize_changeset', '', 0),
(153, 1, '2019-06-07 03:05:53', '2019-06-06 20:05:53', '[:vi]&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;[:en][sp_wpcarousel id=\"27\"][:]', '[:vi]VĂN TIẾN DŨNG[:en]VAN TIEN DUNG[:]', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2019-06-07 03:05:53', '2019-06-06 20:05:53', '', 86, 'http://127.0.0.1/kientruc/86-revision-v1/', 0, 'revision', '', 0),
(154, 1, '2019-06-07 08:18:25', '2019-06-07 01:18:25', '[:vi][sp_wpcarousel id=\"43\"][:]', '[:vi]GIÁNG NAM 2[:en]GIANG NAM 2[:]', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2019-06-07 08:18:25', '2019-06-07 01:18:25', '', 84, 'http://127.0.0.1/kientruc/84-revision-v1/', 0, 'revision', '', 0),
(155, 1, '2019-06-07 08:18:36', '2019-06-07 01:18:36', '', '[:vi]GIÁNG NAM 2[:en]GIANG NAM 2[:]', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2019-06-07 08:18:36', '2019-06-07 01:18:36', '', 84, 'http://127.0.0.1/kientruc/84-revision-v1/', 0, 'revision', '', 0),
(156, 1, '2019-06-07 08:23:24', '2019-06-07 01:23:24', '', '[:vi]HUỲNH NGỌC HUỆ[:en]HUYNH NGOC HUE[:]', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2019-06-07 08:23:24', '2019-06-07 01:23:24', '', 82, 'http://127.0.0.1/kientruc/82-revision-v1/', 0, 'revision', '', 0),
(157, 1, '2019-06-07 08:25:52', '2019-06-07 01:25:52', '', 'P.AN 1', '', 'inherit', 'open', 'closed', '', 'p-an-1-4', '', '', '2019-06-07 08:25:52', '2019-06-07 01:25:52', '', 79, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/P.AN-1-1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(158, 1, '2019-06-07 08:26:01', '2019-06-07 01:26:01', '', '[:vi]KHU FPT[:en]FPT AREA[:]', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2019-06-07 08:26:01', '2019-06-07 01:26:01', '', 79, 'http://127.0.0.1/kientruc/79-revision-v1/', 0, 'revision', '', 0),
(159, 1, '2019-06-07 08:27:42', '2019-06-07 01:27:42', '', '1', '', 'inherit', 'open', 'closed', '', '1-4', '', '', '2019-06-07 08:27:42', '2019-06-07 01:27:42', '', 77, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/1-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(160, 1, '2019-06-07 08:29:44', '2019-06-07 01:29:44', '', '[:vi]PHAN ĐĂNG LƯU[:en]PHAN ĐANG LUU[:]', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2019-06-07 08:29:44', '2019-06-07 01:29:44', '', 77, 'http://127.0.0.1/kientruc/77-revision-v1/', 0, 'revision', '', 0),
(161, 1, '2019-06-07 08:31:03', '2019-06-07 01:31:03', '', '[:vi]PHÒNG TRỌ 2.9[:en]ACCOMMODATION 2.9[:]', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2019-06-07 08:31:03', '2019-06-07 01:31:03', '', 75, 'http://127.0.0.1/kientruc/75-revision-v1/', 0, 'revision', '', 0),
(162, 1, '2019-06-07 08:32:45', '2019-06-07 01:32:45', '[:vi]&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;[:]', '[:vi]HOÀNG KẾ VIÊM[:en]HOANG KE VIEM[:]', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2019-06-07 08:32:45', '2019-06-07 01:32:45', '', 72, 'http://127.0.0.1/kientruc/72-revision-v1/', 0, 'revision', '', 0),
(163, 1, '2019-06-07 08:34:37', '2019-06-07 01:34:37', '', '[:vi]BẠCH ĐẰNG[:en]BACH DANG[:]', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2019-06-07 08:34:37', '2019-06-07 01:34:37', '', 70, 'http://127.0.0.1/kientruc/70-revision-v1/', 0, 'revision', '', 0),
(164, 1, '2019-06-07 08:36:50', '2019-06-07 01:36:50', '', '[:vi]AN THƯỢNG 9[:en]AN THUONG 9[:]', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2019-06-07 08:36:50', '2019-06-07 01:36:50', '', 57, 'http://127.0.0.1/kientruc/57-revision-v1/', 0, 'revision', '', 0),
(165, 1, '2019-06-07 09:12:16', '2019-06-07 02:12:16', '', '[:vi]Giới thiệu[:en]Introduced[:]', '', 'publish', 'closed', 'closed', '', 'gioi-thieu', '', '', '2019-06-17 16:14:16', '2019-06-17 09:14:16', '', 0, 'http://127.0.0.1/kientruc/?page_id=165', 0, 'page', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(166, 1, '2019-06-07 09:12:16', '2019-06-07 02:12:16', '', '[:vi]Giới thiệu[:en]Introduced[:]', '', 'inherit', 'closed', 'closed', '', '165-revision-v1', '', '', '2019-06-07 09:12:16', '2019-06-07 02:12:16', '', 165, 'http://127.0.0.1/kientruc/165-revision-v1/', 0, 'revision', '', 0),
(168, 1, '2019-06-07 13:08:44', '2019-06-07 06:08:44', ' ', '', '', 'publish', 'closed', 'closed', '', '168', '', '', '2019-06-20 10:36:23', '2019-06-20 03:36:23', '', 0, 'http://127.0.0.1/kientruc/?p=168', 2, 'nav_menu_item', '', 0),
(169, 1, '2019-06-07 15:25:34', '2019-06-07 08:25:34', '[email* txtEmail class:form-control placeholder \"Email\"]\r\n[submit id:send class:bu \"Đăng ký\"]\n1\n[:vi]Thiết Kế Xây Dựng Lam Mộc[:en]Design for building Lam Moc[:] \"[your-subject]\"\n[:vi]Thiết Kế Xây Dựng Lam Mộc[:en]Design for building Lam Moc[:] <tuan@ert.vn>\ntuan@ert.vn\nGửi đến từ: [your-name] <[your-email]>\r\nTiêu đề: [your-subject]\r\n\r\nNội dung thông điệp:\r\n[your-message]\r\n\r\n-- \r\nEmail này được gửi đến từ form liên hệ của website [:vi]Thiết Kế Xây Dựng Lam Mộc[:en]Design for building Lam Moc[:] (http://127.0.0.1/kientruc)\nReply-To: [your-email]\n\n\n\n\n[:vi]Thiết Kế Xây Dựng Lam Mộc[:en]Design for building Lam Moc[:] \"[your-subject]\"\n[:vi]Thiết Kế Xây Dựng Lam Mộc[:en]Design for building Lam Moc[:] <tuan@ert.vn>\n[your-email]\nNội dung thông điệp:\r\n[your-message]\r\n\r\n-- \r\nEmail này được gửi đến từ form liên hệ của website [:vi]Thiết Kế Xây Dựng Lam Mộc[:en]Design for building Lam Moc[:] (http://127.0.0.1/kientruc)\nReply-To: tuan@ert.vn\n\n\n\nXin cảm ơn, form đã được gửi thành công.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nCó một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nBạn phải chấp nhận điều khoản trước khi gửi form.\nMục này là bắt buộc.\nNhập quá số kí tự cho phép.\nNhập ít hơn số kí tự tối thiểu.\nĐịnh dạng ngày tháng không hợp lệ.\nNgày này trước ngày sớm nhất được cho phép.\nNgày này quá ngày gần nhất được cho phép.\nTải file lên không thành công.\nBạn không được phép tải lên file theo định dạng này.\nFile kích thước quá lớn.\nTải file lên không thành công.\nĐịnh dạng số không hợp lệ.\nCon số nhỏ hơn số nhỏ nhất cho phép.\nCon số lớn hơn số lớn nhất cho phép.\nCâu trả lời chưa đúng.\nBạn đã nhập sai mã CAPTCHA.\nĐịa chỉ e-mail không hợp lệ.\nURL không hợp lệ.\nSố điện thoại không hợp lệ.', 'Đăng ký nhận tin', '', 'publish', 'closed', 'closed', '', 'dang-ky-nhan-tin', '', '', '2019-06-07 15:25:34', '2019-06-07 08:25:34', '', 0, 'http://127.0.0.1/kientruc/?post_type=wpcf7_contact_form&p=169', 0, 'wpcf7_contact_form', '', 0),
(170, 1, '2019-06-10 13:35:19', '2019-06-10 06:35:19', '[:vi][modula id=\"185\"]\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;[:]', '[:vi]Nguyễn Văn Ngà[:en]Nguyen Van Nga[:]', '', 'publish', 'open', 'open', '', 'nguyen-van-nga', '', '', '2019-06-20 00:43:16', '2019-06-19 17:43:16', '', 0, 'http://127.0.0.1/kientruc/?p=170', 0, 'post', '', 0),
(171, 1, '2019-06-10 13:32:41', '2019-06-10 06:32:41', '', 'tmp_1553481295', '', 'inherit', 'open', 'closed', '', 'tmp_1553481295', '', '', '2019-06-10 13:32:41', '2019-06-10 06:32:41', '', 170, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1553481295.jpg', 0, 'attachment', 'image/jpeg', 0),
(172, 1, '2019-06-10 13:34:00', '2019-06-10 06:34:00', '', 'tmp_1553481295', '', 'inherit', 'open', 'closed', '', 'tmp_1553481295-2', '', '', '2019-06-10 13:34:00', '2019-06-10 06:34:00', '', 170, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1553481295-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(173, 1, '2019-06-10 13:34:01', '2019-06-10 06:34:01', '', 'tmp_1553481321', '', 'inherit', 'open', 'closed', '', 'tmp_1553481321', '', '', '2019-06-10 13:34:01', '2019-06-10 06:34:01', '', 170, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1553481321.jpg', 0, 'attachment', 'image/jpeg', 0),
(174, 1, '2019-06-10 13:34:02', '2019-06-10 06:34:02', '', 'tmp_1553481329', '', 'inherit', 'open', 'closed', '', 'tmp_1553481329', '', '', '2019-06-10 13:34:02', '2019-06-10 06:34:02', '', 170, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1553481329.jpg', 0, 'attachment', 'image/jpeg', 0),
(175, 1, '2019-06-10 13:35:19', '2019-06-10 06:35:19', '', '[:vi]Nguyễn Văn Ngà[:]', '', 'inherit', 'closed', 'closed', '', '170-revision-v1', '', '', '2019-06-10 13:35:19', '2019-06-10 06:35:19', '', 170, 'http://127.0.0.1/kientruc/?p=175', 0, 'revision', '', 0),
(176, 1, '2019-06-11 02:35:47', '2019-06-10 19:35:47', '', '[:vi]Nguyễn Văn Ngà[:en]Nguyen Van Nga[:]', '', 'inherit', 'closed', 'closed', '', '170-revision-v1', '', '', '2019-06-11 02:35:47', '2019-06-10 19:35:47', '', 170, 'http://127.0.0.1/kientruc/?p=176', 0, 'revision', '', 0),
(177, 1, '2019-06-11 02:50:12', '2019-06-10 19:50:12', '', '[:vi]Nguyễn Văn Ngà[:en]Nguyen Van Nga[:]', '', 'publish', 'closed', 'closed', '', 'nguyen-van-nga', '', '', '2019-06-11 02:52:25', '2019-06-10 19:52:25', '', 0, 'http://127.0.0.1/kientruc/?post_type=sp_wp_carousel&#038;p=177', 0, 'sp_wp_carousel', '', 0),
(178, 1, '2019-06-11 02:51:26', '2019-06-10 19:51:26', '[:vi][sp_wpcarousel id=\"177\"]\r\n\r\n&nbsp;[:]', '[:vi]Nguyễn Văn Ngà[:en]Nguyen Van Nga[:]', '', 'inherit', 'closed', 'closed', '', '170-revision-v1', '', '', '2019-06-11 02:51:26', '2019-06-10 19:51:26', '', 170, 'http://127.0.0.1/kientruc/?p=178', 0, 'revision', '', 0),
(181, 1, '2019-06-14 09:39:27', '2019-06-14 02:39:27', '', '[:vi]Thi công[:en]Construction[:]', '', 'trash', 'open', 'closed', '', 'thi-cong__trashed', '', '', '2019-06-18 14:09:33', '2019-06-18 07:09:33', '', 0, 'http://127.0.0.1/kientruc/?post_type=portfolio&#038;p=181', 0, 'portfolio', '', 0),
(182, 1, '2019-06-14 09:39:27', '2019-06-14 02:39:27', '', '[:vi]Thi công[:]', '', 'inherit', 'closed', 'closed', '', '181-revision-v1', '', '', '2019-06-14 09:39:27', '2019-06-14 02:39:27', '', 181, 'http://127.0.0.1/kientruc/?p=182', 0, 'revision', '', 0),
(183, 1, '2019-06-14 09:39:52', '2019-06-14 02:39:52', '', '[:vi]Thi công[:en]Construction[:]', '', 'inherit', 'closed', 'closed', '', '181-revision-v1', '', '', '2019-06-14 09:39:52', '2019-06-14 02:39:52', '', 181, 'http://127.0.0.1/kientruc/?p=183', 0, 'revision', '', 0),
(185, 1, '2019-06-14 09:57:05', '2019-06-14 02:57:05', '', '[:vi]Văn phòng thiết kế[:en]Office design[:]', '', 'publish', 'closed', 'closed', '', 'van-phong-thiet-ke', '', '', '2019-06-20 00:44:44', '2019-06-19 17:44:44', '', 0, 'http://127.0.0.1/kientruc/?post_type=modula-gallery&#038;p=185', 0, 'modula-gallery', '', 0),
(186, 1, '2019-06-14 09:56:48', '2019-06-14 02:56:48', '', 'tmp_1553481295', '', 'inherit', 'open', 'closed', '', 'tmp_1553481295-3', '', '', '2019-06-14 09:56:48', '2019-06-14 02:56:48', '', 0, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1553481295-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(187, 1, '2019-06-14 09:56:50', '2019-06-14 02:56:50', '', 'tmp_1553481312', '', 'inherit', 'open', 'closed', '', 'tmp_1553481312', '', '', '2019-06-14 09:56:50', '2019-06-14 02:56:50', '', 0, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1553481312.jpg', 0, 'attachment', 'image/jpeg', 0),
(188, 1, '2019-06-14 09:56:51', '2019-06-14 02:56:51', '', 'tmp_1553481321', '', 'inherit', 'open', 'closed', '', 'tmp_1553481321-2', '', '', '2019-06-14 09:56:51', '2019-06-14 02:56:51', '', 0, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1553481321-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(189, 1, '2019-06-14 09:56:52', '2019-06-14 02:56:52', '', 'tmp_1553481329', '', 'inherit', 'open', 'closed', '', 'tmp_1553481329-2', '', '', '2019-06-14 09:56:52', '2019-06-14 02:56:52', '', 0, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1553481329-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(190, 1, '2019-06-14 09:56:54', '2019-06-14 02:56:54', '', 'tmp_1553852232', '', 'inherit', 'open', 'closed', '', 'tmp_1553852232', '', '', '2019-06-14 09:56:54', '2019-06-14 02:56:54', '', 0, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1553852232.jpg', 0, 'attachment', 'image/jpeg', 0),
(191, 1, '2019-06-14 09:56:55', '2019-06-14 02:56:55', '', 'tmp_1553852243', '', 'inherit', 'open', 'closed', '', 'tmp_1553852243', '', '', '2019-06-17 20:13:57', '2019-06-17 13:13:57', '', 240, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1553852243.jpg', 0, 'attachment', 'image/jpeg', 0),
(192, 1, '2019-06-14 09:56:57', '2019-06-14 02:56:57', '', 'tmp_1553852253', '', 'inherit', 'open', 'closed', '', 'tmp_1553852253', '', '', '2019-06-14 09:56:57', '2019-06-14 02:56:57', '', 0, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1553852253.jpg', 0, 'attachment', 'image/jpeg', 0),
(193, 1, '2019-06-14 09:56:59', '2019-06-14 02:56:59', '', 'tmp_1553852262', '', 'inherit', 'open', 'closed', '', 'tmp_1553852262', '', '', '2019-06-14 09:56:59', '2019-06-14 02:56:59', '', 0, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1553852262.jpg', 0, 'attachment', 'image/jpeg', 0),
(194, 1, '2019-06-14 09:57:00', '2019-06-14 02:57:00', '', 'tmp_1553852273', '', 'inherit', 'open', 'closed', '', 'tmp_1553852273', '', '', '2019-06-14 09:57:00', '2019-06-14 02:57:00', '', 0, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1553852273.jpg', 0, 'attachment', 'image/jpeg', 0),
(195, 1, '2019-06-14 09:57:01', '2019-06-14 02:57:01', '', 'tmp_1553852283', '', 'inherit', 'open', 'closed', '', 'tmp_1553852283', '', '', '2019-06-14 09:57:01', '2019-06-14 02:57:01', '', 0, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1553852283.jpg', 0, 'attachment', 'image/jpeg', 0),
(196, 1, '2019-06-14 10:15:33', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-06-14 10:15:33', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/kientruc/?p=196', 0, 'post', '', 0),
(197, 1, '2019-06-14 10:18:27', '2019-06-14 03:18:27', '[:vi][modula id=\"185\"]\r\n\r\n&nbsp;[:en][modula id=\"185\"]\r\n\r\n&nbsp;\r\n\r\n&nbsp;[:]', '[:vi]Văn phòng thiết kế[:en]Office design[:]', '', 'publish', 'open', 'open', '', 'van-phong-thiet-ke', '', '', '2019-06-14 11:03:49', '2019-06-14 04:03:49', '', 0, 'http://127.0.0.1/kientruc/?p=197', 0, 'post', '', 0),
(198, 1, '2019-06-14 10:18:27', '2019-06-14 03:18:27', '[:vi][modula id=\"185\"]\r\n\r\n&nbsp;[:en][modula id=\"185\"]\r\n\r\n&nbsp;\r\n\r\n&nbsp;[:]', '[:vi]Văn phòng thiết kế[:en]Office design[:]', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2019-06-14 10:18:27', '2019-06-14 03:18:27', '', 197, 'http://127.0.0.1/kientruc/?p=198', 0, 'revision', '', 0),
(199, 1, '2019-06-14 11:15:32', '2019-06-14 04:15:32', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"181\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', '[:vi]Single[:]', 'single', 'publish', 'closed', 'closed', '', 'group_5d031ef21e3dc', '', '', '2019-06-14 11:16:57', '2019-06-14 04:16:57', '', 0, 'http://127.0.0.1/kientruc/?post_type=acf-field-group&#038;p=199', 0, 'acf-field-group', '', 0),
(200, 1, '2019-06-14 11:15:32', '2019-06-14 04:15:32', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:1:{i:1;s:9:\"Thi công\";}s:13:\"default_value\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'single', 'single', 'publish', 'closed', 'closed', '', 'field_5d031f123f947', '', '', '2019-06-14 11:15:32', '2019-06-14 04:15:32', '', 199, 'http://127.0.0.1/kientruc/?post_type=acf-field&p=200', 0, 'acf-field', '', 0),
(201, 1, '2019-06-14 14:01:18', '2019-06-14 07:01:18', ' ', '', '', 'publish', 'closed', 'closed', '', '201', '', '', '2019-06-20 10:36:24', '2019-06-20 03:36:24', '', 0, 'http://127.0.0.1/kientruc/?p=201', 4, 'nav_menu_item', '', 0),
(202, 1, '2019-06-14 16:12:41', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-06-14 16:12:41', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/kientruc/?post_type=portfolio&p=202', 0, 'portfolio', '', 0),
(203, 1, '2019-06-14 16:16:27', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-06-14 16:16:27', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/kientruc/?post_type=portfolio&p=203', 0, 'portfolio', '', 0),
(204, 1, '2019-06-14 16:17:22', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-06-14 16:17:22', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/kientruc/?post_type=portfolio&p=204', 0, 'portfolio', '', 0),
(205, 1, '2019-06-14 16:46:07', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-06-14 16:46:07', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/kientruc/?p=205', 0, 'post', '', 0),
(206, 1, '2019-06-15 19:01:17', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-06-15 19:01:17', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/kientruc/?p=206', 0, 'post', '', 0),
(207, 1, '2019-06-17 11:51:46', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-06-17 11:51:46', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/kientruc/?post_type=vatlieu&p=207', 0, 'vatlieu', '', 0),
(208, 1, '2019-06-17 11:52:17', '2019-06-17 04:52:17', '[:vi][modula id=\"185\"]\r\n\r\n&nbsp;[:]', '[:vi]test 1[:]', '', 'trash', 'open', 'open', '', 'test-1__trashed', '', '', '2019-06-17 16:45:06', '2019-06-17 09:45:06', '', 0, 'http://127.0.0.1/kientruc/?post_type=vatlieu&#038;p=208', 0, 'vatlieu', '', 0),
(209, 1, '2019-06-17 11:52:17', '2019-06-17 04:52:17', '', '[:vi]test 1[:]', '', 'inherit', 'closed', 'closed', '', '208-revision-v1', '', '', '2019-06-17 11:52:17', '2019-06-17 04:52:17', '', 208, 'http://127.0.0.1/kientruc/?p=209', 0, 'revision', '', 0),
(210, 1, '2019-06-17 11:54:21', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-06-17 11:54:21', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/kientruc/?page_id=210', 0, 'page', '', 0),
(211, 1, '2019-06-17 11:54:45', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-06-17 11:54:45', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/kientruc/?page_id=211', 0, 'page', '', 0),
(212, 1, '2019-06-17 11:55:30', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-06-17 11:55:30', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/kientruc/?page_id=212', 0, 'page', '', 0),
(213, 1, '2019-06-17 11:55:58', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-06-17 11:55:58', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/kientruc/?page_id=213', 0, 'page', '', 0),
(214, 1, '2019-06-17 11:56:15', '2019-06-17 04:56:15', '', '[:vi]Vật liệu[:en]Materials[:]', '', 'publish', 'closed', 'closed', '', 'vat-lieu', '', '', '2019-06-17 21:00:38', '2019-06-17 14:00:38', '', 0, 'http://127.0.0.1/kientruc/?page_id=214', 0, 'page', '', 0),
(215, 1, '2019-06-17 11:56:15', '2019-06-17 04:56:15', '', '[:vi]Vật liệu[:]', '', 'inherit', 'closed', 'closed', '', '214-revision-v1', '', '', '2019-06-17 11:56:15', '2019-06-17 04:56:15', '', 214, 'http://127.0.0.1/kientruc/?p=215', 0, 'revision', '', 0),
(216, 1, '2019-06-17 12:24:52', '2019-06-17 05:24:52', '', '[:vi]test 2[:]', '', 'trash', 'open', 'open', '', 'test-2__trashed', '', '', '2019-06-17 16:45:10', '2019-06-17 09:45:10', '', 0, 'http://127.0.0.1/kientruc/?post_type=vatlieu&#038;p=216', 0, 'vatlieu', '', 0),
(217, 1, '2019-06-17 12:24:52', '2019-06-17 05:24:52', '', '[:vi]test 2[:]', '', 'inherit', 'closed', 'closed', '', '216-revision-v1', '', '', '2019-06-17 12:24:52', '2019-06-17 05:24:52', '', 216, 'http://127.0.0.1/kientruc/?p=217', 0, 'revision', '', 0),
(218, 1, '2019-06-17 12:58:00', '2019-06-17 05:58:00', '[:vi]sadsadsad\r\n\r\n&nbsp;[:]', '[:vi]test 1[:]', '', 'inherit', 'closed', 'closed', '', '208-revision-v1', '', '', '2019-06-17 12:58:00', '2019-06-17 05:58:00', '', 208, 'http://127.0.0.1/kientruc/?p=218', 0, 'revision', '', 0),
(220, 1, '2019-06-17 13:25:34', '2019-06-17 06:25:34', '[:vi]sadsadsad\r\n\r\nádasdasdsd\r\n\r\n&nbsp;[:]', '[:vi]test 1[:]', '', 'inherit', 'closed', 'closed', '', '208-revision-v1', '', '', '2019-06-17 13:25:34', '2019-06-17 06:25:34', '', 208, 'http://127.0.0.1/kientruc/?p=220', 0, 'revision', '', 0),
(221, 1, '2019-06-17 13:48:51', '2019-06-17 06:48:51', '[:vi][modula id=\"185\"][:]', '[:vi]test 1[:]', '', 'inherit', 'closed', 'closed', '', '208-revision-v1', '', '', '2019-06-17 13:48:51', '2019-06-17 06:48:51', '', 208, 'http://127.0.0.1/kientruc/?p=221', 0, 'revision', '', 0),
(222, 1, '2019-06-17 13:49:50', '2019-06-17 06:49:50', '[:vi][modula id=\"185\"]\r\n\r\n&nbsp;[:]', '[:vi]test 1[:]', '', 'inherit', 'closed', 'closed', '', '208-revision-v1', '', '', '2019-06-17 13:49:50', '2019-06-17 06:49:50', '', 208, 'http://127.0.0.1/kientruc/?p=222', 0, 'revision', '', 0),
(223, 1, '2019-06-17 16:00:08', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-06-17 16:00:08', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/kientruc/?p=223', 0, 'post', '', 0),
(224, 1, '2019-06-17 16:08:57', '2019-06-17 09:08:57', '', '[:vi]Văn phòng cổ điển[:]', '', 'publish', 'open', 'open', '', 'van-phong-co-dien', '', '', '2019-06-17 16:08:57', '2019-06-17 09:08:57', '', 0, 'http://127.0.0.1/kientruc/?post_type=goithieu&#038;p=224', 0, 'goithieu', '', 0),
(225, 1, '2019-06-17 16:08:57', '2019-06-17 09:08:57', '', '[:vi]Văn phòng cổ điển[:]', '', 'inherit', 'closed', 'closed', '', '224-revision-v1', '', '', '2019-06-17 16:08:57', '2019-06-17 09:08:57', '', 224, 'http://127.0.0.1/kientruc/?p=225', 0, 'revision', '', 0),
(226, 1, '2019-06-17 16:09:55', '2019-06-17 09:09:55', '', '[:vi]Xưởng gỗ[:]', '', 'publish', 'open', 'open', '', 'xuong-go', '', '', '2019-06-17 16:09:55', '2019-06-17 09:09:55', '', 0, 'http://127.0.0.1/kientruc/?post_type=goithieu&#038;p=226', 0, 'goithieu', '', 0),
(227, 1, '2019-06-17 16:09:48', '2019-06-17 09:09:48', '', 'tmp_1445920402', '', 'inherit', 'open', 'closed', '', 'tmp_1445920402', '', '', '2019-06-17 16:09:48', '2019-06-17 09:09:48', '', 226, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1445920402.jpg', 0, 'attachment', 'image/jpeg', 0),
(228, 1, '2019-06-17 16:09:55', '2019-06-17 09:09:55', '', '[:vi]Xưởng gỗ[:]', '', 'inherit', 'closed', 'closed', '', '226-revision-v1', '', '', '2019-06-17 16:09:55', '2019-06-17 09:09:55', '', 226, 'http://127.0.0.1/kientruc/?p=228', 0, 'revision', '', 0),
(230, 1, '2019-06-17 16:28:12', '2019-06-17 09:28:12', '', '[:vi]Nhân sự[:]', '', 'publish', 'open', 'open', '', 'nhan-su', '', '', '2019-06-17 16:28:12', '2019-06-17 09:28:12', '', 0, 'http://127.0.0.1/kientruc/?post_type=goithieu&#038;p=230', 0, 'goithieu', '', 0),
(231, 1, '2019-06-17 16:28:06', '2019-06-17 09:28:06', '', 'tmp_1554112610', '', 'inherit', 'open', 'closed', '', 'tmp_1554112610', '', '', '2019-06-17 16:28:06', '2019-06-17 09:28:06', '', 230, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1554112610.jpg', 0, 'attachment', 'image/jpeg', 0),
(232, 1, '2019-06-17 16:28:12', '2019-06-17 09:28:12', '', '[:vi]Nhân sự[:]', '', 'inherit', 'closed', 'closed', '', '230-revision-v1', '', '', '2019-06-17 16:28:12', '2019-06-17 09:28:12', '', 230, 'http://127.0.0.1/kientruc/?p=232', 0, 'revision', '', 0),
(233, 1, '2019-06-17 16:29:37', '2019-06-17 09:29:37', '[:vi]<img class=\"alignnone size-medium wp-image-231\" src=\"http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1554112610-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" />\r\n\r\n&nbsp;[:]', '[:vi]Nhân sự[:]', '', 'publish', 'open', 'open', '', 'english-nhan-su', '', '', '2019-06-17 17:02:25', '2019-06-17 10:02:25', '', 0, 'http://127.0.0.1/kientruc/?post_type=goithieu&#038;p=233', 0, 'goithieu', '', 0),
(234, 1, '2019-06-17 16:28:58', '2019-06-17 09:28:58', '', 'tmp_1553485496', '', 'inherit', 'open', 'closed', '', 'tmp_1553485496', '', '', '2019-06-17 16:28:58', '2019-06-17 09:28:58', '', 233, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1553485496.jpg', 0, 'attachment', 'image/jpeg', 0),
(235, 1, '2019-06-17 16:29:37', '2019-06-17 09:29:37', '', '[:en]Nhân sự[:]', '', 'inherit', 'closed', 'closed', '', '233-revision-v1', '', '', '2019-06-17 16:29:37', '2019-06-17 09:29:37', '', 233, 'http://127.0.0.1/kientruc/?p=235', 0, 'revision', '', 0),
(236, 1, '2019-06-17 16:29:55', '2019-06-17 09:29:55', '', '[:vi]Nhân sự[:]', '', 'inherit', 'closed', 'closed', '', '233-revision-v1', '', '', '2019-06-17 16:29:55', '2019-06-17 09:29:55', '', 233, 'http://127.0.0.1/kientruc/?p=236', 0, 'revision', '', 0),
(237, 1, '2019-06-17 16:34:13', '2019-06-17 09:34:13', '', '[:vi]Cơ cấu chức năng[:]', '', 'publish', 'open', 'open', '', 'co-cau-chuc-nang', '', '', '2019-06-17 16:34:13', '2019-06-17 09:34:13', '', 0, 'http://127.0.0.1/kientruc/?post_type=goithieu&#038;p=237', 0, 'goithieu', '', 0),
(238, 1, '2019-06-17 16:33:54', '2019-06-17 09:33:54', '', 'tmp_1553934690', '', 'inherit', 'open', 'closed', '', 'tmp_1553934690', '', '', '2019-06-17 16:33:54', '2019-06-17 09:33:54', '', 237, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1553934690.jpg', 0, 'attachment', 'image/jpeg', 0),
(239, 1, '2019-06-17 16:34:13', '2019-06-17 09:34:13', '', '[:vi]Cơ cấu chức năng[:]', '', 'inherit', 'closed', 'closed', '', '237-revision-v1', '', '', '2019-06-17 16:34:13', '2019-06-17 09:34:13', '', 237, 'http://127.0.0.1/kientruc/?p=239', 0, 'revision', '', 0),
(240, 1, '2019-06-17 16:46:02', '2019-06-17 09:46:02', '[:vi]<img class=\"alignnone size-medium wp-image-253\" src=\"http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1554043876-300x167.jpg\" alt=\"\" width=\"300\" height=\"167\" /> <img class=\"alignnone size-medium wp-image-250\" src=\"http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1554055221-300x167.jpg\" alt=\"\" width=\"300\" height=\"167\" /> <img class=\"alignnone size-medium wp-image-247\" src=\"http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1554041125-300x167.jpg\" alt=\"\" width=\"300\" height=\"167\" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;[:]', '[:vi]Lát nền[:en]Background paving[:]', '', 'trash', 'open', 'open', '', 'lat-nen__trashed', '', '', '2019-06-20 10:29:47', '2019-06-20 03:29:47', '', 0, 'http://127.0.0.1/kientruc/?post_type=vatlieu&#038;p=240', 0, 'vatlieu', '', 0),
(241, 1, '2019-06-17 16:45:51', '2019-06-17 09:45:51', '', 'tmp_1553943090', '', 'inherit', 'open', 'closed', '', 'tmp_1553943090', '', '', '2019-06-17 16:45:51', '2019-06-17 09:45:51', '', 240, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1553943090.jpg', 0, 'attachment', 'image/jpeg', 0),
(242, 1, '2019-06-17 16:46:02', '2019-06-17 09:46:02', '', '[:en]Lát nền[:]', '', 'inherit', 'closed', 'closed', '', '240-revision-v1', '', '', '2019-06-17 16:46:02', '2019-06-17 09:46:02', '', 240, 'http://127.0.0.1/kientruc/?p=242', 0, 'revision', '', 0),
(243, 1, '2019-06-17 16:47:10', '2019-06-17 09:47:10', '', '[:vi]Ốp tường[:en]Wall Tiles[:]', '', 'trash', 'open', 'open', '', 'op-tuong__trashed', '', '', '2019-06-20 10:30:01', '2019-06-20 03:30:01', '', 0, 'http://127.0.0.1/kientruc/?post_type=vatlieu&#038;p=243', 0, 'vatlieu', '', 0),
(244, 1, '2019-06-17 16:47:02', '2019-06-17 09:47:02', '', 'tmp_1554033982', '', 'inherit', 'open', 'closed', '', 'tmp_1554033982', '', '', '2019-06-17 16:47:02', '2019-06-17 09:47:02', '', 243, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1554033982.jpg', 0, 'attachment', 'image/jpeg', 0),
(245, 1, '2019-06-17 16:47:10', '2019-06-17 09:47:10', '', '[:en]Ốp tường[:]', '', 'inherit', 'closed', 'closed', '', '243-revision-v1', '', '', '2019-06-17 16:47:10', '2019-06-17 09:47:10', '', 243, 'http://127.0.0.1/kientruc/?p=245', 0, 'revision', '', 0),
(246, 1, '2019-06-17 16:48:12', '2019-06-17 09:48:12', '', '[:vi]Nội thất[:en]Interior[:]', '', 'trash', 'open', 'open', '', 'noi-that__trashed', '', '', '2019-06-20 10:29:58', '2019-06-20 03:29:58', '', 0, 'http://127.0.0.1/kientruc/?post_type=vatlieu&#038;p=246', 0, 'vatlieu', '', 0),
(247, 1, '2019-06-17 16:48:05', '2019-06-17 09:48:05', '', 'tmp_1554041125', '', 'inherit', 'open', 'closed', '', 'tmp_1554041125', '', '', '2019-06-17 16:48:05', '2019-06-17 09:48:05', '', 246, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1554041125.jpg', 0, 'attachment', 'image/jpeg', 0),
(248, 1, '2019-06-17 16:48:12', '2019-06-17 09:48:12', '', '[:en]Nội thất[:]', '', 'inherit', 'closed', 'closed', '', '246-revision-v1', '', '', '2019-06-17 16:48:12', '2019-06-17 09:48:12', '', 246, 'http://127.0.0.1/kientruc/?p=248', 0, 'revision', '', 0),
(249, 1, '2019-06-17 16:49:13', '2019-06-17 09:49:13', '', '[:vi]Đèn điện[:en]Electric lamps[:]', '', 'trash', 'open', 'open', '', 'den-dien__trashed', '', '', '2019-06-20 10:29:54', '2019-06-20 03:29:54', '', 0, 'http://127.0.0.1/kientruc/?post_type=vatlieu&#038;p=249', 0, 'vatlieu', '', 0),
(250, 1, '2019-06-17 16:49:02', '2019-06-17 09:49:02', '', 'tmp_1554055221', '', 'inherit', 'open', 'closed', '', 'tmp_1554055221', '', '', '2019-06-17 16:49:02', '2019-06-17 09:49:02', '', 249, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1554055221.jpg', 0, 'attachment', 'image/jpeg', 0),
(251, 1, '2019-06-17 16:49:13', '2019-06-17 09:49:13', '', '[:en]Đèn điện[:]', '', 'inherit', 'closed', 'closed', '', '249-revision-v1', '', '', '2019-06-17 16:49:13', '2019-06-17 09:49:13', '', 249, 'http://127.0.0.1/kientruc/?p=251', 0, 'revision', '', 0),
(252, 1, '2019-06-17 16:51:19', '2019-06-17 09:51:19', '', 'Furniture', '', 'trash', 'open', 'open', '', 'furniture__trashed', '', '', '2019-06-20 10:29:51', '2019-06-20 03:29:51', '', 0, 'http://127.0.0.1/kientruc/?post_type=vatlieu&#038;p=252', 0, 'vatlieu', '', 0),
(253, 1, '2019-06-17 16:51:11', '2019-06-17 09:51:11', '', 'tmp_1554043876', '', 'inherit', 'open', 'closed', '', 'tmp_1554043876', '', '', '2019-06-17 16:51:11', '2019-06-17 09:51:11', '', 252, 'http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1554043876.jpg', 0, 'attachment', 'image/jpeg', 0),
(254, 1, '2019-06-17 16:51:19', '2019-06-17 09:51:19', '', '[:en]Furniture[:]', '', 'inherit', 'closed', 'closed', '', '252-revision-v1', '', '', '2019-06-17 16:51:19', '2019-06-17 09:51:19', '', 252, 'http://127.0.0.1/kientruc/?p=254', 0, 'revision', '', 0),
(255, 1, '2019-06-17 16:52:19', '2019-06-17 09:52:19', '', '[:en]Thiết bị[:]', '', 'trash', 'open', 'open', '', 'english-thiet-bi__trashed', '', '', '2019-06-17 16:59:11', '2019-06-17 09:59:11', '', 0, 'http://127.0.0.1/kientruc/?post_type=vatlieu&#038;p=255', 0, 'vatlieu', '', 0),
(256, 1, '2019-06-17 16:52:19', '2019-06-17 09:52:19', '', '[:en]Thiết bị[:]', '', 'inherit', 'closed', 'closed', '', '255-revision-v1', '', '', '2019-06-17 16:52:19', '2019-06-17 09:52:19', '', 255, 'http://127.0.0.1/kientruc/?p=256', 0, 'revision', '', 0),
(257, 1, '2019-06-17 17:02:25', '2019-06-17 10:02:25', '[:vi]<img class=\"alignnone size-medium wp-image-231\" src=\"http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1554112610-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" />\r\n\r\n&nbsp;[:]', '[:vi]Nhân sự[:]', '', 'inherit', 'closed', 'closed', '', '233-revision-v1', '', '', '2019-06-17 17:02:25', '2019-06-17 10:02:25', '', 233, 'http://127.0.0.1/kientruc/?p=257', 0, 'revision', '', 0),
(258, 1, '2019-06-17 18:59:09', '2019-06-17 11:59:09', '', '[:vi]Lát nền[:en]Background paving[:]', '', 'inherit', 'closed', 'closed', '', '240-revision-v1', '', '', '2019-06-17 18:59:09', '2019-06-17 11:59:09', '', 240, 'http://127.0.0.1/kientruc/?p=258', 0, 'revision', '', 0),
(259, 1, '2019-06-17 19:00:04', '2019-06-17 12:00:04', '', '[:vi]Ốp tường[:en]Wall Tiles[:]', '', 'inherit', 'closed', 'closed', '', '243-revision-v1', '', '', '2019-06-17 19:00:04', '2019-06-17 12:00:04', '', 243, 'http://127.0.0.1/kientruc/?p=259', 0, 'revision', '', 0),
(260, 1, '2019-06-17 19:00:31', '2019-06-17 12:00:31', '', '[:vi]Nội thất[:en]Interior[:]', '', 'inherit', 'closed', 'closed', '', '246-revision-v1', '', '', '2019-06-17 19:00:31', '2019-06-17 12:00:31', '', 246, 'http://127.0.0.1/kientruc/?p=260', 0, 'revision', '', 0),
(261, 1, '2019-06-17 19:00:56', '2019-06-17 12:00:56', '', '[:vi]Đèn điện[:en]Electric lamps[:]', '', 'inherit', 'closed', 'closed', '', '249-revision-v1', '', '', '2019-06-17 19:00:56', '2019-06-17 12:00:56', '', 249, 'http://127.0.0.1/kientruc/?p=261', 0, 'revision', '', 0),
(262, 1, '2019-06-17 19:02:25', '2019-06-17 12:02:25', '', 'Furniture', '', 'inherit', 'closed', 'closed', '', '252-revision-v1', '', '', '2019-06-17 19:02:25', '2019-06-17 12:02:25', '', 252, 'http://127.0.0.1/kientruc/?p=262', 0, 'revision', '', 0),
(263, 1, '2019-06-17 19:08:20', '2019-06-17 12:08:20', '[:vi]adsadasd\r\n\r\n&nbsp;[:]', '[:vi]test 1[:]', '', 'publish', 'open', 'open', '', 'test-1', '', '', '2019-06-18 16:41:17', '2019-06-18 09:41:17', '', 0, 'http://127.0.0.1/kientruc/?post_type=goithieu&#038;p=263', 0, 'goithieu', '', 0),
(264, 1, '2019-06-17 19:08:20', '2019-06-17 12:08:20', '', '[:vi]test 1[:]', '', 'inherit', 'closed', 'closed', '', '263-revision-v1', '', '', '2019-06-17 19:08:20', '2019-06-17 12:08:20', '', 263, 'http://127.0.0.1/kientruc/?p=264', 0, 'revision', '', 0),
(265, 1, '2019-06-17 20:13:58', '2019-06-17 13:13:58', '[:vi]<img class=\"alignnone size-medium wp-image-191\" src=\"http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1553852243-300x167.jpg\" alt=\"\" width=\"300\" height=\"167\" />\r\n\r\n&nbsp;[:]', '[:vi]Lát nền[:en]Background paving[:]', '', 'inherit', 'closed', 'closed', '', '240-revision-v1', '', '', '2019-06-17 20:13:58', '2019-06-17 13:13:58', '', 240, 'http://127.0.0.1/kientruc/?p=265', 0, 'revision', '', 0),
(266, 1, '2019-06-17 21:00:38', '2019-06-17 14:00:38', '', '[:vi]Vật liệu[:en]Materials[:]', '', 'inherit', 'closed', 'closed', '', '214-revision-v1', '', '', '2019-06-17 21:00:38', '2019-06-17 14:00:38', '', 214, 'http://127.0.0.1/kientruc/?p=266', 0, 'revision', '', 0),
(267, 1, '2019-06-18 13:39:18', '2019-06-18 06:39:18', '[:vi]đasadsadasd[:]', '[:vi]Lát nền[:en]Background paving[:]', '', 'inherit', 'closed', 'closed', '', '240-revision-v1', '', '', '2019-06-18 13:39:18', '2019-06-18 06:39:18', '', 240, 'http://127.0.0.1/kientruc/?p=267', 0, 'revision', '', 0),
(268, 1, '2019-06-18 13:41:24', '2019-06-18 06:41:24', '[:vi]đasadsadasdsdsadasdasdasdsads\r\n\r\n&nbsp;[:]', '[:vi]Lát nền[:en]Background paving[:]', '', 'inherit', 'closed', 'closed', '', '240-revision-v1', '', '', '2019-06-18 13:41:24', '2019-06-18 06:41:24', '', 240, 'http://127.0.0.1/kientruc/?p=268', 0, 'revision', '', 0),
(269, 1, '2019-06-18 13:45:00', '2019-06-18 06:45:00', '[:vi]đasadsadasdsdsadasdasdasdsads\r\n\r\n&nbsp;\r\n\r\n&nbsp;[:]', '[:vi]Lát nền[:en]Background paving[:]', '', 'inherit', 'closed', 'closed', '', '240-revision-v1', '', '', '2019-06-18 13:45:00', '2019-06-18 06:45:00', '', 240, 'http://127.0.0.1/kientruc/?p=269', 0, 'revision', '', 0),
(270, 1, '2019-06-18 13:56:20', '2019-06-18 06:56:20', '[:vi]<img class=\"alignnone size-medium wp-image-253\" src=\"http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1554043876-300x167.jpg\" alt=\"\" width=\"300\" height=\"167\" /> <img class=\"alignnone size-medium wp-image-250\" src=\"http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1554055221-300x167.jpg\" alt=\"\" width=\"300\" height=\"167\" /> <img class=\"alignnone size-medium wp-image-247\" src=\"http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1554041125-300x167.jpg\" alt=\"\" width=\"300\" height=\"167\" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;[:]', '[:vi]Lát nền[:en]Background paving[:]', '', 'inherit', 'closed', 'closed', '', '240-revision-v1', '', '', '2019-06-18 13:56:20', '2019-06-18 06:56:20', '', 240, 'http://127.0.0.1/kientruc/?p=270', 0, 'revision', '', 0),
(271, 1, '2019-06-18 14:06:51', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-06-18 14:06:51', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/kientruc/?post_type=vp_lists&p=271', 0, 'vp_lists', '', 0),
(272, 1, '2019-06-18 14:08:02', '2019-06-18 07:08:02', '', '[:vi]test[:]', '', 'trash', 'closed', 'closed', '', 'test__trashed', '', '', '2019-06-18 14:09:38', '2019-06-18 07:09:38', '', 0, 'http://127.0.0.1/kientruc/?post_type=portfolio&#038;p=272', 0, 'portfolio', '', 0),
(273, 1, '2019-06-18 14:08:02', '2019-06-18 07:08:02', '', '[:vi]test[:]', '', 'inherit', 'closed', 'closed', '', '272-revision-v1', '', '', '2019-06-18 14:08:02', '2019-06-18 07:08:02', '', 272, 'http://127.0.0.1/kientruc/272-revision-v1/', 0, 'revision', '', 0),
(274, 1, '2019-06-18 14:08:42', '2019-06-18 07:08:42', '', '', '', 'publish', 'closed', 'closed', '', '274', '', '', '2019-06-18 14:08:42', '2019-06-18 07:08:42', '', 0, 'http://127.0.0.1/kientruc/?post_type=vp_lists&#038;p=274', 0, 'vp_lists', '', 0),
(275, 1, '2019-06-18 14:08:42', '2019-06-18 07:08:42', '', '', '', 'inherit', 'closed', 'closed', '', '274-revision-v1', '', '', '2019-06-18 14:08:42', '2019-06-18 07:08:42', '', 274, 'http://127.0.0.1/kientruc/274-revision-v1/', 0, 'revision', '', 0),
(276, 1, '2019-06-18 16:36:52', '2019-06-18 09:36:52', '[:vi][modula id=\"185\"]\r\n\r\n&nbsp;\r\n\r\n&nbsp;[:en][modula id=\"185\"]\r\n\r\n&nbsp;[:]', '[:vi]Thi công[:en]Construction[:]', '', 'publish', 'open', 'open', '', 'thi-cong', '', '', '2019-06-18 16:40:45', '2019-06-18 09:40:45', '', 0, 'http://127.0.0.1/kientruc/?p=276', 0, 'post', '', 0),
(277, 1, '2019-06-18 16:36:52', '2019-06-18 09:36:52', '', '[:vi]Thi công[:en]Construction[:]', '', 'inherit', 'closed', 'closed', '', '276-revision-v1', '', '', '2019-06-18 16:36:52', '2019-06-18 09:36:52', '', 276, 'http://127.0.0.1/kientruc/?p=277', 0, 'revision', '', 0),
(278, 1, '2019-06-18 16:37:28', '2019-06-18 09:37:28', '[modula id=\"185\"]\r\n\r\n&nbsp;', '[:vi]Thi công[:en]Construction[:]', '', 'inherit', 'closed', 'closed', '', '276-revision-v1', '', '', '2019-06-18 16:37:28', '2019-06-18 09:37:28', '', 276, 'http://127.0.0.1/kientruc/?p=278', 0, 'revision', '', 0),
(279, 1, '2019-06-18 16:40:45', '2019-06-18 09:40:45', '[:vi][modula id=\"185\"]\r\n\r\n&nbsp;\r\n\r\n&nbsp;[:en][modula id=\"185\"]\r\n\r\n&nbsp;[:]', '[:vi]Thi công[:en]Construction[:]', '', 'inherit', 'closed', 'closed', '', '276-revision-v1', '', '', '2019-06-18 16:40:45', '2019-06-18 09:40:45', '', 276, 'http://127.0.0.1/kientruc/?p=279', 0, 'revision', '', 0),
(280, 1, '2019-06-18 16:41:17', '2019-06-18 09:41:17', '[:vi]adsadasd\r\n\r\n&nbsp;[:]', '[:vi]test 1[:]', '', 'inherit', 'closed', 'closed', '', '263-revision-v1', '', '', '2019-06-18 16:41:17', '2019-06-18 09:41:17', '', 263, 'http://127.0.0.1/kientruc/?p=280', 0, 'revision', '', 0),
(281, 1, '2019-06-19 16:12:23', '2019-06-19 09:12:23', '[:vi]<img class=\"alignnone size-medium wp-image-253\" src=\"http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1554043876-300x167.jpg\" alt=\"\" width=\"300\" height=\"167\" />adadadadad\r\n\r\n&nbsp;\r\n\r\n&nbsp;[:]', '[:vi]Văn phòng thiết kế[:]', '', 'publish', 'open', 'open', '', 'van-phong-thiet-ke', '', '', '2019-06-19 16:22:08', '2019-06-19 09:22:08', '', 0, 'http://127.0.0.1/kientruc/?post_type=gioithieu&#038;p=281', 0, 'gioithieu', '', 0),
(282, 1, '2019-06-19 16:12:23', '2019-06-19 09:12:23', '', '[:vi]Văn phòng thiết kế[:]', '', 'inherit', 'closed', 'closed', '', '281-revision-v1', '', '', '2019-06-19 16:12:23', '2019-06-19 09:12:23', '', 281, 'http://127.0.0.1/kientruc/?p=282', 0, 'revision', '', 0),
(283, 1, '2019-06-19 16:16:09', '2019-06-19 09:16:09', '[:vi]<img class=\"alignnone size-medium wp-image-253\" src=\"http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1554043876-300x167.jpg\" alt=\"\" width=\"300\" height=\"167\" />\r\n\r\n&nbsp;[:]', '[:vi]Văn phòng thiết kế[:]', '', 'inherit', 'closed', 'closed', '', '281-revision-v1', '', '', '2019-06-19 16:16:09', '2019-06-19 09:16:09', '', 281, 'http://127.0.0.1/kientruc/?p=283', 0, 'revision', '', 0),
(284, 1, '2019-06-19 16:22:08', '2019-06-19 09:22:08', '[:vi]<img class=\"alignnone size-medium wp-image-253\" src=\"http://127.0.0.1/kientruc/wp-content/uploads/2019/06/tmp_1554043876-300x167.jpg\" alt=\"\" width=\"300\" height=\"167\" />adadadadad\r\n\r\n&nbsp;\r\n\r\n&nbsp;[:]', '[:vi]Văn phòng thiết kế[:]', '', 'inherit', 'closed', 'closed', '', '281-revision-v1', '', '', '2019-06-19 16:22:08', '2019-06-19 09:22:08', '', 281, 'http://127.0.0.1/kientruc/?p=284', 0, 'revision', '', 0),
(285, 1, '2019-06-19 17:02:26', '2019-06-19 10:02:26', '[:vi][modula id=\"185\"]\r\n\r\n&nbsp;[:]', '[:vi]test 1[:]', '', 'publish', 'open', 'open', '', 'test-1', '', '', '2019-06-20 10:09:47', '2019-06-20 03:09:47', '', 0, 'http://127.0.0.1/kientruc/?p=285', 0, 'post', '', 0),
(286, 1, '2019-06-19 17:02:26', '2019-06-19 10:02:26', '', '[:vi]test 1[:]', '', 'inherit', 'closed', 'closed', '', '285-revision-v1', '', '', '2019-06-19 17:02:26', '2019-06-19 10:02:26', '', 285, 'http://127.0.0.1/kientruc/?p=286', 0, 'revision', '', 0),
(287, 1, '2019-06-19 19:42:30', '2019-06-19 12:42:30', '[:vi]asdsadsadsad[:]', '[:vi]test 1[:]', '', 'inherit', 'closed', 'closed', '', '285-revision-v1', '', '', '2019-06-19 19:42:30', '2019-06-19 12:42:30', '', 285, 'http://127.0.0.1/kientruc/?p=287', 0, 'revision', '', 0),
(288, 1, '2019-06-19 23:59:37', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-06-19 23:59:37', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/kientruc/?p=288', 0, 'post', '', 0),
(289, 1, '2019-06-20 00:14:56', '2019-06-19 17:14:56', '[:vi][sp_wpcarousel id=\"177\"]\r\n\r\n&nbsp;\r\n\r\n&nbsp;[:]', '[:vi]Nguyễn Văn Ngà[:en]Nguyen Van Nga[:]', '', 'inherit', 'closed', 'closed', '', '170-revision-v1', '', '', '2019-06-20 00:14:56', '2019-06-19 17:14:56', '', 170, 'http://127.0.0.1/kientruc/?p=289', 0, 'revision', '', 0),
(290, 1, '2019-06-20 00:40:38', '2019-06-19 17:40:38', '[:vi][modula id=\"185\"]\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;[:]', '[:vi]Nguyễn Văn Ngà[:en]Nguyen Van Nga[:]', '', 'inherit', 'closed', 'closed', '', '170-revision-v1', '', '', '2019-06-20 00:40:38', '2019-06-19 17:40:38', '', 170, 'http://127.0.0.1/kientruc/?p=290', 0, 'revision', '', 0),
(291, 1, '2019-06-20 00:43:16', '2019-06-19 17:43:16', '[:vi][modula id=\"185\"]\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;[:]', '[:vi]Nguyễn Văn Ngà[:en]Nguyen Van Nga[:]', '', 'inherit', 'closed', 'closed', '', '170-revision-v1', '', '', '2019-06-20 00:43:16', '2019-06-19 17:43:16', '', 170, 'http://127.0.0.1/kientruc/?p=291', 0, 'revision', '', 0),
(292, 1, '2019-06-20 08:23:42', '2019-06-20 01:23:42', '', '[:vi]teest2[:]', '', 'publish', 'open', 'open', '', 'teest2', '', '', '2019-06-20 09:58:00', '2019-06-20 02:58:00', '', 0, 'http://127.0.0.1/kientruc/?p=292', 0, 'post', '', 0),
(293, 1, '2019-06-20 08:23:42', '2019-06-20 01:23:42', '', '[:vi]teest2[:]', '', 'inherit', 'closed', 'closed', '', '292-revision-v1', '', '', '2019-06-20 08:23:42', '2019-06-20 01:23:42', '', 292, 'http://127.0.0.1/kientruc/?p=293', 0, 'revision', '', 0),
(294, 1, '2019-06-20 09:57:31', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-06-20 09:57:31', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/kientruc/?p=294', 0, 'post', '', 0),
(295, 1, '2019-06-20 10:09:47', '2019-06-20 03:09:47', '[:vi][modula id=\"185\"]\r\n\r\n&nbsp;[:]', '[:vi]test 1[:]', '', 'inherit', 'closed', 'closed', '', '285-revision-v1', '', '', '2019-06-20 10:09:47', '2019-06-20 03:09:47', '', 285, 'http://127.0.0.1/kientruc/?p=295', 0, 'revision', '', 0),
(296, 1, '2019-06-20 10:14:44', '2019-06-20 03:14:44', '', '[:vi]Văn phòng thiết kế[:]', '', 'publish', 'open', 'open', '', 'van-phong-thiet-ke-2', '', '', '2019-06-20 10:14:44', '2019-06-20 03:14:44', '', 0, 'http://127.0.0.1/kientruc/?p=296', 0, 'post', '', 0),
(297, 1, '2019-06-20 10:14:44', '2019-06-20 03:14:44', '', '[:vi]Văn phòng thiết kế[:]', '', 'inherit', 'closed', 'closed', '', '296-revision-v1', '', '', '2019-06-20 10:14:44', '2019-06-20 03:14:44', '', 296, 'http://127.0.0.1/kientruc/?p=297', 0, 'revision', '', 0),
(298, 1, '2019-06-20 10:20:41', '2019-06-20 03:20:41', '', '[:vi]Xưởng nội thất[:]', '', 'publish', 'open', 'open', '', 'aaa', '', '', '2019-06-20 10:21:13', '2019-06-20 03:21:13', '', 0, 'http://127.0.0.1/kientruc/?p=298', 0, 'post', '', 0),
(299, 1, '2019-06-20 10:20:41', '2019-06-20 03:20:41', '', '[:vi]aaa[:]', '', 'inherit', 'closed', 'closed', '', '298-revision-v1', '', '', '2019-06-20 10:20:41', '2019-06-20 03:20:41', '', 298, 'http://127.0.0.1/kientruc/?p=299', 0, 'revision', '', 0),
(300, 1, '2019-06-20 10:21:13', '2019-06-20 03:21:13', '', '[:vi]Xưởng nội thất[:]', '', 'inherit', 'closed', 'closed', '', '298-revision-v1', '', '', '2019-06-20 10:21:13', '2019-06-20 03:21:13', '', 298, 'http://127.0.0.1/kientruc/?p=300', 0, 'revision', '', 0),
(301, 1, '2019-06-20 10:23:46', '2019-06-20 03:23:46', '', '[:vi]Nhân sự[:]', '', 'publish', 'open', 'open', '', 'nhan-su', '', '', '2019-06-20 10:23:46', '2019-06-20 03:23:46', '', 0, 'http://127.0.0.1/kientruc/?p=301', 0, 'post', '', 0),
(302, 1, '2019-06-20 10:23:46', '2019-06-20 03:23:46', '', '[:vi]Nhân sự[:]', '', 'inherit', 'closed', 'closed', '', '301-revision-v1', '', '', '2019-06-20 10:23:46', '2019-06-20 03:23:46', '', 301, 'http://127.0.0.1/kientruc/?p=302', 0, 'revision', '', 0),
(303, 1, '2019-06-20 10:24:25', '2019-06-20 03:24:25', '', '[:vi]Hoạt động[:]', '', 'publish', 'open', 'open', '', 'hoat-dong', '', '', '2019-06-20 10:24:50', '2019-06-20 03:24:50', '', 0, 'http://127.0.0.1/kientruc/?p=303', 0, 'post', '', 0),
(304, 1, '2019-06-20 10:24:25', '2019-06-20 03:24:25', '', '[:vi]Hoạt động[:]', '', 'inherit', 'closed', 'closed', '', '303-revision-v1', '', '', '2019-06-20 10:24:25', '2019-06-20 03:24:25', '', 303, 'http://127.0.0.1/kientruc/?p=304', 0, 'revision', '', 0),
(305, 1, '2019-06-20 10:25:41', '2019-06-20 03:25:41', '', '[:vi]Cơ cấu chức năng[:]', '', 'publish', 'open', 'open', '', 'co-cau-chuc-nang', '', '', '2019-06-20 10:25:41', '2019-06-20 03:25:41', '', 0, 'http://127.0.0.1/kientruc/?p=305', 0, 'post', '', 0),
(306, 1, '2019-06-20 10:25:41', '2019-06-20 03:25:41', '', '[:vi]Cơ cấu chức năng[:]', '', 'inherit', 'closed', 'closed', '', '305-revision-v1', '', '', '2019-06-20 10:25:41', '2019-06-20 03:25:41', '', 305, 'http://127.0.0.1/kientruc/?p=306', 0, 'revision', '', 0),
(307, 1, '2019-06-20 10:34:10', '2019-06-20 03:34:10', '', '[:vi]Lát nền[:]', '', 'publish', 'open', 'open', '', 'lat-nen-2', '', '', '2019-06-20 10:34:10', '2019-06-20 03:34:10', '', 0, 'http://127.0.0.1/kientruc/?p=307', 0, 'post', '', 0),
(308, 1, '2019-06-20 10:34:10', '2019-06-20 03:34:10', '', '[:vi]Lát nền[:]', '', 'inherit', 'closed', 'closed', '', '307-revision-v1', '', '', '2019-06-20 10:34:10', '2019-06-20 03:34:10', '', 307, 'http://127.0.0.1/kientruc/?p=308', 0, 'revision', '', 0),
(309, 1, '2019-06-20 10:36:23', '2019-06-20 03:36:23', ' ', '', '', 'publish', 'closed', 'closed', '', '309', '', '', '2019-06-20 10:36:23', '2019-06-20 03:36:23', '', 0, 'http://127.0.0.1/kientruc/?p=309', 1, 'nav_menu_item', '', 0),
(310, 1, '2019-06-20 10:36:24', '2019-06-20 03:36:24', ' ', '', '', 'publish', 'closed', 'closed', '', '310', '', '', '2019-06-20 10:36:24', '2019-06-20 03:36:24', '', 0, 'http://127.0.0.1/kientruc/?p=310', 3, 'nav_menu_item', '', 0),
(311, 1, '2019-06-20 10:51:53', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-06-20 10:51:53', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/kientruc/?p=311', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_statistics_exclusions`
--

CREATE TABLE `wp_statistics_exclusions` (
  `ID` int(11) NOT NULL,
  `date` date NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `count` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_statistics_historical`
--

CREATE TABLE `wp_statistics_historical` (
  `ID` bigint(20) NOT NULL,
  `category` varchar(25) NOT NULL,
  `page_id` bigint(20) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `value` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_statistics_pages`
--

CREATE TABLE `wp_statistics_pages` (
  `page_id` bigint(20) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `count` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `wp_statistics_pages`
--

INSERT INTO `wp_statistics_pages` (`page_id`, `uri`, `type`, `date`, `count`, `id`) VALUES
(1, '/', 'home', '2019-06-05', 26, 18),
(2, '/lien-he/', 'page', '2019-06-05', 3, 23),
(3, '/van-tien-dung/', 'post', '2019-06-05', 4, 86),
(4, '/hoang-ke-viem/', 'post', '2019-06-05', 2, 72),
(5, '/huynh-ngoc-hue/', 'post', '2019-06-05', 1, 82),
(6, '/huynh-thi-kim-trang/', 'post', '2019-06-05', 1, 129),
(7, '/giang-nam-2/', 'post', '2019-06-05', 1, 84),
(8, '/', 'home', '2019-06-06', 41, 18),
(9, '/lien-he/', 'page', '2019-06-06', 15, 23),
(10, '/van-tien-dung/', 'post', '2019-06-06', 5, 86),
(11, '/hoang-ke-viem/', 'post', '2019-06-06', 3, 72),
(12, '/pham-thi-ngoc-ha/', 'post', '2019-06-06', 1, 123),
(13, '/bach-dang/', 'post', '2019-06-06', 3, 70),
(14, '/huynh-ngoc-hue/', 'post', '2019-06-06', 2, 82),
(15, '/khu-fpt/', 'post', '2019-06-06', 1, 79),
(16, '/', 'home', '2019-06-07', 24, 18),
(17, '/hoang-ke-viem/', 'post', '2019-06-07', 4, 72),
(18, '/van-tien-dung/', 'post', '2019-06-07', 5, 86),
(19, '/lien-he/', 'page', '2019-06-07', 6, 23),
(20, '/an-thuong-9/', 'post', '2019-06-07', 1, 57),
(21, '/gioi-thieu/', 'page', '2019-06-07', 1, 165),
(22, '/giang-nam-2/', 'post', '2019-06-07', 1, 84),
(23, '/phan-dang-luu/', 'post', '2019-06-07', 1, 77),
(24, '/', 'home', '2019-06-08', 13, 18),
(25, '/?p=84', 'post', '2019-06-08', 2, 84),
(26, '/lien-he/', 'page', '2019-06-08', 2, 23),
(27, '/', 'home', '2019-06-09', 5, 18),
(28, '/', 'home', '2019-06-10', 54, 18),
(29, '/gioi-thieu/', 'page', '2019-06-10', 10, 165),
(30, '/van-tien-dung/', 'post', '2019-06-10', 6, 86),
(31, '/lien-he/', 'page', '2019-06-10', 6, 23),
(32, '/?p=84', 'post', '2019-06-10', 4, 84),
(33, '/huynh-ngoc-hue/', 'post', '2019-06-10', 3, 82),
(34, '/phan-dang-luu/', 'post', '2019-06-10', 3, 77),
(35, '/an-thuong-9/', 'post', '2019-06-10', 2, 57),
(36, '/bach-dang/', 'post', '2019-06-10', 1, 70),
(37, '/', 'home', '2019-06-11', 3, 18),
(38, '/van-tien-dung/', 'post', '2019-06-11', 1, 86),
(39, '/nguyen-van-nga/', 'post', '2019-06-11', 2, 170),
(40, '/', 'home', '2019-06-14', 1, 18),
(41, '/', 'home', '2019-06-15', 5, 18),
(42, '/van-tien-dung/', 'post', '2019-06-15', 8, 86),
(43, '/hoang-ke-viem/', 'post', '2019-06-15', 3, 72),
(44, '/portfolio/thi-cong/', 'post', '2019-06-15', 2, 181),
(45, '/', 'home', '2019-06-16', 6, 18),
(46, '/van-tien-dung/', 'post', '2019-06-16', 6, 86),
(47, '/portfolio/thi-cong/', 'post', '2019-06-16', 1, 181),
(48, '/hoang-ke-viem/', 'post', '2019-06-16', 5, 72),
(49, '/an-thuong-9/', 'post', '2019-06-16', 2, 57),
(50, '/lien-he/', 'page', '2019-06-16', 1, 23),
(51, '/gioi-thieu/', 'page', '2019-06-17', 1, 165),
(52, '/vat-lieu/', 'page', '2019-06-17', 2, 214),
(53, '/', 'home', '2019-06-18', 3, 18),
(54, '/gioi-thieu/', 'page', '2019-06-18', 6, 165),
(55, '/vat-lieu/', 'page', '2019-06-18', 22, 214),
(56, '/giang-nam-2/', 'post', '2019-06-18', 2, 84),
(57, '/van-tien-dung/', 'post', '2019-06-18', 1, 86),
(58, '/vat-lieu/furniture/', 'post', '2019-06-18', 3, 252),
(59, '/vat-lieu/den-dien/', 'post', '2019-06-18', 3, 249),
(60, '/vat-lieu/noi-that/', 'post', '2019-06-18', 1, 246),
(61, '/', 'home', '2019-06-19', 5, 18),
(62, '/lien-he/', 'page', '2019-06-19', 3, 23),
(63, '/van-tien-dung/', 'post', '2019-06-19', 1, 86),
(64, '/gioi-thieu/', 'page', '2019-06-19', 10, 165),
(67, '/vat-lieu/', 'page', '2019-06-19', 4, 214),
(68, '/vat-lieu/lat-nen/', 'post', '2019-06-19', 1, 240),
(69, '/vat-lieu/furniture/', 'post', '2019-06-19', 1, 252),
(70, '/vat-lieu/op-tuong/', 'post', '2019-06-19', 1, 243);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_statistics_search`
--

CREATE TABLE `wp_statistics_search` (
  `ID` bigint(20) NOT NULL,
  `last_counter` date NOT NULL,
  `engine` varchar(64) NOT NULL,
  `host` varchar(255) DEFAULT NULL,
  `words` varchar(255) DEFAULT NULL,
  `visitor` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_statistics_useronline`
--

CREATE TABLE `wp_statistics_useronline` (
  `ID` int(11) NOT NULL,
  `ip` varchar(60) NOT NULL,
  `created` int(11) DEFAULT NULL,
  `timestamp` int(10) NOT NULL,
  `date` datetime NOT NULL,
  `referred` text NOT NULL,
  `agent` varchar(255) NOT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `location` varchar(10) DEFAULT NULL,
  `user_id` bigint(48) NOT NULL,
  `page_id` bigint(48) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_statistics_visit`
--

CREATE TABLE `wp_statistics_visit` (
  `ID` int(11) NOT NULL,
  `last_visit` datetime NOT NULL,
  `last_counter` date NOT NULL,
  `visit` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `wp_statistics_visit`
--

INSERT INTO `wp_statistics_visit` (`ID`, `last_visit`, `last_counter`, `visit`) VALUES
(1, '2019-06-04 20:26:19', '2019-06-04', 1),
(2, '2019-06-05 21:21:31', '2019-06-05', 104),
(3, '2019-06-06 18:20:10', '2019-06-06', 184),
(8, '2019-06-07 19:57:12', '2019-06-07', 73),
(18, '2019-06-08 22:00:26', '2019-06-08', 53),
(19, '2019-06-09 13:22:51', '2019-06-09', 12),
(25, '2019-06-10 11:56:20', '2019-06-10', 167),
(26, '2019-06-11 02:20:47', '2019-06-11', 13),
(27, '0000-00-00 00:00:00', '2019-06-12', 0),
(28, '0000-00-00 00:00:00', '2019-06-13', 0),
(29, '2019-06-14 08:39:23', '2019-06-14', 3),
(30, '2019-06-15 16:22:54', '2019-06-15', 107),
(31, '2019-06-16 14:59:07', '2019-06-16', 61),
(32, '0000-00-00 00:00:00', '2019-06-17', 4),
(33, '2019-06-18 13:36:25', '2019-06-18', 54),
(34, '2019-06-19 09:44:17', '2019-06-19', 38),
(35, '0000-00-00 00:00:00', '2019-06-20', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_statistics_visitor`
--

CREATE TABLE `wp_statistics_visitor` (
  `ID` int(11) NOT NULL,
  `last_counter` date NOT NULL,
  `referred` text NOT NULL,
  `agent` varchar(255) NOT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `UAString` varchar(255) DEFAULT NULL,
  `ip` varchar(60) NOT NULL,
  `location` varchar(10) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `honeypot` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `wp_statistics_visitor`
--

INSERT INTO `wp_statistics_visitor` (`ID`, `last_counter`, `referred`, `agent`, `platform`, `version`, `UAString`, `ip`, `location`, `hits`, `honeypot`) VALUES
(1, '2019-06-04', 'http://127.0.0.1/kientruc/wp-admin/plugin-install.php?s=WP+Statistics&tab=search&type=term', 'Chrome', 'Windows', '10.0', NULL, '127.0.0.1', '000', NULL, NULL),
(2, '2019-06-05', 'http://127.0.0.1/kientruc', 'Chrome', 'Windows', '10.0', '', '127.0.0.1', '000', 12, 0),
(3, '2019-06-05', 'http://thietkexaydunglammoc.com', 'Chrome', 'Windows', '10.0', '', '103.90.232.172', '000', 92, 0),
(4, '2019-06-06', 'http://thietkexaydunglammoc.com', 'Chrome', 'OS X', '10.11.6', '', '103.90.232.172', '000', 184, 0),
(5, '2019-06-07', 'http://thietkexaydunglammoc.com', 'Chrome', 'Windows', '10.0', '', '103.90.232.172', '000', 68, 0),
(6, '2019-06-07', 'http://thietkexaydunglammoc.com', 'Chrome', 'Windows', '10.0', '', '127.0.0.1', '000', 5, 0),
(7, '2019-06-08', 'http://thietkexaydunglammoc.com', 'Google Search', 'iOS', '12.3.1', '', '103.90.232.172', '000', 53, 0),
(8, '2019-06-09', 'http://thietkexaydunglammoc.com', 'Firefox', 'Windows', '10.0', '', '103.90.232.172', '000', 12, 0),
(9, '2019-06-10', 'http://thietkexaydunglammoc.com', 'Chrome', 'OS X', '10.14.4', '', '103.90.232.172', '000', 161, 0),
(10, '2019-06-10', 'http://thietkexaydunglammoc.com', 'Chrome', 'Windows', '10.0', '', '127.0.0.1', '000', 6, 0),
(11, '2019-06-11', 'http://127.0.0.1/kientruc', 'Chrome', 'Windows', '10.0', '', '127.0.0.1', '000', 13, 0),
(12, '2019-06-14', 'http://127.0.0.1/kientruc', 'Chrome', 'Windows', '10.0', '', '127.0.0.1', '000', 3, 0),
(13, '2019-06-15', 'http://127.0.0.1/kientruc', 'Chrome', 'Windows', '10.0', '', '127.0.0.1', '000', 107, 0),
(14, '2019-06-16', 'http://127.0.0.1/kientruc', 'Chrome', 'Windows', '10.0', '', '127.0.0.1', '000', 61, 0),
(15, '2019-06-17', 'http://127.0.0.1/kientruc', 'Firefox', 'Windows', '10.0', '', '127.0.0.1', '000', 4, 0),
(16, '2019-06-18', 'http://127.0.0.1/kientruc', 'Chrome', 'Windows', '10.0', '', '127.0.0.1', '000', 54, 0),
(17, '2019-06-19', 'http://127.0.0.1/kientruc', 'Chrome', 'Windows', '10.0', '', '127.0.0.1', '000', 38, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(5, 1, '_qts_slug_vi', 'chua-duoc-phan-loai'),
(6, 1, '_qts_slug_en', 'not-yet-classified'),
(9, 11, 'giao_dien_danh_muc', '1'),
(10, 11, '_giao_dien_danh_muc', 'field_5cf6d93779aaf'),
(13, 13, 'giao_dien_danh_muc', '1'),
(14, 13, '_giao_dien_danh_muc', 'field_5cf6d93779aaf'),
(15, 14, 'giao_dien_danh_muc', 'mac dinh'),
(16, 14, '_giao_dien_danh_muc', 'field_5cf6d93779aaf'),
(17, 15, 'giao_dien_danh_muc', 'mac dinh'),
(18, 15, '_giao_dien_danh_muc', 'field_5cf6d93779aaf'),
(19, 16, 'giao_dien_danh_muc', 'mac dinh'),
(20, 16, '_giao_dien_danh_muc', 'field_5cf6d93779aaf'),
(21, 17, 'giao_dien_danh_muc', 'mac dinh'),
(22, 17, '_giao_dien_danh_muc', 'field_5cf6d93779aaf'),
(23, 18, 'giao_dien_danh_muc', 'mac dinh'),
(24, 18, '_giao_dien_danh_muc', 'field_5cf6d93779aaf'),
(25, 18, '_qts_slug_vi', 'kien-truc-canh-quan'),
(26, 18, '_qts_slug_en', 'landscape-architecture'),
(39, 5, 'giao_dien_danh_muc', '3'),
(40, 5, '_giao_dien_danh_muc', 'field_5cf6d93779aaf'),
(47, 14, '_qts_slug_vi', 'biet-thu'),
(48, 14, '_qts_slug_en', 'villa'),
(49, 15, '_qts_slug_vi', 'bar-nha-hang-coffe'),
(50, 15, '_qts_slug_en', 'bars-restaurants-coffe'),
(55, 16, '_qts_slug_vi', 'homestay-hotel'),
(56, 16, '_qts_slug_en', 'homestay-hotel'),
(57, 17, '_qts_slug_vi', 'noi-that'),
(58, 17, '_qts_slug_en', 'interior'),
(61, 11, '_qts_slug_vi', 'du-an'),
(62, 11, '_qts_slug_en', 'project'),
(171, 31, '_qts_slug_vi', 'lat-nen'),
(172, 31, '_qts_slug_en', 'background-paving'),
(173, 32, '_qts_slug_vi', 'op-tuong'),
(174, 32, '_qts_slug_en', 'wall-tiles'),
(177, 33, '_qts_slug_vi', 'noi-that-2'),
(178, 33, '_qts_slug_en', 'interior-2'),
(179, 36, '_qts_slug_vi', 'thiet-bi'),
(180, 36, '_qts_slug_en', 'device'),
(181, 35, '_qts_slug_vi', 'furniture'),
(182, 35, '_qts_slug_en', 'furniture'),
(183, 34, '_qts_slug_vi', 'den-dien'),
(184, 34, '_qts_slug_en', 'electric-lamps'),
(185, 37, '_qts_slug_vi', 'van-phong-thiet-ke'),
(186, 37, '_qts_slug_en', 'office-design'),
(189, 38, '_qts_slug_vi', 'xuong-noi-that'),
(190, 38, '_qts_slug_en', 'furniture-workshop'),
(191, 39, '_qts_slug_vi', 'nhan-su'),
(192, 39, '_qts_slug_en', 'personnel'),
(193, 40, '_qts_slug_vi', 'co-cau-chuc-nang'),
(194, 40, '_qts_slug_en', 'functional-structure'),
(195, 41, '_qts_slug_vi', 'hoat-dong'),
(196, 41, '_qts_slug_en', 'active'),
(199, 13, '_qts_slug_vi', 'nha-pho'),
(200, 13, '_qts_slug_en', 'townhouses'),
(201, 5, '_qts_slug_vi', 'thi-cong'),
(202, 5, '_qts_slug_en', 'construction'),
(203, 42, '_qts_slug_vi', ''),
(204, 42, '_qts_slug_en', ''),
(223, 45, 'giao_dien_danh_muc', '4'),
(224, 45, '_giao_dien_danh_muc', 'field_5cf6d93779aaf'),
(227, 46, 'giao_dien_danh_muc', '4'),
(228, 46, '_giao_dien_danh_muc', 'field_5cf6d93779aaf'),
(231, 47, 'giao_dien_danh_muc', '4'),
(232, 47, '_giao_dien_danh_muc', 'field_5cf6d93779aaf'),
(235, 45, '_qts_slug_vi', 'gioi-thieu'),
(236, 45, '_qts_slug_en', 'gioi-thieu'),
(237, 46, '_qts_slug_vi', 'xuong-noi-that-2'),
(238, 46, '_qts_slug_en', 'xuong-noi-that'),
(239, 47, '_qts_slug_vi', 'nhan-su-2'),
(240, 47, '_qts_slug_en', 'nhan-su'),
(241, 48, 'giao_dien_danh_muc', '4'),
(242, 48, '_giao_dien_danh_muc', 'field_5cf6d93779aaf'),
(247, 48, '_qts_slug_vi', 'hoat-dong-2'),
(248, 48, '_qts_slug_en', 'hoat-dong'),
(249, 49, 'giao_dien_danh_muc', '4'),
(250, 49, '_giao_dien_danh_muc', 'field_5cf6d93779aaf'),
(251, 49, '_qts_slug_vi', ''),
(252, 49, '_qts_slug_en', ''),
(253, 50, 'giao_dien_danh_muc', '4'),
(254, 50, '_giao_dien_danh_muc', 'field_5cf6d93779aaf'),
(255, 50, '_qts_slug_vi', ''),
(256, 50, '_qts_slug_en', ''),
(257, 51, 'giao_dien_danh_muc', '4'),
(258, 51, '_giao_dien_danh_muc', 'field_5cf6d93779aaf'),
(259, 51, '_qts_slug_vi', ''),
(260, 51, '_qts_slug_en', ''),
(261, 52, 'giao_dien_danh_muc', '4'),
(262, 52, '_giao_dien_danh_muc', 'field_5cf6d93779aaf'),
(263, 52, '_qts_slug_vi', ''),
(264, 52, '_qts_slug_en', ''),
(265, 53, 'giao_dien_danh_muc', '4'),
(266, 53, '_giao_dien_danh_muc', 'field_5cf6d93779aaf'),
(267, 53, '_qts_slug_vi', ''),
(268, 53, '_qts_slug_en', ''),
(269, 54, 'giao_dien_danh_muc', '4'),
(270, 54, '_giao_dien_danh_muc', 'field_5cf6d93779aaf'),
(273, 54, '_qts_slug_vi', 'den-dien-2'),
(274, 54, '_qts_slug_en', 'den-dien'),
(275, 55, 'giao_dien_danh_muc', '4'),
(276, 55, '_giao_dien_danh_muc', 'field_5cf6d93779aaf'),
(277, 55, '_qts_slug_vi', ''),
(278, 55, '_qts_slug_en', ''),
(279, 56, 'giao_dien_danh_muc', '4'),
(280, 56, '_giao_dien_danh_muc', 'field_5cf6d93779aaf'),
(281, 56, '_qts_slug_vi', ''),
(282, 56, '_qts_slug_en', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  `term_order` int(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`, `term_order`) VALUES
(1, 'Chưa được phân loại', 'chua-duoc-phan-loai', 0, 0),
(5, 'Thi công', 'thi-cong', 0, 0),
(8, 'Primary', 'primary', 0, 0),
(9, 'post-format-gallery', 'post-format-gallery', 0, 0),
(11, 'Dự án', 'du-an', 0, 0),
(13, 'Nhà phố', 'townhouses', 0, 0),
(14, 'Biệt thự', 'villa', 0, 0),
(15, 'Bar, nhà hàng, coffe', 'bar-nha-hang-coffe', 0, 0),
(16, 'Homestay, hotel', 'homestay-hotel', 0, 0),
(17, 'Nội thất', 'noi-that', 0, 0),
(18, 'Kiến trúc cảnh quan', 'kien-truc-canh-quan', 0, 0),
(31, 'Lát nền', 'lat-nen', 0, 0),
(32, 'Ốp tường', 'op-tuong', 0, 0),
(33, 'Nội thất', 'noi-that', 0, 0),
(34, 'Đèn điện', 'den-dien', 0, 0),
(35, 'Furniture', 'furniture', 0, 0),
(36, 'Thiết bị', 'thiet-bi', 0, 0),
(37, 'Văn phòng thiết kế', 'van-phong-thiet-ke', 0, 0),
(38, 'Xưởng nội thất', 'xuong-noi-that', 0, 0),
(39, 'Nhân sự', 'nhan-su', 0, 0),
(40, 'Cơ cấu chức năng', 'co-cau-chuc-nang', 0, 0),
(41, 'Hoạt động', 'hoat-dong', 0, 0),
(42, 'Văn phòng thiết kế', 'van-phong-thiet-ke', 0, 0),
(45, 'Giới thiệu', 'gioi-thieu', 0, 0),
(46, 'Xưởng nội thất', 'xuong-noi-that', 0, 0),
(47, 'Nhân sự', 'nhan-su', 0, 0),
(48, 'Hoạt động', 'hoat-dong', 0, 0),
(49, 'Cơ cấu chức năng', 'co-cau-chuc-nang', 0, 0),
(50, 'Vật liệu', 'vat-lieu', 0, 0),
(51, 'Lát nền', 'lat-nen', 0, 0),
(52, 'Ốp tường', 'op-tuong', 0, 0),
(53, 'Nội thất', 'noi-that-vat-lieu', 0, 0),
(54, 'Đèn điện', 'den-dien', 0, 0),
(55, 'Furniture', 'furniture', 0, 0),
(56, 'Thiết bị', 'thiet-bi', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(25, 8, 0),
(57, 5, 0),
(57, 9, 0),
(70, 5, 0),
(70, 9, 0),
(72, 5, 0),
(72, 9, 0),
(75, 9, 0),
(75, 13, 0),
(77, 9, 0),
(77, 13, 0),
(79, 9, 0),
(79, 13, 0),
(82, 9, 0),
(82, 13, 0),
(84, 9, 0),
(84, 13, 0),
(86, 9, 0),
(86, 13, 0),
(91, 1, 0),
(91, 9, 0),
(114, 9, 0),
(114, 14, 0),
(123, 9, 0),
(123, 14, 0),
(129, 9, 0),
(129, 14, 0),
(168, 8, 0),
(170, 1, 0),
(181, 9, 0),
(197, 1, 0),
(197, 9, 0),
(201, 8, 0),
(208, 31, 0),
(216, 9, 0),
(216, 34, 0),
(224, 37, 0),
(226, 38, 0),
(230, 39, 0),
(233, 41, 0),
(237, 40, 0),
(240, 31, 0),
(243, 32, 0),
(246, 33, 0),
(249, 34, 0),
(252, 35, 0),
(255, 36, 0),
(263, 37, 0),
(276, 5, 0),
(276, 9, 0),
(285, 1, 0),
(292, 1, 0),
(296, 45, 0),
(298, 46, 0),
(301, 47, 0),
(303, 48, 0),
(305, 49, 0),
(307, 51, 0),
(309, 8, 0),
(310, 8, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 5),
(5, 5, 'category', '', 0, 4),
(8, 8, 'nav_menu', '', 0, 5),
(9, 9, 'post_format', '', 0, 12),
(11, 11, 'category', '', 0, 0),
(13, 13, 'category', '', 11, 6),
(14, 14, 'category', '', 11, 0),
(15, 15, 'category', '', 11, 0),
(16, 16, 'category', '', 11, 0),
(17, 17, 'category', '', 11, 0),
(18, 18, 'category', '', 11, 0),
(31, 31, 'vatlieu_tags', '', 0, 0),
(32, 32, 'vatlieu_tags', '', 0, 0),
(33, 33, 'vatlieu_tags', '', 0, 0),
(34, 34, 'vatlieu_tags', '', 0, 0),
(35, 35, 'vatlieu_tags', '', 0, 0),
(36, 36, 'vatlieu_tags', '', 0, 0),
(37, 37, 'goithieu_tags', '', 0, 2),
(38, 38, 'goithieu_tags', '', 0, 1),
(39, 39, 'goithieu_tags', '', 0, 1),
(40, 40, 'goithieu_tags', '', 0, 1),
(41, 41, 'goithieu_tags', '', 0, 1),
(42, 42, 'gioithieu_tags', '', 0, 0),
(45, 45, 'category', '', 0, 1),
(46, 46, 'category', '', 45, 1),
(47, 47, 'category', '', 45, 1),
(48, 48, 'category', '', 45, 1),
(49, 49, 'category', '', 45, 1),
(50, 50, 'category', '', 0, 0),
(51, 51, 'category', '', 50, 1),
(52, 52, 'category', '', 50, 0),
(53, 53, 'category', '', 50, 0),
(54, 54, 'category', '', 50, 0),
(55, 55, 'category', '', 50, 0),
(56, 56, 'category', '', 50, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(17, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&mfold=o&post_dfw=off&posts_list_mode=list&portfolio_category_tab=pop&portfolio_tab=pop&portfolio_categories_tab=pop'),
(18, 1, 'wp_user-settings-time', '1560841679'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '288'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(21, 1, 'session_tokens', 'a:6:{s:64:\"f2ebf303141c91075e88abf32a52409d23773f8f2881ca5f799ad6d26496cfc7\";a:4:{s:10:\"expiration\";i:1560995847;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:135:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/79.0.108 Chrome/73.0.3683.108 Safari/537.36\";s:5:\"login\";i:1560823047;}s:64:\"e060e33dfa9203f8e6d605f429cc06bf4a9c16bf264a6597312ccc6350cdf9bc\";a:4:{s:10:\"expiration\";i:1561012606;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:135:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/79.0.108 Chrome/73.0.3683.108 Safari/537.36\";s:5:\"login\";i:1560839806;}s:64:\"4a034f708a77b4e3c506eb33398c0868c7e16629db76419f75ec631d6dea1a63\";a:4:{s:10:\"expiration\";i:1561085104;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:135:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/79.0.108 Chrome/73.0.3683.108 Safari/537.36\";s:5:\"login\";i:1560912304;}s:64:\"1b129b58c0458519968d2c442e6310c1ebe828febbf63524a8aa605ee97849df\";a:4:{s:10:\"expiration\";i:1561107353;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:135:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/79.0.108 Chrome/73.0.3683.108 Safari/537.36\";s:5:\"login\";i:1560934553;}s:64:\"4c317ac5620d55703d61545f0c3e4bd637c92e4c9b1acbd440798392575fddd9\";a:4:{s:10:\"expiration\";i:1561120805;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:135:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/79.0.108 Chrome/73.0.3683.108 Safari/537.36\";s:5:\"login\";i:1560948005;}s:64:\"36c5449c39c5916fd129d8fe2dabb2315c5997e6e63e293705eb102ef434c7f0\";a:4:{s:10:\"expiration\";i:1561136374;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:135:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/79.0.108 Chrome/73.0.3683.108 Safari/537.36\";s:5:\"login\";i:1560963574;}}'),
(23, 1, 'closedpostboxes_post', 'a:0:{}'),
(24, 1, 'metaboxhidden_post', 'a:1:{i:0;s:29:\"wp_statistics_editor_meta_box\";}'),
(25, 1, 'wp_statistics', 'a:2:{s:13:\"dashboard_set\";s:8:\"12.6.6.1\";s:10:\"editor_set\";s:6:\"12.6.5\";}'),
(26, 1, 'metaboxhidden_dashboard', 'a:13:{i:0;s:24:\"wpseo-dashboard-overview\";i:1;s:17:\"dashboard_primary\";i:2;s:28:\"wp-statistics-summary-widget\";i:3;s:29:\"wp-statistics-browsers-widget\";i:4;s:30:\"wp-statistics-countries-widget\";i:5;s:25:\"wp-statistics-hits-widget\";i:6;s:26:\"wp-statistics-pages-widget\";i:7;s:30:\"wp-statistics-referring-widget\";i:8;s:27:\"wp-statistics-search-widget\";i:9;s:26:\"wp-statistics-words-widget\";i:10;s:33:\"wp-statistics-top-visitors-widget\";i:11;s:27:\"wp-statistics-recent-widget\";i:12;s:28:\"wp-statistics-hitsmap-widget\";}'),
(27, 1, 'metaboxhidden_page', 'a:0:{}'),
(28, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(29, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(30, 1, 'nav_menu_recently_edited', '8'),
(31, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(32, 1, 'closedpostboxes_acf-field-group', 'a:1:{i:0;s:20:\"qtranxs-meta-box-lsb\";}'),
(33, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(34, 1, '_yoast_wpseo_profile_updated', '1559698187'),
(46, 1, 'closedpostboxes_portfolio', 'a:2:{i:0;s:10:\"wpseo_meta\";i:1;s:20:\"qtranxs-meta-box-lsb\";}'),
(47, 1, 'metaboxhidden_portfolio', 'a:0:{}'),
(51, 1, 'closedpostboxes_page', 'a:1:{i:0;s:20:\"qtranxs-meta-box-lsb\";}'),
(52, 1, 'wp_yoast_notifications', 'a:1:{i:0;a:2:{s:7:\"message\";s:583:\"Yoast SEO và Advanced Custom Fields có thể làm việc chung tốt hơn nhiều bằng cách thêm gói mở rộng giúp đỡ. Vui lòng cài đặt <a href=\"http://127.0.0.1/kientruc/wp-admin/update.php?action=install-plugin&amp;plugin=acf-content-analysis-for-yoast-seo&amp;_wpnonce=531e0ad9af\">ACF Content Analysis for Yoast SEO</a> để cuộc đời tốt hơn. <a href=\"https://wordpress.org/plugins/acf-content-analysis-for-yoast-seo/\" aria-label=\"Thông tin thêm về ACF Content Analysis for Yoast SEO\" target=\"_blank\" rel=\"noopener noreferrer\">Thông tin thêm</a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:41:\"wpseo-suggested-plugin-yoast-acf-analysis\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:15:\"install_plugins\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}'),
(53, 1, 'closedpostboxes_vp_lists', 'a:2:{i:0;s:14:\"vp_items_style\";i:1;s:20:\"qtranxs-meta-box-lsb\";}'),
(54, 1, 'metaboxhidden_vp_lists', 'a:1:{i:0;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$BJJR51mAfeh/5yMKaBKlPFAU.qtk8t1', 'root', 'tuan@ert.vn', '', '2019-06-04 12:51:54', '', 0, 'root');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_yoast_seo_meta`
--

CREATE TABLE `wp_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_yoast_seo_meta`
--

INSERT INTO `wp_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(4, 0, 0),
(13, 0, 0),
(14, 0, 0),
(15, 0, 0),
(16, 0, 0),
(17, 0, 0),
(18, 0, 0),
(20, 0, 0),
(21, 0, 0),
(22, 0, 0),
(23, 0, 0),
(57, 0, 0),
(70, 0, 0),
(72, 0, 0),
(74, 0, 0),
(75, 0, 0),
(77, 0, 0),
(79, 0, 0),
(82, 0, 0),
(84, 0, 0),
(86, 0, 0),
(88, 0, 0),
(91, 0, 0),
(93, 0, 0),
(97, 0, 0),
(113, 0, 0),
(114, 0, 0),
(123, 0, 0),
(129, 0, 0),
(131, 0, 0),
(132, 0, 0),
(134, 0, 0),
(165, 0, 0),
(167, 0, 0),
(170, 0, 0),
(179, 0, 0),
(180, 0, 0),
(181, 0, 0),
(184, 0, 0),
(197, 0, 0),
(208, 0, 0),
(214, 0, 0),
(216, 0, 0),
(219, 0, 0),
(224, 0, 0),
(226, 0, 0),
(229, 0, 0),
(230, 0, 0),
(233, 0, 0),
(237, 0, 0),
(240, 0, 0),
(243, 0, 0),
(246, 0, 0),
(249, 0, 0),
(252, 0, 0),
(255, 0, 0),
(263, 0, 0),
(272, 0, 0),
(276, 0, 0),
(281, 0, 0),
(285, 0, 0),
(292, 0, 0),
(296, 0, 0),
(298, 0, 0),
(301, 0, 0),
(303, 0, 0),
(305, 0, 0),
(307, 0, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Chỉ mục cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Chỉ mục cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Chỉ mục cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Chỉ mục cho bảng `wp_statistics_exclusions`
--
ALTER TABLE `wp_statistics_exclusions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `date` (`date`),
  ADD KEY `reason` (`reason`);

--
-- Chỉ mục cho bảng `wp_statistics_historical`
--
ALTER TABLE `wp_statistics_historical`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `page_id` (`page_id`),
  ADD UNIQUE KEY `uri` (`uri`),
  ADD KEY `category` (`category`);

--
-- Chỉ mục cho bảng `wp_statistics_pages`
--
ALTER TABLE `wp_statistics_pages`
  ADD PRIMARY KEY (`page_id`),
  ADD UNIQUE KEY `date_2` (`date`,`uri`),
  ADD KEY `url` (`uri`),
  ADD KEY `date` (`date`),
  ADD KEY `id` (`id`),
  ADD KEY `uri` (`uri`,`count`,`id`);

--
-- Chỉ mục cho bảng `wp_statistics_search`
--
ALTER TABLE `wp_statistics_search`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `last_counter` (`last_counter`),
  ADD KEY `engine` (`engine`),
  ADD KEY `host` (`host`);

--
-- Chỉ mục cho bảng `wp_statistics_useronline`
--
ALTER TABLE `wp_statistics_useronline`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `wp_statistics_visit`
--
ALTER TABLE `wp_statistics_visit`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `unique_date` (`last_counter`);

--
-- Chỉ mục cho bảng `wp_statistics_visitor`
--
ALTER TABLE `wp_statistics_visitor`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `date_ip_agent` (`last_counter`,`ip`,`agent`(75),`platform`(75),`version`(75)),
  ADD KEY `agent` (`agent`),
  ADD KEY `platform` (`platform`),
  ADD KEY `version` (`version`),
  ADD KEY `location` (`location`);

--
-- Chỉ mục cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Chỉ mục cho bảng `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Chỉ mục cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Chỉ mục cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Chỉ mục cho bảng `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Chỉ mục cho bảng `wp_yoast_seo_meta`
--
ALTER TABLE `wp_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1725;

--
-- AUTO_INCREMENT cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1956;

--
-- AUTO_INCREMENT cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;

--
-- AUTO_INCREMENT cho bảng `wp_statistics_exclusions`
--
ALTER TABLE `wp_statistics_exclusions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_statistics_historical`
--
ALTER TABLE `wp_statistics_historical`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_statistics_pages`
--
ALTER TABLE `wp_statistics_pages`
  MODIFY `page_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `wp_statistics_search`
--
ALTER TABLE `wp_statistics_search`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_statistics_useronline`
--
ALTER TABLE `wp_statistics_useronline`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_statistics_visit`
--
ALTER TABLE `wp_statistics_visit`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `wp_statistics_visitor`
--
ALTER TABLE `wp_statistics_visitor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
