-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 06, 2024 lúc 11:06 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlbh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietgd`
--

CREATE TABLE `chitietgd` (
  `magd` int(11) NOT NULL,
  `masp` int(11) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietgd`
--

INSERT INTO `chitietgd` (`magd`, `masp`, `soluong`) VALUES
(1, 27, 1),
(1, 28, 1),
(1, 29, 1),
(2, 27, 1),
(2, 28, 1),
(3, 27, 1),
(3, 28, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmucsp`
--

CREATE TABLE `danhmucsp` (
  `madm` int(11) NOT NULL,
  `tendm` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmucsp`
--

INSERT INTO `danhmucsp` (`madm`, `tendm`) VALUES
(7, 'bánh táo'),
(8, 'drink'),
(9, 'tart'),
(10, 'cupcake'),
(11, 'tiramisu'),
(12, 'other');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaodich`
--

CREATE TABLE `giaodich` (
  `magd` int(11) NOT NULL,
  `tinhtrang` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_dst` varchar(20) NOT NULL,
  `user_addr` text NOT NULL,
  `user_phone` varchar(15) NOT NULL,
  `tongtien` varchar(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `giaodich`
--

INSERT INTO `giaodich` (`magd`, `tinhtrang`, `user_id`, `user_name`, `user_dst`, `user_addr`, `user_phone`, `tongtien`, `date`) VALUES
(1, 0, 0, 'thảo', 'Quận Bình Thạnh', 'số 4', '', '290000', '2024-04-17 12:26:33'),
(2, 0, 0, 'Trâm', 'Quận 5', 'số 7', '', '40000', '2024-04-18 11:19:38'),
(3, 0, 0, 'thảo', 'Thanh Xuân', 'số 8', '', '40000', '2024-04-18 17:33:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `user_id` int(11) NOT NULL,
  `masp` int(11) NOT NULL,
  `soluong` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `masp` int(11) NOT NULL,
  `tensp` varchar(255) NOT NULL,
  `gia` varchar(20) NOT NULL,
  `kichthuoc` varchar(100) NOT NULL,
  `khuyenmai` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `madm` int(11) NOT NULL,
  `anhchinh` varchar(255) NOT NULL,
  `luotmua` int(11) NOT NULL,
  `luotxem` int(11) NOT NULL,
  `hsd` datetime NOT NULL,
  `nsx` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`masp`, `tensp`, `gia`, `kichthuoc`, `khuyenmai`, `soluong`, `madm`, `anhchinh`, `luotmua`, `luotxem`, `hsd`, `nsx`) VALUES
(26, 'Apple', '', '', 0, 0, 10, '', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, '', '', '2', 0, 0, 11, '', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'sachertorte', '20000', '15', 0, 6, 12, 'sachertorte.jpg', 1, 2, '2024-04-20 15:08:33', '2024-04-19 15:08:33'),
(29, 'Limburg Pie', '250000', '15', 2, 5, 9, 'Limburg Pie.jpg', 1, 2, '2024-04-20 15:10:56', '2024-04-19 15:10:56'),
(30, 'macaron', '70000', '5', 0, 20, 8, 'Macaron.jpg', 0, 0, '2024-04-20 01:34:00', '2024-04-19 01:34:00'),
(31, 'tapioca', '40000', '10', 0, 30, 12, 'Tapioca.jpg', 0, 0, '2024-04-20 01:35:00', '2024-04-19 01:35:00'),
(32, 'pandan', '100000', '15', 0, 3, 7, 'Pandan.jpg', 0, 0, '2024-04-20 01:44:00', '2024-04-19 01:43:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanphamyeuthich`
--

CREATE TABLE `sanphamyeuthich` (
  `user_id` int(11) NOT NULL,
  `masp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhvien`
--

CREATE TABLE `thanhvien` (
  `id` int(11) NOT NULL,
  `ten` varchar(100) NOT NULL,
  `tentaikhoan` varchar(100) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sdt` varchar(10) NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `quyen` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `thanhvien`
--

INSERT INTO `thanhvien` (`id`, `ten`, `tentaikhoan`, `matkhau`, `email`, `sdt`, `diachi`, `date`, `quyen`) VALUES
(2, 'Admin bá đạo', 'admin', '123', 'adf@afd.com', '0345875625', 'Thái Bình', '2024-04-17 14:40:53', 1),
(10, 'Trâm', 'tram', '1', 'tram@gmail.com', '0353662271', 'Thanh Hóa', '2024-04-17 17:18:41', 1),
(11, 'Thảo', 'thao', '1', 'thao@gmail.com', '0985824745', 'Ninh Bình', '2024-04-17 17:19:11', 1),
(12, 'Liêm', 'liem', '1', 'liem@gmail.com', '0394259674', 'Thái Bình\r\n', '2024-04-17 17:19:37', 1),
(13, 'Diệu', 'dahlia', '101321', 'Dahlia@gmail.com', '0376390962', 'Thái Bình', '2024-04-17 17:19:59', 1),
(23, 'user', 'user', '1', 'user@gmail.com', '045786245', 'Hà Nội', '2024-04-18 01:17:48', 0),
(25, 'user3', 'user3', '1', 'user2@gmail.com', '0125486336', 'Thái Bình', '2024-04-18 01:23:52', 0),
(35, 's', 's', 's', 's', 's', 's', '2024-04-18 19:24:27', 1),
(37, 'admin2', 'admin2', '1', 'admin2@gmail.com', '0124575632', 'Thái Bình', '2024-04-18 19:27:08', 1),
(38, 'abc', 'a', 'a', 'a', 'a', 'a', '2024-04-18 19:54:23', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `matt` int(11) NOT NULL,
  `tentt` varchar(255) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `noidung` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`matt`, `tentt`, `hinhanh`, `noidung`) VALUES
(1, 'Chesse Cake', 'Chesse.jpg', 'Đây là loại bánh ngọt được làm chủ yếu từ phô mai, tạo vị béo ngậy. Phía trên người ta có thể phủ thêm mứt. Chiếc bánh pho mát kem được làm từ những năm 1800 và trở thành một trong những món bánh quen thuộc của người dân New York.'),
(2, 'Tiramisu', 'tiramisu.jpg', 'Là loại bánh ngọt vô cùng quen thuộc tại Việt Nam nhưng không phải ai cũng biết rõ về chúng. Tiramisu là loại bánh ngọt tráng miệng vị cà phê rất nổi tiếng có nguồn gốc từ Italy. Bánh gồm các lớp bánh quy Savoiardi nhúng cà phê xen kẽ với hỗn hợp trứng, đường, phô mai mascarpone đánh bông, bột cacao. Món bánh này còn có một tên gọi khác, là \"thiên đường ở trong miệng\", nhằm ca ngợi độ ngon của Tiramisu.   '),
(3, 'Sachertorte', 'sachertorte.jpg', 'Đây là một loại bánh được tạo ra bởi chocolate tuyệt hảo nhất nước Áo. Bánh có vị ngọt dịu nhẹ, gồm nhiều lớp bánh được làm từ bánh mì và bánh sữa chocolate, xen lẫn giữa các lớp bánh là mứt mơ. Món bánh chocolate này nổi tiếng và thành phố Vienna đã ấn định tổ chức một ngày Sachertorte quốc gia, vào ngày 5/12 hàng năm.');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietgd`
--
ALTER TABLE `chitietgd`
  ADD PRIMARY KEY (`magd`,`masp`);

--
-- Chỉ mục cho bảng `danhmucsp`
--
ALTER TABLE `danhmucsp`
  ADD PRIMARY KEY (`madm`);

--
-- Chỉ mục cho bảng `giaodich`
--
ALTER TABLE `giaodich`
  ADD PRIMARY KEY (`magd`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`user_id`,`masp`),
  ADD KEY `fk_gh_sp` (`masp`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masp`),
  ADD KEY `fk_sp_dmsp` (`madm`);

--
-- Chỉ mục cho bảng `sanphamyeuthich`
--
ALTER TABLE `sanphamyeuthich`
  ADD PRIMARY KEY (`user_id`,`masp`);

--
-- Chỉ mục cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `danhmucsp`
--
ALTER TABLE `danhmucsp`
  MODIFY `madm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `giaodich`
--
ALTER TABLE `giaodich`
  MODIFY `magd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `masp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `fk_gh_sp` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`),
  ADD CONSTRAINT `fk_gh_tv` FOREIGN KEY (`user_id`) REFERENCES `thanhvien` (`id`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_sp_dmsp` FOREIGN KEY (`madm`) REFERENCES `danhmucsp` (`madm`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
