-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: May 05, 2024 at 12:01 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pkl`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('rm11pda19mcqgfr89m3qeh8b33c7pna5', '::1', 1714900924, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343930303932343b7265646972656374696f6e7c4e3b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2266643839636138326464353038393531643234316461303438363463626330363936323563356332646462356263383064623266323964366537326162343134646531363639616231363534633361363730383036306538323339643830386630656161336538363235383566663038633936663364333261656631373965344e7a4a56755734684247354336514a332f6a7050724d3462534b6e764236515a7033337139455450584350716577572b35566557554f37614b6a5072695348456a796e4c4d794270366a51436f7372494c2b485651774458555166312b684c33784f77646464633970582b54626267326c62786c396c46694b57445a33334466223b73746f72655f666c6173687c733a32363a2250656e646166746172616e20616b756e20626572686173696c21223b5f5f63695f766172737c613a313a7b733a31313a2273746f72655f666c617368223b733a333a226f6c64223b7d),
('h2bvsu6m6d411fg86vl19tjc4geqdud5', '::1', 1714902454, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343930323435343b7265646972656374696f6e7c4e3b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2235386339636638313136346464303732313039353436303031306161313833383938656161316235633564663734366538613338336236393066643062326665663137326466663161356539656330303137633464626635313435633637636633643431376464636138396264376131626439326361336438656163383963656d776637356536557042332b3638767150683656366c5674694656777a78687659656d635159536b72344167677a484172727a4338796e4e486d70783278346a506e6a6a612f4445712b2f2f704f41586469626e5a2b6e4d442b4d643465496b537a753379623149713268717a6d797630776c764771514444716966632f424d223b636172745f636f6e74656e74737c613a383a7b733a31303a22636172745f746f74616c223b643a3137303030303b733a31313a22746f74616c5f6974656d73223b643a363b733a33323a226135626663396530373936346638646464656239356663353834636439363564223b613a363a7b733a323a226964223b733a323a223337223b733a333a22717479223b643a313b733a353a227072696365223b643a32303030303b733a343a226e616d65223b733a31333a2244696d73756d204d656e746169223b733a353a22726f776964223b733a33323a226135626663396530373936346638646464656239356663353834636439363564223b733a383a22737562746f74616c223b643a32303030303b7d733a33323a226135373731626365393365323030633336663763643964666430653564656161223b613a363a7b733a323a226964223b733a323a223338223b733a333a22717479223b643a313b733a353a227072696365223b643a33353030303b733a343a226e616d65223b733a31323a22477a6f7961204d656e746169223b733a353a22726f776964223b733a33323a226135373731626365393365323030633336663763643964666430653564656161223b733a383a22737562746f74616c223b643a33353030303b7d733a33323a226436376438616234663463313062663232616133353365323738373931333363223b613a363a7b733a323a226964223b733a323a223339223b733a333a22717479223b643a313b733a353a227072696365223b643a32353030303b733a343a226e616d65223b733a32303a2248616d70657273204d656e746169206973692033223b733a353a22726f776964223b733a33323a226436376438616234663463313062663232616133353365323738373931333363223b733a383a22737562746f74616c223b643a32353030303b7d733a33323a226637313737313633633833336466663462333866633864323837326631656336223b613a363a7b733a323a226964223b733a323a223434223b733a333a22717479223b643a313b733a353a227072696365223b643a31333030303b733a343a226e616d65223b733a32323a224d656e74616920526963652046726965642054756e61223b733a353a22726f776964223b733a33323a226637313737313633633833336466663462333866633864323837326631656336223b733a383a22737562746f74616c223b643a31333030303b7d733a33323a226136383465636565653736666335323237373332383661383935626338343336223b613a363a7b733a323a226964223b733a323a223534223b733a333a22717479223b643a313b733a353a227072696365223b643a31373030303b733a343a226e616d65223b733a31313a2253617573204d656e746169223b733a353a22726f776964223b733a33323a226136383465636565653736666335323237373332383661383935626338343336223b733a383a22737562746f74616c223b643a31373030303b7d733a33323a226634353763353435613964656438386631386563656534373134356137326330223b613a363a7b733a323a226964223b733a323a223439223b733a333a22717479223b643a313b733a353a227072696365223b643a36303030303b733a343a226e616d65223b733a33303a224f72692044696d73756d2046726f7a656e20466f6f64204e6f6e6153616c223b733a353a22726f776964223b733a33323a226634353763353435613964656438386631386563656534373134356137326330223b733a383a22737562746f74616c223b643a36303030303b7d7d6f726465725f7175616e746974797c613a363a7b693a33373b613a323a7b733a333a22717479223b643a313b733a353a227072696365223b643a32303030303b7d693a33383b613a323a7b733a333a22717479223b643a313b733a353a227072696365223b643a33353030303b7d693a33393b613a323a7b733a333a22717479223b643a313b733a353a227072696365223b643a32353030303b7d693a34343b613a323a7b733a333a22717479223b643a313b733a353a227072696365223b643a31333030303b7d693a35343b613a323a7b733a333a22717479223b643a313b733a353a227072696365223b643a31373030303b7d693a34393b613a323a7b733a333a22717479223b643a313b733a353a227072696365223b643a36303030303b7d7d746f74616c5f70726963657c643a3137303030303b),
('3fj3kodl5q100i7m54l0dur9oqariidl', '::1', 1714902486, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343930323435343b7265646972656374696f6e7c4e3b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2235386339636638313136346464303732313039353436303031306161313833383938656161316235633564663734366538613338336236393066643062326665663137326466663161356539656330303137633464626635313435633637636633643431376464636138396264376131626439326361336438656163383963656d776637356536557042332b3638767150683656366c5674694656777a78687659656d635159536b72344167677a484172727a4338796e4e486d70783278346a506e6a6a612f4445712b2f2f704f41586469626e5a2b6e4d442b4d643465496b537a753379623149713268717a6d797630776c764771514444716966632f424d223b);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `subject` varchar(128) DEFAULT NULL,
  `email` varchar(64) NOT NULL,
  `message` mediumtext NOT NULL,
  `contact_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `reply_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) NOT NULL,
  `name` varchar(191) NOT NULL,
  `code` varchar(32) NOT NULL,
  `credit` decimal(8,2) NOT NULL,
  `start_date` date NOT NULL,
  `expired_date` date NOT NULL,
  `is_active` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `phone_number` varchar(32) DEFAULT NULL,
  `address` varchar(191) NOT NULL,
  `profile_picture` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `name`, `phone_number`, `address`, `profile_picture`) VALUES
(13, 14, 'Zavira Raihana Salsabila', '082133983352', 'Winong, Kaliwungu', 'femavatar.png'),
(14, 15, 'Bayu Angga Saputra', '6287876951117', 'Jekulo', NULL),
(15, 16, 'Calvin Prakoso Setyo Aji', '+6289514774421', 'Jl. Kudus Permai No.180', NULL),
(16, 17, 'akuntanpkl123', '15415151123154', 'HVDgvdTSUVFUDWvhdbwHDB', NULL),
(17, 18, 'customer1', '54125562552562', 'Jakarta', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `coupon_id` bigint(20) DEFAULT NULL,
  `order_number` varchar(16) NOT NULL,
  `order_status` enum('1','2','3','4','5') DEFAULT '1',
  `order_date` datetime NOT NULL,
  `total_price` int(50) DEFAULT NULL,
  `total_items` int(10) DEFAULT NULL,
  `payment_method` int(11) DEFAULT 1,
  `delivery_data` text DEFAULT NULL,
  `delivered_date` datetime DEFAULT NULL,
  `finish_date` datetime DEFAULT NULL,
  `provinsi` varchar(255) NOT NULL,
  `kabupaten` varchar(255) NOT NULL,
  `expedisi` varchar(255) DEFAULT NULL,
  `ongkir` int(11) DEFAULT NULL,
  `payment_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `coupon_id`, `order_number`, `order_status`, `order_date`, `total_price`, `total_items`, `payment_method`, `delivery_data`, `delivered_date`, `finish_date`, `provinsi`, `kabupaten`, `expedisi`, `ongkir`, `payment_link`) VALUES
