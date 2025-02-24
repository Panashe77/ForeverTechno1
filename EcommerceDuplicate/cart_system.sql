-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2023 at 03:13 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cart_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(2, 'admin', 'admin'),
(3, 'admin2', 'admin2');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `total_price` varchar(100) NOT NULL,
  `product_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pmode` varchar(50) NOT NULL,
  `products` varchar(255) NOT NULL,
  `amount_paid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `pmode`, `products`, `amount_paid`) VALUES
(12, 'Panashe Hove', 'hovepanashe0@gmail.com', '+27815465865', '150 Belgravia', 'cod', 'Samsung Galaxy S20+ 5G 128GB Fully Unlocked Smartphone(1), Apple iPhone 14 Pro Max, 256GB, Deep Purple(1), MacBook Air Laptop Apple M1 chip 8GB Memory 256GB SSD(1)', '49000'),
(13, 'hhhh', 'hhhh@gmai.com', '+27815465865', '150 Belgravia', 'cards', 'Samsung Galaxy S20+ 5G 128GB Fully Unlocked Smartphone(2), GPX Cassette Player Radio(1)', '19800'),
(14, 'Panashe Hove', 'hovepanashe0@gmail.com', '+27815465865', '150 Belgravia', 'cod', '', '0'),
(15, 'kevin', 'poiuh@gmai.com', '+27815465865', '150 Belgravia', 'cod', '', '0'),
(16, 'Panashe Hove', 'hovepanashe0@gmail.com', '+27815465865', '150 Belgravia', 'cod', 'GPX Cassette Player Radio(1)', '800');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_qty` int(11) NOT NULL DEFAULT 1,
  `product_image` varchar(255) NOT NULL,
  `product_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `product_price`, `product_qty`, `product_image`, `product_code`) VALUES
(1, 'Apple iPhone 14 Pro Max, 256GB, Deep Purple', '20500', 1, 'Iphone_14.jpg', 'p1000'),
(2, 'Samsung Galaxy S20+ 5G 128GB Fully Unlocked Smartphone', '9500', 1, 'Samsung_20.jpg', 'p1001'),
(3, 'MacBook Air Laptop Apple M1 chip 8GB Memory 256GB SSD', '19000', 1, 'Macbook.jpg', 'p1002'),
(4, 'Apple Watch Series 8 (GPS) 45mm Aluminium Case', '3000', 1, 'Apple_watch.jpg', 'p1003'),
(5, 'Apple - AirPods Max - Silver', '4000', 1, 'Airpod_max.jpg', 'p1004'),
(6, 'Samsung - S39C series 27 LED 1000R Curved FHD FreeSync Monitor', '30000', 1, 'Samsung_tv.jpg', 'p1005'),
(7, 'GPX Cassette Player Radio', '800', 1, 'Radio.jpg', 'p1006'),
(9, 'Google Play - $10 Gift Card [Digital]', '375', 1, 'Gift_card.jpg', 'p1007');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `user_type` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password_hash`, `user_type`) VALUES
(1, 'hh dd', 'fff@gmail.com', '$2y$10$.pnKbaR6Rrz/5BAPNhjApecNGLZMb9RWQTSZMxCfXa/nt1d6oe4T.', ''),
(5, 'hh ddhi', 'nifff@gmail.com', '$2y$10$.I.VRHiiL.GjPcDWkuUhRuZpjbZp5L/DR7VldVDNkttFKYN3tKW2.', ''),
(7, 'nnhh ddhi', 'nnnnifff@gmail.com', '$2y$10$aLTB4PXGAcpyGEhCNeKn7OWeykR7vf.enxAxuX/qdExblHJ7HOism', ''),
(11, 'jhgvj', 'hff@gmail.com', '$2y$10$1FEz6rGSq1MYzYtjpWYlpunCR1uKdyZfd01qi4lKLvc5nBgFQ0V7m', ''),
(13, 'kevin', 'poiuh@gmai.com', '$2y$10$/JcA5NvtGZQgBNkL4mstuerSpf0FP1Wj.mlI.5CgKw4TXseesdKdi', ''),
(15, 'Panashe Hove', 'hhUhh@gmai.com', '$2y$10$GgDHq/D6bHoVimmN.T4QPuT.wqHzS1olhHJpIAMoJQCL1MuBhjBPS', ''),
(17, 'Panashe Hove', 'hovepanashe0@gmail.com', '6268badeb8289ff094b3b1f5f76d99ae', 'user'),
(19, 'kevin', 'pzoiuh@gmai.com', '6268badeb8289ff094b3b1f5f76d99ae', 'admin'),
(20, 'ben', 'tyhfd0@gmail.com', '6268badeb8289ff094b3b1f5f76d99ae', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code_2` (`product_code`),
  ADD KEY `product_code` (`product_code`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
