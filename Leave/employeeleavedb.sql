-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2023 at 07:15 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employeeleavedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(55) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `fullname`, `email`, `updationDate`) VALUES
(1, 'admin', 'd00f5d5217896fb7fd601412cb890830', 'Hashini Ravindi', 'admin@mail.com', '2023-05-23 02:51:55'),
(4, 'sami', '81dc9bdb52d04dc20036dbd8313ed055', 'Samindu Avishka', 'sami@gmail.com', '2023-04-25 09:13:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) NOT NULL,
  `DepartmentCode` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `DepartmentCode`, `CreationDate`) VALUES
(1, 'Human Resource Management', 'HRM', 'HR', '2023-03-01 15:54:23'),
(2, 'Sales', 'SA', 'SA', '2023-03-02 15:55:58'),
(3, 'Information Technology', 'IT', 'IT', '2023-03-02 15:56:43'),
(4, 'Administration', 'ADMIN', 'AD', '2023-03-02 15:57:34'),
(5, 'Finance', 'FIN', 'FIN', '2023-04-20 15:58:04');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `id` int(11) NOT NULL,
  `EmpId` varchar(100) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `EmailId` varchar(200) NOT NULL,
  `Password` varchar(180) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Dob` varchar(100) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(200) NOT NULL,
  `Country` varchar(150) NOT NULL,
  `Phonenumber` char(11) NOT NULL,
  `Status` int(1) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`id`, `EmpId`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `City`, `Country`, `Phonenumber`, `Status`, `RegDate`) VALUES
(1, 'AD01', 'Samindu', 'Avishka', 'sami@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Male', '1995-08-29', 'Admin', 'Battaramulla', 'Colombo', 'Sri Lanka', '0711196155', 1, '2023-03-02 08:31:55'),
(2, 'HR01', 'Gavindu', 'Deesura', 'gavi@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Male', '1997-03-13', 'Human Resource Management', 'Mathugama', 'Kaluthara', 'Sri Lanka', '0712233874', 1, '2023-03-02 16:24:49'),
(3, 'IT01', 'Lahiru', 'Madushan', 'lahiru@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Male', '1996-06-05', 'Information Technology', 'Maharagama', 'Colombo', 'Sri Lanka', '0789654159', 1, '2023-03-02 16:33:13'),
(4, 'SA01', 'Chathuni', 'Adhikari', 'chathu@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Female', '1996-01-10', 'Sales', 'Veyangoda', 'Gampaha', 'Sri Lanka', '0776287435', 1, '2023-03-10 16:35:57'),
(5, 'FIN01', 'Pramodya', 'Fonseka', 'pramu@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Female', '1995-07-20', 'Finance', 'Melsiripura', 'Kurunegala', 'Sri Lanka', '0776317931', 1, '2023-03-12 16:39:12'),
(6, 'IT02', 'Shehani', 'Malsha', 'shehani@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Female', '1996-12-27', 'Information Technology', 'Kadawatha', 'Gampaha', 'Sri Lanka', '0759821503', 1, '2023-03-12 16:42:36'),
(7, 'HR02', 'Suhashi', 'Chandaraja', 'suhashi@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Female', '1993-07-08', 'Human Resource Management', 'Kaluthara North', 'Kaluthara', 'Sri Lanka', '0726734219', 1, '2023-03-22 16:45:07'),
(8, 'AD02', 'Hashini', 'Ravindi', 'hashi@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Female', '1996-10-04', 'Administration', 'Wellampitiya', 'Colombo', 'Sri Lanka', '0716820194', 1, '2023-04-19 06:47:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves`
--

CREATE TABLE `tblleaves` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleaves`
--

INSERT INTO `tblleaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `AdminRemarkDate`, `Status`, `IsRead`, `empid`) VALUES
(1, 'Casual Leave', '2023-03-10', '2023-03-12', 'Personal Matter', '2023-03-09 05:50:28', 'Take Leave', '2023-05-22 22:30:16 ', 1, 1, 1),
(2, 'Medical Leave', '2023-04-03', '2023-04-05', 'Fever', '2023-04-02 11:51:04', 'Approved', '2023-04-02 18:31:07 ', 1, 1, 1),
(3, 'Medical Leave', '2023-04-25', '2023-04-29', 'Fever', '2023-04-24 11:55:34', 'Take Leave', '2023-04-24 19:33:56 ', 1, 1, 8),
(4, 'Casual Leave', '2023-03-30', '2023-03-31', 'Personal Matter', '2023-03-29 03:57:52', 'Rejected', '2023-03-29 18:35:08 ', 2, 1, 2),
(5, 'Personal Time Off', '2023-05-23', '2023-05-26', 'Need this Vacation', '2023-05-22 07:08:34', NULL, NULL, 0, 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tblleavetype`
--

CREATE TABLE `tblleavetype` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleavetype`
--

INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `CreationDate`) VALUES
(1, 'Casual Leave', 'Provided for urgent or unforeseen matters to the employees.', '2023-03-01 12:07:56'),
(2, 'Medical Leave', 'Related to Health Problems of Employee', '2023-03-02 13:16:09'),
(3, 'Restricted Holiday', 'Holiday that is optional', '2023-03-02 13:16:38'),
(4, 'Personal Time Off', 'To manage some private matters', '2023-03-02 13:21:10'),
(5, 'Paternity Leave', 'To take care of newborns', '2023-03-03 10:46:31'),
(6, 'Bereavement Leave', 'Grieve their loss of losing loved ones', '2023-03-03 10:47:48'),
(7, 'Compensatory Leave', 'For Overtime workers', '2023-03-03 10:48:37'),
(8, 'Maternity Leave', 'Taking care of newborn ,recoveries', '2023-03-03 10:50:17'),
(9, 'Religious Holidays', 'Based on employee\'s followed religion', '2023-03-03 10:51:26'),
(10, 'Adverse Weather Leave', 'In terms of extreme weather conditions', '2023-03-03 13:18:26'),
(11, 'Voting Leave', 'For official election day', '2023-03-03 13:19:06'),
(12, 'Self-Quarantine Leave', 'Related to COVID-19 issues', '2023-05-03 13:19:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblleaves`
--
ALTER TABLE `tblleaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Indexes for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblleaves`
--
ALTER TABLE `tblleaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
