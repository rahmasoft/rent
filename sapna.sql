-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 09 أبريل 2022 الساعة 18:04
-- إصدار الخادم: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sapna`
--

-- --------------------------------------------------------

--
-- بنية الجدول `productt`
--

CREATE TABLE `productt` (
  `productt_id` int(11) NOT NULL,
  `productt_name` varchar(255) NOT NULL,
  `tax1` int(11) NOT NULL,
  `tax2` int(11) NOT NULL,
  `tax3` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `order_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- بنية الجدول `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `order_no` varchar(50) NOT NULL,
  `order_date` date NOT NULL,
  `order_receiver_name` varchar(250) NOT NULL,
  `order_receiver_address` text NOT NULL,
  `order_total_before_tax` int(11) NOT NULL,
  `order_total_tax1` int(11) NOT NULL,
  `order_total_tax2` int(11) NOT NULL,
  `order_total_tax3` int(11) NOT NULL,
  `order_total_tax` int(11) NOT NULL,
  `order_total_after_tax` int(11) NOT NULL,
  `order_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `order_no`, `order_date`, `order_receiver_name`, `order_receiver_address`, `order_total_before_tax`, `order_total_tax1`, `order_total_tax2`, `order_total_tax3`, `order_total_tax`, `order_total_after_tax`, `order_datetime`) VALUES
(2, '99', '2022-04-04', 'rahma rabie', 'ljlkjljj', 4000, 0, 0, 0, 0, 4000, '2022-04-04 00:00:00'),
(3, '55555555', '2022-04-04', 'ryrhrr', 'hrtrtyyryt', 4016, 0, 0, 0, 0, 4016, '2022-04-04 00:00:00'),
(4, '1001', '2022-04-07', 'احمد محمد ربيع هديب', 'الجون شارع محمد صبرى', 100, 15, 5, 7, 27, 127, '2022-04-07 00:00:00'),
(5, '800', '2022-04-08', 'رشا حسين امين', 'الفيوم الجون شارع محمد صبرى', 540, 81, 0, 0, 81, 621, '2022-04-08 00:00:00'),
(6, '600', '2022-04-08', 'محمد ربيع هديب ربيع', 'تقسيم سليم برج الرحمة', 480, 72, 0, 0, 72, 552, '2022-04-08 00:00:00'),
(7, '222', '2022-04-08', 'اولاد ربيع هديب', 'الفيوم - شارع محمد صبرى', 5000, 750, 100, 50, 900, 5900, '2022-04-08 00:00:00'),
(8, '343243', '2022-04-09', 'ابى حبيبى رحمة الله تعالى', 'الجون شارع محمد صبرى منزل رقم7', 1170, 176, 0, 0, 176, 1346, '2022-04-09 00:00:00');

-- --------------------------------------------------------

--
-- بنية الجدول `tbl_order_item`
--

