-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Sep 2019 pada 05.39
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.2.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phicos`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `biodata`
--

CREATE TABLE `biodata` (
  `id_biodata` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `ttl` varchar(50) NOT NULL,
  `agama` enum('islam','kristen','katolik','hindu','buddha','lain-lain') NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `id_divisi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `biodata`
--

INSERT INTO `biodata` (`id_biodata`, `id_user`, `jenis_kelamin`, `ttl`, `agama`, `no_telp`, `alamat`, `id_divisi`) VALUES
(3, 1, 'P', 'Boyolali, 29 desember 1998', 'hindu', '+628529366828', 'Jebolan,Boyolali', 2),
(4, 2, 'L', 'Boyolali, 12 Januari 1998', 'islam', '081223465780', 'Bekasi,Jakarta timur', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `divisi`
--

CREATE TABLE `divisi` (
  `id_divisi` int(11) NOT NULL,
  `nama_divisi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `divisi`
--

INSERT INTO `divisi` (`id_divisi`, `nama_divisi`) VALUES
(1, 'Multimedia'),
(2, 'Programmer'),
(3, 'Software'),
(4, 'Android');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Uncategorized'),
(2, 'Berita'),
(3, 'Blog'),
(4, 'Tips & Tricks');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_anchor` varchar(128) NOT NULL,
  `menu_url` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_anchor`, `menu_url`) VALUES
(2, 'About', 'http://localhost/phicos/page/11/about'),
(3, 'Contact', 'http://localhost/phicos/page/12/contact');

-- --------------------------------------------------------

--
-- Struktur dari tabel `portofolio`
--

CREATE TABLE `portofolio` (
  `id_portofolio` int(11) NOT NULL,
  `nama_projek` varchar(50) NOT NULL,
  `deskripsi_projek` text NOT NULL,
  `link` varchar(50) NOT NULL,
  `gambar_projek` varchar(50) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `portofolio`
--

INSERT INTO `portofolio` (`id_portofolio`, `nama_projek`, `deskripsi_projek`, `link`, `gambar_projek`, `id_user`) VALUES
(3, 'SI terbaru 2', 'adlah ci terbaru 2', 'asdasss', 'portofolio-3.jpg', 2),
(4, 'SI terbaru 2', 'adlah ci terbaru 2', 'https://www.petanikode.com/jquery-data-tables/', 'portofolio-3.jpg', 1),
(5, 'SI kuliah', 'si tentang matkul', 'asdas', 'portofolio-5.jpg', 2),
(9, 'Soso', 'soso is soso', 'jika ada', 'portofolio-9.jpg', 2),
(10, 'try', 'try', 'try', 'default.png', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `post`
--

CREATE TABLE `post` (
  `id_post` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `tanggal_terbit` varchar(10) NOT NULL,
  `type` enum('post','page','berita') NOT NULL,
  `konten` text NOT NULL,
  `ringkasan` text NOT NULL,
  `status` enum('terbit','draft') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `post`
--

INSERT INTO `post` (`id_post`, `id_user`, `judul`, `tanggal_terbit`, `type`, `konten`, `ringkasan`, `status`) VALUES
(1, 1, 'Cara Setup Codeigniter', '2019-08-13', 'post', '<p><img style=\"border-style: solid;\" src=\"http://localhost:81/phicos/admin/images/post-image-1565667865004.png\" alt=\"\" width=\"672\" height=\"355\" /></p>\r\n<p><strong># Pengertian Codeigniter</strong></p>\r\n<p style=\"text-align: left;\">&nbsp; &nbsp; <strong>Codeigniter</strong>&nbsp;adalah sebuah framework php yang bersifat open source dan menggunakan metode MVC (Model, View, Controller). codeigniter bersifat free alias tidak berbayar jika anda menggunakannya.&nbsp;framework codeigniter di buat dengan tujuan sama seperti framework lainnya yaitu untuk memudahkan developer atau programmer dalam membangun sebuah aplikasi berbasis web tanpa harus membuat nya dari awal.</p>\r\n<p style=\"text-align: left;\"><strong># Install Codeigniter&nbsp;</strong></p>\r\n<p style=\"text-align: left;\"><strong>1.</strong>&nbsp;Untuk menggunakan codeigniter terlebih dahulu download di situs resminya, <a title=\"download codeigniter\" href=\"https://www.codeigniter.com/download\">https://www.codeigniter.com/download</a>&nbsp;</p>\r\n<p style=\"text-align: left;\"><strong>2.&nbsp;</strong>Setelah selesai di download,silahkan extract di direktori xampp dan rename sesuai project&nbsp; &nbsp; &nbsp; &nbsp; yang ingin dibuat.</p>\r\n<p style=\"text-align: left;\"><strong>3.&nbsp;</strong>Coba di browser dengan mengetikkan localhost/nama_direktorinya</p>\r\n<p style=\"text-align: left;\"><strong>4.</strong> Selesai.</p>\r\n<p style=\"text-align: left;\">&nbsp;</p>', 'Codeigniter adalah sebuah framework php yang bersifat open source dan menggunakan metode MVC (Model, View, Controller).', 'terbit'),
(2, 1, 'Installasi Wordpress di localhost', '2019-08-13', 'post', '<h2><span id=\"Cara_Install_WordPress_di_Localhost_XAMPP\"><strong>Cara Install WordPress di Localhost XAMPP</strong></span></h2>\r\n<p>XAMPP berguna untuk menjalankan script PHP pada localhost atau komputer tanpa harus ada koneksi internet. Dengan install WordPress di XAMPP, Anda bisa melakukan pengetesan sebuah website secara offline, tanpa perlu khawatir script dirusak oleh orang lain.&nbsp;</p>\r\n<p>Beberapa langkah install WordPress di Localhost menggunakan XAMPP yaitu:</p>\r\n<ul>\r\n<li><strong>Buat Database MySQL,</strong></li>\r\n<li><strong>Mengunduh WordPress,</strong></li>\r\n<li><strong>Melakukan Instalasi WordPress.</strong></li>\r\n</ul>\r\n<p>Agar lebih jelas, berikut ini pembahasan dari langkah install WordPress di Localhost menggunakan XAMPP.</p>\r\n<h3><span id=\"1_Langkah_1_Buat_Database\">1.&nbsp;<strong>Langkah 1: Buat Database</strong></span></h3>\r\n<p>Sebelum melakukan instalasi WordPress, Anda perlu membuat database MySQL terlebih dahulu. Untuk memulainya silakan akses link berikut&nbsp;<em>http://localhost/phpmyadmin</em>.</p>\r\n<p>Silakan klik pada tab&nbsp;<strong>Databases</strong>, kemudian masukan nama database pada bagian kolom&nbsp;<strong>Create database</strong>. Pada tutorial ini kami membuat database dengan nama&nbsp;<strong>WP</strong>.&nbsp;Setelah itu silakan tekan tombol&nbsp;<strong>Create</strong>.</p>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter\"><img class=\"wp-image-3701 lazyloaded\" src=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/install-wordpress.png\" sizes=\"(max-width: 535px) 100vw, 535px\" srcset=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/install-wordpress.png 535w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/install-wordpress-300x127.png 300w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/install-wordpress-500x212.png 500w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/install-wordpress-400x170.png 400w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/install-wordpress-200x85.png 200w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/install-wordpress-50x21.png 50w\" alt=\"install wordpress\" data-srcset=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/install-wordpress.png 535w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/install-wordpress-300x127.png 300w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/install-wordpress-500x212.png 500w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/install-wordpress-400x170.png 400w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/install-wordpress-200x85.png 200w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/install-wordpress-50x21.png 50w\" data-src=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/install-wordpress.png\" /></figure>\r\n</div>\r\n<h3><span id=\"2_Langkah_2_Unduh_dan_Kelola_Detail_DatabaseWordPress\">2.&nbsp;<strong>Langkah 2: Unduh dan Kelola Detail Database&nbsp;WordPress</strong></span></h3>\r\n<p>Unduh file instalasi WordPess terlebih dahulu melalui link&nbsp;<a href=\"https://wordpress.org/download/\" target=\"_blank\" rel=\"noreferrer noopener nofollow\"><strong>berikut ini</strong></a>.</p>\r\n<p>Kemudian salin file&nbsp;instalasi WordPress ke dalam folder htdocs,&nbsp;<em>C:\\xampp\\htdocs</em>.</p>\r\n<p>Supaya dapat install WordPress di Localhost XAMPP, Anda perlu melakukan ekstraksi file menggunakan WinRAR.</p>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter\"><img class=\"wp-image-3703 lazyloaded\" src=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/extract-wordpress.png\" sizes=\"(max-width: 275px) 100vw, 275px\" srcset=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/extract-wordpress.png 275w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/extract-wordpress-200x131.png 200w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/extract-wordpress-50x33.png 50w\" alt=\"extract wordpress\" data-srcset=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/extract-wordpress.png 275w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/extract-wordpress-200x131.png 200w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/extract-wordpress-50x33.png 50w\" data-src=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/extract-wordpress.png\" /></figure>\r\n</div>\r\n<p>Kemudian rename folder WordPress sesuai keinginan. Pada tutorial ini kami mengubahnya menjadi WP.&nbsp;</p>\r\n<p>Silakan buka folder WP, kemudian pilih file&nbsp;<em>wp-config-sample.php</em>&nbsp;dan ganti namanya menjadi&nbsp;<em>wp-config.php</em>.</p>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter\"><img class=\"wp-image-3704 lazyloaded\" src=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/rename.png\" sizes=\"(max-width: 401px) 100vw, 401px\" srcset=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/rename.png 401w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/rename-300x115.png 300w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/rename-400x154.png 400w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/rename-200x77.png 200w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/rename-50x19.png 50w\" alt=\"cara install wordpress \" data-srcset=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/rename.png 401w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/rename-300x115.png 300w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/rename-400x154.png 400w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/rename-200x77.png 200w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/rename-50x19.png 50w\" data-src=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/rename.png\" /></figure>\r\n</div>\r\n<p>Buka file tersebut, kemudian scroll sampai menemukan code detail database seperti di bawah ini.</p>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter\"><img class=\"wp-image-3705 lazyloaded\" src=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/detail-database.png\" sizes=\"(max-width: 685px) 100vw, 685px\" srcset=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/detail-database.png 685w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/detail-database-300x120.png 300w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/detail-database-680x273.png 680w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/detail-database-500x201.png 500w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/detail-database-400x161.png 400w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/detail-database-200x80.png 200w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/detail-database-50x20.png 50w\" alt=\"detail database\" data-srcset=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/detail-database.png 685w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/detail-database-300x120.png 300w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/detail-database-680x273.png 680w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/detail-database-500x201.png 500w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/detail-database-400x161.png 400w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/detail-database-200x80.png 200w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/detail-database-50x20.png 50w\" data-src=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/detail-database.png\" /></figure>\r\n</div>\r\n<p>Silakan ubah beberapa baris kode tersebut sesuai dengan detail database yang sebelumnya dibuat.</p>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter\"><img class=\"wp-image-3706 lazyloaded\" src=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/setingan-database.png\" sizes=\"(max-width: 645px) 100vw, 645px\" srcset=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/setingan-database.png 645w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/setingan-database-300x125.png 300w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/setingan-database-500x208.png 500w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/setingan-database-400x166.png 400w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/setingan-database-200x83.png 200w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/setingan-database-50x21.png 50w\" alt=\"setingan database\" data-srcset=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/setingan-database.png 645w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/setingan-database-300x125.png 300w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/setingan-database-500x208.png 500w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/setingan-database-400x166.png 400w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/setingan-database-200x83.png 200w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/setingan-database-50x21.png 50w\" data-src=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/setingan-database.png\" /></figure>\r\n</div>\r\n<ul>\r\n<li>Ganti &ldquo;<em>database_name_here</em>&rdquo; dengan nama dari database Anda, pada contoh ini adalah WP</li>\r\n<li>Ganti &ldquo;<em>username_here</em>&rdquo; dengan &ldquo;root&rdquo; dan untuk &ldquo;<em>password_here</em>&rdquo; silakan untuk dikosongkan.</li>\r\n<li>Silakan save file tersebut.</li>\r\n</ul>\r\n<h3><span id=\"3_Langkah_3_Lakukan_Instalasi_WordPress\">3.&nbsp;<strong>Langkah 3: Lakukan Instalasi WordPress</strong></span></h3>\r\n<p>Pada langkah ini Anda sudah dapat melakukan instalasi WordPress. Silakan buka browser Anda kemudian ketikkan URL berikut&nbsp;<em>http://localhost/wp/</em>.</p>\r\n<p>Akan terlihat tampilan seperti gambar di bawah ini.&nbsp;Silakan pilih bahasa yang Anda inginkan. Setelah selesai memilih bahasa, tekan tombol&nbsp;<strong>Continue</strong>.</p>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter\"><img class=\"wp-image-3707 lazyloaded\" src=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/instalasi-wordpress.png\" sizes=\"(max-width: 615px) 100vw, 615px\" srcset=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/instalasi-wordpress.png 615w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/instalasi-wordpress-300x200.png 300w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/instalasi-wordpress-500x334.png 500w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/instalasi-wordpress-400x267.png 400w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/instalasi-wordpress-200x134.png 200w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/instalasi-wordpress-50x33.png 50w\" alt=\"Cara Install WordPress\" data-srcset=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/instalasi-wordpress.png 615w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/instalasi-wordpress-300x200.png 300w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/instalasi-wordpress-500x334.png 500w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/instalasi-wordpress-400x267.png 400w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/instalasi-wordpress-200x134.png 200w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/instalasi-wordpress-50x33.png 50w\" data-src=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/instalasi-wordpress.png\" /></figure>\r\n</div>\r\n<p>Pada langkah selanjutnya, silakan masukkan detail&nbsp;berikut ini.</p>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter\"><img class=\"wp-image-3708 lazyloaded\" src=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/cara-install-wordpress.png\" sizes=\"(max-width: 772px) 100vw, 772px\" srcset=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/cara-install-wordpress.png 772w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/cara-install-wordpress-300x213.png 300w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/cara-install-wordpress-768x546.png 768w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/cara-install-wordpress-680x484.png 680w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/cara-install-wordpress-500x356.png 500w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/cara-install-wordpress-400x284.png 400w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/cara-install-wordpress-200x142.png 200w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/cara-install-wordpress-50x36.png 50w\" alt=\"cara install wordpress \" data-srcset=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/cara-install-wordpress.png 772w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/cara-install-wordpress-300x213.png 300w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/cara-install-wordpress-768x546.png 768w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/cara-install-wordpress-680x484.png 680w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/cara-install-wordpress-500x356.png 500w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/cara-install-wordpress-400x284.png 400w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/cara-install-wordpress-200x142.png 200w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/cara-install-wordpress-50x36.png 50w\" data-src=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/cara-install-wordpress.png\" /></figure>\r\n</div>\r\n<ul>\r\n<li>Database Name: diisi dengan nama database, pada tutorial ini diisi dengan&nbsp;<strong>WP</strong>.</li>\r\n<li>Username: diisi dengan&nbsp;<strong>root</strong>.</li>\r\n<li>Password: dikosongkan.</li>\r\n<li>Kemudian klik tombol&nbsp;<strong>Submit.</strong></li>\r\n</ul>\r\n<p>Silakan klik tombol&nbsp;<strong>Run the install</strong>, seperti yang terlihat pada gambar di bawah ini.</p>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter\"><img class=\"wp-image-3710 lazyloaded\" src=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/cara-instalasi-wordpress.png\" sizes=\"(max-width: 783px) 100vw, 783px\" srcset=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/cara-instalasi-wordpress.png 783w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/cara-instalasi-wordpress-300x110.png 300w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/cara-instalasi-wordpress-768x281.png 768w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/cara-instalasi-wordpress-680x248.png 680w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/cara-instalasi-wordpress-500x183.png 500w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/cara-instalasi-wordpress-400x146.png 400w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/cara-instalasi-wordpress-200x73.png 200w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/cara-instalasi-wordpress-50x18.png 50w\" alt=\"cara install wordpress \" data-srcset=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/cara-instalasi-wordpress.png 783w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/cara-instalasi-wordpress-300x110.png 300w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/cara-instalasi-wordpress-768x281.png 768w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/cara-instalasi-wordpress-680x248.png 680w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/cara-instalasi-wordpress-500x183.png 500w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/cara-instalasi-wordpress-400x146.png 400w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/cara-instalasi-wordpress-200x73.png 200w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/cara-instalasi-wordpress-50x18.png 50w\" data-src=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/cara-instalasi-wordpress.png\" /></figure>\r\n</div>\r\n<p>Silakan masukkan detail mengenai web WordPress Anda, kemudian klik tombol&nbsp;<strong>Submit</strong>.</p>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter\"><img class=\"wp-image-3711 lazyloaded\" src=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/instal-wordpress-di-localhost.png\" sizes=\"(max-width: 722px) 100vw, 722px\" srcset=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/instal-wordpress-di-localhost.png 722w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/instal-wordpress-di-localhost-300x268.png 300w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/instal-wordpress-di-localhost-680x607.png 680w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/instal-wordpress-di-localhost-500x446.png 500w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/instal-wordpress-di-localhost-400x357.png 400w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/instal-wordpress-di-localhost-200x178.png 200w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/instal-wordpress-di-localhost-50x45.png 50w\" alt=\"cara install wordpress \" data-srcset=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/instal-wordpress-di-localhost.png 722w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/instal-wordpress-di-localhost-300x268.png 300w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/instal-wordpress-di-localhost-680x607.png 680w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/instal-wordpress-di-localhost-500x446.png 500w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/instal-wordpress-di-localhost-400x357.png 400w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/instal-wordpress-di-localhost-200x178.png 200w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/instal-wordpress-di-localhost-50x45.png 50w\" data-src=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/instal-wordpress-di-localhost.png\" /></figure>\r\n</div>\r\n<ul>\r\n<li>Site Title: Judul&nbsp;utama dari website Anda</li>\r\n<li>Username:&nbsp;username yang akan digunakan untuk login ke dashboard&nbsp;WordPress</li>\r\n<li>Password: password yang akan digunakan untuk login ke dashboard WordPress</li>\r\n<li>Email: alamat email aktif Anda.</li>\r\n</ul>\r\n<p>Jika proses instalasi sudah berhasil, Anda akan melihat tampilan seperti gambar di bawah ini.&nbsp;Anda dapat login ke dashboard WordPress dengan cara klik tombol&nbsp;<strong>Login</strong>&nbsp;dan masukkan&nbsp;username dan password yang dibuat sebelumnya.</p>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter\"><img class=\"wp-image-3712 lazyloaded\" src=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/login-blog.png\" sizes=\"(max-width: 720px) 100vw, 720px\" srcset=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/login-blog.png 720w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/login-blog-300x171.png 300w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/login-blog-680x388.png 680w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/login-blog-500x285.png 500w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/login-blog-400x228.png 400w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/login-blog-200x114.png 200w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/login-blog-50x29.png 50w\" alt=\"cara install wordpress \" data-srcset=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/login-blog.png 720w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/login-blog-300x171.png 300w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/login-blog-680x388.png 680w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/login-blog-500x285.png 500w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/login-blog-400x228.png 400w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/login-blog-200x114.png 200w, https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/login-blog-50x29.png 50w\" data-src=\"https://www.niagahoster.co.id/blog/wp-content/uploads/2017/05/login-blog.png\" /></figure>\r\n</div>\r\n<p>Pada langkah ini, proses instalasi telah selesai.</p>\r\n<p><strong>Sumber :&nbsp;</strong><a href=\"https://www.niagahoster.co.id/blog/cara-install-wordpress/\">https://www.niagahoster.co.id/blog/cara-install-wordpress/</a></p>', 'XAMPP berguna untuk menjalankan script PHP pada localhost atau komputer tanpa harus ada koneksi internet. Dengan install WordPress di XAMPP, Anda bisa melakukan pengetesan sebuah website secara offline, tanpa perlu khawatir script dirusak oleh orang lain.', 'terbit'),
(3, 1, 'Kemenhub Bangun Kolam Air Pengujian Mobil Listrik ', '2019-08-13', 'post', '<p><img src=\"http://localhost:81/phicos/admin/images/post-image-1565670330962.jpg\" alt=\"\" width=\"650\" height=\"366\" /></p>\r\n<p>Jakarta, CNN Indonesia -- Guna mewujudkan mimpi membangun industri otomotif kendaraan ramah lingkungan, Kementerian Perhubungan (<strong><a href=\"https://www.cnnindonesia.com/tag/kemenhub\" target=\"_blank\" rel=\"noopener\">Kemenhub</a></strong>) mengklaim baru akan membangun fasilitas dan pengadaan alat uji tipe khusus&nbsp;<strong><a href=\"https://www.cnnindonesia.com/tag/mobil-listrik\" target=\"_blank\" rel=\"noopener\">kendaraan listrik</a></strong>pada tahun depan.<br /><br />Kepala Balai Pengujian Laik Jalan dan Sertifikasi Kendaraan Bermotor (BPLJSKB) Caroline Noorida Aryani mengatakan fasilitas uji coba bakal digunakan pemerintah untuk menguji keandalan mobil listrik,&nbsp;<em>hybrid</em>&nbsp;dan&nbsp;<em>plug-in hybrid</em>&nbsp;serta hidrogen dari berbagai aspek sebelum dipasarkan ke konsumen.<br /><br />\"Fasilitas uji kendaraan listrik akan mulai dibangun 2020 melalui KPBU (Kerja sama Pemerintah Badan Usaha),\" kata Caroline melalui pesan singkat kepada&nbsp;<em>CNNIndonesia.com</em>, Senin (12/8).<br /><br /></p>\r\n<p>Caroline menyampaikan pihaknya akan membangun berbagai lintasan pengujian dalam rangka mengetes keandalan kendaraan listrik sebelum dijual di Tanah Air. Lintasan yang dibangun berupa tanjakan dan lintasan dengan genangan air.<br /><br />\"Ada lintasan untuk tanjakan dan berair nanti,\" ucap Caroline.<br /><br />Ia menjelaskan lokasi uji tipe kendaraan listrik akan memanfaatkan lahan di Bekasi, Jawa Barat yang telah memenuhi standar global.<br /><br /></p>\r\n<p>Caroline bilang untuk membangun fasilitas ini pemerintah bakal menggandeng perusahaan swasta dalam negeri, Badan Usaha Milik Negara (BUMN), dan perusahaan asing. Menurut dia sudah ada 22 perusahaan yang berminat untuk proyek ini.<br /><br />\"Sudah ada 22 perusahaan yang menyampaikan LoI (<em>Letter of Interest</em>/ surat minat) dari dalam dan luar negeri. Ada dari Jepang, Korea, Spanyol dan Indonesia. Saya tidak hapal satu per satu,\" ucap dia.<br /><br />Caroline menambahkan paling cepat lelang antara perusahaan tersebut bakal berlangsung pada akhir September 2019, sementara peletakan batu pertama ditargetkan dilakukan pada kuartal kedua tahun depan atau April.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Sumber :&nbsp;</strong><a href=\"https://www.cnnindonesia.com/teknologi/20190812181625-384-420659/kemenhub-bangun-kolam-air-pengujian-mobil-listrik-tahun-depan\">https://www.cnnindonesia.com/teknologi/20190812181625-384-420659/kemenhub-bangun-kolam-air-pengujian-mobil-listrik-tahun-depan</a></p>', 'Jakarta, CNN Indonesia -- Guna mewujudkan mimpi membangun industri otomotif kendaraan ramah lingkungan, Kementerian Perhubungan (Kemenhub) mengklaim baru akan membangun fasilitas dan pengadaan alat uji tipe khusus kendaraan listrikpada tahun depan.\r\n', 'terbit'),
(4, 1, '6 IDE Terbaik Untuk Bahasa Pemograman PHP', '2019-08-13', 'post', '<div class=\"mb-5 pb-3\"><img class=\"full-width\" src=\"https://static.cdn-cdpl.com/700x350/1907/0XiKEQr.png\" alt=\"6 IDE Terbaik Untuk Bahasa Pemograman PHP - CodePolitan.com\" /></div>\r\n<p>PHP merupakan bahasa pemrograman yang cukup populer di kalangan pengembang web. Ia banyak digunakan baik untuk menambah fungsi yang tidak dimiliki oleh HTML, maupun juga untuk berinteraksi dengan database MySQL. Seringkali dipakai sebagai fondasi dari CMS semacam WordPress, juga beberapa situs web besar seperti Facebook dan Wikipedia.</p>\r\n<p>Dalam pengembangan aplikasi, programmer PHP selalu tak lepas dari IDE. IDE merupakan kakas wajib bagi semua programmer tak terkecuali programmer PHP juga, karena dalam IDE banyak fitur yang bisa digunakan mempercepat pengembangan aplikasi. Apa saja IDE terbaik untuk PHP?</p>\r\n<h2><strong>1.&nbsp;<a href=\"https://www.jetbrains.com/phpstorm/\">PHPStorm</a></strong></h2>\r\n<p><img src=\"https://i.imgur.com/MLmtlgj.png\" alt=\"\" /></p>\r\n<p>PHPStorm adalah IDE terbaik untuk pengembang PHP dan dilengkapi dengan serangkaian fitur terbaru yang memfasilitasi pengembangan web dengan cepat. Ini dikembangkan dan dipromosikan oleh perusahaan bernama&nbsp;<a href=\"https://www.jetbrains.com/\">JetBrains</a>.</p>\r\n<p>PHPStorm bekerja dengan baik dengan framework seperti Symfony, Zend Framework, Yii, CakePHP dan Laravel. Bahkan mendukung Content Management System (CMS) seperti Drupal, Magento, dan WordPress.</p>\r\n<p>Setiap proyek pengembangan web tidak mutlak tanpa teknologi front-end dan di situlah PHPStorm bekerja dengan terbaik. Ini memungkinkan pengeditan langsung teknologi front-end termasuk CSS, Sass, HTML5, CoffeeScript, TypeScript, JavaScript, Stylus, Less dan lainnya. Ini memungkinkan refactoring kode, debugging dan unit testing.</p>\r\n<p>PHPStorm bukanlah IDE yang gratis, namun sangat layak untuk dibeli lisensinya karena semua kelebihan yang ditawarkan. Meskipun begitu, PHPStorm juga menawarkan lisensi gratis untuk dunia pendidikan atau aplikasi&nbsp;<em>open source</em>.</p>\r\n<h2><strong>2.&nbsp;<a href=\"http://www.aptana.com/\">Aptana Studio</a></strong></h2>\r\n<p><img src=\"https://i.imgur.com/lTaQrNH.jpg\" alt=\"\" /></p>\r\n<p>Aptana Studio yang dikembangkan oleh oleh Aptana Inc. pada tahun 2014 dn merupakan salah satu IDE pengembangan PHP open source terbaik.IDE ini sangat mudah diunduh, dipasang, dan digunakan tanpa biaya. Aptana Studio bisa dipakai Windows, Mac maupun Linux. Fitur yang ditawarkan sangat lengkap dengan anotasi, kesalahan sintaks, memiliki server PHP bawaan, mendukung DOM dan CSS, pemformatan kode dan pengindeksan otomatis, dan mendukung PHP Debugger.</p>\r\n<h2><strong>3.&nbsp;<a href=\"https://www.activestate.com/products/komodo-ide/\">Komodo</a></strong></h2>\r\n<p><img src=\"https://i.imgur.com/NiCUe3i.png\" alt=\"\" /></p>\r\n<p>Dikembangkan oleh ActiveState pada tahun 2000, Komodo IDE adalah salah satu tools pengembangan PHP terbaik. Sebagian besar fungsi Komodo adalah bawaan dari bahasa Python dengan integrasi yang akan memungkinkan kita untuk menggunakannya dengan bahasa/framework lain.</p>\r\n<p>Komodo adalah IDE open-source baik untuk bahasa pemrograman dinamis yang menggunakan basis kode Mozilla dan Scintilla sebagai fondasinya karena mereka berbagi banyak fungsi, fitur, dan mendukung bahasa yang sama. Karena banyaknya ekstensi dan fitur, Komodo telah berubah menjadi sukses besar.</p>\r\n<h2><strong>4.&nbsp;<a href=\"https://www.eclipse.org/pdt/\">Eclipse PDT</a></strong></h2>\r\n<p><img src=\"https://i.imgur.com/cDF7ope.png\" alt=\"\" /></p>\r\n<p>Eclipse PDT adalah Open Source PHP Development Tools yang sangat banyak digunakan adalah preferensi open source lain tanpa biaya langsung. Eclipse memiliki komunitas besar pengembang yang mengerjakan semua jenis plugin, yang diperlukan untuk mengotorisasi Eclipse dengan fitur yang disediakan oleh IDE PHP terbaik lainnya seperti PHPStorms, NetBeans, dan studio Zend yang harus disediakan.</p>\r\n<p>Beberapa fitur penting meliputi penyorotan sintaks, pemformatan kode, bantuan kode, refactoring, navigasi kode, templat kode, debugging PHP, validasi sintaks dan ekosistem Eclipse yang memiliki komunitas besar dan saling mendukung.</p>\r\n<h2><strong>5.&nbsp;<a href=\"https://netbeans.org/\">Netbeans</a></strong></h2>\r\n<p><img src=\"https://i.imgur.com/1naKbDc.png\" alt=\"\" /></p>\r\n<p>NetBeans IDE PHP menyediakan templat kode dan alat pembuatan kode, seperti pembuatan \"<em>getter</em>&nbsp;dan&nbsp;<em>setter</em>\",&nbsp;<em>refactoring</em>, seperti \"rename mudah\", parameter tooltips, hints, quick fixes, serta smart code completion.</p>\r\n<p>Dapatkan manfaat dari penyorotan kode sintaksis dan semantik, dokumentasi&nbsp;<em>pop-up</em>, pemformatan dan pelipatan kode, penandaan kejadian dan titik keluar, penyelesaian kode&nbsp;<em>try/ catch</em>&nbsp;pintar, pengisian awal dibantu dengan parameter metode pintar.</p>\r\n<p>NetBeans IDE untuk PHP menawarkan sejumlah fitur khusus untuk dikembangkan dengan fitur-fitur terbaru PHP.Misalnya, untuk mendukung&nbsp;<a href=\"http://php.net/manual/en/migration56.new-features.php\">PHP 5.6</a>&nbsp;, editor PHP mendukung fungsi variadik.Dan, untuk mendukung&nbsp;<a href=\"http://php.net/manual/en/migration55.new-features.php\">PHP 5.5</a>&nbsp;, editor PHP menyediakan dukungan untuk berbagai fitur bahasa baru,serta masih banyak lagi fitur yang ditawarkan lainnya.</p>\r\n<p>NetBeans PHP Editor mendukung pengembangan web dengan mempertimbangkan JavaScript, HTML, dan CSS. Semua fitur ini menjadikan NetBeans sebagai sumber utama IDE PHP.</p>\r\n<p><em>sumber :&nbsp;<a href=\"https://netbeans.org/features/php/\">netbeans.org</a></em></p>\r\n<h2><strong>6.&nbsp;<a href=\"https://code.visualstudio.com/\">Visual Studio Code</a></strong></h2>\r\n<p><img src=\"https://i.imgur.com/0i7mnQa.png\" alt=\"\" /></p>\r\n<p>Visual Studio Code mungkin adalah text editor terbaik untuk Windows, Mac, dan Linux. Tidak hanya mendukung JavaScript, tetapi juga mendukung Node.js, TypeScript, dan dilengkapi dengan seluruh ekosistem ekstensi untuk bahasa lain termasuk&nbsp;<a href=\"http://www.cplusplus.com/doc/tutorial/\">C++</a>,&nbsp;<a href=\"https://www.tutorialspoint.com/csharp/\">C#</a>,&nbsp;<a href=\"https://www.python.org/\">Python</a>, dan tentu saja&nbsp;<a href=\"http://php.net/\">PHP</a>&nbsp;dll.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Sumber :&nbsp;</strong><a href=\"https://www.codepolitan.com/6-ide-terbaik-untuk-bahasa-pemograman-php\">https://www.codepolitan.com/6-ide-terbaik-untuk-bahasa-pemograman-php</a></p>', '', 'terbit'),
(5, 1, '7 Alasan Kenapa Programmer Harus Mulai Bermain Gam', '2019-08-13', 'post', '<div class=\"mb-5 pb-3\"><img class=\"full-width\" src=\"https://static.cdn-cdpl.com/700x350/1907/aI6McnG1.jpg\" alt=\"7 Alasan Kenapa Programmer Harus Mulai Bermain Game - CodePolitan.com\" /></div>\r\n<p>Seorang programmer dituntut untuk memiliki beberapa kemampuan dalam bekerja. Untuk melakukan tugas-tugas yang berhubungan dengan pemrograman, kita harus memiliki kemampuan untuk meyelesaikan masalah, terutama dalam membuat dan mengoreksi berbagai sintak error dalam pemrograman yang telah dibuat.</p>\r\n<p>Beberapa alasan mengapa programmer harus bermain game:</p>\r\n<h2>1. Meningkatkan Daya Ingat</h2>\r\n<p><img src=\"https://i.imgur.com/SsGogJp.jpg\" alt=\"\" /></p>\r\n<p>Temen-temen mungkin belum banyak mengetahui apa manfaat ketika seseorang bermain game? Ada banyak manfaat dari bermain game yang bisa kita dapatkan. Contohnya untuk menambah daya ingat, mengasah logika dengan membantu seseorang memecahkan&nbsp;<em>puzzle</em>&nbsp;yang ada di dalam game.</p>\r\n<p>Video game adalah salah satu media untuk belajar, bagaimana seseorang dapat memecahkan trik yang ada didalam game tersebut. Teman-teman juga perlu mengingat intruksi yang ada saat mulai bermain, karena di bagian awal biasanya akan ada panduan yang berkaitan dengan level selanjutnya.</p>\r\n<p>Lalu apa kaitannya dengan programmer? Tentu saja ada. Dengan bermain game temen-temen dapat melatih logika untuk berpikir secara runut serta dan melatih daya ingat. Dengan banyaknya puzzle-puzzle yang ada, kita bisa berlatih yang mesti di pecahkan untuk mulai membuat suatu program.</p>\r\n<h2>2. Menumbuhkan ide-ide Baru</h2>\r\n<p><img src=\"https://i.imgur.com/uejZ8DA.jpg\" alt=\"\" /></p>\r\n<p>Teman-teman pasti sudah tahu susahnya bermain game yang levelnya tinggi, dimana suatu game membuat para pemain game harus berfikir lebih dalam untuk menaklukkan permainan game tersebut. Pemain yang sudah sering bermain game biasanya tahu strategi tersimpel untuk bisa menaklukkan level yang tingkat kesulitannya tinggi.</p>\r\n<p>Kebiasaan menyusun strategi saat bermain gamebisa menumbuhkan ide-ide yang di luar dugaan ketika mencoba menyelesaikan suatu permasalahan saat ngoding.</p>\r\n<h2>3. Meningkatkan Keterampilan Pemecahan Masalah</h2>\r\n<p><img src=\"https://i.imgur.com/fEpQU6K.jpg\" alt=\"\" /></p>\r\n<p>Sebagai seorang programmer dituntut untuk mengembangkan keterampilannya seiring berjalannya waktu. Setiap video game memiliki aturan yang memandu pemain memutuskan langkah apa yang perlu diikuti selanjutnya. Proses pengambilan keputusan pun melibatkan pikiran pada sudut yang berbeda, termasuk persepsi, memori, dan waktu reaksi.</p>\r\n<p>Kita dapat menerapkan keterampilan ke pemrograman ini, dimana kita diminta untuk mengembangkan solusi perangkat lunak yang akan memecahkan masalah di dunia nyata, seperti didalam video game. Kita tidak dapat beralih kelangkah selanjutnya jika solusi yang kita buat tidak menyelesaikan masalah di level saat ini.</p>\r\n<h2>4. Meningkatkan Keterampilan Multitasking</h2>\r\n<p><img src=\"https://i.imgur.com/7b8yC20.jpg\" alt=\"\" /></p>\r\n<p>Sebagian besar video game akan memaksa teman-teman untuk melakukan multitasking. teman-teman akan diminta untuk memperhatikan aspek yang berbeda dari permainan pada waktu tertentu. Misalnya, jika permainan melibatkan pertempuran, pemain harus terus memantau dan serentak menyerang musuh. Tanpa keterampilan multitasking yang sangat baik, seseorang kemungkinan besar akan mudah untuk kalah.</p>\r\n<p>Programmer juga akan menuntut keterampilan multitasking yang baik untuk menciptakan solusi bagi masalah di dunia nyata. Programmer harus cepat tanggap apapun yang terjadi dan harus dapat menulis kode secara bersamaan dalam memeriksa kesalahan.</p>\r\n<h2>5. Meningkatkan Kosentrasi Dan Perhatian</h2>\r\n<p><img src=\"https://i.imgur.com/pPIiPrQ.jpg\" alt=\"\" /></p>\r\n<p>Banyak video game yang penuh aksi membutuhkan tingkat kosentrasi dan perhatian tingkat tinggi. ketika seseorang kehilangan kosentrasi sedikit pun itu akan mengakibatkan hal yang fatal.</p>\r\n<p>Pemain yang tetap penuh kosentrasi selama sesi permainan memiliki peluang lebih tinggi untuk menang. kasus yang sama untuk pemrograman, pemrograman mengharuskan kita untuk tetap berkonsentrasi dalam penulisan kode dan menentukan kesalahan pemrograman untuk menghasilkan perangkat lunak yang baik sesuai dengan kebutuhan pengguna.</p>\r\n<h2>6. Membina Dan Membantu Membentuk Keterampilan Sosial</h2>\r\n<p><img src=\"https://i.imgur.com/xa6VGjk.jpg\" alt=\"\" /></p>\r\n<p>Ada beberapa permainan tertentu yang menggunakan beberapa fitur multi, pemainnya membutuhkan upaya tim untuk memenangkan permainan. Fitur ini memungkinkan pemain yang berbeda untuk melawan satu sama lain secara bersamaan.</p>\r\n<p>Setelah menghabiskan beberapa jam didepan komputer teman-teman, teman-teman akan meningkatkan keterampilan sosial dengan sifat interaktif kita. kita juga dapat membuat grup sosial baru dengan orang-orang yang paham teknologi, yang dapat kita tanyakan tentang bahasa pemrograman, kapanpun kita membutuhkan bantuan.</p>\r\n<h2>7. Sumber Inspirasi Dan Pembelajaran</h2>\r\n<p><img src=\"https://i.imgur.com/rAMEMqA.jpg\" alt=\"\" /></p>\r\n<p>Video game tidak pernah bisa memberikan kita pembelajaran yang paling mendasar. Namun akan menginspirasi teman-teman untuk belajar dan menjadi lebih ingin tahu. Ketika teman-teman selalu ingin tahu, maka secara tidak langsung teman-teman selalu ingin belajar memecahkan suatu masalah.</p>\r\n<p>Sama halnya dengan seorang programmer pada saat membuat program, temen-temen akan terinspirasi untuk selalu mencoba dan belajar menyelesaikan masalah dengan baik.</p>\r\n<p><strong>Sumber : </strong><a href=\"https://www.codepolitan.com/7-alasan-kenapa-programmer-harus-mulai-bermain-game-2\">https://www.codepolitan.com/7-alasan-kenapa-programmer-harus-mulai-bermain-game-2</a></p>', '', 'terbit'),
(6, 1, 'Google Akan Menutup Adsense Mobile Tahun Depan', '2019-08-13', 'post', '<div class=\"mb-5 pb-3\"><img class=\"full-width\" src=\"https://static.cdn-cdpl.com/700x350/1907/yhs9OwU.png\" alt=\"Google Akan Menutup Adsense Mobile Tahun Depan, Beralih ke Teknologi PWA - CodePolitan.com\" /></div>\r\n<p>Google AdSense adalah platfrom layanan periklanan web terbesar yang ada saat ini. Adsense bisa dibilang sebagai solusi pertama yang terpikirkan ketika akan menampilkan iklan di sebuah web. Jika pembaca pernah menampilkan layanan iklan di webnya, besar kemungkinan pembaca sudah pernah mencoba menggunakan AdSense.</p>\r\n<p>Untuk membantu pengguna baik yang memasarkan iklannya atau pengguna yang menampilkan iklan melihat statistik performa iklan mereka, Google sudah menyiapkan sebuah dashboard. Selama ini ada dua pilihan untuk melihat dashboard-nya yaitu melalui web dan aplikasi mobile (Android dan iOS). Melalui sebuah&nbsp;<a href=\"https://adsense.googleblog.com/2019/07/intention-to-deprecate-apps.html\">blog post</a>, Google mengumumkan penutupan aplikasi AdSense Mobile meskipun 70% pengguna mengakses layanan dashboard ini dari mobile.</p>\r\n<h2>Beralih ke PWA</h2>\r\n<p>Tujuh puluh persen pengguna merupakan angka yang sangat besar. Menutup layanan aplikasi mobile-nya dimana terdapat 70% pengguna merupakan keputusan yang aneh bukan? Akan tetapi, keputusan ini ternyata dibuat karena Google ingin beralih dari aplikasi native ke aplikasi web dengan memanfaatkan teknologi Accelerated Mobile Pages (AMP) dan Progressive Web Apps (PWA). Jadi, dengan menutup aplikasi AdSense Mobile, bukan berarti Google tidak memperdulikan pengguna mobile, tapi karena mereka ingin pengguna mengakses dashboard AdSense dari satu sumber saja, yaitu web.</p>\r\n<h2>Apa itu Accelerated Mobile Pages (AMP) dan Progressive Web Apps (PWA)</h2>\r\n<p>Apa sebetulnya teknologi Accelerated Mobile Pages (AMP) dan Progressive Web Apps (PWA) yang ingin dipakai Google ini?</p>\r\n<p>Accelerated Mobile Pages (AMP) merupakan suatu project yang dikerjakan oleh Google dan Twitter yang bertujuan untuk membuat web menjadi lebih kencang. Secara sederhana AMP memaksa suatu web untuk menyiapkan web versi \"minimal\" yang kode HTML-nya hanya menggunakan tag-tag tertentu, beberapa tag seperti form ditiadakan. Tidak hanya HTML, CSS pun fitur-fiturnya dipangkas dengan hanya memiliki fitur-fitur yang paling penting saja untuk mempresentasikan suatu halaman (warna, tipografi, dkk.). Dengan menyiapkan versi \"minimal\" ini, suatu website akan memiliki ukuran yang lebih kecil, lebih cepat diakses, dan lebih mudah di cache.</p>\r\n<p>Lalu bagaimana dengan Progressive Web Apps (PWA)?</p>\r\n<p>Progressive Web Apps (PWA) merupakan sekumpulan teknologi yang bisa membuat aplikasi web berperilaku layaknya aplikasi mobile. Misalnya, ia memiliki&nbsp;<em>splash screen</em>, bisa di install ke halaman depan (<em>home screen</em>), tampilannya tersedia secara instan (tanpa menunggu di awal), dapat di akses saat offline, dsb. Pada intinya, PWA bertujuan agar pengguna yang menggunakan aplikasi webnya merasa seperti menggunakan aplikasi native yang di install melalui Play Store.</p>\r\n<h2>Kapan AdSense Mobile Ditutup?</h2>\r\n<p>Aplikasi iOS dan Android AdSense akan ditutup secara bertahap mulai bulan Agustus dan akan dihapus dari Play Store/App Store pada akhir tahun 2019. Sekarang, kita tinggal menunggu pengumuman resmi akan antarmuka web yang telah dioptimalkan untuk pengguna mobile.</p>\r\n<p><strong>Sumber :&nbsp;</strong><a href=\"https://www.codepolitan.com/google-akan-menutup-adsense-mobile-tahun-depan\">https://www.codepolitan.com/google-akan-menutup-adsense-mobile-tahun-depan</a></p>', '', 'terbit'),
(7, 1, 'Google Data Studio Meningkatkan Interaktivitasnya', '2019-08-13', 'post', '<div class=\"mb-5 pb-3\"><img class=\"full-width\" src=\"https://static.cdn-cdpl.com/700x350/1907/1Ziq4BO.jpg\" alt=\"Google Data Studio Meningkatkan Interaktivitasnya - CodePolitan.com\" /></div>\r\n<p><a href=\"https://datastudio.google.com/navigation/reporting\">Data Studio</a>&nbsp;adalah komponen gratis dari Google Data Studio 360, yang tersedia sebagai produk berbayar untuk visualisasi dan pelaporan data dengan lisensi mulai dari 200 pengguna. Data Studio Ini dapat digunakan untuk terhubung ke semua data pengguna dengan integrasi asli di berbagai produk Google, maupun data non-Google. Versi kedua ini dapat digunakan untuk membuat laporan dari data dari AdWords, Google Analytics, YouTube, BigQuery, Attribution 360, dan Google Sheets.Pihak Google telah memperbarui alat analisis Data Studio dengan beranda baru yang dirancang untuk memudahkan pengguna menemukan informasi dan laporan.</p>\r\n<p><img src=\"https://www.jeffalytics.com/wp-content/uploads/Screen-Shot-2018-10-15-at-1.07.11-PM.png\" alt=\"\" /><br />Desain ulang halaman beranda Data Studio dimulai dengan menambahkan bilah pencarian untuk membuat tampilan dan rasa lebih mirip dengan produk G Suite lainnya. Ada juga tombol Buat baru yang dapat digunakan untuk membuat laporan, mengatur sumber data, atau penjelajah data.</p>\r\n<p><img src=\"https://i.imgur.com/fqQSjEf.png\" alt=\"\" /></p>\r\n<p>Versi baru dari Data Studio juga memiliki lebih banyak&nbsp;<em>interaktivitas grafik</em>. Yang artinya kemampuan untuk berinteraksi dengan bagan untuk memfilter bagan lain jika ditambahkan awal tahun ini, namun sekarang telah ditingkatkan lebih lanjut dengan kemampuan untuk menyortir bagan secara langsung sambil melihat bagan daripada perlu mengedit laporan serta dapat menggunakan perincian ke tingkat detail yang lebih banyak dari isi bagan.</p>\r\n<p><img src=\"https://i.imgur.com/Z0n1k0Q.png\" alt=\"\" /><br />Hal tersebut sangat berguna untuk pengembang, Google telah menambahkan dukungan untuk BigQuery engine bernama&nbsp;<a href=\"https://cloud.google.com/bi-engine/docs/overview\">BI Engine</a>. Google mengatakan bahwa dengan menggunakan BI Engine kita dapat menganalisis data yang disimpan di BigQuery dengan waktu respons kueri dalam detik dan dengan konkurensi tinggi yang sangat dibutuhkan oleh pengembang.</p>', '', 'terbit'),
(8, 1, 'Beasiswa Google untuk Dosen dan Mahasiswa 2019', '2019-08-13', 'post', '<div class=\"mb-5 pb-3\"><img class=\"full-width\" src=\"https://static.cdn-cdpl.com/700x350/16/Opera_Snapshot_2019-06-11_200712_blog_dicoding_com.png\" alt=\"Beasiswa Google untuk Dosen dan Mahasiswa 2019 - CodePolitan.com\" /></div>\r\n<p>Program Beasiswa Google untuk Dosen dan Mahasiswa 2019 via&nbsp;<strong>Google Faculty Development Program(FDP)</strong>&nbsp;kembali dibuka.</p>\r\n<p>Google bekerja sama dengan&nbsp;<a href=\"https://developers-id.googleblog.com/2019/05/beasiswa-google-2019-untuk-dosen-dan.html?utm_campaign=website&amp;utm_source=codepolitan&amp;utm_medium=article\">Dicoding</a>&nbsp; sebagai Google Authorized Training Partner in Indonesia untuk memberikan beasiswa kepada dosen &amp; mahasiswa untuk belajar mengembangkan Aplikasi sesuai dengan standar kurikulum Google.</p>\r\n<p>Apa saja keuntungan dari Program&nbsp;<strong>FDP</strong>&nbsp;ini ?&nbsp;</p>\r\n<h3>Jika status Anda saat ini adalah mahasiswa(i) aktif</h3>\r\n<ul>\r\n<li>Anda berkesempatan mendapat beassiwa belajar di kelas&nbsp;&nbsp;<a href=\"https://www.dicoding.com/academies/51?utm_campaign=website&amp;utm_source=codepolitan&amp;utm_medium=article\">Belajar Membuat Aplikasi Android untuk Pemula</a>&nbsp;secara penuh. Jika lulus, Anda mendapatkan sertifikat kelulusan dari Dicoding, dan bisa mengikuti program lainnya di Dicoding.</li>\r\n<li>Dapatkan tautan pendaftaran dari dosen yang sudah terdaftar di program FDP. Cek&nbsp;<strong>nama-nama universitas</strong>&nbsp;yang sudah terdaftar.</li>\r\n<li>Jika universitas Anda belum tercantum, segera infokan dosen di universitas Anda untuk mendaftar di program FDP demi mendapatkan kesempatan menarik ini.</li>\r\n<li>Jika sudah tercantum, klik ini untuk mendaftar&nbsp;</li>\r\n</ul>\r\n<h3>Jika status Anda saat ini adalah Dosen Pengajar di salah satu Universitas</h3>\r\n<ul>\r\n<li>Anda berkesempatan mendapat beasiswa belajar di kelas&nbsp;<a href=\"https://www.dicoding.com/academies/14?utm_campaign=website&amp;utm_source=codepolitan&amp;utm_medium=article\">Menjadi Android Developer Expert</a>&nbsp;secara penuh sehingga siap mengikuti Sertifikasi berstandar global &ndash;&nbsp;<strong>Associate Android Developer</strong>. Selain itu seluruh mahasiswa di kampus Anda akan mendapatkan kelas&nbsp;<a href=\"https://www.dicoding.com/academies/51?utm_campaign=website&amp;utm_source=codepolitan&amp;utm_medium=article\">Belajar Membuat Aplikasi Android untuk Pemula</a></li>\r\n<li>Bagi Bapak/Ibu dosen yang belum pernah mengikuti Program Google Faculty Development Program dapat mendaftar di tautan berikut :&nbsp;</li>\r\n<li>Silakan jika Bapak/Ibu dosen akan<strong>&nbsp;mengajak rekan dosen lain</strong>&nbsp;dari kampus yang sama/berbeda&nbsp;untuk mengikuti program ini.</li>\r\n<li>Untuk Bapak/Ibu dosen sudah registrasi dan terdaftar di program FDP tahun 2018 yang lalu, silakan&nbsp;<strong>registrasi ulang</strong>&nbsp;di halaman berikut :&nbsp;</li>\r\n<li>Beasiswa&nbsp;<strong>tidak dapat diberikan</strong>&nbsp;jika Bapak/Ibu dosen tidak melakukan pendaftaran ulang.</li>\r\n</ul>\r\n<h3>FAQ mengenai program FDP 2019 :</h3>\r\n<ul>\r\n<li><a href=\"https://docs.google.com/document/d/18zWY_KSecEm2En-Qb--1E7PeufX_mLhespoGA5j7CXY/edit?usp=sharing&amp;utm_campaign=website&amp;utm_source=sendgrid.com&amp;utm_medium=email\">FAQ untuk Dosen</a></li>\r\n<li><a href=\"https://docs.google.com/document/d/1CTrccS-VmvdDS0CLGndp70Zabb4yQKSqKwpC6aC98Hg/edit?usp=sharing&amp;utm_campaign=website&amp;utm_source=sendgrid.com&amp;utm_medium=email\">FAQ untuk Mahasiswa(i)</a></li>\r\n</ul>\r\n<h3>Pengumuman peserta terpilih</h3>\r\n<ul>\r\n<li>Batch 1 tanggal&nbsp;<strong>18 Juni 2019</strong></li>\r\n<li>Batch 2 tanggal&nbsp;<strong>27 Agustus 2019&nbsp;</strong></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p><strong>Sumber : </strong><a href=\"https://www.codepolitan.com/beasiswa-google-untuk-dosen-dan-mahasiswa-2019\">https://www.codepolitan.com/beasiswa-google-untuk-dosen-dan-mahasiswa-2019</a></p>', '', 'terbit');
INSERT INTO `post` (`id_post`, `id_user`, `judul`, `tanggal_terbit`, `type`, `konten`, `ringkasan`, `status`) VALUES
(9, 1, '5 Keuntungan Belajar Pemrograman Secara Online', '2019-08-13', 'post', '<div class=\"mb-5 pb-3\"><img class=\"full-width\" src=\"https://static.cdn-cdpl.com/700x350/d9170b6b2bec33c948deeea64b7fe4da/5-Keuntungan-Belajar-Pemrograman-Secara-Online.jpg\" alt=\"5 Keuntungan Belajar Pemrograman Secara Online - CodePolitan.com\" /></div>\r\n<p>Saat ini teknologi sangat membantu dalam setiap pergerakan manusia. Kemajuan dalam dunia internet membuat kehidupan semakin mudah dan seakan-akan tanpa jarak. Begitupun dengan aktivitas manusia tak jauh dari hal yang dilaksanakan secara online, sebut saja online banking, online shop, meeting online, termasuk kegiatan belajar pemrograman pun bisa secara online.</p>\r\n<p>Sebagian orang lebih memilih untuk belajar pemrograman secara online dibandingkan offline. Hal ini karena belajar online memiliki beberapa keuntungan yang tidak didapatkan dari kegiatan belajar pemrograman offline. Beberapa keuntungan inilah yang akan pertimbangan Anda untuk memilih mengikuti kegiatan belajar pemrograman online.</p>\r\n<p>Berikut adalah 5 keuntungan belajar pemrograman secara online:</p>\r\n<h2>1. Waktu dan Tempat yang fleksibel</h2>\r\n<p><img src=\"https://static.cdn-cdpl.com/source/d9170b6b2bec33c948deeea64b7fe4da/Waktu-tempat.jpg\" alt=\"\" /></p>\r\n<p>Dalam kegiatan belajar pemrograman online, kita dapat menyesuaikan kapan dan dimana Anda akan melakukan belajar pemrograman online. Kita bisa melakukannya di kamar, di ruang makan, bahkan bisa sambil ngopi di&nbsp;<em>caffe</em>. Belajar online hanya memerlukan waktu dan tempat agar dapat melakukannya.</p>\r\n<p>Kegiatan belajar online sangat cocok untuk seseorang yang sibuk karena sudah memiliki kegiatan lain misalnya yang sudah bekerja atau pelajar yang masih sekolah. Hal ini karena kegiatan belajar pemrograman online dapat dilaksanakan dimanapun dan kapanpun, maka memungkinkan Anda untuk belajar kapan saja saat memiliki waktu luang yang dapat dipakai. Perlu diingat kegiatan belajar pemrograman ini jangan dipakai untuk menggantikan waktu istirahat Anda. Karena istirahat pun itu sangat penting untuk dilakukan.</p>\r\n<h2>2. Biaya yang digunakan lebih sedikit</h2>\r\n<p><img src=\"https://static.cdn-cdpl.com/source/d9170b6b2bec33c948deeea64b7fe4da/Save_money.jpg\" alt=\"\" /></p>\r\n<p>Selain waktu dan tempat yang digunakan fleksibel, keuntungan lainnya yaitu biaya yang digunakan lebih sedikit. Jika dalam mengikuti pelatihan pemrograman ataupun kursus offline Anda perlu mengeluarkan banyak biaya, seperti biaya pendaftaran, biaya ongkos, bahkan jika pelatihan tersebut diluar kota, kita harus mengeluarkan biaya untuk penginapan dan sebagainya.</p>\r\n<p>Untuk kegiatan pembelajaran online Anda hanya akan mengeluarkan biaya jauh lebih sedikit jika dibandingkan dengan mengikuti pelatihan ataupun mengikuti kursus offline. Mungkin saja biaya yang dikeluarkan hanya untuk kuota dikarenakan mengikuti pembelajaran harus memiliki koneksi internet, ataupun biaya untuk membeli modul yang tentunya materi yang tersedia adalah materi terstruktur yang akan menunjang kegiatan belajar pemrograman Anda dimulai dari dasar sampai Anda benar benar ahli dalam pemrograman.</p>\r\n<h2>3. Dapat disesuaikan dengan kemampuanmu</h2>\r\n<p><img src=\"https://static.cdn-cdpl.com/source/d9170b6b2bec33c948deeea64b7fe4da/Skill.jpg\" alt=\"\" /></p>\r\n<p>Jangan khawatir jika belajar pemrograman secara online. Karena materi yang tersedia dapat disesuaikan dengan kemauanmu. Jika Anda baru saja menggeluti dunia pemrograman atau biasa disebut pemula, Anda bisa memilih belajar dari dasar pemrograman. Tentu selain menghemat waktu, Anda pun bisa menghemat biaya karena materi yang dipelajari langsung sesuai dengan kemampuan dan bakat Anda.</p>\r\n<p>Anda tidak perlu khawatir untuk materi yang anda cari, Anda dapat menemukannya di website&nbsp;<a href=\"https://www.codepolitan.com/learn\">Codepolitan</a>. Materi yang tersedia tentu sangat lengkap. selain itu, ada pula forum tanya jawab dan belajar menggunakan studi kasus. Untuk forum tanya jawab, Anda jadi tidak perlu khawatir jika anda tidak mengerit dnegan materi yang disampaikan, Anda dapat menanyakan materi tersebut di forum tanya jawab dan tim Codepolitan akan siap menjawab pertanyaan tersebut.</p>\r\n<p>Baca juga:&nbsp;<a href=\"https://www.codepolitan.com/tips-belajar-pemrograman-yang-dilakukan-secara-otodidak\">Tips Belajar Pemrograman Secara Otodidak</a><br />Baca Juga:&nbsp;<a href=\"https://www.codepolitan.com/cara-enjoy-memulai-belajar-pemrograman\">Cara Enjoy Memulai Belajar Pemrograman</a></p>\r\n<h2>4. Tidak ada batasan</h2>\r\n<p><img src=\"https://static.cdn-cdpl.com/source/d9170b6b2bec33c948deeea64b7fe4da/No_LIMIT.jpg\" alt=\"\" /></p>\r\n<p>Dalam kegiatan belajar pemrograman offline, waktu adalah salah satu masalah yang harus dihadapi peserta dan instruktur dalam belajar. Pada pembelajaran tatap muka, lokasi membatasi beberapa peserta untuk hadir berpartisipasi orang-orang untuk hadir pada waktu tertentu. Hal ini pun dapat berpengaruh pada biaya yang dikeluarkan oleh Anda.</p>\r\n<p>Pada kegiatan belajar pemrograman online, pembelajaran dapat dilukan kapanpun, dimanapun tanpa adanya batasan dimana setiap orang yang tertarik dapat hadir pada kegiatan pembelajaran online tersebut. Tentu kegiatan belajar pemrograman secara online ini sangat memudahkan setiap orang yang ingin mengikuti belajar pemrograman tetapi terkendala dalam hal lokasi, biaya dan waktu.</p>\r\n<h2>5. Materi terstruktur</h2>\r\n<p><img src=\"https://static.cdn-cdpl.com/source/d9170b6b2bec33c948deeea64b7fe4da/materials.jpg\" alt=\"\" /></p>\r\n<p>Pada kegiatan belajar pemrograman online, kelengkapan materi juga menjadi suatu keuntungan yang diapatkan. Coba saja lihat di&nbsp;<a href=\"https://www.codepolitan.com/learn\">Codepolitan</a>, pada web tersebut terdapat materi-materi untuk belajar pemrograman secara tersusun dan lengkap. Materi terstruktur dapat membantu agar seseorang tidak kebingungan disaat melakukan belajar pemrograman secara online.</p>\r\n<p>Bayangkan saja, jika materi yang Anda pelajari tidak lengkap. Apa yang Anda rasakan? Tentu saja merasa kebingungan bukan? Nah, web&nbsp;<a href=\"https://www.codepolitan.com/learn\">Codepolitan</a>menyediakan media pembelajaran online untuk Anda agar Anda tidak merasa kebingungan dalam melakukan kegiatan belajar pemrograman.</p>\r\n<p>Ayo daftar belajar online di Codepolitan : (<a href=\"https://www.codepolitan.com/learn\">https://www.codepolitan.com/learn</a>)<br />Materi-materi di Codepolitan meliputi:</p>\r\n<ol>\r\n<li><a href=\"https://www.codepolitan.com/learn/mengenal-pemrograman-komputer\">Mengenal Pemrograman Komputer</a></li>\r\n<li><a href=\"https://www.codepolitan.com/learn/belajar-dasar-html-dan-css\">Belajar Dasar-dasar HTML dan CSS</a></li>\r\n<li><a href=\"https://www.codepolitan.com/learn/menjadi-fullstack-php-web-developer\">Menjadi Fullstack PHP Web Developer</a></li>\r\n<li><a href=\"https://www.codepolitan.com/learn/belajar-pemrograman-php\">Belajar Pemrograman PHP</a></li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<p><strong>Sumber :&nbsp;</strong><a href=\"https://www.codepolitan.com/5-keuntungan-belajar-pemrograman-secara-online\">https://www.codepolitan.com/5-keuntungan-belajar-pemrograman-secara-online</a></p>', '', 'terbit'),
(10, 1, 'Ingin memiliki Perusahaan Online Digital? Yuk Ikut', '2019-08-13', 'post', '<div class=\"mb-5 pb-3\"><img class=\"full-width\" src=\"https://static.cdn-cdpl.com/700x350/61a1fea212b00873c2bcbb77943e776a/WhatsApp_Image_2019-01-24_at_14_15_06.jpg\" alt=\"Ingin memiliki Perusahaan Online Digital? Yuk Ikutan SME SUMMIT 2019! - CodePolitan.com\" /></div>\r\n<p>Setiap detik, perkembangan teknologi makin maju. Kita tidak boleh ketinggalan jaman. Salah satu contohnya adalah dalam bidang ekonomi. Ekonomi adalah salah satu permasalahan di Indonesia, contohnya karena kalahnya kualitas usaha dengan bangsa luar. Maka dari itu kita harus bisa membuat usaha yang seimbang dengan perkembangan jaman dengan cara menjadikan usaha kita berbasis online digital. Maka dari itu PHP Indonesia membuat acara SME SUMMIT 2019.</p>\r\n<p>SME SUMMIT 2019 Ini adalah acara untuk mengumpulkan dan membuka wawasan perusahaan UKM non-teknologi, startup, atau perusahaan menengah yang ingin bertransformasi di dunia online digital. Topik seminar dirancang agar mereka mendapat pemahaman bagaimana cara untuk meningkatkan keuntungan melalui pemasaran online, bagaimana mekanisme keuangan dan pembayaran online, karyawan dan talent spesialist seperti apa yang perlu direkrut dan apa regulasi serta insentif yang diberikan pemerintah untuk membantu UKM menjadi lebih besar dan berkembang.</p>\r\n<h2>Apa itu SME SUMMIT 2019?</h2>\r\n<p>SME kependekan dari Small and Medium Enterprise, SME SUMMIT 2019 adalah acara konferensi dan pendampingan yang diselenggarakan oleh&nbsp;<a href=\"https://phpindonesia.id/\">PHP Indonesia</a>yang bertujuan untuk mengumpulkan dan membuka wawasan perusahaan.</p>\r\n<p>Perusahaan apa saja yang bisa mengikuti acara ini? Perusahaan non-teknologi, perusahaan UKM non-teknologi, startup, atau perusahaan kecil, menengah dan perusahaan tradisional yang ingin bertransformasi di dunia online digital. Acara ini membahas berbagai topik yang akan dibawakan oleh pemateri seperti Pemasaran Digital, Integrasi Fintech, Manajemen Bakat, Peraturan Insentif dari Pemerintah, dan banyak lagi. Tujuannya agar mereka mendapat pemahaman bagaimana cara untuk meningkatkan penjualan melalui pemasaran online, bagaimana mekanisme keuangan dan pembayaran online, karyawan dan talent spesialist seperti apa yang perlu direkrut dan apa regulasi dan insentif yang diberikan pemerintah untuk membantu UKM menjadi lebih besar dan berkembang.</p>\r\n<h2>Siapa Saja yang Akan Menjadi Pengisi Acara di SME SUMMIT 2019?</h2>\r\n<p>Tentu kalian penasaran siapa saja yang akan menjadi pengisi acara di SME SUMMIT 2019 ini kan? Berikut adalah beberapa diantaranya:</p>\r\n<h3>1. Ken Ratri Iswari</h3>\r\n<p><img src=\"https://static.cdn-cdpl.com/source/36533025bd24053301aea90f8d9baf8c/pemateri1.jpg\" alt=\"ken-ratri-iswari\" /></p>\r\n<p>Seorang Founder &amp; CEO Geekhunter Human Asset Sector. Sebuah perusahaan Konsultan Perekrutan TI yang bertujuan untuk membantu perusahaan teknologi merekrut talenta TI di Indonesia khususnya para programmer.</p>\r\n<h3>2. Dondy Bappedyanto</h3>\r\n<p><img src=\"https://static.cdn-cdpl.com/source/36533025bd24053301aea90f8d9baf8c/pemateri6.jpg\" alt=\"dondy-bappedyanto\" /></p>\r\n<p>CEO Biznet Gio Technology Sector. PT Biznet Gio Nusantara adalah Perusahaan Cloud Computing Indonesia yang menyediakan solusi infrastruktur yang fleksibel dan andal.</p>\r\n<h3>3. Rendy Maulana</h3>\r\n<p><img src=\"https://static.cdn-cdpl.com/source/36533025bd24053301aea90f8d9baf8c/pemateri3.jpg\" alt=\"rendy-maulana\" /></p>\r\n<p>CEO Qwords Regulation Sector. Perusahaan Qwords Regulation Sector salah satu perusahaan<em>web hosting</em>&nbsp;top di Indonesia yang menyediakan layanan penyewaan space untuk meletakkan file website &amp; akses email anda di Internet, dan juga menyediakan layanan registrasi&nbsp;<a href=\"https://www.qwords.com/domain-name/\">Domain Name</a>&nbsp;atau alamat untuk mengakses website anda di internet.</p>\r\n<h3>4. Yopie Suryadi</h3>\r\n<p><img src=\"https://static.cdn-cdpl.com/source/36533025bd24053301aea90f8d9baf8c/pemateri2.jpg\" alt=\"yopie-suryadi\" /></p>\r\n<p>Founder&amp; Chief MTarget.co Digital Marketing. MTARGET adalah sebuah perusahaan SaaS (software as a service) yang membuat powerful marketing automation tools.</p>\r\n<h3>5. Melvin Mumpuni CFP</h3>\r\n<p><img src=\"https://static.cdn-cdpl.com/source/36533025bd24053301aea90f8d9baf8c/pemateri4.jpg\" alt=\"melvin-mumpuni\" /></p>\r\n<p>Founder Finansialku.com Financial Sector. Finansialku.com Financial Sector adalah perusahaan perencana keuangan independen.</p>\r\n<h3>6. Joy Gabriel</h3>\r\n<p><img src=\"https://static.cdn-cdpl.com/source/36533025bd24053301aea90f8d9baf8c/pemateri5.jpg\" alt=\"joy-gabriel\" /></p>\r\n<p>Data Analytics Telkom Indonesia Technology Sector. Seorang data analis dari perusahaan informasi dan komunikasi serta penyedia jasa dan jaringan telekomunikasi secara lengkap di Indonesia.</p>\r\n<p>Tertarik ingin menjadi Pemateri? Dari 7 orang Pemateri yang tersedia, masih ada 1 slot kosong. Jika anda berminat menjadi pemateri, silahkan mengisi form berikut ini&nbsp;<a href=\"https://www.smesummit.id/speaker\">https://www.smesummit.id/speaker</a>&nbsp;. Setiap peminat akan diseleksi oleh tim panitia&nbsp;<strong>SME SUMMIT 2019</strong>.</p>\r\n<h2>Kapan dan Dimana SME SUMMIT 2019 diselenggarakan?</h2>\r\n<p><img src=\"https://static.cdn-cdpl.com/source/36533025bd24053301aea90f8d9baf8c/772-j4eqh76ggb2e.jpg\" alt=\"772-j4eqh76ggb2e\" /></p>\r\n<p>SME SUMMIT Indonesia akan diadakan di&nbsp;<strong>Ballroom Ayana Hotel Midplaza, Jl. Jenderal Sudirman Kav. 10-11 Jakarta Pusat, Jakarta 10220, Indonesia</strong>, pada tanggal&nbsp;<strong>25 April 2019</strong>. Acara ini di sponsori oleh&nbsp;<a href=\"https://www.biznetgio.com/\"><strong><em>Biznet GioCloud</em></strong></a>&nbsp;dan&nbsp;<a href=\"http://www.biznetnetworks.com/\"><strong><em>Biznet</em></strong></a>perusahaan yang bergerak dalam bidang IT. Jika anda ingin menjadi sponsor, anda bisa mendaftar di&nbsp;<a href=\"https://www.smesummit.id/sponsor/\">https://www.smesummit.id/sponsor/</a>&nbsp;.</p>\r\n<h2>Apa Aja yang Bisa didapatkan dari SME SUMMIT 2019 Ini?</h2>\r\n<p>Acara&nbsp;<strong>SME SUMMIT 2019</strong>&nbsp;ini banyak menawarkan keuntungan. Keuntungan-keuntungan yang didapat tidak akan membuat Anda merasa menyesla mengikuti SME SUMMIT 2019. Berikut adalah beberapa keuntungan jika anda mengikuti acara&nbsp;<strong>SME SUMMIT 2019</strong>:</p>\r\n<h4>1. Mendapatkan Solusi untuk Permasalahan di Perusahaan</h4>\r\n<p>Kenapa dikatakan seperti itu? Karena anda akan diajarkan bagaimana cara untuk meningkatkan penjualan melalui pemasaran online, bagaimana mekanisme keuangan dan pembayaran online, karyawan dan talent spesialist seperti apa yang perlu direkrut dan apa regulasi dan insentif yang diberikan pemerintah untuk membantu UKM menjadi lebih besar dan berkembang. Serta dengan adanya program&nbsp;<strong><em>Coaching Clinics</em></strong>&nbsp;yang akan memberikan solusi terhadap permasalahan di perusahaan anda.</p>\r\n<h4>2. Adanya Program Coaching Clinics</h4>\r\n<p>Program&nbsp;<strong><em>Coaching Clinics</em></strong>&nbsp;ini adalah program yang berfungsi untuk setiap peserta yang akan mendapatkan kesempatan untuk berdiskusi langsung tatap mata dan privasi dengan menceritakan masalah dan hambatan yang terjadi di kantornya saat ini. Dengan konsultan dan pakar yang sesuai yang dapat memberikan konsultasi gratis solusi terbaik terhadap masalah yang sedang dihadapi. Misalkan konsultasi sekuriti, konsultasi cloud, konsultasi digital marketing atau bisa memilih 15 topik yang disediakan.</p>\r\n<h4>3. Menambah Wawasan Baru</h4>\r\n<p>Acara ini akan menambah wawasan anda, dari 7 pembicara hebat yang akan membahas dalam berbagai topik, seperti Pemasaran Digital, Integrasi Fintech, Manajemen Bakat, Peraturan Insentif dari Pemerintah, dan banyak lagi. Tentu saja wawasan yang didapat akan sangat berguna untuk Anda tentunya.</p>\r\n<h4>4. Menambah Teman</h4>\r\n<p>Acara ini akan banyak peserta yang datang dari berbagai macam perusahaan. dengan demikian anda dapat saling berbicara, berkenalan atau bahkan bisa bekerja sama dan menjadi patner di bidang bisnis dengan peserta lain.</p>\r\n<p>Banyak sekali keuntungan yang bisa anda dapatkan. Tetapi, bayar gak kalo mau ikut acara&nbsp;<strong>SME SUMMIT 2019</strong>? Pastinya bayar. Untuk harga dirancang agar dapat dijangkau oleh perusahaan/personal. Namun, jika anda menginginkan harga diskon early-bird 50%, daftar segera dengan mengisi form pre-registrasi berminat untuk menjadi peserta. Kode diskon akan dikirim ke email peminat. -&nbsp;<a href=\"https://www.smesummit.id/register\">https://www.smesummit.id/register</a>.</p>\r\n<h2>Gimana Cara Daftar SME SUMMIT 2019?</h2>\r\n<p>Jika anda berminat untuk mengikuti acara SME SUMMIT 2019, anda bisa menghubungi Salma Salsabila (+62)-895-3363-09253 atau&nbsp;<a href=\"mailto:info@smesummit.id\">info@smesummit.id</a>(umum) dan menghubungi Arga Dinata 0817-9662-311 atau&nbsp;<a href=\"mailto:arga@smesummit.id\">arga@smesummit.id</a>jika ingin mendaftar sebagai coaching dan pengisi acara. Untuk yang ingin membantu acara ini diperbolehkan, silahkan mendaftar disini. Tetapi volunteer akan dipilih dan dibatasi -&nbsp;<a href=\"https://www.smesummit.id/volunteer\">https://www.smesummit.id/volunteer</a>&nbsp;Info lebih lanjut di&nbsp;<a href=\"https://www.smesummit.id/\">https://www.smesummit.id/</a>&nbsp;,&nbsp;<a href=\"https://phpindonesia.id/\">https://phpindonesia.id</a>&nbsp;.</p>\r\n<p>Peserta SME SUMMIT 2019 ini bisa juga yang bertempat tinggal di luar kota karena ada insentif khusus untuk peserta perusahaan luar kota. Untuk startup teknologi anda juga bisa mengikuti acara ini karena dari event ini, anda akan mendapatkan insight dari sektor-sektor diluar teknologi seperti marketing, finansial, talent management, regulasi dan insentif pemerintah yang justru juga dibutuhkan oleh perusahaan startup teknologi.</p>', '', 'terbit'),
(11, 1, 'About', '2019-08-13', 'page', '<div class=\"mod\" lang=\"id-ID\" data-attrid=\"kc:/location/location:address\" data-md=\"1002\" data-hveid=\"CA8QAQ\" data-ved=\"2ahUKEwih5ZOaiv_jAhUyjuYKHVRqC-UQkCkwH3oECA8QAQ\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf kno-fb-ctx PZPZlf\" data-dtype=\"d3ifr\" data-local-attribute=\"d3adr\" data-ved=\"2ahUKEwih5ZOaiv_jAhUyjuYKHVRqC-UQghwoADAfegQIDxAC\"><span class=\"w8qArf\"><img src=\"http://localhost:81/phicos/admin/images/post-image-1565673118361.jpg\" alt=\"\" width=\"540\" height=\"406\" /></span></div>\r\n<div class=\"zloOqf kno-fb-ctx PZPZlf\" data-dtype=\"d3ifr\" data-local-attribute=\"d3adr\" data-ved=\"2ahUKEwih5ZOaiv_jAhUyjuYKHVRqC-UQghwoADAfegQIDxAC\">&nbsp;</div>\r\n<div class=\"zloOqf kno-fb-ctx PZPZlf\" data-dtype=\"d3ifr\" data-local-attribute=\"d3adr\" data-ved=\"2ahUKEwih5ZOaiv_jAhUyjuYKHVRqC-UQghwoADAfegQIDxAC\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?safe=strict&amp;sa=X&amp;rlz=1C1CHBF_enID842ID842&amp;biw=1366&amp;bih=657&amp;q=phicos+group+it+consultant+kota+surakarta+alamat&amp;stick=H4sIAAAAAAAAAD3GMQ7DIAwF0ClSlnTIHslzF8rKbb5MlCIoJthIPU9Omk5905sf6-IO5z37b2t6-ueWObgiDEtS_wmIse-q1_Rq78SidHQZjZIRS9VRDNUoi4F0dGT031Dwgd1-CKtxYwAAAA&amp;ludocid=17834385587979275284&amp;ved=2ahUKEwih5ZOaiv_jAhUyjuYKHVRqC-UQ6BMwH3oECA8QAw\" data-ved=\"2ahUKEwih5ZOaiv_jAhUyjuYKHVRqC-UQ6BMwH3oECA8QAw\">Alamat</a>:&nbsp;</span><span class=\"LrzXr\">Jl. Agus Salim No.60, Sondakan, Kec. Laweyan, Kota Surakarta, Jawa Tengah 57147</span>\r\n<div class=\"GDRHkb r-inDmRMSqcV2Y\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"id-ID\" data-attrid=\"kc:/location/location:hours\" data-md=\"1005\" data-hveid=\"CA8QBA\" data-ved=\"2ahUKEwih5ZOaiv_jAhUyjuYKHVRqC-UQkCkwIHoECA8QBA\">\r\n<div class=\"Z1hOCe\">\r\n<div>\r\n<div class=\"kno-fb-ctx zloOqf PZPZlf\" data-dtype=\"d3ifr\" data-local-attribute=\"d3oh\">\r\n<div>\r\n<div class=\"r-inAhvDcfckok\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?safe=strict&amp;sa=X&amp;rlz=1C1CHBF_enID842ID842&amp;biw=1366&amp;bih=657&amp;q=phicos+group+it+consultant+kota+surakarta+jam+buka&amp;ludocid=17834385587979275284&amp;ved=2ahUKEwih5ZOaiv_jAhUyjuYKHVRqC-UQ6BMwIHoECA8QBg\" data-ved=\"2ahUKEwih5ZOaiv_jAhUyjuYKHVRqC-UQ6BMwIHoECA8QBg\">Jam buka</a>:&nbsp;</span>\r\n<div class=\"ZdM7x r-iXkJQS6ytEk0\">\r\n<div class=\"vk_bk h-n\" tabindex=\"0\" data-ved=\"2ahUKEwih5ZOaiv_jAhUyjuYKHVRqC-UQoT4wIHoECA8QBw\"><span class=\"vyFVZe\"><span class=\"TLou0b\"><strong>Buka 24 jam</strong></span></span></div>\r\n<div class=\"vk_bk h-n\" tabindex=\"0\" data-ved=\"2ahUKEwih5ZOaiv_jAhUyjuYKHVRqC-UQoT4wIHoECA8QBw\"><span class=\"vyFVZe\"><span class=\"TLou0b\"><strong>Senin - Sabtu</strong></span></span></div>\r\n<div class=\"vk_bk h-n\" tabindex=\"0\" data-ved=\"2ahUKEwih5ZOaiv_jAhUyjuYKHVRqC-UQoT4wIHoECA8QBw\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"id-ID\" data-attrid=\"kc:/collection/knowledge_panels/has_phone:phone\" data-md=\"1006\" data-hveid=\"CA8QDA\" data-ved=\"2ahUKEwih5ZOaiv_jAhUyjuYKHVRqC-UQkCkwIXoECA8QDA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf kno-fb-ctx\" data-dtype=\"d3ifr\" data-local-attribute=\"d3ph\" data-ved=\"2ahUKEwih5ZOaiv_jAhUyjuYKHVRqC-UQ8I0BKAAwIXoECA8QDQ\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?safe=strict&amp;sa=X&amp;rlz=1C1CHBF_enID842ID842&amp;biw=1366&amp;bih=657&amp;q=phicos+group+it+consultant+kota+surakarta+telepon&amp;ludocid=17834385587979275284&amp;ved=2ahUKEwih5ZOaiv_jAhUyjuYKHVRqC-UQ6BMwIXoECA8QDg\" data-ved=\"2ahUKEwih5ZOaiv_jAhUyjuYKHVRqC-UQ6BMwIXoECA8QDg\">Telepon</a>:&nbsp;</span><span class=\"LrzXr zdqRlf kno-fv\"><span data-dtype=\"d3ifr\" data-local-attribute=\"d3ph\">(0271) 7462445</span></span>\r\n<div class=\"GDRHkb r-iQz2X_0R4reA\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"id-ID\" data-attrid=\"kc:/location/location:province\" data-md=\"1001\" data-hveid=\"CA8QEA\" data-ved=\"2ahUKEwih5ZOaiv_jAhUyjuYKHVRqC-UQkCkwInoECA8QEA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf kno-fb-ctx\" data-ved=\"2ahUKEwih5ZOaiv_jAhUyjuYKHVRqC-UQyxMoADAiegQIDxAR\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?safe=strict&amp;sa=X&amp;rlz=1C1CHBF_enID842ID842&amp;biw=1366&amp;bih=657&amp;q=phicos+group+it+consultant+kota+surakarta+provinsi&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NEw2rCgoKC401JLLTrbSz8lPTizJzM-DM6wKivLLMvOSUxexGhVkZCbnFyukF-WXFihkligk5-cVl-aUJOaVKGTnlyQqFJcWJWYnFgFZEE3FmQCOVWLYZgAAAA&amp;ved=2ahUKEwih5ZOaiv_jAhUyjuYKHVRqC-UQ6BMoADAiegQIDxAS\" data-ved=\"2ahUKEwih5ZOaiv_jAhUyjuYKHVRqC-UQ6BMoADAiegQIDxAS\">Provinsi</a>:&nbsp;</span><span class=\"LrzXr kno-fv\"><a class=\"fl\" href=\"https://www.google.com/search?safe=strict&amp;sa=X&amp;rlz=1C1CHBF_enID842ID842&amp;biw=1366&amp;bih=657&amp;q=Jawa+Tengah&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NEw2rCgoKC40VOLUz9U3MEpKMTHUkstOttLPyU9OLMnMz4MzrAqK8ssy85JTF7FyeyWWJyqEpOalJ2YAADsRDu1KAAAA&amp;ved=2ahUKEwih5ZOaiv_jAhUyjuYKHVRqC-UQmxMoATAiegQIDxAT\" data-ved=\"2ahUKEwih5ZOaiv_jAhUyjuYKHVRqC-UQmxMoATAiegQIDxAT\">Jawa Tengah</a></span></div>\r\n</div>\r\n</div>', '', 'terbit'),
(12, 1, 'Contact', '2019-08-13', 'page', '<p><strong>Website : </strong><a href=\"http://phicos.co.id/\">http://phicos.co.id/</a></p>\r\n<p><strong>Email :&nbsp;</strong>phicos@gmail.com</p>\r\n<p><strong>Telepon : </strong>(0271) 7462445</p>\r\n<p><strong>Instagram :&nbsp;</strong><a title=\"instagram\" href=\"https://www.instagram.com/phicos\">https://www.instagram.com/phicos</a></p>\r\n<p><strong>Facebook :&nbsp;</strong><a title=\"facebook\" href=\"https://www.facebook.com/phicos\">https://www.facebook.com/phicos</a></p>\r\n<p>&nbsp;</p>', '', 'terbit'),
(14, 1, 'Open Recruitment', '2019-09-05', 'page', '<p>ini open recruitment</p>', '', 'terbit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `post_kategori`
--

CREATE TABLE `post_kategori` (
  `id_kategori` int(11) NOT NULL,
  `id_post` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `post_kategori`
--

INSERT INTO `post_kategori` (`id_kategori`, `id_post`) VALUES
(4, 1),
(3, 4),
(4, 5),
(2, 3),
(2, 7),
(2, 8),
(4, 9),
(2, 10),
(3, 2),
(2, 6),
(4, 1),
(3, 4),
(4, 5),
(2, 3),
(2, 7),
(2, 8),
(4, 9),
(2, 10),
(3, 2),
(2, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `publik_user`
--

CREATE TABLE `publik_user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `publik_user`
--

INSERT INTO `publik_user` (`id_user`, `nama`, `email`, `password`) VALUES
(1, 'YUSUF ISKANDAR ROYAN', 'yusufroyan5@student.uns.ac.id', '202cb962ac59075b964b07152d234b70'),
(2, 'Ester', 'yusufroyan93@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `set_id` int(11) NOT NULL,
  `set_nama` varchar(128) DEFAULT NULL,
  `set_desc` text DEFAULT NULL,
  `set_post` int(11) DEFAULT NULL,
  `set_berita` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`set_id`, `set_nama`, `set_desc`, `set_post`, `set_berita`) VALUES
(1, 'PHICOS', 'Phicos Group (IT Consultant) adalah perusahaan yang bergerak di bidang Teknologi dan informatika.', 3, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `role` enum('administrator','penulis','pengguna') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `email`, `username`, `password`, `nama`, `role`) VALUES
(1, 'admin@phicos.com', 'admin', '202cb962ac59075b964b07152d234b70', 'Yusuf', 'administrator'),
(2, 'admin2@phicos.com', 'admin2', '202cb962ac59075b964b07152d234b70', 'Richo', 'penulis'),
(3, 'yusuf@gmail.com', 'ucup', '202cb962ac59075b964b07152d234b70', 'Royan', 'pengguna');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`id_biodata`),
  ADD KEY `id_divisi` (`id_divisi`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`id_divisi`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indeks untuk tabel `portofolio`
--
ALTER TABLE `portofolio`
  ADD PRIMARY KEY (`id_portofolio`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id_post`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `post_kategori`
--
ALTER TABLE `post_kategori`
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_post` (`id_post`);

--
-- Indeks untuk tabel `publik_user`
--
ALTER TABLE `publik_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`set_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `biodata`
--
ALTER TABLE `biodata`
  MODIFY `id_biodata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `divisi`
--
ALTER TABLE `divisi`
  MODIFY `id_divisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `portofolio`
--
ALTER TABLE `portofolio`
  MODIFY `id_portofolio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `post`
--
ALTER TABLE `post`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `publik_user`
--
ALTER TABLE `publik_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `biodata`
--
ALTER TABLE `biodata`
  ADD CONSTRAINT `biodata_ibfk_1` FOREIGN KEY (`id_divisi`) REFERENCES `divisi` (`id_divisi`),
  ADD CONSTRAINT `biodata_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `publik_user` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `portofolio`
--
ALTER TABLE `portofolio`
  ADD CONSTRAINT `portofolio_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `publik_user` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `post_kategori`
--
ALTER TABLE `post_kategori`
  ADD CONSTRAINT `post_kategori_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`),
  ADD CONSTRAINT `post_kategori_ibfk_2` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
