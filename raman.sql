-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2023 at 03:28 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `raman`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--
-- Creation: Feb 27, 2023 at 05:48 PM
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `productid` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELATIONSHIPS FOR TABLE `cart`:
--

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `productid`, `user`, `created_at`) VALUES
(28, '10', '2', '2020-12-09 18:52:32'),
(29, '11', '2', '2020-12-09 18:52:33');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--
-- Creation: Feb 27, 2023 at 05:48 PM
--

CREATE TABLE `orderitems` (
  `id` int(11) NOT NULL,
  `oid` varchar(50) NOT NULL,
  `ptitle` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELATIONSHIPS FOR TABLE `orderitems`:
--

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`id`, `oid`, `ptitle`, `price`) VALUES
(1, '1', 'Casual Style ', '500'),
(2, '2', 'Casual Style ', '500');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--
-- Creation: Feb 27, 2023 at 05:48 PM
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELATIONSHIPS FOR TABLE `orders`:
--

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user`, `address`, `created_at`) VALUES
(1, '2', 'ttttrtrtret', '2020-12-09 18:40:05'),
(2, '2', 'ttttrtrtret', '2020-12-09 18:44:09');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--
-- Creation: Feb 27, 2023 at 05:48 PM
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELATIONSHIPS FOR TABLE `products`:
--

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `img`, `category`, `created_at`) VALUES
(1, 'Pens', '100', 'pen1.jpg', 'Pens', '2020-12-09 01:40:06'),
(2, 'Pens', '200', 'pen2.jpg', 'Pens', '2020-12-09 01:40:06'),
(3, 'Pens', '300', 'pen3.jpg', 'Pens', '2020-12-09 02:29:46'),
(4, 'Pens', '250', 'pen4.jpg', 'Pens', '2020-12-09 02:46:10'),
(5, 'Pens', '300', 'pen6.jpg', 'Pens', '2020-12-09 02:49:43'),
(6, 'Pens', '750', 'pen5.jpg', 'Pens', '2020-12-09 02:49:43'),
(7, 'Pens', '150', 'pen7.jpg', 'Pens', '2020-12-09 02:52:06'),
(8, 'Pens', '500', 'pen8.jpg', 'Pens', '2020-12-09 02:53:40'),
(9, 'Pencil', '50', 'pencil1.jpg', 'Pencil', '2020-12-09 02:56:29'),
(10, 'Pencil', '100', 'pencil2.jpg', 'Pencil', '2020-12-09 02:58:11'),
(11, 'Pencil', '99', 'pencil3.jpg', 'Pencil', '2020-12-09 03:00:21'),
(12, 'Pencil', '45', 'pencil4.jpg', 'Pencil', '2020-12-09 03:01:29'),
(13, 'Pencil', '40', 'pencil5.jpg', 'Pencil', '2020-12-09 03:03:33'),
(14, 'Pencil', '70', 'pencil6.jpg', 'Pencil', '2020-12-09 03:05:17'),
(15, 'Pencil', '85', 'Pencil7.jpg', 'Pencil', '2020-12-09 03:07:05'),
(16, 'Pencil', '99', 'pencil8.jpg', 'Pencil', '2020-12-09 03:08:13'),
(17, 'Sharpner', '80', 'sharpner1.jpg', 'Sharpner', '2020-12-09 03:09:21'),
(18, 'Sharpner', '60', 'sharpner2.jpg', 'Sharpner', '2020-12-09 03:10:27'),
(19, 'Sharpner', '200', 'sharpner3.jpg', 'Sharpner', '2020-12-09 03:11:33'),
(20, 'Sharpner', '70', 'sharpner4.jpg', 'Sharpner', '2020-12-09 03:13:02'),
(21, 'Sharpner', '85', 'sharpner5.jpg', 'Sharpner', '2020-12-09 03:14:09'),
(22, 'Sharpner', '90', 'sharpner6.jpg', 'Sharpner', '2020-12-09 03:15:49'),
(23, 'Sharpner', '120', 'sharpner7.jpg', 'Sharpner', '2020-12-09 03:21:24'),
(24, 'Sharpner', '200', 'sharpner8.jpg', 'Sharpner', '2020-12-09 03:23:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--
-- Creation: Feb 27, 2023 at 05:48 PM
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELATIONSHIPS FOR TABLE `users`:
--

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `password`, `created_at`) VALUES
(2, 'Rman', 'raman@gmail.com', '7986568931', 'e10adc3949ba59abbe56e057f20f883e', '2020-12-09 06:10:00'),
(3, 'saleh', 'salehmalik140@gmail.com', '03009274761', '6679b3b87220a73d94c3db2bab8ed685', '2023-02-27 17:49:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
