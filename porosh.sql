-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2019 at 07:32 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `porosh`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `name` varchar(255) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` varchar(255) NOT NULL,
  `guest` varchar(220) NOT NULL,
  `budget` int(11) NOT NULL,
  `c_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `msg` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`name`, `date`, `time`, `guest`, `budget`, `c_name`, `email`, `phone`, `msg`) VALUES
('', '0000-00-00', '', '', 0, '0', '0', '0', '0'),
('Sumon Saikan', '0000-00-00', '5', '5', 1200, '0', 'sk@outlook.com', '01635048520', 'hytu'),
('Sumon Saikan', '0000-00-00', '5pm', '5', 1500, '0', 'huh@gmail.com', '01635048520', 'hlkhjlkhjlk'),
('Marriage', '06/21/2019', '5pm', '5', 15000, '0', 'kamrul@gmail.com', '01635048520', 'We need Best Food'),
('Sumon Saikan', '06/27/2019', '5pm', '5', 1200, '0', 'sumonsaikanmirza45@gmail.com', '01635048520', 'fhdkhfldsh'),
('Sumon Saikan', '06/08/2019', '5pm', '5', 1500, 'Saiful', 'kamrul@gmail.com', '01635048520', 'nlidjfijidjf'),
('Sumon Saikan', '06/08/2019', '5pm', '', 1500, 'Saiful', 'sumonsaikanmirza45@gmail.com', '01635048520', 'kuuk'),
('Marriage', '07/13/2019', '5pm', '5person', 1500, 'Saiful', 'kamrul@gmail.com', '01635048520', 'yhhh'),
('musolmani', '06/29/2019', '5pm', '5', 1200, 'Saiful', 'sk3007068@gmail.com', '01635048520', 'bcncnshshs'),
('musolmani', '06/29/2019', '5pm', '5', 1200, 'Saiful', 'sk3007068@gmail.com', '01635048520', 'bcncnshshs'),
('musolmani', '06/29/2019', '5pm', '5', 1200, 'Saiful', 'sk3007068@gmail.com', '01635048520', 'hello my god'),
('motar biye', '06/27/2019', '5pm', '5', 1500, 'Saiful', 'sk@outlook.com', '01635048520', 'i love you'),
('Marriage', '06/15/2019', '5pm', '5', 150000020, 'Saikan', 'sumonsaikanmirza45@gmail.com', '016350488', 'Hello guys'),
('Marriage', '06/30/2019', '5pm', '52', 150000020, 'Saiful', 'sumonsaikanmirza45@gmail.com', '01635048520', 'we need a good environment'),
('musolmani', '06/29/2019', '11am', '120', 150000020, 'Rahi', 'niga@gmail.com', '01635048520', 'valo khabar chai'),
('Marriage', '06/27/2019', '5pm', '120', 150000020, 'Saiful', 'kamrul@gmail.com', '01635048520', 'we will rock u');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `t_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `t_system` varchar(255) NOT NULL,
  `t_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`t_name`, `quantity`, `amount`, `t_system`, `t_number`) VALUES
('Burger', 120, 720, 'bkash', '01788437695'),
('Burger', 120, 125555, 'bkash', '01788437695'),
('Pasta', 6, 150, 'bkash', '01788437695');

-- --------------------------------------------------------

--
-- Table structure for table `myusers`
--

CREATE TABLE `myusers` (
  `Firstname` varchar(50) NOT NULL,
  `Lastname` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Passwrd` varchar(100) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Birthdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `myusers`
--

INSERT INTO `myusers` (`Firstname`, `Lastname`, `Email`, `Passwrd`, `Gender`, `Birthdate`) VALUES
('asdf', ' jgfjk', 'Saikan@gmail.com', '1234', 'Female', '2017-11-27'),
('', '', 'Saikan@gmail.com', '1234', 'Male', '0000-00-00'),
('abdul', 'karim', 'kan@gmail.com', '12345', 'Male', '2019-06-15'),
('Sumon', 'Saikan', 'kan2@gmail.com', '123', 'Female', '2019-06-29'),
('Sumon', 'Saikan', 'kan2@gmail.com', '123', 'Male', '2019-06-21'),
('Abdul', 'Motin', 'hello@gmail.com', '1234', 'Male', '2019-06-29'),
('Kamrul', 'Hasan', 'k@gmail.com', '12344545', 'Female', '2019-06-29'),
('Sumon', 'Saikan', 'k@gmail.com', '12344545', 'female', '2019-06-29'),
('Sumon', 'Saikan', 'k@gmail.com', '890', 'male', '2019-06-29'),
('Sumon', 'karim', 'k@gmail.com', 'Asdhjhlkdng89', 'male', '2019-06-29'),
('Sumon', 'Saikan', 'kala@gmail.com', 'Abcd1234', 'Male', '2019-06-29'),
('Sumon', 'karim', 'kalllo@gmail.com', 'Saikan45', 'male', '2019-06-29'),
('Saikan', 'Ahemed', 'Saikan45@gmail.com', 'Saikan45', 'male', '1997-06-29');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `t_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `system` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
