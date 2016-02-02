-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2016 at 09:35 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sankalp`
--

-- --------------------------------------------------------

--
-- Table structure for table `intern`
--

CREATE TABLE IF NOT EXISTS `intern` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` text NOT NULL,
  `year` int(11) NOT NULL,
  `email` text NOT NULL,
  `collagename` text NOT NULL,
  `contact` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `intern`
--

INSERT INTO `intern` (`id`, `firstname`, `year`, `email`, `collagename`, `contact`) VALUES
(1, 'v', 0, 'Email', 'College Name', 'Contact No'),
(2, 'viv', 0, 'Email', 'College Name', 'Contact No'),
(3, 'jffc', 0, 'Email', 'College Name', 'Contact No'),
(4, 'jffc', 0, 'sdcbdl', 'sdvnl', 'vsdlv');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
