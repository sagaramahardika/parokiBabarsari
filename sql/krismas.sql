-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 15 Okt 2016 pada 21.47
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
-- Struktur dari tabel `new_krisma`
--

CREATE TABLE IF NOT EXISTS `krismas` (
`id` int(11) NOT NULL,
  `kode_stasi` int(11) NOT NULL,
  `lingkungan` varchar(50) NOT NULL,
  `nama_diri` varchar(50) NOT NULL,
  `nama_baptis` varchar(50) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_baptis` varchar(50) NOT NULL,
  `tanggal_baptis` date NOT NULL,
  `buku_baptis` varchar(50) NOT NULL,
  `tempat_komuni` varchar(50) NOT NULL,
  `tanggal_komuni` date NOT NULL,
  `alamat_diri` varchar(50) NOT NULL,
  `no_hp_diri` varchar(13) NOT NULL,
  `tanggal_krisma` date NOT NULL,
  `nama_pelindung_krisma` varchar(50) NOT NULL,
  `nama_emban_krisma` varchar(50) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `alamat_orangtua` varchar(50) NOT NULL,
  `no_hp_orangtua` varchar(13) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `new_krisma`
--

INSERT INTO `new_krisma` (`id`, `kode_stasi`, `lingkungan`, `nama_diri`, `nama_baptis`, `tempat_lahir`, `tanggal_lahir`, `tempat_baptis`, `tanggal_baptis`, `buku_baptis`, `tempat_komuni`, `tanggal_komuni`, `alamat_diri`, `no_hp_diri`, `tanggal_krisma`, `nama_pelindung_krisma`, `nama_emban_krisma`, `nama_ayah`, `nama_ibu`, `alamat_orangtua`, `no_hp_orangtua`) VALUES
(1, 0, 'testTambah', 'testEditCoy', 'testTambah', 'testTambah', '2004-10-26', 'testTambah', '0000-00-00', 'testTambah', '', '0000-00-00', '', '', '0000-00-00', '', '', 'testTambah', 'testTambah', '', ''),
(11, 0, 'bbbbbbbb', 'testUbahCoY', 'bbbbbbbb', 'bbbbbbbb', '2016-09-15', 'bbbbbbbbb', '0000-00-00', 'bbbbbbbbbbbbb', 'bbbbbbbbb', '0000-00-00', 'bbbbbbbbbbbb', 'bbbbbbbb', '0000-00-00', 'bbbbbbbbbbbbb', 'bbbbbbbbbbb', 'bbbbbbbbbbbbbbb', 'bbbbbbbbbbbbbbbb', 'bbbbbbbbbbbbbbbb', 'bbbbbbbbbbbbb'),
(12, 0, 'test', 'test', 'test', 'test', '2016-09-30', 'test', '0000-00-00', 'test', 'test', '0000-00-00', 'test', 'test', '0000-00-00', 'test', 'test', 'test', 'test', 'test', 'test'),
(13, 0, 'test', 'test', 'test', 'test', '2016-09-30', 'test', '0000-00-00', 'test', 'test', '0000-00-00', 'test', 'test', '0000-00-00', 'test', 'test', 'test', 'test', 'test', 'test'),
(14, 0, 'test', 'test', 'test', 'test', '2016-09-30', 'test', '0000-00-00', 'test', 'test', '0000-00-00', 'test', 'test', '0000-00-00', 'test', 'test', 'test', 'test', 'test', 'test'),
(15, 0, 'test', 'test', 'test', 'test', '2016-10-25', 'test', '0000-00-00', 'test', 'tset', '0000-00-00', 'test', 'test', '0000-00-00', 'test', 'test', 'test', 'test', 'test', 'test'),
(16, 0, 'test', 'test', 'test', 'test', '2016-10-25', 'test', '0000-00-00', 'test', 'tset', '0000-00-00', 'test', 'test', '0000-00-00', 'qweqwe', 'test', 'test', 'test', 'test', 'test'),
(17, 0, 'test', 'test', 'test', 'test', '2016-09-28', 'test', '2016-09-15', 'test', 'test', '2016-09-10', 'test', 'test', '2016-09-15', 'test', 'test', 'test', 'test', 'test', 'tset'),
(18, 0, 'test', 'a', 'test', 'test', '2016-09-14', 'test', '2016-09-22', 'test', 'test', '2016-09-08', 'test', 'test', '2016-09-01', 'test', 'test', 'test', 'test', 'test', 'test'),
(19, 0, 'test', 'test', 'test', 'test', '2016-09-23', 'test', '2016-09-02', 'test', 'test', '2016-09-20', 'test', 'test', '2016-09-10', 'test', 'test', 'test', 'test', 'tset', 'test'),
(20, 0, 'test', 'test', 'test', 'testUbahCoy', '2016-09-24', 'test', '2016-09-02', 'test', 'test', '2016-09-20', 'test', 'test', '2016-09-20', 'test', 'test', 'test', 'test', 'tset', 'test'),
(21, 0, 'test', 'testUbah', 'test', 'test', '2016-09-23', 'test', '2016-09-02', 'test', 'test', '2016-09-20', 'test', 'test', '2016-09-10', 'test', 'test', 'test', 'test', 'tset', 'test'),
(22, 0, 'test', 'qweqwe', 'test', 'testUbahCoy', '2016-09-23', 'test', '2016-09-02', 'test', 'test', '2016-09-20', 'test', 'test', '2016-09-10', 'test', 'test', 'test', 'test', 'tset', 'test'),
(23, 0, 'test', 'qwe', 'qeeqweqwe', 'test', '2016-09-14', 'test', '2016-09-22', 'test', 'test', '2016-09-08', 'test', 'test', '2016-09-01', 'test', 'test', 'test', 'test', 'test', 'test'),
(24, 0, 'test', 'test', 'test', 'test', '2016-09-30', 'test', '0000-00-00', 'test', 'test', '0000-00-00', 'test', 'test', '0000-00-00', 'test', 'test', 'test', 'test', 'test', 'test'),
(25, 0, 'test', 'test', 'test', 'test', '2016-09-30', 'test', '0000-00-00', 'test', 'test', '0000-00-00', 'test', 'test', '0000-00-00', 'test', 'test', 'qweqwe', 'test', 'test', 'test'),
(26, 0, 'test', 'test', 'test', 'test', '2016-09-30', 'test', '0000-00-00', 'test', 'test', '0000-00-00', 'test', 'test', '0000-00-00', 'test', 'test', 'qweesadd', 'testqweqweqw', 'test', 'test'),
(27, 0, 'test', 'qweqwe', 'test', 'wqewqe', '2016-10-25', 'test', '0000-00-00', 'test', 'tset', '0000-00-00', 'test', 'test', '0000-00-00', 'test', 'test', 'test', 'test', 'test', 'test'),
(28, 1, 'qqqqqqqqqqqqqqq', 'qqqqqqqqqqqqqqq', 'qqqqqqqqqqqqqqq', 'qqqqqqqqqqqqqqq', '2016-10-19', 'qqqqqqqqqqqqqqq', '2016-10-27', 'qqqqqqqqqqqqqqq', 'qqqqqqqqqqqqqqq', '2016-10-07', 'qqqqqqqqqqqqqqq', 'qqqqqqqqqqqqq', '2016-10-22', 'qqqqqqqqqqqqqqq', 'qqqqqqqqqqqqqqq', 'qqqqqqqqqqqqqqq', 'qqqqqqqqqqqqqqq', 'qqqqqqqqqqqqqqq', 'qqqqqqqqqqqqq');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `new_krisma`
--
ALTER TABLE `new_krisma`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `new_krisma`
--
ALTER TABLE `new_krisma`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
