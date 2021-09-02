-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2021 at 09:47 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `userdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(45) NOT NULL,
  `username` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TECHNOFRENZY` varchar(45) NOT NULL,
  `Elecdown` varchar(1000) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `Quizzard` varchar(1000) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `username`, `TECHNOFRENZY`, `Elecdown`, `Quizzard`) VALUES
(1, 'a@a.a', '', '', ''),
(2, 'l@l.l', 'Registered', '', ''),
(3, 'o@o.o', 'Registered', '', ''),
(4, 's@s.s', 'Registered', 'Registered', 'Registered'),
(6, 'n@n.n', '', '', ''),
(7, 'x@x.x', 'Registered', 'Registered', 'Registered');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(45) NOT NULL,
  `username` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `events` varchar(1000) NOT NULL,
  `workshops` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `events`, `workshops`) VALUES
(1, 'i@i.i', 'i', '', ''),
(2, 'j@j.j', 'j', '', ''),
(3, 'jassimjinnah@h.com', 'kimma', '', ''),
(4, 'a@a.a', 'a', '', ''),
(5, 'l@l.l', 'l', '', ''),
(6, 'o@o.o', 'o', '', ''),
(7, 's@s.s', 's', 'Elecdown,Quizzard,TECHNOFRENZY,', ''),
(9, 'n@n.n', 'n', '', ''),
(10, 'x@x.x', 'x', 'Quizzard,Elecdown,TECHNOFRENZY,', 'robotics,Industry,IOT,');

-- --------------------------------------------------------

--
-- Table structure for table `workshop`
--

CREATE TABLE `workshop` (
  `id` int(45) NOT NULL,
  `username` varchar(1000) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  `IOT` varchar(1000) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `Industry` varchar(1000) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `robotics` varchar(1000) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `workshop`
--

INSERT INTO `workshop` (`id`, `username`, `IOT`, `Industry`, `robotics`) VALUES
(2, 'x@x.x', 'Registered', 'Registered', 'Registered');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workshop`
--
ALTER TABLE `workshop`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `workshop`
--
ALTER TABLE `workshop`
  MODIFY `id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
