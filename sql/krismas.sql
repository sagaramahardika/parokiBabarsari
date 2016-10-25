-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 25 Okt 2016 pada 13.53
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
-- Struktur dari tabel `krismas`
--

CREATE TABLE IF NOT EXISTS `krismas` (
`id` int(11) NOT NULL,
  `id_umat` int(11) DEFAULT NULL,
  `kode_stasi` int(11) NOT NULL,
  `lingkungan` varchar(50) NOT NULL,
  `nama_diri` varchar(50) DEFAULT NULL,
  `nama_baptis` varchar(50) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `tempat_baptis` varchar(50) DEFAULT NULL,
  `tanggal_baptis` date DEFAULT NULL,
  `buku_baptis` varchar(50) DEFAULT NULL,
  `tempat_komuni` varchar(50) DEFAULT NULL,
  `tanggal_komuni` date DEFAULT NULL,
  `alamat_diri` varchar(50) DEFAULT NULL,
  `no_hp_diri` varchar(13) DEFAULT NULL,
  `tanggal_krisma` date NOT NULL,
  `nama_pelindung_krisma` varchar(50) NOT NULL,
  `nama_emban_krisma` varchar(50) NOT NULL,
  `nama_ayah` varchar(50) DEFAULT NULL,
  `nama_ibu` varchar(50) DEFAULT NULL,
  `alamat_orangtua` varchar(50) DEFAULT NULL,
  `no_hp_orangtua` varchar(13) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `krismas`
--

INSERT INTO `krismas` (`id`, `id_umat`, `kode_stasi`, `lingkungan`, `nama_diri`, `nama_baptis`, `tempat_lahir`, `tanggal_lahir`, `tempat_baptis`, `tanggal_baptis`, `buku_baptis`, `tempat_komuni`, `tanggal_komuni`, `alamat_diri`, `no_hp_diri`, `tanggal_krisma`, `nama_pelindung_krisma`, `nama_emban_krisma`, `nama_ayah`, `nama_ibu`, `alamat_orangtua`, `no_hp_orangtua`) VALUES
(42, 4, 3776, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 'Antonio', 'Antonio', 'AGUS SETIONO WIBOWO, THEODORUS', 'NUNIK SRI LESTARI, THERESIA', NULL, '1111111111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `krismas`
--
ALTER TABLE `krismas`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `krismas`
--
ALTER TABLE `krismas`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
