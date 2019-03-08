-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2019 at 08:50 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dokkan`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `ads_key` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `name`, `ads_key`, `status`) VALUES
(1, 'Home : Above Top Selling Products', 'ca-app-pub-8779080242745729/3499191653', '1'),
(2, 'Home : Above Deal Of The Day', 'ca-app-pub-8779080242745729/3499191653', '1'),
(3, 'Above Footer', 'ca-app-pub-8779080242745729/3499191653', '1'),
(4, 'Product Page : Footer', 'ca-app-pub-8779080242745729/3499191653', '1'),
(5, 'Product Page : Full page', 'ca-app-pub-8779080242745729/9795214681', '1');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `slider_title` varchar(100) NOT NULL,
  `slider_url` varchar(100) NOT NULL,
  `slider_image` varchar(100) NOT NULL,
  `sub_cat` int(11) NOT NULL,
  `slider_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `slider_title`, `slider_url`, `slider_image`, `sub_cat`, `slider_status`) VALUES
(1, 'Banner', '', 'minerva-banner.jpg', 42, 1),
(5, 'banne2', '', 'banner@2x1.jpg', 4, 1),
(6, 'easy_to_you', '', 'banner-12.png', 10, 1),
(7, 'casca', 'https://demo.gogrocer.app/index.php/admin/addslider', '', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(200) NOT NULL,
  `qty` int(200) NOT NULL,
  `user_id` int(200) NOT NULL,
  `product_id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `arb_title` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `parent` int(50) NOT NULL,
  `leval` int(50) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(200) NOT NULL,
  `image2` varchar(200) NOT NULL,
  `image2_status` varchar(300) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `arb_title`, `slug`, `parent`, `leval`, `description`, `image`, `image2`, `image2_status`, `status`) VALUES
(1, 'Vegetables', 'خضراوات', 'vegetables', 0, 0, '', 'vegetables.jpg', '', '', '1'),
(2, 'Fruits', 'فواكه', 'fruits', 0, 0, '', 'Fruits.jpg', '', '', '1'),
(3, 'Coffe', 'قهوة', 'coffe', 0, 0, '', 'coffe.jpg', '', '', '1'),
(4, 'Turkish Coffe', 'قهوة تركية', 'turkish-coffe', 3, 1, '', 'Turkish-coffee.jpg', '', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(200) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`) VALUES
(6, 'Jeddah | جدة');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('mdn2vb3qkvm9b1lpjtetvbdp0g101eeo', '127.0.0.1', 1548870018, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383837303031383b),
('b5seoj8vv8aetme0jm9ta2lfo0orq8ek', '127.0.0.1', 1548870213, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383837303032343b757365725f6e616d657c733a31343a224d61696e2041646d696e20303037223b757365725f656d61696c7c733a31383a227465636d616e696340676d61696c2e636f6d223b6c6f676765645f696e7c623a313b757365725f69647c733a323a223637223b757365725f747970655f69647c733a313a2230223b6c616e67756167657c733a373a22656e676c697368223b),
('vl5nmb9ehcdonv945o5djhts9g9u4pch', '127.0.0.1', 1548870416, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383837303333323b757365725f6e616d657c733a31343a224d61696e2041646d696e20303037223b757365725f656d61696c7c733a31383a227465636d616e696340676d61696c2e636f6d223b6c6f676765645f696e7c623a313b757365725f69647c733a323a223637223b757365725f747970655f69647c733a313a2230223b6c616e67756167657c733a373a22656e676c697368223b),
('pfuf6r7q793nk35gi8uksqrhukdpbqql', '127.0.0.1', 1548870972, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383837303637363b757365725f6e616d657c733a31343a224d61696e2041646d696e20303037223b757365725f656d61696c7c733a31383a227465636d616e696340676d61696c2e636f6d223b6c6f676765645f696e7c623a313b757365725f69647c733a323a223637223b757365725f747970655f69647c733a313a2230223b6c616e67756167657c733a373a22656e676c697368223b),
('cg1s4vgg59u5a2km88fboumima7s4tpj', '127.0.0.1', 1548871180, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383837303938363b757365725f6e616d657c733a31343a224d61696e2041646d696e20303037223b757365725f656d61696c7c733a31383a227465636d616e696340676d61696c2e636f6d223b6c6f676765645f696e7c623a313b757365725f69647c733a323a223637223b757365725f747970655f69647c733a313a2230223b6c616e67756167657c733a373a22656e676c697368223b6d6573736167657c733a3336343a223c64697620636c6173733d22616c65727420616c6572742d7375636365737320616c6572742d6469736d69737369626c652220726f6c653d22616c657274223e0d0a202020202020202020202020202020202020202020202020202020202020202020203c627574746f6e20747970653d22627574746f6e2220636c6173733d22636c6f73652220646174612d6469736d6973733d22616c657274223e3c7370616e20617269612d68696464656e3d2274727565223e2674696d65733b3c2f7370616e3e3c7370616e20636c6173733d2273722d6f6e6c79223e436c6f73653c2f7370616e3e3c2f627574746f6e3e0d0a202020202020202020202020202020202020202020202020202020202020202020203c7374726f6e673e53756363657373213c2f7374726f6e673e2055736572204164646564205375636365737366756c6c790d0a20202020202020202020202020202020202020202020202020202020202020203c2f6469763e223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('qigs5d2hf9s7qrbnrg2gjtc9kt5frgdh', '127.0.0.1', 1548871620, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383837313336373b757365725f6e616d657c733a31333a224a656464616820d8acd8afd8a9223b757365725f656d61696c7c733a32313a2273746f7265303140646f6b6b616e2e636f6d2e7361223b6c6f676765645f696e7c623a313b757365725f69647c733a333a22323230223b757365725f747970655f69647c733a313a2230223b),
('166qk94od3r0nk19e4t46q7pto8egteo', '127.0.0.1', 1548871859, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383837313639303b757365725f6e616d657c733a31333a224a656464616820d8acd8afd8a9223b757365725f656d61696c7c733a32313a2273746f7265303140646f6b6b616e2e636f6d2e7361223b6c6f676765645f696e7c623a313b757365725f69647c733a333a22323230223b757365725f747970655f69647c733a313a2230223b),
('cn3u2dov8ebed2c1eq6mdl06mc135h4e', '127.0.0.1', 1548872149, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383837313837373b757365725f6e616d657c733a31343a224d61696e2041646d696e20303037223b757365725f656d61696c7c733a31383a227465636d616e696340676d61696c2e636f6d223b6c6f676765645f696e7c623a313b757365725f69647c733a323a223637223b757365725f747970655f69647c733a313a2230223b6c616e67756167657c733a373a22656e676c697368223b),
('bnt0huhfno3rvubes3qjhlvu2ndcvvpp', '127.0.0.1', 1548872638, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383837323334373b757365725f6e616d657c733a31343a224d61696e2041646d696e20303037223b757365725f656d61696c7c733a31383a227465636d616e696340676d61696c2e636f6d223b6c6f676765645f696e7c623a313b757365725f69647c733a323a223637223b757365725f747970655f69647c733a313a2230223b6c616e67756167657c733a373a22656e676c697368223b),
('nlm5ocj3r77qr4pp9018j5udombflg5u', '127.0.0.1', 1548872904, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383837323635383b757365725f6e616d657c733a31343a224d61696e2041646d696e20303037223b757365725f656d61696c7c733a31383a227465636d616e696340676d61696c2e636f6d223b6c6f676765645f696e7c623a313b757365725f69647c733a323a223637223b757365725f747970655f69647c733a313a2230223b6c616e67756167657c733a373a22656e676c697368223b737563636573735f7265717c733a3333333a223c64697620636c6173733d22616c65727420616c6572742d7375636365737320616c6572742d6469736d69737369626c652220726f6c653d22616c657274223e3c6920636c6173733d2266612066612d636865636b223e3c2f693e3c627574746f6e20747970653d22627574746f6e2220636c6173733d22636c6f73652220646174612d6469736d6973733d22616c657274223e3c7370616e20617269612d68696464656e3d2274727565223e2674696d65733b3c2f7370616e3e3c7370616e20636c6173733d2273722d6f6e6c79223e436c6f73653c2f7370616e3e3c2f627574746f6e3e0d0a20202020202020202020202020202020202020202020202020202020202020202020202020203c7374726f6e673e53756363657373213c2f7374726f6e673e20596f75722070616765207361766564207375636365737366756c6c792e2e2e3c2f6469763e223b5f5f63695f766172737c613a313a7b733a31313a22737563636573735f726571223b733a333a226f6c64223b7d),
('jcbgt7nnudnafp230sugamb4nlku44ci', '127.0.0.1', 1548873264, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383837323936353b757365725f6e616d657c733a31343a224d61696e2041646d696e20303037223b757365725f656d61696c7c733a31383a227465636d616e696340676d61696c2e636f6d223b6c6f676765645f696e7c623a313b757365725f69647c733a323a223637223b757365725f747970655f69647c733a313a2230223b6c616e67756167657c733a373a22656e676c697368223b),
('c6bplf01seg0bq5tcc9ui5qtecg9cue0', '127.0.0.1', 1548873402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383837333339343b757365725f6e616d657c733a31343a224d61696e2041646d696e20303037223b757365725f656d61696c7c733a31383a227465636d616e696340676d61696c2e636f6d223b6c6f676765645f696e7c623a313b757365725f69647c733a323a223637223b757365725f747970655f69647c733a313a2230223b6c616e67756167657c733a373a22656e676c697368223b),
('m2g1jagg2mecb7qcufrj0aaldgbvfukn', '127.0.0.1', 1548873750, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383837333637333b757365725f6e616d657c733a31333a224a656464616820d8acd8afd8a9223b757365725f656d61696c7c733a32313a2273746f7265303140646f6b6b616e2e636f6d2e7361223b6c6f676765645f696e7c623a313b757365725f69647c733a333a22323230223b757365725f747970655f69647c733a313a2230223b),
('80vk5bme04lh7hu9q795bqqv3p7gd9sq', '127.0.0.1', 1548873945, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383837333732303b757365725f6e616d657c733a31333a224a656464616820d8acd8afd8a9223b757365725f656d61696c7c733a32313a2273746f7265303140646f6b6b616e2e636f6d2e7361223b6c6f676765645f696e7c623a313b757365725f69647c733a333a22323230223b757365725f747970655f69647c733a313a2230223b6c616e67756167657c733a373a22656e676c697368223b),
('b1jedbv6r5sve8f8pal5ua9u1in14qcr', '127.0.0.1', 1548874097, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383837343039373b757365725f6e616d657c733a31333a224a656464616820d8acd8afd8a9223b757365725f656d61696c7c733a32313a2273746f7265303140646f6b6b616e2e636f6d2e7361223b6c6f676765645f696e7c623a313b757365725f69647c733a333a22323230223b757365725f747970655f69647c733a313a2230223b),
('rq7disgfrh5tmjbeer1lljoshniqschi', '127.0.0.1', 1548874165, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383837343131323b757365725f6e616d657c733a31343a224d61696e2041646d696e20303037223b757365725f656d61696c7c733a31383a227465636d616e696340676d61696c2e636f6d223b6c6f676765645f696e7c623a313b757365725f69647c733a323a223637223b757365725f747970655f69647c733a313a2230223b6c616e67756167657c733a373a22656e676c697368223b),
('32vl9qno24b0pmuod0v5g68iksi48q50', '127.0.0.1', 1548874152, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383837343133393b757365725f6e616d657c733a31333a224a656464616820d8acd8afd8a9223b757365725f656d61696c7c733a32313a2273746f7265303140646f6b6b616e2e636f6d2e7361223b6c6f676765645f696e7c623a313b757365725f69647c733a333a22323230223b757365725f747970655f69647c733a313a2230223b6c616e67756167657c733a363a22617261626963223b),
('p8ap0f566ub04db06sik9up83p9p0pde', '127.0.0.1', 1548874580, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383837343538303b757365725f6e616d657c733a31343a224d61696e2041646d696e20303037223b757365725f656d61696c7c733a31383a227465636d616e696340676d61696c2e636f6d223b6c6f676765645f696e7c623a313b757365725f69647c733a323a223637223b757365725f747970655f69647c733a313a2230223b6c616e67756167657c733a373a22656e676c697368223b);

-- --------------------------------------------------------

--
-- Table structure for table `closing_hours`
--

CREATE TABLE `closing_hours` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `from_time` time NOT NULL,
  `to_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `closing_hours`
--

INSERT INTO `closing_hours` (`id`, `date`, `from_time`, `to_time`) VALUES
(1, '2017-02-06', '10:30:00', '16:00:00'),
(3, '2017-11-15', '09:00:00', '21:00:00'),
(4, '2017-04-10', '09:00:00', '19:00:00'),
(5, '2017-05-05', '09:00:00', '21:00:00'),
(6, '2017-12-12', '09:30:00', '19:00:00'),
(7, '1970-01-01', '03:00:00', '03:00:00'),
(13, '2018-06-27', '00:00:00', '00:00:00'),
(15, '2018-07-01', '00:00:00', '13:00:00'),
(16, '2018-07-20', '05:00:00', '12:00:00'),
(17, '2018-07-25', '00:00:00', '00:00:00'),
(18, '2018-07-26', '00:00:00', '13:00:00'),
(19, '2018-08-11', '00:00:00', '13:00:00'),
(20, '2018-08-18', '10:00:00', '10:00:00'),
(21, '2018-08-22', '00:00:00', '00:00:00'),
(22, '2018-08-23', '00:00:00', '12:00:00'),
(23, '2018-08-29', '05:00:00', '07:00:00'),
(24, '2018-08-29', '07:00:00', '09:00:00'),
(25, '2018-09-02', '10:00:00', '15:00:00'),
(26, '2018-09-04', '00:00:00', '01:00:00'),
(27, '2018-09-07', '00:00:00', '00:00:00'),
(28, '2018-09-07', '00:00:00', '00:00:00'),
(29, '2018-09-09', '00:00:00', '18:09:00'),
(30, '2018-09-27', '00:00:00', '00:05:00'),
(31, '2018-10-04', '00:00:00', '12:00:00'),
(32, '2018-10-11', '10:00:00', '23:00:00'),
(33, '2018-11-11', '06:00:00', '20:00:00'),
(34, '2018-11-13', '00:00:00', '00:00:00'),
(35, '2018-11-19', '23:57:00', '12:00:00'),
(36, '2018-11-21', '09:00:00', '19:00:00'),
(37, '2018-11-21', '09:00:00', '19:00:00'),
(38, '2018-11-21', '09:00:00', '19:00:00'),
(39, '2018-11-26', '00:00:00', '21:00:00'),
(40, '2018-11-27', '00:00:00', '00:00:00'),
(41, '2018-11-27', '12:00:00', '12:00:00'),
(42, '2018-12-16', '00:00:00', '12:00:00'),
(43, '2018-12-25', '01:00:00', '02:00:00'),
(44, '2018-12-25', '00:00:00', '10:00:00'),
(45, '2019-01-15', '08:00:00', '16:00:00'),
(46, '2019-01-27', '00:00:00', '00:02:00'),
(47, '2019-01-27', '09:58:00', '09:58:00');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `coupon_name` varchar(200) NOT NULL,
  `coupon_code` varchar(20) NOT NULL,
  `valid_from` varchar(20) NOT NULL,
  `valid_to` varchar(20) NOT NULL,
  `validity_type` varchar(50) NOT NULL,
  `product_name` varchar(150) NOT NULL,
  `discount_type` varchar(50) NOT NULL,
  `discount_value` int(11) NOT NULL,
  `cart_value` int(11) NOT NULL,
  `uses_restriction` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_name`, `coupon_code`, `valid_from`, `valid_to`, `validity_type`, `product_name`, `discount_type`, `discount_value`, `cart_value`, `uses_restriction`) VALUES
(1, 'hh', '12345', '24/01/2019', '31/01/2019', '', '', '', 1000, 40, 4);

-- --------------------------------------------------------

--
-- Table structure for table `deal_product`
--

CREATE TABLE `deal_product` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `deal_price` varchar(200) NOT NULL,
  `start_date` varchar(200) NOT NULL,
  `start_time` varchar(200) NOT NULL,
  `end_date` varchar(200) NOT NULL,
  `end_time` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deal_product`
--

INSERT INTO `deal_product` (`id`, `product_id`, `product_name`, `deal_price`, `start_date`, `start_time`, `end_date`, `end_time`) VALUES
(42, 0, 'Almonds', '200', '16/01/2019', '00:00', '31/01/2019', '00:20'),
(43, 0, 'daal', '20', '01/01/2019', '01:00', '31/01/2019', '01:00');

-- --------------------------------------------------------

--
-- Table structure for table `deelofday`
--

CREATE TABLE `deelofday` (
  `id` int(11) NOT NULL,
  `product_price` varchar(500) NOT NULL,
  `image_title` varchar(200) NOT NULL,
  `img_url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deelofday`
--

INSERT INTO `deelofday` (`id`, `product_price`, `image_title`, `img_url`) VALUES
(4, '48', 'Ghari-Detergent', 'http://neerajbisht.com/grocery_test/img/deelofday/ghari-detergent-powder.png');

-- --------------------------------------------------------

--
-- Table structure for table `delivered_order`
--

CREATE TABLE `delivered_order` (
  `sale_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `on_date` date NOT NULL,
  `delivery_time_from` varchar(200) NOT NULL,
  `delivery_time_to` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `note` longtext NOT NULL,
  `is_paid` int(11) NOT NULL,
  `total_amount` double NOT NULL,
  `total_rewards` varchar(200) NOT NULL,
  `total_kg` double NOT NULL,
  `total_items` double NOT NULL,
  `socity_id` int(11) NOT NULL,
  `delivery_address` longtext NOT NULL,
  `location_id` int(11) NOT NULL,
  `delivery_charge` double NOT NULL,
  `new_store_id` varchar(200) NOT NULL DEFAULT '0',
  `assign_to` int(11) NOT NULL DEFAULT '0',
  `payment_method` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `delivered_order`
--

