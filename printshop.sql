-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2020 at 01:49 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `printshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cart_id` int(11) NOT NULL,
  `customerid` int(11) NOT NULL,
  `insertdate` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(1) NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cart_id`, `customerid`, `insertdate`, `status`) VALUES
(2, 3, '2020-04-05', 'O'),
(3, 3, '2020-04-06', 'O'),
(6, 3, '2020-05-07', 'O'),
(7, 3, '2020-05-07', 'O'),
(8, 3, '2020-06-03', 'O'),
(9, 3, '2020-06-04', 'O'),
(10, 13, '2020-06-05', 'O'),
(12, 3, '2020-06-12', 'O');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cartdetails`
--

CREATE TABLE `tbl_cartdetails` (
  `cd_id` int(11) NOT NULL,
  `designid` int(11) NOT NULL,
  `cartid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `totalprice` int(11) NOT NULL,
  `printdetailsid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cartdetails`
--

INSERT INTO `tbl_cartdetails` (`cd_id`, `designid`, `cartid`, `quantity`, `totalprice`, `printdetailsid`) VALUES
(1, 13, 2, 8, 40, 1),
(6, 16, 2, 6, 30, 3),
(7, 17, 3, 30, 150, 4),
(9, 29, 6, 100, 800, 6),
(16, 30, 7, 1, 800, 7),
(17, 19, 7, 6, 3000, 8),
(18, 34, 8, 24, 168, 9),
(19, 34, 9, 20, 140, 10),
(20, 34, 10, 8, 56, 11),
(21, 40, 12, 1, 1800, 12);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `c_id` int(11) NOT NULL,
  `categoryname` varchar(30) NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT 'A',
  `insertdate` date NOT NULL DEFAULT current_timestamp(),
  `modifydate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`c_id`, `categoryname`, `status`, `insertdate`, `modifydate`) VALUES
