-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2026 at 06:32 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kd_brg` varchar(20) NOT NULL,
  `nm_brg` varchar(20) NOT NULL,
  `jenisbrg` varchar(20) NOT NULL,
  `hargabeli` varchar(20) NOT NULL,
  `hargajual` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kd_brg`, `nm_brg`, `jenisbrg`, `hargabeli`, `hargajual`) VALUES
('123', 'amel cantik', 'Item 3', '500.000', '1000000'),
('1234', 'fitri', 'makanan', '15000', '200000'),
('R010411', 'ROTI TAWAR', 'Makanan', '15000', '18000');

-- --------------------------------------------------------

--
-- Table structure for table `isi`
--

CREATE TABLE `isi` (
  `id_nota` varchar(10) NOT NULL,
  `kd_brg` varchar(10) NOT NULL,
  `hb` decimal(10,2) DEFAULT NULL,
  `hj` decimal(10,2) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `isi`
--

INSERT INTO `isi` (`id_nota`, `kd_brg`, `hb`, `hj`, `qty`) VALUES
('IN0001', 'R010411', 15000.00, 18000.00, 2);

-- --------------------------------------------------------

--
-- Table structure for table `kasir`
--

CREATE TABLE `kasir` (
  `id_kasir` varchar(20) NOT NULL,
  `nm_kasir` varchar(20) NOT NULL,
  `jenis_kelamin` varchar(30) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kasir`
--

INSERT INTO `kasir` (`id_kasir`, `nm_kasir`, `jenis_kelamin`, `no_telepon`, `agama`, `alamat`, `password`) VALUES
('R010411', 'Keisyaaa', 'Perempuan', '08871424548', 'Islam', 'BINTARA 1', 'keisya2506'),
('R040110', 'Ihsann', 'Laki-Laki', '08989898767', 'Islam', 'Enteng 2', 'keisya2506');

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `id_nota` varchar(10) NOT NULL,
  `tgl_nota` date DEFAULT NULL,
  `id` varchar(10) DEFAULT NULL,
  `id_kasir` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nota`
--

INSERT INTO `nota` (`id_nota`, `tgl_nota`, `id`, `id_kasir`) VALUES
('IN0001', '2026-05-29', '123456', 'R010411');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` varchar(6) NOT NULL,
  `nmplgn` varchar(25) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `nmplgn`, `jenis`, `telepon`, `alamat`) VALUES
('123456', 'keisya', 'Perempuan', '0976543456788', 'enteng 2'),
('P001', 'Andi Saputra', 'Reguler', '081234567001', 'Jakarta'),
('P003', 'Citra Lestari', 'Reguler', '081234567003', 'Surabaya'),
('P004', 'Dewi Anggraini', 'VIP', '081234567004', 'Yogyakarta'),
('P005', 'Eko Prasetyo', 'Reguler', '081234567005', 'Semarang'),
('P006', 'Fajar Nugroho', 'VIP', '081234567006', 'Medan'),
('P007', 'Gina Permata', 'Reguler', '081234567007', 'Palembang'),
('P008', 'Hadi Wijaya', 'VIP', '081234567008', 'Makassar'),
('P009', 'Intan Sari', 'Reguler', '081234567009', 'Depok'),
('P010', 'Joko Susilo', 'VIP', '081234567010', 'Bekasi'),
('P011', 'Kartika Dewi', 'Reguler', '081234567011', 'Tangerang'),
('P012', 'Lukman Hakim', 'VIP', '081234567012', 'Bogor'),
('P013', 'Maya Putri', 'Reguler', '081234567013', 'Malang'),
('P014', 'Nanda Saputra', 'VIP', '081234567014', 'Solo'),
('P015', 'Oki Setiawan', 'Reguler', '081234567015', 'Cirebon'),
('P016', 'Putri Ayu', 'VIP', '081234567016', 'Padang'),
('P017', 'Qori Rahma', 'Reguler', '081234567017', 'Pekanbaru'),
('P018', 'Rizky Maulana', 'VIP', '081234567018', 'Balikpapan'),
('P019', 'Sinta Wulandari', 'Reguler', '081234567019', 'Banjarmasin'),
('P020', 'Teguh Prakoso', 'VIP', '081234567020', 'Pontianak'),
('P021', 'Umar Faruq', 'Reguler', '081234567021', 'Manado'),
('P022', 'Vina Melati', 'VIP', '081234567022', 'Ambon'),
('P023', 'Wahyu Hidayat', 'Reguler', '081234567023', 'Kupang'),
('P024', 'Xena Putri', 'VIP', '081234567024', 'Jayapura'),
('P025', 'Yudi Kurniawan', 'Reguler', '081234567025', 'Serang'),
('P026', 'Zahra Nabila', 'VIP', '081234567026', 'Purwokerto'),
('P027', 'Agus Salim', 'Reguler', '081234567027', 'Tasikmalaya'),
('P028', 'Bella Safitri', 'VIP', '081234567028', 'Garut'),
('P029', 'Chandra Gunawan', 'Reguler', '081234567029', 'Sukabumi'),
('P030', 'Dian Puspita', 'VIP', '081234567030', 'Cianjur');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kd_brg`);

--
-- Indexes for table `isi`
--
ALTER TABLE `isi`
  ADD PRIMARY KEY (`id_nota`,`kd_brg`),
  ADD KEY `kd_brg` (`kd_brg`);

--
-- Indexes for table `kasir`
--
ALTER TABLE `kasir`
  ADD PRIMARY KEY (`id_kasir`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`),
  ADD KEY `id` (`id`),
  ADD KEY `id_kasir` (`id_kasir`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `isi`
--
ALTER TABLE `isi`
  ADD CONSTRAINT `isi_ibfk_1` FOREIGN KEY (`id_nota`) REFERENCES `nota` (`id_nota`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `isi_ibfk_2` FOREIGN KEY (`kd_brg`) REFERENCES `barang` (`kd_brg`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nota`
--
ALTER TABLE `nota`
  ADD CONSTRAINT `nota_ibfk_1` FOREIGN KEY (`id`) REFERENCES `pelanggan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nota_ibfk_2` FOREIGN KEY (`id_kasir`) REFERENCES `kasir` (`id_kasir`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
