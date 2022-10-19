-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Okt 2022 pada 17.13
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `daftarpesanan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftarpesan`
--

CREATE TABLE `daftarpesan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nomorhp` int(13) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `barang` varchar(255) NOT NULL,
  `panjang` float NOT NULL,
  `tinggi` float NOT NULL,
  `metode` varchar(10) NOT NULL,
  `gambar` varchar(2555) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `daftarpesan`
--

INSERT INTO `daftarpesan` (`id`, `nama`, `nomorhp`, `alamat`, `barang`, `panjang`, `tinggi`, `metode`, `gambar`) VALUES
(10, 'Aldy Ramadhan Syahputra', 2147483647, 'Jalan Ery Suparjan. Rt. 12, No. 02', 'pintu jendela', 3, 3, 'Cash', 'Astaroth Design 12.2.jpg'),
(11, 'DHIMAS', 2147483647, 'jalan mas penghulu', 'lemari', 5, 3, 'Transfer', 'Astaroth Design 15.jpg'),
(12, 'riyan', 2147483647, 'jalan pramuka', 'kursi', 4, 4, 'Cash', 'Astaroth Design 18.jpg'),
(13, 'filipus', 89999999, 'jalan perjuangan', 'Tempat Tidur', 10, 10, 'Transfer', 'Astaroth Design 31.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `daftarpesan`
--
ALTER TABLE `daftarpesan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `daftarpesan`
--
ALTER TABLE `daftarpesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
