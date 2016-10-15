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
-- Struktur dari tabel `new_kematian`
--

CREATE TABLE IF NOT EXISTS `kematians` (
`id` int(11) NOT NULL,
  `kode_stasi` int(11) NOT NULL,
  `lingkungan` varchar(50) NOT NULL,
  `nama_diri` varchar(50) NOT NULL,
  `nama_baptis` varchar(50) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_meninggal` varchar(50) NOT NULL,
  `tanggal_meninggal` date NOT NULL,
  `tempat_pemakaman` varchar(50) NOT NULL,
  `tanggal_pemakaman` date NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `tempat_baptis` varchar(50) NOT NULL,
  `tanggal_baptis` date NOT NULL,
  `buku_baptis` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `new_kematian`
--

INSERT INTO `new_kematian` (`id`, `kode_stasi`, `lingkungan`, `nama_diri`, `nama_baptis`, `tempat_lahir`, `tanggal_lahir`, `tempat_meninggal`, `tanggal_meninggal`, `tempat_pemakaman`, `tanggal_pemakaman`, `nama_ayah`, `nama_ibu`, `tempat_baptis`, `tanggal_baptis`, `buku_baptis`) VALUES
(1, 0, 'testTambah', 'testEditCoy', 'testTambah', 'testTambah', '0000-00-00', 'testTambah', '2016-09-22', 'testTambah', '2016-09-22', 'testTambah', 'testTambah', 'testTambah', '2016-09-15', 'testTambah'),
(2, 0, '', '', '', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '', '0000-00-00', ''),
(3, 1, 'qweqw', 'hg', 'heg', 'heg', '2016-10-28', 'hg', '2016-10-13', 'geh', '2016-10-14', 'hg', 'hgh', 'gh', '2016-10-20', 'gh'),
(4, 1, 'qweqw', 'hg', 'heg', 'heg', '0000-00-00', 'hg', '0000-00-00', 'geh', '0000-00-00', 'hg', 'hgh', 'gh', '0000-00-00', 'gh'),
(5, 1, 'qweqw', 'hg', 'heg', 'heg', '2016-10-28', 'hg', '2016-10-13', 'geh', '2016-10-14', 'hg', 'hgh', 'gh', '2016-10-20', 'gh'),
(6, 1, 'qwewqewq', 'ewqe', 'wqewq', 'ewqewq', '2016-10-21', 'qwewqe', '2016-10-22', 'qweqwe', '2016-10-08', 'qwewqe', 'qweqwe', 'qweqwe', '2016-10-21', 'qweqweqw'),
(7, 1, 'test', 'test', 'test', 'test', '2016-10-07', 'test', '2016-10-28', 'test', '2016-10-22', 'test', 'test', 'test', '2016-10-13', 'test'),
(8, 1, 'test', 'test', 'test', 'test', '2016-10-19', 'test', '2016-10-05', 'test', '2016-10-25', 'test', 'test', 'test', '2016-10-12', 'test'),
(9, 1, 'test', 'test', 'test', 'test', '2016-10-19', 'test', '2016-10-05', 'test', '2016-10-25', 'test', 'test', 'test', '2016-10-12', 'test'),
(10, 1, 'test', 'test', 'test', 'test', '2016-10-19', 'test', '2016-10-05', 'test', '2016-10-25', 'test', 'test', 'test', '2016-10-12', 'test'),
(11, 1, 'test', 'test', 'test', 'test', '2016-10-19', 'test', '2016-10-05', 'test', '2016-10-25', 'test', 'test', 'test', '2016-10-12', 'test'),
(12, 1, 'test', 'test', 'test', 'test', '2016-10-19', 'test', '2016-10-05', 'test', '2016-10-25', 'test', 'test', 'test', '2016-10-12', 'test'),
(13, 1, 'test', 'test', 'test', 'test', '2016-10-19', 'test', '2016-10-05', 'test', '2016-10-25', 'test', 'test', 'test', '2016-10-12', 'test'),
(14, 1, 'test', 'test', 'test', 'test', '2016-10-19', 'test', '2016-10-05', 'test', '2016-10-25', 'test', 'test', 'test', '2016-10-12', 'test'),
(15, 1, 'testTambah', 'testTambah', 'testTambah', 'testTambah', '2016-10-21', 'testTambah', '2016-10-13', 'testTambah', '2016-10-14', 'testTambah', 'testTambah', 'testTambah', '2016-10-19', 'testTambah'),
(16, 1, 'testTambah', 'testTambah', 'testTambah', 'testTambah', '2016-10-21', 'testTambah', '2016-10-13', 'testTambah', '2016-10-14', 'testTambah', 'testTambah', 'testTambah', '2016-10-19', 'testTambah'),
(17, 0, '', '', '', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '', '0000-00-00', ''),
(18, 0, '', '', '', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '', '0000-00-00', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `new_kematian`
--
ALTER TABLE `new_kematian`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `new_kematian`
--
ALTER TABLE `new_kematian`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
