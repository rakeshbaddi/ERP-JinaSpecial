-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 08, 2019 at 10:14 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jina`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartment`
--

CREATE TABLE IF NOT EXISTS `tbldepartment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `tbldepartment`
--

INSERT INTO `tbldepartment` (`id`, `department`) VALUES
(16, 'Production'),
(18, 'Purchase'),
(19, 'Store'),
(20, 'Sales and marketing'),
(21, 'Design'),
(22, 'Accounts');

-- --------------------------------------------------------

--
-- Table structure for table `tblgatepass`
--

CREATE TABLE IF NOT EXISTS `tblgatepass` (
  `slno` int(11) NOT NULL AUTO_INCREMENT,
  `pasno` int(11) NOT NULL,
  `pass_date` date NOT NULL,
  `to` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `qty` double NOT NULL,
  `type` varchar(100) NOT NULL,
  `received` varchar(50) NOT NULL,
  `recvd_qty` int(11) NOT NULL,
  `recvd_date` date NOT NULL,
  PRIMARY KEY (`slno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `tblgatepass`
--

INSERT INTO `tblgatepass` (`slno`, `pasno`, `pass_date`, `to`, `unit`, `item`, `qty`, `type`, `received`, `recvd_qty`, `recvd_date`) VALUES
(1, 1, '2029-12-17', 'abc', 'Ltrs', 'DropPin', 3, 'Material', 'YES', 3, '2018-01-25'),
(2, 2, '2029-12-17', 'abc', 'Ltrs', 'Machine', 3, 'Material', 'YES', 3, '2018-01-25'),
(3, 2, '2029-12-17', 'abc', 'Ltrs', 'Machine', 3, 'Material', 'YES', 3, '2018-01-25'),
(4, 3, '2029-12-17', 'ee', 'Ltrs', 'fff', 5, 'Material', 'YES', 5, '2018-01-25'),
(5, 4, '2029-12-17', 'vaibhav', 'Gms', 'Wind', 1, 'Material', 'YES', 1, '2018-01-25'),
(6, 5, '2029-12-17', 'bhushan', 'Ltrs', 'xyz', 2, 'Material', 'YES', 2, '2018-01-25'),
(7, 6, '2029-12-17', 'hh', 'Ltrs', 'h', 6, 'Material', 'YES', 6, '2018-01-25'),
(8, 6, '2029-12-17', 'hh', 'Ltrs', 'hhhh', 6, 'Material', 'YES', 6, '2025-01-18'),
(9, 7, '2029-12-17', 'Vaibhav', 'Gms', 'Fire alaram', 10, 'Material', 'YES', 10, '2018-01-25'),
(10, 7, '2029-12-17', 'Vaibhav', 'Gms', 'Fire alaram', 10, 'Material', 'YES', 10, '2018-01-25'),
(11, 8, '2025-01-18', 'Bhushan', 'Nos', 'Nut', 100, 'Material', 'NO', 0, '2018-01-25'),
(12, 9, '2018-05-01', 'jack', 'Ltrs', 'screwdriver', 5, 'Material', 'YES', 5, '2018-05-05'),
(13, 10, '2018-05-04', 'Prakash', 'Ltrs', 'screwdriver', 2, 'Material', 'NO', 0, '2018-05-05'),
(14, 10, '2018-05-04', 'Suresh', 'Nos', 'Drill', 1, 'Material', 'YES', 1, '2018-05-04'),
(15, 10, '2018-05-04', 'Ramesh', 'Nos', 'Screw', 5, 'Material', 'YES', 5, '2018-05-04'),
(16, 10, '2018-05-04', 'Prabha', 'Ltrs', 'Nut', 2, 'Material', 'YES', 2, '2018-05-09'),
(17, 10, '2018-05-04', 'Prabha', 'Ltrs', 'Nut', 2, 'Material', 'YES', 2, '2018-05-09'),
(18, 10, '2018-05-04', 'abc', 'Kgs', 'Drop pin', 1, 'Machine', 'NO', 0, '2018-05-04'),
(19, 11, '2018-05-04', 'abcd', 'Ltrs', 'screwdriver', 1, 'Machine', 'NO', 0, '2018-05-04'),
(20, 12, '2018-05-09', 'Pandya', 'Ltrs', 'Screw', 100, 'Material', 'NO', 0, '2018-05-09'),
(21, 12, '2018-05-09', 'Pandya', 'Ltrs', 'Screw', 100, 'Material', 'NO', 0, '2018-05-09');

-- --------------------------------------------------------

--
-- Table structure for table `tblgrr`
--

CREATE TABLE IF NOT EXISTS `tblgrr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grrno` varchar(100) NOT NULL,
  `recpt_date` varchar(100) NOT NULL,
  `pono` varchar(50) NOT NULL,
  `podate` varchar(100) NOT NULL,
  `supp_name` varchar(100) NOT NULL,
  `item_desc` varchar(150) NOT NULL,
  `inv_no` varchar(50) NOT NULL,
  `inv_date` varchar(100) NOT NULL,
  `inv_qty` varchar(100) NOT NULL,
  `item_price` varchar(100) NOT NULL,
  `revd_qty` varchar(50) NOT NULL,
  `dcno` varchar(50) NOT NULL,
  `rejctd_qty` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=162 ;

--
-- Dumping data for table `tblgrr`
--

