-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2022 at 11:12 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_information_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `userid` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`userid`, `password`) VALUES
('admin', 'admin20');

-- --------------------------------------------------------

--
-- Table structure for table `attendence`
--

CREATE TABLE `attendence` (
  `Roll_no` varchar(12) NOT NULL,
  `Name` text CHARACTER SET armscii8 COLLATE armscii8_bin DEFAULT NULL,
  `Department` text NOT NULL,
  `pdays` text NOT NULL,
  `totdays` text NOT NULL,
  `attendence` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendence`
--

INSERT INTO `attendence` (`Roll_no`, `Name`, `Department`, `pdays`, `totdays`, `attendence`) VALUES
('15600119030', 'sayan accharya', 'cse', '85', '100', '85%'),
('sa', 'asf', 'saf', '52', '63', ''),
('wrd', 'ewf', 'efw', '20', '100', '20');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_login`
--

CREATE TABLE `faculty_login` (
  `ID` int(10) NOT NULL,
  `f_name` text NOT NULL,
  `department` varchar(20) NOT NULL,
  `dob` text NOT NULL,
  `address` varchar(50) NOT NULL,
  `gender` text NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `blood` varchar(10) NOT NULL,
  `qualification` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `Roll_no` varchar(11) CHARACTER SET armscii8 COLLATE armscii8_bin NOT NULL,
  `Name` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `CA1` text NOT NULL,
  `CA2` text NOT NULL,
  `CA3` text NOT NULL,
  `CA4` text NOT NULL,
  `PCA1` text NOT NULL,
  `PCA2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_login`
--

CREATE TABLE `student_login` (
  `Roll_no` varchar(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `Guardian` varchar(50) NOT NULL,
  `DOB` varchar(10) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Blood_Group` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_login`
--

INSERT INTO `student_login` (`Roll_no`, `Name`, `dept`, `Guardian`, `DOB`, `contact`, `email`, `Gender`, `Address`, `Blood_Group`) VALUES
('15600119011', ' Rukaiya Khatoon', 'CSE', 'ABC', '2001-01-01', '9875436665', 'rukaiya@gmail.com', 'Female', 'Garden Reach', 'B+'),
('15600119030', 'Sarayu Mahato', 'CSE', 'Kalidas Mahato', '2001-04-16', '9382232031', 'sarayumahato@gmail.com', 'Female', 'Asansol', 'o+'),
('15600119038', 'Atanu Sarkar', 'CSE', 'Tushar Sarkar', '2001-10-14', '907349441', 'sarkaratanu924@gmail.com', 'Male', 'Samali', 'AB+'),
('15600120006', 'Prakriti Singh', 'CSE', 'ABC', '2022-11-01', '7003822543', 'prakriti@gmail.com', 'Female', 'Silpara', 'A-'),
('15600120010', 'Tonmoy Bagri', 'CSE', 'ABC', '2022-11-01', '8777493185', 'tonmoy@gmail.com', 'Male', 'Garden Reach', 'A+');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `Roll_no` varchar(11) NOT NULL,
  `subject_code` varchar(15) NOT NULL,
  `paper_name` text NOT NULL,
  `paper_type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`Roll_no`, `subject_code`, `paper_name`, `paper_type`) VALUES
('15600119030', '2', 'Machine Learning', 'Theory');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `attendence`
--
ALTER TABLE `attendence`
  ADD PRIMARY KEY (`Roll_no`);

--
-- Indexes for table `faculty_login`
--
ALTER TABLE `faculty_login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`Roll_no`);

--
-- Indexes for table `student_login`
--
ALTER TABLE `student_login`
  ADD PRIMARY KEY (`Roll_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
