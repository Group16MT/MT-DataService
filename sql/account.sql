/* Used in MySQL DB */


create database jfst;
use jfst;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp(),
  `balance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_num` (`account_num`);


ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;


--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` bigint(20) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp(),
  `from_account_num` int(11) NOT NULL,
  `to_account_num` int(11) NOT NULL,
  `amount` double NOT NULL,
  `balance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);
  
ALTER TABLE `transaction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;


--
-- Dumping data for table `employees`
--

INSERT INTO `account` (`id`, `email_id`, `first_name`, `last_name`, `date_time`, `account_num`, `balance`) VALUES
(1, 'abhi.kr@gmail.com', 'Abhishek', 'Kumar', '2023-02-13 18:49:02', 35000),
(2, 'pawan@gmail.com', 'Pawan', 'Rajoriya', '2023-02-14 17:49:01', 20000),
(3, 'monika@gmail.com', 'Monika', 'RK', '2023-02-11 11:49:02', 14400),
(4, 'Murali@gmail.com', 'Murali', 'Krishna', '2023-02-14 18:49:02', 22000),
(5, 'sushant@gmail.com', 'Sushant', 'Kumar', '2023-02-14 18:49:02', 10000),
(6, 'abhi.kr@gmail.com', 'Abhishek2', 'Kumar', '2023-02-13 18:49:02', 15002),
(7, 'pawan@gmail.com', 'Pawan2', 'Rajoriya', '2023-02-14 17:49:01', 20002),
(8, 'monika@gmail.com', 'Monika2', 'RK', '2023-02-11 11:49:02', 14402),
(9, 'Murali@gmail.com', 'Murali2', 'Krishna', '2023-02-14 18:49:02', 22002),
(10, 'sushant@gmail.com', 'Sushant2', 'Kumar', '2023-02-14 18:49:02', 10002),
(11, 'abhi.kr@gmail.com', 'Abhishek3', 'Kumar', '2023-02-13 18:49:02', 15003),
(12, 'pawan@gmail.com', 'Pawan3', 'Rajoriya', '2023-02-14 17:49:01', 20003),
(13, 'monika@gmail.com', 'Monika3', 'RK', '2023-02-11 11:49:02', 14403),
(14, 'Murali@gmail.com', 'Murali3', 'Krishna', '2023-02-14 18:49:02', 22003),
(15, 'sushant@gmail.com', 'Sushant3', 'Kumar', '2023-02-14 18:49:02', 10003),
(16, 'abhi.kr@gmail.com', 'Abhishek4', 'Kumar', '2023-02-13 18:49:02', 15004),
(17, 'pawan@gmail.com', 'Pawan4', 'Rajoriya', '2023-02-14 17:49:01', 20004),
(18, 'monika@gmail.com', 'Monika4', 'RK', '2023-02-11 11:49:02', 14404),
(19, 'Murali@gmail.com', 'Murali4', 'Krishna', '2023-02-14 18:49:02', 22004),
(20, 'sushant@gmail.com', 'Sushant4', 'Kumar', '2023-02-14 18:49:02', 10004),
(21, 'abhi.kr@gmail.com', 'Abhishek5', 'Kumar', '2023-02-13 18:49:02', 15005),
(22, 'pawan@gmail.com', 'Pawan5', 'Rajoriya', '2023-02-14 17:49:01', 20005),
(23, 'monika@gmail.com', 'Monika5', 'RK', '2023-02-11 11:49:02', 14405),
(24, 'Murali@gmail.com', 'Murali5', 'Krishna', '2023-02-14 18:49:02', 22005),
(25, 'sushant@gmail.com', 'Sushant5', 'Kumar', '2023-02-14 18:49:02', 10005)




-- --------------------------------------------------------