INSERT INTO `delivered_order` (`sale_id`, `user_id`, `on_date`, `delivery_time_from`, `delivery_time_to`, `status`, `note`, `is_paid`, `total_amount`, `total_rewards`, `total_kg`, `total_items`, `socity_id`, `delivery_address`, `location_id`, `delivery_charge`, `new_store_id`, `assign_to`, `payment_method`) VALUES
(133, 132, '2018-04-28', '11:30:00', '12:00:00', 4, '', 0, 1315, '', 5, 2, 935, '123\n, 123', 27, 55, '0', 0, ''),
(881, 343, '2018-08-16', '09:00 pm', '09:30 pm', 4, '', 0, 715, '100', 10, 1, 945, '11\n, 11', 207, 25, '', 0, 'Cash On Delivery'),
(891, 351, '2018-08-18', '12:30 pm', '01:00 pm', 4, '', 0, 715, '100', 10, 1, 945, '111\n, 111', 214, 25, '', 0, 'Cash On Delivery'),
(892, 351, '2018-08-19', '01:00 pm', '01:30 pm', 4, '', 0, 94, '10', 1, 1, 945, '111\n, 111', 214, 25, '', 0, 'Store Pick Up'),
(893, 351, '2018-08-18', '09:30 pm', '10:00 pm', 4, '', 0, 3990, '390', 10, 1, 950, '111\n, 111', 216, 0, '', 0, 'Cash On Delivery'),
(894, 351, '2018-08-18', '09:30 pm', '10:00 pm', 4, '', 0, 3990, '390', 10, 1, 950, '111\n, 111', 216, 0, '', 0, 'Cash On Delivery'),
(896, 351, '2018-08-18', '01:00 pm', '01:30 pm', 4, '', 0, 6025, '0', 5, 1, 945, '111\n, 111', 214, 25, '', 0, 'Cash On Delivery'),
(897, 351, '2018-08-18', '08:00 pm', '08:30 pm', 4, '', 0, 6025, '0', 5, 1, 945, '111\n, 111', 214, 25, '', 0, 'Cash On Delivery'),
(906, 218, '2018-08-20', '04:30 pm', '05:00 pm', 4, '', 0, 112, '0', 2, 2, 945, '244\n, 244', 185, 25, '', 0, 'Cash On Delivery');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy`
--

CREATE TABLE `delivery_boy` (
  `id` int(11) NOT NULL,
  `user_name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `user_email` varchar(200) CHARACTER SET utf8 NOT NULL,
  `user_password` varchar(200) CHARACTER SET utf8 NOT NULL,
  `user_phone` varchar(200) CHARACTER SET utf8 NOT NULL,
  `user_status` varchar(200) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_boy`
--

INSERT INTO `delivery_boy` (`id`, `user_name`, `user_email`, `user_password`, `user_phone`, `user_status`) VALUES
(1, 'Ebrahim', 'e.del003@dokkan.com.sa', '1234567', '1234567891', '1'),
(8, 'ابو محمد', 'm.del002@dokkan.com.sa', '1234567', '7381568846', '1'),
(9, 'احمد', 'a.del001@dokkan.com.sa', '1234567', '05375259111', '1');

-- --------------------------------------------------------

--
-- Table structure for table `feature_slider`
--

CREATE TABLE `feature_slider` (
  `id` int(11) NOT NULL,
  `slider_title` varchar(100) NOT NULL,
  `slider_url` varchar(100) NOT NULL,
  `slider_image` varchar(100) NOT NULL,
  `sub_cat` int(200) NOT NULL,
  `slider_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feature_slider`
--

INSERT INTO `feature_slider` (`id`, `slider_title`, `slider_url`, `slider_image`, `sub_cat`, `slider_status`) VALUES
(13, 'huggies', '', 'banner@2x_copy.jpg', 10, 1),
(15, 'test', 'https://google.com', 'images_(1).jpeg', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `header_categories`
--

CREATE TABLE `header_categories` (
  `id` int(40) NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `parent` int(50) NOT NULL,
  `leval` int(50) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `header_categories`
--

INSERT INTO `header_categories` (`id`, `title`, `slug`, `parent`, `leval`, `description`, `image`, `status`) VALUES
(10004, 'HouseHold Needs', 'household-needs', 5, 1, '', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `header_products`
--

CREATE TABLE `header_products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_description` longtext NOT NULL,
  `product_image` varchar(200) NOT NULL,
  `category_id` int(11) NOT NULL,
  `in_stock` int(11) NOT NULL,
  `price` double NOT NULL,
  `unit_value` double NOT NULL,
  `unit` varchar(10) NOT NULL,
  `increament` double NOT NULL,
  `rewards` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `header_products`
--

INSERT INTO `header_products` (`product_id`, `product_name`, `product_description`, `product_image`, `category_id`, `in_stock`, `price`, `unit_value`, `unit`, `increament`, `rewards`) VALUES
(100003, 'Tester', 'HHh', '', 102, 1, 50, 1, 'kg', 0, '15');

-- --------------------------------------------------------

--
-- Table structure for table `icons`
--

CREATE TABLE `icons` (
  `id` int(255) NOT NULL,
  `service` varchar(500) NOT NULL,
  `image_name` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `icons`
--

INSERT INTO `icons` (`id`, `service`, `image_name`) VALUES
(1, 'Beverages', 'http://neerajbisht.com/grocery_test/img/icon/Beverages.png'),
(12, 'Breakfast Dairy', 'http://neerajbisht.com/grocery_test/img/icon/Breakfast_Dairy.png');

-- --------------------------------------------------------

--
-- Table structure for table `instamojo`
--

CREATE TABLE `instamojo` (
  `id` int(200) NOT NULL,
  `api_key` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `instamojo`
--

INSERT INTO `instamojo` (`id`, `api_key`, `status`) VALUES
(1, 'rez_test_JzclM3LTkxBGXs', '1');

-- --------------------------------------------------------

--
-- Table structure for table `language_setting`
--

CREATE TABLE `language_setting` (
  `id` int(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `language_setting`
--

INSERT INTO `language_setting` (`id`, `status`) VALUES
(1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `pageapp`
--

CREATE TABLE `pageapp` (
  `id` int(11) NOT NULL,
  `pg_title` varchar(200) NOT NULL,
  `pg_slug` varchar(100) NOT NULL,
  `pg_descri` longtext NOT NULL,
  `pg_status` int(50) NOT NULL,
  `pg_foot` int(50) NOT NULL,
  `crated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pageapp`
--

INSERT INTO `pageapp` (`id`, `pg_title`, `pg_slug`, `pg_descri`, `pg_status`, `pg_foot`, `crated_date`) VALUES
(1, 'Hello', 'hello', 'Hello', 0, 0, '2019-01-24 17:24:12'),
(2, 'About-Us', 'about-us', '<p>عنا.</p>', 0, 0, '2019-01-30 18:28:24'),
(3, 'Terms of Use', 'terms-of-use', '<p><strong>Terms and Conditions</strong></p>\r\n\r\n<p>Last Updated: 18 May 2018</p>\r\n\r\n<p>Bisht Technologies Private Limited, a company incorporated under the Companies Act, 1956 having its registered office at #3, 2nd floor, Kapil Complex Mukhani, Haldwani-263139 and operating office at A-130, Sector 63, Noida, who is the owner of the mobile application GoGrocer (the &quot;Application Provider&quot;) reserves all rights not expressly granted to you under these Terms and Conditions. GoGrocer mobile application, the product that is subject to these Terms and Conditions is hereafter referred to as the &quot;Licensed Application&quot;</p>\r\n\r\n<p><strong>Scope of License</strong></p>\r\n\r\n<p>This license granted to you for the Licensed Application by the Application Provider, is limited to a non-exclusive, non-transferable, license to use the Licensed Application on any Android&trade; and iOS device that you own or control. This license does not allow you to use the Licensed Application on any Android&trade; device that you do not own or control, and you may not distribute or make the Licensed Application available over a network where it could be used by multiple devices at the same time. Nothing contained in the Licensed Application should be considered as granting you, by implication or otherwise, any license or right to use any trade-marks, logos, or other names contained in the Licensed Application. You may not rent, lease, lend, sell, redistribute or sublicense the Licensed Application. You may not copy, decompile, reverse engineer, disassemble, attempt to derive the source code of, modify, or create derivative works of the Licensed Application, any updates, or any part thereof (except as and only to the extent any foregoing restriction is prohibited by applicable law or to the extent as may be permitted by the licensing terms governing use of any open sourced components included within the Licensed Application). Any attempt to do so is a violation of the rights of the Application Provider and its licensors. If you breach this restriction, you may be subject to prosecution and damages. The terms of the license will govern any upgrades provided by the Application Provider that replace and/or supplement the original Licensed Application, unless such upgrade is accompanied by a separate license in which case the terms of that license will govern its use.</p>\r\n\r\n<p><strong>User Access and Consent to Use of Data</strong></p>\r\n\r\n<p>By downloading and registering with the Licensed Application, you represent that you are not barred by any law, in any jurisdiction or bound by any agreement that restricts your rights to access, download and register with the Licensed Application and to make payments through the Licensed Application. In order to register with the Licensed Application you will have to provide your mobile number or email address. You will ensure that the mobile number / email adrresss provided for registration with the Licensed Application is your own and does not belong to any third party and that it is a valid and existing mobile number. You will solely be responsible for all usage or activity in your account after registration with the Licensed Application, including use of the account by any third party authorized by you. You agree that you will not use the Licensed Application to post pornographic content or content that may be deemed offensive, indecent, or objectionable, which content may or may not be identified as having explicit language or market, or sell business, products or services that is illegal. Any fraudulent, abusive, misuse or otherwise illegal activity may be grounds for removal of such content and/or termination of your account at the Application Provider&#39;s sole discretion. You will immediately notify the Application Provider at <a href=\"mailto:support@tecmanic.com\">support@tecmanic.com</a> / <a href=\"mailto:support@grogrocer.app\">support@grogrocer.app</a> of any known or suspected unauthorized use(s) of your account, or any known or suspected breach of security. The Application Provider will not be liable for any losses caused to you, whether directly or indirectly for any unauthorised use of your account or for your failure or delay to intimate the Application Provider of known or suspected unauthorized use(s) of your account, or any known or suspected breach of security. You acknowledge and agree that upon your registration and use of the Licensed Application, the Application Provider will collect, use, store and archive information in accordance with the aforementioned privacy policy</p>\r\n\r\n<p><strong>Eligibility Criteria</strong></p>\r\n\r\n<p>The services are not available to persons under the age of 18 or to anyone previously suspended or removed from the services by GoGrocer. By accepting these Terms &amp; Conditions or by otherwise using the Services or the Site, You represent that You are at least 18 years of age and have not been previously suspended or removed from the Services. You represent and warrant that you have the right, authority, and capacity to enter into this Agreement and to abide by all of the terms and conditions of this Agreement. You shall not impersonate any person or entity, or falsely state or otherwise misrepresent identity, age or affiliation with any person or entity.</p>\r\n\r\n<p><strong>Bill Payment</strong></p>\r\n\r\n<p>GoGrocer and/or the GoGrocer business partner or the biller reserve the right to charge a service fee or any other additional charge from the User, in addition to the fees for availing the Services. Fees structure can be revised by GoGrocer or GoGrocer business partner or the biller. GoGrocer offers a convenient and secure way to make payments towards Biller(s).</p>\r\n\r\n<p>In using the Bill Payment Service, you agree to:</p>\r\n\r\n<p>Provide true, accurate, current and complete information about yourself and your account information. If you provide any information that is untrue, inaccurate, not current or incomplete, or GoGrocer has reasonable grounds to suspect that such information is untrue, inaccurate, not current or incomplete, GoGrocer has the right to suspend or terminate your account and refuse any and all current or future use of the Service (or any portion thereof).</p>\r\n\r\n<p>GoGrocer assumes no responsibility and shall incur no liability if it is unable to complete the payment on Payment Date owing to any one or more of the following:</p>\r\n\r\n<p>&nbsp; If the Payment Instruction(s) issued by you is/are incomplete, inaccurate, invalid and delayed.</p>\r\n\r\n<p>&nbsp; If the Payment Account has insufficient funds/limits to cover for the payment amount.</p>\r\n\r\n<p>&nbsp; If your Bank refuses or delays honouring the Payment Instruction(s)</p>\r\n\r\n<p>&nbsp; If payment is not processed by biller upon receipt.</p>\r\n\r\n<p>&nbsp; Circumstances beyond the control of GoGrocer (including, but not limited to, fire, flood, natural disasters, bank strikes, power failure, systems failure like computer or telephone lines breakdown due to an unforeseeable cause or interference from an outside force)</p>\r\n\r\n<p>In case the bill payment is not effected for any reason, you will be intimated about the failed payment by an e-mail or via a message on GoGrocer app or SMS</p>\r\n\r\n<p><strong>Delivery fee</strong></p>\r\n\r\n<p>GoGrocer offers a facility to Business partners on GoGrocer platform to charge a Delivery fee from users, in addition to or over &amp; above the bill amount. Business partners have right to levy any charge on the transaction. Such charges are billed by the business partners and is not party to any such charge. GoGrocer is not liable for any dispute owing to the same.</p>\r\n\r\n<p><strong>Loyalty points OR Reward points</strong></p>\r\n\r\n<p>Loyalty program is a feature or facility offered by GoGrocer to business partners on GoGrocer platform. A business partner can avail the service and offer reward points to their customers on GoGrocer based on the terms or configuration of the Loyalty program activated. It helps business partners reach out to their most valuable customers directly and incentivize loyal customers through the program.</p>\r\n\r\n<p>Business partner can set the terms of reward points earned on any transaction made by customer with the business. For instance, if the business partner choses to offer 20 points on a transaction of value Rs 100, customer earns 20 points, which can be redeemed to get transferred to the wallet.</p>\r\n\r\n<p>Reward points can be earned on completion of a transaction which fulfil business partner&#39;s Reward points program configuration.</p>\r\n\r\n<p>Business partner has the rights to define the terms of the reward points program. Eligibility of a transaction to earn or burn is entirely dependent on the Business partner and GoGrocer is not responsible for the same.</p>\r\n\r\n<p>Reward points are expired automatically if the Business partner is no longer operational / choses to leave GoGrocer platform / goes bankrupt / shuts business. GoGrocer is not liable to honour the reward points nor is liable for any potential loss of the consumer during such an event.</p>\r\n\r\n<p>Reward points are not transferrable from one Business partner to another or from one user to another.</p>\r\n\r\n<p>Refund of an equivalent value of Reward points is not possible under any circumstances. The only way to use Reward points is to burn / redeem them during eligible transactions with the respective Business partner.</p>\r\n\r\n<p>GoGrocer offers a facility to consumers to redeem / apply / burn Reward points during the payment to the Business Partner. GoGrocer is not responsible for applying / redemption of the Reward points automatically without consumer initiation. No refund / resolution shall be offered by GoGrocer support team in such an event if the consumer misses to apply / burn / redeem loyalty points &amp; completes the payment</p>\r\n\r\n<p><strong>Payment Gateway</strong></p>\r\n\r\n<p>The Licensed Application makes available a payment gateway through its approved payment processing provider(s). Your use of the payment gateway will be subject to receiving an approved status by the Application Provider, fulfilling the documentation and other requirements of the approved payment processing provider(s) and adhering to the terms and conditions of use prescribed by the payment processing provider(s). Please contact your concerned store or app sub-owner for any queries or refund as payment gateway accounts belongs to it.</p>\r\n\r\n<p><strong>Replacement, Refund, Dispute Policy</strong></p>\r\n\r\n<p>Any Return, Refund or dispute claim has to be made with the sub-owner of the app i.e. the name on which app has been issues. GoGrocer has no rights or authority to entertain such claims.</p>\r\n\r\n<p>All Refunds will be credited to back to payment instrument used by you to complete the payment. It will take 3-21 days for the money to show in your bank account depending on payment participants involved in the payment, including, but not limited to your bank, payment gateway, bank used by payment gateway.</p>\r\n\r\n<p><strong>LIMITATION OF LIABILITY</strong></p>\r\n\r\n<p>IN NO EVENT SHALL THE APLLICATION PROVIDEDR OR ANY OF ITS SUBSIDIARIES OR AFFILIATES BE LIABLE TO YOU OR ANY PERSON FOR ANY DIRECT, INDIRECT, SPECIAL, CONSEQUENTIAL OR OTHER DAMAGES (INCLUDING, WITHOUT LIMITATION, ANY LOST PROFITS, BUSINESS INTERRUPTION, LOSS OF INFORMATION OR PROGRAMS OR OTHER DATA ON YOUR INFORMATION HANDLING SYSTEM) THAT ARE RELATED TO THE USE OF, OR THE INABILITY TO USE, THE SERVICES AND FUNCTIONS OF THE LICENSED APPLICATION OR ANY LINKED WEB SITE/ MOBILE APPLICATION, EVEN IF THE APPLICATION PROVIDER IS EXPRESSLY ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.</p>\r\n\r\n<p><strong>INDEMNITY</strong></p>\r\n\r\n<p>You agree to indemnify and hold harmless the Application Provider, its subsidiaries and affiliates from any claim, cost, expense, judgment or other loss relating to your use of the Licensed Application, including without limitation of the foregoing, any action you take which is in violation of these Terms and Conditions.</p>\r\n\r\n<p><strong>NO THIRD PARTY BENEFICIARIES</strong></p>\r\n\r\n<p>This contract is solely for your benefit and the benefit of Application Provider.</p>\r\n\r\n<p><strong>SEVERABILITY</strong></p>\r\n\r\n<p>If for any reason a court of competent jurisdiction finds any provision or portion of these Terms and Conditions to be unenforceable, the remainder of these Terms and Conditions will continue in full force and effect. Please email us at tnc@Bisht.com if you have any questions regarding these Terms and Conditions.</p>\r\n\r\n<p><strong>ANDROID&trade; TERMS OF USE</strong></p>\r\n\r\n<p>You will be governed by any additional terms of use that may be specified by the Android&trade; store or platform from which you downloaded this Licensed Application.</p>\r\n\r\n<p>I HAVE READ THE FULL END USER LICENSING AGREEMENT AND AGREE TO ALL OF THE PROVISIONS CONTAINED ABOVE. I hereby agree to these End User Licensing Agreement.</p>\r\n\r\n<p>The website www.GoGrocer.app is owned by Bisht Technologies Pvt. Ltd.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Disclaimer:</strong> Please read and edit the Refund &amp; Cancellation Policy given below as per your /website&rsquo;s requirement. Don&rsquo;t use or apply these as is basis on your website.</p>\r\n\r\n<p><strong>Refund and Cancellation Policy</strong></p>\r\n\r\n<p><br />\r\nOur focus is complete customer satisfaction. In the event, if you are displeased with the services provided, we will refund back the money, provided the reasons are genuine and proved after investigation. Please read the fine prints of each deal before buying it, it provides all the details about the services or the product you purchase.<br />\r\n<br />\r\nIn case of dissatisfaction from our services, clients have the liberty to cancel their projects and request a refund from us. Our Policy for the cancellation and refund will be as follows:</p>\r\n\r\n<p><strong>&nbsp;Cancellation Policy</strong><br />\r\n<br />\r\nFor Cancellations please contact the us via contact us link.&nbsp;<br />\r\n<br />\r\nRequests received later than 7 business days prior to the end of the current service period will be treated as cancellation of services for the next service period.<br />\r\n<br />\r\n<strong>Refund Policy</strong><br />\r\n<br />\r\nWe will try our best to create the suitable design concepts for our clients.<br />\r\n<br />\r\nIn case any client is not completely satisfied with our products we can provide a refund.&nbsp;<br />\r\n<br />\r\nIf paid by credit card, refunds will be issued to the original credit card provided at the time of purchase and in case of payment gateway name payments refund will be made to the same account.</p>\r\n\r\n<p>&nbsp;</p>', 0, 0, '2018-05-26 11:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `paypal`
--

CREATE TABLE `paypal` (
  `id` int(200) NOT NULL,
  `client_id` varchar(200) NOT NULL,
  `sb_id` varchar(200) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `paypal`
--

INSERT INTO `paypal` (`id`, `client_id`, `sb_id`, `status`) VALUES
(1, 'AZO7jsn-My3uxfUkDAmi541O5kvj3vCqV_9kjI5aOhGKn3ePVl7mOoeMC-A-fdhWj85jLD3-qaIKdpvZ', 'facilitator@tecmanic.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pincode`
--

