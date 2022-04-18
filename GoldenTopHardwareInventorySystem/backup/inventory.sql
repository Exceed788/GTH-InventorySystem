-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2021 at 11:17 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_id` int(11) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `branch_address` varchar(100) NOT NULL,
  `branch_contact` varchar(50) NOT NULL,
  `skin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_name`, `branch_address`, `branch_contact`, `skin`) VALUES
(3, 'Sample employee name', 'fdgdfgdfg', '5435345345', 'purple'),
(5, 'KELVIN NOCHETE', 'kidapawan', '4545454', 'yellow');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(5, 'Television'),
(6, 'Sofa'),
(7, 'Video Player'),
(8, 'Home Appliance'),
(9, 'Kitchen Appliance'),
(10, 'Gadget'),
(11, 'Rice Cooker'),
(12, 'Cosmetics'),
(13, '1');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `cust_first` varchar(50) NOT NULL,
  `cust_last` varchar(30) NOT NULL,
  `cust_address` varchar(100) NOT NULL,
  `cust_contact` varchar(30) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `cust_pic` varchar(300) NOT NULL,
  `bday` date NOT NULL,
  `nickname` varchar(30) NOT NULL,
  `house_status` varchar(30) NOT NULL,
  `years` varchar(20) NOT NULL,
  `rent` varchar(10) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `emp_no` varchar(30) NOT NULL,
  `emp_address` varchar(100) NOT NULL,
  `emp_year` varchar(10) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `salary` varchar(30) NOT NULL,
  `spouse` varchar(30) NOT NULL,
  `spouse_no` varchar(30) NOT NULL,
  `spouse_emp` varchar(50) NOT NULL,
  `spouse_details` varchar(100) NOT NULL,
  `spouse_income` decimal(10,2) NOT NULL,
  `comaker` varchar(30) NOT NULL,
  `comaker_details` varchar(100) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `credit_status` varchar(10) NOT NULL,
  `ci_remarks` varchar(1000) NOT NULL,
  `ci_name` varchar(50) NOT NULL,
  `ci_date` date NOT NULL,
  `payslip` int(11) NOT NULL,
  `valid_id` int(11) NOT NULL,
  `cert` int(11) NOT NULL,
  `cedula` int(11) NOT NULL,
  `income` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_first`, `cust_last`, `cust_address`, `cust_contact`, `balance`, `cust_pic`, `bday`, `nickname`, `house_status`, `years`, `rent`, `emp_name`, `emp_no`, `emp_address`, `emp_year`, `occupation`, `salary`, `spouse`, `spouse_no`, `spouse_emp`, `spouse_details`, `spouse_income`, `comaker`, `comaker_details`, `branch_id`, `credit_status`, `ci_remarks`, `ci_name`, `ci_date`, `payslip`, `valid_id`, `cert`, `cedula`, `income`) VALUES
