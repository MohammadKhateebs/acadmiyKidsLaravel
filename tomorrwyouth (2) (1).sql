-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 13, 2021 at 05:03 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tomorrwyouth`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identification` int(11) NOT NULL,
  `branch_id` int(255) DEFAULT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `archives` int(11) NOT NULL DEFAULT '0',
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`name`, `identification`, `branch_id`, `date`, `created_at`, `updated_at`, `archives`, `id`, `role`) VALUES
('رائد  مسعود', 147144447, 2, '2021-12-06', '2021-12-07 09:25:59', '2021-12-12 19:57:09', 3, 2, 1),
('شهد', 123456787, 2, '2021-12-07', '2021-12-07 18:43:04', '2021-12-12 19:57:09', 3, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `classroom` varchar(30) NOT NULL,
  `name` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delete` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `classroom`, `name`, `created_at`, `updated_at`, `delete`) VALUES
(8, 'kg1', 'a', '2021-12-12 16:51:57', '2021-12-12 16:51:57', 0),
(9, 'kg2', 'a', '2021-12-12 16:52:52', '2021-12-12 16:52:52', 0);

-- --------------------------------------------------------

--
-- Table structure for table `evaluations`
--

CREATE TABLE `evaluations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` int(11) NOT NULL,
  `term` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `archives` int(11) NOT NULL DEFAULT '0',
  `eval_ar` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eval_en` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eval_math` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eval_deen` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `evaluations`
--

INSERT INTO `evaluations` (`id`, `branch_id`, `term`, `month`, `created_at`, `updated_at`, `note`, `archives`, `eval_ar`, `eval_en`, `eval_math`, `eval_deen`, `student_id`) VALUES
(1, 2, 1, 1, '2021-12-06 10:06:03', '2021-12-12 19:57:09', 'الطالب مجتهد يحتاج المزيد من المتابعه', 3, 'ممتاز', 'جيد جدا', 'جيد جدا', 'ممتاز', 123123123),
(5, 8, 1, 1, '2021-12-13 13:54:08', '2021-12-13 13:54:08', 'ljfdgf', 0, 'ممتاز', 'ممتاز', 'ممتاز', 'ممتاز', 658421356);

-- --------------------------------------------------------

--
-- Table structure for table `evaluation_texts`
--

CREATE TABLE `evaluation_texts` (
  `evaluation` text NOT NULL,
  `role` int(11) NOT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `evaluation_texts`
--

INSERT INTO `evaluation_texts` (`evaluation`, `role`, `id`, `created_at`, `updated_at`) VALUES
('ممتاز', 4, 2, '2021-05-03 10:34:56', '2021-05-03 10:34:56'),
('جيد جدا', 4, 3, '2021-05-11 10:31:31', '2021-05-11 10:31:31'),
('جيد', 4, 4, '2021-05-11 10:31:31', '2021-05-11 10:31:31'),
('مقبول', 4, 5, '2021-05-11 10:31:31', '2021-05-11 10:31:31'),
('ضعيف', 4, 6, '2021-05-11 10:31:31', '2021-05-11 10:31:31');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `installments`
--

CREATE TABLE `installments` (
  `id` int(11) NOT NULL,
  `term` int(4) NOT NULL,
  `month` int(4) NOT NULL,
  `receipt` float NOT NULL,
  `student_id` int(100) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `installments` double NOT NULL,
  `archives` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `installments`
--

INSERT INTO `installments` (`id`, `term`, `month`, `receipt`, `student_id`, `updated_at`, `created_at`, `installments`, `archives`) VALUES
(61, 1, 1, 100, 145236752, '2021-12-12 19:57:09', '2021-12-12 10:12:28', 200, 3),
(62, 1, 1, 100, 658421356, '2021-12-12 19:57:09', '2021-12-12 10:12:49', 100, 3);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `fromRole` int(2) NOT NULL,
  `toRole` int(2) NOT NULL,
  `fromId` int(10) NOT NULL,
  `toId` int(10) NOT NULL,
  `text` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `seen` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_12_124357_create_students_table', 1),
(5, '2021_03_12_124411_create_volunteers_table', 1),
(6, '2021_03_28_085914_create_courses_table', 1),
(7, '2021_03_28_090001_create_teachers_table', 1),
(8, '2021_03_29_111938_create_attendances_table', 1),
(9, '2021_04_01_194657_create_evaluations_table', 2),
(10, '0000_00_00_000000_create_websockets_statistics_entries_table', 3),
(11, '2019_12_14_000001_create_personal_access_tokens_table', 3);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `term` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `salary` double NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `archives` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salaries`
--

INSERT INTO `salaries` (`id`, `term`, `month`, `salary`, `teacher_id`, `created_at`, `updated_at`, `archives`) VALUES
(9, 1, 1, 1000, 1474, '2021-12-12 16:33:59', '2021-12-12 19:57:09', 3),
(10, 1, 1, 1000, 258951753, '2021-12-12 16:34:20', '2021-12-12 19:57:09', 3);

-- --------------------------------------------------------

--
-- Table structure for table `show_requests`
--

CREATE TABLE `show_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `switch` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `show_requests`
--

INSERT INTO `show_requests` (`id`, `switch`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, '2021-05-20 18:35:51');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secondName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thirdName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identification` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `confirmed` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `teacher` text COLLATE utf8mb4_unicode_ci,
  `teacherID` int(11) DEFAULT NULL,
  `archives` int(11) NOT NULL DEFAULT '0',
  `birthday` date DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `installments` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`firstName`, `secondName`, `thirdName`, `lastName`, `gender`, `identification`, `phone`, `address`, `active`, `confirmed`, `created_at`, `updated_at`, `teacher`, `teacherID`, `archives`, `birthday`, `branch_id`, `installments`) VALUES
('شهد', 'احمد', 'سمير', 'واصف', 'أنثى', 145236752, 568763249, 'ديرنظام', 'inactive', 1, '2021-11-20 13:52:58', '2021-12-12 19:57:09', NULL, NULL, 0, '2021-12-01', 8, 200),
('محمد', 'محمود', 'احمد', 'حمد', 'أنثى', 658421356, 265862489, 'رام الله', 'inactive', 1, '2021-12-05 16:51:05', '2021-12-12 21:23:24', NULL, NULL, 0, '2021-12-23', 8, 120);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identification` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delete` int(11) NOT NULL DEFAULT '0',
  `educationLevel` text COLLATE utf8mb4_unicode_ci,
  `phone` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `salary` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `identification`, `created_at`, `updated_at`, `delete`, `educationLevel`, `phone`, `branch_id`, `salary`) VALUES
(15, 'محممد', 1474, '2021-05-10 14:58:22', '2021-12-12 16:57:04', 1, NULL, NULL, NULL, 1000),
(22, 'ملاك', 258951753, '2021-12-07 18:00:16', '2021-12-12 16:35:27', 0, 'بكالوريوس', 258753159, 9, 1000),
(23, 'جنان', 753159852, '2021-12-12 17:15:19', '2021-12-12 17:15:19', 0, 'بكالوريوس', 531598520, 8, 1200);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `archives` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `userid`, `role`, `password`, `remember_token`, `created_at`, `updated_at`, `archives`, `name`) VALUES
(1, 123456789, 1, '$2y$10$uVxSHT8wTEZPDDEsV/1.CuuUcZBFO2yoVj77tmM5xKKfvV8SSik0G', NULL, NULL, '2021-05-03 10:31:38', 0, 'ادمن'),
(27, 500, 2, '$2y$10$xEOKuZ.lTXKUf/49N0gZJe1tCgCbJe3SUAvcKgdXiShtItjBu8KEu', NULL, '2021-04-09 15:28:24', '2021-04-09 15:28:24', 0, ''),
(28, 501, 2, '$2y$10$piUBfovWATpcURXV8X90ru8Q9sN5h8OYw3QMq5ClAT1T3cWFhLWla', NULL, '2021-04-09 15:28:48', '2021-04-09 15:28:48', 0, ''),
(29, 502, 2, '$2y$10$DVPJYgePsL79pq83/QThR.9E7e54f.WhwdQRKN9a4oFlZ/G8sQUKy', NULL, '2021-04-09 15:29:25', '2021-04-09 15:29:25', 0, ''),
(39, 4040, 2, '$2y$10$Blaw1tv.Y.YRyXfvTQw5OOhOLwjSlotJiWtSY0u6r0pn5t0OJMHAa', NULL, '2021-04-10 12:28:40', '2021-04-10 12:28:40', 0, ''),
(41, 0, 2, '$2y$10$TV7qKc8T1quq/5TrChKFveGoc0qAFsEtYR/PCNGzJ/CVwy53D3hsy', NULL, '2021-04-11 16:46:30', '2021-04-11 16:46:30', 0, ''),
(67, 753159852, 2, '$2y$10$M1GVl8zbtVmEhQpaP24U7OCW1CXTFgA3KzjmiI.18/yhBvnk6Do4O', NULL, '2021-12-12 17:15:19', '2021-12-12 17:15:19', 0, 'جنان');

-- --------------------------------------------------------

--
-- Table structure for table `volunteers`
--

CREATE TABLE `volunteers` (
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secondName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thirdName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identification` int(10) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `university` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `universityId` int(11) NOT NULL,
  `specialization` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `academicYear` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `confirmed` tinyint(1) DEFAULT NULL,
  `studyLevel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'undefined',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permissionEvaluation` int(11) NOT NULL DEFAULT '0',
  `transportation` int(11) NOT NULL DEFAULT '0',
  `archives` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `volunteers`
--

INSERT INTO `volunteers` (`firstName`, `secondName`, `thirdName`, `lastName`, `gender`, `identification`, `phone`, `address`, `university`, `universityId`, `specialization`, `academicYear`, `active`, `confirmed`, `studyLevel`, `created_at`, `updated_at`, `permissionEvaluation`, `transportation`, `archives`) VALUES
('اسلام', 'نافز', 'هشام', 'جرادات', 'أنثى', 100, 59, 'نابلس', 'جامعة النجاح الوطنية', 11716309, 'علوم', '4y', 'active', 1, 'الرابع', '2021-04-09 15:12:04', '2021-05-20 13:36:45', 0, 10, 1),
('نبيل', 'منير', 'احمد', 'خليل', 'أنثى', 101, 563, 'طوباس', 'جامعة بيرزيت', 11716319, 'رياضة', '4y', 'active', 1, 'الثاني', '2021-04-09 15:12:46', '2021-05-20 13:36:45', 0, 100, 1),
('عادل', 'باسم', 'ابراهيم', 'ابويعقوب', 'ذكر', 102, 231, 'رام الله', 'جامعة النجاح الوطنية', 45646, 'تربية أبتدائي', '2y', 'active', 2, 'السادس', '2021-04-09 15:13:26', '2021-05-20 13:36:45', 0, 100, 1),
('ليث', 'لؤي', 'مؤيد', 'ابوصلاح', 'ذكر', 105, 3214, 'قلقيليه', 'الجامعة العربية الأمريكية', 0, 'أنجليزي', 'متخرج', 'active', 2, 'undefined', '2021-04-09 15:14:43', '2021-05-20 13:36:45', 0, 100, 1),
('محمد', 'احمد', 'سامر', 'سمير', 'أنثى', 113, 569856, 'نابلس', 'جامعة النجاح الوطنية', 115655, 'عربي', 'سنه اولى', 'active', 1, 'الثالث', '2021-05-02 16:13:16', '2021-05-20 13:36:45', 1, 10, 1),
('محمحد', 'خطيب', 'سوسو', 'ممم', 'أنثى', 455, 5655, 'نابلس', 'جامعة النجاح الوطنية', 6546546, 'أنجليزي', 'سنه اولى', 'inactive', 1, 'undefined', '2021-05-11 11:30:26', '2021-05-20 13:36:45', 0, 0, 1),
('محمحد', 'منمكن', 'مكنمك', 'كمن', 'ذكر', 645, 5465464, 'نابلس', 'جامعة النجاح الوطنية', 65456465, 'أنجليزي', 'سنه اولى', 'inactive', 1, 'undefined', '2021-05-10 16:56:36', '2021-05-20 13:36:45', 0, 0, 1),
('تيسير', 'صالح', 'محمد', 'جرادات', 'أنثى', 4045, 59584978, 'نابلس', 'جامعة بيرزيت', 22583, 'تربية أبتدائي', 'سنه اولى', 'active', 1, 'undefined', '2021-04-12 17:40:15', '2021-05-20 13:36:45', 0, 200, 1),
('محمد', 'اسمم', 'مسش', 'تايبل', 'أنثى', 4654, 2223456, 'رام الله', 'جامعة بيرزيت', 2123123, 'عربي', 'سنه ثانيه', 'inactive', 1, 'الثالث', '2021-05-02 17:14:15', '2021-05-20 13:36:45', 0, 200, 1),
('محمحد', 'منمن', 'منمكن', 'منمكن', 'ذكر', 5555, 56465, 'نابلس', 'جامعة النجاح الوطنية', 545645, 'أنجليزي', 'سنه اولى', 'inactive', 1, 'الثالث', '2021-05-11 17:58:11', '2021-05-20 13:36:45', 0, 0, 1),
('بيسب', 'سيبسي', 'يسبيس', 'سيبيس', 'أنثى', 6464, 54654, 'نابلس', 'جامعة بيرزيت', 454545, 'أنجليزي', 'سنه اولى', 'inactive', 1, 'undefined', '2021-05-18 15:41:43', '2021-05-20 13:36:45', 0, 0, 1),
('سشيب', 'سشيشس', 'شسيسش', 'شسيسش', 'ذكر', 6489, 65465, 'نابلس', 'جامعة بيرزيت', 65464, 'أنجليزي', 'سنه اولى', 'inactive', 1, 'الثاني', '2021-05-10 14:48:09', '2021-05-20 13:36:45', 0, 10, 1),
('تنمت', 'منتنمت', 'نمتمنتمن', 'مانتن', 'ذكر', 8787, 64654, 'نابلس', 'جامعة النجاح الوطنية', 64787, 'أنجليزي', 'سنه اولى', 'inactive', 1, 'الثالث', '2021-05-12 12:01:48', '2021-05-20 13:36:45', 0, 0, 1),
('محمد', 'احمد', 'رامي', 'محتميد', 'ذكر', 12365, 258963, 'رام الله', 'جامعة بيرزيت', 11223366, 'تربية أبتدائي', 'سنه اولى', 'active', 2, 'السادس', '2021-04-11 16:44:42', '2021-05-20 13:36:45', 0, 10, 1),
('نم', 'نمكن', 'مكنكم', 'نمكنم', 'ذكر', 65465, 456456, 'نابلس', 'جامعة بيرزيت', 646546, 'أنجليزي', 'سنه اولى', 'inactive', 1, 'الخامس', '2021-05-12 11:57:42', '2021-05-20 13:36:45', 0, 0, 1),
('محمحد', 'مكمك', 'كمكم', 'كمكم', 'ذكر', 147852, 546846, 'نابلس', 'جامعة النجاح الوطنية', 465464, 'أنجليزي', 'سنه اولى', 'inactive', 1, 'undefined', '2021-05-12 11:46:27', '2021-05-20 13:36:45', 0, 0, 1),
('ناذاتناتناذ', 'نتاتنا', 'تاتنتن', 'انمتنمت', 'ذكر', 465465, 8848, 'نابلس', 'جامعة النجاح الوطنية', 54545, 'أنجليزي', 'سنه اولى', 'inactive', 1, 'undefined', '2021-05-12 12:00:53', '2021-05-20 13:36:45', 0, 0, 1),
('نمتمنت', 'منتنمت', 'منتمنت', 'منتمنت', 'ذكر', 564654, 454545, 'نابلس', 'جامعة النجاح الوطنية', 546456, 'علوم', 'سنه اولى', 'inactive', 1, 'undefined', '2021-05-12 11:53:10', '2021-05-20 13:36:45', 0, 0, 1),
('شسيسش', 'شسيسش', 'شسيسش', 'شسيسي', 'ذكر', 654654, 4654, 'نابلس', 'جامعة النجاح الوطنية', 654, 'أنجليزي', 'سنه اولى', 'inactive', 0, 'undefined', '2021-05-10 14:46:50', '2021-05-20 13:36:45', 0, 0, 1),
('نمكن', 'نمكنكم', 'كمنمكن', 'مكنكمن', 'ذكر', 5647687, 4564321, 'نابلس', 'جامعة النجاح الوطنية', 4564, 'أنجليزي', 'سنه ثانيه', 'inactive', 0, 'undefined', '2021-05-12 12:03:18', '2021-05-20 13:36:45', 0, 0, 1),
('تنمكت', 'نمكنكمنكم', 'نمكنمكن', 'كنكمنكم', 'ذكر', 1231231231, 1233213211, 'نابلس', 'جامعة النجاح الوطنية', 1234567, 'أنجليزي', 'سنه اولى', 'inactive', NULL, 'undefined', '2021-05-19 12:07:01', '2021-05-20 13:36:45', 0, 0, 1),
('محمد', 'سمير', 'سوسو', 'نونو', 'أنثى', 1234567890, 597633223, 'نابلس', 'جامعة تشيك', 1234568, 'مخصكش', 'سنه رابعه', 'inactive', NULL, 'undefined', '2021-05-19 11:31:31', '2021-05-20 13:36:45', 0, 0, 1),
('سيشسشي', 'كمنمك', 'نمكنمكن', 'كمنمكنمك', 'ذكر', 1234659870, 1478523690, 'نابلس', 'جامعة النجاح الوطنية', 1452369870, 'أنجليزي', 'سنه اولى', 'inactive', NULL, 'undefined', '2021-05-19 11:37:34', '2021-05-20 13:36:45', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `identification` (`identification`,`date`) USING BTREE;

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `classroom` (`classroom`,`name`);

--
-- Indexes for table `evaluations`
--
ALTER TABLE `evaluations`
  ADD PRIMARY KEY (`id`,`term`);

--
-- Indexes for table `evaluation_texts`
--
ALTER TABLE `evaluation_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `installments`
--
ALTER TABLE `installments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `show_requests`
--
ALTER TABLE `show_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD UNIQUE KEY `students_identification_unique` (`identification`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teachers_identification_unique` (`identification`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `volunteers`
--
ALTER TABLE `volunteers`
  ADD UNIQUE KEY `volunteers_identification_unique` (`identification`);

--
-- Indexes for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `evaluations`
--
ALTER TABLE `evaluations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `evaluation_texts`
--
ALTER TABLE `evaluation_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `installments`
--
ALTER TABLE `installments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `show_requests`
--
ALTER TABLE `show_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