CREATE TABLE `pincode` (
  `pincode` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pincode`
--

INSERT INTO `pincode` (`pincode`) VALUES
(360004),
(360005),
(360001),
(360002),
(360003);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_arb_name` varchar(200) NOT NULL,
  `product_description` longtext NOT NULL,
  `product_arb_description` longtext NOT NULL,
  `product_image` varchar(200) NOT NULL,
  `category_id` int(11) NOT NULL,
  `in_stock` int(11) NOT NULL,
  `price` double NOT NULL,
  `mrp` int(200) NOT NULL,
  `unit_value` double NOT NULL,
  `unit` varchar(10) NOT NULL,
  `arb_unit` varchar(200) NOT NULL,
  `increament` double NOT NULL,
  `rewards` varchar(200) NOT NULL DEFAULT '0',
  `tax` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_arb_name`, `product_description`, `product_arb_description`, `product_image`, `category_id`, `in_stock`, `price`, `mrp`, `unit_value`, `unit`, `arb_unit`, `increament`, `rewards`, `tax`) VALUES
(6427, '642166', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8410196061037', 0, 1, 0, 0, 0, 'فرجينيس كو', '', 0, '20', 0),
(6428, '642167', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8410196054930', 0, 1, 0, 0, 0, 'فرجينيس دو', '', 0, '20', 0),
(6429, '642168', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8410196056255', 0, 1, 0, 0, 0, 'فرجينيس بي', '', 0, '20', 0),
(6430, '642169', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8410196056248', 0, 1, 0, 0, 0, 'فرجينيس بي', '', 0, '20', 0),
(6431, '642170', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6251036016747', 0, 1, 0, 0, 0, 'مستر شيبس ', '', 0, '20', 0),
(6432, '642171', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6251036016730', 0, 1, 0, 0, 0, 'مستر شيبس ', '', 0, '20', 0),
(6433, '642172', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8585002508782', 0, 1, 0, 0, 0, 'ميجالي حلي', '', 0, '20', 0),
(6434, '642173', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8585002508805', 0, 1, 0, 0, 0, 'ميجالي حلي', '', 0, '20', 0),
(6435, '642174', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8585002508768', 0, 1, 0, 0, 0, 'ميجالي حلي', '', 0, '20', 0),
(6436, '642175', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '5704190114466', 0, 1, 0, 0, 0, 'ماكسيم برو', '', 0, '20', 0),
(6437, '643051', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '9314839002601', 0, 1, 0, 0, 0, 'كيو في صاب', '', 0, '20', 0),
(6438, '643054', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '9314839002632', 0, 1, 0, 0, 0, 'كيو في كري', '', 0, '20', 0),
(6439, '643057', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '9314839005640', 0, 1, 0, 0, 0, 'كيو في كري', '', 0, '20', 0),
(6440, '643060', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '21164', 0, 1, 0, 0, 0, 'كيو في كري', '', 0, '20', 0),
(6441, '643063', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '9314839006890', 0, 1, 0, 0, 0, 'كيو في كري', '', 0, '20', 0),
(6442, '643066', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '9314839011856', 0, 1, 0, 0, 0, 'كيو في كري', '', 0, '20', 0),
(6443, '643069', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '9314839007422', 0, 1, 0, 0, 0, 'كيو في بال', '', 0, '20', 0),
(6444, '643072', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '9314839002618', 0, 1, 0, 0, 0, 'كيو في لوش', '', 0, '20', 0),
(6445, '643075', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '9314839005633', 0, 1, 0, 0, 0, 'كيو في غسو', '', 0, '20', 0),
(6446, '643078', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4005900008985', 0, 1, 0, 0, 0, 'نيفيا كريم', '', 0, '20', 0),
(6447, '643081', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '42207269', 0, 1, 0, 0, 0, 'نيفيا سوفت', '', 0, '20', 0),
(6448, '643084', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4005808890590', 0, 1, 0, 0, 0, 'نيفيا سوفت', '', 0, '20', 0),
(6449, '643087', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4005808919093', 0, 1, 0, 0, 0, 'نيفيا -  م', '', 0, '20', 0),
(6450, '643090', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4005808669325', 0, 1, 0, 0, 0, 'نيفيا غسول', '', 0, '20', 0),
(6451, '643093', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4005808864010', 0, 1, 0, 0, 0, 'نيفيا كلير', '', 0, '20', 0),
(6452, '643096', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4005808571512', 0, 1, 0, 0, 0, 'نيفيا  مزي', '', 0, '20', 0),
(6453, '643099', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4005808668465', 0, 1, 0, 0, 0, 'نيفيا غسول', '', 0, '20', 0),
(6454, '643102', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4005808819065', 0, 1, 0, 0, 0, 'نيفيا مناد', '', 0, '20', 0),
(6455, '643105', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4005808828098', 0, 1, 0, 0, 0, 'نيفيا فريش', '', 0, '20', 0),
(6456, '643106', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '79400259233', 0, 1, 0, 0, 0, 'سويف موركو', '', 0, '20', 0),
(6457, '643107', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '12044039991', 0, 1, 0, 0, 0, 'اولد سبيس ', '', 0, '20', 0),
(6458, '643110', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '50398645', 0, 1, 0, 0, 0, 'فى او فيف ', '', 0, '20', 0),
(6459, '643113', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '50398652', 0, 1, 0, 0, 0, 'فى او فيف ', '', 0, '20', 0),
(6460, '643116', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6221048312779', 0, 1, 0, 0, 0, 'اكس بخاخ م', '', 0, '20', 0),
(6461, '643119', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6221048311239', 0, 1, 0, 0, 0, 'اكس بخاخ م', '', 0, '20', 0),
(6462, '643122', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8712561728522', 0, 1, 0, 0, 0, 'أكس بلاك ب', '', 0, '20', 0),
(6463, '643125', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6221048414015', 0, 1, 0, 0, 0, 'كلوس اب مع', '', 0, '20', 0),
(6464, '643128', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6281006473607', 0, 1, 0, 0, 0, 'دوف قالب ك', '', 0, '20', 0),
(6465, '643131', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8711600842984', 0, 1, 0, 0, 0, 'دوف صابون ', '', 0, '20', 0),
(6466, '643134', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6281006473645', 0, 1, 0, 0, 0, 'دوف قالب ك', '', 0, '20', 0),
(6467, '643137', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8712561409841', 0, 1, 0, 0, 0, 'دوف الخىار', '', 0, '20', 0),
(6468, '643140', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4800888183163', 0, 1, 0, 0, 0, 'دوف جاف غي', '', 0, '20', 0),
(6469, '643141', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4800888150042', 0, 1, 0, 0, 0, 'دوف مزيل ر', '', 0, '20', 0),
(6470, '643144', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4800888190147', 0, 1, 0, 0, 0, 'دوف بودر 5', '', 0, '20', 0),
(6471, '643147', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8712561804189', 0, 1, 0, 0, 0, 'دوف غسول ا', '', 0, '20', 0),
(6472, '643150', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6281006472075', 0, 1, 0, 0, 0, 'دوف جيل ال', '', 0, '20', 0),
(6473, '643153', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8712561804004', 0, 1, 0, 0, 0, 'دوف جيل ال', '', 0, '20', 0),
(6474, '643156', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6281006479012', 0, 1, 0, 0, 0, 'دوف جيل ال', '', 0, '20', 0),
(6475, '643159', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8712561495295', 0, 1, 0, 0, 0, 'دوف شامبو ', '', 0, '20', 0),
(6476, '643162', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6281006437944', 0, 1, 0, 0, 0, 'دوف شامبو ', '', 0, '20', 0),
(6477, '643165', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6281006439276', 0, 1, 0, 0, 0, 'دوف شامبو ', '', 0, '20', 0),
(6478, '643168', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4800888190512', 0, 1, 0, 0, 0, 'دوف مزيل ر', '', 0, '20', 0),
(6479, '643171', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6281006478619', 0, 1, 0, 0, 0, 'لوكس غسول ', '', 0, '20', 0),
(6480, '643174', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6281006478572', 0, 1, 0, 0, 0, 'لوكس غسول ', '', 0, '20', 0),
(6481, '643175', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8999999053383', 0, 1, 0, 0, 0, 'لايف بوي س', '', 0, '20', 0),
(6482, '643178', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6281006473928', 0, 1, 0, 0, 0, 'لايف بوي س', '', 0, '20', 0),
(6483, '643181', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8999999511753', 0, 1, 0, 0, 0, 'لايفبوي ال', '', 0, '20', 0),
(6484, '643184', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6281006476462', 0, 1, 0, 0, 0, 'لايف بوي غ', '', 0, '20', 0),
(6485, '643187', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8901030002434', 0, 1, 0, 0, 0, 'لايف بوي ا', '', 0, '20', 0),
(6486, '643190', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6281006482845', 0, 1, 0, 0, 0, 'لوكس غسول ', '', 0, '20', 0),
(6487, '643193', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8712561224086', 0, 1, 0, 0, 0, 'ريكسونا بخ', '', 0, '20', 0),
(6488, '643196', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8712561289726', 0, 1, 0, 0, 0, 'ريكسونا بخ', '', 0, '20', 0),
(6489, '643199', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8711600350212', 0, 1, 0, 0, 0, 'ريكسونا مض', '', 0, '20', 0),
(6490, '643202', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8712561224406', 0, 1, 0, 0, 0, 'ريكسونا مض', '', 0, '20', 0),
(6491, '643205', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8711600300385', 0, 1, 0, 0, 0, 'ريكسونا بخ', '', 0, '20', 0),
(6492, '643208', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8712561655729', 0, 1, 0, 0, 0, 'ريكسونا مض', '', 0, '20', 0),
(6493, '643211', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8717644339428', 0, 1, 0, 0, 0, 'ريكسونا بخ', '', 0, '20', 0),
(6494, '643214', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8593838987831', 0, 1, 0, 0, 0, 'ريكسونا مض', '', 0, '20', 0),
(6495, '643217', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8710908424151', 0, 1, 0, 0, 0, 'ريكسونا بخ', '', 0, '20', 0),
(6496, '643220', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8710908424076', 0, 1, 0, 0, 0, 'ريكسونا مض', '', 0, '20', 0),
(6497, '643223', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8712561534444', 0, 1, 0, 0, 0, 'ريكسونا لل', '', 0, '20', 0),
(6498, '643224', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4800888179289', 0, 1, 0, 0, 0, 'ريكسونا اك', '', 0, '20', 0),
(6499, '643227', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4800888179319', 0, 1, 0, 0, 0, 'ركسونا اكس', '', 0, '20', 0),
(6500, '643230', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4800888192257', 0, 1, 0, 0, 0, 'ريكسونا ال', '', 0, '20', 0),
(6501, '643233', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4800888192240', 0, 1, 0, 0, 0, 'ريكسونا حم', '', 0, '20', 0),
(6502, '643236', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4800888148865', 0, 1, 0, 0, 0, 'ريكسونا با', '', 0, '20', 0),
(6503, '643239', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4800888148902', 0, 1, 0, 0, 0, 'ريكسونا لل', '', 0, '20', 0),
(6504, '643242', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4800888192462', 0, 1, 0, 0, 0, 'ريكسونا ست', '', 0, '20', 0),
(6505, '643245', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4800888192455', 0, 1, 0, 0, 0, 'ريكسونا ست', '', 0, '20', 0),
(6506, '643248', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4800888179265', 0, 1, 0, 0, 0, 'ريكسونا مض', '', 0, '20', 0),
(6507, '643251', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4800888179241', 0, 1, 0, 0, 0, 'ريكسونا مض', '', 0, '20', 0),
(6508, '643254', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4800888179272', 0, 1, 0, 0, 0, 'ريكسونا مض', '', 0, '20', 0),
(6509, '643257', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6281006412521', 0, 1, 0, 0, 0, 'سيجنال معج', '', 0, '20', 0),
(6510, '643260', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8710908169304', 0, 1, 0, 0, 0, 'زنديوم معج', '', 0, '20', 0),
(6511, '643263', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4016369546710', 0, 1, 0, 0, 0, 'لاكالوت مع', '', 0, '20', 0),
(6512, '643266', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4016369546727', 0, 1, 0, 0, 0, 'لاكالوت مع', '', 0, '20', 0),
(6513, '643269', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6281006479708', 0, 1, 0, 0, 0, 'لوكس صابون', '', 0, '20', 0),
(6514, '643272', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '40523', 0, 1, 0, 0, 0, 'ليمولا ديو', '', 0, '20', 0),
(6515, '643275', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '5000158064713', 0, 1, 0, 0, 0, 'ديتول مناد', '', 0, '20', 0),
(6516, '643278', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6001106110185', 0, 1, 0, 0, 0, 'ديتول مناد', '', 0, '20', 0),
(6517, '643281', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6295120010730', 0, 1, 0, 0, 0, 'ديتول الأص', '', 0, '20', 0),
(6518, '643284', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6295120011379', 0, 1, 0, 0, 0, 'ديتول مناد', '', 0, '20', 0),
(6519, '643287', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6295120012451', 0, 1, 0, 0, 0, 'ديتول منعش', '', 0, '20', 0),
(6520, '643290', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6295120012468', 0, 1, 0, 0, 0, 'ديتول مناد', '', 0, '20', 0),
(6521, '643293', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6295120026397', 0, 1, 0, 0, 0, 'ديتول كوول', '', 0, '20', 0),
(6522, '643296', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6295120027370', 0, 1, 0, 0, 0, 'ديتول هاند', '', 0, '20', 0),
(6523, '643299', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6001106116378', 0, 1, 0, 0, 0, 'ديتول أكتي', '', 0, '20', 0),
(6524, '643302', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8006320046744', 0, 1, 0, 0, 0, 'بلانكس معج', '', 0, '20', 0),
(6525, '643305', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8006320054763', 0, 1, 0, 0, 0, 'بلانكس معج', '', 0, '20', 0),
(6526, '643306', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8006320049196', 0, 1, 0, 0, 0, 'بلانكس قلم', '', 0, '20', 0),
(6527, '643309', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '9002240009011', 0, 1, 0, 0, 0, 'فتي دينت أ', '', 0, '20', 0),
(6528, '643312', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6805699954054', 0, 1, 0, 0, 0, 'اكوافريش ف', '', 0, '20', 0),
(6529, '643315', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6805699954047', 0, 1, 0, 0, 0, 'اكوافريش ف', '', 0, '20', 0),
(6530, '643316', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '18653004320', 0, 1, 0, 0, 0, 'اكوافريش ف', '', 0, '20', 0),
(6531, '643319', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '9502930972088', 0, 1, 0, 0, 0, 'اكوافريش ف', '', 0, '20', 0),
(6532, '643322', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '2961544500266', 0, 1, 0, 0, 0, 'اكوافريش ف', '', 0, '20', 0),
(6533, '643325', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '2961544500907', 0, 1, 0, 0, 0, 'اكوافريش ف', '', 0, '20', 0),
(6534, '643328', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6805699533198', 0, 1, 0, 0, 0, 'اكوافريش ف', '', 0, '20', 0),
(6535, '643331', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '9502930970923', 0, 1, 0, 0, 0, 'أكوافريش م', '', 0, '20', 0),
(6536, '643334', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '9502930970930', 0, 1, 0, 0, 0, 'أكوافريش م', '', 0, '20', 0),
(6537, '643337', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6805699533099', 0, 1, 0, 0, 0, 'سينسوداين ', '', 0, '20', 0),
(6538, '643340', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '9502930975348', 0, 1, 0, 0, 0, 'سينسوداين ', '', 0, '20', 0),
(6539, '643341', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '9502930975355', 0, 1, 0, 0, 0, 'سينسوداين ', '', 0, '20', 0),
(6540, '643344', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '9502930974280', 0, 1, 0, 0, 0, 'سينسوداين ', '', 0, '20', 0),
(6541, '643347', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6805699533075', 0, 1, 0, 0, 0, 'سينسوداين ', '', 0, '20', 0),
(6542, '643350', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6805699533051', 0, 1, 0, 0, 0, 'سينسوداين ', '', 0, '20', 0),
(6543, '643353', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6805699533068', 0, 1, 0, 0, 0, 'سينسوداين ', '', 0, '20', 0),
(6544, '643356', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '5000198124422', 0, 1, 0, 0, 0, 'كوريجا الت', '', 0, '20', 0),
(6545, '643359', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '5000198021202', 0, 1, 0, 0, 0, 'كوريجا سوب', '', 0, '20', 0),
(6546, '643362', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '9502930975287', 0, 1, 0, 0, 0, 'بارودونتكس', '', 0, '20', 0),
(6547, '643365', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '9502930975294', 0, 1, 0, 0, 0, 'بارودونتكس', '', 0, '20', 0),
(6548, '643368', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6805699533334', 0, 1, 0, 0, 0, 'بارودونتكس', '', 0, '20', 0),
(6549, '643371', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6805699954542', 0, 1, 0, 0, 0, 'بارودونتكس', '', 0, '20', 0),
(6550, '643374', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6805699954443', 0, 1, 0, 0, 0, 'بارودونتكس', '', 0, '20', 0),
(6551, '643377', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6805699954450', 0, 1, 0, 0, 0, 'بارودونتكس', '', 0, '20', 0),
(6552, '643380', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '9502930972224', 0, 1, 0, 0, 0, 'بارودونتكس', '', 0, '20', 0),
(6553, '643383', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '9502930972828', 0, 1, 0, 0, 0, 'بارودونتكس', '', 0, '20', 0),
(6554, '643386', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '9502930975263', 0, 1, 0, 0, 0, 'سنسوداين م', '', 0, '20', 0),
(6555, '643389', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '2961544500921', 0, 1, 0, 0, 0, 'سنسوداين م', '', 0, '20', 0),
(6556, '643392', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '5000198257502', 0, 1, 0, 0, 0, 'سنسوداين م', '', 0, '20', 0),
(6557, '643395', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '9502930974891', 0, 1, 0, 0, 0, 'سنسوداين م', '', 0, '20', 0),
(6558, '643398', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '9502930974952', 0, 1, 0, 0, 0, 'سنسوداين م', '', 0, '20', 0),
(6559, '643399', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '18653005365', 0, 1, 0, 0, 0, 'سنسوداين م', '', 0, '20', 0),
(6560, '643402', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6805699953873', 0, 1, 0, 0, 0, 'سنسوداين م', '', 0, '20', 0),
(6561, '643405', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6805699953675', 0, 1, 0, 0, 0, 'سنسوداين م', '', 0, '20', 0),
(6562, '643408', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6805699953637', 0, 1, 0, 0, 0, 'سنسوداين م', '', 0, '20', 0),
(6563, '643411', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '9502930975232', 0, 1, 0, 0, 0, 'سنسوداين م', '', 0, '20', 0),
(6564, '643414', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '5000347084027', 0, 1, 0, 0, 0, 'سنسوداين م', '', 0, '20', 0),
(6565, '643417', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6805699533105', 0, 1, 0, 0, 0, 'سينسوداين ', '', 0, '20', 0),
(6566, '643420', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8470002191709', 0, 1, 0, 0, 0, 'سينسي كين ', '', 0, '20', 0),
(6567, '643423', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8436026211694', 0, 1, 0, 0, 0, 'كين معجون ', '', 0, '20', 0),
(6568, '643426', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8436026212554', 0, 1, 0, 0, 0, 'كين فرشاة ', '', 0, '20', 0),
(6569, '643429', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8470003437882', 0, 1, 0, 0, 0, 'كين فرشاة ', '', 0, '20', 0),
(6570, '643432', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '5000174548990', 0, 1, 0, 0, 0, 'كريست معجو', '', 0, '20', 0),
(6571, '643435', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '5011321335356', 0, 1, 0, 0, 0, 'كريست تبيي', '', 0, '20', 0),
(6572, '643438', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '5011321367098', 0, 1, 0, 0, 0, 'كريست معجو', '', 0, '20', 0),
(6573, '643441', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4015400572831', 0, 1, 0, 0, 0, 'كريست معجو', '', 0, '20', 0),
(6574, '643444', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4015400573005', 0, 1, 0, 0, 0, 'كريست معجو', '', 0, '20', 0),
(6575, '643447', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4015400573043', 0, 1, 0, 0, 0, 'كريست معجو', '', 0, '20', 0),
(6576, '643450', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4084500671539', 0, 1, 0, 0, 0, 'أورال بي م', '', 0, '20', 0),
(6577, '643453', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4084500190818', 0, 1, 0, 0, 0, 'أورال بي م', '', 0, '20', 0),
(6578, '643456', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4084500190917', 0, 1, 0, 0, 0, 'أورال بي م', '', 0, '20', 0),
(6579, '643459', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4084500191068', 0, 1, 0, 0, 0, 'أورال بي م', '', 0, '20', 0),
(6580, '643462', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4084500191310', 0, 1, 0, 0, 0, 'أورال بي م', '', 0, '20', 0),
(6581, '643465', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4084500191563', 0, 1, 0, 0, 0, 'أورال بي م', '', 0, '20', 0),
(6582, '643468', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4084500191617', 0, 1, 0, 0, 0, 'أورال بي م', '', 0, '20', 0),
(6583, '643471', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4210201746348', 0, 1, 0, 0, 0, 'أورال بي ف', '', 0, '20', 0),
(6584, '643474', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4210201064145', 0, 1, 0, 0, 0, 'أورال بي ف', '', 0, '20', 0),
(6585, '643477', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4210201822325', 0, 1, 0, 0, 0, 'أورال بي ف', '', 0, '20', 0),
(6586, '643480', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '3014260782818', 0, 1, 0, 0, 0, 'أورال بي ف', '', 0, '20', 0),
(6587, '643483', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '5010622005012', 0, 1, 0, 0, 0, 'أورال بي خ', '', 0, '20', 0),
(6588, '643486', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '3014260280772', 0, 1, 0, 0, 0, 'أورال بي خ', '', 0, '20', 0),
(6589, '643489', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '5010622008204', 0, 1, 0, 0, 0, 'أورال بي خ', '', 0, '20', 0),
(6590, '643492', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '5010622017978', 0, 1, 0, 0, 0, 'أورال بي خ', '', 0, '20', 0),
(6591, '643495', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '5010622018258', 0, 1, 0, 0, 0, 'اورال بي خ', '', 0, '20', 0),
(6592, '643498', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4103330031167', 0, 1, 0, 0, 0, 'اورال بس ف', '', 0, '20', 0),
(6593, '643501', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '3014260278335', 0, 1, 0, 0, 0, 'أورال بي ف', '', 0, '20', 0),
(6594, '643504', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '3014260795146', 0, 1, 0, 0, 0, 'أورال بي ف', '', 0, '20', 0),
(6595, '643507', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '3014260821234', 0, 1, 0, 0, 0, 'أورال بي ف', '', 0, '20', 0),
(6596, '643510', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '3014260732165', 0, 1, 0, 0, 0, 'أورال بي ف', '', 0, '20', 0),
(6597, '643513', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '3014260732073', 0, 1, 0, 0, 0, 'أورال بي ف', '', 0, '20', 0),
(6598, '643516', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '3014260832544', 0, 1, 0, 0, 0, 'أورال بي ف', '', 0, '20', 0),
(6599, '643519', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '3014260022051', 0, 1, 0, 0, 0, 'أورال بي ف', '', 0, '20', 0),
(6600, '643522', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '3014260838379', 0, 1, 0, 0, 0, 'أورال بي ف', '', 0, '20', 0),
(6601, '643525', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '3014260838430', 0, 1, 0, 0, 0, 'أورال بي ف', '', 0, '20', 0),
(6602, '643528', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '3014260007393', 0, 1, 0, 0, 0, 'أورال بي ف', '', 0, '20', 0),
(6603, '643531', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '3014260010461', 0, 1, 0, 0, 0, 'أورال بي ف', '', 0, '20', 0),
(6604, '643534', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '3014260022617', 0, 1, 0, 0, 0, 'أورال بي ف', '', 0, '20', 0),
(6605, '643537', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '3014260022709', 0, 1, 0, 0, 0, 'اورال بي ف', '', 0, '20', 0),
(6606, '643540', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7702018069286', 0, 1, 0, 0, 0, 'جيلليت فين', '', 0, '20', 0),
(6607, '643543', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7702018069255', 0, 1, 0, 0, 0, 'جيلليت فين', '', 0, '20', 0),
(6608, '643546', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7702018939183', 0, 1, 0, 0, 0, 'جيلليت بود', '', 0, '20', 0),
(6609, '643549', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7702018983483', 0, 1, 0, 0, 0, 'جيلليت بلو', '', 0, '20', 0),
(6610, '643552', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7702018032136', 0, 1, 0, 0, 0, 'جيلليت بلو', '', 0, '20', 0),
(6611, '643555', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7702018949946', 0, 1, 0, 0, 0, 'جيلليت بلو', '', 0, '20', 0),
(6612, '643558', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7702018324750', 0, 1, 0, 0, 0, 'جيلليت فين', '', 0, '20', 0),
(6613, '643561', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7702018085576', 0, 1, 0, 0, 0, 'جيلليت فيو', '', 0, '20', 0),
(6614, '643564', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7702018967582', 0, 1, 0, 0, 0, 'جيلليت فين', '', 0, '20', 0),
(6615, '643567', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7702018886364', 0, 1, 0, 0, 0, 'جيلليت فين', '', 0, '20', 0),
(6616, '643570', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7702018877591', 0, 1, 0, 0, 0, 'جيلليت أمو', '', 0, '20', 0),
(6617, '643573', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6281001106005', 0, 1, 0, 0, 0, 'كولجيت معج', '', 0, '20', 0),
(6618, '643576', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6281001104179', 0, 1, 0, 0, 0, 'كولجيت معج', '', 0, '20', 0),
(6619, '643579', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6281001104155', 0, 1, 0, 0, 0, 'كولجيت معج', '', 0, '20', 0),
(6620, '643582', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '9300632018871', 0, 1, 0, 0, 0, 'كولجيت خيط', '', 0, '20', 0),
(6621, '643585', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8850006324189', 0, 1, 0, 0, 0, 'كولجيت معج', '', 0, '20', 0),
(6622, '643588', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '5000209100513', 0, 1, 0, 0, 0, 'كولجيت معج', '', 0, '20', 0),
(6623, '643591', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6001067026358', 0, 1, 0, 0, 0, 'كولجيت 360', '', 0, '20', 0),
(6624, '643594', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8850006304792', 0, 1, 0, 0, 0, 'بلاكس نعنا', '', 0, '20', 0),
(6625, '643597', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8850006304785', 0, 1, 0, 0, 0, 'بلاكس نعنا', '', 0, '20', 0),
(6626, '643600', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6001067017523', 0, 1, 0, 0, 0, 'كولجيت فرش', '', 0, '20', 0),
(6627, '643603', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6001067027324', 0, 1, 0, 0, 0, 'كولجيت فرش', '', 0, '20', 0),
(6628, '643606', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6001067043959', 0, 1, 0, 0, 0, 'كولجيت اوب', '', 0, '20', 0),
(6629, '643609', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8714789514529', 0, 1, 0, 0, 0, 'بالموليف ج', '', 0, '20', 0),
(6630, '643612', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8714789514635', 0, 1, 0, 0, 0, 'بالموليف ج', '', 0, '20', 0),
(6631, '643615', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8718951079281', 0, 1, 0, 0, 0, 'كولجيت معج', '', 0, '20', 0),
(6632, '643618', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6001067114345', 0, 1, 0, 0, 0, 'كولجيت معج', '', 0, '20', 0),
(6633, '643621', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6920354812859', 0, 1, 0, 0, 0, 'كولجيت معج', '', 0, '20', 0),
(6634, '643622', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '22200963695', 0, 1, 0, 0, 0, 'لايدي سبيد', '', 0, '20', 0),
(6635, '643623', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '22200962995', 0, 1, 0, 0, 0, 'لايدي سبيد', '', 0, '20', 0),
(6636, '643624', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '22200962681', 0, 1, 0, 0, 0, 'لايدي سبيد', '', 0, '20', 0),
(6637, '643625', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '22200964081', 0, 1, 0, 0, 0, 'لايدي سبيد', '', 0, '20', 0),
(6638, '643626', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '22200961516', 0, 1, 0, 0, 0, 'لايدي سبيد', '', 0, '20', 0),
(6639, '643629', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '5996175233594', 0, 1, 0, 0, 0, 'لايدي سبيد', '', 0, '20', 0),
(6640, '643632', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7509546045382', 0, 1, 0, 0, 0, 'لادي سبيد ', '', 0, '20', 0),
(6641, '643635', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '5943001100575', 0, 1, 0, 0, 0, 'من سبيد ست', '', 0, '20', 0),
(6642, '643638', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '5996175232757', 0, 1, 0, 0, 0, 'لايدي سبيد', '', 0, '20', 0),
(6643, '643639', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '22200963435', 0, 1, 0, 0, 0, 'لايدي سبيد', '', 0, '20', 0),
(6644, '643640', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '22200750318', 0, 1, 0, 0, 0, 'لايدي سبيد', '', 0, '20', 0),
(6645, '643643', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7509546060231', 0, 1, 0, 0, 0, 'لايدي سبيد', '', 0, '20', 0),
(6646, '643646', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7509546045498', 0, 1, 0, 0, 0, 'لايدي سبيد', '', 0, '20', 0),
(6647, '643649', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7509546045511', 0, 1, 0, 0, 0, 'لايدي سبيد', '', 0, '20', 0),
(6648, '643652', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7509546045481', 0, 1, 0, 0, 0, 'لايدي سبيد', '', 0, '20', 0),
(6649, '643653', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '22200750387', 0, 1, 0, 0, 0, 'لايدي سبيد', '', 0, '20', 0),
(6650, '643656', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6805699955044', 0, 1, 0, 0, 0, 'سينسوداين ', '', 0, '20', 0),
(6651, '643659', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6805699955051', 0, 1, 0, 0, 0, 'سينسوداين ', '', 0, '20', 0),
(6652, '643662', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8710908688782', 0, 1, 0, 0, 0, 'أكس بخاخ م', '', 0, '20', 0),
(6653, '643665', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '810652010537', 0, 1, 0, 0, 0, 'بيرلين قوا', '', 0, '20', 0),
(6654, '643668', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7702018844944', 0, 1, 0, 0, 0, 'جيلليت بلو', '', 0, '20', 0),
(6655, '643671', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4210201746263', 0, 1, 0, 0, 0, 'اورال بي ل', '', 0, '20', 0),
(6656, '643674', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4103040111784', 0, 1, 0, 0, 0, 'سيباميد صا', '', 0, '20', 0),
(6657, '643677', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4103040115263', 0, 1, 0, 0, 0, 'سيباميد غس', '', 0, '20', 0),
(6658, '643680', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4103040117953', 0, 1, 0, 0, 0, 'سيباميد شا', '', 0, '20', 0),
(6659, '643683', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '5010724519417', 0, 1, 0, 0, 0, 'فيم فريش غ', '', 0, '20', 0),
(6660, '643686', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '5010724529317', 0, 1, 0, 0, 0, 'فيم فريش غ', '', 0, '20', 0),
(6661, '643689', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '5000167002126', 0, 1, 0, 0, 0, 'فيم فريش ب', '', 0, '20', 0),
(6662, '643692', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8693495048255', 0, 1, 0, 0, 0, 'بالموليف ج', '', 0, '20', 0),
(6663, '643695', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '4103040147271', 0, 1, 0, 0, 0, 'سيباميد غس', '', 0, '20', 0),
(6664, '643698', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6805699955006', 0, 1, 0, 0, 0, 'سنسوداين م', '', 0, '20', 0),
(6665, '643701', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6805699955099', 0, 1, 0, 0, 0, 'سنسوداين ف', '', 0, '20', 0),
(6666, '643704', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6805699955525', 0, 1, 0, 0, 0, 'سنسوداين م', '', 0, '20', 0),
(6667, '643707', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7611841700153', 0, 1, 0, 0, 0, 'ديبوردينت ', '', 0, '20', 0),
(6668, '643710', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6085010037509', 0, 1, 0, 0, 0, 'كوتكس فوط ', '', 0, '20', 0),
(6669, '643713', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6805699955808', 0, 1, 0, 0, 0, 'سنسنوداين ', '', 0, '20', 0),
(6670, '643716', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6805699955754', 0, 1, 0, 0, 0, 'سنسوداين ك', '', 0, '20', 0),
(6671, '643719', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '5281018003916', 0, 1, 0, 0, 0, 'بيزلين مزي', '', 0, '20', 0),
(6672, '643722', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '5281018001226', 0, 1, 0, 0, 0, 'بيزلين عنا', '', 0, '20', 0),
(6673, '643725', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '5287000372046', 0, 1, 0, 0, 0, 'كوريكشن كر', '', 0, '20', 0),
(6674, '643728', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '5281018003954', 0, 1, 0, 0, 0, 'بيزلين مزي', '', 0, '20', 0),
(6675, '643731', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '5281018003145', 0, 1, 0, 0, 0, 'بيزلين كري', '', 0, '20', 0),
(6676, '643732', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '5281018000014', 0, 1, 0, 0, 0, 'بيزلين مرك', '', 0, '20', 0),
(6677, '643733', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '5281018001240', 0, 1, 0, 0, 0, 'بيزلين مرط', '', 0, '20', 0),
(6678, '643736', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '5281018001257', 0, 1, 0, 0, 0, 'بيزلين مرط', '', 0, '20', 0),
(6679, '643739', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6943885700211', 0, 1, 0, 0, 0, 'عود وخيط ا', '', 0, '20', 0),
(6680, '643742', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6943885700143', 0, 1, 0, 0, 0, 'عود وخيط ا', '', 0, '20', 0),
(6681, '643745', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '3516641011628', 0, 1, 0, 0, 0, 'فرانك اولي', '', 0, '20', 0),
(6682, '643748', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '3516641017637', 0, 1, 0, 0, 0, 'فرانك اولي', '', 0, '20', 0),
(6683, '643751', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '3516641017620', 0, 1, 0, 0, 0, 'فرانك اولي', '', 0, '20', 0),
(6684, '643754', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8680164447907', 0, 1, 0, 0, 0, 'اوست وينت ', '', 0, '20', 0),
(6685, '643757', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8680164447600', 0, 1, 0, 0, 0, 'اوست وينت ', '', 0, '20', 0),
(6686, '643760', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '810652011121', 0, 1, 0, 0, 0, 'بيرلاين سو', '', 0, '20', 0),
(6687, '643761', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '3014260098322', 0, 1, 0, 0, 0, 'اورال بي ف', '', 0, '20', 0),
(6688, '643762', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8001090365576', 0, 1, 0, 0, 0, 'اورال بي ا', '', 0, '20', 0),
(6689, '643763', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '3014260098445', 0, 1, 0, 0, 0, 'اورال بي ف', '', 0, '20', 0),
(6690, '643764', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '3014260098568', 0, 1, 0, 0, 0, 'اورال بي ف', '', 0, '20', 0),
(6691, '643765', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '3014260098803', 0, 1, 0, 0, 0, 'اورال بي ف', '', 0, '20', 0),
(6692, '643766', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '3014260098834', 0, 1, 0, 0, 0, 'اورال بي ف', '', 0, '20', 0),
(6693, '643767', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '3014260098865', 0, 1, 0, 0, 0, 'اورال بي ف', '', 0, '20', 0),
(6694, '643768', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8001090125620', 0, 1, 0, 0, 0, 'كرست ثري د', '', 0, '20', 0),
(6695, '643769', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8001090404299', 0, 1, 0, 0, 0, 'كريست ثري ', '', 0, '20', 0),
(6696, '643770', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '8001090125422', 0, 1, 0, 0, 0, 'كرست ثري د', '', 0, '20', 0),
(6697, '644339', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7621500110155', 0, 1, 0, 0, 0, 'راوش شامبو', '', 0, '20', 0),
(6698, '644342', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7621500110254', 0, 1, 0, 0, 0, 'راوش شامبو', '', 0, '20', 0),
(6699, '644345', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7621500110353', 0, 1, 0, 0, 0, 'راوش شامبو', '', 0, '20', 0),
(6700, '644348', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7621500110650', 0, 1, 0, 0, 0, 'راوش شامبو', '', 0, '20', 0),
(6701, '644351', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7621500110551', 0, 1, 0, 0, 0, 'راوش شامبو', '', 0, '20', 0),
(6702, '644354', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7621500112159', 0, 1, 0, 0, 0, 'راوش شامبو', '', 0, '20', 0),
(6703, '644357', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7621500110452', 0, 1, 0, 0, 0, 'راوش شامبو', '', 0, '20', 0),
(6704, '644360', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7621500113156', 0, 1, 0, 0, 0, 'راوش شامبو', '', 0, '20', 0),
(6705, '644363', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7621500114054', 0, 1, 0, 0, 0, 'راوش شامبو', '', 0, '20', 0),
(6706, '644366', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7621500118656', 0, 1, 0, 0, 0, 'راوش شامبو', '', 0, '20', 0),
(6707, '644369', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7621500119653', 0, 1, 0, 0, 0, 'راوش شامبو', '', 0, '20', 0),
(6708, '644372', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7621500160150', 0, 1, 0, 0, 0, 'راوش بلسم ', '', 0, '20', 0),
(6709, '644375', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7621500150250', 0, 1, 0, 0, 0, 'راوش بلسم ', '', 0, '20', 0),
(6710, '644378', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7621500120352', 0, 1, 0, 0, 0, 'راوش بلسم ', '', 0, '20', 0),
(6711, '644381', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7621500150656', 0, 1, 0, 0, 0, 'راوش بلسم ', '', 0, '20', 0),
(6712, '644384', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7621500170159', 0, 1, 0, 0, 0, 'راوش بلسم ', '', 0, '20', 0),
(6713, '644387', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7621500120451', 0, 1, 0, 0, 0, 'راوش بلسم ', '', 0, '20', 0),
(6714, '644390', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7621500123155', 0, 1, 0, 0, 0, 'راوش بلسم ', '', 0, '20', 0),
(6715, '644393', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7621500158652', 0, 1, 0, 0, 0, 'راوش بلسم ', '', 0, '20', 0),
(6716, '644396', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7621500133420', 0, 1, 0, 0, 0, 'راوش كريم ', '', 0, '20', 0),
(6717, '644399', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7621500181025', 0, 1, 0, 0, 0, 'راوش سيروم', '', 0, '20', 0),
(6718, '644402', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7621500149957', 0, 1, 0, 0, 0, 'راوش لوشن ', '', 0, '20', 0),
(6719, '644405', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7621500130849', 0, 1, 0, 0, 0, 'راوش كريم ', '', 0, '20', 0),
(6720, '644408', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7621500148851', 0, 1, 0, 0, 0, 'راوش مقوي ', '', 0, '20', 0),
(6721, '644411', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7621500144259', 0, 1, 0, 0, 0, 'راوش مقوي ', '', 0, '20', 0),
(6722, '644414', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '7621500143252', 0, 1, 0, 0, 0, 'راوش مقوي ', '', 0, '20', 0),
(6723, '644417', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6287015780385', 0, 1, 0, 0, 0, 'نينو كير ش', '', 0, '20', 0),
(6724, '644420', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6287015780132', 0, 1, 0, 0, 0, 'رؤى الطبيع', '', 0, '20', 0),
(6725, '644423', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6287015780149', 0, 1, 0, 0, 0, 'رؤى الطبيع', '', 0, '20', 0),
(6726, '644426', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6287015780156', 0, 1, 0, 0, 0, 'رؤى الطبيع', '', 0, '20', 0),
(6727, '644429', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6287015780477', 0, 1, 0, 0, 0, 'رؤى الطبيع', '', 0, '20', 0),
(6728, '644432', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6287015780453', 0, 1, 0, 0, 0, 'رؤى الطبيع', '', 0, '20', 0),
(6729, '644435', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6287015780293', 0, 1, 0, 0, 0, 'رؤى الطبيع', '', 0, '20', 0),
(6730, '644438', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6287015780170', 0, 1, 0, 0, 0, 'رؤى الطبيع', '', 0, '20', 0),
(6731, '644441', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6287015780194', 0, 1, 0, 0, 0, 'رؤى الطبيع', '', 0, '20', 0),
(6732, '644444', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6287015780200', 0, 1, 0, 0, 0, 'رؤى الطبيع', '', 0, '20', 0),
(6733, '644447', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6287015780217', 0, 1, 0, 0, 0, 'رؤى الطبيع', '', 0, '20', 0),
(6734, '644450', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6287015780248', 0, 1, 0, 0, 0, 'رؤى الطبيع', '', 0, '20', 0),
(6735, '644453', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6287015780255', 0, 1, 0, 0, 0, 'رؤى الطبيع', '', 0, '20', 0),
(6736, '644456', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6287015780231', 0, 1, 0, 0, 0, 'رؤى الطبيع', '', 0, '20', 0),
(6737, '644459', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6287015780279', 0, 1, 0, 0, 0, 'رؤى الطبيع', '', 0, '20', 0),
(6738, '644462', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6287015780286', 0, 1, 0, 0, 0, 'رؤى الطبيع', '', 0, '20', 0),
(6739, '644465', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6287015780323', 0, 1, 0, 0, 0, 'رؤى الطبيع', '', 0, '20', 0),
(6740, '644468', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6287015780330', 0, 1, 0, 0, 0, 'رؤى الطبيع', '', 0, '20', 0),
(6741, '644471', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6287015780309', 0, 1, 0, 0, 0, 'رؤى الطبيع', '', 0, '20', 0),
(6742, '644474', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6287015780415', 0, 1, 0, 0, 0, 'رؤى الطبيع', '', 0, '20', 0),
(6743, '644477', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6287015780033', 0, 1, 0, 0, 0, 'رؤى الطبيع', '', 0, '20', 0),
(6744, '644480', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6287015780316', 0, 1, 0, 0, 0, 'رؤى الطبيع', '', 0, '20', 0),
(6745, '644483', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6287015780040', 0, 1, 0, 0, 0, 'رؤى الطبيع', '', 0, '20', 0),
(6746, '644486', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6287015780057', 0, 1, 0, 0, 0, 'رؤى الطبيع', '', 0, '20', 0),
(6747, '644489', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6287015780484', 0, 1, 0, 0, 0, 'رؤى الطبيع', '', 0, '20', 0),
(6748, '644492', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6287015780491', 0, 1, 0, 0, 0, 'رؤى الطبيع', '', 0, '20', 0),
(6749, '644495', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6287015780422', 0, 1, 0, 0, 0, 'نينو كير ع', '', 0, '20', 0),
(6750, '644496', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6287015780439', 0, 1, 0, 0, 0, 'نينو كير ع', '', 0, '20', 0),
(6751, '644497', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6287015780446', 0, 1, 0, 0, 0, 'نينو كير ع', '', 0, '20', 0),
(6752, '644500', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6287015780378', 0, 1, 0, 0, 0, 'رؤى الطبيع', '', 0, '20', 0),
(6753, '644503', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6287015780392', 0, 1, 0, 0, 0, 'رؤى الطبيع', '', 0, '20', 0),
(6754, '644504', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6287015780187', 0, 1, 0, 0, 0, 'رؤى الطبيع', '', 0, '20', 0),
(6755, '644507', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '6287015780408', 0, 1, 0, 0, 0, 'رؤى الطبيع', '', 0, '20', 0),
(6756, '644510', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805257', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6757, '644513', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805400', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6758, '644516', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805578', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6759, '644519', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619806025', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6760, '644522', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805509', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6761, '644525', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805561', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6762, '644528', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805592', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6763, '644531', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805448', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6764, '644534', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805301', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6765, '644537', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805905', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6766, '644540', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805639', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6767, '644543', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805929', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6768, '644546', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805936', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6769, '644549', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805943', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6770, '644552', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805912', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6771, '644555', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805431', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6772, '644558', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805424', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6773, '644561', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805677', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6774, '644564', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805653', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6775, '644567', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805950', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6776, '644570', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805684', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6777, '644573', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619806087', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6778, '644576', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805790', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6779, '644579', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805899', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6780, '644582', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805714', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6781, '644585', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805721', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6782, '644588', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805738', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6783, '644591', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805745', 0, 1, 0, 0, 0, '', '', 0, '20', 0);
INSERT INTO `products` (`product_id`, `product_name`, `product_arb_name`, `product_description`, `product_arb_description`, `product_image`, `category_id`, `in_stock`, `price`, `mrp`, `unit_value`, `unit`, `arb_unit`, `increament`, `rewards`, `tax`) VALUES
(6784, '644594', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805752', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6785, '644597', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805769', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6786, '644600', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805776', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6787, '644603', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805783', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6788, '644606', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619806056', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6789, '644609', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619806063', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6790, '644612', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805271', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6791, '644615', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805264', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6792, '644618', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805288', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6793, '644621', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805295', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6794, '644624', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619806131', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6795, '644627', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619806223', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6796, '644630', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619806230', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6797, '644633', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619806247', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6798, '644636', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619806254', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6799, '644639', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619806117', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6800, '644642', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805363', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6801, '644645', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805707', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6802, '644648', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805691', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6803, '644651', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805462', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6804, '644654', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805479', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6805, '644657', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619806001', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6806, '644660', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805820', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6807, '644663', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805875', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6808, '644666', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619806155', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6809, '644669', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619806186', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6810, '644672', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619806193', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6811, '644675', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805325', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6812, '644678', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '681619805233', 0, 1, 0, 0, 0, '', '', 0, '20', 0),
(6813, '645026', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '793573600028', 0, 1, 0, 0, 0, 'نيل ميت - ', '', 0, '20', 0),
(6814, '645029', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '793573600035', 0, 1, 0, 0, 0, 'نيل ميت - ', '', 0, '20', 0),
(6815, '645032', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '793573600073', 0, 1, 0, 0, 0, 'نيل ميت - ', '', 0, '20', 0),
(6816, '645035', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '793573600080', 0, 1, 0, 0, 0, 'نيل ميت - ', '', 0, '20', 0),
(6817, '645038', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '793573600097', 0, 1, 0, 0, 0, 'نيل ميت - ', '', 0, '20', 0),
(6818, '645041', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '793573600134', 0, 1, 0, 0, 0, 'نيل ميت - ', '', 0, '20', 0),
(6819, '645044', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '793573600141', 0, 1, 0, 0, 0, 'نيل ميت - ', '', 0, '20', 0),
(6820, '645047', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '793573600158', 0, 1, 0, 0, 0, 'نيل ميت - ', '', 0, '20', 0),
(6821, '645050', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '793573600172', 0, 1, 0, 0, 0, 'نيل ميت - ', '', 0, '20', 0),
(6822, '645053', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '793573600202', 0, 1, 0, 0, 0, 'نيل ميت - ', '', 0, '20', 0),
(6823, '645056', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '793573600219', 0, 1, 0, 0, 0, 'نيل ميت - ', '', 0, '20', 0),
(6824, '645057', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '793573600226', 0, 1, 0, 0, 0, 'نيل ميت - ', '', 0, '20', 0),
(6825, '645060', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '793573600257', 0, 1, 0, 0, 0, 'نيل ميت - ', '', 0, '20', 0),
(6826, '645063', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '793573600288', 0, 1, 0, 0, 0, 'نيل ميت - ', '', 0, '20', 0),
(6827, '645066', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '793573600295', 0, 1, 0, 0, 0, 'نيل ميت - ', '', 0, '20', 0),
(6828, '645069', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '793573600301', 0, 1, 0, 0, 0, 'نيل ميت - ', '', 0, '20', 0),
(6829, '645072', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '793573600325', 0, 1, 0, 0, 0, 'نيل ميت - ', '', 0, '20', 0),
(6830, '645075', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '793573600332', 0, 1, 0, 0, 0, 'نيل ميت - ', '', 0, '20', 0),
(6831, '645078', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '793573600356', 0, 1, 0, 0, 0, 'نيل ميت - ', '', 0, '20', 0),
(6832, '645081', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '793573600387', 0, 1, 0, 0, 0, 'نيل ميت - ', '', 0, '20', 0),
(6833, '645084', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '793573600738', 0, 1, 0, 0, 0, 'نيل ميت - ', '', 0, '20', 0),
(6834, '645087', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '793573600745', 0, 1, 0, 0, 0, 'نيل ميت - ', '', 0, '20', 0),
(6835, '645090', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '793573600424', 0, 1, 0, 0, 0, 'نيل ميت - ', '', 0, '20', 0),
(6836, '645093', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '793573600455', 0, 1, 0, 0, 0, 'نيل ميت - ', '', 0, '20', 0),
(6837, '645096', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '793573600479', 0, 1, 0, 0, 0, 'نيل ميت - ', '', 0, '20', 0),
(6838, '645099', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '793573600752', 0, 1, 0, 0, 0, 'نيل ميت - ', '', 0, '20', 0),
(6839, '645100', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '793573600493', 0, 1, 0, 0, 0, 'نيل ميت - ', '', 0, '20', 0),
(6840, '645103', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '793573600578', 0, 1, 0, 0, 0, 'نيل ميت - ', '', 0, '20', 0),
(6841, '645106', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '793573600585', 0, 1, 0, 0, 0, 'نيل ميت - ', '', 0, '20', 0),
(6842, '645109', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '793573600592', 0, 1, 0, 0, 0, 'نيل ميت - ', '', 0, '20', 0),
(6843, '645112', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '793573600622', 0, 1, 0, 0, 0, 'نيل ميت - ', '', 0, '20', 0),
(6844, '645115', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '793573600646', 0, 1, 0, 0, 0, 'نيل ميت - ', '', 0, '20', 0),
(6845, '645118', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '793573600677', 0, 1, 0, 0, 0, 'نيل ميت - ', '', 0, '20', 0),
(6846, '645121', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '793573600684', 0, 1, 0, 0, 0, 'نيل ميت - ', '', 0, '20', 0),
(6847, '645124', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '793573600691', 0, 1, 0, 0, 0, 'نيل ميت - ', '', 0, '20', 0),
(6848, '645127', 'الاسم العربي للمنتج', 'simple', 'وصف المنتج باللغة العربية', '793573600011', 0, 1, 0, 0, 0, 'نيل ميت - ', '', 0, '20', 0),
(6849, 'ALi', 'الاسم العربي للمنتج', 'asdasdasdas', 'وصف المنتج باللغة العربية', 'e.jpg', 56, 1, 12, 10, 120, 'KG', '', 0, '20', 0),
(6850, 'Son Of Bitch Neeraj Bisht', 'الاسم العربي للمنتج', 'Son Of Bitch Neeraj Bisht', 'وصف المنتج باللغة العربية', '', 52, 1, 23, 12, 12, '12', '', 0, '20', 0),
(6851, 'BRAZIL PIZZARIA', 'الاسم العربي للمنتج', 'PIZARIA', 'وصف المنتج باللغة العربية', '1', 0, 88330040, 10, 0, 0, '', '', 0, '20', 0),
(6852, 'CATIVA BIJOUTERIA E PRESENTES', 'الاسم العربي للمنتج', 'BIJOUTERIA', 'وصف المنتج باللغة العربية', '4', 0, 88330040, 22, 0, 0, '', '', 0, '20', 0),
(6853, 'RUNNING BRASIL', 'الاسم العربي للمنتج', 'MODA FITNESS', 'وصف المنتج باللغة العربية', '4', 0, 88330040, 22, 0, 0, '', '', 0, '20', 0),
(6854, 'FARMACIAS DESCONTO FACIL', 'الاسم العربي للمنتج', 'FARMACIA', 'وصف المنتج باللغة العربية', '10', 0, 88330040, 22, 0, 0, '', '', 0, '20', 0),
(6855, 'ODONTOLOGIA MICHELIN', 'الاسم العربي للمنتج', 'CONSULTORIO ODONTOLOGICO', 'وصف المنتج باللغة العربية', '10', 0, 88330040, 141, 0, 0, '', '', 0, '20', 0),
(6856, 'Strawberries', 'فراولة', 'Fresh Strawberry ', 'فراولة طازجة', 'strawberry.jpg', 2, 1, 7.5, 0, 1, 'kg', 'ك.ج.', 1, '10', 0),
(6857, 'Tomato', 'طماطم', 'Fresh Tomato', 'طماطم طازجة', 'tomato2.jpg', 1, 1, 6, 0, 1, 'kg', 'ك.ج.', 1, '15', 0),
(6858, 'kisan tomato ketchup', 'الاسم العربي للمنتج', 'TestAddress3', 'وصف المنتج باللغة العربية', 'tomato_ketchup.png', 3, 1, 100, 0, 1, 'kg', '', 1, '20', 0),
(6859, 'Butter', 'الاسم العربي للمنتج', 'TestAddress4', 'وصف المنتج باللغة العربية', 'Bread_Butter.jpeg', 4, 1, 100, 0, 1, 'kg', '', 1, '20', 0),
(6860, 'reusable_bags', 'الاسم العربي للمنتج', 'TestAddress1', 'وصف المنتج باللغة العربية', 'reusable_bags.png', 5, 1, 100, 0, 1, 'kg', '', 1, '20', 0),
(6861, 'TestName', 'الاسم العربي للمنتج', 'TestAddress2', 'وصف المنتج باللغة العربية', 'img6', 6, 1, 100, 0, 1, 'kg', '', 1, '20', 0),
(6862, 'TestName3', 'الاسم العربي للمنتج', 'TestAddress3', 'وصف المنتج باللغة العربية', 'img7', 7, 1, 100, 0, 1, 'kg', '', 1, '20', 0),
(6863, 'TestName4', 'الاسم العربي للمنتج', 'TestAddress4', 'وصف المنتج باللغة العربية', 'img8', 8, 1, 100, 0, 1, 'kg', '', 1, '20', 0),
(6864, 'TestName1', 'الاسم العربي للمنتج', 'TestAddress1', 'وصف المنتج باللغة العربية', 'img1.jpg', 1, 1, 50, 0, 1, 'kg', '', 1, '20', 0),
(6865, 'tomato', 'الاسم العربي للمنتج', 'TestAddress2', 'وصف المنتج باللغة العربية', 'tomato.jpg', 2, 1, 50, 0, 1, 'kg', '', 1, '20', 0),
(6866, 'kisan tomato ketchup', 'الاسم العربي للمنتج', 'TestAddress3', 'وصف المنتج باللغة العربية', 'tomato_ketchup.png', 3, 1, 50, 0, 1, 'kg', '', 1, '20', 0),
(6867, 'Butter', 'الاسم العربي للمنتج', 'TestAddress4', 'وصف المنتج باللغة العربية', 'Bread_Butter.jpeg', 4, 1, 50, 0, 1, 'kg', '', 1, '20', 0),
(6868, 'reusable_bags', 'الاسم العربي للمنتج', 'TestAddress1', 'وصف المنتج باللغة العربية', 'reusable_bags.png', 5, 1, 50, 0, 1, 'kg', '', 1, '20', 0),
(6869, 'TestName', 'الاسم العربي للمنتج', 'TestAddress2', 'وصف المنتج باللغة العربية', 'img6', 6, 1, 50, 0, 1, 'kg', '', 1, '20', 0),
(6870, 'TestName3', 'الاسم العربي للمنتج', 'TestAddress3', 'وصف المنتج باللغة العربية', 'img7', 7, 1, 50, 0, 1, 'kg', '', 1, '20', 0),
(6871, 'TestName4', 'الاسم العربي للمنتج', 'TestAddress4', 'وصف المنتج باللغة العربية', 'img8', 8, 1, 50, 0, 1, 'kg', '', 1, '20', 0),
(6872, 'Orange Baket', 'الاسم العربي للمنتج', 'test Orange Baket product', 'وصف المنتج باللغة العربية', 'Purton-Oranges.jpg', 18, 1, 6.5, 0, 2, 'kg', '', 1, '20', 0),
(6873, 'Panana Baket', 'الاسم العربي للمنتج', 'test Panana Baket product', 'وصف المنتج باللغة العربية', 'Purton-Oranges.jpg', 18, 1, 9, 0, 1, 'kg', '', 1, '20', 0),
(6875, 'TestName1', '', 'TestAddress1', '', 'img1.jpg', 1, 1, 50, 0, 1, 'kg', '', 1, '19', 0),
(6876, 'tomato', '', 'TestAddress2', '', 'tomato.jpg', 2, 1, 50, 0, 1, 'kg', '', 1, '24', 0),
(6877, 'kisan tomato ketchup', '', 'TestAddress3', '', 'tomato_ketchup.png', 3, 1, 50, 0, 1, 'kg', '', 1, '20', 0),
(6878, 'Butter', '', 'TestAddress4', '', 'Bread_Butter.jpeg', 4, 1, 50, 0, 1, 'kg', '', 1, '22', 0),
(6879, 'reusable_bags', '', 'TestAddress1', '', 'reusable_bags.png', 5, 1, 50, 0, 1, 'kg', '', 1, '9', 0),
(6880, 'TestName', '', 'TestAddress2', '', 'img6', 6, 1, 50, 0, 1, 'kg', '', 1, '14', 0),
(6881, 'TestName3', '', 'TestAddress3', '', 'img7', 7, 1, 50, 0, 1, 'kg', '', 1, '20', 0),
(6882, 'TestName4', '', 'TestAddress4', '', 'img8', 8, 1, 50, 0, 1, 'kg', '', 1, '20', 0),
(6883, 'TestName1', '', 'TestAddress1', '', 'img1.jpg', 1, 1, 50, 0, 1, 'kg', '', 1, '19', 0),
(6884, 'tomato', '', 'TestAddress2', '', 'tomato.jpg', 2, 1, 50, 0, 1, 'kg', '', 1, '24', 0),
(6885, 'kisan tomato ketchup', '', 'TestAddress3', '', 'tomato_ketchup.png', 3, 1, 50, 0, 1, 'kg', '', 1, '20', 0),
(6886, 'Butter', '', 'TestAddress4', '', 'Bread_Butter.jpeg', 4, 1, 50, 0, 1, 'kg', '', 1, '22', 0),
(6887, 'reusable_bags', '', 'TestAddress1', '', 'reusable_bags.png', 5, 1, 50, 0, 1, 'kg', '', 1, '9', 0),
(6888, 'TestName', '', 'TestAddress2', '', 'img6', 6, 1, 50, 0, 1, 'kg', '', 1, '14', 0),
(6889, 'TestName3', '', 'TestAddress3', '', 'img7', 7, 1, 50, 0, 1, 'kg', '', 1, '20', 0),
(6890, 'TestName4', '', 'TestAddress4', '', 'img8', 8, 1, 50, 0, 1, 'kg', '', 1, '20', 0),
(6891, 'TestName1', '', 'TestAddress1', '', 'img1.jpg', 1, 1, 50, 0, 1, 'kg', '', 1, '19', 0),
(6892, 'tomato', '', 'TestAddress2', '', 'tomato.jpg', 2, 1, 50, 0, 1, 'kg', '', 1, '24', 0),
(6893, 'kisan tomato ketchup', '', 'TestAddress3', '', 'tomato_ketchup.png', 3, 1, 50, 0, 1, 'kg', '', 1, '20', 0),
(6894, 'Butter', '', 'TestAddress4', '', 'Bread_Butter.jpeg', 4, 1, 50, 0, 1, 'kg', '', 1, '22', 0),
(6895, 'reusable_bags', '', 'TestAddress1', '', 'reusable_bags.png', 5, 1, 50, 0, 1, 'kg', '', 1, '9', 0),
(6896, 'TestName', '', 'TestAddress2', '', 'img6', 6, 1, 50, 0, 1, 'kg', '', 1, '14', 0),
(6897, 'TestName3', '', 'TestAddress3', '', 'img7', 7, 1, 50, 0, 1, 'kg', '', 1, '20', 0),
(6898, 'TestName4', '', 'TestAddress4', '', 'img8', 8, 1, 50, 0, 1, 'kg', '', 1, '20', 0),
(6899, 'TestName1', '', 'TestAddress1', '', 'img1.jpg', 1, 1, 50, 0, 1, 'kg', '', 1, '19', 0),
(6900, 'tomato', '', 'TestAddress2', '', 'tomato.jpg', 2, 1, 50, 0, 1, 'kg', '', 1, '24', 0),
(6901, 'kisan tomato ketchup', '', 'TestAddress3', '', 'tomato_ketchup.png', 3, 1, 50, 0, 1, 'kg', '', 1, '20', 0),
(6902, 'Butter', '', 'TestAddress4', '', 'Bread_Butter.jpeg', 4, 1, 50, 0, 1, 'kg', '', 1, '22', 0),
(6903, 'reusable_bags', '', 'TestAddress1', '', 'reusable_bags.png', 5, 1, 50, 0, 1, 'kg', '', 1, '9', 0),
(6904, 'TestName', '', 'TestAddress2', '', 'img6', 6, 1, 50, 0, 1, 'kg', '', 1, '14', 0),
(6905, 'TestName3', '', 'TestAddress3', '', 'img7', 7, 1, 50, 0, 1, 'kg', '', 1, '20', 0),
(6906, 'TestName4', '', 'TestAddress4', '', 'img8', 8, 1, 50, 0, 1, 'kg', '', 1, '20', 0),
(6907, 'TestName1', '', 'TestAddress1', '', 'img1.jpg', 1, 1, 50, 0, 1, 'kg', '', 1, '19', 0),
(6908, 'tomato', '', 'TestAddress2', '', 'tomato.jpg', 2, 1, 50, 0, 1, 'kg', '', 1, '24', 0),
(6909, 'kisan tomato ketchup', '', 'TestAddress3', '', 'tomato_ketchup.png', 3, 1, 50, 0, 1, 'kg', '', 1, '20', 0),
(6910, 'Butter', '', 'TestAddress4', '', 'Bread_Butter.jpeg', 4, 1, 50, 0, 1, 'kg', '', 1, '22', 0),
(6911, 'reusable_bags', '', 'TestAddress1', '', 'reusable_bags.png', 5, 1, 50, 0, 1, 'kg', '', 1, '9', 0),
(6912, 'TestName', '', 'TestAddress2', '', 'img6', 6, 1, 50, 0, 1, 'kg', '', 1, '14', 0),
(6913, 'TestName3', '', 'TestAddress3', '', 'img7', 7, 1, 50, 0, 1, 'kg', '', 1, '20', 0),
(6914, 'TestName4', '', 'TestAddress4', '', 'img8', 8, 1, 50, 0, 1, 'kg', '', 1, '20', 0),
(6915, 'TestName1', '', 'TestAddress1', '', 'img1.jpg', 1, 1, 50, 0, 1, 'kg', '', 1, '19', 0),
(6916, 'tomato', '', 'TestAddress2', '', 'tomato.jpg', 2, 1, 50, 0, 1, 'kg', '', 1, '24', 0),
(6917, 'kisan tomato ketchup', '', 'TestAddress3', '', 'tomato_ketchup.png', 3, 1, 50, 0, 1, 'kg', '', 1, '20', 0),
(6918, 'Butter', '', 'TestAddress4', '', 'Bread_Butter.jpeg', 4, 1, 50, 0, 1, 'kg', '', 1, '22', 0),
(6919, 'reusable_bags', '', 'TestAddress1', '', 'reusable_bags.png', 5, 1, 50, 0, 1, 'kg', '', 1, '9', 0),
(6920, 'TestName', '', 'TestAddress2', '', 'img6', 6, 1, 50, 0, 1, 'kg', '', 1, '14', 0),
(6921, 'TestName3', '', 'TestAddress3', '', 'img7', 7, 1, 50, 0, 1, 'kg', '', 1, '20', 0),
(6922, 'TestName4', '', 'TestAddress4', '', 'img8', 8, 1, 50, 0, 1, 'kg', '', 1, '20', 0),
(6924, 'برغل', '', 'TestAddress1', '', 'img1.jpg', 1, 1, 50, 0, 1, 'kg', '', 1, '19', 0),
(6925, 'tomato', '', 'TestAddress2', '', 'tomato.jpg', 2, 1, 50, 0, 1, 'kg', '', 1, '24', 0),
(6926, 'kisan tomato ketchup', '', 'TestAddress3', '', 'tomato_ketchup.png', 3, 1, 50, 0, 1, 'kg', '', 1, '20', 0),
(6927, 'Butter', '', 'TestAddress4', '', 'Bread_Butter.jpeg', 4, 1, 50, 0, 1, 'kg', '', 1, '22', 0),
(6928, 'reusable_bags', '', 'TestAddress1', '', 'reusable_bags.png', 5, 1, 50, 0, 1, 'kg', '', 1, '9', 0),
(6929, 'عدس', '', 'TestAddress2', '', 'img6', 6, 1, 50, 0, 1, 'kg', '', 1, '14', 0),
(6930, 'حمص', '', 'TestAddress3', '', 'img7', 7, 1, 50, 0, 1, 'kg', '', 1, '20', 0),
(6931, 'فول', '', 'TestAddress4', '', 'img8', 8, 1, 50, 0, 1, 'kg', '', 1, '20', 0),
(6932, 'برغل', '', 'TestAddress1', '', 'img1.jpg', 1, 1, 50, 0, 1, 'kg', '', 1, '19', 0),
(6933, 'tomato', '', 'TestAddress2', '', 'tomato.jpg', 2, 1, 50, 0, 1, 'kg', '', 1, '24', 0),
(6934, 'kisan tomato ketchup', '', 'TestAddress3', '', 'tomato_ketchup.png', 3, 1, 50, 0, 1, 'kg', '', 1, '20', 0),
(6935, 'Butter', '', 'TestAddress4', '', 'Bread_Butter.jpeg', 4, 1, 50, 0, 1, 'kg', '', 1, '22', 0),
(6936, 'reusable_bags', '', 'TestAddress1', '', 'reusable_bags.png', 5, 1, 50, 0, 1, 'kg', '', 1, '9', 0),
(6937, 'عدس', '', 'TestAddress2', '', 'img6', 6, 1, 50, 0, 1, 'kg', '', 1, '14', 0),
(6938, 'حمص', '', 'TestAddress3', '', 'img7', 7, 1, 50, 0, 1, 'kg', '', 1, '20', 0),
(6939, 'فول', '', 'TestAddress4', '', 'img8', 8, 1, 50, 0, 1, 'kg', '', 1, '20', 0),
(6940, 'tttt', 'الاسم العربي للمنتج', 'jhjhjhj', 'jhjhjhjhjh', '1538218365842110001_attach_1.png', 74, 1, 1200, 1212, 1, 'kg', '', 0, '', 0),
(6942, 'tttt', 'الاسم العربي للمنتج', 'asdasdas', 'asdasdasd', 'WhatsApp_Image_2019-01-19_at_11_28_05_AM_(2)1.jpeg', 75, 1, 1200, 1212, 1, 'kg', '', 0, '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` double DEFAULT NULL,
  `qty` double NOT NULL,
  `unit` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `store` varchar(200) NOT NULL,
  `store_id_login` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`purchase_id`, `product_id`, `price`, `qty`, `unit`, `date`, `store`, `store_id_login`) VALUES
