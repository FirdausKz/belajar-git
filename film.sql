-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jan 2025 pada 18.29
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinema`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `film`
--

CREATE TABLE `film` (
  `id` int(11) NOT NULL,
  `judul` varchar(25) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `tahun` int(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `isdel` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `film`
--

INSERT INTO `film` (`id`, `judul`, `deskripsi`, `tahun`, `created_by`, `created_at`, `updated_by`, `updated_at`, `deleted_by`, `deleted_at`, `isdel`) VALUES
(5, 'Naruto', 'Film yang menceritakan anak yang memiliki kekuatan biju bernama kurama', 2000, 1, '2025-01-09 18:11:20', NULL, NULL, NULL, NULL, 0),
(6, 'Naruto', 'Menceritakan Anak yang memiliki kekuatan biju ', 2000, 1, '2025-01-09 18:11:47', NULL, NULL, 1, '2025-01-09 18:12:38', 1),
(7, 'kurama', 'biju terkuat', 1000, 1, '2025-01-09 18:12:50', NULL, NULL, 1, '2025-01-09 18:12:52', 1),
(8, 'Fast and Forious', 'film yang di perankan oleh pemain utama bernama domtoreto', 2019, 1, '2025-01-09 18:14:57', NULL, NULL, 1, '2025-01-09 18:29:24', 1),
(9, 'Fast X ', 'film series ke 10 dari fast and forious', 2020, 1, '2025-01-09 18:15:20', NULL, NULL, NULL, NULL, 0),
(10, 'Dora the eksploler', 'film kartun masa kecil', 2000, 1, '2025-01-09 18:28:44', NULL, NULL, NULL, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `film`
--
ALTER TABLE `film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
