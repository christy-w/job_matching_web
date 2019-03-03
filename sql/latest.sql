-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 03, 2019 at 03:52 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fyp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_groups`
--

CREATE TABLE `admin_groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_groups`
--

INSERT INTO `admin_groups` (`id`, `name`, `description`) VALUES
(1, 'webmaster', 'Webmaster'),
(2, 'admin', 'Administrator'),
(3, 'manager', 'Manager'),
(4, 'staff', 'Staff');

-- --------------------------------------------------------

--
-- Table structure for table `admin_login_attempts`
--

CREATE TABLE `admin_login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`) VALUES
(1, '127.0.0.1', 'webmaster', '$2y$08$/X5gzWjesYi78GqeAv5tA.dVGBVP7C1e1PzqnYCVe5s1qhlDIPPES', NULL, NULL, NULL, NULL, NULL, NULL, 1451900190, 1551588686, 1, 'Webmaster', ''),
(2, '127.0.0.1', 'admin', '$2y$08$7Bkco6JXtC3Hu6g9ngLZDuHsFLvT7cyAxiz1FzxlX5vwccvRT7nKW', NULL, NULL, NULL, NULL, NULL, NULL, 1451900228, 1549203420, 1, 'Admin', ''),
(3, '127.0.0.1', 'manager', '$2y$08$snzIJdFXvg/rSHe0SndIAuvZyjktkjUxBXkrrGdkPy1K6r5r/dMLa', NULL, NULL, NULL, NULL, NULL, NULL, 1451900430, 1465489585, 1, 'Manager', ''),
(4, '127.0.0.1', 'staff', '$2y$08$NigAXjN23CRKllqe3KmjYuWXD5iSRPY812SijlhGeKfkrMKde9da6', NULL, NULL, NULL, NULL, NULL, NULL, 1451900439, 1465489590, 1, 'Staff', '');

-- --------------------------------------------------------

--
-- Table structure for table `admin_users_groups`
--

CREATE TABLE `admin_users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_users_groups`
--

INSERT INTO `admin_users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `api_access`
--

CREATE TABLE `api_access` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(40) NOT NULL DEFAULT '',
  `controller` varchar(50) NOT NULL DEFAULT '',
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `api_keys`
--

CREATE TABLE `api_keys` (
  `id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `api_keys`
--

INSERT INTO `api_keys` (`id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 'csogkkok0gwkkw0gg8cgs8488c08ogg4kcs0w8o4', 1, 1, 0, NULL, 1551603083),
(3, '8gs0g0w4okk04cscwks4ogk08cccow444ogc04gg', 1, 1, 0, NULL, 1551599642),
(4, 'ok888k8gsocs8cw04wggok48g8kk8os4oww4s8co', 1, 1, 0, NULL, 1551599844),
(5, '8s4cogws4g444o00cg0cs0ok8gco00gkswwcgw08', 1, 1, 0, NULL, 1551603050);

-- --------------------------------------------------------

--
-- Table structure for table `api_limits`
--

CREATE TABLE `api_limits` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `count` int(10) NOT NULL,
  `hour_started` int(11) NOT NULL,
  `api_key` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `api_logs`
--

CREATE TABLE `api_logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `applicant_users`
--

CREATE TABLE `applicant_users` (
  `id` int(11) NOT NULL,
  `name_zh` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` enum('female','male') COLLATE utf8_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `district_id` int(11) NOT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `education_level` enum('primary','college','asso_subdegree','undergraduate','postgraduate','never') COLLATE utf8_unicode_ci DEFAULT NULL,
  `employment_status` enum('full_time','part_time','home_maker','retired','student','unemployed','self_employed') COLLATE utf8_unicode_ci DEFAULT NULL,
  `related_experience` enum('none','half_year','1_year','3_year','3_year_above') COLLATE utf8_unicode_ci DEFAULT NULL,
  `computer_skills` text COLLATE utf8_unicode_ci,
  `language_abilities` text COLLATE utf8_unicode_ci,
  `related_certs` text COLLATE utf8_unicode_ci,
  `status` enum('active','hidden') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `applicant_users`