(46, 14, NULL, 'UPZ28224214587', '3', '2024-02-28 21:10:31', 70000, 2, 2, '{\"customer\":{\"name\":\"Zavira Raihana Salsabila\",\"phone_number\":\"082133983352\",\"address\":\"Winong, Kaliwungu\"},\"note\":\"\"}', NULL, NULL, 'Jawa Tengah', 'Kudus', 'pos', 28000, ''),
(47, 14, NULL, 'DWX29224914019', '3', '2024-02-29 22:51:36', 277000, 9, 2, '{\"customer\":{\"name\":\"Zavira Raihana Salsabila\",\"phone_number\":\"082133983352\",\"address\":\"Winong, Kaliwungu\"},\"note\":\"\"}', NULL, NULL, 'Jawa Tengah', 'Kudus', 'tiki', 22000, ''),
(48, 14, NULL, 'JVE4324314297', '3', '2024-03-04 12:17:12', 39000, 3, 2, '{\"customer\":{\"name\":\"Zavira Raihana Salsabila\",\"phone_number\":\"082133983352\",\"address\":\"Dukuh Winong Desa Kaliwungu RT 4 RW 7 no. 60, Kec. Kaliwungu, Kabupaten Kudus, Jawa Tengah 59361\"},\"note\":\"\"}', NULL, NULL, 'Jawa Tengah', 'Kudus', 'tiki', 22000, ''),
(49, 14, NULL, 'YAX6324314089', '3', '2024-03-06 11:39:20', 155000, 3, 2, '{\"customer\":{\"name\":\"Zavira Raihana Salsabila\",\"phone_number\":\"082133983352\",\"address\":\"Buton\"},\"note\":\"\"}', NULL, NULL, 'Sulawesi Tenggara', 'Buton Utara', 'tiki', 88000, ''),
(50, 14, NULL, 'OWE12324214973', '1', '2024-03-12 12:11:04', 120000, 2, 2, '{\"customer\":{\"name\":\"Zavira Raihana Salsabila\",\"phone_number\":\"00000000000000000000000000\",\"address\":\"Mayong, Jepara\"},\"note\":\"\"}', NULL, NULL, 'Jawa Tengah', 'Jepara', 'tiki', 48000, ''),
(51, 14, NULL, 'PLQ15324214615', '1', '2024-03-15 10:23:11', 48000, 2, 2, '{\"customer\":{\"name\":\"Zavira Raihana Salsabila\",\"phone_number\":\"082133983352\",\"address\":\"Winong, Kaliwungu\"},\"note\":\"\"}', NULL, NULL, 'Jawa Tengah', 'Kudus', 'pos', 28000, ''),
(52, 18, NULL, 'MNC5524618498', '1', '2024-05-05 16:47:34', 170000, 6, 1, '{\"customer\":{\"name\":\"customer1\",\"phone_number\":\"54125562552562\",\"address\":\"SMA 1 Bae, Bae, Kudus\"},\"note\":\"\"}', NULL, NULL, 'Jawa Tengah', 'Kudus', 'pos', 28000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `order_qty` int(10) NOT NULL,
  `order_price` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `order_qty`, `order_price`) VALUES
