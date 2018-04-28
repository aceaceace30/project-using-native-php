-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2017 at 05:06 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `register`
--

-- --------------------------------------------------------

--
-- Table structure for table `activation_code`
--

CREATE TABLE `activation_code` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `activation_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activation_code`
--

INSERT INTO `activation_code` (`id`, `userID`, `activation_code`) VALUES
(35, 71, 237356),
(36, 72, 377542),
(37, 73, 596417),
(38, 74, 407919),
(39, 75, 943008),
(40, 76, 216180),
(41, 77, 540249),
(42, 78, 430963),
(43, 79, 485922),
(44, 80, 499902),
(45, 81, 378421),
(46, 82, 397894),
(47, 83, 797302),
(48, 84, 824603),
(49, 85, 202667),
(50, 86, 963772),
(51, 87, 231863),
(52, 88, 853305),
(53, 89, 718283),
(54, 90, 241394),
(55, 91, 607266),
(56, 92, 420828),
(57, 93, 407781);

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `BusID` int(11) NOT NULL,
  `BusName` varchar(30) NOT NULL,
  `Bus_Company` varchar(30) NOT NULL,
  `Type` varchar(30) NOT NULL,
  `No_of_seats` int(11) NOT NULL,
  `Availability` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`BusID`, `BusName`, `Bus_Company`, `Type`, `No_of_seats`, `Availability`) VALUES
(130, 'BR584', 'MEGA BUS', 'Aircon', 44, 'used'),
(131, 'ML825', 'MEGA BUS', 'Aircon', 44, 'used'),
(132, 'JF057', 'MEGA BUS', 'Ordinary', 44, 'used'),
(133, 'HJ738', 'MEGA BUS', 'Ordinary', 44, 'used'),
(134, 'KS627', 'MEGA BUS', 'Aircon', 44, 'used'),
(136, 'LG847', 'MEGA BUS', 'Ordinary', 44, 'used'),
(137, 'IG385', 'MEGA BUS', 'Aircon', 44, 'used'),
(138, 'NT347', 'MEGA BUS', 'Ordinary', 44, 'used'),
(139, 'SK238', 'MEGA BUS', 'Ordinary', 44, 'used'),
(140, 'BJ759', 'MEGA BUS', 'Ordinary', 44, 'used'),
(141, 'ID483', 'MEGA BUS', 'Ordinary', 44, 'used'),
(142, 'FB264', 'MEGA BUS', 'Aircon', 44, 'used'),
(143, 'TG887', 'MEGA BUS', 'Ordinary', 44, 'used'),
(145, 'SDF345', 'R. VOLANTE LINE', 'Ordinary', 44, 'used'),
(146, 'LV484', 'R. VOLANTE LINE', 'Ordinary', 44, 'used'),
(147, 'KD123', 'MEGA BUS', 'Ordinary', 44, 'unused'),
(148, 'GH456', 'MEGA BUS', 'Ordinary', 44, 'unused');

-- --------------------------------------------------------

--
-- Table structure for table `bustype_rate`
--

CREATE TABLE `bustype_rate` (
  `id` int(11) NOT NULL,
  `bustype` varchar(256) NOT NULL,
  `per_kilometer` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bustype_rate`
--

INSERT INTO `bustype_rate` (`id`, `bustype`, `per_kilometer`) VALUES
(1, 'Ordinary', 1.2),
(2, 'Aircon', 1.7);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `company_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `company_name`) VALUES
(1, 'MEGA BUS'),
(2, 'R. VOLANTE LINE'),
(3, 'E. BELLEZA LINE'),
(4, 'ELAVIL'),
(5, 'E. Mark Eves'),
(6, 'RORO BUS'),
(7, 'ANTONINA'),
(8, 'BOBIS LINER');

-- --------------------------------------------------------

--
-- Table structure for table `company_policy`
--

