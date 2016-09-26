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
-- Dumping data for table `baptises_anak`
--

INSERT INTO `baptises_anak` (`id`, `id_baptis`, `lingkungan`, `status_perkawinan_ortu`, `tempat_perkawinan_ortu`, `tanggal_perkawinan_ortu`, `alamat_ortu`, `telp_ortu`, `penjamin`, `tanggal_isi_form`) VALUES
(1, 520, 'lingkungan', 'LAINNYA', 'gerejaku', '0000-00-00', 'alamat ortu', '000000', 'penjamain', '0000-00-00'),
(2, 521, 'lingunga', 'LAINNYA', 'ilublu', '2016-09-25', 'iublib', '90809808', 'uybkb', '0000-00-00'),
(3, 525, '', 'LAINNYA', '', '2016-09-25', '', '', '', '0000-00-00'),
(4, 526, '', 'LAINNYA', '', '2016-09-25', '', '', '', '0000-00-00'),
(5, 527, '', 'LAINNYA', '', '2016-09-25', '', '', '', '0000-00-00'),
(6, 528, '', 'LAINNYA', '', '2016-09-25', '', '', '', '0000-00-00');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
