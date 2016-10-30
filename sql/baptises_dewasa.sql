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
-- Table structure for table `baptises_dewasa`
--

CREATE TABLE `baptises_dewasa` (
  `id` int(11) NOT NULL,
  `id_baptis` int(11) NOT NULL,
  `lingkungan` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `status_perkawinan` enum('BELUM','AKAN','SUDAH','BATAL') NOT NULL,
  `menikah_secara` enum('GEREJA','KUA','SIPIL','LAINNYA') NOT NULL,
  `alasan_batal_nikah` enum('KEMATIAN','CERAISIPIL','PEMUTUSAN','PEMBATALAN','LAINNYA') NOT NULL,
  `no_surat` varchar(255) NOT NULL,
  `nama_pasangan` varchar(255) DEFAULT NULL,
  `tempat_pernikahan` varchar(255) DEFAULT NULL,
  `tanggal` date DEFAULT NULL COMMENT 'bukan tanggal baptis, tanggal pembatalan nikah / pernikahan',
  `belajar_agama_sejak` date NOT NULL,
  `ikut_misa_sejak` date NOT NULL,
  `kegiatan_lingkungan_sejak` date NOT NULL,
  `guru_agama` varchar(255) NOT NULL,
  `agama` varchar(255) DEFAULT NULL,
  `pemberkatan` varchar(255) NOT NULL,
  `tanggal_daftar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baptises_dewasa`
--
ALTER TABLE `baptises_dewasa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `baptises_dewasa`
--
ALTER TABLE `baptises_dewasa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
