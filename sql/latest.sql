-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 02, 2019 at 04:44 AM
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
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `about_en` text COLLATE utf8_unicode_ci,
  `about_zh` text COLLATE utf8_unicode_ci,
  `contact_en` text COLLATE utf8_unicode_ci,
  `contact_zh` text COLLATE utf8_unicode_ci,
  `privacy_statement_zh` text COLLATE utf8_unicode_ci,
  `privacy_statement_en` text COLLATE utf8_unicode_ci,
  `terms_conditions_en` text COLLATE utf8_unicode_ci,
  `terms_conditions_zh` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `about_en`, `about_zh`, `contact_en`, `contact_zh`, `privacy_statement_zh`, `privacy_statement_en`, `terms_conditions_en`, `terms_conditions_zh`) VALUES
(1, '<div>\n	<p>\n		We believe in an open and inclusive world for all. Here, opportunities and possibilities are plenty: A fresh start. A new career. A welcome change. These are just a few of the things we help people explore.</p>\n</div>\n<div>\n	<p>\n		As a leading job portal with substantial positions across China, Hong Kong, Indonesia, Philippines, Singapore and Thailand, we are Asia&rsquo;s preferred destination for job seekers. With a team of 1,000 talented individuals, we&rsquo;ve a strong local presence in every country we&rsquo;re in.</p>\n</div>\n<p>\n	&nbsp;</p>\n', '<div>\n	<p>\n		We believe in an open and inclusive world for all. Here, opportunities and possibilities are plenty: A fresh start. A new career. A welcome change. These are just a few of the things we help people explore.</p>\n</div>\n<div>\n	<p>\n		As a leading job portal with substantial positions across China, Hong Kong, Indonesia, Philippines, Singapore and Thailand, we are Asia&rsquo;s preferred destination for job seekers. With a team of 1,000 talented individuals, we&rsquo;ve a strong local presence in every country we&rsquo;re in.</p>\n</div>\n<p>\n	&nbsp;</p>\n', '<div>\n	<p>\n		We believe in an open and inclusive world for all. Here, opportunities and possibilities are plenty: A fresh start. A new career. A welcome change. These are just a few of the things we help people explore.</p>\n</div>\n<div>\n	<p>\n		As a leading job portal with substantial positions across China, Hong Kong, Indonesia, Philippines, Singapore and Thailand, we are Asia&rsquo;s preferred destination for job seekers. With a team of 1,000 talented individuals, we&rsquo;ve a strong local presence in every country we&rsquo;re in.</p>\n</div>\n<p>\n	&nbsp;</p>\n', '<div>\n	<p>\n		We believe in an open and inclusive world for all. Here, opportunities and possibilities are plenty: A fresh start. A new career. A welcome change. These are just a few of the things we help people explore.</p>\n</div>\n<div>\n	<p>\n		As a leading job portal with substantial positions across China, Hong Kong, Indonesia, Philippines, Singapore and Thailand, we are Asia&rsquo;s preferred destination for job seekers. With a team of 1,000 talented individuals, we&rsquo;ve a strong local presence in every country we&rsquo;re in.</p>\n</div>\n<p>\n	&nbsp;</p>\n', '<h3>\n	Personal Data (Privacy) Policy Statement (&ldquo;Privacy Statement&rdquo;)</h3>\n<p>\n	We pledge&nbsp;to meet fully with the requirements of the Personal Data (Privacy) Ordinance, Chapter 486 of the Laws of Hong Kong. In doing so, we will ensure compliance by its officers and staff to the strictest standards of security and confidentiality in respect of all personal information and data submitted by users via the Site and us will not, subject to the terms herein, release such information to anyone without the prior consent of the relevant user(s) of the Site (whether registered or not) (&ldquo;User(s)&rdquo;).</p>\n<p>\n	Users are strongly recommended to read this Privacy Statement carefully to have an understanding of our policy and practices with regard to the treatment of personal information and data provided by the Users on the Site. This Privacy Statement is applicable to both registered and unregistered Users, and the terms herein may be updated, revised, varied and/or amended from time to time as we may deem necessary and/or appropriate.</p>\n<p>\n	By registering for or using the services/Site, or by clicking the &lsquo;Sign up&rsquo; button, User expressly:</p>\n<ol type=\"a\">\n	<li>\n		consents to us and/or Affiliates collecting, using, disclosing and/or processing User&rsquo;s personal data for the purposes as described below;</li>\n	<li>\n		consents to us sharing, and/or disclosing Users&rsquo; personal data with/to Affiliates; and</li>\n	<li>\n		consents to us and/or Affiliates disclosing Users&rsquo; personal data to our and/or Affiliates&rsquo; third party service providers or agents (whether within or outside Hong Kong) for the purposes as described below.</li>\n</ol>\n<p>\n	If Users have questions or concerns regarding this Privacy Statement, they should contact the Customer Support Executive of our Customer Service Department, whose contact details are set out under the section headed &ldquo;Enquiries&rdquo; below.</p>\n', '<h3>\n	Personal Data (Privacy) Policy Statement (&ldquo;Privacy Statement&rdquo;)</h3>\n<h3>\n	&nbsp;</h3>\n<p>\n	<span style=\"font-size:12px;\">We pledge&nbsp;to meet fully with the requirements of the Personal Data (Privacy) Ordinance, Chapter 486 of the Laws of Hong Kong. In doing so, we will ensure compliance by its officers and staff to the strictest standards of security and confidentiality in respect of all personal information and data submitted by users via the Site and us will not, subject to the terms herein, release such information to anyone without the prior consent of the relevant user(s) of the Site (whether registered or not) (&ldquo;User(s)&rdquo;).</span></p>\n<p>\n	<span style=\"font-size:12px;\">Users are strongly recommended to read this Privacy Statement carefully to have an understanding of our policy and practices with regard to the treatment of personal information and data provided by the Users on the Site. This Privacy Statement is applicable to both registered and unregistered Users, and the terms herein may be updated, revised, varied and/or amended from time to time as we may deem necessary and/or appropriate.</span></p>\n<p>\n	<span style=\"font-size:12px;\">By registering for or using the services/Site, or by clicking the &lsquo;Sign up&rsquo; button, User expressly:</span></p>\n<ol type=\"a\">\n	<li>\n		<span style=\"font-size:12px;\">consents to us and/or Affiliates collecting, using, disclosing and/or processing User&rsquo;s personal data for the purposes as described below;</span></li>\n	<li>\n		<span style=\"font-size:12px;\">consents to us sharing, and/or disclosing Users&rsquo; personal data with/to Affiliates; and</span></li>\n	<li>\n		<span style=\"font-size:12px;\">consents to us and/or Affiliates disclosing Users&rsquo; personal data to our and/or Affiliates&rsquo; third party service providers or agents (whether within or outside Hong Kong) for the purposes as described below.</span></li>\n</ol>\n<p>\n	<span style=\"font-size:12px;\">If Users have questions or concerns regarding this Privacy Statement, they should contact the Customer Support Executive of our Customer Service Department, whose contact details are set out under the section headed &ldquo;Enquiries&rdquo; below.</span></p>\n', '<p>\n	Services provided by us through the Site therein shall be available to Job Seekers or other users such as Advertisers. Access to and use of the contents and services provided on the Site shall be subject to the term and conditions which are set out below (&ldquo;Terms and Conditions&rdquo;) and the privacy statement (&ldquo;Privacy Statement&rdquo;). For further details about our Privacy Statement, please click on this&nbsp;<a href=\"https://hk.jobsdb.com/en-hk/pages/terms/privacy-policy\">link</a>.</p>\n<p>\n	If you do not accept either or both of the Terms and Conditions and/or the Privacy Statement, please do not join, access, view, download or otherwise use any services offered by us via the Site. By your continued use of the Site, you acknowledge that you have read and understood the Terms and Conditions and the Privacy Statement and that you agree to be bound by all of its provisions. We reserve the right to amend, add to, delete or revise the Privacy Statement and the Terms and Conditions at any time without prior notice. You are advised to periodically review the Privacy Statement and the Terms and Conditions. Your access to the Site and our services will be terminated upon your notice to us that any change is unacceptable; otherwise your continued use shall constitute your acceptance of all changes and they shall be binding upon you.</p>\n', '<p>\n	Services provided by us through the Site therein shall be available to Job Seekers or other users such as Advertisers. Access to and use of the contents and services provided on the Site shall be subject to the term and conditions which are set out below (&ldquo;Terms and Conditions&rdquo;) and the privacy statement (&ldquo;Privacy Statement&rdquo;). For further details about our Privacy Statement, please click on this&nbsp;<a href=\"https://hk.jobsdb.com/en-hk/pages/terms/privacy-policy\">link</a>.</p>\n<p>\n	If you do not accept either or both of the Terms and Conditions and/or the Privacy Statement, please do not join, access, view, download or otherwise use any services offered by us via the Site. By your continued use of the Site, you acknowledge that you have read and understood the Terms and Conditions and the Privacy Statement and that you agree to be bound by all of its provisions. We reserve the right to amend, add to, delete or revise the Privacy Statement and the Terms and Conditions at any time without prior notice. You are advised to periodically review the Privacy Statement and the Terms and Conditions. Your access to the Site and our services will be terminated upon your notice to us that any change is unacceptable;&nbsp;otherwise&nbsp;your continued use shall constitute your acceptance of all changes and they shall be binding upon you.</p>\n');

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
(1, '127.0.0.1', 'webmaster', '$2y$08$/X5gzWjesYi78GqeAv5tA.dVGBVP7C1e1PzqnYCVe5s1qhlDIPPES', NULL, NULL, NULL, NULL, NULL, NULL, 1451900190, 1555927830, 1, 'Webmaster', ''),
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
  `user_id` int(11) NOT NULL,
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

