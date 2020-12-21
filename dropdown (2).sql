-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2020 at 06:28 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dropdown`
--

-- --------------------------------------------------------

--
-- Table structure for table `bird_countries`
--

CREATE TABLE `bird_countries` (
  `id` int(11) NOT NULL,
  `sortname` varchar(3) NOT NULL,
  `name` varchar(150) NOT NULL,
  `phonecode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bird_countries`
--

INSERT INTO `bird_countries` (`id`, `sortname`, `name`, `phonecode`) VALUES
(1, 'AF', 'Italy', 93),
(2, 'AL', 'Luxembourg', 355),
(3, 'DZ', 'Belgium', 213),
(4, 'AS', 'Denmark', 1684),
(5, 'AD', 'Finland', 376),
(6, 'AO', 'France', 244),
(7, 'AI', 'Slovakia', 1264),
(8, 'AQ', 'Slovenia', 0),
(9, 'AG', 'Germany', 1268),
(10, 'AR', 'Greece', 54),
(11, 'AM', 'Ireland', 374),
(12, 'AW', 'Netharlands', 297),
(13, 'AU', 'Portugal', 61),
(14, 'AT', 'Spain', 43),
(15, 'AZ', 'Sweden', 994),
(16, 'BS', 'United Kingdom', 1242),
(17, 'BH', 'Cyprus', 973),
(18, 'BD', 'Lithunia', 880),
(19, 'BB', 'Czech Republic', 1246),
(20, 'BY', 'Estonia', 375),
(21, 'BE', 'Hungary', 32),
(22, 'BZ', 'Latvia', 501),
(23, 'BJ', 'Malta', 229),
(24, 'BM', 'Austria', 1441),
(25, 'BT', 'Poland', 975);

-- --------------------------------------------------------

--
-- Table structure for table `bird_states`
--

CREATE TABLE `bird_states` (
  `id` int(11) NOT NULL,
  `countryId` int(11) NOT NULL,
  `statename` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bird_states`
--

INSERT INTO `bird_states` (`id`, `countryId`, `statename`) VALUES
(1, 1, 'Rome'),
(19, 2, 'Luxembourg'),
(20, 3, 'Brussels'),
(21, 4, 'Copenhagen'),
(22, 5, 'Helsinki'),
(23, 6, 'paris'),
(24, 7, 'Bratislava'),
(25, 8, 'Ljubljana'),
(26, 9, 'Berlin'),
(27, 10, 'Athens'),
(28, 11, 'Dublin'),
(29, 12, 'Amsterdam'),
(30, 13, 'Lisbon'),
(31, 14, 'Madrid'),
(32, 15, 'Stockholm'),
(33, 16, 'London'),
(34, 17, 'Nicosia'),
(35, 18, 'Vilnius'),
(36, 19, 'Prague'),
(37, 20, 'Tallin'),
(38, 21, 'Budapest'),
(39, 22, 'Riga'),
(40, 23, 'Valetta'),
(41, 24, 'Vienna'),
(42, 25, 'Warsaw');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `dept_no` varchar(255) NOT NULL,
  `dept_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `dept_no`, `dept_name`) VALUES
(1, '101', 'XYZ'),
(2, '102', 'ABC'),
(3, '103', 'DEF'),
(4, '104', 'LMN');

-- --------------------------------------------------------

--
-- Table structure for table `dept_emp`
--

CREATE TABLE `dept_emp` (
  `id` int(11) NOT NULL,
  `emp_no` varchar(255) NOT NULL,
  `dept_no` varchar(255) NOT NULL,
  `from_date` varchar(255) NOT NULL,
  `to_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dept_emp`
--

INSERT INTO `dept_emp` (`id`, `emp_no`, `dept_no`, `from_date`, `to_date`) VALUES
(1, '101', 'XYZ', '01/02/2018', '02/02/2019'),
(2, '102', 'ABC', '01/03/2018', '02/02/2019'),
(3, '103', 'DEF', '01/04/2018', '02/02/2019'),
(4, '104', 'LMN', '01/05/2018', '02/02/2019');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'CCT', 'Dublin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bird_countries`
--
ALTER TABLE `bird_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dept_emp`
--
ALTER TABLE `dept_emp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bird_countries`
--
ALTER TABLE `bird_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dept_emp`
--
ALTER TABLE `dept_emp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
