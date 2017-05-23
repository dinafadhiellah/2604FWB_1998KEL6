-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 23 Mei 2017 pada 14.46
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `traveloka`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pengguna_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `destinasi`
--

CREATE TABLE `destinasi` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_destinasi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tipe_destinasi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `durasi_perjalanan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kota_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `destinasi`
--

INSERT INTO `destinasi` (`id`, `nama_destinasi`, `tipe_destinasi`, `durasi_perjalanan`, `kota_id`, `created_at`, `updated_at`) VALUES
(1, 'Pantai Manggar', 'Pantai', '1', 3, '2017-05-23 01:46:30', '2017-05-23 01:46:30'),
(2, 'Pantai Amal', 'Pantai', '1', 1, '2017-05-23 01:46:55', '2017-05-23 01:46:55'),
(3, 'Gedung Kembar', 'Icon Negara', '2', 5, '2017-05-23 01:47:44', '2017-05-23 01:47:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id` int(10) UNSIGNED NOT NULL,
  `jam` time NOT NULL,
  `hari` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `paket_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id`, `jam`, `hari`, `tanggal`, `paket_id`, `created_at`, `updated_at`) VALUES
(1, '10:00:00', 'Senin', '2017-05-29', 4, '2017-05-23 01:50:45', '2017-05-23 01:50:45'),
(2, '21:00:00', 'Minggu', '2017-05-28', 2, '2017-05-23 01:51:19', '2017-05-23 01:51:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_kendaraan`
--

CREATE TABLE `jenis_kendaraan` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_kendaraan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `no_penerbangan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `jenis_kendaraan`
--

INSERT INTO `jenis_kendaraan` (`id`, `nama_kendaraan`, `no_penerbangan`, `created_at`, `updated_at`) VALUES
(1, 'Garuda Indonesia', 'GA 650', '2017-05-23 01:41:20', '2017-05-23 01:41:20'),
(2, 'Sriwijaya Air', 'Sj 789 ', '2017-05-23 01:41:41', '2017-05-23 01:41:41'),
(3, 'Lion Air', 'JT 443', '2017-05-23 01:42:08', '2017-05-23 01:42:08'),
(4, 'Malaysia Airlines', 'MAS 332', '2017-05-23 01:42:33', '2017-05-23 01:42:33'),
(5, 'KalStar Aviation', 'KA 334', '2017-05-23 01:43:04', '2017-05-23 01:43:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kota`
--

CREATE TABLE `kota` (
  `id` int(10) UNSIGNED NOT NULL,
  `asal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tujuan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `kota`
--

INSERT INTO `kota` (`id`, `asal`, `tujuan`, `created_at`, `updated_at`) VALUES
(1, 'Balikpapan', 'Tarakan', '2017-05-23 01:43:17', '2017-05-23 01:43:17'),
(2, 'Berau', 'Samainda', '2017-05-23 01:43:30', '2017-05-23 01:43:30'),
(3, 'Yogyakarta', 'Balikpapan ', '2017-05-23 01:43:48', '2017-05-23 01:43:48'),
(5, 'Jakarta', 'Kuala Lumpur', '2017-05-23 01:44:32', '2017-05-23 01:44:32'),
(6, 'Bali', 'Makassar', '2017-05-23 01:44:48', '2017-05-23 01:44:48'),
(7, 'Tarakan ', 'Tawau', '2017-05-23 01:45:04', '2017-05-23 01:45:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_05_18_124738_buat_tabel_pengguna', 1),
('2017_05_18_124739_buat_tabel_wisatawan', 1),
('2017_05_18_124748_buat_tabel_admin', 1),
('2017_05_18_133904_buat_tabel_kendaraan', 1),
('2017_05_18_133927_buat_tabel_kota', 1),
('2017_05_18_133928_buat_tabel_destinasi', 1),
('2017_05_18_133928_buat_tabel_paket', 1),
('2017_05_18_134925_buat_tabel_jadwal', 1),
('2017_05_18_135646_buat_tabel_pilih', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket`
--

CREATE TABLE `paket` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_paket` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `jenis_kendaraan_id` int(10) UNSIGNED NOT NULL,
  `kota_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `paket`
--

INSERT INTO `paket` (`id`, `nama_paket`, `harga`, `jenis_kendaraan_id`, `kota_id`, `created_at`, `updated_at`) VALUES
(1, 'PR BPP-TRK', 450000, 2, 1, '2017-05-23 01:48:21', '2017-05-23 01:48:21'),
(2, 'VIP CGK-KL', 700000, 1, 5, '2017-05-23 01:49:01', '2017-05-23 01:49:01'),
(4, 'PR TRK-TWU', 500000, 4, 7, '2017-05-23 01:49:53', '2017-05-23 01:49:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_hp` int(10) UNSIGNED NOT NULL,
  `no_ktp` int(10) UNSIGNED NOT NULL,
  `level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `username`, `password`, `remember_token`, `no_hp`, `no_ktp`, `level`, `created_at`, `updated_at`) VALUES
(1, 'M.Rizky.Wahyudianto', 'kiwa', '1234', 'FTMNS2ENcRhC2Dl1D7j6pvAvsnmeHEuM7UA2CBShNEFfbFk6tu7z5eOkMdDW', 8121212, 89211134, '2', NULL, '2017-05-23 01:51:41'),
(2, 'Rifki Adam Maulana', 'adam', '1234', 'h99u9NSzzqdZB8xDkjVtCUhzzFM1So9Tr2EKSv6UdtejMffIsX2KRm04uSaf', 787878, 787878, '1', '2017-05-23 01:52:09', '2017-05-23 02:26:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pilih`
--

CREATE TABLE `pilih` (
  `id` int(10) UNSIGNED NOT NULL,
  `paket_id` int(10) UNSIGNED NOT NULL,
  `wisatawan_id` int(10) UNSIGNED NOT NULL,
  `jumlah_wisatawan` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wisatawan`
--

CREATE TABLE `wisatawan` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pengguna_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `wisatawan`
--

INSERT INTO `wisatawan` (`id`, `nama`, `alamat`, `pengguna_id`, `created_at`, `updated_at`) VALUES
(1, 'Adam Maulana', 'Jl. Kenangan Indah gg.damai', 2, '2017-05-23 02:26:03', '2017-05-23 02:26:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_pengguna_id_foreign` (`pengguna_id`);

--
-- Indexes for table `destinasi`
--
ALTER TABLE `destinasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destinasi_kota_id_foreign` (`kota_id`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jadwal_paket_id_foreign` (`paket_id`);

--
-- Indexes for table `jenis_kendaraan`
--
ALTER TABLE `jenis_kendaraan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paket_jenis_kendaraan_id_foreign` (`jenis_kendaraan_id`),
  ADD KEY `paket_kota_id_foreign` (`kota_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pilih`
--
ALTER TABLE `pilih`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pilih_paket_id_foreign` (`paket_id`),
  ADD KEY `pilih_wisatawan_id_foreign` (`wisatawan_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wisatawan`
--
ALTER TABLE `wisatawan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wisatawan_pengguna_id_foreign` (`pengguna_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `destinasi`
--
ALTER TABLE `destinasi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `jenis_kendaraan`
--
ALTER TABLE `jenis_kendaraan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `paket`
--
ALTER TABLE `paket`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pilih`
--
ALTER TABLE `pilih`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wisatawan`
--
ALTER TABLE `wisatawan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `destinasi`
--
ALTER TABLE `destinasi`
  ADD CONSTRAINT `destinasi_kota_id_foreign` FOREIGN KEY (`kota_id`) REFERENCES `kota` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_paket_id_foreign` FOREIGN KEY (`paket_id`) REFERENCES `paket` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `paket`
--
ALTER TABLE `paket`
  ADD CONSTRAINT `paket_jenis_kendaraan_id_foreign` FOREIGN KEY (`jenis_kendaraan_id`) REFERENCES `jenis_kendaraan` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `paket_kota_id_foreign` FOREIGN KEY (`kota_id`) REFERENCES `kota` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pilih`
--
ALTER TABLE `pilih`
  ADD CONSTRAINT `pilih_paket_id_foreign` FOREIGN KEY (`paket_id`) REFERENCES `paket` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pilih_wisatawan_id_foreign` FOREIGN KEY (`wisatawan_id`) REFERENCES `wisatawan` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `wisatawan`
--
ALTER TABLE `wisatawan`
  ADD CONSTRAINT `wisatawan_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
