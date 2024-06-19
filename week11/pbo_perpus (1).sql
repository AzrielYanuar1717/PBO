-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jun 19, 2024 at 07:08 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pbo_perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `ID` int(11) NOT NULL,
  `Judul_Buku` varchar(255) DEFAULT NULL,
  `Tahun_Terbit` int(4) DEFAULT NULL,
  `Stok` tinyint(2) DEFAULT NULL,
  `Penulis` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`ID`, `Judul_Buku`, `Tahun_Terbit`, `Stok`, `Penulis`) VALUES
(11, 'The last airbender', 2010, 4, 'Michael Dante'),
(12, 'Harry Potter', 2008, 3, 'J.K. Rowling'),
(13, 'Naruto', 2000, 3, 'Masashi Kishimoto'),
(14, 'Laskar Pelangi', 2005, 11, 'Andrea Hirata'),
(15, 'Keluarga Cemara', 1981, 12, 'Arswendo Atmowiloto');

-- --------------------------------------------------------

--
-- Table structure for table `penulis`
--

CREATE TABLE `penulis` (
  `ID` int(11) NOT NULL,
  `Nama_Penulis` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penulis`
--

INSERT INTO `penulis` (`ID`, `Nama_Penulis`) VALUES
(11, 'Michael Dante'),
(12, 'J.K. Rowling'),
(13, 'Masashi Kishimoto'),
(14, 'Andrea Hirata'),
(15, 'Arswendo Atmowiloto');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `penulis`
--
ALTER TABLE `penulis`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