CREATE TABLE `tbl_order_item` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `order_item_quantity` int(10) NOT NULL,
  `order_item_price` int(10) NOT NULL,
  `order_item_actual_amount` int(11) NOT NULL,
  `order_item_tax1_rate` int(11) NOT NULL,
  `order_item_tax1_amount` int(11) NOT NULL,
  `order_item_tax2_rate` int(11) NOT NULL,
  `order_item_tax2_amount` int(11) NOT NULL,
  `order_item_tax3_rate` int(11) NOT NULL,
  `order_item_tax3_amount` int(11) NOT NULL,
  `order_item_final_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `tbl_order_item`
--

INSERT INTO `tbl_order_item` (`order_item_id`, `order_id`, `item_name`, `order_item_quantity`, `order_item_price`, `order_item_actual_amount`, `order_item_tax1_rate`, `order_item_tax1_amount`, `order_item_tax2_rate`, `order_item_tax2_amount`, `order_item_tax3_rate`, `order_item_tax3_amount`, `order_item_final_amount`) VALUES
(2, 2, 'كلادينج 8 مللى', 1000, 4, 4000, 0, 0, 0, 0, 0, 0, 4000),
(3, 3, 'كلادينج 8 مللى', 1000, 4, 4000, 0, 0, 0, 0, 0, 0, 4000),
(4, 3, 'jkkjhh', 4, 4, 16, 0, 0, 0, 0, 0, 0, 16),
(5, 4, 'هلتى صغير', 1, 100, 100, 15, 15, 5, 5, 7, 7, 127),
(10, 5, 'عسل نحل برسيم بشمع', 9, 60, 540, 15, 81, 0, 0, 0, 0, 621),
(12, 6, 'سيارة تويوتا', 80, 6, 480, 15, 72, 0, 0, 0, 0, 552),
(13, 7, 'منتج جديد جدا جدا', 100, 50, 5000, 15, 750, 2, 100, 1, 50, 5900),
(14, 8, 'جهاز هلتى صغير بوش', 10, 50, 500, 15, 75, 0, 0, 0, 0, 575),
(15, 8, 'جهاز رش بويات ميكانيكى', 10, 20, 200, 15, 30, 0, 0, 0, 0, 230),
(16, 8, 'جاز سنفرة ترددى 1000 وات', 20, 10, 200, 15, 30, 0, 0, 0, 0, 230),
(17, 8, 'جاز شنيور كبير', 15, 10, 150, 15, 23, 0, 0, 0, 0, 173),
(18, 8, 'مسمار قلاووظ مقاس 40', 10, 12, 120, 15, 18, 0, 0, 0, 0, 138);

-- --------------------------------------------------------

--
-- بنية الجدول `tools`
--

CREATE TABLE `tools` (
  `id` int(11) NOT NULL,
  `toolname` varchar(30) NOT NULL,
  `toolrent` int(4) NOT NULL,
  `tooltamen` int(4) NOT NULL,
  `tooltalef` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `tools`
--

INSERT INTO `tools` (`id`, `toolname`, `toolrent`, `tooltamen`, `tooltalef`) VALUES
(1, 'مقص يدوي ', 10, 5, 500),
(2, 'مولد كهرباء 3 ك', 20, 15, 1600),
(3, 'ماتور هواء', 30, 8, 680),
(4, ' هلتى كبير', 40, 30, 100),
(5, ' هلتى وسط', 50, 40, 200),
(6, ' هلتى صغير', 10, 20, 300),
(7, 'صاروخ كبير', 10, 20, 400),
(8, 'صاروخ صغير', 10, 20, 500),
(9, 'توصيله', 30, 40, 600),
(10, 'مروحة', 50, 60, 700),
(11, 'ماكينة  لحام', 70, 80, 800),
(12, 'ماكينة  لحام مواسير   ', 90, 100, 900),
(13, 'دسك حديد', 110, 120, 1000),
(14, 'مقص  سيراميك', 130, 140, 1100),
(15, 'منشار أركت صغير', 150, 160, 1200),
(16, 'فارة', 170, 180, 1300),
(17, 'منشار  خشب', 190, 200, 1400),
(18, 'هزاز', 210, 220, 1500),
(19, 'عربية براويته', 230, 240, 1600),
(20, 'سلم 6*6 ', 250, 260, 1700),
(21, 'سلم  4*4', 270, 280, 1800),
(22, 'سلم  3*3 ', 290, 300, 1900),
(23, 'سلم   3 م', 310, 320, 2000),
(24, 'سلم  2 م', 330, 340, 2100),
(25, 'شاكوش', 350, 360, 2200),
(26, 'موس رش', 370, 380, 2300),
(27, 'عصافير ', 390, 400, 2400),
(28, 'فاروع ', 410, 420, 2500),
(29, 'كريك', 430, 440, 2600),
(30, 'دريل  كبير', 450, 460, 2700),
(31, 'دريل صغير', 470, 480, 2800),
(32, 'منشار شجر كهرباء', 490, 500, 2900),
(33, 'غطاس', 510, 520, 3000),
(34, 'زر صنية', 530, 540, 3100),
(35, 'تنايات', 550, 560, 3200),
(36, 'مقص حديد ', 570, 580, 3300),
(37, 'منفاخ هواء ', 590, 600, 3400),
(38, 'لي هزاز', 610, 620, 3500),
(39, 'مولد كهرباء 8 ك', 630, 640, 3600),
(40, 'منشار اركت كبير ', 650, 660, 3700),
(41, 'ملاوينة ', 670, 680, 3800),
(42, 'عتلة', 690, 700, 3900),
(43, 'ماتور مياة ', 710, 720, 4000),
(44, 'منشار شجر  بنزين ', 730, 740, 4100),
(45, 'مكينة صنفره', 750, 760, 4200),
(46, 'سقاله', 770, 780, 4300),
(47, 'كفرات سقالة', 790, 800, 4400),
(48, 'ريشة جبس', 810, 820, 4500),
(49, 'مسدس رش', 25, 11, 250);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `productt`
--
ALTER TABLE `productt`
  ADD PRIMARY KEY (`productt_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_item`
--
ALTER TABLE `tbl_order_item`
  ADD PRIMARY KEY (`order_item_id`);

--
-- Indexes for table `tools`
--
ALTER TABLE `tools`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `productt`
--
ALTER TABLE `productt`
  MODIFY `productt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_order_item`
--
ALTER TABLE `tbl_order_item`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tools`
--
ALTER TABLE `tools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
