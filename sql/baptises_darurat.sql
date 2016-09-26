-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2016 at 10:56 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `umatbabarsari`
--

-- --------------------------------------------------------

--
-- Table structure for table `baptises_darurat`
--

CREATE TABLE `baptises_darurat` (
  `id` int(11) NOT NULL,
  `id_baptis` int(11) NOT NULL,
  `status_perkawinan` enum('SUDAH','BELUM') NOT NULL,
  `nama_pasangan` varchar(255) DEFAULT NULL,
  `tempat_perkawinan` varchar(255) NOT NULL,
  `tanggal_perkawinan` date NOT NULL,
  `ketua_lingkungan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `baptises_darurat`
--

INSERT INTO `baptises_darurat` (`id`, `id_baptis`, `status_perkawinan`, `nama_pasangan`, `tempat_perkawinan`, `tanggal_perkawinan`, `ketua_lingkungan`) VALUES
(1, 519, 'SUDAH', 'asfasf', 'asfsf', '0000-00-00', ''),
(2, 539, 'SUDAH', '', '', '2016-09-25', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baptises_darurat`
--
ALTER TABLE `baptises_darurat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `baptises_darurat`
--
ALTER TABLE `baptises_darurat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
