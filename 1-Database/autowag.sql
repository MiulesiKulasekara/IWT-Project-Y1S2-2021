-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2021 at 07:37 PM
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
-- Database: `autowag`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(70) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `address`, `username`, `password`) VALUES
(1, 'Rashmi', 'NO 890 1/2, Seeduwa, Gampaha', 'rashmi@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `name` varchar(50) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `vehicle_type` varchar(30) NOT NULL,
  `air_condition` varchar(10) NOT NULL,
  `need_driver` varchar(10) NOT NULL,
  `pickup_location` varchar(50) NOT NULL,
  `drop_location` varchar(50) NOT NULL,
  `pickup_date` varchar(50) NOT NULL,
  `pickup_time` varchar(50) NOT NULL,
  `returnDate` varchar(50) NOT NULL,
  `returnTime` varchar(50) NOT NULL,
  `stop_points` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`name`, `phone_number`, `email`, `vehicle_type`, `air_condition`, `need_driver`, `pickup_location`, `drop_location`, `pickup_date`, `pickup_time`, `returnDate`, `returnTime`, `stop_points`) VALUES
('Kamal', '07787656', 'shamal@gmail.com', 'Car', 'yes', 'yes', 'piliyandala', 'piliyandala', '2021-10-17', '23:04', '2021-10-18', '23:03', 'Kahathuduwa'),
('Kamal', '07787656', 'shamal@gmail.com', 'Car', 'yes', 'yes', 'piliyandala', 'piliyandala', '2021-10-17', '23:04', '2021-10-18', '23:03', 'Kahathuduwa');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(70) NOT NULL,
  `DOB` date NOT NULL,
  `gender` varchar(7) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `firstname`, `lastname`, `DOB`, `gender`, `phone_number`, `email`, `password`, `is_deleted`) VALUES
(1, 'lahiru', 'prasad', '2021-10-19', 'mail', '0787370283', 'lahiru@gmail.com', '1234', 0),
(2, 'Peshala', 'Pahandi', '2021-10-18', 'femail', '0777687879', 'peshala@gmail.com', '1234', 0),
(3, 'Peshala', 'Pahandi', '2021-10-18', 'femail', '0777687879', 'peshala@gmail.com', '1234', 0),
(4, 'Hashen', 'Kottegoda', '2021-10-11', 'mail', '0777689090', 'Hashen@gmail.com', '1234', 0);

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `DOB` date NOT NULL,
  `password` varchar(30) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `work_experience` varchar(30) NOT NULL,
  `licen_number` varchar(20) NOT NULL,
  `working_time` int(2) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `address` varchar(50) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `firstname`, `lastname`, `DOB`, `password`, `phone_number`, `email`, `work_experience`, `licen_number`, `working_time`, `is_deleted`, `address`, `age`) VALUES
(1, 'lahiru', 'prasad', '2021-10-04', '1234', '0787370283', 'lahiru@gmail.com', '5 Years', '20190890890', 8, 0, 'NO:567 1/2, gampaha', 22),
(2, 'Peshala', 'Sadamali', '2021-10-05', '1234', '0777687879', 'peshala@gmail.com', '3 Years', '67890890890', 6, 0, 'NO:345 1/2, Matara', 20),
(3, 'Hashen', 'Kottegoda', '2021-10-11', '1234', '0777687879', 'Hashen@gmail.com', '2 Years', '67890890543', 8, 0, 'NO:908 1/2, Kottava', 26);

-- --------------------------------------------------------

--
-- Table structure for table `mdriver`
--

