-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 22, 2019 at 06:20 PM
-- Server version: 5.7.28-0ubuntu0.18.04.4
-- PHP Version: 7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fishmart`
--

-- --------------------------------------------------------

--
-- Table structure for table `chart`
--

CREATE TABLE `chart` (
  `id_chart` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `total` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `jenis_produk` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `stok` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `tgl_post` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `username`, `nama_produk`, `jenis_produk`, `harga`, `stok`, `img`, `tgl_post`) VALUES
(1, 'indhi', 'iid', 'asdas', '32434', '23', '38598.jpg', '2019-12-19 13:47:48'),
(2, 'joni', 'Ikan Teri', 'Laut', '90000', '9', '38598.jpg', '2019-12-19 14:48:34'),
(3, 'asdas', 'asda', 'asda', '123123', '12312', '38598.jpg', '2019-12-19 15:13:59'),
(4, 'l;asdald', 'asldks', 'kasjdl', '098098', '98', '38598.jpg', '2019-12-19 15:16:25'),
(5, 'indhifarhandika', 'kjkjhkh', 'kjhkjh', '9098', '0980', '6618510-38598.jpg', '2019-12-19 15:39:44'),
(6, 'indhifarhandika', 'asdas', 'iiuh', '0908', '9099', '1826695-38598.jpg', '2019-12-19 15:43:19');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `tgl_transaksi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ulasan`
--

CREATE TABLE `ulasan` (
  `id_ulasan` int(11) NOT NULL,
  `komentar` varchar(255) NOT NULL,
  `nilai` int(11) NOT NULL,
  `tgl_post` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` int(255) NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `no_hp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `role`, `nama`, `alamat`, `no_hp`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'indhifarhandika', 2, '', '', '', '7hhUrAoG0NQDVGpYrB_lnP9K_UT-8ilT', '$2y$13$vPpT9oXmfpmKlRSqLc3Lfu8l2de4nxIwhI2n4wDUA9jjMC99qITd2', NULL, 'indhi@gmail.com', 10, 1576075453, 1576075453),
(2, 'indhi', 1, '', '', '', 'xlIHP2JOvq6E5eJbaFjk9fDgWFP0Mfld', '$2y$13$AV9UcYPwwQQCw1lnMR6XM.WLsY8647NxOXcxSCrAQMbrqHtJXKpKK', NULL, 'indi@gmail.com', 10, 1576417926, 1576417926),
(3, 'indhifr', 0, '', '', '', '89uFZ-ISfy1GN7UoxQaP_uhLJ36zinCM', '$2y$13$8z0dklHlcJeQ2i5RWK3VyOHuRZN5h1tFFJ0Sr5/IMRGei.iR5t8GW', NULL, 'ind@gamil.com', 10, 1576417968, 1576417968),
(4, 'indhirr', 1, '', '', '', 'aaVAk4j7KHMeJWuZiZR873YEHMmBCziA', '$2y$13$5pACes2WkT8rZidGVf3afe.dR5GoTAAeF9SfZugGrYyKt/ZhjaUj6', NULL, 'indh22i@gmail.com', 10, 1576420601, 1576420601),
(5, 'uhuy', 0, 'indhi test', 'akjdaksdkjashdkj', '9812938123', 'sBoJvMeGwtXGz3Defh1Oa5_Gj0YF1cuq', '$2y$13$gftDgD30lNqLDATkRTs29.IM49xNbkJ68Q5MIvVXPfgg7XnQkNZXW', NULL, 'uhuy@gmail.com', 10, 1576590473, 1576590473);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chart`
--
ALTER TABLE `chart`
  ADD PRIMARY KEY (`id_chart`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `ulasan`
--
ALTER TABLE `ulasan`
  ADD PRIMARY KEY (`id_ulasan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chart`
--
ALTER TABLE `chart`
  MODIFY `id_chart` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ulasan`
--
ALTER TABLE `ulasan`
  MODIFY `id_ulasan` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
