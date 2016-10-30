-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 30 Okt 2016 pada 19.20
-- Versi Server: 5.6.21
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
-- Struktur dari tabel `kematian_sakramen`
--

CREATE TABLE IF NOT EXISTS `kematian_sakramen` (
`id` int(11) NOT NULL,
  `id_kematian` int(11) NOT NULL,
  `nama_sakramen` varchar(50) NOT NULL,
  `pelayan_sakramen` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kematian_sakramen`
--

INSERT INTO `kematian_sakramen` (`id`, `id_kematian`, `nama_sakramen`, `pelayan_sakramen`) VALUES
(15, 0, 'ccccccccccccccc', 'ddddddddddddd'),
(16, 16, 'aaaaaaaaaa', 'bbbbbbbbbb'),
(17, 16, 'ccccccccccccccc', 'ddddddddddddd'),
(18, 20, 'test1', 'test1'),
(19, 20, 'test2', 'test2'),
(20, 24, 'testLagi', 'testLagi'),
(21, 24, 'eeeeee', 'eeeeee'),
(22, 24, 'dddddddddd', 'dddddddddd'),
(23, 25, 'a', 'a'),
(24, 25, 'b', 'b'),
(25, 27, 'a', 'b'),
(26, 27, 'c', 'd'),
(27, 27, 'e', 'f'),
(28, 27, 'g', 'h'),
(29, 28, 'a', 'b'),
(30, 28, 'c', 'd'),
(31, 28, 'e', 'f'),
(32, 28, 'g', 'h'),
(33, 28, 'i', 'j'),
(34, 28, 'k', 'l'),
(35, 28, 'tambah', 'tambah');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kematian_sakramen`
--
ALTER TABLE `kematian_sakramen`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kematian_sakramen`
--
ALTER TABLE `kematian_sakramen`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
