-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 08 Oca 2024, 16:30:27
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `yemeksepetiDB`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cartTable`
--

CREATE TABLE `cartTable` (
  `id` int(11) NOT NULL,
  `ordererEmail` varchar(100) NOT NULL,
  `orderId` int(11) NOT NULL,
  `orderName` varchar(50) NOT NULL,
  `orderCategory` varchar(50) NOT NULL,
  `orderQuantity` int(11) NOT NULL,
  `orderPrice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `cartTable`
--

INSERT INTO `cartTable` (`id`, `ordererEmail`, `orderId`, `orderName`, `orderCategory`, `orderQuantity`, `orderPrice`) VALUES
(95, 'admin@gmail.com', 7, 'Soğuk Baklava', 'Dessert', 3, 25),
(98, 'bb@gmail.com', 6, 'Ekler', 'Dessert', 2, 12),
(99, 'bb@gmail.com', 4, 'Pizza', 'MainCourse', 2, 15),
(100, 'bb@gmail.com', 7, 'Soğuk Baklava', 'Dessert', 4, 25);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `CustomerTable`
--

CREATE TABLE `CustomerTable` (
  `id` int(6) UNSIGNED NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `cardNumber` bigint(11) DEFAULT NULL,
  `expirationDate` varchar(20) DEFAULT NULL,
  `cvv` int(11) DEFAULT NULL,
  `money` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `CustomerTable`
--

INSERT INTO `CustomerTable` (`id`, `firstname`, `lastname`, `email`, `password`, `cardNumber`, `expirationDate`, `cvv`, `money`) VALUES
(2, 'aa', 'aa', 'aa@gmail.com', '123', 355065895248864, '09/27', 345, 631),
(3, 'bb', 'bb', 'bb@gmail.com', '123', 4567890123456789, '04/24', 563, 937),
(7, 'admin', 'admin', 'admin@gmail.com', 'admin123', 123456781234567, '07/24', 555, 200),
(9, 'naz', 'sipahi', 'nazsipahi@gmail.com', '123456', 1234567887654321, '09/27', 123, 23),
(10, 'gözde', 'civciv', 'g.civcik@gmail.com', '123456', 456789073461234, '03/24', 555, 587),
(11, 'zeynep', 'demir', 'zeynep@gmail.com', '123456', 1111222233334444, '11/33', 777, 155);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menuTable`
--

CREATE TABLE `menuTable` (
  `id` int(11) NOT NULL,
  `menuId` int(11) NOT NULL,
  `menuImg` varchar(500) DEFAULT NULL,
  `menuName` varchar(50) NOT NULL,
  `menuCategory` varchar(50) NOT NULL,
  `menuQuantity` int(11) DEFAULT NULL,
  `menuPrice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `menuTable`
--

INSERT INTO `menuTable` (`id`, `menuId`, `menuImg`, `menuName`, `menuCategory`, `menuQuantity`, `menuPrice`) VALUES
(1, 1, 'Hamburger.jpeg', 'Hamburger', 'MainCourse', 1, 16),
(4, 4, 'Pizza.jpeg', 'Pizza', 'MainCourse', 10, 15),
(5, 5, 'Makarna.jpeg', 'Makarna', 'MainCourse', 2, 5),
(6, 6, 'Ekler.jpeg', 'Ekler', 'Dessert', NULL, 12),
(7, 7, 'Soğuk Baklava.jpg', 'Soğuk Baklava', 'Dessert', NULL, 25),
(8, 8, 'Baklava.jpeg', 'Baklava', 'Dessert', NULL, 20),
(9, 9, 'Pasta.jpeg', 'Pasta', 'Dessert', NULL, 14),
(10, 10, 'Tost.jpeg', 'Tost', 'MainCourse', NULL, 3);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `cartTable`
--
ALTER TABLE `cartTable`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `CustomerTable`
--
ALTER TABLE `CustomerTable`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `menuTable`
--
ALTER TABLE `menuTable`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `cartTable`
--
ALTER TABLE `cartTable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Tablo için AUTO_INCREMENT değeri `CustomerTable`
--
ALTER TABLE `CustomerTable`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `menuTable`
--
ALTER TABLE `menuTable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