INSERT INTO `tblgrr` (`id`, `grrno`, `recpt_date`, `pono`, `podate`, `supp_name`, `item_desc`, `inv_no`, `inv_date`, `inv_qty`, `item_price`, `revd_qty`, `dcno`, `rejctd_qty`) VALUES
(142, '7', '2018-05-01', '6', '2018-05-01', 'Prabhanjan', 'screwdriver', '100', '2018-05-01', '50', '40', '25', '101', '0'),
(143, '7', '2018-05-01', '6', '2018-05-01', 'Prabhanjan', 'screwdriver', '135', '2018-05-01', '50', '40', '10', '101', '0'),
(144, '7', '2018-05-01', '6', '2018-05-01', 'Prabhanjan', 'screwdriver', '136', '2018-05-01', '50', '40', '15', '101', '0'),
(145, '13', '2018-05-04', '12', '2018-05-04', 'Naveen Enterprises', 'Steel wire', '5544', '2018-05-04', '40', '100', '30', '1515', '0'),
(146, '8', '2018-05-04', '12', '2018-05-04', 'Naveen Enterprises', 'Steel bar', '5544', '2018-05-04', '40', '150', '20', '1515', '0'),
(147, '7', '2016-05-05', '13', '2016-05-05', 'Naveen Enterprises', 'screwdriver', '21', '2016-05-05', '10', '40', '10', '53', '0'),
(148, '8', '2016-05-05', '13', '2016-05-05', 'Naveen Enterprises', 'Steel bar', '21', '2016-05-05', '10', '150', '35', '53', '0'),
(149, '9', '2016-05-05', '13', '2016-05-05', 'Naveen Enterprises', 'Screw', '21', '2016-05-05', '10', '2', '60', '53', '0'),
(150, '10', '2016-05-05', '13', '2016-05-05', 'Naveen Enterprises', 'Drill', '21', '2016-05-05', '10', '500', '20', '53', '0'),
(151, '11', '2016-05-05', '13', '2016-05-05', 'Naveen Enterprises', 'Nut', '21', '2016-05-05', '10', '5', '10', '53', '0'),
(152, '13', '2016-05-05', '13', '2016-05-05', 'Naveen Enterprises', 'Steel wire', '21', '2016-05-05', '10', '100', '46', '53', '0'),
(153, '7', '2017-05-05', '14', '2017-05-05', 'JK steels', 'screwdriver', '89', '2017-05-05', '10', '40', '10', '85', '0'),
(154, '8', '2017-05-05', '14', '2017-05-05', 'JK steels', 'Steel bar', '89', '2017-05-05', '10', '150', '45', '85', '0'),
(155, '9', '2017-05-05', '14', '2017-05-05', 'JK steels', 'Screw', '89', '2017-05-05', '10', '2', '25', '85', '0'),
(156, '10', '2017-05-05', '14', '2017-05-05', 'JK steels', 'Drill', '89', '2017-05-05', '10', '500', '23', '85', '0'),
(157, '11', '2017-05-05', '14', '2017-05-05', 'JK steels', 'Nut', '89', '2017-05-05', '10', '5', '85', '85', '0'),
(158, '13', '2017-05-05', '14', '2017-05-05', 'JK steels', 'Steel wire', '89', '2017-05-05', '10', '100', '60', '85', '0'),
(159, '14', '2017-05-05', '14', '2017-05-05', 'JK steels', 'Bolt', '89', '2017-05-05', '10', '10', '85', '85', '0'),
(160, '7', '2018-05-05', '15', '2018-05-05', 'Tata steel works', 'screwdriver', '45', '2018-05-05', '50', '40', '40', '0', '0'),
(161, '11', '2018-04-30', '4', '2018-04-30', 'Smith', 'Nut', '125', '2018-05-09', '10', '5', '5', '65', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tblitem`
--

CREATE TABLE IF NOT EXISTS `tblitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grrno` varchar(100) NOT NULL,
  `itemname` varchar(200) NOT NULL,
  `description` varchar(250) NOT NULL,
  `rate` double NOT NULL,
  `hsn` varchar(100) NOT NULL,
  `dept` varchar(150) NOT NULL,
  `min_order_level` double NOT NULL,
  `max_order_level` double NOT NULL,
  `uom` varchar(50) NOT NULL,
  `tax` float NOT NULL,
  `rack` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `grrno` (`grrno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `tblitem`
--

INSERT INTO `tblitem` (`id`, `grrno`, `itemname`, `description`, `rate`, `hsn`, `dept`, `min_order_level`, `max_order_level`, `uom`, `tax`, `rack`) VALUES
(7, '7', 'screwdriver', '4mm', 40, '15638', 'Production', 10, 100, 'Nos', 5, 'Rack 10'),
(8, '8', 'Steel bar', '10mm in diameter', 150, '33161', 'Production', 10, 100, 'Nos', 5, 'Rack 5'),
(9, '9', 'Screw', '3mm ', 2, '34567', 'Purchase', 500, 1000, 'Nos', 5, 'Rack 10'),
(10, '10', 'Drill', '20mm', 500, '56234', 'Store', 1, 100, 'Nos', 5, 'Rack 2'),
(11, '11', 'Nut', '5mm', 5, '56324', 'Production', 10, 1000, 'Nos', 5, 'Rack 3'),
(13, '13', 'Steel wire', '20mm', 100, '87562', 'Production', 5, 100, 'Nos', 12, 'Rack 6'),
(14, '14', 'Bolt', '5mm', 10, '45689', 'Store', 10, 100, 'Nos', 18, 'Rack 7'),
(15, '15', 'Fire Alarm', '20mm X 10mm	', 125, '86945', 'Production', 5, 18, 'Nos', 12, 'Rack 7');

-- --------------------------------------------------------

--
-- Table structure for table `tblitemrecv`
--

CREATE TABLE IF NOT EXISTS `tblitemrecv` (
  `srno` int(11) NOT NULL AUTO_INCREMENT,
  `from` varchar(100) NOT NULL,
  `to` varchar(100) NOT NULL,
  `rsno` int(11) NOT NULL,
  `rsdate` varchar(100) NOT NULL,
  `itemname` varchar(200) NOT NULL,
  `returnqty` double NOT NULL,
  PRIMARY KEY (`srno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `tblitemrecv`
--

INSERT INTO `tblitemrecv` (`srno`, `from`, `to`, `rsno`, `rsdate`, `itemname`, `returnqty`) VALUES
(1, 'Store', 'marketing', 1, '5/1/18', 'DropPin 4mm 3ft', 2),
(2, 'Store', 'marketing', 1, '5/1/18', 'DropPin 4mm 3ft', 2),
(3, 'Store', 'marketing', 1, '5/1/18', 'DropPin 4mm 3ft', 4),
(4, 'Store', 'marketing', 2, '5/1/18', 'DropPin 4mm 3ft', 3),
(5, 'Store', 'marketing', 1, '5/1/18', 'DropPin 4mm 3ft', 1),
(6, 'Store', 'jk', 3, '5/1/18', 'screwdriver 4mm', 4),
(7, 'Store', 'jk', 3, '5/1/18', 'screwdriver 4mm', 2),
(8, 'Store', 'kli', 5, '5/1/18', 'screwdriver', 5),
(9, 'Store', 'kli', 5, '5/1/18', 'screwdriver', 5),
(10, 'Store', 'kli', 5, '5/1/18', 'screwdriver', 15),
(11, 'Store', 'jack', 7, '5/3/18', 'screwdriver', 5),
(12, 'Store', 'Production', 10, '5/4/18', 'Steel wire', 15),
(13, 'Store', 'Production', 9, '5/4/18', 'Steel bar', 2),
(14, 'Store', 'production', 13, '5/5/18', 'screwdriver', 2),
(15, 'Store', 'production', 12, '5/5/18', 'Steel bar', 1),
(16, 'Store', 'Rana', 4, '5/9/18', 'screwdriver 4mm', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tblitemreport`
--

CREATE TABLE IF NOT EXISTS `tblitemreport` (
  `name` varchar(100) NOT NULL,
  `date1` varchar(100) NOT NULL,
  `date2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblitemreport`
--

INSERT INTO `tblitemreport` (`name`, `date1`, `date2`) VALUES
('Nut', '2018-1-03', '2018-1-04');

-- --------------------------------------------------------

--
-- Table structure for table `tbljob`
--

CREATE TABLE IF NOT EXISTS `tbljob` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jobid` int(11) NOT NULL,
  `itemname` varchar(200) NOT NULL,
  `suppliername` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `hsn` varchar(100) NOT NULL,
  `taxtype` varchar(100) NOT NULL,
  `tax` double NOT NULL,
  `itemtype` varchar(200) NOT NULL,
  `amount` double NOT NULL,
  `qty` double NOT NULL,
  `total` double NOT NULL,
  `received` varchar(100) NOT NULL,
  `recvd_qty` double NOT NULL,
  `recvd_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `tbljob`
--

INSERT INTO `tbljob` (`id`, `jobid`, `itemname`, `suppliername`, `date`, `hsn`, `taxtype`, `tax`, `itemtype`, `amount`, `qty`, `total`, `received`, `recvd_qty`, `recvd_date`) VALUES
(1, 1, 'Drill Machine', 'Vaibhav', '2017-01-18', '12345', 'SGST/CGST', 5, 'Machine', 100, 10, 2100, 'NO', 0, '2018-01-03'),
(2, 1, 'Pumping', 'Vaibhav', '2017-01-18', '12345', 'SGST/CGST', 5, 'Machine', 100, 10, 2100, 'NO', 0, '2018-01-03'),
(3, 3, 'Grinding wheel', 'Vijay', '2017-01-18', '123456', 'SGST/CGST', 12, 'Machine', 100, 10, 1330, 'NO', 0, '2018-01-03'),
(4, 3, 'Drill Machine', 'Vijay', '2017-01-18', '123456', 'SGST/CGST', 5, 'Machine', 200, 1, 1330, 'NO', 0, '2018-01-04'),
(5, 5, 'Drill Machine', 'Vinay', '2020-01-18', '5', 'SGST/CGST', 5, 'Machine', 45, 5, 236.25, 'YES', 5, '2018-01-26'),
(6, 6, 'Drill Machine', 'Vaibhav', '2026-01-18', '123456', 'SGST/CGST', 5, 'Machine', 100, 5, 525, 'NO', 0, '2026-01-18'),
(7, 6, 'Drill Machine', 'Vaibhav', '2026-01-18', '123456', 'SGST/CGST', 5, 'Machine', 100, 5, 525, 'NO', 0, '2026-01-18'),
(8, 8, 'Grinding wheel', 'Vinay', '2026-01-18', '12345', 'SGST/CGST', 5, 'Machine', 100, 45, 4725, 'NO', 0, '2026-01-18'),
(23, 9, 'Pumping', 'Vijay', '2026-01-18', '09876', 'SGST/CGST', 12, 'Machine', 10, 5, 112, 'NO', 0, '2026-01-18'),
(24, 9, 'Drill Machine', 'Vijay', '2026-01-18', '098767', 'SGST/CGST', 12, 'Machine', 10, 5, 112, 'NO', 0, '2026-01-18'),
(25, 25, 'Pumping', 'Vinay', '2026-01-18', '34567', 'SGST/CGST', 12, 'Machine', 10, 2, 470.4, 'NO', 0, '2026-01-18'),
(26, 25, 'Pumping', 'Vinay', '2026-01-18', '34567', 'SGST/CGST', 12, 'Machine', 100, 4, 470.4, 'NO', 0, '2026-01-18'),
(27, 27, 'Pumping', 'Vijay', '2026-01-18', '4567', 'SGST/CGST', 5, 'Machine', 10, 6, 63, 'NO', 0, '2026-01-18'),
(28, 28, 'Drill Machine', 'Vaibhav', '2018-05-01', '45896', 'SGST/CGST', 5, 'Machine', 4000, 5, 21000, 'NO', 0, '2018-05-01'),
(29, 29, 'SteelBar', 'JK steel', '2018-05-04', '879564123', 'SGST/CGST', 5, 'Machine', 8000, 2, 16800, 'NO', 0, '2018-05-04'),
(30, 30, 'Drill Machine', 'Vinay', '2018-05-04', '55695', 'SGST/CGST', 5, 'Machine', 200, 5, 1050, 'NO', 0, '2018-05-04'),
(31, 31, 'Pumping', 'Vinay', '2018-05-09', '264', 'SGST/CGST', 5, 'Machine', 500, 1, 525, 'NO', 0, '2018-05-09');

-- --------------------------------------------------------

--
-- Table structure for table `tblmake`
--

CREATE TABLE IF NOT EXISTS `tblmake` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `make` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tblmake`
--

INSERT INTO `tblmake` (`id`, `make`) VALUES
(5, 'Finolex'),
(6, 'Bharat steels'),
(7, 'HM products'),
(8, 'Reliance'),
(9, 'Castrol oils'),
(10, 'SAIL India');

-- --------------------------------------------------------

--
-- Table structure for table `tblpredict`
--

CREATE TABLE IF NOT EXISTS `tblpredict` (
  `year` int(11) NOT NULL,
  `item` varchar(50) NOT NULL,
  `qty` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpredict`
--

INSERT INTO `tblpredict` (`year`, `item`, `qty`) VALUES
(2016, 'screwdriver', 10),
(2016, 'Steel bar', 35),
(2016, 'Screw', 60),
(2016, 'Drill', 20),
(2016, 'Nut', 10),
(2016, 'Drop pin', 45),
(2016, 'Steel wire', 46),
(2017, 'screwdriver', 10),
(2017, 'Steel bar', 45),
(2017, 'Screw', 25),
(2017, 'Drill', 23),
(2017, 'Nut', 85),
(2017, 'Drop pin', 45),
(2017, 'Steel wire', 60),
(2017, 'Bolt', 85),
(2018, 'Nut', 20),
(2018, 'Nut', 10),
(2018, 'Nut', 10),
(2018, 'Nut', 10),
(2018, 'Nut', 10),
(2018, 'DropPin', 20),
(2018, 'screwdriver', 50),
(2018, 'Drill', 10),
(2018, 'Steel bar', 60),
(2018, 'Drop pin', 50),
(2018, 'Steel wire', 50),
(2018, 'Drop pin', 50),
(2018, 'Steel wire', 50),
(2018, 'Screw', 5),
(2018, 'Steel bar', 65),
(2018, 'Drop pin', 40),
(2018, 'Steel wire', 30),
(2018, 'Steel bar', 20),
(2018, 'Drop pin', 40),
(2018, 'Steel wire', 30),
(2018, 'Steel bar', 20),
(2018, 'screwdriver', 50),
(2018, 'Drop pin', 50),
(2018, 'Steel wire', 50),
(2018, 'Drop pin', 50),
(2018, 'Steel wire', 50),
(2018, 'Screw', 5),
(2016, 'Nut', 20),
(2016, 'DropPin', 10),
(2017, 'Nut', 10),
(2017, 'DropPin', 0),
(2017, 'Screw', 10),
(2018, 'Nut', 20);

-- --------------------------------------------------------

--
-- Table structure for table `tblpurchaseorder`
--

CREATE TABLE IF NOT EXISTS `tblpurchaseorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pono` int(11) NOT NULL,
  `refno` varchar(100) NOT NULL,
  `refdate` date NOT NULL,
  `podate` date NOT NULL,
  `name` varchar(250) NOT NULL,
  `totaldis` double NOT NULL,
  `totaltax` float NOT NULL,
  `taxtype` varchar(100) NOT NULL,
  `gt` double NOT NULL,
  `delv_date` date NOT NULL,
  `pack_cost` varchar(100) NOT NULL,
  `transp_cost` varchar(100) NOT NULL,
  `payment_terms` varchar(100) NOT NULL,
  `grrno` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `tblpurchaseorder`
--

INSERT INTO `tblpurchaseorder` (`id`, `pono`, `refno`, `refdate`, `podate`, `name`, `totaldis`, `totaltax`, `taxtype`, `gt`, `delv_date`, `pack_cost`, `transp_cost`, `payment_terms`, `grrno`) VALUES
(7, 1, '1', '2010-02-18', '2010-02-18', 'Smith', 28, 122, 'SGST', 846, '2010-02-18', '1', '1', 'cash', 1),
(9, 3, '123', '2018-04-20', '2018-04-20', 'Smith', 0, 259.2, 'SGST/CGST', 1699.2, '2018-04-20', '100', '250', '-', 3),
(10, 4, '2', '2018-04-30', '2018-04-30', 'Smith', 0, 129.6, 'SGST/CGST', 849.6, '2018-04-30', '0', '0', '0', 4),
(11, 4, '2', '2018-04-30', '2018-04-30', 'Smith', 0, 129.6, 'SGST/CGST', 849.6, '2018-04-30', '0', '0', '0', 4),
(12, 5, '6', '2018-05-01', '2018-05-01', 'Smith', 0, 50, 'SGST/CGST', 1050, '2018-05-01', '0', '0', 'l', 5),
(13, 6, '8', '2018-05-01', '2018-05-01', 'Prabhanjan', 0, 100, 'IGST', 2100, '2018-05-01', '80', '100', 'cash', 6),
(14, 7, '9', '2018-05-01', '2018-05-01', 'Prabhanjan', 0, 144, 'SGST/CGST', 1344, '2018-05-01', '50', '100', 'cash', 7),
(15, 8, '12', '2018-05-04', '2018-05-04', 'Tata steel works', 0, 450, 'SGST/CGST', 9450, '2018-05-04', '200', '50', 'Cheque', 8),
(17, 10, '8569', '2018-05-04', '2018-05-04', 'Ashok Iron Works', 0, 725, 'SGST/CGST', 8225, '2018-05-04', '100', '600', 'Cash', 10),
(18, 11, '78956', '2018-05-04', '2018-05-04', 'JK steels', 5, 463.125, 'SGST/CGST', 9725.625, '2018-05-04', '50', '800', 'cash', 11),
(19, 12, '754', '2018-05-04', '2018-05-04', 'Naveen Enterprises', 0, 460, 'SGST/CGST', 5460, '2018-05-04', '50', '600', 'Cheque', 12),
(20, 12, '754', '2018-05-04', '2018-05-04', 'Amit Ferro Works', 0, 150, 'SGST/CGST', 3150, '2018-05-04', '50', '800', 'Cheque', 12),
(21, 2, '3', '0005-04-18', '0005-04-18', 'Tata steel works', 0, 317, 'IIGST', 3017, '0005-04-18', '', '', '', 2),
(22, 13, '42', '2016-05-05', '2016-05-05', 'Naveen Enterprises', 55, 1191.25, 'SGST/CGST', 20186.25, '2016-05-05', '50', '25', 'cash', 13),
(23, 14, '25', '2017-05-05', '2017-05-05', 'JK steels', 0, 1941.75, 'IGST', 30166.75, '2017-05-05', '0', '0', 'cheque', 14),
(24, 15, '45', '2018-05-05', '2018-05-05', 'Tata steel works', 0, 100, 'SGST/CGST', 2100, '2018-05-05', '50', '500', 'cash', 15),
(25, 10, '8569', '2018-05-09', '2018-05-09', 'Ashok Iron Works', 0, 725.5, 'SGST/CGST', 8235.5, '2018-05-09', '100', '800', 'Cash', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tblpurchaseorderdetails`
--

CREATE TABLE IF NOT EXISTS `tblpurchaseorderdetails` (
  `pono` int(11) NOT NULL,
  `item_code` varchar(100) NOT NULL,
  `itemname` varchar(200) NOT NULL,
  `uom` varchar(20) NOT NULL,
  `qty` float NOT NULL,
  `rate` double NOT NULL,
  `amount` double NOT NULL,
  `taxrate` double NOT NULL,
  `taxamt` double NOT NULL,
  `disper` double NOT NULL,
  `pendqty` double NOT NULL,
  `make` varchar(200) NOT NULL,
  `grrno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpurchaseorderdetails`
--

INSERT INTO `tblpurchaseorderdetails` (`pono`, `item_code`, `itemname`, `uom`, `qty`, `rate`, `amount`, `taxrate`, `taxamt`, `disper`, `pendqty`, `make`, `grrno`) VALUES
(1, 'D23', 'Nut', 'Kgs', 10, 70, 826, 18, 126, 0, 0, 'coco', 1),
(1, '7Yu', 'DropPin', 'Nos', 0, 50, 0, 5, 0, 18, 0, 'abc xyz', 1),
(1, 'H67', 'Screw', 'Gms', 10, 2, 21, 5, 1, 0, 10, 'abc xyz', 1),
(3, 'D23', 'Nut', 'Kgs', 20, 72, 1699.2, 18, 259.2, 0, 20, 'coco', 3),
(4, 'D23', 'Nut', 'Kgs', 10, 72, 849.6, 18, 129.6, 0, 10, 'coco', 4),
(4, 'D23', 'Nut', 'Kgs', 10, 72, 849.6, 18, 129.6, 0, 10, 'coco', 4),
(5, '7Yu', 'DropPin', 'Nos', 20, 50, 1050, 5, 50, 0, 5, 'coco', 5),
(6, '7', 'screwdriver', 'Nos', 50, 40, 2100, 5, 100, 0, 0, 'vega', 6),
(7, 'abc234', 'Drill', 'Nos', 10, 120, 1344, 12, 144, 0, 10, 'abc xyz', 7),
(8, '8', 'Steel bar', 'Nos', 60, 150, 9450, 5, 450, 0, 60, 'Bharat steels', 8),
(10, '12', 'Drop pin', 'Nos', 50, 50, 2625, 5, 125, 0, 5, 'Reliance', 10),
(10, '13', 'Steel wire', 'Nos', 50, 100, 5600, 12, 600, 0, 50, 'Reliance', 10),
(11, '8', 'Steel bar', 'Nos', 65, 150, 9725.625, 5, 463.125, 5, 65, 'Finolex', 11),
(12, '12', 'Drop pin', 'Nos', 40, 50, 2100, 5, 100, 0, 0, 'HM products', 12),
(12, '13', 'Steel wire', 'Nos', 30, 100, 3360, 12, 360, 0, 0, 'HM products', 12),
(12, '8', 'Steel bar', 'Nos', 20, 150, 3150, 5, 150, 0, 0, 'Bharat steels', 12),
(2, 'D23', 'Nut', 'Kgs', 20, 70, 1652, 18, 252, 0, 20, 'coco', 2),
(2, '7Yu', 'DropPin', 'Nos', 10, 50, 525, 5, 25, 0, 10, 'coco', 2),
(2, '7', 'screwdriver', 'Nos', 20, 40, 840, 5, 40, 0, 20, '--Select Make--', 2),
(13, '7', 'screwdriver', 'Nos', 10, 40, 420, 5, 20, 0, 0, 'Reliance', 13),
(13, '8', 'Steel bar', 'Nos', 35, 150, 4961.25, 5, 236.25, 10, 0, 'Finolex', 13),
(13, '9', 'Screw', 'Nos', 60, 2, 126, 5, 6, 0, 0, 'Castrol oils', 13),
(13, '10', 'Drill', 'Nos', 20, 500, 8400, 5, 400, 20, 0, 'SAIL India', 13),
(13, '11', 'Nut', 'Nos', 10, 5, 52.5, 5, 2.5, 0, 0, 'Bharat steels', 13),
(13, '12', 'Drop pin', 'Nos', 45, 50, 2362.5, 5, 112.5, 0, 0, 'Reliance', 13),
(13, '13', 'Steel wire', 'Nos', 46, 100, 3864, 12, 414, 25, 0, 'Reliance', 13),
(14, '7', 'screwdriver', 'Nos', 10, 40, 420, 5, 20, 0, 0, 'Finolex', 14),
(14, '8', 'Steel bar', 'Nos', 45, 150, 7087.5, 5, 337.5, 0, 0, 'Finolex', 14),
(14, '9', 'Screw', 'Nos', 25, 2, 52.5, 5, 2.5, 0, 0, 'Bharat steels', 14),
(14, '10', 'Drill', 'Nos', 23, 500, 12075, 5, 575, 0, 0, 'Reliance', 14),
(14, '11', 'Nut', 'Nos', 85, 5, 446.25, 5, 21.25, 0, 0, 'Reliance', 14),
(14, '12', 'Drop pin', 'Nos', 45, 50, 2362.5, 5, 112.5, 0, 0, 'Castrol oils', 14),
(14, '13', 'Steel wire', 'Nos', 60, 100, 6720, 12, 720, 0, 0, 'Castrol oils', 14),
(14, '14', 'Bolt', 'Nos', 85, 10, 1003, 18, 153, 0, 0, 'Castrol oils', 14),
(15, '7', 'screwdriver', 'Nos', 50, 40, 2100, 5, 100, 0, 10, 'Finolex', 15),
(10, '12', 'Drop pin', 'Nos', 50, 50, 2625, 5, 125, 0, 50, 'Reliance', 10),
(10, '13', 'Steel wire', 'Nos', 50, 100, 5600, 12, 600, 0, 50, 'Reliance', 10),
(10, '9', 'Screw', 'Nos', 5, 2, 10.5, 5, 0.5, 0, 5, 'HM products', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tblreceived`
--

CREATE TABLE IF NOT EXISTS `tblreceived` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invno` varchar(50) NOT NULL,
  `invdate` date NOT NULL,
  `pono` int(11) NOT NULL,
  `itemname` varchar(100) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `recvdqty` int(11) NOT NULL,
  `dcno` varchar(50) NOT NULL,
  `rejctd_qty` varchar(100) NOT NULL,
  `grrno` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `tblreceived`
--

INSERT INTO `tblreceived` (`id`, `invno`, `invdate`, `pono`, `itemname`, `unit`, `recvdqty`, `dcno`, `rejctd_qty`, `grrno`) VALUES
(5, '100', '2018-05-01', 6, 'screwdriver', 'Nos', 25, '101', '0', 6),
(6, '135', '2018-05-01', 6, 'screwdriver', 'Nos', 10, '101', '0', 6),
(7, '136', '2018-05-01', 6, 'screwdriver', 'Nos', 15, '101', '0', 6),
(8, '56', '2018-05-01', 5, 'DropPin', 'Nos', 10, '12', '0', 5),
(9, '21', '2018-05-03', 5, 'DropPin', 'Nos', 5, '12', '0', 5),
(10, '85', '2018-05-04', 9, 'Screw', 'Nos', 50, '56', '0', 9),
(11, '85', '2018-05-04', 9, 'Drill', 'Nos', 2, '56', '0', 9),
(12, '9856', '2018-05-04', 10, 'Drop pin', 'Nos', 40, '85', '0', 10),
(13, '5544', '2018-05-04', 12, 'Drop pin', 'Nos', 40, '1515', '0', 12),
(14, '5544', '2018-05-04', 12, 'Steel wire', 'Nos', 30, '1515', '0', 12),
(15, '5544', '2018-05-04', 12, 'Steel bar', 'Nos', 20, '1515', '0', 12),
(16, '21', '2016-05-05', 13, 'screwdriver', 'Nos', 10, '53', '0', 13),
(17, '21', '2016-05-05', 13, 'Steel bar', 'Nos', 35, '53', '0', 13),
(18, '21', '2016-05-05', 13, 'Screw', 'Nos', 60, '53', '0', 13),
(19, '21', '2016-05-05', 13, 'Drill', 'Nos', 20, '53', '0', 13),
(20, '21', '2016-05-05', 13, 'Nut', 'Nos', 10, '53', '0', 13),
(21, '21', '2016-05-05', 13, 'Drop pin', 'Nos', 45, '53', '0', 13),
(22, '21', '2016-05-05', 13, 'Steel wire', 'Nos', 46, '53', '0', 13),
(23, '89', '2017-05-05', 14, 'screwdriver', 'Nos', 10, '85', '0', 14),
(24, '89', '2017-05-05', 14, 'Steel bar', 'Nos', 45, '85', '0', 14),
(25, '89', '2017-05-05', 14, 'Screw', 'Nos', 25, '85', '0', 14),
(26, '89', '2017-05-05', 14, 'Drill', 'Nos', 23, '85', '0', 14),
(27, '89', '2017-05-05', 14, 'Nut', 'Nos', 85, '85', '0', 14),
(28, '89', '2017-05-05', 14, 'Drop pin', 'Nos', 45, '85', '0', 14),
(29, '89', '2017-05-05', 14, 'Steel wire', 'Nos', 60, '85', '0', 14),
(30, '89', '2017-05-05', 14, 'Bolt', 'Nos', 85, '85', '0', 14),
(31, '45', '2018-05-05', 15, 'screwdriver', 'Nos', 40, '0', '0', 15),
(32, '25', '2018-05-08', 10, 'Drop pin', 'Nos', 5, '85', '0', 10),
(33, '125', '2018-05-09', 4, 'Nut', 'Kgs', 5, '65', '0', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tblreq`
--

CREATE TABLE IF NOT EXISTS `tblreq` (
  `srno` int(11) NOT NULL AUTO_INCREMENT,
  `from` varchar(100) NOT NULL,
  `to` varchar(100) NOT NULL,
  `rsno` int(11) NOT NULL,
  `rsdate` varchar(100) NOT NULL,
  `itemname` varchar(200) NOT NULL,
  `issuedqty` double NOT NULL,
  `remarks` varchar(100) NOT NULL,
  PRIMARY KEY (`srno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `tblreq`
--

INSERT INTO `tblreq` (`srno`, `from`, `to`, `rsno`, `rsdate`, `itemname`, `issuedqty`, `remarks`) VALUES
(1, 'Store', 'marketing', 1, '2018-5-01', 'DropPin 4mm 3ft', 10, 'l'),
(2, 'Store', 'marketing', 2, '2018-5-01', 'DropPin 4mm 3ft', 5, 'l'),
(3, 'Store', 'jk', 3, '2018-5-01', 'screwdriver 4mm', 5, ''),
(4, 'Store', 'abc', 4, '2018-5-01', 'screwdriver 4mm', 10, 'gg'),
(5, 'Store', 'kli', 5, '2018-5-01', 'screwdriver', 25, 'lkl'),
(6, 'Store', 'mark', 6, '2018-5-01', 'screwdriver', 5, ''),
(7, 'Store', 'jack', 7, '2018-5-03', 'screwdriver', 10, 'l'),
(8, 'Store', 'marketing', 8, '2018-5-03', 'screwdriver', 5, 'h'),
(9, 'Store', 'Production', 9, '2018-5-04', 'Steel bar', 10, 'Old stock'),
(10, 'Store', 'Production', 10, '2018-5-04', 'Steel wire', 30, 'New stock'),
(11, 'Store', 'Kiran', 11, '2018-5-04', 'screwdriver', 40, 'on demand'),
(12, 'Store', 'production', 12, '2018-5-05', 'Steel bar', 5, 'on demand'),
(13, 'Store', 'production', 12, '2018-5-05', 'Steel bar', 5, 'on demand'),
(14, 'Store', 'production', 13, '2018-5-05', 'screwdriver', 5, 'oD'),
(15, 'Store', 'Production', 14, '2018-5-09', 'Nut', 25, 'Priority');

-- --------------------------------------------------------

--
-- Table structure for table `tblstock`
--

CREATE TABLE IF NOT EXISTS `tblstock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemname` varchar(100) NOT NULL,
  `total_qty` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tblstock`
--

INSERT INTO `tblstock` (`id`, `itemname`, `total_qty`) VALUES
(2, 'screwdriver', 50),
(3, 'DropPin', 15),
(4, 'Screw', 25),
(5, 'Drill', 23),
(6, 'Drop pin', 50),
(7, 'Steel wire', 60),
(8, 'Steel bar', 45),
(9, 'Nut', 65),
(10, 'Bolt', 85);

-- --------------------------------------------------------

--
-- Table structure for table `tblstockdatewise`
--

CREATE TABLE IF NOT EXISTS `tblstockdatewise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemname` varchar(100) NOT NULL,
  `total_qty` double NOT NULL,
  `stock_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=259 ;

--
-- Dumping data for table `tblstockdatewise`
--

INSERT INTO `tblstockdatewise` (`id`, `itemname`, `total_qty`, `stock_date`) VALUES
(1, 'Nut', 85, '2018-01-29'),
(2, 'Screw', 25, '2018-01-29'),
(3, 'screwdriver', 10, '2018-05-01'),
(4, 'screwdriver', 10, '2018-05-01'),
(5, 'screwdriver', 10, '2018-05-01'),
(6, 'screwdriver', 10, '2018-05-01'),
(7, 'DropPin', 10, '2018-05-01'),
(8, 'screwdriver', 10, '2018-05-01'),
(9, 'DropPin', 10, '2018-05-01'),
(10, 'screwdriver', 10, '2018-05-01'),
(11, 'DropPin', 10, '2018-05-01'),
(12, 'screwdriver', 10, '2018-05-01'),
(13, 'DropPin', 10, '2018-05-01'),
(14, 'screwdriver', 10, '2018-05-01'),
(15, 'DropPin', 10, '2018-05-01'),
(16, 'screwdriver', 10, '2018-05-01'),
(17, 'DropPin', 10, '2018-05-01'),
(18, 'screwdriver', 10, '2018-05-01'),
(19, 'DropPin', 10, '2018-05-01'),
(20, 'screwdriver', 10, '2018-05-01'),
(21, 'DropPin', 10, '2018-05-01'),
(22, 'screwdriver', 10, '2018-05-01'),
(23, 'DropPin', 10, '2018-05-01'),
(24, 'screwdriver', 10, '2018-05-03'),
(25, 'DropPin', 10, '2018-05-03'),
(26, 'screwdriver', 10, '2018-05-03'),
(27, 'DropPin', 10, '2018-05-03'),
(28, 'screwdriver', 10, '2018-05-03'),
(29, 'DropPin', 10, '2018-05-03'),
(30, 'screwdriver', 10, '2018-05-04'),
(31, 'DropPin', 15, '2018-05-04'),
(32, 'screwdriver', 10, '2018-05-04'),
(33, 'DropPin', 15, '2018-05-04'),
(34, 'screwdriver', 10, '2018-05-04'),
(35, 'DropPin', 15, '2018-05-04'),
(36, 'Screw', 25, '2018-05-04'),
(37, 'Drill', 23, '2018-05-04'),
(38, 'screwdriver', 10, '2018-05-04'),
(39, 'DropPin', 15, '2018-05-04'),
(40, 'Screw', 25, '2018-05-04'),
(41, 'Drill', 23, '2018-05-04'),
(42, 'Drop pin', 45, '2018-05-04'),
(43, 'Steel wire', 60, '2018-05-04'),
(44, 'Steel bar', 45, '2018-05-04'),
(45, 'screwdriver', 10, '2018-05-04'),
(46, 'DropPin', 15, '2018-05-04'),
(47, 'Screw', 25, '2018-05-04'),
(48, 'Drill', 23, '2018-05-04'),
(49, 'Drop pin', 45, '2018-05-04'),
(50, 'Steel wire', 60, '2018-05-04'),
(51, 'Steel bar', 45, '2018-05-04'),
(52, 'screwdriver', 10, '2018-05-04'),
(53, 'DropPin', 15, '2018-05-04'),
(54, 'Screw', 25, '2018-05-04'),
(55, 'Drill', 23, '2018-05-04'),
(56, 'Drop pin', 45, '2018-05-04'),
(57, 'Steel wire', 60, '2018-05-04'),
(58, 'Steel bar', 45, '2018-05-04'),
(59, 'screwdriver', 10, '2018-05-04'),
(60, 'DropPin', 15, '2018-05-04'),
(61, 'Screw', 25, '2018-05-04'),
(62, 'Drill', 23, '2018-05-04'),
(63, 'Drop pin', 45, '2018-05-04'),
(64, 'Steel wire', 60, '2018-05-04'),
(65, 'Steel bar', 45, '2018-05-04'),
(66, 'screwdriver', 10, '2018-05-04'),
(67, 'DropPin', 15, '2018-05-04'),
(68, 'Screw', 25, '2018-05-04'),
(69, 'Drill', 23, '2018-05-04'),
(70, 'Drop pin', 45, '2018-05-04'),
(71, 'Steel wire', 60, '2018-05-04'),
(72, 'Steel bar', 45, '2018-05-04'),
(73, 'screwdriver', 10, '2018-05-04'),
(74, 'DropPin', 15, '2018-05-04'),
(75, 'Screw', 25, '2018-05-04'),
(76, 'Drill', 23, '2018-05-04'),
(77, 'Drop pin', 45, '2018-05-04'),
(78, 'Steel wire', 60, '2018-05-04'),
(79, 'Steel bar', 45, '2018-05-04'),
(80, 'screwdriver', 10, '2018-05-04'),
(81, 'DropPin', 15, '2018-05-04'),
(82, 'Screw', 25, '2018-05-04'),
(83, 'Drill', 23, '2018-05-04'),
(84, 'Drop pin', 45, '2018-05-04'),
(85, 'Steel wire', 60, '2018-05-04'),
(86, 'Steel bar', 45, '2018-05-04'),
(87, 'screwdriver', 10, '2018-05-04'),
(88, 'DropPin', 15, '2018-05-04'),
(89, 'Screw', 25, '2018-05-04'),
(90, 'Drill', 23, '2018-05-04'),
(91, 'Drop pin', 45, '2018-05-04'),
(92, 'Steel wire', 60, '2018-05-04'),
(93, 'Steel bar', 45, '2018-05-04'),
(94, 'screwdriver', 10, '2018-05-04'),
(95, 'DropPin', 15, '2018-05-04'),
(96, 'Screw', 25, '2018-05-04'),
(97, 'Drill', 23, '2018-05-04'),
(98, 'Drop pin', 45, '2018-05-04'),
(99, 'Steel wire', 60, '2018-05-04'),
(100, 'Steel bar', 45, '2018-05-04'),
(101, 'screwdriver', 10, '2018-05-04'),
(102, 'DropPin', 15, '2018-05-04'),
(103, 'Screw', 25, '2018-05-04'),
(104, 'Drill', 23, '2018-05-04'),
(105, 'Drop pin', 45, '2018-05-04'),
(106, 'Steel wire', 60, '2018-05-04'),
(107, 'Steel bar', 45, '2018-05-04'),
(108, 'screwdriver', 10, '2018-05-04'),
(109, 'DropPin', 15, '2018-05-04'),
(110, 'Screw', 25, '2018-05-04'),
(111, 'Drill', 23, '2018-05-04'),
(112, 'Drop pin', 45, '2018-05-04'),
(113, 'Steel wire', 60, '2018-05-04'),
(114, 'Steel bar', 45, '2018-05-04'),
(115, 'screwdriver', 10, '2018-05-05'),
(116, 'DropPin', 15, '2018-05-05'),
(117, 'Screw', 25, '2018-05-05'),
(118, 'Drill', 23, '2018-05-05'),
(119, 'Drop pin', 45, '2018-05-05'),
(120, 'Steel wire', 60, '2018-05-05'),
(121, 'Steel bar', 45, '2018-05-05'),
(122, 'screwdriver', 10, '2018-05-05'),
(123, 'DropPin', 15, '2018-05-05'),
(124, 'Screw', 25, '2018-05-05'),
(125, 'Drill', 23, '2018-05-05'),
(126, 'Drop pin', 45, '2018-05-05'),
(127, 'Steel wire', 60, '2018-05-05'),
(128, 'Steel bar', 45, '2018-05-05'),
(129, 'screwdriver', 10, '2018-05-05'),
(130, 'DropPin', 15, '2018-05-05'),
(131, 'Screw', 25, '2018-05-05'),
(132, 'Drill', 23, '2018-05-05'),
(133, 'Drop pin', 45, '2018-05-05'),
(134, 'Steel wire', 60, '2018-05-05'),
(135, 'Steel bar', 45, '2018-05-05'),
(136, 'screwdriver', 10, '2018-05-05'),
(137, 'DropPin', 15, '2018-05-05'),
(138, 'Screw', 25, '2018-05-05'),
(139, 'Drill', 23, '2018-05-05'),
(140, 'Drop pin', 45, '2018-05-05'),
(141, 'Steel wire', 60, '2018-05-05'),
(142, 'Steel bar', 45, '2018-05-05'),
(143, 'screwdriver', 10, '2018-05-05'),
(144, 'DropPin', 15, '2018-05-05'),
(145, 'Screw', 25, '2018-05-05'),
(146, 'Drill', 23, '2018-05-05'),
(147, 'Drop pin', 45, '2018-05-05'),
(148, 'Steel wire', 60, '2018-05-05'),
(149, 'Steel bar', 45, '2018-05-05'),
(150, 'screwdriver', 10, '2018-05-05'),
(151, 'DropPin', 15, '2018-05-05'),
(152, 'Screw', 25, '2018-05-05'),
(153, 'Drill', 23, '2018-05-05'),
(154, 'Drop pin', 45, '2018-05-05'),
(155, 'Steel wire', 60, '2018-05-05'),
(156, 'Steel bar', 45, '2018-05-05'),
(157, 'screwdriver', 10, '2018-05-05'),
(158, 'DropPin', 15, '2018-05-05'),
(159, 'Screw', 25, '2018-05-05'),
(160, 'Drill', 23, '2018-05-05'),
(161, 'Drop pin', 45, '2018-05-05'),
(162, 'Steel wire', 60, '2018-05-05'),
(163, 'Steel bar', 45, '2018-05-05'),
(164, 'screwdriver', 10, '2018-05-05'),
(165, 'DropPin', 15, '2018-05-05'),
(166, 'Screw', 25, '2018-05-05'),
(167, 'Drill', 23, '2018-05-05'),
(168, 'Drop pin', 45, '2018-05-05'),
(169, 'Steel wire', 60, '2018-05-05'),
(170, 'Steel bar', 45, '2018-05-05'),
(171, 'screwdriver', 10, '2018-05-05'),
(172, 'DropPin', 15, '2018-05-05'),
(173, 'Screw', 25, '2018-05-05'),
(174, 'Drill', 23, '2018-05-05'),
(175, 'Drop pin', 45, '2018-05-05'),
(176, 'Steel wire', 60, '2018-05-05'),
(177, 'Steel bar', 45, '2018-05-05'),
(178, 'screwdriver', 10, '2018-05-05'),
(179, 'DropPin', 15, '2018-05-05'),
(180, 'Screw', 25, '2018-05-05'),
(181, 'Drill', 23, '2018-05-05'),
(182, 'Drop pin', 45, '2018-05-05'),
(183, 'Steel wire', 60, '2018-05-05'),
(184, 'Steel bar', 45, '2018-05-05'),
(185, 'Nut', 85, '2016-05-05'),
(186, 'Bolt', 85, '2017-05-05'),
(187, 'screwdriver', 10, '2018-05-05'),
(188, 'DropPin', 15, '2018-05-05'),
(189, 'Screw', 25, '2018-05-05'),
(190, 'Drill', 23, '2018-05-05'),
(191, 'Drop pin', 45, '2018-05-05'),
(192, 'Steel wire', 60, '2018-05-05'),
(193, 'Steel bar', 45, '2018-05-05'),
(194, 'Nut', 85, '2018-05-05'),
(195, 'Bolt', 85, '2018-05-05'),
(196, 'screwdriver', 10, '2018-05-05'),
(197, 'DropPin', 15, '2018-05-05'),
(198, 'Screw', 25, '2018-05-05'),
(199, 'Drill', 23, '2018-05-05'),
(200, 'Drop pin', 45, '2018-05-05'),
(201, 'Steel wire', 60, '2018-05-05'),
(202, 'Steel bar', 45, '2018-05-05'),
(203, 'Nut', 85, '2018-05-05'),
(204, 'Bolt', 85, '2018-05-05'),
(205, 'screwdriver', 10, '2018-05-05'),
(206, 'DropPin', 15, '2018-05-05'),
(207, 'Screw', 25, '2018-05-05'),
(208, 'Drill', 23, '2018-05-05'),
(209, 'Drop pin', 45, '2018-05-05'),
(210, 'Steel wire', 60, '2018-05-05'),
(211, 'Steel bar', 45, '2018-05-05'),
(212, 'Nut', 85, '2018-05-05'),
(213, 'Bolt', 85, '2018-05-05'),
(214, 'screwdriver', 50, '2018-05-05'),
(215, 'DropPin', 15, '2018-05-05'),
(216, 'Screw', 25, '2018-05-05'),
(217, 'Drill', 23, '2018-05-05'),
(218, 'Drop pin', 45, '2018-05-05'),
(219, 'Steel wire', 60, '2018-05-05'),
(220, 'Steel bar', 45, '2018-05-05'),
(221, 'Nut', 85, '2018-05-05'),
(222, 'Bolt', 85, '2018-05-05'),
(223, 'screwdriver', 50, '2018-05-08'),
(224, 'DropPin', 15, '2018-05-08'),
(225, 'Screw', 25, '2018-05-08'),
(226, 'Drill', 23, '2018-05-08'),
(227, 'Drop pin', 45, '2018-05-08'),
(228, 'Steel wire', 60, '2018-05-08'),
(229, 'Steel bar', 45, '2018-05-08'),
(230, 'Nut', 85, '2018-05-08'),
(231, 'Bolt', 85, '2018-05-08'),
(232, 'screwdriver', 50, '2018-05-08'),
(233, 'DropPin', 15, '2018-05-08'),
(234, 'Screw', 25, '2018-05-08'),
(235, 'Drill', 23, '2018-05-08'),
(236, 'Drop pin', 45, '2018-05-08'),
(237, 'Steel wire', 60, '2018-05-08'),
(238, 'Steel bar', 45, '2018-05-08'),
(239, 'Nut', 85, '2018-05-08'),
(240, 'Bolt', 85, '2018-05-08'),
(241, 'screwdriver', 50, '2018-05-09'),
(242, 'DropPin', 15, '2018-05-09'),
(243, 'Screw', 25, '2018-05-09'),
(244, 'Drill', 23, '2018-05-09'),
(245, 'Drop pin', 50, '2018-05-09'),
(246, 'Steel wire', 60, '2018-05-09'),
(247, 'Steel bar', 45, '2018-05-09'),
(248, 'Nut', 85, '2018-05-09'),
(249, 'Bolt', 85, '2018-05-09'),
(250, 'screwdriver', 50, '2018-05-09'),
(251, 'DropPin', 15, '2018-05-09'),
(252, 'Screw', 25, '2018-05-09'),
(253, 'Drill', 23, '2018-05-09'),
(254, 'Drop pin', 50, '2018-05-09'),
(255, 'Steel wire', 60, '2018-05-09'),
(256, 'Steel bar', 45, '2018-05-09'),
(257, 'Nut', 65, '2018-05-09'),
(258, 'Bolt', 85, '2018-05-09');

-- --------------------------------------------------------

--
-- Table structure for table `tblsupplier`
--

CREATE TABLE IF NOT EXISTS `tblsupplier` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `ph` varchar(25) DEFAULT NULL,
  `mob` varchar(29) DEFAULT NULL,
  `email` varchar(34) DEFAULT NULL,
  `fax` varchar(13) DEFAULT NULL,
  `pan` varchar(12) DEFAULT NULL,
  `gstno` varchar(100) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `pin` varchar(25) DEFAULT NULL,
  `country` varchar(25) DEFAULT NULL,
  `bank_name` varchar(150) NOT NULL,
  `bank_branch` varchar(200) NOT NULL,
  `bank_city` varchar(150) NOT NULL,
  `acc_num` varchar(60) NOT NULL,
  `ifsc_code` varchar(35) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tblsupplier`
--

INSERT INTO `tblsupplier` (`id`, `code`, `name`, `ph`, `mob`, `email`, `fax`, `pan`, `gstno`, `address`, `city`, `state`, `pin`, `country`, `bank_name`, `bank_branch`, `bank_city`, `acc_num`, `ifsc_code`) VALUES
(2, 'JS501', 'Tata steel works', '08314202842', '9087162354', 'smith@gmail.com', '859674', 'AOPPC64N', 'AO798656', '2nd Cross Udyambag', 'Belgaum', 'Karnataka', '590005', 'India', 'SBI', 'Udyambag', 'Belgaum', '67839765', 'SBI00011'),
(7, 'JS502', 'JK steels', '4202842', '9880917783', 'jk2098@gmail.com', '459678', 'AOPBG6H9', 'AO5609876', 'Industrial area,Hubli	', 'Belgaum', 'Karnataka', '590001', 'india', 'IDBI', 'IAG Road', 'Hubli', '12345678', 'IBKL0090'),
(8, 'JS503', 'Naveen Enterprises', '0831254789', '8956237845', 'pb@gmail.com', '452391', 'AD58969', 'AO7456622', 'KP road, Mumbai', 'Panvel', 'Maharashtra', '895623', 'india', 'SVC', 'KP road', 'Panvel', '4578961236', 'SVCB1096'),
(9, 'JS504', 'Amit Ferro Works', '0837124569', '8595663671', 'amit@gmail.com', '457966', 'RG859674', 'HU85963478', 'Katraj, Pune', 'Pune', 'Maharashtra', '569874', 'India', 'Canara', 'SPM road', 'Pune', '78451236', 'CAN859674'),
(10, 'JS505', 'Ashok Iron Works', '0831885878', '8904301551', 'ashokiron@gmail.com', '562893', 'RK849563', 'TO8597496', 'Delhi', 'Delhi', 'Delhi', '895623', 'India', 'Ratnakar ', 'MG road', 'Delhi', '785923641', 'RTK8596124');

-- --------------------------------------------------------

--
-- Table structure for table `tblsupplierreport`
--

CREATE TABLE IF NOT EXISTS `tblsupplierreport` (
  `name` varchar(100) NOT NULL,
  `date1` varchar(100) NOT NULL,
  `date2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsupplierreport`
--

INSERT INTO `tblsupplierreport` (`name`, `date1`, `date2`) VALUES
('JK steels', '2018-5-01', '2018-5-09');

-- --------------------------------------------------------

--
-- Table structure for table `tblunit`
--

CREATE TABLE IF NOT EXISTS `tblunit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tblunit`
--

INSERT INTO `tblunit` (`id`, `unit`) VALUES
(1, 'Ltrs'),
(2, 'Kgs'),
(3, 'Gms'),
(4, 'Nos');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE IF NOT EXISTS `tbluser` (
  `User_name` varchar(20) NOT NULL,
  `User_Password` varchar(20) NOT NULL,
  `User_Type` varchar(20) NOT NULL,
  `User_Active` varchar(10) NOT NULL,
  PRIMARY KEY (`User_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`User_name`, `User_Password`, `User_Type`, `User_Active`) VALUES
('admin', 'admin', 'Admin', 'YES'),
('kiran', '12345', 'Admin', 'NO'),
('rakesh', '12345', 'Admin', 'NO'),
('spoorti', 'spoorti', 'Admin', 'YES');
