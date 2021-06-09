-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 09 Cze 2021, 09:16
-- Wersja serwera: 10.4.19-MariaDB
-- Wersja PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `io`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `customers`
--

CREATE TABLE `customers` (
  `ID` varchar(15) DEFAULT NULL,
  `firstName` varchar(20) CHARACTER SET utf8 COLLATE utf8_polish_ci DEFAULT NULL,
  `lastName` varchar(20) CHARACTER SET utf8 COLLATE utf8_polish_ci DEFAULT NULL,
  `pesel` varchar(20) DEFAULT NULL,
  `phoneNumber` varchar(20) DEFAULT NULL,
  `adress` varchar(50) CHARACTER SET utf8 COLLATE utf8_polish_ci DEFAULT NULL,
  `birthDate` varchar(20) DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `customers`
--

INSERT INTO `customers` (`ID`, `firstName`, `lastName`, `pesel`, `phoneNumber`, `adress`, `birthDate`, `password`) VALUES
('1', 'Michał', 'Korobczuk', '00250603037', '882009392', 'Mosty 32/1', '06.05.2000', 'trudne'),
('2', 'Maciej', 'Krawczuk', '00293003371', '607867543', 'Budno 5B', '30.09.2000', 'latwe'),
('3', 'Jan', 'Kowal', '00236683097', '765467895', 'Dachy 16C', '12.02.1932', 'niepamieta'),
('4', 'Zdzisław', 'Taczka', '00451953033', '123456789', 'Oborniki 13', '13.04.1969', 'umiarkowane'),
('5', 'Marian', 'Wolski', '11111111111', '123123123', 'Imno 16', '14.12.1944', 'banalne'),
('6', 'Justyna', 'Zielona', '22222222222', '234234234', 'Biłgoraj ul.Cicha 4 ', '12.12.1986', 'problematyczne'),
('7', 'Tadeusz', 'Mozajka', '93448238487', '112031231', 'Budendorf 2', '12.05.1988', 'skomplikowane');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `products`
--

CREATE TABLE `products` (
  `code` varchar(20) DEFAULT NULL,
  `statID` varchar(20) DEFAULT NULL,
  `supplierID` varchar(20) DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_polish_ci DEFAULT NULL,
  `manufacturer` varchar(20) CHARACTER SET utf8 COLLATE utf8_polish_ci DEFAULT NULL,
  `inStock` int(20) DEFAULT NULL,
  `price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `products`
--

INSERT INTO `products` (`code`, `statID`, `supplierID`, `name`, `manufacturer`, `inStock`, `price`) VALUES
('1234', '1', '1', 'Mleko 3.2%', 'Mlekpol', 1488, 2.46),
('2523', '2', '3', 'Chesterfield Blue', 'Chesterfield', 1492, 13.99),
('3156', '3', '2', 'Mielonka Tyrolska', 'Mięsak', 1492, 3.19),
('1488', '4', '2', 'Ice Tea Peach', 'Lipton', 1492, 4.99),
('1743', '5', '1', 'Jogurt Naturalny', 'Mlekpol', 1493, 2.26),
('9426', '6', '3', 'Chesterfield Red', 'Chesterfield', 1491, 13.99);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `statistics`
--

CREATE TABLE `statistics` (
  `ID` varchar(20) DEFAULT NULL,
  `soldWeekly` int(20) DEFAULT NULL,
  `soldMonthly` int(20) DEFAULT NULL,
  `soldYearly` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `suppliers`
--

CREATE TABLE `suppliers` (
  `ID` varchar(20) DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `suppliers`
--

INSERT INTO `suppliers` (`ID`, `name`) VALUES
('1', 'Mlek-Trans'),
('2', 'Hurtownia Bartek'),
('3', 'Dym-Spec');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `transactions`
--

CREATE TABLE `transactions` (
  `ID` int(20) DEFAULT NULL,
  `customerID` varchar(20) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `transactions`
--

INSERT INTO `transactions` (`ID`, `customerID`, `price`, `date`) VALUES
(1, '1', 299.01, '2021-06-08'),
(2, NULL, 18.71, '2021-06-08'),
(3, '2', 59.86, '2021-06-08'),
(4, NULL, 38.62, '2021-06-08'),
(5, '1', 150.62, '2021-06-08'),
(6, '2', 54.51, '2021-06-08'),
(7, NULL, 67.31, '2021-06-08'),
(8, NULL, 36.16, '2021-06-08'),
(9, '1', 127.88, '2021-06-09'),
(10, NULL, 30.44, '2021-06-09'),
(11, '6', 30.44, '2021-06-09'),
(12, '8', 159.85, '2021-06-09');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
