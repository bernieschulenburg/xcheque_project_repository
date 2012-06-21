-- phpMyAdmin SQL Dump
-- version 3.4.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2012 at 03:17 AM
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
-- Table structure for table `cht_usda_commodities`
--

CREATE TABLE IF NOT EXISTS `cht_usda_commodities` (
  `date` date NOT NULL,
  `smp` double NOT NULL,
  `wmp` double NOT NULL,
  `cheese` double NOT NULL,
  `butter` double NOT NULL,
  `audexchange` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cht_usda_commodities`
--

INSERT INTO `cht_usda_commodities` (`date`, `smp`, `wmp`, `cheese`, `butter`, `audexchange`) VALUES
('1995-01-07', 1850, 1750, 1900, 1375, 0.7699),
('1995-01-21', 1850, 1750, 1850, 1450, 0.7674),
('1995-02-04', 1900, 1837.5, 1925, 1775, 0.759),
('1995-02-18', 1975, 1925, 1925, 1925, 0.7379),
('1995-03-04', 2000, 2000, 2000, 1850, 0.7373),
('1995-03-18', 2075, 2050, 2000, 1925, 0.7418),
('1995-04-01', 2075, 2050, 2000, 1975, 0.728),
('1995-04-15', 2075, 2075, 2000, 1950, 0.742),
('1995-04-29', 2175, 2200, 2000, 2150, 0.7299),
('1995-05-13', 2150, 2175, 2000, 2150, 0.735),
('1995-05-27', 2175, 2175, 2000, 2050, 0.7229),
('1995-06-10', 2075, 2075, 2000, 2000, 0.7204),
('1995-06-24', 2200, 2200, 2000, 2025, 0.7198),
('1995-07-08', 2275, 2275, 2000, 2000, 0.7144),
('1995-07-22', 2275, 2275, 2050, 2000, 0.7351),
('1995-08-05', 2275, 2275, 2050, 2050, 0.7365),
('1995-08-19', 2250, 2300, 2025, 2000, 0.7354),
('1995-09-02', 2225, 2275, 2025, 2000, 0.7496),
('1995-09-16', 2225, 2300, 2050, 2100, 0.761),
('1995-09-30', 2250, 2300, 2100, 2150, 0.755),
('1995-10-14', 2225, 2250, 2100, 2100, 0.7608),
('1995-10-28', 2225, 2275, 2100, 2175, 0.7536),
('1995-11-11', 2212.5, 2275, 2137.5, 2162.5, 0.7385),
('1995-11-25', 2200, 2275, 2150, 2175, 0.7394),
('1995-12-09', 2200, 2275, 2137.5, 2162.5, 0.7399),
('1995-12-23', 2175, 2200, 2125, 2100, 0.7409),
('1996-01-06', 2162.5, 2225, 2162.5, 2137.5, 0.7408),
('1996-01-20', 2162.5, 2225, 2200, 2125, 0.7393),
('1996-02-03', 2125, 2150, 2150, 2025, 0.7503),
('1996-02-17', 2125, 2125, 2250, 1950, 0.7554),
('1996-03-02', 2100, 2100, 2250, 1950, 0.7645),
('1996-03-16', 2012.5, 2037.5, 2250, 1950, 0.774),
('1996-03-30', 1900, 1900, 2250, 1925, 0.7793),
('1996-04-13', 1975, 1950, 2250, 1900, 0.7911),
('1996-04-27', 1950, 1925, 2250, 1900, 0.79),
('1996-05-11', 1900, 1925, 2275, 1825, 0.8016),
('1996-05-25', 1875, 1900, 2275, 1800, 0.7901),
('1996-06-08', 1850, 1825, 2225, 1700, 0.7879),
('1996-06-22', 1825, 1862.5, 2250, 1587.5, 0.7892),
('1996-07-06', 1825, 1850, 2250, 1587.5, 0.7856),
('1996-07-20', 1850, 1850, 2250, 1550, 0.791),
('1996-08-03', 1825, 1875, 2250, 1550, 0.7741),
('1996-08-17', 1800, 1887.5, 2250, 1550, 0.7827),
('1996-08-31', 1800, 1850, 2250, 1475, 0.7909),
('1996-09-14', 1800, 1850, 2250, 1450, 0.7968),
('1996-09-28', 1800, 1850, 2250, 1450, 0.7923),
('1996-10-12', 1800, 1850, 2250, 1475, 0.7893),
('1996-10-26', 1825, 1850, 2250, 1475, 0.793),
('1996-11-09', 1825, 1850, 2225, 1475, 0.7837),
('1996-11-23', 1850, 1850, 2225, 1450, 0.8096),
('1996-12-07', 1910, 1850, 2200, 1450, 0.7951),
('1996-12-21', 1912.5, 1890, 2200, 1375, 0.7963),
('1997-01-04', 2162.5, 1900, 2200, 1375, 0.7918),
('1997-01-18', 2162.5, 1875, 2125, 1375, 0.7796),
('1997-02-01', 2125, 1925, 2175, 1425, 0.762),
('1997-02-15', 2125, 1975, 2175, 1425, 0.7638),
('1997-03-01', 2100, 1950, 2200, 1425, 0.7758),
('1997-03-15', 2012.5, 1840, 2200, 1425, 0.7988),
('1997-03-29', 1900, 1840, 2200, 1425, 0.7865),
('1997-04-12', 1975, 1825, 2225, 1425, 0.7854),
('1997-04-26', 1950, 1825, 2125, 1425, 0.775),
('1997-05-10', 1900, 1825, 2125, 1400, 0.7782),
('1997-05-24', 1875, 1775, 2125, 1400, 0.7677),
('1997-06-07', 1850, 1725, 2125, 1362.5, 0.7597),
('1997-06-21', 1825, 1725, 2075, 1425, 0.751),
('1997-07-05', 1825, 1762.5, 2050, 1425, 0.7523),
('1997-07-19', 1850, 1762.5, 2075, 1425, 0.7386),
('1997-08-02', 1825, 1737.5, 2075, 1450, 0.7446),
('1997-08-16', 1800, 1675, 2075, 1500, 0.7438),
('1997-08-30', 1800, 1675, 2075, 1500, 0.7344),
('1997-09-13', 1800, 1712.5, 2100, 1550, 0.7218),
('1997-09-27', 1800, 1725, 2150, 1625, 0.7249),
('1997-10-11', 1800, 1750, 2150, 1700, 0.7353),
('1997-10-25', 1825, 1750, 2150, 1700, 0.7056),
('1997-11-08', 1825, 1750, 2125, 1700, 0.696),
('1997-11-22', 1850, 1787.5, 2125, 1800, 0.6937),
('1997-12-06', 1910, 1787.5, 2150, 1850, 0.6732),
('1997-12-20', 1912.5, 1775, 2100, 1850, 0.6506),
('1998-01-10', 1600, 1787.5, 2100, 1825, 0.6415),
('1998-01-24', 1550, 1800, 2100, 1800, 0.658),
('1998-02-07', 1525, 1775, 2050, 1800, 0.6753),
('1998-02-21', 1512.5, 1762.5, 1937.5, 1787.5, 0.6751),
('1998-03-07', 1450, 1650, 1975, 1750, 0.667),
('1998-03-21', 1450, 1650, 2025, 1750, 0.6628),
('1998-04-04', 1462.5, 1675, 1975, 1725, 0.6548),
('1998-04-18', 1450, 1725, 1950, 1725, 0.6545),
('1998-05-02', 1475, 1725, 2000, 1700, 0.6543),
('1998-05-16', 1475, 1725, 1950, 1700, 0.6239),
('1998-05-30', 1475, 1725, 1900, 1700, 0.6236),
('1998-06-13', 1487.5, 1750, 1900, 1700, 0.5897),
('1998-06-27', 1475, 1725, 1900, 1625, 0.6063),
('1998-07-11', 1450, 1725, 1950, 1662.5, 0.6143),
('1998-07-25', 1400, 1725, 1975, 1700, 0.6218),
('1998-08-08', 1350, 1725, 2000, 1762.5, 0.601),
('1998-08-22', 1350, 1725, 2000, 1875, 0.588),
('1998-09-05', 1362.5, 1725, 2000, 1875, 0.5892),
('1998-09-19', 1325, 1675, 1925, 1850, 0.59),
('1998-10-03', 1325, 1675, 1925, 1850, 0.592),
('1998-10-17', 1325, 1675, 1875, 1775, 0.6379),
('1998-10-31', 1325, 1640, 1837.5, 1750, 0.6263),
('1998-11-14', 1287.5, 1625, 1812.5, 1725, 0.636),
('1998-11-28', 1325, 1625, 1850, 1700, 0.6358),
('1998-12-12', 1350, 1625, 1900, 1700, 0.6238),
('1998-12-26', 1350, 1625, 1900, 1650, 0.6098),
('1999-01-09', 1350, 1650, 1850, 1650, 0.6343),
('1999-01-23', 1362.5, 1650, 1850, 1650, 0.6393),
('1999-02-06', 1362.5, 1600, 1825, 1650, 0.6508),
('1999-02-20', 1325, 1600, 1825, 1525, 0.6362),
('1999-03-06', 1325, 1575, 1825, 1525, 0.6275),
('1999-03-20', 1325, 1550, 1800, 1500, 0.6275),
('1999-04-03', 1325, 1550, 1800, 1500, 0.6355),
('1999-04-17', 1300, 1525, 1800, 1450, 0.6423),
('1999-05-01', 1275, 1475, 1800, 1400, 0.6598),
('1999-05-15', 1275, 1475, 1775, 1325, 0.6678),
('1999-05-29', 1275, 1450, 1775, 1300, 0.6526),
('1999-06-12', 1275, 1450, 1785, 1300, 0.6635),
('1999-06-26', 1225, 1450, 1725, 1250, 0.6618),
('1999-07-10', 1225, 1450, 1725, 1237.5, 0.6635),
('1999-07-24', 1200, 1450, 1725, 1250, 0.6478),
('1999-08-07', 1222.5, 1450, 1725, 1250, 0.6544),
('1999-08-21', 1250, 1450, 1700, 1200, 0.6383),
('1999-09-04', 1262.5, 1450, 1700, 1212.5, 0.6451),
('1999-09-18', 1294, 1450, 1700, 1225, 0.6505),
('1999-10-02', 1337.5, 1450, 1700, 1225, 0.6522),
('1999-10-16', 1362.5, 1450, 1700, 1225, 0.6507),
('1999-10-30', 1362.5, 1450, 1700, 1225, 0.6446),
('1999-11-13', 1425, 1487.5, 1700, 1225, 0.6426),
('1999-11-27', 1425, 1487.5, 1700, 1225, 0.6382),
('1999-12-11', 1425, 1487.5, 1712.5, 1225, 0.6357),
('1999-12-25', 1425, 1487.5, 1712.5, 1225, 0.6437),
('2000-01-08', 1437.5, 1500, 1725, 1225, 0.6539),
('2000-01-22', 1525, 1562.5, 1725, 1225, 0.6653),
('2000-02-05', 1575, 1600, 1725, 1225, 0.6333),
('2000-02-19', 1575, 1600, 1737.5, 1215, 0.6328),
('2000-03-04', 1575, 1600, 1737.5, 1212.5, 0.6092),
('2000-03-18', 1575, 1600, 1737.5, 1212.5, 0.6107),
('2000-04-01', 1550, 1600, 1750, 1187.5, 0.6055),
('2000-04-15', 1550, 1675, 1800, 1150, 0.5977),
('2000-04-29', 1562.5, 1687.5, 1800, 1150, 0.5909),
('2000-05-13', 1587.5, 1687.5, 1812.5, 1125, 0.58),
('2000-05-27', 1630, 1675, 1812.5, 1125, 0.5705),
('2000-06-10', 1662.5, 1737.5, 1812.5, 1125, 0.587),
('2000-06-24', 1925, 1900, 1812.5, 1125, 0.5956),
('2000-07-08', 1925, 1900, 1812.5, 1125, 0.5873),
('2000-07-22', 1975, 1900, 1812.5, 1125, 0.5838),
('2000-08-05', 2050, 1962.5, 1812.5, 1150, 0.5847),
('2000-08-19', 2135, 2010, 1872.5, 1235, 0.5933),
('2000-09-02', 2215, 1975, 1850, 1312.5, 0.5748),
('2000-09-16', 2175, 1975, 1850, 1300, 0.5501),
('2000-09-30', 2200, 1975, 1850, 1300, 0.5433),
('2000-10-14', 2200, 1975, 1875, 1337.5, 0.5298),
('2000-10-28', 2225, 2000, 1925, 1375, 0.5195),
('2000-11-11', 2200, 2000, 1925, 1362.5, 0.528),
('2000-11-25', 2200, 2050, 1975, 1375, 0.5208),
('2000-12-09', 2237.5, 2075, 2000, 1325, 0.5454),
('2000-12-23', 2237.5, 2075, 0, 0, 0.5558),
('2001-01-06', 2237.5, 2075, 2000, 1312.5, 0.5714),
('2001-01-20', 2237.5, 2075, 2075, 1312.5, 0.5617),
('2001-02-03', 2237.5, 2075, 2100, 1325, 0.5539),
('2001-02-17', 2225, 2025, 2087.5, 1287.5, 0.5264),
('2001-03-03', 2200, 2025, 2087.5, 1287.5, 0.5271),
('2001-03-17', 2137.5, 2050, 2087.5, 1287.5, 0.4944),
('2001-03-31', 2112.5, 2075, 2125, 1300, 0.489),
('2001-04-14', 2137.5, 2062.5, 2112.5, 1287.5, 0.489),
('2001-04-28', 2137.5, 2062.5, 2112.5, 1287.5, 0.5113),
('2001-05-12', 2137.5, 2077.5, 2137.5, 1287.5, 0.5244),
('2001-05-26', 2137.5, 2090, 2137.5, 1325, 0.5216),
('2001-06-09', 2137.5, 2100, 2175, 1325, 0.5215),
('2001-06-23', 2137.5, 2100, 2200, 1325, 0.5169),
('2001-07-07', 2112.5, 2087.5, 2237.5, 1425, 0.5116),
('2001-07-21', 2125, 2100, 2275, 1400, 0.5138),
('2001-08-04', 2125, 2100, 2275, 1400, 0.5178),
('2001-08-18', 2087.5, 2050, 2237.5, 1437.5, 0.5244),
('2001-09-01', 2087.5, 2050, 2237.5, 1437.5, 0.5342),
('2001-09-15', 2075, 2025, 2275, 1425, 0.5151),
('2001-09-29', 2050, 2025, 2300, 1400, 0.4923),
('2001-10-13', 2025, 1987.5, 2262.5, 1350, 0.5014),
('2001-10-27', 1950, 1950, 2250, 1350, 0.5034),
('2001-11-10', 1950, 1925, 2225, 1300, 0.5132),
('2001-11-24', 1800, 1800, 2200, 1250, 0.5181),
('2001-12-08', 1762.5, 1737.5, 2150, 1162.5, 0.5193),
('2001-12-22', 1675, 1662.5, 2000, 1325, 0.5066),
('2002-01-05', 1662.5, 1637.5, 2062.5, 1150, 0.5161),
('2002-01-19', 1612.5, 1600, 1950, 1150, 0.515),
('2002-02-02', 1550, 1550, 1950, 1150, 0.5068),
('2002-02-16', 1487.5, 1475, 1900, 1075, 0.5152),
('2002-03-02', 1475, 1425, 1875, 1050, 0.5177),
('2002-03-16', 1412.5, 1375, 1875, 1037.5, 0.5234),
('2002-03-30', 1312.5, 1325, 1762.5, 1025, 0.5234),
('2002-04-13', 1312.5, 1337.5, 1812.5, 1000, 0.5358),
('2002-04-27', 1300, 1312.5, 1775, 1000, 0.5447),
('2002-05-11', 1275, 1287.5, 1750, 1000, 0.5428),
('2002-05-25', 1250, 1287.5, 1700, 1000, 0.5539),
('2002-06-08', 1237.5, 1237.5, 1600, 962.5, 0.5734),
('2002-06-22', 1237.5, 1237.5, 1600, 962.5, 0.5738),
('2002-07-06', 1212.5, 1237.5, 1600, 962.5, 0.556),
('2002-07-20', 1200, 1237.5, 1600, 962.5, 0.5573),
('2002-08-03', 1200, 1237.5, 1575, 962.5, 0.5408),
('2002-08-17', 1187.5, 1212.5, 1550, 962.5, 0.5457),
('2002-08-31', 1212.5, 1225, 1550, 962.5, 0.5532),
('2002-09-14', 1225, 1250, 1550, 1025, 0.5515),
('2002-09-28', 1300, 1300, 1550, 1025, 0.5444),
('2002-10-12', 1362.5, 1350, 1575, 1075, 0.5474),
('2002-10-26', 1375, 1425, 1575, 1075, 0.555),
('2002-11-09', 1500, 1487.5, 1575, 1100, 0.5656),
('2002-11-23', 1500, 1500, 1575, 1125, 0.5625),
('2002-12-07', 1575, 1575, 1650, 1175, 0.5612),
('2002-12-21', 1575, 1587.5, 1700, 1175, 0.5659),
('2003-01-04', 1650, 1637.5, 1700, 1175, 0.5629),
('2003-01-18', 1725, 1775, 1750, 1250, 0.5895),
('2003-02-01', 1750, 1775, 1750, 1275, 0.5884),
('2003-02-15', 1775, 1800, 1812.5, 1300, 0.5958),
('2003-03-01', 1750, 1787.5, 1800, 1300, 0.6054),
('2003-03-15', 1750, 1825, 1825, 1300, 0.5952),
('2003-03-29', 1750, 1825, 1850, 1300, 0.5993),
('2003-04-12', 1750, 1800, 1800, 1275, 0.6069),
('2003-04-26', 1700, 1762.5, 1800, 1275, 0.6208),
('2003-05-10', 1700, 1750, 1825, 1262.5, 0.6431),
('2003-05-24', 1700, 1737.5, 1825, 1262.5, 0.6563),
('2003-06-07', 1700, 1737.5, 1825, 1262.5, 0.6662),
('2003-06-21', 1700, 1737.5, 1825, 1262.5, 0.6706),
('2003-07-05', 1700, 1737.5, 1825, 1262.5, 0.6812),
('2003-07-19', 1700, 1700, 1875, 1300, 0.6474),
('2003-08-02', 1700, 1700, 1875, 1337.5, 0.6475),
('2003-08-16', 1700, 1700, 1887.5, 1350, 0.6576),
('2003-08-30', 1700, 1700, 1887.5, 1350, 0.64),
('2003-09-13', 1700, 1725, 1887.5, 1350, 0.6597),
('2003-09-27', 1775, 1750, 2025, 1425, 0.68),
('2003-10-11', 1800, 1800, 2025, 1487.5, 0.6895),
('2003-10-25', 1800, 1800, 2050, 1500, 0.7014),
('2003-11-08', 1800, 1800, 2025, 1500, 0.7072),
('2003-11-22', 1800, 1800, 2150, 1512.5, 0.7216),
('2003-12-06', 1800, 1800, 2150, 1525, 0.7345),
('2003-12-20', 1825, 1825, 2175, 1525, 0.7392),
('2004-01-10', 1825, 1825, 2175, 1525, 0.7752),
('2004-01-24', 1837.5, 1850, 2275, 1550, 0.7773),
('2004-02-07', 1850, 1850, 2425, 1600, 0.7634),
('2004-02-21', 1850, 1850, 2425, 1600, 0.7885),
('2004-03-06', 1850, 1850, 2475, 1625, 0.7509),
('2004-03-20', 1850, 1875, 2475, 1625, 0.7486),
('2004-04-03', 1850, 1875, 2500, 1675, 0.7648),
('2004-04-17', 1850, 1875, 2500, 1675, 0.7422),
('2004-05-01', 1850, 1875, 2500, 1675, 0.722),
('2004-05-15', 1950, 1950, 2550, 1700, 0.6879),
('2004-05-29', 1950, 1950, 2550, 1700, 0.7189),
('2004-06-12', 2050, 2050, 2650, 1775, 0.6939),
('2004-06-26', 2050, 2050, 2650, 1775, 0.7003),
('2004-07-10', 2100, 2100, 2712.5, 1850, 0.7235),
('2004-07-24', 2100, 2100, 2712.5, 1850, 0.7131),
('2004-08-07', 2100, 2100, 2725, 1850, 0.7038),
('2004-08-21', 2100, 2100, 2750, 1850, 0.725),
('2004-09-04', 2100, 2100, 2750, 1850, 0.6975),
('2004-09-18', 2100, 2100, 2775, 1850, 0.6986),
('2004-10-02', 2100, 2100, 2775, 1850, 0.7265),
('2004-10-16', 2175, 2125, 2750, 1950, 0.7303),
('2004-10-30', 2175, 2125, 2750, 1975, 0.7461),
('2004-11-13', 2200, 2225, 2775, 2000, 0.7648),
('2004-11-27', 2200, 2225, 2775, 2000, 0.7937),
('2004-12-11', 2200, 2225, 2775, 2100, 0.7512),
('2004-12-25', 2200, 2225, 2775, 2100, 0.7677),
('2005-01-08', 2200, 2225, 2775, 2100, 0.7625),
('2005-01-22', 2225, 2275, 2775, 2187.5, 0.7578),
('2005-02-05', 2225, 2275, 2775, 2187.5, 0.7697),
('2005-02-19', 2225, 2275, 2775, 2212.5, 0.7847),
('2005-03-05', 2225, 2275, 2775, 2212.5, 0.7826),
('2005-03-19', 2225, 2250, 2825, 2212.5, 0.7929),
('2005-04-02', 2225, 2250, 2825, 2212.5, 0.773),
('2005-04-16', 2200, 2225, 2775, 2125, 0.7667),
('2005-04-30', 2200, 2225, 2775, 2075, 0.7811),
('2005-05-14', 2175, 2225, 2825, 2125, 0.7647),
('2005-05-28', 2175, 2225, 2825, 2125, 0.7597),
('2005-06-11', 2200, 2225, 2825, 2050, 0.7648),
('2005-06-25', 2200, 2225, 2825, 2050, 0.7718),
('2005-07-09', 2225, 2250, 2825, 2150, 0.7381),
('2005-07-23', 2225, 2250, 2825, 2175, 0.7657),
('2005-08-06', 2250, 2275, 2850, 2175, 0.7697),
('2005-08-20', 2275, 2300, 2900, 2175, 0.752),
('2005-09-03', 2275, 2300, 2900, 2175, 0.7634),
('2005-09-17', 2287.5, 2325, 2900, 2175, 0.7693),
('2005-10-01', 2275, 2300, 2875, 2175, 0.7615),
('2005-10-15', 2250, 2300, 2900, 2112.5, 0.7518),
('2005-10-29', 2250, 2300, 2900, 2125, 0.7563),
('2005-11-12', 2237.5, 2262.5, 2900, 2050, 0.7325),
('2005-11-26', 2237.5, 2275, 2900, 2050, 0.736),
('2005-12-10', 2175, 2250, 2875, 2000, 0.7518),
('2005-12-24', 2175, 2250, 2875, 2000, 0.7306),
('2006-01-07', 2162.5, 2175, 2750, 1950, 0.7472),
('2006-01-21', 2162.5, 2175, 2750, 1950, 0.7488),
('2006-02-04', 2162.5, 2175, 2750, 1950, 0.7527),
('2006-02-18', 2200, 2200, 2750, 1912.5, 0.7389),
('2006-03-04', 2200, 2250, 2750, 1912.5, 0.7447),
('2006-03-18', 2150, 2150, 2700, 1887.5, 0.7359),
('2006-04-01', 2150, 2150, 2675, 1825, 0.7159),
('2006-04-15', 2100, 2125, 2650, 1800, 0.7302),
('2006-04-29', 2075, 2100, 2650, 1800, 0.7542),
('2006-05-13', 2075, 2100, 2675, 1800, 0.7769),
('2006-05-27', 2075, 2100, 2675, 1725, 0.759),
('2006-06-10', 2050, 2050, 2675, 1725, 0.745),
('2006-06-24', 2050, 2075, 2675, 1725, 0.7342),
('2006-07-08', 2075, 2100, 2675, 1700, 0.7464),
('2006-07-22', 2075, 2100, 2675, 1700, 0.7493),
('2006-08-05', 2075, 2075, 2650, 1650, 0.7618),
('2006-08-19', 2100, 2100, 2600, 1625, 0.7609),
('2006-09-02', 2100, 2100, 2600, 1625, 0.765),
('2006-09-16', 2125, 2075, 2600, 1625, 0.756),
('2006-09-30', 2225, 2075, 2600, 1650, 0.748),
('2006-10-14', 2225, 2125, 2625, 1650, 0.751),
('2006-10-28', 2300, 2200, 2625, 1700, 0.7645),
('2006-11-11', 2375, 2275, 2650, 1700, 0.7677),
('2006-11-25', 2575, 2500, 2700, 1800, 0.7751),
('2006-12-09', 2800, 2575, 2800, 1850, 0.7893),
('2006-12-23', 2850, 2800, 2800, 1850, 0.7862),
('2007-01-06', 2900, 2850, 2800, 1900, 0.7822),
('2007-01-20', 2925, 2850, 2900, 1975, 0.7906),
('2007-02-03', 3125, 3050, 2925, 2025, 0.773),
('2007-02-17', 3125, 3050, 2925, 2025, 0.7846),
('2007-03-03', 3150, 3100, 2975, 2025, 0.785),
('2007-03-17', 3300, 3200, 2975, 2025, 0.792),
('2007-03-31', 3500, 3375, 3050, 2100, 0.807),
('2007-04-14', 3700, 3700, 3100, 2150, 0.8324),
('2007-04-28', 4000, 4000, 3100, 2200, 0.825),
('2007-05-12', 4150, 4000, 3200, 2200, 0.8301),
('2007-05-26', 4250, 4050, 3200, 2200, 0.8199),
('2007-06-09', 4650, 4300, 3600, 2375, 0.8424),
('2007-06-23', 4950, 4525, 3950, 2750, 0.8472),
('2007-07-07', 5150, 4650, 4225, 3125, 0.8562),
('2007-07-21', 5150, 4650, 4450, 3125, 0.8805),
('2007-08-04', 5200, 4750, 4550, 3450, 0.8578),
('2007-08-18', 5050, 4750, 4700, 3500, 0.781),
('2007-09-01', 5000, 4750, 4700, 3650, 0.8214),
('2007-09-15', 4950, 4750, 4800, 3650, 0.8398),
('2007-09-29', 4950, 4750, 4950, 3750, 0.8827),
('2007-10-13', 5000, 4850, 4950, 3750, 0.8984),
('2007-10-27', 5000, 5050, 5000, 3850, 0.9119),
('2007-11-10', 4925, 4900, 5100, 4250, 0.9285),
('2007-11-24', 4925, 4850, 5450, 4250, 0.8736),
('2007-12-08', 4750, 4800, 5500, 4050, 0.8774),
('2007-12-22', 4500, 4800, 5500, 4050, 0.8621),
('2008-01-05', 4300, 4800, 5500, 4050, 0.8806),
('2008-01-19', 4250, 4400, 5300, 4050, 0.8765),
('2008-02-02', 4250, 4400, 5300, 4050, 0.8951),
('2008-02-16', 4000, 4550, 5250, 4050, 0.9042),
('2008-03-01', 4000, 4550, 5175, 4050, 0.9466),
('2008-03-15', 3950, 4750, 5175, 4100, 0.9434),
('2008-03-29', 3600, 4750, 5075, 4100, 0.9225),
('2008-04-12', 3500, 4550, 5050, 3950, 0.9318),
('2008-04-26', 3500, 4550, 5050, 3950, 0.9474),
('2008-05-10', 3450, 4500, 5000, 3925, 0.9417),
('2008-05-24', 3500, 4500, 5000, 3925, 0.958),
('2008-06-07', 3450, 4400, 5050, 4050, 0.9593),
('2008-06-21', 3500, 4400, 5050, 3975, 0.9517),
('2008-07-05', 3600, 4350, 5000, 4050, 0.962),
('2008-07-19', 3600, 4400, 5000, 4050, 0.9724),
('2008-08-02', 3600, 4350, 5000, 4050, 0.9374),
('2008-08-16', 3575, 4150, 5000, 3950, 0.8639),
('2008-08-30', 3300, 3600, 4600, 3600, 0.8639),
('2008-09-13', 3200, 3475, 4500, 3500, 0.8048),
('2008-09-27', 2850, 3050, 4250, 3250, 0.8311),
('2008-10-11', 2800, 3000, 4250, 3200, 0.6551),
('2008-10-25', 2400, 2850, 3875, 2850, 0.6514),
('2008-11-08', 2250, 2650, 3650, 2800, 0.6724),
('2008-11-22', 2150, 2450, 3300, 2750, 0.6186),
('2008-12-06', 2050, 2225, 3150, 2450, 0.6441),
('2008-12-20', 1950, 2100, 3150, 2150, 0.6856),
('2009-01-10', 1875, 1950, 2750, 1950, 0.707),
('2009-01-24', 1775, 1850, 2600, 1900, 0.6518),
('2009-02-07', 1750, 1850, 2450, 1850, 0.6521),
('2009-02-21', 1750, 1850, 2450, 1850, 0.6394),
('2009-03-07', 1800, 1900, 2450, 1850, 0.6428),
('2009-03-21', 1825, 1950, 2600, 1850, 0.6884),
('2009-04-04', 2000, 2050, 2400, 1800, 0.7141),
('2009-04-18', 1950, 2075, 2450, 1800, 0.7199),
('2009-05-02', 2000, 2200, 2550, 1925, 0.7274),
('2009-05-16', 2000, 2200, 2600, 1875, 0.7591),
('2009-05-30', 2000, 2200, 2575, 1925, 0.7912),
('2009-06-13', 2000, 2050, 2550, 1850, 0.8143),
('2009-06-27', 2025, 2050, 2600, 1900, 0.8048),
('2009-07-11', 2000, 2025, 2700, 1925, 0.7815),
('2009-07-25', 2025, 2000, 2700, 1950, 0.8156),
('2009-08-08', 2025, 2100, 2700, 1975, 0.8385),
('2009-08-22', 2125, 2225, 2750, 2125, 0.8254),
('2009-09-05', 2275, 2550, 2775, 2250, 0.8401),
('2009-09-19', 2412.5, 2800, 3100, 2350, 0.8702),
('2009-10-03', 2525, 2850, 3175, 2650, 0.8698),
('2009-10-17', 2650, 2850, 3250, 2800, 0.9222),
('2009-10-31', 2950, 3150, 3650, 3125, 0.9161),
('2009-11-14', 3350, 3500, 3875, 3625, 0.9254),
('2009-11-28', 3400, 3550, 4350, 3750, 0.9043),
('2009-12-12', 3400, 3550, 4400, 4150, 0.9155),
('2009-12-26', 3350, 3550, 4450, 4050, 0.8816),
('2010-01-09', 3175, 3350, 4250, 3850, 0.9154),
('2010-01-23', 2950, 3250, 4150, 3750, 0.9029),
('2010-02-06', 2750, 3150, 4025, 3725, 0.8675),
('2010-02-20', 2750, 3125, 4000, 3650, 0.8909),
('2010-03-06', 2837.5, 3175, 3800, 3650, 0.9007),
('2010-03-20', 2875, 3175, 3800, 3800, 0.9215),
('2010-04-03', 2950, 3300, 3850, 3800, 0.9164),
('2010-04-17', 3550, 3700, 3950, 3800, 0.9304),
('2010-05-01', 3550, 3800, 3975, 3800, 0.93),
('2010-05-15', 3600, 4025, 4050, 4050, 0.8944),
('2010-05-29', 3400, 3900, 4000, 4100, 0.8524),
('2010-06-12', 3200, 3850, 3950, 4050, 0.8449),
('2010-06-26', 3250, 3850, 3950, 4050, 0.8626),
('2010-07-10', 3150, 3500, 3950, 4050, 0.877),
('2010-07-24', 3125, 3250, 3950, 3950, 0.8919),
('2010-08-07', 2962.5, 3150, 3900, 3950, 0.9164),
('2010-08-21', 3000, 3150, 3900, 4050, 0.89),
('2010-09-04', 3100, 3312.5, 3925, 4100, 0.9081),
('2010-09-18', 3175, 3400, 3975, 4100, 0.9448),
('2010-10-02', 3200, 3475, 3975, 4200, 0.9657),
('2010-10-16', 3150, 3450, 4050, 4350, 0.9914),
('2010-10-30', 3100, 3500, 4100, 4350, 0.9761),
('2010-11-20', 3050, 3500, 4150, 4500, 0.9857),
('2010-11-27', 3050, 3525, 4200, 4500, 0.9735),
('2010-12-11', 3050, 3550, 4200, 4500, 0.9853),
('2010-12-25', 3100, 3550, 4150, 4500, 1.0039),
('2011-01-08', 3425, 3737.5, 4350, 4600, 0.9933),
('2011-01-22', 3575, 3862.5, 4400, 4650, 0.9861),
('2011-02-05', 3800, 4087.5, 4400, 4850, 1.0186),
('2011-02-19', 3900, 4250, 4400, 4800, 1.0126),
('2011-03-05', 4000, 4625, 4450, 4850, 1.0139),
('2011-03-19', 3900, 4650, 4400, 4900, 0.9936),
('2011-04-02', 3600, 4500, 4400, 4900, 1.0345),
('2011-04-16', 3687.5, 4100, 4400, 4800, 1.0524),
('2011-04-30', 3850, 4125, 4450, 4700, 1.09),
('2011-05-14', 3750, 4050, 4425, 4700, 1.067),
('2011-05-28', 3862.5, 4100, 4575, 4800, 1.0684),
('2011-06-11', 4100, 3925, 4525, 4800, 1.0598),
('2011-06-25', 3900, 3950, 4450, 4725, 1.054),
('2011-07-09', 3900, 3862.5, 4450, 4675, 1.0773),
('2011-07-23', 3806, 3787, 4472.5, 4675, 1.0849),
('2011-08-06', 3694, 3638.5, 4359, 4550, 1.0476),
('2011-08-20', 3550, 3529.5, 4450, 4450, 1.0338),
('2011-09-03', 3600, 3700, 4450, 4400, 1.0702),
('2011-09-17', 3525, 3487.5, 4300, 4300, 1.0345),
('2011-10-01', 3387.5, 3450, 4287.5, 4100, 0.9781),
('2011-10-15', 3337.5, 3425, 4187.5, 4050, 1.0192),
('2011-10-29', 3350, 3500, 3950, 4100, 1.0664),
('2011-11-12', 3350, 3600, 3875, 3850, 1.016),
('2011-11-26', 3450, 3575, 4012.5, 3800, 0.9699),
('2011-12-10', 3400, 3625, 3937.5, 3800, 1.0131),
('2011-12-24', 3450, 3675, 3950, 3775, 1.017),
('2012-01-07', 3475, 3637.5, 4087.5, 3875, 1.0221),
('2012-01-21', 3375, 3600, 4137.5, 3950, 1.0401),
('2012-02-04', 3388, 3600, 4038, 3900, 1.0682),
('2012-02-18', 3350, 3550, 4138, 3900, 1.0772),
('2012-03-03', 3275, 3525, 3950, 3750, 1.0793),
('2012-03-17', 3200, 3513, 3950, 3650, 1.0536),
('2012-03-31', 3200, 3450, 3950, 3650, 1.0402),
('2012-04-14', 3150, 3412.5, 3750, 3700, 1.0396),
('2012-04-28', 2900, 3175, 3650, 3300, 1.0369);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
