-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2016 at 06:34 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `user_registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `amount`
--

CREATE TABLE IF NOT EXISTS `amount` (
  `from_where` varchar(100) NOT NULL,
  `to_where` varchar(100) NOT NULL,
  `amount` int(225) NOT NULL,
  `sr_no` int(225) NOT NULL,
  PRIMARY KEY (`sr_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `amount`
--

INSERT INTO `amount` (`from_where`, `to_where`, `amount`, `sr_no`) VALUES
('khulna', 'dhaka', 500, 1),
('dhaka', 'khulna', 510, 2),
('khulna ', 'jessore', 150, 3),
('jessore', 'khulna', 175, 4);

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE IF NOT EXISTS `bus` (
  `bus_id` varchar(100) NOT NULL,
  `bus_name` varchar(100) NOT NULL,
  PRIMARY KEY (`bus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`bus_id`, `bus_name`) VALUES
('101', 'Hanif'),
('102', 'Shohagh'),
('103', 'Desh Travels'),
('201', 'Bolaka'),
('202', 'XL 99');

-- --------------------------------------------------------

--
-- Table structure for table `bus_root_table`
--

CREATE TABLE IF NOT EXISTS `bus_root_table` (
  `root_id` varchar(10) NOT NULL,
  `bus_root` varchar(20) NOT NULL,
  `bus_id` varchar(20) NOT NULL,
  PRIMARY KEY (`root_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_root_table`
--

INSERT INTO `bus_root_table` (`root_id`, `bus_root`, `bus_id`) VALUES
('1', 'Dhaka to Khulna', '101'),
('2', 'Dhaka to Khulna', '103'),
('3', 'Dhaka to Rajshahi', '201'),
('4', 'Dhaka to Kolkata', '202'),
('5', 'Dhaka to Kolkata', '102');

-- --------------------------------------------------------

--
-- Table structure for table `bus_scheduling_date`
--

CREATE TABLE IF NOT EXISTS `bus_scheduling_date` (
  `sch_id` varchar(10) NOT NULL,
  `bus_id` varchar(20) NOT NULL,
  `bus_dep_date` varchar(20) NOT NULL,
  PRIMARY KEY (`sch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_scheduling_date`
--

INSERT INTO `bus_scheduling_date` (`sch_id`, `bus_id`, `bus_dep_date`) VALUES
('1', '101', 'july'),
('2', '102', 'july'),
('3', '103', 'august'),
('4', '201', 'august'),
('5', '202', 'september');

-- --------------------------------------------------------

--
-- Table structure for table `bus_time_table`
--

CREATE TABLE IF NOT EXISTS `bus_time_table` (
  `time_id` varchar(10) NOT NULL,
  `bus_id` varchar(20) NOT NULL,
  `bus_dep_time` varchar(20) NOT NULL,
  PRIMARY KEY (`time_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_time_table`
--

INSERT INTO `bus_time_table` (`time_id`, `bus_id`, `bus_dep_time`) VALUES
('1', '101', '10:00 Pm'),
('2', '103', '02:00 Pm'),
('3', '201', '04:00 Pm'),
('5', '202', '11:00 Pm'),
('6', '102', '08:00 Am');

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE IF NOT EXISTS `customer_details` (
  `cus_id` varchar(10) NOT NULL,
  `ticket_no` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  `destination` varchar(20) NOT NULL,
  `collected_seat` text NOT NULL,
  `journey_date` varchar(20) NOT NULL,
  `journey_time` varchar(20) NOT NULL,
  `issue_date` varchar(20) NOT NULL,
  `amount` int(20) NOT NULL,
  `counter_no` varchar(10) NOT NULL,
  PRIMARY KEY (`cus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`cus_id`, `ticket_no`, `name`, `mobile_no`, `destination`, `collected_seat`, `journey_date`, `journey_time`, `issue_date`, `amount`, `counter_no`) VALUES
('1111', '10', 'shajal', '01552', 'dhaka', 'jkk', '45', '458', 'sss', 255, '1'),
('444hj', '', '', '555', '', '', '', '', '', 0, ''),
('45hg', '8', 'captain jaksparow', '01971765959', 'Dhaka to Kolkata', ' C', 'september', '11:00 Pm', '04-Aug-2016', 200, '2'),
('544', '5', 'Forid', '018780455597', 'Dhaka to Rajshahi', ' A B', 'august', '04:00 Pm', '04-Aug-2016', 1000, '1'),
('c11', '2', 'Ali Azgor', '0152147463', 'Dhaka to Khulna', ' A B', 'july', '10:00 Pm', '06-Aug-2016', 1000, '2'),
('ckk', '1', 'llllllllllllyuuu', '12', 'Dhaka to Khulna', ' A', 'july', '10:00 Pm', '06-Aug-2016', 300, '1'),
('eoz255', '2', 'jahid', '0152478', 'Dhaka to Khulna', ' B C', '07:08:2016', '10:00 Pm', '07-Aug-2016', 1000, '1'),
('koe', '4', 'Nazmul vai', '01255', 'Dhaka to Rajshahi', ' A', '01:09:2016', '04:00 Pm', '10-Aug-2016', 500, '1'),
('oi25', '8', 'Md sakib', '01521474917', 'Dhaka to Khulna', ' A B C D', '05:09:2016', '02:00 Pm', '11-Aug-2016', 2000, '1'),
('uiiw', '', '', '', '', '', '', '', '', 0, '0'),
('yur', '', '', '', '', '', '', '', '', 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `rank` int(100) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `rank`) VALUES
('sadid', '123', 1),
('shajal', '123076', 10),
('taj', '321', 2),
('testuser1', 'testpassword', 0);

-- --------------------------------------------------------

--
-- Table structure for table `seat_table`
--

CREATE TABLE IF NOT EXISTS `seat_table` (
  `seat_id` varchar(10) NOT NULL,
  `seat_no` varchar(20) NOT NULL,
  `bus_id` varchar(20) NOT NULL,
  `ticket_no` varchar(10) NOT NULL,
  PRIMARY KEY (`seat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seat_table`
--

INSERT INTO `seat_table` (`seat_id`, `seat_no`, `bus_id`, `ticket_no`) VALUES
('1', 'A', '202', ''),
('10', 'E', '201', ''),
('11', 'A', '101', ''),
('12', 'B', '101', ''),
('13', 'C', '101', ''),
('14', 'D', '101', ''),
('15', 'E', '101', ''),
('16', 'A', '102', ''),
('17', 'B', '102', ''),
('18', 'C', '102', ''),
('19', 'D', '102', ''),
('2', 'B', '202', ''),
('20', 'E', '102', ''),
('21', 'A', '103', '8'),
('22', 'B', '103', '8'),
('23', 'C', '103', '8'),
('24', 'D', '103', '8'),
('25', 'E', '103', ''),
('3', 'C', '202', ''),
('4', 'D', '202', ''),
('5', 'E', '202', ''),
('6', 'A', '201', '4'),
('7', 'B', '201', ''),
('8', 'C', '201', ''),
('9', 'D', '201', '');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_date_table`
--

CREATE TABLE IF NOT EXISTS `ticket_date_table` (
  `ticket_no` varchar(100) NOT NULL,
  `datefix` varchar(100) NOT NULL,
  PRIMARY KEY (`ticket_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket_date_table`
--

INSERT INTO `ticket_date_table` (`ticket_no`, `datefix`) VALUES
('1', '07:08:2016'),
('2', '07:08:2016'),
('3', '07:08:2016'),
('4', '01:09:2016'),
('5', '02:09:2016'),
('6', '03:09:2016'),
('7', '04:09:2016'),
('8', '05:09:2016');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
