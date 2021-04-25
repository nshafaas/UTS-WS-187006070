-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Apr 2021 pada 18.29
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wsuts`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kpop`
--

CREATE TABLE `kpop` (
  `id` int(11) NOT NULL,
  `tahun_debut` int(6) NOT NULL,
  `asal` varchar(30) NOT NULL,
  `label` varchar(200) NOT NULL,
  `anggota` int(9) NOT NULL,
  `release_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kpop`
--

INSERT INTO `kpop` (`id`, `tahun_debut`, `asal`, `label`, `anggota`, `release_at`) VALUES
(1, 2012, 'Seoul, Korea Selatan', 'SM Entertainment', 9, '2021-04-24 09:53:33'),
(2, 2012, 'SEOUL, KOREA SELATAN', 'SM Entertainment', 9, '2021-04-24 10:16:24'),
(3, 2015, '', '', 0, '2021-04-25 12:16:28');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kpop`
--
ALTER TABLE `kpop`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kpop`
--
ALTER TABLE `kpop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
