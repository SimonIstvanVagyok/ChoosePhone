-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2024 at 05:07 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chooseyourphone`
--

-- --------------------------------------------------------

--
-- Table structure for table `akkumulatorspecifikaciok`
--

CREATE TABLE `akkumulatorspecifikaciok` (
  `id` int(11) NOT NULL,
  `eszkoz_id` int(11) NOT NULL,
  `kapacitas` int(11) NOT NULL,
  `toltesi_sebesseg` int(11) DEFAULT NULL,
  `toltes_tipusa` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `akkumulatorspecifikaciok`
--

INSERT INTO `akkumulatorspecifikaciok` (`id`, `eszkoz_id`, `kapacitas`, `toltesi_sebesseg`, `toltes_tipusa`) VALUES
(1, 1, 3900, 45, 'Gyors töltés'),
(2, 2, 4200, 20, 'Gyors töltés'),
(3, 3, 4500, 67, 'Gyors töltés'),
(4, 4, 4700, 30, 'Gyors töltés'),
(5, 5, 5000, 80, 'Gyors töltés'),
(6, 6, 4500, 30, 'Gyors töltés'),
(7, 7, 4200, 50, 'Gyors töltés'),
(8, 8, 4800, 65, 'Gyors töltés'),
(9, 9, 4600, 50, 'Gyors töltés'),
(10, 10, 4100, 33, 'Gyors töltés');

-- --------------------------------------------------------

--
-- Table structure for table `belsospecifikaciok`
--

CREATE TABLE `belsospecifikaciok` (
  `id` int(11) NOT NULL,
  `eszkoz_id` int(11) NOT NULL,
  `cpu_gpu_pont` int(11) DEFAULT NULL,
  `cpu_nev` varchar(255) DEFAULT NULL,
  `memoria` int(11) NOT NULL,
  `magok_szama` int(11) NOT NULL,
  `tarolo_kapacitas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `belsospecifikaciok`
--

INSERT INTO `belsospecifikaciok` (`id`, `eszkoz_id`, `cpu_gpu_pont`, `cpu_nev`, `memoria`, `magok_szama`, `tarolo_kapacitas`) VALUES
(1, 1, 900000, 'Snapdragon 8 Gen 2', 8, 8, 256),
(2, 2, 850000, 'A16 Bionic', 6, 6, 128),
(3, 3, 820000, 'Snapdragon 8 Gen 2', 12, 8, 256),
(4, 4, 780000, 'Google Tensor G3', 8, 8, 128),
(5, 5, 800000, 'Snapdragon 8 Gen 2', 16, 8, 512),
(6, 6, 750000, 'Snapdragon 8 Gen 1', 12, 8, 256),
(7, 7, 700000, 'Kirin 9000S', 8, 8, 128),
(8, 8, 760000, 'MediaTek Dimensity 9200', 12, 8, 256),
(9, 9, 720000, 'Snapdragon 8+ Gen 1', 8, 8, 128),
(10, 10, 650000, 'Snapdragon 695', 6, 6, 128);

-- --------------------------------------------------------

--
-- Table structure for table `ertekelesek`
--

