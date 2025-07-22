-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2023 at 09:24 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `construction_estimator`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `username`, `pass`) VALUES
(1, 'admin', 'admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `user` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `sq_ft` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `user`, `type`, `sq_ft`) VALUES
(1, 'shraddha', 'High', 1200),
(2, 'shraddha', 'High', 2000),
(3, 'shraddha', 'Medium', 2000),
(5, 'Pallavi ', 'High', 1200);

-- --------------------------------------------------------

--
-- Table structure for table `master`
--

CREATE TABLE `master` (
  `m_id` int(11) NOT NULL,
  `cement` decimal(16,2) NOT NULL,
  `steel` decimal(16,2) NOT NULL,
  `worker` decimal(16,2) NOT NULL,
  `sand` decimal(16,2) NOT NULL,
  `bricks` decimal(16,2) NOT NULL,
  `profit` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master`
--

INSERT INTO `master` (`m_id`, `cement`, `steel`, `worker`, `sand`, `bricks`, `profit`) VALUES
(4, '200.00', '300.00', '200.00', '100.00', '400.00', '13');

-- --------------------------------------------------------

--
-- Table structure for table `medium_master`
--

CREATE TABLE `medium_master` (
  `md_id` int(11) NOT NULL,
  `cement` decimal(16,2) NOT NULL,
  `steel` decimal(16,2) NOT NULL,
  `worker` decimal(16,2) NOT NULL,
  `sand` decimal(16,2) NOT NULL,
  `bricks` decimal(16,2) NOT NULL,
  `profit` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medium_master`
--

INSERT INTO `medium_master` (`md_id`, `cement`, `steel`, `worker`, `sand`, `bricks`, `profit`) VALUES
(5, '100.00', '200.00', '200.00', '300.00', '350.00', '18');

-- --------------------------------------------------------

--
-- Table structure for table `quatation`
--

CREATE TABLE `quatation` (
  `id` int(11) NOT NULL,
  `client` varchar(200) NOT NULL,
  `sq_ft` varchar(200) NOT NULL,
  `cement` varchar(100) NOT NULL,
  `cement_price_show` varchar(100) NOT NULL,
  `total_cement_amt` varchar(100) NOT NULL,
  `steel` varchar(100) NOT NULL,
  `steel_price_show` varchar(100) NOT NULL,
  `total_steel_amt` varchar(100) NOT NULL,
  `worker` varchar(100) NOT NULL,
  `worker_price_show` varchar(100) NOT NULL,
  `total_worker_amt` varchar(100) NOT NULL,
  `sand` varchar(100) NOT NULL,
  `sand_price_show` varchar(100) NOT NULL,
  `total_sand_amt` varchar(100) NOT NULL,
  `bricks` varchar(100) NOT NULL,
  `bricks_price_show` varchar(100) NOT NULL,
  `total_bricks_amt` varchar(100) NOT NULL,
  `total_amount` varchar(100) NOT NULL,
  `percent` varchar(100) NOT NULL,
  `quatation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quatation`
--

INSERT INTO `quatation` (`id`, `client`, `sq_ft`, `cement`, `cement_price_show`, `total_cement_amt`, `steel`, `steel_price_show`, `total_steel_amt`, `worker`, `worker_price_show`, `total_worker_amt`, `sand`, `sand_price_show`, `total_sand_amt`, `bricks`, `bricks_price_show`, `total_bricks_amt`, `total_amount`, `percent`, `quatation`) VALUES
(1, 'Pallavi ', '1200', '480 Bag', '200.00 Rs', '240000 Rs', '2160 Kg', '300.00 Rs', '360000 Rs', '2400 people', '200.00 Rs', '240000 Rs', '2160 Cft', '100.00 Rs', '120000 Rs', '24000 bricks', '400.00 Rs', '480000 Rs', '1440000 Rs', '187200 Rs', '1252800 Rs'),
(2, 'admin', '1200', '480 Bag', '200.00 Rs', '240000 Rs', '2160 Kg', '300.00 Rs', '360000 Rs', '2400 people', '200.00 Rs', '240000 Rs', '2160 Cft', '100.00 Rs', '120000 Rs', '24000 bricks', '400.00 Rs', '480000 Rs', '1440000 Rs', '187200 Rs', '1252800 Rs');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master`
--
ALTER TABLE `master`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `medium_master`
--
ALTER TABLE `medium_master`
  ADD PRIMARY KEY (`md_id`);

--
-- Indexes for table `quatation`
--
ALTER TABLE `quatation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `master`
--
ALTER TABLE `master`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `medium_master`
--
ALTER TABLE `medium_master`
  MODIFY `md_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `quatation`
--
ALTER TABLE `quatation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
