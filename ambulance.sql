-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2023 at 12:41 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ambulance`
--

-- --------------------------------------------------------

--
-- Table structure for table `: driver_booking`
--

CREATE TABLE `: driver_booking` (
  `srno` int(11) NOT NULL,
  `dmobile` varchar(10) NOT NULL,
  `pat_mobile` varchar(10) NOT NULL,
  `dpickup` varchar(100) NOT NULL,
  `ddropoff` varchar(200) NOT NULL,
  `dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `diagnostic_centers`
--

CREATE TABLE `diagnostic_centers` (
  `Sr.No.` int(50) NOT NULL,
  `diag_center` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `tel1` varchar(20) NOT NULL,
  `nodal_officer` varchar(50) NOT NULL,
  `tel2` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diagnostic_centers`
--

INSERT INTO `diagnostic_centers` (`Sr.No.`, `diag_center`, `address`, `tel1`, `nodal_officer`, `tel2`) VALUES
(1, 'Metropolis Healthcare Ltd', 'Shop No 6, Fatima Palace, Juhu Church Rd, opp. Kailash Apartment, Chand Society, Vithal Nagar, Juhu, Mumbai, Maharashtra 400049', ' 093212 72715', 'Dr. Narayan Shah', '098654 76032'),
(2, 'Juhu Clinical Lab', '3, N S Rd No 11 C/O Daftari Total Care, Opp Dharmendra\'s Bungalow, Shivkunj, Vithal Nagar, Juhu, Mumbai, Maharashtra 400049', '76097 43210', 'Dr. Desai', '-');

-- --------------------------------------------------------

--
-- Table structure for table `driver_booking_history`
--

CREATE TABLE `driver_booking_history` (
  `dmobile` varchar(50) NOT NULL,
  `pat_mobile` varchar(50) NOT NULL,
  `dpickup` varchar(200) NOT NULL,
  `ddropoff` varchar(200) NOT NULL,
  `dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `driver_booking_history`
--

INSERT INTO `driver_booking_history` (`dmobile`, `pat_mobile`, `dpickup`, `ddropoff`, `dt`) VALUES
('546789032', '', '', '', '2023-10-19 22:31:09.000000'),
('', 'shreyashp2', 'Shop no 2, Ground Floor, Samartha Siddhi, Back Road, near Joggers Park, Swami Samarth Nagar, Lokhandwala Complex, Andheri West, Mumbai, Maharashtra 400053', 'Rao Saheb, Rao Saheb Achutrao Patwardhan Marg, Four Bungalows, Andheri West, Mumbai, Maharashtra 400053', '2023-10-19 22:33:06.000000');

-- --------------------------------------------------------

--
-- Table structure for table `driver_details`
--

CREATE TABLE `driver_details` (
  `driver_id` int(11) NOT NULL,
  `dname` varchar(50) NOT NULL,
  `dmobile` varchar(10) NOT NULL,
  `dpassword` varchar(200) NOT NULL,
  `dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `driver_details`
--

INSERT INTO `driver_details` (`driver_id`, `dname`, `dmobile`, `dpassword`, `dt`) VALUES
(0, 'Shreyash Patil', '546789032', 'sZS6wG3VRR@MB', '2023-10-19 22:25:10.000000');

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `sr_no` int(11) NOT NULL,
  `hospital_name` varchar(100) NOT NULL,
  `hospital_address` varchar(200) NOT NULL,
  `telephone1` varchar(100) NOT NULL,
  `nodal_officer` varchar(50) NOT NULL,
  `telephone2` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`sr_no`, `hospital_name`, `hospital_address`, `telephone1`, `nodal_officer`, `telephone2`) VALUES
(1, 'Bharatiya Arogya Nidhi Hospital', 'N S Rd Number 13, next to Utpal Sanghvi School, Chand Society, JVPD Scheme, Vile Parle West, Mumbai,', '022 2671 3908', 'Sheth K. C. Parikh', '-'),
(2, 'Sujay Hospital - Multispeciality Hospital', 'Sujay Hospital 25, Gulmohar Park, Gulmohar Rd, Venetia Jamnagar Society, JVPD Scheme, Vile Parle Wes', '022 2621 2233', 'Dr. Divyesh Raveshia', '91-22-26212233'),
(3, 'CritiCare Asia Multispeciality Hospital', 'Plot Number 38, 39, Gulmohar Rd, JVPD Scheme, Andheri West, Mumbai, Maharashtra 400049', '022 6775 6600', 'Dr. Deepak Namjoshi & Masuuma Namjoshi', '-'),
(4, 'THUNGA STH HOSPITAL', 'G-Abhishek Apartment Juhu Versova, Dutta Marg Road, New Link Rd, Andheri West, Mumbai, Maharashtra 400058', ' 022 3524 4700', 'Dr. Shreyash Patil', '91 22 69084 200');

-- --------------------------------------------------------

--
-- Table structure for table `nursing_home`
--

CREATE TABLE `nursing_home` (
  `sr_no` int(11) NOT NULL,
  `ward` char(1) NOT NULL,
  `nursing_home_name` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `beds` varchar(200) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nursing_home`
--

INSERT INTO `nursing_home` (`sr_no`, `ward`, `nursing_home_name`, `address`, `beds`, `contact`) VALUES
(1, 'A', 'Jewel Nursing Home', '85, Gulmohar Rd, ONGC Colony, JVPD Scheme, Vile Parle West, Mumbai, Maharashtra 400058', '185', ' 097692 72649'),
(2, 'C', 'Bhargava Nursing Home', 'Gopal Bhuvan, 32, 1st Floor, Near Poddar School, Tagore Rd, Santacruz West, Mumbai, Maharashtra 400054', '250', '022 2649 7918'),
(3, 'B', 'Karbhari Nursing Home', 'Shiv Prasad, Hanuman Rd, Opp. Parleshwar Temple, Vishnu Prasad Society, Navpada, Vile Parle East, Vile Parle, Mumbai, Maharashtra 400057', '150', '022 2616 9913');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `srno` int(11) NOT NULL,
  `pat_mobile` varchar(10) NOT NULL,
  `pat_pick` varchar(50) NOT NULL,
  `pat_drop` varchar(50) NOT NULL,
  `dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_booking`
--

CREATE TABLE `user_booking` (
  `uid` int(200) NOT NULL,
  `umobile` int(20) NOT NULL,
  `pickup` varchar(200) NOT NULL,
  `dropoff` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_booking`
--

INSERT INTO `user_booking` (`uid`, `umobile`, `pickup`, `dropoff`, `status`, `dt`) VALUES
(1, 0, 'Shop no 2, Ground Floor, Samartha Siddhi, Back Road, near Joggers Park, Swami Samarth Nagar, Lokhandwala Complex, Andheri West, Mumbai, Maharashtra 400053', 'Rao Saheb, Rao Saheb Achutrao Patwardhan Marg, Four Bungalows, Andheri West, Mumbai, Maharashtra 400053', 'cancelled', '2023-10-19 22:18:35.000000');

-- --------------------------------------------------------

--
-- Table structure for table `user_booking_history`
--

CREATE TABLE `user_booking_history` (
  `uid` int(100) NOT NULL,
  `umobile` int(100) NOT NULL,
  `pickup` varchar(100) NOT NULL,
  `dropoff` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `dt` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `uid` int(200) NOT NULL,
  `uname` varchar(200) NOT NULL,
  `umobile` int(200) NOT NULL,
  `uaddress` varchar(200) NOT NULL,
  `upassword` varchar(200) NOT NULL,
  `time` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`uid`, `uname`, `umobile`, `uaddress`, `upassword`, `time`) VALUES
(0, 'Shreyash Patil', 0, 'B wing , 504 ,Himalaya Complex, Opp Old golden nest gate\r\nBeside Lemon salon Bhayandar (East)', 'sZS6wG3VRR@MB', '2023-10-19 20:48:24.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `: driver_booking`
--
ALTER TABLE `: driver_booking`
  ADD KEY `srno` (`srno`);

--
-- Indexes for table `diagnostic_centers`
--
ALTER TABLE `diagnostic_centers`
  ADD PRIMARY KEY (`Sr.No.`);

--
-- Indexes for table `driver_details`
--
ALTER TABLE `driver_details`
  ADD PRIMARY KEY (`dmobile`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD KEY `sr_no` (`sr_no`);

--
-- Indexes for table `nursing_home`
--
ALTER TABLE `nursing_home`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `user_booking`
--
ALTER TABLE `user_booking`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `user_booking_history`
--
ALTER TABLE `user_booking_history`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`umobile`),
  ADD KEY `uid` (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diagnostic_centers`
--
ALTER TABLE `diagnostic_centers`
  MODIFY `Sr.No.` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nursing_home`
--
ALTER TABLE `nursing_home`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_booking`
--
ALTER TABLE `user_booking`
  MODIFY `uid` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_booking_history`
--
ALTER TABLE `user_booking_history`
  MODIFY `uid` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