(15, 57, NULL, 23, 'kg', '2018-05-09 10:30:36', '', '52'),
(16, 59, NULL, 1, 'kg', '2018-05-09 12:36:45', '', '52'),
(17, 64, NULL, 4, 'kg', '2018-05-09 12:37:15', '', '53'),
(18, 79, NULL, 5, 'kg', '2018-06-22 02:55:51', '', '1'),
(19, 61, NULL, 5, '', '2018-06-22 19:55:04', '', '1'),
(20, 57, NULL, 12, 'Kg', '2018-06-23 13:45:09', '', '1'),
(21, 60, NULL, 650, '', '2018-06-26 06:33:03', '', '1'),
(22, 69, NULL, 23, '', '2018-06-28 12:07:11', '', '1'),
(23, 64, NULL, 1, '1', '2018-06-28 23:47:35', '', '1'),
(24, 56, NULL, 100, '', '2018-07-01 17:33:14', '', '58'),
(25, 58, NULL, 225, '', '2018-07-04 19:01:35', '', '1'),
(26, 61, NULL, 1, 'Kg', '2018-07-05 01:58:36', '', '1'),
(27, 62, NULL, 20, 'kg', '2018-07-05 20:01:52', '', '1'),
(28, 59, NULL, 12, 'Kg', '2018-07-07 14:08:27', '', '1'),
(29, 64, NULL, 999999, '', '2018-07-07 14:15:48', '', '1'),
(30, 59, NULL, 1, 'botol', '2018-07-08 14:42:43', '', '1'),
(31, 64, NULL, 50, 'kg', '2018-07-08 19:13:58', '', '1'),
(32, 81, NULL, 2, 'gshsjsj', '2018-07-10 16:19:00', '', '66'),
(33, 58, NULL, 1, '', '2018-07-10 16:20:04', '', '66'),
(34, 58, NULL, 2, 'KG', '2018-07-10 16:20:45', '', '66'),
(35, 76, NULL, 0, '', '2018-07-14 06:19:42', '', '1'),
(36, 72, NULL, 2, '6', '2018-07-15 05:49:11', '', '1'),
(37, 69, NULL, 2, 'kg', '2018-07-20 10:45:49', '', '1'),
(38, 66, NULL, 100, '', '2018-07-21 18:53:04', '', '65'),
(39, 66, NULL, 10000, '', '2018-07-21 18:54:05', '', '65'),
(40, 71, NULL, 2, '', '2018-07-22 18:31:44', '', '1'),
(58, 59, NULL, 1000, '', '2018-08-04 08:45:23', '', '1'),
(61, 63, NULL, 3, 'kg', '2018-08-05 13:39:03', '', '66'),
(67, 62, NULL, 280, 'kg', '2018-08-12 10:40:52', '', '1'),
(71, 90, NULL, 26, 'kg', '2018-08-13 04:19:53', '', '67'),
(72, 6873, NULL, 12, 'KG', '2018-08-14 13:15:59', '', '67'),
(73, 6872, NULL, 300, 'Nos', '2018-08-16 06:20:34', '', '67'),
(75, 74, NULL, 2, 'unit', '2018-08-18 18:12:52', '', '1'),
(76, 59, NULL, 5, 'peace', '2018-08-22 16:14:00', '', '1'),
(77, 57, NULL, 12, '1', '2018-08-22 18:14:28', '', '1'),
(78, 64, NULL, 3, '', '2018-08-25 14:08:00', '', '1'),
(79, 58, NULL, 200, 'kg', '2018-08-25 22:30:07', '', '1'),
(80, 61, NULL, 2, 'kg', '2018-08-27 19:10:40', '', '1'),
(81, 101, NULL, 10, 'QTY', '2018-08-29 13:19:18', '', '1'),
(82, 62, NULL, 2, 'Kg', '2018-08-29 14:34:47', '', '1'),
(83, 59, NULL, 5, '1', '2018-08-29 14:34:54', '', '1'),
(84, 63, NULL, 66, 'Kg', '2018-08-29 14:35:54', '', '1'),
(86, 63, NULL, 53, 'Kg', '2018-09-01 12:53:25', '', '1'),
(87, 100, NULL, 52, 'KG', '2018-09-01 13:51:43', '', '1'),
(88, 62, NULL, 0, '', '2018-09-03 07:07:40', '', '74'),
(89, 77, NULL, 66, 'nos', '2018-09-03 09:36:26', '', '1'),
(90, 103, NULL, 47, '', '2018-09-05 03:13:56', '', '1'),
(91, 68, NULL, 50, '', '2018-09-09 22:21:10', '', '83'),
(92, 61, NULL, 12, '', '2018-09-10 13:55:15', '', '83'),
(93, 62, NULL, 12, 'Kg', '2018-09-13 14:10:03', '', '1'),
(94, 59, NULL, 45, 'unidad', '2018-09-16 21:49:29', '', '87'),
(95, 65, NULL, 0, '', '2018-09-17 16:54:39', '', '88'),
(96, 66, NULL, 0, '', '2018-09-17 20:13:41', '', '1'),
(97, 102, NULL, 589, 'kg', '2018-09-18 10:31:10', '', '83'),
(98, 63, NULL, 800, '', '2018-09-19 14:27:52', '', '1'),
(99, 136, NULL, 985, '', '2018-09-19 14:29:14', '', '1'),
(100, 64, NULL, 500, 'Kg', '2018-09-20 05:17:59', '', '1'),
(101, 77, NULL, 10, '', '2018-09-26 13:28:37', '', '1'),
(102, 71, NULL, 10, '3', '2018-09-27 18:58:26', '', '100'),
(103, 57, NULL, 2, '', '2018-09-28 07:58:10', '', '1'),
(104, 59, NULL, 56, '', '2018-09-29 17:02:54', '', '104'),
(105, 64, NULL, 120, 'kg', '2018-10-01 10:20:06', '', '1'),
(106, 64, NULL, 30, 'kg', '2018-10-02 11:57:06', '', '1'),
(107, 136, NULL, 200, 'kg', '2018-10-02 11:58:27', '', '1'),
(108, 63, NULL, 1, 'kg\n', '2018-10-05 07:34:07', '', '1'),
(109, 66, NULL, 12, '', '2018-10-07 17:00:50', '', '1'),
(110, 65, NULL, 0, '', '2018-10-08 06:05:27', '', '1'),
(111, 57, NULL, 500, 'kg', '2018-10-09 07:39:08', '', '1'),
(112, 59, NULL, 12, '', '2018-10-10 03:37:51', '', '1'),
(113, 59, NULL, 0, '', '2018-10-10 05:01:17', '', '1'),
(114, 70, NULL, 20, 'h', '2018-10-10 12:45:02', '', '1'),
(115, 64, NULL, 89, 'Qty', '2018-10-11 14:07:02', '', '1'),
(116, 58, NULL, 2, '', '2018-10-11 17:08:27', '', '1'),
(117, 81, NULL, 12, 'qty', '2018-10-13 18:40:00', '', '1'),
(118, 136, NULL, 10, 'kg', '2018-10-13 18:41:46', '', '1'),
(119, 65, NULL, 75, '', '2018-10-15 02:12:55', '', '1'),
(120, 58, NULL, 10000, '', '2018-10-18 16:43:23', '', '123'),
(121, 144, NULL, 200, 'qty', '2018-10-19 02:38:27', '', '1'),
(122, 63, NULL, 45, 'Kl', '2018-10-20 01:30:25', '', '1'),
(123, 167, NULL, 0, '', '2018-10-22 23:01:34', '', '129'),
(124, 62, NULL, 0, '', '2018-10-25 07:00:18', '', '1'),
(125, 63, NULL, 0, '', '2018-10-25 07:00:27', '', '1'),
(126, 63, NULL, 2, '', '2018-10-25 07:04:40', '', '1'),
(127, 66, NULL, 100, '', '2018-10-26 07:52:26', '', '1'),
(128, 80, NULL, 3000, '', '2018-10-29 17:39:29', '', '1'),
(129, 63, NULL, 665, '', '2018-11-03 08:33:15', '', '1'),
(130, 62, NULL, 10, '', '2018-11-03 22:18:56', '', '1'),
(131, 66, NULL, 25, 'nos', '2018-11-04 14:40:07', '', '1'),
(132, 63, NULL, 25, '', '2018-11-07 11:47:37', '', '1'),
(133, 63, NULL, 1, 'kg', '2018-11-09 11:56:08', '', '1'),
(134, 68, NULL, 0, '', '2018-11-14 18:31:49', '', '1'),
(135, 138, NULL, 25, '', '2018-11-14 18:32:08', '', '1'),
(136, 64, NULL, 200, '', '2018-11-18 08:26:12', '', '142'),
(137, 61, NULL, 100, '', '2018-11-18 08:28:08', '', '142'),
(138, 57, NULL, 25, 'QTY', '2018-11-18 10:49:49', '', '143'),
(139, 58, NULL, 5, '', '2018-11-19 15:17:49', '', '1'),
(140, 58, NULL, 5, '', '2018-11-19 15:17:58', '', '1'),
(141, 64, NULL, 20, '', '2018-11-20 23:52:06', '', '1'),
(142, 100, NULL, 10, 'Qty', '2018-11-22 04:29:14', '', '144'),
(143, 64, NULL, 55, 'Kg', '2018-11-22 10:24:05', '', '1'),
(144, 68, NULL, 0, '', '2018-11-24 17:03:10', '', '146'),
(145, 170, NULL, 25, 'Qty', '2018-11-25 11:33:30', '', '150'),
(146, 63, NULL, 12, '', '2018-12-03 06:34:00', '', '1'),
(147, 136, NULL, 25, 'kg', '2018-12-05 19:46:34', '', '1'),
(148, 61, NULL, 100, 'kg', '2018-12-07 11:50:12', '', '158'),
(149, 61, NULL, 100, 'kg', '2018-12-07 11:50:14', '', '158'),
(150, 76, NULL, 20, '6', '2018-12-10 19:59:59', '', '1'),
(151, 68, NULL, 20, '', '2018-12-11 18:24:27', '', '1'),
(152, 68, NULL, 265, '', '2018-12-11 18:25:06', '', '1'),
(153, 61, NULL, 20, 'kg', '2018-12-15 15:15:40', '', '1'),
(154, 59, NULL, 20, 'QTY', '2018-12-16 02:06:42', '', '168'),
(155, 64, NULL, 66, 'kg', '2018-12-16 08:27:58', '', '1'),
(156, 64, NULL, 25, 'Nos', '2018-12-20 07:44:01', '', '1'),
(157, 170, NULL, 25, 'Nos', '2018-12-21 06:28:02', '', '1'),
(158, 59, NULL, 53, 'nos', '2018-12-22 01:19:25', '', '175'),
(159, 65, NULL, 0, '', '2018-12-22 01:20:11', '', '175'),
(160, 62, NULL, 0, '', '2018-12-24 15:09:16', '', '1'),
(161, 6850, NULL, 8, 'kg', '2018-12-25 17:59:00', '', '181'),
(162, 66, NULL, 80, 'QTY', '2018-12-26 23:25:54', '', '1'),
(163, 159, NULL, 2, 'kg', '2018-12-27 20:04:55', '', '182'),
(164, 168, NULL, 1, '', '2018-12-28 19:18:47', '', '182'),
(165, 58, NULL, 25, 'kg', '2019-01-01 02:02:01', '', '1'),
(166, 59, NULL, 2, 'kg', '2019-01-02 12:41:02', '', '1'),
(167, 63, NULL, 0, 'as', '2019-01-03 08:44:18', '', '1'),
(168, 65, NULL, 122, '', '2019-01-03 21:26:36', '', '1'),
(169, 59, NULL, 1, 'kg', '2019-01-05 15:33:27', '', '1'),
(170, 71, NULL, 2, 'KG', '2019-01-11 03:44:28', '', '1'),
(171, 65, NULL, 20, '', '2019-01-14 03:56:58', '', '191'),
(172, 58, NULL, 50, '', '2019-01-14 12:20:48', '', '1'),
(173, 59, NULL, 2, '', '2019-01-15 05:47:34', '', '192'),
(174, 61, NULL, 12, 'kg', '2019-01-18 07:40:20', '', '1'),
(175, 63, NULL, 21, 'kg', '2019-01-20 07:09:33', '', '1'),
(176, 62, NULL, 10, '5000', '2019-01-20 08:54:55', '', '1'),
(177, 77, NULL, 1, '100', '2019-01-20 08:56:42', '', '1'),
(178, 68, NULL, 0, '', '2019-01-20 17:14:21', '', '202'),
(179, 168, NULL, 9, 'qty', '2019-01-20 19:54:09', '', '1'),
(180, 172, NULL, 15, '', '2019-01-22 08:26:20', '', '1'),
(181, 6923, NULL, 1, '1', '2022-01-18 19:46:13', '', '67'),
(182, 6849, NULL, 23, 'bag', '2019-01-22 23:19:17', '', '1'),
(183, 6872, NULL, 50, 'kg', '2019-01-23 09:21:52', '', '1'),
(184, 63, NULL, 50, 'kg', '2019-01-23 09:29:28', '', '1'),
(185, 57, NULL, 2, '١كغ', '2019-01-23 21:22:50', '', '208'),
(186, 6874, NULL, 0, '', '2019-01-23 21:27:44', '', '208'),
(187, 65, NULL, 0, '', '2019-01-23 21:28:09', '', '208'),
(189, 6941, NULL, 1, '1', '2024-01-19 03:58:43', '', '67'),
(191, 161, NULL, 1, 'Tane', '2019-01-24 15:51:10', '', '1'),
(192, 6873, NULL, 15, 'adet', '2019-01-24 15:55:28', '', '1'),
(193, 6873, NULL, 21, 'adet', '2019-01-24 15:56:19', '', '1'),
(194, 89, NULL, 0, '', '2019-01-26 18:32:18', '', '1'),
(195, 64, NULL, 7, 'Kg ', '2019-01-26 18:32:59', '', '1'),
(196, 61, NULL, 448, 'Kg', '2019-01-27 09:34:25', '', '1'),
(197, 57, NULL, 400, '', '2019-01-27 12:52:51', '', '1'),
(198, 65, NULL, 5, 'lt', '2019-01-28 16:16:15', '', '1'),
(199, 63, NULL, 50, '150', '2019-01-29 10:41:34', '', '216'),
(200, 66, NULL, 5, '', '2019-01-29 16:46:24', '', '217'),
(201, 6856, NULL, 100, 'KG', '2019-01-30 18:43:45', '', '220'),
(202, 6865, NULL, 200, 'KG', '2019-01-30 18:44:17', '', '220');

