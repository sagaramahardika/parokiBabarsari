-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2016 at 06:45 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

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
-- Table structure for table `baptises_anak`
--

CREATE TABLE `baptises_anak` (
  `id` int(11) NOT NULL,
  `id_baptis` int(11) NOT NULL,
  `lingkungan` varchar(255) NOT NULL,
  `status_perkawinan_ortu` enum('GEREJA','KUA','SIPIL','LAINNYA') NOT NULL DEFAULT 'LAINNYA',
  `tempat_perkawinan_ortu` varchar(255) NOT NULL,
  `tanggal_perkawinan_ortu` date NOT NULL,
  `alamat_ortu` varchar(255) NOT NULL,
  `telp_ortu` varchar(255) NOT NULL,
  `penjamin` varchar(255) NOT NULL,
  `tanggal_isi_form` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baptises_anak`
--
ALTER TABLE `baptises_anak`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `baptises_anak`
--
ALTER TABLE `baptises_anak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
