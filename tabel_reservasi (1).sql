-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 14, 2026 at 02:15 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_remedi_pbo_trpl1b_giant pandu titisan b`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_reservasi`
--

CREATE TABLE `tabel_reservasi` (
  `id_reservasi` int NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `tanggal_booking` datetime NOT NULL,
  `durasi_jam` int NOT NULL,
  `tarif_dasar_per_jam` decimal(10,2) NOT NULL,
  `jenis_paket` enum('Reguler','Premium','Event') NOT NULL,
  `tipe_background` varchar(100) DEFAULT NULL,
  `cetak_foto_lembar` int DEFAULT NULL,
  `kuota_talent_orang` int DEFAULT NULL,
  `layanan_makeup` varchar(100) DEFAULT NULL,
  `nama_lokasi_luar` varchar(150) DEFAULT NULL,
  `biaya_transportasi_tim` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tabel_reservasi`
--

INSERT INTO `tabel_reservasi` (`id_reservasi`, `nama_pelanggan`, `tanggal_booking`, `durasi_jam`, `tarif_dasar_per_jam`, `jenis_paket`, `tipe_background`, `cetak_foto_lembar`, `kuota_talent_orang`, `layanan_makeup`, `nama_lokasi_luar`, `biaya_transportasi_tim`) VALUES
(1, 'Andi Saputra', '2026-07-20 10:00:00', 1, 150000.00, 'Reguler', 'Polos Putih', 5, NULL, NULL, NULL, NULL),
(2, 'Budi Santoso', '2026-07-21 13:00:00', 2, 150000.00, 'Reguler', 'Abstrak Abu-abu', 10, NULL, NULL, NULL, NULL),
(3, 'Citra Kirana', '2026-07-22 15:00:00', 1, 150000.00, 'Reguler', 'Polos Hitam', 5, NULL, NULL, NULL, NULL),
(4, 'Dewi Lestari', '2026-07-23 11:00:00', 2, 150000.00, 'Reguler', 'Polos Putih', 15, NULL, NULL, NULL, NULL),
(5, 'Eko Prasetyo', '2026-07-24 14:00:00', 1, 150000.00, 'Reguler', 'Gradasi Biru', 5, NULL, NULL, NULL, NULL),
(6, 'Fina Maharani', '2026-07-25 16:00:00', 2, 150000.00, 'Reguler', 'Abstrak Coklat', 10, NULL, NULL, NULL, NULL),
(7, 'Gilang Dirga', '2026-07-26 09:00:00', 1, 150000.00, 'Reguler', 'Polos Hitam', 5, NULL, NULL, NULL, NULL),
(8, 'Hendra Wijaya', '2026-07-20 13:00:00', 3, 300000.00, 'Premium', 'Set Klasik Eropa', 20, 4, 'Makeup Natural', NULL, NULL),
(9, 'Intan Nuraini', '2026-07-21 10:00:00', 4, 300000.00, 'Premium', 'Set Modern Minimalis', 30, 5, 'Makeup Glamour', NULL, NULL),
(10, 'Joko Anwar', '2026-07-22 14:00:00', 3, 300000.00, 'Premium', 'Set Vintage', 25, 3, 'Makeup Karakter', NULL, NULL),
(11, 'Kartika Sari', '2026-07-23 09:00:00', 5, 300000.00, 'Premium', 'Set Bunga Mawar', 40, 6, 'Makeup Flawless', NULL, NULL),
(12, 'Lukman Sardi', '2026-07-24 13:00:00', 3, 300000.00, 'Premium', 'Set Klasik Eropa', 20, 2, 'Makeup Natural', NULL, NULL),
(13, 'Maya Septha', '2026-07-25 11:00:00', 4, 300000.00, 'Premium', 'Set Bohemian', 30, 4, 'Makeup Glowing', NULL, NULL),
(14, 'Nanda Saputra', '2026-07-26 15:00:00', 3, 300000.00, 'Premium', 'Set Modern Minimalis', 20, 3, 'Makeup Natural', NULL, NULL),
(15, 'Oki Setiana', '2026-07-27 08:00:00', 8, 500000.00, 'Event', NULL, NULL, NULL, NULL, 'Gedung Pertemuan Graha', 250000.00),
(16, 'Putri Titian', '2026-07-28 07:00:00', 10, 500000.00, 'Event', NULL, NULL, NULL, NULL, 'Hotel Aston Ballroom', 350000.00),
(17, 'Qori Ananda', '2026-07-29 09:00:00', 6, 500000.00, 'Event', NULL, NULL, NULL, NULL, 'Taman Bunga Nusantara', 400000.00),
(18, 'Rizky Febian', '2026-07-30 16:00:00', 5, 500000.00, 'Event', NULL, NULL, NULL, NULL, 'Pantai Indah Kapuk', 500000.00),
(19, 'Santi Dwi', '2026-07-31 08:00:00', 8, 500000.00, 'Event', NULL, NULL, NULL, NULL, 'Aula Universitas Terbuka', 200000.00),
(20, 'Tomi Hidayat', '2026-08-01 10:00:00', 12, 500000.00, 'Event', NULL, NULL, NULL, NULL, 'Resort Gunung Geulis', 600000.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_reservasi`
--
ALTER TABLE `tabel_reservasi`
  ADD PRIMARY KEY (`id_reservasi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_reservasi`
--
ALTER TABLE `tabel_reservasi`
  MODIFY `id_reservasi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
