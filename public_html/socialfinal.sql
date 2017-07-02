-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2017 at 10:23 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `socialfinal`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `facebook_id`, `avatar`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kawan Ajay', '313111675810178', 'https://graph.facebook.com/v2.9/313111675810178/picture?type=normal', 'kawanajay2231@gmail.com', '', 'BkQYUEUEEOWVAJNS9CQAVRzKon69FIa9VmpvXaVNpybSc2vOZ5hAVyGHAmEn', '2017-06-30 05:00:32', '2017-06-30 05:00:32'),
(3, 'Säàlûzz Mähárzzåñ', '643537589184244', 'https://graph.facebook.com/v2.9/643537589184244/picture?type=normal', 'saluzmaharjan@gmail.com', '', 'AY7WpgGkjG2eDvPWwCouhmPotqbfn0EwjlYum5FrUeDJPBVDD7V4TgLH7073', '2017-06-30 11:08:04', '2017-06-30 11:08:04'),
(5, 'Praful Rajbhandari', '1769530786410070', 'https://graph.facebook.com/v2.9/1769530786410070/picture?type=normal', '9779801098157@sms.ncell.com.np', '', 'Zzb0Kfgofd15PEEwuUXYhFNFf20IWZnSbeeWlQTSfMsBWPtHrTO8wdrKrwce', '2017-06-30 12:13:17', '2017-06-30 12:13:17'),
(6, 'Umesh Rai', '1293508364093688', 'https://graph.facebook.com/v2.9/1293508364093688/picture?type=normal', 'animator.max7@gmail.com', '', 'g3ZENyqW3FjQNr8F1qjlg7C6HQO7IZfDmiBs0I82s0DXvuQ3ZiswOEyJ78aU', '2017-06-30 12:39:45', '2017-06-30 12:39:45'),
(7, 'ajay kawan', '', '', 'ajaykawan@gmail.com', '$2y$10$bOTLYpMWJ398hELvYZsrXOcKrlLkDWNc9Ml6IhUiQpycFA3yC8cFS', 'RAzTCM9DysTsjMZANo3dUKBAOnKyzD6visoEHR5FcxPL5Yze8dpqYePyiReo', '2017-06-30 12:43:50', '2017-06-30 12:43:50'),
(8, 'Pari Gupta', '114020582550624', 'https://graph.facebook.com/v2.9/114020582550624/picture?type=normal', 'pari70078@gmail.com', '', 'F8MhpdLdXwQKX6klSpFMDhO9zWnoNhpynvMz20pQSll1ymKo8UQkrnVHcwax', '2017-06-30 13:18:27', '2017-06-30 13:18:27'),
(9, 'Angnima Sherpa', '1092666477535102', 'https://graph.facebook.com/v2.9/1092666477535102/picture?type=normal', 'me_angnima@yahoo.com', '', 'eVkoGrWaOmRohlbs5sich4XreXo2ZNL63J3xyvJxvUwsOm1mLSV1tQVdaSWE', '2017-07-02 00:21:33', '2017-07-02 00:21:33');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
