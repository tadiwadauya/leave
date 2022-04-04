-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2020 at 09:39 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `whelsonlms`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manager` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asst_manager` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department`, `manager`, `asst_manager`, `created_at`, `updated_at`) VALUES
(1, 'Accounts', '1234', NULL, '2019-10-17 05:01:16', '2020-01-13 09:50:34'),
(2, 'I.T.', '21A', NULL, '2019-10-17 05:01:50', '2019-10-17 05:01:50'),
(3, 'Operations', 'km123', '55A', '2019-10-17 05:02:24', '2019-10-17 05:02:24'),
(4, 'Beitbridge', '9', NULL, '2019-10-17 05:02:41', '2019-10-17 05:02:41'),
(5, 'Chirundu', '49A', NULL, '2019-10-17 05:03:00', '2019-10-17 05:03:00'),
(6, 'Diesel', '1', NULL, '2019-10-17 05:03:21', '2019-10-17 05:03:21'),
(7, 'Engineering', 'cg123', NULL, '2019-10-17 05:03:41', '2019-10-17 05:03:41'),
(8, 'Human Resources', 'jn123', NULL, '2019-10-17 05:03:56', '2019-10-17 05:03:56'),
(9, 'Stores', '3', NULL, '2019-10-17 05:04:16', '2019-10-17 05:04:16'),
(10, 'Internal Audit', '283', NULL, '2019-10-17 05:04:37', '2019-10-17 05:04:37'),
(11, 'Trailers', '23A', NULL, '2019-10-17 05:05:03', '2019-10-17 05:05:03'),
(12, 'Victoria Falls', '694', NULL, '2019-10-17 05:06:11', '2019-10-17 05:06:11'),
(13, 'Roadgrip', 'ww123', NULL, '2019-10-17 05:06:29', '2019-10-17 05:06:29'),
(14, 'Tyres and Tarps', 'mv123', NULL, '2019-10-17 05:06:53', '2019-10-17 05:06:53'),
(15, 'Testing Department', '123', NULL, '2019-10-17 10:05:35', '2019-10-17 10:05:35'),
(16, 'Directors', '237', NULL, '2020-01-13 10:13:16', '2020-01-13 10:13:16');

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
-- Table structure for table `job_titles`
--

CREATE TABLE `job_titles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jobtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_titles`
--

INSERT INTO `job_titles` (`id`, `jobtitle`, `department`, `created_at`, `updated_at`) VALUES
(1, 'Creditors Clerk', 'Accounts', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(3, 'Finance Manager', 'Accounts', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(4, 'Senior Bookkeeper', 'Accounts', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(5, 'Data Capture Clerk', 'Diesel', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(6, 'Diesel Supervisor', 'Diesel', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(7, 'Fuel Issuing Clerk', 'Diesel', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(8, 'Pump Attendant', 'Diesel', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(9, 'Engineering Staff', 'Engineering', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(10, 'Engineering Supervisor', 'Engineering', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(11, 'Trailers Workshop Manager', 'Engineering', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(12, 'Attendant', 'Fuel Station', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(13, 'General Hand', 'Horses VID', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(14, 'Horse VID Assistant Manager', 'Horses VID', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(15, 'Stores Clerk', 'Horses VID', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(16, 'Mechanic', 'Horses Workshop', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(17, 'Tool room Clerk', 'Horses Workshop', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(18, 'Workshop Administration Assistant Manager', 'Horses Workshop', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(19, 'Workshop Administration Clerk', 'Horses Workshop', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(20, 'Workshop Supervisor', 'Horses Workshop', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(21, 'Canteen Cook', 'Human Resources', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(22, 'Driver Trainer', 'Human Resources', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(23, 'Gardener', 'Human Resources', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(24, 'Human Resources Manager', 'Human Resources', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(25, 'Personnel Officer', 'Human Resources', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(26, 'Receptionist', 'Human Resources', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(27, 'Secretary', 'Human Resources', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(28, 'Time Keeper', 'Human Resources', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(29, 'Wages Clerk', 'Human Resources', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(30, 'I.T Manager', 'I.T.', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(31, 'Systems Administrator', 'I.T.', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(32, 'Compliance Clerk', 'Internal Audit', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(33, 'Internal Audit Manager', 'Internal Audit', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(34, 'Internal Auditor', 'Internal Audit', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(35, 'Assistant Operations Manager', 'Operations', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(36, 'Bookout Clerk', 'Operations', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(37, 'Driver Coordinator', 'Operations', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(38, 'Operations Clerk', 'Operations', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(39, 'Operations Manager', 'Operations', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(40, 'Satellite Technician', 'Operations', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(41, 'Tracking Clerk', 'Operations', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(42, 'Tracking Supervisor', 'Operations', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(43, 'Buyer', 'Stores', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(44, 'Receiving Clerk', 'Stores', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(45, 'Stores man', 'Stores', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(46, 'Stores Manager', 'Stores', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(47, 'Stores Supervisor', 'Stores', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(48, 'Equipment Controller', 'Tarpaulins', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(49, 'Forklift Operatior', 'Tarpaulins', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(50, 'Rigger', 'Tarpaulins', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(51, 'Tarpaulins Assistant manager', 'Tarpaulins', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(52, 'Tarpaulins Checker', 'Tarpaulins', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(53, 'Washbay Attendant', 'Tarpaulins', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(54, 'Spray Painter', 'Trailers Workshop', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(55, 'Trailers Mechanic', 'Trailers Workshop', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(56, 'Trailers Supervisor', 'Trailers Workshop', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(57, 'Trailers Workshop Assistant Manager', 'Trailers Workshop', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(58, 'Welder', 'Trailers Workshop', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(59, 'Tyre Fitter', 'Tyres', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(60, 'Tyres and Tarpaulins Manager', 'Tyres', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(61, 'Tyres Clerk', 'Tyres', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(62, 'Tyres Supervisor', 'Tyres', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(63, 'Fuel Station Manager', 'Fuel Station', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(64, 'Depot Manager', 'Beitbridge', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(65, 'Operations Clerk', 'Beitbridge', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(66, 'Fuel Clerk', 'Beitbridge', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(67, 'Depot Manager', 'Chirundu', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(68, 'Operations Clerk', 'Chirundu', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(69, 'Fuel Clerk', 'Chirundu', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(70, 'Depot Manager', 'Victoria Falls', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(71, 'Operations Clerk', 'Victoria Falls', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(72, 'Fuel Clerk', 'Victoria Falls', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(73, 'Accountant', 'Accounts', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(74, 'Systems Applications Administrator', 'I.T.', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(75, 'Internal Audit Attachee', 'Internal Audit', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(76, 'Debtors Clerk', 'Accounts', '2019-12-24 05:34:00', '2019-12-24 05:34:00'),
(77, 'Finance Director', 'Directors', '2020-01-14 07:47:48', '2020-01-14 07:47:48'),
(78, 'Technical Director', 'Directors', '2020-01-14 07:48:14', '2020-01-14 07:48:14'),
(79, 'Managing Director', 'Directors', '2020-01-14 07:48:35', '2020-01-14 07:48:35');

-- --------------------------------------------------------

--
-- Table structure for table `laravel2step`
--

CREATE TABLE `laravel2step` (
  `id` int(10) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `authCode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authCount` int(11) NOT NULL,
  `authStatus` tinyint(1) NOT NULL DEFAULT '0',
  `authDate` datetime DEFAULT NULL,
  `requestDate` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laravel_blocker`
--

