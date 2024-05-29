-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2024 at 12:03 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_showroom`
--
CREATE DATABASE IF NOT EXISTS `car_showroom` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `car_showroom`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(200) NOT NULL,
  `admin_pass` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_pass`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `chassis_number` int(11) NOT NULL,
  `model` int(11) NOT NULL,
  `color` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`chassis_number`, `model`, `color`) VALUES
(1000, 71, 'blue'),
(1003, 72, 'blue'),
(1004, 72, 'green'),
(1005, 73, 'blue'),
(1006, 73, 'green'),
(1007, 74, 'blue'),
(1008, 74, 'green'),
(1009, 75, 'blue'),
(1110, 75, 'blue'),
(1114, 81, 'yellow'),
(1115, 83, 'red'),
(1116, 83, 'yellow'),
(1117, 84, 'red'),
(1118, 84, 'yellow'),
(1119, 85, 'red'),
(1120, 85, 'red'),
(1121, 91, 'black'),
(1122, 91, 'white'),
(1123, 92, 'black'),
(1124, 92, 'white'),
(1125, 93, 'black'),
(1126, 93, 'white'),
(1127, 94, 'black'),
(1128, 94, 'white'),
(1129, 95, 'black'),
(1130, 95, 'white'),
(1131, 1001, 'orange'),
(1132, 1001, 'silver'),
(1133, 1002, 'orange'),
(1134, 1002, 'orange'),
(1135, 1003, 'orange'),
(1136, 1003, 'silver'),
(1137, 1004, 'orange'),
(1138, 1004, 'silver'),
(1139, 1005, 'orange'),
(1140, 1005, 'silver'),
(1141, 1101, 'silver'),
(1142, 1101, 'silver'),
(1143, 1102, 'silver'),
(1144, 1102, 'silver'),
(1145, 1103, 'silver'),
(1146, 1103, 'silver'),
(1147, 1104, 'silver'),
(1148, 1104, 'silver'),
(1149, 1105, 'silver'),
(1150, 1105, 'silver'),
(1151, 1201, 'white'),
(1152, 1201, 'white'),
(1153, 1202, 'white'),
(1154, 1202, 'white'),
(1155, 1203, 'white'),
(1156, 1203, 'white'),
(1157, 1204, 'white'),
(1158, 1204, 'white'),
(1159, 1205, 'white'),
(1160, 1205, 'white');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `c_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(250) NOT NULL,
  `pass` varchar(250) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`c_id`, `name`, `email`, `pass`, `phone`, `address`) VALUES
(1, 'sourav', 'sourav@gmail.com', 'sourav', '80808080', 'banglore'),
(2, 'ankur', 'ankur@gmail.com', 'ankur', '907868', 'delhi');

-- --------------------------------------------------------

--
-- Table structure for table `dealership`
--

CREATE TABLE `dealership` (
  `d_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dealership`
--

INSERT INTO `dealership` (`d_id`, `name`) VALUES
(7001, 'Galaxy Toyota'),
(8001, 'Audi Central'),
(9001, 'BMW One Central'),
(10001, 'Metro Chevrolet'),
(11001, 'Aston Martin'),
(12001, 'Mistubishi');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `m_id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`m_id`, `name`) VALUES
(7001, 'Toyota'),
(8001, 'Audi'),
(9001, 'BMW'),
(10001, 'Chevrolet'),
(11001, 'Aston Martin'),
(12001, 'Mitsubishi');

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE `model` (
  `model` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `year` year(4) NOT NULL,
  `basic_spec` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`model`, `m_id`, `name`, `year`, `basic_spec`) VALUES
(71, 7001, 'Land Cruiser Prado', 2015, ''),
(72, 7001, 'Fortuner', 2017, ''),
(73, 7001, 'Camry', 2017, ''),
(74, 7001, 'Innova Crysta', 2016, ''),
(75, 7001, 'Etios Cross', 2015, ''),
(81, 8001, 'R8', 2016, ''),
(82, 8001, 'Q7', 2015, ''),
(83, 8001, 'RS7', 2016, ''),
(84, 8001, 'A8', 2017, ''),
(85, 8001, 'TT', 2015, ''),
(91, 9001, 'M4', 2016, ''),
(92, 9001, 'X6', 2017, ''),
(93, 9001, 'i8', 2015, ''),
(94, 9001, 'M3', 2017, ''),
(95, 9001, 'X3', 2016, ''),
(1001, 10001, 'Trailblazer', 2016, ''),
(1002, 10001, 'Cruze', 2017, ''),
(1003, 10001, 'Sail', 2015, ''),
(1004, 10001, 'Beat', 2017, ''),
(1005, 10001, 'Volt', 2016, ''),
(1101, 11001, 'Db11', 2014, ''),
(1102, 11001, 'Rapide', 2015, ''),
(1103, 11001, 'Vanquish', 2014, ''),
(1104, 11001, 'Vantage', 2015, ''),
(1105, 11001, 'Vulcan', 2015, ''),
(1201, 12001, 'Cedia', 2012, ''),
(1202, 12001, 'Lancer', 2002, ''),
(1203, 12001, 'Montero', 2013, ''),
(1204, 12001, 'Outlander', 2016, ''),
(1205, 12001, 'Pajero', 2014, '');

-- --------------------------------------------------------

--
-- Table structure for table `sale2`
--

