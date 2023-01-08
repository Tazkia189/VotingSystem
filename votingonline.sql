-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2021 at 07:54 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `votingonline`
--

-- --------------------------------------------------------

--
-- Table structure for table `bid_products`
--

CREATE TABLE `bid_products` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `time_duration` int(11) NOT NULL,
  `start_at` timestamp NULL DEFAULT NULL,
  `end_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bid_products`
--

INSERT INTO `bid_products` (`id`, `product_id`, `price`, `description`, `time_duration`, `start_at`, `end_at`, `created_at`) VALUES
(29, 8, 3000, 'test', 1, '2021-01-18 09:55:54', '2021-01-18 10:55:54', '2021-01-18 09:55:38'),
(30, 14, 2075, ' an unique view of town. \r\nbidding will start at 2 pm', 1, '2021-01-19 12:05:10', '2021-01-19 14:01:53', '2021-01-19 12:59:49');

-- --------------------------------------------------------

--
-- Table structure for table `bid_reports`
--

CREATE TABLE `bid_reports` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `bid_amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bid_reports`
--

INSERT INTO `bid_reports` (`id`, `product_id`, `customer_id`, `bid_amount`) VALUES
(3, 8, 2, 3001),
(4, 8, 3, 5000),
(5, 14, 2, 1),
(6, 14, 3, 275),
(7, 14, 1, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `product_type` varchar(255) NOT NULL,
  `painter_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `purchase_status` tinyint(1) NOT NULL DEFAULT 0,
  `bid_completed_status` tinyint(1) NOT NULL DEFAULT 0,
  `bid_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `product_type`, `painter_id`, `image`, `purchase_status`, `bid_completed_status`, `bid_status`) VALUES
(8, 'purple-townside', 'pencil colour', 2, 'images/purple-townside.png', 0, 0, 1),
(10, 'town', 'pencil colour', 4, 'images/town.png', 0, 0, 0),
(11, 'golden', 'Oil Painting', 4, 'images/golden.png', 0, 0, 0),
(13, 'p1', 'Oil Painting', 2, 'images/p1.png', 0, 0, 0),
(14, 'town', 'pencil colour', 2, 'images/town.png', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_no` int(11) NOT NULL,
  `user_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone_no`, `user_type`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', 123, 'admin'),
(2, 'Blossom', 'blossom@gmail.com', '12345', 456, 'painter'),
(3, 'Bubbles', 'bubbles@gmail.com', '12345', 789, 'customer'),
(4, 'painter', 'painter@gmail.com', '12345', 9999, 'painter'),
(5, 'customer', 'customer@gmail.com', '12345', 7777, 'customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bid_products`
--
ALTER TABLE `bid_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bid_reports`
--
ALTER TABLE `bid_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `bid_products`
--
ALTER TABLE `bid_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `bid_reports`
--
ALTER TABLE `bid_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
