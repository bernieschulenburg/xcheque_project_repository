-- phpMyAdmin SQL Dump
-- version 3.4.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2012 at 03:15 AM
-- Server version: 5.1.57
-- PHP Version: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `xcheque_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `chart_definitions`
--

CREATE TABLE IF NOT EXISTS `chart_definitions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cht_table` varchar(20) COLLATE armscii8_bin NOT NULL,
  `y_range_min` int(11) DEFAULT NULL,
  `y_range_max` int(11) DEFAULT NULL,
  `date_range_min` date DEFAULT NULL,
  `date_range_max` date DEFAULT NULL,
  `x_min` int(11) DEFAULT NULL,
  `x_max` int(11) DEFAULT NULL,
  `most_recent` int(11) DEFAULT NULL,
  `graph_name_1` varchar(20) COLLATE armscii8_bin NOT NULL,
  `graph_name_2` varchar(20) COLLATE armscii8_bin NOT NULL,
  `graph_name_3` varchar(20) COLLATE armscii8_bin NOT NULL,
  `graph_name_4` varchar(20) COLLATE armscii8_bin NOT NULL,
  `graph_name_5` varchar(20) COLLATE armscii8_bin NOT NULL,
  `graph_name_6` varchar(20) COLLATE armscii8_bin NOT NULL,
  `graph_name_7` varchar(20) COLLATE armscii8_bin NOT NULL,
  `graph_name_8` varchar(20) COLLATE armscii8_bin NOT NULL,
  `graph_name_9` varchar(20) COLLATE armscii8_bin NOT NULL,
  `graph_name_10` varchar(20) COLLATE armscii8_bin NOT NULL,
  `category_name` varchar(20) COLLATE armscii8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `chart_definitions`
--

INSERT INTO `chart_definitions` (`id`, `cht_table`, `y_range_min`, `y_range_max`, `date_range_min`, `date_range_max`, `x_min`, `x_max`, `most_recent`, `graph_name_1`, `graph_name_2`, `graph_name_3`, `graph_name_4`, `graph_name_5`, `graph_name_6`, `graph_name_7`, `graph_name_8`, `graph_name_9`, `graph_name_10`, `category_name`) VALUES
(1, 'cht_aud_exchange', 50, 150, '2010-03-01', '2050-01-01', NULL, NULL, NULL, 'NZD', 'USD', 'Euro', '', '', '', '', '', '', '', 'Date'),
(2, '', 0, 120, '1987-05-19', '2012-05-22', 0, 0, 30, 'EUR', 'YEN', '', '', '', '', '', '', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
