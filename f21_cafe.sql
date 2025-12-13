-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2025 at 12:09 PM
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
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `item_name`, `category`, `price`, `stock`) VALUES
(1, 'Vegetable Salad with Sicilian Dressing', 'Salad', 189.00, 15),
(2, 'Caesar Salad', 'Salad', 179.00, 20),
(3, 'Mango Kani Salad', 'Salad', 179.00, 10),
(4, 'French Fries Plain', 'Snacks', 120.00, 50),
(5, 'Cheesy Bacon', 'Snacks', 120.00, 35),
(6, 'Cheesy Nachos', 'Snacks', 130.00, 25),
(7, 'Chicken Nuggets', 'Snacks', 130.00, 40),
(8, 'Belgian Waffle', 'Snacks', 180.00, 18),
(9, 'Peanut Butter with Banana Waffle', 'Snacks', 160.00, 12),
(10, 'Fried Suman with Latik Croffles', 'Snacks', 100.00, 8),
(11, 'Tuna Pesto Pasta', 'Pasta', 189.00, 15),
(12, 'Creamy Carbonara', 'Pasta', 189.00, 15),
(13, 'Classic Spaghetti', 'Pasta', 179.00, 22),
(14, 'Baked Macaroni', 'Pasta', 199.00, 10),
(15, 'Gourmet Tuyo Pasta', 'Pasta', 199.00, 8),
(16, 'Egg Salad Sandwich', 'Sandwich', 180.00, 15),
(17, 'Ham & Egg Sandwich', 'Sandwich', 179.00, 15),
(18, 'Ham & Cheese Sandwich', 'Sandwich', 179.00, 18),
(19, 'Grilled Cheese', 'Sandwich', 179.00, 10),
(20, 'Tuna Sandwich', 'Sandwich', 179.00, 15),
(21, 'Hotdog on Bun', 'Sandwich', 179.00, 12),
(22, 'Clubhouse Sandwich', 'Sandwich', 199.00, 8),
(23, 'Choco Moist Cake', 'Cake', 180.00, 10),
(24, 'Blueberry Cheesecake', 'Cake', 190.00, 5),
(25, 'Tiramisu Cake', 'Cake', 190.00, 6),
(26, 'Carrot Cake', 'Cake', 179.00, 4),
(27, 'Tres Leches Cake', 'Cake', 179.00, 7),
(28, 'Americano', 'Coffee', 89.00, 999),
(29, 'Brewed Coffee', 'Coffee', 79.00, 999),
(30, 'Cappuccino', 'Coffee', 99.00, 999),
(31, 'Caramel Macchiato', 'Coffee', 99.00, 999),
(32, 'French Vanilla Coffee', 'Coffee', 99.00, 999),
(33, 'Espresso Mocha', 'Coffee', 99.00, 999),
(34, 'Dark Choco Java Chip', 'Frappuccino', 189.00, 30),
(35, 'Chocolate Frappuccino', 'Frappuccino', 189.00, 30),
(36, 'Caramel Frappuccino', 'Frappuccino', 189.00, 30),
(37, 'Oreo Frappuccino', 'Frappuccino', 189.00, 30),
(38, 'Salted Caramel Frappuccino', 'Frappuccino', 189.00, 30),
(39, 'Strawberry Frappuccino', 'Frappuccino', 189.00, 30),
(40, 'Hot Chocolate', 'NonCoffee', 129.00, 30),
(41, 'Four Seasons Juice', 'NonCoffee', 79.00, 30),
(42, 'Pineapple Orange Juice', 'NonCoffee', 79.00, 30),
(43, 'Mango Juice', 'NonCoffee', 79.00, 30),
(44, 'Dalandan Juice', 'NonCoffee', 79.00, 30),
(45, 'Iced Tea', 'NonCoffee', 89.00, 30),
(46, 'Salted Caramel Latte', 'NonCoffee', 139.00, 30),
(47, 'Matcha Latte', 'NonCoffee', 139.00, 30),
(48, 'Taro Latte', 'NonCoffee', 139.00, 30),
(49, 'Italian Soda', 'NonCoffee', 139.00, 30),
(50, 'Green Tea', 'Tea', 79.00, 30),
(51, 'Black Tea', 'Tea', 79.00, 30),
(52, 'English Breakfast Tea', 'Tea', 79.00, 30);

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
(1, 'owner', 'admin123', 'owner', '2025-11-13 19:15:43'),
(2, 'staff', 'staff123', 'staff', '2025-11-13 19:40:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

TRUNCATE TABLE inventory;

INSERT INTO inventory (id, item_name, category, price, stock) VALUES
(1, 'Vegetable Salad with Sicilian Dressing', 'Salad', 189.00, 15),
(2, 'Caesar Salad', 'Salad', 179.00, 20),
(3, 'Mango Kani Salad', 'Salad', 179.00, 10),
(4, 'French Fries Plain', 'Snacks', 120.00, 50),
(5, 'Cheesy Bacon', 'Snacks', 120.00, 35),
(6, 'Cheesy Nachos', 'Snacks', 130.00, 25),
(7, 'Chicken Nuggets', 'Snacks', 130.00, 40),
(8, 'Belgian Waffle', 'Snacks', 180.00, 18),
(9, 'Peanut Butter with Banana Waffle', 'Snacks', 160.00, 12),
(10, 'Fried Suman with Latik Croffles', 'Snacks', 100.00, 10),
(11, 'Tuna Pesto Pasta', 'Pasta', 189.00, 15),
(12, 'Creamy Carbonara', 'Pasta', 189.00, 15),
(13, 'Classic Spaghetti', 'Pasta', 179.00, 22),
(14, 'Baked Macaroni', 'Pasta', 199.00, 10),
(15, 'Gourmet Tuyo Pasta', 'Pasta', 199.00, 20),
(16, 'Egg Salad Sandwich', 'Sandwich', 180.00, 15),
(17, 'Ham & Egg Sandwich', 'Sandwich', 179.00, 15),
(18, 'Ham & Cheese Sandwich', 'Sandwich', 179.00, 18),
(19, 'Grilled Cheese', 'Sandwich', 179.00, 10),
(20, 'Tuna Sandwich', 'Sandwich', 179.00, 15),
(21, 'Hotdog on Bun', 'Sandwich', 179.00, 12),
(22, 'Clubhouse Sandwich', 'Sandwich', 199.00, 10),
(23, 'Choco Moist Cake', 'Cake', 180.00, 10),
(24, 'Blueberry Cheesecake', 'Cake', 190.00, 5),
(25, 'Tiramisu Cake', 'Cake', 190.00, 6),
(26, 'Carrot Cake', 'Cake', 179.00, 4),
(27, 'Tres Leches Cake', 'Cake', 179.00, 7),
(28, 'Americano', 'Coffee', 89.00, 999),
(29, 'Brewed Coffee', 'Coffee', 79.00, 999),
(30, 'Cappuccino', 'Coffee', 99.00, 999),
(31, 'Caramel Macchiato', 'Coffee', 99.00, 999),
(32, 'French Vanilla Coffee', 'Coffee', 99.00, 999),
(33, 'Espresso Mocha', 'Coffee', 99.00, 999),
(34, 'Dark Choco Java Chip', 'Frappuccino', 189.00, 30),
(35, 'Chocolate Frappuccino', 'Frappuccino', 189.00, 30),
(36, 'Caramel Frappuccino', 'Frappuccino', 189.00, 30),
(37, 'Oreo Frappuccino', 'Frappuccino', 189.00, 30),
(38, 'Salted Caramel Frappuccino', 'Frappuccino', 189.00, 30),
(39, 'Strawberry Frappuccino', 'Frappuccino', 189.00, 30),
(40, 'Hot Chocolate', 'NonCoffee', 129.00, 30),
(41, 'Four Seasons Juice', 'NonCoffee', 79.00, 30),
(42, 'Pineapple Orange Juice', 'NonCoffee', 79.00, 30),
(43, 'Mango Juice', 'NonCoffee', 79.00, 30),
(44, 'Dalandan Juice', 'NonCoffee', 79.00, 30),
(45, 'Iced Tea', 'NonCoffee', 89.00, 30),
(46, 'Salted Caramel Latte', 'NonCoffee', 139.00, 30),
(47, 'Matcha Latte', 'NonCoffee', 139.00, 30),
(48, 'Taro Latte', 'NonCoffee', 139.00, 30),
(49, 'Italian Soda', 'NonCoffee', 139.00, 30),
(50, 'Green Tea', 'Tea', 79.00, 30),
(51, 'Black Tea', 'Tea', 79.00, 30),
(52, 'English Breakfast Tea', 'Tea', 79.00, 30);