CREATE TABLE `ertekelesek` (
  `id` int(11) NOT NULL,
  `eszkoz_id` int(11) NOT NULL,
  `felhasznalo_id` int(11) NOT NULL,
  `ertekeles` decimal(2,1) NOT NULL,
  `ertekelo_szoveg` text DEFAULT NULL,
  `letrehozva` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ertekelesek`
--

INSERT INTO `ertekelesek` (`id`, `eszkoz_id`, `felhasznalo_id`, `ertekeles`, `ertekelo_szoveg`, `letrehozva`) VALUES
(1, 1, 1, 4.5, 'Nagyon gyors és szép kijelző. Az akkumulátor kicsit gyenge.', '2024-01-10 13:23:45'),
(2, 2, 2, 5.0, 'Az iPhone mindig megbízható. Tökéletes választás.', '2024-01-12 10:45:30'),
(3, 3, 3, 4.0, 'Remek ár-érték arány, de a szoftver frissítések hiányoznak.', '2024-01-14 08:10:12'),
(4, 4, 4, 4.8, 'Az Android élmény a legjobb ezen a telefonon.', '2024-01-15 15:05:18'),
(5, 5, 5, 4.6, 'Gyors töltés és kiváló kijelző. Nagyon elégedett vagyok.', '2024-01-16 09:30:45'),
(6, 6, 6, 4.2, 'Kiváló kamera funkciók, de az akkumulátor élettartama javítható.', '2024-01-17 12:55:22'),
(7, 7, 7, 4.3, 'Szép dizájn és jó teljesítmény. A szoftver néha akad.', '2024-01-18 07:20:50'),
(8, 8, 8, 4.9, 'A legjobb telefon, amit valaha használtam!', '2024-01-19 18:35:12'),
(9, 9, 9, 4.7, 'Nagyon gyors és szép kijelző. Az akkumulátor is remek.', '2024-01-20 10:50:33'),
(10, 10, 10, 4.0, 'Megbízható készülék, de a kamera lehetne jobb.', '2024-01-21 14:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `eszkozok`
--

CREATE TABLE `eszkozok` (
  `id` int(11) NOT NULL,
  `nev` varchar(255) NOT NULL,
  `marka` varchar(255) NOT NULL,
  `megjelenes` date NOT NULL,
  `kep_url` varchar(255) DEFAULT NULL,
  `leiras` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eszkozok`
--

INSERT INTO `eszkozok` (`id`, `nev`, `marka`, `megjelenes`, `kep_url`, `leiras`) VALUES
(1, 'Galaxy S23', 'Samsung', '2023-01-20', 'https://example.com/galaxy-s23.jpg', 'Samsung Galaxy S23, csúcskategóriás okostelefon.'),
(2, 'iPhone 15', 'Apple', '2023-09-22', 'https://example.com/iphone-15.jpg', 'Apple iPhone 15, innovatív dizájn és teljesítmény.'),
(3, 'Xiaomi 13', 'Xiaomi', '2023-03-10', 'https://example.com/xiaomi-13.jpg', 'Xiaomi 13, erős hardver és versenyképes ár.'),
(4, 'Pixel 8', 'Google', '2023-10-05', 'https://example.com/pixel-8.jpg', 'Google Pixel 8, tiszta Android élmény.'),
(5, 'OnePlus 11', 'OnePlus', '2023-02-08', 'https://example.com/oneplus-11.jpg', 'OnePlus 11, kiváló teljesítmény.'),
(6, 'Sony Xperia 1 V', 'Sony', '2023-06-15', 'https://example.com/xperia-1v.jpg', 'Sony Xperia 1 V, professzionális kamera funkciók.'),
(7, 'Huawei P60 Pro', 'Huawei', '2023-04-20', 'https://example.com/huawei-p60-pro.jpg', 'Huawei P60 Pro, nagy teljesítmény és innováció.'),
(8, 'Oppo Find X6', 'Oppo', '2023-05-12', 'https://example.com/oppo-find-x6.jpg', 'Oppo Find X6, lenyűgöző dizájn.'),
(9, 'Realme GT 3', 'Realme', '2023-07-30', 'https://example.com/realme-gt3.jpg', 'Realme GT 3, erős ár-érték arány.'),
(10, 'Nokia X30', 'Nokia', '2023-08-10', 'https://example.com/nokia-x30.jpg', 'Nokia X30, megbízható és környezetbarát.');

-- --------------------------------------------------------

--
-- Table structure for table `felhasznalok`
--

CREATE TABLE `felhasznalok` (
  `id` int(11) NOT NULL,
  `felhasznalonev` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `jelszo` varchar(255) NOT NULL,
  `kep_url` varchar(255) DEFAULT NULL,
  `regisztralt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `felhasznalok`
--

INSERT INTO `felhasznalok` (`id`, `felhasznalonev`, `email`, `jelszo`, `kep_url`, `regisztralt`) VALUES
(1, 'johndoe', 'johndoe@example.com', 'hashed_password1', 'https://example.com/user1.jpg', '2024-11-24 18:20:35'),
(2, 'janedoe', 'janedoe@example.com', 'hashed_password2', 'https://example.com/user2.jpg', '2024-11-24 18:20:35'),
(3, 'peterparker', 'spiderman@example.com', 'hashed_password3', 'https://example.com/user3.jpg', '2024-11-24 18:20:35'),
(4, 'tonystark', 'ironman@example.com', 'hashed_password4', 'https://example.com/user4.jpg', '2024-11-24 18:20:35'),
(5, 'brucewayne', 'batman@example.com', 'hashed_password5', 'https://example.com/user5.jpg', '2024-11-24 18:20:35'),
(6, 'dianaprince', 'wonderwoman@example.com', 'hashed_password6', 'https://example.com/user6.jpg', '2024-11-24 18:20:35'),
(7, 'clarkkent', 'superman@example.com', 'hashed_password7', 'https://example.com/user7.jpg', '2024-11-24 18:20:35'),
(8, 'steverogers', 'captain@example.com', 'hashed_password8', 'https://example.com/user8.jpg', '2024-11-24 18:20:35'),
(9, 'natasharomanoff', 'blackwidow@example.com', 'hashed_password9', 'https://example.com/user9.jpg', '2024-11-24 18:20:35'),
(10, 'brucebanner', 'hulk@example.com', 'hashed_password10', 'https://example.com/user10.jpg', '2024-11-24 18:20:35');

-- --------------------------------------------------------

--
-- Table structure for table `felhasznalo_elozmeny`
--

CREATE TABLE `felhasznalo_elozmeny` (
  `id` int(11) NOT NULL,
  `felhasznalo_id` int(11) NOT NULL,
  `keresett_szoveg` text DEFAULT NULL,
  `keresett_mikor` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kameraspecifikaciok`
--

CREATE TABLE `kameraspecifikaciok` (
  `id` int(11) NOT NULL,
  `eszkoz_id` int(11) NOT NULL,
  `fo_kamera` int(11) NOT NULL,
  `szelfi_kamera` int(11) DEFAULT NULL,
  `video_felvetel` tinyint(1) DEFAULT NULL,
  `video_fps` int(11) DEFAULT NULL,
  `ai_tamogatas` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kameraspecifikaciok`
--

INSERT INTO `kameraspecifikaciok` (`id`, `eszkoz_id`, `fo_kamera`, `szelfi_kamera`, `video_felvetel`, `video_fps`, `ai_tamogatas`) VALUES
(1, 1, 50, 12, 1, 60, 1),
(2, 2, 48, 12, 1, 60, 1),
(3, 3, 50, 16, 1, 60, 1),
(4, 4, 64, 10, 1, 60, 1),
(5, 5, 50, 16, 1, 60, 1),
(6, 6, 12, 12, 1, 30, 1),
(7, 7, 50, 13, 1, 60, 1),
(8, 8, 50, 32, 1, 60, 1),
(9, 9, 64, 32, 1, 60, 1),
(10, 10, 48, 16, 1, 30, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kijelzospecifikaciok`
--

CREATE TABLE `kijelzospecifikaciok` (
  `id` int(11) NOT NULL,
  `eszkoz_id` int(11) NOT NULL,
  `kijelzo_meret` decimal(10,2) NOT NULL,
  `felbontas_w` int(11) NOT NULL,
  `felbontas_h` int(11) NOT NULL,
  `kepernyo_tipus` varchar(255) DEFAULT NULL,
  `panel_tipus` varchar(255) DEFAULT NULL,
  `vedouveg` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kijelzospecifikaciok`
--

INSERT INTO `kijelzospecifikaciok` (`id`, `eszkoz_id`, `kijelzo_meret`, `felbontas_w`, `felbontas_h`, `kepernyo_tipus`, `panel_tipus`, `vedouveg`) VALUES
(1, 1, 6.10, 2340, 1080, 'AMOLED', 'Dynamic AMOLED 2X', 'Gorilla Glass Victus'),
(2, 2, 6.70, 2778, 1284, 'OLED', 'Super Retina XDR', 'Ceramic Shield'),
(3, 3, 6.36, 2400, 1080, 'AMOLED', 'AMOLED', 'Gorilla Glass 5'),
(4, 4, 6.20, 2400, 1080, 'OLED', 'OLED', 'Corning Gorilla Glass'),
(5, 5, 6.70, 3216, 1440, 'AMOLED', 'Fluid AMOLED', 'Gorilla Glass Victus'),
(6, 6, 6.50, 3840, 1644, 'OLED', '4K HDR OLED', 'Gorilla Glass Victus'),
(7, 7, 6.67, 2700, 1228, 'OLED', 'LTPO OLED', 'Kunlun Glass'),
(8, 8, 6.82, 3168, 1440, 'AMOLED', 'AMOLED', 'Gorilla Glass 5'),
(9, 9, 6.74, 2772, 1240, 'AMOLED', 'AMOLED', 'Dragontrail Glass'),
(10, 10, 6.43, 2400, 1080, 'AMOLED', 'AMOLED', 'Gorilla Glass 3');

-- --------------------------------------------------------

--
-- Table structure for table `operaciosrendszer_szoftver`
--

CREATE TABLE `operaciosrendszer_szoftver` (
  `id` int(11) NOT NULL,
  `eszkoz_id` int(11) NOT NULL,
  `OS` varchar(255) NOT NULL,
  `verzio` decimal(10,2) NOT NULL,
  `UI` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `operaciosrendszer_szoftver`
--

INSERT INTO `operaciosrendszer_szoftver` (`id`, `eszkoz_id`, `OS`, `verzio`, `UI`) VALUES
(1, 1, 'Android', 13.00, 'One UI 5.1'),
(2, 2, 'iOS', 17.00, NULL),
(3, 3, 'Android', 13.00, 'MIUI 14'),
(4, 4, 'Android', 14.00, 'Pixel UI'),
(5, 5, 'Android', 13.00, 'OxygenOS 13'),
(6, 6, 'Android', 13.00, 'Xperia UI'),
(7, 7, 'HarmonyOS', 4.00, 'Harmony UI'),
(8, 8, 'Android', 13.00, 'ColorOS 13'),
(9, 9, 'Android', 13.00, 'Realme UI 4.0'),
(10, 10, 'Android', 13.00, 'Stock Android');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akkumulatorspecifikaciok`
--
ALTER TABLE `akkumulatorspecifikaciok`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eszkoz_id` (`eszkoz_id`);

--
-- Indexes for table `belsospecifikaciok`
--
ALTER TABLE `belsospecifikaciok`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eszkoz_id` (`eszkoz_id`);

--
-- Indexes for table `ertekelesek`
--
ALTER TABLE `ertekelesek`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eszkoz_id` (`eszkoz_id`),
  ADD KEY `felhasznalo_id` (`felhasznalo_id`);

--
-- Indexes for table `eszkozok`
--
ALTER TABLE `eszkozok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `felhasznalok`
--
ALTER TABLE `felhasznalok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `felhasznalo_elozmeny`
--
ALTER TABLE `felhasznalo_elozmeny`
  ADD PRIMARY KEY (`id`),
  ADD KEY `felhasznalo_id` (`felhasznalo_id`);

--
-- Indexes for table `kameraspecifikaciok`
--
ALTER TABLE `kameraspecifikaciok`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eszkoz_id` (`eszkoz_id`);

--
-- Indexes for table `kijelzospecifikaciok`
--
ALTER TABLE `kijelzospecifikaciok`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eszkoz_id` (`eszkoz_id`);

--
-- Indexes for table `operaciosrendszer_szoftver`
--
ALTER TABLE `operaciosrendszer_szoftver`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eszkoz_id` (`eszkoz_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akkumulatorspecifikaciok`
--
ALTER TABLE `akkumulatorspecifikaciok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `belsospecifikaciok`
--
ALTER TABLE `belsospecifikaciok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ertekelesek`
--
ALTER TABLE `ertekelesek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `eszkozok`
--
ALTER TABLE `eszkozok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `felhasznalok`
--
ALTER TABLE `felhasznalok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `felhasznalo_elozmeny`
--
ALTER TABLE `felhasznalo_elozmeny`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kameraspecifikaciok`
--
ALTER TABLE `kameraspecifikaciok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kijelzospecifikaciok`
--
ALTER TABLE `kijelzospecifikaciok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `operaciosrendszer_szoftver`
--
ALTER TABLE `operaciosrendszer_szoftver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `akkumulatorspecifikaciok`
--
ALTER TABLE `akkumulatorspecifikaciok`
  ADD CONSTRAINT `akkumulatorspecifikaciok_ibfk_1` FOREIGN KEY (`eszkoz_id`) REFERENCES `eszkozok` (`id`);

--
-- Constraints for table `belsospecifikaciok`
--
ALTER TABLE `belsospecifikaciok`
  ADD CONSTRAINT `belsospecifikaciok_ibfk_1` FOREIGN KEY (`eszkoz_id`) REFERENCES `eszkozok` (`id`);

--
-- Constraints for table `ertekelesek`
--
ALTER TABLE `ertekelesek`
  ADD CONSTRAINT `ertekelesek_ibfk_1` FOREIGN KEY (`eszkoz_id`) REFERENCES `eszkozok` (`id`),
  ADD CONSTRAINT `ertekelesek_ibfk_2` FOREIGN KEY (`felhasznalo_id`) REFERENCES `felhasznalok` (`id`);

--
-- Constraints for table `felhasznalo_elozmeny`
--
ALTER TABLE `felhasznalo_elozmeny`
  ADD CONSTRAINT `felhasznalo_elozmeny_ibfk_1` FOREIGN KEY (`felhasznalo_id`) REFERENCES `felhasznalok` (`id`);

--
-- Constraints for table `kameraspecifikaciok`
--
ALTER TABLE `kameraspecifikaciok`
  ADD CONSTRAINT `kameraspecifikaciok_ibfk_1` FOREIGN KEY (`eszkoz_id`) REFERENCES `eszkozok` (`id`);

--
-- Constraints for table `kijelzospecifikaciok`
--
ALTER TABLE `kijelzospecifikaciok`
  ADD CONSTRAINT `kijelzospecifikaciok_ibfk_1` FOREIGN KEY (`eszkoz_id`) REFERENCES `eszkozok` (`id`);

--
-- Constraints for table `operaciosrendszer_szoftver`
--
ALTER TABLE `operaciosrendszer_szoftver`
  ADD CONSTRAINT `operaciosrendszer_szoftver_ibfk_1` FOREIGN KEY (`eszkoz_id`) REFERENCES `eszkozok` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
