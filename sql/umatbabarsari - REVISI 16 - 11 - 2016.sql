-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2016 at 03:49 AM
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
-- Table structure for table `agamas`
--

CREATE TABLE IF NOT EXISTS `agamas` (
`id` int(11) NOT NULL,
  `agama` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agamas`
--

INSERT INTO `agamas` (`id`, `agama`) VALUES
(1, 'Islam'),
(2, 'Kristen'),
(3, 'Katolik'),
(4, 'Hindu'),
(5, 'Budha'),
(6, 'Konghucu'),
(7, 'Lainnya'),
(8, 'Katolik pindah Non K'),
(9, 'Katolik pindah Krist'),
(10, 'Katekumen');

-- --------------------------------------------------------

--
-- Table structure for table `baptises`
--

CREATE TABLE IF NOT EXISTS `baptises` (
`id` int(11) NOT NULL,
  `id_umat` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_stasi` int(10) NOT NULL,
  `liberbap` varchar(150) NOT NULL,
  `sts_baptis` int(11) NOT NULL,
  `tempat` varchar(150) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `nama_baptis` varchar(50) NOT NULL,
  `romo` varchar(100) NOT NULL,
  `wali_baptis` varchar(255) NOT NULL,
  `catatan` varchar(255) DEFAULT NULL,
  `nama_diri` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(2) DEFAULT NULL,
  `ayah` varchar(255) DEFAULT NULL,
  `ibu` varchar(255) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_baptis` enum('ANAK','DEWASA','DARURAT','LAINNYA','DITERIMA') DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=500 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `baptises`
--

INSERT INTO `baptises` (`id`, `id_umat`, `tanggal`, `kode_stasi`, `liberbap`, `sts_baptis`, `tempat`, `kota`, `nama_baptis`, `romo`, `wali_baptis`, `catatan`, `nama_diri`, `jenis_kelamin`, `ayah`, `ibu`, `tempat_lahir`, `tanggal_lahir`, `jenis_baptis`) VALUES
(1, 0, '1980-01-24', 0, 'LB V / NO 3479', 1, 'SOMOHITAN', 'whwhwh', 'sehseh', 'whe4whwh', 'sehseh', '', 'Steven Spielberg', 'L', 'A', 'B', 'agaga', '2016-11-08', 'ANAK'),
(2, 0, '1989-03-20', 0, 'VII / 132 / 526', 1, 'BACIRO', '', '', '', '', '', 'Jarwina', 'P', 'C', 'D', NULL, '2016-11-01', 'ANAK'),
(3, 0, '2001-03-29', 0, 'BUKU: XXVI / NO: 39 / 2001', 1, 'KOTABARU', '', '', '', '', '', 'Ervan', 'L', 'E', 'F', 'G', '2016-11-01', 'ANAK'),
(4, 4, '0000-00-00', 0, '-', 1, 'BLM', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(5, 5, '0000-00-00', 0, '-', 1, 'BLM', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(6, 6, '2005-03-20', 0, 'BUKU: XIX / NO: 2138', 1, 'KUMETIRAN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(7, 7, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(8, 8, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(9, 9, '1985-01-13', 0, 'BUKU: VI / HAL: -  / NO: 381', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(10, 10, '0000-00-00', 0, 'BLM', 1, 'BLM', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(11, 11, '1977-09-10', 0, 'BUKU: II / NO: 1634', 1, 'JETIS', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(12, 12, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(13, 13, '1956-05-20', 0, 'NO: VII / 810', 1, 'MADIUN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(14, 14, '0000-00-00', 0, '', 1, 'TDK', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(15, 15, '0000-00-00', 0, '-', 1, 'BLM', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(16, 16, '1970-12-22', 0, 'II / 128 / 507', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(17, 17, '1970-12-22', 0, 'II / 128 / 508', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(18, 18, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(19, 19, '1946-08-04', 0, 'SDH', 1, 'MERAUKE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(20, 20, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(21, 21, '1948-07-03', 0, 'SDH', 1, 'TARAKAN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(22, 22, '1974-09-07', 0, 'BUKU III, NO 2199', 1, 'TARAKAN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(23, 23, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(24, 24, '0000-00-00', 0, '', 1, 'TDK', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(25, 25, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(26, 26, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(27, 27, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(28, 28, '1970-07-15', 0, 'XXI / 193 / 250', 1, 'ST YUSUF, SEMARANG', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(29, 29, '1995-04-15', 0, 'II / 308 / 84', 1, 'ST AGUSTINUS, TANGGE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(30, 30, '1996-04-21', 0, 'SDH', 1, 'ST YUSUF, AMBARAWA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(31, 31, '1950-10-16', 0, 'NO : 60', 1, 'CIREBON', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(32, 32, '0000-00-00', 0, '', 1, 'GRJ-KRISTEN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(33, 33, '1980-07-04', 0, 'BUKU : XII, NO ; 10731', 1, 'PUGERAN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(34, 34, '1992-08-09', 0, 'BUKU: VIII, HAL: 96, NO: 287', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(35, 35, '1977-12-18', 0, 'HAL: 73, NO: 290', 1, 'CILILITAN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(36, 36, '1977-04-02', 0, 'II / 94 / 374', 1, 'JAKARTA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(37, 37, '1972-03-05', 0, 'I / 131 / 907', 1, 'JAKARTA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(38, 38, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(39, 39, '2005-12-18', 0, 'LIB I, FOL -, NO 133', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(40, 40, '0000-00-00', 0, 'SDH', 1, 'YOGYAKARTA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(41, 41, '1972-12-22', 0, 'XVI / 71 / 141885', 1, 'ST ANTONIUS, SOLO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(42, 42, '1951-06-10', 0, 'IV / 164 / 3792', 1, 'ST ANTONIUS, SOLO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(43, 43, '1985-01-13', 0, 'BUKU III, HAL -, NO 383', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(44, 44, '0000-00-00', 0, '-', 1, 'BLM', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(45, 45, '0000-00-00', 0, 'BLM', 0, 'BLM', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(46, 46, '1979-10-23', 0, 'BUKU VI, HAL -, NO 54', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(47, 47, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(48, 48, '2005-09-02', 0, 'BUKU XXVII, NO 571, TAHUN 2005', 1, 'KOTABARU', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(49, 49, '1980-12-22', 0, 'BUKU X, HAL -, NO 9246', 1, 'KALASAN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(50, 50, '0000-00-00', 0, '', 1, 'TDK', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(51, 51, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(52, 52, '2000-08-15', 0, 'BUKU I, HAL -, NO 156', 1, 'BABARSARI', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(53, 53, '1979-09-07', 0, 'LB X, NO 06220', 1, 'KEBAYORAN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(54, 54, '1976-11-05', 0, 'IV / 36 / 141', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(55, 55, '2009-03-14', 0, 'SDH', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(56, 56, '1952-12-25', 0, 'SDH', 1, 'BINTARAN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(57, 57, '1942-07-18', 0, 'SDH', 1, 'GANJURAN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(58, 58, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(59, 59, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(60, 60, '1987-10-04', 0, 'VII / 13 / 49', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(61, 61, '1993-09-19', 0, 'VIII / 177 / 531', 1, 'MRICAN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(62, 62, '1951-12-23', 0, 'NO 4688 / LIB / V / PAG 138', 1, 'AMBARAWA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(63, 63, '1988-12-21', 0, 'XVIII / 100 / 12382', 1, 'BINTARAN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(64, 64, '2005-12-05', 0, 'XXI / 27 / 679', 1, 'BINTARAN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(65, 65, '0000-00-00', 0, 'BLM', 0, 'BLM', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(66, 66, '1983-01-08', 0, 'LB I, NO 76', 1, 'MANOKWARI', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(67, 67, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(68, 68, '1987-12-18', 0, 'VII / 29 / 114', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(69, 69, '0000-00-00', 0, 'SDH', 1, 'SDH-KATO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(70, 70, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(71, 71, '0000-00-00', 0, 'XIX / 36 / 13133', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(72, 72, '1987-12-16', 0, 'BUKU XXIII, NO 268', 1, 'MUNTILAN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(73, 73, '0000-00-00', 0, 'BLM', 0, 'BLM', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(74, 74, '0000-00-00', 0, 'BLM', 0, 'BLM', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(75, 75, '0000-00-00', 0, 'VIII / 157 / 8227', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(76, 76, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(77, 77, '1998-05-08', 0, 'LB XV, NO 196', 1, 'GANJURAN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(78, 78, '0000-00-00', 0, 'BLM', 0, 'BLM', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(79, 79, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(80, 80, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(81, 81, '2001-10-05', 0, 'XXVI / 148 / 2001', 1, 'KOTABARU', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(82, 82, '2006-02-03', 0, 'XXVIII / 92 / 2006', 1, 'KOTABARU', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(83, 83, '2010-01-08', 0, 'SDH', 1, 'KOTABARU', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(84, 84, '1989-03-20', 0, 'SDH', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(85, 85, '0000-00-00', 0, 'BLM', 1, 'BLM', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(86, 86, '2008-12-12', 0, 'BUKU I, NO 205', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(87, 87, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(88, 88, '1981-09-09', 0, 'BUKU IV, NO 794', 1, 'ST MIKAEL, GOMBONG', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(89, 89, '1955-10-04', 0, 'NO 5303, LIB ST ANT VII / Y', 1, 'KOTABARU', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(90, 90, '1977-12-17', 0, 'LIB VI, NO 307', 1, 'ST MIKAEL, GOMBONG', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(91, 91, '1984-02-12', 0, 'LIB V, NO 1227', 1, 'ST MIKAEL, GOMBONG', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(92, 92, '1987-12-18', 0, 'VII / 29 / 113', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(93, 93, '1987-12-18', 0, 'VII / 30 / 117', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(94, 94, '1972-03-12', 0, 'BUKU XXII, FOL 225, NO 899', 1, 'JAKARTA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(95, 95, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(96, 96, '2002-11-04', 0, 'X / 25 / 100', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(97, 97, '2011-05-13', 0, 'BUKU I, NO 279', 1, 'BABARSARI', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(98, 98, '1975-01-03', 0, 'SDH', 1, 'KLEPU', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(99, 99, '1985-09-08', 0, 'BUKU XV, HAL -, NO 13800', 1, 'KLEPU', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(100, 100, '2010-06-11', 0, 'BUKU XXII, NO 19796', 1, 'KLEPU', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(101, 101, '1979-07-27', 0, 'X / 520', 1, 'KUMETIRAN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(102, 102, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(103, 103, '2010-12-25', 0, 'SDH', 1, 'BABARSARI', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(104, 104, '1995-04-15', 0, 'BUKU VIII, NO 977', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(105, 105, '0000-00-00', 0, 'BLM', 0, 'BLM', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(106, 106, '0000-00-00', 0, 'BLM', 0, 'BLM', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(107, 107, '1987-04-13', 0, 'VI / 277 / 1107', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(108, 108, '1979-10-26', 0, 'BUKU V, NO 145', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(109, 109, '2000-06-15', 0, 'BUKU IX, NO 819A', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(110, 110, '2004-12-24', 0, 'BUKU I, NO 110', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(111, 111, '2004-12-24', 0, 'BUKU I, NO 114', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(112, 112, '1969-01-02', 0, 'SDH', 1, 'KOTABARU', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(113, 113, '1993-10-14', 0, 'VIII / 181 / 543', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(114, 114, '2000-06-15', 0, 'BUKU IX. NO.821', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(115, 115, '1974-04-11', 0, 'SDH', 1, 'SURABAYA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(116, 116, '1978-03-25', 0, 'SDH', 1, 'SURABAYA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(117, 117, '1990-10-06', 0, 'NO 5817', 1, 'SURABAYA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(118, 118, '1993-03-24', 0, 'NO 6241', 1, 'SURABAYA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(119, 119, '1996-02-24', 0, 'NO 7031', 1, 'SURABAYA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(120, 120, '1997-07-12', 0, 'NO 7831', 1, 'SURABAYA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(121, 121, '1956-12-02', 0, 'II / 91 / 382', 1, 'ST PETRUS, PURWOSARI', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(122, 122, '1958-09-25', 0, 'NO 4309, LIB XIV', 1, 'MUNTILAN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(123, 123, '1990-02-25', 0, 'V / 20 / 6090157', 1, 'JAKARTA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(124, 124, '1991-09-22', 0, 'VI / 312 / 7158 / 474', 1, 'JAKARTA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(125, 125, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(126, 126, '0000-00-00', 0, '', 1, 'TDK', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(127, 127, '2001-12-21', 0, 'BUKU I, NO 176', 1, 'KLEPU', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(128, 128, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(129, 129, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(130, 130, '1985-03-03', 0, 'XIV / 1611', 1, 'SURABAYA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(131, 131, '1989-08-12', 0, 'V / 126 / 1002', 1, 'ST YOSEPH, PALEMBANG', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(132, 132, '1991-12-11', 0, 'BUKU 13, NO 928', 1, 'ST MARIA TB, PALEMBA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(133, 133, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(134, 134, '0000-00-00', 0, 'SDH', 1, 'SDH-KATO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(135, 135, '1992-12-30', 0, 'XXII / 240 / 968', 1, 'MUNTILAN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(136, 136, '2002-02-24', 0, 'XXV / 26 / 103', 1, 'MUNTILAN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(137, 137, '1993-12-21', 0, 'VIII / 203 / 606', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(138, 138, '0000-00-00', 0, '', 1, 'TDK', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(139, 139, '1993-12-21', 0, 'VIII / 203 / 607', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(140, 140, '1989-03-20', 0, 'VII / 136 / 542', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(141, 141, '1972-03-28', 0, 'IV / 104 / 352', 1, 'PURBOWARDOYAN, SOLO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(142, 142, '1985-01-13', 0, 'VI / - / 382', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(143, 143, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(144, 144, '0000-00-00', 0, 'VII / 211 / 6407', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(145, 145, '1959-01-04', 0, 'IIOIB / XI', 1, 'KOTABARU', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(146, 146, '1968-12-11', 0, 'I / 243 / 971', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(147, 147, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(148, 148, '0000-00-00', 0, 'VIII. - . 972', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(149, 149, '1959-07-01', 0, 'III / 3256', 1, 'KEDIRI', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(150, 150, '1958-11-15', 0, '71 / 1958', 1, 'JEMBER', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(151, 151, '1984-03-12', 0, 'XX / 831', 1, 'KOTABARU', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(152, 152, '1987-03-08', 0, 'X / III / 302', 1, 'KUMETIRAN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(153, 153, '1976-06-28', 0, 'VIII / 597', 1, 'MARIA TAK BERCELA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(154, 154, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(155, 155, '2004-04-04', 0, 'XIX / 1868', 1, 'KUMETIRAN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(156, 156, '2003-04-13', 0, '-', 1, 'KUMETIRAN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(157, 157, '0000-00-00', 0, '-', 1, 'GRJ-KRISTEN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(158, 158, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(159, 159, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(160, 160, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(161, 161, '1989-03-25', 0, 'SDH', 1, 'WAIKABUBAK', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(162, 162, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(163, 163, '1992-08-16', 0, 'SDH', 1, 'WAIKABUBAK', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(164, 164, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(165, 165, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(166, 166, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(167, 167, '1992-10-11', 0, '10 / 712', 1, 'POGO BINA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(168, 168, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(169, 169, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(170, 170, '1989-12-17', 0, 'II / 52 / 210', 1, 'FRANSISKUS DARI SALE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(171, 171, '1991-08-07', 0, 'SDH', 1, 'MANGULEWA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(172, 172, '1985-12-10', 0, 'SDH', 1, 'ST YOHANES, KUPANG', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(173, 173, '1991-12-04', 0, 'SDH', 1, 'SUAI', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(174, 174, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(175, 175, '1992-12-06', 0, 'SDH', 1, 'ASSUMPTA, KUPANG', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(176, 176, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(177, 177, '1990-05-10', 0, 'SDH', 1, 'MOTAEL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(178, 178, '1993-07-26', 0, 'SDH', 1, 'SEON', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(179, 179, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(180, 180, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(181, 181, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(182, 182, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(183, 183, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(184, 184, '1998-06-18', 0, 'SDH', 1, 'TIMOR LESTE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(185, 185, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(186, 186, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(187, 187, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(188, 188, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(189, 189, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(190, 190, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(191, 191, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(192, 192, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(193, 193, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(194, 194, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(195, 195, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(196, 196, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(197, 197, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(198, 198, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(199, 199, '1989-03-25', 0, 'SDH', 1, 'WAIKABUBAK', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(200, 200, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(201, 201, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(202, 202, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(203, 203, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(204, 204, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(205, 205, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(206, 206, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(207, 207, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(208, 208, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(209, 209, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(210, 210, '1999-03-27', 0, 'P.I HAL. 12 NO.B/PLPN/23', 1, 'TEMANGGUNG', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(211, 211, '1976-12-15', 0, 'BUKU KE: XXII NO. 788', 1, 'KLATEN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(212, 212, '2004-01-09', 0, '-', 1, 'YOGYAKARTA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(213, 213, '2006-06-17', 0, '-', 1, 'YOGYAKARTA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(214, 214, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(215, 215, '2009-12-22', 0, 'BUKU II. HAL. 135/ NO. 534', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(216, 216, '0000-00-00', 0, '-', 1, 'BLM', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(217, 217, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(218, 218, '2009-12-11', 0, 'SDH', 1, 'BABARSARI', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(219, 219, '1967-12-21', 0, 'D/ 019', 1, 'BOROBUDUR', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(220, 220, '1982-04-10', 0, 'I/ 113/ 446 B', 1, 'BOROBUDUR', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(221, 221, '1982-04-10', 0, 'I/ 114/ 448', 1, 'BOROBUDUR', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(222, 222, '1995-11-12', 0, 'IX/ 16/ 46', 1, 'BABARSARI', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(223, 223, '1967-04-02', 0, 'VIII/ 212/ 5707', 1, 'KLATEN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(224, 224, '1987-05-04', 0, 'II/ 181/ 724', 1, 'KLATEN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(225, 225, '1988-06-26', 0, 'I/ 98/ 391', 1, 'CONDONGCATUR', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(226, 226, '1992-11-01', 0, 'I/ 175/ 697', 1, 'CONDONGCATUR', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(227, 227, '1978-12-15', 0, 'BUKU VIII/ HAL. 99/ NO. 792', 1, 'PALEMBANG', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(228, 228, '0000-00-00', 0, '', 1, 'TDK', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(229, 229, '0000-00-00', 0, '', 0, 'BLM', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(230, 230, '0000-00-00', 0, 'BLM', 0, 'BLM', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(231, 231, '2007-04-07', 0, 'BUKU I/ HAL. - / NO. 159', 1, 'BABARSARI', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(232, 232, '2007-04-07', 0, 'BUKU I/ HAL.- / NO.161', 1, 'BABARSARI', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(233, 233, '1959-05-27', 0, 'BUKU IV / NO. 2860', 1, 'KALASAN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(234, 234, '1940-11-02', 0, 'BUKU I/ NO. 611', 1, 'PUGERAN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(235, 235, '2009-07-13', 0, 'BUKU II/ NO. 923', 1, 'PRINGWULUNG', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(236, 236, '1961-01-17', 0, 'NO. 1395/ LIB. XVIII/ PAG. 224', 1, 'SEMARANG', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(237, 237, '1981-06-01', 0, 'BUKU V/ HAL.- / NO.688', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(238, 238, '1976-02-05', 0, 'BUKU III/ HAL. 226/ NO. 902', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(239, 239, '1986-03-26', 0, 'BUKU VI/ HAL.213/ NO. 852', 1, 'BABARSARI', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(240, 240, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(241, 241, '1948-07-11', 0, '-', 1, 'KALASAN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(242, 242, '1980-04-05', 0, 'NO. 1060/ HAL. 219/ VII', 1, 'JAKARTA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(243, 243, '1980-04-05', 0, 'NO. 1065/ HAL. 219/VII', 1, 'SDH-KATO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(244, 244, '1980-12-12', 0, 'NO. 123/31/VIII', 1, 'JAKARTA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(245, 245, '1995-07-09', 0, 'BUKU. IX/ HAL.03/ NO.2', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(246, 246, '1985-12-18', 0, 'BUKU VI/ NO.778/ HAL. 194', 1, 'BABARSARI', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(247, 247, '1985-12-18', 0, 'BUKU VI/ NO. 777/ HAL.-', 1, 'BABARSARI', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(248, 248, '1985-12-18', 0, 'BUKU VI/ NO.778/ HAL.-', 1, 'BABARSARI', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(249, 249, '1971-01-05', 0, 'IX/ 454', 1, 'GUMAWANG', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(250, 250, '1993-12-21', 0, 'VIII/612', 1, 'YOGYAKARTA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(251, 251, '2004-12-19', 0, 'I/ 105', 1, 'YOGYAKARTA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(252, 252, '2008-04-11', 0, 'SDH', 1, 'YOGYAKARTA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(253, 253, '1992-10-26', 0, 'BUKU III/HAL.-/NO.859', 1, 'BANGUNSARI', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(254, 254, '1959-03-20', 0, 'BUKU III/ HAL.45/ NO. 181', 1, 'SOLO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(255, 255, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(256, 256, '1967-03-26', 0, '-', 1, 'MAGELANG', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(257, 257, '1966-11-06', 0, '-', 1, 'MAGELANG', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(258, 258, '2010-12-23', 0, 'NO. 267/ BUKU I', 1, 'BABARSARI', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(259, 259, '1976-04-30', 0, 'NO. 790/ BUKU I', 1, 'BATURETNO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(260, 260, '2008-04-11', 0, 'SDH', 1, 'BABARSARI', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(261, 261, '0000-00-00', 0, 'SDH', 0, 'BLM', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(262, 262, '1975-05-31', 0, 'HAL. III/ 2718', 1, 'KUPANG', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(263, 263, '1982-04-10', 0, 'BUKU I BB/ HAL.113/ NO. 447', 1, 'BOROBUDUR', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(264, 264, '2008-09-12', 0, 'SDH', 1, 'SLEMAN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(265, 265, '0000-00-00', 0, '-', 1, 'BLM', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(266, 266, '1975-12-13', 0, '-', 1, 'PURWOKERTO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(267, 267, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(268, 268, '1984-12-31', 0, 'BUKU I/ HAL. 45/ NO. 177', 1, 'BANTENG', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(269, 269, '1965-12-31', 0, 'BUKU I/ HAL. 40/ NO. 160', 1, 'PUGERAN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(270, 270, '1986-12-31', 0, 'BUKU I/ HAL.41/ NO.182', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(271, 271, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(272, 272, '2003-04-10', 0, 'IV/ 240/ 960', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(273, 273, '2003-06-15', 0, 'SDH', 1, 'CILEUNGSI', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(274, 274, '1992-12-14', 0, '-', 1, 'ST. TIMOTIUS', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(275, 275, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(276, 276, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(277, 277, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(278, 278, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(279, 279, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(280, 280, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(281, 281, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(282, 282, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(283, 283, '1994-08-12', 0, '-', 1, 'KEFAMENANU', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(284, 284, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(285, 285, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(286, 286, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(287, 287, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(288, 288, '0000-00-00', 0, 'BUKU II/ NO. 1667', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(289, 289, '1987-07-12', 0, '-', 1, 'LEMBATA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(290, 290, '1989-02-05', 0, 'BUKU.- / HAL.-/ NO.681', 1, 'JAYAPURA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(291, 291, '1989-04-23', 0, 'BUKU.-/ HAL. 181/ NO. 554', 1, 'ADAUT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(292, 292, '1991-12-29', 0, 'BUKU.-/ HAL.- / NO. 3279', 1, 'JAYAPURA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(293, 293, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(294, 294, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(295, 295, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(296, 296, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(297, 297, '1985-09-16', 0, 'BUKU.-/ HAL.-/ NO.11.108', 1, 'TANATORAJA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(298, 298, '1993-11-14', 0, 'BUKU.-/ HAL.-/ NO. 236', 1, 'MANOKWARI', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(299, 299, '2004-11-21', 0, 'BUKU.-/ HA.-/ N0. 7118', 1, 'ABEPURA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(300, 300, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(301, 301, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(302, 302, '1993-05-16', 0, 'BUKU III/ HAL.95/ NO. 760', 1, 'MEDAN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(303, 303, '1993-06-05', 0, 'BUKU III/ HAL.95/ NO. 761', 1, 'MEDAN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(304, 304, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(305, 305, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(306, 306, '1993-10-28', 0, 'TBI/ NO. 1296', 1, 'TANAH BELANG', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(307, 307, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(308, 308, '1988-04-07', 0, 'HAL. 73/ NO.88', 1, 'MALIANA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(309, 309, '1987-02-23', 0, 'HAL. 72/ NO. 87', 1, 'BOBONARO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(310, 310, '1994-04-24', 0, '-', 1, 'SEKADAU', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(311, 311, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(312, 312, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(313, 313, '1993-12-31', 0, '-', 1, 'PEKALONGAN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(314, 314, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(315, 315, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(316, 316, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(317, 317, '1991-12-19', 0, '-', 1, 'WESUASA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(318, 318, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(319, 319, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(320, 320, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(321, 321, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(322, 322, '1989-08-13', 0, '-', 1, 'ATAMBUA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(323, 323, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(324, 324, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(325, 325, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(326, 326, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(327, 327, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(328, 328, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(329, 329, '1993-02-21', 0, '-', 1, 'LIKKU', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(330, 330, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(331, 331, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(332, 332, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(333, 333, '1993-01-28', 0, '-', 1, 'BATAM', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(334, 334, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(335, 335, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(336, 336, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(337, 337, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(338, 338, '1990-07-15', 0, '-', 1, 'PADANG', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(339, 339, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(340, 340, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(341, 341, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(342, 342, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(343, 343, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(344, 344, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(345, 345, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(346, 346, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(347, 347, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(348, 348, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(349, 349, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(350, 350, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(351, 351, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(352, 352, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(353, 353, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(354, 354, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(355, 355, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(356, 356, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(357, 357, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(358, 358, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(359, 359, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(360, 360, '1988-04-15', 0, '-', 1, 'BEIKALA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(361, 361, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(362, 362, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(363, 363, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(364, 364, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(365, 365, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(366, 366, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(367, 367, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(368, 368, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(369, 369, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(370, 370, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(371, 371, '1991-12-24', 0, '-', 1, 'ENDE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(372, 372, '1990-01-20', 0, '-', 1, 'SUMBA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(373, 373, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(374, 374, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(375, 375, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(376, 376, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(377, 377, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(378, 378, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(379, 379, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(380, 380, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(381, 381, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(382, 382, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(383, 383, '1968-05-15', 0, '-', 1, 'PALASARI', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(384, 384, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(385, 385, '1976-06-20', 0, '-', 1, 'PALASARI', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(386, 386, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(387, 387, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(388, 388, '1987-05-27', 0, '-', 1, 'NUALAIN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(389, 389, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(390, 390, '1994-05-14', 0, '-', 1, 'BESIKAMA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(391, 391, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(392, 392, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(393, 393, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(394, 394, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(395, 395, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(396, 396, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(397, 397, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(398, 398, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(399, 399, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(400, 400, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(401, 401, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(402, 402, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(403, 403, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(404, 404, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(405, 405, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(406, 406, '1986-10-27', 0, 'HAL 73/ NO.06', 1, 'MACADIGUE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(407, 407, '1991-03-19', 0, '-', 1, 'MAUBESI', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(408, 408, '1991-10-24', 0, '-', 1, 'KLETEK', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(409, 409, '1992-12-06', 0, '-', 1, 'WAIKABUBAK', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(410, 410, '1988-11-16', 0, '-', 1, 'WAIKABUBAK', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(411, 411, '1989-02-26', 0, 'BUKU IV/ NO.10110', 1, 'PUSU', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(412, 412, '1990-07-13', 0, '-', 1, 'ENDE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(413, 413, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(414, 414, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(415, 415, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(416, 416, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(417, 417, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(418, 418, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(419, 419, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(420, 420, '1993-01-31', 0, '-', 1, 'ENDE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(421, 421, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(422, 422, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(423, 423, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(424, 424, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(425, 425, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(426, 426, '1986-10-27', 0, '-', 1, 'MACADIGUE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(427, 427, '1989-11-14', 0, '-', 1, 'ATAMBUA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(428, 428, '2005-12-23', 0, '-', 1, 'DENPASAR', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(429, 429, '1990-12-31', 0, '-', 1, 'PURWOKERTO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(430, 430, '1989-12-31', 0, '-', 1, 'PURWOKERTO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(431, 431, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(432, 432, '1990-12-31', 0, '-', 1, 'MANGGARAI', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(433, 433, '1991-03-04', 0, '-', 1, 'RAJA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(434, 434, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(435, 435, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(436, 436, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK');
INSERT INTO `baptises` (`id`, `id_umat`, `tanggal`, `kode_stasi`, `liberbap`, `sts_baptis`, `tempat`, `kota`, `nama_baptis`, `romo`, `wali_baptis`, `catatan`, `nama_diri`, `jenis_kelamin`, `ayah`, `ibu`, `tempat_lahir`, `tanggal_lahir`, `jenis_baptis`) VALUES
(437, 437, '1991-09-28', 0, '-', 1, 'BAJAWA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(438, 438, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(439, 439, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(440, 440, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(441, 441, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(442, 442, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(443, 443, '1991-09-17', 0, 'BUKU.-/FOL.-/NO.247', 1, 'TIMOR LESTE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(444, 444, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(445, 445, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(446, 446, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(447, 447, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(448, 448, '2001-09-10', 0, 'BUKU/ FOL.-/ NO.27.898', 1, 'SEON', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(449, 449, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(450, 450, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(451, 451, '1981-11-08', 0, '-', 1, 'FAK-FAK', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(452, 452, '1992-02-01', 0, '-', 1, 'TIMOR LESTE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(453, 453, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(454, 454, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(455, 455, '1980-07-18', 0, '-', 1, 'PALEMBANG', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(456, 456, '1986-10-20', 0, '-', 1, 'EGEBUTU', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(457, 457, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(458, 458, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(459, 459, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(460, 460, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(461, 461, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(462, 462, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(463, 463, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(464, 464, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(465, 465, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(466, 466, '1994-08-12', 0, '-', 1, 'KEFAMENANU', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(467, 467, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(468, 468, '1992-12-31', 0, '-', 1, 'LAMPUNG', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(469, 469, '1991-09-30', 0, '-', 1, 'PONTIANAK', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(470, 470, '2002-12-22', 0, '-', 1, 'PONTIANAK', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(471, 471, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(472, 472, '1984-12-14', 0, 'BUKU IV/ HAL.65/ NO.5028', 1, 'PAKEM', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(473, 473, '0000-00-00', 0, '', 1, 'TDK', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(474, 474, '2007-12-13', 0, 'SDH', 1, 'BABARSARI', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(475, 475, '2009-06-12', 0, 'SDH', 1, 'BABARSARI', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(476, 476, '1975-12-23', 0, 'BUKU III/ HAL 238/ NO. 949', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(477, 477, '1970-12-22', 0, 'BUKU II/ HAL.134/ NO.530', 1, 'BACIRO', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(478, 478, '1969-07-29', 0, '-', 1, 'MADIUN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(479, 479, '1975-02-26', 0, 'BUKU IV/ NO. 734', 1, 'PEKALONGAN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(480, 480, '2007-04-07', 0, 'BUKU XII/ NO.3501', 1, 'PEKALONGAN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(481, 481, '2008-03-22', 0, 'BUKU XII/ NO.3647', 1, 'PEKALONGAN', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(482, 482, '1973-05-27', 0, 'BUKU XIV/ HAL. 28/ NO. 109', 1, 'SEMARANG', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(483, 483, '1975-01-26', 0, 'BUKU I/ NO.707', 1, 'MAGELANG', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(484, 484, '2001-08-18', 0, 'SDH', 1, 'MAGELANG', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(485, 485, '2008-04-11', 0, 'SDH', 1, 'BABARSARI', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(486, 486, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(487, 487, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(488, 488, '2004-12-19', 0, 'BUKU I/ HAL.-/ NO.107', 1, 'BABARSARI', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(489, 489, '2005-11-11', 0, 'BUKU I/ HAL.-/ NO. 128', 1, 'BABARSARI', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(490, 490, '1986-07-07', 0, 'BUKU XXI/NO.886', 1, 'KOTABARU', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(491, 491, '1969-03-06', 0, 'BUKU XIV/NO. 266', 1, 'KOTABARU', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(492, 492, '1988-03-04', 0, 'BUKU XXII/ NO.329', 1, 'KOTABARU', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(493, 493, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(494, 494, '1998-08-07', 0, 'BUKU XXV/NO. 1123 THN 1998', 1, 'KOTABARU', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(495, 495, '0000-00-00', 0, 'BLM', 0, 'BLM', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(496, 496, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(497, 497, '2001-07-01', 0, 'BUKU IV / 4023', 1, 'KEDIRI', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(498, 498, '2002-12-09', 0, '', 1, 'BABARSARI', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK'),
(499, 499, '2009-07-03', 0, '', 1, 'KEDIRI', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'ANAK');

-- --------------------------------------------------------

--
-- Table structure for table `baptises_anak`
--

CREATE TABLE IF NOT EXISTS `baptises_anak` (
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

-- --------------------------------------------------------

--
-- Table structure for table `baptises_darurat`
--

CREATE TABLE IF NOT EXISTS `baptises_darurat` (
`id` int(11) NOT NULL,
  `id_baptis` int(11) NOT NULL,
  `status_perkawinan` enum('SUDAH','BELUM') NOT NULL,
  `nama_pasangan` varchar(255) DEFAULT NULL,
  `tempat_perkawinan` varchar(255) NOT NULL,
  `tanggal_perkawinan` varchar(255) NOT NULL,
  `ketua_lingkungan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `baptises_dewasa`
--

CREATE TABLE IF NOT EXISTS `baptises_dewasa` (
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

-- --------------------------------------------------------

--
-- Table structure for table `bidangstudis`
--

CREATE TABLE IF NOT EXISTS `bidangstudis` (
`id` int(11) NOT NULL,
  `bidangstudi` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bidangstudis`
--

INSERT INTO `bidangstudis` (`id`, `bidangstudi`) VALUES
(0, ''),
(1, 'Administrasi'),
(2, 'Agribisnis/Perikanan'),
(3, 'Akuntansi'),
(4, 'Akupuntur'),
(5, 'Analis Kesehatan'),
(6, 'Analis Lingkungan'),
(7, 'Antropologi/Sejarah'),
(8, 'Arsitektur'),
(9, 'Asuransi'),
(10, 'Bimbingan Konseling'),
(11, 'Biologi'),
(12, 'Desain'),
(13, 'Ekonomi'),
(14, 'Farmasi'),
(15, 'Film, Televisi, Radio'),
(16, 'Filsafat/Agama/Teologi'),
(17, 'Fisika'),
(18, 'Fisioterapi'),
(19, 'Fotografi/Grafika/Seni'),
(20, 'Geografi/Geofisika/Geolog'),
(21, 'Gizi'),
(22, 'Hubungan International'),
(23, 'Hukum'),
(24, 'Humaniora'),
(25, 'Jurnalistik'),
(26, 'Kajian Kepolisian'),
(27, 'Kajian Ketahanan/Tentara'),
(28, 'Kajian Budaya/Wanita'),
(29, 'Kearsipan'),
(30, 'Kebidanan'),
(31, 'Kedokteran Gigi'),
(32, 'Kedokteran Spesialis'),
(33, 'Kedokteran Umum'),
(34, 'Keperawatan/Kesehatan'),
(35, 'Keuangan dan Perbankan'),
(36, 'Kimia'),
(37, 'Komputer'),
(38, 'Kriminologi'),
(39, 'Manajemen'),
(40, 'Matematika'),
(41, 'Pekerja Sosial'),
(42, 'Pemandu Wisata'),
(43, 'Penata Tari'),
(44, 'Pendidikan'),
(45, 'Pendidikan Dasar'),
(46, 'Pendidikan Fisik'),
(47, 'Pendidikan Guru SD'),
(48, 'Pendidikan Luar Biasa'),
(49, 'Pendidikan Luar Sekolah'),
(50, 'Perencanaan Wilayah dan K'),
(51, 'Perhotelan/Pariwisata'),
(52, 'Pertambangan/Gas/Minyak'),
(53, 'Perpajakan'),
(54, 'Perpustakaan'),
(55, 'Pertanian/Perkebunan'),
(56, 'Politik/Pemerintahan'),
(57, 'Psikologi'),
(58, 'Sosiologi'),
(59, 'Statistik'),
(60, 'Teknik'),
(61, 'Teknik Kimia'),
(62, 'Lingkungan/Kehutanan/Kelautan'),
(63, 'Teknik Sipil'),
(64, 'Ternak/Kedokteran Hewan'),
(65, 'Transportasi/Pelayaran/Penerbangan'),
(66, '-'),
(67, 'Sastra/Bahasa'),
(68, 'Ketrampilan Kain/Keramik/Kayu/Boga'),
(69, 'Pertanahan'),
(70, 'Sekretaris'),
(71, 'Komunikasi'),
(99, '-');

-- --------------------------------------------------------

--
-- Table structure for table `hubkks`
--

CREATE TABLE IF NOT EXISTS `hubkks` (
`id` int(11) NOT NULL,
  `hubkk` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hubkks`
--

INSERT INTO `hubkks` (`id`, `hubkk`) VALUES
(0, '-'),
(1, 'Kepala Rumah Tangga'),
(2, 'Pasangan'),
(3, 'Anak'),
(4, 'Kakak-Adik'),
(5, 'Anak Adopsi/Anak Tiri'),
(6, 'Cucu'),
(7, 'Orang Tua/Mertua (single)'),
(8, 'Famili lain'),
(9, 'Pembantu/Sopir/Tukang Kebun'),
(10, 'Lain-lain');

-- --------------------------------------------------------

--
-- Table structure for table `keaktifan`
--

CREATE TABLE IF NOT EXISTS `keaktifan` (
`id` int(11) NOT NULL,
  `id_umat` int(11) NOT NULL,
  `id_pengurus` int(11) NOT NULL,
  `awal` date NOT NULL,
  `akhir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `keaktifangerejas`
--

CREATE TABLE IF NOT EXISTS `keaktifangerejas` (
`id` int(11) NOT NULL,
  `keaktifan` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keaktifangerejas`
--

INSERT INTO `keaktifangerejas` (`id`, `keaktifan`) VALUES
(0, '-'),
(1, 'Misa di Gereja stp, aktif di lingk'),
(2, 'Misa di Gereja stp, aktif di paroki lain'),
(3, 'Misa di Gereja stp, tidak aktif di lingk'),
(4, 'Misa dan aktif di Gereja/paroki lain'),
(5, 'Ms di luar Gereja stp, aktif di ling/prk'),
(6, 'Kadang2 Misa/Ekaristi'),
(7, 'Tidak aktif');

-- --------------------------------------------------------

--
-- Table structure for table `keaktifanparokis`
--

CREATE TABLE IF NOT EXISTS `keaktifanparokis` (
`id` int(11) NOT NULL,
  `keaktifan` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keaktifanparokis`
--

INSERT INTO `keaktifanparokis` (`id`, `keaktifan`) VALUES
(0, '-'),
(1, 'Anggota Dewan Paroki'),
(2, 'Pengurus Tim Kerja'),
(3, 'Pengurus lingkungan'),
(4, 'Pengurus Kel Kategorial'),
(5, 'Pengurus Ormas Katolik'),
(6, 'Warga umat biasa');

-- --------------------------------------------------------

--
-- Table structure for table `kematians`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kematian_sakramen`
--

CREATE TABLE IF NOT EXISTS `kematian_sakramen` (
`id` int(11) NOT NULL,
  `id_kematian` int(11) NOT NULL,
  `nama_sakramen` varchar(50) NOT NULL,
  `pelayan_sakramen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ketualingkungans`
--

CREATE TABLE IF NOT EXISTS `ketualingkungans` (
`id` int(11) NOT NULL,
  `umat_id` int(11) NOT NULL,
  `lingkungan_id` int(11) NOT NULL,
  `dari` date NOT NULL,
  `sampai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `keuskupanagungs`
--

CREATE TABLE IF NOT EXISTS `keuskupanagungs` (
`id` int(11) NOT NULL,
  `nama_keuskupan` varchar(200) NOT NULL,
  `code_keuskupan` int(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keuskupanagungs`
--

INSERT INTO `keuskupanagungs` (`id`, `nama_keuskupan`, `code_keuskupan`) VALUES
(1, 'Keuskupan Agung Semarang', 30);

-- --------------------------------------------------------

--
-- Table structure for table `kks`
--

CREATE TABLE IF NOT EXISTS `kks` (
`id` int(11) NOT NULL,
  `code_kk` varchar(255) NOT NULL,
  `lingkungan_id` int(11) NOT NULL,
  `nama_kk` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=509 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kks`
--

INSERT INTO `kks` (`id`, `code_kk`, `lingkungan_id`, `nama_kk`) VALUES
(1, '30073001008001', 8, 'AGUS SETIONO WIBOWO, THEODORUS'),
(2, '30073001008002', 8, 'NUGROHO SETYO DWI JOKO, THOMAS'),
(3, '30073001008003', 8, 'SUGIASTONO AGUS, HILARIUS'),
(4, '30073001008004', 8, 'SABARNO, YUSTINUS'),
(5, '30073001008005', 8, 'BUDIMAN HENDRA, HENRICUS'),
(6, '30073001008006', 8, 'ROSANTI IRA, REGINA'),
(7, '30073001008007', 8, 'MARTASUTAMA SULANTA, ROBERTUS'),
(8, '30073001008008', 8, 'SUDADIYOTO, PAULUS'),
(9, '30073001008009', 8, 'WAGIMAN, ANDREAS'),
(10, '30073001008010', 8, 'SANTOSO BUDI, JOHANES'),
(11, '30073001008011', 8, 'UTOMO PRASETYO NOVATUS, RAIMONDUS'),
(12, '30073001008012', 8, 'SUJARWO, PAULUS'),
(13, '30073001008013', 8, 'ERNESTINE, MARGARETHA'),
(14, '30073001008014', 8, 'SOEBANDI, JULIUS'),
(15, '30073001008015', 8, 'SARIDIN, ANTONIUS'),
(16, '30073001008016', 8, 'SUWITO HARJO SUMADI, STEPHANUS'),
(17, '30073001008017', 8, 'SEDA BALA, ALEXANDER'),
(18, '30073001008018', 8, 'KUSMIARTI SRI'),
(19, '30073001008019', 8, 'PRIYONO SUGENG GONZAGA AL, STEPHANUS'),
(20, '30073001008020', 8, 'SARBINI, THOMAS'),
(21, '30073001008021', 8, 'SUMIJATUN CERTRUDES, MARIA'),
(22, '30073001008022', 8, 'EDUARD SAUD'),
(23, '30073001008023', 8, 'FATIMA SERLI KLAU'),
(24, '30073001008024', 8, 'FASAK P, MAGDALENA'),
(25, '30073001008025', 8, 'SERALURIN C, YOHANES'),
(26, '30073001008026', 8, 'PAULUS P. TITIRLOLOBY'),
(27, '30073001008027', 8, 'ANGGIKA PETRINA, FLORENTINA'),
(28, '30073001008028', 8, 'ANGELIS DEIFLORA'),
(29, '30073001008029', 8, 'USI CHANDRA PIRES ELVIRA'),
(30, '30073001008030', 8, 'BERE, PRIMUS'),
(31, '30073001008031', 8, 'VIFILIA KOLO, ELFIRA'),
(32, '30073001008032', 8, 'ASTERIA JAYANTI, FRANSISKA'),
(33, '30073001008033', 8, 'RESTY SRI RAHAYU, MARGARETA'),
(34, '30073001008034', 8, 'SUSANTO RENSA'),
(35, '30073001008035', 8, 'TOLOK NAPA, YOHANES'),
(36, '30073001008036', 8, 'MAING SABU SOPIA'),
(37, '30073001008037', 8, 'MAGNO D.K TIMOTEO'),
(38, '30073001008038', 8, 'RETU DIS MAGNO, IGNASIO'),
(39, '30073001008039', 8, 'SATO GANO, KRSTOFORUS'),
(40, '30073001008040', 8, 'BERE F. WELA A. NOSTRA'),
(41, '30073001008041', 8, 'KETUT TRISNOYANTO, F. XAVERIUS'),
(42, '30073001008042', 8, 'MANGGA, STEPHANUS'),
(43, '30073001008043', 8, 'NANA R. M, DESIDARIUS'),
(44, '30073001008044', 8, 'PINHERO ARUIJO JULITO'),
(45, '30073001008045', 8, 'PURWANTO, MOSES'),
(46, '30073001008046', 8, 'PASCOOV, CORRELA'),
(47, '30073001008047', 8, 'DANGGA, PAULINA'),
(48, '30073001008048', 8, 'PIRES COSTA DA, IDALINA'),
(49, '30073001008049', 8, 'ONA GHENA TOBIAS SUN'),
(50, '30073001004001', 4, 'KUSWORO'),
(51, '30073001004002', 4, 'KASIDO, ATANASIUS'),
(52, '30073001004003', 4, 'BAMBANG SETIYO, PAULUS'),
(53, '30073001004004', 4, 'SETO BAKTI KASTOYO, HERIBERTUS'),
(54, '30073001004005', 4, 'BAKIR SUKRISNO ATMOJO, ANTONIUS'),
(55, '30073001004006', 4, 'MAU, ARNOLDUS'),
(56, '30073001004007', 4, 'SUMARYANINGSIH, ROSALIA'),
(57, '30073001004008', 4, 'SM. NASTUTI, MARIA MARGARETHA'),
(58, '30073001004009', 4, 'SUPARNO, IGNATIUS'),
(59, '30073001004010', 4, 'KUATINEM MULYO PAWIRO, CHRISTINA'),
(60, '30073001004011', 4, 'LAMIYO, CAROLUS'),
(61, '30073001004012', 4, 'SUMIYATI, ANASTASIA'),
(62, '30073001004013', 4, 'GAMBIRO, PIUS'),
(63, '30073001004014', 4, 'YC. SOERANTO BHRE'),
(64, '30073001004015', 4, 'SUKO WIDIYANTO, VICTOR'),
(65, '30073001004016', 4, 'B. SURYANI'),
(66, '30073001004017', 4, 'OME, FRANSISKUS XAVERIUS'),
(67, '30073001004018', 4, 'Y. ARI HERMAWAN'),
(68, '30073001004019', 4, 'BAMIJO PRIYOUTOMO, IGNATIUS'),
(69, '30073001004020', 4, 'ARINTO KUSNAN, YULIUS'),
(70, '30073001004021', 4, 'SUPRIYANTO, VINCENTIUS'),
(71, '30073001004022', 4, 'A. SUTRISNO'),
(72, '30073001004023', 4, 'HARUM SURYADI, IGNATIUS'),
(73, '30073001004024', 4, 'SUHARTO, EMMANUEL'),
(74, '30073001004025', 4, 'BUARI, JOHANES'),
(75, '30073001004026', 4, 'TITENI HANDAYANI, ROSALIA'),
(76, '30073001004027', 4, 'SUTARYA, STANISLAUS'),
(77, '30073001004028', 4, 'TUKIJAH SALIMAN, MARIA'),
(78, '30073001004029', 4, 'SUSILO R, MARKUS'),
(79, '30073001004030', 4, 'SUJAK KARDANI, FRANSISKUS XAVERIUS'),
(80, '30073001004031', 4, 'SOEJASMINAH, FLORENTINA'),
(81, '30073001004032', 4, 'CAHYANTO ADI, OCTAVIANUS'),
(82, '30073001004033', 4, 'YOHANA ASIH SUDARSIH, FRANSISCA'),
(83, '30073001004034', 4, 'R.M.B DJANGANG, MARIA IMAKULATA'),
(84, '30073001004035', 4, 'BOUK, MELANIA'),
(85, '30073001004036', 4, 'GEROLIVHA RENNY MULE'),
(86, '30073001004037', 4, 'BAREK OLA, MARIA GORETI'),
(87, '30073001004038', 4, 'MARLINA NALUN, MARIA'),
(88, '30073001004039', 4, 'HENY TAKELEB, MARIA'),
(89, '30073001004040', 4, 'INA NURA, DELSIANA'),
(90, '30073001004041', 4, 'VILIGIENI LANDIS, MARIA'),
(91, '30073001004042', 4, 'MANGHAT, HUMBERTO'),
(92, '30073001004043', 4, 'DA CONCEICAO, ANTONIO'),
(93, '30073001004044', 4, 'FERDINANDO GUDIPUNG, EMANUEL'),
(94, '30073001004045', 4, 'DA SILVA, KAROLUS'),
(95, '30073001004046', 4, 'WINNY LAUREN, EMILIA'),
(96, '30073001004047', 4, 'ADI SAPUTRA, YOHANES'),
(97, '30073001004048', 4, 'N. OLE, YOSAFAT NOBERTUS'),
(98, '30073001004049', 4, 'OKTAFIANY PRATIWI, MARIA'),
(99, '30073001004050', 4, 'YUKSTUS DEMON MAKING, GERMANU'),
(100, '30073001004051', 4, 'ALEXANDER KEFI, STEVEN'),
(101, '30073001008050', 8, 'SULASTRI, NATALIA'),
(102, '30073001008051', 8, 'RAGIL PERMANA, BARNABAS'),
(103, '30073001004052', 4, 'APALABI P. P, MARIA'),
(104, '30073001004053', 4, 'PRATIWI, PRACILIA'),
(105, '30073001002002', 2, 'ERROL NGANTUNG, ANDREAS'),
(106, '30073001002003', 2, 'RACHMAT BUDIHARJO, STEFANUS'),
(107, '30073001002004', 2, 'DARPITO AGUS TURDIANTO, YOHANES'),
(108, '30073001002005', 2, 'SIHTONO, PAULUS'),
(109, '30073001002006', 2, 'SRI SUBEKTI, ANASTASIA'),
(110, '30073001002007', 2, 'HERU SUBANDRIYO, ROBERTUS'),
(111, '30073001002001', 2, 'BUDI NURWATI, ROSALIA'),
(112, '30073001002008', 2, 'DAPI SUPRIATNA, BENEDICTUS'),
(113, '30073001002009', 2, 'NURANA KUSUMADEWI, MARGARITA'),
(114, '30073001002010', 2, 'AGUS KAHARDI, AGUSTINUS'),
(115, '30073001002011', 2, 'HANINDYO HERU PRAYITNO, IGNASIUS'),
(116, '30073001002012', 2, 'DWITANA, HERIBERTUS'),
(117, '30073001002013', 2, 'BAMBANG DJAKA PITANA, PAULUS'),
(118, '30073001002014', 2, 'MELANIA MALI, ANDRIANI'),
(119, '30073001002015', 2, 'POERWOKO, FLORENTINUS'),
(120, '30073001002016', 2, 'MULYONO HADI SUDIBYO, AGUSTINUS'),
(121, '30073001002017', 2, 'IPUK WIDYASTUTI, THERESIA'),
(122, '30073001002018', 2, 'AGUS PUTRANTO, IGNATIUS'),
(123, '30073001002019', 2, 'KUSNIDAH, MARIA'),
(124, '30073001002020', 2, 'ISTUTONO, BONAVENTURA'),
(125, '30073001002021', 2, 'SUHARDI, FRANSISKUS XAVERIUS'),
(126, '30073001002022', 2, 'BAMBANG P YUWONO, STEFANUS'),
(127, '30073001002023', 2, 'SUHARTONO, FRANCISCUS XAVERIUS'),
(128, '30073001002024', 2, 'DJATI PRAMANA, JUSTINIANUS'),
(129, '30073001002025', 2, 'HERI SETYA WIBOWO, ANTONIUS'),
(130, '30073001002026', 2, 'DERPOYUWONO, LEONARDUS'),
(131, '30073001002027', 2, 'PRANE BUDI RAHARDJO, MARKUS'),
(132, '30073001002028', 2, 'SUWARTINAH, FRANSISKA'),
(133, '30073001002029', 2, 'SAGIMAN, MARTINUS'),
(134, '30073001002030', 2, 'RAHARJO PRIYOSEMBODO, W YOSEPH'),
(135, '30073001002031', 2, 'TOTO W SURYANINGTYAS, CHRISTPHORUS'),
(136, '30073001002032', 2, 'SOEDARMAN, STEFANUS'),
(137, '30073001002033', 2, 'KADARWATI, SCHOLASTIKA'),
(138, '30073001002034', 2, 'ASHAR ANDRIANTO, FRANSISKUS XAVERIUS'),
(139, '30073001002035', 2, 'SURYANI PUDYASTUTI, ANGELAMERICI'),
(140, '30073001002036', 2, 'ARISTONO, YUSTINUS'),
(141, '30073001002037', 2, 'TRISANTO ROESLAN, TIBURTIUS'),
(142, '30073001002038', 2, 'SUWARTONO, MAXIMIANUS'),
(143, '30073001002039', 2, 'AGUNG BUDI PRATIYANTI, MARKUS'),
(144, '30073001002040', 2, 'BAMBANG SULISTYONO, ROBERTUS'),
(145, '30073001002041', 2, 'BRURI SETIA BIMA, YOHANES'),
(146, '30073001002042', 2, 'SUNARTO, BARTOLOMEUS'),
(147, '30073001002043', 2, 'BAMBANG MURSUPRIYANTO, ALBERTUS'),
(148, '30073001002044', 2, 'BAYU CAHYAWAN, VINCENTIUS'),
(149, '30073001002045', 2, 'IDA ROSARI, ELISABETH'),
(150, '30073001002046', 2, 'ISJUMANTO BANGUN WARDOYO, ANTONIUS'),
(151, '30073001002047', 2, 'HINDAYATI, THERESIA'),
(152, '30073001002048', 2, 'SETYANTO, JANUARIUS'),
(153, '30073001002049', 2, 'RYAN CAHYADI, DIONISIUS'),
(154, '30073001002050', 2, 'DWI TETUKO NURINGTYAS, PETRUS'),
(155, '30073001002051', 2, 'KUSUMASARI ASTUTI, KATARINA'),
(156, '30073001002052', 2, 'RUDY PRASETYO, YOHANES PEMBAPTIS'),
(157, '30073001002053', 2, 'RINA HAYUNING, SILVIA'),
(158, '30073001002054', 2, 'PADAKA, FERDINANDUS'),
(159, '30073001002055', 2, 'MARIA NATALIA, MELVIATY'),
(160, '30073001002056', 2, 'NASTITI LARASATI, SERAFINA'),
(161, '30073001005001', 5, 'SARIJA, ANDRIANUS'),
(162, '30073001005002', 5, 'CHRISTNE KURNIA S, FRANSISCA CABRINI'),
(163, '30073001005003', 5, 'HENDARNO HENDARMIN, ANTONIUS'),
(164, '30073001005004', 5, 'DWI DESSY KRISTANTI, CHRISTINA'),
(165, '30073001005005', 5, 'MARWOTO HADIDRAYITNO, JUVENTIUS'),
(166, '30073001005006', 5, 'SUDARTI, VERONICA'),
(167, '30073001005007', 5, 'ISKAR KWINTARTO, FIDELIS'),
(168, '30073001005008', 5, 'MUDJIONO, PAULUS'),
(169, '30073001005009', 5, 'AROLA, MARTHEN'),
(170, '30073001005010', 5, 'IGNATIUS SUYANTO, ALBERTUS'),
(171, '30073001005011', 5, 'INDARYANI, CHRISTINA'),
(172, '30073001005012', 5, 'ANJAR PURNOMO, FRANSISKUS'),
(173, '30073001005013', 5, 'SUMARINI, ODILIA'),
(174, '30073001005014', 5, 'TRI MURDIATI, AGNES'),
(175, '30073001005015', 5, 'AGUNG SETIYAWAN, ANTHUSA'),
(176, '30073001005016', 5, 'SLAMET WIDODO, PETRUS'),
(177, '30073001005017', 5, 'INDRA RIYADI, YOHANES EVALBERTUS'),
(178, '30073001005018', 5, 'BAMBANG HARYANTO, CHRISTOPHORUS'),
(179, '30073001005019', 5, 'MULYATINAH, FRANSISCA RUMANA'),
(180, '30073001005020', 5, 'HIMAWAN WARDHANA, BERNARDUS'),
(181, '30073001005021', 5, 'MARSUDI, MATHEUS'),
(182, '30073001005022', 5, 'SUPARMANTO, YOHANES'),
(183, '30073001005023', 5, 'ASLAMAH, FLORENTINA'),
(184, '30073001005024', 5, 'JIMMY SUJANTO, FRANSISKUS XAVERIUS'),
(185, '30073001005025', 5, 'BANDIYAH, BENEDICTA'),
(186, '30073001005026', 5, 'HERMAWAN SIGIT WIBOWO, CYRILLUS'),
(187, '30073001005027', 5, 'EKO PRANATA, ALEXANDER'),
(188, '30073001005028', 5, 'SIGIT SANTOSA WIBAWA, VROTASIUS'),
(189, '30073001005029', 5, 'LILIK H SUWASONO, CIEMET HOFBANIR'),
(190, '30073001005030', 5, 'ARIS DWI HARDIYANTO, ANDREAS'),
(191, '30073001005031', 5, 'VEMBRIAWAN ANANTON, BERNADUS'),
(192, '30073001005032', 5, 'SUBAGYO, STEPHANUS'),
(193, '30073001005033', 5, 'DARYONO ASTRO, FRANSISKUS XAVERIUS'),
(194, '30073001005034', 5, 'AIRLANGGA BAJUADI, ALOYSIUS'),
(195, '30073001005035', 5, 'JATMIKO, MAKARUS'),
(196, '30073001005036', 5, 'WAHYUNI, BERNADETHA'),
(197, '30073001005037', 5, 'AAN BUDIMAN, DAMIAN'),
(198, '30073001005038', 5, 'SUNGKONO, STEPHANUS'),
(199, '30073001005039', 5, 'LISTIANI, THEOVILA'),
(200, '30073001005040', 5, 'DJONIE, ALEXANDER'),
(201, '30073001005041', 5, 'ABIMANYU UNANTO DWI, IGNASIUS'),
(202, '30073001005042', 5, 'AMBARWATI, ANASTASIA'),
(203, '30073001005043', 5, 'IMAM EFENDI, MAXIMUS'),
(204, '30073001005044', 5, 'TICTIN SETYORINI, BERNADETTA'),
(205, '30073001005045', 5, 'AMINAH, THERESIA'),
(206, '30073001005046', 5, 'JOYO SUHARTOYO, TIMOTIUS'),
(207, '30073001005047', 5, 'SUWARTINI NOTODIHARJO, MARIA ANNA'),
(208, '30073001005048', 5, 'TRISNAJATI GUNARSO, ALBERTUS'),
(209, '30073001005049', 5, 'SUPRI HATIN, ELISABHET'),
(210, '30073001005050', 5, 'POEGUH SOEDSITO, BENEDICTUS'),
(211, '30073001005051', 5, 'SIANA SETIAWATY, MARIA FLORENTINA'),
(212, '30073001005052', 5, 'GALIH AMAS PUTRANTO, IGNATIUS'),
(213, '30073001005053', 5, 'IRMA GONSA, MARIA'),
(214, '30073001005054', 5, 'VINSENSIUS BOLU, YOSEP'),
(215, '30073001005055', 5, 'MARIO F L JAWA, FRANSISCUC XAVERIUS'),
(216, '30073001005056', 5, 'BILI YULIANUS, FRANSISKUS'),
(217, '30073001005057', 5, 'EMA WALENG, FRANSISKA'),
(218, '30073001005058', 5, 'SIMAMORA M, YOHANES ALEX PILIPUS'),
(219, '30073001005059', 5, 'MEO NAE, KONSTANTINA'),
(220, '30073001005060', 5, 'JUNG NAITA SUN, IGNATIA'),
(221, '30073001005061', 5, 'HARIANTO, HERKULANOUS'),
(222, '30073001005062', 5, 'HARIS EDELIRUDIS, NATALIA'),
(223, '30073001005063', 5, 'MARIA DENSIANA PALI, KRISTINA'),
(224, '30073001005064', 5, 'LOUK NYONGKIBERTUS, FREDERIK'),
(225, '30073001005065', 5, 'RENNO DJABUMIR'),
(226, '30073001005066', 5, 'YASINTA DHUGE, MARIA'),
(227, '30073001005067', 5, 'EKAPUTRA KOAN KOTELUY, CORNELIUS'),
(228, '30073001005068', 5, 'YULIANA B MAKING, MARIA'),
(229, '30073001005069', 5, 'KOANJANAN, DIANA'),
(230, '30073001005070', 5, 'EDWARD JACKSON, FRANSISKUS'),
(231, '30073001005071', 5, 'P R REBELOSOARES, SILVINO'),
(232, '30073001005072', 5, 'KARUNIA ILYA, LEONARDA'),
(233, '30073001005073', 5, 'DELFINA MARIA, SILVA'),
(234, '30073001006001', 6, 'AGUS SUGIHARTO, PAULUS'),
(235, '30073001006002', 6, 'ARDHITA RIHADINIE, FRANSISCA'),
(236, '30073001006003', 6, 'MAHOLETY, MARILE'),
(237, '30073001006004', 6, 'MURYANTO, YOHANES'),
(238, '30073001006005', 6, 'ABDULLAH CHAIDIR, MATEUS'),
(239, '30073001006006', 6, 'HARDO KRISTANTO, VERERIUS'),
(240, '30073001006007', 6, 'WINDARSONO NUGROHO, ALEXIUS'),
(241, '30073001006008', 6, 'SRI WIYATI, THERESIA'),
(242, '30073001006009', 6, 'SUWANDI, IGNATIUS'),
(243, '30073001006010', 6, 'DANANG SUBUR KUNCORO, JOSEPH'),
(244, '30073001006011', 6, 'SUBARDI, STEFANUS'),
(245, '30073001006012', 6, 'DODY FERY ATMOKO, BERNADUS'),
(246, '30073001006013', 6, 'SUTARDI, GREGORIUS'),
(247, '30073001006014', 6, 'HARJENAL, FLORENTINUS'),
(248, '30073001006015', 6, 'DALIYEM J., MARIA MARGARETHA'),
(249, '30073001006016', 6, 'CHARLES PRIMACAHYA, CAROLUS BOROMEUS'),
(250, '30073001006017', 6, 'SOEKAMTO TANAUWIBOWO, THEODORUS'),
(251, '30073001006018', 6, 'MARYONO, ENGELBERTUS'),
(252, '30073001006019', 6, 'CHANDRA MAY DAVID TURNP, PAULUS'),
(253, '30073001006020', 6, 'ESTI PERTINA BIBLANA'),
(254, '30073001006021', 6, 'TUTIK KUSTINAH'),
(255, '30073001006022', 6, 'HARYO HABIRONO, EUSTASIUS'),
(256, '30073001006023', 6, 'TUMI, THOMAS'),
(257, '30073001006024', 6, 'SUPARNO, STEFANUS'),
(258, '30073001006025', 6, 'BAYU NUGROHO, YOHANES BABTISTA'),
(259, '30073001006026', 6, 'FRANK W. DEMEY, FRANSISCUS WILHELMUS'),
(260, '30073001006027', 6, 'WIDARYANTO, CYPRIANUS'),
(261, '30073001006028', 6, 'MENI ESTUARI, VERONICA'),
(262, '30073001006029', 6, 'ISTANTORO, KRISTIANUS'),
(263, '30073001006030', 6, 'B. A. SUTRISNO, FRANSISKUS XAVERIUS'),
(264, '30073001006031', 6, 'SULARSO, ROBERTUS'),
(265, '30073001006032', 6, 'KASDI, YOHANES'),
(266, '30073001006033', 6, 'SUGENG PRAWATA, AGUSTINUS'),
(267, '30073001006034', 6, 'OTOK TRI KUNCORO, YOHANES'),
(268, '30073001006035', 6, 'SOEWARNI, ANNA'),
(269, '30073001006036', 6, 'PURWOTO, LUKAS'),
(270, '30073001006037', 6, 'HERLAMBANG WIDJAJANTO, IGNATIUS'),
(271, '30073001006038', 6, 'EDI SULISTYO, HERIBERTUS'),
(272, '30073001006039', 6, 'OEY SWIE BING BINTORO, STEFANUS'),
(273, '30073001006040', 6, 'KLAU, MARIA MAGDALENA'),
(274, '30073001006041', 6, 'SUTRIANA P., EDELTRUDIS'),
(275, '30073001006042', 6, 'INO MUTI, IRENIUS'),
(276, '30073001006043', 6, 'FAHIK, ROBERTUS'),
(277, '30073001006044', 6, 'BITIN, RUI FERNANDO'),
(278, '30073001006045', 6, 'YAMIAR AFRIENDARI, IGNATIUS'),
(279, '30073001006046', 6, 'KUSUMA WARDANI, LENNY'),
(280, '30073001006047', 6, 'AGUSTINA, MARIA'),
(281, '30073001007003', 7, 'YOHANES BOSKO PEHAN KELLEN, MIKHAEL'),
(282, '30073001007004', 7, 'DINA SITA IRAWATI IRAWATI, AGUSTINA'),
(283, '30073001007005', 7, 'BAMBANG SURIPNO, FRANSISKUS XAVERIUS'),
(284, '30073001007006', 7, 'SOETRISNO, BENEDICTUS'),
(285, '30073001007007', 7, 'RATNAWATI E. AGUSTIRINE, FRANSISCA'),
(286, '30073001007008', 7, 'BUDIYONO, FERDINANDUS'),
(287, '30073001007009', 7, 'EDDY APRIJANTO KEVIN, NATANAEL'),
(288, '30073001007010', 7, 'TUAHMAN PURBA, FRANSISKUS'),
(289, '30073001007011', 7, 'SRI INDARTI, KATHARINA'),
(290, '30073001007001', 7, 'WIDYATMOKO SANTOSO, IGNATIUS'),
(291, '30073001007002', 7, 'KURNIAWAN PRIYOSAMBODO, JOSEP'),
(292, '30073001007012', 7, 'BAMBANG SUWARNIA, ROBERTUS'),
(293, '30073001007013', 7, 'SUMIYATI, YOHANA'),
(294, '30073001007014', 7, 'DANANG KUSUMA ATI, ANDREAS'),
(295, '30073001007015', 7, 'SUMANTO, VENANTIUS'),
(296, '30073001007016', 7, 'LIEM KIOK HWA, AGNES'),
(297, '30073001007017', 7, 'PAMBOEDI, CONSTANTIUS'),
(298, '30073001007018', 7, 'SUKADI HADIPRAYETNO HERDIAN, YOSEPH'),
(299, '30073001007019', 7, 'ZENNY KAMIYANTO, FRANSISKUS XAVERIUS'),
(300, '30073001007020', 7, 'SUKANDAR, YOHANES'),
(301, '30073001007021', 7, 'SUDARSONO, STEFANUS'),
(302, '30073001007022', 7, 'WEM TURUT, WILHELMUS'),
(303, '30073001007023', 7, 'JUNAEDI'),
(304, '30073001007024', 7, 'DANY ADITYAWIRAWAN, GREGORIUS'),
(305, '30073001007025', 7, 'YOAN AGUSTA, LEONORA'),
(306, '30073001007026', 7, 'SUBANG HAYONG, VICTOR'),
(307, '30073001007027', 7, 'LULUK, FITALIS'),
(308, '30073001007028', 7, 'JOJOR RISWANA MANURUNG, ELISABET'),
(309, '30073001007029', 7, 'KRISWANTA, GREGORIUS'),
(310, '30073001007030', 7, 'SONI PANDU WICAKSONO, ROBERTUS'),
(311, '30073001007031', 7, 'JEGAUT FERDI, VINCENTIUS'),
(312, '30073001007032', 7, 'AGUS HENDARTO, STEFANUS'),
(313, '30073001007033', 7, 'DIAN ANGGRIANI SUHARTO, CAECILIA'),
(314, '30073001007034', 7, 'TUNGGUL HENDRARTO, WILLYBRORDUS'),
(315, '30073001007035', 7, 'ISMONO, VALENTINUS'),
(316, '30073001007036', 7, 'AGUS PRAYUDI, MAXIMIANUS'),
(317, '30073001007037', 7, 'ARIS SUNANTYO, TARSISIUS'),
(318, '30073001007038', 7, 'BUDI PURWANTO, YOSAPHAT'),
(319, '30073001007039', 7, 'AGUNG WIDAGDO, FRANSISKUS XAVERIUS'),
(320, '30073001007040', 7, 'EDUWARD MARIO ADE PRANATA, YEREMIAS'),
(321, '30073001007041', 7, 'SENO PRASUDIONO, ANDREAS'),
(322, '30073001007042', 7, 'SUKEMI, SYLVINUS'),
(323, '30073001007043', 7, 'SUGIARTO HIDAYAT, IGNATIUS'),
(324, '30073001007044', 7, 'KUN SUPRIYANTA, FRANSISKUS XAVERIUS'),
(325, '30073001007045', 7, 'GINANDJAR, CASSANDRA'),
(326, '30073001007046', 7, 'L. P. ISHAK OCTAVIANUS'),
(327, '30073001007047', 7, 'PEDRO, HENDRIKUS'),
(328, '30073001007048', 7, 'F. BOTHA, GAUDENSIUS'),
(329, '30073001001003', 1, 'SUNANTO WIDODO IGNATIUS'),
(330, '30073001001004', 1, 'HERRY BERNARDUS'),
(331, '30073001001005', 1, 'RANDIM N. RANSISCUS CARACIOLO'),
(332, '30073001001006', 1, 'WISNU SATRIA PAMUNGKAS AGUSTINUS'),
(333, '30073001001007', 1, 'BUDIADI EVARISTU'),
(334, '30073001001008', 1, 'SUJATNO HARTOSAKSONO YOHANES'),
(335, '30073001001009', 1, 'PURWASTYA P. A. LUKISTYAWAN F.X.'),
(336, '30073001001010', 1, 'BAMBANG SUMANTO BERNADINUS'),
(337, '30073001001011', 1, 'SUWARSONO FRANSISCUS ASISI'),
(338, '30073001001012', 1, 'WAGIMIN ANTONO AMATREDJO ANTONIUS'),
(339, '30073001001013', 1, 'RUGIYATI ANASTASIA'),
(340, '30073001001014', 1, 'HERMIYATI SUTRISNO ROBERTHA'),
(341, '30073001001015', 1, 'ANDY PERMANA PUTRA ANDREAS'),
(342, '30073001001001', 1, 'BUDI KUNCORO, DAMIANUS'),
(343, '30073001001002', 1, 'THERESIA M. K. P., DHOMINIKA'),
(344, '30073001001016', 1, 'TRI HARTINI, MARGARETHA'),
(345, '30073001001017', 1, 'ANTONIUS LADJADJAWA, LAURENSIUS'),
(346, '30073001001018', 1, 'EDDY SUMADI, YOHANES'),
(347, '30073001001019', 1, 'AFFANDY, IGNATIUS'),
(348, '30073001001020', 1, 'SRI SOELANTARI, THERESIA'),
(349, '30073001001023', 1, 'WIBOWO, ANTONIUS'),
(350, '30073001001024', 1, 'NOVI KURNIATI, YUSTINA'),
(351, '30073001001025', 1, 'ENDANG SULISTYANINGSIH, FIRMINA'),
(352, '30073001001026', 1, 'ANDHI KUSUMA INDRA, HERYBERTUS'),
(353, '30073001001027', 1, 'SUSWANDARI ANNA, MARIA'),
(354, '30073001001028', 1, 'GATOT SETYOHADI, ANTONIUS'),
(355, '30073001001029', 1, 'FERRY, FRANSISKUS'),
(356, '30073001001030', 1, 'SRINAYANTO, AMBROSIUS'),
(357, '30073001001031', 1, 'CHANDRAWATI, AGATHA'),
(358, '30073001001032', 1, 'SELU, FRANSISKUS XAFERIUS'),
(359, '30073001001033', 1, 'JOSE PINTO FILIPE JUVENCIO'),
(360, '30073001001034', 1, 'KANA HARIAWATI'),
(361, '30073001001035', 1, 'JHON PAREIRA, MARTINS'),
(362, '30073001001036', 1, 'GUILHERME DE CASTRO, GOEVANIA'),
(363, '30073001001037', 1, 'IOLANDA ALVES'),
(364, '30073001001038', 1, 'LOPES FABIOLA'),
(365, '30073001001039', 1, 'YOLINDA MAHULETE'),
(366, '30073001001040', 1, 'JANUARIO D. S. D. JESUS'),
(367, '30073001001041', 1, 'PAREIRA BELO GREGORIO'),
(368, '30073001001042', 1, 'VARELA NIHA, HERMINIA'),
(369, '30073001001043', 1, 'TANI, AGUSTINUS'),
(370, '30073001001044', 1, 'DOS SANTOS ROZIANA'),
(371, '30073001001045', 1, 'VANIA CELESTINA'),
(372, '30073001001046', 1, 'ARISTA NARA, KRISNA'),
(373, '30073001001047', 1, 'BENI, BENEDICTUS'),
(374, '30073001001048', 1, 'BARITA TAMPUBOLON YOANDRIATUR'),
(375, '30073001001049', 1, 'VALERIANUS ANISETUS, FRANSISCO'),
(376, '30073001001050', 1, 'JULIO SILVA FREITAS, NORBERTINO'),
(377, '30073001001051', 1, 'PITO NAING, PETRUS'),
(378, '30073001001052', 1, 'NIDIO M. SANTOS DA CUNHA'),
(379, '30073001001053', 1, 'MAYASARI, AGATHA'),
(380, '30073001001054', 1, 'JUVITA HORACIO'),
(381, '30073001001055', 1, 'YASINTA, KRISTI'),
(382, '30073001001056', 1, 'DE ARAUJO XIMENES, ADRIANO'),
(383, '30073001001057', 1, 'SAPARINI HASTUTI, LUSIA'),
(384, '30073001001058', 1, 'BARROS, FERDIANO'),
(385, '30073001001059', 1, 'YOSMIN, VINSENSIUS'),
(386, '30073001001060', 1, 'ELSA DWI PUTRI, KRISTINA'),
(387, '30073001001061', 1, 'CARLOTA DE JESUS PAREIRA RICARDINA'),
(388, '30073001001062', 1, 'SELVITRIYANI BR SEMBIRING'),
(389, '30073001001063', 1, 'KUN PADRIANUS'),
(390, '30073001001064', 1, 'LITYA, CHRISTIAN'),
(391, '30073001001065', 1, 'GRAITA PURWA AMARTA, CICILIA'),
(392, '30073001001066', 1, 'INGRIDA, ELISABETH'),
(393, '30073001001067', 1, 'ANDRIANA OKY, MARIA'),
(394, '30073001001068', 1, 'SR. ROSA DE LIMA UWUH SARI'),
(395, '30073001001069', 1, 'RUBIYASIH RENTINA'),
(396, '30073001001070', 1, 'ARY SAGITARIJANTO, NATALIUS'),
(397, '30073001001071', 1, 'SADILAH DWIDJOWINOTO, THERESIA'),
(398, '30073001001072', 1, 'SAHAT SIMBOLON'),
(399, '30073001001073', 1, 'SOENARTO, IGNATIUS'),
(400, '30073001001074', 1, 'HENNY PASKALIA FIRMANTO'),
(401, '30073001001075', 1, 'HASAN TIO BENEDICTUS AMOS'),
(402, '30073001001076', 1, 'SUHARTINI MARGARETHA, MARIA'),
(403, '30073001001077', 1, 'SOEMIJANTORO RADEN, LEONARDUS'),
(404, '30073001001078', 1, 'PUJIONO, ROBERTUS'),
(405, '30073001001079', 1, 'SUWARDI KRISTIANUS, YUSUF'),
(406, '30073001001080', 1, 'HORMAT PINEM, HONDRIUS'),
(407, '30073001001081', 1, 'SANTOSA PUDJI RAHARDJO, BERNADUS'),
(408, '30073001001082', 1, 'PARINEM SALIMAH HADRIANA'),
(409, '30073001001083', 1, 'ROSARI, ELISABET'),
(410, '30073001001084', 1, 'SOEPARDHI, YOHANES'),
(411, '30073001001085', 1, 'SAJAR SOEPRAPTO, FRANSXICUS'),
(412, '30073001001086', 1, 'DEWANTO, ANDREAS'),
(413, '30073001001087', 1, 'SUWITO, THOMAS'),
(414, '30073001001088', 1, 'SULISTYANTO, YUSTINUS'),
(415, '30073001001089', 1, 'SUPALIMIRMANTO, THOMAS'),
(416, '30073001001090', 1, 'TITI HIDAYATI, MARGARETA'),
(417, '30073001001091', 1, 'JANTA WIYATNA, YOHANES ROSUL'),
(418, '30073001001092', 1, 'SUMIJATUN, MARIA GRATIA'),
(419, '30073001001093', 1, 'BAMBANG PURWADI, ANTONIUS'),
(420, '30073001001094', 1, 'YUNINGSIH ALISABETH, MARIA'),
(421, '30073001001095', 1, 'KARDI ADI, JUVENTIUS'),
(422, '30073001001096', 1, 'DANANG WAHYU HARI PUTRANTO, THOMAS'),
(423, '30073001001021', 1, 'MURYONO, HADRIANUS'),
(424, '30073001001022', 1, 'DJOKO MARSONO, ISODORUS'),
(425, '30073001003001', 3, 'CHRISDANDANI, IMMANUEL'),
(426, '30073001003002', 3, 'YUSNIATI, YUSTA'),
(427, '30073001003003', 3, 'BUFA RADE NEFRINA'),
(428, '30073001003004', 3, 'KURNIA, MARIA IMMACULATA'),
(429, '30073001003005', 3, 'HONOR ADRIANA'),
(430, '30073001003006', 3, 'AGUNG PRAMUDITA GREGORIUS'),
(431, '30073001003007', 3, 'SONY VICTOR SONDAKH'),
(432, '30073001003008', 3, 'SAGINEM REJOPAWIRO, MARIA MAGDALENA'),
(433, '30073001003009', 3, 'HARTO WIHARJO, PETRUS'),
(434, '30073001003010', 3, 'WANTIYONO, YOHANES'),
(435, '30073001003011', 3, 'TUBIN PRAYITNO UTOMA, THOMAS'),
(436, '30073001003012', 3, 'TEDDY WIDAYANTO, FRANCISCUS'),
(437, '30073001003013', 3, 'KOESBYANTORO, ALOYSIUS'),
(438, '30073001003014', 3, 'WALIDI KUSDIARTO, JOANNES'),
(439, '30073001003015', 3, 'SUHARDI, LUCAS'),
(440, '30073001003016', 3, 'WISNU CAHYADI, IGNATIUS'),
(441, '30073001003017', 3, 'SUPRIYADI, STEFANUS'),
(442, '30073001003018', 3, 'SAMUN TRIYOKO, GREGORIUS AGUNG'),
(443, '30073001003019', 3, 'RENI INDRAWATI, ELISABETH'),
(444, '30073001003020', 3, 'ENDANG RUSTIANA DEWI, CATHARINA'),
(445, '30073001003022', 3, 'HANDANG SUDIRYA, ANTONIUS'),
(446, '30073001003023', 3, 'DJOYO SUWARNO, ANDREAS'),
(447, '30073001003024', 3, 'SARJILAH SANIKEM, MARIA MAGDALENA'),
(448, '30073001003025', 3, 'SUTARMADI, CYRILLUS'),
(449, '30073001003021', 3, 'TONY SETIAWAN, ALEXANDER'),
(450, '30073001003026', 3, 'LAMI NIWOTOPENI ROFINA'),
(451, '30073001003027', 3, 'ARIEF BUDIARTO, THEODORUS'),
(452, '30073001003028', 3, 'TIMETEOS LATU PAPUA, YUNUS'),
(453, '30073001003029', 3, 'SUMARDIYONO, IGNASIUS'),
(454, '30073001003030', 3, 'FEN SAPARITA, DIONYSIUS'),
(455, '30073001003031', 3, 'SUWARTI, YOHANA'),
(456, '30073001003032', 3, 'GUNARJATI, YOHANES'),
(457, '30073001003033', 3, 'TRI SISWI WIDYANINGSIH, YUPITA'),
(458, '30073001003034', 3, 'DWI SUNTORO, YUSTINUS'),
(459, '30073001003035', 3, 'SUTOPO WALUYO, ANTONIUS'),
(460, '30073001003036', 3, 'SUPATNO, IGNATIUS'),
(461, '30073001003037', 3, 'WIDIYANTO, HENDRICUS'),
(462, '30073001003038', 3, 'SULASTRI, VALENTINA'),
(463, '30073001003039', 3, 'NILAM MAHARANI, VINCENTIA'),
(464, '30073001003040', 3, 'EKO SULISTYO WANTORO, IGNATIUS'),
(465, '30073001003041', 3, 'PARSILAH, THERESIA'),
(466, '30073001001097', 1, 'KURNIAWAN MALO, FRANSISKUS XAFERIUS'),
(467, '30073001008052', 8, 'ARIF BUDIONO, CRYLLUS'),
(468, '30073001008053', 8, 'PONIMIN, PAULUS'),
(469, '30073001008054', 8, 'SUHERIANI, IRENE'),
(470, '30073001008055', 8, 'RITA HERLINA HARTONO, MARIA'),
(471, '30073001008056', 8, 'DEDDY H, YULIUS'),
(472, '30073001008057', 8, 'RAHARJO SAPTO, YOHANES'),
(473, '30073001008058', 8, 'Y.F. HERIADI GUNAWAN, YOHANES'),
(474, '30073001008059', 8, 'PRIAMBODO, DENI'),
(475, '30073001007049', 7, 'RUBAK, BR. THOMAS'),
(494, '30073001002057', 2, 'CobaGanteng'),
(495, '30073001008060', 8, 'DONOVAN VINCEN, BENEDIC FRANCISCUS'),
(496, '30073001008061', 8, 'GELYA VINCEN, BENEDIC FRANSISCUS'),
(497, '30073001008062', 8, 'HASTRIONO ARGO LIMPAT, HENDRICUS'),
(498, '30073001008063', 8, 'KRISHNAMURTI WIBOWO, NICHOLAS'),
(499, '30073001008064', 8, 'KRISNASHANTI WIBOWO, PATRICIA'),
(500, '30073001008065', 8, 'GELYA VINCEN, BENEDIC FRANSISCUS'),
(501, '30073001008066', 8, 'HASTRIONO ARGO LIMPAT, HENDRICUS'),
(502, '30073001008067', 8, 'BASKOROJATI, AGUSTINUS'),
(503, '30073001008068', 8, 'BASKOROJATI, AGUSTINUS'),
(504, '30073001008069', 8, 'DONOVAN VINCEN, BENEDIC FRANCISCUS'),
(505, '30073001008070', 8, 'APRINAN, FRANCISCUS'),
(506, '30073001008071', 8, 'HASTRINDA ISWARI ROSARIO, HEDINIGIS'),
(507, '30073001008072', 8, 'WAGIMAN, ANDREAS'),
(508, '30073001008073', 8, 'SUHARSA YOSIE, IGNATIUS');

-- --------------------------------------------------------

--
-- Table structure for table `kodeumataktifs`
--

CREATE TABLE IF NOT EXISTS `kodeumataktifs` (
`id` int(11) NOT NULL,
  `kodeumat` varchar(80) NOT NULL,
  `kodeaktivasi` varchar(100) NOT NULL,
  `aktif` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=530 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kodeumataktifs`
--

INSERT INTO `kodeumataktifs` (`id`, `kodeumat`, `kodeaktivasi`, `aktif`) VALUES
(1, '300730010050010001', '068522f2cc3e6093aeb7af8db82ed9c5', 0),
(2, '300730010050010002', '6e3247fb685a423834120f7ee4b1966e', 0),
(3, '300730010050020003', '8e37af239025f7636df2e30f70511670', 0),
(4, '300730010050020004', '6cf611f3690967c4ad1fe7f403220b07', 0),
(5, '300730010050020005', '93120bcdd680c266775772398116808d', 0),
(6, '300730010050020006', '18da867907408223ddfccfb535468a31', 0),
(7, '300730010050030007', 'c84fd41f9c75eac214fd3ac513d28634', 0),
(8, '300730010050030008', '65a3524bad7e9093846ccf0f6cbc5463', 0),
(9, '300730010050040009', '747c52aabcd3dc110c0ec1b893bac727', 0),
(10, '300730010050040010', '4b258ed18d7a65b296d7f133a52ef3ad', 0),
(11, '300730010050050011', 'f82726f3a4b5e9e9e3a283dde279b9ee', 0),
(12, '300730010050060012', '218eeec38526c41724652b94adca237a', 0),
(13, '300730010050070013', '14629c5ec77353f3914bcf3f93596233', 0),
(14, '300730010050070014', 'e1e5837b7a1c90ed9721d11f5fc7be1d', 0),
(15, '300730010050070015', 'aa85c37cb4d94b4a85a65971dd349623', 0),
(16, '300730010050080016', 'e928386aa97e892aff383faaa74ae8a8', 0),
(17, '300730010050080017', 'f21359c20c9e5115d4800447d96390a9', 0),
(18, '300730010050090018', '2f522eab907792a5e2a60019eafcaea0', 0),
(19, '300730010050090019', '6545cec83132612851a21b7d83eb2414', 0),
(20, '300730010050100020', 'db3c3b3e916b61f6b44cfd4e9a1f16cd', 0),
(21, '300730010050100021', 'ad7b3a0a091c1bdbb6b9f5b0f182fd29', 0),
(22, '300730010050100022', 'b7fba300bfdd9fc2504cb3a63912a090', 0),
(23, '300730010050110023', '6cf8eaef8e7c56c4f545e4203dc8da33', 0),
(24, '300730010050110024', '0a3b5004121af49a843109f307fb833c', 0),
(25, '300730010050110025', 'a6a19dcda9243f1904502d25c3d306b7', 0),
(26, '300730010050110026', '70fb4a5073fe68fccc796ca88601bdbb', 0),
(27, '300730010050110027', '7e84ad83f751e2c3f11bb08ba0dbde06', 0),
(28, '300730010050120028', '546644be1c35b572b2481f0b6f66f88f', 0),
(29, '300730010050120029', 'f4766da8f3358798c2c33a4355ca07c2', 0),
(30, '300730010050120030', '9d296881654c0de16956f4a0dd05681e', 0),
(31, '300730010050130031', '10c7a25750528b7c97b4360fa50005d7', 0),
(32, '300730010050130032', '830dc41195db3fa944ccc6deeda8869f', 0),
(33, '300730010050130033', '5d3af603e4cff429dda3252bc1c97c41', 0),
(34, '300730010050130034', '98742e8de0d9da2f297eccde055fb31d', 0),
(35, '300730010050130035', 'b3104672a29420c94cba31cf348d07c0', 0),
(36, '300730010050140036', 'e0f49d088f9ddf59a021d7ac9b42c213', 0),
(37, '300730010050140037', 'a27e8eb32858f3831fc7857cea6b9fc1', 0),
(38, '300730010050150038', '4fccc2a1a43bb3ba95f1b61f296719fc', 0),
(39, '300730010050150039', '95378dc4e4d6fd129292905f43d45926', 0),
(40, '300730010050150040', 'c006d73ccbe70ef0cedfc71d4ee238c7', 0),
(41, '300730010050160041', 'b3d150f6bca1156b6693ba7ad6db61c2', 0),
(42, '300730010050160042', '1913bea0484fec903e7e0ec5bef80d61', 0),
(43, '300730010050170043', '82e9173259c1df0c2fd622bd1520525d', 0),
(44, '300730010050170044', '3d6f36d2c11ad7e3bf2cc507668d04d1', 0),
(45, '300730010050170045', '2ac0a7df762c3cdf23a719025c0470ee', 0),
(46, '300730010050180046', 'b92d8d6548e51efdc0e5822d065c7b44', 0),
(47, '300730010050180047', '0cadf3f7ffda0fab62aa74f49b51dcda', 0),
(48, '300730010050180048', '62b18256227d93116618215c38895ee2', 0),
(49, '300730010050190049', 'cb69e94da6a5f2f97e91621a62fd18cf', 0),
(50, '300730010050190050', '960201f48b4d1287bfd8834c436e5dae', 0),
(51, '300730010050190051', '92d5ca422fc72afc8bc814b6e461aa52', 0),
(52, '300730010050190052', 'b116721ab4d80f91d4f47ab41c74dab2', 0),
(53, '300730010050200053', '5c8f6ce5cc93b9b5d6595c2ef9b289b7', 0),
(54, '300730010050200054', '61079df0407361c613d36313c7ee604d', 0),
(55, '300730010050200055', '240884003a660c9e5fb8e9a5ec61f333', 0),
(56, '300730010050210056', 'bc0de588d0821558016caf9d88079b53', 0),
(57, '300730010050210057', '3d148a2447a4c6a7afcd618e8960f3ae', 0),
(58, '300730010050220058', '2d22935e5f7ffa85d69f202b2e046a60', 0),
(59, '300730010050220059', 'd3987e8151f0281565f183fc100cd66a', 0),
(60, '300730010050220060', '958d52e1de88c436db248524b829b9e4', 0),
(61, '300730010050220061', '448649964c6afd7e1295361c7915b064', 0),
(62, '300730010050230062', 'cd67de204e9ddeca31926757e17096e6', 0),
(63, '300730010050240063', '00ca35501b249b9527435b969eee5218', 0),
(64, '300730010050240064', '47fc759b649f87e8a7acdcfb9120366a', 0),
(65, '300730010050240065', '0fae71035afc18f5ff123e0e9bc1673b', 0),
(66, '300730010050250066', '61dd8dcf0fac9da0362b2f373d9da484', 0),
(67, '300730010050250067', '67e18bbc9dc769bb038437b323b0147a', 0),
(68, '300730010050260068', '9e1ca80816a58b6d7af54cc05d56b079', 0),
(69, '300730010050260069', '0b90b5de2f3870b834b70de884a51462', 0),
(70, '300730010050260070', 'f01950db0103bc44eb749e3b686c1d20', 0),
(71, '300730010050270071', 'e86e1d6206e6c0406931b5f928b0fd68', 0),
(72, '300730010050270072', '985dd65213150564f381ea217c9bddb8', 0),
(73, '300730010050270073', '3c1a977a71dbafa3a0c4a8a1a974bba9', 0),
(74, '300730010050270074', '93af08bcb9a4a1411bcca02fbaf75786', 0),
(75, '300730010050280075', 'd41375f19737a623ae53973bb3e46463', 0),
(76, '300730010050280076', 'fa0564da74ee416cdac2a893d53f3af4', 0),
(77, '300730010050280077', 'd9aef56737ec19fff659cd55bd0bb5bd', 0),
(78, '300730010050280078', '249abd56f19d75fbbde959c08b181cfc', 0),
(79, '300730010050290079', 'd8a220e4cffc71cb856f06eb20862fc6', 0),
(80, '300730010050290080', 'ec2d67116f15de77b4d543be4771a8a5', 0),
(81, '300730010050290081', '64c54bf17b887f1333ec8ba907cc48e7', 0),
(82, '300730010050290082', '91041419de5ee17a9e77f22651a31194', 0),
(83, '300730010050290083', '932defd43e9046735d112e81f13a6ac2', 0),
(84, '300730010050300084', 'ab436c1c85571b5ba0710547ffd1fc57', 0),
(85, '300730010050300085', '98c8ba6a67cf1aafc302c5d924c47e35', 0),
(86, '300730010050300086', '121cb4cf70fdab1cafee11c0bcc94a7b', 0),
(87, '300730010050310087', '0cb631ef90d384dfee56d1d4d22a320e', 0),
(88, '300730010050310088', 'a9d768540c93efdff2eee842b4ff73f8', 0),
(89, '300730010050320089', '3c2431da86a0130ce30e74bdaf54a6fb', 0),
(90, '300730010050320090', '671d95fe7645ee7f810ab720f41522db', 0),
(91, '300730010050320091', 'cae4c2e3e10cc40bf450eb795af10c3f', 0),
(92, '300730010050330092', '6ac4216a9309278fcb51d7e867dcb222', 0),
(93, '300730010050330093', 'fe33d95ff520bc0269ca2f306e41c599', 0),
(94, '300730010050340094', '9146fda57c7ba5007f975fb19e6d7f08', 0),
(95, '300730010050340095', '81a98efeb96dc9c328371bd6e4d4ca56', 0),
(96, '300730010050340096', 'ad141eb26d594ae9b9c56bb4ad9a1813', 0),
(97, '300730010050340097', '52e5ef907f7cc652293654c196bddb1a', 0),
(98, '300730010050350098', '60457981f1e1a7ec74295ee0345704fc', 0),
(99, '300730010050350099', '81aa22b369195ee88f7202b05c6b7226', 0),
(100, '300730010050350100', '90d3f7ccf3111d94d1baa56c2f756620', 0),
(101, '300730010050360101', '08eb407d0bde1e28a3b57f75d414a7d9', 0),
(102, '300730010050360102', '9b2f40e6a4af180f7f61d7cac0cd2a5a', 0),
(103, '300730010050370103', '76233590d4c729a5dc5daacf563024b0', 0),
(104, '300730010050370104', '9168c4e7f37db7566c8ec1fbb2eac48e', 0),
(105, '300730010050370105', '640907587a3dc7cdf956e4b41a936eba', 0),
(106, '300730010050370106', 'd7f9b813b9c7fd3d113a6bc3b97fd3e7', 0),
(107, '300730010050380107', 'a679dda1c8ec06c855d99ed93f02937c', 0),
(108, '300730010050380108', '6588d83b4c411894db7d7dde43a504d4', 0),
(109, '300730010050380109', 'f0767ea2602980c771ff1bcf3c5d8890', 0),
(110, '300730010050380110', 'ea322480d0778c702edfa8a7d42cda1a', 0),
(111, '300730010050380111', '2bfe473fca3407d6d9de5c987a7ddee5', 0),
(112, '300730010050390112', 'ee6ba0ef19326ad7e211a204c845633a', 0),
(113, '300730010050390113', '361b936b8fdea5d934dc696b643e97e0', 0),
(114, '300730010050390114', '5ba87292258e715fae6ccc56b4ae32fd', 0),
(115, '300730010050400115', 'a76a1e6cfb1fa4be34615c35a826af5f', 0),
(116, '300730010050400116', 'fa6a006a7e202d08687ba1d1bc25f968', 0),
(117, '300730010050400117', '3fd5937b59379084f969ce7729635c9d', 0),
(118, '300730010050400118', '6b45aa0e605a2603da92ab4bb630b66d', 0),
(119, '300730010050400119', '31fc1bd573c42f346b01ba5d24fe73b1', 0),
(120, '300730010050400120', '47863d3dfae8665e3eb2c76bac49f3f5', 0),
(121, '300730010050410121', 'b88eb529a79e9bab16510b350c63f159', 0),
(122, '300730010050410122', '0e80e77f495324a73b7fb2555f4f6e99', 0),
(123, '300730010050410123', '622eaa04c07bfd4baa8a38d6b3e589ab', 0),
(124, '300730010050410124', '9b08ed564a2f4dbdeb58c59e52c16045', 0),
(125, '300730010050420125', '956150ab1a17bb1d25ccfbb3353458f7', 0),
(126, '300730010050420126', '862724bd0e41e8a5d7fd84e14697d9ff', 0),
(127, '300730010050420127', '868d8f6fee65e29683e5789af3857d19', 0),
(128, '300730010050430128', '5765842bbfac19b6a1db198c2c5a97af', 0),
(129, '300730010050430129', '599683b3d2892fcfd766d8f8afd6130a', 0),
(130, '300730010050430130', 'f337f7b8edccce58ea4347731a63dcb1', 0),
(131, '300730010050430131', '2cdb6137626c0a4787a6a2b3e38d946a', 0),
(132, '300730010050430132', '461f2c772854b74fe8834e449ce6ca2d', 0),
(133, '300730010050440133', '10a0bf28376c08b3449f87d5196b9f0d', 0),
(134, '300730010050440134', '8c5a0c66db2560dc4c82cf23aa2f2e90', 0),
(135, '300730010050440135', 'bf390ae16f22673f13eb52111249c659', 0),
(136, '300730010050440136', '456f1e9cdb7687e14c1c52301653d675', 0),
(137, '300730010050450137', '182834ad375503ab9b2698313000d8cb', 0),
(138, '300730010050450138', '268a8e7af543727897b295ad0d714b0f', 0),
(139, '300730010050450139', '2054c86ff0c9ff3685a34f3259867e93', 0),
(140, '300730010050460140', '5bc3c53cfe3b62f7f91a36ec8f9ec109', 0),
(141, '300730010050460141', '76f27a5a1896acf315e063e9998a9c43', 0),
(142, '300730010050460142', '1bde48d0898ef728dc4a36faff0da2f9', 0),
(143, '300730010050470143', '8ef65dd1ba12a38ee1379a961616cc20', 0),
(144, '300730010050470144', 'ebce46e691f92d653f5cf9bf040aac75', 0),
(145, '300730010050480145', 'eaf35ec1b07d26b925b46955ec616965', 0),
(146, '300730010050480146', '8970867edaad8da45c37ef32b129ab57', 0),
(147, '300730010050490147', '9a3223fa2b32a7a1b5eb24b54b79ccb2', 0),
(148, '300730010050490148', '262cf14683266352b2ac6077910d8db3', 0),
(149, '300730010050500149', '41bcca15f12845dc4599af9b2e0689de', 0),
(150, '300730010050500150', '6fab14067d3b7f17715607ea94b06d9a', 0),
(151, '300730010050500151', '1010cce5efd25fea161845fa2bd7d848', 0),
(152, '300730010050500152', 'dad35b6e49ddeb7b439b0672cc0ad2cb', 0),
(153, '300730010050510153', '0cd1e3297d62f411b810247b2ce83980', 0),
(154, '300730010050510154', '0220334292129d14fe588a1c07e64400', 0),
(155, '300730010050510155', 'c22794c4e884aec8668a244d5a5b77e6', 0),
(156, '300730010050510156', 'c01fde05364085bb098ffd4871016a47', 0),
(157, '300730010050520157', '5d80afb03c3b4d19c7d60bbd9664829f', 0),
(158, '300730010050530158', 'b3e82c3f63616348d9976f90b9b42519', 0),
(159, '300730010050530159', 'bd9621f9ea355455999e97e650af90d8', 0),
(160, '300730010050530160', '235a5a81ab2faa38c56e60ffb7ed465e', 0),
(161, '300730010050530161', '8871c52d10330915799b60b961d5ff80', 0),
(162, '300730010050530162', '00153067a5368d4c0b3665e1834c764c', 0),
(163, '300730010050540163', 'bc7219332e9615fdd81530c9121c9930', 0),
(164, '300730010050550164', 'f3f220323f7cfd3890dc94e63d6db08d', 0),
(165, '300730010050550165', '7e277c83e1e41c3897a0a18c6c1887a1', 0),
(166, '300730010050560166', 'ce954f16566acafddbcb20c7049b7ff1', 0),
(167, '300730010050560167', 'cfb85558d5895cae499ad636105ffeb5', 0),
(168, '300730010050560168', '609d04ef9817ad1cadd571b4813ed4a0', 0),
(169, '300730010050570169', '4978c7310d814daf4e8c96b9e4d1fa48', 0),
(170, '300730010050580170', 'd4f9220a45243d12e998dcc1c13a48fd', 0),
(171, '300730010050590171', 'c9bac7fec0ebc72d2ff80b9795a90d85', 0),
(172, '300730010050590172', '86ed825829446a263b2371c89988d9b4', 0),
(173, '300730010050590173', '8fd491f1df61e448910acb15dbe9f0ce', 0),
(174, '300730010050590174', 'd5ad8654eaa6df84d2f27091940359cf', 0),
(175, '300730010050600175', '377e129960150721797f03df2413f800', 0),
(176, '300730010050600176', '9169203c879bc33342cdf8d3d33e04ac', 0),
(177, '300730010050600177', 'f41f32f462ef81e09d219aeb125b5ebd', 0),
(178, '300730010050600178', '1fbcaf9e4b38d51656ee9186e98af286', 0),
(179, '300730010050610179', '2d2e5f1c468b444a1240ffb204215a56', 0),
(180, '300730010050620180', 'c81764d8c4e67fdccac541d5484909f4', 0),
(181, '300730010050620181', 'c7973c8111129ad93c3f112301126955', 0),
(182, '300730010050630182', 'f100f4a1c19cf502805abfcf2f98d392', 0),
(183, '300730010050630183', '0453a51b4a233a0d01ab696e7057996e', 0),
(184, '300730010050630184', '529a7c8df4bb1a6106d50522fe365d2f', 0),
(185, '300730010050640185', '90ecd093093d9b693c43f685a8430332', 0),
(186, '300730010050650186', '1d5a60d028264c68b61d294208b50b44', 0),
(187, '300730010050660187', '89146d66a9274565bf27d3845be8ab76', 0),
(188, '300730010050670188', 'a7ec0ddf65f37dfb46bf757442339129', 0),
(189, '300730010050670189', '5947ab36328413ec05ddf4aa7d066a9b', 0),
(190, '300730010050670190', '7f9c6abc8e21e09fd1a275c1048b08d4', 0),
(191, '300730010050670191', '435b9bf5b23593e8674f3e8234510ade', 0),
(192, '300730010050670192', '1ced6ced9cceaaedbd78357b9b5e20ec', 0),
(193, '300730010050670193', 'b74ea314bcf9947c3ad1cb5a88c9584f', 0),
(194, '300730010050670194', '723807fd43b8495f614959b2cdf8a8ff', 0),
(195, '300730010050670195', '8cbc57cc39f85631c6d1b9f1f209a450', 0),
(196, '300730010050680196', 'c326fa91c3ed6ba4fbc2e4ae949fb402', 0),
(197, '300730010050680197', 'e22c3ae25bb4eff3afb8335b4eef57bf', 0),
(198, '300730010050680198', '0e949791aeea7e6ab84958a40fa73fcf', 0),
(199, '300730010050680199', 'e8688e12df7ee13ff9e62c6af90c6906', 0),
(200, '300730010050680200', '0784eab8ff37afdd2ff1f979aa92540f', 0),
(201, '300730010050680201', '3aa45449a889b7c23825d180ba504990', 0),
(202, '300730010050690202', '5f380af228122a74cb6bea60dcbe6457', 0),
(203, '300730010050700203', 'f605425362eeed3c0bd663675694617f', 0),
(204, '300730010050700204', 'c933c9d6bde69d43fa45c2689bd99aaf', 0),
(205, '300730010050710205', '3c7c81719203bf1e5577f0f0f2b94827', 0),
(206, '300730010050710206', '214f4c457a3d2dbb6492fa914863d1b9', 0),
(207, '300730010050720207', 'b864e12541901625c3b283ae0ec4dc4e', 0),
(208, '300730010050730208', 'ecd4ccf3bb99c87f2b5c9c67b94bbfdf', 0),
(209, '300730010050730209', '3793326e8ea80b60d3632a8a15825764', 0),
(210, '300730010080010001', 'fba52dd6999d9974ab21241d6252d9c6', 0),
(211, '300730010080010002', '8be22bb034ef2ea78d19dbc0e4b5e333', 0),
(212, '300730010080010003', '8172f4163a920b59208d5350125d92d6', 0),
(213, '300730010080010004', '9726e1c96944876fcc0ca95a2dc05b84', 0),
(214, '300730010080010005', 'e84fbe39d1e0e8439bd9f796fa249177', 0),
(215, '300730010080020006', 'f4d615d794d5a2936124eb420be38395', 0),
(216, '300730010080020007', '714a02362c352d5c04455589d51fc3a9', 0),
(217, '300730010080020008', 'e4522f5e2666a139e1d32539cd0e6128', 0),
(218, '300730010080020009', '1153cf6dea372e505d862e1e13e3ea64', 0),
(219, '300730010080030010', 'bf27289ae81cd3e8f779778821a56f9d', 0),
(220, '300730010080030011', 'a5f83e99908c82d7db8be536f98c89be', 0),
(221, '300730010080030012', '84568c94c8377b21f9dd2b9051d29b6b', 0),
(222, '300730010080030013', '846cc485c2fa383aa27f1e61bb3d9762', 0),
(223, '300730010080040014', '6e766aa70332fe9f5bfa3a84227642f2', 0),
(224, '300730010080040015', '0a3810741685e144c3109c0961b24d93', 0),
(225, '300730010080040016', 'd42da168ee6af88889a6fb403ef1065d', 0),
(226, '300730010080040017', '7aa476cd324b4922834ec0d15b5c51ae', 0),
(227, '300730010080050018', '47bd778f1595565a77bf1e1f454e3c6b', 0),
(228, '300730010080050019', '36511c81d8315a9d3bebbe0a0350ec83', 0),
(229, '300730010080050020', 'f98b764eeef8ee14bd5457da8427f26f', 0),
(230, '300730010080050021', '18f0d59155be7829c72d432b777b8214', 0),
(231, '300730010080060022', 'ed2630a5a53e8f81c0dcc22dd16ed61e', 0),
(232, '300730010080060023', '5815723e800ae8f0cc9bdcab1fcc7ff0', 0),
(233, '300730010080070024', 'bff03913a393877c5de35f6846bc8323', 0),
(234, '300730010080070025', '4717ab3dc89689e0c118c05452108181', 0),
(235, '300730010080080026', 'e06319b86e9b84e6679a8db6549817cd', 0),
(236, '300730010080080027', '5e8f94978da80f8cd2cc5ed929d02f95', 0),
(237, '300730010080090028', 'bf666f79826c22452b6e16a15ce2a570', 0),
(238, '300730010080090029', '881aea2c965d0565089d30bfbec74473', 0),
(239, '300730010080090030', 'd31bec0e678aac207f1c2fe508966c8f', 0),
(240, '300730010080090031', '9708c351aee2ea2c6e89f2660b97007e', 0),
(241, '300730010080100032', '16cbe68560f933f0c0a2c1a659b27afb', 0),
(242, '300730010080100033', '57257e1867aa1f7dc4629a800015beb4', 0),
(243, '300730010080100034', 'dbc2c69d3a58f35e42b4cb202a707911', 0),
(244, '300730010080100035', '7a870e76c3c48715fb12e01372724378', 0),
(245, '300730010080100036', '99b6875911f63905271278527adfc773', 0),
(246, '300730010080110037', 'adf39ae8517351df728801f333932515', 0),
(247, '300730010080110038', '346f994d964b69923b571ff4ce28a660', 0),
(248, '300730010080110039', '5ee2de30a7ccdc54bb431759ce67e74e', 0),
(249, '300730010080120040', '2b908d3feabe596994c27631739dbc96', 0),
(250, '300730010080120041', 'b216149e602f5d7f34f8064b2535d21b', 0),
(251, '300730010080120042', '608fd980322e0699220e61e6cdc9746d', 0),
(252, '300730010080120043', '8d3656a7682edbf1b637fe30ef2f897d', 0),
(253, '300730010080130044', 'e370e69f344d1c370a2681e6c9b8e89c', 0),
(254, '300730010080140045', 'eed75617ea8244af3acfda9f809651cf', 0),
(255, '300730010080140046', 'ff14d8917674b641056883c083a82316', 0),
(256, '300730010080150047', '311c776c8b7f8a3a9be646a099b2d561', 0),
(257, '300730010080150048', 'c377bf8144455052d6bb1d389eaafbac', 0),
(258, '300730010080160049', 'c4281d24f8f56e5850a525a0d567d97c', 0),
(259, '300730010080160050', '7fc126af3fa5aa1ffa23d8a0ea6124bb', 0),
(260, '300730010080160051', '7b9deb4e8cffabd89aabcae94531ef51', 0),
(261, '300730010080160052', 'd9926f0b75e2f509e7967b106c30d9a6', 0),
(262, '300730010080170053', '568faa68b381a158dc7fe700f200e50a', 0),
(263, '300730010080170054', '0929f22f97aa94a7effa3964f2e077aa', 0),
(264, '300730010080170055', '8aab296b95aab84ad5b16b0ad3d07df1', 0),
(265, '300730010080180056', 'bffd82edfd10f0504d50afa4062ff765', 0),
(266, '300730010080190057', 'e11a432b3faf078547b9816d5de11d91', 0),
(267, '300730010080190058', '44757caa30b1f3c305645295cfbc490b', 0),
(268, '300730010080200059', '259bad2f82d8afe03eddca0d955e910e', 0),
(269, '300730010080200060', 'aa72533b50baa02bc4e0b33986f991fe', 0),
(270, '300730010080200061', 'e78af04c398b441330a386086d75ab20', 0),
(271, '300730010080210062', '848360700c6467aa0faa7f60ce9dce83', 0),
(272, '300730010080210063', '96b4fdb3b4379b6179089ce6103915b1', 0),
(273, '300730010080210064', 'eaef757b6d716821d6e8e46d264becc4', 0),
(274, '300730010080220065', '2b3bfbda0841fa3bb91c745db7c27b77', 0),
(275, '300730010080220066', 'c6f4ac7a2cc7424be8fe36c1517ca17a', 0),
(276, '300730010080220067', '92b8fe35bb09e4733a1b3bfe3c1c5e5c', 0),
(277, '300730010080230068', 'c92290b3306788ddecabdde49bfd07e5', 0),
(278, '300730010080230069', '5deb5c90fd658343fb6adb3b2515737b', 0),
(279, '300730010080230070', 'f5195da894a28eac9fb4e879ba0c011d', 0),
(280, '300730010080240071', 'a11f591c17b9ab29831e85243b49946a', 0),
(281, '300730010080240072', '5cb33e68730b11aa5493072b4fdd6ddc', 0),
(282, '300730010080240073', 'f9993117bb567532d8fb205340c735c9', 0),
(283, '300730010080240074', '3231dbb9dee33550d71b1f91406faabe', 0),
(284, '300730010080240075', '8875552a6d5495d56c6149a50b16fd5d', 0),
(285, '300730010080240076', 'a76fb1fc21a19940bf9e55320dfca295', 0),
(286, '300730010080240077', 'f3f619f87e51df04c38bd4b54ec896ef', 0),
(287, '300730010080240078', 'db9280a881104aa87795b0bb9b53e5b8', 0),
(288, '300730010080240079', '3bcddd137a09b4132863b2401d0b20e4', 0),
(289, '300730010080240080', 'cfc9ab64167753d41d67721af88128aa', 0),
(290, '300730010080250081', '172d7b881d0ab9ef7b47eb74fa5e7a2f', 0),
(291, '300730010080250082', 'edf8e1ac5f1eef733839786b2746a1af', 0),
(292, '300730010080250083', '69ad00e65b962155b5e0fb6560c412a8', 0),
(293, '300730010080250084', '5bd9bbef347c5bfc705282ec23575368', 0),
(294, '300730010080250085', '05b1007cf1cf1e836809bbc2ff00da40', 0),
(295, '300730010080250086', '3eaef12cbbb828e587b1ddafa807a587', 0),
(296, '300730010080250087', '7ae2c191b46ec511151b93ba3aa03870', 0),
(297, '300730010080250088', '9de978635b329f44d11f5afdfcc05cdd', 0),
(298, '300730010080250089', 'ea03cf3312377a2b849327ce97145379', 0),
(299, '300730010080250090', '3576403b5474b8bad669b14f71d43238', 0),
(300, '300730010080260091', '0d72663152b5947967224255fdbd9e40', 0),
(301, '300730010080260092', '9a9c672de5cd428a15db2ca6dea147c7', 0),
(302, '300730010080260093', '113ea66be15e4e7da1669a6c685caceb', 0),
(303, '300730010080260094', 'e304457b30970cb1020257bb53ee2851', 0),
(304, '300730010080260095', '7a1e5c5f1048d21ca09f0088cf6fb09a', 0),
(305, '300730010080260096', '9cf760b3961992bc31649a2cc945179f', 0),
(306, '300730010080260097', 'a499cdbecf47e5dc24a5dc0788595a3e', 0),
(307, '300730010080260098', 'e8bae16f568e30d9d60c2beea329f784', 0),
(308, '300730010080260099', '6b6e9c0c08ab260270a00c529d3e73b0', 0),
(309, '300730010080260100', '854a7847d86fd0fb8f02904271c12e72', 0),
(310, '300730010080270101', '5081d18b3c26f5c6340a5d48b3a6bc8d', 0),
(311, '300730010080270102', '1ada3f447f36875f41a29011fe10bb2e', 0),
(312, '300730010080270103', 'dc4759bfe9c3a3f58ecaa54286e5130c', 0),
(313, '300730010080270104', 'db4088745271cf10687906d7812b1071', 0),
(314, '300730010080280105', '7b9cb9ee1d1e8b1d1a5032eac72e01f9', 0),
(315, '300730010080280106', 'ac5f6df658a8f9cfc452c9b2e89bcc9a', 0),
(316, '300730010080290107', '4ea62d804b2ef21a64b157f78f3e7687', 0),
(317, '300730010080290108', 'ab46de506a6f2b6af3cb600b1b582023', 0),
(318, '300730010080290109', 'aa6a09010be77d6cda6e9be4e802e513', 0),
(319, '300730010080290110', '3ec387955bef808862d22b4b17a99e7a', 0),
(320, '300730010080290111', '524843fadb0db50f1a29d286d5b5503d', 0),
(321, '300730010080300112', '316ced204b320e1e70b4edb7afeb0089', 0),
(322, '300730010080310113', '1cddeed7f13ac820a0028e2f36f20411', 0),
(323, '300730010080310114', '53a7ebfb8e79fd8769a2d194e5817a02', 0),
(324, '300730010080320115', 'd71762b6cb53f088346f5f2785432230', 0),
(325, '300730010080330116', '48e7d87f1fd64c92b29a5ac01277ad9e', 0),
(326, '300730010080330117', '00908fde83530a0f434c2d853a690fb4', 0),
(327, '300730010080330118', 'f0e68f0ef0abf8c343153ee70e366bdc', 0),
(328, '300730010080330119', '30b51a8b63aca7462ad6e04a6e641b82', 0),
(329, '300730010080330120', 'a346fb2a5ff956852079557c1edce7e7', 0),
(330, '300730010080330121', '83362d24264afa1dd6c5ed1714b9601e', 0),
(331, '300730010080340122', '7968771f76ed7cbef948deb0b499aaea', 0),
(332, '300730010080340123', 'a2a255aeb220933f971fb5024bd51852', 0),
(333, '300730010080340124', '6b72d8729ebaab04693138a6dfd12573', 0),
(334, '300730010080340125', '695bcf000b0eb18ebf209f99876b0cdb', 0),
(335, '300730010080340126', '206ce51c44a065bd64b1d04a9a9a0cee', 0),
(336, '300730010080340127', 'f5083932d300585be5d5950bdc67e959', 0),
(337, '300730010080340128', 'e7736e29ef124d0f9b9d51af02ddddfa', 0),
(338, '300730010080340129', 'ce9d8890412555d2f51d71ff7520004f', 0),
(339, '300730010080350130', '13e6515f442afb0b5de45dccba8b727f', 0),
(340, '300730010080350131', 'f5bbf317c8ef9f6f49890c36ade328f1', 0),
(341, '300730010080350132', '98e22278c8b1ffdea462fa482f1e30a0', 0),
(342, '300730010080350133', 'cec14cba50a3f158c1f70517d13189ba', 0),
(343, '300730010080350134', 'd1cb9b8c757af9ebe401093a37517292', 0),
(344, '300730010080350135', '2c617c2d32ec6046b14791a26ba1819f', 0),
(345, '300730010080350136', '08e6131b001a54b0c42638af1b3f8d19', 0),
(346, '300730010080350137', '883acb2043e2855734271cab9fc9349f', 0),
(347, '300730010080360138', '36e75341d1550e64a5617250f95b322c', 0),
(348, '300730010080360139', 'a37880d8bfe8814269a253fa61ed0480', 0),
(349, '300730010080360140', 'cc4c8bbcdb4edd6152ecd315200bf71c', 0),
(350, '300730010080360141', '2ccee0ee948b68f3d3c9966374530b61', 0),
(351, '300730010080360142', 'd52390ade5598eb7c62403bde268cfff', 0),
(352, '300730010080360143', '52dee3971b6e4a405942ef9e1b4169c3', 0),
(353, '300730010080360144', '9e3941e1115bd9c6a2c3f07b1b892fc8', 0),
(354, '300730010080360145', 'e00e4b8cf5eacdb5c5b3efff134b9bf8', 0),
(355, '300730010080370146', 'd0239a622d47e8d17745baeb03674d89', 0),
(356, '300730010080370147', 'acceeedaf480b796f0616c3070311d88', 0),
(357, '300730010080370148', '3f6c1e98bf8de4b1e2b3dba59354c605', 0),
(358, '300730010080370149', 'dd6d4c93675c35247ec110de0b385b0a', 0),
(359, '300730010080370150', '9038123dc6a13a46dd03e4cb4495b957', 0),
(360, '300730010080370151', 'ef43aef4315bfa972e3524598b0d9491', 0),
(361, '300730010080380152', '595cdbc67b10197d9a239f57c1966409', 0),
(362, '300730010080380153', '7a39277fbe2ebff148cd5f85b7f63805', 0),
(363, '300730010080380154', 'b5cdfb08e0b8869cf2a1b80bd21d090c', 0),
(364, '300730010080380155', '8f2ece3450cae2199defa93211a72127', 0),
(365, '300730010080380156', 'd9042206c3d3e0de98e13fc0d3d4ed00', 0),
(366, '300730010080380157', '92009cd8662e7fae69f71cfc9da1a68d', 0),
(367, '300730010080380158', 'f9c4b541abf80b90482ba0c6ee10d53e', 0),
(368, '300730010080380159', '22b7d1b8564b0dcbb057e24961af2604', 0),
(369, '300730010080380160', '53bb065afcefeb079ab93c49bc90fb83', 0),
(370, '300730010080380161', '951448bd57ab792168794cd252a01e90', 0),
(371, '300730010080390162', '09b2a672a150afb0b6c71f56c5e96e45', 0),
(372, '300730010080390163', 'dab7fe1224bbabb4244a162470b4331f', 0),
(373, '300730010080390164', 'cf0c5a2c55c27b8e42cb7ed8cdb913b1', 0),
(374, '300730010080390165', '41d3d66372a5a87f8f0831f28546aee8', 0),
(375, '300730010080390166', '9d7a26f6a781f8e6f60f4bf7e0a5bda9', 0),
(376, '300730010080390167', '7978c905eaf62d4b421f47ff560251f7', 0),
(377, '300730010080390168', '0346d2e472e2cba0fe190b1ad6e0779c', 0),
(378, '300730010080390169', '1671f37274c0a70fb183e9d7f7de5636', 0),
(379, '300730010080390170', '376a9da1394489b0f0d047f8c49425a9', 0),
(380, '300730010080400171', 'aea4923f4f4f576b877d598a526081c1', 0),
(381, '300730010080400172', '0b48ced279c0984630983edaaf68981d', 0),
(382, '300730010080400173', '5ad00cc168ae29008032351f732844d7', 0),
(383, '300730010080410174', '8270b16101f13bc416433091c06cb53a', 0),
(384, '300730010080410175', '345d11dcf375e465296dbee6d86ea7cd', 0),
(385, '300730010080410176', 'fc3932154c914b6ebdd1cd25b672fff9', 0),
(386, '300730010080410177', 'e67d790d7739b7cd6782df2ccaa445e8', 0),
(387, '300730010080410178', 'c75aceaaa2018d2230463b42cae060cb', 0),
(388, '300730010080410179', 'f46401fc7225652c6d0635e9788da325', 0),
(389, '300730010080410180', 'ba7a2bddfb52625a2d0d5a8ed321673c', 0),
(390, '300730010080410181', '27e203d584126b555f307c64081105d8', 0),
(391, '300730010080410182', '85fe589ba5d8a5dbd411c4e23c114b32', 0),
(392, '300730010080410183', '369a72c3d4a3a4a0da6d59f901dcaed2', 0),
(393, '300730010080420184', 'a85f974ab2f65e73478f6570d6ffc2a8', 0),
(394, '300730010080430185', 'fb97e27d82f04d4efbe77f5e80f71d99', 0),
(395, '300730010080430186', 'c1892cd9d2a631ee707f4a1aba6ecc8f', 0),
(396, '300730010080430187', 'e539a2f60e1323d3c6d6aad1944c0cd5', 0),
(397, '300730010080430188', '85064015723846274b1b2b955ef9fc01', 0),
(398, '300730010080430189', '6cfb5f53513bd7b824bcf55b934c5d41', 0),
(399, '300730010080430190', 'bfd80c1d51b73ad3cb1ea99666f3cd28', 0),
(400, '300730010080430191', '0c6b8a374d9de825f4600b1fe4467914', 0),
(401, '300730010080430192', 'b133d380b5e463023dc9371f0b327029', 0),
(402, '300730010080430193', '80024cc30e0079ef7fcd6b3aee67276e', 0),
(403, '300730010080430194', '1823aae07f956156cb3fcca5e303f23a', 0),
(404, '300730010080440195', '7ecc4825064445e28767c728eba7d4e1', 0),
(405, '300730010080450196', '536f2a6d934d0074ff4db851eb400daf', 0),
(406, '300730010080460197', '70a913dbe6f826767e775cabebe94724', 0),
(407, '300730010080460198', '168775e05dc260ab1a8eab15e76e3048', 0),
(408, '300730010080460199', 'c4a459100eacaf9d011cc73e8bd17665', 0),
(409, '300730010080460200', '2e3fc80077f9ab1a3f05caa1cead2b2e', 0),
(410, '300730010080460201', '3f0af5b096bc29482ad8a105a4e4e332', 0),
(411, '300730010080460202', 'efbeb6d7cf7c3cb46ea819773d9b932e', 0),
(412, '300730010080460203', '44ae96e7aaf002a34c37a209d039fec5', 0),
(413, '300730010080460204', 'd09458ce34b98d4b85a1e45eda892a4f', 0),
(414, '300730010080460205', '5791286ade7f1231755503e46f0448a0', 0),
(415, '300730010080460206', '757c1caeef15a4c4a8aa4e6e609141d2', 0),
(416, '300730010080470207', '811ceeb83163b00eea9fc3823ae52aad', 0),
(417, '300730010080470208', 'e826b55ce47e8384715e06d62e8189b3', 0),
(418, '300730010080470209', 'e1335ccac92394d41021333646d5580d', 0),
(419, '300730010080470210', '642a5c9e78ee545d670241777eebe1ce', 0),
(420, '300730010080470211', 'e391ea2f331db8fce610944d76475d20', 0),
(421, '300730010080470212', 'e380b6bc04e37f0f02d38ecb82d54ab7', 0),
(422, '300730010080470213', 'af39d8adba2d098b380601e45b65c55b', 0),
(423, '300730010080480214', '006bcd0524d9def25b0aaeb4e4fb73a5', 0),
(424, '300730010080480215', 'da78dd39a1fc11cc43ab7d442a4be047', 0),
(425, '300730010080480216', '321ec91df9c71486deead5f6dcce0c2e', 0),
(426, '300730010080480217', '2450258d4b553a5e4db3b73992061666', 0),
(427, '300730010080480218', 'a30665f8316611719164cc66b5267346', 0),
(428, '300730010080480219', 'bda8d2d87938911e0ae58d859851be66', 0),
(429, '300730010080480220', 'f214cbee8f8bce2732053e19f939a83a', 0),
(430, '300730010080480221', 'ef74f590bb4a4f97f96e161f8bc2d7cc', 0),
(431, '300730010080480222', '7fb3dde2c3a580797ada93fc0df177ee', 0),
(432, '300730010080480223', '6140263de6e30e6de36588de079cd153', 0),
(433, '300730010080490224', '46a0fab6921a98ffe74a013151e293bb', 0),
(434, '300730010080490225', '3de0039f26599ab17c05a2f68005134a', 0),
(435, '300730010080490226', '34e1fa72fb9ee8c4637d1aad3ab1f286', 0),
(436, '300730010080490227', 'd7ce72fc81e857d13524226d07791126', 0),
(437, '300730010080490228', '8b2a96a6e16ccb3eddec2272dfd92ce3', 0),
(438, '300730010080490229', 'd33d155f9a7a14ee7ec5edd165b78068', 0),
(439, '300730010080490230', 'acf2061a5ac53314d119c23d672f61eb', 0),
(440, '300730010080490231', 'a42382ee03d9dbd5811395c879f31e10', 0),
(441, '300730010080490232', '490cc3d027b3bb8e91d4fde2b04d05bd', 0),
(442, '300730010080490233', '04d01c73e637476436e5045bd721123a', 0),
(443, '300730010080130234', 'a05443e722791f34136911fd962ada43', 0),
(444, '300730010080130235', '941148ab9d43b73a585c3af20d2b72db', 0),
(445, '300730010080130236', 'b8cd050f323839ff7688b55daa64631c', 0),
(446, '300730010080130237', 'd2e1f4e787dbbd1bdfae939cf066a96a', 0),
(447, '300730010080130238', '54e7e571b096004a31843b01a2d9363f', 0),
(448, '300730010080130239', 'd82187239162efc3cae5dab5abd7c921', 0),
(449, '300730010080130240', 'f33760fc0213a45ab4eeef866492ae9b', 0),
(450, '300730010080130241', '89c60bce835712a1c771b78bfffd8592', 0),
(451, '300730010080130242', '56a01c506a0d93701b4169aaba14a579', 0),
(452, '300730010080440243', 'e38ff494a9332297aec71858110988f9', 0),
(453, '300730010080440244', '85b83b4947d76cfcdc73d62ab67ed4c9', 0),
(454, '300730010080450245', '30c0bbcc4668552a5838fdaebce6708d', 0),
(455, '300730010080450246', '8ffddfd79ddf2348cd2d0a948164b587', 0),
(456, '300730010080450247', '1ca6221149d73690c6fb78773814cb00', 0),
(457, '300730010080450248', '156cf89c7ed748168061310ed4d8cd32', 0),
(458, '300730010080450249', 'c73b2bd2709319b0cddf05d036e6495a', 0),
(459, '300730010080500250', '460c100966d91f5373e52497424191fe', 0),
(460, '300730010080500251', '7e0581a33b8c5130379664ff7380e2e6', 0),
(461, '300730010080500252', '6e47434d7464931d26d9b877bc1d6e03', 0),
(462, '300730010080500253', 'f648cd0498e6ae2472d96deea088ff39', 0),
(463, '300730010080500254', 'aa4a8fb76af0d90761b79d247d71ecb4', 0),
(464, '300730010080500255', 'd8c922135db1ec1805dcdec3bcc8b59e', 0),
(465, '300730010080500256', '45623c6ec60337e346724847674c849b', 0),
(466, '300730010080500257', 'b90bc6a28dea852ec2aa677e4b608a70', 0),
(467, '300730010080500258', '7b658ce54e8972b8f941211e6efb0003', 0),
(468, '300730010080510259', 'f7c4889f4b4735db7b7af9fd09d624f2', 0),
(469, '300730010080510260', '83a30e68b2dcf849d87f42c7cefac6b9', 0),
(470, '300730010080510261', 'b6350936c291a98cc2c171685c3a9044', 0),
(471, '300730010080510262', '9cecad45c233b09837eb814e2f43d3cc', 0),
(472, '300730010080520263', '3080ef85ec2367a5df5a2272465bf688', 0),
(473, '300730010080520264', '16d0525b70e8b5a1a824add1a199c4cd', 0),
(474, '300730010080520265', '42c83069ed02ce205e85392fd0467a61', 0),
(475, '300730010080520266', '97466e09cdcccb7633b444162b573ebe', 0),
(476, '300730010080530267', 'bcff7bca370d47614cf689040b48b9ae', 0),
(477, '300730010080530268', 'a96d20cbc9dbb0ab3e15a996d98dfc35', 0),
(478, '300730010080540269', 'ca42783b4a6cf9df692e6507b54bdcef', 0),
(479, '300730010080550270', '898f5d259a0e11d0799b60dd03e83de3', 0),
(480, '300730010080550271', '96f1de41e10db55bfd134a76cef6442f', 0),
(481, '300730010080550272', '7b9f90adb842d3b5c9253466a916513c', 0),
(482, '300730010080560273', '7708848b96e4ae88e77607b33e756672', 0),
(483, '300730010080560274', 'e46cd2e4bf89853386d1770b5919a669', 0),
(484, '300730010080560275', '299fc181e384460e2025061420656848', 0),
(485, '300730010080560276', 'ced378795d3f3040c026cd6710255a84', 0),
(486, '300730010080570277', '571fd826740ad190e37b40e953341bb2', 0),
(487, '300730010080570278', '46b1db1b599762b7bbdd10b6836dd6bc', 0),
(488, '300730010080570279', '86774fc523e1d9d0bfae7df1de79cc12', 0),
(489, '300730010080570280', '7152790f2b7b8d250d3d21a059ecfce0', 0),
(490, '300730010080580281', 'aff73cf6629ad6d94d2856425f26d040', 0),
(491, '300730010080580282', '82bdc121b3b81e5efb98d318af2d6fb7', 0),
(492, '300730010080580283', 'a6e027559078bdbf4950b4de1effbbf8', 0),
(493, '300730010080580284', '01c4ed4d3deabd612e2cd2885a38d3f8', 0),
(494, '300730010080580285', '0a98204c56b41d006aaad0d87f7d3814', 0),
(495, '300730010080580286', '302748a70312b3aa6c79738349a189f0', 0),
(496, '300730010080590287', '88759ca359dce5dcdd21f51ef04bb05c', 0),
(497, '300730010080590288', '042ea218d09b00f316e403b679249972', 0),
(498, '300730010080590289', 'b84a49177c3e3e3ca15c66aa8357057b', 0),
(499, '300730010080590290', '3308aa9f755e8613e9ce96bfb50fa37b', 0),
(513, '300730010050010210', 'f846f75cc3f3fc22bbe7a7abde3b5f5e', 0),
(514, '300730010050010211', '4acbb12ef04b694937a50164e2e8541b', 0),
(515, '300730010050010212', 'e90b35cdd85ba10b361f86bd0495af73', 0),
(516, '300730010050213', 'ddfcecd54d20f0992d09d4dd959bdfc2', 0),
(517, '300730010050214', 'a4aa9b2268724c23f6a03c06b3cbb571', 0),
(518, '300730010050010215', 'f523dcc10454d354f4b258e394f4a547', 0),
(519, '300730010050740216', '7dac7719909d87be406f9e9357273ddc', 0),
(520, '300730010050750217', '6fb5032165a23000cb80a2ec34749a4f', 0),
(521, '3007300100500218', 'd85f43514af570330cc4a9ac22926718', 0),
(522, '3007300100500219', '018a9d977ea0a6cefeda1c1122f78ead', 0),
(523, '3007300100500220', '0c872250ae4262f6ac5037872d672928', 0),
(524, '300730010050760221', '968520de96cb09ed43d58ef728b82a96', 0),
(525, '300730010050230222', 'd8a816d1db038cedd1b46e459a2aee37', 0),
(526, '300730010050770223', '25b438c6d189da6b36d817e82efc04cc', 0),
(527, '300730010050010210', 'f846f75cc3f3fc22bbe7a7abde3b5f5e', 0),
(528, '300730010050740211', '9ffa2b3d504101b1e94a0c7129142234', 1),
(529, '300730010020010001', 'c1d12b47bd29201069bb73c33675a463', 0);

-- --------------------------------------------------------

--
-- Table structure for table `komuni`
--

CREATE TABLE IF NOT EXISTS `komuni` (
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
  `liberbap` varchar(255) DEFAULT NULL,
  `no_buku` int(10) DEFAULT NULL,
  `ayah` varchar(255) DEFAULT NULL,
  `ibu` varchar(255) DEFAULT NULL,
  `alamat_orangtua` varchar(255) DEFAULT NULL,
  `no_telp_orangtua` varchar(15) DEFAULT NULL,
  `jenis_kelamin` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `krismas`
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
  `tempat_krisma` varchar(50) NOT NULL,
  `kota_krisma` varchar(50) NOT NULL,
  `tanggal_krisma` date NOT NULL,
  `nama_pelindung_krisma` varchar(50) NOT NULL,
  `nama_emban_krisma` varchar(50) NOT NULL,
  `nama_ayah` varchar(50) DEFAULT NULL,
  `nama_ibu` varchar(50) DEFAULT NULL,
  `alamat_orangtua` varchar(50) DEFAULT NULL,
  `no_hp_orangtua` varchar(13) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `krismas`
--

INSERT INTO `krismas` (`id`, `id_umat`, `kode_stasi`, `lingkungan`, `nama_diri`, `nama_baptis`, `tempat_lahir`, `tanggal_lahir`, `tempat_baptis`, `tanggal_baptis`, `buku_baptis`, `tempat_komuni`, `tanggal_komuni`, `alamat_diri`, `no_hp_diri`, `tempat_krisma`, `kota_krisma`, `tanggal_krisma`, `nama_pelindung_krisma`, `nama_emban_krisma`, `nama_ayah`, `nama_ibu`, `alamat_orangtua`, `no_hp_orangtua`) VALUES
(1, NULL, 3776, '', 'KRISHNAMURTI WIBOWO, NICHOLAS', '', '', NULL, '', NULL, '', '', NULL, '', '', '', '', '0000-00-00', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `levelusers`
--

CREATE TABLE IF NOT EXISTS `levelusers` (
  `level` int(3) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `levelusers`
--

INSERT INTO `levelusers` (`level`, `keterangan`) VALUES
(1, 'User'),
(2, 'Ketua Lingkungan'),
(3, 'Kantor Paroki'),
(4, 'Dewan Harian'),
(5, 'Romo Paroki'),
(0, 'user sign up'),
(-1, 'User delete'),
(5, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `lingkungans`
--

CREATE TABLE IF NOT EXISTS `lingkungans` (
`id` int(11) NOT NULL,
  `code_lingkungan` varchar(255) NOT NULL,
  `wilayah_id` int(11) NOT NULL,
  `nama_lingkungan` varchar(200) NOT NULL,
  `jumlah_umat` int(11) NOT NULL,
  `jumlah_kk` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lingkungans`
--

INSERT INTO `lingkungans` (`id`, `code_lingkungan`, `wilayah_id`, `nama_lingkungan`, `jumlah_umat`, `jumlah_kk`) VALUES
(1, '30073001001', 14, 'ST BARTHOLOMEUS', 0, 0),
(2, '30073001002', 14, 'ST ELISABETH', 1, 1),
(3, '30073001003', 14, 'ST MARIA BANTULAN', 0, 0),
(4, '30073001004', 14, 'ST MARIA IMMACULATA', 0, 0),
(5, '30073001005', 14, 'MENARA GADING', 211, 74),
(6, '30073001006', 14, 'SANG TIMUR JANTI', 0, 0),
(7, '30073001007', 14, 'SANTO STEFANUS', 0, 0),
(8, '30073001008', 14, 'SANTO YUSUF', 290, 59);

-- --------------------------------------------------------

--
-- Table structure for table `parokis`
--

CREATE TABLE IF NOT EXISTS `parokis` (
`id` int(11) NOT NULL,
  `kas_id` int(11) NOT NULL,
  `code_paroki` varchar(255) NOT NULL,
  `nama_paroki` varchar(200) NOT NULL,
  `kota` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parokis`
--

INSERT INTO `parokis` (`id`, `kas_id`, `code_paroki`, `nama_paroki`, `kota`) VALUES
(1, 1, '30001', 'St. Yusuf', 'Ambarawa'),
(2, 1, '30002', 'St. Yusuf', 'Gedangan - Semarang'),
(3, 1, '30003', 'St. Antonius', 'Purbayan - Surakarta'),
(4, 1, '30004', 'SPM Ratu Rosario Suci', 'Randusari - Semarang'),
(5, 1, '30005', 'Keluarga Kudus', 'Atmodirono'),
(6, 1, '30006', 'Hati Kudus Tuhan Yesus', 'Pugeran - Yogyakarta'),
(7, 1, '30007', 'St. Thomas Rasul', 'Bedono'),
(8, 1, '30008', 'St. Yusuf', 'Bintaran - Yogyakarta'),
(9, 1, '30009', 'St. Paulus Miki', 'Salatiga'),
(10, 1, '30010', 'St. Petrus', 'Purwosari - Surakarta'),
(11, 1, '30011', 'St. Isidorus', 'Sukorejo'),
(12, 1, '30012', 'Hati St Maria Tak Bercela', 'Kumetiran - Yogyakarta'),
(13, 1, '30013', 'St. Yusuf', 'Pati'),
(14, 1, '30014', 'St. Yohanes Evangelista', 'Kudus'),
(15, 1, '30015', 'St. Petrus dan Paulus', 'Temanggung'),
(16, 1, '30016', 'Marganingsih', 'Kalasan - Yogyakarta'),
(17, 1, '30017', 'St. Maria Assumpta', 'Pakem - Yogyakarta'),
(18, 1, '30018', 'St. Maria Bunda Penasehat Baik', 'Wates - Yogyakarta'),
(19, 1, '30019', 'St. Theresia Lisieux', 'Boro - Kulon Progo'),
(20, 1, '30020', 'Hati Kudus Tuhan Yesus', 'Ganjuran - Bantul'),
(21, 1, '30021', 'St. Maria Assumpta', 'Klaten'),
(22, 1, '30022', 'St. Maria Tak Bercela', 'Nanggulan - Kulon Progo'),
(23, 1, '30023', 'St. Maria Lourdes', 'Promasan - Kulon Progo'),
(24, 1, '30024', 'Hati Yesus Yang Mahakudus', 'Purwodadi'),
(25, 1, '30025', 'St. Maria Bunda Kristus', 'Wedi - Klaten'),
(26, 1, '30026', 'St. Yakobus', 'Bantul'),
(27, 1, '30027', 'St. Pius  X', 'Karanganyar'),
(28, 1, '30028', 'St. Yusuf Pekerja', 'Mertoyudan'),
(29, 1, '30029', 'St. Antonius', 'Muntilan'),
(30, 1, '30030', 'St. Yohanes Rasul', 'Somohitan - Turi Yogyakarta'),
(31, 1, '30031', 'St. Maria Fatima', 'Sragen'),
(32, 1, '30032', 'St. Petrus Canisius', 'Wonosari'),
(33, 1, '30033', 'St. Maria Assumpta', 'Gamping - Yogyakarta'),
(34, 1, '30034', 'St. Ignatius', 'Magelang_ignatius'),
(35, 1, '30036', 'St. Mikael', 'Adm. Demak'),
(36, 1, '30038', 'Hati Tak Bernoda SP Maria', 'Boyolali'),
(37, 1, '30039', 'Kristus Raja', 'Baciro - Yogyakarta'),
(38, 1, '30040', 'St. Fransiscus Xaverius', 'Kebondalem - Semarang'),
(39, 1, '30041', 'St. Yosef', 'Medari - Sleman'),
(40, 1, '30042', 'St. Yohanes Rasul', 'Delanggu'),
(41, 1, '30043', 'San Inigo', 'Dirjodipuran - Surakarta'),
(42, 1, '30044', 'St. Petrus dan Paulus', 'Klepu - Sleman'),
(43, 1, '30045', 'St. Yusuf', 'Baturetno'),
(44, 1, '30046', 'Albertus Magnus', 'Jetis - Yogyakarta'),
(45, 1, '30047', 'St. Stephanus', 'Jumapolo'),
(46, 1, '30048', 'St. Antonius Padua', 'Adm. Kendal'),
(47, 1, '30049', 'St. Athanasius Agung', 'Karangpanas - Semarang'),
(48, 1, '30050', 'Mater Dei', 'Lampersari'),
(49, 1, '30051', 'St. Petrus dan Paulus', 'Babadan - Yogyakarta'),
(50, 1, '30052', 'St. Maria', 'Kartasura'),
(51, 1, '30053', 'St. Maria La Salette', 'Adm. Juwana'),
(52, 1, '30054', 'St. Theresia', 'Jombor - Klaten'),
(53, 1, '30055', 'St. Theresia', 'Sedayu - Yogyakarta'),
(54, 1, '30056', 'Kristus Raja', 'Ungaran'),
(55, 1, '30057', 'Hati Kudus Tuhan Yesus', 'Simo'),
(56, 1, '30058', 'St. Theresia Kanak-Kanak Yesus', 'Bongsari - Semarang'),
(57, 1, '30059', 'St. Aloysius Gonzaga', 'Mlati - Sleman'),
(58, 1, '30060', 'St. Maria Lourdes', 'Sumber'),
(59, 1, '30061', 'St. Yohanes Rasul', 'Wonogiri'),
(60, 1, '30062', 'St. Fransiscus Xaverius', 'Kiduloji - Yogyakarta'),
(61, 1, '30063', 'Hati Kudus Yesus', 'Sukoharjo'),
(62, 1, '30064', 'St. Petrus', 'Adm. Borobudur'),
(63, 1, '30065', 'St. Paulus', 'Sendangguwo'),
(64, 1, '30066', 'St. Maria Fatima', 'Magelang_fatima'),
(65, 1, '30067', 'St. Kristoforus', 'Banyutemumpang'),
(66, 1, '30068', 'St. Petrus', 'Adm. Gubug'),
(67, 1, '30069', 'St. Antonius de Padua', 'Kotabaru - Yogyakarta'),
(68, 1, '30070', 'St. Theresia', 'Salam'),
(69, 1, '30071', 'St. Stanislaus', 'Girisonta'),
(70, 1, '30072', 'St. Petrus dan Paulus', 'Minomartani - Yogyakarta'),
(71, 1, '30073', 'St. Maria Assumpta', 'Babarsari - Yogyakarta'),
(72, 1, '30074', 'St. Alfonsus de Liguori', 'Adm. Nandan - Yogyakarta'),
(73, 1, '30075', 'St. Maria Fatima', 'Banyumanik - Semarang'),
(74, 1, '30076', 'St. Maria Diangkat Ke Surga', 'Palur'),
(75, 1, '30077', 'St. Mikael', 'Panca Arga - Magelang'),
(76, 1, '30078', 'Keluarga Kudus', 'Parakan'),
(77, 1, '30079', 'Keluarga Kudus', 'Banteng - Yogyakarta'),
(78, 1, '30080', 'St. Paulus', 'Kleco - Surakarta'),
(79, 1, '30081', 'St. Martinus', 'Weleri'),
(80, 1, '30082', 'Hati Kudus', 'Tanah Mas - Semarang'),
(81, 1, '30083', 'St. Ignatius', 'Danan'),
(82, 1, '30084', 'Roh Kudus', 'Kebonarum - Klaten'),
(83, 1, '30085', 'St. Yohanes Rasul', 'Pringwulung - Yogyakarta'),
(84, 1, '30086', 'St. Yusuf Pekerja', 'Gondangwinangun'),
(85, 1, '30087', 'St. Yusuf', 'Adm. Bandung - Wonosari'),
(86, 1, '30088', 'St. Petrus dan Paulus', 'Kelor - Wonosari'),
(87, 1, '30089', 'St. Mikael', 'Pangkalan Adisutjipto - Yogyakarta'),
(88, 1, '30090', 'Kristus Raja Semesta', 'Adm. Tegalrejo'),
(89, 1, '30091', 'Pringgolayan', 'Adm. Pringgolayan - Yogyakarta'),
(90, 1, '30035', 'St. Maria Regina', 'Purbowadayan Surakarta'),
(91, 1, '30037', 'Stella Maris', 'Jepara'),
(92, 1, '30092', 'St Maria Diangkat ke Surga', 'Dalem - Klaten'),
(93, 1, '30093', 'St Maria Ratu', 'Bayat - Klaten'),
(94, 1, '30094', 'St. Ignatius', 'Banjardawa - Semarang'),
(95, 1, '30095', 'Santo Krisologus', 'BSB - Semarang'),
(96, 1, '30096', 'St.Ignatius', 'Krapyak - Semarang'),
(97, 1, '30097', 'Hyang Triniji Suci', 'Ngaliyan - Sukorejo'),
(98, 1, '30098', 'St. Petrus', 'Sambiroto - Semarang'),
(99, 1, '30099', 'St. Paulus', 'Sampangan - Semarang'),
(100, 1, '30100', 'St. Mikael', 'Semarang Indah'),
(101, 1, '30101', 'St. Emannuel', 'Ngawen - Muntilan'),
(102, 1, '30102', 'St. Yusuf', 'Wonokerso - Sawangan'),
(103, 1, '30103', 'St. Maria Assumpta', 'Cawas - Klaten'),
(104, 1, '30104', 'St. Petrus', 'Gemolong - Surakarta'),
(105, 1, '30105', 'St. Ignatius', 'Ketandan - Klaten'),
(106, 1, '30106', 'Kristus Raja', 'Solo Baru'),
(107, 1, '30107', 'St.Maria Rosari', 'Gesikan - Bantul'),
(108, 1, '30108', 'Mater Dei', 'Imogiri - Bantul'),
(109, 1, '30109', 'St.Paulus', 'Seminari Tinggi - DIY'),
(110, 1, '30110', 'Santa Maria', 'Pelem Dukuh - Nanggulan'),
(111, 1, '30111', 'St. Yohanes Chrisostomus', 'Pojok - Klepu'),
(112, 1, '30112', 'St. Thomas', 'Seyegan - Medari'),
(113, 1, '30113', 'Pusat Pastoral PSM', 'PSM Muntilan'),
(114, 1, '30114', 'Seminari TOR Sanjaya', 'TOR Sanjaya-Semarang');

-- --------------------------------------------------------

--
-- Table structure for table `pasturs`
--

CREATE TABLE IF NOT EXISTS `pasturs` (
`id` int(11) NOT NULL,
  `code_pastur` int(255) NOT NULL,
  `paroki_id` int(11) NOT NULL,
  `nama_pastur` varchar(200) NOT NULL,
  `mulai` date NOT NULL,
  `berakhir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaans`
--

CREATE TABLE IF NOT EXISTS `pekerjaans` (
`id` int(11) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pekerjaans`
--

INSERT INTO `pekerjaans` (`id`, `pekerjaan`) VALUES
(0, ''),
(1, 'Ahli Ekonomi'),
(2, 'Ahli Hukum: Pengacar'),
(3, 'Ahli (spesialis - la'),
(4, 'Apoteker'),
(5, 'Bidan'),
(6, 'Buruh Tani dan Terna'),
(7, 'Dokter Gigi'),
(8, 'Dokter Hewan'),
(9, 'Dokter Umum/Ahli'),
(10, 'Guide turis'),
(11, 'Juru Masak, Pengolah'),
(12, 'Kontraktor'),
(13, 'Olahragawan'),
(14, 'Pandai Besi'),
(15, 'Pedagang/Usaha Kecil'),
(16, 'Pejabat DPR'),
(17, 'Pejabat Pelaksana: T'),
(18, 'Pekerja Kasar/Buruh'),
(19, 'Pemahat, Pelukis, Se'),
(20, 'Pekerja Rumah Tangga'),
(21, 'Pemborong'),
(22, 'Pemegang Kas, Bendah'),
(23, 'Pemelihara/Tenaga Ge'),
(24, 'Pedangan/Usaha Besar'),
(25, 'Penerbangan/Pelayara'),
(26, 'Pengajar Prasekolah'),
(27, 'Pengajar SD'),
(28, 'Pengajar SLB'),
(29, 'Pengajar SLTA'),
(30, 'Pengajar SLTP'),
(31, 'Pengajar Universitas'),
(32, 'Pengarang, Wartawan,'),
(33, 'Pekerja Sosial'),
(34, 'Pensiun (pernah pega'),
(35, 'Perawat'),
(36, 'Petani dan Peternak'),
(37, 'PNS/Pegawai/Karyawan'),
(38, 'Polisi, TNI'),
(39, 'Psikolog'),
(40, 'Satpam/Security'),
(41, 'Sopir'),
(42, 'Teknisi, Operator/Ah'),
(43, 'Tenaga Management'),
(44, 'Tenaga Pemasaran, Pe'),
(45, 'Tidak dapat bekerja:'),
(46, 'Tukang Batu'),
(47, 'Tukang Cat'),
(48, 'Tukang Jahit'),
(49, 'Tukang Kayu'),
(50, 'Tukang Las'),
(51, 'Tukang Listrik, Beng'),
(52, 'Penjual Jasa: tukang'),
(53, 'Jasa Uang: pengganda'),
(54, 'Pengrajin: Kulit, Te'),
(55, 'Romo/Bruder/Suster'),
(56, 'Swasta'),
(57, 'Pedagang/Usaha Sedan'),
(58, 'Serabutan/Tenaga Lep'),
(59, 'Manager'),
(60, 'Tidak bekerja'),
(61, 'Sdg mencari Kerja'),
(62, 'Ibu Rumah Tangga'),
(63, 'PHK'),
(64, 'Pelajar'),
(65, 'Mahasiswa'),
(66, 'Katekis/Tenaga Pasto'),
(67, 'Guru Agama di Sekola'),
(68, 'Tenaga Jasa: pelayan'),
(69, 'Nelayan'),
(70, 'Buruh Pabrik'),
(71, 'Buruh Tambang'),
(72, 'Buruh Perusahaan'),
(73, 'Peneliti'),
(74, 'Tenaga Administrasi'),
(75, 'Konsultan'),
(76, '....'),
(77, '.....'),
(99, '-'),
(100, 'Anak berusia kurang '),
(101, '-');

-- --------------------------------------------------------

--
-- Table structure for table `pendidikans`
--

CREATE TABLE IF NOT EXISTS `pendidikans` (
`id` int(11) NOT NULL,
  `pendidikan` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendidikans`
--

INSERT INTO `pendidikans` (`id`, `pendidikan`) VALUES
(0, ''),
(1, 'SD'),
(2, 'SLTP'),
(3, 'SLTA'),
(4, 'Diploma (D'),
(5, 'Sarjana (S'),
(6, 'S2/Akta 5'),
(7, 'S3'),
(11, 'SD - K'),
(12, 'SLTP - K'),
(13, 'SLTA - K'),
(14, 'D1/D2/D3 -'),
(15, 'S1/D4 - K'),
(16, 'S2/Akta 5 '),
(17, 'S3 - K'),
(21, 'SD - NK'),
(22, 'SLTP - NK'),
(23, 'SLTA - NK'),
(24, 'D1/D2/D3 -'),
(25, 'S1/D4 - NK'),
(26, 'S2/Akta 5 '),
(27, 'Belum seko'),
(33, 'Usia 7-12 '),
(44, 'Usia 13-15'),
(77, 'Buta aksar'),
(99, '-');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengurus`
--

CREATE TABLE IF NOT EXISTS `pengurus` (
`id` int(11) NOT NULL,
  `jenis_pengurus` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengurus`
--

INSERT INTO `pengurus` (`id`, `jenis_pengurus`) VALUES
(1, 'Anggota Dewan Paroki'),
(2, 'Pengurus Lingkungan'),
(3, 'Pengurus Kel Kategorial'),
(4, 'Pengurus Ormas Katolik'),
(5, 'Pengurus Tim Kerja'),
(6, 'Warga umat biasa'),
(7, '-');

-- --------------------------------------------------------

--
-- Table structure for table `pernikahans`
--

CREATE TABLE IF NOT EXISTS `pernikahans` (
`id` int(11) NOT NULL,
  `kode_stasi` int(11) DEFAULT NULL,
  `kode_LM` int(11) DEFAULT NULL,
  `no` int(11) DEFAULT NULL,
  `halaman` int(11) DEFAULT NULL,
  `umat_id` int(11) DEFAULT NULL,
  `pasangan_id` int(11) DEFAULT NULL,
  `nm_pasangan` varchar(150) DEFAULT NULL,
  `alamat_pasangan` varchar(150) DEFAULT NULL,
  `telp_pasangan` varchar(50) DEFAULT NULL,
  `tmplhr_pasangan` varchar(150) DEFAULT NULL,
  `tgllhr_pasangan` date DEFAULT NULL,
  `nama_ayah` varchar(200) DEFAULT NULL,
  `nama_ibu` varchar(200) DEFAULT NULL,
  `tmppernikahan` varchar(150) NOT NULL,
  `tglpernikahan` date NOT NULL,
  `kota` varchar(100) DEFAULT NULL,
  `saksi1` varchar(100) DEFAULT NULL,
  `saksi2` varchar(100) DEFAULT NULL,
  `dispensasi` varchar(255) DEFAULT NULL,
  `romopernikahan` varchar(150) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pernikahans`
--

INSERT INTO `pernikahans` (`id`, `kode_stasi`, `kode_LM`, `no`, `halaman`, `umat_id`, `pasangan_id`, `nm_pasangan`, `alamat_pasangan`, `telp_pasangan`, `tmplhr_pasangan`, `tgllhr_pasangan`, `nama_ayah`, `nama_ibu`, `tmppernikahan`, `tglpernikahan`, `kota`, `saksi1`, `saksi2`, `dispensasi`, `romopernikahan`) VALUES
(1, 3776, 1, 2, 3, 20, 5, NULL, NULL, NULL, NULL, NULL, '', '', 'Babarsari', '2016-11-30', 'Yogyakarta', 'Yohan', 'Yohana', '-', 'Xaveriues B.'),
(2, 3776, 1, 3, 3, 4, NULL, 'Ervan', 'Jl. Sosrowijayan 426 Yogyakarta', '0912515125', 'Yogyakarta', '1975-11-30', 'Suwarno', 'Sri', 'Babarsari', '2016-11-07', 'Yogyakarta', 'Yohan', 'Yohana', '-', 'Xaveriues B.'),
(3, 3776, 1, 4, 3, 9, NULL, 'Jarwina', 'Paten Jurang no. 31', '0852151252', 'Yogyakarta', '1988-11-30', 'Sudaya', 'Wati', 'Babarsari', '2016-11-08', 'Yogyakarta', 'Yohan', 'Yohana', '-', 'Xaveriues B.'),
(4, 3776, 1, 5, 3, 12, 22, NULL, NULL, NULL, NULL, NULL, '', '', 'Babarsari', '2016-11-02', 'Yogyakarta', 'Yohan', 'Yohana', '-', 'Xaveriues B.'),
(7, 3776, 1, 6, 3, 8, 21, NULL, NULL, NULL, NULL, NULL, '', '', 'Babarsari', '2016-02-02', 'Yogyakarta', 'Yohan', 'Yohana', '-', 'Xaveriues B.'),
(8, 3776, 2, 1, 3, 29, 16, NULL, NULL, NULL, NULL, NULL, '', '', 'Babarsari', '2016-11-01', 'Yogyakarta', 'Yohan', 'Yohana', '-', 'Xaveriues B.'),
(9, 3776, 2, 2, 3, 13, NULL, 'Ervan', 'Jl. Sosrowijayanx 426 Yogyakarta', '085151251', 'Yogyakarta', '1981-11-01', 'Hadining', 'Ratih K.', 'Babarsari', '2016-10-31', 'Yogyakarta', 'Yohan', 'Yohana', '-', 'Xaveriues B.'),
(10, 3776, 2, 3, 3, 31, 28, NULL, NULL, NULL, NULL, NULL, '', '', 'Babarsari', '2016-11-01', 'Yogyakarta', 'Yohan', 'Yohana', '-', 'Xaveriues B.'),
(11, 3776, 2, 4, 1, 23, 68, NULL, NULL, NULL, NULL, NULL, '', '', 'Babarsari', '2016-11-22', 'Yogyakarta', 'Yohan', 'Yohana', '-', 'Xaverius B.');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
`id` int(11) NOT NULL,
  `key_setting` varchar(50) NOT NULL,
  `value_setting` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key_setting`, `value_setting`) VALUES
(1, 'baptis', 'cccccc'),
(2, 'krisma', 'dddddd'),
(3, 'pernikahan', 'BERNARDUS KLAUDIUS');

-- --------------------------------------------------------

--
-- Table structure for table `statusbaptis`
--

CREATE TABLE IF NOT EXISTS `statusbaptis` (
`id` int(11) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statusbaptis`
--

INSERT INTO `statusbaptis` (`id`, `status`) VALUES
(1, 'Saat berusia 0-7 th'),
(2, 'Saat berusia 8-18 th'),
(3, 'Dewasa dari Islam'),
(4, 'Dewasa dari Hindu'),
(5, 'Dewasa dari Budha'),
(6, 'Dewasa dari Konghucu'),
(7, 'Diterima dari Kristen'),
(8, 'Dewasa dari lain-lain'),
(9, 'Belum baptis'),
(10, 'Katekumen'),
(11, '-');

-- --------------------------------------------------------

--
-- Table structure for table `statusekonomis`
--

CREATE TABLE IF NOT EXISTS `statusekonomis` (
`id` int(11) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statusekonomis`
--

INSERT INTO `statusekonomis` (`id`, `status`) VALUES
(0, '-'),
(1, 'Bisa membantu'),
(2, 'Biasa/cukup'),
(3, 'Memerlukan bantuan');

-- --------------------------------------------------------

--
-- Table structure for table `statuskekatolikans`
--

CREATE TABLE IF NOT EXISTS `statuskekatolikans` (
`id` int(11) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statuskekatolikans`
--

INSERT INTO `statuskekatolikans` (`id`, `status`) VALUES
(0, '-'),
(1, 'Grj TJb, Aktif di Lingk'),
(2, 'Grj TJb,  kdg aktif di Link'),
(3, 'Gereja saja'),
(4, 'Aktif di Grj+Link lain'),
(5, 'Grj non Paroki, Aktif di Link'),
(6, 'NaPas'),
(7, 'Non Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `statuskesehatans`
--

CREATE TABLE IF NOT EXISTS `statuskesehatans` (
`id` int(11) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statuskesehatans`
--

INSERT INTO `statuskesehatans` (`id`, `status`) VALUES
(0, 'Normal'),
(1, 'Cacat fisik'),
(2, 'Buta'),
(4, 'Bisu/tuli'),
(8, 'Sulit mengurus diri sendiri'),
(16, 'Kesulitan mengingat'),
(32, 'Penyakit kronis'),
(55, 'Pikun'),
(99, '-');

-- --------------------------------------------------------

--
-- Table structure for table `statuspernikahans`
--

CREATE TABLE IF NOT EXISTS `statuspernikahans` (
`id` int(11) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statuspernikahans`
--

INSERT INTO `statuspernikahans` (`id`, `status`) VALUES
(0, '-'),
(1, 'Belum nikah'),
(2, 'Sah Katolik'),
(3, 'Sah beda agama'),
(4, 'Sah beda Gereja'),
(5, 'Nikah di luar Gereja'),
(6, 'Ditinggal pasangannya'),
(7, 'Krisis berkepanjangan'),
(8, 'Janda/duda mati'),
(9, 'Rm/Br/Sr dari Paroki'),
(10, 'Rm/Br/Sr bekerja di paroki'),
(11, 'Hidup bersama tanpa perkawinan');

-- --------------------------------------------------------

--
-- Table structure for table `statussosials`
--

CREATE TABLE IF NOT EXISTS `statussosials` (
`id` int(11) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statussosials`
--

INSERT INTO `statussosials` (`id`, `status`) VALUES
(0, '-'),
(1, 'RT/RW/Keluharan'),
(2, 'Pengurus LSM'),
(3, 'Pengurus Ormas/Partai Politik'),
(4, 'Warga biasa');

-- --------------------------------------------------------

--
-- Table structure for table `sukus`
--

CREATE TABLE IF NOT EXISTS `sukus` (
`id` int(11) NOT NULL,
  `suku` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sukus`
--

INSERT INTO `sukus` (`id`, `suku`) VALUES
(0, ''),
(1, 'Ambon'),
(2, 'Bali'),
(3, 'Batak'),
(4, 'Betawi'),
(5, 'Bugis'),
(6, 'Dayak'),
(7, 'Flores'),
(8, 'Papua'),
(9, 'Jawa'),
(10, 'Madura'),
(11, 'Makasar'),
(12, 'Minangkabau'),
(13, 'Nias'),
(14, 'Sumbawa'),
(15, 'Sunda'),
(16, 'Timor'),
(17, 'Tionghoa'),
(18, 'Toraja'),
(19, 'Non Indonesia'),
(20, 'Lainnya'),
(21, 'Komering'),
(22, 'Batuputih'),
(23, 'Sumatra Selatan'),
(24, '....'),
(25, '.....'),
(26, 'Suku di Maluku'),
(27, 'Suku di Sumatra'),
(28, 'Suku di Batak'),
(29, 'Suku di NTB'),
(30, 'Suku di Sulawesi'),
(31, 'Suku di Dayak'),
(32, 'Suku di Flores/NTT'),
(33, 'Suku di Papua'),
(99, '-');

-- --------------------------------------------------------

--
-- Table structure for table `tempattinggals`
--

CREATE TABLE IF NOT EXISTS `tempattinggals` (
`id` int(11) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tempattinggals`
--

INSERT INTO `tempattinggals` (`id`, `alamat`) VALUES
(0, ''),
(99, '-'),
(100, 'Di dlm wilayah paroki setempat'),
(201, 'St. Yusuf - Ambarawa'),
(202, 'St. Yusuf - Gedangan'),
(203, 'St. Antonius - Purbayan'),
(204, 'SPM Ratu Rosario Suci - Randusari'),
(205, 'Keluarga Kudus - Atmodirono'),
(206, 'Hati Kudus Tuhan Yesus - Pugeran'),
(207, 'St. Thomas Rasul - Bedono'),
(208, 'St. Yusuf - Bintaran'),
(209, 'St. Paulus Miki - Salatiga'),
(210, 'St. Petrus - Purwosari'),
(211, 'St. Isidorus - Sukorejo'),
(212, 'Hati St. Maria Tak Bercela - Bintaran'),
(213, 'St. Yusuf - Pati'),
(214, 'St. Johanes Evangelista - Kudus'),
(215, 'St. Petrus dan Paulus - Temanggung'),
(216, 'Marganingsih - Kalasan'),
(217, 'St. Maria Assumpta - Pakem'),
(218, 'St. Maria Bunda Penasehat Baik - Wates'),
(219, 'St. Theresia Lisieux - Boro'),
(220, 'Hati Kudus Tuhan Yesus - Ganjuran'),
(221, 'St. Maria Assumpta - Klaten'),
(222, 'St. Maria Tak Bercela - Nanggulan'),
(223, 'St. Maria Lourdes - Promasan'),
(224, 'Hati Kudus Yang Mahakudus - Purwodadi'),
(225, 'St. Maria Bunda Kristus - Wedi'),
(226, 'St. Yakobus - Bantul'),
(227, 'St. Pius X - Karanganyar'),
(228, 'St. Yusuf Pekerja - Mertoyudan'),
(229, 'St. Antonius - Muntilan'),
(230, 'St. Yohanes Rasul - Somohitan'),
(231, 'St. Maria Fatima - Sragen'),
(232, 'St. Petrus Canisius - Wonosari'),
(233, 'St. Maria Assumpta - Gamping'),
(234, 'St. Ignatius - Magelang'),
(235, 'St. Maria Regina - Purbowardayan'),
(236, 'St. Mikael - Adm. Demak'),
(237, 'Stella Maris - Jepara'),
(238, 'Hati Tak Bernoda SP Maria - Boyolali'),
(239, 'Kristus Raja - Baciro'),
(240, 'St. Fransiscus Xaverius - Kebondalem'),
(241, 'St. Yosef - Medari'),
(242, 'St. Yohanes Rasul - Delanggu'),
(243, 'San Inigo - Dirjodipuran'),
(244, 'St. Petrus dan Paulus - Klepu'),
(245, 'St. Yusuf - Baturetno'),
(246, 'Albertus Magnus - Jetis'),
(247, 'St. Stephanus - Jumapolo'),
(248, 'St. Antonis Padua - Kendal'),
(249, 'St. Athanasius Agung - Karangpanas'),
(250, 'Mater Dei - Lampersari'),
(251, 'St. Petrus dan Paulus - Adm. Babadan'),
(252, 'St. Maria - Kartasura'),
(253, 'St. Maria La Salette - Adm. Juwana'),
(254, 'St. Theresia - Jombor'),
(255, 'St. Theresia - Sedayu'),
(256, 'Kristus Raja - Ungaran'),
(257, 'Hati Kudus Tuhan Yesus - Adm. Simo'),
(258, 'St. Theresia Kanak2 Yesus - Bongsari'),
(259, 'St. Aloysius Gonzaga - Mlati'),
(260, 'St. Maria Lourdes - Sumber'),
(261, 'St. Yohanes Rasul - Wonogiri'),
(262, 'St. Fransiscus Xaverius - Kidul Loji'),
(263, 'Hati Kudus Yesus - Sukoharjo'),
(264, 'St. Petrus - Adm. Borobudur'),
(265, 'St. Paulus - Sendangguwo'),
(266, 'St. Maria Fatima - Magelang'),
(267, 'St. Kristoforus - Banyutemumpang'),
(268, 'St. Petrus - Adm. Gubug'),
(269, 'St. Antonius de Padua - Kota Baru'),
(270, 'St. Theresia - Salam'),
(271, 'St. Stanislaus - Girisonta'),
(272, 'St. Petrus dan Paulus - Minomartani'),
(273, 'St. Maria Assumpta - Babarsari'),
(274, 'St. Alfonsus de Ligouri - Adm. Nandan'),
(275, 'St. Maria Fatima - Banyumanik'),
(276, 'St. Maria Diangkat Kesurga - Palur'),
(277, 'St. Mikael - Panca Arga'),
(278, 'Keluarga Kudus - Parakan'),
(279, 'Keluarga Kudus - Banteng'),
(280, 'St. Paulus - Kleco'),
(281, 'St. Martinus - Weleri'),
(282, 'Hati Kudus - Tanah Mas'),
(283, 'St. Ignatius - Danan'),
(284, 'Roh Kudus - Kebonarum'),
(285, 'St. Yohanes Rasul - Pringwulung'),
(286, 'St. Yusuf Pekerja - Gondangwinanugn'),
(287, 'St. Yusuf - Adm. Bandung Wonosari'),
(288, 'St. Petrus dan Paulus - Kelor Wonosari'),
(289, 'St. Mikael - Pangkalan Adisutjipto Yogya'),
(290, 'Kristus Raja Semesta - Tegalrejo'),
(291, 'Pringgolayan - Adm. Pringgolayan Yogya'),
(301, 'Agats-Asmat'),
(302, 'Ambonia'),
(303, 'Atambua'),
(304, 'Bandung'),
(305, 'Banjarmasin'),
(306, 'Bogor'),
(307, 'Denpasar'),
(308, 'Ende'),
(309, 'Jakarta'),
(310, 'Jayapura'),
(311, 'Ketapang'),
(312, 'Kupang'),
(313, 'Larantuka'),
(314, 'Makasar'),
(315, 'Malang'),
(316, 'Manado'),
(317, 'Manukwari - Sorong'),
(318, 'Maumere'),
(319, 'Medan'),
(320, 'Merauke'),
(321, 'Padang'),
(322, 'Palangkaraya'),
(323, 'Palembang'),
(324, 'Pangkalpinang'),
(325, 'Pontianak'),
(326, 'Purwokerto'),
(327, 'Ruteng'),
(328, 'Samarinda'),
(329, 'Sanggau'),
(330, 'Semarang'),
(331, 'Sibolga'),
(332, 'Sintang'),
(333, 'Surabaya'),
(334, 'Tanjungkarang'),
(335, 'Tanjung Selor'),
(336, 'Timika'),
(337, 'Weetebula'),
(338, 'TNI/POLRI'),
(339, 'Luar Negri'),
(400, 'Kost di dlm paroki');

-- --------------------------------------------------------

--
-- Table structure for table `umats`
--

CREATE TABLE IF NOT EXISTS `umats` (
`id` int(11) NOT NULL,
  `kode_umat` varchar(100) NOT NULL,
  `id_kk` int(11) NOT NULL,
  `id_hubkk` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `tlp` varchar(20) NOT NULL,
  `jenis_kelamin` enum('L','P','','') NOT NULL,
  `goldarah` text,
  `tgl_lahir` date NOT NULL,
  `tmplahir` varchar(100) NOT NULL,
  `id_agama` int(11) NOT NULL,
  `id_statusbaptis` int(11) NOT NULL,
  `tmpbaptis` varchar(100) NOT NULL,
  `tglbaptis` date NOT NULL,
  `liberbap` varchar(255) NOT NULL,
  `romobaptis` varchar(255) NOT NULL,
  `namabaptis` varchar(100) NOT NULL,
  `stskrisma` varchar(1) NOT NULL DEFAULT '0',
  `namakrisma` varchar(100) NOT NULL,
  `tmpkrisma` varchar(100) NOT NULL,
  `tglkrisma` date NOT NULL,
  `romokrisma` varchar(255) NOT NULL,
  `stskomuni` varchar(1) NOT NULL DEFAULT '0',
  `tmpkomuni` varchar(100) NOT NULL,
  `tglkomuni` date NOT NULL,
  `id_statuspernikahan` int(11) DEFAULT NULL,
  `tempatnikah` varchar(100) NOT NULL COMMENT 'untuk menyimpan data tempat menikah',
  `kotamenikah` varchar(100) DEFAULT NULL,
  `tglnikah` date NOT NULL COMMENT 'menyimpan tanggal menikah',
  `libermat` varchar(255) NOT NULL,
  `romopernikahan` varchar(255) NOT NULL,
  `id_pendidikan` int(11) NOT NULL,
  `id_bidstudi` int(11) NOT NULL,
  `id_pekerjaan` int(11) NOT NULL,
  `id_suku` int(11) NOT NULL,
  `id_tempattinggal` int(11) NOT NULL,
  `lamatinggal` tinyint(3) NOT NULL,
  `statusTT` tinyint(1) NOT NULL DEFAULT '1',
  `id_keaktifanparoki` int(11) NOT NULL,
  `id_keaktifangereja` int(11) DEFAULT NULL,
  `id_statuskekatolikan` int(11) NOT NULL,
  `id_statusekonomi` int(11) DEFAULT NULL,
  `id_statuskesehatan` int(11) DEFAULT NULL,
  `id_statussosial` int(11) NOT NULL,
  `jeniskk` tinyint(1) NOT NULL DEFAULT '0',
  `statuspindah` tinyint(1) NOT NULL DEFAULT '0',
  `statuskematian` tinyint(1) NOT NULL DEFAULT '0',
  `nama_ayah` varchar(200) DEFAULT NULL,
  `nama_ibu` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1758 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `umats`
--

INSERT INTO `umats` (`id`, `kode_umat`, `id_kk`, `id_hubkk`, `nama`, `email`, `alamat`, `tlp`, `jenis_kelamin`, `goldarah`, `tgl_lahir`, `tmplahir`, `id_agama`, `id_statusbaptis`, `tmpbaptis`, `tglbaptis`, `liberbap`, `romobaptis`, `namabaptis`, `stskrisma`, `namakrisma`, `tmpkrisma`, `tglkrisma`, `romokrisma`, `stskomuni`, `tmpkomuni`, `tglkomuni`, `id_statuspernikahan`, `tempatnikah`, `kotamenikah`, `tglnikah`, `libermat`, `romopernikahan`, `id_pendidikan`, `id_bidstudi`, `id_pekerjaan`, `id_suku`, `id_tempattinggal`, `lamatinggal`, `statusTT`, `id_keaktifanparoki`, `id_keaktifangereja`, `id_statuskekatolikan`, `id_statusekonomi`, `id_statuskesehatan`, `id_statussosial`, `jeniskk`, `statuspindah`, `statuskematian`, `nama_ayah`, `nama_ibu`) VALUES
(1, '300730010080010001', 1, 1, 'AGUS SETIONO WIBOWO, THEODORUS', '', 'TAMBAK BAYAN XV / 1A', '(0274) 485400', 'L', 'A', '1966-02-10', 'TEMANGGUNG', 3, 7, 'TEMANGGUNG', '1999-03-27', 'P.I HAL. 12 NO.B/PLPN/23', '', '', '2', '', 'TDK', '0000-00-00', '', '0', '', '0000-00-00', 2, 'KLATEN', NULL, '1991-06-19', '146', '', 5, 39, 56, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(2, '300730010080010002', 1, 2, 'NUNIK SRI LESTARI, THERESIA', '', 'TAMBAK BAYAN XV / 1A', '(0274) 485400', 'P', 'AB', '1966-06-05', 'KLATEN', 3, 2, 'KLATEN', '1976-12-15', 'BUKU KE: XXII NO. 788', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'KLATEN', NULL, '1991-06-19', '146', '', 5, 39, 62, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(3, '300730010080010003', 1, 3, 'ASTRID WIBOWO, GABRIELA', '', 'TAMBAK BAYAN XV / 1A', '(0274) 485400', 'P', 'AB', '1993-09-29', 'YOGYAKARTA', 3, 2, 'YOGYAKARTA', '2004-01-09', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 64, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(4, '300730010080010004', 499, 1, 'KRISNASHANTI WIBOWO, PATRICIA', '', 'TAMBAK BAYAN XV / 1A', '(0274) 485400', 'P', 'AB', '1996-10-15', 'YOGYAKARTA', 3, 2, 'YOGYAKARTA', '2006-06-17', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 3, 'a', 's', '2016-11-07', '', '', 2, 66, 64, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(5, '300730010080010005', 498, 1, 'KRISHNAMURTI WIBOWO, NICHOLAS', '', 'TAMBAK BAYAN XV / 1A', '(0274) 485400', 'L', 'A', '2000-07-30', 'YOGYAKARTA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'a', 'a', '2016-11-30', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, 'su', 'do'),
(6, '300730010080020006', 2, 1, 'NUGROHO SETYO DWI JOKO, THOMAS', '', 'TAMBAK BAYAN VIII/10', '82133760036', 'L', 'O', '1970-09-23', 'SLEMAN', 3, 1, 'BACIRO', '2009-12-22', 'BUKU II. HAL. 135/ NO. 534', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BABARSARI', NULL, '2010-01-20', 'NO.41 / LM .I', '', 5, 70, 56, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(7, '300730010080020007', 2, 2, 'NIA TATARWATI GANDARIA', '', 'TAMBAK BAYAN VIII/10', '82133760036', 'P', 'O', '1981-05-07', 'NIAS', 3, 10, 'BLM', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BABARSARI', NULL, '2010-01-20', 'NO.41 / LM .I', '', 3, 66, 62, 13, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(8, '300730010080020008', 504, 1, 'DONOVAN VINCEN, BENEDIC FRANCISCUS', '', 'TAMBAK BAYAN VIII/10', '82133760036', 'L', 'O', '2004-09-06', 'SLEMAN', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'a', 'asdsa', '2016-02-02', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(9, '300730010080020009', 500, 1, 'GELYA VINCEN, BENEDIC FRANSISCUS', '', 'TAMBAK BAYAN VIII/10', '82133760036', 'L', 'O', '2008-02-13', 'SLEMAN', 3, 1, 'BABARSARI', '2009-12-11', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'asda', 'as', '2016-11-08', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, 'a', 'aaaaa'),
(10, '300730010080030010', 3, 1, 'SUGIASTONO AGUS, HILARIUS', '', 'BABARSARI TB V/9C. RT 11/RW 04', '(0274)487092', 'L', 'O', '1958-01-13', 'BOROBUDUR', 3, 2, 'BOROBUDUR', '1967-12-21', 'D/ 019', '', '', '2', '', 'BOROBUDUR', '1969-06-05', '', '0', '', '0000-00-00', 2, 'SALA', NULL, '1980-03-06', 'LM. III/ FOL. 110/ NO.439', '', 3, 66, 37, 9, 100, 0, 1, 2, 0, 1, 2, 0, 1, 0, 0, 0, NULL, NULL),
(11, '300730010080030011', 3, 2, 'SULASTRI SRI, CATHARINA', '', 'BABARSARI TB V/9C. RT 11/RW 04', '(0274)487092', 'P', 'AB', '1961-04-16', 'SURAKARTA', 3, 3, 'BOROBUDUR', '1982-04-10', 'I/ 113/ 446 B', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'SALA', NULL, '1980-03-06', 'LM. III/ FOL. 110/ NO.439', '', 3, 66, 62, 9, 100, 0, 1, 3, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(12, '300730010080030012', 501, 1, 'HASTRIONO ARGO LIMPAT, HENDRICUS', '', 'BABARSARI TB V/9C. RT 11/RW 04', '(0274)487092', 'L', 'O', '1981-07-07', 'BOROBUDUR', 3, 1, 'BOROBUDUR', '1982-04-10', 'I/ 114/ 448', '', '', '2', '', 'BACIRO', '1994-05-15', '', '0', '', '0000-00-00', 2, 'a', 'a', '2016-11-02', '', '', 15, 70, 37, 9, 309, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(13, '300730010080030013', 506, 1, 'HASTRINDA ISWARI ROSARIO, HEDINIGIS', '', 'BABARSARI TB V/9C. RT 11/RW 04', '(0274)487092', 'P', 'O', '1995-10-07', 'SLEMAN', 3, 1, 'BABARSARI', '1995-11-12', 'IX/ 16/ 46', '', '', '2', '', 'BABARSARI', '2010-12-31', '', '0', '', '0000-00-00', 2, 'a', 'ad', '2016-10-31', '', '', 12, 66, 64, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(14, '300730010080040014', 4, 1, 'SABARNO, YUSTINUS', '', 'BABARSARI, DIRGANTARA II/2', '(0274)485573', 'L', 'B', '1957-09-04', 'KLATEN', 3, 2, 'KLATEN', '1967-04-02', 'VIII/ 212/ 5707', '', '', '2', '', 'KLATEN', '1970-05-25', '', '0', '', '0000-00-00', 2, 'KLATEN', NULL, '1987-06-17', '2560/ 1987/ LM. IV', '', 3, 66, 37, 9, 100, 0, 1, 1, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(15, '300730010080040015', 4, 2, 'RUSMIATI DWI SIWI, THERESIA', '', 'BABARSARI, DIRGANTARA II/2', '(0274)485573', 'P', 'O', '1964-12-06', 'KLATEN', 3, 7, 'KLATEN', '1987-05-04', 'II/ 181/ 724', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'KLATEN', NULL, '1987-06-17', '2560/ 1987/ LM. IV', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(16, '300730010080040016', 505, 1, 'APRINAN, FRANCISCUS', '', 'BABARSARI, DIRGANTARA II/2', '(0274)485573', 'L', 'O', '1988-04-18', 'YOGYAKARTA', 3, 1, 'CONDONGCATUR', '1988-06-26', 'I/ 98/ 391', '', '', '2', '', 'BACIRO', '2004-12-31', '', '0', '', '0000-00-00', 2, 'a', 's', '2016-11-01', '', '', 25, 70, 65, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(17, '300730010080040017', 503, 1, 'BASKOROJATI, AGUSTINUS', '', 'BABARSARI, DIRGANTARA II/2', '(0274)485573', 'L', 'O', '1992-08-15', 'YOGYAKARTA', 3, 1, 'CONDONGCATUR', '1992-11-01', 'I/ 175/ 697', '', '', '2', '', 'BACIRO', '2008-12-31', '', '0', '', '0000-00-00', NULL, 'a', 'a', '2016-11-21', '', '', 25, 13, 65, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(18, '300730010080050018', 5, 1, 'BUDIMAN HENDRA, HENRICUS', '', 'DIRGANTARA II/9 BABARSARI, SLEMAN', '85741856800', 'L', 'A', '1965-05-03', 'PALEMBANG', 3, 2, 'PALEMBANG', '1978-12-15', 'BUKU VIII/ HAL. 99/ NO. 792', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 5, 'SDH', NULL, '0000-00-00', '-', '', 5, 13, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(19, '300730010080050019', 5, 2, 'SUTRIMAH', '', 'DIRGANTARA II/9 BABARSARI, SLEMAN', '85741856800', 'P', 'B', '1978-04-05', 'KULONPROGO', 1, 11, 'TDK', '0000-00-00', '', '', '', '1', '', 'TDK', '0000-00-00', '', '0', '', '0000-00-00', 5, 'SDH', NULL, '0000-00-00', '-', '', 3, 66, 62, 9, 99, 0, 1, 0, 0, 0, 2, 0, 99, 0, 0, 0, NULL, NULL),
(20, '300730010080050020', 498, 2, 'BUDIMAN OLIVIA JESICA', '', 'DIRGANTARA II/9 BABARSARI, SLEMAN', '85741856800', 'P', 'bt', '2005-06-03', 'YOGYAKARTA', 10, 9, 'BLM', '0000-00-00', '', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'a', 'a', '2016-11-30', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, 'awdawdaw', 'zxczxcxzc'),
(21, '300730010080050021', 504, 2, 'BUDIMAN ALICIA SHEILA', '', 'DIRGANTARA II/9 BABARSARI, SLEMAN', '85741856800', 'P', 'bt', '2007-08-11', 'YOGYAKARTA', 3, 9, 'BLM', '0000-00-00', 'BLM', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'a', 'asdsa', '2016-02-02', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(22, '300730010080060022', 501, 2, 'ROSANTI IRA, REGINA', '', 'TAMBAKBAYAN 37A. RT 08/ RW 03, SLEMAN', '-', 'P', 'B', '1955-04-28', 'SURAKARTA', 3, 8, 'BABARSARI', '2007-04-07', 'BUKU I/ HAL. - / NO. 159', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'a', 'a', '2016-11-02', 'NO. 23/ LM I', '', 2, 66, 56, 9, 100, 0, 1, 4, 0, 1, 2, 0, 4, 0, 0, 0, 'cawcacawc', 'zxczxczxxzcxzc'),
(23, '300730010080060023', 508, 1, 'SUHARSA YOSIE, IGNATIUS', '', 'TAMBAKBAYAN 37A. RT 08/ RW 03, SLEMAN', '-', 'L', 'B', '1990-04-05', 'SURAKARTA', 3, 8, 'BABARSARI', '2007-04-07', 'BUKU I/ HAL.- / NO.161', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'Babarsari', 'Yogyakarta', '2016-11-22', '', '', 15, 70, 65, 9, 100, 0, 1, 4, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(24, '300730010080070024', 7, 1, 'MARTASUTAMA SULANTA, ROBERTUS', '', 'TAMBAK BAYAN II/ 27- RT.04/RW.02, SLEMAN', '(0274)485556', 'L', 'A', '1932-04-01', 'SURAKARTA', 3, 3, 'KALASAN', '1959-05-27', 'BUKU IV / NO. 2860', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'KALASAN', NULL, '1959-06-17', 'NO. 258', '', 5, 70, 34, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(25, '300730010080070025', 7, 2, 'WIDIJANINGSIH SRI, THERESIA', '', 'TAMBAK BAYAN II/ 27- RT.04/RW.02, SLEMAN', '(0274)485556', 'P', 'O', '1940-10-31', 'PUGERAN', 3, 1, 'PUGERAN', '1940-11-02', 'BUKU I/ NO. 611', '', '', '2', '', 'PUGERAN', '1950-05-23', '', '0', '', '0000-00-00', 2, 'KALASAN', NULL, '1959-06-17', 'NO. 258', '', 3, 47, 62, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(26, '300730010080080026', 8, 1, 'SUDADIYOTO, PAULUS', '', 'BABARSARI TB 15/17- RT.15/ RE.04', '818267038', 'L', 'B', '1951-11-11', 'KLATEN', 3, 3, 'PRINGWULUNG', '2009-07-13', 'BUKU II/ NO. 923', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'KLATEN', NULL, '2009-06-18', 'BUKU II/ NO. 732', '', 4, 20, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(27, '300730010080080027', 8, 2, 'PRASTIWI, ELISABETH', '', 'BABARSARI TB 15/17- RT.15/ RE.04', '818267038', 'P', 'B', '1961-01-15', 'SEMARANG', 3, 1, 'SEMARANG', '1961-01-17', 'NO. 1395/ LIB. XVIII/ PAG. 224', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'KLATEN', NULL, '2009-06-18', 'BUKU II/ NO. 732', '', 6, 70, 2, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(28, '300730010080090028', 507, 1, 'WAGIMAN, ANDREAS', '', 'BABARSARI TB III/9C, SLEMAN', '87738822182', 'L', 'O', '1955-07-22', 'YOGYAKARTA', 3, 3, 'BACIRO', '1981-06-01', 'BUKU V/ HAL.- / NO.688', '', '', '2', '', 'BACIRO', '1986-07-12', '', '0', '', '0000-00-00', 2, 'asd', 'asd', '2016-11-01', '-', '', 1, 66, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 1, 0, 0, 0, NULL, NULL),
(29, '300730010080090029', 505, 2, 'WAHINI BATHISRI ANA', '', 'BABARSARI TB III/9C, SLEMAN', '87738822182', 'P', 'O', '1975-08-22', 'SLEMAN', 3, 1, 'BACIRO', '1976-02-05', 'BUKU III/ HAL. 226/ NO. 902', '', '', '2', '', 'BACIRO', '1992-10-18', '', '0', '', '0000-00-00', 2, 'a', 's', '2016-11-01', '', '', 1, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(30, '300730010080090030', 9, 3, 'GABRIANTO DANANG, YOHANES', '', 'BABARSARI TB III/9C, SLEMAN', '87738822182', 'L', 'O', '1984-02-04', 'SLEMAN', 3, 1, 'BABARSARI', '1986-03-26', 'BUKU VI/ HAL.213/ NO. 852', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 4, 52, 37, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(31, '300730010080090031', 507, 2, 'MELIANA NIMAS, IMACULATA MARIA', '', 'BABARSARI TB III/9C, SLEMAN', '87738822182', 'P', 'bt', '1999-05-01', 'SLEMAN,', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'asd', 'asd', '2016-11-01', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(32, '300730010080100032', 10, 1, 'SANTOSO BUDI, JOHANES', '', 'BABARSARI TAMBAKBAYAN VII/1, RT.07/RW 03', '(0274)485487', 'L', 'B', '1948-06-19', 'KALASAN', 3, 1, 'KALASAN', '1948-07-11', '-', '', '', '2', '', 'YOGYAKARTA', '1956-09-12', '', '0', '', '0000-00-00', 2, 'JAKARTA', NULL, '1980-04-05', 'II/ FOL. 02/ NO. 05/ 1980', '', 2, 66, 56, 9, 100, 0, 1, 1, 0, 1, 2, 0, 1, 0, 0, 0, NULL, NULL),
(33, '300730010080100033', 10, 2, 'SUDARSIH, MARIA', '', 'BABARSARI TAMBAKBAYAN VII/1, RT.07/RW 03', '(0274)485487', 'P', 'A', '1954-09-06', 'YOGYAKARTA', 3, 8, 'JAKARTA', '1980-04-05', 'NO. 1060/ HAL. 219/ VII', '', '', '2', '', 'JAKARTA', '1980-08-24', '', '0', '', '0000-00-00', 2, 'JAKARTA', NULL, '1980-04-05', 'II/ FOL. 02/ NO. 05/ 1980', '', 2, 66, 62, 9, 100, 0, 1, 1, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(34, '300730010080100034', 10, 3, 'WIDYANINGSIH KRISTANTI', '', 'BABARSARI TAMBAKBAYAN VII/1, RT.07/RW 03', '(0274)485487', 'P', 'A', '1977-12-23', 'JAKARTA', 8, 1, 'SDH-KATO', '1980-04-05', 'NO. 1065/ HAL. 219/VII', '', '', '1', '', 'TDK', '1992-07-12', '', '0', '', '0000-00-00', 5, '', NULL, '0000-00-00', '', '', 4, 70, 56, 9, 100, 0, 1, 0, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(35, '300730010080100035', 10, 3, 'UDIUTOMO, ANDREAS', '', 'BABARSARI TAMBAKBAYAN VII/1, RT.07/RW 03', '(0274)485487', 'L', 'O', '1980-10-22', 'JAKARTA', 3, 1, 'JAKARTA', '1980-12-12', 'NO. 123/31/VIII', '', '', '2', '', 'BACIRO', '1994-05-15', '', '0', '', '0000-00-00', 2, '', NULL, '0000-00-00', '', '', 5, 70, 29, 9, 306, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(36, '300730010080100036', 10, 3, 'PUTRI KARUNIA ADE, FRANSISCA', '', 'BABARSARI TAMBAKBAYAN VII/1, RT.07/RW 03', '(0274)485487', 'P', 'O', '1995-06-01', 'SLEMAN', 3, 1, 'BACIRO', '1995-07-09', 'BUKU. IX/ HAL.03/ NO.2', '', '', '2', '', 'BACIRO', '2008-07-20', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 13, 70, 29, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(37, '300730010080110037', 11, 1, 'UTOMO PRASETYO NOVATUS, RAIMONDUS', '', 'BABARSARI TB IX/5, RT.11/RW/ 04, SLEMAN', '8158917565', 'L', 'O', '1953-08-31', 'CEPU', 3, 4, 'BABARSARI', '1985-12-18', 'BUKU VI/ NO.778/ HAL. 194', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BABARSARI', NULL, '1979-03-24', '-', '', 4, 60, 56, 9, 100, 0, 1, 1, 0, 1, 2, 0, 1, 0, 0, 0, NULL, NULL),
(38, '300730010080110038', 11, 2, 'IRIANI WAIJI, FRANSISCA', '', 'BABARSARI TB IX/5, RT.11/RW/ 04, SLEMAN', '8158917565', 'P', 'A', '1953-03-29', 'YOGYAKARTA', 3, 3, 'BABARSARI', '1985-12-18', 'BUKU VI/ NO. 777/ HAL.-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BABARSARI', NULL, '1979-03-24', '-', '', 2, 66, 62, 9, 100, 0, 1, 2, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(39, '300730010080110039', 11, 3, 'WULANDARI DWI SISKA, THERESIA', '', 'BABARSARI TB IX/5, RT.11/RW/ 04, SLEMAN', '8158917565', 'P', 'A', '1982-06-09', 'YOGYAKARTA', 3, 1, 'BABARSARI', '1985-12-18', 'BUKU VI/ NO.778/ HAL.-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 4, 67, 43, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(40, '300730010080120040', 12, 1, 'SUJARWO, PAULUS', '', 'DIRGANTARA I/17', '(0274)488462', 'L', 'O', '1971-01-01', 'GUMAWANG', 3, 1, 'GUMAWANG', '1971-01-05', 'IX/ 454', '', '', '2', '', 'TDK', '0000-00-00', '', '0', '', '0000-00-00', 2, 'MOJOKERTO', NULL, '2003-06-22', '0956/11/2003', '', 3, 60, 56, 9, 100, 0, 1, 1, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(41, '300730010080120041', 12, 2, 'PURNAMASARI INDRI DIAN', '', 'DIRGANTARA I/17', '(0274)488462', 'P', 'O', '1980-05-12', 'YOGYAKARTA', 3, 2, 'YOGYAKARTA', '1993-12-21', 'VIII/612', '', '', '2', '', 'YOGYAKARTA', '1994-05-15', '', '0', '', '0000-00-00', 2, 'MOJOKERTO', NULL, '2003-06-22', '0956/11/2003', '', 6, 3, 31, 9, 100, 0, 1, 1, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(42, '300730010080120042', 12, 3, 'PUTRI DIAN ANGELITA, MARIA', '', 'DIRGANTARA I/17', '(0274)488462', 'P', 'O', '2004-04-28', 'YOGYAKARTA', 3, 1, 'YOGYAKARTA', '2004-12-19', 'I/ 105', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(43, '300730010080120043', 12, 3, 'FEBRIANO INDRA TIMUR BAPTISTA, JOHANES', '', 'DIRGANTARA I/17', '(0274)488462', 'L', 'O', '2008-02-03', 'YOGYAKARTA', 3, 1, 'YOGYAKARTA', '2008-04-11', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(44, '300730010080130044', 13, 1, 'ERNESTINE, MARGARETHA', '', 'TAMBAK BAYAN VIII/NO.12A BABARSARI', '81215538747', 'P', 'B', '1992-01-18', 'PALEMBANG', 3, 1, 'BANGUNSARI', '1992-10-26', 'BUKU III/HAL.-/NO.859', '', '', '2', '', 'BANGUNSARI', '2004-06-06', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 15, 3, 65, 9, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(45, '300730010080140045', 14, 1, 'SOEBANDI, JULIUS', '', 'DIRGANTARA III/NO.15, RT 07/ RW 02- SLEMAN', '(0274)488605', 'L', 'O', '1942-12-25', 'KLATEN', 3, 2, 'SOLO', '1959-03-20', 'BUKU III/ HAL.45/ NO. 181', '', '', '2', '', 'SOLO', '1960-10-18', '', '0', '', '0000-00-00', 2, 'SURABAYA', NULL, '1975-07-05', 'VEL. L.I/ FOL.26/NO.103/1975', '', 5, 1, 37, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(46, '300730010080140046', 14, 2, 'KASMANI SRI, CATHARINA', '', 'DIRGANTARA III/NO.15, RT 07/ RW 02- SLEMAN', '(0274)488605', 'P', 'A', '1948-05-15', 'SOLO', 3, 3, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'SURABAYA', NULL, '1975-07-05', 'VEL. L.I/ FOL.26/NO.103/1975', '', 4, 23, 37, 9, 100, 0, 1, 2, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(47, '300730010080150047', 15, 1, 'SARIDIN, ANTONIUS', '', 'BABARSARI TAMBAKBAYAN IX/6B', '(0274)486917', 'L', 'B', '1939-10-10', 'WONOSARI', 3, 7, 'MAGELANG', '1967-03-26', '-', '', '', '2', '', 'BACIRO', '1980-07-17', '', '0', '', '0000-00-00', 2, 'WONOSARI', NULL, '1967-09-16', 'II/ 129', '', 2, 66, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(48, '300730010080150048', 15, 2, 'SUTARMI, MARIA THERESIA', '', 'BABARSARI TAMBAKBAYAN IX/6B', '(0274)486917', 'P', 'A', '1950-08-23', 'WONOSARI', 3, 3, 'MAGELANG', '1966-11-06', '-', '', '', '2', '', 'WONOSARI', '1967-05-18', '', '0', '', '0000-00-00', 2, 'WONOSARI', NULL, '1967-09-16', 'II/ 129', '', 2, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(49, '300730010080160049', 16, 1, 'SUWITO HARJO SUMADI, STEPHANUS', '', 'BABARSARI TAMBAKBAYAN IV/18, RT.04/RW.02', '87839836121', 'L', 'AB', '1974-05-31', 'SLEMAN', 3, 3, 'BABARSARI', '2010-12-23', 'NO. 267/ BUKU I', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'DANAN', NULL, '2007-07-25', 'BUKU I/ NO.287', '', 1, 66, 58, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(50, '300730010080160050', 16, 2, 'SETYOWATI, YUSTINA', '', 'BABARSARI TAMBAKBAYAN IV/18, RT.04/RW.02', '87839836121', 'P', 'A', '1976-03-28', 'WONOGIRI', 3, 1, 'BATURETNO', '1976-04-30', 'NO. 790/ BUKU I', '', '', '2', '', 'DANAN', '1989-06-07', '', '0', '', '0000-00-00', 2, 'DANAN', NULL, '2007-07-25', 'BUKU I/ NO.287', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(51, '300730010080160051', 16, 3, 'PRASETYO DENI, YOHANES', '', 'BABARSARI TAMBAKBAYAN IV/18, RT.04/RW.02', '87839836121', 'L', 'bt', '2007-12-13', 'SLEMAN', 3, 1, 'BABARSARI', '2008-04-11', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(52, '300730010080160052', 16, 3, 'APRILIA DWI ANGELA', '', 'BABARSARI TAMBAKBAYAN IV/18, RT.04/RW.02', '87839836121', 'P', 'bt', '2011-04-07', 'SLEMAN', 3, 9, 'BLM', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(53, '300730010080170053', 17, 1, 'SEDA BALA, ALEXANDER', '', 'BABARSARI, TB XIV/02, RT.14/RW.04', '8156812478', 'L', 'O', '1974-06-23', 'KUPANG', 3, 1, 'KUPANG', '1975-05-31', 'HAL. III/ 2718', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '2007-07-07', 'LM. I / FOL.2/ NO.06', '', 5, 25, 37, 16, 100, 0, 1, 3, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(54, '300730010080170054', 17, 2, 'WULANDARI HASTRINI M, BRIGITA', '', 'BABARSARI, TB XIV/02, RT.14/RW.04', '8156812478', 'P', 'O', '1980-07-14', 'SOLO', 3, 1, 'BOROBUDUR', '1982-04-10', 'BUKU I BB/ HAL.113/ NO. 447', '', '', '2', '', 'BACIRO', '1992-10-18', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '2007-07-07', 'LM. I / FOL.2/ NO.06', '', 4, 70, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(55, '300730010080170055', 17, 3, 'SEDA OLIVIA THERESIA, CORNELIA', '', 'BABARSARI, TB XIV/02, RT.14/RW.04', '8156812478', 'P', 'O', '2008-07-10', 'SLEMAN', 3, 1, 'SLEMAN', '2008-09-12', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 16, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(56, '300730010080180056', 18, 1, 'KUSMIARTI SRI', '', 'BABARSARI TB IV/11B, RT.05/RW.02', '(0274)9685441', 'P', 'B', '1951-02-16', 'SLEMAN', 10, 10, 'BLM', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 6, 'SLEMAN', NULL, '1970-12-31', '-', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(57, '300730010080190057', 19, 1, 'PRIYONO SUGENG GONZAGA AL, STEPHANUS', '', 'PERUM UPN BABARSARI', '-', 'L', 'O', '1957-01-29', 'PURWOKERTO', 3, 8, 'PURWOKERTO', '1975-12-13', '-', '', '', '2', '', 'PURWOKERTO', '1976-08-15', '', '0', '', '0000-00-00', 2, 'PURWOKERTO', NULL, '1986-08-10', 'BUKU I, NO.339 TAHUN 1986', '', 26, 55, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(58, '300730010080190058', 19, 2, 'HENDRARTI TUS ENNY RATRI CLARA, MARIA', '', 'PERUM UPN BABARSARI', '-', 'P', 'O', '1959-08-10', 'TASIKMALAYA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'PURWOKERTO', NULL, '1986-08-10', 'BUKU I, NO.339 TAHUN 1986', '', 25, 13, 37, 9, 309, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(59, '300730010080200059', 20, 1, 'SARBINI, THOMAS', '', 'TAMBAKBAYAN V/4A', '(0274)485204', 'L', 'AB', '1957-11-24', 'YOGYAKARTA', 3, 3, 'BANTENG', '1984-12-31', 'BUKU I/ HAL. 45/ NO. 177', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BANTENG', NULL, '1983-09-18', '355/C5/1983', '', 3, 66, 88, 9, 100, 0, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, NULL, NULL),
(60, '300730010080200060', 20, 2, 'WIWIK WIDYASTUTI, AGUSTINA', '', 'TAMBAKBAYAN V/4A', '(0274)485204', 'P', 'O', '1965-08-27', 'YOGYAKARTA', 3, 1, 'PUGERAN', '1965-12-31', 'BUKU I/ HAL. 40/ NO. 160', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BANTENG', NULL, '1983-09-18', '355/C5/1983', '', 3, 66, 88, 9, 100, 0, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, NULL, NULL),
(61, '300730010080200061', 20, 3, 'YULITA NORAMITA, BERNADETA', '', 'TAMBAKBAYAN V/4A', '(0274)485204', 'P', 'AB', '1986-07-23', 'YOGYAKARTA', 3, 1, 'BACIRO', '1986-12-31', 'BUKU I/ HAL.41/ NO.182', '', '', '1', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 39, 74, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(62, '300730010080210062', 21, 1, 'SUMIJATUN CERTRUDES, MARIA', '', 'BABARSARI TB X/5, RT.12/RW.04', '(0274)485152', 'P', 'B', '1939-03-15', 'PURWOREJO', 3, 2, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'KUTOARJO', NULL, '1964-09-03', 'LM.I HAL.58/229. THN. 1964', '', 3, 66, 15, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(63, '300730010080210063', 21, 3, 'KUMAYASARI RINI, KATARINA', '', 'BABARSARI TB X/5, RT.12/RW.04', '(0274)485152', 'P', 'B', '1975-09-15', 'SLEMAN', 3, 8, 'BACIRO', '2003-04-10', 'IV/ 240/ 960', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 6, '', NULL, '0000-00-00', '', '', 4, 70, 15, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(64, '300730010080210064', 21, 6, 'PUTRA ANDIKA VIERI, STEFANUS', '', 'BABARSARI TB X/5, RT.12/RW.04', '(0274)485152', 'L', 'B', '2003-06-07', 'BEKASI', 3, 1, 'CILEUNGSI', '2003-06-15', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(65, '300730010080220065', 22, 1, 'EDUARD SAUD', '', 'BABARSARI TAMBAKBAYAN VII', '85754501526', 'L', 'O', '1992-12-13', 'KALIMANTAN TENGAH', 3, 1, 'ST. TIMOTIUS', '1992-12-14', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 15, 70, 65, 3, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(66, '300730010080220066', 22, 10, 'TENDY THEO, ALBERTUS', '', 'BABARSARI TAMBAKBAYAN VII', '85754501526', 'L', 'O', '1989-01-23', 'BLURA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 70, 65, 9, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(67, '300730010080220067', 22, 10, 'KURNIASARI PONGPALITA, THERESIA', '', 'BABARSARI TAMBAKBAYAN VII', '85754501526', 'P', 'O', '1992-06-04', 'NABIRE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 70, 65, 18, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(68, '300730010080230068', 508, 2, 'FATIMA SERLI KLAU', '', 'TAMBAKBAYAN', '85228333224', 'P', 'A', '1990-02-27', 'BETUN KOTA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'Babarsari', 'Yogyakarta', '2016-11-22', '-', '', 15, 66, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(69, '300730010080230069', 23, 10, 'NONA INCE, THEODORA', '', 'TAMBAKBAYAN', '85228333224', 'P', 'O', '1989-03-20', 'MAUMERE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 70, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(70, '300730010080230070', 23, 10, 'NONA FERNI ELFINDA', '', 'TAMBAKBAYAN', '85228333224', 'P', 'O', '1992-02-08', 'MAUMERE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 70, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(71, '300730010080240071', 24, 1, 'FASAK P, MAGDALENA', '', 'TAMBAKBAYAN X/13', '81328536281', 'P', 'O', '1987-10-01', 'SAUMLAKI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 63, 65, 1, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(72, '300730010080240072', 24, 10, 'YEMPORMASE, AGUSTINA', '', 'TAMBAKBAYAN X/13', '81328536281', 'P', 'O', '1990-09-15', 'SAUMLAKI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SAUMLAKI', '2004-10-19', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 1, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(73, '300730010080240073', 24, 10, 'ELENORA EMA E.R.R KOTEN', '', 'TAMBAKBAYAN X/13', '81328536281', 'P', 'B', '1988-04-11', 'ANAKALANG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(74, '300730010080240074', 24, 10, 'GRADIANA EDITH MARNA BANA', '', 'TAMBAKBAYAN X/13', '81328536281', 'P', 'B', '1989-08-12', 'KEFAMENANU', 3, 1, 'KEFAMENANU', '1994-08-12', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 52, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(75, '300730010080240075', 24, 10, 'KOLETA FUTUNANEMBUN', '', 'TAMBAKBAYAN X/13', '81328536281', 'P', 'O', '1992-02-03', 'SAUMLAKI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 1, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(76, '300730010080240076', 24, 10, 'FERONIKA FUTUNANEMBUN', '', 'TAMBAKBAYAN X/13', '81328536281', 'P', 'O', '1986-04-16', 'SAUMLAKI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 63, 65, 1, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(77, '300730010080240077', 24, 10, 'MAGANG Y, PATRICIA', '', 'TAMBAKBAYAN X/13', '81328536281', 'P', 'AB', '1993-02-19', 'WAIKABUBAK', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 34, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(78, '300730010080240078', 24, 10, 'ARISTO MAGANG, MAXIMILIANUS', '', 'TAMBAKBAYAN X/13', '81328536281', 'L', 'A', '1987-04-15', 'WAIKABUBAK', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 70, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(79, '300730010080240079', 24, 10, 'HILARIUS MAGANG, ALFONS', '', 'TAMBAKBAYAN X/13', '81328536281', 'L', 'AB', '1989-08-01', 'WAIKABUBAK', 3, 1, 'SDH', '0000-00-00', 'BUKU II/ NO. 1667', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(80, '300730010080240080', 24, 10, 'X. B, FRANSISKUS', '', 'TAMBAKBAYAN X/13', '81328536281', 'L', 'O', '1986-03-27', 'LEMBATA', 3, 1, 'LEMBATA', '1987-07-12', '-', '', '', '2', '', 'LEMBATA', '1998-06-25', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 70, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(81, '300730010080250081', 25, 1, 'SERALURIN C, YOHANES', '', 'SANTAN GANG VIII/5', '81344404412', 'L', 'B', '1987-04-12', 'JAYAPURA', 3, 1, 'JAYAPURA', '1989-02-05', 'BUKU.- / HAL.-/ NO.681', '', '', '2', '', 'JAYAPURA', '2005-05-16', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 3, 65, 1, 400, 0, 1, 2, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(82, '300730010080250082', 25, 8, 'LUSNARNERA KAREL, FREDERIK', '', 'SANTAN GANG VIII/5', '81344404412', 'L', 'O', '1988-04-28', 'ADAUT', 3, 1, 'ADAUT', '1989-04-23', 'BUKU.-/ HAL. 181/ NO. 554', '', '', '2', '', 'SAUMLAKI', '1995-04-27', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 39, 65, 1, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(83, '300730010080250083', 25, 8, 'SERALURIN FERDI MAICHORS', '', 'SANTAN GANG VIII/5', '81344404412', 'L', 'O', '1991-06-01', 'JAYAPURA', 3, 1, 'JAYAPURA', '1991-12-29', 'BUKU.-/ HAL.- / NO. 3279', '', '', '2', '', 'MANOKWARI', '2008-05-24', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 70, 65, 1, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(84, '300730010080250084', 25, 8, 'SERALURIN FINCE IRIANI', '', 'SANTAN GANG VIII/5', '81344404412', 'P', 'O', '1993-03-05', 'JAYAPURA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'MANOKWARI', '2008-05-24', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 23, 65, 1, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(85, '300730010080250085', 25, 8, 'SERALURIN M. HERMAN, YOSEP', '', 'SANTAN GANG VIII/5', '81344404412', 'L', 'O', '1994-01-09', 'MANOKWARI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 13, 66, 64, 1, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(86, '300730010080250086', 25, 10, 'WULANDARI TANTO INDAH', '', 'SANTAN GANG VIII/5', '81344404412', 'P', 'O', '1993-05-14', 'BINTUNI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 13, 66, 64, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(87, '300730010080250087', 25, 8, 'KORA MANASES', '', 'SANTAN GANG VIII/5', '81344404412', 'L', 'O', '1985-10-28', 'SAUMLAKI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 1, 400, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(88, '300730010080250088', 25, 10, 'YULIANUS', '', 'SANTAN GANG VIII/5', '81344404412', 'L', 'AB', '1985-08-21', 'TANATORAJA', 3, 1, 'TANATORAJA', '1985-09-16', 'BUKU.-/ HAL.-/ NO.11.108', '', '', '2', '', 'TANATORAJA', '1996-07-15', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 56, 18, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(89, '300730010080250089', 25, 10, 'NUGROHO A. SATRIO YCH', '', 'SANTAN GANG VIII/5', '81344404412', 'L', 'A', '1993-07-22', 'MANOKWARI', 3, 1, 'MANOKWARI', '1993-11-14', 'BUKU.-/ HAL.-/ NO. 236', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 39, 65, 9, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(90, '300730010080250090', 25, 10, 'TANGKETASIK NUGROHO NORMAN', '', 'SANTAN GANG VIII/5', '81344404412', 'L', 'O', '1991-04-15', 'MAKASAR', 3, 1, 'ABEPURA', '2004-11-21', 'BUKU.-/ HA.-/ N0. 7118', '', '', '2', '', 'ABEPURA', '2004-11-21', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 23, 65, 18, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(91, '300730010080260091', 26, 1, 'PAULUS P. TITIRLOLOBY', '', 'TAMBAKBAYAN X/7, BABARSARI', '85257000080', 'L', 'O', '1986-08-01', 'NAMLEA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 23, 65, 1, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(92, '300730010080260092', 26, 10, 'PAULO EKSELIANDRO', '', 'TAMBAKBAYAN X/7, BABARSARI', '85257000080', 'L', 'O', '1991-06-29', 'KUPANG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(93, '300730010080260093', 26, 10, 'RIBKA SRI ULINA BARUS', '', 'TAMBAKBAYAN X/7, BABARSARI', '85257000080', 'P', 'O', '1989-09-30', 'MEDAN', 3, 1, 'MEDAN', '1993-05-16', 'BUKU III/ HAL.95/ NO. 760', '', '', '2', '', 'MEDAN', '2006-10-01', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 39, 65, 3, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(94, '300730010080260094', 26, 10, 'BRIGITA M. V. NOVERIANTA BARUS', '', 'TAMBAKBAYAN X/7, BABARSARI', '85257000080', 'P', 'B', '1992-11-28', 'MEDAN', 3, 1, 'MEDAN', '1993-06-05', 'BUKU III/ HAL.95/ NO. 761', '', '', '2', '', 'MEDAN', '2006-10-01', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 70, 65, 3, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(95, '300730010080260095', 26, 10, 'KEVIN DARMANTO, THIMATIUS', '', 'TAMBAKBAYAN X/7, BABARSARI', '85257000080', 'L', 'O', '1993-08-05', 'AMBON', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 63, 65, 1, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(96, '300730010080260096', 26, 10, 'AFANDY LAUS BAHY, ADRIANUS', '', 'TAMBAKBAYAN X/7, BABARSARI', '85257000080', 'L', 'O', '1987-08-13', 'RIANGDULI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 39, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(97, '300730010080260097', 26, 10, 'WILFRED BORO BAHY', '', 'TAMBAKBAYAN X/7, BABARSARI', '85257000080', 'L', 'O', '1992-01-10', 'RIANGDULI', 3, 1, 'TANAH BELANG', '1993-10-28', 'TBI/ NO. 1296', '', '', '2', '', 'SENTANI', '2008-05-11', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 39, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(98, '300730010080260098', 26, 10, 'M. KRISTANTO TIGOR', '', 'TAMBAKBAYAN X/7, BABARSARI', '85257000080', 'L', 'O', '1991-03-20', 'BATU SURA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 13, 65, 18, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(99, '300730010080260099', 26, 10, 'MANUEL MONIZ BARRETO', '', 'TAMBAKBAYAN X/7, BABARSARI', '85257000080', 'L', 'O', '1987-02-03', 'HOLZA', 3, 1, 'MALIANA', '1988-04-07', 'HAL. 73/ NO.88', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 19, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(100, '300730010080260100', 26, 10, 'CANDIDO GOMES CARDOSA', '', 'TAMBAKBAYAN X/7, BABARSARI', '85257000080', 'L', 'O', '1986-12-06', 'B. ALASSA', 3, 1, 'BOBONARO', '1987-02-23', 'HAL. 72/ NO. 87', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 19, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(101, '300730010080270101', 27, 1, 'ANGGIKA PETRINA, FLORENTINA', '', 'TAMBAKBAYAN V/ 5B, BABARSARI', '-', 'P', 'A', '1990-06-20', 'SEKADAU', 3, 1, 'SEKADAU', '1994-04-24', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 52, 65, 6, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(102, '300730010080270102', 27, 10, 'HELKIOR WINDI, GREGORIUS', '', 'TAMBAKBAYAN V/ 5B, BABARSARI', '-', 'L', 'A', '1992-01-05', 'SEKADAU', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 65, 6, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(103, '300730010080270103', 27, 10, 'LENI MARUNA LAILA MAMPUR', '', 'TAMBAKBAYAN V/ 5B, BABARSARI', '-', 'P', 'A', '1992-01-18', 'LOKARI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 4, 30, 65, 14, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(104, '300730010080270104', 27, 10, 'NOVA, CHRISTINA', '', 'TAMBAKBAYAN V/ 5B, BABARSARI', '-', 'P', 'B', '1992-06-13', 'PEKALONGAN', 3, 1, 'PEKALONGAN', '1993-12-31', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 4, 30, 65, 3, 400, 0, 1, 6, 0, 1, 2, 1, 4, 0, 0, 0, NULL, NULL),
(105, '300730010080280105', 28, 1, 'ANGELIS DEIFLORA', '', 'TAMBAK BAYAN', '-', 'P', 'B', '1991-08-18', 'SORONG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 13, 65, 8, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(106, '300730010080280106', 28, 10, 'SRI MARTANI', '', 'TAMBAK BAYAN', '-', 'P', 'O', '1983-08-18', 'KOBAR', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 70, 37, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(107, '300730010080290107', 29, 1, 'USI CHANDRA PIRES ELVIRA', '', 'TAMBAKBAYAN XIV/ NO. 15', '82133427914', 'P', 'O', '1986-12-25', 'DILI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 70, 65, 19, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(108, '300730010080290108', 29, 10, 'BEATRIKS SURI JUNITA', '', 'TAMBAKBAYAN XIV/ NO. 15', '82133427914', 'P', 'O', '1991-06-03', 'HALILULIK', 3, 1, 'WESUASA', '1991-12-19', '-', '', '', '2', '', 'KADA', '2003-09-14', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(109, '300730010080290109', 29, 10, 'BERE SELESTIANA', '', 'TAMBAKBAYAN XIV/ NO. 15', '82133427914', 'P', 'O', '1991-09-21', 'ATAMBUA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(110, '300730010080290110', 29, 10, 'BITA MUSU YULIANA', '', 'TAMBAKBAYAN XIV/ NO. 15', '82133427914', 'P', 'O', '1991-03-09', 'NAEKASAK', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(111, '300730010080290111', 29, 10, 'ROHAN YUNITA', '', 'TAMBAKBAYAN XIV/ NO. 15', '82133427914', 'P', 'O', '1989-07-09', 'TETEDOEN', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(112, '300730010080300112', 30, 1, 'BERE, PRIMUS', '', 'TAMBAKBAYAN I/ NO. 1C', '81328766458', 'L', 'bt', '1989-05-28', 'BETUN', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 15, 63, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(113, '300730010080310113', 31, 1, 'VIFILIA KOLO, ELFIRA', '', 'TAMBAKBAYAN VI/ NO. 8C', '-', 'P', 'O', '1988-08-13', 'ATAMBUA', 3, 1, 'ATAMBUA', '1989-08-13', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 4, 34, 65, 7, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(114, '300730010080310114', 31, 10, 'ADI SURYA UTAMA, ALEXANDRO', '', 'TAMBAKBAYAN VI/ NO. 8C', '-', 'L', 'B', '1988-11-26', 'MALANG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 60, 65, 9, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(115, '300730010080320115', 32, 1, 'ASTERIA JAYANTI, FRANSISKA', '', 'TAMBAKBAYAN VIII/ 8E', '-', 'P', 'bt', '1990-02-06', 'BANYUMAS', 3, 2, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 15, 39, 65, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(116, '300730010080330116', 33, 1, 'RESTY SRI RAHAYU, MARGARETA', '', 'JL. BABARSARI TAMBAKBAYAN X/ 11A', '-', 'P', 'B', '1989-02-28', 'BAWAT', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 24, 66, 65, 6, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(117, '300730010080330117', 33, 10, 'FALVIANA TAMA, GERDA', '', 'JL. BABARSARI TAMBAKBAYAN X/ 11A', '-', 'P', 'B', '1989-10-11', 'SINTANG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 66, 65, 6, 400, 0, 1, 4, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(118, '300730010080330118', 33, 10, 'OKTAVIANI, LAURENSIA', '', 'JL. BABARSARI TAMBAKBAYAN X/ 11A', '-', 'P', 'O', '1990-10-29', 'BATAM', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(119, '300730010080330119', 33, 10, 'FERNANDES, YOHANES', '', 'JL. BABARSARI TAMBAKBAYAN X/ 11A', '-', 'L', 'AB', '1993-07-12', 'JAKARTA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 66, 65, 17, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(120, '300730010080330120', 33, 10, 'LALU, MARIA MAGDALENA', '', 'JL. BABARSARI TAMBAKBAYAN X/ 11A', '-', 'P', 'O', '1989-12-19', 'ELOPADA', 3, 1, 'LIKKU', '1993-02-21', '-', '', '', '2', '', 'ELOPADA', '2004-05-09', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(121, '300730010080330121', 33, 10, 'SUM, BRIGITA', '', 'JL. BABARSARI TAMBAKBAYAN X/ 11A', '-', 'P', 'B', '1986-06-14', 'HAUMENI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(122, '300730010080340122', 34, 1, 'SUSANTO RENSA', '', 'DIRGANTARA II, BABARSARI', '-', 'P', 'O', '1990-03-02', 'BANDAR LAMPUNG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 70, 65, 9, 400, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(123, '300730010080340123', 34, 10, 'PURWANINGRUM KARTIKA, SESILIA', '', 'DIRGANTARA II, BABARSARI', '-', 'P', 'A', '1991-11-28', 'SOLO', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 9, 400, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(124, '300730010080340124', 503, 2, 'SETIAWAN VENIA, BERNADETHA', '', 'DIRGANTARA II, BABARSARI', '-', 'P', 'O', '1991-08-24', 'JAKARTA', 3, 1, 'BATAM', '1993-01-28', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', NULL, 'a', 'a', '2016-11-21', '', '', 25, 70, 65, 9, 400, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(125, '300730010080340125', 34, 10, 'NERIA SYELI F.', '', 'DIRGANTARA II, BABARSARI', '-', 'P', 'O', '1988-10-04', 'YOGYAKARTA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 9, 400, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(126, '300730010080340126', 34, 10, 'RAHAYU NIKEN, AGUSTINA', '', 'DIRGANTARA II, BABARSARI', '-', 'P', 'bt', '1990-08-20', 'TULUNGAGUNG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 9, 400, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(127, '300730010080340127', 34, 10, 'DE SOUSA DIAS S. L. CHRISTINA, MARIA', '', 'DIRGANTARA II, BABARSARI', '-', 'P', 'bt', '1990-04-25', 'TIMOR LESTE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(128, '300730010080340128', 34, 10, 'PALUPI SULTRA, AGUSTINA', '', 'DIRGANTARA II, BABARSARI', '-', 'P', 'A', '1989-10-06', 'LAMPUNG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 9, 400, 0, 1, 6, 0, 5, 2, 0, 4, 0, 0, 0, NULL, NULL),
(129, '300730010080340129', 34, 10, 'SAPTARINI, CHRISTINA', '', 'DIRGANTARA II, BABARSARI', '-', 'P', 'O', '1980-03-31', 'PADANG', 3, 2, 'PADANG', '1990-07-15', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 9, 400, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(130, '300730010080350130', 35, 1, 'TOLOK NAPA, YOHANES', '', 'TAMBAKBAYAN VIII BABARSARI', '-', 'L', 'bt', '1986-07-12', 'LEMBATA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'LARANTUKA', '1997-06-07', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 63, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(131, '300730010080350131', 35, 10, 'ELAMAN BERANI, YOSEPH', '', 'TAMBAKBAYAN VIII BABARSARI', '-', 'L', 'B', '1988-04-07', 'LEMBATA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(132, '300730010080350132', 35, 10, 'PERA BELARMINUS, FLAVIANUS', '', 'TAMBAKBAYAN VIII BABARSARI', '-', 'L', 'A', '1989-06-24', 'NGADA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'BORONG', '2007-11-13', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 50, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(133, '300730010080350133', 35, 10, 'SINOUR, NIKOLAUS', '', 'TAMBAKBAYAN VIII BABARSARI', '-', 'L', 'bt', '1989-08-01', 'LEMBATA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 63, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(134, '300730010080350134', 35, 10, 'JAWA JUAN E, YOHANES', '', 'TAMBAKBAYAN VIII BABARSARI', '-', 'L', 'A', '1989-09-04', 'NGADA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'BAJAWA', '2005-12-14', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(135, '300730010080350135', 35, 10, 'NGOLE N, BONIFILIO', '', 'TAMBAKBAYAN VIII BABARSARI', '-', 'L', 'bt', '1990-06-09', 'NGADA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'BAJAWA', '2007-07-08', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(136, '300730010080350136', 35, 10, 'KOLIN P. F. MARIANI', '', 'TAMBAKBAYAN VIII BABARSARI', '-', 'P', 'A', '1988-05-04', 'JAKARTA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 66, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(137, '300730010080350137', 35, 10, 'KUSUMA A. S, YULIUS', '', 'TAMBAKBAYAN VIII BABARSARI', '-', 'L', 'O', '1987-06-24', 'LEMBATA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 50, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(138, '300730010080360138', 36, 1, 'MAING SABU SOPIA', '', 'TAMBAKBAYAN XII, BABARSARI', '-', 'P', 'O', '1988-06-01', 'LEWOELENG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL);
INSERT INTO `umats` (`id`, `kode_umat`, `id_kk`, `id_hubkk`, `nama`, `email`, `alamat`, `tlp`, `jenis_kelamin`, `goldarah`, `tgl_lahir`, `tmplahir`, `id_agama`, `id_statusbaptis`, `tmpbaptis`, `tglbaptis`, `liberbap`, `romobaptis`, `namabaptis`, `stskrisma`, `namakrisma`, `tmpkrisma`, `tglkrisma`, `romokrisma`, `stskomuni`, `tmpkomuni`, `tglkomuni`, `id_statuspernikahan`, `tempatnikah`, `kotamenikah`, `tglnikah`, `libermat`, `romopernikahan`, `id_pendidikan`, `id_bidstudi`, `id_pekerjaan`, `id_suku`, `id_tempattinggal`, `lamatinggal`, `statusTT`, `id_keaktifanparoki`, `id_keaktifangereja`, `id_statuskekatolikan`, `id_statusekonomi`, `id_statuskesehatan`, `id_statussosial`, `jeniskk`, `statuspindah`, `statuskematian`, `nama_ayah`, `nama_ibu`) VALUES
(139, '300730010080360139', 36, 10, 'ATAWOLO D. ADRIANI, PAULINA', '', 'TAMBAKBAYAN XII, BABARSARI', '-', 'P', 'B', '1988-03-18', 'LAMAWOLO', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(140, '300730010080360140', 36, 10, 'DEMON M, AGUSTINA', '', 'TAMBAKBAYAN XII, BABARSARI', '-', 'P', 'O', '1988-08-07', 'MALAYSIA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 52, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(141, '300730010080360141', 36, 10, 'WEA A. ARIYANTI, MARIA', '', 'TAMBAKBAYAN XII, BABARSARI', '-', 'P', 'A', '1992-02-23', 'ENDE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(142, '300730010080360142', 36, 10, 'KOLY WISANG, FLORENTINA', '', 'TAMBAKBAYAN XII, BABARSARI', '-', 'P', 'B', '1992-12-07', 'ENDE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(143, '300730010080360143', 36, 10, 'MBELOK K RIKARDA, IRENE', '', 'TAMBAKBAYAN XII, BABARSARI', '-', 'P', 'bt', '1992-04-03', 'SUMBA BARAT', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(144, '300730010080360144', 36, 10, 'KALUMBANG HENDRA, AURELIO', '', 'TAMBAKBAYAN XII, BABARSARI', '-', 'L', 'B', '1989-07-27', 'WEETABULA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(145, '300730010080360145', 36, 10, 'BHARA, IMAKULATA MARIA', '', 'TAMBAKBAYAN XII, BABARSARI', '-', 'P', 'B', '1990-06-23', 'ENDE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(146, '300730010080370146', 37, 1, 'MAGNO D.K TIMOTEO', '', 'BABARSARI TAMBAKBAYAN II/11A', '-', 'L', 'A', '1992-10-23', 'CASSA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(147, '300730010080370147', 37, 10, 'LEON H. EVANDER', '', 'BABARSARI TAMBAKBAYAN II/11A', '-', 'L', 'O', '1990-07-17', 'DILI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(148, '300730010080370148', 37, 10, 'ABUT FAHIK JANUARIUS', '', 'BABARSARI TAMBAKBAYAN II/11A', '-', 'L', 'AB', '1990-01-15', 'NUFUAK', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(149, '300730010080370149', 37, 10, 'REAL C. DA COSTA, BONIFACIA', '', 'BABARSARI TAMBAKBAYAN II/11A', '-', 'P', 'O', '1985-11-06', 'CASSA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(150, '300730010080370150', 37, 10, 'DA COSTA VERDIANO ROSITO', '', 'BABARSARI TAMBAKBAYAN II/11A', '-', 'L', 'O', '1990-12-28', 'DILI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(151, '300730010080370151', 37, 10, 'ALMAIDA DANINO', '', 'BABARSARI TAMBAKBAYAN II/11A', '-', 'L', 'O', '1988-03-29', 'AINARO', 3, 1, 'BEIKALA', '1988-04-15', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(152, '300730010080380152', 38, 1, 'RETU DIS MAGNO, IGNASIO', '', 'TAMBAKBAYAN IV, BABARSARI', '-', 'L', 'B', '1987-10-17', 'ENDE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 51, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(153, '300730010080380153', 38, 10, 'MAI POA, ELIAS', '', 'TAMBAKBAYAN IV, BABARSARI', '-', 'L', 'O', '1985-08-10', 'ENDE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(154, '300730010080380154', 38, 10, 'RAJA, RAYMUNDUS', '', 'TAMBAKBAYAN IV, BABARSARI', '-', 'L', 'A', '1984-08-22', 'ENDE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(155, '300730010080380155', 38, 10, 'ASTRA SENIMAN, YOHANES', '', 'TAMBAKBAYAN IV, BABARSARI', '-', 'L', 'B', '1989-04-27', 'ENDE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(156, '300730010080380156', 38, 10, 'BOY D. OZHERY VAN, HUBERTUS', '', 'TAMBAKBAYAN IV, BABARSARI', '-', 'L', 'O', '1990-11-03', 'LARANTUKA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(157, '300730010080380157', 38, 10, 'MARI, KRISTOFORUS', '', 'TAMBAKBAYAN IV, BABARSARI', '-', 'L', 'B', '1991-07-23', 'ENDE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 70, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(158, '300730010080380158', 38, 10, 'SAH, MIKAEL', '', 'TAMBAKBAYAN IV, BABARSARI', '-', 'L', 'O', '1985-05-20', 'ENDE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(159, '300730010080380159', 38, 10, 'NAHAK, YOLANDA', '', 'TAMBAKBAYAN IV, BABARSARI', '-', 'P', 'B', '1991-10-20', 'ATAMBUA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(160, '300730010080380160', 38, 10, 'DATAQ, GABRIEL', '', 'TAMBAKBAYAN IV, BABARSARI', '-', 'L', 'O', '1987-09-30', 'LEMBATA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 53, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(161, '300730010080380161', 38, 10, 'WATAN AGUSTINA, MARIA', '', 'TAMBAKBAYAN IV, BABARSARI', '-', 'P', 'O', '1988-04-30', 'LEMBATA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 53, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(162, '300730010080390162', 39, 1, 'SATO GANO, KRSTOFORUS', '', 'BABARSARI TAMBAKBAYAN IX', '-', 'L', 'A', '1980-12-24', 'ENDE', 3, 2, 'ENDE', '1991-12-24', '-', '', '', '2', '', 'WORONIO', '2005-05-18', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 15, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(163, '300730010080390163', 39, 10, 'LOGO ADRIANTO, KONTRINUS', '', 'BABARSARI TAMBAKBAYAN IX', '-', 'L', 'A', '1988-04-29', 'SUMBA', 3, 1, 'SUMBA', '1990-01-20', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(164, '300730010080390164', 39, 10, 'DUHAN BOLI MARTINUS, JULIUS', '', 'BABARSARI TAMBAKBAYAN IX', '-', 'L', 'O', '1984-07-26', 'KUPANG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(165, '300730010080390165', 39, 10, 'NONG FRIDOLIN, YOHANES', '', 'BABARSARI TAMBAKBAYAN IX', '-', 'L', 'O', '1986-04-06', 'ENDE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(166, '300730010080390166', 39, 10, 'S.K SHANDY, CHRISTIAN', '', 'BABARSARI TAMBAKBAYAN IX', '-', 'L', 'O', '1985-08-08', 'ENDE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(167, '300730010080390167', 39, 10, 'M. WILIBRODUS, YOHANES', '', 'BABARSARI TAMBAKBAYAN IX', '-', 'L', 'AB', '1989-08-28', 'KIMPUKAN', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(168, '300730010080390168', 39, 10, 'FLORES DE, ALFONS', '', 'BABARSARI TAMBAKBAYAN IX', '-', 'L', 'B', '1990-11-25', 'ENDE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(169, '300730010080390169', 39, 10, 'KOTTEN H, GREGORIUS', '', 'BABARSARI TAMBAKBAYAN IX', '-', 'L', 'A', '1986-07-16', 'NTT', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 70, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(170, '300730010080390170', 39, 10, 'DUKA, JOHANES BERNADUS', '', 'BABARSARI TAMBAKBAYAN IX', '-', 'L', 'bt', '1990-12-11', 'NTT', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(171, '300730010080400171', 40, 1, 'BERE F. WELA A. NOSTRA', '', 'TAMBAKBAYAN IV, BABARSARI', '-', 'L', 'O', '1989-03-07', 'ENDE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 22, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(172, '300730010080400172', 40, 10, 'RAME, MAKSIMILIANUS', '', 'TAMBAKBAYAN IV, BABARSARI', '-', 'L', 'bt', '1988-05-29', 'ENDE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(173, '300730010080400173', 40, 10, 'ATAPUNANG SINU DAUD, YOSEF', '', 'TAMBAKBAYAN IV, BABARSARI', '-', 'L', 'O', '1987-05-11', 'LEMBATA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 22, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(174, '300730010080410174', 41, 1, 'KETUT TRISNOYANTO, F. XAVERIUS', '', 'SANTAN I/9A MAGUWOHARJO, YOGYAKARTA', '(0274)485052', 'L', 'AB', '1968-05-13', 'PALASARI', 3, 1, 'PALASARI', '1968-05-15', '-', '', '', '2', '', 'PALASARI', '1980-11-01', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 5, 16, 55, 2, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(175, '300730010080410175', 41, 10, 'FERDINANDO KUSBIJANTO, CAROLUS', '', 'SANTAN I/9A MAGUWOHARJO, YOGYAKARTA', '(0274)485052', 'L', 'B', '1968-08-31', 'SURABAYA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 16, 55, 9, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(176, '300730010080410176', 41, 10, 'MADE PURNAWAN, ANTONIUS', '', 'SANTAN I/9A MAGUWOHARJO, YOGYAKARTA', '(0274)485052', 'L', 'B', '1976-06-12', 'PALASARI', 3, 1, 'PALASARI', '1976-06-20', '-', '', '', '2', '', 'PALASARI', '1991-08-25', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 1, 55, 2, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(177, '300730010080410177', 41, 10, 'ALEI, YULIUS', '', 'SANTAN I/9A MAGUWOHARJO, YOGYAKARTA', '(0274)485052', 'L', 'AB', '1982-02-12', 'SERINGUK', 3, 2, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 15, 55, 6, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(178, '300730010080410178', 41, 10, 'HIMAANG, PIUS', '', 'SANTAN I/9A MAGUWOHARJO, YOGYAKARTA', '(0274)485052', 'L', 'A', '1982-08-12', 'KAPUAS HULU', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 55, 55, 6, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(179, '300730010080410179', 41, 10, 'MAU LOKO, ISIDORUS', '', 'SANTAN I/9A MAGUWOHARJO, YOGYAKARTA', '(0274)485052', 'L', 'O', '1987-04-04', 'FULUR', 3, 1, 'NUALAIN', '1987-05-27', '-', '', '', '2', '', 'WELULI', '2000-10-17', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 70, 55, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(180, '300730010080410180', 41, 10, 'SEPI, ADOLFUS', '', 'SANTAN I/9A MAGUWOHARJO, YOGYAKARTA', '(0274)485052', 'L', 'O', '1987-02-10', 'ANAKOLI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 55, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(181, '300730010080410181', 41, 10, 'SERAN, VINSENSIUS', '', 'SANTAN I/9A MAGUWOHARJO, YOGYAKARTA', '(0274)485052', 'L', 'O', '1982-03-11', 'BATETI', 3, 2, 'BESIKAMA', '1994-05-14', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 3, 55, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(182, '300730010080410182', 41, 10, 'TUBE BEDING, BERNARDUS', '', 'SANTAN I/9A MAGUWOHARJO, YOGYAKARTA', '(0274)485052', 'L', 'A', '1983-10-18', 'LAMALERA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 44, 55, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(183, '300730010080410183', 41, 10, 'NENDA, CLETUS', '', 'SANTAN I/9A MAGUWOHARJO, YOGYAKARTA', '(0274)485052', 'L', 'B', '1971-04-02', 'ENDE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 55, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(184, '300730010080420184', 42, 1, 'MANGGA, STEPHANUS', '', 'SANTAN I/9A, MAGUWOHARJO', '(0274)485052', 'L', 'A', '1976-08-17', 'PAGAL', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 26, 70, 55, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(185, '300730010080430185', 43, 1, 'NANA R. M, DESIDARIUS', '', 'TAMBAKBAYAN 15/ NO. 7C, BABARSARI', '-', 'L', 'AB', '1992-05-23', 'RAFAN', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 24, 34, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(186, '300730010080430186', 43, 10, 'P. YONGKY, ROBERTUS', '', 'TAMBAKBAYAN 15/ NO. 7C, BABARSARI', '-', 'L', 'AB', '1992-12-08', 'LAMPUNG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'LAMPUNG', '2005-08-23', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 34, 65, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(187, '300730010080430187', 43, 10, 'SERAN BERE, AGUSTINUS', '', 'TAMBAKBAYAN 15/ NO. 7C, BABARSARI', '-', 'L', 'B', '1991-04-14', 'BIUDUKFEHAN', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(188, '300730010080430188', 43, 10, 'SOA MUGA, SEBASTIANUS', '', 'TAMBAKBAYAN 15/ NO. 7C, BABARSARI', '-', 'L', 'A', '1991-05-02', 'ANAMARI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 34, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(189, '300730010080430189', 43, 10, 'MARLIANA, CICILIA', '', 'TAMBAKBAYAN 15/ NO. 7C, BABARSARI', '-', 'P', 'O', '1986-03-08', 'METRO', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 5, 65, 9, 400, 0, 1, 6, 0, 6, 2, 0, 4, 0, 0, 0, NULL, NULL),
(190, '300730010080430190', 43, 10, 'SARTIKA, MARINA', '', 'TAMBAKBAYAN 15/ NO. 7C, BABARSARI', '-', 'P', 'O', '1989-12-05', 'JAKARTA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 13, 65, 17, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(191, '300730010080430191', 43, 2, 'SERAN Y. E. T. G, PRIMA', '', 'TAMBAKBAYAN 15/ NO. 7C, BABARSARI', '-', 'L', 'O', '1990-06-10', 'ATAMBUA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 13, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(192, '300730010080430192', 43, 10, 'JEDAUT, FLORIDA', '', 'TAMBAKBAYAN 15/ NO. 7C, BABARSARI', '-', 'P', 'O', '1989-02-27', 'MANGGARAI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 34, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(193, '300730010080430193', 43, 10, 'SUBAN, AGUSTINUS', '', 'TAMBAKBAYAN 15/ NO. 7C, BABARSARI', '-', 'L', 'O', '1980-04-23', 'FLORES', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 26, 23, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(194, '300730010080430194', 43, 10, 'PAMEKASARI ERNI, VERONIKA', '', 'TAMBAKBAYAN 15/ NO. 7C, BABARSARI', '-', 'P', 'A', '1993-04-09', 'JAYAPURA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 13, 66, 64, 18, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(195, '300730010080440195', 44, 1, 'PINHERO ARUIJO JULITO', '', 'TAMBAK BAYAN III NO. 17', '-', 'L', 'A', '1987-07-23', 'TIMOR LESTE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 66, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(196, '300730010080450196', 45, 1, 'PURWANTO, MOSES', '', 'JL. BABARSARI TB XIII/ NO.2', '-', 'L', 'B', '1992-09-11', 'ANJUNGAN', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 66, 65, 9, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(197, '300730010080460197', 46, 1, 'PASCOOV, CORRELA', '', 'TAMBAKBAYAN 11/ NO. 7, BABARSARI', '85643507730', 'L', 'O', '1986-05-18', 'CAIDAULATA', 3, 1, 'MACADIGUE', '1986-10-27', 'HAL 73/ NO.06', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 60, 65, 19, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(198, '300730010080460198', 46, 10, 'MARIA SUNGGARTI DE, FATIMA', '', 'TAMBAKBAYAN 11/ NO. 7, BABARSARI', '85643507730', 'P', 'A', '1990-10-15', 'MAUBESI', 3, 1, 'MAUBESI', '1991-03-19', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(199, '300730010080460199', 46, 10, 'YOANETA HOAR BERREK, KRISTINA', '', 'TAMBAKBAYAN 11/ NO. 7, BABARSARI', '85643507730', 'P', 'O', '1991-06-17', 'KLETEK', 3, 1, 'KLETEK', '1991-10-24', '-', '', '', '2', '', 'BETUN', '2006-10-23', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 34, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(200, '300730010080460200', 46, 10, 'WOLA, SELVIANA', '', 'TAMBAKBAYAN 11/ NO. 7, BABARSARI', '85643507730', 'P', 'O', '1992-09-13', 'BINAWAFU', 3, 1, 'WAIKABUBAK', '1992-12-06', '-', '', '', '2', '', 'WAIKABUBAK', '2006-03-06', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 16, 400, 0, 1, 5, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(201, '300730010080460201', 46, 10, 'YULIUS RIWU KAMI, MICHAEL', '', 'TAMBAKBAYAN 11/ NO. 7, BABARSARI', '85643507730', 'L', 'B', '1988-07-31', 'WAIKABUBAK', 3, 1, 'WAIKABUBAK', '1988-11-16', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(202, '300730010080460202', 46, 10, 'WONA LAGA, YOHANES', '', 'TAMBAKBAYAN 11/ NO. 7, BABARSARI', '85643507730', 'L', 'O', '1988-08-24', 'MAUPONGGO', 3, 1, 'PUSU', '1989-02-26', 'BUKU IV/ NO.10110', '', '', '2', '', 'MATALOKO', '2001-10-26', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(203, '300730010080460203', 46, 10, 'MANGU, YOHANES', '', 'TAMBAKBAYAN 11/ NO. 7, BABARSARI', '85643507730', 'L', 'O', '1990-07-13', 'ENDE', 3, 1, 'ENDE', '1990-07-13', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(204, '300730010080460204', 46, 10, 'NANGA MUANA, DIONISIUS', '', 'TAMBAKBAYAN 11/ NO. 7, BABARSARI', '85643507730', 'L', 'O', '1989-04-05', 'RUA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(205, '300730010080460205', 46, 10, 'WEA SILE, FRANSISKUS XAVERIUS', '', 'TAMBAKBAYAN 11/ NO. 7, BABARSARI', '85643507730', 'L', 'A', '1992-01-25', 'WAIKABUBAK', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(206, '300730010080460206', 46, 10, 'KOLE EVEDURIX, JEUNEVIUS', '', 'TAMBAKBAYAN 11/ NO. 7, BABARSARI', '85643507730', 'L', 'O', '1992-07-02', 'MALIANA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(207, '300730010080470207', 47, 1, 'DANGGA, PAULINA', '', 'TAMBAK BAYAN IX/ 10C', '85290398844', 'P', 'O', '1990-02-07', 'SUMBA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(208, '300730010080470208', 47, 10, 'REGINA, THEODORA', '', 'TAMBAK BAYAN IX/ 10C', '85290398844', 'P', 'B', '1992-08-17', 'JAKARTA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(209, '300730010080470209', 47, 10, 'VEGAS D. SUSANA', '', 'TAMBAK BAYAN IX/ 10C', '85290398844', 'P', 'O', '1992-08-17', 'ENDE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 11, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(210, '300730010080470210', 47, 10, 'BARA E, AGUSTINA', '', 'TAMBAK BAYAN IX/ 10C', '85290398844', 'P', 'O', '1993-07-01', 'ENDE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(211, '300730010080470211', 47, 10, 'SANI P. JARU, PAULINA', '', 'TAMBAK BAYAN IX/ 10C', '85290398844', 'P', 'B', '1992-10-13', 'ENDE', 3, 1, 'ENDE', '1993-01-31', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(212, '300730010080470212', 47, 10, 'SINAGA SIRMA, LUSIA', '', 'TAMBAK BAYAN IX/ 10C', '85290398844', 'P', 'O', '1991-03-14', 'MEDAN', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 37, 65, 3, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(213, '300730010080470213', 47, 10, 'GOMES PURWATI LIZIA, MARIA', '', 'TAMBAK BAYAN IX/ 10C', '85290398844', 'P', 'B', '1991-09-22', 'DILI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'WEMASA', '2001-10-20', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(214, '300730010080480214', 48, 1, 'PIRES COSTA DA, IDALINA', '', 'TAMBAKBAYAN XVIII/1C, BABARSARI', '-', 'P', 'O', '1989-04-25', 'LEMIALETEN', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 63, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(215, '300730010080480215', 48, 10, 'COSTA DA ZEFERINO', '', 'TAMBAKBAYAN XVIII/1C, BABARSARI', '-', 'L', 'O', '1989-11-10', 'DILI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(216, '300730010080480216', 48, 10, 'LIANAWATI, FRANCISCA', '', 'TAMBAKBAYAN XVIII/1C, BABARSARI', '-', 'P', 'O', '1994-12-23', 'PEKALONGAN', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 23, 66, 64, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(217, '300730010080480217', 48, 10, 'CORRETA PASCOAL', '', 'TAMBAKBAYAN XVIII/1C, BABARSARI', '-', 'L', 'bt', '1986-05-18', 'CAIUDAULATA', 3, 1, 'MACADIGUE', '1986-10-27', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 19, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(218, '300730010080480218', 48, 10, 'YAP COSTA DA CRISTOVEL', '', 'TAMBAKBAYAN XVIII/1C, BABARSARI', '-', 'L', 'O', '1988-09-13', 'DILI', 3, 1, 'ATAMBUA', '1989-11-14', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 19, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(219, '300730010080480219', 48, 10, 'ANGKASA C. SAMANTHA', '', 'TAMBAKBAYAN XVIII/1C, BABARSARI', '-', 'P', 'B', '1991-11-22', 'DENPASAR', 3, 2, 'DENPASAR', '2005-12-23', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 23, 66, 64, 2, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(220, '300730010080480220', 48, 10, 'UTOMO BAWONO ENDI, FRANSISKUS', '', 'TAMBAKBAYAN XVIII/1C, BABARSARI', '-', 'L', 'bt', '1990-06-04', 'PURWOKERTO', 3, 1, 'PURWOKERTO', '1990-12-31', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 23, 66, 64, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(221, '300730010080480221', 48, 10, 'PRAYOGA FAJAR, YULIUS', '', 'TAMBAKBAYAN XVIII/1C, BABARSARI', '-', 'L', 'A', '1989-07-06', 'KLATEN', 3, 1, 'PURWOKERTO', '1989-12-31', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 64, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(222, '300730010080480222', 48, 10, 'BABUT E, PASKALINA', '', 'TAMBAKBAYAN XVIII/1C, BABARSARI', '-', 'P', 'O', '1990-03-19', 'RUTENG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(223, '300730010080480223', 48, 10, 'SURYATI, YULIANA', '', 'TAMBAKBAYAN XVIII/1C, BABARSARI', '-', 'P', 'B', '1990-04-12', 'MANGGARAI', 3, 1, 'MANGGARAI', '1990-12-31', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(224, '300730010080490224', 49, 1, 'ONA GHENA TOBIAS SUN', '', 'TAMBAKBAYAN III/9, BABARSARI', '85292317976', 'L', 'A', '1990-10-25', 'BOAWAE', 3, 1, 'RAJA', '1991-03-04', '-', '', '', '2', '', 'BOAWAE', '2001-06-24', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 22, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(225, '300730010080490225', 49, 10, 'NAE TAILY, ARNOLDUS', '', 'TAMBAKBAYAN III/9, BABARSARI', '85292317976', 'L', 'O', '1989-04-14', 'KUPANG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 22, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(226, '300730010080490226', 49, 10, 'HERU BRANSMA, TITUS', '', 'TAMBAKBAYAN III/9, BABARSARI', '85292317976', 'L', 'A', '1990-09-10', 'JAKARTA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(227, '300730010080490227', 49, 10, 'POSO WATI, MARIA VIANNEY', '', 'TAMBAKBAYAN III/9, BABARSARI', '85292317976', 'P', 'A', '1991-06-09', 'MANGGARAI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(228, '300730010080490228', 49, 10, 'DEA, YUNITA AGNES', '', 'TAMBAKBAYAN III/9, BABARSARI', '85292317976', 'P', 'A', '1988-06-01', 'BAJAWA', 3, 1, 'BAJAWA', '1991-09-28', '-', '', '', '2', '', 'BAJAWA', '1997-10-06', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(229, '300730010080490229', 49, 10, 'PERE H. MISTYCA ROS M.', '', 'TAMBAKBAYAN III/9, BABARSARI', '85292317976', 'P', 'B', '1992-10-22', 'DILI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(230, '300730010080490230', 49, 10, 'DANGGA, AGUSTINA', '', 'TAMBAKBAYAN III/9, BABARSARI', '85292317976', 'P', 'A', '1992-08-29', 'SUMBA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(231, '300730010080490231', 49, 10, 'BATIAN GEOFANY, FRANSINA', '', 'TAMBAKBAYAN III/9, BABARSARI', '85292317976', 'P', 'B', '1993-04-30', 'MALUKU', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 1, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(232, '300730010080490232', 49, 10, 'KALI FELICIA, FRANSINA', '', 'TAMBAKBAYAN III/9, BABARSARI', '85292317976', 'P', 'O', '1990-09-03', 'HALILULIK', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(233, '300730010080490233', 49, 10, 'BEDHU, ANGELINA MARIA', '', 'TAMBAKBAYAN III/9, BABARSARI', '85292317976', 'P', 'A', '1991-04-10', 'ENDE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(234, '300730010040010001', 50, 1, 'KUSWORO', '', 'KLEDOKAN CT XIX, RT.05/RW. 02', '-', 'L', 'B', '1975-11-17', 'BOYOLALI', 3, 3, 'BABARSARI', '2003-12-31', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'SDH', NULL, '0000-00-00', '-', '', 3, 66, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(235, '300730010040010002', 50, 2, 'WATINEM, CHRISTINA', '', 'KLEDOKAN CT XIX, RT.05/RW. 02', '-', 'P', 'bt', '1980-07-09', 'SLEMAN', 3, 3, 'SDH', '0000-00-00', 'BUKU VI/ HAL.-/ NO.787', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 3, 'SDH', NULL, '0000-00-00', '-', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(236, '300730010040010003', 50, 3, 'ADELINA DINA CRISKA, THERESIA', '', 'KLEDOKAN CT XIX, RT.05/RW. 02', '-', 'P', 'bt', '2004-05-28', 'YOGYAKARTA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(237, '300730010040010004', 50, 3, 'CHARLES RAFAEL, NICHOLAS', '', 'KLEDOKAN CT XIX, RT.05/RW. 02', '-', 'L', 'bt', '2006-03-18', 'SLEMAN', 3, 9, 'BLM', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(238, '300730010040020005', 51, 1, 'KASIDO, ATANASIUS', '', 'KLEDOKAN CT.XIX, RT.05/RW.02', '-', 'L', 'B', '1942-12-31', 'SLEMAN', 3, 3, 'BACIRO', '1986-12-31', '-', '', '', '2', '', 'BACIRO', '1990-12-31', '', '0', '', '0000-00-00', 5, 'SDH', NULL, '0000-00-00', '-', '', 1, 66, 36, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(239, '300730010040020006', 51, 2, 'MUJIYEM, THERESIA', '', 'KLEDOKAN CT.XIX, RT.05/RW.02', '-', 'P', 'bt', '1945-12-31', 'SLEMAN', 3, 3, 'BACIRO', '1986-12-31', '-', '', '', '2', '', 'BACIRO', '1990-12-31', '', '0', '', '0000-00-00', 5, 'SDH', NULL, '0000-00-00', '-', '', 1, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(240, '300730010040030007', 52, 1, 'BAMBANG SETIYO, PAULUS', '', 'KLEDOKAN RT.01/RW.01, CT XIX SLEMAN', '-', 'L', 'O', '1957-07-22', 'YOGYAKARTA', 3, 8, 'BACIRO', '1987-12-18', 'VII/HAL.28/NO.112', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'MADIUN', NULL, '1985-10-26', '4743/55/4311/1985', '', 5, 64, 37, 9, 100, 0, 1, 1, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(241, '300730010040030008', 52, 2, 'HERNINGSIH, CHATARINA', '', 'KLEDOKAN RT.01/RW.01, CT XIX SLEMAN', '-', 'P', 'O', '1957-11-13', 'MAGETAN', 3, 1, 'MADIUN', '1957-12-31', 'VII/NO.1140', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'MADIUN', NULL, '1985-10-26', '4743/55/4311/1985', '', 5, 1, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(242, '300730010040030009', 52, 3, 'PANDU PRASETYO, YOHANES', '', 'KLEDOKAN RT.01/RW.01, CT XIX SLEMAN', '-', 'L', 'O', '1986-02-19', 'YOGYAKARTA', 3, 1, 'KOTABARU', '1990-03-04', 'XII/NO.796', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 39, 37, 9, 100, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(243, '300730010040030010', 52, 3, 'PUTRI NASTITI, BRIGITA', '', 'KLEDOKAN RT.01/RW.01, CT XIX SLEMAN', '-', 'P', 'O', '1990-03-18', 'MADIUN', 3, 1, 'MADIUN', '1990-05-06', 'XII/NO.580', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 37, 75, 9, 100, 0, 1, 2, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(244, '300730010040040011', 53, 1, 'SETO BAKTI KASTOYO, HERIBERTUS', '', 'KLEDOKAN CT XIX, RT.04/RW.02', '-', 'L', 'O', '1973-05-25', 'YOGYAKARTA', 3, 1, 'PUGERAN', '1973-06-05', 'X/HAL.121/NO.482', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 6, 'BACIRO', NULL, '1997-01-18', 'NO.082/CS/6/1997', '', 3, 66, 56, 9, 100, 0, 1, 6, 0, 7, 2, 0, 0, 0, 0, 0, NULL, NULL),
(245, '300730010040040012', 53, 2, 'WONO DWI UTAMI', '', 'KLEDOKAN CT XIX, RT.04/RW.02', '-', 'P', 'bt', '1972-12-31', 'YOGYAKARTA', 1, 11, 'TDK', '0000-00-00', '', '', '', '1', '', 'TDK', '0000-00-00', '', '0', '', '0000-00-00', 3, 'BACIRO', NULL, '1997-01-18', 'NO.082/CS/6/1997', '', 3, 66, 62, 9, 99, 0, 1, 0, 0, 0, 2, 0, 99, 0, 0, 0, NULL, NULL),
(246, '300730010040050013', 54, 1, 'BAKIR SUKRISNO ATMOJO, ANTONIUS', '', 'KLEDOKAN, CT.XIX, RT.06/RW.03', '(0274)487967', 'L', 'A', '1944-06-16', 'SLEMAN', 3, 3, 'BACIRO', '1983-12-13', 'V/HAL.-/NO.1602', '', '', '2', '', 'BACIRO', '1984-07-30', '', '0', '', '0000-00-00', 5, 'DEPOK', NULL, '1965-04-17', 'NO.85/1965', '', 3, 66, 36, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(247, '300730010040050014', 54, 2, 'SUTIMIEN, CICILIA', '', 'KLEDOKAN, CT.XIX, RT.06/RW.03', '(0274)487967', 'P', 'B', '1946-11-10', 'SLEMAN', 3, 3, 'BACIRO', '1989-12-13', 'V/HAL.-/NO.1601', '', '', '2', '', 'BACIRO', '1984-07-30', '', '0', '', '0000-00-00', 5, 'DEPOK', NULL, '1965-04-17', 'NO.85/1965', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(248, '300730010040060015', 55, 1, 'MAU, ARNOLDUS', '', 'KLEDOKAN BLOK C/ NO.165', '(0274)488567', 'L', 'O', '1949-04-17', 'TIMOR', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'YOGYAKARTA', NULL, '1980-12-31', '-', '', 5, 23, 34, 7, 100, 0, 1, 1, 0, 1, 2, 0, 0, 0, 0, 0, NULL, NULL),
(249, '300730010040060016', 55, 2, 'NOUJU, THERESIA', '', 'KLEDOKAN BLOK C/ NO.165', '(0274)488567', 'P', 'A', '1950-11-23', 'TIMOR', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'YOGYAKARTA', NULL, '1980-12-31', '-', '', 4, 30, 62, 7, 100, 0, 1, 2, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(250, '300730010040060017', 55, 3, 'B. MAU, DENSIUS', '', 'KLEDOKAN BLOK C/ NO.165', '(0274)488567', 'L', 'A', '1979-10-12', 'YOGYAKARTA', 3, 1, 'YOGYAKARTA', '1984-01-27', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 3, 44, 16, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(251, '300730010040060018', 55, 3, 'VALENTINA MAU, VINCENIA', '', 'KLEDOKAN BLOK C/ NO.165', '(0274)488567', 'P', 'B', '1983-11-20', 'YOGYAKARTA', 3, 1, 'YOGYAKARTA', '1984-01-27', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 57, 56, 16, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(252, '300730010040070019', 56, 1, 'SUMARYANINGSIH, ROSALIA', '', 'KLEDOKAN I/ NO. 177', '(0274)487244', 'P', 'O', '1968-07-15', 'KLATEN', 3, 1, 'KLATEN', '1968-07-26', 'XV/ 194/ 12767', '', '', '2', '', 'BLOO', '1979-10-07', '', '0', '', '0000-00-00', 2, 'BLORO', NULL, '1997-05-04', '30/1997', '', 5, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(253, '300730010040070020', 56, 3, 'JEANDYTA GIOVANI ANGGASTA, MARIA', '', 'KLEDOKAN I/ NO. 177', '(0274)487244', 'P', 'O', '1998-05-29', 'JEMBER', 3, 1, 'BLORO', '1998-12-25', 'II/ 120/ 1784', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 2, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(254, '300730010040070021', 56, 3, 'NERISA ARVIANA, ANASTASIA', '', 'KLEDOKAN I/ NO. 177', '(0274)487244', 'P', 'O', '1999-12-04', 'JEMBER', 3, 1, 'JEMBER', '2000-03-06', 'XIII/ 029/ NO.061', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(255, '300730010040080022', 57, 1, 'SM. NASTUTI, MARIA MARGARETHA', '', 'KLEDOKAN DP I/ NO. 190 B, YOGYAKARTA', '(0274)484120', 'P', 'O', '1950-10-11', 'NGANI', 3, 2, 'KOTABARU', '1958-05-24', '-', '', '', '2', '', 'KOTABARU', '1958-05-28', '', '0', '', '0000-00-00', 2, 'ST. FRANSISKUS ASISI TEBET', NULL, '0000-00-00', 'I/46/182', '', 4, 34, 62, 9, 100, 0, 1, 6, 0, 1, 2, 32, 4, 0, 0, 0, NULL, NULL),
(256, '300730010040090023', 58, 1, 'SUPARNO, IGNATIUS60', '', 'KLEDOKAN III C/ 166B CT XIX', '(0274)489016', 'L', 'B', '1949-11-07', 'KLATEN', 3, 3, 'KLATEN', '1963-01-04', 'BUKU. XV/ HAL.78/ NO.12305', '', '', '2', '', 'SEMARANG', '1968-12-31', '', '0', '', '0000-00-00', 2, 'KLATEN', NULL, '1975-12-27', 'VELL.V/ FOL.58/ NO. 229', '', 4, 60, 34, 9, 100, 0, 1, 1, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(257, '300730010040090024', 58, 2, 'HARYATI, MARIA ASUMTA', '', 'KLEDOKAN III C/ 166B CT XIX', '(0274)489016', 'P', 'O', '1950-08-15', 'KLATEN', 3, 1, 'KLATEN', '1950-08-15', 'III/ NO. 219', '', '', '2', '', 'KLATEN', '1960-12-31', '', '0', '', '0000-00-00', 2, 'KLATEN', NULL, '1975-12-27', 'VELL.V/ FOL.58/ NO. 229', '', 4, 47, 20, 9, 100, 0, 1, 3, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(258, '300730010040090025', 58, 3, 'DEDDY CHRISTANDY, FRANSISKUS XAVERIUS', '', 'KLEDOKAN III C/ 166B CT XIX', '(0274)489016', 'L', 'O', '1981-12-24', 'BOGOR', 3, 1, 'BOGOR', '1982-11-03', 'XIII- 88/ NO.13', '', '', '2', '', 'BOGOR', '1994-12-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 6, 60, 65, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(259, '300730010040090026', 58, 3, 'DENNY ENDRA KUSUMA, PETRUS', '', 'KLEDOKAN III C/ 166B CT XIX', '(0274)489016', 'L', 'O', '1983-12-21', 'BOGOR', 3, 1, 'BOGOR', '1984-01-08', 'XIII- 233/ NO. 13', '', '', '2', '', 'BOGOR', '1996-12-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 39, 57, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(260, '300730010040100027', 59, 1, 'KUATINEM MULYO PAWIRO, CHRISTINA', '', 'KLEDOKAN CT XIX, RT.05/RW.02', '(0274)4333363', 'P', 'bt', '1924-08-10', 'YOGYAKARTA', 3, 3, 'JETIS', '1989-03-26', 'BUKU. IV/ HAL.182/ NO. 3730', '', '', '2', '', 'ALBERTUS AGUNG', '1994-12-31', '', '0', '', '0000-00-00', 8, 'JANDA', NULL, '0000-00-00', '-', '', 1, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(261, '300730010040110028', 60, 1, 'LAMIYO, CAROLUS', '', 'KLEDOKAN CT XIX/ NO.25, TR.06/RW.03', '(0274)4333363', 'L', 'A', '1951-05-01', 'SLEMAN', 3, 3, 'BACIRO', '1990-12-21', 'BUKU VII/ HAL.156/ NO. 1021', '', '', '2', '', 'BACIRO', '1992-10-18', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1990-12-21', '-', '', 1, 66, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 1, 0, 0, 0, NULL, NULL),
(262, '300730010040110029', 60, 2, 'ISTUMINI', '', 'KLEDOKAN CT XIX/ NO.25, TR.06/RW.03', '(0274)4333363', 'P', 'O', '1954-07-05', 'YOGYAKARTA', 3, 3, 'BACIRO', '1984-06-05', 'BUKU VI/ NO. 104', '', '', '2', '', 'BACIRO', '1984-07-30', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1990-12-21', '-', '', 2, 66, 57, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(263, '300730010040110030', 60, 3, 'ISTIYONO, THOMAS', '', 'KLEDOKAN CT XIX/ NO.25, TR.06/RW.03', '(0274)4333363', 'L', 'A', '1975-05-07', 'SLEMAN', 3, 2, 'BACIRO', '1984-06-05', 'BUKU VI/ HAL.-/ NO.124', '', '', '2', '', 'BACIRO', '1990-09-28', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 41, 9, 100, 0, 1, 6, 0, 6, 2, 0, 4, 0, 0, 0, NULL, NULL),
(264, '300730010040110031', 60, 3, 'ISTIHANDAYANI', '', 'KLEDOKAN CT XIX/ NO.25, TR.06/RW.03', '(0274)4333363', 'P', 'A', '1977-08-13', 'SLEMAN', 3, 2, 'BACIRO', '1984-06-05', 'BUKU VI/ HAL. 105', '', '', '2', '', 'BACIRO', '1990-09-28', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 4, 3, 61, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(265, '300730010040110032', 60, 3, 'ISTIKALANI, AGATHA', '', 'KLEDOKAN CT XIX/ NO.25, TR.06/RW.03', '(0274)4333363', 'P', 'O', '1994-09-13', 'SLEMAN', 3, 1, 'BACIRO', '1994-10-04', 'BUKU VIII/ HAL.-/NO. 839', '', '', '2', '', 'BACIRO', '2008-07-20', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 64, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(266, '300730010040120033', 61, 1, 'SUMIYATI, ANASTASIA', '', 'KLEDOKAN CT XIX/ 23B, RT.01/TW.03', '-', 'P', 'O', '1951-11-13', 'YOGYAKARTA', 3, 2, 'SDH', '0000-00-00', '-', '', '', '2', '', 'KEMETIRAN', '1964-12-31', '', '0', '', '0000-00-00', 3, 'KEMETIRAN', NULL, '1985-12-31', '-', '', 4, 40, 34, 9, 100, 0, 1, 6, 0, 7, 2, 32, 4, 0, 0, 0, NULL, NULL),
(267, '300730010040120034', 61, 2, 'SUPRIYONO', '', 'KLEDOKAN CT XIX/ 23B, RT.01/TW.03', '-', 'L', 'A', '1952-04-13', 'YOGYAKARTA', 1, 11, 'TDK', '0000-00-00', '', '', '', '1', '', 'TDK', '0000-00-00', '', '0', '', '0000-00-00', 3, 'KEMETIRAN', NULL, '1985-12-31', '-', '', 5, 65, 56, 9, 99, 0, 1, 0, 0, 0, 2, 0, 99, 0, 0, 0, NULL, NULL),
(268, '300730010040120035', 61, 3, 'DINA KURNIAWATI, EMERENTIANA', '', 'KLEDOKAN CT XIX/ 23B, RT.01/TW.03', '-', 'P', 'bt', '1987-07-06', 'YOGYAKARTA', 3, 2, 'BABARSARI', '2001-04-09', '-', '', '', '2', '', 'BACIRO', '2002-12-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 60, 56, 9, 309, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(269, '300730010040120036', 61, 3, 'RINA KURNIAWATI, EMERENTIANA', '', 'KLEDOKAN CT XIX/ 23B, RT.01/TW.03', '-', 'P', 'bt', '1987-07-06', 'YOGYAKARTA', 3, 2, 'BABARSARI', '2001-04-09', '-', '', '', '2', '', 'BACIRO', '2002-12-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 61, 56, 9, 304, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(270, '300730010040130037', 62, 1, 'GAMBIRO, PIUS', '', 'KLEDOKAN CT XIX/NO.D41, DEPOK SLEMAN', '(0274)488867', 'L', 'O', '1951-09-26', 'YOGYAKARTA', 3, 1, 'BINTARAN', '1951-09-27', 'LIB.IX/ FOL.214/NO.2798', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'ST. ALBERTUS JETIS', NULL, '1979-02-23', 'BUKU I/NO.402/THN.1979', '', 5, 64, 34, 9, 100, 0, 1, 3, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(271, '300730010040130038', 62, 2, 'INDARTINI, ELISABET', '', 'KLEDOKAN CT XIX/NO.D41, DEPOK SLEMAN', '(0274)488867', 'P', 'AB', '1950-08-14', 'YOGYAKARTA', 3, 7, 'JETIS', '1979-02-23', 'BUKU II/HAL.242/NO.1965', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'ST. ALBERTUS JETIS', NULL, '1979-02-23', 'BUKU I/NO.402/THN.1979', '', 5, 55, 34, 9, 100, 0, 1, 3, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(272, '300730010040130039', 62, 3, 'F.I KARUNIA PUTRI', '', 'KLEDOKAN CT XIX/NO.D41, DEPOK SLEMAN', '(0274)488867', 'P', 'O', '1982-11-05', 'YOGYAKARTA', 3, 1, 'KALASAN', '1982-11-08', 'BUKU XI/HAL.-/NO.9853', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 4, 39, 37, 9, 309, 0, 1, 6, 0, 6, 2, 0, 4, 0, 0, 0, NULL, NULL),
(273, '300730010040130040', 62, 3, 'Y. INDRI PAMUNGKAS', '', 'KLEDOKAN CT XIX/NO.D41, DEPOK SLEMAN', '(0274)488867', 'L', 'AB', '1987-06-04', 'YOGYAKARTA', 3, 1, 'BABARSARI', '1987-07-04', 'BUKU VII/ HAL.26/NO. 104', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 52, 61, 9, 309, 0, 1, 6, 0, 6, 2, 0, 4, 0, 0, 0, NULL, NULL),
(274, '300730010040140041', 63, 1, 'YC. SOERANTO BHRE', '', 'KLEDOKAN NO.13/50A', '(0274)487302', 'L', 'A', '1944-12-01', 'KLATEN', 3, 3, 'WEDI', '1964-04-17', '3286/17/4/1965', '', '', '2', '', 'WEDI', '1966-12-31', '', '0', '', '0000-00-00', 5, 'MANIS RENGGO', NULL, '1975-08-02', '112/2/1975', '', 4, 63, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(275, '300730010040140042', 63, 2, 'SUMINI', '', 'KLEDOKAN NO.13/50A', '(0274)487302', 'P', 'O', '1955-08-30', 'KLATEN', 10, 10, 'BLM', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 5, 'MANIS RENGGO', NULL, '1975-08-02', '112/2/1975', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(276, '300730010010140001', 64, 3, 'HERY WIRAWAN', '', 'KOMP. YADARA IV/2 RT 20 RW 06', '0274-485557', 'L', 'A', '1982-02-06', 'PALANGKARAYA', 10, 10, 'BLM', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 3, 37, 9, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(277, '300730010080130001', 65, 10, 'CONCEICAO OA. A, ADELIA', '', 'TAMBAK BAYAN VIII/NO.12A BABARSARI', '81215538747', 'P', 'O', '1990-12-28', 'TIMOR LESTE', 3, 1, 'TIMOR LESTE', '1991-09-17', 'BUKU.-/FOL.-/NO.247', '', '', '2', '', 'BABARSARI', '2008-08-06', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 22, 65, 19, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(278, '300730010080130002', 65, 10, 'BOBO ANDRI, YULIUS', '', 'TAMBAK BAYAN VIII/NO.12A BABARSARI', '81215538747', 'L', 'AB', '1987-07-21', 'WAIKABUBAK', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(279, '300730010080130003', 65, 10, 'MIRDA ISWA, FARIDA', '', 'TAMBAK BAYAN VIII/NO.12A BABARSARI', '81215538747', 'P', 'AB', '1991-12-28', 'SOKOMANDANG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 39, 65, 6, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(280, '300730010080130004', 65, 10, 'SISKAWATI', '', 'TAMBAK BAYAN VIII/NO.12A BABARSARI', '81215538747', 'P', 'B', '1994-01-09', 'JONGKONG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 39, 65, 17, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL);
INSERT INTO `umats` (`id`, `kode_umat`, `id_kk`, `id_hubkk`, `nama`, `email`, `alamat`, `tlp`, `jenis_kelamin`, `goldarah`, `tgl_lahir`, `tmplahir`, `id_agama`, `id_statusbaptis`, `tmpbaptis`, `tglbaptis`, `liberbap`, `romobaptis`, `namabaptis`, `stskrisma`, `namakrisma`, `tmpkrisma`, `tglkrisma`, `romokrisma`, `stskomuni`, `tmpkomuni`, `tglkomuni`, `id_statuspernikahan`, `tempatnikah`, `kotamenikah`, `tglnikah`, `libermat`, `romopernikahan`, `id_pendidikan`, `id_bidstudi`, `id_pekerjaan`, `id_suku`, `id_tempattinggal`, `lamatinggal`, `statusTT`, `id_keaktifanparoki`, `id_keaktifangereja`, `id_statuskekatolikan`, `id_statusekonomi`, `id_statuskesehatan`, `id_statussosial`, `jeniskk`, `statuspindah`, `statuskematian`, `nama_ayah`, `nama_ibu`) VALUES
(281, '300730010080130005', 65, 10, 'WARIANTO, PAULINA', '', 'TAMBAK BAYAN VIII/NO.12A BABARSARI', '81215538747', 'P', 'B', '1991-09-04', 'PADANG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 13, 65, 17, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(282, '300730010080130006', 65, 10, 'SUBRONTO MARIANUS, YOHANES', '', 'TAMBAK BAYAN VIII/NO.12A BABARSARI', '81215538747', 'L', 'AB', '1991-06-10', 'DEBOS', 3, 2, 'SEON', '2001-09-10', 'BUKU/ FOL.-/ NO.27.898', '', '', '2', '', 'SEON', '2001-01-29', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 34, 65, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(283, '300730010080130007', 65, 10, 'MASAUBAT FANU, FREDERIKUS', '', 'TAMBAK BAYAN VIII/NO.12A BABARSARI', '81215538747', 'L', 'O', '1991-05-11', 'KEFAMENANU', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(284, '300730010080130008', 65, 10, 'LUHUR S, SAFRIANUS', '', 'TAMBAK BAYAN VIII/NO.12A BABARSARI', '81215538747', 'L', 'A', '1990-11-11', 'FLORES', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(285, '300730010080130009', 65, 10, 'IRIANTO EKO, SELFIANUS', '', 'TAMBAK BAYAN VIII/NO.12A BABARSARI', '81215538747', 'L', 'O', '1981-09-30', 'FAK-FAK', 3, 1, 'FAK-FAK', '1981-11-08', '-', '', '', '2', '', 'FAK-FAK', '1999-12-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(286, '300730010040150001', 66, 1, 'SUKO WIDIYANTO, VICTOR', '', 'KLEDOKAN II, CT XIX/NO.21C, RT.04/RW.02', '88828541', 'L', 'O', '1960-02-25', 'YOGYAKARTA', 3, 1, 'PUGERAN', '1960-03-01', 'NO. 3015', '', '', '2', '', 'KIDULOJI', '1972-07-04', '', '0', '', '0000-00-00', 2, 'ST ROBERTUS JAKARTA', NULL, '1994-11-12', '1104/70/94', '', 4, 8, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(287, '300730010040150002', 66, 2, 'ARYANTI EKANINGSIH, SISILIA', '', 'KLEDOKAN II, CT XIX/NO.21C, RT.04/RW.02', '88828541', 'P', 'AB', '1963-12-03', 'JAKARTA', 3, 1, 'JAKARTA', '1963-12-08', 'NO. 10728', '', '', '2', '', 'ST. ROBERTI', '1976-09-19', '', '0', '', '0000-00-00', 2, 'ST ROBERTUS JAKARTA', NULL, '1994-11-12', '1104/70/94', '', 5, 13, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(288, '300730010040150003', 66, 3, 'PUTRO KATON PANGESTU, YOHANES', '', 'KLEDOKAN II, CT XIX/NO.21C, RT.04/RW.02', '88828541', 'L', 'B', '2000-06-29', 'BEKASI', 3, 1, 'BEKASI', '2000-10-29', 'NO.1142', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(289, '300730010040160004', 67, 1, 'B. SURYANI', '', 'KLEDOKAN CT XIX/ C.26, RT.04/RW.02', '(0274)488277', 'L', 'O', '1951-11-05', 'KOTABUMI', 3, 2, 'PUGERAN', '1970-03-15', 'NO.IX/ HAL.41/ NO.163', '', '', '2', '', 'PUGERAN', '1970-06-23', '', '0', '', '0000-00-00', 2, 'BABARSARI', NULL, '1973-04-11', 'BUKU/ NO.144/1973', '', 4, 13, 34, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(290, '300730010040160005', 67, 2, 'B. TRI MURYULIATI', '', 'KLEDOKAN CT XIX/ C.26, RT.04/RW.02', '(0274)488277', 'P', 'AB', '1954-07-31', 'YOGYAKARTA', 3, 7, 'BABARSARI', '1984-06-05', 'VI/ NO.89', '', '', '2', '', 'BABARSARI', '1984-07-30', '', '0', '', '0000-00-00', 2, 'BABARSARI', NULL, '1973-04-11', 'BUKU/ NO.144/1973', '', 3, 44, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(291, '300730010040170006', 68, 1, 'OME, FRANSISKUS XAVERIUS', '', 'KLEDOKAN CT XIX, RT.05/RW.02', '81227251378', 'L', 'O', '1978-02-18', 'KUPANG', 3, 1, 'KUPANG', '1978-03-18', 'NO.1540', '', '', '2', '', 'KUPANG', '1990-10-21', '', '0', '', '0000-00-00', 2, 'BABARSARI', NULL, '2006-09-25', 'ANNO 2006/LM IV/FOL.4/NO.122', '', 2, 66, 58, 16, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(292, '300730010040170007', 68, 2, 'ZUBANA OME LEBA, ADELIDA', '', 'KLEDOKAN CT XIX, RT.05/RW.02', '81227251378', 'P', 'AB', '1978-04-16', 'KUPANG', 3, 7, 'BABARSARI', '2009-04-08', 'NO.225/ BUKU I', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BABARSARI', NULL, '2006-09-25', 'ANNO 2006/LM IV/FOL.4/NO.122', '', 2, 66, 62, 16, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(293, '300730010040170008', 68, 3, 'ISABELA CRISTINA HADJO, BERNADETA', '', 'KLEDOKAN CT XIX, RT.05/RW.02', '81227251378', 'P', 'bt', '1999-07-14', 'KUPANG', 3, 7, 'BABARSARI', '2009-04-09', 'NO.26/BUKU I', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 1, 66, 99, 16, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(294, '300730010040180009', 69, 1, 'Y. ARI HERMAWAN', '', 'KLEDOKAN CT XIX/NO.29, RT.04/RW.02', '8562899699', 'L', 'bt', '1978-11-24', 'KUPANG', 3, 1, 'KETAPANG', '1978-12-31', '-', '', '', '2', '', 'KETAPANG', '1998-12-31', '', '0', '', '0000-00-00', 2, 'BABARSARI', NULL, '2009-07-19', '0458/CS/6/2009', '', 6, 33, 9, 9, 100, 0, 1, 6, 0, 3, 2, 0, 2, 0, 0, 0, NULL, NULL),
(295, '300730010040180010', 69, 2, 'A. ADE SHITA MARTATI', '', 'KLEDOKAN CT XIX/NO.29, RT.04/RW.02', '8562899699', 'P', 'bt', '1978-03-31', 'YOGYAKARTA', 3, 2, 'BABARSARI', '1984-06-05', 'BUKU VI/ NO.100', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BABARSARI', NULL, '2009-07-19', '0458/CS/6/2009', '', 5, 22, 62, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(296, '300730010040180011', 69, 3, 'NANDO MAHESWARA HERMAWAN, CHRISTOPORUS', '', 'KLEDOKAN CT XIX/NO.29, RT.04/RW.02', '8562899699', 'L', 'bt', '2010-09-30', 'YOGYAKARTA', 3, 9, 'BLM', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(297, '300730010040190012', 70, 1, 'BAMIJO PRIYOUTOMO, IGNATIUS', '', 'KLEDOKAN CT XIX/NO. D53, RT.08/RW.03', '(0274)484151', 'L', 'O', '1951-11-15', 'SLEMAN', 3, 3, 'BACIRO', '1985-12-18', 'LIB.VI/FOL.199/NP.795', '', '', '2', '', 'BACIRO', '1986-07-12', '', '0', '', '0000-00-00', 3, 'BACIRO', NULL, '1986-09-24', 'ANNO 1986/LM : II/ FOL NO.632', '', 2, 66, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(298, '300730010040190013', 70, 2, 'SUPARTIYEM, VERONIKA', '', 'KLEDOKAN CT XIX/NO. D53, RT.08/RW.03', '(0274)484151', 'P', 'A', '1952-02-28', 'SLEMAN', 3, 2, 'KALASAN', '1963-04-11', 'BUKU V/HAL.-/NO.4030', '', '', '2', '', 'BACIRO', '1986-07-12', '', '0', '', '0000-00-00', 3, 'BACIRO', NULL, '1986-09-24', 'ANNO 1986/LM : II/ FOL NO.632', '', 5, 47, 37, 9, 304, 0, 1, 6, 0, 5, 2, 0, 4, 0, 0, 0, NULL, NULL),
(299, '300730010040190014', 70, 3, 'WIYANTO, HERIBERTUS', '', 'KLEDOKAN CT XIX/NO. D53, RT.08/RW.03', '(0274)484151', 'L', 'O', '1978-09-09', 'SLEMAN', 3, 2, 'BACIRO', '1985-12-18', 'BUKU VI/HAL.-/NO.796', '', '', '2', '', 'BACIRO', '1994-05-15', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 4, 3, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(300, '300730010040190015', 70, 3, 'DEDI TRIWIJAYA, HENRICUS', '', 'KLEDOKAN CT XIX/NO. D53, RT.08/RW.03', '(0274)484151', 'L', 'O', '1986-02-28', 'SUKABUMI', 3, 1, 'BACIRO', '1986-04-26', 'BUKU VI/ NO.867', '', '', '2', '', 'BACIRO', '2000-09-29', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 61, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(301, '300730010040200016', 71, 1, 'ARINTO KUSNAN, YULIUS', '', 'KLEDOKAN CT.XIX/D.17, RT.06/RW.08', '85729365990', 'L', 'B', '1968-10-25', 'KOTABUMI', 3, 1, 'KOTABUMI', '1968-12-12', '-', '', '', '2', '', 'T. KARANG', '1982-10-22', '', '0', '', '0000-00-00', 2, 'BABARSARI', NULL, '2010-07-03', 'NO.49/ LM I', '', 5, 3, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(302, '300730010040200017', 71, 2, 'KUSNI KUMALAWATI, CHRISTINA', '', 'KLEDOKAN CT.XIX/D.17, RT.06/RW.08', '85729365990', 'P', 'B', '1973-07-13', 'SLEMAN', 3, 2, 'BACIRO', '1985-12-18', 'VI HAL- NO. 793', '', '', '2', '', 'BACIRO', '1988-06-11', '', '0', '', '0000-00-00', 2, 'BABARSARI', NULL, '2010-07-03', 'NO.49/ LM I', '', 5, 58, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(303, '300730010040210018', 72, 1, 'SUPRIYANTO, VINCENTIUS', '', 'KLEDOKAN CT XIX/ BLOK C NO.143, RT05/RW02', '-', 'L', 'O', '1963-03-23', 'SEMARANG', 3, 7, 'BACIRO', '1985-05-20', 'VI/ HAL. 116/ NO. 463', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1985-08-28', 'ANNO 1985/ LM. II/ FOL.134/ NO. 535', '', 2, 66, 41, 9, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(304, '300730010040210019', 72, 2, 'SUSI HANJANI, ANGELA MARICI', '', 'KLEDOKAN CT XIX/ BLOK C NO.143, RT05/RW02', '-', 'P', 'A', '1964-11-10', 'YOGYAKARTA', 3, 3, 'BACIRO', '1985-05-20', 'VI/ HAL.116/ NO.462', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1985-08-28', 'ANNO 1985/ LM. II/ FOL.134/ NO. 535', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(305, '300730010040210020', 72, 3, 'ROSALIA YUSTIN ERVINASARI', '', 'KLEDOKAN CT XIX/ BLOK C NO.143, RT05/RW02', '-', 'P', 'O', '1986-04-17', 'YOGYAKARTA', 3, 1, 'BACIRO', '1986-05-04', 'VI/ HAL.219/NO.873', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 60, 37, 9, 100, 0, 1, 6, 0, 5, 2, 0, 4, 0, 0, 0, NULL, NULL),
(306, '300730010040210021', 72, 3, 'BETTY NURMALITASI, VINCENTIANA', '', 'KLEDOKAN CT XIX/ BLOK C NO.143, RT05/RW02', '-', 'P', 'A', '1992-02-26', 'YOGYAKARTA', 3, 1, 'BACIRO', '1992-12-31', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 65, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(307, '300730010040220022', 73, 1, 'A. SUTRISNO', '', 'KLEDOKAN CT XIX/NO.3, RT.04/RW.02', '(0274)484112', 'L', 'O', '1945-09-08', 'WONOGIRI', 3, 1, 'BETAL', '1945-09-13', 'LIB.III/FOL.153/NO,2580', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'PUGERAN', NULL, '1972-08-13', 'ANNO.-/VOL L.II/ FOL.102/ NO.1165', '', 5, 18, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(308, '300730010040220023', 73, 2, 'WIDYANINGSIH, ABERTA', '', 'KLEDOKAN CT XIX/NO.3, RT.04/RW.02', '(0274)484112', 'P', 'A', '1949-05-13', 'BANTUL', 3, 2, 'PUGERAN', '1968-12-31', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'PUGERAN', NULL, '1972-08-13', 'ANNO.-/VOL L.II/ FOL.102/ NO.1165', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(309, '300730010040220024', 73, 3, 'UNTO ARIBOWO, BENEDEKTUS', '', 'KLEDOKAN CT XIX/NO.3, RT.04/RW.02', '(0274)484112', 'L', 'O', '1982-10-12', 'YOGYAKARTA', 3, 1, 'BABARSARI', '1983-02-13', 'V/HAL.-/NO.1309', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 13, 37, 9, 100, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(310, '300730010040230025', 74, 1, 'HARUM SURYADI, IGNATIUS', '', 'KLEDOKAN CT XIX/BLOK G NO.31, RT01/RW01', '(0274)489881', 'L', 'O', '1952-12-15', 'MAGELANG', 3, 1, 'MAGELANG', '1955-05-18', 'NO.9052/LIB/VII', '', '', '2', '', 'MAGELANG', '1960-11-01', '', '0', '', '0000-00-00', 3, 'JAKARTA', NULL, '1980-01-19', 'BUKU KAWIN. M/I NO.297', '', 4, 8, 52, 9, 100, 0, 1, 3, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(311, '300730010040230026', 74, 2, 'ROSITA IRMAWATI', '', 'KLEDOKAN CT XIX/BLOK G NO.31, RT01/RW01', '(0274)489881', 'P', 'B', '1955-02-05', 'MALANG', 1, 11, 'TDK', '0000-00-00', '', '', '', '1', '', 'TDK', '0000-00-00', '', '0', '', '0000-00-00', 3, 'JAKARTA', NULL, '1980-01-19', 'BUKU KAWIN. M/I NO.297', '', 4, 53, 62, 9, 99, 0, 1, 0, 0, 0, 2, 0, 99, 0, 0, 0, NULL, NULL),
(312, '300730010040230027', 74, 3, 'HARIYANI PRASETYO', '', 'KLEDOKAN CT XIX/BLOK G NO.31, RT01/RW01', '(0274)489881', 'L', 'B', '1980-04-27', 'YOGYAKARTA', 3, 2, 'SDH', '0000-00-00', 'IX/HAL.-/NO.732', '', '', '2', '', 'BACIRO', '2002-11-24', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 60, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(313, '300730010040240028', 75, 1, 'SUHARTO, EMMANUEL', '', 'KLEDOKAN II NO.D 57A, CT XIX', '87888446363', 'L', 'B', '1945-05-21', 'NGAWI', 3, 8, 'KOTABARU', '1969-08-30', '14/HAL.507', '', '', '2', '', 'JAMBI', '1971-12-31', '', '0', '', '0000-00-00', 2, 'PLAJU, SUMATERA SELATAN', NULL, '1969-11-02', '-', '', 5, 13, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(314, '300730010040240029', 75, 2, 'ATIK S, MARIA BONAVENTURA', '', 'KLEDOKAN II NO.D 57A, CT XIX', '87888446363', 'P', 'A', '1947-05-15', 'NGANJUK', 3, 2, 'KEDIRI', '1960-12-24', '-', '', '', '2', '', 'KEDIRI', '1962-12-31', '', '0', '', '0000-00-00', 2, 'PLAJU, SUMATERA SELATAN', NULL, '1969-11-02', '-', '', 5, 62, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(315, '300730010040250030', 76, 1, 'BUARI, JOHANES', '', 'KLEDOKAN JL. KAPAS NO 15, RT03/RW01', '(0274) 488758', 'L', 'O', '1944-06-02', 'SURABAYA', 3, 3, 'BONTANG', '1985-02-23', 'BUKU I/HAL.16/NO.152', '', '', '2', '', 'KOTABARU', '2004-09-16', '', '0', '', '0000-00-00', 2, 'SEMARANG', NULL, '1977-11-18', 'ANNO 1977/VOL.VIII/FOL.12/NO.47', '', 5, 13, 34, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(316, '300730010040250031', 76, 2, 'SRI HARTATI, MARIA ANASTASIA', '', 'KLEDOKAN JL. KAPAS NO 15, RT03/RW01', '(0274) 488758', 'P', 'O', '1953-04-12', 'SEMARANG', 3, 2, 'SEMARANG', '1969-03-24', 'BUKU XXI/HAL.6/NO.85', '', '', '2', '', 'SEMARANG', '1970-05-02', '', '0', '', '0000-00-00', 2, 'SEMARANG', NULL, '1977-11-18', 'ANNO 1977/VOL.VIII/FOL.12/NO.47', '', 3, 66, 62, 9, 100, 0, 1, 1, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(317, '300730010040250032', 76, 3, 'MANDITO BUARI, STEFANUS', '', 'KLEDOKAN JL. KAPAS NO 15, RT03/RW01', '(0274) 488758', 'L', 'O', '1978-09-30', 'BALIKPAPAN', 3, 1, 'BONTANG', '1985-02-23', 'BUKU I/ HAL.16/NO.153', '', '', '2', '', 'BUNYU', '1992-12-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 4, 13, 56, 9, 100, 0, 1, 6, 0, 4, 1, 0, 4, 0, 0, 0, NULL, NULL),
(318, '300730010040250033', 76, 3, 'KARINA TRISADEWI BUARI', '', 'KLEDOKAN JL. KAPAS NO 15, RT03/RW01', '(0274) 488758', 'L', 'O', '1984-10-07', 'SANGATA', 3, 1, 'BONTANG', '1985-02-23', 'BUKU I/HAL.17/NO.155', '', '', '2', '', 'BACIRO', '2003-12-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 13, 56, 9, 309, 0, 1, 6, 0, 4, 1, 0, 4, 0, 0, 0, NULL, NULL),
(319, '300730010040260034', 77, 1, 'TITENI HANDAYANI, ROSALIA', '', 'KLEDOKAN CT XIX/BLOK B, RT.01/RW.01', '-', 'P', 'O', '1960-09-15', 'DEMANGAN', 3, 1, 'BACIRO', '1967-03-20', 'BUKU I/HAL.-/NO.426', '', '', '2', '', 'BACIRO', '1978-08-09', '', '0', '', '0000-00-00', 3, 'SLEMAN', NULL, '1981-12-31', 'NO. 426/CS/1981', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(320, '300730010040270035', 78, 1, 'SUTARYA, STANISLAUS', '', 'KLEDOKAN CT XIX DP.1/NO.176, RT.06/RW.03', '(0274)484181', 'L', 'O', '1941-12-15', 'PATI', 3, 2, 'PATI', '1958-12-23', '-', '', '', '2', '', 'PATI', '1960-12-31', '', '0', '', '0000-00-00', 2, 'PUGERAN', NULL, '1971-02-21', 'NO.100/1971', '', 5, 69, 38, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(321, '300730010040270036', 78, 2, 'HERLIEN TS, ANASTASIA', '', 'KLEDOKAN CT XIX DP.1/NO.176, RT.06/RW.03', '(0274)484181', 'P', 'O', '1951-11-17', 'JAKARTA', 3, 2, 'PUGERAN', '1970-12-22', '-', '', '', '2', '', 'BACIRO', '1987-12-31', '', '0', '', '0000-00-00', 2, 'PUGERAN', NULL, '1971-02-21', 'NO.100/1971', '', 3, 66, 62, 9, 100, 0, 1, 2, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(322, '300730010040280037', 79, 1, 'TUKIJAH SALIMAN, MARIA', '', 'KLEDOKAN CT XIX BLOK D.24, RT.06/RW.03', '-', 'P', 'bt', '1949-06-01', 'SLEMAN', 3, 3, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 5, 'BLM', NULL, '0000-00-00', '-', '', 1, 66, 62, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(323, '300730010040290038', 80, 1, 'SUSILO R, MARKUS', '', 'KLEDOKAN CT XIX D.29, TR.07/RW.03', '-', 'L', 'B', '1963-09-07', 'YOGYAKARTA', 3, 1, 'PUGERAN', '1963-12-31', 'VIII/HAL.144/NO.430', '', '', '2', '', 'KIDULOJI', '1979-12-31', '', '0', '', '0000-00-00', 3, 'BACIRO', NULL, '1986-12-31', '-', '', 3, 66, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(324, '300730010040290039', 80, 2, 'TRI HARYANTI, ANASTASIA', '', 'KLEDOKAN CT XIX D.29, TR.07/RW.03', '-', 'P', 'AB', '1964-02-28', 'YOGYAKARTA', 3, 3, 'BACIRO', '1993-04-06', 'VIII/HAL.144/NO.430', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 3, 'BACIRO', NULL, '1986-12-31', '-', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(325, '300730010040290040', 80, 3, 'ANANDA RISKY PERMATASARI, VALERIA', '', 'KLEDOKAN CT XIX D.29, TR.07/RW.03', '-', 'P', 'B', '1987-04-25', 'YOGYAKARTA', 3, 1, 'BACIRO', '1993-04-06', 'VIII/HAL.143/NO.429', '', '', '2', '', 'KOTABARU', '2000-12-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 31, 65, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(326, '300730010040290041', 80, 3, 'AGASTYA PRAMUDYA WARDANA, VICTOR', '', 'KLEDOKAN CT XIX D.29, TR.07/RW.03', '-', 'L', 'AB', '1994-02-14', 'YOGYAKARTA', 3, 1, 'BABARSARI', '1994-04-10', 'VIII/HAL.239/NO.715', '', '', '2', '', 'KOTABARU', '2006-12-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 64, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(327, '300730010040300042', 81, 1, 'SUJAK KARDANI, FRANSISKUS XAVERIUS', '', 'JL. KAPAS 27, KLEDOKAN CT XIX', '(0274)7403188', 'L', 'B', '1942-03-06', 'DEMAK', 3, 3, 'GEDANGAN', '1960-12-31', '-', '', '', '2', '', 'KOTABARU', '1964-12-31', '', '0', '', '0000-00-00', 2, 'PRINGWULUNG', NULL, '1974-02-26', 'VEL I/M II/FAL 97/NO.340', '', 5, 55, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(328, '300730010040300043', 81, 2, 'SITI MURSINAH, STEFANI', '', 'JL. KAPAS 27, KLEDOKAN CT XIX', '(0274)7403188', 'P', 'A', '1953-11-08', 'SOLO', 3, 3, 'JAKARTA', '1990-12-17', 'VI/HAL.133/NO.6623/519', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'PRINGWULUNG', NULL, '1974-02-26', 'VEL I/M II/FAL 97/NO.340', '', 3, 66, 56, 9, 100, 0, 1, 3, 0, 0, 2, 0, 4, 0, 0, 0, NULL, NULL),
(329, '300730010040300044', 81, 3, 'CHRISTIONO YULIANTO KARDANI, IGNATIUS', '', 'JL. KAPAS 27, KLEDOKAN CT XIX', '(0274)7403188', 'L', 'B', '1982-07-31', 'SEMARANG', 3, 2, 'JAKARTA', '1994-04-01', '-', '', '', '2', '', 'MBK', '1996-10-17', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 62, 37, 9, 330, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(330, '300730010040300045', 81, 3, 'IWAN KURNIAWAN, VINCENTIUS', '', 'JL. KAPAS 27, KLEDOKAN CT XIX', '(0274)7403188', 'L', 'AB', '1985-06-23', 'JEMBER', 3, 2, 'KOTABARU', '1998-12-22', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 60, 37, 9, 304, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(331, '300730010040310046', 82, 1, 'SOEJASMINAH, FLORENTINA', '', 'KLEDOKAN CT XIX/C.143, RT.05/RW.03', '81328065361', 'P', 'AB', '1946-06-26', 'YOGYAKARTA', 3, 3, 'MAGELANG', '1969-11-30', 'BUKU I/NO.289', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BANDUNG', NULL, '1969-12-17', '-', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(332, '300730010040320047', 83, 1, 'CAHYANTO ADI, OCTAVIANUS', '', 'PERUM GRAHA YASA CT XIX/2 KLEDOKAN', '85328028882', 'L', 'A', '1980-10-02', 'SLEMAN', 3, 2, 'SAYEGAN', '1989-11-11', 'S.I HAL.-, NO.931', '', '', '2', '', 'BACIRO', '1992-10-18', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '2005-07-03', 'ANNO 2005/ LM IV/FOL 18/NO.54', '', 5, 44, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(333, '300730010040320048', 83, 2, 'EMY SUWANDI, MARGARETA', '', 'PERUM GRAHA YASA CT XIX/2 KLEDOKAN', '85328028882', 'P', 'O', '1980-03-26', 'KENDARI', 3, 1, 'KENDARI', '1980-05-15', 'NO. XR. 1614', '', '', '2', '', 'KENDARI', '1996-12-03', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '2005-07-03', 'ANNO 2005/ LM IV/FOL 18/NO.54', '', 5, 60, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(334, '300730010040330049', 84, 1, 'YOHANA ASIH SUDARSIH, FRANSISCA', '', 'KLEDOKAN CT XIX/D.65, TR.06/RW.03', '8154854677', 'P', 'O', '1948-10-10', 'SURAKARTA', 3, 3, 'KOTABARU', '1970-12-15', 'LIB.XV/NO.42', '', '', '2', '', 'KOTABARU', '1972-12-31', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 3, 66, 4, 9, 100, 0, 1, 3, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(335, '300730010040340050', 85, 1, 'R.M.B DJANGANG, MARIA IMAKULATA', '', 'KLEDOKAN B.64', '85239261118', 'P', 'O', '1992-04-25', 'WAIKABUBAK', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 21, 65, 20, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(336, '300730010040340051', 85, 10, 'SOLOT LANAN, MARIA', '', 'KLEDOKAN B.64', '85239261118', 'P', 'O', '1991-05-30', 'WAIWERANG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 20, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(337, '300730010040340052', 85, 10, 'KARIAM RENI', '', 'KLEDOKAN B.64', '85239261118', 'P', 'B', '1992-06-22', 'WAIKABUBAK', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 20, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(338, '300730010040340053', 85, 10, 'LEY HAY', '', 'KLEDOKAN B.64', '85239261118', 'P', 'O', '1992-06-11', 'MANDAWARI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 63, 65, 8, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(339, '300730010040340054', 85, 10, 'JUSPIANA DAPUNG, MARGARETHA', '', 'KLEDOKAN B.64', '85239261118', 'P', 'A', '1991-10-16', 'WAINGAPU', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 14, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(340, '300730010040340055', 85, 10, 'NATALIANA NIVATSIANA L, MARIA', '', 'KLEDOKAN B.64', '85239261118', 'P', 'O', '1991-12-01', 'RUTENG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(341, '300730010040340056', 85, 10, 'CHONCITA NDAPA, EMILIANA', '', 'KLEDOKAN B.64', '85239261118', 'P', 'O', '1989-03-14', 'WAIKABUBAK', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 30, 65, 20, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(342, '300730010040340057', 85, 10, 'MENGE BU''U, NATALIA', '', 'KLEDOKAN B.64', '85239261118', 'P', 'O', '1992-12-19', 'WEETABULA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 20, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(343, '300730010040340058', 85, 10, 'ASSUMPTA BIU, MARIA', '', 'KLEDOKAN B.64', '85239261118', 'P', 'B', '1992-06-17', 'PALLA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 20, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(344, '300730010040340059', 85, 10, 'IMISON NANI, YULIANA', '', 'KLEDOKAN B.64', '85239261118', 'P', 'bt', '1990-06-14', 'WEETABULA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 70, 65, 20, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(345, '300730010040350060', 86, 1, 'BOUK, MELANIA', '', 'JL. NANGKA-NO.79, RT.02,RW.01, SANEN', '85228829204', 'P', 'B', '1990-03-24', 'BUIKOUN', 3, 1, 'BUIKOUN', '1990-03-29', '-', '', '', '2', '', 'HALILULIK', '2003-10-21', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(346, '300730010040350061', 86, 10, 'FALEVIANI BOISALA, KRISTINA', '', 'JL. NANGKA-NO.79, RT.02,RW.01, SANEN', '85228829204', 'P', 'B', '1990-12-23', 'ATAMBUA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(347, '300730010040350062', 86, 10, 'IVOLINA LANDO, MARIA', '', 'JL. NANGKA-NO.79, RT.02,RW.01, SANEN', '85228829204', 'P', 'O', '1991-05-14', 'RIUNG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 37, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(348, '300730010040350063', 86, 10, 'ESTY, OLIVIA', '', 'JL. NANGKA-NO.79, RT.02,RW.01, SANEN', '85228829204', 'P', 'O', '1987-10-31', 'PONTIANAK', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 6, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(349, '300730010040350064', 86, 10, 'SANARTI JUITA, MARIA', '', 'JL. NANGKA-NO.79, RT.02,RW.01, SANEN', '85228829204', 'P', 'O', '1991-06-15', 'WAEVANA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(350, '300730010040350065', 86, 10, 'BEGAN KOPONG, MARIA', '', 'JL. NANGKA-NO.79, RT.02,RW.01, SANEN', '85228829204', 'P', 'O', '1992-04-29', 'WAIKABUBAK', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(351, '300730010040350066', 86, 10, 'PITANG, ELIZABETH', '', 'JL. NANGKA-NO.79, RT.02,RW.01, SANEN', '85228829204', 'P', 'B', '1991-11-26', 'WAIKABUBAK', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(352, '300730010040350067', 86, 10, 'DWIYUNITA WARU PETUA', '', 'JL. NANGKA-NO.79, RT.02,RW.01, SANEN', '85228829204', 'P', 'O', '1992-06-02', 'RUTENG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(353, '300730010040350068', 86, 10, 'SEUVASIA MONES, YOSEFINA', '', 'JL. NANGKA-NO.79, RT.02,RW.01, SANEN', '85228829204', 'P', 'O', '1990-09-13', 'TINI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 30, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(354, '300730010040350069', 86, 10, 'AMBU MAY DJILIK, EMILIANAN', '', 'JL. NANGKA-NO.79, RT.02,RW.01, SANEN', '85228829204', 'P', 'bt', '1993-02-08', 'WAINGAPU', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(355, '300730010040360070', 87, 1, 'GEROLIVHA RENNY MULE', '', 'KLEDOKAN', '81392471779', 'P', 'O', '1991-11-01', 'ATAMBUA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 21, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(356, '300730010040360071', 87, 10, 'LAURA MAGDALENA ULU, THERESIA', '', 'KLEDOKAN', '81392471779', 'P', 'B', '1990-10-12', 'SOE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(357, '300730010040360072', 87, 10, 'FIRMINA LODAN, YOHANA', '', 'KLEDOKAN', '81392471779', 'P', 'AB', '1990-02-17', 'ATAMBUA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(358, '300730010040360073', 87, 10, 'USATNESI, MARSELA', '', 'KLEDOKAN', '81392471779', 'P', 'bt', '1991-02-28', 'USAPINAEK', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(359, '300730010040360074', 87, 10, 'PRISCA HALE LEHANG, THERESIA', '', 'KLEDOKAN', '81392471779', 'P', 'bt', '1992-11-03', 'ATAMBUA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 30, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(360, '300730010040360075', 87, 10, 'YULIA GEME, DOMINIKA', '', 'KLEDOKAN', '81392471779', 'P', 'O', '1990-01-03', 'BAJAWA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 30, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(361, '300730010040360076', 87, 10, 'D. NURA, MARIA FATIMA', '', 'KLEDOKAN', '81392471779', 'P', 'A', '1990-01-02', 'BAJAWA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 5, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(362, '300730010040360077', 87, 10, 'EPRIYANI', '', 'KLEDOKAN', '81392471779', 'P', 'B', '1992-08-08', 'SANGGAU LEDO', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 30, 65, 6, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(363, '300730010040360078', 87, 10, 'HARTATI NDANGA, HERMELINDA', '', 'KLEDOKAN', '81392471779', 'P', 'O', '1988-05-07', 'ENDE', 3, 1, 'WOLOSAMBI', '1988-08-31', '-', '', '', '2', '', 'WOLOSAMBI', '1999-04-28', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(364, '300730010040360079', 87, 10, 'LAURENSIA BAU, CORNELIA', '', 'KLEDOKAN', '81392471779', 'P', 'O', '1989-08-10', 'MALIANA', 3, 1, 'MALIANA', '1989-08-20', '-', '', '', '2', '', 'HALILULIK', '2003-06-14', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(365, '300730010040370080', 88, 1, 'BAREK OLA, MARIA GORETI', '', 'KLEDOKAN B.31', '-', 'P', 'O', '1992-03-02', 'ADONARA', 3, 1, 'ADONARA', '1992-10-07', '-', '', '', '2', '', 'ADONARA', '2007-02-12', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 30, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(366, '300730010040370081', 88, 10, 'ANGELINA DJATAR, THERESIA', '', 'KLEDOKAN B.31', '-', 'P', 'O', '1987-06-02', 'MAUMERE', 3, 1, 'MAUMERE', '1987-09-10', '-', '', '', '2', '', 'MAUMERE', '1999-04-28', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(367, '300730010040370082', 88, 10, 'NAHAK, MARTHALENA', '', 'KLEDOKAN B.31', '-', 'P', 'B', '1988-01-23', 'BELU', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(368, '300730010040370083', 88, 10, 'MODESTA A. P. DA'' CONCEICAO', '', 'KLEDOKAN B.31', '-', 'P', 'B', '1990-11-06', 'BETUN', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 30, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(369, '300730010040370084', 88, 10, 'ELVIRA LOE, MARIA', '', 'KLEDOKAN B.31', '-', 'P', 'A', '1991-10-29', 'MALIANA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 30, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(370, '300730010040370085', 88, 10, 'ROSIANA', '', 'KLEDOKAN B.31', '-', 'P', 'A', '1991-03-12', 'SEMATA', 3, 2, 'ANATEMBAWANG', '2008-06-08', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 30, 65, 6, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(371, '300730010040370086', 88, 10, 'KLAU FLORA, ANDREA', '', 'KLEDOKAN B.31', '-', 'P', 'O', '1989-11-24', 'BESIKAMA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(372, '300730010040370087', 88, 10, 'M. MITE, AGUSTINA', '', 'KLEDOKAN B.31', '-', 'P', 'B', '1992-08-26', 'ENDE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 30, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(373, '300730010040370088', 88, 10, 'RAHEL SOGEN, IRENE', '', 'KLEDOKAN B.31', '-', 'P', 'O', '1991-08-06', 'SOLOR', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 30, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(374, '300730010040370089', 88, 10, 'JACLIN BUSA, ANTOLONIA', '', 'KLEDOKAN B.31', '-', 'P', 'B', '1992-06-22', 'WEETABULA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(375, '300730010040380090', 89, 1, 'MARLINA NALUN, MARIA', '', 'KLEDOKAN B.68', '81214560085', 'P', 'B', '1989-10-10', 'RIUNG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 30, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(376, '300730010040380091', 89, 10, 'SONIA STELLA', '', 'KLEDOKAN B.68', '81214560085', 'P', 'B', '1992-08-30', 'PALANGKARAYA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, '', NULL, '0000-00-00', '', '', 25, 34, 65, 6, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(377, '300730010040380092', 89, 10, 'NAFRIDA AMPU, MARIA', '', 'KLEDOKAN B.68', '81214560085', 'P', 'A', '1992-07-28', 'WELULIK', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 30, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(378, '300730010040380093', 89, 10, 'THERESA SERAN, MARIA', '', 'KLEDOKAN B.68', '81214560085', 'P', 'O', '1992-10-30', 'HALILULIK', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(379, '300730010040380094', 89, 10, 'DEVI BERE ANDRYANI', '', 'KLEDOKAN B.68', '81214560085', 'P', 'B', '1991-04-11', 'BESIKAMA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(380, '300730010040380095', 89, 10, 'AGUSTINA YUNISIA SANTUR, MARIA', '', 'KLEDOKAN B.68', '81214560085', 'P', 'B', '1988-08-17', 'RUTENG', 3, 1, 'RUTENG', '1988-09-04', 'BUKU XVI/ NO.43531', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(381, '300730010040380096', 89, 10, 'MARLENI BITA, MARIA', '', 'KLEDOKAN B.68', '81214560085', 'P', 'A', '1991-03-24', 'KEFA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(382, '300730010040380097', 89, 10, 'MERSIANA TAEK, YUSTINA', '', 'KLEDOKAN B.68', '81214560085', 'P', 'O', '1992-03-12', 'HALILULIK', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(383, '300730010040380098', 89, 10, 'TRIVONIA NAIMENA YOSEFINA', '', 'KLEDOKAN B.68', '81214560085', 'P', 'O', '1991-12-07', 'WINI', 3, 2, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(384, '300730010040380099', 89, 10, 'SRI BR. SEMBIRING, VALENTINA', '', 'KLEDOKAN B.68', '81214560085', 'P', 'bt', '1992-07-12', 'MEDAN', 3, 1, 'SUGIHEN', '1993-06-17', 'HAL.147/NO.10554/ BUKU IV.', '', '', '2', '', 'ST. ANTONIUS', '2009-06-13', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(385, '300730010040390100', 90, 1, 'HENY TAKELEB, MARIA', '', 'KLEDOKAN CT XIX/NO.79', '81214572313', 'P', 'O', '1992-10-05', 'PONU', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 24, 30, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(386, '300730010040390101', 90, 10, 'NAHAS, YOLANDA', '', 'KLEDOKAN CT XIX/NO.79', '81214572313', 'P', 'B', '1991-07-10', 'DILLI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 30, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(387, '300730010040390102', 90, 10, 'SANDARYANI, BONIFASIA', '', 'KLEDOKAN CT XIX/NO.79', '81214572313', 'P', 'B', '1992-08-30', 'MANGGARAI', 3, 1, 'SIKKA', '1993-04-30', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(388, '300730010040390103', 90, 10, 'HELFREDSIA KOJA, ANGGELINA', '', 'KLEDOKAN CT XIX/NO.79', '81214572313', 'P', 'O', '1992-05-05', 'MANGGARAI', 3, 1, 'MANGGARAI', '1992-08-08', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 30, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(389, '300730010040390104', 90, 10, 'KRISTINA LEWERANG, MARIA', '', 'KLEDOKAN CT XIX/NO.79', '81214572313', 'P', 'O', '1987-06-26', 'LARANTUKA', 3, 1, 'LARANTUKA', '1987-06-29', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 30, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(390, '300730010040390105', 90, 10, 'YULIANTI TANI, ELIZABETH', '', 'KLEDOKAN CT XIX/NO.79', '81214572313', 'P', 'O', '1991-07-01', 'DILI', 3, 1, 'DILI', '1991-10-21', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 30, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(391, '300730010040390106', 90, 10, 'AVILA RIFA, THERESIA', '', 'KLEDOKAN CT XIX/NO.79', '81214572313', 'P', 'O', '1989-10-14', 'ENDE', 3, 1, 'ENDE', '1989-10-15', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 30, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(392, '300730010040390107', 90, 10, 'ODILIA LILIWERI, WILFRIDA', '', 'KLEDOKAN CT XIX/NO.79', '81214572313', 'P', 'O', '1991-07-18', 'LARANTUKA', 3, 1, 'LARANTUKA', '1991-07-21', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 57, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(393, '300730010040390108', 90, 10, 'OLIVA ATE ESTER', '', 'KLEDOKAN CT XIX/NO.79', '81214572313', 'P', 'AB', '1993-03-23', 'ENDE', 3, 1, 'ENDE', '1993-03-29', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 30, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(394, '300730010040390109', 90, 10, 'SUTRIANI, ANGELA', '', 'KLEDOKAN CT XIX/NO.79', '81214572313', 'P', 'A', '1991-04-21', 'LABUAN BAJU', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(395, '300730010040400110', 91, 1, 'INA NURA, DELSIANA', '', 'KLEDOKAN NO. B-4C', '85253113494', 'P', 'O', '1991-12-21', 'WAINGAPU', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 34, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(396, '300730010040400111', 91, 10, 'VERSIANA BILI, NATALIA', '', 'KLEDOKAN NO. B-4C', '85253113494', 'P', 'O', '1989-12-03', 'WEETEBULA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(397, '300730010040400112', 91, 10, 'YENIARTI GAE, ANGELINA', '', 'KLEDOKAN NO. B-4C', '85253113494', 'P', 'A', '1991-01-28', 'BAJAWA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(398, '300730010040400113', 91, 10, 'REGINA RESI WIDU, BERGITA', '', 'KLEDOKAN NO. B-4C', '85253113494', 'P', 'O', '1990-06-11', 'NDIKI BARU', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(399, '300730010040400114', 91, 10, 'LISU ATE, MARIA', '', 'KLEDOKAN NO. B-4C', '85253113494', 'P', 'O', '1988-06-11', 'BONGGOR', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(400, '300730010040400115', 91, 10, 'WINARTI, KRISTINA', '', 'KLEDOKAN NO. B-4C', '85253113494', 'P', 'O', '1988-06-03', 'LANGGUR', 3, 1, 'OHOIJANG', '1988-11-05', 'NO.346/ LB 1', '', '', '2', '', 'LANGGUR', '1999-11-30', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 63, 65, 9, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(401, '300730010040400116', 91, 10, 'WINDARYATI, HENDRIKA', '', 'KLEDOKAN NO. B-4C', '85253113494', 'P', 'O', '1990-08-09', 'LANGGUR', 3, 2, 'OHOIJANG', '1999-09-07', 'NO.89A/ LB 2', '', '', '2', '', 'LANGGUR', '1999-09-30', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 70, 65, 9, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(402, '300730010040400117', 91, 10, 'SUHERLYANTI TALUS ROSINA', '', 'KLEDOKAN NO. B-4C', '85253113494', 'P', 'B', '1990-03-11', 'WEETEBULA', 3, 1, 'KATERDRAL ROH KUDUS', '1990-11-17', '-', '', '', '2', '', 'ST. PETRUS & PAULUS', '2004-08-10', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(403, '300730010040400118', 91, 10, 'NOVITA ESTI JAPI, ALOYSIA', '', 'KLEDOKAN NO. B-4C', '85253113494', 'P', 'O', '1992-06-21', 'WAIKABUBAK', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(404, '300730010040400119', 91, 10, 'ZAARIANI JAPI, SERLINA', '', 'KLEDOKAN NO. B-4C', '85253113494', 'P', 'O', '1990-04-19', 'WAELENGGA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(405, '300730010040410120', 92, 1, 'VILIGIENI LANDIS, MARIA', '', 'JL. KAPAS NO.27-15', '82137355139', 'P', 'bt', '1993-06-26', 'WAINGAPU', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 70, 65, 20, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(406, '300730010040410121', 92, 10, 'PAULANA HANMINA, YOSEFINA', '', 'JL. KAPAS NO.27-15', '82137355139', 'P', 'bt', '1991-06-29', 'KEFAMENANU', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(407, '300730010040410122', 92, 10, 'FRIDOLINA MANEHAT, MARIA', '', 'JL. KAPAS NO.27-15', '82137355139', 'P', 'B', '1990-01-01', 'ATAMBUA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(408, '300730010040410123', 92, 10, 'S. S. B. TULASI, THERESIA', '', 'JL. KAPAS NO.27-15', '82137355139', 'P', 'O', '1990-02-25', 'ATAMBUA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(409, '300730010040410124', 92, 10, 'ROMATRIX ELFRIDA BRIA, TEODORHA', '', 'JL. KAPAS NO.27-15', '82137355139', 'P', 'O', '1991-05-04', 'ATAMBUA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 64, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(410, '300730010040410125', 92, 10, 'MARINI, YUSTINA', '', 'JL. KAPAS NO.27-15', '82137355139', 'P', 'B', '1991-07-15', 'PADANG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 30, 65, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(411, '300730010040410126', 92, 10, 'DOMINGGAS NAHAK, MARIA', '', 'JL. KAPAS NO.27-15', '82137355139', 'P', 'O', '1990-05-13', 'BELU-NTT', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(412, '300730010040410127', 92, 10, 'PAULA MARLA NAHAK, MARIA', '', 'JL. KAPAS NO.27-15', '82137355139', 'P', 'O', '1992-03-26', 'BELU-NTT', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(413, '300730010040420128', 93, 1, 'MANGHAT, HUMBERTO', '', 'KLEDOKAN', '-', 'L', 'B', '1986-07-01', 'TIMOR LESTE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 4, 51, 11, 16, 400, 0, 1, 6, 0, 6, 2, 0, 4, 0, 0, 0, NULL, NULL),
(414, '300730010040420129', 93, 10, 'DERU, YOHANES', '', 'KLEDOKAN', '-', 'L', 'A', '1988-09-14', 'BAJAWA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 37, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(415, '300730010040420130', 93, 10, 'DAPPALOKA, MARCELINUS', '', 'KLEDOKAN', '-', 'L', 'B', '1991-08-05', 'SUMBA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 20, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(416, '300730010040420131', 93, 10, 'WATSON, PAULUS', '', 'KLEDOKAN', '-', 'L', 'O', '1992-09-16', 'ATAMBUA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(417, '300730010040420132', 93, 10, 'DEDI MALIK, MARCELINUS', '', 'KLEDOKAN', '-', 'L', 'O', '1988-03-29', 'ATAMBUA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(418, '300730010040420133', 93, 10, 'LODIVIKUS, ADRIANUS', '', 'KLEDOKAN', '-', 'L', 'A', '1984-06-26', 'MAUMERE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 4, 37, 56, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(419, '300730010040420134', 93, 10, 'SURYA STEFANO, VALENTINO', '', 'KLEDOKAN', '-', 'L', 'O', '1990-11-16', 'ALOR', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 13, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL);
INSERT INTO `umats` (`id`, `kode_umat`, `id_kk`, `id_hubkk`, `nama`, `email`, `alamat`, `tlp`, `jenis_kelamin`, `goldarah`, `tgl_lahir`, `tmplahir`, `id_agama`, `id_statusbaptis`, `tmpbaptis`, `tglbaptis`, `liberbap`, `romobaptis`, `namabaptis`, `stskrisma`, `namakrisma`, `tmpkrisma`, `tglkrisma`, `romokrisma`, `stskomuni`, `tmpkomuni`, `tglkomuni`, `id_statuspernikahan`, `tempatnikah`, `kotamenikah`, `tglnikah`, `libermat`, `romopernikahan`, `id_pendidikan`, `id_bidstudi`, `id_pekerjaan`, `id_suku`, `id_tempattinggal`, `lamatinggal`, `statusTT`, `id_keaktifanparoki`, `id_keaktifangereja`, `id_statuskekatolikan`, `id_statusekonomi`, `id_statuskesehatan`, `id_statussosial`, `jeniskk`, `statuspindah`, `statuskematian`, `nama_ayah`, `nama_ibu`) VALUES
(420, '300730010040420135', 93, 10, 'TAKELOPA FRIDOLIN, YULIANUS', '', 'KLEDOKAN', '-', 'L', 'O', '1988-02-16', 'BAJAWA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(421, '300730010040420136', 93, 10, 'MISSA, MARINO', '', 'KLEDOKAN', '-', 'L', 'B', '1992-05-06', 'KUPANG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(422, '300730010040420137', 93, 10, 'TONDA, MIKAEL', '', 'KLEDOKAN', '-', 'L', 'B', '1989-09-23', 'BAJAWA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(423, '300730010040430138', 94, 1, 'DA CONCEICAO, ANTONIO', '', 'KLEDOKAN', '-', 'L', 'AB', '1988-07-08', 'TIMOR LESTE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 24, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(424, '300730010040430139', 94, 10, 'RIBERU, NICOLAU', '', 'KLEDOKAN', '-', 'L', 'AB', '1988-12-03', 'TIMOR LESTE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(425, '300730010040430140', 94, 10, 'M. BIAMNASI, DELPIANUS', '', 'KLEDOKAN', '-', 'L', 'B', '1987-08-30', 'KEFA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(426, '300730010040430141', 94, 10, 'LOUWEHEQ, RAIMUNDUS', '', 'KLEDOKAN', '-', 'L', 'O', '1989-06-30', 'LARANTUKA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(427, '300730010040430142', 94, 10, 'LEUOBY, MIKAEL', '', 'KLEDOKAN', '-', 'L', 'bt', '1990-09-29', 'LEMBATA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(428, '300730010040430143', 94, 10, 'ROGA MISI, SILVIANUS', '', 'KLEDOKAN', '-', 'L', 'O', '1991-03-27', 'BAJAWA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(429, '300730010040430144', 94, 10, 'HELDER, FEREIRA', '', 'KLEDOKAN', '-', 'L', 'O', '1989-12-12', 'DILI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 39, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(430, '300730010040430145', 94, 10, 'V. DAWA, ANSGARIUS', '', 'KLEDOKAN', '-', 'L', 'AB', '1990-11-02', 'BELU', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(431, '300730010040430146', 94, 10, 'TALU, PRIDOLINUS', '', 'KLEDOKAN', '-', 'L', 'B', '1990-09-05', 'NUNBEI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(432, '300730010040430147', 94, 10, 'W. PORO, HANDRIANUS', '', 'KLEDOKAN', '-', 'L', 'bt', '1991-10-14', 'SUMBA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 8, 65, 20, 400, 0, 1, 6, 0, 5, 2, 0, 4, 0, 0, 0, NULL, NULL),
(433, '300730010040440148', 95, 1, 'FERDINANDO GUDIPUNG, EMANUEL', '', 'KLEDOKAN', '-', 'L', 'O', '1987-08-20', 'BEKASI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 15, 23, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(434, '300730010040440149', 95, 10, 'EKA KURNIAWAN TANDJUNG, STEVANUS', '', 'KLEDOKAN', '-', 'L', 'O', '1988-11-21', 'MAUMERE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 37, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(435, '300730010040440150', 95, 10, 'GIBRAIL MADO, YOHANES', '', 'KLEDOKAN', '-', 'L', 'O', '1991-03-05', 'MAUMERE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 37, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(436, '300730010040440151', 95, 10, 'MOAT BURA, FERDINANDUS', '', 'KLEDOKAN', '-', 'L', 'O', '1991-06-05', 'MAUMERE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(437, '300730010040440152', 95, 10, 'EKA JAMI, AGUSTINUS', '', 'KLEDOKAN', '-', 'L', 'O', '1990-01-01', 'LARANTUKA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(438, '300730010040440153', 95, 10, 'SULAIMAN WILIK SAMARA, ROBERTUS', '', 'KLEDOKAN', '-', 'L', 'A', '1990-04-27', 'ATAMBUA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(439, '300730010040440154', 95, 10, 'GEKENG WOTAN, FRANSISKUS XAVERIUS', '', 'KLEDOKAN', '-', 'L', 'B', '1987-07-06', 'MAUMERE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 66, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(440, '300730010040440155', 95, 10, 'ROY SAPUTRA, PAULUS', '', 'KLEDOKAN', '-', 'L', 'O', '1989-09-21', 'PALANGKARAYA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 40, 65, 6, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(441, '300730010040440156', 95, 10, 'MAXIMUS SURI, INOCENSIUS', '', 'KLEDOKAN', '-', 'L', 'O', '1989-08-13', 'ATAMBUA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 16, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(442, '300730010040440157', 95, 10, 'YOSEPH COPERTINO, VIRGILLUS', '', 'KLEDOKAN', '-', 'L', 'A', '1989-09-18', 'MAUMERE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 7, 24, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(443, '300730010040450158', 96, 1, 'DA SILVA, KAROLUS', '', 'KLEDOKAN', '-', 'L', 'O', '1992-07-05', 'DILI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 60, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(444, '300730010040450159', 96, 10, 'ROY N. MANGUNG, MARTINUS', '', 'KLEDOKAN', '-', 'L', 'O', '1988-11-05', 'ATAMBUA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(445, '300730010040450160', 96, 10, 'MYNOARTO, VINCENCIUS', '', 'KLEDOKAN', '-', 'L', 'O', '1989-04-18', 'RUTENG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 37, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(446, '300730010040450161', 96, 10, 'EL PASHA YULI RAHARJO, YACOBUS', '', 'KLEDOKAN', '-', 'L', 'O', '1979-07-24', 'YOGYAKARTA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 6, '', NULL, '0000-00-00', '', '', 5, 23, 56, 9, 400, 0, 1, 6, 0, 5, 2, 0, 4, 0, 0, 0, NULL, NULL),
(447, '300730010040450162', 96, 10, 'MARYO SIKONE, ENGELBERTUS', '', 'KLEDOKAN', '-', 'L', 'O', '1987-05-15', 'ATAMBUA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 63, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(448, '300730010040450163', 96, 10, 'P. A. SIKONE, NOVARNO', '', 'KLEDOKAN', '-', 'L', 'bt', '1992-11-26', 'ATAMBUA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(449, '300730010040450164', 96, 10, 'BINAR KUSUMAWARDANA, CLAUDIUS', '', 'KLEDOKAN', '-', 'L', 'O', '1989-08-28', 'BANJARNEGARA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 39, 65, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(450, '300730010040450165', 96, 10, 'TAYUA, YOHANES', '', 'KLEDOKAN', '-', 'L', 'O', '1988-05-14', 'BAJAWA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(451, '300730010040450166', 96, 10, 'DOS SANTOS, FERNANDO', '', 'KLEDOKAN', '-', 'L', 'B', '1986-02-15', 'TIMOR LESTE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 16, 400, 0, 1, 6, 0, 6, 2, 0, 4, 0, 0, 0, NULL, NULL),
(452, '300730010040450167', 96, 10, 'KOBES, EMANUEL', '', 'KLEDOKAN', '-', 'L', 'AB', '1989-12-08', 'KEFA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(453, '300730010040460168', 97, 1, 'WINNY LAUREN, EMILIA', '', 'DIRGANTARA II', '-', 'P', 'B', '1992-03-07', 'PONTIANAK', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 15, 11, 65, 20, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(454, '300730010040470169', 98, 1, 'ADI SAPUTRA, YOHANES', '', 'KLEDOKAN', '-', 'L', 'A', '1985-05-25', 'BALI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 70, 65, 2, 400, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(455, '300730010040470170', 98, 10, 'TUNU, ATANASIUS', '', 'KLEDOKAN', '-', 'L', 'A', '1986-08-25', 'SUMBA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 20, 400, 0, 1, 6, 0, 5, 2, 0, 4, 0, 0, 0, NULL, NULL),
(456, '300730010040470171', 98, 10, 'API, GASPAR', '', 'KLEDOKAN', '-', 'L', 'O', '1986-08-23', 'BAJAWA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 5, 2, 0, 4, 0, 0, 0, NULL, NULL),
(457, '300730010040470172', 98, 10, 'CAROLUS', '', 'KLEDOKAN', '-', 'L', 'O', '1990-12-19', 'SUMBA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 20, 400, 0, 1, 6, 0, 5, 2, 0, 4, 0, 0, 0, NULL, NULL),
(458, '300730010040470173', 98, 10, 'FRIDOLIN BI, MAXIMILIANUS', '', 'KLEDOKAN', '-', 'L', 'O', '1992-03-25', 'SUMBA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 20, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(459, '300730010040470174', 98, 10, 'ALCANTARA, PETRUS', '', 'KLEDOKAN', '-', 'L', 'O', '1990-07-19', 'RUTENG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(460, '300730010040470175', 98, 10, 'GADE, AGUSTINUS', '', 'KLEDOKAN', '-', 'L', 'O', '1987-08-01', 'BAJAWA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 6, 2, 0, 4, 0, 0, 0, NULL, NULL),
(461, '300730010040470176', 98, 10, 'DE RAHU, GREGORIAN FREDIK', '', 'KLEDOKAN', '-', 'L', 'O', '1990-05-08', 'ATAMBUA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 25, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(462, '300730010040470177', 98, 10, 'HENRY SUHARDIN, IGNASIUS', '', 'KLEDOKAN', '-', 'L', 'O', '1988-02-12', 'RUTENG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(463, '300730010040470178', 98, 10, 'DA COSTA, CANSIO', '', 'KLEDOKAN', '-', 'L', 'B', '1986-06-18', 'BELI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 4, 51, 11, 16, 400, 0, 1, 6, 0, 5, 2, 0, 4, 0, 0, 0, NULL, NULL),
(464, '300730010040480179', 99, 1, 'N. OLE, YOSAFAT NOBERTUS', '', 'KLEDOKAN', '-', 'L', 'O', '1986-05-07', 'SUMBA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 60, 65, 20, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(465, '300730010040480180', 99, 10, 'C.C.EA, IRENIUS', '', 'KLEDOKAN', '-', 'L', 'O', '1993-04-04', 'SUMBA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 64, 20, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(466, '300730010040480181', 99, 10, 'AGAPITO, LONGUINHOS', '', 'KLEDOKAN', '-', 'L', 'O', '1986-07-15', 'TIMOR LESTE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(467, '300730010040480182', 99, 10, 'FREITAS CRISOSTOMO M.G, REDETOR', '', 'KLEDOKAN', '-', 'L', 'O', '1990-07-06', 'TIMOR LESTE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(468, '300730010040480183', 99, 10, 'BORGES SOARES VALEINTE, LEONEL', '', 'KLEDOKAN', '-', 'L', 'A', '1991-09-26', 'TIMOR LESTE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(469, '300730010040480184', 99, 10, 'PEREIRA ZECA', '', 'KLEDOKAN', '-', 'L', 'O', '1991-06-20', 'TIMOR LESTE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(470, '300730010040480185', 99, 10, 'DALLA, PETRUS', '', 'KLEDOKAN', '-', 'L', 'O', '1985-09-14', 'FLORES', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(471, '300730010040480186', 99, 10, 'BONDAN BAYU', '', 'KLEDOKAN', '-', 'L', 'B', '1992-06-30', 'BOGOR', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 8, 65, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(472, '300730010040480187', 99, 10, 'OKTAVIANUS, ANDREAS', '', 'KLEDOKAN', '-', 'L', 'O', '1992-10-16', 'DILI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 8, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(473, '300730010040480188', 99, 10, 'TANSARI DEWI, THEODORA', '', 'KLEDOKAN', '-', 'L', 'B', '1992-05-30', 'PONTIANAK', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 11, 65, 10, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(474, '300730010040490189', 100, 1, 'OKTAFIANY PRATIWI, MARIA', '', 'KLEDOKAN', '-', 'P', 'bt', '1992-10-02', 'PATENG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 24, 30, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(475, '300730010040500190', 101, 1, 'YUKSTUS DEMON MAKING, GERMANU', '', 'KLEDOKAN, GG. MANGGA IV NO. 33B', '85291077491', 'L', 'bt', '1991-05-28', 'KIMAKANA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'WEPUKANG', '2002-12-31', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 15, 58, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(476, '300730010040510191', 102, 1, 'ALEXANDER KEFI, STEVEN', '', 'JL. KLEDOKAN, B-25', '81227837177', 'L', 'O', '1990-03-13', 'ATAMBUA', 3, 1, 'ATAMBUA', '1994-04-26', '-', '', '', '2', '', 'KEFA', '2000-12-31', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 21, 5, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(477, '300730010040510192', 102, 10, 'DOS SANTOS, FERNANDO', '', 'JL. KLEDOKAN, B-25', '81227837177', 'L', 'O', '1986-02-15', 'AILEU', 3, 1, 'AILEU', '1988-10-29', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 19, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(478, '300730010080440001', 103, 10, 'JUVENAL MAGINO SOARES', '', 'TAMBAK BAYAN III NO. 17', '-', 'L', 'A', '1991-03-01', 'TIMOR LESTE', 3, 1, 'TIMOR LESTE', '1992-02-01', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(479, '300730010080440002', 103, 10, 'LENNY HALIM, CECILIA', '', 'TAMBAK BAYAN III NO. 17', '-', 'P', 'O', '1989-12-18', 'PADANG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 17, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(480, '300730010080450003', 104, 10, 'AMELIA APRIANTI, KATARINA', '', 'JL. BABARSARI TB XIII/ NO.2', '-', 'P', 'B', '1992-04-04', 'BEKASI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 3, 65, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(481, '300730010080450004', 104, 10, 'TAURUS, FREDERIKUS', '', 'JL. BABARSARI TB XIII/ NO.2', '-', 'L', 'O', '1980-07-18', 'PALEMBANG', 3, 1, 'PALEMBANG', '1980-07-18', '-', '', '', '2', '', 'PALEMBANG', '1989-09-19', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 16, 60, 65, 20, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(482, '300730010080450005', 104, 10, 'AUWE, SISILIA', '', 'JL. BABARSARI TB XIII/ NO.2', '-', 'P', 'O', '1986-01-07', 'MOWANEMANI', 3, 1, 'EGEBUTU', '1986-10-20', '-', '', '', '2', '', 'DIYAI', '2006-05-05', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 8, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(483, '300730010080450006', 104, 10, 'WAHYUNI, VENERANDA', '', 'JL. BABARSARI TB XIII/ NO.2', '-', 'P', 'O', '1989-11-23', 'SINTANG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 6, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(484, '300730010080450007', 104, 10, 'FRANSISCA E. S. P, YOANA', '', 'JL. BABARSARI TB XIII/ NO.2', '-', 'P', 'bt', '1992-01-15', 'MADIUN', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 60, 65, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(485, '300730010080500008', 105, 1, 'SULASTRI, NATALIA', '', 'TAMBAK BAYAN TB VIII NO. 8E BABARSARI', '-', 'P', 'A', '1991-02-13', 'KALBAR', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 15, 60, 65, 6, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(486, '300730010080500009', 105, 10, 'ELSA MARIANA SUSANTI, VERENA', '', 'TAMBAK BAYAN TB VIII NO. 8E BABARSARI', '-', 'P', 'bt', '1990-12-20', 'KEBUMEN', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 60, 65, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(487, '300730010080500010', 105, 10, 'RISTIAN HANDOYO, EMANUEL', '', 'TAMBAK BAYAN TB VIII NO. 8E BABARSARI', '-', 'L', 'B', '1990-12-20', 'PALU', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 60, 65, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(488, '300730010080500011', 105, 10, 'VILENSIA HINDOM, GENOVEVE', '', 'TAMBAK BAYAN TB VIII NO. 8E BABARSARI', '-', 'P', 'O', '1992-07-04', 'MANOKWARI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 11, 65, 8, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(489, '300730010080500012', 105, 10, 'RAINHARD, AVELINO', '', 'TAMBAK BAYAN TB VIII NO. 8E BABARSARI', '-', 'L', 'AB', '1991-02-22', 'WAMENA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 8, 65, 18, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(490, '300730010080500013', 105, 10, 'SHINTYA, MARIA', '', 'TAMBAK BAYAN TB VIII NO. 8E BABARSARI', '-', 'P', 'bt', '1989-07-20', 'CIREBON', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 60, 65, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(491, '300730010080500014', 105, 10, 'TRISNAWATI IFANA', '', 'TAMBAK BAYAN TB VIII NO. 8E BABARSARI', '-', 'P', 'O', '1986-10-09', 'KEBUMEN', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 39, 65, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(492, '300730010080500015', 105, 10, 'EDITH MARINA BANA, GRADIANA', '', 'TAMBAK BAYAN TB VIII NO. 8E BABARSARI', '-', 'P', 'B', '1989-08-12', 'KEFAMENANU', 3, 2, 'KEFAMENANU', '1994-08-12', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 53, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(493, '300730010080500016', 105, 10, 'ANGGA, FERNANDO', '', 'TAMBAK BAYAN TB VIII NO. 8E BABARSARI', '-', 'L', 'bt', '1990-11-28', 'B. PURBA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'BABARSARI', '2010-08-15', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 60, 65, 3, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(494, '300730010080510017', 106, 1, 'RAGIL PERMANA, BARNABAS', '', 'BABARSARI TB. XIV/ NO.2', '-', 'L', 'O', '1992-06-11', 'LAMPUNG', 3, 1, 'LAMPUNG', '1992-12-31', '-', '', '', '2', '', 'LAMPUNG', '2008-12-31', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 5, 66, 65, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(495, '300730010080510018', 106, 10, ' RUWAIMAMA, MONIKA', '', 'BABARSARI TB. XIV/ NO.2', '-', 'P', 'AB', '1991-08-30', 'PONTIANAK', 3, 1, 'PONTIANAK', '1991-09-30', '-', '', '', '2', '', 'PONTIANAK', '2007-10-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 11, 65, 6, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(496, '300730010080510019', 106, 10, 'STELLA PAULA, STEPHANIE', '', 'BABARSARI TB. XIV/ NO.2', '-', 'P', 'AB', '1992-06-17', 'PONTIANAK', 3, 2, 'PONTIANAK', '2002-12-22', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 11, 65, 6, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(497, '300730010080510020', 106, 10, 'KARYADI D. SUHANDI, PHILIPUS', '', 'BABARSARI TB. XIV/ NO.2', '-', 'L', 'O', '1992-05-13', 'PONTIANAK', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 60, 65, 6, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(498, '300730010040520001', 107, 1, 'APALABI P. P, MARIA', '', 'JL. KAPAR NO.23 KLEDOKAN', '-', 'P', 'A', '1989-03-26', 'SIKKA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 34, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(499, '300730010040520002', 107, 10, 'LEMBA J. T, ANASTASIUS', '', 'JL. KAPAR NO.23 KLEDOKAN', '-', 'L', 'A', '1989-01-22', 'AIMERE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(500, '300730010040530003', 108, 1, 'PRATIWI, PRACILIA', '', 'JL. GARUNI 3/ KLEDOKAN BLOK D.69', '-', 'P', 'B', '1992-04-29', 'KENDARI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 60, 65, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(501, '300730010040530004', 108, 10, 'FELICITAS DJAHOM, ELIZABETH', '', 'JL. GARUNI 3/ KLEDOKAN BLOK D.69', '-', 'P', 'A', '1990-11-14', 'RUTENG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(502, '300730010040530005', 108, 10, 'SURYA SANTOS UJU, AGNES', '', 'JL. GARUNI 3/ KLEDOKAN BLOK D.69', '-', 'P', 'B', '1991-03-31', 'BALIBO', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(503, '300730010020010001', 109, 3, 'IRVAN CANDRA NUGROHO, STEPHANUS', '', 'PERUM APH B, NO 35, SETURAN BARU', '(0274)486409', 'L', 'B', '1977-07-30', 'YOGYAKARTA', 3, 1, 'BACIRO', '1977-09-02', 'BACIRO, IV / 121 / 482', '', '', '2', '', 'PUGERAN', '1990-05-20', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 3, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(504, '300730010020020002', 110, 1, 'ERROL NGANTUNG, ANDREAS', '', 'PERUM APH B, NO 32, SETURAN', '(0274)486013', 'L', 'O', '1957-10-21', 'DENPASAR', 3, 1, 'DENPASAR', '1958-06-27', 'ST YOSEF DENPASAR, - / 478', '', '', '2', '', 'SURABAYA', '1975-03-09', '', '0', '', '0000-00-00', 2, 'ST YOSEF', NULL, '1982-06-06', 'FOL -, NO 5', '', 3, 66, 37, 20, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(505, '300730010020020003', 110, 2, 'SURYANINGSIH, THERESIA', '', 'PERUM APH B, NO 32, SETURAN', '(0274)486013', 'P', 'B', '1963-02-02', 'BALIKPAPAN', 3, 3, 'DURI', '1982-05-30', 'ST YOSEF DURI, I / 204', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'ST YOSEF', NULL, '1982-06-06', 'FOL -, NO 5', '', 3, 66, 62, 9, 100, 0, 1, 3, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(506, '300730010020020004', 110, 3, 'VICTOR NGANTUNG, ANTONIUS', '', 'PERUM APH B, NO 32, SETURAN', '(0274)486013', 'P', 'B', '1981-12-10', 'DURI', 3, 1, 'DURI', '1982-05-30', 'ST YOSEF DURI, I / 205', '', '', '2', '', 'ST YOSEF', '1996-09-08', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 39, 37, 20, 309, 0, 1, 6, 0, 4, 1, 0, 4, 0, 0, 0, NULL, NULL),
(507, '300730010020020005', 110, 3, 'VONY NGANTUNG, AGATHA', '', 'PERUM APH B, NO 32, SETURAN', '(0274)486013', 'P', 'O', '1995-08-05', 'DURI', 3, 1, 'DURI', '1996-03-10', 'ST YOSEF DURI, III / 2844', '', '', '2', '', 'BACIRO', '2008-07-20', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 13, 66, 64, 20, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(508, '300730010020030006', 111, 1, 'RACHMAT BUDIHARJO, STEFANUS', '', 'PERUM DEPPEN, JL SAMBUNG RASA I/20', '(0274)486332', 'L', 'O', '1961-12-26', 'JAKARTA', 3, 3, 'DENPASAR', '1985-05-10', 'ST YOSEPH, 3583', '', '', '2', '', 'BACIRO', '2006-07-08', '', '0', '', '0000-00-00', 2, 'ST YOSEF, DENPASAR', NULL, '1989-07-07', 'BUKU I, NO 824', '', 6, 8, 31, 9, 100, 0, 1, 1, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(509, '300730010020030007', 111, 2, 'ANGGRAENI PURWITANINGSIH, CHRISTINA', '', 'PERUM DEPPEN, JL SAMBUNG RASA I/20', '(0274)486332', 'P', 'A', '1961-10-11', 'DENPASAR', 3, 3, 'DENPASAR', '1989-05-15', 'ST YOSEPH, 4487', '', '', '2', '', 'BACIRO', '2006-07-08', '', '0', '', '0000-00-00', 2, 'ST YOSEF, DENPASAR', NULL, '1989-07-07', 'BUKU I, NO 824', '', 5, 55, 62, 9, 100, 0, 1, 2, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(510, '300730010020030008', 111, 3, 'JESSICA PUTRI LARASATI, ANASTASIA', '', 'PERUM DEPPEN, JL SAMBUNG RASA I/20', '(0274)486332', 'P', 'O', '1990-04-18', 'YOGYAKARTA', 3, 1, 'BACIRO', '1992-05-10', 'BACIRO, VIII / 81 / 243', '', '', '2', '', 'BACIRO', '2006-07-08', '', '0', '', '0000-00-00', 2, '', NULL, '0000-00-00', '', '', 15, 66, 65, 9, 100, 0, 1, 3, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(511, '300730010020040009', 112, 1, 'DARPITO AGUS TURDIANTO, YOHANES', '', 'SAMBUNG PERUM DEPPEN, JL SAMBUNG RASA I/27', '(0274)486254', 'L', 'B', '1961-06-06', 'YOGYAKARTA', 3, 2, 'BACIRO', '1974-12-19', 'BACIRO YOGYAKARTA, III / 190 / 758', '', '', '2', '', 'BACIRO', '1976-07-19', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1990-07-21', '-', '', 5, 55, 56, 9, 100, 0, 1, 6, 0, 7, 1, 0, 4, 0, 0, 0, NULL, NULL),
(512, '300730010020040010', 112, 2, 'THESY APRILLIANA D, CEICILIA', '', 'SAMBUNG PERUM DEPPEN, JL SAMBUNG RASA I/27', '(0274)486254', 'P', 'O', '1962-04-14', 'YOGYAKARTA', 3, 1, 'KOTABARU', '1962-04-17', 'KOTABARU YOGYAKARTA, X / 10328', '', '', '2', '', 'KOTABARU', '1974-06-03', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1990-07-21', '-', '', 5, 55, 62, 9, 100, 0, 1, 6, 0, 7, 1, 0, 4, 0, 0, 0, NULL, NULL),
(513, '300730010020040011', 112, 3, 'KANINDYA CHRYSANTHEA, URSULA', '', 'SAMBUNG PERUM DEPPEN, JL SAMBUNG RASA I/27', '(0274)486254', 'P', 'O', '1991-06-26', 'YOGYAKARTA', 3, 1, 'BACIRO', '1991-07-14', 'KOTABARU YOGYAKARTA, VII / 291 / 1160', '', '', '2', '', 'KOTABARU', '2004-06-06', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 66, 65, 9, 100, 0, 1, 6, 0, 7, 1, 0, 4, 0, 0, 0, NULL, NULL),
(514, '300730010020050012', 113, 1, 'SIHTONO, PAULUS', '', 'GANG DURIAN, NO 166, SETURAN', '-', 'L', 'O', '1964-12-31', 'KLATEN', 3, 8, 'BACIRO', '1989-03-20', 'BACIRO YOGYAKARTA, VII / 132 / 527', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO, YOGYAKARTA', NULL, '1989-05-28', '-', '', 2, 66, 56, 9, 100, 0, 1, 6, 0, 1, 3, 0, 4, 0, 0, 0, NULL, NULL),
(515, '300730010020050013', 113, 2, 'SUPARMI, CHRISTINA', '', 'GANG DURIAN, NO 166, SETURAN', '-', 'P', 'O', '1965-10-02', 'SLEMAN', 3, 7, 'BACIRO', '1989-03-20', 'BACIRO YOGYAKARTA, VII / 131 / 524', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO, YOGYAKARTA', NULL, '1989-05-28', '-', '', 1, 66, 56, 9, 100, 0, 1, 6, 0, 1, 3, 0, 4, 0, 0, 0, NULL, NULL),
(516, '300730010020050014', 113, 3, 'ANDITA KRISTANTORO, GREGORIUS', '', 'GANG DURIAN, NO 166, SETURAN', '-', 'L', 'O', '1990-05-09', 'SLEMAN', 3, 1, 'BACIRO', '1990-07-05', 'BACIRO YOGYAKARTA, VII / 122 / 886', '', '', '2', '', 'BACIRO', '2008-07-20', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 1, 66, 58, 9, 100, 0, 1, 6, 0, 1, 3, 0, 4, 0, 0, 0, NULL, NULL),
(517, '300730010020050015', 113, 3, 'CHRISTOPHORUS, HERIBERTUS', '', 'GANG DURIAN, NO 166, SETURAN', '-', 'L', 'O', '1997-05-25', 'SLEMAN', 3, 2, 'BABARSARI', '2010-04-03', 'BABARSARI YOGYAKARTA, I / 253', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 1, 66, 64, 9, 100, 0, 1, 6, 0, 1, 3, 4, 4, 0, 0, 0, NULL, NULL),
(518, '300730010020060016', 114, 1, 'SRI SUBEKTI, ANASTASIA', '', 'PERUM DEPPEN, JL PEMANCAR TIMUR, NO 100', '(0274)485711', 'P', 'B', '1949-10-15', 'JARANAN', 3, 8, 'RATU DAMAI, LUMADJAN', '1974-07-08', 'RATU DAMAI, LUMADJANG, III / 21 / 36 / 84', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 8, 'JANDA', NULL, '0000-00-00', 'NO 802, ANNO 1972, VEI L III', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(519, '300730010020070017', 115, 1, 'HERU SUBANDRIYO, ROBERTUS', '', 'PERUM DEPPEN, NO 119, SETURAN', '(0274)486849', 'L', 'O', '1955-02-15', 'YOGYAKARTA', 3, 3, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BINTARAN, YOGYAKARTA', NULL, '1985-04-28', 'FOL 146, NO 1860', '', 5, 70, 37, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(520, '300730010020010018', 116, 1, 'BUDI NURWATI, ROSALIA', '', 'PERUM APH B, NO 35, SETURAN BARU', '(0274)486409', 'P', 'O', '1951-02-01', 'YOGYAKARTA', 3, 1, 'KOTABARU', '1951-02-19', 'KOTABARU, V / 3193', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO, YOGYAKARTA', NULL, '1973-12-30', 'FOL 80, NO 4PI', '', 3, 66, 62, 9, 100, 0, 1, 3, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(521, '300730010020070019', 117, 2, 'TRI W INDRADI, AGATA', '', 'PERUM DEPPEN, NO 119, SETURAN', '(0274)486849', 'P', 'O', '1961-02-28', 'TUBAN', 3, 3, 'NANDAN', '1982-10-25', 'NANDAN, I / 76 / 301', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BINTARAN, YOGYAKARTA', NULL, '1985-04-28', 'FOL 146, NO 1860', '', 3, 66, 37, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(522, '300730010020070020', 117, 3, 'HAPPY YORANDEA, SKOLASTIKA', '', 'PERUM DEPPEN, NO 119, SETURAN', '(0274)486849', 'P', 'O', '1991-10-05', 'YOGYAKARTA', 3, 2, 'SIDOARJO', '2003-04-19', 'SIDOARJO, I / - / 1266', '', '', '2', '', 'BACIRO', '2008-07-20', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 66, 65, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(523, '300730010020070021', 117, 3, 'ANGGIRA RESTA ROVENCIA, BERNADETHA', '', 'PERUM DEPPEN, NO 119, SETURAN', '(0274)486849', 'P', 'O', '1994-03-01', 'SURABAYA', 3, 2, 'BACIRO', '2005-01-01', 'BACIRO, YOGYAKARTA, X / 78 / 311', '', '', '2', '', 'BACIRO', '2008-07-20', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 13, 66, 64, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(524, '300730010020080022', 118, 1, 'DAPI SUPRIATNA, BENEDICTUS', '', 'SETURAN, NO 295 A', '(0274)486939', 'L', 'O', '1948-07-11', 'KARAWANG', 3, 8, 'KATEDRAL, SEMARANG', '1976-12-22', 'KATEDRAL, SEMARANG, XV / 112 / 445', '', '', '2', '', 'KATEDRAL, SEMARANG', '1978-07-10', '', '0', '', '0000-00-00', 2, 'PUGERAN, YOGYAKARTA', NULL, '1975-12-27', 'FOL -, NO 1431', '', 3, 66, 34, 9, 100, 0, 1, 2, 0, 1, 2, 0, 1, 0, 0, 0, NULL, NULL),
(525, '300730010020080023', 118, 2, 'AGNES NOVENNY TULASTRI, MARIA', '', 'SETURAN, NO 295 A', '(0274)486939', 'P', 'B', '1951-11-17', 'YOGYAKARTA', 3, 2, 'PUGERAN', '1966-06-17', 'PUGERAN, YOGYAKARTA, VI / 201 / 4860', '', '', '2', '', 'PUGERAN', '1968-07-15', '', '0', '', '0000-00-00', 2, 'PUGERAN, YOGYAKARTA', NULL, '1975-12-27', 'FOL -, NO 1431', '', 3, 66, 62, 9, 100, 0, 1, 2, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(526, '300730010020080024', 118, 3, 'DESTIANTO PRIANJAYA, DAMASUS', '', 'SETURAN, NO 295 A', '(0274)486939', 'L', 'B', '1976-12-01', 'SEMARANG', 3, 1, 'KATEDRAL, SEMARANG', '1976-12-26', 'KATEDRAL, SEMARANG, XV / 123 / 491', '', '', '2', '', 'BACIRO', '1992-10-18', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 67, 19, 9, 100, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(527, '300730010020080025', 118, 3, 'YULIA NOORPITA SARI, ELISABETH', '', 'SETURAN, NO 295 A', '(0274)486939', 'P', 'B', '1980-07-23', 'YOGYAKARTA', 3, 1, 'PUGERAN', '1980-11-07', 'PUGERAN, YOGYAKARTA, XIII / - / 10897', '', '', '2', '', 'BACIRO', '1992-10-18', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 56, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(528, '300730010020090026', 119, 1, 'NURANA KUSUMADEWI, MARGARITA', '', 'PERUM DEPPEN, JL PEMANCAR TIMUR, NO 100', '(0274)9286185', 'P', 'AB', '1980-06-10', 'JATIROTO', 3, 1, 'JATIROTO', '1980-10-26', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 5, 'YOGYAKARTA', NULL, '2006-05-03', '-', '', 5, 13, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(529, '300730010020010027', 120, 2, 'NURANA KUSUMADEWI, MARGARITA', '', 'PERUM APH B, NO 35, SETURAN BARU', '(0274)486409', 'P', 'AB', '1980-06-10', 'JATIROTO', 3, 1, 'JATIROTO', '1980-10-26', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 5, 'BACIRO, YOGYAKARTA', NULL, '1973-12-30', 'FOL 80, NO 4PI', '', 5, 13, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(530, '300730010020090028', 121, 2, 'HENDRO ISMOYO', '', 'PERUM DEPPEN, JL PEMANCAR TIMUR, NO 100', '(0274)9286185', 'L', 'bt', '1985-05-04', 'WONOGIRI', 1, 11, 'TDK', '0000-00-00', '', '', '', '1', '', 'TDK', '0000-00-00', '', '0', '', '0000-00-00', 5, 'YOGYAKARTA', NULL, '2006-05-03', '-', '', 3, 66, 37, 9, 99, 0, 1, 0, 0, 0, 2, 0, 99, 0, 0, 0, NULL, NULL),
(531, '300730010020100029', 122, 1, 'AGUS KAHARDI, AGUSTINUS', '', 'SETURAN III, NO 19', '(0274)485675', 'L', 'A', '1943-06-01', 'NGRAMBE', 3, 2, 'SURABAYA', '1957-12-24', 'ST VINCENTIUS, SURABAYA, - / - / 1103', '', '', '2', '', 'KOTABARU', '1966-05-16', '', '0', '', '0000-00-00', 2, 'WONOGIRI', NULL, '1971-02-04', 'FOL 28, NO 109', '', 5, 70, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(532, '300730010020100030', 122, 2, 'LILIH SARJATNI, AGUSTINA', '', 'SETURAN III, NO 19', '(0274)485675', 'P', 'O', '1949-08-12', 'WONOGIRI', 3, 8, 'CILILITAN', '1970-12-24', 'ST ROBERTI, CILILITAN, I / 306 / 77', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'WONOGIRI', NULL, '1971-02-04', 'FOL 28, NO 109', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(533, '300730010020110031', 123, 1, 'HANINDYO HERU PRAYITNO, IGNASIUS', '', 'PERUM DEPPEN, JL PEMANCAR TIMUR, NO 125', '(0274)484439', 'L', 'O', '1967-04-24', 'SRAGEN', 3, 8, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'GANJURAN', NULL, '1988-07-18', 'FOL 06, NO 17', '', 5, 60, 37, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(534, '300730010020110032', 123, 2, 'ANY PURWANDARI, ANASTASIA', '', 'PERUM DEPPEN, JL PEMANCAR TIMUR, NO 125', '(0274)484439', 'P', 'O', '1966-08-27', 'SRAGEN', 3, 2, 'SRAGEN', '1982-04-10', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'GANJURAN', NULL, '1988-07-18', 'FOL 06, NO 17', '', 4, 63, 62, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(535, '300730010020110033', 123, 3, 'ANGGA ANINDYA PUTRA, ALBERTUS', '', 'PERUM DEPPEN, JL PEMANCAR TIMUR, NO 125', '(0274)484439', 'L', 'O', '1988-09-29', 'SRAGEN', 3, 2, 'ST ROBERTUS, JAKARTA', '2009-04-26', 'ST ROBERTUS BELLARMINUS, IV / 228 / 686 / 76 / 97', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 66, 65, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(536, '300730010020110034', 123, 3, 'ANDO ANINDYA PUTRA, ANTONIUS', '', 'PERUM DEPPEN, JL PEMANCAR TIMUR, NO 125', '(0274)484439', 'L', 'O', '1998-01-15', 'SRAGEN', 3, 1, 'ST FATIMA, SRAGEN', '1998-10-11', 'ST FATIMA, SRAGEN, VIII / 272 / 1835', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 12, 66, 99, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(537, '300730010020120035', 124, 1, 'DWITANA, HERIBERTUS', '', 'JL PERUMNAS, NO 293, SETURAN', '(0274)7438037', 'L', 'O', '1971-03-16', 'KLATEN', 3, 2, 'KOTABARU', '1980-05-15', 'KOTABARU, YOGYAKARTA, XVIII / - / 456', '', '', '2', '', 'BACIRO', '1986-07-12', '', '0', '', '0000-00-00', 2, 'BACIRO, YOGYAKARTA', NULL, '2007-04-26', '-', '', 3, 66, 56, 9, 100, 0, 1, 6, 0, 1, 3, 0, 4, 0, 0, 0, NULL, NULL),
(538, '300730010020120036', 124, 2, 'DALMINI, ANASTASIA', '', 'JL PERUMNAS, NO 293, SETURAN', '(0274)7438037', 'P', 'AB', '1973-06-20', 'SUKOHARJO', 3, 3, 'BACIRO', '1996-12-22', 'BACIRO, YOGYAKARTA, IX / 99 / 295', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO, YOGYAKARTA', NULL, '2007-04-26', '-', '', 1, 66, 62, 9, 100, 0, 1, 6, 0, 1, 3, 0, 4, 0, 0, 0, NULL, NULL),
(539, '300730010020120037', 124, 3, 'DJALU SATRIA DJATI, PONTIANUS', '', 'JL PERUMNAS, NO 293, SETURAN', '(0274)7438037', 'L', 'O', '1998-08-15', 'YOGYAKARTA', 3, 1, 'BACIRO', '1998-10-11', 'BACIRO, YOGYAKARTA, IX / 197 / 590', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 12, 66, 99, 9, 100, 0, 1, 6, 0, 1, 3, 0, 4, 0, 0, 0, NULL, NULL),
(540, '300730010020120038', 124, 3, 'RAHMADHANI DJATI, AGNES', '', 'JL PERUMNAS, NO 293, SETURAN', '(0274)7438037', 'P', 'AB', '2002-11-06', 'YOGYAKARTA', 3, 1, 'BABARSARI', '2002-12-08', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 21, 66, 99, 9, 100, 0, 1, 6, 0, 1, 3, 0, 4, 0, 0, 0, NULL, NULL),
(541, '300730010020120039', 124, 3, 'NODYA PRAMESTHI D, ANGELA MERICI', '', 'JL PERUMNAS, NO 293, SETURAN', '(0274)7438037', 'P', 'bt', '2010-01-14', 'YOGYAKARTA', 3, 1, 'BABARSARI', '2010-02-12', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 3, 0, 4, 0, 0, 0, NULL, NULL),
(542, '300730010020130040', 125, 1, 'BAMBANG DJAKA PITANA, PAULUS', '', 'PERUM APH B, NO 34, SETURAN BARU', '(0274)486306', 'L', 'O', '1949-08-08', 'MAGELANG', 3, 2, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'ST ANTONIUS, MUNTILAN', NULL, '1973-04-01', '-', '', 5, 55, 34, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(543, '300730010020130041', 125, 2, 'SUPRIJATI, METODHIA', '', 'PERUM APH B, NO 34, SETURAN BARU', '(0274)486306', 'P', 'A', '1950-06-29', 'KLATEN', 3, 1, 'ST MARIA BUNDA KRIST', '1950-07-07', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'ST ANTONIUS, MUNTILAN', NULL, '1973-04-01', '-', '', 5, 13, 34, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(544, '300730010020140042', 126, 1, 'MELANIA MALI, ANDRIANI', '', 'JL. PEMANCAR TIMUR NO. 100 PERUM DEPEN', '', 'P', 'O', '1992-07-08', 'ATAMBUA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 15, 66, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(545, '300730010020150043', 127, 1, 'POERWOKO, FLORENTINUS', '', 'VILLA SETURAN INDAH, BLOK B, NO 14', '(0274)486655', 'L', 'O', '1951-05-12', 'WATES', 3, 8, 'KOTABARU', '1978-04-04', 'KOTABARU, YOGYAKARTA, XVII / 597', '', '', '2', '', 'KOTABARU', '1978-04-04', '', '0', '', '0000-00-00', 2, 'BACIRO, YOGYAKARTA', NULL, '1979-09-22', 'FLO 37, NO 148', '', 5, 20, 34, 9, 100, 0, 1, 3, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(546, '300730010020150044', 127, 2, 'RETNO MAHENING W, BERNARDA', '', 'VILLA SETURAN INDAH, BLOK B, NO 14', '(0274)486655', 'P', 'O', '1952-09-18', 'YOGYAKARTA', 3, 3, 'KOTABARU', '1978-04-04', 'KOTABARU, YOGYAKARTA, XVII / 594', '', '', '2', '', 'KOTABARU', '1978-04-04', '', '0', '', '0000-00-00', 2, 'BACIRO, YOGYAKARTA', NULL, '1979-09-22', 'FLO 37, NO 148', '', 5, 20, 34, 9, 100, 0, 1, 1, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(547, '300730010020150045', 127, 3, 'RATNA INDRESWARI, FLORENTINA', '', 'VILLA SETURAN INDAH, BLOK B, NO 14', '(0274)486655', 'P', 'O', '1980-09-18', 'BOGOR', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 55, 37, 9, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(548, '300730010020150046', 127, 3, 'WIDYANING RARAS RENGGANIS, NATALIA', '', 'VILLA SETURAN INDAH, BLOK B, NO 14', '(0274)486655', 'P', 'O', '1990-12-14', 'BOGOR', 3, 1, 'KATEDRAL, BOGOR', '1991-03-03', 'SDH', '', '', '2', '', 'BACIRO', '2006-07-08', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 66, 65, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(549, '300730010020160047', 128, 1, 'MULYONO HADI SUDIBYO, AGUSTINUS', '', 'JL SETURAN II, NO 66', '(0274)485593', 'L', 'A', '1947-01-21', 'WONOSARI', 3, 8, 'NANGGULAN', '1978-05-14', 'NANGGULAN, KULONPROGO, 17 / - / 66', '', '', '2', '', 'BACIRO', '1978-07-30', '', '0', '', '0000-00-00', 2, 'NANGGULAN, KULONPROHO', NULL, '1974-08-09', 'FOL -, NO 382 / TM / VIII / 74', '', 3, 66, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(550, '300730010020160048', 128, 2, 'ASIH PUDYASTUTI, AGNES', '', 'JL SETURAN II, NO 66', '(0274)485593', 'P', 'B', '1952-01-29', 'KULONPROGO', 3, 2, 'SDH', '0000-00-00', 'NANGGULAN, KULONPROGO, - / - / -', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'NANGGULAN, KULONPROHO', NULL, '1974-08-09', 'FOL -, NO 382 / TM / VIII / 74', '', 3, 66, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(551, '300730010020160049', 128, 3, 'HENRY PRIHANTOKO, ANTONIUS', '', 'JL SETURAN II, NO 66', '(0274)485593', 'L', 'AB', '1984-01-18', 'SLEMAN', 3, 1, 'BACIRO', '1987-07-06', 'BACIRO, YOGYAKARTA, VI / - / 155', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 56, 38, 9, 100, 0, 1, 6, 0, 6, 2, 0, 4, 0, 0, 0, NULL, NULL),
(552, '300730010020170050', 129, 1, 'IPUK WIDYASTUTI, THERESIA', '', 'PERUM APH B, NO 23 SETURAN BARU', '(0274)486304', 'P', 'O', '1958-02-14', 'SOLO', 3, 2, 'KOTABARU', '1972-06-09', 'KOTABARU, YOGYAKARTA, XII / - / 674', '', '', '2', '', 'KOTABARU', '1972-07-03', '', '0', '', '0000-00-00', 8, 'JANDA', NULL, '0000-00-00', '-', '', 3, 66, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(553, '300730010020170051', 129, 3, 'WIDYANTO DWI NUGROHOBONIVASIUS', '', 'PERUM APH B, NO 23 SETURAN BARU', '(0274)486304', 'L', 'O', '1984-03-31', 'SOLO', 3, 2, 'BANTENG', '1993-04-10', 'BANTENG, YOGYAKARTA, III / 148 / 2564', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 60, 31, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(554, '300730010020170052', 129, 3, 'ADVIN WIDYANARITA, LUCIA', '', 'PERUM APH B, NO 23 SETURAN BARU', '(0274)486304', 'P', 'B', '1991-12-17', 'YOGYAKARTA', 3, 1, 'BANTENG', '1992-01-24', 'BANTENG, YOGYAKARTA, I / 121 / 2457', '', '', '2', '', 'BACIRO', '2006-07-08', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 66, 65, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(555, '300730010020180053', 130, 1, 'AGUS PUTRANTO, IGNATIUS', '', 'PERUM DEPPEN, JL SAMBUNG RASA I, NO 57', '(0274)485533', 'L', 'B', '1967-05-20', 'SEMARANG', 3, 1, 'ST JOSEPHUN SEMARANG', '1967-05-27', 'ST JOSEPHUN, SEMARANG, XX / 112 / 198', '', '', '2', '', 'BINTARAN', '1984-03-17', '', '0', '', '0000-00-00', 2, 'ST MARIA FATIMA, SRAGEN', NULL, '1993-10-03', 'FOL 195, NO 787', '', 6, 25, 31, 9, 100, 0, 1, 6, 0, 5, 2, 0, 4, 0, 0, 0, NULL, NULL),
(556, '300730010020180054', 130, 2, 'HARTATI, WENEFRIDA', '', 'PERUM DEPPEN, JL SAMBUNG RASA I, NO 57', '(0274)485533', 'P', 'O', '1968-11-03', 'SRAGEN', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'ST MARIA FATIMA, SRAGEN', NULL, '1993-10-03', 'FOL 195, NO 787', '', 4, 3, 37, 9, 100, 0, 1, 6, 0, 5, 2, 0, 4, 0, 0, 0, NULL, NULL),
(557, '300730010020180055', 130, 3, 'DINDA AYU RINANTI, FELICIA', '', 'PERUM DEPPEN, JL SAMBUNG RASA I, NO 57', '(0274)485533', 'P', 'B', '1996-06-14', 'YOGYAKARTA', 3, 1, 'BACIRO', '1996-09-08', 'BACIRO, YOGYAKARTA, IX / 81 / 243', '', '', '2', '', 'BACIRO', '2010-07-10', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 13, 66, 64, 9, 100, 0, 1, 6, 0, 5, 2, 0, 4, 0, 0, 0, NULL, NULL),
(558, '300730010020190056', 131, 1, 'KUSNIDAH, MARIA', '', 'PERUM APH B, NO 8,SETURAN', '(0274)485549', 'P', 'B', '1939-11-05', 'PADANG PANJANG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 8, 'JANDA', NULL, '0000-00-00', 'FOL 109, NO 1755', '', 5, 44, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL);
INSERT INTO `umats` (`id`, `kode_umat`, `id_kk`, `id_hubkk`, `nama`, `email`, `alamat`, `tlp`, `jenis_kelamin`, `goldarah`, `tgl_lahir`, `tmplahir`, `id_agama`, `id_statusbaptis`, `tmpbaptis`, `tglbaptis`, `liberbap`, `romobaptis`, `namabaptis`, `stskrisma`, `namakrisma`, `tmpkrisma`, `tglkrisma`, `romokrisma`, `stskomuni`, `tmpkomuni`, `tglkomuni`, `id_statuspernikahan`, `tempatnikah`, `kotamenikah`, `tglnikah`, `libermat`, `romopernikahan`, `id_pendidikan`, `id_bidstudi`, `id_pekerjaan`, `id_suku`, `id_tempattinggal`, `lamatinggal`, `statusTT`, `id_keaktifanparoki`, `id_keaktifangereja`, `id_statuskekatolikan`, `id_statusekonomi`, `id_statuskesehatan`, `id_statussosial`, `jeniskk`, `statuspindah`, `statuskematian`, `nama_ayah`, `nama_ibu`) VALUES
(559, '300730010020200057', 132, 1, 'ISTUTONO, BONAVENTURA', '', 'SETURAN 59, GANG DURIAN NO 161', '(0274)485524', 'L', 'bt', '1973-07-14', 'KLATEN', 3, 2, 'BACIRO', '1984-06-05', 'BACIRO, YOGYAKARTA, VI / - / 107', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'SIMON PETRUS GEMBALA, UJUNG PA', NULL, '1996-08-24', 'FOL -, NO 78, REG I', '', 3, 66, 37, 9, 100, 0, 1, 6, 0, 1, 3, 0, 4, 0, 0, 0, NULL, NULL),
(560, '300730010020200058', 132, 2, 'KRISDAYANTI, FRANSISCA', '', 'SETURAN 59, GANG DURIAN NO 161', '(0274)485524', 'P', 'bt', '1975-07-25', 'MALANG', 3, 3, 'SUNGGUMINASA', '1996-08-24', 'BACIRO, YOGYAKARTA, 500 / REG I', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'SIMON PETRUS GEMBALA, UJUNG PA', NULL, '1996-08-24', 'FOL -, NO 78, REG I', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 3, 0, 4, 0, 0, 0, NULL, NULL),
(561, '300730010020200059', 132, 3, 'BOYA PUTRA REWA, YOHANES', '', 'SETURAN 59, GANG DURIAN NO 161', '(0274)485524', 'L', 'bt', '1998-01-25', 'YOGYAKARTA', 3, 1, 'BACIRO', '1998-02-08', 'BACIRO, YOGYAKARTA, IX / 473', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 12, 66, 99, 9, 100, 0, 1, 6, 0, 1, 3, 0, 4, 0, 0, 0, NULL, NULL),
(562, '300730010020200060', 132, 3, 'SLAMETONO WIDODO, CAROLUS', '', 'SETURAN 59, GANG DURIAN NO 161', '(0274)485524', 'L', 'bt', '2005-06-03', 'SLEMAN', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 3, 0, 4, 0, 0, 0, NULL, NULL),
(563, '300730010020210061', 133, 1, 'SUHARDI, FRANSISKUS XAVERIUS', '', 'SETURAN I, NO 208', '(0274)4877224', 'L', 'B', '1948-05-31', 'YOGYAKARTA', 3, 2, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 5, 'YOGYAKARTA', NULL, '1978-11-27', '-', '', 5, 70, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(564, '300730010020210062', 133, 2, 'SRI WIDAYATI', '', 'SETURAN I, NO 208', '(0274)4877224', 'P', 'B', '1951-04-02', 'YOGYAKARTA', 1, 11, 'TDK', '0000-00-00', '', '', '', '1', '', 'TDK', '0000-00-00', '', '0', '', '0000-00-00', 5, 'YOGYAKARTA', NULL, '1978-11-27', '-', '', 4, 13, 34, 9, 99, 0, 1, 0, 0, 0, 2, 0, 99, 0, 0, 0, NULL, NULL),
(565, '300730010020220063', 134, 1, 'BAMBANG P YUWONO, STEFANUS', '', 'JL SETURAN I, NO 139 A', '(0274)486813', 'L', 'B', '1960-03-03', 'MAGELANG', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'WONOKERSO MUNGKIT', NULL, '0000-00-00', '-', '', 6, 13, 37, 9, 100, 0, 1, 6, 0, 7, 1, 0, 4, 0, 0, 0, NULL, NULL),
(566, '300730010020220064', 134, 2, 'ANI LESTARI, MARIA IMACULATA', '', 'JL SETURAN I, NO 139 A', '(0274)486813', 'P', 'O', '1980-03-23', 'MAGELANG', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'WONOKERSO MUNGKIT', NULL, '0000-00-00', '-', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 7, 1, 0, 4, 0, 0, 0, NULL, NULL),
(567, '300730010020220065', 134, 3, 'YUAN ANGGITO, ALBERTUS', '', 'JL SETURAN I, NO 139 A', '(0274)486813', 'L', 'O', '1987-11-21', 'SURABAYA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 9, 100, 0, 1, 6, 0, 7, 1, 0, 4, 0, 0, 0, NULL, NULL),
(568, '300730010020220066', 134, 3, 'RATIH RARININGTYAS, REGINA', '', 'JL SETURAN I, NO 139 A', '(0274)486813', 'P', 'O', '1992-01-04', 'YOGYAKARTA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 9, 100, 0, 1, 6, 0, 7, 1, 0, 4, 0, 0, 0, NULL, NULL),
(569, '300730010020220067', 134, 3, 'ANDITO SUSANTO, AGUSTINUS', '', 'JL SETURAN I, NO 139 A', '(0274)486813', 'L', 'O', '1993-01-04', 'MAGELANG', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 9, 100, 0, 1, 6, 0, 7, 1, 0, 4, 0, 0, 0, NULL, NULL),
(570, '300730010020220068', 134, 3, 'SAFIRA WIDYASARI, VERONICA', '', 'JL SETURAN I, NO 139 A', '(0274)486813', 'P', 'B', '1996-05-05', 'MAGELANG', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'sdh', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 13, 66, 64, 9, 100, 0, 1, 6, 0, 7, 1, 0, 4, 0, 0, 0, NULL, NULL),
(571, '300730010020220069', 134, 3, 'ADI WICAKSONO, ALFONSUS', '', 'JL SETURAN I, NO 139 A', '(0274)486813', 'L', 'O', '1997-10-24', 'YOGYAKARTA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 12, 66, 64, 9, 100, 0, 1, 6, 0, 7, 1, 0, 4, 0, 0, 0, NULL, NULL),
(572, '300730010020230070', 135, 1, 'SUHARTONO, FRANCISCUS XAVERIUS', '', 'PERUM PEMDA, SETURAN, NO 16', '(0274)486292', 'L', 'O', '1938-08-07', 'YOGYAKARTA', 3, 8, 'BINTARAN', '1972-04-01', 'BINTARAN, YOGYAKARTA, XIV / 214 / 8248', '', '', '2', '', 'BINTARAN', '1972-07-02', '', '0', '', '0000-00-00', 8, 'DUDA', NULL, '0000-00-00', 'FOL 5, NO 1318', '', 4, 23, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(573, '300730010020240071', 136, 1, 'DJATI PRAMANA, JUSTINIANUS', '', 'PERUM DEPPEN, JL SAMBUNG RASA II, NO 48', '(0274)486268', 'L', 'O', '1954-06-11', 'YOGYAKARTA', 3, 2, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'SOMOHITAN', NULL, '1986-10-12', '-', '', 4, 36, 37, 9, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(574, '300730010020240072', 136, 2, 'NUNING SUISTININGSIH, MARGARETA MARIA', '', 'PERUM DEPPEN, JL SAMBUNG RASA II, NO 48', '(0274)486268', 'P', 'A', '1957-11-24', 'YOGYAKARTA', 3, 2, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'SOMOHITAN', NULL, '1986-10-12', '-', '', 6, 39, 37, 9, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(575, '300730010020240073', 136, 3, 'KRISNA ADYASARI, MARIA IMACULATA', '', 'PERUM DEPPEN, JL SAMBUNG RASA II, NO 48', '(0274)486268', 'P', 'O', '1987-11-05', 'YOGYAKARTA', 3, 1, 'SOMOHITAN', '1988-07-08', 'SOMOHITAN, LB / IV / - / 4350', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 8, 61, 9, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(576, '300730010020240074', 136, 3, 'KRISNA ADYA PRATISTA, YUSTINUS', '', 'PERUM DEPPEN, JL SAMBUNG RASA II, NO 48', '(0274)486268', 'L', 'O', '1994-07-12', 'YOGYAKARTA', 3, 1, 'SOMOHITAN', '1994-08-06', 'SOMOHITAN, LB / VI / - / 4818', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 13, 66, 64, 9, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(577, '300730010020240075', 136, 3, 'KRISNA ADYA ANINDITA, MARIA DOMINIKA', '', 'PERUM DEPPEN, JL SAMBUNG RASA II, NO 48', '(0274)486268', 'P', 'O', '1997-08-01', 'YOGYAKARTA', 3, 1, 'BACIRO', '1998-03-08', 'BACIRO', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 22, 66, 64, 9, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(578, '300730010020250076', 137, 1, 'HERI SETYA WIBOWO, ANTONIUS', '', 'SETURAN III, NO 19', '(0274)485675', 'L', 'B', '1975-04-17', 'YOGYAKARTA', 3, 1, 'KUMETIRAN', '1975-05-04', 'KUMETIRAN, YOGYAKARTA, VII / 884', '', '', '2', '', 'BACIRO', '1988-06-26', '', '0', '', '0000-00-00', 2, 'BABARSARI', NULL, '2007-12-30', 'NO 15, LM I', '', 5, 13, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(579, '300730010020250077', 137, 2, 'MELIANI, NATALIA', '', 'SETURAN III, NO 19', '(0274)485675', 'P', 'A', '1982-05-06', 'YOGYAKARTA', 3, 1, 'BACIRO', '1983-01-11', 'BACIRO, YOGYAKARTA, V / - / 1326', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BABARSARI', NULL, '2007-12-30', 'NO 15, LM I', '', 5, 44, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(580, '300730010020250078', 137, 3, 'RISANG FILLIDEO WIBOWO, MIKAEL', '', 'SETURAN III, NO 19', '(0274)485675', 'L', 'A', '2008-10-01', 'YOGYAKARTA', 3, 1, 'BABARSARI', '2008-11-14', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(581, '300730010020260079', 138, 1, 'DERPOYUWONO, LEONARDUS', '', 'PERUM APH B, NO 35, SETURAN BARU', '(0274)486409', 'L', 'A', '1972-08-01', 'BANTUL', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'PUGERAN', '1986-08-09', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '2000-05-14', 'FOL 233, NO 698', '', 3, 66, 56, 9, 100, 0, 1, 6, 0, 1, 3, 0, 4, 0, 0, 0, NULL, NULL),
(582, '300730010020260080', 138, 2, 'DAMAYANTI CHANDRA NINGRUM, VERONIKA', '', 'PERUM APH B, NO 35, SETURAN BARU', '(0274)486409', 'P', 'O', '1974-09-22', 'YOGYAKARTA', 3, 1, 'BACIRO', '1974-11-01', 'BACIRO, YOGYAKARTA, III / 172 / 687', '', '', '2', '', 'PUGERAN', '1986-08-09', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '2000-05-14', 'FOL 233, NO 698', '', 5, 13, 62, 9, 100, 0, 1, 6, 0, 1, 3, 0, 4, 0, 0, 0, NULL, NULL),
(583, '300730010020260081', 138, 3, 'PRAMASITHA YUDANTI, THEODORA', '', 'PERUM APH B, NO 35, SETURAN BARU', '(0274)486409', 'P', 'bt', '2001-03-06', 'YOGYAKARTA', 3, 1, 'PUGERAN', '2001-05-11', 'PUGERAN,YOGYAKARTA XXI/50/18341', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 3, 0, 4, 0, 0, 0, NULL, NULL),
(584, '300730010020260082', 138, 3, 'ARCELI IRMARETHA RANI, CLARA', '', 'PERUM APH B, NO 35, SETURAN BARU', '(0274)486409', 'P', 'bt', '2003-03-12', 'YOGYAKARTA', 3, 1, 'BABARSARI', '2003-06-15', 'BABARSARI,YOGYAKARTA I/82', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 3, 0, 4, 0, 0, 0, NULL, NULL),
(585, '300730010020270083', 139, 1, 'PRANE BUDI RAHARDJO, MARKUS', '', 'PERUM PEMDA, SETURAN INDAH, NO 4/254', '(0274)6556905', 'L', 'AB', '1949-04-25', 'YOGYAKARTA', 3, 2, 'KOTABARU', '1968-12-12', 'KOTABARU, YOGYAKARTA, XIV / - / 92', '', '', '2', '', 'KOTABARU', '1970-06-16', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '2002-08-16', 'FOL 282, NO 844', '', 3, 66, 34, 9, 100, 0, 1, 6, 0, 1, 3, 0, 4, 0, 0, 0, NULL, NULL),
(586, '300730010020270084', 139, 2, 'SRI WIDIANI PAWESTRI, THERESIA', '', 'PERUM PEMDA, SETURAN INDAH, NO 4/254', '(0274)6556905', 'P', 'O', '1960-10-05', 'YOGYAKARTA', 3, 2, 'PUGERAN', '1980-12-21', 'PUGERAN, YOGYAKARTA, XII / - / 10982', '', '', '2', '', 'PUGERAN', '1990-05-19', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '2002-08-16', 'FOL 282, NO 844', '', 2, 66, 62, 9, 100, 0, 1, 6, 0, 1, 3, 0, 4, 0, 0, 0, NULL, NULL),
(587, '300730010020270085', 139, 3, 'RANI DWI NUGROHOWATI, MARIA', '', 'PERUM PEMDA, SETURAN INDAH, NO 4/254', '(0274)6556905', 'P', 'B', '1986-09-03', 'YOGYAKARTA', 3, 2, 'BACIRO', '1995-04-15', 'BACIRO, YOGYAKARTA, VIII / - / 974', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 1, 56, 9, 100, 0, 1, 6, 0, 1, 3, 0, 4, 0, 0, 0, NULL, NULL),
(588, '300730010020270086', 139, 3, 'BAMBANG MARDIANTO KURNIAWAN, YOHANES', '', 'PERUM PEMDA, SETURAN INDAH, NO 4/254', '(0274)6556905', 'L', 'B', '1989-03-14', 'YOGYAKARTA', 3, 1, 'BACIRO', '1995-04-15', 'BACIRO, YOGYAKARTA, VIII / - / 973', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 56, 9, 100, 0, 1, 6, 0, 1, 3, 0, 4, 0, 0, 0, NULL, NULL),
(589, '300730010020270087', 139, 3, 'YUNIA KURNIAWATI, IGNATIA', '', 'PERUM PEMDA, SETURAN INDAH, NO 4/254', '(0274)6556905', 'P', 'B', '1996-06-14', 'SLEMAN', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'BABARSARI', '2010-08-15', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 22, 66, 64, 9, 100, 0, 1, 6, 0, 1, 3, 0, 4, 0, 0, 0, NULL, NULL),
(590, '300730010020280088', 140, 1, 'SUWARTINAH, FRANSISKA', '', 'SETURAN, NO 161', '(0274)485524', 'P', 'O', '1942-11-25', 'YOGYAKARTA', 3, 8, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 8, 'JANDA', NULL, '0000-00-00', '-', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(591, '300730010020290089', 141, 1, 'SAGIMAN, MARTINUS', '', 'SETURAN II, NO 87 A', '(0274)486950', 'L', 'A', '1988-12-11', 'KLATEN', 3, 2, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BALIKPAPAN', NULL, '1995-10-07', 'FOL 83, NO 336', '', 3, 66, 34, 9, 100, 0, 1, 2, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(592, '300730010020290090', 141, 2, 'SRI RISTIDIYATI, MARIA MAGDALENA', '', 'SETURAN II, NO 87 A', '(0274)486950', 'P', 'B', '1958-11-22', 'YOGYAKARTA', 3, 3, 'ST THERESIA', '1996-03-28', 'ST THERESIA, BALIKPAPAN, IV / 317 / 958', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BALIKPAPAN', NULL, '1995-10-07', 'FOL 83, NO 336', '', 5, 68, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(593, '300730010020290091', 141, 3, 'LYANI IRIYANTI, ELISABETH', '', 'SETURAN II, NO 87 A', '(0274)486950', 'P', 'B', '1980-11-12', 'BALIKPAPAN', 3, 1, 'ST THERESIA', '1980-12-17', 'ST THERESIA, BALIKPAPAN, III / 43 / 2456', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 13, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(594, '300730010020290092', 141, 3, 'KIKI ADI PRASETYA, PAULUS', '', 'SETURAN II, NO 87 A', '(0274)486950', 'L', 'A', '1988-10-26', 'BALIKPAPAN', 3, 1, 'ST THERESIA', '1988-11-06', 'ST THERESIA, BALIKAPAPAN, III / 86 / 2886', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 60, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(595, '300730010020300093', 142, 1, 'RAHARJO PRIYOSEMBODO, W YOSEPH', '', ' PERUM DEPPEN, NO 63, SETURAN', '(0274)486068', 'L', 'B', '1957-03-20', 'YOGYAKARTA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'MARGANINGSIH', NULL, '1987-04-25', 'FOL -, NO 1898', '', 5, 60, 56, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(596, '300730010020300094', 142, 2, 'NIKEN WIDIASTUTI, ROSARITA', '', ' PERUM DEPPEN, NO 63, SETURAN', '(0274)486068', 'P', 'B', '1960-10-30', 'SLEMAN', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'MARGANINGSIH', NULL, '1987-04-25', 'FOL -, NO 1898', '', 6, 56, 37, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(597, '300730010020300095', 142, 3, 'RAHARDYAN PRADANA SWANGGA, CORNELIUS', '', ' PERUM DEPPEN, NO 63, SETURAN', '(0274)486068', 'L', 'B', '1988-03-31', 'YOGYAKARTA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 70, 65, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(598, '300730010020300096', 142, 3, 'NITYA WIKANISWARA, VINCETIA', '', ' PERUM DEPPEN, NO 63, SETURAN', '(0274)486068', 'P', 'O', '1992-05-23', 'YOGYAKARTA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 39, 65, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(599, '300730010020300097', 142, 3, 'SISTA PARAMESWARA YOSEPHINE', '', ' PERUM DEPPEN, NO 63, SETURAN', '(0274)486068', 'P', 'B', '1994-09-30', 'YOGYAKARTA', 3, 1, 'KALASAN', '1995-01-06', 'MARGANINGSIH, KALASAN, XIV / - / 13849', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 23, 66, 64, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(600, '300730010020310098', 143, 1, 'TOTO W SURYANINGTYAS, CHRISTPHORUS', '', 'PERUM APH B, NO 10, SETURAN', '(0274)486318', 'L', 'B', '1964-01-26', 'JAKARTA', 3, 7, 'GKJ, JAKARTA', '1970-05-17', 'GKJ, JAKARTA, 6712 / 2587', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1994-09-04', 'FOL 78, NO 234', '', 4, 60, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 1, 0, 0, 0, NULL, NULL),
(601, '300730010020310099', 143, 2, 'DIDIT SETYAWATI, CHRISTIANA', '', 'PERUM APH B, NO 10, SETURAN', '(0274)486318', 'P', 'B', '1964-12-16', 'YOGYAKARTA', 3, 1, 'BACIRO', '1964-12-21', 'BACIRO, YOGYAKARTA, XII / 112', '', '', '2', '', 'BACIRO', '1980-07-17', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1994-09-04', 'FOL 78, NO 234', '', 5, 68, 62, 9, 100, 0, 1, 3, 0, 1, 2, 0, 1, 0, 0, 0, NULL, NULL),
(602, '300730010020310100', 143, 3, 'KELVIANTO GRADYAN S, CHRISTIAN', '', 'PERUM APH B, NO 10, SETURAN', '(0274)486318', 'L', 'B', '1995-12-17', 'YOGYAKARTA', 3, 1, 'BACIRO', '1996-05-19', 'BACIRO, YOGYAKARTA, IX / 66 / 196', '', '', '2', '', 'BABARSARI', '2010-08-15', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 13, 66, 64, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(603, '300730010020310101', 143, 3, 'VARIANTO GRADYAN S, CHRISTOPHER', '', 'PERUM APH B, NO 10, SETURAN', '(0274)486318', 'L', 'B', '1998-08-24', 'YOGYAKARTA', 3, 1, 'BINTARAN', '1998-12-13', 'BINTARAN, YOGYAKARTA, I / 20 / 80', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 12, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(604, '300730010020320102', 144, 1, 'SOEDARMAN, STEFANUS', '', 'JL PERUMNAS, NO 298, SETURAN', '(0274)433115', 'L', 'O', '1946-09-20', 'KLATEN', 3, 8, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'ST YUSUF', NULL, '1974-11-04', '-', '', 5, 52, 56, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(605, '300730010020320103', 144, 2, 'PURWANTI, CHATARINA', '', 'JL PERUMNAS, NO 298, SETURAN', '(0274)433115', 'P', 'AB', '1950-12-11', 'AMBARAWA', 3, 8, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'ST YUSUF', NULL, '1974-11-04', '-', '', 4, 34, 56, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(606, '300730010020330104', 145, 1, 'KADARWATI, SCHOLASTIKA', '', 'PERUM APH', '(0274)486077', 'P', 'AB', '1951-09-12', 'YOGYAKARTA', 3, 8, 'BACIRO', '1984-06-04', 'BACIRO, YOGYAKARTA, VI / - / 56', '', '', '2', '', 'MRICAN', '1984-07-31', '', '0', '', '0000-00-00', 3, 'SOLO', NULL, '1973-07-16', '-', '', 3, 66, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(607, '300730010020330105', 145, 2, 'SUPARMO', '', 'PERUM APH', '(0274)486077', 'L', 'O', '1942-03-22', 'MATARAM', 1, 11, 'TDK', '0000-00-00', '', '', '', '1', '', 'TDK', '0000-00-00', '', '0', '', '0000-00-00', 3, 'SOLO', NULL, '1973-07-16', '-', '', 3, 66, 34, 9, 99, 0, 1, 0, 0, 0, 2, 0, 99, 0, 0, 0, NULL, NULL),
(608, '300730010020340106', 146, 1, 'ASHAR ANDRIANTO, FRANSISKUS XAVERIUS', '', 'SETURAN III, NO 32, RT 03 / RW 01', '(0274)485423', 'L', 'A', '1957-03-07', 'YOGYAKARTA', 3, 8, 'GAMPING', '1983-03-27', 'GAMPING, YOGYAKARTA, III / 22454', '', '', '2', '', 'BABARSARI', '2010-08-15', '', '0', '', '0000-00-00', 2, 'GAMPING', NULL, '1983-05-11', 'FOL 82, NO 317', '', 5, 62, 37, 9, 100, 0, 1, 3, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(609, '300730010020340107', 146, 1, 'SUPRAPTI, TATIANA', '', 'SETURAN III, NO 32, RT 03 / RW 01', '(0274)485423', 'L', 'B', '1956-09-07', 'YOGYAKARTA', 3, 2, 'GAMPING', '1968-12-21', 'GAMPING, YOGYAKARTA, II / 84 / 1216', '', '', '2', '', 'GAMPING', '1969-07-04', '', '0', '', '0000-00-00', 2, 'GAMPING', NULL, '1983-05-11', 'FOL 82, NO 317', '', 5, 34, 5, 9, 100, 0, 1, 2, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(610, '300730010020340108', 146, 3, 'MARTHA PRIMA PUSPITA, VALENTINA', '', 'SETURAN III, NO 32, RT 03 / RW 01', '(0274)485423', 'P', 'B', '1984-03-21', 'YOGYAKARTA', 3, 1, 'BANTENG', '1984-08-05', 'BANTENG, YOGYAKARTA, II / 176 / 1695', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 44, 26, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(611, '300730010020340109', 146, 3, 'ROSITA NASTITI, ELISABETH', '', 'SETURAN III, NO 32, RT 03 / RW 01', '(0274)485423', 'P', 'B', '1990-05-31', 'YOGYAKARTA', 3, 1, 'BACIRO', '1990-07-05', 'BACIRO, YOGYAKARTA, VII / 122 / 885', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 13, 65, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(612, '300730010020340110', 146, 3, 'NONOT PRATITO, STEVANUS', '', 'SETURAN III, NO 32, RT 03 / RW 01', '(0274)485423', 'L', 'AB', '1991-11-01', 'YOGYAKARTA', 3, 1, 'BABARSARI', '1992-05-10', 'BACIRO, YOGYAKARTA, VII / 77 / 230', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 60, 65, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(613, '300730010020350111', 147, 1, 'SURYANI PUDYASTUTI, ANGELAMERICI', '', 'JL PERUMNAS, NO 165, SETURAN', '(0274)485134', 'P', 'O', '1965-09-14', 'SLEMAN', 3, 2, 'JETIS', '1983-04-02', 'JETIS, YOGYAKARTA, I / 68 / 272', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 3, 'BACIRO', NULL, '1994-06-08', 'FOL 72, NO 215', '', 5, 56, 62, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(614, '300730010020350112', 147, 2, 'RM SOSOTYA BUDI MADURETNO', '', 'JL PERUMNAS, NO 165, SETURAN', '(0274)485134', 'L', 'B', '1964-08-26', 'MOJOKERTO', 1, 11, 'TDK', '0000-00-00', '', '', '', '1', '', 'TDK', '0000-00-00', '', '0', '', '0000-00-00', 3, 'BACIRO', NULL, '1994-06-08', 'FOL 72, NO 215', '', 6, 13, 37, 9, 99, 0, 1, 0, 0, 0, 1, 0, 99, 0, 0, 0, NULL, NULL),
(615, '300730010020350113', 147, 3, 'EKA HUTOMO PUTRA MADURETNO, BERNARD', '', 'JL PERUMNAS, NO 165, SETURAN', '(0274)485134', 'L', 'O', '1996-10-03', 'YOGYAKARTA', 3, 1, 'BABARSARI', '1996-12-08', 'BABARSARI, YOGYAKARTA, IX / 92 / 276', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 12, 66, 64, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(616, '300730010020350114', 147, 3, 'RADEN INDRA OKTA P M, GREGORIUS', '', 'JL PERUMNAS, NO 165, SETURAN', '(0274)485134', 'L', 'O', '2001-10-13', 'YOGYAKARTA', 3, 1, 'BABARSARI', '2006-03-09', 'BABARSARI, YOGYAKARTA 001/-/144', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(617, '300730010020360115', 148, 1, 'ARISTONO, YUSTINUS', '', 'SETURAN, GANG DURIAN, NO 161 A', '81257943048', 'L', 'O', '1968-04-01', 'KLATEN', 3, 8, 'KOTABARU', '1980-05-15', 'KOTABARU, YOGYAKARTA, XVIII / 455', '', '', '2', '', 'BACIRO', '1984-07-30', '', '0', '', '0000-00-00', 2, 'SOMOHITAN', NULL, '1996-04-18', '-', '', 6, 70, 37, 9, 100, 0, 1, 2, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(618, '300730010020360116', 148, 2, 'SRI SULASTRI, ANTONIA', '', 'SETURAN, GANG DURIAN, NO 161 A', '81257943048', 'P', 'B', '1970-07-01', 'SLEMAN', 3, 2, 'SOMOHITAN', '1983-12-22', 'SOMOHITAN,  LB / V / 3751', '', '', '2', '', 'SOMOHITAN', '1984-05-17', '', '0', '', '0000-00-00', 2, 'SOMOHITAN', NULL, '1996-04-18', '-', '', 4, 70, 27, 9, 100, 0, 1, 2, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(619, '300730010020360117', 148, 3, 'LINTANG OKTAVIANITA L, AGNES', '', 'SETURAN, GANG DURIAN, NO 161 A', '81257943048', 'P', 'B', '1996-10-08', 'GOWA', 3, 1, 'ST SIMON PETRUS GEMB', '1996-11-12', 'ST SIMON PETRUS GEMBALA, MAKASAR, 468', '', '', '2', '', 'BABARSARI', '2010-08-15', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 12, 66, 64, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(620, '300730010020360118', 148, 3, 'TEDUH SURYO FEBRIAN A, YOANES BOSCO', '', 'SETURAN, GANG DURIAN, NO 161 A', '81257943048', 'L', 'O', '2004-02-01', 'YOGYAKARTA', 3, 1, 'BABARSARI', '2004-08-15', 'BABARSARI, YOGYAKARTA, I / 103', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 21, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(621, '300730010020370119', 149, 1, 'TRISANTO ROESLAN, TIBURTIUS', '', 'PERUM DEPPEN, JL DIAN NUSANTARA I / 93', '(0274)484855', 'L', 'B', '1946-06-19', 'PURWOKERTO', 3, 3, 'PUGERAN', '1974-12-24', 'PUGERAN, YOGYAKARTA, XI / 77 / 1340', '', '', '2', '', 'KIDULLOJI', '1988-05-25', '', '0', '', '0000-00-00', 2, 'PUGERAN', NULL, '1974-11-08', 'FOL -, NO 1329', '', 4, 34, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(622, '300730010020370120', 149, 2, 'SOEHARTINI, ANDRIANA MAGDALENA', '', 'PERUM DEPPEN, JL DIAN NUSANTARA I / 93', '(0274)484855', 'P', 'O', '1951-07-21', 'SURAKARTA', 3, 1, 'KATEDRAL SUTJI, BANJ', '1956-05-26', 'KATEDRAL SUTJI, BANJARMASIN, 291', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'PUGERAN', NULL, '1974-11-08', 'FOL -, NO 1329', '', 4, 68, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(623, '300730010020370121', 149, 3, 'ANDRIANTO, ALBERTUS', '', 'PERUM DEPPEN, JL DIAN NUSANTARA I / 93', '(0274)484855', 'L', 'B', '1976-06-14', 'YOGYAKARTA', 3, 1, 'PUGERAN', '1976-08-06', 'PUGERAN, YOGYAKARTA, X / - / 8943', '', '', '2', '', 'KIDULLOJI', '1988-05-26', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(624, '300730010020370122', 149, 6, 'KINASIH PUTRI ANDRIAN, BERNADETHE', '', 'PERUM DEPPEN, JL DIAN NUSANTARA I / 93', '(0274)484855', 'P', 'O', '2009-03-08', 'YOGYAKARTA', 3, 1, 'BABARSARI', '2010-03-31', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(625, '300730010020380123', 150, 1, 'SUWARTONO, MAXIMIANUS', '', 'SETURAN, CT XX / 165', '(0274)485528', 'L', 'O', '1960-08-21', 'KLATEN', 3, 2, 'KOTABARU', '1978-05-04', 'KOTABARU, YOGYAKARTA, 17 / 635', '', '', '2', '', 'KOTABARU', '1978-08-13', '', '0', '', '0000-00-00', 2, 'KLATEN', NULL, '1994-03-19', '-', '', 4, 16, 56, 9, 100, 0, 1, 6, 0, 1, 3, 0, 4, 0, 0, 0, NULL, NULL),
(626, '300730010020380124', 150, 2, 'MURSINI, MONICA', '', 'SETURAN, CT XX / 165', '(0274)485528', 'P', 'A', '1972-07-10', 'KLATEN', 3, 3, 'BABARSARI', '2006-12-21', 'BABARSARI, YOGYAKARTA, I / - /158', '', '', '2', '', 'BACIRO', '2006-07-08', '', '0', '', '0000-00-00', 2, 'KLATEN', NULL, '1994-03-19', '-', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 3, 0, 4, 0, 0, 0, NULL, NULL),
(627, '300730010020380125', 150, 3, 'JUANNINO, MICHAEL', '', 'SETURAN, CT XX / 165', '(0274)485528', 'L', 'O', '1994-11-22', 'SLEMAN', 3, 2, 'BABARSARI', '2006-05-12', 'BABARSARI, YOGYAKARTA, 001 / - / 148', '', '', '2', '', 'BACIRO', '2006-07-08', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 23, 66, 64, 9, 100, 0, 1, 6, 0, 1, 3, 0, 4, 0, 0, 0, NULL, NULL),
(628, '300730010020380126', 150, 3, 'JULIANNINO, MATYAS', '', 'SETURAN, CT XX / 165', '(0274)485528', 'L', 'O', '2001-07-09', 'SLEMAN', 3, 1, 'BABARSARI', '2006-05-12', 'BABARSARI, YOGYAKARTA 001/-/147', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 21, 66, 99, 9, 100, 0, 1, 6, 0, 1, 3, 0, 4, 0, 0, 0, NULL, NULL),
(629, '300730010020380127', 150, 3, 'JANENINO, MARCELLINUS', '', 'SETURAN, CT XX / 165', '(0274)485528', 'L', 'O', '2008-08-13', 'SLEMAN', 3, 1, 'BABARSARI', '2008-12-12', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 3, 0, 4, 0, 0, 0, NULL, NULL),
(630, '300730010020390128', 151, 1, 'AGUNG BUDI PRATIYANTI, MARKUS', '', 'JL SETURAN II, NO 66, SETURAN', '(0274)485593', 'L', 'A', '1975-04-24', 'YOGYAKARTA', 3, 1, 'NANGGULAN', '1976-06-11', 'NANGGULAN, KULONPROGO, III / - / 878', '', '', '2', '', 'BACIRO', '1988-06-11', '', '0', '', '0000-00-00', 3, 'BINTARAN', NULL, '2004-06-06', '-', '', 5, 60, 21, 9, 100, 0, 1, 6, 0, 6, 2, 0, 1, 0, 0, 0, NULL, NULL),
(631, '300730010020390129', 151, 2, 'INDRA SANDI', '', 'JL SETURAN II, NO 66, SETURAN', '(0274)485593', 'P', 'A', '1976-09-10', 'RIAU', 1, 11, 'TDK', '0000-00-00', '', '', '', '1', '', 'TDK', '0000-00-00', '', '0', '', '0000-00-00', 3, 'BINTARAN', NULL, '2004-06-06', '-', '', 5, 13, 20, 9, 99, 0, 1, 0, 0, 0, 2, 0, 99, 0, 0, 0, NULL, NULL),
(632, '300730010020400130', 152, 1, 'BAMBANG SULISTYONO, ROBERTUS', '', 'KOMPLEK RRI, SETURAN, NO 5', '81913693877', 'L', 'bt', '1957-05-15', 'SURAKARTA', 3, 3, 'KUMETIRAN', '1977-12-16', 'KUMETIRAN,YOGYAKARTA, IX / - / 459', '', '', '2', '', 'KUMETIRAN', '1977-12-16', '', '0', '', '0000-00-00', 2, 'KUMETIRAN', NULL, '1977-09-04', 'FOL -, NO 12', '', 3, 66, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(633, '300730010020400131', 152, 2, 'SRI KARTINI, MARIA CHATARINA', '', 'KOMPLEK RRI, SETURAN, NO 5', '81913693877', 'P', 'B', '1958-04-25', 'YOGYAKARTA', 3, 3, 'KUMETIRAN', '1976-12-12', 'KUMETIRAN, YOGYAKARTA, VIII / - / 871', '', '', '2', '', 'KUMETIRAN', '1976-12-12', '', '0', '', '0000-00-00', 2, 'KUMETIRAN', NULL, '1977-09-04', 'FOL -, NO 12', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(634, '300730010020400132', 152, 3, 'ELEKTRIKA TEMI RENANDI, LAURENSIUS', '', 'KOMPLEK RRI, SETURAN, NO 5', '81913693877', 'L', 'B', '1981-09-15', 'YOGYAKARTA', 3, 2, 'KUMETIRAN', '1990-12-11', 'KUMETIRAN, YOGYAKARTA, XI / - / 386', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(635, '300730010020400133', 152, 3, 'INDAH MARETA SARI, VALENTINA', '', 'KOMPLEK RRI, SETURAN, NO 5', '81913693877', 'P', 'B', '1990-03-24', 'YOGYAKARTA', 3, 1, 'KUMETIRAN', '1990-12-09', 'KUMETIRAN, YOGYAKARTA, XIV / - / 696', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 15, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(636, '300730010020400134', 152, 3, 'AYU BUNGA VANIA, MONICA', '', 'KOMPLEK RRI, SETURAN, NO 5', '81913693877', 'P', 'bt', '1998-01-21', 'YOGYAKARTA', 3, 1, 'KOTABARU', '2001-08-03', 'KOTABARU, YOGYAKARTA, XXVI / 122 / 2001', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 12, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(637, '300730010020410135', 153, 1, 'BRURI SETIA BIMA, YOHANES', '', 'PERUM PEMDA, SETURAN, NO 16', '(0274)486292', 'L', 'A', '1977-02-05', 'YOGYAKARTA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BABARSARI', NULL, '2011-05-08', '-', '', 5, 60, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(638, '300730010020410136', 153, 2, 'DYAH PUTRI PRATIWI, CAECILIA', '', 'PERUM PEMDA, SETURAN, NO 16', '(0274)486292', 'P', 'O', '1984-01-26', 'YOGYAKARTA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BABARSARI', NULL, '2011-05-08', '-', '', 5, 8, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(639, '300730010020420137', 154, 1, 'SUNARTO, BARTOLOMEUS', '', 'JL SETURAN I, GANG KURMA, NO 170', '8174911286', 'L', 'B', '1955-03-04', 'KLATEN', 3, 2, 'MARIA ASSUMPTA', '1967-12-24', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'ST YOHANES RASUL, KLATEN', NULL, '1979-02-10', '-', '', 3, 66, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(640, '300730010020420138', 154, 2, 'SRI PURWANTI, MARGARETA', '', 'JL SETURAN I, GANG KURMA, NO 170', '8174911286', 'P', 'bt', '1956-09-06', 'KLATEN', 3, 3, 'MARIA ASSUMPTA', '1981-04-03', 'SDH', '', '', '2', '', 'JAKARTA', '1984-08-05', '', '0', '', '0000-00-00', 2, 'ST YOHANES RASUL, KLATEN', NULL, '1979-02-10', '-', '', 2, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(641, '300730010020430139', 155, 1, 'BAMBANG MURSUPRIYANTO, ALBERTUS', '', 'PERUM APH A, N0 1, SETURAN', '(0274)485424', 'L', 'AB', '1951-09-01', 'YOGYAKARTA', 3, 8, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'PUGERAN', NULL, '1978-10-14', 'FOL -, NO 1654', '', 3, 66, 37, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(642, '300730010020430140', 155, 2, 'PUDJI TRI ARINI, REINILDIS', '', 'PERUM APH A, N0 1, SETURAN', '(0274)485424', 'P', 'O', '1953-08-15', 'YOGYAKARTA', 3, 3, 'BACIRO', '1997-05-17', 'BACIRO, YOGYAKARTA, IX / 125 / 373', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'PUGERAN', NULL, '1978-10-14', 'FOL -, NO 1654', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(643, '300730010020430141', 155, 3, 'ADIA PITTAKA WIDYA AYUWREDI, HILDEGARD', '', 'PERUM APH A, N0 1, SETURAN', '(0274)485424', 'P', 'O', '1983-07-03', 'YOGYAKARTA', 3, 3, 'BACIRO', '1997-05-17', 'BACIRO, YOGYAKARTA, IX / 123 / 369', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 23, 56, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(644, '300730010020440142', 156, 1, 'BAYU CAHYAWAN, VINCENTIUS', '', 'PERUM APH B, NO 39', '(0274)2634364', 'L', 'B', '1968-03-04', 'YOGYAKARTA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1997-12-28', 'FOL 176, NO 526', '', 5, 44, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(645, '300730010020440143', 156, 2, 'BUDIMAN, THERESIA', '', 'PERUM APH B, NO 39', '(0274)2634364', 'P', 'A', '1968-03-08', 'MENTOK', 3, 1, 'ST MARIA, BANGKA', '1968-04-13', 'MENTOK, BANGKA, 493', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1997-12-28', 'FOL 176, NO 526', '', 5, 44, 37, 17, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(646, '300730010020440144', 156, 3, 'OCTAVITO CAHYAWAN, BONAVENTURA', '', 'PERUM APH B, NO 39', '(0274)2634364', 'L', 'bt', '2003-10-24', 'YOGYAKARTA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(647, '300730010020450145', 157, 1, 'IDA ROSARI, ELISABETH', '', 'PERUM SETURAN INDAH B, NO 16', '-', 'P', 'bt', '1964-02-21', 'WONOGIRI', 3, 7, 'ST YOHANES RASUL', '1987-12-20', 'ST YOHANES RASUL, WONOGIRI, V / 132 / 526', '', '', '2', '', 'KOTABARU', '2008-06-06', '', '0', '', '0000-00-00', 0, 'GK JATIMULYO', NULL, '1992-04-23', '-', '', 3, 66, 56, 17, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(648, '300730010020460146', 158, 1, 'ISJUMANTO BANGUN WARDOYO, ANTONIUS', '', 'JL SETURAN II, GANG MANGGA, NO 115', '(0274)7008812', 'L', 'B', '1961-01-06', 'YOGYAKARTA', 3, 2, 'NANGGULAN', '1970-12-04', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BLM', NULL, '0000-00-00', '-', '', 5, 60, 56, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(649, '300730010020460147', 158, 2, 'THERESIA SUNARTI, GEMMA', '', 'JL SETURAN II, GANG MANGGA, NO 115', '(0274)7008812', 'P', 'O', '1964-04-09', 'MAGELANG', 3, 2, 'MAGELANG', '1980-12-24', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BLM', NULL, '0000-00-00', '-', '', 4, 34, 35, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(650, '300730010020460148', 158, 3, 'EMILIA PRIMASARI, ANNA', '', 'JL SETURAN II, GANG MANGGA, NO 115', '(0274)7008812', 'P', 'O', '1986-05-31', 'YOGYAKARTA', 3, 1, 'PAKEM', '1986-06-15', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 8, '', NULL, '0000-00-00', '', '', 4, 12, 56, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(651, '300730010020460149', 158, 3, 'BRAMANTYO AYOGHI, DOMINICUS', '', 'JL SETURAN II, GANG MANGGA, NO 115', '(0274)7008812', 'L', 'O', '1987-11-23', 'JAKARTA', 3, 1, 'PETAMBURAN', '1988-07-03', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 15, 65, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(652, '300730010020460150', 158, 3, 'TYAS ISNUGA, ANDREAS', '', 'JL SETURAN II, GANG MANGGA, NO 115', '(0274)7008812', 'L', 'O', '1995-02-02', 'JAKARTA', 3, 1, 'NANGGULAN', '1995-10-23', 'SDH', '', '', '2', '', 'PAKEM', '2010-07-25', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 12, 66, 64, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(653, '300730010020460151', 158, 3, 'DEONA TYAS ISWARANTI, MARIA', '', 'JL SETURAN II, GANG MANGGA, NO 115', '(0274)7008812', 'P', 'O', '1997-08-28', 'JAKARTA', 3, 1, 'NANGGULAN', '1997-10-08', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 12, 66, 64, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(654, '300730010020470152', 159, 1, 'HINDAYATI, THERESIA', '', 'SETURAN I, GANG NAGKA, NO 176', '(0274)487038', 'P', 'bt', '1956-10-26', 'SOLO', 3, 1, 'SOLO', '1956-10-28', 'KAPEL BRAYAT MINULYO, SOLO, IA / 35 / 130', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 4, 'ST ANTONIUS PURBAYAN', NULL, '1989-11-26', 'LM III, FOL 40, NO 4004', '', 3, 66, 56, 17, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(655, '300730010020470153', 159, 2, 'TONDO NEGORO', '', 'SETURAN I, GANG NAGKA, NO 176', '(0274)487038', 'L', 'bt', '1952-08-18', 'SOLO', 7, 11, 'TDK', '0000-00-00', '', '', '', '1', '', 'TDK', '0000-00-00', '', '0', '', '0000-00-00', 3, 'ST ANTONIUS PURBAYAN', NULL, '1989-11-26', 'LM III, FOL 40, NO 4004', '', 3, 66, 56, 17, 99, 0, 1, 0, 0, 0, 2, 0, 99, 0, 0, 0, NULL, NULL),
(656, '300730010020470154', 159, 3, 'SHIRLY HINDRA NEGORO, URSULA', '', 'SETURAN I, GANG NAGKA, NO 176', '(0274)487038', 'P', 'bt', '1990-09-26', 'SOLO', 3, 1, 'ST ANTONIUS PURBAYAN', '1991-06-06', 'PURBAYAN, SOLO, XXVI / 64 / 24810', '', '', '2', '', 'ST ANTONIUS PURBAYAN', '2004-09-24', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 66, 65, 17, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(657, '300730010020480155', 160, 1, 'SETYANTO, JANUARIUS', '', 'JL SETURAN I, NO 224', '81328311666', 'L', 'O', '1960-09-09', 'LAMPUNG', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'KRISTUS RAJA, BACIRO', NULL, '1986-07-16', 'FOL 154, NO 615', '', 3, 66, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(658, '300730010020480156', 160, 2, 'SITI ROCHIMA, YULIA', '', 'JL SETURAN I, NO 224', '81328311666', 'P', 'A', '1963-10-15', 'LAMPUNG', 3, 8, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'KRISTUS RAJA, BACIRO', NULL, '1986-07-16', 'FOL 154, NO 615', '', 3, 66, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(659, '300730010020480157', 160, 3, 'WHISNU, ANDREAS', '', 'JL SETURAN I, NO 224', '81328311666', 'L', 'AB', '1988-12-25', 'ACEH', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 60, 65, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(660, '300730010020490158', 161, 1, 'RYAN CAHYADI, DIONISIUS', '', 'JL SETURAN I, NO 224', '82138909027', 'L', 'O', '1984-02-27', 'LAMPUNG', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'HATI KUDUS YESUS, METRO', NULL, '2004-03-10', 'VEL LM VI, NO 2317', '', 3, 66, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(661, '300730010020490159', 161, 2, 'SHINTA, CAECILIA', '', 'JL SETURAN I, NO 224', '82138909027', 'P', 'AB', '1982-11-11', 'LAMPUNG', 3, 1, 'BACIRO', '1986-07-16', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'HATI KUDUS YESUS, METRO', NULL, '2004-03-10', 'VEL LM VI, NO 2317', '', 4, 14, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(662, '300730010020490160', 161, 3, 'INDIE STELLA IBANEZ, IRINE', '', 'JL SETURAN I, NO 224', '82138909027', 'P', 'bt', '2004-06-26', 'METRO', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(663, '300730010020500161', 162, 1, 'DWI TETUKO NURINGTYAS, PETRUS', '', 'PERUM VILLA SETURAN B, NO 28', '811816858', 'L', 'O', '1980-04-09', 'TEGAL', 3, 7, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'KUMETIRAN', NULL, '2007-08-25', 'LM VI, FOL 090, NO 1805', '', 5, 3, 56, 9, 328, 0, 1, 6, 0, 4, 1, 0, 4, 0, 0, 0, NULL, NULL),
(664, '300730010020500162', 162, 2, 'IKA PUSPITASARI, ANASTASIA', '', 'PERUM VILLA SETURAN B, NO 28', '811816858', 'P', 'B', '1980-01-30', 'JAKARTA', 3, 1, 'ST ANTONI PATAVIN', '1981-05-17', 'ST ANTONI PATAVIN, JAKARTA, VIII / 480 / 121', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'KUMETIRAN', NULL, '2007-08-25', 'LM VI, FOL 090, NO 1805', '', 5, 3, 62, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(665, '300730010020500163', 162, 3, 'ASTRI KIRANA PRAMUDITA, KATARINA', '', 'PERUM VILLA SETURAN B, NO 28', '811816858', 'P', 'B', '2008-08-18', 'SLEMAN', 3, 1, 'KOTABARU', '2008-11-07', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(666, '300730010020510164', 163, 1, 'KUSUMASARI ASTUTI, KATARINA', '', 'JL INDRAGIRI I, B , NO 23', '(0274)487396/65', 'P', 'AB', '1974-07-08', 'LUMAJANG', 3, 1, 'RATU DAMAI', '1974-11-22', 'RATU DAMAI, LUMAJANG, III / 22 / 37 / 85 / 1974', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 3, 'YOGYAKARTA', NULL, '1999-06-19', '-', '', 4, 68, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(667, '300730010020510165', 163, 2, 'AGUS SUSILO NUGROHO', '', 'JL INDRAGIRI I, B , NO 23', '(0274)487396/65', 'L', 'A', '1968-08-03', 'SLEMAN', 1, 11, 'TDK', '0000-00-00', '', '', '', '1', '', 'TDK', '0000-00-00', '', '0', '', '0000-00-00', 3, 'YOGYAKARTA', NULL, '1999-06-19', '-', '', 3, 66, 37, 9, 99, 0, 1, 0, 0, 0, 2, 0, 99, 0, 0, 0, NULL, NULL),
(668, '300730010020510166', 163, 3, 'RIO ARDIAN SANJAYA', '', 'JL INDRAGIRI I, B , NO 23', '(0274)487396/65', 'L', 'bt', '2000-05-13', 'YOGYAKARTA', 3, 9, 'BLM', '0000-00-00', 'BLM', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 21, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(669, '300730010020510167', 163, 3, 'DENI KRISNA NARENDRA SANJAYA', '', 'JL INDRAGIRI I, B , NO 23', '(0274)487396/65', 'L', 'bt', '2005-12-05', 'YOGYAKARTA', 3, 9, 'BLM', '0000-00-00', 'BLM', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(670, '300730010020520168', 164, 1, 'RUDY PRASETYO, YOHANES PEMBAPTIS', '', 'JL ACASIA, NO 02, SETURAN', '8180437', 'L', 'A', '1976-07-06', 'YOGYAKARTA', 3, 1, 'SDH', '0000-00-00', 'MARGANINGSIH, KALASAN, IX / - / 8228', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'INDRAMAYU', NULL, '2003-07-05', '-', '', 5, 3, 51, 9, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(671, '300730010020520169', 164, 2, 'ELISA FITRI', '', 'JL ACASIA, NO 02, SETURAN', '8180437', 'P', 'B', '1976-10-12', 'TANJUNG BALAI', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'INDRAMAYU', NULL, '2003-07-05', '-', '', 5, 3, 56, 13, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(672, '300730010020520170', 164, 3, 'ALLENSANORA NAYLA PREISYA P', '', 'JL ACASIA, NO 02, SETURAN', '8180437', 'L', 'bt', '2005-01-01', 'YOGYAKARTA', 9, 1, 'SDH-KATO', '0000-00-00', '', '', '', '1', '', 'TDK', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(673, '300730010020520171', 164, 3, 'BRYAN PASHA PRASETYO', '', 'JL ACASIA, NO 02, SETURAN', '8180437', 'P', 'bt', '2006-08-17', 'YOGYAKARTA', 3, 9, 'BLM', '0000-00-00', 'BLM', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(674, '300730010020530172', 165, 1, 'RINA HAYUNING, SILVIA', '', 'JL SETURAN 2, NO 58', '(0274)6519529', 'P', 'B', '1972-10-31', 'JAKARTA', 3, 1, 'ST FAMILIA, JAKARTA', '1972-12-24', 'ST FAMILIA, JAKARTA, I / 89 / 355', '', '', '2', '', 'ST THERESIA', '1987-10-25', '', '0', '', '0000-00-00', 4, 'GKJ NGENTO-NGENTO', NULL, '1995-01-24', '-', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(675, '300730010020540173', 166, 1, 'PADAKA, FERDINANDUS', '', 'JL SETURAN, NO 08, BLOK C', '-', 'L', 'B', '1991-01-22', 'FLORES', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 21, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(676, '300730010020540174', 166, 10, 'PRAWITA ARGANI, DIONISIA', '', 'JL SETURAN, NO 08, BLOK C', '-', 'P', 'A', '1988-10-06', 'SEMARANG', 3, 1, 'SEMARANG', '1989-01-06', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 39, 65, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(677, '300730010020550175', 167, 1, 'MARIA NATALIA, MELVIATY', '', 'CONDONGSARI, BLOK D30, SETURAN', '-', 'P', 'B', '1990-12-24', 'JAMBI', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 15, 3, 65, 9, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(678, '300730010020560176', 168, 1, 'NASTITI LARASATI, SERAFINA', '', 'PERUM APH, BLOK B 12-13', '(0274)486881', 'P', 'A', '1989-04-21', 'YOGYAKARTA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 15, 25, 65, 9, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(679, '300730010050010001', 169, 1, 'SARIJA, ANDRIANUS', '', 'JL APEL, NO 255, RT 7 / RW 2, MUNDU, SLEMAN', '(0274)3277175', 'L', 'A', '1959-07-07', 'SLEMAN', 3, 8, 'SOMOHITAN', '1980-01-24', 'LB V / NO 3479', '', '', '2', '', 'SOMOHITAN', '1982-05-16', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1989-06-04', '-', '', 3, 66, 37, 9, 100, 0, 1, 3, 0, 1, 2, 0, 1, 0, 0, 0, NULL, NULL),
(680, '300730010050010002', 169, 2, 'TRI SUHARTINI,CHRISTINA', '', 'JL APEL, NO 255, RT 7 / RW 2, MUNDU, SLEMAN', '(0274)3277175', 'P', 'AB', '1955-09-15', 'SLEMAN', 3, 3, 'BACIRO', '1989-03-20', 'VII / 132 / 526', '', '', '2', '', 'BACIRO', '1994-05-15', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1989-06-04', '-', '', 2, 66, 62, 9, 100, 0, 1, 3, 0, 1, 2, 0, 1, 0, 0, 0, NULL, NULL),
(681, '300730010050020003', 170, 1, 'CHRISTNE KURNIA S, FRANSISCA CABRINI', '', 'RT 8 / RW 3, TEMPEL, CATURTUNGGAL, DEPOK, SLEMAN', '(0274)487216', 'P', 'O', '1988-09-26', 'SLEMAN', 3, 2, 'KOTABARU', '2001-03-29', 'BUKU: XXVI / NO: 39 / 2001', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 5, 60, 37, 17, 309, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(682, '300730010050020004', 170, 7, 'MELLY KURNIAWAN', '', 'RT 8 / RW 3, TEMPEL, CATURTUNGGAL, DEPOK, SLEMAN', '(0274)487216', 'P', 'O', '1960-07-02', 'YOGYAKARTA', 10, 10, 'BLM', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 5, '', NULL, '0000-00-00', '', '', 5, 8, 56, 17, 100, 0, 1, 6, 0, 5, 1, 0, 4, 0, 0, 0, NULL, NULL),
(683, '300730010050020005', 170, 7, 'HERMAN SURYADHARMA', '', 'RT 8 / RW 3, TEMPEL, CATURTUNGGAL, DEPOK, SLEMAN', '(0274)487216', 'L', 'O', '1956-03-16', 'PURWOKERTO', 10, 10, 'BLM', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 5, '', NULL, '0000-00-00', '', '', 5, 63, 56, 17, 100, 0, 1, 6, 0, 5, 1, 0, 4, 0, 0, 0, NULL, NULL),
(684, '300730010050020006', 170, 4, 'CHRISTIAN KURNIA SURYADHARMA, FRANSISCUS', '', 'RT 8 / RW 3, TEMPEL, CATURTUNGGAL, DEPOK, SLEMAN', '(0274)487216', 'L', 'O', '1991-08-08', 'SLEMAN', 3, 2, 'KUMETIRAN', '2005-03-20', 'BUKU: XIX / NO: 2138', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 66, 65, 17, 100, 0, 1, 6, 0, 6, 1, 0, 4, 0, 0, 0, NULL, NULL),
(685, '300730010050030007', 171, 1, 'HENDARNO HENDARMIN, ANTONIUS', '', 'PERUM CITRA GRAHA SEJAHTERA, NO 07', '(0274)7478825', 'L', 'O', '1937-08-16', 'JAKARTA PUSAT', 3, 3, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'YOGYAKARTA', NULL, '1992-04-27', '-', '', 6, 39, 34, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(686, '300730010050030008', 171, 2, 'NANCY SAGITAWATI, MARIA ELIZABETH', '', 'PERUM CITRA GRAHA SEJAHTERA, NO 07', '(0274)7478825', 'P', 'AB', '1951-12-09', 'CIREBON', 3, 2, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'YOGYAKARTA', NULL, '1992-04-27', '-', '', 5, 23, 62, 9, 100, 0, 1, 6, 0, 4, 1, 0, 4, 0, 0, 0, NULL, NULL),
(687, '300730010050040009', 172, 1, 'DWI DESSY KRISTANTI, CHRISTINA', '', 'JL KURMO, NO 191, MUNDU, SLEMAN', '-', 'P', 'A', '1984-12-19', 'SLEMAN', 3, 1, 'BACIRO', '1985-01-13', 'BUKU: VI / HAL: -  / NO: 381', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 3, 'BABARSARI', NULL, '2011-03-06', 'NO: 62, LM: 1', '', 5, 13, 37, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL);
INSERT INTO `umats` (`id`, `kode_umat`, `id_kk`, `id_hubkk`, `nama`, `email`, `alamat`, `tlp`, `jenis_kelamin`, `goldarah`, `tgl_lahir`, `tmplahir`, `id_agama`, `id_statusbaptis`, `tmpbaptis`, `tglbaptis`, `liberbap`, `romobaptis`, `namabaptis`, `stskrisma`, `namakrisma`, `tmpkrisma`, `tglkrisma`, `romokrisma`, `stskomuni`, `tmpkomuni`, `tglkomuni`, `id_statuspernikahan`, `tempatnikah`, `kotamenikah`, `tglnikah`, `libermat`, `romopernikahan`, `id_pendidikan`, `id_bidstudi`, `id_pekerjaan`, `id_suku`, `id_tempattinggal`, `lamatinggal`, `statusTT`, `id_keaktifanparoki`, `id_keaktifangereja`, `id_statuskekatolikan`, `id_statusekonomi`, `id_statuskesehatan`, `id_statussosial`, `jeniskk`, `statuspindah`, `statuskematian`, `nama_ayah`, `nama_ibu`) VALUES
(688, '300730010050040010', 172, 2, 'HARI PURNAMA', '', 'JL KURMO, NO 191, MUNDU, SLEMAN', '-', 'L', 'O', '1983-03-03', 'JAKARTA', 10, 10, 'BLM', '0000-00-00', 'BLM', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 3, 'BABARSARI', NULL, '2011-03-06', 'NO: 62, LM: 1', '', 5, 23, 37, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(689, '300730010050050011', 173, 1, 'MARWOTO HADIDRAYITNO, JUVENTIUS', '', 'SAREN, RT 2 / RW 1, NO 74 A', '(0274)7894116', 'L', 'A', '1953-06-04', 'YOGYAKARTA', 3, 8, 'JETIS', '1977-09-10', 'BUKU: II / NO: 1634', '', '', '2', '', 'JETIS', '1978-08-13', '', '0', '', '0000-00-00', 5, 'JETIS', NULL, '1983-10-01', '-', '', 3, 66, 43, 9, 100, 0, 1, 6, 0, 3, 2, 0, 1, 0, 0, 0, NULL, NULL),
(690, '300730010050060012', 174, 1, 'SUDARTI, VERONICA', '', 'RT 08 / RW 03, TEMPEL, CATURTUNGGAL, DEPOK, SLEMAN', '-', 'P', 'O', '1957-09-14', 'YOGYAKARTA', 3, 2, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 3, 'KUMETIRAN', NULL, '1984-03-06', '-', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(691, '300730010050070013', 175, 1, 'ISKAR KWINTARTO, FIDELIS', '', 'MUNDU, NO 232 B, RT 07 / W 02', '8562917972', 'L', 'O', '1956-05-07', 'MADIUN', 3, 1, 'MADIUN', '1956-05-20', 'NO: VII / 810', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 5, 'SLEMAN', NULL, '1980-01-02', '-', '', 3, 66, 37, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(692, '300730010050070014', 175, 2, 'PROBO WULANDARI', '', 'MUNDU, NO 232 B, RT 07 / W 02', '8562917972', 'P', 'O', '1960-05-03', 'PROBOLINGGO', 1, 11, 'TDK', '0000-00-00', '', '', '', '1', '', 'TDK', '0000-00-00', '', '0', '', '0000-00-00', 5, 'SLEMAN', NULL, '1980-01-02', '-', '', 13, 66, 62, 9, 99, 0, 1, 0, 0, 0, 2, 0, 99, 0, 0, 0, NULL, NULL),
(693, '300730010050070015', 175, 3, 'DIMAS DWI CAHYONO', '', 'MUNDU, NO 232 B, RT 07 / W 02', '8562917972', 'L', 'O', '1982-12-17', 'YOGYAKARTA', 10, 10, 'BLM', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 52, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(694, '300730010050080016', 176, 1, 'MUDJIONO, PAULUS', '', 'JL PISANG, NO 107, RT 03 / RW 01', '(0274)6581152', 'L', 'O', '1935-01-05', 'SLEMAN', 3, 3, 'BACIRO', '1970-12-22', 'II / 128 / 507', '', '', '2', '', 'BACIRO', '1972-07-05', '', '0', '', '0000-00-00', 2, 'MADIUN', NULL, '1955-06-02', '-', '', 4, 60, 45, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(695, '300730010050080017', 176, 2, 'SRI KADARWATI, THERESIA', '', 'JL PISANG, NO 107, RT 03 / RW 01', '(0274)6581152', 'P', 'O', '1942-03-04', 'SLEMAN', 3, 3, 'BACIRO', '1970-12-22', 'II / 128 / 508', '', '', '2', '', 'BACIRO', '1972-07-05', '', '0', '', '0000-00-00', 2, 'MADIUN', NULL, '1955-06-02', '-', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(696, '300730010050090018', 177, 1, 'AROLA, MARTHEN', '', 'PERUM YOGYA REGENCY, NO B4, RT 03 / RW 01', '81316519237', 'L', 'O', '1937-06-17', 'POSO, TARIPA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'FAK-FAK', NULL, '1970-02-28', '-', '', 3, 66, 34, 20, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(697, '300730010050090019', 177, 2, 'MATANUBUN, EMILIANA', '', 'PERUM YOGYA REGENCY, NO B4, RT 03 / RW 01', '81316519237', 'P', 'B', '1946-06-07', 'MERAUKE', 3, 1, 'MERAUKE', '1946-08-04', 'SDH', '', '', '2', '', 'MERAUKE', '1957-06-09', '', '0', '', '0000-00-00', 2, 'FAK-FAK', NULL, '1970-02-28', '-', '', 3, 66, 34, 20, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(698, '300730010050100020', 178, 1, 'IGNATIUS SUYANTO, ALBERTUS', '', 'JL SAWO, N0 75, SAREN. SLEMAN', '(0274)488641', 'L', 'B', '1945-11-08', 'MALANG', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'TARAKAN', NULL, '1970-05-07', 'NO 159, ANNO 1970,  VEL II', '', 3, 66, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(699, '300730010050100021', 178, 2, 'SARUH LOSUNG, MARIA', '', 'JL SAWO, N0 75, SAREN. SLEMAN', '(0274)488641', 'P', 'O', '1948-06-05', 'TARAKAN', 3, 1, 'TARAKAN', '1948-07-03', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'TARAKAN', NULL, '1970-05-07', 'NO 159, ANNO 1970,  VEL II', '', 3, 66, 62, 20, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(700, '300730010050100022', 178, 3, 'EFRATHA, ADRIANA', '', 'JL SAWO, N0 75, SAREN. SLEMAN', '(0274)488641', 'P', 'O', '1973-12-06', 'TARAKAN', 3, 1, 'TARAKAN', '1974-09-07', 'BUKU III, NO 2199', '', '', '2', '', 'PURBAYAN', '1990-09-22', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 37, 37, 9, 315, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(701, '300730010050110023', 179, 1, 'INDARYANI, CHRISTINA', '', 'JL PEPAYA, N0 56, TEMPEL, SLEMAN', '(0274)488574', 'P', 'B', '1955-07-06', 'SLEMAN', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 3, 'KALASAN', NULL, '1977-04-15', 'ANNO 1997, VEI LM III, FOL -, NO 1100', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(702, '300730010050110024', 179, 2, 'SARMINTO SUSAN WIDAKPO', '', 'JL PEPAYA, N0 56, TEMPEL, SLEMAN', '(0274)488574', 'L', 'AB', '1955-10-28', 'KLATEN', 1, 11, 'TDK', '0000-00-00', '', '', '', '1', '', 'TDK', '0000-00-00', '', '0', '', '0000-00-00', 3, 'KALASAN', NULL, '1977-04-15', 'ANNO 1997, VEI LM III, FOL -, NO 1100', '', 3, 66, 37, 9, 99, 0, 1, 0, 0, 0, 2, 0, 99, 0, 0, 0, NULL, NULL),
(703, '300730010050110025', 179, 3, 'ARDHIAN ADISUSANTO, AGUSTINUS', '', 'JL PEPAYA, N0 56, TEMPEL, SLEMAN', '(0274)488574', 'L', 'B', '1979-08-16', 'SLEMAN', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 37, 9, 309, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(704, '300730010050110026', 179, 3, 'ARFINA NATALIA, THERESIA', '', 'JL PEPAYA, N0 56, TEMPEL, SLEMAN', '(0274)488574', 'P', 'B', '1984-12-26', 'YOGYAKARTA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(705, '300730010050110027', 179, 3, 'ARLISA YULITA, FRANSISCA', '', 'JL PEPAYA, N0 56, TEMPEL, SLEMAN', '(0274)488574', 'P', 'B', '1986-07-15', 'BANTUL', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 37, 9, 309, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(706, '300730010050120028', 180, 1, 'ANJAR PURNOMO, FRANSISKUS', '', 'JL CEMPEDA 1, NO 317, SLEMAN', '(0274)9272800', 'L', 'AB', '1968-08-20', 'SEMARANG', 3, 1, 'ST YUSUF, SEMARANG', '1970-07-15', 'XXI / 193 / 250', '', '', '2', '', 'ST YUSUF, SEMARANG', '1980-08-28', '', '0', '', '0000-00-00', 2, 'ST AGUSTINUS, JAKARTA', NULL, '1995-06-18', 'I / 138 / 44', '', 3, 66, 37, 9, 100, 0, 1, 2, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(707, '300730010050120029', 180, 2, 'SUNARNI, ELISABETH', '', 'JL CEMPEDA 1, NO 317, SLEMAN', '(0274)9272800', 'P', 'O', '1968-06-24', 'YOGYAKARTA', 3, 3, 'ST AGUSTINUS, TANGGE', '1995-04-15', 'II / 308 / 84', '', '', '2', '', 'KARAWACI, TANGGERANG', '1995-04-15', '', '0', '', '0000-00-00', 2, 'ST AGUSTINUS, JAKARTA', NULL, '1995-06-18', 'I / 138 / 44', '', 3, 66, 62, 9, 100, 0, 1, 2, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(708, '300730010050120030', 180, 3, 'FELIX AJI PURNOMO, STEPHANUS', '', 'JL CEMPEDA 1, NO 317, SLEMAN', '(0274)9272800', 'L', 'O', '1995-09-25', 'TANGGERANG', 3, 1, 'ST YUSUF, AMBARAWA', '1996-04-21', 'SDH', '', '', '2', '', 'BABARSARI', '2010-08-15', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 12, 66, 64, 9, 100, 0, 1, 4, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(709, '300730010050130031', 181, 1, 'SUMARINI, ODILIA', '', 'TEMPEL, NO 329, RT 10 / RW 03, CATURTUNGGAL', '(0274)489124', 'P', 'B', '1950-09-14', 'CIREBON', 3, 1, 'CIREBON', '1950-10-16', 'NO : 60', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 4, 'JAKARTA', NULL, '1978-07-08', 'NO 18, ANNO 1978, VELL I, FOL 135, NO 543 / 18', '', 5, 1, 34, 9, 100, 0, 1, 4, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(710, '300730010050130032', 181, 2, 'CHARLES RANGGA, TABU', '', 'TEMPEL, NO 329, RT 10 / RW 03, CATURTUNGGAL', '(0274)489124', 'L', 'O', '1948-08-04', 'SUMBA', 2, 11, 'GRJ-KRISTEN', '0000-00-00', '', '', '', '1', '', 'TDK', '0000-00-00', '', '0', '', '0000-00-00', 4, 'JAKARTA', NULL, '1978-07-08', 'NO 18, ANNO 1978, VELL I, FOL 135, NO 543 / 18', '', 5, 64, 31, 9, 100, 0, 1, 0, 0, 0, 1, 0, 99, 0, 0, 0, NULL, NULL),
(711, '300730010050130033', 181, 3, 'FEBRIYANTO HANGADI, FELIX', '', 'TEMPEL, NO 329, RT 10 / RW 03, CATURTUNGGAL', '(0274)489124', 'L', 'O', '1980-02-07', 'YOGYAKARTA', 3, 1, 'PUGERAN', '1980-07-04', 'BUKU : XII, NO ; 10731', '', '', '2', '', 'BACIRO', '1997-12-31', '', '0', '', '0000-00-00', 2, '', NULL, '0000-00-00', '', '', 5, 32, 9, 9, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(712, '300730010050130034', 181, 3, 'ASTI OCTARINA TRIASTUTI, ANNA MARIE', '', 'TEMPEL, NO 329, RT 10 / RW 03, CATURTUNGGAL', '(0274)489124', 'P', 'O', '1990-10-06', 'YOGYAKARTA', 3, 1, 'BACIRO', '1992-08-09', 'BUKU: VIII, HAL: 96, NO: 287', '', '', '2', '', 'BACIRO', '2004-12-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 23, 65, 9, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(713, '300730010050130035', 181, 8, 'AMBAR PALUPI, CHRISTINA', '', 'TEMPEL, NO 329, RT 10 / RW 03, CATURTUNGGAL', '(0274)489124', 'P', 'O', '1977-09-11', 'JAKARTA', 3, 1, 'CILILITAN', '1977-12-18', 'HAL: 73, NO: 290', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 37, 37, 9, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(714, '300730010050140036', 182, 1, 'TRI MURDIATI, AGNES', '', 'TEMPEL, RT 10 / RW 03, CATURTUNGGAL, DEPOK', '(0274)487200', 'P', 'O', '1949-12-10', 'KLATEN', 3, 3, 'JAKARTA', '1977-04-02', 'II / 94 / 374', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 8, 'JANDA', NULL, '0000-00-00', '-', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 1, 0, 0, 0, NULL, NULL),
(715, '300730010050140037', 182, 3, 'VEMBRI RIYANTO, FELIX JOSEPH', '', 'TEMPEL, RT 10 / RW 03, CATURTUNGGAL, DEPOK', '(0274)487200', 'L', 'O', '1971-11-20', 'JAKARTA', 3, 1, 'JAKARTA', '1972-03-05', 'I / 131 / 907', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 4, 13, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 1, 0, 0, 0, NULL, NULL),
(716, '300730010050150038', 183, 1, 'AGUNG SETIYAWAN, ANTHUSA', '', 'PERUM MUTIARA, NO B12, MUNDU, SLEMAN', '(0274)7191592', 'L', 'O', '1978-08-23', 'SRAGEN', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'SRAGEN', NULL, '2006-07-08', 'ANNO 2006 / VEL LM IV, FOL 45, NO 1698', '', 5, 13, 56, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(717, '300730010050150039', 183, 2, 'TRIE ANISA SAVITRI, SKOLASTIKA', '', 'PERUM MUTIARA, NO B12, MUNDU, SLEMAN', '(0274)7191592', 'P', 'O', '1980-09-09', 'SRAGEN', 3, 3, 'BACIRO', '2005-12-18', 'LIB I, FOL -, NO 133', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'SRAGEN', NULL, '2006-07-08', 'ANNO 2006 / VEL LM IV, FOL 45, NO 1698', '', 5, 24, 37, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(718, '300730010050150040', 183, 3, 'HOYI AKSANI, EMELIE', '', 'PERUM MUTIARA, NO B12, MUNDU, SLEMAN', '(0274)7191592', 'P', 'O', '2009-09-02', 'YOGYAKARTA', 3, 1, 'YOGYAKARTA', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(719, '300730010050160041', 184, 1, 'SLAMET WIDODO, PETRUS', '', 'RT 02 / RW 01, TEMPEL, CATURTUNGGAL, DEPOK', '(0274)7472120', 'L', 'O', '1939-09-09', 'SOLO', 3, 8, 'ST ANTONIUS, SOLO', '1972-12-22', 'XVI / 71 / 141885', '', '', '2', '', 'BACIRO', '1982-06-18', '', '0', '', '0000-00-00', 2, 'SANINDIGO, DIRJODIPURAN', NULL, '1974-03-10', 'ANNO 1974 / VEI L 20, FOL 5, NO 20', '', 5, 13, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(720, '300730010050160042', 184, 2, 'HERAWATI, ELIGENIA', '', 'RT 02 / RW 01, TEMPEL, CATURTUNGGAL, DEPOK', '(0274)7472120', 'P', 'B', '1951-05-19', 'SOLO', 3, 1, 'ST ANTONIUS, SOLO', '1951-06-10', 'IV / 164 / 3792', '', '', '2', '', 'PURBAYAN, SOLO', '1958-09-15', '', '0', '', '0000-00-00', 2, 'SANINDIGO, DIRJODIPURAN', NULL, '1974-03-10', 'ANNO 1974 / VEI L 20, FOL 5, NO 20', '', 5, 18, 34, 9, 100, 0, 1, 3, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(721, '300730010050170043', 185, 1, 'INDRA RIYADI, YOHANES EVALBERTUS', '', 'JL MUNDU, NO 218, TEMPEL, SLEMAN', '(0274)488085', 'L', 'O', '1984-07-12', 'SLEMAN', 3, 1, 'BACIRO', '1985-01-13', 'BUKU III, HAL -, NO 383', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '2010-06-20', 'NO 46, LM I', '', 4, 52, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(722, '300730010050170044', 185, 2, 'TRI WIDYASTUTI', '', 'JL MUNDU, NO 218, TEMPEL, SLEMAN', '(0274)488085', 'P', 'O', '1989-01-17', 'YOGYAKARTA', 10, 10, 'BLM', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '2010-06-20', 'NO 46, LM I', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(723, '300730010050170045', 185, 3, 'ANASTASIA N INTAN, CAUSTA', '', 'JL MUNDU, NO 218, TEMPEL, SLEMAN', '(0274)488085', 'P', 'O', '2010-12-19', 'SLEMAN', 3, 9, 'BLM', '0000-00-00', 'BLM', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(724, '300730010050180046', 186, 1, 'BAMBANG HARYANTO, CHRISTOPHORUS', '', 'JL PISANG, NO 107, SAREN, SLEMAN', '(0274)488485', 'L', 'A', '1948-06-12', 'KEDIRI', 3, 3, 'BACIRO', '1979-10-23', 'BUKU VI, HAL -, NO 54', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'MARIA ASUMPTA, PAKEM', NULL, '1978-02-19', 'NO 03, ANNO 1978 / VEI L -, FOL -, NO 531', '', 3, 66, 45, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(725, '300730010050180047', 186, 2, 'ETTY KRISTIANI, LUCIA', '', 'JL PISANG, NO 107, SAREN, SLEMAN', '(0274)488485', 'P', 'B', '1956-12-20', 'SLEMAN', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'MARIA ASUMPTA, PAKEM', NULL, '1978-02-19', 'NO 03, ANNO 1978 / VEI L -, FOL -, NO 531', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(726, '300730010050180048', 186, 6, 'ALEXIA ADYACITYA ARTA, GIACINTA', '', 'JL PISANG, NO 107, SAREN, SLEMAN', '(0274)488485', 'P', 'AB', '2005-06-21', 'YOGYAKARTA', 3, 1, 'KOTABARU', '2005-09-02', 'BUKU XXVII, NO 571, TAHUN 2005', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(727, '300730010050190049', 187, 1, 'MULYATINAH, FRANSISCA RUMANA', '', 'JL SEMANGKA, N0 43, SAREN, SLEMAN', '-', 'P', 'AB', '1961-09-03', 'SLEMAN', 3, 8, 'KALASAN', '1980-12-22', 'BUKU X, HAL -, NO 9246', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 3, 'BACIRO', NULL, '1985-12-31', '-', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(728, '300730010050190050', 187, 2, 'TUKIJU', '', 'JL SEMANGKA, N0 43, SAREN, SLEMAN', '-', 'L', 'O', '1962-05-02', 'SLEMAN', 1, 11, 'TDK', '0000-00-00', '', '', '', '1', '', 'TDK', '0000-00-00', '', '0', '', '0000-00-00', 3, 'BACIRO', NULL, '1985-12-31', '-', '', 3, 66, 58, 9, 99, 0, 1, 0, 0, 0, 2, 0, 99, 0, 0, 0, NULL, NULL),
(729, '300730010050190051', 187, 3, 'TISA UKI ARDIYANTI, AGNES', '', 'JL SEMANGKA, N0 43, SAREN, SLEMAN', '-', 'P', 'A', '1981-10-19', 'SLEMAN', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(730, '300730010050190052', 187, 3, 'NOVIANTI, YASINTA', '', 'JL SEMANGKA, N0 43, SAREN, SLEMAN', '-', 'P', 'A', '1995-11-17', 'SLEMAN', 3, 1, 'BABARSARI', '2000-08-15', 'BUKU I, HAL -, NO 156', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 12, 66, 64, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(731, '300730010050200053', 188, 1, 'HIMAWAN WARDHANA, BERNARDUS', '', 'RT 07 / RW 02, MUNDU, CATURTUNGGAL, SLEMAN', '(0274)4533703', 'L', 'AB', '1977-05-11', 'WONOGIRI', 3, 1, 'KEBAYORAN', '1979-09-07', 'LB X, NO 06220', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '2007-07-07', 'ANNO 2007 / LM - / I BBSR, FOL 02, NO 04', '', 3, 66, 37, 9, 309, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(732, '300730010050200054', 188, 2, 'WURI HARINI, BERNARDETA', '', 'RT 07 / RW 02, MUNDU, CATURTUNGGAL, SLEMAN', '(0274)4533703', 'P', 'O', '1976-10-11', 'SLEMAN', 3, 1, 'BACIRO', '1976-11-05', 'IV / 36 / 141', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '2007-07-07', 'ANNO 2007 / LM - / I BBSR, FOL 02, NO 04', '', 6, 60, 31, 9, 100, 0, 1, 3, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(733, '300730010050200055', 188, 3, 'WIDHI HIMAWURI, JOHN PAUL', '', 'RT 07 / RW 02, MUNDU, CATURTUNGGAL, SLEMAN', '(0274)4533703', 'L', 'bt', '2008-07-25', 'YOGYAKARTA', 3, 1, 'BACIRO', '2009-03-14', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(734, '300730010050210056', 189, 1, 'MARSUDI, MATHEUS', '', 'RT 07 / RW 02, MUNDU, CATURTUNGGAL, SLEMAN', '(0274)4333338', 'L', 'O', '1939-11-24', 'YOGYAKARTA', 3, 2, 'BINTARAN', '1952-12-25', 'SDH', '', '', '2', '', 'KOTABARU', '1954-09-13', '', '0', '', '0000-00-00', 2, 'BANTUL', NULL, '1968-01-07', '-', '', 4, 19, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(735, '300730010050210057', 189, 2, 'SUGIJARTI, HENRICA', '', 'RT 07 / RW 02, MUNDU, CATURTUNGGAL, SLEMAN', '(0274)4333338', 'P', 'O', '1942-07-15', 'BANTUL', 3, 1, 'GANJURAN', '1942-07-18', 'SDH', '', '', '2', '', 'GANJURAN', '1950-05-18', '', '0', '', '0000-00-00', 2, 'BANTUL', NULL, '1968-01-07', '-', '', 3, 66, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(736, '300730010050220058', 190, 1, 'SUPARMANTO, YOHANES', '', 'JL PERUMNAS, NO 249', '85228035530', 'L', 'O', '1960-11-25', 'KLATEN', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'KULONPROGO', NULL, '1986-08-28', 'NO 388, ANNO 1986/VEI L I, FOL -, NO 288/8615', '', 3, 66, 57, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(737, '300730010050220059', 190, 2, 'KURNIA, NATALIA', '', 'JL PERUMNAS, NO 249', '85228035530', 'P', 'O', '1967-05-15', 'KULONPROGO', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'KULONPROGO', NULL, '1986-08-28', 'NO 388, ANNO 1986/VEI L I, FOL -, NO 288/8615', '', 1, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(738, '300730010050220060', 190, 3, 'KURNITA PARAMA LESTARI, YOHANNA', '', 'JL PERUMNAS, NO 249', '85228035530', 'P', 'O', '1987-08-01', 'JAKARTA', 3, 1, 'BACIRO', '1987-10-04', 'VII / 13 / 49', '', '', '2', '', 'PRINGUULUNG', '2006-09-24', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 67, 37, 9, 100, 0, 1, 4, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(739, '300730010050220061', 190, 3, 'PARAMITHA KURNIA LESTARI, CHRISTINA', '', 'JL PERUMNAS, NO 249', '85228035530', 'P', 'O', '1993-08-01', 'YOGYAKARTA', 3, 1, 'MRICAN', '1993-09-19', 'VIII / 177 / 531', '', '', '2', '', 'PRINGUULUNG', '2008-08-16', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 13, 66, 64, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(740, '300730010050230062', 191, 1, 'ASLAMAH, FLORENTINA', '', 'TEMPEL, NO 307A, RT 10 / RW 03, SLEMAN', '(0274)488093', 'P', 'O', '1941-04-24', 'AMBARAWA', 3, 2, 'AMBARAWA', '1951-12-23', 'NO 4688 / LIB / V / PAG 138', '', '', '2', '', 'AMBARAWA', '1952-10-26', '', '0', '', '0000-00-00', 6, 'CIMAHI', NULL, '1978-12-23', 'NO 16, ANNO 1978', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(741, '300730010050240063', 192, 1, 'JIMMY SUJANTO, FRANSISKUS XAVERIUS', '', 'PERUM MUTIARA, NO B5, RT 07 / RW 02, MUNDU', '81392047975', 'L', 'O', '1971-09-25', 'BANGKA', 3, 2, 'BINTARAN', '1988-12-21', 'XVIII / 100 / 12382', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BINTARAN', NULL, '2005-12-11', 'ANNO 2006 / LM VI / FOL 305, NO 3234', '', 5, 13, 56, 17, 100, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(742, '300730010050240064', 192, 2, 'CYNTHIA WIJAYA, FRANSISKA', '', 'PERUM MUTIARA, NO B5, RT 07 / RW 02, MUNDU', '81392047975', 'P', 'O', '1976-10-18', 'BELINYU', 3, 6, 'BINTARAN', '2005-12-05', 'XXI / 27 / 679', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BINTARAN', NULL, '2005-12-11', 'ANNO 2006 / LM VI / FOL 305, NO 3234', '', 5, 13, 62, 17, 100, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(743, '300730010050240065', 192, 3, 'CECILIA, AGATA', '', 'PERUM MUTIARA, NO B5, RT 07 / RW 02, MUNDU', '81392047975', 'P', 'bt', '2008-11-01', 'YOGYAKARTA', 3, 9, 'BLM', '0000-00-00', 'BLM', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 17, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(744, '300730010050250066', 193, 1, 'BANDIYAH, BENEDICTA', '', 'JL SEMANGKA, NO 43, SAREN, DEPOK, SLEMAN', '8180418229', 'P', 'AB', '1953-03-04', 'SLEMAN', 3, 3, 'MANOKWARI', '1983-01-08', 'LB I, NO 76', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 8, 'JANDA', NULL, '0000-00-00', '-', '', 1, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(745, '300730010050250067', 193, 3, 'SIGIT BADRA PARSANA, YUSTINUS', '', 'JL SEMANGKA, NO 43, SAREN, DEPOK, SLEMAN', '8180418229', 'L', 'A', '1987-06-20', 'SLEMAN', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 61, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(746, '300730010050260068', 194, 1, 'HERMAWAN SIGIT WIBOWO, CYRILLUS', '', 'RT 09 / RW 03, TEMPEL, DEPOK, SLEMAN', '(0274)488527', 'L', 'B', '1973-06-26', 'SLEMAN', 3, 2, 'BACIRO', '1987-12-18', 'VII / 29 / 114', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 4, 'BACIRO', NULL, '1998-09-18', 'ANNO 1998 / LM III, FOL 194, NO 582', '', 5, 23, 37, 9, 100, 0, 1, 6, 0, 6, 1, 0, 4, 0, 0, 0, NULL, NULL),
(747, '300730010050260069', 194, 2, 'FARIDA THEA SWASDIARTI', '', 'RT 09 / RW 03, TEMPEL, DEPOK, SLEMAN', '(0274)488527', 'P', 'A', '1970-03-09', 'JAKARTA', 8, 2, 'SDH-KATO', '0000-00-00', 'SDH', '', '', '1', '', 'TDK', '0000-00-00', '', '0', '', '0000-00-00', 4, 'BACIRO', NULL, '1998-09-18', 'ANNO 1998 / LM III, FOL 194, NO 582', '', 5, 9, 37, 9, 100, 0, 1, 6, 0, 6, 1, 0, 4, 0, 0, 0, NULL, NULL),
(748, '300730010050260070', 194, 3, 'FAREL SIGIT LAKSONO, IMMANUEL', '', 'RT 09 / RW 03, TEMPEL, DEPOK, SLEMAN', '(0274)488527', 'L', 'B', '2000-07-27', 'SLEMAN', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 21, 66, 99, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(749, '300730010050270071', 195, 1, 'EKO PRANATA, ALEXANDER', '', 'JL CERMAI, NO 328C', '816682035', 'L', 'O', '1973-11-21', 'YOGYAKARTA', 3, 2, 'SDH', '0000-00-00', 'XIX / 36 / 13133', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'MUNTILAN', NULL, '2001-05-19', 'V / 160 / 636', '', 15, 37, 57, 17, 100, 0, 1, 6, 0, 4, 1, 0, 4, 0, 0, 0, NULL, NULL),
(750, '300730010050270072', 195, 2, 'ELLY WIDARTI IMAWAN, FLORENTINA', '', 'JL CERMAI, NO 328C', '816682035', 'P', 'bt', '1973-08-18', 'MAGELANG', 3, 2, 'MUNTILAN', '1987-12-16', 'BUKU XXIII, NO 268', '', '', '2', '', 'MUNTILAN', '1989-08-12', '', '0', '', '0000-00-00', 2, 'MUNTILAN', NULL, '2001-05-19', 'V / 160 / 636', '', 15, 13, 62, 17, 100, 0, 1, 6, 0, 4, 1, 0, 4, 0, 0, 0, NULL, NULL),
(751, '300730010050270073', 195, 3, 'SURYAPUTRA ARISTO WILEUM, VINCENTIUS', '', 'JL CERMAI, NO 328C', '816682035', 'L', 'bt', '2002-09-26', 'SLEMAN', 3, 9, 'BLM', '0000-00-00', 'BLM', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 21, 66, 99, 17, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(752, '300730010050270074', 195, 3, 'SURYAPUTRA LIM, VALENCIA', '', 'JL CERMAI, NO 328C', '816682035', 'P', 'bt', '2011-04-18', 'YOGYAKARTA', 3, 9, 'BLM', '0000-00-00', 'BLM', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 17, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(753, '300730010050280075', 196, 1, 'SIGIT SANTOSA WIBAWA, VROTASIUS', '', 'JL MANGGIS, NO 168, MUNDU', '81328224505', 'L', 'O', '1969-06-19', 'BANTUL', 3, 1, 'SDH', '0000-00-00', 'VIII / 157 / 8227', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'GANJURAN', NULL, '1995-10-19', 'NO 747, ANNO 1995 / VEIL IV, FOL 158, NO 747', '', 3, 66, 37, 9, 100, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(754, '300730010050280076', 196, 2, 'SITI LESTARI, AGNES', '', 'JL MANGGIS, NO 168, MUNDU', '81328224505', 'P', 'B', '1969-06-18', 'SLEMAN', 3, 3, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'GANJURAN', NULL, '1995-10-19', 'NO 747, ANNO 1995 / VEIL IV, FOL 158, NO 747', '', 4, 70, 62, 9, 100, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(755, '300730010050280077', 196, 3, 'MANSAYA DWI KURNIA, YOHANES', '', 'JL MANGGIS, NO 168, MUNDU', '81328224505', 'L', 'O', '1997-11-08', 'BANTUL', 3, 1, 'GANJURAN', '1998-05-08', 'LB XV, NO 196', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 22, 66, 64, 9, 100, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(756, '300730010050280078', 196, 3, 'VERA KURNIA, ELIZABETH', '', 'JL MANGGIS, NO 168, MUNDU', '81328224505', 'P', 'B', '2010-04-30', 'SLEMAN', 3, 9, 'BLM', '0000-00-00', 'BLM', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(757, '300730010050290079', 197, 1, 'LILIK H SUWASONO, CIEMET HOFBANIR', '', 'PERUM PURI KENARI, NO B6, TEMPEL, SLEMAN', '(0274)7446110', 'L', 'B', '1971-03-15', 'KULONPROGO', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'WATES', NULL, '1999-11-22', 'ANNO 1999, VEIL III, NO 1698', '', 5, 25, 0, 9, 100, 0, 1, 6, 0, 4, 1, 0, 4, 0, 0, 0, NULL, NULL),
(758, '300730010050290080', 197, 2, 'ANNA PURWANING RAHAJU, CLARA', '', 'PERUM PURI KENARI, NO B6, TEMPEL, SLEMAN', '(0274)7446110', 'P', 'A', '1972-01-05', 'GROBOGAN', 3, 3, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'WATES', NULL, '1999-11-22', 'ANNO 1999, VEIL III, NO 1698', '', 5, 14, 4, 9, 100, 0, 1, 6, 0, 4, 1, 0, 4, 0, 0, 0, NULL, NULL),
(759, '300730010050290081', 197, 3, 'ESTRIA LUPITA PURWASWASANA, GREGORIA', '', 'PERUM PURI KENARI, NO B6, TEMPEL, SLEMAN', '(0274)7446110', 'P', 'A', '2001-05-25', 'YOGYAKARTA', 3, 1, 'KOTABARU', '2001-10-05', 'XXVI / 148 / 2001', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(760, '300730010050290082', 197, 3, 'EUREKA PURWASUWASANA, SABINA', '', 'PERUM PURI KENARI, NO B6, TEMPEL, SLEMAN', '(0274)7446110', 'P', 'O', '2005-08-29', 'YOGYAKARTA', 3, 1, 'KOTABARU', '2006-02-03', 'XXVIII / 92 / 2006', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(761, '300730010050290083', 197, 3, 'TALENIA PURWASUWASANA, EUFRASIA', '', 'PERUM PURI KENARI, NO B6, TEMPEL, SLEMAN', '(0274)7446110', 'P', 'AB', '2009-03-02', 'YOGYAKARTA', 3, 1, 'KOTABARU', '2010-01-08', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(762, '300730010050300084', 198, 1, 'ARIS DWI HARDIYANTO, ANDREAS', '', 'JL KURMA, NO 218, MUNDU, SLEMAN', '85292022226', 'L', 'O', '1979-11-21', 'SLEMAN', 3, 2, 'BACIRO', '1989-03-20', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'WONOGIRI', NULL, '2007-07-19', 'ANNO 2007 / LM III, FOL 16, NO 1820', '', 5, 3, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(763, '300730010050300085', 198, 2, 'LILIS SETYANINGSIH', '', 'JL KURMA, NO 218, MUNDU, SLEMAN', '85292022226', 'P', 'O', '1982-03-31', 'WONOGIRI', 10, 10, 'BLM', '0000-00-00', 'BLM', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'WONOGIRI', NULL, '2007-07-19', 'ANNO 2007 / LM III, FOL 16, NO 1820', '', 4, 66, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(764, '300730010050300086', 198, 3, 'WILDA KUMALANINGTYAS, AURELIA', '', 'JL KURMA, NO 218, MUNDU, SLEMAN', '85292022226', 'P', 'O', '2008-04-26', 'SLEMAN', 3, 1, 'BACIRO', '2008-12-12', 'BUKU I, NO 205', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(765, '300730010050310087', 199, 1, 'VEMBRIAWAN ANANTON, BERNADUS', '', 'JL NANAS, NO 144B, TEMPEL, SLEMAN', '(0274)4333365', 'L', 'bt', '1972-11-24', 'BLORA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'GOMBONG', NULL, '2010-11-21', 'NO 591, TAHUN 2010 / LM II', '', 5, 13, 37, 9, 304, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(766, '300730010050310088', 199, 2, 'MELIZA DIANAWTY, MARIA AGNES', '', 'JL NANAS, NO 144B, TEMPEL, SLEMAN', '(0274)4333365', 'P', 'AB', '1981-08-25', 'KEBUMEN', 3, 1, 'ST MIKAEL, GOMBONG', '1981-09-09', 'BUKU IV, NO 794', '', '', '2', '', 'KOTABARU', '1998-06-14', '', '0', '', '0000-00-00', 2, 'GOMBONG', NULL, '2010-11-21', 'NO 591, TAHUN 2010 / LM II', '', 5, 13, 1, 9, 304, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(767, '300730010050320089', 200, 1, 'SUBAGYO, STEPHANUS', '', 'JL NANAS, NO 144B, TEMPEL, SLEMAN', '(0274)4333365', 'L', 'AB', '1951-12-02', 'YOGYAKARTA', 3, 1, 'KOTABARU', '1955-10-04', 'NO 5303, LIB ST ANT VII / Y', '', '', '2', '', 'BACIRO', '1966-05-17', '', '0', '', '0000-00-00', 2, 'ST MIKAEL, GOMBONG', NULL, '1978-04-30', 'ANNNO 1978 / VEII LM I, NO 461', '', 5, 60, 52, 9, 100, 0, 1, 1, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(768, '300730010050320090', 200, 2, 'WERLY ASTUTI, CICILIA', '', 'JL NANAS, NO 144B, TEMPEL, SLEMAN', '(0274)4333365', 'P', 'A', '1957-09-22', 'KEBUMEN', 3, 3, 'ST MIKAEL, GOMBONG', '1977-12-17', 'LIB VI, NO 307', '', '', '2', '', 'GOMBONG', '1982-05-30', '', '0', '', '0000-00-00', 2, 'ST MIKAEL, GOMBONG', NULL, '1978-04-30', 'ANNNO 1978 / VEII LM I, NO 461', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(769, '300730010050320091', 200, 3, 'DHANNY TRISILATAMA, MIKAEL', '', 'JL NANAS, NO 144B, TEMPEL, SLEMAN', '(0274)4333365', 'L', 'AB', '1984-01-31', 'KEBUMEN', 3, 1, 'ST MIKAEL, GOMBONG', '1984-02-12', 'LIB V, NO 1227', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 60, 42, 9, 309, 0, 1, 6, 0, 0, 1, 0, 4, 0, 0, 0, NULL, NULL),
(770, '300730010050330092', 201, 1, 'DARYONO ASTRO, FRANSISKUS XAVERIUS', '', 'RT 09 / RW 03, TEMPEL, DEPOK, SLEMAN', '(0274)488527', 'L', 'B', '1946-12-24', 'SLEMAN', 3, 8, 'BACIRO', '1987-12-18', 'VII / 29 / 113', '', '', '2', '', 'BACIRO', '1988-06-11', '', '0', '', '0000-00-00', 2, 'DEPOK, SLEMAN', NULL, '1971-05-22', '-', '', 5, 67, 34, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(771, '300730010050330093', 201, 2, 'ASIAH NOTOHARJO, NONICA', '', 'RT 09 / RW 03, TEMPEL, DEPOK, SLEMAN', '(0274)488527', 'P', 'B', '1948-08-18', 'SLEMAN', 3, 7, 'BACIRO', '1987-12-18', 'VII / 30 / 117', '', '', '2', '', 'BACIRO', '1988-06-11', '', '0', '', '0000-00-00', 2, 'DEPOK, SLEMAN', NULL, '1971-05-22', '-', '', 5, 13, 62, 9, 100, 0, 1, 6, 0, 0, 1, 0, 4, 0, 0, 0, NULL, NULL),
(772, '300730010050340094', 202, 1, 'AIRLANGGA BAJUADI, ALOYSIUS', '', 'JL MELON, NO 09, MUNDU, SLEMAN', '(0274)4533770', 'L', 'O', '1971-12-05', 'JAKARTA', 3, 1, 'JAKARTA', '1972-03-12', 'BUKU XXII, FOL 225, NO 899', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '2001-05-20', 'FOL 251, NO 753', '', 5, 37, 37, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(773, '300730010050340095', 202, 2, 'DYAH ANGGRAINI, MARIA MARGARETHA', '', 'JL MELON, NO 09, MUNDU, SLEMAN', '(0274)4533770', 'P', 'O', '1975-08-27', 'YOGYAKARTA', 3, 2, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '2001-05-20', 'FOL 251, NO 753', '', 15, 13, 62, 9, 100, 0, 1, 3, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(774, '300730010050340096', 202, 3, 'DWENTIZA YUEN, REGINA', '', 'JL MELON, NO 09, MUNDU, SLEMAN', '(0274)4533770', 'P', 'O', '2002-03-15', 'YOGYAKARTA', 3, 1, 'BACIRO', '2002-11-04', 'X / 25 / 100', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(775, '300730010050340097', 202, 3, 'DIADEMA YUEN, RAFAELA', '', 'JL MELON, NO 09, MUNDU, SLEMAN', '(0274)4533770', 'P', 'O', '2010-11-28', 'YOGYAKARTA', 3, 1, 'BABARSARI', '2011-05-13', 'BUKU I, NO 279', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(776, '300730010050350098', 203, 1, 'JATMIKO, MAKARUS', '', 'JL MELON, NO 07, MUNDU, SLEMAN', '81328703675', 'L', 'O', '1975-01-02', 'SLEMAN', 3, 1, 'KLEPU', '1975-01-03', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'KLEPU', NULL, '2008-07-01', 'ANNO 2008 / VEIL M.VI, NO 4079', '', 4, 51, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(777, '300730010050350099', 203, 2, 'IKA ARIYANI, ANA', '', 'JL MELON, NO 07, MUNDU, SLEMAN', '81328703675', 'P', 'A', '1985-05-09', 'SLEMAN', 3, 1, 'KLEPU', '1985-09-08', 'BUKU XV, HAL -, NO 13800', '', '', '2', '', 'KLEPU', '1996-06-08', '', '0', '', '0000-00-00', 2, 'KLEPU', NULL, '2008-07-01', 'ANNO 2008 / VEIL M.VI, NO 4079', '', 5, 44, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(778, '300730010050350100', 203, 3, 'TALITHA INDAMIKA, DOROTHEA', '', 'JL MELON, NO 07, MUNDU, SLEMAN', '81328703675', 'P', 'A', '2009-10-31', 'SLEMAN', 3, 1, 'KLEPU', '2010-06-11', 'BUKU XXII, NO 19796', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(779, '300730010050360101', 204, 1, 'WAHYUNI, BERNADETHA', '', 'JL SOLO, NO 19, KM 16', '(0274)489914', 'P', 'A', '1958-12-03', 'YOGYAKARTA', 3, 8, 'KUMETIRAN', '1979-07-27', 'X / 520', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'KUMETIRAN', NULL, '1979-08-10', 'ANNO 1979, NO III / 211', '', 3, 66, 56, 17, 100, 0, 1, 6, 0, 4, 1, 0, 4, 0, 0, 0, NULL, NULL),
(780, '300730010050360102', 204, 3, 'YUGA RIESPA PRADANA, DIONISIUS', '', 'JL SOLO, NO 19, KM 16', '(0274)489914', 'L', 'A', '1988-04-09', 'YOGYAKARTA', 3, 2, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 62, 65, 17, 309, 0, 1, 6, 0, 4, 1, 0, 4, 0, 0, 0, NULL, NULL),
(781, '300730010050370103', 205, 1, 'AAN BUDIMAN, DAMIAN', '', 'JL APEL, NO 255, RT 07 / RW 02, MUNDU, SLEMAN', '87839367785', 'L', 'A', '1985-04-13', 'BOYOLALI', 3, 3, 'BABARSARI', '2010-12-25', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '2009-10-15', 'NO 28, LM I', '', 5, 66, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(782, '300730010050370104', 205, 2, 'LATRISARIASIH, MONICA', '', 'JL APEL, NO 255, RT 07 / RW 02, MUNDU, SLEMAN', '87839367785', 'P', 'AB', '1989-10-16', 'YOGYAKARTA', 3, 1, 'BACIRO', '1995-04-15', 'BUKU VIII, NO 977', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '2009-10-15', 'NO 28, LM I', '', 15, 47, 65, 9, 100, 0, 1, 3, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(783, '300730010050370105', 205, 3, 'BUDIMAN NEOBIRU, RAFAEL', '', 'JL APEL, NO 255, RT 07 / RW 02, MUNDU, SLEMAN', '87839367785', 'L', 'B', '2009-06-30', 'YOGYAKARTA', 3, 9, 'BLM', '0000-00-00', 'BLM', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(784, '300730010050370106', 205, 3, 'ADANKO JINGGA GALGANIES, GEMMA', '', 'JL APEL, NO 255, RT 07 / RW 02, MUNDU, SLEMAN', '87839367785', 'P', 'bt', '2010-08-03', 'SLEMAN', 3, 9, 'BLM', '0000-00-00', 'BLM', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(785, '300730010050380107', 206, 1, 'SUNGKONO, STEPHANUS', '', 'TR 06 / RW 02, MUNDU, CATURTUNGGAL, DEPOK, SLEMAN', '(0274)489875', 'L', 'O', '1955-03-05', 'AMBARAWA', 3, 8, 'BACIRO', '1987-04-13', 'VI / 277 / 1107', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1986-12-29', 'ANNO 1986, LM II, FOL 162, NO 645', '', 3, 66, 37, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(786, '300730010050380108', 206, 2, 'SUJIYATMI, PAULA', '', 'TR 06 / RW 02, MUNDU, CATURTUNGGAL, DEPOK, SLEMAN', '(0274)489875', 'P', 'O', '1959-04-17', 'SLEMAN', 3, 8, 'BACIRO', '1979-10-26', 'BUKU V, NO 145', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1986-12-29', 'ANNO 1986, LM II, FOL 162, NO 645', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(787, '300730010050380109', 206, 3, 'BUDI PRASETYO UTAMA, BENEDICTUS', '', 'TR 06 / RW 02, MUNDU, CATURTUNGGAL, DEPOK, SLEMAN', '(0274)489875', 'L', 'O', '1987-06-30', 'YOGYAKARTA', 3, 2, 'BACIRO', '2000-06-15', 'BUKU IX, NO 819A', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 67, 65, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(788, '300730010050380110', 206, 3, 'EDI KRISTIANTO, ALOYSIUS GONZAGA', '', 'TR 06 / RW 02, MUNDU, CATURTUNGGAL, DEPOK, SLEMAN', '(0274)489875', 'L', 'O', '1991-03-25', 'YOGYAKARTA', 3, 2, 'BACIRO', '2004-12-24', 'BUKU I, NO 110', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 3, 65, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(789, '300730010050380111', 206, 3, 'DIAN KRISTINA SARI, BERNADETHA SOUBIROUS', '', 'TR 06 / RW 02, MUNDU, CATURTUNGGAL, DEPOK, SLEMAN', '(0274)489875', 'P', 'O', '1995-07-17', 'YOGYAKARTA', 3, 2, 'BACIRO', '2004-12-24', 'BUKU I, NO 114', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 13, 66, 64, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(790, '300730010050390112', 207, 1, 'LISTIANI, THEOVILA', '', 'RT 07 / RW 02, MUNDU, CATURTUNGGAL, SLEMAN', '(0274)4333338', 'P', 'O', '1968-12-08', 'YOGYAKARTA', 3, 1, 'KOTABARU', '1969-01-02', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 0, 'BACIRO', NULL, '1999-07-16', 'ANNO 1999 / LM III, FOL 219, NO 656', '', 6, 20, 31, 9, 100, 0, 1, 3, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(791, '300730010050390113', 207, 3, 'AFIN, MARIA', '', 'RT 07 / RW 02, MUNDU, CATURTUNGGAL, SLEMAN', '(0274)4333338', 'P', 'O', '1991-11-21', 'YOGYAKARTA', 3, 1, 'BACIRO', '1993-10-14', 'VIII / 181 / 543', '', '', '2', '', 'BACIRO', '2008-07-20', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(792, '300730010050390114', 207, 3, 'ELLI, THERESIA', '', 'RT 07 / RW 02, MUNDU, CATURTUNGGAL, SLEMAN', '(0274)4333338', 'P', 'O', '2000-04-09', 'YOGYAKARTA', 3, 1, 'BACIRO', '2000-06-15', 'BUKU IX. NO.821', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 21, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(793, '300730010050400115', 208, 1, 'DJONIE, ALEXANDER', '', 'JL PERUMNAS, NO 249, SLEMAN', '(0274)2138287', 'L', 'A', '1960-04-09', 'SURABAYA', 3, 2, 'SURABAYA', '1974-04-11', 'SDH', '', '', '2', '', 'SURABAYA', '1974-06-03', '', '0', '', '0000-00-00', 2, 'WONOKROMO', NULL, '1989-05-21', 'NO 850', '', 4, 3, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(794, '300730010050400116', 208, 2, 'AYIK HARYANTI, MARIA', '', 'JL PERUMNAS, NO 249, SLEMAN', '(0274)2138287', 'P', 'O', '1963-05-22', 'SURABAYA', 3, 2, 'SURABAYA', '1978-03-25', 'SDH', '', '', '2', '', 'WONOKROMO', '1978-03-25', '', '0', '', '0000-00-00', 2, 'WONOKROMO', NULL, '1989-05-21', 'NO 850', '', 3, 66, 62, 9, 100, 0, 1, 3, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(795, '300730010050400117', 208, 3, 'ANINDITA WICAKSANA, NIKOLAS', '', 'JL PERUMNAS, NO 249, SLEMAN', '(0274)2138287', 'L', 'A', '1990-04-14', 'SURABAYA', 3, 1, 'SURABAYA', '1990-10-06', 'NO 5817', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 3, 65, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(796, '300730010050400118', 208, 3, 'NADIA PALUPI AYUNINGTIAS, ELISABETH', '', 'JL PERUMNAS, NO 249, SLEMAN', '(0274)2138287', 'P', 'A', '1992-12-07', 'MAKASAR', 3, 1, 'SURABAYA', '1993-03-24', 'NO 6241', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 13, 66, 64, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(797, '300730010050400119', 208, 3, 'NIKEN KUSUMA WARDANI, VERONIKA', '', 'JL PERUMNAS, NO 249, SLEMAN', '(0274)2138287', 'P', 'A', '1995-04-04', 'MAKASAR', 3, 1, 'SURABAYA', '1996-02-24', 'NO 7031', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 13, 66, 64, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(798, '300730010050400120', 208, 3, 'SATRIA NALA PRADIPTA, FILIPUS', '', 'JL PERUMNAS, NO 249, SLEMAN', '(0274)2138287', 'L', 'A', '1997-01-26', 'MAKASAR', 3, 1, 'SURABAYA', '1997-07-12', 'NO 7831', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 12, 66, 64, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(799, '300730010050410121', 209, 1, 'ABIMANYU UNANTO DWI, IGNASIUS', '', 'PERUM TAMAN KENARI, NO 05, RT 07 / RW 02', '8174870027', 'L', 'A', '1956-11-29', 'BOYOLALI', 3, 1, 'ST PETRUS, PURWOSARI', '1956-12-02', 'II / 91 / 382', '', '', '2', '', 'BOYOLALI', '1969-07-29', '', '0', '', '0000-00-00', 2, 'ST IGNASIUS, MAGELANG', NULL, '1987-06-07', 'NO V, ANNO 1987, / VEI LM, FOL 34, NO 695', '', 6, 39, 37, 9, 100, 0, 1, 6, 0, 6, 2, 0, 4, 0, 0, 0, NULL, NULL),
(800, '300730010050410122', 209, 2, 'SEPTI ASTUTI, YOSEPHINE', '', 'PERUM TAMAN KENARI, NO 05, RT 07 / RW 02', '8174870027', 'P', 'A', '1958-09-18', 'MUNTILAN', 3, 1, 'MUNTILAN', '1958-09-25', 'NO 4309, LIB XIV', '', '', '2', '', 'MUNTILAN', '1969-06-06', '', '0', '', '0000-00-00', 2, 'ST IGNASIUS, MAGELANG', NULL, '1987-06-07', 'NO V, ANNO 1987, / VEI LM, FOL 34, NO 695', '', 4, 3, 62, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(801, '300730010050410123', 209, 3, 'SANTIKO PARIKESIT, BONIFASIUS', '', 'PERUM TAMAN KENARI, NO 05, RT 07 / RW 02', '8174870027', 'L', 'A', '1989-12-28', 'JAKARTA', 3, 1, 'JAKARTA', '1990-02-25', 'V / 20 / 6090157', '', '', '2', '', 'JAKARTA', '2003-09-07', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 13, 65, 9, 315, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(802, '300730010050410124', 209, 3, 'WAHYU LARASATI, ZITA', '', 'PERUM TAMAN KENARI, NO 05, RT 07 / RW 02', '8174870027', 'P', 'A', '1991-07-02', 'JAKARTA', 3, 1, 'JAKARTA', '1991-09-22', 'VI / 312 / 7158 / 474', '', '', '2', '', 'JAKARTA', '2003-09-07', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 58, 65, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(803, '300730010050420125', 210, 1, 'AMBARWATI, ANASTASIA', '', 'JL MELON, RT 03 / RW 02, MUNDU, SLEMAN', '81904137537', 'P', 'O', '1969-08-14', 'SLEMAN', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 3, 'KLENDER, JAKARTA', NULL, '1991-01-15', '-', '', 3, 66, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(804, '300730010050420126', 210, 2, 'AHYADI', '', 'JL MELON, RT 03 / RW 02, MUNDU, SLEMAN', '81904137537', 'L', 'O', '1964-09-04', 'SLEMAN', 1, 11, 'TDK', '0000-00-00', '', '', '', '1', '', 'TDK', '0000-00-00', '', '0', '', '0000-00-00', 3, 'KLENDER, JAKARTA', NULL, '1991-01-15', '-', '', 3, 66, 56, 9, 99, 0, 1, 0, 0, 0, 2, 0, 99, 0, 0, 0, NULL, NULL),
(805, '300730010050420127', 210, 3, 'INGGIT SETIA WULANDARI, ELISABETH', '', 'JL MELON, RT 03 / RW 02, MUNDU, SLEMAN', '81904137537', 'P', 'O', '1992-02-19', 'SLEMAN', 3, 2, 'KLEPU', '2001-12-21', 'BUKU I, NO 176', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 30, 65, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(806, '300730010050430128', 211, 1, 'IMAM EFENDI, MAXIMUS', '', 'JL NANGKA, NO 88A, RT 02 / RW 01, SLEMAN', '(0274)487586', 'L', 'A', '1951-06-10', 'TANJUNGKARANG', 3, 2, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1982-12-28', 'ANNO 1982 / VEIL II, NO 348', '', 6, 32, 9, 9, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(807, '300730010050430129', 211, 2, 'SRI WAHYUNI, EMANUELA', '', 'JL NANGKA, NO 88A, RT 02 / RW 01, SLEMAN', '(0274)487586', 'P', 'B', '1955-06-03', 'YOGYAKARTA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'BABARSARI', '2010-08-15', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1982-12-28', 'ANNO 1982 / VEIL II, NO 348', '', 5, 44, 31, 9, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(808, '300730010050430130', 211, 3, 'ARMADANI, ABNER BERNARD', '', 'JL NANGKA, NO 88A, RT 02 / RW 01, SLEMAN', '(0274)487586', 'L', 'B', '1984-08-29', 'SURABAYA', 3, 1, 'SURABAYA', '1985-03-03', 'XIV / 1611', '', '', '2', '', 'BABARSARI', '2010-08-15', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 60, 37, 9, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(809, '300730010050430131', 211, 3, 'ADINANDA GEMA WAHYUDI PUTERA, BENEDICTUS', '', 'JL NANGKA, NO 88A, RT 02 / RW 01, SLEMAN', '(0274)487586', 'L', 'B', '1989-05-27', 'PALEMBANG', 3, 1, 'ST YOSEPH, PALEMBANG', '1989-08-12', 'V / 126 / 1002', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 33, 35, 9, 333, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(810, '300730010050430132', 211, 3, 'DARIUS YUNENDITYO, CHRISTO', '', 'JL NANGKA, NO 88A, RT 02 / RW 01, SLEMAN', '(0274)487586', 'L', 'B', '1991-06-08', 'PALEMBANG', 3, 1, 'ST MARIA TB, PALEMBA', '1991-12-11', 'BUKU 13, NO 928', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 33, 65, 9, 333, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(811, '300730010050440133', 212, 1, 'TICTIN SETYORINI, BERNADETTA', '', 'PERUM JOGJA REGENCY, NO A2', '(0274)3057231', 'P', 'B', '1963-10-20', 'MAGELANG', 3, 2, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'MUNTILAN', NULL, '1987-12-27', 'BUKU V, NO 30', '', 6, 32, 9, 9, 100, 0, 1, 6, 0, 4, 1, 0, 4, 0, 0, 0, NULL, NULL),
(812, '300730010050440134', 212, 2, 'WIRYAWAN MANUSUBROTO', '', 'PERUM JOGJA REGENCY, NO A2', '(0274)3057231', 'L', 'B', '1962-07-31', 'YOGYAKARTA', 9, 1, 'SDH-KATO', '0000-00-00', 'SDH', '', '', '1', '', 'TDK', '0000-00-00', '', '0', '', '0000-00-00', 2, 'MUNTILAN', NULL, '1987-12-27', 'BUKU V, NO 30', '', 6, 32, 9, 9, 100, 0, 1, 6, 0, 4, 1, 0, 4, 0, 0, 0, NULL, NULL),
(813, '300730010050440135', 212, 3, 'RADITYARINI KUSUMANINGRUM, CAROLINE', '', 'PERUM JOGJA REGENCY, NO A2', '(0274)3057231', 'P', 'B', '1989-12-31', 'YOGYAKARTA', 3, 1, 'MUNTILAN', '1992-12-30', 'XXII / 240 / 968', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 33, 65, 9, 100, 0, 1, 6, 0, 4, 1, 0, 4, 0, 0, 0, NULL, NULL),
(814, '300730010050440136', 212, 3, 'LALITA, TERESA', '', 'PERUM JOGJA REGENCY, NO A2', '(0274)3057231', 'P', 'B', '1999-07-21', 'YOGYAKARTA', 3, 1, 'MUNTILAN', '2002-02-24', 'XXV / 26 / 103', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL);
INSERT INTO `umats` (`id`, `kode_umat`, `id_kk`, `id_hubkk`, `nama`, `email`, `alamat`, `tlp`, `jenis_kelamin`, `goldarah`, `tgl_lahir`, `tmplahir`, `id_agama`, `id_statusbaptis`, `tmpbaptis`, `tglbaptis`, `liberbap`, `romobaptis`, `namabaptis`, `stskrisma`, `namakrisma`, `tmpkrisma`, `tglkrisma`, `romokrisma`, `stskomuni`, `tmpkomuni`, `tglkomuni`, `id_statuspernikahan`, `tempatnikah`, `kotamenikah`, `tglnikah`, `libermat`, `romopernikahan`, `id_pendidikan`, `id_bidstudi`, `id_pekerjaan`, `id_suku`, `id_tempattinggal`, `lamatinggal`, `statusTT`, `id_keaktifanparoki`, `id_keaktifangereja`, `id_statuskekatolikan`, `id_statusekonomi`, `id_statuskesehatan`, `id_statussosial`, `jeniskk`, `statuspindah`, `statuskematian`, `nama_ayah`, `nama_ibu`) VALUES
(815, '300730010050450137', 213, 1, 'AMINAH, THERESIA', '', 'GG PACE, NO 234, MUNDU, RT 07 / RW 02', '81328230997', 'P', 'O', '1963-06-23', 'YOGYAKARTA', 3, 3, 'BACIRO', '1993-12-21', 'VIII / 203 / 606', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 5, 'SLEMAN', NULL, '1980-07-28', '-', '', 2, 66, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(816, '300730010050450138', 213, 2, 'SUGENG', '', 'GG PACE, NO 234, MUNDU, RT 07 / RW 02', '81328230997', 'L', 'B', '1962-07-07', 'BANTUL', 1, 11, 'TDK', '0000-00-00', '', '', '', '1', '', 'TDK', '0000-00-00', '', '0', '', '0000-00-00', 5, 'SLEMAN', NULL, '1980-07-28', '-', '', 2, 66, 37, 9, 99, 0, 1, 0, 0, 0, 2, 0, 99, 0, 0, 0, NULL, NULL),
(817, '300730010050450139', 213, 3, 'PIPIT KURNIYATI, ELISABET', '', 'GG PACE, NO 234, MUNDU, RT 07 / RW 02', '81328230997', 'P', 'O', '1982-05-30', 'SLEMAN', 3, 1, 'BACIRO', '1993-12-21', 'VIII / 203 / 607', '', '', '2', '', 'BACIRO', '1996-04-14', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 14, 34, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(818, '300730010050460140', 214, 1, 'JOYO SUHARTOYO, TIMOTIUS', '', 'JL KURMA, NO 128', '-', 'L', 'B', '1950-01-24', 'YOGYAKARTA', 3, 3, 'BACIRO', '1989-03-20', 'VII / 136 / 542', '', '', '2', '', 'BACIRO', '1992-10-18', '', '0', '', '0000-00-00', 2, 'BACIRO, YOGYAKARTA', NULL, '1978-02-17', 'II / 13 / 50', '', 3, 66, 52, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(819, '300730010050460141', 214, 2, 'MARIA SUPRIYANI, VERONIKA', '', 'JL KURMA, NO 128', '-', 'P', 'O', '1951-07-12', 'PATI', 3, 3, 'PURBOWARDOYAN, SOLO', '1972-03-28', 'IV / 104 / 352', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO, YOGYAKARTA', NULL, '1978-02-17', 'II / 13 / 50', '', 3, 66, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(820, '300730010050460142', 214, 3, 'BAGUS TRI HARTANTA, NIKOMEDIS', '', 'JL KURMA, NO 128', '-', 'L', 'B', '1981-09-16', 'SLEMAN', 3, 1, 'BACIRO', '1985-01-13', 'VI / - / 382', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 65, 65, 9, 100, 0, 1, 6, 0, 6, 2, 0, 4, 0, 0, 0, NULL, NULL),
(821, '300730010050470143', 215, 1, 'SUWARTINI NOTODIHARJO, MARIA ANNA', '', 'JL CEMPEDAK 1, NO 292, RT 09  / RW 03', '(0274)488944', 'P', 'O', '1936-07-05', 'SLEMAN', 3, 8, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 6, 'SDH', NULL, '0000-00-00', '-', '', 1, 66, 45, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(822, '300730010050470144', 215, 3, 'HERMINTIASIH', '', 'JL CEMPEDAK 1, NO 292, RT 09  / RW 03', '(0274)488944', 'P', 'O', '1958-03-05', 'SLEMAN', 3, 8, 'SDH', '0000-00-00', 'VII / 211 / 6407', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 0, '', NULL, '0000-00-00', '', '', 1, 66, 45, 9, 100, 0, 1, 6, 0, 1, 2, 8, 4, 0, 0, 0, NULL, NULL),
(823, '300730010050480145', 216, 1, 'TRISNAJATI GUNARSO, ALBERTUS', '', 'JL NANGKA, NO 191, MUNDU, RT 06 / RW 02', '-', 'L', 'AB', '1959-01-04', 'YOGYAKARTA', 3, 1, 'KOTABARU', '1959-01-04', 'IIOIB / XI', '', '', '2', '', 'BACIRO', '1972-07-05', '', '0', '', '0000-00-00', 2, 'BACIRO, YOGYAKARTA', NULL, '1979-08-19', 'I / 39 / 142', '', 3, 66, 37, 9, 100, 0, 1, 6, 0, 6, 2, 0, 4, 0, 0, 0, NULL, NULL),
(824, '300730010050480146', 216, 2, 'SUPRI YANINGSIH, MARIA GORETI', '', 'JL NANGKA, NO 191, MUNDU, RT 06 / RW 02', '-', 'P', 'O', '1961-02-06', 'YOGYAKARTA', 3, 1, 'BACIRO', '1968-12-11', 'I / 243 / 971', '', '', '2', '', 'BACIRO', '1978-08-09', '', '0', '', '0000-00-00', 2, 'BACIRO, YOGYAKARTA', NULL, '1979-08-19', 'I / 39 / 142', '', 3, 66, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(825, '300730010050490147', 217, 1, 'SUPRI HATIN, ELISABHET', '', 'JL PEPAYA, NO 56B, SAREN, RT 02 / RW 01', '85228877727', 'P', 'O', '1951-11-19', 'SEMARANG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 0, 'GEDANGAN', NULL, '1974-01-05', '-', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 3, 0, 4, 0, 0, 0, NULL, NULL),
(826, '300730010050490148', 217, 3, 'ARIEF FEBRIANTO, GREGORIUS', '', 'JL PEPAYA, NO 56B, SAREN, RT 02 / RW 01', '85228877727', 'L', 'A', '1989-02-18', 'KLATEN', 3, 1, 'SDH', '0000-00-00', 'VIII. - . 972', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 37, 9, 100, 0, 1, 6, 0, 1, 3, 0, 4, 0, 0, 0, NULL, NULL),
(827, '300730010050500149', 218, 1, 'POEGUH SOEDSITO, BENEDICTUS', '', 'JL NANGKA 175, MUNDU, RT 05 / RW 02', '-', 'L', 'O', '1959-03-21', 'KEDIRI', 3, 1, 'KEDIRI', '1959-07-01', 'III / 3256', '', '', '2', '', 'KEDIRI', '1967-07-29', '', '0', '', '0000-00-00', 2, 'JETIS', NULL, '1983-12-09', 'LM II / 18 / 595', '', 6, 63, 31, 9, 328, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(828, '300730010050500150', 218, 2, 'BUDI SINARYATI, RIKAHRDA MARIA', '', 'JL NANGKA 175, MUNDU, RT 05 / RW 02', '-', 'P', 'A', '1958-11-04', 'JEMBER', 3, 1, 'JEMBER', '1958-11-15', '71 / 1958', '', '', '2', '', 'JEMBER', '1958-01-29', '', '0', '', '0000-00-00', 2, 'JETIS', NULL, '1983-12-09', 'LM II / 18 / 595', '', 5, 23, 31, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(829, '300730010050500151', 218, 3, 'ARIEF PRAKOSO NIKO PUTRANTO, THOMAS AQUINO', '', 'JL NANGKA 175, MUNDU, RT 05 / RW 02', '-', 'L', 'A', '1984-03-05', 'YOGYAKARTA', 3, 1, 'KOTABARU', '1984-03-12', 'XX / 831', '', '', '2', '', 'PAKEM', '1996-06-16', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 13, 65, 9, 216, 0, 1, 6, 0, 6, 2, 0, 4, 0, 0, 0, NULL, NULL),
(830, '300730010050500152', 218, 3, 'ARUM DIAN PRAWESTI, ELIZABETH', '', 'JL NANGKA 175, MUNDU, RT 05 / RW 02', '-', 'P', 'A', '1986-11-19', 'YOGYAKARTA', 3, 1, 'KUMETIRAN', '1987-03-08', 'X / III / 302', '', '', '2', '', 'BACIRO', '2000-09-29', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 15, 65, 9, 100, 0, 1, 6, 0, 5, 2, 0, 4, 0, 0, 0, NULL, NULL),
(831, '300730010050510153', 219, 1, 'SIANA SETIAWATY, MARIA FLORENTINA', '', 'JL PERUMNAS, NO 234A', '(0274)7194422', 'P', 'B', '1961-01-28', 'YOGYAKARTA', 3, 2, 'MARIA TAK BERCELA', '1976-06-28', 'VIII / 597', '', '', '2', '', 'MARIA TAK BERCELA', '1976-06-28', '', '0', '', '0000-00-00', 8, 'JANDA', NULL, '0000-00-00', '-', '', 3, 66, 88, 9, 100, 0, 1, 6, 0, 6, 1, 0, 4, 0, 0, 0, NULL, NULL),
(832, '300730010050510154', 219, 8, 'CLARA INBEMARIAN NUGROHO, MARIA', '', 'JL PERUMNAS, NO 234A', '(0274)7194422', 'P', 'B', '1951-04-22', 'YOGYAKARTA', 3, 6, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 8, '', NULL, '0000-00-00', '', '', 2, 66, 34, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(833, '300730010050510155', 219, 3, 'TEDDY GUNAWAN, BENEDICTUS', '', 'JL PERUMNAS, NO 234A', '(0274)7194422', 'L', 'B', '1989-04-24', 'SURABAYA', 3, 2, 'KUMETIRAN', '2004-04-04', 'XIX / 1868', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 3, 88, 9, 100, 0, 1, 6, 0, 4, 1, 0, 4, 0, 0, 0, NULL, NULL),
(834, '300730010050510156', 219, 8, 'PRIMA YUNIAR RISANTY, ODILIA', '', 'JL PERUMNAS, NO 234A', '(0274)7194422', 'P', 'bt', '1989-06-12', 'YOGYAKARTA', 3, 2, 'KUMETIRAN', '2003-04-13', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 1, 66, 88, 9, 100, 0, 1, 6, 0, 7, 1, 16, 4, 0, 0, 0, NULL, NULL),
(835, '300730010050520157', 220, 1, 'GALIH AMAS PUTRANTO, IGNATIUS', '', 'KLEDOKAN, BABARSARI', '-', 'L', 'A', '1994-08-25', 'KULONPROGO', 2, 1, 'GRJ-KRISTEN', '0000-00-00', '-', '', '', '1', '', 'TDK', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 13, 66, 64, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(836, '300730010050530158', 221, 1, 'IRMA GONSA, MARIA', '', 'KLEDOKAN, BABARSARI', '-', 'P', 'A', '1988-05-19', 'MAHES', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 66, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(837, '300730010050530159', 221, 10, 'YURNI, SKOLASTIKA', '', 'KLEDOKAN, BABARSARI', '-', 'P', 'bt', '1991-07-11', 'REDO', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(838, '300730010050530160', 221, 10, 'HERLINA WUNU LERA, MARIA', '', 'KLEDOKAN, BABARSARI', '-', 'P', 'O', '1989-04-20', 'ENDE', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(839, '300730010050530161', 221, 10, 'SAINGO, MARIA MAGDALENA', '', 'KLEDOKAN, BABARSARI', '-', 'P', 'O', '1989-03-17', 'WAIKABUBAK', 3, 1, 'WAIKABUBAK', '1989-03-25', 'SDH', '', '', '2', '', 'WAIKABUBAK', '2004-10-01', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(840, '300730010050530162', 221, 10, 'RISNA MALO, MARIANA', '', 'KLEDOKAN, BABARSARI', '-', 'P', 'O', '1989-10-23', 'GALUBAKUL', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(841, '300730010050540163', 222, 1, 'VINSENSIUS BOLU, YOSEP', '', 'JL SAWO, NO 286, RT 08 / RW 03, TEMPEL', '-', 'L', 'O', '1991-03-19', 'SUMBA BARAT', 3, 1, 'WAIKABUBAK', '1992-08-16', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 66, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(842, '300730010050550164', 223, 1, 'MARIO F L JAWA, FRANSISCUC XAVERIUS', '', 'JL SAWO, NO 336, TEMPEL', '-', 'L', 'B', '1991-10-09', 'WAIKABUBAK', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 66, 65, 14, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(843, '300730010050550165', 223, 10, 'APRIYANTO SEDU, KRENSENSIUS', '', 'JL SAWO, NO 336, TEMPEL', '-', 'L', 'O', '1993-04-06', 'WAINGAPU', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 14, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(844, '300730010050560166', 224, 1, 'BILI YULIANUS, FRANSISKUS', '', 'JL APEL, NO 253, MUNDU', '-', 'L', 'O', '1989-07-14', 'SUMBAWA BESAR', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(845, '300730010050560167', 224, 10, 'UMBU DIALA, GREGORIUS', '', 'JL APEL, NO 253, MUNDU', '-', 'L', 'A', '1990-01-21', 'WAIKABUBAK', 3, 1, 'POGO BINA', '1992-10-11', '10 / 712', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(846, '300730010050560168', 224, 10, 'BILI LALO, MARSELINUS', '', 'JL APEL, NO 253, MUNDU', '-', 'L', 'O', '1992-03-27', 'WAIKABUBAK', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 3, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(847, '300730010050570169', 225, 1, 'EMA WALENG, FRANSISKA', '', 'JL DURIAN, NO 53, SAREN', '-', 'P', 'A', '1991-06-25', 'LEMBATA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 34, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(848, '300730010050580170', 226, 1, 'SIMAMORA M, YOHANES ALEX PILIPUS', '', 'JL APEL, NO 226 A, MUNDU', '8192469486', 'L', 'O', '1988-02-24', 'PALEMBANG', 3, 1, 'FRANSISKUS DARI SALE', '1989-12-17', 'II / 52 / 210', '', '', '2', '', 'FRANSISKUS DARI SALE', '2002-12-17', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 15, 3, 65, 3, 400, 0, 1, 6, 0, 5, 2, 0, 4, 0, 0, 0, NULL, NULL),
(849, '300730010050590171', 227, 1, 'MEO NAE, KONSTANTINA', '', 'JL MANGGIS, NO 157, MUNDU', '-', 'P', 'A', '1991-03-06', 'MANGULEWA', 3, 1, 'MANGULEWA', '1991-08-07', 'SDH', '', '', '2', '', 'MANGULEWA', '2001-07-24', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 30, 65, 7, 400, 0, 1, 6, 0, 0, 2, 0, 4, 0, 0, 0, NULL, NULL),
(850, '300730010050590172', 227, 10, 'INNO LENSIA PADJA, NOVITA', '', 'JL MANGGIS, NO 157, MUNDU', '-', 'P', 'A', '1985-11-16', 'KUPANG', 3, 1, 'ST YOHANES, KUPANG', '1985-12-10', 'SDH', '', '', '2', '', 'FRANSISKUS XAVERIUS,', '1995-09-19', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 30, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(851, '300730010050590173', 227, 10, 'HELMINCE OFONG, MARIA', '', 'JL MANGGIS, NO 157, MUNDU', '-', 'P', 'B', '1990-06-23', 'SUAI', 3, 1, 'SUAI', '1991-12-04', 'SDH', '', '', '2', '', 'MARIA IMMACULATA, AT', '2004-11-09', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 30, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(852, '300730010050590174', 227, 10, 'EROSVITA TURE, MARIA', '', 'JL MANGGIS, NO 157, MUNDU', '-', 'P', 'O', '1991-04-07', 'ENDE', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 30, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(853, '300730010050600175', 228, 1, 'JUNG NAITA SUN, IGNATIA', '', 'JL SAWO, GANG CEMPEDAK 2, NO 292, TEMPEL', '-', 'P', 'A', '1992-01-19', 'KUPANG', 3, 1, 'ASSUMPTA, KUPANG', '1992-12-06', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(854, '300730010050600176', 228, 10, 'NOVILANTI, KRISMIANA', '', 'JL SAWO, GANG CEMPEDAK 2, NO 292, TEMPEL', '-', 'P', 'O', '1992-07-12', 'WATUBALA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(855, '300730010050600177', 228, 10, 'BARBARA JOANA SARMENTO, BEATRIS', '', 'JL SAWO, GANG CEMPEDAK 2, NO 292, TEMPEL', '-', 'P', 'A', '1989-07-01', 'DILI', 3, 1, 'MOTAEL', '1990-05-10', 'SDH', '', '', '2', '', 'ATAMBUA', '2003-10-20', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(856, '300730010050600178', 228, 10, 'HERLYNA MORUK, MARIA', '', 'JL SAWO, GANG CEMPEDAK 2, NO 292, TEMPEL', '-', 'P', 'O', '1991-09-19', 'MAUBARA', 3, 1, 'SEON', '1993-07-26', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(857, '300730010050610179', 229, 1, 'HARIANTO, HERKULANOUS', '', 'JL KURMA, NO 215, RT 06 / RW 02, MUNDU', '-', 'L', 'O', '1990-07-05', 'BERINANG', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 70, 65, 6, 400, 0, 1, 4, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(858, '300730010050620180', 230, 1, 'HARIS EDELIRUDIS, NATALIA', '', 'JL SAWO, NO 292, TEMPEL', '-', 'P', 'A', '1989-06-23', 'WAIKABUBAK', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(859, '300730010050620181', 230, 10, 'HOAR YULINDA, KRISTINA', '', 'JL SAWO, NO 292, TEMPEL', '-', 'P', 'B', '1989-07-24', 'WEDE', 3, 2, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(860, '300730010050630182', 231, 1, 'MARIA DENSIANA PALI, KRISTINA', '', 'JL CEMPEDAK, KOS MUTIA', '-', 'P', 'O', '1989-12-14', 'MAUMERE', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 21, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(861, '300730010050630183', 231, 10, 'ADELINA SOARES, MONIKA', '', 'JL CEMPEDAK, KOS MUTIA', '-', 'P', 'bt', '1990-09-09', 'DILI', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(862, '300730010050630184', 231, 10, 'LUSIA MACHADO, EMILIANA', '', 'JL CEMPEDAK, KOS MUTIA', '-', 'P', 'bt', '1990-06-05', 'DILI', 3, 2, 'TIMOR LESTE', '1998-06-18', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 52, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(863, '300730010050640185', 232, 1, 'LOUK NYONGKIBERTUS, FREDERIK', '', 'JL SAWO, NO 293, TEMPEL', '-', 'L', 'A', '1987-11-20', 'WEKPAN', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(864, '300730010050650186', 233, 1, 'RENNO DJABUMIR', '', 'JL PEPAYA, MUND', '85228685677', 'L', 'bt', '1981-10-20', 'MARLASI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 15, 23, 2, 1, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(865, '300730010050660187', 234, 1, 'YASINTA DHUGE, MARIA', '', 'JL KURMA, NO 188, MUNDU, RT 06 / RW 03', '-', 'P', 'O', '1989-06-04', 'KEJA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(866, '300730010050670188', 235, 1, 'EKAPUTRA KOAN KOTELUY, CORNELIUS', '', 'JL MANGGIS, NO 180, RT 05 / RW 02, MUNDU', '-', 'L', 'bt', '1991-03-08', 'WEEPANARI', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 21, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(867, '300730010050670189', 235, 10, 'TAEK LEBO, STEFANUS', '', 'JL MANGGIS, NO 180, RT 05 / RW 02, MUNDU', '-', 'L', 'O', '1990-03-08', 'ATAMBUA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(868, '300730010050670190', 235, 10, 'FRENGKY JELALUT, MAXIMUS', '', 'JL MANGGIS, NO 180, RT 05 / RW 02, MUNDU', '-', 'L', 'O', '1992-06-08', 'KUPANG', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(869, '300730010050670191', 235, 10, 'EDDYSON HALE, JOHANES', '', 'JL MANGGIS, NO 180, RT 05 / RW 02, MUNDU', '-', 'L', 'O', '1991-06-27', 'BELU', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(870, '300730010050670192', 235, 10, 'KURNIANDI TAKU, DAMIAN', '', 'JL MANGGIS, NO 180, RT 05 / RW 02, MUNDU', '-', 'L', 'AB', '1991-04-15', 'RUTENG', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(871, '300730010050670193', 235, 10, 'TITO DAPAWIWULA, AGUSTINUS', '', 'JL MANGGIS, NO 180, RT 05 / RW 02, MUNDU', '-', 'L', 'O', '1991-12-06', 'WAIKABUBAK', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(872, '300730010050670194', 235, 10, 'ARDIANUS JELALUT, MANSENIUS', '', 'JL MANGGIS, NO 180, RT 05 / RW 02, MUNDU', '-', 'L', 'O', '1990-02-19', 'KUPANG', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(873, '300730010050670195', 235, 10, 'AMA MONE, YOSEF', '', 'JL MANGGIS, NO 180, RT 05 / RW 02, MUNDU', '-', 'L', 'A', '1992-10-12', 'WEETABULA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(874, '300730010050680196', 236, 1, 'YULIANA B MAKING, MARIA', '', 'JL ERUMNAS, NO 162, MUNDU, SAREN', '85328633855', 'P', 'A', '1987-07-05', 'LEMBATA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 5, 34, 65, 7, 400, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(875, '300730010050680197', 236, 10, 'IRMA GONSA, MARIA', '', 'JL ERUMNAS, NO 162, MUNDU, SAREN', '85328633855', 'P', 'A', '1988-05-19', 'MANGES', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(876, '300730010050680198', 236, 10, 'RISIYA MACO, MARIANA', '', 'JL ERUMNAS, NO 162, MUNDU, SAREN', '85328633855', 'P', 'O', '1989-10-23', 'GALUBAKUL', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(877, '300730010050680199', 236, 10, 'SAINGO, MARIA MAGDALENA', '', 'JL ERUMNAS, NO 162, MUNDU, SAREN', '85328633855', 'P', 'O', '1989-03-17', 'WAIKABUBAK', 3, 1, 'WAIKABUBAK', '1989-03-25', 'SDH', '', '', '2', '', 'WAIKABUBAK', '2004-10-01', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(878, '300730010050680200', 236, 10, 'HERLINA WUNU LERA, MARIA', '', 'JL ERUMNAS, NO 162, MUNDU, SAREN', '85328633855', 'P', 'O', '1989-04-20', 'ENDE', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(879, '300730010050680201', 236, 10, 'YURNI, SKOLASTIKA', '', 'JL ERUMNAS, NO 162, MUNDU, SAREN', '85328633855', 'P', 'bt', '1991-07-11', 'REDO', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 30, 65, 7, 400, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(880, '300730010050690202', 237, 1, 'KOANJANAN, DIANA', '', 'TEMPEL', '-', 'P', 'O', '1991-08-03', 'TUAL', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 24, 30, 65, 20, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(881, '300730010050700203', 238, 1, 'EDWARD JACKSON, FRANSISKUS', '', 'JL NANGKA, NO 88A, SAREN', '8783991992', 'L', 'O', '1987-04-15', 'METRO', 3, 2, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 15, 3, 65, 9, 400, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(882, '300730010050700204', 238, 10, 'AGUNG NUGRAHA, YOHANES', '', 'JL NANGKA, NO 88A, SAREN', '8783991992', 'P', 'O', '1988-10-16', 'BANDUNG', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 3, 65, 17, 400, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(883, '300730010050710205', 239, 1, 'P R REBELOSOARES, SILVINO', '', 'JL PAKEL, NO 337', '85725799781', 'L', 'O', '1981-03-08', 'BELORA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 15, 70, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(884, '300730010050710206', 239, 4, 'A F R SOARES, AGUSTINO', '', 'JL PAKEL, NO 337', '85725799781', 'L', 'bt', '1983-02-02', 'BELORA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 70, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(885, '300730010050720207', 240, 1, 'KARUNIA ILYA, LEONARDA', '', 'KLEDOKAN JL MANGGA, NO 20', '-', 'P', 'O', '1990-01-19', 'FLORES', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 34, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(886, '300730010050730208', 241, 1, 'DELFINA MARIA, SILVA', '', 'JL BLIMBING WULUH, NO 285, NOLOGATEN', '-', 'P', 'B', '1990-05-01', 'DILI', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 52, 65, 15, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(887, '300730010050730209', 241, 10, 'HENNY WULANSARI, AGUSTINA', '', 'JL BLIMBING WULUH, NO 285, NOLOGATEN', '-', 'P', 'B', '1990-08-31', 'NGAWI', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 52, 65, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(888, '300730010060010001', 242, 1, 'AGUS SUGIHARTO, PAULUS', '', 'PERUM MUTIARA A 10, SLEMAN', '(0274)6574049', 'L', 'B', '1971-08-04', 'CURAHJATI, BANYUWANGI', 3, 1, 'CURAHJATI, BANYUWANG', '1971-08-23', 'BUKU II NO. 1912', '', '', '2', '', 'CURAHJATI, BANYUWANG', '1982-05-30', '', '0', '', '0000-00-00', 2, 'GOMBONG', NULL, '2001-06-24', 'NO. 371 ANNO 2001/ VEL LM II', '', 3, 66, 57, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(889, '300730010060010002', 242, 2, 'ENDANG PERTIWI, VINCENTIA', '', 'PERUM MUTIARA A 10, SLEMAN', '(0274)6574049', 'P', 'O', '1968-05-28', 'GOMBONG', 3, 2, 'GOMBONG', '1986-12-23', 'BUKU V NO. 1490', '', '', '2', '', 'GOMBONG', '1987-06-07', '', '0', '', '0000-00-00', 2, 'GOMBONG', NULL, '2001-06-24', 'NO. 371 ANNO 2001/ VEL LM II', '', 3, 66, 37, 17, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(890, '300730010060010003', 242, 3, 'SROCK REXY ANUGRAH PERDAN, SIMON', '', 'PERUM MUTIARA A 10, SLEMAN', '(0274)6574049', 'L', 'bt', '2002-04-13', 'YOGYAKARTA', 3, 9, 'BLM', '0000-00-00', 'BLM', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(891, '300730010060010004', 242, 3, 'SHERINA PUTRI, VALENTINA', '', 'PERUM MUTIARA A 10, SLEMAN', '(0274)6574049', 'P', 'bt', '2005-06-21', 'YOGYAKARTA', 3, 9, 'BLM', '0000-00-00', '', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(892, '300730010060020005', 243, 1, 'ARDHITA RIHADINIE, FRANSISCA', '', 'JL. BABARSARI, DIRGANTARA IV/ 5', '(0274)489093', 'P', 'O', '1977-09-02', 'YOGYAKARTA', 3, 1, 'ST. ANTONIUS', '1977-12-27', 'BUKU XVII HAL. 133 NO. 516', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '2006-06-03', 'BUKU IV, HAL. 98, NO. 33', '', 5, 67, 62, 9, 100, 0, 1, 6, 0, 0, 2, 0, 4, 0, 0, 0, NULL, NULL),
(893, '300730010060030006', 244, 1, 'MAHOLETY, MARILE', '', 'JL. BABARSARI NO. 1', '85226600842', 'L', 'O', '1934-03-02', 'YOGYAKARTA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'ST. ANTONIUS, KOTABARU', NULL, '1951-12-31', '-', '', 2, 66, 34, 1, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(894, '300730010060030007', 244, 2, 'MAHOLETY, LUSIANA', '', 'JL. BABARSARI NO. 1', '85226600842', 'P', 'O', '1984-03-12', 'YOGYAKARTA', 3, 1, 'ST. ANTONIUS, KOTABA', '2005-05-11', 'BUKU XII, NO. 298', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'ST. ANTONIUS, KOTABARU', NULL, '1951-12-31', '-', '', 3, 66, 56, 1, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(895, '300730010060030008', 244, 3, 'WILLY MAHOLETY, LAURENTIUS', '', 'JL. BABARSARI NO. 1', '85226600842', 'L', 'O', '1984-03-12', 'YOGYAKARTA', 3, 2, 'ST. ANTONIUS, KOTABA', '1997-11-22', 'BUKU XXV, NO. 996', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 4, 51, 56, 1, 100, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(896, '300730010060040009', 245, 1, 'MURYANTO, YOHANES', '', 'JL. SOLO KM 6.7 NO. 87, JANTI, YOGYAKARTA', '(0274)485484', 'L', 'O', '1965-04-17', 'SLEMAN', 3, 3, 'YOGYAKARTA', '1990-12-31', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'YOGYAKARTA', NULL, '1991-06-10', '-', '', 3, 66, 56, 9, 100, 0, 1, 3, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(897, '300730010060040010', 245, 2, 'SRI MULYANI, VERONICA', '', 'JL. SOLO KM 6.7 NO. 87, JANTI, YOGYAKARTA', '(0274)485484', 'P', 'B', '1965-09-15', 'KLATEN', 3, 1, 'YOGYAKARTA', '1975-12-31', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'YOGYAKARTA', NULL, '1991-06-10', '-', '', 5, 58, 56, 9, 100, 0, 1, 3, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(898, '300730010060040011', 245, 3, 'FEBRISTA, CLARA', '', 'JL. SOLO KM 6.7 NO. 87, JANTI, YOGYAKARTA', '(0274)485484', 'P', 'O', '1992-02-18', 'SLEMAN', 3, 2, 'YOGYAKARTA', '2004-12-24', 'BUKU I, HAL. -, NO. 113', '', '', '2', '', 'BABARSARI', '2010-08-15', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 3, 65, 9, 100, 0, 1, 5, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(899, '300730010060040012', 245, 3, 'ADVENDO, LUKAS', '', 'JL. SOLO KM 6.7 NO. 87, JANTI, YOGYAKARTA', '(0274)485484', 'L', 'B', '1994-12-23', 'SLEMAN', 3, 1, 'YOGYAKARTA', '1995-02-12', 'BUKU VIII, HAL. -, NO. 887', '', '', '2', '', 'BABARSARI', '2010-08-15', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 12, 66, 64, 9, 100, 0, 1, 5, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(900, '300730010060050013', 246, 1, 'ABDULLAH CHAIDIR, MATEUS', '', 'Gg. DAMAR NO. 22, JANTI, YOGYAKARTA', '(0274)7844447', 'L', 'O', '1963-04-09', 'GUNUNGKIDUL', 3, 3, 'BACIRO', '1988-06-11', 'BUKU VI, HAL. 278, NO. 1109', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1988-05-24', 'BUKU II, TH. 1988, VOL. 185, NO. 740', '', 3, 66, 56, 9, 100, 0, 1, 1, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(901, '300730010060050014', 246, 2, 'TRI TEGUH RAHAYU GETRUDA', '', 'Gg. DAMAR NO. 22, JANTI, YOGYAKARTA', '(0274)7844447', 'P', 'A', '1964-12-01', 'SLEMAN', 3, 3, 'AURI', '1979-10-26', '-', '', '', '2', '', 'BACIRO', '1980-07-17', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1988-05-24', 'BUKU II, TH. 1988, VOL. 185, NO. 740', '', 5, 44, 27, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(902, '300730010060050015', 246, 3, 'WISNU PUTRA JATI, BENEDICTUS', '', 'Gg. DAMAR NO. 22, JANTI, YOGYAKARTA', '(0274)7844447', 'L', 'O', '1996-11-13', 'SLEMAN', 3, 1, 'BABARSARI', '1997-03-31', '-', '', '', '2', '', 'BABARSARI', '2010-08-15', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 12, 66, 64, 9, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(903, '300730010060060016', 247, 1, 'HARDO KRISTANTO, VERERIUS', '', 'Gg. FLAMBOYAN NO. 7, JANTI, YOGYAKARTA', '(0274)488320', 'L', 'O', '1974-04-06', 'YOGYAKARTA', 3, 1, 'MARGANINGSIH', '1974-06-13', 'BUKU VIII, NO. 7181', '', '', '2', '', 'WEDI', '1988-05-20', '', '0', '', '0000-00-00', 2, 'BABARSARI', NULL, '2009-11-22', 'NO. 36 LM I', '', 5, 13, 56, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(904, '300730010060060017', 247, 2, 'ENI N. ROMANA, FRANSISKA', '', 'Gg. FLAMBOYAN NO. 7, JANTI, YOGYAKARTA', '(0274)488320', 'P', 'A', '1964-11-26', 'YOGYAKARTA', 3, 2, 'BACIRO', '1977-12-15', 'BUKU IV, NO. 572', '', '', '2', '', 'BACIRO', '1978-08-09', '', '0', '', '0000-00-00', 2, 'BABARSARI', NULL, '2009-11-22', 'NO. 36 LM I', '', 5, 55, 56, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(905, '300730010060070018', 248, 1, 'WINDARSONO NUGROHO, ALEXIUS', '', 'KRUWING BARU NO. 24', '81328397736', 'L', 'B', '1974-04-05', 'YOGYAKARTA', 3, 1, 'BANTENG', '1974-04-19', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'ST. MARIA ASSUMPTA KLATEN', NULL, '2005-07-03', 'BUKU IX, HAL. 176, NO. 526', '', 3, 66, 37, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(906, '300730010060070019', 248, 2, 'DIAN RISTIATI, ANASTASIA', '', 'KRUWING BARU NO. 24', '81328397736', 'P', 'B', '1982-08-12', 'KALTEN', 3, 2, 'SDH', '0000-00-00', 'BUKU IV, NO. 3547', '', '', '2', '', 'JOMBOR', '1991-03-26', '', '0', '', '0000-00-00', 2, 'ST. MARIA ASSUMPTA KLATEN', NULL, '2005-07-03', 'BUKU IX, HAL. 176, NO. 526', '', 4, 51, 62, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(907, '300730010060070020', 248, 3, 'SABASTIAN DIAN N., VINCENSIUS', '', 'KRUWING BARU NO. 24', '81328397736', 'L', 'B', '2007-03-08', 'SLEMAN', 3, 1, 'NANDAN', '2007-05-27', 'BUKU II, NO. 2281', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(908, '300730010060070021', 248, 3, 'AFRIANTI DIAN N., THERESIA', '', 'KRUWING BARU NO. 24', '81328397736', 'L', 'B', '2009-02-26', 'YOGYAKARTA', 3, 1, 'BABARSARI', '2009-09-11', 'BUKU I, NO.240', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(909, '300730010060080022', 249, 1, 'SRI WIYATI, THERESIA', '', 'Gg. FLAMBOYAN NO. 7, JANTI, YOGYAKARTA', '(0274)488320', 'P', 'O', '1939-12-11', 'PONGOK', 3, 3, 'BACIRO', '1977-12-15', 'BUKU IV, NO. 570', '', '', '2', '', 'BACIRO', '1978-08-09', '', '0', '', '0000-00-00', 2, 'SDH', NULL, '0000-00-00', '-', '', 2, 66, 62, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(910, '300730010060080023', 249, 3, 'NUNIK WIDYASTUTI, BERNADETA', '', 'Gg. FLAMBOYAN NO. 7, JANTI, YOGYAKARTA', '(0274)488320', 'P', 'A', '1962-11-27', 'TEGAL YOSO', 3, 3, 'BACIRO', '1977-12-15', 'BUKU IV, NO. 565', '', '', '2', '', 'BACIRO', '1978-08-09', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 56, 37, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(911, '300730010060080024', 249, 3, 'AGUS HARTONO, ANDREAS', '', 'Gg. FLAMBOYAN NO. 7, JANTI, YOGYAKARTA', '(0274)488320', 'L', 'B', '1978-05-11', 'YOGYAKARTA', 3, 1, 'BACIRO', '1978-05-11', 'BUKU IV, NO. 682', '', '', '2', '', 'BACIRO', '1982-06-18', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 35, 56, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(912, '300730010060080025', 249, 3, 'EDI PURWANTO, YOHANES', '', 'Gg. FLAMBOYAN NO. 7, JANTI, YOGYAKARTA', '(0274)488320', 'L', 'bt', '1970-01-09', 'YOGYAKARTA', 3, 2, 'BACIRO', '1978-05-11', 'BUKU IV, NO. 681', '', '', '2', '', 'BACIRO', '1982-06-18', '', '0', '', '0000-00-00', 5, '', NULL, '0000-00-00', '', '', 3, 66, 56, 9, 100, 0, 1, 6, 0, 6, 1, 0, 4, 0, 0, 0, NULL, NULL),
(913, '300730010060080026', 249, 6, 'ARDI MARWANTO, ANDREAS', '', 'Gg. FLAMBOYAN NO. 7, JANTI, YOGYAKARTA', '(0274)488320', 'L', 'bt', '1998-03-15', 'SLEMAN', 3, 2, 'BABARSARI', '2010-04-03', 'BUKU I, NO. 251', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 12, 66, 99, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(914, '300730010060080027', 249, 6, 'RISKA GIARNISARI GIACINTA, MARESCOTTI', '', 'Gg. FLAMBOYAN NO. 7, JANTI, YOGYAKARTA', '(0274)488320', 'P', 'bt', '2000-06-30', 'SLEMAN', 3, 1, 'BABARSARI', '2010-04-03', 'BUKU I, NO. 252', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 21, 66, 99, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(915, '300730010060090028', 250, 1, 'SUWANDI, IGNATIUS', '', 'Gg. SENGON NO. 1, JANTI, YOGYAKARTA', '(0274)9355999', 'L', 'O', '1937-08-12', 'YOGYAKARTA', 3, 3, 'BACIRO', '1974-12-24', 'BUKU III, NO. 739', '', '', '2', '', 'BACIRO', '1978-08-09', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1974-12-24', '-', '', 3, 66, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(916, '300730010060090029', 250, 2, 'SURATMI KADARINI, LAURENTIA', '', 'Gg. SENGON NO. 1, JANTI, YOGYAKARTA', '(0274)9355999', 'P', 'A', '1941-08-22', 'KLATEN', 3, 3, 'BACIRO', '1974-12-24', 'BUKU III, NO. 738', '', '', '2', '', 'BACIRO', '1976-07-09', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1974-12-24', '-', '', 4, 44, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(917, '300730010060090030', 250, 6, 'LAWANDA DA COSTA, YOHANNA', '', 'Gg. SENGON NO. 1, JANTI, YOGYAKARTA', '(0274)9355999', 'P', 'O', '1998-02-07', 'BEKASI', 3, 1, 'BABARSARI', '1998-08-09', 'BUKU IX, HAL. 188, NO. 563', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 12, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(918, '300730010060090031', 250, 6, 'LA VIOLA DA COSTA, BERNADETTA', '', 'Gg. SENGON NO. 1, JANTI, YOGYAKARTA', '(0274)9355999', 'P', 'O', '2000-03-21', 'BEKASI', 3, 1, 'JAKARTA', '2000-08-06', 'BUKU III, HAL. 038, NO. 149', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 21, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(919, '300730010060100032', 251, 1, 'DANANG SUBUR KUNCORO, JOSEPH', '', 'JL. JANTI, Gg. SENGON NO. 1', '81578120915', 'L', 'O', '1959-05-16', 'BUKITTINGGI', 3, 1, 'BUKITTINGGI', '1959-05-20', 'BUKU III, NO. 741', '', '', '2', '', 'PEKANBARU', '1975-10-26', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1989-11-03', 'TH. 1989 BUKU II, HAL. -, NO. 858', '', 5, 13, 56, 9, 306, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(920, '300730010060100033', 251, 2, 'ERNANY SUSI PRIHATMI, CAECILIA', '', 'JL. JANTI, Gg. SENGON NO. 1', '81578120915', 'P', 'O', '1964-01-21', 'YOGYAKARTA', 3, 2, 'BACIRO', '1974-12-24', 'BUKU -, NO. 189/ 753', '', '', '2', '', 'GEREJA ST. YUSUF', '1976-06-29', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1989-11-03', 'TH. 1989 BUKU II, HAL. -, NO. 858', '', 5, 55, 62, 9, 100, 0, 1, 6, 0, 1, 1, 0, 1, 0, 0, 0, NULL, NULL),
(921, '300730010060100034', 251, 3, 'DANDY CAHYO WICAKSONO, YOHANES', '', 'JL. JANTI, Gg. SENGON NO. 1', '81578120915', 'L', 'O', '1990-12-27', 'PEKANBARU', 3, 1, 'SDH', '0000-00-00', 'BUKU IV, HAL. -, NO. 2361', '', '', '2', '', 'GEREJA ST. PAULUS LA', '2005-04-24', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 70, 65, 9, 100, 0, 1, 6, 0, 5, 1, 0, 4, 0, 0, 0, NULL, NULL),
(922, '300730010060100035', 251, 3, 'AIRLANGGA SURYO WICAKSONO, AURELIUS', '', 'JL. JANTI, Gg. SENGON NO. 1', '81578120915', 'L', 'O', '1998-07-27', 'PEKANBARU', 3, 1, 'SDH', '0000-00-00', 'BUKU X, NO. 7299', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 12, 66, 99, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(923, '300730010060110036', 252, 1, 'SUBARDI, STEFANUS', '', 'Gg. FLAMBOYAN NO. 20 RT/RW 08/04, JANTI, YOGYAKARTA', '(0274)485333', 'L', 'O', '1939-12-09', 'YOGYAKARTA', 3, 3, 'PUGERAN', '1962-09-01', 'BUKU V, NO. 3768', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'KLATEN', NULL, '1963-05-19', 'BUKU WD I NO. 308', '', 3, 66, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(924, '300730010060110037', 252, 2, 'KASNI, MARGARETA MARIA', '', 'Gg. FLAMBOYAN NO. 20 RT/RW 08/04, JANTI, YOGYAKARTA', '(0274)485333', 'P', 'O', '1939-06-28', 'KLATEN', 3, 3, 'KLATEN', '1958-04-06', 'BUKU WD IV, NO. 1581', '', '', '2', '', 'KOTABARU', '1958-05-28', '', '0', '', '0000-00-00', 2, 'KLATEN', NULL, '1963-05-19', 'BUKU WD I NO. 308', '', 3, 66, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(925, '300730010060110038', 252, 3, 'DANAR SUGIHARTO, PAULUS', '', 'Gg. FLAMBOYAN NO. 20 RT/RW 08/04, JANTI, YOGYAKARTA', '(0274)485333', 'L', 'O', '1980-03-27', 'YOGYAKARTA', 3, 1, 'YOGYAKARTA', '1980-04-27', 'BUKU V, NO. 281', '', '', '2', '', 'BACIRO', '1992-10-18', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 67, 56, 9, 309, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(926, '300730010060120039', 253, 1, 'DODY FERY ATMOKO, BERNADUS', '', 'Gg. KRIWING NO. 19', '(0274)489011', 'L', 'AB', '1982-01-03', 'YOGYAKARTA', 3, 1, 'BABARSARI', '1983-01-09', 'BUKU V, NO. 1307', '', '', '2', '', 'BACIRO', '1998-08-16', '', '0', '', '0000-00-00', 2, 'MINOMARTANI', NULL, '2011-02-26', 'BUKU I, NO. 494', '', 5, 58, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(927, '300730010060120040', 253, 2, 'ANJAR NUR MAWARTI, VERONICA', '', 'Gg. KRIWING NO. 19', '(0274)489011', 'P', 'O', '1982-08-11', 'YOGYAKARTA', 3, 2, 'BINTARAN', '1993-04-10', 'BUKU XIX, HAL. 38, NO. 13144', '', '', '2', '', 'MINOMARTANI', '1996-07-07', '', '0', '', '0000-00-00', 2, 'MINOMARTANI', NULL, '2011-02-26', 'BUKU I, NO. 494', '', 5, 70, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(928, '300730010060130041', 254, 1, 'SUTARDI, GREGORIUS', '', 'JL. RAYA JANTI 15 A', '(0274)7187989', 'L', 'A', '1960-04-08', 'KEDIRI', 3, 7, 'BACIRO', '1997-12-23', 'BUKU IX, HAL. 151, NO. 451', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'KOTABARU', NULL, '1994-05-27', 'NO. 867, TH. 1994', '', 3, 66, 56, 9, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(929, '300730010060130042', 254, 2, 'BILIANI TANUJAYA, ELISABETH', '', 'JL. RAYA JANTI 15 A', '(0274)7187989', 'P', 'O', '1959-12-16', 'YOGYAKARTA', 3, 5, 'PRINGGOKUSUNAN', '1990-12-07', 'BUKU XIV, HAL -, NO. 624', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'KOTABARU', NULL, '1994-05-27', 'NO. 867, TH. 1994', '', 5, 7, 37, 17, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(930, '300730010060130043', 254, 3, 'YENNY SUTARDI, HELENA', '', 'JL. RAYA JANTI 15 A', '(0274)7187989', 'P', 'A', '2000-12-10', 'BANTUL', 3, 2, 'KIDULLOJI', '2011-04-23', 'BUKU XV, HAL. -, NO. 6780', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(931, '300730010060140044', 255, 1, 'HARJENAL, FLORENTINUS', '', 'JL. SOLO KM 7, Gg. FLAMBOYAN NO. 8, JANTI', '(0274)486855', 'L', 'O', '1940-10-05', 'YOGYAKARTA', 3, 3, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'KOTABARU', NULL, '1964-12-14', '-', '', 5, 23, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(932, '300730010060140045', 255, 2, 'TINAHARTI, MARIA THERESIA', '', 'JL. SOLO KM 7, Gg. FLAMBOYAN NO. 8, JANTI', '(0274)486855', 'P', 'O', '1947-07-01', 'YOGYAKARTA', 3, 3, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'KOTABARU', NULL, '1964-12-14', '-', '', 3, 66, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(933, '300730010060140046', 255, 6, 'KENANGA ANANDITA, MARSELLA', '', 'JL. SOLO KM 7, Gg. FLAMBOYAN NO. 8, JANTI', '(0274)486855', 'P', 'O', '1990-01-20', 'JAKARTA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 13, 66, 65, 9, 100, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(934, '300730010060140047', 255, 6, 'RIO ANANDITO, BENEDICTUS', '', 'JL. SOLO KM 7, Gg. FLAMBOYAN NO. 8, JANTI', '(0274)486855', 'L', 'O', '1997-02-06', 'JAKARTA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'BABARSARI', '2011-08-15', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 12, 66, 64, 9, 100, 0, 1, 4, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(935, '300730010060150048', 256, 1, 'DALIYEM J., MARIA MARGARETHA', '', 'Gg. DAMAR NO. 22, RT/ RW 09/ 04, JANTI', '(0274)488905', 'P', 'A', '1926-05-23', 'YOGYAKARTA', 3, 3, 'BACIRO', '1987-04-13', 'BUKU IV, HAL. 278, NO. 1110', '', '', '2', '', 'BACIRO', '1988-06-11', '', '0', '', '0000-00-00', 8, 'JANDA', NULL, '0000-00-00', '-', '', 77, 66, 34, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(936, '300730010060150049', 256, 3, 'SARJIYEM, MARIA MARGARETHA', '', 'Gg. DAMAR NO. 22, RT/ RW 09/ 04, JANTI', '(0274)488905', 'P', 'B', '1954-12-21', 'YOGYAKARTA', 3, 3, 'BACIRO', '1976-04-17', 'BUKU IV, HAL. 7, NO. 27', '', '', '2', '', 'BACIRO', '1976-07-19', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 44, 27, 9, 100, 0, 1, 6, 0, 4, 1, 0, 4, 0, 0, 0, NULL, NULL),
(937, '300730010060160050', 257, 1, 'CHARLES PRIMACAHYA, CAROLUS BOROMEUS', '', 'Gg. PINUS NO. 3 RT/ RW 08/ 04 JANTI', '(0274)484713', 'L', 'O', '1968-11-02', 'BANDUNG', 3, 1, 'BANDUNG', '1968-11-14', 'NO. 143', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1998-11-17', 'ANNO: 1998/ LM. III FOL. 201 NO. 601', '', 5, 39, 56, 9, 100, 0, 1, 4, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(938, '300730010060160051', 257, 2, 'INDRIYANI, AGATA', '', 'Gg. PINUS NO. 3 RT/ RW 08/ 04 JANTI', '(0274)484713', 'P', 'AB', '1971-02-24', 'BANTUL', 3, 1, 'BACIRO', '1971-03-12', 'NO. 664', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1998-11-17', 'ANNO: 1998/ LM. III FOL. 201 NO. 601', '', 4, 37, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 1, 0, 0, 0, NULL, NULL),
(939, '300730010060160052', 257, 3, 'PRIMUS YUBI LEANO, GREGORIUS', '', 'Gg. PINUS NO. 3 RT/ RW 08/ 04 JANTI', '(0274)484713', 'L', 'B', '2000-10-29', 'YOGYAKARTA', 3, 1, 'BABARSARI', '2000-12-10', 'NO. 886', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(940, '300730010060160053', 257, 3, 'CHARLITA DIVANI, ANGELINA', '', 'Gg. PINUS NO. 3 RT/ RW 08/ 04 JANTI', '(0274)484713', 'P', 'A', '2004-12-19', 'YOGYAKARTA', 3, 1, 'BABARSARI', '2005-02-20', 'NO. 116', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(941, '300730010060160054', 257, 8, 'MARDIHARTONO, ANTONIUS', '', 'Gg. PINUS NO. 3 RT/ RW 08/ 04 JANTI', '(0274)484713', 'L', 'O', '1939-10-28', 'BANTUL', 3, 2, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 1, 66, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(942, '300730010060170055', 258, 1, 'SOEKAMTO TANAUWIBOWO, THEODORUS', '', 'Gg. MASJID(MANGGA 4) NO. 26B', '(0274)485752', 'L', 'A', '1945-09-20', 'BREBES', 3, 6, 'ST. YOSEF MAJASEM', '2004-05-30', 'BUKU XI, HAL. 79, NO. 357', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'HATI KUDUS, TEGAL', NULL, '1969-03-18', '-', '', 3, 66, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(943, '300730010060170056', 258, 2, 'RIANTINI JOYCE ANNE, MARIA', '', 'Gg. MASJID(MANGGA 4) NO. 26B', '(0274)485752', 'P', 'O', '1947-05-15', 'TEGAL', 3, 2, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'HATI KUDUS, TEGAL', NULL, '1969-03-18', '-', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(944, '300730010060180057', 259, 1, 'MARYONO, ENGELBERTUS', '', 'Gg. DANAR NO. 5 RT 08/ RW 04, JANTI', '(0274)489824', 'L', 'A', '1945-11-07', 'PONOROGO', 3, 3, 'JAKARTA', '1970-08-21', 'NO. 273', '', '', '2', '', 'YOGYAKARTA', '1974-07-02', '', '0', '', '0000-00-00', 2, 'MAGELANG', NULL, '1970-02-15', 'BUKU III, HAL. 159, NO. 1955', '', 2, 66, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(945, '300730010060180058', 259, 2, 'LINGGO RATNANI, ZEVERINA', '', 'Gg. DANAR NO. 5 RT 08/ RW 04, JANTI', '(0274)489824', 'P', 'O', '1947-08-26', 'SEMARANG', 3, 1, 'AMBARAWA', '1947-09-08', 'NO. 4004', '', '', '2', '', 'AMBARAWA', '1960-11-08', '', '0', '', '0000-00-00', 2, 'MAGELANG', NULL, '1970-02-15', 'BUKU III, HAL. 159, NO. 1955', '', 4, 23, 34, 9, 100, 0, 1, 3, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(946, '300730010060190059', 260, 1, 'CHANDRA MAY DAVID TURNP, PAULUS', '', 'JL. JANTI Gg. KRUWING II NO. 2B RT 11 RW 05', '818278212', 'L', 'bt', '1978-05-30', 'MEDAN', 3, 7, 'KALASAN', '2004-08-30', 'BUKU XVII, NO. 15806', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'YOGYAKARTA', NULL, '2004-09-19', '0536/ 65/ 6/ 2004', '', 5, 13, 56, 3, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(947, '300730010060190060', 260, 2, 'RINA ANDRIANA SUSANA', '', 'JL. JANTI Gg. KRUWING II NO. 2B RT 11 RW 05', '818278212', 'P', 'O', '1981-09-19', 'KLATEN', 3, 2, 'KLATEN', '1993-04-06', 'NO. 13.527, BUKU 15806', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'YOGYAKARTA', NULL, '2004-09-19', '0536/ 65/ 6/ 2004', '', 5, 13, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL);
INSERT INTO `umats` (`id`, `kode_umat`, `id_kk`, `id_hubkk`, `nama`, `email`, `alamat`, `tlp`, `jenis_kelamin`, `goldarah`, `tgl_lahir`, `tmplahir`, `id_agama`, `id_statusbaptis`, `tmpbaptis`, `tglbaptis`, `liberbap`, `romobaptis`, `namabaptis`, `stskrisma`, `namakrisma`, `tmpkrisma`, `tglkrisma`, `romokrisma`, `stskomuni`, `tmpkomuni`, `tglkomuni`, `id_statuspernikahan`, `tempatnikah`, `kotamenikah`, `tglnikah`, `libermat`, `romopernikahan`, `id_pendidikan`, `id_bidstudi`, `id_pekerjaan`, `id_suku`, `id_tempattinggal`, `lamatinggal`, `statusTT`, `id_keaktifanparoki`, `id_keaktifangereja`, `id_statuskekatolikan`, `id_statusekonomi`, `id_statuskesehatan`, `id_statussosial`, `jeniskk`, `statuspindah`, `statuskematian`, `nama_ayah`, `nama_ibu`) VALUES
(948, '300730010060190061', 260, 3, 'STEVEN A.A. TURNIP, LAURENTIUS', '', 'JL. JANTI Gg. KRUWING II NO. 2B RT 11 RW 05', '818278212', 'L', 'O', '2007-07-02', 'YOGYAKARTA', 3, 9, 'BLM', '0000-00-00', 'SDH DI BAPTIS TAPI PROGRAM ERROR', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(949, '300730010060190062', 260, 5, 'RENDI SAPUTRA, ALESANDRO', '', 'JL. JANTI Gg. KRUWING II NO. 2B RT 11 RW 05', '818278212', 'L', 'bt', '2002-08-19', 'SLEMAN', 3, 9, 'BLM', '0000-00-00', 'BLM', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 21, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(950, '300730010060200063', 261, 1, 'ESTI PERTINA BIBLANA', '', 'Gg. SONO 3 NO. 36BB RT 9 RW 4', '-', 'P', 'A', '1940-03-14', 'YOGYAKARTA', 3, 8, 'JAKARTA', '1959-12-03', 'BUKU II, HAL. 194, NO. 772', '', '', '2', '', 'KEMETIRAN', '1959-12-03', '', '0', '', '0000-00-00', 8, 'JANDA', NULL, '0000-00-00', 'SEMARANG, NO. 382', '', 2, 66, 58, 9, 100, 0, 1, 6, 0, 1, 3, 0, 4, 0, 0, 0, NULL, NULL),
(951, '300730010060210064', 262, 1, 'TUTIK KUSTINAH', '', 'Gg. PINUS 2B, JANTI', '85727370052', 'P', 'A', '1962-11-30', 'YOGYAKARTA', 3, 2, 'BACIRO', '1975-03-29', 'BUKU III, NO. 804', '', '', '2', '', 'BACIRO', '1978-08-09', '', '0', '', '0000-00-00', 6, 'BACIRO', NULL, '1993-03-18', '-', '', 5, 44, 56, 9, 100, 0, 1, 3, 0, 1, 2, 0, 1, 0, 0, 0, NULL, NULL),
(952, '300730010060210065', 262, 3, 'HEPY NOVANTI RAY-RAY, FELECIA', '', 'Gg. PINUS 2B, JANTI', '85727370052', 'P', 'O', '1986-11-15', 'YOGYAKARTA', 3, 2, 'BACIRO', '1998-12-22', 'BUKU IX, NO. 602', '', '', '2', '', 'BACIRO', '2000-12-29', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 70, 19, 9, 100, 0, 1, 4, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(953, '300730010060210066', 262, 3, 'VANESIA NOVIANA RAY-RAY, YOHANA', '', 'Gg. PINUS 2B, JANTI', '85727370052', 'P', 'O', '1988-06-01', 'BANTUL', 3, 2, 'BACIRO', '1998-12-22', 'BUKU IX, NO. 605', '', '', '2', '', 'BACIRO', '2000-12-29', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 4, 70, 44, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(954, '300730010060220067', 263, 1, 'HARYO HABIRONO, EUSTASIUS', '', 'JL. SOLO 87A, JANTI', '85254270570', 'L', 'O', '1961-03-29', 'BATANG', 3, 1, 'PEKALONGAN', '1961-04-09', 'BUKU III, NO. 552', '', '', '2', '', 'BACIRO', '1974-07-02', '', '0', '', '0000-00-00', 2, 'WONOSARI', NULL, '1991-05-28', '-', '', 5, 22, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(955, '300730010060220068', 263, 2, 'MARDI PRA SANITA W., VERONICA', '', 'JL. SOLO 87A, JANTI', '85254270570', 'P', 'O', '1966-01-13', 'YOGYAKARTA', 3, 1, 'KOTABARU', '1966-01-16', 'BUKU XII, NO. 651', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'WONOSARI', NULL, '1991-05-28', '-', '', 5, 33, 9, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(956, '300730010060220069', 263, 3, 'DESINTA, DOROTEA', '', 'JL. SOLO 87A, JANTI', '85254270570', 'P', 'O', '1991-12-30', 'WONOSARI', 3, 1, 'WONOSARI', '1993-01-24', 'BUKU XXII, NO. 658', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 13, 66, 64, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(957, '300730010060220070', 263, 3, 'DWI DARMO PROJO, DOINISIUS', '', 'JL. SOLO 87A, JANTI', '85254270570', 'L', 'O', '2000-07-26', 'JAKARTA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 21, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(958, '300730010060220071', 263, 3, 'TEGAR PRAKOSO, DAVID', '', 'JL. SOLO 87A, JANTI', '85254270570', 'L', 'O', '2002-11-26', 'SALATIGA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 21, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(959, '300730010060230072', 264, 1, 'TUMI, THOMAS', '', 'NGENTAK CT XVII, NO. 15A, RT/ RW 03/ 01, SLEMAN', '87837091487', 'L', 'A', '1944-05-09', 'YOGYAKARTA', 3, 3, 'KRISTUS RAJA', '1983-12-21', 'BUKU V, HAL. -, NO. 1584', '', '', '2', '', 'KRISTUS RAJA', '1984-07-30', '', '0', '', '0000-00-00', 5, 'DEPOK, SLEMAN', NULL, '1971-06-19', '-', '', 2, 66, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(960, '300730010060230073', 264, 2, 'PONIYEM, MARIA GORETI', '', 'NGENTAK CT XVII, NO. 15A, RT/ RW 03/ 01, SLEMAN', '87837091487', 'P', 'A', '1951-09-22', 'YOGYAKARTA', 3, 3, 'KRISTUS RAJA', '1983-12-21', 'BUKU V, HAL. -, NO. 1583', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 5, 'DEPOK, SLEMAN', NULL, '1971-06-19', '-', '', 1, 66, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(961, '300730010060230074', 264, 3, 'PRADOTO, FRANSISKUS XAFERIUS', '', 'NGENTAK CT XVII, NO. 15A, RT/ RW 03/ 01, SLEMAN', '87837091487', 'L', 'A', '1985-10-03', 'SLEMAN', 3, 2, 'KRISTUS RAJA', '1998-12-22', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(962, '300730010060230075', 264, 3, 'SUNTEN HEPI NURINI, ELIONORA', '', 'NGENTAK CT XVII, NO. 15A, RT/ RW 03/ 01, SLEMAN', '87837091487', 'P', 'A', '1988-11-09', 'SLEMAN', 3, 2, 'KRISTUS RAJA', '1998-12-22', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(963, '300730010060230076', 264, 3, 'FAJANTO, YACOBUS', '', 'NGENTAK CT XVII, NO. 15A, RT/ RW 03/ 01, SLEMAN', '87837091487', 'L', 'A', '1977-03-22', 'YOGYAKARTA', 1, 1, 'TDK', '1983-12-21', 'BUKU V, HAL. -, NO. 1599', '', '', '1', '', 'TDK', '0000-00-00', '', '0', '', '0000-00-00', 5, '', NULL, '0000-00-00', '', '', 2, 66, 56, 9, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(964, '300730010060230077', 264, 3, 'RUMIYANTI, ELISABETH', '', 'NGENTAK CT XVII, NO. 15A, RT/ RW 03/ 01, SLEMAN', '87837091487', 'P', 'A', '1975-07-15', 'YOGYAKARTA', 2, 2, 'GRJ-KRISTEN', '1983-12-21', 'BUKU V, HAL. -, NO. 1596', '', '', '1', '', 'TDK', '1994-05-15', '', '0', '', '0000-00-00', 4, '', NULL, '0000-00-00', '', '', 4, 30, 35, 9, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(965, '300730010060240078', 265, 1, 'SUPARNO, STEFANUS', '', 'JL. LAKSDA ADISUCIPTO KM. 7, Gg. DELIMA NO. 15', '8889976664', 'L', 'B', '1946-12-26', 'MUNTILAN', 3, 2, 'ST. ANTONIUS MUNTILA', '1966-12-02', '-', '', '', '2', '', 'TEMUMPANG', '1967-04-24', '', '0', '', '0000-00-00', 2, 'ST. MARIA RATU', NULL, '1975-11-13', 'BUKU II, HAL. 17, NO. 64', '', 3, 66, 34, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(966, '300730010060240079', 265, 2, 'ESTI SUKARTI, CLARA', '', 'JL. LAKSDA ADISUCIPTO KM. 7, Gg. DELIMA NO. 15', '8889976664', 'P', 'A', '1953-08-04', 'SURABAYA', 3, 3, 'JAKARTA', '1981-12-24', '-', '', '', '2', '', 'JAKARTA', '1982-10-31', '', '0', '', '0000-00-00', 2, 'ST. MARIA RATU', NULL, '1975-11-13', 'BUKU II, HAL. 17, NO. 64', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(967, '300730010060240080', 265, 3, 'KLAUDIA KUSUMA HANDAYANI, SUSANA', '', 'JL. LAKSDA ADISUCIPTO KM. 7, Gg. DELIMA NO. 15', '8889976664', 'P', 'B', '1979-05-24', 'JAKARTA', 3, 1, 'JAKARTA', '1981-12-24', 'BUKU I, HAL. 193, NO. 772', '', '', '2', '', 'JAKARTA', '1992-02-21', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 13, 56, 9, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(968, '300730010060250081', 266, 1, 'BAYU NUGROHO, YOHANES BABTISTA', '', 'JL. LAKSDA ADISUCIPTO KM. 7, Gg. DELIMA NO. 15', '8123149645', 'L', 'AB', '1975-02-20', 'KLATEN', 3, 2, 'KLATEN', '1985-12-20', 'BUKU XXIX, NO. 579', '', '', '2', '', 'KLATEN', '1988-09-11', '', '0', '', '0000-00-00', 2, 'ST. STEFANUS CILANDAK, JAKARTA', NULL, '2005-12-31', 'BUKU II, HAL. 215, NO. 903', '', 5, 13, 56, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(969, '300730010060250082', 266, 2, 'WIWIEN KRISTIARUM, ANASTASIA', '', 'JL. LAKSDA ADISUCIPTO KM. 7, Gg. DELIMA NO. 15', '8123149645', 'P', 'B', '1977-04-14', 'JAKARTA', 3, 1, 'JAKARTA', '1981-12-24', 'BUKU I, HAL. 194, NO. 773', '', '', '2', '', 'JAKARTA', '1996-05-11', '', '0', '', '0000-00-00', 2, 'ST. STEFANUS CILANDAK, JAKARTA', NULL, '2005-12-31', 'BUKU II, HAL. 215, NO. 903', '', 5, 3, 56, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(970, '300730010060250083', 266, 3, 'MIKKO NUGROHO, RAFAE', '', 'JL. LAKSDA ADISUCIPTO KM. 7, Gg. DELIMA NO. 15', '8123149645', 'L', 'bt', '2007-11-19', 'YOGYAKARTA', 3, 1, 'KLATEN', '2008-01-04', 'BUKU XLI, NO. 273', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(971, '300730010060260084', 267, 1, 'FRANK W. DEMEY, FRANSISCUS WILHELMUS', '', 'JL. LAKSDA ADISUCIPTO KM. 7, NO. 207', '8121574713', 'L', 'A', '1957-09-19', 'KALIJATI, BANDUNG', 3, 1, 'BANDUNG', '1957-10-13', 'BUKU V, NO. 1072', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1992-05-24', 'BUKU III, HAL. 12, NO. 36', '', 4, 66, 56, 1, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(972, '300730010060260085', 267, 2, 'HART DJAH RANI, FRANSISCA', '', 'JL. LAKSDA ADISUCIPTO KM. 7, NO. 207', '8121574713', 'P', 'B', '1962-02-26', 'YOGYAKARTA', 3, 8, 'BACIRO', '1982-05-24', 'THN 1957, NO. 68', '', '', '2', '', 'BACIRO', '1982-06-18', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1992-05-24', 'BUKU III, HAL. 12, NO. 36', '', 4, 39, 56, 9, 100, 0, 1, 6, 0, 0, 2, 0, 4, 0, 0, 0, NULL, NULL),
(973, '300730010060260086', 267, 3, 'BHAGAS WARA DE MEY, STANISLAUS', '', 'JL. LAKSDA ADISUCIPTO KM. 7, NO. 207', '8121574713', 'L', 'A', '1993-04-16', 'YOGYAKARTA', 3, 1, 'BACIRO', '1993-09-12', 'BUKU VIII, HAL. 174, NO. 521', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 66, 65, 1, 100, 0, 1, 6, 0, 5, 2, 0, 4, 0, 0, 0, NULL, NULL),
(974, '300730010060270087', 268, 1, 'WIDARYANTO, CYPRIANUS', '', 'JL. BABARSARI, DIRGANTARA IV/ 5', '(0274)488093', 'L', 'O', '1946-12-30', 'YOGYAKARTA', 3, 1, 'MARGANINGSIH', '1947-09-08', 'BUKU II, HAL. -, NO. 1112', '', '', '2', '', 'MARGANINGSIH', '1956-09-15', '', '0', '', '0000-00-00', 2, 'ST. ANTONIUS', NULL, '1976-09-18', 'BUKU VIII, NO. 345', '', 5, 13, 56, 9, 100, 0, 1, 4, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(975, '300730010060270088', 268, 2, 'MARIA ANIE BUDIWATI, CAECILIA', '', 'JL. BABARSARI, DIRGANTARA IV/ 5', '(0274)488093', 'P', 'O', '1953-09-23', 'YOGYAKARTA', 3, 2, 'ST. BARBARA', '1968-07-28', 'BUKU B, NO. 193', '', '', '2', '', 'PEKANBARU', '1969-06-01', '', '0', '', '0000-00-00', 2, 'ST. ANTONIUS', NULL, '1976-09-18', 'BUKU VIII, NO. 345', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(976, '300730010060270089', 268, 3, 'DHINA CHRISTINA, MARIA', '', 'JL. BABARSARI, DIRGANTARA IV/ 5', '(0274)488093', 'P', 'O', '1981-12-14', 'BALIKPAPAN', 3, 1, 'ST. ANTONIUS', '1985-01-04', 'BUKU XXI, NO. 280', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 56, 9, 100, 0, 1, 6, 0, 0, 2, 0, 4, 0, 0, 0, NULL, NULL),
(977, '300730010060280090', 269, 1, 'MENI ESTUARI, VERONICA', '', 'NGENTAK CT XVII NO. 15A, RT/ RW 03/ 01, SLEMAN', '81328041381', 'P', 'A', '1972-01-16', 'YOGYAKARTA', 3, 2, 'BACIRO', '1983-12-21', 'BUKU V, NO. 1502', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BABARSARI', NULL, '2010-07-25', 'BUKU I, NO. 54', '', 3, 66, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(978, '300730010060280091', 269, 2, 'SONY ARMADI', '', 'NGENTAK CT XVII NO. 15A, RT/ RW 03/ 01, SLEMAN', '81328041381', 'L', 'A', '1972-05-16', 'YOGYAKARTA', 2, 11, 'GRJ-KRISTEN', '0000-00-00', '', '', '', '1', '', 'TDK', '0000-00-00', '', '0', '', '0000-00-00', 4, 'BABARSARI', NULL, '2010-07-25', 'BUKU I, NO. 54', '', 3, 66, 56, 9, 100, 0, 1, 0, 0, 0, 2, 0, 99, 0, 0, 0, NULL, NULL),
(979, '300730010060290092', 270, 1, 'ISTANTORO, KRISTIANUS', '', 'JL. SOLO KM. 7, Gg. DELIMA NO. 5', '(0274)484064', 'L', 'B', '1943-09-25', 'SLEMAN', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'MARGANINGSIH', NULL, '1973-09-22', '-', '', 3, 66, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(980, '300730010060290093', 270, 2, 'SRI SUDJIATI, ELISABET', '', 'JL. SOLO KM. 7, Gg. DELIMA NO. 5', '(0274)484064', 'P', 'O', '1953-07-04', 'BOYOLALI', 3, 3, 'MARGANINGSIH', '1984-04-18', 'BUKU XI, NO. 10548', '', '', '2', '', 'MARGANINGSIH', '1984-04-18', '', '0', '', '0000-00-00', 2, 'MARGANINGSIH', NULL, '1973-09-22', '-', '', 3, 66, 62, 9, 100, 0, 1, 3, 0, 1, 2, 0, 1, 0, 0, 0, NULL, NULL),
(981, '300730010060290094', 270, 3, 'AANG HANTORO, GREGORIUS', '', 'JL. SOLO KM. 7, Gg. DELIMA NO. 5', '(0274)484064', 'L', 'B', '1976-09-01', 'YOGYAKARTA', 3, 1, 'BACIRO', '1979-08-26', 'BUKU IV, HAL. 250, NO. 998', '', '', '2', '', 'BACIRO', '1996-04-14', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 66, 56, 9, 100, 0, 1, 3, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(982, '300730010060290095', 270, 3, 'ANY PUJIASTUTI, CHRISTINA', '', 'JL. SOLO KM. 7, Gg. DELIMA NO. 5', '(0274)484064', 'P', 'B', '1982-09-21', 'YOGYAKARTA', 3, 1, 'MARGANINGSIH', '1984-04-18', 'BUKU IX, NO. 10547', '', '', '2', '', 'BACIRO', '1996-04-14', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 39, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(983, '300730010060300096', 271, 1, 'B. A. SUTRISNO, FRANSISKUS XAVERIUS', '', 'JL. ADISUCIPTO KM. 7', '85725852115', 'L', 'O', '1971-08-16', 'YOGYAKARTA', 3, 2, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'HATI SP. MARIA TAK BERCELA', NULL, '1994-01-12', 'BUKU IV, HAL. 141, NO. 449', '', 3, 66, 56, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(984, '300730010060300097', 271, 2, 'RETNO AMBARSARI, FEBE', '', 'JL. ADISUCIPTO KM. 7', '85725852115', 'P', 'O', '1975-03-22', 'YOGYAKARTA', 3, 2, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'HATI SP. MARIA TAK BERCELA', NULL, '1994-01-12', 'BUKU IV, HAL. 141, NO. 449', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(985, '300730010060300098', 271, 3, 'ELI CHRISTIAN BUDI PUTRA, FRANSISKUS', '', 'JL. ADISUCIPTO KM. 7', '85725852115', 'L', 'O', '1994-04-02', 'WONOSARI', 3, 1, 'BACIRO', '1997-04-13', 'BUKU IX, HAL. 113, NO. 338', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 23, 66, 64, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(986, '300730010060300099', 271, 3, 'ROSA SARI PUTRI, GABRIELLA', '', 'JL. ADISUCIPTO KM. 7', '85725852115', 'P', 'O', '2000-04-04', 'WONOSARI', 3, 1, 'BACIRO', '0000-00-00', 'BUKU IX HAL. - NO. 796', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 21, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(987, '300730010060310100', 272, 1, 'SULARSO, ROBERTUS', '', 'NGENTAK Gg. MANGGA 3, NO. 15, CT, DEPOK, SLEMAN', '81578125445', 'L', 'AB', '1945-07-03', 'GUNUNG KIDUL', 3, 3, 'BINTARAN', '1972-12-17', 'BUKU XIV, HAL. 237, NO. 8338', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1967-04-03', '-', '', 3, 66, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(988, '300730010060310101', 272, 2, 'MUWARNI, MARIA', '', 'NGENTAK Gg. MANGGA 3, NO. 15, CT, DEPOK, SLEMAN', '81578125445', 'P', 'O', '1950-03-06', 'SLEMAN', 3, 3, 'BACIRO', '1978-12-21', 'BUKU V, HAL. -, NO. 1592', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1967-04-03', '-', '', 2, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(989, '300730010060320102', 273, 1, 'KASDI, YOHANES', '', 'NGENTAK Gg. MANGGA 3 NO. 15, RT/ RW, CT, DEPOK', '81227791202', 'L', 'O', '1952-04-17', 'MEDAN', 3, 3, 'BACIRO', '1970-12-22', 'BUKU II, HAL. 137, NO. 519', '', '', '2', '', 'BACIRO', '1972-07-05', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1979-05-17', 'BUKU II, HAL. 31, NO. 123', '', 2, 66, 34, 9, 100, 0, 1, 6, 0, 1, 3, 0, 4, 0, 0, 0, NULL, NULL),
(990, '300730010060320103', 273, 2, 'SURTI SUWANTI, VERONICA', '', 'NGENTAK Gg. MANGGA 3 NO. 15, RT/ RW, CT, DEPOK', '81227791202', 'P', 'bt', '1954-08-06', 'YOGYAKARTA', 3, 3, 'BACIRO', '1983-12-21', 'BUKU V, HAL. -, NO. 1585', '', '', '2', '', 'BACIRO', '1979-05-17', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1979-05-17', 'BUKU II, HAL. 31, NO. 123', '', 1, 66, 62, 9, 100, 0, 1, 6, 0, 1, 3, 0, 4, 0, 0, 0, NULL, NULL),
(991, '300730010060330104', 274, 1, 'SUGENG PRAWATA, AGUSTINUS', '', 'NGENTAK Gg. MANGGA 3 RT/ RW 04/ 01, CT, DEPOK', '81392754471', 'L', 'O', '1966-02-01', 'KULONPROGO', 3, 2, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '2000-07-07', 'BUKU III, HAL. 234, NO. 702', '', 3, 66, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(992, '300730010060330105', 274, 2, 'YUNIATI, LUCIA', '', 'NGENTAK Gg. MANGGA 3 RT/ RW 04/ 01, CT, DEPOK', '81392754471', 'P', 'bt', '1971-06-14', 'BANTUL', 3, 1, 'BACIRO', '1972-04-01', 'BUKU III, HAL. 06, NO. 23', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '2000-07-07', 'BUKU III, HAL. 234, NO. 702', '', 4, 3, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(993, '300730010060330106', 274, 3, 'TAMARINDI DWI ARTIKA, JULIA', '', 'NGENTAK Gg. MANGGA 3 RT/ RW 04/ 01, CT, DEPOK', '81392754471', 'P', 'bt', '2005-05-27', 'SLEMAN', 3, 1, 'BABARSARI', '2007-09-14', 'BUKU I HAL.- NO. 169', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(994, '300730010060330107', 274, 3, 'YUGENTYAS, ALILLEN', '', 'NGENTAK Gg. MANGGA 3 RT/ RW 04/ 01, CT, DEPOK', '81392754471', 'P', 'bt', '2002-07-31', 'SLEMAN', 3, 1, 'BABARSARI', '2007-09-14', 'BUKU I HAL. - NO. 170', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 21, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(995, '300730010060340108', 275, 1, 'OTOK TRI KUNCORO, YOHANES', '', 'NGENTAK Gg. MANGGA 3 15C, RT/ RW 03/ 01, CT, DEPOK', '85743838178', 'L', 'O', '1964-02-04', 'SLEMAN', 3, 1, 'MARGANINGSIH', '1964-02-24', '-', '', '', '2', '', 'MARGANINGSIH', '1976-08-01', '', '0', '', '0000-00-00', 2, 'MARGANINGSIH', NULL, '1987-10-28', '-', '', 2, 66, 40, 9, 100, 0, 1, 6, 0, 6, 2, 0, 4, 0, 0, 0, NULL, NULL),
(996, '300730010060340109', 275, 2, 'MURGIYANTI, LIDYA', '', 'NGENTAK Gg. MANGGA 3 15C, RT/ RW 03/ 01, CT, DEPOK', '85743838178', 'P', 'bt', '1962-10-28', 'SLEMAN', 3, 7, 'MARGANINGSIH', '1983-11-27', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'MARGANINGSIH', NULL, '1987-10-28', '-', '', 1, 66, 48, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(997, '300730010060340110', 275, 3, 'ARIEF WIDYA KUNCORO, URILUS', '', 'NGENTAK Gg. MANGGA 3 15C, RT/ RW 03/ 01, CT, DEPOK', '85743838178', 'L', 'O', '1988-03-15', 'SLEMAN', 3, 1, 'MARGANINGSIH', '1988-04-18', 'BUKU XII, HAL. -, NO. 12357', '', '', '2', '', 'MARGANINGSIH', '2000-06-25', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 37, 9, 309, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(998, '300730010060340111', 275, 3, 'PANDU STIYANTO, ANDRIANUS', '', 'NGENTAK Gg. MANGGA 3 15C, RT/ RW 03/ 01, CT, DEPOK', '85743838178', 'L', 'O', '1992-03-12', 'SLEMAN', 3, 1, 'MARGANINGSIH', '1992-06-05', 'BUKU XIV, HAL. -, NO. 13266', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(999, '300730010060350112', 276, 1, 'SOEWARNI, ANNA', '', 'KOMPLEK PENGAIRAN, NO. 3, RT/ RW 01/ -, CT, DEPOK', '(0274)488210', 'P', 'bt', '1939-07-24', 'SOLO', 3, 3, 'MAKASAR', '1968-04-13', '-', '', '', '2', '', 'MAKASAR', '1968-08-04', '', '0', '', '0000-00-00', 2, 'ST. YACOBUS', NULL, '1968-04-13', '-', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1000, '300730010060360113', 277, 1, 'PURWOTO, LUKAS', '', 'Gg. DELIMA NO. 3, NGENTAK PECINAN, DEPOK', '(0274)7473910', 'L', 'AB', '1969-10-06', 'KLATEN', 3, 1, 'ST. YOHANES RASUL', '1969-11-02', 'BUKU III, HAL. 116, NO. 2471', '', '', '2', '', 'BACIRO', '1986-07-13', '', '0', '', '0000-00-00', 2, 'ST. YOHANES RASUL', NULL, '1995-12-30', 'BUKU II, HAL. 137, NO. 1176', '', 7, 39, 31, 9, 100, 0, 1, 6, 0, 1, 1, 0, 1, 0, 0, 0, NULL, NULL),
(1001, '300730010060360114', 277, 2, 'ISWANDARI, LUSIA', '', 'Gg. DELIMA NO. 3, NGENTAK PECINAN, DEPOK', '(0274)7473910', 'P', 'B', '1969-09-07', 'WONOGIRI', 3, 1, 'ST. YOHANES RASUL', '1969-09-17', 'BUKU I, HAL. 171, NO. 681', '', '', '2', '', 'ST. YOHANES RASUL', '1983-06-23', '', '0', '', '0000-00-00', 2, 'ST. YOHANES RASUL', NULL, '1995-12-30', 'BUKU II, HAL. 137, NO. 1176', '', 5, 39, 62, 9, 100, 0, 1, 2, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1002, '300730010060360115', 277, 3, 'AVIDAN PRADIPTANANDA, FILEAS', '', 'Gg. DELIMA NO. 3, NGENTAK PECINAN, DEPOK', '(0274)7473910', 'L', 'B', '1997-02-15', 'SLEMAN', 3, 1, 'BACIRO', '1997-04-13', 'BUKU IX, HAL. 113, NO. 337', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 22, 66, 64, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1003, '300730010060360116', 277, 3, 'DORANTI ARDENA, FRANSISKA', '', 'Gg. DELIMA NO. 3, NGENTAK PECINAN, DEPOK', '(0274)7473910', 'P', 'B', '2004-10-08', 'YOGYAKARTA', 3, 1, 'BACIRO', '2004-12-19', 'BUKU I HAL. - NO. 104', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1004, '300730010060370117', 278, 1, 'HERLAMBANG WIDJAJANTO, IGNATIUS', '', 'Gg. DELIMA 10A, RT/ RW 06/ 02, NGENTAK PECINAN, CT', '81392461524', 'L', 'A', '1952-02-16', 'PALEMBANG', 3, 2, 'SERELA, WONOCATUR', '1962-12-30', '-', '', '', '2', '', 'REGIS, YOGYAKARTA', '1966-05-17', '', '0', '', '0000-00-00', 2, 'HATI SP. MARIA TAK BERCELA', NULL, '1996-07-07', 'BUKU IV, HAL. 225, NO. 704', '', 3, 66, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1005, '300730010060370118', 278, 2, 'SUWARSIYAH, BERNADETA', '', 'Gg. DELIMA 10A, RT/ RW 06/ 02, NGENTAK PECINAN, CT', '81392461524', 'P', 'AB', '1968-05-06', 'YOGYAKARTA', 3, 2, 'HATI SP. MARIA TAK B', '1982-12-20', '-', '', '', '2', '', 'HATI SP. MARIA TAK B', '1984-08-23', '', '0', '', '0000-00-00', 2, 'HATI SP. MARIA TAK BERCELA', NULL, '1996-07-07', 'BUKU IV, HAL. 225, NO. 704', '', 3, 66, 47, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1006, '300730010060370119', 278, 3, 'PRASETYA MEGA WICAKSANA, YULIUS', '', 'Gg. DELIMA 10A, RT/ RW 06/ 02, NGENTAK PECINAN, CT', '81392461524', 'L', 'AB', '1997-05-31', 'YOGYAKARTA', 3, 1, 'BACIRO', '1998-05-10', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 12, 66, 64, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1007, '300730010060380120', 279, 1, 'EDI SULISTYO, HERIBERTUS', '', 'Gg. DELIMA 10A NGENTAK RT/ RW 06/ 02, CT, DEPOK', '8164227776', 'L', 'O', '1967-04-04', 'YOGYAKARTA', 3, 2, 'ST. SIMON STOLK', '1980-04-06', 'BUKU III, HAL. 84, NO. 40', '', '', '2', '', 'BACIRO', '1982-06-18', '', '0', '', '0000-00-00', 2, 'ST. MARIA ASSUMPTA KLATEN', NULL, '2000-12-31', 'BUKU V, NO. 3485', '', 3, 66, 56, 9, 100, 0, 1, 3, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1008, '300730010060380121', 279, 2, 'WULANDARI, ANNA', '', 'Gg. DELIMA 10A NGENTAK RT/ RW 06/ 02, CT, DEPOK', '8164227776', 'P', 'A', '1973-09-29', 'KLATEN', 3, 2, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'ST. MARIA ASSUMPTA KLATEN', NULL, '2000-12-31', 'BUKU V, NO. 3485', '', 3, 66, 56, 9, 100, 0, 1, 3, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1009, '300730010060380122', 279, 3, 'BAGUS ARYO EDIANA WIBOWO, ANDREAS', '', 'Gg. DELIMA 10A NGENTAK RT/ RW 06/ 02, CT, DEPOK', '8164227776', 'L', 'A', '2001-12-28', 'YOGYAKARTA', 3, 1, 'BACIRO', '2002-02-10', 'BUKU I NO. 36', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1010, '300730010060380123', 279, 3, 'BRAWISANGA ASTA PRAMUDYA, YOHANES', '', 'Gg. DELIMA 10A NGENTAK RT/ RW 06/ 02, CT, DEPOK', '8164227776', 'L', 'A', '2008-03-10', 'YOGYAKARTA', 3, 1, 'BACIRO', '2008-04-11', 'BUKU I, NO. 192', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1011, '300730010060390124', 280, 1, 'OEY SWIE BING BINTORO, STEFANUS', '', 'JL. SOLO NO. 168, NGENTAK, DEPOK, SLEMAN', '(0274)489759', 'L', 'O', '1934-08-15', 'MUNTILAN', 3, 7, 'BACIRO', '2002-10-07', 'BUKU I, HAL. -, NO. 55', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 5, 'MAGELANG', NULL, '1962-03-20', '-', '', 1, 66, 56, 17, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1012, '300730010060390125', 280, 2, 'SIM LOEIS NIO SURLIAN, BRIGITTA', '', 'JL. SOLO NO. 168, NGENTAK, DEPOK, SLEMAN', '(0274)489759', 'P', 'O', '1935-12-01', 'PURWOREJO', 3, 8, 'BACIRO', '2002-10-07', 'BUKU I, HAL. -, NO. 56', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 5, 'MAGELANG', NULL, '1962-03-20', '-', '', 2, 66, 56, 17, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1013, '300730010060390126', 280, 3, 'ANWAR WIRYANTO, FRANSISKUS ASISI', '', 'JL. SOLO NO. 168, NGENTAK, DEPOK, SLEMAN', '(0274)489759', 'L', 'O', '1965-10-23', 'MAGELANG', 3, 8, 'BACIRO', '2004-12-24', 'BUKU I, HAL. -, NO. 109', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 56, 17, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1014, '300730010060400127', 281, 1, 'KLAU, MARIA MAGDALENA', '', 'JL. ADISUCIPTO NO. 56, JANTI', '83869707944', 'P', 'A', '1988-05-24', 'BETUN', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 21, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1015, '300730010060400128', 281, 10, 'J. E. NAIBILI, MARIA', '', 'JL. ADISUCIPTO NO. 56, JANTI', '83869707944', 'P', 'O', '1990-05-18', 'MALIANA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1016, '300730010060400129', 281, 10, 'DON SAMA LELO, DELVYANA', '', 'JL. ADISUCIPTO NO. 56, JANTI', '83869707944', 'P', 'AB', '1992-12-08', 'KUPANG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1017, '300730010060400130', 281, 10, 'AFONSO DASI, CRISTINA', '', 'JL. ADISUCIPTO NO. 56, JANTI', '83869707944', 'P', 'AB', '1992-04-04', 'MALIANA', 3, 1, 'SDH', '0000-00-00', ' -', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1018, '300730010060400131', 281, 10, 'NIIS, YASINTA', '', 'JL. ADISUCIPTO NO. 56, JANTI', '83869707944', 'P', 'A', '1998-01-20', 'TABONAT', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 99, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1019, '300730010060400132', 281, 10, 'NAIBUTI, KATARINA YUNITA', '', 'JL. ADISUCIPTO NO. 56, JANTI', '83869707944', 'P', 'B', '1991-09-15', 'ATAMBUA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1020, '300730010060400133', 281, 10, 'YUSNIATI', '', 'JL. ADISUCIPTO NO. 56, JANTI', '83869707944', 'P', 'B', '1992-10-10', 'GERNIS', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 6, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1021, '300730010060400134', 281, 10, 'AMBU M. D., EMILIANA', '', 'JL. ADISUCIPTO NO. 56, JANTI', '83869707944', 'P', 'A', '1993-02-08', 'LAMBANADU', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 20, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1022, '300730010060400135', 281, 10, 'DOS SANTOS, AGRIPINA MARIA', '', 'JL. ADISUCIPTO NO. 56, JANTI', '83869707944', 'P', 'O', '1990-08-16', 'MALIANA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 30, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1023, '300730010060400136', 281, 10, 'DE FATIMA HONKONG, FERNANDO', '', 'JL. ADISUCIPTO NO. 56, JANTI', '83869707944', 'L', 'bt', '1988-10-09', 'COVALIMA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 63, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1024, '300730010060410137', 282, 1, 'SUTRIANA P., EDELTRUDIS', '', 'JL. SOLO Gg. MANGGA IV NO. 35', '85291800890', 'P', 'B', '1986-06-23', 'ENDE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 21, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1025, '300730010060410138', 282, 10, 'B. WEA, MARIA VALERIA', '', 'JL. SOLO Gg. MANGGA IV NO. 35', '85291800890', 'P', 'O', '1987-12-09', 'BAJAWA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1026, '300730010060410139', 282, 10, 'BISARA, MARIA PRISCA', '', 'JL. SOLO Gg. MANGGA IV NO. 35', '85291800890', 'P', 'A', '1991-05-24', 'AINARO', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1027, '300730010060410140', 282, 10, 'WATAN, MARIA AGUSTINA', '', 'JL. SOLO Gg. MANGGA IV NO. 35', '85291800890', 'P', 'A', '1988-04-30', 'MALAYSIA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 53, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1028, '300730010060410141', 282, 10, 'LANUT, MARIA FATIMA', '', 'JL. SOLO Gg. MANGGA IV NO. 35', '85291800890', 'P', 'A', '1990-05-23', 'MANGGARAI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1029, '300730010060410142', 282, 10, 'SALAM, MARIA NOVITA', '', 'JL. SOLO Gg. MANGGA IV NO. 35', '85291800890', 'P', 'B', '1989-11-21', 'MANGGARAI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1030, '300730010060410143', 282, 10, 'YOSEFINA, AGNES', '', 'JL. SOLO Gg. MANGGA IV NO. 35', '85291800890', 'P', 'AB', '1987-07-03', 'LEMBATA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1031, '300730010060410144', 282, 10, 'REJEKI DEOT, ISA SRI', '', 'JL. SOLO Gg. MANGGA IV NO. 35', '85291800890', 'P', 'O', '1990-04-13', 'RUTENG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 30, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1032, '300730010060410145', 282, 10, 'PARERA, SERLY MARLINA', '', 'JL. SOLO Gg. MANGGA IV NO. 35', '85291800890', 'P', 'A', '1992-10-31', 'TIMIKA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1033, '300730010060410146', 282, 10, 'SEA SAMAYOSI, BERNADETHA', '', 'JL. SOLO Gg. MANGGA IV NO. 35', '85291800890', 'P', 'B', '1990-03-21', 'MAUMERE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1034, '300730010060420147', 283, 1, 'INO MUTI, IRENIUS', '', 'JL. SOLO Gg. KRUWING II NO. 1', '81231529250', 'L', 'A', '1987-08-31', 'BESIKAMA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1035, '300730010060420148', 283, 10, 'NESI MAU, PRIMUS VALENTINUS', '', 'JL. SOLO Gg. KRUWING II NO. 1', '81231529250', 'L', 'O', '1991-01-07', 'BETUN', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1036, '300730010060420149', 283, 10, 'WILIBRODUS MAU YAKOBUS', '', 'JL. SOLO Gg. KRUWING II NO. 1', '81231529250', 'L', 'AB', '1988-09-27', 'ATAMBUA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1037, '300730010060420150', 283, 10, 'DOS SANTOS, LUCIANO', '', 'JL. SOLO Gg. KRUWING II NO. 1', '81231529250', 'L', 'O', '1987-07-16', 'LEOREMA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1038, '300730010060420151', 283, 10, 'LEBANOR, GREY', '', 'JL. SOLO Gg. KRUWING II NO. 1', '81231529250', 'L', 'O', '1984-06-19', 'HOKENG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 23, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1039, '300730010060420152', 283, 10, 'TALLU, GOLFRIED', '', 'JL. SOLO Gg. KRUWING II NO. 1', '81231529250', 'L', 'O', '1984-10-07', 'LEMBATA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 20, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1040, '300730010060420153', 283, 10, 'URAN, YAKOBUS', '', 'JL. SOLO Gg. KRUWING II NO. 1', '81231529250', 'L', 'O', '1984-07-25', 'NUNUKAN', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 52, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1041, '300730010060420154', 283, 10, 'SULTAN, YOS FIRMAN', '', 'JL. SOLO Gg. KRUWING II NO. 1', '81231529250', 'L', 'O', '1991-03-18', 'LEMBATA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1042, '300730010060420155', 283, 10, 'BERE, YADEFRIDUS', '', 'JL. SOLO Gg. KRUWING II NO. 1', '81231529250', 'L', 'B', '1990-01-04', 'MOTABUIK', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1043, '300730010060420156', 283, 10, 'ROLAND BERE, PRIMUS', '', 'JL. SOLO Gg. KRUWING II NO. 1', '81231529250', 'L', 'O', '1988-05-27', 'BETUN', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 37, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1044, '300730010060430157', 284, 1, 'FAHIK, ROBERTUS', '', 'JL. SOLO Gg. MANGGA IV NO. 40A', '85253368008', 'L', 'A', '1985-06-05', 'BETUN', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'ATAMBUA', '2001-10-21', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 26, 57, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1045, '300730010060430158', 284, 10, 'RONALD TETI, DOMINGGUS', '', 'JL. SOLO Gg. MANGGA IV NO. 40A', '85253368008', 'L', 'AB', '1991-02-03', 'WEOE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 8, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1046, '300730010060430159', 284, 10, 'MEKO, FRENKIANUS', '', 'JL. SOLO Gg. MANGGA IV NO. 40A', '85253368008', 'L', 'AB', '1988-01-22', 'PONU', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1047, '300730010060430160', 284, 10, 'SERAN, FEMBRIANUS', '', 'JL. SOLO Gg. MANGGA IV NO. 40A', '85253368008', 'L', 'B', '1991-11-13', 'DILI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1048, '300730010060430161', 284, 10, 'ASA, WILFRIDUS', '', 'JL. SOLO Gg. MANGGA IV NO. 40A', '85253368008', 'L', 'O', '1989-03-14', 'MALIANA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1049, '300730010060430162', 284, 10, 'KLAU, AGUSTINUS', '', 'JL. SOLO Gg. MANGGA IV NO. 40A', '85253368008', 'L', 'O', '1991-01-21', 'MAUMERE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 22, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1050, '300730010060430163', 284, 10, 'SERAN FOREK, FRANCISKUS', '', 'JL. SOLO Gg. MANGGA IV NO. 40A', '85253368008', 'L', 'bt', '1993-07-06', 'SARIALA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 14, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1051, '300730010060430164', 284, 10, 'HENDRIKUS KLAU, PETRUS', '', 'JL. SOLO Gg. MANGGA IV NO. 40A', '85253368008', 'L', 'O', '1991-01-24', 'BETUN', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1052, '300730010060430165', 284, 10, 'ALBINUS MUTI, LUDGERIUS', '', 'JL. SOLO Gg. MANGGA IV NO. 40A', '85253368008', 'L', 'bt', '1992-03-26', 'LOOMOTA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1053, '300730010060430166', 284, 10, 'DENI NAHAK, PRIMUS', '', 'JL. SOLO Gg. MANGGA IV NO. 40A', '85253368008', 'L', 'B', '1988-09-12', 'BOAS', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 63, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1054, '300730010060440167', 285, 1, 'BITIN, RUI FERNANDO', '', 'JL. ADISUCIPTO Gg. JOHAR, JANTI', '85253334850', 'L', 'O', '1992-08-26', 'PASSABE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 22, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1055, '300730010060440168', 285, 10, 'ELIANA UNDJI, MARIA EMACULATA', '', 'JL. ADISUCIPTO Gg. JOHAR, JANTI', '85253334850', 'P', 'B', '1991-02-18', 'MELOLO', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 20, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1056, '300730010060440169', 285, 10, 'WEA, MARIA PASKALINA', '', 'JL. ADISUCIPTO Gg. JOHAR, JANTI', '85253334850', 'P', 'A', '1990-04-14', 'LO''A', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1057, '300730010060440170', 285, 10, 'OKI, DELVYA THEODORA', '', 'JL. ADISUCIPTO Gg. JOHAR, JANTI', '85253334850', 'P', 'B', '1992-09-17', 'OEKUSI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1058, '300730010060440171', 285, 10, 'MANEK, DELVYRANUS CHRISTANTO', '', 'JL. ADISUCIPTO Gg. JOHAR, JANTI', '85253334850', 'L', 'O', '1992-12-25', 'ATAMBUA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1059, '300730010060440172', 285, 10, 'ALVARNI HAKY, GAUDENSIA', '', 'JL. ADISUCIPTO Gg. JOHAR, JANTI', '85253334850', 'P', 'A', '1992-02-12', 'MANGGARAI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1060, '300730010060440173', 285, 10, 'ARDIN D. J. FATIMA, DOMINGOS', '', 'JL. ADISUCIPTO Gg. JOHAR, JANTI', '85253334850', 'L', 'O', '1990-10-21', 'SUAI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1061, '300730010060440174', 285, 10, 'DAMPUK, MARIA GISELA', '', 'JL. ADISUCIPTO Gg. JOHAR, JANTI', '85253334850', 'P', 'A', '1991-05-07', 'CANCAR', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 30, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1062, '300730010060450175', 286, 1, 'YAMIAR AFRIENDARI, IGNATIUS', '', 'JL. SOLO KM. 7 Gg. MANGGA IV NO. 143', '85643976297', 'L', 'A', '1988-04-08', 'SINTANG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 13, 65, 6, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1063, '300730010060450176', 286, 10, 'RADIAWAN P., YOSEP', '', 'JL. SOLO KM. 7 Gg. MANGGA IV NO. 143', '85643976297', 'L', 'O', '1991-03-23', 'MUNTILAN', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 13, 65, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1064, '300730010060450177', 286, 10, 'NOEMINO, MARIA SEQUEIRA', '', 'JL. SOLO KM. 7 Gg. MANGGA IV NO. 143', '85643976297', 'L', 'O', '1987-02-22', 'OSSU', 3, 1, 'BUANURAK', '1988-04-02', 'NO. 339/ 97 V/ VOL. 38/ 87', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1065, '300730010060450178', 286, 10, 'PEDRO DOS SANTOS, DOMINGOS', '', 'JL. SOLO KM. 7 Gg. MANGGA IV NO. 143', '85643976297', 'L', 'A', '1982-05-25', 'DILI', 3, 1, 'DILI', '1983-03-20', 'ASS. 478/ FLS. 429', '', '', '2', '', 'BORA', '1997-06-12', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1066, '300730010060450179', 286, 10, 'D. A. PEREIRA RAUL, MARIA', '', 'JL. SOLO KM. 7 Gg. MANGGA IV NO. 143', '85643976297', 'P', 'O', '1982-12-31', 'VIQUEQUE', 3, 1, 'VIQUEQUE', '1983-09-17', 'NO, 179 THN. 1983', '', '', '2', '', 'VIQUEQUE', '1998-08-15', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 56, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1067, '300730010060450180', 286, 10, 'S. P. BOUK, KATARINA', '', 'JL. SOLO KM. 7 Gg. MANGGA IV NO. 143', '85643976297', 'P', 'O', '1991-02-06', 'KUPANG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1068, '300730010060450181', 286, 10, 'FALLO, MARSELINA', '', 'JL. SOLO KM. 7 Gg. MANGGA IV NO. 143', '85643976297', 'P', 'O', '1991-03-09', 'SOE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 37, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1069, '300730010060450182', 286, 10, 'DJAWA, WILHELMUS', '', 'JL. SOLO KM. 7 Gg. MANGGA IV NO. 143', '85643976297', 'L', 'O', '1993-01-10', 'SUMBA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 14, 400, 0, 1, 4, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1070, '300730010060460183', 287, 1, 'KUSUMA WARDANI, LENNY', '', 'JL. JANTI', '-', 'P', 'O', '1993-09-29', 'SANGGAU', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 66, 65, 17, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1071, '300730010060470184', 288, 1, 'AGUSTINA, MARIA', '', 'Gg. MANGGA 4', '-', 'P', 'A', '1991-08-27', 'NANGAPINO', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 24, 66, 65, 6, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1072, '300730010070030001', 289, 1, 'YOHANES BOSKO PEHAN KELLEN, MIKHAEL', '', 'GRIYA PERWITA SARI I NO. 12', '8132942615', 'L', 'O', '1977-08-29', 'LARANTUKA', 3, 1, 'LARANTUKA', '1977-12-30', '-', '', '', '2', '', 'ATAMBUA', '1992-10-22', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 6, 67, 65, 7, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1073, '300730010070040002', 290, 1, 'DINA SITA IRAWATI IRAWATI, AGUSTINA', '', 'PULUHDADI CT XX/400 I', '(0274)436513', 'P', 'B', '1977-08-04', 'SLEMAN', 3, 1, 'SDH', '0000-00-00', 'BACIRO, -', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 3, 'BABARSARI', NULL, '2008-05-04', 'I/ 20', '', 5, 8, 37, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1074, '300730010070040003', 290, 2, 'APRIYANTO ADHI SUBROTO', '', 'PULUHDADI CT XX/400 I', '(0274)436513', 'L', 'AB', '1978-04-10', 'CIWEDUS', 1, 11, 'TDK', '0000-00-00', '', '', '', '1', '', 'TDK', '0000-00-00', '', '0', '', '0000-00-00', 3, 'BABARSARI', NULL, '2008-05-04', 'I/ 20', '', 5, 8, 37, 9, 99, 0, 1, 0, 0, 0, 2, 0, 99, 0, 0, 0, NULL, NULL),
(1075, '300730010070050004', 291, 1, 'BAMBANG SURIPNO, FRANSISKUS XAVERIUS', '', 'JL. UKDW NO. 10, SETURAN', '(0274)486839', 'L', 'AB', '1953-07-17', 'MUNTILAN', 3, 1, 'SDH', '0000-00-00', 'LB II/ 11430/ MUNTILAN', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1982-12-28', 'ANNO 1982/ VEL. L II/ 347', '', 6, 53, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1076, '300730010070050005', 291, 2, 'KRESNOWATI, ROBERTHA', '', 'JL. UKDW NO. 10, SETURAN', '(0274)486839', 'P', 'O', '1956-06-02', 'YOGYAKARTA', 3, 1, 'SDH', '0000-00-00', 'LB VIII/ 6321, KOTABARU', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1982-12-28', 'ANNO 1982/ VEL. L II/ 347', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 32, 4, 0, 0, 0, NULL, NULL),
(1077, '300730010070050006', 291, 3, 'INA MARCHELLYNA, FLORENTINE', '', 'JL. UKDW NO. 10, SETURAN', '(0274)486839', 'P', 'O', '1990-03-17', 'SAMARINDA', 3, 1, 'SAMARINDA', '1995-03-05', 'SAMARINDA, V/ 7553', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 57, 65, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1078, '300730010070060007', 292, 1, 'SOETRISNO, BENEDICTUS', '', 'KAV. KEDOKTERAN GIGI NO. 7', '(0274)486450', 'L', 'B', '1938-06-28', 'SAWANGAN', 3, 2, 'MAGELANG', '1957-04-15', 'VI/ 154/ 9495', '', '', '2', '', 'MAGELANG', '1958-10-26', '', '0', '', '0000-00-00', 2, 'SAWANGAN', NULL, '1971-06-14', 'ANNO 1970, VEL. L. I', '', 5, 63, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL);
INSERT INTO `umats` (`id`, `kode_umat`, `id_kk`, `id_hubkk`, `nama`, `email`, `alamat`, `tlp`, `jenis_kelamin`, `goldarah`, `tgl_lahir`, `tmplahir`, `id_agama`, `id_statusbaptis`, `tmpbaptis`, `tglbaptis`, `liberbap`, `romobaptis`, `namabaptis`, `stskrisma`, `namakrisma`, `tmpkrisma`, `tglkrisma`, `romokrisma`, `stskomuni`, `tmpkomuni`, `tglkomuni`, `id_statuspernikahan`, `tempatnikah`, `kotamenikah`, `tglnikah`, `libermat`, `romopernikahan`, `id_pendidikan`, `id_bidstudi`, `id_pekerjaan`, `id_suku`, `id_tempattinggal`, `lamatinggal`, `statusTT`, `id_keaktifanparoki`, `id_keaktifangereja`, `id_statuskekatolikan`, `id_statusekonomi`, `id_statuskesehatan`, `id_statussosial`, `jeniskk`, `statuspindah`, `statuskematian`, `nama_ayah`, `nama_ibu`) VALUES
(1079, '300730010070060008', 292, 2, 'SRI WAHJOENI, VINEENTIA', '', 'KAV. KEDOKTERAN GIGI NO. 7', '(0274)486450', 'P', 'B', '1942-07-02', 'MAGELANG', 3, 1, 'SAWANGAN', '1942-12-31', 'IX/ 9346', '', '', '2', '', 'MUNTILAN', '1954-09-05', '', '0', '', '0000-00-00', 2, 'SAWANGAN', NULL, '1971-06-14', 'ANNO 1970, VEL. L. I', '', 5, 31, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1080, '300730010070060009', 292, 3, 'ANGGRAINY, VALENTINA', '', 'KAV. KEDOKTERAN GIGI NO. 7', '(0274)486450', 'P', 'B', '1975-06-15', 'SEMARANG', 3, 1, 'SAWANGAN', '1976-04-18', 'II/ 1136', '', '', '2', '', 'TASIKMALAYA', '1988-08-28', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 56, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1081, '300730010070060010', 292, 3, 'DEWANTO WIBISONO, HENDRICUS', '', 'KAV. KEDOKTERAN GIGI NO. 7', '(0274)486450', 'L', 'A', '1976-07-22', 'SEMARANG', 3, 1, 'SAWANGAN', '1977-04-03', '-', '', '', '2', '', 'TASIKMALAYA', '1988-08-28', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 63, 37, 9, 309, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1082, '300730010070070011', 293, 1, 'RATNAWATI E. AGUSTIRINE, FRANSISCA', '', 'BSP II, BLOK F-1', '(0274)4332742', 'P', 'O', '1960-08-21', 'SALATIGA', 3, 2, 'SALATIGA', '1974-12-19', 'SALATIGA/ VII/ 68/ 5671', '', '', '2', '', 'SALATIGA', '1977-06-23', '', '0', '', '0000-00-00', 2, 'SALATIGA', NULL, '1983-12-28', '474.2.51', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1083, '300730010070040012', 294, 3, 'NADYA NAS, OCTAVINE', '', 'PULUHDADI CT XX/400 I', '(0274)436513', 'P', 'bt', '2009-10-04', 'SLEMAN', 3, 1, 'BABARSARI', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1084, '300730010070070013', 295, 3, 'AULIA RISKI, LAURENTIA', '', 'BSP II, BLOK F-1', '(0274)4332742', 'P', 'B', '1984-09-28', 'BALIKPAPAN', 3, 2, 'SALATIGA', '2002-04-25', 'SDH', '', '', '2', '', 'SALATIGA', '2007-06-16', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 11, 37, 9, 309, 0, 1, 6, 0, 6, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1085, '300730010070070014', 295, 3, 'RISKI ALFITASARI', '', 'BSP II, BLOK F-1', '(0274)4332742', 'P', 'O', '1986-11-11', 'BALIKPAPAN', 10, 10, 'BLM', '0000-00-00', 'BLM', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 8, 37, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1086, '300730010070080015', 296, 1, 'BUDIYONO, FERDINANDUS', '', 'BSP II, D - 4', '8164267255', 'L', 'O', '1977-04-06', 'BONTA', 3, 1, 'YOGYAKARTA', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'KOTABARU', NULL, '2007-05-06', '-', '', 5, 13, 37, 17, 100, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1087, '300730010070080016', 296, 2, 'YENNY, VALERIA', '', 'BSP II, D - 4', '8164267255', 'P', 'A', '1981-03-07', 'KETAPANG', 3, 1, 'PONTIANAK', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'KOTABARU', NULL, '2007-05-06', '-', '', 5, 13, 37, 17, 100, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1088, '300730010070080017', 296, 3, 'JASON XIA, PETRUS KANISIUS', '', 'BSP II, D - 4', '8164267255', 'L', 'A', '2007-12-19', 'YOGYAKARTA', 3, 1, 'YOGYAKARTA', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 17, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1089, '300730010070080018', 296, 3, 'JESSIE XIA, ANGELINA', '', 'BSP II, D - 4', '8164267255', 'P', 'A', '2009-05-15', 'YOGYAKARTA', 3, 1, 'YOGYAKARTA', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 17, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1090, '300730010070090019', 297, 1, 'EDDY APRIJANTO KEVIN, NATANAEL', '', 'BSP II, BLOK H - 5', '8175424775', 'L', 'O', '1967-04-19', 'SEMARANG', 3, 7, 'SEMARANG', '2002-06-03', 'SEMARANG, XVII/ 76/ 226', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'SEMARANG', NULL, '2003-09-12', 'V/ 305/ 3270', '', 5, 57, 56, 17, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1091, '300730010070090020', 297, 2, 'GRACE SURJA WIDJAJA, ANASTASIA', '', 'BSP II, BLOK H - 5', '8175424775', 'P', 'O', '1975-07-24', 'SEMARANG', 3, 1, 'SEMARANG', '1978-12-03', 'SEMARANG, XXIV/ 38/ 220', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'SEMARANG', NULL, '2003-09-12', 'V/ 305/ 3270', '', 5, 13, 56, 17, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1092, '300730010070090021', 297, 3, 'RAFAEL TJAHYA, RUFUS', '', 'BSP II, BLOK H - 5', '8175424775', 'L', 'O', '2004-11-21', 'SEMARANG', 3, 1, 'SEMARANG', '2005-01-16', 'SEMARANG, XXIII/ 3/ 7', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 11, 66, 99, 17, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1093, '300730010070090022', 297, 3, 'NICOLE TJAHYA JUSTINA', '', 'BSP II, BLOK H - 5', '8175424775', 'P', 'O', '2008-09-26', 'SEMARANG', 3, 1, 'SEMARANG', '2008-11-23', 'SEMARANG, XXIV/ 27', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 17, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1094, '300730010070100023', 298, 1, 'TUAHMAN PURBA, FRANSISKUS', '', 'JL. LAWU NO. 4', '(0274)487734', 'L', 'O', '1964-12-10', 'MEDAN', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'MEDAN', NULL, '1987-10-27', 'MEDAN, BUKU II/ 608', '', 6, 32, 9, 3, 319, 0, 1, 6, 0, 7, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1095, '300730010070100024', 298, 2, 'MAGDALENA SIMATUPANG, MARIA', '', 'JL. LAWU NO. 4', '(0274)487734', 'P', 'O', '1966-06-20', 'MEDAN', 3, 7, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'MEDAN', NULL, '1987-10-27', 'MEDAN, BUKU II/ 608', '', 5, 13, 56, 3, 100, 0, 1, 6, 0, 4, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1096, '300730010070100025', 298, 3, 'FRANSISCA NAULI PURBA, THERESIA', '', 'JL. LAWU NO. 4', '(0274)487734', 'P', 'O', '1988-04-14', 'MEDAN', 3, 1, 'SEI SIKAMBING', '1988-09-18', 'TRI STASI, I/ 128/ 1169', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 33, 65, 3, 100, 0, 1, 6, 0, 4, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1097, '300730010070100026', 298, 3, 'TALITHA FRANSISCA PURBA, ANASTASIA', '', 'JL. LAWU NO. 4', '(0274)487734', 'P', 'O', '1991-01-05', 'MEDAN', 3, 1, 'SEI SIKAMBING', '1991-12-29', 'TRI STASI, III/ 10/ 74', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 3, 65, 3, 100, 0, 1, 6, 0, 4, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1098, '300730010070100027', 298, 3, 'WILLIAM HALOMUAN PURBA, FRANSISCO', '', 'JL. LAWU NO. 4', '(0274)487734', 'L', 'O', '1992-06-05', 'MEDAN', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 3, 319, 0, 1, 6, 0, 7, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1099, '300730010070110028', 299, 1, 'SRI INDARTI, KATHARINA', '', 'PERUM F. TEKNIK UGM NO. 1', '(0274)485575', 'P', 'B', '1950-08-17', 'KLATEN', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 4, 'KLATEN', NULL, '1976-02-18', '-', '', 4, 34, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1100, '300730010070010029', 300, 1, 'WIDYATMOKO SANTOSO, IGNATIUS', '', 'PERUM BSP II BLOK J/5', '81394601953', 'L', 'B', '1953-09-20', 'SEMARANG', 3, 1, 'RANDUSARI, SEMARANG', '1953-09-27', '373/ 73/ IV', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'MADIUN', NULL, '1983-03-28', 'TIDAK ADA NOMOR', '', 6, 35, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1101, '300730010070010030', 300, 2, 'WAHYUNIATI ROSA DE LIMA', '', 'PERUM BSP II BLOK J/5', '81394601953', 'P', 'O', '1954-12-19', 'YOGYAKARTA', 3, 3, 'MADIUN', '1999-10-30', 'XIII/ 1352', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'MADIUN', NULL, '1983-03-28', 'TIDAK ADA NOMOR', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1102, '300730010070010031', 300, 3, 'NUNGKI OCTAVIA WIDYAWATI, CHATARINA', '', 'PERUM BSP II BLOK J/5', '81394601953', 'P', 'B', '1984-08-08', 'MEDAN', 3, 2, 'MADIUN', '1998-04-11', 'XIII/ 887', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 23, 37, 9, 100, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1103, '300730010070010032', 300, 3, 'ERIKA VERDIATI SANTOSO, ALOYSIA', '', 'PERUM BSP II BLOK J/5', '81394601953', 'P', 'B', '1986-06-15', 'DENVER', 3, 2, 'MADIUN', '1998-04-11', 'XIII/ 895', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 13, 37, 9, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1104, '300730010070010033', 300, 3, 'MOORTRI BRAMANTYO ARIWIBOWO, VINCENTIUS', '', 'PERUM BSP II BLOK J/5', '81394601953', 'L', 'B', '1989-09-06', 'JAKARTA', 3, 2, 'MADIUN', '1998-04-11', 'XIII/ 898', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 65, 9, 100, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1105, '300730010070020034', 301, 1, 'KURNIAWAN PRIYOSAMBODO, JOSEP', '', 'JL. DWOROWATI NO. 383C, PULUHDADI', '(0274)7842449', 'L', 'B', '1971-03-19', 'YOGYAKARTA', 3, 1, 'YOGYAKARTA', '1971-03-19', 'PANTI RAPIH, XV/ .../ 159', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'MINOMARTANI', NULL, '2001-10-14', 'I/ 73/ 218', '', 5, 13, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1106, '300730010070020035', 301, 2, 'NILUH UPADI HARDANI, CHATARINA', '', 'JL. DWOROWATI NO. 383C, PULUHDADI', '(0274)7842449', 'P', 'A', '1972-02-02', 'WATES', 3, 1, 'WATES', '1972-02-21', 'WATES, VII/ .../ 5144', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'MINOMARTANI', NULL, '2001-10-14', 'I/ 73/ 218', '', 5, 23, 37, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1107, '300730010070020036', 301, 3, 'YOVITA TIARA SAMBODO, BERNADIA', '', 'JL. DWOROWATI NO. 383C, PULUHDADI', '(0274)7842449', 'P', 'B', '2002-08-19', 'YOGYAKARTA', 3, 1, 'YOGYAKARTA', '2002-12-08', 'MINO,II/309/1233', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 21, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1108, '300730010070020037', 301, 3, 'ANDREA PUTRI SAMBODO, GISELA', '', 'JL. DWOROWATI NO. 383C, PULUHDADI', '(0274)7842449', 'P', 'A', '2008-05-02', 'YOGYAKARTA', 3, 1, 'MINO', '2008-08-10', 'MINO, II/ 389/1553', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1109, '300730010070110038', 302, 2, 'HERMAN, CORNELIUS YOHANES', '', 'PERUM F. TEKNIK UGM NO. 1', '(0274)485575', 'L', 'A', '1940-04-02', 'KUPANG', 2, 11, 'GRJ-KRISTEN', '0000-00-00', '', '', '', '1', '', 'TDK', '0000-00-00', '', '0', '', '0000-00-00', 4, 'KLATEN', NULL, '1976-02-18', '-', '', 5, 60, 34, 16, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1110, '300730010070110039', 302, 3, 'RUBEN EGBERT YOHANES', '', 'PERUM F. TEKNIK UGM NO. 1', '(0274)485575', 'L', 'A', '1980-03-02', 'YOGYAKARTA', 3, 1, 'YOGYAKARTA', '1990-04-22', 'BACIRO, VII/ III/ 840', '', '', '2', '', 'KOTABARU', '2002-06-28', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 55, 37, 16, 309, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1111, '300730010070110040', 302, 3, 'ABIYASA , YOHANES STEFANUS', '', 'PERUM F. TEKNIK UGM NO. 1', '(0274)485575', 'L', 'AB', '1988-08-05', 'YOGYAKARTA', 3, 1, 'YOGYAKARTA', '1989-01-15', 'BACIRO, VII/ 125/ 500', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1112, '300730010070120041', 303, 1, 'BAMBANG SUWARNIA, ROBERTUS', '', 'PERUM WEDO MANUNGGAL MUKTI B. 5', '(0274)485652', 'L', 'O', '1950-09-22', 'YOGYAKARTA', 3, 2, 'YOGYAKARTA', '1968-01-14', '-', '', '', '2', '', 'YOGYAKARTA', '2010-08-15', '', '0', '', '0000-00-00', 2, 'YOGYAKARTA', NULL, '1981-04-19', 'NO. III/ 359/ 1981', '', 5, 56, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1113, '300730010070120042', 303, 2, 'KUSDARTINI, CHATARINA', '', 'PERUM WEDO MANUNGGAL MUKTI B. 5', '(0274)485652', 'P', 'O', '1950-02-22', 'YOGYAKARTA', 3, 1, 'YOGYAKARTA', '1960-02-12', 'BUKU III/ NO. 2376', '', '', '2', '', 'YOGYAKARTA', '1962-04-24', '', '0', '', '0000-00-00', 2, 'YOGYAKARTA', NULL, '1981-04-19', 'NO. III/ 359/ 1981', '', 5, 58, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1114, '300730010070120043', 303, 3, 'DEWI KUSUMA SUMAWARDANI, BRIGITA', '', 'PERUM WEDO MANUNGGAL MUKTI B. 5', '(0274)485652', 'P', 'O', '1983-04-12', 'YOGYAKARTA', 3, 1, 'YOGYAKARTA', '1983-04-15', '-', '', '', '2', '', 'YOGYAKARTA', '1994-05-15', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 6, 13, 31, 9, 100, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1115, '300730010070130044', 304, 1, 'SUMIYATI, YOHANA', '', 'PERUM YADARA PULUHDADI BLOK 3 NO. 2', '(0274)485625', 'P', 'A', '1958-06-22', 'MAGELANG', 3, 1, 'SLEMAN', '1958-07-12', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'SEMARANG', NULL, '1983-12-28', 'WEDARI, SLEMAN, 942, VOL. LM II', '', 6, 39, 31, 9, 100, 0, 1, 2, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1116, '300730010070130045', 304, 3, 'IKA SEPTIANI, FRANSISCA', '', 'PERUM YADARA PULUHDADI BLOK 3 NO. 2', '(0274)485625', 'P', 'O', '1984-09-05', 'SLEMAN', 3, 1, 'SLEMAN', '1984-09-05', 'BUKU VI HAL. - NO. 197', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 67, 30, 9, 309, 0, 1, 6, 0, 6, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1117, '300730010070130046', 304, 3, 'DWITA FEBRIANI, VALENTINA', '', 'PERUM YADARA PULUHDADI BLOK 3 NO. 2', '(0274)485625', 'P', 'A', '1987-02-15', 'YOGYAKARTA', 3, 1, 'BACIRO', '1987-04-05', 'BUKU VI HAL. 273 NO. 1091', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 57, 44, 9, 100, 0, 1, 2, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1118, '300730010070130047', 304, 3, 'DANANG TRI YUDANTO, ANDREAS', '', 'PERUM YADARA PULUHDADI BLOK 3 NO. 2', '(0274)485625', 'L', 'A', '1990-11-18', 'SLEMAN', 3, 1, 'BACIRO', '1991-02-03', 'BUKU VII HAL. 264 NO. 1054', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 3, 65, 9, 100, 0, 1, 6, 0, 6, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1119, '300730010070140048', 305, 1, 'DANANG KUSUMA ATI, ANDREAS', '', 'KOMPLEK YADARA PULUHDADI BLOK 3 NO. 5', '85228676016', 'L', 'O', '1982-01-18', 'YOGYAKARTA', 3, 1, 'YOGYAKARTA', '1983-04-15', 'ASSUMPTA, YOGYAKARTA, XX/ 333', '', '', '2', '', 'YOGYAKARTA', '1994-05-15', '', '0', '', '0000-00-00', 2, 'YOGYAKARTA', NULL, '2010-10-23', 'BABARSARI, SLEMAN NO. 56 . LM . I', '', 5, 8, 56, 9, 100, 0, 1, 6, 0, 6, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1120, '300730010070140049', 305, 2, 'TRI MIDARSIH, PAULINA', '', 'KOMPLEK YADARA PULUHDADI BLOK 3 NO. 5', '85228676016', 'P', 'AB', '1982-01-25', 'METRO', 3, 1, 'METRO', '1982-02-04', 'ASSUMPTA, YOGYAKARTA, XV/ 15082', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'YOGYAKARTA', NULL, '2010-10-23', 'BABARSARI, SLEMAN NO. 56 . LM . I', '', 5, 39, 56, 9, 100, 0, 1, 6, 0, 6, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1121, '300730010070140050', 305, 3, 'RADITYA WISNU WARDANA', '', 'KOMPLEK YADARA PULUHDADI BLOK 3 NO. 5', '85228676016', 'L', 'bt', '2011-03-11', 'SLEMAN', 3, 9, 'BLM', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1122, '300730010070150051', 306, 1, 'SUMANTO, VENANTIUS', '', 'PERUM YADARA PULUHDADI IV/ 01', '(0274)7490497', 'L', 'B', '1945-05-01', 'SOLO', 3, 2, 'YOGYAKARTA', '1968-08-11', 'BUKU V/ 92/ NO. 4457', '', '', '2', '', 'YOGYAKARTA', '1968-08-13', '', '0', '', '0000-00-00', 2, 'KARANGANYAR, SOLO', NULL, '1983-02-12', 'SEMARANG, NO. 285/ 1983, VOL L I', '', 5, 63, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1123, '300730010070150052', 306, 2, 'TITIEK DARMASI, FRANSISCA', '', 'PERUM YADARA PULUHDADI IV/ 01', '(0274)7490497', 'P', 'AB', '1953-04-25', 'KARANGANYAR', 3, 2, 'YOGYAKARTA', '1985-06-19', 'BUKU XII/ NO. 755', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'KARANGANYAR, SOLO', NULL, '1983-02-12', 'SEMARANG, NO. 285/ 1983, VOL L I', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1124, '300730010070150053', 306, 3, 'DYAH ANGGARA MADIRETNO, THERESIA', '', 'PERUM YADARA PULUHDADI IV/ 01', '(0274)7490497', 'P', 'AB', '1984-07-03', 'YOGYAKARTA', 3, 1, 'YOGYAKARTA', '1984-08-12', 'BUKU XII/ NO. 443', '', '', '2', '', 'YOGYAKARTA', '1996-08-03', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 4, 52, 37, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1125, '300730010070160054', 307, 1, 'LIEM KIOK HWA, AGNES', '', 'BUMI SERPONG PERMAI II 4 - 5', '-', 'P', 'O', '1950-08-07', 'SEMARANG', 3, 1, 'SEMARANG', '1961-05-20', 'KEBUNDALAM, KD I, HAL. 229, NO. 915', '', '', '2', '', 'SEMARANG', '1962-08-24', '', '0', '', '0000-00-00', 2, 'KEBUNDALAM', NULL, '1973-12-02', 'L I, 1973, NO. 501, HAL. 126, SEMARANG', '', 3, 66, 62, 17, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1126, '300730010070160055', 307, 3, 'STEVE SURYAWIJAYA ALEXANDER', '', 'BUMI SERPONG PERMAI II 4 - 5', '-', 'L', 'O', '1980-01-26', 'SEMARANG', 3, 1, 'SEMARANG', '1982-07-04', 'SEMARANG, XXV, HAL. 40, NO. 158', '', '', '2', '', 'SEMARANG', '1992-10-28', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 13, 56, 17, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1127, '300730010070160056', 307, 3, 'ANGELINA SURYA WIDJAJA, PATRICIA', '', 'BUMI SERPONG PERMAI II 4 - 5', '-', 'P', 'O', '1983-10-21', 'SEMARANG', 3, 1, 'SEMARANG', '1984-02-05', 'SEMARANG, XXV, HAL. 124, NO. 13', '', '', '2', '', 'SEMARANG', '1996-09-20', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 13, 56, 17, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1128, '300730010070160057', 307, 4, 'KUMALA DEWI, VIRGINIA', '', 'BUMI SERPONG PERMAI II 4 - 5', '-', 'P', 'O', '1940-11-29', 'SEMARANG', 3, 1, 'SEMARANG', '1969-11-30', 'SEMARANG, VIII, HAL. 162, NO. 325', '', '', '2', '', 'SEMARANG', '1970-05-02', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 44, 34, 17, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1129, '300730010070170058', 308, 1, 'PAMBOEDI, CONSTANTIUS', '', 'PERUM YADARA PULUHDADI B2 NO. 11', '-', 'L', 'A', '1939-12-20', 'PURWOREJO', 3, 7, 'KUDUS', '1956-05-19', 'PURWOREJO, I/ HAL. 130/ NO. 518', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 8, 'DUDA', NULL, '0000-00-00', 'I . M III/ HAL. 105/ NO. 1393', '', 5, 63, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1130, '300730010070170059', 308, 3, 'ARDHI WIDIYANTO, LAURENTIUS', '', 'PERUM YADARA PULUHDADI B2 NO. 11', '-', 'L', 'B', '1985-11-01', 'SURAKARTA', 3, 1, 'SURAKARTA', '1986-05-12', 'SURAKARTA, X/ HAL. 88/ NO. 9404', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 4, 67, 61, 9, 100, 0, 1, 6, 0, 6, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1131, '300730010070180060', 309, 1, 'SUKADI HADIPRAYETNO HERDIAN, YOSEPH', '', 'PERUM YADARA PULUHDADI CT XX NO. 9', '81328859756', 'L', 'AB', '1954-05-11', 'GUNUNG KIDUL', 3, 3, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'PUGERAN', NULL, '1980-05-27', 'PUGERAN, VOL. III, NO. 1797', '', 3, 66, 37, 9, 100, 0, 1, 6, 0, 6, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1132, '300730010070180061', 309, 2, 'SRI HARDJANTI ANICETA', '', 'PERUM YADARA PULUHDADI CT XX NO. 9', '81328859756', 'P', 'O', '1945-09-09', 'YOGYAKARTA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'PUGERAN', NULL, '1980-05-27', 'PUGERAN, VOL. III, NO. 1797', '', 3, 66, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1133, '300730010070180062', 309, 3, 'DONY TRI HERWANTO, MARTINUS', '', 'PERUM YADARA PULUHDADI CT XX NO. 9', '81328859756', 'L', 'B', '1981-11-03', 'YOGYAKARTA', 3, 1, 'BACIRO', '1997-03-28', 'BUKU IX, HAL. 117 NO. 349', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 4, 37, 37, 9, 100, 0, 1, 6, 0, 6, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1134, '300730010070180063', 309, 3, 'DEDY NUGROHO, FLORENTINUS', '', 'PERUM YADARA PULUHDADI CT XX NO. 9', '81328859756', 'L', 'A', '1983-04-30', 'YOGYAKARTA', 3, 1, 'BACIRO', '1997-03-28', 'BUKU IX, HAL 116 NO. 348', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 60, 65, 9, 100, 0, 1, 6, 0, 6, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1135, '300730010070190064', 310, 1, 'ZENNY KAMIYANTO, FRANSISKUS XAVERIUS', '', 'GRIYA PERWITA ASRI I NO. 11 (PINDAH)', '81364665818', 'L', 'A', '1959-05-17', 'JAMBI', 3, 2, 'JAMBI', '1971-04-10', 'BUKU III, HAL. 104, NO. 825', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BEKASI', NULL, '1988-06-03', 'S. 1933 NO. 75 JO.S.1936 NO. 607', '', 5, 60, 37, 17, 333, 0, 1, 6, 0, 6, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1136, '300730010070190065', 310, 2, 'ENDANG AGUSTIN LESTARI', '', 'GRIYA PERWITA ASRI I NO. 11 (PINDAH)', '81364665818', 'P', 'O', '1961-08-13', 'PONOROGO', 3, 3, 'JAMBI', '1971-04-10', 'JILID V, HAL. 172 NO. 514/ 142/ 92', '', '', '2', '', 'BATAM', '2003-08-17', '', '0', '', '0000-00-00', 2, 'BEKASI', NULL, '1988-06-03', 'S. 1933 NO. 75 JO.S.1936 NO. 607', '', 4, 29, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1137, '300730010070190066', 310, 3, 'PUTRI PRATAMA KAMBAY KRESENTIA', '', 'GRIYA PERWITA ASRI I NO. 11 (PINDAH)', '81364665818', 'P', 'A', '1989-04-26', 'JAKARTA', 3, 1, 'JAKARTA', '1990-01-07', 'JILID IV, HAL. 372, NO. 1489/ 5/ 90', '', '', '2', '', 'BATAM', '2003-08-17', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 57, 65, 17, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1138, '300730010070190067', 310, 3, 'EZA DWI PUTRA KAMBAY KRISANTUS', '', 'GRIYA PERWITA ASRI I NO. 11 (PINDAH)', '81364665818', 'L', 'O', '1991-10-26', 'JAKARTA', 3, 1, 'JAKARTA', '1992-11-08', 'JILID V, HAL. 188, NO. 562/190/ 92', '', '', '2', '', 'BATAM', '2003-08-17', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 51, 65, 17, 304, 0, 1, 6, 0, 6, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1139, '300730010070190068', 310, 3, 'TRITIA KAMBAY KEVIN', '', 'GRIYA PERWITA ASRI I NO. 11 (PINDAH)', '81364665818', 'L', 'O', '1994-06-13', 'JAKARTA', 3, 1, 'KALASAN', '1997-06-25', 'BUKU XV, NO. 1439B', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 13, 66, 64, 17, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1140, '300730010070200069', 311, 1, 'SUKANDAR, YOHANES', '', 'PERUM YADARA PULUHDADI B2 NO. 2', '(0274)486229', 'L', 'O', '1949-11-20', 'YOGYAKARTA', 3, 1, 'KOTABARU', '1962-07-05', 'KOTABARU', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'SDH', NULL, '0000-00-00', '-', '', 3, 66, 0, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1141, '300730010070210070', 312, 1, 'SUDARSONO, STEFANUS', '', 'GRIYA MANUNGGAL MUKTI D - 4', '8152035591', 'L', 'bt', '1970-12-26', 'KULONPROGO', 3, 2, 'KULONPROGO', '1984-12-20', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 5, 3, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1142, '300730010070220071', 313, 1, 'WEM TURUT, WILHELMUS', '', 'PULUHDADI 416', '-', 'L', 'O', '1989-07-30', 'ROWANG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 39, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1143, '300730010070220072', 313, 10, 'ZAULINO D. C. PELOI', '', 'PULUHDADI 416', '-', 'L', 'O', '1989-03-17', 'TIMOR', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 39, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1144, '300730010070220073', 313, 10, 'SAROM, EDUARDUS', '', 'PULUHDADI 416', '-', 'L', 'B', '1990-03-25', 'MANGGARAI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1145, '300730010070220074', 313, 10, 'AGUSTINUS GAUR, EMILIUS', '', 'PULUHDADI 416', '-', 'L', 'B', '1990-05-27', 'ROWANG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1146, '300730010070220075', 313, 10, 'S. DADUK, STEFANDRI', '', 'PULUHDADI 416', '-', 'L', 'A', '1991-09-24', 'NANGALILI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1147, '300730010070220076', 313, 10, 'YANTRI, SERVAVIUS', '', 'PULUHDADI 416', '-', 'P', 'A', '1990-05-13', 'CULU', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1148, '300730010070220077', 313, 10, 'YULIANA IRMAWANTI', '', 'PULUHDADI 416', '-', 'P', 'bt', '1993-07-05', 'CULU', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 30, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1149, '300730010070220078', 313, 10, 'MERNA, MARGARETA', '', 'PULUHDADI 416', '-', 'P', 'bt', '1993-02-22', 'GENGGO', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 30, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1150, '300730010070220079', 313, 10, 'DA PUTRA ELI, SAMUEL', '', 'PULUHDADI 416', '-', 'L', 'B', '1992-04-28', 'NUNANG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1151, '300730010070220080', 313, 10, 'ARON SANTO SAMAN, FRANSISKUS ASISI', '', 'PULUHDADI 416', '-', 'L', 'A', '1988-09-15', 'BONTANG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 18, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1152, '300730010070230081', 314, 1, 'JUNAEDI', '', 'PULUHDADI 416', '-', 'L', 'O', '1989-11-20', 'RAJAN', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 70, 65, 6, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1153, '300730010070230082', 314, 10, 'ROSA SUALES', '', 'PULUHDADI 416', '-', 'P', 'B', '1990-09-30', 'TIMOR', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 61, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1154, '300730010070230083', 314, 10, 'JATININGSIH', '', 'PULUHDADI 416', '-', 'P', 'AB', '1990-04-13', 'PURBALINGGA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 61, 65, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1155, '300730010070230084', 314, 10, 'ALVIN BAY C.', '', 'PULUHDADI 416', '-', 'L', 'A', '1992-04-21', 'KUPANG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 61, 65, 20, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1156, '300730010070230085', 314, 10, 'ERLI PUTRIANI', '', 'PULUHDADI 416', '-', 'P', 'O', '1985-10-14', 'KLATEN', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 67, 27, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1157, '300730010070230086', 314, 10, 'PRAMITA HAMU MEHA, MARIA DOLOROSA', '', 'PULUHDADI 416', '-', 'P', 'O', '1989-06-17', 'KUPANG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 39, 65, 20, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1158, '300730010070230087', 314, 10, 'ERMELINDA, MARIANA', '', 'PULUHDADI 416', '-', 'P', 'O', '1989-02-28', 'MAUMERE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 62, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1159, '300730010070230088', 314, 10, 'F. C. SIKI, DIRCIA', '', 'PULUHDADI 416', '-', 'P', 'A', '1991-01-01', 'OECUSSE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 20, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1160, '300730010070240089', 315, 1, 'DANY ADITYAWIRAWAN, GREGORIUS', '', 'KAVLING MADUKISMO', '-', 'L', 'A', '1986-04-23', 'GOMBONG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 5, 16, 37, 9, 400, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1161, '300730010070240090', 315, 10, 'SUSILAWATI IYUL, VERONIKA', '', 'KAVLING MADUKISMO', '-', 'P', 'B', '1987-12-12', 'TARENG', 3, 2, 'NGABANG', '1995-12-12', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 6, 400, 0, 1, 6, 0, 5, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1162, '300730010070240091', 315, 10, 'IYUT BING SLAMET', '', 'KAVLING MADUKISMO', '-', 'P', 'bt', '1989-10-30', 'PLASMA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 39, 65, 6, 400, 0, 1, 6, 0, 5, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1163, '300730010070240092', 315, 10, 'RIKSON MANULANG, FRUMENSIUS', '', 'KAVLING MADUKISMO', '-', 'L', 'A', '1987-10-06', 'SORONG', 3, 1, 'SORONG', '1988-12-26', 'I/ NO. 659 ST. PETRUS SORONG', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 3, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1164, '300730010070240093', 315, 10, 'MIKA MARISKA JARUT', '', 'KAVLING MADUKISMO', '-', 'P', 'bt', '1990-02-05', 'MAKASSAR', 3, 2, 'YOGYAKARTA', '2011-02-13', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 36, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1165, '300730010070240094', 315, 10, 'NELYA AMADEO, GONCALVES', '', 'KAVLING MADUKISMO', '-', 'P', 'bt', '1988-06-07', 'DILI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 13, 65, 16, 400, 0, 1, 6, 0, 5, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1166, '300730010070250095', 316, 1, 'YOAN AGUSTA, LEONORA', '', 'KARANGNONGKO, JL. PERSADA 233', '-', 'P', 'O', '1989-07-25', 'SOLO', 3, 2, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 3, 65, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1167, '300730010070250096', 316, 10, 'NICO ALMASUS SIHOTANG', '', 'KARANGNONGKO, JL. PERSADA 233', '-', 'L', 'O', '1991-05-09', 'PEKANBARU', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 55, 65, 3, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1168, '300730010070250097', 316, 10, 'JOHNY MANURUNG', '', 'KARANGNONGKO, JL. PERSADA 233', '-', 'L', 'bt', '1991-04-24', 'MEDAN', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 55, 65, 3, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1169, '300730010070250098', 316, 10, 'NIKI KURNIAWAN, ANTONIUS', '', 'KARANGNONGKO, JL. PERSADA 233', '-', 'L', 'O', '1994-02-26', 'PONTIANAK', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 6, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1170, '300730010070250099', 316, 10, 'GALA A. B., YOHANES', '', 'KARANGNONGKO, JL. PERSADA 233', '-', 'L', 'O', '1993-03-05', 'PONTIANAK', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 3, 65, 6, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1171, '300730010070250100', 316, 10, 'AGUS AINARO S., ALFONSUS', '', 'KARANGNONGKO, JL. PERSADA 233', '-', 'L', 'B', '1993-08-01', 'PUTUSIBAU', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 6, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1172, '300730010070260101', 317, 1, 'SUBANG HAYONG, VICTOR', '', 'JL. PAINGAN 1 NO. 116 RT 6 RW 5', '85729236041', 'L', 'O', '1984-06-14', 'LARANTUKA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 3, 66, 37, 7, 216, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1173, '300730010070270102', 318, 1, 'LULUK, FITALIS', '', 'SETURAN, BABARSARI', '-', 'L', 'O', '1989-10-03', 'LUBA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 23, 65, 6, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1174, '300730010070270103', 318, 10, 'WIDYANTORO, FLORENTINO', '', 'SETURAN, BABARSARI', '-', 'L', 'B', '1992-05-03', 'BIAK', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1175, '300730010070280104', 319, 1, 'JOJOR RISWANA MANURUNG, ELISABET', '', 'JL. MAWAR NO. 2C, MAGUWOHARJO', '-', 'P', 'O', '1987-10-22', 'RANTAU PRAPAT', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 14, 66, 65, 3, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1176, '300730010070280105', 319, 10, 'INDRAFERNANDEZ, ALEXANDER', '', 'JL. MAWAR NO. 2C, MAGUWOHARJO', '-', 'L', 'O', '1992-04-19', 'SUMBA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 66, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1177, '300730010070280106', 319, 10, 'CEMONE, VINSENSIUS', '', 'JL. MAWAR NO. 2C, MAGUWOHARJO', '-', 'L', 'B', '1991-01-01', 'SUMBA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 66, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1178, '300730010070290107', 320, 1, 'KRISWANTA, GREGORIUS', '', 'JL. SELOKAN MATARAM NO. 1, BABARSARI', '(0274)487202', 'L', 'A', '1970-05-25', 'BAMBON', 3, 1, 'GANJURAN', '1970-07-06', '-', '', '', '2', '', 'GANJURAN', '1982-06-06', '', '0', '', '0000-00-00', 9, 'BLM', NULL, '0000-00-00', '-', '', 6, 23, 55, 9, 100, 0, 1, 1, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1179, '300730010070290108', 320, 10, 'HERIMARTANA, YOSEPH', '', 'JL. SELOKAN MATARAM NO. 1, BABARSARI', '(0274)487202', 'L', 'O', '1965-03-18', 'KLATEN', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 2, 66, 20, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1180, '300730010070290109', 320, 10, 'SETYO BUDI SAMBODO, ANDREAS', '', 'JL. SELOKAN MATARAM NO. 1, BABARSARI', '(0274)487202', 'L', 'O', '1976-07-19', 'SRAGEN', 3, 2, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 9, '', NULL, '0000-00-00', '', '', 5, 16, 55, 9, 100, 0, 1, 1, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1181, '300730010070300110', 321, 1, 'SONI PANDU WICAKSONO, ROBERTUS', '', 'PERUM YADARA PULUHDADI B III NO. 6', '(0274)485425', 'L', 'O', '1963-02-21', 'PROBOLINGGO', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1992-08-24', 'LM III/ 54 BACIRO', '', 6, 70, 30, 9, 100, 0, 1, 3, 0, 1, 2, 0, 1, 0, 0, 0, NULL, NULL),
(1182, '300730010070300111', 321, 2, 'DANIK YUDAWATI, ANASTASIA', '', 'PERUM YADARA PULUHDADI B III NO. 6', '(0274)485425', 'P', 'O', '1966-09-30', 'YOGYAKARTA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1992-08-24', 'LM III/ 54 BACIRO', '', 5, 13, 37, 9, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1183, '300730010070300112', 321, 3, 'VENDA PRATAMA PUTRA, ADRIANUS', '', 'PERUM YADARA PULUHDADI B III NO. 6', '(0274)485425', 'L', 'O', '1993-12-15', 'YOGYAKARTA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 13, 66, 64, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1184, '300730010070300113', 321, 3, 'SETO DWI DEWANTORO, MARIO', '', 'PERUM YADARA PULUHDADI B III NO. 6', '(0274)485425', 'L', 'O', '1995-05-24', 'YOGYAKARTA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 22, 66, 64, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1185, '300730010070310114', 322, 1, 'JEGAUT FERDI, VINCENTIUS', '', 'YADARA SETURAN NO. 5 PULUHDADI', '-', 'L', 'B', '1967-11-07', 'FLORES', 3, 1, 'SDH', '0000-00-00', 'FLORES, SDH', '', '', '2', '', 'BINTARA', '1991-12-12', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 5, 44, 37, 7, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1186, '300730010070310115', 322, 8, 'ADE STIRMAN, YUSTINUS', '', 'YADARA SETURAN NO. 5 PULUHDADI', '-', 'L', 'bt', '1971-12-14', 'FLORES', 3, 1, 'SDH', '0000-00-00', 'FLORES', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, '', NULL, '0000-00-00', '', '', 6, 62, 37, 7, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1187, '300730010070320116', 323, 1, 'AGUS HENDARTO, STEFANUS', '', 'PESONA SETURAN NO. 1', '(0274)4332941', 'L', 'B', '1965-03-04', 'YOGYAKARTA', 3, 2, 'BACIRO', '1993-12-21', 'BACIRO, VIII/ 193/ 578', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1994-01-16', 'III/ VOL. 61/ NO. 181', '', 5, 13, 56, 17, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1188, '300730010070320117', 323, 2, 'THUNG SIU MEI, MARIA JOSEFINA', '', 'PESONA SETURAN NO. 1', '(0274)4332941', 'P', 'O', '1964-09-08', 'MAKASAR', 3, 1, 'MAKASAR', '1964-10-11', 'MAKASAR, V/ 689', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1994-01-16', 'III/ VOL. 61/ NO. 181', '', 5, 13, 62, 17, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1189, '300730010070320118', 323, 3, 'STEFFANIE HENDARTO, GABRIELLA', '', 'PESONA SETURAN NO. 1', '(0274)4332941', 'P', 'B', '1994-11-02', 'SLEMAN', 3, 1, 'BACIRO', '1994-12-04', 'BACIRO, VIII/ -/ 827', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 13, 66, 64, 17, 333, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1190, '300730010070320119', 323, 3, 'HENDARTO SEAN SALVATOR, STANLEY', '', 'PESONA SETURAN NO. 1', '(0274)4332941', 'L', 'B', '2000-12-21', 'SLEMAN', 3, 1, 'KOTABARU', '2001-03-02', 'KOTABARU,-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 11, 66, 99, 17, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1191, '300730010070330120', 324, 1, 'DIAN ANGGRIANI SUHARTO, CAECILIA', '', 'BSP II BLOK E 6', '81227018777', 'P', 'B', '1970-08-21', 'KUDUS', 3, 1, 'KUDUS', '1970-08-27', 'KUDUS, III/ 93/ 370', '', '', '2', '', 'SEMARANG', '1984-10-30', '', '0', '', '0000-00-00', 2, 'SURABAYA', NULL, '1993-10-30', '1062', '', 4, 67, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1192, '300730010070330121', 324, 3, 'SEMBIRING, GUIDO', '', 'BSP II BLOK E 6', '81227018777', 'L', 'AB', '1994-11-11', 'DENPASAR', 3, 1, 'DENPASAR', '1995-02-05', 'DENPASAR, IV/ 5687/ -', '', '', '2', '', 'KUMETIRAN', '2008-08-01', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 13, 66, 64, 3, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1193, '300730010070330122', 324, 3, 'SEMBIRING, REGINA', '', 'BSP II BLOK E 6', '81227018777', 'P', 'O', '1996-04-04', 'DENPASAR', 3, 1, 'DENPASAR', '1996-05-05', 'DENPASAR, IV/ 5992', '', '', '2', '', 'KUMETIRAN', '2010-07-30', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 12, 66, 64, 3, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1194, '300730010070340123', 325, 1, 'TUNGGUL HENDRARTO, WILLYBRORDUS', '', 'GG DWOROWATI 362 B PULUHDADI', '(0274)486713', 'L', 'O', '1957-05-09', 'YOGYAKARTA', 3, 1, 'PUGERAN', '1957-09-19', 'PUGERAN, IV/ 140/ 2616', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1986-11-15', '-', '', 5, 13, 37, 9, 100, 0, 1, 6, 0, 6, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1195, '300730010070340124', 325, 2, 'RUSSUHARINI SEKARTAJI, CICILIA', '', 'GG DWOROWATI 362 B PULUHDADI', '(0274)486713', 'P', 'O', '1961-03-21', 'YOGYAKARTA', 3, 3, 'BACIRO', '1994-12-31', 'BACIRO, -', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1986-11-15', '-', '', 4, 29, 37, 9, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1196, '300730010070340125', 325, 3, 'RENDY SAKSONO PUTRO, YOHANES', '', 'GG DWOROWATI 362 B PULUHDADI', '(0274)486713', 'L', 'O', '1987-07-30', 'YOGYAKARTA', 3, 1, 'MRICAN', '1987-10-18', 'MRICAN, VII/ 15/ 58', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 9, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1197, '300730010070340126', 325, 3, 'YESSIE DEWI SEKARTAJI, CLAUDIA', '', 'GG DWOROWATI 362 B PULUHDADI', '(0274)486713', 'P', 'O', '1991-07-20', 'YOGYAKARTA', 3, 1, 'MRICAN', '1991-08-18', 'MRICAN, VII/ 295/ 1177', '', '', '2', '', 'KOTABARUBLM', '2006-09-25', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 67, 65, 9, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1198, '300730010070350127', 326, 1, 'ISMONO, VALENTINUS', '', 'PULUHDADI CT XX NO. 368', '(0274)486534', 'L', 'A', '1951-02-27', 'YOGYAKARTA', 3, 3, 'WONOSARI', '1966-05-19', 'WONOSARI, IV/ -/ 133', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BIDARACINA', NULL, '1989-10-11', 'II/ 213/ 858', '', 6, 55, 34, 9, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1199, '300730010070350128', 326, 2, 'ARDIWININGSIH, AURIA', '', 'PULUHDADI CT XX NO. 368', '(0274)486534', 'P', 'O', '1964-08-24', 'JAKARTA', 3, 1, 'JAKARTA', '1964-08-30', 'JAKARTA, III/ 36/ 148', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BIDARACINA', NULL, '1989-10-11', 'II/ 213/ 858', '', 4, 70, 62, 9, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1200, '300730010070350129', 326, 3, 'ANINDITA SATMOKO, BENEDICTUS', '', 'PULUHDADI CT XX NO. 368', '(0274)486534', 'L', 'A', '1990-07-10', 'YOGYAKARTA', 3, 1, 'BACIRO', '1990-08-19', 'BACIRO, VII/ 123/ 889', '', '', '2', '', 'KOTABARU', '2004-09-16', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 33, 65, 9, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1201, '300730010070350130', 326, 3, 'ARISUCININGTYAS VINCENTIA, MADELGARIA', '', 'PULUHDADI CT XX NO. 368', '(0274)486534', 'P', 'O', '2000-07-14', 'YOGYAKARTA', 3, 1, 'BACIRO', '2000-10-29', 'MRICAN VII/295/1177', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1202, '300730010070360131', 327, 1, 'AGUS PRAYUDI, MAXIMIANUS', '', 'BLOK F NO. 8 SETURAN', '(0274)486057', 'L', 'O', '1959-08-21', 'GODEAN', 3, 1, 'GODEAN', '1959-10-02', 'GODEAN, V NO. 3297', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'MARIA ASSUMPTA KLATEN', NULL, '1988-09-18', 'M. VI VOL. 245 NO. 970', '', 6, 39, 31, 9, 100, 0, 1, 4, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1203, '300730010070360132', 327, 2, 'RETNA WIDARI, IGNATIA', '', 'BLOK F NO. 8 SETURAN', '(0274)486057', 'P', 'B', '1966-07-31', 'KLATEN', 3, 1, 'KLATEN', '1966-08-17', 'KLATEN, XIV NO. 11075', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'MARIA ASSUMPTA KLATEN', NULL, '1988-09-18', 'M. VI VOL. 245 NO. 970', '', 5, 70, 62, 9, 100, 0, 1, 4, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1204, '300730010070360133', 327, 3, 'WICAKSONO, PETRUS', '', 'BLOK F NO. 8 SETURAN', '(0274)486057', 'L', 'bt', '1989-06-29', 'SLEMAN', 3, 1, 'MINO', '1989-08-31', 'SLEMAN, I, HAL. 114 NO. 456', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 14, 65, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1205, '300730010070360134', 327, 3, 'WENING RAHAJENG, ANNA', '', 'BLOK F NO. 8 SETURAN', '(0274)486057', 'P', 'B', '1995-06-05', 'SLEMAN', 3, 1, 'BACIRO', '1995-10-08', 'BACIRO, IX/ 12/ 34', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 23, 66, 64, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1206, '300730010070370135', 328, 1, 'ARIS SUNANTYO, TARSISIUS', '', 'JL. UKDW NO. 5 SETURAN', '(0274)4332945', 'L', 'O', '1956-01-28', 'BANTUL', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'YOGYAKARTA', NULL, '1985-04-09', 'III VOL. - NO. 669', '', 7, 60, 31, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1207, '300730010070370136', 328, 2, 'NUR WIDYASTUTI, THERESIA', '', 'JL. UKDW NO. 5 SETURAN', '(0274)4332945', 'P', 'O', '1956-01-28', 'YOGYAKARTA', 3, 3, 'PUGERAN', '1971-06-22', 'PUGERAN, IX/ -/ 896', '', '', '2', '', 'PUGERAN', '1972-07-11', '', '0', '', '0000-00-00', 2, 'YOGYAKARTA', NULL, '1985-04-09', 'III VOL. - NO. 669', '', 5, 33, 9, 9, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1208, '300730010070370137', 328, 3, 'KURNIA FEBRIANA, YOSEVA', '', 'JL. UKDW NO. 5 SETURAN', '(0274)4332945', 'P', 'O', '1986-02-14', 'SLEMAN', 3, 1, 'KUMETIRAN', '1986-04-13', 'KUMETIRAN, XII/ -/ 996', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 4, 33, 9, 9, 100, 0, 1, 6, 0, 6, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1209, '300730010070370138', 328, 3, 'ARIF KUSUMA, ANTONIUS', '', 'JL. UKDW NO. 5 SETURAN', '(0274)4332945', 'L', 'O', '1989-05-19', 'BANTUL', 3, 1, 'BANTUL', '1989-05-31', 'BANTUL, VI/ 239/ 6843', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 33, 65, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1210, '300730010070380139', 329, 1, 'BUDI PURWANTO, YOSAPHAT', '', 'PERUM BUMI SETURAN PERMAI 2 BLOK I NO. 3 RT19 RW2', '-', 'L', 'O', '1952-10-09', 'YOGYAKARTA', 3, 3, 'YOGYAKARTA', '1967-12-19', 'KEMETIRAN, X/ -/ 4104', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'PUGERAN', NULL, '1980-04-07', '1782', '', 4, 60, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1211, '300730010070380140', 329, 2, 'SUMARYANTI, ELISABETH', '', 'PERUM BUMI SETURAN PERMAI 2 BLOK I NO. 3 RT19 RW2', '-', 'P', 'O', '1955-02-21', 'YOGYAKARTA', 3, 2, 'YOGYAKARTA', '1967-12-04', 'KEMETIRAN IV/ -/ 3996', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'PUGERAN', NULL, '1980-04-07', '1782', '', 4, 34, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1212, '300730010070380141', 329, 3, 'WIESTY ARDHYARANTIE, LUCIA', '', 'PERUM BUMI SETURAN PERMAI 2 BLOK I NO. 3 RT19 RW2', '-', 'P', 'O', '1981-12-15', 'CILACAP', 3, 1, 'CILACAP', '1986-11-09', 'ST. STEFANUS IX/ -/ 8867', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 37, 37, 9, 100, 0, 1, 6, 0, 3, 2, 0, 2, 0, 0, 0, NULL, NULL),
(1213, '300730010070380142', 329, 3, 'WIEDHA ARDHYRIESWARIE, IRENE', '', 'PERUM BUMI SETURAN PERMAI 2 BLOK I NO. 3 RT19 RW2', '-', 'P', 'O', '1984-10-31', 'CILACAP', 3, 1, 'CILACAP', '1986-11-09', 'ST. STEFANUS IX/ -/ 8863', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 37, 37, 9, 309, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL);
INSERT INTO `umats` (`id`, `kode_umat`, `id_kk`, `id_hubkk`, `nama`, `email`, `alamat`, `tlp`, `jenis_kelamin`, `goldarah`, `tgl_lahir`, `tmplahir`, `id_agama`, `id_statusbaptis`, `tmpbaptis`, `tglbaptis`, `liberbap`, `romobaptis`, `namabaptis`, `stskrisma`, `namakrisma`, `tmpkrisma`, `tglkrisma`, `romokrisma`, `stskomuni`, `tmpkomuni`, `tglkomuni`, `id_statuspernikahan`, `tempatnikah`, `kotamenikah`, `tglnikah`, `libermat`, `romopernikahan`, `id_pendidikan`, `id_bidstudi`, `id_pekerjaan`, `id_suku`, `id_tempattinggal`, `lamatinggal`, `statusTT`, `id_keaktifanparoki`, `id_keaktifangereja`, `id_statuskekatolikan`, `id_statusekonomi`, `id_statuskesehatan`, `id_statussosial`, `jeniskk`, `statuspindah`, `statuskematian`, `nama_ayah`, `nama_ibu`) VALUES
(1214, '300730010070380143', 329, 3, 'WIENANTI RIESARDHY, ANASTASIA', '', 'PERUM BUMI SETURAN PERMAI 2 BLOK I NO. 3 RT19 RW2', '-', 'P', 'O', '1987-01-20', 'CILACAP', 3, 1, 'CILACAP', '1990-02-11', 'ST. STEFANUS XI/ -/10.732', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 25, 37, 9, 309, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1215, '300730010070380144', 329, 3, 'WIESNHU ARDHYATMA YONATHAN', '', 'PERUM BUMI SETURAN PERMAI 2 BLOK I NO. 3 RT19 RW2', '-', 'L', 'O', '1991-04-29', 'CILACAP', 3, 1, 'CILACAP', '1991-06-09', 'ST. STEFANUS XII/ -/ 11.351', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 51, 65, 9, 210, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1216, '300730010070390145', 330, 1, 'AGUNG WIDAGDO, FRANSISKUS XAVERIUS', '', 'KAVLING MADUKISMO NO. 25 SETURAN', '811258051', 'L', 'A', '1951-08-07', 'KUDUS', 3, 7, 'KUDUS', '1975-12-22', 'KUDUS, III/ 251/ 997', '', '', '2', '', 'KUDUS', '1977-06-09', '', '0', '', '0000-00-00', 2, 'KUDUS', NULL, '1977-05-06', '12/ 19 77', '', 5, 13, 34, 9, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1217, '300730010070390146', 330, 1, 'ENDANG SUSILANINGSIH, CELESTINA', '', 'KAVLING MADUKISMO NO. 25 SETURAN', '811258051', 'P', 'A', '1953-04-07', 'YOGYAKARTA', 3, 1, 'YOGYAKARTA', '1953-04-07', 'KIDULLOJI, VI/ 3913', '', '', '2', '', 'KUDUS', '1960-11-13', '', '0', '', '0000-00-00', 2, 'KUDUS', NULL, '1977-05-06', '12/ 19 77', '', 4, 34, 62, 9, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1218, '300730010070390147', 330, 3, 'ADE IRA KRISMAWAN, MARCELLINUS', '', 'KAVLING MADUKISMO NO. 25 SETURAN', '811258051', 'L', 'A', '1979-03-12', 'KUDUS', 3, 1, 'KUDUS', '1979-04-03', 'KUDUS, VI/ 84/ 333', '', '', '2', '', 'DEMAK', '1993-10-10', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 6, 13, 37, 9, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1219, '300730010070390148', 330, 3, 'NOVADE MEDIANTO, ALBERTUS', '', 'KAVLING MADUKISMO NO. 25 SETURAN', '811258051', 'L', 'A', '1980-11-15', 'KUDUS', 3, 1, 'KUDUS', '1981-02-01', 'KUDUS, VI/ 142/ 563', '', '', '2', '', 'DEMAK', '1993-10-10', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 13, 37, 9, 100, 0, 1, 3, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1220, '300730010070400149', 331, 1, 'EDUWARD MARIO ADE PRANATA, YEREMIAS', '', 'KAVLING MADUKISMO NO. 25 SETURAN', '(0274)7451553', 'L', 'A', '1987-03-09', 'SEMARANG', 3, 1, 'KUDUS', '1987-04-05', 'KUDUS, V/ 64/ 324', '', '', '2', '', 'PEKANBARU', '2000-06-15', '', '0', '', '0000-00-00', 2, 'SEMARANG', NULL, '2005-08-07', 'I/ 160/ 637/ 2005', '', 5, 60, 37, 9, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1221, '300730010070400150', 331, 2, 'ELLYGRITA MAHARSIWI, NATALINA', '', 'KAVLING MADUKISMO NO. 25 SETURAN', '(0274)7451553', 'P', 'B', '1985-12-20', 'SEMARANG', 3, 2, 'SEMARANG', '1995-12-26', 'SEMARANG, III/ 158/ 2616', '', '', '2', '', 'SEMARANG', '2000-10-28', '', '0', '', '0000-00-00', 2, 'SEMARANG', NULL, '2005-08-07', 'I/ 160/ 637/ 2005', '', 4, 67, 37, 9, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1222, '300730010070400151', 331, 3, 'FELICITA KIMIKO INESHA PRAMANTA, EMILIANA', '', 'KAVLING MADUKISMO NO. 25 SETURAN', '(0274)7451553', 'P', 'bt', '2006-01-30', 'SEMARANG', 3, 1, 'SEMARANG', '2006-09-17', 'SEMARANG, IV/ 34/ 3057', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1223, '300730010070410152', 332, 1, 'SENO PRASUDIONO, ANDREAS', '', 'PULUHDADI CT XX NO. 400', '(0274)486513', 'L', 'bt', '1975-11-06', 'JAKARTA', 3, 1, 'KEBAYORAN BARU', '1975-12-05', 'BUKU IV HAL. 52 NO. 186', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '2006-06-11', 'IV/ 101', '', 5, 63, 12, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1224, '300730010070410153', 332, 2, 'DIANA ANIS ANGGOROWATI, VERONICA', '', 'PULUHDADI CT XX NO. 400', '(0274)486513', 'P', 'B', '1974-01-28', 'YOGYAKARTA', 3, 1, 'BANTENG', '1975-04-27', 'BUKU I HAL. 209 NO. 851', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '2006-06-11', 'IV/ 101', '', 6, 65, 56, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1225, '300730010070420154', 333, 1, 'SUKEMI, SYLVINUS', '', 'RPH SETURAN BLOK E III/ 3', '(0274)486061', 'L', 'O', '1948-12-30', 'DELANGGU', 3, 2, 'KOTABARU', '1966-12-31', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 3, 'BOJONEGORO', NULL, '1974-01-13', '-', '', 5, 70, 34, 9, 100, 0, 1, 6, 0, 1, 2, 8, 1, 0, 0, 0, NULL, NULL),
(1226, '300730010070420155', 333, 2, 'TRI YATMI UTARI, MARGARETHA', '', 'RPH SETURAN BLOK E III/ 3', '(0274)486061', 'P', 'B', '1950-11-26', 'BOJONEGORO', 3, 3, 'BOJONEGORO', '1974-12-20', 'NO. 957', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 3, 'BOJONEGORO', NULL, '1974-01-13', '-', '', 4, 70, 62, 9, 100, 0, 1, 4, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1227, '300730010070420156', 333, 3, 'ROY WIKA, ANDREAS', '', 'RPH SETURAN BLOK E III/ 3', '(0274)486061', 'L', 'B', '1974-08-09', 'BOJONEGORO', 3, 1, 'SDH', '0000-00-00', 'NO. 971', '', '', '2', '', 'BACIRO', '2008-06-20', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 3, 56, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1228, '300730010070430157', 334, 1, 'SUGIARTO HIDAYAT, IGNATIUS', '', 'PULUHDADI NO. 381', '(0274)485914', 'L', 'A', '1956-11-28', 'SURAKARTA', 3, 2, 'SOLO', '1975-12-31', 'PURWOSARI, -', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'ST. PETRUS PURWOSARI, SOLO', NULL, '1984-09-22', 'III VOL. 196 NO. 782', '', 3, 66, 37, 9, 100, 0, 1, 6, 0, 7, 2, 32, 4, 0, 0, 0, NULL, NULL),
(1229, '300730010070430158', 334, 2, 'SETYOWATI YOANA, FRANSISKA', '', 'PULUHDADI NO. 381', '(0274)485914', 'P', 'A', '1960-08-06', 'BOYOLALI', 3, 2, 'SOLO', '1975-12-31', 'PURWOSARI, -', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'ST. PETRUS PURWOSARI, SOLO', NULL, '1984-09-22', 'III VOL. 196 NO. 782', '', 6, 39, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1230, '300730010070430159', 334, 3, 'FERY NUR HANDOKO, MATIUS', '', 'PULUHDADI NO. 381', '(0274)485914', 'L', 'A', '1985-12-12', 'YOGYAKARTA', 3, 2, 'BACIRO', '1995-04-15', 'BACIRO, VIII/ -/ 976', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 2, 61, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1231, '300730010070430160', 334, 3, 'YUNITA NURHANDAYANI, ANASTASIA', '', 'PULUHDADI NO. 381', '(0274)485914', 'P', 'A', '1987-06-08', 'SURAKARTA', 3, 2, 'BACIRO', '1995-04-15', 'BACIRO, VIII/ -/ 975', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 3, 61, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1232, '300730010070440161', 335, 1, 'KUN SUPRIYANTA, FRANSISKUS XAVERIUS', '', 'PULUHDADI CT XX/ 400', '(0274)486513', 'L', 'O', '1946-11-05', 'YOGYAKARTA', 3, 3, 'YOGYAKARTA', '1969-11-05', 'BANTENG, I/ -/ 1052', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BANTENG', NULL, '1971-10-17', 'TIDAK ADA NOMOR', '', 3, 66, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1233, '300730010070440162', 335, 2, 'ARTYASNING ERMINA', '', 'PULUHDADI CT XX/ 400', '(0274)486513', 'P', 'bt', '1948-12-24', 'YOGYAKARTA', 3, 3, 'YOGYAKARTA', '1969-12-24', 'BANTENG, I/ -/ 1013', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BANTENG', NULL, '1971-10-17', 'TIDAK ADA NOMOR', '', 3, 66, 62, 9, 100, 0, 1, 2, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1234, '300730010070450163', 336, 1, 'GINANDJAR, CASSANDRA', '', 'JL. LAWU, NO. 13 PULUHDADI, RT 019/ 092', '81802627199', 'L', 'B', '1983-09-25', 'CILACAP', 3, 10, 'BLM', '0000-00-00', 'BLM', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'KLATEN', NULL, '2009-07-05', '-', '', 4, 52, 56, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1235, '300730010070450164', 336, 2, 'KUSUMAWATI PRIMA, CHATARINA', '', 'JL. LAWU, NO. 13 PULUHDADI, RT 019/ 092', '81802627199', 'P', 'O', '1984-04-09', 'YOGYAKARTA', 3, 1, 'KOTABARU', '1984-04-13', 'BUKU XX, NO. 899', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'KLATEN', NULL, '2009-07-05', '-', '', 5, 23, 56, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1236, '300730010070460165', 337, 1, 'L. P. ISHAK OCTAVIANUS', '', 'SETURAN II, NO. 103', '-', 'L', 'A', '1997-10-19', 'BAJAWA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 23, 66, 64, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1237, '300730010070460166', 337, 10, 'MUDAMAKIN BEDA KIDI, AGNES', '', 'SETURAN II, NO. 103', '-', 'P', 'O', '1991-04-23', 'WAINGAPU', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 3, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1238, '300730010070460167', 337, 10, 'FLORA, ANASTASIA', '', 'SETURAN II, NO. 103', '-', 'P', 'O', '1990-12-21', 'SANGGAU', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 22, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1239, '300730010070460168', 337, 10, 'BUAT YULIANA, YASHINTHA', '', 'SETURAN II, NO. 103', '-', 'P', 'B', '1980-07-13', 'KUPANG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 3, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1240, '300730010070460169', 337, 10, 'OLE SUSANTI SUSI, ANJELIQUE ASUMPTA', '', 'SETURAN II, NO. 103', '-', 'P', 'O', '1992-08-15', 'SUMBA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 3, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1241, '300730010070470170', 338, 1, 'PEDRO, HENDRIKUS', '', 'JL. AMARTA 365A, PULUHDADI', '-', 'L', 'B', '1945-12-31', 'KARANG NANGKA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 26, 57, 34, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1242, '300730010070470171', 338, 10, 'BRUNO, GREGORIUS', '', 'JL. AMARTA 365A, PULUHDADI', '-', 'L', 'B', '1990-09-03', 'MANSIK', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 6, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1243, '300730010070470172', 338, 10, 'PANDU WINATA, STEFANI', '', 'JL. AMARTA 365A, PULUHDADI', '-', 'P', 'O', '1990-09-25', 'MAGETAN', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 39, 65, 17, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1244, '300730010070470173', 338, 10, 'YULIANY, PRISKA', '', 'JL. AMARTA 365A, PULUHDADI', '-', 'P', 'O', '1991-07-27', 'MAGETAN', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 57, 65, 17, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1245, '300730010070470174', 338, 10, 'FRYDOLIN MOLA WUWUR, ELFRIDA', '', 'JL. AMARTA 365A, PULUHDADI', '-', 'P', 'O', '1989-03-06', 'MBAY', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 3, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1246, '300730010070470175', 338, 10, 'LENGGA GESI, PAMUYLYUS', '', 'JL. AMARTA 365A, PULUHDADI', '-', 'L', 'O', '1983-05-25', 'ENDE', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1247, '300730010070480176', 339, 1, 'F. BOTHA, GAUDENSIUS', '', 'MANCASAN KIDUL', '-', 'L', 'O', '1991-10-14', 'BAJAWA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 66, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1248, '300730010070310177', 340, 8, 'HERIYANTO, YOSEF', '', 'YADARA SETURAN NO. 5 PULUHDADI', '-', 'L', 'bt', '1993-05-02', 'FLORES', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 1, 66, 60, 7, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1249, '300730010010030001', 341, 1, 'SUNANTO WIDODO IGNATIUS', '', 'JL.BABARSARI, KOMP YADARA,BLOK V NO.5 RT/RW.24/06', '', 'L', 'AB', '1953-05-12', 'YOGYAKARTA', 3, 1, 'BINTARAN', '1953-06-10', 'BUKU IX, NO : 3120', '', '', '2', '', 'BINTARAN', '1960-08-24', '', '0', '', '0000-00-00', 3, 'KIDULOJI', NULL, '1982-04-12', 'BUKU V, NO. 319, TH.1982', '', 3, 66, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 1, 0, 0, 0, NULL, NULL),
(1250, '300730010010030002', 341, 2, 'WIDIATMI', '', 'JL.BABARSARI, KOMP YADARA,BLOK V NO.5 RT/RW.24/06', '', 'P', 'B', '1956-02-21', 'BOGOR', 1, 11, 'TDK', '0000-00-00', '', '', '', '1', '', 'TDK', '0000-00-00', '', '0', '', '0000-00-00', 3, 'KIDULOJI', NULL, '1982-04-12', 'BUKU V, NO. 319, TH.1982', '', 3, 66, 62, 9, 99, 0, 1, 0, 0, 0, 2, 0, 99, 0, 0, 0, NULL, NULL),
(1251, '300730010010030003', 341, 3, 'PRIYO WIDIANTO BERNARDUS', '', 'JL.BABARSARI, KOMP YADARA,BLOK V NO.5 RT/RW.24/06', '', 'L', 'B', '1988-02-07', 'YOGYAKARTA', 3, 1, 'BACIRO', '1988-03-06', 'BUKU VII, HAL : 55, NO : 220', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 37, 9, 307, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1252, '300730010010040004', 342, 1, 'HERRY BERNARDUS', '', 'JLN. BABARSARI TB 16/02, RT 16 RW 05', '0274-486335', 'L', 'A', '1945-11-04', 'PALEMBANG', 3, 8, 'KEMETIRAN', '1967-08-06', 'SDH', '', '', '2', '', 'KEMETIRAN', '1968-08-13', '', '0', '', '0000-00-00', 2, 'PALEMBANG', NULL, '1974-01-22', '', '', 5, 20, 34, 9, 309, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1253, '300730010010040005', 342, 2, 'SUSANTY CHATARINA', '', 'JLN. BABARSARI TB 16/02, RT 16 RW 05', '0274-486335', 'P', 'A', '1949-08-05', 'SEMARANG', 3, 3, 'KEMETIRAN', '1968-04-07', 'SDH', '', '', '2', '', 'KEMETIRAN', '1968-08-13', '', '0', '', '0000-00-00', 2, 'PALEMBANG', NULL, '1974-01-22', '', '', 3, 66, 62, 9, 309, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1254, '300730010010050006', 343, 1, 'RANDIM N. RANSISCUS CARACIOLO', '', 'KOMP. YADARA II/2, RT 22 RW 06 BABARSARI', '0274-485800', 'L', 'A', '1935-06-04', 'YOGYAKARTA', 3, 1, 'KEMETIRAN', '1950-12-30', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 8, 'DUDA', NULL, '0000-00-00', '', '', 5, 70, 37, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1255, '300730010010050007', 343, 5, 'EVAN W. P. M. ROBERTUS', '', 'KOMP. YADARA II/2, RT 22 RW 06 BABARSARI', '0274-485800', 'L', 'A', '1995-01-25', 'JAYAPURA', 3, 1, 'JAYAPURA', '1995-10-18', 'BUKU IV, HAL 68 NO 23147', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 13, 66, 64, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1256, '300730010010060008', 344, 1, 'WISNU SATRIA PAMUNGKAS AGUSTINUS', '', 'KOMPLEK YADARA II/2, RT 02 RW 06', '0274-485800', 'L', 'O', '1974-08-09', 'YOGYAKARTA', 3, 1, 'PUGERAN', '1974-12-31', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'MERTOYUDAN', NULL, '2006-12-29', 'LM II, FOL: 135, NO: 537', '', 5, 13, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1257, '300730010010060009', 344, 2, 'ROSA AGUSTINI', '', 'KOMPLEK YADARA II/2, RT 02 RW 06', '0274-485800', 'P', 'O', '1983-08-17', 'MAGELANG', 3, 1, 'MERTOYUDAN', '1983-12-31', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'MERTOYUDAN', NULL, '2006-12-29', 'LM II, FOL: 135, NO: 537', '', 5, 3, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1258, '300730010010060010', 344, 3, 'SATRIYA GENGGAM DARMA NATHANAEL', '', 'KOMPLEK YADARA II/2, RT 02 RW 06', '0274-485800', 'L', 'bt', '2007-11-30', 'YOGYAKARTA', 3, 1, 'BABARSARI', '2008-01-11', 'LB I, NO: 178', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1259, '300730010010060011', 344, 3, 'LINTANG NIAN DEWI GODELIVA', '', 'KOMPLEK YADARA II/2, RT 02 RW 06', '0274-485800', 'P', 'bt', '2011-03-15', 'SLEMAN', 3, 1, 'BABARSARI', '2011-05-13', 'LB I NO: 277', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1260, '300730010010070012', 345, 1, 'BUDIADI EVARISTU', '', 'BABARSARI TB 16/10B RT 18, RW 05', '0274-485906', 'L', 'B', '1952-10-26', 'YOGYAKARTA', 3, 1, 'SDH', '0000-00-00', 'LB IX. NO:3015', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1983-04-16', 'LM II, NO: 365', '', 7, 66, 31, 9, 100, 0, 1, 3, 0, 1, 1, 0, 1, 0, 0, 0, NULL, NULL),
(1261, '300730010010070013', 345, 2, 'IRAWATI ELISABETH', '', 'BABARSARI TB 16/10B RT 18, RW 05', '0274-485906', 'P', 'AB', '1959-11-28', 'YOGYAKARTA', 3, 1, 'BACIRO', '1963-12-31', 'LB I. NO: 56', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1983-04-16', 'LM II, NO: 365', '', 6, 66, 37, 9, 100, 0, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, NULL, NULL),
(1262, '300730010010070014', 345, 3, 'BRANY KURNIANTO AGUSTINUS', '', 'BABARSARI TB 16/10B RT 18, RW 05', '0274-485906', 'L', 'B', '1984-08-30', 'YOGYAKARTA', 3, 1, 'BACIRO', '1984-12-31', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 60, 37, 9, 305, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1263, '300730010010070015', 345, 3, 'LAKSMI KURNIA PUTRI MONICA', '', 'BABARSARI TB 16/10B RT 18, RW 05', '0274-485906', 'P', 'B', '1985-11-09', 'YOGYAKARTA', 3, 1, 'BACIRO', '1985-12-06', 'BUKU VI, HAL: 150. NO:597', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 88, 9, 100, 0, 1, 6, 0, 1, 1, 8, 4, 0, 0, 0, NULL, NULL),
(1264, '300730010010080016', 346, 1, 'SUJATNO HARTOSAKSONO YOHANES', '', 'PERUM BATAN, DV-4, BABARSARI RT 10, RW 04', '0274-488788', 'L', 'O', '1951-02-24', 'SOLO', 3, 3, 'BACIRO', '1998-12-22', 'BUKU IX, HAL:210, NO: 588', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'GSP PURWOSARI', NULL, '1973-08-06', 'LM III, FOL: 45, NO: 177', '', 5, 13, 34, 9, 100, 0, 1, 1, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1265, '300730010010080017', 346, 2, 'VERONICA PURWANI MARIA', '', 'PERUM BATAN, DV-4, BABARSARI RT 10, RW 04', '0274-488788', 'P', 'B', '1954-03-29', 'SOLO', 3, 2, 'PURWOSARI', '1967-12-20', 'BUKU V, HAL: 204, NO: 819', '', '', '2', '', 'PURWOSARI', '1968-06-06', '', '0', '', '0000-00-00', 2, 'GSP PURWOSARI', NULL, '1973-08-06', 'LM III, FOL: 45, NO: 177', '', 5, 61, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1266, '300730010010090018', 347, 1, 'PURWASTYA P. A. LUKISTYAWAN F.X.', '', 'JL BABARSARI TB 16, RT 18 RW 05', '0274-485071', 'L', 'B', '1976-01-27', 'YOGYAKARTA', 3, 8, 'GKHKY PUGEREAN', '2006-12-20', 'LB XXII, HAL: 184, NO: 19601', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'GMA BABARSARI', NULL, '2008-08-02', 'BUKU I, NO: 23', '', 5, 19, 31, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1267, '300730010010090019', 347, 2, 'OKTAVIA SAKTI SILA D. FERONICA', '', 'JL BABARSARI TB 16, RT 18 RW 05', '0274-485071', 'P', 'B', '1976-10-01', 'YOGYAKARTA', 3, 1, 'SPMTB NANGGULAN', '1976-10-01', 'BUKU III, NO: 903', '', '', '2', '', 'NANGGULAN', '1988-08-15', '', '0', '', '0000-00-00', 2, 'GMA BABARSARI', NULL, '2008-08-02', 'BUKU I, NO: 23', '', 5, 58, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1268, '300730010010090020', 347, 3, 'DEL VIERO W. A. L. ALEXANDRO', '', 'JL BABARSARI TB 16, RT 18 RW 05', '0274-485071', 'L', 'bt', '2009-04-27', 'YOGYAKARTA', 3, 1, 'BABARSARI', '2009-06-12', 'BUKU I, NO: 236', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1269, '300730010010100021', 348, 1, 'BAMBANG SUMANTO BERNADINUS', '', 'KOMPLEK YADARA II/6 BABARSARI', '-', 'L', 'A', '1949-01-12', 'YOGYAKARTA', 3, 2, 'GHKY PUGERAN', '1970-02-09', 'BUKU IX, NO: 120', '', '', '2', '', 'GKHJ PUGERAN', '1970-06-22', '', '0', '', '0000-00-00', 2, 'PUGERAN', NULL, '1973-05-05', 'LM II, FOL 116, NO:1220', '', 3, 66, 34, 9, 100, 0, 1, 1, 0, 1, 2, 0, 1, 0, 0, 0, NULL, NULL),
(1270, '300730010010100022', 348, 2, 'DANNY SUDIARTY BERNADETTA', '', 'KOMPLEK YADARA II/6 BABARSARI', '-', 'P', 'B', '1949-06-16', 'SOLO', 3, 2, 'GKHJ PUGERAN', '1975-03-27', 'BUKU X, NO: 971', '', '', '2', '', 'BACIRO', '1986-07-12', '', '0', '', '0000-00-00', 2, 'PUGERAN', NULL, '1973-05-05', 'LM II, FOL 116, NO:1220', '', 4, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 1, 0, 0, 0, NULL, NULL),
(1271, '300730010010100023', 348, 3, 'MARIANA D. P. MARGARETHA', '', 'KOMPLEK YADARA II/6 BABARSARI', '-', 'P', 'A', '1979-03-25', 'YOGYAKARTA', 3, 1, 'BACIRO', '1979-05-27', 'BUKU IV, FOL: 240, NO: 959', '', '', '2', '', 'BACIRO', '1992-10-18', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 13, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1272, '300730010010110024', 349, 1, 'SUWARSONO FRANSISCUS ASISI', '', 'BABARSARI TB 18/1F RT 17 RW 05', '0274-485100', 'L', 'A', '1948-09-14', 'KLATEN', 3, 1, 'WEDI', '1948-09-17', 'BUKU III, FOL: 05 NO: 20', '', '', '2', '', 'WEDI', '1960-09-09', '', '0', '', '0000-00-00', 2, 'WEDI KLATEN', NULL, '1982-04-18', 'LM III, NO: 2155', '', 5, 13, 34, 9, 100, 0, 1, 1, 0, 1, 2, 0, 1, 0, 0, 0, NULL, NULL),
(1273, '300730010010110025', 349, 2, 'SRI REJEKI FRANSISCA', '', 'BABARSARI TB 18/1F RT 17 RW 05', '0274-485100', 'P', 'O', '1958-06-21', 'KLATEN', 3, 3, 'BACIRO', '1985-12-18', 'BUKU VI, NO: 770', '', '', '2', '', 'BACIRO', '1996-04-14', '', '0', '', '0000-00-00', 2, 'WEDI KLATEN', NULL, '1982-04-18', 'LM III, NO: 2155', '', 4, 13, 37, 9, 100, 0, 1, 1, 0, 1, 2, 0, 1, 0, 0, 0, NULL, NULL),
(1274, '300730010010110026', 349, 3, 'HARI KURNIADI BENEDICTUS', '', 'BABARSARI TB 18/1F RT 17 RW 05', '0274-485100', 'L', 'A', '1986-08-02', 'YOGYAKARTA', 3, 1, 'BACIRO', '1990-05-13', 'BUKU VII, HAL: 118, NO: 869', '', '', '2', '', 'BACIRO', '2002-11-24', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 70, 37, 9, 100, 0, 1, 1, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1275, '300730010010120027', 350, 1, 'WAGIMIN ANTONO AMATREDJO ANTONIUS', '', 'BABARSARI TB 16/17 RT 18 RW 05', '0274-485073', 'L', 'O', '1940-11-27', 'KULON PROGO', 3, 3, 'BANTENG', '2000-04-18', 'BUKU IV, HAL: 77, NO: 3176', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BANTENG', NULL, '1972-04-30', 'LM 11, FOL: 13, NO: 908', '', 6, 64, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1276, '300730010010120028', 350, 2, 'COUSIN WORO PURWANINGSIH GERMANA', '', 'BABARSARI TB 16/17 RT 18 RW 05', '0274-485073', 'P', 'A', '1952-04-21', 'PURWOREJO', 3, 3, 'BANTENG', '2000-04-18', 'BUKU IV, HAL: 77, NO: 3177', '', '', '2', '', 'BANTENG', '2000-08-20', '', '0', '', '0000-00-00', 2, 'BANTENG', NULL, '1972-04-30', 'LM 11, FOL: 13, NO: 908', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 1, 0, 0, 0, NULL, NULL),
(1277, '300730010010120029', 350, 8, 'KONDRADUS MERIANU KRISHNA PUTRA', '', 'BABARSARI TB 16/17 RT 18 RW 05', '0274-485073', 'L', 'A', '1988-04-09', 'KUPANG', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 60, 61, 7, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1278, '300730010010120030', 350, 8, 'YOLANDA MARIA WIDYASARI ODILIA', '', 'BABARSARI TB 16/17 RT 18 RW 05', '0274-485073', 'P', 'A', '1990-12-17', 'KUPANG', 3, 1, 'KUPANG', '1992-02-27', 'BUKU VI, NO: 288', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 66, 65, 7, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1279, '300730010010130031', 351, 1, 'RUGIYATI ANASTASIA', '', 'PERUM YADARA, VI/4 BABARSARI RT 25 RW 06', '0274-485801', 'L', 'O', '1954-07-10', 'BANJAR NEGARA', 3, 3, 'BACIRO', '1985-12-18', 'BUKU VI, NO: 775', '', '', '2', '', 'BACIRO', '1988-06-11', '', '0', '', '0000-00-00', 8, 'DUDA', NULL, '0000-00-00', '', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 1, 0, 0, 0, NULL, NULL),
(1280, '300730010010130032', 351, 3, 'DHIAN KUSUMANINGTYAS ANNA', '', 'PERUM YADARA, VI/4 BABARSARI RT 25 RW 06', '0274-485801', 'P', 'O', '1976-04-12', 'KLATEN', 3, 1, 'WEDI KLATEN', '1976-05-17', 'BUKU XIII, NO: 10682', '', '', '2', '', 'BACIRO', '1990-09-28', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 25, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1281, '300730010010140033', 352, 1, 'HERMIYATI SUTRISNO ROBERTHA', '', 'KOMP. YADARA IV/2 RT 20 RW 06', '0274-485557', 'P', 'B', '1949-06-13', 'METRO', 3, 1, 'METRO', '1949-06-19', 'BUKU I, FOL: 113, NO: 1656', '', '', '2', '', 'METRO', '1969-04-22', '', '0', '', '0000-00-00', 8, 'JANDA', NULL, '0000-00-00', '', '', 4, 34, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 1, 0, 0, 0, NULL, NULL),
(1282, '300730010010140034', 352, 3, 'SUNARYO AJIWIBOWO BENEDICTUS', '', 'KOMP. YADARA IV/2 RT 20 RW 06', '0274-485557', 'L', 'AB', '1978-10-02', 'YOGYAKARTA', 3, 1, 'KEMETIRAN', '1978-11-05', 'BUKU X, NO: 32', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 23, 37, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1283, '300730010010140035', 352, 3, 'GUNTUR HARMOKO WIBISONO CANISIUS', '', 'KOMP. YADARA IV/2 RT 20 RW 06', '0274-485557', 'L', 'AB', '1980-04-19', 'YOGYAKARTA', 3, 1, 'KEMETIRAN', '1980-05-04', 'BUKU X, NO: 954', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 13, 37, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1284, '300730010010140036', 352, 3, 'NOVIANTO WIBISONO DAMIANUS', '', 'KOMP. YADARA IV/2 RT 20 RW 06', '0274-485557', 'L', 'A', '1982-11-06', 'YOGYAKARTA', 3, 1, 'BACIRO', '1983-01-09', 'BUKU V, NO: 1310', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 13, 37, 9, 326, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1285, '300730010010150037', 353, 1, 'ANDY PERMANA PUTRA ANDREAS', '', 'PERUM YADARA 11/6 RT 022 RW 006', '-', 'L', 'AB', '1974-08-10', 'YOGYAKARTA', 3, 1, 'PUGERAN', '1975-02-07', 'BUKU X, HAL: 228, NO: 921', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 4, 'KIDULOJI', NULL, '2004-06-26', 'LM VI, VOL: 8, NO: 22', '', 3, 66, 37, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1286, '300730010010150038', 353, 2, 'MASTA ULI ARIANA SIBURIAN ELISABETH', '', 'PERUM YADARA 11/6 RT 022 RW 006', '-', 'P', 'AB', '1974-02-25', 'YOGYAKARTA', 3, 1, 'PUGERAN', '1975-02-07', '', '', '', '2', '', 'TDK', '0000-00-00', '', '0', '', '0000-00-00', 4, 'KIDULOJI', NULL, '2004-06-26', 'LM VI, VOL: 8, NO: 22', '', 3, 66, 37, 3, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1287, '300730010010150039', 353, 3, 'QUEENTA NIRWASITA PATRICIA', '', 'PERUM YADARA 11/6 RT 022 RW 006', '-', 'P', 'B', '2006-05-23', 'YOGYAKARTA', 3, 1, 'BABARSARI', '2006-08-11', 'BUKU I, NO: 150', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1288, '300730010010150040', 353, 3, 'HOSHIANA PHALOSA', '', 'PERUM YADARA 11/6 RT 022 RW 006', '-', 'P', 'A', '2008-04-09', 'YOGYAKARTA', 3, 1, 'BABARSARI', '2008-12-12', 'BUKU I, NO: 204', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1289, '300730010010010041', 354, 1, 'BUDI KUNCORO, DAMIANUS', '', 'KOMP. YADARA BLOK V NO. 3 RT 24 RW 06', '0274-487719', 'L', 'O', '1959-09-25', 'SEMARANG', 3, 1, 'SEMARANG', '1959-09-27', 'BUKU XVIII, HAL: 169, NO: 1160', '', '', '2', '', 'KIDULOJI', '1976-07-04', '', '0', '', '0000-00-00', 3, 'SURAKARTA', NULL, '1989-06-09', '', '', 5, 23, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1290, '300730010010010042', 354, 2, 'ENDANG FIRIS,MANUTI', '', 'KOMP. YADARA BLOK V NO. 3 RT 24 RW 06', '0274-487719', 'P', 'AB', '1961-09-07', 'SURAKARTA', 8, 11, 'SDH-KATO', '0000-00-00', '', '', '', '1', '', 'TDK', '0000-00-00', '', '0', '', '0000-00-00', 3, 'SURAKARTA', NULL, '1989-06-09', '', '', 5, 1, 56, 9, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1291, '300730010010010043', 354, 3, 'FANDI KURNIA ADI DE DEO, YOHANES', '', 'KOMP. YADARA BLOK V NO. 3 RT 24 RW 06', '0274-487719', 'L', 'O', '1999-03-09', 'YOGYAKARTA', 3, 1, 'GKHJ PUGERAN', '1999-04-14', 'BUKU XX, HAL: 83, NO: 17783', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 12, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1292, '300730010010010044', 354, 3, 'RISDI NUGROHO WIDAYANTO, DOMINIKUS', '', 'KOMP. YADARA BLOK V NO. 3 RT 24 RW 06', '0274-487719', 'L', 'O', '2003-08-14', 'YOGYAKARTA', 3, 1, 'SDH', '0000-00-00', '', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1293, '300730010010020045', 355, 1, 'THERESIA M. K. P., DHOMINIKA', '', '-', '-', 'P', 'O', '1961-02-21', 'SOLO', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 8, 'JANDA', NULL, '0000-00-00', '-', '', 5, 3, 37, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1294, '300730010010020046', 355, 3, 'AJENG H. P., BRIGITTA', '', '-', '-', 'P', 'O', '1994-11-17', 'YOGYAKARTA', 3, 2, 'BABARSARI', '2003-11-15', 'BUKU I, NO: 86', '', '', '2', '', 'BACIRO', '2008-07-20', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 13, 66, 64, 9, 249, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1295, '300730010010020047', 355, 3, 'BERLIANA A. T., ALEXANDRIA', '', '-', '-', 'P', 'O', '1997-09-07', 'YOGYAKARTA', 3, 2, 'BABARSARI', '2006-12-15', 'BUKU I, NO: 157', '', '', '2', '', 'BACIRO', '2010-07-10', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 12, 66, 64, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1296, '300730010010160048', 356, 1, 'TRI HARTINI, MARGARETHA', '', 'KOMP. YADARA V/19, RT 24, RW 06', '81329422421', 'P', 'O', '1984-10-17', 'LAMPUNG', 3, 1, 'SANG DEWI ROWOREJO', '1986-03-31', 'BUKU X, HAL: 267, NO: 804', '', '', '2', '', 'ST. PETRUS KALIREJO', '1996-10-13', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 5, 11, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1297, '300730010010170049', 357, 1, 'ANTONIUS LADJADJAWA, LAURENSIUS', '', 'KOMP. YADARA V/19, RT 24, RW 06 BABARSARI', '85228033982', 'L', 'O', '1987-05-13', 'ENDE', 3, 1, 'ONEKORE', '1987-06-24', 'BUKU II, NO: 4879', '', '', '2', '', 'ONEKORE', '1999-11-18', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 5, 70, 37, 7, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1298, '300730010010180050', 358, 1, 'EDDY SUMADI, YOHANES', '', 'KOMPLEK BATAN DV 3, RT 10, RW 04', '0274-484530', 'L', 'B', '1957-07-17', 'WONOSARI', 3, 2, 'GKSP WONOSARI', '1967-03-19', 'BUKU VI, NO: 615', '', '', '2', '', 'WONOSARI', '1971-03-19', '', '0', '', '0000-00-00', 2, 'GKSP WONOSARI', NULL, '1983-04-10', 'LM VOL. IV, NO: 597, TH: 1983', '', 5, 66, 37, 9, 100, 0, 1, 1, 0, 1, 2, 0, 1, 0, 0, 0, NULL, NULL),
(1299, '300730010010180051', 358, 2, 'M ENDANG PURWANINGSIH, MARGARETHA', '', 'KOMPLEK BATAN DV 3, RT 10, RW 04', '0274-484530', 'P', 'B', '1958-11-22', 'WONOSARI', 3, 7, 'BACIRO', '1983-01-27', 'BUKU V, NO: 1314', '', '', '2', '', 'BABARSARI', '2010-08-15', '', '0', '', '0000-00-00', 2, 'GKSP WONOSARI', NULL, '1983-04-10', 'LM VOL. IV, NO: 597, TH: 1983', '', 3, 66, 37, 9, 100, 0, 1, 1, 0, 1, 2, 0, 1, 0, 0, 0, NULL, NULL),
(1300, '300730010010180052', 358, 3, 'JANUASTUTI FARATOMIA, ANASTASIA', '', 'KOMPLEK BATAN DV 3, RT 10, RW 04', '0274-484530', 'P', 'O', '1984-01-10', 'YOGYAKARTA', 3, 1, 'MINOMARTANI', '1985-02-17', 'BUKU I, HAL: 47, NO: 186', '', '', '2', '', 'BACIRO', '1998-08-16', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 66, 37, 9, 309, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1301, '300730010010180053', 358, 3, 'ARYA GALISMA, DOMINIKUS', '', 'KOMPLEK BATAN DV 3, RT 10, RW 04', '0274-484530', 'L', 'B', '1995-08-05', 'YOGYAKARTA', 3, 2, 'PRINGWULUNG', '1995-10-12', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 13, 66, 64, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1302, '300730010010180054', 358, 3, 'GALIH ARUMINANTA, BARTHOLOMEUS', '', 'KOMPLEK BATAN DV 3, RT 10, RW 04', '0274-484530', 'L', 'B', '1986-08-29', 'YOGYAKARTA', 3, 1, 'BACIRO', '1989-03-14', '-', '', '', '2', '', 'BABARSARI', '2010-08-15', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 66, 65, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1303, '300730010010180055', 358, 3, 'NOVITRIA PERMATA SARI, CHRISTINA', '', 'KOMPLEK BATAN DV 3, RT 10, RW 04', '0274-484530', 'P', 'B', '1989-10-11', 'YOGYAKARTA', 3, 2, 'BACIRO', '1999-12-23', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 66, 65, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1304, '300730010010190056', 359, 1, 'AFFANDY, IGNATIUS', '', 'TB 16/6B BABARSARI RT 16 RW 05', '0274-7800085', 'L', 'B', '1977-12-18', 'KLATEN', 3, 1, 'GMA KLATEN', '2005-07-09', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'KIDULOJI', NULL, '2005-07-09', 'LM: VI, NO: 75', '', 5, 13, 56, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1305, '300730010010190057', 359, 2, 'RETNO PRAWESTI, MARIA', '', 'TB 16/6B BABARSARI RT 16 RW 05', '0274-7800085', 'P', 'B', '1980-04-02', 'YOGYAKARTA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'KIDULOJI', NULL, '2005-07-09', 'LM: VI, NO: 75', '', 5, 13, 56, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1306, '300730010010190058', 359, 3, 'ETNAN AVANO, GABRIEL', '', 'TB 16/6B BABARSARI RT 16 RW 05', '0274-7800085', 'L', 'B', '2006-07-19', 'YOGYAKARTA', 3, 1, 'KOTABARU', '2006-08-04', 'BUKU XXVIII, NO: 189', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1307, '300730010010200059', 360, 1, 'SRI SOELANTARI, THERESIA', '', 'KOMPLEK YADARA', '-', 'P', 'AB', '1941-09-06', 'YOGYAKARTA', 3, 2, 'BINTARAN', '1957-04-12', 'BUKU X, HAL: 213, NO: 3995', '', '', '2', '', 'PUGERAN', '1958-05-30', '', '0', '', '0000-00-00', 8, 'JANDA', NULL, '0000-00-00', '-', '', 5, 70, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1308, '300730010010200060', 360, 3, 'ATIK PRESETYAWATI, ANTONIA', '', 'KOMPLEK YADARA', '-', 'P', 'AB', '1967-01-17', 'YOGYAKARTA', 3, 1, 'BINTARAN', '1967-01-30', 'BUKU XIII, HAL: 75, NO: 6679', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 67, 56, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1309, '300730010010200061', 360, 3, 'ARYA PURNA PUTRA, ALOYSIUS', '', 'KOMPLEK YADARA', '-', 'L', 'AB', '1977-07-27', 'YOGYAKARTA', 3, 1, 'BINTARAN', '1977-12-11', 'BUKU XV, HAL: 170, NO: 9109', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 56, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1310, '300730010010230062', 361, 1, 'WIBOWO, ANTONIUS', '', 'KOMPLEK YADARA II/17 RT 22/ RW 06 BABARSARI', '0274-485031', 'L', 'B', '1947-07-17', 'NGAWI', 3, 7, 'GKJ YOGYAKARTA', '1968-02-11', 'BUKU X, NO: 371', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'WEDI KLATEN', NULL, '1976-08-19', 'LM III, NO: 1588', '', 5, 13, 34, 9, 100, 0, 1, 3, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1311, '300730010010230063', 361, 2, 'SRI SUWARSITI,CAECILIA', '', 'KOMPLEK YADARA II/17 RT 22/ RW 06 BABARSARI', '0274-485031', 'P', 'O', '1953-11-13', 'KLATEN', 3, 1, 'WEDI KLATEN', '1953-11-14', 'BUKU III, FOL: 160, NO: 642', '', '', '2', '', 'WEDI KLATEN', '1967-05-07', '', '0', '', '0000-00-00', 2, 'WEDI KLATEN', NULL, '1976-08-19', 'LM III, NO: 1588', '', 5, 44, 34, 9, 100, 0, 1, 3, 0, 1, 2, 0, 1, 0, 0, 0, NULL, NULL),
(1312, '300730010010230064', 361, 3, 'SRI PRIYOHUTOMO WIBOWO', '', 'KOMPLEK YADARA II/17 RT 22/ RW 06 BABARSARI', '0274-485031', 'L', 'B', '1991-04-14', 'UJUNG PANDANG', 3, 1, 'KUDUS', '1993-12-19', 'BUKU VI, HAL: 76, NO: 227', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 66, 65, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1313, '300730010010240065', 362, 1, 'NOVI KURNIATI, YUSTINA', '', 'TB 16/14B, RT 19, RW 05 BABARSARI', '-', 'P', 'bt', '1977-11-22', 'WONOSOBO', 3, 1, 'GARUNG WONOSOBO', '1978-02-13', 'BUKU III, HAL: 121, NO: 2498', '', '', '2', '', 'KIDULOJI', '1994-04-30', '', '0', '', '0000-00-00', 6, 'ST. ANTONIUS PURBAYAN', NULL, '2008-06-29', '', '', 5, 70, 27, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1314, '300730010010240066', 362, 3, 'VERDEI MATERINO, IGNATIUS', '', 'TB 16/14B, RT 19, RW 05 BABARSARI', '-', 'L', 'bt', '2009-07-30', 'SURAKARTA', 3, 1, 'SURAKARTA', '2009-09-06', 'BUKU XIX, HAL: 166, NO: 496', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1315, '300730010010250067', 363, 1, 'ENDANG SULISTYANINGSIH, FIRMINA', '', 'BABRSARI TB 16/14B', '81802745553', 'P', 'O', '1957-03-19', 'SUKOHARJO', 3, 3, 'PURBAYAN', '1967-03-26', 'BUKU XX, HAL: 200, NO: 10355', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 8, 'JANDA', NULL, '0000-00-00', 'BUKU I, HAL: 55, NO: 218', '', 3, 66, 62, 9, 100, 0, 1, 1, 0, 1, 2, 0, 1, 0, 0, 0, NULL, NULL),
(1316, '300730010010250068', 363, 3, 'CAROL KURNIAWAN VREDITYA, YOHANES', '', 'BABRSARI TB 16/14B', '81802745553', 'L', 'O', '1989-10-31', 'PURWOKERTO', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 67, 65, 7, 100, 0, 1, 1, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1317, '300730010010250069', 363, 3, 'WENY ARLITA ANGGRAHENI, CLEMENTINA', '', 'BABRSARI TB 16/14B', '81802745553', 'P', 'O', '1982-01-31', 'BANYUMAS', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 25, 37, 7, 309, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1318, '300730010010260070', 364, 1, 'ANDHI KUSUMA INDRA, HERYBERTUS', '', 'PERUM YADARA, VI/4 BABARSARI RT 25 RW 06', '0274-485801', 'L', 'O', '1977-09-23', 'KLATEN', 3, 2, 'BACIRO', '1987-12-18', 'BUKU VII, HAL: 36, NO: 144', '', '', '2', '', 'BACIRO', '1990-09-28', '', '0', '', '0000-00-00', 2, 'YOGYAKARTA', NULL, '2007-07-07', '-', '', 5, 63, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1319, '300730010010260071', 364, 2, 'ULLI KUSUMAWATI, FRANZESKA', '', 'PERUM YADARA, VI/4 BABARSARI RT 25 RW 06', '0274-485801', 'P', 'bt', '1979-06-28', 'PURWOKERTO', 3, 7, 'BABARSARI', '2008-03-22', 'BUKU I, NO: 188', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'YOGYAKARTA', NULL, '2007-07-07', '-', '', 4, 3, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1320, '300730010010260072', 364, 3, 'GWEN AUREUY, BRIGITTA', '', 'PERUM YADARA, VI/4 BABARSARI RT 25 RW 06', '0274-485801', 'P', 'bt', '2009-02-01', 'SLEMAN', 3, 1, 'BABARSARI', '2009-04-11', 'BUKU I, NO: 219', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1321, '300730010010270073', 365, 1, 'SUSWANDARI ANNA, MARIA', '', 'KOMPLEK YADARA IV/9 BABARSARI', '0274-486754', 'P', 'O', '1940-08-24', 'SRAGEN', 3, 3, 'MALANG', '1968-12-31', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 8, 'JANDA', NULL, '0000-00-00', '-', '', 5, 13, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1322, '300730010010280074', 366, 1, 'GATOT SETYOHADI, ANTONIUS', '', 'BABARSARI TB 18/1H, RT 17 RW 05', '0274-485485', 'L', 'O', '1960-03-12', 'SUKOHARJO', 3, 7, 'BACIRO', '1993-12-21', 'BUKU I, NO: 13/ PLPN/ 15', '', '', '2', '', 'BACIRO', '1994-03-15', '', '0', '', '0000-00-00', 2, 'KOTA BARU', NULL, '1985-12-17', 'BUKU IV, NO: 361', '', 5, 23, 56, 9, 100, 0, 1, 3, 0, 1, 2, 0, 1, 0, 0, 0, NULL, NULL),
(1323, '300730010010280075', 366, 2, 'SRI MAWARTI, ELISABETH', '', 'BABARSARI TB 18/1H, RT 17 RW 05', '0274-485485', 'P', 'O', '1967-05-09', 'SUKOHARJO', 3, 3, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'KOTA BARU', NULL, '1985-12-17', 'BUKU IV, NO: 361', '', 3, 66, 37, 9, 100, 0, 1, 3, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1324, '300730010010280076', 366, 3, 'YUNINDA ARIZONA SETYOHADI', '', 'BABARSARI TB 18/1H, RT 17 RW 05', '0274-485485', 'P', 'O', '1986-06-18', 'YOGYAKARTA', 3, 1, 'KOTA BARU', '1987-07-03', 'BUKU XXII, HAL: 37, NO: 147', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 4, 5, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1325, '300730010010280077', 366, 3, 'MAYANG SETYOWATI SERVATIA', '', 'BABARSARI TB 18/1H, RT 17 RW 05', '0274-485485', 'P', 'O', '1992-01-24', 'YOGYAKARTA', 3, 1, 'BACIRO', '1992-03-01', 'BUKU VIII, HAL: 58, NO: 172', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 66, 65, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1326, '300730010010290078', 367, 1, 'FERRY, FRANSISKUS', '', 'YADARA, BLOK I/12, RT 21 RW 06 BABARSARI', '85228645168', 'L', 'O', '1958-04-12', 'LANGGUR', 3, 1, 'LANGGUR', '1958-04-12', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 5, 57, 33, 1, 100, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1327, '300730010010290079', 367, 4, 'CICILIA', '', 'YADARA, BLOK I/12, RT 21 RW 06 BABARSARI', '85228645168', 'P', 'O', '1952-10-17', 'LANGGUR', 3, 1, 'LANGGUR', '1952-10-17', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 2, 66, 11, 1, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1328, '300730010010290080', 367, 8, 'OKTAVIANUS', '', 'YADARA, BLOK I/12, RT 21 RW 06 BABARSARI', '85228645168', 'L', 'O', '1991-01-26', 'LANGGUR', 3, 1, 'LANGGUR', '1991-01-26', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 39, 65, 1, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1329, '300730010010290081', 367, 8, 'PETRUS', '', 'YADARA, BLOK I/12, RT 21 RW 06 BABARSARI', '85228645168', 'L', 'O', '1988-05-16', 'LANGGUR', 3, 1, 'LANGGUR', '1988-05-16', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 23, 65, 1, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1330, '300730010010290082', 367, 8, 'ANANOVITA', '', 'YADARA, BLOK I/12, RT 21 RW 06 BABARSARI', '85228645168', 'P', 'O', '1985-11-05', 'LANGGUR', 3, 1, 'LANGGUR', '1985-11-05', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 13, 65, 1, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1331, '300730010010290083', 367, 8, 'AGUSTINA', '', 'YADARA, BLOK I/12, RT 21 RW 06 BABARSARI', '85228645168', 'P', 'O', '1999-03-19', 'LANGGUR', 3, 1, 'LANGGUR', '1999-03-19', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 21, 66, 99, 1, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1332, '300730010010290084', 367, 8, 'AURELIA', '', 'YADARA, BLOK I/12, RT 21 RW 06 BABARSARI', '85228645168', 'L', 'O', '1992-06-27', 'LANGGUR', 3, 1, 'LANGGUR', '1992-06-27', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 40, 65, 1, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1333, '300730010010300085', 368, 1, 'SRINAYANTO, AMBROSIUS', '', 'YADARA BLOK V/12A, RT 25 RW 06 BABARSARI', '0274-485019', 'L', 'bt', '1954-12-07', 'YOGYAKARTA', 3, 8, 'BABARSARI', '2008-03-22', 'NO: 183', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 3, 66, 56, 9, 100, 0, 1, 6, 0, 7, 3, 32, 4, 0, 0, 0, NULL, NULL),
(1334, '300730010010310086', 369, 1, 'CHANDRAWATI, AGATHA', '', 'BABARSARI TB 16/18C, RW 05, 55281', '0274-485975', 'P', 'A', '1962-02-14', 'YOGYAKARTA', 3, 8, 'DE BRITO', '1989-12-20', 'SDH', '', '', '2', '', 'DE BRITO', '1989-12-31', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 5, 60, 56, 20, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1335, '300730010010320087', 370, 1, 'SELU, FRANSISKUS XAFERIUS', '', 'KOMPLEKS YADARA, BLOK V NO: 24 RT 25 RW 06', '81337416984', 'L', 'O', '1986-11-14', 'RUTENG', 3, 1, 'RUTENG', '1987-01-12', 'SDH', '', '', '2', '', 'RUTENG', '1996-06-19', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '', '', 15, 60, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1336, '300730010010320088', 370, 10, 'BANI WICAKSONO, ALBERTUS', '', 'KOMPLEKS YADARA, BLOK V NO: 24 RT 25 RW 06', '81337416984', 'L', 'O', '1989-10-19', 'JAKARTA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 14, 60, 65, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1337, '300730010010320089', 370, 10, 'DAVID RAHAWARIN', '', 'KOMPLEKS YADARA, BLOK V NO: 24 RT 25 RW 06', '81337416984', 'L', 'A', '1990-08-21', 'LANGGUR', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 23, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1338, '300730010010320090', 370, 10, 'DARMA SAPUTRA', '', 'KOMPLEKS YADARA, BLOK V NO: 24 RT 25 RW 06', '81337416984', 'L', 'B', '1992-01-27', 'REOG', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 3, 65, 6, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1339, '300730010010330091', 371, 1, 'JOSE PINTO FILIPE JUVENCIO', '', 'BABARSARI TB 16 NO: 16', '-', 'L', 'bt', '1985-03-24', 'BAUCAU', 3, 1, 'BAUCAU', '1986-03-24', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1340, '300730010010330092', 371, 10, 'AMARAL LORES DIRCIE', '', 'BABARSARI TB 16 NO: 16', '-', 'L', 'bt', '1986-07-30', 'ANARO', 3, 1, 'ANARO', '1987-01-06', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1341, '300730010010330093', 371, 10, 'ZITA DA COSTA GUSMAO ESTER', '', 'BABARSARI TB 16 NO: 16', '-', 'P', 'bt', '1988-09-07', 'DILI', 3, 1, 'DILI', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1342, '300730010010330094', 371, 10, 'EUGENIA VARELA JOANA', '', 'BABARSARI TB 16 NO: 16', '-', 'P', 'bt', '1986-08-30', 'VENILALE', 3, 1, 'DILI', '1986-10-24', '', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1343, '300730010010330095', 371, 10, 'ROSITO DA COSTA XIMENES', '', 'BABARSARI TB 16 NO: 16', '-', 'L', 'bt', '1986-02-07', 'BAUCAU', 3, 1, 'BAUCAU', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1344, '300730010010330096', 371, 10, 'MANUEL INOCENCIO', '', 'BABARSARI TB 16 NO: 16', '-', 'L', 'bt', '1986-05-08', 'VENILALE', 3, 1, 'VENILALE', '1986-07-08', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL);
INSERT INTO `umats` (`id`, `kode_umat`, `id_kk`, `id_hubkk`, `nama`, `email`, `alamat`, `tlp`, `jenis_kelamin`, `goldarah`, `tgl_lahir`, `tmplahir`, `id_agama`, `id_statusbaptis`, `tmpbaptis`, `tglbaptis`, `liberbap`, `romobaptis`, `namabaptis`, `stskrisma`, `namakrisma`, `tmpkrisma`, `tglkrisma`, `romokrisma`, `stskomuni`, `tmpkomuni`, `tglkomuni`, `id_statuspernikahan`, `tempatnikah`, `kotamenikah`, `tglnikah`, `libermat`, `romopernikahan`, `id_pendidikan`, `id_bidstudi`, `id_pekerjaan`, `id_suku`, `id_tempattinggal`, `lamatinggal`, `statusTT`, `id_keaktifanparoki`, `id_keaktifangereja`, `id_statuskekatolikan`, `id_statusekonomi`, `id_statuskesehatan`, `id_statussosial`, `jeniskk`, `statuspindah`, `statuskematian`, `nama_ayah`, `nama_ibu`) VALUES
(1345, '300730010010330097', 371, 10, 'JANUARIO MARTINS', '', 'BABARSARI TB 16 NO: 16', '-', 'L', 'bt', '1981-04-03', 'VIQUEQUE', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1346, '300730010010340098', 372, 1, 'KANA HARIAWATI', '', 'BABARSARI TB 16/02 RT 16 RW 05', '-', 'P', 'bt', '1984-01-15', 'BERINANG MAYUN', 3, 3, 'PONTIANAK', '1997-12-31', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 70, 65, 6, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1347, '300730010010340099', 372, 10, 'RITHEA LOVISTA, EUGENIA', '', 'BABARSARI TB 16/02 RT 16 RW 05', '-', 'P', 'bt', '1990-11-02', 'BELITANG', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1348, '300730010010340100', 372, 10, 'KHIRANA LINDA RATNASARI', '', 'BABARSARI TB 16/02 RT 16 RW 05', '-', 'P', 'A', '1992-01-06', 'LAMPUNG BARAT', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 8, 65, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1349, '300730010010350101', 373, 1, 'JHON PAREIRA, MARTINS', '', 'BABARSARI TB 18 NO: 12', '-', 'L', 'bt', '1988-04-01', 'MALIANA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1350, '300730010010350102', 373, 10, 'GEOVANIO ALVES', '', 'BABARSARI TB 18 NO: 12', '-', 'L', 'bt', '1988-10-02', 'AINARO', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', '          BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1351, '300730010010350103', 373, 10, 'BENI BENEDICTUS', '', 'BABARSARI TB 18 NO: 12', '-', 'L', 'bt', '1989-09-19', 'KALIMANTAN', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 6, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1352, '300730010010350104', 373, 10, 'JANUARIO', '', 'BABARSARI TB 18 NO: 12', '-', 'L', 'bt', '1983-01-31', 'LOSPALOS', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1353, '300730010010350105', 373, 10, 'MARITO MONIZ', '', 'BABARSARI TB 18 NO: 12', '-', 'L', 'bt', '1985-03-01', 'SUAI', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1354, '300730010010350106', 373, 10, 'NOVIANUS NAHAK', '', 'BABARSARI TB 18 NO: 12', '-', 'L', 'bt', '1987-11-14', 'SUAI', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1355, '300730010010350107', 373, 10, 'ANITO ZERONIMO', '', 'BABARSARI TB 18 NO: 12', '-', 'L', 'bt', '1985-09-28', 'SUAI', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1356, '300730010010350108', 373, 10, 'MANUELA DEONG', '', 'BABARSARI TB 18 NO: 12', '-', 'P', 'bt', '1989-02-06', 'DILI', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1357, '300730010010350109', 373, 10, 'UMBELINA AMARAL', '', 'BABARSARI TB 18 NO: 12', '-', 'P', 'bt', '1990-03-03', 'VIQUEQUE', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1358, '300730010010360110', 374, 1, 'GUILHERME DE CASTRO, GOEVANIA', '', 'BABARSARI TB 16 NO: 14B', '-', 'P', 'B', '1990-02-08', 'VENILALAE', 3, 1, 'BAUCAU', '1990-06-08', 'BUKU III NO: 260 TH: 1990', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1359, '300730010010360111', 374, 10, 'PELANEIO D. NINHO PLACIPO', '', 'BABARSARI TB 16 NO: 14B', '-', 'L', 'AB', '1988-06-07', 'VENILALE', 3, 1, 'VENILALE', '1988-10-07', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1360, '300730010010360112', 374, 10, 'SONIA TERESINHA AMARAI SOARES', '', 'BABARSARI TB 16 NO: 14B', '-', 'P', 'A', '1989-04-12', 'DILI', 3, 1, 'DILI', '1989-10-07', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1361, '300730010010360113', 374, 10, 'GONSALVES EDUARDO', '', 'BABARSARI TB 16 NO: 14B', '-', 'L', 'O', '1983-08-24', 'MALIANA', 3, 1, 'MALIANA', '1983-10-24', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1362, '300730010010360114', 374, 10, 'RIBEIRO BRIGILDO', '', 'BABARSARI TB 16 NO: 14B', '-', 'L', 'O', '1983-06-14', 'BAZARTECE', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 70, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1363, '300730010010360115', 374, 10, 'NILONIA L. A. MOREIRA', '', 'BABARSARI TB 16 NO: 14B', '-', 'P', 'O', '1985-03-30', 'DILI', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1364, '300730010010360116', 374, 10, 'RIBEIRO ALVES CHAREL', '', 'BABARSARI TB 16 NO: 14B', '-', 'L', 'O', '2010-08-14', 'YOGYAKARTA', 3, 1, 'YOGYAKARTA', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 16, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1365, '300730010010360117', 374, 10, 'DONY YUDO SUMARNO PUTRO', '', 'BABARSARI TB 16 NO: 14B', '-', 'L', 'AB', '1987-10-15', 'WONOSARI', 3, 1, 'WONOSARI', '1987-10-15', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 60, 65, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1366, '300730010010370118', 375, 1, 'IOLANDA ALVES', '', 'BABARSARI TB 17 NO: 10', '-', 'P', 'O', '1988-09-09', 'MAUBISSE', 3, 1, 'MAUBISSE', '1989-01-09', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1367, '300730010010370119', 375, 10, 'VIRNA P.B. QUINTANO', '', 'BABARSARI TB 17 NO: 10', '-', 'P', 'A', '1988-07-09', 'VIQUEQUE', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1368, '300730010010370120', 375, 10, 'M. ALVES ENGRACIA', '', 'BABARSARI TB 17 NO: 10', '-', 'P', 'B', '1987-01-03', 'LAGA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1369, '300730010010370121', 375, 10, 'A. MORAIS JUSTA', '', 'BABARSARI TB 17 NO: 10', '-', 'P', 'AB', '1990-08-10', 'SUAI', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1370, '300730010010370122', 375, 10, 'P. ARAUJO JOANINHA', '', 'BABARSARI TB 17 NO: 10', '-', 'P', 'bt', '1985-06-26', 'ERMERA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1371, '300730010010370123', 375, 10, 'VALDANO PINTO SERGIO', '', 'BABARSARI TB 17 NO: 10', '-', 'L', 'bt', '1988-09-18', 'ANARO', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1372, '300730010010370124', 375, 10, 'XERCIO RAMOS', '', 'BABARSARI TB 17 NO: 10', '-', 'L', 'bt', '1985-04-02', 'MALIANA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1373, '300730010010370125', 375, 10, 'K. SEDA, PETRUS', '', 'BABARSARI TB 17 NO: 10', '-', 'L', 'bt', '1987-04-19', 'BAJAWA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1374, '300730010010370126', 375, 10, 'JUDIONE XIMENES FRANCA', '', 'BABARSARI TB 17 NO: 10', '-', 'L', 'bt', '1986-01-10', 'DILI', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1375, '300730010010370127', 375, 10, 'ZOEL RAMOS DELIMA', '', 'BABARSARI TB 17 NO: 10', '-', 'L', 'bt', '1985-10-06', 'DILI', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1376, '300730010010380128', 376, 1, 'LOPES FABIOLA', '', 'BABARSARI TB 17 NO: 18', '-', 'P', 'bt', '1988-10-06', 'DILI', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1377, '300730010010380129', 376, 10, 'DOS SANTOS SOARES CARMELITA', '', 'BABARSARI TB 17 NO: 18', '-', 'P', 'bt', '1983-07-12', 'DILI', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 13, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1378, '300730010010390130', 377, 1, 'YOLINDA MAHULETE', '', 'BABARSARI TB 16 NO: 6B RT 16 RW 05', '-', 'P', 'bt', '1991-11-12', 'MALUKU BARAT', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 60, 65, 1, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1379, '300730010010390131', 377, 10, 'ITA FRANCIS', '', 'BABARSARI TB 16 NO: 6B RT 16 RW 05', '-', 'P', 'bt', '1991-12-17', 'MALUKU BARAT', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 1, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1380, '300730010010390132', 377, 10, 'MARIANA', '', 'BABARSARI TB 16 NO: 6B RT 16 RW 05', '-', 'P', 'bt', '1992-05-13', 'FLORES', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1381, '300730010010390133', 377, 10, 'NITA DEVI ASTUTI', '', 'BABARSARI TB 16 NO: 6B RT 16 RW 05', '-', 'P', 'A', '1991-12-13', 'PURWOREJO', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1382, '300730010010390134', 377, 10, 'DANIELA DE JESUS PAREIRA', '', 'BABARSARI TB 16 NO: 6B RT 16 RW 05', '-', 'P', 'bt', '1990-09-16', 'DILI', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 53, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1383, '300730010010390135', 377, 10, 'MARIA, ANTONIA', '', 'BABARSARI TB 16 NO: 6B RT 16 RW 05', '-', 'P', 'B', '1989-01-17', 'LARANTUKA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1384, '300730010010400136', 378, 1, 'JANUARIO D. S. D. JESUS', '', 'BABARSARI TB 16 NO: 17', '-', 'L', 'bt', '1986-12-31', 'BAUCAU', 3, 1, 'BAUCAU', '1987-05-20', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1385, '300730010010400137', 378, 10, 'DASILVA DOSREIS JULIETA', '', 'BABARSARI TB 16 NO: 17', '-', 'P', 'bt', '1990-06-15', 'VIQUEQUE', 3, 1, 'WATULAR', '1992-12-31', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1386, '300730010010400138', 378, 10, 'SATRI ESPIRITO SANTO, ALEXANDER', '', 'BABARSARI TB 16 NO: 17', '-', 'L', 'O', '1991-11-05', 'LOSPALOS', 3, 1, 'LOSPALOS', '1991-12-25', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1387, '300730010010400139', 378, 10, 'TRIASENDI DENGI, MARIANUS', '', 'BABARSARI TB 16 NO: 17', '-', 'L', 'AB', '1990-09-08', 'BAJAWA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'BABARSARI', '2010-08-15', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 60, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1388, '300730010010410140', 379, 1, 'PAREIRA BELO GREGORIO', '', 'BABARSARI KOMPLEK BATAN CU 9', '-', 'L', 'bt', '1989-07-12', 'TIMOR LESTE', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 15, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1389, '300730010010410141', 379, 10, 'DEWI PRATIWI MANURUNG, THERESIA', '', 'BABARSARI KOMPLEK BATAN CU 9', '-', 'P', 'O', '1988-08-26', 'RANTAU PARAPAT', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 60, 65, 3, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1390, '300730010010410142', 379, 10, 'RICA ARIZONA', '', 'BABARSARI KOMPLEK BATAN CU 9', '-', 'P', 'A', '1990-03-23', 'KALIMANTAN TIMUR', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 60, 65, 6, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1391, '300730010010410143', 379, 10, 'RETNO DHETA, FRANSISCA', '', 'BABARSARI KOMPLEK BATAN CU 9', '-', 'P', 'O', '1992-08-06', 'PALEMBANG', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 60, 65, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1392, '300730010010410144', 379, 10, 'TEY SERAN, GAUDENSIUS', '', 'BABARSARI KOMPLEK BATAN CU 9', '-', 'L', 'A', '1991-12-02', 'BESIHANA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1393, '300730010010410145', 379, 10, 'WANE BATSERAN, PETRUS', '', 'BABARSARI KOMPLEK BATAN CU 9', '-', 'L', 'O', '1990-02-15', 'MAKASSAR', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 13, 65, 11, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1394, '300730010010410146', 379, 10, 'SANDI MARIA VIANEY', '', 'BABARSARI KOMPLEK BATAN CU 9', '-', 'P', 'A', '1993-08-04', 'PALANGKARAYA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 3, 65, 6, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1395, '300730010010420147', 380, 1, 'VARELA NIHA, HERMINIA', '', 'BABRSARI KOMPLEK PJKA NO: 21', '82134972781', 'P', 'B', '1986-02-27', 'DILI', 3, 1, 'BECORA', '1986-04-15', 'LB 14 NO: 148', '', '', '2', '', 'BECORA', '2005-11-21', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 23, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1396, '300730010010420148', 380, 10, 'DA CRUZ SOUSA TECLA', '', 'BABRSARI KOMPLEK PJKA NO: 21', '82134972781', 'P', 'O', '1990-03-17', 'DILI', 3, 1, 'BECORA', '1990-06-21', 'LB 21 NO: 212', '', '', '2', '', 'BECORA', '2008-01-20', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1397, '300730010010420149', 380, 10, 'AURELIA NOVIE ARYANTI. MIKHAEL', '', 'BABRSARI KOMPLEK PJKA NO: 21', '82134972781', 'P', 'B', '1986-11-02', 'KEBUMEN', 3, 2, 'GOMBONG', '1999-04-09', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 70, 65, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1398, '300730010010430150', 381, 1, 'TANI, AGUSTINUS', '', 'BABARSARI TB 17 NO: 6A', '87839073937', 'L', 'B', '1983-08-25', 'SURABAYA', 3, 1, 'MAUMERE', '1984-12-15', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 15, 60, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1399, '300730010010430151', 381, 10, 'SIREGAR, JONATHAN', '', 'BABARSARI TB 17 NO: 6A', '87839073937', 'L', 'bt', '1986-09-16', 'MEDAN', 3, 1, 'MEDAN', '1990-03-28', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 60, 65, 3, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1400, '300730010010440152', 382, 1, 'DOS SANTOS ROZIANA', '', 'KOMP. YADARA BLOK I/19 BABARSARI', '82133416104', 'P', 'bt', '1989-11-12', 'SAME', 3, 1, 'SAME', '1990-01-25', 'BUKU IV, HAL: 100, NO: 71', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 39, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1401, '300730010010440153', 382, 10, 'DA SILVA CARVALHO', '', 'KOMP. YADARA BLOK I/19 BABARSARI', '82133416104', 'P', 'O', '1988-08-15', 'DILI', 3, 1, 'MOTAEL', '1988-11-28', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1402, '300730010010440154', 382, 10, 'DOS SANTOS ADELIA', '', 'KOMP. YADARA BLOK I/19 BABARSARI', '82133416104', 'P', 'bt', '1989-09-15', 'DILI', 3, 1, 'BECORA', '1989-12-12', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1403, '300730010010450155', 383, 1, 'VANIA CELESTINA', '', 'KOMPLEKS PJKA NO: 19 BABARSARI', '-', 'P', 'bt', '1989-02-20', 'LACLUBAR', 3, 1, 'LACLUBAR', '1989-08-20', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1404, '300730010010450156', 383, 10, 'INDE DO R. MAGNO, PATRICIA', '', 'KOMPLEKS PJKA NO: 19 BABARSARI', '-', 'P', 'bt', '1987-02-23', 'DILI', 3, 1, 'DILI', '1987-06-10', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1405, '300730010010450157', 383, 10, 'MENDONCA SOARES, AURELIA', '', 'KOMPLEKS PJKA NO: 19 BABARSARI', '-', 'P', 'bt', '1989-04-11', 'SUAI', 3, 1, 'SUAI', '1989-09-02', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1406, '300730010010460158', 384, 1, 'ARISTA NARA, KRISNA', '', 'KOMPLEK YADARA, BLOK 5/09 BABARSARI', '-', 'L', 'O', '1989-02-06', 'AMPENAN', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'AMPENAN', '2001-10-07', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 15, 3, 65, 20, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1407, '300730010010470159', 385, 1, 'BENI, BENEDICTUS', '', 'TB 16, NO: 2A BABARSARI', '-', 'L', 'A', '1989-09-19', 'SINTANG', 3, 1, 'NANGAMAU', '1989-12-25', 'BUKU I, NO: 358', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 60, 65, 6, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1408, '300730010010470160', 385, 10, 'L. TOBING, WILIAM', '', 'TB 16, NO: 2A BABARSARI', '-', 'L', 'O', '1988-09-23', 'LOMBOK', 3, 1, 'PALEMBANG', '1990-02-14', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 3, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1409, '300730010010470161', 385, 10, 'R. RAHARUSUN JOY', '', 'TB 16, NO: 2A BABARSARI', '-', 'L', 'B', '1988-07-26', 'MALUKU', 3, 1, 'KEI', '1990-08-02', 'BUKU VII, HAL: 90, NO: 709', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 1, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1410, '300730010010480162', 386, 1, 'BARITA TAMPUBOLON YOANDRIATUR', '', 'TB 18/14X BABARSARI', '-', 'L', 'AB', '1989-04-08', 'PALEMBANG', 3, 1, 'PALEMBANG', '1989-12-17', 'BUKU II, HAL: 56, NO: 225', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 15, 39, 65, 3, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1411, '300730010010480163', 386, 10, 'INDRA BONA I. S.', '', 'TB 18/14X BABARSARI', '-', 'L', 'O', '1988-04-22', 'BANJARMASIN', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 3, 65, 3, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1412, '300730010010490164', 387, 1, 'VALERIANUS ANISETUS, FRANSISCO', '', 'BABARSARI TB 08/16F', '82134821458', 'L', 'B', '1989-04-14', 'JAKARTA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 24, 60, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1413, '300730010010490165', 387, 10, 'MARIO FREITAS B. AJELINUS', '', 'BABARSARI TB 08/16F', '82134821458', 'L', 'bt', '1984-05-24', 'ENDE', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1414, '300730010010490166', 387, 10, 'MARIANTO, YOHANES', '', 'BABARSARI TB 08/16F', '82134821458', 'L', 'O', '1984-11-04', 'FLORES', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 60, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1415, '300730010010490167', 387, 10, 'JEFRY LANGA', '', 'BABARSARI TB 08/16F', '82134821458', 'L', 'O', '1986-01-29', 'FLORES', 3, 1, 'ENDE', '1986-01-29', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1416, '300730010010490168', 387, 10, 'APOLONIUS, PAULUS', '', 'BABARSARI TB 08/16F', '82134821458', 'L', 'B', '1985-05-21', 'SINTANG', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1417, '300730010010490169', 387, 10, 'KEWIHAL, WENSESLAUS', '', 'BABARSARI TB 08/16F', '82134821458', 'L', 'A', '1989-02-18', 'LEMBATA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 3, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1418, '300730010010490170', 387, 10, 'HULLEI CHARLES', '', 'BABARSARI TB 08/16F', '82134821458', 'L', 'B', '1989-11-14', 'ADONARA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1419, '300730010010490171', 387, 10, 'PICHE KEDANG', '', 'BABARSARI TB 08/16F', '82134821458', 'L', 'B', '1990-07-14', 'LEWOLEBA', 3, 1, 'LEWOLEBA', '1991-06-01', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1420, '300730010010500172', 388, 1, 'JULIO SILVA FREITAS, NORBERTINO', '', 'BABRSARI KOMPLEK PJKA NO: 09', '-', 'L', 'O', '1991-11-06', 'TIMOR LESTE', 3, 1, 'VIQUEQUE', '1992-06-14', 'SDH', '', '', '2', '', 'VIQUEQUE', '2003-08-17', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1421, '300730010010500173', 388, 10, 'BARDETO S. A., LETICIA', '', 'BABRSARI KOMPLEK PJKA NO: 09', '-', 'P', 'B', '1990-06-24', 'DILI', 3, 1, 'DILI', '1990-12-31', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 63, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1422, '300730010010500174', 388, 10, 'LOVERNIA HAY, MARIA', '', 'BABRSARI KOMPLEK PJKA NO: 09', '-', 'P', 'A', '1992-06-11', 'MANOKWARI', 3, 1, 'MANOKWARI', '1993-06-11', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 66, 65, 8, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1423, '300730010010500175', 388, 10, 'DA C. MARTINS, DOROTHEA', '', 'BABRSARI KOMPLEK PJKA NO: 09', '-', 'P', 'AB', '1991-12-18', 'MAUBARA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 63, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1424, '300730010010500176', 388, 10, 'NAGA RAYA SINAGA', '', 'BABRSARI KOMPLEK PJKA NO: 09', '-', 'L', 'O', '1991-08-14', 'RUMAH SUMBUL', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 63, 65, 3, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1425, '300730010010510177', 389, 1, 'PITO NAING, PETRUS', '', 'BABRSARI TB 18 NO: 13', '81353677353', 'L', 'B', '1991-07-30', 'LEWOLEBA', 3, 1, 'KARANGORA', '1992-03-02', 'SDH', '', '', '2', '', 'KARANGORA', '2004-10-21', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 15, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1426, '300730010010510178', 389, 10, 'LUDA, YOHANES', '', 'BABRSARI TB 18 NO: 13', '81353677353', 'L', 'O', '1990-11-17', 'BAJAWA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'AMBON', '2001-11-21', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1427, '300730010010510179', 389, 10, 'LADURTAS, JOSEPH', '', 'BABRSARI TB 18 NO: 13', '81353677353', 'L', 'A', '1987-04-04', 'AMBON', 3, 1, 'PASSO', '1991-11-08', 'SDH', '', '', '2', '', 'AMBON', '2001-11-21', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 70, 65, 1, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1428, '300730010010520180', 390, 1, 'NIDIO M. SANTOS DA CUNHA', '', 'BABARSARI TB 18 NO: 3C', '82134979880', 'L', 'bt', '1989-11-23', 'DILI', 3, 1, 'SDH', '0000-00-00', '', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 15, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1429, '300730010010520181', 390, 10, 'HUGO SOARES PINTO', '', 'BABARSARI TB 18 NO: 3C', '82134979880', 'L', 'bt', '1987-05-12', 'DILI', 3, 1, 'DILI', '1991-07-12', 'LB 2 NO: 817, TH: 1991', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1430, '300730010010520182', 390, 10, 'MARITIUS T. LAMAK ANTONIUS', '', 'BABARSARI TB 18 NO: 3C', '82134979880', 'L', 'bt', '1987-04-13', 'DILI', 3, 1, 'SDH', '0000-00-00', '', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 60, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1431, '300730010010520183', 390, 10, 'DOMINGOS AGOSTINHO DE J. X.', '', 'BABARSARI TB 18 NO: 3C', '82134979880', 'L', 'O', '1988-03-13', 'LALEILA', 3, 1, 'SDH', '0000-00-00', '', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1432, '300730010010530184', 391, 1, 'MAYASARI, AGATHA', '', 'BABARSARI KOMPLEK BATAN NO: CU I', '85273504962', 'P', 'A', '1993-02-05', 'PALEMBANG', 3, 1, 'SUNGAI LILIN', '1993-02-16', 'BUKU I HAL: 88, NO: 349', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 15, 39, 65, 7, 400, 0, 1, 2, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1433, '300730010010530185', 391, 10, 'TYAS UTAMI, MONIKA', '', 'BABARSARI KOMPLEK BATAN NO: CU I', '85273504962', 'P', 'A', '1991-06-19', 'WONOGIRI', 3, 1, 'WONOGIRI', '1991-07-27', 'BUKU V HAL: 97 NO: 5328', '', '', '2', '', 'WONOGIRI', '2003-10-26', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 3, 65, 9, 261, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1434, '300730010010530186', 391, 10, 'MAYA ARISTIYA, MARIA', '', 'BABARSARI KOMPLEK BATAN NO: CU I', '85273504962', 'P', 'bt', '1992-03-26', 'GOMBONG', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 3, 65, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1435, '300730010010540187', 392, 1, 'JUVITA HORACIO', '', 'KOMPLEK YADARA BLOK 5 NO: 2 RT 32 RW 06', '81239441784', 'P', 'bt', '1983-10-05', 'DILI', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 15, 39, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1436, '300730010010540188', 392, 10, 'GUSMAO, GABRIELA', '', 'KOMPLEK YADARA BLOK 5 NO: 2 RT 32 RW 06', '81239441784', 'P', 'bt', '1983-07-25', 'DILI', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 23, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1437, '300730010010540189', 392, 10, 'CARLOTA DE J. P., RICARDINA', '', 'KOMPLEK YADARA BLOK 5 NO: 2 RT 32 RW 06', '81239441784', 'P', 'bt', '1988-10-28', 'DILI', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 60, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1438, '300730010010550190', 393, 1, 'YASINTA, KRISTI', '', 'PERUM PJKA NO: 12 BABARSARI', '85647397189', 'P', 'A', '1990-04-21', 'BENGKAYANG', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 15, 34, 65, 6, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1439, '300730010010550191', 393, 10, 'RIKA SRYWAHYUNI', '', 'PERUM PJKA NO: 12 BABARSARI', '85647397189', 'P', 'bt', '1991-02-04', 'KARANGAN', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 34, 65, 6, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1440, '300730010010550192', 393, 10, 'NESYA AYUNANI', '', 'PERUM PJKA NO: 12 BABARSARI', '85647397189', 'P', 'O', '1989-02-15', 'SURAKARTA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 13, 65, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1441, '300730010010560193', 394, 1, 'DE ARAUJO XIMENES, ADRIANO', '', 'BABARSARI TB 18 NO: 09', '81328766526', 'L', 'bt', '1987-10-05', 'AINARO', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'AINARO', '2001-12-31', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 15, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1442, '300730010010560194', 394, 10, 'MANUEL C. DA CONCEICAO JUSTINHO', '', 'BABARSARI TB 18 NO: 09', '81328766526', 'L', 'A', '1990-08-07', 'DILI', 3, 1, 'DILI', '1991-07-23', 'SDH', '', '', '2', '', 'DILI', '2004-12-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1443, '300730010010560195', 394, 10, 'JOSE ALVES', '', 'BABARSARI TB 18 NO: 09', '81328766526', 'L', 'bt', '1990-10-19', 'DILI', 3, 1, 'DILI', '1991-12-31', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 70, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1444, '300730010010570196', 395, 1, 'SAPARINI HASTUTI, LUSIA', '', 'KOMPLEK YADARA IV/14 RT 20 RW 06', '8122726703', 'P', 'O', '1979-10-22', 'BALIK PAPAN', 3, 1, 'BALIK PAPAN', '1982-06-06', 'BUKU III, HAL: 74 NO: 2758', '', '', '2', '', 'BALIK PAPAN', '1996-11-28', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 5, 11, 37, 9, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1445, '300730010010570197', 395, 10, 'AJENG DIAH ASTUTI, ANASTASIA', '', 'KOMPLEK YADARA IV/14 RT 20 RW 06', '8122726703', 'P', 'O', '1980-04-02', 'MENTOK BANGKA', 3, 1, 'BANDUNG', '1980-04-02', 'TAHUN 1983, NO: 07', '', '', '2', '', 'KOTA BARU', '1998-06-14', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 13, 37, 9, 400, 0, 1, 6, 0, 5, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1446, '300730010010570198', 395, 10, 'ANVILA DESIANTRY, GUSTAVIA', '', 'KOMPLEK YADARA IV/14 RT 20 RW 06', '8122726703', 'P', 'O', '1987-12-16', 'LELA MAUMERE', 3, 1, 'SIKKA', '1988-07-03', '', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 25, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1447, '300730010010570199', 395, 10, 'SELVITRIYANI BR SEMBIRING', '', 'KOMPLEK YADARA IV/14 RT 20 RW 06', '8122726703', 'P', 'B', '1984-01-09', 'KABANJAHE', 3, 1, 'SDH', '0000-00-00', '', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 63, 65, 3, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1448, '300730010010580200', 396, 1, 'BARROS, FERDIANO', '', 'BABARSARI TB 18 NO: 10', '-', 'L', 'bt', '1987-03-04', 'DILI', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1449, '300730010010580201', 396, 10, 'GOMES OLAVIO', '', 'BABARSARI TB 18 NO: 10', '-', 'L', 'bt', '1986-06-05', 'DILI', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1450, '300730010010580202', 396, 10, 'PAREIRA BELO, GREGORIO', '', 'BABARSARI TB 18 NO: 10', '-', 'L', 'bt', '1989-12-07', 'BAUCAU', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1451, '300730010010580203', 396, 10, 'TILMAN MARQUES, ANTONIO', '', 'BABARSARI TB 18 NO: 10', '-', 'L', 'bt', '1986-08-16', 'VENILALE', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1452, '300730010010590204', 397, 1, 'YOSMIN, VINSENSIUS', '', 'BABARSARI TB 18/16A', '-', 'L', 'O', '1982-07-19', 'MAUMERE', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 15, 63, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1453, '300730010010590205', 397, 10, 'PINTO SOARES, FERDINANDUS', '', 'BABARSARI TB 18/16A', '-', 'L', 'A', '1990-06-11', 'MANOKWARI', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1454, '300730010010590206', 397, 10, 'MARIO R. RHAKI, YOANNES', '', 'BABARSARI TB 18/16A', '-', 'L', 'O', '1989-05-24', 'ENDE', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1455, '300730010010590207', 397, 10, 'PATRICIUS B. WEA, YOHANES', '', 'BABARSARI TB 18/16A', '-', 'L', 'O', '1989-03-15', 'ENDE', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 13, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1456, '300730010010600208', 398, 1, 'ELSA DWI PUTRI, KRISTINA', '', 'BABARSARI TB 16 NO: 16A', '-', 'P', 'B', '1986-11-02', 'PAHAUMAN', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'PAHAUMAN', '2001-10-21', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 34, 65, 6, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1457, '300730010010600209', 398, 10, 'P. RIANDIKA, ALOYSIUS', '', 'BABARSARI TB 16 NO: 16A', '-', 'L', 'O', '1985-03-02', 'SURABAYA', 3, 1, 'SURABAYA', '1985-12-31', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 70, 65, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1458, '300730010010600210', 398, 10, 'SANTIKA VIDIADARI, IRENE', '', 'BABARSARI TB 16 NO: 16A', '-', 'P', 'A', '1990-03-18', 'BANJAR', 3, 1, 'BANJAR', '1990-12-31', 'SDH', '', '', '2', '', 'MUNTILAN', '2008-12-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 70, 65, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1459, '300730010010610211', 399, 1, 'CARLOTA DE JESUS PAREIRA RICARDINA', '', 'KOMPLEK YADARA, BLOK IV NO: 12A', '-', 'P', 'bt', '1988-10-28', 'TIMOR LESTE', 3, 1, 'TIMOR LESTE', '1989-07-23', 'SDH', '', '', '2', '', 'TIMOR LESTE', '2006-08-07', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1460, '300730010010610212', 399, 10, 'C. R. S. ALVES ELDA', '', 'KOMPLEK YADARA, BLOK IV NO: 12A', '-', 'P', 'bt', '1990-09-27', 'TIMOR LESTE', 3, 1, 'TIMOR LESTE', '1990-12-28', 'BUKU IIV, NO: 360', '', '', '2', '', 'TIMOR LESTE', '2004-09-04', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 52, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1461, '300730010010610213', 399, 10, 'FREITAS BAOVIDA, GENOVEVA', '', 'KOMPLEK YADARA, BLOK IV NO: 12A', '-', 'P', 'bt', '1989-02-04', 'TIMOR LESTE', 3, 1, 'TIMOR LESTE', '1989-06-06', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1462, '300730010010610214', 399, 10, 'E. DOS SANTOS DA SILVA GLENDA', '', 'KOMPLEK YADARA, BLOK IV NO: 12A', '-', 'P', 'bt', '1991-08-12', 'TIMOR LESTE', 3, 1, 'TIMOR LESTE', '1991-09-25', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1463, '300730010010610215', 399, 10, 'ALFONSO DA SILVA TELIFINA', '', 'KOMPLEK YADARA, BLOK IV NO: 12A', '-', 'P', 'bt', '1979-08-08', 'TIMOR LESTE', 3, 1, 'TIMOR LESTE', '1989-09-20', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1464, '300730010010610216', 399, 10, 'F. P. C. DEONG MANUELA', '', 'KOMPLEK YADARA, BLOK IV NO: 12A', '-', 'P', 'bt', '1989-02-06', 'TIMOR LESTE', 3, 1, 'TIMOR LESTE', '1989-02-06', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1465, '300730010010620217', 400, 1, 'SELVITRIYANI BR SEMBIRING', '', 'KOMPLEK YADARA BLOK IV NO: 14', '-', 'L', 'B', '1984-01-09', 'KABANJAHE', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 15, 63, 65, 3, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1466, '300730010010620218', 400, 10, 'MEDITA LENTA', '', 'KOMPLEK YADARA BLOK IV NO: 14', '-', 'P', 'O', '1991-03-26', 'TIANG TANJUNG', 3, 1, 'TIANG TANJUNG', '1991-12-31', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 34, 65, 6, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1467, '300730010010620219', 400, 10, 'SELVERA, MARIA', '', 'KOMPLEK YADARA BLOK IV NO: 14', '-', 'P', 'bt', '1990-09-15', 'MENTONYE', 3, 1, 'MENTONYE', '1990-12-31', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 6, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1468, '300730010010630220', 401, 1, 'KUN PADRIANUS', '', 'BABARSARI TB 08 NO: 16A', '-', 'L', 'A', '1992-01-01', 'LO''ONEKE', 3, 1, 'LO''ONEKE', '1992-08-04', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 34, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1469, '300730010010630221', 401, 10, 'ADRIANUS KLAU, YOHANES', '', 'BABARSARI TB 08 NO: 16A', '-', 'L', 'O', '1988-07-27', 'BUDUKFOITO', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1470, '300730010010630222', 401, 10, 'M. NAHAK, YULIANUS', '', 'BABARSARI TB 08 NO: 16A', '-', 'L', 'bt', '1985-04-25', 'ATAMBUA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1471, '300730010010630223', 401, 10, 'AS, FERDINANDUS', '', 'BABARSARI TB 08 NO: 16A', '-', 'L', 'bt', '1992-02-19', 'ATAPUPU', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1472, '300730010010630224', 401, 10, 'AGUNG ARIFIYANTO, TARSISIUS', '', 'BABARSARI TB 08 NO: 16A', '-', 'L', 'O', '1991-02-05', 'WERAIHENEK', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 22, 65, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1473, '300730010010630225', 401, 10, 'KAPRISIUS NGATE, YOHANES', '', 'BABARSARI TB 08 NO: 16A', '-', 'L', 'B', '1992-04-17', 'ARABENO', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 63, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1474, '300730010010630226', 401, 10, 'VASCULATUS, KRISTIANUS', '', 'BABARSARI TB 08 NO: 16A', '-', 'L', 'O', '1990-09-04', 'BAJAWA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 22, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1475, '300730010010630227', 401, 10, 'CHANDRA FERNANDES, HYASINTUS', '', 'BABARSARI TB 08 NO: 16A', '-', 'L', 'O', '1988-05-25', 'JAYAPURA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 60, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1476, '300730010010630228', 401, 10, 'VINSEN BOLY, THOMAS', '', 'BABARSARI TB 08 NO: 16A', '-', 'L', 'O', '1989-09-19', 'KEWAPANTE', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 52, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1477, '300730010010640229', 402, 1, 'LITYA, CHRISTIAN', '', 'BABARSARI I NO: 2', '-', 'L', 'O', '1989-05-03', 'PADANG', 3, 1, 'SDH', '0000-00-00', '', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 15, 3, 65, 17, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1478, '300730010010650230', 403, 1, 'GRAITA PURWA AMARTA, CICILIA', '', 'GANG PURI SARI NO: 03 BABARSARI', '-', 'P', 'O', '1990-12-28', 'TEMANGGUNG', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 15, 66, 65, 9, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1479, '300730010010660231', 404, 1, 'INGRIDA, ELISABETH', '', 'YADARA BABARSARI', '-', 'P', 'O', '1990-07-05', 'RUTENG', 3, 1, 'SDH', '0000-00-00', '', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 34, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1480, '300730010010670232', 405, 1, 'ANDRIANA OKY, MARIA', '', 'TB 16/10 - TB 17 NO: 6C', '-', 'P', 'B', '1993-04-17', 'KEFA', 3, 1, 'KEFA', '1993-09-16', '', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 20, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1481, '300730010010670233', 405, 10, 'IDA MARIANA SINGGU', '', 'TB 16/10 - TB 17 NO: 6C', '-', 'P', 'B', '1991-03-01', 'BAJAWA', 3, 1, 'BAJAWA', '1991-05-12', '', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 50, 65, 7, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1482, '300730010010670234', 405, 10, 'SELEMBUN, THERESIA', '', 'TB 16/10 - TB 17 NO: 6C', '-', 'P', 'AB', '1991-08-09', 'SAUMLAKI', 3, 1, 'SAUMLAKI', '1997-12-26', '', '', '', '2', '', 'SIFNARA', '2004-10-30', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 52, 65, 1, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1483, '300730010010670235', 405, 10, 'MARIAZINHA MONIS SARMENTO', '', 'TB 16/10 - TB 17 NO: 6C', '-', 'P', 'O', '1992-01-16', 'SUAI', 3, 1, 'SDH', '0000-00-00', '', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 52, 65, 19, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1484, '300730010010670236', 405, 10, 'JUSTA AMURAL MORAIS', '', 'TB 16/10 - TB 17 NO: 6C', '-', 'P', 'bt', '1990-02-08', 'SUAI', 3, 1, 'SDH', '0000-00-00', '', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 52, 65, 19, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1485, '300730010010670237', 405, 10, 'ENGRACIA AVES MENDOS', '', 'TB 16/10 - TB 17 NO: 6C', '-', 'P', 'bt', '1990-12-31', 'SUAI', 3, 1, 'SDH', '0000-00-00', '', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 52, 65, 19, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1486, '300730010010670238', 405, 10, 'ANITA SOFIANA TAB', '', 'TB 16/10 - TB 17 NO: 6C', '-', 'P', 'A', '1992-03-26', 'SUAI', 3, 1, 'SUAI', '1997-12-27', '', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 19, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1487, '300730010010680239', 406, 1, 'SR. ROSA DE LIMA UWUH SARI', '', 'KOMPLEK YADARA BLOK III NO: 19', '-', 'P', 'AB', '1971-11-09', 'PROPAN', 3, 1, 'PROPAN', '1971-11-21', 'BUKU IV NO: 270', '', '', '2', '', 'AIR MOLEK', '1985-08-12', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 14, 70, 55, 9, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1488, '300730010010680240', 406, 10, 'SR. MARIA RINIATI', '', 'KOMPLEK YADARA BLOK III NO: 19', '-', 'P', 'B', '1974-02-08', 'SINDANG', 3, 1, 'SINDANG', '1974-02-26', 'BUKU I, HAL: 86, NO: 342', '', '', '2', '', 'SINDANG', '1990-08-20', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 70, 55, 9, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL);
INSERT INTO `umats` (`id`, `kode_umat`, `id_kk`, `id_hubkk`, `nama`, `email`, `alamat`, `tlp`, `jenis_kelamin`, `goldarah`, `tgl_lahir`, `tmplahir`, `id_agama`, `id_statusbaptis`, `tmpbaptis`, `tglbaptis`, `liberbap`, `romobaptis`, `namabaptis`, `stskrisma`, `namakrisma`, `tmpkrisma`, `tglkrisma`, `romokrisma`, `stskomuni`, `tmpkomuni`, `tglkomuni`, `id_statuspernikahan`, `tempatnikah`, `kotamenikah`, `tglnikah`, `libermat`, `romopernikahan`, `id_pendidikan`, `id_bidstudi`, `id_pekerjaan`, `id_suku`, `id_tempattinggal`, `lamatinggal`, `statusTT`, `id_keaktifanparoki`, `id_keaktifangereja`, `id_statuskekatolikan`, `id_statusekonomi`, `id_statuskesehatan`, `id_statussosial`, `jeniskk`, `statuspindah`, `statuskematian`, `nama_ayah`, `nama_ibu`) VALUES
(1489, '300730010010680241', 406, 10, 'MARGARETHA WULANDARI', '', 'KOMPLEK YADARA BLOK III NO: 19', '-', 'P', 'O', '1990-11-10', 'SENTAJO', 3, 1, 'SDH', '0000-00-00', 'BUKU II, HAL: 75, NO: 298', '', '', '2', '', 'AIR MOLEK', '2004-04-20', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 13, 70, 55, 9, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1490, '300730010010690242', 407, 1, 'RUBIYASIH RENTINA', '', 'BABARSARI 42 KOMPLEK YADARA BLOK V', '81914180799', 'P', 'A', '1956-03-29', 'YOGYAKARTA', 3, 7, 'PRINGWULUNG', '2004-04-01', 'BUKU II, HAL 115, NO 619', '', '', '2', '', 'BABARSARI', '2010-12-31', '', '0', '', '0000-00-00', 5, 'JAKARTA', NULL, '1990-12-31', 'KUA, 2007/66/1990', '', 4, 13, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1491, '300730010010690243', 407, 2, 'SUTRISNO GUNAWAN', '', 'BABARSARI 42 KOMPLEK YADARA BLOK V', '81914180799', 'L', 'O', '1950-12-22', 'WONOSARI', 7, 11, 'TDK', '0000-00-00', '', '', '', '1', '', 'TDK', '0000-00-00', '', '0', '', '0000-00-00', 5, 'JAKARTA', NULL, '1990-12-31', 'KUA, 2007/66/1990', '', 6, 56, 31, 9, 99, 0, 1, 0, 0, 0, 2, 0, 99, 0, 0, 0, NULL, NULL),
(1492, '300730010010690244', 407, 3, 'RETNA SATUTI HELIMA', '', 'BABARSARI 42 KOMPLEK YADARA BLOK V', '81914180799', 'P', 'A', '1993-06-23', 'YOGYAKARTA', 3, 2, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 64, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1493, '300730010010700245', 408, 1, 'ARY SAGITARIJANTO, NATALIUS', '', 'YADARA BLOK III/16A RT 23 RW 06', '0274-485403', 'L', 'A', '1971-12-19', 'BOGOR', 3, 1, 'BOGOR', '1973-02-18', 'BUKU XI, HAL 72, NO: 22', '', '', '2', '', 'JAKARTA', '1990-05-06', '', '0', '', '0000-00-00', 2, 'YOGYAKARTA', NULL, '2001-07-14', 'ANNO 2001/ LM III, FOL 256 NO: 766', '', 5, 60, 56, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1494, '300730010010700246', 408, 2, 'DIAN HARIYATI, VERONIKA', '', 'YADARA BLOK III/16A RT 23 RW 06', '0274-485403', 'P', 'B', '1972-09-13', 'MALANG', 3, 1, 'MALANG', '1972-09-17', 'REG. V FOL .... NO: 592/118', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'YOGYAKARTA', NULL, '2001-07-14', 'ANNO 2001/ LM III, FOL 256 NO: 766', '', 5, 56, 56, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1495, '300730010010700247', 408, 3, 'VINCENTIO ADRYAH, ALBERTUS', '', 'YADARA BLOK III/16A RT 23 RW 06', '0274-485403', 'L', 'B', '2002-09-19', 'YOGYAKARTA', 3, 1, 'DEPOK', '2003-05-11', 'BUKU III, HAL; 011;NO;2240', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1496, '300730010010700248', 408, 3, 'VANYA ADRYAN, YOSEPHIN', '', 'YADARA BLOK III/16A RT 23 RW 06', '0274-485403', 'P', 'A', '2004-06-30', 'JAKARTA', 3, 1, 'DEPOK', '2005-02-13', 'BUKU III, HAL: 083, NO: 2456', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1497, '300730010010710249', 409, 1, 'SADILAH DWIDJOWINOTO, THERESIA', '', 'YADARA, BLOK II/11, RT 22 RW 06 BABARSARI', '811257473', 'P', 'O', '1945-12-31', 'YOGYAKARTA', 3, 8, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'YOGYAKARTA', NULL, '1945-12-31', 'SDH', '', 2, 66, 34, 9, 100, 0, 1, 6, 0, 1, 2, 55, 4, 0, 0, 0, NULL, NULL),
(1498, '300730010010720250', 410, 1, 'SAHAT SIMBOLON', '', 'PERUM BATAM CU 27 TB 55821', '784327', 'L', 'O', '1951-12-03', 'MEDAN', 3, 1, 'MEDAN', '1953-12-31', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'KRISTUS RAJA SURABAYA', NULL, '1981-08-08', 'NO: 283/1981', '', 6, 36, 37, 3, 100, 0, 1, 6, 0, 7, 1, 0, 1, 0, 0, 0, NULL, NULL),
(1499, '300730010010720251', 410, 2, 'YETTY TJANDRAWATI M., MAGDALENA', '', 'PERUM BATAM CU 27 TB 55821', '784327', 'P', 'O', '1953-08-02', 'SURABAYA', 3, 2, 'SURABAYA', '1963-05-25', 'BUKU II B, NO: 2417', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 3, 'KRISTUS RAJA SURABAYA', NULL, '1981-08-08', 'NO: 283/1981', '', 6, 36, 31, 9, 100, 0, 1, 6, 0, 3, 1, 0, 1, 0, 0, 0, NULL, NULL),
(1500, '300730010010720252', 410, 3, 'SIMBOLON FRANSCISCUS ROBERT', '', 'PERUM BATAM CU 27 TB 55821', '784327', 'L', 'O', '1986-01-28', 'YOGYAKARTA', 3, 1, 'SVD', '1986-04-26', 'BUKU VI, HAL 217, NO:868', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 60, 56, 3, 309, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1501, '300730010010720253', 410, 3, 'YETTY SIMBOLON AGATHA STEPHANIE', '', 'PERUM BATAM CU 27 TB 55821', '784327', 'P', 'O', '1990-05-14', 'YOGYAKARTA', 3, 1, 'BACIRO', '1993-06-06', 'BUKU VIII, HAL: 162, NO: 486', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 23, 65, 3, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1502, '300730010010730254', 411, 1, 'SOENARTO, IGNATIUS', '', 'BABARSARI 102, RT 11 RW 04 TB 55281', '0274-86915', 'L', 'O', '1939-05-31', 'KLATEN', 3, 2, 'WEDI KLATEN', '1957-04-20', 'BUKU IV, NO: 1265', '', '', '2', '', 'WEDI', '1957-12-31', '', '0', '', '0000-00-00', 2, 'BABARSARI', NULL, '2010-07-31', 'NO: 55, LM I', '', 5, 44, 34, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1503, '300730010010730255', 411, 2, 'HARYANI, IRMINA', '', 'BABARSARI 102, RT 11 RW 04 TB 55281', '0274-86915', 'P', 'O', '1953-12-19', 'YOGYAKARTA', 3, 8, 'BACIRO', '1976-12-31', 'SDH', '', '', '2', '', 'BACIRO', '1976-12-31', '', '0', '', '0000-00-00', 2, 'BABARSARI', NULL, '2010-07-31', 'NO: 55, LM I', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1504, '300730010010740256', 412, 1, 'HENNY PASKALIA FIRMANTO', '', 'RUKO BABARSARI NO: 83', '8132828991', 'P', 'bt', '1958-12-14', 'JAKARTA', 3, 8, 'RS. BETHESDA', '2010-12-31', 'SDH', '', '', '2', '', 'RS. BETHESDA', '2010-12-31', '', '0', '', '0000-00-00', 6, 'JAKARTA', NULL, '1945-12-31', 'SDH', '', 1, 66, 62, 17, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1505, '300730010010750257', 413, 1, 'HASAN TIO BENEDICTUS AMOS', '', 'BABARSARI TB 16/15D RW 05', '0274-484812', 'L', 'O', '1979-08-17', 'PONTIANAK', 3, 7, 'BABARSARI', '2009-12-31', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'KATARINA, TM II', NULL, '2009-06-21', 'SDH', '', 3, 66, 56, 17, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1506, '300730010010750258', 413, 2, 'RUSSYANA FIRMANTO VERENA', '', 'BABARSARI TB 16/15D RW 05', '0274-484812', 'P', 'A', '1979-12-02', 'JAKARTA', 3, 5, 'KRAWANG', '1996-12-23', 'SDH', '', '', '2', '', 'PONTIANAK', '1998-12-31', '', '0', '', '0000-00-00', 2, 'KATARINA, TM II', NULL, '2009-06-21', 'SDH', '', 5, 13, 56, 17, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1507, '300730010010750259', 413, 4, 'PUTRIYANA, RAFAELA', '', 'BABARSARI TB 16/15D RW 05', '0274-484812', 'P', 'O', '1988-10-12', 'JAKARTA', 3, 5, 'BABARSARI', '2008-12-31', 'SDH', '', '', '2', '', 'BABARSARI', '2010-08-15', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 13, 65, 17, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1508, '300730010010750260', 413, 4, 'TRESA CATARENA, ALEXANDRIA', '', 'BABARSARI TB 16/15D RW 05', '0274-484812', 'P', 'A', '1978-10-13', 'JAKARTA', 3, 5, 'JAKARTA', '1994-12-31', 'SDH', '', '', '2', '', 'BABARSARI', '2010-08-05', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 13, 61, 17, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1509, '300730010010760261', 414, 1, 'SUHARTINI MARGARETHA, MARIA', '', 'BABARSARI TB 16/X RT 18 RW 05 55281', '0274-485071', 'P', 'B', '1940-11-28', 'GIRI PURWO', 3, 8, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'NANGGULAN', NULL, '1960-10-14', 'NO: 25, L N I', '', 3, 66, 15, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1510, '300730010010770262', 415, 1, 'SOEMIJANTORO RADEN, LEONARDUS', '', 'KOMPLEK YADARA BLOK I/8B, 55211', '0274-486034', 'L', 'A', '1939-03-01', 'YOGYAKARTA', 3, 1, 'PANTI RAPIH', '1939-03-02', '902/1939', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'YOGYAKARTA', NULL, '1966-07-10', 'NO:19 TH 196 VOL L=1', '', 6, 55, 1, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1511, '300730010010780263', 416, 1, 'PUJIONO, ROBERTUS', '', 'JLN. INSPEKSI MATARAM NO: 07 RT 19 RW 02', '0274-4332566', 'L', 'A', '1954-02-18', 'SOLO', 3, 8, 'TARAKAN', '1981-12-24', 'BUKU IV, NO: 2986', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'KALIMANTAN TIMUR', NULL, '1988-06-04', 'NO: 120 ANHO 1988', '', 3, 66, 34, 9, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1512, '300730010010780264', 416, 2, 'MARGARETHA', '', 'JLN. INSPEKSI MATARAM NO: 07 RT 19 RW 02', '0274-4332566', 'P', 'A', '1964-03-06', 'SOLOR', 3, 1, 'TORAJA', '1964-03-22', 'BUKU VIII, NO: 1170', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'KALIMANTAN TIMUR', NULL, '1988-06-04', 'NO: 120 ANHO 1988', '', 3, 66, 62, 20, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1513, '300730010010780265', 416, 3, 'LUHUR TYASHUTOMO, YOHANES', '', 'JLN. INSPEKSI MATARAM NO: 07 RT 19 RW 02', '0274-4332566', 'L', 'A', '1989-11-17', 'KALIMANTAN TIMUR', 3, 1, 'TARAKAN', '1989-12-24', 'BUKU IV, NO: 3879', '', '', '2', '', 'BALIK PAPAN', '2005-12-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 39, 65, 20, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1514, '300730010010780266', 416, 3, 'TITIS GENDES SAHUBARI, CARMELA', '', 'JLN. INSPEKSI MATARAM NO: 07 RT 19 RW 02', '0274-4332566', 'P', 'A', '1993-05-10', 'KALIMANTAN TIMUR', 3, 1, 'BUNYU', '1994-01-27', '.... NO: 4747', '', '', '2', '', 'BABARSARI', '2010-08-15', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 67, 65, 20, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1515, '300730010010790267', 417, 1, 'SUWARDI KRISTIANUS, YUSUF', '', 'BABARSARI TB 18/3C RT 18 RW 05 55281', '-', 'L', 'A', '1950-12-25', 'YOGYAKARTA', 3, 8, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'BACIRO', '1982-06-18', '', '0', '', '0000-00-00', 3, 'KUA NOTOYUDAN', NULL, '1988-12-31', 'SDH', '', 3, 66, 34, 9, 100, 0, 1, 6, 0, 1, 3, 0, 4, 0, 0, 0, NULL, NULL),
(1516, '300730010010790268', 417, 2, 'SUWARSIH KRISTIANA, MARIA', '', 'BABARSARI TB 18/3C RT 18 RW 05 55281', '-', 'P', 'O', '1953-07-19', 'SEMARANG', 3, 8, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'BACIRO', '1982-06-18', '', '0', '', '0000-00-00', 3, 'KUA NOTOYUDAN', NULL, '1988-12-31', 'SDH', '', 1, 66, 34, 9, 100, 0, 1, 6, 0, 1, 3, 0, 4, 0, 0, 0, NULL, NULL),
(1517, '300730010010790269', 417, 3, 'TALA KRISNA, TIMOTIUS', '', 'BABARSARI TB 18/3C RT 18 RW 05 55281', '-', 'L', 'O', '1989-01-26', 'YOGYAKARTA', 3, 2, 'BABARSARI', '2001-12-13', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 56, 9, 100, 0, 1, 6, 0, 3, 3, 0, 4, 0, 0, 0, NULL, NULL),
(1518, '300730010010800270', 418, 1, 'HORMAT PINEM, HONDRIUS', '', 'BLOK VI/6 RT 24 RW 06 YADARA BABARSARI', '0274-485832', 'L', 'B', '1947-02-01', 'MEDAN', 3, 8, 'KABAN JAHE', '1968-12-31', 'KRISTUS RAJA KABAN JAHE', '', '', '2', '', 'KOTABARU', '1968-12-31', '', '0', '', '0000-00-00', 3, 'KODYA YOGYAKARTA', NULL, '1978-04-14', 'SDH', '', 5, 23, 34, 3, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1519, '300730010010800271', 418, 2, 'SITI SUMARDIHANING', '', 'BLOK VI/6 RT 24 RW 06 YADARA BABARSARI', '0274-485832', 'P', 'B', '1950-07-29', 'SOLO', 1, 11, 'TDK', '0000-00-00', '', '', '', '1', '', 'TDK', '0000-00-00', '', '0', '', '0000-00-00', 3, 'KODYA YOGYAKARTA', NULL, '1978-04-14', 'SDH', '', 3, 66, 34, 9, 99, 0, 1, 0, 0, 0, 2, 0, 99, 0, 0, 0, NULL, NULL),
(1520, '300730010010800272', 418, 3, 'TRIASTA DWIPA PINEM, LEONARDO', '', 'BLOK VI/6 RT 24 RW 06 YADARA BABARSARI', '0274-485832', 'L', 'B', '1985-01-26', 'YOGYAKARTA', 3, 2, 'BACIRO', '1997-12-31', 'KRISTUS RAJA BACIRO', '', '', '2', '', 'BACIRO', '1999-12-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 60, 56, 3, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1521, '300730010010810273', 419, 1, 'SANTOSA PUDJI RAHARDJO, BERNADUS', '', 'PERUM GRAHA YASA I RT 05 RW 05', '0274-484648', 'L', 'B', '1950-07-27', 'REMBANG', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'KATEDRAL SEMARANG', NULL, '1979-07-20', '-', '', 6, 64, 34, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1522, '300730010010810274', 419, 2, 'ESTUNINGSIH, VERONICA', '', 'PERUM GRAHA YASA I RT 05 RW 05', '0274-484648', 'P', 'B', '1955-10-17', 'KLATEN', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'KATEDRAL SEMARANG', NULL, '1979-07-20', '-', '', 5, 64, 8, 9, 309, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1523, '300730010010810275', 419, 3, 'GALEH AMBORO, ANDREAS', '', 'PERUM GRAHA YASA I RT 05 RW 05', '0274-484648', 'L', 'B', '1984-02-18', 'AMBON', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 60, 56, 9, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1524, '300730010010810276', 419, 3, 'RATRI DAMARINI, MARIA', '', 'PERUM GRAHA YASA I RT 05 RW 05', '0274-484648', 'P', 'O', '1988-11-26', 'AMBON', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 14, 65, 9, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1525, '300730010010820277', 420, 1, 'PARINEM SALIMAH HADRIANA', '', 'YADARA BLOK V/ 28 RT 24 RW 06', '0274-9125819', 'P', 'B', '1937-12-31', 'SRAGEN', 3, 3, 'SRAGEN', '1953-08-13', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 8, 'JANDA', NULL, '0000-00-00', 'SDH', '', 2, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1526, '300730010010830278', 421, 1, 'ROSARI, ELISABET', '', 'YADARA BLOK I/18 RT 21 RW 06', '0274-485039', 'P', 'B', '1954-10-09', 'PURWOKERTO', 3, 1, 'PURWOKERTO', '1954-10-18', 'BUKU III, HAL 76, NO: 303', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'PURWOKERTO', NULL, '1979-09-13', 'VEL. L II NO: 847', '', 3, 66, 34, 9, 100, 0, 1, 3, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1527, '300730010010830279', 421, 3, 'DEWI ARISTASANY, MARIA', '', 'YADARA BLOK I/18 RT 21 RW 06', '0274-485039', 'P', 'O', '1983-05-20', 'SEMARANG', 3, 1, 'SEMARANG', '1983-05-25', 'BUKU III, NO: 3006', '', '', '2', '', 'SEMARANG', '1994-10-14', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1528, '300730010010830280', 421, 3, 'ADI PRAKARSA, STANISLAUS', '', 'YADARA BLOK I/18 RT 21 RW 06', '0274-485039', 'L', 'O', '1984-04-07', 'SEMARANG', 3, 1, 'SEMARANG', '1986-06-06', 'BUKU V, HAL: 18, NO: 0071', '', '', '2', '', 'SEMARANG', '1998-10-01', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 8, 56, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1529, '300730010010830281', 421, 3, 'KURNIAWAN SUSANTO, GREGORIUS', '', 'YADARA BLOK I/18 RT 21 RW 06', '0274-485039', 'P', 'O', '2001-11-16', 'SEMARANG', 3, 1, 'SEMARANG', '2005-01-07', 'BUKU XII HAL.305.NO.1527', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1530, '300730010010830282', 421, 6, 'GILLIANI ANGELIA CATHA BELLA', '', 'YADARA BLOK I/18 RT 21 RW 06', '0274-485039', 'P', 'O', '2006-09-05', 'SEMARANG', 3, 1, 'BABARSARI', '2008-05-09', 'BUKU I NO. 194', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1531, '300730010010830283', 421, 6, 'FALENTINO, LUKAS', '', 'YADARA BLOK I/18 RT 21 RW 06', '0274-485039', 'P', 'O', '2010-02-16', 'JAKARTA', 3, 9, 'BLM', '0000-00-00', 'BLM', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1532, '300730010010840284', 422, 1, 'SOEPARDHI, YOHANES', '', 'BABARSARI TB 16/1A', '0274-485879', 'L', 'B', '1937-09-27', 'YOGYAKARTA', 3, 8, 'MRICAN', '1978-12-08', 'BUKU IV, HAL: 205, NO: 818', '', '', '2', '', 'BACIRO', '1982-06-18', '', '0', '', '0000-00-00', 2, 'KOTA BARU', NULL, '1968-01-06', 'ANNO 1968/ VET.M II, NB 1225', '', 5, 26, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1533, '300730010010840285', 422, 2, 'SRI SETJAWATI ANNA MARIA CONSTITIA', '', 'BABARSARI TB 16/1A', '0274-485879', 'P', 'A', '1948-04-02', 'GANJURAN', 3, 1, 'GANJURAN', '1948-12-04', 'FOL. 234, NO: 1939 LIB II', '', '', '2', '', 'MAGELANG', '1952-07-02', '', '0', '', '0000-00-00', 2, 'KOTA BARU', NULL, '1968-01-06', 'ANNO 1968/ VET.M II, NB 1225', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1534, '300730010010840286', 422, 3, 'SUNU JOKO PURNOMO, BENEDIKTUS', '', 'BABARSARI TB 16/1A', '0274-485879', 'L', 'bt', '1992-02-18', 'YOGYAKARTA', 3, 2, 'BABARSARI', '2000-11-26', 'BUKU VIII, HAL: 153, NO: 459', '', '', '2', '', 'BACIRO', '2001-12-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 67, 65, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1535, '300730010010840287', 422, 8, 'SARWI YOGA KUSUMA MARIO', '', 'BABARSARI TB 16/1A', '0274-485879', 'L', 'O', '1991-05-15', 'SEMARANG', 3, 1, 'BANYU MANIK', '1991-12-31', 'SDH', '', '', '2', '', 'SERAM', '1998-12-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 13, 65, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1536, '300730010010850288', 423, 1, 'SAJAR SOEPRAPTO, FRANSXICUS', '', 'BABARSARI, YADARA BLOK III/17', '0274-485044', 'L', 'A', '1927-03-05', 'KULON PROGO', 3, 8, 'KOTA BARU', '1954-12-31', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'SLEMAN', NULL, '1973-09-16', '-', '', 5, 44, 34, 9, 100, 0, 1, 6, 0, 1, 2, 8, 4, 0, 0, 0, NULL, NULL),
(1537, '300730010010850289', 423, 2, 'SRI WINARWATI, THERESIA', '', 'BABARSARI, YADARA BLOK III/17', '0274-485044', 'P', 'AB', '1951-05-29', 'SLEMAN', 3, 1, 'ST. YUSUF MEDARI', '1951-12-31', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'SLEMAN', NULL, '1973-09-16', '-', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1538, '300730010010860290', 424, 1, 'DEWANTO, ANDREAS', '', 'BABARSARI YADARA BLOK III/II RT 23 RW 06 55821', '81536926475', 'L', 'O', '1970-06-24', 'JAKARTA', 3, 1, 'JAKARTA', '1970-07-12', 'NO: 268, LIB. I, PAG. 67', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'CILACAP', NULL, '2005-09-15', 'BUKU III, HAL: -, NO: 2483', '', 3, 66, 56, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1539, '300730010010860291', 424, 2, 'ERNA SUSANDANI NYOMAN, ANASTASIA', '', 'BABARSARI YADARA BLOK III/II RT 23 RW 06 55821', '81536926475', 'P', 'O', '1973-05-29', 'BLITAR', 3, 1, 'JAKARTA', '1973-06-04', 'NO: 3813, LIB. IV', '', '', '2', '', 'SANTO YUSUF BLITAR', '1987-12-31', '', '0', '', '0000-00-00', 2, 'CILACAP', NULL, '2005-09-15', 'BUKU III, HAL: -, NO: 2483', '', 3, 66, 56, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1540, '300730010010870292', 425, 1, 'SUWITO, THOMAS', '', 'BABARSARI YADARA BLOK III/II RT 23 RW 06', '85668707128', 'L', 'B', '1931-09-14', 'BLITAR', 3, 1, 'BLITAR', '1931-09-14', 'BLITAR, SANTO YOSEF NO: 276', '', '', '2', '', 'MALANG', '1945-05-27', '', '0', '', '0000-00-00', 2, 'SANTO YUSUF MOJOKERTO', NULL, '1956-10-02', '-', '', 3, 66, 34, 9, 100, 0, 1, 6, 0, 1, 2, 8, 4, 0, 0, 0, NULL, NULL),
(1541, '300730010010870293', 425, 2, 'PRAPTI WULAN, ELISABETH MARIA', '', 'BABARSARI YADARA BLOK III/II RT 23 RW 06', '85668707128', 'P', 'B', '1934-03-21', 'JOMBANG', 3, 1, 'SURABAYA', '1953-11-11', 'SURABAYA, 46/II, KRISTUS RAJA', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'SANTO YUSUF MOJOKERTO', NULL, '1956-10-02', '-', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1542, '300730010010880294', 426, 1, 'SULISTYANTO, YUSTINUS', '', 'BABARSARI TB 17/15A, 55281', '0274-489015', 'L', 'AB', '1952-07-13', 'KLATEN', 3, 3, 'DELANGGU', '1968-12-17', 'LB II, HAL: 241, NO: 1961', '', '', '2', '', 'DELANGGU', '1969-07-27', '', '0', '', '0000-00-00', 2, 'DELANGGU', NULL, '1982-09-20', 'II/105/NO: 920', '', 6, 3, 56, 20, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1543, '300730010010880295', 426, 2, 'KUNTUM LURIATNI, CRISTIN', '', 'BABARSARI TB 17/15A, 55281', '0274-489015', 'P', 'AB', '1962-02-01', 'KLATEN', 3, 7, 'DELANGGU', '1982-08-15', 'LB V, HAL 201, NO: 4705', '', '', '2', '', 'JAKARTA', '1994-04-16', '', '0', '', '0000-00-00', 2, 'DELANGGU', NULL, '1982-09-20', 'II/105/NO: 920', '', 5, 3, 56, 20, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1544, '300730010010880296', 426, 3, 'FAJAR ADIYASA', '', 'BABARSARI TB 17/15A, 55281', '0274-489015', 'L', 'AB', '1987-05-20', 'MAKASSAR', 3, 1, 'MAKASSAR', '1987-12-13', '1842/REG V/LB/87', '', '', '2', '', 'JAKARTA', '2000-08-03', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 60, 56, 20, 309, 0, 1, 6, 0, 4, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1545, '300730010010880297', 426, 3, 'YUDITYA ADIWIJAYA, YUSTINUS', '', 'BABARSARI TB 17/15A, 55281', '0274-489015', 'L', 'AB', '1990-11-01', 'MAKASSAR', 3, 1, 'MAKASSAR', '1991-01-06', '2070/REG V', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 3, 65, 20, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1546, '300730010010890298', 427, 1, 'SUPALIMIRMANTO, THOMAS', '', 'YADARA, BLOK II/15, RT 22 RW 06 BABARSARI 55821', '0274-485819', 'L', 'B', '1946-10-31', 'YOGYAKARTA', 3, 1, 'PAKEM', '1946-11-11', 'NO: 455, PAKEM I', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'WONOSARI', NULL, '1972-12-31', 'NO: 76, ANNO 1972/ VEL. LM 3', '', 4, 1, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1547, '300730010010890299', 427, 2, 'SUKASITI ISIDORA', '', 'YADARA, BLOK II/15, RT 22 RW 06 BABARSARI 55821', '0274-485819', 'P', 'B', '1952-04-05', 'WONOSARI', 3, 8, 'WONOSARI', '1972-12-31', 'LIB XI, NO: 686, ANNO 1952. DIE 44', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'WONOSARI', NULL, '1972-12-31', 'NO: 76, ANNO 1972/ VEL. LM 3', '', 3, 66, 62, 9, 100, 0, 1, 3, 0, 1, 2, 0, 1, 0, 0, 0, NULL, NULL),
(1548, '300730010010900300', 428, 1, 'TITI HIDAYATI, MARGARETA', '', 'YADARA BLOK IV/7 RT 20 RW 06', '0274-485042', 'P', 'A', '1949-07-26', 'YOGYAKARTA', 3, 3, 'JAKARTA SANTO IGNATI', '1962-12-31', 'SDH', '', '', '2', '', 'BACIRO', '1992-12-31', '', '0', '', '0000-00-00', 8, 'JANDA', NULL, '0000-00-00', 'SDH', '', 3, 66, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1549, '300730010010910301', 429, 1, 'JANTA WIYATNA, YOHANES ROSUL', '', 'BABARSARI TB 16/1A', '0274-485879', 'L', 'O', '1967-03-15', 'YOGYAKARTA', 3, 8, 'BACIRO', '2005-06-05', 'BUKU I, HAL: --, NO: 120', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BABARSARI', NULL, '2006-01-04', 'ANNO 2006/ LM IV, FOL 28, NO: 84', '', 5, 11, 56, 9, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1550, '300730010010920302', 430, 1, 'SUMIJATUN, MARIA GRATIA', '', 'YADARA BLOK I/23 RT 21 RW 05 BABARSARI', '0274-485306', 'P', 'A', '1921-01-19', 'SOLO', 3, 2, 'SOLO', '1935-04-18', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 8, 'JANDA', NULL, '0000-00-00', 'SDH', '', 2, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 8, 4, 0, 0, 0, NULL, NULL),
(1551, '300730010010930303', 431, 1, 'BAMBANG PURWADI, ANTONIUS', '', 'BABARSARI TB 18/IE RT 17 RW 05 55281', '0274-485991', 'L', 'B', '1953-01-03', 'KLATEN', 3, 8, 'KOTA BARU', '1976-04-25', 'LIB XVI, FOL 236, NO: 940', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1981-06-06', 'ANNO 1981/ VOL.L II FOL. NO: 257', '', 6, 55, 31, 9, 100, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1552, '300730010010930304', 431, 2, 'SUSTINI, MARIA MAGDALENA', '', 'BABARSARI TB 18/IE RT 17 RW 05 55281', '0274-485991', 'P', 'B', '1959-08-18', 'KLATEN', 3, 8, 'BABARSARI', '1985-12-18', 'BUKU 6, HAL 0, NO: 774', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1981-06-06', 'ANNO 1981/ VOL.L II FOL. NO: 257', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1553, '300730010010930305', 431, 3, 'BAMBANG KARSONO, ROBERTUS', '', 'BABARSARI TB 18/IE RT 17 RW 05 55281', '0274-485991', 'L', 'B', '1985-01-07', 'YOGYAKARTA', 3, 2, 'BACIRO', '1996-04-05', 'BUKU 9, HAL: 40, NO: 120', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 17, 56, 9, 309, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1554, '300730010010930306', 431, 3, 'BAMBANG WARSITO, YOHANES', '', 'BABARSARI TB 18/IE RT 17 RW 05 55281', '0274-485991', 'L', 'B', '1986-06-16', 'YOGYAKARTA', 3, 2, 'BACIRO', '1996-04-05', 'BUKU 9, HAL: 40, NO: 123', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 60, 61, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1555, '300730010010930307', 431, 3, 'WARSINI HANDAYANI, BERNADETHA', '', 'BABARSARI TB 18/IE RT 17 RW 05 55281', '0274-485991', 'P', 'B', '1988-04-27', 'YOGYAKARTA', 3, 1, 'BACIRO', '1996-04-05', 'BUKU 9, HAL: 41, NO: 122', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 20, 61, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1556, '300730010010930308', 431, 3, 'WERDININGSIH, THERESIA', '', 'BABARSARI TB 18/IE RT 17 RW 05 55281', '0274-485991', 'P', 'B', '1990-06-27', 'YOGYAKARTA', 3, 1, 'BACIRO', '1996-04-05', 'BUKU 9, HAL: 41, NO: 121', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 20, 61, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1557, '300730010010930309', 431, 3, 'BAMBANG SUNARTO, FRANSISKUS XAFERIUS', '', 'BABARSARI TB 18/IE RT 17 RW 05 55281', '0274-485991', 'L', 'B', '1993-07-27', 'YOGYAKARTA', 3, 2, 'BABARSARI', '2008-03-22', 'BUKU I, NO: 85', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 64, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1558, '300730010010930310', 431, 3, 'BAMBANG SUHARTOMO, EMANUEL', '', 'BABARSARI TB 18/IE RT 17 RW 05 55281', '0274-485991', 'L', 'B', '2003-12-25', 'YOGYAKARTA', 3, 1, 'BABARSARI', '2008-03-22', 'BUKU I, NO: 186', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1559, '300730010010940311', 432, 1, 'YUNINGSIH ALISABETH, MARIA', '', 'BABARSARI TB 17/6A, 55281', '0274-9131120', 'P', 'O', '1955-09-03', 'MADIUN', 3, 8, 'BACIRO', '1993-12-21', 'BUKU VIII, HAL 203, NO: 609', '', '', '2', '', 'BACIRO', '1994-05-15', '', '0', '', '0000-00-00', 8, 'JANDA', NULL, '0000-00-00', 'SDH', '', 3, 66, 52, 17, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1560, '300730010010950312', 433, 1, 'KARDI ADI, JUVENTIUS', '', 'KOMPLEK YADARA BLOK VI/07 RT 25 RW 06', '81578595996', 'L', 'B', '1953-06-03', 'JAKARTA', 3, 1, 'JAKARTA', '1953-06-13', 'JAKARTA, 82, IV/81', '', '', '2', '', 'JAKARTA', '1964-01-21', '', '0', '', '0000-00-00', 2, 'KATEDRAL JAKARTA', NULL, '1980-07-13', 'VII, 238, 946', '', 4, 16, 56, 4, 100, 0, 1, 6, 0, 6, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1561, '300730010010950313', 433, 2, 'MOKATAR SUPRIHARTATI THERESIA, VERONIKA', '', 'KOMPLEK YADARA BLOK VI/07 RT 25 RW 06', '81578595996', 'P', 'O', '1954-01-19', 'YOGYAKARTA', 3, 1, 'PUGERAN', '1956-01-30', 'PUGERAN, 1823, III', '', '', '2', '', 'JAKARTA', '1962-12-31', '', '0', '', '0000-00-00', 2, 'KATEDRAL JAKARTA', NULL, '1980-07-13', 'VII, 238, 946', '', 4, 1, 62, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1562, '300730010010950314', 433, 3, 'ARDITA, LIDIA', '', 'KOMPLEK YADARA BLOK VI/07 RT 25 RW 06', '81578595996', 'P', 'O', '1982-12-03', 'JAKARTA', 3, 1, 'JAKARTA', '1993-12-04', 'JAKARTA, 202, II/83', '', '', '2', '', 'SOLO', '1996-08-10', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 56, 56, 9, 339, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1563, '300730010010960315', 434, 1, 'DANANG WAHYU HARI PUTRANTO, THOMAS', '', 'YADARA, BLOK III/16B, RT 23 RW 06 BABARSARI', '0274-6882699', 'L', 'A', '1976-09-21', 'YOGYAKARTA', 3, 1, 'BACIRO', '1976-12-31', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BABARSARI', NULL, '2007-12-04', 'SDH', '', 4, 56, 56, 9, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1564, '300730010010960316', 434, 2, 'AGNI YUDANINGASTUTI IGVATIA, MARIA', '', 'YADARA, BLOK III/16B, RT 23 RW 06 BABARSARI', '0274-6882699', 'P', 'A', '1982-07-02', 'JAKARTA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BABARSARI', NULL, '2007-12-04', 'SDH', '', 5, 56, 56, 9, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1565, '300730010010210317', 435, 1, 'MURYONO, HADRIANUS', '', 'BABARSARI CU 20, RT 10 RW 06', '0274-484808', 'L', 'O', '1947-06-19', 'YOGYAKARTA', 3, 1, 'GST SEDAYU', '1947-06-29', 'BUKU II, FOL: 59, NO:842', '', '', '2', '', 'GHK TEGAL', '1956-12-16', '', '0', '', '0000-00-00', 2, 'GSTG-SEDAYU', NULL, '1975-12-05', 'BUKU II, NO: 540, TH. 1975', '', 5, 70, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1566, '300730010010210318', 435, 2, 'SUGIYATI, MARGARETHA', '', 'BABARSARI CU 20, RT 10 RW 06', '0274-484808', 'P', 'A', '1954-07-21', 'BANTUL', 3, 3, 'SGT SEDAYU', '1974-04-09', 'BUKU II FOL: 225, NO: 4273', '', '', '2', '', 'GST SEDAYU', '1975-07-15', '', '0', '', '0000-00-00', 2, 'GSTG-SEDAYU', NULL, '1975-12-05', 'BUKU II, NO: 540, TH. 1975', '', 5, 44, 27, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1567, '300730010010210319', 435, 3, 'DWI MURDIYANTO, ANTONIUS', '', 'BABARSARI CU 20, RT 10 RW 06', '0274-484808', 'L', 'O', '1977-06-30', 'BANTUL', 3, 1, 'GST SEDAYU', '1977-12-30', 'BUKU VII, HAL: 81, NO: 4711', '', '', '2', '', 'BACIRO', '1990-09-28', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 60, 37, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1568, '300730010010210320', 435, 3, 'RINTO SUKARNO, AGUSTINUS', '', 'BABARSARI CU 20, RT 10 RW 06', '0274-484808', 'L', 'A', '1980-08-25', 'BANTUL', 3, 1, 'BACIRO', '1985-06-07', 'BUKU VI, HAL: 132, NO: 528', '', '', '2', '', 'BACIRO', '1996-04-14', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 61, 37, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1569, '300730010010210321', 435, 3, 'HENI PRATIWI, FRANSISKA', '', 'BABARSARI CU 20, RT 10 RW 06', '0274-484808', 'P', 'O', '1985-02-20', 'BANTUL', 3, 1, 'BACIRO', '1985-06-07', 'BUKU VI, HAL: 132, NO: 527', '', '', '2', '', 'BACIRO', '1996-04-14', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 60, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1570, '300730010010220322', 436, 1, 'DJOKO MARSONO, ISODORUS', '', 'PERUM YADARA II/23, RT 22 RW 06', '0274-485106', 'L', 'B', '1954-09-21', 'KLATEN', 3, 3, 'KOTABARU', '1978-04-04', 'BUKU XVII, NO: 602', '', '', '2', '', 'KOTABARU', '1980-05-27', '', '0', '', '0000-00-00', 2, 'PURWODADI', NULL, '1978-02-12', '-', '', 5, 44, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 1, 0, 0, 0, NULL, NULL),
(1571, '300730010010220323', 436, 2, 'TUTI BUDIYARSIH, BERNADETTA', '', 'PERUM YADARA II/23, RT 22 RW 06', '0274-485106', 'P', 'O', '1958-06-10', 'PURWODADI', 3, 1, 'PURWODADI', '1958-12-31', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'PURWODADI', NULL, '1978-02-12', '-', '', 5, 55, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 1, 0, 0, 0, NULL, NULL),
(1572, '300730010010220324', 436, 3, 'RATNA ADI YUNIATI, PAULA', '', 'PERUM YADARA II/23, RT 22 RW 06', '0274-485106', 'P', 'B', '1985-06-29', 'YOGYAKARTA', 3, 1, 'BACIRO', '1985-10-13', 'BUKU VI, HAL: 145, NO: 578', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 8, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1573, '300730010010220325', 436, 3, 'RAKA ADI YUNANTO, PAULUS', '', 'PERUM YADARA II/23, RT 22 RW 06', '0274-485106', 'L', 'O', '1985-06-29', 'YOGYAKARTA', 3, 1, 'BACIRO', '1985-10-13', 'BUKU VI, HAL: 145, NO: 577', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 23, 37, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1574, '300730010010190326', 437, 3, 'RAIZEL AVANO, ALARICIA', '', 'TB 16/6B BABARSARI RT 16 RW 05', '0274-7800085', 'P', 'B', '2007-10-11', 'YOGYAKARTA', 3, 1, 'KOTABARU', '2007-12-07', 'BUKU XXVIII, NO: 463', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1575, '300730010010910327', 438, 2, 'ENDANG RETNO PRASETYATI, SUZANA', '', 'BABARSARI TB 16/1A', '0274-485879', 'P', 'A', '1968-10-13', 'YOGYAKARTA', 3, 1, 'YOGYAKARTA', '1968-10-20', 'LIB I, PAG. NO: 840', '', '', '2', '', 'BACIRO', '1982-06-18', '', '0', '', '0000-00-00', 2, 'BABARSARI', NULL, '2006-01-04', 'ANNO 2006/ LM IV, FOL 28, NO: 84', '', 5, 11, 56, 9, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1576, '300730010030010001', 439, 1, 'CHRISDANDANI, IMMANUEL', '', 'JANTI RT 04/ RW 02 NO: 128', '81215682751', 'L', 'O', '1970-12-22', 'KUPANG', 3, 1, 'KUPANG', '1971-12-31', 'SDH', '', '', '2', '', 'ENDE', '1984-12-31', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 16, 58, 65, 7, 400, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1577, '300730010030010002', 439, 10, 'G. TIFOONA, ROMUALDUS', '', 'JANTI RT 04/ RW 02 NO: 128', '81215682751', 'L', 'O', '1984-06-10', 'FLORES', 3, 1, 'FLORES', '1984-12-31', '-', '', '', '2', '', 'ENDE', '2002-12-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 70, 65, 7, 400, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1578, '300730010030010003', 439, 10, 'GARDUS DA SILVA HILDA', '', 'JANTI RT 04/ RW 02 NO: 128', '81215682751', 'P', 'B', '1984-09-17', 'FLORES', 3, 1, 'FLORES', '1984-12-31', '-', '', '', '2', '', 'ENDE', '1984-12-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 14, 65, 7, 400, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1579, '300730010030010004', 439, 10, 'NAHAK TOBU IRMINA', '', 'JANTI RT 04/ RW 02 NO: 128', '81215682751', 'P', 'O', '1991-05-10', 'BAUATOK', 3, 1, 'NOTABUIK', '1992-02-21', '-', '', '', '2', '', 'ATAMBUA', '2004-12-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 20, 400, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1580, '300730010030010005', 439, 10, 'WIFRIDA LIKABELE IGNASIA', '', 'JANTI RT 04/ RW 02 NO: 128', '81215682751', 'P', 'O', '1987-12-06', 'LOEGOLO', 3, 1, 'NUALAIN', '1988-06-09', '-', '', '', '2', '', 'WELULI', '2005-12-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 5, 5, 20, 400, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1581, '300730010030010006', 439, 10, 'IMELDA MARSAN MARIA', '', 'JANTI RT 04/ RW 02 NO: 128', '81215682751', 'P', 'O', '1991-05-09', 'WEEFABULA', 3, 1, 'TAMBOLAKA', '1991-12-31', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 5, 5, 20, 400, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1582, '300730010030010007', 439, 10, 'MELANIA DAPA FLAUIANA', '', 'JANTI RT 04/ RW 02 NO: 128', '81215682751', 'P', 'O', '1992-02-16', 'WAIKABUBAK', 3, 1, 'WAIKABUBAK', '1992-12-31', '-', '', '', '2', '', 'WAIKABUBAK', '1992-12-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 5, 65, 20, 400, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1583, '300730010030010008', 439, 10, 'IVONA HEATUBUN MARIA', '', 'JANTI RT 04/ RW 02 NO: 128', '81215682751', 'P', 'O', '1992-10-25', 'FAKFAK', 3, 1, 'PAPUA', '1992-12-31', '-', '', '', '2', '', 'PAPUA', '2003-12-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 5, 65, 8, 400, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1584, '300730010030010009', 439, 10, 'PANANGIAN SILALAHI, MICHAEL', '', 'JANTI RT 04/ RW 02 NO: 128', '81215682751', 'L', 'O', '1987-05-03', 'BALIKPAPAN', 3, 1, 'TANAH GROGOT', '1990-12-31', '-', '', '', '2', '', 'PONTIANAK', '2004-12-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 66, 65, 20, 400, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1585, '300730010030010010', 439, 10, 'FITRIANA ELISABET', '', 'JANTI RT 04/ RW 02 NO: 128', '81215682751', 'P', 'bt', '1991-05-02', 'KALIMANTAN', 3, 1, 'BELIMBING KALBAR', '1991-12-31', '-', '', '', '2', '', 'BELIMBING', '2005-12-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 24, 30, 65, 20, 400, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1586, '300730010030020011', 440, 1, 'YUSNIATI, YUSTA', '', 'JANTI RT.03/RW.02 CATUR TUNGGAL', '85650836540', 'P', 'B', '1991-10-10', 'GERNIS', 3, 2, 'GERNIS', '2004-04-04', '-', '', '', '2', '', 'GERNIS', '2004-12-31', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 21, 65, 20, 400, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1587, '300730010030020012', 440, 10, 'PRISKAWATI', '', 'JANTI RT.03/RW.02 CATUR TUNGGAL', '85650836540', 'P', 'A', '1989-01-10', 'GNGTAMANG', 3, 1, 'KALIMANTAN BARAT', '1989-07-09', 'NO LB. 20463', '', '', '2', '', 'KALIMANTAN BARAT', '2006-12-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 34, 65, 20, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1588, '300730010030020013', 440, 10, 'YULIANA', '', 'JANTI RT.03/RW.02 CATUR TUNGGAL', '85650836540', 'P', 'B', '1990-07-31', 'PINYAWAN', 3, 1, 'KALIMANTAN BARAT', '1993-11-24', 'BUKU LB HAL, -- NO: 8301', '', '', '2', '', 'MARTINUS KALIMANTAN', '2004-12-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 21, 65, 20, 400, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1589, '300730010030020014', 440, 10, 'ANGELINA MOGHI, KAROLINA', '', 'JANTI RT.03/RW.02 CATUR TUNGGAL', '85650836540', 'P', 'A', '1991-01-27', 'KISOL', 3, 1, 'KISOL RUTENG', '1991-03-02', 'NO: 7054', '', '', '2', '', 'KISOL', '2002-12-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 30, 65, 20, 400, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1590, '300730010030020015', 440, 10, 'ALTOBHELLY GREGORIA', '', 'JANTI RT.03/RW.02 CATUR TUNGGAL', '85650836540', 'L', 'O', '1987-03-13', 'FLORES', 3, 1, 'TANAH GROGOT', '1990-12-31', '-', '', '', '2', '', 'PONTIANAK', '2004-12-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 25, 23, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1591, '300730010030030016', 441, 1, 'BUFA RADE NEFRINA', '', 'BANTULAN JANTI', '-', 'P', 'B', '1982-10-22', 'SUMBA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 66, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1592, '300730010030030017', 441, 10, 'MONG, MARIA', '', 'BANTULAN JANTI', '-', 'P', 'O', '1990-12-31', 'TAMBOLANA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1593, '300730010030030018', 441, 10, 'DON , DONATUS', '', 'BANTULAN JANTI', '-', 'L', 'B', '1990-09-01', 'BAJAWA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1594, '300730010030030019', 441, 10, 'KABELEN AMPEUS', '', 'BANTULAN JANTI', '-', 'L', 'O', '1985-02-23', 'HELAN LANGOWUYO', 3, 1, 'HINGGA', '1989-08-10', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1595, '300730010030030020', 441, 10, 'INGLAN BONEFASIUS', '', 'BANTULAN JANTI', '-', 'L', 'A', '1989-06-05', 'ADONARA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1596, '300730010030030021', 441, 10, 'RIANG L BONEFASIUS', '', 'BANTULAN JANTI', '-', 'L', 'A', '1984-06-05', 'ADONARA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1597, '300730010030030022', 441, 10, 'RAFAEL RATE IKEH, STEPHANUS', '', 'BANTULAN JANTI', '-', 'L', 'O', '1984-05-15', 'ADONARA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1598, '300730010030030023', 441, 10, 'HERMAN, YOSEF', '', 'BANTULAN JANTI', '-', 'L', 'O', '1991-08-31', 'LAMAPAHA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1599, '300730010030030024', 441, 10, 'FARI DEWI CLAUDIA', '', 'BANTULAN JANTI', '-', 'P', 'A', '1990-07-07', 'MANGGARAI', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'MANGGARAI', '1998-12-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1600, '300730010030040025', 442, 1, 'KURNIA, MARIA IMMACULATA', '', 'JANTI, CT 16 NO: 91', '-', 'P', 'O', '1991-09-23', 'RUTENG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 66, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1601, '300730010030040026', 442, 10, 'SAY , MARIA FATIMA', '', 'JANTI, CT 16 NO: 91', '-', 'P', 'O', '1989-08-25', 'RUTENG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 7, 400, 0, 1, 6, 0, 5, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1602, '300730010030040027', 442, 10, 'RATNASARI, CONTERIA', '', 'JANTI, CT 16 NO: 91', '-', 'P', 'O', '1991-03-03', 'RUTENG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1603, '300730010030040028', 442, 10, 'Y. M. RATUAN, MARIA', '', 'JANTI, CT 16 NO: 91', '-', 'P', 'A', '1985-01-05', 'KUPANG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 16, 400, 0, 1, 6, 0, 5, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1604, '300730010030050029', 443, 1, 'HONOR ADRIANA', '', 'BANTULAN JANTI NO: 09 CATUR TUNGGAL', '-', 'P', 'O', '1991-01-07', 'WAIBALUN', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'LOTALA', '2006-12-31', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 25, 66, 65, 7, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1605, '300730010030050030', 443, 10, 'MERLINDA FS BELO', '', 'BANTULAN JANTI NO: 09 CATUR TUNGGAL', '-', 'P', 'B', '1991-09-07', 'BAUCAU', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'ATAMBUA', '2003-12-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 16, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1606, '300730010030050031', 443, 10, 'TAMO INA MARIETI', '', 'BANTULAN JANTI NO: 09 CATUR TUNGGAL', '-', 'P', 'O', '1989-05-29', 'MBORO', 3, 1, 'HOMBA KARIPIT', '1998-12-24', 'HOMBA KARIPIT, III, NO: 1891', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 14, 400, 0, 1, 6, 0, 5, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1607, '300730010030050032', 443, 10, 'CELINO MIRA', '', 'BANTULAN JANTI NO: 09 CATUR TUNGGAL', '-', 'L', 'O', '1988-10-22', 'BAUCAU', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 20, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1608, '300730010030050033', 443, 10, 'SEMENSIUS SUTU SEL FLINCE', '', 'BANTULAN JANTI NO: 09 CATUR TUNGGAL', '-', 'L', 'B', '1990-12-12', 'HALILULIK', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'BETUN', '1999-12-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 16, 400, 0, 1, 6, 0, 5, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1609, '300730010030060034', 444, 1, 'AGUNG PRAMUDITA GREGORIUS', '', 'PERUM GRIYA CIPTA NO.1 AB JANTI', '817262713', 'L', 'B', '1979-04-27', 'YOGYAKARTA', 3, 1, 'BACIRO', '1979-12-31', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'MINAHASA', NULL, '2003-04-27', '-', '', 3, 66, 56, 9, 100, 0, 1, 4, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1610, '300730010030060035', 444, 2, 'NOVITA SONDAKH LESLY', '', 'PERUM GRIYA CIPTA NO.1 AB JANTI', '817262713', 'P', 'O', '1979-11-26', 'MINAHASA', 3, 1, 'MINAHASA', '1979-12-31', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'MINAHASA', NULL, '2003-04-27', '-', '', 3, 66, 37, 20, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1611, '300730010030060036', 444, 3, 'REXEL SULTANDHANI VINCENTIO', '', 'PERUM GRIYA CIPTA NO.1 AB JANTI', '817262713', 'L', 'bt', '2004-01-31', 'YOGYAKARTA', 3, 1, 'KOTABARU', '2004-04-02', 'BUKU XXVII NO.216 TH.2004', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1612, '300730010030060037', 444, 3, 'REVIERA SONDAKH VINCETIA', '', 'PERUM GRIYA CIPTA NO.1 AB JANTI', '817262713', 'P', 'bt', '2010-04-17', 'YOGYAKARTA', 3, 1, 'MINAHASA', '2010-07-04', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1613, '300730010030070038', 445, 1, 'SONY VICTOR SONDAKH', '', 'PERUM GRIYACIPTA NO.1 A JANTI', '81392500258', 'L', 'bt', '1950-08-15', 'MANADO', 3, 7, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'MANADO', NULL, '1972-06-03', '-', '', 3, 66, 37, 20, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1614, '300730010030070039', 445, 2, 'THEODORA KALANGI ELISABETH', '', 'PERUM GRIYACIPTA NO.1 A JANTI', '81392500258', 'P', 'bt', '1954-04-02', 'MANADO', 3, 1, 'MANADO', '1954-12-31', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'MANADO', NULL, '1972-06-03', '-', '', 3, 66, 56, 20, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1615, '300730010030080040', 446, 1, 'SAGINEM REJOPAWIRO, MARIA MAGDALENA', '', 'JANTI RT 03/RW 02 KEL. CATUR TUNGGAL', '-', 'P', 'bt', '1936-12-31', 'SLEMAN', 3, 3, 'BACIRO', '1991-12-11', 'BUKU VIII, HAL: 39, NO: 116', '', '', '2', '', 'BACIRO', '1994-12-31', '', '0', '', '0000-00-00', 6, 'KUA SLEMAN', NULL, '1945-12-31', '-', '', 1, 66, 20, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1616, '300730010030090041', 447, 1, 'HARTO WIHARJO, PETRUS', '', 'JANTI RT 04/ RW 02 CATUR TUNGGAL', '-', 'L', 'A', '1923-12-31', 'SLEMAN', 3, 3, 'BACIRO', '1988-12-08', 'BUKU VII, HAL: 104, NO: 415', '', '', '2', '', 'BACIRO', '1990-09-28', '', '0', '', '0000-00-00', 5, 'KUA SLEMAN', NULL, '1945-12-31', '-', '', 1, 66, 36, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1617, '300730010030090042', 447, 2, 'SARIYEM', '', 'JANTI RT 04/ RW 02 CATUR TUNGGAL', '-', 'P', 'A', '1933-12-31', 'SLEMAN', 1, 11, 'TDK', '0000-00-00', '', '', '', '1', '', 'TDK', '0000-00-00', '', '0', '', '0000-00-00', 5, 'KUA SLEMAN', NULL, '1945-12-31', '-', '', 77, 66, 36, 9, 99, 0, 1, 0, 0, 0, 2, 0, 99, 0, 0, 0, NULL, NULL),
(1618, '300730010030100043', 448, 1, 'WANTIYONO, YOHANES', '', 'JANTI RT O4/ RW 02, NO: 135 CATUR TUNGGAL', '85878690805', 'L', 'O', '1956-05-10', 'SLEMAN', 3, 3, 'BACIRO', '1984-12-19', 'BUKU VI NO: 269', '', '', '2', '', 'BACIRO', '1986-12-31', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1974-05-11', 'ANNO 1979, VOL L II, NO: 120', '', 2, 66, 37, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1619, '300730010030100044', 448, 2, 'MARTUTIK, THERESIA', '', 'JANTI RT O4/ RW 02, NO: 135 CATUR TUNGGAL', '85878690805', 'P', 'O', '1956-07-06', 'KRAWANG', 3, 3, 'WATES', '1978-12-24', 'BUKU VIII, NO; 6089', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1974-05-11', 'ANNO 1979, VOL L II, NO: 120', '', 1, 66, 62, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL);
INSERT INTO `umats` (`id`, `kode_umat`, `id_kk`, `id_hubkk`, `nama`, `email`, `alamat`, `tlp`, `jenis_kelamin`, `goldarah`, `tgl_lahir`, `tmplahir`, `id_agama`, `id_statusbaptis`, `tmpbaptis`, `tglbaptis`, `liberbap`, `romobaptis`, `namabaptis`, `stskrisma`, `namakrisma`, `tmpkrisma`, `tglkrisma`, `romokrisma`, `stskomuni`, `tmpkomuni`, `tglkomuni`, `id_statuspernikahan`, `tempatnikah`, `kotamenikah`, `tglnikah`, `libermat`, `romopernikahan`, `id_pendidikan`, `id_bidstudi`, `id_pekerjaan`, `id_suku`, `id_tempattinggal`, `lamatinggal`, `statusTT`, `id_keaktifanparoki`, `id_keaktifangereja`, `id_statuskekatolikan`, `id_statusekonomi`, `id_statuskesehatan`, `id_statussosial`, `jeniskk`, `statuspindah`, `statuskematian`, `nama_ayah`, `nama_ibu`) VALUES
(1620, '300730010030100045', 448, 3, 'TITING PUJI ASTUTI, NATALIA', '', 'JANTI RT O4/ RW 02, NO: 135 CATUR TUNGGAL', '85878690805', 'P', 'O', '1979-12-28', 'SLEMAN', 3, 1, 'KAPEL AURI', '1980-01-27', 'BUKU V, NO: 242', '', '', '2', '', 'BACIRO', '1994-12-31', '', '0', '', '0000-00-00', 5, '', NULL, '0000-00-00', '', '', 3, 66, 20, 9, 266, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1621, '300730010030100046', 448, 3, 'ENDAR TRI HARTARTO, STEFANUS', '', 'JANTI RT O4/ RW 02, NO: 135 CATUR TUNGGAL', '85878690805', 'L', 'O', '1989-02-27', 'SLEMAN', 3, 1, 'BACIRO', '1989-12-31', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 61, 9, 100, 0, 1, 6, 0, 6, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1622, '300730010030100047', 448, 3, 'ISWANDONO, PAULUS', '', 'JANTI RT O4/ RW 02, NO: 135 CATUR TUNGGAL', '85878690805', 'L', 'bt', '1992-03-25', 'SLEMAN', 3, 1, 'BACIRO', '1992-08-02', 'BUKU VIII, HAL: 94, NO: 281', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 13, 66, 64, 9, 100, 0, 1, 6, 0, 6, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1623, '300730010030110048', 449, 1, 'TUBIN PRAYITNO UTOMA, THOMAS', '', 'BANTULAN JANTI RT 02 RW 01', '0274-9127884', 'L', 'B', '1938-10-18', 'SLEMAN', 3, 3, 'BACIRO', '1982-05-25', 'BUKU V, NO: 1976', '', '', '2', '', 'BACIRO', '1982-12-31', '', '0', '', '0000-00-00', 8, 'DUDA', NULL, '0000-00-00', '-', '', 1, 66, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1624, '300730010030110049', 449, 3, 'PRASETIONO, ALBERTUS', '', 'BANTULAN JANTI RT 02 RW 01', '0274-9127884', 'L', 'bt', '1982-05-14', 'SLEMAN', 3, 1, 'BACIRO', '1982-12-31', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 4, 34, 35, 9, 309, 0, 1, 6, 0, 6, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1625, '300730010030120050', 450, 1, 'TEDDY WIDAYANTO, FRANCISCUS', '', 'JANTI RT 04 RW 02 NO: 136 CATUR TUNGGAL', '85643090011', 'L', 'bt', '1966-12-07', 'YOGYAKARTA', 3, 1, 'AMPENAN LOMBOK', '1971-12-31', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1986-02-08', 'ANNO 1980/ LM II, NO: 574', '', 3, 66, 15, 9, 100, 0, 1, 6, 0, 6, 3, 0, 4, 0, 0, 0, NULL, NULL),
(1626, '300730010030120051', 450, 2, 'MUJINAH, KRISTINA', '', 'JANTI RT 04 RW 02 NO: 136 CATUR TUNGGAL', '85643090011', 'P', 'O', '1968-05-27', 'YOGYAKARTA', 3, 3, 'BACIRO', '1988-12-08', 'BUKU VII HAL: 104, NO: 414', '', '', '2', '', 'BACIRO', '1990-12-31', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1986-02-08', 'ANNO 1980/ LM II, NO: 574', '', 3, 66, 62, 9, 100, 0, 1, 3, 0, 1, 3, 0, 1, 0, 0, 0, NULL, NULL),
(1627, '300730010030120052', 450, 3, 'HARIS BUDI SETIAWAN, YOHANES', '', 'JANTI RT 04 RW 02 NO: 136 CATUR TUNGGAL', '85643090011', 'L', 'bt', '1992-03-11', 'YOGYAKARTA', 3, 1, 'BACIRO', '1992-08-02', 'BUKU VIII HAL: 94, NO: 282', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 61, 9, 100, 0, 1, 6, 0, 3, 3, 0, 4, 0, 0, 0, NULL, NULL),
(1628, '300730010030130053', 451, 1, 'KOESBYANTORO, ALOYSIUS', '', 'JANTI RT. 04 RW. 02 NO. 1780 CATUR TUNGGAL', '85228558289', 'L', 'A', '1962-06-25', 'KENDAL', 3, 1, 'KENDAL', '1962-07-25', '-', '', '', '2', '', 'KENDAL', '1975-12-31', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1984-09-24', 'ANNO 1994/LM III FOL 80 NO. 238', '', 3, 66, 15, 9, 100, 0, 1, 3, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1629, '300730010030130054', 451, 2, 'HARYANI, ELISABETH', '', 'JANTI RT. 04 RW. 02 NO. 1780 CATUR TUNGGAL', '85228558289', 'P', 'O', '1970-11-03', 'SLEMAN', 3, 1, 'BACIRO', '1982-05-24', 'BUKU V. NO.1069', '', '', '2', '', 'BACIRO', '1984-12-31', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1984-09-24', 'ANNO 1994/LM III FOL 80 NO. 238', '', 3, 66, 62, 9, 100, 0, 1, 3, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1630, '300730010030130055', 451, 3, 'DHIMAS KUSHARTOMO, LAURENSIUS', '', 'JANTI RT. 04 RW. 02 NO. 1780 CATUR TUNGGAL', '85228558289', 'L', 'bt', '1995-03-27', 'SLEMAN', 3, 1, 'BACIRO', '1995-07-02', 'BUKU VIII NO.1007', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 13, 66, 64, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1631, '300730010030130056', 451, 3, 'GALUH KUSHARSIWI, AGATHA', '', 'JANTI RT. 04 RW. 02 NO. 1780 CATUR TUNGGAL', '85228558289', 'P', 'bt', '2008-05-11', 'SLEMAN', 3, 1, 'BABARSARI', '2008-06-13', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1632, '300730010030140057', 452, 1, 'WALIDI KUSDIARTO, JOANNES', '', 'JANTI RT.03/RW.02 NO.104 CATUR TUNGGAL', '81804199165', 'L', 'B', '1950-07-26', 'SLEMAN', 3, 2, 'JETIS', '1967-03-25', 'BUKU I, HAL. 33 NO: 130', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1996-04-02', 'ANNO 1996/ LM III FOL 127 NO: 379', '', 3, 66, 41, 9, 100, 0, 1, 1, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1633, '300730010030140058', 452, 2, 'SUTARTI, ELISABETH', '', 'JANTI RT.03/RW.02 NO.104 CATUR TUNGGAL', '81804199165', 'P', 'bt', '1957-01-10', 'SLEMAN', 3, 3, 'BACIRO', '1991-12-11', 'BUKU VIII, HAL: 39, NO: 117', '', '', '2', '', 'BACIRO', '1994-12-31', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1996-04-02', 'ANNO 1996/ LM III FOL 127 NO: 379', '', 2, 66, 62, 9, 100, 0, 1, 3, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1634, '300730010030140059', 452, 3, 'FREDY BUDIARTO, YOHANES', '', 'JANTI RT.03/RW.02 NO.104 CATUR TUNGGAL', '81804199165', 'L', 'bt', '1980-05-23', 'SLEMAN', 3, 2, 'BACIRO', '1996-04-05', 'BUKU IX, HAL: 42, NO: 125', '', '', '2', '', 'BACIRO', '1996-12-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 51, 9, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1635, '300730010030140060', 452, 3, 'AGUNG WICAKSONO, LEONARDO', '', 'JANTI RT.03/RW.02 NO.104 CATUR TUNGGAL', '81804199165', 'L', 'bt', '1984-06-21', 'SLEMAN', 3, 2, 'BACIRO', '1996-04-05', 'BUKU IX HAL: 43. NO: 127', '', '', '2', '', 'BACIRO', '1996-12-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 51, 9, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1636, '300730010030150061', 453, 1, 'SUHARDI, LUCAS', '', 'JANTI BANTULAN NO: 29 RT 01 RW 01', '87738255746', 'L', 'O', '1956-01-27', 'SLEMAN', 3, 2, 'BACIRO', '1972-04-01', 'BUKU III, HAL: 8, NO: 29', '', '', '2', '', 'BACIRO', '1972-07-05', '', '0', '', '0000-00-00', 2, 'SIPIL KLATEN', NULL, '1991-01-15', '-', '', 1, 66, 15, 9, 100, 0, 1, 6, 0, 1, 3, 0, 4, 0, 0, 0, NULL, NULL),
(1637, '300730010030150062', 453, 2, 'WALIDAH, ANASTASIA', '', 'JANTI BANTULAN NO: 29 RT 01 RW 01', '87738255746', 'P', 'bt', '1963-11-27', 'KLATEN', 3, 2, 'KLATEN', '1976-01-14', 'BUKU XXII, NO: 195', '', '', '2', '', 'KLATEN', '1976-06-26', '', '0', '', '0000-00-00', 2, 'SIPIL KLATEN', NULL, '1991-01-15', '-', '', 1, 66, 62, 9, 100, 0, 1, 6, 0, 1, 3, 0, 4, 0, 0, 0, NULL, NULL),
(1638, '300730010030150063', 453, 3, 'DWI ARDI FEMBRIANTO, ANTONIUS', '', 'JANTI BANTULAN NO: 29 RT 01 RW 01', '87738255746', 'L', 'bt', '1994-02-26', 'BANTUL', 3, 2, 'BACIRO', '2003-12-24', '-', '', '', '2', '', 'BACIRO', '2003-12-24', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 13, 66, 64, 9, 100, 0, 1, 6, 0, 3, 3, 0, 4, 0, 0, 0, NULL, NULL),
(1639, '300730010030160064', 454, 1, 'WISNU CAHYADI, IGNATIUS', '', 'BANTULAN JANTI RT 01 RW 01 NO: 21', '81328346346', 'L', 'AB', '1978-08-31', 'YOGYAKARTA', 3, 1, 'BACIRO', '1978-10-06', 'BUKU IV. HAL 194. NO: 777', '', '', '2', '', 'BACIRO', '1992-12-31', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '2005-08-28', 'ANNO 2005/LM IV FOL. 22 NO: 64', '', 5, 36, 56, 9, 100, 0, 1, 3, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1640, '300730010030160065', 454, 2, 'IKA MARIAWATI, THERESIA', '', 'BANTULAN JANTI RT 01 RW 01 NO: 21', '81328346346', 'P', 'B', '1974-09-24', 'JAKARTA', 3, 1, 'JAKARTA', '1980-03-02', 'BUKU III, HAL: 32, NO: 126', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '2005-08-28', 'ANNO 2005/LM IV FOL. 22 NO: 64', '', 4, 13, 17, 9, 100, 0, 1, 3, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1641, '300730010030160066', 454, 3, 'KRISHNA HARSHA WARDHANA, RAYMUNDUS NONNATUS', '', 'BANTULAN JANTI RT 01 RW 01 NO: 21', '81328346346', 'L', 'bt', '2006-08-05', 'YOGYAKARTA', 3, 1, 'BACIRO', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1642, '300730010030160067', 454, 3, 'LAKSHITA DEVI WISNU WARDHANI, GABRIEL', '', 'BANTULAN JANTI RT 01 RW 01 NO: 21', '81328346346', 'P', 'bt', '2010-09-15', 'SLEMAN', 3, 1, 'BABARSARI', '2010-10-18', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1643, '300730010030170068', 455, 1, 'SUPRIYADI, STEFANUS', '', 'JANTI RT 02 RW 01 CATUR TUNGGAL', '0274-917884', 'L', 'bt', '1972-12-20', 'PURWOREDJO', 3, 3, 'BABARSARI', '2005-12-18', 'BUKU 001, NO: 130', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '2005-01-15', 'ANNO 2005/ LM IV FOl. 09 NO: 25', '', 2, 66, 58, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1644, '300730010030170069', 455, 2, 'SULISMIWATI, ALOYSIA', '', 'JANTI RT 02 RW 01 CATUR TUNGGAL', '0274-917884', 'P', 'B', '1971-07-03', 'SLEMAN', 3, 1, 'BACIRO', '1972-04-01', 'BUKU III, HAL: 9 NO: 35', '', '', '2', '', 'BACIRO', '1986-12-31', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '2005-01-15', 'ANNO 2005/ LM IV FOl. 09 NO: 25', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1645, '300730010030170070', 455, 3, 'WAHYU KURNIAWATI, MONIKA', '', 'JANTI RT 02 RW 01 CATUR TUNGGAL', '0274-917884', 'P', 'bt', '2008-05-20', 'BANTUL', 3, 1, 'BABARSARI', '2008-07-11', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1646, '300730010030180071', 456, 1, 'SAMUN TRIYOKO, GREGORIUS AGUNG', '', 'BANTULAN RT 02 RW 01 NO: 73 JANTI', '0274-485926', 'L', 'O', '1947-04-21', 'DELANGGU', 3, 3, 'BACIRO', '1985-12-18', '-', '', '', '2', '', 'BACIRO', '1986-12-31', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '2011-01-29', 'ANNO 2011/ LM IV NO: 363', '', 5, 60, 37, 9, 100, 0, 1, 4, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1647, '300730010030180072', 456, 2, 'MURDIYATI, MARIA GORETTI', '', 'BANTULAN RT 02 RW 01 NO: 73 JANTI', '0274-485926', 'P', 'B', '1964-10-27', 'YOGYAKARTA', 3, 2, 'BACIRO', '1981-12-31', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '2011-01-29', 'ANNO 2011/ LM IV NO: 363', '', 3, 66, 15, 9, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1648, '300730010030180073', 456, 3, 'SIGIT KURNIA MULIAWAN, HENDRIKUS', '', 'BANTULAN RT 02 RW 01 NO: 73 JANTI', '0274-485926', 'L', 'O', '1986-02-12', 'YOGYAKARTA', 3, 1, 'BACIRO', '1990-02-11', 'BUKU VII HAL: 199 NO: 792', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 60, 42, 9, 309, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1649, '300730010030190074', 457, 1, 'RENI INDRAWATI, ELISABETH', '', 'JANTI RT 04 RW 02 NO: 131 CATUR TUNGGAL', '87838443549', 'P', 'bt', '1969-05-30', 'YOGYAKARTA', 3, 1, 'AMPENAN', '1971-01-02', 'NO: 290', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 8, 'JANDA', NULL, '0000-00-00', '-', '', 2, 66, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1650, '300730010030190075', 457, 3, 'NOVALIA SANDRA, MONICA', '', 'JANTI RT 04 RW 02 NO: 131 CATUR TUNGGAL', '87838443549', 'P', 'B', '1987-05-06', 'SLEMAN', 3, 1, 'BACIRO', '1988-08-07', 'BUKU VII HAL 81 NO: 322', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 44, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1651, '300730010030190076', 457, 3, 'FITRA DESTIARINI, KRISTINA', '', 'JANTI RT 04 RW 02 NO: 131 CATUR TUNGGAL', '87838443549', 'P', 'bt', '1995-12-04', 'BANTUL', 3, 1, 'BACIRO', '1996-02-04', 'BUKU IX HAL 30 NO 90', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 12, 66, 64, 9, 319, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1652, '300730010030190077', 457, 3, 'ADITYA HERMAWAN, ALFONSUS', '', 'JANTI RT 04 RW 02 NO: 131 CATUR TUNGGAL', '87838443549', 'L', 'bt', '2001-08-01', 'YOGYAKARTA', 3, 1, 'BACIRO', '2002-09-22', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1653, '300730010030200078', 458, 1, 'ENDANG RUSTIANA DEWI, CATHARINA', '', 'JANTI RT 04 RW 02 NO: 139 DEPOK', '0274-7433104', 'P', 'B', '1974-12-31', 'KLATEN', 3, 2, 'DELANGGU', '1983-04-18', 'LB V HAL;228 NO.4892', '', '', '2', '', 'DELANGGU', '1983-12-31', '', '0', '', '0000-00-00', 3, 'SIPIL KLATEN', NULL, '2002-08-03', '-', '', 5, 13, 62, 9, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1654, '300730010030220079', 459, 1, 'HANDANG SUDIRYA, ANTONIUS', '', 'JANTI RT.03/RW.02 NO.94 CATUR TUNGGAL', '0274-484793', 'L', 'B', '1938-06-08', 'BANDUNG', 3, 3, 'KEMETIRAN', '1964-12-20', 'BUKU III NO.234/3012', '', '', '2', '', 'KEMETIRAN', '1970-12-31', '', '0', '', '0000-00-00', 8, 'DUDA', NULL, '0000-00-00', '-', '', 3, 66, 34, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1655, '300730010030230080', 460, 1, 'DJOYO SUWARNO, ANDREAS', '', 'BANTULAN RT.01/RW.01 NO.15', '-', 'L', 'bt', '1929-12-31', 'SLEMAN', 3, 3, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 3, 'SLEMAN', NULL, '1961-12-31', '-', '', 1, 66, 36, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1656, '300730010030230081', 460, 2, 'MASIYEM, ELISABETH', '', 'BANTULAN RT.01/RW.01 NO.15', '-', 'P', 'bt', '1934-12-31', 'BANTUL', 3, 3, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 3, 'SLEMAN', NULL, '1961-12-31', '-', '', 1, 66, 15, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1657, '300730010030230082', 460, 10, 'GUNAR SURATMO, MARCUS', '', 'BANTULAN RT.01/RW.01 NO.15', '-', 'L', 'bt', '1964-12-31', 'SLEMAN', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 5, '', NULL, '0000-00-00', '', '', 3, 66, 36, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1658, '300730010030240083', 461, 1, 'SARJILAH SANIKEM, MARIA MAGDALENA', '', 'JANTI RT 04 RW 02 NO: 136 CATUR TUNGGAL', '85729332420', 'P', 'bt', '1944-12-30', 'YOGYAKARTA', 3, 3, 'BACIRO', '1973-12-24', 'BUKU III HAL.127.NO.505', '', '', '2', '', 'BACIRO', '1974-12-31', '', '0', '', '0000-00-00', 8, 'JANDA', NULL, '0000-00-00', 'ANNO1975/VEL.LM I FOL.94', '', 1, 66, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1659, '300730010030250084', 462, 1, 'SUTARMADI, CYRILLUS', '', 'JANTI RT.03/RW.02 NO.92 CATUR TUNGGAL', '0274-7023899', 'L', 'A', '1961-02-12', 'SLEMAN', 3, 2, 'BABARSARI', '1983-12-21', 'BUKU V NO: 1654', '', '', '2', '', 'BACIRO', '1984-12-31', '', '0', '', '0000-00-00', 2, 'BANTENG', NULL, '1983-01-20', 'ANNO 1983/ VEL L I FOL 70 NO: 277', '', 3, 66, 41, 9, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1660, '300730010030250085', 462, 2, 'TRIATMOJO MULIARTI DEPAZI, MAGDALENA', '', 'JANTI RT.03/RW.02 NO.92 CATUR TUNGGAL', '0274-7023899', 'P', 'B', '1962-05-29', 'SOLO', 3, 2, 'KOTABARU', '1972-05-19', 'BUKU XV.NO.644', '', '', '2', '', 'KOTABARU', '1974-12-31', '', '0', '', '0000-00-00', 2, 'BANTENG', NULL, '1983-01-20', 'ANNO 1983/ VEL L I FOL 70 NO: 277', '', 3, 66, 62, 9, 100, 0, 1, 3, 0, 1, 1, 0, 1, 0, 0, 0, NULL, NULL),
(1661, '300730010030250086', 462, 10, 'INDRA TRI JAYANTO, FABIANUS', '', 'JANTI RT.03/RW.02 NO.92 CATUR TUNGGAL', '0274-7023899', 'L', 'B', '1987-10-20', 'SLEMAN', 3, 1, 'BACIRO', '1987-12-31', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 40, 38, 9, 325, 0, 1, 6, 0, 3, 1, 0, 1, 0, 0, 0, NULL, NULL),
(1662, '300730010030200087', 463, 3, 'ADAM ROSDEWANTO, SILVESTER', '', 'JANTI RT 04 RW 02 NO: 139 DEPOK', '0274-7433104', 'L', 'B', '2002-12-31', 'KLATEN', 3, 1, 'DELANGGU', '2006-05-16', 'LB IX. FO.012. NO.8045', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1663, '300730010030210088', 464, 1, 'TONY SETIAWAN, ALEXANDER', '', 'JANTI RT 03 RW 02 NO: 104 CATUR TUNGGAL', '83869992203', 'L', 'AB', '1982-03-21', 'SLEMAN', 3, 2, 'BACIRO', '1996-04-05', 'BUKU IX HAL: 42 NO: 126', '', '', '2', '', 'BACIRO', '1996-04-05', '', '0', '', '0000-00-00', 2, 'BANTUL', NULL, '2007-08-26', 'ANNO 2007/ VEL LM II FOL 281 NO: 1596', '', 3, 66, 51, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1664, '300730010030210089', 464, 2, 'SUKATMIATUN, ELIA', '', 'JANTI RT 03 RW 02 NO: 104 CATUR TUNGGAL', '83869992203', 'P', 'bt', '1982-01-05', 'KLATEN', 3, 3, 'SEDAYU', '2007-07-13', 'BUKU X, HAL 17, NO: 7250', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BANTUL', NULL, '2007-08-26', 'ANNO 2007/ VEL LM II FOL 281 NO: 1596', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1665, '300730010030210090', 464, 3, 'BRYAN BAYU AJI, BENEDICTUS', '', 'JANTI RT 03 RW 02 NO: 104 CATUR TUNGGAL', '83869992203', 'L', 'bt', '2008-12-14', 'SLEMAN', 3, 1, 'BABARSARI', '2009-01-16', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1666, '300730010030260091', 465, 1, 'LAMI NIWOTOPENI ROFINA', '', 'JANTI RT 03 RW 02 CATUR TUNGGAL', '0274-484898', 'P', 'A', '1948-08-08', 'BLITAR', 3, 2, 'SURABAYA', '1963-12-31', '-', '', '', '2', '', 'BACIRO', '1977-12-31', '', '0', '', '0000-00-00', 8, 'JANDA', NULL, '0000-00-00', '-', '', 2, 66, 62, 9, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1667, '300730010030260092', 465, 3, 'EVIANDARU MADYANINGRUM, MONICA', '', 'JANTI RT 03 RW 02 CATUR TUNGGAL', '0274-484898', 'P', 'A', '1977-08-24', 'YOGYAKARTA', 3, 1, 'BACIRO', '1977-12-31', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 57, 31, 9, 333, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1668, '300730010030260093', 465, 3, 'RETNO PALUPI, KATHARINA', '', 'JANTI RT 03 RW 02 CATUR TUNGGAL', '0274-484898', 'P', 'A', '1979-12-29', 'YOGYAKARTA', 3, 1, 'BACIRO', '1979-12-31', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 5, 13, 22, 9, 309, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1669, '300730010030270094', 466, 1, 'ARIEF BUDIARTO, THEODORUS', '', 'BANTULAN RT 01 RW -- NO: 73B', '81903715859', 'L', 'O', '1970-04-01', 'MALANG', 3, 1, 'MALANG', '1970-05-28', 'LIBER XII PAGE 231 No: 69', '', '', '2', '', 'MALANG', '1984-12-31', '', '0', '', '0000-00-00', 2, 'SIPIL YOGYAKARTA', NULL, '2005-11-12', '-', '', 5, 13, 56, 9, 100, 0, 1, 6, 0, 4, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1670, '300730010030270095', 466, 2, 'LESTARI PRASETYASTUTI GULTOM, BERNYKE', '', 'BANTULAN RT 01 RW -- NO: 73B', '81903715859', 'P', 'A', '1980-02-11', 'YOGYAKARTA', 3, 1, 'GKJ AMBARUKMO', '1981-06-07', 'BUKU I HAL 18 NO B/ 34', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'SIPIL YOGYAKARTA', NULL, '2005-11-12', '-', '', 5, 13, 56, 9, 100, 0, 1, 6, 0, 4, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1671, '300730010030270096', 466, 3, 'ARIESCA PASKATIA, KATARINA', '', 'BANTULAN RT 01 RW -- NO: 73B', '81903715859', 'P', 'A', '1999-04-03', 'SURAKARTA', 3, 1, 'BACIRO', '2010-03-26', 'BUKU XI NO 188', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1672, '300730010030280097', 467, 1, 'TIMETEOS LATU PAPUA, YUNUS', '', 'PERUM GRYA CIPTA NO 1E JANTI', '81227921416', 'L', 'B', '1960-09-22', 'RIAU', 3, 1, 'TANJUNG PINANG', '1960-10-09', 'BUKU II NO 42/804', '', '', '2', '', 'JAKARTA', '1976-12-31', '', '0', '', '0000-00-00', 2, 'SEDAYU', NULL, '1995-12-30', '-', '', 4, 60, 37, 20, 339, 0, 1, 6, 0, 4, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1673, '300730010030280098', 467, 2, 'NGATINAH, BRIGITA', '', 'PERUM GRYA CIPTA NO 1E JANTI', '81227921416', 'P', 'O', '1970-10-01', 'BANTUL', 3, 2, 'BANTUL', '1985-12-23', 'BUKU VIII NO 053/5594', '', '', '2', '', 'BANTUL', '1986-12-31', '', '0', '', '0000-00-00', 2, 'SEDAYU', NULL, '1995-12-30', '-', '', 5, 13, 37, 9, 100, 0, 1, 6, 0, 4, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1674, '300730010030280099', 467, 3, 'DINO LATU PAPUA, KRISTOFFER', '', 'PERUM GRYA CIPTA NO 1E JANTI', '81227921416', 'L', 'O', '1996-12-24', 'SLEMAN', 3, 1, 'BANTUL', '1997-06-28', 'BUKU XI HAL 123 NO 6661', '', '', '2', '', 'KOTABARU', '2010-12-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 12, 66, 64, 9, 100, 0, 1, 6, 0, 4, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1675, '300730010030280100', 467, 3, 'RENO LATU PAPUA, PASKALIS', '', 'PERUM GRYA CIPTA NO 1E JANTI', '81227921416', 'L', 'O', '1999-04-04', 'SLEMAN', 3, 1, 'SDH', '0000-00-00', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1676, '300730010030290101', 468, 1, 'SUMARDIYONO, IGNASIUS', '', 'BANTULAN JANTI RT 01 RW 02', '0274-487856', 'L', 'O', '1949-10-12', 'YOGYAKARTA', 3, 3, 'JAKARTA', '1987-05-24', 'BUKU X HAL 13 NO 52', '', '', '2', '', 'JAKARTA', '1990-11-07', '', '0', '', '0000-00-00', 2, 'JAKARTA', NULL, '1987-05-24', 'BUKU II HAL 165 NO 656', '', 3, 66, 34, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1677, '300730010030290102', 468, 2, 'RUSMIATI, YULIANA', '', 'BANTULAN JANTI RT 01 RW 02', '0274-487856', 'P', 'O', '1958-02-24', 'PONOROGO', 3, 3, 'JAKARTA', '1987-05-24', 'BUKU X HAL 14 NO 53', '', '', '2', '', 'JAKARTA', '1990-11-07', '', '0', '', '0000-00-00', 2, 'JAKARTA', NULL, '1987-05-24', 'BUKU II HAL 165 NO 656', '', 1, 66, 62, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1678, '300730010030290103', 468, 3, 'YUDI SETIO NUGROHO, DAMIANUS', '', 'BANTULAN JANTI RT 01 RW 02', '0274-487856', 'L', 'O', '1977-09-26', 'YOGYAKARTA', 3, 2, 'JAKARTA', '1987-05-24', 'BUKU X HAL 14 NO 54', '', '', '2', '', 'JAKARTA', '1990-11-07', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 4, 19, 56, 9, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1679, '300730010030300104', 469, 1, 'FEN SAPARITA, DIONYSIUS', '', 'PERUM GRIYA CIPTA NO: 2A JANTI', '0274-486441', 'L', 'B', '1963-10-13', 'YOGYAKARTA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1993-06-12', 'ANNO 1993/ LM III FOL 43 NO 129', '', 5, 13, 24, 9, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1680, '300730010030300105', 469, 2, 'ANNA YULIANTI, LAURENSIA', '', 'PERUM GRIYA CIPTA NO: 2A JANTI', '0274-486441', 'P', 'A', '1961-07-17', 'YOGYAKARTA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1993-06-12', 'ANNO 1993/ LM III FOL 43 NO 129', '', 5, 23, 24, 9, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1681, '300730010030300106', 469, 3, 'SHEILA PUTRI ANDRIANA', '', 'PERUM GRIYA CIPTA NO: 2A JANTI', '0274-486441', 'P', 'A', '2000-07-22', 'YOGYAKARTA', 3, 1, 'KOTABARU', '2001-06-01', 'BUKU XXVI. NO.97.THN.2001', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1682, '300730010030310107', 470, 1, 'SUWARTI, YOHANA', '', 'JANTI RT 04 RW 02 NO 135 CATUR TUNGGAL', '81226995583', 'P', 'O', '1960-10-26', 'SLEMAN', 3, 3, 'BACIRO', '1984-12-19', 'BUKU VI NO 344', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 8, 'JANDA', NULL, '0000-00-00', '-', '', 1, 66, 20, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1683, '300730010030320108', 471, 1, 'GUNARJATI, YOHANES', '', 'BANTULAN RT 02 RW 01 NO 35 CATUR TUNGGAL', '81804313219', 'L', 'bt', '1958-02-06', 'SLEMAN', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'SIPIL YOGYAKARTA', NULL, '1983-04-07', '-', '', 3, 66, 56, 9, 100, 0, 1, 6, 0, 6, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1684, '300730010030320109', 471, 2, 'SRI RAHAYU, ANASTASIA', '', 'BANTULAN RT 02 RW 01 NO 35 CATUR TUNGGAL', '81804313219', 'P', 'O', '1961-06-06', 'KLATEN', 3, 3, 'BACIRO', '1998-04-07', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'SIPIL YOGYAKARTA', NULL, '1983-04-07', '-', '', 4, 44, 27, 9, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1685, '300730010030320110', 471, 3, 'RITZQIJATI WAHYUGI, FABIANUS', '', 'BANTULAN RT 02 RW 01 NO 35 CATUR TUNGGAL', '81804313219', 'L', 'bt', '1987-04-23', 'BANTUL', 3, 1, 'BACIRO', '1998-04-07', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 4, 65, 61, 9, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1686, '300730010030320111', 471, 3, 'ARIEF JATI ASHADI, ANTONIUS', '', 'BANTULAN RT 02 RW 01 NO 35 CATUR TUNGGAL', '81804313219', 'L', 'bt', '1991-05-07', 'SLEMAN', 3, 2, 'BACIRO', '1998-04-07', '-', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 64, 9, 330, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1687, '300730010030330112', 472, 1, 'TRI SISWI WIDYANINGSIH, YUPITA', '', 'JANTI RT 03 RW 02 NO 179', '81328517455', 'P', 'AB', '1976-06-22', 'KARANGANYAR', 3, 1, 'PANASAN', '1976-07-21', '-', '', '', '2', '', 'BACIRO', '1990-12-31', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '2004-09-12', 'ANNO 2004/ LM IV FOL 02 NO 04', '', 5, 13, 56, 9, 100, 0, 1, 6, 0, 4, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1688, '300730010030330113', 472, 3, 'ANGGITHA SEKAR SIWI, YOHANA', '', 'JANTI RT 03 RW 02 NO 179', '81328517455', 'P', 'A', '2008-02-26', 'BANTUL', 3, 1, 'BABARSARI', '2008-06-13', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1689, '300730010030340114', 473, 1, 'DWI SUNTORO, YUSTINUS', '', 'JANTI RT 05 RW 02 NO 224', '81542731100', 'L', 'AB', '1974-07-27', 'SURAKARTA', 3, 1, 'KARTASURA', '1974-11-14', 'BUKU I HAL 180 NO 718', '', '', '2', '', 'BACIRO', '1988-12-31', '', '0', '', '0000-00-00', 3, 'JAKARTA', NULL, '2005-04-24', 'BUKU I HAL 166 NO 653', '', 5, 23, 37, 9, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1690, '300730010030340115', 473, 2, 'SUHARTANTI, FELISITAS', '', 'JANTI RT 05 RW 02 NO 224', '81542731100', 'P', 'B', '1985-11-30', 'GUNUNG KIDUL', 3, 3, 'BANTUL', '2009-04-11', 'BUKU VII HAL 81 NO 8130', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 3, 'JAKARTA', NULL, '2005-04-24', 'BUKU I HAL 166 NO 653', '', 5, 13, 37, 9, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1691, '300730010030340116', 473, 3, 'BONDAN ARYOBIMO HARTOKO, ALBERTUS', '', 'JANTI RT 05 RW 02 NO 224', '81542731100', 'L', 'AB', '2005-11-23', 'BEKASI', 3, 1, 'BACIRO', '2006-04-07', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1692, '300730010030340117', 473, 7, 'NUNUK MUJILAH, VERONIKA', '', 'JANTI RT 05 RW 02 NO 224', '81542731100', 'P', 'bt', '1944-12-31', 'YOGYAKARTA', 3, 3, 'SEMARANG', '1969-12-31', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 8, '', NULL, '0000-00-00', '', '', 3, 66, 34, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1693, '300730010030350118', 474, 1, 'SUTOPO WALUYO, ANTONIUS', '', 'JANTI CT 16 NO 89 RT 03 RW 02 CATUR TUNGGAL', '0274-9125977', 'L', 'O', '1960-01-11', 'YOGYAKARTA', 3, 3, 'BACIRO', '1987-04-13', 'BACIRO, BUKU VI HAL 278 NO 1108', '', '', '2', '', 'BACIRO', '1988-06-11', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1985-12-26', 'BUKU II HAL 141 NO 562', '', 3, 66, 40, 9, 100, 0, 1, 3, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1694, '300730010030350119', 474, 2, 'SUBIYANTI, CHRISTINA', '', 'JANTI CT 16 NO 89 RT 03 RW 02 CATUR TUNGGAL', '0274-9125977', 'P', 'AB', '1963-09-19', 'SLEMAN', 3, 2, 'BACIRO', '1972-04-01', 'BACIRO, BUKU III HAL 8 NO 32', '', '', '2', '', 'BACIRO', '1980-07-17', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '1985-12-26', 'BUKU II HAL 141 NO 562', '', 3, 66, 62, 9, 100, 0, 1, 3, 0, 1, 2, 0, 1, 0, 0, 0, NULL, NULL),
(1695, '300730010030350120', 474, 3, 'CAHYO UTAMA, BENEDICTUS', '', 'JANTI CT 16 NO 89 RT 03 RW 02 CATUR TUNGGAL', '0274-9125977', 'L', 'A', '1987-07-18', 'BANTUL', 3, 1, 'BACIRO', '1987-11-08', 'BACIRO, BUKU VII HAL 18 NO 70', '', '', '2', '', 'BACIRO', '2000-09-29', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 61, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1696, '300730010030350121', 474, 3, 'DWI CAHYANTO, LUDOVICUS', '', 'JANTI CT 16 NO 89 RT 03 RW 02 CATUR TUNGGAL', '0274-9125977', 'L', 'B', '1991-08-21', 'BANTUL', 3, 1, 'BACIRO', '1991-12-15', 'BACIRO, BUKU VIII HAL 50 NO 150', '', '', '2', '', 'BACIRO', '2006-12-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 25, 66, 65, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1697, '300730010030350122', 474, 8, 'WARGO SUPRIYONO, AGUSTINUS', '', 'JANTI CT 16 NO 89 RT 03 RW 02 CATUR TUNGGAL', '0274-9125977', 'L', 'A', '1952-12-31', 'YOGYAKARTA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 8, '', NULL, '0000-00-00', '', '', 1, 66, 23, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1698, '300730010030360123', 475, 1, 'SUPATNO, IGNATIUS', '', 'JANTI 69 SENGON 161', '8139219370', 'L', 'B', '1977-08-17', 'YOGYAKARTA', 3, 1, 'BACIRO', '1977-11-04', 'BACIRO, IV/136/542', '', '', '2', '', 'BACIRO', '1992-10-18', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '2007-12-31', 'I/-/16', '', 4, 55, 37, 9, 329, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1699, '300730010030360124', 475, 2, 'DEWI RATNAWATI, AGATHA', '', 'JANTI 69 SENGON 161', '8139219370', 'P', 'O', '1976-02-05', 'SLEMAN', 3, 7, 'MALIMAU', '2008-01-21', 'MALIMAU, IV/-/7132', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '2007-12-31', 'I/-/16', '', 5, 23, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1700, '300730010030360125', 475, 3, 'DEWANTYO ARYA PRATAMA, SILVESTER', '', 'JANTI 69 SENGON 161', '8139219370', 'L', 'O', '2008-12-20', 'YOGYAKARTA', 3, 1, 'BACIRO', '2009-01-16', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1701, '300730010030360126', 475, 3, 'DEVANO CHRISTIAN PRADITYA, RAVAEL', '', 'JANTI 69 SENGON 161', '8139219370', 'L', 'bt', '2010-10-01', 'SLEMAN', 3, 1, 'BABARSARI', '2011-02-11', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1702, '300730010030370127', 476, 1, 'WIDIYANTO, HENDRICUS', '', 'JANTI, G9 JOHAR 1 NO 24 CATUR TUNGGAL', '-', 'L', 'B', '1942-07-15', 'PRAMBANAN', 3, 1, 'KALASAN', '1942-08-15', '-', '', '', '2', '', 'KALASAN', '1953-02-15', '', '0', '', '0000-00-00', 2, 'MLATI', NULL, '1966-10-01', 'BUKU I HAL I NO 226', '', 3, 66, 34, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1703, '300730010030370128', 476, 2, 'SUDARTO, FLORENTINA', '', 'JANTI, G9 JOHAR 1 NO 24 CATUR TUNGGAL', '-', 'P', 'O', '1949-07-01', 'SLEMAN', 3, 2, 'PAKEM', '1966-08-13', 'BUKU III HAL 170 NO 2468', '', '', '2', '', 'BACIRO', '1970-06-17', '', '0', '', '0000-00-00', 2, 'MLATI', NULL, '1966-10-01', 'BUKU I HAL I NO 226', '', 2, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1704, '300730010030380129', 477, 1, 'SULASTRI, VALENTINA', '', 'JANTI 66, JOHAR NO 108', '81804365922', 'P', 'O', '1965-04-02', 'CILACAP', 3, 1, 'CILACAP', '1965-12-31', '-', '', '', '2', '', 'CILACAP', '1979-12-31', '', '0', '', '0000-00-00', 0, 'SDH', NULL, '1991-12-31', '-', '', 5, 30, 5, 9, 100, 0, 1, 6, 0, 5, 2, 0, 2, 0, 0, 0, NULL, NULL),
(1705, '300730010030380130', 477, 3, 'GALIH SWASTYANANTO, ALBERTUS MAGNUS', '', 'JANTI 66, JOHAR NO 108', '81804365922', 'L', 'B', '1992-07-17', 'YOGYAKARTA', 3, 1, 'BACIRO', '1992-09-13', 'BACIRO, VIII/100/29', '', '', '2', '', 'BACIRO', '2006-12-31', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 66, 65, 9, 100, 0, 1, 6, 0, 5, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1706, '300730010030380131', 477, 3, 'GILANG SWASTYANTO, BOROMEUS', '', 'JANTI 66, JOHAR NO 108', '81804365922', 'L', 'O', '1993-09-03', 'YOGYAKARTA', 3, 1, 'BACIRO', '1994-03-13', 'BACIRO, VIII/324/672', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 13, 66, 64, 9, 100, 0, 1, 6, 0, 6, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1707, '300730010030390132', 478, 1, 'NILAM MAHARANI, VINCENTIA', '', 'GANG PANDAWA NO 22 BANTULAN JANTI', '0274-488011', 'P', 'O', '1981-01-24', 'SUKOHARJO', 3, 2, 'KARANGANYAR', '1994-04-02', 'KARANGANYAR, V/213/850', '', '', '2', '', 'KARANGANYAR', '1995-09-22', '', '0', '', '0000-00-00', 8, 'JANDA', NULL, '0000-00-00', 'BUKU II HAL 229 NO 828', '', 6, 67, 26, 9, 100, 0, 1, 6, 0, 4, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1708, '300730010030390133', 478, 3, 'DIMAS SADEWA SATRIATAMA, YOHANES', '', 'GANG PANDAWA NO 22 BANTULAN JANTI', '0274-488011', 'L', 'bt', '1990-06-05', 'SLEMAN', 3, 1, 'BACIRO', '2010-02-05', 'BACIRO, XI/-/180', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 88, 9, 100, 0, 1, 6, 0, 4, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1709, '300730010030390134', 478, 9, 'GALIH WIJAYATI ROSALIA, GLECERIA', '', 'GANG PANDAWA NO 22 BANTULAN JANTI', '0274-488011', 'P', 'B', '1971-05-13', 'SEMARANG', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 20, 9, 100, 0, 1, 6, 0, 4, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1710, '300730010030400135', 479, 1, 'EKO SULISTYO WANTORO, IGNATIUS', '', 'BANTULAN JANTI NO 09 CATUR TUNGGAL', '85643023398', 'L', 'O', '1978-04-28', 'SLEMAN', 3, 1, 'BACIRO', '1981-06-01', 'BACIRO, BUKU V NO 683', '', '', '2', '', 'BACIRO', '1992-10-18', '', '0', '', '0000-00-00', 2, 'BABARSARI', NULL, '2009-11-22', 'BUKU I NO 37 HAL I', '', 3, 66, 56, 9, 100, 0, 1, 6, 0, 5, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1711, '300730010030400136', 479, 2, 'DROSTE RUKMINI, MARIA', '', 'BANTULAN JANTI NO 09 CATUR TUNGGAL', '85643023398', 'P', 'A', '1983-06-08', 'YOGYAKARTA', 3, 2, 'BACIRO', '1991-12-11', 'BACIRO, BUKU VIII NO 134', '', '', '2', '', 'BACIRO', '1998-08-16', '', '0', '', '0000-00-00', 2, 'BABARSARI', NULL, '2009-11-22', 'BUKU I NO 37 HAL I', '', 3, 66, 37, 9, 100, 0, 1, 4, 0, 5, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1712, '300730010030400137', 479, 3, 'IMANUELA KAYANA SULISTYO, MARIA', '', 'BANTULAN JANTI NO 09 CATUR TUNGGAL', '85643023398', 'P', 'bt', '2010-08-19', 'SLEMAN', 3, 1, 'BABARSARI', '2010-10-08', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1713, '300730010030410138', 480, 1, 'PARSILAH, THERESIA', '', 'BANTULAN JANTI NO 09 CATUR TUNGGAL', '-', 'P', 'AB', '1943-05-18', 'SLEMAN', 3, 3, 'BACIRO', '1989-12-21', 'BACIRO, BUKU VII HAL 180 NO 717', '', '', '2', '', 'BACIRO', '1990-09-28', '', '0', '', '0000-00-00', 2, 'SLEMAN', NULL, '1962-08-16', '- (HILANG)', '', 1, 66, 62, 9, 100, 0, 1, 6, 0, 1, 2, 55, 4, 0, 0, 0, NULL, NULL),
(1714, '300730010030410139', 480, 3, 'WIDYATUTI, FRANSISCA', '', 'BANTULAN JANTI NO 09 CATUR TUNGGAL', '-', 'P', 'AB', '1971-03-16', 'YOGYAKARTA', 9, 2, 'SDH-KATO', '1987-04-13', 'BACIRO, BUKU VI HAL 277 NO 1105', '', '', '1', '', 'TDK', '1988-06-11', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 14, 29, 56, 9, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1715, '300730010010970001', 481, 1, 'KURNIAWAN MALO, FRANSISKUS XAFERIUS', '', 'JLN. RAYA BABARSARI NO: 102', '-', 'L', 'O', '1991-09-28', 'YOGYAKARTA', 3, 1, 'YOGYAKARTA', '1991-12-06', 'XII/199/4926', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, 'BLM', NULL, '0000-00-00', '-', '', 15, 66, 65, 16, 400, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1716, '300730010080520001', 482, 1, 'ARIF BUDIONO, CRYLLUS', '', 'DIRGANTARA I NO.22', '817469888', 'L', 'B', '1972-06-27', 'YOGYAKARTA', 3, 2, 'PAKEM', '1984-12-14', 'BUKU IV/ HAL.65/ NO.5028', '', '', '2', '', 'PAKEM', '1986-05-22', '', '0', '', '0000-00-00', 3, 'ST. MARIA ASUMPTA BABARSARI', NULL, '2006-05-28', 'BUKU III NO: 1505', '', 6, 39, 24, 9, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1717, '300730010080520002', 482, 2, 'DIANA RENZY', '', 'DIRGANTARA I NO.22', '817469888', 'P', 'AB', '1977-05-26', 'MALANG', 1, 11, 'TDK', '0000-00-00', '', '', '', '1', '', 'TDK', '0000-00-00', '', '0', '', '0000-00-00', 3, 'ST. MARIA ASUMPTA BABARSARI', NULL, '2006-05-28', 'BUKU III NO: 1505', '', 5, 13, 56, 9, 99, 0, 1, 0, 0, 0, 1, 0, 99, 0, 0, 0, NULL, NULL),
(1718, '300730010080520003', 482, 3, 'AGUNG SETYAWAN, IMMANUEL', '', 'DIRGANTARA I NO.22', '817469888', 'L', 'O', '2007-10-12', 'YOGYAKARTA', 3, 1, 'BABARSARI', '2007-12-13', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1719, '300730010080520004', 482, 3, 'BAGUS SATRIAWAN, STEFANUS', '', 'DIRGANTARA I NO.22', '817469888', 'L', 'O', '2009-04-30', 'YOGYAKARTA', 3, 1, 'BABARSARI', '2009-06-12', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1720, '300730010080530005', 483, 1, 'PONIMIN, PAULUS', '', 'TAMBAK BAYAN 8 NO.12 RT.08/RW.03', '(0274)486228', 'L', 'O', '1947-09-04', 'YOGYAKARTA', 3, 3, 'BACIRO', '1975-12-23', 'BUKU III/ HAL 238/ NO. 949', '', '', '2', '', 'BACIRO', '1978-08-09', '', '0', '', '0000-00-00', 2, 'KRISTUS RAJA BACIRO', NULL, '1976-02-18', 'ANOO 1976/ VEL. LI FOI.101/ NO.402', '', 2, 66, 56, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1721, '300730010080530006', 483, 2, 'HATPONIJAH, ANTONIA', '', 'TAMBAK BAYAN 8 NO.12 RT.08/RW.03', '(0274)486228', 'P', 'O', '1956-05-01', 'YOGYAKARTA', 3, 3, 'BACIRO', '1970-12-22', 'BUKU II/ HAL.134/ NO.530', '', '', '2', '', 'BACIRO', '1978-08-09', '', '0', '', '0000-00-00', 2, 'KRISTUS RAJA BACIRO', NULL, '1976-02-18', 'ANOO 1976/ VEL. LI FOI.101/ NO.402', '', 2, 66, 62, 9, 100, 0, 1, 6, 0, 6, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1722, '300730010080540007', 484, 1, 'SUHERIANI, IRENE', '', 'BABARSARI JL. ADISUCIPTOKM 7.5 NO.5', '81904090168', 'P', 'A', '1940-07-16', 'MADIUN', 3, 3, 'MADIUN', '1969-07-29', '-', '', '', '2', '', 'MADIUN', '1967-07-29', '', '0', '', '0000-00-00', 2, 'MADIUN', NULL, '1967-08-10', '-', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1723, '300730010080550008', 485, 1, 'RITA HERLINA HARTONO, MARIA', '', 'DIRGANTARA I NO.23A', '88802684366', 'P', 'A', '1975-02-20', 'PEKALONGAN', 3, 1, 'PEKALONGAN', '1975-02-26', 'BUKU IV/ NO. 734', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 3, 'PURWOKERTO', NULL, '2005-02-22', 'ANNO. 2005/VEL. LM : II/ FOL. 53/ NO.1146', '', 3, 66, 62, 9, 100, 0, 1, 6, 0, 7, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1724, '300730010080550009', 485, 3, 'DAYANARA SURYO, AGATHA', '', 'DIRGANTARA I NO.23A', '88802684366', 'P', 'A', '1996-08-14', 'PEKALONGAN', 3, 1, 'PEKALONGAN', '2007-04-07', 'BUKU XII/ NO.3501', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 23, 66, 64, 9, 100, 0, 1, 6, 0, 7, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1725, '300730010080550010', 485, 3, 'ELLEN SURYO, DOMINIQUE', '', 'DIRGANTARA I NO.23A', '88802684366', 'P', 'A', '1998-07-25', 'PEKALONGAN', 3, 1, 'PEKALONGAN', '2008-03-22', 'BUKU XII/ NO.3647', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 12, 66, 99, 9, 100, 0, 1, 6, 0, 7, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1726, '300730010080560011', 486, 1, 'DEDDY H, YULIUS', '', 'PERUM UPN-BY DEWISARTIKA C6', '81328525270', 'L', 'B', '1972-10-22', 'SEMARANG', 3, 1, 'SEMARANG', '1973-05-27', 'BUKU XIV/ HAL. 28/ NO. 109', '', '', '2', '', 'SEMARANG', '1986-10-31', '', '0', '', '0000-00-00', 2, 'MAGELANG', NULL, '1999-05-22', 'ANNO 1999/ LM I FOL 218/ NO. 863', '', 7, 61, 31, 9, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1727, '300730010080560012', 486, 2, 'INDRI WISNU W, DOROTHEA', '', 'PERUM UPN-BY DEWISARTIKA C6', '81328525270', 'P', 'B', '1974-09-26', 'MAGELANG', 3, 1, 'MAGELANG', '1975-01-26', 'BUKU I/ NO.707', '', '', '2', '', 'MAGELANG', '1989-08-20', '', '0', '', '0000-00-00', 2, 'MAGELANG', NULL, '1999-05-22', 'ANNO 1999/ LM I FOL 218/ NO. 863', '', 5, 39, 62, 9, 100, 0, 1, 6, 0, 3, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1728, '300730010080560013', 486, 3, 'E.D BASUNDORO, AMADEUS', '', 'PERUM UPN-BY DEWISARTIKA C6', '81328525270', 'L', 'B', '2001-05-28', 'MAGELANG', 3, 1, 'MAGELANG', '2001-08-18', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1729, '300730010080560014', 486, 3, 'S. MAHESWARI, FELISITAS', '', 'PERUM UPN-BY DEWISARTIKA C6', '81328525270', 'P', 'B', '2008-02-23', 'YOGYAKARTA', 3, 1, 'BABARSARI', '2008-04-11', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 1, 0, 4, 0, 0, 0, NULL, NULL),
(1730, '300730010080570015', 487, 1, 'RAHARJO SAPTO, YOHANES', '', 'BABARSARI TB IV/ 20B', '817462361', 'L', 'O', '1974-11-08', 'SLEMAN', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'SDH', NULL, '0000-00-00', 'LM III/ FOL. 306/ NO. 915 2003', '', 5, 22, 37, 9, 100, 0, 1, 6, 0, 5, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1731, '300730010080570016', 487, 2, 'AMBAR LESTARI, CICILIA', '', 'BABARSARI TB IV/ 20B', '817462361', 'P', 'O', '1980-09-29', 'SLEMAN', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'SDH', NULL, '0000-00-00', 'LM III/ FOL. 306/ NO. 915 2003', '', 5, 23, 62, 9, 100, 0, 1, 6, 0, 5, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1732, '300730010080570017', 487, 3, 'RAHARJO S.R. KRISNA, YOHANES', '', 'BABARSARI TB IV/ 20B', '817462361', 'L', 'bt', '2003-12-31', 'SLEMAN', 3, 1, 'BABARSARI', '2004-12-19', 'BUKU I/ HAL.-/ NO.107', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1733, '300730010080570018', 487, 3, 'RAHARJO S.P.D DEWINTA, CICILIA', '', 'BABARSARI TB IV/ 20B', '817462361', 'P', 'bt', '2005-06-30', 'SLEMAN', 3, 1, 'BABARSARI', '2005-11-11', 'BUKU I/ HAL.-/ NO. 128', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1734, '300730010080580019', 488, 1, 'Y.F. HERIADI GUNAWAN, YOHANES', '', 'TAMBAK BAYAN I/1 KEL. CTT-DEPOK-SLEMAN', '81328787210', 'L', 'AB', '1962-02-05', 'YOGYAKARTA', 3, 7, 'KOTABARU', '1986-07-07', 'BUKU XXI/NO.886', '', '', '2', '', 'BACIRO', '1988-06-11', '', '0', '', '0000-00-00', 2, 'KOTABARU', NULL, '1987-02-08', 'BUKU IV/NO. 420 THN.1987', '', 3, 66, 56, 9, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1735, '300730010080580020', 488, 2, 'ANITASARI, ANASTASIA', '', 'TAMBAK BAYAN I/1 KEL. CTT-DEPOK-SLEMAN', '81328787210', 'P', 'O', '1964-12-31', 'YOGYAKARTA', 3, 1, 'KOTABARU', '1969-03-06', 'BUKU XIV/NO. 266', '', '', '2', '', 'KOTABARU', '1978-08-13', '', '0', '', '0000-00-00', 2, 'KOTABARU', NULL, '1987-02-08', 'BUKU IV/NO. 420 THN.1987', '', 2, 66, 56, 9, 100, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1736, '300730010080580021', 488, 3, 'DANIEL GUNAWAN, AMANDUS', '', 'TAMBAK BAYAN I/1 KEL. CTT-DEPOK-SLEMAN', '81328787210', 'L', 'bt', '1988-02-08', 'YOGYAKARTA', 3, 1, 'KOTABARU', '1988-03-04', 'BUKU XXII/ NO.329', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 3, 66, 56, 9, 100, 0, 1, 6, 0, 6, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1737, '300730010080580022', 488, 3, 'CHANDRA GUNAWAN, BERNARDUS', '', 'TAMBAK BAYAN I/1 KEL. CTT-DEPOK-SLEMAN', '81328787210', 'L', 'B', '1991-03-16', 'YOGYAKARTA', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 2, 66, 56, 9, 100, 0, 1, 4, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1738, '300730010080580023', 488, 3, 'VIONA P. GUNAWAN, MARGARETA', '', 'TAMBAK BAYAN I/1 KEL. CTT-DEPOK-SLEMAN', '81328787210', 'P', 'B', '1998-03-16', 'YOGYAKARTA', 3, 1, 'KOTABARU', '1998-08-07', 'BUKU XXV/NO. 1123 THN 1998', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 12, 66, 99, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1739, '300730010080580024', 488, 3, 'AGUNG GUNAWAN, ALBERT', '', 'TAMBAK BAYAN I/1 KEL. CTT-DEPOK-SLEMAN', '81328787210', 'L', 'bt', '2000-07-28', 'YOGYAKARTA', 3, 9, 'BLM', '0000-00-00', 'BLM', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1740, '300730010080590025', 489, 1, 'PRIAMBODO, DENI', '', 'JLN. BABARSARI TB 14/5-A TAMBAKBAYAN', '-', 'L', 'bt', '1972-09-20', 'CILACAP', 3, 1, 'SDH', '0000-00-00', '-', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'KEDIRI', NULL, '2001-07-08', 'CUM ORIGINAL NO.903', '', 5, 23, 56, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1741, '300730010080590026', 489, 2, 'HARTANTI, ANNA', '', 'JLN. BABARSARI TB 14/5-A TAMBAKBAYAN', '-', 'P', 'bt', '1973-12-13', 'KEDIRI', 3, 8, 'KEDIRI', '2001-07-01', 'BUKU IV / 4023', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 2, 'KEDIRI', NULL, '2001-07-08', 'CUM ORIGINAL NO.903', '', 5, 66, 56, 9, 100, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1742, '300730010080590027', 489, 3, 'DEANY PUTRI ARZETY, STEFANA', '', 'JLN. BABARSARI TB 14/5-A TAMBAKBAYAN', '-', 'P', 'bt', '2002-08-02', 'KEDIRI', 3, 1, 'BABARSARI', '2002-12-09', '', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 11, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1743, '300730010080590028', 489, 3, 'GLADYS BELLAMOZA, MICHAELA', '', 'JLN. BABARSARI TB 14/5-A TAMBAKBAYAN', '-', 'P', 'bt', '2008-05-16', 'KEDIRI', 3, 1, 'KEDIRI', '2009-07-03', '', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1744, '300730010070490001', 490, 1, 'RUBAK, BR. THOMAS', '', 'JLN. SETURAN BLOK E2 NO. 39', '(0274)487030', 'L', 'O', '1953-01-01', 'BUTTAWAN', 3, 2, 'DEATA', '1966-04-28', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 10, 'BLM', NULL, '0000-00-00', '-', '', 3, 66, 55, 18, 100, 0, 1, 4, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1745, '300730010070490002', 490, 10, 'GOLEK, FR. SILVIANUS', '', 'JLN. SETURAN BLOK E2 NO. 39', '(0274)487030', 'L', 'O', '1977-04-03', 'ENDE', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'sdh', '0000-00-00', '', '0', '', '0000-00-00', 10, '', NULL, '0000-00-00', '', '', 1, 66, 88, 7, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1746, '300730010070490003', 490, 10, 'MUS, FR. AGUSTINUS', '', 'JLN. SETURAN BLOK E2 NO. 39', '(0274)487030', 'L', 'B', '1986-01-27', 'KEFA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 10, '', NULL, '0000-00-00', '', '', 24, 53, 55, 16, 100, 0, 1, 4, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1747, '300730010070490004', 490, 10, 'RAJA, FR. PAULUS', '', 'JLN. SETURAN BLOK E2 NO. 39', '(0274)487030', 'L', 'B', '1979-09-12', 'WATUWAWER', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 10, '', NULL, '0000-00-00', '', '', 15, 46, 55, 7, 100, 0, 1, 4, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1748, '300730010070490005', 490, 10, 'BESA, FR. HILARIUS', '', 'JLN. SETURAN BLOK E2 NO. 39', '(0274)487030', 'L', 'bt', '1980-07-14', 'KEFA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 10, '', NULL, '0000-00-00', '', '', 15, 44, 55, 16, 100, 0, 1, 4, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL);
INSERT INTO `umats` (`id`, `kode_umat`, `id_kk`, `id_hubkk`, `nama`, `email`, `alamat`, `tlp`, `jenis_kelamin`, `goldarah`, `tgl_lahir`, `tmplahir`, `id_agama`, `id_statusbaptis`, `tmpbaptis`, `tglbaptis`, `liberbap`, `romobaptis`, `namabaptis`, `stskrisma`, `namakrisma`, `tmpkrisma`, `tglkrisma`, `romokrisma`, `stskomuni`, `tmpkomuni`, `tglkomuni`, `id_statuspernikahan`, `tempatnikah`, `kotamenikah`, `tglnikah`, `libermat`, `romopernikahan`, `id_pendidikan`, `id_bidstudi`, `id_pekerjaan`, `id_suku`, `id_tempattinggal`, `lamatinggal`, `statusTT`, `id_keaktifanparoki`, `id_keaktifangereja`, `id_statuskekatolikan`, `id_statusekonomi`, `id_statuskesehatan`, `id_statussosial`, `jeniskk`, `statuspindah`, `statuskematian`, `nama_ayah`, `nama_ibu`) VALUES
(1749, '300730010070490006', 490, 10, 'ROMANUS, FR. FAUSTIN', '', 'JLN. SETURAN BLOK E2 NO. 39', '(0274)487030', 'L', 'bt', '1972-06-17', 'MANGGARAI', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 10, '', NULL, '0000-00-00', '', '', 16, 16, 55, 7, 100, 0, 1, 4, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1750, '300730010020140001', 491, 10, 'PRADITYA ARTA ADITAMA, LEO AGUNG', '', 'JL. PEMANCAR TIMUR NO. 100 PERUM DEPEN', '', 'L', 'A', '1991-11-10', 'SALATIGA', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 66, 65, 9, 400, 0, 1, 6, 0, 3, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1751, '300730010020140002', 491, 10, 'FEBY HERLAMBANG, YOHANES DE BRITTO', '', 'JL. PEMANCAR TIMUR NO. 100 PERUM DEPEN', '', 'L', 'A', '1989-02-25', 'BANDUNG', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 66, 65, 9, 400, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1752, '300730010020140003', 491, 10, 'ESKA SULISTYO, PASKASIUS', '', 'JL. PEMANCAR TIMUR NO. 100 PERUM DEPEN', '', 'L', 'bt', '1990-04-16', 'BANDAR LAMPUNG', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 66, 65, 9, 400, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1753, '300730010020140004', 491, 10, 'TRI WIJONARKO, HERALIUS', '', 'JL. PEMANCAR TIMUR NO. 100 PERUM DEPEN', '', 'L', 'A', '1989-01-11', 'KULONPROGO', 3, 1, 'SDH', '0000-00-00', 'SDH', '', '', '2', '', 'SDH', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 66, 65, 9, 400, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1754, '300730010020140005', 491, 10, 'ROMEO ADITYA, SEBASTIAN', '', 'JL. PEMANCAR TIMUR NO. 100 PERUM DEPEN', '', 'L', 'B', '1990-03-02', 'TEGAL', 3, 2, 'BACIRO', '2008-02-03', 'BACIRO, YOGYAKARTA/ 593', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 15, 66, 65, 17, 400, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1755, '300730010020530006', 492, 2, 'HADI SUTRISNA', '', 'JL SETURAN 2, NO 58', '(0274)6519529', 'L', 'AB', '1962-09-08', 'SLEMAN', 9, 9, 'SDH-KATO', '0000-00-00', 'TDK', '', '', '1', '', 'TDK', '0000-00-00', '', '0', '', '0000-00-00', 4, 'GKJ NGENTO-NGENTO', NULL, '1995-01-24', '-', '', 5, 66, 37, 9, 99, 0, 1, 0, 0, 0, 2, 0, 99, 0, 0, 0, NULL, NULL),
(1756, '300730010060020001', 493, 2, 'SEKHAR SUCIPTO, SAMUEL', '', 'JL. BABARSARI, DIRGANTARA IV/ 5', '(0274)489093', 'L', 'B', '1977-12-31', 'YOGYAKARTA', 3, 1, 'SDH', '0000-00-00', 'TDK', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 2, 'BACIRO', NULL, '2006-06-03', 'BUKU IV, HAL. 98, NO. 33', '', 5, 67, 56, 9, 309, 0, 1, 6, 0, 7, 2, 0, 4, 0, 0, 0, NULL, NULL),
(1757, '300730010060020002', 493, 6, 'JEZZRIEL FIEVEL SHEANDIRA, FAUSTINUS', '', 'JL. BABARSARI, DIRGANTARA IV/ 5', '(0274)489093', 'L', 'B', '2007-03-27', 'SLEMAN', 3, 1, 'ST. MARIA ASSUMPTA', '2009-11-13', 'BUKU INO. 241', '', '', '1', '', 'BLM', '0000-00-00', '', '0', '', '0000-00-00', 1, '', NULL, '0000-00-00', '', '', 27, 66, 99, 9, 100, 0, 1, 6, 0, 1, 2, 0, 4, 0, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_level` int(3) NOT NULL DEFAULT '1',
  `id_umat` int(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `user_level`, `id_umat`, `email`) VALUES
(1, 'admin', '$2a$10$V8hAANK8HA4Z/IXZzI4zO.GMGPnCEJj0dH/iuz/yKwt7pXAbbLUr6', 2, 500, 'michaelchristian024@gmail.com'),
(2, 'ketua', '$2a$10$OdpiJf.1JKJ0C3j.0oNPce9TPEERrqC/aXpwcWHfPK4DGRqZe8y06', 2, 500, 'ketualingkungan@ti.com'),
(3, 'user', '$2a$10$PJN7KjWssVOXWIY.lMaJZOdozFxJuVPwTae.bLMyUmdFKlYHOa7Be', 1, 500, 'userbiasa@ti.com'),
(4, 'testt', '$2a$10$PQDhD/w5Sts40NkUXTXaeetgzlGraiZbDuYgvahUgQPZjNUyAhPqa', 1, 502, 'a@com');

-- --------------------------------------------------------

--
-- Table structure for table `wilayahs`
--

CREATE TABLE IF NOT EXISTS `wilayahs` (
`id` int(11) NOT NULL,
  `code_wilayah` varchar(255) NOT NULL,
  `paroki_id` int(11) NOT NULL,
  `nama_wilayah` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wilayahs`
--

INSERT INTO `wilayahs` (`id`, `code_wilayah`, `paroki_id`, `nama_wilayah`) VALUES
(1, '30049001', 47, 'St. Angela Merici - Candi Baru'),
(2, '30049002', 47, 'St. Cicilia Perawan Mrt - Gombel Permai'),
(3, '30049003', 47, 'St. Johannes Penginjil - Jangli'),
(4, '30049004', 47, 'St. Andreas - Jatingaleh'),
(5, '30049005', 47, 'St. Yakobus - Kaliwiru'),
(6, '30049006', 47, 'St. Joh. Berchmans - Kalilangse'),
(7, '30049007', 47, 'St. Thomas - Karanganyar Gunung'),
(8, '30049008', 47, 'St. Bartolomeus Rasul - Karangrejo'),
(9, '30049009', 47, 'St. Antonius Abbas - Kerinci'),
(10, '30049010', 47, 'St. Paulus - Ngesrep'),
(11, '30049011', 47, 'St. Fil. Rasul - Sanggung - Kesatrian'),
(12, '30049012', 47, 'St. Mathias Rasul - Saptamarga III'),
(13, '30049013', 47, 'St. Joh. Bosco - Tinjomoyo'),
(14, '30073001', 71, 'Babarsari');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agamas`
--
ALTER TABLE `agamas`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `baptises`
--
ALTER TABLE `baptises`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `baptises_anak`
--
ALTER TABLE `baptises_anak`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `baptises_darurat`
--
ALTER TABLE `baptises_darurat`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `baptises_dewasa`
--
ALTER TABLE `baptises_dewasa`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bidangstudis`
--
ALTER TABLE `bidangstudis`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hubkks`
--
ALTER TABLE `hubkks`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keaktifan`
--
ALTER TABLE `keaktifan`
 ADD PRIMARY KEY (`id`), ADD KEY `id_umat` (`id_umat`,`id_pengurus`);

--
-- Indexes for table `keaktifangerejas`
--
ALTER TABLE `keaktifangerejas`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keaktifanparokis`
--
ALTER TABLE `keaktifanparokis`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kematians`
--
ALTER TABLE `kematians`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kematian_sakramen`
--
ALTER TABLE `kematian_sakramen`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ketualingkungans`
--
ALTER TABLE `ketualingkungans`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keuskupanagungs`
--
ALTER TABLE `keuskupanagungs`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code_keuskupan` (`code_keuskupan`);

--
-- Indexes for table `kks`
--
ALTER TABLE `kks`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code_kk` (`code_kk`), ADD KEY `lingkungan_id` (`lingkungan_id`);

--
-- Indexes for table `kodeumataktifs`
--
ALTER TABLE `kodeumataktifs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komuni`
--
ALTER TABLE `komuni`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `krismas`
--
ALTER TABLE `krismas`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lingkungans`
--
ALTER TABLE `lingkungans`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code_lingkungan` (`code_lingkungan`), ADD KEY `wilayah_id` (`wilayah_id`);

--
-- Indexes for table `parokis`
--
ALTER TABLE `parokis`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code_paroki` (`code_paroki`), ADD KEY `kas_id` (`kas_id`);

--
-- Indexes for table `pasturs`
--
ALTER TABLE `pasturs`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code_pastur` (`code_pastur`), ADD KEY `paroki_id` (`paroki_id`);

--
-- Indexes for table `pekerjaans`
--
ALTER TABLE `pekerjaans`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendidikans`
--
ALTER TABLE `pendidikans`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengurapans`
--
ALTER TABLE `pengurapans`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengurus`
--
ALTER TABLE `pengurus`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pernikahans`
--
ALTER TABLE `pernikahans`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statusbaptis`
--
ALTER TABLE `statusbaptis`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statusekonomis`
--
ALTER TABLE `statusekonomis`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuskekatolikans`
--
ALTER TABLE `statuskekatolikans`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuskesehatans`
--
ALTER TABLE `statuskesehatans`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuspernikahans`
--
ALTER TABLE `statuspernikahans`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statussosials`
--
ALTER TABLE `statussosials`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sukus`
--
ALTER TABLE `sukus`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tempattinggals`
--
ALTER TABLE `tempattinggals`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `umats`
--
ALTER TABLE `umats`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `wilayahs`
--
ALTER TABLE `wilayahs`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code_wilayah` (`code_wilayah`), ADD KEY `paroki_id` (`paroki_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agamas`
--
ALTER TABLE `agamas`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `baptises`
--
ALTER TABLE `baptises`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=500;
--
-- AUTO_INCREMENT for table `baptises_anak`
--
ALTER TABLE `baptises_anak`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `baptises_darurat`
--
ALTER TABLE `baptises_darurat`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `baptises_dewasa`
--
ALTER TABLE `baptises_dewasa`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bidangstudis`
--
ALTER TABLE `bidangstudis`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `hubkks`
--
ALTER TABLE `hubkks`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `keaktifan`
--
ALTER TABLE `keaktifan`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `keaktifangerejas`
--
ALTER TABLE `keaktifangerejas`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `keaktifanparokis`
--
ALTER TABLE `keaktifanparokis`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `kematians`
--
ALTER TABLE `kematians`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kematian_sakramen`
--
ALTER TABLE `kematian_sakramen`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ketualingkungans`
--
ALTER TABLE `ketualingkungans`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `keuskupanagungs`
--
ALTER TABLE `keuskupanagungs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kks`
--
ALTER TABLE `kks`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=509;
--
-- AUTO_INCREMENT for table `kodeumataktifs`
--
ALTER TABLE `kodeumataktifs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=530;
--
-- AUTO_INCREMENT for table `komuni`
--
ALTER TABLE `komuni`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `krismas`
--
ALTER TABLE `krismas`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lingkungans`
--
ALTER TABLE `lingkungans`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `parokis`
--
ALTER TABLE `parokis`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=115;
--
-- AUTO_INCREMENT for table `pasturs`
--
ALTER TABLE `pasturs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pekerjaans`
--
ALTER TABLE `pekerjaans`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `pendidikans`
--
ALTER TABLE `pendidikans`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `pengurapans`
--
ALTER TABLE `pengurapans`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pengurus`
--
ALTER TABLE `pengurus`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `pernikahans`
--
ALTER TABLE `pernikahans`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `statusbaptis`
--
ALTER TABLE `statusbaptis`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `statusekonomis`
--
ALTER TABLE `statusekonomis`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `statuskekatolikans`
--
ALTER TABLE `statuskekatolikans`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `statuskesehatans`
--
ALTER TABLE `statuskesehatans`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `statuspernikahans`
--
ALTER TABLE `statuspernikahans`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `statussosials`
--
ALTER TABLE `statussosials`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sukus`
--
ALTER TABLE `sukus`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `tempattinggals`
--
ALTER TABLE `tempattinggals`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=401;
--
-- AUTO_INCREMENT for table `umats`
--
ALTER TABLE `umats`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1758;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wilayahs`
--
ALTER TABLE `wilayahs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `lingkungans`
--
ALTER TABLE `lingkungans`
ADD CONSTRAINT `lingkungan_wilayah_constraint` FOREIGN KEY (`wilayah_id`) REFERENCES `wilayahs` (`id`);

--
-- Constraints for table `parokis`
--
ALTER TABLE `parokis`
ADD CONSTRAINT `kas_constraint` FOREIGN KEY (`kas_id`) REFERENCES `keuskupanagungs` (`id`);

--
-- Constraints for table `pasturs`
--
ALTER TABLE `pasturs`
ADD CONSTRAINT `paroki_constraint` FOREIGN KEY (`paroki_id`) REFERENCES `parokis` (`id`);

--
-- Constraints for table `wilayahs`
--
ALTER TABLE `wilayahs`
ADD CONSTRAINT `paroki_wilayah_constraint` FOREIGN KEY (`paroki_id`) REFERENCES `parokis` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
