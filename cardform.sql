-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2025 at 07:59 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cardform`
--

-- --------------------------------------------------------

--
-- Table structure for table `reg_card`
--

CREATE TABLE `reg_card` (
  `id` int(20) NOT NULL,
  `stdname` varchar(30) NOT NULL,
  `rollno` int(15) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `marks` int(20) NOT NULL,
  `grade` varchar(1) NOT NULL,
  `examdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reg_card`
--

INSERT INTO `reg_card` (`id`, `stdname`, `rollno`, `subject`, `marks`, `grade`, `examdate`) VALUES
(1, 'Akhter', 97, 'english', 80, 'A', '2024-04-12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reg_card`
--
ALTER TABLE `reg_card`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reg_card`
--
ALTER TABLE `reg_card`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
