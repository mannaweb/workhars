-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 19, 2022 at 12:51 AM
-- Server version: 5.7.36-cll-lve
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `workhars`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menues`
--

CREATE TABLE `admin_menues` (
  `id` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `link` text,
  `menu_type` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `codes` varchar(255) NOT NULL,
  `show_sidebar` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_menues`
--

INSERT INTO `admin_menues` (`id`, `ordering`, `name`, `icon`, `link`, `menu_type`, `parent_id`, `codes`, `show_sidebar`) VALUES
(1, 1, 'Dashboard', 'fas fa-fw fa-tachometer-alt', 'admin/dashboard', 'main', 0, 'dashboard', 1),
(2, 2, 'Admins', 'fas fa-fw fa-user-secret', NULL, 'main', 0, 'all-admins', 1),
(3, 3, 'List', 'fas fa-fw fa-list', 'admin/admins', 'sub', 2, 'admins', 1),
(4, 4, 'Add', 'fas fa-fw fa-plus-circle', 'admin/add-admin', 'sub', 2, 'add-admin', 1),
(5, 5, 'Edit', NULL, NULL, 'sub', 2, 'edit-admin', 0),
(6, 6, 'Delete', NULL, NULL, 'sub', 2, 'delete-admin', 0),
(7, 7, 'Status Change', NULL, NULL, 'sub', 2, 'change-status-admin', 0),
(14, 200, 'Settings', 'fas fa-fw fa-cog', NULL, 'main', 0, 'settings', 1),
(20, 8, 'Users', 'fas fa-fw fa-users', NULL, 'main', 0, 'all-users', 0),
(21, 9, 'List', 'fas fa-fw fa-list', 'admin/users', 'sub', 20, 'users', 1),
(22, 10, 'Add', 'fas fa-fw fa-plus-circle', 'admin/add-user', 'sub', 20, 'add-user', 1),
(23, 11, 'Edit', NULL, NULL, 'sub', 20, 'edit-user', 0),
(24, 12, 'Delete', NULL, NULL, 'sub', 20, 'delete-user', 0),
(25, 13, 'Status Change', NULL, NULL, 'sub', 20, 'change-status-user', 0),
(26, 26, 'Categories', 'fas fa-fw fa-archive', NULL, 'main', 0, 'all-categories', 1),
(27, 27, 'List', 'fas fa-fw fa-list', 'admin/categories', 'sub', 26, 'categories', 1),
(28, 28, 'Add', 'fas fa-fw fa-plus-circle', 'admin/add-category', 'sub', 26, 'add-category', 1),
(29, 29, 'Edt', NULL, NULL, 'sub', 26, 'edit-category', 0),
(30, 30, 'Delete', NULL, NULL, 'sub', 26, 'delete-category', 0),
(31, 31, 'Status Change', NULL, NULL, 'sub', 26, 'change-status-category', 0),
(32, 32, 'Sub Categories', 'fas fa-fw fa-box-open', NULL, 'main', 0, 'all-subcategories', 0),
(33, 33, 'List', 'fas fa-fw fa-list', 'admin/subcategories', 'sub', 32, 'subcategories', 1),
(34, 34, 'Add', 'fas fa-fw fa-plus-circle', 'admin/add-subcategory', 'sub', 32, 'add-subcategory', 1),
(35, 35, 'Edit', NULL, NULL, 'sub', 32, 'edit-subcategory', 0),
(36, 36, 'Delete', NULL, NULL, 'sub', 32, 'delete-subcategory', 0),
(37, 37, 'Status Change', NULL, NULL, 'sub', 32, 'change-status-subcategory', 0),
(71, 64, 'Featured', NULL, NULL, 'sub', 44, 'change-featured-blog', 0),
(44, 50, 'Blogs', 'fab fa-fw fa-blogger', NULL, 'main', 0, 'all-blogs', 0),
(45, 51, 'List', 'fas fa-fw fa-list', 'admin/blogs', 'sub', 44, 'blogs', 1),
(46, 52, 'Add', 'fas fa-fw fa-plus-circle', 'admin/add-blog', 'sub', 44, 'add-blog', 1),
(47, 53, 'Edit', NULL, NULL, 'sub', 44, 'edit-blog', 0),
(48, 54, 'Delete', NULL, NULL, 'sub', 44, 'delete-blog', 0),
(49, 55, 'Status Change', NULL, NULL, 'sub', 44, 'change-status-blog', 0),
(50, 56, 'Menu', 'fas fa-fw fa-bars', 'admin/menu-settings', 'sub', 14, 'menu-settings', 0),
(69, 67, 'Delete', NULL, NULL, 'sub', 65, 'delete-page', 0),
(68, 66, 'Edit', NULL, NULL, 'sub', 65, 'edit-page', 0),
(67, 65, 'Add', 'fas fa-fw fa-plus-circle', 'admin/add-page', 'sub', 65, 'add-page', 1),
(66, 64, 'List', 'fas fa-fw fa-list', 'admin/pages', 'sub', 65, 'pages', 1),
(65, 63, 'Pages', 'fa fa-fw fa-file', NULL, 'main', 0, 'all-pages', 1),
(58, 57, 'List', 'fas fa-fw fa-list', 'admin/pages', 'sub', 57, 'pages', 1),
(59, 58, 'Add', 'fas fa-fw fa-plus-circle', 'admin/add-page', 'sub', 57, 'add-page', 1),
(60, 59, 'Edit', NULL, NULL, 'sub', 57, 'edit-page', 0),
(64, 62, 'Banners', NULL, NULL, 'main', 0, 'banners', 0),
(63, 60, 'Seo', NULL, NULL, 'main', 0, 'seo', 0),
(85, 78, 'Faqs', 'far fa-fw fa-question', NULL, 'main', 0, 'all-faqs', 1),
(86, 79, 'List', 'fas fa-fw fa-list', 'admin/faqs', 'sub', 85, 'faqs', 1),
(87, 80, 'Add', 'fas fa-fw fa-plus-circle', 'admin/add-faq', 'sub', 85, 'add-faq', 1),
(88, 81, 'Edit', NULL, NULL, 'sub', 85, 'edit-faq', NULL),
(89, 82, 'Delete', NULL, NULL, 'sub', 85, 'delete-faq', NULL),
(90, 83, 'Status Change', NULL, NULL, 'sub', 85, 'change-status-faq', NULL),
(91, 84, 'Gallery', NULL, NULL, 'main', 0, 'gallery', 0),
(92, 85, 'video', NULL, NULL, 'main', 0, 'video-url', 0),
(93, 86, 'Emails', 'fas fa-fw fa-envelope', 'admin/emails', 'sub', 14, 'emails', 0),
(94, 87, 'Email Edit', NULL, NULL, 'sub', 14, 'edit-email', 0),
(95, 88, 'Popular', NULL, NULL, 'sub', 26, 'change-popular-category', 0),
(99, 92, 'Site', 'fas fa-fw fa-edit', 'admin/site-settings', 'sub', 14, 'site-settings', 1),
(105, 21, 'Quotes', 'fa fa-quote-left', NULL, 'main', NULL, 'all-quotes', 1),
(106, 0, 'List', 'fas fa-fw fa-list', 'admin/quotes', 'sub', 105, 'quotes', 1),
(107, 66, 'Testimonials', 'fa fa-comments', NULL, 'main', NULL, 'all-testimonials', 1),
(108, 0, 'List', 'fas fa-fw fa-list', 'admin/testimonials', 'sub', 107, 'testimonials', 1),
(109, 0, 'Add', 'fas fa-fw fa-plus-circle', 'admin/add-testimonial', 'sub', 107, 'add-testimonial', 1),
(110, 22, 'Services', 'fa fa-wrench', NULL, 'main', NULL, 'all-services', 1),
(111, 0, 'List', 'fas fa-fw fa-list', 'admin/services', 'sub', 110, 'services', 1),
(112, 0, 'Add', 'fas fa-fw fa-plus-circle', 'admin/add-service', 'sub', 110, 'add-service', 1),
(113, 23, 'Form', 'fas fa-fw fa-file', NULL, 'main', NULL, 'forms', 0),
(114, 0, 'Add', 'fas fa-fw fa-plus-circle', 'admin/add-form', 'sub', 113, 'add-form', 1),
(115, 0, 'List', 'fas fa-fw fa-list', 'admin/forms', 'sub', 113, 'edit-form', 1);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `image` varchar(1000) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=>''active'',2=>''inactive''',
  `created_by` tinyint(11) DEFAULT NULL,
  `modified_by` tinyint(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `type`, `type_id`, `title`, `description`, `image`, `link`, `status`, `created_by`, `modified_by`, `created_at`, `modified_at`) VALUES
(104, 'home', 5, 'Welcome to Workhars', '', 'uploads/banner/1644598169IMG_20220211_122822.jpg', '', 1, 1, NULL, '2022-02-11 16:49:29', NULL),
(96, 'home', 5, 'workhars', 'Welcome to workhars', 'uploads/banner/1641100665banner-2.jpg', '', 1, 1, 1, '2022-01-02 05:11:19', '2022-01-02 05:18:35'),
(93, 'about', 6, 'About', '', 'uploads/banner/1592288081about-banner.png', 'sef', 1, 1, 1, '2020-06-16 06:01:23', '2020-06-16 06:14:41'),
(94, 'contact', 7, 'Contact', '', 'uploads/banner/1592288208contact-us-2993000_1280.jpg', '', 1, 1, NULL, '2020-06-16 06:16:48', NULL),
(7, 'contact-us', 15, 'contactus', '', 'uploads/banner/1574336658images_(1).jpg', '', 1, 1, 1, '2019-11-21 11:44:18', '2019-11-21 11:45:41'),
(95, 'services', 8, 'Services', 'Services', 'uploads/banner/1637500436hero_six.jpg', '', 1, 1, NULL, '2021-11-21 13:13:56', NULL),
(97, 'terms-and-conditions', 9, 'Work hars', '', 'uploads/banner/16411382846424670.jpg', '', 1, 1, NULL, '2022-01-02 15:44:44', NULL),
(98, 'privacy-policy', 10, 'Privacy Policy', '', 'uploads/banner/1641647291Privacy.jpg', '', 1, 1, NULL, '2022-01-08 13:08:11', NULL),
(99, 'home', 5, 'Workhars', '', 'uploads/banner/1641658500geyser_photo.jpg', '', 1, 1, NULL, '2022-01-08 16:15:00', NULL),
(100, 'home', 5, 'Workhars', '', 'uploads/banner/1641658565water_purifiers_photo.png', '', 1, 1, NULL, '2022-01-08 16:16:05', NULL),
(101, 'home', 5, 'Workhars', '', 'uploads/banner/1641658674microwave_photo.jpg', '', 1, 1, NULL, '2022-01-08 16:17:54', NULL),
(102, 'home', 5, 'Workhars', '', 'uploads/banner/1641658857fridge_photo.jpg', '', 1, 1, NULL, '2022-01-08 16:20:57', NULL),
(103, 'home', 5, 'Workhars', '', 'uploads/banner/1642432805washingH.jpg', '', 1, 1, 1, '2022-01-17 14:59:04', '2022-01-17 15:23:08');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `alias` text,
  `description` text NOT NULL,
  `category_type` text NOT NULL,
  `rootcategoryid` int(11) NOT NULL DEFAULT '0',
  `logo` varchar(255) DEFAULT NULL,
  `popular` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1=>Popular,2=>Unpopular',
  `activated` int(11) DEFAULT '1' COMMENT '1=>Active,2=>Inactive',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `ordering`, `name`, `alias`, `description`, `category_type`, `rootcategoryid`, `logo`, `popular`, `activated`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `modified_by`, `deleted_by`) VALUES
(1, 4, 'Microoven', 'microoven', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p class=\"MsoNormal\" style=\"line-height: normal; background: white; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; color: #202122; background: white;\">A&nbsp;</span><b style=\"font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;\">microwave oven</b><span style=\"font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; float: none; word-spacing: 0px;\">&nbsp;(commonly referred to as a&nbsp;</span><b style=\"font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;\">microwave</b><span style=\"font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; float: none; word-spacing: 0px;\">) is an electric&nbsp;</span><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; background: white;\">oven<span style=\"color: #202122;\">&nbsp;that heats and cooks food by exposing it to&nbsp;</span></span>electromagnetic radiation<span style=\"color: #202122;\">&nbsp;in the&nbsp;</span>microwave<span style=\"color: #202122;\">&nbsp;</span>frequency<span style=\"color: #202122;\">&nbsp;range.</span>This induces&nbsp;polar molecules<span style=\"color: #202122;\">&nbsp;in the food to rotate and produce&nbsp;</span>thermal energy<span style=\"color: #202122;\">&nbsp;in a process known as&nbsp;</span>dielectric heating<span style=\"color: #202122;\">. Microwave ovens heat foods quickly and efficiently because excitation is fairly uniform in the outer&nbsp;</span><span class=\"nowrap\"><span style=\"font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;\">25&ndash;38 mm</span></span><span style=\"font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; float: none; word-spacing: 0px;\">&nbsp;</span><span class=\"nowrap\"><span style=\"font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;\">(1&ndash;1.5 inches)</span></span><span style=\"font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; float: none; word-spacing: 0px;\">&nbsp;of a&nbsp;</span>homogeneous<span style=\"color: #202122;\">, high water content food item.</span><o:p></o:p></p>\n<h3 style=\"background: white; margin: .05in 0in .0001pt 0in;\"><span class=\"mw-headline\"><span style=\"font-size: 14.5pt; font-family: \'Arial\',\'sans-serif\'; color: black;\">Effects on food and nutrients</span></span><span style=\"font-size: 14.5pt; font-family: \'Arial\',\'sans-serif\'; color: black;\"><o:p></o:p></span></h3>\n<p style=\"background: white; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; color: #202122;\"><o:p>&nbsp;</o:p></span></p>\n<p style=\"background: white; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; color: #202122;\">Any form of cooking will diminish overall nutrient content in food, particularly&nbsp;water-soluble&nbsp;vitamins&nbsp;common in vegetables, but the key variables are how much water is used in the cooking, how long the food is cooked, and at what temperature.&nbsp;Nutrients are primarily lost by leaching into cooking water, which tends to make microwave cooking effective, given the shorter cooking times it requires and that the water heated is in the food.&nbsp;Like other heating methods, microwaving converts&nbsp;vitamin B</span><sub><span style=\"font-size: 7.5pt; font-family: \'Arial\',\'sans-serif\'; color: #202122;\">12</span></sub><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; color: #202122;\">&nbsp;from an active to inactive form; the amount of conversion depends on the temperature reached, as well as the cooking time. Boiled food reaches a maximum of 100&nbsp;&deg;C (212&nbsp;&deg;F) (the boiling point of water), whereas microwaved food can get internally hotter than this, leading to faster breakdown of vitamin B</span><sub><span style=\"font-size: 7.5pt; font-family: \'Arial\',\'sans-serif\'; color: #202122;\">12</span></sub><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; color: #202122;\">. The higher rate of loss is partially offset by the shorter cooking times required. <o:p></o:p></span></p>\n<p style=\"background: white; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; color: #202122;\">Spinach retains nearly all its folate when cooked in a microwave oven; when boiled, it loses about 77%, leaching nutrients into the cooking water.&nbsp;Bacon cooked by microwave oven has significantly lower levels of&nbsp;nitrosamines&nbsp;than conventionally cooked bacon.&nbsp;Steamed vegetables tend to maintain more nutrients when microwaved than when cooked on a stovetop.&nbsp;Microwave&nbsp;blanching&nbsp;is 3&ndash;4 times more effective than boiled-water blanching for retaining of the water-soluble vitamins, folate,&nbsp;thiamin&nbsp;and&nbsp;riboflavin, with the exception of&nbsp;vitamin C, of which 29% is lost (compared with a 16% loss with boiled-water blanching). <o:p></o:p></span></p>\n<h3 style=\"background: white; margin: .05in 0in .0001pt 0in;\"><span class=\"mw-headline\"><span style=\"font-size: 14.5pt; font-family: \'Arial\',\'sans-serif\'; color: black;\">Safety benefits and features</span></span><span style=\"user-select: none; unicode-bidi: isolate;\"><span style=\"font-size: 14.5pt; font-family: \'Arial\',\'sans-serif\'; color: black;\"><o:p></o:p></span></span></h3>\n<p style=\"background: white; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; color: #202122;\">All microwave ovens use a timer to switch off the oven at the end of the cooking time.<o:p></o:p></span></p>\n<p style=\"background: white; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; color: #202122;\">Microwave ovens heat food without getting hot themselves. Taking a pot off a stove, unless it is an&nbsp;induction cooktop, leaves a potentially dangerous heating element or&nbsp;trivet&nbsp;that will stay hot for some time. Likewise, when taking a&nbsp;casserole&nbsp;out of a conventional oven, one\'s arms are exposed to the very hot walls of the oven. A microwave oven does not pose this problem.<o:p></o:p></span></p>\n<p style=\"background: white; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; color: #202122;\">Food and cookware taken out of a microwave oven are rarely much hotter than 100&nbsp;&deg;C (212&nbsp;&deg;F). Cookware used in a microwave oven is often much cooler than the food because the cookware is transparent to microwaves; the microwaves heat the food directly and the cookware is indirectly heated by the food. Food and cookware from a conventional oven, on the other hand, are the same temperature as the rest of the oven; a typical cooking temperature is 180&nbsp;&deg;C (356&nbsp;&deg;F). That means that conventional stoves and ovens can cause more serious burns.<o:p></o:p></span></p>\n<p style=\"background: white; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; color: #202122;\">The lower temperature of cooking (the boiling point of water) is a significant safety benefit compared with baking in the oven or frying, because it eliminates the formation of tars and&nbsp;char, which are&nbsp;carcinogenic.&nbsp;Microwave radiation also penetrates deeper than direct heat, so that the food is heated by its own internal water content. In contrast, direct heat can burn the surface while the inside is still cold. Pre-heating the food in a microwave oven before putting it into the grill or pan reduces the time needed to heat up the food and reduces the formation of carcinogenic char. Unlike frying and baking, microwaving does not produce acrylamide&nbsp;&nbsp;in potatoes,&nbsp;however unlike deep-frying, it is of only limited effectiveness in reducing glycoalkaloid (i.e.solanine) levels.Acrylamide has been found in other microwaved products like popcorn.<o:p></o:p></span></p>\n</body>\n<script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script><script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script><script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script></html>', 'main', 0, 'uploads/category/1641049152microoven.png', 1, 1, '2019-08-14 11:34:10', '2022-01-01 14:59:12', NULL, NULL, 1, NULL),
(6, 3, 'Washing Machine	', 'washing-machine', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p style=\"background: white; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; color: #202122; background: white;\">A&nbsp;</span><b style=\"font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;\">washing machine</b><span style=\"font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; float: none; word-spacing: 0px;\">&nbsp;is a&nbsp;</span><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: major-fareast; background: white;\">machine</span><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; color: #202122; background: white;\">&nbsp;that&nbsp;</span><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: major-fareast; background: white;\">washes</span><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; color: #202122; background: white;\">&nbsp;dirty&nbsp;</span><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: major-fareast; background: white;\">clothes</span><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; color: #202122; background: white;\">. It contains a&nbsp;</span><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: major-fareast; background: white;\">barrel</span><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; color: #202122; background: white;\">&nbsp;into which the clothes are placed. This barrel is filled with water, and then&nbsp;</span><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: major-fareast; background: white;\">rotated</span><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; color: #202122; background: white;\">&nbsp;very quickly to make the water remove dirt from the clothes. Most washing machines are made so that&nbsp;</span><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: major-fareast; background: white;\">detergent</span><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; color: #202122; background: white;\">&nbsp;(</span><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: major-fareast; background: white;\">liquids</span><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; color: #202122; background: white;\">&nbsp;or&nbsp;</span><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: major-fareast; background: white;\">powders</span><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; color: #202122; background: white;\">) can be put into the machine. These can help make the clothes cleaner.</span><o:p></o:p></p>\n<p style=\"background: white; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; color: #202122; background: white;\"><o:p>&nbsp;</o:p></span></p>\n<div style=\"mso-element: para-border-div; border: none; border-bottom: solid #A2A9B1 1.0pt; mso-border-bottom-alt: solid #A2A9B1 .75pt; padding: 0in 0in 0in 0in; background: white;\">\n<h2 style=\"background: white; border: none; mso-border-bottom-alt: solid #A2A9B1 .75pt; padding: 0in; mso-padding-alt: 0in 0in 0in 0in; margin: 12.0pt 0in 3.0pt 0in;\"><span class=\"mw-headline\"><span style=\"font-family: \'Georgia\',\'serif\'; color: black; font-weight: normal;\">Types of washing machines</span></span><span style=\"font-family: \'Georgia\',\'serif\'; color: black; font-weight: normal;\"><o:p></o:p></span></h2>\n</div>\n<p class=\"MsoNormal\" style=\"line-height: normal; background: white; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #202122;\"><o:p>&nbsp;</o:p></span></p>\n<p class=\"MsoNormal\" style=\"line-height: normal; background: white; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #202122;\">Washing machines may be fully automatic or partly automatic.<o:p></o:p></span></p>\n<p class=\"MsoNormal\" style=\"line-height: normal; mso-outline-level: 3; background: white; margin: .05in 0in .0001pt 0in;\"><b><span style=\"font-size: 14.5pt; mso-bidi-font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: black;\">Semi-Automatic Washing Machines</span></b><b><span style=\"font-size: 14.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: black;\"><o:p></o:p></span></b></p>\n<p class=\"MsoNormal\" style=\"line-height: normal; background: white; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #202122;\">Semi-automatic washing machines have separate sections for Dryer and Washer. These washing machines are often termed as semi-manual as here you have to manually put clothes into washer tub, put water &amp; detergent according to your laundry size, and once washing is finished, you again have to manually put washed clothes for drying in dryer section. These are mostly cheaper machines.<o:p></o:p></span></p>\n<p class=\"MsoNormal\" style=\"line-height: normal; mso-outline-level: 3; background: white; margin: .05in 0in .0001pt 0in;\"><b><span style=\"font-size: 14.5pt; mso-bidi-font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: black;\">Fully-Automatic Washing Machines</span></b><b><span style=\"font-size: 14.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: black;\"> <o:p></o:p></span></b></p>\n<p class=\"MsoNormal\" style=\"line-height: normal; background: white; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #202122;\">Fully-automatic washing machines are easier to use. They have only one section for washing and for spin-drying. Once you put clothes in a fully-automatic washing machine, it automatically takes required quantity of water,&nbsp;detergent and just with one click provided your washed &amp; dry clothes.<o:p></o:p></span></p>\n<p class=\"MsoNormal\" style=\"line-height: normal; background: white; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #202122;\">Washing machines may load from the top or the front.<o:p></o:p></span></p>\n<p class=\"MsoNormal\" style=\"line-height: normal; mso-outline-level: 3; background: white; margin: .05in 0in .0001pt 0in;\"><b><span style=\"font-size: 14.5pt; mso-bidi-font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: black;\">Front loading</span></b><b><span style=\"font-size: 14.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: black;\"><o:p></o:p></span></b></p>\n<p class=\"MsoNormal\" style=\"line-height: normal; background: white; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #202122;\">A front loading washing machine has a door in the front. The clothes to be washed have to be put in and the door closed before the barrel can fill with water. This type of machine can have a clothes drying machine stacked on top to save space on the floor. Because of the water used, the washing machine is heavier than the dryer so the washer is at the bottom.<o:p></o:p></span></p>\n<p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal; background: #F8F9FA;\"><span style=\"font-size: 9.0pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #202122;\"><o:p>&nbsp;</o:p></span></p>\n<p class=\"MsoNormal\" style=\"line-height: normal; mso-outline-level: 3; background: white; margin: .05in 0in .0001pt 0in;\"><b><span style=\"font-size: 14.5pt; mso-bidi-font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: black;\">Top loading</span></b><b><span style=\"font-size: 14.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: black;\"><o:p></o:p></span></b></p>\n<p class=\"MsoNormal\" style=\"line-height: normal; background: white; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #202122;\">With a top loading washing machine, the opening is at the top. The barrel can be filled with water and soap before the clothes are put in for washing. This type of machine cannot have anything placed on top of it because of the opening there.<o:p></o:p></span></p>\n</body>\n<script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script><script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script><script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script><script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script></html>', 'main', 0, 'uploads/category/1641049133washing_Machine.png', 1, 1, '2019-08-14 13:18:53', '2022-01-01 14:58:53', NULL, NULL, 1, NULL),
(11, 0, 'test', 'test', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>test</p>\n</body>\n</html>', 'sub', 1, '', 1, 1, '2019-08-16 14:00:09', '2019-08-16 16:00:09', NULL, NULL, NULL, NULL),
(12, 0, 'test3', 'test3', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n\n</body>\n</html>', 'sub', 1, '', 1, 1, '2019-08-16 14:01:02', '2019-08-22 06:57:35', NULL, NULL, 1, NULL),
(20, 0, 'test55', 'test55', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>sd</p>\n</body>\n</html>', 'sub', 1, '', 1, 1, '2019-08-21 13:00:06', '2019-08-22 06:57:24', NULL, 12, 1, NULL),
(21, 1, 'Air condition', 'air-condition', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p style=\"background: white; margin: 6.0pt 0in 6.0pt 0in;\"><b><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; color: #202122;\">Air conditioning</span></b><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; color: #202122;\">, often abbreviated as&nbsp;<b>A/C</b>&nbsp;or&nbsp;<b>AC</b>, is the process of removing&nbsp;heat&nbsp;and controlling the&nbsp;humidity&nbsp;of air in an enclosed space to achieve a more comfortable interior environment by use of powered \"air conditioners\" or a variety of other methods, including&nbsp;passive cooling&nbsp;and&nbsp;ventilative cooling. Air conditioning is a member of a family of systems and techniques that provide&nbsp;heating, ventilation, and air conditioning (HVAC).<o:p></o:p></span></p>\n<p style=\"background: white; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; color: #202122;\">Air conditioners, which typically use&nbsp;vapor-compression refrigeration, range in size from small units used within vehicles or single rooms to massive units that can cool large buildings.&nbsp;Air source heat pumps, which can be used for heating as well as&nbsp;cooling, are becoming increasingly common in cooler climates.<o:p></o:p></span></p>\n<p style=\"background: white; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; color: #202122;\">Cooling in traditional AC systems is accomplished using the vapor-compression cycle, which uses the forced circulation and&nbsp;phase change&nbsp;of a refrigerant between gas and&nbsp;liquid&nbsp;to transfer heat. The vapor-compression cycle can occur within a unitary, or packaged piece of equipment; or within a chiller that is connected to terminal cooling equipment (such as a fan coil unit in an air handler) on its evaporator side and heat rejection equipment such as a cooling tower on its condenser side. An&nbsp;air source heat pump&nbsp;shares many components with an air conditioning system, but includes a&nbsp;reversing valve&nbsp;which allows the unit to be used to heat as well as cool a space. <o:p></o:p></span></p>\n<p style=\"background: white; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; color: #202122;\">Air conditioning equipment will reduce the absolute humidity of the air processed by the system if the surface of the evaporator coil is significantly cooler than the&nbsp;dew point&nbsp;of the surrounding air. An air conditioner designed for an occupied space will typically achieve a 30% to 60% relative humidity in the occupied space. <o:p></o:p></span></p>\n<p style=\"background: white; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; color: #202122;\">Most modern air-conditioning systems feature a dehumidification cycle during which the compressor runs while the fan is slowed to reduce the evaporator temperature and therefore condense more water. A&nbsp;dehumidifier&nbsp;uses the same&nbsp;refrigeration cycle&nbsp;but incorporates both the evaporator and the condenser into the same air path; the air first passes over the evaporator coil where it is cooled</span><sup id=\"cite_ref-55\" style=\"unicode-bidi: isolate;\"><span style=\"font-size: 7.5pt; font-family: \'Arial\',\'sans-serif\'; color: #202122;\"> </span></sup><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; color: #202122;\">and dehumidified before passes over the condenser coil where it is warmed again before being released back into the room again. <o:p></o:p></span></p>\n<p style=\"background: white; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; color: #202122;\">Free cooling&nbsp;can sometimes be selected when the external air happens to be cooler than the internal air and therefore the compressor needs not be used, resulting in high cooling efficiencies for these times. This may also be combined with&nbsp;seasonal thermal energy storage. <o:p></o:p></span></p>\n</body>\n<script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script></html>', 'main', 0, 'uploads/category/1641049065AC_icon.png', 1, 1, '2019-08-21 13:49:08', '2022-01-02 10:35:21', NULL, 12, 1, NULL),
(22, 2, 'fridge', 'fridge', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p class=\"MsoNormal\" style=\"line-height: normal; background: white; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #202122;\">A&nbsp;<b>refrigerator</b>&nbsp;is a machine used for keeping things cold. It is sometimes called a&nbsp;<b>fridge</b>&nbsp;or an&nbsp;<b>icebox</b>. It is normally maintained at 4-5 degree Celsius for household use. People put&nbsp; food and&nbsp;&nbsp;drinks in it, to keep those items&nbsp;&nbsp;cold or good <span style=\"mso-spacerun: yes;\">&nbsp;</span>(unspoiled) for a longer time. A refrigerator has a&nbsp; heat pump which takes heat away from the&nbsp;&nbsp;air inside the fridge. The heat is moved to the air outside. The heat pump is usually driven by an electric motor.&nbsp;<o:p></o:p></span></p>\n<p class=\"MsoNormal\" style=\"line-height: normal; background: white; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #202122;\">There are also ice boxes available that do not use electricity because they are filled with ice to provide the colder temperature. The ice can keep things cold until the ice melts. Ice boxes can be taken on camping&nbsp;trips. Sometimes they are called coolers. Refrigerator-sized iceboxes were used before electricity was available.<o:p></o:p></span></p>\n<p class=\"MsoNormal\" style=\"line-height: normal; background: white; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-size: 9.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #202122;\">Most modern refrigerators are available in a variety of colours although most are white. Smaller versions of the popular refrigerator are also used. They are mainly used in hotel&nbsp;&nbsp;and college&nbsp;&nbsp;dorm rooms.<o:p></o:p></span></p>\n</body>\n<script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script><script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script><script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script><script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script><script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script><script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script></html>', 'main', 0, 'uploads/category/1641049043Freeze.png', 1, 1, '2021-12-12 03:38:14', '2022-01-01 14:57:23', NULL, 1, 1, NULL),
(23, 5, 'Geyser', 'geyser', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p class=\"MsoNormal\" style=\"line-height: normal; background: white; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-size: 12.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-bidi-font-family: Helvetica; color: #666666; background: #FAFAFA;\">Geyser can be used in places or areas where it is required for hand wash alone or small water use. Instant geyser will work perfectly if you want to use it in your kitchen. However, you should a bigger storage geyser, if you plan to use it in a place where the usage of water is six liters or more.</span><o:p></o:p></p>\n<p class=\"MsoNormal\" style=\"line-height: normal; background: white; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-size: 12.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-bidi-font-family: Helvetica; color: #666666; background: #FAFAFA;\">It is quite important to know the best way to save electricity for your geyser to avoid crazy and huge electricity bills. This is because geyser accounts for a large portion of your electricity consumption. The below best ways will save electricity for your geyser will cut down your electricity consumption and you will pay less electricity bill on your geyser without changing your lifestyle or living without hot water.</span><o:p></o:p></p>\n<h2 style=\"background: #FAFAFA; margin: 13.6pt 0in 6.8pt 0in;\"><span style=\"font-size: 20.5pt; line-height: 115%; font-family: \'Verdana\',\'sans-serif\'; mso-bidi-font-family: Helvetica; color: #2d2d2d; font-weight: normal;\">Factors Influencing the Energy Consumption of Your Geyser<o:p></o:p></span></h2>\n<ul type=\"disc\" style=\"box-sizing: border-box;\">\n<li class=\"MsoNormal\" style=\"color: #666666; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; text-align: justify; line-height: normal; mso-list: l1 level1 lfo1; tab-stops: list .5in; background: #FAFAFA; box-sizing: border-box;\"><span style=\"font-size: 12.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-bidi-font-family: Helvetica;\">How frequent you use your geyser<o:p></o:p></span></li>\n<li class=\"MsoNormal\" style=\"color: #666666; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; text-align: justify; line-height: normal; mso-list: l1 level1 lfo1; tab-stops: list .5in; background: #FAFAFA; box-sizing: border-box;\"><span style=\"font-size: 12.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-bidi-font-family: Helvetica;\">The condition and brand of your geyser<o:p></o:p></span></li>\n<li class=\"MsoNormal\" style=\"color: #666666; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; text-align: justify; line-height: normal; mso-list: l1 level1 lfo1; tab-stops: list .5in; background: #FAFAFA; box-sizing: border-box;\"><span style=\"font-size: 12.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-bidi-font-family: Helvetica;\">The quantity of hot water you use at a particular point in time<o:p></o:p></span></li>\n</ul>\n<h2 style=\"background: #FAFAFA; margin: 13.6pt 0in 6.8pt 0in;\"><span style=\"font-size: 12.5pt; line-height: 115%; font-family: Verdana, \'sans-serif\'; color: #666666; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Followings are the best ways to save electricity for your geyser power.</span><span style=\"font-size: 20.5pt; line-height: 115%; font-family: \'Verdana\',\'sans-serif\'; mso-bidi-font-family: Helvetica; color: #2d2d2d; font-weight: normal;\"><o:p></o:p></span></h2>\n<h2 style=\"text-indent: -.25in; mso-list: l0 level1 lfo2; background: #FAFAFA; margin: 13.6pt 0in 6.8pt .5in;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: Verdana; mso-bidi-font-family: Verdana; color: #2d2d2d; font-weight: normal;\">1.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Verdana\',\'sans-serif\'; mso-bidi-font-family: Helvetica; color: #2d2d2d; font-weight: normal;\">Use Smaller Quantity of Hot Water<o:p></o:p></span></h2>\n<h2 style=\"text-indent: -.25in; mso-list: l0 level1 lfo2; background: #FAFAFA; margin: 13.6pt 0in 6.8pt .5in;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: Verdana; mso-bidi-font-family: Verdana; color: #2d2d2d; font-weight: normal;\">2.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Verdana\',\'sans-serif\'; mso-bidi-font-family: Helvetica; color: #2d2d2d; font-weight: normal;\">Choose the Right Geyser Size<o:p></o:p></span></h2>\n<h2 style=\"text-indent: -.25in; mso-list: l0 level1 lfo2; background: #FAFAFA; margin: 13.6pt 0in 6.8pt .5in;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: Verdana; mso-bidi-font-family: Verdana; color: #2d2d2d; font-weight: normal;\">3.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Verdana\',\'sans-serif\'; mso-bidi-font-family: Helvetica; color: #2d2d2d; font-weight: normal;\">Choose Star Rated Geyser<o:p></o:p></span></h2>\n<h2 style=\"text-indent: -.25in; mso-list: l0 level1 lfo2; background: #FAFAFA; margin: 13.6pt 0in 6.8pt .5in;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: Verdana; mso-bidi-font-family: Verdana; color: #2d2d2d; font-weight: normal;\">4.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Verdana\',\'sans-serif\'; mso-bidi-font-family: Helvetica; color: #2d2d2d; font-weight: normal;\">Switching off Your Geyser won&rsquo;t Work<o:p></o:p></span></h2>\n<h2 style=\"text-indent: -.25in; mso-list: l0 level1 lfo2; background: #FAFAFA; margin: 13.6pt 0in 6.8pt .5in;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: Verdana; mso-bidi-font-family: Verdana; color: #2d2d2d; font-weight: normal;\">5.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Verdana\',\'sans-serif\'; mso-bidi-font-family: Helvetica; color: #2d2d2d; font-weight: normal;\">Know the Ideal Temperature of Geyser<o:p></o:p></span></h2>\n<h2 style=\"text-indent: -.25in; mso-list: l0 level1 lfo2; background: #FAFAFA; margin: 13.6pt 0in 6.8pt .5in;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: Verdana; mso-bidi-font-family: Verdana; color: #2d2d2d; font-weight: normal;\">6.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Verdana\',\'sans-serif\'; mso-bidi-font-family: Helvetica; color: #2d2d2d; font-weight: normal;\">Keep Your Geyser Temperature at 60<sup style=\"box-sizing: border-box;\">o</sup>&nbsp;Celsius<o:p></o:p></span></h2>\n<h2 style=\"text-indent: -.25in; mso-list: l0 level1 lfo2; background: #FAFAFA; margin: 13.6pt 0in 6.8pt .5in;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: Verdana; mso-bidi-font-family: Verdana; color: #2d2d2d; font-weight: normal;\">7.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Verdana\',\'sans-serif\'; mso-bidi-font-family: Helvetica; color: #2d2d2d; font-weight: normal;\">Install energy saving upgrades<o:p></o:p></span></h2>\n<p>&nbsp; &nbsp; &nbsp; 8.&nbsp;&nbsp;<span style=\"font-size: 12pt; line-height: 18.4px; font-family: Verdana, \'sans-serif\'; color: #2d2d2d; font-weight: normal;\">Use Geyser Timer</span></p>\n</body>\n<script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script></html>', 'main', 0, 'uploads/category/1641049330Gesyer.png', 1, 1, '2022-01-01 15:02:10', '2022-01-01 15:51:42', NULL, 1, 1, NULL),
(24, 6, 'Water Purifier', 'water-purifier', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',\'sans-serif\'; color: #7c8595; background: white;\">Water purifiers ensure that you get clean and safe drinking water on demand so that you stay away from water-borne diseases.<o:p></o:p></span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',\'sans-serif\'; color: #7c8595; background: white;\">Our trained technicians dedicatedly repair your RO pump. We ensure that purifier pump repairing at an economical cost</span>.<o:p></o:p></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',\'sans-serif\'; color: #7c8595; background: white;\">We make sure that our client gets quality service and assistance whenever they call us for door step service. What we do, we do well.</span><span style=\"font-size: 12.0pt; line-height: 115%;\"><o:p></o:p></span></p>\n</body>\n<script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script></html>', 'main', 0, 'uploads/category/1641049406water_purifier_icon.png', 1, 1, '2022-01-01 15:03:26', '2022-01-01 16:20:01', NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `city_name` varchar(100) NOT NULL,
  `city_state` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city_name`, `city_state`) VALUES
(1, 'Mangalore', 'Karnataka'),
(2, 'Port Blair', 'Andaman & Nicobar Islands'),
(3, 'Adilabad', 'Andhra Pradesh'),
(4, 'Adoni', 'Andhra Pradesh'),
(5, 'Amadalavalasa', 'Andhra Pradesh'),
(6, 'Amalapuram', 'Andhra Pradesh'),
(7, 'Anakapalle', 'Andhra Pradesh'),
(8, 'Anantapur', 'Andhra Pradesh'),
(9, 'Badepalle', 'Andhra Pradesh'),
(10, 'Banganapalle', 'Andhra Pradesh'),
(11, 'Bapatla', 'Andhra Pradesh'),
(12, 'Bellampalle', 'Andhra Pradesh'),
(13, 'Bethamcherla', 'Andhra Pradesh'),
(14, 'Bhadrachalam', 'Andhra Pradesh'),
(15, 'Bhainsa', 'Andhra Pradesh'),
(16, 'Bheemunipatnam', 'Andhra Pradesh'),
(17, 'Bhimavaram', 'Andhra Pradesh'),
(18, 'Bhongir', 'Andhra Pradesh'),
(19, 'Bobbili', 'Andhra Pradesh'),
(20, 'Bodhan', 'Andhra Pradesh'),
(21, 'Chilakaluripet', 'Andhra Pradesh'),
(22, 'Chirala', 'Andhra Pradesh'),
(23, 'Chittoor', 'Andhra Pradesh'),
(24, 'Cuddapah', 'Andhra Pradesh'),
(25, 'Devarakonda', 'Andhra Pradesh'),
(26, 'Dharmavaram', 'Andhra Pradesh'),
(27, 'Eluru', 'Andhra Pradesh'),
(28, 'Farooqnagar', 'Andhra Pradesh'),
(29, 'Gadwal', 'Andhra Pradesh'),
(30, 'Gooty', 'Andhra Pradesh'),
(31, 'Gudivada', 'Andhra Pradesh'),
(32, 'Gudur', 'Andhra Pradesh'),
(33, 'Guntakal', 'Andhra Pradesh'),
(34, 'Guntur', 'Andhra Pradesh'),
(35, 'Hanuman Junction', 'Andhra Pradesh'),
(36, 'Hindupur', 'Andhra Pradesh'),
(37, 'Hyderabad', 'Andhra Pradesh'),
(38, 'Ichchapuram', 'Andhra Pradesh'),
(39, 'Jaggaiahpet', 'Andhra Pradesh'),
(40, 'Jagtial', 'Andhra Pradesh'),
(41, 'Jammalamadugu', 'Andhra Pradesh'),
(42, 'Jangaon', 'Andhra Pradesh'),
(43, 'Kadapa', 'Andhra Pradesh'),
(44, 'Kadiri', 'Andhra Pradesh'),
(45, 'Kagaznagar', 'Andhra Pradesh'),
(46, 'Kakinada', 'Andhra Pradesh'),
(47, 'Kalyandurg', 'Andhra Pradesh'),
(48, 'Kamareddy', 'Andhra Pradesh'),
(49, 'Kandukur', 'Andhra Pradesh'),
(50, 'Karimnagar', 'Andhra Pradesh'),
(51, 'Kavali', 'Andhra Pradesh'),
(52, 'Khammam', 'Andhra Pradesh'),
(53, 'Koratla', 'Andhra Pradesh'),
(54, 'Kothagudem', 'Andhra Pradesh'),
(55, 'Kothapeta', 'Andhra Pradesh'),
(56, 'Kovvur', 'Andhra Pradesh'),
(57, 'Kurnool', 'Andhra Pradesh'),
(58, 'Kyathampalle', 'Andhra Pradesh'),
(59, 'Macherla', 'Andhra Pradesh'),
(60, 'Machilipatnam', 'Andhra Pradesh'),
(61, 'Madanapalle', 'Andhra Pradesh'),
(62, 'Mahbubnagar', 'Andhra Pradesh'),
(63, 'Mancherial', 'Andhra Pradesh'),
(64, 'Mandamarri', 'Andhra Pradesh'),
(65, 'Mandapeta', 'Andhra Pradesh'),
(66, 'Manuguru', 'Andhra Pradesh'),
(67, 'Markapur', 'Andhra Pradesh'),
(68, 'Medak', 'Andhra Pradesh'),
(69, 'Miryalaguda', 'Andhra Pradesh'),
(70, 'Mogalthur', 'Andhra Pradesh'),
(71, 'Nagari', 'Andhra Pradesh'),
(72, 'Nagarkurnool', 'Andhra Pradesh'),
(73, 'Nandyal', 'Andhra Pradesh'),
(74, 'Narasapur', 'Andhra Pradesh'),
(75, 'Narasaraopet', 'Andhra Pradesh'),
(76, 'Narayanpet', 'Andhra Pradesh'),
(77, 'Narsipatnam', 'Andhra Pradesh'),
(78, 'Nellore', 'Andhra Pradesh'),
(79, 'Nidadavole', 'Andhra Pradesh'),
(80, 'Nirmal', 'Andhra Pradesh'),
(81, 'Nizamabad', 'Andhra Pradesh'),
(82, 'Nuzvid', 'Andhra Pradesh'),
(83, 'Ongole', 'Andhra Pradesh'),
(84, 'Palacole', 'Andhra Pradesh'),
(85, 'Palasa Kasibugga', 'Andhra Pradesh'),
(86, 'Palwancha', 'Andhra Pradesh'),
(87, 'Parvathipuram', 'Andhra Pradesh'),
(88, 'Pedana', 'Andhra Pradesh'),
(89, 'Peddapuram', 'Andhra Pradesh'),
(90, 'Pithapuram', 'Andhra Pradesh'),
(91, 'Pondur', 'Andhra pradesh'),
(92, 'Ponnur', 'Andhra Pradesh'),
(93, 'Proddatur', 'Andhra Pradesh'),
(94, 'Punganur', 'Andhra Pradesh'),
(95, 'Puttur', 'Andhra Pradesh'),
(96, 'Rajahmundry', 'Andhra Pradesh'),
(97, 'Rajam', 'Andhra Pradesh'),
(98, 'Ramachandrapuram', 'Andhra Pradesh'),
(99, 'Ramagundam', 'Andhra Pradesh'),
(100, 'Rayachoti', 'Andhra Pradesh'),
(101, 'Rayadurg', 'Andhra Pradesh'),
(102, 'Renigunta', 'Andhra Pradesh'),
(103, 'Repalle', 'Andhra Pradesh'),
(104, 'Sadasivpet', 'Andhra Pradesh'),
(105, 'Salur', 'Andhra Pradesh'),
(106, 'Samalkot', 'Andhra Pradesh'),
(107, 'Sangareddy', 'Andhra Pradesh'),
(108, 'Sattenapalle', 'Andhra Pradesh'),
(109, 'Siddipet', 'Andhra Pradesh'),
(110, 'Singapur', 'Andhra Pradesh'),
(111, 'Sircilla', 'Andhra Pradesh'),
(112, 'Srikakulam', 'Andhra Pradesh'),
(113, 'Srikalahasti', 'Andhra Pradesh'),
(115, 'Suryapet', 'Andhra Pradesh'),
(116, 'Tadepalligudem', 'Andhra Pradesh'),
(117, 'Tadpatri', 'Andhra Pradesh'),
(118, 'Tandur', 'Andhra Pradesh'),
(119, 'Tanuku', 'Andhra Pradesh'),
(120, 'Tenali', 'Andhra Pradesh'),
(121, 'Tirupati', 'Andhra Pradesh'),
(122, 'Tuni', 'Andhra Pradesh'),
(123, 'Uravakonda', 'Andhra Pradesh'),
(124, 'Venkatagiri', 'Andhra Pradesh'),
(125, 'Vicarabad', 'Andhra Pradesh'),
(126, 'Vijayawada', 'Andhra Pradesh'),
(127, 'Vinukonda', 'Andhra Pradesh'),
(128, 'Visakhapatnam', 'Andhra Pradesh'),
(129, 'Vizianagaram', 'Andhra Pradesh'),
(130, 'Wanaparthy', 'Andhra Pradesh'),
(131, 'Warangal', 'Andhra Pradesh'),
(132, 'Yellandu', 'Andhra Pradesh'),
(133, 'Yemmiganur', 'Andhra Pradesh'),
(134, 'Yerraguntla', 'Andhra Pradesh'),
(135, 'Zahirabad', 'Andhra Pradesh'),
(136, 'Rajampet', 'Andhra Pradesh'),
(137, 'Along', 'Arunachal Pradesh'),
(138, 'Bomdila', 'Arunachal Pradesh'),
(139, 'Itanagar', 'Arunachal Pradesh'),
(140, 'Naharlagun', 'Arunachal Pradesh'),
(141, 'Pasighat', 'Arunachal Pradesh'),
(142, 'Abhayapuri', 'Assam'),
(143, 'Amguri', 'Assam'),
(144, 'Anandnagaar', 'Assam'),
(145, 'Barpeta', 'Assam'),
(146, 'Barpeta Road', 'Assam'),
(147, 'Bilasipara', 'Assam'),
(148, 'Bongaigaon', 'Assam'),
(149, 'Dhekiajuli', 'Assam'),
(150, 'Dhubri', 'Assam'),
(151, 'Dibrugarh', 'Assam'),
(152, 'Digboi', 'Assam'),
(153, 'Diphu', 'Assam'),
(154, 'Dispur', 'Assam'),
(156, 'Gauripur', 'Assam'),
(157, 'Goalpara', 'Assam'),
(158, 'Golaghat', 'Assam'),
(159, 'Guwahati', 'Assam'),
(160, 'Haflong', 'Assam'),
(161, 'Hailakandi', 'Assam'),
(162, 'Hojai', 'Assam'),
(163, 'Jorhat', 'Assam'),
(164, 'Karimganj', 'Assam'),
(165, 'Kokrajhar', 'Assam'),
(166, 'Lanka', 'Assam'),
(167, 'Lumding', 'Assam'),
(168, 'Mangaldoi', 'Assam'),
(169, 'Mankachar', 'Assam'),
(170, 'Margherita', 'Assam'),
(171, 'Mariani', 'Assam'),
(172, 'Marigaon', 'Assam'),
(173, 'Nagaon', 'Assam'),
(174, 'Nalbari', 'Assam'),
(175, 'North Lakhimpur', 'Assam'),
(176, 'Rangia', 'Assam'),
(177, 'Sibsagar', 'Assam'),
(178, 'Silapathar', 'Assam'),
(179, 'Silchar', 'Assam'),
(180, 'Tezpur', 'Assam'),
(181, 'Tinsukia', 'Assam'),
(182, 'Amarpur', 'Bihar'),
(183, 'Araria', 'Bihar'),
(184, 'Areraj', 'Bihar'),
(185, 'Arrah', 'Bihar'),
(186, 'Asarganj', 'Bihar'),
(187, 'Aurangabad', 'Bihar'),
(188, 'Bagaha', 'Bihar'),
(189, 'Bahadurganj', 'Bihar'),
(190, 'Bairgania', 'Bihar'),
(191, 'Bakhtiarpur', 'Bihar'),
(192, 'Banka', 'Bihar'),
(193, 'Banmankhi Bazar', 'Bihar'),
(194, 'Barahiya', 'Bihar'),
(195, 'Barauli', 'Bihar'),
(196, 'Barbigha', 'Bihar'),
(197, 'Barh', 'Bihar'),
(198, 'Begusarai', 'Bihar'),
(199, 'Behea', 'Bihar'),
(200, 'Bettiah', 'Bihar'),
(201, 'Bhabua', 'Bihar'),
(202, 'Bhagalpur', 'Bihar'),
(203, 'Bihar Sharif', 'Bihar'),
(204, 'Bikramganj', 'Bihar'),
(205, 'Bodh Gaya', 'Bihar'),
(206, 'Buxar', 'Bihar'),
(207, 'Chandan Bara', 'Bihar'),
(208, 'Chanpatia', 'Bihar'),
(209, 'Chhapra', 'Bihar'),
(210, 'Colgong', 'Bihar'),
(211, 'Dalsinghsarai', 'Bihar'),
(212, 'Darbhanga', 'Bihar'),
(213, 'Daudnagar', 'Bihar'),
(214, 'Dehri-on-Sone', 'Bihar'),
(215, 'Dhaka', 'Bihar'),
(216, 'Dighwara', 'Bihar'),
(217, 'Dumraon', 'Bihar'),
(218, 'Fatwah', 'Bihar'),
(219, 'Forbesganj', 'Bihar'),
(220, 'Gaya', 'Bihar'),
(221, 'Gogri Jamalpur', 'Bihar'),
(222, 'Gopalganj', 'Bihar'),
(223, 'Hajipur', 'Bihar'),
(224, 'Hilsa', 'Bihar'),
(225, 'Hisua', 'Bihar'),
(226, 'Islampur', 'Bihar'),
(227, 'Jagdispur', 'Bihar'),
(228, 'Jamalpur', 'Bihar'),
(229, 'Jamui', 'Bihar'),
(230, 'Jehanabad', 'Bihar'),
(231, 'Jhajha', 'Bihar'),
(232, 'Jhanjharpur', 'Bihar'),
(233, 'Jogabani', 'Bihar'),
(234, 'Kanti', 'Bihar'),
(235, 'Katihar', 'Bihar'),
(236, 'Khagaria', 'Bihar'),
(237, 'Kharagpur', 'Bihar'),
(238, 'Kishanganj', 'Bihar'),
(239, 'Lakhisarai', 'Bihar'),
(240, 'Lalganj', 'Bihar'),
(241, 'Madhepura', 'Bihar'),
(242, 'Madhubani', 'Bihar'),
(243, 'Maharajganj', 'Bihar'),
(244, 'Mahnar Bazar', 'Bihar'),
(245, 'Makhdumpur', 'Bihar'),
(246, 'Maner', 'Bihar'),
(247, 'Manihari', 'Bihar'),
(248, 'Marhaura', 'Bihar'),
(249, 'Masaurhi', 'Bihar'),
(250, 'Mirganj', 'Bihar'),
(251, 'Mokameh', 'Bihar'),
(252, 'Motihari', 'Bihar'),
(253, 'Motipur', 'Bihar'),
(254, 'Munger', 'Bihar'),
(255, 'Murliganj', 'Bihar'),
(256, 'Muzaffarpur', 'Bihar'),
(257, 'Narkatiaganj', 'Bihar'),
(258, 'Naugachhia', 'Bihar'),
(259, 'Nawada', 'Bihar'),
(260, 'Nokha', 'Bihar'),
(261, 'Patna', 'Bihar'),
(262, 'Piro', 'Bihar'),
(263, 'Purnia', 'Bihar'),
(264, 'Rafiganj', 'Bihar'),
(265, 'Rajgir', 'Bihar'),
(266, 'Ramnagar', 'Bihar'),
(267, 'Raxaul Bazar', 'Bihar'),
(268, 'Revelganj', 'Bihar'),
(269, 'Rosera', 'Bihar'),
(270, 'Saharsa', 'Bihar'),
(271, 'Samastipur', 'Bihar'),
(272, 'Sasaram', 'Bihar'),
(273, 'Sheikhpura', 'Bihar'),
(274, 'Sheohar', 'Bihar'),
(275, 'Sherghati', 'Bihar'),
(276, 'Silao', 'Bihar'),
(277, 'Sitamarhi', 'Bihar'),
(278, 'Siwan', 'Bihar'),
(279, 'Sonepur', 'Bihar'),
(280, 'Sugauli', 'Bihar'),
(281, 'Sultanganj', 'Bihar'),
(282, 'Supaul', 'Bihar'),
(283, 'Warisaliganj', 'Bihar'),
(284, 'Ahiwara', 'Chhattisgarh'),
(285, 'Akaltara', 'Chhattisgarh'),
(286, 'Ambagarh Chowki', 'Chhattisgarh'),
(287, 'Ambikapur', 'Chhattisgarh'),
(288, 'Arang', 'Chhattisgarh'),
(289, 'Bade Bacheli', 'Chhattisgarh'),
(290, 'Balod', 'Chhattisgarh'),
(291, 'Baloda Bazar', 'Chhattisgarh'),
(292, 'Bemetra', 'Chhattisgarh'),
(293, 'Bhatapara', 'Chhattisgarh'),
(294, 'Bilaspur', 'Chhattisgarh'),
(295, 'Birgaon', 'Chhattisgarh'),
(296, 'Champa', 'Chhattisgarh'),
(297, 'Chirmiri', 'Chhattisgarh'),
(298, 'Dalli-Rajhara', 'Chhattisgarh'),
(299, 'Dhamtari', 'Chhattisgarh'),
(300, 'Dipka', 'Chhattisgarh'),
(301, 'Dongargarh', 'Chhattisgarh'),
(302, 'Durg-Bhilai Nagar', 'Chhattisgarh'),
(303, 'Gobranawapara', 'Chhattisgarh'),
(304, 'Jagdalpur', 'Chhattisgarh'),
(305, 'Janjgir', 'Chhattisgarh'),
(306, 'Jashpurnagar', 'Chhattisgarh'),
(307, 'Kanker', 'Chhattisgarh'),
(308, 'Kawardha', 'Chhattisgarh'),
(309, 'Kondagaon', 'Chhattisgarh'),
(310, 'Korba', 'Chhattisgarh'),
(311, 'Mahasamund', 'Chhattisgarh'),
(312, 'Mahendragarh', 'Chhattisgarh'),
(313, 'Mungeli', 'Chhattisgarh'),
(314, 'Naila Janjgir', 'Chhattisgarh'),
(315, 'Raigarh', 'Chhattisgarh'),
(316, 'Raipur', 'Chhattisgarh'),
(317, 'Rajnandgaon', 'Chhattisgarh'),
(318, 'Sakti', 'Chhattisgarh'),
(319, 'Tilda Newra', 'Chhattisgarh'),
(320, 'Amli', 'Dadra & Nagar Haveli'),
(321, 'Silvassa', 'Dadra & Nagar Haveli'),
(322, 'Daman and Diu', 'Daman & Diu'),
(323, 'Daman and Diu', 'Daman & Diu'),
(324, 'Asola', 'Delhi'),
(325, 'Delhi', 'Delhi'),
(326, 'Aldona', 'Goa'),
(327, 'Curchorem Cacora', 'Goa'),
(328, 'Madgaon', 'Goa'),
(329, 'Mapusa', 'Goa'),
(330, 'Margao', 'Goa'),
(331, 'Marmagao', 'Goa'),
(332, 'Panaji', 'Goa'),
(333, 'Ahmedabad', 'Gujarat'),
(334, 'Amreli', 'Gujarat'),
(335, 'Anand', 'Gujarat'),
(336, 'Ankleshwar', 'Gujarat'),
(337, 'Bharuch', 'Gujarat'),
(338, 'Bhavnagar', 'Gujarat'),
(339, 'Bhuj', 'Gujarat'),
(340, 'Cambay', 'Gujarat'),
(341, 'Dahod', 'Gujarat'),
(342, 'Deesa', 'Gujarat'),
(343, 'Dharampur', ' India'),
(344, 'Dholka', 'Gujarat'),
(345, 'Gandhinagar', 'Gujarat'),
(346, 'Godhra', 'Gujarat'),
(347, 'Himatnagar', 'Gujarat'),
(348, 'Idar', 'Gujarat'),
(349, 'Jamnagar', 'Gujarat'),
(350, 'Junagadh', 'Gujarat'),
(351, 'Kadi', 'Gujarat'),
(352, 'Kalavad', 'Gujarat'),
(353, 'Kalol', 'Gujarat'),
(354, 'Kapadvanj', 'Gujarat'),
(355, 'Karjan', 'Gujarat'),
(356, 'Keshod', 'Gujarat'),
(357, 'Khambhalia', 'Gujarat'),
(358, 'Khambhat', 'Gujarat'),
(359, 'Kheda', 'Gujarat'),
(360, 'Khedbrahma', 'Gujarat'),
(361, 'Kheralu', 'Gujarat'),
(362, 'Kodinar', 'Gujarat'),
(363, 'Lathi', 'Gujarat'),
(364, 'Limbdi', 'Gujarat'),
(365, 'Lunawada', 'Gujarat'),
(366, 'Mahesana', 'Gujarat'),
(367, 'Mahuva', 'Gujarat'),
(368, 'Manavadar', 'Gujarat'),
(369, 'Mandvi', 'Gujarat'),
(370, 'Mangrol', 'Gujarat'),
(371, 'Mansa', 'Gujarat'),
(372, 'Mehmedabad', 'Gujarat'),
(373, 'Modasa', 'Gujarat'),
(374, 'Morvi', 'Gujarat'),
(375, 'Nadiad', 'Gujarat'),
(376, 'Navsari', 'Gujarat'),
(377, 'Padra', 'Gujarat'),
(378, 'Palanpur', 'Gujarat'),
(379, 'Palitana', 'Gujarat'),
(380, 'Pardi', 'Gujarat'),
(381, 'Patan', 'Gujarat'),
(382, 'Petlad', 'Gujarat'),
(383, 'Porbandar', 'Gujarat'),
(384, 'Radhanpur', 'Gujarat'),
(385, 'Rajkot', 'Gujarat'),
(386, 'Rajpipla', 'Gujarat'),
(387, 'Rajula', 'Gujarat'),
(388, 'Ranavav', 'Gujarat'),
(389, 'Rapar', 'Gujarat'),
(390, 'Salaya', 'Gujarat'),
(391, 'Sanand', 'Gujarat'),
(392, 'Savarkundla', 'Gujarat'),
(393, 'Sidhpur', 'Gujarat'),
(394, 'Sihor', 'Gujarat'),
(395, 'Songadh', 'Gujarat'),
(396, 'Surat', 'Gujarat'),
(397, 'Talaja', 'Gujarat'),
(398, 'Thangadh', 'Gujarat'),
(399, 'Tharad', 'Gujarat'),
(400, 'Umbergaon', 'Gujarat'),
(401, 'Umreth', 'Gujarat'),
(402, 'Una', 'Gujarat'),
(403, 'Unjha', 'Gujarat'),
(404, 'Upleta', 'Gujarat'),
(405, 'Vadnagar', 'Gujarat'),
(406, 'Vadodara', 'Gujarat'),
(407, 'Valsad', 'Gujarat'),
(408, 'Vapi', 'Gujarat'),
(409, 'Vapi', 'Gujarat'),
(410, 'Veraval', 'Gujarat'),
(411, 'Vijapur', 'Gujarat'),
(412, 'Viramgam', 'Gujarat'),
(413, 'Visnagar', 'Gujarat'),
(414, 'Vyara', 'Gujarat'),
(415, 'Wadhwan', 'Gujarat'),
(416, 'Wankaner', 'Gujarat'),
(417, 'Adalaj', 'Gujrat'),
(418, 'Adityana', 'Gujrat'),
(419, 'Alang', 'Gujrat'),
(420, 'Ambaji', 'Gujrat'),
(421, 'Ambaliyasan', 'Gujrat'),
(422, 'Andada', 'Gujrat'),
(423, 'Anjar', 'Gujrat'),
(424, 'Anklav', 'Gujrat'),
(425, 'Antaliya', 'Gujrat'),
(426, 'Arambhada', 'Gujrat'),
(427, 'Atul', 'Gujrat'),
(428, 'Ballabhgarh', 'Hariyana'),
(429, 'Ambala', 'Haryana'),
(430, 'Ambala', 'Haryana'),
(431, 'Asankhurd', 'Haryana'),
(432, 'Assandh', 'Haryana'),
(433, 'Ateli', 'Haryana'),
(434, 'Babiyal', 'Haryana'),
(435, 'Bahadurgarh', 'Haryana'),
(436, 'Barwala', 'Haryana'),
(437, 'Bhiwani', 'Haryana'),
(438, 'Charkhi Dadri', 'Haryana'),
(439, 'Cheeka', 'Haryana'),
(440, 'Ellenabad 2', 'Haryana'),
(441, 'Faridabad', 'Haryana'),
(442, 'Fatehabad', 'Haryana'),
(443, 'Ganaur', 'Haryana'),
(444, 'Gharaunda', 'Haryana'),
(445, 'Gohana', 'Haryana'),
(446, 'Gurgaon', 'Haryana'),
(447, 'Haibat(Yamuna Nagar)', 'Haryana'),
(448, 'Hansi', 'Haryana'),
(449, 'Hisar', 'Haryana'),
(450, 'Hodal', 'Haryana'),
(451, 'Jhajjar', 'Haryana'),
(452, 'Jind', 'Haryana'),
(453, 'Kaithal', 'Haryana'),
(454, 'Kalan Wali', 'Haryana'),
(455, 'Kalka', 'Haryana'),
(456, 'Karnal', 'Haryana'),
(457, 'Ladwa', 'Haryana'),
(458, 'Mahendragarh', 'Haryana'),
(459, 'Mandi Dabwali', 'Haryana'),
(460, 'Narnaul', 'Haryana'),
(461, 'Narwana', 'Haryana'),
(462, 'Palwal', 'Haryana'),
(463, 'Panchkula', 'Haryana'),
(464, 'Panipat', 'Haryana'),
(465, 'Pehowa', 'Haryana'),
(466, 'Pinjore', 'Haryana'),
(467, 'Rania', 'Haryana'),
(468, 'Ratia', 'Haryana'),
(469, 'Rewari', 'Haryana'),
(470, 'Rohtak', 'Haryana'),
(471, 'Safidon', 'Haryana'),
(472, 'Samalkha', 'Haryana'),
(473, 'Shahbad', 'Haryana'),
(474, 'Sirsa', 'Haryana'),
(475, 'Sohna', 'Haryana'),
(476, 'Sonipat', 'Haryana'),
(477, 'Taraori', 'Haryana'),
(478, 'Thanesar', 'Haryana'),
(479, 'Tohana', 'Haryana'),
(480, 'Yamunanagar', 'Haryana'),
(481, 'Arki', 'Himachal Pradesh'),
(482, 'Baddi', 'Himachal Pradesh'),
(483, 'Bilaspur', 'Himachal Pradesh'),
(484, 'Chamba', 'Himachal Pradesh'),
(485, 'Dalhousie', 'Himachal Pradesh'),
(486, 'Dharamsala', 'Himachal Pradesh'),
(487, 'Hamirpur', 'Himachal Pradesh'),
(488, 'Mandi', 'Himachal Pradesh'),
(489, 'Nahan', 'Himachal Pradesh'),
(490, 'Shimla', 'Himachal Pradesh'),
(491, 'Solan', 'Himachal Pradesh'),
(492, 'Sundarnagar', 'Himachal Pradesh'),
(493, 'Jammu', 'Jammu & Kashmir'),
(494, 'Achabbal', 'Jammu & Kashmir'),
(495, 'Akhnoor', 'Jammu & Kashmir'),
(496, 'Anantnag', 'Jammu & Kashmir'),
(497, 'Arnia', 'Jammu & Kashmir'),
(498, 'Awantipora', 'Jammu & Kashmir'),
(499, 'Bandipore', 'Jammu & Kashmir'),
(500, 'Baramula', 'Jammu & Kashmir'),
(501, 'Kathua', 'Jammu & Kashmir'),
(502, 'Leh', 'Jammu & Kashmir'),
(503, 'Punch', 'Jammu & Kashmir'),
(504, 'Rajauri', 'Jammu & Kashmir'),
(505, 'Sopore', 'Jammu & Kashmir'),
(506, 'Srinagar', 'Jammu & Kashmir'),
(507, 'Udhampur', 'Jammu & Kashmir'),
(508, 'Amlabad', 'Jharkhand'),
(509, 'Ara', 'Jharkhand'),
(510, 'Barughutu', 'Jharkhand'),
(511, 'Bokaro Steel City', 'Jharkhand'),
(512, 'Chaibasa', 'Jharkhand'),
(513, 'Chakradharpur', 'Jharkhand'),
(514, 'Chandrapura', 'Jharkhand'),
(515, 'Chatra', 'Jharkhand'),
(516, 'Chirkunda', 'Jharkhand'),
(517, 'Churi', 'Jharkhand'),
(518, 'Daltonganj', 'Jharkhand'),
(519, 'Deoghar', 'Jharkhand'),
(520, 'Dhanbad', 'Jharkhand'),
(521, 'Dumka', 'Jharkhand'),
(522, 'Garhwa', 'Jharkhand'),
(523, 'Ghatshila', 'Jharkhand'),
(524, 'Giridih', 'Jharkhand'),
(525, 'Godda', 'Jharkhand'),
(526, 'Gomoh', 'Jharkhand'),
(527, 'Gumia', 'Jharkhand'),
(528, 'Gumla', 'Jharkhand'),
(529, 'Hazaribag', 'Jharkhand'),
(530, 'Hussainabad', 'Jharkhand'),
(531, 'Jamshedpur', 'Jharkhand'),
(532, 'Jamtara', 'Jharkhand'),
(533, 'Jhumri Tilaiya', 'Jharkhand'),
(534, 'Khunti', 'Jharkhand'),
(535, 'Lohardaga', 'Jharkhand'),
(536, 'Madhupur', 'Jharkhand'),
(537, 'Mihijam', 'Jharkhand'),
(538, 'Musabani', 'Jharkhand'),
(539, 'Pakaur', 'Jharkhand'),
(540, 'Patratu', 'Jharkhand'),
(541, 'Phusro', 'Jharkhand'),
(542, 'Ramngarh', 'Jharkhand'),
(543, 'Ranchi', 'Jharkhand'),
(544, 'Sahibganj', 'Jharkhand'),
(545, 'Saunda', 'Jharkhand'),
(546, 'Simdega', 'Jharkhand'),
(547, 'Tenu Dam-cum- Kathhara', 'Jharkhand'),
(548, 'Arasikere', 'Karnataka'),
(549, 'Bangalore', 'Karnataka'),
(550, 'Belgaum', 'Karnataka'),
(551, 'Bellary', 'Karnataka'),
(552, 'Chamrajnagar', 'Karnataka'),
(553, 'Chikkaballapur', 'Karnataka'),
(554, 'Chintamani', 'Karnataka'),
(555, 'Chitradurga', 'Karnataka'),
(556, 'Gulbarga', 'Karnataka'),
(557, 'Gundlupet', 'Karnataka'),
(558, 'Hassan', 'Karnataka'),
(559, 'Hospet', 'Karnataka'),
(560, 'Hubli', 'Karnataka'),
(561, 'Karkala', 'Karnataka'),
(562, 'Karwar', 'Karnataka'),
(563, 'Kolar', 'Karnataka'),
(564, 'Kota', 'Karnataka'),
(565, 'Lakshmeshwar', 'Karnataka'),
(566, 'Lingsugur', 'Karnataka'),
(567, 'Maddur', 'Karnataka'),
(568, 'Madhugiri', 'Karnataka'),
(569, 'Madikeri', 'Karnataka'),
(570, 'Magadi', 'Karnataka'),
(571, 'Mahalingpur', 'Karnataka'),
(572, 'Malavalli', 'Karnataka'),
(573, 'Malur', 'Karnataka'),
(574, 'Mandya', 'Karnataka'),
(575, 'Kolhapur', 'Maharashtra'),
(576, 'Manvi', 'Karnataka'),
(577, 'Mudalgi', 'Karnataka'),
(578, 'Mudbidri', 'Karnataka'),
(579, 'Muddebihal', 'Karnataka'),
(580, 'Mudhol', 'Karnataka'),
(581, 'Mulbagal', 'Karnataka'),
(582, 'Mundargi', 'Karnataka'),
(583, 'Mysore', 'Karnataka'),
(584, 'Nanjangud', 'Karnataka'),
(585, 'Pavagada', 'Karnataka'),
(586, 'Puttur', 'Karnataka'),
(587, 'Rabkavi Banhatti', 'Karnataka'),
(588, 'Raichur', 'Karnataka'),
(589, 'Ramanagaram', 'Karnataka'),
(590, 'Ramdurg', 'Karnataka'),
(591, 'Ranibennur', 'Karnataka'),
(592, 'Robertson Pet', 'Karnataka'),
(593, 'Ron', 'Karnataka'),
(594, 'Sadalgi', 'Karnataka'),
(595, 'Sagar', 'Karnataka'),
(596, 'Sakleshpur', 'Karnataka'),
(597, 'Sandur', 'Karnataka'),
(598, 'Sankeshwar', 'Karnataka'),
(599, 'Saundatti-Yellamma', 'Karnataka'),
(600, 'Savanur', 'Karnataka'),
(601, 'Sedam', 'Karnataka'),
(602, 'Shahabad', 'Karnataka'),
(603, 'Shahpur', 'Karnataka'),
(604, 'Shiggaon', 'Karnataka'),
(605, 'Shikapur', 'Karnataka'),
(606, 'Shimoga', 'Karnataka'),
(607, 'Shorapur', 'Karnataka'),
(608, 'Shrirangapattana', 'Karnataka'),
(609, 'Sidlaghatta', 'Karnataka'),
(610, 'Sindgi', 'Karnataka'),
(611, 'Sindhnur', 'Karnataka'),
(612, 'Sira', 'Karnataka'),
(613, 'Sirsi', 'Karnataka'),
(614, 'Siruguppa', 'Karnataka'),
(615, 'Srinivaspur', 'Karnataka'),
(616, 'Talikota', 'Karnataka'),
(617, 'Tarikere', 'Karnataka'),
(618, 'Tekkalakota', 'Karnataka'),
(619, 'Terdal', 'Karnataka'),
(620, 'Tiptur', 'Karnataka'),
(621, 'Tumkur', 'Karnataka'),
(622, 'Udupi', 'Karnataka'),
(623, 'Vijayapura', 'Karnataka'),
(624, 'Wadi', 'Karnataka'),
(625, 'Yadgir', 'Karnataka'),
(626, 'Adoor', 'Kerala'),
(627, 'Akathiyoor', 'Kerala'),
(628, 'Alappuzha', 'Kerala'),
(629, 'Ancharakandy', 'Kerala'),
(630, 'Aroor', 'Kerala'),
(631, 'Ashtamichira', 'Kerala'),
(632, 'Attingal', 'Kerala'),
(633, 'Avinissery', 'Kerala'),
(634, 'Chalakudy', 'Kerala'),
(635, 'Changanassery', 'Kerala'),
(636, 'Chendamangalam', 'Kerala'),
(637, 'Chengannur', 'Kerala'),
(638, 'Cherthala', 'Kerala'),
(639, 'Cheruthazham', 'Kerala'),
(640, 'Chittur-Thathamangalam', 'Kerala'),
(641, 'Chockli', 'Kerala'),
(642, 'Erattupetta', 'Kerala'),
(643, 'Guruvayoor', 'Kerala'),
(644, 'Irinjalakuda', 'Kerala'),
(645, 'Kadirur', 'Kerala'),
(646, 'Kalliasseri', 'Kerala'),
(647, 'Kalpetta', 'Kerala'),
(648, 'Kanhangad', 'Kerala'),
(649, 'Kanjikkuzhi', 'Kerala'),
(650, 'Kannur', 'Kerala'),
(651, 'Kasaragod', 'Kerala'),
(652, 'Kayamkulam', 'Kerala'),
(653, 'Kochi', 'Kerala'),
(654, 'Kodungallur', 'Kerala'),
(655, 'Kollam', 'Kerala'),
(656, 'Koothuparamba', 'Kerala'),
(657, 'Kothamangalam', 'Kerala'),
(658, 'Kottayam', 'Kerala'),
(659, 'Kozhikode', 'Kerala'),
(660, 'Kunnamkulam', 'Kerala'),
(661, 'Malappuram', 'Kerala'),
(662, 'Mattannur', 'Kerala'),
(663, 'Mavelikkara', 'Kerala'),
(664, 'Mavoor', 'Kerala'),
(665, 'Muvattupuzha', 'Kerala'),
(666, 'Nedumangad', 'Kerala'),
(667, 'Neyyattinkara', 'Kerala'),
(668, 'Ottappalam', 'Kerala'),
(669, 'Palai', 'Kerala'),
(670, 'Palakkad', 'Kerala'),
(671, 'Panniyannur', 'Kerala'),
(672, 'Pappinisseri', 'Kerala'),
(673, 'Paravoor', 'Kerala'),
(674, 'Pathanamthitta', 'Kerala'),
(675, 'Payyannur', 'Kerala'),
(676, 'Peringathur', 'Kerala'),
(677, 'Perinthalmanna', 'Kerala'),
(678, 'Perumbavoor', 'Kerala'),
(679, 'Ponnani', 'Kerala'),
(680, 'Punalur', 'Kerala'),
(681, 'Quilandy', 'Kerala'),
(682, 'Shoranur', 'Kerala'),
(683, 'Taliparamba', 'Kerala'),
(684, 'Thiruvalla', 'Kerala'),
(685, 'Thiruvananthapuram', 'Kerala'),
(686, 'Thodupuzha', 'Kerala'),
(687, 'Thrissur', 'Kerala'),
(688, 'Tirur', 'Kerala'),
(689, 'Vadakara', 'Kerala'),
(690, 'Vaikom', 'Kerala'),
(691, 'Varkala', 'Kerala'),
(692, 'Kavaratti', 'Lakshadweep'),
(693, 'Ashok Nagar', 'Madhya Pradesh'),
(694, 'Balaghat', 'Madhya Pradesh'),
(695, 'Betul', 'Madhya Pradesh'),
(696, 'Bhopal', 'Madhya Pradesh'),
(697, 'Burhanpur', 'Madhya Pradesh'),
(698, 'Chhatarpur', 'Madhya Pradesh'),
(699, 'Dabra', 'Madhya Pradesh'),
(700, 'Datia', 'Madhya Pradesh'),
(701, 'Dewas', 'Madhya Pradesh'),
(702, 'Dhar', 'Madhya Pradesh'),
(703, 'Fatehabad', 'Madhya Pradesh'),
(704, 'Gwalior', 'Madhya Pradesh'),
(705, 'Indore', 'Madhya Pradesh'),
(706, 'Itarsi', 'Madhya Pradesh'),
(707, 'Jabalpur', 'Madhya Pradesh'),
(708, 'Katni', 'Madhya Pradesh'),
(709, 'Kotma', 'Madhya Pradesh'),
(710, 'Lahar', 'Madhya Pradesh'),
(711, 'Lundi', 'Madhya Pradesh'),
(712, 'Maharajpur', 'Madhya Pradesh'),
(713, 'Mahidpur', 'Madhya Pradesh'),
(714, 'Maihar', 'Madhya Pradesh'),
(715, 'Malajkhand', 'Madhya Pradesh'),
(716, 'Manasa', 'Madhya Pradesh'),
(717, 'Manawar', 'Madhya Pradesh'),
(718, 'Mandideep', 'Madhya Pradesh'),
(719, 'Mandla', 'Madhya Pradesh'),
(720, 'Mandsaur', 'Madhya Pradesh'),
(721, 'Mauganj', 'Madhya Pradesh'),
(722, 'Mhow Cantonment', 'Madhya Pradesh'),
(723, 'Mhowgaon', 'Madhya Pradesh'),
(724, 'Morena', 'Madhya Pradesh'),
(725, 'Multai', 'Madhya Pradesh'),
(726, 'Murwara', 'Madhya Pradesh'),
(727, 'Nagda', 'Madhya Pradesh'),
(728, 'Nainpur', 'Madhya Pradesh'),
(729, 'Narsinghgarh', 'Madhya Pradesh'),
(730, 'Narsinghgarh', 'Madhya Pradesh'),
(731, 'Neemuch', 'Madhya Pradesh'),
(732, 'Nepanagar', 'Madhya Pradesh'),
(733, 'Niwari', 'Madhya Pradesh'),
(734, 'Nowgong', 'Madhya Pradesh'),
(735, 'Nowrozabad', 'Madhya Pradesh'),
(736, 'Pachore', 'Madhya Pradesh'),
(737, 'Pali', 'Madhya Pradesh'),
(738, 'Panagar', 'Madhya Pradesh'),
(739, 'Pandhurna', 'Madhya Pradesh'),
(740, 'Panna', 'Madhya Pradesh'),
(741, 'Pasan', 'Madhya Pradesh'),
(742, 'Pipariya', 'Madhya Pradesh'),
(743, 'Pithampur', 'Madhya Pradesh'),
(744, 'Porsa', 'Madhya Pradesh'),
(745, 'Prithvipur', 'Madhya Pradesh'),
(746, 'Raghogarh-Vijaypur', 'Madhya Pradesh'),
(747, 'Rahatgarh', 'Madhya Pradesh'),
(748, 'Raisen', 'Madhya Pradesh'),
(749, 'Rajgarh', 'Madhya Pradesh'),
(750, 'Ratlam', 'Madhya Pradesh'),
(751, 'Rau', 'Madhya Pradesh'),
(752, 'Rehli', 'Madhya Pradesh'),
(753, 'Rewa', 'Madhya Pradesh'),
(754, 'Sabalgarh', 'Madhya Pradesh'),
(755, 'Sagar', 'Madhya Pradesh'),
(756, 'Sanawad', 'Madhya Pradesh'),
(757, 'Sarangpur', 'Madhya Pradesh'),
(758, 'Sarni', 'Madhya Pradesh'),
(759, 'Satna', 'Madhya Pradesh'),
(760, 'Sausar', 'Madhya Pradesh'),
(761, 'Sehore', 'Madhya Pradesh'),
(762, 'Sendhwa', 'Madhya Pradesh'),
(763, 'Seoni', 'Madhya Pradesh'),
(764, 'Seoni-Malwa', 'Madhya Pradesh'),
(765, 'Shahdol', 'Madhya Pradesh'),
(766, 'Shajapur', 'Madhya Pradesh'),
(767, 'Shamgarh', 'Madhya Pradesh'),
(768, 'Sheopur', 'Madhya Pradesh'),
(769, 'Shivpuri', 'Madhya Pradesh'),
(770, 'Shujalpur', 'Madhya Pradesh'),
(771, 'Sidhi', 'Madhya Pradesh'),
(772, 'Sihora', 'Madhya Pradesh'),
(773, 'Singrauli', 'Madhya Pradesh'),
(774, 'Sironj', 'Madhya Pradesh'),
(775, 'Sohagpur', 'Madhya Pradesh'),
(776, 'Tarana', 'Madhya Pradesh'),
(777, 'Tikamgarh', 'Madhya Pradesh'),
(778, 'Ujhani', 'Madhya Pradesh'),
(779, 'Ujjain', 'Madhya Pradesh'),
(780, 'Umaria', 'Madhya Pradesh'),
(781, 'Vidisha', 'Madhya Pradesh'),
(782, 'Wara Seoni', 'Madhya Pradesh'),
(783, 'Ahmednagar', 'Maharashtra'),
(784, 'Akola', 'Maharashtra'),
(785, 'Amravati', 'Maharashtra'),
(786, 'Aurangabad', 'Maharashtra'),
(787, 'Baramati', 'Maharashtra'),
(788, 'Chalisgaon', 'Maharashtra'),
(789, 'Chinchani', 'Maharashtra'),
(790, 'Devgarh', 'Maharashtra'),
(791, 'Dhule', 'Maharashtra'),
(792, 'Dombivli', 'Maharashtra'),
(793, 'Durgapur', 'Maharashtra'),
(794, 'Ichalkaranji', 'Maharashtra'),
(795, 'Jalna', 'Maharashtra'),
(796, 'Kalyan', 'Maharashtra'),
(797, 'Latur', 'Maharashtra'),
(798, 'Loha', 'Maharashtra'),
(799, 'Lonar', 'Maharashtra'),
(800, 'Lonavla', 'Maharashtra'),
(801, 'Mahad', 'Maharashtra'),
(802, 'Mahuli', 'Maharashtra'),
(803, 'Malegaon', 'Maharashtra'),
(804, 'Malkapur', 'Maharashtra'),
(805, 'Manchar', 'Maharashtra'),
(806, 'Mangalvedhe', 'Maharashtra'),
(807, 'Mangrulpir', 'Maharashtra'),
(808, 'Manjlegaon', 'Maharashtra'),
(809, 'Manmad', 'Maharashtra'),
(810, 'Manwath', 'Maharashtra'),
(811, 'Mehkar', 'Maharashtra'),
(812, 'Mhaswad', 'Maharashtra'),
(813, 'Miraj', 'Maharashtra'),
(814, 'Morshi', 'Maharashtra'),
(815, 'Mukhed', 'Maharashtra'),
(816, 'Mul', 'Maharashtra'),
(817, 'Mumbai', 'Maharashtra'),
(818, 'Murtijapur', 'Maharashtra'),
(819, 'Nagpur', 'Maharashtra'),
(820, 'Nalasopara', 'Maharashtra'),
(821, 'Nanded-Waghala', 'Maharashtra'),
(822, 'Nandgaon', 'Maharashtra'),
(823, 'Nandura', 'Maharashtra'),
(824, 'Nandurbar', 'Maharashtra'),
(825, 'Narkhed', 'Maharashtra'),
(826, 'Nashik', 'Maharashtra'),
(827, 'Navi Mumbai', 'Maharashtra'),
(828, 'Nawapur', 'Maharashtra'),
(829, 'Nilanga', 'Maharashtra'),
(830, 'Osmanabad', 'Maharashtra'),
(831, 'Ozar', 'Maharashtra'),
(832, 'Pachora', 'Maharashtra'),
(833, 'Paithan', 'Maharashtra'),
(834, 'Palghar', 'Maharashtra'),
(835, 'Pandharkaoda', 'Maharashtra'),
(836, 'Pandharpur', 'Maharashtra'),
(837, 'Panvel', 'Maharashtra'),
(838, 'Parbhani', 'Maharashtra'),
(839, 'Parli', 'Maharashtra'),
(840, 'Parola', 'Maharashtra'),
(841, 'Partur', 'Maharashtra'),
(842, 'Pathardi', 'Maharashtra'),
(843, 'Pathri', 'Maharashtra'),
(844, 'Patur', 'Maharashtra'),
(845, 'Pauni', 'Maharashtra'),
(846, 'Pen', 'Maharashtra'),
(847, 'Phaltan', 'Maharashtra'),
(848, 'Pulgaon', 'Maharashtra'),
(849, 'Pune', 'Maharashtra'),
(850, 'Purna', 'Maharashtra'),
(851, 'Pusad', 'Maharashtra'),
(852, 'Rahuri', 'Maharashtra'),
(853, 'Rajura', 'Maharashtra'),
(854, 'Ramtek', 'Maharashtra'),
(855, 'Ratnagiri', 'Maharashtra'),
(856, 'Raver', 'Maharashtra'),
(857, 'Risod', 'Maharashtra'),
(858, 'Sailu', 'Maharashtra'),
(859, 'Sangamner', 'Maharashtra'),
(860, 'Sangli', 'Maharashtra'),
(861, 'Sangole', 'Maharashtra'),
(862, 'Sasvad', 'Maharashtra'),
(863, 'Satana', 'Maharashtra'),
(864, 'Satara', 'Maharashtra'),
(865, 'Savner', 'Maharashtra'),
(866, 'Sawantwadi', 'Maharashtra'),
(867, 'Shahade', 'Maharashtra'),
(868, 'Shegaon', 'Maharashtra'),
(869, 'Shendurjana', 'Maharashtra'),
(870, 'Shirdi', 'Maharashtra'),
(871, 'Shirpur-Warwade', 'Maharashtra'),
(872, 'Shirur', 'Maharashtra'),
(873, 'Shrigonda', 'Maharashtra'),
(874, 'Shrirampur', 'Maharashtra'),
(875, 'Sillod', 'Maharashtra'),
(876, 'Sinnar', 'Maharashtra'),
(877, 'Solapur', 'Maharashtra'),
(878, 'Soyagaon', 'Maharashtra'),
(879, 'Talegaon Dabhade', 'Maharashtra'),
(880, 'Talode', 'Maharashtra'),
(881, 'Tasgaon', 'Maharashtra'),
(882, 'Tirora', 'Maharashtra'),
(883, 'Tuljapur', 'Maharashtra'),
(884, 'Tumsar', 'Maharashtra'),
(885, 'Uran', 'Maharashtra'),
(886, 'Uran Islampur', 'Maharashtra'),
(887, 'Wadgaon Road', 'Maharashtra'),
(888, 'Wai', 'Maharashtra'),
(889, 'Wani', 'Maharashtra'),
(890, 'Wardha', 'Maharashtra'),
(891, 'Warora', 'Maharashtra'),
(892, 'Warud', 'Maharashtra'),
(893, 'Washim', 'Maharashtra'),
(894, 'Yevla', 'Maharashtra'),
(895, 'Uchgaon', 'Maharashtra'),
(896, 'Udgir', 'Maharashtra'),
(897, 'Umarga', 'Maharastra'),
(898, 'Umarkhed', 'Maharastra'),
(899, 'Umred', 'Maharastra'),
(900, 'Vadgaon Kasba', 'Maharastra'),
(901, 'Vaijapur', 'Maharastra'),
(902, 'Vasai', 'Maharastra'),
(903, 'Virar', 'Maharastra'),
(904, 'Vita', 'Maharastra'),
(905, 'Yavatmal', 'Maharastra'),
(906, 'Yawal', 'Maharastra'),
(907, 'Imphal', 'Manipur'),
(908, 'Kakching', 'Manipur'),
(909, 'Lilong', 'Manipur'),
(910, 'Mayang Imphal', 'Manipur'),
(911, 'Thoubal', 'Manipur'),
(912, 'Jowai', 'Meghalaya'),
(913, 'Nongstoin', 'Meghalaya'),
(914, 'Shillong', 'Meghalaya'),
(915, 'Tura', 'Meghalaya'),
(916, 'Aizawl', 'Mizoram'),
(917, 'Champhai', 'Mizoram'),
(918, 'Lunglei', 'Mizoram'),
(919, 'Saiha', 'Mizoram'),
(920, 'Dimapur', 'Nagaland'),
(921, 'Kohima', 'Nagaland'),
(922, 'Mokokchung', 'Nagaland'),
(923, 'Tuensang', 'Nagaland'),
(924, 'Wokha', 'Nagaland'),
(925, 'Zunheboto', 'Nagaland'),
(950, 'Anandapur', 'Orissa'),
(951, 'Anugul', 'Orissa'),
(952, 'Asika', 'Orissa'),
(953, 'Balangir', 'Orissa'),
(954, 'Balasore', 'Orissa'),
(955, 'Baleshwar', 'Orissa'),
(956, 'Bamra', 'Orissa'),
(957, 'Barbil', 'Orissa'),
(958, 'Bargarh', 'Orissa'),
(959, 'Bargarh', 'Orissa'),
(960, 'Baripada', 'Orissa'),
(961, 'Basudebpur', 'Orissa'),
(962, 'Belpahar', 'Orissa'),
(963, 'Bhadrak', 'Orissa'),
(964, 'Bhawanipatna', 'Orissa'),
(965, 'Bhuban', 'Orissa'),
(966, 'Bhubaneswar', 'Orissa'),
(967, 'Biramitrapur', 'Orissa'),
(968, 'Brahmapur', 'Orissa'),
(969, 'Brajrajnagar', 'Orissa'),
(970, 'Byasanagar', 'Orissa'),
(971, 'Cuttack', 'Orissa'),
(972, 'Debagarh', 'Orissa'),
(973, 'Dhenkanal', 'Orissa'),
(974, 'Gunupur', 'Orissa'),
(975, 'Hinjilicut', 'Orissa'),
(976, 'Jagatsinghapur', 'Orissa'),
(977, 'Jajapur', 'Orissa'),
(978, 'Jaleswar', 'Orissa'),
(979, 'Jatani', 'Orissa'),
(980, 'Jeypur', 'Orissa'),
(981, 'Jharsuguda', 'Orissa'),
(982, 'Joda', 'Orissa'),
(983, 'Kantabanji', 'Orissa'),
(984, 'Karanjia', 'Orissa'),
(985, 'Kendrapara', 'Orissa'),
(986, 'Kendujhar', 'Orissa'),
(987, 'Khordha', 'Orissa'),
(988, 'Koraput', 'Orissa'),
(989, 'Malkangiri', 'Orissa'),
(990, 'Nabarangapur', 'Orissa'),
(991, 'Paradip', 'Orissa'),
(992, 'Parlakhemundi', 'Orissa'),
(993, 'Pattamundai', 'Orissa'),
(994, 'Phulabani', 'Orissa'),
(995, 'Puri', 'Orissa'),
(996, 'Rairangpur', 'Orissa'),
(997, 'Rajagangapur', 'Orissa'),
(998, 'Raurkela', 'Orissa'),
(999, 'Rayagada', 'Orissa'),
(1000, 'Sambalpur', 'Orissa'),
(1001, 'Soro', 'Orissa'),
(1002, 'Sunabeda', 'Orissa'),
(1003, 'Sundargarh', 'Orissa'),
(1004, 'Talcher', 'Orissa'),
(1005, 'Titlagarh', 'Orissa'),
(1006, 'Umarkote', 'Orissa'),
(1007, 'Karaikal', 'Pondicherry'),
(1008, 'Mahe', 'Pondicherry'),
(1009, 'Pondicherry', 'Pondicherry'),
(1010, 'Yanam', 'Pondicherry'),
(1011, 'Ahmedgarh', 'Punjab'),
(1012, 'Amritsar', 'Punjab'),
(1013, 'Barnala', 'Punjab'),
(1014, 'Batala', 'Punjab'),
(1015, 'Bathinda', 'Punjab'),
(1016, 'Bhagha Purana', 'Punjab'),
(1017, 'Budhlada', 'Punjab'),
(1018, 'Chandigarh', 'Punjab'),
(1019, 'Dasua', 'Punjab'),
(1020, 'Dhuri', 'Punjab'),
(1021, 'Dinanagar', 'Punjab'),
(1022, 'Faridkot', 'Punjab'),
(1023, 'Fazilka', 'Punjab'),
(1024, 'Firozpur', 'Punjab'),
(1025, 'Firozpur Cantt.', 'Punjab'),
(1026, 'Giddarbaha', 'Punjab'),
(1027, 'Gobindgarh', 'Punjab'),
(1028, 'Gurdaspur', 'Punjab'),
(1029, 'Hoshiarpur', 'Punjab'),
(1030, 'Jagraon', 'Punjab'),
(1031, 'Jaitu', 'Punjab'),
(1032, 'Jalalabad', 'Punjab'),
(1033, 'Jalandhar', 'Punjab'),
(1034, 'Jalandhar Cantt.', 'Punjab'),
(1035, 'Jandiala', 'Punjab'),
(1036, 'Kapurthala', 'Punjab'),
(1037, 'Karoran', 'Punjab'),
(1038, 'Kartarpur', 'Punjab'),
(1039, 'Khanna', 'Punjab'),
(1040, 'Kharar', 'Punjab'),
(1041, 'Kot Kapura', 'Punjab'),
(1042, 'Kurali', 'Punjab'),
(1043, 'Longowal', 'Punjab'),
(1044, 'Ludhiana', 'Punjab'),
(1045, 'Malerkotla', 'Punjab'),
(1046, 'Malout', 'Punjab'),
(1047, 'Mansa', 'Punjab'),
(1048, 'Maur', 'Punjab'),
(1049, 'Moga', 'Punjab'),
(1050, 'Mohali', 'Punjab'),
(1051, 'Morinda', 'Punjab'),
(1052, 'Mukerian', 'Punjab'),
(1053, 'Muktsar', 'Punjab'),
(1054, 'Nabha', 'Punjab'),
(1055, 'Nakodar', 'Punjab'),
(1056, 'Nangal', 'Punjab'),
(1057, 'Nawanshahr', 'Punjab'),
(1058, 'Pathankot', 'Punjab'),
(1059, 'Patiala', 'Punjab'),
(1060, 'Patran', 'Punjab'),
(1061, 'Patti', 'Punjab'),
(1062, 'Phagwara', 'Punjab'),
(1063, 'Phillaur', 'Punjab'),
(1064, 'Qadian', 'Punjab'),
(1065, 'Raikot', 'Punjab'),
(1066, 'Rajpura', 'Punjab'),
(1067, 'Rampura Phul', 'Punjab'),
(1068, 'Rupnagar', 'Punjab'),
(1069, 'Samana', 'Punjab'),
(1070, 'Sangrur', 'Punjab'),
(1071, 'Sirhind Fatehgarh Sahib', 'Punjab'),
(1072, 'Sujanpur', 'Punjab'),
(1073, 'Sunam', 'Punjab'),
(1074, 'Talwara', 'Punjab'),
(1075, 'Tarn Taran', 'Punjab'),
(1076, 'Urmar Tanda', 'Punjab'),
(1077, 'Zira', 'Punjab'),
(1078, 'Zirakpur', 'Punjab'),
(1079, 'Bali', 'Rajasthan'),
(1080, 'Banswara', 'Rajastan'),
(1081, 'Ajmer', 'Rajasthan'),
(1082, 'Alwar', 'Rajasthan'),
(1083, 'Bandikui', 'Rajasthan'),
(1084, 'Baran', 'Rajasthan'),
(1085, 'Barmer', 'Rajasthan'),
(1086, 'Bikaner', 'Rajasthan'),
(1087, 'Fatehpur', 'Rajasthan'),
(1088, 'Jaipur', 'Rajasthan'),
(1089, 'Jaisalmer', 'Rajasthan'),
(1090, 'Jodhpur', 'Rajasthan'),
(1091, 'Kota', 'Rajasthan'),
(1092, 'Lachhmangarh', 'Rajasthan'),
(1093, 'Ladnu', 'Rajasthan'),
(1094, 'Lakheri', 'Rajasthan'),
(1095, 'Lalsot', 'Rajasthan'),
(1096, 'Losal', 'Rajasthan'),
(1097, 'Makrana', 'Rajasthan'),
(1098, 'Malpura', 'Rajasthan'),
(1099, 'Mandalgarh', 'Rajasthan'),
(1100, 'Mandawa', 'Rajasthan'),
(1101, 'Mangrol', 'Rajasthan'),
(1102, 'Merta City', 'Rajasthan'),
(1103, 'Mount Abu', 'Rajasthan'),
(1104, 'Nadbai', 'Rajasthan'),
(1105, 'Nagar', 'Rajasthan'),
(1106, 'Nagaur', 'Rajasthan'),
(1107, 'Nargund', 'Rajasthan'),
(1108, 'Nasirabad', 'Rajasthan'),
(1109, 'Nathdwara', 'Rajasthan'),
(1110, 'Navalgund', 'Rajasthan'),
(1111, 'Nawalgarh', 'Rajasthan'),
(1112, 'Neem-Ka-Thana', 'Rajasthan'),
(1113, 'Nelamangala', 'Rajasthan'),
(1114, 'Nimbahera', 'Rajasthan'),
(1115, 'Nipani', 'Rajasthan'),
(1116, 'Niwai', 'Rajasthan'),
(1117, 'Nohar', 'Rajasthan'),
(1118, 'Nokha', 'Rajasthan'),
(1119, 'Pali', 'Rajasthan'),
(1120, 'Phalodi', 'Rajasthan'),
(1121, 'Phulera', 'Rajasthan'),
(1122, 'Pilani', 'Rajasthan'),
(1123, 'Pilibanga', 'Rajasthan'),
(1124, 'Pindwara', 'Rajasthan'),
(1125, 'Pipar City', 'Rajasthan'),
(1126, 'Prantij', 'Rajasthan'),
(1127, 'Pratapgarh', 'Rajasthan'),
(1128, 'Raisinghnagar', 'Rajasthan'),
(1129, 'Rajakhera', 'Rajasthan'),
(1130, 'Rajaldesar', 'Rajasthan'),
(1131, 'Rajgarh (Alwar)', 'Rajasthan'),
(1132, 'Rajgarh (Churu', 'Rajasthan'),
(1133, 'Rajsamand', 'Rajasthan'),
(1134, 'Ramganj Mandi', 'Rajasthan'),
(1135, 'Ramngarh', 'Rajasthan'),
(1136, 'Ratangarh', 'Rajasthan'),
(1137, 'Rawatbhata', 'Rajasthan'),
(1138, 'Rawatsar', 'Rajasthan'),
(1139, 'Reengus', 'Rajasthan'),
(1140, 'Sadri', 'Rajasthan'),
(1141, 'Sadulshahar', 'Rajasthan'),
(1142, 'Sagwara', 'Rajasthan'),
(1143, 'Sambhar', 'Rajasthan'),
(1144, 'Sanchore', 'Rajasthan'),
(1145, 'Sangaria', 'Rajasthan'),
(1146, 'Sardarshahar', 'Rajasthan'),
(1147, 'Sawai Madhopur', 'Rajasthan'),
(1148, 'Shahpura', 'Rajasthan'),
(1149, 'Shahpura', 'Rajasthan'),
(1150, 'Sheoganj', 'Rajasthan'),
(1151, 'Sikar', 'Rajasthan'),
(1152, 'Sirohi', 'Rajasthan'),
(1153, 'Sojat', 'Rajasthan'),
(1154, 'Sri Madhopur', 'Rajasthan'),
(1155, 'Sujangarh', 'Rajasthan'),
(1156, 'Sumerpur', 'Rajasthan'),
(1157, 'Suratgarh', 'Rajasthan'),
(1158, 'Taranagar', 'Rajasthan'),
(1159, 'Todabhim', 'Rajasthan'),
(1160, 'Todaraisingh', 'Rajasthan'),
(1161, 'Tonk', 'Rajasthan'),
(1162, 'Udaipur', 'Rajasthan'),
(1163, 'Udaipurwati', 'Rajasthan'),
(1164, 'Vijainagar', 'Rajasthan'),
(1165, 'Gangtok', 'Sikkim'),
(1166, 'Calcutta', 'West Bengal'),
(1167, 'Arakkonam', 'Tamil Nadu'),
(1168, 'Arcot', 'Tamil Nadu'),
(1169, 'Aruppukkottai', 'Tamil Nadu'),
(1170, 'Bhavani', 'Tamil Nadu'),
(1171, 'Chengalpattu', 'Tamil Nadu'),
(1172, 'Chennai', 'Tamil Nadu'),
(1173, 'Chinna salem', 'Tamil nadu'),
(1174, 'Coimbatore', 'Tamil Nadu'),
(1175, 'Coonoor', 'Tamil Nadu'),
(1176, 'Cuddalore', 'Tamil Nadu'),
(1177, 'Dharmapuri', 'Tamil Nadu'),
(1178, 'Dindigul', 'Tamil Nadu'),
(1179, 'Erode', 'Tamil Nadu'),
(1180, 'Gudalur', 'Tamil Nadu'),
(1181, 'Gudalur', 'Tamil Nadu'),
(1182, 'Gudalur', 'Tamil Nadu'),
(1183, 'Kanchipuram', 'Tamil Nadu'),
(1184, 'Karaikudi', 'Tamil Nadu'),
(1185, 'Karungal', 'Tamil Nadu'),
(1186, 'Karur', 'Tamil Nadu'),
(1187, 'Kollankodu', 'Tamil Nadu'),
(1188, 'Lalgudi', 'Tamil Nadu'),
(1189, 'Madurai', 'Tamil Nadu'),
(1190, 'Nagapattinam', 'Tamil Nadu'),
(1191, 'Nagercoil', 'Tamil Nadu'),
(1192, 'Namagiripettai', 'Tamil Nadu'),
(1193, 'Namakkal', 'Tamil Nadu'),
(1194, 'Nandivaram-Guduvancheri', 'Tamil Nadu'),
(1195, 'Nanjikottai', 'Tamil Nadu'),
(1196, 'Natham', 'Tamil Nadu'),
(1197, 'Nellikuppam', 'Tamil Nadu'),
(1198, 'Neyveli', 'Tamil Nadu'),
(1199, 'O\' Valley', 'Tamil Nadu'),
(1200, 'Oddanchatram', 'Tamil Nadu'),
(1201, 'P.N.Patti', 'Tamil Nadu'),
(1202, 'Pacode', 'Tamil Nadu'),
(1203, 'Padmanabhapuram', 'Tamil Nadu'),
(1204, 'Palani', 'Tamil Nadu'),
(1205, 'Palladam', 'Tamil Nadu'),
(1206, 'Pallapatti', 'Tamil Nadu'),
(1207, 'Pallikonda', 'Tamil Nadu'),
(1208, 'Panagudi', 'Tamil Nadu'),
(1209, 'Panruti', 'Tamil Nadu'),
(1210, 'Paramakudi', 'Tamil Nadu'),
(1211, 'Parangipettai', 'Tamil Nadu'),
(1212, 'Pattukkottai', 'Tamil Nadu'),
(1213, 'Perambalur', 'Tamil Nadu'),
(1214, 'Peravurani', 'Tamil Nadu'),
(1215, 'Periyakulam', 'Tamil Nadu'),
(1216, 'Periyasemur', 'Tamil Nadu'),
(1217, 'Pernampattu', 'Tamil Nadu'),
(1218, 'Pollachi', 'Tamil Nadu'),
(1219, 'Polur', 'Tamil Nadu'),
(1220, 'Ponneri', 'Tamil Nadu'),
(1221, 'Pudukkottai', 'Tamil Nadu'),
(1222, 'Pudupattinam', 'Tamil Nadu'),
(1223, 'Puliyankudi', 'Tamil Nadu'),
(1224, 'Punjaipugalur', 'Tamil Nadu'),
(1225, 'Rajapalayam', 'Tamil Nadu'),
(1226, 'Ramanathapuram', 'Tamil Nadu'),
(1227, 'Rameshwaram', 'Tamil Nadu'),
(1228, 'Rasipuram', 'Tamil Nadu'),
(1229, 'Salem', 'Tamil Nadu'),
(1230, 'Sankarankoil', 'Tamil Nadu'),
(1231, 'Sankari', 'Tamil Nadu'),
(1232, 'Sathyamangalam', 'Tamil Nadu'),
(1233, 'Sattur', 'Tamil Nadu'),
(1234, 'Shenkottai', 'Tamil Nadu'),
(1235, 'Sholavandan', 'Tamil Nadu'),
(1236, 'Sholingur', 'Tamil Nadu'),
(1237, 'Sirkali', 'Tamil Nadu'),
(1238, 'Sivaganga', 'Tamil Nadu'),
(1239, 'Sivagiri', 'Tamil Nadu'),
(1240, 'Sivakasi', 'Tamil Nadu'),
(1241, 'Srivilliputhur', 'Tamil Nadu'),
(1242, 'Surandai', 'Tamil Nadu'),
(1243, 'Suriyampalayam', 'Tamil Nadu'),
(1244, 'Tenkasi', 'Tamil Nadu'),
(1245, 'Thammampatti', 'Tamil Nadu'),
(1246, 'Thanjavur', 'Tamil Nadu'),
(1247, 'Tharamangalam', 'Tamil Nadu'),
(1248, 'Tharangambadi', 'Tamil Nadu'),
(1249, 'Theni Allinagaram', 'Tamil Nadu'),
(1250, 'Thirumangalam', 'Tamil Nadu'),
(1251, 'Thirunindravur', 'Tamil Nadu'),
(1252, 'Thiruparappu', 'Tamil Nadu'),
(1253, 'Thirupuvanam', 'Tamil Nadu'),
(1254, 'Thiruthuraipoondi', 'Tamil Nadu'),
(1255, 'Thiruvallur', 'Tamil Nadu'),
(1256, 'Thiruvarur', 'Tamil Nadu'),
(1257, 'Thoothukudi', 'Tamil Nadu'),
(1258, 'Thuraiyur', 'Tamil Nadu'),
(1259, 'Tindivanam', 'Tamil Nadu'),
(1260, 'Tiruchendur', 'Tamil Nadu'),
(1261, 'Tiruchengode', 'Tamil Nadu'),
(1262, 'Tiruchirappalli', 'Tamil Nadu'),
(1263, 'Tirukalukundram', 'Tamil Nadu'),
(1264, 'Tirukkoyilur', 'Tamil Nadu'),
(1265, 'Tirunelveli', 'Tamil Nadu'),
(1266, 'Tirupathur', 'Tamil Nadu'),
(1267, 'Tirupathur', 'Tamil Nadu'),
(1268, 'Tiruppur', 'Tamil Nadu'),
(1269, 'Tiruttani', 'Tamil Nadu'),
(1270, 'Tiruvannamalai', 'Tamil Nadu'),
(1271, 'Tiruvethipuram', 'Tamil Nadu'),
(1272, 'Tittakudi', 'Tamil Nadu'),
(1273, 'Udhagamandalam', 'Tamil Nadu'),
(1274, 'Udumalaipettai', 'Tamil Nadu'),
(1275, 'Unnamalaikadai', 'Tamil Nadu'),
(1276, 'Usilampatti', 'Tamil Nadu'),
(1277, 'Uthamapalayam', 'Tamil Nadu'),
(1278, 'Uthiramerur', 'Tamil Nadu'),
(1279, 'Vadakkuvalliyur', 'Tamil Nadu'),
(1280, 'Vadalur', 'Tamil Nadu'),
(1281, 'Vadipatti', 'Tamil Nadu'),
(1282, 'Valparai', 'Tamil Nadu'),
(1283, 'Vandavasi', 'Tamil Nadu'),
(1284, 'Vaniyambadi', 'Tamil Nadu'),
(1285, 'Vedaranyam', 'Tamil Nadu'),
(1286, 'Vellakoil', 'Tamil Nadu'),
(1287, 'Vellore', 'Tamil Nadu'),
(1288, 'Vikramasingapuram', 'Tamil Nadu'),
(1289, 'Viluppuram', 'Tamil Nadu'),
(1290, 'Virudhachalam', 'Tamil Nadu'),
(1291, 'Virudhunagar', 'Tamil Nadu'),
(1292, 'Viswanatham', 'Tamil Nadu'),
(1293, 'Agartala', 'Tripura'),
(1294, 'Badharghat', 'Tripura'),
(1295, 'Dharmanagar', 'Tripura'),
(1296, 'Indranagar', 'Tripura'),
(1297, 'Jogendranagar', 'Tripura'),
(1298, 'Kailasahar', 'Tripura'),
(1299, 'Khowai', 'Tripura'),
(1300, 'Pratapgarh', 'Tripura'),
(1301, 'Udaipur', 'Tripura'),
(1302, 'Achhnera', 'Uttar Pradesh'),
(1303, 'Adari', 'Uttar Pradesh'),
(1304, 'Agra', 'Uttar Pradesh'),
(1305, 'Aligarh', 'Uttar Pradesh'),
(1306, 'Allahabad', 'Uttar Pradesh'),
(1307, 'Amroha', 'Uttar Pradesh'),
(1308, 'Azamgarh', 'Uttar Pradesh'),
(1309, 'Bahraich', 'Uttar Pradesh'),
(1310, 'Ballia', 'Uttar Pradesh'),
(1311, 'Balrampur', 'Uttar Pradesh'),
(1312, 'Banda', 'Uttar Pradesh'),
(1313, 'Bareilly', 'Uttar Pradesh'),
(1314, 'Chandausi', 'Uttar Pradesh'),
(1315, 'Dadri', 'Uttar Pradesh'),
(1316, 'Deoria', 'Uttar Pradesh'),
(1317, 'Etawah', 'Uttar Pradesh'),
(1318, 'Fatehabad', 'Uttar Pradesh'),
(1319, 'Fatehpur', 'Uttar Pradesh'),
(1320, 'Fatehpur', 'Uttar Pradesh'),
(1321, 'Greater Noida', 'Uttar Pradesh'),
(1322, 'Hamirpur', 'Uttar Pradesh'),
(1323, 'Hardoi', 'Uttar Pradesh'),
(1324, 'Jajmau', 'Uttar Pradesh'),
(1325, 'Jaunpur', 'Uttar Pradesh'),
(1326, 'Jhansi', 'Uttar Pradesh'),
(1327, 'Kalpi', 'Uttar Pradesh'),
(1328, 'Kanpur', 'Uttar Pradesh'),
(1329, 'Kota', 'Uttar Pradesh'),
(1330, 'Laharpur', 'Uttar Pradesh'),
(1331, 'Lakhimpur', 'Uttar Pradesh'),
(1332, 'Lal Gopalganj Nindaura', 'Uttar Pradesh'),
(1333, 'Lalganj', 'Uttar Pradesh'),
(1334, 'Lalitpur', 'Uttar Pradesh'),
(1335, 'Lar', 'Uttar Pradesh'),
(1336, 'Loni', 'Uttar Pradesh'),
(1337, 'Lucknow', 'Uttar Pradesh'),
(1338, 'Mathura', 'Uttar Pradesh'),
(1339, 'Meerut', 'Uttar Pradesh'),
(1340, 'Modinagar', 'Uttar Pradesh'),
(1341, 'Muradnagar', 'Uttar Pradesh'),
(1342, 'Nagina', 'Uttar Pradesh'),
(1343, 'Najibabad', 'Uttar Pradesh'),
(1344, 'Nakur', 'Uttar Pradesh'),
(1345, 'Nanpara', 'Uttar Pradesh'),
(1346, 'Naraura', 'Uttar Pradesh'),
(1347, 'Naugawan Sadat', 'Uttar Pradesh'),
(1348, 'Nautanwa', 'Uttar Pradesh'),
(1349, 'Nawabganj', 'Uttar Pradesh'),
(1350, 'Nehtaur', 'Uttar Pradesh'),
(1351, 'NOIDA', 'Uttar Pradesh'),
(1352, 'Noorpur', 'Uttar Pradesh'),
(1353, 'Obra', 'Uttar Pradesh'),
(1354, 'Orai', 'Uttar Pradesh'),
(1355, 'Padrauna', 'Uttar Pradesh'),
(1356, 'Palia Kalan', 'Uttar Pradesh'),
(1357, 'Parasi', 'Uttar Pradesh'),
(1358, 'Phulpur', 'Uttar Pradesh'),
(1359, 'Pihani', 'Uttar Pradesh'),
(1360, 'Pilibhit', 'Uttar Pradesh'),
(1361, 'Pilkhuwa', 'Uttar Pradesh'),
(1362, 'Powayan', 'Uttar Pradesh'),
(1363, 'Pukhrayan', 'Uttar Pradesh'),
(1364, 'Puranpur', 'Uttar Pradesh'),
(1365, 'Purquazi', 'Uttar Pradesh'),
(1366, 'Purwa', 'Uttar Pradesh'),
(1367, 'Rae Bareli', 'Uttar Pradesh'),
(1368, 'Rampur', 'Uttar Pradesh'),
(1369, 'Rampur Maniharan', 'Uttar Pradesh'),
(1370, 'Rasra', 'Uttar Pradesh'),
(1371, 'Rath', 'Uttar Pradesh'),
(1372, 'Renukoot', 'Uttar Pradesh'),
(1373, 'Reoti', 'Uttar Pradesh'),
(1374, 'Robertsganj', 'Uttar Pradesh'),
(1375, 'Rudauli', 'Uttar Pradesh'),
(1376, 'Rudrapur', 'Uttar Pradesh'),
(1377, 'Sadabad', 'Uttar Pradesh'),
(1378, 'Safipur', 'Uttar Pradesh'),
(1379, 'Saharanpur', 'Uttar Pradesh'),
(1380, 'Sahaspur', 'Uttar Pradesh'),
(1381, 'Sahaswan', 'Uttar Pradesh'),
(1382, 'Sahawar', 'Uttar Pradesh'),
(1383, 'Sahjanwa', 'Uttar Pradesh'),
(1384, 'Saidpur', ' Ghazipur'),
(1385, 'Sambhal', 'Uttar Pradesh'),
(1386, 'Samdhan', 'Uttar Pradesh'),
(1387, 'Samthar', 'Uttar Pradesh'),
(1388, 'Sandi', 'Uttar Pradesh'),
(1389, 'Sandila', 'Uttar Pradesh'),
(1390, 'Sardhana', 'Uttar Pradesh'),
(1391, 'Seohara', 'Uttar Pradesh'),
(1392, 'Shahabad', ' Hardoi'),
(1393, 'Shahabad', ' Rampur'),
(1394, 'Shahganj', 'Uttar Pradesh'),
(1395, 'Shahjahanpur', 'Uttar Pradesh'),
(1396, 'Shamli', 'Uttar Pradesh'),
(1397, 'Shamsabad', ' Agra'),
(1398, 'Shamsabad', ' Farrukhabad'),
(1399, 'Sherkot', 'Uttar Pradesh'),
(1400, 'Shikarpur', ' Bulandshahr'),
(1401, 'Shikohabad', 'Uttar Pradesh'),
(1402, 'Shishgarh', 'Uttar Pradesh'),
(1403, 'Siana', 'Uttar Pradesh'),
(1404, 'Sikanderpur', 'Uttar Pradesh'),
(1405, 'Sikandra Rao', 'Uttar Pradesh'),
(1406, 'Sikandrabad', 'Uttar Pradesh'),
(1407, 'Sirsaganj', 'Uttar Pradesh'),
(1408, 'Sirsi', 'Uttar Pradesh'),
(1409, 'Sitapur', 'Uttar Pradesh'),
(1410, 'Soron', 'Uttar Pradesh'),
(1411, 'Suar', 'Uttar Pradesh'),
(1412, 'Sultanpur', 'Uttar Pradesh'),
(1413, 'Sumerpur', 'Uttar Pradesh'),
(1414, 'Tanda', 'Uttar Pradesh'),
(1415, 'Tanda', 'Uttar Pradesh'),
(1416, 'Tetri Bazar', 'Uttar Pradesh'),
(1417, 'Thakurdwara', 'Uttar Pradesh'),
(1418, 'Thana Bhawan', 'Uttar Pradesh'),
(1419, 'Tilhar', 'Uttar Pradesh'),
(1420, 'Tirwaganj', 'Uttar Pradesh'),
(1421, 'Tulsipur', 'Uttar Pradesh'),
(1422, 'Tundla', 'Uttar Pradesh'),
(1423, 'Unnao', 'Uttar Pradesh'),
(1424, 'Utraula', 'Uttar Pradesh'),
(1425, 'Varanasi', 'Uttar Pradesh'),
(1426, 'Vrindavan', 'Uttar Pradesh'),
(1427, 'Warhapur', 'Uttar Pradesh'),
(1428, 'Zaidpur', 'Uttar Pradesh'),
(1429, 'Zamania', 'Uttar Pradesh'),
(1430, 'Almora', 'Uttarakhand'),
(1431, 'Bazpur', 'Uttarakhand'),
(1432, 'Chamba', 'Uttarakhand'),
(1433, 'Dehradun', 'Uttarakhand'),
(1434, 'Haldwani', 'Uttarakhand'),
(1435, 'Haridwar', 'Uttarakhand'),
(1436, 'Jaspur', 'Uttarakhand'),
(1437, 'Kashipur', 'Uttarakhand'),
(1438, 'kichha', 'Uttarakhand'),
(1439, 'Kotdwara', 'Uttarakhand'),
(1440, 'Manglaur', 'Uttarakhand'),
(1441, 'Mussoorie', 'Uttarakhand'),
(1442, 'Nagla', 'Uttarakhand'),
(1443, 'Nainital', 'Uttarakhand'),
(1444, 'Pauri', 'Uttarakhand'),
(1445, 'Pithoragarh', 'Uttarakhand'),
(1446, 'Ramnagar', 'Uttarakhand'),
(1447, 'Rishikesh', 'Uttarakhand'),
(1448, 'Roorkee', 'Uttarakhand'),
(1449, 'Rudrapur', 'Uttarakhand'),
(1450, 'Sitarganj', 'Uttarakhand'),
(1451, 'Tehri', 'Uttarakhand'),
(1452, 'Muzaffarnagar', 'Uttar Pradesh'),
(1453, 'Adra', ' Purulia'),
(1454, 'Alipurduar', 'West Bengal'),
(1455, 'Arambagh', 'West Bengal'),
(1456, 'Asansol', 'West Bengal'),
(1457, 'Baharampur', 'West Bengal'),
(1458, 'Bally', 'West Bengal'),
(1459, 'Balurghat', 'West Bengal'),
(1460, 'Bankura', 'West Bengal'),
(1461, 'Barakar', 'West Bengal'),
(1462, 'Barasat', 'West Bengal'),
(1463, 'Bardhaman', 'West Bengal'),
(1464, 'Bidhan Nagar', 'West Bengal'),
(1465, 'Chinsura', 'West Bengal'),
(1466, 'Contai', 'West Bengal'),
(1467, 'Cooch Behar', 'West Bengal'),
(1468, 'Darjeeling', 'West Bengal'),
(1469, 'Durgapur', 'West Bengal'),
(1470, 'Haldia', 'West Bengal'),
(1471, 'Howrah', 'West Bengal'),
(1472, 'Islampur', 'West Bengal'),
(1473, 'Jhargram', 'West Bengal'),
(1474, 'Kharagpur', 'West Bengal'),
(1475, 'Kolkata', 'West Bengal'),
(1476, 'Mainaguri', 'West Bengal'),
(1477, 'Mal', 'West Bengal'),
(1478, 'Mathabhanga', 'West Bengal'),
(1479, 'Medinipur', 'West Bengal'),
(1480, 'Memari', 'West Bengal'),
(1481, 'Monoharpur', 'West Bengal'),
(1482, 'Murshidabad', 'West Bengal'),
(1483, 'Nabadwip', 'West Bengal'),
(1484, 'Naihati', 'West Bengal'),
(1485, 'Panchla', 'West Bengal'),
(1486, 'Pandua', 'West Bengal'),
(1487, 'Paschim Punropara', 'West Bengal'),
(1488, 'Purulia', 'West Bengal'),
(1489, 'Raghunathpur', 'West Bengal'),
(1490, 'Raiganj', 'West Bengal'),
(1491, 'Rampurhat', 'West Bengal'),
(1492, 'Ranaghat', 'West Bengal'),
(1493, 'Sainthia', 'West Bengal'),
(1494, 'Santipur', 'West Bengal'),
(1495, 'Siliguri', 'West Bengal'),
(1496, 'Sonamukhi', 'West Bengal'),
(1497, 'Srirampore', 'West Bengal'),
(1498, 'Suri', 'West Bengal'),
(1499, 'Taki', 'West Bengal'),
(1500, 'Tamluk', 'West Bengal'),
(1501, 'Tarakeswar', 'West Bengal'),
(1502, 'Chikmagalur', 'Karnataka'),
(1503, 'Davanagere', 'Karnataka'),
(1504, 'Dharwad', 'Karnataka'),
(1505, 'Gadag', 'Karnataka'),
(1506, 'Chennai', 'Tamil Nadu'),
(1507, 'Coimbatore', 'Tamil Nadu');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` text,
  `subject` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `message`, `subject`, `created_at`) VALUES
(1, 'Animesh Manna', 'animesh@mailinator.com', NULL, 'Due to the widespread use of tables across third-party widgets like calendars and date pickers, we’ve designed our tables to be opt-in. Just add the base class .table to any <table>, then extend with custom styles or our various included modifier classes.', 'How to cancel Order?', '2020-06-16 03:47:01'),
(2, 'Animesh Manna', 'animesh@mailinator.com', NULL, 'Due to the widespread use of tables across third-party widgets like calendars and date pickers, we’ve designed our tables to be opt-in. Just add the base class .table to any <table>, then extend with custom styles or our various included modifier classes.', 'How to cancel Order?', '2020-06-16 03:59:05');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(11) NOT NULL,
  `email_for` varchar(255) DEFAULT NULL COMMENT 'administrator,user',
  `code` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `to_email` varchar(255) DEFAULT NULL,
  `cc_email` text,
  `from_email` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `content` longtext CHARACTER SET utf8,
  `status` int(11) NOT NULL DEFAULT '1',
  `variables` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `email_for`, `code`, `subject`, `to_email`, `cc_email`, `from_email`, `from_name`, `content`, `status`, `variables`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `modified_by`, `deleted_by`) VALUES
(1, 'admins', 'user-otp', 'OTP for CI Demo', NULL, 'symlinktech@gmail.com', 'info@cidemo.com', 'CIdemo.com', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<table style=\"width: 100%; height: 100%; min-height: 100%; border-spacing: 0px;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>\n<table style=\"width: 100%; height: 437px; min-height: 100%; min-width: 300px; max-width: 600px; border-spacing: 0px; background: #ffffff; margin: 60px auto; border-radius: 2px; box-shadow: rgba(0, 0, 0, 0.1) 0px 5px 30px;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr style=\"height: 78px;\">\n<td style=\"height: 78px;\">\n<table style=\"width: 100%; padding: 10px; margin: 0 auto; border-bottom: #ddd solid 1px; background: #fff;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td align=\"center\"><img style=\"width: auto; max-height: 50px;\" src=\"https://cidemo.mdemo.us/uploads/settings/logo/logo.png\" title=\"logo (2).png\" /></td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr style=\"height: 307px;\">\n<td style=\"height: 307px;\">\n<table style=\"width: 100%; font-size: 14px; padding: 20px;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>\n<p style=\"font-weight: bold; font-size: 16px; margin: 0 auto 15px auto; text-align: center;\">Hi, <strong>{USER_NAME}</strong></p>\n<p align=\"center\"></p>\n<p align=\"center\">This is your one time OTP for changing your password: <strong><span style=\"color: #003366;\">{USER_OTP}</span></strong></p>\n<p align=\"center\"><span style=\"color: #ff0000;\">NOTE</span>: It will only valid for 5 minutes&nbsp;</p>\n<p align=\"center\"></p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\n<p></p>\n</td>\n</tr>\n<tr>\n<td style=\"padding: 15px; background: #f5f5f5; color: #000; font-size: 12px; text-align: center;\">If you have any comments or questions, please reach us at <a href=\"mailto:cidemo@gmail.com\">:cidemo@gmail.com</a>&nbsp;.</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td>\n<table style=\"width: 100%; padding: 15px; margin: 0 auto; background: #eee; text-align: center;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"color: #666;\"><a style=\"font-style: italic; color: #666; text-decoration: none;\" href=\"https://seebidgo.com\" target=\"_blank\" rel=\"noopener\">Renwash &copy; Copyright 2019 | All Rights &amp; Reserved</a></td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</body>\n</html>', 1, 'USER_NAME,USER_OTP', '2019-08-16 00:00:00', '2019-08-16 15:30:02', NULL, NULL, 1, NULL),
(2, 'admins', 'frontend-contact-us', 'Contact us', NULL, 'symlinktech@gmail.com', 'info@mdemo.us', 'Carwash', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<table style=\"width: 100%; height: 100%; min-height: 100%; border-spacing: 0px;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>\n<table style=\"width: 100%; height: 437px; min-height: 100%; min-width: 300px; max-width: 600px; border-spacing: 0px; background: #ffffff; margin: 60px auto; border-radius: 2px; box-shadow: rgba(0, 0, 0, 0.1) 0px 5px 30px;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr style=\"height: 78px;\">\n<td style=\"height: 78px;\">\n<table style=\"width: 100%; padding: 10px; margin: 0 auto; border-bottom: #ddd solid 1px; background: #fff;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td align=\"center\"><img src=\"https://i.pinimg.com/736x/6e/11/f7/6e11f74757c178a5d93a86f957c3bae9.jpg\" title=\"logo (2).png\" height=\"57\" style=\"width: 86px; max-height: 50px;\" /></td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr style=\"height: 307px;\">\n<td style=\"height: 307px;\">\n<table style=\"width: 100%; font-size: 14px; padding: 20px;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>\n<p>Hi <span>Admin</span></p>\n<p align=\"left\">A new user contact to your website.See the details below...</p>\n<p align=\"left\"><span style=\"text-align: left;\">Name : {NAME}</span></p>\n<p align=\"left\">Email : {EMAIL}</p>\n<p align=\"left\">Email : {SUBJECT}</p>\n<p align=\"left\">Message:{MESSAGE}</p>\n<p align=\"center\"></p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\n<p></p>\n</td>\n</tr>\n<tr>\n<td style=\"padding: 15px; background: #f5f5f5; color: #000; font-size: 12px; text-align: center;\">If you have any comments or questions, please reach us at <a href=\"mailto:info@mdemo.us\">:info@mdemo.us</a>&nbsp;.</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td>\n<table style=\"width: 100%; padding: 15px; margin: 0 auto; background: #eee; text-align: center;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"color: #666;\"><a style=\"font-style: italic; color: #666; text-decoration: none;\" href=\"https://carwash.mdemo.us/\" target=\"_blank\" rel=\"noopener\">Carwash &copy; Copyright 2020 | All Rights &amp; Reserved</a></td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</body>\n</html>', 1, '{NAME},{EMAIL},{MESSAGE}', NULL, NULL, NULL, NULL, 1, NULL),
(3, 'user', 'frontend-contact-us', 'Contact us', NULL, 'symlinktech@gmail.com', 'info@mdemo.us', 'Carwash', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<table style=\"width: 100%; height: 100%; min-height: 100%; border-spacing: 0px;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>\n<table style=\"width: 100%; height: 437px; min-height: 100%; min-width: 300px; max-width: 600px; border-spacing: 0px; background: #ffffff; margin: 60px auto; border-radius: 2px; box-shadow: rgba(0, 0, 0, 0.1) 0px 5px 30px;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr style=\"height: 78px;\">\n<td style=\"height: 78px;\">\n<table style=\"width: 100%; padding: 10px; margin: 0 auto; border-bottom: #ddd solid 1px; background: #fff;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td align=\"center\"><img src=\"https://i.pinimg.com/736x/6e/11/f7/6e11f74757c178a5d93a86f957c3bae9.jpg\" height=\"57\" style=\"width: 86px; max-height: 50px;\" /></td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr style=\"height: 307px;\">\n<td style=\"height: 307px;\"><span style=\"font-size: 10pt;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span>\n<table style=\"width: 100%; font-size: 14px; padding: 20px;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>\n<p align=\"center\"><span style=\"font-size: 10pt;\"> &nbsp;<strong>Hi, </strong></span><strong><span style=\"font-size: 10pt;\">{USER_NAME}</span></strong> &nbsp;</p>\n<p align=\"center\">Thank you for contact with us</p>\n<p>&nbsp;</p>\n</td>\n</tr>\n<tr>\n<td style=\"padding: 15px; background: #f5f5f5; color: #000; font-size: 12px; text-align: center;\">If you have any comments or questions, please reach us at <a href=\"mailto:info@mdemo.us\">info@mdemo.us</a> .</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td>\n<table style=\"width: 100%; padding: 15px; margin: 0 auto; background: #eee; text-align: center;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"color: #666;\"><a style=\"font-style: italic; color: #666666; text-decoration: none;\" href=\"https://carwash.mdemo.us/\" target=\"_blank\" rel=\"noopener\">Renwash &copy; Copyright 2019 | All Rights &amp; Reserved</a></td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</body>\n</html>', 1, '{USER_NAME}', NULL, NULL, NULL, NULL, 1, NULL),
(4, 'user', 'frontend-appointment', 'Booking Appointment', NULL, 'symlinktech@gmail.com', 'info@mdemo.us', 'Carwash', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<table style=\"width: 100%; height: 100%; min-height: 100%; border-spacing: 0px;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>\n<table style=\"width: 100%; height: 437px; min-height: 100%; min-width: 300px; max-width: 600px; border-spacing: 0px; background: #ffffff; margin: 60px auto; border-radius: 2px; box-shadow: rgba(0, 0, 0, 0.1) 0px 5px 30px;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr style=\"height: 78px;\">\n<td style=\"height: 78px;\">\n<table style=\"width: 100%; padding: 10px; margin: 0 auto; border-bottom: #ddd solid 1px; background: #fff;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td align=\"center\"><img src=\"https://i.pinimg.com/736x/6e/11/f7/6e11f74757c178a5d93a86f957c3bae9.jpg\" height=\"57\" style=\"width: 86px; max-height: 50px;\" /></td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr style=\"height: 307px;\">\n<td style=\"height: 307px;\"><span style=\"font-size: 10pt;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span>\n<table style=\"width: 100%; font-size: 14px; padding: 20px;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>\n<p align=\"center\"><span style=\"font-size: 10pt;\"> &nbsp;<strong>Hi, </strong></span><strong><span style=\"font-size: 10pt;\">{USER_NAME}</span></strong> &nbsp;</p>\n<p align=\"center\">Your appointment has beed booked.</p>\n<p align=\"left\"><strong>View Details</strong></p>\n<p align=\"left\">Phone : {PHONE}</p>\n<p align=\"left\">Car Details : {CAR}</p>\n<p align=\"left\">Address:{ADDRESS}</p>\n</td>\n</tr>\n<tr>\n<td style=\"padding: 15px; background: #f5f5f5; color: #000; font-size: 12px; text-align: center;\">If you have any comments or questions, please reach us at <a href=\"mailto:info@mdemo.us\">info@mdemo.us</a> .</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td>\n<table style=\"width: 100%; padding: 15px; margin: 0 auto; background: #eee; text-align: center;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"color: #666;\"><a style=\"font-style: italic; color: #666666; text-decoration: none;\" href=\"https://carwash.mdemo.us/\" target=\"_blank\" rel=\"noopener\">Renwash &copy; Copyright 2019 | All Rights &amp; Reserved</a></td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</body>\n</html>', 1, '{USER_NAME}', NULL, NULL, NULL, NULL, 1, NULL),
(5, 'admins', 'frontend-appointment', 'Booking Appointment', NULL, 'symlinktech@gmail.com', 'info@mdemo.us', 'Carwash', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<table style=\"width: 100%; height: 100%; min-height: 100%; border-spacing: 0px;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>\n<table style=\"width: 100%; height: 437px; min-height: 100%; min-width: 300px; max-width: 600px; border-spacing: 0px; background: #ffffff; margin: 60px auto; border-radius: 2px; box-shadow: rgba(0, 0, 0, 0.1) 0px 5px 30px;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr style=\"height: 78px;\">\n<td style=\"height: 78px;\">\n<table style=\"width: 100%; padding: 10px; margin: 0 auto; border-bottom: #ddd solid 1px; background: #fff;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td align=\"center\"><img src=\"https://i.pinimg.com/736x/6e/11/f7/6e11f74757c178a5d93a86f957c3bae9.jpg\" title=\"logo (2).png\" height=\"57\" style=\"width: 86px; max-height: 50px;\" /></td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr style=\"height: 307px;\">\n<td style=\"height: 307px;\">\n<table style=\"width: 100%; font-size: 14px; padding: 20px;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>\n<p>Hi <span>Admin</span></p>\n<p align=\"left\">A new user booked to your website.See the details below...</p>\n<p align=\"left\"><span style=\"text-align: left;\">Name : {NAME}</span></p>\n<p align=\"left\">Phone : {PHONE}</p>\n<p align=\"left\">Type : {TYPE}</p>\n<p align=\"left\">Car Details : {CAR}</p>\n<p align=\"left\">Service : {SERVICE}</p>\n<p align=\"left\">Address:{ADDRESS}</p>\n<p align=\"center\"></p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\n<p></p>\n</td>\n</tr>\n<tr>\n<td style=\"padding: 15px; background: #f5f5f5; color: #000; font-size: 12px; text-align: center;\">If you have any comments or questions, please reach us at <a href=\"mailto:info@mdemo.us\">:info@mdemo.us</a>&nbsp;.</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td>\n<table style=\"width: 100%; padding: 15px; margin: 0 auto; background: #eee; text-align: center;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"color: #666;\"><a style=\"font-style: italic; color: #666; text-decoration: none;\" href=\"https://carwash.mdemo.us/\" target=\"_blank\" rel=\"noopener\">Renwash &copy; Copyright 2020 | All Rights &amp; Reserved</a></td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</body>\n</html>', 1, '{NAME},{EMAIL},{PHONE},{CAR},{DATE},{MESSAGE}', NULL, NULL, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `ordering` int(11) DEFAULT NULL,
  `category_id` text,
  `question` longtext CHARACTER SET utf8,
  `answer` longtext CHARACTER SET utf8,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1=>''active'',2=>''inactive''',
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `ordering`, `category_id`, `question`, `answer`, `status`, `created_at`, `modified_at`, `deleted_at`, `created_by`, `modified_by`, `deleted_by`) VALUES
(4, 2, '1', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<h2><span style=\"font-size: 10pt;\">What is Lorem Ipsum?</span></h2>\n</body>\n</html>', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n</body>\n</html>', 1, '2019-08-16 13:53:31', '2019-08-16 15:53:31', NULL, NULL, NULL, NULL),
(5, 1, '6', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<h2><span style=\"font-size: 12pt;\">Why do we use it?</span></h2>\n</body>\n</html>', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>it is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n</body>\n</html>', 1, '2019-08-16 13:54:12', '2019-08-16 15:54:12', NULL, NULL, NULL, NULL),
(6, 3, '1,6', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>who am i ?</p>\n</body>\n</html>', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>don\'t konw?</p>\n</body>\n</html>', 1, '2019-08-19 11:27:28', '2019-08-19 11:28:22', NULL, 1, 12, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `doc` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `name`, `doc`, `status`, `created`) VALUES
(1, 'Application form1', 'uploads/forms/1593154597sample.pdf', 1, '2020-06-26 06:56:37'),
(2, 'Application form 2', 'uploads/forms/1593155023file-sample_100kB.doc', 1, '2020-06-26 07:03:43');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1=>''gallery,2=>video''',
  `post_id` int(11) DEFAULT NULL,
  `post_type` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `original_name` varchar(255) DEFAULT NULL,
  `file_size` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `type`, `post_id`, `post_type`, `image`, `original_name`, `file_size`, `created_at`, `modified_at`, `deleted_at`, `created_by`, `modified_by`, `deleted_by`) VALUES
(5, 2, 14, 'blog', 'https://www.youtube.com/watch?v=pYRhxzcRNvc', 'test99', NULL, '2019-08-19 12:11:11', '2019-08-19 12:13:29', NULL, 1, 12, NULL),
(7, 1, 14, 'blog', '15662175963a5voq1lkgcgok4cc04008g4408kwocw.jpg', '3a5voq1lkgcgok4cc04008g4408kwocw.jpg', '602.73', '2019-08-19 12:26:36', NULL, NULL, NULL, NULL, NULL),
(18, 1, 20, 'blog', '15663876272ney6l6qaz8ko8o8ks0g8kw8s8k4kscs.jpg', '2ney6l6qaz8ko8o8ks0g8kw8s8k4kscs.jpg', '219.75', '2019-08-21 11:40:27', NULL, NULL, 12, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` longtext CHARACTER SET utf8,
  `logo` varchar(255) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '''1''=>''editable'',''2''=>''not editable''',
  `page_type` varchar(255) DEFAULT NULL,
  `is_delete` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `description`, `logo`, `type`, `page_type`, `is_delete`, `created_at`, `modified_at`, `deleted_at`, `created_by`, `modified_by`, `deleted_by`) VALUES
(5, 'home', 'home', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n\n</body>\n</html>', '', 1, 'pages', 1, '2019-08-20 02:55:01', '2021-12-12 14:25:19', NULL, 1, 1, NULL),
(6, 'about us', 'about', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<div class=\"col-md-6 pl-md-5\">\r\n<div class=\"row justify-content-start py-5\">\r\n<div class=\"col-md-12 heading-section ftco-animate\"><span class=\"subheading\">Welcome to Work hars</span>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Welcome to Work hars. Located in the metropolitan city called Kolkata, we offer our services throughout West Bengal. With more than 12 years of experience, our client base is vast and we have been able to retain 99.99% of our customers. Our expert technicians are just a call away. Our professionals ensure the smooth working of the appliances to ensure that you can carry on with your day to day life.<o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\"><o:p>&nbsp;</o:p></span></b></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Our Mission and Vision&nbsp;</span></b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\"><o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\"><o:p>&nbsp;</o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Our mission is to provide our customers with exemplary services in the nick of time.<o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Our vision is to serve the nation and become one of the leading service providers of India.<o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">We are committed to serving you with integrity and reliability.<o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\"><o:p>&nbsp;</o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Here are some of the appliances that we cater to:<o:p></o:p></span></p>\r\n<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"color: #0e101a; margin-bottom: .0001pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Air Conditioner<o:p></o:p></span></li>\r\n<li class=\"MsoNormal\" style=\"color: #0e101a; margin-bottom: .0001pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Microwave oven<o:p></o:p></span></li>\r\n<li class=\"MsoNormal\" style=\"color: #0e101a; margin-bottom: .0001pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Geyser<o:p></o:p></span></li>\r\n<li class=\"MsoNormal\" style=\"color: #0e101a; margin-bottom: .0001pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Washing machine<o:p></o:p></span></li>\r\n<li class=\"MsoNormal\" style=\"color: #0e101a; margin-bottom: .0001pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Refrigerator<o:p></o:p></span></li>\r\n<li class=\"MsoNormal\" style=\"color: #0e101a; margin-bottom: .0001pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Plumbing<o:p></o:p></span></li>\r\n<li class=\"MsoNormal\" style=\"color: #0e101a; margin-bottom: .0001pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Chimney<o:p></o:p></span></li>\r\n<li class=\"MsoNormal\" style=\"color: #0e101a; margin-bottom: .0001pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Water purifier<o:p></o:p></span></li>\r\n</ul>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\"><o:p>&nbsp;</o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Request a no-obligation quote now.<o:p></o:p></span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</body>\r\n<script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script><script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script><script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script><script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script><script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script><script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script><script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script><script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script><script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script><script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script></html>', 'uploads/pages/1644229919IMG_20220207_160023.png', 1, NULL, 1, '2020-06-15 10:25:11', '2022-02-07 10:31:59', NULL, 1, 1, NULL),
(7, 'contact', 'contact', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p class=\"MsoNormal\">Welcome to Work hars Private Limited. Our mission is to deliver home-services in a simple, organized and exemplary way</p>\n</body>\n<script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script><script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script></html>', '', 1, NULL, 1, '2020-06-15 11:24:20', '2022-01-06 15:00:42', NULL, 1, 1, NULL),
(8, 'Services', 'services', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\"></p>\n<p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\"></p>\n</body>\n<script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script></html>', '', 1, NULL, 1, '2020-06-25 11:09:29', '2022-01-01 16:22:02', NULL, 1, 1, NULL),
(9, 'Terms & Conditions', 'terms-and-conditions', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<section class=\"ftco-section\">\n<div class=\"container\">\n<div class=\"row justify-content-center pb-5 mb-3\">\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Terms and Conditions&nbsp;</span></b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\"><o:p></o:p></span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Welcome to Work hars. You&rsquo;re accessing and using our company&rsquo;s services that is bound by the terms and conditions. You need to abide by the terms to avail of our professional services. Supplemental terms may apply to certain services and will get disclosed in connection with the applicable services. Supplemental terms will prevail in the event of a conflict over these terms only for applicable services. We might restrict the access or usage of our services immediately without any notice if we suspect that:<o:p></o:p></span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\n<ul style=\"margin-top: 0in;\" type=\"disc\">\n<li class=\"MsoNormal\" style=\"color: #0e101a; margin-bottom: .0001pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">You have or likely breached the Terms and Conditions<o:p></o:p></span></li>\n<li class=\"MsoNormal\" style=\"color: #0e101a; margin-bottom: .0001pt; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">You didn&rsquo;t or likely won&rsquo;t qualify under any applicable law or policies and standards of our company and its affiliates for accessing and using our services.<o:p></o:p></span></li>\n</ul>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">On a 30 day notice, we can terminate the services for any legitimate business, regulatory or legal reasons.<o:p></o:p></span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">If these are a breach of community guidelines, then the services will get immediately terminated without any apparent reasons.<o:p></o:p></span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Our company might amend the policies and terms and conditions with Community Guidelines from time to time. We will provide at least 30 days written notice of any material change of the policies that might affect your rights under the Terms. The amendments will be effective only after we post the policies and terms on the applicable services. You will get continued access to our services after the posting and even after the expiry of the notice period and it would constitute your consent, which will be bound by the amended Terms.<o:p></o:p></span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></b></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Modifications of Privacy Policy</span></b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\"><o:p></o:p></span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">It is our sole discretion to amend and modify the Terms for complying with the regulatory and legal framework and other legitimate purposes at any given point in time. It is your responsibility to regularly check the Terms and review the changes. If you don&rsquo;t abide by the Terms, then please do not access the platform.<o:p></o:p></span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></b></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Privacy Policy&nbsp;</span></b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\"><o:p></o:p></span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">The policy tells how the data is collected and used. Your use of the website is governed by the policy. We might disclose the information to third parties if there&rsquo;s a complaint, dispute or conflict. Your data might go to law enforcement and govt. agencies and any other investigative agency where it&rsquo;s necessary for investigation purposes.<o:p></o:p></span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></b></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Services</span></b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\"><o:p></o:p></span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Our services are solely for non-commercial use and personal, unless we have a separate agreement with you. We accept the liability of the services subject to the Terms. In compliance with our terms, we grant you a non-exclusive, limited, revocable, non-sublicensable, and non-transferable license. You cannot remove our proprietary notice from any part of the service or license, lease, transfer, reverse engineer, launch programs and conduct surveys hindering our operational work and functionality of the services. You are also forbidden from data mining, using, scraping, or crawling any processes which sends programmed queries. You have no copyright, trademark or patent on the intellectual property, services and materials, process and any technologies.<o:p></o:p></span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></b></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Use of our services</span></b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\"><o:p></o:p></span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">User accounts &ndash; Above 18 years of age, register and be an active user. Account registration requires one to submit personal information like name, address, email, age, phone number, and gender and payment method. The data needs to be accurate, true and updated. Failure to provide accurate data might result in your inability to use the service. You are responsible for all activity in your account and need to maintain the secrecy and security of the username and password. You will possess only one account unless you request in writing for opening other accounts.<o:p></o:p></span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Requirements and conduct &ndash; You cannot transfer your account to another person or any other entity. You need to comply with all applicable laws while using the services. You shall not cause annoyance, nuisance, property damage or any inconvenience to the service provider. You might be asked to provide identification proof before using our services and denial to provide the proof might result in your inability to use our services.<o:p></o:p></span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">No discrimination &ndash; There should be no discrimination based on race, caste, religion, disability, marital status, sexual orientation, age, gender and any characteristics that are protected under the law. Such discrimination might result in limiting your ability for utilizing this platform.<o:p></o:p></span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Text Messaging &ndash; Services might send you text SMS messages as a part of normal business operations. You might opt-out of receiving such messages, but it will impact your access to the services.<o:p></o:p></span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></b></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Disclaimer&nbsp;</span></b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\"><o:p></o:p></span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Limitations are subjected to local consumer law<o:p></o:p></span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Services are provided &lsquo;as in&rsquo; and &lsquo;as available. The company disclaims all warranties, representatives, and express, implied, statutory. There is no guarantee on the quality, suitability, reliability, safety, timeliness, and availability of the services. Risk arriving from any services lies solely with you as permitted under applicable laws and relevant consumer law legislation.<o:p></o:p></span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></b></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Liability limitation&nbsp;</span></b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\"><o:p></o:p></span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">We are not liable for any indirect, special, incidental, exemplary, punitive or consequential damages, which includes lost data, profits, personal injury or property damage resulting from using our services. The company cannot be held liable for reliance or use of the services or inability to access the services. The company is not liable for delay or failure in performance resulting from the company&rsquo;s reasonable control.<o:p></o:p></span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">You can request and reschedule the services, but can&rsquo;t hold the company liable other than what&rsquo;s outlined in these Terms. We maintain a complaints management body that works under the Consumer Law Legislation. Anything contained in these Terms, the company won&rsquo;t be deemed to be held responsible for failures and delays resulting from acts beyond reasonable control like Act of God, acts of war, riots, pandemic, epidemic, fire, typhoons, and earthquakes and so on. The disclaimer does not limit or alter consumer rights as applicable under the consumer Law legislation.<o:p></o:p></span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></b></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Indemnity</span></b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\"><o:p></o:p></span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;You agree to indemnify the company and its affiliates like officers, employees, directors and agents harmless from all claims, losses, expenses and liabilities. Arising from your usage of services and any breach of the Terms. Your liability under such a clause gets appropriately reduced to the extent the company caused and contributed to these losses.<o:p></o:p></span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></b></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Governing law &ndash; Arbitration&nbsp;</span></b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\"><o:p></o:p></span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">For resolving disputes, claim, controversies and any conflict relating to services and Terms, the company has a complaints process that reasonably manages the complaints and refunds. You agree and acknowledge that you will raise the dispute as soon as possible and not later than 48 hours from the time the issue arises. If you fail to raise the dispute within 48 hours, then the company has no obligation to resolve the dispute and it would be under the sole discretion of the company whether or not to attempt for resolving the dispute. The Terms are constructed as per the Law of India. Either party may file an action in the Court to pursue the final arbitration.<o:p></o:p></span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></b></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Grievance Officer:</span></b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\"><o:p></o:p></span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Work hars<o:p></o:p></span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">You will get the notice by the company through electronic email or by written communication sent to your address. You will not transfer or assign the Terms in part or whole without our written approval. If any provision of the Term is deemed as illegal, unenforceable or invalid, then such provision will not be a part of these terms, but the validity, legality and enforceability will remain intact. Nothing in this clause limits consumer rights and is relevant to the Consumer Law Legislation. In these Terms, the words including and include mean &lsquo;included but limited to&rsquo;.<o:p></o:p></span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\n<p>New edits &ndash; plag checkedTerms &amp; Conditions</p>\n</div>\n</div>\n</section>\n</body>\n<script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script><script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script><script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script></html>', '', 1, NULL, 1, '2022-01-02 19:12:23', '2022-01-06 15:37:07', NULL, 1, 1, NULL);
INSERT INTO `pages` (`id`, `title`, `slug`, `description`, `logo`, `type`, `page_type`, `is_delete`, `created_at`, `modified_at`, `deleted_at`, `created_by`, `modified_by`, `deleted_by`) VALUES
(10, 'Privacy Policy', 'privacy-policy', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<section class=\"ftco-section\">\r\n<div class=\"container\">\r\n<div class=\"row justify-content-center pb-5 mb-3\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Privacy Policy</span></b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\"><o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Work hars and its affiliates are engaged in the business of providing customers with specific services by experienced professionals. The policy outlines all practices regarding storage, usage, collection disclosure and processing of personal data that comes with your consent to share with us. When you access, use or interact with our website or our mobile app and avail of any of our services and products your data is automatically derived by us from the respective platforms. We respect your privacy. We are committed to protecting every aspect of your personal data. We have to collect data to provide you with our professional services. Note that unless specifically designed in the privacy policy the capitalized terms might have similar meanings ascribed in our Terms and Conditions page. Please read the Terms and Policy in consonance to one another.<o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">By using the services you thereby confirm that you have read all the policies and give your consent to the processing activities described under the privacy policy.<o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></b></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Background key information&nbsp;</span></b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\"><o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">How the policy is applicable<o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">This policy applies to individuals who accesses or uses the services. To avoid doubt, a reference to you is made as an end-user for using the platform.<o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">By using our platform you consent to the storage, usage, collection and disclosure of your personal information as collected and described by us under the privacy policy statement.<o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Reviewing and updates<o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">The policy will be regularly reviewed and updated. Your personal data should be accurate and current. During your relationship with us, if there are any changes in the personal information you provided, then let us know.<o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Third-party services<o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">The platform might have third party links like plugins, applications, and websites and so on. Clicking on the links might enable third parties to collect your data. We don&rsquo;t control or endorse or are responsible for their privacy statements.<o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></b></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Personal data we collect</span></b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\"><o:p></o:p></span></p>\r\n<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"color: #0e101a; margin-bottom: .0001pt; line-height: normal; mso-list: l1 level1 lfo1; tab-stops: list .5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Contact details &ndash; Home address, email, and mobile numbers.<o:p></o:p></span></li>\r\n<li class=\"MsoNormal\" style=\"color: #0e101a; margin-bottom: .0001pt; line-height: normal; mso-list: l1 level1 lfo1; tab-stops: list .5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Identity and profile data &ndash; Name, user name, photograph, gender and other identifications.<o:p></o:p></span></li>\r\n<li class=\"MsoNormal\" style=\"color: #0e101a; margin-bottom: .0001pt; line-height: normal; mso-list: l1 level1 lfo1; tab-stops: list .5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Marketing and communications information &ndash; Home address, emails, services requests, offers, feedback, comments, pictures, discussions, chat boxes, responses through surveys and polls, your preferences through communication via third parties and so on. We also collect chat or call records when you communicate with our service professionals.<o:p></o:p></span></li>\r\n<li class=\"MsoNormal\" style=\"color: #0e101a; margin-bottom: .0001pt; line-height: normal; mso-list: l1 level1 lfo1; tab-stops: list .5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Technical data &ndash; IP address, browser type, operating system details, internet service provider, page views, access time, device ID, device type, frequency and activity on our platforms, time stamps, clicks and date, location data and other technologies on the devices that you might use when you access the platform.<o:p></o:p></span></li>\r\n<li class=\"MsoNormal\" style=\"color: #0e101a; margin-bottom: .0001pt; line-height: normal; mso-list: l1 level1 lfo1; tab-stops: list .5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Transaction data &ndash; A limited part of your credit and debit card details to track the transaction provided by payment processors and other UPI ID processing payments.<o:p></o:p></span></li>\r\n<li class=\"MsoNormal\" style=\"color: #0e101a; margin-bottom: .0001pt; line-height: normal; mso-list: l1 level1 lfo1; tab-stops: list .5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Usage data &ndash; Booking history, clicks, user taps, and time spent, user interests, page views and so on.<o:p></o:p></span></li>\r\n</ul>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">We also collect the data to share and use as statistical and demographic information. Aggregated data is derived from your personal details but it&rsquo;s not considered personal data under Indian law as it directly doesn&rsquo;t reveal your identity. We can combine the aggregated data and use it under the privacy policy, keeping your personal information safe and private.<o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></b></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">What if you refuse personal data?</span></b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\"><o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">We need to collect your information by law, under the Terms and Conditions &ndash; like a contract. If you fail to give us the information then we would not be able to provide the services and perform the contract. We might have to cancel or limit your access to our services.<o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></b></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">How is the data collected?</span></b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\"><o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Direct interactions &ndash; By creating an account or a profile. By using our services. Participating in a survey, user poll or entering into a promotional event. By requesting us for our marketing communications to be sent directly to you. By reporting a problem on our platform or giving feedback and contacting us &ndash; we collect your data.<o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Automated interactions &ndash; Every time you visit the platform or access our services, we automatically collect all technical information about the device. Your personal data is collected through cookies, pixel tags, server logs, web beacons and similar technologies.<o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Third-party sources &ndash; From Facebook and advertising networks we collect technical data. Your identity and profile related details is derived from a publically available platform or service professionals. Personal information is derived from affiliate entities.<o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></b></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">How do we use the data?</span></b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\"><o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">We use personal information only if the law enforces us to do so. Commonly we use the data to enable you to use our services or when it&rsquo;s needed for legal obligation. The personal data is used for:<o:p></o:p></span></p>\r\n<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"color: #0e101a; margin-bottom: .0001pt; line-height: normal; mso-list: l0 level1 lfo2; tab-stops: list .5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Verification of user identity to create a profile with us on the platform<o:p></o:p></span></li>\r\n<li class=\"MsoNormal\" style=\"color: #0e101a; margin-bottom: .0001pt; line-height: normal; mso-list: l0 level1 lfo2; tab-stops: list .5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">For providing services, monitoring trends and personalizing your experience<o:p></o:p></span></li>\r\n<li class=\"MsoNormal\" style=\"color: #0e101a; margin-bottom: .0001pt; line-height: normal; mso-list: l0 level1 lfo2; tab-stops: list .5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">To improve service functionality based on your feedback<o:p></o:p></span></li>\r\n<li class=\"MsoNormal\" style=\"color: #0e101a; margin-bottom: .0001pt; line-height: normal; mso-list: l0 level1 lfo2; tab-stops: list .5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">To improve customer services, tracking transactions and processing payments.<o:p></o:p></span></li>\r\n<li class=\"MsoNormal\" style=\"color: #0e101a; margin-bottom: .0001pt; line-height: normal; mso-list: l0 level1 lfo2; tab-stops: list .5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">To send periodic notifications to notify you about updates and changes in our services.<o:p></o:p></span></li>\r\n<li class=\"MsoNormal\" style=\"color: #0e101a; margin-bottom: .0001pt; line-height: normal; mso-list: l0 level1 lfo2; tab-stops: list .5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">To market and advertise our services to you<o:p></o:p></span></li>\r\n<li class=\"MsoNormal\" style=\"color: #0e101a; margin-bottom: .0001pt; line-height: normal; mso-list: l0 level1 lfo2; tab-stops: list .5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">To comply with legal obligations for administering and protecting the business.<o:p></o:p></span></li>\r\n<li class=\"MsoNormal\" style=\"color: #0e101a; margin-bottom: .0001pt; line-height: normal; mso-list: l0 level1 lfo2; tab-stops: list .5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">To improvise the business and also delivery models.<o:p></o:p></span></li>\r\n<li class=\"MsoNormal\" style=\"color: #0e101a; margin-bottom: .0001pt; line-height: normal; mso-list: l0 level1 lfo2; tab-stops: list .5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">For performing obligations arising from the arrangement we have entered with you<o:p></o:p></span></li>\r\n<li class=\"MsoNormal\" style=\"color: #0e101a; margin-bottom: .0001pt; line-height: normal; mso-list: l0 level1 lfo2; tab-stops: list .5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">To enforce the terms and conditions<o:p></o:p></span></li>\r\n<li class=\"MsoNormal\" style=\"color: #0e101a; margin-bottom: .0001pt; line-height: normal; mso-list: l0 level1 lfo2; tab-stops: list .5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">For responding to court orders, defending ourselves against legal claims and establishing or exercising legal rights.<o:p></o:p></span></li>\r\n</ul>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">You agree and acknowledge that your data may be shared without your consent when it&rsquo;s required by law, court or govt. agencies. Such disclosure of the information is reasonably necessary and made in complete good faith to comply with the applicable laws and regulations.<o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></b></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Cookies</span></b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\"><o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">These are small files that recognize the browser to capture and retain certain information. Our cookies distinguish you from other users to understand and save your preferences for future visits by compiling aggregate data about site traffic and interaction for offering you a seamless experience. We might also contact the third party for a better understanding of the preferences of our site visitors. Our service providers aren&rsquo;t permitted to use any information that&rsquo;s collected except for helping us improve the business. Additionally, you might encounter cookies from third parties on our website. We don&rsquo;t control cookies from third parties. If you send us email correspondence or third parties sends us correspondence regarding your activities or postings on our platform, then we will collect the information within a file specifically for you.<o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></b></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Personal data disclosures&nbsp;</span></b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\"><o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Your personal data would be divulged only for legal obligation.<o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Service professionals, internal third parties, trusted third parties and our associates&rsquo; will have access to the information. Advertising networks, analytic service providers, marketing partners, transaction processes and other regulated bodies will have access to the information as required by the law.<o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">We don&rsquo;t allow third parties to use your personal data for their own purpose, but permit the process of the data for specified purposes under the instructions.<o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></b></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Your rights in regards to personal data&nbsp;</span></b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\"><o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Your personal data should be true, updated and accurate. While using our services we provide you with the ability for correcting inaccurate information subjected to legal necessities. Via email, we might send you marketing content. You might opt out from receiving such promotional content by using the opt-out instructions on the mail. To process your request it will take up to 10 days. However, we might send you emails about the user account or any service you might have received or requested from us.<o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></b></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Data Security&nbsp;</span></b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\"><o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">We implement privacy-protective features like encryption, password protection, masking calls and physical security for the protection of personal data from disclosure and following security standards applicable by law. If you have a password to access our services, then you are responsible for maintaining password secrecy and ensuring confidentiality. We are not responsible for unauthorized use of your information or any stolen, compromised or lost passwords or any activity of your user account due to unauthorized disclosure of the password. Promptly notify us of any suspicious activity to initiate a password change.<o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></b></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Data retention&nbsp;</span></b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\"><o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">You agree and acknowledge that your personal data will be retained by us to fulfil our stated purposes for some time even after account termination and in compliance with legal rights and obligations. We might also aggregate your personal data for research purposes and in this regard, we might use the information indefinitely without any further notice from your end.<o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></b></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Business Transitions</span></b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\"><o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">If we go through a business transition like a merger your personal information might be among the assets that would get transferred.<o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></b></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">User-generated content&nbsp;</span></b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\"><o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">We want you to post comments and feedback on our platform. You need to agree with all applicable laws with the content uploaded for acknowledging that you are solely responsible for any information posted by you.<o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">The privacy policy will be updated by us as and when necessary.<o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></b></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">Grievances</span></b><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\"><o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a;\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0e101a; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">If you have any further questions on our privacy policy and how we handle the data or any other queries, feedback, then reach out to us.&nbsp;</span></p>\r\n</div>\r\n</div>\r\n</section>\r\n</body>\r\n<script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script><script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script></html>', '', 1, NULL, 1, '2022-01-06 22:02:23', '2022-02-07 17:37:53', NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_type` varchar(255) DEFAULT NULL COMMENT 'blog,article,forum',
  `ordering` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `alias` text,
  `description` text NOT NULL,
  `short_description` longtext,
  `category` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `featured` int(11) DEFAULT '2',
  `logo` varchar(100) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `modified_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `user_id`, `post_type`, `ordering`, `title`, `alias`, `description`, `short_description`, `category`, `created_date`, `featured`, `logo`, `active`, `modified_at`, `deleted_at`, `created_by`, `modified_by`, `deleted_by`) VALUES
(20, 1, 'blog', 1, 'MY blogs', 'my-blogs', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>&nbsp;is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n</body>\n</html>', 'orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', '1', '2019-08-20 05:04:54', 1, 'blog_791566277494.png', 1, '2019-08-20 05:07:51', NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` int(11) NOT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `service_type` int(11) DEFAULT NULL,
  `product_type` int(11) DEFAULT NULL,
  `warrenty` varchar(255) DEFAULT NULL,
  `dop` varchar(255) DEFAULT NULL,
  `alt_phone` varchar(255) DEFAULT NULL,
  `door_no` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `dist` varchar(255) DEFAULT NULL,
  `area` text,
  `city` varchar(255) DEFAULT NULL,
  `railway` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `landmark` text,
  `state` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `car` text,
  `address` text,
  `otp` varchar(255) DEFAULT NULL,
  `otp_verified` tinyint(4) NOT NULL DEFAULT '2',
  `status` tinyint(4) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `ref`, `service_id`, `service_type`, `product_type`, `warrenty`, `dop`, `alt_phone`, `door_no`, `street`, `dist`, `area`, `city`, `railway`, `pincode`, `landmark`, `state`, `name`, `email`, `phone`, `type`, `car`, `address`, `otp`, `otp_verified`, `status`, `created`) VALUES
(18, 'REF7331220211212114244', 1, 0, 9, '5 Year', '2021-10-12 12:00:00', '07797581551', 'Arambagh', 'Arambagh', 'Arambagh dist', 'Arambagh, West Bengal, India', 'Calcutta', 'Arambagh station', '712602', 'Arambagh lands', 'West Bengal', 'Soumya Ghosh', 'soumyasrighosh1993@gmail.com', '07797581551', 1, NULL, NULL, NULL, 2, 1, '2021-12-12 11:42:44'),
(19, 'REF5634420211212114430', 1, 0, 9, '5 Year', '2021-10-12 12:00:00', '07797581551', '21', 'Arambagh strret', 'Arambagh dist', 'Arambagh, West Bengal, India, kolkata,west bengal', 'Calcutta', 'Arambagh', '712602', 'Arambagh lands', 'West Bengal', 'Soumya Ghosh', 'soumyasrighosh1993@gmail.com', '07797581551', 1, NULL, NULL, NULL, 2, 1, '2021-12-12 11:44:30'),
(20, 'REF3522820220101100632', 1, 0, 9, 'No', '2022-01-01 12:00:00', '', 'A k roy ', 'Kolkata', 'North24 Parganas', 'Kolkatsa', 'Barasat', 'Barasat', '700126', 'Doltala', 'West Bengal', 'Abc', 'nurbiswas11@gmail.com', '7001080834', 1, NULL, NULL, NULL, 2, 1, '2022-01-01 10:06:32'),
(21, 'REF1756020220211071842', 22, 21, 17, '2', '2022-02-22 12:00:00', '9876543210', '2', 'test, test', 'test', 'tets', 'Chinsura', 'test', 'test', 'test', 'West Bengal', 'test test', 'test@gmail.com', '9876543210', 1, NULL, NULL, NULL, 2, 1, '2022-02-11 07:18:42'),
(22, 'REF8875820220211072100', 22, 20, 11, '2', '2022-02-15 12:00:00', '9876543210', '2', 'test, test', 'test', 'test', 'Barakar', 'test', '123213', 'test', 'West Bengal', 'test test', 'test123@gmail.com', '9876543210', 1, NULL, NULL, NULL, 2, 1, '2022-02-11 07:21:00'),
(23, 'REF3255920220211075550', 21, 15, 6, 'no', '2022-02-01 12:00:00', '1', '1222', 'scw', 'west bengal', 'dwqd', 'Kharagpur', 'dw', '743222', 'dw', 'West Bengal', 'bjhhs', 'workharsad2022@gmail.com', '1', 1, NULL, NULL, NULL, 2, 1, '2022-02-11 07:55:50');

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `id` int(11) NOT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `tags` text,
  `description` text,
  `author` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seo`
--

INSERT INTO `seo` (`id`, `seo_title`, `tags`, `description`, `author`, `type`, `type_id`, `created_at`, `modified_at`, `deleted_at`, `created_by`, `modified_by`, `deleted_by`) VALUES
(1, 'Test', 'Test', '', 'Test', 'categories', 1, '2019-08-14 11:35:01', NULL, NULL, NULL, NULL, NULL),
(2, 'tets', 'fv', 'fgbff', 'fv', 'pages', 1, '2019-08-19 11:50:55', '2019-08-19 11:51:25', NULL, 12, 1, NULL),
(3, 'test', 'test', 'fdv', 'test', 'pages', 5, '2019-08-20 07:27:49', '2019-08-21 05:44:07', NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `ordering` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) DEFAULT NULL,
  `short_description` mediumtext,
  `status` enum('1','2','3') DEFAULT '1',
  `type` enum('Product','Service') NOT NULL DEFAULT 'Product',
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `ordering`, `name`, `category_id`, `price`, `user_image`, `short_description`, `status`, `type`, `created_by`, `modified_by`, `deleted_by`, `created_at`, `modified_at`, `deleted_at`) VALUES
(3, NULL, 'Top Load', 6, '1999', 'uploads/services/1637500194hand.png', '', '1', 'Product', 1, 1, NULL, '2020-06-25 14:58:39', '2021-12-12 03:49:17', NULL),
(7, NULL, 'Front Load', 6, NULL, '', '', '1', 'Product', 1, NULL, NULL, '2021-12-12 03:49:36', NULL, NULL),
(8, NULL, 'Micro Model/ Solo Model	', 1, NULL, '', '', '1', 'Product', 1, 1, NULL, '2021-12-12 03:49:51', '2021-12-12 04:29:41', NULL),
(4, 3, 'Others', 21, '2000', 'uploads/services/1637500155wrench.png', '', '1', 'Product', 1, 1, NULL, '2020-06-25 14:58:57', '2022-01-16 09:17:49', NULL),
(9, NULL, 'Grill Model', 1, NULL, '', '', '1', 'Product', 1, 1, NULL, '2021-12-12 03:50:06', '2021-12-12 04:30:06', NULL),
(10, NULL, 'Convection Model	', 1, NULL, '', '', '1', 'Product', 1, 1, NULL, '2021-12-12 03:50:17', '2021-12-12 04:30:32', NULL),
(5, 2, 'Window', 21, '4000', 'uploads/services/1637500121repairflat.png', '', '1', 'Product', 1, 1, NULL, '2020-06-25 14:59:11', '2022-01-16 09:17:47', NULL),
(11, 1, 'Single Door', 22, NULL, '', '', '1', 'Product', 1, 1, NULL, '2021-12-12 03:50:33', '2022-01-16 09:15:57', NULL),
(12, 2, 'Double Door', 22, NULL, '', '', '1', 'Product', 1, 1, NULL, '2021-12-12 03:50:43', '2022-01-16 09:16:09', NULL),
(6, 1, 'Split', 21, '3000', 'uploads/services/1637500082repair.png', '', '1', 'Product', 1, 1, NULL, '2020-06-25 14:59:25', '2022-01-16 09:17:44', NULL),
(13, 3, 'Triple Door', 22, NULL, '', '', '1', 'Product', 1, NULL, NULL, '2021-12-12 03:51:22', '2022-01-16 09:16:12', NULL),
(14, 5, 'Others', 22, NULL, '', '', '1', 'Product', 1, NULL, NULL, '2021-12-12 03:51:44', '2022-01-16 09:16:26', NULL),
(15, NULL, 'Service & Cleaning', 21, NULL, '', 'dsfcs', '1', 'Service', 1, 1, NULL, '2022-01-01 23:36:22', '2022-01-02 05:07:56', NULL),
(16, NULL, 'Semi Automatic', 6, NULL, '', '', '1', 'Product', 1, NULL, NULL, '2022-01-02 05:04:59', NULL, NULL),
(17, 4, 'side by side', 22, NULL, '', '', '1', 'Product', 1, NULL, NULL, '2022-01-02 05:14:26', '2022-01-16 09:16:22', NULL),
(18, NULL, 'Repairing & Parts Replacement', 21, NULL, '', '', '1', 'Service', 1, NULL, NULL, '2022-01-02 06:32:59', NULL, NULL),
(19, NULL, 'Installation & Dismantling', 21, NULL, '', '', '1', 'Service', 1, NULL, NULL, '2022-01-02 06:34:54', NULL, NULL),
(20, NULL, 'Service & Cleaning', 22, NULL, '', '', '1', 'Service', 1, NULL, NULL, '2022-01-02 06:42:05', NULL, NULL),
(21, NULL, 'Repair & Parts replacement', 22, NULL, '', '', '1', 'Service', 1, NULL, NULL, '2022-01-02 06:42:38', NULL, NULL),
(22, NULL, 'Service & Cleaning', 6, NULL, '', '', '1', 'Service', 1, NULL, NULL, '2022-01-02 06:43:11', NULL, NULL),
(23, NULL, 'Full Drum Cleaning', 6, NULL, '', '', '1', 'Service', 1, NULL, NULL, '2022-01-02 06:43:46', NULL, NULL),
(24, NULL, 'Repairing & Parts Replacement', 6, NULL, '', '', '1', 'Service', 1, NULL, NULL, '2022-01-02 06:46:22', NULL, NULL),
(25, NULL, 'Installation & Dismantling', 6, NULL, '', '', '1', 'Service', 1, NULL, NULL, '2022-01-02 06:47:05', NULL, NULL),
(26, NULL, 'Service & Cleaning', 1, NULL, '', '', '1', 'Service', 1, NULL, NULL, '2022-01-02 07:12:00', NULL, NULL),
(27, NULL, 'Repairing & Parts Replacement', 1, NULL, '', '', '1', 'Service', 1, NULL, NULL, '2022-01-02 07:13:25', NULL, NULL),
(28, NULL, 'Service & Cleaning', 23, NULL, '', '', '1', 'Service', 1, NULL, NULL, '2022-01-02 07:13:54', NULL, NULL),
(29, NULL, 'Repairing & Parts Replacement', 23, NULL, '', '', '1', 'Service', 1, NULL, NULL, '2022-01-02 07:14:24', NULL, NULL),
(30, NULL, 'InstallationDismantling', 23, NULL, '', '', '1', 'Service', 1, NULL, NULL, '2022-01-02 07:15:02', NULL, NULL),
(31, NULL, 'Service & Cleaning', 24, NULL, '', '', '1', 'Service', 1, NULL, NULL, '2022-01-02 07:15:40', NULL, NULL),
(32, NULL, 'Repairing & Parts Replacement', 24, NULL, '', '', '1', 'Service', 1, NULL, NULL, '2022-01-02 07:16:11', NULL, NULL),
(33, NULL, 'Installation & Dismantling', 24, NULL, '', '', '1', 'Service', 1, NULL, NULL, '2022-01-02 07:16:41', NULL, NULL),
(34, NULL, 'Filter Change', 24, NULL, '', '', '1', 'Service', 1, NULL, NULL, '2022-01-02 07:16:59', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `setting_key` varchar(100) NOT NULL,
  `setting_value` longtext,
  `usertype` varchar(100) NOT NULL COMMENT 'menu type',
  `modified_at` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `setting_key`, `setting_value`, `usertype`, `modified_at`, `modified_by`) VALUES
(2, 'menu', 'a:1:{i:0;a:5:{s:4:\"type\";s:4:\"page\";s:2:\"id\";s:1:\"1\";s:5:\"title\";s:4:\"Home\";s:4:\"href\";s:0:\"\";s:5:\"class\";s:0:\"\";}}', 'header', '2019-08-21 05:38:34', 1),
(3, 'menu', NULL, 'footer', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_setting`
--

CREATE TABLE `site_setting` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `career_email` varchar(255) DEFAULT NULL,
  `business_email` varchar(255) DEFAULT NULL,
  `facebook_link` text,
  `twitter_link` text,
  `instagram_link` text,
  `youtube_link` text,
  `behance_link` text,
  `copyright` varchar(255) DEFAULT NULL,
  `address` text,
  `description` longtext,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_setting`
--

INSERT INTO `site_setting` (`id`, `title`, `logo`, `contact_email`, `phone`, `career_email`, `business_email`, `facebook_link`, `twitter_link`, `instagram_link`, `youtube_link`, `behance_link`, `copyright`, `address`, `description`, `modified_at`, `modified_by`) VALUES
(1, 'Workhars', 'uploads/settings/logo/logo.jpeg', 'workhars7@gmail.com', '18001231700', 'info@workhars.com', 'workhars7@gmail.com', 'http://facebook.com', 'http://twitter.com', 'http://instagram.com', 'http://youtube.com', 'http://behance.net', 'Copyright © 2021 Workhars', 'Ashoknagar, N.H.-35 PIN- 743222', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Workhars has the professionalism to take good care of your home appliances that make your life happy, luxurious and comfortable. It has the best experienced mechanics to deal with all kinds of problems you may encounter while using these home appliance devices. What sollution do you need, we provide same day service for your improvement.</p>\r\n</body>\r\n<script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script><script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script><script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script><script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script><script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script><script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script><script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script></html>', '2022-01-08 13:05:20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) DEFAULT NULL,
  `short_description` mediumtext,
  `description` longtext,
  `status` enum('1','2','3') DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `location`, `user_image`, `short_description`, `description`, `status`, `created_by`, `modified_by`, `deleted_by`, `created_at`, `modified_at`, `deleted_at`) VALUES
(1, 'Abhishek Roy', 'India', 'uploads/testimonials/1595842260default_profile.png', 'Amazing car wash and detailing provider. My car looks absolutely new after I have done ceramic coating from their shop. All the car lovers should come to this place and try their ceramic coating service at a very low cost', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',\'sans-serif\'; color: #7c8595; background: white;\">Very good service. Reliable and honest person<o:p></o:p></span></p>\n</body>\n<script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script></html>', '1', 1, 1, NULL, '2019-10-31 09:35:45', '2022-01-01 09:53:12', NULL),
(5, 'Kuntal Pal', 'India', 'uploads/testimonials/1595842348default_profile.png', 'I am impressed with the way they clean AC. They have left no space to make me happy and satisfied', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>I am impressed with the way they clean AC. They have left no space to make me happy and satisfied. I would love to come back here again.</p>\n<p></p>\n<p></p>\n</body>\n<script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script></html>', '1', 1, 1, NULL, '2020-07-27 11:32:28', '2022-01-01 09:51:25', NULL),
(3, 'Akash Basu', 'India', 'uploads/testimonials/1595842091default_profile.png', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>&nbsp;They have never failed to make me happy with their service and behaviour. Would love to rate this place 5/5 star.</p>\n</body>\n<script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script></html>', '1', 1, 1, NULL, '2019-10-31 09:35:45', '2022-01-01 09:52:33', NULL),
(4, 'Manindar Bhatia', 'India', 'uploads/testimonials/1592223534businessman-character-avatar-isolated_24877-60111.jpg', '', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>I am a regular customer at Work hars and I am amazed by their service, that too at a very reasonable cost. I have suggested all my friends and relatives to visit their out late and would love to come back here again.</p>\n</body>\n<script>\'undefined\'=== typeof _trfq || (window._trfq = []);\'undefined\'=== typeof _trfd && (window._trfd=[]),_trfd.push({\'tccl.baseHost\':\'secureserver.net\'}),_trfd.push({\'ap\':\'cpsh-oh\'},{\'server\':\'sg2plzcpnl487155\'},{\'id\':\'8491493\'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src=\'https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js\'></script></html>', '1', 1, 1, NULL, '2020-06-06 15:25:41', '2022-01-01 09:52:01', NULL),
(6, 'Bappa Kundu', 'Kolkata', '', '', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',\'sans-serif\'; color: #7c8595; background: white;\">This is my first time experience with work hars. Nice person Excellent Professional.<o:p></o:p></span></p>\n</body>\n</html>', '1', 1, NULL, NULL, '2022-01-01 09:53:47', NULL, NULL),
(7, 'Prasanta Kumar Bhowmick', 'Hooghly', '', '', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',\'sans-serif\'; color: #7c8595; background: white;\">Fully satisfied. Very good service.<o:p></o:p></span></p>\n</body>\n</html>', '1', 1, NULL, NULL, '2022-01-01 09:54:21', NULL, NULL),
(8, 'Saurav Paul', 'Howrah', '', '', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',\'sans-serif\'; color: #7c8595; background: white;\">Technicians are very professional and have used all safety things like mask, sanitizer, Gloves etc.<o:p></o:p></span></p>\n</body>\n</html>', '1', 1, NULL, NULL, '2022-01-01 09:54:50', NULL, NULL),
(9, 'Somen Roy', 'Nadia', '', '', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',\'sans-serif\'; color: #7c8595; background: white;\">Really happy with the service.<o:p></o:p></span></p>\n</body>\n</html>', '1', 1, NULL, NULL, '2022-01-01 09:55:12', NULL, NULL),
(15, 'Ashik Ahmad', 'kolkata Rajarhat', 'uploads/testimonials/1595842260default_profile.png', NULL, 'They are working at very low price and we are very happy to give 90 days warranty.', '1', NULL, NULL, NULL, '2022-02-11 23:25:05', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `usertype` varchar(30) NOT NULL,
  `demo_admin` int(11) NOT NULL DEFAULT '0' COMMENT '1=>demo,0=>main',
  `name` varchar(255) DEFAULT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `socialnetwork` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '1',
  `created_date` datetime NOT NULL,
  `activation_code` varchar(255) NOT NULL,
  `profile` varchar(100) NOT NULL,
  `role_manage` text NOT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `otp_time` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `usertype`, `demo_admin`, `name`, `firstname`, `lastname`, `email`, `socialnetwork`, `password`, `activated`, `created_date`, `activation_code`, `profile`, `role_manage`, `otp`, `otp_time`, `created_by`, `modified_by`, `deleted_by`, `modified_at`, `deleted_at`) VALUES
(1, 'admins', 0, 'Admin M', 'Admin', 'M', 'admin@repair.com', '[]', 'e10adc3949ba59abbe56e057f20f883e', 1, '2019-06-06 00:00:00', '', 'uploads/user/avatars/1592194613businessman-character-avatar-isolated_24877-60111.jpg', '[\"all-admins\",\"all-users\",\"all-categories\",\"all-subcategories\",\"all-blogs\",\"seo\",\"banners\",\"all-pages\",\"all-faqs\",\"gallery\",\"video-url\",\"settings\",\"admins\",\"add-admin\",\"edit-admin\",\"delete-admin\",\"change-status-admin\",\"users\",\"add-user\",\"edit-user\",\"delete-user\",\"change-status-user\",\"categories\",\"add-category\",\"edit-category\",\"delete-category\",\"change-status-category\",\"change-popular-category\",\"subcategories\",\"add-subcategory\",\"edit-subcategory\",\"delete-subcategory\",\"change-status-subcategory\",\"blogs\",\"add-blog\",\"edit-blog\",\"delete-blog\",\"change-status-blog\",\"change-featured-blog\",\"pages\",\"add-page\",\"edit-page\",\"delete-page\",\"faqs\",\"add-faq\",\"edit-faq\",\"delete-faq\",\"change-status-faq\",\"menu-settings\",\"emails\",\"edit-email\",\"site-settings\",\"dashboard\",\"all-quotes\",\"quotes\",\"all-testimonials\",\"testimonials\",\"add-testimonial\",\"edit-testimonial\",\"delete-testimonial\",\"change-status-testimonial\",\"banners\",\"all-banners\",\"add-banner\",\"edit-banner\",\"delete-banner\",\"change-status-banner\",\"all-services\",\"services\",\"add-service\",\"edit-service\",\"delete-service\",\"change-status-service\",\"all-forms\",\"forms\",\"add-form\",\"edit-form\",\"delete-form\",\"change-status-form\"]', NULL, NULL, 0, 1, 0, '2021-12-13 03:59:34', NULL),
(11, 'user', 0, 'Test User', 'Test', 'User', 'test@gmail.com', '[]', '96e79218965eb72c92a549dd5a330112', 1, '2019-08-14 11:29:44', '', 'uploads/user/avatars/1565782219Freezer-Breakfast-BurritosIMG_9431-220x330.jpg', '', NULL, NULL, 0, 0, 0, NULL, NULL),
(13, 'user', 0, 'Animesh  Manna', 'Animesh ', 'Manna', 'animeshmanna148@gmail.com', '[]', 'e10adc3949ba59abbe56e057f20f883e', 1, '2019-08-14 12:07:14', '', 'uploads/user/avatars/1565787871BV-Acharya-11.jpg', '', NULL, NULL, 0, 0, 0, NULL, NULL),
(28, 'user', 0, 'Rango o', 'Rango', 'o', 'rango@mailinator.com', '[]', 'e10adc3949ba59abbe56e057f20f883e', 1, '2019-08-20 08:01:34', '', 'uploads/user/avatars/156628992696b4a575ce1033bf93625e1b6846ed31.jpg', '', NULL, NULL, 1, 1, NULL, '2019-10-03 08:46:52', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menues`
--
ALTER TABLE `admin_menues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `popular` (`popular`),
  ADD KEY `activated` (`activated`),
  ADD KEY `rootcategoryid` (`rootcategoryid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_setting`
--
ALTER TABLE `site_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_menues`
--
ALTER TABLE `admin_menues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1624;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `site_setting`
--
ALTER TABLE `site_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
