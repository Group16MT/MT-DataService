-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2023 at 07:32 AM
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

CREATE TABLE `transaction` (
  `id` bigint(20) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp(),
  `from_account_num` int(11) NOT NULL,
  `to_account_num` int(11) NOT NULL,
  `amount` double NOT NULL,
  `balance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `transaction` (`id`, `date_time`, `from_account_num`, `to_account_num`, `amount`, `balance`) VALUES
(1, '2023-03-28 18:49:02', 123, 124, 500, 600);

ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);
  
ALTER TABLE `transaction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `email_id`, `first_name`, `last_name`, `date_time`, `account_num`, `balance`) VALUES
(1, 'abhi.kr@gmail.com', 'Abhishek', 'Kumar', '2023-02-13 18:49:02', 101, 301),
(2, 'kri@gmail.com', 'Ram', 'Shyam', '2023-02-14 17:49:01', 102, 302),
(3, 'abhi6@gmail.com', 'Raju6', 'Rastogi6', '2023-02-11 11:49:02', 103, 303),
(4, 'abhi7@gmail.com', 'Raju7', 'Rastogi7', '2023-02-14 18:49:02', 104, 304),
(5, 'abhi8@gmail.com', 'Raju8', 'Rastogi8', '2023-02-14 18:49:02', 105, 305),
(6, 'abhi9@gmail.com', 'Raju9', 'Rastogi9', '2023-02-14 18:49:02', 106, 306),
(7, 'abhi1@gmail.com', 'Raju1', 'Rastogi1', '2023-02-14 18:49:02', 107, 307),
(8, 'abhi3@gmail.com', 'Raju3', 'Rastogi3', '2023-02-01 18:43:05', 108, 308),
(9, 'abhi4@gmail.com', 'Raju4', 'Rastogi4', '2023-02-14 18:49:02', 109, 309),
(10, 'abhi5@gmail.com', 'Raju5', 'Rastogi5', '2023-02-14 18:49:02', 110, 310),
(11, 'abhi6@gmail.com', 'Raju6', 'Rastogi6', '2023-02-14 18:49:02', 111, 311),
(12, 'abhi7@gmail.com', 'Raju7', 'Rastogi7', '2023-02-14 18:49:02', 112, 312),
(13, 'abhi8@gmail.com', 'Raju8', 'Rastogi8', '2023-02-14 18:49:02', 113, 313),
(14, 'abhi1@gmail.com', 'Raju1', 'Rastogi1', '2023-02-14 18:49:02', 114, 314),
(15, 'abhi3@gmail.com', 'Raju3', 'Rastogi3', '2023-02-14 18:49:02', 115, 315),
(16, 'abhi4@gmail.com', 'Raju4', 'Rastogi4', '2023-02-14 18:49:02', 116, 316),
(17, 'abhi5@gmail.com', 'Raju5', 'Rastogi5', '2023-02-14 18:49:02', 117, 317),
(18, 'abhi6@gmail.com', 'Raju6', 'Rastogi6', '2023-02-14 18:49:02', 118, 318),
(19, 'abhi7@gmail.com', 'Raju7', 'Rastogi7', '2023-02-14 18:49:02', 119, 319),
(20, 'abhi9@gmail.com', 'Raju9', 'Rastogi9', '2023-02-14 18:49:02', 120, 320),
(21, 'abhi1@gmail.com', 'Raju1', 'Rastogi1', '2023-02-14 18:49:02', 121, 321),
(22, 'abhi3@gmail.com', 'Raju3', 'Rastogi3', '2023-02-14 18:49:02', 122, 322),
(23, 'abhi4@gmail.com', 'Raju4', 'Rastogi4', '2023-02-14 18:49:02', 123, 323),
(24, 'abhi5@gmail.com', 'Raju5', 'Rastogi5', '2023-02-14 18:49:02', 124, 324),
(25, 'abhi6@gmail.com', 'Raju6', 'Rastogi6', '2023-02-14 18:49:02', 125, 325),
(26, 'abhi7@gmail.com', 'Raju7', 'Rastogi7', '2023-02-14 18:49:02', 126, 326),
(27, 'abhi8@gmail.com', 'Raju8', 'Rastogi8', '2023-02-14 18:49:02', 127, 327),
(28, 'abhi9@gmail.com', 'Raju9', 'Rastogi9', '2023-02-14 18:49:02', 128, 328),
(29, 'abhi1@gmail.com', 'Raju1', 'Rastogi1', '2023-02-14 18:49:02', 129, 329),
(30, 'abhi3@gmail.com', 'Raju3', 'Rastogi3', '2023-02-14 18:49:02', 130, 330),
(31, 'abhi4@gmail.com', 'Raju4', 'Rastogi4', '2023-02-14 18:49:02', 131, 331),
(32, 'abhi5@gmail.com', 'Raju5', 'Rastogi5', '2023-02-14 18:49:02', 132, 332),
(33, 'abhi6@gmail.com', 'Raju6', 'Rastogi6', '2023-02-14 18:49:02', 133, 333),
(34, 'abhi7@gmail.com', 'Raju7', 'Rastogi7', '2023-02-14 18:49:02', 134, 334),
(35, 'abhi8@gmail.com', 'Raju8', 'Rastogi8', '2023-02-14 18:49:02', 135, 335),
(36, 'abhi9@gmail.com', 'Raju9', 'Rastogi9', '2023-02-14 18:49:02', 136, 336),
(37, 'abhi1@gmail.com', 'Raju1', 'Rastogi1', '2023-02-14 18:49:02', 137, 337),
(38, 'abhi2@gmail.com', 'Raju2', 'Rastogi2', '2023-02-14 18:49:02', 138, 338),
(39, 'abhi3@gmail.com', 'Raju3', 'Rastogi3', '2023-02-14 18:49:02', 139, 339),
(40, 'abhi4@gmail.com', 'Raju4', 'Rastogi4', '2023-02-14 18:49:02', 140, 340),
(41, 'abhi5@gmail.com', 'Raju5', 'Rastogi5', '2023-02-14 18:49:02', 141, 341),
(42, 'abhi6@gmail.com', 'Raju6', 'Rastogi6', '2023-02-14 18:49:02', 142, 342),
(43, 'abhi7@gmail.com', 'Raju7', 'Rastogi7', '2023-02-14 18:49:02', 143, 343),
(44, 'abhi8@gmail.com', 'Raju8', 'Rastogi8', '2023-02-14 18:49:02', 144, 344),
(45, 'abhi9@gmail.com', 'Raju9', 'Rastogi9', '2023-02-14 18:49:02', 145, 345),
(46, 'abhi1@gmail.com', 'Raju1', 'Rastogi1', '2023-02-14 18:49:02', 146, 346),
(47, 'abhi3@gmail.com', 'Raju3', 'Rastogi3', '2023-02-14 18:49:02', 147, 347),
(48, 'abhi4@gmail.com', 'Raju4', 'Rastogi4', '2023-02-14 18:49:02', 148, 348),
(49, 'abhi5@gmail.com', 'Raju5', 'Rastogi5', '2023-02-14 18:49:02', 149, 349),
(50, 'abhi6@gmail.com', 'Raju6', 'Rastogi6', '2023-02-14 18:49:02', 150, 350);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'abhi', 'abhi@1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_num` (`account_num`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;



ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);
  
ALTER TABLE `transaction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
