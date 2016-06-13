-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2016 at 10:21 PM
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
  `catatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=509 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `baptises`
--

INSERT INTO `baptises` (`id`, `id_umat`, `tanggal`, `kode_stasi`, `liberbap`, `sts_baptis`, `tempat`, `kota`, `nama_baptis`, `romo`, `wali_baptis`, `catatan`) VALUES
(1, 1, '1980-01-24', 0, 'LB V / NO 3479', 1, 'SOMOHITAN', '', '', '', '', ''),
(2, 2, '1989-03-20', 0, 'VII / 132 / 526', 1, 'BACIRO', '', '', '', '', ''),
(3, 3, '2001-03-29', 0, 'BUKU: XXVI / NO: 39 / 2001', 1, 'KOTABARU', '', '', '', '', ''),
(4, 4, '0000-00-00', 0, '-', 1, 'BLM', '', '', '', '', ''),
(5, 5, '0000-00-00', 0, '-', 1, 'BLM', '', '', '', '', ''),
(6, 6, '2005-03-20', 0, 'BUKU: XIX / NO: 2138', 1, 'KUMETIRAN', '', '', '', '', ''),
(7, 7, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(8, 8, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(9, 9, '1985-01-13', 0, 'BUKU: VI / HAL: -  / NO: 381', 1, 'BACIRO', '', '', '', '', ''),
(10, 10, '0000-00-00', 0, 'BLM', 1, 'BLM', '', '', '', '', ''),
(11, 11, '1977-09-10', 0, 'BUKU: II / NO: 1634', 1, 'JETIS', '', '', '', '', ''),
(12, 12, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(13, 13, '1956-05-20', 0, 'NO: VII / 810', 1, 'MADIUN', '', '', '', '', ''),
(14, 14, '0000-00-00', 0, '', 1, 'TDK', '', '', '', '', ''),
(15, 15, '0000-00-00', 0, '-', 1, 'BLM', '', '', '', '', ''),
(16, 16, '1970-12-22', 0, 'II / 128 / 507', 1, 'BACIRO', '', '', '', '', ''),
(17, 17, '1970-12-22', 0, 'II / 128 / 508', 1, 'BACIRO', '', '', '', '', ''),
(18, 18, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(19, 19, '1946-08-04', 0, 'SDH', 1, 'MERAUKE', '', '', '', '', ''),
(20, 20, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(21, 21, '1948-07-03', 0, 'SDH', 1, 'TARAKAN', '', '', '', '', ''),
(22, 22, '1974-09-07', 0, 'BUKU III, NO 2199', 1, 'TARAKAN', '', '', '', '', ''),
(23, 23, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(24, 24, '0000-00-00', 0, '', 1, 'TDK', '', '', '', '', ''),
(25, 25, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(26, 26, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(27, 27, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(28, 28, '1970-07-15', 0, 'XXI / 193 / 250', 1, 'ST YUSUF, SEMARANG', '', '', '', '', ''),
(29, 29, '1995-04-15', 0, 'II / 308 / 84', 1, 'ST AGUSTINUS, TANGGE', '', '', '', '', ''),
(30, 30, '1996-04-21', 0, 'SDH', 1, 'ST YUSUF, AMBARAWA', '', '', '', '', ''),
(31, 31, '1950-10-16', 0, 'NO : 60', 1, 'CIREBON', '', '', '', '', ''),
(32, 32, '0000-00-00', 0, '', 1, 'GRJ-KRISTEN', '', '', '', '', ''),
(33, 33, '1980-07-04', 0, 'BUKU : XII, NO ; 10731', 1, 'PUGERAN', '', '', '', '', ''),
(34, 34, '1992-08-09', 0, 'BUKU: VIII, HAL: 96, NO: 287', 1, 'BACIRO', '', '', '', '', ''),
(35, 35, '1977-12-18', 0, 'HAL: 73, NO: 290', 1, 'CILILITAN', '', '', '', '', ''),
(36, 36, '1977-04-02', 0, 'II / 94 / 374', 1, 'JAKARTA', '', '', '', '', ''),
(37, 37, '1972-03-05', 0, 'I / 131 / 907', 1, 'JAKARTA', '', '', '', '', ''),
(38, 38, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(39, 39, '2005-12-18', 0, 'LIB I, FOL -, NO 133', 1, 'BACIRO', '', '', '', '', ''),
(40, 40, '0000-00-00', 0, 'SDH', 1, 'YOGYAKARTA', '', '', '', '', ''),
(41, 41, '1972-12-22', 0, 'XVI / 71 / 141885', 1, 'ST ANTONIUS, SOLO', '', '', '', '', ''),
(42, 42, '1951-06-10', 0, 'IV / 164 / 3792', 1, 'ST ANTONIUS, SOLO', '', '', '', '', ''),
(43, 43, '1985-01-13', 0, 'BUKU III, HAL -, NO 383', 1, 'BACIRO', '', '', '', '', ''),
(44, 44, '0000-00-00', 0, '-', 1, 'BLM', '', '', '', '', ''),
(45, 45, '0000-00-00', 0, 'BLM', 0, 'BLM', '', '', '', '', ''),
(46, 46, '1979-10-23', 0, 'BUKU VI, HAL -, NO 54', 1, 'BACIRO', '', '', '', '', ''),
(47, 47, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(48, 48, '2005-09-02', 0, 'BUKU XXVII, NO 571, TAHUN 2005', 1, 'KOTABARU', '', '', '', '', ''),
(49, 49, '1980-12-22', 0, 'BUKU X, HAL -, NO 9246', 1, 'KALASAN', '', '', '', '', ''),
(50, 50, '0000-00-00', 0, '', 1, 'TDK', '', '', '', '', ''),
(51, 51, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(52, 52, '2000-08-15', 0, 'BUKU I, HAL -, NO 156', 1, 'BABARSARI', '', '', '', '', ''),
(53, 53, '1979-09-07', 0, 'LB X, NO 06220', 1, 'KEBAYORAN', '', '', '', '', ''),
(54, 54, '1976-11-05', 0, 'IV / 36 / 141', 1, 'BACIRO', '', '', '', '', ''),
(55, 55, '2009-03-14', 0, 'SDH', 1, 'BACIRO', '', '', '', '', ''),
(56, 56, '1952-12-25', 0, 'SDH', 1, 'BINTARAN', '', '', '', '', ''),
(57, 57, '1942-07-18', 0, 'SDH', 1, 'GANJURAN', '', '', '', '', ''),
(58, 58, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(59, 59, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(60, 60, '1987-10-04', 0, 'VII / 13 / 49', 1, 'BACIRO', '', '', '', '', ''),
(61, 61, '1993-09-19', 0, 'VIII / 177 / 531', 1, 'MRICAN', '', '', '', '', ''),
(62, 62, '1951-12-23', 0, 'NO 4688 / LIB / V / PAG 138', 1, 'AMBARAWA', '', '', '', '', ''),
(63, 63, '1988-12-21', 0, 'XVIII / 100 / 12382', 1, 'BINTARAN', '', '', '', '', ''),
(64, 64, '2005-12-05', 0, 'XXI / 27 / 679', 1, 'BINTARAN', '', '', '', '', ''),
(65, 65, '0000-00-00', 0, 'BLM', 0, 'BLM', '', '', '', '', ''),
(66, 66, '1983-01-08', 0, 'LB I, NO 76', 1, 'MANOKWARI', '', '', '', '', ''),
(67, 67, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(68, 68, '1987-12-18', 0, 'VII / 29 / 114', 1, 'BACIRO', '', '', '', '', ''),
(69, 69, '0000-00-00', 0, 'SDH', 1, 'SDH-KATO', '', '', '', '', ''),
(70, 70, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(71, 71, '0000-00-00', 0, 'XIX / 36 / 13133', 1, 'SDH', '', '', '', '', ''),
(72, 72, '1987-12-16', 0, 'BUKU XXIII, NO 268', 1, 'MUNTILAN', '', '', '', '', ''),
(73, 73, '0000-00-00', 0, 'BLM', 0, 'BLM', '', '', '', '', ''),
(74, 74, '0000-00-00', 0, 'BLM', 0, 'BLM', '', '', '', '', ''),
(75, 75, '0000-00-00', 0, 'VIII / 157 / 8227', 1, 'SDH', '', '', '', '', ''),
(76, 76, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(77, 77, '1998-05-08', 0, 'LB XV, NO 196', 1, 'GANJURAN', '', '', '', '', ''),
(78, 78, '0000-00-00', 0, 'BLM', 0, 'BLM', '', '', '', '', ''),
(79, 79, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(80, 80, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(81, 81, '2001-10-05', 0, 'XXVI / 148 / 2001', 1, 'KOTABARU', '', '', '', '', ''),
(82, 82, '2006-02-03', 0, 'XXVIII / 92 / 2006', 1, 'KOTABARU', '', '', '', '', ''),
(83, 83, '2010-01-08', 0, 'SDH', 1, 'KOTABARU', '', '', '', '', ''),
(84, 84, '1989-03-20', 0, 'SDH', 1, 'BACIRO', '', '', '', '', ''),
(85, 85, '0000-00-00', 0, 'BLM', 1, 'BLM', '', '', '', '', ''),
(86, 86, '2008-12-12', 0, 'BUKU I, NO 205', 1, 'BACIRO', '', '', '', '', ''),
(87, 87, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(88, 88, '1981-09-09', 0, 'BUKU IV, NO 794', 1, 'ST MIKAEL, GOMBONG', '', '', '', '', ''),
(89, 89, '1955-10-04', 0, 'NO 5303, LIB ST ANT VII / Y', 1, 'KOTABARU', '', '', '', '', ''),
(90, 90, '1977-12-17', 0, 'LIB VI, NO 307', 1, 'ST MIKAEL, GOMBONG', '', '', '', '', ''),
(91, 91, '1984-02-12', 0, 'LIB V, NO 1227', 1, 'ST MIKAEL, GOMBONG', '', '', '', '', ''),
(92, 92, '1987-12-18', 0, 'VII / 29 / 113', 1, 'BACIRO', '', '', '', '', ''),
(93, 93, '1987-12-18', 0, 'VII / 30 / 117', 1, 'BACIRO', '', '', '', '', ''),
(94, 94, '1972-03-12', 0, 'BUKU XXII, FOL 225, NO 899', 1, 'JAKARTA', '', '', '', '', ''),
(95, 95, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(96, 96, '2002-11-04', 0, 'X / 25 / 100', 1, 'BACIRO', '', '', '', '', ''),
(97, 97, '2011-05-13', 0, 'BUKU I, NO 279', 1, 'BABARSARI', '', '', '', '', ''),
(98, 98, '1975-01-03', 0, 'SDH', 1, 'KLEPU', '', '', '', '', ''),
(99, 99, '1985-09-08', 0, 'BUKU XV, HAL -, NO 13800', 1, 'KLEPU', '', '', '', '', ''),
(100, 100, '2010-06-11', 0, 'BUKU XXII, NO 19796', 1, 'KLEPU', '', '', '', '', ''),
(101, 101, '1979-07-27', 0, 'X / 520', 1, 'KUMETIRAN', '', '', '', '', ''),
(102, 102, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(103, 103, '2010-12-25', 0, 'SDH', 1, 'BABARSARI', '', '', '', '', ''),
(104, 104, '1995-04-15', 0, 'BUKU VIII, NO 977', 1, 'BACIRO', '', '', '', '', ''),
(105, 105, '0000-00-00', 0, 'BLM', 0, 'BLM', '', '', '', '', ''),
(106, 106, '0000-00-00', 0, 'BLM', 0, 'BLM', '', '', '', '', ''),
(107, 107, '1987-04-13', 0, 'VI / 277 / 1107', 1, 'BACIRO', '', '', '', '', ''),
(108, 108, '1979-10-26', 0, 'BUKU V, NO 145', 1, 'BACIRO', '', '', '', '', ''),
(109, 109, '2000-06-15', 0, 'BUKU IX, NO 819A', 1, 'BACIRO', '', '', '', '', ''),
(110, 110, '2004-12-24', 0, 'BUKU I, NO 110', 1, 'BACIRO', '', '', '', '', ''),
(111, 111, '2004-12-24', 0, 'BUKU I, NO 114', 1, 'BACIRO', '', '', '', '', ''),
(112, 112, '1969-01-02', 0, 'SDH', 1, 'KOTABARU', '', '', '', '', ''),
(113, 113, '1993-10-14', 0, 'VIII / 181 / 543', 1, 'BACIRO', '', '', '', '', ''),
(114, 114, '2000-06-15', 0, 'BUKU IX. NO.821', 1, 'BACIRO', '', '', '', '', ''),
(115, 115, '1974-04-11', 0, 'SDH', 1, 'SURABAYA', '', '', '', '', ''),
(116, 116, '1978-03-25', 0, 'SDH', 1, 'SURABAYA', '', '', '', '', ''),
(117, 117, '1990-10-06', 0, 'NO 5817', 1, 'SURABAYA', '', '', '', '', ''),
(118, 118, '1993-03-24', 0, 'NO 6241', 1, 'SURABAYA', '', '', '', '', ''),
(119, 119, '1996-02-24', 0, 'NO 7031', 1, 'SURABAYA', '', '', '', '', ''),
(120, 120, '1997-07-12', 0, 'NO 7831', 1, 'SURABAYA', '', '', '', '', ''),
(121, 121, '1956-12-02', 0, 'II / 91 / 382', 1, 'ST PETRUS, PURWOSARI', '', '', '', '', ''),
(122, 122, '1958-09-25', 0, 'NO 4309, LIB XIV', 1, 'MUNTILAN', '', '', '', '', ''),
(123, 123, '1990-02-25', 0, 'V / 20 / 6090157', 1, 'JAKARTA', '', '', '', '', ''),
(124, 124, '1991-09-22', 0, 'VI / 312 / 7158 / 474', 1, 'JAKARTA', '', '', '', '', ''),
(125, 125, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(126, 126, '0000-00-00', 0, '', 1, 'TDK', '', '', '', '', ''),
(127, 127, '2001-12-21', 0, 'BUKU I, NO 176', 1, 'KLEPU', '', '', '', '', ''),
(128, 128, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(129, 129, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(130, 130, '1985-03-03', 0, 'XIV / 1611', 1, 'SURABAYA', '', '', '', '', ''),
(131, 131, '1989-08-12', 0, 'V / 126 / 1002', 1, 'ST YOSEPH, PALEMBANG', '', '', '', '', ''),
(132, 132, '1991-12-11', 0, 'BUKU 13, NO 928', 1, 'ST MARIA TB, PALEMBA', '', '', '', '', ''),
(133, 133, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(134, 134, '0000-00-00', 0, 'SDH', 1, 'SDH-KATO', '', '', '', '', ''),
(135, 135, '1992-12-30', 0, 'XXII / 240 / 968', 1, 'MUNTILAN', '', '', '', '', ''),
(136, 136, '2002-02-24', 0, 'XXV / 26 / 103', 1, 'MUNTILAN', '', '', '', '', ''),
(137, 137, '1993-12-21', 0, 'VIII / 203 / 606', 1, 'BACIRO', '', '', '', '', ''),
(138, 138, '0000-00-00', 0, '', 1, 'TDK', '', '', '', '', ''),
(139, 139, '1993-12-21', 0, 'VIII / 203 / 607', 1, 'BACIRO', '', '', '', '', ''),
(140, 140, '1989-03-20', 0, 'VII / 136 / 542', 1, 'BACIRO', '', '', '', '', ''),
(141, 141, '1972-03-28', 0, 'IV / 104 / 352', 1, 'PURBOWARDOYAN, SOLO', '', '', '', '', ''),
(142, 142, '1985-01-13', 0, 'VI / - / 382', 1, 'BACIRO', '', '', '', '', ''),
(143, 143, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(144, 144, '0000-00-00', 0, 'VII / 211 / 6407', 1, 'SDH', '', '', '', '', ''),
(145, 145, '1959-01-04', 0, 'IIOIB / XI', 1, 'KOTABARU', '', '', '', '', ''),
(146, 146, '1968-12-11', 0, 'I / 243 / 971', 1, 'BACIRO', '', '', '', '', ''),
(147, 147, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(148, 148, '0000-00-00', 0, 'VIII. - . 972', 1, 'SDH', '', '', '', '', ''),
(149, 149, '1959-07-01', 0, 'III / 3256', 1, 'KEDIRI', '', '', '', '', ''),
(150, 150, '1958-11-15', 0, '71 / 1958', 1, 'JEMBER', '', '', '', '', ''),
(151, 151, '1984-03-12', 0, 'XX / 831', 1, 'KOTABARU', '', '', '', '', ''),
(152, 152, '1987-03-08', 0, 'X / III / 302', 1, 'KUMETIRAN', '', '', '', '', ''),
(153, 153, '1976-06-28', 0, 'VIII / 597', 1, 'MARIA TAK BERCELA', '', '', '', '', ''),
(154, 154, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(155, 155, '2004-04-04', 0, 'XIX / 1868', 1, 'KUMETIRAN', '', '', '', '', ''),
(156, 156, '2003-04-13', 0, '-', 1, 'KUMETIRAN', '', '', '', '', ''),
(157, 157, '0000-00-00', 0, '-', 1, 'GRJ-KRISTEN', '', '', '', '', ''),
(158, 158, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(159, 159, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(160, 160, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(161, 161, '1989-03-25', 0, 'SDH', 1, 'WAIKABUBAK', '', '', '', '', ''),
(162, 162, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(163, 163, '1992-08-16', 0, 'SDH', 1, 'WAIKABUBAK', '', '', '', '', ''),
(164, 164, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(165, 165, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(166, 166, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(167, 167, '1992-10-11', 0, '10 / 712', 1, 'POGO BINA', '', '', '', '', ''),
(168, 168, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(169, 169, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(170, 170, '1989-12-17', 0, 'II / 52 / 210', 1, 'FRANSISKUS DARI SALE', '', '', '', '', ''),
(171, 171, '1991-08-07', 0, 'SDH', 1, 'MANGULEWA', '', '', '', '', ''),
(172, 172, '1985-12-10', 0, 'SDH', 1, 'ST YOHANES, KUPANG', '', '', '', '', ''),
(173, 173, '1991-12-04', 0, 'SDH', 1, 'SUAI', '', '', '', '', ''),
(174, 174, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(175, 175, '1992-12-06', 0, 'SDH', 1, 'ASSUMPTA, KUPANG', '', '', '', '', ''),
(176, 176, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(177, 177, '1990-05-10', 0, 'SDH', 1, 'MOTAEL', '', '', '', '', ''),
(178, 178, '1993-07-26', 0, 'SDH', 1, 'SEON', '', '', '', '', ''),
(179, 179, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(180, 180, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(181, 181, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(182, 182, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(183, 183, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(184, 184, '1998-06-18', 0, 'SDH', 1, 'TIMOR LESTE', '', '', '', '', ''),
(185, 185, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(186, 186, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(187, 187, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(188, 188, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(189, 189, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(190, 190, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(191, 191, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(192, 192, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(193, 193, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(194, 194, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(195, 195, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(196, 196, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(197, 197, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(198, 198, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(199, 199, '1989-03-25', 0, 'SDH', 1, 'WAIKABUBAK', '', '', '', '', ''),
(200, 200, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(201, 201, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(202, 202, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(203, 203, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(204, 204, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(205, 205, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(206, 206, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(207, 207, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(208, 208, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(209, 209, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(210, 210, '1999-03-27', 0, 'P.I HAL. 12 NO.B/PLPN/23', 1, 'TEMANGGUNG', '', '', '', '', ''),
(211, 211, '1976-12-15', 0, 'BUKU KE: XXII NO. 788', 1, 'KLATEN', '', '', '', '', ''),
(212, 212, '2004-01-09', 0, '-', 1, 'YOGYAKARTA', '', '', '', '', ''),
(213, 213, '2006-06-17', 0, '-', 1, 'YOGYAKARTA', '', '', '', '', ''),
(214, 214, '0000-00-00', 0, 'SDH', 1, 'SDH', '', '', '', '', ''),
(215, 215, '2009-12-22', 0, 'BUKU II. HAL. 135/ NO. 534', 1, 'BACIRO', '', '', '', '', ''),
(216, 216, '0000-00-00', 0, '-', 1, 'BLM', '', '', '', '', ''),
(217, 217, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(218, 218, '2009-12-11', 0, 'SDH', 1, 'BABARSARI', '', '', '', '', ''),
(219, 219, '1967-12-21', 0, 'D/ 019', 1, 'BOROBUDUR', '', '', '', '', ''),
(220, 220, '1982-04-10', 0, 'I/ 113/ 446 B', 1, 'BOROBUDUR', '', '', '', '', ''),
(221, 221, '1982-04-10', 0, 'I/ 114/ 448', 1, 'BOROBUDUR', '', '', '', '', ''),
(222, 222, '1995-11-12', 0, 'IX/ 16/ 46', 1, 'BABARSARI', '', '', '', '', ''),
(223, 223, '1967-04-02', 0, 'VIII/ 212/ 5707', 1, 'KLATEN', '', '', '', '', ''),
(224, 224, '1987-05-04', 0, 'II/ 181/ 724', 1, 'KLATEN', '', '', '', '', ''),
(225, 225, '1988-06-26', 0, 'I/ 98/ 391', 1, 'CONDONGCATUR', '', '', '', '', ''),
(226, 226, '1992-11-01', 0, 'I/ 175/ 697', 1, 'CONDONGCATUR', '', '', '', '', ''),
(227, 227, '1978-12-15', 0, 'BUKU VIII/ HAL. 99/ NO. 792', 1, 'PALEMBANG', '', '', '', '', ''),
(228, 228, '0000-00-00', 0, '', 1, 'TDK', '', '', '', '', ''),
(229, 229, '0000-00-00', 0, '', 0, 'BLM', '', '', '', '', ''),
(230, 230, '0000-00-00', 0, 'BLM', 0, 'BLM', '', '', '', '', ''),
(231, 231, '2007-04-07', 0, 'BUKU I/ HAL. - / NO. 159', 1, 'BABARSARI', '', '', '', '', ''),
(232, 232, '2007-04-07', 0, 'BUKU I/ HAL.- / NO.161', 1, 'BABARSARI', '', '', '', '', ''),
(233, 233, '1959-05-27', 0, 'BUKU IV / NO. 2860', 1, 'KALASAN', '', '', '', '', ''),
(234, 234, '1940-11-02', 0, 'BUKU I/ NO. 611', 1, 'PUGERAN', '', '', '', '', ''),
(235, 235, '2009-07-13', 0, 'BUKU II/ NO. 923', 1, 'PRINGWULUNG', '', '', '', '', ''),
(236, 236, '1961-01-17', 0, 'NO. 1395/ LIB. XVIII/ PAG. 224', 1, 'SEMARANG', '', '', '', '', ''),
(237, 237, '1981-06-01', 0, 'BUKU V/ HAL.- / NO.688', 1, 'BACIRO', '', '', '', '', ''),
(238, 238, '1976-02-05', 0, 'BUKU III/ HAL. 226/ NO. 902', 1, 'BACIRO', '', '', '', '', ''),
(239, 239, '1986-03-26', 0, 'BUKU VI/ HAL.213/ NO. 852', 1, 'BABARSARI', '', '', '', '', ''),
(240, 240, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(241, 241, '1948-07-11', 0, '-', 1, 'KALASAN', '', '', '', '', ''),
(242, 242, '1980-04-05', 0, 'NO. 1060/ HAL. 219/ VII', 1, 'JAKARTA', '', '', '', '', ''),
(243, 243, '1980-04-05', 0, 'NO. 1065/ HAL. 219/VII', 1, 'SDH-KATO', '', '', '', '', ''),
(244, 244, '1980-12-12', 0, 'NO. 123/31/VIII', 1, 'JAKARTA', '', '', '', '', ''),
(245, 245, '1995-07-09', 0, 'BUKU. IX/ HAL.03/ NO.2', 1, 'BACIRO', '', '', '', '', ''),
(246, 246, '1985-12-18', 0, 'BUKU VI/ NO.778/ HAL. 194', 1, 'BABARSARI', '', '', '', '', ''),
(247, 247, '1985-12-18', 0, 'BUKU VI/ NO. 777/ HAL.-', 1, 'BABARSARI', '', '', '', '', ''),
(248, 248, '1985-12-18', 0, 'BUKU VI/ NO.778/ HAL.-', 1, 'BABARSARI', '', '', '', '', ''),
(249, 249, '1971-01-05', 0, 'IX/ 454', 1, 'GUMAWANG', '', '', '', '', ''),
(250, 250, '1993-12-21', 0, 'VIII/612', 1, 'YOGYAKARTA', '', '', '', '', ''),
(251, 251, '2004-12-19', 0, 'I/ 105', 1, 'YOGYAKARTA', '', '', '', '', ''),
(252, 252, '2008-04-11', 0, 'SDH', 1, 'YOGYAKARTA', '', '', '', '', ''),
(253, 253, '1992-10-26', 0, 'BUKU III/HAL.-/NO.859', 1, 'BANGUNSARI', '', '', '', '', ''),
(254, 254, '1959-03-20', 0, 'BUKU III/ HAL.45/ NO. 181', 1, 'SOLO', '', '', '', '', ''),
(255, 255, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(256, 256, '1967-03-26', 0, '-', 1, 'MAGELANG', '', '', '', '', ''),
(257, 257, '1966-11-06', 0, '-', 1, 'MAGELANG', '', '', '', '', ''),
(258, 258, '2010-12-23', 0, 'NO. 267/ BUKU I', 1, 'BABARSARI', '', '', '', '', ''),
(259, 259, '1976-04-30', 0, 'NO. 790/ BUKU I', 1, 'BATURETNO', '', '', '', '', ''),
(260, 260, '2008-04-11', 0, 'SDH', 1, 'BABARSARI', '', '', '', '', ''),
(261, 261, '0000-00-00', 0, 'SDH', 0, 'BLM', '', '', '', '', ''),
(262, 262, '1975-05-31', 0, 'HAL. III/ 2718', 1, 'KUPANG', '', '', '', '', ''),
(263, 263, '1982-04-10', 0, 'BUKU I BB/ HAL.113/ NO. 447', 1, 'BOROBUDUR', '', '', '', '', ''),
(264, 264, '2008-09-12', 0, 'SDH', 1, 'SLEMAN', '', '', '', '', ''),
(265, 265, '0000-00-00', 0, '-', 1, 'BLM', '', '', '', '', ''),
(266, 266, '1975-12-13', 0, '-', 1, 'PURWOKERTO', '', '', '', '', ''),
(267, 267, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(268, 268, '1984-12-31', 0, 'BUKU I/ HAL. 45/ NO. 177', 1, 'BANTENG', '', '', '', '', ''),
(269, 269, '1965-12-31', 0, 'BUKU I/ HAL. 40/ NO. 160', 1, 'PUGERAN', '', '', '', '', ''),
(270, 270, '1986-12-31', 0, 'BUKU I/ HAL.41/ NO.182', 1, 'BACIRO', '', '', '', '', ''),
(271, 271, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(272, 272, '2003-04-10', 0, 'IV/ 240/ 960', 1, 'BACIRO', '', '', '', '', ''),
(273, 273, '2003-06-15', 0, 'SDH', 1, 'CILEUNGSI', '', '', '', '', ''),
(274, 274, '1992-12-14', 0, '-', 1, 'ST. TIMOTIUS', '', '', '', '', ''),
(275, 275, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(276, 276, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(277, 277, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(278, 278, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(279, 279, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(280, 280, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(281, 281, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(282, 282, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(283, 283, '1994-08-12', 0, '-', 1, 'KEFAMENANU', '', '', '', '', ''),
(284, 284, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(285, 285, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(286, 286, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(287, 287, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(288, 288, '0000-00-00', 0, 'BUKU II/ NO. 1667', 1, 'SDH', '', '', '', '', ''),
(289, 289, '1987-07-12', 0, '-', 1, 'LEMBATA', '', '', '', '', ''),
(290, 290, '1989-02-05', 0, 'BUKU.- / HAL.-/ NO.681', 1, 'JAYAPURA', '', '', '', '', ''),
(291, 291, '1989-04-23', 0, 'BUKU.-/ HAL. 181/ NO. 554', 1, 'ADAUT', '', '', '', '', ''),
(292, 292, '1991-12-29', 0, 'BUKU.-/ HAL.- / NO. 3279', 1, 'JAYAPURA', '', '', '', '', ''),
(293, 293, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(294, 294, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(295, 295, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(296, 296, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(297, 297, '1985-09-16', 0, 'BUKU.-/ HAL.-/ NO.11.108', 1, 'TANATORAJA', '', '', '', '', ''),
(298, 298, '1993-11-14', 0, 'BUKU.-/ HAL.-/ NO. 236', 1, 'MANOKWARI', '', '', '', '', ''),
(299, 299, '2004-11-21', 0, 'BUKU.-/ HA.-/ N0. 7118', 1, 'ABEPURA', '', '', '', '', ''),
(300, 300, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(301, 301, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(302, 302, '1993-05-16', 0, 'BUKU III/ HAL.95/ NO. 760', 1, 'MEDAN', '', '', '', '', ''),
(303, 303, '1993-06-05', 0, 'BUKU III/ HAL.95/ NO. 761', 1, 'MEDAN', '', '', '', '', ''),
(304, 304, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(305, 305, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(306, 306, '1993-10-28', 0, 'TBI/ NO. 1296', 1, 'TANAH BELANG', '', '', '', '', ''),
(307, 307, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(308, 308, '1988-04-07', 0, 'HAL. 73/ NO.88', 1, 'MALIANA', '', '', '', '', ''),
(309, 309, '1987-02-23', 0, 'HAL. 72/ NO. 87', 1, 'BOBONARO', '', '', '', '', ''),
(310, 310, '1994-04-24', 0, '-', 1, 'SEKADAU', '', '', '', '', ''),
(311, 311, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(312, 312, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(313, 313, '1993-12-31', 0, '-', 1, 'PEKALONGAN', '', '', '', '', ''),
(314, 314, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(315, 315, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(316, 316, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(317, 317, '1991-12-19', 0, '-', 1, 'WESUASA', '', '', '', '', ''),
(318, 318, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(319, 319, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(320, 320, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(321, 321, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(322, 322, '1989-08-13', 0, '-', 1, 'ATAMBUA', '', '', '', '', ''),
(323, 323, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(324, 324, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(325, 325, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(326, 326, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(327, 327, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(328, 328, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(329, 329, '1993-02-21', 0, '-', 1, 'LIKKU', '', '', '', '', ''),
(330, 330, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(331, 331, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(332, 332, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(333, 333, '1993-01-28', 0, '-', 1, 'BATAM', '', '', '', '', ''),
(334, 334, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(335, 335, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(336, 336, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(337, 337, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(338, 338, '1990-07-15', 0, '-', 1, 'PADANG', '', '', '', '', ''),
(339, 339, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(340, 340, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(341, 341, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(342, 342, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(343, 343, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(344, 344, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(345, 345, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(346, 346, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(347, 347, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(348, 348, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(349, 349, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(350, 350, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(351, 351, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(352, 352, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(353, 353, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(354, 354, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(355, 355, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(356, 356, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(357, 357, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(358, 358, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(359, 359, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(360, 360, '1988-04-15', 0, '-', 1, 'BEIKALA', '', '', '', '', ''),
(361, 361, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(362, 362, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(363, 363, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(364, 364, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(365, 365, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(366, 366, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(367, 367, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(368, 368, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(369, 369, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(370, 370, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(371, 371, '1991-12-24', 0, '-', 1, 'ENDE', '', '', '', '', ''),
(372, 372, '1990-01-20', 0, '-', 1, 'SUMBA', '', '', '', '', ''),
(373, 373, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(374, 374, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(375, 375, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(376, 376, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(377, 377, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(378, 378, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(379, 379, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(380, 380, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(381, 381, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(382, 382, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(383, 383, '1968-05-15', 0, '-', 1, 'PALASARI', '', '', '', '', ''),
(384, 384, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(385, 385, '1976-06-20', 0, '-', 1, 'PALASARI', '', '', '', '', ''),
(386, 386, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(387, 387, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(388, 388, '1987-05-27', 0, '-', 1, 'NUALAIN', '', '', '', '', ''),
(389, 389, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(390, 390, '1994-05-14', 0, '-', 1, 'BESIKAMA', '', '', '', '', ''),
(391, 391, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(392, 392, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(393, 393, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(394, 394, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(395, 395, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(396, 396, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(397, 397, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(398, 398, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(399, 399, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(400, 400, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(401, 401, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(402, 402, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(403, 403, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(404, 404, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(405, 405, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(406, 406, '1986-10-27', 0, 'HAL 73/ NO.06', 1, 'MACADIGUE', '', '', '', '', ''),
(407, 407, '1991-03-19', 0, '-', 1, 'MAUBESI', '', '', '', '', ''),
(408, 408, '1991-10-24', 0, '-', 1, 'KLETEK', '', '', '', '', ''),
(409, 409, '1992-12-06', 0, '-', 1, 'WAIKABUBAK', '', '', '', '', ''),
(410, 410, '1988-11-16', 0, '-', 1, 'WAIKABUBAK', '', '', '', '', ''),
(411, 411, '1989-02-26', 0, 'BUKU IV/ NO.10110', 1, 'PUSU', '', '', '', '', ''),
(412, 412, '1990-07-13', 0, '-', 1, 'ENDE', '', '', '', '', ''),
(413, 413, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(414, 414, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(415, 415, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(416, 416, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(417, 417, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(418, 418, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(419, 419, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(420, 420, '1993-01-31', 0, '-', 1, 'ENDE', '', '', '', '', ''),
(421, 421, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(422, 422, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(423, 423, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(424, 424, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(425, 425, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(426, 426, '1986-10-27', 0, '-', 1, 'MACADIGUE', '', '', '', '', ''),
(427, 427, '1989-11-14', 0, '-', 1, 'ATAMBUA', '', '', '', '', ''),
(428, 428, '2005-12-23', 0, '-', 1, 'DENPASAR', '', '', '', '', ''),
(429, 429, '1990-12-31', 0, '-', 1, 'PURWOKERTO', '', '', '', '', ''),
(430, 430, '1989-12-31', 0, '-', 1, 'PURWOKERTO', '', '', '', '', ''),
(431, 431, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(432, 432, '1990-12-31', 0, '-', 1, 'MANGGARAI', '', '', '', '', ''),
(433, 433, '1991-03-04', 0, '-', 1, 'RAJA', '', '', '', '', ''),
(434, 434, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(435, 435, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(436, 436, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(437, 437, '1991-09-28', 0, '-', 1, 'BAJAWA', '', '', '', '', ''),
(438, 438, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(439, 439, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(440, 440, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(441, 441, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(442, 442, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(443, 443, '1991-09-17', 0, 'BUKU.-/FOL.-/NO.247', 1, 'TIMOR LESTE', '', '', '', '', ''),
(444, 444, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(445, 445, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(446, 446, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(447, 447, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(448, 448, '2001-09-10', 0, 'BUKU/ FOL.-/ NO.27.898', 1, 'SEON', '', '', '', '', ''),
(449, 449, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(450, 450, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(451, 451, '1981-11-08', 0, '-', 1, 'FAK-FAK', '', '', '', '', ''),
(452, 452, '1992-02-01', 0, '-', 1, 'TIMOR LESTE', '', '', '', '', ''),
(453, 453, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(454, 454, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(455, 455, '1980-07-18', 0, '-', 1, 'PALEMBANG', '', '', '', '', ''),
(456, 456, '1986-10-20', 0, '-', 1, 'EGEBUTU', '', '', '', '', ''),
(457, 457, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(458, 458, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(459, 459, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(460, 460, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(461, 461, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(462, 462, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(463, 463, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(464, 464, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(465, 465, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(466, 466, '1994-08-12', 0, '-', 1, 'KEFAMENANU', '', '', '', '', ''),
(467, 467, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(468, 468, '1992-12-31', 0, '-', 1, 'LAMPUNG', '', '', '', '', ''),
(469, 469, '1991-09-30', 0, '-', 1, 'PONTIANAK', '', '', '', '', ''),
(470, 470, '2002-12-22', 0, '-', 1, 'PONTIANAK', '', '', '', '', ''),
(471, 471, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(472, 472, '1984-12-14', 0, 'BUKU IV/ HAL.65/ NO.5028', 1, 'PAKEM', '', '', '', '', ''),
(473, 473, '0000-00-00', 0, '', 1, 'TDK', '', '', '', '', ''),
(474, 474, '2007-12-13', 0, 'SDH', 1, 'BABARSARI', '', '', '', '', ''),
(475, 475, '2009-06-12', 0, 'SDH', 1, 'BABARSARI', '', '', '', '', ''),
(476, 476, '1975-12-23', 0, 'BUKU III/ HAL 238/ NO. 949', 1, 'BACIRO', '', '', '', '', ''),
(477, 477, '1970-12-22', 0, 'BUKU II/ HAL.134/ NO.530', 1, 'BACIRO', '', '', '', '', ''),
(478, 478, '1969-07-29', 0, '-', 1, 'MADIUN', '', '', '', '', ''),
(479, 479, '1975-02-26', 0, 'BUKU IV/ NO. 734', 1, 'PEKALONGAN', '', '', '', '', ''),
(480, 480, '2007-04-07', 0, 'BUKU XII/ NO.3501', 1, 'PEKALONGAN', '', '', '', '', ''),
(481, 481, '2008-03-22', 0, 'BUKU XII/ NO.3647', 1, 'PEKALONGAN', '', '', '', '', ''),
(482, 482, '1973-05-27', 0, 'BUKU XIV/ HAL. 28/ NO. 109', 1, 'SEMARANG', '', '', '', '', ''),
(483, 483, '1975-01-26', 0, 'BUKU I/ NO.707', 1, 'MAGELANG', '', '', '', '', ''),
(484, 484, '2001-08-18', 0, 'SDH', 1, 'MAGELANG', '', '', '', '', ''),
(485, 485, '2008-04-11', 0, 'SDH', 1, 'BABARSARI', '', '', '', '', ''),
(486, 486, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(487, 487, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(488, 488, '2004-12-19', 0, 'BUKU I/ HAL.-/ NO.107', 1, 'BABARSARI', '', '', '', '', ''),
(489, 489, '2005-11-11', 0, 'BUKU I/ HAL.-/ NO. 128', 1, 'BABARSARI', '', '', '', '', ''),
(490, 490, '1986-07-07', 0, 'BUKU XXI/NO.886', 1, 'KOTABARU', '', '', '', '', ''),
(491, 491, '1969-03-06', 0, 'BUKU XIV/NO. 266', 1, 'KOTABARU', '', '', '', '', ''),
(492, 492, '1988-03-04', 0, 'BUKU XXII/ NO.329', 1, 'KOTABARU', '', '', '', '', ''),
(493, 493, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(494, 494, '1998-08-07', 0, 'BUKU XXV/NO. 1123 THN 1998', 1, 'KOTABARU', '', '', '', '', ''),
(495, 495, '0000-00-00', 0, 'BLM', 0, 'BLM', '', '', '', '', ''),
(496, 496, '0000-00-00', 0, '-', 1, 'SDH', '', '', '', '', ''),
(497, 497, '2001-07-01', 0, 'BUKU IV / 4023', 1, 'KEDIRI', '', '', '', '', ''),
(498, 498, '2002-12-09', 0, '', 1, 'BABARSARI', '', '', '', '', ''),
(499, 499, '2009-07-03', 0, '', 1, 'KEDIRI', '', '', '', '', ''),
(504, 0, '0000-00-00', 0, '', 0, 'Gereja', 'JOgja', 'Nama Baptisku', 'rrqwrROMO', 'WALIBAPTIS', 'Catatatan'),
(505, 0, '0000-00-00', 2147483647, '', 0, 'Gereja', 'JOgja', 'Nama Baptisku', 'rrqwrROMO', 'WALIBAPTIS', 'Catatatan'),
(506, 0, '0000-00-00', 3776, '', 0, 'afafafa', 'afafaf', 'namabaptis', 'awdawdawdawdawd', 'awdawdawdawdawdawdawd', 'catatan'),
(507, 0, '0000-00-00', 3776, 'BUKU kode, HLM 1, NO 2', 0, 'afafafa', 'afafaf', 'namabaptis', 'awdawdawdawdawd', 'awdawdawdawdawdawdawd', 'catatan'),
(508, 0, '2036-01-01', 3776, 'BUKU kode, HLM 1, NO 2', 0, 'afafafa', 'afafaf', 'namabaptis', 'awdawdawdawdawd', 'awdawdawdawdawdawdawd', 'catatan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baptises`
--
ALTER TABLE `baptises`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `baptises`
--
ALTER TABLE `baptises`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=509;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
