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
  `balance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `email_id`, `first_name`, `last_name`, `date_time`, `account_num`, `balance`) VALUES
(1, 'abhi.kr@gmail.com', 'Abhishek', 'Kumar', '2023-02-13 18:49:02', 0, 0),
(2, 'kri@gmail.com', 'Ram', 'Shyam', '2023-02-14 17:49:01', 0, 0),
(20, 'abhi6@gmail.com', 'Raju6', 'Rastogi6', '2023-02-11 11:49:02', 0, 0),
(21, 'abhi7@gmail.com', 'Raju7', 'Rastogi7', '2023-02-14 18:49:02', 0, 0),
(22, 'abhi8@gmail.com', 'Raju8', 'Rastogi8', '2023-02-14 18:49:02', 0, 0),
(23, 'abhi9@gmail.com', 'Raju9', 'Rastogi9', '2023-02-14 18:49:02', 0, 0),
(24, 'abhi1@gmail.com', 'Raju1', 'Rastogi1', '2023-02-14 18:49:02', 0, 0),
(26, 'abhi3@gmail.com', 'Raju3', 'Rastogi3', '2023-02-01 18:43:05', 0, 0),
(27, 'abhi4@gmail.com', 'Raju4', 'Rastogi4', '2023-02-14 18:49:02', 0, 0),
(28, 'abhi5@gmail.com', 'Raju5', 'Rastogi5', '2023-02-14 18:49:02', 0, 0),
(29, 'abhi6@gmail.com', 'Raju6', 'Rastogi6', '2023-02-14 18:49:02', 0, 0),
(30, 'abhi7@gmail.com', 'Raju7', 'Rastogi7', '2023-02-14 18:49:02', 0, 0),
(31, 'abhi8@gmail.com', 'Raju8', 'Rastogi8', '2023-02-14 18:49:02', 0, 0),
(33, 'abhi1@gmail.com', 'Raju1', 'Rastogi1', '2023-02-14 18:49:02', 0, 0),
(35, 'abhi3@gmail.com', 'Raju3', 'Rastogi3', '2023-02-14 18:49:02', 0, 0),
(36, 'abhi4@gmail.com', 'Raju4', 'Rastogi4', '2023-02-14 18:49:02', 0, 0),
(37, 'abhi5@gmail.com', 'Raju5', 'Rastogi5', '2023-02-14 18:49:02', 0, 0),
(38, 'abhi6@gmail.com', 'Raju6', 'Rastogi6', '2023-02-14 18:49:02', 0, 0),
(39, 'abhi7@gmail.com', 'Raju7', 'Rastogi7', '2023-02-14 18:49:02', 0, 0),
(41, 'abhi9@gmail.com', 'Raju9', 'Rastogi9', '2023-02-14 18:49:02', 0, 0),
(42, 'abhi1@gmail.com', 'Raju1', 'Rastogi1', '2023-02-14 18:49:02', 0, 0),
(44, 'abhi3@gmail.com', 'Raju3', 'Rastogi3', '2023-02-14 18:49:02', 0, 0),
(45, 'abhi4@gmail.com', 'Raju4', 'Rastogi4', '2023-02-14 18:49:02', 0, 0),
(46, 'abhi5@gmail.com', 'Raju5', 'Rastogi5', '2023-02-14 18:49:02', 0, 0),
(47, 'abhi6@gmail.com', 'Raju6', 'Rastogi6', '2023-02-14 18:49:02', 0, 0),
(48, 'abhi7@gmail.com', 'Raju7', 'Rastogi7', '2023-02-14 18:49:02', 0, 0),
(49, 'abhi8@gmail.com', 'Raju8', 'Rastogi8', '2023-02-14 18:49:02', 0, 0),
(50, 'abhi9@gmail.com', 'Raju9', 'Rastogi9', '2023-02-14 18:49:02', 0, 0),
(51, 'abhi1@gmail.com', 'Raju1', 'Rastogi1', '2023-02-14 18:49:02', 0, 0),
(53, 'abhi3@gmail.com', 'Raju3', 'Rastogi3', '2023-02-14 18:49:02', 0, 0),
(54, 'abhi4@gmail.com', 'Raju4', 'Rastogi4', '2023-02-14 18:49:02', 0, 0),
(55, 'abhi5@gmail.com', 'Raju5', 'Rastogi5', '2023-02-14 18:49:02', 0, 0),
(56, 'abhi6@gmail.com', 'Raju6', 'Rastogi6', '2023-02-14 18:49:02', 0, 0),
(57, 'abhi7@gmail.com', 'Raju7', 'Rastogi7', '2023-02-14 18:49:02', 0, 0),
(58, 'abhi8@gmail.com', 'Raju8', 'Rastogi8', '2023-02-14 18:49:02', 0, 0),
(59, 'abhi9@gmail.com', 'Raju9', 'Rastogi9', '2023-02-14 18:49:02', 0, 0),
(60, 'abhi1@gmail.com', 'Raju1', 'Rastogi1', '2023-02-14 18:49:02', 0, 0),
(61, 'abhi2@gmail.com', 'Raju2', 'Rastogi2', '2023-02-14 18:49:02', 0, 0),
(62, 'abhi3@gmail.com', 'Raju3', 'Rastogi3', '2023-02-14 18:49:02', 0, 0),
(63, 'abhi4@gmail.com', 'Raju4', 'Rastogi4', '2023-02-14 18:49:02', 0, 0),
(64, 'abhi5@gmail.com', 'Raju5', 'Rastogi5', '2023-02-14 18:49:02', 0, 0),
(65, 'abhi6@gmail.com', 'Raju6', 'Rastogi6', '2023-02-14 18:49:02', 0, 0),
(66, 'abhi7@gmail.com', 'Raju7', 'Rastogi7', '2023-02-14 18:49:02', 0, 0),
(67, 'abhi8@gmail.com', 'Raju8', 'Rastogi8', '2023-02-14 18:49:02', 0, 0),
(68, 'abhi9@gmail.com', 'Raju9', 'Rastogi9', '2023-02-14 18:49:02', 0, 0),
(69, 'abhi1@gmail.com', 'Raju1', 'Rastogi1', '2023-02-14 18:49:02', 0, 0),
(71, 'abhi3@gmail.com', 'Raju3', 'Rastogi3', '2023-02-14 18:49:02', 0, 0),
(72, 'abhi4@gmail.com', 'Raju4', 'Rastogi4', '2023-02-14 18:49:02', 0, 0),
(73, 'abhi5@gmail.com', 'Raju5', 'Rastogi5', '2023-02-14 18:49:02', 0, 0),
(74, 'abhi6@gmail.com', 'Raju6', 'Rastogi6', '2023-02-14 18:49:02', 0, 0),
(75, 'abhi7@gmail.com', 'Raju7', 'Rastogi7', '2023-02-14 18:49:02', 0, 0),
(76, 'abhi8@gmail.com', 'Raju8', 'Rastogi8', '2023-02-14 18:49:02', 0, 0),
(77, 'abhi9@gmail.com', 'Raju9', 'Rastogi9', '2023-02-14 18:49:02', 0, 0),
(80, 'abhi3@gmail.com', 'Raju3', 'Rastogi3', '2023-02-14 18:49:02', 0, 0),
(81, 'abhi4@gmail.com', 'Raju4', 'Rastogi4', '2023-02-14 18:49:02', 0, 0),
(82, 'abhi5@gmail.com', 'Raju5', 'Rastogi5', '2023-02-14 18:49:02', 0, 0),
(83, 'abhi6@gmail.com', 'Raju6', 'Rastogi6', '2023-02-14 18:49:02', 0, 0),
(84, 'abhi7@gmail.com', 'Raju7', 'Rastogi7', '2023-02-14 18:49:02', 0, 0),
(85, 'abhi8@gmail.com', 'Raju8', 'Rastogi8', '2023-02-14 18:49:02', 0, 0),
(86, 'abhi9@gmail.com', 'Raju9', 'Rastogi9', '2023-02-14 18:49:02', 0, 0),
(87, 'abhi1@gmail.com', 'Raju1', 'Rastogi1', '2023-02-14 18:49:02', 0, 0),
(88, 'abhi2@gmail.com', 'Raju2', 'Rastogi2', '2023-02-14 18:49:02', 0, 0),
(89, 'abhi3@gmail.com', 'Raju3', 'Rastogi3', '2023-02-14 18:49:02', 0, 0),
(90, 'abhi4@gmail.com', 'Raju4', 'Rastogi4', '2023-02-14 18:49:02', 0, 0),
(91, 'abhi5@gmail.com', 'Raju5', 'Rastogi5', '2023-02-14 18:49:02', 0, 0),
(92, 'abhi6@gmail.com', 'Raju6', 'Rastogi6', '2023-02-14 18:49:02', 0, 0),
(93, 'abhi7@gmail.com', 'Raju7', 'Rastogi7', '2023-02-14 18:49:02', 0, 0),
(94, 'abhi8@gmail.com', 'Raju8', 'Rastogi8', '2023-02-14 18:49:02', 0, 0),
(95, 'abhi9@gmail.com', 'Raju9', 'Rastogi9', '2023-02-14 18:49:02', 0, 0),
(97, 'abhi2@gmail.com', 'Raju2', 'Rastogi2', '2023-02-14 18:49:02', 0, 0),
(98, 'abhi3@gmail.com', 'Raju3', 'Rastogi3', '2023-02-14 18:49:02', 0, 0),
(99, 'abhi4@gmail.com', 'Raju4', 'Rastogi4', '2023-02-14 18:49:02', 0, 0),
(100, 'abhi5@gmail.com', 'Raju5', 'Rastogi5', '2023-02-14 18:49:02', 0, 0),
(101, 'abhi6@gmail.com', 'Raju6', 'Rastogi6', '2023-02-14 18:49:02', 0, 0),
(102, 'abhi7@gmail.com', 'Raju7', 'Rastogi7', '2023-02-14 18:49:02', 0, 0),
(103, 'abhi8@gmail.com', 'Raju8', 'Rastogi8', '2023-02-14 18:49:02', 0, 0),
(104, 'abhi9@gmail.com', 'Raju9', 'Rastogi9', '2023-02-14 18:49:02', 0, 0),
(106, 'abhi2@gmail.com', 'Raju2', 'Rastogi2', '2023-02-14 18:49:02', 0, 0),
(107, 'abhi3@gmail.com', 'Raju3', 'Rastogi3', '2023-02-14 18:49:02', 0, 0),
(108, 'abhi4@gmail.com', 'Raju4', 'Rastogi4', '2023-02-14 18:49:02', 0, 0),
(109, 'abhi5@gmail.com', 'Raju5', 'Rastogi5', '2023-02-14 18:49:02', 0, 0),
(110, 'abhi6@gmail.com', 'Raju6', 'Rastogi6', '2023-02-14 18:49:02', 0, 0),
(111, 'abhi7@gmail.com', 'Raju7', 'Rastogi7', '2023-02-14 18:49:02', 0, 0);

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
