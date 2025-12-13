-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2025 at 05:28 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `f21_cafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `category` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `item_name`, `category`, `price`, `stock`, `status`, `deleted_at`) VALUES
(2, 'Caesar Salad', 'Salad', 179.00, 9997, '', '0000-00-00 00:00:00'),
(3, 'Mango Kani Salad', 'Salad', 179.00, 100998, '', '0000-00-00 00:00:00'),
(4, 'French Fries Plain', 'Snacks', 120.00, 49, 'deleted', '2025-12-13 08:35:59'),
(5, 'Cheesy Bacon', 'Snacks', 120.00, 35, '', '0000-00-00 00:00:00'),
(6, 'Cheesy Nachos', 'Snacks', 130.00, 25, '', '0000-00-00 00:00:00'),
(7, 'Chicken Nuggets', 'Snacks', 130.00, 40, '', '0000-00-00 00:00:00'),
(8, 'Belgian Waffle', 'Snacks', 180.00, 18, '', '0000-00-00 00:00:00'),
(9, 'Peanut Butter with Banana Waffle', 'Snacks', 160.00, 12, '', '0000-00-00 00:00:00'),
(10, 'Fried Suman with Latik Croffles', 'Snacks', 100.00, 8, '', '0000-00-00 00:00:00'),
(11, 'Tuna Pesto Pasta', 'Pasta', 189.00, 8, '', '0000-00-00 00:00:00'),
(12, 'Creamy Carbonara', 'Pasta', 189.00, 13, '', '0000-00-00 00:00:00'),
(13, 'Classic Spaghetti', 'Pasta', 179.00, 21, '', '0000-00-00 00:00:00'),
(14, 'Baked Macaroni', 'Pasta', 199.00, 10, '', '0000-00-00 00:00:00'),
(15, 'Gourmet Tuyo Pasta', 'Pasta', 199.00, 8, '', '0000-00-00 00:00:00'),
(16, 'Egg Salad Sandwich', 'Sandwich', 180.00, 15, '', '0000-00-00 00:00:00'),
(17, 'Ham & Egg Sandwich', 'Sandwich', 179.00, 15, '', '0000-00-00 00:00:00'),
(18, 'Ham & Cheese Sandwich', 'Sandwich', 179.00, 18, '', '0000-00-00 00:00:00'),
(19, 'Grilled Cheese', 'Sandwich', 179.00, 10, '', '0000-00-00 00:00:00'),
(20, 'Tuna Sandwich', 'Sandwich', 179.00, 14, '', '0000-00-00 00:00:00'),
(21, 'Hotdog on Bun', 'Sandwich', 179.00, 7, '', '0000-00-00 00:00:00'),
(22, 'Clubhouse Sandwich', 'Sandwich', 199.00, 0, 'deleted', '2025-12-13 15:57:11'),
(23, 'Choco Moist Cake', 'Cake', 180.00, 8, '', '0000-00-00 00:00:00'),
(24, 'Blueberry Cheesecake', 'Cake', 190.00, 5, 'deleted', '2025-12-13 15:57:13'),
(25, 'Tiramisu Cake', 'Cake', 190.00, 6, '', '0000-00-00 00:00:00'),
(26, 'Carrot Cake', 'Cake', 179.00, 12, '', '0000-00-00 00:00:00'),
(27, 'Tres Leches Cake', 'Cake', 179.00, 994, '', '0000-00-00 00:00:00'),
(28, 'Americano', 'Coffee', 89.00, 997, '', '0000-00-00 00:00:00'),
(29, 'Brewed Coffee', 'Coffee', 79.00, 998, '', '0000-00-00 00:00:00'),
(30, 'Cappuccino', 'Coffee', 99.00, 995, '', '0000-00-00 00:00:00'),
(31, 'Caramel Macchiato', 'Coffee', 99.00, 995, '', '0000-00-00 00:00:00'),
(32, 'French Vanilla Coffee', 'Coffee', 99.00, 999, '', '0000-00-00 00:00:00'),
(33, 'Espresso Mocha', 'Coffee', 99.00, 999, '', '0000-00-00 00:00:00'),
(34, 'Dark Choco Java Chip', 'Frappuccino', 189.00, 30, '', '0000-00-00 00:00:00'),
(35, 'Chocolate Frappuccino', 'Frappuccino', 189.00, 30, '', '0000-00-00 00:00:00'),
(36, 'Caramel Frappuccino', 'Frappuccino', 189.00, 26, '', '0000-00-00 00:00:00'),
(37, 'Oreo Frappuccino', 'Frappuccino', 189.00, 30, '', '0000-00-00 00:00:00'),
(38, 'Salted Caramel Frappuccino', 'Frappuccino', 189.00, 26, '', '0000-00-00 00:00:00'),
(39, 'Strawberry Frappuccino', 'Frappuccino', 189.00, 28, '', '0000-00-00 00:00:00'),
(42, 'Pineapple Orange Juice', 'NonCoffee', 79.00, 22, '', '0000-00-00 00:00:00'),
(43, 'Mango Juice', 'NonCoffee', 79.00, 27, '', '0000-00-00 00:00:00'),
(47, 'Matcha Latte', 'NonCoffee', 139.00, 30, '', '0000-00-00 00:00:00'),
(49, 'Italian Soda', 'NonCoffee', 139.00, 30, '', '0000-00-00 00:00:00'),
(55, 'sasa', 'Sandwich', 2.00, 323, '', '0000-00-00 00:00:00'),
(56, 'sasas', 'Pasta', 23.00, 220, '', '0000-00-00 00:00:00'),
(59, 'Caramel Machiato', 'Salad', 89.00, 655, '', '0000-00-00 00:00:00'),
(63, 'critical', 'Tea', 89.00, 87, 'deleted', '2025-12-13 07:57:51'),
(65, 'burnik', 'Salad', 23.00, 0, 'deleted', '2025-12-13 16:02:44'),
(66, 'sasas', 'Salad', 23.00, 22, '', '0000-00-00 00:00:00'),
(67, 'sasasa', 'Snacks', 23.00, 444, '', '0000-00-00 00:00:00'),
(68, 'fsfdsg', 'Salad', 23.00, 89, '', '0000-00-00 00:00:00'),
(69, 'critical', 'Snacks', 232.00, 23, '', '0000-00-00 00:00:00'),
(70, 'sasa', 'Snacks', 12.00, 333, '', '0000-00-00 00:00:00'),
(71, 'bigtime', 'Snacks', 323.00, 43434, '', '0000-00-00 00:00:00'),
(72, 'sasa', 'Pasta', 89.00, 25, '', '0000-00-00 00:00:00'),
(73, 'ferer', 'Frappe', 12.00, 221, '', '0000-00-00 00:00:00'),
(74, 'critical', 'Tea', 12.00, 222, '', '0000-00-00 00:00:00'),
(75, 'coffee', 'NonCoffee', 112.00, 222, '', '0000-00-00 00:00:00'),
(76, 'critical', 'NonCoffee', 12.00, 32323, '', '0000-00-00 00:00:00'),
(77, 'critical', 'Non-Coffee', 12.00, 12121, '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `date_time` datetime DEFAULT current_timestamp(),
  `items` text NOT NULL,
  `payment` varchar(50) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `date_time`, `items`, `payment`, `total`) VALUES
(1, '2025-12-12 00:00:44', 'sasa (x6)', 'Cash', 732.00),
(2, '2025-12-12 00:06:47', 'Vegetable Salad with Sicilian Dressing (x1), Caesar Salad (x1), Mango Kani Salad (x1), Hotdog on Bun (x1)', 'Cash', 726.00),
(3, '2025-12-12 00:06:47', 'Vegetable Salad with Sicilian Dressing (x1), Caesar Salad (x1), Mango Kani Salad (x1), Hotdog on Bun (x1)', 'Cash', 726.00),
(4, '2025-12-12 00:06:57', 'Tuna Sandwich (x1), Clubhouse Sandwich (x2), Choco Moist Cake (x1)', 'Cash', 757.00),
(5, '2025-12-12 00:10:03', 'Four Seasons Juice (x4), Pineapple Orange Juice (x4), Mango Juice (x3), Taro Latte (x3)', 'Paymaya', 1286.00),
(6, '2025-12-12 00:10:26', 'Taro Latte (x1)', 'Gcash', 139.00),
(7, '2025-12-12 00:11:40', 'Hot Chocolate (x8)', 'Cash', 1032.00),
(8, '2025-12-12 00:16:10', 'Caramel Machiato (x4)', 'Cash', 236.00),
(9, '2025-12-12 00:37:37', 'Hot Chocolate (x2)', 'Cash', 258.00),
(10, '2025-12-12 00:37:41', 'Four Seasons Juice (x2)', 'Cash', 158.00),
(11, '2025-12-12 00:37:41', 'Four Seasons Juice (x2)', 'Cash', 158.00),
(12, '2025-12-12 00:37:46', 'Pineapple Orange Juice (x4)', 'Cash', 316.00),
(13, '2025-12-12 00:37:52', 'Hot Chocolate (x2)', 'Cash', 258.00),
(14, '2025-12-12 00:37:52', 'Hot Chocolate (x2)', 'Cash', 258.00),
(15, '2025-12-12 00:38:02', 'Tuna Pesto Pasta (x2)', 'Cash', 378.00),
(16, '2025-12-12 00:38:20', 'Tuna Pesto Pasta (x2), Classic Spaghetti (x1)', 'Cash', 557.00),
(17, '2025-12-12 02:12:08', 'Tuna Pesto Pasta (x1)', 'Cash', 189.00),
(18, '2025-12-12 02:12:13', 'Creamy Carbonara (x1)', 'Cash', 189.00),
(19, '2025-12-12 02:31:20', 'Caesar Salad (x3)', 'Cash', 537.00),
(20, '2025-12-12 02:31:20', 'Caesar Salad (x3)', 'Cash', 537.00),
(21, '2025-12-12 02:44:45', 'Tuna Pesto Pasta (x1)', 'Cash', 189.00),
(22, '2025-12-12 02:45:05', 'Mango Kani Salad (x1), critical (x2), Caramel Machiato (x1)', 'Cash', 284.00),
(23, '2025-12-12 02:45:45', 'Caesar Salad (x1), Mango Kani Salad (x1)', 'Gcash', 358.00),
(24, '2025-12-12 02:50:41', 'Mango Kani Salad (x1), Caesar Salad (x1)', 'Cash', 358.00),
(25, '2025-12-12 02:52:12', 'Mango Kani Salad (x2), Caesar Salad (x3), Caramel Machiato (x1), critical (x1), Choco Moist Cake (x1), Clubhouse Sandwich (x1)', 'Cash', 1371.00),
(26, '2025-12-12 02:54:26', 'critical (x1)', 'Cash', 89.00),
(27, '2025-12-12 22:13:43', 'Caesar Salad (x1)', 'Cash', 179.00),
(28, '2025-12-12 22:13:54', 'French Fries Plain (x1)', 'Cash', 120.00),
(29, '2025-12-13 01:28:15', 'Caesar Salad (x1), Mango Kani Salad (x1), Caramel Machiato (x1)', 'Cash', 447.00),
(30, '2025-12-13 01:28:58', 'Caesar Salad (x5)', 'Cash', 895.00),
(31, '2025-12-13 01:53:11', 'Caramel Machiato (x1), burnik (x1)', 'Cash', 112.00),
(32, '2025-12-13 15:01:56', 'Caesar Salad (x1), Mango Kani Salad (x1)', 'Cash', 358.00),
(33, '2025-12-13 15:01:57', 'Caesar Salad (x1), Mango Kani Salad (x1)', 'Cash', 358.00),
(34, '2025-12-13 15:01:57', 'Caesar Salad (x1), Mango Kani Salad (x1)', 'Cash', 358.00),
(35, '2025-12-13 16:30:29', 'Caramel Machiato (x1)', 'Cash', 89.00),
(36, '2025-12-13 16:48:45', 'Mango Kani Salad (x1), Caramel Machiato (x2)', 'Cash', 357.00),
(37, '2025-12-13 16:48:53', 'Mango Kani Salad (x2), Caramel Machiato (x3)', 'Cash', 625.00),
(38, '2025-12-13 16:48:54', 'Mango Kani Salad (x2), Caramel Machiato (x3)', 'Cash', 625.00),
(39, '2025-12-13 16:48:55', 'Mango Kani Salad (x2), Caramel Machiato (x3)', 'Cash', 625.00),
(40, '2025-12-13 16:49:25', 'Clubhouse Sandwich (x1)', 'Cash', 199.00),
(41, '2025-12-13 16:49:29', 'Clubhouse Sandwich (x1)', 'Cash', 199.00),
(42, '2025-12-13 16:49:32', 'Clubhouse Sandwich (x1), Hotdog on Bun (x1)', 'Cash', 378.00),
(43, '2025-12-13 16:49:33', 'Clubhouse Sandwich (x1), Hotdog on Bun (x1)', 'Cash', 378.00),
(44, '2025-12-13 16:49:35', 'Clubhouse Sandwich (x1), Hotdog on Bun (x1)', 'Cash', 378.00),
(45, '2025-12-13 16:49:39', 'Caesar Salad (x1)', 'Cash', 179.00),
(46, '2025-12-13 16:49:46', 'Caramel Machiato (x1)', 'Cash', 89.00),
(47, '2025-12-13 16:52:03', 'Caesar Salad (x1)', 'Cash', 179.00),
(48, '2025-12-13 16:52:22', 'Caramel Machiato (x1), burnik (x1)', 'Cash', 112.00),
(49, '2025-12-13 16:56:57', 'Caramel Machiato (x1)', 'Cash', 89.00),
(50, '2025-12-13 16:57:01', 'Caramel Machiato (x1)', 'Cash', 89.00),
(51, '2025-12-13 16:57:10', 'burnik (x1)', 'Cash', 23.00),
(52, '2025-12-13 16:58:54', 'Caramel Machiato (x1), burnik (x1)', 'Gcash', 112.00),
(53, '2025-12-13 16:59:02', 'Caramel Machiato (x1)', 'Gcash', 89.00),
(54, '2025-12-13 19:24:01', 'Caramel Machiato (x3), burnik (x1)', 'Cash', 290.00),
(55, '2025-12-13 19:27:21', 'Caesar Salad (x5)', 'Gcash', 895.00),
(56, '2025-12-13 19:32:19', 'Caramel Machiato (x1)', 'Gcash', 89.00),
(57, '2025-12-13 19:33:12', 'Caramel Machiato (x1)', 'Gcash', 89.00),
(58, '2025-12-13 19:46:13', 'Caramel Machiato (x2)', 'Cash', 178.00),
(59, '2025-12-13 19:49:39', 'Caramel Machiato (x2)', 'Cash', 178.00),
(60, '2025-12-13 19:49:43', 'Caramel Machiato (x2)', 'Cash', 178.00),
(61, '2025-12-13 19:49:56', 'burnik (x1)', 'Cash', 23.00),
(62, '2025-12-13 19:50:26', 'Caramel Machiato (x1)', 'Cash', 89.00),
(63, '2025-12-13 19:52:11', 'Caramel Machiato (x2), burnik (x1)', 'Cash', 201.00),
(64, '2025-12-13 19:57:27', 'burnik (x1)', 'Cash', 23.00),
(65, '2025-12-13 19:59:36', 'Caramel Machiato (x1)', 'Cash', 89.00),
(66, '2025-12-13 20:03:36', 'burnik (x1)', 'Cash', 23.00),
(67, '2025-12-13 20:14:18', 'Brewed Coffee (x1), Cappuccino (x2)', 'Cash', 277.00),
(68, '2025-12-13 20:16:02', 'Americano (x2)', 'Cash', 178.00),
(69, '2025-12-13 20:16:12', 'Cappuccino (x1), Caramel Macchiato (x2)', 'Cash', 297.00),
(70, '2025-12-13 20:16:12', 'Cappuccino (x1), Caramel Macchiato (x2)', 'Cash', 297.00),
(71, '2025-12-13 20:16:52', 'burnik (x1)', 'Cash', 23.00),
(72, '2025-12-13 20:16:57', 'Caramel Machiato (x1)', 'Cash', 89.00),
(73, '2025-12-13 20:16:57', 'Caramel Machiato (x1)', 'Cash', 89.00),
(74, '2025-12-13 20:21:06', 'Caramel Machiato (x2), burnik (x1)', 'Cash', 201.00),
(75, '2025-12-13 20:21:06', 'Caramel Machiato (x2), burnik (x1)', 'Cash', 201.00),
(76, '2025-12-13 20:22:37', 'Caramel Machiato (x1)', 'Cash', 89.00),
(77, '2025-12-13 20:22:38', 'Caramel Machiato (x1)', 'Cash', 89.00),
(78, '2025-12-13 20:22:41', 'Caramel Machiato (x1), burnik (x1)', 'Cash', 112.00),
(79, '2025-12-13 20:23:01', 'Caramel Machiato (x1), burnik (x1)', 'Cash', 112.00),
(80, '2025-12-13 20:23:07', 'Caramel Machiato (x2), burnik (x3)', 'Cash', 247.00),
(81, '2025-12-13 20:23:07', 'Caramel Machiato (x2), burnik (x3)', 'Cash', 247.00),
(82, '2025-12-13 20:23:10', 'Caramel Machiato (x2), burnik (x3)', 'Cash', 247.00),
(83, '2025-12-13 20:23:18', 'burnik (x2)', 'Cash', 46.00),
(84, '2025-12-13 20:23:28', 'burnik (x2)', 'Cash', 46.00),
(85, '2025-12-13 20:24:29', 'burnik (x1)', 'Cash', 23.00),
(86, '2025-12-13 20:24:33', 'burnik (x1)', 'Cash', 23.00),
(87, '2025-12-13 20:24:35', 'burnik (x1)', 'Cash', 23.00),
(88, '2025-12-13 20:24:41', 'burnik (x1)', 'Cash', 23.00),
(89, '2025-12-13 20:28:45', 'Caramel Machiato (x2)', 'Cash', 178.00),
(90, '2025-12-13 20:28:57', 'Caramel Machiato (x1)', 'Cash', 89.00),
(91, '2025-12-13 20:29:23', 'burnik (x1)', 'Cash', 23.00),
(92, '2025-12-13 20:30:04', 'burnik (x1)', 'Cash', 23.00),
(93, '2025-12-13 20:30:29', 'burnik (x2)', 'Cash', 46.00),
(94, '2025-12-13 20:30:56', 'burnik (x1)', 'Cash', 23.00),
(95, '2025-12-13 20:34:26', 'burnik (x1)', 'Cash', 23.00),
(96, '2025-12-13 20:34:32', 'burnik (x2)', 'Cash', 46.00),
(97, '2025-12-13 20:34:38', 'burnik (x2)', 'Cash', 46.00),
(98, '2025-12-13 20:37:03', 'Caramel Machiato (x1)', 'Cash', 89.00),
(99, '2025-12-13 20:37:34', 'Caramel Machiato (x1)', 'Cash', 89.00),
(100, '2025-12-13 20:43:26', 'Caramel Machiato (x1)', 'Gcash', 89.00),
(101, '2025-12-13 20:43:27', 'Caramel Machiato (x1)', 'Gcash', 89.00),
(102, '2025-12-13 20:43:43', 'burnik (x2)', 'Gcash', 46.00),
(103, '2025-12-13 20:44:00', 'Caramel Machiato (x1)', 'Cash', 89.00),
(104, '2025-12-13 20:45:42', 'Caramel Machiato (x1)', 'Cash', 89.00),
(105, '2025-12-13 20:45:49', 'Caramel Machiato (x1)', 'Gcash', 89.00),
(106, '2025-12-13 20:46:01', 'Caramel Machiato (x1)', 'Gcash', 89.00),
(107, '2025-12-13 20:46:10', 'Caramel Machiato (x1)', 'Gcash', 89.00),
(108, '2025-12-13 20:46:56', 'burnik (x1)', 'Cash', 23.00),
(109, '2025-12-13 20:46:56', 'burnik (x1)', 'Cash', 23.00),
(110, '2025-12-13 20:48:28', 'Caramel Machiato (x1)', 'Cash', 89.00),
(111, '2025-12-13 20:49:01', 'Caramel Machiato (x1)', 'Paymaya', 89.00),
(112, '2025-12-13 20:52:50', 'Caramel Machiato (x1)', 'Cash', 89.00),
(113, '2025-12-13 20:56:17', 'Caramel Machiato (x1)', 'Cash', 89.00),
(114, '2025-12-13 20:57:50', 'Caramel Machiato (x1)', 'Cash', 89.00),
(115, '2025-12-13 20:58:52', 'Caramel Machiato (x1)', 'Cash', 89.00),
(116, '2025-12-13 20:59:37', 'Caramel Machiato (x1)', 'Cash', 89.00),
(117, '2025-12-13 20:59:43', 'Caramel Machiato (x1)', 'Cash', 89.00),
(118, '2025-12-13 20:59:52', 'Caramel Machiato (x1)', 'Cash', 89.00),
(119, '2025-12-13 21:02:18', 'Caramel Machiato (x1)', 'Cash', 89.00),
(120, '2025-12-13 21:05:10', 'Caramel Machiato (x1)', 'Cash', 89.00),
(121, '2025-12-13 21:05:17', 'Caramel Machiato (x1)', 'Cash', 89.00),
(122, '2025-12-13 21:05:23', 'Caramel Machiato (x1)', 'Gcash', 89.00),
(123, '2025-12-13 21:05:32', 'Caramel Machiato (x1)', 'Gcash', 89.00),
(124, '2025-12-13 21:05:33', 'Caramel Machiato (x1)', 'Gcash', 89.00),
(125, '2025-12-13 21:05:34', 'Caramel Machiato (x1)', 'Gcash', 89.00),
(126, '2025-12-13 21:05:34', 'Caramel Machiato (x1)', 'Gcash', 89.00),
(127, '2025-12-13 21:05:55', 'Caramel Machiato (x1)', 'Cash', 89.00),
(128, '2025-12-13 21:06:12', 'Caramel Machiato (x2)', 'Cash', 178.00),
(129, '2025-12-13 21:06:17', 'burnik (x1)', 'Cash', 23.00),
(130, '2025-12-13 21:06:30', 'burnik (x1)', 'Cash', 23.00),
(131, '2025-12-13 21:06:52', 'burnik (x2)', 'Cash', 46.00),
(132, '2025-12-13 21:07:00', 'burnik (x1)', 'Cash', 23.00),
(133, '2025-12-13 21:07:11', 'Caramel Machiato (x1)', 'Cash', 89.00),
(134, '2025-12-13 21:07:47', 'Caramel Machiato (x1)', 'Cash', 89.00),
(135, '2025-12-13 21:10:38', 'Caramel Machiato (x1), Caramel Frappuccino (x1)', 'Cash', 278.00),
(136, '2025-12-13 21:10:49', 'Caramel Machiato (x1), Caramel Frappuccino (x1)', 'Cash', 278.00),
(137, '2025-12-13 21:11:08', 'Caramel Machiato (x1), Caramel Frappuccino (x1), Salted Caramel Frappuccino (x2), Strawberry Frappuccino (x1)', 'Cash', 845.00),
(138, '2025-12-13 21:11:16', 'Caramel Machiato (x1), Caramel Frappuccino (x1), Salted Caramel Frappuccino (x2), Strawberry Frappuccino (x1)', 'Cash', 845.00),
(139, '2025-12-13 21:11:24', 'burnik (x2)', 'Cash', 46.00),
(140, '2025-12-13 21:11:32', 'burnik (x3)', 'Cash', 69.00),
(141, '2025-12-13 21:11:46', 'Caramel Machiato (x1)', 'Cash', 89.00),
(142, '2025-12-13 21:13:48', 'Caramel Machiato (x1)', 'Cash', 89.00),
(143, '2025-12-13 21:15:30', 'Caramel Machiato (x1)', 'Gcash', 89.00),
(144, '2025-12-13 21:17:38', 'Caramel Machiato (x1)', 'Cash', 89.00),
(145, '2025-12-13 21:26:04', 'Caramel Machiato (x1)', 'Cash', 89.00),
(146, '2025-12-13 21:26:12', 'Caramel Machiato (x2)', 'Cash', 178.00),
(147, '2025-12-13 21:26:12', 'Caramel Machiato (x2)', 'Cash', 178.00),
(148, '2025-12-13 21:26:19', 'Caramel Machiato (x3)', 'Cash', 267.00),
(149, '2025-12-13 21:26:30', 'Caramel Machiato (x2)', 'Cash', 178.00),
(150, '2025-12-13 21:38:02', 'Caramel Machiato (x2)', 'Cash', 178.00),
(151, '2025-12-13 21:38:02', 'Caramel Machiato (x2)', 'Cash', 178.00),
(152, '2025-12-13 21:38:09', 'Caramel Machiato (x2)', 'Cash', 178.00),
(153, '2025-12-13 21:38:21', 'Caramel Machiato (x1)', 'Cash', 89.00),
(154, '2025-12-13 21:52:25', 'Caramel Machiato (x1)', 'Cash', 89.00),
(155, '2025-12-13 21:52:36', 'Caramel Machiato (x1)', 'Cash', 89.00),
(156, '2025-12-13 21:52:48', 'Caramel Machiato (x1)', 'Cash', 89.00),
(157, '2025-12-13 21:53:20', 'Caramel Machiato (x1)', 'Cash', 89.00),
(158, '2025-12-13 21:53:37', 'Caramel Machiato (x1)', 'Gcash', 89.00),
(159, '2025-12-13 21:54:26', 'Tuna Pesto Pasta (x1), Creamy Carbonara (x1)', 'Gcash', 378.00),
(160, '2025-12-13 21:57:24', 'Caramel Machiato (x1)', 'Cash', 89.00),
(161, '2025-12-13 21:59:22', 'Caramel Machiato (x1)', 'Cash', 89.00),
(162, '2025-12-13 22:01:04', 'Caramel Machiato (x1)', 'Cash', 89.00),
(163, '2025-12-13 22:02:07', 'Caramel Machiato (x1)', 'Gcash', 89.00),
(164, '2025-12-13 22:08:54', 'Caramel Machiato (x1)', 'Cash', 89.00),
(165, '2025-12-13 22:08:59', 'Caramel Machiato (x1)', 'Cash', 89.00),
(166, '2025-12-13 22:09:22', 'Caramel Machiato (x2)', 'Cash', 178.00),
(167, '2025-12-13 22:09:32', 'Caramel Machiato (x1)', 'Cash', 89.00),
(168, '2025-12-13 22:09:49', 'Caramel Machiato (x1)', 'Gcash', 89.00),
(169, '2025-12-13 22:16:02', 'Caramel Machiato (x1)', 'Cash', 89.00),
(170, '2025-12-13 22:16:09', 'Caramel Machiato (x1)', 'Gcash', 89.00),
(171, '2025-12-13 22:16:42', 'Caramel Machiato (x2)', 'Cash', 178.00),
(172, '2025-12-13 22:16:50', 'Caramel Machiato (x1)', 'Cash', 89.00),
(173, '2025-12-13 22:17:28', 'Caramel Machiato (x2)', 'Gcash', 178.00),
(174, '2025-12-13 22:17:58', 'Caramel Machiato (x1)', 'Gcash', 89.00),
(175, '2025-12-13 22:20:19', 'Caramel Machiato (x1)', 'Cash', 89.00),
(176, '2025-12-13 22:20:25', 'Caramel Machiato (x2)', 'Gcash', 178.00),
(177, '2025-12-13 22:20:26', 'Caramel Machiato (x2)', 'Gcash', 178.00),
(178, '2025-12-13 22:20:32', 'Caramel Machiato (x1)', 'Cash', 89.00),
(179, '2025-12-13 22:20:39', 'Caramel Machiato (x2)', 'Gcash', 178.00),
(180, '2025-12-13 22:23:01', 'Caramel Machiato (x1)', 'Cash', 89.00),
(181, '2025-12-13 22:25:04', 'Caramel Machiato (x1)', 'Cash', 89.00),
(182, '2025-12-13 22:25:09', 'Caramel Machiato (x2)', 'Gcash', 178.00),
(183, '2025-12-13 22:25:45', 'Caramel Machiato (x1)', 'Gcash', 89.00),
(184, '2025-12-13 22:25:45', 'Caramel Machiato (x1)', 'Gcash', 89.00),
(185, '2025-12-13 22:25:58', 'Caramel Machiato (x1)', 'Cash', 89.00),
(186, '2025-12-13 22:26:21', 'Caramel Machiato (x2)', 'Cash', 178.00),
(187, '2025-12-13 22:26:31', 'Caramel Machiato (x1)', 'Gcash', 89.00),
(188, '2025-12-13 22:26:43', 'Caramel Machiato (x1)', 'Cash', 89.00),
(189, '2025-12-13 22:27:08', 'Caramel Machiato (x1)', 'Cash', 89.00),
(190, '2025-12-13 22:27:17', 'Caramel Machiato (x1)', 'Gcash', 89.00),
(191, '2025-12-13 22:27:27', 'Caramel Machiato (x1)', 'Cash', 89.00),
(192, '2025-12-13 22:28:04', 'Caramel Machiato (x1)', 'Cash', 89.00),
(193, '2025-12-13 22:28:16', 'Caramel Machiato (x1)', 'Gcash', 89.00),
(194, '2025-12-13 22:28:43', 'Caramel Machiato (x1)', 'Cash', 89.00),
(195, '2025-12-13 22:28:59', 'Caramel Machiato (x1)', 'Gcash', 89.00),
(196, '2025-12-13 22:29:13', 'Caramel Machiato (x2)', 'Cash', 178.00),
(197, '2025-12-13 22:29:49', 'Caramel Machiato (x1)', 'Cash', 89.00),
(198, '2025-12-13 22:30:02', 'Caramel Machiato (x1)', 'Gcash', 89.00),
(199, '2025-12-13 22:35:08', 'Caramel Machiato (x1)', 'Cash', 89.00),
(200, '2025-12-13 22:37:10', 'Caramel Machiato (x1)', 'Cash', 89.00),
(201, '2025-12-13 22:37:55', 'Caramel Machiato (x1)', 'Cash', 89.00),
(202, '2025-12-13 22:38:01', 'Caramel Machiato (x1)', 'Gcash', 89.00),
(203, '2025-12-13 22:38:09', 'Caramel Machiato (x1)', 'Cash', 89.00),
(204, '2025-12-13 22:39:22', 'Caramel Machiato (x1)', 'Cash', 89.00),
(205, '2025-12-13 22:39:23', 'Caramel Machiato (x1)', 'Cash', 89.00),
(206, '2025-12-13 22:41:56', 'Caramel Machiato (x1)', 'Cash', 89.00),
(207, '2025-12-13 22:42:10', 'Caramel Machiato (x2)', 'Cash', 178.00),
(208, '2025-12-13 22:44:25', 'Caramel Machiato (x2)', 'Cash', 178.00),
(209, '2025-12-13 22:47:02', 'Caramel Machiato (x3)', 'Cash', 267.00),
(210, '2025-12-13 22:47:31', 'Caramel Machiato (x3)', 'Cash', 267.00),
(211, '2025-12-13 22:47:31', 'Caramel Machiato (x3)', 'Cash', 267.00),
(212, '2025-12-13 22:54:10', 'Caramel Machiato (x1)', 'Cash', 89.00),
(213, '2025-12-13 22:54:26', 'Caramel Machiato (x5)', 'Cash', 445.00),
(214, '2025-12-13 22:54:26', 'Caramel Machiato (x5)', 'Cash', 445.00),
(215, '2025-12-13 22:55:11', 'Caramel Machiato (x2)', 'Cash', 178.00),
(216, '2025-12-13 22:55:35', 'Caramel Machiato (x3)', 'Cash', 267.00),
(217, '2025-12-13 22:56:58', 'Caramel Machiato (x3)', 'Cash', 267.00),
(218, '2025-12-13 22:57:36', 'Caramel Machiato (x1)', 'Cash', 89.00),
(219, '2025-12-13 22:57:49', 'Caramel Machiato (x1)', 'Cash', 89.00),
(220, '2025-12-13 23:04:42', 'Caramel Machiato (x1)', 'Cash', 89.00),
(221, '2025-12-13 23:09:15', 'Caramel Machiato (x2)', 'Cash', 178.00),
(222, '2025-12-13 23:20:36', 'Caramel Machiato (x2)', 'Cash', 178.00),
(223, '2025-12-13 23:20:59', 'Caramel Machiato (x1)', 'Cash', 89.00),
(224, '2025-12-13 23:23:00', 'Caramel Machiato (x1)', 'Cash', 89.00),
(225, '2025-12-13 23:31:53', 'Caramel Machiato (x1)', 'Cash', 89.00),
(226, '2025-12-13 23:32:38', 'Caramel Machiato (x1)', 'Cash', 89.00),
(227, '2025-12-13 23:32:44', 'Caramel Machiato (x1)', 'Gcash', 89.00),
(228, '2025-12-13 23:34:00', 'Caramel Machiato (x1)', 'Cash', 89.00),
(229, '2025-12-13 23:34:29', 'Caramel Machiato (x1)', 'Cash', 89.00),
(230, '2025-12-13 23:35:17', 'ferer (x1)', 'Cash', 12.00),
(231, '2025-12-13 23:35:45', 'Caramel Machiato (x1)', 'Cash', 89.00),
(232, '2025-12-13 23:37:45', 'Caramel Machiato (x3)', 'Cash', 267.00),
(233, '2025-12-13 23:38:19', 'Caramel Machiato (x1)', 'Cash', 89.00),
(234, '2025-12-13 23:44:31', 'Caramel Machiato (x1)', 'Cash', 89.00),
(235, '2025-12-13 23:44:50', 'Caramel Machiato (x1)', 'Cash', 89.00),
(236, '2025-12-13 23:49:29', 'Caramel Machiato (x1)', 'Cash', 89.00),
(237, '2025-12-13 23:49:44', 'Caramel Machiato (x1)', 'Gcash', 89.00),
(238, '2025-12-13 23:52:18', 'Caramel Machiato (x1)', 'Cash', 89.00),
(239, '2025-12-13 23:52:54', 'Caramel Machiato (x1)', 'Gcash', 89.00),
(240, '2025-12-13 23:55:42', 'Caramel Machiato (x1)', 'Cash', 89.00),
(241, '2025-12-13 23:59:48', 'Tres Leches Cake (x1)', 'Cash', 179.00),
(242, '2025-12-13 23:59:54', 'Tres Leches Cake (x1)', 'Cash', 179.00),
(243, '2025-12-14 00:02:04', 'Tres Leches Cake (x6)', 'Cash', 1074.00),
(244, '2025-12-14 00:02:18', 'Mango Kani Salad (x1)', 'Gcash', 179.00),
(245, '2025-12-14 00:04:41', 'Caesar Salad (x1)', 'Paymaya', 179.00),
(246, '2025-12-14 00:05:06', 'Caramel Machiato (x1)', 'Cash', 89.00),
(247, '2025-12-14 00:06:05', 'Caesar Salad (x2), Mango Kani Salad (x1), Caramel Machiato (x1), sasas (x1), sasas (x1), sasa (x1)', 'Cash', 761.00),
(248, '2025-12-14 00:14:34', 'sasas (x1)', 'Cash', 23.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('owner','staff') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `created_at`) VALUES
(1, 'owner', '1234', 'owner', '2025-11-13 19:15:43'),
(2, 'staff', 'staff123', 'staff', '2025-11-13 19:40:38'),
(3, 'user', 'user', 'staff', '2025-12-11 15:30:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
