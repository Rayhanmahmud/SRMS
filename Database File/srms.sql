-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2019 at 05:34 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2019-06-28 15:33:02');

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) NOT NULL,
  `Section` varchar(5) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(1, 'First', 1, 'C', '2017-06-06 16:52:33', '2017-06-07 05:53:47'),
(2, 'Second', 2, 'A', '2017-06-06 17:21:20', '2017-06-06 17:21:38'),
(4, 'Fourth', 4, 'C', '2017-06-07 09:20:23', '0000-00-00 00:00:00'),
(5, 'Sixth', 6, 'A', '2017-06-07 09:35:08', '0000-00-00 00:00:00'),
(6, 'Sixth', 6, 'B', '2017-08-28 18:42:41', '2017-08-28 18:43:02'),
(7, 'Seventh', 7, 'B', '2017-08-28 18:52:00', '2017-08-28 18:52:15'),
(8, 'Eight', 8, 'A', '2017-08-28 19:21:05', '2017-08-28 19:21:24'),
(9, 'Fourth Semester', 4, 'A', '2019-05-11 18:50:53', '0000-00-00 00:00:00'),
(10, 'Fourth Semester', 4, 'B', '2019-05-11 18:51:01', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(2, 1, 1, 2, 100, '2017-08-24 17:54:09', '2017-08-28 18:34:32'),
(3, 1, 1, 1, 80, '2017-08-24 17:54:09', '2017-08-28 18:34:25'),
(4, 1, 1, 5, 78, '2017-08-24 17:54:09', '2017-08-28 18:34:26'),
(5, 1, 1, 4, 60, '2017-08-24 17:54:09', '2017-08-28 18:34:26'),
(6, 2, 4, 2, 90, '2017-08-28 18:38:18', NULL),
(7, 2, 4, 1, 75, '2017-08-28 18:38:18', NULL),
(8, 2, 4, 5, 56, '2017-08-28 18:38:18', '2017-08-28 19:26:42'),
(9, 2, 4, 4, 80, '2017-08-28 18:38:18', '2017-08-28 19:26:42'),
(10, 4, 7, 2, 54, '2017-08-28 18:56:21', '2017-08-28 19:03:10'),
(11, 4, 7, 1, 85, '2017-08-28 18:56:21', NULL),
(12, 4, 7, 5, 55, '2017-08-28 18:56:21', '2017-08-28 19:03:10'),
(13, 4, 7, 7, 65, '2017-08-28 18:56:21', '2017-08-28 19:03:10'),
(14, 5, 8, 2, 75, '2017-08-28 19:25:07', NULL),
(15, 5, 8, 1, 56, '2017-08-28 19:25:07', NULL),
(16, 5, 8, 5, 52, '2017-08-28 19:25:07', NULL),
(17, 5, 8, 4, 80, '2017-08-28 19:25:07', NULL),
(18, 6, 9, 9, 89, '2019-05-11 18:55:05', NULL),
(19, 6, 9, 11, 90, '2019-05-11 18:55:05', NULL),
(20, 7, 10, 11, 90, '2019-05-11 18:55:21', NULL),
(21, 7, 10, 10, 95, '2019-05-11 18:55:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) NOT NULL,
  `RollId` varchar(100) NOT NULL,
  `StudentEmail` varchar(100) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `DOB` varchar(100) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(1, 'Sarita', '46456', 'info@phpgurukul.com', 'Female', '1995-03-03', 1, '2017-06-12 10:30:57', '2017-08-26 04:36:37', 1),
(2, 'Anuj kumar', '10861', 'anuj@gmail.co', 'Male', '1995-02-02', 4, '2017-08-19 19:18:28', '2017-08-26 04:59:17', 0),
(3, 'amit kumar', '2626', 'amit@gmail.com', 'Male', '2014-08-06', 6, '2017-08-28 18:45:31', '2017-08-28 18:46:02', 1),
(4, 'rahul kumar', '990', 'rahul01@gmail.com', 'Male', '2001-02-03', 7, '2017-08-28 18:54:58', '2017-08-28 18:55:20', 1),
(5, 'sanjeev singh', '122', 'sanjeev01@gmail.com', 'Male', '2002-02-03', 8, '2017-08-28 19:23:53', '2017-08-28 19:24:15', 1),
(6, 'Monir Hossain', '001', 'monir@gmail.com', 'Male', '2001-05-12', 9, '2019-05-11 18:53:44', NULL, 1),
(7, 'Wasim Akram', '002', 'wasim@gmail.com', 'Male', '2002-04-12', 10, '2019-05-11 18:54:25', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `SubjectId` int(11) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(3, 2, 5, 1, '2017-06-07 11:16:56', '2017-06-07 11:16:56'),
(4, 1, 2, 1, '2017-06-12 06:46:32', '2017-06-12 06:46:32'),
(5, 1, 4, 1, '2017-06-12 06:46:35', '2017-06-12 06:46:35'),
(6, 1, 5, 1, '2017-06-12 06:46:40', '2017-06-12 06:46:40'),
(8, 4, 4, 1, '2017-08-26 03:21:27', '2017-08-26 03:21:27'),
(10, 4, 1, 1, '2017-08-26 03:22:05', '2017-08-26 03:22:05'),
(12, 4, 2, 1, '2017-08-26 03:22:15', '2017-08-26 03:22:15'),
(13, 4, 5, 1, '2017-08-26 03:22:20', '2017-08-26 03:22:20'),
(14, 6, 1, 1, '2017-08-28 18:44:06', '2017-08-28 18:44:06'),
(15, 6, 2, 1, '2017-08-28 18:44:12', '2017-08-28 18:44:12'),
(16, 6, 4, 1, '2017-08-28 18:44:18', '2017-08-28 18:44:18'),
(17, 6, 6, 1, '2017-08-28 18:44:23', '2017-08-28 18:44:23'),
(18, 7, 1, 1, '2017-08-28 18:53:12', '2017-08-28 18:53:12'),
(19, 7, 7, 1, '2017-08-28 18:53:19', '2017-08-28 18:53:19'),
(20, 7, 2, 1, '2017-08-28 18:53:38', '2017-08-28 18:53:38'),
(21, 7, 6, 1, '2017-08-28 18:53:44', '2017-08-28 18:53:44'),
(22, 7, 5, 0, '2017-08-28 18:53:50', '2017-08-28 18:53:50'),
(23, 8, 1, 1, '2017-08-28 19:22:25', '2017-08-28 19:22:25'),
(24, 8, 2, 1, '2017-08-28 19:22:31', '2017-08-28 19:22:31'),
(25, 8, 4, 1, '2017-08-28 19:22:36', '2017-08-28 19:22:36'),
(26, 8, 6, 1, '2017-08-28 19:22:42', '2017-08-28 19:22:42'),
(27, 8, 5, 0, '2017-08-28 19:22:47', '2017-08-28 19:22:47'),
(28, 9, 9, 1, '2019-05-11 18:52:40', '2019-05-11 18:52:40'),
(29, 10, 10, 1, '2019-05-11 18:52:48', '2019-05-11 18:52:48'),
(30, 9, 11, 1, '2019-05-11 18:52:53', '2019-05-11 18:52:53'),
(31, 10, 11, 1, '2019-05-11 18:52:58', '2019-05-11 18:52:58');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Maths', 'MTH01', '2017-06-07 09:23:57', '2017-06-07 09:46:54'),
(2, 'English', 'ENG11', '2017-06-07 09:24:25', '0000-00-00 00:00:00'),
(4, 'Science', 'SC1', '2017-06-07 09:36:15', '0000-00-00 00:00:00'),
(5, 'Music', 'MS', '2017-06-07 09:36:23', '0000-00-00 00:00:00'),
(6, 'Social Studies', 'SS08', '2017-08-28 18:43:29', '2017-08-28 18:43:45'),
(7, 'Physics', 'PH03', '2017-08-28 18:52:41', '2017-08-28 18:52:55'),
(8, 'Chemistry', 'CH65', '2017-08-28 19:21:46', '2017-08-28 19:22:14'),
(9, 'C#', '66645', '2019-05-11 18:51:44', '0000-00-00 00:00:00'),
(10, 'OOP', '66646', '2019-05-11 18:52:01', '0000-00-00 00:00:00'),
(11, 'Data Structute', '66647', '2019-05-11 18:52:17', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
