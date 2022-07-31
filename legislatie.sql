-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: ian. 07, 2022 la 07:35 PM
-- Versiune server: 10.4.17-MariaDB
-- Versiune PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `legislatie`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `incadrari`
--

CREATE TABLE `incadrari` (
  `id` int(11) NOT NULL,
  `incadrare` varchar(100) DEFAULT NULL,
  `descriere` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `incadrari`
--

INSERT INTO `incadrari` (`id`, `incadrare`, `descriere`) VALUES
(1, 'articol 1', 'lupta si atac'),
(2, 'articol 2', 'agresivi'),
(3, 'articol 3', 'nonagresivi');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `legislatie_nationala`
--

CREATE TABLE `legislatie_nationala` (
  `id` int(11) NOT NULL,
  `id_caine` int(11) DEFAULT NULL,
  `id_lege` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `legislatie_nationala`
--

INSERT INTO `legislatie_nationala` (`id`, `id_caine`, `id_lege`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 1),
(4, 4, 1),
(5, 5, 3),
(6, 6, 2),
(7, 7, 1),
(8, 8, 1),
(9, 9, 3),
(10, 10, 2),
(11, 11, 1),
(12, 12, 1),
(13, 13, 3),
(14, 14, 2),
(15, 15, 2),
(16, 16, 1),
(17, 17, 3),
(18, 18, 1),
(19, 19, 2),
(20, 20, 1);

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `incadrari`
--
ALTER TABLE `incadrari`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `legislatie_nationala`
--
ALTER TABLE `legislatie_nationala`
  ADD PRIMARY KEY (`id`),
  ADD KEY `legislatie_nationala_FK` (`id_caine`),
  ADD KEY `legislatie_nationala_FK_1` (`id_lege`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `incadrari`
--
ALTER TABLE `incadrari`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pentru tabele `legislatie_nationala`
--
ALTER TABLE `legislatie_nationala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constrângeri pentru tabele eliminate
--

--
-- Constrângeri pentru tabele `legislatie_nationala`
--
ALTER TABLE `legislatie_nationala`
  ADD CONSTRAINT `legislatie_nationala_FK` FOREIGN KEY (`id_caine`) REFERENCES `socium`.`stoc` (`id`),
  ADD CONSTRAINT `legislatie_nationala_FK_1` FOREIGN KEY (`id_lege`) REFERENCES `incadrari` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
