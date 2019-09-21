-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 21, 2019 at 04:53 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `he`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_to_cart`
--

CREATE TABLE IF NOT EXISTS `add_to_cart` (
  `acid` int(3) NOT NULL AUTO_INCREMENT,
  `pid` int(3) NOT NULL,
  `qty` int(3) NOT NULL,
  `cid` int(3) NOT NULL,
  PRIMARY KEY (`acid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `cat_id` int(3) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(30) NOT NULL,
  `cat_desc` varchar(100) NOT NULL,
  `image_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `cat_desc`, `image_name`) VALUES
(1, 'fan', 'fan', 'Chrysanthemum.jpg'),
(2, 'mixer', 'mixer', '9k=.jpg'),
(3, 'blender', 'blender', 'images.jpg'),
(4, 'cooler', 'hdjdsk', 'images(2).jpg'),
(5, 'Geyser', 'Geyser', 'images.jpeg'),
(6, 'Lemp', 'Lemp', 'lamp.jpeg'),
(7, 'iron', 'model no 113', 'images[1][1].jpg'),
(8, 'cabel', '                           1.5mm     ', NULL),
(9, 'savan', '                                savan', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `cust_id` int(3) NOT NULL AUTO_INCREMENT,
  `cust_name` varchar(30) NOT NULL,
  `cust_address` varchar(100) NOT NULL,
  `cust_phone` decimal(10,0) NOT NULL,
  `cust_email` varchar(40) NOT NULL,
  `cust_password` varchar(20) NOT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_name`, `cust_address`, `cust_phone`, `cust_email`, `cust_password`) VALUES
(1, 'ajay', 'ahmedabad', '7990143089', 'ajay@gmail.com', '1234'),
(2, 'sanjay', 'ahmedabad', '7779076203', 'sanjay@gmail.com', '456'),
(3, 'savan', '58,shivkrupa soc nikol', '9016214165', 'savanh9898@gmail.com', '1234'),
(4, 'karan', 'ghatlodia', '9586591349', 'kkraval@gmail.com', '1234'),
(5, 'gunjan', 'shivdhara', '9016598694', 'gunjan@gmail.com', '1234'),
(6, 'rahul', '89, shreeram Tanament ghandhi nagar Ahmdabad', '7574928007', 'rahul9897@gmail.com', '12345'),
(7, 'savan', '40/2 gayatri mandir ,sola Ahmdabad', '9016214165', 'savanh989898@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `eid` int(3) NOT NULL AUTO_INCREMENT,
  `ename` varchar(30) NOT NULL,
  `eaddress` varchar(100) NOT NULL,
  `ephone` decimal(10,0) NOT NULL,
  `eemail` varchar(20) NOT NULL,
  `epassword` varchar(20) NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `ename`, `eaddress`, `ephone`, `eemail`, `epassword`) VALUES
