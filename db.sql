-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2024 at 04:20 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12
CREATE DATABASE eproject_hk1;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_03_26_140921_create_products_table', 1);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
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
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `cardb`
--
CREATE DATABASE IF NOT EXISTS `cardb` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `cardb`;

-- --------------------------------------------------------

--
-- Table structure for table `car_company`
--

CREATE TABLE `car_company` (
  `id` int(11) NOT NULL,
  `company` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `car_company`
--

INSERT INTO `car_company` (`id`, `company`) VALUES
(1, 'hyundai'),
(2, 'kia'),
(3, 'toyota');

-- --------------------------------------------------------

--
-- Table structure for table `car_details`
--

CREATE TABLE `car_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `company_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `engine` int(11) NOT NULL,
  `transmission` int(11) NOT NULL,
  `fuel_efficiency` int(11) NOT NULL,
  `dimensions` int(11) NOT NULL,
  `features_and_amenities` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `car_details`
--

INSERT INTO `car_details` (`id`, `name`, `company_id`, `color_id`, `type_id`, `engine`, `transmission`, `fuel_efficiency`, `dimensions`, `features_and_amenities`, `image`, `price`) VALUES
(1, 'Hyundai Accent 2021 1.4 MT ', 1, 6, 3, 2, 1, 6, 2, 2, '1_1_black.jpg,1_1_white.jpg', 24000),
(2, 'Hyundai Venue 2023 ', 1, 6, 4, 3, 1, 17, 1, 2, '1_2_black.jpg,1_2_white.jpg', 27000),
(3, 'Hyundai i10 2021 ', 1, 6, 2, 2, 1, 6, 1, 2, '1_3_black.jpg,1_3_white.jpg', 18500),
(4, 'Hyundai Creta ', 1, 6, 4, 4, 3, 8, 1, 2, '1_4_black.jpg,1_4_white.jpg', 18500),
(5, 'Hyundai Elantra ', 1, 6, 3, 9, 5, 12, 1, 2, '1_5_white.jpg,1_5_black.png', 30000),
(6, 'Hyundai Tucson 2022 ', 1, 6, 4, 8, 7, 12, 1, 2, '1_6_black.jpg,1_6_white.jpg', 38000),
(7, 'Hyundai Kona ', 1, 6, 4, 10, 5, 12, 1, 2, '1_7_black.jpg,1_7_white.jpg', 33000),
(8, 'Hyundai SantaFe ', 1, 6, 4, 11, 7, 12, 1, 2, '1_8_black.jpg,1_8_white.jpg', 45000),
(9, 'Toyota camry 2.0 Q', 3, 6, 3, 2, 2, 10, 1, 2, '1_9_black.jpeg,1_9_white.jpg', 51500),
(10, 'Toyota Corolla Altis 1.8V', 3, 6, 3, 2, 2, 10, 1, 2, '1_10_black.jpg,1_10_white.png', 33000),
(11, 'Toyota Vios 1.5 E CVT', 3, 6, 3, 2, 1, 10, 1, 2, '1_11_white.jpeg,1_11_black.jpg', 24400),
(12, 'Toyota Corolla Cross 1.8G ', 3, 6, 4, 2, 2, 10, 1, 2, '1_12_black.jpg,1_12_white.jpg', 32434.8),
(13, 'Toyota Land Cruiser LC300 ', 3, 6, 4, 2, 2, 10, 1, 2, '1_13_black.jpg,1_13_white.jpg', 186000),
(14, 'Toyota Innova 2.0E ', 3, 6, 5, 2, 2, 10, 1, 2, '1_14_black.jpg,1_14_white.jpg', 43000),
(15, 'Toyota Avanza Premio CVT ', 3, 6, 4, 2, 2, 10, 1, 2, '1_15_black.jpg,1_15_white.jpg', 26000),
(16, 'Toyota Hilux 2.8L ', 3, 6, 6, 2, 2, 10, 1, 2, '1_16_white.jpg,1_16_black.png', 43400),
(17, 'toyota wigo 1.2g mt ', 3, 6, 2, 2, 2, 10, 1, 2, '1_17_white.jpg,1_17_black.png', 15700),
(18, 'Kia Seltos ', 2, 6, 4, 2, 2, 10, 1, 2, '1_18_black.jpg,1_18_white.jpg', 30000),
(19, 'Kia Morning ', 2, 6, 2, 2, 2, 10, 1, 2, '1_19_black.jpg,1_19_white .jpg', 19000),
(20, 'Kia Soluto ', 2, 6, 3, 2, 2, 10, 1, 2, '1_20_black.png,1_20_white.jpg', 19800),
(21, 'Kia Sonet ', 2, 6, 4, 2, 2, 10, 1, 2, '1_21_black.jpg,1_21_white.jpg', 26200),
(22, 'Kia K3 ', 2, 6, 3, 2, 2, 10, 1, 2, '1_22_black.jpg,1_22_white.jpg', 27000),
(23, 'Kia Rondo ', 2, 6, 5, 2, 2, 10, 1, 2, '1_23_black.jpg,1_23_white.jpg', 27000),
(24, 'Kia Carens ', 2, 6, 5, 2, 2, 10, 1, 2, '1_24_black.png,1_24_white.png', 29700),
(25, 'Kia K5 ', 2, 6, 3, 2, 2, 10, 1, 2, '1_25_black.jpg,1_25_white.jpg', 42800),
(26, 'Kia Sportage ', 2, 6, 4, 2, 2, 10, 1, 2, 'Kia Sportage black.jpg,Kia Sportage white.jpg', 44261.6),
(27, 'Kia Sorento ', 2, 6, 4, 2, 2, 10, 1, 2, 'Kia Sorento black.jpg,Kia Sorento wwhite.jpg', 53042.3),
(28, 'Kia Sorento ', 2, 6, 4, 2, 2, 10, 1, 2, NULL, 48000),
(29, 'Kia Sportage ', 2, 6, 4, 2, 2, 10, 1, 2, NULL, 40200),
(30, 'Kia Sorento ', 2, 6, 4, 2, 2, 10, 1, 2, '26_1_black.jpg,26_1_white.jpg', 48000);

-- --------------------------------------------------------

--
-- Table structure for table `car_dimensions_details`
--

CREATE TABLE `car_dimensions_details` (
  `id` int(11) NOT NULL,
  `length` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `wheelbase` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `car_dimensions_details`
--

INSERT INTO `car_dimensions_details` (`id`, `length`, `width`, `height`, `wheelbase`) VALUES
(1, 4385, 1700, 1460, 2570),
(2, 3670, 1680, 1480, 2425),
(3, 3995, 1770, 1605, 2500),
(4, 4300, 1790, 1620, 2610),
(5, 4620, 1800, 1440, 2700),
(6, 4480, 1850, 1650, 2670),
(7, 4165, 1800, 1550, 2600),
(8, 4770, 1890, 1705, 2765);

-- --------------------------------------------------------

--
-- Table structure for table `car_engine_details`
--

CREATE TABLE `car_engine_details` (
  `id` int(11) NOT NULL,
  `engine_type` int(11) NOT NULL,
  `displacement` varchar(255) NOT NULL,
  `maximum_power` varchar(255) NOT NULL,
  `maximum_torque` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `car_engine_details`
--

INSERT INTO `car_engine_details` (`id`, `engine_type`, `displacement`, `maximum_power`, `maximum_torque`) VALUES
(1, 1, '1.4 L', 'Approximately 98 horsepower (hp) or 73 kW at 6,000 rpm', 'Approximately 132 Nm at 4,000 rpm'),
(2, 1, '1.0 L or 1.2 L ', 'Varies depending on the engine variant, typically around 66 to 84 horsepower (hp) or 49 to 63 kW', 'Varies depending on the engine variant, typically around 96 to 118 Nm'),
(3, 3, 'Petrol: 1.2-liter Kappa Dual VTVT engine or 1.0-liter Kappa Turbo GDi engine\r\nDiesel: 1.5-liter U2 CRDi engine', '', ''),
(4, 2, '1.5-liter U2 CRDi engine', '', ''),
(5, 1, 'Approximately 1.4 or 1.6 liters', 'Typically ranging from 123 to 138 horsepower (depending on the engine and market)', 'Typically ranging from 154 to 242 Nm (depending on the engine and market)'),
(6, 2, 'Approximately 1.5 liters', 'Typically ranging from 113 to 115 horsepower (depending on the market)', 'Typically ranging from 250 to 260 Nm (depending on the market)'),
(7, 1, '2.0-liter MPI (Multi-Point Injection) ', '', ''),
(8, 3, 'Petrol: 2.0-liter MPI (Multi-Point Injection) engine or 1.6-liter Turbo GDi (Gasoline Direct Injection) engine\nDiesel: 1.5-liter CRDi (Common Rail Direct Injection) engine', '', ''),
(9, 3, 'Petrol: 2.0-liter MPI (Multi-Point Injection) engine or 1.6-liter Turbo GDi (Gasoline Direct Injection) engine\r\nDiesel: 2.0-liter CRDi (Common Rail Direct Injection) engine or 2.0-liter R CRDi (Rail Common Rail Direct Injection) engine', '', ''),
(10, 3, 'Petrol: 1.6-liter Gamma II GDi (Gasoline Direct Injection) engine\r\nDiesel: 1.6-liter U2 CRDi (Common Rail Direct Injection) engine\r\n', '', ''),
(11, 3, 'Petrol: 2.5-liter Smartstream G2.5 MPi engine\r\nDiesel: 2.2-liter Smartstream D2.2 CRDi engine\r\n', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `car_features_and_amenities_details`
--

CREATE TABLE `car_features_and_amenities_details` (
  `id` int(11) NOT NULL,
  `entertainment_system` varchar(255) DEFAULT NULL,
  `safety_system` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `car_features_and_amenities_details`
--

INSERT INTO `car_features_and_amenities_details` (`id`, `entertainment_system`, `safety_system`) VALUES
(1, 'Touchscreen display, Bluetooth connectivity, USB/AUX ports.', 'ABS, airbags, rear parking sensors, electronic brake-force distribution (EBD), electronic stability control (ESC)'),
(2, 'Touchscreen display, Apple CarPlay and Android Auto compatibility, Bluetooth connectivity, USB/AUX ports', 'ABS, airbags, rear parking sensors, electronic stability control (ESC), hill-start assist control, and more'),
(3, 'Touchscreen display, Apple CarPlay and Android Auto compatibility, Bluetooth connectivity, USB/AUX ports', 'ABS with EBD, airbags, rear parking sensors, rearview camera, electronic stability control (ESC), hill-start assist control, and more.'),
(4, 'Touchscreen display, Apple CarPlay and Android Auto connectivity, Bluetooth, USB/AUX ports', 'ABS, airbags, Electronic Stability Control (ESC), blind-spot sensors, rearview camera, hill-start assist control, and various other safety features'),
(5, 'Touchscreen display, Apple CarPlay and Android Auto compatibility, Bluetooth connectivity, USB/AUX ports', 'ABS with EBD, airbags, rearview camera, electronic stability control (ESC), hill-start assist control, and more'),
(6, 'Touchscreen display, Apple CarPlay and Android Auto compatibility, Bluetooth connectivity, USB/AUX ports', 'ABS with EBD, airbags, rearview camera, electronic stability control (ESC), hill-start assist control, blind-spot monitoring, lane-keeping assist, and more'),
(7, 'Touchscreen display, Apple CarPlay and Android Auto compatibility, Bluetooth connectivity, USB/AUX ports', 'ABS with EBD, airbags, rearview camera, electronic stability control (ESC), hill-start assist control, blind-spot monitoring, lane-keeping assist, adaptive cruise control, and more');

-- --------------------------------------------------------

--
-- Table structure for table `car_transmission_details`
--

CREATE TABLE `car_transmission_details` (
  `id` int(11) NOT NULL,
  `transmission_type` varchar(255) NOT NULL,
  `gears` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `car_transmission_details`
--

INSERT INTO `car_transmission_details` (`id`, `transmission_type`, `gears`) VALUES
(1, '5-speed manual', ''),
(2, '5-speed automated manual ', ''),
(3, '6-speed manual', ''),
(4, '7-speed DCT ', ''),
(5, '6-speed automatic', ''),
(6, 'CVT', ''),
(7, '8-speed automatic', '');

-- --------------------------------------------------------

--
-- Table structure for table `car_type`
--

CREATE TABLE `car_type` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `car_type`
--

INSERT INTO `car_type` (`id`, `type`) VALUES
(1, 'micro'),
(2, 'hatchback'),
(3, 'sedan'),
(4, 'suv'),
(5, 'mpv'),
(6, 'convertible'),
(7, 'wagon'),
(8, 'luxury'),
(9, 'antique'),
(10, 'coupe'),
(11, 'sports car'),
(12, 'supercar'),
(13, 'muscle car'),
(14, 'limousine'),
(15, 'hybrid car'),
(16, 'electric car'),
(17, 'diesel car');

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `id` int(11) NOT NULL,
  `color` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`id`, `color`) VALUES
(1, 'red'),
(2, 'white'),
(3, 'black'),
(4, 'red,white'),
(5, 'red,black'),
(6, 'white,black'),
(7, 'red,white,black'),
(8, 'black,grey');

-- --------------------------------------------------------

--
-- Table structure for table `engine_type`
--

CREATE TABLE `engine_type` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine_type`
--

INSERT INTO `engine_type` (`id`, `type`) VALUES
(1, 'petrol'),
(2, 'diesel'),
(3, 'both');

-- --------------------------------------------------------

--
-- Table structure for table `motor_company`
--

CREATE TABLE `motor_company` (
  `id` int(11) NOT NULL,
  `company` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `motor_company`
--

INSERT INTO `motor_company` (`id`, `company`) VALUES
(1, 'BMW moto'),
(2, 'Ducati');

-- --------------------------------------------------------

--
-- Table structure for table `motor_details`
--

CREATE TABLE `motor_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `company_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `engine` int(11) NOT NULL,
  `transmission` int(11) NOT NULL,
  `fual_tank_capacity` int(11) NOT NULL,
  `price` float NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `motor_details`
--

INSERT INTO `motor_details` (`id`, `name`, `company_id`, `color_id`, `engine`, `transmission`, `fual_tank_capacity`, `price`, `img`) VALUES
(1, 'Panigale V2', 2, 4, 6, 4, 10, 26700, '2_1_red.jpg,2_1_white.jpg'),
(2, 'New SuperSport 950 S', 2, 4, 6, 4, 10, 25000, '2_2_red.png,2_2_white.png'),
(3, 'Streetfighter V4 S', 2, 5, 6, 4, 10, 34000, '2_3_black.jpg,2_3_red.jpg'),
(4, 'Diavel V4', 2, 5, 6, 4, 10, 45000, '2_4_black.jpg,2_4_red.jpg'),
(5, 'Monster 937', 2, 5, 6, 4, 10, 19100, '2_5_black.jpg,2_5_red.jpg'),
(6, 'BMW S1000RR 2022', 1, 5, 6, 4, 10, 41000, '2_6_black.jpg,2_6_red.jpg'),
(7, 'BMW F 900 XR', 1, 5, 6, 4, 10, 26000, '2_7_black.jpg,2_7_red.jpg'),
(8, 'BMW S 1000 R', 1, 5, 6, 4, 10, 28000, '2_8_black.jpg,2_\n8_red.jpg'),
(9, 'F 900 R', 1, 5, 6, 4, 10, 20000, '2_9_black.jpg,2_9_red.jpg'),
(10, 'BMW R 1250 GS', 1, 8, 6, 4, 10, 28000, '2_10_black.jpg,2_10_grey.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `motor_engine_details`
--

CREATE TABLE `motor_engine_details` (
  `id` int(11) NOT NULL,
  `engine_type` varchar(255) NOT NULL,
  `displacement` varchar(255) NOT NULL,
  `maximum_power` varchar(255) NOT NULL,
  `maximum_torque` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `motor_engine_details`
--

INSERT INTO `motor_engine_details` (`id`, `engine_type`, `displacement`, `maximum_power`, `maximum_torque`) VALUES
(1, 'Liquid-cooled, four-cylinder in-line engine, four valves per cylinder, two overhead camshafts', '999cc', 'Approximately 207 horsepower (152 kW) at 13,500 rpm', 'Approximately 113 Nm at 11,000 rpm'),
(2, 'Liquid-cooled, four-stroke, parallel-twin engine', '895cc', 'Approximately 105 horsepower (77 kW) at 8,750 rpm', 'Approximately 92 Nm at 6,500 rpm'),
(3, 'Liquid-cooled, four-cylinder in-line engine, four valves per cylinder, two overhead camshafts', '999cc', 'Approximately 165 horsepower (121 kW) at 11,000 rpm', 'Approximately 114 Nm at 9,250 rpm'),
(4, 'Twin-cylinder, 4-stroke, L-Twin, Desmodromic, 4 valves per cylinder', '955cc', 'Approximately 155 horsepower (115 kW) at 10,750 rpm', 'Approximately 104 Nm at 9,000 rpm'),
(5, 'L-Twin cylinder, 4-stroke, Desmodromic distribution, 4 valves per cylinder, liquid-cooled', '937cc', 'Approximately 110 horsepower (81 kW) at 9,000 rpm', 'Approximately 93 Nm at 6,500 rpm'),
(6, 'Desmosedici Stradale 90° V4, rearward-rotating crankshaft, 4 Desmodromically actuated valves per cylinder, liquid-cooled', '1,103cc', 'Approximately 208 horsepower (153 kW) at 13,000 rpm', 'Approximately 123 Nm at 9,500 rpm'),
(7, 'Testastretta 11° L-Twin, 4 valves per cylinder, Desmodromic, liquid-cooled', '937cc', 'Approximately 111 horsepower (82 kW) at 9,250 rpm', 'Approximately 93 Nm at 6,500 rpm');

-- --------------------------------------------------------

--
-- Table structure for table `motor_transmission_details`
--

CREATE TABLE `motor_transmission_details` (
  `id` int(11) NOT NULL,
  `transmission_type` varchar(255) NOT NULL,
  `gears` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `motor_transmission_details`
--

INSERT INTO `motor_transmission_details` (`id`, `transmission_type`, `gears`) VALUES
(1, '6-speed with wet multiplate clutch system', ''),
(2, '6-speed with Ducati Quick Shift (DQS) up/down EVO', ''),
(3, '6-speed with straight-toothed pinion wheels and integrated shift assistant', ''),
(4, '6-speed constant mesh transmission', ''),
(5, '6-speed constant mesh transmission with straight-toothed pinion wheels and integrated shift assistant', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car_company`
--
ALTER TABLE `car_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_details`
--
ALTER TABLE `car_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `engine` (`engine`),
  ADD KEY `transmission` (`transmission`),
  ADD KEY `dimensions` (`dimensions`),
  ADD KEY `features_and_amenities` (`features_and_amenities`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `color_id` (`color_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `car_dimensions_details`
--
ALTER TABLE `car_dimensions_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_engine_details`
--
ALTER TABLE `car_engine_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `engine_type` (`engine_type`);

--
-- Indexes for table `car_features_and_amenities_details`
--
ALTER TABLE `car_features_and_amenities_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_transmission_details`
--
ALTER TABLE `car_transmission_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_type`
--
ALTER TABLE `car_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `engine_type`
--
ALTER TABLE `engine_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `motor_company`
--
ALTER TABLE `motor_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `motor_details`
--
ALTER TABLE `motor_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `engine` (`engine`),
  ADD KEY `transmission` (`transmission`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `color_id` (`color_id`);

--
-- Indexes for table `motor_engine_details`
--
ALTER TABLE `motor_engine_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `motor_transmission_details`
--
ALTER TABLE `motor_transmission_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car_company`
--
ALTER TABLE `car_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `car_details`
--
ALTER TABLE `car_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `car_dimensions_details`
--
ALTER TABLE `car_dimensions_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `car_engine_details`
--
ALTER TABLE `car_engine_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `car_features_and_amenities_details`
--
ALTER TABLE `car_features_and_amenities_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `car_transmission_details`
--
ALTER TABLE `car_transmission_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `car_type`
--
ALTER TABLE `car_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `engine_type`
--
ALTER TABLE `engine_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `motor_company`
--
ALTER TABLE `motor_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `motor_details`
--
ALTER TABLE `motor_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `motor_engine_details`
--
ALTER TABLE `motor_engine_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `motor_transmission_details`
--
ALTER TABLE `motor_transmission_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `car_details`
--
ALTER TABLE `car_details`
  ADD CONSTRAINT `car_details_ibfk_1` FOREIGN KEY (`engine`) REFERENCES `car_engine_details` (`id`),
  ADD CONSTRAINT `car_details_ibfk_2` FOREIGN KEY (`transmission`) REFERENCES `car_transmission_details` (`id`),
  ADD CONSTRAINT `car_details_ibfk_3` FOREIGN KEY (`dimensions`) REFERENCES `car_dimensions_details` (`id`),
  ADD CONSTRAINT `car_details_ibfk_4` FOREIGN KEY (`features_and_amenities`) REFERENCES `car_features_and_amenities_details` (`id`),
  ADD CONSTRAINT `car_details_ibfk_5` FOREIGN KEY (`company_id`) REFERENCES `car_company` (`id`),
  ADD CONSTRAINT `car_details_ibfk_6` FOREIGN KEY (`color_id`) REFERENCES `color` (`id`),
  ADD CONSTRAINT `car_details_ibfk_7` FOREIGN KEY (`type_id`) REFERENCES `car_type` (`id`);

--
-- Constraints for table `car_engine_details`
--
ALTER TABLE `car_engine_details`
  ADD CONSTRAINT `car_engine_details_ibfk_1` FOREIGN KEY (`engine_type`) REFERENCES `engine_type` (`id`);

--
-- Constraints for table `motor_details`
--
ALTER TABLE `motor_details`
  ADD CONSTRAINT `motor_details_ibfk_1` FOREIGN KEY (`engine`) REFERENCES `motor_engine_details` (`id`),
  ADD CONSTRAINT `motor_details_ibfk_2` FOREIGN KEY (`transmission`) REFERENCES `motor_transmission_details` (`id`),
  ADD CONSTRAINT `motor_details_ibfk_3` FOREIGN KEY (`company_id`) REFERENCES `motor_company` (`id`),
  ADD CONSTRAINT `motor_details_ibfk_4` FOREIGN KEY (`color_id`) REFERENCES `color` (`id`);
--
-- Database: `cardb2`
--
CREATE DATABASE IF NOT EXISTS `cardb2` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `cardb2`;

-- --------------------------------------------------------

--
-- Table structure for table `car_company`
--

CREATE TABLE `car_company` (
  `id` int(11) NOT NULL,
  `company` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `car_company`
--

INSERT INTO `car_company` (`id`, `company`) VALUES
(1, 'hyundai'),
(2, 'kia'),
(3, 'toyota');

-- --------------------------------------------------------

--
-- Table structure for table `car_details`
--

CREATE TABLE `car_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `company_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `engine` int(11) NOT NULL,
  `transmission` int(11) NOT NULL,
  `fuel_efficiency` int(11) NOT NULL,
  `dimensions` int(11) NOT NULL,
  `features_and_amenities` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `car_details`
--

INSERT INTO `car_details` (`id`, `name`, `company_id`, `color_id`, `type_id`, `engine`, `transmission`, `fuel_efficiency`, `dimensions`, `features_and_amenities`, `image`, `price`) VALUES
(1, 'Hyundai Accent 2021 1.4 MT ', 1, 6, 3, 2, 1, 6, 2, 2, '1_1_black.jpg,1_1_white.jpg', 24000),
(2, 'Hyundai Venue 2023 ', 1, 6, 4, 3, 1, 17, 1, 2, '1_2_black.jpg,1_2_white.jpg', 27000),
(3, 'Hyundai i10 2021 ', 1, 6, 2, 2, 1, 6, 1, 2, '1_3_black.jpg,1_3_white.jpg', 18500),
(4, 'Hyundai Creta ', 1, 6, 4, 4, 3, 8, 1, 2, '1_4_black.jpg,1_4_white.jpg', 18500),
(5, 'Hyundai Elantra ', 1, 6, 3, 9, 5, 12, 1, 2, '1_5_white.jpg,1_5_black.png', 30000),
(6, 'Hyundai Tucson 2022 ', 1, 6, 4, 8, 7, 12, 1, 2, '1_6_black.jpg,1_6_white.jpg', 38000),
(7, 'Hyundai Kona ', 1, 6, 4, 10, 5, 12, 1, 2, '1_7_black.jpg,1_7_white.jpg', 33000),
(8, 'Hyundai SantaFe ', 1, 6, 4, 11, 7, 12, 1, 2, '1_8_black.jpg,1_8_white.jpg', 45000),
(9, 'Toyota camry 2.0 Q', 3, 6, 3, 2, 2, 10, 1, 2, '1_9_black.jpeg,1_9_white.jpg', 51500),
(10, 'Toyota Corolla Altis 1.8V', 3, 6, 3, 2, 2, 10, 1, 2, '1_10_black.jpg,1_10_white.png', 33000),
(11, 'Toyota Vios 1.5 E CVT', 3, 6, 3, 2, 1, 10, 1, 2, '1_11_white.jpeg,1_11_black.jpg', 24400),
(12, 'Toyota Corolla Cross 1.8G ', 3, 6, 4, 2, 2, 10, 1, 2, '1_12_black.jpg,1_12_white.jpg', 32434.8),
(13, 'Toyota Land Cruiser LC300 ', 3, 6, 4, 2, 2, 10, 1, 2, '1_13_black.jpg,1_13_white.jpg', 186000),
(14, 'Toyota Innova 2.0E ', 3, 6, 5, 2, 2, 10, 1, 2, '1_14_black.jpg,1_14_white.jpg', 43000),
(15, 'Toyota Avanza Premio CVT ', 3, 6, 4, 2, 2, 10, 1, 2, '1_15_black.jpg,1_15_white.jpg', 26000),
(16, 'Toyota Hilux 2.8L ', 3, 6, 6, 2, 2, 10, 1, 2, '1_16_white.jpg,1_16_black.png', 43400),
(17, 'toyota wigo 1.2g mt ', 3, 6, 2, 2, 2, 10, 1, 2, '1_17_white.jpg,1_17_black.png', 15700),
(18, 'Kia Seltos ', 2, 6, 4, 2, 2, 10, 1, 2, '1_18_black.jpg,1_18_white.jpg', 30000),
(19, 'Kia Morning ', 2, 6, 2, 2, 2, 10, 1, 2, '1_19_black.jpg,1_19_white .jpg', 19000),
(20, 'Kia Soluto ', 2, 6, 3, 2, 2, 10, 1, 2, '1_20_black.png,1_20_white.jpg', 19800),
(21, 'Kia Sonet ', 2, 6, 4, 2, 2, 10, 1, 2, '1_21_black.jpg,1_21_white.jpg', 26200),
(22, 'Kia K3 ', 2, 6, 3, 2, 2, 10, 1, 2, '1_22_black.jpg,1_22_white.jpg', 27000),
(23, 'Kia Rondo ', 2, 6, 5, 2, 2, 10, 1, 2, '1_23_black.jpg,1_23_white.jpg', 27000),
(24, 'Kia Carens ', 2, 6, 5, 2, 2, 10, 1, 2, '1_24_black.png,1_24_white.png', 29700),
(25, 'Kia K5 ', 2, 6, 3, 2, 2, 10, 1, 2, '1_25_black.jpg,1_25_white.jpg', 42800),
(26, 'Kia Sportage ', 2, 6, 4, 2, 2, 10, 1, 2, 'Kia Sportage black.jpg,Kia Sportage white.jpg', 44261.6),
(27, 'Kia Sorento ', 2, 6, 4, 2, 2, 10, 1, 2, 'Kia Sorento black.jpg,Kia Sorento wwhite.jpg', 53042.3),
(28, 'Kia Sorento ', 2, 6, 4, 2, 2, 10, 1, 2, NULL, 48000),
(29, 'Kia Sportage ', 2, 6, 4, 2, 2, 10, 1, 2, NULL, 40200),
(30, 'Kia Sorento ', 2, 6, 4, 2, 2, 10, 1, 2, '26_1_black.jpg,26_1_white.jpg', 48000);

-- --------------------------------------------------------

--
-- Table structure for table `car_dimensions_details`
--

CREATE TABLE `car_dimensions_details` (
  `id` int(11) NOT NULL,
  `length` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `wheelbase` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `car_dimensions_details`
--

INSERT INTO `car_dimensions_details` (`id`, `length`, `width`, `height`, `wheelbase`) VALUES
(1, 4385, 1700, 1460, 2570),
(2, 3670, 1680, 1480, 2425),
(3, 3995, 1770, 1605, 2500),
(4, 4300, 1790, 1620, 2610),
(5, 4620, 1800, 1440, 2700),
(6, 4480, 1850, 1650, 2670),
(7, 4165, 1800, 1550, 2600),
(8, 4770, 1890, 1705, 2765);

-- --------------------------------------------------------

--
-- Table structure for table `car_engine_details`
--

CREATE TABLE `car_engine_details` (
  `id` int(11) NOT NULL,
  `engine_type` int(11) NOT NULL,
  `displacement` varchar(255) NOT NULL,
  `maximum_power` varchar(255) NOT NULL,
  `maximum_torque` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `car_engine_details`
--

INSERT INTO `car_engine_details` (`id`, `engine_type`, `displacement`, `maximum_power`, `maximum_torque`) VALUES
(1, 1, '1.4 L', 'Approximately 98 horsepower (hp) or 73 kW at 6,000 rpm', 'Approximately 132 Nm at 4,000 rpm'),
(2, 1, '1.0 L or 1.2 L ', 'Varies depending on the engine variant, typically around 66 to 84 horsepower (hp) or 49 to 63 kW', 'Varies depending on the engine variant, typically around 96 to 118 Nm'),
(3, 3, 'Petrol: 1.2-liter Kappa Dual VTVT engine or 1.0-liter Kappa Turbo GDi engine\r\nDiesel: 1.5-liter U2 CRDi engine', '', ''),
(4, 2, '1.5-liter U2 CRDi engine', '', ''),
(5, 1, 'Approximately 1.4 or 1.6 liters', 'Typically ranging from 123 to 138 horsepower (depending on the engine and market)', 'Typically ranging from 154 to 242 Nm (depending on the engine and market)'),
(6, 2, 'Approximately 1.5 liters', 'Typically ranging from 113 to 115 horsepower (depending on the market)', 'Typically ranging from 250 to 260 Nm (depending on the market)'),
(7, 1, '2.0-liter MPI (Multi-Point Injection) ', '', ''),
(8, 3, 'Petrol: 2.0-liter MPI (Multi-Point Injection) engine or 1.6-liter Turbo GDi (Gasoline Direct Injection) engine\nDiesel: 1.5-liter CRDi (Common Rail Direct Injection) engine', '', ''),
(9, 3, 'Petrol: 2.0-liter MPI (Multi-Point Injection) engine or 1.6-liter Turbo GDi (Gasoline Direct Injection) engine\r\nDiesel: 2.0-liter CRDi (Common Rail Direct Injection) engine or 2.0-liter R CRDi (Rail Common Rail Direct Injection) engine', '', ''),
(10, 3, 'Petrol: 1.6-liter Gamma II GDi (Gasoline Direct Injection) engine\r\nDiesel: 1.6-liter U2 CRDi (Common Rail Direct Injection) engine\r\n', '', ''),
(11, 3, 'Petrol: 2.5-liter Smartstream G2.5 MPi engine\r\nDiesel: 2.2-liter Smartstream D2.2 CRDi engine\r\n', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `car_features_and_amenities_details`
--

CREATE TABLE `car_features_and_amenities_details` (
  `id` int(11) NOT NULL,
  `entertainment_system` varchar(255) DEFAULT NULL,
  `safety_system` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `car_features_and_amenities_details`
--

INSERT INTO `car_features_and_amenities_details` (`id`, `entertainment_system`, `safety_system`) VALUES
(1, 'Touchscreen display, Bluetooth connectivity, USB/AUX ports.', 'ABS, airbags, rear parking sensors, electronic brake-force distribution (EBD), electronic stability control (ESC)'),
(2, 'Touchscreen display, Apple CarPlay and Android Auto compatibility, Bluetooth connectivity, USB/AUX ports', 'ABS, airbags, rear parking sensors, electronic stability control (ESC), hill-start assist control, and more'),
(3, 'Touchscreen display, Apple CarPlay and Android Auto compatibility, Bluetooth connectivity, USB/AUX ports', 'ABS with EBD, airbags, rear parking sensors, rearview camera, electronic stability control (ESC), hill-start assist control, and more.'),
(4, 'Touchscreen display, Apple CarPlay and Android Auto connectivity, Bluetooth, USB/AUX ports', 'ABS, airbags, Electronic Stability Control (ESC), blind-spot sensors, rearview camera, hill-start assist control, and various other safety features'),
(5, 'Touchscreen display, Apple CarPlay and Android Auto compatibility, Bluetooth connectivity, USB/AUX ports', 'ABS with EBD, airbags, rearview camera, electronic stability control (ESC), hill-start assist control, and more'),
(6, 'Touchscreen display, Apple CarPlay and Android Auto compatibility, Bluetooth connectivity, USB/AUX ports', 'ABS with EBD, airbags, rearview camera, electronic stability control (ESC), hill-start assist control, blind-spot monitoring, lane-keeping assist, and more'),
(7, 'Touchscreen display, Apple CarPlay and Android Auto compatibility, Bluetooth connectivity, USB/AUX ports', 'ABS with EBD, airbags, rearview camera, electronic stability control (ESC), hill-start assist control, blind-spot monitoring, lane-keeping assist, adaptive cruise control, and more');

-- --------------------------------------------------------

--
-- Table structure for table `car_transmission_details`
--

CREATE TABLE `car_transmission_details` (
  `id` int(11) NOT NULL,
  `transmission_type` varchar(255) NOT NULL,
  `gears` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `car_transmission_details`
--

INSERT INTO `car_transmission_details` (`id`, `transmission_type`, `gears`) VALUES
(1, '5-speed manual', ''),
(2, '5-speed automated manual ', ''),
(3, '6-speed manual', ''),
(4, '7-speed DCT ', ''),
(5, '6-speed automatic', ''),
(6, 'CVT', ''),
(7, '8-speed automatic', '');

-- --------------------------------------------------------

--
-- Table structure for table `car_type`
--

CREATE TABLE `car_type` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `car_type`
--

INSERT INTO `car_type` (`id`, `type`) VALUES
(1, 'micro'),
(2, 'hatchback'),
(3, 'sedan'),
(4, 'suv'),
(5, 'mpv'),
(6, 'convertible'),
(7, 'wagon'),
(8, 'luxury'),
(9, 'antique'),
(10, 'coupe'),
(11, 'sports car'),
(12, 'supercar'),
(13, 'muscle car'),
(14, 'limousine'),
(15, 'hybrid car'),
(16, 'electric car'),
(17, 'diesel car');

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `id` int(11) NOT NULL,
  `color` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`id`, `color`) VALUES
(1, 'red'),
(2, 'white'),
(3, 'black'),
(4, 'red,white'),
(5, 'red,black'),
(6, 'white,black'),
(7, 'red,white,black'),
(8, 'black,grey');

-- --------------------------------------------------------

--
-- Table structure for table `engine_type`
--

CREATE TABLE `engine_type` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine_type`
--

INSERT INTO `engine_type` (`id`, `type`) VALUES
(1, 'petrol'),
(2, 'diesel'),
(3, 'both');

-- --------------------------------------------------------

--
-- Table structure for table `motor_company`
--

CREATE TABLE `motor_company` (
  `id` int(11) NOT NULL,
  `company` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `motor_company`
--

INSERT INTO `motor_company` (`id`, `company`) VALUES
(1, 'BMW moto'),
(2, 'Ducati');

-- --------------------------------------------------------

--
-- Table structure for table `motor_details`
--

CREATE TABLE `motor_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `company_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `engine` int(11) NOT NULL,
  `transmission` int(11) NOT NULL,
  `fual_tank_capacity` int(11) NOT NULL,
  `price` float NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `motor_details`
--

INSERT INTO `motor_details` (`id`, `name`, `company_id`, `color_id`, `engine`, `transmission`, `fual_tank_capacity`, `price`, `img`) VALUES
(1, 'Panigale V2', 2, 4, 6, 4, 10, 26700, '2_1_red.jpg,2_1_white.jpg'),
(2, 'New SuperSport 950 S', 2, 4, 6, 4, 10, 25000, '2_2_red.png,2_2_white.png'),
(3, 'Streetfighter V4 S', 2, 5, 6, 4, 10, 34000, '2_3_black.jpg,2_3_red.jpg'),
(4, 'Diavel V4', 2, 5, 6, 4, 10, 45000, '2_4_black.jpg,2_4_red.jpg'),
(5, 'Monster 937', 2, 5, 6, 4, 10, 19100, '2_5_black.jpg,2_5_red.jpg'),
(6, 'BMW S1000RR 2022', 1, 5, 6, 4, 10, 41000, '2_6_black.jpg,2_6_red.jpg'),
(7, 'BMW F 900 XR', 1, 5, 6, 4, 10, 26000, '2_7_black.jpg,2_7_red.jpg'),
(8, 'BMW S 1000 R', 1, 5, 6, 4, 10, 28000, '2_8_black.jpg,2_\n8_red.jpg'),
(9, 'F 900 R', 1, 5, 6, 4, 10, 20000, '2_9_black.jpg,2_9_red.jpg'),
(10, 'BMW R 1250 GS', 1, 8, 6, 4, 10, 28000, '2_10_black.jpg,2_10_grey.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `motor_engine_details`
--

CREATE TABLE `motor_engine_details` (
  `id` int(11) NOT NULL,
  `engine_type` varchar(255) NOT NULL,
  `displacement` varchar(255) NOT NULL,
  `maximum_power` varchar(255) NOT NULL,
  `maximum_torque` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `motor_engine_details`
--

INSERT INTO `motor_engine_details` (`id`, `engine_type`, `displacement`, `maximum_power`, `maximum_torque`) VALUES
(1, 'Liquid-cooled, four-cylinder in-line engine, four valves per cylinder, two overhead camshafts', '999cc', 'Approximately 207 horsepower (152 kW) at 13,500 rpm', 'Approximately 113 Nm at 11,000 rpm'),
(2, 'Liquid-cooled, four-stroke, parallel-twin engine', '895cc', 'Approximately 105 horsepower (77 kW) at 8,750 rpm', 'Approximately 92 Nm at 6,500 rpm'),
(3, 'Liquid-cooled, four-cylinder in-line engine, four valves per cylinder, two overhead camshafts', '999cc', 'Approximately 165 horsepower (121 kW) at 11,000 rpm', 'Approximately 114 Nm at 9,250 rpm'),
(4, 'Twin-cylinder, 4-stroke, L-Twin, Desmodromic, 4 valves per cylinder', '955cc', 'Approximately 155 horsepower (115 kW) at 10,750 rpm', 'Approximately 104 Nm at 9,000 rpm'),
(5, 'L-Twin cylinder, 4-stroke, Desmodromic distribution, 4 valves per cylinder, liquid-cooled', '937cc', 'Approximately 110 horsepower (81 kW) at 9,000 rpm', 'Approximately 93 Nm at 6,500 rpm'),
(6, 'Desmosedici Stradale 90° V4, rearward-rotating crankshaft, 4 Desmodromically actuated valves per cylinder, liquid-cooled', '1,103cc', 'Approximately 208 horsepower (153 kW) at 13,000 rpm', 'Approximately 123 Nm at 9,500 rpm'),
(7, 'Testastretta 11° L-Twin, 4 valves per cylinder, Desmodromic, liquid-cooled', '937cc', 'Approximately 111 horsepower (82 kW) at 9,250 rpm', 'Approximately 93 Nm at 6,500 rpm');

-- --------------------------------------------------------

--
-- Table structure for table `motor_transmission_details`
--

CREATE TABLE `motor_transmission_details` (
  `id` int(11) NOT NULL,
  `transmission_type` varchar(255) NOT NULL,
  `gears` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `motor_transmission_details`
--

INSERT INTO `motor_transmission_details` (`id`, `transmission_type`, `gears`) VALUES
(1, '6-speed with wet multiplate clutch system', ''),
(2, '6-speed with Ducati Quick Shift (DQS) up/down EVO', ''),
(3, '6-speed with straight-toothed pinion wheels and integrated shift assistant', ''),
(4, '6-speed constant mesh transmission', ''),
(5, '6-speed constant mesh transmission with straight-toothed pinion wheels and integrated shift assistant', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car_company`
--
ALTER TABLE `car_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_details`
--
ALTER TABLE `car_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `engine` (`engine`),
  ADD KEY `transmission` (`transmission`),
  ADD KEY `dimensions` (`dimensions`),
  ADD KEY `features_and_amenities` (`features_and_amenities`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `color_id` (`color_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `car_dimensions_details`
--
ALTER TABLE `car_dimensions_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_engine_details`
--
ALTER TABLE `car_engine_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `engine_type` (`engine_type`);

--
-- Indexes for table `car_features_and_amenities_details`
--
ALTER TABLE `car_features_and_amenities_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_transmission_details`
--
ALTER TABLE `car_transmission_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_type`
--
ALTER TABLE `car_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `engine_type`
--
ALTER TABLE `engine_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `motor_company`
--
ALTER TABLE `motor_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `motor_details`
--
ALTER TABLE `motor_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `engine` (`engine`),
  ADD KEY `transmission` (`transmission`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `color_id` (`color_id`);

--
-- Indexes for table `motor_engine_details`
--
ALTER TABLE `motor_engine_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `motor_transmission_details`
--
ALTER TABLE `motor_transmission_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car_company`
--
ALTER TABLE `car_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `car_details`
--
ALTER TABLE `car_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `car_dimensions_details`
--
ALTER TABLE `car_dimensions_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `car_engine_details`
--
ALTER TABLE `car_engine_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `car_features_and_amenities_details`
--
ALTER TABLE `car_features_and_amenities_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `car_transmission_details`
--
ALTER TABLE `car_transmission_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `car_type`
--
ALTER TABLE `car_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `engine_type`
--
ALTER TABLE `engine_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `motor_company`
--
ALTER TABLE `motor_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `motor_details`
--
ALTER TABLE `motor_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `motor_engine_details`
--
ALTER TABLE `motor_engine_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `motor_transmission_details`
--
ALTER TABLE `motor_transmission_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `car_details`
--
ALTER TABLE `car_details`
  ADD CONSTRAINT `car_details_ibfk_1` FOREIGN KEY (`engine`) REFERENCES `car_engine_details` (`id`),
  ADD CONSTRAINT `car_details_ibfk_2` FOREIGN KEY (`transmission`) REFERENCES `car_transmission_details` (`id`),
  ADD CONSTRAINT `car_details_ibfk_3` FOREIGN KEY (`dimensions`) REFERENCES `car_dimensions_details` (`id`),
  ADD CONSTRAINT `car_details_ibfk_4` FOREIGN KEY (`features_and_amenities`) REFERENCES `car_features_and_amenities_details` (`id`),
  ADD CONSTRAINT `car_details_ibfk_5` FOREIGN KEY (`company_id`) REFERENCES `car_company` (`id`),
  ADD CONSTRAINT `car_details_ibfk_6` FOREIGN KEY (`color_id`) REFERENCES `color` (`id`),
  ADD CONSTRAINT `car_details_ibfk_7` FOREIGN KEY (`type_id`) REFERENCES `car_type` (`id`);

--
-- Constraints for table `car_engine_details`
--
ALTER TABLE `car_engine_details`
  ADD CONSTRAINT `car_engine_details_ibfk_1` FOREIGN KEY (`engine_type`) REFERENCES `engine_type` (`id`);

--
-- Constraints for table `motor_details`
--
ALTER TABLE `motor_details`
  ADD CONSTRAINT `motor_details_ibfk_1` FOREIGN KEY (`engine`) REFERENCES `motor_engine_details` (`id`),
  ADD CONSTRAINT `motor_details_ibfk_2` FOREIGN KEY (`transmission`) REFERENCES `motor_transmission_details` (`id`),
  ADD CONSTRAINT `motor_details_ibfk_3` FOREIGN KEY (`company_id`) REFERENCES `motor_company` (`id`),
  ADD CONSTRAINT `motor_details_ibfk_4` FOREIGN KEY (`color_id`) REFERENCES `color` (`id`);
--
-- Database: `cosodulieu`
--
CREATE DATABASE IF NOT EXISTS `cosodulieu` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `cosodulieu`;

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(255) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `hang` varchar(255) NOT NULL,
  `mau` varchar(255) NOT NULL,
  `loai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `ten`, `hang`, `mau`, `loai`) VALUES
(1, 'vios', 'toyota', 'trang', 'sedan'),
(3, 'corollaaltis', 'toyota', 'den', 'sedan'),
(4, 'camry', 'toyota', 'trang', 'sedan'),
(5, 'hilux', 'toyota', 'xanh', 'bantai'),
(6, 'ambiente', 'ford', 'trang', 'sedan'),
(7, 'sport', 'ford', 'den', 'bantai'),
(8, 'xlt', 'ford', 'xanh', 'bantai'),
(9, 'xl', 'ford', 'trang', 'bantai'),
(10, 'titaniumx', 'ford', 'den', 'sedan'),
(11, 'kicksepower', 'nisan', 'vang', 'sedan'),
(12, 'navara', 'nisan', 'den', 'bantai'),
(13, 'almera', 'nisan', 'trang', 'sedan');

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `id` int(11) NOT NULL,
  `color` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phonebook`
--

CREATE TABLE `phonebook` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phonenumber` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phonebook`
--

INSERT INTO `phonebook` (`id`, `name`, `phonenumber`) VALUES
(4, 'da4', '0333780403'),
(5, 'da10', '0333880610'),
(6, 'da11', '0333780505'),
(7, 'da13', '0333780313'),
(9, 'da7', '0333780309'),
(10, 'da20', '0333780404'),
(14, 'da60', '0333781920'),
(16, 'da677', '0444780303');

-- --------------------------------------------------------

--
-- Table structure for table `smartphone`
--

CREATE TABLE `smartphone` (
  `id` int(255) NOT NULL,
  `iphone` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `warranty` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `smartphone`
--

INSERT INTO `smartphone` (`id`, `iphone`, `image`, `price`, `warranty`, `status`) VALUES
(1, 'iphone5', 'iphone5.jpg', '5000000', '8 thang', '1'),
(2, 'iphone6', 'iphone6.jpg', '6000000', '12 thang', '0'),
(3, 'iphone7', 'iphone7.jpg', '7000000', '12 thang', '1'),
(4, 'iphone8', 'iphone8.jpg', '8000000', '12 thang', '0'),
(5, 'iphoneX', 'iphonex.jpg', '9000000', '12 thang', '1'),
(6, 'iphoneXs', 'iphonexs.jpg', '9000000', '12 thang', '0'),
(8, 'iphone15', 'iphone15.jfif', '40000000', '12 thang', '1');

-- --------------------------------------------------------

--
-- Table structure for table `thanhvien`
--

CREATE TABLE `thanhvien` (
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thanhvien`
--

INSERT INTO `thanhvien` (`email`, `password`) VALUES
('da@gmail.com', '$2y$10$VIUnYdw6CqZYTtYvlArixuU18SdhB1k/zV8k9xvyumepO8KR.Cs/y');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phonebook`
--
ALTER TABLE `phonebook`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phonenumber` (`phonenumber`);

--
-- Indexes for table `smartphone`
--
ALTER TABLE `smartphone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phonebook`
--
ALTER TABLE `phonebook`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `smartphone`
--
ALTER TABLE `smartphone`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `laravel`
--
CREATE DATABASE IF NOT EXISTS `laravel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravel`;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `author` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` decimal(6,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `author`, `image`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Slayer', 'Kiersten White', 'https://bookcart.azurewebsites.net/Upload/6d91b7b0-b8d1-41ad-a0ef-65e2324fc1b3Slayer.jpg', 1314.00, '2024-03-23 05:56:33', '2024-03-23 05:56:33'),
(2, 'The Simple Wild', 'KA Tucker', 'https://bookcart.azurewebsites.net/Upload/b868eb26-f12c-4dcf-ba19-03e0d6cafb8d36373564.jpg', 1153.00, '2024-03-23 05:56:33', '2024-03-23 05:56:33'),
(3, 'The Hate You Give', 'Angie Thomas', 'https://bookcart.azurewebsites.net/Upload/3d894fa1-8746-4443-b244-99624cc39f1fq1we.jpg', 227.00, '2024-03-23 05:56:33', '2024-03-23 05:56:33'),
(4, 'The Martian', 'Andy Weir', 'https://bookcart.azurewebsites.net/Upload/5b7162d6-2780-461b-be6f-e4debac083ad18007564.jpg', 348.00, '2024-03-23 05:56:33', '2024-03-23 05:56:33'),
(5, 'The Beholder', 'Anna Bright', 'https://bookcart.azurewebsites.net/Upload/5ba1968d-a7f5-4a04-99c2-281088b8532fqq.jpg', 998.00, '2024-03-23 05:56:33', '2024-03-23 05:56:33');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_03_23_125431_create_books_table', 1);

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('KrhCfL07VYvgOfO7NgYq21er9jrB6VjgMJMcFvoy', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieUJtVHNFN0FybUdFaDRLM1Q2dEZHUFhPQnpsdVBHWnQ4ektCZFNSSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG9wcGluZy1jYXJ0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo0OiJjYXJ0IjthOjI6e2k6MTthOjQ6e3M6NDoibmFtZSI7czo2OiJTbGF5ZXIiO3M6ODoicXVhbnRpdHkiO2k6MjtzOjU6InByaWNlIjtzOjc6IjEzMTQuMDAiO3M6NToiaW1hZ2UiO3M6ODg6Imh0dHBzOi8vYm9va2NhcnQuYXp1cmV3ZWJzaXRlcy5uZXQvVXBsb2FkLzZkOTFiN2IwLWI4ZDEtNDFhZC1hMGVmLTY1ZTIzMjRmYzFiM1NsYXllci5qcGciO31pOjI7YTo0OntzOjQ6Im5hbWUiO3M6MTU6IlRoZSBTaW1wbGUgV2lsZCI7czo4OiJxdWFudGl0eSI7aToxO3M6NToicHJpY2UiO3M6NzoiMTE1My4wMCI7czo1OiJpbWFnZSI7czo5MDoiaHR0cHM6Ly9ib29rY2FydC5henVyZXdlYnNpdGVzLm5ldC9VcGxvYWQvYjg2OGViMjYtZjEyYy00ZGNmLWJhMTktMDNlMGQ2Y2FmYjhkMzYzNzM1NjQuanBnIjt9fX0=', 1711452482),
('m3dQPiAcnqOqf851lVSdriDQ0T8aITP0keoTmd4F', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidDNKODZkTncxMTdzREc5bWhLa3VvQmpnOURuZ2p0eHZxQ3JPejhzVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG9wcGluZy1jYXJ0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo0OiJjYXJ0IjthOjM6e2k6MTthOjQ6e3M6NDoibmFtZSI7czo2OiJTbGF5ZXIiO3M6ODoicXVhbnRpdHkiO2k6MTtzOjU6InByaWNlIjtzOjc6IjEzMTQuMDAiO3M6NToiaW1hZ2UiO3M6ODg6Imh0dHBzOi8vYm9va2NhcnQuYXp1cmV3ZWJzaXRlcy5uZXQvVXBsb2FkLzZkOTFiN2IwLWI4ZDEtNDFhZC1hMGVmLTY1ZTIzMjRmYzFiM1NsYXllci5qcGciO31pOjQ7YTo0OntzOjQ6Im5hbWUiO3M6MTE6IlRoZSBNYXJ0aWFuIjtzOjg6InF1YW50aXR5IjtpOjE7czo1OiJwcmljZSI7czo2OiIzNDguMDAiO3M6NToiaW1hZ2UiO3M6OTA6Imh0dHBzOi8vYm9va2NhcnQuYXp1cmV3ZWJzaXRlcy5uZXQvVXBsb2FkLzViNzE2MmQ2LTI3ODAtNDYxYi1iZTZmLWU0ZGViYWMwODNhZDE4MDA3NTY0LmpwZyI7fWk6NTthOjQ6e3M6NDoibmFtZSI7czoxMjoiVGhlIEJlaG9sZGVyIjtzOjg6InF1YW50aXR5IjtpOjE7czo1OiJwcmljZSI7czo2OiI5OTguMDAiO3M6NToiaW1hZ2UiO3M6ODQ6Imh0dHBzOi8vYm9va2NhcnQuYXp1cmV3ZWJzaXRlcy5uZXQvVXBsb2FkLzViYTE5NjhkLWE3ZjUtNGEwNC05OWMyLTI4MTA4OGI4NTMyZnFxLmpwZyI7fX19', 1711202549),
('xcZT6dCfF3Cxuv3TJoUqSrHDukFiwVNqe05toKTG', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUmxsbmtjc2M4MnlabGdRUkRvUExPUmtLeUU1ZzZEV0lYRUYzNTJGciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1711460780),
('xqxgXiCXbcgr0MUgRiTeQQxcfIG15OXyN8025JA2', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaWQ4bmhvb3JyclJ1RUI3ZkZwTFFCd1ZZdTdhWFNYUFNFVnZTRlp1RSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1711451760);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
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
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"cardb\",\"table\":\"car_details\"},{\"db\":\"cardb2\",\"table\":\"car_details\"},{\"db\":\"cardb2\",\"table\":\"car_dimensions_details\"},{\"db\":\"cardb2\",\"table\":\"car_company\"},{\"db\":\"cardb\",\"table\":\"motor_details\"},{\"db\":\"cardb\",\"table\":\"motor_company\"},{\"db\":\"cardb\",\"table\":\"color\"},{\"db\":\"cardb\",\"table\":\"motor_engine_details\"},{\"db\":\"cardb\",\"table\":\"motor_transmission_details\"},{\"db\":\"cardb\",\"table\":\"car_dimensions_details\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-05-01 13:46:51', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `Personid` int(11) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`Personid`, `LastName`, `FirstName`, `Age`, `Address`) VALUES
(2, 'le', 'anh', 18, 'hcm'),
(3, 'anh 3', 'le', 21, 'hue'),
(4, 'le', 'anh 4', 23, 'ha noi'),
(5, 'anh5', 'nguyen', 25, 'hcm'),
(6, 'anh', 'nguyen ', 27, 'hanoi'),
(7, 'anh9', 'nguyen', 32, 'hcm'),
(8, 'anh9', 'nguyen', 33, 'hcm'),
(9, 'anh9', 'nguyen', 34, 'hanoi'),
(10, 'anh9', 'nguyen', 35, 'hanoi');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'da', '$2y$10$/QCnbDnuCLoSD6GSAgQpF.L5mGsfzGU336HdWkVfaRhFgoe7FY9dW', '2024-03-16 18:57:37'),
(2, 'da2', '$2y$10$pfz98aE35JF6q52FWvnroevnLUjP5f0OYpIS5Yr9AMn5sGkPx8Qsi', '2024-03-16 18:58:55'),
(3, 'da4', '$2y$10$ePOyqlWU4RQvdXH06wTA7.n698l51TQN/KIO9eNCXra/MRYGJgXeW', '2024-03-16 20:06:22'),
(4, 'da5', '$2y$10$iWkvxPRQ.ktATEKzq6tgievBw1R6a9Om8/z2Gz01PyVsNE1bmMetG', '2024-03-16 20:35:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`Personid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `persons`
--
ALTER TABLE `persons`
  MODIFY `Personid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `testdb`
--
CREATE DATABASE IF NOT EXISTS `testdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `testdb`;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('QQ3lGKWnMPc5Jem81u0HATx8EGyHN6MEmq85GqAG', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZmppNHhCSDZTUjBSVzhvQ2tFcmhCWnp6ak1zU1VOaWlCTDFmRDEzRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1711029968);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
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
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `testing`
--
CREATE DATABASE IF NOT EXISTS `testing` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `testing`;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_03_19_121048_create_students_table', 1),
(5, '2024_03_23_105257_create_products_table', 1);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `price` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`name`, `description`, `photo`, `price`) VALUES
('iphone5', 'iphonne5', 'iphone5.jpg', 9999.99),
('iphone6', 'iphone6', 'iphone6.jpg', 6000.00);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ABkBTxzwB9EYyV1WbazmHWtxiGd6TIoctMp9V4Y6', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicXpOYjVORTVzQUVTZWhmWFhaa3pzbGtveTFRaXFxT0hCbGhFV3JCVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1711193989);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `student_email` varchar(255) NOT NULL,
  `student_gender` enum('Male','Female') NOT NULL,
  `student_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
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
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
