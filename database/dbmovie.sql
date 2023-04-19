-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 19, 2023 lúc 05:12 PM
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
-- Cơ sở dữ liệu: `dbmovie`
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
('AC1', 'riostimothy@example.net', 'IQtw695iV%', '1'),
('AC10', 'ymejia@example.org', '@FaULd#l*6', '1'),
('AC11', 'michael61@example.net', 'w),F7c4DgIp', '1'),
('AC12', 'bautistabilly@example.net', 'ra#y0pUrgR', '1'),
('AC13', 'deborahbrooks@example.com', 'o7TMqggG!X', '1'),
('AC14', 'kellertammy@example.net', '&8ZZnmU+),I', '1'),
('AC15', 'ryancameron@example.org', 'CNSp7PxAi+', '1'),
('AC16', 'tanner77@example.org', '83Hsnapy#g', '1'),
('AC17', 'bjordan@example.org', 'FU0*QF!dz_', '1'),
('AC18', 'ymartinez@example.net', '#NAME?', '1'),
('AC19', 'hollowaychristopher@example.org', '(Y0Ttq+fu+', '1'),
('AC2', 'kmitchell@example.org', 'U%4e2GCd3R', '1'),
('AC20', 'james96@example.com', 'yT*5LPtn@n', '1'),
('AC21', 'hillomar@example.net', 'VXi%73IfF+', '1'),
('AC22', 'gabrielalee@example.org', '),QpX*zBsv6', '1'),
('AC23', 'jennifer92@example.org', '$5L*r7AcZs', '1'),
('AC24', 'robert69@example.com', 'NT6x5Xkx(E', '1'),
('AC25', 'bobby89@example.net', '*N9#RCvm^o', '1'),
('AC26', 'nmoran@example.net', 'lx89XsHkZ%', '1'),
('AC27', 'judyporter@example.com', '%hb$2Dt$&t', '2'),
('AC28', 'keithburns@example.net', '&8U2Jl727r', '2'),
('AC29', 'lisakramer@example.net', '6n4T3&xF^@', '2'),
('AC3', 'zacharymills@example.com', '5+ndG38y&O', '1'),
('AC30', 'bbarnett@example.org', 'O*R9aFdsF#', '2'),
('AC31', 'justin86@example.org', '2),c8W6auEF', '2'),
('AC32', 'mariah22@example.com', '!3BD6eEzX^', '2'),
('AC33', 'danielroberts@example.net', 'F6Dc@G5w@r', '2'),
('AC34', 'jonesricardo@example.org', 'rU+3&Mj2O),', '2'),
('AC35', 'abbottpaul@example.com', '9p5jVxGF8%', '2'),
('AC36', 'manderson@example.org', '8*D2D),mrDe', '2'),
('AC37', 'cobrien@example.com', '8),s0EbmbV2', '2'),
('AC38', 'amanda93@example.com', '@t%2OAnpr#', '2'),
('AC39', 'jasmine66@example.org', 'Mjgd2sDm$_', '2'),
('AC4', 'maryjenkins@example.com', '_6uMATxBj4', '1'),
('AC40', 'patricialopez@example.com', '!&32RfSeiE', '2'),
('AC41', 'kathrynnorton@example.com', '63DO$g%3!%', '2'),
('AC42', 'deborah48@example.org', '$2Cu2TB&Zn', '2'),
('AC43', 'christopheranderson@example.net', '^w2kJ9Sn+O', '2'),
('AC44', 'donnabautista@example.net', 'U9HKOu+L(O', '2'),
('AC45', 'jennifer82@example.com', '^H7xXc%NpR', '2'),
('AC46', 'claytonwhite@example.com', '8dO7OI0o^j', '2'),
('AC47', 'geraldjones@example.net', '_^z#wNNae2', '2'),
('AC48', 'chansamuel@example.org', '9vv5dKKs(D', '2'),
('AC49', 'littlemary@example.net', '),lc9MXlUs0', '2'),
('AC5', 'zhoward@example.net', 'Q!E64#fpfE', '1'),
('AC50', 'priley@example.org', '%wzaj2Ew3@', '2'),
('AC6', 'colson@example.com', '$90uTqmp+V', '1'),
('AC7', 'bakerelizabeth@example.com', 'fw6+Ipb61@', '1'),
('AC8', 'ashley79@example.net', '#I*z3!Wmu*', '1'),
('AC9', 'shieldstanner@example.org', '^5(QfVlBF6', '1');

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
('A10', 'Quang Tuấn', 'M5'),
('A100', 'Trung DŨng', 'M28'),
('A101', 'Tiến Luật', 'M29'),
('A102', 'Thu Trang', 'M29'),
('A103', 'Thái Hòa', 'M29'),
('A104', 'Aleksandr Gavrilin', 'M30'),
('A105', 'Polina Gagarina', 'M30'),
('A106', 'Anton Eldarov', 'M30'),
('A107', 'Bradley Cooper', 'M31'),
('A108', 'Vin Diesel', 'M31'),
('A109', 'Karen Gillan', 'M31'),
('A11', 'Hoàng Oanh', 'M5'),
('A110', 'Zoe Saldana', 'M31'),
('A111', 'Dave Bautista', 'M31'),
('A112', 'Antony Starr', 'M32'),
('A113', 'Alexander Ludwig', 'M32'),
('A114', 'Jake Gyllenhaal', 'M32'),
('A115', 'Yoem Hye Ran', 'M33'),
('A116', 'Lee Yi Kyung', 'M33'),
('A117', 'Park Sung Woong', 'M33'),
('A118', 'Penelope Sangiorgi', 'M24'),
('A119', 'Lucia Caporaso', 'M24'),
('A12', 'Lê Khánh', 'M5'),
('A13', 'Ngọc Phước', 'M5'),
('A14', 'Franco Neno', 'M1'),
('A15', 'Russell Crowe', 'M1'),
('A16', 'Joen So Nee', 'M6'),
('A17', 'Kim Da Mi', 'M6'),
('A18', 'Zachary Levi', 'M7'),
('A19', 'Helen Mirren', 'M7'),
('A20', 'Rachel Zegler', 'M7'),
('A21', 'Lucy Liu', 'M7'),
('A22', 'Ben Affleck', 'M8'),
('A23', 'Matt Damon', 'M8'),
('A24', 'Jason Baterman', 'M8'),
('A25', 'Nicolas Cage', 'M9'),
('A26', 'Nicholas Hoult', 'M9'),
('A27', 'Awkwafina', 'M9'),
('A28', 'Thitiya Jirapornsilp', 'M10'),
('A29', 'Anthony Buisseret', 'M10'),
('A3', 'Hokuto Matsumura', 'M3'),
('A30', 'Sam Neill', 'M11'),
('A31', 'Henry Golding', 'M11'),
('A32', 'Noomi Rapace', 'M11'),
('A33', 'Mạc Văn Khoa', 'M12'),
('A34', 'Anh Tú', 'M12'),
('A35', 'Yagi Yusei', 'M13'),
('A36', 'Hagiwara Riku', 'M13'),
('A37', 'Tom Millen', 'M14'),
('A38', 'Rebecca Philipson', 'M14'),
('A39', 'Michaela Longden', 'M14'),
('A4', 'NanoKa Hara', 'M3'),
('A40', 'Yoshiaki Hasegawa', 'M15'),
('A41', 'Masaya Fukunishi', 'M15'),
('A42', 'Hoki Katsuhisa', 'M15'),
('A43', 'Russell Crowe', 'M1'),
('A44', 'Lâm Bách Hồng', 'M2'),
('A45', 'Hứa Quang Hán', 'M2'),
('A46', 'Chris Pratt', 'M16'),
('A47', 'Jack Black', 'M16'),
('A48', 'Keegan-Michael Key', 'M16'),
('A49', 'Mỹ Tâm', 'M17'),
('A5', 'Evie Feroz', 'M4'),
('A50', 'Chris Pine', 'M18'),
('A51', 'Mayte Michelle Rodrisguez', 'M18'),
('A52', 'Antonio Banderas', 'M20'),
('A53', 'Harrison Ford', 'M20'),
('A54', 'Mads Mikkelsen', 'M20'),
('A55', 'Simu Liu', 'M21'),
('A56', 'Emma Mackey', 'M21'),
('A57', 'Ryan Gosling', 'M21'),
('A58', 'Margot Robbie', 'M21'),
('A59', 'Xolo Mariduena', 'M22'),
('A6', 'Ikamal Amry', 'M4'),
('A60', 'Bruna Marquezine', 'M22'),
('A61', 'George Lopez', 'M22'),
('A62', 'Anna Kendrick', 'M23'),
('A63', 'Zooey Deschanel', 'M23'),
('A64', 'Daveed Diggs', 'M23'),
('A65', 'Ron Perlman', 'M24'),
('A66', 'Dominique Fishback', 'M24'),
('A67', 'Dương Tử Quỳnh', 'M24'),
('A68', 'Ben Affleck', 'M25'),
('A69', 'Ezra', 'M25'),
('A7', 'Amelia Henderson', 'M4'),
('A70', 'Miller', 'M25'),
('A71', 'Mamoudou Athie', 'M26'),
('A72', 'Leah Lewis', 'M26'),
('A73', 'Wendi McLendon-Covey', 'M26'),
('A74', 'Ebon Moss-Bachrach', 'M27'),
('A75', 'Natalie Morales', 'M27'),
('A76', 'Jennifer Lawrence', 'M27'),
('A77', 'Hellen Mirren', 'M25'),
('A78', 'Scott Eastwood', 'M25'),
('A79', 'Vin Diesel', 'M25'),
('A8', 'Alif Satar', 'M4'),
('A80', 'Jason Momoa', 'M25'),
('A81', 'Charlize Theron', 'M25'),
('A82', 'Brie Larson', 'M25'),
('A83', 'Jason Statham', 'M25'),
('A84', 'Jonah Hauer-King', 'M26'),
('A85', 'William Moseley', 'M26'),
('A86', 'Poppy Drayton', 'M26'),
('A87', 'Melissa McCarthy', 'M26'),
('A88', 'Hallen Bailey', 'M26'),
('A89', 'Sophie Thompson', 'M1'),
('A9', 'Hứa Văn Vĩ', 'M5'),
('A90', 'Taliyah Blair', 'M1'),
('A91', 'Riann Steele', 'M1'),
('A92', 'Justin K. Thompson', 'M7'),
('A93', 'Kemp Powers', 'M7'),
('A94', 'Joaquim Dos Santos', 'M7'),
('A95', 'Hoàng Mèo', 'M28'),
('A96', 'Trần Kim Hải', 'M28'),
('A97', 'Thanh Thức', 'M28'),
('A98', 'Huy Khánh', 'M28'),
('A99', 'Quốc Cường', 'M28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `booking`
--

CREATE TABLE `booking` (
  `BookingID` char(11) NOT NULL,
  `NumberOfTickets` int(11) NOT NULL,
  `TotalPrice` float NOT NULL,
  `BookingTime` datetime NOT NULL,
  `Voucher` char(50) DEFAULT NULL,
  `customer_id` char(11) NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `booking`
--

INSERT INTO `booking` (`BookingID`, `NumberOfTickets`, `TotalPrice`, `BookingTime`, `Voucher`, `customer_id`, `status`) VALUES
('B001', 1, 10000, '2022-10-10 10:10:10', 'V001', 'C11', 0),
('B002', 5, 12312, '2022-10-11 11:11:11', '', 'C22', 0),
('B1', 1, 345, '2022-10-10 10:10:10', '', 'C18', 1),
('B10', 2, 5435, '2023-04-14 01:04:00', '', 'C18', 1),
('B11', 1, 0, '2023-04-13 07:27:51', '', 'C20', 0),
('B12', 1, 0, '2023-04-13 21:42:48', '', 'C21', 1),
('B13', 2, 0, '2023-03-24 13:21:34', '', 'C11', 1),
('B14', 3, 0, '2023-03-31 22:20:49', '', 'C25', 1),
('B15', 4, 0, '2023-03-21 21:04:44', '', 'C23', 0),
('B16', 1, 0, '2023-03-26 16:06:02', '', 'C18', 1),
('B17', 2, 0, '2023-03-25 05:42:47', '', 'C12', 1),
('B18', 5, 0, '2023-03-18 04:03:09', '', 'C9', 1),
('B19', 1, 0, '2023-03-29 03:26:35', '', 'C24', 0),
('B2', 2, 0, '2023-04-09 00:46:19', '', 'C23', 1),
('B20', 5, 0, '2023-03-20 07:06:45', '', 'C15', 0),
('B21', 2, 0, '2023-03-20 01:22:35', '', 'C18', 1),
('B22', 3, 0, '2023-04-07 11:30:26', '', 'C11', 1),
('B23', 4, 0, '2023-03-31 07:29:55', '', 'C17', 0),
('B24', 1, 0, '2023-04-04 01:13:53', '', 'C13', 0),
('B25', 2, 0, '2023-04-13 11:23:42', '', 'C10', 1),
('B26', 1, 0, '2023-03-22 00:23:38', '', 'C13', 1),
('B27', 2, 0, '2023-04-13 17:52:43', '', 'C11', 0),
('B28', 2, 0, '2023-03-25 05:23:18', '', 'C11', 1),
('B29', 3, 0, '2023-03-29 08:14:51', '', 'C11', 1),
('B3', 3, 0, '2023-04-08 14:05:08', '', 'C11', 0),
('B30', 1, 0, '2023-04-01 21:33:32', '', 'C11', 1),
('B31', 1, 0, '2023-04-12 20:46:52', '', 'C11', 0),
('B32', 2, 0, '2023-04-06 04:25:50', '', 'C11', 1),
('B33', 3, 0, '2023-03-23 13:59:18', '', 'C11', 0),
('B34', 3, 0, '2023-04-13 18:38:33', '', 'C11', 0),
('B35', 1, 0, '2023-03-27 07:30:48', '', 'C11', 1),
('B36', 2, 0, '2023-03-22 15:09:58', '', 'C11', 1),
('B38', 1, 0, '2023-04-02 10:08:24', '', 'C11', 0);

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
('C1', 'Lindsay', 'Nha Trang', 'mriostimothy@example.net', '11001001', 'AC1'),
('C10', 'Donna', 'Can Tho', 'ymejia@example.org', '11001010', 'AC10'),
('C11', 'James', 'Nha Trang', 'michael61@example.net', '11001011', 'AC11'),
('C12', 'Jerry', 'Da Nang', 'bautistabilly@example.net', '11001012', 'AC12'),
('C13', 'Kelly', 'Ha Noi', 'deborahbrooks@example.com', '11001013', 'AC13'),
('C14', 'Jasmine', 'Ha Noi', 'kellertammy@example.net', '11001014', 'AC14'),
('C15', 'James', 'Nha Trang', 'ryancameron@example.org', '11001015', 'AC15'),
('C16', 'Adam', 'Ha Noi', 'tanner77@example.org', '11001016', 'AC16'),
('C17', 'Jason', 'Nha Trang', 'bjordan@example.org', '11001017', 'AC17'),
('C18', 'James', 'TPHCM', 'ymartinez@example.net', '11001018', 'AC18'),
('C19', 'Lauren', 'Da Nang', 'hollowaychristopher@example.org', '11001019', 'AC19'),
('C2', 'James', 'Can Tho', 'mkmitchell@example.org', '11001002', 'AC2'),
('C20', 'David', 'Ha Noi', 'james96@example.com', '11001020', 'AC20'),
('C21', 'Kevin', 'Da Nang', 'hillomar@example.net', '11001021', 'AC21'),
('C22', 'Michael', 'Da Nang', 'gabrielalee@example.org', '11001022', 'AC22'),
('C23', 'Matthew', 'Da Nang', 'jennifer92@example.org', '11001023', 'AC23'),
('C24', 'Jennifer', 'Ha Noi', 'robert69@example.com', '11001024', 'AC24'),
('C25', 'Sean', 'Can Tho', 'bobby89@example.net', '11001025', 'AC25'),
('C3', 'Jamie', 'Da Nang', 'mzacharymills@example.com', '11001003', 'AC3'),
('C8', 'Jason', 'Nha Trang', 'mashley79@example.net', '11001008', 'AC8'),
('C9', 'Katie', 'Can Tho', 'mshieldstanner@example.org', '11001009', 'AC9');

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
('M1', 'G10'),
('M10', 'G2'),
('M11', 'G1'),
('M12', 'G12'),
('M13', 'G12'),
('M14', 'G10'),
('M15', 'G3'),
('M16', 'G3'),
('M17', 'G2'),
('M18', 'G7'),
('M19', 'G3'),
('M2', 'G2'),
('M20', 'G6'),
('M21', 'G3'),
('M22', 'G3'),
('M23', 'G3'),
('M24', 'G11'),
('M25', 'G7'),
('M26', 'G7'),
('M27', 'G10'),
('M28', 'G12'),
('M29', 'G12'),
('M3', 'G3'),
('M30', 'G3'),
('M31', 'G7'),
('M32', 'G1'),
('M33', 'G4'),
('M34', 'G10'),
('M4', 'G11'),
('M5', 'G12'),
('M6', 'G2'),
('M7', 'G6'),
('M8', 'G7'),
('M9', 'G10');

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
('ER1', 'Name four PM possible plant firm. Under treat futu', '0000-00-00 00:00:00', '4/6/2023 3:11', 'C1'),
('ER10', 'Develop under husband trade paper medical. Upon co', '0000-00-00 00:00:00', '4/4/2023 1:55', 'C10'),
('ER11', 'Significant large experience from themselves econo', '0000-00-00 00:00:00', '4/2/2023 8:46', 'C11'),
('ER12', 'Three establish physical window else.', '0000-00-00 00:00:00', '3/18/2023 11:01', 'C12'),
('ER13', 'Management happen whom stage argue. Hit past lette', '0000-00-00 00:00:00', '4/12/2023 12:08', 'C13'),
('ER14', 'Late skin serve fine water his heart may. Social p', '0000-00-00 00:00:00', '4/13/2023 3:18', 'C14'),
('ER15', 'Last camera usually much mother.Write grow similar', '0000-00-00 00:00:00', '4/8/2023 20:49', 'C15'),
('ER16', 'Measure watch age white. Him property part face wi', '0000-00-00 00:00:00', '4/11/2023 9:03', 'C16'),
('ER17', 'Second every range general effort environment save', '0000-00-00 00:00:00', '3/29/2023 1:44', 'C17'),
('ER18', 'Last election number power whatever determine well', '0000-00-00 00:00:00', '3/20/2023 13:41', 'C18'),
('ER19', 'Particularly I too kitchen. Fish poor enjoy of. St', '0000-00-00 00:00:00', '3/31/2023 8:08', 'C19'),
('ER2', 'Practice never rise sort third beat figure. Boy re', '0000-00-00 00:00:00', '4/12/2023 17:47', 'C2'),
('ER20', 'Whom produce citizen sense head network. Others tr', '0000-00-00 00:00:00', '3/25/2023 19:09', 'C20'),
('ER21', 'Check or though clear. Value media a year will. Bo', '0000-00-00 00:00:00', '3/16/2023 7:41', 'C21'),
('ER22', 'Environment tonight show travel. Away early organi', '0000-00-00 00:00:00', '3/19/2023 8:21', 'C22'),
('ER23', 'Task science hot western owner history. Education ', '0000-00-00 00:00:00', '4/3/2023 19:53', 'C23'),
('ER24', 'Wrong most eye test main. Nor wonder center eviden', '0000-00-00 00:00:00', '3/25/2023 17:28', 'C24'),
('ER25', 'Meeting top professor daughter sing decide dark. T', '0000-00-00 00:00:00', '4/3/2023 12:19', 'C25'),
('ER26', 'Executive management notice you seek paper item. S', '0000-00-00 00:00:00', '3/27/2023 23:35', 'C1'),
('ER27', 'Black doctor message voice. Sea sometimes itself a', '0000-00-00 00:00:00', '3/28/2023 4:17', 'C2'),
('ER28', 'At blood three few focus. Add media alone informat', '0000-00-00 00:00:00', '3/29/2023 18:48', 'C3'),
('ER29', 'Stand report card believe my forget state. Site we', '0000-00-00 00:00:00', '3/29/2023 3:39', 'C4'),
('ER3', 'Attention bad woman theory. Country thus husband b', '0000-00-00 00:00:00', '4/11/2023 22:53', 'C3'),
('ER30', 'Into us answer view. Effort Democrat instead howev', '0000-00-00 00:00:00', '3/25/2023 11:50', 'C5'),
('ER31', 'Rock sound third reason remain much. Eye education', '0000-00-00 00:00:00', '3/19/2023 12:25', 'C6'),
('ER32', 'Table change easy at when. Effect present attorney', '0000-00-00 00:00:00', '4/10/2023 19:56', 'C7'),
('ER33', 'Fight visit the public wish material. Someone gree', '0000-00-00 00:00:00', '4/7/2023 7:17', 'C8'),
('ER34', 'Everybody game challenge central. Politics already', '0000-00-00 00:00:00', '4/9/2023 21:20', 'C9'),
('ER35', 'Other same report interest new. Go claim style col', '0000-00-00 00:00:00', '4/14/2023 9:32', 'C10'),
('ER36', 'Safe feel while financial. Far forward some modern', '0000-00-00 00:00:00', '4/6/2023 1:11', 'C11'),
('ER37', 'Assume provide we account. Floor heart soldier agr', '0000-00-00 00:00:00', '3/19/2023 16:35', 'C12'),
('ER38', 'World board use must thank. Power TV never nothing', '0000-00-00 00:00:00', '3/17/2023 22:59', 'C13'),
('ER39', 'Serious there argue toward reveal page likely. Bas', '0000-00-00 00:00:00', '3/19/2023 1:21', 'C14'),
('ER4', 'Environment federal argue action mean. Control mon', '0000-00-00 00:00:00', '3/20/2023 20:37', 'C4'),
('ER40', 'Weight single north.Late for number hundred. Preve', '0000-00-00 00:00:00', '3/30/2023 20:13', 'C15'),
('ER41', 'Several blood thank director. Against yard bar eco', '0000-00-00 00:00:00', '4/6/2023 19:24', 'C16'),
('ER42', 'Son once spend his make father order society. With', '0000-00-00 00:00:00', '4/1/2023 23:48', 'C17'),
('ER43', 'Before window prevent teacher answer provide laugh', '0000-00-00 00:00:00', '3/29/2023 19:54', 'C18'),
('ER44', 'Century half under artist spring. Future fast miss', '0000-00-00 00:00:00', '3/26/2023 18:44', 'C19'),
('ER45', 'Full as water deep arrive character.Foreign south ', '0000-00-00 00:00:00', '4/5/2023 23:13', 'C20'),
('ER46', 'Important word probably identify. Law know often i', '0000-00-00 00:00:00', '4/9/2023 6:15', 'C21'),
('ER47', 'Nor boy week fine lot final. Feel by myself none r', '0000-00-00 00:00:00', '4/14/2023 0:56', 'C22'),
('ER48', 'Keep read want. Fine rock practice behavior. Dark ', '0000-00-00 00:00:00', '4/3/2023 2:53', 'C23'),
('ER49', 'By prevent media best individual notice. Space rea', '0000-00-00 00:00:00', '4/2/2023 13:49', 'C24'),
('ER5', 'Seven option decision look. Identify stand culture', '0000-00-00 00:00:00', '4/12/2023 0:48', 'C5'),
('ER50', 'Bed piece hit rock choice development sign. Proper', '0000-00-00 00:00:00', '3/27/2023 16:12', 'C25'),
('ER6', 'This all home yeah. Kitchen seven yourself toward ', '0000-00-00 00:00:00', '4/3/2023 11:55', 'C6'),
('ER7', 'Court play today follow control mouth marriage. Pe', '0000-00-00 00:00:00', '3/25/2023 11:36', 'C7'),
('ER8', 'Answer add show line list.Least fish body child. L', '0000-00-00 00:00:00', '4/9/2023 8:41', 'C8'),
('ER9', 'Necessary type produce safe everyone weight variou', '0000-00-00 00:00:00', '3/22/2023 15:01', 'C9');

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
('L002', 'Name language 2'),
('L10', 'Tiếng Ý'),
('L3', 'Tiếng Việt Nam'),
('L4', 'Tiếng Anh'),
('L5', 'Tiếng Trung Quốc'),
('L6', 'Tiếng Hàn Quốc'),
('L7', 'Tiếng Pháp'),
('L8', 'Tiếng Thái Lan'),
('L9', 'Tiếng Cambodia');

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
('MG1', 'nmoran@example.net', 'lx89XsHkZ%', '11001026', 'AC26'),
('MG10', 'abbottpaul@example.com', '9p5jVxGF8%', '11001035', 'AC35'),
('MG11', 'manderson@example.org', '8*D2D)mrDe', '11001036', 'AC36'),
('MG12', 'cobrien@example.com', '8)s0EbmbV1', '11001037', 'AC37'),
('MG13', 'amanda93@example.com', '@t%2OAnpr#', '11001038', 'AC38'),
('MG14', 'jasmine66@example.org', 'Mjgd1sDm$_', '11001039', 'AC39'),
('MG15', 'patricialopez@example.com', '!&32RfSeiE', '11001040', 'AC40'),
('MG16', 'kathrynnorton@example.com', '63DO$g%3!%', '11001041', 'AC41'),
('MG17', 'deborah48@example.org', '$2Cu1TB&Zn', '11001042', 'AC42'),
('MG18', 'christopheranderson@example.net', '^w2kJ9Sn+O', '11001043', 'AC43'),
('MG19', 'donnabautista@example.net', 'U9HKOu+L(O', '11001044', 'AC44'),
('MG2', 'judyporter@example.com', '%hb$2Dt$&t', '11001027', 'AC27'),
('MG20', 'jennifer81@example.com', '^H7xXc%NpR', '11001045', 'AC45'),
('MG21', 'claytonwhite@example.com', '8dO7OI0o^j', '11001046', 'AC46'),
('MG22', 'geraldjones@example.net', '_^z#wNNae2', '11001047', 'AC47'),
('MG23', 'chansamuel@example.org', '9vv5dKKs(D', '11001048', 'AC48'),
('MG24', 'littlemary@example.net', ')lc9MXlUs0', '11001049', 'AC49'),
('MG25', 'priley@example.org', '%wzaj2Ew3@', '11001050', 'AC50'),
('MG3', 'keithburns@example.net', '&8U2Jl727r', '11001028', 'AC28'),
('MG4', 'lisakramer@example.net', '6n4T3&xF^@', '11001029', 'AC29'),
('MG5', 'bbarnett@example.org', 'O*R9aFdsF#', '11001030', 'AC30'),
('MG6', 'justin86@example.org', '2)c8W6auEF', '11001031', 'AC31'),
('MG7', 'mariah11@example.com', '!3BD6eEzX^', '11001032', 'AC32'),
('MG8', 'danielroberts@example.net', 'F6Dc@G5w@r', '11001033', 'AC33'),
('MG9', 'jonesricardo@example.org', 'rU+3&Mj2O)', '11001034', 'AC34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `ItemID` char(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Price` float NOT NULL,
  `ImageURL` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`ItemID`, `Name`, `Price`, `ImageURL`, `status`) VALUES
('I001', 'Name item 1', 40000, 'ImageURL1', 1),
('I002', 'Name item 2', 40000, 'ImageURL2', 1),
('IT1', 'Bắp rang bơ', 110000, 'images/img/item1.jpg', 2),
('IT2', 'Coca', 20000, 'images/img/item2.jpg', 1),
('IT3', 'Pepsi', 20000, 'images/img/item3.jpg', 1),
('IT4', 'Nước cam', 20000, 'images/img/item4.jpg', 2),
('IT5', 'Snack', 25000, 'images/img/item5.jpg', 1),
('IT6', 'Combo1', 250000, 'images/img/item7.jpg', 2),
('IT7', 'Combo2', 350000, 'images/img/item8.jpg', 1),
('IT8', 'Combo3', 500000, 'images/img/item9.jpg', 2),
('IT9', 'Bắp rang phô mai', 110000, 'images/img/item6.jpg', 1);

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
(1, 0, 'IT1', 'B1'),
(1, 0, 'IT1', 'B15'),
(1, 0, 'IT1', 'B17'),
(1, 0, 'IT1', 'B33'),
(1, 0, 'IT1', 'B9'),
(2, 0, 'IT2', 'B10'),
(3, 0, 'IT2', 'B18'),
(2, 0, 'IT2', 'B2'),
(2, 0, 'IT2', 'B26'),
(2, 0, 'IT2', 'B34'),
(3, 0, 'IT3', 'B11'),
(2, 0, 'IT3', 'B19'),
(3, 0, 'IT3', 'B27'),
(2, 0, 'IT3', 'B3'),
(3, 0, 'IT3', 'B35'),
(1, 0, 'IT4', 'B10'),
(2, 0, 'IT4', 'B12'),
(2, 0, 'IT4', 'B28'),
(2, 0, 'IT4', 'B36'),
(2, 0, 'IT4', 'B4'),
(1, 0, 'IT5', 'B13'),
(2, 0, 'IT5', 'B21'),
(1, 0, 'IT5', 'B29'),
(1, 0, 'IT5', 'B37'),
(2, 0, 'IT5', 'B5'),
(2, 0, 'IT6', 'B14'),
(2, 0, 'IT6', 'B22'),
(3, 0, 'IT6', 'B30'),
(1, 0, 'IT6', 'B38'),
(3, 0, 'IT6', 'B6'),
(1, 0, 'IT7', 'B15'),
(1, 0, 'IT7', 'B23'),
(2, 0, 'IT7', 'B31'),
(2, 0, 'IT7', 'B39'),
(2, 0, 'IT7', 'B7'),
(2, 0, 'IT8', 'B16'),
(3, 0, 'IT8', 'B24'),
(2, 0, 'IT8', 'B32'),
(2, 0, 'IT8', 'B40'),
(1, 0, 'IT8', 'B8');

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
  `story` text NOT NULL,
  `age` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `movie`
--

INSERT INTO `movie` (`MovieID`, `MovieName`, `Director`, `Year`, `Premiere`, `URLTrailer`, `Time`, `StudioID`, `LanguageID`, `story`, `age`) VALUES
('M1', 'Khắc tinh của quỷ', 'Julius Avery', 2020, '0000-00-00', 'https://youtu.be/VHzgvX25HAY', 104, 'ST1', 'L3', 'Lấy cảm hứng từ những hồ sơ có thật của Cha Gabriele Amorth, Trưởng Trừ Tà của Vatican (Russell Crowe, đoạt giải Oscar), bộ phim The Popes Exorcist theo chân Amorth trong cuộc điều tra về vụ quỷ ám kinh hoàng của một cậu bé và dần khám phá ra những bí mật hàng thế kỷ mà Vatican đã cố gắng giấu kín.', 'C13'),
('M10', 'Tình chị duyên em', 'Wan Wanwaew Hongvivatana', 2022, '0000-00-00', 'https://youtu.be/KJyh89GttL0', 121, 'ST2', 'L3', 'Chuyện phim lấy bối cảnh năm 1999, khi thế giới đang chìm trong nỗi sợ hãi Y2K - sự cố khiến hệ thống máy tính sụp đổ và dự đoán có thể làm trái đất diệt vong khi bước sang năm 2000. Ngay lúc này, hai chị em sinh đôi giống hệt nhau là “You” và “Me” cũng đang lo lắng cho tương lai của họ về việc “làm sao sống mà có thể thiếu vắng nhau”. Cặp song sinh thân thiết với nhau đến mức có thể chia sẻ mọi khía cạnh cuộc sống cho nhau, kể cả nụ hôn đầu. Tình chị em tưởng chừng không thể rạn nứt cho đến khi chàng trai tên Mark chen vào giữa họ. Nếu ngay từ đầu, “lợi ích” của việc có ngoại hình giống hệt nhau được họ áp dụng để gian lận trong nhà hàng, rạp chiếu phim và trường học, thì sự xuất hiện của Mark khiến mọi thứ trở nên rối tung. Khi cặp song sinh phải đối mặt với “mối tình đầu không thể chia sẻ” như những thứ khác, cuộc xung đột nội tâm này sẽ dẫn họ bước sang giai đoạn mới của cuộc đời như thế nào?', 'C16'),
('M11', 'Assassin club', 'Camille Delamarre', 2021, '0000-00-00', 'https://youtu.be/neDUFSt8N0Q', 104, 'ST14', 'L4', 'Morgan Gaines - một sát thủ chuyên nghiệp có nhiệm vụ phải giết bảy người, sau đó Morgan phát hiện ra bảy \"mục tiêu\" cũng là bảy sát thủ nặng ký. Morgan bắt đầu một cuộc săn lùng Quốc tế để loại bỏ từng dấu vết. Trong khi đó, những kẻ ám sát nhắm vào Sophie - tình yêu của cuộc đời Morgan. Sophie trở thành con tốt trong trò chơi sống còn của bảy tên sát thủ. Cách duy nhất để cứu mạng cô ấy là buông bỏ tất cả. Vậy Morgan chọn tình yêu hay sự nghiệp?', 'C16'),
('M12', 'Siêu lừa gặp siêu lầy', 'Võ Thanh Hòa', 2020, '0000-00-00', 'https://youtu.be/NIVa1CCdFv4', 112, 'ST2', 'L3', 'Thuộc phong cách hành động – hài hước với các “cú lừa” thông minh và lầy lội đến từ bộ đôi Tú (Anh Tú) và Khoa (Mạc Văn Khoa), Siêu Lừa Gặp Siêu Lầy của đạo diễn Võ Thanh Hòa theo chân của Khoa – tên lừa đảo tầm cỡ “quốc nội” đến đảo ngọc Phú Quốc với mong muốn đổi đời. Tại đây, Khoa gặp Tú – tay lừa đảo “hàng real” và cùng Tú thực hiện các phi vụ từ nhỏ đến lớn. Cứ ngỡ sự ranh mãnh của Tú và sự may mắn trời cho của Khoa sẽ giúp họ trở thành bộ đôi bất khả chiến bại, nào ngờ lại đối mặt với nhiều tình huống dở khóc – dở cười. Nhất là khi băng nhóm của bộ đôi nhanh chóng mở rộng vì sự góp mặt của ông Năm (Nhất Trung) và bé Mã Lai (Ngọc Phước).', 'C16'),
('M13', 'MY BEAUTIFUL MAN', 'Sakai Mai', 2020, '0000-00-00', 'https://youtu.be/-_bjpJ7noQE', 132, 'ST2', 'L3', 'Chàng Trai Xinh Đẹp Của Tôi xoay quanh chuyện tình thanh xuân tươi đẹp giữa 2 cậu bạn cùng lớp Hira và Kiyoi. Với tính cách khép kín, Hira hay trở thành mục tiêu bắt nạt, sai bảo của bạn bè cùng lớp. Trong khi đó, Kiyoi là mỹ nam hàng đầu với vẻ đẹp “như vị thần”, song cũng là người thường xuyên sai vặt Hira. Nhận ra mình thích Kiyoi từ cái nhìn đầu tiên, Hira làm mọi thứ vì cậu và mối quan hệ của cả hai dần thắt chặt sau khi Hira thấy Kiyoi tập nhảy để thi làm idol. Hira hứa giữ bí mật này cho Kiyoi và dần dà, những bức ảnh trong máy của Hira đều toàn là Kiyoi - người mà cậu tôn thờ và là “chàng trai xinh đẹp nhất”. Trong khi đó, Kiyoi cũng có tình cảm với Hira nhưng ngoài mặt vẫn lạnh lùng, miệng lại “hỗn”. Liệu cả hai sẽ tìm cách gì để bày tỏ lòng mình cho đối phương, và cuộc sống tình cảm của 2 con người trái dấu này có gì thú vị?', 'C16'),
('M14', 'THE GHOST WITHIN', 'Lawrence Fowler', 2022, '0000-00-00', 'https://youtu.be/3MKRzG9k76Q', 102, 'ST17', 'L4', 'Đã 20 năm nhưng bí ẩn về cái ch.ế.t của người em gái vẫn chưa có lời giải đáp. Sự thật về bi kịch gia đình đã khiến thời khắc kinh hoàng lại xuất hiện đúng lúc đồng hồ điểm 09:09 mỗi đêm. Duy nhất một cơ hội để biết toàn bộ sự thật hoặc chỉ có thể để hận thù chôn vùi nó mãi mãi.', 'C16'),
('M15', 'THE FIRST SLAM DUNK', 'Yasuyuki Ebara, Takehiko Inoue', 2021, '0000-00-00', 'https://youtu.be/kDuiynKxjQU', 124, 'ST8', 'L3', 'The First Slam Dunk - phiên bản điện ảnh đầu tiên của loạt phim/truyện đình đám này sẽ do đích thân tác giả Inoue Takehiko chỉ đạo. Tuy nhiên lần này, câu chuyện sẽ được kể từ góc nhìn của chàng hậu vệ nhỏ con Miyagi Ryota, thay vì anh chàng tóc đỏ xốc nổi Hanamichi. Lấy bối cảnh trận đấu quan trọng giữa Shohoku và Sannoh - đội bóng top 10 toàn quốc, phim đan xen câu chuyện quá khứ của từng thành viên, đặc biệt là Ryota, cùng những diễn biến của trận đấu. Từ đó, tác giả Inoue Takehiko thành công khắc họa việc bóng rổ có ảnh hưởng to lớn như thế nào đến sự trưởng thành của mỗi thành viên Shohoku.', 'C16'),
('M16', 'PHIM ANH EM SUPER MARIO', 'Michael Jelenic, Aaron Horvath', 2020, '0000-00-00', 'https://youtu.be/QcinmCfoh8E', 93, 'ST4', 'L4', 'The Super Mario Bros. Movie xoay quanh cuộc phiêu lưu ở thế giới Vương quốc Nấm của anh em thợ sửa ống nước Mario và Luigi. Sau khi tình cờ bước tới vùng đất lạ từ một ống nước, Luigi đã bị chia tách với Mario và rơi vào tay quái vật rùa xấu xa Bowser, hắn đang âm mưu độc chiếm thế giới. Trong lúc cố gắng tìm kiếm người anh em của mình, Mario đã chạm mặt anh bạn nấm Toad và công chúa Peach. Từ đây họ sát cánh bên nhau trên hành trình ngăn chặn thế lực hắc ám.', 'C16'),
('M17', 'TRI ÂM - NGƯỜI GIỮ THỜI GIAN', 'Mỹ Tâm, Tạ Nguyên Hiệp', 2022, '0000-00-00', 'https://youtu.be/yiI_McOCaw4', 105, 'ST7', 'L3', 'Khán giả sẽ một lần nữa sống lại những cảm xúc thăng hoa cũng như cảm nhận và đồng hành cùng Mỹ Tâm trong hành trình tạo nên một liveshow âm nhạc lịch sử của Việt Nam trong 2 năm qua. Đây chắc chắn sẽ là những trải nghiệm khó quên trong hành trình tìm lại những ký ức tươi đẹp của thanh xuân với Mỹ Tâm - Người giữ thời gian - cô gái đã mang tất cả những ký ức thanh xuân của những người yêu mến mình trở lại bằng âm nhạc.', 'C16'),
('M18', 'DUNGEONS & DRAGONS: HONOR AMONG THIEVES', 'Jonathan Goldstein, John Francis Daley', 2022, '0000-00-00', 'https://youtu.be/75uZYaO_F0M', 124, 'ST19', 'L4', 'Theo chân một tên trộm quyến rũ và một nhóm những kẻ bịp bợm nghiệp dư thực hiện vụ trộm sử thi nhằm lấy lại một di vật đã mất, nhưng mọi thứ trở nên nguy hiểm khó lường hơn bao giờ hết khi họ đã chạm trán nhầm người. Ngục Tối Và Rồng: Danh Dự Của Kẻ Trộm mang thế giới huyền ảo của trò chơi nhập vai huyền thoại lên màn ảnh rộng bằng một cuộc phiêu lưu tràn ngập các màn hành động đã mắt cùng màu sắc hài hước, vui nhộn.', 'C16'),
('M19', 'MIGRATION', 'Benjamin Renner', 2022, '0000-00-00', 'https://youtu.be/SRdCWLCPOrc', 104, 'ST5', 'L4', 'Bộ phim đã hé lộ về chuyến phiêu lưu đầy thú vị và nhiều sắc màu của đàn vịt trời. Đến mùa di cư, những đàn vịt nối đuôi nhau bay lượn vô cùng nhộn nhịp trên bầu trời. Một gia đình vịt nọ được dẫn dắt bởi vịt bố, cũng đã sẵn sàng “cất cánh” cho chuyến bay đến vùng đất mới trong tâm thế đầy hào hứng và vui vẻ. Thành viên phi hành đoàn cũng có độ tuổi rất đa dạng, từ “trẻ nhỏ”, “thiếu niên” cho đến vịt “trung niên”. Đang tự do bay lượn trong làn mây trắng bồng bềnh, nhà vịt đột ngột gặp phải cơn mưa lớn. Tiu ngỉu ôm nhau trú mưa dưới miếng gỗ nho nhỏ, cả nhà bỗng đối mặt với một sinh vật toát ra cảm giác đáng sợ nguy hiểm khó lường.', 'C16'),
('M2', 'Marry my dead body', 'Cheng Wei Hao', 2022, '0000-00-00', 'https://youtu.be/zxk_YEa2Ky0', 130, 'ST2', 'L3', 'Ming-Han là một cảnh sát nhiệt huyết. Một ngày nọ, trong quá trình truy bắt tội phạm cùng người đồng nghiệp xinh đẹp Zi-Qing, Ming-Han vô tình nhặt được một phong bao màu đỏ, và một nhóm người bất ngờ nhảy ra gọi anh là \"con rể\". Họ yêu cầu anh ta kết hôn với đứa con đã chết của họ. Ming-Han không thể chấp nhận quyết định này. Tuy nhiên, anh ấy sau đó anh ta gặp phải vô số sự cố xui xẻo. Điều đáng sợ hơn nữa là anh ta bắt đầu nhìn thấy người chồng ma Mao-Mao của mình. Vì vậy, Ming-Han đã tìm đến thầy để tìm cách. Để thoát khỏi Mao-Mao, Ming-Han không còn cách nào khác ngoài việc giúp anh ta thực hiện mọi mong muốn của mình. Nếu không, Mao-Mao sẽ theo anh ta mãi mãi.Đồng thời, Mao-Mao cũng đóng vai trò là đối tác của Ming-Han để giúp anh ta điều tra vụ buôn lậu ma túy. Một cuộc hành trình giả tưởng đầy tiếng cười và nước mắt giữa một người đàn ông thẳng thắn và một con ma đồng tính đã bắt đầu.', 'C13'),
('M20', 'INDIANA JONES AND THE DIAL OF DESTINY', 'James Mangold', 2022, '0000-00-00', 'https://youtu.be/GAM3Pj__H-U', 104, 'ST2', 'L3', 'Trong chuyến phiêu lưu cuối cùng này, Indiana Jones cùng con gái nuôi Helena sẽ phải đối đầu với những tên phát xít hiểm ác. Indiana Jones 5 cũng sẽ là phần phim cuối cùng mà Harrison Ford hóa thân thành nhà khảo cổ học Indiana Jones - vai diễn làm nên tên tuổi và gắn liền với ông trong suốt hơn 40 năm.', 'C16'),
('M21', 'BARBIE', 'Greta Gerwig', 2022, '0000-00-00', 'https://youtu.be/sa8LpBKyPUc', 104, 'ST12', 'L4', 'Nàng Barbie là phim điện ảnh thuộc thể loại hài lãng mạn. Bộ phim do Greta Gerwig làm đạo diễn kiêm viết kịch bản với Noah Baumbach. Đây là tác phẩm điện ảnh đầu tiên về búp bê Barbie do người thật đóng, với sự kết hợp bởi nữ diên viên Margot Robbie và nam thần Ryan Gosling hóa thân thành 2 nhân vật chính Barbie và Ken.', 'C18'),
('M22', 'BLUE BEETLE', 'Angel Manuel Soto', 2020, '0000-00-00', 'https://youtu.be/kY-4x45tC0A', 104, 'ST22', 'L3', 'Xoay quanh thế hệ thứ 3 của siêu anh hùng này - anh chàng vừa tốt nghiệp Jamie Reyes. Anh trở về nhà với tràn trề niềm tin và hy vọng về tương lai, để rồi nhận ra quê nhà đã thay đổi rất nhiều so với trước đây. Khi tìm kiếm mục đích sống trên thế giới này, Jamie đối mặt với bước ngoặt cuộc đời khi anh nhận ra mình sở hữu một di sản cổ đại của công nghệ sinh học ngoài hành tinh: Scarab. Khi Scarab chọn Jamie trở thành vật chủ, anh được ban tặng một bộ áo giáp với siêu sức mạnh đáng kinh ngạc không ai có thể lường trước. Số phận của Jamie hoàn toàn thay đổi khi giờ đây, anh đã là siêu anh hùng Blue Beetle.', 'C18'),
('M23', 'TROLL 3', 'Tim Heitz, Walt Dohrn', 2021, '0000-00-00', 'https://youtu.be/dvGFh-XdDgQ', 104, 'ST20', 'L3', 'John Dory cùng với bốn người anh em khác của Branch đã từng là một ban nhạc nam nổi tiếng, kể cả Poppy cũng đã vô cùng yêu mến - BroZone. BroZone tan rã khi Branch vẫn còn là một đứa bé, và gia đình cũng cứ như vậy mà tan theo. Branch không hề gặp lại họ kể từ đó, và những người này cũng trở thành “đã từng” là anh trai của Branch. Nhưng khi John đề nghị Branch về việc tìm lại các anh em để có thể tiếp tục cùng nhau làm một ban nhạc như xưa, cùng với sự hào hứng của Poppy, anh đã bất đắ dĩ đồng ý. Ba chú Troll, cùng với sự trợ giúp của Tí Kim Cương, cùng nhau lên đường thực hiện chuyến phiêu lưu âm nhạc đầy cảm xúc, tràn trề hi vọng về một cuộc sum họp gia đình tuyệt với nhất.', 'C18'),
('M24', 'TRANSFORMERS: RISE OF THE BEASTS', 'Steven Caple Jr.', 2020, '0000-00-00', 'https://youtu.be/VV_Mjc8ttrg', 104, 'ST19', 'L4', 'Transfromers: Rise Of The Beasts lấy bối cảnh vào năm 1994, khoảng thời gian tiếp sau khi Bumblebee xuất hiện. Như tựa đề đã thể hiện, phần phim này dựa theo bộ truyện Beast Wars cực kỳ ăn khách vào thập niên 1990. Đây cũng là lần đầu tiên, một nhóm robot mới xuất hiện, có khả năng biến mình thành động vật thay vì ôtô như trước đó.', 'C18'),
('M25', 'THE FLASH', 'James Gunn', 2020, '0000-00-00', 'https://youtu.be/fEKGQ91isng', 104, 'ST12', 'L4', 'Câu chuyện của Flash bắt đầu khi Barry Allen (Ezra Miller thủ vai) sử dụng siêu năng lực của mình để du hành thời gian nhằm thay đổi những sự kiện trong quá khứ. Nhưng khi nỗ lực cứu lấy gia đình mình vô tình thay đổi tương lai, Barry bị kẹt lại trong một thực tại, nơi tướng Zod tái xuất và đe dọa hủy diệt tất cả, nhưng không có bất cứ siêu anh hùng nào đứng ra giải cứu… Trừ khi Barry có thể thuyết phục một Batman rất khác và giải cứu một cư dân Kryptonian đang bị cầm tù… dẫu có thể đó không phải người mà anh thực sự tìm kiếm. Để giải cứu thế giới hiện tại cũng như trở lại tương lai mình từng biết, niềm hy vọng duy nhất của Barry là phải chạy đua vì cuộc đời mình. Vậy nhưng, sự hy sinh tuyệt đối đó có là đủ để đưa thế giới về lại như ban đầu?', 'C18'),
('M26', 'ELEMENTALl', 'Peter Sohn', 2022, '0000-00-00', 'https://youtu.be/j2DD_MlAnoA', 104, 'ST24', 'L4', 'Bộ phim sẽ là hành trình xoay quanh mối quan hệ giữa cô nàng guyên tố lửa, Ember (do Lewis lồng tiếng) và chàng trai nguyên tố nước, Wade (do Athie lồng tiếng), những cá thể không thể chạm được đến nhau; nhưng cùng nhau khám phá xem họ có bao nhiêu điểm chung giống nhau.', 'C18'),
('M27', 'NO HARD FEELINGS', 'Genedy Tartakovsky', 2021, '0000-00-00', 'https://youtu.be/wc4IvKlagJg', 104, 'ST25', 'L4', 'Trong phim, Jennifer Lawrence thủ vai một cô gái lẳng lơ, sống này đây mai đó với đủ loại công việc. Cho tới một ngày, một cặp vợ chồng trung niên tìm tới và thuê cô quyến rũ cậu con trai 19 tuổi của mình. Thế là hành trình của bà cô U40 đi cò cưa trai trẻ bắt đầu, đầy khó khăn với biết bao tình huống khó đỡ, éo le.', 'C18'),
('M28', 'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH', 'Lý Hải', 2020, '0000-00-00', 'https://youtu.be/2EnP2tVC00Q', 132, 'ST2', 'L3', 'Một nhóm bạn thân lâu năm bất ngờ nhận được cơ hội đổi đời  khi biết tấm vé của cả nhóm trúng giải độc đắc 136.8 tỷ. Đột nhiên An, người nắm giữ tấm vé bất ngờ gặp tai nạn không qua khỏi. Đứng trước món tiền trúng số đáng mơ ước lẽ ra sẽ dễ dàng có được trong tầm tay, nhóm bạn bước chân vào hành trình đi tìm tờ vé số. Nhưng đó chỉ là khởi đầu của vô số những sự kiện không ngờ đến. Liệu hành trình tìm kiếm và chia chác món tiền trong mơ béo bở này sẽ thực sự dẫn đưa cả nhóm đến đâu?', 'C18'),
('M29', 'CON NHÓT MÓT CHỒNG', 'Vũ Ngọc Đãng', 2022, '0000-00-00', 'https://youtu.be/e7KHOQ-alqY', 104, 'ST30', 'L3', 'Lấy cảm hứng từ web drama Chuyện Xóm Tui, phiên bản điện ảnh sẽ mang một màu sắc hoàn toàn khác: hài hước hơn, gần gũi và nhiều cảm xúc hơn. Bộ phim là câu chuyện của Nhót - người phụ nữ “chưa kịp già” đã sắp bị mãn kinh, vội vàng đi tìm chồng. Nhưng sâu thẳm trong cô là khao khát muốn có một đứa con, và luôn muốn hàn gắn với người cha suốt ngày say xỉn của mình.', 'C18'),
('M3', 'Suzme no tojimari', 'Shinkai Makoto', 2022, '0000-00-00', 'https://youtu.be/xQ4_c8JfuzI', 122, 'ST8', 'L3', 'Khóa Chặt Cửa Nào Suzume kể câu chuyện khi Suzume vô tình gặp một chàng trai trẻ đến thị trấn nơi cô sinh sống với mục đích tìm kiếm \"một cánh cửa\". Để bảo vệ Nhật Bản khỏi thảm họa, những cánh cửa rải rác khắp nơi phải được đóng lại, và bất ngờ thay Suzume cũng có khả năng đóng cửa đặc biệt này. Từ đó cả hai cùng nhau thực hiện sự mệnh \"khóa chặt cửa\"!', 'C13'),
('M30', 'CATS IN THE MUSEUM', 'Vasiliy Rovenskiy', 2022, '0000-00-00', 'https://youtu.be/UdaZwNPQ9fk', 104, 'ST33', 'L4', 'Chuyện phim xoay quanh chú mèo Vincent bắt tay cùng chú chuột Maurice để cố gắng thoát khỏi lũ lụt trong một chiếc đàn piano cũ. Một nhóm thủy thủ đã vô tình lấy được cây đàn và gửi nó đến viện bảo tàng. Tại đây, Vincent gặp một đội mèo ưu tú, làm nhiệm vụ bảo vệ những kiệt tác khỏi các loài gặm nhấm và sâu bọ khác trong nhiều năm qua. Mặc dù khao khát tìm được một mái ấm, Vincent buộc phải giấu tất cả về sự tồn tại của Maurice.  Mọi chuyện trở nên phức tạp khi một trong những bức tranh vĩ đại nhất thế giới được đưa đến viện bảo tàng. Một thế lực bí ẩn đang cố gắng đánh cắp bức tranh, buộc Vincent, Maurice và hội mèo tinh hoa phải cùng nhau làm tất cả để bảo vệ kiệt tác này… Liệu Vincent và đồng đội của mình có đủ can đảm và trí thông minh để cứu lấy những kiệt tác của Da Vinci và bảo vệ danh tiếng cho bảo tàng không?', 'C18'),
('M31', 'GUARDIANS OF THE GALAXY VOL.3', 'James Gunn', 2022, '0000-00-00', 'https://youtu.be/cfbKqpbdrYg', 104, 'ST6', 'L4', 'Trong phần phim thứ 3 về Vệ Binh Dải Ngân Hà, biệt đội mà chúng ta từng biết sẽ có một vài sự thay đổi. Peter Quill vẫn đang chìm đắm trong nỗi đau mất đi Gamora nhưng vẫn phải làm tròn trách nhiệm tập hợp cả đội để bảo vệ toàn vũ trụ. Họ phải đối mặt với một nhiệm vụ cam go và nếu như  thất bại, đội Vệ Binh có thể phải kết thúc sứ mệnh của họ.', 'C18'),
('M32', 'KHẾ ƯỚC', 'Guy Ritchie', 2022, '0000-00-00', 'https://youtu.be/JwjjIoTiv5k', 104, 'ST34', 'L3', 'Bối cảnh phim Khế Ước diễn ra tại chiến trường Afghanistan. Trong nhiệm vụ cuối cùng, Trung sĩ John Kinley (Jake Gyllenhaal thủ vai) cùng đội với phiên dịch viên bản địa Ahmed (Dal Salim thủ vai). Khi đơn vị của họ bị phục kích, John và Ahmed là 2 người sống sót duy nhất. Bị kẻ địch truy đuổi, Ahmed liều mạng đưa John đang bị thương băng qua nhiều dặm đường địa hình khắc nghiệt đến nơi an toàn. Trở về Mỹ, John biết rằng Ahmed và gia đình không được cấp giấy thông hành tới Mỹ như đã hứa. Quyết tâm bảo vệ bạn mình và đền ơn cứu mạng, John trở lại chiến trường để giúp Ahmed và gia đình trước khi lực lượng phiến quân phát hiện ra họ.', 'C18'),
('M33', 'BEARMAN', 'Park Sung Kwang', 2022, '0000-00-00', 'https://youtu.be/MagrY1rpOT4', 104, 'ST35', 'L4', 'Đầu Gấu Đụng Đầu Đất dựa trên câu chuyện thần thoại nổi tiếng tại Hàn Quốc về hai chú gấu sinh đôi hoá thành người sau khi ăn tỏi và ngải cứu trong 100 ngày. Chú gấu ăn tỏi trở thành Na Woong-nam, được một cặp vợ chồng nhà khoa học mang về nuôi nấng, tuy chỉ mới 25 tuổi nhưng lại sở hữu “giao diện” của một ông chú 52 với cái “đầu đất” ngây thơ, hiền lành. Trong khi đó, chú gấu ăn ngải cứu trở thành “đầu gấu” Lee Jeong-hak, được một tên trùm tổ chức tội phạm mang về nuôi và bị lợi dụng như một món “vũ khí” phòng vệ.  Trong một tình huống bất đắc dĩ, Na Woong-nam đã trực tiếp đối đầu cùng anh em song sinh Lee Jeong-hak để ngăn chặn một vụ khủng bố virus có tầm lây lan mạnh. Sức mạnh của loài gấu bộc phát sẽ đẩy cuộc đụng độ của cặp gấu song sinh hoá người đi đến hồi kết nào?', 'C18'),
('M34', 'SOUND OF SILENCE', 'Alessandro Antonaci', 2022, '0000-00-00', 'https://youtu.be/239gO3anEwE', 104, 'ST2', 'L3', 'Sau cái chết của cha, Emma (Penelope Sangiorgi) vội vã bay từ New York về quê nhà ở Ý để lo hậu sự. Trong thời gian diễn ra tang lễ, Emma ở một mình trong căn nhà mà cha mẹ để lại. Lúc này, cô bị buộc phải đối mặt với một thực thể tà ác có khả năng kết nối thông qua một chiếc radio bị nguyền rủa. Để sống sót và bảo vệ những người mình yêu thương, Emma phải tìm ra bí mật đen tối ẩn sau chiếc radio ma quỷ kia…', 'C13'),
('M4', 'Pulau', 'Eu Ho', 2022, '0000-00-00', 'https://youtu.be/jSZUpx_3yL4', 112, 'ST2', 'L4', 'Nhóm du khách trẻ vô tình phá bỏ phong ấn của con quái vật khát máu khi đến tham quan một hòn đảo cấm không dân địa phương nào dám đặt chân đến. Liệu họ có thể bình an thoát khỏi hay đó sẽ là nơi chôn vùi tất cả?', 'C13'),
('M5', 'Biệt đội bất ổn', 'Tạ Nguyên Hiệp', 2022, '0000-00-00', 'https://youtu.be/XHvNz4g88pE', 104, 'ST10', 'L3', 'Xoay quanh bộ đôi Khuê (Hoàng Oanh) và Phong (Hứa Vĩ Văn). Sau lần chạm trán tình cờ, bộ đôi lôi kéo Bảy Cục (Võ Tấn Phát), Bảy Súc (Nguyên Thảo), Quạu (Ngọc Phước), Quọ (Ngọc Hoa) tham gia vào phi vụ đặc biệt: Đánh tráo chiếc vòng đính hôn bằng kim cương quý giá và lật tẩy bộ mặt thật của Tuấn - chồng cũ của Quyên trong đám cưới giữa hắn và Tư Xoàn - nữ đại gia miền Tây sở hữu khối tài sản triệu đô.', 'C13'),
('M6', 'Soulmate', 'Min Young Keun', 2021, '0000-00-00', 'https://youtu.be/K46K_1yTwUg', 124, 'ST9', 'L3', 'Soulmate là câu chuyện về Mi So (Kim Da Mi thủ vai) và Ha Eun (Jeon So Nee thủ vai) trong một mối quan hệ chồng chéo chất chứa những hạnh phúc, nỗi buồn, rung động và cả biệt ly. Từ giây phút đầu tiên gặp nhau dưới mái trường tiểu học, giữa hai cô gái đã hình thành một sợi dây liên kết đặc biệt. Và khi Ham Jin Woo (Byun Woo Seok thủ vai) bước vào giữa cả hai, đó cũng là lúc những vết nứt trong mối quan hệ của Mi So và Ha Eun xuất hiện.', 'C13'),
('M7', 'SHAZAM! FURY OF THE GODS', 'David F. Sandberg', 2020, '0000-00-00', 'https://youtu.be/KyRCmJE65ms', 130, 'ST12', 'L4', 'Trong lần trở lại này, cậu chàng Shazam vẫn trăn trở cho rằng mình “không xứng đáng với năng lực này”. Thế giới có The Flash nhanh như chớp với bộ suit đỏ đặc trưng, Aquaman to cao lực lưỡng và cả Batman siêu ngầu. Trong khi đó, Shazam vẫn chỉ là Shazam chẳng có năng lực gì khác biệt… hoặc là Billy Batson, một cậu nhóc trung học trong thân hình một siêu anh hùng cao to già đời, không thể kiểm soát sức mạnh của mình. Nếu như các siêu anh hùng khác khiến khán giả không khỏi trầm trồ vì những năng lực siêu phàm có thể cứu thế giới thì “cậu nhóc” Shazam, mỗi khi dùng siêu năng lực vẫn hậu đậu như một “chú hề” lừng danh khiến người xem phải bật cười.', 'C13'),
('M8', 'AIR', 'Ben Affleck', 2022, '0000-00-00', 'https://youtu.be/LC8jobIl57Q', 112, 'ST12', 'L4', 'Từ đạo diễn đã từng đoạt giải thưởng Ben Affleck, AIR hé lộ mối quan hệ đột phá giữa huyền thoại Michael Jordan khi mới bắt đầu sự nghiệp và bộ phận bóng rổ còn non trẻ của Nike, đã làm thay đổi thế giới thể thao và văn hóa đương đại với thương hiệu Air Jordan. Câu chuyện cảm động này kể về sự đánh cược khi đặt lên bàn cân tình hình kinh doanh của cả công ty, tầm nhìn vĩ đại của một người mẹ biết giá trị và tài năng của con trai mình, và một siêu sao bóng rổ đã trở thành huyền thoại.', 'C13'),
('M9', 'RENFIELD TAY SAI CỦA QUỶ', 'Chris McKay', 2022, '0000-00-00', 'https://youtu.be/bv5V0ZOecT8', 92, 'ST6', 'L4', 'Renfield phát ốm vì mối quan hệ đồng phụ thuộc kéo dài hàng thế kỷ với Dracula. Với hy vọng tạo dựng một cuộc sống mới ở thế giới con người, tại New Orleans thời hiện đại, cuộc sống của Renfield trở nên phức tạp hơn khi anh phải lòng một cảnh sát giao thông. Mà trong lúc đó, anh ta vẫn phải đối phó với những yêu cầu, đòi hỏi quái lạ từ Dracula - một ông chủ thực sự đến từ địa ngục.', 'C16');

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
('G1', 'Hành động', 'Hành động'),
('G10', 'Kinh dị', 'Kinh dị'),
('G11', 'Giật gân', 'Giật gân'),
('G12', 'Hài', 'Hài'),
('G2', 'Tình cảm', 'Tình cảm'),
('G3', 'Hoạt hình', 'Hoạt hình'),
('G4', 'Đam mỹ', 'Đam mỹ'),
('G5', 'Huyền huyễn', 'Huyền huyễn'),
('G6', 'Khoa học', 'Khoa học'),
('G7', 'Giả tưởng', 'Giả tưởng'),
('G8', 'Ngôn tình', 'Ngôn tình'),
('G9', 'Vườn trường', 'Vườn trường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movieimage`
--

CREATE TABLE `movieimage` (
  `ImageID` char(11) NOT NULL,
  `ImagePath` text NOT NULL,
  `MovieID` char(11) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `movieimage`
--

INSERT INTO `movieimage` (`ImageID`, `ImagePath`, `MovieID`, `type`) VALUES
('IM1', 'images/imagesfilms/movie1.jpg', 'M1', 1),
('IM10', 'images/imagesfilms/movie10.jpg', 'M10', 1),
('IM11', 'images/imagesfilms/movie11.jpg', 'M11', 1),
('IM12', 'images/imagesfilms/movie12.jpg', 'M12', 1),
('IM13', 'images/imagesfilms/movie13.jpg', 'M13', 1),
('IM14', 'images/imagesfilms/movie14.jpg', 'M14', 1),
('IM15', 'images/imagesfilms/movie15.jpg', 'M15', 1),
('IM16', 'images/imagesfilms/movie16.jpg', 'M16', 1),
('IM17', 'images/imagesfilms/movie17.jpg', 'M17', 1),
('IM18', 'images/imagesfilms/movie18.jpg', 'M18', 1),
('IM19', 'images/imagesfilms/movie9.jpg', 'M9', 1),
('IM2', 'images/imagesfilms/movie2.jpg', 'M2', 1),
('IM20', 'images/imagesfilms/movie20.jpg', 'M20', 1),
('IM21', 'images/imagesfilms/movie21.jpg', 'M21', 1),
('IM22', 'images/imagesfilms/movie22.jpg', 'M22', 1),
('IM23', 'images/imagesfilms/movie23.jpg', 'M23', 1),
('IM24', 'images/imagesfilms/movie24.jpg', 'M24', 1),
('IM25', 'images/imagesfilms/movie25.jpg', 'M25', 1),
('IM26', 'images/imagesfilms/movie26.jpg', 'M26', 1),
('IM27', 'images/imagesfilms/movie27.jpg', 'M27', 1),
('IM28', 'images/imagesfilms/movie28.jpg', 'M28', 1),
('IM29', 'images/imagesfilms/movie29.jpg', 'M29', 1),
('IM3', 'images/imagesfilms/movie3.jpg', 'M3', 1),
('IM30', 'images/imagesfilms/movie30.jpg', 'M30', 1),
('IM31', 'images/imagesfilms/movie31.jpg', 'M31', 1),
('IM32', 'images/imagesfilms/movie32.jpg', 'M32', 1),
('IM33', 'images/imagesfilms/movie33.jpg', 'M33', 1),
('IM34', 'images/imagesfilms/movie34.jpg', 'M34', 1),
('IM35', 'images/imagesfilms/movie1_2.jpg', 'M1', 2),
('IM36', 'images/imagesfilms/movie2_2.jpg', 'M2', 2),
('IM37', 'images/imagesfilms/movie3_2.jpg', 'M3', 2),
('IM38', 'images/imagesfilms/movie4_2.jpg', 'M4', 2),
('IM39', 'images/imagesfilms/movie5_2.jpg', 'M5', 2),
('IM4', 'images/imagesfilms/movie4.jpg', 'M4', 1),
('IM40', 'images/imagesfilms/movie6_2.jpg', 'M6', 2),
('IM41', 'images/imagesfilms/movie7_2.jpg', 'M7', 2),
('IM42', 'images/imagesfilms/movie8_2.jpg', 'M8', 2),
('IM43', 'images/imagesfilms/movie9_2.jpg', 'M9', 2),
('IM44', 'images/imagesfilms/movie10_2.jpg', 'M10', 2),
('IM45', 'images/imagesfilms/movie11_2.jpg', 'M11', 2),
('IM46', 'images/imagesfilms/movie12_2.jpg', 'M12', 2),
('IM47', 'images/imagesfilms/movie13_2.jpg', 'M13', 2),
('IM48', 'images/imagesfilms/movie14_2.jpg', 'M14', 2),
('IM49', 'images/imagesfilms/movie15_2.jpg', 'M15', 2),
('IM5', 'images/imagesfilms/movie5.jpg', 'M5', 1),
('IM50', 'images/imagesfilms/movie16_2.jpg', 'M16', 2),
('IM51', 'images/imagesfilms/movie17_2.jpg', 'M17', 2),
('IM52', 'images/imagesfilms/movie18_2.jpg', 'M18', 2),
('IM53', 'images/imagesfilms/movie9_2.jpg', 'M9', 1),
('IM54', 'images/imagesfilms/movie20_2.jpg', 'M20', 2),
('IM55', 'images/imagesfilms/movie21_2.jpg', 'M21', 2),
('IM56', 'images/imagesfilms/movie22_2.jpg', 'M22', 2),
('IM57', 'images/imagesfilms/movie23_2.jpg', 'M23', 2),
('IM58', 'images/imagesfilms/movie24_2.jpg', 'M24', 2),
('IM59', 'images/imagesfilms/movie25_2.jpg', 'M25', 2),
('IM6', 'images/imagesfilms/movie6.jpg', 'M6', 1),
('IM60', 'images/imagesfilms/movie26_2.jpg', 'M26', 2),
('IM61', 'images/imagesfilms/movie27_2.jpg', 'M27', 2),
('IM62', 'images/imagesfilms/movie28_2.jpg', 'M28', 2),
('IM63', 'images/imagesfilms/movie29_2.jpg', 'M29', 2),
('IM64', 'images/imagesfilms/movie30_2.jpg', 'M30', 2),
('IM65', 'images/imagesfilms/movie31_2.jpg', 'M31', 2),
('IM66', 'images/imagesfilms/movie32_2.jpg', 'M32', 2),
('IM67', 'images/imagesfilms/movie33_2.jpg', 'M33', 2),
('IM68', 'images/imagesfilms/movie34_2.jpg', 'M34', 2),
('IM7', 'images/imagesfilms/movie7.jpg', 'M7', 1),
('IM8', 'images/imagesfilms/movie8.jpg', 'M8', 1),
('IM9', 'images/imagesfilms/movie9.jpg', 'M9', 1),
('ImageID', 'ImagePath', 'MovieID', 0);

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
  `Code` int(11) NOT NULL,
  `url_image` text NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `promotion`
--

INSERT INTO `promotion` (`PromotionID`, `PromotionName`, `Description`, `StartTime`, `EndTime`, `Discount`, `Code`, `url_image`, `type`) VALUES
('PR1', 'senior Promotion', 'Medical surface politics.', '2023-03-19 12:15:15', '2023-03-26 12:15:15', 40, 1, 'images/img/Voucher2.jpg', 1),
('PR10', 'choose Promotion', 'Build among age visit computer.', '2023-04-11 01:53:15', '2023-03-18 01:53:15', 40, 1, 'images/img/Voucher11.jpg', 1),
('PR11', 'here Promotion', 'Before community husband water discover become ser', '2023-03-22 11:24:15', '2023-03-29 11:24:15', 40, 1, 'images/img/Voucher12.jpg', 1),
('PR12', 'news Promotion', 'Off later player can opportunity base war.', '2023-04-01 23:25:15', '2023-04-08 23:25:15', 40, 1, 'images/img/Voucher13.jpg', 1),
('PR13', 'blood Promotion', 'Foot city should item explain choose west.', '2023-03-27 17:37:15', '2023-04-04 17:37:15', 40, 1, 'images/img/Voucher14.jpg', 1),
('PR14', 'herself Promotion', 'Like thought join mean of get.', '2023-04-11 21:21:15', '2023-03-18 21:21:15', 40, 1, 'images/img/Voucher15.jpg', 1),
('PR15', 'budget Promotion', 'Hold main story appear.', '2023-04-05 22:11:15', '2023-04-12 22:11:15', 40, 1, 'images/img/Voucher16.jpg', 1),
('PR16', 'site Promotion', 'Occur behind person very quite service.', '2023-03-27 07:26:15', '2023-04-03 07:26:15', 40, 1, 'images/img/Voucher17.jpg', 1),
('PR17', 'contain Promotion', 'Father than its keep technology audience agency.', '2023-03-21 00:48:15', '2023-04-01 00:48:15', 40, 1, 'images/img/Voucher18.jpg', 1),
('PR18', 'shake Promotion', 'Structure peace positive administration bank will.', '2023-04-01 18:11:15', '2023-04-08 18:11:15', 40, 1, 'images/img/Voucher19.jpg', 1),
('PR19', 'think Promotion', 'Win cut me movie resource network per.', '2023-03-22 03:21:15', '2023-03-29 03:21:15', 40, 1, 'images/img/Voucher20.jpg', 1),
('PR2', 'travel Promotion', 'Market simple public probably time whose describe.', '2023-03-20 16:09:15', '2023-03-27 16:09:15', 40, 1, 'images/img/Voucher3.jpg', 1),
('PR20', 'south Promotion', 'Town structure serve dream itself kitchen.', '2023-03-27 10:10:10', '2023-04-03 11:11:11', 40, 1, 'images/img/Voucher1.jpg', 1),
('PR3', 'military Promotion', 'Religious husband he.', '2023-03-25 23:36:15', '2023-04-01 23:36:15', 40, 1, 'images/img/Voucher4.jpg', 1),
('PR4', 'give Promotion', 'View whose cut without.', '2023-04-04 02:05:15', '2023-04-11 02:05:15', 40, 1, 'images/img/Voucher5.jpg', 1),
('PR5', 'month Promotion', 'List follow do very billion across impact cover.', '2023-03-16 16:21:15', '2023-05-11 17:02:26', 40, 1, 'images/img/Voucher6.jpg', 1),
('PR6', 'develop Promotion', 'Still best south somebody dark professor.', '2023-04-07 10:21:15', '2023-04-14 10:21:15', 40, 1, 'images/img/Voucher7.jpg', 1),
('PR7', 'different Promotion', 'Skin quickly by tree soldier example.', '2023-04-05 12:50:15', '2023-04-12 12:50:15', 40, 1, 'images/img/Voucher8.jpg', 1),
('PR8', 'door Promotion', 'Free top however often.', '2023-04-01 20:14:15', '2023-04-08 20:14:15', 40, 1, 'images/img/Voucher9.jpg', 1),
('PR9', 'discuss Promotion', 'Give camera attorney behind must middle season.', '2023-03-24 14:29:15', '2023-03-31 14:29:15', 40, 1, 'images/img/Voucher10.jpg', 1);

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
('RT1', 1, 'Camera determine spring can ago pick water but. Ac', '0000-00-00 00:00:00', 'M1', 'C1'),
('RT10', 1, 'Expert concern experience face exactly country civ', '0000-00-00 00:00:00', 'M10', 'C10'),
('RT11', 9, 'Long put part especially. Daughter security langua', '0000-00-00 00:00:00', 'M11', 'C11'),
('RT12', 5, 'Forget fall generation police home again. Red sit ', '0000-00-00 00:00:00', 'M12', 'C12'),
('RT13', 2, 'Then attention author professional. Bar stock him ', '0000-00-00 00:00:00', 'M13', 'C13'),
('RT14', 9, 'Drug he bit community word. I back sort represent ', '0000-00-00 00:00:00', 'M14', 'C14'),
('RT15', 8, 'Front computer state player true building. Its bit', '0000-00-00 00:00:00', 'M15', 'C15'),
('RT16', 9, 'Benefit above will reason. Customer fast democrati', '0000-00-00 00:00:00', 'M16', 'C16'),
('RT17', 6, 'Event meeting investment police mention agent. Lay', '0000-00-00 00:00:00', 'M17', 'C17'),
('RT18', 10, 'Property thus decide it better clearly. Billion ge', '0000-00-00 00:00:00', 'M18', 'C18'),
('RT19', 5, 'Factor thus food run both bill discover. Throughou', '0000-00-00 00:00:00', 'M19', 'C19'),
('RT2', 6, 'Western week could own young. Team attention on no', '0000-00-00 00:00:00', 'M2', 'C2'),
('RT20', 3, 'Student three left improve heavy herself. Address ', '0000-00-00 00:00:00', 'M20', 'C20'),
('RT21', 4, 'Example wait among item street hour structure insi', '0000-00-00 00:00:00', 'M21', 'C21'),
('RT22', 3, 'Way among source effect mind reveal beautiful whos', '0000-00-00 00:00:00', 'M22', 'C22'),
('RT23', 8, 'Office place myself task report every state. Trial', '0000-00-00 00:00:00', 'M23', 'C23'),
('RT24', 6, 'Four town hair positive whose pass anything. Once ', '0000-00-00 00:00:00', 'M24', 'C24'),
('RT25', 1, 'View doctor require thousand soon too. Different s', '0000-00-00 00:00:00', 'M25', 'C25'),
('RT26', 8, 'Sure the research center industry also. Say whose ', '0000-00-00 00:00:00', 'M26', 'C6'),
('RT27', 6, 'Off maintain fire discuss. Measure south who of de', '0000-00-00 00:00:00', 'M27', 'C7'),
('RT28', 2, 'Simply people difficult court. Discuss decade fina', '0000-00-00 00:00:00', 'M28', 'C8'),
('RT29', 10, 'Despite seven successful western wish fact camera ', '0000-00-00 00:00:00', 'M29', 'C9'),
('RT3', 4, 'Congress budget bag hand national.Even ready happe', '0000-00-00 00:00:00', 'M3', 'C3'),
('RT30', 3, 'Responsibility their concern body both century. Th', '0000-00-00 00:00:00', 'M30', 'C3'),
('RT31', 3, 'Talk present arrive easy whole movie specific. Def', '0000-00-00 00:00:00', 'M31', 'C3'),
('RT32', 6, 'Break power gas but week fine simple. Institution ', '0000-00-00 00:00:00', 'M32', 'C2'),
('RT33', 10, 'Hospital else account especially capital. Instead ', '0000-00-00 00:00:00', 'M33', 'C1'),
('RT4', 8, 'Me around find serious TV authority. Tv actually d', '0000-00-00 00:00:00', 'M4', 'C4'),
('RT5', 7, 'Rate everybody political increase chair population', '0000-00-00 00:00:00', 'M5', 'C5'),
('RT6', 7, 'Around class social decide. Behavior large market ', '0000-00-00 00:00:00', 'M6', 'C6'),
('RT7', 6, 'Along us or each half run environmental professor.', '0000-00-00 00:00:00', 'M7', 'C7'),
('RT8', 5, 'Look point agreement certainly action big. Maintai', '0000-00-00 00:00:00', 'M8', 'C8'),
('RT9', 5, 'South recent each save before. Business business m', '0000-00-00 00:00:00', 'M9', 'C9');

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
('R10', '2', 80, 'TH3'),
('R100', '4', 80, 'TH25'),
('R105', '1', 80, 'TH27'),
('R106', '2', 80, 'TH27'),
('R107', '3', 80, 'TH27'),
('R108', '4', 80, 'TH27'),
('R109', '1', 180, 'TH28'),
('R11', '3', 80, 'TH3'),
('R110', '2', 80, 'TH28'),
('R111', '3', 80, 'TH28'),
('R112', '4', 80, 'TH28'),
('R113', '1', 80, 'TH29'),
('R114', '2', 80, 'TH29'),
('R115', '3', 80, 'TH29'),
('R116', '4', 80, 'TH29'),
('R117', '1', 80, 'TH30'),
('R118', '2', 80, 'TH30'),
('R119', '3', 80, 'TH30'),
('R12', '4', 80, 'TH3'),
('R120', '4', 80, 'TH30'),
('R13', '1', 180, 'TH4'),
('R14', '2', 80, 'TH4'),
('R15', '3', 80, 'TH4'),
('R16', '4', 80, 'TH4'),
('R17', '1', 80, 'TH5'),
('R18', '2', 80, 'TH5'),
('R19', '3', 80, 'TH5'),
('R1O1', '1', 80, 'TH26'),
('R1O2', '2', 80, 'TH26'),
('R1O3', '3', 80, 'TH26'),
('R1O4', '4', 80, 'TH26'),
('R20', '4', 80, 'TH5'),
('R21', '1', 80, 'TH6'),
('R22', '2', 80, 'TH6'),
('R23', '3', 80, 'TH6'),
('R24', '4', 80, 'TH6'),
('R25', '1', 180, 'TH7'),
('R26', '2', 80, 'TH7'),
('R27', '3', 80, 'TH7'),
('R28', '4', 80, 'TH7'),
('R29', '1', 80, 'TH8'),
('R30', '2', 80, 'TH8'),
('R31', '3', 80, 'TH8'),
('R32', '4', 80, 'TH8'),
('R33', '1', 80, 'TH9'),
('R34', '2', 80, 'TH9'),
('R35', '3', 80, 'TH9'),
('R36', '4', 80, 'TH9'),
('R37', '1', 180, 'TH10'),
('R38', '2', 80, 'TH10'),
('R39', '3', 80, 'TH10'),
('R40', '4', 80, 'TH10'),
('R41', '1', 80, 'TH11'),
('R42', '2', 80, 'TH11'),
('R43', '3', 80, 'TH11'),
('R44', '4', 80, 'TH11'),
('R45', '1', 80, 'TH12'),
('R46', '2', 80, 'TH12'),
('R47', '3', 80, 'TH12'),
('R48', '4', 80, 'TH12'),
('R49', '1', 180, 'TH13'),
('R50', '2', 80, 'TH13'),
('R51', '3', 80, 'TH13'),
('R52', '4', 80, 'TH13'),
('R53', '1', 80, 'TH14'),
('R54', '2', 80, 'TH14'),
('R55', '3', 80, 'TH14'),
('R56', '4', 80, 'TH14'),
('R57', '1', 80, 'TH15'),
('R58', '2', 80, 'TH15'),
('R59', '3', 80, 'TH15'),
('R60', '4', 80, 'TH15'),
('R61', '1', 180, 'TH16'),
('R62', '2', 80, 'TH16'),
('R63', '3', 80, 'TH16'),
('R64', '4', 80, 'TH16'),
('R65', '1', 80, 'TH17'),
('R66', '2', 80, 'TH17'),
('R67', '3', 80, 'TH17'),
('R68', '4', 80, 'TH17'),
('R69', '1', 80, 'TH18'),
('R70', '2', 80, 'TH18'),
('R71', '3', 80, 'TH18'),
('R72', '4', 80, 'TH18'),
('R73', '1', 180, 'TH19'),
('R74', '2', 80, 'TH19'),
('R75', '3', 80, 'TH19'),
('R76', '4', 80, 'TH19'),
('R77', '1', 80, 'TH20'),
('R78', '2', 80, 'TH20'),
('R79', '3', 80, 'TH20'),
('R80', '4', 80, 'TH20'),
('R81', '1', 80, 'TH21'),
('R82', '2', 80, 'TH21'),
('R83', '3', 80, 'TH21'),
('R84', '4', 80, 'TH21'),
('R85', '1', 180, 'TH22'),
('R86', '2', 80, 'TH22'),
('R87', '3', 80, 'TH22'),
('R88', '4', 80, 'TH22'),
('R89', '1', 80, 'TH23'),
('R90', '2', 80, 'TH23'),
('R91', '3', 80, 'TH23'),
('R92', '4', 80, 'TH23'),
('R93', '1', 80, 'TH24'),
('R94', '2', 80, 'TH24'),
('R95', '3', 80, 'TH24'),
('R96', '4', 80, 'TH24'),
('R97', '1', 180, 'TH25'),
('R98', '2', 80, 'TH25'),
('R99', '3', 80, 'TH25'),
('RO001', 'RoomName 4232341', 0, 'TH001'),
('RO002', 'RoomName 2', 2, 'TH002'),
('RO3', '3', 80, 'TH1'),
('RO4', '4', 80, 'TH1'),
('RO5', '1', 80, 'TH2'),
('RO6', '2', 80, 'TH2'),
('RO7', '3', 80, 'TH2'),
('RO8', '4', 80, 'TH2'),
('RO9', '1', 80, 'TH3');

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
('SH002', '2022-10-10 10:10:10', '2022-10-10 11:11:11', 40000, 'M002', 'RO002', 'F002'),
('SH1', '2023-04-09 00:15:19', '2023-04-09 02:45:19', 110000, 'M1', 'R10', 'F001'),
('SH10', '2023-04-14 00:35:00', '2023-04-14 03:05:00', 80000, 'M3', 'RO3', 'F001'),
('SH11', '2023-04-13 06:55:51', '2023-04-13 09:25:51', 80000, 'M3', 'RO3', 'F001'),
('SH12', '2023-04-13 21:15:48', '2023-04-13 23:45:48', 80000, 'M3', 'RO3', 'F001'),
('SH13', '2023-03-24 12:55:34', '2023-03-24 15:25:34', 110000, 'M3', 'RO3', 'F001'),
('SH14', '2023-03-31 21:55:49', '2023-04-01 00:20:49', 110000, 'M3', 'RO3', 'F001'),
('SH15', '2023-03-21 20:35:44', '2023-03-21 23:05:44', 110000, 'M3', 'RO3', 'F001'),
('SH16', '2023-03-26 15:35:02', '2023-03-26 18:05:02', 110000, 'M4', 'RO4', 'F001'),
('SH17', '2023-03-25 05:15:47', '2023-03-25 07:45:47', 110000, 'M4', 'RO4', 'F001'),
('SH18', '2023-03-18 03:35:09', '2023-03-18 06:05:09', 110000, 'M4', 'RO4', 'F001'),
('SH19', '2023-03-29 02:55:35', '2023-03-29 05:25:35', 110000, 'M4', 'RO4', 'F001'),
('SH2', '2023-04-08 13:35:08', '2023-04-08 16:05:08', 110000, 'M1', 'R10', 'F001'),
('SH20', '2023-03-20 06:35:45', '2023-03-20 09:05:45', 110000, 'M4', 'RO4', 'F001'),
('SH21', '2023-03-20 00:55:35', '2023-03-20 03:25:35', 110000, 'M4', 'RO4', 'F001'),
('SH22', '2023-04-07 11:00:26', '2023-04-07 13:35:26', 110000, 'M5', 'RO5', 'F001'),
('SH23', '2023-03-31 06:50:55', '2023-03-31 09:25:55', 110000, 'M5', 'RO5', 'F001'),
('SH24', '2023-04-04 00:40:53', '2023-04-04 03:15:53', 110000, 'M5', 'RO5', 'F001'),
('SH25', '2023-04-13 10:50:42', '2023-04-13 13:25:42', 110000, 'M5', 'RO5', 'F001'),
('SH26', '2023-03-21 23:50:38', '2023-03-22 02:20:38', 110000, 'M6', 'RO6', 'F001'),
('SH27', '2023-04-13 17:20:43', '2023-04-13 19:50:43', 90000, 'M6', 'RO6', 'F001'),
('SH28', '2023-03-25 04:50:18', '2023-03-25 07:20:18', 90000, 'M6', 'RO6', 'F001'),
('SH29', '2023-03-29 07:40:51', '2023-03-29 10:10:51', 90000, 'M6', 'RO6', 'F001'),
('SH3', '2023-04-16 12:25:44', '2023-04-16 14:55:44', 110000, 'M1', 'RO3', 'F001'),
('SH30', '2023-04-01 21:00:32', '2023-04-01 23:30:32', 90000, 'M7', 'RO7', 'F001'),
('SH31', '2023-04-01 21:00:32', '2023-04-01 23:30:32', 90000, 'M7', 'RO7', 'F001'),
('SH32', '2023-04-12 20:10:52', '2023-04-12 22:40:52', 90000, 'M7', 'RO7', 'F001'),
('SH33', '2023-04-06 03:55:50', '2023-04-06 06:20:50', 90000, 'M7', 'RO7', 'F001'),
('SH34', '2023-03-23 13:20:18', '2023-03-23 15:50:18', 110000, 'M8', 'RO8', 'F001'),
('SH35', '2023-04-13 18:00:33', '2023-04-13 20:30:33', 110000, 'M8', 'RO8', 'F001'),
('SH36', '2023-03-27 07:00:48', '2023-03-27 09:30:48', 110000, 'M8', 'RO8', 'F001'),
('SH37', '2023-03-22 14:30:58', '2023-03-22 17:00:58', 110000, 'M8', 'RO8', 'F001'),
('SH38', '2023-04-15 13:10:43', '2023-04-15 15:40:43', 100000, 'M9', 'RO9', 'F002'),
('SH39', '2023-04-02 09:30:24', '2023-04-02 12:00:24', 100000, 'M9', 'RO9', 'F002'),
('SH4', '2023-04-08 08:45:34', '2023-04-08 11:15:34', 110000, 'M1', 'RO4', 'F001'),
('SH40', '2023-03-25 07:50:38', '2023-03-25 10:20:38', 100000, 'M10', 'R10', 'F002'),
('SH41', '2023-04-14 16:20:40', '2023-04-14 18:50:40', 100000, 'M10', 'R10', 'F002'),
('SH42', '2023-03-27 07:10:00', '2023-03-27 09:40:00', 100000, 'M11', 'R11', 'F002'),
('SH43', '2023-03-22 07:10:39', '2023-03-22 09:40:39', 100000, 'M11', 'R11', 'F002'),
('SH44', '2023-03-18 00:40:32', '2023-03-18 03:10:32', 100000, 'M11', 'R11', 'F002'),
('SH45', '2023-04-10 15:30:04', '2023-04-10 18:00:04', 100000, 'M11', 'R11', 'F002'),
('SH46', '2023-04-09 05:00:40', '2023-04-09 07:30:40', 110000, 'M12', 'R12', 'F002'),
('SH47', '2023-04-12 20:20:17', '2023-04-12 22:50:17', 110000, 'M12', 'R12', 'F002'),
('SH48', '2023-03-24 17:10:01', '2023-03-24 19:40:01', 110000, 'M12', 'R12', 'F002'),
('SH49', '2023-03-18 09:10:35', '2023-03-18 11:40:35', 110000, 'M12', 'R12', 'F002'),
('SH5', '2023-03-18 11:35:31', '2023-03-18 14:05:31', 110000, 'M2', 'RO5', 'F001'),
('SH50', '2023-04-05 16:05:32', '2023-04-05 19:25:32', 110000, 'M12', 'R12', 'F002'),
('SH6', '2023-03-24 02:35:00', '2023-03-24 05:05:00', 110000, 'M2', 'R13', 'F001'),
('SH7', '2023-03-30 14:45:35', '2023-03-30 17:15:35', 80000, 'M2', 'R13', 'F001'),
('SH8', '2023-04-05 11:55:59', '2023-04-05 14:25:59', 80000, 'M2', 'R13', 'F001'),
('SH9', '2023-04-14 00:35:00', '2023-04-14 03:05:00', 80000, 'M2', 'R13', 'F001');

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
('ST1', 'Screen Gems', 'USA', '1900 1011', 'ScreenGems@studio.com'),
('ST10', 'Live On', 'Việt Nam', '1900 1020', 'LiveOn@studio.com'),
('ST11', 'Pulau', 'Malaysia', '1900 1021', 'Pulau@studio.com'),
('ST12', 'Warner Bros', 'Mỹ', '1900 1022', 'WarnerBros@studio.com'),
('ST13', 'Habadicap', 'Thái lan', '1900 1023', 'Habadicap@studio.com'),
('ST14', 'Film Bridge International', 'Mỹ', '1900 1024', 'FilmBridgeInternational@studio.com'),
('ST15', 'Võ Thanh Hòa', 'Việt Nam', '1900 1025', 'VoThanhHoa@studio.com'),
('ST16', 'Sakaimai', 'Nhật Bản', '1900 1026', 'Sakaimai@studio.com'),
('ST17', 'Fowler Media', 'Anh', '1900 1027', 'FowlerMedia@studio.com'),
('ST18', 'Toei Company', 'Nhật Bản', '1900 1028', 'ToeiCompany@studio.com'),
('ST19', 'Paramount Pictures', 'Mỹ', '1900 1029', 'ParamountPictures@studio.com'),
('ST2', '89s Group', 'Đài Loan', '1900 1012', 'Cherry@studio.com'),
('ST20', 'DreamWorks', 'Mỹ', '1900 1030', 'DreamWorks@studio.com'),
('ST21', 'Benjamin Renner', 'Mỹ', '1900 1031', 'BenjaminRenner@studio.com'),
('ST22', 'DC Entertainment', 'Mỹ', '1900 1032', 'DCEntertainment@studio.com'),
('ST23', 'Walt Disney Pictures', 'Mỹ', '1900 1033', 'WaltDisneyPictures@studio.com'),
('ST24', 'PIXAR', 'Mỹ', '1900 1034', 'PIXAR@studio.com'),
('ST25', 'Sony Pictures', 'Mỹ', '1900 1035', 'SonyPicturesDreamWorks@studio.com'),
('ST26', 'Conglomerate Media', 'Mỹ', '1900 1036', 'ConglomerateMedia@studio.com'),
('ST27', 'Cryptoscope Films', 'Mỹ', '1900 1037', 'CryptoscopeFilms@studio.com'),
('ST28', 'Columbia Pictures', 'Mỹ', '1900 1038', 'ColumbiaPictures@studio.com'),
('ST29', 'Nam Long Phim', 'Việt Nam', '1900 1039', 'NamLongPhim@studio.com'),
('ST3', 'Nintendo', 'Nhật Bản', '1900 1013', 'Nintendo@studio.com'),
('ST30', 'Galaxy Studio', 'Việt Nam', '1900 1040', 'GalaxyStudio@studio.com'),
('ST31', 'Thu Trang Entertainment', 'Việt Nam', '1900 1041', 'ThuTrangEntertainment@studio.com'),
('ST32', 'Galaxy Play', 'Việt Nam', '1900 1042', 'GalaxyPlay@studio.com'),
('ST33', 'Licensing Brands', 'Nga', '1900 1043', 'LicensingBrands@studio.com'),
('ST34', 'STX Films', 'Mỹ', '1900 1044', 'STXFilms@studio.com'),
('ST35', 'CJ HK Entertainment', 'Việt Nam', '1900 1045', 'CJHKEntertainment@studio.com'),
('ST36', 'Eryde Produzioni', 'ý', '1900 1046', 'ErydeProduzioni@studio.com'),
('ST4', 'Illumination Entertainment', 'Mỹ', '1900 1014', '@studio.com'),
('ST5', 'Univeral Pictures', 'Mỹ', '1900 1015', 'UniveralPictures@studio.com'),
('ST6', 'Marvel Studio', 'USA', '1900 1016', 'MarvelStudio@studio.com'),
('ST7', 'Mỹ Tâm', 'Việt Nam', '1900 1017', 'Mỹ Tâm@studio.com'),
('ST8', 'CoMix Wave Films', 'Nhật Bản', '1900 1018', 'CoMixWaveFilms@studio.com'),
('ST9', 'Cimax Studio', 'Hàn Quốc', '1900 1019', 'CimaxStudio@studio.com');

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
('TH002', 'TheaterName 2', 'Address thearter 2', 'P002', 2),
('TH1', '5CT Vincom Bà Triệu', 'Tầng 6, VinCom Center Hà Nội, 191 Bà Triệu, Q. Hai', '1800 1001', 4),
('TH10', '5CT Trương Định Plaza', 'Tầng 5 Trương Định Plaza, 461 Trương Định, Hoàng M', '1800 1010', 4),
('TH11', '5CT CT Plaza', 'Tầng 10, CT Plaza, 60A Trường Sơn, P.2, Q. Tân Bìn', '1800 1011', 4),
('TH12', '5CT Hùng Vương Plaza', 'Tầng 7, Hùng Vương Plaza, 126 Hùng Vương, Q.5, Tp.', '1800 1012', 4),
('TH13', '5CT Crescent Mall', 'Lầu 5, Crescent Mall Đại lộ Nguyễn Văn Linh, Phú M', '1800 1013', 4),
('TH14', '5CT Pandora City', 'Lầu 3, Pandora City 1/1 Trường Chinh, Q. Tân Phú, ', '1800 1014', 4),
('TH15', '5CT Aeon Tân Phú', 'Lầu 3, Aeon Mall 30 Bờ Bao Tân Thắng, P. Sơn Kỳ, Q', '1800 1015', 4),
('TH16', '5CT Thảo Điền Pearl', 'Tầng 2, Thảo Điền Mall, 12 Quốc Hương, P. Thảo Điề', '1800 1016', 4),
('TH17', '5CT Liberty Citypoint', 'Tầng M - 1, Liberty Center Saigon Citypoint, 59 - ', '1800 1017', 4),
('TH18', '5CT Vincom Thủ Đức', 'Tầng 5, TTTM Vincom Thủ Đức, 216 Võ Văn Ngân, P. B', '1800 1018', 4),
('TH19', '5CT Vivo City', 'Lầu 5, TTTM SC VivoCity, 1058 Nguyễn Văn Linh, Q.7', '1800 1019', 4),
('TH2', '5CT Mipec Tower', 'Tầng 5, MIPEC Tower, 229 Tây Sơn, Q. Đống Đa, Tp. ', '1800 1002', 4),
('TH20', '5CT Vincom Gò Vấp', 'Tầng 5 TTTM Vincom Plaza Gò Vấp, 12 Phan Văn Trị, ', '1800 1020', 4),
('TH21', '5CT Sense City', 'Lầu 3, Sense City 1, Đại Lộ Hòa Bình, Q. Ninh Kiều', '1800 1021', 4),
('TH22', '5CT Vincom Hùng Vương', 'Vincom Hùng Vương, 02 Hùng Vương, Q. Ninh Kiều, Tp', '1800 1022', 4),
('TH23', '5CT Vincom Xuân Khánh', 'Tầng 5, Tòa nhà 209, Đường 30/04, Phường Xuân Khán', '1800 1023', 4),
('TH24', '5CT Vincom Hạ Long', 'Tầng 4, TTTM Vincom Center Hạ Long, Khu Cột Đồng H', '1800 1024', 4),
('TH25', '5CT Vincom Móng Cái', 'Tầng 3 & 4, Vincom Plaza Móng Cái, 10 Hoà Bình, P.', '1800 1025', 4),
('TH26', '5CT Vincom Cẩm Phả', 'Vincom Shophouse Cẩm Phả - Quốc lộ 18, Phường Cẩm ', '1800 1026', 4),
('TH27', '5CT Coopmart Biên Hòa', 'Tầng 3, Khu Siêu thị Co-op Mart 121 Phạm Văn Thuận', '1800 1027', 4),
('TH28', '5CT BigC Đồng Nai', 'Siêu thị BigC Đồng Nai, Khu phố 1, P. Long Bình Tâ', '1800 1028', 4),
('TH29', '5CT Vĩnh Trung Plaza', '255-257 đường Hùng Vương, Q. Thanh Khê, Tp. Đà Nẵn', '1800 1029', 4),
('TH3', '5CT Hồ Gươm Plaza', 'Tầng 3, TTTM Hồ Gươm Plaza, 110 Trần Phú, P. Mỗ La', '1800 1003', 4),
('TH30', '5CT Vincom Đà Nẵng', 'Tầng 4, TTTM Vincom Đà Nẵng, Ngô Quyền, P. An Hải ', '1800 1030', 4),
('TH4', '5CT IPH Hà Nội', 'Tầng 4, Indochina Plaza Hà Nội, 241 Xuân Thủy, Q. ', '1800 1004', 4),
('TH5', '5CT Aeon Long Biên', 'Tầng 4 - TTTM AEON Long Biên, Số 27 Cổ Linh, Q. Lo', '1800 1005', 4),
('TH6', '5CT Vincom Nguyễn Chí Thanh', 'Số 54A Nguyễn Chí Thanh, P. Láng Thượng, Q. Đống Đ', '1800 1006', 4),
('TH7', '5CT Rice City', 'Tầng 2 và 4, Tòa nhà Trung - RICE CITY Linh Đàm, P', '1800 1007', 4),
('TH8', '5CT Tràng Tiền Plaza', 'Tràng Tiền Plaza, 24 Hai Bà Trưng, Q. Hoàn Kiếm, T', '1800 1008', 4),
('TH9', '5CT Hà Nội Center Point', 'Tầng 5 TTTM Hà Nội Centerpoint, 85 Lê Văn Lương, P', '1800 1009', 4);

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
  ADD PRIMARY KEY (`BookingID`),
  ADD KEY `customer_id` (`customer_id`);

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
-- Các ràng buộc cho bảng `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`CustomerID`);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
