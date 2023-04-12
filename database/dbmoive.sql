-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 12, 2023 lúc 06:18 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dbmoive`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `id` char(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`id`, `email`, `password`, `role_id`) VALUES
('23', 'lingdeptrai', '123134', '1'),
('24', 'C2@gmail.com', 'P002', '2'),
('AC25', 'M2@gmail.com', 'P001', '2'),
('AC26', 'C1423423@gmail.com', 'P001', '1'),
('AC27', 'C1@gma2il.com', '1234', '1'),
('AC28', 'C1@gm122il.com', '1234', '1'),
('AC29', 'C1242121@gm122il.com', '1234', '2'),
('AC30', 'lingdeptr2323ai', '123134', '1'),
('AC31', 'M124234234232@gmail.com', 'P001', '1'),
('AC32', 'M124234232@gmail.com', 'P001', '1'),
('AC33', 'M124232@gmail.com', 'P001', '1'),
('AC34', 'M11224232@gmail.com', 'P001', '1'),
('AC35', 'M32@gmail.com', 'P001', '1'),
('AC36', 'M312@gmail.com', 'P001', '1'),
('AC37', 'M3212@gmail.com', 'P001', '1'),
('AC38', 'M321212@gmail.com', 'P001', '2'),
('AC39', 'M3221212@gmail.com', 'P001', '2'),
('AC40', 'M32212212@gmail.com', 'P001', '2'),
('AC41', 'M3221223212@gmail.com', 'P001', '2'),
('AC42', 'M3221233212@gmail.com', 'P001', '2'),
('AC43', 'M2321233212@gmail.com', 'P001', '2'),
('AC44', 'M2321233242342312@gmail.com', 'P001', '2'),
('AC45', 'M232122342312@gmail.com', 'P001', '2'),
('AC46', 'M232756312@gmail.com', 'P001', '2'),
('AC47', 'M2326312@gmail.com', 'P001', '2'),
('AC48', 'M2322@gmail.com', 'P001', '2'),
('AC49', 'M97822@gmail.com', 'P001', '2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `actorof_movie`
--

CREATE TABLE `actorof_movie` (
  `ActorID` char(11) NOT NULL,
  `NameActor` varchar(50) NOT NULL,
  `MovieID` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `actorof_movie`
--

INSERT INTO `actorof_movie` (`ActorID`, `NameActor`, `MovieID`) VALUES
('A002', 'Name 2', 'M002'),
('A11', 'Temperat423ure', 'M002'),
('A3', 'Temperature', 'M002'),
('A4', 'Temperature', 'M002'),
('A5', 'Temperature', 'M002'),
('A6', 'Temperature', 'M002'),
('A7', 'Temperature', 'M002'),
('A8', 'Temperature', 'M002'),
('A9', 'Temperature', 'M002');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `booking`
--

CREATE TABLE `booking` (
  `BookingID` char(11) NOT NULL,
  `NumberOfTickets` int(11) NOT NULL,
  `TotalPrice` float NOT NULL,
  `BookingTime` datetime NOT NULL,
  `Voucher` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `booking`
--

INSERT INTO `booking` (`BookingID`, `NumberOfTickets`, `TotalPrice`, `BookingTime`, `Voucher`) VALUES
('B001', 1, 10000, '2022-10-10 10:10:10', 'V001'),
('B002', 5, 12312, '2022-10-11 11:11:11', ''),
('BK3', 5, 12312, '2022-12-01 00:00:00', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `CustomerID` char(11) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` char(10) NOT NULL,
  `account_id` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`CustomerID`, `FullName`, `Address`, `Email`, `Phone`, `account_id`) VALUES
