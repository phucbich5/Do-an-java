-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th12 15, 2019 lúc 10:13 AM
-- Phiên bản máy phục vụ: 5.7.26
-- Phiên bản PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlisinhvien`
--
CREATE DATABASE IF NOT EXISTS `quanlisinhvien` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `quanlisinhvien`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `qlkhoa`
--

DROP TABLE IF EXISTS `qlkhoa`;
CREATE TABLE IF NOT EXISTS `qlkhoa` (
  `Makhoa` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TenKhoa` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SoLop` int(11) NOT NULL,
  PRIMARY KEY (`Makhoa`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `qlkhoa`
--

INSERT INTO `qlkhoa` (`Makhoa`, `TenKhoa`, `SoLop`) VALUES
('1', 'cong nghe thong tin', 3),
('2', 'quan tri kinh doanh', 5),
('3', 'co khi', 4),
('4', 'tieng anh', 4),
('5', 'ke toan', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `qllophoc`
--

DROP TABLE IF EXISTS `qllophoc`;
CREATE TABLE IF NOT EXISTS `qllophoc` (
  `MaLop` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tenlop` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SoHS` int(11) NOT NULL,
  `TenGV` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Khoa` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`MaLop`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `qllophoc`
--

INSERT INTO `qllophoc` (`MaLop`, `Tenlop`, `SoHS`, `TenGV`, `Khoa`) VALUES
('01', 'java', 31, 'Phan Thi The', 'cong nghe thong tin'),
('02', 'anh van 2', 5, 'Nguyen Thi Lan', 'tieng anh'),
('03', 'oto 1', 30, 'nguyen van nam', 'co khi'),
('04', 'ke toan 1', 25, 'nguyen thi hoa', 'ke toan');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `qlsinhvien`
--

DROP TABLE IF EXISTS `qlsinhvien`;
CREATE TABLE IF NOT EXISTS `qlsinhvien` (
  `MaSV` int(11) NOT NULL,
  `TenSV` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgaySinh` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DiaChi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GioiTinh` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Lop` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Khoa` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`MaSV`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `qlsinhvien`
--

INSERT INTO `qlsinhvien` (`MaSV`, `TenSV`, `NgaySinh`, `DiaChi`, `GioiTinh`, `Lop`, `Khoa`) VALUES
(1, 'bich', '2000', 'quan 2', 'Nam', 'anh van 2', 'co khi'),
(123, 'trinh', '11/2/1999', 'abc', 'Nu', 'anh van 2', 'co khi'),
(2, 'nguyen dang khoi', '12', 'thu duc', 'Nam', 'oto 1', 'co khi'),
(435, 'nguyen phuc bich', '15/12/2000', 'quan 2', 'Nam', 'anh van 2', 'co khi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TaiKhoan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MatKhau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `TaiKhoan`, `MatKhau`) VALUES
(1, 'bich', '123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
