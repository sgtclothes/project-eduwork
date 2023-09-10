-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Sep 2023 pada 13.36
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apotek`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `nama_apotek`
--

CREATE TABLE `nama_apotek` (
  `id` int(11) NOT NULL,
  `nama_apotek` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(12) NOT NULL,
  `id_obat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `nama_apotek`
--

INSERT INTO `nama_apotek` (`id`, `nama_apotek`, `alamat`, `no_telp`, `id_obat`) VALUES
(1, 'Kimia Farma Cabang Bekasi', 'Jl. Letnan Arsyad RT 007 RW 054 jakarta utara dKI Jakarta', '098798764543', 1),
(2, 'Kimia Farma Cabang Jakarta', 'Jl. raya ahmad yani jakarat utata utara DKI Jakarta', '089789897676', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nama_obat`
--

CREATE TABLE `nama_obat` (
  `id` int(11) NOT NULL,
  `nama_obat` varchar(50) NOT NULL,
  `tanggal_produksi` date NOT NULL,
  `exp` date NOT NULL,
  `usia` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `nama_obat`
--

INSERT INTO `nama_obat` (`id`, `nama_obat`, `tanggal_produksi`, `exp`, `usia`) VALUES
(1, 'vaksin sinovac', '2022-09-07', '2025-09-10', 'dewasa'),
(2, 'imunisasi BCG Polio', '2017-09-13', '2025-09-09', 'balita');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `nama_apotek`
--
ALTER TABLE `nama_apotek`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_nama_obat` (`id_obat`);

--
-- Indeks untuk tabel `nama_obat`
--
ALTER TABLE `nama_obat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `nama_apotek`
--
ALTER TABLE `nama_apotek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `nama_obat`
--
ALTER TABLE `nama_obat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `nama_apotek`
--
ALTER TABLE `nama_apotek`
  ADD CONSTRAINT `fk_nama_obat` FOREIGN KEY (`id_obat`) REFERENCES `nama_obat` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