CREATE TABLE `laravel_blocker` (
  `id` int(10) UNSIGNED NOT NULL,
  `typeId` int(10) UNSIGNED NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `userId` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laravel_blocker`
--

INSERT INTO `laravel_blocker` (`id`, `typeId`, `value`, `note`, `userId`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'test.com', 'Block all domains/emails @test.com', NULL, '2019-10-15 05:38:55', '2019-10-15 05:38:55', NULL),
(2, 3, 'test.ca', 'Block all domains/emails @test.ca', NULL, '2019-10-15 05:38:55', '2019-10-15 05:38:55', NULL),
(3, 3, 'fake.com', 'Block all domains/emails @fake.com', NULL, '2019-10-15 05:38:55', '2019-10-15 05:38:55', NULL),
(4, 3, 'example.com', 'Block all domains/emails @example.com', NULL, '2019-10-15 05:38:55', '2019-10-15 05:38:55', NULL),
(5, 3, 'mailinator.com', 'Block all domains/emails @mailinator.com', NULL, '2019-10-15 05:38:55', '2019-10-15 05:38:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `laravel_blocker_types`
--

CREATE TABLE `laravel_blocker_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laravel_blocker_types`
--

INSERT INTO `laravel_blocker_types` (`id`, `slug`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'email', 'E-mail', '2019-10-15 05:38:54', '2019-10-15 05:38:54', NULL),
(2, 'ipAddress', 'IP Address', '2019-10-15 05:38:54', '2019-10-15 05:38:54', NULL),
(3, 'domain', 'Domain Name', '2019-10-15 05:38:54', '2019-10-15 05:38:54', NULL),
(4, 'user', 'User', '2019-10-15 05:38:55', '2019-10-15 05:38:55', NULL),
(5, 'city', 'City', '2019-10-15 05:38:55', '2019-10-15 05:38:55', NULL),
(6, 'state', 'State', '2019-10-15 05:38:55', '2019-10-15 05:38:55', NULL),
(7, 'country', 'Country', '2019-10-15 05:38:55', '2019-10-15 05:38:55', NULL),
(8, 'countryCode', 'Country Code', '2019-10-15 05:38:55', '2019-10-15 05:38:55', NULL),
(9, 'continent', 'Continent', '2019-10-15 05:38:55', '2019-10-15 05:38:55', NULL),
(10, 'region', 'Region', '2019-10-15 05:38:55', '2019-10-15 05:38:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `laravel_logger_activity`
--

CREATE TABLE `laravel_logger_activity` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `userType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `route` longtext COLLATE utf8mb4_unicode_ci,
  `ipAddress` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userAgent` text COLLATE utf8mb4_unicode_ci,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` longtext COLLATE utf8mb4_unicode_ci,
  `methodType` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laravel_logger_activity`
--

INSERT INTO `laravel_logger_activity` (`id`, `description`, `userType`, `userId`, `route`, `ipAddress`, `userAgent`, `locale`, `referer`, `methodType`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2019-10-15 05:44:21', '2019-10-15 05:44:21', NULL),
(2, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2019-10-15 05:44:21', '2019-10-15 05:44:21', NULL),
(3, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-15 05:44:32', '2019-10-15 05:44:32', NULL),
(4, 'Viewed users/1/edit', 'Registered', 1, 'http://localhost:8000/users/1/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-15 05:44:36', '2019-10-15 05:44:36', NULL),
(5, 'Edited users/1', 'Registered', 1, 'http://localhost:8000/users/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/1/edit', 'PUT', '2019-10-15 05:45:11', '2019-10-15 05:45:11', NULL),
(6, 'Viewed users/1/edit', 'Registered', 1, 'http://localhost:8000/users/1/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/1/edit', 'GET', '2019-10-15 05:45:12', '2019-10-15 05:45:12', NULL),
(7, 'Viewed users/1/edit', 'Registered', 1, 'http://localhost:8000/users/1/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/1/edit', 'GET', '2019-10-15 05:45:46', '2019-10-15 05:45:46', NULL),
(8, 'Viewed profile/delphia.cole', 'Registered', 1, 'http://localhost:8000/profile/delphia.cole', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/1/edit', 'GET', '2019-10-15 05:45:51', '2019-10-15 05:45:51', NULL),
(9, 'Viewed profile/delphia.cole/edit', 'Registered', 1, 'http://localhost:8000/profile/delphia.cole/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/profile/delphia.cole', 'GET', '2019-10-15 05:45:55', '2019-10-15 05:45:55', NULL),
(10, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/profile/delphia.cole/edit', 'GET', '2019-10-15 05:46:04', '2019-10-15 05:46:04', NULL),
(11, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'POST', '2019-10-15 05:48:33', '2019-10-15 05:48:33', NULL),
(12, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2019-10-15 05:48:39', '2019-10-15 05:48:39', NULL),
(13, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2019-10-15 05:48:40', '2019-10-15 05:48:40', NULL),
(14, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-15 05:48:45', '2019-10-15 05:48:45', NULL),
(15, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-15 05:49:57', '2019-10-15 05:49:57', NULL),
(16, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-15 05:51:03', '2019-10-15 05:51:03', NULL),
(17, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-15 05:52:11', '2019-10-15 05:52:11', NULL),
(18, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'POST', '2019-10-15 05:52:15', '2019-10-15 05:52:15', NULL),
(19, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2019-10-15 05:52:24', '2019-10-15 05:52:24', NULL),
(20, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2019-10-15 05:52:24', '2019-10-15 05:52:24', NULL),
(21, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-15 05:52:28', '2019-10-15 05:52:28', NULL),
(22, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'POST', '2019-10-15 05:56:59', '2019-10-15 05:56:59', NULL),
(23, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2019-10-15 05:57:06', '2019-10-15 05:57:06', NULL),
(24, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2019-10-15 05:57:06', '2019-10-15 05:57:06', NULL),
(25, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-15 05:57:10', '2019-10-15 05:57:10', NULL),
(26, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-15 05:57:45', '2019-10-15 05:57:45', NULL),
(27, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-15 05:58:00', '2019-10-15 05:58:00', NULL),
(28, 'Viewed users/1/edit', 'Registered', 1, 'http://localhost:8000/users/1/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-15 05:58:38', '2019-10-15 05:58:38', NULL),
(29, 'Viewed users/1/edit', 'Registered', 1, 'http://localhost:8000/users/1/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-15 05:59:06', '2019-10-15 05:59:06', NULL),
(30, 'Viewed users/1', 'Registered', 1, 'http://localhost:8000/users/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/1/edit', 'GET', '2019-10-15 05:59:19', '2019-10-15 05:59:19', NULL),
(31, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/1', 'GET', '2019-10-15 05:59:27', '2019-10-15 05:59:27', NULL),
(32, 'Viewed users/1/edit', 'Registered', 1, 'http://localhost:8000/users/1/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-15 05:59:30', '2019-10-15 05:59:30', NULL),
(33, 'Edited users/1', 'Registered', 1, 'http://localhost:8000/users/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/1/edit', 'PUT', '2019-10-15 05:59:51', '2019-10-15 05:59:51', NULL),
(34, 'Viewed users/1/edit', 'Registered', 1, 'http://localhost:8000/users/1/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/1/edit', 'GET', '2019-10-15 05:59:52', '2019-10-15 05:59:52', NULL),
(35, 'Viewed users/1', 'Registered', 1, 'http://localhost:8000/users/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/1/edit', 'GET', '2019-10-15 06:00:01', '2019-10-15 06:00:01', NULL),
(36, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/1', 'GET', '2019-10-15 06:00:03', '2019-10-15 06:00:03', NULL),
(37, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-15 06:00:06', '2019-10-15 06:00:06', NULL),
(38, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2019-10-15 06:00:13', '2019-10-15 06:00:13', NULL),
(39, 'Viewed users/deleted', 'Registered', 1, 'http://localhost:8000/users/deleted', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-15 06:00:40', '2019-10-15 06:00:40', NULL),
(40, 'Viewed users/deleted', 'Registered', 1, 'http://localhost:8000/users/deleted', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-15 06:00:52', '2019-10-15 06:00:52', NULL),
(41, 'Viewed users/deleted', 'Registered', 1, 'http://localhost:8000/users/deleted', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-15 06:01:02', '2019-10-15 06:01:02', NULL),
(42, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/deleted', 'GET', '2019-10-15 06:01:06', '2019-10-15 06:01:06', NULL),
(43, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-15 06:01:10', '2019-10-15 06:01:10', NULL),
(44, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2019-10-15 06:01:14', '2019-10-15 06:01:14', NULL),
(45, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2019-10-15 06:10:39', '2019-10-15 06:10:39', NULL),
(46, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-15 06:11:29', '2019-10-15 06:11:29', NULL),
(47, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-15 06:30:02', '2019-10-15 06:30:02', NULL),
(48, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2019-10-15 06:30:22', '2019-10-15 06:30:22', NULL),
(49, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2019-10-15 06:30:49', '2019-10-15 06:30:49', NULL),
(50, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2019-10-15 06:31:22', '2019-10-15 06:31:22', NULL),
(51, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2019-10-15 06:31:33', '2019-10-15 06:31:33', NULL),
(52, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2019-10-15 06:31:54', '2019-10-15 06:31:54', NULL),
(53, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2019-10-15 06:32:10', '2019-10-15 06:32:10', NULL),
(54, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2019-10-15 06:32:34', '2019-10-15 06:32:34', NULL),
(55, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2019-10-15 06:33:29', '2019-10-15 06:33:29', NULL),
(56, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-15 06:42:05', '2019-10-15 06:42:05', NULL),
(57, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2019-10-15 10:23:06', '2019-10-15 10:23:06', NULL),
(58, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2019-10-15 10:23:07', '2019-10-15 10:23:07', NULL),
(59, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-15 10:23:16', '2019-10-15 10:23:16', NULL),
(60, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-15 10:24:58', '2019-10-15 10:24:58', NULL),
(61, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-15 10:25:43', '2019-10-15 10:25:43', NULL),
(62, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-15 10:25:48', '2019-10-15 10:25:48', NULL),
(63, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-15 10:26:54', '2019-10-15 10:26:54', NULL),
(64, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-15 10:27:04', '2019-10-15 10:27:04', NULL),
(65, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2019-10-15 12:41:11', '2019-10-15 12:41:11', NULL),
(66, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2019-10-15 12:41:12', '2019-10-15 12:41:12', NULL),
(67, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-15 12:41:18', '2019-10-15 12:41:18', NULL),
(68, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-15 12:41:22', '2019-10-15 12:41:22', NULL),
(69, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 12:41:58', '2019-10-15 12:41:58', NULL),
(70, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2019-10-15 12:41:59', '2019-10-15 12:41:59', NULL),
(71, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-15 12:43:20', '2019-10-15 12:43:20', NULL),
(72, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 12:43:45', '2019-10-15 12:43:45', NULL),
(73, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 12:44:19', '2019-10-15 12:44:19', NULL),
(74, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 12:44:45', '2019-10-15 12:44:45', NULL),
(75, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 12:45:01', '2019-10-15 12:45:01', NULL),
(76, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 12:57:36', '2019-10-15 12:57:36', NULL),
(77, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2019-10-15 12:57:37', '2019-10-15 12:57:37', NULL),
(78, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-15 13:00:52', '2019-10-15 13:00:52', NULL),
(79, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-15 13:55:22', '2019-10-15 13:55:22', NULL),
(80, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 13:56:15', '2019-10-15 13:56:15', NULL),
(81, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 13:58:58', '2019-10-15 13:58:58', NULL),
(82, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 13:59:33', '2019-10-15 13:59:33', NULL),
(83, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 13:59:57', '2019-10-15 13:59:57', NULL),
(84, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 14:01:19', '2019-10-15 14:01:19', NULL),
(85, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 14:01:52', '2019-10-15 14:01:52', NULL),
(86, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 14:02:25', '2019-10-15 14:02:25', NULL),
(87, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 14:04:01', '2019-10-15 14:04:01', NULL),
(88, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2019-10-15 14:04:02', '2019-10-15 14:04:02', NULL),
(89, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-15 14:04:49', '2019-10-15 14:04:49', NULL),
(90, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 14:05:29', '2019-10-15 14:05:29', NULL),
(91, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2019-10-15 14:05:29', '2019-10-15 14:05:29', NULL),
(92, 'Viewed leaves/4', 'Registered', 1, 'http://localhost:8000/leaves/4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-15 14:05:38', '2019-10-15 14:05:38', NULL),
(93, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/4', 'GET', '2019-10-15 14:05:43', '2019-10-15 14:05:43', NULL),
(94, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-15 14:10:35', '2019-10-15 14:10:35', NULL),
(95, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 14:10:58', '2019-10-15 14:10:58', NULL),
(96, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 14:11:30', '2019-10-15 14:11:30', NULL),
(97, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 14:11:35', '2019-10-15 14:11:35', NULL),
(98, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 14:12:00', '2019-10-15 14:12:00', NULL),
(99, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 14:12:04', '2019-10-15 14:12:04', NULL),
(100, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 14:13:44', '2019-10-15 14:13:44', NULL),
(101, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 14:20:29', '2019-10-15 14:20:29', NULL),
(102, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 14:21:02', '2019-10-15 14:21:02', NULL),
(103, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 14:21:42', '2019-10-15 14:21:42', NULL),
(104, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 14:22:30', '2019-10-15 14:22:30', NULL),
(105, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 14:23:08', '2019-10-15 14:23:08', NULL),
(106, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 14:23:30', '2019-10-15 14:23:30', NULL),
(107, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 14:28:15', '2019-10-15 14:28:15', NULL),
(108, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 14:38:46', '2019-10-15 14:38:46', NULL),
(109, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 14:40:34', '2019-10-15 14:40:34', NULL),
(110, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 14:41:04', '2019-10-15 14:41:04', NULL),
(111, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 14:41:56', '2019-10-15 14:41:56', NULL),
(112, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2019-10-15 14:41:56', '2019-10-15 14:41:56', NULL),
(113, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-15 14:42:07', '2019-10-15 14:42:07', NULL),
(114, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 14:42:31', '2019-10-15 14:42:31', NULL),
(115, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2019-10-15 14:42:32', '2019-10-15 14:42:32', NULL),
(116, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2019-10-15 14:42:55', '2019-10-15 14:42:55', NULL),
(117, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-15 14:42:58', '2019-10-15 14:42:58', NULL),
(118, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 14:43:13', '2019-10-15 14:43:13', NULL),
(119, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 14:47:25', '2019-10-15 14:47:25', NULL),
(120, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2019-10-15 14:47:25', '2019-10-15 14:47:25', NULL),
(121, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-15 14:47:41', '2019-10-15 14:47:41', NULL),
(122, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 14:48:01', '2019-10-15 14:48:01', NULL),
(123, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2019-10-15 14:48:02', '2019-10-15 14:48:02', NULL),
(124, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-15 15:38:36', '2019-10-15 15:38:36', NULL),
(125, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 15:38:58', '2019-10-15 15:38:58', NULL),
(126, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2019-10-15 15:38:58', '2019-10-15 15:38:58', NULL),
(127, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-15 15:39:53', '2019-10-15 15:39:53', NULL),
(128, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 15:40:07', '2019-10-15 15:40:07', NULL),
(129, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2019-10-15 15:40:08', '2019-10-15 15:40:08', NULL),
(130, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-15 15:40:27', '2019-10-15 15:40:27', NULL),
(131, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-15 15:40:40', '2019-10-15 15:40:40', NULL),
(132, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2019-10-15 15:40:40', '2019-10-15 15:40:40', NULL),
(133, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2019-10-15 15:41:16', '2019-10-15 15:41:16', NULL),
(134, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-15 15:41:25', '2019-10-15 15:41:25', NULL),
(135, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2019-10-15 15:41:38', '2019-10-15 15:41:38', NULL),
(136, 'Viewed leave-records', 'Registered', 1, 'http://localhost:8000/leave-records', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/manage-leave', 'GET', '2019-10-15 15:41:46', '2019-10-15 15:41:46', NULL),
(137, 'Viewed leave-calendar', 'Registered', 1, 'http://localhost:8000/leave-calendar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-records', 'GET', '2019-10-15 15:41:53', '2019-10-15 15:41:53', NULL),
(138, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2019-10-16 00:34:49', '2019-10-16 00:34:49', NULL),
(139, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2019-10-16 00:34:50', '2019-10-16 00:34:50', NULL),
(140, 'Viewed departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', NULL, 'GET', '2019-10-16 00:38:02', '2019-10-16 00:38:02', NULL),
(141, 'Viewed departments/create', 'Registered', 1, 'http://localhost:8000/departments/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments', 'GET', '2019-10-16 00:38:40', '2019-10-16 00:38:40', NULL),
(142, 'Viewed departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'GET', '2019-10-16 00:39:00', '2019-10-16 00:39:00', NULL),
(143, 'Viewed departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'GET', '2019-10-16 00:40:10', '2019-10-16 00:40:10', NULL),
(144, 'Viewed departments/create', 'Registered', 1, 'http://localhost:8000/departments/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments', 'GET', '2019-10-16 00:40:17', '2019-10-16 00:40:17', NULL),
(145, 'Viewed leave-calendar', 'Registered', 1, 'http://localhost:8000/leave-calendar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/roles', 'GET', '2019-10-16 00:41:56', '2019-10-16 00:41:56', NULL),
(146, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-calendar', 'GET', '2019-10-16 00:42:13', '2019-10-16 00:42:13', NULL),
(147, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'POST', '2019-10-16 00:43:03', '2019-10-16 00:43:03', NULL),
(148, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2019-10-16 05:35:13', '2019-10-16 05:35:13', NULL),
(149, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2019-10-16 05:35:14', '2019-10-16 05:35:14', NULL),
(150, 'Viewed departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-16 05:50:48', '2019-10-16 05:50:48', NULL),
(151, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments', 'GET', '2019-10-16 05:51:19', '2019-10-16 05:51:19', NULL),
(152, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments', 'GET', '2019-10-16 06:39:08', '2019-10-16 06:39:08', NULL),
(153, 'Viewed departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-16 06:39:15', '2019-10-16 06:39:15', NULL),
(154, 'Viewed departments/create', 'Registered', 1, 'http://localhost:8000/departments/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments', 'GET', '2019-10-16 06:50:49', '2019-10-16 06:50:49', NULL),
(155, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'GET', '2019-10-16 06:51:01', '2019-10-16 06:51:01', NULL),
(156, 'Deleted leaves/1', 'Registered', 1, 'http://localhost:8000/leaves/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'DELETE', '2019-10-16 07:40:00', '2019-10-16 07:40:00', NULL),
(157, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-16 07:40:01', '2019-10-16 07:40:01', NULL),
(158, 'Deleted leaves/2', 'Registered', 1, 'http://localhost:8000/leaves/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'DELETE', '2019-10-16 07:40:42', '2019-10-16 07:40:42', NULL),
(159, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-16 07:40:44', '2019-10-16 07:40:44', NULL),
(160, 'Deleted leaves/3', 'Registered', 1, 'http://localhost:8000/leaves/3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'DELETE', '2019-10-16 07:41:18', '2019-10-16 07:41:18', NULL),
(161, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-16 07:41:18', '2019-10-16 07:41:18', NULL),
(162, 'Viewed leaves/deleted', 'Registered', 1, 'http://localhost:8000/leaves/deleted', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-16 07:43:35', '2019-10-16 07:43:35', NULL),
(163, 'Viewed leaves/deleted/1', 'Registered', 1, 'http://localhost:8000/leaves/deleted/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/deleted', 'GET', '2019-10-16 07:43:57', '2019-10-16 07:43:57', NULL),
(164, 'Viewed leaves/deleted', 'Registered', 1, 'http://localhost:8000/leaves/deleted', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/deleted/1', 'GET', '2019-10-16 07:44:04', '2019-10-16 07:44:04', NULL),
(165, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/deleted/', 'GET', '2019-10-16 07:44:12', '2019-10-16 07:44:12', NULL),
(166, 'Viewed leaves/approve/9', 'Registered', 1, 'http://localhost:8000/leaves/approve/9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/manage-leave', 'GET', '2019-10-16 07:44:20', '2019-10-16 07:44:20', NULL),
(167, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', NULL, 'GET', '2019-10-16 07:52:43', '2019-10-16 07:52:43', NULL),
(168, 'Viewed leaves/9', 'Registered', 1, 'http://localhost:8000/leaves/9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/manage-leave', 'GET', '2019-10-16 07:52:48', '2019-10-16 07:52:48', NULL),
(169, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/9', 'GET', '2019-10-16 07:53:01', '2019-10-16 07:53:01', NULL),
(170, 'Viewed leave-records', 'Registered', 1, 'http://localhost:8000/leave-records', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-16 07:53:13', '2019-10-16 07:53:13', NULL),
(171, 'Viewed leave-calendar', 'Registered', 1, 'http://localhost:8000/leave-calendar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-records', 'GET', '2019-10-16 07:53:26', '2019-10-16 07:53:26', NULL),
(172, 'Viewed departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-calendar', 'GET', '2019-10-16 07:54:50', '2019-10-16 07:54:50', NULL),
(173, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments', 'GET', '2019-10-16 07:54:56', '2019-10-16 07:54:56', NULL),
(174, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-16 07:56:09', '2019-10-16 07:56:09', NULL),
(175, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/roles', 'GET', '2019-10-16 08:07:20', '2019-10-16 08:07:20', NULL),
(176, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-16 08:07:23', '2019-10-16 08:07:23', NULL);
INSERT INTO `laravel_logger_activity` (`id`, `description`, `userType`, `userId`, `route`, `ipAddress`, `userAgent`, `locale`, `referer`, `methodType`, `created_at`, `updated_at`, `deleted_at`) VALUES
(177, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2019-10-16 08:08:45', '2019-10-16 08:08:45', NULL),
(178, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2019-10-16 08:08:46', '2019-10-16 08:08:46', NULL),
(179, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-16 08:16:06', '2019-10-16 08:16:06', NULL),
(180, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2019-10-16 08:22:04', '2019-10-16 08:22:04', NULL),
(181, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2019-10-16 08:22:06', '2019-10-16 08:22:06', NULL),
(182, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-16 08:22:38', '2019-10-16 08:22:38', NULL),
(183, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-16 08:22:41', '2019-10-16 08:22:41', NULL),
(184, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2019-10-16 08:29:42', '2019-10-16 08:29:42', NULL),
(185, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2019-10-16 08:29:43', '2019-10-16 08:29:43', NULL),
(186, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-16 08:29:51', '2019-10-16 08:29:51', NULL),
(187, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2019-10-16 08:40:25', '2019-10-16 08:40:25', NULL),
(188, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2019-10-16 08:40:26', '2019-10-16 08:40:26', NULL),
(189, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-16 08:52:09', '2019-10-16 08:52:09', NULL),
(190, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2019-10-16 08:53:42', '2019-10-16 08:53:42', NULL),
(191, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2019-10-16 08:53:44', '2019-10-16 08:53:44', NULL),
(192, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-16 08:53:48', '2019-10-16 08:53:48', NULL),
(193, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2019-10-16 08:57:09', '2019-10-16 08:57:09', NULL),
(194, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2019-10-16 08:57:11', '2019-10-16 08:57:11', NULL),
(195, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-16 08:57:36', '2019-10-16 08:57:36', NULL),
(196, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2019-10-16 08:59:24', '2019-10-16 08:59:24', NULL),
(197, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2019-10-16 08:59:25', '2019-10-16 08:59:25', NULL),
(198, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-16 08:59:29', '2019-10-16 08:59:29', NULL),
(199, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2019-10-16 09:00:48', '2019-10-16 09:00:48', NULL),
(200, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2019-10-16 09:00:49', '2019-10-16 09:00:49', NULL),
(201, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-16 09:01:04', '2019-10-16 09:01:04', NULL),
(202, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2019-10-16 09:02:40', '2019-10-16 09:02:40', NULL),
(203, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2019-10-16 09:02:41', '2019-10-16 09:02:41', NULL),
(204, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2019-10-16 09:03:39', '2019-10-16 09:03:39', NULL),
(205, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-16 09:04:26', '2019-10-16 09:04:26', NULL),
(206, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2019-10-16 09:43:15', '2019-10-16 09:43:15', NULL),
(207, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2019-10-16 09:43:17', '2019-10-16 09:43:17', NULL),
(208, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-16 09:43:33', '2019-10-16 09:43:33', NULL),
(209, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2019-10-16 09:45:50', '2019-10-16 09:45:50', NULL),
(210, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2019-10-16 09:45:51', '2019-10-16 09:45:51', NULL),
(211, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-16 09:45:55', '2019-10-16 09:45:55', NULL),
(212, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2019-10-16 09:48:13', '2019-10-16 09:48:13', NULL),
(213, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2019-10-16 09:48:14', '2019-10-16 09:48:14', NULL),
(214, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-16 09:48:28', '2019-10-16 09:48:28', NULL),
(215, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2019-10-16 09:49:39', '2019-10-16 09:49:39', NULL),
(216, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2019-10-16 09:49:40', '2019-10-16 09:49:40', NULL),
(217, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-16 09:49:57', '2019-10-16 09:49:57', NULL),
(218, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2019-10-16 09:52:09', '2019-10-16 09:52:09', NULL),
(219, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2019-10-16 09:52:10', '2019-10-16 09:52:10', NULL),
(220, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-16 09:52:14', '2019-10-16 09:52:14', NULL),
(221, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2019-10-16 09:56:00', '2019-10-16 09:56:00', NULL),
(222, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2019-10-16 09:56:02', '2019-10-16 09:56:02', NULL),
(223, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2019-10-16 09:56:43', '2019-10-16 09:56:43', NULL),
(224, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2019-10-16 10:19:38', '2019-10-16 10:19:38', NULL),
(225, 'Viewed leave-records', 'Registered', 1, 'http://localhost:8000/leave-records', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-16 10:39:18', '2019-10-16 10:39:18', NULL),
(226, 'Viewed leave-records', 'Registered', 1, 'http://localhost:8000/leave-records', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-16 10:43:25', '2019-10-16 10:43:25', NULL),
(227, 'Viewed leave-records', 'Registered', 1, 'http://localhost:8000/leave-records', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-16 10:51:31', '2019-10-16 10:51:31', NULL),
(228, 'Viewed leave-records', 'Registered', 1, 'http://localhost:8000/leave-records', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-16 10:52:24', '2019-10-16 10:52:24', NULL),
(229, 'Viewed leave-summary', 'Registered', 1, 'http://localhost:8000/leave-summary', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-records', 'GET', '2019-10-16 10:52:33', '2019-10-16 10:52:33', NULL),
(230, 'Viewed leave-summary', 'Registered', 1, 'http://localhost:8000/leave-summary', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-records', 'GET', '2019-10-16 10:53:00', '2019-10-16 10:53:00', NULL),
(231, 'Viewed leave-summary', 'Registered', 1, 'http://localhost:8000/leave-summary', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-records', 'GET', '2019-10-16 11:17:29', '2019-10-16 11:17:29', NULL),
(232, 'Viewed leave-summary', 'Registered', 1, 'http://localhost:8000/leave-summary', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-records', 'GET', '2019-10-16 11:20:35', '2019-10-16 11:20:35', NULL),
(233, 'Viewed leave-summary', 'Registered', 1, 'http://localhost:8000/leave-summary', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-records', 'GET', '2019-10-16 11:21:23', '2019-10-16 11:21:23', NULL),
(234, 'Viewed leave-summary', 'Registered', 1, 'http://localhost:8000/leave-summary', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-records', 'GET', '2019-10-16 11:22:32', '2019-10-16 11:22:32', NULL),
(235, 'Viewed leave-summary', 'Registered', 1, 'http://localhost:8000/leave-summary', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-records', 'GET', '2019-10-16 11:22:53', '2019-10-16 11:22:53', NULL),
(236, 'Viewed leave-summary', 'Registered', 1, 'http://localhost:8000/leave-summary', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-records', 'GET', '2019-10-16 11:23:13', '2019-10-16 11:23:13', NULL),
(237, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2019-10-17 04:59:58', '2019-10-17 04:59:58', NULL),
(238, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2019-10-17 04:59:59', '2019-10-17 04:59:59', NULL),
(239, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-17 05:00:20', '2019-10-17 05:00:20', NULL),
(240, 'Viewed departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-17 05:00:52', '2019-10-17 05:00:52', NULL),
(241, 'Viewed departments/create', 'Registered', 1, 'http://localhost:8000/departments/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments', 'GET', '2019-10-17 05:00:55', '2019-10-17 05:00:55', NULL),
(242, 'Created departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'POST', '2019-10-17 05:01:16', '2019-10-17 05:01:16', NULL),
(243, 'Viewed departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'GET', '2019-10-17 05:01:17', '2019-10-17 05:01:17', NULL),
(244, 'Viewed departments/create', 'Registered', 1, 'http://localhost:8000/departments/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments', 'GET', '2019-10-17 05:01:21', '2019-10-17 05:01:21', NULL),
(245, 'Created departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'POST', '2019-10-17 05:01:49', '2019-10-17 05:01:49', NULL),
(246, 'Viewed departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'GET', '2019-10-17 05:01:50', '2019-10-17 05:01:50', NULL),
(247, 'Viewed departments/create', 'Registered', 1, 'http://localhost:8000/departments/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments', 'GET', '2019-10-17 05:02:04', '2019-10-17 05:02:04', NULL),
(248, 'Created departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'POST', '2019-10-17 05:02:23', '2019-10-17 05:02:23', NULL),
(249, 'Viewed departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'GET', '2019-10-17 05:02:24', '2019-10-17 05:02:24', NULL),
(250, 'Viewed departments/create', 'Registered', 1, 'http://localhost:8000/departments/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments', 'GET', '2019-10-17 05:02:28', '2019-10-17 05:02:28', NULL),
(251, 'Created departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'POST', '2019-10-17 05:02:40', '2019-10-17 05:02:40', NULL),
(252, 'Viewed departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'GET', '2019-10-17 05:02:43', '2019-10-17 05:02:43', NULL),
(253, 'Viewed departments/create', 'Registered', 1, 'http://localhost:8000/departments/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments', 'GET', '2019-10-17 05:02:47', '2019-10-17 05:02:47', NULL),
(254, 'Created departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'POST', '2019-10-17 05:03:00', '2019-10-17 05:03:00', NULL),
(255, 'Viewed departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'GET', '2019-10-17 05:03:01', '2019-10-17 05:03:01', NULL),
(256, 'Viewed departments/create', 'Registered', 1, 'http://localhost:8000/departments/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments', 'GET', '2019-10-17 05:03:04', '2019-10-17 05:03:04', NULL),
(257, 'Created departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'POST', '2019-10-17 05:03:21', '2019-10-17 05:03:21', NULL),
(258, 'Viewed departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'GET', '2019-10-17 05:03:22', '2019-10-17 05:03:22', NULL),
(259, 'Viewed departments/create', 'Registered', 1, 'http://localhost:8000/departments/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments', 'GET', '2019-10-17 05:03:25', '2019-10-17 05:03:25', NULL),
(260, 'Created departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'POST', '2019-10-17 05:03:40', '2019-10-17 05:03:40', NULL),
(261, 'Viewed departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'GET', '2019-10-17 05:03:41', '2019-10-17 05:03:41', NULL),
(262, 'Viewed departments/create', 'Registered', 1, 'http://localhost:8000/departments/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments', 'GET', '2019-10-17 05:03:44', '2019-10-17 05:03:44', NULL),
(263, 'Created departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'POST', '2019-10-17 05:03:55', '2019-10-17 05:03:55', NULL),
(264, 'Viewed departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'GET', '2019-10-17 05:03:57', '2019-10-17 05:03:57', NULL),
(265, 'Viewed departments/create', 'Registered', 1, 'http://localhost:8000/departments/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments', 'GET', '2019-10-17 05:03:59', '2019-10-17 05:03:59', NULL),
(266, 'Created departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'POST', '2019-10-17 05:04:16', '2019-10-17 05:04:16', NULL),
(267, 'Viewed departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'GET', '2019-10-17 05:04:16', '2019-10-17 05:04:16', NULL),
(268, 'Viewed departments/create', 'Registered', 1, 'http://localhost:8000/departments/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments', 'GET', '2019-10-17 05:04:19', '2019-10-17 05:04:19', NULL),
(269, 'Created departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'POST', '2019-10-17 05:04:37', '2019-10-17 05:04:37', NULL),
(270, 'Viewed departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'GET', '2019-10-17 05:04:38', '2019-10-17 05:04:38', NULL),
(271, 'Viewed departments/create', 'Registered', 1, 'http://localhost:8000/departments/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments', 'GET', '2019-10-17 05:04:40', '2019-10-17 05:04:40', NULL),
(272, 'Created departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'POST', '2019-10-17 05:05:00', '2019-10-17 05:05:00', NULL),
(273, 'Viewed departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'GET', '2019-10-17 05:05:03', '2019-10-17 05:05:03', NULL),
(274, 'Viewed departments/create', 'Registered', 1, 'http://localhost:8000/departments/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments', 'GET', '2019-10-17 05:05:20', '2019-10-17 05:05:20', NULL),
(275, 'Created departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'POST', '2019-10-17 05:06:10', '2019-10-17 05:06:10', NULL),
(276, 'Viewed departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'GET', '2019-10-17 05:06:11', '2019-10-17 05:06:11', NULL),
(277, 'Viewed departments/create', 'Registered', 1, 'http://localhost:8000/departments/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments', 'GET', '2019-10-17 05:06:15', '2019-10-17 05:06:15', NULL),
(278, 'Created departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'POST', '2019-10-17 05:06:29', '2019-10-17 05:06:29', NULL),
(279, 'Viewed departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'GET', '2019-10-17 05:06:30', '2019-10-17 05:06:30', NULL),
(280, 'Viewed departments/create', 'Registered', 1, 'http://localhost:8000/departments/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments', 'GET', '2019-10-17 05:06:38', '2019-10-17 05:06:38', NULL),
(281, 'Created departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'POST', '2019-10-17 05:06:53', '2019-10-17 05:06:53', NULL),
(282, 'Viewed departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'GET', '2019-10-17 05:06:54', '2019-10-17 05:06:54', NULL),
(283, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments', 'GET', '2019-10-17 05:09:34', '2019-10-17 05:09:34', NULL),
(284, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-17 05:09:37', '2019-10-17 05:09:37', NULL),
(285, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-17 05:14:59', '2019-10-17 05:14:59', NULL),
(286, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-17 05:18:13', '2019-10-17 05:18:13', NULL),
(287, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-17 05:18:50', '2019-10-17 05:18:50', NULL),
(288, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-17 05:20:51', '2019-10-17 05:20:51', NULL),
(289, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-17 05:28:31', '2019-10-17 05:28:31', NULL),
(290, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-17 05:33:54', '2019-10-17 05:33:54', NULL),
(291, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-17 05:35:18', '2019-10-17 05:35:18', NULL),
(292, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2019-10-17 10:02:27', '2019-10-17 10:02:27', NULL),
(293, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2019-10-17 10:02:28', '2019-10-17 10:02:28', NULL),
(294, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-17 10:02:46', '2019-10-17 10:02:46', NULL),
(295, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-17 10:03:00', '2019-10-17 10:03:00', NULL),
(296, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 10:03:22', '2019-10-17 10:03:22', NULL),
(297, 'Viewed leaves/approve/8', 'Registered', 1, 'http://localhost:8000/leaves/approve/8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/manage-leave', 'GET', '2019-10-17 10:03:37', '2019-10-17 10:03:37', NULL),
(298, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 10:03:57', '2019-10-17 10:03:57', NULL),
(299, 'Viewed leave-summary', 'Registered', 1, 'http://localhost:8000/leave-summary', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/manage-leave', 'GET', '2019-10-17 10:04:04', '2019-10-17 10:04:04', NULL),
(300, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/manage-leave', 'GET', '2019-10-17 10:04:31', '2019-10-17 10:04:31', NULL),
(301, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-17 10:04:33', '2019-10-17 10:04:33', NULL),
(302, 'Viewed departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2019-10-17 10:05:20', '2019-10-17 10:05:20', NULL),
(303, 'Viewed departments/create', 'Registered', 1, 'http://localhost:8000/departments/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments', 'GET', '2019-10-17 10:05:23', '2019-10-17 10:05:23', NULL),
(304, 'Created departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'POST', '2019-10-17 10:05:34', '2019-10-17 10:05:34', NULL),
(305, 'Viewed departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'GET', '2019-10-17 10:05:35', '2019-10-17 10:05:35', NULL),
(306, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments', 'GET', '2019-10-17 10:05:40', '2019-10-17 10:05:40', NULL),
(307, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-17 10:05:45', '2019-10-17 10:05:45', NULL),
(308, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2019-10-17 10:21:10', '2019-10-17 10:21:10', NULL),
(309, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2019-10-17 10:21:11', '2019-10-17 10:21:11', NULL),
(310, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-17 10:21:20', '2019-10-17 10:21:20', NULL),
(311, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 10:21:24', '2019-10-17 10:21:24', NULL),
(312, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 10:24:28', '2019-10-17 10:24:28', NULL),
(313, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2019-10-17 10:24:54', '2019-10-17 10:24:54', NULL),
(314, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-17 10:25:07', '2019-10-17 10:25:07', NULL),
(315, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2019-10-17 10:25:47', '2019-10-17 10:25:47', NULL),
(316, 'Viewed users/18/edit', 'Registered', 1, 'http://localhost:8000/users/18/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-17 10:25:56', '2019-10-17 10:25:56', NULL),
(317, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/18/edit', 'GET', '2019-10-17 10:26:17', '2019-10-17 10:26:17', NULL),
(318, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-17 10:26:21', '2019-10-17 10:26:21', NULL),
(319, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-17 10:26:28', '2019-10-17 10:26:28', NULL),
(320, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-17 10:26:31', '2019-10-17 10:26:31', NULL),
(321, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2019-10-17 10:28:38', '2019-10-17 10:28:38', NULL),
(322, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2019-10-17 10:28:39', '2019-10-17 10:28:39', NULL),
(323, 'Viewed users/19', 'Registered', 1, 'http://localhost:8000/users/19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-17 10:29:00', '2019-10-17 10:29:00', NULL),
(324, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/19', 'GET', '2019-10-17 10:30:09', '2019-10-17 10:30:09', NULL),
(325, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-17 10:30:13', '2019-10-17 10:30:13', NULL),
(326, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2019-10-17 10:31:19', '2019-10-17 10:31:19', NULL),
(327, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2019-10-17 10:31:20', '2019-10-17 10:31:20', NULL),
(328, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'POST', '2019-10-17 10:32:00', '2019-10-17 10:32:00', NULL),
(329, 'Logged In', 'Registered', 20, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2019-10-17 10:32:12', '2019-10-17 10:32:12', NULL),
(330, 'Viewed home', 'Registered', 20, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2019-10-17 10:32:13', '2019-10-17 10:32:13', NULL),
(331, 'Viewed leaves', 'Registered', 20, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', NULL, 'GET', '2019-10-17 10:33:11', '2019-10-17 10:33:11', NULL),
(332, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 10:33:18', '2019-10-17 10:33:18', NULL),
(333, 'Logged Out', 'Registered', 20, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-17 10:35:33', '2019-10-17 10:35:33', NULL),
(334, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2019-10-17 10:36:39', '2019-10-17 10:36:39', NULL),
(335, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2019-10-17 10:36:40', '2019-10-17 10:36:40', NULL),
(336, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-17 10:36:45', '2019-10-17 10:36:45', NULL),
(337, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 10:36:51', '2019-10-17 10:36:51', NULL),
(338, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 10:37:25', '2019-10-17 10:37:25', NULL),
(339, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 10:38:26', '2019-10-17 10:38:26', NULL),
(340, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 10:44:02', '2019-10-17 10:44:02', NULL),
(341, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 10:57:09', '2019-10-17 10:57:09', NULL),
(342, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 11:03:34', '2019-10-17 11:03:34', NULL),
(343, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 13:22:23', '2019-10-17 13:22:23', NULL),
(344, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 13:23:36', '2019-10-17 13:23:36', NULL),
(345, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 13:24:23', '2019-10-17 13:24:23', NULL),
(346, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 13:24:52', '2019-10-17 13:24:52', NULL),
(347, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 13:25:26', '2019-10-17 13:25:26', NULL),
(348, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 13:36:42', '2019-10-17 13:36:42', NULL),
(349, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 13:37:29', '2019-10-17 13:37:29', NULL);
INSERT INTO `laravel_logger_activity` (`id`, `description`, `userType`, `userId`, `route`, `ipAddress`, `userAgent`, `locale`, `referer`, `methodType`, `created_at`, `updated_at`, `deleted_at`) VALUES
(350, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 13:40:38', '2019-10-17 13:40:38', NULL),
(351, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 13:41:19', '2019-10-17 13:41:19', NULL),
(352, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 13:41:38', '2019-10-17 13:41:38', NULL),
(353, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 13:42:44', '2019-10-17 13:42:44', NULL),
(354, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 13:43:57', '2019-10-17 13:43:57', NULL),
(355, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 13:45:02', '2019-10-17 13:45:02', NULL),
(356, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 13:45:45', '2019-10-17 13:45:45', NULL),
(357, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 13:47:24', '2019-10-17 13:47:24', NULL),
(358, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 13:48:19', '2019-10-17 13:48:19', NULL),
(359, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 13:49:22', '2019-10-17 13:49:22', NULL),
(360, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 13:52:07', '2019-10-17 13:52:07', NULL),
(361, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 13:54:00', '2019-10-17 13:54:00', NULL),
(362, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 13:57:57', '2019-10-17 13:57:57', NULL),
(363, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 13:58:16', '2019-10-17 13:58:16', NULL),
(364, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-17 14:00:19', '2019-10-17 14:00:19', NULL),
(365, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2019-10-17 14:00:31', '2019-10-17 14:00:31', NULL),
(366, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2019-10-17 14:00:32', '2019-10-17 14:00:32', NULL),
(367, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-17 14:00:38', '2019-10-17 14:00:38', NULL),
(368, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 14:00:43', '2019-10-17 14:00:43', NULL),
(369, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 14:02:03', '2019-10-17 14:02:03', NULL),
(370, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 14:04:09', '2019-10-17 14:04:09', NULL),
(371, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 14:05:28', '2019-10-17 14:05:28', NULL),
(372, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 14:05:59', '2019-10-17 14:05:59', NULL),
(373, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 14:06:12', '2019-10-17 14:06:12', NULL),
(374, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 14:06:25', '2019-10-17 14:06:25', NULL),
(375, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 14:06:36', '2019-10-17 14:06:36', NULL),
(376, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 14:09:27', '2019-10-17 14:09:27', NULL),
(377, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-17 14:11:19', '2019-10-17 14:11:19', NULL),
(378, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2019-10-18 06:01:28', '2019-10-18 06:01:28', NULL),
(379, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2019-10-18 06:01:30', '2019-10-18 06:01:30', NULL),
(380, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-18 06:01:37', '2019-10-18 06:01:37', NULL),
(381, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-18 06:01:52', '2019-10-18 06:01:52', NULL),
(382, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-18 06:11:34', '2019-10-18 06:11:34', NULL),
(383, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-18 06:11:53', '2019-10-18 06:11:53', NULL),
(384, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-18 06:12:16', '2019-10-18 06:12:16', NULL),
(385, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-18 06:13:01', '2019-10-18 06:13:01', NULL),
(386, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-18 06:14:01', '2019-10-18 06:14:01', NULL),
(387, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-18 06:22:59', '2019-10-18 06:22:59', NULL),
(388, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-18 06:24:28', '2019-10-18 06:24:28', NULL),
(389, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-18 06:29:49', '2019-10-18 06:29:49', NULL),
(390, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-18 06:30:43', '2019-10-18 06:30:43', NULL),
(391, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-18 06:31:03', '2019-10-18 06:31:03', NULL),
(392, 'Logged In', 'Registered', 20, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2019-10-18 06:34:02', '2019-10-18 06:34:02', NULL),
(393, 'Viewed home', 'Registered', 20, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2019-10-18 06:34:03', '2019-10-18 06:34:03', NULL),
(394, 'Viewed leaves', 'Registered', 20, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', NULL, 'GET', '2019-10-18 06:34:12', '2019-10-18 06:34:12', NULL),
(395, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-18 06:34:16', '2019-10-18 06:34:16', NULL),
(396, 'Created leaves', 'Registered', 20, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-18 06:34:44', '2019-10-18 06:34:44', NULL),
(397, 'Viewed leaves', 'Registered', 20, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', NULL, 'GET', '2019-10-18 06:36:55', '2019-10-18 06:36:55', NULL),
(398, 'Viewed manage-leave', 'Registered', 20, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', NULL, 'GET', '2019-10-18 06:37:14', '2019-10-18 06:37:14', NULL),
(399, 'Viewed leaves/approve/10', 'Registered', 20, 'http://localhost:8000/leaves/approve/10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/manage-leave', 'GET', '2019-10-18 06:37:20', '2019-10-18 06:37:20', NULL),
(400, 'Viewed manage-leave', 'Registered', 20, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', NULL, 'GET', '2019-10-18 06:37:42', '2019-10-18 06:37:42', NULL),
(401, 'Viewed leaves/10', 'Registered', 20, 'http://localhost:8000/leaves/10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/manage-leave', 'GET', '2019-10-18 06:37:52', '2019-10-18 06:37:52', NULL),
(402, 'Viewed leaves', 'Registered', 20, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/10', 'GET', '2019-10-18 06:38:08', '2019-10-18 06:38:08', NULL),
(403, 'Viewed leaves', 'Registered', 20, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/10', 'GET', '2019-10-18 07:02:05', '2019-10-18 07:02:05', NULL),
(404, 'Viewed leaves', 'Registered', 20, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/10', 'GET', '2019-10-18 07:03:33', '2019-10-18 07:03:33', NULL),
(405, 'Viewed leaves', 'Registered', 20, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/10', 'GET', '2019-10-18 07:04:54', '2019-10-18 07:04:54', NULL),
(406, 'Viewed departments', 'Registered', 20, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-18 07:04:59', '2019-10-18 07:04:59', NULL),
(407, 'Viewed departments/create', 'Registered', 20, 'http://localhost:8000/departments/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments', 'GET', '2019-10-18 07:05:05', '2019-10-18 07:05:05', NULL),
(408, 'Viewed departments', 'Registered', 20, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-18 07:06:10', '2019-10-18 07:06:10', NULL),
(409, 'Viewed departments', 'Registered', 20, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-18 07:07:12', '2019-10-18 07:07:12', NULL),
(410, 'Viewed departments', 'Registered', 20, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-18 07:48:04', '2019-10-18 07:48:04', NULL),
(411, 'Viewed departments', 'Registered', 20, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-18 07:49:05', '2019-10-18 07:49:05', NULL),
(412, 'Viewed departments', 'Registered', 20, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-18 07:50:42', '2019-10-18 07:50:42', NULL),
(413, 'Viewed departments', 'Registered', 20, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-18 07:52:23', '2019-10-18 07:52:23', NULL),
(414, 'Viewed leaves', 'Registered', 20, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', NULL, 'GET', '2019-10-18 07:54:17', '2019-10-18 07:54:17', NULL),
(415, 'Viewed departmental-users', 'Registered', 20, 'http://localhost:8000/departmental-users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-18 07:54:36', '2019-10-18 07:54:36', NULL),
(416, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2019-10-21 07:30:11', '2019-10-21 07:30:11', NULL),
(417, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2019-10-21 07:30:13', '2019-10-21 07:30:13', NULL),
(418, 'Viewed leave-calendar', 'Registered', 1, 'http://localhost:8000/leave-calendar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-21 07:30:21', '2019-10-21 07:30:21', NULL),
(419, 'Viewed leave-records', 'Registered', 1, 'http://localhost:8000/leave-records', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-calendar', 'GET', '2019-10-21 07:30:28', '2019-10-21 07:30:28', NULL),
(420, 'Viewed leave-summary', 'Registered', 1, 'http://localhost:8000/leave-summary', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-records', 'GET', '2019-10-21 07:30:46', '2019-10-21 07:30:46', NULL),
(421, 'Viewed leave-summary', 'Registered', 1, 'http://localhost:8000/leave-summary', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-records', 'GET', '2019-10-21 07:33:51', '2019-10-21 07:33:51', NULL),
(422, 'Viewed leave-summary', 'Registered', 1, 'http://localhost:8000/leave-summary', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-records', 'GET', '2019-10-21 07:35:04', '2019-10-21 07:35:04', NULL),
(423, 'Viewed leave-summary', 'Registered', 1, 'http://localhost:8000/leave-summary', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-records', 'GET', '2019-10-21 07:35:28', '2019-10-21 07:35:28', NULL),
(424, 'Viewed leave-summary', 'Registered', 1, 'http://localhost:8000/leave-summary', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-records', 'GET', '2019-10-21 07:36:51', '2019-10-21 07:36:51', NULL),
(425, 'Viewed leave-summary', 'Registered', 1, 'http://localhost:8000/leave-summary', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-records', 'GET', '2019-10-21 07:39:16', '2019-10-21 07:39:16', NULL),
(426, 'Viewed leave-summary', 'Registered', 1, 'http://localhost:8000/leave-summary', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-records', 'GET', '2019-10-21 07:44:17', '2019-10-21 07:44:17', NULL),
(427, 'Viewed leave-summary', 'Registered', 1, 'http://localhost:8000/leave-summary', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-records', 'GET', '2019-10-21 07:45:19', '2019-10-21 07:45:19', NULL),
(428, 'Viewed leave-calendar', 'Registered', 1, 'http://localhost:8000/leave-calendar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-summary', 'GET', '2019-10-21 07:45:51', '2019-10-21 07:45:51', NULL),
(429, 'Viewed leave-calendar', 'Registered', 1, 'http://localhost:8000/leave-calendar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-summary', 'GET', '2019-10-21 07:53:51', '2019-10-21 07:53:51', NULL),
(430, 'Viewed leave-calendar', 'Registered', 1, 'http://localhost:8000/leave-calendar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-summary', 'GET', '2019-10-21 07:55:52', '2019-10-21 07:55:52', NULL),
(431, 'Viewed leave-calendar', 'Registered', 1, 'http://localhost:8000/leave-calendar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-summary', 'GET', '2019-10-21 07:56:39', '2019-10-21 07:56:39', NULL),
(432, 'Viewed leave-calendar', 'Registered', 1, 'http://localhost:8000/leave-calendar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-summary', 'GET', '2019-10-21 07:57:06', '2019-10-21 07:57:06', NULL),
(433, 'Viewed leave-calendar', 'Registered', 1, 'http://localhost:8000/leave-calendar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-summary', 'GET', '2019-10-21 08:24:10', '2019-10-21 08:24:10', NULL),
(434, 'Viewed leave-calendar', 'Registered', 1, 'http://localhost:8000/leave-calendar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-summary', 'GET', '2019-10-21 08:24:21', '2019-10-21 08:24:21', NULL),
(435, 'Viewed leave-calendar', 'Registered', 1, 'http://localhost:8000/leave-calendar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-summary', 'GET', '2019-10-21 08:24:55', '2019-10-21 08:24:55', NULL),
(436, 'Viewed leave-calendar', 'Registered', 1, 'http://localhost:8000/leave-calendar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-summary', 'GET', '2019-10-21 08:35:01', '2019-10-21 08:35:01', NULL),
(437, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2019-10-21 11:44:05', '2019-10-21 11:44:05', NULL),
(438, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2019-10-21 11:44:06', '2019-10-21 11:44:06', NULL),
(439, 'Viewed leave-calendar', 'Registered', 1, 'http://localhost:8000/leave-calendar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-21 11:44:16', '2019-10-21 11:44:16', NULL),
(440, 'Viewed leave-calendar', 'Registered', 1, 'http://localhost:8000/leave-calendar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-21 11:46:17', '2019-10-21 11:46:17', NULL),
(441, 'Viewed leave-calendar', 'Registered', 1, 'http://localhost:8000/leave-calendar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-21 11:49:30', '2019-10-21 11:49:30', NULL),
(442, 'Viewed leave-calendar', 'Registered', 1, 'http://localhost:8000/leave-calendar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-21 11:55:16', '2019-10-21 11:55:16', NULL),
(443, 'Viewed leave-calendar', 'Registered', 1, 'http://localhost:8000/leave-calendar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-21 11:57:05', '2019-10-21 11:57:05', NULL),
(444, 'Viewed leave-calendar', 'Registered', 1, 'http://localhost:8000/leave-calendar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-21 12:01:06', '2019-10-21 12:01:06', NULL),
(445, 'Viewed leave-calendar', 'Registered', 1, 'http://localhost:8000/leave-calendar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-21 12:01:41', '2019-10-21 12:01:41', NULL),
(446, 'Viewed leave-calendar', 'Registered', 1, 'http://localhost:8000/leave-calendar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-21 12:03:43', '2019-10-21 12:03:43', NULL),
(447, 'Viewed leave-calendar', 'Registered', 1, 'http://localhost:8000/leave-calendar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-21 12:04:41', '2019-10-21 12:04:41', NULL),
(448, 'Viewed leave-calendar', 'Registered', 1, 'http://localhost:8000/leave-calendar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-21 12:09:37', '2019-10-21 12:09:37', NULL),
(449, 'Viewed leave-calendar', 'Registered', 1, 'http://localhost:8000/leave-calendar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-21 12:10:04', '2019-10-21 12:10:04', NULL),
(450, 'Viewed leave-calendar', 'Registered', 1, 'http://localhost:8000/leave-calendar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-21 12:10:27', '2019-10-21 12:10:27', NULL),
(451, 'Viewed leave-calendar', 'Registered', 1, 'http://localhost:8000/leave-calendar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-21 12:11:44', '2019-10-21 12:11:44', NULL),
(452, 'Viewed leave-calendar', 'Registered', 1, 'http://localhost:8000/leave-calendar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-21 12:11:47', '2019-10-21 12:11:47', NULL),
(453, 'Viewed leave-calendar', 'Registered', 1, 'http://localhost:8000/leave-calendar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-21 12:11:55', '2019-10-21 12:11:55', NULL),
(454, 'Viewed leave-calendar', 'Registered', 1, 'http://localhost:8000/leave-calendar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-21 12:12:35', '2019-10-21 12:12:35', NULL),
(455, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-calendar', 'POST', '2019-10-21 12:15:41', '2019-10-21 12:15:41', NULL),
(456, 'Logged In', 'Registered', 20, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2019-10-21 12:15:47', '2019-10-21 12:15:47', NULL),
(457, 'Viewed home', 'Registered', 20, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2019-10-21 12:15:48', '2019-10-21 12:15:48', NULL),
(458, 'Viewed leave-calendar', 'Registered', 20, 'http://localhost:8000/leave-calendar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-21 12:15:53', '2019-10-21 12:15:53', NULL),
(459, 'Viewed leaves', 'Registered', 20, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-calendar', 'GET', '2019-10-21 12:23:44', '2019-10-21 12:23:44', NULL),
(460, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-21 12:23:46', '2019-10-21 12:23:46', NULL),
(461, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-21 12:24:32', '2019-10-21 12:24:32', NULL),
(462, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-21 12:25:15', '2019-10-21 12:25:15', NULL),
(463, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-21 12:27:10', '2019-10-21 12:27:10', NULL),
(464, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-21 12:28:59', '2019-10-21 12:28:59', NULL),
(465, 'Created leaves', 'Registered', 20, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-21 12:29:53', '2019-10-21 12:29:53', NULL),
(466, 'Viewed leaves', 'Registered', 20, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2019-10-21 12:30:27', '2019-10-21 12:30:27', NULL),
(467, 'Viewed leave-calendar', 'Registered', 20, 'http://localhost:8000/leave-calendar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-21 12:30:43', '2019-10-21 12:30:43', NULL),
(468, 'Viewed leave-calendar', 'Registered', 20, 'http://localhost:8000/leave-calendar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-21 12:31:49', '2019-10-21 12:31:49', NULL),
(469, 'Viewed manage-leave', 'Registered', 20, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-calendar', 'GET', '2019-10-21 12:32:10', '2019-10-21 12:32:10', NULL),
(470, 'Viewed manage-leave', 'Registered', 20, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-calendar', 'GET', '2019-10-21 12:44:42', '2019-10-21 12:44:42', NULL),
(471, 'Viewed leaves/approve/11', 'Registered', 20, 'http://localhost:8000/leaves/approve/11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/manage-leave', 'GET', '2019-10-21 12:44:49', '2019-10-21 12:44:49', NULL),
(472, 'Viewed leaves/approve/11', 'Registered', 20, 'http://localhost:8000/leaves/approve/11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/manage-leave', 'GET', '2019-10-21 12:47:47', '2019-10-21 12:47:47', NULL),
(473, 'Viewed leaves', 'Registered', 20, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', NULL, 'GET', '2019-10-21 12:49:10', '2019-10-21 12:49:10', NULL),
(474, 'Viewed leave-calendar', 'Registered', 20, 'http://localhost:8000/leave-calendar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-21 12:49:25', '2019-10-21 12:49:25', NULL),
(475, 'Viewed leaves/approve/11', 'Registered', 20, 'http://localhost:8000/leaves/approve/11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/manage-leave', 'GET', '2019-10-21 13:05:54', '2019-10-21 13:05:54', NULL),
(476, 'Viewed leaves/approve/11', 'Registered', 20, 'http://localhost:8000/leaves/approve/11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/manage-leave', 'GET', '2019-10-21 13:08:44', '2019-10-21 13:08:44', NULL),
(477, 'Viewed manage-leave', 'Registered', 20, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/manage-leave', 'GET', '2019-10-21 13:08:46', '2019-10-21 13:08:46', NULL),
(478, 'Logged In', 'Registered', 20, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2019-10-29 06:06:52', '2019-10-29 06:06:52', NULL),
(479, 'Viewed home', 'Registered', 20, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2019-10-29 06:06:53', '2019-10-29 06:06:53', NULL),
(480, 'Logged Out', 'Registered', 20, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'POST', '2019-10-29 06:07:03', '2019-10-29 06:07:03', NULL),
(481, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2019-10-29 06:07:07', '2019-10-29 06:07:07', NULL),
(482, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2019-10-29 06:07:08', '2019-10-29 06:07:08', NULL),
(483, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-29 06:07:15', '2019-10-29 06:07:15', NULL),
(484, 'Viewed departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-10-29 06:07:39', '2019-10-29 06:07:39', NULL),
(485, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments', 'GET', '2019-10-29 06:08:02', '2019-10-29 06:08:02', NULL),
(486, 'Viewed leaves/11', 'Registered', 1, 'http://localhost:8000/leaves/11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 06:08:53', '2019-10-29 06:08:53', NULL),
(487, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/11', 'GET', '2019-10-29 06:09:07', '2019-10-29 06:09:07', NULL),
(488, 'Viewed leaves/6', 'Registered', 1, 'http://localhost:8000/leaves/6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 06:09:15', '2019-10-29 06:09:15', NULL),
(489, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/6', 'GET', '2019-10-29 06:09:18', '2019-10-29 06:09:18', NULL),
(490, 'Viewed leaves/10/edit', 'Registered', 1, 'http://localhost:8000/leaves/10/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 06:09:20', '2019-10-29 06:09:20', NULL),
(491, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 06:12:03', '2019-10-29 06:12:03', NULL),
(492, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2019-10-29 06:14:54', '2019-10-29 06:14:54', NULL),
(493, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2019-10-29 06:17:03', '2019-10-29 06:17:03', NULL),
(494, 'Viewed leave-records', 'Registered', 1, 'http://localhost:8000/leave-records', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/manage-leave', 'GET', '2019-10-29 06:17:33', '2019-10-29 06:17:33', NULL),
(495, 'Viewed leave-calendar', 'Registered', 1, 'http://localhost:8000/leave-calendar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-records', 'GET', '2019-10-29 06:19:49', '2019-10-29 06:19:49', NULL),
(496, 'Viewed leave-summary', 'Registered', 1, 'http://localhost:8000/leave-summary', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-calendar', 'GET', '2019-10-29 06:20:20', '2019-10-29 06:20:20', NULL),
(497, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-summary', 'GET', '2019-10-29 06:20:49', '2019-10-29 06:20:49', NULL),
(498, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'POST', '2019-10-29 06:23:18', '2019-10-29 06:23:18', NULL),
(499, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2019-10-29 06:33:21', '2019-10-29 06:33:21', NULL),
(500, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2019-10-29 06:33:22', '2019-10-29 06:33:22', NULL),
(501, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-29 06:33:59', '2019-10-29 06:33:59', NULL),
(502, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 06:34:02', '2019-10-29 06:34:02', NULL),
(503, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 07:04:01', '2019-10-29 07:04:01', NULL),
(504, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2019-10-29 07:18:45', '2019-10-29 07:18:45', NULL),
(505, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2019-10-29 07:19:38', '2019-10-29 07:19:38', NULL),
(506, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 07:23:35', '2019-10-29 07:23:35', NULL),
(507, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 07:34:52', '2019-10-29 07:34:52', NULL),
(508, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 07:38:18', '2019-10-29 07:38:18', NULL),
(509, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 07:39:30', '2019-10-29 07:39:30', NULL),
(510, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 07:43:24', '2019-10-29 07:43:24', NULL),
(511, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-29 07:43:36', '2019-10-29 07:43:36', NULL),
(512, 'Logged In', 'Registered', 20, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2019-10-29 07:43:41', '2019-10-29 07:43:41', NULL),
(513, 'Viewed home', 'Registered', 20, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2019-10-29 07:43:41', '2019-10-29 07:43:41', NULL),
(514, 'Viewed leaves', 'Registered', 20, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-29 07:43:45', '2019-10-29 07:43:45', NULL),
(515, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 07:43:47', '2019-10-29 07:43:47', NULL),
(516, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 07:46:07', '2019-10-29 07:46:07', NULL),
(517, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 07:46:31', '2019-10-29 07:46:31', NULL),
(518, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 07:47:49', '2019-10-29 07:47:49', NULL),
(519, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 07:49:21', '2019-10-29 07:49:21', NULL),
(520, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 07:50:35', '2019-10-29 07:50:35', NULL),
(521, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 07:55:32', '2019-10-29 07:55:32', NULL),
(522, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 07:58:46', '2019-10-29 07:58:46', NULL),
(523, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 07:59:02', '2019-10-29 07:59:02', NULL);
INSERT INTO `laravel_logger_activity` (`id`, `description`, `userType`, `userId`, `route`, `ipAddress`, `userAgent`, `locale`, `referer`, `methodType`, `created_at`, `updated_at`, `deleted_at`) VALUES
(524, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 08:55:30', '2019-10-29 08:55:30', NULL),
(525, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 08:57:43', '2019-10-29 08:57:43', NULL),
(526, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 10:24:22', '2019-10-29 10:24:22', NULL),
(527, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 12:12:20', '2019-10-29 12:12:20', NULL),
(528, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 12:47:26', '2019-10-29 12:47:26', NULL),
(529, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 13:47:11', '2019-10-29 13:47:11', NULL),
(530, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 14:03:09', '2019-10-29 14:03:09', NULL),
(531, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 14:05:53', '2019-10-29 14:05:53', NULL),
(532, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 14:41:31', '2019-10-29 14:41:31', NULL),
(533, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 14:45:58', '2019-10-29 14:45:58', NULL),
(534, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 14:50:19', '2019-10-29 14:50:19', NULL),
(535, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 14:50:30', '2019-10-29 14:50:30', NULL),
(536, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 14:54:46', '2019-10-29 14:54:46', NULL),
(537, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 14:56:40', '2019-10-29 14:56:40', NULL),
(538, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 14:57:17', '2019-10-29 14:57:17', NULL),
(539, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 14:57:58', '2019-10-29 14:57:58', NULL),
(540, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 15:04:10', '2019-10-29 15:04:10', NULL),
(541, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 15:11:44', '2019-10-29 15:11:44', NULL),
(542, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 15:13:03', '2019-10-29 15:13:03', NULL),
(543, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 15:13:53', '2019-10-29 15:13:53', NULL),
(544, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 15:14:26', '2019-10-29 15:14:26', NULL),
(545, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 15:15:30', '2019-10-29 15:15:30', NULL),
(546, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 15:16:12', '2019-10-29 15:16:12', NULL),
(547, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 15:16:46', '2019-10-29 15:16:46', NULL),
(548, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 15:18:11', '2019-10-29 15:18:11', NULL),
(549, 'Logged Out', 'Registered', 20, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-29 15:22:12', '2019-10-29 15:22:12', NULL),
(550, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2019-10-29 15:22:19', '2019-10-29 15:22:19', NULL),
(551, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2019-10-29 15:22:19', '2019-10-29 15:22:19', NULL),
(552, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-29 15:22:27', '2019-10-29 15:22:27', NULL),
(553, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 15:22:29', '2019-10-29 15:22:29', NULL),
(554, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 15:24:58', '2019-10-29 15:24:58', NULL),
(555, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 15:26:30', '2019-10-29 15:26:30', NULL),
(556, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 15:27:09', '2019-10-29 15:27:09', NULL),
(557, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 15:27:56', '2019-10-29 15:27:56', NULL),
(558, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 15:28:41', '2019-10-29 15:28:41', NULL),
(559, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 15:31:38', '2019-10-29 15:31:38', NULL),
(560, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 15:37:04', '2019-10-29 15:37:04', NULL),
(561, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 15:38:09', '2019-10-29 15:38:09', NULL),
(562, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 15:39:32', '2019-10-29 15:39:32', NULL),
(563, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-29 15:39:52', '2019-10-29 15:39:52', NULL),
(564, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-29 15:40:11', '2019-10-29 15:40:11', NULL),
(565, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2019-10-30 06:08:53', '2019-10-30 06:08:53', NULL),
(566, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2019-10-30 06:08:54', '2019-10-30 06:08:54', NULL),
(567, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-30 06:09:42', '2019-10-30 06:09:42', NULL),
(568, 'Viewed leaves/11', 'Registered', 1, 'http://localhost:8000/leaves/11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-30 06:10:39', '2019-10-30 06:10:39', NULL),
(569, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/11', 'GET', '2019-10-30 06:10:45', '2019-10-30 06:10:45', NULL),
(570, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'POST', '2019-10-30 06:11:04', '2019-10-30 06:11:04', NULL),
(571, 'Logged In', 'Registered', 20, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2019-10-30 06:11:10', '2019-10-30 06:11:10', NULL),
(572, 'Viewed home', 'Registered', 20, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2019-10-30 06:11:10', '2019-10-30 06:11:10', NULL),
(573, 'Viewed leaves', 'Registered', 20, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-30 06:11:17', '2019-10-30 06:11:17', NULL),
(574, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-30 06:11:21', '2019-10-30 06:11:21', NULL),
(575, 'Created leaves', 'Registered', 20, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-30 06:17:13', '2019-10-30 06:17:13', NULL),
(576, 'Viewed leaves', 'Registered', 20, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', NULL, 'GET', '2019-10-30 06:43:07', '2019-10-30 06:43:07', NULL),
(577, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-30 06:43:14', '2019-10-30 06:43:14', NULL),
(578, 'Created leaves', 'Registered', 20, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-30 06:43:46', '2019-10-30 06:43:46', NULL),
(579, 'Viewed leaves', 'Registered', 20, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2019-10-30 06:43:47', '2019-10-30 06:43:47', NULL),
(580, 'Deleted leaves/6', 'Registered', 20, 'http://localhost:8000/leaves/6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'DELETE', '2019-10-30 06:57:29', '2019-10-30 06:57:29', NULL),
(581, 'Viewed leaves', 'Registered', 20, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-30 06:57:30', '2019-10-30 06:57:30', NULL),
(582, 'Viewed leaves/deleted', 'Registered', 20, 'http://localhost:8000/leaves/deleted', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-30 06:57:36', '2019-10-30 06:57:36', NULL),
(583, 'Viewed home', 'Registered', 20, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/deleted', 'GET', '2019-10-30 06:57:53', '2019-10-30 06:57:53', NULL),
(584, 'Viewed home', 'Registered', 20, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/deleted', 'GET', '2019-10-30 07:34:33', '2019-10-30 07:34:33', NULL),
(585, 'Viewed home', 'Registered', 20, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/deleted', 'GET', '2019-10-30 07:41:59', '2019-10-30 07:41:59', NULL),
(586, 'Viewed home', 'Registered', 20, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/deleted', 'GET', '2019-10-30 08:20:20', '2019-10-30 08:20:20', NULL),
(587, 'Viewed home', 'Registered', 20, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/deleted', 'GET', '2019-10-30 08:20:35', '2019-10-30 08:20:35', NULL),
(588, 'Logged Out', 'Registered', 20, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'POST', '2019-10-30 08:32:20', '2019-10-30 08:32:20', NULL),
(589, 'Logged In', 'Registered', 19, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2019-10-30 08:32:53', '2019-10-30 08:32:53', NULL),
(590, 'Viewed home', 'Registered', 19, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2019-10-30 08:32:54', '2019-10-30 08:32:54', NULL),
(591, 'Viewed home', 'Registered', 19, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2019-10-30 08:41:20', '2019-10-30 08:41:20', NULL),
(592, 'Viewed leave-records', 'Registered', 19, 'http://localhost:8000/leave-records', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-30 08:41:29', '2019-10-30 08:41:29', NULL),
(593, 'Viewed home', 'Registered', 19, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-records', 'GET', '2019-10-30 08:43:09', '2019-10-30 08:43:09', NULL),
(594, 'Viewed leave-calendar', 'Registered', 19, 'http://localhost:8000/leave-calendar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-30 08:44:51', '2019-10-30 08:44:51', NULL),
(595, 'Logged Out', 'Registered', 19, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-calendar', 'POST', '2019-10-30 08:48:37', '2019-10-30 08:48:37', NULL),
(596, 'Logged In', 'Registered', 19, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2019-10-30 08:48:51', '2019-10-30 08:48:51', NULL),
(597, 'Viewed leaves/create', 'Registered', 19, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2019-10-30 08:48:51', '2019-10-30 08:48:51', NULL),
(598, 'Viewed leaves', 'Registered', 19, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2019-10-30 08:54:49', '2019-10-30 08:54:49', NULL),
(599, 'Viewed leaves', 'Registered', 19, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2019-10-30 09:20:00', '2019-10-30 09:20:00', NULL),
(600, 'Viewed leaves', 'Registered', 19, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2019-10-30 09:22:25', '2019-10-30 09:22:25', NULL),
(601, 'Viewed leaves', 'Registered', 19, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2019-10-30 09:24:28', '2019-10-30 09:24:28', NULL),
(602, 'Viewed leaves', 'Registered', 19, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2019-10-30 10:01:09', '2019-10-30 10:01:09', NULL),
(603, 'Viewed leaves', 'Registered', 19, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2019-10-30 10:02:02', '2019-10-30 10:02:02', NULL),
(604, 'Viewed leaves', 'Registered', 19, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2019-10-30 11:37:30', '2019-10-30 11:37:30', NULL),
(605, 'Viewed leaves', 'Registered', 19, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2019-10-30 11:51:08', '2019-10-30 11:51:08', NULL),
(606, 'Viewed leaves', 'Registered', 19, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2019-10-30 11:51:32', '2019-10-30 11:51:32', NULL),
(607, 'Viewed home', 'Registered', 19, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2019-10-30 11:52:00', '2019-10-30 11:52:00', NULL),
(608, 'Viewed profile/itprojects', 'Registered', 19, 'http://localhost:8000/profile/itprojects', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-30 11:52:07', '2019-10-30 11:52:07', NULL),
(609, 'Viewed home', 'Registered', 19, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/profile/itprojects', 'GET', '2019-10-30 11:53:32', '2019-10-30 11:53:32', NULL),
(610, 'Viewed leaves', 'Registered', 19, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-10-30 11:53:42', '2019-10-30 11:53:42', NULL),
(611, 'Logged Out', 'Registered', 19, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'POST', '2019-10-30 11:53:56', '2019-10-30 11:53:56', NULL),
(612, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2019-10-30 11:54:03', '2019-10-30 11:54:03', NULL),
(613, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2019-10-30 11:54:03', '2019-10-30 11:54:03', NULL),
(614, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-30 11:54:51', '2019-10-30 11:54:51', NULL),
(615, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2019-10-30 11:54:56', '2019-10-30 11:54:56', NULL),
(616, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2019-10-30 11:54:57', '2019-10-30 11:54:57', NULL),
(617, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2019-10-30 11:59:11', '2019-10-30 11:59:11', NULL),
(618, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2019-10-30 11:59:14', '2019-10-30 11:59:14', NULL),
(619, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2019-10-30 11:59:19', '2019-10-30 11:59:19', NULL),
(620, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2019-10-30 11:59:20', '2019-10-30 11:59:20', NULL),
(621, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'POST', '2019-10-30 11:59:38', '2019-10-30 11:59:38', NULL),
(622, 'Logged In', 'Registered', 19, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2019-10-30 11:59:43', '2019-10-30 11:59:43', NULL),
(623, 'Viewed home', 'Registered', 19, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2019-10-30 11:59:43', '2019-10-30 11:59:43', NULL),
(624, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2019-11-03 10:09:28', '2019-11-03 10:09:28', NULL),
(625, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2019-11-03 10:09:30', '2019-11-03 10:09:30', NULL),
(626, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2019-11-03 10:09:38', '2019-11-03 10:09:38', NULL),
(627, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2019-11-03 10:09:44', '2019-11-03 10:09:44', NULL),
(628, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2019-11-08 07:04:32', '2019-11-08 07:04:32', NULL),
(629, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2019-11-08 07:04:34', '2019-11-08 07:04:34', NULL),
(630, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'POST', '2019-11-08 07:04:46', '2019-11-08 07:04:46', NULL),
(631, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2020-01-07 08:54:47', '2020-01-07 08:54:47', NULL),
(632, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2020-01-07 08:54:49', '2020-01-07 08:54:49', NULL),
(633, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-07 08:55:02', '2020-01-07 08:55:02', NULL),
(634, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-07 08:57:39', '2020-01-07 08:57:39', NULL),
(635, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-07 08:59:18', '2020-01-07 08:59:18', NULL),
(636, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-07 09:01:14', '2020-01-07 09:01:14', NULL),
(637, 'Viewed departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2020-01-07 09:06:55', '2020-01-07 09:06:55', NULL),
(638, 'Viewed departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2020-01-07 09:08:36', '2020-01-07 09:08:36', NULL),
(639, 'Viewed departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2020-01-07 09:09:07', '2020-01-07 09:09:07', NULL),
(640, 'Viewed departments/create', 'Registered', 1, 'http://localhost:8000/departments/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments', 'GET', '2020-01-07 09:09:13', '2020-01-07 09:09:13', NULL),
(641, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'GET', '2020-01-07 09:12:28', '2020-01-07 09:12:28', NULL),
(642, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'GET', '2020-01-07 09:14:30', '2020-01-07 09:14:30', NULL),
(643, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'GET', '2020-01-07 09:15:31', '2020-01-07 09:15:31', NULL),
(644, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'GET', '2020-01-07 09:17:46', '2020-01-07 09:17:46', NULL),
(645, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'GET', '2020-01-07 09:23:49', '2020-01-07 09:23:49', NULL),
(646, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-07 09:23:56', '2020-01-07 09:23:56', NULL),
(647, 'Logged In', 'Registered', 20, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2020-01-09 08:23:06', '2020-01-09 08:23:06', NULL),
(648, 'Logged In', 'Registered', 20, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2020-01-09 08:24:15', '2020-01-09 08:24:15', NULL),
(649, 'Viewed home', 'Registered', 20, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2020-01-09 08:24:21', '2020-01-09 08:24:21', NULL),
(650, 'Viewed departmental-users', 'Registered', 20, 'http://localhost:8000/departmental-users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-09 08:25:08', '2020-01-09 08:25:08', NULL),
(651, 'Viewed departmental-users', 'Registered', 20, 'http://localhost:8000/departmental-users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-09 08:33:01', '2020-01-09 08:33:01', NULL),
(652, 'Viewed departmental-users', 'Registered', 20, 'http://localhost:8000/departmental-users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-09 08:34:05', '2020-01-09 08:34:05', NULL),
(653, 'Viewed departmental-users', 'Registered', 20, 'http://localhost:8000/departmental-users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-09 08:35:59', '2020-01-09 08:35:59', NULL),
(654, 'Viewed departmental-users', 'Registered', 20, 'http://localhost:8000/departmental-users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-09 08:36:19', '2020-01-09 08:36:19', NULL),
(655, 'Viewed departmental-users', 'Registered', 20, 'http://localhost:8000/departmental-users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-09 08:40:51', '2020-01-09 08:40:51', NULL),
(656, 'Viewed departmental-users', 'Registered', 20, 'http://localhost:8000/departmental-users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-09 08:42:52', '2020-01-09 08:42:52', NULL),
(657, 'Viewed departmental-users', 'Registered', 20, 'http://localhost:8000/departmental-users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-09 08:45:02', '2020-01-09 08:45:02', NULL),
(658, 'Viewed departmental-users', 'Registered', 20, 'http://localhost:8000/departmental-users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-09 08:47:41', '2020-01-09 08:47:41', NULL),
(659, 'Viewed home', 'Registered', 20, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/departmental-users', 'GET', '2020-01-09 08:47:45', '2020-01-09 08:47:45', NULL),
(660, 'Viewed home', 'Registered', 20, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/departmental-users', 'GET', '2020-01-09 08:50:43', '2020-01-09 08:50:43', NULL),
(661, 'Viewed home', 'Registered', 20, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/departmental-users', 'GET', '2020-01-09 08:51:41', '2020-01-09 08:51:41', NULL),
(662, 'Viewed home', 'Registered', 20, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/departmental-users', 'GET', '2020-01-09 09:12:33', '2020-01-09 09:12:33', NULL),
(663, 'Viewed home', 'Registered', 20, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/departmental-users', 'GET', '2020-01-09 09:13:08', '2020-01-09 09:13:08', NULL),
(664, 'Viewed home', 'Registered', 20, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/departmental-users', 'GET', '2020-01-09 09:14:28', '2020-01-09 09:14:28', NULL),
(665, 'Viewed home', 'Registered', 20, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/departmental-users', 'GET', '2020-01-09 09:14:53', '2020-01-09 09:14:53', NULL),
(666, 'Viewed departmental-users', 'Registered', 20, 'http://localhost:8000/departmental-users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-09 09:43:59', '2020-01-09 09:43:59', NULL),
(667, 'Logged Out', 'Registered', 20, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/departmental-users', 'POST', '2020-01-09 09:44:21', '2020-01-09 09:44:21', NULL),
(668, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2020-01-09 09:44:28', '2020-01-09 09:44:28', NULL),
(669, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2020-01-09 09:44:29', '2020-01-09 09:44:29', NULL),
(670, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/roles', 'GET', '2020-01-09 09:47:14', '2020-01-09 09:47:14', NULL),
(671, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/roles', 'GET', '2020-01-09 09:47:40', '2020-01-09 09:47:40', NULL),
(672, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2020-01-09 11:31:43', '2020-01-09 11:31:43', NULL),
(673, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'POST', '2020-01-09 11:32:04', '2020-01-09 11:32:04', NULL),
(674, 'Failed Login Attempt', 'Guest', NULL, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2020-01-09 11:32:12', '2020-01-09 11:32:12', NULL),
(675, 'Logged In', 'Registered', 20, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2020-01-09 11:33:48', '2020-01-09 11:33:48', NULL),
(676, 'Viewed home', 'Registered', 20, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2020-01-09 11:33:48', '2020-01-09 11:33:48', NULL),
(677, 'Viewed manage-leave', 'Registered', 20, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-09 11:35:14', '2020-01-09 11:35:14', NULL),
(678, 'Viewed manage-leave', 'Registered', 20, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-09 11:35:51', '2020-01-09 11:35:51', NULL),
(679, 'Viewed leave-records', 'Registered', 20, 'http://localhost:8000/leave-records', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/manage-leave', 'GET', '2020-01-09 11:40:54', '2020-01-09 11:40:54', NULL),
(680, 'Viewed leave-records', 'Registered', 20, 'http://localhost:8000/leave-records', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/manage-leave', 'GET', '2020-01-09 11:41:42', '2020-01-09 11:41:42', NULL),
(681, 'Viewed leave-records', 'Registered', 20, 'http://localhost:8000/leave-records', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/manage-leave', 'GET', '2020-01-09 11:42:59', '2020-01-09 11:42:59', NULL),
(682, 'Viewed leave-records', 'Registered', 20, 'http://localhost:8000/leave-records', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/manage-leave', 'GET', '2020-01-09 11:48:00', '2020-01-09 11:48:00', NULL),
(683, 'Viewed leave-summary', 'Registered', 20, 'http://localhost:8000/leave-summary', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-records', 'GET', '2020-01-09 12:01:54', '2020-01-09 12:01:54', NULL),
(684, 'Logged In', 'Registered', 20, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2020-01-09 16:26:00', '2020-01-09 16:26:00', NULL),
(685, 'Viewed leave-summary', 'Registered', 20, 'http://localhost:8000/leave-summary', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-09 16:26:00', '2020-01-09 16:26:00', NULL),
(686, 'Viewed leave-summary', 'Registered', 20, 'http://localhost:8000/leave-summary', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-09 16:31:57', '2020-01-09 16:31:57', NULL),
(687, 'Viewed leave-summary', 'Registered', 20, 'http://localhost:8000/leave-summary', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-09 16:33:08', '2020-01-09 16:33:08', NULL),
(688, 'Viewed leave-summary', 'Registered', 20, 'http://localhost:8000/leave-summary', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-09 16:37:54', '2020-01-09 16:37:54', NULL),
(689, 'Viewed leave-summary', 'Registered', 20, 'http://localhost:8000/leave-summary', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-summary', 'GET', '2020-01-09 16:38:59', '2020-01-09 16:38:59', NULL),
(690, 'Viewed leave-summary', 'Registered', 20, 'http://localhost:8000/leave-summary', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-summary', 'GET', '2020-01-09 16:39:59', '2020-01-09 16:39:59', NULL),
(691, 'Viewed leave-summary', 'Registered', 20, 'http://localhost:8000/leave-summary', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-summary', 'GET', '2020-01-09 16:42:45', '2020-01-09 16:42:45', NULL),
(692, 'Viewed leave-summary', 'Registered', 20, 'http://localhost:8000/leave-summary', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-summary', 'GET', '2020-01-09 17:06:24', '2020-01-09 17:06:24', NULL),
(693, 'Viewed leave-summary', 'Registered', 20, 'http://localhost:8000/leave-summary', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-09 17:06:55', '2020-01-09 17:06:55', NULL),
(694, 'Viewed leave-summary', 'Registered', 20, 'http://localhost:8000/leave-summary', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-09 17:09:41', '2020-01-09 17:09:41', NULL),
(695, 'Viewed leave-summary', 'Registered', 20, 'http://localhost:8000/leave-summary', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-09 17:10:18', '2020-01-09 17:10:18', NULL),
(696, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2020-01-10 15:45:05', '2020-01-10 15:45:05', NULL),
(697, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2020-01-10 15:45:06', '2020-01-10 15:45:06', NULL),
(698, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-10 15:57:11', '2020-01-10 15:57:11', NULL),
(699, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-10 15:57:17', '2020-01-10 15:57:17', NULL);
INSERT INTO `laravel_logger_activity` (`id`, `description`, `userType`, `userId`, `route`, `ipAddress`, `userAgent`, `locale`, `referer`, `methodType`, `created_at`, `updated_at`, `deleted_at`) VALUES
(700, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2020-01-10 15:58:35', '2020-01-10 15:58:35', NULL),
(701, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2020-01-10 15:59:12', '2020-01-10 15:59:12', NULL),
(702, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2020-01-10 16:37:16', '2020-01-10 16:37:16', NULL),
(703, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2020-01-10 16:38:15', '2020-01-10 16:38:15', NULL),
(704, 'Viewed getTitles/I.T.', 'Registered', 1, 'http://localhost:8000/getTitles/I.T.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2020-01-10 16:38:24', '2020-01-10 16:38:24', NULL),
(705, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2020-01-10 16:42:21', '2020-01-10 16:42:21', NULL),
(706, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2020-01-10 17:42:48', '2020-01-10 17:42:48', NULL),
(707, 'Viewed getTitles/Operations', 'Registered', 1, 'http://localhost:8000/getTitles/Operations', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2020-01-10 17:43:20', '2020-01-10 17:43:20', NULL),
(708, 'Viewed getTitles/Chirundu', 'Registered', 1, 'http://localhost:8000/getTitles/Chirundu', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2020-01-10 17:45:59', '2020-01-10 17:45:59', NULL),
(709, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2020-01-10 17:48:15', '2020-01-10 17:48:15', NULL),
(710, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2020-01-10 17:48:16', '2020-01-10 17:48:16', NULL),
(711, 'Viewed getTitles/Accounts', 'Registered', 1, 'http://localhost:8000/getTitles/Accounts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2020-01-10 17:48:16', '2020-01-10 17:48:16', NULL),
(712, 'Viewed getTitles/Accounts', 'Registered', 1, 'http://localhost:8000/getTitles/Accounts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2020-01-10 17:48:31', '2020-01-10 17:48:31', NULL),
(713, 'Viewed getTitles/Operations', 'Registered', 1, 'http://localhost:8000/getTitles/Operations', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2020-01-10 17:48:35', '2020-01-10 17:48:35', NULL),
(714, 'Viewed getTitles/Beitbridge', 'Registered', 1, 'http://localhost:8000/getTitles/Beitbridge', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2020-01-10 17:48:39', '2020-01-10 17:48:39', NULL),
(715, 'Viewed getTitles/Human%20Resources', 'Registered', 1, 'http://localhost:8000/getTitles/Human%20Resources', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2020-01-10 17:48:45', '2020-01-10 17:48:45', NULL),
(716, 'Viewed jobtitles', 'Registered', 1, 'http://localhost:8000/jobtitles', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-10 17:49:34', '2020-01-10 17:49:34', NULL),
(717, 'Viewed jobtitles', 'Registered', 1, 'http://localhost:8000/jobtitles', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-10 18:05:25', '2020-01-10 18:05:25', NULL),
(718, 'Viewed jobtitles', 'Registered', 1, 'http://localhost:8000/jobtitles', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-10 18:05:57', '2020-01-10 18:05:57', NULL),
(719, 'Viewed jobtitles', 'Registered', 1, 'http://localhost:8000/jobtitles', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-10 18:06:20', '2020-01-10 18:06:20', NULL),
(720, 'Viewed jobtitles', 'Registered', 1, 'http://localhost:8000/jobtitles', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-10 18:06:31', '2020-01-10 18:06:31', NULL),
(721, 'Viewed jobtitles', 'Registered', 1, 'http://localhost:8000/jobtitles', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-10 18:06:37', '2020-01-10 18:06:37', NULL),
(722, 'Viewed jobtitles', 'Registered', 1, 'http://localhost:8000/jobtitles', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-10 18:06:41', '2020-01-10 18:06:41', NULL),
(723, 'Viewed jobtitles', 'Registered', 1, 'http://localhost:8000/jobtitles', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/roles', 'GET', '2020-01-10 18:10:22', '2020-01-10 18:10:22', NULL),
(724, 'Viewed jobtitles/create', 'Registered', 1, 'http://localhost:8000/jobtitles/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/jobtitles', 'GET', '2020-01-10 18:10:57', '2020-01-10 18:10:57', NULL),
(725, 'Viewed jobtitles', 'Registered', 1, 'http://localhost:8000/jobtitles', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/jobtitles/create', 'GET', '2020-01-10 18:11:10', '2020-01-10 18:11:10', NULL),
(726, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2020-01-11 06:18:32', '2020-01-11 06:18:32', NULL),
(727, 'Viewed jobtitles', 'Registered', 1, 'http://localhost:8000/jobtitles', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-11 06:18:33', '2020-01-11 06:18:33', NULL),
(728, 'Viewed leaves/form', 'Registered', 1, 'http://localhost:8000/leaves/form', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-11 06:19:45', '2020-01-11 06:19:45', NULL),
(729, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-11 06:24:42', '2020-01-11 06:24:42', NULL),
(730, 'Viewed leave-pdf', 'Registered', 1, 'http://localhost:8000/leave-pdf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-11 06:27:05', '2020-01-11 06:27:05', NULL),
(731, 'Viewed leave-pdf', 'Registered', 1, 'http://localhost:8000/leave-pdf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-11 06:28:42', '2020-01-11 06:28:42', NULL),
(732, 'Viewed leave-pdf', 'Registered', 1, 'http://localhost:8000/leave-pdf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-11 07:49:07', '2020-01-11 07:49:07', NULL),
(733, 'Viewed leave-pdf', 'Registered', 1, 'http://localhost:8000/leave-pdf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-11 07:50:45', '2020-01-11 07:50:45', NULL),
(734, 'Viewed leave-pdf', 'Registered', 1, 'http://localhost:8000/leave-pdf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-11 07:51:55', '2020-01-11 07:51:55', NULL),
(735, 'Viewed leave-pdf', 'Registered', 1, 'http://localhost:8000/leave-pdf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-11 07:53:48', '2020-01-11 07:53:48', NULL),
(736, 'Viewed leave-pdf', 'Registered', 1, 'http://localhost:8000/leave-pdf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-11 07:54:14', '2020-01-11 07:54:14', NULL),
(737, 'Viewed leave-pdf', 'Registered', 1, 'http://localhost:8000/leave-pdf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-11 07:58:44', '2020-01-11 07:58:44', NULL),
(738, 'Viewed leave-pdf', 'Registered', 1, 'http://localhost:8000/leave-pdf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-11 08:00:06', '2020-01-11 08:00:06', NULL),
(739, 'Viewed leave-pdf', 'Registered', 1, 'http://localhost:8000/leave-pdf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-11 08:01:01', '2020-01-11 08:01:01', NULL),
(740, 'Viewed leave-pdf', 'Registered', 1, 'http://localhost:8000/leave-pdf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-11 08:04:01', '2020-01-11 08:04:01', NULL),
(741, 'Viewed leave-pdf', 'Registered', 1, 'http://localhost:8000/leave-pdf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-11 08:12:07', '2020-01-11 08:12:07', NULL),
(742, 'Viewed leave-pdf', 'Registered', 1, 'http://localhost:8000/leave-pdf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-11 08:15:23', '2020-01-11 08:15:23', NULL),
(743, 'Viewed leave-pdf', 'Registered', 1, 'http://localhost:8000/leave-pdf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-11 08:30:51', '2020-01-11 08:30:51', NULL),
(744, 'Viewed leave-pdf', 'Registered', 1, 'http://localhost:8000/leave-pdf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-11 08:31:19', '2020-01-11 08:31:19', NULL),
(745, 'Viewed leave-pdf', 'Registered', 1, 'http://localhost:8000/leave-pdf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-11 08:39:10', '2020-01-11 08:39:10', NULL),
(746, 'Viewed leave-pdf', 'Registered', 1, 'http://localhost:8000/leave-pdf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-11 08:42:55', '2020-01-11 08:42:55', NULL),
(747, 'Viewed leave-pdf', 'Registered', 1, 'http://localhost:8000/leave-pdf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-11 08:43:42', '2020-01-11 08:43:42', NULL),
(748, 'Viewed leave-pdf', 'Registered', 1, 'http://localhost:8000/leave-pdf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-11 08:43:59', '2020-01-11 08:43:59', NULL),
(749, 'Viewed leave-pdf', 'Registered', 1, 'http://localhost:8000/leave-pdf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-11 08:46:04', '2020-01-11 08:46:04', NULL),
(750, 'Viewed leave-pdf', 'Registered', 1, 'http://localhost:8000/leave-pdf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-11 09:13:06', '2020-01-11 09:13:06', NULL),
(751, 'Viewed leave-pdf', 'Registered', 1, 'http://localhost:8000/leave-pdf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-11 09:13:56', '2020-01-11 09:13:56', NULL),
(752, 'Viewed leave-pdf', 'Registered', 1, 'http://localhost:8000/leave-pdf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-11 09:20:39', '2020-01-11 09:20:39', NULL),
(753, 'Viewed leave-pdf', 'Registered', 1, 'http://localhost:8000/leave-pdf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-11 09:51:50', '2020-01-11 09:51:50', NULL),
(754, 'Viewed leave-pdf', 'Registered', 1, 'http://localhost:8000/leave-pdf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-11 09:56:12', '2020-01-11 09:56:12', NULL),
(755, 'Viewed jobtitles', 'Registered', 1, 'http://localhost:8000/jobtitles', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-11 10:32:43', '2020-01-11 10:32:43', NULL),
(756, 'Viewed jobtitles', 'Registered', 1, 'http://localhost:8000/jobtitles', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-11 10:49:13', '2020-01-11 10:49:13', NULL),
(757, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/jobtitles', 'GET', '2020-01-11 10:49:19', '2020-01-11 10:49:19', NULL),
(758, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-11 10:49:22', '2020-01-11 10:49:22', NULL),
(759, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-11 10:50:21', '2020-01-11 10:50:21', NULL),
(760, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-11 10:53:23', '2020-01-11 10:53:23', NULL),
(761, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-11 10:55:37', '2020-01-11 10:55:37', NULL),
(762, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-11 10:56:16', '2020-01-11 10:56:16', NULL),
(763, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-11 10:56:51', '2020-01-11 10:56:51', NULL),
(764, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-11 10:57:21', '2020-01-11 10:57:21', NULL),
(765, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-11 10:58:51', '2020-01-11 10:58:51', NULL),
(766, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-11 11:06:27', '2020-01-11 11:06:27', NULL),
(767, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-11 11:07:02', '2020-01-11 11:07:02', NULL),
(768, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-11 11:09:26', '2020-01-11 11:09:26', NULL),
(769, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-11 11:27:59', '2020-01-11 11:27:59', NULL),
(770, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-11 11:30:20', '2020-01-11 11:30:20', NULL),
(771, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-11 11:32:54', '2020-01-11 11:32:54', NULL),
(772, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-11 11:33:20', '2020-01-11 11:33:20', NULL),
(773, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-11 11:33:51', '2020-01-11 11:33:51', NULL),
(774, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-11 11:37:43', '2020-01-11 11:37:43', NULL),
(775, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-11 11:38:55', '2020-01-11 11:38:55', NULL),
(776, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-11 11:46:20', '2020-01-11 11:46:20', NULL),
(777, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-11 11:55:18', '2020-01-11 11:55:18', NULL),
(778, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-11 11:58:39', '2020-01-11 11:58:39', NULL),
(779, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-11 11:58:47', '2020-01-11 11:58:47', NULL),
(780, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-11 11:59:06', '2020-01-11 11:59:06', NULL),
(781, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-11 12:01:51', '2020-01-11 12:01:51', NULL),
(782, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-11 12:02:01', '2020-01-11 12:02:01', NULL),
(783, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-11 12:10:29', '2020-01-11 12:10:29', NULL),
(784, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-11 12:11:02', '2020-01-11 12:11:02', NULL),
(785, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-11 12:11:11', '2020-01-11 12:11:11', NULL),
(786, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-11 12:16:17', '2020-01-11 12:16:17', NULL),
(787, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-11 12:16:20', '2020-01-11 12:16:20', NULL),
(788, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-11 12:18:45', '2020-01-11 12:18:45', NULL),
(789, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-11 12:18:54', '2020-01-11 12:18:54', NULL),
(790, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-11 12:19:17', '2020-01-11 12:19:17', NULL),
(791, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-11 12:23:04', '2020-01-11 12:23:04', NULL),
(792, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2020-01-12 06:36:13', '2020-01-12 06:36:13', NULL),
(793, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2020-01-12 06:36:14', '2020-01-12 06:36:14', NULL),
(794, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-12 06:37:57', '2020-01-12 06:37:57', NULL),
(795, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-12 06:38:28', '2020-01-12 06:38:28', NULL),
(796, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-12 06:40:44', '2020-01-12 06:40:44', NULL),
(797, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-12 06:41:29', '2020-01-12 06:41:29', NULL),
(798, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-12 06:52:34', '2020-01-12 06:52:34', NULL),
(799, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-12 07:01:14', '2020-01-12 07:01:14', NULL),
(800, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-12 07:06:44', '2020-01-12 07:06:44', NULL),
(801, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-12 07:07:11', '2020-01-12 07:07:11', NULL),
(802, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-12 07:07:27', '2020-01-12 07:07:27', NULL),
(803, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-12 07:21:08', '2020-01-12 07:21:08', NULL),
(804, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2020-01-12 07:21:10', '2020-01-12 07:21:10', NULL),
(805, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-12 07:22:11', '2020-01-12 07:22:11', NULL),
(806, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-12 07:22:28', '2020-01-12 07:22:28', NULL),
(807, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2020-01-12 07:31:16', '2020-01-12 07:31:16', NULL),
(808, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-12 07:31:26', '2020-01-12 07:31:26', NULL),
(809, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-12 07:32:03', '2020-01-12 07:32:03', NULL),
(810, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-12 07:32:08', '2020-01-12 07:32:08', NULL),
(811, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-12 08:08:16', '2020-01-12 08:08:16', NULL),
(812, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-12 08:08:42', '2020-01-12 08:08:42', NULL),
(813, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2020-01-12 08:08:49', '2020-01-12 08:08:49', NULL),
(814, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-12 08:10:00', '2020-01-12 08:10:00', NULL),
(815, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-12 08:10:19', '2020-01-12 08:10:19', NULL),
(816, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-12 08:10:24', '2020-01-12 08:10:24', NULL),
(817, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2020-01-12 08:11:15', '2020-01-12 08:11:15', NULL),
(818, 'Viewed leaves/4', 'Registered', 1, 'http://localhost:8000/leaves/4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-12 08:11:19', '2020-01-12 08:11:19', NULL),
(819, 'Viewed leaves/4', 'Registered', 1, 'http://localhost:8000/leaves/4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-12 08:12:26', '2020-01-12 08:12:26', NULL),
(820, 'Viewed leaves/4', 'Registered', 1, 'http://localhost:8000/leaves/4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-12 08:13:02', '2020-01-12 08:13:02', NULL),
(821, 'Viewed leaves/4', 'Registered', 1, 'http://localhost:8000/leaves/4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-12 08:13:44', '2020-01-12 08:13:44', NULL),
(822, 'Viewed leaves/4', 'Registered', 1, 'http://localhost:8000/leaves/4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-12 08:14:54', '2020-01-12 08:14:54', NULL),
(823, 'Viewed leaves/4', 'Registered', 1, 'http://localhost:8000/leaves/4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-12 08:16:18', '2020-01-12 08:16:18', NULL),
(824, 'Viewed leaves/4', 'Registered', 1, 'http://localhost:8000/leaves/4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-12 08:16:36', '2020-01-12 08:16:36', NULL),
(825, 'Viewed leaves/4', 'Registered', 1, 'http://localhost:8000/leaves/4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-12 08:16:58', '2020-01-12 08:16:58', NULL),
(826, 'Viewed leaves/4', 'Registered', 1, 'http://localhost:8000/leaves/4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-12 08:17:39', '2020-01-12 08:17:39', NULL),
(827, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/4', 'GET', '2020-01-12 08:17:59', '2020-01-12 08:17:59', NULL),
(828, 'Viewed leaves/14', 'Registered', 1, 'http://localhost:8000/leaves/14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-12 08:18:04', '2020-01-12 08:18:04', NULL),
(829, 'Viewed leaves/14', 'Registered', 1, 'http://localhost:8000/leaves/14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-12 08:19:10', '2020-01-12 08:19:10', NULL),
(830, 'Viewed leaves/14', 'Registered', 1, 'http://localhost:8000/leaves/14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-12 08:20:19', '2020-01-12 08:20:19', NULL),
(831, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/14', 'GET', '2020-01-12 08:48:58', '2020-01-12 08:48:58', NULL),
(832, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-12 08:49:06', '2020-01-12 08:49:06', NULL),
(833, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-12 08:49:30', '2020-01-12 08:49:30', NULL),
(834, 'Viewed leaves/49', 'Registered', 1, 'http://localhost:8000/leaves/49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2020-01-12 08:49:36', '2020-01-12 08:49:36', NULL),
(835, 'Viewed leaves/49', 'Registered', 1, 'http://localhost:8000/leaves/49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-12 08:58:13', '2020-01-12 08:58:13', NULL),
(836, 'Viewed leaves/49', 'Registered', 1, 'http://localhost:8000/leaves/49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-12 09:03:54', '2020-01-12 09:03:54', NULL),
(837, 'Viewed leaves/49', 'Registered', 1, 'http://localhost:8000/leaves/49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-12 09:04:57', '2020-01-12 09:04:57', NULL),
(838, 'Viewed leaves/49', 'Registered', 1, 'http://localhost:8000/leaves/49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-12 09:08:27', '2020-01-12 09:08:27', NULL),
(839, 'Viewed leave-pdf/49', 'Registered', 1, 'http://localhost:8000/leave-pdf/49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/49', 'GET', '2020-01-12 09:08:33', '2020-01-12 09:08:33', NULL),
(840, 'Viewed leave-pdf/49', 'Registered', 1, 'http://localhost:8000/leave-pdf/49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/49', 'GET', '2020-01-12 09:08:47', '2020-01-12 09:08:47', NULL),
(841, 'Viewed leave-pdf/49', 'Registered', 1, 'http://localhost:8000/leave-pdf/49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/49', 'GET', '2020-01-12 09:08:53', '2020-01-12 09:08:53', NULL),
(842, 'Viewed leave-pdf/49', 'Registered', 1, 'http://localhost:8000/leave-pdf/49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-12 09:13:21', '2020-01-12 09:13:21', NULL),
(843, 'Viewed leave-pdf/49', 'Registered', 1, 'http://localhost:8000/leave-pdf/49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-12 09:13:24', '2020-01-12 09:13:24', NULL),
(844, 'Viewed leaves/49', 'Registered', 1, 'http://localhost:8000/leaves/49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-12 09:13:30', '2020-01-12 09:13:30', NULL),
(845, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2020-01-12 11:39:56', '2020-01-12 11:39:56', NULL),
(846, 'Viewed logs', 'Registered', 1, 'http://localhost:8000/logs', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-12 11:39:57', '2020-01-12 11:39:57', NULL),
(847, 'Viewed logs', 'Registered', 1, 'http://localhost:8000/logs', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-12 11:41:14', '2020-01-12 11:41:14', NULL),
(848, 'Viewed activity', 'Registered', 1, 'http://localhost:8000/activity', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/logs', 'GET', '2020-01-12 11:41:20', '2020-01-12 11:41:20', NULL),
(849, 'Viewed leave-records', 'Registered', 1, 'http://localhost:8000/leave-records', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/activity', 'GET', '2020-01-12 11:41:45', '2020-01-12 11:41:45', NULL),
(850, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-records', 'GET', '2020-01-12 12:03:15', '2020-01-12 12:03:15', NULL),
(851, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-12 12:06:32', '2020-01-12 12:06:32', NULL),
(852, 'Viewed leaves/approve/46', 'Registered', 1, 'http://localhost:8000/leaves/approve/46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/manage-leave', 'GET', '2020-01-12 12:06:55', '2020-01-12 12:06:55', NULL),
(853, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/manage-leave', 'GET', '2020-01-12 12:07:02', '2020-01-12 12:07:02', NULL),
(854, 'Viewed leaves/approve/45', 'Registered', 1, 'http://localhost:8000/leaves/approve/45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/manage-leave', 'GET', '2020-01-12 12:10:35', '2020-01-12 12:10:35', NULL),
(855, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/manage-leave', 'GET', '2020-01-12 12:10:36', '2020-01-12 12:10:36', NULL),
(856, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/manage-leave', 'GET', '2020-01-12 12:14:36', '2020-01-12 12:14:36', NULL),
(857, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-12 12:14:41', '2020-01-12 12:14:41', NULL),
(858, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-12 12:15:30', '2020-01-12 12:15:30', NULL),
(859, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-12 12:24:12', '2020-01-12 12:24:12', NULL),
(860, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-12 12:24:16', '2020-01-12 12:24:16', NULL),
(861, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-12 12:24:32', '2020-01-12 12:24:32', NULL),
(862, 'Viewed leaves/50', 'Registered', 1, 'http://localhost:8000/leaves/50', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2020-01-12 12:24:34', '2020-01-12 12:24:34', NULL),
(863, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/50', 'GET', '2020-01-12 12:24:48', '2020-01-12 12:24:48', NULL),
(864, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-12 12:24:51', '2020-01-12 12:24:51', NULL),
(865, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-12 12:25:06', '2020-01-12 12:25:06', NULL),
(866, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-12 12:25:38', '2020-01-12 12:25:38', NULL),
(867, 'Viewed leaves/51', 'Registered', 1, 'http://localhost:8000/leaves/51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2020-01-12 12:25:39', '2020-01-12 12:25:39', NULL),
(868, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/51', 'GET', '2020-01-12 12:28:10', '2020-01-12 12:28:10', NULL),
(869, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-12 12:28:14', '2020-01-12 12:28:14', NULL),
(870, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-12 12:28:30', '2020-01-12 12:28:30', NULL),
(871, 'Viewed leaves/52', 'Registered', 1, 'http://localhost:8000/leaves/52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2020-01-12 12:28:31', '2020-01-12 12:28:31', NULL),
(872, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/52', 'GET', '2020-01-12 12:29:29', '2020-01-12 12:29:29', NULL),
(873, 'Viewed leave-records', 'Registered', 1, 'http://localhost:8000/leave-records', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-12 12:30:29', '2020-01-12 12:30:29', NULL),
(874, 'Viewed leave-records', 'Registered', 1, 'http://localhost:8000/leave-records', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-12 12:47:19', '2020-01-12 12:47:19', NULL),
(875, 'Viewed leave-administration', 'Registered', 1, 'http://localhost:8000/leave-administration', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-records', 'GET', '2020-01-12 13:09:18', '2020-01-12 13:09:18', NULL),
(876, 'Viewed leave-administration', 'Registered', 1, 'http://localhost:8000/leave-administration', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-records', 'GET', '2020-01-12 13:10:35', '2020-01-12 13:10:35', NULL),
(877, 'Viewed leave-administration', 'Registered', 1, 'http://localhost:8000/leave-administration', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-records', 'GET', '2020-01-12 13:11:06', '2020-01-12 13:11:06', NULL),
(878, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2020-01-13 06:57:55', '2020-01-13 06:57:55', NULL);
INSERT INTO `laravel_logger_activity` (`id`, `description`, `userType`, `userId`, `route`, `ipAddress`, `userAgent`, `locale`, `referer`, `methodType`, `created_at`, `updated_at`, `deleted_at`) VALUES
(879, 'Viewed leave-administration', 'Registered', 1, 'http://localhost:8000/leave-administration', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 06:57:56', '2020-01-13 06:57:56', NULL),
(880, 'Viewed leave-administration', 'Registered', 1, 'http://localhost:8000/leave-administration', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 06:58:24', '2020-01-13 06:58:24', NULL),
(881, 'Viewed leave-administration', 'Registered', 1, 'http://localhost:8000/leave-administration', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 06:59:35', '2020-01-13 06:59:35', NULL),
(882, 'Viewed leave-administration', 'Registered', 1, 'http://localhost:8000/leave-administration', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 07:01:37', '2020-01-13 07:01:37', NULL),
(883, 'Viewed leave-administration', 'Registered', 1, 'http://localhost:8000/leave-administration', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 07:05:29', '2020-01-13 07:05:29', NULL),
(884, 'Viewed leave-administration', 'Registered', 1, 'http://localhost:8000/leave-administration', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 07:07:20', '2020-01-13 07:07:20', NULL),
(885, 'Viewed leave-administration', 'Registered', 1, 'http://localhost:8000/leave-administration', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 07:08:29', '2020-01-13 07:08:29', NULL),
(886, 'Viewed leave-administration', 'Registered', 1, 'http://localhost:8000/leave-administration', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 07:08:58', '2020-01-13 07:08:58', NULL),
(887, 'Viewed leave-administration', 'Registered', 1, 'http://localhost:8000/leave-administration', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 07:09:30', '2020-01-13 07:09:30', NULL),
(888, 'Viewed leave-administration', 'Registered', 1, 'http://localhost:8000/leave-administration', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 07:09:40', '2020-01-13 07:09:40', NULL),
(889, 'Viewed leave-administration', 'Registered', 1, 'http://localhost:8000/leave-administration', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 07:10:52', '2020-01-13 07:10:52', NULL),
(890, 'Viewed leave-administration', 'Registered', 1, 'http://localhost:8000/leave-administration', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 07:11:11', '2020-01-13 07:11:11', NULL),
(891, 'Viewed leave-administration', 'Registered', 1, 'http://localhost:8000/leave-administration', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 07:14:39', '2020-01-13 07:14:39', NULL),
(892, 'Viewed leave-administration', 'Registered', 1, 'http://localhost:8000/leave-administration', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 07:15:22', '2020-01-13 07:15:22', NULL),
(893, 'Viewed leave-administration', 'Registered', 1, 'http://localhost:8000/leave-administration', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 07:23:03', '2020-01-13 07:23:03', NULL),
(894, 'Viewed leave-administration', 'Registered', 1, 'http://localhost:8000/leave-administration', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 07:23:34', '2020-01-13 07:23:34', NULL),
(895, 'Viewed leave-administration', 'Registered', 1, 'http://localhost:8000/leave-administration', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 07:23:57', '2020-01-13 07:23:57', NULL),
(896, 'Viewed leave-administration', 'Registered', 1, 'http://localhost:8000/leave-administration', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 07:24:15', '2020-01-13 07:24:15', NULL),
(897, 'Viewed leave-administration', 'Registered', 1, 'http://localhost:8000/leave-administration', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 07:24:28', '2020-01-13 07:24:28', NULL),
(898, 'Viewed leave-administration', 'Registered', 1, 'http://localhost:8000/leave-administration', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 07:25:27', '2020-01-13 07:25:27', NULL),
(899, 'Viewed leave-administration', 'Registered', 1, 'http://localhost:8000/leave-administration', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 07:26:21', '2020-01-13 07:26:21', NULL),
(900, 'Viewed leave-administration', 'Registered', 1, 'http://localhost:8000/leave-administration', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 07:27:01', '2020-01-13 07:27:01', NULL),
(901, 'Viewed leave-administration', 'Registered', 1, 'http://localhost:8000/leave-administration', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 07:34:17', '2020-01-13 07:34:17', NULL),
(902, 'Viewed leave-administration', 'Registered', 1, 'http://localhost:8000/leave-administration', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 07:34:39', '2020-01-13 07:34:39', NULL),
(903, 'Viewed leave-administration', 'Registered', 1, 'http://localhost:8000/leave-administration', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 07:48:30', '2020-01-13 07:48:30', NULL),
(904, 'Viewed leave-administration', 'Registered', 1, 'http://localhost:8000/leave-administration', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 07:55:16', '2020-01-13 07:55:16', NULL),
(905, 'Viewed leave-administration', 'Registered', 1, 'http://localhost:8000/leave-administration', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 07:56:08', '2020-01-13 07:56:08', NULL),
(906, 'Viewed leave-administration', 'Registered', 1, 'http://localhost:8000/leave-administration', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 08:48:53', '2020-01-13 08:48:53', NULL),
(907, 'Viewed departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-13 09:07:51', '2020-01-13 09:07:51', NULL),
(908, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments', 'GET', '2020-01-13 09:07:59', '2020-01-13 09:07:59', NULL),
(909, 'Viewed leaves/5', 'Registered', 1, 'http://localhost:8000/leaves/5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-13 09:22:04', '2020-01-13 09:22:04', NULL),
(910, 'Viewed leave-pdf/5', 'Registered', 1, 'http://localhost:8000/leave-pdf/5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/5', 'GET', '2020-01-13 09:22:10', '2020-01-13 09:22:10', NULL),
(911, 'Viewed leave-pdf/5', 'Registered', 1, 'http://localhost:8000/leave-pdf/5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/5', 'GET', '2020-01-13 09:22:18', '2020-01-13 09:22:18', NULL),
(912, 'Viewed leaves/26', 'Registered', 1, 'http://localhost:8000/leaves/26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-13 09:23:26', '2020-01-13 09:23:26', NULL),
(913, 'Viewed leave-pdf/26', 'Registered', 1, 'http://localhost:8000/leave-pdf/26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/26', 'GET', '2020-01-13 09:23:30', '2020-01-13 09:23:30', NULL),
(914, 'Viewed leave-pdf/26', 'Registered', 1, 'http://localhost:8000/leave-pdf/26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/26', 'GET', '2020-01-13 09:23:31', '2020-01-13 09:23:31', NULL),
(915, 'Viewed leaves/13', 'Registered', 1, 'http://localhost:8000/leaves/13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-13 09:24:30', '2020-01-13 09:24:30', NULL),
(916, 'Viewed leave-pdf/13', 'Registered', 1, 'http://localhost:8000/leave-pdf/13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/13', 'GET', '2020-01-13 09:24:33', '2020-01-13 09:24:33', NULL),
(917, 'Viewed leave-pdf/13', 'Registered', 1, 'http://localhost:8000/leave-pdf/13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/13', 'GET', '2020-01-13 09:24:35', '2020-01-13 09:24:35', NULL),
(918, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/13', 'GET', '2020-01-13 09:29:55', '2020-01-13 09:29:55', NULL),
(919, 'Viewed departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-13 09:32:29', '2020-01-13 09:32:29', NULL),
(920, 'Viewed departments/1/edit', 'Registered', 1, 'http://localhost:8000/departments/1/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments', 'GET', '2020-01-13 09:32:35', '2020-01-13 09:32:35', NULL),
(921, 'Viewed departments/1/edit', 'Registered', 1, 'http://localhost:8000/departments/1/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments', 'GET', '2020-01-13 09:34:57', '2020-01-13 09:34:57', NULL),
(922, 'Viewed departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/1/edit', 'GET', '2020-01-13 09:35:21', '2020-01-13 09:35:21', NULL),
(923, 'Viewed departments/create', 'Registered', 1, 'http://localhost:8000/departments/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments', 'GET', '2020-01-13 09:35:25', '2020-01-13 09:35:25', NULL),
(924, 'Viewed departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'GET', '2020-01-13 09:36:36', '2020-01-13 09:36:36', NULL),
(925, 'Viewed departments/create', 'Registered', 1, 'http://localhost:8000/departments/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments', 'GET', '2020-01-13 09:36:45', '2020-01-13 09:36:45', NULL),
(926, 'Created departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'POST', '2020-01-13 09:36:56', '2020-01-13 09:36:56', NULL),
(927, 'Viewed departments/create', 'Registered', 1, 'http://localhost:8000/departments/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'GET', '2020-01-13 09:36:57', '2020-01-13 09:36:57', NULL),
(928, 'Viewed departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'GET', '2020-01-13 09:37:15', '2020-01-13 09:37:15', NULL),
(929, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments', 'GET', '2020-01-13 09:37:28', '2020-01-13 09:37:28', NULL),
(930, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2020-01-13 09:37:33', '2020-01-13 09:37:33', NULL),
(931, 'Viewed getTitles/Accounts', 'Registered', 1, 'http://localhost:8000/getTitles/Accounts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2020-01-13 09:38:08', '2020-01-13 09:38:08', NULL),
(932, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2020-01-13 09:45:54', '2020-01-13 09:45:54', NULL),
(933, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2020-01-13 09:48:10', '2020-01-13 09:48:10', NULL),
(934, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2020-01-13 09:48:11', '2020-01-13 09:48:11', NULL),
(935, 'Viewed departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2020-01-13 09:48:22', '2020-01-13 09:48:22', NULL),
(936, 'Viewed departments/1/edit', 'Registered', 1, 'http://localhost:8000/departments/1/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments', 'GET', '2020-01-13 09:48:27', '2020-01-13 09:48:27', NULL),
(937, 'Edited departments/1', 'Registered', 1, 'http://localhost:8000/departments/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/1/edit', 'PUT', '2020-01-13 09:48:49', '2020-01-13 09:48:49', NULL),
(938, 'Viewed departments/1/edit', 'Registered', 1, 'http://localhost:8000/departments/1/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/1/edit', 'GET', '2020-01-13 09:48:49', '2020-01-13 09:48:49', NULL),
(939, 'Viewed departments/1', 'Registered', 1, 'http://localhost:8000/departments/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/1/edit', 'GET', '2020-01-13 09:49:39', '2020-01-13 09:49:39', NULL),
(940, 'Viewed departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/1', 'GET', '2020-01-13 09:49:42', '2020-01-13 09:49:42', NULL),
(941, 'Viewed departments/1/edit', 'Registered', 1, 'http://localhost:8000/departments/1/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments', 'GET', '2020-01-13 09:49:46', '2020-01-13 09:49:46', NULL),
(942, 'Edited departments/1', 'Registered', 1, 'http://localhost:8000/departments/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/1/edit', 'PUT', '2020-01-13 09:50:34', '2020-01-13 09:50:34', NULL),
(943, 'Viewed departments/1/edit', 'Registered', 1, 'http://localhost:8000/departments/1/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/1/edit', 'GET', '2020-01-13 09:50:35', '2020-01-13 09:50:35', NULL),
(944, 'Viewed departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/1/edit', 'GET', '2020-01-13 09:50:39', '2020-01-13 09:50:39', NULL),
(945, 'Viewed departments/create', 'Registered', 1, 'http://localhost:8000/departments/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments', 'GET', '2020-01-13 10:12:32', '2020-01-13 10:12:32', NULL),
(946, 'Created departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'POST', '2020-01-13 10:13:16', '2020-01-13 10:13:16', NULL),
(947, 'Viewed departments', 'Registered', 1, 'http://localhost:8000/departments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/departments/create', 'GET', '2020-01-13 10:13:17', '2020-01-13 10:13:17', NULL),
(948, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2020-01-13 14:16:12', '2020-01-13 14:16:12', NULL),
(949, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 14:16:15', '2020-01-13 14:16:15', NULL),
(950, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 14:19:56', '2020-01-13 14:19:56', NULL),
(951, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 14:22:25', '2020-01-13 14:22:25', NULL),
(952, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 14:35:38', '2020-01-13 14:35:38', NULL),
(953, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 14:40:08', '2020-01-13 14:40:08', NULL),
(954, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/manage-leave', 'POST', '2020-01-13 14:43:09', '2020-01-13 14:43:09', NULL),
(955, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2020-01-13 14:43:14', '2020-01-13 14:43:14', NULL),
(956, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2020-01-13 14:43:14', '2020-01-13 14:43:14', NULL),
(957, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-13 14:43:19', '2020-01-13 14:43:19', NULL),
(958, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-13 14:44:23', '2020-01-13 14:44:23', NULL),
(959, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-13 14:45:02', '2020-01-13 14:45:02', NULL),
(960, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-13 14:45:58', '2020-01-13 14:45:58', NULL),
(961, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-13 14:46:54', '2020-01-13 14:46:54', NULL),
(962, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-13 14:47:04', '2020-01-13 14:47:04', NULL),
(963, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-13 15:01:22', '2020-01-13 15:01:22', NULL),
(964, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2020-01-13 20:13:09', '2020-01-13 20:13:09', NULL),
(965, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 20:13:09', '2020-01-13 20:13:09', NULL),
(966, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 20:26:43', '2020-01-13 20:26:43', NULL),
(967, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 20:27:30', '2020-01-13 20:27:30', NULL),
(968, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 20:35:57', '2020-01-13 20:35:57', NULL),
(969, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 20:45:45', '2020-01-13 20:45:45', NULL),
(970, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 20:46:19', '2020-01-13 20:46:19', NULL),
(971, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 20:54:47', '2020-01-13 20:54:47', NULL),
(972, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 20:57:36', '2020-01-13 20:57:36', NULL),
(973, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 21:06:08', '2020-01-13 21:06:08', NULL),
(974, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 21:08:22', '2020-01-13 21:08:22', NULL),
(975, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 21:09:30', '2020-01-13 21:09:30', NULL),
(976, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 21:09:46', '2020-01-13 21:09:46', NULL),
(977, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 21:10:53', '2020-01-13 21:10:53', NULL),
(978, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 21:11:19', '2020-01-13 21:11:19', NULL),
(979, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 21:24:26', '2020-01-13 21:24:26', NULL),
(980, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-13 21:26:45', '2020-01-13 21:26:45', NULL),
(981, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2020-01-14 05:42:23', '2020-01-14 05:42:23', NULL),
(982, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2020-01-14 05:42:24', '2020-01-14 05:42:24', NULL),
(983, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-14 05:42:33', '2020-01-14 05:42:33', NULL),
(984, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-14 05:55:15', '2020-01-14 05:55:15', NULL),
(985, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/manage-leave', 'POST', '2020-01-14 05:56:56', '2020-01-14 05:56:56', NULL),
(986, 'Logged In', 'Registered', 20, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2020-01-14 05:57:00', '2020-01-14 05:57:00', NULL),
(987, 'Viewed home', 'Registered', 20, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2020-01-14 05:57:01', '2020-01-14 05:57:01', NULL),
(988, 'Viewed manage-leave', 'Registered', 20, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-14 05:57:10', '2020-01-14 05:57:10', NULL),
(989, 'Logged Out', 'Registered', 20, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/manage-leave', 'POST', '2020-01-14 06:07:34', '2020-01-14 06:07:34', NULL),
(990, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2020-01-14 06:07:38', '2020-01-14 06:07:38', NULL),
(991, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2020-01-14 06:07:39', '2020-01-14 06:07:39', NULL),
(992, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-14 06:07:44', '2020-01-14 06:07:44', NULL),
(993, 'Viewed users/3/edit', 'Registered', 1, 'http://localhost:8000/users/3/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2020-01-14 06:07:50', '2020-01-14 06:07:50', NULL),
(994, 'Edited users/3', 'Registered', 1, 'http://localhost:8000/users/3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/3/edit', 'PUT', '2020-01-14 06:07:59', '2020-01-14 06:07:59', NULL),
(995, 'Viewed users/3/edit', 'Registered', 1, 'http://localhost:8000/users/3/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/3/edit', 'GET', '2020-01-14 06:08:00', '2020-01-14 06:08:00', NULL),
(996, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/3/edit', 'GET', '2020-01-14 06:08:31', '2020-01-14 06:08:31', NULL),
(997, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/3/edit', 'GET', '2020-01-14 06:11:16', '2020-01-14 06:11:16', NULL),
(998, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/3/edit', 'GET', '2020-01-14 06:21:40', '2020-01-14 06:21:40', NULL),
(999, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'POST', '2020-01-14 06:22:36', '2020-01-14 06:22:36', NULL),
(1000, 'Logged In', 'Registered', 20, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2020-01-14 06:22:49', '2020-01-14 06:22:49', NULL),
(1001, 'Viewed home', 'Registered', 20, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2020-01-14 06:22:50', '2020-01-14 06:22:50', NULL),
(1002, 'Viewed leaves', 'Registered', 20, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-14 06:24:24', '2020-01-14 06:24:24', NULL),
(1003, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 06:24:31', '2020-01-14 06:24:31', NULL),
(1004, 'Created leaves', 'Registered', 20, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-14 06:25:06', '2020-01-14 06:25:06', NULL),
(1005, 'Viewed leaves/53', 'Registered', 20, 'http://localhost:8000/leaves/53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2020-01-14 06:25:12', '2020-01-14 06:25:12', NULL),
(1006, 'Viewed leaves', 'Registered', 20, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/53', 'GET', '2020-01-14 06:25:27', '2020-01-14 06:25:27', NULL),
(1007, 'Logged Out', 'Registered', 20, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'POST', '2020-01-14 06:25:57', '2020-01-14 06:25:57', NULL),
(1008, 'Logged In', 'Registered', 3, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2020-01-14 06:27:29', '2020-01-14 06:27:29', NULL),
(1009, 'Viewed home', 'Registered', 3, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2020-01-14 06:27:30', '2020-01-14 06:27:30', NULL),
(1010, 'Viewed home', 'Registered', 3, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2020-01-14 06:30:13', '2020-01-14 06:30:13', NULL),
(1011, 'Viewed home', 'Registered', 3, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2020-01-14 06:31:34', '2020-01-14 06:31:34', NULL),
(1012, 'Viewed manage-leave', 'Registered', 3, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-14 06:31:49', '2020-01-14 06:31:49', NULL),
(1013, 'Logged Out', 'Registered', 3, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/manage-leave', 'POST', '2020-01-14 07:42:33', '2020-01-14 07:42:33', NULL),
(1014, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2020-01-14 07:42:42', '2020-01-14 07:42:42', NULL),
(1015, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2020-01-14 07:42:43', '2020-01-14 07:42:43', NULL),
(1016, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-14 07:42:56', '2020-01-14 07:42:56', NULL),
(1017, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2020-01-14 07:43:11', '2020-01-14 07:43:11', NULL),
(1018, 'Viewed getTitles/Directors', 'Registered', 1, 'http://localhost:8000/getTitles/Directors', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2020-01-14 07:47:09', '2020-01-14 07:47:09', NULL),
(1019, 'Viewed jobtitles', 'Registered', 1, 'http://localhost:8000/jobtitles', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2020-01-14 07:47:24', '2020-01-14 07:47:24', NULL),
(1020, 'Viewed jobtitles/create', 'Registered', 1, 'http://localhost:8000/jobtitles/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/jobtitles', 'GET', '2020-01-14 07:47:30', '2020-01-14 07:47:30', NULL),
(1021, 'Created jobtitles', 'Registered', 1, 'http://localhost:8000/jobtitles', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/jobtitles/create', 'POST', '2020-01-14 07:47:47', '2020-01-14 07:47:47', NULL),
(1022, 'Viewed jobtitles', 'Registered', 1, 'http://localhost:8000/jobtitles', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/jobtitles/create', 'GET', '2020-01-14 07:47:48', '2020-01-14 07:47:48', NULL),
(1023, 'Viewed jobtitles/create', 'Registered', 1, 'http://localhost:8000/jobtitles/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/jobtitles', 'GET', '2020-01-14 07:47:53', '2020-01-14 07:47:53', NULL),
(1024, 'Created jobtitles', 'Registered', 1, 'http://localhost:8000/jobtitles', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/jobtitles/create', 'POST', '2020-01-14 07:48:13', '2020-01-14 07:48:13', NULL),
(1025, 'Viewed jobtitles', 'Registered', 1, 'http://localhost:8000/jobtitles', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/jobtitles/create', 'GET', '2020-01-14 07:48:15', '2020-01-14 07:48:15', NULL),
(1026, 'Viewed jobtitles/create', 'Registered', 1, 'http://localhost:8000/jobtitles/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/jobtitles', 'GET', '2020-01-14 07:48:18', '2020-01-14 07:48:18', NULL),
(1027, 'Created jobtitles', 'Registered', 1, 'http://localhost:8000/jobtitles', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/jobtitles/create', 'POST', '2020-01-14 07:48:35', '2020-01-14 07:48:35', NULL),
(1028, 'Viewed jobtitles', 'Registered', 1, 'http://localhost:8000/jobtitles', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/jobtitles/create', 'GET', '2020-01-14 07:48:35', '2020-01-14 07:48:35', NULL),
(1029, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/jobtitles', 'GET', '2020-01-14 07:48:41', '2020-01-14 07:48:41', NULL),
(1030, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2020-01-14 07:48:45', '2020-01-14 07:48:45', NULL),
(1031, 'Viewed getTitles/Directors', 'Registered', 1, 'http://localhost:8000/getTitles/Directors', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2020-01-14 07:49:14', '2020-01-14 07:49:14', NULL),
(1032, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2020-01-14 07:49:54', '2020-01-14 07:49:54', NULL),
(1033, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2020-01-14 07:49:55', '2020-01-14 07:49:55', NULL),
(1034, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'POST', '2020-01-14 07:50:53', '2020-01-14 07:50:53', NULL),
(1035, 'Logged In', 'Registered', 20, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2020-01-14 07:50:57', '2020-01-14 07:50:57', NULL),
(1036, 'Viewed home', 'Registered', 20, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2020-01-14 07:50:58', '2020-01-14 07:50:58', NULL),
(1037, 'Viewed manage-leave', 'Registered', 20, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-14 07:51:10', '2020-01-14 07:51:10', NULL),
(1038, 'Viewed home', 'Registered', 20, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/manage-leave', 'GET', '2020-01-14 07:51:30', '2020-01-14 07:51:30', NULL),
(1039, 'Viewed manage-leave', 'Registered', 20, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-14 07:51:37', '2020-01-14 07:51:37', NULL),
(1040, 'Viewed leaves', 'Registered', 20, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/manage-leave', 'GET', '2020-01-14 07:51:47', '2020-01-14 07:51:47', NULL),
(1041, 'Viewed leaves/create', 'Registered', 20, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 07:51:50', '2020-01-14 07:51:50', NULL),
(1042, 'Created leaves', 'Registered', 20, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-14 07:52:07', '2020-01-14 07:52:07', NULL),
(1043, 'Viewed leaves/54', 'Registered', 20, 'http://localhost:8000/leaves/54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2020-01-14 07:52:16', '2020-01-14 07:52:16', NULL),
(1044, 'Viewed leaves', 'Registered', 20, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/54', 'GET', '2020-01-14 07:53:21', '2020-01-14 07:53:21', NULL),
(1045, 'Viewed manage-leave', 'Registered', 20, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 07:53:26', '2020-01-14 07:53:26', NULL),
(1046, 'Viewed manage-leave', 'Registered', 20, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 07:59:23', '2020-01-14 07:59:23', NULL),
(1047, 'Viewed manage-leave', 'Registered', 20, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 07:59:35', '2020-01-14 07:59:35', NULL),
(1048, 'Viewed manage-leave', 'Registered', 20, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 08:01:37', '2020-01-14 08:01:37', NULL),
(1049, 'Viewed manage-leave', 'Registered', 20, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 08:03:03', '2020-01-14 08:03:03', NULL),
(1050, 'Viewed manage-leave', 'Registered', 20, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 09:26:54', '2020-01-14 09:26:54', NULL);
INSERT INTO `laravel_logger_activity` (`id`, `description`, `userType`, `userId`, `route`, `ipAddress`, `userAgent`, `locale`, `referer`, `methodType`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1051, 'Viewed manage-leave', 'Registered', 20, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 09:27:46', '2020-01-14 09:27:46', NULL),
(1052, 'Viewed manage-leave', 'Registered', 20, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 09:28:36', '2020-01-14 09:28:36', NULL),
(1053, 'Viewed manage-leave', 'Registered', 20, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 09:29:16', '2020-01-14 09:29:16', NULL),
(1054, 'Viewed manage-leave', 'Registered', 20, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 09:33:09', '2020-01-14 09:33:09', NULL),
(1055, 'Viewed manage-leave', 'Registered', 20, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 09:36:59', '2020-01-14 09:36:59', NULL),
(1056, 'Viewed manage-leave', 'Registered', 20, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 09:37:14', '2020-01-14 09:37:14', NULL),
(1057, 'Viewed manage-leave', 'Registered', 20, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 09:37:57', '2020-01-14 09:37:57', NULL),
(1058, 'Logged Out', 'Registered', 20, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/manage-leave', 'POST', '2020-01-14 09:43:02', '2020-01-14 09:43:02', NULL),
(1059, 'Logged In', 'Registered', 22, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2020-01-14 09:43:36', '2020-01-14 09:43:36', NULL),
(1060, 'Viewed home', 'Registered', 22, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2020-01-14 09:43:36', '2020-01-14 09:43:36', NULL),
(1061, 'Viewed manage-leave', 'Registered', 22, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-14 09:43:47', '2020-01-14 09:43:47', NULL),
(1062, 'Viewed manage-leave', 'Registered', 22, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-14 09:43:59', '2020-01-14 09:43:59', NULL),
(1063, 'Viewed manage-leave', 'Registered', 22, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-14 09:53:36', '2020-01-14 09:53:36', NULL),
(1064, 'Viewed manage-leave', 'Registered', 22, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-14 09:53:47', '2020-01-14 09:53:47', NULL),
(1065, 'Viewed leaves/21', 'Registered', 22, 'http://localhost:8000/leaves/21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/manage-leave', 'GET', '2020-01-14 09:55:11', '2020-01-14 09:55:11', NULL),
(1066, 'Viewed leaves', 'Registered', 22, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/21', 'GET', '2020-01-14 09:55:17', '2020-01-14 09:55:17', NULL),
(1067, 'Viewed leaves/21', 'Registered', 22, 'http://localhost:8000/leaves/21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/manage-leave', 'GET', '2020-01-14 09:55:30', '2020-01-14 09:55:30', NULL),
(1068, 'Viewed leaves/21', 'Registered', 22, 'http://localhost:8000/leaves/21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/manage-leave', 'GET', '2020-01-14 09:55:41', '2020-01-14 09:55:41', NULL),
(1069, 'Viewed manage-leave', 'Registered', 22, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-14 09:59:48', '2020-01-14 09:59:48', NULL),
(1070, 'Viewed manage-leave', 'Registered', 22, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-14 10:00:33', '2020-01-14 10:00:33', NULL),
(1071, 'Viewed leaves', 'Registered', 22, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-14 10:11:25', '2020-01-14 10:11:25', NULL),
(1072, 'Viewed leaves', 'Registered', 22, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-14 10:15:10', '2020-01-14 10:15:10', NULL),
(1073, 'Viewed leaves', 'Registered', 22, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-14 10:16:56', '2020-01-14 10:16:56', NULL),
(1074, 'Viewed leaves', 'Registered', 22, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-01-14 10:18:13', '2020-01-14 10:18:13', NULL),
(1075, 'Viewed leaves/create', 'Registered', 22, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 10:20:13', '2020-01-14 10:20:13', NULL),
(1076, 'Viewed manage-leave', 'Registered', 22, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 10:20:57', '2020-01-14 10:20:57', NULL),
(1077, 'Viewed manage-leave', 'Registered', 22, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 10:26:27', '2020-01-14 10:26:27', NULL),
(1078, 'Viewed manage-leave', 'Registered', 22, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-14 10:32:00', '2020-01-14 10:32:00', NULL),
(1079, 'Viewed manage-leave', 'Registered', 22, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-14 10:32:21', '2020-01-14 10:32:21', NULL),
(1080, 'Viewed manage-leave', 'Registered', 22, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 10:32:57', '2020-01-14 10:32:57', NULL),
(1081, 'Logged In', 'Registered', 22, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2020-01-14 12:40:09', '2020-01-14 12:40:09', NULL),
(1082, 'Viewed manage-leave', 'Registered', 22, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-14 12:40:10', '2020-01-14 12:40:10', NULL),
(1083, 'Viewed manage-leave', 'Registered', 22, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-14 12:40:23', '2020-01-14 12:40:23', NULL),
(1084, 'Viewed manage-leave', 'Registered', 22, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-14 12:41:07', '2020-01-14 12:41:07', NULL),
(1085, 'Logged Out', 'Registered', 22, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/manage-leave', 'POST', '2020-01-14 12:43:59', '2020-01-14 12:43:59', NULL),
(1086, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2020-01-14 12:44:05', '2020-01-14 12:44:05', NULL),
(1087, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2020-01-14 12:44:06', '2020-01-14 12:44:06', NULL),
(1088, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-14 12:44:14', '2020-01-14 12:44:14', NULL),
(1089, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2020-01-14 12:46:51', '2020-01-14 12:46:51', NULL),
(1090, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2020-01-14 12:51:54', '2020-01-14 12:51:54', NULL),
(1091, 'Viewed users/4/edit', 'Registered', 1, 'http://localhost:8000/users/4/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2020-01-14 12:51:58', '2020-01-14 12:51:58', NULL),
(1092, 'Viewed users/4/edit', 'Registered', 1, 'http://localhost:8000/users/4/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2020-01-14 12:53:13', '2020-01-14 12:53:13', NULL),
(1093, 'Viewed getTitles/Accounts', 'Registered', 1, 'http://localhost:8000/getTitles/Accounts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/4/edit', 'GET', '2020-01-14 12:53:22', '2020-01-14 12:53:22', NULL),
(1094, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/4/edit', 'GET', '2020-01-14 12:53:26', '2020-01-14 12:53:26', NULL),
(1095, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2020-01-14 12:56:55', '2020-01-14 12:56:55', NULL),
(1096, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2020-01-14 12:58:46', '2020-01-14 12:58:46', NULL),
(1097, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2020-01-14 12:59:13', '2020-01-14 12:59:13', NULL),
(1098, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2020-01-14 12:59:28', '2020-01-14 12:59:28', NULL),
(1099, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2020-01-14 13:00:20', '2020-01-14 13:00:20', NULL),
(1100, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2020-01-14 13:00:58', '2020-01-14 13:00:58', NULL),
(1101, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2020-01-14 13:01:13', '2020-01-14 13:01:13', NULL),
(1102, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 13:01:35', '2020-01-14 13:01:35', NULL),
(1103, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-14 13:04:56', '2020-01-14 13:04:56', NULL),
(1104, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 13:16:35', '2020-01-14 13:16:35', NULL),
(1105, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 13:16:50', '2020-01-14 13:16:50', NULL),
(1106, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 13:17:24', '2020-01-14 13:17:24', NULL),
(1107, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 13:17:43', '2020-01-14 13:17:43', NULL),
(1108, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 13:18:09', '2020-01-14 13:18:09', NULL),
(1109, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 13:18:37', '2020-01-14 13:18:37', NULL),
(1110, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 13:18:56', '2020-01-14 13:18:56', NULL),
(1111, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 13:19:18', '2020-01-14 13:19:18', NULL),
(1112, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 13:19:32', '2020-01-14 13:19:32', NULL),
(1113, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 13:19:49', '2020-01-14 13:19:49', NULL),
(1114, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 13:22:07', '2020-01-14 13:22:07', NULL),
(1115, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 13:23:13', '2020-01-14 13:23:13', NULL),
(1116, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 13:25:12', '2020-01-14 13:25:12', NULL),
(1117, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 13:25:25', '2020-01-14 13:25:25', NULL),
(1118, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 13:26:18', '2020-01-14 13:26:18', NULL),
(1119, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 13:29:06', '2020-01-14 13:29:06', NULL),
(1120, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-14 13:29:18', '2020-01-14 13:29:18', NULL),
(1121, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 13:30:20', '2020-01-14 13:30:20', NULL),
(1122, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-14 13:30:37', '2020-01-14 13:30:37', NULL),
(1123, 'Viewed leaves/55', 'Registered', 1, 'http://localhost:8000/leaves/55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2020-01-14 13:30:46', '2020-01-14 13:30:46', NULL),
(1124, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/55', 'GET', '2020-01-14 13:31:02', '2020-01-14 13:31:02', NULL),
(1125, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 13:31:07', '2020-01-14 13:31:07', NULL),
(1126, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-14 13:31:23', '2020-01-14 13:31:23', NULL),
(1127, 'Viewed leaves/56', 'Registered', 1, 'http://localhost:8000/leaves/56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2020-01-14 13:31:25', '2020-01-14 13:31:25', NULL),
(1128, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/56', 'GET', '2020-01-14 13:32:06', '2020-01-14 13:32:06', NULL),
(1129, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/56', 'GET', '2020-01-14 13:32:28', '2020-01-14 13:32:28', NULL),
(1130, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/56', 'GET', '2020-01-14 13:33:13', '2020-01-14 13:33:13', NULL),
(1131, 'Viewed manage-leave', 'Registered', 1, 'http://localhost:8000/manage-leave', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-14 13:33:27', '2020-01-14 13:33:27', NULL),
(1132, 'Viewed leave-administration', 'Registered', 1, 'http://localhost:8000/leave-administration', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/manage-leave', 'GET', '2020-01-14 13:33:39', '2020-01-14 13:33:39', NULL),
(1133, 'Viewed leave-summary', 'Registered', 1, 'http://localhost:8000/leave-summary', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-administration', 'GET', '2020-01-14 13:34:07', '2020-01-14 13:34:07', NULL),
(1134, 'Viewed leave-records', 'Registered', 1, 'http://localhost:8000/leave-records', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-summary', 'GET', '2020-01-14 13:34:44', '2020-01-14 13:34:44', NULL),
(1135, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'POST', '2020-01-24 06:27:55', '2020-01-24 06:27:55', NULL),
(1136, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/', 'GET', '2020-01-24 06:27:56', '2020-01-24 06:27:56', NULL),
(1137, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2020-01-24 14:09:03', '2020-01-24 14:09:03', NULL),
(1138, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-01-24 14:09:03', '2020-01-24 14:09:03', NULL),
(1139, 'Viewed leave-administration', 'Registered', 1, 'http://localhost:8000/leave-administration', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2020-01-24 14:09:14', '2020-01-24 14:09:14', NULL),
(1140, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-administration', 'GET', '2020-01-24 14:10:02', '2020-01-24 14:10:02', NULL),
(1141, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leave-administration', 'GET', '2020-01-24 14:10:14', '2020-01-24 14:10:14', NULL),
(1142, 'Viewed leaves/create', 'Registered', 1, 'http://localhost:8000/leaves/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves', 'GET', '2020-01-24 14:10:27', '2020-01-24 14:10:27', NULL),
(1143, 'Created leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'POST', '2020-01-24 14:11:01', '2020-01-24 14:11:01', NULL),
(1144, 'Viewed leaves/57', 'Registered', 1, 'http://localhost:8000/leaves/57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/create', 'GET', '2020-01-24 14:11:21', '2020-01-24 14:11:21', NULL),
(1145, 'Viewed leaves', 'Registered', 1, 'http://localhost:8000/leaves', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'en-US,en;q=0.5', 'http://localhost:8000/leaves/57', 'GET', '2020-01-24 14:22:42', '2020-01-24 14:22:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `paynumber` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_of_leave` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `days_taken` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `applied_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_by` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_when` timestamp NULL DEFAULT NULL,
  `applier_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approver_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `paynumber`, `type_of_leave`, `days_taken`, `date_from`, `date_to`, `applied_by`, `department`, `address`, `mobile`, `status`, `approved_by`, `approved_when`, `applier_name`, `approver_name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '25', 'Annual', '4', '2019-10-14', '2019-10-18', '25', 'I.T.', '7 Tashinga Gardens, 12 Browning Ave, Strathaven, Harare', '0773418009', NULL, NULL, NULL, NULL, NULL, '2019-10-16 07:40:01', '2019-10-15 12:41:58', '2019-10-16 07:40:01'),
(2, '25', 'Maternity', '10', '2019-10-15', '2019-10-13', '25', 'I.T.', '7 Tashinga Gardens, 12 Browning Ave, Strathaven, Harare', '0773418009', NULL, NULL, NULL, NULL, NULL, '2019-10-16 07:40:43', '2019-10-15 12:57:37', '2019-10-16 07:40:43'),
(3, '25', 'Sick', '3', '2019-10-15', '2019-10-16', '25', 'I.T.', '7 Tashinga Gardens, 12 Browning Ave, Strathaven, Harare', '0773418009', NULL, NULL, NULL, NULL, NULL, '2019-10-16 07:41:18', '2019-10-15 14:04:01', '2019-10-16 07:41:18'),
(4, '25', 'Maternity', '5', '2019-10-15', '2019-10-14', '25', 'I.T.', '7 Tashinga Gardens, 12 Browning Ave, Strathaven, Harare', '0773418009', NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-15 14:05:29', '2019-10-15 14:05:29'),
(5, '25', 'Sick', '10', '2019-10-15', '2019-10-14', '25', 'I.T.', '7 Tashinga Gardens, 12 Browning Ave, Strathaven, Harare', '0773418009', NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-15 14:41:56', '2019-10-15 14:41:56'),
(6, '25', 'Cash in Lieu of Leave (CILL)', '15', '2019-10-15', '2019-10-08', '25', 'I.T.', '7 Tashinga Gardens, 12 Browning Ave, Strathaven, Harare', '0773418009', NULL, NULL, NULL, NULL, NULL, '2019-10-30 06:57:30', '2019-10-15 14:42:31', '2019-10-30 06:57:30'),
(7, '25', 'Maternity', '0.5', '2019-10-08', '2019-10-15', '25', 'I.T.', '7 Tashinga Gardens, 12 Browning Ave, Strathaven, Harare', '0773418009', NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-15 15:38:58', '2019-10-15 15:38:58'),
(8, '25', 'Off Day', '7', '2019-10-09', '2019-10-16', '25', 'I.T.', '7 Tashinga Gardens, 12 Browning Ave, Strathaven, Harare', '0773418009', '1', '25', '2019-10-17 10:03:38', 'Vincent H Guyo', 'Vincent H Guyo', NULL, '2019-10-15 15:40:07', '2019-10-21 12:04:37'),
(9, '25', 'Maternity', '0.5', '2019-10-15', '2019-10-15', '25', 'I.T.', '7 Tashinga Gardens, 12 Browning Ave, Strathaven, Harare', '0773418009', '1', '25', '2019-10-16 07:44:20', NULL, 'Vincent H Guyo', NULL, '2019-10-15 15:40:40', '2019-10-16 07:44:20'),
(10, '247', 'Annual', '3', '2019-10-21', '2019-10-24', '123', 'Testing Department', '12 Pangu pangu', '0778442115', '1', '123', '2019-10-18 06:37:20', NULL, 'Testing Manager', NULL, '2019-10-18 06:34:44', '2019-10-18 06:37:20'),
(11, '269', 'Annual', '1', '2019-10-24', '2019-10-25', '123', 'Testing Department', '13 Pamba pedu futi', '0912345677', '1', '123', '2019-10-21 13:08:45', 'Test Number', 'Testing Manager', NULL, '2019-10-21 12:29:54', '2019-10-21 13:08:45'),
(12, '269', 'Annual', '3', '2019-10-30', '2019-11-01', '123', 'Testing Department', '13 Pamba pedu futi', '0912345677', NULL, NULL, NULL, 'Test Number', NULL, NULL, '2019-10-30 06:17:13', '2019-10-30 06:17:13'),
(13, '269', 'Annual', '4', '2019-10-30', '2019-11-04', '123', 'Testing Department', '13 Pamba pedu futi', '0912345677', NULL, NULL, NULL, 'Test Number', NULL, NULL, '2019-10-30 06:43:46', '2019-10-30 06:43:46'),
(14, '247', 'Annual', '2', '2020-01-13', '2020-01-15', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-11 10:50:22', '2020-01-11 10:50:22'),
(15, '247', 'Annual', '2', '2020-01-13', '2020-01-15', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-11 10:53:24', '2020-01-11 10:53:24'),
(16, '247', 'Annual', '2', '2020-01-13', '2020-01-15', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-11 10:55:38', '2020-01-11 10:55:38'),
(17, '247', 'Annual', '2', '2020-01-13', '2020-01-15', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-11 10:56:16', '2020-01-11 10:56:16'),
(18, '247', 'Annual', '2', '2020-01-13', '2020-01-15', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-11 10:56:51', '2020-01-11 10:56:51'),
(19, '247', 'Annual', '2', '2020-01-13', '2020-01-15', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-11 10:57:22', '2020-01-11 10:57:22'),
(20, '247', 'Annual', '2', '2020-01-13', '2020-01-15', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-11 10:58:52', '2020-01-11 10:58:52'),
(21, '247', 'Annual', '2', '2020-01-13', '2020-01-15', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-11 11:06:28', '2020-01-11 11:06:28'),
(22, '247', 'Annual', '2', '2020-01-13', '2020-01-15', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-11 11:07:02', '2020-01-11 11:07:02'),
(23, '247', 'Annual', '2', '2020-01-13', '2020-01-15', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-11 11:09:27', '2020-01-11 11:09:27'),
(24, '247', 'Annual', '2', '2020-01-13', '2020-01-15', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-11 11:28:00', '2020-01-11 11:28:00'),
(25, '247', 'Annual', '2', '2020-01-13', '2020-01-15', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-11 11:30:20', '2020-01-11 11:30:20'),
(26, '247', 'Study', '3', '2020-01-14', '2020-01-17', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-11 11:33:51', '2020-01-11 11:33:51'),
(27, '247', 'Study', '3', '2020-01-14', '2020-01-17', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-11 11:37:43', '2020-01-11 11:37:43'),
(28, '247', 'Study', '3', '2020-01-14', '2020-01-17', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-11 11:38:55', '2020-01-11 11:38:55'),
(29, '247', 'Study', '3', '2020-01-14', '2020-01-17', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-11 11:46:21', '2020-01-11 11:46:21'),
(30, '247', 'Study', '3', '2020-01-14', '2020-01-17', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-11 11:55:19', '2020-01-11 11:55:19'),
(31, '247', 'Maternity', '7', '2020-01-13', '2020-01-20', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-11 11:59:06', '2020-01-11 11:59:06'),
(32, '247', 'Maternity', '7', '2020-01-13', '2020-01-20', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-11 12:01:51', '2020-01-11 12:01:51'),
(33, '247', 'Maternity', '7', '2020-01-13', '2020-01-20', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-11 12:02:02', '2020-01-11 12:02:02'),
(34, '247', 'Maternity', '7', '2020-01-13', '2020-01-20', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-11 12:10:30', '2020-01-11 12:10:30'),
(35, '247', 'Maternity', '7', '2020-01-13', '2020-01-20', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-11 12:11:04', '2020-01-11 12:11:04'),
(36, '247', 'Maternity', '7', '2020-01-13', '2020-01-20', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-11 12:11:12', '2020-01-11 12:11:12'),
(37, '247', 'Maternity', '7', '2020-01-13', '2020-01-20', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-11 12:16:17', '2020-01-11 12:16:17'),
(38, '247', 'Maternity', '7', '2020-01-13', '2020-01-20', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-11 12:16:21', '2020-01-11 12:16:21'),
(39, '247', 'Maternity', '7', '2020-01-13', '2020-01-20', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-11 12:18:46', '2020-01-11 12:18:46'),
(40, '247', 'Maternity', '7', '2020-01-13', '2020-01-20', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-11 12:18:54', '2020-01-11 12:18:54'),
(41, '247', 'Annual', '3', '2020-01-17', '2020-01-21', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-12 07:22:12', '2020-01-12 07:22:12'),
(42, '247', 'Annual', '3', '2020-01-17', '2020-01-21', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-12 07:22:29', '2020-01-12 07:22:29'),
(43, '247', 'Sick', '2', '2020-02-21', '2020-02-25', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-12 07:32:03', '2020-01-12 07:32:03'),
(44, '247', 'Sick', '2', '2020-02-21', '2020-02-25', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-12 07:32:08', '2020-01-12 07:32:08'),
(45, '247', 'Sick', '2', '2020-02-21', '2020-02-25', '25', 'Testing Department', '12 Pangu pangu', '0778442115', '1', '25', '2020-01-12 12:10:35', 'Testing Dep User', 'Vincent H Guyo', NULL, '2020-01-12 08:08:18', '2020-01-12 12:10:35'),
(46, '247', 'Sick', '2', '2020-02-21', '2020-02-25', '25', 'Testing Department', '12 Pangu pangu', '0778442115', '1', '25', '2020-01-12 12:06:55', 'Testing Dep User', 'Vincent H Guyo', NULL, '2020-01-12 08:08:43', '2020-01-12 12:06:55'),
(47, '247', 'Maternity', '3', '2020-01-15', '2020-01-17', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-12 08:10:20', '2020-01-12 08:10:20'),
(48, '247', 'Maternity', '3', '2020-01-15', '2020-01-17', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-12 08:10:25', '2020-01-12 08:10:25'),
(49, '247', 'Maternity', '3', '2020-01-21', '2020-01-23', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-12 08:49:31', '2020-01-12 08:49:31'),
(50, '247', 'Sick', '7', '2020-01-13', '2020-01-20', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-12 12:24:32', '2020-01-12 12:24:32'),
(51, '247', 'Off Day', '7', '2020-01-13', '2020-01-20', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-12 12:25:38', '2020-01-12 12:25:38'),
(52, '247', 'Off Day', '6', '2020-01-13', '2020-01-20', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-12 12:28:31', '2020-01-12 12:28:31'),
(53, '123', 'Annual', '4', '2020-01-14', '2020-01-17', '123', 'Testing Department', '16 Same road', '0778445126', NULL, NULL, NULL, 'Testing Manager', NULL, NULL, '2020-01-14 06:25:06', '2020-01-14 06:25:06'),
(54, '123', 'Off Day', '2', '2020-01-15', '2020-01-16', '123', 'Testing Department', '16 Same road', '0778445126', NULL, NULL, NULL, 'Testing Manager', NULL, NULL, '2020-01-14 07:52:08', '2020-01-14 07:52:08'),
(55, '247', 'Annual', '0.5', '2020-01-14', '2020-01-14', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-14 13:30:37', '2020-01-14 13:30:37'),
(56, '247', 'Annual', '1', '2020-01-16', '2020-01-16', '25', 'Testing Department', '12 Pangu pangu', '0778442115', NULL, NULL, NULL, 'Testing Dep User', NULL, NULL, '2020-01-14 13:31:23', '2020-01-14 13:31:23'),
(57, '269', 'Annual', '6', '2020-01-24', '2020-01-31', '25', 'Testing Department', '13 Pamba pedu futi', '0912345677', NULL, NULL, NULL, 'Test Number', NULL, NULL, '2020-01-24 14:11:02', '2020-01-24 14:11:02');

-- --------------------------------------------------------

--
-- Table structure for table `leavetypes`
--

CREATE TABLE `leavetypes` (
  `id` int(10) UNSIGNED NOT NULL,
  `leave_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leave_desc` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leavetypes`
--

INSERT INTO `leavetypes` (`id`, `leave_type`, `leave_desc`, `created_at`, `updated_at`) VALUES
(1, 'Annual', 'The normal leave type, shown on the payslip as days owing.', '2019-09-04 23:04:58', '2019-09-04 23:04:58'),
(2, 'Sick', 'Leave someone takes due to sickness.', '2019-09-04 23:05:31', '2019-09-04 23:05:31'),
(3, 'Maternity', 'Maternity leave taken by female employees.', '2019-09-04 23:06:12', '2019-09-04 23:06:12'),
(4, 'Cash in Lieu of Leave (CILL)', 'An employee trades their leave days for money from Whelson.', '2019-09-04 23:08:01', '2019-09-04 23:08:01'),
(5, 'Off Day', 'Only applies to drivers, days which accumulate per month.', '2019-09-04 23:08:49', '2019-09-04 23:08:49'),
(6, 'Compassionate', 'Leave taken due to any misfortune to your spouse or near family of any sort', '2020-01-10 15:47:40', NULL),
(7, 'Study ', 'Leave taken by someone when they want to pursue their studies', '2020-01-10 15:47:40', NULL);

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
(17, '2014_10_12_000000_create_users_table', 1),
(18, '2014_10_12_100000_create_password_resets_table', 1),
(19, '2016_01_15_105324_create_roles_table', 1),
(20, '2016_01_15_114412_create_role_user_table', 1),
(21, '2016_01_26_115212_create_permissions_table', 1),
(22, '2016_01_26_115523_create_permission_role_table', 1),
(23, '2016_02_09_132439_create_permission_user_table', 1),
(24, '2017_03_09_082449_create_social_logins_table', 1),
(25, '2017_03_09_082526_create_activations_table', 1),
(26, '2017_03_20_213554_create_themes_table', 1),
(27, '2017_03_21_042918_create_profiles_table', 1),
(28, '2017_11_04_103444_create_laravel_logger_activity_table', 1),
(29, '2017_12_09_070937_create_two_step_auth_table', 1),
(30, '2019_02_19_032636_create_laravel_blocker_types_table', 1),
(31, '2019_02_19_045158_create_laravel_blocker_table', 1),
(32, '2019_08_19_000000_create_failed_jobs_table', 1),
(33, '2019_10_15_080207_create_departments_table', 2),
(34, '2019_10_15_083449_create_leaves_table', 2),
(35, '2020_01_10_180714_create_job_titles_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `model`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Can View Users', 'view.users', 'Can view users', 'Permission', '2019-10-15 05:38:56', '2019-10-15 05:38:56', NULL),
(2, 'Can Create Users', 'create.users', 'Can create new users', 'Permission', '2019-10-15 05:38:56', '2019-10-15 05:38:56', NULL),
(3, 'Can Edit Users', 'edit.users', 'Can edit users', 'Permission', '2019-10-15 05:38:56', '2019-10-15 05:38:56', NULL),
(4, 'Can Delete Users', 'delete.users', 'Can delete users', 'Permission', '2019-10-15 05:38:56', '2019-10-15 05:38:56', NULL),
(5, 'Approve Leave', 'approve.leave', 'Enables a manager to approve Leaves', 'Permission', '2019-10-16 08:00:29', '2019-10-16 08:00:29', NULL),
(6, 'Reject Leave', 'reject.leave', 'Allows manager to reject', 'Permission', '2019-10-16 08:02:04', '2019-10-16 08:02:04', NULL),
(7, 'Create Department', 'create.department', 'Creating departments', 'Permission', '2019-10-16 08:03:37', '2019-10-16 08:03:37', NULL),
(8, 'Delete Leave Records', 'delete.leaves', 'Terminate Leave records', 'Permission', '2019-10-16 08:06:48', '2019-10-16 08:06:48', NULL),
(9, 'Create Job Title', 'job.title.create', 'Ability to create job titles', 'Permission', '2020-01-10 18:08:15', '2020-01-10 18:08:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(26, 1, 1, '2020-01-10 18:09:51', '2020-01-10 18:09:51', NULL),
(27, 2, 1, '2020-01-10 18:09:52', '2020-01-10 18:09:52', NULL),
(28, 3, 1, '2020-01-10 18:09:52', '2020-01-10 18:09:52', NULL),
(29, 4, 1, '2020-01-10 18:09:52', '2020-01-10 18:09:52', NULL),
(30, 5, 1, '2020-01-10 18:09:53', '2020-01-10 18:09:53', NULL),
(31, 6, 1, '2020-01-10 18:09:53', '2020-01-10 18:09:53', NULL),
(32, 7, 1, '2020-01-10 18:09:53', '2020-01-10 18:09:53', NULL),
(33, 8, 1, '2020-01-10 18:09:53', '2020-01-10 18:09:53', NULL),
(34, 9, 1, '2020-01-10 18:09:53', '2020-01-10 18:09:53', NULL),
(35, 1, 4, '2020-01-10 18:10:11', '2020-01-10 18:10:11', NULL),
(36, 2, 4, '2020-01-10 18:10:12', '2020-01-10 18:10:12', NULL),
(37, 3, 4, '2020-01-10 18:10:12', '2020-01-10 18:10:12', NULL),
(38, 5, 4, '2020-01-10 18:10:14', '2020-01-10 18:10:14', NULL),
(39, 6, 4, '2020-01-10 18:10:14', '2020-01-10 18:10:14', NULL),
(40, 7, 4, '2020-01-10 18:10:14', '2020-01-10 18:10:14', NULL),
(41, 9, 4, '2020-01-10 18:10:14', '2020-01-10 18:10:14', NULL),
(42, 1, 5, '2020-01-13 21:29:01', '2020-01-13 21:29:01', NULL),
(43, 2, 5, '2020-01-13 21:29:01', '2020-01-13 21:29:01', NULL),
(44, 3, 5, '2020-01-13 21:29:01', '2020-01-13 21:29:01', NULL),
(45, 4, 5, '2020-01-13 21:29:01', '2020-01-13 21:29:01', NULL),
(46, 5, 5, '2020-01-13 21:29:01', '2020-01-13 21:29:01', NULL),
(47, 6, 5, '2020-01-13 21:29:01', '2020-01-13 21:29:01', NULL),
(48, 7, 5, '2020-01-13 21:29:01', '2020-01-13 21:29:01', NULL),
(49, 9, 5, '2020-01-13 21:29:01', '2020-01-13 21:29:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `theme_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `twitter_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `theme_id`, `location`, `bio`, `twitter_username`, `github_username`, `avatar`, `avatar_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, '2019-10-15 05:39:02', '2019-10-15 05:39:02'),
(2, 2, 1, NULL, NULL, NULL, NULL, NULL, 0, '2019-10-15 05:43:44', '2019-10-15 05:43:44'),
(3, 3, 1, NULL, NULL, NULL, NULL, NULL, 0, '2019-10-16 08:08:46', '2019-10-16 08:08:46'),
(4, 4, 1, NULL, NULL, NULL, NULL, NULL, 0, '2019-10-16 08:22:05', '2019-10-16 08:22:05'),
(5, 5, 1, NULL, NULL, NULL, NULL, NULL, 0, '2019-10-16 08:29:43', '2019-10-16 08:29:43'),
(6, 6, 1, NULL, NULL, NULL, NULL, NULL, 0, '2019-10-16 08:40:25', '2019-10-16 08:40:25'),
(7, 7, 1, NULL, NULL, NULL, NULL, NULL, 0, '2019-10-16 08:53:43', '2019-10-16 08:53:43'),
(8, 8, 1, NULL, NULL, NULL, NULL, NULL, 0, '2019-10-16 08:57:10', '2019-10-16 08:57:10'),
(9, 9, 1, NULL, NULL, NULL, NULL, NULL, 0, '2019-10-16 08:59:25', '2019-10-16 08:59:25'),
(10, 10, 1, NULL, NULL, NULL, NULL, NULL, 0, '2019-10-16 09:00:49', '2019-10-16 09:00:49'),
(11, 11, 1, NULL, NULL, NULL, NULL, NULL, 0, '2019-10-16 09:02:41', '2019-10-16 09:02:41'),
(12, 12, 1, NULL, NULL, NULL, NULL, NULL, 0, '2019-10-16 09:43:16', '2019-10-16 09:43:16'),
(13, 13, 1, NULL, NULL, NULL, NULL, NULL, 0, '2019-10-16 09:45:50', '2019-10-16 09:45:50'),
(14, 14, 1, NULL, NULL, NULL, NULL, NULL, 0, '2019-10-16 09:48:13', '2019-10-16 09:48:13'),
(15, 15, 1, NULL, NULL, NULL, NULL, NULL, 0, '2019-10-16 09:49:39', '2019-10-16 09:49:39'),
(16, 16, 1, NULL, NULL, NULL, NULL, NULL, 0, '2019-10-16 09:52:10', '2019-10-16 09:52:10'),
(17, 17, 1, NULL, NULL, NULL, NULL, NULL, 0, '2019-10-16 09:56:01', '2019-10-16 09:56:01'),
(18, 18, 1, NULL, NULL, NULL, NULL, NULL, 0, '2019-10-17 10:21:11', '2019-10-17 10:21:11'),
(19, 19, 1, NULL, NULL, NULL, NULL, NULL, 0, '2019-10-17 10:28:39', '2019-10-17 10:28:39'),
(20, 20, 1, NULL, NULL, NULL, NULL, NULL, 0, '2019-10-17 10:31:19', '2019-10-17 10:31:19'),
(21, 21, 1, NULL, NULL, NULL, NULL, NULL, 0, '2020-01-13 09:48:10', '2020-01-13 09:48:10'),
(22, 22, 1, NULL, NULL, NULL, NULL, NULL, 0, '2020-01-14 07:49:55', '2020-01-14 07:49:55');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `level`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin', 'Admin Role', 5, '2019-10-15 05:38:56', '2019-10-15 05:38:56', NULL),
(2, 'User', 'user', 'User Role', 1, '2019-10-15 05:38:56', '2019-10-15 05:38:56', NULL),
(3, 'Unverified', 'unverified', 'Unverified Role', 0, '2019-10-15 05:38:56', '2019-10-15 05:38:56', NULL),
(4, 'Manager', 'manager', 'Role for Managers and assistant managers', 4, '2019-10-16 08:05:25', '2019-10-16 08:05:25', NULL),
(5, 'Director', 'director', 'Role for all the 3 Directors', 5, '2020-01-13 21:29:01', '2020-01-13 21:29:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 2, 2, '2019-10-15 05:43:44', '2019-10-15 05:43:44', NULL),
(3, 1, 1, '2019-10-15 05:59:51', '2019-10-15 05:59:51', NULL),
(5, 4, 4, '2019-10-16 08:22:05', '2019-10-16 08:22:05', NULL),
(6, 4, 5, '2019-10-16 08:29:43', '2019-10-16 08:29:43', NULL),
(7, 4, 6, '2019-10-16 08:40:26', '2019-10-16 08:40:26', NULL),
(8, 4, 7, '2019-10-16 08:53:43', '2019-10-16 08:53:43', NULL),
(9, 4, 8, '2019-10-16 08:57:10', '2019-10-16 08:57:10', NULL),
(10, 4, 9, '2019-10-16 08:59:25', '2019-10-16 08:59:25', NULL),
(11, 4, 10, '2019-10-16 09:00:49', '2019-10-16 09:00:49', NULL),
(12, 4, 11, '2019-10-16 09:02:41', '2019-10-16 09:02:41', NULL),
(13, 4, 12, '2019-10-16 09:43:16', '2019-10-16 09:43:16', NULL),
(14, 4, 13, '2019-10-16 09:45:50', '2019-10-16 09:45:50', NULL),
(15, 4, 14, '2019-10-16 09:48:13', '2019-10-16 09:48:13', NULL),
(16, 4, 15, '2019-10-16 09:49:39', '2019-10-16 09:49:39', NULL),
(17, 4, 16, '2019-10-16 09:52:10', '2019-10-16 09:52:10', NULL),
(18, 4, 17, '2019-10-16 09:56:01', '2019-10-16 09:56:01', NULL),
(19, 2, 18, '2019-10-17 10:21:11', '2019-10-17 10:21:11', NULL),
(20, 2, 19, '2019-10-17 10:28:39', '2019-10-17 10:28:39', NULL),
(21, 4, 20, '2019-10-17 10:31:19', '2019-10-17 10:31:19', NULL),
(22, 4, 21, '2020-01-13 09:48:10', '2020-01-13 09:48:10', NULL),
(23, 5, 3, NULL, NULL, NULL),
(24, 5, 22, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_logins`
--

CREATE TABLE `social_logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `taggable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `name`, `link`, `notes`, `status`, `taggable_type`, `taggable_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Default', 'null', NULL, 1, 'theme', 1, '2019-10-15 05:38:57', '2019-10-15 05:38:59', NULL),
(2, 'Darkly', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/darkly/bootstrap.min.css', NULL, 1, 'theme', 2, '2019-10-15 05:38:57', '2019-10-15 05:38:59', NULL),
(3, 'Cyborg', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/cyborg/bootstrap.min.css', NULL, 1, 'theme', 3, '2019-10-15 05:38:57', '2019-10-15 05:38:59', NULL),
(4, 'Cosmo', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/cosmo/bootstrap.min.css', NULL, 1, 'theme', 4, '2019-10-15 05:38:57', '2019-10-15 05:38:59', NULL),
(5, 'Cerulean', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/cerulean/bootstrap.min.css', NULL, 1, 'theme', 5, '2019-10-15 05:38:57', '2019-10-15 05:38:59', NULL),
(6, 'Flatly', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/flatly/bootstrap.min.css', NULL, 1, 'theme', 6, '2019-10-15 05:38:58', '2019-10-15 05:38:59', NULL),
(7, 'Journal', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/journal/bootstrap.min.css', NULL, 1, 'theme', 7, '2019-10-15 05:38:58', '2019-10-15 05:38:59', NULL),
(8, 'Lumen', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/lumen/bootstrap.min.css', NULL, 1, 'theme', 8, '2019-10-15 05:38:58', '2019-10-15 05:38:59', NULL),
(9, 'Paper', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/paper/bootstrap.min.css', NULL, 1, 'theme', 9, '2019-10-15 05:38:58', '2019-10-15 05:38:59', NULL),
(10, 'Readable', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/readable/bootstrap.min.css', NULL, 1, 'theme', 10, '2019-10-15 05:38:58', '2019-10-15 05:38:59', NULL),
(11, 'Sandstone', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/sandstone/bootstrap.min.css', NULL, 1, 'theme', 11, '2019-10-15 05:38:58', '2019-10-15 05:38:59', NULL),
(12, 'Simplex', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/simplex/bootstrap.min.css', NULL, 1, 'theme', 12, '2019-10-15 05:38:58', '2019-10-15 05:38:59', NULL),
(13, 'Slate', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/slate/bootstrap.min.css', NULL, 1, 'theme', 13, '2019-10-15 05:38:58', '2019-10-15 05:38:59', NULL),
(14, 'Spacelab', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/spacelab/bootstrap.min.css', NULL, 1, 'theme', 14, '2019-10-15 05:38:58', '2019-10-15 05:39:00', NULL),
(15, 'Superhero', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/superhero/bootstrap.min.css', NULL, 1, 'theme', 15, '2019-10-15 05:38:58', '2019-10-15 05:39:00', NULL),
(16, 'United', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/united/bootstrap.min.css', NULL, 1, 'theme', 16, '2019-10-15 05:38:58', '2019-10-15 05:39:00', NULL),
(17, 'Yeti', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/yeti/bootstrap.min.css', NULL, 1, 'theme', 17, '2019-10-15 05:38:58', '2019-10-15 05:39:00', NULL),
(18, 'Bootstrap 4.3.1', 'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css', NULL, 1, 'theme', 18, '2019-10-15 05:38:58', '2019-10-15 05:39:00', NULL),
(19, 'Materialize', 'https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.css', NULL, 1, 'theme', 19, '2019-10-15 05:38:58', '2019-10-15 05:39:00', NULL),
(20, 'Material Design for Bootstrap (MDB) 4.8.7', 'https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.7/css/mdb.css', NULL, 1, 'theme', 20, '2019-10-15 05:38:58', '2019-10-15 05:39:00', NULL),
(21, 'mdbootstrap', 'https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.3.1/css/mdb.min.css', NULL, 1, 'theme', 21, '2019-10-15 05:38:59', '2019-10-15 05:39:00', NULL),
(22, 'Litera', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/litera/bootstrap.min.css', NULL, 1, 'theme', 22, '2019-10-15 05:38:59', '2019-10-15 05:39:00', NULL),
(23, 'Lux', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/lux/bootstrap.min.css', NULL, 1, 'theme', 23, '2019-10-15 05:38:59', '2019-10-15 05:39:00', NULL),
(24, 'Materia', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/materia/bootstrap.min.css', NULL, 1, 'theme', 24, '2019-10-15 05:38:59', '2019-10-15 05:39:00', NULL),
(25, 'Minty', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/minty/bootstrap.min.css', NULL, 1, 'theme', 25, '2019-10-15 05:38:59', '2019-10-15 05:39:00', NULL),
(26, 'Pulse', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/pulse/bootstrap.min.css', NULL, 1, 'theme', 26, '2019-10-15 05:38:59', '2019-10-15 05:39:00', NULL),
(27, 'Sketchy', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/sketchy/bootstrap.min.css', NULL, 1, 'theme', 27, '2019-10-15 05:38:59', '2019-10-15 05:39:01', NULL),
(28, 'Solar', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/solar/bootstrap.min.css', NULL, 1, 'theme', 28, '2019-10-15 05:38:59', '2019-10-15 05:39:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paynumber` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leave_days` double NOT NULL DEFAULT '0',
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_confirmation_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_sm_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `paynumber`, `first_name`, `last_name`, `email`, `password`, `remember_token`, `activated`, `token`, `position`, `department`, `leave_days`, `mobile`, `address`, `signup_ip_address`, `signup_confirmation_ip_address`, `signup_sm_ip_address`, `admin_ip_address`, `updated_ip_address`, `deleted_ip_address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'vguyo', '25', 'Vincent H', 'Guyo', 'vhguyo@whelson.co.zw', '$2y$10$veOPLJGc4dfCizmEk/j8A.oexRw2LZXMtnkCyrZQphTn/UDCXw/qG', NULL, 1, '3p20dQrpziAO42PCIIervdg801xjLT0Sko0ec8nu9jrQdtMKLn4Xy9NvOb3PTrn3', 'Systems Applications Administrator', 'I.T.', 7.332, '0773418009', '7 Tashinga Gardens, 12 Browning Ave, Strathaven, Harare', NULL, '159.183.198.202', NULL, '197.255.255.8', '0.0.0.0', NULL, '2019-10-15 05:39:02', '2019-10-15 05:59:52', NULL),
(2, 'qemard', 'YIOF', 'Vincent', 'Runte', 'user@user.com', '$2y$10$Of2JnjJJ8SFId/6AlPfa.OaIdvWLLqPfwg9RQ7XrFEg/mjT6LOOFe', NULL, 1, 'Z3PcBFVGWXE2VN7SDkanTk1QMoXLo64CK934IdlQbQKiUcNY5Yt5XSo48NITA5bM', 'Accounts Clerk', 'Accounts', 7.332, '0771418529', '12 Pamba Pangu', '138.118.43.214', '146.79.82.121', NULL, NULL, NULL, NULL, '2019-10-15 05:43:44', '2019-10-15 05:43:44', NULL),
(3, 'achiremba', '237', 'Alfred', 'Chiremba', 'achiremba@whelson.co.za', '$2y$10$I7GhBpXls1JualoOFoxkWeHizAkYQjpl9Ovo.r.6tv8P6EvHKjsNG', NULL, 1, '1tBOYsuyeRaDFgpIuaInjlQqsn3maAzVYyNgrDFGLAFUB7kl6s3ne9ST9OOGZdrO', 'Finance Director', 'Accounts', 7.332, '0772418951', '64 Lytton Road, Workington, Harare', NULL, NULL, NULL, '0.0.0.0', '0.0.0.0', NULL, '2019-10-16 08:08:46', '2020-01-14 06:07:59', NULL),
(4, 'cnmwenje', '1', 'Chris Nongerai', 'Mwenje', 'servicestation@whelson.co.zw', '$2y$10$ai3R7DbUeWp6Gno7RqN8.ups6Gge28HPbRnk6jFdC8OxVe2osxsGC', NULL, 1, 'q881NiHR5TOlUj45kQBMNByC2dutcWFiCY1FEWyn5ZKd1rnvq1A0u8XQqb5wD3MH', 'Fuel Station Manager', 'Diesel', 7.332, '0773803003', '2964 Winson Road North ,Hatfield,Harare', NULL, NULL, NULL, '0.0.0.0', NULL, NULL, '2019-10-16 08:22:05', '2019-10-16 08:22:05', NULL),
(5, 'cgeyle', 'cg123', 'Craig', 'Geyle', 'cgeyle@whelson.co.zw', '$2y$10$Ulr6R06chRk.AYREHjnhnOFMbyFlWhWVibY0xlwg8QxtjAnlkapcm', NULL, 1, 'ApUhHe53qEgkEFKbiCPRmmqoxz6iDgDPEB5oYY70VupDT1u2l4vNsz8sSrJelLIV', 'Engineering Manager', 'Engineering', 7.332, '0772556767', '64 Lytton Road, Working, Harare', NULL, NULL, NULL, '0.0.0.0', NULL, NULL, '2019-10-16 08:29:43', '2019-10-16 08:29:43', NULL),
(6, 'jnota', 'jn123', 'Joseph', 'Nota', 'jnota@whelson.co.zw', '$2y$10$BH5fI2qxiBQmhFgF9aDOl.SvmzqwqPGv6xiNDH50OHkjOx5cMIugy', NULL, 1, '0M2HvPAH1BjIR3JzwdXGRE5aCy76bjvkRDXkYZgR9b6xmX3h9cyqmSohnT12803d', 'Human Resources Manager', 'Human Resources', 7.332, '0772522297', '64 Lytton Road, Workington, Harare', NULL, NULL, NULL, '0.0.0.0', NULL, NULL, '2019-10-16 08:40:25', '2019-10-16 08:40:25', NULL),
(7, 'dziki', '21A', 'Dennis', 'Ziki', 'dziki@whelson.co.zw', '$2y$10$TNFEgIEO0NEFPkNjRIvoZexqVgeILUmdlJQ.v0ScAbjxaYthiBDpS', NULL, 1, 'AuwMUzYtxxuEhy7F5I7aPEEK9PnpG6grXkl81xukULq8BtTp78GJBgt4OhiXYmYX', 'I.T. Manager', 'I.T.', 7.332, '0774330305', '17 Sevenoaks Drive, Harare', NULL, NULL, NULL, '0.0.0.0', NULL, NULL, '2019-10-16 08:53:43', '2019-10-16 08:53:43', NULL),
(8, 'amusabayana', '283', 'Allan', 'Musabayana', 'amusabayana@whelson.co.zw', '$2y$10$M.rl.N069OOPEeP5Gc8zFOVyXTwgKU3MMEmWJHjNIeq22jhqfUoWm', NULL, 1, 'YFsq3xf1W10gSFMkpEcoTgvrQa7Kmh6vrk7M5rexJwmumPDX70cokbj7xvisupUj', 'Internal Audit Manager', 'Internal Audit', 7.332, '0772521079', '18 Fife Avenue, Harare.', NULL, NULL, NULL, '0.0.0.0', NULL, NULL, '2019-10-16 08:57:10', '2019-10-16 08:57:10', NULL),
(9, 'kmawire', 'km123', 'Kuno', 'Mawire', 'kmawire@whelson.co.zw', '$2y$10$Zg2fO01Q9MI6Nq68R3ykJOENkW7EXC/ofXqKxr.BEMaG4AKhR/HrW', NULL, 1, 'wbCOz3ULp7kP3TG795evXqr8sDlhxEiQr2O79rLNpX26hg8NlVqg0uvfFjQBveVk', 'Operations Manager', 'Operations', 7.332, '0772274892', '64 Lytton Road, Workington, Harare', NULL, NULL, NULL, '0.0.0.0', NULL, NULL, '2019-10-16 08:59:24', '2019-10-16 08:59:24', NULL),
(10, 'echiweda', '55A', 'Enock', 'Chiweda', 'echiweda@whelson.co.zw', '$2y$10$vaHFnC656OlRxi7/Ja3Z4..2QmpbOdpcbkv5HQd4mD6N6SXmTLU02', NULL, 1, 'Kmfvbp4vJCUUocUJl8h7exq5zv1v0iIbZqDhDaaBygytR6nwhki5rpVGn4759vMy', 'Operations Assistant Manager', 'Operations', 7.332, '0774135152', '43 Greenwood Heights,Harare', NULL, NULL, NULL, '0.0.0.0', NULL, NULL, '2019-10-16 09:00:49', '2019-10-16 09:00:49', NULL),
(11, 'snyabanga', '3', 'Simon', 'Nyabanga', 'snyabanga@whelson.co.zw', '$2y$10$dId90L3XmdU4HFogv1597eeLZDVNWxU6CYiqV4VUDWCF/WU9Q0TG.', NULL, 1, 'R3zZ0N0XKr8QC4sOOqCucHjh4JuJJMowtBlywkcRJlcRkaaWoJDRxtvrlhWrqY40', 'Stores Manager', 'Stores', 7.332, '0774080548', '890 -188 Close Budiriro 1,Harare', NULL, NULL, NULL, '0.0.0.0', NULL, NULL, '2019-10-16 09:02:40', '2019-10-16 09:02:40', NULL),
(12, 'mvan', 'mv123', 'Marius', 'Van Der Heever', 'mvan@whelson.co.zw', '$2y$10$2sRG5Ebcp8DCF7KSinCptO1X.fVfDQzubgl4Hn5UJl07KxTjG6wSG', NULL, 1, 'KcHXtJqHq25V8xYHTDqMxbbenmpH2jOgkz30ecphgoPnNwnsf083XosN19HUW6nr', 'Tyres and Tarps Manager', 'Tyres and Tarps', 7.332, '0772274891', '64 Lytton Road, Workington, Harare', NULL, NULL, NULL, '0.0.0.0', NULL, NULL, '2019-10-16 09:43:16', '2019-10-16 09:43:16', NULL),
(13, 'echihumbiri', '23A', 'Edward', 'Chihumbiri', 'echihumbiri@whelson.co.zw', '$2y$10$8e6GDewiUI5ymDQBS4kQX.y1BzscDIjY1tfw2x9q/L1UtbX5/IjNu', NULL, 1, 'zfJjC6YS4eNzxHeXIEY7zq2GDtXEKHBwYPwh8e2qFemFs3vfPxSSeuHpVaJPrrxr', 'Trailers Manager', 'Trailers', 7.332, '0772248084', '27 Meadow Crescent Meadowlands Park,Harare', NULL, NULL, NULL, '0.0.0.0', NULL, NULL, '2019-10-16 09:45:50', '2019-10-16 09:45:50', NULL),
(14, 'kgandi', '9', 'Kaurisayi', 'Gandi', 'kgandi@beitbridge.whelson.co.zw', '$2y$10$dbffXO.z/4xdJT7oVuqjle3IZyYVZpYlN1CeRygNIh8IsUOyp85AK', NULL, 1, '50wfcBschwlglMg5JL3x97ubtvC8yu8mJK4JSBO3Xdo0LrsJdPRuJwzCKJIqRnuB', 'Depot Manager', 'Beitbridge', 7.332, '0773252708', '15513 Mabwe Road,Zengeza 5,Harare', NULL, NULL, NULL, '0.0.0.0', NULL, NULL, '2019-10-16 09:48:13', '2019-10-16 09:48:13', NULL),
(15, 'smasuka', '49A', 'Shepherd', 'Masuka', 'smasuka@whelson.co.zw', '$2y$10$gX0UXvKdk5yhrpjaZyTQduwHe1cNrHPV/.H4yf93H72ndypvrA/pa', NULL, 1, 'Hs546iVuh1mGOCqo5CbyVm5Q61yqpcmWl21vgLz7L1044xmcydvYnteWWERc7EYk', 'Depot Manager', 'Chirundu', 7.332, '0774082134', '8090 Stoneridge, Harare', NULL, NULL, NULL, '0.0.0.0', NULL, NULL, '2019-10-16 09:49:39', '2019-10-16 09:49:39', NULL),
(16, 'agonyora', '694', 'Alex', 'Gonyora', 'agonyora@vicfalls.whelson.co.zw', '$2y$10$ErFXnegeMJmdj1gZiLdqbuZcVURwcjh0k/HOCTrkxIVDSujTm876S', NULL, 1, 'c0cq6QuVNUNqhqQ4vktNYQYup96WGPTtuxh5yPCk4UQ77TgR1wZ9oaQZrlphSQWG', 'AC Vic Falls Depot Manager', 'Victoria Falls', 7.332, '0773874708', '2740 28th Crescent Glenview 1,Harare', NULL, NULL, NULL, '0.0.0.0', NULL, NULL, '2019-10-16 09:52:10', '2019-10-16 09:52:10', NULL),
(17, 'wwes', 'ww123', 'Wes', 'Wessels', 'wes@leadertread.co.zw', '$2y$10$EjiPxJg/2I/DGsYHRMTyvODPFwmd9FofB0vDTZIVmpt3I1IUhW3oe', NULL, 1, '6mnbER5FVlAmx3TS6d7TpwOSM3twGUy5giCVmjQb5P7LurJ53UY2H5MpIBeEpl7C', 'Depot Manager', 'Roadgrip', 7.332, '0775711156', '12 Highfield Road, Southerton, Harare', NULL, NULL, NULL, '0.0.0.0', NULL, NULL, '2019-10-16 09:56:01', '2019-10-16 09:56:01', NULL),
(18, 'lmuhwati', '247', 'Testing Dep', 'User', 'ltmuhwati@whelson.co.zw', '$2y$10$5q2DCQcLANyIUr9xr1EVA.QK.sNYlsSzrs0ruh9nOdrCKvR2uwSMa', NULL, 1, '5QvpfXFHEFKoAW2YpyVCB7uE0e9PZwocdm9jOiCY3Iu5PhtBi5Y5Wytxqsf1Undr', 'Tester', 'Testing Department', 5.332, '0778442115', '12 Pangu pangu', NULL, NULL, NULL, '0.0.0.0', NULL, NULL, '2019-10-17 10:21:11', '2019-10-17 10:21:11', NULL),
(19, 'itprojects', '269', 'Test', 'Number', 'itprojects@whelson.co.zw', '$2y$10$/zJN4esJ.n/ys/EDJkk35eR7ayVNV1gERPm1ytAKwBBSlfKXHloQS', NULL, 1, '6lzwfUhjXYBBOWPmKOHUUriPm2PcJhiNlX1uXPey2MDKG9CEFlfsZiDp96He2CKd', 'Jnr Tester', 'Testing Department', 7.332, '0912345677', '13 Pamba pedu futi', NULL, NULL, NULL, '0.0.0.0', NULL, NULL, '2019-10-17 10:28:38', '2019-10-17 10:28:38', NULL),
(20, 'vguyo123', '123', 'Testing', 'Manager', 'vguyo@whelson.co.zw', '$2y$10$RguYliOU2xmmxQT29SAyyeXGY5oS37wl4Hka3T6UhA5/WPl6TYoz2', NULL, 1, 'yRu8s9PlFmEBAFJ9AqOe21CUfBaXc6laIFm1D8NcLarQT6F4OLpyoYrjOHYtEzQW', 'Testering Manager', 'Testing Department', 7.332, '0778445126', '16 Same road', NULL, NULL, NULL, '0.0.0.0', NULL, NULL, '2019-10-17 10:31:19', '2019-10-17 10:31:19', NULL),
(21, 'smapondo', '1234', 'Samuel', 'Mapondo', 'smapondo@whelson.co.zw', '$2y$10$FhBvMSirMOrORsuRT5TcVuIDGjTOuT7i1M2EWG4VHiMPsYmBJ1TIS', NULL, 1, 'RiLtSkyVTjMEMwGiQQ9maPzsEgyvRBABvvwSSU7L5G6KoYGaiwePXeDBhdQ3o3JA', 'Finance Manager', 'Accounts', 0, '0772650705', '64 Lytton Road, Workington, Harare', NULL, NULL, NULL, '0.0.0.0', NULL, NULL, '2020-01-13 09:48:10', '2020-01-13 09:48:10', NULL),
(22, 'dlmuhwati', '3211', 'Director', 'Trsting', 'lmuhwati@whelson.co.zw', '$2y$10$x9WaW3dDN1qKin0CV/jUVeS6PGHkGi0fXidmih5tBKAfdSLrwOMb6', NULL, 1, 'EMdPxbuAMSIT4k4FJsfFOVn0C9ch0yhBwuC9ZlpQeRSLB4U5gIpcUpLfry4MCiw1', 'Finance Director', 'Directors', 0, '0771448775', '64 Lytton Road, workington harare', NULL, NULL, NULL, '0.0.0.0', NULL, NULL, '2020-01-14 07:49:55', '2020-01-14 07:49:55', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_titles`
--
ALTER TABLE `job_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laravel2step`
--
ALTER TABLE `laravel2step`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laravel2step_userid_index` (`userId`);

--
-- Indexes for table `laravel_blocker`
--
ALTER TABLE `laravel_blocker`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `laravel_blocker_value_unique` (`value`),
  ADD KEY `laravel_blocker_typeid_index` (`typeId`),
  ADD KEY `laravel_blocker_userid_index` (`userId`);

--
-- Indexes for table `laravel_blocker_types`
--
ALTER TABLE `laravel_blocker_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `laravel_blocker_types_slug_unique` (`slug`);

--
-- Indexes for table `laravel_logger_activity`
--
ALTER TABLE `laravel_logger_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leavetypes`
--
ALTER TABLE `leavetypes`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_index` (`permission_id`),
  ADD KEY `permission_user_user_id_index` (`user_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_theme_id_foreign` (`theme_id`),
  ADD KEY `profiles_user_id_index` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_index` (`role_id`),
  ADD KEY `role_user_user_id_index` (`user_id`);

--
-- Indexes for table `social_logins`
--
ALTER TABLE `social_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_logins_user_id_index` (`user_id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `themes_name_unique` (`name`),
  ADD UNIQUE KEY `themes_link_unique` (`link`),
  ADD KEY `themes_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`),
  ADD KEY `themes_id_index` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_name_unique` (`name`),
  ADD UNIQUE KEY `users_paynumber_unique` (`paynumber`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_titles`
--
ALTER TABLE `job_titles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `laravel2step`
--
ALTER TABLE `laravel2step`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laravel_blocker`
--
ALTER TABLE `laravel_blocker`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `laravel_blocker_types`
--
ALTER TABLE `laravel_blocker_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `laravel_logger_activity`
--
ALTER TABLE `laravel_logger_activity`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1146;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `leavetypes`
--
ALTER TABLE `leavetypes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `social_logins`
--
ALTER TABLE `social_logins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activations`
--
ALTER TABLE `activations`
  ADD CONSTRAINT `activations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `laravel2step`
--
ALTER TABLE `laravel2step`
  ADD CONSTRAINT `laravel2step_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `laravel_blocker`
--
ALTER TABLE `laravel_blocker`
  ADD CONSTRAINT `laravel_blocker_typeid_foreign` FOREIGN KEY (`typeId`) REFERENCES `laravel_blocker_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_theme_id_foreign` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`id`),
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_logins`
--
ALTER TABLE `social_logins`
  ADD CONSTRAINT `social_logins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
