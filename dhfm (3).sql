-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2023 at 07:19 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dhfm`
--

-- --------------------------------------------------------

--
-- Table structure for table `bal_master`
--

CREATE TABLE `bal_master` (
  `user_id` int(60) NOT NULL,
  `cash_total` int(60) NOT NULL,
  `online_total` int(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bal_master`
--

INSERT INTO `bal_master` (`user_id`, `cash_total`, `online_total`) VALUES
(1, 90000, 59500),
(2, 10000, 10000),
(3, 0, 0),
(4, 493942, 877);

-- --------------------------------------------------------

--
-- Table structure for table `budget_master`
--

CREATE TABLE `budget_master` (
  `budget_id` int(12) NOT NULL,
  `user_id` int(12) NOT NULL,
  `cate_id` int(12) NOT NULL,
  `amount` int(100) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `budget_master`
--

INSERT INTO `budget_master` (`budget_id`, `user_id`, `cate_id`, `amount`, `start_date`, `end_date`) VALUES
(1, 4, 9, 996, '2023-05-01', '2023-05-31');

-- --------------------------------------------------------

--
-- Table structure for table `category_master`
--

CREATE TABLE `category_master` (
  `cate_id` int(30) NOT NULL,
  `cate_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_master`
--

INSERT INTO `category_master` (`cate_id`, `cate_name`) VALUES
(2, 'TRANSPORT'),
(3, 'Education'),
(4, 'Grocery'),
(5, 'Health'),
(6, 'Bill'),
(7, 'Shopping'),
(9, 'food'),
(10, 'hii'),
(11, 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `expense_master`
--

CREATE TABLE `expense_master` (
  `expense_id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `cate_id` int(50) NOT NULL,
  `amount` int(60) NOT NULL,
  `expense_de` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `pay_mode` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expense_master`
--

INSERT INTO `expense_master` (`expense_id`, `user_id`, `cate_id`, `amount`, `expense_de`, `date`, `pay_mode`) VALUES
(14, 1, 3, 5000, 'test', '2023-05-01', 'Cash'),
(23, 1, 5, 500, 'my', '2023-05-01', 'Online'),
(24, 4, 3, 500, 'abc', '2023-05-07', 'Cash'),
(25, 4, 7, 123, 'aasd', '2023-05-07', 'Online'),
(26, 4, 9, 1000, 'fees', '2023-05-08', 'Cash'),
(27, 4, 9, 400, 'asd', '2022-12-08', 'Cash'),
(28, 4, 2, 1000, 'fees', '2023-05-08', 'Cash'),
(36, 4, 4, 300, 'asd', '2023-05-08', 'Cash'),
(37, 4, 9, 300, 'qwew', '2023-05-08', 'Cash'),
(38, 4, 2, 200, 'QWWE', '2023-05-08', 'Cash'),
(39, 4, 2, 200, 'QWWE', '2023-05-08', 'Cash'),
(40, 4, 2, 200, 'QWWE', '2023-05-08', 'Cash'),
(41, 4, 2, 200, 'QWWE', '2023-05-08', 'Cash'),
(42, 4, 2, 200, 'QWWE', '2023-05-08', 'Cash'),
(43, 4, 2, 200, 'QWWE', '2023-05-08', 'Cash'),
(44, 4, 2, 200, 'QWWE', '2023-05-08', 'Cash'),
(45, 4, 2, 200, 'QWWE', '2023-05-08', 'Cash'),
(46, 4, 2, 200, 'QWWE', '2023-05-08', 'Cash'),
(47, 4, 2, 200, 'QWWE', '2023-05-08', 'Cash'),
(48, 4, 2, 200, 'QWWE', '2023-05-08', 'Cash'),
(49, 4, 2, 200, 'QWWE', '2023-05-08', 'Cash'),
(50, 4, 2, 200, 'QWWE', '2023-05-08', 'Cash'),
(51, 4, 2, 200, 'QWWE', '2023-05-08', 'Cash'),
(52, 4, 2, 100, 'qwee', '2023-03-12', 'Cash'),
(53, 4, 2, 10, 'qwewre', '2023-03-12', 'Cash'),
(54, 4, 2, 5, 'asdf', '2023-05-08', 'Cash'),
(55, 4, 3, 10, 'qweweter', '2023-03-12', 'Cash'),
(56, 4, 2, 12, 'qweq', '2023-05-08', 'Cash'),
(57, 4, 9, 5, 'ads', '2023-05-08', 'Cash'),
(58, 4, 9, 5, 'ads', '2023-05-08', 'Cash'),
(59, 4, 9, 5, 'ncvdfjg', '2023-05-08', 'Cash'),
(60, 4, 9, 5, 'ssd', '2023-05-08', 'Cash'),
(61, 4, 9, 90, 'qwere', '2023-05-08', 'Cash'),
(62, 4, 9, 5, '1ae', '2023-05-08', 'Cash'),
(63, 4, 0, 3, 'aea', '2032-05-08', 'Cash'),
(64, 4, 9, 3, 'qe', '2023-05-08', 'Cash'),
(65, 4, 2, 100, 'qwqwe', '2023-05-08', 'Online'),
(66, 4, 3, 300, 'qwe', '2023-05-08', 'Cash'),
(67, 4, 6, 2000, 'hello', '2023-05-08', 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `income_master`
--

CREATE TABLE `income_master` (
  `income_id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `income_de` varchar(250) NOT NULL,
  `amount` int(60) NOT NULL,
  `date` date NOT NULL,
  `pay_mode` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `income_master`
--

INSERT INTO `income_master` (`income_id`, `user_id`, `income_de`, `amount`, `date`, `pay_mode`) VALUES
(1, 1, 'my salary', 20000, '2023-05-12', 'Cash'),
(2, 1, 'try', 20000, '2023-05-08', 'Cash'),
(3, 1, 'test', 10000, '2023-05-10', 'Online'),
(4, 4, 'salary', 500000, '2023-05-01', 'Cash'),
(5, 4, 'salary', 1000, '2023-05-02', 'Online'),
(6, 4, 'salary', 100, '2023-05-10', 'Online'),
(7, 4, 'hello', 4, '2023-05-10', 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE `user_master` (
  `user_id` int(30) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `email_id` varchar(250) NOT NULL,
  `mobile_no` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`user_id`, `user_name`, `email_id`, `mobile_no`, `password`) VALUES
(1, 'juxxy', 'j@gmail.com', '5434611650', 'f5465422c5c73f66273df80f628440c8'),
(2, 'abc', 's@gmail.com', '5341642658', '3edf87bce4f5dd21020011731a82d7da'),
(3, 'test', 'k@gmail.com', '5498144145', '16d7a4fca7442dda3ad93c9a726597e4'),
(4, 'hello', 'hello@gmail.com', '1234567890', '202cb962ac59075b964b07152d234b70');

--
-- Triggers `user_master`
--
DELIMITER $$
CREATE TRIGGER `user_bal_insert` AFTER INSERT ON `user_master` FOR EACH ROW insert into bal_master (cash_total,online_total) values(0,0)
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bal_master`
--
ALTER TABLE `bal_master`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `budget_master`
--
ALTER TABLE `budget_master`
  ADD PRIMARY KEY (`budget_id`);

--
-- Indexes for table `category_master`
--
ALTER TABLE `category_master`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `expense_master`
--
ALTER TABLE `expense_master`
  ADD PRIMARY KEY (`expense_id`);

--
-- Indexes for table `income_master`
--
ALTER TABLE `income_master`
  ADD PRIMARY KEY (`income_id`);

--
-- Indexes for table `user_master`
--
ALTER TABLE `user_master`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bal_master`
--
ALTER TABLE `bal_master`
  MODIFY `user_id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `budget_master`
--
ALTER TABLE `budget_master`
  MODIFY `budget_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category_master`
--
ALTER TABLE `category_master`
  MODIFY `cate_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `expense_master`
--
ALTER TABLE `expense_master`
  MODIFY `expense_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `income_master`
--
ALTER TABLE `income_master`
  MODIFY `income_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_master`
--
ALTER TABLE `user_master`
  MODIFY `user_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
