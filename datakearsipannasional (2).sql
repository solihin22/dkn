-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2019 at 08:23 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `datakearsipannasional`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `anggaran`
--

CREATE TABLE IF NOT EXISTS `anggaran` (
  `id_anggaran` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `anggaran_lkd_kearsipan` double NOT NULL,
  `anggaran_lkd_perpustakaan` double NOT NULL,
  `tahun` varchar(5) NOT NULL,
  PRIMARY KEY (`id_anggaran`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `anggaran`
--

INSERT INTO `anggaran` (`id_anggaran`, `id_user`, `anggaran_lkd_kearsipan`, `anggaran_lkd_perpustakaan`, `tahun`) VALUES
(1, 0, 30000000, 50000000, '2018'),
(2, 0, 100000, 10000000, '2019'),
(3, 0, 8800000, 1000000, '2019'),
(4, 0, 555000, 660000, '2018');

-- --------------------------------------------------------

--
-- Table structure for table `kelembagaan`
--

CREATE TABLE IF NOT EXISTS `kelembagaan` (
  `id_lembaga` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `nomenklatur` varchar(100) NOT NULL,
  `nama_kepala` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `telpfaks` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `website` varchar(50) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id_lembaga`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `kelembagaan`
--

INSERT INTO `kelembagaan` (`id_lembaga`, `id_user`, `nomenklatur`, `nama_kepala`, `alamat`, `telpfaks`, `email`, `website`, `status`) VALUES
(1, 0, 'solihin muhammad', 'Muhammad Solihin', 'jl raya tengah no 37', '083807', 'sol@solihin.com', 'solihin.anri.go.id', 2);

-- --------------------------------------------------------

--
-- Table structure for table `khasanah`
--

CREATE TABLE IF NOT EXISTS `khasanah` (
  `id_khasanah` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `arsip_statis` int(4) NOT NULL,
  `as_kertas` int(4) NOT NULL,
  `as_foto` int(4) NOT NULL,
  `as_film` int(4) NOT NULL,
  `as_kartografidankearsitekturan` int(4) NOT NULL,
  `arsip_inaktif` int(4) NOT NULL,
  `ai_kertas` int(4) NOT NULL,
  `ai_foto` int(4) NOT NULL,
  `ai_film` int(4) NOT NULL,
  `ai_kartografidankearsitekturan` int(4) NOT NULL,
  `tahun` int(5) NOT NULL,
  PRIMARY KEY (`id_khasanah`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `khasanah`
--

INSERT INTO `khasanah` (`id_khasanah`, `id_user`, `arsip_statis`, `as_kertas`, `as_foto`, `as_film`, `as_kartografidankearsitekturan`, `arsip_inaktif`, `ai_kertas`, `ai_foto`, `ai_film`, `ai_kartografidankearsitekturan`, `tahun`) VALUES
(2, 0, 100, 10, 20, 30, 40, 120, 50, 60, 70, 80, 2019);

-- --------------------------------------------------------

--
-- Table structure for table `pedoman_pengelolaan`
--

CREATE TABLE IF NOT EXISTS `pedoman_pengelolaan` (
  `id_pedoman` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `peraturan_daerah` text NOT NULL,
  `peraturan_kepala` text NOT NULL,
  `edaran` text NOT NULL,
  `tnd` text NOT NULL,
  `jra` text NOT NULL,
  `klasifikasi` text NOT NULL,
  `kka` text NOT NULL,
  `pedoman_pengolahaan_arsip` text NOT NULL,
  PRIMARY KEY (`id_pedoman`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `pedoman_pengelolaan`
--

INSERT INTO `pedoman_pengelolaan` (`id_pedoman`, `id_user`, `peraturan_daerah`, `peraturan_kepala`, `edaran`, `tnd`, `jra`, `klasifikasi`, `kka`, `pedoman_pengolahaan_arsip`) VALUES
(2, 0, 'PP No 1 2019', 'PP No 2 2019', 'PP No 3 2019', 'PP No 4 2019', 'PP No 5 2019', 'PP No 6 2019', 'PP No 7 2019', 'PP No 8 2019');

-- --------------------------------------------------------

--
-- Table structure for table `saranaprasarana`
--

CREATE TABLE IF NOT EXISTS `saranaprasarana` (
  `id_sarpras` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `depo` int(3) NOT NULL,
  `record_center` int(3) NOT NULL,
  `tahun` int(5) NOT NULL,
  PRIMARY KEY (`id_sarpras`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `saranaprasarana`
--

INSERT INTO `saranaprasarana` (`id_sarpras`, `id_user`, `depo`, `record_center`, `tahun`) VALUES
(1, 0, 50, 20, 2019),
(3, 0, 20, 22, 2017);

-- --------------------------------------------------------

--
-- Table structure for table `sdm`
--

CREATE TABLE IF NOT EXISTS `sdm` (
  `id_sdm` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `arsiparis_terampil` int(5) NOT NULL,
  `arsiparis_mahir` int(5) NOT NULL,
  `arsiparis_penyelia` int(5) NOT NULL,
  `arsiparis_pertama` int(5) NOT NULL,
  `arsiparis_muda` int(5) NOT NULL,
  `arsiparis_madya` int(5) NOT NULL,
  `tenaga_non_arsiparis` int(5) NOT NULL,
  `tahun` varchar(5) NOT NULL,
  PRIMARY KEY (`id_sdm`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `sdm`
--

INSERT INTO `sdm` (`id_sdm`, `id_user`, `arsiparis_terampil`, `arsiparis_mahir`, `arsiparis_penyelia`, `arsiparis_pertama`, `arsiparis_muda`, `arsiparis_madya`, `tenaga_non_arsiparis`, `tahun`) VALUES
(1, 0, 10, 5, 10, 2, 5, 10, 8, '2018'),
(2, 0, 10, 20, 33, 10, 5, 10, 50, '2019');

-- --------------------------------------------------------

--
-- Table structure for table `sistem_informasi_pengolahan`
--

CREATE TABLE IF NOT EXISTS `sistem_informasi_pengolahan` (
  `id_sistem` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `sikd_terima` int(2) NOT NULL,
  `sikd_tanggal` varchar(30) NOT NULL,
  `siks_terima` int(2) NOT NULL,
  `siks_tanggal` varchar(30) NOT NULL,
  `sikn_jikn` int(2) NOT NULL,
  `sikn_jikn_tanggal` varchar(30) NOT NULL,
  `sistem_informasi_lain` text NOT NULL,
  `sistem_informasi_lain_tanggal` varchar(30) NOT NULL,
  PRIMARY KEY (`id_sistem`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `sistem_informasi_pengolahan`
--

INSERT INTO `sistem_informasi_pengolahan` (`id_sistem`, `id_user`, `sikd_terima`, `sikd_tanggal`, `siks_terima`, `siks_tanggal`, `sikn_jikn`, `sikn_jikn_tanggal`, `sistem_informasi_lain`, `sistem_informasi_lain_tanggal`) VALUES
(1, 0, 0, '2019', 0, '2019-03-20', 1, '2019-03-27', '', ''),
(2, 0, 0, '2019', 1, '2019', 1, '2019-03-27', 'Esdawet', '2019'),
(5, 0, 1, '2018', 1, '2017', 1, '2020', 'Esdawet', '2019');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `unit_kerja` varchar(50) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `no_hp` varchar(16) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama`, `unit_kerja`, `jabatan`, `no_hp`) VALUES
(0, 'solihin', 'solihin', 'Muhammad Solihin', 'Pusdatin', 'IT', '099292');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