CREATE TABLE `company_policy` (
  `id` int(11) NOT NULL,
  `com_id` int(11) NOT NULL,
  `baggage_limit` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_policy`
--

INSERT INTO `company_policy` (`id`, `com_id`, `baggage_limit`) VALUES
(1, 1, '10kg'),
(2, 2, '15kg'),
(3, 3, '15kg'),
(4, 4, '10kg'),
(5, 5, '10kg'),
(6, 6, '10kg'),
(7, 7, '15kg'),
(8, 8, '10kg');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `con_email` varchar(50) NOT NULL,
  `con_name` varchar(50) NOT NULL,
  `message_body` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `con_email`, `con_name`, `message_body`) VALUES
(3, 'qweqwe', 'qweqweqw', 'qweqwewqe'),
(4, 'qweqwe', 'qweqwe', 'qwewqeqwewe'),
(5, 'wqw', 'www', 'www'),
(6, '123', '123', '123'),
(7, '123', '123', '123'),
(8, 'fffff', 'qwee', 'ewqewqe'),
(9, 'qweqwe', 'qweqwe', 'qweqwe'),
(10, 'zzzzz', 'zzzzzzzzzzzzzzz', 'zzzzzzzzzzzzz'),
(11, 'marcababao@gmail.com', 'qweqwe', 'qweqweqwewe'),
(12, 'qweqwe', 'qweqw', 'eqwewqe'),
(13, 'wqewqe', 'qweqweqwe', 'wqewqeqweqweqw'),
(14, 'qwewqe', 'wqewqeqweqwe', 'wqewqeqweqw'),
(15, 'qwewqe', 'wqewqeqweqwe', 'wqewqeqweqw'),
(16, 'qwewqe', 'wqewqeqweqwe', 'wqewqeqweqw'),
(17, 'sadad', 'dasdasda', 'aaaaaaaaaaaaaaa'),
(18, 'weqewqe', 'weqwewew', 'ewewewqewqe'),
(19, 'weqewqe', 'zzzzzzzzzzz', 'sdasdasdd'),
(20, 'wqeqweqw', '123123', '213213123123'),
(21, 'sddwqdw', '23123', 'bobo nyo'),
(22, 'marcababao@gmail.com', 'michael jay', 'galingan nyo sa defense'),
(23, 'karl_ian05@yahoo.com', 'karl ian marcelino', 'go karl!!!');

-- --------------------------------------------------------

--
-- Table structure for table `location_destination`
--

CREATE TABLE `location_destination` (
  `id` int(11) NOT NULL,
  `location` varchar(30) NOT NULL,
  `destination` varchar(30) NOT NULL,
  `kilometers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location_destination`
--

INSERT INTO `location_destination` (`id`, `location`, `destination`, `kilometers`) VALUES
(1, 'Cubao', 'Rawis', 1050),
(2, 'Cubao', 'Bato Leyte', 950),
(3, 'Cubao', 'Placer', 1200),
(4, 'Cubao', 'Oras Delores', 1100),
(5, 'Cubao', 'Bohol', 850),
(6, 'Cubao', 'Corpuz', 740),
(7, 'Cubao', 'Allen', 880),
(8, 'Cubao', 'Bulan', 920),
(9, 'Cubao', 'Cawayan', 1040),
(10, 'Cubao', 'Matnog', 1260),
(11, 'Cubao', 'Bulan', 970);

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `reserveID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `routeID` int(11) NOT NULL,
  `reserve_date` varchar(30) NOT NULL,
  `fare_total` int(11) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `code` varchar(10) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`reserveID`, `userID`, `routeID`, `reserve_date`, `fare_total`, `payment_type`, `code`, `payment_status`, `status`) VALUES
(186, 71, 303, '09/21/2017', 1400, 'walk-in', '5480', 'UNPAID', 'ongoing');

-- --------------------------------------------------------

--
-- Table structure for table `reserve_seats`
--

