-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2016 at 06:34 PM
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
-- Dumping data for table `baptises_anak`
--

INSERT INTO `baptises_anak` (`id`, `id_baptis`, `lingkungan`, `status_perkawinan_ortu`, `tempat_perkawinan_ortu`, `tanggal_perkawinan_ortu`, `alamat_ortu`, `telp_ortu`, `penjamin`, `tanggal_isi_form`) VALUES
(1, 520, 'sehshe', 'LAINNYA', 'segsegg', '2016-10-31', 'segseg', 'segseg', 'segsegs', '0000-00-00'),
(2, 0, '', 'LAINNYA', '', '0000-00-00', '', '', '', '0000-00-00'),
(3, 0, '', 'LAINNYA', '', '0000-00-00', '', '', '', '0000-00-00'),
(4, 0, '', 'LAINNYA', '', '0000-00-00', '', '', '', '0000-00-00'),
(5, 0, '', 'LAINNYA', '', '0000-00-00', '', '', '', '0000-00-00'),
(6, 0, '', 'LAINNYA', '', '0000-00-00', '', '', '', '0000-00-00'),
(7, 0, '', 'LAINNYA', 'awf', '0000-00-00', 'awf', 'awf', '', '0000-00-00'),
(8, 0, '', 'LAINNYA', 'sdsn', '0000-00-00', 'snen', 'snensen', '', '0000-00-00'),
(9, 0, '', 'LAINNYA', '', '2016-10-03', '', '', '', '0000-00-00'),
(10, 0, '', 'LAINNYA', '', '0000-00-00', '', '', 'sehseh', '0000-00-00'),
(11, 0, '', 'LAINNYA', '', '0000-00-00', '', '', 'serhjsjsej', '0000-00-00'),
(12, 0, '', 'LAINNYA', '', '0000-00-00', '', '', '', '0000-00-00'),
(13, 522, 'srh', 'SIPIL', 'w4y', '2016-10-31', 'w4y', 'w4y', 'w4y', '0000-00-00'),
(14, 523, 'zdb', 'KUA', 'dtj', '2016-10-03', 'dtj', 'dtj', 'xdkt', '0000-00-00');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