INSERT INTO `api_keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 1, 'csogkkok0gwkkw0gg8cgs8488c08ogg4kcs0w8o4', 1, 1, 0, NULL, 1551603083),
(3, 3, '80804o8so4kscwgw4ow0o8wgckwwcc4sosw4c0cw', 1, 1, 0, NULL, 1551954518),
(4, 4, 'ok888k8gsocs8cw04wggok48g8kk8os4oww4s8co', 1, 1, 0, NULL, 1551599844),
(5, 5, '8s4cogws4g444o00cg0cs0ok8gco00gkswwcgw08', 1, 1, 0, NULL, 1551603050),
(6, 0, 'g8c0okk8gsgkcows08c0k8wow0s0k0cogk4c4gwo', 1, 1, 0, NULL, 1552109505),
(7, 7, '4ks8k8k8k4gcwck8wwksww40wo84sskkgg8sck08', 1, 1, 0, NULL, 1552109621),
(8, 8, 'wgg04koo80o0koo484wsgogw48s4wgcs044s0c04', 1, 1, 0, NULL, 1552109888),
(9, 9, '04go0g08o8s4g8gwo4kokg888kc8k8ww4skgcsok', 1, 1, 0, NULL, 1552117686),
(10, 10, 'ok4k84s0o088sookss84oo8swck4cgc0gsgo84k8', 1, 1, 0, NULL, 1553160476),
(11, 11, 'wg4ws0ww8gswg8s4wo84cgs8s8g8okc048k8wosg', 1, 1, 0, NULL, 1553163707),
(12, 12, 'wgg4ks8cgs04woccg4c8kggw8048s4gog8occwsk', 1, 1, 0, NULL, 1553163865),
(13, 13, 'ok0c0ckk0kggoog0sc0g4sosws8k4ws0k8808osc', 1, 1, 0, NULL, 1554045516);

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
-- Table structure for table `applicant_feedbacks`
--

CREATE TABLE `applicant_feedbacks` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `applicant_user_id` int(11) NOT NULL,
  `username` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `feedback` text COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `publish_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `applicant_feedbacks`
--

INSERT INTO `applicant_feedbacks` (`id`, `job_id`, `applicant_user_id`, `username`, `feedback`, `rating`, `publish_date`) VALUES
(1, 3, 6, 'employer1', 'Good', 3, '2019-03-18 10:39:20'),
(2, 2, 3, 'Frank Billy', 'Excellent!', 4, '2018-03-18 13:03:48'),
(3, 3, 3, 'janicew870', 'Over the last three months, her attention to customer satisfaction has not been acknowledged. She works with customers until they are satisfied and often takes that extra step to help resolve any issues that unhappy customers may have after the sale is made.', 4, '2019-03-18 13:11:47'),
(4, 14, 3, 'Panda Hotel', 'Ka Yan starts every day refreshed and ready for any problems she may face throughout the work day. ', 5, '2019-03-21 09:18:37'),
(5, 16, 3, 'William Cheng', 'Ka Yan has developed a large amount of respect from all her employees and managers. ', 5, '2019-03-22 10:52:41');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_users`
--

CREATE TABLE `applicant_users` (
  `id` int(11) NOT NULL,
  `name_zh` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` enum('female','male') COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `district_id` int(11) NOT NULL,
  `education_level` enum('primary','secondary','post_secondary','university','never') COLLATE utf8_unicode_ci DEFAULT NULL,
  `employment_status` enum('full_time','part_time','home_maker','retired','student','unemployed','self_employed') COLLATE utf8_unicode_ci DEFAULT NULL,
  `related_experience` enum('none','half_year','1_year','3_year','3_year_above') COLLATE utf8_unicode_ci DEFAULT NULL,
  `computer_skills` text COLLATE utf8_unicode_ci,
  `language_abilities` text COLLATE utf8_unicode_ci,
  `related_certs` text COLLATE utf8_unicode_ci,
  `thumbnail_url` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('active','hidden') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `applicant_users`