('C001', 'ling', 'Việt nam Trái Đất', 'ling@gmail.com', '04234', 'AC27'),
('C002', 'NameC 2 ', 'HN', 'C2@gmail.com', 'P002', '24'),
('KH001', 'NameC 1', 'HCM', 'C42342341@gmail.com', 'P001', 'AC29'),
('KH002', 'NameC 1', 'HCM', 'C422342341@gmail.com', 'P001', 'AC28'),
('KH3', 'Huỳnh Nhật Linh', 'Việt nam, Trái đất', 'M3212@gmail.com', '423432342', 'AC37'),
('KH4', 'HUỳnH nhật Linh', 'Việt nam Traias đất', 'l423423inhđẹptrai', '04234', 'AC26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detailmoviegenre`
--

CREATE TABLE `detailmoviegenre` (
  `MovieID` char(11) NOT NULL,
  `GenreID` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `detailmoviegenre`
--

INSERT INTO `detailmoviegenre` (`MovieID`, `GenreID`) VALUES
('M001', 'G001'),
('M002', 'G002');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detailticket`
--

CREATE TABLE `detailticket` (
  `TicketID` char(11) NOT NULL,
  `BookingID` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `detailticket`
--

INSERT INTO `detailticket` (`TicketID`, `BookingID`) VALUES
('T001', 'B001'),
('T002', 'B002');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `errorreport`
--

CREATE TABLE `errorreport` (
  `ReportID` char(11) NOT NULL,
  `ErrorMessage` varchar(50) NOT NULL,
  `ReportTime` datetime NOT NULL,
  `Status` varchar(50) NOT NULL,
  `CustomerID` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `errorreport`
--

INSERT INTO `errorreport` (`ReportID`, `ErrorMessage`, `ReportTime`, `Status`, `CustomerID`) VALUES
('ER1', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER11', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER12', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER13', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER14', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER15', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER16', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER17', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER18', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER19', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER2', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER20', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER21', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER22', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER23', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER24', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER25', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER26', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER27', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER28', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER29', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER3', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER30', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER31', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER32', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER33', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER34', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER35', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER36', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER37', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER38', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER39', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER4', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER40', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER41', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER42', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER43', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER44', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER45', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER46', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER47', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER48', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER49', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER5', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER50', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER51', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER52', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER53', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER54', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER55', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER56', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER57', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER58', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER59', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER6', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER60', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER61', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER62', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER63', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER64', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER65', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER66', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER67', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER68', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER69', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER7', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER70', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER71', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER72', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER73', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER74', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER75', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER76', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER77', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER78', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER79', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER8', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER80', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER81', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER82', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER83', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER84', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER85', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER86', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER87', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER88', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('ER9', 'V1', '0000-00-00 00:00:00', 'V2', 'C001'),
('R001', 'Mess 1 ', '2022-10-11 11:11:11', 'S001', 'C001'),
('R002', 'Mess 2 ', '2022-10-11 11:11:11', 'S002', 'C002');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `format`
--

CREATE TABLE `format` (
  `FormatID` char(11) NOT NULL,
  `NameFormat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `format`
--

INSERT INTO `format` (`FormatID`, `NameFormat`) VALUES
('F001', '2D'),
('F002', '3D');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `language`
--

CREATE TABLE `language` (
  `LanguageID` char(11) NOT NULL,
  `LanguageName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `language`
--

INSERT INTO `language` (`LanguageID`, `LanguageName`) VALUES
('L001', 'Name language 1'),
('L002', 'Name language 2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manager`
--

CREATE TABLE `manager` (
  `ManagerID` char(11) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` char(10) NOT NULL,
  `account_id` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `manager`
--

INSERT INTO `manager` (`ManagerID`, `FullName`, `Email`, `Phone`, `account_id`) VALUES
('M001', 'HUỳnH nhậ121t Lin3424234h', 'l4223423inhđẹptrai', '04234', '24'),
('M002', 'Name manager 2', 'M2@gmail.com', 'P002', 'AC25'),
('MG1', 'Huỳnh Nhật Linh', 'M321212@gmail.com', '423432342', 'AC38'),
('MG2', 'HUỳnH nhậ121t Lin3424234h', 'linhuhynh', '04234', 'AC26'),
('MG3', 'Huỳnh Nhật Linh', 'M97822@gmail.com', '423432342', 'AC49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `ItemID` char(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Price` float NOT NULL,
  `ImageURL` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`ItemID`, `Name`, `Price`, `ImageURL`) VALUES
('I001', 'Name item 1', 40000, 'ImageURL1'),
('I002', 'Name item 2', 40000, 'ImageURL2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menudetail`
--

CREATE TABLE `menudetail` (
  `Number` int(11) NOT NULL,
  `Total` float NOT NULL,
  `ItemID` char(11) NOT NULL,
  `BookingID` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `menudetail`
--

INSERT INTO `menudetail` (`Number`, `Total`, `ItemID`, `BookingID`) VALUES
(1, 40000, 'I001', 'B001'),
(2, 40000, 'I002', 'B002');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movie`
--

CREATE TABLE `movie` (
  `MovieID` char(11) NOT NULL,
  `MovieName` varchar(50) NOT NULL,
  `Director` varchar(50) NOT NULL,
  `Year` year(4) NOT NULL,
  `Premiere` date NOT NULL,
  `URLTrailer` text NOT NULL,
  `Time` float NOT NULL,
  `StudioID` char(11) NOT NULL,
  `LanguageID` char(11) NOT NULL,
  `story` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `movie`
--

INSERT INTO `movie` (`MovieID`, `MovieName`, `Director`, `Year`, `Premiere`, `URLTrailer`, `Time`, `StudioID`, `LanguageID`, `story`) VALUES
('M001', 'Name movie 1', 'Director 1', 2022, '2022-10-10', 'URLTrailer1', 20221000, 'ST001', 'L001', '24234'),
('M002', 'Name movie 2', 'Director 2', 2022, '2022-10-10', 'URLTrailer2', 0, 'ST002', 'L002', '24234');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `moviegenre`
--

CREATE TABLE `moviegenre` (
  `GenreID` char(11) NOT NULL,
  `GenreName` varchar(50) NOT NULL,
  `Description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `moviegenre`
--

INSERT INTO `moviegenre` (`GenreID`, `GenreName`, `Description`) VALUES
('G001', 'Name genre 1', 'Description 1'),
('G002', 'Name genre 2', 'Description 2'),
('GE3', 'Linh', 'Linh sđẹp trai');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movieimage`
--

CREATE TABLE `movieimage` (
  `ImageID` char(11) NOT NULL,
  `ImagePath` text NOT NULL,
  `Description` varchar(50) NOT NULL,
  `MovieID` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `movieimage`
--

INSERT INTO `movieimage` (`ImageID`, `ImagePath`, `Description`, `MovieID`) VALUES
('IM001', 'ImagePath 1', 'Description movie 1', 'M001'),
('IM002', 'ImagePath 2', 'Description movie 2', 'M002');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `promotion`
--

CREATE TABLE `promotion` (
  `PromotionID` char(11) NOT NULL,
  `PromotionName` varchar(50) NOT NULL,
  `Description` varchar(50) NOT NULL,
  `StartTime` datetime NOT NULL,
  `EndTime` datetime NOT NULL,
  `Discount` float NOT NULL,
  `Code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `promotion`
--

INSERT INTO `promotion` (`PromotionID`, `PromotionName`, `Description`, `StartTime`, `EndTime`, `Discount`, `Code`) VALUES
('P001', 'PromotionName 1', 'Description promotion 1', '2022-10-10 10:10:10', '2022-10-10 11:11:11', 40, 1),
('P002', 'PromotionName 2', 'Description promotion 2', '2022-10-10 10:10:10', '2022-10-10 11:11:11', 40, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating`
--

CREATE TABLE `rating` (
  `RatingID` char(11) NOT NULL,
  `Score` float NOT NULL,
  `Comment` varchar(50) NOT NULL,
  `Day` datetime NOT NULL,
  `MovieID` char(11) NOT NULL,
  `CustomerID` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `rating`
--

INSERT INTO `rating` (`RatingID`, `Score`, `Comment`, `Day`, `MovieID`, `CustomerID`) VALUES
('RT001', 9, 'Comment rating 1', '2022-10-10 10:10:10', 'M001', 'C001'),
('RT002', 9, 'Comment rating 2', '2022-10-10 10:10:10', 'M002', 'C002');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` char(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
('1', 'User'),
('2', 'Admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `room`
--

CREATE TABLE `room` (
  `RoomID` char(11) NOT NULL,
  `RoomName` varchar(50) NOT NULL,
  `NumberOfSeats` int(11) NOT NULL,
  `TheaterID` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `room`
--

INSERT INTO `room` (`RoomID`, `RoomName`, `NumberOfSeats`, `TheaterID`) VALUES
('RO001', 'RoomName 4232341', 0, 'TH001'),
('RO002', 'RoomName 2', 2, 'TH002');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seat`
--

CREATE TABLE `seat` (
  `SeatID` char(11) NOT NULL,
  `SeatName` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `RoomID` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `seat`
--

INSERT INTO `seat` (`SeatID`, `SeatName`, `type`, `RoomID`) VALUES
('ST001', 'SeatName 1', '1', 'RO001'),
('ST002', 'SeatName 2', '2', 'RO002');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `showtime`
--

CREATE TABLE `showtime` (
  `ShowtimeID` char(11) NOT NULL,
  `StartTime` datetime NOT NULL,
  `EndTime` datetime NOT NULL,
  `Price` float NOT NULL,
  `MovieID` char(11) NOT NULL,
  `RoomID` char(11) NOT NULL,
  `FormatID` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `showtime`
--

INSERT INTO `showtime` (`ShowtimeID`, `StartTime`, `EndTime`, `Price`, `MovieID`, `RoomID`, `FormatID`) VALUES
('SH001', '2022-10-10 10:10:10', '2022-10-10 11:11:11', 40000, 'M001', 'RO001', 'F001'),
('SH002', '2022-10-10 10:10:10', '2022-10-10 11:11:11', 40000, 'M002', 'RO002', 'F002');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `status_of_ticket`
--

CREATE TABLE `status_of_ticket` (
  `id` char(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `status_of_ticket`
--

INSERT INTO `status_of_ticket` (`id`, `name`) VALUES
('S1', 'Đang thanh toán'),
('S2', 'Đã bán'),
('S3', 'Ghế trống');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `studio`
--

CREATE TABLE `studio` (
  `StudioID` char(11) NOT NULL,
  `StudioName` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Phone` char(10) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `studio`
--

INSERT INTO `studio` (`StudioID`, `StudioName`, `Address`, `Phone`, `Email`) VALUES
('ST001', 'StudioName 1', 'Address studio 1', 'P001', 'studio1@gmail.com'),
('ST002', 'StudioName 2', 'Address studio 2', 'P002', 'studio2@gmail.com'),
('ST1', '[value-1]', '[value-2]', '[value-3]', '[value-4]'),
('ST2', '[value-1]', '[24-2]', '234234]', '[vfafsa]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theater`
--

CREATE TABLE `theater` (
  `TheaterID` char(11) NOT NULL,
  `TheaterName` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Phone` char(10) NOT NULL,
  `NumberOfRooms` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `theater`
--

INSERT INTO `theater` (`TheaterID`, `TheaterName`, `Address`, `Phone`, `NumberOfRooms`) VALUES
('TH001', 'TheaterName 1', 'Address thearter 1', 'P001', 1),
('TH002', 'TheaterName 2', 'Address thearter 2', 'P002', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ticket`
--

CREATE TABLE `ticket` (
  `TicketID` char(11) NOT NULL,
  `ShowtimeID` char(11) NOT NULL,
  `SeatID` char(11) NOT NULL,
  `status` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ticket`
--

INSERT INTO `ticket` (`TicketID`, `ShowtimeID`, `SeatID`, `status`) VALUES
('T001', 'SH001', 'ST001', 'S1'),
('T002', 'SH002', 'ST002', 'S3');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `role_id` (`role_id`);

--
-- Chỉ mục cho bảng `actorof_movie`
--
ALTER TABLE `actorof_movie`
  ADD PRIMARY KEY (`ActorID`),
  ADD KEY `MovieID` (`MovieID`);

--
-- Chỉ mục cho bảng `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`BookingID`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `account_id` (`account_id`);

--
-- Chỉ mục cho bảng `detailmoviegenre`
--
ALTER TABLE `detailmoviegenre`
  ADD PRIMARY KEY (`MovieID`,`GenreID`),
  ADD KEY `GenreID` (`GenreID`);

--
-- Chỉ mục cho bảng `detailticket`
--
ALTER TABLE `detailticket`
  ADD PRIMARY KEY (`TicketID`,`BookingID`),
  ADD KEY `BookingID` (`BookingID`);

--
-- Chỉ mục cho bảng `errorreport`
--
ALTER TABLE `errorreport`
  ADD PRIMARY KEY (`ReportID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Chỉ mục cho bảng `format`
--
ALTER TABLE `format`
  ADD PRIMARY KEY (`FormatID`);

--
-- Chỉ mục cho bảng `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`LanguageID`);

--
-- Chỉ mục cho bảng `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`ManagerID`),
  ADD UNIQUE KEY `account_id` (`account_id`),
  ADD UNIQUE KEY `Email_2` (`Email`),
  ADD KEY `Email` (`Email`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`ItemID`);

--
-- Chỉ mục cho bảng `menudetail`
--
ALTER TABLE `menudetail`
  ADD PRIMARY KEY (`ItemID`,`BookingID`),
  ADD KEY `BookingID` (`BookingID`);

--
-- Chỉ mục cho bảng `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`MovieID`),
  ADD KEY `StudioID` (`StudioID`),
  ADD KEY `LanguageID` (`LanguageID`);

--
-- Chỉ mục cho bảng `moviegenre`
--
ALTER TABLE `moviegenre`
  ADD PRIMARY KEY (`GenreID`);

--
-- Chỉ mục cho bảng `movieimage`
--
ALTER TABLE `movieimage`
  ADD PRIMARY KEY (`ImageID`),
  ADD KEY `MovieID` (`MovieID`);

--
-- Chỉ mục cho bảng `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`PromotionID`);

--
-- Chỉ mục cho bảng `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`RatingID`),
  ADD KEY `MovieID` (`MovieID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`RoomID`),
  ADD KEY `TheaterID` (`TheaterID`);

--
-- Chỉ mục cho bảng `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`SeatID`),
  ADD KEY `RoomID` (`RoomID`);

--
-- Chỉ mục cho bảng `showtime`
--
ALTER TABLE `showtime`
  ADD PRIMARY KEY (`ShowtimeID`),
  ADD KEY `MovieID` (`MovieID`),
  ADD KEY `RoomID` (`RoomID`),
  ADD KEY `FormatID` (`FormatID`);

--
-- Chỉ mục cho bảng `status_of_ticket`
--
ALTER TABLE `status_of_ticket`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `studio`
--
ALTER TABLE `studio`
  ADD PRIMARY KEY (`StudioID`);

--
-- Chỉ mục cho bảng `theater`
--
ALTER TABLE `theater`
  ADD PRIMARY KEY (`TheaterID`);

--
-- Chỉ mục cho bảng `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`TicketID`),
  ADD KEY `ShowtimeID` (`ShowtimeID`),
  ADD KEY `SeatID` (`SeatID`),
  ADD KEY `status` (`status`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

--
-- Các ràng buộc cho bảng `actorof_movie`
--
ALTER TABLE `actorof_movie`
  ADD CONSTRAINT `actorof_movie_ibfk_1` FOREIGN KEY (`MovieID`) REFERENCES `movie` (`MovieID`);

--
-- Các ràng buộc cho bảng `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`);

--
-- Các ràng buộc cho bảng `detailmoviegenre`
--
ALTER TABLE `detailmoviegenre`
  ADD CONSTRAINT `detailmoviegenre_ibfk_1` FOREIGN KEY (`MovieID`) REFERENCES `movie` (`MovieID`),
  ADD CONSTRAINT `detailmoviegenre_ibfk_2` FOREIGN KEY (`GenreID`) REFERENCES `moviegenre` (`GenreID`);

--
-- Các ràng buộc cho bảng `detailticket`
--
ALTER TABLE `detailticket`
  ADD CONSTRAINT `detailticket_ibfk_1` FOREIGN KEY (`TicketID`) REFERENCES `ticket` (`TicketID`),
  ADD CONSTRAINT `detailticket_ibfk_2` FOREIGN KEY (`BookingID`) REFERENCES `booking` (`BookingID`);

--
-- Các ràng buộc cho bảng `errorreport`
--
ALTER TABLE `errorreport`
  ADD CONSTRAINT `errorreport_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`);

--
-- Các ràng buộc cho bảng `manager`
--
ALTER TABLE `manager`
  ADD CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`);

--
-- Các ràng buộc cho bảng `menudetail`
--
ALTER TABLE `menudetail`
  ADD CONSTRAINT `menudetail_ibfk_1` FOREIGN KEY (`ItemID`) REFERENCES `menu` (`ItemID`),
  ADD CONSTRAINT `menudetail_ibfk_2` FOREIGN KEY (`BookingID`) REFERENCES `booking` (`BookingID`);

--
-- Các ràng buộc cho bảng `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`StudioID`) REFERENCES `studio` (`StudioID`),
  ADD CONSTRAINT `movie_ibfk_2` FOREIGN KEY (`LanguageID`) REFERENCES `language` (`LanguageID`);

--
-- Các ràng buộc cho bảng `movieimage`
--
ALTER TABLE `movieimage`
  ADD CONSTRAINT `movieimage_ibfk_1` FOREIGN KEY (`MovieID`) REFERENCES `movie` (`MovieID`);

--
-- Các ràng buộc cho bảng `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`MovieID`) REFERENCES `movie` (`MovieID`),
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`);

--
-- Các ràng buộc cho bảng `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`TheaterID`) REFERENCES `theater` (`TheaterID`);

--
-- Các ràng buộc cho bảng `seat`
--
ALTER TABLE `seat`
  ADD CONSTRAINT `seat_ibfk_1` FOREIGN KEY (`RoomID`) REFERENCES `room` (`RoomID`);

--
-- Các ràng buộc cho bảng `showtime`
--
ALTER TABLE `showtime`
  ADD CONSTRAINT `showtime_ibfk_1` FOREIGN KEY (`MovieID`) REFERENCES `movie` (`MovieID`),
  ADD CONSTRAINT `showtime_ibfk_2` FOREIGN KEY (`RoomID`) REFERENCES `room` (`RoomID`),
  ADD CONSTRAINT `showtime_ibfk_3` FOREIGN KEY (`FormatID`) REFERENCES `format` (`FormatID`);

--
-- Các ràng buộc cho bảng `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`ShowtimeID`) REFERENCES `showtime` (`ShowtimeID`),
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`SeatID`) REFERENCES `seat` (`SeatID`),
  ADD CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`status`) REFERENCES `status_of_ticket` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
