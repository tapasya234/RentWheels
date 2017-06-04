-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2016 at 04:21 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `car_id` int(11) NOT NULL,
  `company` varchar(20) DEFAULT NULL,
  `car_type` varchar(20) DEFAULT NULL,
  `model` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`car_id`, `company`, `car_type`, `model`) VALUES
(6, 'BMW', 'Sedan', '3'),
(7, 'BMW', 'Sedan', '5'),
(8, 'BMW', 'Sedan', 'M5'),
(9, 'BMW', 'SUV', 'X1'),
(10, 'BMW', 'SUV', 'X3'),
(11, 'FORD', 'Sports', 'Mustang'),
(12, 'FORD', 'Sedan', 'Fusion'),
(13, 'FORD', 'Hatchback', 'FOCUS'),
(14, 'Chevrolet', 'Sedan', 'Malibu'),
(15, 'Chevrolet', 'Sports', 'Camaro'),
(16, 'HONDA', 'Sedan', 'Accord'),
(17, 'HONDA', 'Sedan', 'Civic'),
(18, 'HONDA', 'SUV', 'CR-V');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `user_id` int(11) DEFAULT NULL,
  `date_out` date DEFAULT NULL,
  `date_in` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `no_of_days` int(11) DEFAULT NULL,
  `number_plate` varchar(20) DEFAULT NULL,
  `AMOUNT_pay` decimal(6,2) DEFAULT NULL,
  `penality` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`user_id`, `date_out`, `date_in`, `due_date`, `no_of_days`, `number_plate`, `AMOUNT_pay`, `penality`) VALUES
(7, '2016-12-03', '2016-12-05', '2016-12-05', 2, 'CH9999', '200.00', '0.00'),
(8, '2016-12-05', '2016-12-05', '2016-12-10', 5, 'BMW1000', '500.00', '0.00'),
(8, '2016-12-05', '2016-12-05', '2016-12-09', 4, 'FD9999', '360.00', '0.00'),
(8, '2016-12-05', '2016-12-05', '2016-12-06', 1, 'HON200', '40.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `car_id` int(11) DEFAULT NULL,
  `number_plate` varchar(20) NOT NULL,
  `color` varchar(15) DEFAULT NULL,
  `availability` tinyint(1) DEFAULT NULL,
  `price` decimal(6,2) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`car_id`, `number_plate`, `color`, `availability`, `price`, `image`) VALUES
(6, 'BMW100', 'Red', 3, '80.00', '6.jpg'),
(9, 'BMW1000', 'Black', 1, '100.00', '9.jpg'),
(7, 'BMW200', 'Black', 3, '100.00', '7.jpg'),
(10, 'BMW2000', 'Black', 1, '110.00', '10.jpg'),
(8, 'BMW300', 'blue', 2, '80.00', '8.jpg'),
(10, 'bmw4000', 'blue', 1, '85.00', '10.jpg'),
(14, 'CH100', 'white', 4, '100.00', '14.jpg'),
(15, 'CH9999', 'Yellow', 1, '100.00', '15.jpg'),
(12, 'FD100', 'Black', 4, '50.00', '12.jpg'),
(13, 'FD50', 'Blue', 5, '40.00', '13.jpg'),
(11, 'FD9999', 'Red', 1, '90.00', '11.jpg'),
(16, 'HON100', 'White', 3, '50.00', '16.jpg'),
(17, 'HON200', 'Black', 1, '40.00', '17.jpg'),
(18, 'HON900', 'white', 2, '90.00', '18.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users_table`
--

CREATE TABLE `users_table` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(60) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `joining_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `role` varchar(1) NOT NULL DEFAULT 'U',
  `licence_no` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_table`
--

INSERT INTO `users_table` (`user_id`, `user_name`, `user_email`, `user_password`, `joining_date`, `role`, `licence_no`, `address`) VALUES
(5, 'Kartheek Anumolu', 'anumolu.kartheekk@gmail.com', 'Kartheek123', '2016-12-03 02:29:46', 'U', 'DL124563', '7650 Mccallum Blvd'),
(7, 'Tapasya G', 'tapasya@gmail.com', 'tapi0203', '2016-12-03 06:17:25', 'U', 'DL666234', '7815 McCallum Blvd'),
(8, 'Tapasya', 'tapasya@outlook.com', 'a3e22eb51756cf4caa3f2280b5b0448e', '2016-12-05 11:07:33', 'U', 'DL561235', 'Dallas, TX'),
(9, 'Tapasya', 'tapasya234@outlook.com', 'a3e22eb51756cf4caa3f2280b5b0448e', '2016-12-05 11:09:48', 'A', 'DL666234', 'Dallas, TX');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`car_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `number_plate` (`number_plate`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`number_plate`),
  ADD KEY `car_id` (`car_id`);

--
-- Indexes for table `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `users_table`
--
ALTER TABLE `users_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users_table` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`number_plate`) REFERENCES `inventory` (`number_plate`) ON DELETE CASCADE;

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