(1, 'Kenneth', 'Aboy', 'Silay City\r\n', '09098', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 1, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(2, 'Honeylee', 'Magbanua', 'Brgy. Busay, bago CIty', '09051914070', '303.20', 'default.gif', '1989-10-14', 'lee', 'owned', '27', 'NA', 'Stratium Software', '034-707-1630', 'Ayala Northpoint', '1', 'Systems Administrator', '12000', 'NA', 'NA', 'NA', 'NA', '0.00', 'Kaye Angela Cueva', 'Cadiz City', 1, 'Approved', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(3, 'kkkk', 'kkkkk', 'h ggfhfh', '56546456', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 5, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(4, 'we', 'dfws', 'dsfgsdfs', '3123', '-11840.00', 'default.gif', '2021-10-05', 'e', 'owned', '', '', 'sdfs', 'd', 'sdfsd', 'dsf', 'fsdf', 'f', 'fds', 'df', 'fd', 'dsf', '0.00', 'd', 'sdfsd', 5, 'Approved', '', 'asdasd', '2021-10-28', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `history_log`
--

CREATE TABLE `history_log` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_log`
--

INSERT INTO `history_log` (`log_id`, `user_id`, `action`, `date`) VALUES
(1, 1, 'added 5 of LG 43\" UHD TV UH6100', '2017-02-04 01:10:41'),
(2, 1, 'added 100 of Lotion', '2017-02-04 01:10:49'),
(3, 1, 'added 10 of Rice Cooker', '2017-02-04 01:10:55'),
(4, 1, 'added 5 of Samsung', '2017-02-04 01:11:07'),
(5, 1, 'has logged in the system at ', '2017-02-04 08:22:52'),
(6, 1, 'has logged in the system at ', '2017-02-04 08:51:11'),
(7, 1, 'has logged in the system at ', '2017-02-04 13:13:53'),
(8, 1, 'has logged in the system at ', '2017-02-21 18:56:56'),
(9, 1, 'added a payment of -76.6 for , ', '2017-02-21 00:00:00'),
(10, 7, 'has logged in the system at ', '2021-09-30 08:38:08'),
(11, 7, 'has logged in the system at ', '2021-09-30 08:56:45'),
(12, 7, 'has logged out the system at ', '2021-09-30 08:57:39'),
(13, 7, 'has logged in the system at ', '2021-09-30 09:02:50'),
(14, 7, 'has logged out the system at ', '2021-09-30 09:04:06'),
(15, 7, 'has logged in the system at ', '2021-09-30 09:09:08'),
(16, 7, 'has logged out the system at ', '2021-09-30 09:09:58'),
(17, 8, 'has logged in the system at ', '2021-09-30 09:10:41'),
(18, 8, 'has logged in the system at ', '2021-09-30 09:11:56'),
(19, 8, 'has logged out the system at ', '2021-09-30 09:12:33'),
(20, 7, 'has logged in the system at ', '2021-09-30 09:15:02'),
(21, 7, 'has logged out the system at ', '2021-09-30 09:33:48'),
(22, 7, 'has logged in the system at ', '2021-09-30 09:34:21'),
(23, 7, 'has logged out the system at ', '2021-09-30 09:35:25'),
(24, 8, 'has logged in the system at ', '2021-09-30 09:35:34'),
(25, 8, 'has logged out the system at ', '2021-09-30 09:36:13'),
(26, 7, 'has logged in the system at ', '2021-09-30 09:37:45'),
(27, 8, 'has logged in the system at ', '2021-09-30 10:43:56'),
(28, 8, 'has logged in the system at ', '2021-09-30 10:44:50'),
(29, 8, 'has logged in the system at ', '2021-09-30 10:44:57'),
(30, 8, 'has logged out the system at ', '2021-09-30 11:18:29'),
(31, 7, 'has logged in the system at ', '2021-09-30 11:18:39'),
(32, 7, 'has logged out the system at ', '2021-09-30 11:19:34'),
(33, 8, 'has logged in the system at ', '2021-09-30 11:20:47'),
(34, 8, 'has logged out the system at ', '2021-09-30 11:23:02'),
(35, 8, 'has logged in the system at ', '2021-09-30 11:23:12'),
(36, 8, 'has logged out the system at ', '2021-09-30 11:23:46'),
(37, 8, 'has logged in the system at ', '2021-09-30 11:26:37'),
(38, 8, 'has logged in the system at ', '2021-09-30 11:28:26'),
(39, 8, 'has logged out the system at ', '2021-09-30 11:39:54'),
(40, 8, 'has logged in the system at ', '2021-09-30 11:55:07'),
(41, 8, 'has logged in the system at ', '2021-09-30 12:05:48'),
(42, 8, 'has logged out the system at ', '2021-09-30 12:06:09'),
(43, 6, 'has logged out the system at ', '2021-09-30 12:07:09'),
(44, 7, 'has logged in the system at ', '2021-09-30 12:07:37'),
(45, 7, 'has logged in the system at ', '2021-09-30 12:48:10'),
(46, 7, 'has logged out the system at ', '2021-09-30 14:35:37'),
(47, 7, 'has logged in the system at ', '2021-09-30 21:34:20'),
(48, 7, 'has logged in the system at ', '2021-10-03 21:33:32'),
(49, 7, 'added 2 of sample', '2021-10-03 21:38:44'),
(50, 7, 'added 1 of sample', '2021-10-03 21:47:30'),
(51, 7, 'added a payment of 5920 for , ', '2021-10-03 00:00:00'),
(52, 7, 'added a payment of 5920 for , ', '2021-10-03 00:00:00'),
(53, 7, 'has logged in the system at ', '2021-10-13 13:40:51'),
(54, 7, 'added 20 of sample', '2021-10-13 13:41:52'),
(55, 8, 'has logged in the system at ', '2021-10-13 21:23:41'),
(56, 8, 'added 12 of ricecooker', '2021-10-13 21:27:03'),
(57, 8, 'added 20 of ricecooker', '2021-10-13 21:27:24'),
(58, 7, 'has logged in the system at ', '2021-10-22 20:29:29'),
(59, 9, 'has logged in the system at ', '2021-10-25 15:04:19'),
(60, 9, 'has logged out the system at ', '2021-10-25 15:07:04'),
(61, 9, 'has logged in the system at ', '2021-10-25 15:11:58'),
(62, 9, 'added 20 of sample', '2021-10-25 15:12:20'),
(63, 9, 'has logged in the system at ', '2021-10-25 21:05:07'),
(64, 9, 'has logged in the system at ', '2021-10-28 12:34:13'),
(65, 9, 'has logged in the system at ', '2021-10-28 12:39:24'),
(66, 9, 'has logged in the system at ', '2021-10-28 12:45:26'),
(67, 9, 'added 1 of sample', '2021-10-28 12:51:07'),
(68, 9, 'added 1 of sample', '2021-10-28 12:57:25'),
(69, 9, 'has logged in the system at ', '2021-10-28 13:10:40'),
(70, 9, 'has logged in the system at ', '2021-10-28 13:15:53'),
(71, 9, 'added 2 of ew', '2021-10-28 13:43:29'),
(72, 9, 'added 2 of ricecooker', '2021-10-28 14:01:27'),
(73, 9, 'added 2 of ricecooker', '2021-10-28 14:03:26'),
(74, 9, 'added 2 of fyyhj', '2021-10-28 14:03:38'),
(75, 9, 'has logged in the system at ', '2021-10-28 20:34:39'),
(76, 9, 'has logged in the system at ', '2021-11-05 14:35:19'),
(77, 9, 'added 2 of ew', '2021-11-05 15:10:29'),
(78, 9, 'added 2 of ew', '2021-11-05 15:12:31'),
(79, 9, 'added 2 of ew', '2021-11-05 15:12:37'),
(80, 9, 'added 2 of ew', '2021-11-05 15:14:40'),
(81, 9, 'added 2 of ew', '2021-11-05 15:14:46'),
(82, 9, 'added 2 of ew', '2021-11-05 15:16:40'),
(83, 9, 'added 2 of ew', '2021-11-05 15:16:55'),
(84, 9, 'added 2 of ew', '2021-11-05 15:17:46'),
(85, 9, 'added 2 of ew', '2021-11-05 15:17:51'),
(86, 9, 'added 2 of ew', '2021-11-05 15:18:48'),
(87, 9, 'added 2 of ew', '2021-11-05 15:19:19'),
(88, 9, 'added 2 of ew', '2021-11-05 15:20:09'),
(89, 9, 'added 2 of ew', '2021-11-05 15:20:37'),
(90, 9, 'added 2 of sample', '2021-11-05 15:20:53'),
(91, 9, 'added 2 of ew', '2021-11-05 15:30:44'),
(92, 9, 'added 2 of ew', '2021-11-05 15:41:33'),
(93, 9, 'added 2 of ew', '2021-11-05 15:41:41'),
(94, 9, 'added 20 of ew', '2021-11-05 15:46:10'),
(95, 9, 'added 20 of ew', '2021-11-05 15:47:08'),
(96, 9, 'added 2 of ew', '2021-11-05 15:48:08'),
(97, 9, 'added 20 of sample', '2021-11-05 15:50:04'),
(98, 9, 'added 20 of ew', '2021-11-05 15:50:26'),
(99, 9, 'added 20 of sample', '2021-11-05 15:53:35'),
(100, 9, 'added 2 of sample', '2021-11-05 15:53:40'),
(101, 9, 'added 2 of sample', '2021-11-05 15:53:45'),
(102, 9, 'added 2 of sample', '2021-11-05 15:53:52'),
(103, 9, 'added 2 of ew', '2021-11-05 15:55:49'),
(104, 9, 'added 20 of sample', '2021-11-05 15:55:54'),
(105, 9, 'added 20 of sample', '2021-11-05 15:56:03'),
(106, 9, 'added 2 of ew', '2021-11-05 15:57:44'),
(107, 9, 'added 2 of ew', '2021-11-05 15:57:49'),
(108, 9, 'added 2 of sample', '2021-11-05 15:59:56'),
(109, 9, 'added 2 of sample', '2021-11-05 16:00:03'),
(110, 9, 'added 2 of sample', '2021-11-05 16:00:07'),
(111, 9, 'added 2 of ew', '2021-11-05 16:02:02'),
(112, 9, 'added 20 of ew', '2021-11-05 16:02:12'),
(113, 9, 'added 20 of sample', '2021-11-05 16:06:10'),
(114, 9, 'added 2 of sample', '2021-11-05 16:06:15'),
(115, 9, 'added 20 of ew', '2021-11-05 16:07:09'),
(116, 9, 'added 20 of sample', '2021-11-05 16:07:19'),
(117, 9, 'added 2 of ew', '2021-11-05 16:07:32'),
(118, 9, 'added 2 of sample', '2021-11-05 16:08:05'),
(119, 9, 'added 2 of sample', '2021-11-05 16:08:13'),
(120, 9, 'added 2 of ew', '2021-11-05 16:09:07'),
(121, 9, 'added 2 of ew', '2021-11-05 16:09:12'),
(122, 9, 'added 2 of ew', '2021-11-05 16:09:38'),
(123, 9, 'added 2 of ew', '2021-11-05 16:09:44'),
(124, 9, 'added 2 of sample', '2021-11-05 16:11:35'),
(125, 9, 'added 2 of sample', '2021-11-05 16:11:41'),
(126, 9, 'added 2 of ew', '2021-11-05 16:13:55'),
(127, 9, 'added 2 of ew', '2021-11-05 16:14:03'),
(128, 9, 'added 2 of ASDAS', '2021-11-05 16:21:37'),
(129, 9, 'added 2 of ASDAS', '2021-11-05 16:21:41'),
(130, 9, 'added 2 of ew', '2021-11-05 16:21:50'),
(131, 9, 'added 2 of ew', '2021-11-05 16:22:02'),
(132, 9, 'added 2 of ', '2021-11-05 16:24:05'),
(133, 9, 'added 2 of ', '2021-11-05 16:24:11'),
(134, 9, 'added 2 of ', '2021-11-05 16:24:19'),
(135, 9, 'added 2 of ', '2021-11-05 16:25:37'),
(136, 9, 'added 2 of ', '2021-11-05 16:25:42'),
(137, 9, 'added 2 of ew', '2021-11-05 16:26:05'),
(138, 9, 'added 2 of ASDAS', '2021-11-05 16:26:38'),
(139, 9, 'added 2 of ASDAS', '2021-11-05 16:26:59'),
(140, 9, 'added 2 of ASDAS', '2021-11-05 16:27:28'),
(141, 9, 'added 2 of ASDAS', '2021-11-05 16:27:40'),
(142, 9, 'added 2 of ASDAS', '2021-11-05 16:28:58'),
(143, 9, 'added 2 of ASDAS', '2021-11-05 16:31:26'),
(144, 9, 'added 2 of ASDAS', '2021-11-05 16:38:24'),
(145, 9, 'added 20 of ASDAS', '2021-11-05 16:40:00'),
(146, 9, 'added 20 of sample', '2021-11-05 16:40:34'),
(147, 9, 'added 20 of ASDAS', '2021-11-05 16:40:47'),
(148, 9, 'added 2 of ew', '2021-11-05 16:44:41'),
(149, 9, 'added 2 of ew', '2021-11-05 16:44:47'),
(150, 9, 'added 20 of ASDAS', '2021-11-05 16:46:04'),
(151, 9, 'added 20 of ASDAS', '2021-11-05 16:46:11'),
(152, 9, 'added 2 of ASDAS', '2021-11-05 16:49:00'),
(153, 9, 'added 2 of ASDAS', '2021-11-05 16:49:12'),
(154, 9, 'added 2 of ASDAS', '2021-11-05 16:49:20'),
(155, 9, 'added 2 of ASDAS', '2021-11-05 16:49:36'),
(156, 9, 'added 2 of ASDAS', '2021-11-05 16:50:16'),
(157, 9, 'added 2 of ASDAS', '2021-11-05 16:50:22'),
(158, 9, 'added 2 of ew', '2021-11-05 16:50:36'),
(159, 9, 'added 2 of ew', '2021-11-05 16:50:41'),
(160, 9, 'added 2 of ew', '2021-11-05 16:51:27'),
(161, 9, 'added 2 of ew', '2021-11-05 16:59:34'),
(162, 9, 'added 2 of ASDAS', '2021-11-05 16:59:40'),
(163, 9, 'added 2 of sample', '2021-11-05 17:01:13'),
(164, 9, 'added 2 of ew', '2021-11-05 17:01:19'),
(165, 9, 'added 2 of ew', '2021-11-05 17:01:33'),
(166, 9, 'added 2 of ASDAS', '2021-11-05 17:04:51'),
(167, 9, 'added 2 of ASDAS', '2021-11-05 17:04:59'),
(168, 9, 'added 2 of ASDAS', '2021-11-05 17:05:24'),
(169, 9, 'added 2 of ASDAS', '2021-11-05 17:06:15'),
(170, 9, 'added 2 of ASDAS', '2021-11-05 17:09:39'),
(171, 9, 'added 2 of ew', '2021-11-05 17:09:43'),
(172, 9, 'added 20 of sample', '2021-11-05 17:09:56'),
(173, 9, 'added 2 of sample', '2021-11-05 17:10:04'),
(174, 9, 'added 2 of sample', '2021-11-05 17:10:11'),
(175, 9, '', '2021-11-05 17:14:45'),
(176, 9, 'added 2 of ASDAS', '2021-11-05 17:15:06'),
(177, 9, 'added 2 of ASDAS', '2021-11-05 17:15:17'),
(178, 9, 'added 2 of ASDAS', '2021-11-05 17:15:57'),
(179, 9, 'added 2 of ew', '2021-11-05 17:16:01'),
(180, 9, 'added 2 of ew', '2021-11-05 17:16:08'),
(181, 9, 'added 2 of ASDAS', '2021-11-05 17:16:45'),
(182, 9, 'added 2 of asdsad', '2021-11-05 17:22:36'),
(183, 9, 'added 2 of ASDAS', '2021-11-05 17:22:49'),
(184, 9, 'added 2 of ASDAS', '2021-11-05 17:23:08'),
(185, 9, 'added 2 of ASDAS', '2021-11-05 17:23:19'),
(186, 9, 'added 2 of ASDAS', '2021-11-05 17:23:23'),
(187, 9, 'added 2 of ASDAS', '2021-11-05 17:24:20'),
(188, 9, 'added 2 of asdsad', '2021-11-05 17:24:25'),
(189, 9, 'added 2 of ASDAS', '2021-11-05 17:25:56'),
(190, 9, 'added 2 of ASDAS', '2021-11-05 17:26:02'),
(191, 9, 'added 2 of ASDAS', '2021-11-05 17:28:53'),
(192, 9, 'added 2 of ASDAS', '2021-11-05 17:28:59'),
(193, 9, 'added 20 of ew', '2021-11-05 17:31:50'),
(194, 9, 'added 2 of asdsad', '2021-11-05 17:31:56'),
(195, 9, 'added 2 of asdsad', '2021-11-05 17:32:02'),
(196, 9, 'added 2 of ASDAS', '2021-11-05 17:39:16'),
(197, 9, 'added 2 of ASDAS', '2021-11-05 17:39:21'),
(198, 9, 'added 2 of ASDAS', '2021-11-05 17:39:43'),
(199, 9, 'added 2 of ASDAS', '2021-11-05 17:39:49'),
(200, 9, 'added 2 of ASDAS', '2021-11-05 17:40:09'),
(201, 9, 'added 2 of ew', '2021-11-05 17:40:50'),
(202, 9, 'added 2 of ew', '2021-11-05 17:40:56'),
(203, 9, 'added 2 of ASDAS', '2021-11-05 17:41:58'),
(204, 9, 'added 20 of ASDAS', '2021-11-05 17:42:04'),
(205, 9, 'added 2 of ew', '2021-11-05 17:42:18'),
(206, 9, 'added 2 of ASDAS', '2021-11-05 17:45:22'),
(207, 9, 'added 2 of ', '2021-11-05 17:46:49'),
(208, 9, 'added 2 of asdsad', '2021-11-05 17:49:43'),
(209, 9, 'added 2 of ASDAS', '2021-11-05 17:49:49'),
(210, 9, 'added 2 of ew', '2021-11-05 17:49:56'),
(211, 9, 'added 2 of ASDAS', '2021-11-05 18:44:57'),
(212, 9, 'added 2 of ASDAS', '2021-11-05 18:45:03'),
(213, 9, 'added 2 of ASDAS', '2021-11-05 18:45:29'),
(214, 9, 'added 2 of ASDAS', '2021-11-05 18:46:50'),
(215, 9, 'added 2 of ew', '2021-11-05 18:46:55'),
(216, 9, 'added 2 of asdsad', '2021-11-05 18:49:02'),
(217, 9, 'added 2 of ', '2021-11-05 18:49:57'),
(218, 9, 'added 2 of ASDAS', '2021-11-05 18:52:38'),
(219, 9, 'added 2 of ASDAS', '2021-11-05 18:52:46'),
(220, 9, 'added 2 of asdsad', '2021-11-05 18:53:32'),
(221, 9, 'added 2 of asdsad', '2021-11-05 18:54:31'),
(222, 9, 'added 2 of ', '2021-11-05 18:57:59'),
(223, 9, '', '2021-11-05 18:58:45'),
(224, 9, 'added 2 of ASDAS', '2021-11-05 19:44:45'),
(225, 9, 'added 2 of asdsad', '2021-11-05 19:45:38'),
(226, 9, 'added 2 of ASDAS', '2021-11-05 19:45:58'),
(227, 9, 'added 2 of ASDAS', '2021-11-05 19:46:26'),
(228, 9, 'added 2 of ASDAS', '2021-11-05 19:46:38'),
(229, 9, 'added 2 of asdsad', '2021-11-05 19:48:41'),
(230, 9, 'added 2 of ASDAS', '2021-11-05 19:50:14'),
(231, 9, 'added 2 of ', '2021-11-05 19:52:10');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `payment` decimal(10,2) NOT NULL,
  `payment_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `payment_for` date NOT NULL,
  `due` decimal(10,2) NOT NULL,
  `interest` decimal(10,2) NOT NULL,
  `remaining` decimal(10,2) NOT NULL,
  `status` varchar(20) NOT NULL,
  `rebate` decimal(10,2) NOT NULL,
  `or_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `cust_id`, `sales_id`, `payment`, `payment_date`, `user_id`, `branch_id`, `payment_for`, `due`, `interest`, `remaining`, `status`, `rebate`, `or_no`) VALUES
(3156, 1, 6, '550.00', '2017-02-21 19:57:12', 1, 1, '2017-02-21', '550.00', '0.00', '0.00', 'paid', '0.00', 1901),
(3157, 2, 7, '550.00', '2017-02-21 19:57:29', 1, 1, '2017-02-21', '550.00', '0.00', '0.00', 'paid', '0.00', 1902),
(3163, 2, 9, '113.30', '2017-02-21 21:31:20', 1, 1, '2017-03-21', '113.30', '0.00', '0.00', 'paid', '0.00', 0),
(3164, 2, 9, '36.70', '2017-02-21 21:31:20', 1, 1, '2017-04-21', '113.30', '0.00', '76.60', 'partially paid', '0.00', 0),
(3165, 2, 9, '0.00', '0000-00-00 00:00:00', 1, 1, '2017-05-21', '113.30', '0.00', '113.30', '', '0.00', 0),
(3166, 2, 9, '0.00', '0000-00-00 00:00:00', 1, 1, '2017-06-21', '113.30', '0.00', '113.30', '', '0.00', 0),
(3167, 2, 9, '113.30', '2017-02-21 00:00:00', 1, 1, '2017-02-21', '113.30', '0.00', '0.00', 'paid', '0.00', 3151),
(3168, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-10-03', '0.00', '0.00', '0.00', '', '0.00', 0),
(3169, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-10-04', '0.00', '0.00', '0.00', '', '0.00', 0),
(3170, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-10-05', '0.00', '0.00', '0.00', '', '0.00', 0),
(3171, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-10-06', '0.00', '0.00', '0.00', '', '0.00', 0),
(3172, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-10-07', '0.00', '0.00', '0.00', '', '0.00', 0),
(3173, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-10-08', '0.00', '0.00', '0.00', '', '0.00', 0),
(3174, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-10-09', '0.00', '0.00', '0.00', '', '0.00', 0),
(3175, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-10-10', '0.00', '0.00', '0.00', '', '0.00', 0),
(3176, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-10-11', '0.00', '0.00', '0.00', '', '0.00', 0),
(3177, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-10-12', '0.00', '0.00', '0.00', '', '0.00', 0),
(3178, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-10-13', '0.00', '0.00', '0.00', '', '0.00', 0),
(3179, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-10-14', '0.00', '0.00', '0.00', '', '0.00', 0),
(3180, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-10-15', '0.00', '0.00', '0.00', '', '0.00', 0),
(3181, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-10-16', '0.00', '0.00', '0.00', '', '0.00', 0),
(3182, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-10-17', '0.00', '0.00', '0.00', '', '0.00', 0),
(3183, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-10-18', '0.00', '0.00', '0.00', '', '0.00', 0),
(3184, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-10-19', '0.00', '0.00', '0.00', '', '0.00', 0),
(3185, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-10-20', '0.00', '0.00', '0.00', '', '0.00', 0),
(3186, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-10-21', '0.00', '0.00', '0.00', '', '0.00', 0),
(3187, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-10-22', '0.00', '0.00', '0.00', '', '0.00', 0),
(3188, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-10-23', '0.00', '0.00', '0.00', '', '0.00', 0),
(3189, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-10-24', '0.00', '0.00', '0.00', '', '0.00', 0),
(3190, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-10-25', '0.00', '0.00', '0.00', '', '0.00', 0),
(3191, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-10-26', '0.00', '0.00', '0.00', '', '0.00', 0),
(3192, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-10-27', '0.00', '0.00', '0.00', '', '0.00', 0),
(3193, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-10-28', '0.00', '0.00', '0.00', '', '0.00', 0),
(3194, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-10-29', '0.00', '0.00', '0.00', '', '0.00', 0),
(3195, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-10-30', '0.00', '0.00', '0.00', '', '0.00', 0),
(3196, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-10-31', '0.00', '0.00', '0.00', '', '0.00', 0),
(3197, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-11-01', '0.00', '0.00', '0.00', '', '0.00', 0),
(3198, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-11-02', '0.00', '0.00', '0.00', '', '0.00', 0),
(3199, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-11-03', '0.00', '0.00', '0.00', '', '0.00', 0),
(3200, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-11-04', '0.00', '0.00', '0.00', '', '0.00', 0),
(3201, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-11-05', '0.00', '0.00', '0.00', '', '0.00', 0),
(3202, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-11-06', '0.00', '0.00', '0.00', '', '0.00', 0),
(3203, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-11-07', '0.00', '0.00', '0.00', '', '0.00', 0),
(3204, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-11-08', '0.00', '0.00', '0.00', '', '0.00', 0),
(3205, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-11-09', '0.00', '0.00', '0.00', '', '0.00', 0),
(3206, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-11-10', '0.00', '0.00', '0.00', '', '0.00', 0),
(3207, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-11-11', '0.00', '0.00', '0.00', '', '0.00', 0),
(3208, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-11-12', '0.00', '0.00', '0.00', '', '0.00', 0),
(3209, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-11-13', '0.00', '0.00', '0.00', '', '0.00', 0),
(3210, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-11-14', '0.00', '0.00', '0.00', '', '0.00', 0),
(3211, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-11-15', '0.00', '0.00', '0.00', '', '0.00', 0),
(3212, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-11-16', '0.00', '0.00', '0.00', '', '0.00', 0),
(3213, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-11-17', '0.00', '0.00', '0.00', '', '0.00', 0),
(3214, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-11-18', '0.00', '0.00', '0.00', '', '0.00', 0),
(3215, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-11-19', '0.00', '0.00', '0.00', '', '0.00', 0),
(3216, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-11-20', '0.00', '0.00', '0.00', '', '0.00', 0),
(3217, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-11-21', '0.00', '0.00', '0.00', '', '0.00', 0),
(3218, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-11-22', '0.00', '0.00', '0.00', '', '0.00', 0),
(3219, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-11-23', '0.00', '0.00', '0.00', '', '0.00', 0),
(3220, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-11-24', '0.00', '0.00', '0.00', '', '0.00', 0),
(3221, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-11-25', '0.00', '0.00', '0.00', '', '0.00', 0),
(3222, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-11-26', '0.00', '0.00', '0.00', '', '0.00', 0),
(3223, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-11-27', '0.00', '0.00', '0.00', '', '0.00', 0),
(3224, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-11-28', '0.00', '0.00', '0.00', '', '0.00', 0),
(3225, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-11-29', '0.00', '0.00', '0.00', '', '0.00', 0),
(3226, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-11-30', '0.00', '0.00', '0.00', '', '0.00', 0),
(3227, 4, 10, '0.00', '0000-00-00 00:00:00', 7, 5, '2021-12-01', '0.00', '0.00', '0.00', '', '0.00', 0),
(3228, 4, 10, '0.00', '2021-10-03 00:00:00', 7, 5, '2021-10-03', '0.00', '0.00', '0.00', 'paid', '0.00', 3152),
(3229, 4, 11, '1236.00', '2021-10-03 21:54:10', 7, 5, '2021-10-03', '1236.00', '0.00', '0.00', 'paid', '0.00', 0),
(3230, 4, 11, '1236.00', '2021-10-03 21:54:10', 7, 5, '2021-10-04', '1236.00', '0.00', '0.00', 'paid', '0.00', 0),
(3231, 4, 11, '1236.00', '2021-10-03 21:54:10', 7, 5, '2021-10-05', '1236.00', '0.00', '0.00', 'paid', '0.00', 0),
(3232, 4, 11, '1236.00', '2021-10-03 21:54:10', 7, 5, '2021-10-06', '1236.00', '0.00', '0.00', 'paid', '0.00', 0),
(3233, 4, 11, '1236.00', '2021-10-03 21:54:10', 7, 5, '2021-10-07', '1236.00', '0.00', '0.00', 'paid', '0.00', 0),
(3234, 4, 11, '1236.00', '2021-10-03 21:54:10', 7, 5, '2021-10-08', '1236.00', '0.00', '0.00', 'paid', '0.00', 0),
(3235, 4, 11, '1236.00', '2021-10-03 21:54:10', 7, 5, '2021-10-09', '1236.00', '0.00', '0.00', 'paid', '0.00', 0),
(3236, 4, 11, '1236.00', '2021-10-03 21:54:10', 7, 5, '2021-10-10', '1236.00', '0.00', '0.00', 'paid', '0.00', 0),
(3237, 4, 11, '1236.00', '2021-10-03 21:54:10', 7, 5, '2021-10-11', '1236.00', '0.00', '0.00', 'paid', '0.00', 0),
(3238, 4, 11, '1236.00', '2021-10-03 21:54:10', 7, 5, '2021-10-12', '1236.00', '0.00', '0.00', 'paid', '0.00', 0),
(3239, 4, 11, '1236.00', '2021-10-03 21:54:10', 7, 5, '2021-10-13', '1236.00', '0.00', '0.00', 'paid', '0.00', 0),
(3240, 4, 11, '1236.00', '2021-10-03 21:54:10', 7, 5, '2021-10-14', '1236.00', '0.00', '0.00', 'paid', '0.00', 0),
(3241, 4, 11, '1236.00', '2021-10-03 21:54:10', 7, 5, '2021-10-15', '1236.00', '0.00', '0.00', 'paid', '0.00', 0),
(3242, 4, 11, '1236.00', '2021-10-03 21:54:10', 7, 5, '2021-10-16', '1236.00', '0.00', '0.00', 'paid', '0.00', 0),
(3243, 4, 11, '1236.00', '2021-10-03 21:54:10', 7, 5, '2021-10-17', '1236.00', '0.00', '0.00', 'paid', '0.00', 0),
(3244, 4, 11, '1236.00', '2021-10-03 21:54:10', 7, 5, '2021-10-18', '1236.00', '0.00', '0.00', 'paid', '0.00', 0),
(3245, 4, 11, '1236.00', '2021-10-03 21:54:10', 7, 5, '2021-10-19', '1236.00', '0.00', '0.00', 'paid', '0.00', 0),
(3246, 4, 11, '1236.00', '2021-10-03 21:54:10', 7, 5, '2021-10-20', '1236.00', '0.00', '0.00', 'paid', '0.00', 0),
(3247, 4, 11, '1236.00', '2021-10-03 21:54:10', 7, 5, '2021-10-21', '1236.00', '0.00', '0.00', 'paid', '0.00', 0),
(3248, 4, 11, '1236.00', '2021-10-03 21:54:10', 7, 5, '2021-10-22', '1236.00', '0.00', '0.00', 'paid', '0.00', 0),
(3249, 4, 11, '1236.00', '2021-10-03 21:54:10', 7, 5, '2021-10-23', '1236.00', '0.00', '0.00', 'paid', '0.00', 0),
(3250, 4, 11, '1236.00', '2021-10-03 21:54:10', 7, 5, '2021-10-24', '1236.00', '0.00', '0.00', 'paid', '0.00', 0),
(3251, 4, 11, '1236.00', '2021-10-03 21:54:10', 7, 5, '2021-10-25', '1236.00', '0.00', '0.00', 'paid', '0.00', 0),
(3252, 4, 11, '1236.00', '2021-10-03 21:54:10', 7, 5, '2021-10-26', '1236.00', '0.00', '0.00', 'paid', '0.00', 0),
(3253, 4, 11, '1236.00', '2021-10-03 21:54:10', 7, 5, '2021-10-27', '1236.00', '0.00', '0.00', 'paid', '0.00', 0),
(3254, 4, 11, '1236.00', '2021-10-03 21:54:10', 7, 5, '2021-10-28', '1236.00', '0.00', '0.00', 'paid', '0.00', 0),
(3255, 4, 11, '1236.00', '2021-10-03 21:54:10', 7, 5, '2021-10-29', '1236.00', '0.00', '0.00', 'paid', '0.00', 0),
(3256, 4, 11, '1236.00', '2021-10-03 21:54:10', 7, 5, '2021-10-30', '1236.00', '0.00', '0.00', 'paid', '0.00', 0),
(3257, 4, 11, '1236.00', '2021-10-03 21:54:10', 7, 5, '2021-10-31', '1236.00', '0.00', '0.00', 'paid', '0.00', 0),
(3258, 4, 11, '1236.00', '2021-10-03 21:54:10', 7, 5, '2021-11-01', '1236.00', '0.00', '0.00', 'paid', '0.00', 0),
(3259, 4, 11, '9270.00', '2021-10-03 00:00:00', 7, 5, '2021-10-03', '9270.00', '0.00', '0.00', 'paid', '0.00', 3153),
(3260, 4, 12, '45000.00', '2021-10-03 21:59:22', 7, 5, '2021-10-03', '45000.00', '0.00', '0.00', 'paid', '0.00', 1903),
(3261, 4, 13, '45000.00', '2021-10-03 22:02:45', 7, 5, '2021-10-03', '45000.00', '0.00', '0.00', 'paid', '0.00', 1904);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `prod_desc` varchar(500) NOT NULL,
  `prod_price` decimal(10,2) NOT NULL,
  `prod_pic` varchar(300) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `reorder` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `serial` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prod_id`, `prod_name`, `prod_desc`, `prod_price`, `prod_pic`, `cat_id`, `prod_qty`, `branch_id`, `reorder`, `supplier_id`, `serial`) VALUES
(5, 'LG 43\" UHD TV UH6100', '', '45000.00', 'tv.jpg', 5, 5, 1, 0, 4, '19898981'),
(13, 'Rice Cooker', '', '550.00', 'WIN_20160728_16_56_20_Pro (2).jpg', 9, 0, 1, 2, 4, '22ewew'),
(14, 'Samsung', '', '15000.00', 'WIN_20160209_16_45_20_Pro.jpg', 10, 5, 1, 4, 5, 'erere323'),
(15, 'Lotion', '', '120.00', 'default.gif', 12, 100, 1, 4, 6, '1101388911'),
(16, 'Sample', 'description', '110.00', 'default.gif', 10, -1, 1, 1, 2, '878878'),
(17, 'sample', 'sample', '45000.00', 'default.gif', 10, 212, 5, 1, 6, '12'),
(18, 'ricecooker', 'v', '45000.00', 'default.gif', 12, 36, 3, 1, 3, '123'),
(19, 'fyyhj', 'dsf', '45000.00', 'default.gif', 12, 2, 3, 1, 2, '123'),
(20, 'ew', 'e', '1231.00', 'default.gif', 8, 196, 5, 1, 6, 'we'),
(21, 'ASDAS', 'ASD', '1231.00', 'default.gif', 13, 216, 5, 1, 4, '2'),
(22, 'asdsad', '1a', '1231.00', 'default.gif', 13, 20, 5, 1, 2, '1212');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_request`
--

CREATE TABLE `purchase_request` (
  `pr_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `request_date` date NOT NULL,
  `branch_id` int(11) NOT NULL,
  `purchase_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sales_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_tendered` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `amount_due` decimal(10,2) NOT NULL,
  `cash_change` decimal(10,2) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `modeofpayment` varchar(15) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sales_id`, `cust_id`, `user_id`, `cash_tendered`, `discount`, `amount_due`, `cash_change`, `date_added`, `modeofpayment`, `branch_id`, `total`) VALUES
(1, 1, 1, '500.00', '50.00', '500.00', '0.00', '2017-02-04 01:33:28', 'cash', 1, '450.00'),
(2, 1, 1, '550.00', '0.00', '550.00', '0.00', '2017-02-21 18:57:26', 'cash', 1, '550.00'),
(3, 1, 1, '0.00', '550.00', '0.00', '0.00', '2017-02-21 19:49:41', 'cash', 1, '-550.00'),
(4, 1, 1, '550.00', '0.00', '550.00', '0.00', '2017-02-21 19:55:57', 'cash', 1, '550.00'),
(5, 2, 1, '110.00', '0.00', '110.00', '0.00', '2017-02-21 19:56:17', 'cash', 1, '110.00'),
(6, 1, 1, '550.00', '0.00', '550.00', '0.00', '2017-02-21 19:57:12', 'cash', 1, '550.00'),
(7, 2, 1, '550.00', '0.00', '550.00', '0.00', '2017-02-21 19:57:29', 'cash', 1, '550.00'),
(9, 2, 1, NULL, NULL, '0.00', NULL, '2017-02-21 21:16:52', 'credit', 1, '550.00'),
(10, 4, 7, NULL, NULL, '0.00', NULL, '2021-10-03 21:45:47', 'credit', 5, '0.00'),
(11, 4, 7, NULL, NULL, '0.00', NULL, '2021-10-03 21:52:26', 'credit', 5, '45.00'),
(12, 4, 7, '45000.00', '0.00', '45000.00', '0.00', '2021-10-03 21:59:22', 'cash', 5, '45000.00'),
(13, 4, 7, '450.00', '0.00', '45000.00', '-44550.00', '2021-10-03 22:02:45', 'cash', 5, '45000.00');

-- --------------------------------------------------------

--
-- Table structure for table `sales_details`
--

CREATE TABLE `sales_details` (
  `sales_details_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_details`
--

INSERT INTO `sales_details` (`sales_details_id`, `sales_id`, `prod_id`, `price`, `qty`) VALUES
(1, 1, 13, '550.00', 1),
(2, 2, 13, '550.00', 1),
(3, 3, 13, '550.00', 1),
(4, 4, 13, '550.00', 1),
(5, 5, 16, '110.00', 1),
(6, 6, 13, '550.00', 1),
(7, 7, 13, '550.00', 1),
(8, 8, 13, '550.00', 1),
(9, 9, 13, '550.00', 1),
(10, 11, 17, '45000.00', 1),
(11, 12, 17, '45000.00', 1),
(12, 13, 17, '45000.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stockin`
--

CREATE TABLE `stockin` (
  `stockin_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `qty` int(6) NOT NULL,
  `date` datetime NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stockin`
--

INSERT INTO `stockin` (`stockin_id`, `prod_id`, `qty`, `date`, `branch_id`) VALUES
(171, 22, 2, '2021-11-05 19:48:41', 5),
(172, 21, 2, '2021-11-05 19:50:14', 5),
(173, 21, 2, '2021-11-05 19:52:10', 5);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(100) NOT NULL,
  `supplier_address` varchar(300) NOT NULL,
  `supplier_contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `supplier_name`, `supplier_address`, `supplier_contact`) VALUES
(2, 'LG Philippines', 'Makati City, Philippines', '423-4444'),
(3, 'Union Home Appliances', 'Binondo, Manila', '98878'),
(4, 'Hanabishi', 'Bacolod City', '034-666-087611'),
(5, 'Samsung Philippines', 'Philippines', '42424'),
(6, 'Avon', 'Bacolod City', '15562'),
(7, 'iStore PH', 'Manila City,Philippines', '09134567890');

-- --------------------------------------------------------

--
-- Table structure for table `temp_trans`
--

CREATE TABLE `temp_trans` (
  `temp_trans_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `term`
--

CREATE TABLE `term` (
  `term_id` int(11) NOT NULL,
  `sales_id` int(11) DEFAULT NULL,
  `payable_for` varchar(10) NOT NULL,
  `term` varchar(11) NOT NULL,
  `due` decimal(10,2) NOT NULL,
  `payment_start` date NOT NULL,
  `down` decimal(10,2) NOT NULL,
  `due_date` date NOT NULL,
  `interest` decimal(10,2) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `term`
--

INSERT INTO `term` (`term_id`, `sales_id`, `payable_for`, `term`, `due`, `payment_start`, `down`, `due_date`, `interest`, `status`) VALUES
(1, 8, '4', 'monthly', '113.30', '2017-02-21', '113.30', '2017-06-21', '16.50', ''),
(2, 9, '4', 'monthly', '113.30', '2017-02-21', '113.30', '2017-06-21', '16.50', ''),
(3, 10, '2', 'daily', '0.00', '2021-10-03', '0.00', '2021-12-03', '0.00', ''),
(4, 11, '1', 'daily', '1236.00', '2021-10-03', '9270.00', '2021-11-03', '1350.00', 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `name`, `status`, `branch_id`) VALUES
(6, 'admin', 'a1Bz20ydqelm8m1wql21232f297a57a5a743894a0e4a801fc3', 'KELVIN NOCHETE', 'active', 0),
(7, 'user', 'a1Bz20ydqelm8m1wqlee11cbb19052e40b07aac0ca060c23ee', 'Test User', 'active', 5),
(8, 'admin', 'a1Bz20ydqelm8m1wqlee11cbb19052e40b07aac0ca060c23ee', 'ADMIN', 'active', 3),
(9, 'admin', 'a1Bz20ydqelm8m1wql202cb962ac59075b964b07152d234b70', 'sample', 'active', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `history_log`
--
ALTER TABLE `history_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `purchase_request`
--
ALTER TABLE `purchase_request`
  ADD PRIMARY KEY (`pr_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sales_id`);

--
-- Indexes for table `sales_details`
--
ALTER TABLE `sales_details`
  ADD PRIMARY KEY (`sales_details_id`);

--
-- Indexes for table `stockin`
--
ALTER TABLE `stockin`
  ADD PRIMARY KEY (`stockin_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `temp_trans`
--
ALTER TABLE `temp_trans`
  ADD PRIMARY KEY (`temp_trans_id`);

--
-- Indexes for table `term`
--
ALTER TABLE `term`
  ADD PRIMARY KEY (`term_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `history_log`
--
ALTER TABLE `history_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3262;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `purchase_request`
--
ALTER TABLE `purchase_request`
  MODIFY `pr_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `sales_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `stockin`
--
ALTER TABLE `stockin`
  MODIFY `stockin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `temp_trans`
--
ALTER TABLE `temp_trans`
  MODIFY `temp_trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `term`
--
ALTER TABLE `term`
  MODIFY `term_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
