-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 18, 2024 at 09:38 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `caraousel`
--

DROP TABLE IF EXISTS `caraousel`;
CREATE TABLE IF NOT EXISTS `caraousel` (
  `id_caraousel` int NOT NULL AUTO_INCREMENT,
  `judul` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL,
  PRIMARY KEY (`id_caraousel`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `caraousel`
--

INSERT INTO `caraousel` (`id_caraousel`, `judul`, `foto`) VALUES
(20, 'lok', '20241213053506.jpg'),
(13, '45re', '20241121060145.jpg'),
(12, 'rer', '20241121060122.jpg'),
(19, 'cnb', '20241213044857.jpg'),
(14, 'yty', '20241121060156.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

DROP TABLE IF EXISTS `kategori`;
CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(200) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(22, 'Genre Fantasi'),
(17, 'Genre Romantis'),
(20, 'Genre Petualangan'),
(21, 'Genre Sejarah');

-- --------------------------------------------------------

--
-- Table structure for table `konfigurasi`
--

DROP TABLE IF EXISTS `konfigurasi`;
CREATE TABLE IF NOT EXISTS `konfigurasi` (
  `id_konfigurasi` int NOT NULL AUTO_INCREMENT,
  `judul_website` varchar(200) NOT NULL,
  `profil_website` text NOT NULL,
  `instagram` varchar(100) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `no_wa` varchar(30) NOT NULL,
  PRIMARY KEY (`id_konfigurasi`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `judul_website`, `profil_website`, `instagram`, `facebook`, `email`, `alamat`, `no_wa`) VALUES
(1, 'Rumah Novel', 'website yang berisi novel dengan genrenya serta berisi sinopsis singkat tentang novel tersebut', 'instagram.com/rumah.novel', 'facebook.com/latifah', 'rumah.novel@gmail.com', 'Palur', '62813234567987');

-- --------------------------------------------------------

--
-- Table structure for table `konten`
--

DROP TABLE IF EXISTS `konten`;
CREATE TABLE IF NOT EXISTS `konten` (
  `id_konten` int NOT NULL AUTO_INCREMENT,
  `judul` varchar(200) NOT NULL,
  `keterangan` text NOT NULL,
  `foto` varchar(50) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `id_kategori` int NOT NULL,
  `tanggal` date NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`id_konten`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `konten`
--

INSERT INTO `konten` (`id_konten`, `judul`, `keterangan`, `foto`, `slug`, `id_kategori`, `tanggal`, `username`) VALUES
(54, 'Harry Potter2', 'Harry Potter adalah serangkaian novel karya penulis Inggris JK Rowling. Novel-novel tersebut mengisahkan Harry Potter, seorang anak laki-laki berusia 11 tahun yang mengetahui bahwa dirinya adalah putra dari penyihir terkenal dan akan bersekolah di Sekolah Sihir Hogwarts . Harry belajar tentang masyarakat penyihir.', '.jpg', 'harry-potter2', 22, '2024-12-16', 'admin'),
(53, 'Perahu Kertas', 'kisah reuni antara Kugy dan sahabat masa kecilnya, Noni, yang  terpisah selama beberapa tahun dan kini kembali berkuliah bersama di Bandung. Kugy juga bertemu dengan Eko, pacar Noni, dan Keenan yang merupakan sepupu Eko. Mereka berempat pun menjalin persahabatan erat dengan nama kelompok “Pura-Pura Ninja”. Di antara persahabatan itu, diam-diam Kugy dan Keenan saling jatuh cinta. Sayangnya, saat itu Kugy sudah memiliki pacar bernama Joshua alias Ojos dan Keenan sedang dekat dengan Wanda.\r\n\r\n', '20241216021757.jpg', 'Perahu-Kertas', 17, '2024-12-16', 'admin'),
(49, 'Dilan', 'Dia adalah Dilanku Tahun 1990 edisi 1 berwarna biru muda dengan tokoh Dilan dan sepeda motornya yang dijadikan covernya.  Nah, gambar Dilan yang menggunakan seragam SMA dengan gaya yang sangat santai  yang terletak di Cover diilustrasikan sendiri  oleh sang penulis Pidi Baiq. Gambar yang terdapat di cover menjadi ciri dari isi novel yang menggambarkan kehidupan remaja. Dibawah gambar Dilan tercantum quotes Pidi Baiq menambah kesan menarik bagi sampulnya.', '20241212125954.jpg', 'Dilan', 17, '2024-12-12', 'admin'),
(50, 'Hujan', 'Mengisahkan cinta dan kenangan di tengah bencana alam yang melibatkan Lail dan Esok, dua karakter dengan ikatan mendalam.', '20241216012552.jpg', 'Hujan', 17, '2024-12-16', 'admin'),
(51, 'Critical Eleven ', 'Tiga menit pertama kritis sifatnya karena saat itulah kesan pertama terbentuk, lalu ada delapan menit sebelum berpisah—delapan menit ketika senyum, tindak tanduk, dan ekspresi wajah orang tersebut jelas bercerita apakah itu akan jadi awal sesuatu ataukah justru menjadi perpisahan. Ale dan Anya pertama kali bertemu dalam penerbangan Jakarta-Sydney. Tiga menit pertama Anya terpikat, tujuh jam berikutnya mereka duduk bersebelahan dan saling mengenal lewat percakapan serta tawa, dan delapan menit sebelum berpisah Ale yakin dia menginginkan Anya.\r\n\r\n\r\nKini, lima tahun setelah perkenalan itu, Ale dan Anya dihadapkan pada satu tragedi besar yang membuat mereka mempertanyakan pilihan-pilihan yang mereka ambil, termasuk keputusan pada sebelas menit paling penting dalam pertemuan pertama mereka.Cerita tentang hubungan cinta Aldebaran dan Anya, yang menghadapi konflik rumah tangga setelah tragedi besar.', '20241216013911.jpg', 'Critical-Eleven-', 17, '2024-12-16', 'admin'),
(52, 'Antologi Rasa ', 'Cerita tentang empat banker yang telah bersahabat bertahun-tahun: Harris, Keara, Ruly, dan Denise, yang diam-diam ternyata saling mencinta. Harris yang cinta mati pada Keara, Keara yang percaya Ruly adalah belahan jiwanya, Ruly yang hatinya telah terpatri pada Denise, dan Denise yang telah menikah pada orang lain.', '20241216015419.jpg', 'Antologi-Rasa-', 17, '2024-12-16', 'admin'),
(56, 'Outlander ', 'Berlatar sejarah, kisah tentang Claire Randall, seorang perawat yang tanpa sengaja terlempar ke abad ke-18 dan jatuh cinta pada Jamie Fraser.', '20241216023344.jpg', 'Outlander-', 22, '2024-12-16', 'admin'),
(57, 'The Lord of the Rings ', 'Seorang hobbit bernama Frodo mewarisi Cincin Tunggal, yang dapat menghancurkan seluruh dunia. Bersama dengan kejahatan yang baru saja bangkit kembali, yaitu Sauron, yang mengejar Cincin tersebut untuk memperkuat kekuasaannya, Frodo bergabung dengan delapan orang lainnya untuk menghancurkan Cincin tersebut dan mengalahkan Sauron.', '20241216024442.jpg', 'The-Lord-of-the-Rings-', 22, '2024-12-16', 'admin'),
(58, 'Harta Vaeran', 'Terlahir dengan bakat untuk berburu harta berharga yang tersembunyi, Karnthe mengikuti jejak ayahnya dan menjadi seorang Pemburu Harta Karun. Ia bergabung bersama Saeliya, seorang Penyihir Tempur, untuk berburu Harta Vaeran yang legendaris. Seiring ia bertualang, ia mendapat bantuan lagi dari tiga rekan yang bisa diandalkan, yaitu seorang Pengumpul Pengetahuan bernama Fukhoy-ri, seorang Pengelabu Mata bernama Certeus, dan seorang Pedagang Pejuang bernama Karin. Dengan tim multi-profesi yang solid ini, Karnthe pantang menyerah mengejar Harta Vaeran yang ternyata begitu dahsyat melebihi bayangannya.', '20241216024719.jpg', 'Harta-Vaeran', 22, '2024-12-16', 'admin'),
(59, 'The Girl Who Fell Beneath the Sea', 'Cerita fantasi berdasarkan mitologi Korea, tentang seorang gadis yang masuk ke dunia bawah laut untuk menghentikan kutukan yang menimpa negerinya.', '20241216025713.jpg', 'The-Girl-Who-Fell-Beneath-the-Sea', 22, '2024-12-16', 'admin'),
(60, 'Neverwhere', 'Mengisahkan perjalanan seorang pria yang menemukan dunia bawah tanah di London yang penuh dengan makhluk aneh dan petualangan fantastis.', '20241216030010.jpg', 'Neverwhere', 22, '2024-12-16', 'admin'),
(61, 'The Mountain Story oleh Lori Lansens', 'The Mountain Story oleh Lori Lansens\r\nNovel ini mengisahkan Wolf, seorang pemuda yang melakukan pendakian ke sebuah gunung dengan niat bunuh diri, tetapi ia terjebak bersama tiga orang lainnya akibat kecelakaan. Perjalanan mereka menjadi perjuangan hidup-mati di tengah kondisi alam yang ekstrem. Gunung: Fiktif, namun terinspirasi dari lanskap Pegunungan California.', '20241216030128.jpg', 'The-Mountain-Story-oleh-Lori-Lansens', 20, '2024-12-16', 'admin'),
(62, 'The Adventures of Tom Sawyer oleh Mark Twain', 'The Adventures of Tom Sawyer oleh Mark Twain\r\nTom Sawyer, seorang anak laki-laki yang penuh rasa ingin tahu, tinggal di kota kecil St. Petersburg di dekat Sungai Mississippi. Petualangannya melibatkan menjelajahi gua, mencari harta karun, hingga menyaksikan kejahatan yang mengubah hidupnya. Novel ini mengisahkan masa kecil yang penuh kebebasan, kenakalan, dan keberanian.', '20241216030226.jpg', 'The-Adventures-of-Tom-Sawyer-oleh-Mark-Twain', 20, '2024-12-16', 'admin'),
(63, 'Laskar Pelangi oleh Andrea Hirata', 'Laskar Pelangi oleh Andrea Hirata\r\nBercerita tentang perjuangan 10 anak dari Belitung untuk mendapatkan pendidikan di tengah keterbatasan. Meskipun bukan petualangan dalam arti eksplorasi geografis, novel ini menggambarkan perjalanan hidup penuh tantangan, persahabatan, dan pencapaian mimpi.', '20241216030308.jpg', 'Laskar-Pelangi-oleh-Andrea-Hirata', 20, '2024-12-16', 'admin'),
(64, 'Bukan 350 Tahun Dijajah', 'Buku ini membongkar mitos sejarah bahwa Indonesia dijajah Belanda selama 350 tahun. JJ Rizal, sejarawan terkemuka, menjelaskan bahwa narasi ini terlalu menyederhanakan kenyataan kompleks dari sejarah kolonialisme di Indonesia. Ia menunjukkan bahwa kolonialisme Belanda tidak merata di seluruh Nusantara dan hanya menguasai wilayah tertentu untuk jangka waktu yang berbeda-beda. Dengan gaya penulisan yang kritis dan lugas, buku ini mengajak pembaca untuk melihat sejarah dari perspektif baru yang lebih faktual, sekaligus memahami dinamika perjuangan bangsa Indonesia dalam konteks yang lebih realistis.', '20241216031309.jpg', 'Bukan-350-Tahun-Dijajah', 21, '2024-12-16', 'admin'),
(65, 'Bumi Manusia - Pramoedya Ananta Toer', 'Novel ini menceritakan kisah Minke, seorang pemuda pribumi yang berpendidikan Eropa, yang terjebak dalam konflik antara tradisi, kolonialisme, dan modernitas. Ia jatuh cinta dengan Annelies, seorang gadis Indo yang nasibnya terjepit dalam sistem hukum kolonial yang tidak adil. Novel ini menggambarkan perjuangan identitas nasional dan keadilan sosial di tengah kekuasaan kolonial.', '20241216031405.jpg', 'Bumi-Manusia---Pramoedya-Ananta-Toer', 21, '2024-12-16', 'admin'),
(66, 'Laut Bercerita', 'Novel ini mengisahkan perjuangan aktivis mahasiswa pada era Orde Baru melalui sudut pandang Laut Biru, seorang mahasiswa yang terlibat dalam gerakan bawah tanah melawan rezim otoriter. Laut dan kawan-kawannya memperjuangkan kebebasan dan keadilan, meskipun harus menghadapi ancaman penculikan, penyiksaan, dan kehilangan.\r\n\r\nCerita ini juga menyoroti dampak yang dirasakan keluarga para aktivis, terutama setelah Laut menghilang tanpa jejak. Dengan alur yang penuh emosi dan penelusuran sejarah, Laut Bercerita menggambarkan keberanian, kehilangan, dan ingatan tentang masa kelam Indonesia di akhir 1990-an. Novel ini menjadi pengingat akan pentingnya perjuangan hak asasi manusia dan kebebasan berbicara.', '20241216031736.jpg', 'Laut-Bercerita', 21, '2024-12-16', 'admin'),
(67, 'Max Havelaar', 'Max Havelaar adalah sebuah novel yang mengecam praktik kolonialisme Belanda di Hindia Belanda (sekarang Indonesia). Cerita ini berpusat pada Max Havelaar, seorang asisten residen di Lebak, Banten, yang berjuang melawan korupsi, penindasan, dan eksploitasi terhadap rakyat pribumi oleh para pejabat kolonial dan penguasa lokal.\r\n\r\nMelalui tokoh Max Havelaar, Multatuli menggambarkan penderitaan rakyat akibat kerja paksa dan sistem tanam paksa (cultuurstelsel), sambil mengkritik pemerintah Belanda yang hanya peduli pada keuntungan perdagangan. Novel ini tidak hanya menjadi karya sastra penting tetapi juga memicu kesadaran moral tentang keadilan sosial dan menjadi salah satu inspirasi gerakan antikolonial.', '20241216034847.jpg', 'Max-Havelaar', 21, '2024-12-16', 'admin'),
(68, 'Kronik Betawi - Ratih Kumala', 'Novel ini menyajikan kisah para penduduk Betawi dengan latar belakang sejarah yang menggambarkan kehidupan masyarakat di Batavia pada masa kolonial. Konflik cinta, politik, dan budaya menjadi bagian dari narasi yang menghidupkan kembali suasana masa lalu.', '20241216035151.jpg', 'Kronik-Betawi---Ratih-Kumala', 21, '2024-12-16', 'admin'),
(69, ' Pulang - Leila S. Chudori', 'Novel ini mengisahkan perjalanan Dimas Suryo, seorang wartawan yang harus hidup dalam pengasingan di Paris setelah peristiwa 1965. Dimas dan kawan-kawannya mencoba mempertahankan identitas Indonesia mereka di tanah asing, sementara anak-anak mereka menghadapi dilema identitas. Pulang menggambarkan kerinduan, politik, dan keluarga di tengah dinamika sejarah Indonesia.', '20241216035557.jpg', '-Pulang---Leila-S.-Chudori', 21, '2024-12-16', 'admin'),
(70, 'Amba - Laksmi Pamuntjak', 'Kisah cinta dan pencarian seorang perempuan bernama Amba terhadap kekasihnya, Bhisma, yang ditahan di Pulau Buru sebagai tahanan politik. Novel ini mengangkat tema sejarah kelam Indonesia dengan sentuhan kisah epik Mahabharata.\r\n', '20241216035904.jpg', 'Amba---Laksmi-Pamuntjak', 21, '2024-12-16', 'admin'),
(71, 'Arus Balik - Pramoedya Ananta Toer', 'Novel ini bercerita tentang Layar Terkembang, seorang pelaut dan prajurit, di tengah peralihan kekuasaan dari kerajaan lokal ke penjajahan Portugis. Sebuah kisah epik yang merefleksikan kehilangan kedaulatan dan tradisi bangsa.', '20241216040156.jpg', 'Arus-Balik---Pramoedya-Ananta-Toer', 21, '2024-12-16', 'admin'),
(72, 'The Hobbit – J.R.R. Tolkien', 'Petualangan Bilbo Baggins, seorang hobbit yang awalnya enggan, untuk membantu para kurcaci merebut kembali kerajaan mereka dari naga Smaug. Dalam perjalanannya, Bilbo menghadapi troll, goblin, serigala raksasa, dan menemukan cincin misterius yang akan mengubah takdirnya.\r\n\r\n', '20241216040650.jpg', 'The-Hobbit-–-J.R.R.-Tolkien', 20, '2024-12-16', 'admin'),
(73, 'Into Thin Air – Jon Krakauer', 'Buku ini adalah kisah nyata dari pengalaman Jon Krakauer saat mendaki Gunung Everest pada tahun 1996, yang berubah menjadi salah satu tragedi pendakian paling mematikan dalam sejarah. Penulis menggambarkan kondisi ekstrem di gunung, konflik antar pendaki, dan keputusan-keputusan kritis yang menentukan hidup dan mati.', '20241216040922.jpg', 'Into-Thin-Air-–-Jon-Krakauer', 20, '2024-12-16', 'admin'),
(74, 'Touching the Void – Joe Simpson', 'Sebuah kisah nyata tentang perjuangan hidup Joe Simpson dan rekannya, Simon Yates, saat mendaki Siula Grande. Setelah Joe mengalami kecelakaan parah, ia harus bertahan hidup sendirian dalam kondisi yang hampir mustahil. Cerita ini penuh dengan keberanian dan ketahanan luar biasa.', '20241216041102.jpg', 'Touching-the-Void-–-Joe-Simpson', 20, '2024-12-16', 'admin'),
(75, '5 cm', 'Lima sahabat—Zafran, Genta, Arial, Riani, dan Ian—memutuskan untuk berpisah sementara selama tiga bulan untuk mengejar mimpi masing-masing. Setelah berkumpul kembali, mereka merencanakan pendakian ke Gunung Semeru. Perjalanan ini tidak hanya penuh tantangan fisik, tetapi juga menjadi momen refleksi tentang persahabatan, cinta, dan keberanian untuk bermimpi.\r\n\r\nFilosofi 5 Cm adalah tentang menempatkan mimpi \"5 cm di depan mata,\" sebagai simbol tekad untuk terus berusaha tanpa menyerah. Novel ini menyatukan tema petualangan dan inspirasi hidup.', '20241216041825.jpg', '5-cm', 20, '2024-12-16', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `username` varchar(70) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `level` varchar(50) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `nama`, `password`, `level`) VALUES
(14, 'baruu', 'baru', '5ef035d11d74713fcb36f2df26aa7c3d', 'kontributor'),
(4, 'user', 'nisa', 'ee11cbb19052e40b07aac0ca060c23ee', 'Admin'),
(13, 'dola', 'dodol', '81dc9bdb52d04dc20036dbd8313ed055', 'kontributor'),
(11, 'admin', 'Latip', '21232f297a57a5a743894a0e4a801fc3', 'Admin'),
(12, 'Latifah', 'Latip', '81dc9bdb52d04dc20036dbd8313ed055', 'Kontributor');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
