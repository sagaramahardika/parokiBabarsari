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
-- Struktur dari tabel `kematians`
--

CREATE TABLE IF NOT EXISTS `kematians` (
`id` int(11) NOT NULL,
  `id_umat` int(11) DEFAULT NULL,
  `kode_stasi` int(11) NOT NULL,
  `lingkungan` varchar(50) NOT NULL,
  `nama_diri` varchar(50) DEFAULT NULL,
  `nama_baptis` varchar(50) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `tempat_meninggal` varchar(50) NOT NULL,
  `tanggal_meninggal` date NOT NULL,
  `tempat_pemakaman` varchar(50) NOT NULL,
  `tanggal_pemakaman` date NOT NULL,
  `nama_ayah` varchar(50) DEFAULT NULL,
  `nama_ibu` varchar(50) DEFAULT NULL,
  `tempat_baptis` varchar(50) DEFAULT NULL,
  `tanggal_baptis` date DEFAULT NULL,
  `buku_baptis` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kematians`
--

INSERT INTO `kematians` (`id`, `id_umat`, `kode_stasi`, `lingkungan`, `nama_diri`, `nama_baptis`, `tempat_lahir`, `tanggal_lahir`, `tempat_meninggal`, `tanggal_meninggal`, `tempat_pemakaman`, `tanggal_pemakaman`, `nama_ayah`, `nama_ibu`, `tempat_baptis`, `tanggal_baptis`, `buku_baptis`) VALUES
(1, NULL, 0, 'testTambah', 'testEditCoy', 'testTambah', 'testTambah', '0000-00-00', 'testTambah', '2016-09-22', 'testTambah', '2016-09-22', 'testTambah', 'testTambah', 'testTambah', '2016-09-15', 'testTambah'),
(2, NULL, 0, '', '', '', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '', '0000-00-00', ''),
(3, NULL, 1, 'qweqw', 'hg', 'heg', 'heg', '2016-10-28', 'hg', '2016-10-13', 'geh', '2016-10-14', 'hg', 'hgh', 'gh', '2016-10-20', 'gh'),
(4, NULL, 1, 'qweqw', 'hg', 'heg', 'heg', '0000-00-00', 'hg', '0000-00-00', 'geh', '0000-00-00', 'hg', 'hgh', 'gh', '0000-00-00', 'gh'),
(5, NULL, 1, 'qweqw', 'hg', 'heg', 'heg', '2016-10-28', 'hg', '2016-10-13', 'geh', '2016-10-14', 'hg', 'hgh', 'gh', '2016-10-20', 'gh'),
(6, NULL, 1, 'qwewqewq', 'ewqe', 'wqewq', 'ewqewq', '2016-10-21', 'qwewqe', '2016-10-22', 'qweqwe', '2016-10-08', 'qwewqe', 'qweqwe', 'qweqwe', '2016-10-21', 'qweqweqw'),
(7, NULL, 1, 'test', 'test', 'test', 'test', '2016-10-07', 'test', '2016-10-28', 'test', '2016-10-22', 'test', 'test', 'test', '2016-10-13', 'test'),
(8, NULL, 1, 'test', 'test', 'test', 'test', '2016-10-19', 'test', '2016-10-05', 'test', '2016-10-25', 'test', 'test', 'test', '2016-10-12', 'test'),
(9, NULL, 1, 'test', 'test', 'test', 'test', '2016-10-19', 'test', '2016-10-05', 'test', '2016-10-25', 'test', 'test', 'test', '2016-10-12', 'test'),
(10, NULL, 1, 'test', 'test', 'test', 'test', '2016-10-19', 'test', '2016-10-05', 'test', '2016-10-25', 'test', 'test', 'test', '2016-10-12', 'test'),
(11, NULL, 1, 'test', 'test', 'test', 'test', '2016-10-19', 'test', '2016-10-05', 'test', '2016-10-25', 'test', 'test', 'test', '2016-10-12', 'test'),
(12, NULL, 1, 'test', 'test', 'test', 'test', '2016-10-19', 'test', '2016-10-05', 'test', '2016-10-25', 'test', 'test', 'test', '2016-10-12', 'test'),
(13, NULL, 1, 'test', 'test', 'test', 'test', '2016-10-19', 'test', '2016-10-05', 'test', '2016-10-25', 'test', 'test', 'test', '2016-10-12', 'test'),
(14, NULL, 1, 'test', 'test', 'test', 'test', '2016-10-19', 'test', '2016-10-05', 'test', '2016-10-25', 'test', 'test', 'test', '2016-10-12', 'test'),
(15, NULL, 1, 'testTambah', 'testTambah', 'testTambah', 'testTambah', '2016-10-21', 'testTambah', '2016-10-13', 'testTambah', '2016-10-14', 'testTambah', 'testTambah', 'testTambah', '2016-10-19', 'testTambah'),
(16, NULL, 1, 'testTambah', 'testTambah', 'testTambah', 'testTambah', '2016-10-21', 'testTambah', '2016-10-13', 'testTambah', '2016-10-14', 'testTambah', 'testTambah', 'testTambah', '2016-10-19', 'testTambah'),
(17, NULL, 0, '', '', '', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '', '0000-00-00', ''),
(18, NULL, 0, '', '', '', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '', '0000-00-00', ''),
(19, NULL, 3776, 'test', 'test', 'test', 'test', '2016-10-19', 'test', '2016-10-06', 'test', '2016-10-19', 'test', 'test', 'test', '2016-10-21', 'test'),
(20, NULL, 3776, 'test', 'test', 'test', 'test', '2016-10-19', 'test', '2016-10-06', 'test', '2016-10-19', 'test', 'test', 'test', '2016-10-21', 'test'),
(21, 627, 3776, 'test', NULL, NULL, NULL, NULL, 'test', '2016-10-13', 'test', '2016-10-13', 'SUWARTONO, MAXIMIANUS', 'MURSINI, MONICA', NULL, NULL, NULL),
(22, 35, 3776, 'test', NULL, NULL, NULL, NULL, 'test', '2016-10-28', 'test', '2016-10-28', 'SANTOSO BUDI, JOHANES', 'SUDARSIH, MARIA', NULL, NULL, NULL),
(23, 17, 3776, 'test', NULL, NULL, NULL, NULL, 'test', '2016-10-13', 'test', '2016-10-13', 'SABARNO, YUSTINUS', 'RUSMIATI DWI SIWI, THERESIA', NULL, NULL, NULL),
(24, 46, 3776, 'test', NULL, NULL, NULL, NULL, 'test', '2016-10-14', 'test', '2016-10-15', 'SOEBANDI, JULIUS', '', NULL, NULL, NULL),
(25, 15, 3776, 'test', NULL, NULL, NULL, NULL, 'test', '2016-09-29', 'test', '2016-09-29', 'SABARNO, YUSTINUS', '', NULL, NULL, NULL),
(26, 404, 3776, 'test', NULL, NULL, NULL, NULL, 'test', '2016-10-07', 'test', '2016-10-07', 'INA NURA, DELSIANA', '', NULL, NULL, NULL),
(27, 404, 3776, 'test', NULL, NULL, NULL, NULL, 'test', '2016-10-07', 'test', '2016-10-07', 'INA NURA, DELSIANA', '', NULL, NULL, NULL),
(28, 44, 3776, 'testUbah', NULL, NULL, NULL, NULL, 'test', '2016-10-18', 'test', '2016-10-19', '', '', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kematians`
--
ALTER TABLE `kematians`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kematians`
--
ALTER TABLE `kematians`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