CREATE TABLE `reserve_seats` (
  `reserve_seatsID` int(11) NOT NULL,
  `reserveID` int(11) NOT NULL,
  `seat_no` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reserve_seats`
--

INSERT INTO `reserve_seats` (`reserve_seatsID`, `reserveID`, `seat_no`) VALUES
(623, 186, '14'),
(624, 186, '15');

-- --------------------------------------------------------

--
-- Table structure for table `routes_schedules`
--

CREATE TABLE `routes_schedules` (
  `routeID` int(11) NOT NULL,
  `BusID` int(11) NOT NULL,
  `from_location` varchar(30) NOT NULL,
  `destination` varchar(30) NOT NULL,
  `available_seats` int(11) NOT NULL,
  `time_sched` varchar(30) NOT NULL,
  `fare` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `routes_schedules`
--

INSERT INTO `routes_schedules` (`routeID`, `BusID`, `from_location`, `destination`, `available_seats`, `time_sched`, `fare`) VALUES
(291, 129, 'Cubao', 'Rawis', 40, '07:00am', 1700),
(292, 130, 'Cubao', 'Bato Leyte', 40, '08:00am', 900),
(293, 132, 'Cubao', 'Oras Delores', 40, '09:00am', 600),
(294, 133, 'Cubao', 'Rawis', 40, '10:00am', 700),
(296, 131, 'Cubao', 'Rawis', 40, '11:00am', 900),
(297, 134, 'Cubao', 'Rawis', 40, '12:30am', 900),
(298, 136, 'Cubao', 'Cawayan', 40, '01:00pm', 800),
(299, 137, 'Cubao', 'Placer', 40, '01:30pm', 600),
(300, 138, 'Cubao', 'Bohol', 40, '02:00pm', 900),
(301, 139, 'Cubao', 'Corpuz', 40, '02:30pm', 700),
(302, 140, 'Cubao', 'Bohol', 40, '03:00pm', 900),
(303, 141, 'Cubao', 'Allen', 40, '05:00pm', 700),
(304, 142, 'Cubao', 'Bulan', 40, '06:30pm', 850),
(305, 143, 'Cubao', 'Bulan', 40, '07:30pm', 600),
(306, 129, 'Cubao', 'Rawis', 40, '01:00am', 0),
(307, 0, 'Cubao', 'Rawis', 40, '01:00am', 0),
(308, 0, 'Cubao', 'Rawis', 40, '01:00am', 0),
(309, 0, 'Cubao', 'Rawis', 40, '01:00am', 0),
(310, 130, 'Cubao', 'Rawis', 40, '01:00am', 13123123),
(312, 132, 'Cubao', 'Placer', 40, '01:00am', 123),
(313, 145, 'Cubao', 'Rawis', 40, '01:00am', 0),
(314, 0, 'Cubao', 'Rawis', 40, '01:00am', 0),
(315, 0, 'Cubao', 'Rawis', 40, '01:00am', 0),
(316, 0, 'Cubao', 'Rawis', 40, '01:00am', 0),
(317, 0, 'Cubao', 'Rawis', 40, '01:00am', 0),
(318, 0, 'Cubao', 'Rawis', 40, '01:00am', 0),
(319, 0, 'Cubao', 'Rawis', 40, '01:00am', 0),
(320, 0, 'Cubao', 'Rawis', 40, '01:00am', 0),
(321, 0, 'Cubao', 'Rawis', 40, '01:00am', 0),
(322, 0, 'Cubao', 'Rawis', 40, '01:00am', 0),
(323, 0, 'Cubao', 'Rawis', 40, '01:00am', 0),
(324, 146, 'Cubao', 'Rawis', 40, '01:00am', 500);

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `seatID` int(11) NOT NULL,
  `seat_no` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`seatID`, `seat_no`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5'),
(6, '6'),
(7, '7'),
(8, '8'),
(9, '9'),
(10, '10'),
(11, '11'),
(12, '12'),
(13, '13'),
(14, '14'),
(15, '15'),
(16, '16'),
(17, '17'),
(18, '18'),
(19, '19'),
(20, '20'),
(21, '21'),
(22, '22'),
(23, '23'),
(24, '24'),
(25, '25'),
(26, '26'),
(27, '27'),
(28, '28'),
(29, '29'),
(30, '30'),
(31, '31'),
(32, '32'),
(33, '33'),
(34, '34'),
(35, '35'),
(36, '36'),
(37, '37'),
(38, '38'),
(39, '39'),
(40, '40'),
(41, '41'),
(42, '42'),
(43, '43'),
(44, '44');

-- --------------------------------------------------------

--
-- Table structure for table `sms_message`
--

CREATE TABLE `sms_message` (
  `id` int(11) NOT NULL,
  `message` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_message`
--

INSERT INTO `sms_message` (`id`, `message`) VALUES
(1, 'Your Travel Lokal activation code:'),
(2, 'Thank you for Booking with Travel Lokal. CODE:');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `phonenumber` bigint(20) NOT NULL,
  `usertype` varchar(30) NOT NULL,
  `activated` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `email`, `password`, `firstname`, `lastname`, `phonenumber`, `usertype`, `activated`) VALUES