--

INSERT INTO `applicant_users` (`id`, `name_zh`, `name_en`, `email`, `gender`, `dob`, `district_id`, `address`, `education_level`, `employment_status`, `related_experience`, `computer_skills`, `language_abilities`, `related_certs`, `status`) VALUES
(3, '', '', NULL, 'female', '0000-00-00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active'),
(4, '', '', NULL, 'female', '0000-00-00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `work_date` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `work_time` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `cancel_date` timestamp NULL DEFAULT NULL,
  `apply_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('review','offered','confirmed','withdrawn','filled','cancelled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'review'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `benefits`
--

CREATE TABLE `benefits` (
  `id` int(11) NOT NULL,
  `name_zh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `benefits`
--

INSERT INTO `benefits` (`id`, `name_zh`, `name_en`) VALUES
(1, '年終獎金', 'Year-end bonuses'),
(2, '員工分紅/認股', 'Commissios/Employee stock purchase'),
(3, '工作優閒場所', ' Work and leisure place'),
(4, '員工聚餐', 'Staff banquet'),
(5, '飲食福利', 'Dietary welfare'),
(6, '員工優惠', 'Employee discount'),
(7, '績效獎金', 'Performance bonus'),
(8, '員工旅遊', 'Company trip'),
(9, '旅遊補助', 'Travel allowance'),
(10, '年終派對', 'Year-end party');

-- --------------------------------------------------------

--
-- Table structure for table `computer_skills`
--

CREATE TABLE `computer_skills` (
  `id` int(11) NOT NULL,
  `name_zh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','hidden') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `computer_skills`
--

INSERT INTO `computer_skills` (`id`, `name_zh`, `name_en`, `status`) VALUES
(1, 'Microsoft Word', 'Microsoft Word', 'active'),
(2, 'Microsoft Excel', 'Microsoft Excel', 'active'),
(3, 'Microsoft Powerpoint', 'Microsoft Powerpoint', 'active'),
(4, 'Adobe Photoshop', 'Adobe Photoshop', 'active'),
(5, 'Adobe Illustrator', 'Adobe Illustrator', 'active'),
(6, 'Adobe Indesign', 'Adobe Indesign', 'active'),
(7, 'AutoCAD', 'AutoCAD', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `area` enum('hk','kln','nt') COLLATE utf8_unicode_ci NOT NULL,
  `name_zh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `area`, `name_zh`, `name_en`) VALUES
(1, 'hk', '中西區', 'Central and Western'),
(2, 'hk', '東區', 'Eastern'),
(3, 'hk', '南區', 'Southern'),
(4, 'hk', '灣仔區', 'Wan Chai'),
(5, 'kln', '九龍城區', 'Kowloon City'),
(6, 'kln', '觀塘區', 'Kwun Tong'),
(7, 'kln', '深水埗區', 'Sham Shui Po'),
(8, 'kln', '黃大仙區', 'Wong Tai Sin'),
(9, 'kln', '油尖旺區', 'Yau Tsim Mong'),
(10, 'nt', '離島區', 'Islands'),
(11, 'nt', '葵青區', 'Kwai Tsing'),
(12, 'nt', '北區', 'North'),
(13, 'nt', '西貢區', 'Sai Kung'),
(14, 'nt', '沙田區', 'Sha Tin'),
(15, 'nt', '大埔區', 'Tai Po'),
(16, 'nt', '荃灣區', 'Tsuen Wan'),
(17, 'nt', '屯門區', 'Tuen Mun'),
(18, 'nt', '元朗區', 'Yuen Long');

-- --------------------------------------------------------

--
-- Table structure for table `employers_benefits`
--

CREATE TABLE `employers_benefits` (
  `id` int(11) NOT NULL,
  `employer_id` int(11) NOT NULL,
  `benefit_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employers_benefits`
--

INSERT INTO `employers_benefits` (`id`, `employer_id`, `benefit_id`) VALUES
(1, 1, 2),
(3, 1, 5),
(4, 2, 3),
(5, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employer_users`
--

CREATE TABLE `employer_users` (
  `id` int(11) NOT NULL,
  `name_zh` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `description_zh` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_en` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `industry_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `address_zh` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_en` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scale` enum('under 20','21-100','101-500','501-1000','above 1000') COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_url` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('active','hidden') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employer_users`
--

INSERT INTO `employer_users` (`id`, `name_zh`, `name_en`, `description_zh`, `description_en`, `industry_id`, `district_id`, `address_zh`, `address_en`, `tel`, `scale`, `thumbnail_url`, `status`) VALUES
(1, '錦綉花園物業管理有限公司', 'Fairview Park Property Management Limited', '錦綉花園位於元朗市郊，擁有超過五千戶獨立屋及市中心商場的繁榮社區。', 'Fairview Park is a thriving suburban community of over 5,000 houses surrounding a commercial town centre in Yuen Long.', 12, 18, '新界元朗錦綉花園市中心G座', 'Block G, Town Centre, Fairview Park, Yuen Long, New Territories', '21232123', '501-1000', '6f3f3-index_r6_c1.jpg', 'active'),
(2, '', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'active'),
(5, '', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'employer', 'Employer User'),
(2, 'applicant', 'Applicant User');

-- --------------------------------------------------------

--
-- Table structure for table `industries`
--

CREATE TABLE `industries` (
  `id` int(11) NOT NULL,
  `name_zh` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `industries`
--

INSERT INTO `industries` (`id`, `name_zh`, `name_en`) VALUES
(1, '農業、林業及漁業 ', 'Agriculture, forestry and fishing '),
(2, '採礦及採石業', 'Mining and quarrying '),
(3, '製造業', 'Manufacturing'),
(4, '電力及燃氣供應', 'Electricity and gas supply'),
(5, '自來水供應；污水處理、廢棄物管理\r\n及污染防治活動 ', 'Water supply; sewerage, waste\r\nmanagement and remediation\r\nactivities'),
(6, '建造業', 'Construction'),
(7, '進出口貿易、批發及零售業', 'Import/export, wholesale and retail\r\ntrades '),
(8, '運輸、倉庫、郵政及速遞服務', 'Transportation, storage, postal and\r\ncourier services '),
(9, '住宿及膳食服務活動', 'Accommodation and food service\r\nactivities'),
(10, '資訊及通訊', 'Information and communications'),
(11, '金融及保險活動', 'Financial and insurance activities'),
(12, '地產活動', 'Real estate activities'),
(13, '專業、科學及技術活動', 'Professional, scientific and technical\r\nactivities'),
(14, '行政及支援服務活動', 'Administrative and support service\r\nactivities'),
(15, '公共行政', 'Public administration'),
(16, '教育業', 'Education'),
(17, '人類保健及社會工作活動', 'Human health and social work\r\nactivities'),
(18, '藝術、娛樂及康樂活動', 'Arts, entertainment and recreation'),
(19, '其他服務活動', 'Other service activities'),
(20, '家庭住戶內部工作活動', 'Work activities within domestic\r\nhouseholds'),
(21, '享有治外法權的組織及團體活動', 'Activities of extraterritorial\r\norganisations and bodies');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `pos` int(11) NOT NULL DEFAULT '99',
  `name_zh` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('parttime','fulltime','temporary','freelance') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'parttime',
  `employer_user_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `location_zh` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `location_en` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `monthly_wage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hourly_wage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_zh` longtext COLLATE utf8_unicode_ci,
  `description_en` longtext COLLATE utf8_unicode_ci,
  `quota` int(11) DEFAULT NULL,
  `payment_method` enum('cash','transfer','cheque') COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','hidden') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `publish_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `pos`, `name_zh`, `name_en`, `type`, `employer_user_id`, `district_id`, `location_zh`, `location_en`, `monthly_wage`, `hourly_wage`, `description_zh`, `description_en`, `quota`, `payment_method`, `status`, `publish_date`) VALUES
(1, 0, '高級保安員 (日班)', 'Senior Security Guard', 'fulltime', 1, 18, '錦綉花園', 'Fairview Park', '12000', 'string', '負責執行日常保安工作，包括巡邏、訪客出入登記、交通指揮及協助處理突然事件', '負責執行日常保安工作，包括巡邏、訪客出入登記、交通指揮及協助處理突然事件', 2, 'transfer', 'active', '2019-02-28 16:21:09'),
(2, 0, '保安隊長 (日班)', 'Security Officer', 'fulltime', 1, 18, '錦綉花園', 'Fairview Park', '14000', 'string', '負責協助監察及執行日常保安工作及處理突發事件', '負責協助監察及執行日常保安工作及處理突發事件', 1, 'transfer', 'active', '2019-02-27 16:23:13'),
(3, 0, '保安隊長 (夜班)', 'Security Officer', 'fulltime', 1, 18, '錦綉花園', 'Fairview Park', '14000', 'string', '負責協助監察及執行日常保安工作及處理突發事件', '負責協助監察及執行日常保安工作及處理突發事件', 1, 'transfer', 'active', '2019-02-26 16:23:37'),
(4, 0, '保安主任', 'Security Manager', 'fulltime', 1, 18, '錦綉花園', 'Fairview Park', '18000', 'string', '監察及獨立處理日常保安管理工作，包括突發事件應變、違泊車扣鎖、培訓下屬保安知識、處理住客查詢及投訴', '監察及獨立處理日常保安管理工作，包括突發事件應變、違泊車扣鎖、培訓下屬保安知識、處理住客查詢及投訴', 1, 'transfer', 'active', '2019-02-28 16:25:10');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_tags`
--

CREATE TABLE `jobs_tags` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_applicants`
--

CREATE TABLE `job_applicants` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `applicant_user_id` int(11) NOT NULL,
  `work_date` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `work_time` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `applied_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cancelled_at` timestamp NULL DEFAULT NULL,
  `application_status` enum('submitted','in_progress','offered','confirmed','withdrawn','vacancy_filled') COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','hidden') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_slots`
--

CREATE TABLE `job_slots` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `language_abilities`
--

CREATE TABLE `language_abilities` (
  `id` int(11) NOT NULL,
  `name_zh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `language_abilities`
--

INSERT INTO `language_abilities` (`id`, `name_zh`, `name_en`) VALUES
(1, '廣東話', 'Cantonese'),
(2, '基本普通話', 'Basic Putonghua'),
(3, '流利普通話', 'Fluent Putonghua'),
(4, '基本英語', 'Basic English'),
(5, '流利英語', 'Fluent English');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `related_certs`
--

CREATE TABLE `related_certs` (
  `id` int(11) NOT NULL,
  `name_zh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','hidden') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `related_certs`
--

INSERT INTO `related_certs` (`id`, `name_zh`, `name_en`, `status`) VALUES
(1, 'QAS 優質保安證書', 'QAS Basic Security Guard ', 'active'),
(2, '保安人員許可證(A)', 'Security Personnel Permit (A)', 'active'),
(3, '保安人員許可證(B)', 'Security Personnel Permit (B)', 'active'),
(4, '保安人員許可證(C)', 'Security Personnel Permit (C)', 'active'),
(5, '保安人員許可證(D)', 'Security Personnel Permit (D)', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name_zh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('active','hidden') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name_zh`, `name_en`, `color`, `status`) VALUES
(1, '優秀僱主', 'Excellent Employer', NULL, 'active'),
(2, '即時出糧', 'Immediate Payment', NULL, 'active'),
(3, '大量空缺', 'High Vacancy', NULL, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `register_password` varchar(50) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `update_mobile` varchar(50) DEFAULT NULL,
  `update_mobile_code` varchar(10) DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT '0',
  `activated_at` timestamp NULL DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `info_updated` tinyint(4) DEFAULT '0',
  `info_first_copy` text,
  `remarks` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `register_password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `update_mobile`, `update_mobile_code`, `remember_code`, `created_on`, `last_login`, `active`, `activated_at`, `mobile`, `info_updated`, `info_first_copy`, `remarks`) VALUES
(1, '::1', '00000000', '$2y$08$CTTECmRGd1FdtRgHDrk6teoGAaPm30QcldGexBbiw8psREfYkmBfC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1551366538, 1551603083, 1, '2019-02-28 08:09:34', '00000000', 0, NULL, NULL),
(2, '::1', '00010001', '$2y$08$pm2CW4sI4GbJMI8SBbS0e.MHYkF98KhkPZ1klhBKfGj3MIfgde4De', '8rSlgb2f4G', NULL, NULL, '3640', NULL, NULL, NULL, NULL, NULL, 1551591555, NULL, 0, NULL, '00010001', 0, NULL, NULL),
(3, '::1', '11111111', '$2y$08$KTO4yMw34LqPI6VsiuSh5.XXghvAisv/hjVj2EF7n/GJ8yK3SZWJy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1551599558, 1551599642, 1, '2019-03-03 00:53:28', '11111111', 0, NULL, NULL),
(4, '::1', '12221222', '$2y$08$GkkF.fzwCw9QM7i28WPivO/O6KuBnPjq790nS4W1s5J/aZ8UWvyli', '7qZrlo1vi4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1551599683, 1551599844, 1, '2019-03-03 00:57:14', '12221222', 0, NULL, NULL),
(5, '::1', '00020002', '$2y$08$9vRAjulsb0wh0Xm2kz.dj.b4NqsKin11cuTpQbZKVQJ50C/YDuw5m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1551601740, 1551603050, 1, '2019-03-03 01:29:25', '00020002', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 2),
(5, 5, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_groups`
--
ALTER TABLE `admin_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_login_attempts`
--
ALTER TABLE `admin_login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_users_groups`
--
ALTER TABLE `admin_users_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_access`
--
ALTER TABLE `api_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_keys`
--
ALTER TABLE `api_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_limits`
--
ALTER TABLE `api_limits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_logs`
--
ALTER TABLE `api_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applicant_users`
--
ALTER TABLE `applicant_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `benefits`
--
ALTER TABLE `benefits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `computer_skills`
--
ALTER TABLE `computer_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employers_benefits`
--
ALTER TABLE `employers_benefits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employer_users`
--
ALTER TABLE `employer_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `industries`
--
ALTER TABLE `industries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs_tags`
--
ALTER TABLE `jobs_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_applicants`
--
ALTER TABLE `job_applicants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_slots`
--
ALTER TABLE `job_slots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language_abilities`
--
ALTER TABLE `language_abilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `related_certs`
--
ALTER TABLE `related_certs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_groups`
--
ALTER TABLE `admin_groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_login_attempts`
--
ALTER TABLE `admin_login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_users_groups`
--
ALTER TABLE `admin_users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `api_access`
--
ALTER TABLE `api_access`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_keys`
--
ALTER TABLE `api_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `api_limits`
--
ALTER TABLE `api_limits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_logs`
--
ALTER TABLE `api_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `benefits`
--
ALTER TABLE `benefits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `computer_skills`
--
ALTER TABLE `computer_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `employers_benefits`
--
ALTER TABLE `employers_benefits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `industries`
--
ALTER TABLE `industries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs_tags`
--
ALTER TABLE `jobs_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_applicants`
--
ALTER TABLE `job_applicants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_slots`
--
ALTER TABLE `job_slots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `language_abilities`
--
ALTER TABLE `language_abilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `related_certs`
--
ALTER TABLE `related_certs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
