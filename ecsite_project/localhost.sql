-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:8889
-- 生成日時: 2024 年 3 月 04 日 01:45
-- サーバのバージョン： 5.7.39
-- PHP のバージョン: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `py`
--
CREATE DATABASE IF NOT EXISTS `py` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `py`;

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` int(8) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `username` varchar(256) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `username`, `createdAt`, `updateAt`) VALUES
(16, 'sample@mail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 'sample', '2024-01-17 00:46:51', '2024-01-17 00:46:51');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- データベース: `sample`
--
CREATE DATABASE IF NOT EXISTS `sample` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `sample`;

-- --------------------------------------------------------

--
-- テーブルの構造 `accounts_user`
--

CREATE TABLE `accounts_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `birthday` date DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `self_introduction` varchar(1000) DEFAULT NULL,
  `job` varchar(50) DEFAULT NULL,
  `profile_picture` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `contract_property_id` bigint(20) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `contract` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `accounts_user`
--

INSERT INTO `accounts_user` (`id`, `password`, `last_login`, `is_superuser`, `email`, `username`, `birthday`, `nationality`, `self_introduction`, `job`, `profile_picture`, `created_at`, `updated_at`, `is_active`, `is_staff`, `contract_property_id`, `sex`, `contract`) VALUES
(2, 'pbkdf2_sha256$390000$VruTNqQH0TeVISrAQf3pgL$sSb3EROOfISLjKmIZNIgLgVD83kaWg5QO7zTHEw+HM8=', '2024-03-04 01:17:28.486953', 1, 'admin@mail.com', '管理者', NULL, NULL, NULL, NULL, '', '2023-12-01 05:57:02.125627', '2024-03-01 04:29:26.070710', 1, 1, 1, 'N', 'contract/履歴書フォーマット_y1PZimv.xlsx'),
(3, 'pbkdf2_sha256$390000$3G2xhlu9UlKy0jowsDZ0mF$HRd9xpJK4cDnfYLTTwj0HiCn0K8ubIBJ7JwssyBbE6s=', '2024-02-19 00:36:19.884683', 0, 'sample1@mail.com', '宇野ハル', NULL, NULL, NULL, NULL, 'profile/履歴書用_600x450px_Lq4yAtg.jpeg', '2023-12-01 06:48:17.888725', '2024-02-17 12:58:47.525471', 1, 0, 2, 'N', 'contract/履歴書フォーマット_Y2HXvYh.xlsx'),
(13, 'pbkdf2_sha256$390000$cDlSEFN7zruQJI7wLp3td6$AqNc88uWgF0j67eNt7kvM8O7/yw+KPDl9xOL37RIYLA=', '2024-02-21 02:19:44.000000', 0, 'ind@mail.com', 'ラジーブ・パテル', NULL, 'インド', NULL, NULL, 'profile/ind_1.png', '2024-02-21 02:19:44.839319', '2024-02-21 02:28:06.560359', 1, 0, 1, 'M', ''),
(14, 'pbkdf2_sha256$390000$PNa6lgCZPjAUZSN97wVi4G$uFe2jEXFjCYYCFESuFXiACoh4bePYbGS0SQjAyeIk3s=', '2024-02-21 02:23:08.000000', 0, 'ind1@mail.com', 'メーラー・シン', NULL, 'インド', NULL, NULL, 'profile/ind_2.png', '2024-02-21 02:23:08.121493', '2024-02-21 02:28:15.542465', 1, 0, 1, 'M', ''),
(15, 'pbkdf2_sha256$390000$rV1nShlJaFS60fafdNDMit$3lmctx3oexib4wZ9ciBZ5PR5EI4ASMQzeqCx28iYWYE=', '2024-02-21 02:27:03.000000', 0, 'ind3@mail.com', 'サンジャイ・グプタ', NULL, 'インド', NULL, NULL, 'profile/ind_3.png', '2024-02-21 02:27:03.092902', '2024-02-21 02:28:20.006352', 1, 0, 1, 'N', ''),
(16, 'pbkdf2_sha256$390000$CJtAJgqvC1dkiprouCEmPS$quMqXCeP76FwS1mfzPgnaFeu/AKSXF9PQQ182gOTUD4=', '2024-02-21 02:37:04.000000', 0, 'university1@mail.com', '佐藤太郎', NULL, NULL, NULL, NULL, '', '2024-02-21 02:37:04.143982', '2024-02-21 02:39:25.831852', 1, 0, 2, 'N', ''),
(17, 'pbkdf2_sha256$390000$RIe0lZbJkH9Y6watAHa6HP$nYgRfFhzM2awKF+UDO4gtiw8Qr1UE4P/RPgrKPi3mYk=', '2024-02-21 02:37:39.000000', 0, 'university2@mail.com', '鈴木花子', NULL, NULL, NULL, NULL, '', '2024-02-21 02:37:39.102820', '2024-02-21 02:39:19.872754', 1, 0, 2, 'N', ''),
(18, 'pbkdf2_sha256$390000$ujEVCpNufV2cPGfjEm8fpV$HH2Ydi8mwGABvnYqIRnQ/VtGWj2rB5Y24ON/Arl2FmU=', '2024-02-21 02:38:12.000000', 0, 'university3@mail.com', '山田健太', NULL, NULL, NULL, NULL, '', '2024-02-21 02:38:12.120391', '2024-02-21 02:39:35.412780', 1, 0, 2, 'N', '');

-- --------------------------------------------------------

--
-- テーブルの構造 `accounts_user_groups`
--

CREATE TABLE `accounts_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `accounts_user_user_permissions`
--

CREATE TABLE `accounts_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `account_emailaddress`
--

CREATE TABLE `account_emailaddress` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `account_emailconfirmation`
--

