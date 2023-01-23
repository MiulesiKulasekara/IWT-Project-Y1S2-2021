-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2021 at 06:00 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `registrationtable`
--

CREATE TABLE `registrationtable` (
  `ID` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `phonenumber` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `ConformPassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registrationtable`
--

INSERT INTO `registrationtable` (`ID`, `firstname`, `lastname`, `birthday`, `Gender`, `phonenumber`, `email`, `password`, `ConformPassword`) VALUES
(33, 'THUSHAN', 'VITHANA', '2021-10-06', 'Male', 772940951, 'thushan2271@gmail.com', '123456', '123456'),
(34, 'heshn', 'asfr', '2021-11-05', 'Female', 234235254, 'thu@sdf.com', '123456', '123456'),
(35, 'sahan', 'vuityhg', '2021-10-28', 'Male', 772940951, 'thushawen2271@gmail.com', '159753', '159753'),
(36, 'sahan', 'vuityhg', '2021-10-28', 'Male', 772940951, 'thushawen2271@gmail.com', '159753', '159753'),
(38, 'thush', 'test', '2021-10-26', 'Male', 772988256, 'thushasdxfdsfn2271@gmail.com', '123456789', '123456789'),
(39, 'Palligoda vithanage', 'dfgfsd', '2021-10-26', 'Male', 772940951, 'thushfgfdgan2271@gmail.com', '1111111', '1111111'),
(43, 'lahiru', 'prasad', '2008-06-10', 'Male', 787370283, 'lahiru@gmail.com', '123456', '123456'),
(44, 'Peshala', 'Pahandi', '2021-08-28', 'Female', 777687879, 'peshala@gmail.com', '789456123', '789456123'),
(45, 'Hashen', 'Kottegoda', '2008-03-10', 'Male', 777687879, 'Hashen@gmail.com', '753753', '753753'),
(46, 'miulesi', 'kulasekara', '2000-11-18', 'Female', 778965412, 'miulesi@gmail.com', '123456', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registrationtable`
--
ALTER TABLE `registrationtable`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registrationtable`
--
ALTER TABLE `registrationtable`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
