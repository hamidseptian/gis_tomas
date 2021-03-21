-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Mar 2021 pada 15.14
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gis_tomas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kantibmas`
--

CREATE TABLE `kantibmas` (
  `id_kantibmas` int(3) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `id_pangkat` varchar(5) NOT NULL,
  `nrp` varchar(10) NOT NULL,
  `id_polres` varchar(5) NOT NULL,
  `id_polsek` varchar(5) NOT NULL,
  `desa` text NOT NULL,
  `kep_pengangkatan` varchar(35) NOT NULL,
  `password` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kantibmas`
--

INSERT INTO `kantibmas` (`id_kantibmas`, `nama`, `id_pangkat`, `nrp`, `id_polres`, `id_polsek`, `desa`, `kep_pengangkatan`, `password`) VALUES
(5, 'EFITRA', '5', '11', '1', '1', '1. BARUNG-BARUNG BELANTAI<br />\r\n2. BARUNG-BARUNG BELANTAI TENGAH<br />\r\n3. BARUNG-BARUNG BELANTAI TIMUR<br />\r\n4. BARUNG-BARUNG BELANTAI SELATAN', 'SKEP/25/IX 2010 TGL 23-09-2010', '11'),
(6, 'M. RIDWAN', '4', '79080950', '1', '1', '1. PULAU KARANG<br />\r\n2. JINANG KAMPUNG PANSUR AMPANG PULAI<br />\r\n3. SUNGAI PINANG ', 'KEP/45/IX/2014 TGL 23-09-2014', '123'),
(7, 'EDI SUHARTONO', '4', '80090199', '1', '1', '1. MANDEH <br />\r\n2. SUNGAI NYALO MUDIK AIA', 'KEP/04/II/2014 TGL 01-02-2014', '123'),
(8, 'TRI CANDRA BAHRI', '4', '85050457', '1', '1', '1. DUKU<br />\r\n2. DUKU UTARA', 'KEP/20/VI/2018 TGL 11-06-2018', '123'),
(9, 'BAYU SATRIA, SH', '1', '86081456', '1', '1', '1. BATU HAMPA <br />\r\n2. BATU HAMPA SELATAN', 'KEP/20/VI/2018 TGL 11-06-2018', '123'),
(10, 'NASRUL', '1', '83070392', '1', '1', '1. NAGGALO<br />\r\n2. SETARA NAGGALO', 'KEP/08/III/2017 TGL 03-03-2017', '123'),
(11, 'EVRIADI AMIN', '4', '82100797', '1', '1', '1. AMPANG PULAI <br />\r\n2. CEROCOK ANAU AMPANG PULAI', 'KEP/24/IX/2016 TGL 30-09-2016', '123'),
(12, 'ROMI MASRIDA', '1', '85010628', '1', '2', '1. KAPUH <br />\r\n2. KAPUH UTARA ', 'KEP/45/IX/2014 TGL 23-09-2014', '123'),
(13, 'ALMASRI', '4', '82020821', '1', '2', '1. SAWAH LAPEH PASAR BARU <br />\r\n2. ASAM KAMBA PASAR BARU ', 'KEP/29/XI/2016 TGL 29-11-2016', '123'),
(14, 'RADINAS ', '5', '65020020', '1', '2', '1. GURUN PANJANG BARAT ', 'KEP/04/II/2014 TGL 01-02-2014', '123'),
(15, 'PUTRANA DONI ', '4', '82090282', '1', '2', '1. KOTO BERAPAK <br />\r\n2. KAPELGAM KOTO BERAPAK ', 'KEP/20/V/2017 TGL 22-05-2017', '123'),
(16, 'RIKO SATRIA ', '1', '84020821', '1', '2', '1. KAPEH PANJI JAYA <br />\r\n2. AUR BEGALUNG <br />\r\n3. TALAOK ', 'KEP/08/II/2018 TGL 28-02-2018', '123'),
(17, 'SUFRYA NELDI ', '4', '81090597', '1', '2', '1. PASAR BARU <br />\r\n2. TANJUNG DURIAN PASAR BARU', 'KEP/04/II/2014 TGL 01-02-2014', '123'),
(18, 'YOZI SAPUTRA ', '4', '83070588', '1', '2', '1. KAPUJAN KOTO BERAPAK <br />\r\n2. KOTO BARU KOTO BERAPAK <br />\r\n3. KUBANG KOTO BERAPAK ', 'KEP/04/II/2014 TGL 01-02-2014', '123'),
(19, 'MASRIAL, SH', '4', '83040656', '1', '2', '1. GURUN PANJANG <br />\r\n2. GURUN PANJANG UTARA ', 'SKEP/02/I/2013 TGL 23-01-2013', '123'),
(20, 'OKI BUANA PUTRA', '1', '83040799', '1', '2', '1. GURUN PANJANG SELATAN ', 'KEP/04/II/2014 TGL 01-02-2014', '123'),
(21, 'AIDIL LUMANTAU', '4', '83040929', '1', '2', '1. API-API PASAR BARU', 'KEP/20/VI/2018 TGL 11-06-2018', '123'),
(22, 'ZULIADI', '4', '74070612', '1', '2', '1. LIMAU GADANG PANCUNG TABA <br />\r\n2. MUARO AIE <br />\r\n3. PANCUNG TABA ', 'KEP/21/VIII/2016 TGL 03-08-2016', '123'),
(23, 'GALTON HENRI ', '4', '79120261', '1', '2', '1. KOTO RANAH ', 'KEP/08/II/2018 TGL 28-02-2018', '123'),
(24, 'EKO KURNIADI, SH', '1', '87070812', '1', '2', '1. PULUK-PULUK <br />\r\n2. PULUK-PULUK SELATAN', 'SKEP/17/VIII/2011 TGL 19-08-2011', '123'),
(25, 'RIVO OLANDHA ', '3', '90030311', '1', '3', '1. PAINAN UTARA ', 'KEP/08/III/2017 TGL 03-03-2017', '123'),
(26, 'NARDIS', '6', '62030354', '1', '3', '1. PAINAN SELATAN <br />\r\n2. BUNGA PASANG <br />\r\n3. SALIDO ', 'KEP/45/IX/2014 TGL 23-09-2014', '123'),
(27, 'ARIF FURDAWAN ', '5', '69030260', '1', '3', '1. KOTO RAWANG <br />\r\n2. SALIDO SARI BULAN <br />\r\n3. TAMBANG', 'KEP/04/II/2014 TGL 01-02-2014', '123'),
(28, 'MARWAN ', '4', '61030026', '1', '3', '1. PAINAN TIMUR ', 'SKEP/23/VII/2009 TGL 13-07-2009', '123'),
(29, 'RISWANDI ', '4', '80070618', '1', '3', '1. SUNGAI GAYO LUMPO <br />\r\n2. SUNGAI SARIAK LUMPO <br />\r\n3. TARATAK TANGAH LUMPO ', 'KEP/04/II/2014 TGL 01-02-2014', '123'),
(30, 'JULFANDRITOS', '4', '81071067', '1', '3', '1. AMPANG TAREH LUMPO <br />\r\n2. AMPUAN LUMPO', 'KEP/45/IX/2014 TGL 23-09-2014', '123'),
(31, 'NIKO INDRAYANI', '4', '83080614', '1', '3', '1. LUMPO', 'KEP/08/III/2017 TGL 03-03-2017', '123'),
(32, 'MARDI YUSUF ', '4', '82060761', '1', '3', '1. SAGO <br />\r\n2. GUNUANG BUNGKUAK LUMPO', 'KEP/45/IX/2014 TGL 23-09-2014', '123'),
(33, 'AR SYAHRA WARDANI', '4', '83050701', '1', '3', '1. BATU KUNIK LUMPO <br />\r\n2. LIMAU GADANG LUMPO ', 'KEP/20/VI/2018 TGL 11-06-2018', '123'),
(34, 'ALDI ', '4', '81020849', '1', '3', '1. BUKIK KACIAK LUMPO <br />\r\n2. BALAI SINAYAN LUMPO ', 'KEP/45/IX/2014 TGL 23-09-2014', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_tomas`
--

CREATE TABLE `kategori_tomas` (
  `id_kategori` int(2) NOT NULL,
  `kategori_tomas` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori_tomas`
--

INSERT INTO `kategori_tomas` (`id_kategori`, `kategori_tomas`) VALUES
(1, 'Tokoh Masyaraka'),
(2, 'Tokoh Agama'),
(3, 'Tokoh Adat'),
(4, 'Tokoh Pemuda');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id_kecamatan` int(2) NOT NULL,
  `nama_kecamatan` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kecamatan`
--

INSERT INTO `kecamatan` (`id_kecamatan`, `nama_kecamatan`) VALUES
(1, 'Koto XI Tarusan'),
(3, 'Bayang'),
(4, 'IV Jurai'),
(5, 'Batang Kapas'),
(6, 'Sutera'),
(7, 'Lenggayang'),
(8, 'Ranah Pesisir'),
(9, 'Linggo Sari Baganti'),
(10, 'Pancung Soal'),
(11, 'Basa Ampek Balai Tapan'),
(12, 'Lunang Silaut');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id_kegiatan` int(11) NOT NULL,
  `nama_kegiatan` varchar(25) NOT NULL,
  `tanggal_dilaksanakan` date NOT NULL,
  `jam_pelaksanaan` time NOT NULL,
  `cover` text NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kegiatan`
--

INSERT INTO `kegiatan` (`id_kegiatan`, `nama_kegiatan`, `tanggal_dilaksanakan`, `jam_pelaksanaan`, `cover`, `deskripsi`) VALUES
(2, 'Makrab mahasiswa baru', '2012-12-12', '20:00:00', '200822033930gambarproject_untitled.jpg', '<p>di sitinjau cuyy</p>\r\n'),
(5, 'Mubes', '2019-07-21', '22:01:00', '200822090048rekam_medis.PNG', '<p>Acara Musayawarah Nasional IV PERMIKOMNAS (Perhimpunan Mahasiswa Informatika dan Komputer Nasional) adalah acara dimana berkumpulnya seluruh perwakilan Himpunan Mahasiswa Informatika dan Komputer se-Indonesia.</p>\r\n\r\n<p>Dalam event ini mahasiswa Informatika dan Komputer se-Indonesia bersatu untuk dapat memikirkan, membicarakan serta membahas rencana kerja baik jangka pendek, menengah dan jangka panjang yang forumnya dilakukan pada acara Musyawarah Nasional IV selama 4 (Empat) hari bertempat di Institut Teknologi Medan, 16-19 Nov 2015.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pelaksanaan kegiatan ini bertujuan untuk lebih memilih dan menetapkan struktur keorganisasian yang baru guna adanya regenerasi di tubuh organisasi PERMIKOMNAS.</p>\r\n\r\n<p>Sejumlah Pembicara seperti Menteri atau setingkat Menteri, Dirjen/Deputy atau Staff Ahli dan juga para pakar di Dunia IT baik Nasional maupun Internasional dalam event ini. Selain acara Musyawarah Nasional PERMIKOMNAS,kami juga mengadakan Perlombaan dan Seminar IT.</p>\r\n\r\n<p>Pelaksanaan kegiatan ini sesuai dengan dasar pembentukan PERMIKOMNAS sebagai wadah yang bertujuan ikut serta bertanggung jawab dalam meningkatkan prestasi mengajar dan belajar di kampus masing-masing.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dan pada kesempatan ini HIMASI STMIK-INDONESIA PADANG merupakan satu-satunya organisasi mahasiswa informatika dan komputer nasional yang mewakili Sumatera Barat dalam kegiatan ini.</p>\r\n\r\n<p>Sebelumnya, pada Munas II di Univ. Malikussaleh Aceh, HIMASI STMIK-INDONESIA satu-satunya organisasi mahasiswa informatika dan komputer yang mewakili KOPERTIS WIL. X (Sumbar, Riau, Jambi, Kep. Riau).</p>\r\n\r\n<p>Dan tahun ini HIMASI mengutus 4 orang anggotanya untuk beradu argumen dengan rekan-rekan mahasiswa informatika dan komputer se-Indonesia nantinya,diantara utusannya yaitu: RAHMAD SAPUTRA (Ketua Umum), RONNY PRIATAMA (Agt. Div. Infokom), PARLAUNGAN LUBIS (Koor. Div. Kealumnian), M.ASAD RABBANI (Agt. Div. Kealumnian) dan mereka disponsori untuk berangkat ke Medan oleh KOPERTIS WIL X, PT. SEMEN PADANG, BANK NAGARI dan InfoSumbar sebagai Media Partner.</p>\r\n\r\n<p>Dan kegiatan ini akan dihadiri oleh 800 org undangan (600 delegasi kampus, 100 undangan, 100 panitia) dan di dalam agenda kegiatan nantinya akan di buka langsung oleh KEMKOMINFO RI, DIKTI,Gubernur SUMUT dan Rektor ITM.&nbsp;<em><strong>(rel)</strong></em></p>\r\n'),
(6, 'PHP', '2019-07-21', '22:09:00', '200822090848cbt_us_sma5.PNG', '<h2>Sejarah PHP</h2>\r\n\r\n<p>Pada awalnya PHP merupakan kependekan dari <em>Personal Home Page</em> (Situs personal). PHP pertama kali dibuat oleh <a href=\"https://id.wikipedia.org/wiki/Rasmus_Lerdorf\">Rasmus Lerdorf</a> pada tahun <a href=\"https://id.wikipedia.org/wiki/1995\">1995</a>. Pada waktu itu PHP masih bernama <em>Form Interpreted</em> (FI), yang wujudnya berupa sekumpulan skrip yang digunakan untuk mengolah data formulir dari <a href=\"https://id.wikipedia.org/wiki/Web\">web</a>.</p>\r\n\r\n<p>Selanjutnya Rasmus merilis kode sumber tersebut untuk umum dan menamakannya <a href=\"https://id.wikipedia.org/w/index.php?title=PHP/FI&amp;action=edit&amp;redlink=1\">PHP/FI</a>. Dengan perilisan kode sumber ini menjadi <a href=\"https://id.wikipedia.org/wiki/Sumber_terbuka\">sumber terbuka</a>, maka banyak <a href=\"https://id.wikipedia.org/wiki/Pemrogram\">pemrogram</a> yang tertarik untuk ikut mengembangkan PHP.</p>\r\n\r\n<p>Pada November 1997, dirilis PHP/FI 2.0. Pada rilis ini, <em><a href=\"https://id.wikipedia.org/wiki/Interpreter\">interpreter</a></em> PHP sudah diimplementasikan dalam program <a href=\"https://id.wikipedia.org/wiki/C\">C</a>. Dalam rilis ini disertakan juga modul-modul ekstensi yang meningkatkan kemampuan PHP/FI secara signifikan.</p>\r\n\r\n<p>Pada tahun 1997, sebuah perusahaan bernama <a href=\"https://id.wikipedia.org/w/index.php?title=Zend&amp;action=edit&amp;redlink=1\">Zend</a> menulis ulang interpreter PHP menjadi lebih bersih, lebih baik, dan lebih cepat. Kemudian pada Juni 1998, perusahaan tersebut merilis interpreter baru untuk PHP dan meresmikan rilis tersebut sebagai <a href=\"https://id.wikipedia.org/w/index.php?title=PHP_3.0&amp;action=edit&amp;redlink=1\">PHP 3.0</a> dan singkatan PHP diubah menjadi <a href=\"https://id.wikipedia.org/wiki/Akronim_berulang\">akronim berulang</a> <em>PHP: Hypertext Preprocessing</em>.</p>\r\n\r\n<p>Pada pertengahan tahun 1999, Zend merilis interpreter PHP baru dan rilis tersebut dikenal dengan <a href=\"https://id.wikipedia.org/w/index.php?title=PHP_4.0&amp;action=edit&amp;redlink=1\">PHP 4.0</a>. PHP 4.0 adalah versi PHP yang paling banyak dipakai pada awal abad ke-21. Versi ini banyak dipakai disebabkan kemampuannya untuk membangun aplikasi web kompleks tetapi tetap memiliki kecepatan dan stabilitas yang tinggi.</p>\r\n\r\n<p>Pada <a href=\"https://id.wikipedia.org/wiki/Juni\">Juni</a> <a href=\"https://id.wikipedia.org/wiki/2004\">2004</a>, Zend merilis <a href=\"https://id.wikipedia.org/wiki/PHP_5.0\">PHP 5.0</a>. Dalam versi ini, inti dari interpreter PHP mengalami perubahan besar. Versi ini juga memasukkan model <a href=\"https://id.wikipedia.org/wiki/Pemrograman_berorientasi_objek\">pemrograman berorientasi objek</a> ke dalam PHP untuk menjawab perkembangan bahasa pemrograman ke arah paradigma berorientasi objek. Peladen web bawaan ditambahkan pada versi 5.4 untuk mempermudah pengembang menjalankan kode PHP tanpa menginstal peladen perangkat lunak.</p>\r\n\r\n<p>Versi terbaru dan stabil dari bahasa pemograman PHP saat ini adalah versi 7.0.16 dan 7.1.2 yang resmi dirilis pada tanggal 17 <a href=\"https://id.wikipedia.org/wiki/Februari\">Februari</a> 2017<a href=\"https://id.wikipedia.org/wiki/PHP#cite_note-7\">[7]</a>.</p>\r\n\r\n<h2>Sintaksis Dasar</h2>\r\n\r\n<h3>Pembatas</h3>\r\n\r\n<p>PHP hanya mengeksekusi kode yang ditulis dalam pembatas sebagaimana ditentukan oleh dasar sintaks PHP. Apapun di luar pembatas tidak diproses oleh PHP (meskipun teks PHP ini masih mengendalikan struktur yang dijelaskan dalam kode PHP. Pembatas yang paling umum adalah &quot;&lt;?php&quot; untuk membuka dan &quot;?&gt;&quot; Untuk menutup kode PHP.Tujuan dari pembatas ini adalah untuk memisahkan kode PHP dari kode di luar PHP, seperti <a href=\"https://id.wikipedia.org/wiki/HTML\">HTML</a>,<a href=\"https://id.wikipedia.org/wiki/JavaScript\">JavaScript</a>.</p>\r\n\r\n<h3>Variabel</h3>\r\n\r\n<p>Variabel diawali dengan <a href=\"https://id.wikipedia.org/wiki/Simbol\">simbol</a> <a href=\"https://id.wikipedia.org/wiki/Dolar\">dolar</a> <code>$</code>. Pada versi php PHP 5 diperkenalkan jenis isyarat yang memungkinkan <a href=\"https://id.wikipedia.org/wiki/Fungsi\">fungsi</a> untuk memaksa mereka menjadi parameter <a href=\"https://id.wikipedia.org/wiki/Objek\">objek</a> dari class tertentu, array, atau fungsi. Namun, jenis petunjuk tidak dapat digunakan dengan jenis skalar seperti <a href=\"https://id.wikipedia.org/wiki/Angka\">angka</a> atau <a href=\"https://id.wikipedia.org/wiki/String\">string</a>. Contoh <a href=\"https://id.wikipedia.org/wiki/Variabel\">variabel</a> dapat ditulis sebagai $nama_variabel.</p>\r\n\r\n<p>Penulisan fungsi, penamaan kelas, nama variabel adalah peka akan huruf besar (Kapital) dan huruf kecil . Kedua kutip ganda <code>&quot;&quot;</code> dari string memberikan kemampuan untuk interpolasi nilai variabel ke dalam string PHP. PHP menerjemahkan <a href=\"https://id.wikipedia.org/wiki/Baris\">baris</a> sebagai <a href=\"https://id.wikipedia.org/wiki/Spasi\">spasi</a>, dan pernyataan harus diakhiri dengan titik koma <code>;</code>.</p>\r\n\r\n<h3>Komentar</h3>\r\n\r\n<p>PHP memiliki 3 jenis sintaks sebagai komentar pada kode yaitu tanda blok <code> / * * / </code>, komentar 2 baris <code>//</code> Serta tanda pagar <code>#</code> digunakan untuk komentar satu baris. Komentar bertujuan untuk meninggalkan catatan pada kode PHP dan tidak akan diterjemahkan ke program.</p>\r\n\r\n<h3>Fungsi</h3>\r\n\r\n<p>Ratusan fungsi yang disediakan oleh PHP serta ribuan lainnya yang tersedia melalui berbagai ekstensi tambahan. fungsi-fungsi ini didokumentasikan dalam dokumentasi PHP. Namun, dalam berbagai tingkat pengembangan, kini memiliki berbagai konvensi penamaan. Sintaks fungsi adalah seperti di bawah ini:</p>\r\n'),
(7, 'sosialisasi covid', '2021-10-11', '20:46:00', '200910094807coverdicoding.PNG', '<p>untuk mengatasi covis</p>\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pangkat_kantibmas`
--

CREATE TABLE `pangkat_kantibmas` (
  `id_pangkat` int(2) NOT NULL,
  `nama_pangkat` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pangkat_kantibmas`
--

INSERT INTO `pangkat_kantibmas` (`id_pangkat`, `nama_pangkat`) VALUES
(1, 'BRIGADIR'),
(3, 'BRIPTU'),
(4, 'BRIPKA'),
(5, 'AIPDA'),
(6, 'AIPTU');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` int(11) NOT NULL,
  `pelapor` varchar(25) NOT NULL,
  `peristiwa` varchar(25) NOT NULL,
  `tkp` varchar(25) NOT NULL,
  `nohp` varchar(13) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `pelapor`, `peristiwa`, `tkp`, `nohp`, `status`) VALUES
(1, 'sdvsd', 'sdvsd', '34634', '34634', 'Baru'),
(2, 'wegv', 'wvsd', '23', '5235', 'Selesai'),
(4, 'cascas', 'ascs', 'ascsa', '235', 'Selesai'),
(5, 'Udin', 'begiini', 'rumah', '081232323221', 'Baru');

-- --------------------------------------------------------

--
-- Struktur dari tabel `polres`
--

CREATE TABLE `polres` (
  `id_polres` int(11) NOT NULL,
  `nama_polres` varchar(25) NOT NULL,
  `alamat` text NOT NULL,
  `lat` varchar(20) NOT NULL,
  `long` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `polres`
--

INSERT INTO `polres` (`id_polres`, `nama_polres`, `alamat`, `lat`, `long`) VALUES
(1, 'Polres Pesisir Selatan', '', '-0.9386395', '100.3538231');

-- --------------------------------------------------------

--
-- Struktur dari tabel `polsek`
--

CREATE TABLE `polsek` (
  `id_polsek` int(3) NOT NULL,
  `id_polres` varchar(5) NOT NULL,
  `id_kecamatan` varchar(5) NOT NULL,
  `nama_polsek` varchar(25) NOT NULL,
  `alamat` text NOT NULL,
  `lot` varchar(15) NOT NULL,
  `lang` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `polsek`
--

INSERT INTO `polsek` (`id_polsek`, `id_polres`, `id_kecamatan`, `nama_polsek`, `alamat`, `lot`, `lang`) VALUES
(2, '1', '3', 'Polsek Bayang', 'Ps. Baru, Bayang, Kabupaten Pesisir Selatan, Sumatera Barat 25652', '-1.30319', '100.51297'),
(3, '1', '4', 'Polsek IV Jurai', 'Jl. Pacuan Salido Painan, Painan, IV Jurai, Kabupaten Pesisir Selatan, Sumatera Barat 25651', '-1.32656', '100.56721'),
(4, '1', '5', 'Polsek Batang Kapas', 'Jl. Raya Limau Binjai, Iv Koto Hilie, Batang Kapas, Kabupaten Pesisir Selatan, Sumatera Barat 25661', '-1.45430', '100.59799'),
(5, '1', '6', 'Polsek Sutera', 'Jl. Pasar Surantih, Surantih, Sutera, Kabupaten Pesisir Selatan, Sumatera Barat 25662', '-1.60616', '100.64490'),
(6, '1', '7', 'Polsek Lenggayang', 'Jalan Raya Padang - Air Haji, Nagari Kambang Barat, Kecamatan Lengayang, Kabupaten Pesisir Selatan, Sumatera Barat, 25663', '-1.68784', '100.70667'),
(7, '1', '8', 'Polsek Ranah Pesisir', 'Jalan Raya Padang - Air Haji, Nagari Pelangai, Kecamatan Ranah Pesisir, Pelangai, Ranah Pesisir, Kabupaten Pesisir Selatan, Sumatera Barat 25666', '-1.79649', '100.83837'),
(8, '1', '9', 'Polsek Linggo Sari Bagant', 'Jl. Padang - Muko-Muko No.17, Padang XI Punggasan, Linggo Sari Baganti, Kabupaten Pesisir Selatan, Sumatera Barat 25668', '-1.89202', '100.86560'),
(9, '1', '10', 'Polsek Pancung Soal', 'Jl. Penambah, Inderapura Tim., Airpura, Kabupaten Pesisir Selatan, Sumatera Barat 25673', '-2.04154', '100.94723'),
(10, '1', '11', 'Polsek Tapan', 'Ps. Tapan, Basa Ampek Balai Tapan, Kabupaten Pesisir Selatan, Sumatera Barat 25673', '-2.15737', '101.08055');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tengah_map`
--

CREATE TABLE `tengah_map` (
  `id` int(11) NOT NULL,
  `lot` varchar(15) NOT NULL,
  `lang` varchar(15) NOT NULL,
  `zoom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tengah_map`
--

INSERT INTO `tengah_map` (`id`, `lot`, `lang`, `zoom`) VALUES
(0, '-1.34734', '100.57493', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tomas`
--

CREATE TABLE `tomas` (
  `id_tomas` int(3) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `pekerjaan` varchar(25) NOT NULL,
  `alamat` text NOT NULL,
  `nohp` varchar(20) NOT NULL,
  `kategori_tomas` varchar(5) NOT NULL,
  `id_kecamatan` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tomas`
--

INSERT INTO `tomas` (`id_tomas`, `nama`, `pekerjaan`, `alamat`, `nohp`, `kategori_tomas`, `id_kecamatan`) VALUES
(2, 'ROBI BINUR', 'Swasta', 'Siguntur ', '0852-7420-652', '4', '1'),
(3, 'ERMAN', 'Wali Nagari', 'Taratak', '0813-1546-800', '1', '1'),
(4, 'BASRIAL', 'Wali Nagari', 'Sungai Lundang', '0852-6586-557', '1', '1'),
(5, 'SHARIL', 'Tani', 'Taratak', '0812-7716-305', '2', '1'),
(6, 'TAMAR Imam Mudo', 'Tani', 'Taratak', '', '3', '1'),
(7, 'AlI AMAS Dt Rj Indo', 'Tani', 'Taratak', '0823-8483-283', '3', '1'),
(8, 'BISAR TOLANY', 'Wiraswasta', '', '0813-7497-375', '4', '1'),
(9, 'FEBRINALDI', 'POLRI', 'Aspol Sek Tarusan', '0852-6372-044', '4', '1'),
(10, 'ARPILUS', 'Wali Nagari', 'Br Br Belantai', '0823-8977-827', '1', '1'),
(11, 'AIDIL USMAN', 'Wali Nagari', 'Koto Pulai', '0812-6647-050', '1', '1'),
(12, 'H. AZWAR MUNAF', 'Wiraswasta', 'Koto Pulai', '', '2', '1'),
(13, 'JON KENEDI', 'PNS', 'Pasar Br Br Belantai', '', '2', '1'),
(14, 'WELDI Rj MAGEK', 'Tani', 'Pasar Br Br Belantai', '0813-7442-923', '3', '1'),
(15, 'ANDRI SUTAN SAIDI', 'Tani', '', '0812-7778-133', '3', '1'),
(16, 'ANDI', 'Dagang', 'Br Br Belantai', '0813-6532-230', '4', '1'),
(17, 'ARI ANGGARA', 'Polri', 'Painan', '0852-7204-123', '4', '1'),
(18, 'DARMAIZON', 'Wali Nagari', 'Duku', '0821-7225-946', '1', '1'),
(19, 'DONI', 'Wiraswasta', 'Duku', '0812-7662-652', '1', '1'),
(20, 'AZHARI', 'Wiraswasta', 'Duku', '0813-7467-106', '1', '1'),
(21, 'TAMSIR TAMAR', 'PNS', 'Duku', '', '2', '1'),
(22, 'YUSDAL EFENDI', 'Wiraswasta', 'Duku', '0812-6602-552', '3', '1'),
(23, 'FIRDIIS', 'Agt DPRD', 'Duku', '0812-9185-212', '3', '1'),
(24, 'ETRIADI', 'Wiraswasta', 'Duku', '0821-7050-185', '4', '1'),
(25, 'ADI GUNA', 'Wiraswasta', 'Duku', '0813-7287-332', '4', '1'),
(26, 'SAIPUL', 'Wali Nagari', 'Sawah laweh', '0823-9133-940', '1', '1'),
(27, 'ANDI HASAN', 'Wali Nagari', 'Batu Hampar', '0853-6303-235', '1', '1'),
(28, 'GUNAWAN, S.Ag', 'Wiraswasta', 'Batu Hampar', '', '2', '1'),
(29, 'FAHMI LATIF BGD MALIN', 'Wiraswasta', 'Batu Hampar', '', '2', '1'),
(30, 'PARLIS Dt Bgd Nan Gdg', 'Wiraswasta', 'Batu Hampar', '0812-6666-234', '3', '1'),
(31, 'Basri Akhir Dt Sati', 'Wiraswasta', 'Batu Hampar', '', '3', '1'),
(32, 'DORIS WANTO', 'Wiraswasta', 'Batu Hampar', '0812-7540-104', '4', '1'),
(33, 'PEN', 'Wiraswasta', 'Batu Hampar', '0812-1888-999', '4', '1'),
(34, 'SURYADI CHAN', 'Wali Nagari', 'Nanggalo', '0822-8535-150', '1', '1'),
(35, 'SESLIANI', 'Wali Nagari', 'Teluk Raya', '0823-8482-959', '1', '1'),
(36, 'IZHAR AHMAD', 'Swasta', 'Sungai Tawa', '', '2', '1'),
(37, 'ALIWAS, S.Pdi', 'PNS', 'Sungai Tawa', '', '2', '1'),
(38, 'AKHIAR Dt Bgd MOLE', 'Agt DPRD', 'Padang', '0852-7425-747', '3', '1'),
(39, 'YASRIL Dt. Rj MUDO', 'Wiraswsta', 'Simpang 3 Jinang', '0812-6615-887', '3', '1'),
(40, 'DEFI AFRITA', 'Kepala Kampung', 'Kp Pasar Sp Tigo', '0852-6322-571', '4', '1'),
(41, 'MULYADI', 'Kepala Kampung', 'Kp Nanggalo Dalam', '0812-6610-436', '4', '1'),
(42, 'EZMAN', 'Wali Nagari', 'Gurun Panjang Kapuh', '0852-6373-766', '1', '1'),
(43, 'YAN KENEDI', 'Wiraswasta', 'Teluk Raya', '0853-6334-440', '1', '1'),
(44, 'KARLI', 'Wiraswasta', 'Kapuh', '0812-6708-038', '2', '1'),
(45, 'SYAIPUL AZWAR', 'PNS', 'Sungai Talang', '', '2', '1'),
(46, 'MAWARDI Dt. Rj MDR', 'Wiraswasta', 'Kapuh', '0852-6399-950', '3', '1'),
(47, 'ASLILEM Dt. Rj JOHAN', 'Pens PNS', 'Gurun Panjang Kapuh', '0812-7792-994', '3', '1'),
(48, 'ERI MARZON', 'PNS', 'Sungai Talang', '0852-7422-352', '4', '1'),
(49, 'HARBED', 'Wiraswasta', 'Sungai Talang', '0823-8559-949', '4', '1'),
(50, 'EFRIDINAL', 'Wali Nagari', 'Duku', '0853-6312-187', '1', '1'),
(51, 'SULYADI, S.Pd', 'PNS', 'Ampang Pulai', '0813-7405-616', '1', '1'),
(52, 'AFRIDAL', 'Nelayan', 'Ampang Pulai', '0813-7462-006', '2', '1'),
(53, 'ZAINAL BUSTAMI', 'Wiraswasta', 'Ampang Pulai', '', '2', '1'),
(54, 'JONI APRIL Dt MAHA RJ', 'PNS', 'Nanggalo', '0852-7459-230', '3', '1'),
(55, 'ASRIJAL Dt Rj Nan Sati', 'Wiraswasta', 'Anau Carocok', '0813-7216-377', '3', '1'),
(56, 'ADISMAN, S.Pd', 'PNS', 'Batu Kalang', '0821-7144-460', '4', '1'),
(57, 'AZLI BGD ALAM', 'Wali Nagari', 'Sungai Pinang', '0853-7447-435', '1', '1'),
(58, 'GULFANDRA', 'Kepala Kampung', 'Sungai Pinang', '0822-9893-395', '1', '1'),
(59, 'KAWAWIR', 'P3NTR', 'Sungai Pinang', '', '2', '1'),
(60, 'ZARMAN Dt BDR SATI', 'Nelayan', 'Sungai Pinang', '0813-7431-800', '3', '1'),
(61, 'ERDI. K Dt GAMUAK', 'Polri ', 'Ampang Pulai', '0812-6692-352', '3', '1'),
(62, 'KARDI', 'Wiraswasta', 'Sungai Pinang', '0812-6128-730', '4', '1'),
(63, 'DAHLIR', 'Wiraswasta', 'Sungai Nyalo', '0853-5518-837', '1', '1'),
(64, 'MERI MEFRI', 'Wiraswasta', 'Sungai Nyalo', '0823-8482-947', '1', '1'),
(65, 'NAFRIL Dt Bdr Sati', 'Wiraswasta', 'Sungai Nyalo', '0853-7464-882', '3', '1'),
(66, 'SARIS', 'Wiraswasta', 'Sungai Nyalo', '0812-6646-510', '3', '1'),
(67, 'SAIDUL', 'Wiraswasta', 'Sungai Nyalo', '0853-7536-229', '4', '1'),
(68, 'ANDI REFLINDO', 'Wali Nagari', 'Gurun Panjang', '\"082385846796', '1', '2'),
(69, 'ALFITRA JHONI ANDRI', 'Paur Pemerintahan', 'Gurun Panjang ', '\"082285350866', '1', '2'),
(70, 'ADE PUTRA UTAMA, S.PdI', 'Ulama', 'Gurun Panjang ', '\"085376169979', '2', '2'),
(71, 'PRIMA YASRIDA, S.PdI', 'Ulama', 'Gurun Panjang ', '\"082387591161', '2', '2'),
(72, 'MARJONI Dt MANTARI GAGAH', 'Ninik Mamak', 'Gurun Panjang ', '\"081374691960', '3', '2'),
(73, 'ANDI YUSRAFIL Dt Rajo Mud', 'Ninik Mamak', 'Gurun Panjang ', '\"085274556200', '3', '2'),
(74, 'DULHARIS', 'Pemuda', 'Gurun Panjang ', '\"085363648507', '4', '2'),
(75, 'ALIRMAN', 'Pemuda', 'Gurun Panjang ', '\"082382009803', '4', '2'),
(76, 'AMRAN BUSMANTO Dt Rajo Le', 'Wali Nagari', 'Gurun Panjang Barat', '\"082387753189', '1', '2'),
(77, 'ABDUL AZIZ', 'Kau Pemerintahan ', 'Gurun Panjang Barat', '\"082385868778', '1', '2'),
(78, 'ALI BAKRI', 'Ulama', 'Gurun Panjang Barat', '\"082387651128', '2', '2'),
(79, 'Drs. H. SYAFRIZAL', 'Ulama', 'Gurun Panjang Barat', '\"085274877365', '2', '2'),
(80, 'BUSMANTO Dt Rajo Lelo', 'Ninik Mamak', 'Gurun Panjang Barat', '\"082387753189', '3', '2'),
(81, 'NASRUL Dt Medan', 'Ninik Mamak', 'Gurun Panjang Barat', '\"082171534477', '3', '2'),
(82, 'NOFRIZAL, SH', 'Pemuda', 'Gurun Panjang Barat', '', '4', '2'),
(83, 'SYAFRIANTO, ST', 'Pemuda', 'Gurun Panjang Barat', '\"081267655346', '4', '2'),
(84, 'ASRIZAL', 'Wali Nagari', 'Koto Ranah', '\"085263355980', '1', '2'),
(85, 'FAHRIZAL INDRA, S.Sos', 'Sekretaris Nagari', 'Koto Ranah', '\"082391174747', '1', '2'),
(86, 'ZAINUL WARAS', 'Ulama', 'Koto Ranah', '\"081374807795', '2', '2'),
(87, 'ALI AMRI, S.PdI', 'Ulama', 'Koto Ranah', '\"081363448089', '2', '2'),
(88, 'MAHYUNAR Dt BAGINDO RAJO', 'Ninik Mamak', 'Koto Ranah', '\"085274248256', '3', '2'),
(89, 'MUKTIAS Dt Rajo Sampono', 'Ninik Mamak', 'Koto Ranah', '\"081278423397', '3', '2'),
(90, 'WIHARSO CANDRA', 'Pemuda', 'Koto Ranah', '\"082376238301', '4', '2'),
(91, 'RIKI EKA PUTRA', 'Pemuda', 'Koto Ranah', '\"082389211222', '4', '2'),
(92, 'H. SUHERMAN. MK, Bsc', 'Wali Nagari', 'Puluik-puluik', '\"08126745509', '1', '2'),
(93, 'KASRIL', 'Sekretaris Nagari', 'Puluik-puluik', '\"082388281319', '1', '2'),
(94, 'FAHRIAL AMIR, Bsc', 'Ulama', 'Puluik-puluik', '\"08228558472', '2', '2'),
(95, 'EKMARINI, S.PdI', 'Ulama', 'Puluik-puluik', '\"08228558472', '2', '2'),
(96, 'DARMAN Dt PADOBASI', 'Ninik Mamak', 'Puluik-puluik', '\"081363037319', '3', '2'),
(97, 'GUSRIAL Dt BANDARO SATI', 'Ninik Mamak', 'Puluik-puluik', '\"085274114357', '3', '2'),
(98, 'MASRIL', 'Pemuda', 'Puluik-puluik', '\"082171144839', '4', '2'),
(99, 'MASRUL', 'Pemuda', 'Puluik-puluik', '\"081266136245', '4', '2'),
(100, 'ZAINUL ARIFIN ', 'Wali Nagari', 'Gurun Panjang Utara ', '81267153945', '1', '2'),
(101, 'NUR AFRIWAL', 'Kaur Kemasyarakatan', 'Gurun Panjang Utara ', '82385159484', '1', '2'),
(102, 'SUARDI, S.Ag', 'Ulama', 'Gurun Panjang Utara ', '81374658336', '2', '2'),
(103, 'Drs. JUMADI', 'Ulama', 'Gurun Panjang Utara ', '', '2', '2'),
(104, 'ERIZAL DT BANDARO KOTO', 'Ninik Mamak', 'Gurun Panjang Utara ', '85263288943', '3', '2'),
(105, 'H. ERIZAL', 'Ninik Mamak', 'Gurun Panjang Utara ', '82377594678', '3', '2'),
(106, 'SAFIRMAN', 'Pemuda', 'Gurun Panjang Utara ', '82387258187', '4', '2'),
(107, 'OKMALDI', 'Pemuda', 'Gurun Panjang Utara ', '81374904765', '4', '2'),
(108, 'EVON RIADI', 'Wali Nagari', 'Pasar Baru', '81378112721', '1', '2'),
(109, 'DENI INDRIANI, S.PdI', 'Kaur Kemasyarakatan', 'Pasar Baru', '81266502002', '1', '2'),
(110, 'JAFRI, S.Ag', 'Ulama', 'Pasar Baru', '', '2', '2'),
(111, 'MASRIL, S.Ag', 'Ulama', 'Pasar Baru', '85263353102', '2', '2'),
(112, 'SAHRIAL IDRIS, S.Pd', 'Ninik Mamak', 'Pasar Baru', '85365629675', '3', '2'),
(113, 'YULHABDI, MSc', 'Ninik Mamak', 'Pasar Baru', '85355405438', '3', '2'),
(114, 'YULI HARDI, HB', 'Pemuda', 'Pasar Baru', '', '4', '2'),
(115, 'FIRMAN', 'Pemuda', 'Pasar Baru', '81270345897', '4', '2'),
(116, 'DEDI NOFRIANTO', 'Wali Nagari', 'Koto Baru', '81261777797', '1', '2'),
(117, 'RITA HARIANTI', 'Kaur Kemasyarakatan', 'Koto Baru', '85272531828', '1', '2'),
(118, 'AYUSAR', 'Ulama', 'Koto Baru', '', '2', '2'),
(119, 'HERMANTO', 'Ulama', 'Koto Baru', '', '2', '2'),
(120, 'TESMI DT ACEH', 'Ninik Mamak', 'Koto Baru', '81275504140', '3', '2'),
(121, 'YUSDIR DT PINTU BASA', 'Ninik Mamak', 'Koto Baru', '', '3', '2'),
(122, 'BUSTANIL', 'Pemuda', 'Koto Baru', '85363334463', '4', '2'),
(123, 'YONDA', 'Pemuda', 'Koto Baru', '85376704561', '4', '2'),
(124, 'INDRA SUHERMAN ', 'Wali Nagari', 'Kubang Koto Berapak', '85365626343', '1', '2'),
(125, 'WELLA SILVIKA, S.PdI', 'Kaur Kemasyarakatan', 'Kubang Koto Berapak', '', '1', '2'),
(126, 'AFRIZAL.T', 'Ulama', 'Kubang Koto Berapak', '', '2', '2'),
(127, 'H. AMIR', 'Ulama', 'Kubang Koto Berapak', '', '2', '2'),
(128, 'H. AMIR DT BAGINDO RAJO', 'Ninik Mamak', 'Kubang Koto Berapak', '81386510239', '3', '2'),
(129, 'YUSMARDI DT BANDARO KAYO', 'Ninik Mamak', 'Kubang Koto Berapak', '82169691007', '3', '2'),
(130, 'MARJULIADI', 'Pemuda', 'Kubang Koto Berapak', '85264556681', '4', '2'),
(131, 'ALHADIT', 'Pemuda', 'Kubang Koto Berapak', '85219197120', '4', '2'),
(132, 'BAHRUN', 'Wali Nagari', 'Kapujan', '82382119810', '1', '2'),
(133, 'DINI RAHMANITA', 'Kaur Kemasyarakatan', 'Kapujan', '', '1', '2'),
(134, 'WIRATMAN', 'Ulama', 'Kapujan', '81374316168', '2', '2'),
(135, 'FEBRINO ABDULLAH', 'Ulama', 'Kapujan', '', '2', '2'),
(136, 'AKMAL DT RAJO ALAM', 'Ninik Mamak', 'Kapujan', '85272721404', '3', '2'),
(137, 'DARLIS DT KAYO', 'Ninik Mamak', 'Kapujan', '81317518979', '3', '2'),
(138, 'REKI ALFADINATA', 'Pemuda', 'Kapujan', '', '4', '2'),
(139, 'AMRIL', 'Pemuda', 'Kapujan', '81374744762', '4', '2'),
(140, 'H. SYAMSURIZAL, M.Hum', 'Wali Nagari', 'Talaok', '81267551331', '1', '2'),
(141, 'DONO AFRIANTO, S.Hi', 'Sekretaris Nagari', 'Talaok', '', '1', '2'),
(142, 'BUYA DARWIS', 'Ulama', 'Talaok', '', '2', '2'),
(143, 'KIKI DESETRI, S.PdI', 'Ulama', 'Talaok', '', '2', '2'),
(144, 'NANIS DT SAMPONO KAYO', 'Ninik Mamak', 'Talaok', '', '3', '2'),
(145, 'DARTONI MISKA', 'Ninik Mamak', 'Talaok', '', '3', '2'),
(146, 'DIAN SUNETRA', 'Pemuda', 'Talaok', '', '4', '2'),
(147, 'ILWARDI', 'Pemuda', 'Talaok', '81270678681', '4', '2'),
(148, 'ISWANDI', 'Wali Nagari', 'Kapeh Panji Jaya', '85274151458', '1', '2'),
(149, 'NASRIO NEDI', 'Kaur Kemasyarakatan', 'Kapeh Panji Jaya', '821691117', '1', '2'),
(150, 'JON HARMEN, S.Ag. MA', 'Ulama', 'Kapeh Panji Jaya', '85274539026', '2', '2'),
(151, 'ZAINUL MUNAF', 'Ulama', 'Kapeh Panji Jaya', '', '2', '2'),
(152, 'SUPRIADI DT R KAYO BASA', 'Ninik Mamak', 'Kapeh Panji Jaya', '', '3', '2'),
(153, 'BUAMARUDIN', 'Ninik Mamak', 'Kapeh Panji Jaya', '', '3', '2'),
(154, 'IRMANTO', 'Pemuda', 'Kapeh Panji Jaya', '', '4', '2'),
(155, 'JONNEDI', 'Pemuda', 'Kapeh Panji Jaya', '85274539545', '4', '2'),
(156, 'AWALUDIN', 'Wali Nagari', 'Aur Begalung', '85363143268', '1', '2'),
(157, 'DARIASMAN', 'Kaur Kemasyarakatan', 'Aur Begalung', '', '1', '2'),
(158, 'Drs. SUDIRMAN', 'Ulama', 'Aur Begalung', '', '2', '2'),
(159, 'DODI RAHMATUL IKHLAS', 'Ulama', 'Aur Begalung', '', '2', '2'),
(160, 'IRMAN DT RAJO PANJANG', 'Ninik Mamak', 'Aur Begalung', '', '3', '2'),
(161, 'MASDI SINGO MARAJO', 'Ninik Mamak', 'Aur Begalung', '', '3', '2'),
(162, 'BUYUANG ADO', 'Pemuda', 'Aur Begalung', '', '4', '2'),
(163, 'ILHAMDANI', 'Pemuda', 'Aur Begalung', '85263351991', '4', '2'),
(164, 'MARTODI, SO.Sos', 'Wali Nagari', 'Painan Selatan', '\"082384688666', '1', '3'),
(165, 'TOMI ESTRADA, SE', 'Sekretaris Wali', 'Painan Selatan', '\"085278391214', '1', '3'),
(166, 'H. Yuzar Dt Rajo Panjang', 'Ulama', 'Painan Selatan', '\"081363214738', '2', '3'),
(167, 'Andi Yanto, S.Pdi', 'Ulama', 'Painan Selatan', '\"082284509374', '2', '3'),
(168, 'H. YAHUDIN', 'Ninik Mamak', 'Painan Selatan', '', '3', '3'),
(169, 'Mulyandri, ST Dt Rj Intan', 'Ninik Mamak', 'Nagari Salido', '\"081266493838', '3', '3'),
(170, 'Joniwar', 'Pemuda', 'Sungai Nipah', '\"085376179975', '4', '3'),
(171, 'Rizki Fiandi, SH', 'Pemuda', 'Nagari Salido', '', '4', '3'),
(172, 'HEN ARIF BOY', 'Wali Nagari', 'Sago ', '\"081374727922', '1', '3'),
(173, 'AIDIL KH MINGKUDUN ', 'Wali Nagari', 'Gunung Bugkuk', '\"081363114501', '1', '3'),
(174, 'Suharman PW. S.Pdi. SH.i ', 'Ulama', 'Sago ', '\"085363335222', '2', '3'),
(175, 'Samsurizal', 'Ulama', 'Gunung Bugkuk', '\"082288293044', '2', '3'),
(176, 'H. Ali Subur Boy, SH', 'Ninik Mamak', 'Sago ', '\"082388472300', '3', '3'),
(177, 'Kamar Dt Rajo Mulie', 'Ninik Mamak', 'Gunung Bugkuk', '\"082283019428', '3', '3'),
(178, 'Asril Aprino', 'Pemuda', 'Sago ', '\"081266277777', '4', '3'),
(179, 'Rahmat', 'Pemuda', 'Gunung Bugkuk', '\"082388651844', '4', '3'),
(180, 'SYAFRI DODI, S.PdI', 'Wali Nagari', 'Bukit Kecil', '\"081276500104', '1', '3'),
(181, 'DARMALIS', 'Wali Nagari', 'Balai Sinayan', '\"082381997656', '1', '3'),
(182, 'Yunia Putra Wira. SPdI', 'Ulama', 'Bukit Kecil', '\"083287590523', '2', '3'),
(183, 'Febri, Spdi', 'Ulama', 'Balai Sinayan', '\"082284560190', '2', '3'),
(184, 'Juswardi Dt R Bandaro', 'Ninik Mamak', 'Bukit Kecil', '\"085263168723', '3', '3'),
(185, 'Syafril SH.I Dt R Batuah', 'Ninik Mamak', 'Balai Sinayan', '\"081371424807', '3', '3'),
(186, 'Ali Udin', 'Pemuda', 'Bukit Kecil', '\"085375697423', '4', '3'),
(187, 'Roni Nofriandi', 'Pemuda', 'Balai Sinayan', '\"085271664214', '4', '3'),
(188, 'SYAHRIAL. R', 'Wali Nagari', 'Ampuan ', '\"082389445943', '1', '3'),
(189, 'SUHARDI, Amd', 'Wali Nagari', 'Lumpo', '\"085274229622', '1', '3'),
(190, 'Irwansyah . Spdi', 'Ulama', 'Ampuan ', '\"081363666405', '2', '3'),
(191, 'Andra Lisman, S.Pdi', 'Ulama', 'Lumpo', '\"082387323257', '2', '3'),
(192, 'Murjis', 'Ninik Mamak', 'Ampuan ', '', '3', '3'),
(193, 'Busawar, S.Pd', 'Ninik Mamak', 'Lumpo', '\"082389213924', '3', '3'),
(194, 'Mulyadi', 'Pemuda', 'Ampuan ', '\"081363048001', '4', '3'),
(195, 'Tedja Sukmana', 'Pemuda', 'Lumpo', '\"081267994949', '4', '3'),
(196, 'NOVA RITA', 'Wali Nagari', 'Koto Rawang', '\"081267448410', '1', '3'),
(197, 'DISEL MANTO', 'Sekretaris Wali', 'Koto Rawang', '\"085307560311', '1', '3'),
(198, 'SIKAL GUNAN RIANTO, S.Pdi', 'Ulama', 'Koto Rawang', '\"085355618892', '2', '3'),
(199, 'IZUL NAFLIS', 'Ulama', 'Koto Rawang', '\"082389166941', '2', '3'),
(200, 'ASRIL K, S.Pdi. MPd Dt Rj', 'Ninik Mamak', 'Koto Rawang', '', '3', '3'),
(201, 'SYAFRIZAL', 'Ninik Mamak', 'Koto Rawang', '\"081363980033', '3', '3'),
(202, 'ALIMUNAR', 'Pemuda', 'Koto Rawang', '\"082392092765', '4', '3'),
(203, 'MISRIL', 'Pemuda', 'Koto Rawang', '', '4', '3'),
(204, 'AJRAL', 'Wali Nagari', 'Bunga Pasang', '\"085274737331', '1', '3'),
(205, 'NOVALITA', 'Kaur Pemerintahan ', 'Bunga Pasang', '\"081266832414', '1', '3'),
(206, 'JONI CHAN. P. S.PdI', 'Ulama', 'Bunga Pasang', '\"081363523929', '2', '3'),
(207, 'MASDI. S.PdI', 'Ulama', 'Bunga Pasang', '\"081365412748', '2', '3'),
(208, 'BURHANUDI Dt PUTIAH', 'Ninik Mamak', 'Bunga Pasang', '\"082283464117', '3', '3'),
(209, 'ALI AMRAN Dt R Kayo Basi', 'Ninik Mamak', 'Bunga Pasang', '\"08129859829', '3', '3'),
(210, 'MAHDI', 'Pemuda', 'Bunga Pasang', '\"081363385726', '4', '3'),
(211, 'ARDI JUNAIDI', 'Pemuda', 'Bunga Pasang', '\"082392478787', '4', '3'),
(212, 'FAISYAL. S.Sos', 'Wali Nagari', 'Painan ', '\"085374250065', '1', '3'),
(213, 'BASWARDI', 'Sekretaris Wali', 'Painan', '\"081374656905', '1', '3'),
(214, 'MASRIL. S.Ag', 'Ulama', 'Painan', '', '2', '3'),
(215, 'SAFRIZAL. S.Ag', 'Ulama', 'Painan', '\"082388204460', '2', '3'),
(216, 'H. ERMANTO Dt. Sampono Ka', 'Ninik Mamak', 'Painan ', '\"01374974348', '3', '3'),
(217, 'KAISIR Dt. Rajo Nan Sati', 'Ninik Mamak', 'Painan', '\"081266265937', '3', '3'),
(218, 'SYAFRIZAL', 'Pemuda', 'Painan ', '\"082171872914', '4', '3'),
(219, 'ARMAN NUR', 'Pemuda', 'Painan ', '\"082381322666', '4', '3'),
(220, 'Nasrul dt R Bagindo', 'Wali Nagari', 'Limau Gadang Lumpo', '\"082174332819', '1', '3'),
(221, 'ALWENDRI ANAS', 'Wali Nagari', 'Teratak Tangah Lumpo', '\"081267655309', '1', '3'),
(222, 'Alfi Rahmi. S.PdI', 'Ulama', 'Limau Gadang Lumpo', '\"085274872017', '2', '3'),
(223, 'RUSDARLIM. S.PdI', 'Ulama', 'Batu Kunik Lumpo', '\"081267616808', '2', '3'),
(224, 'ZULFIAR Dt R MUDO', 'Ninik Mamak', 'Limau Gadang Lumpo', '\"082386710257', '3', '3'),
(225, 'AMRIL SYAM R DT BAS', 'Ninik Mamak', 'Batu Kunik Lumpo', '\"085381994767', '3', '3'),
(226, 'M. TAHER', 'Pemuda', 'Batu Kunik Lumpo', '\"085272434364', '4', '3'),
(227, 'DATMIL', 'Pemuda', 'Teratak Tangah Lumpo', '\"081261393535', '4', '3'),
(228, 'AFRIANTO. JR', 'Wali Nagari', 'Sungai Gayo', '85375727472', '1', '3'),
(229, 'AL ERMON', 'Ketua Bamus', 'Sungai Gayo', '', '1', '3'),
(230, 'SAMSIDIR, PdI', 'Ulama', 'Sungai Gayo', '', '2', '3'),
(231, 'GONTRALIS', 'Ulama', 'Sungai Gayo', '', '2', '3'),
(232, 'WESWER DT R INTAN', 'Ninik Mamak', 'Sungai Gayo', '', '3', '3'),
(233, 'SIUH DT BANDARO MUDO', 'Ninik Mamak', 'Sungai Gayo', '', '3', '3'),
(234, 'NOPI NOL EDI', 'Pemuda', 'Sungai Gayo', '81267884588', '4', '3'),
(235, 'MIRDAROZA', 'Pemuda', 'Sungai Gayo', '85364074274', '4', '3'),
(236, 'BEN SUHANDA,SH ', 'Wali Nagari', 'Koto Nan Duo', '81364682737', '1', '4'),
(237, 'MELA PUTRI SARI ', 'Kaur Pembangunan ', 'Koto Nan Duo', '81378986392', '1', '4'),
(238, 'AYU RAHAYU S.Pdi ', 'Ulama', 'Koto Nan Duo', '85365623663', '2', '4'),
(239, 'TAPA?I ', 'Ulama', 'Koto Nan Duo', '85268987908', '2', '4'),
(240, 'DALJAMUNI DT.NAN SATI ', 'Ninik Mamak', 'Koto Nan Duo', '', '3', '4'),
(241, 'ASRIL DT.RAJO BASA', 'Ninik Mamak', 'Koto Nan Duo', '', '3', '4'),
(242, 'ONRI ADI', 'Pemuda', 'Koto Nan Duo', '', '4', '4'),
(243, 'IMDA YUZA', 'Pemuda', 'Koto Nan Duo', '', '4', '4'),
(244, 'SUMARDI', 'Wali Nagari', 'Tuik', '82387642501', '1', '4'),
(245, 'MARDONI INFANTRI', 'Kepala Kampung', 'Tuik', '81266677800', '1', '4'),
(246, 'IMAM ZAINIR', 'Ulama', 'Tuik', '', '2', '4'),
(247, 'LUKMAN', 'Ulama', 'Tuik', '', '2', '4'),
(248, 'ULIL AMRI DT R LENGGANG', 'Ninik Mamak', 'Tuik', '', '3', '4'),
(249, 'JEFRI DT RAJO LELO', 'Ninik Mamak', 'Tuik', '', '3', '4'),
(250, 'ZULPEN HADI', 'Pemuda', 'Tuik', '', '4', '4'),
(251, 'GUSTAR', 'Pemuda', 'Tuik', '', '4', '4'),
(252, 'ANTOSIAS', 'Wali Nagari', 'IV Koto Hilir', '85274775221', '1', '4'),
(253, 'YUSRIZAL', 'Wali Nagari', 'Koto Nan Tigo', '85355789023', '1', '4'),
(254, 'ZAINAL', 'Ulama', 'IV Koto Hilir', '85274775221', '2', '4'),
(255, 'EFRIADI, Sag', 'Ulama', 'Koto Nan Tigo', '85355789023', '2', '4'),
(256, 'PI DT RAJO GANDAM', 'Ninik Mamak', 'IV Koto Hilir', '81266880711', '3', '4'),
(257, 'KHATIB JANIR', 'Ninik Mamak', 'Koto Nan Tigo', '82390646095', '3', '4'),
(258, 'IMAM DARLIS', 'Pemuda', 'IV Koto Hilir', '', '4', '4'),
(259, 'RABIUL AWAL', 'Pemuda', 'Koto Nan Tigo', '', '4', '4'),
(260, 'ZAINAL', 'Wali Nagari', 'Taluk', '85274775221', '1', '4'),
(261, 'EFRIADI, Sag', 'Wali Nagari', 'Taluk Tigo Sakato', '85355789023', '1', '4'),
(262, 'AFRIZAL, SPDI', 'Ulama', 'Taluk', '82170226481', '2', '4'),
(263, 'KHATIB JANIR', 'Ulama', 'Taluk Tigo Sakato', '82390646095', '2', '4'),
(264, 'JAFRI DT R GAMUNYANG', 'Ninik Mamak', 'Taluk', '85375058389', '3', '4'),
(265, 'DARISWAN S.Sos', 'Ninik Mamak', 'Taluk Tigo Sakato', '81266689582', '3', '4'),
(266, 'ZAINAL', 'Pemuda', 'Taluk', '85274775221', '4', '4'),
(267, 'JUN', 'Pemuda', 'Taluk Tigo Sakato', '', '4', '4'),
(268, 'SYAFRAN, SH', 'Wali Nagari', 'IV Koto Mudiak', '81363755983', '1', '4'),
(269, 'ZAIMAL', 'Wali Nagari', 'Teratak Tempatih', '85365043443', '1', '4'),
(270, 'SYAFRIZEN', 'Ulama', 'IV Koto Mudiak ', '', '2', '4'),
(271, 'MARTON, S.PdI', 'Ulama', 'Teratak Tempatih', '81374890076', '2', '4'),
(272, 'IRWANSYAH DT R HITAM', 'Ninik Mamak', 'IV Koto Mudiak ', '', '3', '4'),
(273, 'ALDI DT RAJO BAGINDO', 'Ninik Mamak', 'Teratak Tempatih', '', '3', '4'),
(274, 'HENDRA', 'Pemuda', 'IV Koto Mudiak', '', '4', '4'),
(275, 'NURLIS', 'Pemuda', 'Teratak Tempatih', '82171522531', '4', '4'),
(276, 'MARDIUS', 'Wali Nagari', 'Koto Nan Tigo Selatan Surantih', '81266761205', '1', '5'),
(277, 'YUDI ANUGERAH', 'Sekretaris Wali', 'Koto Nan Tigo Selatan Surantih', '85263279133', '1', '5'),
(278, 'KHATIB SYAHRIAL', 'Ulama', 'Koto Nan Tigo Selatan Surantih', '', '2', '5'),
(279, 'KHATIB KHAMIL', 'Ulama', 'Koto Nan Tigo Selatan Surantih', '', '2', '5'),
(280, 'ZUBIR DT SATI', 'Ninik Mamak', 'Koto Nan Tigo Selatan Surantih', '', '3', '5'),
(281, 'DARWIS MANTI', 'Ninik Mamak', 'Koto Nan Tigo Selatan Surantih', '', '3', '5'),
(282, 'GUSRIANTO', 'Pemuda', 'Koto Nan Tigo Selatan Surantih', '', '4', '5'),
(283, 'SYABRIJAL', 'Pemuda', 'Koto Nan Tigo Selatan Surantih', '', '4', '5'),
(284, 'ERWIL', 'Wali Nagari', 'Koto Nan Tigo Utara Surantih', '', '1', '5'),
(285, 'SUPRIAL', 'Sekretaris Wali', 'Koto Nan Tigo Utara Surantih', '', '1', '5'),
(286, 'IWAN IRAWAN, Amd', 'Ulama', 'Koto Nan Tigo Utara Surantih', '', '2', '5'),
(287, 'YOPI ARIS PONDI, S.Ag', 'Ulama', 'Koto Nan Tigo Utara Surantih', '', '2', '5'),
(288, 'ALI AMRAN Dt R Kayo Basi', 'Ninik Mamak', 'Koto Nan Tigo Utara Surantih', '', '3', '5'),
(289, 'RUSLI DT RAJO BATUAH', 'Ninik Mamak', 'Koto Nan Tigo Utara Surantih', '', '3', '5'),
(290, 'APRIANTO', 'Pemuda', 'Koto Nan Tigo Utara Surantih', '', '4', '5'),
(291, 'APRIDAL', 'Pemuda', 'Koto Nan Tigo Utara Surantih', '', '4', '5'),
(292, 'SYAFRION . SIP', 'Wali Nagari', 'Koto Taratak', '85365564432', '1', '5'),
(293, 'BAHRUL', 'Sekretaris Wali', 'Koto Taratak', '81267197443', '1', '5'),
(294, 'MUSLIM', 'Ulama', 'Koto Taratak', '', '2', '5'),
(295, 'ASMAN', 'Ulama', 'Koto Taratak', '', '2', '5'),
(296, 'JAFRI DT TAN MAJO LELO', 'Ninik Mamak', 'Koto Taratak', '', '3', '5'),
(297, 'ISEP DT RAJO BAGINDO', 'Ninik Mamak', 'Koto Taratak', '', '3', '5'),
(298, 'USMAN EKA PUTRA', 'Pemuda', 'Koto Taratak', '82283782040', '4', '5'),
(299, 'SYAMSURIJAL', 'Pemuda', 'Koto Taratak', '', '4', '5'),
(300, 'BISNAL', 'Wali Nagari', 'Taratak ', '81266098222', '1', '5'),
(301, 'YUSUF', 'Sekretaris Wali', 'Taratak ', '81266832710', '1', '5'),
(302, 'KHATIB AZWARMAN', 'Ulama', 'Taratak ', '', '2', '5'),
(303, 'HAIRI NAULIS', 'Ulama', 'Taratak ', '', '2', '5'),
(304, 'ILYAS DT MANGKUDUM', 'Ninik Mamak', 'Taratak ', '', '3', '5'),
(305, 'ALI PANDUKO RAJO', 'Ninik Mamak', 'Taratak ', '', '3', '5'),
(306, 'DODI SAPUTRA', 'Pemuda', 'Taratak ', '82173152386', '4', '5'),
(307, 'JON EFENDI', 'Pemuda', 'Taratak ', '82174404973', '4', '5'),
(308, 'SERI', 'Wali Nagari', 'Rawang Gunuang Malelo', '85274303803', '1', '5'),
(309, 'HAMDANI', 'Sekretaris Wali', 'Rawang Gunuang Malelo', '', '1', '5'),
(310, 'KHATIB ALISREL', 'Ulama', 'Rawang Gunuang Malelo', '', '2', '5'),
(311, 'BUYA SAHRUL, SH.I', 'Ulama', 'Rawang Gunuang Malelo', '', '2', '5'),
(312, 'HASAN BASRI DT R KAYO', 'Ninik Mamak', 'Rawang Gunuang Malelo', '', '3', '5'),
(313, 'SYAFRIL DT R MALENGGANG', 'Ninik Mamak', 'Rawang Gunuang Malelo', '', '3', '5'),
(314, 'NOVI POINDRA ', 'Pemuda', 'Rawang Gunuang Malelo', '', '4', '5'),
(315, 'AFRIZAL', 'Pemuda', 'Rawang Gunuang Malelo', '', '4', '5'),
(316, 'SAPARUDIN', 'Wali Nagari', 'Amping Parak', '82283409873', '1', '5'),
(317, 'SYAFRI MAINONI', 'Sekretaris Wali', 'Amping Parak', '82285462962', '1', '5'),
(318, 'UMAR BAKIS', 'Ulama', 'Amping Parak', '', '2', '5'),
(319, 'GUSMAN ALIM', 'Ulama', 'Amping Parak', '', '2', '5'),
(320, 'M KAMAL DT B PANJANG ', 'Ninik Mamak', 'Amping Parak', '', '3', '5'),
(321, 'M. JUNAIDI ', 'Ninik Mamak', 'Amping Parak', '', '3', '5'),
(322, 'JUFRIZAL', 'Pemuda', 'Amping Parak', '', '4', '5'),
(323, 'AFRIZAL APENDI', 'Pemuda', 'Amping Parak', '', '4', '5'),
(324, 'SAMIN, SH', 'Wali nagari', 'Nagari Kambang', '', '1', '6'),
(325, 'RUSLI, Amd', 'Sekretaris', 'Nagari Kambang', '82392466440', '1', '6'),
(326, 'H. M. TAHER', 'Ulama', 'Nagari Kambang', '', '2', '6'),
(327, 'SABARUDIN', 'Ulama', 'Nagari Kambang', '', '2', '6'),
(328, 'AZIZAH Dt bandri hitam', 'Ninik Mamak', 'Nagari Kambang', '', '3', '6'),
(329, 'JAMALUDIN Dt R Indo', 'Ninik Mamak', 'Nagari Kambang', '', '3', '6'),
(330, 'ROMAL AFDIAN', 'Pemuda', 'Nagari Kambang', '', '4', '6'),
(331, 'MUSLIADI', 'Pemuda', 'Nagari Kambang', '', '4', '6'),
(332, 'SUPARDI, S.Sos', 'Wali nagari', 'Kambang Utara ', '81374209973', '1', '6'),
(333, 'SUSI RAHMAYANI', 'Bendahara', 'Kambang Utara ', '85265864244', '1', '6'),
(334, 'H. M. TAHER', 'Ulama', 'Kambang Utara ', '', '2', '6'),
(335, 'H. BAHRI IMAMBULAH', 'Ulama', 'Kambang Utara ', '', '2', '6'),
(336, 'RUSLAN ARTA BAGINDO SATI', 'Ninik Mamak', 'Kambang Utara ', '', '3', '6'),
(337, 'ISMAEL DT RAJO BAGAMPO', 'Ninik Mamak', 'Kambang Utara ', '', '3', '6'),
(338, 'DAMRA, S.Pd', 'Pemuda', 'Kambang Utara ', '81374316597', '4', '6'),
(339, 'MUSNAL, S.Ag', 'Pemuda', 'Kambang Utara ', '81363847560', '4', '6'),
(340, 'APRIZAL', 'Wali nagari', 'Lakitan Utara ', '', '1', '6'),
(341, 'HASAN BASRI', 'Sekretaris', 'Lakitan Utara ', '', '1', '6'),
(342, 'JON SUHARDI, S.Ag', 'Ulama', 'Lakitan Utara ', '', '2', '6'),
(343, 'H. MARDIUS', 'Ulama', 'Lakitan Utara ', '', '2', '6'),
(344, 'AFLIZEN DT. PANDUKO', 'Ninik Mamak', 'Lakitan Utara ', '', '3', '6'),
(345, 'ALI MUDAR DT SATI', 'Ninik Mamak', 'Lakitan Utara ', '', '3', '6'),
(346, 'AKMAL', 'Pemuda', 'Lakitan Utara ', '', '4', '6'),
(347, 'JAPRI SUSANTO', 'Pemuda', 'Lakitan Utara ', '', '4', '6'),
(348, 'HASAN BASRI. BA', 'Wali nagari', 'Lakitan Selatan', '81266866786', '1', '6'),
(349, 'ASRUL', 'Sekretaris', 'Lakitan Selatan', '81374350051', '1', '6'),
(350, 'H. SYAHRIL', 'Ulama', 'Lakitan Selatan', '', '2', '6'),
(351, 'MANSYUR', 'Ulama', 'Lakitan Selatan', '', '2', '6'),
(352, 'ENOFIUS, ST', 'Ninik Mamak', 'Lakitan Selatan', '', '3', '6'),
(353, 'IDRIS SDRI DT RAJO HITAM', 'Ninik Mamak', 'Lakitan Selatan', '', '3', '6'),
(354, 'ALID', 'Pemuda', 'Lakitan Selatan', '', '4', '6'),
(355, 'EDI MASRIL', 'Pemuda', 'Lakitan Selatan', '', '4', '6'),
(356, 'KASMADIHARJA', 'Wali nagari', 'Lakitan Timur', '85376441073', '1', '6'),
(357, 'INGRILA. A.Md', 'Sekretaris', 'Lakitan Timur ', '85374144866', '1', '6'),
(358, 'ANDI YUNAIDI, S.PdI', 'Ulama', 'Lakitan Timur', '81336385104', '2', '6'),
(359, 'OLPUTRA, S.PdI', 'Ulama', 'Lakitan Timur', '8136385104', '2', '6'),
(360, 'ENOFIUS, ST', 'Ninik Mamak', 'Lakitan Timur', '', '3', '6'),
(361, 'IDRIS SDRI DT RAJO HITAM', 'Ninik Mamak', 'Lakitan Timur', '', '3', '6'),
(362, 'ONLI HEDRI BAGINDO', 'pemuda', 'Lakitan Timur', '', '4', '6'),
(363, 'MUDAR BAGINDO ', 'Pemuda', 'Lakitan Timur', '81374422607', '4', '6'),
(364, 'SONDRI. KSSS', 'Wali nagari', 'Kambang Timur', '81374213355', '1', '6'),
(365, 'SUPARDI', 'Sekretaris', 'Kambang Timur', '82385666206', '1', '6'),
(366, 'IRWAN GUSRIANTO, S.PdI', 'Ulama', 'Kambang Timur', '81374485915', '2', '6'),
(367, 'GENDRIL SUPARDI, S.Ag', 'Ulama', 'Kambang Timur', '81322875099', '2', '6'),
(368, 'BUSTASMI DT. MANDARO', 'Ninik Mamak', 'Kambang Timur', '', '3', '6'),
(369, 'Drs. SILU ANCANG TUAH', 'Ninik Mamak', 'Kambang Timur', '', '3', '6'),
(370, 'ISAL', 'Pemuda', 'Kambang Timur', '81275805548', '4', '6'),
(371, 'CODOT', 'Pemuda', 'Kambang Timur', '85355625700', '4', '6'),
(372, 'HENGKI GUNAWAN, S.Pd', 'Wali nagari', 'Pelangai Gadang', '81266771212', '1', '7'),
(373, 'DEKI ATLIANO', 'Sekretaris', 'Pelangai Gadang', '82169038972', '1', '7'),
(374, 'BUYA TAMAM ', 'Ulama', 'Pelangai Gadang', '82174336999', '2', '7'),
(375, 'TAMSIL ROMAWI', 'Ulama', 'Pelangai Gadang', '81267132569', '2', '7'),
(376, 'DT. FERNANDO DAILAIMI', 'Ninik Mamak', 'Pelangai Gadang', '85364764444', '3', '7'),
(377, 'DT. SEPINAL', 'Ninik Mamak', 'Pelangai Gadang', '85364199365', '3', '7'),
(378, 'SAIFUL', 'Pemuda', 'Pelangai Gadang', '85363430020', '4', '7'),
(379, 'INDRA ISRIANTO', 'Pemuda', 'Pelangai Gadang', '81268619846', '4', '7'),
(380, 'RAIS, Amd', 'Wali nagari', 'Koto VIII Pelangai ', '81371023605', '1', '7'),
(381, 'SAFRIADI PUTRA', 'Sekretaris', 'Koto VIII Pelangai ', '85263354118', '1', '7'),
(382, 'SAFRIDAL, S. Ag', 'Ulama', 'Koto VIII Pelangai ', '', '2', '7'),
(383, 'SUARDI, S.Ag', 'Ulama', 'Koto VIII Pelangai ', '', '2', '7'),
(384, 'ARPANUS DT MANGKUTO', 'Ninik Mamak', 'Koto VIII Pelangai ', '', '3', '7'),
(385, 'SAFRIL DT R MEDAN ', 'Ninik Mamak', 'Koto VIII Pelangai ', '', '3', '7'),
(386, 'HENDRI NOVIARDI', 'Pemuda', 'Koto VIII Pelangai ', '', '4', '7'),
(387, 'CONDRA', 'Pemuda', 'Koto VIII Pelangai ', '', '4', '7'),
(388, 'DARMAWAN, S.Ag', 'Wali nagari', 'Sungai Liku Pelangai', '82169951818', '1', '7'),
(389, 'ALKISMANTO, S.Ip', 'Sekretaris', 'Sungai Liku Pelangai', '', '1', '7'),
(390, 'H. NAFRUDIN', 'Ulama', 'Sungai Liku Pelangai', '82383598836', '2', '7'),
(391, 'BUYA JAMALUS YATIM', 'Ulama', 'Sungai Liku Pelangai', '85278031297', '2', '7'),
(392, 'JASRIL JEK, SH DT PINTU L', 'Ninik Mamak', 'Sungai Liku Pelangai', '81363368485', '3', '7'),
(393, 'AMRIZAL. MA DT ENDAH KAYO', 'Ninik Mamak', 'Sungai Liku Pelangai', '81261222421', '3', '7'),
(394, 'EMRUL', 'Pemuda', 'Sungai Liku Pelangai', '81363306379', '4', '7'),
(395, 'MUS MULYADI', 'Pemuda', 'Sungai Liku Pelangai', '81363654271', '4', '7'),
(396, 'Drs. ISKANDAR', 'Wali nagari', 'Sungai Tunu', '81267131499', '1', '7'),
(397, 'YUANG KAMI', 'Sekretaris', 'Sungai Tunu', '85263097976', '1', '7'),
(398, 'ZULKIFLI, S.PdI', 'Ulama', 'Sungai Tunu', '85365632498', '2', '7'),
(399, 'H. LIS HERMANTO', 'Ulama', 'Sungai Tunu', '82174150773', '2', '7'),
(400, 'ALWI DARWIS, DT RANG KAYO', 'Ninik Mamak', 'Sungai Tunu', '', '3', '7'),
(401, 'MARTIAS PANDUKO ALAM ', 'Ninik Mamak', 'Sungai Tunu', '82390952469', '3', '7'),
(402, 'ITIM ', 'Pemuda', 'Sungai Tunu', '', '4', '7'),
(403, 'MASRIL', 'Pemuda', 'Sungai Tunu', '', '4', '7'),
(404, 'VELLY WANDELENA, SH', 'Wali nagari', 'Pelangai kaciak', '81261793040', '1', '7'),
(405, 'YON BAIKI, S.PdI', 'Sekretaris', 'Pelangai kaciak', '82388744484', '1', '7'),
(406, 'RAHMAD DANI, S.PdI', 'Ulama', 'Pelangai kaciak', '', '2', '7'),
(407, 'ASRIL ABDULLAH', 'Ulama', 'Pelangai kaciak', '', '2', '7'),
(408, 'SUARDI DT RAJO HITAM', 'Ninik Mamak', 'Pelangai kaciak', '', '3', '7'),
(409, 'ASRIL DT GADANG', 'Ninik Mamak', 'Pelangai kaciak', '', '3', '7'),
(410, 'JOKO DARIANTO', 'Pemuda', 'Pelangai kaciak', '', '4', '7'),
(411, 'AGUSMAN, S.Pd', 'Pemuda', 'Pelangai kaciak', '', '4', '7'),
(412, 'RAMLI', 'Wiraswasta ', 'Air Haji ', '', '1', '8'),
(413, 'MUKRIZEN', 'Wiraswasta ', 'Air Haji Tenggara', '', '1', '8'),
(414, 'SYAHRIAL, Sag', 'Ulama', 'Air Haji', '', '2', '8'),
(415, 'MAHYUDIN KATIB', 'Ulama', 'Air Haji Tenggara', '81266352850', '2', '8'),
(416, 'MEDRIZON, SH DT MALINTANG', 'Ninik Mamak', 'Air Haji', '81364769008', '3', '8'),
(417, 'ON DT RAJO TANGKE', 'Ninik Mamak', 'Air Haji Tenggara', '85216270044', '3', '8'),
(418, 'ADRIZEL', 'Pemuda', 'Air Haji ', '81363851415', '4', '8'),
(419, 'IMBRAL', 'Pemuda', 'Air Haji Tenggara', '81270711002', '4', '8'),
(420, 'AHMAD HIDAYAT', 'Wali nagari', 'Punggasan Timur', '85266998311', '1', '8'),
(421, 'ZAINUL ARIFIN', 'Sekretaris', 'Punggasan Timur', '82391851109', '1', '8'),
(422, 'SYAHLIM PIR', 'Ulama', 'Punggasan Timur', '82386221390', '2', '8'),
(423, 'SYAHWA INCAN', 'Ulama', 'Punggasan Timur', '85274450320', '2', '8'),
(424, 'BASRI DT RAJO MAGEK', 'Ninik Mamak', 'Punggasan Timur', '85264107950', '3', '8'),
(425, 'SYAHRIAL RAJO SUTAN', 'Ninik Mamak', 'Punggasan Timur', '82388439842', '3', '8'),
(426, 'IDIL', 'Pemuda', 'Punggasan Timur', '85376164745', '4', '8'),
(427, 'AZHARI', 'Pemuda', 'Punggasan Timur', '81270759801', '4', '8'),
(428, 'ERDIPAN DT MANGKUTO', 'Wali nagari', 'Pasar Punggasan', '85263592444', '1', '8'),
(429, 'YULIZA', 'Sekretaris', 'Pasar Punggasan', '85278378525', '1', '8'),
(430, 'JUPRI, S.Ag NA', 'Ulama', 'Pasar Punggasan', '', '2', '8'),
(431, 'APRIANTO, M.Ag', 'Ulama', 'Pasar Punggasan', '', '2', '8'),
(432, 'Dt. INDO RAJO', 'Ninik Mamak', 'Pasar Punggasan', '', '3', '8'),
(433, 'Dra. YESMANELI', 'Bundo Kanduang', 'Pasar Punggasan', '', '3', '8'),
(434, 'OPIANUS', 'Pemuda', 'Pasar Punggasan', '', '4', '8'),
(435, 'APRISAL', 'Pemuda', 'Pasar Punggasan', '', '4', '8'),
(436, 'SYAFRIZAL', 'Wali nagari', 'Punggasan Utara', '82385665332', '1', '8'),
(437, 'ZAINAL', 'Sekretaris', 'Punggasan Utara', '85363756185', '1', '8'),
(438, 'RAHMAN', 'Ulama', 'Punggasan Utara', '', '2', '8'),
(439, 'SARJONO, Sag', 'Ulama', 'Punggasan Utara', '', '2', '8'),
(440, 'M DT BANDARO JAMBAK', 'Ninik Mamak', 'Punggasan Utara', '82169151991', '3', '8'),
(441, 'SYAFRISAL DT KAMPAI', 'Ninik Mamak', 'Punggasan Utara', '85271874100', '3', '8'),
(442, 'TARMIZI LAMERI', 'Pemuda', 'Punggasan Utara', '82390687694', '4', '8'),
(443, 'YUSMAIDI AMRIZAL', 'Pemuda', 'Punggasan Utara', '81369373893', '4', '8'),
(444, 'Drs. JAYA WARDANA', 'PNS', 'Rantau Simalenang', '85271648933', '1', '8'),
(445, 'H. ASRIL. B', 'Wiraswasta ', 'Pasar Bukit', '81374925353', '1', '8'),
(446, 'FIRDAUS, S.Ag', 'Ulama', 'Rantau Simalenang', '', '2', '8'),
(447, 'HARUN, S', 'Ulama', 'Pasar Bukit', '85274668314', '2', '8'),
(448, 'DARWIN DT BANDARO', 'Ninik Mamak', 'Rantau Simalenang', '', '3', '8'),
(449, 'SIBUR DT. RAJO RAYO', 'Ninik Mamak', 'Pasar Bukit', '85356227745', '3', '8'),
(450, 'ANTONIUS, Amd', 'Pemuda', 'Rantau Simalenang', '81267128947', '4', '8'),
(451, 'ADRISON', 'Pemuda', 'Pasar Bukit', '85364766222', '4', '8'),
(452, 'ARI BASMAN', 'Wiraswasta ', 'Air Haji Barat', '85271648967', '1', '8'),
(453, 'ALI IDRIS', 'Wiraswasta ', 'Muaro Gadang', '85271648935', '1', '8'),
(454, 'BAIZUL S.Ag', 'Ulama', 'Air Haji Barat', '82388745280', '2', '8'),
(455, 'KAMIL JUFRI', 'Ulama', 'Muaro Gadang', '82388745280', '2', '8'),
(456, 'EDWAR DT RAJO MULIE', 'Ninik Mamak', 'Air Haji Barat', '', '3', '8'),
(457, 'SAPTIL DT RAJO MELAYU', 'Ninik Mamak', 'Muaro Gadang', '', '3', '8'),
(458, 'ERISMAN', 'Pemuda ', 'Air Haji Barat', '81267128054', '4', '8'),
(459, 'HENDRI ', 'Pemuda', 'Muaro Gadang', '81267128947', '4', '8'),
(460, 'MUSLIMIN', 'Nelayan', 'Pulau Rajo', '', '1', '9'),
(461, 'RIZUL', 'Nelayan', 'Pulau Rajo', '81267936615', '1', '9'),
(462, 'IMAM ZAIDAR', 'Nelayan', 'Pulau Rajo', '', '2', '9'),
(463, 'IMAM AKMAL', 'Nelayan', 'Pulau Rajo', '', '2', '9'),
(464, 'AZWARDI', 'Nelayan', 'Pulau Rajo', '', '3', '9'),
(465, 'BUYUNG JEK', 'Nelayan', 'Pulau Rajo', '', '3', '9'),
(466, 'ADI DEDI', 'Nelayan', 'Pulau Rajo', '81276161679', '4', '9'),
(467, 'RODI', 'Nelayan', 'Pulau Rajo', '85274736415', '4', '9'),
(468, 'M. YAYID', 'Swasta', 'Inderapura Barat', '', '1', '9'),
(469, 'AFRI', 'Swasta', 'Inderapura Barat', '', '1', '9'),
(470, 'ISHAQ, S.Pdi', 'Honorer', 'Tj. Batang Kapas', '', '2', '9'),
(471, 'JAFRI', 'Tani', 'Inderapura Barat', '', '2', '9'),
(472, 'SIDIQ', 'Swasta', 'Inderapura Barat', '', '3', '9'),
(473, 'KADUR', 'Tani', 'Inderapura Barat', '', '3', '9'),
(474, 'HENDRA ISKANDAR', 'Swasta', 'Inderapura Barat', '85274046678', '4', '9'),
(475, 'SYAIFUL EFENDI', 'Tani', 'Inderapura Barat', '', '4', '9'),
(476, 'BASREL', 'Ketua LPMN', 'Air Batu Tanah Bakali', '', '1', '9'),
(477, 'KAMARUDIN(Yung KR)', 'Kantor Wali', 'Air Batu Tanah Bakali', '', '1', '9'),
(478, 'BUYA ROMIN', 'Swasta', 'Air Batu Tanah Bakali', '', '2', '9'),
(479, 'ABDULLAH', 'Swasta', 'Air Batu Tanah Bakali', '', '2', '9'),
(480, 'CHAIRUL SALEH', 'Swasta', 'Lubuk Ubai', '82284931525', '3', '9'),
(481, 'HENDRI PAMUS', 'Ketua Bamus', 'Trans Lubuk Ubai', '82169118173', '3', '9'),
(482, 'ERIJON', 'Swasta', 'Lubuk Ubai', '', '4', '9'),
(483, 'JUNAIDI', 'Swasta', 'Air Batu Tanah Bakali', '', '4', '9'),
(484, 'IWAN BABUT', 'Swasta', 'Muara Sakai', '82284930575', '1', '9'),
(485, 'BY. ALEK', 'Swasta', 'Muara Sakai', '85271663346', '1', '9'),
(486, 'M. TISIR', 'Tani', 'Muara Sakai', '85374353851', '2', '9'),
(487, 'SUPARIO', 'Tani', 'Muara Sakai', '', '2', '9'),
(488, 'ABUKNEL', 'Swasta', 'Muara Sakai', '', '3', '9'),
(489, 'GETAPSON,SH', 'Swasta', 'Muara Sakai', '8136302267', '3', '9'),
(490, 'INDRA', 'Swasta', 'Muara Sakai', '81268103608', '4', '9'),
(491, 'ANDIANSYAH', 'Swasta', 'Muara Sakai', '', '4', '9'),
(492, 'SYABARULIH', 'Tani', 'Pulau Makan', '82391272808', '1', '9'),
(493, 'IDRUS CHAN', 'Swasta', 'Pulau Makan', '82387954666', '1', '9'),
(494, 'Drs. YEFRIZAL', 'PNS', 'Pulau Makan', '82384807233', '2', '9'),
(495, 'JAPLIUS', 'PNS', 'Pulau Makan', '85376541368', '2', '9'),
(496, 'BUKSARUDIN', 'Swasta', 'Pulau Makan', '', '3', '9'),
(497, 'MARDANI', 'PNS', 'Pulau Makan', '81374505209', '3', '9'),
(498, 'NOFLIMAR SANDRA', 'Swasta', 'Pulau Makan', '', '4', '9'),
(499, 'DARWIN', 'Swasta', 'Pulau Makan', '', '4', '9'),
(500, 'MUKLIS', 'Swasta', 'Inderapura Utara', '81363321690', '1', '9'),
(501, 'KARIMUN', 'Swasta', 'Inderapura Utara', '81266444924', '1', '9'),
(502, 'EKO ABDUSSIDIK', 'Swasta', 'Inderapura Utara', '81266362883', '2', '9'),
(503, 'ISMAIL', 'Tani', 'Inderapura Utara', '81363112788', '2', '9'),
(504, 'KENUT RJ. KANDOU', 'Swasta', 'Inderapura Utara', '81374293176', '3', '9'),
(505, 'HERMAN CHAN', 'Swasta', 'Inderapura Utara', '85261316321', '3', '9'),
(506, 'GUNAKIR', 'Tani', 'Inderapura Utara', '81371886436', '4', '9'),
(507, 'TANUL', 'Swasta', 'Inderapura Utara', '85274962123', '4', '9'),
(508, 'SATUT', 'Swasta', 'Lubuk Betung', '81374957251', '1', '9'),
(509, 'MARPA\"I', 'Tani', 'Lubuk Betung', '81264256319', '1', '9'),
(510, 'HASAN BASRI', 'Tani', 'Lubuk Betung', '82173065549', '2', '9'),
(511, 'ALFA EDISON', 'Swasta', 'Lubuk Betung', '81363524695', '2', '9'),
(512, 'BUJANG TINGKIR', 'Tani', 'Lubuk Betung', '85276254121', '3', '9'),
(513, 'ALIN USMAN', 'Swasta', 'Lubuk Betung', '85274878156', '3', '9'),
(514, 'IMBRA', 'Swasta', 'Lubuk Betung', '81374552648', '4', '9'),
(515, 'YOYON', 'Swasta', 'Lubuk Betung', '85263945474', '4', '9'),
(516, 'ADRIANTO', 'Swasta', 'Nag. Inderapura', '85364565539', '1', '9'),
(517, 'DARMAYANTO', 'Swasta', 'Nag. Inderapura', '81266852109', '1', '9'),
(518, 'BURHANAPION', 'Swasta', 'Nag. Inderapura', '81374634501', '2', '9'),
(519, 'SYAFRUDIN', 'Swasta', 'Nag. Inderapura', '82389228151', '2', '9'),
(520, 'SUHARBOY', 'Swasta', 'Nag. Inderapura', '85219707771', '3', '9'),
(521, 'BAKAR', 'Swasta', 'Nag. Inderapura', '82389524672', '3', '9'),
(522, 'PONDON APRIL MAIDI', 'Swasta', 'Nag. Inderapura', '81268510781', '4', '9'),
(523, 'CERE', 'Tani', 'Nag. Inderapura', '', '4', '9'),
(524, 'SABIR', 'Swasta', 'Tigo Sungai', '', '1', '9'),
(525, 'SYA\'I', 'Swasta', 'Tigo Sungai', '', '1', '9'),
(526, 'MUHBITIN', 'Tani', 'Tigo Sungai', '', '2', '9'),
(527, 'MUHAMMAD', 'Swasta', 'Tigo Sungai', '81270564232', '2', '9'),
(528, 'SA\'IR', 'Tani', 'Tigo Sungai', '82288111177', '3', '9'),
(529, 'BUL', 'Tani', 'Tigo Sungai', '81274556711', '3', '9'),
(530, 'ZAIPUL', 'Swasta', 'Tigo Sungai', '81374852142', '4', '9'),
(531, 'CANDRA', 'Swasta', 'Tigo Sungai', '81267367176', '4', '9'),
(532, 'M. Ikhsan', 'Wali Nagari', 'Binjai Tapan', '81266964235', '1', '10'),
(533, 'Almirizon', 'Sekretaris Nagari', 'Binjai Tapan', '', '1', '10'),
(534, 'H. Mukhlizal, SH', 'Ulama', 'Binjai Tapan', '', '2', '10'),
(535, 'Nasution, S.PdI', 'Ulama', 'Binjai Tapan', '85263805648', '2', '10'),
(536, 'Ir. Nasution Dt Rajo Kayo', 'Ninik Mamak', 'Binjai Tapan', '8126611502', '3', '10'),
(537, 'Novrial Bahrun, SH Dt Sur', 'Ninik Mamak', 'Binjai Tapan', '', '3', '10'),
(538, 'Agusli. MS', 'Pemuda', 'Binjai Tapan', '81267133095', '4', '10'),
(539, 'Jafril', 'Pemuda', 'Binjai Tapan', '82384985065', '4', '10'),
(540, 'Sunardi', 'Wali Nagari', 'Limau Purut ', '85284979564', '1', '10'),
(541, 'Doni', 'Kaur Pembangunan', 'Limau Purut ', '8528479564', '1', '10'),
(542, 'Samril. A. Ma', 'Ulama', 'Limau Purut ', '85272531073', '2', '10'),
(543, 'Safrizal. Sos', 'Ulama', 'Limau Purut ', '85376383610', '2', '10'),
(544, 'Drs. Bustami', 'Ninik Mamak', 'Limau Purut ', '85375900551', '3', '10'),
(545, 'Abu Nazar, S.Sos', 'Ninik Mamak', 'Limau Purut ', '82174665561', '3', '10'),
(546, 'Jafriadi', 'Pemuda', 'Limau Purut ', '', '4', '10'),
(547, 'Efrianto', 'Pemuda', 'Limau Purut ', '82385852375', '4', '10'),
(548, 'Arifin, S.Pd', 'Wali Nagari', 'Koto Enau', '85263465684', '1', '10'),
(549, 'Susi Hendrawati', 'Bendahara', 'Koto Enau', '82386190077', '1', '10'),
(550, 'Peri Iswandi, S.Pdi', 'Ulama', 'Koto Enau', '85263571781', '2', '10'),
(551, 'M. Husen', 'Ulama', 'Koto Enau', '8536590342', '2', '10'),
(552, 'Drs. Feri Dt. R. Malayu', 'Ninik Mamak', 'Koto Enau', '81374441441', '3', '10'),
(553, 'Ir. Nasution Dt Rajo Kayo', 'Ninik Mamak', 'Koto Enau', '81266115002', '3', '10'),
(554, 'Kismen Ata, SP', 'Pemuda', 'Koto Enau', '8116609396', '4', '10'),
(555, 'Rizal Efendi', 'Pemuda', 'Koto Enau', '81374526524', '4', '10'),
(556, 'Anas Tioni', 'Wali Nagari', 'Tanjung Pondok', '85264684299', '1', '10'),
(557, 'Asnilawati', 'Sekretaris Nagari', 'Tanjung Pondok', '82169763809', '1', '10'),
(558, 'Amri Olong', 'Ulama', 'Tanjung Pondok', '2386683870', '2', '10'),
(559, 'Saripudin', 'Ulama', 'Tanjung Pondok', '85263731942', '2', '10'),
(560, 'Ir. Nasution Dt Rajo Kayo', 'Ninik Mamak', 'Tanjung Pondok', '81266115002', '3', '10'),
(561, 'Novrial Bahrun, SH Dt Sur', 'Ninik Mamak', 'Tanjung Pondok', '85356004500', '3', '10'),
(562, 'Indra Putra', 'Pemuda', 'Tanjung Pondok', '81261019181', '4', '10'),
(563, 'Amri', 'Pemuda', 'Tanjung Pondok', '82386683870', '4', '10'),
(564, 'Zulkardi', 'Wali Nagari', 'Bukit Buai', '81267315723', '1', '10'),
(565, 'Nuroza, Amd', 'Kaur Pemerintahan', 'Bukit Buai', '85376474367', '1', '10'),
(566, 'H. Baktarudin', 'Ulama', 'Bukit Buai', '', '2', '10'),
(567, 'Pal Efendi, S.Pdi', 'Ulama', 'Bukit Buai', '81374304156', '2', '10'),
(568, 'Bustami, Dt. P. Kuaso', 'Ninik Mamak', 'Bukit Buai', '81266311477', '3', '10'),
(569, 'Ir. Nasution Dt Rajo Kayo', 'Ninik Mamak', 'Bukit Buai', '8126611502', '3', '10'),
(570, 'Efendi', 'Pemuda', 'Bukit Buai', '85363504352', '4', '10'),
(571, 'Darmalis', 'Pemuda', 'Bukit Buai', '8,23887E+11', '4', '10'),
(572, 'Alfian', 'Wali Nagari', 'Talang Balirik', '81374304350', '1', '10'),
(573, 'Dedi Rahman', 'Sekretaris Nagari', 'Talang Balirik', '81270718384', '1', '10'),
(574, 'Syafkharudin', 'Ulama', 'Talang Balirik', '82178188245', '2', '10'),
(575, 'Zainul Kapli', 'Ulama', 'Talang Balirik', '81363242530', '2', '10'),
(576, 'Supri', 'Ninik Mamak', 'Talang Balirik', '82389210259', '3', '10'),
(577, 'Ir. Nasution Dt Rajo Kayo', 'Ninik Mamak', 'Talang Balirik', '8126611502', '3', '10'),
(578, 'Dafri Zukia', 'Pemuda', 'Talang Balirik', '85365057080', '4', '10'),
(579, 'Dedi Rahman', 'Pemuda', 'Talang Balirik', '81270718384', '4', '10'),
(580, 'Zaman Jafri', 'Wali Nagari', 'Riak Danau', '81267287630', '1', '10'),
(581, 'Darmen', 'Sekretaris Nagari', 'Riak Danau', '85263660605', '1', '10'),
(582, 'Zul Yafli, S.Pdi', 'Ulama', 'Riak Danau', '81363279195', '2', '10'),
(583, 'Samsul', 'Ulama', 'Riak Danau', '85272549782', '2', '10'),
(584, 'Novrial Bahrun, SH Dt Sur', 'Ninik Mamak', 'Riak Danau', '85356004500', '3', '10'),
(585, 'Ir. Nasution Dt Rajo Kayo', 'Ninik Mamak', 'Riak Danau', '81266115002', '3', '10'),
(586, 'Pendri', 'Pemuda', 'Riak Danau', '82389292420', '4', '10'),
(587, 'Ali Martopo', 'Pemuda', 'Riak Danau', '', '4', '10'),
(588, 'Samril', 'Wali Nagari', 'Kubu', '82171540545', '1', '10'),
(589, 'Ritnawati', 'Wali Nagari', 'Kubu', '85374702171', '1', '10'),
(590, 'M. Tadir', 'Ulama', 'Kubu', '81374448656', '2', '10'),
(591, 'PM. Mardis', 'Ulama', 'Kubu', '81363276040', '2', '10'),
(592, 'PM. Mukhsin Rajo Nan Sati', 'Ninik Mamak', 'Kubu', '', '3', '10'),
(593, 'Abu Nazar, S.Sos', 'Ninik Mamak', 'Kubu', '82174665561', '3', '10'),
(594, 'Asrul', 'Pemuda', 'Kubu', '85365057113', '4', '10'),
(595, 'Ilham Kamil', 'Pemuda', 'Kubu', '85364959807', '4', '10'),
(596, 'Bustami', 'Wali Nagari', 'Talang Koto Pulai', '85375900551', '1', '10'),
(597, 'Popi Lamura, S.Pd', 'Kaur Kemasyarakat', 'Talang Koto Pulai', '82169096534', '1', '10'),
(598, 'Yusman, S.Ag. MM', 'Ulama', 'Talang Koto Pulai', '85265733643', '2', '10'),
(599, 'Syahbunan Rici, Spd', 'Ulama', 'Talang Koto Pulai', '81374448865', '2', '10'),
(600, 'Novrial Bahrun, SH Dt Sur', 'Ninik Mamak', 'Talang Koto Pulai', '85356004500', '3', '10'),
(601, 'Drs. Fauzi', 'Ninik Mamak', 'Talang Koto Pulai', '', '3', '10'),
(602, 'Supriadi Ali', 'Pemuda', 'Talang Koto Pulai', '', '4', '10'),
(603, 'Buyuang', 'Pemuda', 'Talang Koto Pulai', '8217414887', '4', '10'),
(604, 'A. HALIM, S.Sos', 'Wali Nagari', 'Tapan', '85264684299', '1', '10'),
(605, 'AFRIZAL', 'Ketua Bamus', 'Tapan', '82285671388', '1', '10'),
(606, 'Ir. NASUTION RAJO KAYO', 'Ulama', 'Tapan', '81266115002', '2', '10'),
(607, 'BUSTAMI PASRI DT PERMAI', 'Ulama', 'Tapan', '81266311477', '2', '10'),
(608, 'NOFRIAL BAHRUM DT SURI', 'Ninik Mamak', 'Tapan', '85356004500', '3', '10'),
(609, 'Tr NASUTION DT RAJO KAYO', 'Ninik Mamak', 'Tapan', '81266115002', '3', '10'),
(610, 'ETRIADI', 'Pemuda ', 'Tapan', '', '4', '10'),
(611, 'JAMALIS', 'Pemuda ', 'Tapan', '', '4', '10'),
(612, 'AMIR SISWOYO', 'Wali Nagari', 'Nagari Lunang II', '\"082364256444', '1', '11'),
(613, 'MARSYIM', 'Sekretaris Nagari', 'Nagari Lunang II', '\"085274689351', '1', '11'),
(614, 'YOFI HENDRIANTI, S.Pdi', 'Sekretaris Bamus', 'Nagari Lunang II', '\"081381323785', '2', '11'),
(615, 'MUTI ROJI KAWID', 'Ketua Bamus', 'Nagari Lunang II', '\"085374601722', '2', '11'),
(616, 'M. KARIB DT. SANJOYO', 'Ketua KAN', 'Nagari Lunang II', '\"081363369054', '3', '11'),
(617, 'DT. MARASUM', 'Anggota KAN', 'Nagari Lunang II', '\"085365302408', '3', '11'),
(618, 'JOHAR FAUZI', 'Ketua Pemuda', 'Nagari Lunang II', '\"082170382684', '4', '11'),
(619, 'SAMIO', 'Pemuda', 'Nagari Lunang II', '\"081267394898', '4', '11'),
(620, 'SUNARTO', 'Wali Nagari', 'Nagari Pasir Binjai', '\"081275086905', '1', '11'),
(621, 'KHUSNUDDIN', 'Sekretaris Nagari', 'Nagari Pasir Binjai', '\"085363340885', '1', '11'),
(622, 'ASDI, S.Pdi', 'Ketua Bamus', 'Nagari Pasir Binjai', '\"081267045925', '2', '11'),
(623, 'H. NGASRIP SUBAKTI', 'Wakil Ketua Bamus', 'Nagari Pasir Binjai', '\"082174333688', '2', '11'),
(624, 'MUMAN Dt. Panduko Rajo', 'Ketua KAN', 'Nagari Pasir Binjai', '\"081268468866', '3', '11'),
(625, 'ARIL Dt. Suri Marajo', 'Sekretaris KAN', 'Nagari Pasir Binjai', '\"085274450884', '3', '11'),
(626, 'GURAUAN', 'Ketua Pemuda', 'Nagari Pasir Binjai', '\"085364958376', '4', '11'),
(627, 'PURNOMO', 'Bendahara Pemuda', 'Nagari Pasir Binjai', '-', '4', '11'),
(628, 'SOFYAN', 'Wali Nagari', 'Nagari Air Hitam', '\"085274805099', '1', '11'),
(629, 'RONI HAMZAH. S', 'Sekretaris Nagari', 'Nagari Air Hitam', '\"085263064495', '1', '11'),
(630, 'DELA PUTRI, S.Pd.I', 'Kaur Keungan ', 'Nagari Air Hitam', '\"081266842589', '2', '11'),
(631, 'MULYADI. S.Pd.I', 'Ustad', 'Nagari Air Hitam', '-', '2', '11'),
(632, 'MARKAL Dt. Pati', 'Anggota KAN', 'Nagari Air Hitam', '-', '3', '11'),
(633, 'PARDINAL Dt. Rajo Lebih', 'Ninik Mamak', 'Nagari Air Hitam', '-', '3', '11'),
(634, 'FEBRI SAPUTRA', 'Ketua Pemuda', 'Nagari Air Hitam', '\"082389024040', '4', '11'),
(635, 'AHMAD ZAINI', 'Pemuda Tj Pinang', 'Nagari Air Hitam', '\"081364554461', '4', '11'),
(636, 'PUJIANTO', 'Wali Nagari', 'Nagari Lunang I', '\"082284967469', '1', '11'),
(637, 'SUROSO', 'Sekretaris Nagari', 'Nagari Lunang I', '\"085263384998', '1', '11'),
(638, 'SAMSUL Dt. Samparno Batua', 'Ninik Mamak', 'Nagari Lunang I', '\"081363904491', '2', '11'),
(639, 'SOHIB, SH.I', 'Ustad', 'Nagari Lunang I', '\"081267429237', '2', '11'),
(640, 'ABDUL KARIM Dt. Sindo Man', 'Ketua KAN', 'Nagari Lunang I ', '\"081363369054', '3', '11'),
(641, 'ZULRAHMAN Rj. Mudo', 'Sekretaris KAN', 'Nagari Lunang I', '\"085274450884', '3', '11'),
(642, 'TABAH', 'Ketua Pemuda', 'Nagari Lunang I', '\"081374581691', '4', '11'),
(643, 'SUGIANTO', 'Ka Pemuda Sidorej', 'Nagari Lunang I', '\"085272648193', '4', '11'),
(644, 'SHAHRUL', 'Pjs Wali Nagari', 'Nag. Lunang Utara & Pondok Parian', '\"085375169666', '1', '11'),
(645, 'FAHMIZAR', 'Sekretaris Nagari', 'Nag. Lunang Utara & Pondok Parian', '\"085374703761', '1', '11'),
(646, 'ARIZON', 'Alim Ulama', 'Nag. Lunang Utara & Pondok Parian', '\"081363994059', '2', '11'),
(647, 'LIL HAWADIS', 'Alim Ulama', 'Nag. Lunang Utara & Pondok Parian', '\"082285755216', '2', '11'),
(648, 'MARUDIN Dt. Sri Maharajo', 'Ninik Mamak', 'Nag. Lunang Utara & Pondok Parian', '\"085376476361', '3', '11'),
(649, 'SAMSUL Dt. Rajo Dulu', 'Ninik Mamak', 'Nag. Lunang Utara & Pondok Parian', '\"082384837111', '3', '11'),
(650, 'RIKO PUTRA', 'Ketua Pemuda', 'Nag. Lunang Utara & Pondok Parian', '\"085364463315', '4', '11'),
(651, 'DEDI SUANTO', 'Pemuda', 'Nag. Lunang Utara & Pondok Parian', '\"081266807334', '4', '11'),
(652, 'MUS MULYADI ', 'Wali Nagari', 'Nagari Silaut & Sungai Sariak', '\"081374297481', '1', '11'),
(653, 'ADRIANTO', 'Sekretaris Nagari', 'Nagari Silaut & Sungai Sariak', '\"082373438474', '1', '11'),
(654, 'MARKAS DT. NARO', 'Penghulu', 'Nagari Silaut & Sungai Sariak', '\"085274202026', '2', '11'),
(655, 'PARDIAN DT. Rajo Lebih', 'Penghulu', 'Nagari Silaut & Sungai Sariak', '\"085274481161', '2', '11'),
(656, 'H. MUMAN DT. Panduko Rajo', 'Ketua KAN', 'Nagari Silaut & Sungai Sariak', '\"081268468866', '3', '11'),
(657, 'SYAF EFENDI DT. RIO', 'Penghulu', 'Nagari Silaut & Sungai Sariak', '\"085274604306', '3', '11'),
(658, 'ANJONI SAPUTRA, S.IP', 'Ketua Pemuda', 'Nagari Silaut & Sungai Sariak', '\"081266757928', '4', '11'),
(659, 'TONI ANDRIAL, S.Sos', 'Wakil Ketua Pemuda', 'Nagari Silaut & Sungai Sariak', '\"081266605354', '4', '11'),
(660, 'TASWAN, SH ', 'Wali Nagari', 'Nagari Lunang ', '\"085356791011', '1', '11'),
(661, 'M. SYAHAB', 'Sekretaris Nagari', 'Nagari Lunang', '\"082171173101', '1', '11'),
(662, 'ABDUL KARIM Dt. Sindo Man', 'Alim Ulama', 'Nagari Lunag ', '\"081363369054', '2', '11'),
(663, 'ZUL RAHMANSYAH', 'Alim Ulama', 'Nagari Lunang ', '\"085274450884', '2', '11'),
(664, 'MARASUN Dt. SAMPONO BATUA', 'Wakil Ketua KAN', 'Nagari Lunang ', '-', '3', '11'),
(665, 'SYAMSUL Dt. Sampono Batua', 'Ninik Mamak', 'Nagari Lunang ', '\"081363904491', '3', '11'),
(666, 'SAPTONO', 'Ketua Pemuda', 'Nagari Lunang ', '\"085274536600', '4', '11'),
(667, 'TARMIZI', 'Sekretaris  Pemuda', 'Nagari Lunang ', '-', '4', '11'),
(668, 'CARYANTO', 'Pjs Wali Nagari', 'Nagari Lunang Barat ', '\"081363467400', '1', '11'),
(669, 'SUYATNO', 'Sekretaris Nagari', 'Nagari Lunang Barat ', '\"085285351860', '1', '11'),
(670, 'FAHMIZAL, S.Pd.I', 'Alim Ulama', 'Nagari Lunang Barat ', '\"085374703761', '2', '11'),
(671, 'MUSRI MARNI', 'Alim Ulama', 'Nagari Lunang Barat ', '\"-', '2', '11'),
(672, 'BUKHARI Dt. Rajo Setio', 'Ninik Mamak', 'Nagari Lunang Barat ', '\"085264103566', '3', '11'),
(673, 'MARADIS Dt. Rahmat Setio', 'Ninik Mamak', 'Nagari Lunang Barat ', '\"081266928629', '3', '11');
INSERT INTO `tomas` (`id_tomas`, `nama`, `pekerjaan`, `alamat`, `nohp`, `kategori_tomas`, `id_kecamatan`) VALUES
(674, 'RAFI YALA', 'Ketua Pemuda', 'Nagari Lunang Barat ', '\"082386278885', '4', '11'),
(675, 'ANDIKA RIZA', 'Sekretaris Pemuda', 'Nagari Lunang Barat ', '\"085274178686', '4', '11'),
(676, 'ABIRMAN ', 'Wali Nagari', 'Nagari Durian Seribu', '\"081266266271', '1', '11'),
(677, 'RIDWAN', 'Sekretaris Nagari', 'Nagari Durian Seribu', '\"082284295967', '1', '11'),
(678, 'MARKAL', 'Alim Ulama', 'Nagari Durian Seribu', '-', '2', '11'),
(679, 'SUNARDI', 'Buya', 'Nagari Durian Seribu', '\"085364425274', '2', '11'),
(680, 'SRI HARTATIK', 'Kaur Pemerintahan', 'Nagari Durian Seribu', '\"082384133532', '3', '11'),
(681, 'MUHAMMADINI', 'Kaur Pembangunan', 'Nagari Durian Seribu', '\"081261915221', '3', '11'),
(682, 'SUYADI', 'Ketua Pemuda', 'Nagari Durian Seribu', '\"085263656137', '4', '11'),
(683, 'RUMIANTO', 'Sekretaris', 'Nagari Durian Seribu', '\"085274119837', '4', '11'),
(684, 'AKMAL', 'Wali Nagari', 'Nagari Sindang Lunang', '\"081267851033', '1', '11'),
(685, 'SATRIA GAMA', 'Kaur Pemerintahan', 'Nagari Sindang Lunang', '\"085365038994', '1', '11'),
(686, 'Dt. ABDUL KARIM', 'Ketua KAN', 'Nagari Sindang Lunang', '\"081363369054', '2', '11'),
(687, 'MARASUN', 'Wakil Ketua KAN', 'Nagari Sindang Lunang', '\"085274450884', '2', '11'),
(688, 'SYAMSIDAR', 'Bundo Kanduang', 'Nagari Sindang Lunang', '\"085379779077', '3', '11'),
(689, 'BUSRAN', 'Pemangku Adat', 'Nagari Sindang Lunang', '-', '3', '11'),
(690, 'NAWAS MELGA', 'Ketua Pemuda', 'Nagari Sindang Lunang', '\"085274714103', '4', '11'),
(691, 'AMRI JONI', 'Pensehat Pemuda', 'Nagari Sindang Lunang', '\"085263245383', '4', '11'),
(692, 'NARUDI', 'Wali Nagari', 'Nag. Talang Binjai TSM Silaut II', '\"082386273535', '1', '11'),
(693, 'SITI RAHMA', 'Sekretaris Nagari', 'Nag. Talang Binjai TSM Silaut II', '\"082167748050', '1', '11'),
(694, 'ABDUL RAHMAN, SH.I', 'Alim Ulama', 'Nag. Talang Binjai TSM Silaut II', '\"081363322637', '2', '11'),
(695, 'MUKHLISIN, S.Pd.I', 'Alim Ulama', 'Nag. Talang Binjai TSM Silaut II', '\"082170051110', '2', '11'),
(696, 'NENENG TARMILA', 'Bundo Kanduang', 'Nag. Talang Binjai TSM Silaut II', '\"081266263399', '3', '11'),
(697, 'DALIUSMAN', 'Ninik Mamak', 'Nag. Talang Binjai TSM Silaut II', '\"081372584899', '3', '11'),
(698, 'BUKAR', 'Ketua Pemuda', 'Nag. Talang Binjai TSM Silaut II', '\"085355625198', '4', '11'),
(699, 'ABDUL RAHMAN ', 'Ketua Pemuda', 'Nag. Talang Binjai TSM Silaut II', '\"081266336202', '4', '11'),
(1, 'DORIS ALEXSANDARA', 'Swasta', 'Siguntur', '0852-6444-357', '4', '1');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kantibmas`
--
ALTER TABLE `kantibmas`
  ADD PRIMARY KEY (`id_kantibmas`);

--
-- Indeks untuk tabel `kategori_tomas`
--
ALTER TABLE `kategori_tomas`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id_kecamatan`);

--
-- Indeks untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indeks untuk tabel `pangkat_kantibmas`
--
ALTER TABLE `pangkat_kantibmas`
  ADD PRIMARY KEY (`id_pangkat`);

--
-- Indeks untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`);

--
-- Indeks untuk tabel `polres`
--
ALTER TABLE `polres`
  ADD PRIMARY KEY (`id_polres`);

--
-- Indeks untuk tabel `polsek`
--
ALTER TABLE `polsek`
  ADD PRIMARY KEY (`id_polsek`);

--
-- Indeks untuk tabel `tengah_map`
--
ALTER TABLE `tengah_map`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tomas`
--
ALTER TABLE `tomas`
  ADD PRIMARY KEY (`id_tomas`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kantibmas`
--
ALTER TABLE `kantibmas`
  MODIFY `id_kantibmas` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `kategori_tomas`
--
ALTER TABLE `kategori_tomas`
  MODIFY `id_kategori` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id_kecamatan` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id_kegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `pangkat_kantibmas`
--
ALTER TABLE `pangkat_kantibmas`
  MODIFY `id_pangkat` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id_pengaduan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `polres`
--
ALTER TABLE `polres`
  MODIFY `id_polres` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `polsek`
--
ALTER TABLE `polsek`
  MODIFY `id_polsek` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tomas`
--
ALTER TABLE `tomas`
  MODIFY `id_tomas` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=700;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
