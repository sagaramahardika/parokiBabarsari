-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2016 at 10:56 PM
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
-- Table structure for table `komuni`
--

CREATE TABLE `komuni` (
  `id` int(11) NOT NULL,
  `kode_stasi` int(11) NOT NULL,
  `id_liber` int(11) NOT NULL,
  `id_umat` int(11) NOT NULL,
  `no_urut` int(11) NOT NULL,
  `sts_komuni` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(150) NOT NULL,
  `lingkungan` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `nama_baptis` varchar(255) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `tempat_baptis` varchar(255) DEFAULT NULL,
  `tanggal_baptis` date DEFAULT NULL,
  `buku_baptis` varchar(255) DEFAULT NULL,
  `no_buku` int(10) DEFAULT NULL,
  `ayah` varchar(255) DEFAULT NULL,
  `ibu` varchar(255) DEFAULT NULL,
  `alamat_orangtua` varchar(255) DEFAULT NULL,
  `no_telp_orangtua` varchar(15) DEFAULT NULL,
  `jenis_kelamin` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komuni`
--

INSERT INTO `komuni` (`id`, `kode_stasi`, `id_liber`, `id_umat`, `no_urut`, `sts_komuni`, `tanggal`, `tempat`, `lingkungan`, `nama`, `nama_baptis`, `tempat_lahir`, `tanggal_lahir`, `tempat_baptis`, `tanggal_baptis`, `buku_baptis`, `no_buku`, `ayah`, `ibu`, `alamat_orangtua`, `no_telp_orangtua`, `jenis_kelamin`) VALUES
(4, 3776, 3, 0, 1, 1, '2016-09-03', 'SHSZHRHZDHR', 'lingkungan', 'aditya yuga', 'nama baptis', 'tempat lahir', '2016-09-03', 'tempat baptis', '2016-09-03', 'buku', 1, 'ayah', 'ibu', 'alamat ortu', '870709709', NULL),
(7, 3776, 3, 0, 1111, 1, '2016-09-07', 'aaaaaaaaaaaaa', 'lingkungan', 'adityayua', 'aaaaaaaaa', 'aaaaaaaaaa', '2016-09-07', 'aaaaaaaaaaa', '2016-09-07', 'aaaaaaaaa', 1, 'aaaaaa', 'aaaaaa', 'aaaaaaa', '1111111111111', NULL),
(9, 3776, 1, 3, 1, 1, '2016-09-07', 'gereja', 'lingkungan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 3776, 2, 2, 3, 1, '2016-09-07', 'gereja katholik', 'lingkungan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 3776, 1222222, 0, 122222, 1, '2016-09-07', 'gereja', 'lingkungan', 'ervan', 'nama baptis', 'jogja', '2016-09-07', 'jogja', '2016-09-07', 'buku', 12, 'ervam', 'ervan', 'alamat orang tua', '097809709', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `komuni`
--
ALTER TABLE `komuni`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `komuni`
--
ALTER TABLE `komuni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