CREATE TABLE `account_emailconfirmation` (
  `id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `sent` datetime(6) DEFAULT NULL,
  `key` varchar(64) NOT NULL,
  `email_address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `article`
--

CREATE TABLE `article` (
  `id` bigint(20) NOT NULL,
  `title` longtext NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dashboard_picture` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `article`
--

INSERT INTO `article` (`id`, `title`, `comment`, `dashboard_picture`, `created_at`, `updated_at`, `user_id`) VALUES
(13, '初めまして', 'この度、隣近所にお引っ越ししました。\r\n\r\nこの機会に、近隣の皆様とお会いできることを嬉しく思っております。これからお近くにお住まいの皆様とお付き合いをさせていただき、良好な関係を築いていければと思っております。\r\n\r\n何かご不明点やお困りごとがございましたら、遠慮なく声をおかけください。私たちも地域の一員として、お手伝いができることがあれば喜んでお手伝いさせていただきます。\r\n\r\n今後ともどうぞよろしくお願い申し上げます。', '', '2024-02-23 02:11:33.894153', '2024-02-23 02:11:33.894195', 13),
(14, '初めまして', 'この度、隣近所にお引っ越ししました。\r\n\r\nこの機会に、近隣の皆様とお会いできることを嬉しく思っております。これからお近くにお住まいの皆様とお付き合いをさせていただき、良好な関係を築いていければと思っております。\r\n\r\n何かご不明点やお困りごとがございましたら、遠慮なく声をおかけください。私たちも地域の一員として、お手伝いができることがあれば喜んでお手伝いさせていただきます。\r\n\r\n今後ともどうぞよろしくお願い申し上げます。', '', '2024-02-23 02:11:56.384702', '2024-02-23 02:11:56.384762', 14),
(15, 'お知らせ 燃えるゴミ', '明日は燃えるごみの日です。\r\n\r\nごみは収集日の前日の夕方に指定された場所に出してください。また、分別にご協力いただき、リサイクルの推進にご協力いただければ幸いです。\r\n\r\n何かご不明点がございましたら、管理事務所までお問い合わせください。\r\n\r\n皆様のご協力に感謝いたします。', '', '2024-02-23 02:16:23.179268', '2024-02-23 02:16:23.179304', 2);

-- --------------------------------------------------------

--
-- テーブルの構造 `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add site', 6, 'add_site'),
(22, 'Can change site', 6, 'change_site'),
(23, 'Can delete site', 6, 'delete_site'),
(24, 'Can view site', 6, 'view_site'),
(25, 'Can add email address', 7, 'add_emailaddress'),
(26, 'Can change email address', 7, 'change_emailaddress'),
(27, 'Can delete email address', 7, 'delete_emailaddress'),
(28, 'Can view email address', 7, 'view_emailaddress'),
(29, 'Can add email confirmation', 8, 'add_emailconfirmation'),
(30, 'Can change email confirmation', 8, 'change_emailconfirmation'),
(31, 'Can delete email confirmation', 8, 'delete_emailconfirmation'),
(32, 'Can view email confirmation', 8, 'view_emailconfirmation'),
(33, 'Can add social account', 9, 'add_socialaccount'),
(34, 'Can change social account', 9, 'change_socialaccount'),
(35, 'Can delete social account', 9, 'delete_socialaccount'),
(36, 'Can view social account', 9, 'view_socialaccount'),
(37, 'Can add social application', 10, 'add_socialapp'),
(38, 'Can change social application', 10, 'change_socialapp'),
(39, 'Can delete social application', 10, 'delete_socialapp'),
(40, 'Can view social application', 10, 'view_socialapp'),
(41, 'Can add social application token', 11, 'add_socialtoken'),
(42, 'Can change social application token', 11, 'change_socialtoken'),
(43, 'Can delete social application token', 11, 'delete_socialtoken'),
(44, 'Can view social application token', 11, 'view_socialtoken'),
(45, 'Can add user', 12, 'add_user'),
(46, 'Can change user', 12, 'change_user'),
(47, 'Can delete user', 12, 'delete_user'),
(48, 'Can view user', 12, 'view_user'),
(49, 'Can add property', 13, 'add_property'),
(50, 'Can change property', 13, 'change_property'),
(51, 'Can delete property', 13, 'delete_property'),
(52, 'Can view property', 13, 'view_property'),
(53, 'Can add property detail', 14, 'add_propertydetail'),
(54, 'Can change property detail', 14, 'change_propertydetail'),
(55, 'Can delete property detail', 14, 'delete_propertydetail'),
(56, 'Can view property detail', 14, 'view_propertydetail'),
(57, 'Can add property type', 15, 'add_propertytype'),
(58, 'Can change property type', 15, 'change_propertytype'),
(59, 'Can delete property type', 15, 'delete_propertytype'),
(60, 'Can view property type', 15, 'view_propertytype'),
(61, 'Can add ward', 16, 'add_ward'),
(62, 'Can change ward', 16, 'change_ward'),
(63, 'Can delete ward', 16, 'delete_ward'),
(64, 'Can view ward', 16, 'view_ward'),
(65, 'Can add service', 17, 'add_service'),
(66, 'Can change service', 17, 'change_service'),
(67, 'Can delete service', 17, 'delete_service'),
(68, 'Can view service', 17, 'view_service'),
(69, 'Can add property picture', 18, 'add_propertypicture'),
(70, 'Can change property picture', 18, 'change_propertypicture'),
(71, 'Can delete property picture', 18, 'delete_propertypicture'),
(72, 'Can view property picture', 18, 'view_propertypicture'),
(73, 'Can add other', 19, 'add_other'),
(74, 'Can change other', 19, 'change_other'),
(75, 'Can delete other', 19, 'delete_other'),
(76, 'Can view other', 19, 'view_other'),
(77, 'Can add kitchen', 20, 'add_kitchen'),
(78, 'Can change kitchen', 20, 'change_kitchen'),
(79, 'Can delete kitchen', 20, 'delete_kitchen'),
(80, 'Can view kitchen', 20, 'view_kitchen'),
(81, 'Can add bathroom', 21, 'add_bathroom'),
(82, 'Can change bathroom', 21, 'change_bathroom'),
(83, 'Can delete bathroom', 21, 'delete_bathroom'),
(84, 'Can view bathroom', 21, 'view_bathroom'),
(85, 'Can add review', 22, 'add_review'),
(86, 'Can change review', 22, 'change_review'),
(87, 'Can delete review', 22, 'delete_review'),
(88, 'Can view review', 22, 'view_review'),
(89, 'Can add like', 23, 'add_like'),
(90, 'Can change like', 23, 'change_like'),
(91, 'Can delete like', 23, 'delete_like'),
(92, 'Can view like', 23, 'view_like'),
(93, 'Can add messages', 24, 'add_messages'),
(94, 'Can change messages', 24, 'change_messages'),
(95, 'Can delete messages', 24, 'delete_messages'),
(96, 'Can view messages', 24, 'view_messages'),
(97, 'Can add group', 25, 'add_group'),
(98, 'Can change group', 25, 'change_group'),
(99, 'Can delete group', 25, 'delete_group'),
(100, 'Can view group', 25, 'view_group'),
(101, 'Can add friends', 26, 'add_friends'),
(102, 'Can change friends', 26, 'change_friends'),
(103, 'Can delete friends', 26, 'delete_friends'),
(104, 'Can view friends', 26, 'view_friends'),
(105, 'Can add condition', 27, 'add_condition'),
(106, 'Can change condition', 27, 'change_condition'),
(107, 'Can delete condition', 27, 'delete_condition'),
(108, 'Can view condition', 27, 'view_condition'),
(109, 'Can add article', 28, 'add_article'),
(110, 'Can change article', 28, 'change_article'),
(111, 'Can delete article', 28, 'delete_article'),
(112, 'Can view article', 28, 'view_article');

-- --------------------------------------------------------

--
-- テーブルの構造 `bathroom`
--

CREATE TABLE `bathroom` (
  `id` bigint(20) NOT NULL,
  `bathroom` varchar(100) NOT NULL,
  `property_detail_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `bathroom`
--

INSERT INTO `bathroom` (`id`, `bathroom`, `property_detail_id`) VALUES
(1, 'バス・トイレ別', 2),
(2, '浴室乾燥機', 2),
(3, 'オートバス', 2),
(4, '給湯器', 5),
(5, 'エアコン', 5),
(7, 'オートバス', 6);

-- --------------------------------------------------------

--
-- テーブルの構造 `condition`
--

CREATE TABLE `condition` (
  `id` bigint(20) NOT NULL,
  `condition` varchar(50) NOT NULL,
  `property_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `condition`
--

INSERT INTO `condition` (`id`, `condition`, `property_id`) VALUES
(1, 'インド人限定', 1),
(2, '大学生限定', 2),
(3, 'スパイス検定3級以上保持', 1),
(4, '中国人限定', 11),
(7, '小中高いずれか偏差値70以上の方', 4),
(8, '趣味：釣り', 7),
(9, '楽器を演奏する方', 12),
(10, '年収が安定している方', 13),
(11, '剣道3段以上', 10),
(13, '英語が話せるようになりたい方', 14),
(14, '歌手の方または歌手を目指している方', 15),
(15, '条件なし', 8),
(16, '趣味：読書', 3),
(17, '芸能人の方', 9),
(18, '事故物件に住んだ経験がある方', 6),
(19, 'グローバルに関わりたい方', 16),
(20, '日本人限定', 17),
(21, '？？？', 18),
(22, '湘南出身', 19),
(23, 'たくさんお酒が飲める方', 20),
(24, 'YouTuber', 20),
(25, 'アニメ好き', 21),
(26, '苗字があ行', 22),
(27, '趣味：お菓子作り', 23),
(28, '坊主', 24),
(29, '夜職の方', 25),
(30, 'ワイワイしたい方', 26),
(31, 'スポーツ選手', 27),
(32, '韓国人限定', 28),
(33, '大学生限定', 29),
(34, '湘南生まれ限定', 30),
(35, '留学生限定', 5);

-- --------------------------------------------------------

--
-- テーブルの構造 `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-12-01 06:26:15.474668', '1', 'マンション', 1, '[{\"added\": {}}]', 15, 2),
(2, '2023-12-01 06:33:37.822984', '2', '賃貸', 1, '[{\"added\": {}}]', 15, 2),
(3, '2023-12-01 06:33:58.226731', '2', '一戸建て', 2, '[{\"changed\": {\"fields\": [\"\\u30bf\\u30a4\\u30d7\"]}}]', 15, 2),
(4, '2023-12-01 06:36:20.213457', '1', '千代田', 1, '[{\"added\": {}}]', 16, 2),
(5, '2023-12-01 06:36:35.628534', '2', '中央', 1, '[{\"added\": {}}]', 16, 2),
(6, '2023-12-01 06:36:45.142060', '3', '新宿', 1, '[{\"added\": {}}]', 16, 2),
(7, '2023-12-01 06:37:14.119178', '4', '文京', 1, '[{\"added\": {}}]', 16, 2),
(8, '2023-12-01 06:37:23.905337', '5', '港区', 1, '[{\"added\": {}}]', 16, 2),
(9, '2023-12-01 06:37:31.420429', '4', '文京区', 2, '[{\"changed\": {\"fields\": [\"\\u533a\\u540d\"]}}]', 16, 2),
(10, '2023-12-01 06:37:36.422069', '3', '新宿区', 2, '[{\"changed\": {\"fields\": [\"\\u533a\\u540d\"]}}]', 16, 2),
(11, '2023-12-01 06:37:41.042330', '2', '中央区', 2, '[{\"changed\": {\"fields\": [\"\\u533a\\u540d\"]}}]', 16, 2),
(12, '2023-12-01 06:37:45.115444', '1', '千代田区', 2, '[{\"changed\": {\"fields\": [\"\\u533a\\u540d\"]}}]', 16, 2),
(13, '2023-12-01 06:38:01.023598', '6', '渋谷区', 1, '[{\"added\": {}}]', 16, 2),
(14, '2023-12-01 06:48:05.960609', '2', '寮', 2, '[{\"changed\": {\"fields\": [\"\\u30bf\\u30a4\\u30d7\"]}}]', 15, 2),
(15, '2023-12-01 06:48:14.070231', '3', 'アパート', 1, '[{\"added\": {}}]', 15, 2),
(16, '2023-12-01 07:03:39.929652', '1', 'ＨＦ西新宿レジデンスＷＥＳＴ', 1, '[{\"added\": {}}]', 13, 2),
(17, '2023-12-01 07:07:16.554994', '2', 'パークアクシス日本橋浜町', 1, '[{\"added\": {}}]', 13, 2),
(18, '2023-12-01 07:10:13.215358', '3', 'リューズ・リバー月島', 1, '[{\"added\": {}}]', 13, 2),
(19, '2023-12-01 07:12:58.433607', '4', 'vプライマル月島', 1, '[{\"added\": {}}]', 13, 2),
(20, '2023-12-01 07:18:23.052588', '5', 'さぎり荘', 1, '[{\"added\": {}}]', 13, 2),
(21, '2023-12-01 07:23:04.154994', '6', 'クロユリ荘', 1, '[{\"added\": {}}]', 13, 2),
(22, '2023-12-01 07:25:42.841828', '7', '本駒込ウエスト', 1, '[{\"added\": {}}]', 13, 2),
(23, '2023-12-01 07:26:54.674693', '1', 'ＨＦ西新宿レジデンスＷＥＳＴ', 2, '[{\"changed\": {\"fields\": [\"\\u30c8\\u30c3\\u30d7\\u753b\\u50cf\"]}}]', 13, 2),
(24, '2023-12-01 07:27:21.249743', '2', 'パークアクシス日本橋浜町', 2, '[{\"changed\": {\"fields\": [\"\\u30c8\\u30c3\\u30d7\\u753b\\u50cf\"]}}]', 13, 2),
(25, '2023-12-01 07:27:32.565953', '3', 'リューズ・リバー月島', 2, '[{\"changed\": {\"fields\": [\"\\u30c8\\u30c3\\u30d7\\u753b\\u50cf\"]}}]', 13, 2),
(26, '2023-12-01 07:27:44.107476', '4', 'vプライマル月島', 2, '[{\"changed\": {\"fields\": [\"\\u30c8\\u30c3\\u30d7\\u753b\\u50cf\"]}}]', 13, 2),
(27, '2023-12-01 07:27:55.097718', '5', 'さぎり荘', 2, '[{\"changed\": {\"fields\": [\"\\u30c8\\u30c3\\u30d7\\u753b\\u50cf\"]}}]', 13, 2),
(28, '2023-12-01 07:28:05.935954', '6', 'クロユリ荘', 2, '[{\"changed\": {\"fields\": [\"\\u30c8\\u30c3\\u30d7\\u753b\\u50cf\"]}}]', 13, 2),
(29, '2023-12-01 07:28:17.904493', '7', '本駒込ウエスト', 2, '[{\"changed\": {\"fields\": [\"\\u30c8\\u30c3\\u30d7\\u753b\\u50cf\"]}}]', 13, 2),
(30, '2023-12-01 07:32:12.565537', '8', '笹塚YKハウス', 1, '[{\"added\": {}}]', 13, 2),
(31, '2023-12-01 07:34:40.556539', '9', 'セレニウム神原', 1, '[{\"added\": {}}]', 13, 2),
(32, '2023-12-01 07:36:49.141159', '6', 'シラユリ荘', 2, '[{\"changed\": {\"fields\": [\"\\u7269\\u4ef6\\u540d\", \"\\u30c8\\u30c3\\u30d7\\u753b\\u50cf\"]}}]', 13, 2),
(33, '2023-12-01 07:40:31.772334', '10', 'ツバキ荘', 1, '[{\"added\": {}}]', 13, 2),
(34, '2023-12-01 07:44:02.244309', '11', '北品川グロシレジデンス', 1, '[{\"added\": {}}]', 13, 2),
(35, '2023-12-01 07:47:47.271230', '12', 'アーズネックs千代田淡路町', 1, '[{\"added\": {}}]', 13, 2),
(36, '2023-12-01 08:25:32.125903', '13', 'オレオール代々木', 1, '[{\"added\": {}}]', 13, 2),
(37, '2023-12-01 08:42:41.367993', '14', '増井第一マンションs', 1, '[{\"added\": {}}]', 13, 2),
(38, '2023-12-01 08:58:05.721922', '15', 'ディシアガーデン広尾', 1, '[{\"added\": {}}]', 13, 2),
(39, '2023-12-04 04:12:15.920006', '13', 'オレオール代々木', 2, '[{\"changed\": {\"fields\": [\"\\u4f4f\\u6240\"]}}]', 13, 2),
(40, '2023-12-04 23:50:47.143687', '2', '3LDK', 1, '[{\"added\": {}}]', 14, 2),
(41, '2023-12-04 23:56:35.838889', '2', 'ＨＦ西新宿レジデンスＷＥＳＴ-1305', 2, '[]', 14, 2),
(42, '2023-12-05 00:08:01.039310', '3', 'パークアクシス日本橋浜町-601', 1, '[{\"added\": {}}]', 14, 2),
(43, '2023-12-05 00:09:23.765475', '1', 'Review object (1)', 1, '[{\"added\": {}}]', 22, 2),
(44, '2023-12-05 00:11:20.350294', '2', 'パークアクシス日本橋浜町-2', 1, '[{\"added\": {}}]', 22, 2),
(45, '2023-12-05 00:33:51.152768', '1', 'ＨＦ西新宿レジデンスＷＥＳＴ-1', 1, '[{\"added\": {}}]', 27, 2),
(46, '2023-12-05 00:36:31.079392', '2', 'パークアクシス日本橋浜町-2', 1, '[{\"added\": {}}]', 27, 2),
(47, '2023-12-05 01:03:52.890303', '1', 'ＨＦ西新宿レジデンスＷＥＳＴ', 2, '[{\"changed\": {\"fields\": [\"\\u30c8\\u30c3\\u30d7\\u753b\\u50cf\"]}}]', 13, 2),
(48, '2023-12-05 01:04:15.854257', '2', 'パークアクシス日本橋浜町', 2, '[{\"changed\": {\"fields\": [\"\\u30c8\\u30c3\\u30d7\\u753b\\u50cf\"]}}]', 13, 2),
(49, '2023-12-05 02:25:18.943531', '3', 'ＨＦ西新宿レジデンスＷＥＳＴ-3', 1, '[{\"added\": {}}]', 27, 2),
(50, '2023-12-05 07:48:45.503293', '4', 'パークアクシス日本橋浜町-501', 1, '[{\"added\": {}}]', 14, 2),
(51, '2023-12-05 07:48:56.552641', '4', 'パークアクシス日本橋浜町-501', 2, '[{\"changed\": {\"fields\": [\"\\u7ba1\\u7406\\u8cbb\"]}}]', 14, 2),
(52, '2023-12-05 08:18:39.631288', '2', 'パークアクシス日本橋浜町-1', 1, '[{\"added\": {}}]', 18, 2),
(53, '2023-12-05 14:56:32.639386', '3', 'パークアクシス日本橋浜町-image1', 1, '[{\"added\": {}}]', 18, 2),
(54, '2023-12-05 14:56:54.042765', '4', 'ＨＦ西新宿レジデンスＷＥＳＴ-image1', 1, '[{\"added\": {}}]', 18, 2),
(55, '2023-12-06 01:26:55.038884', '3', 'パークアクシス日本橋浜町-601', 2, '[{\"changed\": {\"fields\": [\"\\u7ba1\\u7406\\u8cbb\"]}}]', 14, 2),
(56, '2024-02-07 04:29:37.259353', '15', 'ディシアガーデン広尾', 2, '[{\"changed\": {\"fields\": [\"\\u96fb\\u8a71\\u756a\\u53f7\"]}}]', 13, 2),
(57, '2024-02-07 04:29:59.117605', '14', '増井第一マンションs', 2, '[{\"changed\": {\"fields\": [\"\\u96fb\\u8a71\\u756a\\u53f7\"]}}]', 13, 2),
(58, '2024-02-07 04:30:12.300427', '13', 'オレオール代々木', 2, '[{\"changed\": {\"fields\": [\"\\u96fb\\u8a71\\u756a\\u53f7\"]}}]', 13, 2),
(59, '2024-02-07 04:30:28.894681', '12', 'アーズネックs千代田淡路町', 2, '[{\"changed\": {\"fields\": [\"\\u96fb\\u8a71\\u756a\\u53f7\"]}}]', 13, 2),
(60, '2024-02-07 04:31:14.912538', '1', 'ＨＦ西新宿レジデンスＷＥＳＴ', 2, '[{\"changed\": {\"fields\": [\"\\u96fb\\u8a71\\u756a\\u53f7\"]}}]', 13, 2),
(61, '2024-02-07 04:49:24.858929', '1', 'カウンターキッチン', 1, '[{\"added\": {}}]', 20, 2),
(62, '2024-02-07 04:49:42.045952', '2', 'システムキッチン', 1, '[{\"added\": {}}]', 20, 2),
(63, '2024-02-07 04:49:56.371427', '3', '３口以上コンロ', 1, '[{\"added\": {}}]', 20, 2),
(64, '2024-02-07 04:50:24.358237', '1', 'バス・トイレ別', 1, '[{\"added\": {}}]', 21, 2),
(65, '2024-02-07 04:50:36.054863', '2', '浴室乾燥機', 1, '[{\"added\": {}}]', 21, 2),
(66, '2024-02-07 04:50:48.176714', '3', 'オートバス', 1, '[{\"added\": {}}]', 21, 2),
(67, '2024-02-07 04:51:32.542200', '1', '宅配ＢＯＸ', 1, '[{\"added\": {}}]', 19, 2),
(68, '2024-02-07 04:51:45.394810', '2', 'バイク置き場', 1, '[{\"added\": {}}]', 19, 2),
(69, '2024-02-07 04:52:03.461587', '1', 'オートロック', 1, '[{\"added\": {}}]', 17, 2),
(70, '2024-02-07 04:52:14.919840', '2', '防犯カメラ', 1, '[{\"added\": {}}]', 17, 2),
(71, '2024-02-07 10:12:29.096285', '2', 'ＨＦ西新宿レジデンスＷＥＳＴ-1305', 2, '[{\"changed\": {\"fields\": [\"Layout img\", \"\\u8cc3\\u6599\"]}}]', 14, 2),
(72, '2024-02-07 10:15:02.737735', '3', 'パークアクシス日本橋浜町-601', 2, '[{\"changed\": {\"fields\": [\"Layout img\"]}}]', 14, 2),
(73, '2024-02-07 10:15:18.264392', '4', 'パークアクシス日本橋浜町-501', 2, '[{\"changed\": {\"fields\": [\"Layout img\"]}}]', 14, 2),
(74, '2024-02-08 06:24:08.571606', '5', 'ＨＦ西新宿レジデンスＷＥＳＴ-205', 1, '[{\"added\": {}}]', 14, 2),
(75, '2024-02-08 06:25:22.852093', '5', 'ＨＦ西新宿レジデンスＷＥＳＴ-205', 2, '[{\"changed\": {\"fields\": [\"\\u5185\\u898b\"]}}]', 14, 2),
(76, '2024-02-08 06:26:39.489736', '5', '北品川グロシレジデンス-205', 2, '[{\"changed\": {\"fields\": [\"\\u7269\\u4ef6\"]}}]', 14, 2),
(77, '2024-02-08 06:27:32.260388', '3', 'エアコン', 1, '[{\"added\": {}}]', 19, 2),
(78, '2024-02-08 06:30:01.147203', '4', 'IHコンロ', 1, '[{\"added\": {}}]', 20, 2),
(79, '2024-02-08 06:32:07.632027', '4', '北品川グロシレジデンス-4', 1, '[{\"added\": {}}]', 27, 2),
(80, '2024-02-08 06:32:51.433626', '4', '給湯器', 1, '[{\"added\": {}}]', 21, 2),
(81, '2024-02-08 06:34:06.783798', '3', '駐車場', 2, '[{\"changed\": {\"fields\": [\"\\u305d\\u306e\\u4ed6\"]}}]', 19, 2),
(82, '2024-02-08 06:34:24.382046', '5', 'エアコン', 1, '[{\"added\": {}}]', 21, 2),
(83, '2024-02-08 06:45:24.551105', '6', 'vプライマル月島-308', 1, '[{\"added\": {}}]', 14, 2),
(84, '2024-02-08 06:46:22.178445', '5', 'コンロ2口', 1, '[{\"added\": {}}]', 20, 2),
(85, '2024-02-08 06:47:54.313232', '5', 'vプライマル月島-5', 1, '[{\"added\": {}}]', 27, 2),
(86, '2024-02-08 06:48:28.031881', '6', 'vプライマル月島-6', 1, '[{\"added\": {}}]', 27, 2),
(87, '2024-02-08 06:49:20.353480', '6', 'エアコン', 1, '[{\"added\": {}}]', 21, 2),
(88, '2024-02-08 06:49:36.257959', '6', 'エアコン', 3, '', 21, 2),
(89, '2024-02-08 06:49:40.673479', '5', 'エアコン', 2, '[]', 21, 2),
(90, '2024-02-08 06:50:18.685315', '7', 'オートバス', 1, '[{\"added\": {}}]', 21, 2),
(91, '2024-02-08 06:53:56.720369', '7', 'vプライマル月島-7', 1, '[{\"added\": {}}]', 27, 2),
(92, '2024-02-08 06:54:09.916786', '5', 'vプライマル月島-5', 3, '', 27, 2),
(93, '2024-02-08 06:54:12.320421', '6', 'vプライマル月島-6', 3, '', 27, 2),
(94, '2024-02-08 06:54:53.111509', '8', '本駒込ウエスト-8', 1, '[{\"added\": {}}]', 27, 2),
(95, '2024-02-08 06:55:13.529551', '9', 'アーズネックs千代田淡路町-9', 1, '[{\"added\": {}}]', 27, 2),
(96, '2024-02-08 06:55:52.104608', '10', 'オレオール代々木-10', 1, '[{\"added\": {}}]', 27, 2),
(97, '2024-02-08 06:56:27.956229', '11', 'ツバキ荘-11', 1, '[{\"added\": {}}]', 27, 2),
(98, '2024-02-08 06:57:35.782846', '12', 'セレニウム神原-12', 1, '[{\"added\": {}}]', 27, 2),
(99, '2024-02-08 07:00:35.460537', '13', '増井第一マンションs-13', 1, '[{\"added\": {}}]', 27, 2),
(100, '2024-02-08 07:01:38.852180', '14', 'ディシアガーデン広尾-14', 1, '[{\"added\": {}}]', 27, 2),
(101, '2024-02-08 07:03:07.370969', '15', 'パークアクシス日本橋浜町-15', 1, '[{\"added\": {}}]', 27, 2),
(102, '2024-02-08 07:03:25.201970', '15', '笹塚YKハウス-15', 2, '[{\"changed\": {\"fields\": [\"\\u7269\\u4ef6\"]}}]', 27, 2),
(103, '2024-02-08 07:04:34.984607', '16', 'リューズ・リバー月島-16', 1, '[{\"added\": {}}]', 27, 2),
(104, '2024-02-08 07:09:53.606682', '7', '笹塚YKハウス-415', 1, '[{\"added\": {}}]', 14, 2),
(105, '2024-02-08 07:10:10.701448', '6', 'vプライマル月島-308', 2, '[{\"changed\": {\"fields\": [\"\\u4f4d\\u7f6e\"]}}]', 14, 2),
(106, '2024-02-08 12:36:43.153415', '7', '笹塚YKハウス-415', 2, '[{\"changed\": {\"fields\": [\"\\u4f4d\\u7f6e\"]}}]', 14, 2),
(107, '2024-02-09 05:58:26.257262', '8', '本駒込ウエスト-208', 1, '[{\"added\": {}}]', 14, 2),
(108, '2024-02-09 06:42:42.919909', '9', 'リューズ・リバー月島-506', 1, '[{\"added\": {}}]', 14, 2),
(109, '2024-02-09 06:43:11.216153', '8', '本駒込ウエスト-208', 2, '[{\"changed\": {\"fields\": [\"Layout img\"]}}]', 14, 2),
(110, '2024-02-09 06:43:23.127281', '9', 'リューズ・リバー月島-506', 2, '[{\"changed\": {\"fields\": [\"Layout img\"]}}]', 14, 2),
(111, '2024-02-09 06:43:33.449059', '7', '笹塚YKハウス-415', 2, '[{\"changed\": {\"fields\": [\"Layout img\"]}}]', 14, 2),
(112, '2024-02-09 06:44:02.451122', '6', 'vプライマル月島-308', 2, '[{\"changed\": {\"fields\": [\"Layout img\"]}}]', 14, 2),
(113, '2024-02-09 06:44:13.940336', '5', '北品川グロシレジデンス-205', 2, '[{\"changed\": {\"fields\": [\"Layout img\"]}}]', 14, 2),
(114, '2024-02-09 06:44:28.078988', '4', 'パークアクシス日本橋浜町-501', 2, '[{\"changed\": {\"fields\": [\"Layout img\"]}}]', 14, 2),
(115, '2024-02-09 06:45:01.270990', '3', 'パークアクシス日本橋浜町-601', 2, '[]', 14, 2),
(116, '2024-02-09 06:47:53.002013', '10', 'セレニウム神原-301', 1, '[{\"added\": {}}]', 14, 2),
(117, '2024-02-09 06:50:10.415086', '4', '駐車場', 1, '[{\"added\": {}}]', 19, 2),
(118, '2024-02-09 06:50:30.468914', '6', 'IHコンロ', 1, '[{\"added\": {}}]', 20, 2),
(119, '2024-02-09 06:55:20.259145', '17', 'セレニウム神原-17', 1, '[{\"added\": {}}]', 27, 2),
(120, '2024-02-16 07:43:55.161816', '16', '神田ホタルビ', 1, '[{\"added\": {}}]', 13, 2),
(121, '2024-02-16 07:49:30.611245', '17', '富士ハウス', 1, '[{\"added\": {}}]', 13, 2),
(122, '2024-02-16 07:54:27.884404', '18', '新橋ベルザーク', 1, '[{\"added\": {}}]', 13, 2),
(123, '2024-02-16 07:58:33.384143', '19', 'しんぱち', 1, '[{\"added\": {}}]', 13, 2),
(124, '2024-02-16 08:03:47.267298', '20', '三楽ウッド', 1, '[{\"added\": {}}]', 13, 2),
(125, '2024-02-16 08:07:43.141005', '21', 'シルフィード神泉', 1, '[{\"added\": {}}]', 13, 2),
(126, '2024-02-16 08:13:27.840478', '22', 'バカラアイ・ケー', 1, '[{\"added\": {}}]', 13, 2),
(127, '2024-02-16 08:16:51.000459', '23', '文京ベーゼ', 1, '[{\"added\": {}}]', 13, 2),
(128, '2024-02-16 08:20:53.173043', '24', '文京ゼータ', 1, '[{\"added\": {}}]', 13, 2),
(129, '2024-02-16 08:22:16.521845', '1', 'ＨＦ西新宿レジデンスＷＥＳＴ', 2, '[{\"changed\": {\"fields\": [\"\\u30c8\\u30c3\\u30d7\\u753b\\u50cf\"]}}]', 13, 2),
(130, '2024-02-16 08:23:12.794748', '16', '神田ホタルビ', 2, '[{\"changed\": {\"fields\": [\"\\u30c8\\u30c3\\u30d7\\u753b\\u50cf\"]}}]', 13, 2),
(131, '2024-02-16 08:25:21.532244', '25', '小石川ヒルズ', 1, '[{\"added\": {}}]', 13, 2),
(132, '2024-02-16 08:30:20.470827', '26', '湊イチ', 1, '[{\"added\": {}}]', 13, 2),
(133, '2024-02-16 08:33:01.805631', '27', '八丁堀ホリーナ', 1, '[{\"added\": {}}]', 13, 2),
(134, '2024-02-16 08:37:17.265273', '28', 'トリニティ新大久保', 1, '[{\"added\": {}}]', 13, 2),
(135, '2024-02-16 08:39:46.044370', '29', 'トリフラ', 1, '[{\"added\": {}}]', 13, 2),
(136, '2024-02-16 08:42:50.736191', '30', '甘雨', 1, '[{\"added\": {}}]', 13, 2),
(137, '2024-02-16 08:43:52.591479', '17', '富士ハウス', 2, '[{\"changed\": {\"fields\": [\"\\u30c8\\u30c3\\u30d7\\u753b\\u50cf\", \"\\u7269\\u4ef6\\u306e\\u7a2e\\u985e\"]}}]', 13, 2),
(138, '2024-02-16 08:44:17.837679', '18', '新橋ベルザーク', 2, '[{\"changed\": {\"fields\": [\"\\u30c8\\u30c3\\u30d7\\u753b\\u50cf\", \"\\u7269\\u4ef6\\u306e\\u7a2e\\u985e\"]}}]', 13, 2),
(139, '2024-02-19 04:44:32.725874', '2', 'admin@mail.com', 2, '[{\"changed\": {\"fields\": [\"\\u540d\\u524d\", \"\\u5951\\u7d04\\u7269\\u4ef6\"]}}]', 12, 2),
(140, '2024-02-19 04:45:04.587176', '2', 'admin@mail.com', 2, '[{\"changed\": {\"fields\": [\"\\u5951\\u7d04\\u7269\\u4ef6\"]}}]', 12, 2),
(141, '2024-02-19 04:47:13.462240', '12', 'Living Hub管理者', 1, '[{\"added\": {}}]', 28, 2),
(142, '2024-02-19 04:48:33.178517', '2', 'admin@mail.com', 2, '[{\"changed\": {\"fields\": [\"\\u5951\\u7d04\\u7269\\u4ef6\"]}}]', 12, 2),
(143, '2024-02-21 00:34:23.163388', '4', 'プライマル月島', 2, '[{\"changed\": {\"fields\": [\"\\u7269\\u4ef6\\u540d\"]}}]', 13, 2),
(144, '2024-02-21 00:36:02.150442', '2', 'パークアクシス日本橋浜町', 2, '[{\"changed\": {\"fields\": [\"\\u96fb\\u8a71\\u756a\\u53f7\"]}}]', 13, 2),
(145, '2024-02-21 00:36:45.643521', '3', 'リューズ・リバー月島', 2, '[{\"changed\": {\"fields\": [\"\\u96fb\\u8a71\\u756a\\u53f7\"]}}]', 13, 2),
(146, '2024-02-21 00:36:47.199803', '3', 'リューズ・リバー月島', 2, '[]', 13, 2),
(147, '2024-02-21 00:36:57.499470', '4', 'プライマル月島', 2, '[{\"changed\": {\"fields\": [\"\\u96fb\\u8a71\\u756a\\u53f7\"]}}]', 13, 2),
(148, '2024-02-21 00:37:13.057039', '5', 'さぎり荘', 2, '[{\"changed\": {\"fields\": [\"\\u96fb\\u8a71\\u756a\\u53f7\"]}}]', 13, 2),
(149, '2024-02-21 00:37:53.403206', '6', 'シラユリ荘', 2, '[{\"changed\": {\"fields\": [\"\\u96fb\\u8a71\\u756a\\u53f7\"]}}]', 13, 2),
(150, '2024-02-21 00:38:08.343349', '7', '本駒込ウエスト', 2, '[{\"changed\": {\"fields\": [\"\\u96fb\\u8a71\\u756a\\u53f7\"]}}]', 13, 2),
(151, '2024-02-21 00:38:28.051879', '8', '笹塚YKハウス', 2, '[{\"changed\": {\"fields\": [\"\\u96fb\\u8a71\\u756a\\u53f7\"]}}]', 13, 2),
(152, '2024-02-21 00:38:52.345846', '9', 'セレニウム神原', 2, '[{\"changed\": {\"fields\": [\"\\u96fb\\u8a71\\u756a\\u53f7\"]}}]', 13, 2),
(153, '2024-02-21 00:39:29.413120', '10', 'ツバキ荘', 2, '[{\"changed\": {\"fields\": [\"\\u96fb\\u8a71\\u756a\\u53f7\"]}}]', 13, 2),
(154, '2024-02-21 00:39:56.063907', '11', '北品川グロシレジデンス', 2, '[{\"changed\": {\"fields\": [\"\\u96fb\\u8a71\\u756a\\u53f7\"]}}]', 13, 2),
(155, '2024-02-21 00:40:23.678290', '12', 'アーズネック千代田淡路町', 2, '[{\"changed\": {\"fields\": [\"\\u7269\\u4ef6\\u540d\"]}}]', 13, 2),
(156, '2024-02-21 00:40:46.531362', '14', '増井第一マンション', 2, '[{\"changed\": {\"fields\": [\"\\u7269\\u4ef6\\u540d\"]}}]', 13, 2),
(157, '2024-02-21 00:41:37.227789', '16', '神田ホタルビ', 2, '[{\"changed\": {\"fields\": [\"\\u96fb\\u8a71\\u756a\\u53f7\"]}}]', 13, 2),
(158, '2024-02-21 00:42:07.239083', '18', '新橋ベルザーク', 2, '[{\"changed\": {\"fields\": [\"\\u96fb\\u8a71\\u756a\\u53f7\"]}}]', 13, 2),
(159, '2024-02-21 00:42:42.336942', '27', '八丁堀ホリーナ', 2, '[{\"changed\": {\"fields\": [\"\\u4f4f\\u6240\", \"\\u6577\\u91d1/\\u793c\\u91d1\"]}}]', 13, 2),
(160, '2024-02-21 00:44:15.741012', '30', '甘雨', 2, '[{\"changed\": {\"fields\": [\"\\u4f4f\\u6240\", \"\\u6577\\u91d1/\\u793c\\u91d1\", \"\\u96fb\\u8a71\\u756a\\u53f7\"]}}]', 13, 2),
(161, '2024-02-21 00:45:03.079020', '29', 'トリフラ', 2, '[{\"changed\": {\"fields\": [\"\\u4f4f\\u6240\", \"\\u6577\\u91d1/\\u793c\\u91d1\", \"\\u96fb\\u8a71\\u756a\\u53f7\"]}}]', 13, 2),
(162, '2024-02-21 00:45:37.281530', '28', 'トリニティ新大久保', 2, '[{\"changed\": {\"fields\": [\"\\u4f4f\\u6240\", \"\\u6577\\u91d1/\\u793c\\u91d1\", \"\\u96fb\\u8a71\\u756a\\u53f7\"]}}]', 13, 2),
(163, '2024-02-21 00:46:09.790773', '27', '八丁堀ホリーナ', 2, '[{\"changed\": {\"fields\": [\"\\u6577\\u91d1/\\u793c\\u91d1\", \"\\u96fb\\u8a71\\u756a\\u53f7\"]}}]', 13, 2),
(164, '2024-02-21 00:46:45.260458', '26', '湊イチ', 2, '[{\"changed\": {\"fields\": [\"\\u4f4f\\u6240\", \"\\u6577\\u91d1/\\u793c\\u91d1\", \"\\u96fb\\u8a71\\u756a\\u53f7\"]}}]', 13, 2),
(165, '2024-02-21 00:47:01.929593', '24', '文京ゼータ', 2, '[{\"changed\": {\"fields\": [\"\\u4f4f\\u6240\"]}}]', 13, 2),
(166, '2024-02-21 00:47:56.202022', '25', '小石川ヒルズ', 2, '[{\"changed\": {\"fields\": [\"\\u4f4f\\u6240\", \"\\u6577\\u91d1/\\u793c\\u91d1\", \"\\u96fb\\u8a71\\u756a\\u53f7\"]}}]', 13, 2),
(167, '2024-02-21 00:48:23.074896', '24', '文京ゼータ', 2, '[{\"changed\": {\"fields\": [\"\\u96fb\\u8a71\\u756a\\u53f7\"]}}]', 13, 2),
(168, '2024-02-21 00:48:41.304264', '23', '文京ベーゼ', 2, '[{\"changed\": {\"fields\": [\"\\u4f4f\\u6240\", \"\\u6577\\u91d1/\\u793c\\u91d1\"]}}]', 13, 2),
(169, '2024-02-21 00:50:24.472014', '23', '文京ベーゼ', 2, '[{\"changed\": {\"fields\": [\"\\u96fb\\u8a71\\u756a\\u53f7\"]}}]', 13, 2),
(170, '2024-02-21 00:50:46.311853', '22', 'バカラアイ・ケー', 2, '[{\"changed\": {\"fields\": [\"\\u6577\\u91d1/\\u793c\\u91d1\", \"\\u96fb\\u8a71\\u756a\\u53f7\"]}}]', 13, 2),
(171, '2024-02-21 00:51:26.946845', '21', 'シルフィード神泉', 2, '[{\"changed\": {\"fields\": [\"\\u4f4f\\u6240\", \"\\u96fb\\u8a71\\u756a\\u53f7\"]}}]', 13, 2),
(172, '2024-02-21 00:52:11.122854', '20', '三楽ウッド', 2, '[{\"changed\": {\"fields\": [\"\\u4f4f\\u6240\", \"\\u6577\\u91d1/\\u793c\\u91d1\", \"\\u96fb\\u8a71\\u756a\\u53f7\"]}}]', 13, 2),
(173, '2024-02-21 00:52:19.609002', '21', 'シルフィード神泉', 2, '[{\"changed\": {\"fields\": [\"\\u4f4f\\u6240\"]}}]', 13, 2),
(174, '2024-02-21 00:52:55.065207', '19', 'しんぱち', 2, '[{\"changed\": {\"fields\": [\"\\u4f4f\\u6240\", \"\\u96fb\\u8a71\\u756a\\u53f7\"]}}]', 13, 2),
(175, '2024-02-21 00:53:19.639811', '18', '新橋ベルザーク', 2, '[{\"changed\": {\"fields\": [\"\\u4f4f\\u6240\", \"\\u6577\\u91d1/\\u793c\\u91d1\"]}}]', 13, 2),
(176, '2024-02-21 00:53:54.826926', '17', '富士ハウス', 2, '[{\"changed\": {\"fields\": [\"\\u4f4f\\u6240\", \"\\u96fb\\u8a71\\u756a\\u53f7\"]}}]', 13, 2),
(177, '2024-02-21 00:54:04.678362', '16', '神田ホタルビ', 2, '[{\"changed\": {\"fields\": [\"\\u6577\\u91d1/\\u793c\\u91d1\"]}}]', 13, 2),
(178, '2024-02-21 01:01:38.858860', '3', 'パークアクシス日本橋浜町-601', 2, '[]', 14, 2),
(179, '2024-02-21 01:05:11.987638', '3', 'パークアクシス日本橋浜町-601', 2, '[{\"changed\": {\"fields\": [\"Layout img\"]}}]', 14, 2),
(180, '2024-02-21 01:05:27.478589', '4', 'パークアクシス日本橋浜町-501', 2, '[{\"changed\": {\"fields\": [\"Layout img\"]}}]', 14, 2),
(181, '2024-02-21 01:05:53.731590', '5', '北品川グロシレジデンス-205', 2, '[{\"changed\": {\"fields\": [\"Layout img\"]}}]', 14, 2),
(182, '2024-02-21 01:06:16.132027', '5', '北品川グロシレジデンス-205', 2, '[{\"changed\": {\"fields\": [\"Layout img\"]}}]', 14, 2),
(183, '2024-02-21 01:07:32.359684', '5', '北品川グロシレジデンス-205', 2, '[]', 14, 2),
(184, '2024-02-21 01:08:02.504985', '6', 'プライマル月島-308', 2, '[{\"changed\": {\"fields\": [\"Layout img\"]}}]', 14, 2),
(185, '2024-02-21 01:08:11.006153', '7', '笹塚YKハウス-415', 2, '[{\"changed\": {\"fields\": [\"Layout img\"]}}]', 14, 2),
(186, '2024-02-21 01:08:22.429821', '8', '本駒込ウエスト-208', 2, '[{\"changed\": {\"fields\": [\"Layout img\"]}}]', 14, 2),
(187, '2024-02-21 01:08:46.600581', '9', 'リューズ・リバー月島-506', 2, '[{\"changed\": {\"fields\": [\"Layout img\"]}}]', 14, 2),
(188, '2024-02-21 01:08:51.754948', '9', 'リューズ・リバー月島-506', 2, '[]', 14, 2),
(189, '2024-02-21 01:09:08.862732', '10', 'セレニウム神原-301', 2, '[{\"changed\": {\"fields\": [\"Layout img\"]}}]', 14, 2),
(190, '2024-02-21 01:10:17.575199', '10', 'セレニウム神原-301', 2, '[]', 14, 2),
(191, '2024-02-21 01:14:41.766919', '4', '北品川グロシレジデンス-4', 2, '[{\"changed\": {\"fields\": [\"\\u6761\\u4ef6\"]}}]', 27, 2),
(192, '2024-02-21 01:15:21.869289', '7', 'プライマル月島-7', 2, '[{\"changed\": {\"fields\": [\"\\u6761\\u4ef6\"]}}]', 27, 2),
(193, '2024-02-21 01:16:51.735801', '8', '本駒込ウエスト-8', 2, '[{\"changed\": {\"fields\": [\"\\u6761\\u4ef6\"]}}]', 27, 2),
(194, '2024-02-21 01:17:20.472345', '9', 'アーズネック千代田淡路町-9', 2, '[{\"changed\": {\"fields\": [\"\\u6761\\u4ef6\"]}}]', 27, 2),
(195, '2024-02-21 01:23:20.380439', '10', 'オレオール代々木-10', 2, '[{\"changed\": {\"fields\": [\"\\u6761\\u4ef6\"]}}]', 27, 2),
(196, '2024-02-21 01:23:38.301965', '11', 'ツバキ荘-11', 2, '[]', 27, 2),
(197, '2024-02-21 01:23:44.602188', '12', 'セレニウム神原-12', 2, '[{\"changed\": {\"fields\": [\"\\u6761\\u4ef6\"]}}]', 27, 2),
(198, '2024-02-21 01:24:05.965829', '13', '増井第一マンション-13', 2, '[{\"changed\": {\"fields\": [\"\\u6761\\u4ef6\"]}}]', 27, 2),
(199, '2024-02-21 01:24:47.338143', '14', 'ディシアガーデン広尾-14', 2, '[{\"changed\": {\"fields\": [\"\\u6761\\u4ef6\"]}}]', 27, 2),
(200, '2024-02-21 01:25:45.281122', '15', '笹塚YKハウス-15', 2, '[{\"changed\": {\"fields\": [\"\\u6761\\u4ef6\"]}}]', 27, 2),
(201, '2024-02-21 01:26:08.663311', '16', 'リューズ・リバー月島-16', 2, '[{\"changed\": {\"fields\": [\"\\u6761\\u4ef6\"]}}]', 27, 2),
(202, '2024-02-21 01:26:19.603484', '17', 'セレニウム神原-17', 2, '[{\"changed\": {\"fields\": [\"\\u6761\\u4ef6\"]}}]', 27, 2),
(203, '2024-02-21 01:28:41.304082', '12', 'セレニウム神原-12', 3, '', 27, 2),
(204, '2024-02-21 01:33:24.489840', '1', 'ＨＦ西新宿レジデンスＷＥＳＴ-宇野ハル', 2, '[{\"changed\": {\"fields\": [\"\\u30bf\\u30a4\\u30c8\\u30eb\", \"\\u5185\\u5bb9\"]}}]', 22, 2),
(205, '2024-02-21 01:34:09.581852', '9', 'アーズネック千代田淡路町-9', 2, '[{\"changed\": {\"fields\": [\"\\u6761\\u4ef6\"]}}]', 27, 2),
(206, '2024-02-21 01:34:43.926510', '13', '増井第一マンション-13', 2, '[{\"changed\": {\"fields\": [\"\\u6761\\u4ef6\"]}}]', 27, 2),
(207, '2024-02-21 01:35:12.840501', '14', 'ディシアガーデン広尾-14', 2, '[{\"changed\": {\"fields\": [\"\\u6761\\u4ef6\"]}}]', 27, 2),
(208, '2024-02-21 01:38:21.615623', '18', 'シラユリ荘-18', 1, '[{\"added\": {}}]', 27, 2),
(209, '2024-02-21 01:39:39.404807', '19', '神田ホタルビ-19', 1, '[{\"added\": {}}]', 27, 2),
(210, '2024-02-21 01:47:37.558158', '19', 'しんぱち', 2, '[{\"changed\": {\"fields\": [\"\\u30c8\\u30c3\\u30d7\\u753b\\u50cf\"]}}]', 13, 2),
(211, '2024-02-21 01:47:48.197637', '20', '三楽ウッド', 2, '[{\"changed\": {\"fields\": [\"\\u30c8\\u30c3\\u30d7\\u753b\\u50cf\"]}}]', 13, 2),
(212, '2024-02-21 01:47:55.439515', '21', 'シルフィード神泉', 2, '[{\"changed\": {\"fields\": [\"\\u30c8\\u30c3\\u30d7\\u753b\\u50cf\"]}}]', 13, 2),
(213, '2024-02-21 01:48:07.978253', '21', 'シルフィード神泉', 2, '[{\"changed\": {\"fields\": [\"\\u30c8\\u30c3\\u30d7\\u753b\\u50cf\"]}}]', 13, 2),
(214, '2024-02-21 01:48:17.078571', '23', '文京ベーゼ', 2, '[{\"changed\": {\"fields\": [\"\\u30c8\\u30c3\\u30d7\\u753b\\u50cf\"]}}]', 13, 2),
(215, '2024-02-21 01:48:32.693987', '22', 'バカラアイ・ケー', 2, '[{\"changed\": {\"fields\": [\"\\u30c8\\u30c3\\u30d7\\u753b\\u50cf\"]}}]', 13, 2),
(216, '2024-02-21 01:48:41.005172', '24', '文京ゼータ', 2, '[{\"changed\": {\"fields\": [\"\\u30c8\\u30c3\\u30d7\\u753b\\u50cf\"]}}]', 13, 2),
(217, '2024-02-21 01:48:53.826037', '25', '小石川ヒルズ', 2, '[{\"changed\": {\"fields\": [\"\\u30c8\\u30c3\\u30d7\\u753b\\u50cf\"]}}]', 13, 2),
(218, '2024-02-21 01:49:07.025017', '27', '八丁堀ホリーナ', 2, '[{\"changed\": {\"fields\": [\"\\u30c8\\u30c3\\u30d7\\u753b\\u50cf\"]}}]', 13, 2),
(219, '2024-02-21 01:50:44.988259', '28', 'トリニティ新大久保', 2, '[{\"changed\": {\"fields\": [\"\\u30c8\\u30c3\\u30d7\\u753b\\u50cf\"]}}]', 13, 2),
(220, '2024-02-21 01:50:58.964895', '29', 'トリフラ', 2, '[{\"changed\": {\"fields\": [\"\\u30c8\\u30c3\\u30d7\\u753b\\u50cf\"]}}]', 13, 2),
(221, '2024-02-21 01:51:09.984886', '30', '甘雨', 2, '[{\"changed\": {\"fields\": [\"\\u30c8\\u30c3\\u30d7\\u753b\\u50cf\"]}}]', 13, 2),
(222, '2024-02-21 01:52:24.992755', '26', '湊イチ', 2, '[{\"changed\": {\"fields\": [\"\\u30c8\\u30c3\\u30d7\\u753b\\u50cf\"]}}]', 13, 2),
(223, '2024-02-21 02:01:56.336829', '12', 'ind@mail.com', 1, '[{\"added\": {}}]', 12, 2),
(224, '2024-02-21 02:18:34.407555', '12', 'ind@mail.com', 3, '', 12, 2),
(225, '2024-02-21 02:28:06.567816', '13', 'ind@mail.com', 2, '[{\"changed\": {\"fields\": [\"\\u30d7\\u30ed\\u30d5\\u30a3\\u30fc\\u30eb\\u753b\\u50cf\", \"\\u5951\\u7d04\\u7269\\u4ef6\"]}}]', 12, 2),
(226, '2024-02-21 02:28:15.548755', '14', 'ind1@mail.com', 2, '[{\"changed\": {\"fields\": [\"\\u5951\\u7d04\\u7269\\u4ef6\"]}}]', 12, 2),
(227, '2024-02-21 02:28:20.012662', '15', 'ind3@mail.com', 2, '[{\"changed\": {\"fields\": [\"\\u5951\\u7d04\\u7269\\u4ef6\"]}}]', 12, 2),
(228, '2024-02-21 02:28:52.352669', '11', 'sample5@mail.com', 3, '', 12, 2),
(229, '2024-02-21 02:28:52.354489', '10', 'sample4@mail.com', 3, '', 12, 2),
(230, '2024-02-21 02:28:52.355736', '9', 'sample3@mail.com', 3, '', 12, 2),
(231, '2024-02-21 02:28:52.356772', '4', 'sample2@mail.com', 3, '', 12, 2),
(232, '2024-02-21 02:29:08.383059', '2', 'ＨＦ西新宿レジデンスＷＥＳＴ-1305', 2, '[{\"changed\": {\"fields\": [\"\\u5951\\u7d04\\u72b6\\u6cc1\"]}}]', 14, 2),
(233, '2024-02-21 02:29:15.722373', '3', 'パークアクシス日本橋浜町-601', 2, '[]', 14, 2),
(234, '2024-02-21 02:29:20.766462', '4', 'パークアクシス日本橋浜町-501', 2, '[]', 14, 2),
(235, '2024-02-21 02:31:33.833964', '2', 'ＨＦ西新宿レジデンスＷＥＳＴ-1305', 2, '[{\"changed\": {\"fields\": [\"Layout img\"]}}]', 14, 2),
(236, '2024-02-21 02:39:14.818447', '16', 'university1@mail.com', 2, '[{\"changed\": {\"fields\": [\"\\u5951\\u7d04\\u7269\\u4ef6\"]}}]', 12, 2),
(237, '2024-02-21 02:39:19.879617', '17', 'university2@mail.com', 2, '[{\"changed\": {\"fields\": [\"\\u5951\\u7d04\\u7269\\u4ef6\"]}}]', 12, 2),
(238, '2024-02-21 02:39:25.838369', '16', 'university1@mail.com', 2, '[]', 12, 2),
(239, '2024-02-21 02:39:35.419402', '18', 'university3@mail.com', 2, '[{\"changed\": {\"fields\": [\"\\u5951\\u7d04\\u7269\\u4ef6\"]}}]', 12, 2),
(240, '2024-02-21 02:45:15.793932', '9', 'セレニウム神原', 2, '[{\"changed\": {\"fields\": [\"\\u6577\\u91d1/\\u793c\\u91d1\", \"\\u30c8\\u30c3\\u30d7\\u753b\\u50cf\"]}}]', 13, 2),
(241, '2024-02-21 02:46:26.712981', '2', 'ＨＦ西新宿レジデンスＷＥＳＴ-505', 2, '[{\"changed\": {\"fields\": [\"\\u968e\", \"\\u90e8\\u5c4b\\u756a\\u53f7\"]}}]', 14, 2),
(242, '2024-02-21 02:48:30.284023', '2', 'パークアクシス日本橋浜町-宇野ハル', 3, '', 22, 2),
(243, '2024-02-21 02:48:30.286237', '1', 'ＨＦ西新宿レジデンスＷＥＳＴ-宇野ハル', 3, '', 22, 2),
(244, '2024-02-21 02:48:51.612406', '3', 'ＨＦ西新宿レジデンスＷＥＳＴ-ラジーブ・パテル', 1, '[{\"added\": {}}]', 22, 2),
(245, '2024-02-21 02:50:32.395958', '4', 'ＨＦ西新宿レジデンスＷＥＳＴ-メーラー・シン', 1, '[{\"added\": {}}]', 22, 2),
(246, '2024-02-21 02:51:28.089192', '5', 'ＨＦ西新宿レジデンスＷＥＳＴ-サンジャイ・グプタ', 1, '[{\"added\": {}}]', 22, 2),
(247, '2024-02-21 02:51:30.832309', '4', 'ＨＦ西新宿レジデンスＷＥＳＴ-メーラー・シン', 2, '[]', 22, 2),
(248, '2024-02-21 06:40:53.400134', '4', 'プライマル月島', 2, '[{\"changed\": {\"fields\": [\"\\u30c8\\u30c3\\u30d7\\u753b\\u50cf\"]}}]', 13, 2),
(249, '2024-02-23 02:07:32.128614', '11', '【本日限定15％OFF】VITAS公式ストア全品15％OFF！！期間限定プロテイン“焼き芋フレーバー', 3, '', 28, 2),
(250, '2024-02-23 02:08:25.407179', '2', 'admin@mail.com', 2, '[{\"changed\": {\"fields\": [\"\\u5951\\u7d04\\u7269\\u4ef6\"]}}]', 12, 2),
(251, '2024-02-23 02:08:50.972589', '12', 'Living Hub管理者', 3, '', 28, 2),
(252, '2024-02-23 02:11:33.895218', '13', '初めまして', 1, '[{\"added\": {}}]', 28, 2),
(253, '2024-02-23 02:11:56.386006', '14', '初めまして', 1, '[{\"added\": {}}]', 28, 2),
(254, '2024-02-23 02:16:23.180164', '15', 'お知らせ 燃えるゴミ', 1, '[{\"added\": {}}]', 28, 2),
(255, '2024-02-23 09:59:05.979028', '2', 'admin@mail.com', 2, '[{\"changed\": {\"fields\": [\"\\u5951\\u7d04\\u7269\\u4ef6\"]}}]', 12, 2),
(256, '2024-02-23 09:59:23.961266', '2', 'admin@mail.com', 2, '[{\"changed\": {\"fields\": [\"\\u5951\\u7d04\\u7269\\u4ef6\"]}}]', 12, 2),
(257, '2024-02-23 09:59:40.064912', '2', 'admin@mail.com', 2, '[{\"changed\": {\"fields\": [\"\\u5951\\u7d04\\u7269\\u4ef6\"]}}]', 12, 2),
(258, '2024-02-29 00:26:52.732451', '2', 'パークアクシス日本橋浜町-image1', 3, '', 18, 2),
(259, '2024-02-29 00:27:08.268377', '4', 'ＨＦ西新宿レジデンスＷＥＳＴ-image1', 3, '', 18, 2),
(260, '2024-02-29 00:27:17.026368', '3', 'パークアクシス日本橋浜町-image1', 3, '', 18, 2),
(261, '2024-03-03 08:38:13.703108', '20', '富士ハウス-20', 1, '[{\"added\": {}}]', 27, 2),
(262, '2024-03-03 08:38:56.803204', '21', '新橋ベルザーク-21', 1, '[{\"added\": {}}]', 27, 2),
(263, '2024-03-03 08:39:39.545837', '22', 'しんぱち-22', 1, '[{\"added\": {}}]', 27, 2),
(264, '2024-03-03 08:41:11.838099', '23', '三楽ウッド-23', 1, '[{\"added\": {}}]', 27, 2),
(265, '2024-03-03 08:42:22.966364', '24', '三楽ウッド-24', 1, '[{\"added\": {}}]', 27, 2),
(266, '2024-03-03 08:43:03.457150', '25', 'シルフィード神泉-25', 1, '[{\"added\": {}}]', 27, 2),
(267, '2024-03-03 08:43:27.923590', '26', 'バカラアイ・ケー-26', 1, '[{\"added\": {}}]', 27, 2),
(268, '2024-03-03 08:44:01.411738', '27', '文京ベーゼ-27', 1, '[{\"added\": {}}]', 27, 2),
(269, '2024-03-03 08:44:31.370368', '28', '文京ゼータ-28', 1, '[{\"added\": {}}]', 27, 2),
(270, '2024-03-03 08:45:02.728968', '29', '小石川ヒルズ-29', 1, '[{\"added\": {}}]', 27, 2),
(271, '2024-03-03 09:04:49.268905', '30', '湊イチ-30', 1, '[{\"added\": {}}]', 27, 2),
(272, '2024-03-03 09:05:35.250688', '31', '八丁堀ホリーナ-31', 1, '[{\"added\": {}}]', 27, 2),
(273, '2024-03-03 09:05:48.010266', '32', 'トリニティ新大久保-32', 1, '[{\"added\": {}}]', 27, 2),
(274, '2024-03-03 09:06:09.855946', '33', 'トリフラ-33', 1, '[{\"added\": {}}]', 27, 2),
(275, '2024-03-03 09:06:39.069498', '34', '甘雨-34', 1, '[{\"added\": {}}]', 27, 2),
(276, '2024-03-03 09:07:57.199774', '35', 'さぎり荘-35', 1, '[{\"added\": {}}]', 27, 2),
(277, '2024-03-03 09:08:28.112480', '18', 'シラユリ荘-18', 2, '[{\"changed\": {\"fields\": [\"\\u6761\\u4ef6\"]}}]', 27, 2),
(278, '2024-03-03 11:00:48.347687', '48', 'さぎり荘-101', 1, '[{\"added\": {}}]', 14, 2),
(279, '2024-03-03 11:06:32.267518', '56', 'シラユリ荘-201', 1, '[{\"added\": {}}]', 14, 2),
(280, '2024-03-03 11:11:00.791233', '60', 'ツバキ荘-104', 1, '[{\"added\": {}}]', 14, 2),
(281, '2024-03-03 11:14:52.418414', '67', 'アーズネック千代田淡路町-101', 1, '[{\"added\": {}}]', 14, 2),
(282, '2024-03-03 11:24:08.892231', '76', 'オレオール代々木-203', 1, '[{\"added\": {}}]', 14, 2),
(283, '2024-03-03 11:30:07.917936', '82', '増井第一マンション-101', 1, '[{\"added\": {}}]', 14, 2),
(284, '2024-03-03 11:34:33.813621', '89', 'ディシアガーデン広尾-101', 1, '[{\"added\": {}}]', 14, 2);

-- --------------------------------------------------------

--
-- テーブルの構造 `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'account', 'emailaddress'),
(8, 'account', 'emailconfirmation'),
(12, 'accounts', 'user'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(26, 'chat', 'friends'),
(25, 'chat', 'group'),
(24, 'chat', 'messages'),
(4, 'contenttypes', 'contenttype'),
(28, 'dashboard', 'article'),
(23, 'like', 'like'),
(22, 'like', 'review'),
(5, 'sessions', 'session'),
(6, 'sites', 'site'),
(9, 'socialaccount', 'socialaccount'),
(10, 'socialaccount', 'socialapp'),
(11, 'socialaccount', 'socialtoken'),
(21, 'stores', 'bathroom'),
(27, 'stores', 'condition'),
(20, 'stores', 'kitchen'),
(19, 'stores', 'other'),
(13, 'stores', 'property'),
(14, 'stores', 'propertydetail'),
(18, 'stores', 'propertypicture'),
(15, 'stores', 'propertytype'),
(17, 'stores', 'service'),
(16, 'stores', 'ward');

-- --------------------------------------------------------

--
-- テーブルの構造 `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'stores', '0001_initial', '2023-11-30 07:30:03.205067'),
(2, 'contenttypes', '0001_initial', '2023-11-30 07:30:03.277336'),
(3, 'contenttypes', '0002_remove_content_type_name', '2023-11-30 07:30:03.362575'),
(4, 'auth', '0001_initial', '2023-11-30 07:30:03.663939'),
(5, 'auth', '0002_alter_permission_name_max_length', '2023-11-30 07:30:03.707147'),
(6, 'auth', '0003_alter_user_email_max_length', '2023-11-30 07:30:03.715967'),
(7, 'auth', '0004_alter_user_username_opts', '2023-11-30 07:30:03.723003'),
(8, 'auth', '0005_alter_user_last_login_null', '2023-11-30 07:30:03.730625'),
(9, 'auth', '0006_require_contenttypes_0002', '2023-11-30 07:30:03.733097'),
(10, 'auth', '0007_alter_validators_add_error_messages', '2023-11-30 07:30:03.738802'),
(11, 'auth', '0008_alter_user_username_max_length', '2023-11-30 07:30:03.744471'),
(12, 'auth', '0009_alter_user_last_name_max_length', '2023-11-30 07:30:03.749591'),
(13, 'auth', '0010_alter_group_name_max_length', '2023-11-30 07:30:03.784784'),
(14, 'auth', '0011_update_proxy_permissions', '2023-11-30 07:30:03.793759'),
(15, 'auth', '0012_alter_user_first_name_max_length', '2023-11-30 07:30:03.799360'),
(16, 'accounts', '0001_initial', '2023-11-30 07:30:04.161447'),
(17, 'account', '0001_initial', '2023-11-30 07:30:04.333893'),
(18, 'account', '0002_email_max_length', '2023-11-30 07:30:04.383736'),
(19, 'account', '0003_alter_emailaddress_create_unique_verified_email', '2023-11-30 07:30:04.429974'),
(20, 'account', '0004_alter_emailaddress_drop_unique_email', '2023-11-30 07:30:04.535765'),
(21, 'account', '0005_emailaddress_idx_upper_email', '2023-11-30 07:30:04.547566'),
(22, 'admin', '0001_initial', '2023-11-30 07:30:04.677149'),
(23, 'admin', '0002_logentry_remove_auto_add', '2023-11-30 07:30:04.691344'),
(24, 'admin', '0003_logentry_add_action_flag_choices', '2023-11-30 07:30:04.704838'),
(25, 'chat', '0001_initial', '2023-11-30 07:30:05.101498'),
(26, 'like', '0001_initial', '2023-11-30 07:30:05.398383'),
(27, 'sessions', '0001_initial', '2023-11-30 07:30:05.462640'),
(28, 'sites', '0001_initial', '2023-11-30 07:30:05.494708'),
(29, 'sites', '0002_alter_domain_unique', '2023-11-30 07:30:05.529245'),
(30, 'socialaccount', '0001_initial', '2023-11-30 07:30:06.046805'),
(31, 'socialaccount', '0002_token_max_lengths', '2023-11-30 07:30:06.157398'),
(32, 'socialaccount', '0003_extra_data_default_dict', '2023-11-30 07:30:06.217426'),
(33, 'socialaccount', '0004_app_provider_id_settings', '2023-11-30 07:30:06.370783'),
(34, 'socialaccount', '0005_socialtoken_nullable_app', '2023-11-30 07:30:06.525195'),
(35, 'socialaccount', '0006_alter_socialaccount_extra_data', '2023-11-30 07:30:06.581973'),
(36, 'stores', '0002_remove_property_area_condition', '2023-12-05 00:32:15.510526'),
(37, 'accounts', '0002_remove_user_religion', '2023-12-07 03:22:08.973892'),
(38, 'accounts', '0003_alter_user_email', '2023-12-28 10:45:26.457967'),
(39, 'accounts', '0004_user_sex', '2024-01-23 12:19:13.686257'),
(40, 'accounts', '0005_alter_user_sex', '2024-01-24 11:46:22.489931'),
(41, 'stores', '0003_propertydetail_layout_img', '2024-02-05 11:42:40.796699'),
(42, 'stores', '0004_alter_propertydetail_layout_img', '2024-02-05 11:48:40.494906'),
(43, 'stores', '0005_alter_property_picture_url_and_more', '2024-02-05 11:55:34.565627'),
(44, 'stores', '0004_alter_property_picture_url_and_more', '2024-02-05 23:26:29.528753'),
(45, 'stores', '0003_propertydetail_layout_img_alter_property_picture_url', '2024-02-05 23:35:02.058104'),
(46, 'stores', '0004_merge_20240207_0428', '2024-02-07 04:28:26.222508'),
(47, 'stores', '0005_alter_property_phone_number_and_more', '2024-02-07 04:28:26.292352'),
(48, 'accounts', '0006_user_contract', '2024-02-09 04:43:19.957114'),
(50, 'dashboard', '0002_remove_article_property_alter_article_table', '2024-02-14 12:58:46.140254'),
(52, 'dashboard', '0001_initial', '2024-02-14 13:24:36.553909');

-- --------------------------------------------------------

--
-- テーブルの構造 `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('05qkjkhgzmzgv4yjropsjiwdk0c3ovjq', '.eJxVjEEOwiAQRe_C2pApQ5F26d4zkCkDFjXQlDbRGO-uTbrQ7X_vv5dwtC6jW2uYXWLRCxSH320gfwt5A3ylfCnSl7zMaZCbInda5blwuJ929y8wUh2_b98YQuDYBsWaQR8ZQYNRhEE3htvoSetomTu00RqMqLoWVIMWO1AatmgNtaaSXXhMaX6KHt4fbTg-Ew:1rVW7U:Aea7sWfkaLJvyOLiJfmUP_vsGWwe1polYzrXkzmzA5M', '2024-02-15 12:24:40.549855'),
('1rfzjf6fq5d9w9gr2u9o7hihyvd66seo', '.eJxVjMsOwiAQRf-FtSHIG5fu-w1kmAGpGkhKuzL-uzbpQrf3nHNfLMK21riNvMSZ2IUpdvrdEuAjtx3QHdqtc-xtXebEd4UfdPCpU35eD_fvoMKo3zpY4YTwMqOTyWEA0MqciwYvsvHJ2WSTKCVbjd4DGQwUPAUlJJKSyrH3B9ZON7M:1r8xKE:ZFLJj0SMdNvugLckB-hJWoPnZUrGDZ1V9WE2ZZlng-k', '2023-12-15 06:48:34.672505'),
('2eo6u8ohdyc0izaaiu4w3pgn4n0pwdgc', '.eJxVjMsOgjAUBf-la9O0F_rApXu_gdwXFjWQUFgZ_11JWOj2zMx5mR63tfRb1aUfxZwNmNPvRsgPnXYgd5xus-V5WpeR7K7Yg1Z7nUWfl8P9OyhYy157zh2l7BAceYbcta5lwUiOUVPwAqCRiXIjDccUREHD14YhEbaDeX8A7Ug4dw:1rA0DA:IWJmae1hI_OgaozoMNqiIE7im6BrEBPM7g-dWfO8P-M', '2023-12-18 04:05:36.635655'),
('2yyyab7xuadgkprwzdcbk2fbv9zmtxks', '.eJxVjMsOgjAUBf-la9O0F_rApXu_gdwXFjWQUFgZ_11JWOj2zMx5mR63tfRb1aUfxZwNmNPvRsgPnXYgd5xus-V5WpeR7K7Yg1Z7nUWfl8P9OyhYy157zh2l7BAceYbcta5lwUiOUVPwAqCRiXIjDccUREHD14YhEbaDeX8A7Ug4dw:1r8z6f:jA7KhXtQ5zp7pzyKwACQ9YXGzdu5lrFhfDWjWcvz7bo', '2023-12-15 08:42:41.005385'),
('36w7pe8ft0xqpp3mrvyun8kyojwsv55v', 'e30:1rHgpy:LQuuz_8zfNom715zlfRAD1ZtyfCVcmgDLnmNY-b_bJw', '2024-01-08 09:01:26.572727'),
('3ama7e19lktm7p7k3nnctbyw0qbs6k2a', '.eJxVjEEOwiAQRe_C2pApQ5F26d4zkCkDFjXQlDbRGO-uTbrQ7X_vv5dwtC6jW2uYXWLRCxSH320gfwt5A3ylfCnSl7zMaZCbInda5blwuJ929y8wUh2_b98YQuDYBsWaQR8ZQYNRhEE3htvoSetomTu00RqMqLoWVIMWO1AatmgNtaaSXXhMaX6KHt4fbTg-Ew:1rVsDe:SidFmdaL1c3SPhIoV-ZbtFIDpqzh3yPdmUrhUHmM6Xk', '2024-02-16 12:00:30.784219'),
('3zppaphhotojeh7o75qg4m4sx7ap7t4l', '.eJxVjEEOwiAQRe_C2hBKaaFduvcMZGaYWtSAKW2iMd5dSbrQ7X_vv5fwsK2z3wovPgYxCi0OvxsCXTlVEC6QzllSTusSUVZF7rTIUw58O-7uX2CGMtd3Q25A6xRohQ1pNxhlKECPioBt1wStuSdE14aWetsF1tx9bT1ZBDPVaOFSYk6eH_e4PMWo3h-g6j-0:1rcgTG:yKcpdg9_UpRMkfx_UmWxJRuwnYblfeo6s-d2fteWdyQ', '2024-03-06 06:52:46.646786'),
('49bw319pln0h6kkgzbes3qe29gffgasw', '.eJxVjE0OwiAUhO_C2pBHgUK7dO8ZCD-vFjXQQJtojHe3JF3oajLzzcybGLuts9kqFhMDGQknp9_MWX_H1EC42XTN1Oe0luhoq9CDVnrJAR_no_t3MNs672uFSgDjTjdRmnXQaRBBykk7ZaUfEGA3_TBxjsAmLb0InPWhs6zXTLTTirXGnAw-l1heZITPFyyEPY0:1rUiET:r4RA-8pNOCuz-bVRnmFYKfWz3Hv_TlT9nwLO_Tn7tEs', '2024-02-13 07:08:33.170810'),
('4vd56czhoy95olgl49dgtd5tdxaul6h9', '.eJxVjEEOwiAQRe_C2hBKaaFduvcMZGaYWtSAKW2iMd5dSbrQ7X_vv5fwsK2z3wovPgYxCi0OvxsCXTlVEC6QzllSTusSUVZF7rTIUw58O-7uX2CGMtd3Q25A6xRohQ1pNxhlKECPioBt1wStuSdE14aWetsF1tx9bT1ZBDPVaOFSYk6eH_e4PMWo3h-g6j-0:1rgKxX:Bcb_2z9M6CFPPvQOtE8vMu0BrxMK_MSDIXDkk1HLDMw', '2024-03-16 08:43:07.209849'),
('5a4bpx3b941zexo5js6n6m2bnh425v19', '.eJxVjEEOwiAQRe_C2pApQ5F26d4zkCkDFjXQlDbRGO-uTbrQ7X_vv5dwtC6jW2uYXWLRCxSH320gfwt5A3ylfCnSl7zMaZCbInda5blwuJ929y8wUh2_b98YQuDYBsWaQR8ZQYNRhEE3htvoSetomTu00RqMqLoWVIMWO1AatmgNtaaSXXhMaX6KHt4fbTg-Ew:1raUb8:wtVwvxvb56DvFw2KlVdjv9IWzGiQ9oQTwoxqlj76Qek', '2024-02-29 05:47:50.447853'),
('66acjr927k7rupajl4mcw2siuc2dsn8b', 'e30:1rHh7O:PXNzmHuKvmKLUzwy5H_0i5OythgyxbGBdLTI16ATzS4', '2024-01-08 09:19:26.460529'),
('6iz5r0j062rslz7ujjbl3d6zvlhddl7d', 'e30:1rHhCM:EsJ2zsrL9rQcsjfYEN3HNu_VmptGu_gBVpCVXgu0LsI', '2024-01-08 09:24:34.604237'),
('6mh0vcvhed885e3n5pc296t0u2eb1pk6', '.eJxVjEEOwiAQRe_C2pApQ5F26d4zkCkDFjXQlDbRGO-uTbrQ7X_vv5dwtC6jW2uYXWLRCxSH320gfwt5A3ylfCnSl7zMaZCbInda5blwuJ929y8wUh2_b98YQuDYBsWaQR8ZQYNRhEE3htvoSetomTu00RqMqLoWVIMWO1AatmgNtaaSXXhMaX6KHt4fbTg-Ew:1rar5D:AbhiJQlkw9glI-zMDYk2n6EtYGKebOUW185WYPCNktY', '2024-03-01 05:48:23.560350'),
('8974w3elf2hkhz29vees2vqkh7pku392', 'e30:1rHjPC:ecQtQuFH3wCm1m7aGYthNfZjmJ9tVohykw99q1n7p-g', '2024-01-08 11:45:58.618252'),
('9kbnxp37wres8t6olyb5wa8ysqfqi5hm', '.eJxVjMsOwiAQRf-FtSEjtDxcuvcbyMBMLWrAlDbRGP9dm3Sh23vOPS8RcJnHsDSeQiZxEFrsfreI6cplBXTBcq4y1TJPOcpVkRtt8lSJb8fN_QuM2Mbv2xuwAE5xsira5BE73e-HDh1w76I10UQYBjZdcg6pT568I69BJdJK2zXauLVcS-DHPU9PcYD3B3qgPvA:1rIoSn:QgO1SVpDpvTZAK0B0-h67wwzbWBPjjDcA7b_hG0pXfk', '2024-01-11 11:22:09.183295'),
('a5wyfmyrsr8hanmeyjppar95w6rqdnku', '.eJxVjEEOwiAQRe_C2pApQ5F26d4zkCkDFjXQlDbRGO-uTbrQ7X_vv5dwtC6jW2uYXWLRCxSH320gfwt5A3ylfCnSl7zMaZCbInda5blwuJ929y8wUh2_b98YQuDYBsWaQR8ZQYNRhEE3htvoSetomTu00RqMqLoWVIMWO1AatmgNtaaSXXhMaX6KHt4fbTg-Ew:1rY37h:9Do8R1gFBWYiYVo5CMfCEfMGn8iQ3Xm0zT_emF5tm8A', '2024-02-22 12:03:21.884688'),
('azmy1svbqw41gcbxvlk8uuff21xxhhs4', '.eJxVjMsOgjAUBf-la9O0F_rApXu_gdwXFjWQUFgZ_11JWOj2zMx5mR63tfRb1aUfxZwNmNPvRsgPnXYgd5xus-V5WpeR7K7Yg1Z7nUWfl8P9OyhYy157zh2l7BAceYbcta5lwUiOUVPwAqCRiXIjDccUREHD14YhEbaDeX8A7Ug4dw:1rdNag:NLfgRm0_BMDMojliyZ0IK6yYvWLi8KjTHJZ_v_jri_E', '2024-03-08 04:55:18.828128'),
('c9hrd9ljxt7111h7u21rrwjtbw4klrvo', '.eJxVjMsOwiAQRf-FtSEjtDxcuvcbyMBMLWrAlDbRGP9dm3Sh23vOPS8RcJnHsDSeQiZxEFrsfreI6cplBXTBcq4y1TJPOcpVkRtt8lSJb8fN_QuM2Mbv2xuwAE5xsira5BE73e-HDh1w76I10UQYBjZdcg6pT568I69BJdJK2zXauLVcS-DHPU9PcYD3B3qgPvA:1rQief:375RU6_4MqzubAa4K7uheozBHZ4Kh-FPbrMnHrPZvzQ', '2024-02-02 06:47:05.376917'),
('d2zcv9fobknwy614ce8l2ter7glexo6o', '.eJxVjk0OgjAQhe_SNWlKp9Ti0r1naIbOFKqkGAqJxnh3IWGh2_e9v7fwuC6DXwvPPpE4CxDVr9ZhuHPeAd0w95MMU17m1MndIg9a5HUiHi-H969gwDJs6VBbBEWxYU2GlDkRKKOsRmBTW2piQGOiI2rBRWchgm4bpWtw0Cpt1F5auJQ0Zc_PR5pf4qwqUXjksDD5cTu3Ys_bFGfx-QLuLkbA:1rbfgS:eAnLvVt0VxBeC5UtLi2l4ZUMhUKN4aawtU2_YsPXrso', '2024-03-03 11:50:12.240084'),
('dqkrrghfujpvirry8p0hg42gw63qw0il', '.eJxVjEEOwiAQRe_C2pApQ5F26d4zkCkDFjXQlDbRGO-uTbrQ7X_vv5dwtC6jW2uYXWLRCxSH320gfwt5A3ylfCnSl7zMaZCbInda5blwuJ929y8wUh2_b98YQuDYBsWaQR8ZQYNRhEE3htvoSetomTu00RqMqLoWVIMWO1AatmgNtaaSXXhMaX6KHt4fbTg-Ew:1rX8IK:TgOLbffoG9S2LOWgX6eLYBQ9wWqp220a0fXTBFNF31k', '2024-02-19 23:22:32.833064'),
('dth0u10jl4bqvlltfrwny4yx1w97niya', '.eJxVjMsOgjAUBf-la9O0F_rApXu_gdwXFjWQUFgZ_11JWOj2zMx5mR63tfRb1aUfxZwNmNPvRsgPnXYgd5xus-V5WpeR7K7Yg1Z7nUWfl8P9OyhYy157zh2l7BAceYbcta5lwUiOUVPwAqCRiXIjDccUREHD14YhEbaDeX8A7Ug4dw:1r8wx1:_AbRbMfsZERJcykO3riEJRcXAJt7Y3Qbt_QD0Ttf9_k', '2023-12-15 06:24:35.153100'),
('dx9bh90ojuh15lff8tszpoydq2vshpnd', '.eJxVjMsOgjAUBf-la9O0F_rApXu_gdwXFjWQUFgZ_11JWOj2zMx5mR63tfRb1aUfxZwNmNPvRsgPnXYgd5xus-V5WpeR7K7Yg1Z7nUWfl8P9OyhYy157zh2l7BAceYbcta5lwUiOUVPwAqCRiXIjDccUREHD14YhEbaDeX8A7Ug4dw:1rXxX7:A_wMXCf5LZ1ru5EAsHwGJ6YTg6g1fxMN3W9KNVCKD9Q', '2024-02-22 06:05:13.302547'),
('giaavs0f6mwb5bhs0bato5pyl5yziew1', 'e30:1rHhCU:1TE8fkrN5BYebY_geWvPVI1m63wjuRqnSkwn1aXaJHk', '2024-01-08 09:24:42.212575'),
('gmw7cq5kkxdbsppn43gutkzgo15sqxym', '.eJxVjEEOwiAQRe_C2pApQ5F26d4zkCkDFjXQlDbRGO-uTbrQ7X_vv5dwtC6jW2uYXWLRCxSH320gfwt5A3ylfCnSl7zMaZCbInda5blwuJ929y8wUh2_b98YQuDYBsWaQR8ZQYNRhEE3htvoSetomTu00RqMqLoWVIMWO1AatmgNtaaSXXhMaX6KHt4fbTg-Ew:1raW6D:oRJqDrQ3QychHKrbG3a3nTTsMrhSzltMW1LLENv77_Q', '2024-02-29 07:24:01.532434'),
('hs02eobw3m8f3ynonyp9jfntkkatnyb7', 'e30:1rHhRY:s70d-crfMqNi6lfEDqM-W9fPAcms6r01gXVhmzrHb1Y', '2024-01-08 09:40:16.260838'),
('i9l4u3eftfwbzato5l36e0tridhdwhap', '.eJxVjEEOwiAQRe_C2pApQ5F26d4zkCkDFjXQlDbRGO-uTbrQ7X_vv5dwtC6jW2uYXWLRCxSH320gfwt5A3ylfCnSl7zMaZCbInda5blwuJ929y8wUh2_b98YQuDYBsWaQR8ZQYNRhEE3htvoSetomTu00RqMqLoWVIMWO1AatmgNtaaSXXhMaX6KHt4fbTg-Ew:1rWxa8:pAp3OGbYdrdf1ORfCj59i4umuYgvQL2C_TlKBeUDad8', '2024-02-19 11:56:12.205469'),
('ijht0wg0pp7u7ouvw0n2g6jy39huxcpv', 'e30:1rHjP5:1T6MhyPXQk5lOAYgTNgt5rdgQ_IQ-lXymnjj-hcjMZ0', '2024-01-08 11:45:51.761350'),
('jp3w2a41dzr25vfgh17v89nl7endycvu', 'e30:1rHhCJ:2ivhUz-FMW3gEiR-k-rPwxqLTKetTFd4_kRWeWRovxQ', '2024-01-08 09:24:31.662644'),
('k02nbzbvzujsyjh8t22pruvhslup60bl', '.eJxVjEEOwiAQRe_C2pApQ5F26d4zkCkDFjXQlDbRGO-uTbrQ7X_vv5dwtC6jW2uYXWLRCxSH320gfwt5A3ylfCnSl7zMaZCbInda5blwuJ929y8wUh2_b98YQuDYBsWaQR8ZQYNRhEE3htvoSetomTu00RqMqLoWVIMWO1AatmgNtaaSXXhMaX6KHt4fbTg-Ew:1rVoMm:Qv2qSpLVbsnPpHH7AuECg3iUij8Ytefsi6b7xn12psY', '2024-02-16 07:53:40.475531'),
('k4n7balwu1ka0nyxxfp90rf09rvzsbys', '.eJxVjE0OwiAUhO_C2pBHgUK7dO8ZCD-vFjXQQJtojHe3JF3oajLzzcybGLuts9kqFhMDGQknp9_MWX_H1EC42XTN1Oe0luhoq9CDVnrJAR_no_t3MNs672uFSgDjTjdRmnXQaRBBykk7ZaUfEGA3_TBxjsAmLb0InPWhs6zXTLTTirXGnAw-l1heZITPFyyEPY0:1rUzon:rsLQ03Jf-kykQtbA8y7xEMMChhLxPmsqbP81KYcxcKo', '2024-02-14 01:55:13.638269'),
('l4jbk7mh1iz3641eigskc80ebuv9w8fp', 'e30:1rHjQa:7UqdlZsnD4WNzyJ2RTybP0ygl5uhDoYab3R2J7RFI0M', '2024-01-08 11:47:24.056279'),
('lrgk585n5fmr2stsj1fr9593x45ddf3a', '.eJxVjEEOwiAQRe_C2pApQ5F26d4zkCkDFjXQlDbRGO-uTbrQ7X_vv5dwtC6jW2uYXWLRCxSH320gfwt5A3ylfCnSl7zMaZCbInda5blwuJ929y8wUh2_b98YQuDYBsWaQR8ZQYNRhEE3htvoSetomTu00RqMqLoWVIMWO1AatmgNtaaSXXhMaX6KHt4fbTg-Ew:1rXK0L:mhJsgVkwy0MCwtpbJmYNkU8Ua-A9BZmyZBYxUgiR9pc', '2024-02-20 11:52:45.769315'),
('lvy8qs5gancbns4nwgfth5ccawp6c7f1', 'e30:1rHgoj:Bht1vPFnk4-PGjTxqqcBW7GY0g-g3Swfl6YukVehRE4', '2024-01-08 09:00:09.495620'),
('m6f1icr6uxnypk6eg6a0w8tscigfa5ji', 'e30:1rHgpJ:H6_c4mt4sPt6LqQRZHWU1WkBMNV7MAvU6V_PfmRP9xE', '2024-01-08 09:00:45.689781'),
('mal5ixyqlm42jlcpsjnv2getciy82jj9', '.eJxVjEEOwiAQRe_C2pApQ5F26d4zkCkDFjXQlDbRGO-uTbrQ7X_vv5dwtC6jW2uYXWLRCxSH320gfwt5A3ylfCnSl7zMaZCbInda5blwuJ929y8wUh2_b98YQuDYBsWaQR8ZQYNRhEE3htvoSetomTu00RqMqLoWVIMWO1AatmgNtaaSXXhMaX6KHt4fbTg-Ew:1rXu7E:oqvZKMuuXN-NFWkB0wR9F6ByVxEUTkuZYNacVrl7tTU', '2024-02-22 02:26:16.523223'),
('nc0x8ezks3g8in4gy034615eo1sze82p', '.eJxVjEEOwiAQRe_C2hBKaaFduvcMZGaYWtSAKW2iMd5dSbrQ7X_vv5fwsK2z3wovPgYxCi0OvxsCXTlVEC6QzllSTusSUVZF7rTIUw58O-7uX2CGMtd3Q25A6xRohQ1pNxhlKECPioBt1wStuSdE14aWetsF1tx9bT1ZBDPVaOFSYk6eH_e4PMWo3h-g6j-0:1rgwxM:iJ6xAv_5tjrptiiRIydLoxV4n1kML5KplnfK3skoNEs', '2024-03-18 01:17:28.492346'),
('p4upy3vjte2if5i148xo671glj8o1hm6', '.eJxVjEEOwiAQRe_C2pApQ5F26d4zkCkDFjXQlDbRGO-uTbrQ7X_vv5dwtC6jW2uYXWLRCxSH320gfwt5A3ylfCnSl7zMaZCbInda5blwuJ929y8wUh2_b98YQuDYBsWaQR8ZQYNRhEE3htvoSetomTu00RqMqLoWVIMWO1AatmgNtaaSXXhMaX6KHt4fbTg-Ew:1rVmSx:R5_L1zR8OFugQphMggXv6PghJMS07M0vqam0dOne3U8', '2024-02-16 05:51:55.303875'),
('pq5m7xgvn28kc3q7ng41cnfuzx1o5l0j', '.eJxVjEEOwiAQRe_C2pApQ5F26d4zkCkDFjXQlDbRGO-uTbrQ7X_vv5dwtC6jW2uYXWLRCxSH320gfwt5A3ylfCnSl7zMaZCbInda5blwuJ929y8wUh2_b98YQuDYBsWaQR8ZQYNRhEE3htvoSetomTu00RqMqLoWVIMWO1AatmgNtaaSXXhMaX6KHt4fbTg-Ew:1rVuwd:KrRgzNVUrgu-OGX0qo8Xr7hcVJunWzWu2Co06yWWPzM', '2024-02-16 14:55:07.485572'),
('q15mubdqhxwkyvj5zy60ov3rkcsqn2ee', '.eJxVjEEOwiAQRe_C2hBKaaFduvcMZGaYWtSAKW2iMd5dSbrQ7X_vv5fwsK2z3wovPgYxCi0OvxsCXTlVEC6QzllSTusSUVZF7rTIUw58O-7uX2CGMtd3Q25A6xRohQ1pNxhlKECPioBt1wStuSdE14aWetsF1tx9bT1ZBDPVaOFSYk6eH_e4PMWo3h-g6j-0:1rfwwc:4iTfG8sEMUHuuTcp_9fpbb6k2bNbbDMO9Kw0PZm9kNA', '2024-03-15 07:04:34.908370'),
('qushtqxjs70s3or67a8asnb13rfn26uc', 'e30:1rHj8e:a-Gm9PJutActcrMUZ-W9sLx4EZODRBZvn0XjRRqgunE', '2024-01-08 11:28:52.755782'),
('r0f5j7a6sxvvowrkgo7zgq6y6ctals9c', 'e30:1rHgf7:GqHB0Q4MWnI4zQOcaHHHjMitG6dENCs2V9WI6B98mak', '2024-01-08 08:50:13.040742'),
('r5wsesyilbk6suy937yvmqmdesgiyzom', 'e30:1rHiQE:Y54wsPrPy-ukD0WxaE3v7NUJWqWCUUgBFKhkGYMvqOs', '2024-01-08 10:42:58.792025'),
('rcpuc9xpp6nrcehvdi3c3n6kadcc7uro', '.eJxVjEEOwiAQRe_C2hBKaaFduvcMZGaYWtSAKW2iMd5dSbrQ7X_vv5fwsK2z3wovPgYxCi0OvxsCXTlVEC6QzllSTusSUVZF7rTIUw58O-7uX2CGMtd3Q25A6xRohQ1pNxhlKECPioBt1wStuSdE14aWetsF1tx9bT1ZBDPVaOFSYk6eH_e4PMWo3h-g6j-0:1rghHb:gjuYXgQSjd-dkOQ43V0qQgYDDIj0X97ctV74VrC94E4', '2024-03-17 08:33:19.964777'),
('ti000s6idfjf3eqsnp2nr7ilralp4mf8', 'e30:1rHjNO:-VWklrjJfQGXhyEF6C4VUXuVgBpSw5u0d1NbsnS3j0k', '2024-01-08 11:44:06.519033'),
('vwh8vp05m7y3v4tlbbon8x7hrts1ttoq', '.eJxVjEEOwiAQRe_C2pApQ5F26d4zkCkDFjXQlDbRGO-uTbrQ7X_vv5dwtC6jW2uYXWLRCxSH320gfwt5A3ylfCnSl7zMaZCbInda5blwuJ929y8wUh2_b98YQuDYBsWaQR8ZQYNRhEE3htvoSetomTu00RqMqLoWVIMWO1AatmgNtaaSXXhMaX6KHt4fbTg-Ew:1raEn1:-2r-vINxiwWjp3Cyg7oqWnKkgEzYgj9EFStnLki8zcE', '2024-02-28 12:55:03.111912'),
('wpedlkjagrddb8gbyk4higchohx9bq9m', '.eJxVjEEOwiAQRe_C2hBKaaFduvcMZGaYWtSAKW2iMd5dSbrQ7X_vv5fwsK2z3wovPgYxCi0OvxsCXTlVEC6QzllSTusSUVZF7rTIUw58O-7uX2CGMtd3Q25A6xRohQ1pNxhlKECPioBt1wStuSdE14aWetsF1tx9bT1ZBDPVaOFSYk6eH_e4PMWo3h-g6j-0:1rZhUM:oTKh6nP4CC6Bu34wbWzvfVDYjXbXxBoQ1KfdoDyrjEU', '2024-02-27 01:21:34.583725'),
('wy9ln4yjwssq72wb5leoeufro9z4nu92', '.eJxVjEEOwiAQRe_C2hBKaaFduvcMZGaYWtSAKW2iMd5dSbrQ7X_vv5fwsK2z3wovPgYxCi0OvxsCXTlVEC6QzllSTusSUVZF7rTIUw58O-7uX2CGMtd3Q25A6xRohQ1pNxhlKECPioBt1wStuSdE14aWetsF1tx9bT1ZBDPVaOFSYk6eH_e4PMWo3h-g6j-0:1rgafr:Ywwc0xVx2Vr6rqfRx_LsBrBZU3elM9gHrosQJzFPWbg', '2024-03-17 01:29:55.127740'),
('xd71x681qom24hke83m7nv2q0e9113wr', '.eJxVjEEOwiAQRe_C2pApQ5F26d4zkCkDFjXQlDbRGO-uTbrQ7X_vv5dwtC6jW2uYXWLRCxSH320gfwt5A3ylfCnSl7zMaZCbInda5blwuJ929y8wUh2_b98YQuDYBsWaQR8ZQYNRhEE3htvoSetomTu00RqMqLoWVIMWO1AatmgNtaaSXXhMaX6KHt4fbTg-Ew:1rY3Cm:jZw8d3ek7joGb6kvVxXtyCbLTmItLikp6pwDyJem6So', '2024-02-22 12:08:36.223845'),
('y9vflg324i5j1cyy1dvklyjoidk2xvab', '.eJxVjMsOwiAQRf-FtSHIG5fu-w1kmAGpGkhKuzL-uzbpQrf3nHNfLMK21riNvMSZ2IUpdvrdEuAjtx3QHdqtc-xtXebEd4UfdPCpU35eD_fvoMKo3zpY4YTwMqOTyWEA0MqciwYvsvHJ2WSTKCVbjd4DGQwUPAUlJJKSyrH3B9ZON7M:1rBq1p:T4_sly8SoQyThfQpPJ0eYvM5fXy69kWUX-9gcAL9gCI', '2023-12-23 05:37:29.789039'),
('ypg18qbt8emsm1r7jvr1clf30r6e3hma', '.eJxVjMsOwiAQRf-FtSEjtDxcuvcbyMBMLWrAlDbRGP9dm3Sh23vOPS8RcJnHsDSeQiZxEFrsfreI6cplBXTBcq4y1TJPOcpVkRtt8lSJb8fN_QuM2Mbv2xuwAE5xsira5BE73e-HDh1w76I10UQYBjZdcg6pT568I69BJdJK2zXauLVcS-DHPU9PcYD3B3qgPvA:1rR0L8:pYT8dP4Sp66mhIO0h61vq7FomcEZWvoYRpr_MFkXr04', '2024-02-03 01:40:06.869065'),
('yq6esxtxcvoehmkx7owxjmphgv8rbjaz', '.eJxVjMsOgjAUBf-la9O0F_rApXu_gdwXFjWQUFgZ_11JWOj2zMx5mR63tfRb1aUfxZwNmNPvRsgPnXYgd5xus-V5WpeR7K7Yg1Z7nUWfl8P9OyhYy157zh2l7BAceYbcta5lwUiOUVPwAqCRiXIjDccUREHD14YhEbaDeX8A7Ug4dw:1rWD6g:eWCwXnhj6LIfltLDUybGWkspjU2isfnjQKrNHs1pOLE', '2024-02-17 10:18:42.236791'),
('zuhomvbdwy69kdcgeehusy6919tapo0p', '.eJxVjEEOwiAQRe_C2pApQ5F26d4zkCkDFjXQlDbRGO-uTbrQ7X_vv5dwtC6jW2uYXWLRCxSH320gfwt5A3ylfCnSl7zMaZCbInda5blwuJ929y8wUh2_b98YQuDYBsWaQR8ZQYNRhEE3htvoSetomTu00RqMqLoWVIMWO1AatmgNtaaSXXhMaX6KHt4fbTg-Ew:1ra4vp:S53GaZI0vi4XMjgOPNjanuqisZkiU4LNKvLPFCtGrwM', '2024-02-28 02:23:29.318130');

-- --------------------------------------------------------

--
-- テーブルの構造 `django_site`
--

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- テーブルの構造 `kitchen`
--

CREATE TABLE `kitchen` (
  `id` bigint(20) NOT NULL,
  `kitchen` varchar(100) NOT NULL,
  `property_detail_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `kitchen`
--

INSERT INTO `kitchen` (`id`, `kitchen`, `property_detail_id`) VALUES
(1, 'カウンターキッチン', 2),
(2, 'システムキッチン', 2),
(3, '３口以上コンロ', 2),
(4, 'IHコンロ', 5),
(5, 'コンロ2口', 6),
(6, 'IHコンロ', 7);

-- --------------------------------------------------------

--
-- テーブルの構造 `like`
--

CREATE TABLE `like` (
  `id` bigint(20) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `like_id` int(11) NOT NULL,
  `property_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `like`
--

INSERT INTO `like` (`id`, `timestamp`, `like_id`, `property_id`) VALUES
(48, '2024-02-12 11:43:20.913751', 3, 2),
(51, '2024-02-18 04:55:17.821213', 3, 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `like_review`
--

CREATE TABLE `like_review` (
  `id` bigint(20) NOT NULL,
  `review_title` varchar(100) NOT NULL,
  `review_content` varchar(1000) NOT NULL,
  `rate` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `property_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `like_review`
--

INSERT INTO `like_review` (`id`, `review_title`, `review_content`, `rate`, `created_at`, `updated_at`, `property_id`, `user_id`) VALUES
(3, 'カレー', '良くも悪くも常にカレーの香りがします。', 3, '2024-02-21 02:48:51.610969', '2024-02-21 02:48:51.611022', 1, 13),
(4, 'トテモイイカンジ', 'とても住みやすくていい感じです', 3, '2024-02-21 02:50:32.394434', '2024-02-21 02:51:30.831160', 1, 14),
(5, '定期的にイベント開催されます', 'インド本場のカレーを楽しめるかも', 2, '2024-02-21 02:51:28.088328', '2024-02-21 02:51:28.088367', 1, 15);

-- --------------------------------------------------------

--
-- テーブルの構造 `other`
--

CREATE TABLE `other` (
  `id` bigint(20) NOT NULL,
  `other` varchar(100) NOT NULL,
  `property_detail_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `other`
--

INSERT INTO `other` (`id`, `other`, `property_detail_id`) VALUES
(1, '宅配ＢＯＸ', 2),
(2, 'バイク置き場', 2),
(3, '駐車場', 5),
(4, '駐車場', 10);

-- --------------------------------------------------------

--
-- テーブルの構造 `property`
--

CREATE TABLE `property` (
  `id` bigint(20) NOT NULL,
  `property_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `deposit_key_money` varchar(20) NOT NULL,
  `year_built` int(11) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `picture_url` varchar(100) NOT NULL,
  `station` varchar(1000) NOT NULL,
  `walk_minute` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `property_type_id` bigint(20) NOT NULL,
  `ward_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `property`
--

INSERT INTO `property` (`id`, `property_name`, `address`, `deposit_key_money`, `year_built`, `phone_number`, `picture_url`, `station`, `walk_minute`, `created_at`, `updated_at`, `property_type_id`, `ward_id`) VALUES
(1, 'ＨＦ西新宿レジデンスＷＥＳＴ', '東京都新宿区西新宿８', 'なし', 18, '070-5982-0989', 'property_main/ＨＦ西新宿レジデンスＷＥＳＴ.jpeg', '東京メトロ丸ノ内線/西新宿駅', 8, '2023-12-01 07:03:39.927288', '2024-02-16 08:22:16.520593', 1, 3),
(2, 'パークアクシス日本橋浜町', '東京都中央区日本橋浜町１', '12.6', 20, '070-3432-0678', 'property_main/2_PHdYZKq.jpeg', '東京メトロ日比谷線/人形町駅', 10, '2023-12-01 07:07:16.553707', '2024-02-21 00:36:02.149200', 2, 2),
(3, 'リューズ・リバー月島', '東京都中央区月島４', '15.3', 25, '070-9167-2874', 'property_main/リューズリバー月島.jpg', '都営大江戸線/勝どき駅', 5, '2023-12-01 07:10:13.214284', '2024-02-21 00:36:47.198040', 3, 2),
(4, 'プライマル月島', '東京都中央区月島1', '10.8', 5, '070-9377-5106', 'property_main/15.png', '都営大江戸線/月島駅', 13, '2023-12-01 07:12:58.432445', '2024-02-21 06:40:53.397643', 1, 2),
(5, 'さぎり荘', '東京都渋谷区笹塚１', 'なし', 6, '070-9161-0282', 'property_main/さぎり荘.png', '京王新線/幡ヶ谷駅', 5, '2023-12-01 07:18:23.051353', '2024-02-21 00:37:13.055648', 2, 6),
(6, 'シラユリ荘', '東京都中央区日本橋兜町', 'なし', 17, '070-9217-2439', 'property_main/シラユリ荘.jpg', '東京メトロ銀座線/日本橋駅', 11, '2023-12-01 07:23:04.153431', '2024-02-21 00:37:53.401253', 2, 2),
(7, '本駒込ウエスト', '東京都文京区本駒込２', '10.2', 9, '070-3434-5253', 'property_main/本駒込ウエスト.jpg', '都営三田線/千石駅', 5, '2023-12-01 07:25:42.840708', '2024-02-21 00:38:08.341357', 3, 4),
(8, '笹塚YKハウス', '東京都渋谷区笹塚１', '5.55', 8, '070-9911-4663', 'property_main/スクリーンショット_20231201_154135.png', '京王線/笹塚駅', 4, '2023-12-01 07:32:12.564040', '2024-02-21 00:38:28.049991', 1, 6),
(9, 'セレニウム神原', '東京都千代田区鍛冶町4', '14.0', 8, '070-5753-8631', 'property_main/14.png', '東京メトロ日比谷線/秋葉原駅', 7, '2023-12-01 07:34:40.555482', '2024-02-21 02:45:15.792224', 3, 1),
(10, 'ツバキ荘', '東京都文京区湯島1', '12.6', 11, '070-3422-4822', 'property_main/ツバキ荘.jpg', 'ＪＲ総武線/御茶ノ水駅', 12, '2023-12-01 07:40:31.771089', '2024-02-21 00:39:29.377169', 2, 4),
(11, '北品川グロシレジデンス', '東京都港区港南１', '19.5', 17, '070-9087-1019', 'property_main/北品川グロシレジデンス.png', 'ＪＲ山手線/品川駅', 1, '2023-12-01 07:44:02.243125', '2024-02-21 00:39:56.062246', 1, 5),
(12, 'アーズネック千代田淡路町', '東京都千代田区神田小川町3', '9', 2, '070-5787-2652', 'property_main/アーズネックs千代田淡路町.jpg', '東京メトロ千代田線/大手町駅', 8, '2023-12-01 07:47:47.270175', '2024-02-21 00:40:23.676694', 1, 1),
(13, 'オレオール代々木', '東京都渋谷区代々木2-27-18', 'なし', 15, '070-3498-2081', 'property_main/オレオール代々木.png', 'ＪＲ山手線/代々木駅', 4, '2023-12-01 08:25:32.124817', '2024-02-07 04:30:12.299086', 1, 6),
(14, '増井第一マンション', '東京都港区六本木４', 'なし', 6, '070-6042-5945', 'property_main/増井マンションs.png', '東京メトロ日比谷線/六本木駅', 6, '2023-12-01 08:42:41.366796', '2024-02-21 00:40:46.529458', 1, 5),
(15, 'ディシアガーデン広尾', '東京都港区南麻布５', 'なし', 18, '070-8953-0698', 'property_main/ディシアガーデン広尾.png', '東京メトロ日比谷線/広尾駅', 3, '2023-12-01 08:58:05.720371', '2024-02-07 04:29:37.257645', 3, 5),
(16, '神田ホタルビ', '神田鍛冶町', '4.0', 25, '070-6373-7607', 'property_main/神田ホタルビ.jpg', '東京メトロ日比谷線/神保駅', 8, '2024-02-16 07:43:55.159288', '2024-02-21 00:54:04.677115', 1, 1),
(17, '富士ハウス', '東京都千代田区富士見', 'なし', 32, '070-2516-1229', 'property_main/富士ハウス.png', 'JR新宿線/市ヶ谷駅', 10, '2024-02-16 07:49:30.610206', '2024-02-21 00:53:54.825161', 1, 1),
(18, '新橋ベルザーク', '東京都港区新橋1丁目', '8.0', 18, '070-9702-5629', 'property_main/新橋ベルザーク.png', '大江戸線/大門駅', 5, '2024-02-16 07:54:27.883322', '2024-02-21 00:53:19.638252', 3, 5),
(19, 'しんぱち', '東京都港区新橋2丁目', 'なし', 22, '070-8935-2532', 'property_main/01_xr00FKM.png', '浅草線/大門駅', 5, '2024-02-16 07:58:33.383174', '2024-02-21 01:47:37.555968', 3, 5),
(20, '三楽ウッド', '東京都渋谷区猿楽町2丁目', '6.0', 20, '070-8887-0022', 'property_main/02_nqeEnVT.png', '東急東横線/代官山駅', 4, '2024-02-16 08:03:47.266416', '2024-02-21 01:47:48.196005', 1, 6),
(21, 'シルフィード神泉', '東京都渋谷区神泉町1丁目', 'なし', 15, '070-9994-2703', 'property_main/04_74hwJjG.png', '京王井の頭線/神泉駅', 3, '2024-02-16 08:07:43.139735', '2024-02-21 01:48:07.975503', 1, 6),
(22, 'バカラアイ・ケー', '西片3丁目', '7.0', 17, '070-9389-8684', 'property_main/06_KB5dTwS.png', '南北線/東大前駅', 4, '2024-02-16 08:13:27.839411', '2024-02-21 01:48:32.692126', 1, 4),
(23, '文京ベーゼ', '東京都文京区西片4丁目', '6.0', 12, '070-5767-6403', 'property_main/05_7uNhqVU.png', '三田線/春日駅', 2, '2024-02-16 08:16:50.999525', '2024-02-21 01:48:17.076283', 3, 4),
(24, '文京ゼータ', '東京都文京区小石川', 'なし', 16, '070-6375-4388', 'property_main/07_XL1HCjF.png', '大江戸線/春日駅', 4, '2024-02-16 08:20:53.172073', '2024-02-21 01:48:41.003390', 1, 4),
(25, '小石川ヒルズ', '東京都文京区小石川2丁目', '8.0', 11, '070-9515-3332', 'property_main/08_Uqp0q5b.png', '大江戸線/春日駅', 6, '2024-02-16 08:25:21.531359', '2024-02-21 01:48:53.824200', 1, 4),
(26, '湊イチ', '東京都中央区湊1丁目', '12.0', 14, '070-9774-5439', 'property_main/13_uTOy2Ak.png', 'JR京葉線/八丁堀駅', 6, '2024-02-16 08:30:20.469925', '2024-02-21 01:52:24.991339', 1, 2),
(27, '八丁堀ホリーナ', '東京都中央区神田鍛冶町', '4.0', 10, '070-9381-5092', 'property_main/10_IwFDu2T.png', 'JR京葉線/八丁堀駅', 5, '2024-02-16 08:33:01.804724', '2024-02-21 01:49:07.023195', 1, 2),
(28, 'トリニティ新大久保', '東京都新宿区大久保1丁目', '7.0', 19, '070-9562-6261', 'property_main/09_I661c1W.png', 'JR山手線/新大久保駅', 3, '2024-02-16 08:37:17.264294', '2024-02-21 01:50:44.986103', 3, 3),
(29, 'トリフラ', '東京都新宿区百人町2丁目', '10.2', 19, '070-5771-0266', 'property_main/11_fi9EnJU.png', 'JR山手線/新大久保駅', 3, '2024-02-16 08:39:46.043282', '2024-02-21 01:50:58.962900', 1, 3),
(30, '甘雨', '東京都渋谷区恵比寿西1丁目', '7.0', 35, '070-9447-1009', 'property_main/12_G5vWMVU.png', '東急東横線/代官山駅', 5, '2024-02-16 08:42:50.735338', '2024-02-21 01:51:09.983398', 1, 6);

-- --------------------------------------------------------

--
-- テーブルの構造 `property_detail`
--

CREATE TABLE `property_detail` (
  `id` bigint(20) NOT NULL,
  `layout` varchar(100) NOT NULL,
  `area` int(11) NOT NULL,
  `rent` int(11) NOT NULL,
  `credit` tinyint(1) NOT NULL,
  `management_fee` int(11) NOT NULL,
  `floor` int(11) NOT NULL,
  `room_number` int(11) NOT NULL,
  `position` varchar(50) NOT NULL,
  `remarks` varchar(1000) NOT NULL,
  `property_tour_url` varchar(200) NOT NULL,
  `purchase_status` tinyint(1) NOT NULL,
  `parking_flg` tinyint(1) NOT NULL,
  `pet_flg` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `property_id` bigint(20) NOT NULL,
  `layout_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `property_detail`
--

INSERT INTO `property_detail` (`id`, `layout`, `area`, `rent`, `credit`, `management_fee`, `floor`, `room_number`, `position`, `remarks`, `property_tour_url`, `purchase_status`, `parking_flg`, `pet_flg`, `created_at`, `updated_at`, `property_id`, `layout_img`) VALUES
(2, '3LDK', 86, 106000, 1, 14000, 5, 505, '角部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 0, '2023-12-04 23:50:47.141859', '2024-02-21 02:46:26.711324', 1, 'layout_img/layout_sample_8azPaVu.png'),
(3, '1K', 21, 90000, 1, 0, 6, 601, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 0, 0, 0, '2023-12-05 00:08:01.038161', '2024-02-21 02:29:15.720841', 2, 'layout_img/layout_sample_WdwZN1D.png'),
(4, '1K', 21, 90000, 1, 5000, 5, 501, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2023-12-05 07:48:45.501990', '2024-02-21 02:29:20.765031', 2, 'layout_img/layout_sample_hWkBdsr.png'),
(5, '2LDK', 81, 64000, 1, 20000, 2, 205, '東京都千代田区神田神保町2丁目', '室内設備はエアコン・冷蔵庫など豊富に揃っており、過ごしやすいお部屋になっております。共用部にはエレベータ・フロントサービスなど様々な設備やサービスが揃っているので便利です。', 'https://genshin.hoyoverse.com/ja', 1, 1, 0, '2024-02-08 06:24:08.568832', '2024-02-21 01:07:32.358097', 11, 'layout_img/layout_sample_plSU9FB.png'),
(6, '3LDK', 86, 98000, 1, 30000, 3, 308, '角部屋', 'エレベーターあり。オートロック付き。貸主指定の火災保険要加入。エアコン・冷蔵庫があり、オートロック付きだから安全に生活のできるお部屋', 'https://youtu.be/pEg_d2f6myw?si=dqjZN2bguLBTvH9K', 1, 0, 1, '2024-02-08 06:45:24.550010', '2024-02-21 01:08:02.503162', 4, 'layout_img/layout_sample_qW7zXTT.png'),
(7, '3LDK', 90, 134000, 1, 25000, 4, 415, '角部屋', '家賃＋管理費の1ヶ月分の違約金あり/消毒代:23650円/投てき消火剤:6930円/インターネット登録料:3300円', 'https://www.google.com/?hl=ja', 1, 1, 0, '2024-02-08 07:09:53.605583', '2024-02-21 01:08:11.004490', 8, 'layout_img/layout_sample_L6LRRsp.png'),
(8, '3LDK', 82, 93000, 1, 18000, 2, 208, '出入口階段に近い', '家賃＋管理費の1ヶ月分の違約金あり/消毒代:23650円/投てき消火剤:6930円/インターネット登録料:3300円', 'https://genshin.hoyoverse.com/ja', 1, 1, 0, '2024-02-09 05:58:26.255756', '2024-02-21 01:08:22.428374', 7, 'layout_img/layout_sample_MngJoK3.png'),
(9, '2LDK', 76, 76000, 1, 20000, 5, 506, '角部屋', 'エレベーターあり。オートロック付き。貸主指定の火災保険要加入', 'https://youtu.be/pEg_d2f6myw?si=dqjZN2bguLBTvH9K', 1, 1, 1, '2024-02-09 06:42:42.917949', '2024-02-21 01:08:51.753573', 3, 'layout_img/layout_sample_DNHXmsX.png'),
(10, '3LDK', 75, 98000, 1, 20000, 3, 301, '出入口階段に近い', '室内設備はエアコン・冷蔵庫など豊富に揃っており、過ごしやすいお部屋になっております。共用部にはエレベータ・フロントサービスなど様々な設備やサービスが揃っているので便利です。', 'http://localhost:8000/ad', 1, 1, 0, '2024-02-09 06:47:53.000974', '2024-02-21 01:10:17.573044', 9, 'layout_img/layout_sample_SV5Veaa.png'),
(11, '3LDK', 86, 106000, 1, 14000, 5, 503, '角部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 0, '2023-12-04 23:50:47.141859', '2024-02-21 02:46:26.711324', 1, 'layout_img/layout_sample_8azPaVu.png'),
(12, '3LDK', 86, 106000, 1, 14000, 2, 202, '角部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 0, '2023-12-04 23:50:47.141859', '2024-02-21 02:46:26.711324', 1, 'layout_img/layout_sample_8azPaVu.png'),
(13, '3LDK', 86, 106000, 1, 14000, 2, 205, '角部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 0, '2023-12-04 23:50:47.141859', '2024-02-21 02:46:26.711324', 1, 'layout_img/layout_sample_8azPaVu.png'),
(14, '3LDK', 86, 106000, 1, 14000, 1, 110, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 0, '2023-12-04 23:50:47.141859', '2024-02-21 02:46:26.711324', 1, 'layout_img/layout_sample_8azPaVu.png'),
(15, '3LDK', 86, 106000, 1, 14000, 1, 106, '角部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 0, '2023-12-04 23:50:47.141859', '2024-02-21 02:46:26.711324', 1, 'layout_img/layout_sample_8azPaVu.png'),
(16, '1K', 21, 85000, 1, 5000, 2, 201, '角部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2023-12-05 07:48:45.501990', '2024-02-21 02:29:20.765031', 2, 'layout_img/layout_sample_hWkBdsr.png'),
(17, '1K', 21, 85000, 1, 5000, 2, 204, '角部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2023-12-05 07:48:45.501990', '2024-02-21 02:29:20.765031', 2, 'layout_img/layout_sample_hWkBdsr.png'),
(18, '1K', 21, 85000, 1, 5000, 2, 202, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2023-12-05 07:48:45.501990', '2024-02-21 02:29:20.765031', 2, 'layout_img/layout_sample_hWkBdsr.png'),
(19, '2LDK', 81, 64000, 1, 20000, 2, 202, '東京都千代田区神田神保町2丁目', '室内設備はエアコン・冷蔵庫など豊富に揃っており、過ごしやすいお部屋になっております。共用部にはエレベータ・フロントサービスなど様々な設備やサービスが揃っているので便利です。', 'https://genshin.hoyoverse.com/ja', 1, 1, 0, '2024-02-08 06:24:08.568832', '2024-02-21 01:07:32.358097', 11, 'layout_img/layout_sample_plSU9FB.png'),
(20, '2LDK', 81, 64000, 1, 20000, 2, 203, '東京都千代田区神田神保町2丁目', '室内設備はエアコン・冷蔵庫など豊富に揃っており、過ごしやすいお部屋になっております。共用部にはエレベータ・フロントサービスなど様々な設備やサービスが揃っているので便利です。', 'https://genshin.hoyoverse.com/ja', 1, 1, 0, '2024-02-08 06:24:08.568832', '2024-02-21 01:07:32.358097', 11, 'layout_img/layout_sample_plSU9FB.png'),
(21, '2LDK', 81, 64000, 1, 20000, 2, 204, '東京都千代田区神田神保町2丁目', '室内設備はエアコン・冷蔵庫など豊富に揃っており、過ごしやすいお部屋になっております。共用部にはエレベータ・フロントサービスなど様々な設備やサービスが揃っているので便利です。', 'https://genshin.hoyoverse.com/ja', 1, 1, 0, '2024-02-08 06:24:08.568832', '2024-02-21 01:07:32.358097', 11, 'layout_img/layout_sample_plSU9FB.png'),
(22, '2LDK', 81, 64000, 1, 20000, 4, 404, '東京都千代田区神田神保町2丁目', '室内設備はエアコン・冷蔵庫など豊富に揃っており、過ごしやすいお部屋になっております。共用部にはエレベータ・フロントサービスなど様々な設備やサービスが揃っているので便利です。', 'https://genshin.hoyoverse.com/ja', 1, 1, 0, '2024-02-08 06:24:08.568832', '2024-02-21 01:07:32.358097', 11, 'layout_img/layout_sample_plSU9FB.png'),
(23, '2LDK', 76, 76000, 1, 20000, 3, 306, '角部屋', 'エレベーターあり。オートロック付き。貸主指定の火災保険要加入', 'https://youtu.be/pEg_d2f6myw?si=dqjZN2bguLBTvH9K', 1, 1, 1, '2024-02-09 06:42:42.917949', '2024-02-21 01:08:51.753573', 3, 'layout_img/layout_sample_DNHXmsX.png'),
(24, '2LDK', 76, 76000, 1, 20000, 4, 406, '角部屋', 'エレベーターあり。オートロック付き。貸主指定の火災保険要加入', 'https://youtu.be/pEg_d2f6myw?si=dqjZN2bguLBTvH9K', 1, 1, 1, '2024-02-09 06:42:42.917949', '2024-02-21 01:08:51.753573', 3, 'layout_img/layout_sample_DNHXmsX.png'),
(25, '2LDK', 76, 76000, 1, 20000, 1, 106, '角部屋', 'エレベーターあり。オートロック付き。貸主指定の火災保険要加入', 'https://youtu.be/pEg_d2f6myw?si=dqjZN2bguLBTvH9K', 1, 1, 1, '2024-02-09 06:42:42.917949', '2024-02-21 01:08:51.753573', 3, 'layout_img/layout_sample_DNHXmsX.png'),
(26, '2LDK', 76, 76000, 1, 20000, 3, 301, '角部屋', 'エレベーターあり。オートロック付き。貸主指定の火災保険要加入', 'https://youtu.be/pEg_d2f6myw?si=dqjZN2bguLBTvH9K', 1, 1, 1, '2024-02-09 06:42:42.917949', '2024-02-21 01:08:51.753573', 3, 'layout_img/layout_sample_DNHXmsX.png'),
(27, '3LDK', 75, 98000, 1, 20000, 6, 602, '中部屋', '室内設備はエアコン・冷蔵庫など豊富に揃っており、過ごしやすいお部屋になっております。共用部にはエレベータ・フロントサービスなど様々な設備やサービスが揃っているので便利です。', 'http://localhost:8000/ad', 1, 1, 0, '2024-02-09 06:47:53.000974', '2024-02-21 01:10:17.573044', 9, 'layout_img/layout_sample_SV5Veaa.png'),
(28, '3LDK', 75, 98000, 1, 20000, 6, 603, '中部屋', '室内設備はエアコン・冷蔵庫など豊富に揃っており、過ごしやすいお部屋になっております。共用部にはエレベータ・フロントサービスなど様々な設備やサービスが揃っているので便利です。', 'http://localhost:8000/ad', 1, 1, 0, '2024-02-09 06:47:53.000974', '2024-02-21 01:10:17.573044', 9, 'layout_img/layout_sample_SV5Veaa.png'),
(29, '3LDK', 75, 98000, 1, 20000, 6, 605, '中部屋', '室内設備はエアコン・冷蔵庫など豊富に揃っており、過ごしやすいお部屋になっております。共用部にはエレベータ・フロントサービスなど様々な設備やサービスが揃っているので便利です。', 'http://localhost:8000/ad', 1, 1, 0, '2024-02-09 06:47:53.000974', '2024-02-21 01:10:17.573044', 9, 'layout_img/layout_sample_SV5Veaa.png'),
(30, '3LDK', 75, 98000, 1, 20000, 2, 205, '中部屋', '室内設備はエアコン・冷蔵庫など豊富に揃っており、過ごしやすいお部屋になっております。共用部にはエレベータ・フロントサービスなど様々な設備やサービスが揃っているので便利です。', 'http://localhost:8000/ad', 1, 1, 0, '2024-02-09 06:47:53.000974', '2024-02-21 01:10:17.573044', 9, 'layout_img/layout_sample_SV5Veaa.png'),
(31, '3LDK', 75, 98000, 1, 20000, 2, 208, '中部屋', '室内設備はエアコン・冷蔵庫など豊富に揃っており、過ごしやすいお部屋になっております。共用部にはエレベータ・フロントサービスなど様々な設備やサービスが揃っているので便利です。', 'http://localhost:8000/ad', 1, 1, 0, '2024-02-09 06:47:53.000974', '2024-02-21 01:10:17.573044', 9, 'layout_img/layout_sample_SV5Veaa.png'),
(32, '3LDK', 75, 98000, 1, 20000, 1, 108, '中部屋', '室内設備はエアコン・冷蔵庫など豊富に揃っており、過ごしやすいお部屋になっております。共用部にはエレベータ・フロントサービスなど様々な設備やサービスが揃っているので便利です。', 'http://localhost:8000/ad', 1, 1, 0, '2024-02-09 06:47:53.000974', '2024-02-21 01:10:17.573044', 9, 'layout_img/layout_sample_SV5Veaa.png'),
(33, '3LDK', 75, 98000, 1, 20000, 3, 302, '中部屋', '室内設備はエアコン・冷蔵庫など豊富に揃っており、過ごしやすいお部屋になっております。共用部にはエレベータ・フロントサービスなど様々な設備やサービスが揃っているので便利です。', 'http://localhost:8000/ad', 1, 1, 0, '2024-02-09 06:47:53.000974', '2024-02-21 01:10:17.573044', 9, 'layout_img/layout_sample_SV5Veaa.png'),
(34, '3LDK', 90, 134000, 1, 25000, 4, 410, '角部屋', '家賃＋管理費の1ヶ月分の違約金あり/消毒代:23650円/投てき消火剤:6930円/インターネット登録料:3300円', 'https://www.google.com/?hl=ja', 1, 1, 0, '2024-02-08 07:09:53.605583', '2024-02-21 01:08:11.004490', 8, 'layout_img/layout_sample_L6LRRsp.png'),
(35, '3LDK', 90, 134000, 1, 25000, 2, 202, '角部屋', '家賃＋管理費の1ヶ月分の違約金あり/消毒代:23650円/投てき消火剤:6930円/インターネット登録料:3300円', 'https://www.google.com/?hl=ja', 1, 1, 0, '2024-02-08 07:09:53.605583', '2024-02-21 01:08:11.004490', 8, 'layout_img/layout_sample_L6LRRsp.png'),
(36, '3LDK', 90, 134000, 1, 25000, 3, 303, '角部屋', '家賃＋管理費の1ヶ月分の違約金あり/消毒代:23650円/投てき消火剤:6930円/インターネット登録料:3300円', 'https://www.google.com/?hl=ja', 1, 1, 0, '2024-02-08 07:09:53.605583', '2024-02-21 01:08:11.004490', 8, 'layout_img/layout_sample_L6LRRsp.png'),
(37, '3LDK', 90, 134000, 1, 25000, 4, 403, '角部屋', '家賃＋管理費の1ヶ月分の違約金あり/消毒代:23650円/投てき消火剤:6930円/インターネット登録料:3300円', 'https://www.google.com/?hl=ja', 1, 1, 0, '2024-02-08 07:09:53.605583', '2024-02-21 01:08:11.004490', 8, 'layout_img/layout_sample_L6LRRsp.png'),
(38, '3LDK', 90, 134000, 1, 25000, 4, 402, '角部屋', '家賃＋管理費の1ヶ月分の違約金あり/消毒代:23650円/投てき消火剤:6930円/インターネット登録料:3300円', 'https://www.google.com/?hl=ja', 1, 1, 0, '2024-02-08 07:09:53.605583', '2024-02-21 01:08:11.004490', 8, 'layout_img/layout_sample_L6LRRsp.png'),
(39, '3LDK', 82, 93000, 1, 18000, 1, 103, '出入口階段に近い', '家賃＋管理費の1ヶ月分の違約金あり/消毒代:23650円/投てき消火剤:6930円/インターネット登録料:3300円', 'https://genshin.hoyoverse.com/ja', 1, 1, 0, '2024-02-09 05:58:26.255756', '2024-02-21 01:08:22.428374', 7, 'layout_img/layout_sample_MngJoK3.png'),
(40, '3LDK', 82, 93000, 1, 18000, 1, 104, '出入口階段に近い', '家賃＋管理費の1ヶ月分の違約金あり/消毒代:23650円/投てき消火剤:6930円/インターネット登録料:3300円', 'https://genshin.hoyoverse.com/ja', 1, 1, 0, '2024-02-09 05:58:26.255756', '2024-02-21 01:08:22.428374', 7, 'layout_img/layout_sample_MngJoK3.png'),
(41, '3LDK', 82, 93000, 1, 18000, 1, 105, '出入口階段に近い', '家賃＋管理費の1ヶ月分の違約金あり/消毒代:23650円/投てき消火剤:6930円/インターネット登録料:3300円', 'https://genshin.hoyoverse.com/ja', 1, 1, 0, '2024-02-09 05:58:26.255756', '2024-02-21 01:08:22.428374', 7, 'layout_img/layout_sample_MngJoK3.png'),
(42, '3LDK', 82, 93000, 1, 18000, 1, 106, '出入口階段に近い', '家賃＋管理費の1ヶ月分の違約金あり/消毒代:23650円/投てき消火剤:6930円/インターネット登録料:3300円', 'https://genshin.hoyoverse.com/ja', 1, 1, 0, '2024-02-09 05:58:26.255756', '2024-02-21 01:08:22.428374', 7, 'layout_img/layout_sample_MngJoK3.png'),
(43, '3LDK', 82, 93000, 1, 18000, 1, 107, '出入口階段に近い', '家賃＋管理費の1ヶ月分の違約金あり/消毒代:23650円/投てき消火剤:6930円/インターネット登録料:3300円', 'https://genshin.hoyoverse.com/ja', 1, 1, 0, '2024-02-09 05:58:26.255756', '2024-02-21 01:08:22.428374', 7, 'layout_img/layout_sample_MngJoK3.png'),
(44, '3LDK', 86, 98000, 1, 30000, 2, 208, '角部屋', 'エレベーターあり。オートロック付き。貸主指定の火災保険要加入。エアコン・冷蔵庫があり、オートロック付きだから安全に生活のできるお部屋', 'https://youtu.be/pEg_d2f6myw?si=dqjZN2bguLBTvH9K', 1, 0, 1, '2024-02-08 06:45:24.550010', '2024-02-21 01:08:02.503162', 4, 'layout_img/layout_sample_qW7zXTT.png'),
(45, '3LDK', 86, 98000, 1, 30000, 2, 204, '角部屋', 'エレベーターあり。オートロック付き。貸主指定の火災保険要加入。エアコン・冷蔵庫があり、オートロック付きだから安全に生活のできるお部屋', 'https://youtu.be/pEg_d2f6myw?si=dqjZN2bguLBTvH9K', 1, 0, 1, '2024-02-08 06:45:24.550010', '2024-02-21 01:08:02.503162', 4, 'layout_img/layout_sample_qW7zXTT.png'),
(46, '3LDK', 86, 98000, 1, 30000, 2, 207, '角部屋', 'エレベーターあり。オートロック付き。貸主指定の火災保険要加入。エアコン・冷蔵庫があり、オートロック付きだから安全に生活のできるお部屋', 'https://youtu.be/pEg_d2f6myw?si=dqjZN2bguLBTvH9K', 1, 0, 1, '2024-02-08 06:45:24.550010', '2024-02-21 01:08:02.503162', 4, 'layout_img/layout_sample_qW7zXTT.png'),
(47, '3LDK', 86, 98000, 1, 30000, 2, 203, '角部屋', 'エレベーターあり。オートロック付き。貸主指定の火災保険要加入。エアコン・冷蔵庫があり、オートロック付きだから安全に生活のできるお部屋', 'https://youtu.be/pEg_d2f6myw?si=dqjZN2bguLBTvH9K', 1, 0, 1, '2024-02-08 06:45:24.550010', '2024-02-21 01:08:02.503162', 4, 'layout_img/layout_sample_qW7zXTT.png'),
(48, '1R', 40, 40000, 1, 8000, 1, 101, '角部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:00:48.346220', '2024-03-03 11:00:48.346267', 5, 'layout_img/layout_sample_qW7zXTT_UonPNvv.png'),
(49, '1R', 40, 40000, 1, 8000, 1, 102, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:00:48.346220', '2024-03-03 11:00:48.346267', 5, 'layout_img/layout_sample_qW7zXTT_UonPNvv.png'),
(50, '1R', 40, 40000, 1, 8000, 1, 104, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:00:48.346220', '2024-03-03 11:00:48.346267', 5, 'layout_img/layout_sample_qW7zXTT_UonPNvv.png'),
(51, '1R', 40, 40000, 1, 8000, 1, 105, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:00:48.346220', '2024-03-03 11:00:48.346267', 5, 'layout_img/layout_sample_qW7zXTT_UonPNvv.png'),
(52, '1R', 40, 40000, 1, 8000, 1, 106, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:00:48.346220', '2024-03-03 11:00:48.346267', 5, 'layout_img/layout_sample_qW7zXTT_UonPNvv.png'),
(53, '1R', 40, 40000, 1, 8000, 2, 201, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:00:48.346220', '2024-03-03 11:00:48.346267', 5, 'layout_img/layout_sample_qW7zXTT_UonPNvv.png'),
(54, '1R', 40, 40000, 1, 8000, 2, 203, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:00:48.346220', '2024-03-03 11:00:48.346267', 5, 'layout_img/layout_sample_qW7zXTT_UonPNvv.png'),
(55, '1R', 40, 40000, 1, 8000, 2, 205, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:00:48.346220', '2024-03-03 11:00:48.346267', 5, 'layout_img/layout_sample_qW7zXTT_UonPNvv.png'),
(56, '1DK', 50, 56000, 1, 12000, 2, 201, '角部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 0, 0, '2024-03-03 11:06:32.266010', '2024-03-03 11:06:32.266097', 6, 'layout_img/layout_sample_8azPaVu_Ad9KJTY.png'),
(57, '1DK', 50, 56000, 1, 12000, 2, 202, '角部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 0, 0, '2024-03-03 11:06:32.266010', '2024-03-03 11:06:32.266097', 6, 'layout_img/layout_sample_8azPaVu_Ad9KJTY.png'),
(58, '1DK', 50, 56000, 1, 12000, 3, 302, '角部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 0, 0, '2024-03-03 11:06:32.266010', '2024-03-03 11:06:32.266097', 6, 'layout_img/layout_sample_8azPaVu_Ad9KJTY.png'),
(59, '1DK', 50, 56000, 1, 12000, 4, 401, '角部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 0, 0, '2024-03-03 11:06:32.266010', '2024-03-03 11:06:32.266097', 6, 'layout_img/layout_sample_8azPaVu_Ad9KJTY.png'),
(60, '1LDK', 54, 57000, 0, 14000, 1, 104, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 0, '2024-03-03 11:11:00.789980', '2024-03-03 11:11:00.790026', 10, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D.png'),
(61, '1LDK', 54, 57000, 0, 14000, 1, 105, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 0, '2024-03-03 11:11:00.789980', '2024-03-03 11:11:00.790026', 10, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D.png'),
(62, '1LDK', 54, 57000, 0, 14000, 1, 106, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 0, '2024-03-03 11:11:00.789980', '2024-03-03 11:11:00.790026', 10, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D.png'),
(63, '1LDK', 54, 57000, 0, 14000, 2, 202, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 0, '2024-03-03 11:11:00.789980', '2024-03-03 11:11:00.790026', 10, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D.png'),
(64, '1LDK', 54, 57000, 0, 14000, 2, 203, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 0, '2024-03-03 11:11:00.789980', '2024-03-03 11:11:00.790026', 10, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D.png'),
(65, '1LDK', 54, 57000, 0, 14000, 2, 204, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 0, '2024-03-03 11:11:00.789980', '2024-03-03 11:11:00.790026', 10, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D.png'),
(66, '1LDK', 54, 57000, 0, 14000, 3, 303, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 0, '2024-03-03 11:11:00.789980', '2024-03-03 11:11:00.790026', 10, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D.png'),
(67, '2K', 54, 61000, 1, 13000, 1, 101, '角部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:14:52.417005', '2024-03-03 11:14:52.417051', 12, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz.png'),
(68, '2K', 54, 61000, 1, 13000, 1, 102, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:14:52.417005', '2024-03-03 11:14:52.417051', 12, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz.png'),
(69, '2K', 54, 61000, 1, 13000, 1, 103, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:14:52.417005', '2024-03-03 11:14:52.417051', 12, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz.png'),
(70, '2K', 54, 61000, 1, 13000, 1, 104, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:14:52.417005', '2024-03-03 11:14:52.417051', 12, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz.png'),
(71, '2K', 54, 61000, 1, 13000, 2, 204, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:14:52.417005', '2024-03-03 11:14:52.417051', 12, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz.png'),
(72, '2K', 54, 61000, 1, 13000, 3, 304, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:14:52.417005', '2024-03-03 11:14:52.417051', 12, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz.png'),
(73, '2K', 54, 61000, 1, 13000, 3, 305, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:14:52.417005', '2024-03-03 11:14:52.417051', 12, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz.png'),
(74, '2K', 54, 61000, 1, 13000, 3, 306, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:14:52.417005', '2024-03-03 11:14:52.417051', 12, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz.png'),
(75, '2K', 54, 61000, 1, 13000, 3, 307, '角部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:14:52.417005', '2024-03-03 11:14:52.417051', 12, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz.png'),
(76, '2DK', 54, 63000, 1, 15000, 2, 203, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:24:08.890617', '2024-03-03 11:24:08.890661', 13, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI.png'),
(77, '2DK', 54, 63000, 1, 15000, 2, 204, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:24:08.890617', '2024-03-03 11:24:08.890661', 13, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI.png'),
(78, '2DK', 54, 63000, 1, 15000, 2, 205, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:24:08.890617', '2024-03-03 11:24:08.890661', 13, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI.png'),
(79, '2DK', 54, 63000, 1, 15000, 3, 302, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:24:08.890617', '2024-03-03 11:24:08.890661', 13, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI.png'),
(80, '2DK', 54, 63000, 1, 15000, 3, 303, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:24:08.890617', '2024-03-03 11:24:08.890661', 13, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI.png'),
(81, '2DK', 54, 63000, 1, 15000, 3, 304, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:24:08.890617', '2024-03-03 11:24:08.890661', 13, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI.png'),
(82, '3K', 54, 70000, 1, 14000, 1, 101, '角部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 0, 1, '2024-03-03 11:30:07.916091', '2024-03-03 11:30:07.916137', 14, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI_JrEbC7R.png'),
(83, '3K', 54, 70000, 1, 14000, 1, 102, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 0, 1, '2024-03-03 11:30:07.916091', '2024-03-03 11:30:07.916137', 14, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI_JrEbC7R.png'),
(84, '3K', 54, 70000, 1, 14000, 1, 103, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 0, 1, '2024-03-03 11:30:07.916091', '2024-03-03 11:30:07.916137', 14, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI_JrEbC7R.png'),
(85, '3K', 54, 70000, 1, 14000, 1, 104, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 0, 1, '2024-03-03 11:30:07.916091', '2024-03-03 11:30:07.916137', 14, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI_JrEbC7R.png'),
(86, '3K', 54, 70000, 1, 14000, 2, 201, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 0, 1, '2024-03-03 11:30:07.916091', '2024-03-03 11:30:07.916137', 14, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI_JrEbC7R.png'),
(87, '3K', 54, 70000, 1, 14000, 2, 202, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 0, 1, '2024-03-03 11:30:07.916091', '2024-03-03 11:30:07.916137', 14, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI_JrEbC7R.png'),
(88, '3K', 54, 70000, 1, 14000, 2, 203, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 0, 1, '2024-03-03 11:30:07.916091', '2024-03-03 11:30:07.916137', 14, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI_JrEbC7R.png'),
(89, '3DK', 60, 74000, 1, 13000, 1, 101, '角部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:34:33.812407', '2024-03-03 11:34:33.812448', 15, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI_JrEbC7R_fm6pOJD.png'),
(90, '3DK', 60, 74000, 1, 13000, 1, 102, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:34:33.812407', '2024-03-03 11:34:33.812448', 15, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI_JrEbC7R_fm6pOJD.png'),
(91, '3DK', 60, 74000, 1, 13000, 1, 103, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:34:33.812407', '2024-03-03 11:34:33.812448', 15, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI_JrEbC7R_fm6pOJD.png'),
(92, '3DK', 60, 74000, 1, 13000, 2, 202, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:34:33.812407', '2024-03-03 11:34:33.812448', 15, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI_JrEbC7R_fm6pOJD.png'),
(93, '3DK', 60, 74000, 1, 13000, 2, 203, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:34:33.812407', '2024-03-03 11:34:33.812448', 15, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI_JrEbC7R_fm6pOJD.png'),
(94, '3DK', 60, 74000, 1, 13000, 2, 204, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:34:33.812407', '2024-03-03 11:34:33.812448', 15, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI_JrEbC7R_fm6pOJD.png'),
(95, '3DK', 60, 74000, 1, 13000, 2, 205, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:34:33.812407', '2024-03-03 11:34:33.812448', 15, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI_JrEbC7R_fm6pOJD.png'),
(96, '3DK', 60, 74000, 1, 13000, 3, 302, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:34:33.812407', '2024-03-03 11:34:33.812448', 15, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI_JrEbC7R_fm6pOJD.png'),
(97, '3DK', 60, 74000, 1, 13000, 3, 303, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:34:33.812407', '2024-03-03 11:34:33.812448', 15, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI_JrEbC7R_fm6pOJD.png'),
(98, '3DK', 60, 74000, 1, 13000, 1, 103, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:34:33.812407', '2024-03-03 11:34:33.812448', 16, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI_JrEbC7R_fm6pOJD.png'),
(99, '3DK', 60, 74000, 1, 13000, 1, 104, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:34:33.812407', '2024-03-03 11:34:33.812448', 16, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI_JrEbC7R_fm6pOJD.png'),
(100, '3DK', 60, 74000, 1, 13000, 1, 105, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:34:33.812407', '2024-03-03 11:34:33.812448', 16, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI_JrEbC7R_fm6pOJD.png'),
(101, '3DK', 60, 74000, 1, 13000, 1, 106, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:34:33.812407', '2024-03-03 11:34:33.812448', 16, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI_JrEbC7R_fm6pOJD.png'),
(102, '3DK', 60, 74000, 1, 13000, 2, 202, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:34:33.812407', '2024-03-03 11:34:33.812448', 16, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI_JrEbC7R_fm6pOJD.png'),
(103, '3DK', 60, 74000, 1, 13000, 2, 204, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:34:33.812407', '2024-03-03 11:34:33.812448', 16, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI_JrEbC7R_fm6pOJD.png'),
(104, '3DK', 60, 74000, 1, 13000, 2, 206, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:34:33.812407', '2024-03-03 11:34:33.812448', 16, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI_JrEbC7R_fm6pOJD.png'),
(105, '3K', 54, 70000, 1, 14000, 2, 203, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 0, 1, '2024-03-03 11:30:07.916091', '2024-03-03 11:30:07.916137', 17, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI_JrEbC7R.png'),
(106, '3K', 54, 70000, 1, 14000, 2, 204, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 0, 1, '2024-03-03 11:30:07.916091', '2024-03-03 11:30:07.916137', 17, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI_JrEbC7R.png'),
(107, '2DK', 54, 63000, 1, 15000, 3, 304, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:24:08.890617', '2024-03-03 11:24:08.890661', 18, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI.png'),
(108, '2DK', 54, 63000, 1, 15000, 4, 402, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:24:08.890617', '2024-03-03 11:24:08.890661', 18, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI.png'),
(109, '2K', 54, 61000, 1, 13000, 1, 101, '角部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:14:52.417005', '2024-03-03 11:14:52.417051', 19, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz.png'),
(110, '2K', 54, 61000, 1, 13000, 1, 102, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:14:52.417005', '2024-03-03 11:14:52.417051', 19, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz.png'),
(111, '3K', 54, 70000, 1, 14000, 2, 202, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 0, 1, '2024-03-03 11:30:07.916091', '2024-03-03 11:30:07.916137', 20, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI_JrEbC7R.png'),
(112, '3K', 54, 70000, 1, 14000, 2, 204, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 0, 1, '2024-03-03 11:30:07.916091', '2024-03-03 11:30:07.916137', 20, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI_JrEbC7R.png'),
(113, '3K', 54, 70000, 1, 14000, 2, 205, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 0, 1, '2024-03-03 11:30:07.916091', '2024-03-03 11:30:07.916137', 14, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI_JrEbC7R.png'),
(114, '2LDK', 81, 64000, 1, 20000, 4, 404, '中部屋', '室内設備はエアコン・冷蔵庫など豊富に揃っており、過ごしやすいお部屋になっております。共用部にはエレベータ・フロントサービスなど様々な設備やサービスが揃っているので便利です。', 'https://genshin.hoyoverse.com/ja', 1, 1, 0, '2024-02-08 06:24:08.568832', '2024-02-21 01:07:32.358097', 21, 'layout_img/layout_sample_plSU9FB.png'),
(115, '2LDK', 81, 64000, 1, 20000, 4, 405, '中部屋', '室内設備はエアコン・冷蔵庫など豊富に揃っており、過ごしやすいお部屋になっております。共用部にはエレベータ・フロントサービスなど様々な設備やサービスが揃っているので便利です。', 'https://genshin.hoyoverse.com/ja', 1, 1, 0, '2024-02-08 06:24:08.568832', '2024-02-21 01:07:32.358097', 21, 'layout_img/layout_sample_plSU9FB.png'),
(116, '2LDK', 81, 64000, 1, 20000, 5, 502, '中部屋', '室内設備はエアコン・冷蔵庫など豊富に揃っており、過ごしやすいお部屋になっております。共用部にはエレベータ・フロントサービスなど様々な設備やサービスが揃っているので便利です。', 'https://genshin.hoyoverse.com/ja', 1, 1, 0, '2024-02-08 06:24:08.568832', '2024-02-21 01:07:32.358097', 21, 'layout_img/layout_sample_plSU9FB.png'),
(117, '2K', 54, 61000, 1, 13000, 1, 102, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:14:52.417005', '2024-03-03 11:14:52.417051', 22, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz.png'),
(118, '2K', 54, 61000, 1, 13000, 1, 103, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:14:52.417005', '2024-03-03 11:14:52.417051', 22, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz.png'),
(119, '2K', 54, 61000, 1, 13000, 2, 203, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:14:52.417005', '2024-03-03 11:14:52.417051', 22, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz.png'),
(120, '2K', 54, 61000, 1, 13000, 3, 302, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:14:52.417005', '2024-03-03 11:14:52.417051', 22, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz.png'),
(121, '2K', 54, 61000, 1, 13000, 4, 405, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:14:52.417005', '2024-03-03 11:14:52.417051', 22, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz.png'),
(122, '1LDK', 54, 57000, 0, 14000, 1, 106, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 0, '2024-03-03 11:11:00.789980', '2024-03-03 11:11:00.790026', 24, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D.png'),
(123, '1LDK', 54, 57000, 0, 14000, 2, 202, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 0, '2024-03-03 11:11:00.789980', '2024-03-03 11:11:00.790026', 24, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D.png'),
(124, '1LDK', 54, 57000, 0, 14000, 2, 204, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 0, '2024-03-03 11:11:00.789980', '2024-03-03 11:11:00.790026', 24, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D.png'),
(125, '1DK', 50, 56000, 1, 12000, 1, 101, '角部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 0, 0, '2024-03-03 11:06:32.266010', '2024-03-03 11:06:32.266097', 25, 'layout_img/layout_sample_8azPaVu_Ad9KJTY.png'),
(126, '1DK', 50, 56000, 1, 12000, 1, 102, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 0, 0, '2024-03-03 11:06:32.266010', '2024-03-03 11:06:32.266097', 25, 'layout_img/layout_sample_8azPaVu_Ad9KJTY.png'),
(127, '1DK', 50, 56000, 1, 12000, 1, 103, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 0, 0, '2024-03-03 11:06:32.266010', '2024-03-03 11:06:32.266097', 25, 'layout_img/layout_sample_8azPaVu_Ad9KJTY.png'),
(128, '1DK', 50, 56000, 1, 12000, 1, 104, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 0, 0, '2024-03-03 11:06:32.266010', '2024-03-03 11:06:32.266097', 25, 'layout_img/layout_sample_8azPaVu_Ad9KJTY.png'),
(129, '1DK', 50, 56000, 1, 12000, 2, 202, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 0, 0, '2024-03-03 11:06:32.266010', '2024-03-03 11:06:32.266097', 25, 'layout_img/layout_sample_8azPaVu_Ad9KJTY.png'),
(130, '1DK', 50, 56000, 1, 12000, 2, 203, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 0, 0, '2024-03-03 11:06:32.266010', '2024-03-03 11:06:32.266097', 25, 'layout_img/layout_sample_8azPaVu_Ad9KJTY.png'),
(131, '1K', 21, 85000, 1, 5000, 2, 202, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2023-12-05 07:48:45.501990', '2024-02-21 02:29:20.765031', 26, 'layout_img/layout_sample_hWkBdsr.png'),
(132, '1K', 21, 85000, 1, 5000, 2, 204, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2023-12-05 07:48:45.501990', '2024-02-21 02:29:20.765031', 26, 'layout_img/layout_sample_hWkBdsr.png'),
(133, '1K', 21, 85000, 1, 5000, 2, 205, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2023-12-05 07:48:45.501990', '2024-02-21 02:29:20.765031', 26, 'layout_img/layout_sample_hWkBdsr.png'),
(134, '1R', 40, 40000, 1, 8000, 1, 102, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:00:48.346220', '2024-03-03 11:00:48.346267', 27, 'layout_img/layout_sample_qW7zXTT_UonPNvv.png'),
(135, '1R', 40, 40000, 1, 8000, 1, 103, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:00:48.346220', '2024-03-03 11:00:48.346267', 27, 'layout_img/layout_sample_qW7zXTT_UonPNvv.png'),
(136, '1R', 40, 40000, 1, 8000, 1, 104, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:00:48.346220', '2024-03-03 11:00:48.346267', 27, 'layout_img/layout_sample_qW7zXTT_UonPNvv.png'),
(137, '1R', 40, 40000, 1, 8000, 1, 105, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:00:48.346220', '2024-03-03 11:00:48.346267', 27, 'layout_img/layout_sample_qW7zXTT_UonPNvv.png'),
(138, '3DK', 60, 74000, 1, 13000, 2, 202, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:34:33.812407', '2024-03-03 11:34:33.812448', 28, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI_JrEbC7R_fm6pOJD.png'),
(139, '3DK', 60, 74000, 1, 13000, 3, 302, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:34:33.812407', '2024-03-03 11:34:33.812448', 28, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI_JrEbC7R_fm6pOJD.png'),
(140, '3DK', 60, 74000, 1, 13000, 3, 303, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:34:33.812407', '2024-03-03 11:34:33.812448', 28, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI_JrEbC7R_fm6pOJD.png'),
(141, '3DK', 60, 74000, 1, 13000, 3, 304, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:34:33.812407', '2024-03-03 11:34:33.812448', 28, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI_JrEbC7R_fm6pOJD.png'),
(142, '3DK', 60, 74000, 1, 13000, 3, 305, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 1, 1, '2024-03-03 11:34:33.812407', '2024-03-03 11:34:33.812448', 28, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI_JrEbC7R_fm6pOJD.png'),
(143, '3K', 54, 70000, 1, 14000, 2, 202, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 0, 1, '2024-03-03 11:30:07.916091', '2024-03-03 11:30:07.916137', 29, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI_JrEbC7R.png'),
(144, '3K', 54, 70000, 1, 14000, 2, 203, '中部屋', '当店は都内を中心に20000戸以上の管理物件を保有する株式会社アンビショングループです。', 'https://google.com', 1, 0, 1, '2024-03-03 11:30:07.916091', '2024-03-03 11:30:07.916137', 29, 'layout_img/layout_sample_8azPaVu_Ad9KJTY_KWC4A6D_JVTEHTz_plqbBbI_JrEbC7R.png'),
(145, '2LDK', 81, 64000, 1, 20000, 1, 102, '中部屋', '室内設備はエアコン・冷蔵庫など豊富に揃っており、過ごしやすいお部屋になっております。共用部にはエレベータ・フロントサービスなど様々な設備やサービスが揃っているので便利です。', 'https://genshin.hoyoverse.com/ja', 1, 1, 0, '2024-02-08 06:24:08.568832', '2024-02-21 01:07:32.358097', 30, 'layout_img/layout_sample_plSU9FB.png'),
(146, '2LDK', 81, 64000, 1, 20000, 1, 103, '中部屋', '室内設備はエアコン・冷蔵庫など豊富に揃っており、過ごしやすいお部屋になっております。共用部にはエレベータ・フロントサービスなど様々な設備やサービスが揃っているので便利です。', 'https://genshin.hoyoverse.com/ja', 1, 1, 0, '2024-02-08 06:24:08.568832', '2024-02-21 01:07:32.358097', 30, 'layout_img/layout_sample_plSU9FB.png'),
(147, '2LDK', 81, 64000, 1, 20000, 1, 104, '中部屋', '室内設備はエアコン・冷蔵庫など豊富に揃っており、過ごしやすいお部屋になっております。共用部にはエレベータ・フロントサービスなど様々な設備やサービスが揃っているので便利です。', 'https://genshin.hoyoverse.com/ja', 1, 1, 0, '2024-02-08 06:24:08.568832', '2024-02-21 01:07:32.358097', 30, 'layout_img/layout_sample_plSU9FB.png'),
(148, '2LDK', 81, 64000, 1, 20000, 1, 105, '中部屋', '室内設備はエアコン・冷蔵庫など豊富に揃っており、過ごしやすいお部屋になっております。共用部にはエレベータ・フロントサービスなど様々な設備やサービスが揃っているので便利です。', 'https://genshin.hoyoverse.com/ja', 1, 1, 0, '2024-02-08 06:24:08.568832', '2024-02-21 01:07:32.358097', 30, 'layout_img/layout_sample_plSU9FB.png');

-- --------------------------------------------------------

--
-- テーブルの構造 `property_detail_picture`
--

CREATE TABLE `property_detail_picture` (
  `id` bigint(20) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `order` int(11) NOT NULL,
  `property_detail_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `property_type`
--

CREATE TABLE `property_type` (
  `id` bigint(20) NOT NULL,
  `property_type` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `property_type`
--

INSERT INTO `property_type` (`id`, `property_type`) VALUES
(1, 'マンション'),
(2, '寮'),
(3, 'アパート');

-- --------------------------------------------------------

--
-- テーブルの構造 `service`
--

CREATE TABLE `service` (
  `id` bigint(20) NOT NULL,
  `service` varchar(100) NOT NULL,
  `property_detail_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `service`
--

INSERT INTO `service` (`id`, `service`, `property_detail_id`) VALUES
(1, 'オートロック', 2),
(2, '防犯カメラ', 2);

-- --------------------------------------------------------

--
-- テーブルの構造 `socialaccount_socialaccount`
--

CREATE TABLE `socialaccount_socialaccount` (
  `id` int(11) NOT NULL,
  `provider` varchar(200) NOT NULL,
  `uid` varchar(191) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `extra_data` json NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `socialaccount_socialapp`
--

CREATE TABLE `socialaccount_socialapp` (
  `id` int(11) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  `client_id` varchar(191) NOT NULL,
  `secret` varchar(191) NOT NULL,
  `key` varchar(191) NOT NULL,
  `provider_id` varchar(200) NOT NULL,
  `settings` json NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `socialaccount_socialapp_sites`
--

CREATE TABLE `socialaccount_socialapp_sites` (
  `id` int(11) NOT NULL,
  `socialapp_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `socialaccount_socialtoken`
--

CREATE TABLE `socialaccount_socialtoken` (
  `id` int(11) NOT NULL,
  `token` longtext NOT NULL,
  `token_secret` longtext NOT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `app_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `ward`
--

CREATE TABLE `ward` (
  `id` bigint(20) NOT NULL,
  `ward_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `ward`
--

INSERT INTO `ward` (`id`, `ward_name`) VALUES
(1, '千代田区'),
(2, '中央区'),
(3, '新宿区'),
(4, '文京区'),
(5, '港区'),
(6, '渋谷区');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `accounts_user`
--
ALTER TABLE `accounts_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `accounts_user_contract_property_id_41bc66a5_fk_property_id` (`contract_property_id`);

--
-- テーブルのインデックス `accounts_user_groups`
--
ALTER TABLE `accounts_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_user_groups_user_id_group_id_59c0b32f_uniq` (`user_id`,`group_id`),
  ADD KEY `accounts_user_groups_group_id_bd11a704_fk_auth_group_id` (`group_id`);

--
-- テーブルのインデックス `accounts_user_user_permissions`
--
ALTER TABLE `accounts_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_user_user_permi_user_id_permission_id_2ab516c2_uniq` (`user_id`,`permission_id`),
  ADD KEY `accounts_user_user_p_permission_id_113bb443_fk_auth_perm` (`permission_id`);

--
-- テーブルのインデックス `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_emailaddress_user_id_email_987c8728_uniq` (`user_id`,`email`);

--
-- テーブルのインデックス `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` (`email_address_id`);

--
-- テーブルのインデックス `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_user_id_b06c1b9c_fk_accounts_user_id` (`user_id`);

--
-- テーブルのインデックス `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- テーブルのインデックス `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- テーブルのインデックス `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- テーブルのインデックス `bathroom`
--
ALTER TABLE `bathroom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bathroom_property_detail_id_85c208c8_fk_property_detail_id` (`property_detail_id`);

--
-- テーブルのインデックス `condition`
--
ALTER TABLE `condition`
  ADD PRIMARY KEY (`id`),
  ADD KEY `condition_property_id_4b9e4ad4_fk_property_id` (`property_id`);

--
-- テーブルのインデックス `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_accounts_user_id` (`user_id`);

--
-- テーブルのインデックス `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- テーブルのインデックス `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- テーブルのインデックス `django_site`
--
ALTER TABLE `django_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`);

--
-- テーブルのインデックス `kitchen`
--
ALTER TABLE `kitchen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kitchen_property_detail_id_c3e8a946_fk_property_detail_id` (`property_detail_id`);

--
-- テーブルのインデックス `like`
--
ALTER TABLE `like`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `like_property_id_like_id_1d172c83_uniq` (`property_id`,`like_id`),
  ADD KEY `like_like_id_7b5ac12e_fk_accounts_user_id` (`like_id`);

--
-- テーブルのインデックス `like_review`
--
ALTER TABLE `like_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `like_review_property_id_2fe89bc2_fk_property_id` (`property_id`),
  ADD KEY `like_review_user_id_314cc228_fk_accounts_user_id` (`user_id`);

--
-- テーブルのインデックス `other`
--
ALTER TABLE `other`
  ADD PRIMARY KEY (`id`),
  ADD KEY `other_property_detail_id_7d663826_fk_property_detail_id` (`property_detail_id`);

--
-- テーブルのインデックス `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_property_type_id_137d71ff_fk_property_type_id` (`property_type_id`),
  ADD KEY `property_ward_id_9fad54db_fk_ward_id` (`ward_id`);

--
-- テーブルのインデックス `property_detail`
--
ALTER TABLE `property_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_detail_property_id_72a7e9d0_fk_property_id` (`property_id`);

--
-- テーブルのインデックス `property_detail_picture`
--
ALTER TABLE `property_detail_picture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_detail_pict_property_detail_id_40929836_fk_property_` (`property_detail_id`);

--
-- テーブルのインデックス `property_type`
--
ALTER TABLE `property_type`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_property_detail_id_a452157b_fk_property_detail_id` (`property_detail_id`);

--
-- テーブルのインデックス `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialaccount_provider_uid_fc810c6e_uniq` (`provider`,`uid`),
  ADD KEY `socialaccount_socialaccount_user_id_8146e70c_fk_accounts_user_id` (`user_id`);

--
-- テーブルのインデックス `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialapp_sites_socialapp_id_site_id_71a9a768_uniq` (`socialapp_id`,`site_id`),
  ADD KEY `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` (`site_id`);

--
-- テーブルのインデックス `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq` (`app_id`,`account_id`),
  ADD KEY `socialaccount_social_account_id_951f210e_fk_socialacc` (`account_id`);

--
-- テーブルのインデックス `ward`
--
ALTER TABLE `ward`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `accounts_user`
--
ALTER TABLE `accounts_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- テーブルの AUTO_INCREMENT `accounts_user_groups`
--
ALTER TABLE `accounts_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `accounts_user_user_permissions`
--
ALTER TABLE `accounts_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `article`
--
ALTER TABLE `article`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- テーブルの AUTO_INCREMENT `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- テーブルの AUTO_INCREMENT `bathroom`
--
ALTER TABLE `bathroom`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- テーブルの AUTO_INCREMENT `condition`
--
ALTER TABLE `condition`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- テーブルの AUTO_INCREMENT `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;

--
-- テーブルの AUTO_INCREMENT `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- テーブルの AUTO_INCREMENT `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- テーブルの AUTO_INCREMENT `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- テーブルの AUTO_INCREMENT `kitchen`
--
ALTER TABLE `kitchen`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- テーブルの AUTO_INCREMENT `like`
--
ALTER TABLE `like`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- テーブルの AUTO_INCREMENT `like_review`
--
ALTER TABLE `like_review`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- テーブルの AUTO_INCREMENT `other`
--
ALTER TABLE `other`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- テーブルの AUTO_INCREMENT `property`
--
ALTER TABLE `property`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- テーブルの AUTO_INCREMENT `property_detail`
--
ALTER TABLE `property_detail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- テーブルの AUTO_INCREMENT `property_detail_picture`
--
ALTER TABLE `property_detail_picture`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `property_type`
--
ALTER TABLE `property_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- テーブルの AUTO_INCREMENT `service`
--
ALTER TABLE `service`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- テーブルの AUTO_INCREMENT `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `ward`
--
ALTER TABLE `ward`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `accounts_user`
--
ALTER TABLE `accounts_user`
  ADD CONSTRAINT `accounts_user_contract_property_id_41bc66a5_fk_property_id` FOREIGN KEY (`contract_property_id`) REFERENCES `property` (`id`);

--
-- テーブルの制約 `accounts_user_groups`
--
ALTER TABLE `accounts_user_groups`
  ADD CONSTRAINT `accounts_user_groups_group_id_bd11a704_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `accounts_user_groups_user_id_52b62117_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

--
-- テーブルの制約 `accounts_user_user_permissions`
--
ALTER TABLE `accounts_user_user_permissions`
  ADD CONSTRAINT `accounts_user_user_p_permission_id_113bb443_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `accounts_user_user_p_user_id_e4f0a161_fk_accounts_` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

--
-- テーブルの制約 `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD CONSTRAINT `account_emailaddress_user_id_2c513194_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

--
-- テーブルの制約 `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD CONSTRAINT `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` FOREIGN KEY (`email_address_id`) REFERENCES `account_emailaddress` (`id`);

--
-- テーブルの制約 `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_user_id_b06c1b9c_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

--
-- テーブルの制約 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- テーブルの制約 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- テーブルの制約 `bathroom`
--
ALTER TABLE `bathroom`
  ADD CONSTRAINT `bathroom_property_detail_id_85c208c8_fk_property_detail_id` FOREIGN KEY (`property_detail_id`) REFERENCES `property_detail` (`id`);

--
-- テーブルの制約 `condition`
--
ALTER TABLE `condition`
  ADD CONSTRAINT `condition_property_id_4b9e4ad4_fk_property_id` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`);

--
-- テーブルの制約 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

--
-- テーブルの制約 `kitchen`
--
ALTER TABLE `kitchen`
  ADD CONSTRAINT `kitchen_property_detail_id_c3e8a946_fk_property_detail_id` FOREIGN KEY (`property_detail_id`) REFERENCES `property_detail` (`id`);

--
-- テーブルの制約 `like`
--
ALTER TABLE `like`
  ADD CONSTRAINT `like_like_id_7b5ac12e_fk_accounts_user_id` FOREIGN KEY (`like_id`) REFERENCES `accounts_user` (`id`),
  ADD CONSTRAINT `like_property_id_c71b40ce_fk_property_id` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`);

--
-- テーブルの制約 `like_review`
--
ALTER TABLE `like_review`
  ADD CONSTRAINT `like_review_property_id_2fe89bc2_fk_property_id` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`),
  ADD CONSTRAINT `like_review_user_id_314cc228_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

--
-- テーブルの制約 `other`
--
ALTER TABLE `other`
  ADD CONSTRAINT `other_property_detail_id_7d663826_fk_property_detail_id` FOREIGN KEY (`property_detail_id`) REFERENCES `property_detail` (`id`);

--
-- テーブルの制約 `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `property_property_type_id_137d71ff_fk_property_type_id` FOREIGN KEY (`property_type_id`) REFERENCES `property_type` (`id`),
  ADD CONSTRAINT `property_ward_id_9fad54db_fk_ward_id` FOREIGN KEY (`ward_id`) REFERENCES `ward` (`id`);

--
-- テーブルの制約 `property_detail`
--
ALTER TABLE `property_detail`
  ADD CONSTRAINT `property_detail_property_id_72a7e9d0_fk_property_id` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`);

--
-- テーブルの制約 `property_detail_picture`
--
ALTER TABLE `property_detail_picture`
  ADD CONSTRAINT `property_detail_pict_property_detail_id_40929836_fk_property_` FOREIGN KEY (`property_detail_id`) REFERENCES `property_detail` (`id`);

--
-- テーブルの制約 `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_property_detail_id_a452157b_fk_property_detail_id` FOREIGN KEY (`property_detail_id`) REFERENCES `property_detail` (`id`);

--
-- テーブルの制約 `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD CONSTRAINT `socialaccount_socialaccount_user_id_8146e70c_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

--
-- テーブルの制約 `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD CONSTRAINT `socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc` FOREIGN KEY (`socialapp_id`) REFERENCES `socialaccount_socialapp` (`id`),
  ADD CONSTRAINT `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- テーブルの制約 `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD CONSTRAINT `socialaccount_social_account_id_951f210e_fk_socialacc` FOREIGN KEY (`account_id`) REFERENCES `socialaccount_socialaccount` (`id`),
  ADD CONSTRAINT `socialaccount_social_app_id_636a42d7_fk_socialacc` FOREIGN KEY (`app_id`) REFERENCES `socialaccount_socialapp` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
