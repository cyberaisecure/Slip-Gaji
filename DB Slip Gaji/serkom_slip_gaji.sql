-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 06 Agu 2026 pada 03.03
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `serkom_slip_gaji`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `slip_gaji`
--

CREATE TABLE `slip_gaji` (
  `id` int NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nik` varchar(30) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `periode` date NOT NULL,
  `gaji_pokok` decimal(12,2) NOT NULL DEFAULT '0.00',
  `lembur` decimal(12,2) NOT NULL DEFAULT '0.00',
  `total_penghasilan` decimal(12,2) NOT NULL DEFAULT '0.00',
  `pinjaman` decimal(12,2) NOT NULL DEFAULT '0.00',
  `total_potongan` decimal(12,2) NOT NULL DEFAULT '0.00',
  `gaji_bersih` decimal(12,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `slip_gaji`
--

INSERT INTO `slip_gaji` (`id`, `nama`, `nik`, `jabatan`, `email`, `no_hp`, `periode`, `gaji_pokok`, `lembur`, `total_penghasilan`, `pinjaman`, `total_potongan`, `gaji_bersih`, `created_at`) VALUES
(1, 'Qishi', '3211109874', 'HRD', 'cyberaiseure@gmail.com', '08814588373', '2026-08-04', 2000000.00, 0.00, 2000000.00, 500000.00, 500000.00, 1500000.00, '2026-08-04 04:32:18'),
(2, 'Qishi', '3211109874', 'HRD', 'immrsatria@gmail.com', '08814588373', '2026-08-04', 2000000.00, 0.00, 2000000.00, 500000.00, 500000.00, 1500000.00, '2026-08-04 04:49:36'),
(3, 'Qishi', '3211109874', 'HRD', 'immrsatria@gmail.com', '08814588373', '2026-08-04', 2000000.00, 0.00, 2000000.00, 500000.00, 500000.00, 1500000.00, '2026-08-04 04:50:34'),
(4, 'Qishi', '3211109874', 'HRD', 'immrsatria@gmail.com', '08814588373', '2026-08-04', 2000000.00, 0.00, 2000000.00, 500000.00, 500000.00, 1500000.00, '2026-08-04 04:50:41'),
(5, 'Qishi', '3211109874', 'HRD', 'immrsatria@gmail.com', '08814588373', '2026-08-04', 2000000.00, 0.00, 2000000.00, 500000.00, 500000.00, 1500000.00, '2026-08-04 04:50:49'),
(6, 'Qishi', '3211109874435', 'HRD', 'immrsatria@gmail.com', '08814588373', '2026-08-04', 2000000.00, 0.00, 2000000.00, 500000.00, 500000.00, 1500000.00, '2026-08-04 04:50:58'),
(7, 'Qishi', '3211109874', 'HRD', 'immrsatria@gmail.com', '08814588373', '2026-08-04', 2000000.00, 0.00, 2000000.00, 500000.00, 500000.00, 1500000.00, '2026-08-04 04:55:59'),
(8, 'Qishi', '3211109874', 'HRD', 'cyberaiseure@gmail.com', '08814588373', '2026-08-04', 2000000.00, 0.00, 2000000.00, 500000.00, 500000.00, 1500000.00, '2026-08-04 04:57:53'),
(9, 'Qishi Senpai', '32112345', 'CEO', 'cyberaiseure@gmail.com', '08814588373', '2026-08-04', 100000000.00, 0.00, 100000000.00, 5000000.00, 5000000.00, 95000000.00, '2026-08-04 05:31:14'),
(10, 'Qishi Senpai', '32112345', 'CEO', 'cyberaiseure@gmail.com', '08814588373', '2026-08-04', 100000000.00, 0.00, 100000000.00, 5000000.00, 5000000.00, 95000000.00, '2026-08-04 05:40:11'),
(11, 'Qishi Senpai', '32112345', 'CEO', 'cyberaiseure@gmail.com', '08814588373', '2026-08-04', 100000000.00, 0.00, 100000000.00, 5000000.00, 5000000.00, 95000000.00, '2026-08-04 05:51:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin') DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `password`, `role`, `created_at`) VALUES
(2, 'Administrator', 'admin@serkom.com', '$2y$10$v8GJnitb91Bu.3e/NrYdauXoaF00MzZ8kz.xnF/B95g8peB9zDXTi', 'admin', '2026-08-04 02:46:50');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `slip_gaji`
--
ALTER TABLE `slip_gaji`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `slip_gaji`
--
ALTER TABLE `slip_gaji`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
