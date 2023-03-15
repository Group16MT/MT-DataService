-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2023 at 07:28 PM
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
  `id` bigint(20) NOT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp(),
  `account_num` int(11) NOT NULL,
  `balance` double NOT NULL,
  `created_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `email_id`, `first_name`, `last_name`, `date_time`, `account_num`, `balance`,`created_date`) VALUES
(1, 'abhi.kr@gmail.com', 'Abhishek', 'Kumar', '2023-02-13 18:49:02', 0, 0,'2023-02-13'),
(2, 'kri@gmail.com', 'Ram', 'Shyam', '2023-02-14 17:49:01', 0, 0,'2023-02-14'),
(20, 'abhi6@gmail.com', 'Raju6', 'Rastogi6', '2023-02-11 11:49:02', 0, 0, '2023-02-11'),
(21, 'abhi7@gmail.com', 'Raju7', 'Rastogi7', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(22, 'abhi8@gmail.com', 'Raju8', 'Rastogi8', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(23, 'abhi9@gmail.com', 'Raju9', 'Rastogi9', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(24, 'abhi1@gmail.com', 'Raju1', 'Rastogi1', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(26, 'abhi3@gmail.com', 'Raju3', 'Rastogi3', '2023-02-01 18:43:05', 0, 0, '2023-02-01'),
(27, 'abhi4@gmail.com', 'Raju4', 'Rastogi4', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(28, 'abhi5@gmail.com', 'Raju5', 'Rastogi5', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(29, 'abhi6@gmail.com', 'Raju6', 'Rastogi6', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(30, 'abhi7@gmail.com', 'Raju7', 'Rastogi7', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(31, 'abhi8@gmail.com', 'Raju8', 'Rastogi8', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(33, 'abhi1@gmail.com', 'Raju1', 'Rastogi1', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(35, 'abhi3@gmail.com', 'Raju3', 'Rastogi3', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(36, 'abhi4@gmail.com', 'Raju4', 'Rastogi4', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(37, 'abhi5@gmail.com', 'Raju5', 'Rastogi5', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(38, 'abhi6@gmail.com', 'Raju6', 'Rastogi6', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(39, 'abhi7@gmail.com', 'Raju7', 'Rastogi7', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(41, 'abhi9@gmail.com', 'Raju9', 'Rastogi9', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(42, 'abhi1@gmail.com', 'Raju1', 'Rastogi1', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(44, 'abhi3@gmail.com', 'Raju3', 'Rastogi3', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(45, 'abhi4@gmail.com', 'Raju4', 'Rastogi4', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(46, 'abhi5@gmail.com', 'Raju5', 'Rastogi5', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(47, 'abhi6@gmail.com', 'Raju6', 'Rastogi6', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(48, 'abhi7@gmail.com', 'Raju7', 'Rastogi7', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(49, 'abhi8@gmail.com', 'Raju8', 'Rastogi8', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(50, 'abhi9@gmail.com', 'Raju9', 'Rastogi9', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(51, 'abhi1@gmail.com', 'Raju1', 'Rastogi1', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(53, 'abhi3@gmail.com', 'Raju3', 'Rastogi3', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(54, 'abhi4@gmail.com', 'Raju4', 'Rastogi4', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(55, 'abhi5@gmail.com', 'Raju5', 'Rastogi5', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(56, 'abhi6@gmail.com', 'Raju6', 'Rastogi6', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(57, 'abhi7@gmail.com', 'Raju7', 'Rastogi7', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(58, 'abhi8@gmail.com', 'Raju8', 'Rastogi8', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(59, 'abhi9@gmail.com', 'Raju9', 'Rastogi9', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(60, 'abhi1@gmail.com', 'Raju1', 'Rastogi1', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(61, 'abhi2@gmail.com', 'Raju2', 'Rastogi2', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(62, 'abhi3@gmail.com', 'Raju3', 'Rastogi3', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(63, 'abhi4@gmail.com', 'Raju4', 'Rastogi4', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(64, 'abhi5@gmail.com', 'Raju5', 'Rastogi5', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(65, 'abhi6@gmail.com', 'Raju6', 'Rastogi6', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(66, 'abhi7@gmail.com', 'Raju7', 'Rastogi7', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(67, 'abhi8@gmail.com', 'Raju8', 'Rastogi8', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(68, 'abhi9@gmail.com', 'Raju9', 'Rastogi9', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(69, 'abhi1@gmail.com', 'Raju1', 'Rastogi1', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(71, 'abhi3@gmail.com', 'Raju3', 'Rastogi3', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(72, 'abhi4@gmail.com', 'Raju4', 'Rastogi4', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(73, 'abhi5@gmail.com', 'Raju5', 'Rastogi5', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(74, 'abhi6@gmail.com', 'Raju6', 'Rastogi6', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(75, 'abhi7@gmail.com', 'Raju7', 'Rastogi7', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(76, 'abhi8@gmail.com', 'Raju8', 'Rastogi8', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(77, 'abhi9@gmail.com', 'Raju9', 'Rastogi9', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(80, 'abhi3@gmail.com', 'Raju3', 'Rastogi3', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(81, 'abhi4@gmail.com', 'Raju4', 'Rastogi4', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(82, 'abhi5@gmail.com', 'Raju5', 'Rastogi5', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(83, 'abhi6@gmail.com', 'Raju6', 'Rastogi6', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(84, 'abhi7@gmail.com', 'Raju7', 'Rastogi7', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(85, 'abhi8@gmail.com', 'Raju8', 'Rastogi8', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(86, 'abhi9@gmail.com', 'Raju9', 'Rastogi9', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(87, 'abhi1@gmail.com', 'Raju1', 'Rastogi1', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(88, 'abhi2@gmail.com', 'Raju2', 'Rastogi2', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(89, 'abhi3@gmail.com', 'Raju3', 'Rastogi3', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(90, 'abhi4@gmail.com', 'Raju4', 'Rastogi4', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(91, 'abhi5@gmail.com', 'Raju5', 'Rastogi5', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(92, 'abhi6@gmail.com', 'Raju6', 'Rastogi6', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(93, 'abhi7@gmail.com', 'Raju7', 'Rastogi7', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(94, 'abhi8@gmail.com', 'Raju8', 'Rastogi8', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(95, 'abhi9@gmail.com', 'Raju9', 'Rastogi9', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(97, 'abhi2@gmail.com', 'Raju2', 'Rastogi2', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(98, 'abhi3@gmail.com', 'Raju3', 'Rastogi3', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(99, 'abhi4@gmail.com', 'Raju4', 'Rastogi4', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(100, 'abhi5@gmail.com', 'Raju5', 'Rastogi5', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(101, 'abhi6@gmail.com', 'Raju6', 'Rastogi6', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(102, 'abhi7@gmail.com', 'Raju7', 'Rastogi7', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(103, 'abhi8@gmail.com', 'Raju8', 'Rastogi8', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(104, 'abhi9@gmail.com', 'Raju9', 'Rastogi9', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(106, 'abhi2@gmail.com', 'Raju2', 'Rastogi2', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(107, 'abhi3@gmail.com', 'Raju3', 'Rastogi3', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(108, 'abhi4@gmail.com', 'Raju4', 'Rastogi4', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(109, 'abhi5@gmail.com', 'Raju5', 'Rastogi5', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(110, 'abhi6@gmail.com', 'Raju6', 'Rastogi6', '2023-02-14 18:49:02', 0, 0, '2023-02-14'),
(111, 'abhi7@gmail.com', 'Raju7', 'Rastogi7', '2023-02-14 18:49:02', 0, 0, '2023-02-14');

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