(71, 'ace1234', 'ace123', 'aaaa', 'aaaa', 639452902324, 'member', 'yes'),
(74, 'nmnmnm', 'nmnmnmnm', 'nm', 'nm', 63452902324, 'member', 'yes'),
(75, 'ccc', 'ccc', 'ccc', 'ccc', 639452902324, 'member', 'no'),
(76, 'kkk', 'kkk', 'kkk', 'kkk', 639452902324, 'member', 'no'),
(77, 'uuu', 'uuu', 'uuu', 'uuu', 639452902324, 'member', 'no'),
(78, 'ggg', 'ggg', 'ggg', 'ggg', 639452902324, 'member', 'no'),
(79, 'iii', 'iii', 'iii', 'iii', 639452902324, 'member', 'no'),
(80, 'fff', 'fff', 'fff', 'fff', 639452902324, 'member', 'no'),
(81, 'eee', 'eee', 'eee', 'eee', 639452902324, 'member', 'no'),
(82, 'asdf', 'asdf', 'asdf', 'asdf', 639452902324, 'member', 'yes'),
(83, 'jkjk', 'jkjk', 'jkjk', 'jkjk', 639452902324, 'member', 'no'),
(84, 'abc', 'abc', 'abc', 'abc', 639052322714, 'member', 'yes'),
(85, 'qwe', 'qwe', 'qwe', 'qwe', 639052322714, 'member', 'yes'),
(86, 'qweqweqwe@gmail.com', '123', '123', '123', 123, 'member', 'yes'),
(87, 'alvin_pag@gmail.com', '1234', 'qweqwe', 'qweqwe', 639052322714, 'member', 'yes'),
(88, '', '123', '123', '', 123123, 'member', 'no'),
(89, '1234', '12345', '123', '123', 123, 'member', 'no'),
(90, '1111', '1234', '1234', '1234', 1234, 'member', 'no'),
(91, 'qweqwewq', '123', 'qweqe', 'qweqe', 13123123, 'member', 'no'),
(92, '1', '1', '12', '1', 1221121, 'member', 'no'),
(93, 'qwewqe', '123', 'eqweqwe', 'qweqweqw', 112121, 'member', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activation_code`
--
ALTER TABLE `activation_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`BusID`);

--
-- Indexes for table `bustype_rate`
--
ALTER TABLE `bustype_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_policy`
--
ALTER TABLE `company_policy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location_destination`
--
ALTER TABLE `location_destination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`reserveID`);

--
-- Indexes for table `reserve_seats`
--
ALTER TABLE `reserve_seats`
  ADD PRIMARY KEY (`reserve_seatsID`);

--
-- Indexes for table `routes_schedules`
--
ALTER TABLE `routes_schedules`
  ADD PRIMARY KEY (`routeID`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`seatID`);

--
-- Indexes for table `sms_message`
--
ALTER TABLE `sms_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activation_code`
--
ALTER TABLE `activation_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `BusID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;
--
-- AUTO_INCREMENT for table `bustype_rate`
--
ALTER TABLE `bustype_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `company_policy`
--
ALTER TABLE `company_policy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `location_destination`
--
ALTER TABLE `location_destination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `reserveID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;
--
-- AUTO_INCREMENT for table `reserve_seats`
--
ALTER TABLE `reserve_seats`
  MODIFY `reserve_seatsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=625;
--
-- AUTO_INCREMENT for table `routes_schedules`
--
ALTER TABLE `routes_schedules`
  MODIFY `routeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;
--
-- AUTO_INCREMENT for table `seats`
--
ALTER TABLE `seats`
  MODIFY `seatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `sms_message`
--
ALTER TABLE `sms_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
