-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2016 at 08:12 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `umatbabarsari`
--

-- --------------------------------------------------------

--
-- Table structure for table `pernikahans`
--

CREATE TABLE IF NOT EXISTS `pernikahans` (
`id` int(11) NOT NULL,
  `kode_stasi` int(11) DEFAULT NULL,
  `kode_LM` int(11) DEFAULT NULL,
  `no` int(11) DEFAULT NULL,
  `halaman` int(11) DEFAULT NULL,
  `umat_id` int(11) DEFAULT NULL,
  `pasangan_id` int(11) DEFAULT NULL,
  `nm_pasangan` varchar(150) DEFAULT NULL,
  `alamat_pasangan` varchar(150) DEFAULT NULL,
  `telp_pasangan` varchar(50) DEFAULT NULL,
  `tmplhr_pasangan` varchar(150) DEFAULT NULL,
  `tgllhr_pasangan` date DEFAULT NULL,
  `tmppernikahan` varchar(150) NOT NULL,
  `tglpernikahan` date NOT NULL,
  `kota` varchar(100) DEFAULT NULL,
  `saksi1` varchar(100) DEFAULT NULL,
  `saksi2` varchar(100) DEFAULT NULL,
  `dispensasi` varchar(255) DEFAULT NULL,
  `romopernikahan` varchar(150) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pernikahans`
--

INSERT INTO `pernikahans` (`id`, `kode_stasi`, `kode_LM`, `no`, `halaman`, `umat_id`, `pasangan_id`, `nm_pasangan`, `alamat_pasangan`, `telp_pasangan`, `tmplhr_pasangan`, `tgllhr_pasangan`, `tmppernikahan`, `tglpernikahan`, `kota`, `saksi1`, `saksi2`, `dispensasi`, `romopernikahan`) VALUES
(1, 1, 1, 1, 1, 487, NULL, 'PRATIWI', 'PRATIWI', 'PRATIWI', 'PRATIWI', '2016-09-06', 'PRATIWI', '2016-09-06', 'PRATIWI', 'PRATIWI', 'PRATIWI', 'PRATIWI', 'PRATIWI'),
(2, 2, 2, 2, 2, 490, 156, NULL, NULL, NULL, NULL, NULL, 'Kudus', '2016-09-25', 'Kudus', 'Kudus', 'Kudus', 'Kudus', 'Kudus'),
(3, 1, 2, 3, 4, 487, 30, NULL, NULL, NULL, NULL, NULL, 'Jogja', '2016-09-07', 'Jogja', 'Aditya', 'Yuga', 'Pradana', 'Sagara'),
(4, 3776, 1, 2, 3, 491, 9, NULL, NULL, NULL, NULL, NULL, 'awd', '2016-10-05', 'awdaw', 'ad', 'awawd', 'awdawd', 'dawd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pernikahans`
--
ALTER TABLE `pernikahans`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pernikahans`
--
ALTER TABLE `pernikahans`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
