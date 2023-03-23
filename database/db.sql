-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 23, 2023 lúc 08:27 PM
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
-- Cơ sở dữ liệu: `temp`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `actorof_movie`
--

CREATE TABLE `actorof_movie` (
  `ActorID` char(11) NOT NULL,
  `MovieID` char(11) NOT NULL,
  `NameActor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `booking`
--

CREATE TABLE `booking` (
  `BookingID` char(11) NOT NULL,
  `NumberOfTickets` int(11) NOT NULL,
  `TotalPrice` int(11) NOT NULL,
  `BookingTime` date NOT NULL,
  `ShowtimeID` char(11) NOT NULL,
  `TransactionID` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `CommentID` char(11) NOT NULL,
  `Content` varchar(50) NOT NULL,
  `CommentTime` date NOT NULL,
  `CustomerID` char(11) NOT NULL,
  `MovieID` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `errorreport`
--

CREATE TABLE `errorreport` (
  `ReportID` char(11) NOT NULL,
  `ErrorMessage` varchar(50) NOT NULL,
  `ReportTime` date NOT NULL,
  `Status` varchar(50) NOT NULL,
  `CustomerID` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manager`
--

CREATE TABLE `manager` (
  `ManagerID` char(11) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` char(10) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movie`
--

CREATE TABLE `movie` (
  `MovieID` char(11) NOT NULL,
  `MovieName` varchar(50) NOT NULL,
  `Director` varchar(50) NOT NULL,
  `Year` int(11) NOT NULL,
  `Premiere` date NOT NULL,
  `URLTrailer` varchar(50) NOT NULL,
  `ActorID` char(11) NOT NULL,
  `GenreID` char(11) NOT NULL,
  `StudioID` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `moviegenre`
--

CREATE TABLE `moviegenre` (
  `GenreID` char(11) NOT NULL,
  `GenreName` varchar(50) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movieimage`
--

CREATE TABLE `movieimage` (
  `ImageID` char(11) NOT NULL,
  `ImagePath` varchar(50) NOT NULL,
  `Description` text NOT NULL,
  `MovieID` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `promotion`
--

CREATE TABLE `promotion` (
  `PromotionID` char(11) NOT NULL,
  `PromotionName` varchar(50) NOT NULL,
  `Description` text NOT NULL,
  `StartTime` date NOT NULL,
  `EndTime` date NOT NULL,
  `Discount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating`
--

CREATE TABLE `rating` (
  `RatingID` char(11) NOT NULL,
  `Score` float NOT NULL,
  `Comment` varchar(50) NOT NULL,
  `New_Column` date NOT NULL,
  `MovieID` char(11) NOT NULL,
  `CustomerID` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seat`
--

CREATE TABLE `seat` (
  `SeatID` char(11) NOT NULL,
  `SeatName` varchar(50) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `RoomID` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `showtime`
--

CREATE TABLE `showtime` (
  `ShowtimeID` char(11) NOT NULL,
  `StartTime` date NOT NULL,
  `EndTime` date NOT NULL,
  `Price` float NOT NULL,
  `MovieID` char(11) NOT NULL,
  `RoomID` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thearter`
--

CREATE TABLE `thearter` (
  `TheaterID` char(11) NOT NULL,
  `TheaterName` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Phone` char(10) NOT NULL,
  `NumberOfRooms` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ticket`
--

CREATE TABLE `ticket` (
  `TicketID` char(11) NOT NULL,
  `BookingID` char(11) NOT NULL,
  `ShowtimeID` char(11) NOT NULL,
  `SeatID` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transaction`
--

CREATE TABLE `transaction` (
  `TransactionID` char(11) NOT NULL,
  `TotalSpent` float NOT NULL,
  `TransactionTime` date NOT NULL,
  `CustomerID` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `actorof_movie`
--
ALTER TABLE `actorof_movie`
  ADD PRIMARY KEY (`ActorID`);

--
-- Chỉ mục cho bảng `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`BookingID`),
  ADD KEY `ShowtimeID` (`ShowtimeID`),
  ADD KEY `TransactionID` (`TransactionID`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`CommentID`),
  ADD KEY `CustomerID` (`CustomerID`),
  ADD KEY `MovieID` (`MovieID`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Chỉ mục cho bảng `errorreport`
--
ALTER TABLE `errorreport`
  ADD PRIMARY KEY (`ReportID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Chỉ mục cho bảng `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`ManagerID`);

--
-- Chỉ mục cho bảng `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`MovieID`),
  ADD KEY `ActorID` (`ActorID`),
  ADD KEY `GenreID` (`GenreID`),
  ADD KEY `StudioID` (`StudioID`);

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
  ADD KEY `RoomID` (`RoomID`);

--
-- Chỉ mục cho bảng `studio`
--
ALTER TABLE `studio`
  ADD PRIMARY KEY (`StudioID`);

--
-- Chỉ mục cho bảng `thearter`
--
ALTER TABLE `thearter`
  ADD PRIMARY KEY (`TheaterID`);

--
-- Chỉ mục cho bảng `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`TicketID`),
  ADD KEY `BookingID` (`BookingID`),
  ADD KEY `ShowtimeID` (`ShowtimeID`),
  ADD KEY `SeatID` (`SeatID`);

--
-- Chỉ mục cho bảng `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`TransactionID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`ShowtimeID`) REFERENCES `showtime` (`ShowtimeID`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`TransactionID`) REFERENCES `transaction` (`TransactionID`);

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`MovieID`) REFERENCES `movie` (`MovieID`);

--
-- Các ràng buộc cho bảng `errorreport`
--
ALTER TABLE `errorreport`
  ADD CONSTRAINT `errorreport_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`);

--
-- Các ràng buộc cho bảng `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`ActorID`) REFERENCES `actorof_movie` (`ActorID`),
  ADD CONSTRAINT `movie_ibfk_2` FOREIGN KEY (`GenreID`) REFERENCES `moviegenre` (`GenreID`),
  ADD CONSTRAINT `movie_ibfk_3` FOREIGN KEY (`StudioID`) REFERENCES `studio` (`StudioID`);

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
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`TheaterID`) REFERENCES `thearter` (`TheaterID`);

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
  ADD CONSTRAINT `showtime_ibfk_2` FOREIGN KEY (`RoomID`) REFERENCES `room` (`RoomID`);

--
-- Các ràng buộc cho bảng `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`BookingID`) REFERENCES `booking` (`BookingID`),
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`ShowtimeID`) REFERENCES `showtime` (`ShowtimeID`),
  ADD CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`SeatID`) REFERENCES `seat` (`SeatID`);

--
-- Các ràng buộc cho bảng `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
