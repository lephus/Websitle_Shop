-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th1 25, 2021 lúc 11:37 AM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ecom_store`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `admin_id` int(10) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `admin_email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `admin_pass` varchar(255) CHARACTER SET latin1 NOT NULL,
  `admin_image` text CHARACTER SET latin1 NOT NULL,
  `admin_country` text CHARACTER SET latin1 NOT NULL,
  `admin_about` text CHARACTER SET latin1 NOT NULL,
  `admin_contact` varchar(255) CHARACTER SET latin1 NOT NULL,
  `admin_job` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_country`, `admin_about`, `admin_contact`, `admin_job`) VALUES
(2, 'Tatiana Saphira', 'tatiaCute@gmail.id', 'tatiana123', 'tatiana-saphira.jpg', 'Indonesia', 'Change the about description for Tatiana from chelsea Islan', '2222-2222-2222', 'MyMaid'),
(4, 'Nozomi Sasaki', 'papipupepo@gmail.jp', 'nozo123', 'Nozomi_Sasaki-.jpg', 'Japan', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui illum debitis dolorum ducimus aut maiores veritatis illo doloremque quibusdam placeat quod velit laudantium eligendi sunt et optio, harum in suscipit.', '312-009-323', 'MyWife'),
(5, 'Iko Uwais', 'iko@gmail.id', 'iko123', 'iko.png', 'Indonesia', 'This is for IKO', '081806833157', 'Fighter / Actor');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) CHARACTER SET latin1 NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(10) NOT NULL AUTO_INCREMENT,
  `cat_title` text CHARACTER SET latin1 NOT NULL,
  `cat_desc` text CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_desc`) VALUES
