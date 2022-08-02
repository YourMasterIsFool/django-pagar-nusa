-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 02, 2022 at 04:32 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pagarnus_bwi`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota_anggota`
--

CREATE TABLE `anggota_anggota` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_hp` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `status` varchar(40) NOT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `sertifikat` varchar(200) DEFAULT NULL,
  `validate` tinyint(1) NOT NULL DEFAULT 0,
  `tingkat` varchar(100) NOT NULL,
  `status_verify` varchar(100) NOT NULL,
  `cabang` varchar(100) NOT NULL,
  `pac` varchar(100) NOT NULL,
  `ranting` varchar(100) NOT NULL,
  `identity_pic` varchar(100) DEFAULT NULL,
  `verifikasi` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `anggota_anggota`
--

INSERT INTO `anggota_anggota` (`id`, `nama`, `alamat`, `no_hp`, `jabatan`, `status`, `profile_pic`, `sertifikat`, `validate`, `tingkat`, `status_verify`, `cabang`, `pac`, `ranting`, `identity_pic`, `verifikasi`) VALUES
(31, 'Linda Lusiyanti', 'Dsn. Kalirejo rt 03 rw 08, Desa Kaliploso', '083847674848', '~', 'anggota', 'profile_pic/profile_pic/foto_linda_thumb_thumb.jpeg', 'sertifikat/foto_sertifikat.jpeg', 1, 'kuning', 'verify', 'Banyuwangi', 'Cluring', 'Kaliploso', NULL, 0),
(32, 'Lusiyanti', 'Kaliploso', '087857487380', 'Sekretaris', 'pengurus', 'profile_pic/foto_linda_thumb_4NVl2uV.jpeg', 'sertifikat/foto_sertifikat_G9yThhn.jpeg', 1, 'merah', 'unverify', 'Banyuwangi', 'Gambiran', 'Wringinrejo', NULL, 0),
(33, 'Lusi', 'Tempursari', '4567898900865', '~', 'anggota', 'profile_pic/profile_pic/profile_pic/profile_pic/4016182570_thumb_thumb_thumb_thumb.jpeg', 'sertifikat/foto_sertifikat_SALbrEv.jpeg', 1, 'putih', 'verify', 'Banyuwangi', 'Cluring', 'Tempursari', 'identity_pic/4016182570.jpeg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `anggota_ujiankenaikantingkat`
--

CREATE TABLE `anggota_ujiankenaikantingkat` (
  `id` bigint(20) NOT NULL,
  `unit_latihan` varchar(50) NOT NULL,
  `tingkat` varchar(50) NOT NULL,
  `hasil` varchar(50) NOT NULL,
  `anggota_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota_ujiankenaikantingkat`
--

INSERT INTO `anggota_ujiankenaikantingkat` (`id`, `unit_latihan`, `tingkat`, `hasil`, `anggota_id`) VALUES
(1, 'An-Nawawi', 'kuning', 'Lulus', 31);

-- --------------------------------------------------------

--
-- Table structure for table `authtoken_token`
--

CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `authtoken_token`
--

INSERT INTO `authtoken_token` (`key`, `created`, `user_id`) VALUES
('a1a7fa88309356d3f40c0a2ece9c61995703355a', '2020-08-11 10:02:29.683506', 12),
('eaf32e08c0562016c7904307d56596a177b8f6c9', '2020-08-11 10:03:45.423790', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'pelatih');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(2, 1, 45),
(3, 1, 46),
(4, 1, 47),
(5, 1, 48),
(6, 1, 61),
(7, 1, 62),
(8, 1, 63),
(1, 1, 64);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add berita', 7, 'add_berita'),
(26, 'Can change berita', 7, 'change_berita'),
(27, 'Can delete berita', 7, 'delete_berita'),
(28, 'Can view berita', 7, 'view_berita'),
(29, 'Can add kategory', 8, 'add_kategory'),
(30, 'Can change kategory', 8, 'change_kategory'),
(31, 'Can delete kategory', 8, 'delete_kategory'),
(32, 'Can view kategory', 8, 'view_kategory'),
(33, 'Can add image', 9, 'add_image'),
(34, 'Can change image', 9, 'change_image'),
(35, 'Can delete image', 9, 'delete_image'),
(36, 'Can view image', 9, 'view_image'),
(37, 'Can add video', 10, 'add_video'),
(38, 'Can change video', 10, 'change_video'),
(39, 'Can delete video', 10, 'delete_video'),
(40, 'Can view video', 10, 'view_video'),
(41, 'Can add jadwal', 11, 'add_jadwal'),
(42, 'Can change jadwal', 11, 'change_jadwal'),
(43, 'Can delete jadwal', 11, 'delete_jadwal'),
(44, 'Can view jadwal', 11, 'view_jadwal'),
(45, 'Can add anggota', 12, 'add_anggota'),
(46, 'Can change anggota', 12, 'change_anggota'),
(47, 'Can delete anggota', 12, 'delete_anggota'),
(48, 'Can view anggota', 12, 'view_anggota'),
(49, 'Can add Token', 13, 'add_token'),
(50, 'Can change Token', 13, 'change_token'),
(51, 'Can delete Token', 13, 'delete_token'),
(52, 'Can view Token', 13, 'view_token'),
(53, 'Can add status news', 14, 'add_statusnews'),
(54, 'Can change status news', 14, 'change_statusnews'),
(55, 'Can delete status news', 14, 'delete_statusnews'),
(56, 'Can view status news', 14, 'view_statusnews'),
(57, 'Can add token', 15, 'add_tokenproxy'),
(58, 'Can change token', 15, 'change_tokenproxy'),
(59, 'Can delete token', 15, 'delete_tokenproxy'),
(60, 'Can view token', 15, 'view_tokenproxy'),
(61, 'Can add UKT', 16, 'add_ujiankenaikantingkat'),
(62, 'Can change UKT', 16, 'change_ujiankenaikantingkat'),
(63, 'Can delete UKT', 16, 'delete_ujiankenaikantingkat'),
(64, 'Can view UKT', 16, 'view_ujiankenaikantingkat'),
(65, 'Can add anggota validasi', 17, 'add_anggotavalidasi'),
(66, 'Can change anggota validasi', 17, 'change_anggotavalidasi'),
(67, 'Can delete anggota validasi', 17, 'delete_anggotavalidasi'),
(68, 'Can view anggota validasi', 17, 'view_anggotavalidasi'),
(69, 'Can add Validasi', 18, 'add_anggotavalidasi'),
(70, 'Can change Validasi', 18, 'change_anggotavalidasi'),
(71, 'Can delete Validasi', 18, 'delete_anggotavalidasi'),
(72, 'Can view Validasi', 18, 'view_anggotavalidasi');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL DEFAULT 1,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$QW7G8JU2a5mwMleuMsOhMd$K85rloI9BtHio3vja0YRtw3BPGKMazXwHZ/3aLvwZic=', '2022-07-29 18:15:03.639873', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2020-03-14 03:05:21.450382'),
(12, 'pbkdf2_sha256$120000$cFhvyQ46WhNC$ahSa3ARlPEIqwI5NNk48YTbQ7zh3dfckTQYP9HTciiM=', NULL, 0, 'super', '', '', 'super@gmail.com', 0, 1, '2020-08-11 10:02:29.395476'),
(16, 'pbkdf2_sha256$260000$HmwK4n0GaRFEuMpah57P5n$qJm59IHHi54rbOXNXKh9DTgurUK55tMIWuzj+uSqDYA=', '2022-01-23 07:19:23.168397', 1, 'pn', '', '', 'pn@gmail.com', 1, 1, '2022-01-23 07:08:29.492564'),
(17, 'pbkdf2_sha256$260000$sZriQFT6YDOzhxDggQ6r9J$DfvIDbEeu52ZPAvpTrw8f+WEnaJexTcmRSh62si8huQ=', '2022-07-13 07:58:22.043497', 0, 'pelatih', '', '', '', 1, 1, '2022-01-23 09:09:36.000000'),
(18, 'pbkdf2_sha256$260000$DPxyhVJNlcGxGfVJ4gk2W9$v0pWIvwEC2mzeP74nbYGISpflwRMkXeDg2urDKQp/u4=', '2022-07-19 06:31:11.740551', 1, 'pagarnus', '', '', 'pagarnus@gmail.com', 1, 1, '2022-06-12 02:15:09.074821');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `berita_berita`
--

CREATE TABLE `berita_berita` (
  `id` int(11) NOT NULL,
  `title` varchar(225) NOT NULL,
  `thumbnail` varchar(100) NOT NULL,
  `body` longtext DEFAULT NULL,
  `created_at` date NOT NULL,
  `penulis_id` int(11) NOT NULL,
  `slug` varchar(225) NOT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `berita_berita`
--

INSERT INTO `berita_berita` (`id`, `title`, `thumbnail`, `body`, `created_at`, `penulis_id`, `slug`, `status_id`) VALUES
(7, 'Sejarah Pagar Nusa', 'thumbnail/thumbnail/thumbnail/pn4_thumb_thumb.jpg', '<p>Nama awal berdirinya organisasi ini adalah Ikatan Pencak Silat Nahdlatul Ulama Pagar Nusa. Pagar Nusa merupakan singkatan dari IPS NU dengan akronim Pagar NU dan Bangsa. IPSNU Pagar Nusa adalah wadah yang di sahkan oleh NU sebagai organisasi pencak silat di lingkungan Nahdlatul Ulama yang kegiatan penyelenggara dan pertanggung jawaban sama sebagai mana lembaga yang bernaungan di Nahdlatul Ulama.</p>\r\n\r\n<p>Sejak pada 3 Januari 1986 IPSNU mengalami pasang surut dalam setiap perjalanannya. Organisasi IPSNU ini pertama kali berdiri adalah sebuah perguruan dan setelah melakukan Musyawarah Nasional dan Rakernas (Rapat Kerja Nasional) tentang perubahan nama dan status menjadi Lembaga (Hasil Muktamar NU di Cipasung, Tasikmalaya Tahun 1994) Yang disingkat menjadi LPS NU. Kemudian pada Muktamar NU di Lirboyo, Kediri Tahun 1999) berubah menjadi Badan Otonom. Kemudia berubah menjadi LPS NU kembali sesuai amanat Muktamar NU di masa selanjutnya.</p>\r\n\r\n<p>Dan kini Pagar Nusa telah menjadi Badan Otonom (Banom) PSNU Pagar Nusa dalam naungan NU. Banom adalah organisasi yang dibawah naungan NU anak Organisasi dengan pengawasan dan prosedural mandiri, Namun sebagai barometer utama dalam menjalankan tugasnya. Badan Otonom di bawah Naungan NU di bagi menjadi 2 Kategor, Yaitu :</p>\r\n\r\n<ul>\r\n	<li>Badan Otonom yang berbasis usia dan kelompok masyarakat tertentu seperti IPNU, IPPNU, Fatayat, Ansor, dan Muslimat</li>\r\n	<li>Badan otonom yang mempunyai profesi tertentu dan kekhususan seperti JQH (Jam&rsquo;iyah Qurra Wal Huffazh) dan termasuk Pagar Nusa.</li>\r\n</ul>\r\n\r\n<p>Dengan perubahan dan perkembangan tersebut tidak mengurangi potensi Pagar Nusa justru menambah potensi Perkembangan Pagar Nusa NU untuk lebih dekat dengan masyarakat luas dan menaungi budaya Pencak Silat. Status Resmi kelembagaan menjadikan Pagar Nusa wajib melestarikan dan mengembangkan Pencak Silat oleh seluruh Warga NU. Segala Kegiatan yang berhubungan dengan Pencak Silat dan beladiri serta segenap aspeknya dari fisik mental dan spiritual, dari pendidikan dan sistem pengamanan merupakan tugas wajib dan bidan gapan bagi Banom Pagar Nusa NU ini.</p>\r\n\r\n<p>Terdapat jati diri dalam Pagar Nusa sama dengan jati diri NU lebih mengedepankan persaudaraan antar Pagar Nusa yang artinya tanpa membedakan aliran yang menaung di Pagar Nusa Nahdlatul Ulama ini. Bhineka Tunggal Ika berbeda tapi tetap satu jua, berbeda aliran tetap dalam satu ikatan Pagar Nusa.</p>\r\n\r\n<p>Pandangan Pagar Nusa terhadap aliran dan perguruan lain menganggap saudara, sahabat dan keluarga karena semua aliran Pencak Silat di Nusantara ini mempunyai tali ikatan yang sama, seuai tapaki tilas sejarah kerajaan yang anda di Indonesia pada abad ke 14 penyebar Islam Wali Songo yang begitu banyak mengajarkan tuntunan hidup untuk menjalani hidup damai dengan melalui seni Pencak Silat yang dibuktikan banyak para pendekar yang menjadi murid dari Wali Songo.</p>\r\n\r\n<h4>PAGAR NUSA DAN GASMI</h4>\r\n\r\n<p>Pada zaman dahulu di lingkungan pondok pesantren NU terdapat banyak aliran yang mewajibkan santrinya untuk mempelajari Pencak Silat. Dari sekian banyak aliran silat, tentunya NU berfikir untuk mewadahi seluruh aliran di Nusantara ini menjadi satu naungan yang mengikat menjadi keluarga yang bersama-sama mengembangkan tradisi silat yang turun dari Wali Songo yang mengalir ke pondok pesantren.</p>\r\n\r\n<p>Hingga pada suatu saat KH. Mustofa Bisri (Rembang) prihatin dengan keadaan semakin surutnya dunia persilatan yang ditandai dengan peran pondok pesantren sebagai Padepokan Pencak Silat. Padalah Zaman dahulu Kyai-Kyai pondok pesantren juga merangkap sebagai pendekar yang mengajarkan ilmu beladiri Pencak Silat kepada santrinya. Sedangkan berbagai aliran muncul diluar pondok pesantren tumbuh dan semakin menjamur. Maka perlunya wadah perguruan atau padepokan Pencak Silat dibawah naungan Nahdlatul Ulama. Tentunya wadah ini tetap membuka keluasan bagi setiap aliran untuk mengembangkan dan mempertahankan ciri khas aliran masing-masing.</p>\r\n\r\n<p>Terbentuknya sebuah wadah Pencak Silat ini merupakan usulan dari para Ulama NU yang saat itu dimulai dengan terbetuknya GASMI (Gerakan Aksi SIlat Muslimin Indonesia) oleh beliau KH. Abdullah Maksum Jauhari yang berdiri sekitar pada (butuh rujukan) 11 Januari 1966. Walaupun saat itu belum resmi berdiri beliau sudah melakukan pelatihan Pencak Silat yang waktu itu diadakan di Pondok Pesantren Lirboyo Kediri.</p>\r\n\r\n<p>Selain untuk mengembangkan dan mempertahankan budaya Pencak Silat di pondok pesantren lahirnya GASMI adalah merupakan reaksi atas berdirinya LEKRA (Lembaga Kesenian Rakyat), Yang pada waktu itu adalah otak dibalik provokatif dan sabotase serta teror yang bernaungan dibawah PKI (Partai Komunis Indonesia). Dengan beridirinya GASMI masyarakat dibekali traning sebagai bekal dalam melawan kebrutalan PKI. GASMI resmi berdiri pada (butuh rujukan) 14 Januari 1970 di kediaman beliau KH. Abdullah Maksum Jauhari (Gus Maksum) yang dihadiri oleh para pendekar se Eks Karesidenan Kediri dan Ponorogo.</p>\r\n\r\n<p>GASMI inilah yang menjadi inspirasi Gus Maksum untuk mengawali menyatukan aliran Pencak Silat Nahdlatul Ulama. Dimulai dengan merangkul Silat tradisional seperti Jiwa Suci (Pondok Pesantren Al Maruf Bandar Lor, Kediri), PORTUGAL (Silat tradisional Blitar), Asta Bahana (Kediri), dan beberapa padepokan silat lokal lainya.</p>\r\n\r\n<p>Mengenai sejarah beridirnya Pagar Nusa melalui proses panjang sebagai satu-satunya wadah Pencak SIlat yang sah dibawah naungan Nahdlatul Ulama, dengan beberapa tahap :</p>\r\n\r\n<h4>1. Pertemuan Awal</h4>\r\n\r\n<p>Berkat Usaha dan pendekatan kepada para pendekar dan beberapa kyai pondok pesantren, tokoh silat dan tokoh masyarakat membuahkan hasil dan kesepakatan untuk mengadakan pertemuan pertama pada 27 September 1985 di pondok pesantren Tebu Ireng, Jombang, Jawa Timur. Pertemuan yang dihadiri oleh sesepuh KH. Syamsuri Badawi dan dari kalangan pendekar KH. Abdullah Maksum Jauhari (Gus Maksum), KH. Abdurrahman Usman (Jombang), KH. Muhajir (Kediri), H. Atoilah (Surabaya), Drs. Lamro (Ponorogo), Timbul Jaya (Lumajang) dan beberapa tokoh pendekar lainya. Dengan Menghasilkan kesepakatan yang sangat penting yaitu :</p>\r\n\r\n<ul>\r\n	<li>Fatwa Ulama KH. Syamsuri Badawi bahwa, &ldquo;Mempelajari Silat hukumnya boleh dipelajari dengan tujuan perjuangan.</li>\r\n	<li>Dibentuknya sebuah ikatan bersama untuk mempersatukan aliran Silat dibawah naungan Nahdlatul Ulama.</li>\r\n</ul>\r\n\r\n<h4>2. Pertemuan Kedua</h4>\r\n\r\n<p>Dengan surat keputusan resmi dan pembentukan tim persiapan pendirian Pencak SIlat NU yang disahkan pada 10 Desember 1985 dan berlaku sampai dengan 15 Januari 1986. Mengadakan pertemuan selanjutnya di Pondok Pesantren Lirboyo Kediri pada 3 Januari 1986 musyawarah ini juga menandai lahirnya Ikatan Pencak Silat nahdlatul Ulama Pagar Nusa. Nama tersebut diciptakan oleh KH. Mujib Ridwan dalah putra KH. Ridwan Abdullah (Pencipta Lambang NU). Serta Membentuk kepengurusan nasional dan untuk Wilayah Jawa Timur adalah :</p>\r\n\r\n<p><img alt=\"pagar nusa\" src=\"https://pagarnusa.online/wp-content/uploads/2019/09/Capture.png\" /></p>\r\n\r\n<p>Untuk Membentuk kepengurusan ditingkat Nasional, PBNU (Pengurus Besar Nahdlatul Ulama) yang saat itu di pimpin oleh beliau KH. Abdurrahman Wahid dan KH. Ahmad Siddiq membuat surat pengantar ditunjuk sebagai pengurus Pagar Nusa. Di adakan Musyawarah Nasional (Munas) ke I Pagar Nusa yang diselengarakan di pondok pesantren Zainul Hasan, genggong, Krakasan, probolinggo yang dihadiri oleh para Pendekar NU seluruh Nusantara. Munas itu mengangkat langsung beliau KH. Abdullah Maksum Jauhari (Gus Maksum) menjadi Ketua umum pertama dan Prof. Dr. H. Suharbilah sebagai ketua harian dan H. Kuncoro serta H. Masyhur menjadi Sekertaris (di tingkat Nasional).</p>\r\n\r\n<p>Munas ke II Pagar Nusa yang diadakan di padepokan IPSI Taman Mini Indonesia, Jakarta pada 22 Januari 2001. yang dihadiri dan diikuti dari berbagai perwakilan daerah. Membahas tentang Menggali, mengembangkan dan melestarikan beladiri Pencak Silat Indonesia.</p>\r\n\r\n<p>Menurut eksiklopedia NU, dengan nama resmi Ikatan Pencak Silat nahdlatul Ulama (IPS NU) Pagar Nusa, kemudian sekarang membuang kata ikatan menjadi Pencak Silat Nahdlatul Ulama (PSNU) Pagar Nusa.</p>\r\n\r\n<p><em>Sumber : NU Online dan Wikipedia</em></p>', '2020-03-14', 1, 'sejarah-pagar-nusa63eb42f540994d', 2),
(25, 'Menyentuh Hati, ini Pesan PCNU Banyuwangi Pada Harlah ke-35 Pagar Nusa', 'thumbnail/thumbnail/Ali-Makki-Zaini_thumb_thumb.jpg', '<p>PAGARNUSABANYUWANGI.ORG&nbsp;&ndash; Badan Otonom Nahdlatul Ulama (NU)&nbsp;<a href=\"https://www.timesindonesia.co.id/tag/Pagar-Nusa\" target=\"_top\">Pagar Nusa</a>&nbsp;genap berusia 35 tahun. Pada harlah tahun ini ada pesan khusus dari Ketua PCNU Banyuwangi, KH&nbsp;Ali Makki Zaini untuk para pendekar bumi Blambangan.</p>\r\n\r\n<p>&quot;Pendekar PN sejati iku, gak wedi kecuali nang Allah. Seneng nulungi wong liyo utamane faqir miskin (Pendekar Pagar Nusa sejati itu tidak takut, kecuali kepada Allah. Suka menolong utamanya kepada fakir miskin,&quot; kata Gus Makki sapaan akrabnya, Senin (4/1/2021).</p>\r\n\r\n<p>Menurut Gus Makki, Pagar Nusa didirikan tidak hanya sebagai perkumpulan para pendekar atlet pencak. Tapi mempunyai tugas dan fungsi lebih untuk mengabdi dan menolong masyarakat.</p>\r\n\r\n<p>&quot;Kalau hanya oleh fisik buat apa. Apa bedanya dengan yang lain. Coba simak, jiwai dan resapi makna &#39;Laa Gholiba illa Billah&#39; (Tidak ada yang bisa menjadi pemenang atau tidak ada yang bisa buat sukses kecuali Tuhan Allah SWT),&quot; ungkap Gus Makki.</p>\r\n\r\n<p>Pengasuh Pondok Pesantren Bahrul Hidayah Rayut, Desa Parijatah Kulon, Kecamatan Srono itu mengingatkan agar para pesilat Pagar Nusa tidak mengandalkan fisik saja.</p>\r\n\r\n<p>&quot;Betapa urusan fisik tidak dijadikan &#39;gondelan utama&#39; (pegangan utama). Yang jadi gondelan utama adalah Allah SWT,&quot; ucap Gus Makki.</p>\r\n\r\n<p>Menendang, menangkis, memukul, semua karena Allah. Nah Pagar Nusa harus melewati zona nyamannya selama ini,&quot; imbuhnya.</p>\r\n\r\n<p>PCNU Banyuwangi juga berharap di hari lahir yang jatuh pada 3 Januari ini, sudah saatnya Pagar Nusa menampilkan sisi lain daripada gerakan silat saja. Yakni sisi sosial kemanusiaan.</p>\r\n\r\n<p>&quot;Intine wong liyo ndak iso, Pagar Nusa gudu iso. Wong liyo kaboten, Pagar Nusa gudu entengan. Wong liyo gak peduli, Pagar Nusa gudu peduli. Wong liyo serba itung-itungan dalam berkhidmat, Pagar Nusa gudu los dol. Dirgahayu Pagar Nusa ku,&quot; pesan Gus Makki dalam bahasa jawa.</p>\r\n\r\n<p>Dalam bahasa Indonesia berarti &#39;Intinya orang lain tidak bisa, Pagar Nusa harus bisa. Orang lain keberatan, Pagar Nusa harus ringan tangan. Orang lain tidak peduli, Pagar Nusa harus peduli. Orang lain perhitungan dalam berkhidmat, Pagar Nusa harus loyal. Dirgahayu Pagar Nusa ku&#39;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Apa yang disampaikan Ketua PCNU Banyuwangi memang selaras dengan apa yang sudah dilakukan oleh Pagar Nusa Banyuwangi selama ini. Salah satunya adalah saat pandemi Covid-19, Pagar Nusa lah yang tak kenal lelah dalam melakukan upaya sosialisasi pencegahan kepada masyarakat.</p>\r\n\r\n<p>Diberitakan sebelumnya, dalam harlah Pagar Nusa yang ke 35, PC Pagar Nusa Banyuwangi memberikan instruksi kepada seluruh kader dari hulu hingga hilir untuk khataman Al-Qur&#39;an sebanyak 35 kali.</p>\r\n\r\n<p>&quot;Adanya khataman ini bertujuan untuk mengkhatamkan perselisihan dan permusuhan di antara sesama anggota,&quot; ucap Sekretaris PC Pagar Nusa Banyuwangi, Ahmad Syifa Nailul Wafar.</p>\r\n\r\n<p>Selain itu, Pengasuh Pesantren Altet Ibnu Manan Sumberberas itu berharap, pada tahun 2021 ini Pagar Nusa Banyuwangi bisa tambah solid dan saling menjaga tali kekeluargaan.</p>\r\n\r\n<p>Sebagai informasi, organisasi Pencak Silat Pagar Nusa lahir pada 3 Januari 1986 di Pondok Pesantren Lirboyo Kediri, Jawa Timur. Organisasi yang punya ratusan aliran dan gabungan perguruan silat berhaluan Aswaja tersebut diketuai pertama kali oleh KH Maksum Jauhari, pendekar pilih tanding yang dikenal sakti mandraguna. (*)</p>', '2021-03-22', 1, 'menyentuh-hati-ini-pesan-pcnu-banyuwangi-pada-harlah-ke-35-pagar-nusa2098e40c7fc344', 2),
(26, 'Pagar Nusa Jatim Gelar Rakorwil, ini yang Dibahas', 'thumbnail/IMG-20210329-WA0048_thumb.jpg', '<p>&nbsp;</p>\r\n\r\n<p>BANYUWANGI - Pagar Nusa Jawa Timur (Jatim) kembali menggelar rapat koordinasi wilayah (Rakorwil), pada Sabtu (27/3/2021). Acara yang dilaksanakan di Trowulan, Kabupaten Mojokerto tersebut diikuti oleh oleh seluruh perwakilan Cabang Pagar Nusa se Jatim.&nbsp;</p>\r\n\r\n<p>Acara Rakorwil digelar dengan memperhatikan protokol pencegahan Covid-19. Seluruh peserta yang hadir tetap menjaga jarak, memakai masker dan memastikan tangannya bersih.</p>\r\n\r\n<p>Dalam pertemuan itu, Ketua Pimpinan Wilayah (PW) Pagar Nusa Jawa Timur, H. Abdul Muchid menekankan banyak hal, utamanya tentang militansi gerak langkah organisasi.</p>\r\n\r\n<p>&quot;Mulai dari penyelarasan atribut bet, sabuk dan bendera. Kemudian peningkatan bidang IT dan multimedia,&quot; kata H. Muchid saat membuka Rakorwil.</p>\r\n\r\n<p>Menurut H. Muchid, yang perlu diperhatikan dalam penataan organisasi adalah dengan menjaga komunikasi antara pengurus dengan anggota dan sebaliknya.</p>\r\n\r\n<p>&quot;Apapun aliran dan padepokannya yang terpenting harus tetap menjaga satu komando,&quot; ungkap H. Muchid.</p>\r\n\r\n<p>Selain itu, Pimpinan Wilayah Jawa Timur juga meminta kepada Pimpinan Cabang untuk memperhitungkan kembali tentang pelaksanaan dalam Ujian Kenaikan Tingkat (UKT).</p>\r\n\r\n<p>&quot;Mohon diperhatikan tentang kekerasan di dalam UKT, penyelarasan desain sertifikat UKT, sertifikat UKT yang harus menggunakan tanda tangan basah hingga pengesahan,&quot; terangnya.</p>\r\n\r\n<p>Sementara itu Ketua Umum Pimpinan Pusat Pagar Nusa Muchamad Nabil Haroen mengingatkan tentang pendataan Kartu Tanda Anggota (KTA) kepada para Pimpinan Cabang.</p>\r\n\r\n<p>&quot;Terkait dengan pendataan KTA juga harus diperhatikan. Mohon kerjasamanya,&quot; ucap Gus Nabil sapaan akrabnya.</p>\r\n\r\n<p>Gus Nabil juga menyampaikan tentang SOP UKT dan organisasi agar selama pelaksanaan tidak ada hambatan dan meminimalisir dampak yang ditimbulkan.&nbsp;</p>\r\n\r\n<p>&quot;Jika ada gesekan antar pesilat jangan pernah ada ikatan damai sebelum ke jenjang Pengadilan. Meskipun itu anggota Pagar Nusa sekalipun,&quot; tegas Gus Nabil.</p>\r\n\r\n<p>&quot;Karena tantangan yang dihadapi tiap zaman sangat berbeda. Yang pasti kita harus satu komando, loyal dan taat pada pimpinan,&quot; tandas Ketua Umum Pimpinan Pusat Pagar Nusa Muchamad Nabil Haroen. (*)</p>\r\n\r\n<p>&nbsp;</p>', '2021-03-29', 1, 'pagar-nusa-jatim-gelar-rakorwil-ini-yang-dibahasd82f4dca8fb149', 1),
(27, 'Pendekar Nusantara Berduka, H. Faidlol Mannan, Sesepuh Pagar Nusa Telah Tiada', 'thumbnail/thumbnail/IMG-20210620-WA0076_thumb_thumb.jpg', '<p>Oleh : M. Sugeng (Pembina Pagar Nusa Jawa Timur sekaligus Majelis Pendekar Pimpinan Pusat Pagar Nusa)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>BANYUWANGI - Sungguh kita telah kehilangan Manusia Silat dengan berpulangnya Guru kita H. Faidlol Mannan, S.Sos.</p>\r\n\r\n<p>Beliau merupakan Pendekar Pilih Tanding yang betul betul hidup berdarah daging Pencak Silat.</p>\r\n\r\n<p>Pendekar yang punya nama muda sebelum Haji sebagai Darsono ini sangat dikenal di Jawa Timur dengan panggilan Kadir.</p>\r\n\r\n<p>Itu tak lain karena sangat populer dan dekatnya dengan masyarakat silat, dan kalau tampil unjuk kebolehan jurus jurusnya selalu menawan dan akting lucu sebagaimana pelawak Kadir dari Kediri dengan logat Maduranya.</p>\r\n\r\n<p>Beliau yang merintis Pagar Nusa di Situbondo mulai nol. Seorang santri yang mengabdikan diri di dunia Pencak Silat lengkap mulai Tradisi, IPSI, Pesantren, masyarakat, bahkan sangat kental berkiprah membersihkan kemaksiatan di wilayahnya.</p>\r\n\r\n<p>Di dunia tradisi beliau sangat inten mulai tampil sendiri di kegiatan masyarakat atau hajatan dll, sampai yang mengorganisasi penampilan Festival dan Haflah Akhirussanah Pondok Pesantren.</p>\r\n\r\n<p>Di forum resmi, di IPSI sampai terpilih sebagai Ketua Pengcab Situbondo, dan duduk juga di kepengurusan IPSI Jawa Timur.</p>\r\n\r\n<p>Di Pagar Nusa disamping sebagai anggota Dewan Khos Pusat juga menjadi Ketua Umum Jawa Timur dua Periode berturut turut.</p>\r\n\r\n<p>Sebagai seorang santri meski jabatannya sangat banyak (termasuk pengurus Wisata Pantai Pasir Putih), tetapi tetap mengemban Pengawalan Ziarah Walisongo Pondok Pesantren Kiai dan Gusnya KH Kholil Syamsul Arifin (Lora Kholil).</p>\r\n\r\n<p>Beliau juga sering sebagai pelopor pencegahan dan penanggulangan tempat tempat maksiat bersama warga masyarakat.</p>\r\n\r\n<p>Beliau pula yang mendekatkan Abah Prof. H. Suhar Billah dengan Pencak Tradisional Aluran Bawean yang sangat terkenal itu.</p>\r\n\r\n<p>Beliau juga yang pertama kali mengenalkan istilah nama &#39;Pati Gaman&#39; untuk tehnik tangan kosong lawan senjata.</p>\r\n\r\n<p>Dalam dunia Prestasi, H Faidlol Manan sudah tak diragukan lagi kiprahnya terutama dalam mengubah mindset Pagar Nusa yang sebelumnya banyak tawuran jalanan yang ganas menjadi Pencak Pertandingan yang rapi dan ramah.</p>\r\n\r\n<p>Tak kalah penting, Beliau juga mampu mempertahankan tradisi Penelitian dan Pengembangan (Litbang) dan Inventarisasi Jurus sebagai langkah &#39;Pelestarian dan Pengembangan&#39; keilmuan beladiri asli Indonesia.</p>\r\n\r\n<p>Diantara hasilnya adalah Pati Gaman yang bukan &#39;Perguruan Tinggi&#39; tetapi masuk dalam tehnik Pasukan Inti sebelumnya telah dimotori oleh Abah Bagiono (Ayahanda Mas Sastro Lesbumi/tangan kanan Prof. KH. Agus Sunyoto Bapak Literasi NU Allahu Yarham). Di masa Abah Bagiono tehnik Pasukan Inti ini disebut &quot;Buser&quot; dengan pendekatan &quot;lumpuhkan secepatnya.</p>\r\n\r\n<p>Pesan H Faidlol Manan yang paling sering Beliau sampaikan adalah &#39;Sayyidul Qaum Khadimuhum&#39; Pemimpin adalah pelayan bagi kaumnya.</p>\r\n\r\n<p>Kini sosoknya telah tiada. Selamat Jalan Guruku H Faidlol Mannan, S.Sos. Semoga Panjenengan mendapat tempat yang mulia disisi Allah SWT.</p>\r\n\r\n<p>Kami semua berduka atas kepergianmu dari dunia. Al-fatihah. (*)</p>', '2021-06-20', 1, 'pendekar-nusantara-berduka-h-faidlol-mannan-sesepuh-pagar-nusa-telah-tiada1802839a744847', 2);

-- --------------------------------------------------------

--
-- Table structure for table `berita_berita_kategori`
--

CREATE TABLE `berita_berita_kategori` (
  `id` int(11) NOT NULL,
  `berita_id` int(11) NOT NULL,
  `kategory_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `berita_berita_kategori`
