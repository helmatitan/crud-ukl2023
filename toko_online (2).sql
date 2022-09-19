-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Sep 2022 pada 23.13
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail_transaksi` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_detail_transaksi`, `id_transaksi`, `id_produk`, `qty`) VALUES
(1, 25, 13, 1),
(2, 25, 26, 1),
(3, 25, 19, 1),
(4, 26, 20, 1),
(5, 27, 19, 1),
(6, 28, 19, 1),
(7, 29, 13, 1),
(8, 30, 28, 1),
(9, 47, 19, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `level`) VALUES
(1, 'nina', 'ice', '123', 'petugas'),
(5, 'Aisya', 'icee', '123', 'pelanggan'),
(7, 'nina', 'nii', '123', 'petugas'),
(8, 'Ani', 'ani', '123', 'pelanggan'),
(11, 'grisel', 'gg', '123', 'pelanggan'),
(12, 'putri', 'pp', '123', 'petugas'),
(13, 'nina', 'nina', '123', 'pelanggan'),
(24, 'aisya karenina', 'ice', '123', 'petugas'),
(55, 'Siti', 'ss', '123', 'pelanggan'),
(98, 'grisel', 'da', '123', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(11) NOT NULL,
  `foto_produk` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `deskripsi`, `harga`, `foto_produk`) VALUES
(13, 'Lem Putih (FOX)', 'Lem Putih Serba Guna Terbaik', 17500, 'lem putih.jpg'),
(19, 'Cat Kayu (Avian) 100cc', 'Kilap yang Sempurna', 65000, 'cat kayu.jpg'),
(20, 'Thinner Dulux', 'Anti Bau, Kelupas, & Retak', 78000, 'thinner.jpg'),
(21, 'Semen Gresik 40kg', 'Hasil Lebih Halus', 62000, 'semen.jpg'),
(22, 'Semen Putih 40kg', 'Daya Rekat Tinggi', 110000, 'semen putih.jpg'),
(23, 'Cangkul', 'Anti Lengket', 35000, 'cangkul.jpg'),
(24, 'Sabit', 'Lebih Tajam & Kuat', 32000, 'sabit.jpg'),
(25, 'Sekop Pasir', 'Kuat & Ringan', 22500, 'sekop.jpg'),
(26, 'Cetok Tanah', 'Anti Karat, Awet', 21000, 'cetok.jpg'),
(27, 'Kawat 10m', 'Kuat Anti Kendor', 7500, 'kawat.jpg'),
(28, 'Selang Air /m', 'No Bocor Bocor', 15000, 'selang.jpg'),
(29, 'Paku 10pcs', 'Tajam dan Kuat', 5000, 'paku.jpg'),
(30, 'Engsel 4inch', 'Kokoh & Tidak Bising', 32700, 'engsel.jpg'),
(31, 'Kran Air', 'Anti Karat, Rapat', 16000, 'kran air.jpg'),
(32, 'Pompa Air', 'Daya Dorong Kuat', 650000, 'pompa air.jpg'),
(34, 'Pasir', 'Pasir subur bangunan', 8000, 'pasir.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk_sampai`
--

CREATE TABLE `produk_sampai` (
  `id_produk_sampai` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `tgl_sampai` date NOT NULL,
  `denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk_sampai`
--

INSERT INTO `produk_sampai` (`id_produk_sampai`, `id_transaksi`, `tgl_sampai`, `denda`) VALUES
(1, 1, '2022-09-09', 0),
(2, 3, '2022-09-09', 0),
(3, 5, '2022-09-14', 0),
(4, 4, '2022-09-14', 0),
(5, 6, '2022-09-15', 0),
(6, 7, '2022-09-16', 0),
(7, 29, '2022-09-19', 0),
(8, 29, '2022-09-19', 0),
(9, 29, '2022-09-19', 0),
(10, 26, '2022-09-19', 95000),
(11, 29, '2022-09-19', 0),
(12, 30, '2022-09-19', 0),
(13, 30, '2022-09-19', 0),
(14, 47, '2022-09-19', 0),
(15, 47, '2022-09-19', 0),
(16, 47, '2022-09-19', 0),
(17, 47, '2022-09-19', 0),
(18, 47, '2022-09-19', 0),
(19, 47, '2022-09-19', 0),
(20, 47, '2022-09-19', 0),
(21, 30, '2022-09-19', 0),
(22, 47, '2022-09-19', 0),
(23, 47, '2022-09-19', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `tgl_sampai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_petugas`, `tgl_transaksi`, `tgl_sampai`) VALUES
(28, 55, '2022-09-19', '2022-09-24'),
(30, 1, '2022-09-19', '2022-09-24'),
(47, 5, '2022-09-19', '2022-09-24');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detail_transaksi`),
  ADD KEY `id_transaksi` (`id_transaksi`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `produk_sampai`
--
ALTER TABLE `produk_sampai`
  ADD PRIMARY KEY (`id_produk_sampai`),
  ADD KEY `id_pembelian_produk` (`id_transaksi`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_petugas` (`id_petugas`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `produk_sampai`
--
ALTER TABLE `produk_sampai`
  MODIFY `id_produk_sampai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
