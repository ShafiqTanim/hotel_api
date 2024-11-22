-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 22, 2024 at 10:11 AM
-- Server version: 10.6.19-MariaDB-cll-lve
-- PHP Version: 8.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weebpbih_hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `room_list_id` bigint(20) UNSIGNED DEFAULT NULL,
  `contact_no` varchar(255) NOT NULL,
  `check_in_date` date NOT NULL,
  `check_out_date` date NOT NULL,
  `number_of_guest_adult` varchar(2) NOT NULL,
  `number_of_guest_child` varchar(2) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `vat` decimal(10,2) DEFAULT NULL,
  `status` int(11) DEFAULT 0 COMMENT '0 active, 1 cancelled',
  `cancel_reason` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `customer_id`, `room_list_id`, `contact_no`, `check_in_date`, `check_out_date`, `number_of_guest_adult`, `number_of_guest_child`, `total_amount`, `discount`, `vat`, `status`, `cancel_reason`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '01545', '2024-10-23', '2024-10-31', '1', '0', 1000.00, NULL, NULL, 1, NULL, '2024-10-28 23:45:03', '2024-10-28 23:45:03'),
(2, 1, 1, '13465', '2024-11-15', '2024-11-16', '1', '0', 1000.00, NULL, NULL, 1, NULL, '2024-11-14 01:31:13', '2024-11-14 01:31:13'),
(3, 7, 9, '64613164', '2024-11-20', '2024-11-22', '1', '0', 5000.00, NULL, NULL, 0, NULL, '2024-11-15 22:19:54', '2024-11-15 22:19:54'),
(5, 1, 3, '45684', '2024-11-16', '2024-11-20', '1', '0', 0.00, NULL, NULL, NULL, NULL, '2024-11-15 22:50:11', '2024-11-15 22:50:11'),
(6, 1, 9, '4473437', '2024-11-17', '2024-11-18', '1', '0', 0.00, 100.00, 5.00, NULL, NULL, '2024-11-15 22:55:45', '2024-11-15 22:55:45'),
(7, 6, 2, '015454', '2024-11-17', '2024-11-20', '1', '0', 3135.00, 5.00, 10.00, NULL, NULL, '2024-11-16 21:32:29', '2024-11-16 21:32:29'),
(8, 1, 3, '0125495', '2024-11-17', '2024-11-19', '3', '0', 5016.00, 5.00, 10.00, NULL, NULL, '2024-11-17 01:44:02', '2024-11-17 01:44:02'),
(9, 1, 9, '4552', '2024-11-17', '2024-11-20', '2', '0', 6270.00, 5.00, 10.00, NULL, NULL, '2024-11-17 02:20:06', '2024-11-17 02:20:06');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `nid` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `contact`, `address`, `nid`, `nationality`, `created_at`, `updated_at`) VALUES
(1, 'Tanim', 'tanim@gmail.com', 1236954, 'shf afjj asfj', '456321', 'Bangladeshi', '2024-10-26 21:33:05', '2024-10-26 21:37:15'),
(6, 'Abu Naser sf', 'nas@gmail.com', 12459856, 'sdfasf asfasf', '45632145', 'Bangladesh', '2024-10-26 23:33:34', '2024-10-26 23:33:34'),
(7, 'Ahmed Mukut', 'mukuk@gmail.com', 1411665, 'kjsdf askfhsfh', '426564', 'Bangladeshi', '2024-10-26 23:57:11', '2024-10-26 23:57:11'),
(9, 'Abdul Al Manun', 'mamun@gmail.com', 1239745, 'Agrabad, Chattagram', '456328', 'Bangladeshi', '2024-10-29 22:18:38', '2024-10-29 22:18:38'),
(10, 'Mahfuzur Rahman', 'Mahfujoffice@gmail.com', 0, 'R  A Bhaban , 11 mile kabir Chairman bari', '92852.28502', '60543.1000008', '2024-11-20 20:50:17', '2024-11-20 20:50:17');

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'sat', NULL, NULL),
(2, 'sun', NULL, NULL),
(3, 'mon', NULL, NULL),
(4, 'tue', NULL, NULL),
(5, 'wed', NULL, NULL),
(6, 'thu', NULL, NULL),
(7, 'fri', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `hire_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `role_id`, `contact`, `email`, `address`, `nationality`, `hire_date`, `created_at`, `updated_at`) VALUES
(1, 'Tanim', 1, '0124598', 'tanim@gmail.com', 'kjsdf askfhsfh', 'Bangladeshi', '2024-10-19', '2024-10-28 00:44:59', '2024-10-28 00:44:59');

-- --------------------------------------------------------

--
-- Table structure for table `food_bills`
--

CREATE TABLE `food_bills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `issue_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_categories`
--

CREATE TABLE `menu_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_categories`
--

INSERT INTO `menu_categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'lunch', 'Lunch Basic for 1 person', '2024-10-29 21:38:51', '2024-10-29 21:38:51');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_category_id`, `name`, `description`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 'Biriyani', 'Mutton Kima, Fried Rice, Cold Drinks', 200.00, '2024-11-05 22:47:27', '2024-11-05 22:47:27');