(60, 41, 37, 1, 20000),
(61, 42, 38, 1, 35000),
(62, 42, 43, 1, 35000),
(63, 42, 55, 1, 20000),
(64, 43, 38, 1, 35000),
(65, 43, 40, 1, 45000),
(66, 45, 37, 2, 20000),
(67, 46, 39, 1, 25000),
(68, 46, 40, 1, 45000),
(69, 47, 46, 1, 60000),
(70, 47, 48, 1, 60000),
(71, 47, 38, 1, 35000),
(72, 47, 37, 1, 20000),
(73, 47, 50, 1, 20000),
(74, 47, 54, 1, 17000),
(75, 47, 59, 1, 25000),
(76, 47, 58, 1, 20000),
(77, 47, 51, 1, 20000),
(78, 48, 41, 1, 13000),
(79, 48, 42, 1, 13000),
(80, 48, 44, 1, 13000),
(81, 49, 43, 1, 35000),
(82, 49, 47, 1, 60000),
(83, 49, 46, 1, 60000),
(84, 50, 47, 1, 60000),
(85, 50, 48, 1, 60000),
(86, 51, 42, 1, 13000),
(87, 51, 38, 1, 35000),
(88, 52, 37, 1, 20000),
(89, 52, 38, 1, 35000),
(90, 52, 39, 1, 25000),
(91, 52, 44, 1, 13000),
(92, 52, 54, 1, 17000),
(93, 52, 49, 1, 60000);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `payment_price` decimal(8,2) DEFAULT NULL,
  `payment_date` datetime NOT NULL,
  `picture_name` varchar(191) DEFAULT NULL,
  `payment_status` enum('1','2','3') DEFAULT '1',
  `confirmed_date` datetime DEFAULT NULL,
  `payment_data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `category_id` int(10) DEFAULT NULL,
  `sku` varchar(32) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `picture_name` varchar(191) DEFAULT NULL,
  `price` int(50) NOT NULL,
  `current_discount` int(50) DEFAULT 0,
  `stock` int(10) NOT NULL,
  `product_unit` varchar(32) DEFAULT NULL,
  `is_available` tinyint(1) DEFAULT 1,
  `add_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sku`, `name`, `description`, `picture_name`, `price`, `current_discount`, `stock`, `product_unit`, `is_available`, `add_date`) VALUES
(37, 13, 'DMM215486', 'Dimsum Mentai', NULL, 'dimsum_mentai.jpg', 20000, 0, 15, '1', 1, '2024-02-27 11:01:26'),
(38, 13, 'GMM310962', 'Gzoya Mentai', 'Gyoza Mentai isi 5 pcs', 'gzoya_mentai1.jpg', 35000, 0, 10, '1', 1, '2024-02-27 13:39:22'),
(39, 13, 'HMI3M220008', 'Hampers Mentai isi 3', '3 Mentai Rice Mini bisa pilih Rasa', 'hampers_mentai_31.jpg', 25000, 0, 20, '1', 1, '2024-02-27 13:40:08'),
(40, 13, 'HMMM415165', 'Hampers Mentai Mix', 'Hampers Mentai 2 Large 1 Small bisa pilih rasa', 'hampers_mentai_mix1.jpg', 45000, 0, 15, '1', 1, '2024-02-27 13:42:45'),
(41, 13, 'MRBM1220232', 'Mentai Rice Blackpepper', NULL, 'mentai_rice_chicken_blackpepper1.jpg', 13000, 0, 20, '1', 1, '2024-02-27 13:43:52'),
(42, 13, 'MRCK(M120320', 'Mentai Rice Chicken Katsu', NULL, 'mentai_rice_chicken_katsu1.jpg', 13000, 0, 20, '1', 1, '2024-02-27 13:45:20'),
(43, 13, 'MRSEWCCM35434', 'Mentai Rice Scramble Egg with Crispy Chicken', NULL, 'mentai_rice_scramble_egg_with_chicken_crispy1.jpg', 35000, 0, 5, '1', 1, '2024-02-27 13:47:14'),
(44, 13, 'MRFT(M120511', 'Mentai Rice Fried Tuna', NULL, 'mentai_rice_chicken_katsu2.jpg', 13000, 0, 20, '1', 1, '2024-02-27 13:48:31'),
(45, 13, 'MRSCSAS(M110653', 'Mentai Rice Spicy Chicken Skin ala Szechuan', NULL, 'mentai_rice_chicken_blackpepper2.jpg', 13000, 0, 10, '1', 1, '2024-02-27 13:50:53'),
(46, 15, 'BDFFNFF615728', 'Black Dimsum Frozen Food NonaSal', NULL, 'black_dimsum_frozen_food_nonasal1.jpg', 60000, 0, 15, '1', 1, '2024-02-27 13:52:08'),
(47, 15, 'CKFFFF615775', 'Chicken Katsu Frozen Food', 'Chicken Katsu Frozen Food', 'chicken_katsu_frozen_food1.jpg', 60000, 0, 15, '1', 1, '2024-02-27 13:52:55'),
(48, 15, 'KDFFNFF615899', 'Keju Dimsum Frozen Food NonaSal', 'Keju Dimsum Frozen Food dari NonaSal', 'keju_dimsum_frozen_food_nonasal1.jpg', 60000, 0, 15, '1', 1, '2024-02-27 13:54:59'),
(49, 15, 'ODFFNFF615938', 'Ori Dimsum Frozen Food NonaSal', 'Keju Dimsum Frozen Food dari NonaSal', 'ori_dimsum_frozen_food_nonasal1.jpg', 60000, 0, 15, '1', 1, '2024-02-27 13:55:38'),
(50, 16, 'MBMCKMB215104', 'Mie Bowl Mix Chicken Katsu', 'Mie Bowl Mix dipadukan dengan Chicken Katsu', 'Mie_Bowl_Mix_Chicken_Katsu1.jpg', 20000, 0, 15, '1', 1, '2024-02-27 13:58:24'),
(51, 16, 'MBMKCMB215152', 'Mie Bowl Mix Kulit Crispy', 'Mie Bowl Mix dipadukan dengan Kulit Crispy', 'Mie_Bowl_Mix_Kulit_Crispy1.jpg', 20000, 0, 15, '1', 1, '2024-02-27 13:59:12'),
(52, 16, 'MBMPKMB215204', 'Mie Bowl Mix Paru Kerbau', 'Mie Bowl Mix dipadukan dengan Paru Kerbau', 'Mie_Bowl_Mix_Paru_Kerbau1.jpg', 20000, 0, 15, '1', 1, '2024-02-27 14:00:04'),
(53, 16, 'MBMTMB215609', 'Mie Bowl Mix Topping', 'Mie Bowl Mix dengan campuran beberapa topping', 'Mie_Bowl_Mix_Topping1.jpg', 25000, 0, 15, '1', 1, '2024-02-27 14:06:49'),
(54, 17, 'SMO130653', 'Saus Mentai', 'Saus Mentai Frozen siap pakai', 'saus_mentai1.jpg', 17000, 0, 30, '1', 1, '2024-02-27 14:07:33'),
(55, 14, 'SSASS215189', 'Sego Sambel Ayam', 'Sego Sambel Ayam lezat', 'sego_sambel_ayam1.jpg', 20000, 0, 15, '1', 1, '2024-02-27 14:16:29'),
(56, 14, 'SSKSS215234', 'Sego Sambel Kulit', 'Sego Sambel Kulit lezat', 'sego_sambel_kulit1.jpg', 20000, 0, 15, '1', 1, '2024-02-27 14:17:14'),
(57, 14, 'SSKSSS215319', 'Sego Sambel Kulit Sayap', 'Sego Sambel dipadukan dengan Kulit & Sayap Ayam', 'sego_sambel_kulit_sayap1.jpg', 20000, 0, 15, '1', 1, '2024-02-27 14:18:39'),
(58, 14, 'SSLSS215496', 'Sego Sambel Lele', 'Sego Sambel Lele lezat', 'sego_sambel_lele1.jpg', 20000, 0, 15, '1', 1, '2024-02-27 14:21:36'),
(59, 14, 'SSPKSS215707', 'Sego Sambel Paru Kerbau', NULL, 'sego_sambel_paru_kerbau1.jpg', 25000, 0, 15, '1', 1, '2024-02-27 14:25:07'),
(61, 14, 'SSSASS115850', 'Sego Sambel Sayap Ayam', 'Sego Sambel Sayap Ayam', 'sego_sambel_sayap1.jpg', 17000, 0, 15, '1', 1, '2024-02-27 14:27:30');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(10) NOT NULL,
  `name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `name`) VALUES