-- --------------------------------------------------------

--
-- Table structure for table `razorpay`
--

CREATE TABLE `razorpay` (
  `id` int(200) NOT NULL,
  `api_key` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `razorpay`
--

INSERT INTO `razorpay` (`id`, `api_key`, `status`) VALUES
(1, 'rzp_test_JzclM3LTkxBGXs', '1');

-- --------------------------------------------------------

--
-- Table structure for table `registers`
--

CREATE TABLE `registers` (
  `user_id` int(11) NOT NULL,
  `user_phone` varchar(15) NOT NULL,
  `user_fullname` varchar(100) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `pincode` int(11) NOT NULL,
  `socity_id` int(11) NOT NULL,
  `house_no` longtext NOT NULL,
  `mobile_verified` int(11) NOT NULL,
  `user_gcm_code` longtext NOT NULL,
  `user_ios_token` longtext NOT NULL,
  `varified_token` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `reg_code` int(6) NOT NULL,
  `wallet` int(11) NOT NULL,
  `rewards` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `registers`
--

INSERT INTO `registers` (`user_id`, `user_phone`, `user_fullname`, `user_email`, `user_password`, `user_image`, `pincode`, `socity_id`, `house_no`, `mobile_verified`, `user_gcm_code`, `user_ios_token`, `varified_token`, `status`, `reg_code`, `wallet`, `rewards`) VALUES
(130, '9631736349', 'vinay', '123456@gmail.com', '123456', '911126af32c5fe4c2db26aa4562cfaad.png', 363625, 964, 'zzzzzyyy', 0, 'drCUkquaU80:APA91bEYFRAwyGuDrHj0KbzcxzQ0S63Y0d6KFZgbgtWUGGnGRqFqNL0TPCxVHDgJCASF-vxJnFGkWrBm4h4Ch-o1wisho6JQddqnHsMsw8gVPh6z_NtkwNDGKasrK6lsjRNUNZ15rrex', '', '5b9b6c07679cf5b9b6c0767a1a', 1, 0, -100, 202),
(131, '8530875127', 'rajesh', 'rajesh.b.dabhi@gmail.com', '9914771133', '', 0, 945, '', 0, '', '', '', 1, 0, 10, 50),
(132, '8285242635', 'raju', 'raju.mandal@tecmanic.com', '1234567', '', 0, 945, '', 0, 'cYwgqrtqYK4:APA91bEJzsdgNlqe9nMVq9Y9rkMgYlvYWJhHiN0On0bCHmp2mXKPXfq8SyEBi8IlDkjm-H9Gw2r1TBL6M_uCut4KKTZkjbA_RJ3VPftWrRpr1Tu11YEX4RJ0bjA9_YsxE-5n3-rednQd', '', '', 1, 0, 55, 31),
(133, '1136346070', 'Daniel Jorge Aleman', 'teleremis3@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', '', 0, 945, '', 0, 'f44NLC58u3M:APA91bG1P73MwtA2aEFNZa-Guen1S4zLYrdcV0mT5hDjDmlseHLD8E-Imv26TupgNSZREolc8dKAUKhkca1yYHjP5bq6AfE4rFpNtNj8bpdcnUw3kiw5aDZBi0tSZ6CY0A2ADm2NWASq04H6nng5DjJ7Th6T-e45gw', '', '5b05548ec090c5b05548ec0945', 1, 0, -10, 0),
(134, '9990155993', 'Neeraj Bisht', 'neerajbisht@live.com', '101e15590f1050d715e6aee4b5e5e209', '', 0, 945, '', 0, 'dQrE91zEDkE:APA91bHf0vFh_RcA-7nio4Us6nIZ92lZNZIW0UOhtjzlrTuw8nN2FzB0SK0k11hmGU5nNgQ-wMWnVrGKrjab56hetS64fRWIQsphzGPXmdM6xtHdbik5WuQjL8V0RGmdExvz5ottAcGX', '', '5b697c11b7ac85b697c11b7b0e', 1, 0, 10, 0),
(136, '7210804086', 'Goldy007', 'saurabh.rawat@tecmanic.com', 'qwerty', '', 0, 947, 'pusta road', 0, 'fJXWo3esk3I:APA91bHrt9tAH59FGrKjKmfCudG5RZUrQaU3RJfPS3YCjl5bUMPnoMk7UVw5L8QioCZfNakEILsDoTQClYkYFX9PFykXhEW652E3NqOCkXobzZDQGZbkBaapEi6T96O-jDOjT8LI93Lp', 'fJXWo3esk3I:APA91bHrt9tAH59FGrKjKmfCudG5RZUrQaU3RJfPS3YCjl5bUMPnoMk7UVw5L8QioCZfNakEILsDoTQClYkYFX9PFykXhEW652E3NqOCkXobzZDQGZbkBaapEi6T96O-jDOjT8LI93Lp', '5b9a3ff7b6a755b9a3ff7b6abe', 0, 0, -10, 5),
(137, '7895811769', 'Digambar Singh Khati', 'deekhati62@gmail.com', '1234', '', 0, 945, '', 0, '', '', '5b0554b06e0915b0554b06e0cb', 0, 0, 10, 0),
(138, '9971593475', 'sahil', 'sahilsdash@gmail.com', '6b68175b66a5de93da68b7485c560138', '', 0, 0, '', 0, '', '', '', 1, 0, 100, 100),
(139, '9999282203', 'saqib', 'mohdsaqib142@gmail.com', '79be2fa225c622e91411a57d1e86be8e', '', 0, 945, '', 0, '', '', '', 1, 0, 0, 0),
(140, '+919964156557', 'Ashwith', 'ashwithk4@gmail.com', '0b5ed675f991aca2683902acab6d907c', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(141, '9448623339', 'bsbs007', 'jsjs@kdkd.ckm', 'abfe227594433e5bfdce082197f982a1', '', 0, 945, '', 0, '', '', '', 1, 0, 0, 0),
(142, '7259472169', 'jsnsndn', 'admin@admin.com', '68f077fd30f6037c4136792d9f91f54c', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(143, '088993499783', 'everon', 'jfkfr@fisns.com', '5e625d525325746d407c847a7f6d1d2f', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(144, '0466494464', 'jdkdkr', 'evertongouveia2@gmail.com', '5e625d525325746d407c847a7f6d1d2f', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(145, '08524545754844', 'testingdong', 'testing@dong.com', 'd67e04fb1ee04e258e505fd3557e689c', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(146, '8523568545', 'abc123', 'abc123@gmail.com', 'a6e8df44bad067955a19d8d3ec8d3f63', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(147, '8523456875', 'abc123', 'abc123456@gmail.com', 'e546003acd4918f3775474063bb91155', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(148, '9999999999', 'User', 'User@gmail.com', '123456789', '', 0, 945, '', 0, '', '', '', 1, 0, 0, 0),
(149, '9765549876', 'test456', 'test456@gmail.com', '309031d05eb343448b725b09a3635f13', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(150, '9916286103', 'jainool', 'zainulhayat@gmail.com', 'e1bd473e24007af331659110c5318221', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(151, '095123456789', 'demo1', 'demo1@gmail.com', '123456789', '', 0, 947, '', 0, '', '', '', 1, 0, 0, 0),
(152, '08058341011', 'Elias', 'holla@eliasdurosinmi.com', 'a7e95673585b905a67c1031e4068c3a2', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(153, '9742803170', 'vilz', 'praviljithpv@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(154, '05070889488', 'test', 'zafer.ast@hmail.com', 'ae2f135742ff7ab60dc26bf79bb33cdf', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(155, '9799245900', 'vishnoi', 'vishnoisunnyinc@gmail.com', 'e60d6348c80150512b165486963d0e28', '', 0, 0, '', 0, '', '', '5b6bf0fb0c8895b6bf0fb0c8d4', 1, 0, 0, 0),
(156, '9966338855', 'aaaaaa', 'aaaaaa@aaaaaa.com', '77127436d4ebf4ea0ee6cc4b6f7754c9', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(157, '99981858847', 'vanderlei', 'centralvittrine@gmail.com', 'edd565a34e6c6154da0010cae83cb08f', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(158, '9847478546', 'Abhi George', 'abhigeorgekalladayil@gmail.com', 'bb779704f7c95aa620969f5dc35d53f4', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(159, '8072740096', 'Arshikh Khan', 'arshikhkhan@gmail.com', 'ac8f929ff9c5586ce96cd6fc422f9691', '', 0, 0, '', 0, '', '', '5c0f4a91227e35c0f4a9122828', 1, 0, 0, 0),
(160, '55555699966', 'test', 'yannickparfait@gmail.com', '25f9e794323b453885f5181f1b624d0b', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(161, '0000000000', 'abc', 'abcf@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(162, '0561571820', 'hameed', 'altoum.hameed@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(163, '', 'tester', 'tester@tester.com', 'f5d1278e8109edd94e1e4197e04873b9', '', 0, 945, '', 0, '', '', '5bc3508c1fad15bc3508c1fb12', 0, 0, 0, 0),
(164, '251913661959', 'mm', 'xyz@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '', 0, 945, '', 0, '', '', '', 0, 0, 0, 0),
(165, '6484886666', 'bitoo', 'bitoo@ymail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(166, '+84989766365', 'Hòa', 'me@hoadn.com', '2f74240af5755601886460d9949ca4e6', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(167, '797643184071', 'imin', 'imina@mail.com', '21232f297a57a5a743894a0e4a801fc3', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(168, '9964999656', 'Harish J', 'demo@gmail.com', 'f4a7eccf2d88332ddcf65cf1555f40c6', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(169, '8317453454', 'Harish J', 'harishj2020@gmail.com', 'f4a7eccf2d88332ddcf65cf1555f40c6', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(170, '8825245586', 'aman', 'amaniagroup@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(171, '1234560095626', 'anekadapur', 'tecmanic@gmail.com', '6b15822dadec6e84cfb87d38f0e3514b', '', 0, 0, '', 0, '', '', '5c443b3e6d6a35c443b3e6d6e4', 1, 0, 2417, 100),
(172, '11999420351', 'Maicon', 'maiconluciana@gmail.com', '65f74d5ac416c880eaa9df894d52fac3', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(173, '9927444466', 'Akash Rathore', 'akash.rathore@tecmanic.com', '07de92c7b7d777d76b31dff59c0cda54', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(174, '9893103015', 'raaz', 'as@gmail.com', '9a8486c530f04c92aa4ac1b956762044', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(175, '8763030808', 'Arjuna', 'arjunbishoyi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(176, '0037126938526', 'easy', 'easyjoblv@gmail.com', 'a8f5f167f44f4964e6c998dee827110c', '', 0, 0, '', 0, '', '', '', 1, 0, 100, 333),
(177, '919191919191', 'test', 'test@gmail.com', '73dc10d234530a737875aadfb907daeb', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(178, '085741493406', 'Dhae Zaku', 'dhaezakyalfath@gmail.com', '4d1130994d57f142c41aeafb74c960d7', '', 0, 0, '', 0, '', '', '5ba610c4e9e555ba610c4e9e95', 1, 0, 0, 0),
(179, '01029050199', 'test', '6182035@naver.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(180, '+538386852222', 'bangsat', 'kancilasg@gmail.com', '088441968355c022054b1b7bab3dce01', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(181, '08576494946464', 'adamjordan', 'alfabetazetaokta@gmail.com', '944738fd01fedd48d95c4d893107c730', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(182, '00212660242322', 'karim', 'maroc.bdd@gmail.com', 'e198b4b03760e69c471c0254c6a2eabb', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(183, '0022588575652', 'ok', 'jires01@gmail.com', '378444af85ee2d1c08af6bc44bd293b8', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(184, '9876543210', 'arshikh', 'arshikhkhan@gmail.co', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(185, '9121180457', 'kumar', '143bhargavkumar93@gmail.com', '2e9e77bf008c608d63f14e489c174cdb', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(186, '9518583338', 'Shubham tadr', 'shubham.tade@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(187, '7680808627', 'kumar', 'rk926480@gmail.com', '29b8c5f71b12bef763c3b9964427606c', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(188, '8885551234', 'testing', 'testing@test.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(189, '9774349183', 'manoj', 'rahuldev.1340@rediffmail.com', '670b14728ad9902aecba32e22fa4f6bd', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(190, '01788104755', 'jalal', 'jalal@disbox.net', '05dc4be3550a5f2ec6bdb5e3a2fc5059', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(191, '+8801788104755', 'jalal', 'cpa.jalalhossain519@gmail.com', '05dc4be3550a5f2ec6bdb5e3a2fc5059', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(192, '4646458444', 'tetstttt', 'enakbanget010203@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(193, '9317429043699', 'juan', 'jcarlos.ad7@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(228, '9825874528', 'sample', 'sample@gmail.com', '9b21eda17755e113c4986ffffe669695', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(229, '', 'Bazil', 'bazilbycom20@gmail.com', 'abfe227594433e5bfdce082197f982a1', '', 0, 945, '', 0, '', '', '', 1, 0, 0, 0),
(230, '9311167841', 'prakash', 'prakash@ecosoftindia.com', '4f0c709502eaef2542da994160212ac2', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(231, '00096512345678', 'hffgjbfd', 'htrvjjff@gmail.com', 'c39c0b852d27a89443b11cb04015646e', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(232, '1234568846', 'khaleel', 'slsb@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(233, '9600039907', 'hudson', 'hudsonhan@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(234, '+917774831177', 'tecmanic', '2021studios7@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(235, '9808765177', 'vikky', 'vishalsbhai@gmail.com', 'e7ab94c64cc0840a6c3ced91d8367075', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(236, '8008252580', 'ajay', 'ajaycod@gmail.com', '7dafb2a95cc3712b8433c8a4556f1c79', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(237, '7774831177', 'ฉันไม่เข้าใจสิ่งที่คุณพูด', 'drn.12344321@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, '', 0, '', '', '', 1, 0, 2000, 0),
(238, '+917000658272', 'anand', 'anand260715@gmail.com', 'c08ac56ae1145566f2ce54cbbea35fa3', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(239, '085857187988', 'aw', 'bosagung69@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, '', 0, '', '', '', 1, 0, 80000, 10000),
(240, '8197607679', 'vvff', 'admin@gmail.com', '840255ba0e892823be9d36e18fb96a46', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(241, '+918197607679', 'toolar', 'adminadmin@gmail.com', '3c27938b3038b2c37620203572ed406d', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(242, '380930176487', 'Andrey', 'andrey.installmonster@gmail.com', '13551c5c3dac489b8a277227c1126271', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(243, '+9054422331', 'rifki', 'rifkikose@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(244, '1234567897', 'vvv', 'vv@vv.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(245, '01970777247', 'Iftekhar pappu', 'bdit247@gmail.com', '596291e4f5766b862cedf877795ca876', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(246, '08111111111', 'kun', 'dwiyankun@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(247, '09172279644', 'amin', 'amin66r@gmail.com', '07d5efbaa4e09f4fe5ff68a03e73a7e0', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(248, '628174161758', 'Danu', 'dnang99@gmail.com', '0134a762b1c7d4acab4a766061b57093', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(249, '6478933535', 'Fadi', 'fadimansours@gmail.com', '8e485f1152c6f046de2bc361dd9f5afc', '', 0, 0, '', 0, '', '', '5b53d6fdb02075b53d6fdb0247', 1, 0, 0, 0),
(250, '+16478933535', 'Fadi', 'info.prestigepm@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(251, '+60142288665', 'Dennis', 'dennisho0813@gmail.com', 'e02d56fd19c68e1faa196a82df831cbf', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(252, '000887578548', 'tttcscsc', 'gsgrsss@vsvsvsvsv.bxb', '9c830ac8ddfb264269ec674a1fc73a2e', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(253, '558568559885', 'hfg', 'gvg@gmail.com', 'b196801ffd03bf67b733f01585a90645', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(254, '96525866663', 'huhgy', 'sa@gmail.com', '25d55ad283aa400af464c76d713c07ad', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(255, '7044633896', 'subhrojit', 'subhrojitrock@gmail.com', 'a610dfc558622bf439d1f223802c797f', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(256, '1234567892', 'testdata', 'testdata@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(257, '9966332222', 'br', 'br@gmail.com', '2b5422dc65a7ffc11b7c2bf6deb597b2', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(258, '9550947979', 'murali', 'mvmkrishnagsm@gmail.com', '8854b47fc05990266cc6df7f69d1adeb', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(259, '01744968888', 'kuntal', 'kuntal1230@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(260, '01911862115', 'forhad', 'forhad@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(261, '111222333444', 'saiful', 'saifulmirulll@gmail.com', '96f0f08c0188ba04898ce8cc465c19c4', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(262, '9496188949', 'nisham', 'ksnisham@gmail.com', '15eade653b7ed1b2d792bec0881a6b63', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(263, '9123369526', 'sagar', 'sarkar.sagar@gmail.com', 'ca533fb0d4c9ef97d4026ae934af6696', '', 0, 0, '', 0, '', '', '5b5820f3a9c2b5b5820f3a9c6d', 1, 0, 0, 0),
(264, '8687989644', 'ss', 'sss@ddd.com', '9eb8965285a9ca04df12fbef1db619a3', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(265, '8095253345', 'mundo', 'tvsoy@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(266, '0560611747', 'reki', 'tmaster2000@hotmail.com', '529b38f73bf2eadf4fdbfe7fa785c585', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(267, '0789653214', 'marko', 'mariovuk@yahoo.com', 'd49b868079e06345f265c7fa89136b82', '', 0, 0, '', 0, '', '', '5b5dd908bf7c25b5dd908bf802', 1, 0, 0, 0),
(268, '966560611747', 'reko', 'taem59@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(269, '07111111111', 'babybro', 'babybro@gmail.com', '25f9e794323b453885f5181f1b624d0b', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(270, '9846543210', 'testuser', 'testuser@gmail.con', '56fed1ee4cc763e7830a5b4fbb7ebec7', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(271, '919799245900', 'vishnoi sunny', 'Vishnoi.sunny50@gmail.com', '5240281bf5c3aab4b37700e72a97ce48', '', 0, 0, '', 0, '', '', '5b6bf1122038a5b6bf112203ca', 1, 0, 0, 0),
(272, '0987456321', 'mark', 'djmar1979@yahoo.com', '6a51fd53d519fb9092307b44bfea2514', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(273, '+77079339707', 'Alfarabi', 'alfarabi.uzak@gmail.com', '89aff154de4e09ae6115deecafb00445', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(274, '96325874111111', 'ram', 'lrjramkumar@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(275, '8763873500', 'rit', 'riteshonline@gmail.com', '25d55ad283aa400af464c76d713c07ad', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(276, '8967120499', 'sudipta', 'sudiptagupta217@gmail.com', 'f2cca53ca96bdf1e476306d26ee083b3', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(277, '9730080358', 'kevalsing', 'kevalsing@gmail.com', 'a7fadfa3906b6e2ab32310b81a4090df', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(278, '7015173974', 'mayank', 'mayankgirdhar0001@gmail.com', 'f005153bfe8d69e414440da3c9a36c64', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(279, '9850899506', 'Dnyaneshwar', 'dnyaneshwarpradhan@gmail.com', '2e8b6f836594fc30d540b11e851cbf15', '', 0, 0, '', 0, '', '', '5b6302b6e66105b6302b6e6650', 1, 0, 0, 0),
(280, '8633596652', 'ghhggghh', 'ramjay900@gmail.com', '87d3507b49102d7155e963fb34b2501b', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(281, '7358805328', 'jayaraman', 'ramjay21@gmail.com', '283aad8751788885e7339fb94b7208b8', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(282, '0996688251', 'jose', 'jose_edubg@hotmail.com', 'e5029deefb16bb4588a6c3c773d3c68e', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(283, '9015544264', 'abc', 'abc@@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(284, '9015544262', 'sspandconstruction', 'sspandconstruction@gmail.com', '784ebc7877711442a5271f5cf3e39005', '', 0, 0, '', 0, '', '', '5b705f314b3d55b705f314b416', 1, 0, 0, 0),
(285, '81985133777', 'Rogerio', 'rj.prod@hotmail.com', '06a8647723d4d285aefdb02ed285220b', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(286, '9785263786', 'Samee', 'samee.chit@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, '', 0, '', '', '5bc07432d17bb5bc07432d17fd', 1, 0, 0, 0),
(287, '9084632266', 'Mohit Kumar', 'mohitkumarakki@gmail.com', '68c13b3f6861f2daf1de73fe527e5e37', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(288, '8888982322', 'kish', 'kishorkk0808@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(289, '7760901946', 'prajwal', 'prajwalhegde@evalai.com', '42560d423bcb14ee610635b598822efc', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(290, '9182635759', 'sunil', 'rv.sunilkumar@outlook.com', '6928b40d932b7152a47ca5f95bf51d27', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(291, '+79171274237', 'yury', 'sock.ops@gmail.com', 'd85448f41a89e51a6df99d494c85e58d', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(292, '916639558333', 'Samuel', 'samuelserra1989@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(293, '9916705940', 'venkat', 'reachvenkat.ch@gmail.com', '092be94889bb3fe5080a7c26058acfce', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(294, '6566464985', 'alin', 'alio.war4@gmail.com', '1957e21f52f07e09d764cdd059b3c14f', '', 0, 0, '', 0, '', '', '5b660076b2e7b5b660076b2ebc', 1, 0, 0, 0),
(295, '9848577788', 'naresh', 'eplaceonline@gmail.com', 'ae5515e371a599b8d82b244212209283', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(296, '0123456789', 'user', 'nuockhoangvnn@gmail.com', '25f9e794323b453885f5181f1b624d0b', '', 0, 0, '', 0, '', '', '5b66e46e9c3725b66e46e9c3b1', 1, 0, 0, 0),
(297, '+18326281669', 'mimi', 'dabymouser@gmail.com', '8579e73f1484ef4b4200a1eec567e4a3', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(298, '0722705138', 'james', 'jaymoh53@gmail.com', '25d55ad283aa400af464c76d713c07ad', '', 0, 0, '', 0, '', '', '5b695da5814605b695da5814a0', 1, 0, 0, 0),
(299, '9334086830', 'abcdefg', 'littletybee2083@gmail.com', 'dbd2ff40a0cf823d97344bf5037fbbbd', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(300, '081564732952', 'Ganef', 'ganefsomantri@gmail.com', '25d55ad283aa400af464c76d713c07ad', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(301, '0576467607', 'kareem', 'kareem.elsherpiny@gmail.com', '8e2cfc5db90fca9a5d188bd5ac720245', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(302, '8878088089808', 'eydgdg', 'eeee@gmail.com', '4297f44b13955235245b2497399d7a93', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(303, '7879357664', 'anand', 'andyrastogi6672@gmail.com', '8f28605277376ca9d7b6e040275b814c', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(304, '01756976767', 'Arnob', 'aarnob.monir@gmail.com', '14aabaa4a56fc754d1c1f64ebee07324', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(305, '55984312397', 'test', 'alefe.alt7@gmail.com', '80703d1cb9b1e3d0a854eaba62b49928', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(306, '9051714652', 'ajam', 'mywelrecharge@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(307, '07227051381', 'james', 'jaymoh@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(308, '9946213758', 'lupir', 'lupir@fidelium10.com', '65440214d39017318e027ac7aae5e34d', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(309, '9430950964', 'rajnikant', 'rajnikant.k22@gmail.com', 'fba44ddc035a24d5d93b35215fadc628', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(310, '9426183979', 'raghu', 'raghu4you.13@gmail.com', 'cc03e747a6afbbcbf8be7668acfebee5', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(311, '9718001448', 'deepak', 'deepakrwt007@gmail.com', '1f22a71744b96f3b5512567d770dc38b', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(312, '9560199601', 'YOGESH', 'ytripathi151@gmail.com', '8ee10554af7c614fa6bfbfde7294fc75', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(313, '8639807470', 'surya', 'frnds2suriya@gmail.com', '25d55ad283aa400af464c76d713c07ad', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(314, '809668659698', 'junior', 'test1@gmail.com', '25d55ad283aa400af464c76d713c07ad', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(315, '+8801756976767', 'Arnob', 'aaarnob.monir@gmail.com', 'c93ccd78b2076528346216b3b2f701e6', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(316, '1020304050', 'chanki pande', 'chanki@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(317, '0852312332', 'tes123', 'test123@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(318, '3568686385', 'ckckck', 'xjxjxj@aaa.com', 'ab4f63f9ac65152575886860dde480a1', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(319, '9789956784', 'prabhu', 'prabhu.prem.g@gmail.com', 'cd19c3d30eccce7e9fb296676f58cb6c', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(320, '9944167535', 'raja', 'moganbloggerz92@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(321, '9787920999', 'Anand', 'alpsdeal@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(322, '3232176092', 'hss', 'gssystems.col@gmail.com', '25d55ad283aa400af464c76d713c07ad', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(323, '8285251907', 'jaat', 'jaatchaudhary4@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, '', 0, '', '', '5b97e7af68e795b97e7af68ec0', 1, 0, 0, 0),
(324, '5629465535', 'henry', 'henryhein@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(325, '7200852520', 'atul', 'atultiwari1958@gmail.com', '54b53072540eeeb8f8e9343e71f28176', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(326, '8768768769', 'veer', 'e@gmail.com', 'ab599e8713100f2172119d444dea4d01', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(327, '1212121212', 'veer', 'xxx@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(328, '3434343434', 'veer', 'kabir@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(329, '9898989876', 'veer', 'kapok@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(330, '5656565656', 'veer', 'sonu@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(331, '9879876545', 'Sony', 'sony@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(332, '3232324343', 'Thakur', 'Tkakur@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(333, '8882292219', 'veer', 'veer@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', 0, 0, '', 0, '', '', '5b718664dc60d5b718664dc656', 1, 0, 0, 0),
(334, '8585685968', 'Mirchi', 'mirchisouthern@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(335, '08112967927', 'john', 'nengkenekyeh@gmail.com', '947486c3c42831cf4e9cb8d27a49e903', '', 0, 0, '', 0, '', '', '5b7297268dd115b7297268dd51', 1, 0, 0, 0),
(336, '0500000008', 'tsysy', 'bdjd@bsh.dn', '8b66c9bb150834194ee1e49ea36f38b1', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(337, '01918188102', 'Susanta', 'susanta.sks@gmail.com', 'd85861af0426ed55b7291181048e3101', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(338, '7405430056', 'kuldeep', 'kkwebdeveloper1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, '', 0, '', '', '5b8807f856f395b8807f856f7a', 1, 0, 0, 0),
(339, '03399994999', 'jay', 'junaidmir1@gmail.com', '9d92b4867fc47795b6362c0dbe37b69e', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(340, '0716158596', 'elijah', 'elionchwari@gmail.com', '6414439d2f7340af3abde01f0a6a8b78', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(341, '+254716158596', 'elijah', 'soncel1311@gmail.com', '6414439d2f7340af3abde01f0a6a8b78', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(342, '9826480793', 'devendra', 'ndekhosuno@gmail.com', 'c62d929e7b7e7b6165923a5dfc60cb56', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(343, '1231231230', 'test', 'test@te.st', 'f1c49ab3e7dd54b1daee1f4bdc0a1f78', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(344, '03349008152', 'syed', 'syedhassanshah69@gmail.com', '118c5c147f6d3136cd66005c14e5dd20', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(345, '8445158570', 'Rajat Sharma', 'srajat206@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(346, '03324185389', 'Shaikh', 'rizwa.khan001@gmail.com', 'd906cbfb64ed880530722af3aa026895', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(347, '9916286103*', 'jainool', 'jainooljobs@gmail.com', '9c968cc7f6ecb89d8ddcddbf9d5cc762', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(348, '9999995557', 'venu', 'appscomm.digital@gmail.com', 'a662dbe09d740aaac2c8bdb424fc9e01', '', 0, 0, '', 0, '', '', '5b77bafa418695b77bafa418b9', 1, 0, 0, 0),
(349, '0897979494', 'Hehe', 'hehe@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(350, '0500005555', 'hhhh', 'tt@tt.tt', '7777777', '', 0, 945, '', 0, '', '', '', 1, 0, 0, 0),
(351, '1234567891', 'Tenish Singh Tomar', 't@t.t', '827ccb0eea8a706c4c34a16891f84e7b', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(352, '7411764154', 'tester', 'venuswt@ymail.com', '07cca2069cef49b240d2c89ae1e6c549', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(353, '8882292211', 'veerendra', 'veerendra@tecmanic.com', '827ccb0eea8a706c4c34a16891f84e7b', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(354, '9876543288', 'veerendra', 'veersr9@gmail.com', 'Sonu@123', '', 0, 0, '', 0, '', '', '5b8cd1fc10a3c5b8cd1fc10a7a', 1, 0, 340, 0),
(355, '7019413439', 'srinath', 'srinath.bizz@gmail.com', '612605ee26b65891d476cb0dc654a79c', '', 0, 0, '', 0, '', '', '5b78ff5b06dc85b78ff5b06e08', 1, 0, 0, 0),
(356, '0711505915', 'Richard', 'mubalama@live.com', 'ede997b0caf2ec398110d79d9eba38bb', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(357, '8790737333', 'bez', 'bezawada.c@gmail.com', '99f127ff1f577716582c89e728847f90', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(358, '8210179415', 'tyh', 'ghghhhg@gmail.com', 'b3275960d68fda9d831facc0426c3bbc', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(359, '8210451236', 'ft hghyu', 'gjhhjghjhh@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(360, '158087505878', 'bbs', 'f@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(361, '9876543200', 'testuser123', 'testuser123@gmail.com', '56fed1ee4cc763e7830a5b4fbb7ebec7', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(362, '9881634624', 'bhh', 'prashantgbhangre@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', '', 0, 0, '', 0, '', '', '5b856463476aa5b856463476ec', 1, 0, 0, 0),
(363, '9332228896', 'luis', 'henrydvq@gmail.com', 'bd408a0f6b9ed32133c103a734f932e1', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(364, '8123563215', 'mridul', 'mridul0093@gmail.com', 'c106b55522f08b35a4e81b3868d3616d', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(365, '7990667930', 'ravi', 'ravikumbhani21@gmail.com', '5d06698cdef7d73adc2f134035604e9b', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(366, '98589885698', 'dodo', 'serviislas@gmail.com', '65edee0f7e92c2a1932aca42d5ad52c6', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(367, '3182990860', 'wilmer', 'wperezffonseca@gmail.com', '3fd542a5c3a519b3ae1184aa30bbde03', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(368, '+9647717424548', 'hhhhh', 'ktibxane@gmail.com', '8431fc4367312b797ef68933fd00aabc', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(369, '9952674574', 'manzoor', 'manzoor.ilahi772@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(370, '8667059698', 'srinath', 'Spartonsri@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(371, '9168571808', 'sanjay', 'sanjaykamble400@gmail.com', 'e457acb62f3b94392a206ec491691722', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(372, '9922316123', 'Manoj Dhawale', 'dhawalesarkar@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(373, '9898989898', 'abc', 'abc@abc.com', '90bed51510b09ad5d325d8d174fa616c', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(374, '+5598982080834', 'tiago', 'thiago.rodrigues7@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(375, '9929631999', 'Nidhish', 'demo@demo.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(376, '082337733222', 'reni', 'endangsetyoreni@gmail.com', 'e172dd95f4feb21412a692e73929961e', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(377, '8080808080', 'goku', 'goku@gmail.com', 'qwerty', '', 0, 0, '', 0, '', '', '5b87bde1ad4405b87bde1ad483', 1, 0, 0, 0),
(378, '43999663752', 'junior', 'flrj7@hotmail.com', 'sgdrl2a', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(379, '05417612926', 'Ahmet', 'ahmet@ahmet.com', '19901990', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(380, '7217705525', 'Anand', 'mishrapinki543@gmail.com', 'Anand12345', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(381, '7893105348', 'Satish', 'satish.revery@gmail.com', 'sat321', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(382, '8536902417', 'test123', 'testgo@gmail.com', 'test321', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(383, '9176555267', 'kalaiselvan', 'kalaiselvansekar88@gmail.com', 'akhilan199', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(384, '8947955325', 'test', 'test@test.com', '1234567890', '', 0, 0, '', 0, '', '', '5bcb3d38cebc55bcb3d38cec1e', 1, 0, 0, 0),
(385, '78359533498', 'yash', 'yash@gmail.com', 'yogwsh', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(386, '7248978000', 'yogesh', 'gmail@.com', 'yogesh', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(387, '032050050500080', 'ydFa', 't@gf.com', '4567754', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(388, '03345297493', 'waqas', 'khan@', 'waqas1234', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(389, '8818860882', 'jagendra', 'jagendra.com@gmail.com', '8818860882', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(390, '9998887776', 'veer', 'vee@gmail.com', 'Sonu@123', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(391, '7894561230', 'testgo', 'testgo1@gmail.com', 'test@123', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(392, '9652831470', 'test654', 'testgo2@gmail.com', 'testgo231', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(393, '8967120455', 'abc', 'abc@gmail.com', '12345', '', 0, 0, '', 0, '', '', '5beaddc7b91f35beaddc7b923e', 1, 0, 0, 0),
(394, '9999999998', 'p', 'p@gmail.com', 'password', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(395, '9711979736', 'Naresh', 'naresh.creativesol@gmail.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(396, '0965432179', 'mousab', 'mousab@gmail.com', 'mousabsab', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(397, '33878845555', 'tgg', 'cvbb@gmail.com', 'restar', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(398, '03218892204', 'Shafiq Ahmed', 'lhrshafiq@gmail.com', 'Welcome1', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(399, '9914094419', 'parminder', 'erparm19@gmail.com', 'aspl@99140', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(400, '9696969693', 'akshat', 'akshat@aja.com', '123123', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(401, '9160425633', 'test', 'kumarivaragani462@gmail.com', 'test123', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(402, '8849694159', 'prem', 'hetal1101@gmail.com', 'admin123', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(403, '+254712615614', 'joe', 'showcaseone@gmail.com', 'scase2k', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(404, '919631736348', 'viany', 'vinaymishra@gmail.com', 'chandan143', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 500),
(405, '9168111791', 'v', 'vishven.verulkar@gmail.com', '799298', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(406, '8277163727', 'praveen', 'praveen.galaxy1@gmail.com', 'Jpsolution', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(407, '8428527015', 'arun', 'appszonetech@gmail.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(408, '212626057996', 'badre', 'badrechaoui@gmail.com', '123321', '', 0, 0, '', 0, '', '', '5bf7d297d91a55bf7d297d91e4', 1, 0, 0, 0),
(409, '7903051954', 'vinay', 'vinaymisha@gmail.com', 'chandan143', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(410, '8309989997', 'md shariff', 'babluiglesias@gmail.com', '98487866', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(411, '1234567896', 'test', 'test12@test.com', 'testtest', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(412, '9015544263', 'rahujs', 'support@ssvixen.com', '12345', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(413, '7333168579', 'vinay', 'vinay12345@gmail.com', 'chandan143', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(414, '8898852431', 'arshad', 'arshaddevadiga@yahoo.in', 'Qwerty@123', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(415, '8763030809', 'arjub', 'arjunbishoyi2@gmail.com', 'Arjun1234#', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(416, '+994555645656', 'a', 'tecmanic2@gmail.com', 'tecmanic2', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(417, '03333333333', 'test', 'testdev@hotmail.com', 'password', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(418, '7004952394', 'Rajesh', 'rajeshroshan36@gmail.com', '123456raj', '', 0, 0, '', 0, '', '', '5ba13b0bea0a45ba13b0bea0e8', 1, 0, 0, 0),
(419, '1234567899', 'test', 'test@test.ru', 'testru', '', 0, 0, '', 0, '', '', '5b9a673ba96435b9a673ba9696', 1, 0, 0, 0),
(420, '9191919191', 'ajkllk', 'sgh@ahh.cin', '123456789', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(421, '9191919112', 'aaahhh', 'aaa@aaa.com', '123456789', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(422, '9825588551', 'riyaj', 'rfs2386@gmail.com', 'Rifs2386', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(423, '0021655654189', 'alaa', 'djalaa2@gmail.com', '44882200', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(424, '09007860100', 'shoaib', 'shoaib8816@gmail.com', '12e456', '', 0, 0, '', 0, '', '', '5b9ae443221045b9ae44322144', 1, 0, 0, 0),
(425, '+56959111517', 'soydeosorno', 'cristian@soydeosorno.cl', '1212cristi', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(426, '7033388086', 'vinay', 'apnashahar92@gmail.com', 'chandan143', '', 0, 0, '', 0, '', '', '', 1, 0, 101010, 2000),
(427, '03167646481', 'jahanzaib', 'jahanzaib.saif@outlook.com', 'rose4545', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(428, '12345678911', 'abcv', 'admin12@gmail.com', 'abc123', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(429, '5566332953', 'mnb', 'mnb@gmail.com', 'abc123', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(430, '8248597450', 'vasagam', 'vasagamfd@gmail.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(431, '99886433454', 'bajsjh', 'hsjdjd@gmail.com', 'radhaswami', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(432, '8989511111', 'varshita', 'iamvarshita@gmail.com', '11111111', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(433, '00965544711074', 'basem', 'basem902@gmail.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(434, '99362656027', 'mmm', 'dm@belentlik.tm', '11223344', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(435, '03138231367', 'Muhammad', 'invisiblevision2011@yahoo.com', 'Animator', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(436, '7407508054', 'Mirshad', 'mirshada450@gmail.com', '7407508054', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(437, '8777018365', 'Sourav', 'souravg1988@gmail.com', 'sourav@123', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(438, '3479625312', 'Test', 'support@techmac.com', 'Logme1234', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(439, '5575999813125', 'paulo', 'valdir@evolusaj.com', '12121212', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(440, '8779866306', 'vinay', 'phpopencart@gmail.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(441, '0477563236', 'reza', 'mr.pasdari@gmail.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(442, '9699412254', 'sachin', 'chandesachin9@gmail.com', 'cricket', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(443, '9463194636', 'srini', 'test@s.com', 'test123', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(444, '00923125235653', 'talhakhan', 'talhakhan484@gmail.com', 'intels', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(445, '8866312892', 'Rushi', 'patel.rus30@gmail.com', 'rushi308', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(446, '12365478985', 'ghj', 'ta@gm.com', '123456789', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(447, '085741493400', 'Kuanter', 'dhae.kuanterin@gmail.com', '1234567890', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(448, '9966996699', 'aa', 'a@a.in', 'qwerty', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(449, '0034632986124', 'vdhhdhdh', 'gdhehd@gmail.com', '123456789@', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(450, '0034693258741', 'vzbdb', 'apnaapna@gmail.com', '123456789@', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(451, '9956682852', 'anderson', 'andersonjc1@gmail.com', '658833', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(452, '7678422470', 'vinay', 'sharmaanuj20march@gmail.com', 'vinay@1994', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(453, '9898989812', 'info 123', 'priyank12445@gmail.com', 'test123', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(454, '9898989832', 'priyank', 'deepak@gmail.com', 'deepak', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(455, '1234567888', 'kd', 'beeebo121@gmail.com', 'Solara121', '', 0, 0, '', 0, '', '', '', 1, 0, 10, 0),
(456, '', 'alibaba', 'alibaba@gmail.com', 'Ali@123', '', 0, 945, '', 0, '', '', '', 0, 0, 0, 0),
(457, '', 'alibaba', 'alibabaa@gmail.com', 'Ali@123', '', 0, 945, '', 0, '', '', '', 0, 0, 21, 2147483647),
(458, '+529933934134', 'jhon', 'erval00@hotmail.com', 'system78', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(459, '8142067241', 'shankar', 'shankar.thadavarthi@gmail.com', 'bunnynaidu', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(460, '434435455454', 'dfbb', 'aaa@yahoo.com', 'aaaaaa', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(461, '7905300041', 'A', 'sharmaatul07july@gmail.com', 'ldfs1992', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(462, '25669935666', 'yiui', 'hjhhh@hjj.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(463, '135999666666', 'tuioo', '123456@123456.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(464, '7986306901', 'Taran', 'tarandeep@gswebtech.com', 'Taran123#', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(465, '7000532852', 'Hello', 'hello@world.com', 'q23456', '', 0, 0, '', 0, '', '', '5baa248c88d765baa248c88db7', 1, 0, 0, 0),
(466, '8899665544', 'Hello World', 'hello@mail.com', 'asdfghjkl', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(467, '9034567890', 'Harinder', 'haribabu123@gmail.com', '1hateyou', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(468, '8227001226', 'Indrasen', 'indrasenkumar715@gmail.com', 'rahul@715', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(469, '6379675824', 'jayanthan', 'jayanthanjey@gmail.com', '123456789', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(470, '1234', 'name', 'flyflyerson@gmail.com', 'Apple123', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(471, '07807207730', 'roro', 'raid.nahi@gmail.com', 'nanororo', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(472, '085284861248', 'safran', 'safranlimanw@gmail.com', 'admin123', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(473, '7975525166', 'Manish', 'mransubhe@gmail.com', '12345678', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(474, '8561972953', 'himanshu', 'daswanihimanshu010@gmail.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(475, '9898352931', 'ckpatel', 'ckpatel@divinetechs.com', 'Welcome@12', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(476, '8297037819', 'Alex', 'alexigu14@gmail.com', 'admin', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(477, '085720121708', 'yogi', 'yogianggoro7@gmail.com', 'Miracletwo', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(478, '8912300012', 'john doe', 'johndoe@yopmail.com', 'asdewq', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(479, '08522580852', 'rayqiri', 'rayqiri@gmail.com', '123457', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(480, '085225808525', 'noob', 'noob@noob.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(481, '8095689056', 'ghv', 'vjv@g.hjh', 'qwerrewq', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(482, '9809809865', 'VH if ft', 'qwer@q.q', 'qwerrewq', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(483, '8828273439', 'Durgesh Singh', 'durgesh6121@gmail.com', 'asdfghjkl', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(484, '14084066195', 'frank', 'flyflyerson4@gmail.com', '12345678', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(485, '9993293330', 'vv', 'vcarecomputer8@gmail.com', 'vijaycare', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(486, '9993293331', 'Vikas', 'vshop@gmail.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(487, '8147368388', 'yogesh', 'dumpswheel1@gmail.com', '123qwe', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(488, '9424947416', 'mr. test', 'sgdhfgdgd@gmail.com', '9977969977', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(489, '9424947412', 'mr patel', 'patel@gmail.com', '9977969977', '', 0, 961, '', 0, '', '', '', 1, 0, 100000, 10000),
(490, '+917004952394', 'rajesh', 'rajeshroshan336@gmail.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(491, '8074751101', 'chapanu', 'chapanu@gmail.com', 'chapanu', '', 0, 0, '', 0, '', '', '', 1, 0, 30, 0),
(492, '7850321985', 'jojo', 'jojo45@hotmail.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(493, '0620747590', 'adil', 'adil@yopmail.com', '1234567890', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(494, '01136223311', 'aadf', 'asdfg@gmail.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(495, '9009222875', 'satyam patel', 'satyam.patel.420@gmail.com', '9977969977', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(496, '94664466999', 'nuttttt', 'nuthan.cr@gmail.com', 'nuthan', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(497, '8109427243', 'manash', 'm@gmail.com', '12345', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(498, '8962885091', 'manash', 'manash@gmail.com', '1234567890', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(499, '6641096640', 'carlod', 'carl_2000mxmx@hotmail.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(500, '9985321239', 'Testing1', 'acumen78@gmail.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(501, '9799797979', 'test', 'test@getnada.com', 'test123', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(502, '9989945854', 'dinesh', 'reddy1994@gmail.com', 'coolturbo', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(503, '8309225743', 'Krishna', 'krishnatulasi444@gmail.com', 'anupottu', '', 0, 0, '', 0, '', '', '5bb6f3890027d5bb6f389002c6', 1, 0, 0, 0),
(504, '8299846529', 'gopal', 'gopal.tagprox@gmail.com', '112233', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(505, '+919717046000', 'sunny', 'swapansahni@gmail.com', '123gogroce', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(506, '00123456489966', 'hissro', 'hissro@hotmail.com', 'hissro', '', 0, 0, '', 0, '', '', '', 1, 0, 90, 0),
(507, '9123456789', 'kuchbhi', 'kuchbhi@gmail.com', '12345678', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(508, '5183481666', 'vushak', 'vshab@hahah.xom', '12345', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(509, '15843494349', 'vshah', 'vbhoyar@gmail.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(510, '9858208040', 'Sanjiv.sarangal@gmail.com', 'Sanjiv.sarangal@gmail.com', 'sonu1978', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(511, '9535262728', 'ramu', 'ramu@ganeshtravel.in', 's@112233', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(512, '51956819217', 'arthur', 'alex23121987@hotmail.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(513, '1244', 'cht', 'cht@cht.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(514, '01278733240', 'ahmed', 'kosha@mail.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(515, '8297765001', 'Alex', 'elkillao@gmail.com', 'lagrimas', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(516, '8098687656', 'jose', 'morales2428@hotmaik.com', 'jhosy0924', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(517, '9654298873', 'raj', 'rajgodara1001@gmail.com', 'rajgodara', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(518, '8302137134', 'raj', 'rajgodara1002@gmail.com', 'rajgodara', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(519, '8302137132', 'raja', 'rajgodara1005@gmail.com', 'ss11ssss', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(520, '9661173867', 'kaif', 'kaifreza507@gmail.com', 'kaifreza', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(521, '8975409858', 'testing', 'testing@gmail.com', 'test123', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(522, '33688836933699', 'uuu', 'baquero565@gmail.com', '12345678', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(523, '8884921440', 'Sandeep R', 'sandeep.r5321@gmail.com', 'together12', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(524, '9896904632', 'sky', 'ak@ak.com', '1@1@1@1@1@', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(525, '9123456789996', 'Kii', 'at@gmail.com', '12345678', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(526, '7798999077', 'prithviraj', 'prithvirajkdm91@gmail.com', 'QAZwsx1!', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(527, '6142020284', 'Akamai', 'sjsus@gmail.com', 'push2399', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(528, '1111', 'test', '1@gmail.com', '123456789', '', 0, 945, '', 0, '', '', '', 1, 0, 0, 0),
(529, '8985078160', 'mani', 'applerekha7@gmail.com', 'sai123', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(530, 'ttt', 'tttt', 'tttt@gmail.com', 'tttt', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(531, '+8617851185357', 'q757682793', '757682793@qq.com', 'fghj8246', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(532, '+6281268346775', 'andrian', 'sn.instamage@gmail.com', '123456789', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(533, '+10205238652', 'uuu', 'yyy@bhhhu.com', 'yyytujiko', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(534, '+919733335733', 'sohel', 'touch.sohelrana@gmail.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(535, '09296880948', 'rick', 'infosoloitech@gmail.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(536, '97430041115', 'rami', 'ramiissa@gmail.com', '471691', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(537, '0905155122', 'Biormarcus', 'biormarcus@gmail.com', 'adebisi22', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(538, '8379922629', 'ron', 'das', 'Rambo@1234', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(539, '9500065067', 'Siva', 'kksivatarget@gmail.com', 'siva1234', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(540, '0724359297', 'stefan', 'test@yahoo.com', 'eminem', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(541, '01689621003', 'rrr', 'rrr@gmail.com', 'reyad', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(542, '7776920920', 'Ankita', 'asm1325@gmail.com', 'ankita', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(543, '96170958960', 'kok', 'kassem.itani@gmail.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(544, '9694148539', 'Asif', 'mohdasifansari16@gmail.com', 'asif1234', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(545, '7780838243', 'sandy', 'ixjsandy@gmail.com', '1234567890', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(546, 'elias', 'elias', 'elias', 'elias', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(547, '9090808020', 'karthik', 'karthikd2c@gmail.com', '12345', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(548, '89898989898', 'djdj', 'dbdjsj@gmail.com', 'sbshdjdjdn', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(549, '1111111111111', 'ikleitz', 'ikleitz@gmail.com', '12345678', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(550, '9810049909', 'vivek', 'vivekdeep24@gmail.com', 'Password@1', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(551, '9963759093', 'naresh', 'naresh_kumar9093@yahoo.com', '9963759093', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(552, '252618465439', 'Elmi', 'engwaail@gmail.com', 'maxamed123', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(553, '9807341695', 'xbys', 'tst@gm.com', 'sameer', '', 0, 0, '', 0, '', '', '', 1, 0, 500, 200),
(554, '321913661965', 'mm', 'ee@ee.com', 'password', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(555, '8943646962', 'Sabi', 'sabinsunny@gmail.com', 'qwert', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(556, '+971522614503', 'mub', 'katsieye@gmail.com', 'kennyj15', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(557, '78009632321', 'vlaf', 'delivery@alakris.ru', 'faximily', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(558, '121212121212212', 'qqqq', 'qqq@qqq.qqq', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(559, '9400448801', 'shyam', 'sale@netringindia.in', 'mrx3f47b9t', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(560, '01820532995', 'sss', 'Sohanur.nub@gmail.com', 'asd123', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(561, '9303359917', 'vinay shrivastava', 'vinay17118381@gmail.com', 'Ujjain@36', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(562, '7558818399', 'navas', 'navasariyatt@gmail.com', 'navas@786', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(563, '2727272727', 'test', 'testtest@test.com', 'pass', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(564, '00967733838149', 'yemenart', 'info@yemenart.net', 'almalih555', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(565, '7385999123', 'Abhi', 'mmabhicool@gmail.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(566, '9853269856', 'ssss', 'cghhh@gmail.com', '12345678', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(567, '9423121002', 'Atul Shinde', 'shinde.atul002@gmail.com', 'AtylShinde', '', 0, 0, '', 0, '', '', '5bc431ee2e50c5bc431ee2e55a', 1, 0, 0, 0),
(568, '9423121210', 'Atul Shinde', 'Atul@gmail.com', 'AtulShinde', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(569, '9026732409', 'Amit', 'hello@xyz.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0);
INSERT INTO `registers` (`user_id`, `user_phone`, `user_fullname`, `user_email`, `user_password`, `user_image`, `pincode`, `socity_id`, `house_no`, `mobile_verified`, `user_gcm_code`, `user_ios_token`, `varified_token`, `status`, `reg_code`, `wallet`, `rewards`) VALUES
(570, '9866629321', 'jani', 'tnsh43@gmail.com', 'password', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(571, '9540234716', 'shivam', 'srivastava.shivam20@gmail.com', 'shivam123', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(572, '00962798710101', 'ahmad', 'ahmadmai88@gmail.com', '19887744', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(573, '9873504974', 'svn', 'shivam@dextrousinfo.com', '123456', '', 0, 0, '', 0, '', '', '5bc5770ba7fde5bc5770ba801f', 1, 0, 0, 0),
(574, '7781951669', 'Vishal', 'vishalroygeek@gmail.com', 'fuckyou', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(575, '8826636777', 'akash', 'akash@gmail.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(576, '7509422482', 'm', 'sonu123@gmail.com.in', '12345', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(577, '0034653565635', 'jose', 'test@hotmail.com', '24369692', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(578, '2222222222', 'submit', 's@gmail.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(579, '1234543219', 'sumit', 'sumitverma@dextrousinfo.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(580, '0700000000', 'Richard', 'richardmubalama@gmail.com', 'terminal', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(581, '9876567890', 'Veerendra Pratap Singh', 'anshu@gmail.com', 'Sonu@123', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(582, '+50937027447', 'test66', 'casena76@gmail.com', 'casena007', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(583, '7551018861', 'Mir ali', 'Mdmanirulislam389@gmail.com', '7407508054', '', 0, 0, '', 0, '', '', '', 1, 0, 30000, 300),
(584, '8007000765', 'Abhijeet', 'mmabhicool1@gmail.com', 'qwerty', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(585, '9897039900', 'mohit', 'mohit.sadana@gmail.com', '20dec1990', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(586, '054349845464', 'drnr', 'aaa@m.com', 'leblebi', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(587, '0558995888', 'leblebi', 'leblebi@m.com', '11111', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(588, '8888888888', 'hghhh', 'abdolshahi123456@gmail.com', '5555555555', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(589, '0502114513', 'zik', '016ads@gmail.com', 'qazxsw', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(590, '9021403884', 'Abhi', 'mmabhicool@gmail.comm', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(591, '+34656596529', 'edwin', 'madalina29@hotmail.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(592, '0034656596529', 'edwinrv72@yahoo.com', 'edwinrv72@yahoo.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(593, '17056071174', 'sam', 'dasintelligence@gmail.com', 'azra666', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(594, '9891554243', 'test', 'testing@testing.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(595, '222222221111', 'aaaa', 'aaaaaaaaa@aaaa.com', '111111', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(596, '1111111111', 'abc', 'aaaaaa@gmail.com', '111111', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(597, '1111111111666', 'test', 'testman@gmail.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(598, '+38683117150', 'zik', 'ervinmazor777@gmail.com', 'Open56mind', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(599, '3003245169', 'andres', 'vndres@hotmail.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(600, '34693258741', 'spain', 'testspain@gmail.com', '123456789', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(601, '34639852147', 'testtsts', 'test@spain.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(602, '9972325095', 'Max', 'manjunathcs289@gmail.com', '225651767', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(603, '+201278733240', 'asdfg', 'aaa@aa.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(604, '9876543219', 'hello', 'hello@hello.com', '100rya', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(605, '8697451228', 'SAKIB', 'sakib.007@hotmail.com', 'NAZMUS.007', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(606, '0661655277', 'tesr', 'test@test.fr', 'azerty', '', 0, 0, '', 0, '', '', '', 1, 0, 7000, 0),
(607, '+80752436198', 'Pradeep', 'deepan@fmajj.com', 'poiupoiu', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(608, '46485828282', 'Preadeek', 'pradeek@ymail.col', 'poiupoiu', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(609, '0813315051', 'Matt', 'matt@designersteelconcepts.co.za', '75258', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(610, '9658524125', 'hhh', 'jf@gh.com', '123456456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(611, '08123456789', 'tes', 'ditestinglagi@gmail.com', '1234567', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(612, '+967717154392', 'Martino', 'f10@live.in', 'mmm110', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(613, '03120143022', 'ali', 'alimehdipak@gmail.com', '111111', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(614, '9607785360', 'Thoha', 'thoha@floorplan.com.mv', 'thohatest', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(615, '9598959895', 'ssjs', 'dbskek@gmqil.com', 'ontherocks', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(616, '3693698520', 'rr', 'ed@f.mm', '1224688999', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(617, '9991121796', 'unhn', 'jjjjjj@gmail.com', 'umang123', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(618, '9911217963', 'umang', 'singhal@gmail.com', 'umang123', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(619, '9902798965', 'abhi', 'abhi7bng@gmail.com', 'vinyas@123', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(620, '8116451196', 'Rajiv Mishra', 'rajivkumar.mcc@gmail.com', 'R007007m', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(621, '9597568363', 'ajith', 'ajithkumar072@gmail.com', '9597568363', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(622, '9590919108', 'abb', 'tracerabhi96@gmail.com', 'abhishek12', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(623, '9617908392', 'kzkkz', 'isysnextdev@gmail.com', '9617908392', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(624, '7976736949', 'rahul', 'rahul@gmail.com', '7062373381', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(625, '9403464340', 'kiran chandrakant kadulkar', 'kadulkarkiran91@gmail.com', 'shri@0125', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(626, '9177880173', 'Ankit', 'doomprince.money@gmail.com', 'zaq12wsx', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(627, '8130643443', 'vinay', 'vinay.hiranwal@@gmail.com', '123', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(628, '9539900178', 'anoop', 'anup.synergy@gmail.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(629, '7713345678', 'aaaa', 'aaaa@aaaa.aaa', 'qqqq1111', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(630, '2333889999', 'pole', 'polepee@yahoo.com', 'notyet', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(631, '087823422481', 'bambang', 'email@bambang.id', 'haticerah', '', 0, 945, '', 0, '', '', '', 1, 0, 2000, 0),
(632, '7717424548', 'Namokaan', 'Namokaan@gmail.com', '00000000', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(633, '0111111111', 'jane', 'feilong313@gmail.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(634, '8400098725', 'Amit', 'amit.in@outlook.com', 'Amit#007', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(635, '+13195622289', 'marlon', 'mardrex@hotmail.com', '123123', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(636, '', 'hosein', 'hoseinhajepor@yahoo.com', '123456', '', 0, 945, '', 0, '', '', '', 1, 0, 0, 0),
(637, '9636005018', 'manish', 'feedback@jagprem.com', 'manish', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(638, '896542569933', 'ok', 'ok@ok.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(639, '0595407778', 'zeiad', 'zeiadandroid@gmail.com', 'admin@hulu', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(640, '009647503733331', 'Rabar', 'rabar.khoshnaw@gmail.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(641, '0912300000', 'someone', 'someone@email.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(642, '+38649390229', 'qendrim', 'q.rrahmani@gmail.com', '1234567890', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(643, '081666444455', 'kecebongmlebugot', 'cebong@gmail.com', '12345', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(644, '7024555468', 'shubham', 'devdesign92@gmail.com', 'shubham@12', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(645, '9971353737', 'amar', 'cartrakee@gmail.com', 'kumats', '', 0, 0, '', 0, '', '', '5bdb5b346c5ae5bdb5b346c5f3', 1, 0, 0, 0),
(646, '6201879946', 'shubham', 'shubhamkr@dspinfotech.in', 'shubham@12', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(647, '8249204066', 'lulu', 'lulusahululu@gmail.com', 'lululipsa', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(648, '9746056370', 'thanks', 'tes@mail.com', 'asd123.', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(649, '9974224999', 'Dhaval', 'dviramgama9@gmail.com', '123456', '', 0, 0, '', 0, '', '', '5be275760cfc85be275760d013', 1, 0, 0, 0),
(650, '9924904823', 'Ravi', 'rsanepara@gmail.com', 'raviravi', '', 0, 0, '', 0, '', '', '5be2716006f885be2716006fca', 1, 0, 0, 0),
(651, '5491136346070', 'daniel', 'dani2859@gmail.com', 'dani2859', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(652, '8758150951', 'Vikram', 'majiranavikramvikram585@gmail.com', '12345678', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(653, '9881749211', 'satya', 'spbn21@gmail.com', '1234567', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(654, '9633065323', 'nisham', 'ksnisha@gmail.com', '123nicj123', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(655, '32988664329', 'well', 'wellingtonmuniz@hotmail.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(656, '00351919551675', 'Tiago', 'tmiguelssantos@gmail.com', 'bcappf10', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(657, '085256959999', 'ih', 'ih@ih.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(658, '009809396368878', 'kasra', 'kasramalek@gmail.com', 'ahmad21', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(659, '009809025272807', 'kasra', 'kasramalekiust@gmail.com', 'se213456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(660, '7089436063', 'richa sharma', 'richa19you@gmail.com', 'qpal1430', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(661, '9547771118', 'Susanta', 'susantalohar9@gmail.com', '1234567890', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(662, '1234666999', 'rtfff', 'dviramga9@gmail.com', '1234567890', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(663, '7777908024', 'dhavalviramga', 'dhavalviramgama9@gmail.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(664, '5643251897', 'abc', 'abcd@gmail.com', '123456', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(665, '9985881155', 'akbar', 'akbarviveka@gmail.com', 'Akbar@1275', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0),
(798, '00989360436731', 'alu', 'bahman_dasht@yahoo.com', '44445566', '', 0, 0, '', 0, '', '', '5c0d24b7ac4255c0d24b7ac466', 1, 0, 0, 0),
(1052, '+79626926044', 'imamverdiyeveldar', 'imamverdiyeveldar@gmail.com', 'enigma554', '', 0, 0, '', 0, '', '', '', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rewards`
--

CREATE TABLE `rewards` (
  `id` int(200) NOT NULL,
  `point` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rewards`
--

INSERT INTO `rewards` (`id`, `point`) VALUES
(1, '10');

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `sale_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `on_date` date NOT NULL,
  `delivery_time_from` varchar(200) NOT NULL,
  `delivery_time_to` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `note` longtext NOT NULL,
  `is_paid` int(11) NOT NULL,
  `total_amount` double NOT NULL,
  `total_rewards` varchar(200) NOT NULL,
  `total_kg` double NOT NULL,
  `total_items` double NOT NULL,
  `socity_id` int(11) NOT NULL,
  `delivery_address` longtext NOT NULL,
  `location_id` int(11) NOT NULL,
  `delivery_charge` double NOT NULL,
  `new_store_id` varchar(200) NOT NULL DEFAULT '0',
  `assign_to` varchar(30) NOT NULL DEFAULT '0',
  `payment_method` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sale_items`
--

CREATE TABLE `sale_items` (
  `sale_item_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `qty` double NOT NULL,
  `unit` enum('gram','kg','nos') NOT NULL,
  `unit_value` double NOT NULL,
  `price` double NOT NULL,
  `qty_in_kg` double NOT NULL,
  `rewards` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` varchar(200) NOT NULL,
  `title` varchar(100) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `value`) VALUES
('1', 'minmum order amount', '1'),
('2', 'maxmum order amount', '7000');

-- --------------------------------------------------------

--
-- Table structure for table `signature`
--

CREATE TABLE `signature` (
  `id` int(200) NOT NULL,
  `order_id` varchar(200) NOT NULL,
  `signature` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `signature`
--

INSERT INTO `signature` (`id`, `order_id`, `signature`, `date`) VALUES
(1, '523', 'http://neerajbisht.com/grocery_test/uploads/signature/1529558769880.jpg', '2018-06-18 05:26:16'),
(251, '1969', './uploads/signature/Screenshot_20190127-215303.jpg', '2019-01-27 19:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `slider_title` varchar(100) NOT NULL,
  `slider_url` varchar(100) NOT NULL,
  `slider_image` varchar(100) NOT NULL,
  `sub_cat` int(200) NOT NULL,
  `slider_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `slider_title`, `slider_url`, `slider_image`, `sub_cat`, `slider_status`) VALUES
(35, 'Week Offer عروض الاسبوع', '', 'banner-12.png', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `socity`
--

CREATE TABLE `socity` (
  `socity_id` int(11) NOT NULL,
  `socity_name` varchar(200) NOT NULL,
  `pincode` varchar(15) NOT NULL,
  `delivery_charge` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `socity`
--

INSERT INTO `socity` (`socity_id`, `socity_name`, `pincode`, `delivery_charge`) VALUES
(945, 'PES', '517425', 25),
(946, 'GUDUPALLI', '17424', 100),
(947, 'Gaur city', '201309', 50),
(948, 'rtg', '201306', 4),
(949, 'pusta', '201306', 101),
(950, 'new add1', '123456', 0),
(951, 'new add2', '123456', 10),
(952, 'مركز بدر', '045', 15),
(953, 'Barrie', '121212', 10),
(954, 'Muzaffarpur', '842004', 25),
(955, 'Lahore', '54000', 0),
(956, 'arkan', '71034', 0),
(957, 'New Mahada Powai', '400076', 50),
(958, 'Kankarbagh', '800020', 20),
(959, 'noida 122', '201301', 0),
(960, 'Noida 45', '201301', 0),
(961, 'chhindwara', '480001', 20),
(962, 'area1', '96455', 12),
(963, 'Lagos Island', '101001', 1000),
(964, 'Patriax', '46017', 2),
(965, 'Dhanmondi', '1208', 10),
(966, 'Valencia', '46018', 2),
(967, 'Colombo 6', '00600', 250),
(968, 'Pontianak', '7823*', 12000),
(969, 'Kota Semarang', 'SMG', 15000),
(970, 'samalpur', '768001', 20),
(971, '1212', '370421', 40),
(972, 'hesham', '121561', 10),
(973, 'Dahi', '400068', 50),
(974, 'kireka', '0079', 2500),
(975, 'Kampala', '001', 500),
(976, 'tb', '6100', -2),
(977, 'ulj', '400086', 0),
(978, 'Kormanagka', '560025', 0),
(979, 'sidhi', '486661', 0),
(980, 'Imdonesia', '+62', 6000),
(981, 'Manado', '95115', 6000),
(982, 'Rukmini Gaon', '781022', 20),
(983, 'zona1', '1414', 1000),
(984, 'Bahria Town', '54000', 100),
(985, 'matoshri palza', '416001', 20),
(986, 'repalle', '522265', 40),
(987, 'dodo', '12253', 2),
(988, 'Nilambur', '676525', 10),
(989, 'bwz', '00225', 25),
(990, 'Sector 2/c', '827001', 50),
(991, 'Devgarh', '78654', 120),
(992, 'Gaziantep', '25100', 10),
(993, 'Gaziantep', '27070', 5),
(994, 'gaziantep', '27070', 5),
(995, 'balotra', '852128', 55),
(996, 'diarco', '1057', 50),
(997, 'KNJ', '741101', 10),
(998, 'KNJ', '741102', 15),
(999, 'KNJ', '741103', 15),
(1000, 'Limbodi', '452001', 20),
(1001, 'الريحانية', '31500', 100),
(1002, 'Tulip', '411034', 50),
(1003, 'Sleman', '55581', 20),
(1004, 'Daarso', 'Plek, Plekkie, ', 35);

-- --------------------------------------------------------

--
-- Table structure for table `store_login`
--

CREATE TABLE `store_login` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_phone` varchar(15) NOT NULL,
  `user_fullname` varchar(255) NOT NULL,
  `user_password` longtext NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `user_bdate` date NOT NULL,
  `is_email_varified` int(11) NOT NULL,
  `varified_token` varchar(255) NOT NULL,
  `user_gcm_code` longtext NOT NULL,
  `user_ios_token` longtext NOT NULL,
  `user_status` int(11) NOT NULL,
  `user_image` varchar(255) DEFAULT NULL,
  `user_city` int(11) NOT NULL,
  `user_login_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `store_login`
--

INSERT INTO `store_login` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_fullname`, `user_password`, `user_type_id`, `user_bdate`, `is_email_varified`, `varified_token`, `user_gcm_code`, `user_ios_token`, `user_status`, `user_image`, `user_city`, `user_login_status`) VALUES
(1, 'administrator', 'tecmanic@gmail.com', '9728152199', 'admin', '6b15822dadec6e84cfb87d38f0e3514b', 0, '2016-03-04', 1, '', '', '', 1, NULL, 3, 1),
(220, 'ضياء', 'store01@dokkan.com.sa', '79996148952', 'Jeddah جدة', 'fcea920f7412b5da7be0cf42b8c93759', 0, '0000-00-00', 0, '', '', '', 1, '002.png', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `testing`
--

CREATE TABLE `testing` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_description` longtext NOT NULL,
  `product_image` varchar(200) NOT NULL,
  `category_id` int(11) NOT NULL,
  `in_stock` int(11) NOT NULL,
  `price` double NOT NULL,
  `unit_value` double NOT NULL,
  `unit` varchar(10) NOT NULL,
  `increament` double NOT NULL,
  `rewards` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testing`
--

INSERT INTO `testing` (`product_id`, `product_name`, `product_description`, `product_image`, `category_id`, `in_stock`, `price`, `unit_value`, `unit`, `increament`, `rewards`) VALUES
(1, 'TestAddress1', 'img1', 'category_id_1', 1, 50, 1, 0, '1', 20, ''),
(2, 'TestAddress2', 'img2', 'category_id_2', 1, 50, 1, 0, '1', 20, ''),
(3, 'TestAddress3', 'img3', 'category_id_3', 1, 50, 1, 0, '1', 20, ''),
(4, 'TestAddress4', 'img4', 'category_id_4', 1, 50, 1, 0, '1', 20, ''),
(5, 'TestAddress1', 'img5', 'category_id_5', 1, 50, 1, 0, '1', 20, ''),
(6, 'TestAddress2', 'img6', 'category_id_6', 1, 50, 1, 0, '1', 20, ''),
(7, 'TestAddress3', 'img7', 'category_id_7', 1, 50, 1, 0, '1', 20, ''),
(8, 'TestAddress4', 'img8', 'category_id_8', 1, 50, 1, 0, '1', 20, ''),
(9, 'TestName1', 'TestAddress1', 'img1', 0, 1, 50, 1, 'kg', 1, '20'),
(10, 'TestName2', 'TestAddress2', 'img2', 0, 1, 50, 1, 'kg', 1, '20'),
(11, 'TestName3', 'TestAddress3', 'img3', 0, 1, 50, 1, 'kg', 1, '20'),
(12, 'TestName4', 'TestAddress4', 'img4', 0, 1, 50, 1, 'kg', 1, '20'),
(13, 'TestName1', 'TestAddress1', 'img5', 0, 1, 50, 1, 'kg', 1, '20'),
(14, 'TestName2', 'TestAddress2', 'img6', 0, 1, 50, 1, 'kg', 1, '20'),
(15, 'TestName3', 'TestAddress3', 'img7', 0, 1, 50, 1, 'kg', 1, '20'),
(16, 'TestName4', 'TestAddress4', 'img8', 0, 1, 50, 1, 'kg', 1, '20');

-- --------------------------------------------------------

--
-- Table structure for table `time_slots`
--

CREATE TABLE `time_slots` (
  `opening_time` time NOT NULL,
  `closing_time` time NOT NULL,
  `time_slot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `time_slots`
--

INSERT INTO `time_slots` (`opening_time`, `closing_time`, `time_slot`) VALUES
('08:00:00', '23:43:00', 30);

-- --------------------------------------------------------

--
-- Table structure for table `top_selling`
--

CREATE TABLE `top_selling` (
  `id` int(255) NOT NULL,
  `product_price` varchar(1000) NOT NULL,
  `image_title` varchar(1000) NOT NULL,
  `img_url` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `top_selling`
--

INSERT INTO `top_selling` (`id`, `product_price`, `image_title`, `img_url`) VALUES
(1, '225', 'Aashirvaad', 'http://neerajbisht.com/grocery_test/img/top_selling/aashirvaad.png'),
(2, '360', 'Coffee', 'http://neerajbisht.com/grocery_test/img/top_selling/coffee.png'),
(3, '200', 'Milk Powder', 'http://neerajbisht.com/grocery_test/img/top_selling/imag2.png'),
(4, '25', 'Cookies', 'http://neerajbisht.com/grocery_test/img/top_selling/imag3.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_phone` varchar(15) NOT NULL,
  `user_fullname` varchar(255) NOT NULL,
  `user_password` longtext NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `user_bdate` date NOT NULL,
  `is_email_varified` int(11) NOT NULL,
  `varified_token` varchar(255) NOT NULL,
  `user_gcm_code` longtext NOT NULL,
  `user_ios_token` longtext NOT NULL,
  `user_status` int(11) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_city` int(11) NOT NULL,
  `user_login_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_fullname`, `user_password`, `user_type_id`, `user_bdate`, `is_email_varified`, `varified_token`, `user_gcm_code`, `user_ios_token`, `user_status`, `user_image`, `user_city`, `user_login_status`) VALUES
(67, 'Saurabh', 'tecmanic@gmail.com', '9971483366', 'Main Admin 007', '6b15822dadec6e84cfb87d38f0e3514b', 0, '0000-00-00', 0, '', '', '', 1, 'green.png', 1, 1),
(68, 'Kuntalk', 'kuntal@gmail.com', '01744968888', 'Mirpur', '3dbe00a167653a1aaee01d93e77e730e', 0, '0000-00-00', 0, '', '', '', 1, 'admin.png', 1, 0),
(69, 'tare', 'tmaster2000@hotmail.com', '0123456789', 'ارض الصالحين', 'e10adc3949ba59abbe56e057f20f883e', 0, '0000-00-00', 0, '', '', '', 1, 'IMG-2017.jpg', 2, 0),
(71, 'Dnyaneshwar Pradhan', 'd@gmail.com', '878797787', 'Rangoli', '7f14a1a19c9d58c0b0f362b874e9a265', 0, '0000-00-00', 0, '', '', '', 1, '1533153222112-1235555109.jpg', 2, 0),
(72, 'qw', 'g@gmail.com', 'qw', 'qweqwe', '25f9e794323b453885f5181f1b624d0b', 0, '0000-00-00', 0, '', '', '', 1, 'Screenshot_(26).png', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_location`
--

CREATE TABLE `user_location` (
  `location_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `socity_id` int(11) NOT NULL,
  `house_no` longtext NOT NULL,
  `receiver_name` varchar(255) NOT NULL,
  `receiver_mobile` varchar(15) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_location`
--

INSERT INTO `user_location` (`location_id`, `user_id`, `pincode`, `socity_id`, `house_no`, `receiver_name`, `receiver_mobile`, `store_id`) VALUES
(785, 1052, '516321', 951, 'udjd', 'elcan', '070454848495', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `user_type_id` int(11) NOT NULL,
  `user_type_title` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`user_type_id`, `user_type_title`) VALUES
(1, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `user_type_access`
--

CREATE TABLE `user_type_access` (
  `user_type_id` int(11) NOT NULL,
  `class` varchar(30) NOT NULL,
  `method` varchar(30) NOT NULL,
  `access` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_type_access`
--

INSERT INTO `user_type_access` (`user_type_id`, `class`, `method`, `access`) VALUES
(0, 'admin', '*', 1),
(0, 'child', '*', 1),
(0, 'parents', '*', 1),
(0, 'timeline', '*', 1),
(0, 'users', '*', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `closing_hours`
--
ALTER TABLE `closing_hours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deal_product`
--
ALTER TABLE `deal_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deelofday`
--
ALTER TABLE `deelofday`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivered_order`
--
ALTER TABLE `delivered_order`
  ADD PRIMARY KEY (`sale_id`);

--
-- Indexes for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feature_slider`
--
ALTER TABLE `feature_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header_categories`
--
ALTER TABLE `header_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header_products`
--
ALTER TABLE `header_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `icons`
--
ALTER TABLE `icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instamojo`
--
ALTER TABLE `instamojo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language_setting`
--
ALTER TABLE `language_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pageapp`
--
ALTER TABLE `pageapp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paypal`
--
ALTER TABLE `paypal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchase_id`);

--
-- Indexes for table `razorpay`
--
ALTER TABLE `razorpay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registers`
--
ALTER TABLE `registers`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- Indexes for table `rewards`
--
ALTER TABLE `rewards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`);

--
-- Indexes for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD PRIMARY KEY (`sale_item_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `signature`
--
ALTER TABLE `signature`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socity`
--
ALTER TABLE `socity`
  ADD PRIMARY KEY (`socity_id`);

--
-- Indexes for table `store_login`
--
ALTER TABLE `store_login`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- Indexes for table `testing`
--
ALTER TABLE `testing`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `top_selling`
--
ALTER TABLE `top_selling`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- Indexes for table `user_location`
--
ALTER TABLE `user_location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`user_type_id`);

--
-- Indexes for table `user_type_access`
--
ALTER TABLE `user_type_access`
  ADD UNIQUE KEY `user_type_id` (`user_type_id`,`class`,`method`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `closing_hours`
--
ALTER TABLE `closing_hours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `deal_product`
--
ALTER TABLE `deal_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `deelofday`
--
ALTER TABLE `deelofday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `feature_slider`
--
ALTER TABLE `feature_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `header_categories`
--
ALTER TABLE `header_categories`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10005;

--
-- AUTO_INCREMENT for table `header_products`
--
ALTER TABLE `header_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100009;

--
-- AUTO_INCREMENT for table `icons`
--
ALTER TABLE `icons`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `instamojo`
--
ALTER TABLE `instamojo`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `language_setting`
--
ALTER TABLE `language_setting`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pageapp`
--
ALTER TABLE `pageapp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `paypal`
--
ALTER TABLE `paypal`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6943;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `razorpay`
--
ALTER TABLE `razorpay`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `registers`
--
ALTER TABLE `registers`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1053;

--
-- AUTO_INCREMENT for table `rewards`
--
ALTER TABLE `rewards`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_items`
--
ALTER TABLE `sale_items`
  MODIFY `sale_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3865;

--
-- AUTO_INCREMENT for table `signature`
--
ALTER TABLE `signature`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `socity`
--
ALTER TABLE `socity`
  MODIFY `socity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1005;

--
-- AUTO_INCREMENT for table `store_login`
--
ALTER TABLE `store_login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `testing`
--
ALTER TABLE `testing`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `top_selling`
--
ALTER TABLE `top_selling`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `user_location`
--
ALTER TABLE `user_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=786;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `user_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