--

INSERT INTO `applicant_users` (`id`, `name_zh`, `name_en`, `email`, `gender`, `dob`, `district_id`, `education_level`, `employment_status`, `related_experience`, `computer_skills`, `language_abilities`, `related_certs`, `thumbnail_url`, `status`) VALUES
(3, '陳嘉欣', 'Chan Ka Yan', 'kychan@gmail.com', 'female', '1989-01-01', 1, 'secondary', 'unemployed', '3_year_above', '[\"1\",\"3\"]', '[\"1\",\"2\",\"4\"]', '[\"1\",\"2\"]', NULL, 'active'),
(4, '陳大文', 'Tai Man', 'taiman@email.com', 'male', '1984-03-17', 0, 'secondary', 'unemployed', 'none', '[\"1\",\"3\"]', '[\"1\",\"2\"]', '[\"2\"]', NULL, 'active'),
(6, '張子健', 'Cheng Tsz Kin', 'chantk@email.com', 'male', '1974-03-17', 0, 'secondary', 'full_time', '3_year_above', NULL, '[\"1\",\"2\"]', '[\"2\",\"5\"]', NULL, 'active'),
(7, '李淑宜', 'Helen', 'helen@email.com', 'female', '1970-03-21', 0, 'secondary', '', '3_year_above', '[\"1\"]', '[\"1\"]', NULL, NULL, 'active'),
(9, '林健威', 'Ben Lam', 'benlkw678@email.com', 'male', '1965-04-14', 0, 'primary', 'full_time', '3_year_above', NULL, '[\"1\",\"2\"]', '[\"1\"]', NULL, 'active'),
(12, '123', '123', '123', 'female', '1995-03-21', 0, 'post_secondary', '', '3_year', NULL, NULL, '[\"1\"]', NULL, 'active'),
(13, '', '', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active'),
(14, '', '', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active');

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
(2, '員工分紅', 'Commissios'),
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
(6, 2, 2),
(7, 2, 5),
(8, 2, 6),
(9, 2, 9),
(10, 5, 2),
(11, 5, 6),
(12, 8, 2),
(13, 8, 5),
(14, 5, 5),
(15, 5, 1);

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
  `scale` enum('under_20','21_100','101_500','501_1000','above_1000') COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_url` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('active','hidden') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employer_users`
--

INSERT INTO `employer_users` (`id`, `name_zh`, `name_en`, `description_zh`, `description_en`, `industry_id`, `district_id`, `address_zh`, `address_en`, `tel`, `scale`, `thumbnail_url`, `status`) VALUES
(1, '錦綉花園物業管理有限公司', 'Fairview Park Property Management Limited', '錦綉花園位於元朗市郊，擁有超過五千戶獨立屋及市中心商場的繁榮社區。', 'Fairview Park is a thriving suburban community of over 5,000 houses surrounding a commercial town centre in Yuen Long.', 12, 18, '新界元朗錦綉花園市中心G座', 'Block G, Town Centre, Fairview Park, Yuen Long, New Territories', '21232123', '21_100', '6f3f3-index_r6_c1.jpg', 'active'),
(2, '海洋公園', 'Park Corporation', '海洋公園致力成為一個提供平等就業機會和關懷社會的僱主，全情投入於培育及提供機會予殘疾人士和青少年，並協助他們畢業後在公園工作。', 'By working together towards an equal opportunity and caring employer, we highly involve in nurturing and providing opportunities to support included but not limited to persons with disability and young people’s transition from school to the workplace.', 18, 1, NULL, NULL, NULL, 'above_1000', '743a8-vertm.jpg', 'active'),
(5, '悅來酒店', 'Panda Hotel', '悅來酒店深信人才是酒店的棟樑，因此我們積極為員工提供愉快的工作環境，讓員工各展所長，在為顧客服務的同時獲得滿足感。我們致力鼓勵員工為顧客提供卓越的服務及締造難忘的體驗。', 'Our people are the heart and soul of the Hotel. We provide an engaging and rewarding environment to flourish and empower our associates to spend meaningful time with our guests and create enduring relationships. Our people are encouraged to deliver excellent service and create memorable experience to our guests.', 9, 9, '尖沙咀', 'Tsim Sha Tsui', '21232123', '101_500', '6fbf7-17-resize.png', 'active'),
(8, '香港百樂酒店', 'Park Hotel International Ltd', NULL, NULL, 9, 9, NULL, NULL, NULL, '501_1000', NULL, 'active'),
(10, '', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'active'),
(11, '', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'active');

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
  `description_zh` text COLLATE utf8_unicode_ci,
  `description_en` text COLLATE utf8_unicode_ci,
  `requirements_zh` text COLLATE utf8_unicode_ci,
  `requirements_en` text COLLATE utf8_unicode_ci,
  `benefits_zh` text COLLATE utf8_unicode_ci,
  `benefits_en` text COLLATE utf8_unicode_ci,
  `others_zh` text COLLATE utf8_unicode_ci,
  `others_en` text COLLATE utf8_unicode_ci,
  `quota` int(11) DEFAULT NULL,
  `payment_method` enum('cash','transfer','cheque') COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','hidden') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `publish_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `pos`, `name_zh`, `name_en`, `type`, `employer_user_id`, `district_id`, `location_zh`, `location_en`, `monthly_wage`, `hourly_wage`, `description_zh`, `description_en`, `requirements_zh`, `requirements_en`, `benefits_zh`, `benefits_en`, `others_zh`, `others_en`, `quota`, `payment_method`, `status`, `publish_date`) VALUES
(1, 0, '高級保安員 (日班)', 'Senior Security Guard', 'temporary', 1, 18, '錦綉花園', 'Fairview Park', '', '60', '負責執行日常保安工作，包括巡邏、訪客出入登記、交通指揮及協助處理突然事件', '負責執行日常保安工作，包括巡邏、訪客出入登記、交通指揮及協助處理突然事件', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'cash', 'active', '2019-02-28 16:21:09'),
(2, 0, '保安隊長 (日班)', 'Security Officer', 'parttime', 1, 18, '錦綉花園', 'Fairview Park', '', '70', '負責協助監察及執行日常保安工作及處理突發事件', '負責協助監察及執行日常保安工作及處理突發事件', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'cash', 'active', '2019-02-27 16:23:13'),
(3, 0, '保安隊長 (夜班)', 'Security Officer', 'fulltime', 1, 18, '錦綉花園', 'Fairview Park', '14000', '', '負責協助監察及執行日常保安工作及處理突發事件', '負責協助監察及執行日常保安工作及處理突發事件', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'transfer', 'hidden', '2019-02-26 16:23:37'),
(4, 0, '保安主任', 'Security Manager', 'fulltime', 1, 18, '錦綉花園', 'Fairview Park', '18000', '', '監察及獨立處理日常保安管理工作，包括突發事件應變、違泊車扣鎖、培訓下屬保安知識、處理住客查詢及投訴', '監察及獨立處理日常保安管理工作，包括突發事件應變、違泊車扣鎖、培訓下屬保安知識、處理住客查詢及投訴', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'cheque', 'hidden', '2019-02-28 16:25:10'),
(5, 99, '保安員', 'Security Guard', 'fulltime', 2, 1, '', NULL, '13500', NULL, '(月薪$13,500，另有通宵當值津貼)\r\n\r\n負責日常保安系統工作，包括：日常保安巡邏，執行保安措施及記錄狀況；確保遊人及公園財物的安全，維持公園秩序，處理突發事件等。\r\n\r\n \r\n\r\n工作要求\r\n\r\n-中三或以上程度\r\n-持有效保安人員許可證甲及乙級，並具一年以上有關保安或紀律部隊工作經驗者優先考慮\r\n-能操流利廣東話、簡單英語及普通話\r\n-能適應戶外工作及24小時輪班工作 (每天工作8小時，平均每週48小時)\r\n-必須通過辨色測試\r\n-具相關工作經驗者，可申請高級保安員\r\n-可即時上班將獲優先考慮\r\n\r\n', '(月薪$13,500，另有通宵當值津貼)\r\n\r\n負責日常保安系統工作，包括：日常保安巡邏，執行保安措施及記錄狀況；確保遊人及公園財物的安全，維持公園秩序，處理突發事件等。\r\n\r\n \r\n\r\n工作要求\r\n\r\n-中三或以上程度\r\n-持有效保安人員許可證甲及乙級，並具一年以上有關保安或紀律部隊工作經驗者優先考慮\r\n-能操流利廣東話、簡單英語及普通話\r\n-能適應戶外工作及24小時輪班工作 (每天工作8小時，平均每週48小時)\r\n-必須通過辨色測試\r\n-具相關工作經驗者，可申請高級保安員\r\n-可即時上班將獲優先考慮\r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'transfer', 'active', '2019-03-10 04:05:25'),
(6, 99, '短期/季節性保安員', 'Short Term / Seasonal Security Guard', 'parttime', 2, 1, '', NULL, NULL, '60', '時薪: HK$60/小時\r\n 合約期: 即日至2019年5月13日\r\n 工作時間: 上午9時至晚上8時 (按輪值冊編配而定，每天約8-10小時)\r\n每週工作3 – 6天，包括星期六、日、公眾假期及假期前夕\r\n\r\n-負責維持秩序及遊客安全\r\n\r\n \r\n\r\n工作要求\r\n\r\n- 持有效保安人員許可証甲及乙級\r\n- 能說流利廣東話、簡單英語及普通話\r\n- 誠懇有禮、具責任感\r\n\r\n', '時薪: HK$60/小時\r\n 合約期: 即日至2019年5月13日\r\n 工作時間: 上午9時至晚上8時 (按輪值冊編配而定，每天約8-10小時)\r\n每週工作3 – 6天，包括星期六、日、公眾假期及假期前夕\r\n\r\n-負責維持秩序及遊客安全\r\n\r\n \r\n\r\n工作要求\r\n\r\n- 持有效保安人員許可証甲及乙級\r\n- 能說流利廣東話、簡單英語及普通話\r\n- 誠懇有禮、具責任感\r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cash', 'active', '2019-04-19 04:05:25'),
(7, 99, '保安員', 'Security Guard', 'fulltime', 5, 9, '', NULL, '13000', NULL, ' 職責:\r\n\r\n酒店保安和顧客服務工作\r\n每天工作9小時，24小時輪班\r\n \r\n\r\n要求:\r\n\r\n持有急救證書 (可於入職後考取)\r\n持有保安人員許可證\r\n具基本電腦操作知識\r\n \r\n\r\n福利:\r\n\r\n每月6天休息日\r\n酌情性花紅\r\n供膳食\r\n年假 12天、全薪侍產假、婚假及恩恤假\r\n醫療福利 (門診及住院)\r\n酒店餐飲優惠、海外酒店住宿優惠\r\n在職培訓及進修津貼', ' 職責:\r\n\r\n酒店保安和顧客服務工作\r\n每天工作9小時，24小時輪班\r\n \r\n\r\n要求:\r\n\r\n持有急救證書 (可於入職後考取)\r\n持有保安人員許可證\r\n具基本電腦操作知識\r\n \r\n\r\n福利:\r\n\r\n每月6天休息日\r\n酌情性花紅\r\n供膳食\r\n年假 12天、全薪侍產假、婚假及恩恤假\r\n醫療福利 (門診及住院)\r\n酒店餐飲優惠、海外酒店住宿優惠\r\n在職培訓及進修津貼', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'transfer', 'active', '2019-03-10 04:27:40'),
(8, 99, '保安主管', 'Security supervisor', 'fulltime', 5, 9, '', NULL, '16000', NULL, '負責巡邏酒店室地方、各項設施及一般保安工作\r\n安排保安員工作崗位\r\n最小具有1年酒店保安主管工作經驗\r\n懂基本電腦操作\r\n具良好溝通能力和人際技巧\r\n積極的工作態度, 工作熱誠，待人有禮, 具良好顧客服務態度及團隊精神\r\n須持有效保安員許可證\r\n流利粵語、一般英語\r\n需輪休、輪班工作\r\n如保安主管經驗較少的候選人可以申請為高級保安主任/保安。 ', 'Responsible for patrolling areas of the hotel, facilities and general security work;\r\nArranging posts for security guards;\r\nMinimum of 1 year as Security supervisor in the hotel industry;\r\nknowledge of basic computer operation\r\nStrong communication and interpersonal skills;\r\nPositive attitude, enthusiasm, Polite, customer-oriented and a good team player;\r\nHolder of valid Security Personnel Permit Certificate;\r\nGood command of Chinese and general English; and\r\nShift duty is required;', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'transfer', 'active', '2019-03-10 04:27:40'),
(9, 99, '保安員', 'Security Guard', 'parttime', 5, 3, '', NULL, '', '70', ' 職責:\r\n\r\n酒店保安和顧客服務工作\r\n每天工作9小時，24小時輪班\r\n \r\n\r\n要求:\r\n\r\n持有急救證書 (可於入職後考取)\r\n持有保安人員許可證\r\n具基本電腦操作知識\r\n \r\n\r\n福利:\r\n\r\n每月6天休息日\r\n酌情性花紅\r\n供膳食\r\n年假 12天、全薪侍產假、婚假及恩恤假\r\n醫療福利 (門診及住院)\r\n酒店餐飲優惠、海外酒店住宿優惠\r\n在職培訓及進修津貼', ' 職責:\r\n\r\n酒店保安和顧客服務工作\r\n每天工作9小時，24小時輪班\r\n \r\n\r\n要求:\r\n\r\n持有急救證書 (可於入職後考取)\r\n持有保安人員許可證\r\n具基本電腦操作知識\r\n \r\n\r\n福利:\r\n\r\n每月6天休息日\r\n酌情性花紅\r\n供膳食\r\n年假 12天、全薪侍產假、婚假及恩恤假\r\n醫療福利 (門診及住院)\r\n酒店餐飲優惠、海外酒店住宿優惠\r\n在職培訓及進修津貼', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'transfer', 'active', '2019-03-10 04:28:56'),
(10, 99, '兼職保安員', 'Part Time Security Guard', 'parttime', 5, 9, '', NULL, NULL, '65', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cheque', 'active', '2019-03-10 04:32:28'),
(11, 99, '日更保安員', 'Day Shift Security Guard', 'parttime', 8, 5, '', NULL, NULL, '50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cheque', 'active', '2019-03-10 04:32:28'),
(12, 99, '保安主任', 'Security Officer', 'fulltime', 8, 9, '', NULL, '12000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'transfer', 'active', '2019-03-10 04:35:46'),
(13, 99, '保員主管', 'Security Manager', 'fulltime', 8, 9, '', NULL, '13500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'transfer', 'active', '2019-03-10 04:35:46'),
(14, 99, '高級保安員', 'Senior Security Guard', 'fulltime', 5, 1, '', NULL, '12000', NULL, '<li style=\"margin: 0px 0px 0px 32px; padding: 0px 0px 4px; border: 0px; font: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; list-style: disc outside;\">\r\n		<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 10pt; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0);\">酒店保安和顧客服務工作</span></li>\r\n	<li style=\"margin: 0px 0px 0px 32px; padding: 0px 0px 4px; border: 0px; font: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; list-style: disc outside;\">\r\n		<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 10pt; line-height: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0);\">每天工作9小時，24小時輪班</span></li>\r\n', '<li style=\"margin: 0px 0px 0px 32px; padding: 0px 0px 4px; border: 0px; font: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; list-style: disc outside;\">\r\n		<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 10pt; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0);\">酒店保安和顧客服務工作</span></li>\r\n	<li style=\"margin: 0px 0px 0px 32px; padding: 0px 0px 4px; border: 0px; font: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; list-style: disc outside;\">\r\n		<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 10pt; line-height: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0);\">每天工作9小時，24小時輪班</span></li>\r\n', '<li style=\"margin: 0px 0px 0px 32px; padding: 0px 0px 4px; border: 0px; font: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; list-style: disc outside;\">\r\n		<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 10pt; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0);\">持有急救證書 (可於入職後考取)</span></li>\r\n	<li style=\"margin: 0px 0px 0px 32px; padding: 0px 0px 4px; border: 0px; font: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; list-style: disc outside;\">\r\n		<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 10pt; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0);\">持有保安人員許可證</span></li>\r\n	<li style=\"margin: 0px 0px 0px 32px; padding: 0px 0px 4px; border: 0px; font: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; list-style: disc outside;\">\r\n		<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 10pt; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0);\">具基本電腦操作知識</span></li>\r\n', '<li style=\"margin: 0px 0px 0px 32px; padding: 0px 0px 4px; border: 0px; font: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; list-style: disc outside;\">\r\n		<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 10pt; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0);\">持有急救證書 (可於入職後考取)</span></li>\r\n	<li style=\"margin: 0px 0px 0px 32px; padding: 0px 0px 4px; border: 0px; font: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; list-style: disc outside;\">\r\n		<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 10pt; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0);\">持有保安人員許可證</span></li>\r\n	<li style=\"margin: 0px 0px 0px 32px; padding: 0px 0px 4px; border: 0px; font: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; list-style: disc outside;\">\r\n		<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 10pt; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0);\">具基本電腦操作知識</span></li>\r\n', '<li style=\"margin: 0px 0px 0px 32px; padding: 0px 0px 4px; border: 0px; font: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; list-style: disc outside;\">\r\n		<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 10pt; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0);\">每月6天休息日</span></li>\r\n	<li style=\"margin: 0px 0px 0px 32px; padding: 0px 0px 4px; border: 0px; font: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; list-style: disc outside;\">\r\n		<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 10pt; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0);\">酌情性花紅</span></li>\r\n	<li style=\"margin: 0px 0px 0px 32px; padding: 0px 0px 4px; border: 0px; font: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; list-style: disc outside;\">\r\n		<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 10pt; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0);\">供膳食</span></li>\r\n	<li style=\"margin: 0px 0px 0px 32px; padding: 0px 0px 4px; border: 0px; font: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; list-style: disc outside;\">\r\n		<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 10pt; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0);\">年假 12天、全薪侍產假、婚假及恩恤假</span></li>\r\n	<li style=\"margin: 0px 0px 0px 32px; padding: 0px 0px 4px; border: 0px; font: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; list-style: disc outside;\">\r\n		<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 10pt; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0);\">醫療福利 (門診及住院)</span></li>\r\n	<li style=\"margin: 0px 0px 0px 32px; padding: 0px 0px 4px; border: 0px; font: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; list-style: disc outside;\">\r\n		<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 10pt; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0);\">酒店餐飲優惠、海外酒店住宿優惠</span></li>\r\n	<li style=\"margin: 0px 0px 0px 32px; padding: 0px 0px 4px; border: 0px; font: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; list-style: disc outside;\">\r\n		<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 10pt; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0);\">在職培訓及進修津貼</span></li>\r\n', '<li style=\"margin: 0px 0px 0px 32px; padding: 0px 0px 4px; border: 0px; font: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; list-style: disc outside;\">\r\n		<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 10pt; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0);\">每月6天休息日</span></li>\r\n	<li style=\"margin: 0px 0px 0px 32px; padding: 0px 0px 4px; border: 0px; font: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; list-style: disc outside;\">\r\n		<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 10pt; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0);\">酌情性花紅</span></li>\r\n	<li style=\"margin: 0px 0px 0px 32px; padding: 0px 0px 4px; border: 0px; font: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; list-style: disc outside;\">\r\n		<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 10pt; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0);\">供膳食</span></li>\r\n	<li style=\"margin: 0px 0px 0px 32px; padding: 0px 0px 4px; border: 0px; font: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; list-style: disc outside;\">\r\n		<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 10pt; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0);\">年假 12天、全薪侍產假、婚假及恩恤假</span></li>\r\n	<li style=\"margin: 0px 0px 0px 32px; padding: 0px 0px 4px; border: 0px; font: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; list-style: disc outside;\">\r\n		<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 10pt; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0);\">醫療福利 (門診及住院)</span></li>\r\n	<li style=\"margin: 0px 0px 0px 32px; padding: 0px 0px 4px; border: 0px; font: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; list-style: disc outside;\">\r\n		<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 10pt; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0);\">酒店餐飲優惠、海外酒店住宿優惠</span></li>\r\n	<li style=\"margin: 0px 0px 0px 32px; padding: 0px 0px 4px; border: 0px; font: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; list-style: disc outside;\">\r\n		<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 10pt; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0);\">在職培訓及進修津貼</span></li>', '<p>\r\n	<span style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 13.3333px; line-height: inherit; font-family: Arial, sans-serif; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0);\">更多有關酒店資訊，請瀏覽網頁：www.parkhotelgroup.com.</span></p>\r\n', '<p>\r\n	<span style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 13.3333px; line-height: inherit; font-family: Arial, sans-serif; vertical-align: baseline; box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0);\">更多有關酒店資訊，請瀏覽網頁：www.parkhotelgroup.com.</span></p>\r\n', NULL, 'transfer', 'hidden', '2019-03-16 07:10:17'),
(15, 99, '123', '123', 'parttime', 1, 4, '', '', '', '', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'transfer', 'active', '2019-03-16 08:16:52'),
(16, 99, '保安員', 'Security Guard', 'parttime', 5, 3, '', NULL, NULL, '40', '<p>\n	Hello</p>\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cash', 'active', '2019-03-21 09:31:55'),
(17, 99, '保安員', 'Security Guard', 'fulltime', 5, 1, '', NULL, '16000', NULL, NULL, '<ul font-size:=\"\" helvetica=\"\" style=\"box-sizing: border-box; outline: none; margin-top: 0px; margin-bottom: 1em; color: rgb(51, 51, 51); font-family: \">\n	<li style=\"box-sizing: border-box; outline: none; text-align: justify; line-height: 12pt;\">\n		<span style=\"box-sizing: border-box; outline: none; font-family: Arial, sans-serif; color: black;\">To Protect the property and safety of all tenants and visitors, ensure to provide a safety environment within the building;</span></li>\n	<li style=\"box-sizing: border-box; outline: none; text-align: justify; line-height: 12pt;\">\n		<span style=\"box-sizing: border-box; outline: none; font-family: Arial, sans-serif; color: black;\">To Assist supervisors to perform safety plan as well as conduct in-house safety promotions;</span></li>\n	<li style=\"box-sizing: border-box; outline: none; text-align: justify; line-height: 12pt;\">\n		<span style=\"box-sizing: border-box; outline: none; font-family: Arial, sans-serif; color: black;\">To Identify possible safety and health risks and eliminate them effectively and timely;</span></li>\n	<li style=\"box-sizing: border-box; outline: none; text-align: justify; line-height: 12pt;\">\n		<span style=\"box-sizing: border-box; outline: none; font-family: Arial, sans-serif; color: black;\">To Assist supervisors to enforce property security and safety policies and procedures;</span></li>\n	<li style=\"box-sizing: border-box; outline: none; text-align: justify; line-height: 12pt;\">\n		<span style=\"box-sizing: border-box; outline: none; font-family: Arial, sans-serif; color: black;\">To Support to perform accident investigations;</span></li>\n	<li style=\"box-sizing: border-box; outline: none; text-align: justify; line-height: 12pt;\">\n		<span style=\"box-sizing: border-box; outline: none; font-family: Arial, sans-serif; color: black;\">To Prepare necessary security / safety Incident reports;</span></li>\n	<li style=\"box-sizing: border-box; outline: none; text-align: justify; line-height: 12pt;\">\n		<span style=\"box-sizing: border-box; outline: none; font-family: Arial, sans-serif; color: black;\">To ensure the Estate in smooth operation;</span></li>\n	<li style=\"box-sizing: border-box; outline: none; text-align: justify; line-height: 12pt;\">\n		<span style=\"box-sizing: border-box; outline: none; font-family: Arial, sans-serif; color: black;\">To deliver security services to different activities;</span></li>\n	<li style=\"box-sizing: border-box; outline: none; text-align: justify; line-height: 12pt;\">\n		<span style=\"box-sizing: border-box; outline: none; font-family: Arial, sans-serif; color: black;\">To assist crowd control and other security works;</span></li>\n</ul>\n', NULL, '<ul font-size:=\"\" helvetica=\"\" style=\"box-sizing: border-box; outline: none; margin-top: 0px; margin-bottom: 1em; color: rgb(51, 51, 51); font-family: \">\n	<li style=\"box-sizing: border-box; outline: none; text-align: justify; line-height: 12pt;\">\n		<span style=\"box-sizing: border-box; outline: none; font-family: Arial, sans-serif; color: black;\">Good command of English; Able to speak English;</span></li>\n	<li style=\"box-sizing: border-box; outline: none; text-align: justify; line-height: 12pt;\">\n		<span style=\"box-sizing: border-box; outline: none; font-family: Arial, sans-serif; color: black;\">E</span><span style=\"box-sizing: border-box; outline: none; font-family: Arial, sans-serif; color: black;\">xperience in security industry</span><span style=\"box-sizing: border-box; outline: none; font-family: Arial, sans-serif; color: black;\">&nbsp;w</span><span style=\"box-sizing: border-box; outline: none; font-family: Arial, sans-serif; color: black;\">ith minimum 1 year relevant</span><span style=\"box-sizing: border-box; outline: none; font-family: Arial, sans-serif; color: black;\">;</span></li>\n	<li style=\"box-sizing: border-box; outline: none; text-align: justify; line-height: 12pt;\">\n		<span style=\"box-sizing: border-box; outline: none; font-family: Arial, sans-serif; color: black;\">Hold valid Security Personnel Permit and QAS certificate;</span></li>\n	<li style=\"box-sizing: border-box; outline: none; text-align: justify; line-height: 12pt;\">\n		<span style=\"box-sizing: border-box; outline: none; font-family: Arial, sans-serif; color: black;\">Possession of valid Security Personnel Permit and First Aid Certificate;</span><span style=\"box-sizing: border-box; outline: none; font-family: Arial, sans-serif; color: black;\">&nbsp;and</span></li>\n	<li style=\"box-sizing: border-box; outline: none; text-align: justify; line-height: 12pt;\">\n		<span style=\"box-sizing: border-box; outline: none; font-family: Arial, sans-serif; color: black;\">Effective communication and interpersonal skills</span><span style=\"box-sizing: border-box; outline: none; font-family: Arial, sans-serif; color: black;\">;</span></li>\n</ul>\n', NULL, NULL, NULL, '<p>\n	<span style=\"box-sizing: border-box; outline: none; font-size: 14px; text-align: justify; font-family: Arial, sans-serif; color: black;\">Working Hours : 12 hours per day (</span><span style=\"box-sizing: border-box; outline: none; font-size: 14px; text-align: justify; font-family: Arial, sans-serif; color: black;\">Day shift 07</span><span style=\"box-sizing: border-box; outline: none; font-size: 14px; text-align: justify; font-family: Arial, sans-serif; color: black;\">:00</span><span style=\"box-sizing: border-box; outline: none; font-size: 14px; text-align: justify; font-family: Arial, sans-serif; color: black;\">&nbsp;to 19</span><span style=\"box-sizing: border-box; outline: none; font-size: 14px; text-align: justify; font-family: Arial, sans-serif; color: black;\">:00</span><span style=\"box-sizing: border-box; outline: none; font-size: 14px; text-align: justify; font-family: Arial, sans-serif; color: black;\">/</span><span style=\"box-sizing: border-box; outline: none; font-size: 14px; text-align: justify; font-family: Arial, sans-serif; color: black;\">&nbsp;Night shift 19</span><span style=\"box-sizing: border-box; outline: none; font-size: 14px; text-align: justify; font-family: Arial, sans-serif; color: black;\">:00</span><span style=\"box-sizing: border-box; outline: none; font-size: 14px; text-align: justify; font-family: Arial, sans-serif; color: black;\">&nbsp;to 07</span><span style=\"box-sizing: border-box; outline: none; font-size: 14px; text-align: justify; font-family: Arial, sans-serif; color: black;\">:00)</span></p>\n', NULL, 'transfer', 'active', '2019-04-12 16:00:00');

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
  `applied_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cancelled_at` timestamp NULL DEFAULT NULL,
  `last_updated_at` timestamp NULL DEFAULT NULL,
  `application_status` enum('submitted','in_progress','offered','accepted_offer','withdrawn','vacancy_filled','rejected_offer','cancelled') COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','hidden') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `job_applicants`
--

INSERT INTO `job_applicants` (`id`, `job_id`, `applicant_user_id`, `applied_at`, `updated_at`, `cancelled_at`, `last_updated_at`, `application_status`, `status`) VALUES
(1, 13, 6, '2019-03-11 05:44:08', NULL, '2019-03-11 05:44:33', '2019-03-11 05:44:33', 'cancelled', 'active'),
(2, 11, 6, '2019-03-11 05:44:19', '2019-03-11 05:46:30', NULL, '2019-03-11 05:46:30', 'accepted_offer', 'active'),
(3, 10, 6, '2019-03-11 05:46:42', NULL, NULL, '2019-03-11 05:46:42', 'submitted', 'active'),
(4, 13, 4, '2019-03-11 06:13:55', NULL, NULL, '2019-03-11 06:13:55', 'submitted', 'active'),
(5, 3, 3, '2019-03-16 20:38:41', '2019-03-18 01:34:12', NULL, '2019-03-18 01:34:12', 'vacancy_filled', 'active'),
(6, 2, 3, '2019-03-16 20:38:47', '2019-03-18 03:42:59', NULL, '2019-03-18 03:42:59', 'accepted_offer', 'active'),
(7, 4, 3, '2019-03-16 20:38:53', '2019-03-31 07:47:57', NULL, '2019-03-31 07:47:57', 'withdrawn', 'active'),
(8, 2, 4, '2019-03-16 20:42:11', NULL, NULL, '2019-03-16 20:42:11', 'submitted', 'active'),
(9, 3, 4, '2019-03-16 20:42:17', '2019-03-31 06:55:17', NULL, '2019-03-31 06:55:17', 'withdrawn', 'active'),
(10, 2, 6, '2019-03-16 20:43:25', NULL, NULL, '2019-03-16 20:43:25', 'submitted', 'active'),
(11, 3, 6, '2019-03-16 20:43:30', '2019-03-31 06:55:17', NULL, '2019-03-31 06:55:17', 'withdrawn', 'active'),
(12, 1, 6, '2019-03-16 20:43:35', NULL, NULL, '2019-03-16 20:43:35', 'submitted', 'active'),
(14, 14, 4, '2019-03-21 02:36:47', '2019-03-21 02:44:32', NULL, '2019-03-21 02:44:32', 'vacancy_filled', 'active'),
(15, 14, 6, '2019-03-21 02:37:14', '2019-04-07 02:13:10', NULL, '2019-04-07 02:13:10', 'vacancy_filled', 'active'),
(16, 14, 7, '2019-03-21 02:38:34', '2019-04-07 02:13:28', NULL, '2019-04-07 02:13:28', 'withdrawn', 'active'),
(17, 9, 12, '2019-03-21 03:42:10', NULL, NULL, '2019-03-21 03:42:10', 'submitted', 'active'),
(18, 16, 3, '2019-03-21 03:47:46', '2019-03-21 03:50:44', NULL, '2019-03-21 03:50:44', 'accepted_offer', 'active'),
(19, 9, 3, '2019-03-21 04:21:47', '2019-03-31 08:34:00', NULL, '2019-03-31 08:34:00', 'rejected_offer', 'active'),
(20, 10, 3, '2019-03-31 08:10:45', '2019-04-07 01:39:14', NULL, '2019-04-07 01:39:14', 'rejected_offer', 'active'),
(21, 7, 3, '2019-03-31 08:14:15', NULL, NULL, '2019-03-31 08:14:15', 'submitted', 'active'),
(22, 8, 3, '2019-03-31 08:14:32', NULL, '2019-03-31 08:35:41', '2019-03-31 08:35:41', 'cancelled', 'active'),
(23, 17, 3, '2019-04-14 03:13:33', '2019-04-14 03:27:10', NULL, '2019-04-14 03:27:10', 'submitted', 'active'),
(24, 17, 4, '2019-04-14 03:17:18', '2019-04-14 03:24:55', NULL, '2019-04-14 03:24:55', 'submitted', 'active'),
(25, 17, 7, '2019-04-14 03:18:11', '2019-04-14 03:24:42', NULL, '2019-04-14 03:24:42', 'submitted', 'active'),
(26, 17, 6, '2019-04-14 03:19:27', '2019-04-14 03:24:29', NULL, '2019-04-14 03:24:29', 'submitted', 'active'),
(27, 17, 9, '2019-04-14 03:30:43', NULL, '2019-04-14 03:30:48', '2019-04-14 03:30:48', 'cancelled', 'active');

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
(1, '::1', '00000000', '$2y$08$CTTECmRGd1FdtRgHDrk6teoGAaPm30QcldGexBbiw8psREfYkmBfC', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, 1551366538, 1554620513, 1, '2019-02-28 08:09:34', '00000000', 0, NULL, NULL),
(2, '::1', '00010001', '$2y$08$pm2CW4sI4GbJMI8SBbS0e.MHYkF98KhkPZ1klhBKfGj3MIfgde4De', '8rSlgb2f4G', NULL, NULL, '3640', NULL, NULL, NULL, NULL, NULL, 1551591555, NULL, 0, NULL, '00010001', 0, NULL, NULL),
(3, '::1', '11111111', '$2y$08$KTO4yMw34LqPI6VsiuSh5.XXghvAisv/hjVj2EF7n/GJ8yK3SZWJy', NULL, NULL, NULL, NULL, NULL, NULL, '11111111', '1209', NULL, 1551599558, 1555925517, 1, '2019-03-03 00:53:28', '11111111', 1, '{\"name_zh\":\"\\u9673\\u5609\\u6b23\",\"name_en\":\"Chan Ka Yan\",\"email\":\"kychan@gmail.com\",\"gender\":\"female\",\"dob\":\"1989-01-01\",\"education_level\":\"secondary\",\"employment_status\":\"unemployed\",\"related_experience\":\"3_year_above\",\"computer_skills\":\"[\\\"1\\\",\\\"3\\\"]\",\"language_abilities\":\"[\\\"1\\\",\\\"2\\\",\\\"4\\\"]\",\"related_certs\":\"[\\\"1\\\",\\\"2\\\"]\"}', NULL),
(4, '::1', '12221222', '$2y$08$GkkF.fzwCw9QM7i28WPivO/O6KuBnPjq790nS4W1s5J/aZ8UWvyli', NULL, NULL, NULL, NULL, '8419', 1555221281, NULL, NULL, NULL, 1551599683, 1555233430, 1, '2019-03-03 00:57:14', '12221222', 1, '{\"name_zh\":\"\\u9673\\u5927\\u6587\",\"name_en\":\"Tai Man\",\"email\":\"taiman@email.com\",\"gender\":\"male\",\"dob\":\"2019-03-17\",\"education_level\":\"secondary\",\"employment_status\":\"unemployed\",\"related_experience\":\"none\",\"language_abilities\":\"[\\\"1\\\",\\\"2\\\"]\",\"related_certs\":\"[\\\"2\\\"]\"}', NULL),
(5, '::1', '00020002', '$2y$08$9vRAjulsb0wh0Xm2kz.dj.b4NqsKin11cuTpQbZKVQJ50C/YDuw5m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1551601740, 1555238114, 1, '2019-03-03 01:29:25', '00020002', 0, NULL, NULL),
(6, '::1', '13331333', '$2y$08$VxdsiyHQwDvs7iRv4ePNNO6nA.eUfmL.wW/PIuZMkH93RXVvA6IKK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1552109480, 1555233561, 1, '2019-03-08 22:31:45', '13331333', 1, '{\"name_zh\":\"\\u9673\\u9673\",\"name_en\":\"Chan\",\"email\":\"chan@email.com\",\"gender\":\"female\",\"dob\":\"2019-03-17\",\"education_level\":\"primary\",\"employment_status\":\"full_time\",\"related_experience\":\"3_year_above\",\"language_abilities\":\"[\\\"1\\\",\\\"2\\\"]\",\"related_certs\":\"[\\\"2\\\",\\\"5\\\"]\"}', NULL),
(7, '::1', '14441444', '$2y$08$sTOFmxZTp/gXTiw6jXGoB.6zR3KDavf2hjWctOtF6Bq4SoqOMuM0i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1552109611, 1555233485, 1, '2019-03-08 22:33:41', '14441444', 1, '{\"name_zh\":\"Helen\",\"name_en\":\"Helen\",\"email\":\"helen@email.com\",\"gender\":\"female\",\"dob\":\"1977-03-21\",\"education_level\":\"secondary\",\"employment_status\":\"\",\"related_experience\":\"3_year_above\",\"language_abilities\":\"[\\\"1\\\"]\"}', NULL),
(8, '::1', '00030003', '$2y$08$efqwwTOgaszd3J2ZM.c7HeiK3mh9FEVVmwsdtIMrxbJyB7yxSuIEW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1552109804, 1552110371, 1, '2019-03-08 22:38:08', '00030003', 0, NULL, NULL),
(9, '::1', '15551555', '$2y$08$sUcoyfQ4QJln7y0OP83egeNrtAZCxzKlH6NVg5RwBL9j5d5lteX/W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1552117654, 1555234155, 1, '2019-03-09 00:48:06', '15551555', 1, '{\"name_zh\":\"\\u6797\\u5065\\u5a01\",\"name_en\":\"Ben Lam\",\"email\":\"benlkw678@email.com\",\"gender\":\"male\",\"dob\":\"1965-04-14\",\"education_level\":\"primary\",\"employment_status\":\"full_time\",\"related_experience\":\"3_year_above\",\"language_abilities\":\"[\\\"1\\\",\\\"2\\\"]\",\"related_certs\":\"[\\\"1\\\"]\"}', NULL),
(10, '::1', '09870987', '$2y$08$LYweN.VMMJ.fws9q8iY3HOJ/b8IbjXQZw8iaOtc5TMBpHtf6EsYwu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1553160362, 1553160619, 1, '2019-03-21 02:27:56', '09870987', 0, NULL, NULL),
(11, '::1', '99999999', '$2y$08$IIifqyZ9nXSvTuTqozbXCu2IyKbNNS1sX2AXGN7GMTumu7rNwclw.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1553163602, 1553163793, 1, '2019-03-21 03:21:47', '99999999', 0, NULL, NULL),
(12, '::1', '22222222', '$2y$08$3I/5IIobLDwlWJhosOZJQeXcctw8lGNrjewBrJlw.rGHaxk0ySWWy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1553163860, 1553163865, 1, '2019-03-21 03:24:25', '22222222', 1, '{\"name_zh\":\"123\",\"name_en\":\"123\",\"email\":\"123\",\"gender\":\"female\",\"dob\":\"1995-03-21\",\"education_level\":\"post_secondary\",\"employment_status\":\"\",\"related_experience\":\"3_year\",\"related_certs\":\"[\\\"1\\\"]\"}', NULL),
(13, '::1', '12341234', '$2y$08$XMuLU7gZDL3xkp9fKisJXebPAiaTpbWv3QmrsAiq.mX5JzvzopjYa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1554045430, 1554045516, 1, '2019-03-31 09:18:36', '12341234', 0, NULL, NULL),
(14, '::1', '18881888', '$2y$08$DiZwShA4lA1wZhrCCLHK9OpFtPtf7Ht9F73ZihlXL9mcindiJe2xO', NULL, NULL, NULL, '4370', NULL, NULL, NULL, NULL, NULL, 1555221044, NULL, 0, NULL, '18881888', 0, NULL, NULL);

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
(5, 5, 1),
(6, 6, 2),
(7, 7, 2),
(8, 8, 1),
(9, 9, 2),
(10, 10, 1),
(11, 11, 1),
(12, 12, 2),
(13, 13, 2),
(14, 14, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `applicant_feedbacks`
--
ALTER TABLE `applicant_feedbacks`
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
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
-- AUTO_INCREMENT for table `applicant_feedbacks`
--
ALTER TABLE `applicant_feedbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `jobs_tags`
--
ALTER TABLE `jobs_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_applicants`
--
ALTER TABLE `job_applicants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
