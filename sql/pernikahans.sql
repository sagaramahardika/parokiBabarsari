-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2016 at 06:04 PM
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