(1, 'VISITING CARD', 'A', '2020-02-25', '2020-03-01'),
(3, 'TAG', 'A', '2020-02-25', '2020-02-28'),
(4, 'INVITATION CARD', 'D', '2020-02-25', '2020-02-25'),
(5, 'ENVELOPER', 'A', '2020-02-25', '2020-02-25'),
(6, 'I-CARD ', 'A', '2020-02-26', '2020-02-26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_design`
--

CREATE TABLE `tbl_design` (
  `design_id` int(11) NOT NULL,
  `designname` varchar(40) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategoryid` int(11) DEFAULT NULL,
  `designimage` text NOT NULL,
  `price` int(11) NOT NULL,
  `status` varchar(2) NOT NULL DEFAULT 'A',
  `insertdate` date NOT NULL DEFAULT current_timestamp(),
  `modifydate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_design`
--

INSERT INTO `tbl_design` (`design_id`, `designname`, `categoryid`, `subcategoryid`, `designimage`, `price`, `status`, `insertdate`, `modifydate`) VALUES
(13, 'Visiting Card 1', NULL, 1, 'uploadimage/vcard1.png,uploadimage/vcard1back.png', 5, 'A', '2020-03-02', '2020-04-04'),
(16, 'Visiting Card 2', NULL, 1, 'uploadimage/vcard2.png,uploadimage/vcard2back.png', 5, 'A', '2020-03-02', '2020-03-09'),
(17, 'Visiting Card 3', NULL, 1, 'uploadimage/vcard3.png,uploadimage/vcard3back.png', 5, 'A', '2020-03-02', '2020-03-02'),
(18, 'Visiting Card 4', NULL, 1, 'uploadimage/vcard4.png,uploadimage/vcard4back.png', 6, 'A', '2020-03-02', '2020-03-02'),
(19, 'Visiting Card 5', NULL, 1, 'uploadimage/vcard5.png,uploadimage/vcard5back.png', 5, 'A', '2020-03-02', '2020-03-03'),
(20, 'Visiting Card 6', NULL, 1, 'uploadimage/vcard6.png,uploadimage/vcard6back.png', 8, 'A', '2020-03-02', '2020-03-02'),
(27, 'Id Card 1', 6, NULL, 'uploadimage/icard2.png', 5, 'A', '2020-04-04', '2020-04-04'),
(29, 'Visiting Card 7', NULL, 1, 'uploadimage/vcard7.png,uploadimage/vcard7back.png', 8, 'A', '2020-05-07', '2020-05-07'),
(30, 'Visiting Card 8', NULL, 1, 'uploadimage/vcard8.png,uploadimage/vcard8back.png', 8, 'A', '2020-05-07', '2020-05-07'),
(31, 'Visiting Card 9', NULL, 1, 'uploadimage/vcard9.png,uploadimage/vcard9back.png', 8, 'A', '2020-05-07', '2020-05-07'),
(32, 'Visiting Card 10', NULL, 1, 'uploadimage/vcard10.png,uploadimage/vcard10back.png', 7, 'A', '2020-05-29', '2020-05-29'),
(33, 'Visiting Card 11', NULL, 1, 'uploadimage/vcard11.png,uploadimage/vcard11back.png', 7, 'A', '2020-05-29', '2020-05-29'),
(34, 'Visiting Card 12', NULL, 1, 'uploadimage/vcard12.png,uploadimage/vcard12back.png', 7, 'A', '2020-05-29', '2020-05-29'),
(40, 'Visiting Card 13', NULL, 1, 'uploadimage/vcard13.png,uploadimage/vcard13back.png', 9, 'A', '2020-06-04', '2020-06-07'),
(41, '', 1, NULL, 'uploadimage/vcard19.png,uploadimage/vcard19back.png', 0, 'R', '2020-06-04', '2020-06-04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `cartid` int(11) NOT NULL,
  `orderdate` date NOT NULL DEFAULT current_timestamp(),
  `orderaddress` varchar(300) NOT NULL,
  `status` varchar(2) NOT NULL DEFAULT 'P',
  `totalamount` int(11) NOT NULL,
  `paymenttype` varchar(3) NOT NULL,
  `paymentstatus` varchar(1) NOT NULL DEFAULT 'P',
  `paymentdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `cartid`, `orderdate`, `orderaddress`, `status`, `totalamount`, `paymenttype`, `paymentstatus`, `paymentdate`) VALUES
(3, 2, '2020-04-06', '84-vijayraj soc cosway road,surat,395004', 'D', 70, 'cod', 'D', '0000-00-00'),
(8, 3, '2020-04-06', '84-vijayraj soc cosway road,surat,395004', 'D', 150, 'onp', 'D', '2020-04-06'),
(10, 6, '2020-05-07', 'B-1001 Brahmad Residency Near Gopin Row house,ved road,surat,395004', 'Pr', 800, 'cod', 'P', '0000-00-00'),
(11, 7, '2020-05-21', '84-vijayraj soc Near Gopin Row house,ved road,surat,395004', 'Ds', 86, 'onp', 'D', '2020-05-21'),
(14, 8, '2020-06-04', '84-vijayraj soc cosway road,surat,395004', 'Di', 168, 'onp', 'P', '2020-06-04'),
(15, 9, '2020-06-04', '84-vijayraj soc cosway road,surat,395004', 'P', 105, 'onp', 'D', '2020-06-04'),
(16, 10, '2020-06-05', '1102-Brahmlok Residency cosway road,surat,395004', 'P', 56, 'onp', 'D', '2020-06-05'),
(19, 12, '2020-06-13', '102 apex complex near adajan patiya,surat,395004', 'P', 1800, 'cod', 'P', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_printdetails`
--

CREATE TABLE `tbl_printdetails` (
  `print_id` int(11) NOT NULL,
  `ordername` varchar(20) NOT NULL,
  `details` text NOT NULL,
  `logoimage` text NOT NULL,
  `lamination` varchar(4) NOT NULL,
  `cornor` varchar(10) NOT NULL,
  `multiplename` text NOT NULL,
  `multipleimage` text NOT NULL,
  `nooflines` int(11) DEFAULT NULL,
  `insertdate` date NOT NULL DEFAULT current_timestamp(),
  `modifydate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_printdetails`
--

INSERT INTO `tbl_printdetails` (`print_id`, `ordername`, `details`, `logoimage`, `lamination`, `cornor`, `multiplename`, `multipleimage`, `nooflines`, `insertdate`, `modifydate`) VALUES
(1, 'nikhil', 'Nikhil,nikhil,bmiit,student,201706100110076,9081315238 ,www.utu.ac.in,,uploadlogo/p7.png,13', 'uploadlogo/p7.png', 'No', 'square', '', '', NULL, '2020-04-05', '2020-04-05'),
(3, 'Project1', 'Parth,Project1,Bmiit,Photographer,201706100110076,9512596863,www.utu.ac.in,,uploadlogo/p7.png,16', 'uploadlogo/p7.png', 'No', 'square', '', '', NULL, '2020-04-06', '2020-04-06'),
(4, 'Project2', 'Nick,Project2,Efontos,Owner,102- SIlverstone arcade,near cosway,surat 395004,,uploadlogo/p6.png,17', 'uploadlogo/p6.png', 'Yes', 'square', '', '', NULL, '2020-04-06', '2020-04-06'),
(6, 'Project3', 'Parth,Project3,OneClick,Owner,A-101 Royal Plaza,Ved Road Surat,9512596863,parthkanani@gmail.com,uploadlogo/p6.png,29', 'uploadlogo/p6.png', 'No', 'square', '', '', NULL, '2020-05-07', '2020-05-07'),
(7, 'Project4', '', '', 'No', 'square', 'uploadfile/Sample.xml', 'uploadfile/Seo Assignment 201706100110076.zip', 100, '2020-05-07', '2020-05-07'),
(8, 'School', '', '', 'No', 'square', 'uploadfile/Sample(1).xml', 'uploadfile/DESIGN IMAGES.zip', 100, '2020-05-08', '2020-05-08'),
(9, 'Project21', 'nick dobariya,Project21,bmiit,student,201706100110076,9081315238,www.utu.ac.in,nickdobariya@gmail.com,uploadlogo/s1.png,34', 'uploadlogo/s1.png', 'Yes', 'rounded', '', '', NULL, '2020-06-03', '2020-06-03'),
(10, 'Project19', 'Nikhil,Project19,OneClick,student,201706100110076,Ved Road Surat,9512596863,nickdobariya@gmail.com,uploadlogo/s3.png,34', 'uploadlogo/s3.png', 'Yes', 'rounded', '', '', NULL, '2020-06-04', '2020-06-04'),
(11, 'Project131', 'Jonny,Project131,Lucasimport pvt.ltd,HOD,Shop-102 silver arcade,9081315238,www.lucas.ie.in,jonny.lucas@gmail.com,uploadlogo/a1.png,34', 'uploadlogo/a1.png', 'Yes', 'rounded', '', '', NULL, '2020-06-05', '2020-06-05'),
(12, 'project15', '', '', 'No', 'square', 'uploadfile/Sample.xlsx', 'uploadfile/fpdf17.zip', 200, '2020-06-12', '2020-06-12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rate`
--

CREATE TABLE `tbl_rate` (
  `rate_id` int(11) NOT NULL,
  `designid` int(11) NOT NULL,
  `customerid` int(11) NOT NULL,
  `ratepoint` int(11) NOT NULL,
  `insertdate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_rate`
--

INSERT INTO `tbl_rate` (`rate_id`, `designid`, `customerid`, `ratepoint`, `insertdate`) VALUES
(1, 13, 3, 3, '2020-05-29'),
(2, 13, 13, 3, '2020-05-29'),
(3, 16, 3, 4, '2020-05-29'),
(4, 17, 3, 4, '2020-05-29'),
(6, 18, 3, 3, '2020-05-29'),
(7, 18, 13, 4, '2020-05-29'),
(8, 16, 13, 2, '2020-05-29'),
(9, 17, 13, 5, '2020-05-29'),
(10, 19, 13, 4, '2020-05-29'),
(11, 19, 3, 3, '2020-05-29'),
(13, 33, 3, 4, '2020-06-04'),
(14, 34, 3, 3, '2020-06-12'),
(15, 29, 3, 3, '2020-05-29'),
(16, 30, 3, 4, '2020-05-29'),
(17, 31, 3, 4, '2020-05-29'),
(18, 20, 3, 3, '2020-05-29'),
(19, 27, 3, 4, '2020-05-30'),
(20, 32, 3, 3, '2020-05-30'),
(21, 32, 13, 4, '2020-05-31'),
(22, 40, 3, 4, '2020-06-12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subcategory`
--

CREATE TABLE `tbl_subcategory` (
  `sc_id` int(11) NOT NULL,
  `subcategoryname` text NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `status` varchar(1) NOT NULL DEFAULT 'A',
  `insertdate` date NOT NULL DEFAULT current_timestamp(),
  `modifydate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_subcategory`
--

INSERT INTO `tbl_subcategory` (`sc_id`, `subcategoryname`, `categoryid`, `status`, `insertdate`, `modifydate`) VALUES
(1, 'ONE-SIDED CARD', 1, 'A', '2020-02-25', '2020-02-27'),
(3, 'TWO-SIDED CARD', 1, 'A', '2020-02-25', '2020-02-25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_uploaddesign`
--

CREATE TABLE `tbl_uploaddesign` (
  `upload_id` int(11) NOT NULL,
  `designid` int(11) NOT NULL,
  `designerid` int(11) NOT NULL,
  `uploaddate` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(2) NOT NULL DEFAULT 'Rq'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_uploaddesign`
--

INSERT INTO `tbl_uploaddesign` (`upload_id`, `designid`, `designerid`, `uploaddate`, `status`) VALUES
(3, 40, 10, '2020-06-04', 'A'),
(4, 41, 10, '2020-06-04', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contactno` varchar(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `role` varchar(1) NOT NULL,
  `password` varchar(32) NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT 'A',
  `insertdate` date NOT NULL DEFAULT current_timestamp(),
  `modifydate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `firstname`, `lastname`, `gender`, `email`, `contactno`, `address`, `pincode`, `role`, `password`, `status`, `insertdate`, `modifydate`) VALUES
(3, 'Nick', 'Dobariya', 'M', 'nickdobariya19@gmail.com', '9081315238', '84,vijayraj soc,katargam,surat', '395004', 'C', 'e2e42a07550863f8b67f5eb252581f6d', 'A', '2020-02-21', '2020-05-31'),
(5, 'Harsh', 'Patel', 'M', '17bmiit002@gmail.com', '9081315238', 'surat', '395004', 'C', '26d1ebd4ec8c55cc69f190d0d37f6dac', 'A', '2020-02-21', '2020-02-21'),
(8, 'Nikhil', 'Dobariya', 'M', '17bmiit076@gmail.com', '9081315238', '1102,brahmlok residency ,ved road,surat', '395004', 'D', 'eb0bb5cf2f828063ed54362dd269867e', 'A', '2020-02-21', '2020-05-23'),
(9, 'Dhruvi', 'Vaghela', 'F', '17bmiit122@gmail.com', '9537895163', 'surat', '395006', 'C', '25dadf301836635e637e726b5ded9421', 'A', '2020-02-24', '2020-02-24'),
(10, 'Parth', 'kanani', 'M', '17bmiit039@gmail.com', '9512596863', 'surat', '395004', 'D', '26b568e4192a164d5b3eacdbd632bc2e', 'A', '2020-02-26', '2020-02-27'),
(12, 'Nikhil', 'Patel', 'M', 'nickdobariya21@gmail.com', '9081315238', 'surat', '395004', 'D', 'e2e42a07550863f8b67f5eb252581f6d', 'A', '2020-05-23', '2020-05-29'),
(13, 'Krishna', 'Vaviya', 'F', '17bmiit131@gmail.com', '8866767919', 'mini bazzar ,surat', '395006', 'C', '02829fb05c3076ec5a6caebd12477dec', 'A', '2020-05-23', '2020-06-05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `wish_id` int(11) NOT NULL,
  `customerid` int(11) NOT NULL,
  `designid` int(11) NOT NULL,
  `insertdate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`wish_id`, `customerid`, `designid`, `insertdate`) VALUES
(6, 3, 17, '2020-04-08'),
(16, 3, 29, '2020-05-08'),
(17, 3, 30, '2020-05-08'),
(18, 3, 31, '2020-05-08'),
(20, 3, 13, '2020-05-29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `customerid` (`customerid`);

--
-- Indexes for table `tbl_cartdetails`
--
ALTER TABLE `tbl_cartdetails`
  ADD PRIMARY KEY (`cd_id`),
  ADD KEY `designid` (`designid`),
  ADD KEY `cart_id` (`cartid`),
  ADD KEY `printdetailsid` (`printdetailsid`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `tbl_design`
--
ALTER TABLE `tbl_design`
  ADD PRIMARY KEY (`design_id`),
  ADD KEY `categoryid` (`categoryid`),
  ADD KEY `subcategoryid` (`subcategoryid`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `cart_id` (`cartid`);

--
-- Indexes for table `tbl_printdetails`
--
ALTER TABLE `tbl_printdetails`
  ADD PRIMARY KEY (`print_id`);

--
-- Indexes for table `tbl_rate`
--
ALTER TABLE `tbl_rate`
  ADD PRIMARY KEY (`rate_id`),
  ADD KEY `designid` (`designid`),
  ADD KEY `userid` (`customerid`);

--
-- Indexes for table `tbl_subcategory`
--
ALTER TABLE `tbl_subcategory`
  ADD PRIMARY KEY (`sc_id`),
  ADD KEY `categoryid` (`categoryid`);

--
-- Indexes for table `tbl_uploaddesign`
--
ALTER TABLE `tbl_uploaddesign`
  ADD PRIMARY KEY (`upload_id`),
  ADD KEY `designerid` (`designerid`),
  ADD KEY `designid` (`designid`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`wish_id`),
  ADD KEY `customerid` (`customerid`),
  ADD KEY `designid` (`designid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_cartdetails`
--
ALTER TABLE `tbl_cartdetails`
  MODIFY `cd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_design`
--
ALTER TABLE `tbl_design`
  MODIFY `design_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_printdetails`
--
ALTER TABLE `tbl_printdetails`
  MODIFY `print_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_rate`
--
ALTER TABLE `tbl_rate`
  MODIFY `rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_subcategory`
--
ALTER TABLE `tbl_subcategory`
  MODIFY `sc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_uploaddesign`
--
ALTER TABLE `tbl_uploaddesign`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `wish_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD CONSTRAINT `tbl_cart_ibfk_1` FOREIGN KEY (`customerid`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_cartdetails`
--
ALTER TABLE `tbl_cartdetails`
  ADD CONSTRAINT `tbl_cartdetails_ibfk_1` FOREIGN KEY (`designid`) REFERENCES `tbl_design` (`design_id`),
  ADD CONSTRAINT `tbl_cartdetails_ibfk_2` FOREIGN KEY (`cartid`) REFERENCES `tbl_cart` (`cart_id`),
  ADD CONSTRAINT `tbl_cartdetails_ibfk_3` FOREIGN KEY (`printdetailsid`) REFERENCES `tbl_printdetails` (`print_id`);

--
-- Constraints for table `tbl_design`
--
ALTER TABLE `tbl_design`
  ADD CONSTRAINT `tbl_design_ibfk_1` FOREIGN KEY (`categoryid`) REFERENCES `tbl_category` (`c_id`),
  ADD CONSTRAINT `tbl_design_ibfk_2` FOREIGN KEY (`subcategoryid`) REFERENCES `tbl_subcategory` (`sc_id`);

--
-- Constraints for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `tbl_order_ibfk_1` FOREIGN KEY (`cartid`) REFERENCES `tbl_cart` (`cart_id`);

--
-- Constraints for table `tbl_rate`
--
ALTER TABLE `tbl_rate`
  ADD CONSTRAINT `tbl_rate_ibfk_1` FOREIGN KEY (`designid`) REFERENCES `tbl_design` (`design_id`),
  ADD CONSTRAINT `tbl_rate_ibfk_2` FOREIGN KEY (`customerid`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_subcategory`
--
ALTER TABLE `tbl_subcategory`
  ADD CONSTRAINT `tbl_subcategory_ibfk_1` FOREIGN KEY (`categoryid`) REFERENCES `tbl_category` (`c_id`);

--
-- Constraints for table `tbl_uploaddesign`
--
ALTER TABLE `tbl_uploaddesign`
  ADD CONSTRAINT `tbl_uploaddesign_ibfk_1` FOREIGN KEY (`designerid`) REFERENCES `tbl_user` (`user_id`),
  ADD CONSTRAINT `tbl_uploaddesign_ibfk_2` FOREIGN KEY (`designid`) REFERENCES `tbl_design` (`design_id`);

--
-- Constraints for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD CONSTRAINT `tbl_wishlist_ibfk_1` FOREIGN KEY (`customerid`) REFERENCES `tbl_user` (`user_id`),
  ADD CONSTRAINT `tbl_wishlist_ibfk_2` FOREIGN KEY (`designid`) REFERENCES `tbl_design` (`design_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
