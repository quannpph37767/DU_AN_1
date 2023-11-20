-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 17, 2023 lúc 10:25 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `booking_system`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `datve`
--

CREATE TABLE `datve` (
  `madat` varchar(10) NOT NULL,
  `mave` varchar(10) NOT NULL,
  `mataikhoan` varchar(10) DEFAULT NULL,
  `makhuyenmai` varchar(10) DEFAULT NULL,
  `ngaydat` datetime NOT NULL,
  `soluong` int(11) NOT NULL CHECK (`soluong` >= 1),
  `thanhtien` decimal(10,2) NOT NULL,
  `tongtien` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Bẫy `datve`
--
DELIMITER $$
CREATE TRIGGER `before_insert_datve` BEFORE INSERT ON `datve` FOR EACH ROW BEGIN
    IF NEW.ngaydat >= CURRENT_TIMESTAMP() THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Ngaydat must be before the current timestamp.';
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dienvien`
--

CREATE TABLE `dienvien` (
  `madv` varchar(10) NOT NULL,
  `maphim` varchar(10) NOT NULL,
  `tendv` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ghengoi`
--

CREATE TABLE `ghengoi` (
  `maghe` varchar(20) NOT NULL,
  `loaighe` varchar(50) NOT NULL,
  `tinhtrangghe` varchar(50) NOT NULL,
  `mave` varchar(10) DEFAULT NULL,
  `mapc` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `makhachhang` varchar(10) NOT NULL,
  `tenkhachhang` varchar(50) NOT NULL,
  `diachi` varchar(50) NOT NULL,
  `sodienthoai` char(10) DEFAULT NULL CHECK (`sodienthoai` like '0_________%')
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `makhuyenmai` varchar(10) NOT NULL,
  `dieukiensudung` varchar(50) NOT NULL,
  `muckhuyenmai` int(11) NOT NULL,
  `ngaybatdau` date NOT NULL,
  `ngayketthuc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichchieu`
--

CREATE TABLE `lichchieu` (
  `maphim` varchar(20) NOT NULL,
  `thoigianbd` datetime NOT NULL,
  `thoigiankt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `manv` varchar(20) NOT NULL,
  `tennv` varchar(50) NOT NULL,
  `diachi` varchar(50) NOT NULL,
  `sodienthoai` char(10) DEFAULT NULL,
  `calam` time NOT NULL,
  `marap` varchar(10) DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phim`
--

CREATE TABLE `phim` (
  `maphim` varchar(10) NOT NULL,
  `tenphim` varchar(50) NOT NULL,
  `daodien` varchar(50) NOT NULL,
  `thoiluong` int(11) NOT NULL,
  `nuocsanxuat` varchar(50) NOT NULL,
  `namsanxuat` date NOT NULL,
  `noidung` varchar(1000) NOT NULL,
  `luotdanhgia` int(11) NOT NULL,
  `trallerphim` varchar(1000) NOT NULL,
  `matheloai` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phongchieu`
--

CREATE TABLE `phongchieu` (
  `mapc` varchar(20) NOT NULL,
  `marap` varchar(10) DEFAULT NULL,
  `amthanh` varchar(50) NOT NULL,
  `tinhtrangphong` varchar(50) NOT NULL,
  `maychieu` varchar(20) NOT NULL,
  `tongsocho` int(11) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rapphim`
--

CREATE TABLE `rapphim` (
  `marap` varchar(10) NOT NULL,
  `tenrap` varchar(50) NOT NULL,
  `diadiem` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `mataikhoan` varchar(10) NOT NULL,
  `tentaikhoan` varchar(50) NOT NULL,
  `ngaydangky` date DEFAULT NULL,
  `diemkhuyenmai` int(11) DEFAULT NULL,
  `matkhau` varchar(20) NOT NULL,
  `makhachhang` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Bẫy `taikhoan`
--
DELIMITER $$
CREATE TRIGGER `before_insert_taikhoan` BEFORE INSERT ON `taikhoan` FOR EACH ROW BEGIN
    IF NEW.ngaydangky >= CURDATE() THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Ngaydangky must be before the current date.';
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloaiphim`
--

CREATE TABLE `theloaiphim` (
  `matheloai` varchar(10) NOT NULL,
  `tentheloai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ve`
--

CREATE TABLE `ve` (
  `mave` varchar(10) NOT NULL,
  `giave` decimal(10,2) NOT NULL,
  `tenloaive` varchar(50) NOT NULL,
  `vat` float NOT NULL,
  `maphim` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `datve`
--
ALTER TABLE `datve`
  ADD PRIMARY KEY (`madat`,`mave`),
  ADD KEY `mave` (`mave`),
  ADD KEY `mataikhoan` (`mataikhoan`),
  ADD KEY `makhuyenmai` (`makhuyenmai`);

--
-- Chỉ mục cho bảng `dienvien`
--
ALTER TABLE `dienvien`
  ADD PRIMARY KEY (`madv`,`maphim`);

--
-- Chỉ mục cho bảng `ghengoi`
--
ALTER TABLE `ghengoi`
  ADD PRIMARY KEY (`maghe`),
  ADD KEY `mave` (`mave`),
  ADD KEY `mapc` (`mapc`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makhachhang`),
  ADD UNIQUE KEY `sodienthoai` (`sodienthoai`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`makhuyenmai`);

--
-- Chỉ mục cho bảng `lichchieu`
--
ALTER TABLE `lichchieu`
  ADD PRIMARY KEY (`maphim`,`thoigianbd`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`manv`),
  ADD UNIQUE KEY `sodienthoai` (`sodienthoai`),
  ADD KEY `marap` (`marap`);

--
-- Chỉ mục cho bảng `phim`
--
ALTER TABLE `phim`
  ADD PRIMARY KEY (`maphim`),
  ADD KEY `matheloai` (`matheloai`);

--
-- Chỉ mục cho bảng `phongchieu`
--
ALTER TABLE `phongchieu`
  ADD PRIMARY KEY (`mapc`),
  ADD KEY `marap` (`marap`);

--
-- Chỉ mục cho bảng `rapphim`
--
ALTER TABLE `rapphim`
  ADD PRIMARY KEY (`marap`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`mataikhoan`),
  ADD KEY `makhachhang` (`makhachhang`);

--
-- Chỉ mục cho bảng `theloaiphim`
--
ALTER TABLE `theloaiphim`
  ADD PRIMARY KEY (`matheloai`);

--
-- Chỉ mục cho bảng `ve`
--
ALTER TABLE `ve`
  ADD PRIMARY KEY (`mave`),
  ADD KEY `maphim` (`maphim`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `datve`
--
ALTER TABLE `datve`
  ADD CONSTRAINT `datve_ibfk_1` FOREIGN KEY (`mave`) REFERENCES `ve` (`mave`),
  ADD CONSTRAINT `datve_ibfk_2` FOREIGN KEY (`mataikhoan`) REFERENCES `taikhoan` (`mataikhoan`),
  ADD CONSTRAINT `datve_ibfk_3` FOREIGN KEY (`makhuyenmai`) REFERENCES `khuyenmai` (`makhuyenmai`);

--
-- Các ràng buộc cho bảng `ghengoi`
--
ALTER TABLE `ghengoi`
  ADD CONSTRAINT `ghengoi_ibfk_1` FOREIGN KEY (`mave`) REFERENCES `ve` (`mave`),
  ADD CONSTRAINT `ghengoi_ibfk_2` FOREIGN KEY (`mapc`) REFERENCES `phongchieu` (`mapc`);

--
-- Các ràng buộc cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`marap`) REFERENCES `rapphim` (`marap`);

--
-- Các ràng buộc cho bảng `phim`
--
ALTER TABLE `phim`
  ADD CONSTRAINT `phim_ibfk_1` FOREIGN KEY (`matheloai`) REFERENCES `theloaiphim` (`matheloai`);

--
-- Các ràng buộc cho bảng `phongchieu`
--
ALTER TABLE `phongchieu`
  ADD CONSTRAINT `phongchieu_ibfk_1` FOREIGN KEY (`marap`) REFERENCES `rapphim` (`marap`);

--
-- Các ràng buộc cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `taikhoan_ibfk_1` FOREIGN KEY (`makhachhang`) REFERENCES `khachhang` (`makhachhang`);

--
-- Các ràng buộc cho bảng `ve`
--
ALTER TABLE `ve`
  ADD CONSTRAINT `ve_ibfk_1` FOREIGN KEY (`maphim`) REFERENCES `phim` (`maphim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