(1, ' Cat Men ', 'This Cat Men has been edited by the admin of this website'),
(2, 'Women', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.'),
(3, 'Kids', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.'),
(4, 'Other', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `customer_id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `customer_email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `customer_pass` varchar(255) CHARACTER SET latin1 NOT NULL,
  `customer_country` text CHARACTER SET latin1 NOT NULL,
  `customer_city` text CHARACTER SET latin1 NOT NULL,
  `customer_contact` varchar(255) CHARACTER SET latin1 NOT NULL,
  `customer_address` text CHARACTER SET latin1 NOT NULL,
  `customer_image` text CHARACTER SET latin1 NOT NULL,
  `customer_ip` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(5, 'Rianti', 'Riannti@gmail.com', 'rianti123', 'India', 'Calcuta', '8891822', 'Anywhere you want', 'member1.jpg', '::1'),
(6, 'James Bono', 'jamesbono@gmail.com', 'james1123', 'England', 'London', '555-2255-222', 'Hyde Park', 'member2.jpg', '::1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer_orders`
--

DROP TABLE IF EXISTS `customer_orders`;
CREATE TABLE IF NOT EXISTS `customer_orders` (
  `order_id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text CHARACTER SET latin1 NOT NULL,
  `order_date` date NOT NULL,
  `order_status` text CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(11, 6, 300, 206863956, 1, 'Small', '2019-02-06', 'Complete'),
(12, 6, 10, 206863956, 1, 'Small', '2019-02-06', 'Complete');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `payment_id` int(10) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text CHARACTER SET latin1 NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(6, 206863956, 10, 'Western Union', 123123, 321321, '02-09-2019');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pending_orders`
--

DROP TABLE IF EXISTS `pending_orders`;
CREATE TABLE IF NOT EXISTS `pending_orders` (
  `order_id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text CHARACTER SET latin1 NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text CHARACTER SET latin1 NOT NULL,
  `order_status` text CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(9, 6, 206863956, '10', 1, 'Small', 'pending'),
(10, 6, 206863956, '15', 1, 'Small', 'pending');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(10) NOT NULL AUTO_INCREMENT,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text CHARACTER SET latin1 NOT NULL,
  `product_img1` text CHARACTER SET latin1 NOT NULL,
  `product_img2` text CHARACTER SET latin1 NOT NULL,
  `product_img3` text CHARACTER SET latin1 NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_keywords` text CHARACTER SET latin1 NOT NULL,
  `product_desc` text CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`) VALUES
(1, 1, 2, '2018-10-15 09:20:12', 'Tokichoi Front Pocket Collared Dress', 'product_front.jpg', 'product-back.jpg', 'product_hang.jpg', 66, 'Dress', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente, dolorem tempore deleniti delectus numquam quam magni quidem veniam sequi nostrum sed eaque. Reiciendis quisquam totam nobis corrupti ullam at debitis!</p>'),
(2, 4, 3, '2018-10-18 18:27:12', 'Boys Puffer Coat With Detachable Hood', 'boys-Puffer-Coat-With-Detachable-Hood-1.jpg', 'boys-Puffer-Coat-With-Detachable-Hood-2.jpg', 'boys-Puffer-Coat-With-Detachable-Hood-3.jpg', 121, 'Hood', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur cupiditate animi, voluptas neque quasi qui unde fuga porro vero magnam maiores optio amet quos temporibus? Amet saepe fugit nostrum a?</p>'),
(3, 5, 2, '2018-10-18 18:29:33', 'Girl Polos T-Shirt', 'g-polos-tshirt-1.jpg', 'g-polos-tshirt-2.jpg', '', 55, 'Shirt', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur cupiditate animi, voluptas neque quasi qui unde fuga porro vero magnam maiores optio amet quos temporibus? Amet saepe fugit nostrum a?</p>'),
(4, 1, 1, '2018-10-18 18:31:29', 'Man Geox Winter Jacket', 'Man-Geox-Winter-jacket-1.jpg', 'Man-Geox-Winter-jacket-2.jpg', 'Man-Geox-Winter-jacket-3.jpg', 100, 'Snake Skin', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur cupiditate animi, voluptas neque quasi qui unde fuga porro vero magnam maiores optio amet quos temporibus? Amet saepe fugit nostrum a?</p>'),
(5, 1, 2, '2018-10-18 18:32:37', 'Women Red Winter Jacket', 'Red-Winter-jacket-1.jpg', 'Red-Winter-jacket-2.jpg', 'Red-Winter-jacket-3.jpg', 103, 'Korean Jacket', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur cupiditate animi, voluptas neque quasi qui unde fuga porro vero magnam maiores optio amet quos temporibus? Amet saepe fugit nostrum a?</p>'),
(6, 4, 2, '2018-10-18 18:33:44', 'Woman Waxed Cotton Coat', 'waxed-cotton-coat-woman-1.jpg', 'waxed-cotton-coat-woman-2.jpg', 'waxed-cotton-coat-woman-3.jpg', 211, 'Cotton', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur cupiditate animi, voluptas neque quasi qui unde fuga porro vero magnam maiores optio amet quos temporibus? Amet saepe fugit nostrum a?</p>'),
(7, 3, 2, '2018-10-18 18:34:52', 'High Heels Pantofel Brukat', 'High Heels Women Pantofel Brukat-1.jpg', 'High Heels Women Pantofel Brukat-2.jpg', 'High Heels Women Pantofel Brukat-3.jpg', 45, 'High Heel', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur cupiditate animi, voluptas neque quasi qui unde fuga porro vero magnam maiores optio amet quos temporibus? Amet saepe fugit nostrum a?</p>'),
(8, 3, 1, '2018-10-18 18:35:45', 'Adidas Suarez Slop On', 'Man-Adidas-Suarez-Slop-On-1.jpg', 'Man-Adidas-Suarez-Slop-On-2.jpg', 'Man-Adidas-Suarez-Slop-On-3.jpg', 51, 'Adidas Suarez', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur cupiditate animi, voluptas neque quasi qui unde fuga porro vero magnam maiores optio amet quos temporibus? Amet saepe fugit nostrum a?</p>'),
(9, 2, 1, '2018-10-18 18:36:50', 'Mont Blanc Belt Man', 'Mont-Blanc-Belt-man-1.jpg', 'Mont-Blanc-Belt-man-2.jpg', 'Mont-Blanc-Belt-man-3.jpg', 166, 'Belt', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur cupiditate animi, voluptas neque quasi qui unde fuga porro vero magnam maiores optio amet quos temporibus? Amet saepe fugit nostrum a?</p>'),
(10, 2, 2, '2018-10-18 18:37:37', 'Diamond Heart Ring', 'women-diamond-heart-ring-1.jpg', 'women-diamond-heart-ring-2.jpg', 'women-diamond-heart-ring-3.jpg', 300, 'Ring', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur cupiditate animi, voluptas neque quasi qui unde fuga porro vero magnam maiores optio amet quos temporibus? Amet saepe fugit nostrum a?</p>'),
(11, 5, 1, '2018-10-28 13:01:06', 'Grey Man T-Shirt', 'grey-man-1.jpg', 'grey-man-2.jpg', 'grey-man-3.jpg', 50, 'Casual', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi rem nemo, autem at ad temporibus, maiores ducimus sed quam enim reprehenderit distinctio similique debitis, quis corrupti est. Sed, rem, voluptatibus!</p>'),
(12, 5, 1, '2018-10-28 13:01:56', 'Man Polo Casual T-Shirt', 'Man-Polo-1.jpg', 'Man-Polo-2.jpg', 'Man-Polo-3.jpg', 45, 'Casual', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi rem nemo, autem at ad temporibus, maiores ducimus sed quam enim reprehenderit distinctio similique debitis, quis corrupti est. Sed, rem, voluptatibus!</p>'),
(13, 5, 1, '2018-10-28 13:02:40', 'Boy Polos T-Shirt', 'polos-tshirt-1.jpg', 'polos-tshirt-2.jpg', '', 40, 'Casual', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi rem nemo, autem at ad temporibus, maiores ducimus sed quam enim reprehenderit distinctio similique debitis, quis corrupti est. Sed, rem, voluptatibus!</p>'),
(14, 1, 1, '2018-10-28 13:03:50', 'Levi`s Trucker Jacket', 'levis-Trucker-Jacket.jpg', 'levis-Trucker-Jacket-2.jpg', 'levis-Trucker-Jacket-3.jpg', 98, 'Trucker', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi rem nemo, autem at ad temporibus, maiores ducimus sed quam enim reprehenderit distinctio similique debitis, quis corrupti est. Sed, rem, voluptatibus!</p>'),
(15, 2, 2, '2019-01-17 07:52:40', 'Hijab Girl New', 'hijab-anak-1.jpg', 'hijab-anak-2.jpg', 'hijab-anak-3.jpg', 10, 'Hijab Kids', '<p>This is just description for sampe product of hijab. And Cha cha cha And Cha cha cha And Cha cha cha And Cha cha cha And Cha cha cha And Cha cha cha And Cha cha cha And Cha cha cha And Cha cha cha And Cha cha cha And Cha cha cha</p>'),
(16, 5, 2, '2021-01-25 11:15:21', 'váy', 'tatiana-saphira.jpg', '', '', 1, 'váy', '<p>v&aacute;y</p>'),
(17, 1, 1, '2021-01-25 11:18:13', 'váy', '71796120_1259879247548081_937366716747350016_n.jpg', '', '', 1, 'dress', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE IF NOT EXISTS `product_categories` (
  `p_cat_id` int(10) NOT NULL AUTO_INCREMENT,
  `p_cat_title` text CHARACTER SET latin1 NOT NULL,
  `p_cat_desc` text CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`p_cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_desc`) VALUES
(1, ' Jackets Kulit', 'Tes Change description for product category Jackets'),
(2, 'Accessories', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.'),
(3, 'Shoes', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.'),
(4, 'Rain Coats ', 'This description is for the product category Rain Coats lol ^_^'),
(5, 'T-Shirt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `slide_id` int(10) NOT NULL AUTO_INCREMENT,
  `slide_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `slide_image` text CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`slide_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`) VALUES
(8, 'Slide Number 6', 'slide-6.jpg'),
(9, 'Slide Number 7', 'slide-7.jpg'),
(10, 'Editing Slide Number 8', 'slide-5.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;