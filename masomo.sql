-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2021 at 06:41 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `masomo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `EMAIL` varchar(100) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`EMAIL`, `PASSWORD`) VALUES
('admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PASSWORD` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`ID`, `NAME`, `EMAIL`, `PASSWORD`) VALUES
(1, 'Waka waka', 'waka@gmail.com', '0'),
(2, 'Waka waka', 'waka@gmail.com', '0'),
(3, 'Helena Smalling', 'helena@gmail.com', '934'),
(4, 'Zukapab Zukapab', 'zuka@gmail.com', 'b59c67bf196');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `REGNO` int(11) NOT NULL,
  `FORM` int(11) DEFAULT NULL,
  `PASSWORD` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`ID`, `NAME`, `REGNO`, `FORM`, `PASSWORD`) VALUES
(1, '0', 0, NULL, NULL),
(2, 'com@gmail.com', 1111, 4, '0'),
(3, 'Waltes Walters', 1112, 0, '934'),
(5, 'George James', 1020, 3, '0'),
(6, 'Johnson nyaanga', 1111, 4, '2334'),
(7, 'Johnson Nyaanga', 1010, 4, 'b59c67bf196'),
(8, '0', 0, NULL, NULL),
(9, '0', 0, NULL, NULL),
(10, '0', 0, NULL, NULL),
(11, '0', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `username`, `email`, `password`) VALUES
(1, 'johnsonnyaanga', 'johnsonnyaanga@gmail.com', 'b59c67bf196a4758191e42f76670ceba'),
(2, 'Walter', 'walter@gmail.com', 'b59c67bf196a4758191e42f76670ceba'),
(3, 'James', 'james@gmail.com', '96e79218965eb72c92a549dd5a330112'),
(4, 'kamara harris', 'kmara@gmail.com', '96e79218965eb72c92a549dd5a330112'),
(5, 'COM COM', 'com@gmail.com', 'b59c67bf196a4758191e42f76670ceba'),
(6, 'Sele sele', 'sele@gmail.com', 'b59c67bf196a4758191e42f76670ceba'),
(7, 'Sam Sam', 'comu@gmail.com', '4a7d1ed414474e4033ac29ccb8653d9b'),
(8, 'Zuka Zuka', 'zuka@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(9, 'Johnson Nyaangaa', 'jjohnsonyaanga@gmail.com', '7fa8282ad93047a4d6fe6111c93b308a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