-- --------------------------------------------------------

--
-- Table structure for table `menu_item_menu_categories`
--

CREATE TABLE `menu_item_menu_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_item_id` bigint(20) UNSIGNED NOT NULL,
  `menu_category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_item_menu_categories`
--

INSERT INTO `menu_item_menu_categories` (`id`, `menu_item_id`, `menu_category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-11-12 01:10:08', '2024-11-12 01:10:08'),
(2, 1, 1, '2024-11-12 01:12:37', '2024-11-12 01:12:37'),
(3, 1, 1, '2024-11-12 01:21:05', '2024-11-12 01:21:05');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2024_10_02_085655_create_customers_table', 1),
(5, '2024_10_03_045039_create_room_categories_table', 1),
(7, '2024_10_25_131712_create_reservation_requests_table', 1),
(8, '2024_10_25_131715_create_bookings_table', 1),
(9, '2024_10_25_133522_create_service_lists_table', 1),
(10, '2024_10_25_133524_create_service_bills_table', 1),
(11, '2024_10_25_133526_create_payments_table', 1),
(12, '2024_10_25_133528_create_roles_table', 1),
(13, '2024_10_25_133926_create_employees_table', 1),
(14, '2024_10_25_133944_create_days_table', 1),
(15, '2024_10_25_134008_create_shifts_table', 1),
(16, '2024_10_25_134526_create_roster_schedules_table', 1),
(17, '2024_10_25_134558_create_menu_categories_table', 1),
(18, '2024_10_25_134748_create_menu_items_table', 1),
(19, '2024_10_25_134852_create_menu_item_menu_categories_table', 1),
(20, '2024_10_25_134911_create_orders_table', 1),
(21, '2024_10_25_134933_create_food_bills_table', 1),
(22, '2024_10_03_053551_create_room_lists_table', 2),
(23, '2014_10_12_000000_create_users_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `order_date` datetime NOT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `vat` decimal(10,2) DEFAULT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` bigint(20) UNSIGNED NOT NULL,
  `service_bill_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_date` datetime NOT NULL,
  `payment_method` enum('credit card','cash','online') NOT NULL,
  `status` enum('paid','pending','refunded') NOT NULL DEFAULT 'paid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservation_requests`
--

CREATE TABLE `reservation_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `room_list_id` bigint(20) UNSIGNED DEFAULT NULL,
  `contact_no` varchar(255) NOT NULL,
  `check_in_date` date NOT NULL,
  `check_out_date` date NOT NULL,
  `number_of_guest_adult` varchar(2) NOT NULL,
  `number_of_guest_child` varchar(2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `role_identity` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `role_identity`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', '2024-10-25 23:11:25', NULL),
(2, 'Manager', 'manager', '2024-10-25 23:11:25', NULL),
(3, 'Receptionist', 'receptionist', '2024-10-25 23:11:25', NULL),
(4, 'House Keeping', 'housekeeping', '2024-10-25 23:11:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `room_categories`
--

CREATE TABLE `room_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_categories`
--

INSERT INTO `room_categories` (`id`, `category_name`, `description`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Standerd', 'Non Ac room', 1000.00, '2024-10-27 00:47:45', '2024-10-27 00:47:45'),
(3, 'Standerd 2', 'Ac room', 1800.00, '2024-10-27 01:06:58', '2024-10-27 01:06:58'),
(4, 'Basic', 'Non Ac room', 500.00, '2024-10-29 22:19:19', '2024-10-29 22:19:19'),
(5, 'Basic', 'Ac room', 800.00, '2024-10-29 22:19:44', '2024-10-29 22:19:44'),
(6, 'Junior Suit', 'Ac room', 2500.00, '2024-10-29 22:20:31', '2024-10-29 22:20:31'),
(7, 'Suit', 'Ac room', 3500.00, '2024-10-29 22:20:48', '2024-10-29 22:20:48'),
(8, 'Delux', 'Ac room', 5000.00, '2024-10-29 22:21:12', '2024-10-29 22:21:12');

-- --------------------------------------------------------

--
-- Table structure for table `room_lists`
--

CREATE TABLE `room_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_number` varchar(255) NOT NULL,
  `room_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 available,1 booked, 2 maintenance',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_lists`
--

INSERT INTO `room_lists` (`id`, `room_number`, `room_category_id`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, '005', 4, 'Ac room', 0, '2024-11-12 22:16:06', '2024-11-15 22:56:14'),
(2, '001', 1, 'Non Ac room', 0, '2024-11-12 22:32:04', '2024-11-17 02:20:51'),
(3, '004', 5, NULL, 1, '2024-11-13 00:30:02', '2024-11-17 01:44:03'),
(4, '002', 8, NULL, 0, '2024-11-13 00:30:36', '2024-11-15 22:56:30'),
(5, '007', 1, NULL, 1, '2024-11-13 00:31:18', '2024-11-13 00:31:18'),
(8, '014', 3, NULL, 2, '2024-11-13 00:39:53', '2024-11-13 00:39:53'),
(9, '011', 1, NULL, 1, '2024-11-13 00:44:43', '2024-11-17 02:20:07'),
(10, '012', 1, NULL, 0, '2024-11-13 00:48:02', '2024-11-13 00:48:02'),
(11, '013', 1, NULL, 0, '2024-11-13 00:57:40', '2024-11-13 00:57:40'),
(14, '015', 3, NULL, 0, '2024-11-13 01:03:41', '2024-11-15 22:56:46'),
(15, '016', 6, NULL, 0, '2024-11-15 22:36:44', '2024-11-15 22:56:50'),
(16, '020', 4, NULL, 0, '2024-11-17 02:18:56', '2024-11-17 02:18:56');

-- --------------------------------------------------------

--
-- Table structure for table `roster_schedules`
--

CREATE TABLE `roster_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `shift_id` bigint(20) UNSIGNED NOT NULL,
  `day_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_bills`
--

CREATE TABLE `service_bills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` bigint(20) UNSIGNED NOT NULL,
  `service_list_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `vat` decimal(10,2) DEFAULT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_lists`
--

CREATE TABLE `service_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_lists`
--

INSERT INTO `service_lists` (`id`, `service_name`, `description`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Dining - Room Service', 'Breakfast: Basic', 100.00, '2024-10-27 20:14:35', '2024-10-27 20:14:35'),
(2, 'Dining - Room Service', 'Lunch/Dinner: Basic', 150.00, '2024-10-27 20:15:24', '2024-10-27 20:15:24'),
(3, 'Continental Breakfast Delivery', 'Breakfast items like pastries, fruit, and coffee delivered to the room', 300.00, '2024-10-29 22:26:00', '2024-10-29 22:26:00');

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shifts`
--

INSERT INTO `shifts` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'morning', NULL, NULL),
(2, 'evening', NULL, NULL),
(3, 'night', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_customer_id_foreign` (`customer_id`),
  ADD KEY `bookings_room_list_id_foreign` (`room_list_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_contact_unique` (`contact`),
  ADD UNIQUE KEY `customers_nid_unique` (`nid`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `days_name_unique` (`name`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_contact_unique` (`contact`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_role_id_foreign` (`role_id`);

--
-- Indexes for table `food_bills`
--
ALTER TABLE `food_bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `food_bills_order_id_foreign` (`order_id`);

--
-- Indexes for table `menu_categories`
--
ALTER TABLE `menu_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_categories_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_category_id_foreign` (`menu_category_id`);

--
-- Indexes for table `menu_item_menu_categories`
--
ALTER TABLE `menu_item_menu_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_item_menu_categories_menu_item_id_foreign` (`menu_item_id`),
  ADD KEY `menu_item_menu_categories_menu_category_id_foreign` (`menu_category_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_booking_id_foreign` (`booking_id`),
  ADD KEY `payments_service_bill_id_foreign` (`service_bill_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reservation_requests`
--
ALTER TABLE `reservation_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservation_requests_room_list_id_foreign` (`room_list_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_categories`
--
ALTER TABLE `room_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_lists`
--
ALTER TABLE `room_lists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `room_lists_room_number_unique` (`room_number`),
  ADD KEY `room_lists_room_category_id_foreign` (`room_category_id`);

--
-- Indexes for table `roster_schedules`
--
ALTER TABLE `roster_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roster_schedules_employee_id_foreign` (`employee_id`),
  ADD KEY `roster_schedules_shift_id_foreign` (`shift_id`),
  ADD KEY `roster_schedules_day_id_foreign` (`day_id`);

--
-- Indexes for table `service_bills`
--
ALTER TABLE `service_bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_bills_booking_id_foreign` (`booking_id`),
  ADD KEY `service_bills_service_list_id_foreign` (`service_list_id`);

--
-- Indexes for table `service_lists`
--
ALTER TABLE `service_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shifts_name_unique` (`name`);

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
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `food_bills`
--
ALTER TABLE `food_bills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu_categories`
--
ALTER TABLE `menu_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_item_menu_categories`
--
ALTER TABLE `menu_item_menu_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservation_requests`
--
ALTER TABLE `reservation_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `room_categories`
--
ALTER TABLE `room_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `room_lists`
--
ALTER TABLE `room_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `roster_schedules`
--
ALTER TABLE `roster_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_bills`
--
ALTER TABLE `service_bills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_lists`
--
ALTER TABLE `service_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_room_list_id_foreign` FOREIGN KEY (`room_list_id`) REFERENCES `room_lists` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `food_bills`
--
ALTER TABLE `food_bills`
  ADD CONSTRAINT `food_bills_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_category_id_foreign` FOREIGN KEY (`menu_category_id`) REFERENCES `menu_categories` (`id`);

--
-- Constraints for table `menu_item_menu_categories`
--
ALTER TABLE `menu_item_menu_categories`
  ADD CONSTRAINT `menu_item_menu_categories_menu_category_id_foreign` FOREIGN KEY (`menu_category_id`) REFERENCES `menu_categories` (`id`),
  ADD CONSTRAINT `menu_item_menu_categories_menu_item_id_foreign` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_items` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_booking_id_foreign` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`),
  ADD CONSTRAINT `payments_service_bill_id_foreign` FOREIGN KEY (`service_bill_id`) REFERENCES `service_bills` (`id`);

--
-- Constraints for table `reservation_requests`
--
ALTER TABLE `reservation_requests`
  ADD CONSTRAINT `reservation_requests_room_list_id_foreign` FOREIGN KEY (`room_list_id`) REFERENCES `room_lists` (`id`);

--
-- Constraints for table `room_lists`
--
ALTER TABLE `room_lists`
  ADD CONSTRAINT `room_lists_room_category_id_foreign` FOREIGN KEY (`room_category_id`) REFERENCES `room_categories` (`id`);

--
-- Constraints for table `roster_schedules`
--
ALTER TABLE `roster_schedules`
  ADD CONSTRAINT `roster_schedules_day_id_foreign` FOREIGN KEY (`day_id`) REFERENCES `days` (`id`),
  ADD CONSTRAINT `roster_schedules_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `roster_schedules_shift_id_foreign` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`);

--
-- Constraints for table `service_bills`
--
ALTER TABLE `service_bills`
  ADD CONSTRAINT `service_bills_booking_id_foreign` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`),
  ADD CONSTRAINT `service_bills_service_list_id_foreign` FOREIGN KEY (`service_list_id`) REFERENCES `service_lists` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