CREATE TABLE `mdriver` (
  `id` varchar(10) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `DOB` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone_number` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `work_experience` varchar(10) NOT NULL,
  `licen_number` varchar(20) NOT NULL,
  `working_time` int(3) NOT NULL,
  `address` varchar(50) NOT NULL,
  `age` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mdriver`
--

INSERT INTO `mdriver` (`id`, `firstname`, `lastname`, `DOB`, `password`, `phone_number`, `email`, `work_experience`, `licen_number`, `working_time`, `address`, `age`) VALUES
('DID0987654', 'Ruwan', 'Weerawardhana', '1989-06-04', 'rw123#$', '0727891234', 'weerawardhana@gmail.com', '8 years', 'B542367984', 6, 'No.88,Horana', 32),
('DID1234567', 'Kamal', 'Kulathunga', '1985-10-11', '1234$%^7', '0712345678', 'kamal85@gmail.com', '4 year', 'B98765432', 8, 'No:16/B,River road,Rathmalana', 36),
('DID1236780', 'Denuwan', 'Kalpana', '1993-12-04', 'adddgk', '0782345670', 'kalpanaD@gmail.com', '4 years', 'B3205678', 6, '12/C,Rathgama north , Rathgama', 27),
('DID1246934', 'Anura', 'Jayasekara', '1980-09-08', 'anur12', '0772641008', 'anura80@gmail.com', '7 years', 'B5678909', 8, 'N0.6/D,Parana para , Athurugiriya', 41),
('DID2102881', 'Shamal', 'Samarasekara', '1998-06-07', 'sha@#$', '0773318219', 'shamal@gmail.com', '2 years', 'B3456781', 6, 'No.18/A/1,Samagimawatha,Salgama', 23),
('DID2345671', 'John', 'Fernando', '1994-01-07', '879*&amp', '0712345678', 'jhon123@gmail.com', '6 years', 'B34566543', 8, 'No:2,Srisaranankara Mawatha , Homagama', 27),
('DID3111222', 'Kamal', 'Priyantha', '1981-03-04', '1234', '0771222333', 'kamal@gmail.com', '4 year', 'B11112222', 6, 'No32/B,Saranapala mawata,Piliyandal', 40),
('DID3245679', 'Nalinda', 'Muthukumarana', '1978-06-03', 'asnmj', '0724569871', 'muthukumarana@gmail.com', '9 years', 'B123342456', 8, '34,Told road,Malabe', 43),
('DID5656561', 'Imash', 'Nipun', '2000-11-11', 'imash', '0773456789', 'it21028878@my.sliit.lk', '2years', 'B98765432', 1, 'No:16/B,River road,Rathmalana', 20);

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `vehicle_type` varchar(30) NOT NULL,
  `air_condition` varchar(10) NOT NULL,
  `returnDate` date NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pickup_location` varchar(50) NOT NULL,
  `drop_location` varchar(50) NOT NULL,
  `pickup_date` date NOT NULL,
  `pickup_time` time NOT NULL,
  `stop_points` int(2) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `name`, `vehicle_type`, `air_condition`, `returnDate`, `phone_number`, `email`, `pickup_location`, `drop_location`, `pickup_date`, `pickup_time`, `stop_points`, `is_deleted`) VALUES
(1, 'Rashmi', 'KDH', 'Yes', '2021-10-05', '0787370283', 'lahiru@gmail.com', 'Kottava', 'Colombo', '2021-10-04', '23:01:07', 5, 0),
(2, 'Hashen', 'Hybrid', 'Yes', '2021-10-05', '0777689090', 'Hashen@gmail.com', 'Gampaha', 'Colombo', '2021-10-07', '21:05:59', 3, 0),
(3, 'Shehani', 'BMW', 'No', '2021-10-08', '0777687879', 'peshala@gmail.com', 'Matara', 'Kaduwela', '2021-10-17', '11:26:58', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `id` int(11) NOT NULL,
  `Transmission` varchar(30) NOT NULL,
  `Air_condition` varchar(3) NOT NULL,
  `Fuel_type` varchar(30) NOT NULL,
  `Luggage` int(3) NOT NULL,
  `Doors` int(3) NOT NULL,
  `Engine_capacity` varchar(30) NOT NULL,
  `Passenger` int(2) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`id`, `Transmission`, `Air_condition`, `Fuel_type`, `Luggage`, `Doors`, `Engine_capacity`, `Passenger`, `is_deleted`) VALUES
(1, 'Auto', 'yes', 'Petrol', 2, 4, '1000 CC', 15, 0),
(3, 'Manual', 'Yes', 'Electric', 2, 2, '2000 CC', 2, 0),
(4, 'Manual', 'No', 'Petrol', 2, 5, '20000 CC', 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_fleet`
--

CREATE TABLE `vehicle_fleet` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `vehicle_name` varchar(200) NOT NULL,
  `vehicle_type` varchar(200) NOT NULL,
  `description` longtext DEFAULT NULL,
  `fule_type` varchar(200) NOT NULL,
  `no_of_passenger` int(11) NOT NULL,
  `engine_capacity` varchar(200) NOT NULL,
  `transmission` varchar(200) NOT NULL,
  `no_of_doors` int(11) NOT NULL,
  `Air Condition` varchar(200) NOT NULL,
  `fleet_image` varchar(200) NOT NULL,
  `detail_image` varchar(200) NOT NULL,
  `cost_per_1km` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle_fleet`
--

INSERT INTO `vehicle_fleet` (`id`, `category_id`, `vehicle_name`, `vehicle_type`, `description`, `fule_type`, `no_of_passenger`, `engine_capacity`, `transmission`, `no_of_doors`, `Air Condition`, `fleet_image`, `detail_image`, `cost_per_1km`) VALUES
(1, 1, 'Mercedes-Benz AMG GLA 35', 'Car', 'The AMG GLA 35 4M is powered by a 2.0-liter, four-cylinder engine that churns out 302bhp and 400Nm of torque between 3,000 – 4,000rpm. This engine comes mated to the 8G-DCT transmission which powers all four wheels. The vehicle is capable of sprinting from 0-100kmph in just 5.1 seconds.', 'petrol', 4, '1991 cc', 'Auto', 5, 'Yes', 'benz_amg_gla_35.png', 'benz_amg_gla_35.png', '120.00'),
(2, 2, 'BMW X7', 'Suv', 'The 2021 BMW X7 is a seven-passenger, three-row SUV that is available in two trim levels: xDrive40i and M50i. The xDrive40i is powered by a turbocharged 3.0-liter inline-six cylinder engine, paired with a 48-volt mild hybrid system. Total output is 335 horsepower and 330 lb-ft of torque.', 'Petrol', 4, '2993cc', 'Auto', 5, 'Yes', 'bmwx7.png', 'bmwx7.png', '130.00'),
(3, 1, 'Toyota Vios ', 'Car', 'Toyota Vios 2021 is an upcoming car in Sri Lanka. The expected launch date in October 2021. All the information on this page is unofficial, but the official specs, features and price will be update after official launch.', 'Petrol', 5, '1300cc', 'Auto', 5, 'Yes', 'vios2021.png', 'vios2021.png', '90.00'),
(4, 3, 'Mercedes Benz Metris', 'Van', '2021 Mercedes Benz Metris Cargo is a newly introduced Van with an all-new design, a classy Van, and plenty of space and cargo. Mercedes-Benz Metris Standard Roof 126\" Wheelbase powered by 2.0L Inline-4 Gas Engine with 9-Speed Automatic transmission, 208 horsepower, 258 lb-ft torque.', 'Petrol', 9, '1200cc', 'Auto', 3, 'Yes', 'benz_metris.png', 'benz_metris.png', '80.00'),
(5, 4, ' BMW R 1200 Nine T', 'Motorbike', 'The new BMW NineT celebrates BMW Motorrad\'s 90 year anniversary. This custom roadster rental motorcycle features a torquey 1200cc boxer engine, quality suspension, and radial brakes. Touring Alpine twisties or cruising through Monaco, this bike gives you a huge smile.', 'Petrol', 2, '1200cc', 'Manual', 0, 'No', 'BMW_R1.png', 'BMW_R1.png', '60.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mdriver`
--
ALTER TABLE `mdriver`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_fleet`
--
ALTER TABLE `vehicle_fleet`
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
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vehicle_fleet`
--
ALTER TABLE `vehicle_fleet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
