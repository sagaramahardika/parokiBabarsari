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
-- Table structure for table `pengurapans`
--

CREATE TABLE IF NOT EXISTS `pengurapans` (
`id` int(11) NOT NULL,
  `kode_stasi` int(11) NOT NULL,
  `id_umat` int(11) DEFAULT NULL COMMENT 'Jika yang diurapi merupakan umat',
  `nama_penerima` varchar(200) NOT NULL,
  `usia` int(11) NOT NULL,
  `tempat` varchar(200) NOT NULL,
  `tanggal_penerimaan` date NOT NULL,
  `pelayan_sakramen` varchar(200) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengurapans`
--

INSERT INTO `pengurapans` (`id`, `kode_stasi`, `id_umat`, `nama_penerima`, `usia`, `tempat`, `tanggal_penerimaan`, `pelayan_sakramen`, `keterangan`) VALUES
(1, 0, NULL, 'Alex', 1, 'sadasd', '2016-09-06', 'asd', 'asd'),
(2, 0, NULL, 'Ervan', 21, 'Rumah Sakit ', '2016-02-21', 'Sagara Mahardhiekha', 'Bukan Umat'),
(6, 3776, NULL, 'Ervan Kurnia Sanjaya', 21, 'Magelang', '2016-09-20', 'Hendrawan', ''),
(7, 0, 493, 'ANGGA, FERNANDO', 44, 'MADIUN', '2016-09-20', 'Romo Mangun', ''),
(8, 0, NULL, 'EDEN', 33, 'Makassaar', '2016-09-20', 'Weweaweawea', 'waweawe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pengurapans`
--
ALTER TABLE `pengurapans`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pengurapans`
--
ALTER TABLE `pengurapans`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