(13, 'Mentai'),
(14, 'Sego Sambel '),
(15, 'Frozen Food'),
(16, 'Mie Bowl'),
(17, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `review_text` mediumtext NOT NULL,
  `review_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `order_id`, `title`, `review_text`, `review_date`, `status`) VALUES
(5, 14, 46, 'Makanannya enak', 'Ongkir kemahalan kakak', '2024-02-28 21:19:13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) NOT NULL,
  `key` varchar(32) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `content`) VALUES
(1, 'current_theme_name', 'vegefoods'),
(2, 'store_name', 'Dapoerln'),
(3, 'store_phone_number', '089514774421'),
(4, 'store_email', 'dapoerlarisnagih@gmail.com'),
(5, 'store_tagline', 'Menyediakan Barang Berkualitas'),
(6, 'store_logo', 'store_logo.png\r\n'),
(7, 'max_product_image_size', '20000'),
(8, 'store_description', 'Menjual makanan enak dan lezatt'),
(9, 'store_address', 'Perum Djarum Singocandi Blok F 10 RT 04/04, Kecamatan Kota, Kabupaten Kudus'),
(10, 'min_shop_to_free_shipping_cost', '120000'),
(11, 'shipping_cost', '0'),
(12, 'payment_banks', '{\"bank-jago-xx\":{\"bank\":\"BANK JAGO xx\",\"number\":\"123\",\"name\":\"Martin Mulyo Syahidin\"},\"bank-jagoss\":{\"bank\":\"BANK JAGOss\",\"number\":\"xs\",\"name\":\"as\"},\"bank-jagossxx\":{\"bank\":\"BANK JAGOssxx\",\"number\":\"asd\",\"name\":\"Admin Koramil\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(191) NOT NULL,
  `profile_picture` varchar(128) DEFAULT NULL,
  `role` varchar(32) DEFAULT '0' COMMENT '1 = admin, 2 = customer',
  `register_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `username`, `password`, `profile_picture`, `role`, `register_date`) VALUES
