-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2018 at 01:25 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `invoice`
--

-- --------------------------------------------------------

--
-- Table structure for table `inv_order`
--

CREATE TABLE `inv_order` (
  `order_id` int(11) NOT NULL,
  `order_no` varchar(50) NOT NULL,
  `order_date` date NOT NULL,
  `order_receiver_name` varchar(250) NOT NULL,
  `order_receiver_address` text NOT NULL,
  `order_total_before_tax` decimal(10,0) NOT NULL,
  `order_total_tax1` decimal(10,0) NOT NULL,
  `order_total_tax2` decimal(10,0) NOT NULL,
  `order_total_tax3` decimal(10,0) NOT NULL,
  `order_total_tax` decimal(10,0) NOT NULL,
  `order_total_after_tax` int(11) NOT NULL,
  `order_datetime` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_order`
--

INSERT INTO `inv_order` (`order_id`, `order_no`, `order_date`, `order_receiver_name`, `order_receiver_address`, `order_total_before_tax`, `order_total_tax1`, `order_total_tax2`, `order_total_tax3`, `order_total_tax`, `order_total_after_tax`, `order_datetime`) VALUES
(1, '435345', '2018-04-23', 'Daniel Boye', 'Accra-Ghana', '45000', '450', '900', '1350', '2700', 47700, 1512615875),
(2, '325323', '2017-09-12', 'Wilfred Andy', 'Waterside, 13 Okesuna Street, Lagos Island', '95000', '2850', '1900', '1900', '6650', 101650, 1512612986),
(4, '098643', '2017-05-23', 'Zayn Malik', 'Lagos Island, Lagos - Nigeria', '62000', '1860', '0', '0', '1860', 63860, 1512656879),
(5, '534922', '2018-02-28', 'Samuel Dickons', '34, Cresent Avenue, Festac - Ojo, Lagos, Nigeria', '34000', '340', '340', '340', '1020', 35020, 1521646498),
(6, '634322', '2017-06-14', 'Gift Scheles', 'Wisconsin Lane, New Jersey, USA', '61000', '610', '1220', '1220', '3050', 64050, 1521646594),
(9, '685485', '2018-04-04', 'Cisse Musa', 'Winfoods Ltd, 13 Okesuna, Lagos Island.', '4200', '42', '42', '42', '126', 4326, 1524744678),
(8, '324326', '2018-03-21', 'Suleiman', 'Okesuna Street', '33200', '332', '332', '332', '996', 34196, 1521707702);

-- --------------------------------------------------------

--
-- Table structure for table `inv_order_item`
--

CREATE TABLE `inv_order_item` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `order_item_quantity` decimal(10,0) NOT NULL,
  `order_item_price` decimal(10,0) NOT NULL,
  `order_item_actual_amount` decimal(10,0) NOT NULL,
  `order_item_tax1_rate` decimal(10,0) NOT NULL,
  `order_item_tax1_amount` decimal(10,0) NOT NULL,
  `order_item_tax2_rate` decimal(10,0) NOT NULL,
  `order_item_tax2_amount` decimal(10,0) NOT NULL,
  `order_item_tax3_rate` decimal(10,0) NOT NULL,
  `order_item_tax3_amount` decimal(10,0) NOT NULL,
  `order_item_final_amount` decimal(10,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_order_item`
--

INSERT INTO `inv_order_item` (`order_item_id`, `order_id`, `item_name`, `order_item_quantity`, `order_item_price`, `order_item_actual_amount`, `order_item_tax1_rate`, `order_item_tax1_amount`, `order_item_tax2_rate`, `order_item_tax2_amount`, `order_item_tax3_rate`, `order_item_tax3_amount`, `order_item_final_amount`) VALUES
(1, 1, 'Infinix Note 3', '1', '45000', '45000', '1', '450', '2', '900', '3', '1350', '47700'),
(3, 2, 'LG Sound System', '1', '95000', '95000', '3', '2850', '2', '1900', '2', '1900', '101650'),
(4, 4, 'Hublo Wrist Watch', '1', '62000', '62000', '3', '1860', '0', '0', '0', '0', '63860'),
(5, 6, 'Infinix Note 4', '1', '61000', '61000', '1', '610', '2', '1220', '2', '1220', '64050'),
(2, 5, 'Small Gasoline Generator', '1', '34000', '34000', '1', '340', '1', '340', '1', '340', '35020'),
(6, 8, 'Infinix Note 4', '1', '33200', '33200', '1', '332', '1', '332', '1', '332', '34196'),
(7, 9, 'Gucci bag', '1', '2500', '2500', '1', '25', '1', '25', '1', '25', '2575'),
(8, 9, 'Tote Handbag', '1', '1700', '1700', '1', '17', '1', '17', '1', '17', '1751');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inv_order`
--
ALTER TABLE `inv_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `inv_order_item`
--
ALTER TABLE `inv_order_item`
  ADD PRIMARY KEY (`order_item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inv_order`
--
ALTER TABLE `inv_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `inv_order_item`
--
ALTER TABLE `inv_order_item`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
