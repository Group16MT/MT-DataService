-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2023 at 07:17 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employees`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp(),
  `account_num` int(11) NOT NULL,
  `balance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `email_id`, `first_name`, `last_name`, `date_time`, `account_num`, `balance`) VALUES
(1, 'abhi.kr@gmail.com', 'Abhishek', 'Kumar', '2023-02-13 18:49:02', 0, 0),
(2, 'kri@gmail.com', 'Ram', 'Shyam', '2023-02-14 17:49:01', 0, 0),
(3, 'abhi6@gmail.com', 'Raju6', 'Rastogi6', '2023-02-11 11:49:02', 0, 0),
(4, 'abhi7@gmail.com', 'Raju7', 'Rastogi7', '2023-02-14 18:49:02', 0, 0),
(5, 'abhi8@gmail.com', 'Raju8', 'Rastogi8', '2023-02-14 18:49:02', 0, 0),
(6, 'abhi9@gmail.com', 'Raju9', 'Rastogi9', '2023-02-14 18:49:02', 0, 0),
(7, 'abhi1@gmail.com', 'Raju1', 'Rastogi1', '2023-02-14 18:49:02', 0, 0),
(8, 'abhi3@gmail.com', 'Raju3', 'Rastogi3', '2023-02-01 18:43:05', 0, 0),
(9, 'abhi4@gmail.com', 'Raju4', 'Rastogi4', '2023-02-14 18:49:02', 0, 0),
(10, 'abhi5@gmail.com', 'Raju5', 'Rastogi5', '2023-02-14 18:49:02', 0, 0),
(11, 'abhi6@gmail.com', 'Raju6', 'Rastogi6', '2023-02-14 18:49:02', 0, 0),
(12, 'abhi7@gmail.com', 'Raju7', 'Rastogi7', '2023-02-14 18:49:02', 0, 0),
(13, 'abhi8@gmail.com', 'Raju8', 'Rastogi8', '2023-02-14 18:49:02', 0, 0),
(14, 'abhi1@gmail.com', 'Raju1', 'Rastogi1', '2023-02-14 18:49:02', 0, 0),
(15, 'abhi3@gmail.com', 'Raju3', 'Rastogi3', '2023-02-14 18:49:02', 0, 0),
(16, 'abhi4@gmail.com', 'Raju4', 'Rastogi4', '2023-02-14 18:49:02', 0, 0),
(17, 'abhi5@gmail.com', 'Raju5', 'Rastogi5', '2023-02-14 18:49:02', 0, 0),
(18, 'abhi6@gmail.com', 'Raju6', 'Rastogi6', '2023-02-14 18:49:02', 0, 0),
(19, 'abhi7@gmail.com', 'Raju7', 'Rastogi7', '2023-02-14 18:49:02', 0, 0),
(20, 'abhi9@gmail.com', 'Raju9', 'Rastogi9', '2023-02-14 18:49:02', 0, 0),
(21, 'abhi1@gmail.com', 'Raju1', 'Rastogi1', '2023-02-14 18:49:02', 0, 0),
(22, 'abhi3@gmail.com', 'Raju3', 'Rastogi3', '2023-02-14 18:49:02', 0, 0),
(23, 'abhi4@gmail.com', 'Raju4', 'Rastogi4', '2023-02-14 18:49:02', 0, 0),
(24, 'abhi5@gmail.com', 'Raju5', 'Rastogi5', '2023-02-14 18:49:02', 0, 0),
(25, 'abhi6@gmail.com', 'Raju6', 'Rastogi6', '2023-02-14 18:49:02', 0, 0),
(26, 'abhi7@gmail.com', 'Raju7', 'Rastogi7', '2023-02-14 18:49:02', 0, 0),
(27, 'abhi8@gmail.com', 'Raju8', 'Rastogi8', '2023-02-14 18:49:02', 0, 0),
(28, 'abhi9@gmail.com', 'Raju9', 'Rastogi9', '2023-02-14 18:49:02', 0, 0),
(29, 'abhi1@gmail.com', 'Raju1', 'Rastogi1', '2023-02-14 18:49:02', 0, 0),
(30, 'abhi3@gmail.com', 'Raju3', 'Rastogi3', '2023-02-14 18:49:02', 0, 0),
(31, 'abhi4@gmail.com', 'Raju4', 'Rastogi4', '2023-02-14 18:49:02', 0, 0),
(32, 'abhi5@gmail.com', 'Raju5', 'Rastogi5', '2023-02-14 18:49:02', 0, 0),
(33, 'abhi6@gmail.com', 'Raju6', 'Rastogi6', '2023-02-14 18:49:02', 0, 0),
(34, 'abhi7@gmail.com', 'Raju7', 'Rastogi7', '2023-02-14 18:49:02', 0, 0),
(35, 'abhi8@gmail.com', 'Raju8', 'Rastogi8', '2023-02-14 18:49:02', 0, 0),
(36, 'abhi9@gmail.com', 'Raju9', 'Rastogi9', '2023-02-14 18:49:02', 0, 0),
(37, 'abhi1@gmail.com', 'Raju1', 'Rastogi1', '2023-02-14 18:49:02', 0, 0),
(38, 'abhi2@gmail.com', 'Raju2', 'Rastogi2', '2023-02-14 18:49:02', 0, 0),
(39, 'abhi3@gmail.com', 'Raju3', 'Rastogi3', '2023-02-14 18:49:02', 0, 0),
(40, 'abhi4@gmail.com', 'Raju4', 'Rastogi4', '2023-02-14 18:49:02', 0, 0),
(41, 'abhi5@gmail.com', 'Raju5', 'Rastogi5', '2023-02-14 18:49:02', 0, 0),
(42, 'abhi6@gmail.com', 'Raju6', 'Rastogi6', '2023-02-14 18:49:02', 0, 0),
(43, 'abhi7@gmail.com', 'Raju7', 'Rastogi7', '2023-02-14 18:49:02', 0, 0),
(44, 'abhi8@gmail.com', 'Raju8', 'Rastogi8', '2023-02-14 18:49:02', 0, 0),
(45, 'abhi9@gmail.com', 'Raju9', 'Rastogi9', '2023-02-14 18:49:02', 0, 0),
(46, 'abhi1@gmail.com', 'Raju1', 'Rastogi1', '2023-02-14 18:49:02', 0, 0),
(47, 'abhi3@gmail.com', 'Raju3', 'Rastogi3', '2023-02-14 18:49:02', 0, 0),
(48, 'abhi4@gmail.com', 'Raju4', 'Rastogi4', '2023-02-14 18:49:02', 0, 0),
(49, 'abhi5@gmail.com', 'Raju5', 'Rastogi5', '2023-02-14 18:49:02', 0, 0),
(50, 'abhi6@gmail.com', 'Raju6', 'Rastogi6', '2023-02-14 18:49:02', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `email`) VALUES
(1, 'ram', 'abhi@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