--

INSERT INTO `berita_berita_kategori` (`id`, `berita_id`, `kategory_id`) VALUES
(15, 7, 6),
(13, 25, 4),
(14, 26, 5),
(16, 27, 5);

-- --------------------------------------------------------

--
-- Table structure for table `berita_kategory`
--

CREATE TABLE `berita_kategory` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `berita_kategory`
--

INSERT INTO `berita_kategory` (`id`, `name`) VALUES
(1, 'sport'),
(2, 'hiburan'),
(3, 'Film'),
(4, 'PCNU'),
(5, 'Pimpinan Wilayah'),
(6, 'sejarah');

-- --------------------------------------------------------

--
-- Table structure for table `berita_statusnews`
--

CREATE TABLE `berita_statusnews` (
  `id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `berita_statusnews`
--

INSERT INTO `berita_statusnews` (`id`, `status`) VALUES
(1, 'breaking news'),
(2, 'tranding');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-03-14 03:19:03.826660', '1', 'Kategory object (1)', 1, '[{\"added\": {}}]', 8, 1),
(2, '2020-03-14 03:19:35.923174', '2', 'Kategory object (2)', 1, '[{\"added\": {}}]', 8, 1),
(3, '2020-03-14 03:24:10.058951', '1', 'Lorem Ipsum', 1, '[{\"added\": {}}]', 7, 1),
(4, '2020-03-14 03:30:10.544393', '1', 'Lorem Ipsum', 2, '[]', 7, 1),
(5, '2020-03-14 03:51:17.720037', '1', 'Lorem Ipsum', 2, '[]', 7, 1),
(6, '2020-03-14 04:30:34.171894', '2', 'Lorem Ipsum', 1, '[{\"added\": {}}]', 7, 1),
(7, '2020-03-14 04:32:52.526008', '2', 'Lorem Ipsum', 2, '[{\"changed\": {\"fields\": [\"body\"]}}]', 7, 1),
(8, '2020-03-14 08:10:36.659955', '3', 'The standard Lorem Ipsum passage, used since the 1500s', 1, '[{\"added\": {}}]', 7, 1),
(9, '2020-03-14 10:12:24.050714', '4', 'Lorem Ipsum', 1, '[{\"added\": {}}]', 7, 1),
(10, '2020-03-14 10:12:55.901051', '5', 'Lorem ipsum', 1, '[{\"added\": {}}]', 7, 1),
(11, '2020-03-14 10:14:06.133237', '6', 'lorem ipsum', 1, '[{\"added\": {}}]', 7, 1),
(12, '2020-03-14 10:14:47.544621', '7', 'Lorem Ipsum', 1, '[{\"added\": {}}]', 7, 1),
(13, '2020-03-14 10:23:11.845374', '6', 'lorem ipsums', 2, '[{\"changed\": {\"fields\": [\"title\"]}}]', 7, 1),
(14, '2020-03-14 10:24:58.023107', '5', 'Lorem ipsum', 2, '[]', 7, 1),
(15, '2020-03-14 10:25:03.193888', '5', 'Lorem ipsum', 2, '[]', 7, 1),
(16, '2020-03-14 10:25:10.229132', '3', 'The standard Lorem Ipsum passage, used since the 1500s', 2, '[]', 7, 1),
(17, '2020-03-14 10:25:21.549513', '5', 'Lorem ipsum', 2, '[]', 7, 1),
(18, '2020-03-14 10:25:53.975622', '7', 'Lorem Ipsums', 2, '[{\"changed\": {\"fields\": [\"title\"]}}]', 7, 1),
(19, '2020-03-14 10:26:22.113086', '5', 'Lorem ipsum', 2, '[]', 7, 1),
(20, '2020-03-14 10:26:29.156376', '4', 'Lorem Ipsum', 2, '[]', 7, 1),
(21, '2020-03-14 23:29:07.271210', '1', 'Lorem Ipsum', 1, '[{\"added\": {}}]', 9, 1),
(22, '2020-03-14 23:29:21.967665', '2', 'Lorem Ipsum', 1, '[{\"added\": {}}]', 9, 1),
(23, '2020-03-14 23:29:37.945587', '3', 'Lorem Ipsum', 1, '[{\"added\": {}}]', 9, 1),
(24, '2020-03-14 23:29:48.428116', '4', 'Lorem Ipsum', 1, '[{\"added\": {}}]', 9, 1),
(25, '2020-03-14 23:29:59.297578', '5', 'Lorem Ipsum', 1, '[{\"added\": {}}]', 9, 1),
(26, '2020-03-14 23:30:10.001008', '6', 'Lorem Ipsum', 1, '[{\"added\": {}}]', 9, 1),
(27, '2020-03-14 23:30:22.646840', '7', 'Lorem Ipsum', 1, '[{\"added\": {}}]', 9, 1),
(28, '2020-03-14 23:30:35.481941', '8', 'Lorem Ipsum', 1, '[{\"added\": {}}]', 9, 1),
(29, '2020-03-15 03:31:05.083422', '1', 'Best Perform PAGAR NUSA Spesial Hari Santri Nasional', 1, '[{\"added\": {}}]', 10, 1),
(30, '2020-03-15 03:34:25.215373', '2', 'Keber Saman pagar Nusa ranting sumberberas', 1, '[{\"added\": {}}]', 10, 1),
(31, '2020-03-15 03:35:31.154597', '3', 'Pagar Nusa Minhajut Thullab - BC 313 Banyuwangi, in Actions', 1, '[{\"added\": {}}]', 10, 1),
(32, '2020-03-15 03:36:24.835299', '4', 'ganda Pencak SIlat Pagar Nusa Minhajut thullab Banyuwangi', 1, '[{\"added\": {}}]', 10, 1),
(33, '2020-03-15 03:37:48.584493', '5', 'Ngweri ???? Atraksi Berb4haya Black Cobra Pagar Nusa', 1, '[{\"added\": {}}]', 10, 1),
(34, '2020-03-15 03:38:45.844063', '6', 'zaki pagar nusa minhajut thullab banyuwangi, pengalaman pertama', 1, '[{\"added\": {}}]', 10, 1),
(35, '2020-03-15 03:39:16.081177', '7', 'Farizz PN Minhajut Thullab SMK minhajut Thullab Banyuwangi', 1, '[{\"added\": {}}]', 10, 1),
(36, '2020-03-15 03:39:48.808940', '8', 'Pengalaman Farizz Yg Berharga', 1, '[{\"added\": {}}]', 10, 1),
(37, '2020-03-15 04:39:32.987272', '1', 'Tanding bola', 1, '[{\"added\": {}}]', 11, 1),
(38, '2020-03-15 06:01:23.203419', '2', 'Latihan', 1, '[{\"added\": {}}]', 11, 1),
(39, '2020-03-15 06:01:48.398949', '3', 'Separigan', 1, '[{\"added\": {}}]', 11, 1),
(40, '2020-03-15 06:02:19.309671', '4', 'sabong', 1, '[{\"added\": {}}]', 11, 1),
(41, '2020-03-15 06:02:40.500373', '5', 'gladi resik', 1, '[{\"added\": {}}]', 11, 1),
(42, '2020-03-15 06:02:58.198981', '6', 'Persiapan Kejurnas', 1, '[{\"added\": {}}]', 11, 1),
(43, '2020-03-15 11:37:15.219770', '6', 'Persiapan Kejurnas', 2, '[{\"changed\": {\"fields\": [\"start\"]}}]', 11, 1),
(44, '2020-03-15 11:37:19.780096', '5', 'gladi resik', 2, '[{\"changed\": {\"fields\": [\"start\"]}}]', 11, 1),
(45, '2020-03-15 11:37:23.918861', '4', 'sabong', 2, '[{\"changed\": {\"fields\": [\"start\"]}}]', 11, 1),
(46, '2020-03-15 11:37:30.194198', '4', 'sabong', 2, '[]', 11, 1),
(47, '2020-03-15 11:37:34.207615', '3', 'Separigan', 2, '[{\"changed\": {\"fields\": [\"start\"]}}]', 11, 1),
(48, '2020-03-15 12:41:21.985958', '1', 'Diah', 1, '[{\"added\": {}}]', 12, 1),
(49, '2020-03-15 12:45:29.891844', '2', 'Anton', 1, '[{\"added\": {}}]', 12, 1),
(50, '2020-03-15 12:45:43.172369', '2', 'Anton', 2, '[]', 12, 1),
(51, '2020-03-15 12:45:56.856338', '1', 'Diah', 2, '[]', 12, 1),
(52, '2020-03-15 12:46:03.351654', '1', 'Diah', 2, '[]', 12, 1),
(53, '2020-03-15 12:46:15.428430', '2', 'Anton', 2, '[]', 12, 1),
(54, '2020-03-15 12:48:02.773802', '2', 'Anton', 2, '[{\"changed\": {\"fields\": [\"status\"]}}]', 12, 1),
(55, '2020-03-15 12:48:13.504040', '1', 'Diah', 2, '[{\"changed\": {\"fields\": [\"status\"]}}]', 12, 1),
(56, '2020-03-15 12:48:40.353937', '3', 'Lukman', 1, '[{\"added\": {}}]', 12, 1),
(57, '2020-03-15 12:49:23.491046', '4', 'Mita', 1, '[{\"added\": {}}]', 12, 1),
(58, '2020-03-15 12:49:51.479148', '5', 'Komarun', 1, '[{\"added\": {}}]', 12, 1),
(59, '2020-03-15 12:50:02.980927', '2', 'Anton', 2, '[{\"changed\": {\"fields\": [\"jabatan\"]}}]', 12, 1),
(60, '2020-03-15 13:27:37.586721', '5', 'Komarun', 2, '[{\"changed\": {\"fields\": [\"status\"]}}]', 12, 1),
(61, '2020-03-15 13:27:43.980509', '4', 'Mita', 2, '[{\"changed\": {\"fields\": [\"status\"]}}]', 12, 1),
(62, '2020-03-15 13:27:51.770089', '3', 'Lukman', 2, '[{\"changed\": {\"fields\": [\"status\"]}}]', 12, 1),
(63, '2020-03-15 13:27:58.674388', '2', 'Anton', 2, '[{\"changed\": {\"fields\": [\"status\"]}}]', 12, 1),
(64, '2020-03-15 13:28:04.964394', '1', 'Diah', 2, '[{\"changed\": {\"fields\": [\"status\"]}}]', 12, 1),
(65, '2020-03-15 13:28:11.405243', '5', 'Komarun', 2, '[{\"changed\": {\"fields\": [\"status\"]}}]', 12, 1),
(66, '2020-03-15 13:28:18.962227', '4', 'Mita', 2, '[{\"changed\": {\"fields\": [\"status\"]}}]', 12, 1),
(67, '2020-03-15 13:28:26.385938', '1', 'Diah', 2, '[{\"changed\": {\"fields\": [\"status\"]}}]', 12, 1),
(68, '2020-03-29 07:09:49.901658', '2', 'keselyoleren', 1, '[{\"added\": {}}]', 4, 1),
(69, '2020-03-29 07:10:47.212971', '2', 'keselyoleren', 2, '[{\"changed\": {\"fields\": [\"is_staff\"]}}]', 4, 1),
(70, '2020-03-29 07:27:45.633148', '2', 'keselyoleren', 3, '', 4, 1),
(71, '2020-03-29 07:31:33.457560', '5', 'Komarun', 2, '[{\"changed\": {\"fields\": [\"profile_pic\"]}}]', 12, 1),
(72, '2020-03-29 07:33:28.411942', '4', 'Mita', 2, '[]', 12, 1),
(73, '2020-03-29 07:33:37.873833', '4', 'Mita', 2, '[{\"changed\": {\"fields\": [\"profile_pic\"]}}]', 12, 1),
(74, '2020-03-29 07:33:47.368371', '3', 'Lukman', 2, '[{\"changed\": {\"fields\": [\"profile_pic\"]}}]', 12, 1),
(75, '2020-03-29 07:33:57.833675', '2', 'Anton', 2, '[{\"changed\": {\"fields\": [\"profile_pic\"]}}]', 12, 1),
(76, '2020-03-29 07:34:08.423535', '1', 'Diah', 2, '[{\"changed\": {\"fields\": [\"profile_pic\"]}}]', 12, 1),
(77, '2020-03-29 07:42:31.489492', '5', 'Komarun', 2, '[{\"changed\": {\"fields\": [\"profile_pic\"]}}]', 12, 1),
(78, '2020-03-29 07:43:01.852582', '5', 'Komarun', 2, '[{\"changed\": {\"fields\": [\"profile_pic\"]}}]', 12, 1),
(79, '2020-03-29 07:43:39.322469', '5', 'Komarun', 2, '[{\"changed\": {\"fields\": [\"profile_pic\"]}}]', 12, 1),
(80, '2020-03-29 07:54:04.187895', '3', 'keselyoleren', 1, '[{\"added\": {}}]', 4, 1),
(81, '2020-05-09 17:44:37.766817', '3', 'keselyoleren', 3, '', 4, 1),
(82, '2020-05-09 17:44:52.508437', '4', 'keselyoleren', 1, '[{\"added\": {}}]', 4, 1),
(83, '2020-05-09 17:44:57.812575', '4', 'keselyoleren', 2, '[]', 4, 1),
(84, '2021-03-09 14:41:29.125271', '23', 'Test', 3, '', 7, 1),
(85, '2021-03-09 14:41:29.129110', '22', 'te', 3, '', 7, 1),
(86, '2021-03-09 14:41:29.131456', '21', 'Testing ', 3, '', 7, 1),
(87, '2021-03-09 14:41:29.133827', '20', 'title', 3, '', 7, 1),
(88, '2021-03-09 14:41:29.136614', '19', 'title', 3, '', 7, 1),
(89, '2021-03-09 14:41:29.138748', '18', 'title', 3, '', 7, 1),
(90, '2021-03-09 14:41:29.140884', '17', 'title', 3, '', 7, 1),
(91, '2021-03-09 14:41:29.142912', '16', 'title', 3, '', 7, 1),
(92, '2021-03-09 14:41:29.145601', '13', 'title', 3, '', 7, 1),
(93, '2021-03-09 14:41:29.147719', '12', 'title', 3, '', 7, 1),
(94, '2021-03-09 14:41:29.149960', '11', 'title', 3, '', 7, 1),
(95, '2021-03-09 14:41:29.152364', '10', 'title', 3, '', 7, 1),
(96, '2021-03-09 14:41:29.154541', '9', 'title', 3, '', 7, 1),
(97, '2021-03-09 14:41:29.156711', '8', 'title', 3, '', 7, 1),
(98, '2021-03-10 08:48:30.694950', '1', 'breaking news', 1, '[{\"added\": {}}]', 14, 1),
(99, '2021-03-10 08:48:35.533671', '2', 'tranding', 1, '[{\"added\": {}}]', 14, 1),
(100, '2021-03-10 08:53:52.212837', '24', 'contoh berita', 1, '[{\"added\": {}}]', 7, 1),
(101, '2021-03-10 09:17:19.745524', '24', 'contoh berita', 3, '', 7, 1),
(102, '2021-03-10 09:17:31.188206', '7', 'Lorem Ipsums', 2, '[{\"changed\": {\"fields\": [\"status\"]}}]', 7, 1),
(103, '2021-03-10 09:17:40.195953', '6', 'lorem ipsums', 2, '[{\"changed\": {\"fields\": [\"status\"]}}]', 7, 1),
(104, '2021-03-10 09:40:19.628181', '26', 'Mukidi', 2, '[{\"changed\": {\"fields\": [\"profile_pic\"]}}]', 12, 1),
(105, '2021-03-10 09:41:48.341134', '26', 'Mukidi', 2, '[{\"changed\": {\"fields\": [\"profile_pic\"]}}]', 12, 1),
(106, '2021-03-10 09:56:27.587678', '26', 'Mukidi', 2, '[{\"changed\": {\"fields\": [\"profile_pic\"]}}]', 12, 1),
(107, '2021-03-10 09:58:46.919922', '10', 'test', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 9, 1),
(108, '2021-03-10 10:07:37.113411', '4', 'Lorem Ipsum', 2, '[{\"changed\": {\"fields\": [\"status\"]}}]', 7, 1),
(109, '2021-03-10 10:07:45.701163', '3', 'The standard Lorem Ipsum passage, used since the 1500s', 2, '[{\"changed\": {\"fields\": [\"status\"]}}]', 7, 1),
(110, '2021-03-10 10:07:54.767115', '2', 'Lorem Ipsum', 2, '[{\"changed\": {\"fields\": [\"status\"]}}]', 7, 1),
(111, '2021-03-11 13:04:23.330962', '3', 'Film', 1, '[{\"added\": {}}]', 8, 1),
(112, '2021-03-12 09:46:16.283784', '27', 'kipli', 1, '[{\"added\": {}}]', 12, 1),
(113, '2021-03-12 10:37:39.052526', '11', 'asdf', 3, '', 4, 1),
(114, '2021-03-12 10:37:39.056510', '14', 'kese', 3, '', 4, 1),
(115, '2021-03-12 10:37:39.058956', '4', 'keselyoleren', 3, '', 4, 1),
(116, '2021-03-12 10:37:39.061353', '13', 'latip', 3, '', 4, 1),
(117, '2021-03-12 10:37:39.063740', '10', 'mista', 3, '', 4, 1),
(118, '2021-03-12 10:37:39.066350', '9', 'mita', 3, '', 4, 1),
(119, '2021-03-12 10:38:25.856226', '15', 'keselyoleren', 1, '[{\"added\": {}}]', 4, 1),
(120, '2021-03-12 11:41:51.199324', '11', 'testing image', 1, '[{\"added\": {}}]', 9, 1),
(121, '2021-03-12 11:42:34.935443', '27', 'kipli', 3, '', 12, 1),
(122, '2021-03-22 02:22:54.413066', '4', 'PCNU', 1, '[{\"added\": {}}]', 8, 1),
(123, '2021-03-22 02:27:14.411046', '25', 'Menyentuh Hati, ini Pesan PCNU Banyuwangi Pada Harlah ke-35 Pagar Nusa', 1, '[{\"added\": {}}]', 7, 1),
(124, '2021-03-29 09:09:56.149814', '5', 'Pimpinan Wilayah', 1, '[{\"added\": {}}]', 8, 1),
(125, '2021-03-29 09:15:09.356379', '26', 'Pagar Nusa Jatim Gelar Rakorwil, ini yang Dibahas', 1, '[{\"added\": {}}]', 7, 1),
(126, '2021-03-29 13:11:31.229199', '25', 'Menyentuh Hati, ini Pesan PCNU Banyuwangi Pada Harlah ke-35 Pagar Nusa', 2, '[{\"changed\": {\"fields\": [\"status\"]}}]', 7, 1),
(127, '2021-03-29 13:12:57.375504', '2', 'Lorem Ipsum', 3, '', 7, 1),
(128, '2021-03-29 13:14:40.647136', '6', 'lorem ipsums', 2, '[{\"changed\": {\"fields\": [\"status\"]}}]', 7, 1),
(129, '2021-03-29 13:21:18.479591', '6', 'sejarah', 1, '[{\"added\": {}}]', 8, 1),
(130, '2021-03-29 13:21:38.644169', '7', 'Sejarah Pagar Nusa', 2, '[{\"changed\": {\"fields\": [\"title\", \"kategori\", \"body\", \"status\"]}}]', 7, 1),
(131, '2021-03-29 13:23:16.191260', '6', 'lorem ipsums', 3, '', 7, 1),
(132, '2021-03-29 13:23:16.194490', '5', 'Lorem ipsum', 3, '', 7, 1),
(133, '2021-03-29 13:23:16.196996', '4', 'Lorem Ipsum', 3, '', 7, 1),
(134, '2021-03-29 13:23:16.199316', '3', 'The standard Lorem Ipsum passage, used since the 1500s', 3, '', 7, 1),
(135, '2021-03-29 13:23:16.201839', '1', 'Lorem Ipsum', 3, '', 7, 1),
(136, '2021-03-29 13:25:13.284628', '11', 'testing image', 3, '', 9, 1),
(137, '2021-03-29 13:25:24.596949', '10', 'test', 3, '', 9, 1),
(138, '2021-03-29 13:25:35.500868', '9', 'test', 3, '', 9, 1),
(139, '2021-03-29 16:23:22.483752', '26', 'Mukidi', 3, '', 12, 1),
(140, '2021-03-29 16:23:22.487410', '25', 'Mitas', 3, '', 12, 1),
(141, '2021-03-29 16:23:22.489846', '24', 'Misidi', 3, '', 12, 1),
(142, '2021-03-29 16:23:22.491981', '23', 'Misidi', 3, '', 12, 1),
(143, '2021-03-29 16:23:22.493969', '22', 'Misidi', 3, '', 12, 1),
(144, '2021-03-29 16:23:22.496286', '21', 'Miseran', 3, '', 12, 1),
(145, '2021-03-29 16:23:22.498465', '20', 'Misidi', 3, '', 12, 1),
(146, '2021-03-29 16:23:22.501079', '14', 'asdf', 3, '', 12, 1),
(147, '2021-03-29 16:23:22.503680', '13', 'test', 3, '', 12, 1),
(148, '2021-03-29 16:23:22.506018', '12', 'asdf', 3, '', 12, 1),
(149, '2021-03-29 16:23:22.508316', '10', 'mitas', 3, '', 12, 1),
(150, '2021-03-29 16:23:22.511871', '9', 'mita', 3, '', 12, 1),
(151, '2021-03-29 16:23:22.515568', '8', 'mita', 3, '', 12, 1),
(152, '2021-03-29 16:23:22.518802', '7', 'mita', 3, '', 12, 1),
(153, '2021-03-29 16:23:22.521505', '6', 'mita', 3, '', 12, 1),
(154, '2021-03-29 16:23:22.526990', '5', 'Komarun', 3, '', 12, 1),
(155, '2021-03-29 16:23:22.529557', '3', 'Lukman', 3, '', 12, 1),
(156, '2021-03-29 16:23:22.531921', '2', 'Anton', 3, '', 12, 1),
(157, '2021-03-29 16:23:22.534703', '1', 'Diah', 3, '', 12, 1),
(158, '2021-03-29 16:25:12.528404', '28', 'Ahmad Riza Muhaimin', 1, '[{\"added\": {}}]', 12, 1),
(159, '2021-03-29 16:27:57.077268', '28', 'Ahmad Riza Muhaimin', 2, '[{\"changed\": {\"fields\": [\"profile_pic\"]}}]', 12, 1),
(160, '2021-06-20 13:34:58.358212', '12', 'Majlis Pendekar PW Pagar Nusa Jatim Meninggal Dunia', 1, '[{\"added\": {}}]', 9, 1),
(161, '2021-06-20 13:36:44.048230', '12', 'Majlis Pendekar PW Pagar Nusa Jatim Meninggal Dunia', 2, '[]', 9, 1),
(162, '2021-06-20 13:58:39.171888', '27', 'Pendekar Nusantara Berduka, H. Faidlol Mannan, Sesepuh Pagar Nusa Telah Tiada', 1, '[{\"added\": {}}]', 7, 1),
(163, '2021-06-20 13:59:55.989738', '27', 'Pendekar Nusantara Berduka, H. Faidlol Mannan, Sesepuh Pagar Nusa Telah Tiada', 2, '[{\"changed\": {\"fields\": [\"body\"]}}]', 7, 1),
(164, '2022-01-13 14:21:49.742965', '7', 'Ujian Kenaikan Tingkat', 1, '[{\"added\": {}}]', 11, 1),
(165, '2022-01-18 14:04:47.405517', '7', 'Ujian Kenaikan Tingkat', 3, '', 11, 1),
(166, '2022-01-23 07:20:33.480250', '15', 'keselyoleren', 3, '', 4, 16),
(167, '2022-01-23 07:28:05.526994', '29', 'Test', 1, '[{\"added\": {}}]', 12, 16),
(168, '2022-01-23 09:05:48.264987', '30', 'test', 1, '[{\"added\": {}}]', 12, 16),
(169, '2022-01-23 09:06:24.732202', '30', 'test', 2, '[{\"changed\": {\"fields\": [\"Tingkat\"]}}]', 12, 16),
(170, '2022-01-23 09:06:56.687496', '28', 'Ahmad Riza Muhaimin', 3, '', 12, 16),
(171, '2022-01-23 09:07:13.895642', '30', 'test', 3, '', 12, 16),
(172, '2022-01-23 09:07:13.898176', '29', 'Test', 3, '', 12, 16),
(173, '2022-01-23 09:09:36.354445', '17', 'pelatih', 1, '[{\"added\": {}}]', 4, 16),
(174, '2022-01-23 09:10:19.642617', '17', 'pelatih', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"User permissions\"]}}]', 4, 16),
(175, '2022-02-21 02:11:44.877830', '8', 'Pengesahan', 1, '[{\"added\": {}}]', 11, 1),
(176, '2022-06-12 02:16:40.193672', '1', 'pelatih', 1, '[{\"added\": {}}]', 3, 18),
(177, '2022-06-12 02:17:00.018501', '17', 'pelatih', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 18),
(178, '2022-06-12 02:17:13.231903', '17', 'pelatih', 2, '[{\"changed\": {\"fields\": [\"Groups\", \"User permissions\"]}}]', 4, 18),
(179, '2022-07-01 04:53:35.771146', '31', 'Linda Lusiyanti', 1, '[{\"added\": {}}]', 12, 1),
(180, '2022-07-01 04:55:50.440847', '1', 'Linda Lusiyanti', 1, '[{\"added\": {}}]', 16, 1),
(181, '2022-07-06 01:27:35.999698', '32', 'Lusiyanti', 1, '[{\"added\": {}}]', 12, 17),
(182, '2022-07-08 23:01:37.903845', '9', 'Ujian Kenaikan Tingkat', 1, '[{\"added\": {}}]', 11, 1),
(183, '2022-07-13 08:02:35.432418', '33', 'Lusi', 1, '[{\"added\": {}}]', 12, 17),
(184, '2022-07-26 00:39:58.665331', '9', 'Ujian Kenaikan Tingkat', 2, '[]', 11, 1),
(185, '2022-07-26 00:40:31.120151', '9', 'Diklat Anggota', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 11, 1),
(186, '2022-07-26 00:41:28.737759', '9', 'Diklat Anggota', 2, '[{\"changed\": {\"fields\": [\"Start\", \"End\"]}}]', 11, 1),
(187, '2022-07-29 18:42:43.676242', '33', 'Lusi', 2, '[{\"changed\": {\"fields\": [\"Identity pic\", \"Profile pic\"]}}]', 18, 1),
(188, '2022-07-29 18:43:10.627191', '33', 'Lusi', 2, '[{\"changed\": {\"fields\": [\"Validasi\"]}}]', 18, 1),
(189, '2022-07-29 18:43:58.902071', '33', 'Lusi', 2, '[{\"changed\": {\"fields\": [\"Validasi\"]}}]', 18, 1),
(190, '2022-08-02 14:15:47.097778', '33', 'Lusi', 2, '[{\"changed\": {\"fields\": [\"Verifikasi\"]}}]', 19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(12, 'anggota', 'anggota'),
(16, 'anggota', 'ujiankenaikantingkat'),
(17, 'anggota_validasi', 'anggotavalidasi'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(13, 'authtoken', 'token'),
(15, 'authtoken', 'tokenproxy'),
(7, 'berita', 'berita'),
(8, 'berita', 'kategory'),
(14, 'berita', 'statusnews'),
(5, 'contenttypes', 'contenttype'),
(9, 'galery', 'image'),
(10, 'galery', 'video'),
(11, 'jadwal', 'jadwal'),
(6, 'sessions', 'session'),
(18, 'validasi', 'anggotavalidasi'),
(19, 'verifikasi', 'verifikasianggota');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-03-14 02:59:08.316942'),
(2, 'auth', '0001_initial', '2020-03-14 02:59:08.748932'),
(3, 'admin', '0001_initial', '2020-03-14 02:59:08.857664'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-03-14 02:59:08.877095'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-03-14 02:59:08.904775'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-03-14 02:59:09.000974'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-03-14 02:59:09.061149'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-03-14 02:59:09.112078'),
(9, 'auth', '0004_alter_user_username_opts', '2020-03-14 02:59:09.133741'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-03-14 02:59:09.205651'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-03-14 02:59:09.211672'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-03-14 02:59:09.249398'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-03-14 02:59:09.337050'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-03-14 02:59:09.409089'),
(15, 'auth', '0010_user_role_user', '2020-03-14 02:59:09.463653'),
(16, 'auth', '0011_remove_user_role_user', '2020-03-14 02:59:09.533245'),
(17, 'auth', '0012_user_role_user', '2020-03-14 02:59:09.583491'),
(18, 'auth', '0013_remove_user_role_user', '2020-03-14 02:59:09.652416'),
(19, 'auth', '0014_user_role_user', '2020-03-14 02:59:09.713412'),
(20, 'auth', '0015_remove_user_role_user', '2020-03-14 02:59:09.782219'),
(21, 'auth', '0016_user_role_user', '2020-03-14 02:59:09.840465'),
(22, 'auth', '0017_remove_user_role_user', '2020-03-14 02:59:09.906235'),
(23, 'auth', '0018_user_role_user', '2020-03-14 02:59:09.976483'),
(24, 'auth', '0019_remove_user_role_user', '2020-03-14 02:59:10.057673'),
(25, 'auth', '0020_user_role_user', '2020-03-14 02:59:10.089033'),
(26, 'auth', '0021_remove_user_role_user', '2020-03-14 02:59:10.145324'),
(27, 'auth', '0022_user_role_user', '2020-03-14 02:59:10.189371'),
(28, 'auth', '0023_remove_user_role_user', '2020-03-14 02:59:10.258121'),
(29, 'auth', '0024_user_role_user', '2020-03-14 02:59:10.323163'),
(30, 'auth', '0025_remove_user_role_user', '2020-03-14 02:59:10.392944'),
(31, 'auth', '0026_user_role_user', '2020-03-14 02:59:10.440286'),
(32, 'auth', '0027_remove_user_role_user', '2020-03-14 02:59:10.503096'),
(33, 'auth', '0028_user_role_user', '2020-03-14 02:59:10.554065'),
(34, 'auth', '0029_remove_user_role_user', '2020-03-14 02:59:10.623208'),
(35, 'auth', '0030_user_role_user', '2020-03-14 02:59:10.680284'),
(36, 'auth', '0031_remove_user_role_user', '2020-03-14 02:59:10.742201'),
(37, 'berita', '0001_initial', '2020-03-14 02:59:10.865296'),
(38, 'sessions', '0001_initial', '2020-03-14 02:59:10.907238'),
(39, 'berita', '0002_berita_penulis', '2020-03-14 03:29:15.877558'),
(40, 'berita', '0003_auto_20200314_0345', '2020-03-14 03:45:47.721009'),
(41, 'berita', '0004_auto_20200314_0350', '2020-03-14 03:50:51.288851'),
(42, 'berita', '0005_berita_slug', '2020-03-14 04:21:51.979537'),
(43, 'berita', '0006_auto_20200314_0422', '2020-03-14 04:23:00.832967'),
(44, 'galery', '0001_initial', '2020-03-14 10:34:08.252789'),
(45, 'galery', '0002_auto_20200315_0328', '2020-03-15 03:29:05.191466'),
(46, 'jadwal', '0001_initial', '2020-03-15 04:34:49.468398'),
(47, 'jadwal', '0002_auto_20200315_0438', '2020-03-15 04:38:20.062748'),
(48, 'jadwal', '0003_auto_20200315_0600', '2020-03-15 06:01:01.941594'),
(49, 'jadwal', '0004_auto_20200315_0612', '2020-03-15 06:13:00.370819'),
(50, 'anggota', '0001_initial', '2020-03-15 12:33:14.586405'),
(51, 'anggota', '0002_auto_20200315_1236', '2020-03-15 12:36:16.248881'),
(52, 'anggota', '0003_auto_20200315_1243', '2020-03-15 12:43:08.059826'),
(53, 'anggota', '0004_auto_20200315_1244', '2020-03-15 12:44:45.828703'),
(54, 'anggota', '0005_auto_20200315_1245', '2020-03-15 12:45:24.288022'),
(55, 'anggota', '0006_auto_20200329_0726', '2020-03-29 07:26:35.142025'),
(56, 'anggota', '0007_auto_20200329_0733', '2020-03-29 07:33:14.981570'),
(57, 'auth', '0032_user_role_user', '2020-08-11 07:01:31.626158'),
(58, 'auth', '0033_remove_user_role_user', '2020-08-11 07:01:31.788682'),
(59, 'auth', '0034_user_role_user', '2020-08-11 07:01:31.833741'),
(60, 'authtoken', '0001_initial', '2020-08-11 07:01:31.895199'),
(61, 'authtoken', '0002_auto_20160226_1747', '2020-08-11 07:01:32.069629'),
(62, 'auth', '0035_remove_user_role_user', '2021-03-10 08:44:54.449106'),
(63, 'auth', '0036_user_role_user', '2021-03-10 08:44:54.507823'),
(64, 'auth', '0037_remove_user_role_user', '2021-03-10 08:44:54.670921'),
(65, 'auth', '0038_user_role_user', '2021-03-10 08:44:54.721328'),
(66, 'auth', '0039_remove_user_role_user', '2021-03-10 08:44:54.877090'),
(67, 'berita', '0007_auto_20210310_0844', '2021-03-10 08:44:55.004060'),
(68, 'auth', '0010_alter_group_name_max_length', '2022-01-23 06:56:36.241385'),
(69, 'auth', '0011_update_proxy_permissions', '2022-01-23 06:56:36.247608'),
(70, 'auth', '0012_alter_user_first_name_max_length', '2022-01-23 06:56:36.288464'),
(71, 'authtoken', '0003_tokenproxy', '2022-01-23 06:56:36.293520'),
(72, 'anggota', '0002_auto_20220612_0212', '2022-06-12 02:12:50.081429'),
(73, 'berita', '0002_auto_20220612_0212', '2022-06-12 02:12:50.111355'),
(74, 'galery', '0002_auto_20220612_0212', '2022-06-12 02:12:50.120012'),
(75, 'jadwal', '0002_alter_jadwal_options', '2022-06-12 02:12:50.129283'),
(76, 'anggota', '0002_anggota_identity_pic', '2022-07-29 18:16:45.463341'),
(77, 'anggota_validasi', '0001_initial', '2022-07-29 18:16:45.465417'),
(78, 'validasi', '0001_initial', '2022-07-29 18:27:47.418906'),
(79, 'validasi', '0002_alter_anggotavalidasi_options', '2022-07-29 18:27:47.423476'),
(80, 'anggota', '0003_anggota_verifikasi', '2022-08-02 14:10:42.387357'),
(81, 'anggota', '0004_alter_anggota_status_verify', '2022-08-02 14:12:46.958383');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2ncbg97jgldd9fymk79hrlhaswo5snwu', 'MWQyYjAwYzUwODQ3NDNhNDI0MGQ3Yjc1ZDVhOTA2NTU4MjJmNDgxMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMWE3ZWQ1YmM5NGZlYmE0YjM5OGIzM2EzZTE5ZDVmYzVjYzM2YTMzIn0=', '2020-08-30 11:13:55.339412'),
('2yjv7q3nxdg05kb8grq05iw8js64mddj', 'MWQyYjAwYzUwODQ3NDNhNDI0MGQ3Yjc1ZDVhOTA2NTU4MjJmNDgxMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMWE3ZWQ1YmM5NGZlYmE0YjM5OGIzM2EzZTE5ZDVmYzVjYzM2YTMzIn0=', '2020-05-17 06:17:56.217747'),
('336uezuyuw7ovdot3yqa9svh6626na5e', '.eJxVjLsOwjAMAP_FM4riNOTRkZ1viGzH0AJqpD4mxL-jSh1gvTvdGwpt61C2RecyVugBA5x-IZM8ddpNfdB0b0batM4jmz0xh13MtVV9XY72bzDQMkAPLtUqmsRmFo8pSo6Y2SUrjN1ZySVUyd7KDUWYOw0uYqfBM3ENhPD5AhsmOLY:1nBX6M:4r3qQBjPFObQx6TtRHCqzQZs7D0tgzjanhnsbywaYAI', '2022-02-06 07:15:50.448151'),
('8gdly5kl6azpoch83ggv2mwtn6vl7f5z', '.eJxVjMsOwiAQAP9lz4YA5dHt0bvfQJYuSNVAUtqT8d9Nkx70OjOZNwTatxL2ntawMEyg4PLLIs3PVA_BD6r3JuZWt3WJ4kjEabu4NU6v69n-DQr1AhN4kzBKg8SIJmeJPg_GEVl2xmCmxMkppVmPFr2KarCRBy8zaYqjUxY-X-HLN68:1nJcii:1jD4MwYgTim1qExX_88kawOVVwXesWYUTnY1MDJtDc4', '2022-02-28 14:52:52.438168'),
('ay4qycwsnu9i9guwoxmcnxr27jpnfoed', '.eJxVjMsOwiAQAP9lz4YA5dHt0bvfQJYuSNVAUtqT8d9Nkx70OjOZNwTatxL2ntawMEyg4PLLIs3PVA_BD6r3JuZWt3WJ4kjEabu4NU6v69n-DQr1AhN4kzBKg8SIJmeJPg_GEVl2xmCmxMkppVmPFr2KarCRBy8zaYqjUxY-X-HLN68:1oBSv1:Ona20uL1DCK6N0S8d5m2u1v_Bbj57IiZi0p1w3ZqNDU', '2022-07-27 03:20:07.672032'),
('bx84azbx7ahp0qvo9uymxsjsaq59ii7n', 'MWQyYjAwYzUwODQ3NDNhNDI0MGQ3Yjc1ZDVhOTA2NTU4MjJmNDgxMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMWE3ZWQ1YmM5NGZlYmE0YjM5OGIzM2EzZTE5ZDVmYzVjYzM2YTMzIn0=', '2020-04-03 10:56:14.628884'),
('cxb7sgd617b0qyem5m3pz37bv0yibw13', 'MWQyYjAwYzUwODQ3NDNhNDI0MGQ3Yjc1ZDVhOTA2NTU4MjJmNDgxMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMWE3ZWQ1YmM5NGZlYmE0YjM5OGIzM2EzZTE5ZDVmYzVjYzM2YTMzIn0=', '2020-08-18 10:27:13.759609'),
('d7byc9lhl4xglt4hqai366yaxxb70pg7', '.eJxVjMsOwiAQAP9lz4YA5dHt0bvfQJYuSNVAUtqT8d9Nkx70OjOZNwTatxL2ntawMEyg4PLLIs3PVA_BD6r3JuZWt3WJ4kjEabu4NU6v69n-DQr1AhN4kzBKg8SIJmeJPg_GEVl2xmCmxMkppVmPFr2KarCRBy8zaYqjUxY-X-HLN68:1o9wwD:lo8QyMzUwFWTanScwsJYkuSPUUvlAbFhqoZh9QRatGg', '2022-07-22 22:59:05.588455'),
('f1i1r55l0q1o6bf8yz9p8nwao2aylr1s', 'MWQyYjAwYzUwODQ3NDNhNDI0MGQ3Yjc1ZDVhOTA2NTU4MjJmNDgxMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMWE3ZWQ1YmM5NGZlYmE0YjM5OGIzM2EzZTE5ZDVmYzVjYzM2YTMzIn0=', '2020-04-04 12:55:06.687754'),
('gbwnyfq1xn5kfwypo4pfytz06mc9oiel', 'MWQyYjAwYzUwODQ3NDNhNDI0MGQ3Yjc1ZDVhOTA2NTU4MjJmNDgxMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMWE3ZWQ1YmM5NGZlYmE0YjM5OGIzM2EzZTE5ZDVmYzVjYzM2YTMzIn0=', '2020-03-29 17:16:24.594970'),
('gp6c08vaoxdg3hnlkjql22tq7hmvhsw7', '.eJxVjMsOwiAQAP9lz4YA5dHt0bvfQJYuSNVAUtqT8d9Nkx70OjOZNwTatxL2ntawMEyg4PLLIs3PVA_BD6r3JuZWt3WJ4kjEabu4NU6v69n-DQr1AhN4kzBKg8SIJmeJPg_GEVl2xmCmxMkppVmPFr2KarCRBy8zaYqjUxY-X-HLN68:1o16l3:jCsyWk38s71TwBNXLH20bli0xE4jpRTYRStA6bJCk4o', '2022-06-28 13:39:01.513706'),
('h3j697ro5lrea1oojwrrletkpgia7kxw', '.eJxVjMsOwiAQAP9lz4YA5dHt0bvfQJYuSNVAUtqT8d9Nkx70OjOZNwTatxL2ntawMEyg4PLLIs3PVA_BD6r3JuZWt3WJ4kjEabu4NU6v69n-DQr1AhN4kzBKg8SIJmeJPg_GEVl2xmCmxMkppVmPFr2KarCRBy8zaYqjUxY-X-HLN68:1nsDH0:a9SxR0ip9wHkpOWFkLemqspOxzYi0VHM2-234wPtJPo', '2022-06-04 00:47:14.285940'),
('h4awjcvbzc7b60z4t1h5z7t0iwe7d74v', 'YzIwNGI3N2ExYTAzM2I1YTk4ZGExY2Y5MTk0YWY5NDBlNzI4NzBkMDp7fQ==', '2020-05-23 17:43:25.074919'),
('hrg7uq45dtiz3h9jockol4yvecsm1vqj', 'ZGZkOWZjNTRhMmViYjRmMjVmMzgwNmIxY2Q5OTMzNmM0MmE1NGFkMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNmUxOGYxOGQyYTIxMjNjZDk5ODlmYTU5MzhiMTU0YWVjZWE5ZjI0In0=', '2021-04-12 09:07:32.753570'),
('jbqvt778flawj285h6lxxcmhszpup6yh', 'ZGZkOWZjNTRhMmViYjRmMjVmMzgwNmIxY2Q5OTMzNmM0MmE1NGFkMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNmUxOGYxOGQyYTIxMjNjZDk5ODlmYTU5MzhiMTU0YWVjZWE5ZjI0In0=', '2021-07-04 14:35:36.700100'),
('kb82yseto2nvec9l8xx5bzomednzccbv', '.eJxVjDEOgzAMAP_iuYpIDDhh7N43oDh2GtoKJAJT1b9XSAztene6N4xx38q4V13HSWAAC5dfxjE9dT6EPOJ8X0xa5m2d2ByJOW01t0X0dT3bv0GJtcAATVDJjBG7xnYtovPacQhtDCQto8uNZlHK3vWpd8REjjALeqvWsyP4fAHaNjeD:1lKf1z:m8ibgz5PG6nB8w4uVJSL9rjA_qaBJieTrUBco8IOoss', '2021-03-26 10:28:31.801369'),
('kerzbwtdpo7u3ll41cgu1eky8p6ulyxo', 'ZGZkOWZjNTRhMmViYjRmMjVmMzgwNmIxY2Q5OTMzNmM0MmE1NGFkMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNmUxOGYxOGQyYTIxMjNjZDk5ODlmYTU5MzhiMTU0YWVjZWE5ZjI0In0=', '2022-01-27 14:20:39.667919'),
('kfzebh65yassuzz50250mp8tgerbmich', '.eJxVjMsOwiAQAP9lz4YA5dHt0bvfQJYuSNVAUtqT8d9Nkx70OjOZNwTatxL2ntawMEyg4PLLIs3PVA_BD6r3JuZWt3WJ4kjEabu4NU6v69n-DQr1AhN4kzBKg8SIJmeJPg_GEVl2xmCmxMkppVmPFr2KarCRBy8zaYqjUxY-X-HLN68:1nJUye:VN0ft4--gk5Yns6dBJdbH1DWH5CGXPd-ZuuNMCGjLPE', '2022-02-28 06:36:48.667938'),
('kpiulnnhstz8haasbzakyff6c60n5dp7', '.eJxVjMsOgjAQAP9lz6ah0BccvfsNZHe7tahpEwon478bEg56nZnMG2bctzzvTdZ5iTCBDnD5hYT8lHKY-MByr4pr2daF1JGo0zZ1q1Fe17P9G2RsGSZw2HcjDSNbh2bkGLSxImQ4hiAaqWPtUQInMuwMJUo-eWZrey-DdgE-Xyb9OQM:1o0D9w:4O515_f-gcUmmnyiKdBoLXRq2vh41crGhxjSe4tNiJM', '2022-06-26 02:17:00.053575'),
('lmw77z3fg5lz7ioweloqt2lh0poqixrf', '.eJxVjLsOwjAMAP_FM4riNOTRkZ1viGzH0AJqpD4mxL-jSh1gvTvdGwpt61C2RecyVugBA5x-IZM8ddpNfdB0b0batM4jmz0xh13MtVV9XY72bzDQMkAPLtUqmsRmFo8pSo6Y2SUrjN1ZySVUyd7KDUWYOw0uYqfBM3ENhPD5AhsmOLY:1nBX7z:G9ftuOfAlpFuR4v2qNU2XAqOARz-F88u64G15nNQLUU', '2022-02-06 07:17:31.722663'),
('m5784ubuayjlegflylkapfun4n39gzn0', '.eJxVjDEOgzAMAP_iuYoSEZyYsXvfgOzYLbQVSAQm1L9XSAztene6HXre1qHfqi39qNBBSHD5hcLlZdNh9MnTY3ZlntZlFHck7rTV3Wa19_Vs_wYD1wE6QMtN9E0klZK0WKTILRa0JltSUUkphMwYPEZmIsv-jiiUW2LxFODzBQ0gN_M:1o0DAW:APUH7EsaV_DvTzg3BPdCQW0Jw1UfTVe6cgwp6N3ZtMY', '2022-06-26 02:17:36.127794'),
('m7q1etphaozzsuze83rx2m5sgm6dg0qo', 'ZGZkOWZjNTRhMmViYjRmMjVmMzgwNmIxY2Q5OTMzNmM0MmE1NGFkMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNmUxOGYxOGQyYTIxMjNjZDk5ODlmYTU5MzhiMTU0YWVjZWE5ZjI0In0=', '2021-07-04 15:00:32.959885'),
('m8l9h24ii1frvy2dsifi12txrnu9c1xg', 'ZGZkOWZjNTRhMmViYjRmMjVmMzgwNmIxY2Q5OTMzNmM0MmE1NGFkMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNmUxOGYxOGQyYTIxMjNjZDk5ODlmYTU5MzhiMTU0YWVjZWE5ZjI0In0=', '2022-01-28 01:07:45.577845'),
('neezlg3tk6g2m1cbkdy0bg8zfwie1few', 'MWQyYjAwYzUwODQ3NDNhNDI0MGQ3Yjc1ZDVhOTA2NTU4MjJmNDgxMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMWE3ZWQ1YmM5NGZlYmE0YjM5OGIzM2EzZTE5ZDVmYzVjYzM2YTMzIn0=', '2020-08-25 11:11:28.976106'),
('o2ge61p3cr8mriv521a3hir2iycffpye', '.eJxVjEEOwiAQRe_C2pBhCgVcuu8ZCMOAVE2blHZlvLsh6UK3_7333yLEY6_haHkLM4urUFZcfkeK6ZmXTvgRl_sq07rs20yyK_KkTU4r59ftdP8Oamy114oxFWQqyuoCZAB1HJ3lAuCIYSikKTscUXufFKCP3gBrdI4NDig-XxVeN5k:1nBYtc:giBfdrkUue9eJCPbej_v4BIxHBGwEUq1UE98Q_EBsDA', '2022-02-06 09:10:48.767623'),
('og5dxmpu3dd9j7pg12ejuobcwdkinbd6', 'ZGZkOWZjNTRhMmViYjRmMjVmMzgwNmIxY2Q5OTMzNmM0MmE1NGFkMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNmUxOGYxOGQyYTIxMjNjZDk5ODlmYTU5MzhiMTU0YWVjZWE5ZjI0In0=', '2021-04-12 13:11:17.360021'),
('oufibcqz52h5m1ig6e6vjq8t601m0g2a', '.eJxVjMsOwiAQRf-FtSFAeXRcuvcbyEwHpGogKe3K-O_apAvd3nPOfYmI21ri1tMSZxZnocXpdyOcHqnugO9Yb01Ora7LTHJX5EG7vDZOz8vh_h0U7OVbB5uAlAVkAJuzgpAH6xEde2shY-LktTZsRgdBkx4c8RBURoM0eu3E-wPhyzev:1oHUVr:LmNehg2AI1zTJ5LN3XClzc-whh7dDUIXwVreHB8GVvk', '2022-08-12 18:15:03.641554'),
('rrtht8ij2hxdzmlin0zg9zlucd2nrnn0', 'NWZkMjMxOTIxNDUxYzk1YWI3ODA4MjA5Yzc5MTAyYjZhZDYwYTMzNTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxM2NhOTgxODFlYWIwOTdiMDQ1ZDEzOTJhMjg5ZTY2OTE2ZmJmYThmIn0=', '2020-05-23 17:45:19.451506'),
('swtk1itrky2ntjw4xxwwvgkvhyp84jsi', '.eJxVjMsOwiAQAP9lz4YA5dHt0bvfQJYuSNVAUtqT8d9Nkx70OjOZNwTatxL2ntawMEyg4PLLIs3PVA_BD6r3JuZWt3WJ4kjEabu4NU6v69n-DQr1AhN4kzBKg8SIJmeJPg_GEVl2xmCmxMkppVmPFr2KarCRBy8zaYqjUxY-X-HLN68:1oG6VE:pfT5zrbKjrgZ6PZuZOxICasZfTLkXk59bPoGPWP3z5E', '2022-08-08 22:24:40.140138'),
('t258vheife84zzoae857krrytldvq0lz', 'MWQyYjAwYzUwODQ3NDNhNDI0MGQ3Yjc1ZDVhOTA2NTU4MjJmNDgxMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMWE3ZWQ1YmM5NGZlYmE0YjM5OGIzM2EzZTE5ZDVmYzVjYzM2YTMzIn0=', '2020-04-12 07:12:38.173487'),
('t93hnypz82ki2tau48umnhj0ijjpxry5', '.eJxVjMsOwiAQAP9lz4YA5dHt0bvfQJYuSNVAUtqT8d9Nkx70OjOZNwTatxL2ntawMEyg4PLLIs3PVA_BD6r3JuZWt3WJ4kjEabu4NU6v69n-DQr1AhN4kzBKg8SIJmeJPg_GEVl2xmCmxMkppVmPFr2KarCRBy8zaYqjUxY-X-HLN68:1o16dq:4oaMGsQAl0sNQwYqQaD81dNB9Z3Bz4QKWzxvLQbgWO4', '2022-06-28 13:31:34.494244'),
('tmxftxcahdjz6tm85b8bw95ebrl0dbcm', 'MWQyYjAwYzUwODQ3NDNhNDI0MGQ3Yjc1ZDVhOTA2NTU4MjJmNDgxMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMWE3ZWQ1YmM5NGZlYmE0YjM5OGIzM2EzZTE5ZDVmYzVjYzM2YTMzIn0=', '2020-04-01 13:50:07.500188'),
('tp1excu28xocaqrh1sevejwc77g38iwm', 'MWQyYjAwYzUwODQ3NDNhNDI0MGQ3Yjc1ZDVhOTA2NTU4MjJmNDgxMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMWE3ZWQ1YmM5NGZlYmE0YjM5OGIzM2EzZTE5ZDVmYzVjYzM2YTMzIn0=', '2020-05-30 16:09:00.931567'),
('tqptndjl6ypvuvd9ljz0fwysnhodhhn4', 'ZGZkOWZjNTRhMmViYjRmMjVmMzgwNmIxY2Q5OTMzNmM0MmE1NGFkMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNmUxOGYxOGQyYTIxMjNjZDk5ODlmYTU5MzhiMTU0YWVjZWE5ZjI0In0=', '2021-03-29 02:51:01.508406'),
('u8na9soui0gruackv5fpzmkn8zpvki8m', 'MWQyYjAwYzUwODQ3NDNhNDI0MGQ3Yjc1ZDVhOTA2NTU4MjJmNDgxMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMWE3ZWQ1YmM5NGZlYmE0YjM5OGIzM2EzZTE5ZDVmYzVjYzM2YTMzIn0=', '2020-05-30 12:51:01.304933'),
('v51wa2xhiwsrsmrzj8agz28n22kf6p4r', 'YzIwNGI3N2ExYTAzM2I1YTk4ZGExY2Y5MTk0YWY5NDBlNzI4NzBkMDp7fQ==', '2020-05-23 17:37:16.429264'),
('vo8v7zgb5t013w1cf409szm20actzo4d', 'MWQyYjAwYzUwODQ3NDNhNDI0MGQ3Yjc1ZDVhOTA2NTU4MjJmNDgxMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMWE3ZWQ1YmM5NGZlYmE0YjM5OGIzM2EzZTE5ZDVmYzVjYzM2YTMzIn0=', '2021-03-24 10:06:02.772746'),
('x52314uqbzikrj9q9ehete71vj4jdnfs', 'NWZkMjMxOTIxNDUxYzk1YWI3ODA4MjA5Yzc5MTAyYjZhZDYwYTMzNTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxM2NhOTgxODFlYWIwOTdiMDQ1ZDEzOTJhMjg5ZTY2OTE2ZmJmYThmIn0=', '2020-05-30 15:55:39.316237'),
('z4i4er4d12vl4qfduc95dza67bcl7pfh', 'ZGZkOWZjNTRhMmViYjRmMjVmMzgwNmIxY2Q5OTMzNmM0MmE1NGFkMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNmUxOGYxOGQyYTIxMjNjZDk5ODlmYTU5MzhiMTU0YWVjZWE5ZjI0In0=', '2021-07-04 13:39:14.236135'),
('zhzcry9gwbqdraghgzvcnh0lgkrsc97v', '.eJxVjMsOgjAQAP9lz6ah0BccvfsNZHe7tahpEwon478bEg56nZnMG2bctzzvTdZ5iTCBDnD5hYT8lHKY-MByr4pr2daF1JGo0zZ1q1Fe17P9G2RsGSZw2HcjDSNbh2bkGLSxImQ4hiAaqWPtUQInMuwMJUo-eWZrey-DdgE-Xyb9OQM:1oDglD:dpuI6i_IdiemCcLH-BOoBzIJYCFgXouZxI_xhb6SXts', '2022-08-02 06:31:11.746579'),
('zjfbjss3ocadzbrqr9vtjvw95hobey2s', 'ZGZkOWZjNTRhMmViYjRmMjVmMzgwNmIxY2Q5OTMzNmM0MmE1NGFkMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNmUxOGYxOGQyYTIxMjNjZDk5ODlmYTU5MzhiMTU0YWVjZWE5ZjI0In0=', '2021-04-12 16:30:27.517342');

-- --------------------------------------------------------

--
-- Table structure for table `galery_image`
--

CREATE TABLE `galery_image` (
  `id` int(11) NOT NULL,
  `title` varchar(120) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `galery_image`
--

INSERT INTO `galery_image` (`id`, `title`, `image`) VALUES
(1, 'Lorem Ipsum', 'gallery/1.jpg'),
(2, 'Lorem Ipsum', 'gallery/2.jpg'),
(3, 'Lorem Ipsum', 'gallery/3.jpg'),
(4, 'Lorem Ipsum', 'gallery/4.jpg'),
(5, 'Lorem Ipsum', 'gallery/4_KVSMsR2.jpg'),
(6, 'Lorem Ipsum', 'gallery/5.jpg'),
(7, 'Lorem Ipsum', 'gallery/6.jpg'),
(8, 'Lorem Ipsum', 'gallery/7.jpg'),
(12, 'Majlis Pendekar PW Pagar Nusa Jatim Meninggal Dunia', 'gallery/gallery/IMG-20210620-WA0076_thumb_thumb.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `galery_video`
--

CREATE TABLE `galery_video` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url_video` varchar(1200) NOT NULL,
  `youtube_id` varchar(122) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `galery_video`
--

INSERT INTO `galery_video` (`id`, `title`, `url_video`, `youtube_id`) VALUES
(1, 'Best Perform PAGAR NUSA Spesial Hari Santri Nasional', 'https://www.youtube.com/watch?v=tydubMT09AY', 'tydubMT09AY'),
(2, 'Keber Saman pagar Nusa ranting sumberberas', 'https://www.youtube.com/watch?v=pLPju4kMOSI', 'pLPju4kMOSI'),
(3, 'Pagar Nusa Minhajut Thullab - BC 313 Banyuwangi, in Actions', 'https://www.youtube.com/watch?v=C6vCT2OeIBs', 'C6vCT2OeIBs'),
(4, 'ganda Pencak SIlat Pagar Nusa Minhajut thullab Banyuwangi', 'https://www.youtube.com/watch?v=6kHdrHgMxfg', '6kHdrHgMxfg'),
(5, 'Ngweri ???? Atraksi Berb4haya Black Cobra Pagar Nusa', 'https://www.youtube.com/watch?v=Ci2j87p_2x4', 'Ci2j87p_2x4'),
(6, 'zaki pagar nusa minhajut thullab banyuwangi, pengalaman pertama', 'https://www.youtube.com/watch?v=9u7NJXkfigs', '9u7NJXkfigs'),
(7, 'Farizz PN Minhajut Thullab SMK minhajut Thullab Banyuwangi', 'https://www.youtube.com/watch?v=f08dowhZ93c', 'f08dowhZ93c'),
(8, 'Pengalaman Farizz Yg Berharga', 'https://www.youtube.com/watch?v=p9IMTC4JHNg', 'p9IMTC4JHNg');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_jadwal`
--

CREATE TABLE `jadwal_jadwal` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jadwal_jadwal`
--

INSERT INTO `jadwal_jadwal` (`id`, `title`, `start`, `end`) VALUES
(1, 'Tanding bola', '2020-03-15', '2020-03-26'),
(2, 'Latihan', '2020-03-20', NULL),
(3, 'Separigan', '2020-03-15', '2020-03-15'),
(4, 'sabong', '2020-03-15', NULL),
(5, 'gladi resik', '2020-03-15', NULL),
(6, 'Persiapan Kejurnas', '2020-03-15', NULL),
(8, 'Pengesahan', '2022-02-24', '2022-02-24'),
(9, 'Diklat Anggota', '2022-07-02', '2022-07-03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota_anggota`
--
ALTER TABLE `anggota_anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anggota_ujiankenaikantingkat`
--
ALTER TABLE `anggota_ujiankenaikantingkat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anggota_ujiankenaikantingkat_anggota_id_613c9aff` (`anggota_id`);

--
-- Indexes for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `berita_berita`
--
ALTER TABLE `berita_berita`
  ADD PRIMARY KEY (`id`),
  ADD KEY `berita_berita_penulis_id_ff27028e_fk_auth_user_id` (`penulis_id`),
  ADD KEY `berita_berita_slug_a37f1c05` (`slug`),
  ADD KEY `berita_berita_status_id_fa32b04b_fk_berita_statusnews_id` (`status_id`);

--
-- Indexes for table `berita_berita_kategori`
--
ALTER TABLE `berita_berita_kategori`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `berita_berita_Kategory_berita_id_kategory_id_512f37e0_uniq` (`berita_id`,`kategory_id`),
  ADD KEY `berita_berita_katego_kategory_id_87b25ade_fk_berita_ka` (`kategory_id`);

--
-- Indexes for table `berita_kategory`
--
ALTER TABLE `berita_kategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita_statusnews`
--
ALTER TABLE `berita_statusnews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `galery_image`
--
ALTER TABLE `galery_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galery_video`
--
ALTER TABLE `galery_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwal_jadwal`
--
ALTER TABLE `jadwal_jadwal`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota_anggota`
--
ALTER TABLE `anggota_anggota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `anggota_ujiankenaikantingkat`
--
ALTER TABLE `anggota_ujiankenaikantingkat`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `berita_berita`
--
ALTER TABLE `berita_berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `berita_berita_kategori`
--
ALTER TABLE `berita_berita_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `berita_kategory`
--
ALTER TABLE `berita_kategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `berita_statusnews`
--
ALTER TABLE `berita_statusnews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `galery_image`
--
ALTER TABLE `galery_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `galery_video`
--
ALTER TABLE `galery_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jadwal_jadwal`
--
ALTER TABLE `jadwal_jadwal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `berita_berita`
--
ALTER TABLE `berita_berita`
  ADD CONSTRAINT `berita_berita_penulis_id_ff27028e_fk_auth_user_id` FOREIGN KEY (`penulis_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `berita_berita_status_id_fa32b04b_fk_berita_statusnews_id` FOREIGN KEY (`status_id`) REFERENCES `berita_statusnews` (`id`);

--
-- Constraints for table `berita_berita_kategori`
--
ALTER TABLE `berita_berita_kategori`
  ADD CONSTRAINT `berita_berita_katego_kategory_id_87b25ade_fk_berita_ka` FOREIGN KEY (`kategory_id`) REFERENCES `berita_kategory` (`id`),
  ADD CONSTRAINT `berita_berita_kategori_berita_id_f5941ad6_fk_berita_berita_id` FOREIGN KEY (`berita_id`) REFERENCES `berita_berita` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