CREATE TABLE `sale2` (
  `sale_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `carmodel` varchar(100) NOT NULL,
  `ordertime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale2`
--

INSERT INTO `sale2` (`sale_id`, `customer_id`, `carmodel`, `ordertime`) VALUES
(1, 1, '72', '2017-11-20 21:40:31'),
(2, 2, '81', '2017-11-20 21:44:35'),
(3, 1, '81', '2017-11-20 21:45:33'),
(4, 1, '81', '2017-11-20 21:46:54');

--
-- Triggers `sale2`
--
DELIMITER $$
CREATE TRIGGER `Transaction` BEFORE INSERT ON `sale2` FOR EACH ROW BEGIN
	SET NEW.ordertime = NOW();
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`chassis_number`),
  ADD KEY `serial` (`model`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `dealership`
--
ALTER TABLE `dealership`
  ADD PRIMARY KEY (`d_id`),
  ADD KEY `d_id` (`d_id`),
  ADD KEY `d_id_2` (`d_id`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`m_id`),
  ADD KEY `m_id` (`m_id`);

--
-- Indexes for table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`model`),
  ADD KEY `m_id` (`m_id`);

--
-- Indexes for table `sale2`
--
ALTER TABLE `sale2`
  ADD PRIMARY KEY (`sale_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `chassis_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1161;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sale2`
--
ALTER TABLE `sale2`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_ibfk_1` FOREIGN KEY (`model`) REFERENCES `model` (`model`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dealership`
--
ALTER TABLE `dealership`
  ADD CONSTRAINT `dealership_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `manufacturer` (`m_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model`
--
ALTER TABLE `model`
  ADD CONSTRAINT `model_ibfk_1` FOREIGN KEY (`m_id`) REFERENCES `manufacturer` (`m_id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `code_cishop`
--
CREATE DATABASE IF NOT EXISTS `code_cishop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `code_cishop`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `slug`, `title`) VALUES
(1, 'motherboard', 'Motherboard'),
(2, 'processor', 'Processor'),
(3, 'ram', 'RAM');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `date` date NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `total` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `status` enum('waiting','paid','delivered','cancel') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders_confirm`
--

CREATE TABLE `orders_confirm` (
  `id` int(11) NOT NULL,
  `id_orders` int(11) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_number` varchar(50) NOT NULL,
  `nominal` int(11) NOT NULL,
  `note` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE `orders_detail` (
  `id` int(11) NOT NULL,
  `id_orders` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `qty` int(4) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT 1,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `id_category`, `slug`, `title`, `description`, `price`, `is_available`, `image`) VALUES
(1, 2, 'amd-ryzen-5-3400g-radeon-rx-vega-11-graphics-4-core-37-ghz-am4', 'AMD Ryzen 5 3400G Radeon RX Vega 11 Graphics 4-Core 3.7 GHz AM4', 'AMD Ryzen 5 3400G Radeon RX Vega 11 Graphics 4-Core 3.7 GHz AM4 AMD Ryzen 5 3400G Radeon RX Vega 11 Graphics 4-Core 3.7 GHz AM4 AMD Ryzen 5 3400G Radeon RX Vega 11 Graphics 4-Core 3.7 GHz AM4', 2450000, 1, 'amd-ryzen-5-3400g-radeon-rx-vega-11-graphics-4-core-37-ghz-am4-20200206120808.jpg'),
(2, 1, 'motherboard-asrock-b450m-steel-legend', 'Motherboard ASRock B450M Steel Legend', 'Motherboard ASRock B450M Steel Legend Motherboard ASRock B450M Steel Legend Motherboard ASRock B450M Steel Legend Motherboard ASRock B450M Steel Legend', 1600000, 1, 'motherboard-asrock-b450m-steel-legend-20200206120905.png'),
(3, 3, 'team-t-force-delta-rgb-ddr4-8gb-2xgb-3000mhz-pc24000-ram-memory', 'Team T-Force Delta RGB DDR4 8gb 2xgb 3000mhz PC24000 RAM Memory', 'Team T-Force Delta RGB DDR4 8gb 2xgb 3000mhz PC24000 RAM Memory Team T-Force Delta RGB DDR4 8gb 2xgb 3000mhz PC24000 RAM Memory Team T-Force Delta RGB DDR4 8gb 2xgb 3000mhz PC24000 RAM Memory', 800000, 1, 'team-t-force-delta-rgb-ddr4-8gb-2xgb-3000mhz-pc24000-ram-memory-20200206121043.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','member') NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `role`, `is_active`, `image`) VALUES
(1, 'Admin', 'admin@mail.com', '$2y$10$MgoeVKkiyRaOu0ASMBGaf.7mOlLjfb96iLGvzyafh6/JkE6IWCYiK', 'admin', 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_confirm`
--
ALTER TABLE `orders_confirm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_confirm`
--
ALTER TABLE `orders_confirm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `db_aplikasisalon`
--
CREATE DATABASE IF NOT EXISTS `db_aplikasisalon` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_aplikasisalon`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_barang` int(10) NOT NULL,
  `nama_barang` varchar(200) NOT NULL,
  `merek` varchar(30) NOT NULL,
  `satuan` varchar(15) NOT NULL,
  `harga_beli` int(10) NOT NULL,
  `stok` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_barang`, `nama_barang`, `merek`, `satuan`, `harga_beli`, `stok`) VALUES
(1211, 'Cream Lulur (Bengkoang)', 'Herborist', 'pcs', 18000, 86),
(27247, 'Sun Screen SPF 30', 'Madame Gie', 'pcs', 34000, 7),
(29565, 'Micellar Cleansing Water for Oily Skin (400ml)', 'Garnier', 'pcs', 85000, 12),
(347821, 'Cutex Nude Series', 'Quokka', 'pack', 125000, 1),
(908876, 'Body Scrub (pome)', 'Scarlett', 'pcs', 73000, 9),
(12990786, 'Hair Color (Ash Purple)', 'Garnier', 'Pcs', 37000, 94);

-- --------------------------------------------------------

--
-- Table structure for table `tb_barangkeluar`
--

CREATE TABLE `tb_barangkeluar` (
  `id_barangkeluar` varchar(10) NOT NULL,
  `tgl_barangkeluar` date NOT NULL,
  `id_user` int(10) NOT NULL,
  `total_barangkeluar` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barangkeluar`
--

INSERT INTO `tb_barangkeluar` (`id_barangkeluar`, `tgl_barangkeluar`, `id_user`, `total_barangkeluar`) VALUES
('BK00001', '2021-06-14', 1, 8),
('BK00002', '2021-06-21', 1, 4),
('BK00003', '2021-07-05', 1, 1),
('BK00004', '2021-07-10', 1, 1),
('BK00005', '2021-07-15', 1, 3),
('BK00006', '2021-08-10', 1, 5),
('BK00007', '2021-08-12', 1, 5),
('BK00008', '2021-09-03', 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tb_barangmasuk`
--

CREATE TABLE `tb_barangmasuk` (
  `id_barangmasuk` varchar(10) NOT NULL,
  `tgl_barangmasuk` date NOT NULL,
  `id_user` int(10) NOT NULL,
  `id_sales` int(10) NOT NULL,
  `total_pembelian` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barangmasuk`
--

INSERT INTO `tb_barangmasuk` (`id_barangmasuk`, `tgl_barangmasuk`, `id_user`, `id_sales`, `total_pembelian`) VALUES
('BM0001', '2021-06-17', 1, 1, 120000),
('BM0002', '2021-06-14', 1, 1, 740000),
('BM0003', '2021-07-05', 1, 2, 1095000),
('BM0004', '2021-07-15', 1, 2, 1020000),
('BM0005', '2021-07-16', 1, 1, 756000),
('BM0006', '2021-08-10', 1, 2, 915000),
('BM0007', '2021-08-12', 1, 2, 1176000),
('BM0008', '2021-09-03', 1, 2, 1600000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang_bm`
--

CREATE TABLE `tb_barang_bm` (
  `id_barang_masuk` int(10) NOT NULL,
  `id_barangmasuk` varchar(10) NOT NULL,
  `nama_barang` varchar(200) NOT NULL,
  `satuan` varchar(15) NOT NULL,
  `merek` varchar(30) NOT NULL,
  `harga_beli` int(10) NOT NULL,
  `item` int(5) NOT NULL,
  `total` double NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barang_bm`
--

INSERT INTO `tb_barang_bm` (`id_barang_masuk`, `id_barangmasuk`, `nama_barang`, `satuan`, `merek`, `harga_beli`, `item`, `total`, `status`) VALUES
(10, 'BM0001', 'Face Tonik', 'DUS', 'Garnier', 120000, 1, 120000, '1'),
(11, 'BM0002', 'Body Scrub', 'pcs', 'Scarlett', 73000, 5, 365000, '1'),
(12, 'BM0002', 'Cutex Nude Series', 'pack', 'Quokka', 125000, 3, 375000, '1'),
(13, 'BM0003', 'Body Scrub (pome)', 'pcs', 'Scarlett', 73000, 15, 1095000, '1'),
(14, 'BM0004', 'Micellar Cleansing Water for Oily Skin (400ml)', 'pcs', 'Garnier', 85000, 12, 1020000, '1'),
(15, 'BM0005', 'Sun Screen SPF 30', 'pcs', 'Madame Gie', 34000, 14, 476000, '1'),
(16, 'BM0005', 'Lip Scrub', 'pcs', 'Emina', 35000, 8, 280000, '1'),
(19, 'BM0006', 'barang abcd', 'pcs', 'Loreal', 23000, 25, 575000, '1'),
(20, 'BM0006', 'barang efg', 'pcs', 'Loreal', 34000, 10, 340000, '0'),
(21, 'BM0007', 'Garnier Hair Color (Ash)', 'pcs', 'Garnier', 25000, 12, 300000, '0'),
(22, 'BM0007', 'Body Scrub', 'pcs', 'Scarlett', 73000, 12, 876000, '0'),
(23, 'BM0008', 'barang 123', 'pcs', 'Nivea', 80000, 20, 1600000, '0');

-- --------------------------------------------------------

--
-- Table structure for table `tb_bk_sementara`
--

CREATE TABLE `tb_bk_sementara` (
  `id_bk_sementara` int(10) NOT NULL,
  `id_barangkeluar` varchar(10) NOT NULL,
  `id_barang` int(10) NOT NULL,
  `nama_barang` varchar(200) NOT NULL,
  `satuan` varchar(15) NOT NULL,
  `merek` varchar(30) NOT NULL,
  `item` int(10) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_bm_sementara`
--

CREATE TABLE `tb_bm_sementara` (
  `id_bm_sementara` int(10) NOT NULL,
  `id_barangmasuk` varchar(10) DEFAULT NULL,
  `nama_barang` varchar(200) NOT NULL,
  `merek` varchar(30) NOT NULL,
  `satuan` varchar(15) NOT NULL,
  `harga_beli` int(10) NOT NULL,
  `item` int(5) NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_data_barangkeluar`
--

CREATE TABLE `tb_data_barangkeluar` (
  `id_data_barangkeluar` int(10) NOT NULL,
  `id_barangkeluar` varchar(10) NOT NULL,
  `id_barang` int(10) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_data_barangkeluar`
--

INSERT INTO `tb_data_barangkeluar` (`id_data_barangkeluar`, `id_barangkeluar`, `id_barang`, `jumlah`, `keterangan`) VALUES
(1, 'BK00001', 1211, 3, 'Habis'),
(2, 'BK00001', 12990786, 5, 'Rusak'),
(3, 'BK00002', 1211, 3, 'habis'),
(4, 'BK00002', 347821, 1, 'Habis'),
(5, 'BK00003', 347821, 1, 'Habis'),
(6, 'BK00004', 12990786, 1, 'Habis'),
(7, 'BK00005', 1211, 3, 'Habis'),
(8, 'BK00006', 27247, 5, 'Habis'),
(9, 'BK00007', 908876, 3, 'Habis'),
(10, 'BK00007', 27247, 2, 'Habis'),
(11, 'BK00008', 1211, 5, 'Habis'),
(12, 'BK00008', 908876, 3, 'Habis');

-- --------------------------------------------------------

--
-- Table structure for table `tb_data_barangmasuk`
--

CREATE TABLE `tb_data_barangmasuk` (
  `id_data_barangmasuk` int(10) NOT NULL,
  `id_barangmasuk` varchar(10) NOT NULL,
  `id_barang_masuk` int(10) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `subtotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_data_barangmasuk`
--

INSERT INTO `tb_data_barangmasuk` (`id_data_barangmasuk`, `id_barangmasuk`, `id_barang_masuk`, `jumlah`, `subtotal`) VALUES
(16, 'BM0001', 10, 1, 120000),
(17, 'BM0002', 11, 5, 365000),
(18, 'BM0002', 12, 3, 375000),
(19, 'BM0003', 13, 15, 1095000),
(20, 'BM0004', 14, 12, 1020000),
(21, 'BM0005', 15, 14, 476000),
(22, 'BM0005', 16, 8, 280000),
(23, 'BM0006', 19, 25, 575000),
(24, 'BM0006', 20, 10, 340000),
(25, 'BM0007', 21, 12, 300000),
(26, 'BM0007', 22, 12, 876000),
(27, 'BM0008', 23, 20, 1600000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_data_pemesanan`
--

CREATE TABLE `tb_data_pemesanan` (
  `id_data_pemesanan` int(10) NOT NULL,
  `id_pemesanan` varchar(10) NOT NULL,
  `id_pelayanan` int(10) NOT NULL,
  `jumlah` double NOT NULL,
  `total` double NOT NULL,
  `dummy` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_data_pemesanan`
--

INSERT INTO `tb_data_pemesanan` (`id_data_pemesanan`, `id_pemesanan`, `id_pelayanan`, `jumlah`, `total`, `dummy`) VALUES
(21, 'BKG0001', 1046, 1, 40000, 0),
(22, 'BKG0001', 1064, 1, 60000, 1),
(23, 'BKG0001', 1034, 1, 50000, 0),
(24, 'BKG0001', 1066, 1, 100000, 1),
(25, 'BKG0001', 1067, 1, 35000, 1),
(27, 'BKG0002', 1063, 1, 200000, 0),
(28, 'BKG0003', 1064, 1, 60000, 0),
(29, 'BKG0003', 1039, 2, 300000, 0),
(31, 'BKG0004', 1055, 1, 20000, 0),
(32, 'BKG0004', 1032, 1, 50000, 0),
(33, 'BKG0004', 1064, 1, 60000, 0),
(34, 'BKG0005', 1038, 1, 250000, 0),
(35, 'BKG0006', 1057, 1, 250000, 1),
(36, 'BKG0006', 1063, 1, 200000, 1),
(37, 'BKG0006', 1069, 1, 500000, 1),
(38, 'BKG0007', 1069, 1, 500000, 0),
(39, 'BKG0008', 1041, 1, 175000, 1),
(40, 'BKG0008', 1038, 2, 500000, 2),
(41, 'BKG0008', 1063, 1, 200000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_data_penggajian`
--

CREATE TABLE `tb_data_penggajian` (
  `id_data_penggajian` int(11) NOT NULL,
  `id_penggajian` varchar(10) NOT NULL,
  `id_karyawan` int(10) NOT NULL,
  `gaji_pokok` double NOT NULL,
  `bonus` double NOT NULL,
  `uang_makan` double NOT NULL,
  `total_gaji` double NOT NULL,
  `omzet` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_data_penggajian`
--

INSERT INTO `tb_data_penggajian` (`id_data_penggajian`, `id_penggajian`, `id_karyawan`, `gaji_pokok`, `bonus`, `uang_makan`, `total_gaji`, `omzet`) VALUES
(8, 'NSP0001', 12111, 2500000, 35000, 400000, 2935000, 350000),
(9, 'NSP0002', 1011, 2500000, 60500, 400000, 2960500, 605000),
(10, 'NSP0003', 12111, 2500000, 340000, 400000, 3240000, 3400000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_data_penjualan`
--

CREATE TABLE `tb_data_penjualan` (
  `id_data_penjualan` int(10) NOT NULL,
  `id_penjualan` varchar(10) NOT NULL,
  `id_pelayanan` int(10) NOT NULL,
  `id_karyawan` int(10) NOT NULL,
  `id_pemesanan` varchar(10) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `subtotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_data_penjualan`
--

INSERT INTO `tb_data_penjualan` (`id_data_penjualan`, `id_penjualan`, `id_pelayanan`, `id_karyawan`, `id_pemesanan`, `jumlah`, `subtotal`) VALUES
(42, 'NTS0001', 1034, 12111, 'BKG0001', 1, 50000),
(43, 'NTS0001', 1046, 12111, 'BKG0001', 1, 40000),
(44, 'NTS0001', 1064, 12111, 'BKG0001', 1, 60000),
(45, 'NTS0002', 1063, 12111, 'BKG0000', 1, 200000),
(46, 'NTS0003', 1041, 1011, 'BKG0000', 1, 175000),
(47, 'NTS0004', 1032, 12112, 'BKG0000', 1, 50000),
(48, 'NTS0005', 1063, 1011, 'BKG0002', 1, 200000),
(50, 'NTS0006', 1064, 1011, 'BKG0000', 1, 60000),
(51, 'NTS0007', 1039, 12111, 'BKG0003', 1, 150000),
(52, 'NTS0007', 1039, 1011, 'BKG0003', 1, 150000),
(53, 'NTS0007', 1064, 12112, 'BKG0003', 1, 60000),
(54, 'NTS0008', 1038, 12111, 'BKG0005', 1, 250000),
(55, 'NTS0009', 1055, 1011, 'BKG0004', 1, 20000),
(56, 'NTS0009', 1032, 12111, 'BKG0004', 1, 50000),
(57, 'NTS0009', 1064, 12111, 'BKG0004', 1, 60000),
(58, 'NTS0010', 1068, 12111, 'BKG0000', 1, 7000000),
(59, 'NTS0011', 1041, 1011, 'BKG0000', 1, 175000),
(60, 'NTS0012', 1069, 12112, 'BKG0007', 1, 500000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_gaji_sementara`
--

CREATE TABLE `tb_gaji_sementara` (
  `id_gaji_sementara` int(10) NOT NULL,
  `id_penggajian` varchar(10) NOT NULL,
  `id_karyawan` int(10) NOT NULL,
  `nama_karyawan` varchar(30) NOT NULL,
  `gaji_pokok` double NOT NULL,
  `uang_makan` double NOT NULL,
  `bonus` double NOT NULL,
  `total_gaji` double NOT NULL,
  `omzet` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_karyawan`
--

CREATE TABLE `tb_karyawan` (
  `id_karyawan` int(10) NOT NULL,
  `nama_karyawan` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `no_telepon` varchar(15) NOT NULL,
  `gaji_pokok` double NOT NULL,
  `uang_makan` double NOT NULL,
  `gambar` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_karyawan`
--

INSERT INTO `tb_karyawan` (`id_karyawan`, `nama_karyawan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `no_telepon`, `gaji_pokok`, `uang_makan`, `gambar`) VALUES
(1011, 'Donghun', 'L', 'Magelang', '1995-03-20', 'Gg Bangau JL Veteran Kelurahan Sukasari Kecamatan Tangerang', '082187651290', 2500000, 400000, '1624815609436.jpg'),
(12111, 'Rosiana Dewi Ayu Ning Tyas', 'P', 'Tangerang', '1999-11-12', 'JL KH Hasyim Ashari gang H pentil 2 Kelurahan Buaran Indah Kota Tangerang', '089612892960', 2500000, 400000, 'IMG_20190420_182805.jpg'),
(12112, 'Lilis Eka Murni', 'p', 'Tangerang', '1997-03-21', 'Kampung Kelapa', '081289127812', 2500000, 400000, 'Contoh-layout-template-website-1-1024x575.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori_pelayanan`
--

CREATE TABLE `tb_kategori_pelayanan` (
  `id_kategori` int(10) NOT NULL,
  `kategori_pelayanan` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kategori_pelayanan`
--

INSERT INTO `tb_kategori_pelayanan` (`id_kategori`, `kategori_pelayanan`) VALUES
(1, 'Hair Styling'),
(2, 'Body Treatment'),
(3, 'Face Treatment'),
(4, 'Hair Treatment'),
(5, 'Hand/Foot Treatment'),
(6, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `id_pelanggan` varchar(10) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `alamat_pelanggan` varchar(225) NOT NULL,
  `no_telepon_pelanggan` varchar(20) NOT NULL,
  `email` varchar(225) NOT NULL,
  `kata_sandi` varchar(20) NOT NULL,
  `foto_profil` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat_pelanggan`, `no_telepon_pelanggan`, `email`, `kata_sandi`, `foto_profil`) VALUES
('CST0000', 'dummy', 'dummy', '0', 'dummy@dummy.com', 'dummy', ''),
('CST0001', 'Trihapsari Annida Fitri', 'JL Kh Hasyim Ashari no 76', '086712976524', 'nida@gmail.com', 'nidanida', '1625835246762.jpg'),
('CST0002', 'Nabila Ayu Karisma', 'Babakan Kota Tangerang', '081234127811', 'nabilayu@gmail.com', 'nabilayu', '1625835246791.jpg'),
('CST0003', 'Silmi Fuadna Ilmi', 'Vila Mutiara Ciputat Tangerang Selatan', '089671126534', 'silmifuadna@gmail.com', 'silmifuadna', '1625837388716.jpg'),
('CST0004', 'Bunga Bela', 'Cikokol Tangerang', '081297658901', 'bungabela@gmail.com', 'bungabunga', 'Download premium illustration of White aesthetic psd grid background.jpg'),
('CST0005', 'Rosiana Dewi A', 'Cipondoh Tangerang', '089617987722', 'rosianadewi49@yahoo.com', 'rosianadewia', '1625837388693.jpg'),
('CST0006', 'Maulidya Sanda', 'Sepatan', '089766559876', 'maulidya@gmail.com', 'maulidya', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelayanan_salon`
--

CREATE TABLE `tb_pelayanan_salon` (
  `id_pelayanan` int(10) NOT NULL,
  `nama_pelayanan` varchar(30) NOT NULL,
  `id_kategori` int(10) NOT NULL,
  `biaya_pelayanan` int(10) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pelayanan_salon`
--

INSERT INTO `tb_pelayanan_salon` (`id_pelayanan`, `nama_pelayanan`, `id_kategori`, `biaya_pelayanan`, `keterangan`) VALUES
(1029, 'Lulur Massage', 2, 120000, 'Lulur Massage'),
(1030, 'cuci', 1, 20000, 'Cuci/Keramas (Tanpa Blow)'),
(1031, 'Cuci Blow', 1, 50000, 'Cuci Blow'),
(1032, 'Blow Catok/Variasi', 1, 50000, 'Blow Catok/Variasi'),
(1033, 'Gunting Poni', 1, 15000, 'Gunting/Potong poni'),
(1034, 'Cuci & Gunting', 1, 50000, 'Cuci dan potong rambut'),
(1035, 'Sanggul/Styling', 1, 85000, 'Sanggul/Styling gaya rambut'),
(1036, 'Smoothing', 1, 350000, 'Smoothing/Meluruskan rambut'),
(1037, 'Keriting Rambut', 1, 250000, 'Keriting Rambut'),
(1038, 'Cat Warna', 1, 250000, 'Cat Warna Rambut'),
(1039, 'Cat Hitam', 1, 150000, 'Cat Hitam'),
(1040, 'Masker+Mandi Susu', 2, 80000, 'Masker+Mandi Susu'),
(1041, 'Bleaching Full Body', 2, 175000, 'Bleaching Full Body'),
(1042, 'Mandi Susu/Rempah', 2, 40000, 'Mandi Susu/Mandi Rempah'),
(1043, 'Ratus', 2, 40000, 'Ratus'),
(1045, 'Wax Tangan', 2, 60000, 'Wax Tangan'),
(1046, 'Wax Ketiak', 2, 40000, 'Wax Ketiak'),
(1047, 'Wax Kaki', 2, 80000, 'Wax Kaki'),
(1048, 'Scrub Tangan dan Kaki', 2, 50000, 'Scrub Tangan dan Kaki'),
(1049, 'Facial Biokos', 3, 75000, 'Facial Biokos'),
(1050, 'Facial Vitamin C', 3, 100000, 'Facial dengan Vitamin C'),
(1051, 'Facial Masker Lumpur', 3, 85000, 'Facial dengan masker lumpur'),
(1052, 'Totok Wajah+Masker Biokos', 3, 60000, 'Totok Wajah+Masker Biokos'),
(1053, 'Totok Wajah+Masker Lumpur', 3, 70000, 'Totok Wajah+Masker Lumpur'),
(1054, 'Keriting Bulu Mata', 3, 45000, 'Keriting Bulu Mata'),
(1055, 'Cabut Alis', 3, 20000, 'Cabut Alis'),
(1057, 'Eyelash', 3, 250000, 'Eyelash'),
(1058, 'Sulam Alis', 3, 500000, 'Sulam Alis'),
(1059, 'Meni/Pedi Cure', 5, 85000, 'Meni/Pedi Cure'),
(1060, 'Cutex', 5, 20000, 'Cutex/Cat Kuku'),
(1061, 'Meni', 5, 40000, 'Meni Cure (saja)'),
(1062, 'Pedi', 5, 50000, 'Pedi Cure (saja)'),
(1063, 'Art Meni + Pedi', 5, 200000, 'Art Meni/Nail Art + Pedi'),
(1064, 'Creambath', 4, 60000, 'Creambath'),
(1065, 'Hair Spa Matrix/Makarizo+Vit', 4, 100000, 'Hair Spa Matrix/Makarizo+Vitamin'),
(1066, 'Hair Mask Matrix/Makarizo+Vit', 4, 100000, 'Hair Mask Matrix/Makarizo + Vitamin'),
(1067, 'Creambath Anak', 4, 35000, 'Creambath untuk anak'),
(1068, 'Make Up Pengantin', 6, 7000000, 'Make Up Pengantin + 4 Anggota Keluarga'),
(1069, 'Paket Pengantin (Treatment)', 6, 500000, 'Lulur Komplit, Meni Pedi, Totok Spesial, Creambath, Facial, Ratus dan Mandi Susu'),
(1070, 'Make Up Wisuda', 6, 200000, 'Make Up Wisuda');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pemesanan`
--

CREATE TABLE `tb_pemesanan` (
  `id_pemesanan` varchar(10) NOT NULL,
  `tgl_pemesanan` date NOT NULL,
  `id_pelanggan` varchar(10) NOT NULL,
  `jam_pemesanan` varchar(10) NOT NULL,
  `total_pemesanan` double NOT NULL,
  `id_promo` varchar(10) NOT NULL,
  `potongan_harga` double NOT NULL,
  `total_akhir` double NOT NULL,
  `status` enum('1','0','2') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pemesanan`
--

INSERT INTO `tb_pemesanan` (`id_pemesanan`, `tgl_pemesanan`, `id_pelanggan`, `jam_pemesanan`, `total_pemesanan`, `id_promo`, `potongan_harga`, `total_akhir`, `status`) VALUES
('BKG0000', '2021-08-07', 'CST0000', 'dummy', 0, 'PTG0', 0, 0, '1'),
('BKG0001', '2021-08-08', 'CST0001', '10:00', 150000, 'PTG0', 0, 150000, '1'),
('BKG0002', '2021-08-08', 'CST0001', '20:00', 200000, 'PTG0', 0, 200000, '1'),
('BKG0003', '2021-08-10', 'CST0004', '10:00', 360000, 'PTG0', 0, 360000, '1'),
('BKG0004', '2021-08-10', 'CST0001', '08:00', 130000, 'PTG0', 0, 130000, '1'),
('BKG0005', '2021-08-11', 'CST0001', '18:00', 250000, 'PTG0', 0, 250000, '1'),
('BKG0006', '2021-08-13', 'CST0005', '12:00', 950000, 'PTG20', 190000, 760000, '2'),
('BKG0007', '2021-08-12', 'CST0005', '12:00', 500000, 'PTG0', 0, 500000, '1'),
('BKG0008', '2021-09-04', 'CST0001', '14:00', 875000, 'PTG20', 175000, 700000, '0');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pemesanan_sementara`
--

CREATE TABLE `tb_pemesanan_sementara` (
  `id_pemesanan_sementara` int(10) NOT NULL,
  `id_pemesanan` varchar(10) NOT NULL,
  `id_pelayanan` int(10) NOT NULL,
  `nama_pelayanan` varchar(30) NOT NULL,
  `biaya_pelayanan` int(10) NOT NULL,
  `jumlah` double NOT NULL,
  `subtotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_penggajian`
--

CREATE TABLE `tb_penggajian` (
  `id_penggajian` varchar(10) NOT NULL,
  `tgl_penggajian` date NOT NULL,
  `id_user` int(10) NOT NULL,
  `periode_bulan` varchar(30) NOT NULL,
  `periode_tahun` varchar(4) NOT NULL,
  `total_gaji` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_penggajian`
--

INSERT INTO `tb_penggajian` (`id_penggajian`, `tgl_penggajian`, `id_user`, `periode_bulan`, `periode_tahun`, `total_gaji`) VALUES
('NSP0001', '2021-08-09', 1, 'Juli', '2021', 2935000),
('NSP0002', '2021-08-12', 1, 'Agustus', '2021', 2960500),
('NSP0003', '2021-09-03', 1, 'Agustus', '2021', 3240000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_penjualan`
--

CREATE TABLE `tb_penjualan` (
  `id_penjualan` varchar(10) NOT NULL,
  `tgl_penjualan` date NOT NULL,
  `id_user` int(10) NOT NULL,
  `nama_pelanggan` varchar(225) NOT NULL,
  `total_penjualan` double NOT NULL,
  `total_awal` double NOT NULL,
  `potonganharga` double NOT NULL,
  `dibayar` double NOT NULL,
  `id_promo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_penjualan`
--

INSERT INTO `tb_penjualan` (`id_penjualan`, `tgl_penjualan`, `id_user`, `nama_pelanggan`, `total_penjualan`, `total_awal`, `potonganharga`, `dibayar`, `id_promo`) VALUES
('NTS0001', '2021-08-08', 1, 'Annida Fitri', 150000, 150000, 0, 200000, 'PTG0'),
('NTS0002', '2021-08-08', 1, 'Annida Fitri', 200000, 200000, 0, 200000, 'PTG0'),
('NTS0003', '2021-08-08', 1, 'Bella', 175000, 175000, 0, 200000, 'PTG0'),
('NTS0004', '2021-08-08', 1, 'Annida Fitri', 50000, 50000, 0, 50000, 'PTG0'),
('NTS0005', '2021-08-08', 1, 'Annida Fitri', 200000, 200000, 0, 250000, 'PTG0'),
('NTS0006', '2021-08-08', 1, 'Silmi Fuadna Ilmi', 60000, 60000, 0, 100000, 'PTG0'),
('NTS0007', '2021-08-10', 1, 'Bunga Bela', 360000, 360000, 0, 400000, 'PTG0'),
('NTS0008', '2021-08-11', 1, 'Trihapsari Annida Fitri', 250000, 250000, 0, 300000, 'PTG0'),
('NTS0009', '2021-08-12', 1, 'Trihapsari Annida Fitri', 130000, 130000, 0, 150000, 'PTG0'),
('NTS0010', '2021-08-13', 1, 'Nabila Ayu Karisma', 5600000, 7000000, 1400000, 5600000, 'PTG20'),
('NTS0011', '2021-09-03', 1, 'Rosiana Dewi A', 175000, 175000, 0, 200000, 'PTG0'),
('NTS0012', '2021-09-03', 1, 'Rosiana Dewi A', 500000, 500000, 0, 500000, 'PTG0');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penjualan_sementara`
--

CREATE TABLE `tb_penjualan_sementara` (
  `id_penjualan_sementara` int(11) NOT NULL,
  `id_penjualan` varchar(11) NOT NULL,
  `id_pelayanan` int(11) NOT NULL,
  `nama_pelayanan` varchar(30) NOT NULL,
  `id_karyawan` int(10) NOT NULL,
  `biaya_pelayanan` double NOT NULL,
  `jumlah` int(5) NOT NULL,
  `total` double NOT NULL,
  `id_pemesanan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_perusahaan`
--

CREATE TABLE `tb_perusahaan` (
  `id_perusahaan` int(1) NOT NULL,
  `nama_perusahaan` varchar(225) NOT NULL,
  `alamat_perusahaan` varchar(225) NOT NULL,
  `pemilik` varchar(225) NOT NULL,
  `kota` varchar(225) NOT NULL,
  `no_telepon` varchar(15) NOT NULL,
  `sosmed` varchar(225) NOT NULL,
  `link_gmaps` varchar(225) NOT NULL,
  `link_sosmed` varchar(225) NOT NULL,
  `detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_perusahaan`
--

INSERT INTO `tb_perusahaan` (`id_perusahaan`, `nama_perusahaan`, `alamat_perusahaan`, `pemilik`, `kota`, `no_telepon`, `sosmed`, `link_gmaps`, `link_sosmed`, `detail`) VALUES
(1, 'NATALIA SALON', 'Jl. Baharudin Jl. Kebon Jahe No.15A, RT.005/RW.003, Sukarasa, Kec. Tangerang, Kota Tangerang, Banten 15111', 'Natalia', 'Kota Tangerang', '0896-3938-9363', '@nataliasalon.99', 'https://goo.gl/maps/mLsf8UFQwK36unSm7', 'https://instagram.com/nataliasalon.99?utm_medium=copy_link', 'Salon Kecantikan wanita yang menyediakan pelayanan kecantikan mulai dari perawatan rambut, perawatan tubuh, perawatan kaki dan tangan, penataan rambut dan make up.');

-- --------------------------------------------------------

--
-- Table structure for table `tb_promo`
--

CREATE TABLE `tb_promo` (
  `id_promo` varchar(10) NOT NULL,
  `promo` varchar(225) NOT NULL,
  `potongan` int(3) NOT NULL,
  `minimal_pesanan` double NOT NULL,
  `keterangan_promo` text NOT NULL,
  `aktif` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_promo`
--

INSERT INTO `tb_promo` (`id_promo`, `promo`, `potongan`, `minimal_pesanan`, `keterangan_promo`, `aktif`) VALUES
('PTG0', 'Tidak Ada Potongan', 0, 0, 'Tidak Ada Potongan', 'n'),
('PTG15', 'Potongan 15%', 15, 500000, 'Potongan 15% untuk minimal pemesanan pelayanan Rp. 500.000', 'n'),
('PTG20', 'Potongan 20%', 20, 750000, 'Potongan Harga 20% dengan minimal pemesanan pelayanan Rp. 750.000', 'y'),
('PTG5', 'Potongan 5%', 5, 200000, 'Potongan Harga 5% dengan minimal pemesanan pelayanan Rp. 200.000', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sales`
--

CREATE TABLE `tb_sales` (
  `id_sales` int(10) NOT NULL,
  `nama_sales` varchar(30) NOT NULL,
  `no_telepon_sales` varchar(15) NOT NULL,
  `alamat_sales` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_sales`
--

INSERT INTO `tb_sales` (`id_sales`, `nama_sales`, `no_telepon_sales`, `alamat_sales`) VALUES
(1, 'Amirani ', '0215576098', 'JL KH Hasyim Ashari Gg H Pentil 2'),
(2, 'BeautyCare.id', '081299122143', 'Jl Veteran No 21 ');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `username` varchar(10) NOT NULL,
  `katasandi` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama`, `username`, `katasandi`) VALUES
(1, 'Admin', 'admin', 'admin'),
(3, 'Dewi Mustika', 'admin1', 'admin1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `tb_barangkeluar`
--
ALTER TABLE `tb_barangkeluar`
  ADD PRIMARY KEY (`id_barangkeluar`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tb_barangmasuk`
--
ALTER TABLE `tb_barangmasuk`
  ADD PRIMARY KEY (`id_barangmasuk`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_sales` (`id_sales`);

--
-- Indexes for table `tb_barang_bm`
--
ALTER TABLE `tb_barang_bm`
  ADD PRIMARY KEY (`id_barang_masuk`);

--
-- Indexes for table `tb_bk_sementara`
--
ALTER TABLE `tb_bk_sementara`
  ADD PRIMARY KEY (`id_bk_sementara`);

--
-- Indexes for table `tb_bm_sementara`
--
ALTER TABLE `tb_bm_sementara`
  ADD PRIMARY KEY (`id_bm_sementara`);

--
-- Indexes for table `tb_data_barangkeluar`
--
ALTER TABLE `tb_data_barangkeluar`
  ADD PRIMARY KEY (`id_data_barangkeluar`),
  ADD KEY `id_barangkeluar` (`id_barangkeluar`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `tb_data_barangmasuk`
--
ALTER TABLE `tb_data_barangmasuk`
  ADD PRIMARY KEY (`id_data_barangmasuk`),
  ADD KEY `id_barangmasuk` (`id_barangmasuk`),
  ADD KEY `id_barang_masuk` (`id_barang_masuk`);

--
-- Indexes for table `tb_data_pemesanan`
--
ALTER TABLE `tb_data_pemesanan`
  ADD PRIMARY KEY (`id_data_pemesanan`),
  ADD KEY `id_pemesanan` (`id_pemesanan`),
  ADD KEY `id_pelayanan` (`id_pelayanan`);

--
-- Indexes for table `tb_data_penggajian`
--
ALTER TABLE `tb_data_penggajian`
  ADD PRIMARY KEY (`id_data_penggajian`),
  ADD KEY `id_penggajian` (`id_penggajian`),
  ADD KEY `id_karyawan` (`id_karyawan`);

--
-- Indexes for table `tb_data_penjualan`
--
ALTER TABLE `tb_data_penjualan`
  ADD PRIMARY KEY (`id_data_penjualan`),
  ADD KEY `id_penjualan` (`id_penjualan`),
  ADD KEY `id_pelayanan_salon` (`id_pelayanan`),
  ADD KEY `id_karyawan` (`id_karyawan`),
  ADD KEY `id_pemesanan` (`id_pemesanan`);

--
-- Indexes for table `tb_gaji_sementara`
--
ALTER TABLE `tb_gaji_sementara`
  ADD PRIMARY KEY (`id_gaji_sementara`);

--
-- Indexes for table `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `tb_kategori_pelayanan`
--
ALTER TABLE `tb_kategori_pelayanan`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `tb_pelayanan_salon`
--
ALTER TABLE `tb_pelayanan_salon`
  ADD PRIMARY KEY (`id_pelayanan`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `tb_pemesanan`
--
ALTER TABLE `tb_pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`),
  ADD KEY `id_pelanggan` (`id_pelanggan`),
  ADD KEY `id_promo` (`id_promo`);

--
-- Indexes for table `tb_pemesanan_sementara`
--
ALTER TABLE `tb_pemesanan_sementara`
  ADD PRIMARY KEY (`id_pemesanan_sementara`);

--
-- Indexes for table `tb_penggajian`
--
ALTER TABLE `tb_penggajian`
  ADD PRIMARY KEY (`id_penggajian`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tb_penjualan`
--
ALTER TABLE `tb_penjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_promo` (`id_promo`);

--
-- Indexes for table `tb_penjualan_sementara`
--
ALTER TABLE `tb_penjualan_sementara`
  ADD PRIMARY KEY (`id_penjualan_sementara`);

--
-- Indexes for table `tb_perusahaan`
--
ALTER TABLE `tb_perusahaan`
  ADD PRIMARY KEY (`id_perusahaan`);

--
-- Indexes for table `tb_promo`
--
ALTER TABLE `tb_promo`
  ADD PRIMARY KEY (`id_promo`);

--
-- Indexes for table `tb_sales`
--
ALTER TABLE `tb_sales`
  ADD PRIMARY KEY (`id_sales`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang_bm`
--
ALTER TABLE `tb_barang_bm`
  MODIFY `id_barang_masuk` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tb_bk_sementara`
--
ALTER TABLE `tb_bk_sementara`
  MODIFY `id_bk_sementara` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_bm_sementara`
--
ALTER TABLE `tb_bm_sementara`
  MODIFY `id_bm_sementara` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_data_barangkeluar`
--
ALTER TABLE `tb_data_barangkeluar`
  MODIFY `id_data_barangkeluar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_data_barangmasuk`
--
ALTER TABLE `tb_data_barangmasuk`
  MODIFY `id_data_barangmasuk` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tb_data_pemesanan`
--
ALTER TABLE `tb_data_pemesanan`
  MODIFY `id_data_pemesanan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tb_data_penggajian`
--
ALTER TABLE `tb_data_penggajian`
  MODIFY `id_data_penggajian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_data_penjualan`
--
ALTER TABLE `tb_data_penjualan`
  MODIFY `id_data_penjualan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tb_gaji_sementara`
--
ALTER TABLE `tb_gaji_sementara`
  MODIFY `id_gaji_sementara` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  MODIFY `id_karyawan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12113;

--
-- AUTO_INCREMENT for table `tb_kategori_pelayanan`
--
ALTER TABLE `tb_kategori_pelayanan`
  MODIFY `id_kategori` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_pelayanan_salon`
--
ALTER TABLE `tb_pelayanan_salon`
  MODIFY `id_pelayanan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1071;

--
-- AUTO_INCREMENT for table `tb_pemesanan_sementara`
--
ALTER TABLE `tb_pemesanan_sementara`
  MODIFY `id_pemesanan_sementara` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_penjualan_sementara`
--
ALTER TABLE `tb_penjualan_sementara`
  MODIFY `id_penjualan_sementara` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_sales`
--
ALTER TABLE `tb_sales`
  MODIFY `id_sales` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_barangkeluar`
--
ALTER TABLE `tb_barangkeluar`
  ADD CONSTRAINT `tb_barangkeluar_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`);

--
-- Constraints for table `tb_barangmasuk`
--
ALTER TABLE `tb_barangmasuk`
  ADD CONSTRAINT `tb_barangmasuk_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`),
  ADD CONSTRAINT `tb_barangmasuk_ibfk_2` FOREIGN KEY (`id_sales`) REFERENCES `tb_sales` (`id_sales`);

--
-- Constraints for table `tb_data_barangkeluar`
--
ALTER TABLE `tb_data_barangkeluar`
  ADD CONSTRAINT `tb_data_barangkeluar_ibfk_2` FOREIGN KEY (`id_barang`) REFERENCES `tb_barang` (`id_barang`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_data_barangkeluar_ibfk_3` FOREIGN KEY (`id_barangkeluar`) REFERENCES `tb_barangkeluar` (`id_barangkeluar`) ON DELETE CASCADE;

--
-- Constraints for table `tb_data_barangmasuk`
--
ALTER TABLE `tb_data_barangmasuk`
  ADD CONSTRAINT `tb_data_barangmasuk_ibfk_1` FOREIGN KEY (`id_barangmasuk`) REFERENCES `tb_barangmasuk` (`id_barangmasuk`),
  ADD CONSTRAINT `tb_data_barangmasuk_ibfk_2` FOREIGN KEY (`id_barang_masuk`) REFERENCES `tb_barang_bm` (`id_barang_masuk`);

--
-- Constraints for table `tb_data_pemesanan`
--
ALTER TABLE `tb_data_pemesanan`
  ADD CONSTRAINT `tb_data_pemesanan_ibfk_1` FOREIGN KEY (`id_pemesanan`) REFERENCES `tb_pemesanan` (`id_pemesanan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_data_pemesanan_ibfk_2` FOREIGN KEY (`id_pelayanan`) REFERENCES `tb_pelayanan_salon` (`id_pelayanan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_data_penggajian`
--
ALTER TABLE `tb_data_penggajian`
  ADD CONSTRAINT `tb_data_penggajian_ibfk_1` FOREIGN KEY (`id_karyawan`) REFERENCES `tb_karyawan` (`id_karyawan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_data_penggajian_ibfk_2` FOREIGN KEY (`id_penggajian`) REFERENCES `tb_penggajian` (`id_penggajian`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_data_penjualan`
--
ALTER TABLE `tb_data_penjualan`
  ADD CONSTRAINT `tb_data_penjualan_ibfk_1` FOREIGN KEY (`id_penjualan`) REFERENCES `tb_penjualan` (`id_penjualan`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_data_penjualan_ibfk_3` FOREIGN KEY (`id_pelayanan`) REFERENCES `tb_pelayanan_salon` (`id_pelayanan`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_data_penjualan_ibfk_4` FOREIGN KEY (`id_karyawan`) REFERENCES `tb_karyawan` (`id_karyawan`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_data_penjualan_ibfk_5` FOREIGN KEY (`id_pemesanan`) REFERENCES `tb_pemesanan` (`id_pemesanan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_pelayanan_salon`
--
ALTER TABLE `tb_pelayanan_salon`
  ADD CONSTRAINT `tb_pelayanan_salon_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `tb_kategori_pelayanan` (`id_kategori`);

--
-- Constraints for table `tb_pemesanan`
--
ALTER TABLE `tb_pemesanan`
  ADD CONSTRAINT `tb_pemesanan_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `tb_pelanggan` (`id_pelanggan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_pemesanan_ibfk_2` FOREIGN KEY (`id_promo`) REFERENCES `tb_promo` (`id_promo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_penggajian`
--
ALTER TABLE `tb_penggajian`
  ADD CONSTRAINT `tb_penggajian_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_penjualan`
--
ALTER TABLE `tb_penjualan`
  ADD CONSTRAINT `tb_penjualan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_penjualan_ibfk_3` FOREIGN KEY (`id_promo`) REFERENCES `tb_promo` (`id_promo`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `impal_db`
--
CREATE DATABASE IF NOT EXISTS `impal_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `impal_db`;

-- --------------------------------------------------------

--
-- Table structure for table `bendahara`
--

CREATE TABLE `bendahara` (
  `idemployee` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `name` varchar(30) NOT NULL,
  `email` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` int(20) NOT NULL,
  `idemployee` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `id_data`
--

CREATE TABLE `id_data` (
  `emp_id` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` int(5) NOT NULL,
  `disp_pic` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `id_data`
--

INSERT INTO `id_data` (`emp_id`, `username`, `name`, `email`, `password`, `level`, `disp_pic`) VALUES
(352, 'sujanto', 'Suherman', 'sumenep@gmail.com', 'jaja', 6, ''),
(50000, 'mamak12', 'Mamak', 'haimamak@gmail.com', 'hahaha', 3, ''),
(531532, 'ngasal', 'ngasal aja', 'ngasal@haha.com', 'qwerty', 7, ''),
(123123123, 'bambanggg', 'bambang naruto', 'bambanggg@gmail.com', 'bambangwibu', 2, ''),
(1010101010, 'manager_one', 'Manager One', 'manager@showroom.com', 'manager', 1, ''),
(1111111111, 'admin', 'Administrator', 'admin@admin.com', 'admin', 0, ''),
(1301111111, 'sayahaha', 'saya haha', 'haha@email.com', 'hhh', 1, ''),
(1301162314, 'paymukh', 'Naufal Mukhbit', 'nmukhbit@gmail.com', 'hahaha', 5, ''),
(2147483647, 'jajang23', 'Jajang Warkop', 'jajang23@gmail.com', 'jajangsayang', 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `kasir`
--

CREATE TABLE `kasir` (
  `idemployee` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `manajer`
--

CREATE TABLE `manajer` (
  `idemployee` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `montir`
--

CREATE TABLE `montir` (
  `idemployee` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `opgudang`
--

CREATE TABLE `opgudang` (
  `idemployee` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_order` int(10) NOT NULL,
  `order_date` date NOT NULL,
  `custname` varchar(50) NOT NULL,
  `custid` int(10) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `color` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `idpurchase` varchar(10) NOT NULL,
  `typepurchase` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `customername` varchar(30) NOT NULL,
  `ktp` varchar(10) NOT NULL,
  `unit_type` varchar(20) NOT NULL,
  `color` varchar(10) NOT NULL,
  `price` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`idpurchase`, `typepurchase`, `date`, `customername`, `ktp`, `unit_type`, `color`, `price`) VALUES
('11', '1', '1111-11-11', '1', '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `date` date NOT NULL,
  `supplier` varchar(30) NOT NULL,
  `description` varchar(50) NOT NULL,
  `unit` int(10) NOT NULL,
  `amount` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `idemployee` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `idservice` varchar(10) NOT NULL,
  `type` varchar(30) NOT NULL,
  `customer` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `price` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`idservice`, `type`, `customer`, `tanggal`, `price`) VALUES
('aku', 'sayang', 'kamu', '2018-12-05', 21);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `idstock` varchar(10) NOT NULL,
  `unit_type` varchar(20) NOT NULL,
  `idcar` varchar(10) NOT NULL,
  `color` varchar(10) NOT NULL,
  `quantity` int(20) NOT NULL,
  `price` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`idstock`, `unit_type`, `idcar`, `color`, `quantity`, `price`) VALUES
('2', '3', '3', '3', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `idtransaction` varchar(10) NOT NULL,
  `typetransaction` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `customername` varchar(30) NOT NULL,
  `ktp` varchar(10) NOT NULL,
  `unit_type` varchar(30) NOT NULL,
  `idcar` varchar(10) NOT NULL,
  `color` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`idtransaction`, `typetransaction`, `date`, `customername`, `ktp`, `unit_type`, `idcar`, `color`) VALUES
('001', 'Purchase', '2018-12-01', 'Gery', '1301164000', 'Toyota Avanza', '0035', 'Red');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`idemployee`);

--
-- Indexes for table `id_data`
--
ALTER TABLE `id_data`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `kasir`
--
ALTER TABLE `kasir`
  ADD PRIMARY KEY (`idemployee`);

--
-- Indexes for table `manajer`
--
ALTER TABLE `manajer`
  ADD PRIMARY KEY (`idemployee`);

--
-- Indexes for table `montir`
--
ALTER TABLE `montir`
  ADD PRIMARY KEY (`idemployee`);

--
-- Indexes for table `opgudang`
--
ALTER TABLE `opgudang`
  ADD PRIMARY KEY (`idemployee`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`idpurchase`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`idemployee`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`idservice`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`idstock`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`idtransaction`);
--
-- Database: `mobil`
--
CREATE DATABASE IF NOT EXISTS `mobil` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mobil`;

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `id` int(10) NOT NULL,
  `nama_mobil` varchar(55) CHARACTER SET latin1 NOT NULL,
  `id_kategori` int(8) NOT NULL,
  `tahun_mobil` year(4) NOT NULL,
  `harga` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `image` varchar(126) CHARACTER SET latin1 NOT NULL,
  `dibooking` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `nama` varchar(128) CHARACTER SET latin1 NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(128) CHARACTER SET latin1 NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(130) NOT NULL,
  `role_id` int(10) NOT NULL,
  `is_active` int(1) NOT NULL,
  `tanggal_input` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"pustaka\",\"table\":\"kategori\"},{\"db\":\"pustaka\",\"table\":\"user\"},{\"db\":\"pustaka\",\"table\":\"buku\"},{\"db\":\"pustaka\",\"table\":\"role\"},{\"db\":\"pustaka\",\"table\":\"role_id\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-12-05 08:31:14', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"id\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `pustaka`
--
CREATE DATABASE IF NOT EXISTS `pustaka` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pustaka`;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id_booking` varchar(12) CHARACTER SET latin1 NOT NULL,
  `tgl_booking` date NOT NULL,
  `batas_ambil` date NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id_booking`, `tgl_booking`, `batas_ambil`, `id_user`) VALUES
('22042024001', '2024-04-22', '2024-04-24', 11);

-- --------------------------------------------------------

--
-- Table structure for table `booking_detail`
--

CREATE TABLE `booking_detail` (
  `id` int(11) NOT NULL,
  `id_booking` varchar(12) CHARACTER SET latin1 NOT NULL,
  `id_buku` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_detail`
--

INSERT INTO `booking_detail` (`id`, `id_booking`, `id_buku`) VALUES
(3, '22042024001', 15);

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul_buku` varchar(128) CHARACTER SET latin1 NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `pengarang` varchar(64) CHARACTER SET latin1 NOT NULL,
  `penerbit` varchar(64) CHARACTER SET latin1 NOT NULL,
  `tahun_terbit` year(4) NOT NULL,
  `isbn` varchar(64) CHARACTER SET latin1 NOT NULL,
  `stok` int(11) NOT NULL,
  `dipinjam` int(11) NOT NULL,
  `dibooking` int(11) NOT NULL,
  `image` varchar(256) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul_buku`, `id_kategori`, `pengarang`, `penerbit`, `tahun_terbit`, `isbn`, `stok`, `dipinjam`, `dibooking`, `image`) VALUES
(1, 'The Adventures of Tom Sawyer', 1, 'Mark Twain', 'Immortal Publishing Imprin Shira Media Group', 2000, '9786022809432', 2, 1, 1, 'The Adventures of Tom Sawyer.jpg\r\n'),
(2, 'The Notebook', 1, 'Nicholas Sparks', 'Gramedia Pustaka Utama', 2004, '9786025118500', 5, 3, 3, 'The Notebook.jpg'),
(5, 'The War of the Worlds', 3, 'H.G. Wells', 'Pearson\'s Magazine', 2005, '8346753547', 5, 1, 1, 'the war of the world.jpg'),
(10, 'Dracula', 4, 'Bram Stoker', 'Archibald Constable and Company, Westminster\r\n', 2001, '874387583987', 5, 0, 0, 'Dracula.jpg'),
(14, 'The Exorcist', 4, 'William peter Blatty', 'Harper & Row', 2003, '757254724884', 2, 0, 1, 'the excorcist.jpg'),
(15, 'The Da Vinci Code', 7, 'Dan Brown', 'Doubleday', 2003, '878674646488', 4, 0, 1, 'davinci.jpg'),
(16, 'The Hitchhiker\'s Guide to the Galaxy', 8, 'Douglas Adam', 'Pan Books', 2001, '43345356577', 5, 0, 0, 'The Hitchhiker\'s Guide to the Galaxy.jpg'),
(17, 'Angels and Demons', 6, 'Dan Brown ', 'Pocket Books', 2000, '87968686787879', 5, 0, 0, 'angel & demons.jpg'),
(18, 'The Name of the Rose', 9, 'Umberto Eco', 'Bompiani (Italia) Harcourt (AS)', 2002, '97868687978796', 6, 2, 0, 'the name of the rose.jpg'),
(19, 'Game of Thornes ', 2, 'George R.R. Martin', 'Bantam Spectra (AS)\r\nVoyager Books (Inggris)', 2005, '0553103547', 7, 0, 0, 'game of thournes.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pinjam`
--

CREATE TABLE `detail_pinjam` (
  `no_pinjam` varchar(12) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(45) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Romance'),
(2, 'fantasi'),
(3, 'Science Fiction'),
(4, 'Horror'),
(5, 'Petualangan'),
(6, 'Misteri'),
(7, 'Thriller'),
(8, 'Komedi'),
(9, 'Sejarah'),
(14, 'Keluarga');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `no_pinjam` varchar(12) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `id_booking` varchar(12) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tgl_kembali` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `status` enum('Pinjam','Kembali') NOT NULL DEFAULT 'Pinjam',
  `total_denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'administrator'),
(2, 'member');

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `id` int(11) NOT NULL,
  `tgl_booking` datetime DEFAULT NULL,
  `id_user` varchar(12) CHARACTER SET latin1 NOT NULL,
  `email_user` varchar(128) CHARACTER SET latin1 DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `judul_buku` varchar(255) CHARACTER SET latin1 NOT NULL,
  `image` varchar(255) CHARACTER SET latin1 NOT NULL,
  `penulis` varchar(128) CHARACTER SET latin1 NOT NULL,
  `penerbit` varchar(128) CHARACTER SET latin1 NOT NULL,
  `tahun_terbit` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) CHARACTER SET latin1 NOT NULL,
  `alamat` text CHARACTER SET latin1 NOT NULL,
  `email` varchar(128) CHARACTER SET latin1 NOT NULL,
  `image` varchar(128) CHARACTER SET latin1 NOT NULL,
  `password` varchar(256) CHARACTER SET latin1 NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `tanggal_input` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `alamat`, `email`, `image`, `password`, `role_id`, `is_active`, `tanggal_input`) VALUES
(10, 'Sangyeon', '', 'leesanggg0101@gmail.com', 'default.jpg', '$2y$10$wtQVxMzW0YM60IIz3W.arOg75qE/e9nB/k8GjedWlpR2VMbOcr1vu', 2, 1, 1710865908),
(11, 'El Malik rayhan', 'JL. KH Hasyim Ashari GG pentil 2', 'malik123@gmail.com', 'default.jpg', '$2y$10$ScJDdd7xFkPUtTtTrRfIoOMFdGODXyy2jPfAMWej9ZBetLFrgt9se', 2, 1, 1711890622),
(12, 'El Malik rayhan', 'JL. KH Hasyim Ashari GG pentil 2', 'malik123@gmail.com', 'default.jpg', '$2y$10$K6dyi2mlGs8tZuI24EFVr.AuH9TItP66WhGIcFFko3AB0KCGaok.K', 2, 1, 1711890647),
(13, 'Annida Fitri', 'JL. KH Hasyim Ashari GG pentil 2', 'anidanid123@gmail.com', 'default.jpg', '$2y$10$4Bct704es0j1tyHhwZumF.b9w8p1V/.7LOPOYIbQm3L1U6xb4UJ6a', 2, 1, 1712304124),
(14, 'Annida Fitri', 'JL. KH Hasyim Ashari GG pentil 2', 'annida111@gmail.com', 'default.jpg', '$2y$10$Q5Ylx.ginj.HROOhvavine6ZJLryzkF8GCHhwQYHunyoGgtMb/VSO', 2, 1, 1713772879);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_booking`);

--
-- Indexes for table `booking_detail`
--
ALTER TABLE `booking_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_detail`
--
ALTER TABLE `booking_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `temp`
--
ALTER TABLE `temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Database: `shop`
--
CREATE DATABASE IF NOT EXISTS `shop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shop`;

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `date_order` date NOT NULL,
  `promt_price` double DEFAULT 0,
  `total` double NOT NULL,
  `payment_method` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token_date` double DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `id_customer`, `date_order`, `promt_price`, `total`, `payment_method`, `note`, `token`, `token_date`, `status`) VALUES
(28, 57, '2018-09-25', 0, 137367000, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id` int(11) NOT NULL,
  `id_bill` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_order` date NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='chi_tiet_hoa_don' ROW_FORMAT=COMPACT;

--
-- Dumping data for table `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `id_bill`, `id_product`, `quantity`, `price`, `name`, `date_order`, `image`) VALUES
(30, 28, 4, 3, 25790000, 'iPhone 8 256GB', '2018-09-25', 'iphone8.jpg'),
(31, 28, 7, 3, 19999000, 'iPhone 7 Plus 32GB', '2018-09-25', 'iphone7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `id_parent` int(11) DEFAULT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `id_url` int(11) DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `id_parent`, `name`, `id_url`, `icon`) VALUES
(1, NULL, 'iPhone', 1, 'fa-mobile fa-2x'),
(2, NULL, 'iPad', 2, 'fa-tablet'),
(3, NULL, 'Macbook', 3, 'fa-laptop'),
(4, NULL, 'iMac - Mac Pro', 13, 'fa-desktop'),
(5, NULL, 'Apple Watch', 4, 'fa-clock-o'),
(7, 1, 'iPhone X', 6, NULL),
(8, 1, 'iPhone 8|8Plus', 7, NULL),
(9, 1, 'iPhone 7|7Plus', 8, NULL),
(10, 1, 'iPhone 6|6Plus', 9, NULL),
(11, 2, 'iPad Pro', 10, NULL),
(12, 2, 'iPad (New) 2017', 11, NULL),
(13, 2, 'iPad mini 4', 12, NULL),
(14, 3, 'Macbook 12 inch', 14, NULL),
(15, 3, 'Macbook Air', 15, NULL),
(16, 3, 'Macbook Pro Retina', 16, NULL),
(17, 4, 'iMAC', 17, NULL),
(18, 4, 'MacPro', 18, NULL),
(19, 4, 'Mac mini', 19, NULL),
(21, 5, 'apple watch series 3', NULL, NULL),
(22, 5, 'apple watch series 1', NULL, NULL),
(23, 1, 'iphone xs', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `gender`, `email`, `address`, `phone`, `note`) VALUES
(57, 'Nam', NULL, 'trungnam2101998@gmail.com', 'Đà Nẵng', '0935496498', '');

-- --------------------------------------------------------

--
-- Table structure for table `page_url`
--

CREATE TABLE `page_url` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `page_url`
--

INSERT INTO `page_url` (`id`, `url`) VALUES
(54, 'apple-cap-apple-cap-ket-noi-30-pin-to-usb-cable'),
(50, 'apple-cap-chuyen-doi-lightning-to-35mm'),
(57, 'apple-cap-hdmi-to-hdmi-cable-18m'),
(61, 'apple-cap-ket-noi-apple-lightning-to-30-pin-adapter'),
(53, 'apple-cap-ket-noi-lightning-to-usb-cable'),
(56, 'apple-cap-lightning-to-usb-cable-(2m)'),
(64, 'apple-cap-lightning-to-usb-camera-adapter'),
(65, 'apple-cap-mini-displayport-to-vga-adapter'),
(66, 'apple-cap-thunderbolt-to-gigabit-ethernet-adapter'),
(58, 'apple-cap-usb-c-charge-cable-(2m)'),
(63, 'apple-cap-usb-c-to-usb'),
(76, 'apple-op-lung-iphone-66s-leather-red'),
(77, 'apple-op-lung-iphone-66s-plus-leather-midnight-blue'),
(79, 'apple-op-lung-iphone-7-plus8-plus-silicon-cocoa'),
(78, 'apple-op-lung-iphone-7-plus8-plus-silicon-pink-sand'),
(68, 'apple-op-lung-iphone-78-silicon-cocoa'),
(69, 'apple-op-lung-iphone-78-silicon-pink-sand'),
(71, 'apple-op-lung-iphone-78-silicon-red'),
(70, 'apple-op-lung-iphone-78-silicon-sea-blue'),
(72, 'apple-op-lung-iphone-87--silicon-rose-red'),
(73, 'apple-op-lung-iphone-87--silicon-white'),
(55, 'apple-sac-12w-usb-power-adapter'),
(51, 'apple-sac-magsafe-to-magsafe-2-converter'),
(52, 'apple-sac-nguon-5w-usb-power-adapter'),
(60, 'apple-tai-nghe-earpods-with-lightning-connection'),
(62, 'apple-tai-nghe-earpods-with-remote-and-mic'),
(4, 'apple-watch'),
(45, 'apple-watch-series-1-38mm,-vien-nhom,-day-mau-trang'),
(46, 'apple-watch-series-1-42mm,-vien-nhom,-day-mau-den'),
(48, 'apple-watch-series-3-gps-38mm,-vien-nhom,-day-mau-hong'),
(47, 'apple-watch-series-3-gps-38mm,-vien-nhom,-day-mau-trang-xam'),
(49, 'apple-watch-series-3-gps-42mm,-vien-nhom,-day-mau-den'),
(17, 'imac'),
(80, 'imac-2017-4k-retina-display-215-inch---mndy2---core-i5-30ghz-8gb-hdd-1tb'),
(82, 'imac-2017-4k-retina-display-215-inch---mne02---core-i5-34ghz-8gb-hdd-1tb'),
(81, 'imac-2017-5k-retina-display-27inch---mne92---core-i5-34ghz-8gb-fusion-drive-1tb'),
(83, 'imac-2017-5k-retina-display-27inch---mned2---core-i5-38ghz-8gb-fusion-drive-2tb'),
(85, 'imac-215-inch-2017---mmqa2---core-i5-23ghz-8gb-hdd-1tb'),
(13, 'imac-mac-pro'),
(87, 'imac-mk482-(retina-5k,-27-inch,-late-2015)---core-i5--33ghz-fursion-drive'),
(90, 'imac-pro-–-mq2y2-(8core32g1tbvega-56)-–-new'),
(93, 'imac-pro-–-mq2y2-option-(10core128gb2tbvega-64)-like-new-99%'),
(95, 'imac-pro-–-mq2y2-option-(14core64g2tbvega-64)'),
(2, 'ipad'),
(12, 'ipad-mini-4'),
(44, 'ipad-mini-4-wi-fi-4g-128gb'),
(11, 'ipad-new-2017'),
(10, 'ipad-pro'),
(34, 'ipad-pro-105-wi-fi-256gb-(2017)'),
(32, 'ipad-pro-105-wi-fi-4g-256gb-(2017)'),
(39, 'ipad-pro-105-wi-fi-4g-512gb-(2017)'),
(31, 'ipad-pro-105-wi-fi-4g-64gb-(2017)'),
(30, 'ipad-pro-105-wi-fi-64gb-(2017)'),
(35, 'ipad-pro-129--wi-fi-64gb-(2017)'),
(37, 'ipad-pro-129-wi-fi-256gb-(2017)'),
(38, 'ipad-pro-129-wi-fi-4g-256gb-(2017)'),
(33, 'ipad-pro-129-wi-fi-4g-512gb-(2017)'),
(36, 'ipad-pro-129-wi-fi-4g-64gb-(2017)'),
(41, 'ipad-wi-fi-128gb-(2017)'),
(40, 'ipad-wi-fi-32gb-(2017)'),
(43, 'ipad-wi-fi-4g-128gb-(2017)'),
(42, 'ipad-wi-fi-4g-32gb-(2017)'),
(1, 'iphone'),
(29, 'iphone-6-32gb-(2017)'),
(9, 'iphone-6-6plus'),
(28, 'iphone-6s-plus-32gb'),
(27, 'iphone-7-32gb'),
(8, 'iphone-7-7plus'),
(26, 'iphone-7-plus-32gb'),
(23, 'iphone-8-256gb'),
(25, 'iphone-8-64gb'),
(7, 'iphone-8-8plus'),
(22, 'iphone-8-plus-256gb'),
(24, 'iphone-8-plus-64gb'),
(125, 'iphone-9-16gb'),
(123, 'iphone-9-256gb'),
(124, 'iphone-9-64gb'),
(6, 'iphone-x'),
(20, 'iphone-x-256gb'),
(21, 'iphone-x-64gb'),
(19, 'mac-mini'),
(97, 'mac-mini-2014-core-i5-26ghz-8gb-1tb-new-99%'),
(18, 'mac-pro'),
(88, 'mac-pro-md878----6-core--dual-gpu-d700-12gb-new-99%--used'),
(91, 'mac-pro-me253----quad-core--256gb--dual-gpu-d300--new-99%--used'),
(3, 'macbook'),
(14, 'macbook-12-inch'),
(99, 'macbook-12-inch-2017-core-i5-8gb-512gb-(nhieu-mau)'),
(100, 'macbook-12-inch-2017-core-m3-8gb-256gb-(-nhieu-mau-)'),
(15, 'macbook-air'),
(102, 'macbook-air-2015--116-inch-mjvp2--max-option'),
(103, 'macbook-air-mjvm2-(116-inch,-early-2015)---core-i5--ram-4gb--ssd-128gb'),
(104, 'macbook-air-mqd32-(133-inch,-2017)---core-i5--ram-8gb--ssd-128gb'),
(105, 'macbook-air-mqd32-(133-inch,-2017)---core-i5--ram-8gb--ssd-128gb-new-99%'),
(106, 'macbook-air-mqd42-(133-inch,-2017)---core-i5--ram-8gb--ssd-256gb'),
(107, 'macbook-pro-133-2017-mpxq2-(core-i5--8gb--128gb)-(gray-space-)'),
(108, 'macbook-pro-133-2017-mpxt2-(core-i5--8gb--256gb)-new-100%'),
(16, 'macbook-pro-retina'),
(109, 'macbook-pro-retina-mjlq2-(154-inch,-mid-2015)---core-i7--ram-16gb--ssd-256gb'),
(110, 'mlh12-macbook-2016-touchbar-13-inch-16gb-256gb-touchbar-likenew-99%'),
(111, 'mnqf2-macbook-2016-touchbar-13-inch-16gb-used-new-97%'),
(112, 'mnqf2-macbook-2016-touchbar-13-inch-i5-16gb-512gb-ssd-touchbar'),
(113, 'mnqg2---macbook-pro-retina-2016-13inch-512gb-touch-bar-(silver)--new-99%'),
(114, 'mptr2---macbook-pro-2017-15-inch-ssd-256gb-touchbar-(-space-gray)'),
(115, 'mptt2---macbook-pro-2017-15-inch-quad-i7-31ghz-1tb-ssd-option-(space-gray)'),
(116, 'mptt2---macbook-pro-2017-15-inch-ssd-512gb-touchbar-(-space-gray)'),
(117, 'mptu2---macbook-pro-2017-15-inch-ssd-256gb-touchbar-(sliver)'),
(118, 'mptv2---macbook-pro-2017-15-inch-ssd-512gb-touchbar-(-silver-)'),
(119, 'mpxv2--macbook-pro-retina-2017-13-inch-256gb-touchbar-(-gray-space-)'),
(120, 'mpxw2---macbook-pro-retina-2017-13inch-ssd-512gb-touchbar-(gray-space-)'),
(121, 'mpxx2---macbook-pro-retina-2017-13inch-ssd-256gb-touchbar-(-silver-)'),
(122, 'mpxy2---macbook-pro-retina-2017-13inch-ssd-512gb-touchbar-(-silver-)'),
(5, 'phu-kien'),
(59, 'pknk-cap-ket-noi-lightning-to-usb-c-mk0x2zaa'),
(74, 'pknk-op-lung-iphone-87--silicon-dark-olive-mr3n2fea'),
(75, 'pknk-op-lung-iphone-87--silicon-ultra-violet-mqgr2fea'),
(136, 'test-5'),
(133, 'test3'),
(135, 'test4'),
(101, 'the-new-macbook-2016---mmgm2---12--core-m5--ram-8gb--ssd-512gb-(rose-gold)');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `id_parent` int(11) DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `detail` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `promotion_price` float NOT NULL DEFAULT 0,
  `promotion` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: sp bình thường, 1: sp đặc biệt',
  `new` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: old, 1:new',
  `update_at` date NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: chua xoa, 1: da xoa',
  `hot` tinyint(1) NOT NULL COMMENT '0: sp bt 1: hot deals'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `id_type`, `id_parent`, `name`, `detail`, `price`, `promotion_price`, `promotion`, `image`, `status`, `new`, `update_at`, `deleted`, `hot`) VALUES
(4, 8, 1, 'iPhone 8 256GB', '  Màn Hình: 4.7 inch\r\n	Camera: 12.0 MP/ 7.0 MP\r\n	Pin: 1821 mAh\r\n	Ram: 2 GB\r\n	CPU: Apple A11 Bionic\r\n	HĐH: iOS 11', 25790000, 0, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đKM2:Giảm ngay 1,000,000đMua combo (iPhone - Apple Watch) giảm thêm 1,000,000đGiảm ngay 4% và không q', 'iphoneX2.jpg', 0, 1, '2018-02-16', 0, 0),
(7, 9, 1, 'iPhone 7 Plus 32GB', ' Màn Hình: 5.5 inch (1920 x 1080 pixels)\r\n	Camera: Chính: Dual Camera 12.0MP; Phụ: 7.0MP\r\n	Pin:  Li-Ion 11.1 Wh (2900 mAh)\r\n	Ram: 3 GB\r\n	CPU : Apple A10, 4 Nhân, Quad-core 2.3 GHz\r\n	HĐH: iOS', 19999000, 19909000, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đKM2:Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đGiảm ngay 4% và không quá 600,000đ khi Trả ', 'iphone7.jpg', 0, 1, '2018-02-16', 0, 0),
(23, 12, 2, 'iPad Wi-Fi4G 32GB ', '  Màn Hình : Retina display, , 9.7 inch(2048 x 1536 pixels)\r\n	Camera : 8.0 MP, /1.2 MP\r\n	Pin : 32.4 Wh Lithium - Ion\r\n	Ram : 2 GB\r\n	Kết Nối : Wi‑Fi,3G,4G\r\n	HĐH : iOS', 12999000, 0, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%KM2:Giảm ngay 500,000đGiảm ngay 4% và không quá 600,000đ khi Trả góp qua Thẻ tín dụng HSBC (áp dụng 3 ngày cuối tuần)Giảm ngay 2% và không quá 300,000đ k', 'ipad1.jpg', 0, 0, '2018-02-16', 0, 0),
(26, 22, 5, 'AppleWatch Series1 ', 'Dòng máy tương thích : iPhone\n	Hiển thị màn hình : OLED Retina display with Force Touch (450 nits)\n	Xử lý/ Bộ nhớ : S1P dual-core\n	Dung lượng Pin/Thời gian sử dụng : Lên đến 18h\n	Thông báo : Tin nhắn, cuộc gọi,...', 7999000, 0, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đKM2:Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đGiảm ngay 4% và không quá 600,000đ khi Trả ', 'apple-watch-series-1-38mm,-vien-nhom,-day-mau-trang.png', 0, 0, '2018-02-16', 1, 0),
(28, 21, 5, 'AppleWatch Series3 ', 'Dòng máy tương thích : iPhone\n	Hiển thị màn hình : OLED Retina display with Force Touch\n	Xử lý/ Bộ nhớ : W2 chip\n	Dung lượng Pin/Thời gian sử dụng : Lên đến 18h\n	Thông báo : Tin nhắn, cuộc gọi,..\n ', 9999000, 0, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đKM2:Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đGiảm ngay 4% và không quá 600,000đ khi Trả ', 'apple-watch-series-3-gps-38mm,-vien-nhom,-day-mau-trang-xam.png', 0, 0, '2018-02-16', 0, 0),
(64, 17, 4, 'iMac 2017 5K 27inch ', '- Bộ vi xử lý: 3.4GHz Core i5 (Turbo Boost lên đến 3.8GHz)\n    - Ram: 8GB of 2400MHz DDR4\n    - Ổ cứng: 1TB (5400 rpm) Fusion Drive hoặc 256GB hoặc 512GB SSD\n    - Đồ họa: Radeon Pro 570 with 4GB of VRAM\n    - Màn hình: 27inch (diagonal) Retina 5K display\n    - Độ phân giải: 5210 × 2880pixels, với hỗ trợ hàng tỷ màu\n    - Cổng mạng: Wi-Fi 802.11ac Khả năng tương thích chuẩn IEEE 802.11a/b/g/n, Bluetooth 4.2\n    - Khe cắm: Giắc cắm tai nghe 3,5 mm, Khe cắm thẻ SDXC.', 57500000, 0, '', 'imac-2017-5k-retina-display-27inch---mned2---core-i5-38ghz-8gb-fusion-drive-2tb.png', 0, 0, '2018-02-16', 0, 0),
(69, 18, 4, 'Mac Pro MD878  ', '- Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\n    - RAM: 16GB\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\n    - 6 cổng Thunderbolt 2\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\n    - Thiết kế độc đáo, nhỏ gọn\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 77000000, 0, '', 'mac-pro-md878----6-core--dual-gpu-d700-12gb-new-99--used.png', 0, 0, '2018-02-16', 0, 0),
(72, 18, 4, 'Mac Pro ME253  ', '- Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\n    - RAM: 16GB\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\n    - 6 cổng Thunderbolt 2\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\n    - Thiết kế độc đáo, nhỏ gọn\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 39000000, 0, '', 'mac-pro-me253----quad-core--256gb--dual-gpu-d300--new-99--used.png', 0, 0, '2018-02-16', 0, 0),
(78, 19, 4, 'Mac mini 2014 ', '- Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\n    - RAM: 16GB\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\n    - 6 cổng Thunderbolt 2\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\n    - Thiết kế độc đáo, nhỏ gọn\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 12500000, 0, '', 'mac-mini-2014-core-i5-26ghz-8gb-1tb-new-99.png', 0, 0, '2018-02-16', 0, 0),
(80, 14, 3, 'Macbook 12 inch 2017 ', '    - Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\r\n    - RAM: 16GB\r\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\r\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\r\n    - 6 cổng Thunderbolt 2\r\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\r\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\r\n    - Thiết kế độc đáo, nhỏ gọn\r\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 36500000, 36000000, '', 'macbook1.jpg', 0, 0, '2018-02-16', 0, 0),
(82, 16, 3, ' MacBook 2016 12 inch', ' - Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\r\n    - RAM: 16GB\r\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\r\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\r\n    - 6 cổng Thunderbolt 2\r\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\r\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\r\n    - Thiết kế độc đáo, nhỏ gọn\r\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 27900000, 0, '', 'macbookpro.jpg', 0, 0, '2018-09-26', 0, 0),
(83, 14, 3, 'Macbook Air 2015 -11.6 inch', ' - Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\r\n    - RAM: 16GB\r\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\r\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\r\n    - 6 cổng Thunderbolt 2\r\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\r\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\r\n    - Thiết kế độc đáo, nhỏ gọn\r\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 19500000, 0, '', 'macbookair.jpg', 0, 0, '2018-02-16', 0, 1),
(99, 7, 1, 'iPhone X 64GB', ' Chính hãng, Nguyên seal, Mới 100%, Chưa Active\r\n\r\nMiễn phí giao hàng toàn quốc\r\n\r\nThiết kế: Nguyên khối\r\n\r\nMàn hình: Super AMOLED capacitive touchscreen, 5.8 inch HD\r\n\r\nCamera Trước/Sau: 7MP/ 2 camera 12MP\r\n\r\nCPU: Apple A11 Bionic 6 nhân\r\n\r\nBộ Nhớ: 64GB\r\n\r\nRAM: 3GB\r\n\r\nSIM: 1 Nano SIM\r\n\r\nTính năng: Chống nước, chống bụi, Face ID', 24690000, 24000000, NULL, 'iphoneX1.jpg', 1, 0, '2018-09-26', 0, 0),
(100, 10, 1, 'iPhone 6 32GB ', ' Chính hãng, nguyên seal, mới 100%\r\n\r\nMiễn phí giao hàng toàn quốc\r\n\r\nThiết kế: Nguyên khối\r\n\r\nMàn hình: 4.7 inch, HD (1334 x 750 Pixels)\r\n\r\nCamera Trước/Sau: 8MP/ 1.2MP\r\n\r\nCPU: Apple A8 2 nhân 64-bit\r\n\r\nBộ Nhớ: 32GB\r\n\r\nRAM: 1GB', 6290000, 6000000, NULL, 'iphone61.jpg', 1, 0, '2018-09-26', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(10) NOT NULL DEFAULT 'staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'admin'),
(2, 'staff'),
(3, 'guest');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1: show , 0: hide',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `image`, `link`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'slider-img3.jpg', '', 'Slide  03', 1, '2018-07-04 13:52:08', '0000-00-00 00:00:00'),
(2, 'slider-img1.jpg', '', 'Slide 01', 1, '2018-07-04 13:52:08', '0000-00-00 00:00:00'),
(3, 'slider-img2.jpg', '', 'Slide  02', 1, '2018-07-04 13:52:08', '0000-00-00 00:00:00'),
(4, 'slider-img4.jpg', '', 'Slide 04', 0, '2018-07-04 13:52:08', '0000-00-00 00:00:00'),
(5, 'slider-img5.jpg', '', 'Slide 05', 0, '2018-07-04 13:52:08', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'guest',
  `remember_token` varchar(1000) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `fullname`, `birthdate`, `gender`, `address`, `email`, `phone`, `role`, `remember_token`, `updated_at`, `created_at`) VALUES
(1, 'user1', '123456789', 'Huong Hương', '2018-04-03', 'nữ', 'Quận 1', 'huongnguyenak96@gmail.com', '', 'guest', NULL, '2018-04-15 01:35:57', '2018-04-15 01:35:57'),
(2, 'user2', '$2y$10$VUzKYiO.2u2Xgqm9ve7CqeyyxSufM4LQTlKImXn576go7.DeeHvQC', NULL, NULL, NULL, NULL, 'huong@gmail.com', NULL, 'guest', NULL, '2018-04-24 23:28:25', '2018-04-24 23:28:25'),
(4, 'user3', '$2y$10$u8e2QbsKypZ6.B5X7vANMO1dN0xjgaEGpZzqaB5hUDHDbvJ4YnqNm', NULL, NULL, NULL, NULL, '206154413404huong@gmail.com', NULL, 'guest', NULL, '2018-04-24 23:31:01', '2018-04-24 23:31:01'),
(5, 'user4', '$2y$10$IOvA1jVv1tUrKY0bD8VyOe0bNCbIVMQKNX2.zkOyXZ0s1g9U4vt..', NULL, NULL, NULL, NULL, '400563674038huong@gmail.com', NULL, 'guest', NULL, '2018-04-24 23:31:02', '2018-04-24 23:31:02'),
(6, 'user5', '$2y$10$86AhDsGbqaeNIRD1xiAfTuLuMHkcyzrtC09ieQNUIeniKCVheYJI.', NULL, NULL, NULL, NULL, '365431308610huong@gmail.com', NULL, 'guest', NULL, '2018-04-24 23:35:26', '2018-04-24 23:35:26'),
(7, 'user6', '$2y$10$g1q9ZWlhsiO6xztfEEL.Wey5v7lKJoz6GtLWkoTZKolMpPk7Yctia', NULL, NULL, NULL, NULL, '520082013187huong@gmail.com', NULL, 'guest', NULL, '2018-04-24 23:46:55', '2018-04-24 23:46:55'),
(8, 'user7', '$2y$10$m8RqEzvCT5kGMLsJwOu/aOgKwCpFLm8qCHlQDJXQTaQ6jZK23CyRy', NULL, NULL, NULL, NULL, '176387046602huong@gmail.com', NULL, 'guest', NULL, '2018-04-24 23:47:06', '2018-04-24 23:47:06'),
(9, 'user8', '$2y$10$IHBNFF49q98SbU06dcB9AuTv9U9fkIVrUptBGKhMlDd8iTZXsFDcK', NULL, NULL, NULL, NULL, '554508995187huong@gmail.com', NULL, 'guest', NULL, '2018-04-24 23:49:37', '2018-04-24 23:49:37'),
(10, 'user9', '$2y$10$Wed3VIJK0GUJi16md4FG3.cLrsN9PClpnykQPZrNbJvk7D3OOy552', NULL, NULL, NULL, NULL, '396956636862huong@gmail.com', NULL, 'guest', NULL, '2018-04-24 23:51:54', '2018-04-24 23:51:54'),
(11, 'truonguy123', '$2y$10$h07Mmrb8zGKzgnPaIE1fQerMOFOUkAm9tf6Gc1kNXvZD1WG/APjOC', 'Lý Trưởng Uyy', '1997-06-15', 'Nam', '57G Cư xá phú lâm D P10 Q6', 'lytruonguy97ic@gmail.com', '01868032498', 'admin', NULL, '2018-07-13 05:45:58', '2018-07-13 05:45:58'),
(12, 'truonguy1234', '$2y$10$Oj7EmwsVfrNHDm3MuulkJ.VHZY0sGL53hg86PNhJ1NGXdm90zsbJW', 'Lý Trưởng Uyyy', '1997-06-15', 'Nam', '57G Cư xá phú lâm D P10 Q8', 'lytruonguy98ic@gmail.com', '01868032499', 'admin', NULL, '2018-07-13 05:53:45', '2018-07-13 05:53:45'),
(13, 'uyly281297', '$2y$10$GOYkw2kabBIqo4oeajYYxO10963ClYE6TU8w2gD5S.5nLNJxf5eiO', 'Lý Trưởng Uyyyy', '1997-06-15', 'Nam', '57G Cư xá phú lâm D P10 Q8', 'lytruonguy99ic@gmail.com', '01868032499', 'admin', NULL, '2018-07-13 05:56:33', '2018-07-13 05:56:33'),
(14, 'huonghuóng', '$2y$10$n8qvhbOQ0e/xwzsPDDjzr.Wb9KyDo.DsEPXMCtaQGAyqdoxjwIKBi', 'Lý Trưởng Uy', '2018-07-07', 'Nữ', '15', 'lytruonguy12@gmail.com', '12342345678', 'admin', NULL, '2018-07-13 06:18:13', '2018-07-13 06:18:13'),
(15, 'hhhhhhhhhhhhhhhh', '$2y$10$zqph2XVLEgaxwpICfwhQe.BBu50Ma9tdrlQkINUFNIyjsbERBaYPy', 'Lý Trưởng Uy', '2018-06-29', 'Nam', '15', 'lytruonguy973132@gmail.com', '12312312', 'admin', '21LkZtGTzEcFE6NLOHermMU7B0uqFQ1bpveWIphxjYrE1sYC5w5NJB4JuPsb', '2018-07-13 06:27:05', '2018-07-13 06:27:05'),
(16, 'Steven Lee', '$2y$10$/VO4WLCRLl4cA.8ngUv7le1ExzNLcA.ODxEv3jcV1HvfAuJrGEz5y', 'Trưởng Uy Lý', '1997-07-13', 'Nam', '57G Cư xá phú lâm D P10 Q6', 'stevenlee97@gmail.com', '01864542198', 'admin', NULL, '2018-08-05 19:57:52', '2018-08-05 19:57:52'),
(17, 'nhocuy123456', '$2y$10$oziVv52qzjRrBXW/wPeVbOjgt5t5J0ILQB1VXiOCDBP63A9ItJKw2', 'Uy Lý Trưởngg', '1997-06-15', 'Nam', '57G Cư xá phú lâm D P10 Q6', 'nhocuy123456@gmail.com', '123456789', 'guest', NULL, '2018-08-05 20:38:14', '2018-08-05 20:38:14'),
(18, 'anhhoangng', '$2y$10$yUerPLTd5iPhhFmUTcitUuPxgj6qTqlK8kYWfW.rUMkwcQdgSnqgi', 'Anh Hoang', '1997-07-05', 'Nam', 'anascascasc', 'abc@gmail.com', '021021212121', 'admin', NULL, '2018-08-12 03:58:06', '2018-08-12 03:58:06'),
(19, 'nhocuy1234', '$2y$10$K0VVUwf04igmBUHcWBPKF..gyiQmFfl1lHB5Ln2lnZFKVXjRDZjy2', 'Lý Trưởng Uy', '1996-02-11', NULL, '15', 'admin@gmail.com', '12312312312313', 'guest', NULL, '2018-09-02 02:09:43', '2018-09-02 02:09:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `1` (`id_customer`);

--
-- Indexes for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `3` (`id_product`),
  ADD KEY `id_bill` (`id_bill`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_url` (`id_url`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_url`
--
ALTER TABLE `page_url`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url` (`url`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type` (`id_type`),
  ADD KEY `id_url` (`id_parent`);
ALTER TABLE `products` ADD FULLTEXT KEY `name_2` (`name`);
ALTER TABLE `products` ADD FULLTEXT KEY `search1` (`name`,`detail`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `page_url`
--
ALTER TABLE `page_url`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `categories` (`id`);
--
-- Database: `showroom`
--
CREATE DATABASE IF NOT EXISTS `showroom` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `showroom`;

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` int(11) NOT NULL,
  `merek_mobil` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `tahun_mobil` int(11) NOT NULL,
  `warna_mobil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Database: `showroom-toyota`
--
CREATE DATABASE IF NOT EXISTS `showroom-toyota` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `showroom-toyota`;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('3oc7gslrp7c8q9cof5nkenpf04d8fa3r', '::1', 1667972390, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373937323339303b7265646972656374696f6e7c4e3b),
('krekfij84a4s9p8s0uqu9o5f9jgcngph', '::1', 1667973396, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373937333339363b7265646972656374696f6e7c4e3b),
('deefi79fp6h8r7poftfs3v3fv8al8ihv', '::1', 1667973697, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373937333639373b7265646972656374696f6e7c4e3b),
('7dpgj8dmldq0lajpffg17ejfdr197nru', '::1', 1667974028, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373937343032383b7265646972656374696f6e7c4e3b6c6f67696e5f666c6173687c733a31353a2250617373776f72642073616c616821223b5f5f63695f766172737c613a323a7b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b733a31323a226f6c645f757365726e616d65223b733a333a226f6c64223b7d6f6c645f757365726e616d657c733a353a2261646d696e223b),
('r660q6e6sn7qncrnhrsljfrqfrib4848', '::1', 1667974553, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373937343535333b7265646972656374696f6e7c4e3b6c6f67696e5f666c6173687c733a31353a2250617373776f72642073616c616821223b5f5f63695f766172737c613a323a7b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b733a31323a226f6c645f757365726e616d65223b733a333a226f6c64223b7d6f6c645f757365726e616d657c733a353a2261646d696e223b),
('hqlo9gpf70nurt0tffbsaf2j75lpsmu7', '::1', 1667975111, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373937353131313b7265646972656374696f6e7c4e3b6c6f67696e5f666c6173687c733a31353a2250617373776f72642073616c616821223b5f5f63695f766172737c613a323a7b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b733a31323a226f6c645f757365726e616d65223b733a333a226f6c64223b7d6f6c645f757365726e616d657c733a353a2261646d696e223b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a223763636137323263333036346130653334316562636263383835316130396432626366666235623933376239343135313530616536343063356533323766306264383530356537636231386537346434653161653736613833346234303866376133343464616361373035306162626237623663336466303032653938396632534c7169535163466d6667416f464a4637774a335a613636794f42356f7662584b684c47526a43354f52326871676c5452346a654466523358594e3638326c4f6d726b614e4c636e69342b734f3864675a4d54504d4c4749794c7558332f4f3732706b6a6b552b4b507a626f6b767973535235616a48732b4531636e594e4b77223b),
('o5m2683r1gmkukbkvlqnto3rgvtel4f0', '::1', 1667975509, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373937353530393b7265646972656374696f6e7c4e3b6c6f67696e5f666c6173687c733a31353a2250617373776f72642073616c616821223b5f5f63695f766172737c613a323a7b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b733a31323a226f6c645f757365726e616d65223b733a333a226f6c64223b7d6f6c645f757365726e616d657c733a353a2261646d696e223b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a223763636137323263333036346130653334316562636263383835316130396432626366666235623933376239343135313530616536343063356533323766306264383530356537636231386537346434653161653736613833346234303866376133343464616361373035306162626237623663336466303032653938396632534c7169535163466d6667416f464a4637774a335a613636794f42356f7662584b684c47526a43354f52326871676c5452346a654466523358594e3638326c4f6d726b614e4c636e69342b734f3864675a4d54504d4c4749794c7558332f4f3732706b6a6b552b4b507a626f6b767973535235616a48732b4531636e594e4b77223b),
('rsbu7id5uf2rpkmgtg5ckehnse0114qb', '::1', 1667975900, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373937353930303b7265646972656374696f6e7c4e3b6c6f67696e5f666c6173687c733a31353a2250617373776f72642073616c616821223b5f5f63695f766172737c613a323a7b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b733a31323a226f6c645f757365726e616d65223b733a333a226f6c64223b7d6f6c645f757365726e616d657c733a353a2261646d696e223b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a223763636137323263333036346130653334316562636263383835316130396432626366666235623933376239343135313530616536343063356533323766306264383530356537636231386537346434653161653736613833346234303866376133343464616361373035306162626237623663336466303032653938396632534c7169535163466d6667416f464a4637774a335a613636794f42356f7662584b684c47526a43354f52326871676c5452346a654466523358594e3638326c4f6d726b614e4c636e69342b734f3864675a4d54504d4c4749794c7558332f4f3732706b6a6b552b4b507a626f6b767973535235616a48732b4531636e594e4b77223b),
('4768q2jthrne38f2mhthqd2g4c7kr4qk', '::1', 1667976231, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373937363233313b7265646972656374696f6e7c4e3b6c6f67696e5f666c6173687c733a31353a2250617373776f72642073616c616821223b5f5f63695f766172737c613a323a7b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b733a31323a226f6c645f757365726e616d65223b733a333a226f6c64223b7d6f6c645f757365726e616d657c733a353a2261646d696e223b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a223763636137323263333036346130653334316562636263383835316130396432626366666235623933376239343135313530616536343063356533323766306264383530356537636231386537346434653161653736613833346234303866376133343464616361373035306162626237623663336466303032653938396632534c7169535163466d6667416f464a4637774a335a613636794f42356f7662584b684c47526a43354f52326871676c5452346a654466523358594e3638326c4f6d726b614e4c636e69342b734f3864675a4d54504d4c4749794c7558332f4f3732706b6a6b552b4b507a626f6b767973535235616a48732b4531636e594e4b77223b),
('437o8dma8ms69msrkqitldjt4bbrt771', '::1', 1667976551, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373937363535313b7265646972656374696f6e7c4e3b6c6f67696e5f666c6173687c733a31353a2250617373776f72642073616c616821223b5f5f63695f766172737c613a323a7b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b733a31323a226f6c645f757365726e616d65223b733a333a226f6c64223b7d6f6c645f757365726e616d657c733a353a2261646d696e223b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a223763636137323263333036346130653334316562636263383835316130396432626366666235623933376239343135313530616536343063356533323766306264383530356537636231386537346434653161653736613833346234303866376133343464616361373035306162626237623663336466303032653938396632534c7169535163466d6667416f464a4637774a335a613636794f42356f7662584b684c47526a43354f52326871676c5452346a654466523358594e3638326c4f6d726b614e4c636e69342b734f3864675a4d54504d4c4749794c7558332f4f3732706b6a6b552b4b507a626f6b767973535235616a48732b4531636e594e4b77223b),
('85msssk6hlm37i04ishq12ni18gli9tj', '::1', 1667976918, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373937363931383b7265646972656374696f6e7c733a37363a226148523063446f764c327876593246736147397a6443396e5a584a686153316f6343317a5957317a6457356e4c326c755a4756344c6e426f634339685a47317062693976636d526c636e4d3d223b6c6f67696e5f666c6173687c733a31363a22426572686173696c206c6f676f757421223b5f5f63695f766172737c613a323a7b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b733a31323a226f6c645f757365726e616d65223b733a333a226f6c64223b7d6f6c645f757365726e616d657c733a353a2261646d696e223b),
('lli600bptu1b0uitdtov184hoi2vvcjj', '::1', 1667978050, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373937383035303b7265646972656374696f6e7c733a37363a226148523063446f764c327876593246736147397a6443396e5a584a686153316f6343317a5957317a6457356e4c326c755a4756344c6e426f634339685a47317062693976636d526c636e4d3d223b6c6f67696e5f666c6173687c733a31363a22426572686173696c206c6f676f757421223b5f5f63695f766172737c613a323a7b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b733a31323a226f6c645f757365726e616d65223b733a333a226f6c64223b7d6f6c645f757365726e616d657c733a353a2261646d696e223b),
('81cqqipcvndg6bq7fq6kp556or22r9h3', '::1', 1667978354, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373937383335343b7265646972656374696f6e7c4e3b6c6f67696e5f666c6173687c733a31363a22426572686173696c206c6f676f757421223b5f5f63695f766172737c613a323a7b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b733a31323a226f6c645f757365726e616d65223b733a333a226f6c64223b7d6f6c645f757365726e616d657c733a353a2261646d696e223b),
('lb17q2hb64olr6ibk54tlb3ljptqaomf', '::1', 1667978675, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373937383637353b7265646972656374696f6e7c4e3b6c6f67696e5f666c6173687c733a31363a22426572686173696c206c6f676f757421223b5f5f63695f766172737c613a323a7b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b733a31323a226f6c645f757365726e616d65223b733a333a226f6c64223b7d6f6c645f757365726e616d657c733a353a2261646d696e223b),
('8qv99lbgrtljt43avbqbj7m56q6qds4v', '::1', 1667979229, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373937393232393b7265646972656374696f6e7c4e3b6c6f67696e5f666c6173687c733a31363a22426572686173696c206c6f676f757421223b5f5f63695f766172737c613a323a7b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b733a31323a226f6c645f757365726e616d65223b733a333a226f6c64223b7d6f6c645f757365726e616d657c733a353a2261646d696e223b),
('fa1bh60igpvgssc8ap31q4kohmkf5puu', '::1', 1667979613, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373937393631333b7265646972656374696f6e7c4e3b6c6f67696e5f666c6173687c733a31363a22426572686173696c206c6f676f757421223b5f5f63695f766172737c613a323a7b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b733a31323a226f6c645f757365726e616d65223b733a333a226f6c64223b7d6f6c645f757365726e616d657c733a353a2261646d696e223b),
('vte7ak8uvptgar6qchigqrmcah3q92o6', '::1', 1667980675, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373938303637353b7265646972656374696f6e7c4e3b6c6f67696e5f666c6173687c733a31363a22426572686173696c206c6f676f757421223b5f5f63695f766172737c613a323a7b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b733a31323a226f6c645f757365726e616d65223b733a333a226f6c64223b7d6f6c645f757365726e616d657c733a353a2261646d696e223b),
('2157bm2d7cfih7vpg58m0trf05uil4tp', '::1', 1667980993, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373938303939333b7265646972656374696f6e7c4e3b6c6f67696e5f666c6173687c733a31363a22426572686173696c206c6f676f757421223b5f5f63695f766172737c613a323a7b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b733a31323a226f6c645f757365726e616d65223b733a333a226f6c64223b7d6f6c645f757365726e616d657c733a353a2261646d696e223b),
('t4644fbop9otm1hq9vhl9dqphd2lkb82', '::1', 1667981305, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373938313330353b7265646972656374696f6e7c4e3b6c6f67696e5f666c6173687c733a31363a22426572686173696c206c6f676f757421223b5f5f63695f766172737c613a323a7b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b733a31323a226f6c645f757365726e616d65223b733a333a226f6c64223b7d6f6c645f757365726e616d657c733a353a2261646d696e223b),
('fkcaakng7egugetd4t7d9ao3sjsin7jb', '::1', 1667981901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373938313930313b7265646972656374696f6e7c4e3b6c6f67696e5f666c6173687c733a31363a22426572686173696c206c6f676f757421223b5f5f63695f766172737c613a323a7b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b733a31323a226f6c645f757365726e616d65223b733a333a226f6c64223b7d6f6c645f757365726e616d657c733a353a2261646d696e223b),
('4llgl6vuttmtaioamv7n8i4n3knraqt0', '::1', 1667982282, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373938323238323b7265646972656374696f6e7c4e3b6c6f67696e5f666c6173687c733a31363a22426572686173696c206c6f676f757421223b5f5f63695f766172737c613a323a7b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b733a31323a226f6c645f757365726e616d65223b733a333a226f6c64223b7d6f6c645f757365726e616d657c733a353a2261646d696e223b),
('qqml2db3qo5r8vcalslh6bkmo6ncn34u', '::1', 1667982597, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373938323539373b7265646972656374696f6e7c4e3b6c6f67696e5f666c6173687c733a31363a22426572686173696c206c6f676f757421223b5f5f63695f766172737c613a323a7b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b733a31323a226f6c645f757365726e616d65223b733a333a226f6c64223b7d6f6c645f757365726e616d657c733a353a2261646d696e223b),
('5r909v0j4020n02pulfr17lk369pc5pu', '::1', 1667982638, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373938323539373b7265646972656374696f6e7c733a37363a226148523063446f764c327876593246736147397a6443396e5a584a686153316f6343317a5957317a6457356e4c326c755a4756344c6e426f6343397a614739774c324e6f5a574e7262335630223b6c6f67696e5f666c6173687c733a31363a22426572686173696c206c6f676f757421223b5f5f63695f766172737c613a323a7b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b733a31323a226f6c645f757365726e616d65223b733a333a226f6c64223b7d6f6c645f757365726e616d657c733a353a2261646d696e223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a322e35363b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226331366135333230666134373535333064393538336333346664333536656635223b613a363a7b733a323a226964223b733a323a223331223b733a333a22717479223b643a313b733a353a227072696365223b643a322e35363b733a343a226e616d65223b733a31313a2253616d73756e6720413133223b733a353a22726f776964223b733a33323a226331366135333230666134373535333064393538336333346664333536656635223b733a383a22737562746f74616c223b643a322e35363b7d7d5f74656d705f636f75706f6e7c4e3b5f74656d705f7175616e746974797c613a313a7b733a33323a226331366135333230666134373535333064393538336333346664333536656635223b733a313a2231223b7d),
('g01vcm440gn7ub4ch3054asu53a94ms2', '::1', 1668058239, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383035383233393b7265646972656374696f6e7c4e3b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a22613332373861313833663232383239333261313236353938653135333564663361303639303234303261313862396431353536333331383866363433656536393864396133646531656531333961313532646434626364323134393464396234366535386664343632623133646235393065393834366536326166636563633663564857386374796f4c337a6c39493547736c7836654e52726650744a414b415953676c7273754567786c2b4c796555306b43566745376e5855436965654763685348786f74634b70476f596543687872782f4452316a7655366b784e4e386d4f794f6a4957616b4c716f624d3734536d79786752666b3535457a3768314854223b),
('ie5dnqru9efs54qrlhl7i01mif0emnfc', '::1', 1668058623, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383035383632333b7265646972656374696f6e7c4e3b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a22613332373861313833663232383239333261313236353938653135333564663361303639303234303261313862396431353536333331383866363433656536393864396133646531656531333961313532646434626364323134393464396234366535386664343632623133646235393065393834366536326166636563633663564857386374796f4c337a6c39493547736c7836654e52726650744a414b415953676c7273754567786c2b4c796555306b43566745376e5855436965654763685348786f74634b70476f596543687872782f4452316a7655366b784e4e386d4f794f6a4957616b4c716f624d3734536d79786752666b3535457a3768314854223b),
('lbp263lq0gi4ng1lpdbf97rokak0eflp', '::1', 1668058936, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383035383933363b7265646972656374696f6e7c4e3b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a22613332373861313833663232383239333261313236353938653135333564663361303639303234303261313862396431353536333331383866363433656536393864396133646531656531333961313532646434626364323134393464396234366535386664343632623133646235393065393834366536326166636563633663564857386374796f4c337a6c39493547736c7836654e52726650744a414b415953676c7273754567786c2b4c796555306b43566745376e5855436965654763685348786f74634b70476f596543687872782f4452316a7655366b784e4e386d4f794f6a4957616b4c716f624d3734536d79786752666b3535457a3768314854223b6164645f6e65775f70726f647563745f666c6173687c733a33333a2250726f64756b206261727520626572686173696c20646974616d6261686b616e21223b5f5f63695f766172737c613a313a7b733a32313a226164645f6e65775f70726f647563745f666c617368223b733a333a226f6c64223b7d),
('l1hrla4ut3t8nnpd1srqsus8b7ap4ro4', '::1', 1668059504, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383035393530343b7265646972656374696f6e7c4e3b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a22613332373861313833663232383239333261313236353938653135333564663361303639303234303261313862396431353536333331383866363433656536393864396133646531656531333961313532646434626364323134393464396234366535386664343632623133646235393065393834366536326166636563633663564857386374796f4c337a6c39493547736c7836654e52726650744a414b415953676c7273754567786c2b4c796555306b43566745376e5855436965654763685348786f74634b70476f596543687872782f4452316a7655366b784e4e386d4f794f6a4957616b4c716f624d3734536d79786752666b3535457a3768314854223b6164645f6e65775f70726f647563745f666c6173687c733a33333a2250726f64756b206261727520626572686173696c20646974616d6261686b616e21223b5f5f63695f766172737c613a313a7b733a32313a226164645f6e65775f70726f647563745f666c617368223b733a333a226f6c64223b7d),
('3me7gibivlvdogklfj9rdgqugjv63h9e', '::1', 1668060931, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383036303933313b7265646972656374696f6e7c4e3b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a22613332373861313833663232383239333261313236353938653135333564663361303639303234303261313862396431353536333331383866363433656536393864396133646531656531333961313532646434626364323134393464396234366535386664343632623133646235393065393834366536326166636563633663564857386374796f4c337a6c39493547736c7836654e52726650744a414b415953676c7273754567786c2b4c796555306b43566745376e5855436965654763685348786f74634b70476f596543687872782f4452316a7655366b784e4e386d4f794f6a4957616b4c716f624d3734536d79786752666b3535457a3768314854223b6164645f6e65775f70726f647563745f666c6173687c733a33333a2250726f64756b206261727520626572686173696c20646974616d6261686b616e21223b5f5f63695f766172737c613a313a7b733a32313a226164645f6e65775f70726f647563745f666c617368223b733a333a226f6c64223b7d),
('q2tceiqge270aokv4jg27f6i5vkkp99t', '::1', 1668061292, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383036313239323b7265646972656374696f6e7c4e3b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a22393039346161353936306365366530656338623538383161653232656538343564666237626331643839656362393163323532656631666132386333353030613334353134363964306466383838353832383165633237356661303163366137383733623234343334663037313132643263383937353333633063323062663137414f50426e466d4a725a4c53694a2f47616455666a636b5236454b79613032452f57784457417859316c79434b33343673426c41734d493576384c6a62586e5856626d4d6d656964722f71484b452f667a333553306e652f57696f6439554447337767704f534e636e76474a614b3150356d6831783266555a684433683270223b6164645f6e65775f70726f647563745f666c6173687c733a33333a2250726f64756b206261727520626572686173696c20646974616d6261686b616e21223b5f5f63695f766172737c613a313a7b733a32313a226164645f6e65775f70726f647563745f666c617368223b733a333a226f6c64223b7d),
('riqdepv9fg39ja86vtmfd6g4edhbom7c', '::1', 1668061614, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383036313631343b7265646972656374696f6e7c4e3b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a22393039346161353936306365366530656338623538383161653232656538343564666237626331643839656362393163323532656631666132386333353030613334353134363964306466383838353832383165633237356661303163366137383733623234343334663037313132643263383937353333633063323062663137414f50426e466d4a725a4c53694a2f47616455666a636b5236454b79613032452f57784457417859316c79434b33343673426c41734d493576384c6a62586e5856626d4d6d656964722f71484b452f667a333553306e652f57696f6439554447337767704f534e636e76474a614b3150356d6831783266555a684433683270223b6164645f6e65775f70726f647563745f666c6173687c733a33333a2250726f64756b206261727520626572686173696c20646974616d6261686b616e21223b5f5f63695f766172737c613a313a7b733a32313a226164645f6e65775f70726f647563745f666c617368223b733a333a226f6c64223b7d),
('gcdq5g43l8eiget4h60um4fgahtqk0ai', '::1', 1668063013, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383036333031333b7265646972656374696f6e7c4e3b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a22393039346161353936306365366530656338623538383161653232656538343564666237626331643839656362393163323532656631666132386333353030613334353134363964306466383838353832383165633237356661303163366137383733623234343334663037313132643263383937353333633063323062663137414f50426e466d4a725a4c53694a2f47616455666a636b5236454b79613032452f57784457417859316c79434b33343673426c41734d493576384c6a62586e5856626d4d6d656964722f71484b452f667a333553306e652f57696f6439554447337767704f534e636e76474a614b3150356d6831783266555a684433683270223b6164645f6e65775f70726f647563745f666c6173687c733a33333a2250726f64756b206261727520626572686173696c20646974616d6261686b616e21223b5f5f63695f766172737c613a313a7b733a32313a226164645f6e65775f70726f647563745f666c617368223b733a333a226f6c64223b7d),
('stevousflnvs7rfqh7f0h9o67c8ev8lp', '::1', 1668063341, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383036333334313b7265646972656374696f6e7c733a3130303a226148523063446f764c327876593246736147397a6443396e5a584a686153316f6343317a5957317a6457356e4c326c755a4756344c6e426f634339685a47317062693977636d396b64574e30637939685a475266626d563358334279623252315933513d223b6164645f6e65775f70726f647563745f666c6173687c733a33333a2250726f64756b206261727520626572686173696c20646974616d6261686b616e21223b5f5f63695f766172737c613a323a7b733a32313a226164645f6e65775f70726f647563745f666c617368223b733a333a226f6c64223b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b7d6c6f67696e5f666c6173687c733a31363a22426572686173696c206c6f676f757421223b),
('c9tsgehc78d8gjf5b12habr51pj1a97a', '::1', 1668063895, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383036333839353b7265646972656374696f6e7c733a3130303a226148523063446f764c327876593246736147397a6443396e5a584a686153316f6343317a5957317a6457356e4c326c755a4756344c6e426f634339685a47317062693977636d396b64574e30637939685a475266626d563358334279623252315933513d223b6164645f6e65775f70726f647563745f666c6173687c733a33333a2250726f64756b206261727520626572686173696c20646974616d6261686b616e21223b5f5f63695f766172737c613a323a7b733a32313a226164645f6e65775f70726f647563745f666c617368223b733a333a226f6c64223b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b7d6c6f67696e5f666c6173687c733a31363a22426572686173696c206c6f676f757421223b),
('s1fevmn14asqnkop04t919hd9poc4551', '::1', 1668064425, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383036343432353b7265646972656374696f6e7c4e3b6164645f6e65775f70726f647563745f666c6173687c733a33333a2250726f64756b206261727520626572686173696c20646974616d6261686b616e21223b5f5f63695f766172737c613a323a7b733a32313a226164645f6e65775f70726f647563745f666c617368223b733a333a226f6c64223b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b7d6c6f67696e5f666c6173687c733a31363a22426572686173696c206c6f676f757421223b),
('3rs33eghni0arejmgq52ubijoff4aso0', '::1', 1668064792, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383036343739323b7265646972656374696f6e7c4e3b6164645f6e65775f70726f647563745f666c6173687c733a33333a2250726f64756b206261727520626572686173696c20646974616d6261686b616e21223b5f5f63695f766172737c613a323a7b733a32313a226164645f6e65775f70726f647563745f666c617368223b733a333a226f6c64223b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b7d6c6f67696e5f666c6173687c733a31363a22426572686173696c206c6f676f757421223b),
('tec4uletld634jcsc9oci4jtecvlrj9b', '::1', 1668065136, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383036353133363b7265646972656374696f6e7c4e3b6164645f6e65775f70726f647563745f666c6173687c733a33333a2250726f64756b206261727520626572686173696c20646974616d6261686b616e21223b5f5f63695f766172737c613a323a7b733a32313a226164645f6e65775f70726f647563745f666c617368223b733a333a226f6c64223b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b7d6c6f67696e5f666c6173687c733a31363a22426572686173696c206c6f676f757421223b),
('47mtu13v8apgucpacn918md2k256bu2d', '::1', 1668065486, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383036353438363b7265646972656374696f6e7c4e3b6164645f6e65775f70726f647563745f666c6173687c733a33333a2250726f64756b206261727520626572686173696c20646974616d6261686b616e21223b5f5f63695f766172737c613a323a7b733a32313a226164645f6e65775f70726f647563745f666c617368223b733a333a226f6c64223b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b7d6c6f67696e5f666c6173687c733a31363a22426572686173696c206c6f676f757421223b),
('4o3jmrfb56aim5m72rngnlult45lhh42', '::1', 1668065967, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383036353936373b7265646972656374696f6e7c4e3b6164645f6e65775f70726f647563745f666c6173687c733a33333a2250726f64756b206261727520626572686173696c20646974616d6261686b616e21223b5f5f63695f766172737c613a323a7b733a32313a226164645f6e65775f70726f647563745f666c617368223b733a333a226f6c64223b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b7d6c6f67696e5f666c6173687c733a31363a22426572686173696c206c6f676f757421223b),
('g8d6d663il41abpq04o1q6lfkkv04ghu', '::1', 1668065983, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383036353936373b7265646972656374696f6e7c4e3b6164645f6e65775f70726f647563745f666c6173687c733a33333a2250726f64756b206261727520626572686173696c20646974616d6261686b616e21223b5f5f63695f766172737c613a323a7b733a32313a226164645f6e65775f70726f647563745f666c617368223b733a333a226f6c64223b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b7d6c6f67696e5f666c6173687c733a31363a22426572686173696c206c6f676f757421223b),
('ptcsaflr16r1q3tjp1nrp0qcbqbfouco', '::1', 1668157621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383135373631393b),
('kk5n7cekt33l0fbnjl3ugjco2umvvt6d', '::1', 1668170646, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383137303438363b7265646972656374696f6e7c4e3b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a22646430373664663366653932353336313034626532326533393062316130643265373931623839643263313532356139393665623364336266353064383161306336353030316166646330383663323364303764656331353366646439326164623334653037366335353663393565613636633630393464303462363435303759455447304649336566435049586a415a7856667672433569727a516a4a357352456a3938564f78386344772f5877726f7675616a573453786a695152426130616170345a42444c6b497742495953666d4b76326864413931427a4263414235385968624b706d666b6d65754c76494645796642327a6d776d56775365726d65223b),
('26h7mict0kdhdlh7k8lqui28flqp65v5', '::1', 1668171431, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383137313431393b7265646972656374696f6e7c4e3b),
('fproqhlc09bc3vmu6smmbfs8eok8861u', '::1', 1668171887, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383137313833383b7265646972656374696f6e7c4e3b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2239356466313737653335623565336338396137363733333530396562343863653965653533373637363461633739333438326130656264616234343361303338613530313838366564333462363031333435376138323337393934396235366662343564306635396636363834303164396230303436636466656132303733304b66334b384e577575484d494831314374575674594232796c553776505057713277445244424f537246323642637035634566456c6249526d6d77516663432b466e6334644d6966674b5544564c6433703837527257554d7972516a5a6b45524e33384e504964494773396b6e7952783652474c4e30514d5562306758586146223b),
('flv95nup30bbidpg35k0be3aqetphg2b', '::1', 1668172798, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383137323738353b6c6f67696e5f666c6173687c733a31373a22416e64612062656c756d206c6f67696e21223b5f5f63695f766172737c613a313a7b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b7d7265646972656374696f6e7c4e3b),
('l2a1k84hnp6j3gbrm3svfj1mlu2i4lro', '::1', 1668173939, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383137333933383b),
('77rffb0i47vamamgdc0uh4oejlr6ai61', '::1', 1668174306, 0x636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a323234393b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a223139636131346537656136333238613432653065623133643538356534633232223b613a363a7b733a323a226964223b733a323a223336223b733a333a22717479223b643a313b733a353a227072696365223b643a323234393b733a343a226e616d65223b733a32313a2253616d73756e672047616c617879204d3133203547223b733a353a22726f776964223b733a33323a223139636131346537656136333238613432653065623133643538356534633232223b733a383a22737562746f74616c223b643a323234393b7d7d5f5f63695f6c6173745f726567656e65726174657c693a313636383137343133353b7265646972656374696f6e7c4e3b6c6f67696e5f666c6173687c733a31353a2250617373776f72642073616c616821223b5f5f63695f766172737c613a323a7b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b733a31323a226f6c645f757365726e616d65223b733a333a226f6c64223b7d6f6c645f757365726e616d657c733a353a2261646d696e223b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2265666636383730326135316135313663383839663663336663306461316132353437313636643031346137636333343234643063383261383865653163373232643634356563383433623031643136666330653666373366346464626236393639373533616338663634303138613763363336626638656638666666646339384255494a4b334f714e7246496662434b4c4e326c374f73364f4348476e385575466366644d537835717568326a38374b70354c54706c6b6a36306a6e327458545a3447795a57394f4848654436594d514448383344566c3658314e47717a577978466b4e427131495a636f765a71496433306d4778436544442b62436d485376223b),
('8slqhsfgg1hevohbtkelb3t4dditaevp', '::1', 1668175196, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383137353139363b6c6f67696e5f666c6173687c733a31373a22416e64612062656c756d206c6f67696e21223b5f5f63695f766172737c613a313a7b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b7d7265646972656374696f6e7c4e3b),
('gbp25sble1mvqa0hlqkhb1r646uv0lh0', '::1', 1668175522, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383137353532323b6c6f67696e5f666c6173687c733a31373a22416e64612062656c756d206c6f67696e21223b5f5f63695f766172737c613a313a7b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b7d7265646972656374696f6e7c4e3b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2232613031393732303137306461396539613761396633396330343138346662346435653839366161633266333064353636363637316464643438373731313837393435356239366537353133636639313963623336373666326162633630353639653131653437373135353162333832323133303135333665326361663937392b434b767374496d656e3345687035664f7142506466457044746a46773546564c534a7064625a3248395a586f3873506b64384c776b754452384a6a57732f77434565566641683247676d494b4834636a2b566d624c686f3674754d4b38635a475561314e453070735461437852585071716e516d7358565969384c6c685254223b),
('7tiu6apm7p8qapa2iftf69l6fj87mvue', '::1', 1668175641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383137353532323b6c6f67696e5f666c6173687c733a31373a22416e64612062656c756d206c6f67696e21223b5f5f63695f766172737c613a313a7b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b7d7265646972656374696f6e7c4e3b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2232613031393732303137306461396539613761396633396330343138346662346435653839366161633266333064353636363637316464643438373731313837393435356239366537353133636639313963623336373666326162633630353639653131653437373135353162333832323133303135333665326361663937392b434b767374496d656e3345687035664f7142506466457044746a46773546564c534a7064625a3248395a586f3873506b64384c776b754452384a6a57732f77434565566641683247676d494b4834636a2b566d624c686f3674754d4b38635a475561314e453070735461437852585071716e516d7358565969384c6c685254223b),
('80r1ccv35gseikd37tmpdu0mdgg7or78', '::1', 1668417571, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383431373433363b),
('24588vmgt63qfq0m3lo779j85ocdd2mr', '::1', 1668420769, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383432303539313b7265646972656374696f6e7c4e3b),
('o0lm6ufan5e9fopm9hl3cb03ev18tv71', '::1', 1668520315, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383532303331353b),
('pqinkvuph9nme2ebodbme629eih7jpbp', '::1', 1668520435, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383532303331353b7265646972656374696f6e7c4e3b6c6f67696e5f666c6173687c733a31363a22426572686173696c206c6f676f757421223b5f5f63695f766172737c613a323a7b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b733a31323a226f6c645f757365726e616d65223b733a333a226f6c64223b7d6f6c645f757365726e616d657c733a353a2261646d696e223b),
('v9n384nv5v6php9kku1us965a2t3f3mi', '::1', 1668607226, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383630373232363b7265646972656374696f6e7c4e3b),
('41maihlda42htvctk7r6i7j3qef3ida7', '::1', 1668607566, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383630373536363b7265646972656374696f6e7c4e3b6c6f67696e5f666c6173687c733a31363a22426572686173696c206c6f676f757421223b5f5f63695f766172737c613a313a7b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b7d636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a323335303030303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226331366135333230666134373535333064393538336333346664333536656635223b613a363a7b733a323a226964223b733a323a223331223b733a333a22717479223b643a313b733a353a227072696365223b643a323335303030303b733a343a226e616d65223b733a31313a2253616d73756e6720413133223b733a353a22726f776964223b733a33323a226331366135333230666134373535333064393538336333346664333536656635223b733a383a22737562746f74616c223b643a323335303030303b7d7d),
('fltl6flf7ae1g22lqb934m2g3nbgafog', '::1', 1668608477, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383630383437373b7265646972656374696f6e7c4e3b6c6f67696e5f666c6173687c733a31363a22426572686173696c206c6f676f757421223b5f5f63695f766172737c613a313a7b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b7d636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a343730303030303b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a226331366135333230666134373535333064393538336333346664333536656635223b613a363a7b733a323a226964223b733a323a223331223b733a333a22717479223b643a323b733a353a227072696365223b643a323335303030303b733a343a226e616d65223b733a31313a2253616d73756e6720413133223b733a353a22726f776964223b733a33323a226331366135333230666134373535333064393538336333346664333536656635223b733a383a22737562746f74616c223b643a343730303030303b7d7d),
('rpoq33hpo2bm0qot3pfi4hva0r8qb6je', '::1', 1668608526, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383630383437373b7265646972656374696f6e7c4e3b6c6f67696e5f666c6173687c733a31363a22426572686173696c206c6f676f757421223b5f5f63695f766172737c613a313a7b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b7d636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a343730303030303b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a226331366135333230666134373535333064393538336333346664333536656635223b613a363a7b733a323a226964223b733a323a223331223b733a333a22717479223b643a323b733a353a227072696365223b643a323335303030303b733a343a226e616d65223b733a31313a2253616d73756e6720413133223b733a353a22726f776964223b733a33323a226331366135333230666134373535333064393538336333346664333536656635223b733a383a22737562746f74616c223b643a343730303030303b7d7d5f5f4143544956455f53455353494f4e5f444154417c733a3235363a226261613234643862356162393535633237656262633833666263663830393635333463353130313061613935343235356661666535386563396639656565633463393531386665383332356562653466643237326662653633656238303033316461613131383030343166353339323235356530666635636665366463343165344d33457544683866615170797a62365778384b6a764f637a684a396e564e484a557354775251675839676f383337776f314c30553179775a72454f63427a507869696c566d644f77463957486551684f754a447779415136545041776f42665779705948586d3356325649646c6150777a635a5079484e4c38553772793670223b),
('53urag7pv01del4iqnt80fi541etl0ro', '::1', 1668609251, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383630393233363b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2261323966623030613762323032373336333737353337623733653963393338303936643735646461616533376330643965316533613638396361346332623536363230666665353562613138633832376532636336356236333637323961313731353738363137653436623031633937643039376264613436316334333362384e6865392f535852683854467038635056754d6f49504a3466544e47444a6d643838397941354f4368374f612f6a31394b6d354847465375497a5265414930396d36732b7a75316c6e726d413473766a306f6e7533777a2b4f3062513264516e624976464f354a575a5347707361456a73495032444e49437273385a754f6942223b),
('82rcf9kjlk3rqdq469bh1lo3f5694s9u', '::1', 1668610061, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383631303036313b6c6f67696e5f666c6173687c733a31363a22426572686173696c206c6f676f757421223b5f5f63695f766172737c613a313a7b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b7d7265646972656374696f6e7c4e3b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a323335303030303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226331366135333230666134373535333064393538336333346664333536656635223b613a363a7b733a323a226964223b733a323a223331223b733a333a22717479223b643a313b733a353a227072696365223b643a323335303030303b733a343a226e616d65223b733a31313a2253616d73756e6720413133223b733a353a22726f776964223b733a33323a226331366135333230666134373535333064393538336333346664333536656635223b733a383a22737562746f74616c223b643a323335303030303b7d7d),
('no3c2uo4d8o6b2nd3emu9tgg76gg27j5', '::1', 1668610064, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383631303036313b6c6f67696e5f666c6173687c733a31363a22426572686173696c206c6f676f757421223b5f5f63695f766172737c613a313a7b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b7d7265646972656374696f6e7c4e3b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a323335303030303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226331366135333230666134373535333064393538336333346664333536656635223b613a363a7b733a323a226964223b733a323a223331223b733a333a22717479223b643a313b733a353a227072696365223b643a323335303030303b733a343a226e616d65223b733a31313a2253616d73756e6720413133223b733a353a22726f776964223b733a33323a226331366135333230666134373535333064393538336333346664333536656635223b733a383a22737562746f74616c223b643a323335303030303b7d7d),
('nbhkd2cou5noh5btqembl9u04al7ht79', '::1', 1668611182, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383631313138323b7265646972656374696f6e7c4e3b6c6f67696e5f666c6173687c733a31353a2250617373776f72642073616c616821223b5f5f63695f766172737c613a323a7b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b733a31323a226f6c645f757365726e616d65223b733a333a226f6c64223b7d6f6c645f757365726e616d657c733a353a2261646d696e223b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2261646466646131626362623564653633656434633565646535353163666635346438353736366538323763646665393332643132626338663361353833353335653934616339393430313561376564306239346137633936326663346563383838383932636231323465353764316530616332373131333031306537333363394d756d586e733839486f54506572376249496a3461302f552b6f4336437754583971622f667950696a38762f3265714b31477a61335170463937493844477253324b442f72486f55454b36675a54522b6863634b33616a4477465668456a386779363344545169476439564a6250534c6d4c646e78346848504375424463352b223b),
('4uuh4il5559jmc4mk02p0p7j8g3hv8bv', '::1', 1668611795, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383631313739353b7265646972656374696f6e7c4e3b6c6f67696e5f666c6173687c733a31353a2250617373776f72642073616c616821223b5f5f63695f766172737c613a323a7b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b733a31323a226f6c645f757365726e616d65223b733a333a226f6c64223b7d6f6c645f757365726e616d657c733a353a2261646d696e223b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2261646466646131626362623564653633656434633565646535353163666635346438353736366538323763646665393332643132626338663361353833353335653934616339393430313561376564306239346137633936326663346563383838383932636231323465353764316530616332373131333031306537333363394d756d586e733839486f54506572376249496a3461302f552b6f4336437754583971622f667950696a38762f3265714b31477a61335170463937493844477253324b442f72486f55454b36675a54522b6863634b33616a4477465668456a386779363344545169476439564a6250534c6d4c646e78346848504375424463352b223b),
('l8621a66djktq8ej3mdbl7k53f8sf91l', '::1', 1668611815, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383631313739353b7265646972656374696f6e7c4e3b6c6f67696e5f666c6173687c733a31353a2250617373776f72642073616c616821223b5f5f63695f766172737c613a323a7b733a31313a226c6f67696e5f666c617368223b733a333a226f6c64223b733a31323a226f6c645f757365726e616d65223b733a333a226f6c64223b7d6f6c645f757365726e616d657c733a353a2261646d696e223b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2261646466646131626362623564653633656434633565646535353163666635346438353736366538323763646665393332643132626338663361353833353335653934616339393430313561376564306239346137633936326663346563383838383932636231323465353764316530616332373131333031306537333363394d756d586e733839486f54506572376249496a3461302f552b6f4336437754583971622f667950696a38762f3265714b31477a61335170463937493844477253324b442f72486f55454b36675a54522b6863634b33616a4477465668456a386779363344545169476439564a6250534c6d4c646e78346848504375424463352b223b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a31313430303030303b733a31313a22746f74616c5f6974656d73223b643a343b733a33323a226331366135333230666134373535333064393538336333346664333536656635223b613a363a7b733a323a226964223b733a323a223331223b733a333a22717479223b643a333b733a353a227072696365223b643a323335303030303b733a343a226e616d65223b733a31313a2253616d73756e6720413133223b733a353a22726f776964223b733a33323a226331366135333230666134373535333064393538336333346664333536656635223b733a383a22737562746f74616c223b643a373035303030303b7d733a33323a223633363464336630663439356236616239646366386433623563366530623031223b613a363a7b733a323a226964223b733a323a223332223b733a333a22717479223b643a313b733a353a227072696365223b643a343335303030303b733a343a226e616d65223b733a32313a2253616d73756e672047616c61787920413233203547223b733a353a22726f776964223b733a33323a223633363464336630663439356236616239646366386433623563366530623031223b733a383a22737562746f74616c223b643a343335303030303b7d7d),
('iq6pmse5tp6ni5jk0jf47iponp7dfvql', '::1', 1668861322, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383836313331383b7265646972656374696f6e7c4e3b),
('2680lg3tnj7a7lrcuv55k0qkg27mjfvr', '::1', 1669381097, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393338313039373b),
('3q9i8m76vb42fa8mardbs7nfshsib6ob', '::1', 1669381398, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393338313339383b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a343730303030303b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a226331366135333230666134373535333064393538336333346664333536656635223b613a363a7b733a323a226964223b733a323a223331223b733a333a22717479223b643a323b733a353a227072696365223b643a323335303030303b733a343a226e616d65223b733a31313a2253616d73756e6720413133223b733a353a22726f776964223b733a33323a226331366135333230666134373535333064393538336333346664333536656635223b733a383a22737562746f74616c223b643a343730303030303b7d7d5f74656d705f636f75706f6e7c4e3b5f74656d705f7175616e746974797c613a313a7b733a33323a226331366135333230666134373535333064393538336333346664333536656635223b733a313a2231223b7d7265646972656374696f6e7c733a37363a226148523063446f764c327876593246736147397a6443396e5a584a686153316f6343317a5957317a6457356e4c326c755a4756344c6e426f6343397a614739774c324e6f5a574e7262335630223b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a22306330643939333566616266393333366665346438353834656562343636363237396231373837333765653464323335313837383232376166626636336231666362643831323365313061343537663237613062623438306666353938313336643233623966386133306562393766363633303065373163386633633730663447593075706e327338624d455972727a4c5a4664786563303852666c77744669572f6b6e6a373846326e6142303570713135563143674e554270707846534f687577524f6d58356b49784e6e323576767655364d796e507755596d495549732f387270513264303463696979624b4138674f4945573368644574733046386b6d223b73746f72655f666c6173687c733a32363a2250656e646166746172616e20616b756e20626572686173696c21223b5f5f63695f766172737c613a313a7b733a31313a2273746f72655f666c617368223b733a333a226f6c64223b7d),
('ojp7nruqkie4opforntq9uavabt2579f', '::1', 1669381492, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393338313339383b7265646972656374696f6e7c733a37363a226148523063446f764c327876593246736147397a6443396e5a584a686153316f6343317a5957317a6457356e4c326c755a4756344c6e426f6343397a614739774c324e6f5a574e7262335630223b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a22306330643939333566616266393333366665346438353834656562343636363237396231373837333765653464323335313837383232376166626636336231666362643831323365313061343537663237613062623438306666353938313336643233623966386133306562393766363633303065373163386633633730663447593075706e327338624d455972727a4c5a4664786563303852666c77744669572f6b6e6a373846326e6142303570713135563143674e554270707846534f687577524f6d58356b49784e6e323576767655364d796e507755596d495549732f387270513264303463696979624b4138674f4945573368644574733046386b6d223b73746f72655f666c6173687c733a32363a2250656e646166746172616e20616b756e20626572686173696c21223b5f5f63695f766172737c613a323a7b733a31313a2273746f72655f666c617368223b733a333a226f6c64223b733a31313a226f726465725f666c617368223b733a333a226f6c64223b7d6f726465725f666c6173687c733a32363a224f7264657220626572686173696c20646974616d6261686b616e223b),
('4ubnvsnajk5967rv282uhmng8vhp8bap', '::1', 1713530120, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333533303132303b7265646972656374696f6e7c733a39323a226148523063446f764c327876593246736147397a6443397a61473933636d39766253317462324a7062433970626d526c65433577614841765933567a644739745a584976634746356257567564484d76593239755a6d6c7962513d3d223b),
('47raumjpsbllbscmgt7iinfln6gr9mhn', '::1', 1713530161, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333533303132303b7265646972656374696f6e7c733a39323a226148523063446f764c327876593246736147397a6443397a61473933636d39766253317462324a7062433970626d526c65433577614841765933567a644739745a584976634746356257567564484d76593239755a6d6c7962513d3d223b),
('9cet1hsltdkhl0p6okmipl0mamle00rt', '::1', 1713684056, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333638343035363b7265646972656374696f6e7c4e3b),
('sasb7vtat43uk12b8fk120n641or10gt', '::1', 1713685413, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333638353431333b7265646972656374696f6e7c4e3b),
('hbm0jemank8quvv4dpg1nu8rub2l3p9v', '::1', 1713685414, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333638353431333b7265646972656374696f6e7c4e3b),
('6dgcvnloshed6enf7l3arn9gr8lcmtom', '::1', 1713697309, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333639373233323b7265646972656374696f6e7c4e3b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a226131393936653030633130336232323036323635613039646437313064323138633137663866633439663564396262313334613831663139333936303261626263616632623834333133376464353831633965653430313336353762363239343832663731386561623436613961303439616562626634373230323239666430547678554f484c7969334545724c4f586d524e325638526b376439354c336b4f644b7377513369514f3761476d58415930624d436f655054374a536b7a62637749574c35425974564a2b494a5561654c3458464f6755614d37423959713265475843384e535a367545644c6f5558356f516d525872395837726139496176616a223b),
('8g818ht3dh8snshkvaqk5saljj2hlhg3', '::1', 1714061689, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343036313638393b7265646972656374696f6e7c4e3b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a226264663832613135656566393430346233633135356265626233643464366539393463656561656465383830353661633865336335623836653166653732326463393063343665343334623266326132333533383330373538336639623632326335623231386264666165343238613030356634303135323337633966356561702b67394b792f366f6831484438446b5253795959367345795964737835724a6e395949644c766f3043763144756553566948634f426c4443706f6b45536c5947346f435974416b665778355759367a347a6a7654422f7864674975486e337a614949764f4d3465305a4c594f38566441716b3476494138567063676659436c223b),
('a86hgi62g711omjetjha60eofe5akt1c', '::1', 1714062046, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343036323034363b7265646972656374696f6e7c4e3b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a226264663832613135656566393430346233633135356265626233643464366539393463656561656465383830353661633865336335623836653166653732326463393063343665343334623266326132333533383330373538336639623632326335623231386264666165343238613030356634303135323337633966356561702b67394b792f366f6831484438446b5253795959367345795964737835724a6e395949644c766f3043763144756553566948634f426c4443706f6b45536c5947346f435974416b665778355759367a347a6a7654422f7864674975486e337a614949764f4d3465305a4c594f38566441716b3476494138567063676659436c223b),
('36vnqj5cc4fm0u448amrjrfghhiabphp', '::1', 1714062432, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343036323433323b7265646972656374696f6e7c4e3b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a226264663832613135656566393430346233633135356265626233643464366539393463656561656465383830353661633865336335623836653166653732326463393063343665343334623266326132333533383330373538336639623632326335623231386264666165343238613030356634303135323337633966356561702b67394b792f366f6831484438446b5253795959367345795964737835724a6e395949644c766f3043763144756553566948634f426c4443706f6b45536c5947346f435974416b665778355759367a347a6a7654422f7864674975486e337a614949764f4d3465305a4c594f38566441716b3476494138567063676659436c223b),
('kv1fhi2atlfuupe558qkrob7ue5fc70r', '::1', 1714062744, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343036323734343b7265646972656374696f6e7c4e3b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a226264663832613135656566393430346233633135356265626233643464366539393463656561656465383830353661633865336335623836653166653732326463393063343665343334623266326132333533383330373538336639623632326335623231386264666165343238613030356634303135323337633966356561702b67394b792f366f6831484438446b5253795959367345795964737835724a6e395949644c766f3043763144756553566948634f426c4443706f6b45536c5947346f435974416b665778355759367a347a6a7654422f7864674975486e337a614949764f4d3465305a4c594f38566441716b3476494138567063676659436c223b);
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('oegledr048j7l6dqki8v84mhqpf8rohh', '::1', 1714063240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343036333234303b7265646972656374696f6e7c4e3b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a226264663832613135656566393430346233633135356265626233643464366539393463656561656465383830353661633865336335623836653166653732326463393063343665343334623266326132333533383330373538336639623632326335623231386264666165343238613030356634303135323337633966356561702b67394b792f366f6831484438446b5253795959367345795964737835724a6e395949644c766f3043763144756553566948634f426c4443706f6b45536c5947346f435974416b665778355759367a347a6a7654422f7864674975486e337a614949764f4d3465305a4c594f38566441716b3476494138567063676659436c223b),
('r8bkot0e473m86jbtkeomgrusp675drk', '::1', 1714063765, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343036333736353b7265646972656374696f6e7c4e3b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a226264663832613135656566393430346233633135356265626233643464366539393463656561656465383830353661633865336335623836653166653732326463393063343665343334623266326132333533383330373538336639623632326335623231386264666165343238613030356634303135323337633966356561702b67394b792f366f6831484438446b5253795959367345795964737835724a6e395949644c766f3043763144756553566948634f426c4443706f6b45536c5947346f435974416b665778355759367a347a6a7654422f7864674975486e337a614949764f4d3465305a4c594f38566441716b3476494138567063676659436c223b),
('2nvnk55iel762sp3t24m9fd8pirrbif2', '::1', 1714064167, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343036343136373b7265646972656374696f6e7c4e3b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a226264663832613135656566393430346233633135356265626233643464366539393463656561656465383830353661633865336335623836653166653732326463393063343665343334623266326132333533383330373538336639623632326335623231386264666165343238613030356634303135323337633966356561702b67394b792f366f6831484438446b5253795959367345795964737835724a6e395949644c766f3043763144756553566948634f426c4443706f6b45536c5947346f435974416b665778355759367a347a6a7654422f7864674975486e337a614949764f4d3465305a4c594f38566441716b3476494138567063676659436c223b),
('svjta62tmjc74grs926elcl89qm5ldhb', '::1', 1714064558, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343036343535383b7265646972656374696f6e7c4e3b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a226264663832613135656566393430346233633135356265626233643464366539393463656561656465383830353661633865336335623836653166653732326463393063343665343334623266326132333533383330373538336639623632326335623231386264666165343238613030356634303135323337633966356561702b67394b792f366f6831484438446b5253795959367345795964737835724a6e395949644c766f3043763144756553566948634f426c4443706f6b45536c5947346f435974416b665778355759367a347a6a7654422f7864674975486e337a614949764f4d3465305a4c594f38566441716b3476494138567063676659436c223b),
('lt9c393tk295fngbj3f17s0fivhbttaf', '::1', 1714064877, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343036343837373b7265646972656374696f6e7c4e3b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2230343230643533363939363966623730663534373361666136393165363462393036363463373238323861656636366331313965613166663138313763383461376133373362613938373739663834363761646133313437343132663861396431396435666161303764646530643633373534383431346237666237303835615149505632514b634e3472497534562f466d71454557674b7356773772676343716b565846527049335244446a52352f7863327368474c782f444c716d2f4d6d72354f3242536e6e345047377231546b747843354b456b6a6c524e6b6a733054416b464a576d61356952664a5a39465649462f68537379536d71454e6b4b7152223b),
('8sdrsndd84n3p4db1vrrdvcirdni1h1e', '::1', 1714065469, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343036353436393b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2263306232626466666438626465653333333334313264353162613330373431646331396234306636376233356261383033303535346565646330383562386364303162373436636261353265353531336164653435636137626436303431306338366336326136303165613763623563376165613765613338626632363134634e31673045464e4d41646d2f2b4748434d4e38535a7a3677535332516432413032392f654c3741504b2f634a32354c782f346378496458443064564a61316e365a364d4f516e58694157626273464c534761436e41465a634a7075776a6a432b495536655471726d336e54587770672f374e4a4c4a4a59716a316f72776d6961223b),
('ukqo0ibq2fi7lkpj7fipjhhpm967qb1f', '::1', 1714065809, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343036353830393b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2263306232626466666438626465653333333334313264353162613330373431646331396234306636376233356261383033303535346565646330383562386364303162373436636261353265353531336164653435636137626436303431306338366336326136303165613763623563376165613765613338626632363134634e31673045464e4d41646d2f2b4748434d4e38535a7a3677535332516432413032392f654c3741504b2f634a32354c782f346378496458443064564a61316e365a364d4f516e58694157626273464c534761436e41465a634a7075776a6a432b495536655471726d336e54587770672f374e4a4c4a4a59716a316f72776d6961223b656469745f70726f647563745f666c6173687c733a32373a2250726f64756b20626572686173696c206469706572626172756921223b5f5f63695f766172737c613a313a7b733a31383a22656469745f70726f647563745f666c617368223b733a333a226f6c64223b7d),
('mcdqe00ot8k57tfppsb9d1dgme6utp7p', '::1', 1714066155, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343036363135353b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2263306232626466666438626465653333333334313264353162613330373431646331396234306636376233356261383033303535346565646330383562386364303162373436636261353265353531336164653435636137626436303431306338366336326136303165613763623563376165613765613338626632363134634e31673045464e4d41646d2f2b4748434d4e38535a7a3677535332516432413032392f654c3741504b2f634a32354c782f346378496458443064564a61316e365a364d4f516e58694157626273464c534761436e41465a634a7075776a6a432b495536655471726d336e54587770672f374e4a4c4a4a59716a316f72776d6961223b),
('134vm21cj7jbbj9r4f1a9c9emfkomc17', '::1', 1714066760, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343036363736303b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2263306232626466666438626465653333333334313264353162613330373431646331396234306636376233356261383033303535346565646330383562386364303162373436636261353265353531336164653435636137626436303431306338366336326136303165613763623563376165613765613338626632363134634e31673045464e4d41646d2f2b4748434d4e38535a7a3677535332516432413032392f654c3741504b2f634a32354c782f346378496458443064564a61316e365a364d4f516e58694157626273464c534761436e41465a634a7075776a6a432b495536655471726d336e54587770672f374e4a4c4a4a59716a316f72776d6961223b6164645f6e65775f70726f647563745f666c6173687c733a33333a2250726f64756b206261727520626572686173696c20646974616d6261686b616e21223b5f5f63695f766172737c613a313a7b733a32313a226164645f6e65775f70726f647563745f666c617368223b733a333a226f6c64223b7d),
('o2t3hos8fp8g3ljk16rqkoog3ttk38gc', '::1', 1714067080, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343036373038303b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2263306232626466666438626465653333333334313264353162613330373431646331396234306636376233356261383033303535346565646330383562386364303162373436636261353265353531336164653435636137626436303431306338366336326136303165613763623563376165613765613338626632363134634e31673045464e4d41646d2f2b4748434d4e38535a7a3677535332516432413032392f654c3741504b2f634a32354c782f346378496458443064564a61316e365a364d4f516e58694157626273464c534761436e41465a634a7075776a6a432b495536655471726d336e54587770672f374e4a4c4a4a59716a316f72776d6961223b6164645f6e65775f70726f647563745f666c6173687c733a33333a2250726f64756b206261727520626572686173696c20646974616d6261686b616e21223b5f5f63695f766172737c613a313a7b733a32313a226164645f6e65775f70726f647563745f666c617368223b733a333a226f6c64223b7d),
('qbokeb76k11b654p01fu2lcq0uio3l72', '::1', 1714067428, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343036373432383b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2263306232626466666438626465653333333334313264353162613330373431646331396234306636376233356261383033303535346565646330383562386364303162373436636261353265353531336164653435636137626436303431306338366336326136303165613763623563376165613765613338626632363134634e31673045464e4d41646d2f2b4748434d4e38535a7a3677535332516432413032392f654c3741504b2f634a32354c782f346378496458443064564a61316e365a364d4f516e58694157626273464c534761436e41465a634a7075776a6a432b495536655471726d336e54587770672f374e4a4c4a4a59716a316f72776d6961223b6164645f6e65775f70726f647563745f666c6173687c733a33333a2250726f64756b206261727520626572686173696c20646974616d6261686b616e21223b5f5f63695f766172737c613a313a7b733a32313a226164645f6e65775f70726f647563745f666c617368223b733a333a226f6c64223b7d),
('e2qpbe3fa7dr5p46o243fja3eai9g16t', '::1', 1714067777, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343036373737373b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2263306232626466666438626465653333333334313264353162613330373431646331396234306636376233356261383033303535346565646330383562386364303162373436636261353265353531336164653435636137626436303431306338366336326136303165613763623563376165613765613338626632363134634e31673045464e4d41646d2f2b4748434d4e38535a7a3677535332516432413032392f654c3741504b2f634a32354c782f346378496458443064564a61316e365a364d4f516e58694157626273464c534761436e41465a634a7075776a6a432b495536655471726d336e54587770672f374e4a4c4a4a59716a316f72776d6961223b),
('6b3gq08k6bcks3kakst8997b1opqi3ju', '::1', 1714068134, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343036383133343b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2263306232626466666438626465653333333334313264353162613330373431646331396234306636376233356261383033303535346565646330383562386364303162373436636261353265353531336164653435636137626436303431306338366336326136303165613763623563376165613765613338626632363134634e31673045464e4d41646d2f2b4748434d4e38535a7a3677535332516432413032392f654c3741504b2f634a32354c782f346378496458443064564a61316e365a364d4f516e58694157626273464c534761436e41465a634a7075776a6a432b495536655471726d336e54587770672f374e4a4c4a4a59716a316f72776d6961223b),
('mht6b3qokgbng19r6kqomppmrtcsn20d', '::1', 1714068481, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343036383438313b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2263306232626466666438626465653333333334313264353162613330373431646331396234306636376233356261383033303535346565646330383562386364303162373436636261353265353531336164653435636137626436303431306338366336326136303165613763623563376165613765613338626632363134634e31673045464e4d41646d2f2b4748434d4e38535a7a3677535332516432413032392f654c3741504b2f634a32354c782f346378496458443064564a61316e365a364d4f516e58694157626273464c534761436e41465a634a7075776a6a432b495536655471726d336e54587770672f374e4a4c4a4a59716a316f72776d6961223b6164645f6e65775f70726f647563745f666c6173687c733a33333a2250726f64756b206261727520626572686173696c20646974616d6261686b616e21223b5f5f63695f766172737c613a313a7b733a32313a226164645f6e65775f70726f647563745f666c617368223b733a333a226f6c64223b7d),
('i7h4pfu40hnjpeaevo54et4b08b1935i', '::1', 1714068862, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343036383836323b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2263306232626466666438626465653333333334313264353162613330373431646331396234306636376233356261383033303535346565646330383562386364303162373436636261353265353531336164653435636137626436303431306338366336326136303165613763623563376165613765613338626632363134634e31673045464e4d41646d2f2b4748434d4e38535a7a3677535332516432413032392f654c3741504b2f634a32354c782f346378496458443064564a61316e365a364d4f516e58694157626273464c534761436e41465a634a7075776a6a432b495536655471726d336e54587770672f374e4a4c4a4a59716a316f72776d6961223b6164645f6e65775f70726f647563745f666c6173687c733a33333a2250726f64756b206261727520626572686173696c20646974616d6261686b616e21223b5f5f63695f766172737c613a313a7b733a32313a226164645f6e65775f70726f647563745f666c617368223b733a333a226f6c64223b7d),
('kmecof237ln7dd44rmd7scib50ca13dp', '::1', 1714069241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343036393234313b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2263306232626466666438626465653333333334313264353162613330373431646331396234306636376233356261383033303535346565646330383562386364303162373436636261353265353531336164653435636137626436303431306338366336326136303165613763623563376165613765613338626632363134634e31673045464e4d41646d2f2b4748434d4e38535a7a3677535332516432413032392f654c3741504b2f634a32354c782f346378496458443064564a61316e365a364d4f516e58694157626273464c534761436e41465a634a7075776a6a432b495536655471726d336e54587770672f374e4a4c4a4a59716a316f72776d6961223b6164645f6e65775f70726f647563745f666c6173687c733a33333a2250726f64756b206261727520626572686173696c20646974616d6261686b616e21223b5f5f63695f766172737c613a313a7b733a32313a226164645f6e65775f70726f647563745f666c617368223b733a333a226f6c64223b7d),
('h9q5tu9g0tesb8j1q8071pllunqhlt6l', '::1', 1714069687, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343036393638373b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2263306232626466666438626465653333333334313264353162613330373431646331396234306636376233356261383033303535346565646330383562386364303162373436636261353265353531336164653435636137626436303431306338366336326136303165613763623563376165613765613338626632363134634e31673045464e4d41646d2f2b4748434d4e38535a7a3677535332516432413032392f654c3741504b2f634a32354c782f346378496458443064564a61316e365a364d4f516e58694157626273464c534761436e41465a634a7075776a6a432b495536655471726d336e54587770672f374e4a4c4a4a59716a316f72776d6961223b),
('0vc4sofc12h938tjdu2rpglh2bbab7cl', '::1', 1714070003, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343037303030333b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2263306232626466666438626465653333333334313264353162613330373431646331396234306636376233356261383033303535346565646330383562386364303162373436636261353265353531336164653435636137626436303431306338366336326136303165613763623563376165613765613338626632363134634e31673045464e4d41646d2f2b4748434d4e38535a7a3677535332516432413032392f654c3741504b2f634a32354c782f346378496458443064564a61316e365a364d4f516e58694157626273464c534761436e41465a634a7075776a6a432b495536655471726d336e54587770672f374e4a4c4a4a59716a316f72776d6961223b),
('00ku2ens8efqdcne4irabc4a3gh6so4s', '::1', 1714070375, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343037303337353b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2263306232626466666438626465653333333334313264353162613330373431646331396234306636376233356261383033303535346565646330383562386364303162373436636261353265353531336164653435636137626436303431306338366336326136303165613763623563376165613765613338626632363134634e31673045464e4d41646d2f2b4748434d4e38535a7a3677535332516432413032392f654c3741504b2f634a32354c782f346378496458443064564a61316e365a364d4f516e58694157626273464c534761436e41465a634a7075776a6a432b495536655471726d336e54587770672f374e4a4c4a4a59716a316f72776d6961223b7265646972656374696f6e7c733a39323a226148523063446f764c327876593246736147397a6443397a61473933636d39766253317462324a7062433970626d526c65433577614841765933567a644739745a584976634746356257567564484d76646d6c6c647938784d773d3d223b),
('va5nn2tj3srotia846pa2hpm8jibq6fj', '::1', 1714070713, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343037303731333b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2263306232626466666438626465653333333334313264353162613330373431646331396234306636376233356261383033303535346565646330383562386364303162373436636261353265353531336164653435636137626436303431306338366336326136303165613763623563376165613765613338626632363134634e31673045464e4d41646d2f2b4748434d4e38535a7a3677535332516432413032392f654c3741504b2f634a32354c782f346378496458443064564a61316e365a364d4f516e58694157626273464c534761436e41465a634a7075776a6a432b495536655471726d336e54587770672f374e4a4c4a4a59716a316f72776d6961223b7265646972656374696f6e7c733a39323a226148523063446f764c327876593246736147397a6443397a61473933636d39766253317462324a7062433970626d526c65433577614841765933567a644739745a584976634746356257567564484d76646d6c6c647938784d773d3d223b),
('q7uovp2tfi79p7fll653i27ser7427o3', '::1', 1714070943, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343037303731333b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2263306232626466666438626465653333333334313264353162613330373431646331396234306636376233356261383033303535346565646330383562386364303162373436636261353265353531336164653435636137626436303431306338366336326136303165613763623563376165613765613338626632363134634e31673045464e4d41646d2f2b4748434d4e38535a7a3677535332516432413032392f654c3741504b2f634a32354c782f346378496458443064564a61316e365a364d4f516e58694157626273464c534761436e41465a634a7075776a6a432b495536655471726d336e54587770672f374e4a4c4a4a59716a316f72776d6961223b7265646972656374696f6e7c733a39323a226148523063446f764c327876593246736147397a6443397a61473933636d39766253317462324a7062433970626d526c65433577614841765933567a644739745a584976634746356257567564484d76646d6c6c647938784d773d3d223b656469745f70726f647563745f666c6173687c733a32373a2250726f64756b20626572686173696c206469706572626172756921223b5f5f63695f766172737c613a313a7b733a31383a22656469745f70726f647563745f666c617368223b733a333a226f6c64223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `subject` varchar(128) DEFAULT NULL,
  `email` varchar(64) NOT NULL,
  `message` mediumtext NOT NULL,
  `contact_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `reply_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `parent_id`, `name`, `subject`, `email`, `message`, `contact_date`, `status`, `reply_at`) VALUES
(1, NULL, 'winda', 'Barangnya bagus', 'winda@gmail.com', 'Bagus dan tanpa catat', '2020-03-29 07:40:13', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) NOT NULL,
  `name` varchar(191) NOT NULL,
  `code` varchar(32) NOT NULL,
  `credit` decimal(8,2) NOT NULL,
  `start_date` date NOT NULL,
  `expired_date` date NOT NULL,
  `is_active` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `credit`, `start_date`, `expired_date`, `is_active`) VALUES
(1, '#DiRumahAja', 'DIRUMAHAJA19', '5000.00', '2020-03-27', '2020-04-03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `phone_number` varchar(32) DEFAULT NULL,
  `address` varchar(191) NOT NULL,
  `profile_picture` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `name`, `phone_number`, `address`, `profile_picture`) VALUES
(16, 18, 'Bro kenzo', '08123456789', 'tangerang', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `coupon_id` bigint(20) DEFAULT NULL,
  `order_number` varchar(16) NOT NULL,
  `order_status` enum('1','2','3','4','5') DEFAULT '1',
  `order_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `total_price` decimal(8,2) DEFAULT NULL,
  `total_items` int(10) DEFAULT NULL,
  `payment_method` int(11) DEFAULT 1,
  `delivery_data` text DEFAULT NULL,
  `delivered_date` timestamp NULL DEFAULT NULL,
  `finish_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `coupon_id`, `order_number`, `order_status`, `order_date`, `total_price`, `total_items`, `payment_method`, `delivery_data`, `delivered_date`, `finish_date`) VALUES
(1, 16, NULL, 'OAL51122116854', '1', '2022-11-05 07:42:56', '30000.00', 1, 1, '{\"customer\":{\"name\":\"fajar\",\"phone_number\":\"08128770221\",\"address\":\"fajar\"},\"note\":\"\"}', NULL, NULL),
(2, 16, NULL, 'XJD51122116702', '4', '2022-11-05 14:08:44', '35000.00', 1, 1, '{\"customer\":{\"name\":\"fajar\",\"phone_number\":\"08128770221\",\"address\":\"fajar\"},\"note\":\"ok\"}', NULL, NULL),
(4, 18, NULL, 'TLA25424118710', '2', '2024-04-26 00:09:35', '8999.00', 1, 1, '{\"customer\":{\"name\":\"Bro kenzo\",\"phone_number\":\"08123456789\",\"address\":\"tangerang\"},\"note\":\"\"}', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `order_qty` int(10) NOT NULL,
  `order_price` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`id`, `order_id`, `product_id`, `order_qty`, `order_price`) VALUES
(3, 4, 2, 1, '31000.00'),
(4, 4, 8, 13, '20000.00'),
(5, 5, 2, 1, '31000.00'),
(6, 5, 13, 12, '20000.00'),
(7, 6, 9, 10, '35000.00'),
(8, 7, 10, 1, '12000.00'),
(9, 7, 9, 1, '35000.00'),
(10, 7, 2, 1, '31000.00'),
(11, 8, 9, 1, '35000.00'),
(12, 8, 1, 5, '65000.00'),
(14, 12, 2, 1, '13000.00'),
(15, 13, 5, 3, '10000.00'),
(16, 14, 1, 3, '20000.00'),
(17, 15, 15, 1, '120000.00'),
(18, 16, 18, 1, '120000.00'),
(19, 17, 30, 1, '20000.00'),
(20, 1, 30, 1, '35000.00'),
(21, 1, 31, 1, '25000.00'),
(22, 2, 30, 1, '30000.00'),
(24, 4, 37, 1, '3999.00');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `payment_price` decimal(8,2) DEFAULT NULL,
  `payment_date` datetime NOT NULL,
  `picture_name` varchar(191) DEFAULT NULL,
  `payment_status` enum('1','2','3') DEFAULT '1',
  `confirmed_date` datetime DEFAULT NULL,
  `payment_data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `payment_price`, `payment_date`, `picture_name`, `payment_status`, `confirmed_date`, `payment_data`) VALUES
(13, 4, '999999.99', '2024-04-25 19:07:57', 'bg6.jpg', '2', NULL, '{\"transfer_to\":\"mandiri\",\"source\":{\"bank\":\"Mandiri\",\"name\":\"Bro kenzo\",\"number\":\"56789132\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `category_id` int(10) DEFAULT NULL,
  `sku` varchar(32) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `tipe` varchar(45) CHARACTER SET latin1 NOT NULL,
  `descript` text DEFAULT NULL,
  `picture_name` varchar(191) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `current_discount` decimal(8,2) DEFAULT 0.00,
  `stock` int(10) NOT NULL,
  `product_unit` varchar(32) DEFAULT NULL,
  `is_available` tinyint(1) DEFAULT 1,
  `add_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sku`, `name`, `tipe`, `descript`, `picture_name`, `price`, `current_discount`, `stock`, `product_unit`, `is_available`, `add_date`) VALUES
(36, 16, 'SGM5H27843', 'Sigra R Deluxe 1.2', '', 'Tahun 2018 \r\nKM 62\r\nWarna Hitam', NULL, 118000000, '0.00', 1, 'unit', 1, '2022-11-10 06:40:43'),
(37, 16, 'SGM5H37936', 'Ayla X MT 1.0', '', 'Tahun 2014\r\nKM 69\r\nWarna Silver', NULL, 85000000, '0.00', 1, 'unit', 1, '2022-11-10 06:42:16'),
(40, 15, 'SGAH13584', 'Brio E Satya 1.2', '', 'Tahun 2021\r\nKM 23\r\nWarna Abu - abu', NULL, 174000000, '0.00', 2, 'unit', 1, '2022-11-10 07:26:24'),
(41, 15, 'BE1A11158', 'Brio E 1.2', '', 'Tahun 2013\r\nKM 23\r\nWarna Merah', NULL, 118000000, '0.00', 1, 'unit', 1, '2024-04-25 19:29:18'),
(42, 15, 'JR1A11371', 'Jazz RS 1.5', '', 'Tahun 2010\r\nKM 140\r\nWarna Putih', NULL, 130000000, '0.00', 1, 'unit', 1, '2024-04-25 19:32:51'),
(43, 15, 'JR1A21422', 'Jazz RS 1.5', '', 'Tahun 2017\r\nKM 54\r\nWarna putih', NULL, 230000000, '0.00', 1, 'unit', 1, '2024-04-25 19:33:42'),
(44, 15, 'MR1A12760', 'Mobilio RS 1.5', '', 'Tahun 2017\r\nKM 82\r\nWarna Hitam', NULL, 175000000, '0.00', 2, 'unit', 1, '2024-04-25 19:39:20'),
(45, 15, 'CE1TA31830', 'Civic ES 1.5 Turbo', '', 'Tahun 2016\r\nKM 49\r\nWarna Hitam ', NULL, 340000000, '0.00', 1, 'unit', 1, '2024-04-25 19:40:30'),
(46, 15, 'HE1A23924', 'HRV E 1.5', '', 'Tahun 2018\r\nKM 39\r\nWarna Abu - abu ', NULL, 235000000, '0.00', 3, 'unit', 1, '2024-04-25 19:42:04'),
(47, 15, 'SL2A11007', 'Sportage LX 2.0', '', 'Tahun 2014\r\nKM 68\r\nWarna Silver', NULL, 160000000, '0.00', 1, 'unit', 1, '2024-04-25 19:43:27'),
(48, 15, 'XU1A21080', 'Xpander Ultimate 1.5', '', 'Tahun 2019\r\nKM 39\r\nWarna Silver', NULL, 232000000, '0.00', 1, 'unit', 1, '2024-04-25 19:44:40'),
(49, 15, 'AV1A12256', 'Avanza Veloz 1.5', '', 'Tahun 2016\r\nKM 85\r\nWarna Hitam', NULL, 162000000, '0.00', 2, 'unit', 1, '2024-04-25 19:47:36'),
(50, 16, 'CG1M11438', 'Calya G 1.2', '', 'Tahun 2019\r\nKM 29 \r\nWarna Silver', NULL, 135000000, '0.00', 1, 'unit', 1, '2024-04-25 19:50:38'),
(51, 16, 'IV2M31511', 'Innova V 2.4', '', 'Tahun 2017\r\nKM 72\r\nWarna Hitam', NULL, 330000000, '0.00', 1, 'unit', 1, '2024-04-25 19:51:51'),
(52, 15, 'YH1A21626', 'Yaris Heykers 1.5', '', 'Tahun 2017\r\nKM 38 \r\nWarna Hitam', NULL, 205000000, '0.00', 1, 'unit', 1, '2024-04-25 19:53:46'),
(54, 16, 'AG1M11134', 'Avanza G 1.3', '', 'Tahun 2020\r\nKM 9 \r\nWarna Putih ', NULL, 190000000, '0.00', 1, 'unit', 1, '2024-04-25 20:02:14'),
(55, 16, 'RGTD1M21219', 'Raize GR TSS Dual 1.0', '', 'Tahun 2021\r\nKM 22\r\nWarna Putih ', NULL, 235000000, '0.00', 1, 'unit', 1, '2024-04-25 20:03:39'),
(56, 15, 'CGA11278', 'Calya G', '', 'Tahun 2016\r\nKm 81\r\nWarna Silver', NULL, 116000000, '0.00', 1, 'unit', 1, '2024-04-25 20:04:38'),
(57, 15, 'VGAA11344', 'Vios G AT', '', 'Tahun 2009\r\nKM 125\r\nWarna Silver', NULL, 100000000, '0.00', 1, 'unit', 1, '2024-04-25 20:05:44'),
(58, 15, 'YSTA11422', 'Yaris S TRD', '', 'Tahun 2017\r\nKM 78 \r\nWarna Merah ', NULL, 190000000, '0.00', 1, 'unit', 1, '2024-04-25 20:07:02'),
(59, 15, 'AV1A11481', 'Avanza Veloz 1.5', '', 'Tahun 2017\r\nKM 112\r\nWarna Merah ', NULL, 165000000, '0.00', 1, 'unit', 1, '2024-04-25 20:08:01'),
(60, 15, 'SQ1A21752', 'Sienta Q 1.5', '', 'Tahun 2018\r\nKM 68\r\nWarna Coklat ', NULL, 200000000, '0.00', 1, 'unit', 1, '2024-04-25 20:12:32'),
(61, 15, 'IV2A21862', 'Innova V 2.0', '', 'Tahun 2016\r\nKM 85\r\nWarna Hitam', NULL, 260000000, '0.00', 1, 'unit', 1, '2024-04-25 20:14:22'),
(62, 15, 'SG1A11958', 'Swift GX 1.4', '', 'Tahun 2015\r\nKM 113 \r\nWarna Putih ', NULL, 135000000, '0.00', 1, 'unit', 1, '2024-04-25 20:15:58'),
(63, 16, 'FSM11090', 'Futura ST', '', 'Tahun 2019\r\nKM 45\r\nWarna Hitam', NULL, 100000000, '0.00', 1, 'unit', 1, '2024-04-25 20:18:10'),
(64, 16, 'AGM11241', 'APV GE', '', 'Tahun 2011\r\nKM 113\r\nWarna Hitam', NULL, 190000000, '0.00', 1, 'unit', 1, '2024-04-25 20:20:41'),
(65, 15, 'SPA21422', 'Stargazer Prime', '', 'Tahun 2022\r\nKM 16\r\nWarna Abu - abu', NULL, 240000000, '0.00', 1, 'unit', 1, '2024-04-25 20:23:42'),
(66, 15, 'AG1A11713', 'Agya G 1.2', '', 'Tahun 2019\r\nKM 75\r\nWarna Putih', NULL, 135000000, '0.00', 1, 'unit', 1, '2024-04-25 20:45:13');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(10) NOT NULL,
  `name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `name`) VALUES
(15, 'Automatic\r\n'),
(16, 'Manual');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `review_text` mediumtext NOT NULL,
  `review_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `order_id`, `title`, `review_text`, `review_date`, `status`) VALUES
(2, 7, 6, 'Sangat puas', 'Pengiriman cepat dan sesuai pesanan', '2020-03-30 08:31:31', 1),
(3, 7, 5, 'good', 'Mendarat dengan aman', '2020-03-30 08:33:10', 1),
(6, 11, 14, 'Toko amanah', 'Sangat Puas Dengan Pelayanan Adminnya', '2020-10-26 08:38:48', 1),
(7, 12, NULL, 'barangnya bagus', 'terima kasih barangnya datang tepat waktu', '2022-06-22 15:44:42', 1),
(8, 12, 15, 'handphone nya bagus', 'barangnya bergaransi', '2022-06-22 15:49:22', 1),
(9, 13, 16, 'Langgganan', 'sering berbelanja barangnya bagus', '2022-06-22 16:01:03', 1),
(10, 16, 2, 'Good', 'okok', '2022-11-05 08:09:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) NOT NULL,
  `role_name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`) VALUES
(1, 'Admin'),
(2, 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) NOT NULL,
  `key` varchar(32) NOT NULL,
  `content` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `content`) VALUES
(1, 'current_theme_name', 'vegefoods'),
(2, 'store_name', 'Gerai HP samsung'),
(3, 'store_phone_number', '085770942242'),
(4, 'store_email', 'muhamadroin81@gmail.com'),
(5, 'store_tagline', 'Produk resmi dan bergaransi samsung'),
(6, 'store_logo', 'Logo.png'),
(7, 'max_product_image_size', '20000'),
(8, 'store_description', 'Produk berkualitas dan terjamin'),
(9, 'store_address', 'Kelapa geding'),
(10, 'min_shop_to_free_shipping_cost', '900000'),
(11, 'shipping_cost', '5000'),
(12, 'payment_banks', '{\"mandiri\":{\"bank\":\"Mandiri\",\"number\":\"1234567890\",\"name\":\"Warung Teteh Kuningan\"},\"bca\":{\"bank\":\"BCA\",\"number\":\"0987654321\",\"name\":\"Warung Teteh Kuningan\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `username` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_picture` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(10) DEFAULT 0,
  `register_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `username`, `password`, `profile_picture`, `role_id`, `register_date`) VALUES
(7, 'Admin ', 'muhamadroin1981@gmail.com', NULL, 'admin', '$2y$10$vZFB5TAouyoG7OXCaEezx.kEPe2OE3lCq55ORSAEEZcrRyADcWxbe', '0919f092a8487492631bc84b592a4b0a_icon-wajah1.png', 1, '2020-03-29 08:14:30'),
(16, NULL, 'fajar@gmail.com', NULL, 'fajar', '$2y$10$BYbl2bh39EFrQWWayzI0I.D4AktWJMrjsYzuWJQT04rjpcyZnCbvK', NULL, 2, '2022-09-25 16:51:37'),
(18, NULL, 'kenken1234@gmail.com', NULL, 'Kenzo', '$2y$10$WUB1/yom1.M/opE9hBCE.u9bpXMM8qLbIAA4HkRMMXl0lu.NHPG7u', NULL, 2, '2024-04-25 19:04:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_contacts_contacts` (`parent_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_customers_users` (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_orders_users` (`user_id`),
  ADD KEY `FK_orders_coupons` (`coupon_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_products_product_category` (`category_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_reviews_users` (`user_id`),
  ADD KEY `FK_reviews_orders` (`order_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE,
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `FK_contacts_contacts` FOREIGN KEY (`parent_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `FK_customers_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_orders_coupons` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_orders_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
--
-- Database: `showroommobil`
--
CREATE DATABASE IF NOT EXISTS `showroommobil` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `showroommobil`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--
-- Error reading structure for table showroommobil.admin: #1932 - Table 'showroommobil.admin' doesn't exist in engine
-- Error reading data for table showroommobil.admin: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `showroommobil`.`admin`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `member`
--
-- Error reading structure for table showroommobil.member: #1932 - Table 'showroommobil.member' doesn't exist in engine
-- Error reading data for table showroommobil.member: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `showroommobil`.`member`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `merk`
--
-- Error reading structure for table showroommobil.merk: #1932 - Table 'showroommobil.merk' doesn't exist in engine
-- Error reading data for table showroommobil.merk: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `showroommobil`.`merk`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--
-- Error reading structure for table showroommobil.mobil: #1932 - Table 'showroommobil.mobil' doesn't exist in engine
-- Error reading data for table showroommobil.mobil: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `showroommobil`.`mobil`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--
-- Error reading structure for table showroommobil.pemesanan: #1932 - Table 'showroommobil.pemesanan' doesn't exist in engine
-- Error reading data for table showroommobil.pemesanan: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `showroommobil`.`pemesanan`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pemilik`
--
-- Error reading structure for table showroommobil.pemilik: #1932 - Table 'showroommobil.pemilik' doesn't exist in engine
-- Error reading data for table showroommobil.pemilik: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `showroommobil`.`pemilik`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pengiriman`
--
-- Error reading structure for table showroommobil.pengiriman: #1932 - Table 'showroommobil.pengiriman' doesn't exist in engine
-- Error reading data for table showroommobil.pengiriman: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `showroommobil`.`pengiriman`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `role`
--
-- Error reading structure for table showroommobil.role: #1932 - Table 'showroommobil.role' doesn't exist in engine
-- Error reading data for table showroommobil.role: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `showroommobil`.`role`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `spesifikasi`
--
-- Error reading structure for table showroommobil.spesifikasi: #1932 - Table 'showroommobil.spesifikasi' doesn't exist in engine
-- Error reading data for table showroommobil.spesifikasi: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `showroommobil`.`spesifikasi`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--
-- Error reading structure for table showroommobil.transaksi: #1932 - Table 'showroommobil.transaksi' doesn't exist in engine
-- Error reading data for table showroommobil.transaksi: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `showroommobil`.`transaksi`' at line 1
--
-- Database: `silaundry`
--
CREATE DATABASE IF NOT EXISTS `silaundry` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `silaundry`;

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail_transaksi` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_paket` int(11) NOT NULL,
  `jumlah` int(128) NOT NULL,
  `total` int(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_detail_transaksi`, `id_transaksi`, `id_paket`, `jumlah`, `total`) VALUES
(3, 1, 2, 3, 9000),
(4, 1, 1, 1, 5000),
(6, 3, 1, 8, 40000),
(8, 5, 2, 34, 102000),
(11, 6, 2, 5, 15000);

-- --------------------------------------------------------

--
-- Table structure for table `paket`
--

CREATE TABLE `paket` (
  `id_paket` int(11) NOT NULL,
  `nama_paket` varchar(128) NOT NULL,
  `pengerjaan` int(11) NOT NULL,
  `harga_satuan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paket`
--

INSERT INTO `paket` (`id_paket`, `nama_paket`, `pengerjaan`, `harga_satuan`) VALUES
(1, 'Paket Kilat', 2, 5000),
(2, 'Paket Biasa', 3, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(128) NOT NULL,
  `no_hp` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `no_hp`) VALUES
(1, 'Test Pelanggan', '08988122213'),
(2, 'Adnan', '0897782112'),
(3, 'andi sumar', '089928333'),
(4, 'dedi', '0989998677'),
(5, 'andi suaeb', '0898277733');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id_role` int(1) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id_role`, `role`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `status` int(1) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `catatan` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_pelanggan`, `tgl_masuk`, `tgl_selesai`, `status`, `tgl_transaksi`, `catatan`) VALUES
(1, 2, '2019-10-16', '2019-10-19', 2, '2019-10-16', 'sdsdssd'),
(3, 5, '2019-10-16', '2019-10-18', 2, '2019-10-16', 'iioo'),
(5, 4, '2019-10-17', '2019-10-20', 1, '2019-10-17', ''),
(6, 4, '2019-10-18', '2019-10-21', 1, '2019-10-18', 'fdfdf');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(128) NOT NULL,
  `id_role` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `email`, `password`, `id_role`) VALUES
(1, 'sandy', '', '$2y$10$5NiMBUQSN63G7FAm6DXbOu0buGcDmh8BP5QFjxfXkIJl4gy2KxJQO', 1),
(2, 'admin', '', '$2y$10$HS32/y6w8t2lm3ndncw9W.xvtVhzAcEpOwmXNkFxNzkbinrnz2MOS', 1),
(4, 'test3', '', '$2y$10$5tIxA1GnlbL97mvsj/QF9uIIv9WejwCGxUHGEyKbdnPT.L4q3Q1GC', 2),
(5, 'Annida Fitri', 'annidafitri@gmail.com', '$2y$10$zIuA5SraTqqylNT4TLk5F.5cGEFPu5BQKwNA4IQdbxWER6iYJc..u', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detail_transaksi`),
  ADD KEY `id_paket` (`id_paket`),
  ADD KEY `id_transaksi` (`id_transaksi`);

--
-- Indexes for table `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id_paket`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_role` (`id_role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `paket`
--
ALTER TABLE `paket`
  MODIFY `id_paket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id_role` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `detail_transaksi_ibfk_1` FOREIGN KEY (`id_paket`) REFERENCES `paket` (`id_paket`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_transaksi_ibfk_2` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `silaundy`
--
CREATE DATABASE IF NOT EXISTS `silaundy` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `silaundy`;

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail_transaksi` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_paket` int(11) NOT NULL,
  `jumlah` int(128) NOT NULL,
  `total` int(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_detail_transaksi`, `id_transaksi`, `id_paket`, `jumlah`, `total`) VALUES
(3, 1, 2, 3, 9000),
(4, 1, 1, 1, 5000),
(6, 3, 1, 8, 40000),
(8, 5, 2, 34, 102000),
(11, 6, 2, 5, 15000);

-- --------------------------------------------------------

--
-- Table structure for table `paket`
--

CREATE TABLE `paket` (
  `id_paket` int(11) NOT NULL,
  `nama_paket` varchar(128) NOT NULL,
  `pengerjaan` int(11) NOT NULL,
  `harga_satuan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paket`
--

INSERT INTO `paket` (`id_paket`, `nama_paket`, `pengerjaan`, `harga_satuan`) VALUES
(1, 'Paket Kilat', 2, 5000),
(2, 'Paket Biasa', 3, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(128) NOT NULL,
  `no_hp` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `no_hp`) VALUES
(1, 'Test Pelanggan', '08988122213'),
(2, 'Adnan', '0897782112'),
(3, 'andi sumar', '089928333'),
(4, 'dedi', '0989998677'),
(5, 'andi suaeb', '0898277733');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id_role` int(1) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id_role`, `role`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `status` int(1) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `catatan` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_pelanggan`, `tgl_masuk`, `tgl_selesai`, `status`, `tgl_transaksi`, `catatan`) VALUES
(1, 2, '2019-10-16', '2019-10-19', 2, '2019-10-16', 'sdsdssd'),
(3, 5, '2019-10-16', '2019-10-18', 2, '2019-10-16', 'iioo'),
(5, 4, '2019-10-17', '2019-10-20', 1, '2019-10-17', ''),
(6, 4, '2019-10-18', '2019-10-21', 1, '2019-10-18', 'fdfdf');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `id_role` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `id_role`) VALUES
(1, 'sandy', '$2y$10$5NiMBUQSN63G7FAm6DXbOu0buGcDmh8BP5QFjxfXkIJl4gy2KxJQO', 1),
(2, 'admin', '$2y$10$HS32/y6w8t2lm3ndncw9W.xvtVhzAcEpOwmXNkFxNzkbinrnz2MOS', 1),
(4, 'test3', '$2y$10$5tIxA1GnlbL97mvsj/QF9uIIv9WejwCGxUHGEyKbdnPT.L4q3Q1GC', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detail_transaksi`),
  ADD KEY `id_paket` (`id_paket`),
  ADD KEY `id_transaksi` (`id_transaksi`);

--
-- Indexes for table `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id_paket`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_role` (`id_role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `paket`
--
ALTER TABLE `paket`
  MODIFY `id_paket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id_role` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `detail_transaksi_ibfk_1` FOREIGN KEY (`id_paket`) REFERENCES `paket` (`id_paket`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_transaksi_ibfk_2` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