(1, 'Admin Dapoerln', 'admin@local.test', NULL, 'admintoko', '$2y$10$9yPcgl1laJ1doTdNUsC/wuuVk5.DaxF2grd04aWXIEj1i/2Q.myBC', 'agung1.png', 'admin', NULL),
(7, 'Customer Toko Sayur', 'customer@local.test', NULL, 'customer', '$2y$10$6C/A5Yy1gt4yhStWDWN1M.isBaznzDc.MZJdIj7UddW3.qIX5vDvK', NULL, 'customer', '2020-03-29 08:14:30'),
(14, NULL, 'zavira@customer.com', NULL, 'zaviraraihanas', '$2y$10$zOhAnh8ClZNHZ3BZaKfWo.Gu/071Ss.OszcMXq/q4S57ajMfguJe.', NULL, 'customer', '2024-02-27 13:15:24'),
(15, NULL, 'Bayu@customer.com', NULL, 'bayuangga', '$2y$10$G5I3GG9TTFq1ZalBXY8WBu6DiSV6.B.RfknrFZo86iJ3CyzW/WkuS', NULL, 'customer', '2024-02-28 10:43:37'),
(16, 'Calvin Prakoso Setyo Aji', '202151046@std.umk.ac.id', NULL, 'calvinpsa', '$2y$10$hFFrm.jurLvlRajtnz7a3OcjcPjptdfmqMq3RplQL20nRsYVjVtF.', 'Foto_2021510461.jpg', 'admin', '2024-02-28 21:16:12'),
(17, NULL, 'akuntan@pkl.com', NULL, 'akuntanpkl', '$2y$10$SZCFwiKOTaphmQlXqVFrzuvSf/IEiJrPg6.YWIetKGmUc2wGZulOG', NULL, 'akuntan', '2024-02-28 21:31:56'),
(18, NULL, 'customer1dapoerln@gmail.com', NULL, 'customer1', '$2y$10$x1.CKmXZnCI2XO.63JlF7O6G2RejyCREq4qHHw6RSfKt6ZAH1d0PW', NULL, 'customer', '2024-05-05 16:21:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_contacts_contacts` (`parent_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_customers_users` (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_orders_users` (`user_id`),
  ADD KEY `FK_orders_coupons` (`coupon_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_products_product_category` (`category_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_reviews_users` (`user_id`),
  ADD KEY `FK_reviews_orders` (`order_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `FK_contacts_contacts` FOREIGN KEY (`parent_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `FK_customers_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_orders_coupons` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_orders_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
