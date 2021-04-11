-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 11, 2021 lúc 03:32 PM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_banhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `date_order` date DEFAULT NULL,
  `total` float DEFAULT NULL COMMENT 'tổng tiền',
  `payment` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'hình thức thanh toán',
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `id_customer`, `date_order`, `total`, `payment`, `note`, `created_at`, `updated_at`) VALUES
(37, 37, '2021-03-29', 22900000, NULL, 'Iphone 12', '2021-03-28 19:29:04', '2021-03-28 19:29:04'),
(36, 36, '2021-03-29', 39990000, NULL, 'test', '2021-03-28 18:12:45', '2021-03-28 18:12:45'),
(35, 35, '2021-03-29', 39990000, NULL, 'sad', '2021-03-28 18:12:00', '2021-03-28 18:12:00'),
(34, 34, '2021-03-29', 29000000, NULL, 'dsa', '2021-03-28 18:11:08', '2021-03-28 18:11:08'),
(33, 33, '2021-03-29', 30390000, NULL, '1111111111', '2021-03-28 18:08:45', '2021-03-28 18:08:45'),
(32, 32, '2021-03-28', 20450000, NULL, 'test', '2021-03-28 10:39:52', '2021-03-28 10:39:52'),
(31, 31, '2021-03-28', 79980000, NULL, 'sda', '2021-03-28 05:11:24', '2021-03-28 05:11:24'),
(38, 38, '2021-03-30', 4500000, NULL, '1111', '2021-03-30 05:34:55', '2021-03-30 05:34:55'),
(39, 39, '2021-04-06', 6690000, NULL, '111', '2021-04-05 18:32:08', '2021-04-05 18:32:08'),
(41, 41, '2021-04-06', 30390000, NULL, 'gdgdf', '2021-04-06 08:26:13', '2021-04-06 08:26:13'),
(42, 42, '2021-04-06', 30390000, NULL, 'aefesdfsf', '2021-04-06 08:30:28', '2021-04-06 08:30:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_bill` int(10) NOT NULL,
  `id_product` int(10) NOT NULL,
  `quantity` int(11) NOT NULL COMMENT 'số lượng',
  `unit_price` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `id_bill`, `id_product`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(48, 42, 65, 1, 30390000, '2021-04-06 08:30:28', '2021-04-06 08:30:28'),
(47, 41, 65, 1, 30390000, '2021-04-06 08:26:13', '2021-04-06 08:26:13'),
(46, 40, 65, 1, 30390000, '2021-04-06 07:53:40', '2021-04-06 07:53:40'),
(45, 39, 69, 1, 6690000, '2021-04-05 18:32:08', '2021-04-05 18:32:08'),
(44, 38, 81, 1, 4500000, '2021-03-30 05:34:55', '2021-03-30 05:34:55'),
(43, 37, 84, 1, 22900000, '2021-03-28 19:29:04', '2021-03-28 19:29:04'),
(42, 36, 64, 1, 39990000, '2021-03-28 18:12:45', '2021-03-28 18:12:45'),
(41, 35, 64, 1, 39990000, '2021-03-28 18:12:00', '2021-03-28 18:12:00'),
(40, 34, 66, 1, 29000000, '2021-03-28 18:11:08', '2021-03-28 18:11:08'),
(39, 33, 65, 1, 30390000, '2021-03-28 18:08:45', '2021-03-28 18:08:45'),
(38, 32, 77, 1, 20450000, '2021-03-28 10:39:52', '2021-03-28 10:39:52'),
(37, 31, 64, 2, 39990000, '2021-03-28 05:11:24', '2021-03-28 05:11:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `name`, `gender`, `email`, `address`, `phone_number`, `note`, `created_at`, `updated_at`) VALUES
(40, 'Hồ Duy Chiến', 'nam', 'chienhoo20@gmail.com', 'Trương Chí Cương, Hòa Cường, Hòa Cường Nam, Hải Châu, Đà Nẵng, Việt Nam', '0762766682', '1', '2021-04-06 07:53:40', '2021-04-06 07:53:40'),
(39, 'Hồ Duy Chiến', 'nam', 'chienhoo20@gmail.com', 'Trương Chí Cương, Hòa Cường, Hòa Cường Nam, Hải Châu, Đà Nẵng, Việt Nam', '0762766682', '111', '2021-04-05 18:32:08', '2021-04-05 18:32:08'),
(24, 'Hồ Duy Chiến', 'nam', 'chienhoo20@gmail.com', 'Trương Chí Cương, Hòa Cường, Hòa Cường Nam, Hải Châu, Đà Nẵng, Việt Nam', '0762766682', 'test', '2021-03-27 18:07:22', '2021-03-27 18:07:22'),
(36, 'Hồ Duy Chiến', 'nam', 'chienhoo20@gmail.com', 'Trương Chí Cương, Hòa Cường, Hòa Cường Nam, Hải Châu, Đà Nẵng, Việt Nam', '0762766682', 'test', '2021-03-28 18:12:45', '2021-03-28 18:12:45'),
(41, 'sse', 'nam', 'chienhoo20@gmail.com', 'Trương Chí Cương, Hòa Cường, Hòa Cường Nam, Hải Châu, Đà Nẵng, Việt Nam', '0762766682', 'gdgdf', '2021-04-06 08:26:13', '2021-04-06 08:26:13'),
(32, 'Hồ Duy Chiến', 'nam', 'chienhoo20@gmail.com', 'Trương Chí Cương, Hòa Cường, Hòa Cường Nam, Hải Châu, Đà Nẵng, Việt Nam', '0762766682', 'test', '2021-03-28 10:39:52', '2021-03-28 10:39:52'),
(42, 'Hồ Duy Chiến', 'nam', 'chienhoo20@gmail.com', 'Trương Chí Cương, Hòa Cường, Hòa Cường Nam, Hải Châu, Đà Nẵng, Việt Nam', 'dsa13211111111', 'aefesdfsf', '2021-04-06 08:30:28', '2021-04-06 08:30:28'),
(38, 'Hồ Duy Chiến', 'nam', 'chienhoo20@gmail.com', 'Trương Chí Cương, Hòa Cường, Hòa Cường Nam, Hải Châu, Đà Nẵng, Việt Nam', '0762766682', '1111', '2021-03-30 05:34:55', '2021-03-30 05:34:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(10) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'tiêu đề',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'nội dung',
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'hình',
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `image`, `create_at`, `update_at`) VALUES
(1, 'Mùa trung thu năm nay, Hỷ Lâm Môn muốn gửi đến quý khách hàng sản phẩm mới xuất hiện lần đầu tiên tại Việt nam \"Bánh trung thu Bơ Sữa HongKong\".', 'Những ý tưởng dưới đây sẽ giúp bạn sắp xếp tủ quần áo trong phòng ngủ chật hẹp của mình một cách dễ dàng và hiệu quả nhất. ', 'sample1.jpg', '2017-03-11 06:20:23', '0000-00-00 00:00:00'),
(2, 'Tư vấn cải tạo phòng ngủ nhỏ sao cho thoải mái và thoáng mát', 'Chúng tôi sẽ tư vấn cải tạo và bố trí nội thất để giúp phòng ngủ của chàng trai độc thân thật thoải mái, thoáng mát và sáng sủa nhất. ', 'sample2.jpg', '2016-10-20 02:07:14', '0000-00-00 00:00:00'),
(3, 'Đồ gỗ nội thất và nhu cầu, xu hướng sử dụng của người dùng', 'Đồ gỗ nội thất ngày càng được sử dụng phổ biến nhờ vào hiệu quả mà nó mang lại cho không gian kiến trúc. Xu thế của các gia đình hiện nay là muốn đem thiên nhiên vào nhà ', 'sample3.jpg', '2016-10-20 02:07:14', '0000-00-00 00:00:00'),
(4, 'Hướng dẫn sử dụng bảo quản đồ gỗ, nội thất.', 'Ngày nay, xu hướng chọn vật dụng làm bằng gỗ để trang trí, sử dụng trong văn phòng, gia đình được nhiều người ưa chuộng và quan tâm. Trên thị trường có nhiều sản phẩm mẫu ', 'sample4.jpg', '2016-10-20 02:07:14', '0000-00-00 00:00:00'),
(5, 'Phong cách mới trong sử dụng đồ gỗ nội thất gia đình', 'Đồ gỗ nội thất gia đình ngày càng được sử dụng phổ biến nhờ vào hiệu quả mà nó mang lại cho không gian kiến trúc. Phong cách sử dụng đồ gỗ hiện nay của các gia đình hầu h ', 'sample5.jpg', '2016-10-20 02:07:14', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_type` int(10) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_price` float DEFAULT NULL,
  `promotion_price` float DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `id_type`, `description`, `unit_price`, `promotion_price`, `image`, `unit`, `new`, `created_at`, `updated_at`) VALUES
(64, 'Iphone 11 pro max 512G', 8, 'Công nghệ màn hình : OLED // \r\nĐộ phân giải : 1242 x 2688 Pixels // \r\nMàn hình rộng : 6.5\" // \r\nMặt kính cảm ứng : Kính cường lực //  Oleophobic (ion cường lực)', 41990000, 39990000, 'iphone 11 pro max 512GB.png', 'Điện thoại', 1, NULL, NULL),
(65, 'IPhone 12 Pro Max 128GB', 8, NULL, 31990000, 30390000, 'iphone-12-pro-max-xanh-duong-new-600x600-600x600.jpg', 'Điện thoại', 1, NULL, NULL),
(66, 'Samsung Galaxy S21 Ultra 5G 128GB', 9, NULL, 30990000, 29000000, 'samsung-galaxy-s21-ultra-bac-600x600-1-600x600.jpg', 'Điện thoại', 1, NULL, NULL),
(67, 'Điện thoại OPPO A15', 10, NULL, 3900000, 3900000, 'oppo-a15-black-600x600-2-600x600.jpg', 'Điện thoại', 1, NULL, NULL),
(68, 'iPhone SE 256GB (2020)\r\n', 8, NULL, 15490000, 14490000, 'iphone-se-128gb-2020-den-600x600.jpg', 'Điện thoại', 1, NULL, NULL),
(69, 'Samsung Galaxy A32', 9, NULL, 6690000, NULL, 'samsung-galaxy-a32-4g-thumb-tim-600x600-600x600.jpg', NULL, 1, NULL, NULL),
(70, 'Vsmart Live 4 6GB', 12, NULL, 4290000, NULL, 'vsmart-live-4-den-600x600.jpg', NULL, 1, NULL, NULL),
(71, 'Vsmart Active 3', 12, NULL, 3690000, NULL, 'vsmart-active-3-tim-600x600-600x600.jpg', NULL, 1, NULL, NULL),
(72, 'OPPO Reno5', 10, NULL, 8600000, NULL, 'oppo-reno5-trang-600x600-1-600x600.jpg', NULL, 1, NULL, NULL),
(73, 'Iphone X 256G Silver', 8, NULL, 15990000, 13990000, 'iphone-x-256gb-silver-600x600-ud-600x600.jpg', 'Điện thoại', 1, NULL, NULL),
(74, 'iPhone 12 mini 64GB', 8, NULL, 18790000, NULL, 'iphone-mini-do-new-600x600-600x600.jpg', NULL, 1, NULL, NULL),
(75, 'Apple MacBook Air M1 2020 8GB/256GB', 13, NULL, 28900000, 27500000, 'apple-macbook-air-2020-mgnd3saa-600x600.jpg', 'Laptop', 1, NULL, NULL),
(76, 'Apple MacBook Air 2017', 13, NULL, 19900000, 17000000, 'apple-macbook-air-mqd32sa-a-i5-5350u-600x600.jpg', 'Laptop', 1, NULL, NULL),
(77, 'Asus TUF Gaming FX506LI', 13, NULL, 21900000, 20450000, 'TUF2-600x400.jpg', NULL, 1, NULL, NULL),
(78, 'iPad Pro 12.9 inch Wifi 128GB (2020)', 14, NULL, 26990000, NULL, 'ipad-pro-12-9-inch-wifi-128gb-2020-bac-600x600-1-600x600.jpg', NULL, 1, NULL, NULL),
(79, 'Samsung Galaxy Tab S7\r\n', 14, NULL, 18900000, NULL, 'samsung-galaxy-tab-s7-gold-new-600x600.jpg', NULL, 1, NULL, NULL),
(80, 'iPad Air 4 Wifi 256GB (2020)', 14, NULL, 20490000, NULL, 'ipad-air-4-wifi-64gb-2020-xanhduong-600x600-600x600.jpg', NULL, 1, NULL, NULL),
(81, 'Xiaomi Redmi Note 10 (6GB/128GB)', 11, NULL, 5400000, 4500000, 'xiaomi-redmi-note-10-thumb-green-600x600-1-600x600.jpg', NULL, 1, NULL, NULL),
(82, 'Vsmart Star 5 (3GB/64GB)', 12, 'Vsmart Star 5 (3GB/64GB) mẫu điện thoại tiếp theo đến từ Vsmart được ra mắt, sản phẩm có một cấu hình đủ dùng, ngoại hình thiết kế bên ngoài đơn giản và có mức giá rất phải chăng. So với Vsmart Star 4 thì máy hoàn toàn có nhiều ưu điểm vượt trội hơn rất đáng để mọi người sở hữu.', 2740000, NULL, 'vsmart-star-5-thumb-green-600x600-1-600x600.jpg', NULL, 1, NULL, NULL),
(83, 'Điện thoại Samsung Galaxy A11', 9, 'Samsung Galaxy A11 với thiết kế màn hình Infinity-O siêu tràn viền, bộ ba camera ấn tượng, đi kèm với mức giá phải chăng hứa hẹn sẽ tạo nên cơn sốt trên thị trường điện thoại giá rẻ.', 2590000, NULL, 'c.jpg', NULL, 1, NULL, NULL),
(84, 'Điện thoại iPhone 12 64GB', 8, 'Trong những tháng cuối năm 2020 Apple đã chính thức giới thiệu đến người dùng cũng như iFan thế hệ iPhone 12 series mới với hàng loạt tính năng bức phá, thiết kế được lột xác hoàn toàn, hiệu năng đầy mạnh mẽ và một trong số đó chính là iPhone 12 64GB.', 22900000, NULL, 'iphone-12-xanh-duong-new-600x600-600x600.jpg', NULL, 1, NULL, NULL),
(85, 'Samsung Galaxy S21+ 5G 256GB', 9, 'Đắm chìm trong vẻ đẹp tuyệt tác đến từ Samsung Galaxy S21+ 5G 256 GB, làm chủ cuộc chơi với hiệu năng hàng đầu, cụm camera chuyên nghiệp cùng tốc độ 5G bức phá mọi giới hạn, mẫu điện thoại cho bạn thỏa sức khám phá cuộc sống, thể hiện cá tính theo cách riêng của mình', 25990000, 24590000, 'samsung-galaxy-s21-plus-256gb-bac-600x600-600x600.jpg', NULL, 1, NULL, NULL),
(86, 'Điện thoại OPPO Reno5 Marvel', 10, 'OPPO cho ra mắt một phiên bản giới hạn mới OPPO Reno5 Marvel, về hiệu năng cấu hình bên trong máy hoàn toàn tương tự so với Reno5, nhưng về kiểu dáng bên ngoài máy có phần khác biệt với thiết kế tùy chỉnh, với mặt lưng có logo Marvel, logo Avengers hoàn toàn mới lạ.', 15000000, 14590000, 'oppo-reno5-marvel-600x600-600x600.jpg', NULL, 1, NULL, NULL),
(87, 'Xiaomi Redmi Note 8 (4GB/64GB)', 11, 'Xiaomi Redmi Note 8 4GB/64GB là chiếc smartphone tầm trung mới nhất của Xiaomi, chiếc máy này gây ấn tượng với cấu hình phần cứng mạnh mẽ, hệ thống 4 camera sau chất lượng và đi kèm giá bán cực kỳ hấp dẫn.', 3490000, 2900000, 'xiaomi-redmi-note-8-blue-1-600x600.jpg', NULL, 1, NULL, NULL),
(88, 'Máy tính bảng Huawei MatePad', 14, 'Huawei vừa ra mắt máy tính bảng Huawei MatePad với mức giá dễ tiếp cận. Được thiết kế mỏng nhẹ và đầy đủ các tính năng cần thiết, Huawei MatePad là sự lựa chọn tuyệt vời cho những ai yêu thích màn hình lớn nhưng lại thuận tiện dễ dàng di chuyển mang theo.', 6690000, NULL, 'huawei-matepad-xanh-600x600-600x600.jpg', NULL, 1, NULL, NULL),
(89, 'Lenovo IdeaPad S145 15IIL', 13, 'Laptop Lenovo IdeaPad S145 15IIL i3 (81W8001XVN) thuộc phân khúc laptop học tập văn phòng cơ bản với mức giá tốt. Máy có cấu hình ổn, đủ chạy các ứng dụng văn phòng phổ biến, điểm nổi bật của Lenovo IdeaPad S145 là ổ cứng SSD siêu nhanh, thiết kế mỏng gọn, tinh tế.', 10390000, NULL, 'lenovo-ideapad-s145-81w8001xvn-a4-216292-600x600.jpg', NULL, 1, NULL, NULL),
(90, 'Laptop Acer Aspire ', 13, 'Acer Aspire 3 A315 54K 37B0 i3 (NX.HEESV.00D) là mẫu laptop học tập - văn phòng được thiết kế gọn nhẹ, vẫn mang đến nhiều điểm nổi bật khi sở hữu cấu hình tốt, ổ cứng SSD cực nhanh và màn hình Full HD sắc nét. Sản phẩm sẽ là lựa chọn tuyệt vời trong tầm giá.', 11990000, 9900000, 'acer-aspire-3-a315-nx-heesv-00d-221251-1-600x600.jpg', NULL, 1, NULL, NULL),
(91, 'Điện thoại OPPO Reno 4', 10, 'OPPO Reno4 - Chiếc điện thoại có thiết kế thời thượng, hiệu năng mạnh mẽ cùng bộ 4 camera siêu ấn tượng, tối ưu hóa cho chụp ảnh và quay phim siêu sắc nét, hứa hẹn sẽ là sản phẩm đáng để nâng cấp của hãng OPPO trong năm nay.', 7490000, NULL, 'oppo-reno4-tim-1-600x600.jpg', NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `link` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `link`, `image`) VALUES
(5, '', 'banner5.png'),
(6, '', 'banner6.png'),
(7, '', 'banner7.png'),
(8, '', 'banner8.png'),
(9, '', 'banner9.png'),
(10, '', 'Quà+hìnhdesk-1200x351.png'),
(11, '', 'KHA2970copy-1920x1080.jpg'),
(12, '', 'Frame2-1920x500.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_phone` varchar(255) NOT NULL,
  `create_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `create_at`, `update_at`, `role`) VALUES
(1, 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Chien Duy', '0762766682', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_products`
--

CREATE TABLE `type_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type_products`
--

INSERT INTO `type_products` (`id`, `name`, `description`, `status`, `image`, `created_at`, `updated_at`) VALUES
(8, 'Iphone', 'IPhone là điện thoại thông minh do Apple phát triển', 1, 'og-default.jpg', '2021-04-03 16:15:29', '2021-04-03 16:15:29'),
(9, 'Samsung', 'Samsung, công ty Hàn Quốc là một trong những nhà sản xuất thiết bị điện tử lớn nhất thế giới', 1, 'Samsung-Logo.png', '2021-04-03 16:25:00', '2021-04-03 16:25:00'),
(10, 'Oppo', 'OPPO Electronics Corp là một nhà sản xuất thiết bị điện tử lớn của Trung Quốc.', 0, 'oppo-logo-2019.png', '2021-04-03 16:25:56', '2021-04-03 16:25:56'),
(11, 'Xiaomi', 'Xiaomi là một công ty điện tử của Trung Quốc', 0, 'logo-xiaomi.png', '2021-04-03 16:27:01', '2021-04-03 16:27:01'),
(12, 'Vsmart', 'Công ty Cổ phần Nghiên cứu & Sản xuất VinSmart là thành viên của Công ty Cổ phần Tập đoàn Vingroup - một trong những tập đoàn 100% vốn lớn nhất Việt Nam, chuyên về Công nghệ, Công nghiệp, Thương mại & Dịch vụ. VinSmart được thành lập vào tháng 6 năm 2018', 0, 'logo-vsmart.jpg', '2021-04-03 16:28:26', '2021-04-03 16:28:26'),
(13, 'Laptop', 'Máy tính xách tay hay máy vi tính xách tay (Tiếng Anh: laptop computer hay laptop PC) là một chiếc máy tính cá nhân nhỏ gọn có thể mang xách được. Nó thường có trọng lượng nhẹ, tùy thuộc vào hãng sản xuất và kiểu máy dành cho mỗi đối tượng có mục đích sử dụng khác nhau.', 0, 'laptop.jpg', '2021-04-03 08:36:21', '2021-04-03 08:36:21'),
(14, 'Tablet', 'Máy tính bảng (Tiếng Anh: tablet computer hay tablet PC), thông thường với hệ điều hành di động và mạch xử lý màn hình cảm ứng và pin có thể sạc lại để sử dụng nhiều lần', 0, 'tablet.jpg', '2021-04-03 08:36:33', '2021-04-03 08:36:33'),
(15, 'Vivo ', 'Vivo là nhà sản xuất điện thoại thông minh đa quốc gia của Trung Quốc', 1, 'vivologo.png', '2021-04-03 16:30:15', '2021-04-03 16:30:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `phone`, `address`, `remember_token`, `created_at`, `updated_at`) VALUES
(7, 'Hồ Duy Chiến', 'chienhoo20@gmail.com', '$2y$10$2G/HNIoCRqwCgko4PFoXKeGaHp..acE8WyxXgDyTATMSq.HMcV6nq', '0762766682', 'Đà Nẵng', 'ViSuyrL9uzd0M4lL93BIhrZKpKgxq4HML3N4mh1y0z5LADed6B7mQC4cXAsB', '2021-03-27 16:32:16', '2021-03-27 16:32:16');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bills_ibfk_1` (`id_customer`);

--
-- Chỉ mục cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bill_detail_ibfk_2` (`id_product`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_id_type_foreign` (`id_type`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `type_products`
--
ALTER TABLE `type_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `type_products`
--
ALTER TABLE `type_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_id_type_foreign` FOREIGN KEY (`id_type`) REFERENCES `type_products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