(1, 'sawan', 'ahmedabad', '7788997766', 'sawan@gmail.com', '123'),
(2, 'karan', '40/2 gayatri mandir ,sola Ahmdabad', '9586591349', 'kkraval@gmail.com', '12345'),
(3, 'sanjay', 'ahmedabad', '7779076203', 'sanjay@yahoo.com', '123'),
(4, 'nikunj', 'ahmedabad', '9638913899', 'nikunj@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_detail`
--

CREATE TABLE IF NOT EXISTS `feedback_detail` (
  `fid` int(3) NOT NULL AUTO_INCREMENT,
  `feedback_name` varchar(30) NOT NULL,
  `feedback_des` varchar(100) NOT NULL,
  `cust_id` int(3) NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `feedback_detail`
--

INSERT INTO `feedback_detail` (`fid`, `feedback_name`, `feedback_des`, `cust_id`) VALUES
(1, 'ajay', 'good concept', 1),
(2, 'sanjay', 'good concept', 1),
(3, 'savan', 'nice product', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE IF NOT EXISTS `order_detail` (
  `o_id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` decimal(10,0) NOT NULL,
  `pid` varchar(100) NOT NULL,
  `pname` varchar(2000) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `rate` varchar(100) NOT NULL,
  `t_amount` decimal(10,0) NOT NULL,
  `o_date` varchar(30) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `cid` int(3) NOT NULL,
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`o_id`, `name`, `address`, `phone`, `pid`, `pname`, `qty`, `rate`, `t_amount`, `o_date`, `status`, `cid`) VALUES
(1, 'sanjay', 'ahmedabad', '7779076203', '7,3,', 'bajaj,jaipan,', '2,1,', '2300,4995,', '9595', '23/02/2018', 'Pendding', 1),
(2, 'savan', '58,shivkrupa soc nikol', '9016214165', '7,', 'bajaj,', '2,', '2300,', '4600', '27/02/2018', 'Pendding', 3),
(3, 'savan', 'ahmedabad', '9016214165', '7,', 'bajaj,', '2,', '2300,', '4600', '27/02/2018', 'Complete', 3),
(4, 'dilip', 'baroda', '9427702550', '7,', 'bajaj,', '2,', '2300,', '4600', '15/03/2018', 'Pendding', 5),
(5, 'pranav', '58,shivkrupa soc nikol', '901', '7,', 'bajaj,', '3,', '2300,', '6900', '28/03/2018', 'Pendding', 6),
(6, 'karan', 'ghatlodia', '9586591349', '7,7,', 'bajaj,bajaj,', '1,3,', '2300,2300,', '9200', '28/03/2018', 'Pendding', 1),
(7, 'karan raval', 'bhuyangdev', '262728182', '7,', 'bajaj,', '4,', '2300,', '9200', '28/03/2018', 'Pendding', 1),
(8, 'savan', 'shivdhara', '9016214165', '3,', 'jaipan,', '3,', '4995,', '14985', '13/05/2018', 'On Process', 1),
(9, 'savan', '58,shivkrupa soc nikol', '9016214165', '3,', 'jaipan,', '1,', '4995,', '4995', '21/07/2019', NULL, 7);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `pro_id` int(3) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `product_detail`
--

CREATE TABLE IF NOT EXISTS `product_detail` (
  `pro_id` int(3) NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(30) NOT NULL,
  `pro_desc` varchar(100) NOT NULL,
  `pro_price` decimal(5,0) NOT NULL,
  `stock` int(3) NOT NULL,
  `p_image` varchar(100) DEFAULT NULL,
  `sub_cat_id` int(3) NOT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `product_detail`
--

INSERT INTO `product_detail` (`pro_id`, `pro_name`, `pro_desc`, `pro_price`, `stock`, `p_image`, `sub_cat_id`) VALUES
(3, 'jaipan', 'JKB-4001 750W', '4995', 10, 'mixer1.jpeg', 2),
(5, 'ujala', 'ujala', '70', 100, NULL, 3),
(7, 'bajaj', 'model2001 w:700', '23000', 4, '3.jpg', 1),
(8, 'iron', 'model no 113,walt 1500 high rated', '1500', 5, 'images[1].jpg', 7),
(9, 'led', 'powerful portable easy to carry wlt 4000', '2500', 6, '5.jpeg', 5),
(10, 'cooler', 'best product wlt 5000 ', '4000', 2, 'download.jpeg', 10),
(11, 'gyser', 'crompton rediant 15litre', '4377', 8, '23.jpeg', 11),
(12, 'savan', 'null', '2000', 5, 'Penguins.jpg', 12);

-- --------------------------------------------------------

--
-- Table structure for table `service_detail`
--

CREATE TABLE IF NOT EXISTS `service_detail` (
  `sid` int(3) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL,
  `r_date` varchar(30) NOT NULL,
  `reply` varchar(100) DEFAULT NULL,
  `isReply` tinyint(1) DEFAULT NULL,
  `cid` int(3) NOT NULL,
  `eid` int(3) DEFAULT NULL,
  `emp_reply` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `service_detail`
--

INSERT INTO `service_detail` (`sid`, `description`, `r_date`, `reply`, `isReply`, `cid`, `eid`, `emp_reply`) VALUES
(2, 'fan repairnig', '13/02/2018', 'i will check', NULL, 1, 2, 'completed'),
(3, 'fen', '27/02/2018', 'djfjdk', NULL, 3, 1, 'fggggf'),
(4, 'cooler Reparing', '28/03/2018', 'fdsfgh', NULL, 1, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_cat`
--

CREATE TABLE IF NOT EXISTS `sub_cat` (
  `sub_cat_id` int(3) NOT NULL AUTO_INCREMENT,
  `sub_cat_name` varchar(30) NOT NULL,
  `sub_cat_dess` varchar(100) NOT NULL,
  `image_name` varchar(100) DEFAULT NULL,
  `cat_id` int(3) NOT NULL,
  PRIMARY KEY (`sub_cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `sub_cat`
--

INSERT INTO `sub_cat` (`sub_cat_id`, `sub_cat_name`, `sub_cat_dess`, `image_name`, `cat_id`) VALUES
(1, 'wall fan', 'wall fan', 'images5.jpg', 1),
(2, 'Mixer', 'Mixer', 'download.jpeg', 2),
(4, 'ceiling fan', 'ceiling fan', 'abc.jpg', 1),
(5, 'LED', '400wlt', 'led.jpeg', 6),
(6, 'blender', 'model no113', 'blender.jpeg', 3),
(7, 'iron', 'walt 1500', 'images.jpg', 7),
(8, 'led', '1000wlt', '2.jpeg', 6),
(9, 'led', 'high power', '4.jpeg', 6),
(10, 'cooler', 'bestperformance', 'download.jpeg', 4),
(11, 'gyser', 'gyser', '23.jpeg', 5),
(12, 'wall fan', 'null', NULL, 1),
(13, 'wall fan', 'null', NULL, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
