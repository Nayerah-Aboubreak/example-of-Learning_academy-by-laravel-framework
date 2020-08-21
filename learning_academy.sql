-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2020 at 05:17 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learning_academy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'nayerah aboubreak', 'nayerah-aboubreak@hotmail.com', '$2y$10$nbPK4xccr87YEwEMsMdO1el2coIf1dV3PWavCXBJ29eMu0eskKUe2', '2020-08-17 08:34:28', '2020-08-17 08:34:28');

-- --------------------------------------------------------

--
-- Table structure for table `cats`
--

CREATE TABLE `cats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cats`
--

INSERT INTO `cats` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'programming', '2020-08-08 14:45:40', '2020-08-08 14:45:40'),
(2, 'medical', '2020-08-08 14:46:12', '2020-08-08 14:46:12'),
(3, 'english', '2020-08-08 14:46:26', '2020-08-08 14:46:26');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` bigint(20) UNSIGNED NOT NULL,
  `trainer_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `cat_id`, `trainer_id`, `name`, `small_desc`, `desc`, `price`, `img`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'course num 1 cat num 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 1527, '11.png', '2020-08-08 14:53:10', '2020-08-08 14:53:10'),
(2, 1, 4, 'course num 2 cat num 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 4552, '12.png', '2020-08-08 14:53:10', '2020-08-08 14:53:10'),
(3, 1, 3, 'course num 3 cat num 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 1917, '13.png', '2020-08-08 14:53:10', '2020-08-08 14:53:10'),
(4, 1, 5, 'course num 4 cat num 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 2092, '14.png', '2020-08-08 14:53:10', '2020-08-08 14:53:10'),
(5, 1, 1, 'course num 5 cat num 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 1986, '15.png', '2020-08-08 14:53:10', '2020-08-08 14:53:10'),
(6, 1, 3, 'course num 6 cat num 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 4986, '16.png', '2020-08-08 14:53:10', '2020-08-08 14:53:10'),
(7, 2, 5, 'course num 1 cat num 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 4998, '21.png', '2020-08-08 14:53:10', '2020-08-08 14:53:10'),
(8, 2, 1, 'course num 2 cat num 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 4231, '22.png', '2020-08-08 14:53:10', '2020-08-08 14:53:10'),
(9, 2, 2, 'course num 3 cat num 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 4429, '23.png', '2020-08-08 14:53:10', '2020-08-08 14:53:10'),
(10, 2, 1, 'course num 4 cat num 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 4738, '24.png', '2020-08-08 14:53:10', '2020-08-08 14:53:10'),
(11, 2, 4, 'course num 5 cat num 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 3576, '25.png', '2020-08-08 14:53:10', '2020-08-08 14:53:10'),
(12, 2, 2, 'course num 6 cat num 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 1357, '26.png', '2020-08-08 14:53:10', '2020-08-08 14:53:10'),
(13, 3, 1, 'course num 1 cat num 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 1341, '31.png', '2020-08-08 14:53:10', '2020-08-08 14:53:10'),
(14, 3, 5, 'course num 2 cat num 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 3809, '32.png', '2020-08-08 14:53:10', '2020-08-08 14:53:10'),
(15, 3, 4, 'course num 3 cat num 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 4148, '33.png', '2020-08-08 14:53:10', '2020-08-08 14:53:10'),
(16, 3, 4, 'course num 4 cat num 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 3091, '34.png', '2020-08-08 14:53:10', '2020-08-08 14:53:10'),
(17, 3, 5, 'course num 5 cat num 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 2442, '35.png', '2020-08-08 14:53:10', '2020-08-08 14:53:10'),
(18, 3, 5, 'course num 6 cat num 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 2503, '36.png', '2020-08-08 14:53:10', '2020-08-08 14:53:10');

-- --------------------------------------------------------

--
-- Table structure for table `course_student`
--

CREATE TABLE `course_student` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('pending','approve','reject') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_student`
--

INSERT INTO `course_student` (`id`, `course_id`, `student_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 20, 'pending', '2020-08-08 15:03:58', '2020-08-08 15:03:58'),
(2, 11, 41, 'pending', '2020-08-08 15:03:58', '2020-08-08 15:03:58'),
(3, 15, 6, 'pending', '2020-08-08 15:03:58', '2020-08-08 15:03:58'),
(4, 8, 36, 'pending', '2020-08-08 15:03:58', '2020-08-08 15:03:58'),
(5, 4, 41, 'pending', '2020-08-08 15:03:58', '2020-08-08 15:03:58'),
(6, 2, 49, 'pending', '2020-08-08 15:03:58', '2020-08-08 15:03:58'),
(7, 9, 45, 'pending', '2020-08-08 15:03:58', '2020-08-08 15:03:58'),
(8, 3, 15, 'pending', '2020-08-08 15:03:58', '2020-08-08 15:03:58'),
(9, 5, 33, 'pending', '2020-08-08 15:03:58', '2020-08-08 15:03:58'),
(10, 4, 34, 'pending', '2020-08-08 15:03:58', '2020-08-08 15:03:58'),
(11, 1, 25, 'pending', '2020-08-08 15:03:58', '2020-08-08 15:03:58'),
(12, 14, 32, 'pending', '2020-08-08 15:03:58', '2020-08-08 15:03:58'),
(13, 2, 47, 'pending', '2020-08-08 15:03:58', '2020-08-08 15:03:58'),
(14, 10, 24, 'pending', '2020-08-08 15:03:58', '2020-08-08 15:03:58'),
(15, 11, 21, 'pending', '2020-08-08 15:03:58', '2020-08-08 15:03:58'),
(16, 11, 10, 'pending', '2020-08-08 15:03:58', '2020-08-08 15:03:58'),
(17, 17, 4, 'pending', '2020-08-08 15:03:58', '2020-08-08 15:03:58'),
(18, 1, 4, 'pending', '2020-08-08 15:03:58', '2020-08-08 15:03:58'),
(19, 7, 26, 'pending', '2020-08-08 15:03:58', '2020-08-08 15:03:58'),
(20, 18, 40, 'pending', '2020-08-08 15:03:58', '2020-08-08 15:03:58'),
(21, 1, 51, 'pending', '2020-08-17 07:15:14', '2020-08-17 07:15:14'),
(22, 12, 52, 'approve', '2020-08-17 07:19:42', '2020-08-17 07:19:42'),
(23, 7, 51, 'approve', '2020-08-19 07:34:22', '2020-08-19 07:34:22'),
(24, 2, 51, 'reject', '2020-08-19 07:40:36', '2020-08-19 07:40:36'),
(25, 10, 51, 'pending', NULL, NULL),
(26, 10, 51, 'pending', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'nayerah', 'nayerah-aboubreak@hotmail.com', 'This is a subject...', 'This is a message ...', '2020-08-17 06:35:55', '2020-08-17 06:35:55');

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
(1, '2020_08_06_113910_create_cats_table', 1),
(2, '2020_08_06_113912_create_trainers_table', 1),
(3, '2020_08_06_113914_create_courses_table', 1),
(4, '2020_08_06_114109_create_students_table', 1),
(5, '2020_08_06_114129_create_admins_table', 1),
(6, '2020_08_06_172230_create_course_student_table', 1),
(7, '2020_08_08_171954_create_tests_table', 2),
(8, '2020_08_11_105312_create_settings_table', 3),
(9, '2020_08_13_095458_create_site_contents_table', 4),
(10, '2020_08_13_110410_create_news_letters_table', 5),
(11, '2020_08_13_110636_create_messages_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `news_letters`
--

CREATE TABLE `news_letters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_letters`
--

INSERT INTO `news_letters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'nayerah-aboubreak@hotmail.com', '2020-08-13 09:28:24', '2020-08-13 09:28:24');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_hours` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `insta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `logo`, `favicon`, `city`, `address`, `phone`, `work_hours`, `email`, `map`, `fb`, `twitter`, `insta`, `created_at`, `updated_at`) VALUES
(1, 'learning academy', 'logo.png', 'favicon.png', 'Cairo, Egypt', '50 Abbas El_akkad, Nasr City', '01010101010', 'Sun to Thurs\r\n9am to 5pm', 'contact@learningacademy.com', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d3453.176422575945!2d31.33542311518982!3d30.060477081876527!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2seg!4v1597144664174!5m2!1sen!2seg\" width=\"1000\" height=\"400\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 'https://www.facebook.com/', 'https://twitter.com/login', 'https://www.instagram.com/', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_contents`
--

CREATE TABLE `site_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_contents`
--

INSERT INTO `site_contents` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'banner', '{\"title\":\"EVERY STUDENT YEARNS TO LEARN\",\"subtitle\":\"Making Your World Better\",\"desc\":\"Replenish seasons may male hath fruit beast were seas saw you arrie said man beast whales his void unto last session for bite. Set have great you\'ll male grass yielding yielding man\"}', '2020-08-13 08:15:52', '2020-08-13 08:15:52'),
(2, 'feature', '{\"maintitle\":\"Awesome Feature\",\"maindesc\":\"Set have great you male grass yielding an yielding first their you\'re have called the abundantly fruit were man\",\"title1\":\"Better Future\",\"desc1\":\"Set have great you male grasses yielding yielding first their to called deep abundantly Set have great you male\",\"title2\":\"Qualified Trainers\",\"desc2\":\"Set have great you male grasses yielding yielding first their to called deep abundantly Set have great you male\",\"title3\":\"Job Oppurtunity\",\"desc3\":\"Set have great you male grasses yielding yielding first their to called deep abundantly Set have great you male\"}', '2020-08-13 08:51:34', '2020-08-13 08:51:34'),
(3, 'courses', '{\"title\":\"OUR COURSES\",\"subtitle\":\"Different Categories\"}', '2020-08-13 08:51:34', '2020-08-13 08:51:34');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spec` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `spec`, `created_at`, `updated_at`) VALUES
(1, 'Alexie Yost DDS', 'macy.casper@dooley.com', NULL, '2020-08-08 15:00:50', '2020-08-08 15:00:50'),
(2, 'Dr. Jeramie Walter DVM', 'jairo.smith@kerluke.net', NULL, '2020-08-08 15:00:50', '2020-08-08 15:00:50'),
(3, 'William Daniel', 'lou.hermiston@gleichner.net', NULL, '2020-08-08 15:00:50', '2020-08-08 15:00:50'),
(4, 'Bernadette Marvin', 'sandy.jakubowski@legros.net', NULL, '2020-08-08 15:00:50', '2020-08-08 15:00:50'),
(5, 'Mrs. Bailee Pacocha', 'lmarquardt@hotmail.com', NULL, '2020-08-08 15:00:50', '2020-08-08 15:00:50'),
(6, 'Prof. Tyson Powlowski II', 'wlarson@yahoo.com', NULL, '2020-08-08 15:00:50', '2020-08-08 15:00:50'),
(7, 'Curt Wyman', 'zchamplin@yahoo.com', NULL, '2020-08-08 15:00:50', '2020-08-08 15:00:50'),
(8, 'Elwin Hintz', 'welch.claire@cummings.net', NULL, '2020-08-08 15:00:50', '2020-08-08 15:00:50'),
(9, 'Dr. Berta Flatley DVM', 'gorczany.nella@swift.com', NULL, '2020-08-08 15:00:50', '2020-08-08 15:00:50'),
(10, 'Meaghan Goyette', 'zterry@gmail.com', NULL, '2020-08-08 15:00:50', '2020-08-08 15:00:50'),
(11, 'Dr. Trinity Schowalter DVM', 'connelly.rylan@gmail.com', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(12, 'Jadyn Conroy', 'hgoldner@gmail.com', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(13, 'Ms. Elyssa Mitchell Jr.', 'cpaucek@treutel.com', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(14, 'Monserrate Rutherford', 'estehr@daniel.com', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(15, 'Prof. Jaylan Daugherty IV', 'rstamm@hoeger.com', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(16, 'Alexandro Vandervort', 'mcremin@graham.com', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(17, 'Idella King', 'scarlett37@gmail.com', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(18, 'Brycen Collins', 'katlyn.schmitt@hotmail.com', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(19, 'Miss Alena Christiansen III', 'mebert@yahoo.com', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(20, 'Lula Mitchell IV', 'tomasa.marquardt@ruecker.com', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(21, 'Prof. Reba Gottlieb II', 'twila.rodriguez@hotmail.com', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(22, 'Evert Hodkiewicz', 'adelbert.klein@denesik.com', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(23, 'Yessenia Wunsch', 'powlowski.ali@yahoo.com', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(24, 'Krystina Wisozk', 'eula.quitzon@carroll.com', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(25, 'Lonie Wuckert DDS', 'hilton.johnson@hotmail.com', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(26, 'Isidro Wilderman', 'pollich.augustine@johnston.com', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(27, 'Priscilla Wuckert', 'reva.swift@fadel.info', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(28, 'Oceane Orn', 'effertz.heath@hotmail.com', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(29, 'Dereck Satterfield', 'hhintz@vandervort.com', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(30, 'Aimee Haley', 'calista65@beatty.org', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(31, 'Timothy Dicki', 'schowalter.pearlie@hotmail.com', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(32, 'Tamia Boyer', 'gkshlerin@murazik.net', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(33, 'Faye Gislason', 'vdickens@lueilwitz.com', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(34, 'Mallie Crist', 'maiya93@blanda.net', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(35, 'Mr. Judson Bergstrom III', 'kitty.hoeger@veum.info', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(36, 'Greg Zulauf', 'rschumm@aufderhar.org', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(37, 'Adelbert Wyman', 'jazmin.mosciski@gmail.com', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(38, 'Tracy Gutmann', 'dfisher@welch.com', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(39, 'Brennan Pfeffer', 'althea22@hotmail.com', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(40, 'Bettie Howell', 'meggie08@yahoo.com', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(41, 'Roberto Schultz I', 'xrippin@yahoo.com', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(42, 'Jedediah Casper', 'michel69@volkman.net', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(43, 'Vinnie Dooley', 'dwight.krajcik@wiegand.com', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(44, 'Antonio Hessel', 'nlabadie@lubowitz.com', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(45, 'Prof. Jarvis Botsford', 'russell54@gmail.com', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(46, 'Damaris Windler', 'daisha.keebler@yahoo.com', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(47, 'Jean Weber', 'emilia82@gmail.com', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(48, 'Miss Ava Cormier', 'jast.trent@hotmail.com', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(49, 'Filomena Cormier', 'greenholt.emmitt@yahoo.com', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(50, 'Mrs. Pansy Donnelly DVM', 'jovany.von@yahoo.com', NULL, '2020-08-08 15:01:59', '2020-08-08 15:01:59'),
(51, 'magdy', 'magdy@gmail.com', 'web developer', '2020-08-17 07:15:14', '2020-08-19 07:40:36'),
(52, 'trial student2', 'student@gmail.com', NULL, '2020-08-17 07:19:42', '2020-08-17 07:19:42');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spec` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `name`, `spec`, `desc`, `img`, `created_at`, `updated_at`) VALUES
(1, 'Ahmed mohamed', 'frontend web developer', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry...', '1.png', '2020-08-08 15:32:34', '2020-08-08 15:32:34'),
(2, 'Kareem fouad', 'full stack web developer', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry...', '2.png', '2020-08-08 15:33:50', '2020-08-08 15:33:50'),
(3, 'Hassan ahmed', 'UI designer', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry...', '3.png', '2020-08-08 15:35:10', '2020-08-08 15:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spec` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`id`, `name`, `phone`, `spec`, `img`, `created_at`, `updated_at`) VALUES
(1, 'kareem fouad', NULL, 'web development', '1.png', '2020-08-08 14:48:34', '2020-08-08 14:48:34'),
(2, 'mostafa mahfoz', NULL, 'web development', '2.png', '2020-08-08 14:48:35', '2020-08-08 14:48:35'),
(3, 'ahmed hussein', NULL, 'dentist', '3.png', '2020-08-08 14:48:35', '2020-08-08 14:48:35'),
(4, 'hazem mohammed', NULL, 'doctor', '4.png', '2020-08-08 14:48:35', '2020-08-08 14:48:35'),
(5, 'magdy mahmoud', '01006885035', 'english teacher', '5.png', '2020-08-08 14:48:35', '2020-08-08 14:48:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cats`
--
ALTER TABLE `cats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_cat_id_foreign` (`cat_id`),
  ADD KEY `courses_trainer_id_foreign` (`trainer_id`);

--
-- Indexes for table `course_student`
--
ALTER TABLE `course_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_student_course_id_foreign` (`course_id`),
  ADD KEY `course_student_student_id_foreign` (`student_id`);

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
-- Indexes for table `news_letters`
--
ALTER TABLE `news_letters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_contents`
--
ALTER TABLE `site_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cats`
--
ALTER TABLE `cats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `course_student`
--
ALTER TABLE `course_student`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `news_letters`
--
ALTER TABLE `news_letters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_contents`
--
ALTER TABLE `site_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `cats` (`id`),
  ADD CONSTRAINT `courses_trainer_id_foreign` FOREIGN KEY (`trainer_id`) REFERENCES `trainers` (`id`);

--
-- Constraints for table `course_student`
--
ALTER TABLE `course_student`
  ADD CONSTRAINT `course_student_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `course_student_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
