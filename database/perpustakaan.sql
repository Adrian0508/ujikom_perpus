-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Mar 2024 pada 02.00
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `BukuID` int(11) NOT NULL,
  `Judul` varchar(255) DEFAULT NULL,
  `Penulis` varchar(255) DEFAULT NULL,
  `Penerbit` varchar(255) DEFAULT NULL,
  `TahunTerbit` int(11) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`BukuID`, `Judul`, `Penulis`, `Penerbit`, `TahunTerbit`, `gambar`) VALUES
(36, 'Bahasa Indonesia X', 'Prof. Dr. Suherli, M.Pd. / Dr. Maman Suryaman, M.Pd. / Aji Septiaji / Istiqomah, S.Pd., M.Pd.', 'Buku Sekolah Elektronik (BSE)', 2017, '../upload_foto/20240301043213_indonesia.jpeg'),
(37, 'Bahasa Indonesia XI', 'Prof. Dr. Suherli, M.Pd. / Dr. Maman Suryaman, M.Pd. / Aji Septiaji / Istiqomah, S.Pd., M.Pd.', 'Buku Sekolah Elektronik (BSE)', 2016, '../upload_foto/20240301043327_indonesia1.jpg'),
(38, 'Bahasa Indonesia XII', 'Prof. Dr. Suherli, M.Pd. / Dr. Maman Suryaman, M.Pd. / Aji Septiaji / Istiqomah, S.Pd., M.Pd.', 'Buku Sekolah Elektronik (BSE)', 2018, '../upload_foto/20240301043432_indonesia2.jpg'),
(39, 'Bahasa Inggris X', 'Utami Widiati, Prof, M.A, Ph.D / Zuliati Rohmah, Prof, Dr, M.Pd / Furaidah, Dr, M.A', 'Buku Sekolah Elektronik (BSE)', 2016, '../upload_foto/20240301043724_inggris.jpeg'),
(40, 'Bahasa Inggris XI', 'Zuliati Rohmah, Prof, Dr, M.Pd / Furaidah, Dr, M.A / Utami Widiati, Prof, M.A, Ph.D', 'Buku Sekolah Elektronik (BSE)', 2014, '../upload_foto/20240301043841_inggris1.jpg'),
(41, 'Bahasa Inggris XII', 'Utami Widiati, Prof, M.A, Ph.D / Zuliati Rohmah, Prof, Dr, M.Pd / Furaidah, Dr, M.A', 'Buku Sekolah Elektronik (BSE)', 2018, '../upload_foto/20240301043942_inggris2.jpg'),
(42, 'Matematika X', 'Abdur Rahman As ari, Dr, H, M.Pd, M.A / Dahliatul Hasanah / Ipung Yuwono / Latifah Mustofa L', 'Buku Sekolah Elektronik (BSE)', 2017, '../upload_foto/20240301044218_matematika.png'),
(43, 'Matematika XI', 'Abdur Rahman As ari, Dr, H, M.Pd, M.A / Dahliatul Hasanah / Ipung Yuwono / Latifah Mustofa L', 'Buku Sekolah Elektronik (BSE)', 2017, '../upload_foto/20240301044452_matematika1.jpeg'),
(44, 'Matematika XII', 'Abdur Rahman As ari, Dr, H, M.Pd, M.A / Dahliatul Hasanah / Ipung Yuwono / Latifah Mustofa L', 'Buku Sekolah Elektronik (BSE)', 2018, '../upload_foto/20240301044723_matematika2.jpg'),
(45, 'Pelajaran Agama Islam X', 'Endi Suhendi Zen, MA  Nelty Khairiyah, Dra, Hj, M.Ag', 'Buku Sekolah Elektronik (BSE)', 2016, '../upload_foto/20240301045205_pai.jpg'),
(46, 'Pelajaran Agama Islam XI', 'Mustahdi / Mustakim', 'Penerbit: Buku Sekolah Elektronik (BSE)', 2017, '../upload_foto/20240301045330_pai1.jpg'),
(47, 'Pelajaran Agama Islam XII', 'HA. Sholeh Dimyathi', 'Buku Sekolah Elektronik (BSE)', 2018, '../upload_foto/20240301045452_pai2.png'),
(48, 'Laut Bercerita', 'Leila Salikha Chudori', 'Gramedia Pustaka Utama', 2017, '../upload_foto/20240301051646_laut.png'),
(49, 'Pulang', 'Leila Salikha Chudori', 'Kepustakaan Populer Gramedia', 2013, '../upload_foto/20240301051819_pulang.png'),
(50, 'Max Havelaar', 'Eduard Douwes Dekker', 'Qanita', 1860, '../upload_foto/20240301052136_multatuli.png'),
(51, 'Amba', 'Laksmi Pamuntjak', 'Gramedia Pustaka Utama', 2020, '../upload_foto/20240301052340_amba.png'),
(52, 'Ronggeng Dukuh Paruk', 'Ahmad Tohari', 'Gramedia Pustaka Utama', 1982, '../upload_foto/20240301052523_ronggeng.png'),
(53, 'Gadis Kretek', 'Ratih Kumala', 'Gramedia Pustaka Utama', 2012, '../upload_foto/20240301052639_gadis.png'),
(54, 'Sang Keris', 'Panji Sukma', 'Gramedia Pustaka Utama', 2020, '../upload_foto/20240301053049_keris.png'),
(55, 'Tanah Surga Merah', 'Arafat Nur', 'Gramedia Pustaka Utama', 2017, '../upload_foto/20240301053133_tanah.png'),
(56, 'Attack on Titan', 'Hajime Isayama', 'Kodansha', 2009, '../upload_foto/20240301070537_aot.jpg'),
(57, 'Detektif Conan 100', 'Gosho Aoyama', 'Elex Media Komputindo', 2022, '../upload_foto/20240301070901_Conan.jpg'),
(58, 'Tokyo Revengers', 'Ken Wakui', 'Kodansha', 2017, '../upload_foto/20240301071010_Tokyo_Revengers.jpg'),
(59, 'Demon Slayer', 'Koyoharu Gotōge', 'Shueisha', 2016, '../upload_foto/20240301071101_ds.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoribuku`
--

CREATE TABLE `kategoribuku` (
  `KategoriID` int(11) NOT NULL,
  `NamaKategori` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategoribuku`
--

INSERT INTO `kategoribuku` (`KategoriID`, `NamaKategori`) VALUES
(1, 'Pendidikan'),
(2, 'Komik'),
(3, 'Novel');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoribuku_relasi`
--

CREATE TABLE `kategoribuku_relasi` (
  `KategoriBukuID` int(11) NOT NULL,
  `BukuID` int(11) DEFAULT NULL,
  `KategoriID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategoribuku_relasi`
--

INSERT INTO `kategoribuku_relasi` (`KategoriBukuID`, `BukuID`, `KategoriID`) VALUES
(40, 36, 1),
(41, 37, 1),
(42, 38, 1),
(43, 39, 1),
(44, 40, 1),
(45, 41, 1),
(46, 42, 1),
(47, 43, 1),
(48, 44, 1),
(49, 45, 1),
(50, 46, 1),
(51, 47, 1),
(52, 48, 3),
(53, 49, 3),
(54, 50, 3),
(55, 51, 3),
(56, 52, 3),
(57, 53, 3),
(58, 54, 3),
(59, 55, 3),
(60, 56, 2),
(61, 57, 2),
(62, 58, 2),
(63, 59, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `koleksipribadi`
--

CREATE TABLE `koleksipribadi` (
  `KoleksiID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `BukuID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `PeminjamanID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `BukuID` int(11) DEFAULT NULL,
  `TanggalPeminjaman` date DEFAULT NULL,
  `TanggalPengembalian` date DEFAULT NULL,
  `StatusPeminjaman` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`PeminjamanID`, `UserID`, `BukuID`, `TanggalPeminjaman`, `TanggalPengembalian`, `StatusPeminjaman`) VALUES
(19, 11, 36, '2024-03-01', '2024-03-04', 'Dikembalikan'),
(20, 11, 36, '2024-03-05', '2024-03-07', 'Dikembalikan'),
(21, 11, 36, '2024-03-05', '2024-03-06', 'Dipinjam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ulasanbuku`
--

CREATE TABLE `ulasanbuku` (
  `UlasanID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `BukuID` int(11) DEFAULT NULL,
  `Ulasan` text,
  `Rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ulasanbuku`
--

INSERT INTO `ulasanbuku` (`UlasanID`, `UserID`, `BukuID`, `Ulasan`, `Rating`) VALUES
(1, 11, 36, 'Sangat Bagus !!', 4),
(2, 7, 37, 'tidak bisa baca', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `NamaLengkap` varchar(255) DEFAULT NULL,
  `alamat` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`userID`, `Username`, `Password`, `Email`, `NamaLengkap`, `alamat`) VALUES
(6, 'petugas', '12345678', 'petugas@gmail.com', 'Petugas Perpustakaan', 'Indonesia'),
(7, 'admin', '12345678', 'admin@gmail.com', 'Administrator', 'Indonesia'),
(11, 'user', 'user', 'user@gmail.com', 'Peminjam', 'Cibulan'),
(12, 'user1', 'user1', 'user1@gmail.com', 'Driannn', 'Jakarta');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`BukuID`);

--
-- Indeks untuk tabel `kategoribuku`
--
ALTER TABLE `kategoribuku`
  ADD PRIMARY KEY (`KategoriID`);

--
-- Indeks untuk tabel `kategoribuku_relasi`
--
ALTER TABLE `kategoribuku_relasi`
  ADD PRIMARY KEY (`KategoriBukuID`),
  ADD KEY `BukuID` (`BukuID`),
  ADD KEY `KategoriID` (`KategoriID`);

--
-- Indeks untuk tabel `koleksipribadi`
--
ALTER TABLE `koleksipribadi`
  ADD PRIMARY KEY (`KoleksiID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `BukuID` (`BukuID`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`PeminjamanID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `BukuID` (`BukuID`);

--
-- Indeks untuk tabel `ulasanbuku`
--
ALTER TABLE `ulasanbuku`
  ADD PRIMARY KEY (`UlasanID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `BukuID` (`BukuID`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `BukuID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT untuk tabel `kategoribuku`
--
ALTER TABLE `kategoribuku`
  MODIFY `KategoriID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kategoribuku_relasi`
--
ALTER TABLE `kategoribuku_relasi`
  MODIFY `KategoriBukuID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT untuk tabel `koleksipribadi`
--
ALTER TABLE `koleksipribadi`
  MODIFY `KoleksiID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `PeminjamanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `ulasanbuku`
--
ALTER TABLE `ulasanbuku`
  MODIFY `UlasanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kategoribuku_relasi`
--
ALTER TABLE `kategoribuku_relasi`
  ADD CONSTRAINT `kategoribuku_relasi_ibfk_1` FOREIGN KEY (`BukuID`) REFERENCES `buku` (`BukuID`),
  ADD CONSTRAINT `kategoribuku_relasi_ibfk_2` FOREIGN KEY (`KategoriID`) REFERENCES `kategoribuku` (`KategoriID`);

--
-- Ketidakleluasaan untuk tabel `koleksipribadi`
--
ALTER TABLE `koleksipribadi`
  ADD CONSTRAINT `koleksipribadi_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`userID`),
  ADD CONSTRAINT `koleksipribadi_ibfk_2` FOREIGN KEY (`BukuID`) REFERENCES `buku` (`BukuID`);

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`userID`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`BukuID`) REFERENCES `buku` (`BukuID`);

--
-- Ketidakleluasaan untuk tabel `ulasanbuku`
--
ALTER TABLE `ulasanbuku`
  ADD CONSTRAINT `ulasanbuku_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`userID`),
  ADD CONSTRAINT `ulasanbuku_ibfk_2` FOREIGN KEY (`BukuID`) REFERENCES `buku` (`BukuID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
