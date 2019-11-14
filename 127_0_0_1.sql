-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2014 at 07:34 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cdcol`
--

-- --------------------------------------------------------

--
-- Table structure for table `cds`
--

CREATE TABLE IF NOT EXISTS `cds` (
  `titel` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `interpret` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `cds`
--

INSERT INTO `cds` (`titel`, `interpret`, `jahr`, `id`) VALUES
('Beauty', 'Ryuichi Sakamoto', 1990, 1),
('Goodbye Country (Hello Nightclub)', 'Groove Armada', 2001, 4),
('Glee', 'Bran Van 3000', 1997, 5);
--
-- Database: `my_bot`
--
--
-- Database: `my_parks`
--

-- --------------------------------------------------------

--
-- Table structure for table `amenity`
--

CREATE TABLE IF NOT EXISTS `amenity` (
  `Amenity_ID` int(20) NOT NULL,
  `Park_ID` int(20) DEFAULT NULL,
  `Amenity_Type_ID` int(20) DEFAULT NULL,
  PRIMARY KEY (`Amenity_ID`),
  KEY `Park_ID` (`Park_ID`),
  KEY `Amenity_Type_ID` (`Amenity_Type_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `amenity_rank`
--

CREATE TABLE IF NOT EXISTS `amenity_rank` (
  `Amenity_ID` int(20) NOT NULL DEFAULT '0',
  `Park_ID` int(20) NOT NULL DEFAULT '0',
  `User_ID` int(20) NOT NULL DEFAULT '0',
  `Amenity_Rank` int(3) DEFAULT NULL,
  `Amenity_Rank_Updated_Date` date NOT NULL,
  `Amenity_Rank_Updated_Time` time NOT NULL,
  PRIMARY KEY (`Amenity_ID`,`Park_ID`,`User_ID`),
  KEY `Park_ID` (`Park_ID`),
  KEY `User_ID` (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `amenity_type`
--

CREATE TABLE IF NOT EXISTS `amenity_type` (
  `Amenity_Type_ID` int(20) NOT NULL,
  `Amenity_Type_Name` varchar(50) NOT NULL,
  PRIMARY KEY (`Amenity_Type_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `park`
--

CREATE TABLE IF NOT EXISTS `park` (
  `Park_ID` int(20) NOT NULL,
  `Park_Name` varchar(50) NOT NULL,
  `Website` varchar(150) DEFAULT NULL,
  `word_count` int(11) DEFAULT NULL,
  `social` int(11) DEFAULT NULL,
  `family` int(11) DEFAULT NULL,
  `play` int(11) DEFAULT NULL,
  `swing` int(11) DEFAULT NULL,
  `child` int(11) DEFAULT NULL,
  `party` int(11) DEFAULT NULL,
  `cook` int(11) DEFAULT NULL,
  `bbq` int(11) DEFAULT NULL,
  `pet` int(11) DEFAULT NULL,
  `barbecue` int(11) DEFAULT NULL,
  `picnic` int(11) DEFAULT NULL,
  `grill` int(11) DEFAULT NULL,
  `kid` int(11) DEFAULT NULL,
  `dogs` int(11) DEFAULT NULL,
  `animal` int(11) DEFAULT NULL,
  `cabin` int(11) DEFAULT NULL,
  `bathroom` int(11) DEFAULT NULL,
  `handicap` int(11) DEFAULT NULL,
  `restroom` int(11) DEFAULT NULL,
  `beer` int(11) DEFAULT NULL,
  `smoke` int(11) DEFAULT NULL,
  `free` int(11) DEFAULT NULL,
  `isolate` int(11) DEFAULT NULL,
  `peace` int(11) DEFAULT NULL,
  `quiet` int(11) DEFAULT NULL,
  `anti` int(11) DEFAULT NULL,
  `drink` int(11) DEFAULT NULL,
  `beach` int(11) DEFAULT NULL,
  `boat` int(11) DEFAULT NULL,
  `water` int(11) DEFAULT NULL,
  `sun` int(11) DEFAULT NULL,
  `fish` int(11) DEFAULT NULL,
  `wading` int(11) DEFAULT NULL,
  `wade` int(11) DEFAULT NULL,
  `pool` int(11) DEFAULT NULL,
  `river` int(11) DEFAULT NULL,
  `stream` int(11) DEFAULT NULL,
  `tube` int(11) DEFAULT NULL,
  `floa` int(11) DEFAULT NULL,
  `sprinkler` int(11) DEFAULT NULL,
  `hot` int(11) DEFAULT NULL,
  `bikini` int(11) DEFAULT NULL,
  `wet` int(11) DEFAULT NULL,
  `ski` int(11) DEFAULT NULL,
  `dive` int(11) DEFAULT NULL,
  `swim` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `walk` int(11) DEFAULT NULL,
  `exercise` int(11) DEFAULT NULL,
  `climb` int(11) DEFAULT NULL,
  `adventur` int(11) DEFAULT NULL,
  `athletic` int(11) DEFAULT NULL,
  `soccer` int(11) DEFAULT NULL,
  `softball` int(11) DEFAULT NULL,
  `basketball` int(11) DEFAULT NULL,
  `baseball` int(11) DEFAULT NULL,
  `sports` int(11) DEFAULT NULL,
  `volleyball` int(11) DEFAULT NULL,
  `jog` int(11) DEFAULT NULL,
  `bik` int(11) DEFAULT NULL,
  `backpack` int(11) DEFAULT NULL,
  `exciting` int(11) DEFAULT NULL,
  `explor` int(11) DEFAULT NULL,
  `hik` int(11) DEFAULT NULL,
  `trail` int(11) DEFAULT NULL,
  `look` int(11) DEFAULT NULL,
  `nature` int(11) DEFAULT NULL,
  `relax` int(11) DEFAULT NULL,
  `camp` int(11) DEFAULT NULL,
  `fire` int(11) DEFAULT NULL,
  `wildlife` int(11) DEFAULT NULL,
  `cave` int(11) DEFAULT NULL,
  `sight` int(11) DEFAULT NULL,
  `watch` int(11) DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `plant` int(11) DEFAULT NULL,
  `stargaze` int(11) DEFAULT NULL,
  `star` int(11) DEFAULT NULL,
  `pictur` int(11) DEFAULT NULL,
  `photo` int(11) DEFAULT NULL,
  `astronomy` int(11) DEFAULT NULL,
  `outside` int(11) DEFAULT NULL,
  `bird` int(11) DEFAULT NULL,
  `Park_Description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`Park_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `park`
--

INSERT INTO `park` (`Park_ID`, `Park_Name`, `Website`, `word_count`, `social`, `family`, `play`, `swing`, `child`, `party`, `cook`, `bbq`, `pet`, `barbecue`, `picnic`, `grill`, `kid`, `dogs`, `animal`, `cabin`, `bathroom`, `handicap`, `restroom`, `beer`, `smoke`, `free`, `isolate`, `peace`, `quiet`, `anti`, `drink`, `beach`, `boat`, `water`, `sun`, `fish`, `wading`, `wade`, `pool`, `river`, `stream`, `tube`, `floa`, `sprinkler`, `hot`, `bikini`, `wet`, `ski`, `dive`, `swim`, `active`, `walk`, `exercise`, `climb`, `adventur`, `athletic`, `soccer`, `softball`, `basketball`, `baseball`, `sports`, `volleyball`, `jog`, `bik`, `backpack`, `exciting`, `explor`, `hik`, `trail`, `look`, `nature`, `relax`, `camp`, `fire`, `wildlife`, `cave`, `sight`, `watch`, `view`, `plant`, `stargaze`, `star`, `pictur`, `photo`, `astronomy`, `outside`, `bird`, `Park_Description`) VALUES
(0, 'test', 'test', 211, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test'),
(1, 'Abilene KOA', 'http://www.yelp.com/biz/abilene-koa-abilene', 755, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 6, 1, 0, 0, 0, 0, 18, 0, 0, 0, 0, 3, 0, 1, 0, 'Abilene State Park offers several diverse outdoor recreation opportunities. From RV-compatible campsites with water and electric hookups to tent camping sites, screened shelters, a new Lake House Cabin, and even yurts (large canvas tents with furniture and flooring), Abilene State Park has lots of overnight camping options. There are trails for hiking and nature study, as well as a large swimming pool and pavilion built by the CCC decades ago, which still provides visitors with great summertime '),
(2, 'Abilene State Park - Lake Abilene', 'http://www.wildtexas.com/texas-parks/abilene-state-park', 499, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 5, 0, 3, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(3, 'Acme Park', 'http://www.wildtexas.com/texas-parks/acme-park', 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'this is acme park'),
(4, 'Acton State Historic Site', 'http://www.wildtexas.com/texas-parks/acton-state-historic-site', 308, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(5, 'Admiral Nimitz State Historic Site - National Muse', 'http://www.wildtexas.com/texas-parks/admiral-nimitz-state-historic-site', 748, 0, 0, 2, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 1, 0, NULL),
(6, 'Airport Park - Waco Lake', 'http://www.wildtexas.com/texas-parks/airport-park-waco-lake', 412, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(7, 'Alabama Creek Wildlife Management Area', 'http://www.wildtexas.com/texas-parks/alabama-creek-wildlife-management-area', 440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 3, 0, 2, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 2, 0, 1, 0, 6, 0, 11, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, NULL),
(8, 'Alazan Bayou Wildlife Management Area', 'http://www.wildtexas.com/texas-parks/alazan-bayou-wildlife-management-area', 393, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 3, 0, 13, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, NULL),
(9, 'Alderete Park', 'http://www.wildtexas.com/texas-parks/alderete-park', 256, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(10, 'Alibates Flint Quarries National Monument', 'http://www.wildtexas.com/texas-parks/alibates-flint-quarries-national-monument', 295, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(11, 'Alice City Lake Park - Alice City Lake', 'http://www.wildtexas.com/texas-parks/alice-city-lake-park', 254, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(12, 'Allcorn Park', 'http://www.wildtexas.com/texas-parks/allcorn-park', 255, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(13, 'Allen Park', 'http://www.wildtexas.com/texas-parks/allen-park', 266, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(14, 'Alley Creek Park - Lake O'' the Pines', 'http://www.wildtexas.com/texas-parks/alley-creek-park-lake-o-pines', 189, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(15, 'Alvarado Park Lake', 'http://www.wildtexas.com/texas-parks/alvarado-park-lake', 217, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(16, 'Amistad National Recreation Area - Amistad Reservo', 'http://www.wildtexas.com/texas-parks/amistad-national-recreation-area', 578, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4, 1, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4, 4, 0, 1, 0, 6, 0, 3, 0, 0, 0, 1, 0, 0, 7, 0, 0, 0, 0, 1, NULL),
(17, 'Amistad Park', 'http://www.wildtexas.com/texas-parks/amistad-park-san-antonio', 214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(18, 'Anahuac National Wildlife Refuge', 'http://www.fws.gov/southwest/refuges/texas/anahuac/index.html', 485, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 8, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 2, 7, NULL),
(19, 'Angelina National Forest', 'http://www.wildtexas.com/texas-parks/angelina-national-forest', 177, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(20, 'Angelina-Neches / Dam B Wildlife Management Area (', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=27', 1778, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 12, 13, 0, 21, 0, 0, 0, 12, 0, 1, 0, 0, 4, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 6, 8, 0, 3, 0, 9, 1, 19, 4, 0, 0, 6, 0, 0, 4, 0, 4, 0, 0, 3, NULL),
(21, 'Apache Creek Park', 'http://www.wildtexas.com/texas-parks/apache-creek-park', 239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(22, 'Apache/Zarzamora Creeks Linear Park', 'http://www.wildtexas.com/texas-parks/apache-zarzamora-creeks-linear-park', 254, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, NULL),
(23, 'Aquilla Lake Recreation Area', 'http://www.wildtexas.com/texas-parks/aquilla-lake', 341, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 3, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, NULL),
(24, 'Aransas National Wildlife Refuge', 'http://www.wildtexas.com/texas-parks/aransas-national-wildlife-refuge', 1020, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 2, 6, 4, 3, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 1, 0, 0, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 0, 0, 0, 3, 0, 17, 0, 0, 0, 5, 0, 0, 8, 0, 8, 0, 1, 13, NULL),
(25, 'Arbor Hills Nature Preserve', 'http://www.plano.gov/DEPARTMENTS/PARKSANDRECREATION/PARKS/Pages/arbor_hills.aspx', 517, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(26, 'Arkansas Bend', 'http://www.wildtexas.com/texas-parks/arkansas-bend', 303, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(27, 'Arnold Park / Ramirez Park', 'http://www.wildtexas.com/texas-parks/arnold-park-ramirez-park', 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(28, 'Arroyo Vista Park', 'http://www.wildtexas.com/texas-parks/arroyo-vista-park', 219, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(29, 'Atkinson Island Wildlife Management Area', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=57', 1740, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 13, 9, 0, 20, 1, 0, 0, 8, 0, 1, 0, 0, 3, 0, 1, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 4, 8, 0, 3, 0, 6, 1, 19, 4, 0, 0, 5, 0, 0, 4, 0, 3, 0, 0, 5, NULL),
(30, 'Atlanta State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/atlanta/', 2060, 3, 4, 0, 0, 2, 0, 2, 0, 1, 0, 3, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 1, 0, 1, 0, 0, 15, 10, 0, 27, 0, 0, 0, 9, 0, 1, 0, 0, 3, 0, 1, 3, 1, 5, 0, 3, 0, 3, 0, 0, 0, 0, 1, 0, 0, 1, 1, 4, 0, 0, 1, 6, 12, 0, 6, 0, 10, 1, 12, 4, 0, 0, 6, 0, 0, 5, 0, 3, 0, 0, 9, NULL),
(31, 'Attwater Prairie Chicken National Wildlife Refuge', 'http://www.fws.gov/southwest/refuges/texas/attwater/index.html', 487, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 8, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 2, 7, NULL),
(32, 'Averhoff Reservoir', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/averhoff/', 1858, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 17, 0, 42, 0, 0, 0, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(33, 'Balcones Canyonlands National Wildlife Refuge', 'http://www.fws.gov/refuges/profiles/index.cfm?id=21561', 978, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 6, 9, 0, 1, 2, 0, 6, 0, 2, 0, 1, 0, 0, 13, NULL),
(34, 'Balmorhea State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/balmorhea/', 2220, 3, 3, 1, 0, 4, 0, 2, 0, 1, 0, 2, 0, 1, 0, 2, 0, 0, 0, 1, 0, 0, 5, 0, 0, 0, 1, 0, 0, 12, 15, 0, 21, 0, 0, 6, 8, 0, 1, 0, 0, 3, 0, 2, 3, 3, 9, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 1, 0, 0, 4, 0, 0, 1, 4, 9, 2, 5, 0, 9, 1, 13, 4, 0, 0, 7, 0, 0, 4, 0, 3, 0, 0, 7, NULL),
(35, 'Bamberger Nature Park', 'http://www.wildtexas.com/texas-parks/bamberger-nature-park', 240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 5, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(36, 'Bandera City Park', 'http://www.wildtexas.com/texas-parks/bandera-city-park', 566, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 4, 3, 1, 0, 0, 0, 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4, 0, 2, 1, 4, 0, 4, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 2, NULL),
(37, 'Bandera County Medina Lake Park', 'http://www.wildtexas.com/texas-parks/bandera-county-medina-lake-park', 534, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 4, 0, 1, 0, 0, 0, 1, 0, 0, 7, 0, 4, 0, 0, 0, NULL),
(38, 'Bannister Wildlife Management Area', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=28', 1733, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 12, 9, 0, 20, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 6, 8, 0, 3, 0, 8, 1, 19, 4, 0, 0, 5, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(39, 'Barrington Living History Farm - Washington-on-the', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/barrington_farm/', 2162, 2, 5, 0, 0, 3, 0, 2, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 3, 0, 0, 0, 2, 0, 0, 12, 8, 0, 19, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 1, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 1, 4, 9, 0, 4, 0, 5, 1, 13, 4, 1, 0, 5, 2, 0, 6, 0, 3, 0, 0, 5, NULL),
(40, 'Barton Creek Greenbelt - Upper & Lower Units', 'http://www.wildtexas.com/texas-parks/barton-creek-greenbelt', 314, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 2, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(41, 'Barton Creek Wilderness Park', 'http://www.austinparks.org/apfweb/park.php?&parkId=208', 84, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(42, 'Barton Warnock Environmental Education Center', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/barton_warnock/', 2035, 3, 3, 0, 0, 2, 0, 2, 0, 1, 0, 1, 0, 1, 1, 2, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 1, 0, 0, 12, 8, 0, 19, 0, 0, 0, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 0, 0, 4, 10, 0, 4, 0, 6, 1, 12, 4, 0, 0, 6, 3, 0, 4, 0, 3, 0, 0, 5, NULL),
(43, 'Bastrop State Park', 'http://www.wildtexas.com/texas-parks/bastrop-state-park', 943, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 3, 0, 3, 1, 0, 4, 0, 0, 0, 0, 0, 7, 0, 0, 1, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 5, 0, 2, 0, 9, 0, 3, 0, 0, 0, 0, 0, 0, 7, 0, 6, 0, 0, 9, NULL),
(44, 'Battleship TEXAS State Historic Site', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/battleship_texas/', 2174, 3, 3, 0, 0, 2, 0, 2, 0, 1, 0, 3, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 1, 0, 1, 12, 9, 0, 19, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 5, 0, 3, 0, 0, 0, 0, 0, 0, 2, 0, 0, 4, 0, 0, 0, 4, 11, 1, 3, 0, 5, 1, 16, 4, 0, 0, 7, 0, 0, 4, 0, 3, 0, 0, 5, NULL),
(45, 'Baylor Creek Reservoir', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/baylor/', 1919, 2, 3, 0, 0, 7, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 13, 17, 2, 38, 0, 0, 0, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 1, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(46, 'Bear Springs Blossom', 'http://geocities.com/bearspringsblossom/', 131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(47, 'Bellaire Park', 'http://www.wildtexas.com/texas-parks/bellaire-park-san-antonio', 226, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(48, 'Belton Lakeview Park', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/belton/access2.phtml', 2088, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 22, 12, 0, 25, 0, 0, 0, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 1, 3, 0, 6, 1, 11, 4, 0, 7, 4, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(49, 'Benavides Park', 'http://www.wildtexas.com/texas-parks/benavides-park', 239, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(50, 'Bentsen-Rio Grande Valley State Park - World Birdi', 'http://wildtexas.com/parks/brgvsp.php', 1034, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 1, 3, 0, 0, 0, 1, 0, 0, 0, 0, 5, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 6, 7, 0, 2, 0, 7, 0, 4, 0, 0, 0, 1, 0, 0, 0, 0, 4, 0, 0, 14, NULL),
(51, 'Big Bend National Park', 'http://www.wildtexas.com/texas-parks/big-bend-national-park', 317, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 2, 0, 0, 0, 5, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 1, 0, 0, 0, NULL),
(52, 'Big Bend Ranch State Park - East', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/big_bend_ranch/', 2465, 3, 3, 0, 0, 2, 1, 2, 0, 1, 0, 1, 0, 1, 1, 2, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 1, 0, 0, 12, 8, 0, 21, 0, 0, 1, 10, 0, 1, 1, 0, 5, 0, 0, 3, 1, 4, 0, 3, 0, 3, 1, 0, 0, 0, 0, 0, 1, 0, 0, 13, 2, 0, 4, 10, 12, 0, 7, 0, 14, 1, 12, 4, 0, 0, 9, 1, 0, 5, 0, 5, 0, 0, 7, NULL),
(53, 'Big Bend Ranch State Park - West', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/big_bend_ranch/', 2465, 3, 3, 0, 0, 2, 1, 2, 0, 1, 0, 1, 0, 1, 1, 2, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 1, 0, 0, 12, 8, 0, 21, 0, 0, 1, 10, 0, 1, 1, 0, 5, 0, 0, 3, 1, 4, 0, 3, 0, 3, 1, 0, 0, 0, 0, 0, 1, 0, 0, 13, 2, 0, 4, 10, 12, 0, 7, 0, 14, 1, 12, 4, 0, 0, 9, 1, 0, 5, 0, 5, 0, 0, 7, NULL),
(54, 'Big Boggy National Wildlife Refuge', 'http://www.gorp.com/gorp/resource/us_nwr/tx_big_b.htm', 474, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 4, 1, 0, 1, 0, 5, 0, 9, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 1, 2, NULL),
(55, 'Big Creek Reservoir', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/big_creek/', 1915, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0, 12, 17, 5, 43, 0, 0, 1, 9, 0, 1, 1, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 1, 0, 4, 0, 3, 0, 0, 3, NULL),
(56, 'Big Lake Bottom Wildlife Management Area', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=1', 2651, 2, 3, 0, 0, 1, 0, 2, 0, 2, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 3, 1, 0, 12, 19, 1, 21, 0, 0, 0, 10, 0, 1, 0, 0, 4, 0, 2, 2, 2, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 5, 8, 0, 3, 0, 8, 1, 21, 4, 1, 0, 5, 0, 0, 4, 0, 4, 0, 0, 4, NULL),
(57, 'Big Sandy Creek Park - Lake Amon G. Carter', 'http://www.wildtexas.com/texas-parks/big-sandy-creek-park-lake-amon-g-carter', 285, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(58, 'Big Spring State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/big_spring/', 1886, 3, 3, 2, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 1, 0, 0, 12, 8, 2, 19, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 1, 3, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4, 0, 0, 0, 4, 10, 1, 6, 0, 5, 2, 12, 4, 1, 0, 8, 0, 0, 4, 0, 3, 0, 0, 6, NULL),
(59, 'Big Thicket National Preserve', 'http://www.nps.gov/bith/', 581, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2, 3, 0, 4, 0, 0, 0, 0, 0, 0, 1, 1, 2, 0, 0, 0, 2, 0, 0, 1, NULL),
(60, 'Black Gap Wildlife Management Area', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=2', 2751, 2, 3, 0, 0, 1, 0, 2, 0, 2, 0, 2, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 3, 0, 0, 0, 1, 1, 0, 12, 21, 1, 20, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 2, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 5, 8, 0, 3, 0, 13, 4, 25, 4, 0, 1, 5, 5, 0, 4, 0, 3, 0, 0, 4, NULL),
(61, 'Black Rock Park at Lake Buchanan', 'http://www.lcra.org/parks/developed_parks/black_rock.html', 1639, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 6, 2, 0, 0, 1, 6, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 1, 3, 14, 44, 1, 4, 0, 0, 0, 19, 2, 1, 2, 0, 2, 0, 0, 1, 1, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 1, 8, 0, 9, 4, 1, 1, 0, 1, 6, 3, 0, 1, 0, 2, 0, 3, 0, NULL),
(62, 'Blanco State Park', 'http://www.wildtexas.com/texas-parks/blanco-state-park', 703, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 3, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 4, 0, 1, 0, 8, 0, 3, 0, 0, 0, 1, 0, 0, 7, 0, 0, 0, 0, 0, NULL),
(63, 'Blossom Park', 'http://www.wildtexas.com/texas-parks/blossom-park', 226, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(64, 'Bluffview Park', 'http://www.recreation.gov/camping/bluffview-park/r/campgroundBookingWindow.do?contractCode=NRSO&parkId=73795', 408, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(65, 'Blunn Creek Greenbelt', 'http://www.austinparks.org/apfweb/park.php?&parkId=216', 400, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 2, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 5, 0, 0, 0, NULL),
(66, 'Blunn Creek Nature Preserve', 'http://www.ci.austin.tx.us/preserves/blunn.htm', 159, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(67, 'Boca Chica State Park', 'http://www.city-data.com/articles/Boca-Chica-State-Park-is-an-undeveloped.html', 619, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 1, 1, 0, 7, 0, 3, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 7, 1, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 3, NULL),
(68, 'Boerne City Lake Park', 'http://www.ci.boerne.tx.us/index.aspx?NID=169', 473, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 8, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(69, 'Boerne City Park', 'http://www.wildtexas.com/parks/boerne.php', 710, 0, 0, 2, 0, 1, 0, 0, 0, 1, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 2, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 19, 0, 16, 0, 3, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 2, 0, 0, 3, NULL),
(70, 'Boggy Creek Greenbelt', 'http://www.austinparks.org/apfweb/park.php?&parkId=218', 377, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 2, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 2, 0, 0, 0, 0, 0, 0, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 1, NULL),
(71, 'Bonham City Lake', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/bonham/', 1867, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 13, 13, 2, 41, 0, 0, 1, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(72, 'Bonham State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/bonham/', 1895, 3, 3, 0, 0, 2, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 1, 0, 0, 13, 8, 0, 20, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 5, 1, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 1, 4, 9, 1, 5, 0, 7, 1, 12, 4, 0, 0, 6, 0, 0, 4, 0, 3, 0, 0, 5, NULL),
(73, 'Bonham State Park Lake', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/bonhamsp/', 1894, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 2, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 1, 0, 0, 12, 15, 1, 40, 0, 0, 1, 8, 0, 2, 3, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 12, 4, 0, 0, 3, 0, 0, 4, 1, 3, 0, 0, 3, NULL),
(74, 'Bosque Park - Waco Lake', 'http://www.wildtexas.com/texas-parks/bosque-park-waco-lake', 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(75, 'Bowman Springs Park - Lake Arlington', 'http://www.wildtexas.com/texas-parks/bowman-springs-park-lake-arlington', 327, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 2, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, NULL),
(76, 'Brackenridge Park', 'http://www.wildtexas.com/texas-parks/brackenridge-park-san-antonio', 693, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 3, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 2, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1, 0, 0, 1, 2, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 3, 0, 2, 0, 2, 0, 0, 0, 0, 7, 1, 2, 0, 0, 3, NULL),
(77, 'Brady Creek Reservoir', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/brady_creek/', 2155, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 13, 24, 1, 45, 0, 0, 1, 8, 0, 1, 0, 0, 4, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 3, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 1, 3, NULL),
(78, 'Braunig Lake Park', 'http://www.wildtexas.com/texas-parks/braunig-lake-park', 744, 0, 0, 2, 0, 2, 0, 0, 1, 1, 0, 5, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 7, 0, 8, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 4, 0, 1, 0, 5, 0, 3, 0, 0, 0, 1, 3, 0, 7, 0, 0, 0, 0, 5, NULL),
(79, 'Brazoria National Wildlife Refuge', 'http://www.fws.gov/southwest/refuges/texas/texasmidcoast/brazoria.htm', 480, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 8, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 2, 7, NULL),
(80, 'Brazos Bend State Park', 'http://www.wildtexas.com/texas-parks/brazos-bend-state-park', 878, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1, 2, 0, 0, 0, 1, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, 7, 0, 1, 0, 7, 0, 4, 0, 0, 0, 1, 0, 0, 7, 0, 2, 0, 0, 7, NULL),
(81, 'Bright Leaf State Natural Area', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/bright_leaf/', 2161, 2, 4, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 8, 0, 21, 0, 0, 0, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 7, 1, 14, 4, 0, 0, 3, 1, 0, 5, 0, 3, 0, 0, 3, NULL),
(82, 'Brookeland / Lake Sam Rayburn KOA', 'http://www.koa.com/where/tx/43235/', 1125, 0, 1, 0, 0, 0, 0, 2, 0, 4, 0, 0, 0, 5, 0, 0, 12, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 3, 0, 0, 6, 0, 0, 2, 0, 0, 1, 0, 0, 5, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 4, 1, 0, 0, 39, 4, 0, 0, 0, 1, 3, 0, 0, 1, 0, 1, 0, 0, 1, NULL),
(83, 'Brooks Park', 'http://www.wildtexas.com/texas-parks/brooks-park', 232, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(84, 'Brushy Creek Park', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/lop/access2.phtml', 2838, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 33, 12, 1, 25, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 6, 3, 0, 5, 1, 11, 4, 0, 0, 4, 0, 0, 7, 0, 3, 0, 0, 3, NULL),
(85, 'Buckeye Park', 'http://www.wildtexas.com/texas-parks/buckeye-park', 213, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(86, 'Buckhorn Creek Park', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/lop/access2.phtml', 2838, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 33, 12, 1, 25, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 6, 3, 0, 5, 1, 11, 4, 0, 0, 4, 0, 0, 7, 0, 3, 0, 0, 3, NULL),
(87, 'Buescher State Park', 'http://wildtexas.com/parks/buescher.php', 587, 0, 0, 2, 0, 1, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 5, 0, 4, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 4, NULL),
(88, 'Buffalo Creek Reservoir', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/buffalo_creek/', 1772, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 13, 14, 0, 34, 0, 0, 1, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(89, 'Buffalo Lake National Wildlife Refuge', 'http://www.fws.gov/southwest/refuges/texas/buffalo.html', 485, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 8, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 2, 7, NULL),
(90, 'Buffalo Springs Reservoir', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/buffalo_springs/', 1914, 2, 3, 0, 0, 1, 0, 2, 0, 2, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 13, 2, 37, 0, 0, 0, 9, 0, 1, 1, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 4, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(91, 'Bull Creek District Park', 'http://www.austinparks.org/apfweb/park.php?&parkId=223', 397, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 2, 1, 0, 2, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 1, 1, 2, 1, 0, 2, 0, 0, 0, 0, 0, 0, 4, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, NULL),
(92, 'Bull Creek Park & Greenbelt - Upper & Lower Units', 'http://www.austinparks.org/apfweb/park.php?&parkId=221', 426, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2, 1, 0, 2, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 2, 0, 1, 0, 0, 0, 1, 7, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, NULL),
(93, 'Bullis County Park / Blanco Road Park', 'http://www.wildtexas.com/texas-parks/bullis-county-park', 331, 0, 1, 2, 0, 1, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 1, 0, NULL),
(94, 'Burroughs Park', 'http://www.cp4.hctx.net/Parks/burroughs/', 599, 0, 1, 6, 1, 3, 0, 0, 0, 1, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 4, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 2, 1, 0, 0, 14, 1, 0, 3, 0, 0, 0, 3, 6, 0, 4, 0, 0, 0, 1, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(95, 'Caddo Lake State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/caddo_lake/', 2100, 3, 4, 0, 0, 3, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 2, 0, 0, 0, 0, 0, 5, 0, 0, 0, 2, 0, 0, 20, 9, 0, 22, 0, 0, 0, 10, 0, 1, 0, 0, 3, 0, 0, 2, 2, 2, 1, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 5, 10, 1, 6, 0, 9, 1, 12, 4, 0, 0, 6, 1, 0, 5, 0, 3, 0, 0, 5, NULL),
(96, 'Caddo Lake Wildlife Management Area', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=104', 1764, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 13, 11, 0, 21, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 1, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 5, 9, 0, 3, 0, 8, 1, 18, 4, 0, 0, 6, 0, 0, 4, 0, 3, 0, 0, 4, NULL),
(97, 'Caddo National Grasslands Wildlife Management Area', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=4', 1819, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 2, 0, 0, 1, 0, 0, 0, 1, 1, 0, 13, 10, 0, 23, 0, 0, 0, 8, 1, 1, 0, 0, 3, 0, 0, 2, 2, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 5, 8, 0, 3, 0, 10, 1, 19, 4, 0, 0, 5, 0, 0, 4, 0, 3, 0, 0, 4, NULL),
(98, 'Caddoan Mounds State Historic Site', 'http://www.wildtexas.com/texas-parks/caddoan-mounds-state-historic-site', 269, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(99, 'Calaveras Lake Park', 'http://www.wildtexas.com/texas-parks/calaveras-lake-park', 486, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 4, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 1, 0, 4, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 2, NULL),
(100, 'Camargo Park', 'http://www.wildtexas.com/texas-parks/camargo-park', 246, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(101, 'Camp Bowie Memorial Park - 36th Division Memorial', 'http://www.wildtexas.com/texas-parks/camp-bowie-memorial-park', 284, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(102, 'Candy Abshier Wildlife Management Area', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=36', 2377, 2, 3, 0, 0, 1, 0, 2, 0, 2, 0, 2, 0, 1, 0, 1, 0, 0, 0, 2, 0, 0, 1, 0, 0, 0, 1, 1, 0, 13, 10, 0, 19, 0, 0, 0, 9, 0, 1, 0, 0, 3, 0, 1, 2, 3, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 4, 9, 1, 4, 0, 6, 2, 23, 4, 0, 4, 7, 0, 0, 4, 0, 3, 0, 0, 14, NULL),
(103, 'Canyon Lake Gorge', 'http://www.canyongorge.org/', 208, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(104, 'Canyon of the Eagles Park at Lake Buchanan', 'http://www.canyonoftheeagles.com/recreation/index.html', 363, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 1, 0, 4, 0, 3, 1, 0, 0, 0, 1, 2, 0, 0, 1, 0, 2, 0, 0, 0, NULL),
(105, 'Canyon Park - Canyon Lake', 'http://www.wildtexas.com/texas-parks/canyon-park-canyon-lake', 342, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, NULL),
(106, 'Canyon Park Beach - Canyon Lake', 'http://www.wildtexas.com/texas-parks/canyon-park-beach-canyon-lake', 356, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 1, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, NULL),
(107, 'Caprock Canyons State Park & Trailway', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/caprock_canyons/', 2582, 3, 3, 0, 0, 2, 0, 2, 0, 1, 0, 1, 0, 2, 0, 4, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 1, 0, 0, 14, 12, 2, 22, 0, 0, 0, 10, 0, 1, 0, 0, 3, 0, 0, 2, 1, 4, 0, 2, 0, 4, 1, 0, 0, 0, 0, 0, 1, 0, 0, 8, 0, 0, 1, 7, 28, 2, 4, 0, 8, 1, 14, 4, 0, 1, 9, 0, 0, 4, 0, 3, 0, 0, 5, NULL),
(108, 'Casa Navarro State Historic Site', 'http://www.thc.state.tx.us/hsites/hs_navarro.aspx?Site=Navarro', 786, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 4, 0, 1, 0, 0, 0, 0, 0, NULL),
(109, 'Cassiano Park', 'http://www.wildtexas.com/texas-parks/cassiano-park', 245, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(110, 'Cathedral Park', 'http://www.wildtexas.com/texas-parks/cathedral-park', 217, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(111, 'Cedar Breaks Park', 'http://www.recreation.gov/camping/cedar-breaks-park/r/campgroundDetails.do?contractCode=NRSO&parkId=71074', 798, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 5, 17, 2, 5, 0, 0, 0, 2, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 2, 6, 2, 0, 0, 1, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 3, 0, 0, 0, NULL),
(112, 'Cedar Creek Islands Wildlife Management Area', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=5', 1614, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 13, 8, 0, 20, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 4, 8, 0, 3, 0, 6, 1, 17, 4, 0, 0, 6, 0, 0, 4, 0, 3, 0, 0, 4, NULL),
(113, 'Cedar Hill State Park', 'http://wildtexas.com/parks/chsp.php', 851, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 3, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 4, 0, 2, 0, 0, 2, 0, 0, 0, 0, 0, 4, 0, 0, 1, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1, 0, 0, 3, 9, 2, 0, 0, 8, 0, 2, 0, 0, 0, 2, 0, 0, 0, 0, 4, 0, 0, 2, NULL),
(114, 'Cedar Point Recreation Area at Lake Buchanan', 'http://www.lcra.org/parks/recreation_areas/cedar_point.html', 1314, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 15, 37, 1, 5, 0, 0, 0, 19, 2, 1, 2, 0, 1, 0, 0, 1, 1, 2, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 1, 8, 0, 5, 1, 2, 1, 0, 1, 3, 3, 0, 1, 0, 1, 0, 0, 0, NULL),
(115, 'Cedar Ridge Park', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/belton/access2.phtml', 2088, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 22, 12, 0, 25, 0, 0, 0, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 1, 3, 0, 6, 1, 11, 4, 0, 7, 4, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(116, 'Cedron Creek Park', 'http://www.swf-wc.usace.army.mil/whitney/Recreation/Parks/Corpsparks.asp', 3190, 0, 1, 0, 0, 0, 0, 11, 8, 0, 0, 14, 4, 0, 0, 0, 4, 0, 0, 16, 0, 0, 4, 0, 0, 0, 0, 0, 11, 43, 25, 0, 2, 0, 0, 0, 7, 1, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2, 0, 1, 0, 0, 1, 2, 15, 0, 0, 0, 61, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(117, 'Centennial Park', 'http://www.wildtexas.com/texas-parks/centennial-park-friendswood', 277, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, NULL),
(118, 'Chamizal National Memorial', 'http://www.nps.gov/cham/', 690, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 4, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 2, 1, 4, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 3, 0, 0, 0, NULL),
(119, 'Champion Creek Reservoir', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/champion_creek/', 1870, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 13, 17, 2, 39, 0, 0, 1, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(120, 'Chaparral Wildlife Management Area', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=45', 1919, 2, 4, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 8, 0, 19, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 3, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 1, 5, 9, 0, 5, 0, 8, 1, 20, 4, 0, 0, 5, 1, 0, 4, 0, 3, 0, 0, 3, NULL),
(121, 'Choke Canyon State Park: Calliham Unit - Choke Can', 'http://www.wildtexas.com/texas-parks/choke-canyon-state-park-calliham-unit', 737, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 4, 0, 4, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 2, 3, 0, 0, 0, 10, 0, 5, 0, 0, 0, 1, 0, 0, 7, 0, 0, 0, 0, 6, NULL),
(122, 'Choke Canyon State Park: South Shore Unit - Choke ', 'http://www.wildtexas.com/texas-parks/choke-canyon-state-park-south-shore-unit', 744, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 1, 5, 0, 0, 0, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 1, 2, 2, 0, 0, 0, 5, 0, 6, 0, 0, 0, 1, 0, 0, 7, 0, 0, 0, 0, 5, NULL),
(123, 'Clear Lake Park', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/lavon/access2.phtml', 2446, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 27, 12, 0, 26, 0, 0, 0, 11, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 10, 3, 0, 5, 1, 11, 4, 0, 1, 3, 0, 0, 4, 0, 3, 0, 2, 3, NULL),
(124, 'Clear Springs Park', 'http://www.tpwd.state.tx.us/huntwild/wild/wildlife_trails/pineywoods/piney_east/texarkana/', 1728, 2, 2, 0, 0, 1, 0, 2, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 8, 0, 18, 0, 0, 0, 8, 0, 1, 0, 0, 5, 0, 0, 2, 3, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 1, 3, 22, 0, 3, 0, 5, 1, 31, 4, 0, 0, 7, 0, 0, 5, 0, 5, 0, 0, 8, NULL),
(125, 'Cleburne State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/cleburne/', 2115, 3, 4, 0, 0, 2, 0, 2, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 1, 0, 0, 15, 11, 0, 20, 0, 0, 0, 9, 0, 1, 0, 0, 3, 0, 1, 4, 2, 4, 1, 2, 0, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 6, 0, 0, 1, 4, 16, 1, 5, 0, 9, 2, 13, 4, 0, 0, 6, 0, 0, 4, 0, 3, 0, 0, 7, NULL),
(126, 'Coffee Mill Lake Recreation Area', 'http://www.fs.fed.us/r8/texas/recreation/caddo_lbj/coffeemill.shtml', 741, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 2, 3, 0, 0, 0, 0, 0, 0, 1, NULL),
(127, 'Coggin Park', 'http://www.wildtexas.com/texas-parks/coggin-park', 228, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(128, 'Coleto Creek Park', 'http://www.coletocreekpark.com/', 595, 0, 1, 2, 0, 0, 0, 0, 4, 0, 0, 4, 3, 0, 0, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 2, 1, 11, 0, 3, 0, 0, 1, 4, 1, 0, 0, 0, 3, 0, 0, 1, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 3, 0, 0, 0, 2, 4, 0, 4, 0, 6, 1, 1, 0, 0, 1, 4, 1, 0, 0, 0, 3, 0, 0, 0, NULL),
(129, 'Coleto Creek Park & Reservoir', 'http://www.gbra.org/coletocreekpark/default.aspx', 595, 0, 1, 2, 0, 0, 0, 0, 4, 0, 0, 4, 3, 0, 0, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 2, 1, 11, 0, 3, 0, 0, 1, 4, 1, 0, 0, 0, 3, 0, 0, 1, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 3, 0, 0, 0, 2, 4, 0, 4, 0, 6, 1, 1, 0, 0, 1, 4, 1, 0, 0, 0, 3, 0, 0, 0, NULL),
(130, 'Coliseum Oaks Park', 'http://www.wildtexas.com/texas-parks/coliseum-oaks-park', 226, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(131, 'Collins Gardens Park', 'http://www.wildtexas.com/texas-parks/collins-gardens-park', 247, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(132, 'Colorado Bend State Park', 'http://www.wildtexas.com/texas-parks/colorado-bend-state-park', 833, 0, 0, 1, 0, 2, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 2, 2, 1, 1, 0, 0, 0, 5, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 5, 3, 0, 0, 0, 6, 0, 4, 3, 0, 0, 1, 0, 0, 7, 0, 0, 0, 0, 1, NULL),
(133, 'Columbus Park', 'http://www.wildtexas.com/texas-parks/columbus-park', 236, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL);
INSERT INTO `park` (`Park_ID`, `Park_Name`, `Website`, `word_count`, `social`, `family`, `play`, `swing`, `child`, `party`, `cook`, `bbq`, `pet`, `barbecue`, `picnic`, `grill`, `kid`, `dogs`, `animal`, `cabin`, `bathroom`, `handicap`, `restroom`, `beer`, `smoke`, `free`, `isolate`, `peace`, `quiet`, `anti`, `drink`, `beach`, `boat`, `water`, `sun`, `fish`, `wading`, `wade`, `pool`, `river`, `stream`, `tube`, `floa`, `sprinkler`, `hot`, `bikini`, `wet`, `ski`, `dive`, `swim`, `active`, `walk`, `exercise`, `climb`, `adventur`, `athletic`, `soccer`, `softball`, `basketball`, `baseball`, `sports`, `volleyball`, `jog`, `bik`, `backpack`, `exciting`, `explor`, `hik`, `trail`, `look`, `nature`, `relax`, `camp`, `fire`, `wildlife`, `cave`, `sight`, `watch`, `view`, `plant`, `stargaze`, `star`, `pictur`, `photo`, `astronomy`, `outside`, `bird`, `Park_Description`) VALUES
(134, 'Comal Park - Canyon Lake', 'http://www.wildtexas.com/texas-parks/comal-park-canyon-lake', 452, 0, 0, 2, 0, 1, 0, 0, 0, 1, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 2, NULL),
(135, 'Comanche County Park', 'http://www.sanantonio.gov/sapar/comanchereservation.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(136, 'Comanche Lookout Park', 'http://www.wildtexas.com/texas-parks/comanche-lookout-park', 262, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 1, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, NULL),
(137, 'Commons Ford Park - Lake Austin', 'http://www.wildtexas.com/texas-parks/commons-ford-park-lake-austin', 454, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 2, 0, 1, 0, 3, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(138, 'Concepcion Park', 'http://www.wildtexas.com/texas-parks/concepcion-park', 236, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(139, 'Confederate Reunion Grounds / Fort Parker State Pa', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/confederate_reunion_grounds/', 2161, 2, 4, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 8, 0, 21, 0, 0, 0, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 7, 1, 14, 4, 0, 0, 3, 1, 0, 5, 0, 3, 0, 0, 3, NULL),
(140, 'Conner Park', 'http://www.wildtexas.com/texas-parks/conner-park', 265, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(141, 'Cooper Lake State Park: Doctor''s Creek Unit', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/cooper_lake/', 2045, 3, 3, 0, 0, 2, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 1, 0, 1, 14, 10, 0, 21, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 3, 1, 5, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 1, 5, 17, 0, 6, 0, 10, 2, 14, 4, 0, 1, 9, 0, 0, 4, 0, 3, 0, 0, 7, NULL),
(142, 'Cooper Lake State Park: South Sulphur Unit', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/cooper_lake/', 2045, 3, 3, 0, 0, 2, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 1, 0, 1, 14, 10, 0, 21, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 3, 1, 5, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 1, 5, 17, 0, 6, 0, 10, 2, 14, 4, 0, 1, 9, 0, 0, 4, 0, 3, 0, 0, 7, NULL),
(143, 'Cooper Wildlife Management Area', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=6', 1637, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 13, 9, 0, 21, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 6, 8, 0, 3, 0, 6, 1, 17, 4, 0, 0, 6, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(144, 'Copernicus Park', 'http://www.wildtexas.com/texas-parks/copernicus-park', 258, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(145, 'Copper Breaks State Park & Trailway', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/copper_breaks/', 1981, 3, 3, 1, 0, 2, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 4, 0, 0, 0, 1, 0, 0, 14, 10, 0, 20, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 5, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1, 0, 1, 4, 11, 0, 4, 0, 9, 2, 13, 4, 0, 0, 7, 0, 0, 4, 0, 3, 1, 0, 5, NULL),
(146, 'Copperas Creek Park', 'http://www.tripadvisor.com/ShowUserReviews-g55451-d139793-r48424995-Bastrop_State_Park-Bastrop_Texas.html', 2525, 0, 1, 4, 0, 1, 1, 0, 0, 1, 0, 0, 0, 5, 0, 0, 3, 1, 0, 1, 0, 0, 3, 0, 1, 1, 0, 1, 2, 1, 3, 0, 5, 0, 0, 14, 0, 0, 0, 0, 0, 43, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 1, 1, 0, 2, 7, 7, 5, 1, 0, 26, 0, 1, 0, 1, 0, 118, 0, 0, 4, 0, 4, 0, 0, 0, NULL),
(147, 'Crockett Park', 'http://www.sanantonio.gov/sapar/crockettreservations.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(148, 'Crownridge Canyon Natural Area', 'http://www.wildtexas.com/texas-parks/crownridge-canyon-natural-area', 410, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 4, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, NULL),
(149, 'Cuellar Park & Community Center', 'http://www.sanantonio.gov/sapar/cuellarreservations.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(150, 'D.R. Wintermann Wildlife Management Area', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=44', 1679, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 12, 11, 0, 19, 0, 0, 0, 9, 0, 1, 0, 0, 3, 0, 2, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 4, 8, 0, 3, 0, 6, 1, 16, 4, 0, 0, 5, 0, 0, 4, 0, 3, 0, 0, 4, NULL),
(151, 'Daingerfield State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/daingerfield/', 1949, 3, 4, 0, 0, 2, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 6, 0, 0, 0, 1, 0, 0, 15, 8, 0, 20, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 4, 1, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 1, 5, 12, 1, 8, 0, 7, 1, 12, 4, 0, 0, 6, 0, 0, 5, 0, 3, 0, 0, 5, NULL),
(152, 'Dallas Metro KOA', 'http://www.koakampgrounds.com/where/tx/43236/', 1187, 0, 0, 1, 0, 0, 0, 1, 0, 4, 0, 2, 2, 1, 0, 0, 14, 1, 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 3, 0, 0, 1, 0, 0, 7, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 2, 0, 0, 1, 43, 1, 0, 0, 0, 0, 4, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(153, 'Dallas Northeast / Caddo Mills KOA', 'http://www.koakampgrounds.com/where/tx/43236/', 1187, 0, 0, 1, 0, 0, 0, 1, 0, 4, 0, 2, 2, 1, 0, 0, 14, 1, 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 3, 0, 0, 1, 0, 0, 7, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 2, 0, 0, 1, 43, 1, 0, 0, 0, 0, 4, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(154, 'Damsite Park', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/texoma/access2.phtml', 2360, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 31, 12, 0, 26, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 5, 3, 0, 8, 1, 12, 4, 0, 6, 4, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(155, 'Davis Mountains State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/davis_mountains/', 2183, 3, 3, 0, 0, 2, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 1, 0, 0, 12, 9, 1, 19, 0, 0, 1, 8, 0, 1, 0, 0, 4, 0, 0, 2, 1, 3, 1, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1, 0, 1, 6, 13, 4, 6, 0, 8, 1, 14, 4, 1, 0, 8, 0, 0, 5, 0, 3, 0, 0, 5, NULL),
(156, 'Davy Crockett National Forest', 'http://www.fs.usda.gov/detail/texas/about-forest/districts/?cid=fswdev3_008441', 730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 2, 4, 0, 1, 0, 0, 0, 3, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 11, 1, 0, 0, 7, 0, 7, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, NULL),
(157, 'Deep Eddy Pool', 'http://www.deepeddy.org/', 328, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(158, 'Dellview Park', 'http://www.sanantonio.gov/sapar/dellviewreservations.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(159, 'Devil''s River State Natural Area', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/devils_river/', 2389, 3, 3, 1, 0, 1, 0, 2, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 3, 1, 0, 0, 1, 0, 0, 13, 12, 0, 19, 0, 0, 0, 36, 0, 1, 0, 0, 4, 0, 0, 2, 2, 3, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 6, 9, 0, 5, 0, 15, 1, 15, 6, 1, 0, 7, 1, 0, 4, 0, 3, 0, 0, 7, NULL),
(160, 'Devil''s Sinkhole State Natural Area', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/devils_sinkhole/', 2270, 3, 3, 0, 0, 4, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 1, 0, 0, 12, 8, 1, 19, 0, 0, 0, 12, 1, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 3, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 1, 7, 10, 0, 6, 0, 6, 1, 13, 13, 1, 3, 8, 0, 0, 4, 0, 3, 0, 0, 9, NULL),
(161, 'Dinosaur Valley State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/dinosaur_valley/', 2334, 3, 3, 0, 0, 2, 0, 2, 0, 1, 0, 3, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 8, 0, 0, 0, 1, 0, 0, 12, 10, 0, 20, 0, 0, 0, 13, 0, 1, 0, 0, 4, 0, 0, 2, 1, 5, 1, 2, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 1, 5, 13, 0, 4, 0, 8, 2, 15, 4, 0, 0, 7, 0, 0, 5, 0, 4, 0, 0, 6, NULL),
(162, 'Diversion Lake', 'http://www.wildtexas.com/texas-parks/wichita-falls-diversion-lake', 201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(163, 'Double Lake Recreation Area', 'http://www.recreation.gov/camping/double-lake-recreation-area/r/campgroundDetails.do?contractCode=NRSO&parkId=70845', 898, 0, 2, 0, 0, 0, 0, 0, 0, 1, 0, 6, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 3, 7, 16, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 1, 0, 0, 5, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 2, 4, 5, 2, 1, 2, 9, 8, 0, 0, 0, 0, 2, 0, 0, 1, 0, 3, 0, 1, 0, NULL),
(164, 'Eagle Mountain Lake', 'http://www.wildtexas.com/texas-parks/eagle-mountain-lake', 211, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(165, 'East Fork Park', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/lavon/access2.phtml', 2446, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 27, 12, 0, 26, 0, 0, 0, 11, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 10, 3, 0, 5, 1, 11, 4, 0, 1, 3, 0, 0, 4, 0, 3, 0, 2, 3, NULL),
(166, 'Ebenezer Park', 'http://www.recreation.gov/camping/ebenezer-park/r/campgroundDetails.do?contractCode=NRSO&parkId=73653', 785, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 2, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 2, 5, 14, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 3, 1, 6, 2, 0, 0, 6, 3, 1, 0, 0, 0, 2, 0, 0, 0, 0, 3, 0, 0, 2, NULL),
(167, 'Edinburg Scenic Wetlands - World Birding Center', 'http://www.theworldbirdingcenter.com/edinburg.html', 605, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 6, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 8, 0, 0, 0, 3, 0, 0, 2, 3, 2, 0, 0, 0, 0, 0, 0, 15, NULL),
(168, 'Eisenhower Birthplace State Historic Site', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/eisenhower_birthplace/', 2161, 2, 4, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 8, 0, 21, 0, 0, 0, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 7, 1, 14, 4, 0, 0, 3, 1, 0, 5, 0, 3, 0, 0, 3, NULL),
(169, 'Eisenhower Park', 'http://www.wildtexas.com/texas-parks/dwight-d-eisenhower-park', 526, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 2, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 4, 6, 0, 0, 0, 7, 0, 3, 0, 0, 0, 1, 0, 0, 7, 0, 0, 0, 0, 0, NULL),
(170, 'Eisenhower State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/eisenhower/', 1994, 3, 3, 0, 0, 2, 0, 2, 0, 1, 0, 1, 0, 1, 0, 1, 2, 0, 0, 0, 0, 0, 6, 0, 0, 0, 1, 0, 0, 13, 10, 0, 20, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 1, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 1, 5, 14, 0, 7, 0, 7, 1, 13, 4, 0, 0, 6, 0, 0, 4, 0, 3, 0, 0, 7, 'Abilene State Park offers several diverse outdoor recreation opportunities. From RV-compatible campsites with water and electric hookups to tent camping sites, screened shelters, a new Lake House Cabin, and even yurts (large canvas tents with furniture and flooring), Abilene State Park has lots of overnight camping options. There are trails for hiking and nature study, as well as a large swimming pool and pavilion built by the CCC decades ago, which still provides visitors with great summertime '),
(171, 'Elephant Mountain Wildlife Management Area', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=7', 2098, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 1, 0, 12, 9, 0, 19, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 5, 8, 0, 3, 0, 8, 2, 27, 4, 0, 1, 6, 1, 0, 4, 0, 3, 0, 0, 3, NULL),
(172, 'Elmendorf Park - Elmendorf Lake', 'http://www.sanantonio.gov/sapar/elmendorfreservations.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(173, 'Emma Long Park - Lake Austin', 'http://www.wildtexas.com/texas-parks/emma-long-park-lake-austin', 507, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 5, 0, 0, 0, 1, 2, 0, 1, 0, 5, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(174, 'Enchanted Rock State Natural Area', 'http://www.wildtexas.com/texas-parks/enchanted-rock-state-natural-area', 991, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 9, 8, 0, 1, 0, 11, 0, 3, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 1, NULL),
(175, 'Estero Llano Grande State Park - World Birding Cen', 'http://www.theworldbirdingcenter.com/estero.html', 727, 3, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 6, 0, 3, 0, 3, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 14, NULL),
(176, 'Krause Springs', 'http://www.yelp.com/biz/krause-springs-spicewood', 10626, 0, 8, 2, 17, 7, 1, 0, 11, 2, 1, 9, 2, 29, 2, 1, 0, 7, 0, 5, 17, 2, 5, 1, 4, 2, 0, 11, 2, 2, 89, 10, 6, 2, 0, 59, 5, 1, 5, 19, 0, 12, 0, 2, 4, 2, 68, 1, 7, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 4, 2, 10, 1, 8, 51, 10, 1, 14, 1, 8, 141, 1, 0, 11, 1, 6, 0, 0, 1, NULL),
(177, 'Eugene McCray Park - Lake Arlington', 'http://www.wildtexas.com/texas-parks/eugene-mccray-park-lake-arlington', 287, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, NULL),
(178, 'Fairfield Lake State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/fairfield_lake/', 1986, 3, 3, 0, 0, 2, 0, 2, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 1, 0, 0, 13, 11, 0, 28, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 1, 4, 1, 3, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 0, 1, 5, 10, 0, 5, 0, 7, 1, 12, 4, 0, 1, 6, 1, 0, 4, 0, 3, 0, 0, 6, NULL),
(179, 'Falcon Reservoir', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/falcon/', 2037, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 14, 16, 1, 47, 0, 0, 2, 9, 1, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 5, 0, 3, 0, 0, 3, NULL),
(180, 'Falcon State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/falcon/', 1878, 3, 3, 0, 0, 2, 0, 2, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 1, 0, 0, 14, 9, 0, 21, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 3, 1, 3, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 4, 10, 0, 5, 0, 7, 1, 12, 4, 0, 0, 6, 0, 0, 4, 0, 3, 0, 0, 6, NULL),
(181, 'Fannin Battleground State Historic Site', 'http://www.visitfanninbattleground.com/index.aspx?page=6', 246, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 1, 0, 1, 0, 0, 0, NULL),
(182, 'Fanthorp Inn State Historic Site', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/fanthorp_inn/', 1802, 3, 3, 0, 0, 1, 0, 2, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 1, 0, 0, 12, 8, 3, 19, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 4, 11, 0, 3, 0, 5, 1, 12, 4, 0, 0, 6, 0, 0, 4, 0, 3, 0, 0, 5, NULL),
(183, 'Fayette County Reservoir', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/fayette/', 2119, 2, 3, 0, 0, 2, 0, 2, 0, 1, 0, 2, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 12, 21, 4, 50, 0, 0, 1, 9, 0, 1, 1, 0, 3, 0, 0, 2, 1, 2, 1, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 1, 3, 0, 5, 1, 11, 4, 0, 0, 3, 2, 0, 4, 0, 3, 0, 0, 3, NULL),
(184, 'Flatrock Park', 'http://www.recreation.gov/campgroundDetails.do?contractCode=NRSO&parkId=71170', 688, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 5, 20, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 1, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 1, 2, 0, 1, 4, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 3, 0, 0, 0, NULL),
(185, 'Fort Boggy State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/fort_boggy/', 1840, 3, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 1, 0, 0, 14, 8, 2, 22, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 3, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 1, 5, 9, 0, 4, 0, 5, 1, 12, 4, 0, 0, 6, 0, 0, 4, 0, 3, 0, 0, 5, NULL),
(186, 'Fort Davis National Historic Site', 'http://www.nps.gov/foda/index.htm', 710, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 3, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1, 3, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, NULL),
(187, 'Fort Griffin State Historic Site', 'http://www.wildtexas.com/texas-parks/fort-griffin-state-historic-site', 481, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 7, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, NULL),
(188, 'Fort Lancaster State Historic Site', 'http://www.thc.state.tx.us/hsites/hs_lancaster.aspx?Site=Lancaster', 786, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 4, 0, 1, 0, 0, 0, 0, 0, NULL),
(189, 'Fort Leaton State Historic Site', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/fort_leaton/', 1970, 3, 3, 0, 0, 2, 0, 2, 0, 1, 0, 2, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 1, 0, 0, 12, 8, 0, 19, 0, 0, 0, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 4, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 0, 0, 4, 10, 0, 4, 0, 6, 1, 12, 4, 0, 0, 6, 0, 0, 4, 0, 3, 0, 0, 5, NULL),
(190, 'Fort McKavett State Historic Site', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/fort_mckavett/', 2161, 2, 4, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 8, 0, 21, 0, 0, 0, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 7, 1, 14, 4, 0, 0, 3, 1, 0, 5, 0, 3, 0, 0, 3, NULL),
(191, 'Fort Phantom Hill Lake', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/fort_phantom/', 1998, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 15, 17, 2, 42, 0, 0, 1, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 5, 0, 3, 0, 0, 3, NULL),
(192, 'Fort Richardson State Park & Historic Site', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/fort_richardson/', 2290, 3, 3, 0, 0, 2, 0, 3, 0, 1, 1, 2, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 5, 0, 0, 0, 1, 0, 0, 12, 9, 1, 23, 1, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 4, 0, 3, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 1, 6, 30, 0, 4, 0, 7, 1, 14, 4, 0, 0, 6, 0, 0, 4, 0, 3, 0, 1, 5, NULL),
(193, 'Franklin Mountains State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/franklin/', 2568, 3, 3, 0, 0, 2, 0, 2, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 1, 0, 0, 12, 10, 1, 20, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 1, 2, 1, 2, 1, 2, 0, 6, 0, 0, 0, 0, 0, 2, 0, 0, 0, 4, 0, 0, 1, 8, 15, 0, 4, 0, 9, 2, 14, 4, 1, 0, 6, 0, 0, 4, 0, 3, 0, 0, 9, NULL),
(194, 'Freisenhahn Park', 'http://www.sanantonio.gov/sapar/friesenhahnreservations.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(195, 'Friedrich Wilderness Park', 'http://wildtexas.com/parks/fwp.php', 648, 0, 0, 1, 0, 0, 0, 0, 0, 2, 0, 2, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 13, 0, 2, 0, 3, 0, 2, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 3, NULL),
(196, 'Fritz Hughes Park - Lake Austin', 'http://www.wildtexas.com/texas-parks/fritz-hughes-park-lake-austin', 326, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 2, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, NULL),
(197, 'Fulton Mansion State Historic Site', 'http://www.thc.state.tx.us/hsites/hs_fulton.aspx?Site=Fulton', 786, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 4, 0, 1, 0, 0, 0, 0, 0, NULL),
(198, 'Galveston Island State Park', 'http://wildtexas.com/parks/galvisp.php', 735, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 3, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 2, 0, 0, 0, 6, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 7, NULL),
(199, 'Garner State Park', 'http://www.wildtexas.com/texas-parks/garner-state-park', 716, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 0, 0, 1, 9, 0, 4, 0, 0, 1, 0, 0, 0, 7, 0, 0, 0, 0, 1, NULL),
(200, 'Gene Howe Wildlife Management Area', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=8', 1891, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 12, 9, 0, 20, 0, 0, 0, 9, 0, 1, 0, 0, 6, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 5, 8, 0, 3, 0, 8, 1, 22, 4, 0, 0, 6, 2, 0, 5, 0, 6, 0, 0, 3, NULL),
(201, 'Gibbons Creek Reservoir', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/gibbons_creek/', 1985, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 14, 2, 45, 0, 0, 1, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 1, 0, 4, 0, 3, 0, 0, 3, NULL),
(202, 'Gilbert Garza Park', 'http://www.sanantonio.gov/sapar/garzapark.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(203, 'Gladewater City Lake', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/gladewater/', 1866, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 13, 21, 3, 41, 0, 0, 1, 8, 0, 1, 0, 0, 3, 0, 0, 2, 3, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 4, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(204, 'Golden Community Park', 'http://www.sanantonio.gov/sapar/goldenreservations.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(205, 'Goliad State Park /  Mission Espíritu Santo State ', 'http://wildtexas.com/parks/gshp.php', 807, 0, 0, 1, 0, 0, 0, 0, 0, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 3, 0, 0, 0, 0, 2, 0, 0, 0, 1, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 5, 0, 3, 0, 4, 0, 2, 0, 1, 0, 1, 1, 0, 0, 0, 2, 0, 0, 3, NULL),
(206, 'Goose Island State Park', 'http://wildtexas.com/parks/gisp.php', 678, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 3, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 2, 1, 0, 0, 8, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 6, NULL),
(207, 'Government Canyon State Natural Area', 'http://www.wildtexas.com/texas-parks/government-canyon-state-natural-area', 643, 0, 0, 2, 0, 0, 0, 0, 0, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 5, 0, 0, 0, 5, 0, 3, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, NULL),
(208, 'Governor Hogg Shrine Historic Site', 'http://beta-www.tpwd.state.tx.us/state-parks/historic-sites/governor-hogg-shrine-historic-site', 1533, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 8, 0, 18, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(209, 'Granger Lake', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/granger/', 2057, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 16, 0, 45, 0, 0, 1, 12, 0, 2, 0, 0, 3, 0, 0, 2, 1, 2, 1, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 5, 0, 3, 0, 0, 3, NULL),
(210, 'Granger Wildlife Management Area', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/granger/access.phtml', 1934, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 1, 0, 0, 19, 13, 0, 26, 0, 0, 0, 11, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 9, 0, 3, 0, 6, 1, 13, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(211, 'Grapevine Lake', 'http://www.swf-wc.usace.army.mil/grapevine/', 446, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, NULL),
(212, 'Greenbelt Reservoir', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/greenbelt/', 2117, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 13, 21, 2, 41, 0, 0, 1, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(213, 'Guadalupe Delta Wildlife Management Area', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=37', 2025, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 14, 14, 0, 22, 0, 0, 0, 14, 0, 1, 0, 0, 4, 0, 4, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 5, 9, 0, 3, 0, 7, 1, 21, 4, 0, 0, 6, 0, 0, 4, 0, 4, 0, 0, 5, NULL),
(214, 'Guadalupe Mountains National Park', 'http://www.nps.gov/gumo/', 597, 3, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 3, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 5, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 3, 0, 0, 1, NULL),
(215, 'Guadalupe Park - Canyon Lake', 'http://www.wildtexas.com/texas-parks/guadalupe-park-canyon-lake', 319, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, NULL),
(216, 'Guadalupe River State Park', 'http://www.wildtexas.com/texas-parks/guadalupe-river-state-park', 803, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 2, 0, 0, 0, 18, 0, 1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 5, 5, 0, 0, 1, 11, 0, 4, 0, 0, 0, 1, 0, 0, 8, 0, 0, 0, 0, 2, NULL),
(217, 'Gus Engeling Wildlife Management Area', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=10', 3300, 2, 3, 1, 0, 1, 0, 2, 0, 2, 0, 2, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 3, 1, 0, 12, 12, 1, 24, 0, 0, 0, 10, 0, 1, 0, 0, 5, 0, 3, 2, 1, 2, 0, 3, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 6, 9, 1, 6, 0, 8, 1, 49, 4, 0, 2, 7, 4, 0, 4, 0, 4, 0, 0, 5, NULL),
(218, 'Hagerman National Wildlife Refuge', 'http://www.fws.gov/southwest/refuges/texas/hagerman/', 485, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 8, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 2, 7, NULL),
(219, 'Hamilton Pool Nature Preserve', 'http://www.wildtexas.com/texas-parks/hamilton-pool-nature-preserve', 816, 0, 0, 1, 0, 0, 0, 1, 0, 2, 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 8, 1, 1, 0, 0, 19, 2, 2, 0, 0, 0, 1, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 3, 8, 0, 10, 0, 5, 1, 1, 2, 0, 0, 0, 1, 0, 7, 0, 1, 0, 0, 1, NULL),
(220, 'Hanks Creek Park', 'http://www.recreation.gov/camping/hanks-creek/r/campgroundDetails.do?contractCode=NRSO&parkId=71188', 732, 0, 0, 3, 0, 0, 0, 0, 0, 2, 0, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 4, 17, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 3, 0, 0, 3, 1, 1, 2, 0, 0, 6, 3, 1, 0, 0, 0, 3, 0, 0, 0, 0, 3, 0, 0, 2, NULL),
(221, 'Hardberger Park', 'http://www.sanantonio.gov/sapar/hardbergerpark.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(222, 'Harlingen Arroyo Colorado / Hugh Ramsey Park - Wor', 'http://www.theworldbirdingcenter.com/harlingen.html', 586, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 5, 0, 7, 0, 0, 0, 1, 0, 0, 0, 4, 2, 0, 0, 0, 0, 0, 0, 12, NULL),
(223, 'HemisFair Park', 'http://www.sanantonio.gov/sapar/hemisfairparkreservations.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(224, 'Heritage Duck Pond Park', 'http://www.sanantonio.gov/sapar/heritageduckpondreservations.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(225, 'Hickory Creek Park', 'http://www.swf-wc.usace.army.mil/lewisville/Recreation/Parks/Corpsparks.asp', 837, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 2, 3, 1, 0, 0, 0, 1, 0, 2, 0, 0, 4, 0, 0, 0, 0, 0, 1, 7, 8, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 3, 0, 0, 0, 13, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL),
(226, 'Highview Park', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/bardwell/access.phtml#pointe', 1972, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 16, 12, 0, 26, 0, 0, 0, 8, 1, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 12, 4, 0, 0, 10, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(227, 'Hill Country State Natural Area', 'http://www.wildtexas.com/texas-parks/hill-country-state-natural-area', 756, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 2, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 2, 9, 1, 0, 0, 10, 0, 3, 0, 0, 0, 2, 0, 0, 7, 0, 0, 0, 0, 1, NULL),
(228, 'Hippie Hollow Park', 'http://www.hippiehollow.com/', 367, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 1, 0, 0, 0, 2, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2, 0, 0, 0, NULL),
(229, 'Hog Creek Wildlife Management Area', 'http://www.wildtexas.com/texas-parks/hog-creek-wildlife-management-area', 177, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(230, 'Holiday Park', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/benbrook/access.phtml#pointb', 1908, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 16, 13, 0, 25, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 4, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(231, 'Honey Creek State Natural Area', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/honey_creek/', 1881, 3, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 1, 0, 0, 12, 8, 0, 20, 0, 0, 0, 15, 0, 1, 0, 0, 3, 0, 0, 2, 2, 3, 0, 3, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 5, 10, 0, 6, 0, 6, 1, 12, 4, 0, 1, 6, 0, 0, 4, 0, 3, 0, 0, 5, NULL),
(232, 'Hords Creek Reservoir', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/hords_creek/', 1876, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 2, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 16, 4, 42, 0, 0, 1, 8, 0, 1, 2, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 1, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(233, 'Hornsby Bend Bird Observatory', 'http://www.hornsbybend.org/', 728, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 4, 0, 2, 0, 1, 0, 0, 0, 0, 26, NULL),
(234, 'Houston County Lake', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/houston_county/', 1781, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 2, 0, 0, 12, 14, 3, 34, 0, 0, 1, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(235, 'Hubbard Creek Reservoir', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/hubbard_creek/', 1971, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 13, 18, 1, 42, 0, 0, 1, 8, 0, 1, 1, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 1, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(236, 'Hueco Tanks State Historic Site', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/hueco_tanks/', 2240, 3, 3, 0, 0, 2, 0, 2, 0, 4, 0, 3, 0, 2, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 1, 0, 0, 12, 9, 1, 19, 0, 0, 1, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 3, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 1, 6, 12, 0, 5, 0, 10, 4, 14, 4, 0, 3, 7, 0, 1, 5, 0, 3, 0, 0, 8, NULL),
(237, 'Huntsville State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/huntsville/', 2097, 3, 4, 0, 0, 2, 0, 2, 0, 1, 0, 1, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 1, 0, 0, 16, 8, 0, 21, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 1, 2, 1, 4, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 1, 5, 12, 0, 6, 0, 7, 1, 12, 4, 0, 0, 6, 0, 0, 4, 0, 3, 0, 0, 8, NULL),
(238, 'Indian Lodge at Fort Davis', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/indian_lodge/', 2038, 3, 3, 0, 0, 1, 0, 2, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 1, 0, 0, 12, 9, 1, 19, 0, 0, 1, 8, 0, 1, 0, 0, 4, 0, 0, 2, 1, 4, 1, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 5, 12, 2, 5, 1, 5, 1, 14, 4, 0, 0, 6, 0, 0, 4, 0, 3, 0, 0, 5, NULL),
(239, 'Indian Mounds Wilderness Area - Sabine National Fo', 'http://www.fs.fed.us/r8/texas/recreation/sabine/indianmounds.shtml', 741, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 2, 3, 0, 0, 0, 0, 0, 0, 1, NULL),
(240, 'Inks Lake State Park', 'http://www.wildtexas.com/texas-parks/inks-lake-state-park', 783, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 4, 5, 1, 0, 0, 7, 0, 5, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 3, NULL),
(241, 'J Street Park', 'http://www.sanantonio.gov/sapar/jstreetreservations.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(242, 'J.B. Thomas Reservoir', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/j_b_thomas/', 1822, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 13, 18, 1, 34, 0, 0, 1, 10, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 1, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(243, 'J.D. Murphree Wildlife Management Area', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=40', 2983, 2, 5, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 2, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 14, 38, 1, 27, 1, 0, 0, 10, 0, 1, 0, 0, 3, 0, 13, 2, 4, 2, 0, 3, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 4, 8, 0, 3, 0, 6, 1, 24, 4, 0, 2, 8, 7, 0, 4, 0, 3, 0, 0, 8, NULL),
(244, 'Jackson Hill Park', 'http://www.samrayburn.com/camping--jackson-hill-park-and-marina/87', 382, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 4, 3, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 4, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 2, 0, 0, 0, NULL),
(245, 'James E. Daughtrey Wildlife Management Area', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=46', 2122, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 15, 17, 0, 21, 0, 0, 0, 10, 0, 1, 0, 0, 4, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 4, 9, 0, 4, 0, 8, 2, 22, 4, 0, 0, 6, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(246, 'Jim Chapman Lake / Cooper Lake', 'http://www.swf-wc.usace.army.mil/cooper/', 547, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 8, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 1, 2, 0, 0, 5, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(247, 'Jim Hogg Historic Site', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/jim_hogg/', 1533, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 8, 0, 18, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(248, 'Joe Pool Lake', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/joe_pool/', 1909, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 14, 0, 37, 0, 0, 4, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(249, 'Johnson Creek Greenbelt', 'http://www.austinparks.org/apfweb/park.php?&parkId=265', 385, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 2, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, NULL),
(250, 'Johnson Creek Park', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/lop/access2.phtml', 2838, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 33, 12, 1, 25, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 6, 3, 0, 5, 1, 11, 4, 0, 0, 4, 0, 0, 7, 0, 3, 0, 0, 3, NULL),
(251, 'Junction / North Llano River KOA', 'http://www.koakampgrounds.com/where/tx/43142/index.htm', 432, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 16, 1, 0, 0, 0, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(252, 'Juniper Point Park', 'http://www.recreation.gov/camping/juniper-point/r/campgroundDetails.do?contractCode=NRSO&parkId=73233', 844, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 2, 2, 6, 22, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 4, 7, 2, 0, 1, 7, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 3, 0, 0, 2, NULL),
(253, 'Keechi Creek Wildlife Management Area', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=11', 2083, 2, 3, 0, 0, 1, 0, 2, 0, 2, 0, 2, 0, 1, 0, 2, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 16, 0, 20, 0, 0, 0, 10, 0, 1, 0, 0, 4, 0, 1, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 4, 8, 0, 3, 0, 6, 1, 19, 4, 0, 0, 4, 1, 0, 4, 0, 3, 0, 0, 3, NULL),
(254, 'Kerr Wildlife Management Area', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=12', 1856, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 12, 10, 0, 21, 0, 0, 0, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 4, 8, 0, 3, 0, 7, 1, 31, 4, 0, 1, 5, 0, 0, 4, 0, 3, 0, 0, 5, NULL),
(255, 'Kerrville-Schreiner Park', 'http://wildtexas.com/parks/kssp.php', 460, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 6, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 4, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 0, 0, 0, 5, 0, 4, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(256, 'Kickapoo Cavern State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/kickapoo_cavern/', 2191, 3, 3, 0, 0, 2, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 1, 0, 0, 12, 9, 0, 19, 0, 0, 0, 12, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 3, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 1, 9, 11, 0, 4, 0, 9, 1, 12, 24, 0, 1, 7, 0, 0, 4, 0, 3, 0, 0, 8, NULL),
(257, 'Kickapoo Reservoir', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/kickapoo/', 1764, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 13, 13, 0, 35, 0, 0, 1, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(258, 'Kurth Reservoir', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/kurth/', 1926, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 14, 6, 44, 0, 0, 1, 8, 0, 1, 0, 0, 4, 0, 0, 2, 1, 2, 1, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(259, 'Lacy Point - Waco Lake', 'http://www.wildtexas.com/texas-parks/lacy-point-access-waco-lake', 298, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(260, 'Lady Bird Johnson Park', 'http://www.sanantonio.gov/sapar/lbjparkreservations.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(261, 'Laguna Atascosa National Wildlife Refuge', 'http://www.fws.gov/refuges/profiles/index.cfm?id=21553', 580, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 4, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 3, 0, 1, 0, 1, 0, 0, 4, NULL),
(262, 'Lake Arrowhead State Park', 'http://www.wildtexas.com/texas-parks/lake-arrowhead-state-park', 577, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 1, 0, 8, 0, 3, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, NULL),
(263, 'Lake Athens', 'http://www.wildtexas.com/texas-parks/lake-athens', 250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(264, 'Lake B.A. Steinhagen', 'http://www.wildtexas.com/texas-parks/lake-b-a-steinhagen', 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(265, 'Lake Balmorhea', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/balmorhea/', 1808, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 14, 15, 2, 36, 0, 0, 1, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(266, 'Lake Bardwell', 'http://www.wildtexas.com/texas-parks/lake-bardwell', 171, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL);
INSERT INTO `park` (`Park_ID`, `Park_Name`, `Website`, `word_count`, `social`, `family`, `play`, `swing`, `child`, `party`, `cook`, `bbq`, `pet`, `barbecue`, `picnic`, `grill`, `kid`, `dogs`, `animal`, `cabin`, `bathroom`, `handicap`, `restroom`, `beer`, `smoke`, `free`, `isolate`, `peace`, `quiet`, `anti`, `drink`, `beach`, `boat`, `water`, `sun`, `fish`, `wading`, `wade`, `pool`, `river`, `stream`, `tube`, `floa`, `sprinkler`, `hot`, `bikini`, `wet`, `ski`, `dive`, `swim`, `active`, `walk`, `exercise`, `climb`, `adventur`, `athletic`, `soccer`, `softball`, `basketball`, `baseball`, `sports`, `volleyball`, `jog`, `bik`, `backpack`, `exciting`, `explor`, `hik`, `trail`, `look`, `nature`, `relax`, `camp`, `fire`, `wildlife`, `cave`, `sight`, `watch`, `view`, `plant`, `stargaze`, `star`, `pictur`, `photo`, `astronomy`, `outside`, `bird`, `Park_Description`) VALUES
(267, 'Lake Bastrop', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/bastrop/', 2168, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0, 12, 21, 3, 48, 0, 0, 1, 9, 0, 1, 0, 0, 4, 0, 0, 2, 1, 2, 1, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 9, 1, 3, 0, 5, 1, 11, 4, 0, 0, 3, 2, 0, 4, 0, 3, 0, 1, 3, NULL),
(268, 'Lake Belton', 'http://www.swf-wc.usace.army.mil/belton/', 389, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(269, 'Lake Benbrook', 'http://www.wildtexas.com/texas-parks/lake-benbrook', 178, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(270, 'Lake Bob Sandlin State Park', 'http://www.wildtexas.com/texas-parks/lake-bob-sandlin-state-park', 280, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(271, 'Lake Bridgeport', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/bridgeport/', 2190, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 2, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0, 14, 21, 2, 43, 0, 0, 1, 10, 0, 1, 1, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 4, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(272, 'Lake Brownwood State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/lake_brownwood/', 1937, 3, 3, 0, 0, 2, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 2, 0, 0, 0, 0, 0, 7, 0, 0, 0, 1, 0, 0, 13, 9, 0, 21, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 4, 1, 5, 1, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 1, 6, 13, 1, 7, 0, 9, 1, 12, 4, 0, 1, 6, 0, 0, 4, 0, 3, 0, 0, 8, NULL),
(273, 'Lake Bryan', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/bryan/', 1992, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 14, 15, 5, 48, 0, 0, 1, 8, 0, 1, 2, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(274, 'Lake Buchanan', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/buchanan/', 2350, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0, 14, 19, 2, 53, 0, 0, 1, 14, 1, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 9, 1, 3, 0, 5, 1, 12, 5, 1, 0, 3, 0, 0, 5, 0, 3, 0, 0, 4, NULL),
(275, 'Lake Casa Blanca International State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/lake_casa_blanca/', 2029, 3, 4, 1, 0, 2, 0, 2, 0, 1, 0, 4, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 1, 0, 0, 14, 13, 0, 27, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 3, 1, 5, 0, 2, 0, 3, 0, 0, 0, 0, 1, 1, 0, 1, 0, 6, 0, 0, 1, 6, 14, 0, 5, 1, 8, 1, 12, 4, 0, 0, 6, 0, 0, 4, 0, 3, 0, 0, 8, NULL),
(276, 'Lake Cisco', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/cisco/', 1863, 2, 3, 0, 0, 2, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 13, 15, 4, 43, 0, 0, 1, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 4, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(277, 'Lake Clyde', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/clyde/', 1777, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 14, 18, 1, 37, 0, 0, 1, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(278, 'Lake Coleman', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/coleman/', 1932, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 13, 18, 2, 41, 0, 0, 1, 8, 0, 1, 2, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 5, 0, 3, 0, 0, 3, NULL),
(279, 'Lake Colorado City State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/lake_colorado_city/', 1935, 3, 3, 0, 0, 2, 0, 3, 0, 1, 0, 2, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 5, 0, 0, 0, 2, 0, 0, 14, 10, 0, 20, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 4, 1, 4, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 5, 9, 0, 4, 0, 8, 1, 12, 4, 0, 0, 6, 0, 0, 4, 0, 3, 0, 0, 5, NULL),
(280, 'Lake Conroe', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/conroe/', 2357, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 3, 0, 0, 15, 19, 0, 40, 0, 0, 2, 13, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 3, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 5, 2, 0, 4, 0, 3, 0, 0, 3, NULL),
(281, 'Lake Conroe / Houston North KOA', 'http://www.koa.com/where/tx/43239/', 1212, 1, 3, 2, 0, 0, 0, 1, 0, 3, 0, 0, 0, 0, 0, 0, 16, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 4, 3, 0, 3, 0, 0, 3, 0, 1, 2, 0, 0, 9, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 3, 0, 0, 0, 0, 3, 0, 0, 1, 48, 2, 0, 0, 0, 0, 4, 0, 0, 1, 0, 2, 0, 1, 0, NULL),
(282, 'Lake Corpus Christi / Mathis KOA', 'http://www.koa.com/where/tx/43209/', 2306, 0, 0, 0, 0, 0, 0, 2, 0, 5, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 10, 0, 5, 0, 2, 0, 0, 0, 11, 0, 1, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 78, 2, 0, 2, 0, 0, 3, 0, 0, 4, 0, 0, 0, 0, 0, NULL),
(283, 'Lake Corpus Christi State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/lake_corpus_christi/', 1891, 3, 3, 0, 0, 2, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 1, 0, 1, 13, 9, 0, 21, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 1, 3, 1, 3, 1, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 5, 9, 1, 5, 0, 7, 1, 13, 4, 0, 1, 6, 0, 0, 4, 0, 3, 0, 0, 6, NULL),
(284, 'Lake Crockett Recreation Areas - East & West', 'http://www.fs.fed.us/r8/texas/recreation/caddo_lbj/eastlakecrockett.shtml', 741, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 2, 3, 0, 0, 0, 0, 0, 0, 1, NULL),
(285, 'Lake Cypress Springs', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/cypress_springs/', 1843, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 13, 15, 3, 39, 0, 0, 1, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(286, 'Lake Daniel', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/daniel/', 1757, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 15, 1, 35, 0, 0, 1, 8, 0, 1, 2, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(287, 'Lake E.V. Spence', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/spence/', 1643, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 13, 14, 0, 26, 0, 0, 1, 10, 1, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(288, 'Lake Fork', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/fork/', 2268, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 2, 0, 0, 16, 20, 4, 57, 0, 0, 1, 11, 0, 1, 0, 0, 4, 0, 0, 2, 1, 2, 0, 2, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(289, 'Lake Georgetown', 'http://www.swf-wc.usace.army.mil/georgetown/', 383, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(290, 'Lake Gilmer', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/gilmer/', 1833, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 13, 4, 42, 0, 0, 1, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 4, 1, 0, 4, 0, 3, 0, 0, 3, NULL),
(291, 'Lake Gonzales', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/gonzales/', 2075, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 13, 18, 4, 52, 0, 0, 1, 13, 0, 2, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 1, 0, 4, 0, 3, 0, 0, 3, NULL),
(292, 'Lake Graham', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/graham/', 1904, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 14, 18, 1, 38, 0, 0, 1, 8, 0, 1, 0, 0, 5, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 2, 0, 4, 0, 3, 0, 0, 3, NULL),
(293, 'Lake Granbury', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/granbury/', 1914, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 14, 15, 3, 44, 0, 0, 1, 13, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 5, 0, 3, 0, 0, 3, NULL),
(294, 'Lake Halbert', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/halbert/', 1786, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 15, 2, 37, 0, 0, 1, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(295, 'Lake Hawkins', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/hawkins/', 1921, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0, 12, 18, 2, 39, 0, 0, 1, 9, 0, 1, 2, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 3, 0, 4, 0, 3, 0, 0, 3, NULL),
(296, 'Lake Holbrook', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/holbrook/', 2008, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0, 14, 17, 3, 43, 0, 0, 1, 9, 0, 2, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(297, 'Lake Houston State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/lake_houston/', 2161, 2, 4, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 8, 0, 21, 0, 0, 0, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 7, 1, 14, 4, 0, 0, 3, 1, 0, 5, 0, 3, 0, 0, 3, NULL),
(298, 'Lake Jacksonville', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/jacksonville/', 1863, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 14, 1, 35, 0, 0, 1, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 1, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(299, 'Lake Kemp', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/kemp/', 1874, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 13, 16, 1, 36, 0, 0, 1, 10, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(300, 'Lake Lewisville', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/lewisville/', 1915, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0, 14, 16, 0, 39, 0, 0, 1, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(301, 'Lake Limestone', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/limestone/', 2247, 2, 3, 0, 0, 1, 0, 2, 0, 2, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0, 13, 18, 3, 50, 0, 0, 1, 11, 0, 2, 0, 0, 3, 0, 0, 2, 2, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 1, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(302, 'Lake Livingston State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/lake_livingston/', 2221, 3, 5, 0, 0, 3, 0, 2, 0, 1, 0, 2, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, 4, 0, 0, 1, 1, 0, 0, 14, 9, 1, 30, 0, 0, 7, 8, 0, 1, 0, 0, 4, 0, 0, 3, 1, 9, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 2, 7, 13, 1, 6, 0, 10, 1, 14, 4, 0, 0, 6, 0, 0, 4, 0, 4, 0, 0, 6, NULL),
(303, 'Lake Lyndon B. Johnson (LBJ)', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/lbj/', 2186, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0, 14, 24, 1, 41, 0, 0, 1, 14, 0, 1, 0, 0, 4, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 5, 0, 0, 3, 1, 0, 5, 0, 3, 0, 0, 3, NULL),
(304, 'Lake McClellan Recreation Area', 'http://www.fs.fed.us/r3/cibola/districts/black.shtml', 748, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 6, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(305, 'Lake McQueeney', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/mcqueeney/', 1533, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 8, 0, 18, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(306, 'Lake Meredith National Recreation Area', 'http://www.nps.gov/lamr/', 676, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 2, 2, 0, 2, 0, 0, 0, 2, 0, 1, 0, 0, 4, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 4, 1, 3, 0, 3, 1, 2, 0, 0, 0, 1, 1, 0, 0, 0, 3, 0, 0, 0, NULL),
(307, 'Lake Mexia', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/mexia/', 1793, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 13, 15, 1, 37, 0, 0, 1, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(308, 'Lake Mineral Wells State Park & Trailway', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/lake_mineral_wells/', 2129, 3, 3, 0, 0, 2, 0, 2, 0, 1, 0, 1, 0, 2, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 1, 0, 0, 16, 10, 0, 22, 0, 0, 0, 9, 0, 1, 0, 0, 3, 0, 3, 4, 1, 3, 0, 4, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 5, 21, 0, 5, 0, 8, 1, 12, 4, 0, 0, 6, 0, 0, 5, 0, 3, 1, 0, 7, NULL),
(309, 'Lake Monticello', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/monticello/', 1810, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 13, 2, 42, 0, 0, 1, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(310, 'Lake Murvaul', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/murvaul/', 2087, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 13, 19, 4, 51, 0, 0, 1, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 1, 0, 4, 0, 3, 0, 0, 3, NULL),
(311, 'Lake Nasworthy', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/nasworthy/', 1975, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 15, 3, 45, 0, 0, 1, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 9, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 5, 0, 3, 0, 0, 3, NULL),
(312, 'Lake Nocona', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/nocona/', 2036, 2, 3, 0, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 18, 16, 3, 42, 0, 0, 1, 8, 1, 2, 2, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 2, 11, 4, 0, 0, 3, 0, 0, 6, 0, 3, 0, 0, 3, NULL),
(313, 'Lake Palestine', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/palestine/index.phtml', 1966, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 13, 1, 44, 0, 0, 1, 12, 0, 1, 1, 0, 3, 0, 0, 2, 1, 2, 1, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 1, 0, 4, 0, 3, 0, 0, 3, NULL),
(314, 'Lake Pinkston', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/pinkston/', 2014, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 19, 6, 50, 0, 0, 1, 8, 0, 1, 0, 0, 4, 0, 0, 2, 1, 2, 2, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 4, 0, 4, 0, 3, 0, 0, 3, NULL),
(315, 'Lake Placid', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/placid/', 2115, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 14, 18, 4, 53, 0, 0, 1, 12, 0, 2, 1, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 1, 0, 4, 0, 3, 0, 0, 3, NULL),
(316, 'Lake Proctor', 'http://www.swf-wc.usace.army.mil/proctor/', 522, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 0, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 2, 2, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(317, 'Lake Quitman', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/quitman/', 1872, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0, 13, 15, 3, 42, 0, 0, 1, 10, 0, 2, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(318, 'Lake Raven', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/raven/', 1840, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 15, 6, 36, 0, 0, 1, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 3, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 13, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(319, 'Lake Ray Hubbard', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/ray_hubbard/', 1895, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 14, 0, 39, 0, 0, 1, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 1, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(320, 'Lake Rita Blanca City Park', 'http://www.tpwd.state.tx.us/huntwild/wild/wildlife_trails/plains/plains_map/ritablanca/', 1728, 2, 2, 0, 0, 1, 0, 2, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 8, 0, 18, 0, 0, 0, 8, 0, 1, 0, 0, 5, 0, 0, 2, 3, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 1, 3, 22, 0, 3, 0, 5, 1, 31, 4, 0, 0, 7, 0, 0, 5, 0, 5, 0, 0, 8, NULL),
(321, 'Lake Sam Rayburn Parks', 'http://www.swf-wc.usace.army.mil/samray/', 598, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 7, 4, 0, 3, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 3, 2, 0, 0, 6, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, NULL),
(322, 'Lake Somerville State Park: Birch Creek Unit', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/lake_somerville/', 2402, 3, 3, 0, 0, 2, 0, 2, 0, 1, 0, 2, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 2, 0, 0, 16, 15, 0, 24, 0, 0, 0, 9, 0, 1, 0, 0, 6, 0, 1, 4, 1, 5, 0, 2, 1, 3, 2, 0, 0, 0, 2, 0, 0, 2, 0, 8, 3, 0, 1, 9, 26, 0, 8, 0, 8, 1, 17, 4, 0, 0, 10, 1, 0, 4, 0, 5, 0, 0, 8, NULL),
(323, 'Lake Somerville State Park: Nails Creek Unit', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/lake_somerville/', 2402, 3, 3, 0, 0, 2, 0, 2, 0, 1, 0, 2, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 2, 0, 0, 16, 15, 0, 24, 0, 0, 0, 9, 0, 1, 0, 0, 6, 0, 1, 4, 1, 5, 0, 2, 1, 3, 2, 0, 0, 0, 2, 0, 0, 2, 0, 8, 3, 0, 1, 9, 26, 0, 8, 0, 8, 1, 17, 4, 0, 0, 10, 1, 0, 4, 0, 5, 0, 0, 8, NULL),
(324, 'Lake Tawakoni State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/lake_tawakoni/', 1844, 3, 3, 0, 0, 2, 0, 2, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 1, 0, 0, 13, 8, 0, 21, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 3, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 5, 9, 0, 5, 0, 6, 1, 12, 4, 0, 0, 6, 0, 0, 4, 0, 3, 0, 0, 6, NULL),
(325, 'Lake Texana State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/lake_texana/', 2161, 2, 4, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 8, 0, 21, 0, 0, 0, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 7, 1, 14, 4, 0, 0, 3, 1, 0, 5, 0, 3, 0, 0, 3, NULL),
(326, 'Lake Texoma', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/texoma/', 2701, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 1, 0, 1, 15, 21, 2, 55, 0, 0, 2, 17, 6, 1, 1, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 1, 0, 3, 8, 0, 3, 0, 5, 1, 13, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(327, 'Lake Travis', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/travis/', 2336, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0, 16, 22, 2, 50, 0, 0, 1, 13, 0, 1, 1, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 9, 0, 3, 0, 5, 1, 11, 4, 1, 0, 3, 0, 0, 6, 0, 3, 0, 0, 3, NULL),
(328, 'Lake Tyler', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/tyler/', 2002, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 14, 19, 3, 42, 0, 0, 1, 8, 0, 1, 1, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 1, 0, 4, 0, 3, 0, 0, 3, NULL),
(329, 'Lake Waxahachie', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/waxahachie/', 1860, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 14, 0, 34, 0, 0, 1, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 1, 3, 0, 0, 4, 0, 3, 0, 0, 4, NULL),
(330, 'Lake Weatherford', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/weatherford/', 1866, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 13, 13, 3, 40, 0, 0, 1, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(331, 'Lake Welsh', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/welsh/', 1778, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 13, 2, 40, 0, 0, 1, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(332, 'Lake Whitney State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/lake_whitney/', 1867, 3, 3, 0, 0, 2, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 1, 0, 0, 15, 9, 0, 22, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 3, 1, 3, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 5, 9, 0, 5, 0, 7, 1, 13, 4, 0, 0, 6, 0, 0, 4, 0, 3, 0, 0, 6, NULL),
(333, 'Lake Winnsboro', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/winnsboro/', 1877, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0, 13, 14, 3, 39, 0, 0, 1, 9, 0, 2, 1, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(334, 'Lake Worth', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/worth/', 2004, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 18, 19, 0, 39, 0, 0, 1, 10, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 1, 0, 0, 3, 0, 0, 0, 3, 9, 0, 3, 0, 5, 1, 12, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(335, 'Lakeside Park', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/hords_creek/access.phtml', 1959, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 14, 12, 0, 31, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 3, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 7, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(336, 'Landmark Inn State Historic Site / Bed & Breakfast', 'http://www.thc.state.tx.us/hsites/hs_landmark.aspx?Site=Landmark', 784, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 4, 0, 1, 0, 0, 0, 0, 0, NULL),
(337, 'Las Palomas Wildlife Management Area: Anacua Unit', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=103', 1682, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 12, 9, 0, 19, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 4, 8, 0, 3, 0, 6, 1, 16, 4, 0, 0, 5, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(338, 'Barton Springs Pool', 'http://austintexas.gov/department/barton-springs-pool', 731, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 1, 0, 0, 1, 3, 0, 0, 0, 17, 0, 0, 1, 0, 0, 2, 0, 0, 1, 1, 9, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(339, 'Lavonia Park', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/lavon/access2.phtml', 2446, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 27, 12, 0, 26, 0, 0, 0, 11, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 10, 3, 0, 5, 1, 11, 4, 0, 1, 3, 0, 0, 4, 0, 3, 0, 2, 3, NULL),
(340, 'Leon Creek Greenway - Babcock to Bandera', 'http://www.sanantonio.gov/creekways/BabcockBanderaLeonPage.asp', 1499, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 3, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 7, 0, 0, 0, 4, 70, 0, 1, 0, 0, 1, 0, 0, 0, 3, 2, 1, 0, 1, 0, 0, 0, 0, 1, NULL),
(341, 'Leon Reservoir', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/leon/', 1861, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 13, 16, 2, 40, 0, 0, 1, 10, 0, 1, 1, 0, 3, 0, 1, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(342, 'Liberty Hill Park - Navarro Mills Lake', 'http://www.wildtexas.com/texas-parks/liberty-hill-park-navarro-mills-lake', 385, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, NULL),
(343, 'Lipantitlan State Historic Site', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/lipantitlan/', 1859, 3, 3, 0, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 6, 1, 0, 12, 9, 0, 19, 0, 0, 0, 9, 0, 1, 0, 0, 4, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 4, 9, 0, 4, 0, 8, 2, 12, 4, 0, 0, 6, 0, 0, 4, 0, 3, 0, 0, 5, NULL),
(344, 'Live Oak Ridge Park', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/belton/access2.phtml', 2088, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 22, 12, 0, 25, 0, 0, 0, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 1, 3, 0, 6, 1, 11, 4, 0, 7, 4, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(345, 'Lockhart State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/lockhart/', 1987, 3, 3, 0, 0, 2, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 1, 0, 0, 12, 8, 0, 20, 0, 0, 1, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 3, 1, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 1, 5, 11, 1, 6, 0, 7, 1, 12, 4, 0, 0, 6, 0, 0, 4, 0, 3, 0, 0, 5, NULL),
(346, 'Lofers Bend East Park', 'http://www.recreation.gov/camping/lofers-bend-east/r/campgroundDetails.do?contractCode=NRSO&parkId=71269', 719, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 4, 17, 0, 5, 0, 0, 0, 1, 0, 0, 0, 0, 3, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 1, 3, 2, 0, 0, 4, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 3, 0, 0, 0, NULL),
(347, 'Lofers Bend West Park', 'http://www.recreation.gov/camping/lofers-bend-west/r/campgroundDetails.do?contractCode=NRSO&parkId=73554', 704, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 4, 18, 0, 5, 0, 0, 0, 1, 0, 0, 0, 0, 3, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 1, 3, 2, 0, 0, 3, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 3, 0, 0, 0, NULL),
(348, 'Lone Star Lake', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/lone_star/', 1850, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 13, 3, 38, 0, 0, 1, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 10, 0, 3, 0, 0, 3, NULL),
(349, 'Longhorn Cavern State Park', 'http://wildtexas.com/parks/lcsp.php', 855, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 0, 1, 0, 4, 0, 2, 26, 0, 0, 0, 0, 0, 0, 0, 5, 0, 1, 0, NULL),
(350, 'Loop 360 Boat Ramp - Lake Austin', 'http://www.wildtexas.com/texas-parks/loop-360-boat-ramp-lake-austin', 391, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(351, 'Lost Creek Reservoir State Trailway', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/fort_richardson/', 2290, 3, 3, 0, 0, 2, 0, 3, 0, 1, 1, 2, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 5, 0, 0, 0, 1, 0, 0, 12, 9, 1, 23, 1, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 4, 0, 3, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 1, 6, 30, 0, 4, 0, 7, 1, 14, 4, 0, 0, 6, 0, 0, 4, 0, 3, 0, 1, 5, NULL),
(352, 'Lost Maples State Natural Area', 'http://www.wildtexas.com/texas-parks/lost-maples-state-natural-area', 1024, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 2, 0, 0, 7, 3, 1, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 3, 11, 3, 0, 0, 11, 0, 4, 0, 0, 0, 3, 0, 0, 7, 0, 4, 0, 0, 2, NULL),
(353, 'Lower Neches Wildlife Management Area - Adams Bayo', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=58', 2000, 2, 4, 0, 0, 2, 0, 2, 0, 2, 0, 2, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 14, 9, 0, 20, 0, 0, 0, 15, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 1, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 5, 8, 0, 3, 0, 6, 1, 19, 4, 0, 0, 7, 0, 0, 13, 0, 3, 0, 0, 6, NULL),
(354, 'Lower Neches Wildlife Management Area - Bessie Hei', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=58', 2000, 2, 4, 0, 0, 2, 0, 2, 0, 2, 0, 2, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 14, 9, 0, 20, 0, 0, 0, 15, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 1, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 5, 8, 0, 3, 0, 6, 1, 19, 4, 0, 0, 7, 0, 0, 13, 0, 3, 0, 0, 6, NULL),
(355, 'Lower Neches Wildlife Management Area - Old River', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=58', 2000, 2, 4, 0, 0, 2, 0, 2, 0, 2, 0, 2, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 14, 9, 0, 20, 0, 0, 0, 15, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 1, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 5, 8, 0, 3, 0, 6, 1, 19, 4, 0, 0, 7, 0, 0, 13, 0, 3, 0, 0, 6, NULL),
(356, 'Lower Rio Grande Valley National Wildlife Refuge', 'http://www.fws.gov/refuges/profiles/index.cfm?id=21552', 656, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 2, 0, 0, 0, 5, 0, 0, 0, 0, 1, 0, 5, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 3, 0, 1, 0, 1, 0, 0, 0, NULL),
(357, 'Lyndon B. Johnson National Historic Park', 'http://www.nps.gov/lyjo/', 626, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 3, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 2, 1, 3, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 3, 0, 0, 1, NULL),
(358, 'Lyndon B. Johnson State Park & Historic Site', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/lyndon_b_johnson/', 2838, 3, 9, 3, 0, 3, 0, 4, 0, 2, 0, 3, 0, 1, 0, 3, 4, 0, 0, 0, 0, 1, 2, 0, 0, 0, 1, 0, 0, 12, 8, 1, 20, 0, 0, 2, 12, 0, 1, 0, 0, 3, 0, 0, 2, 1, 5, 1, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 1, 4, 12, 0, 7, 0, 5, 1, 19, 4, 0, 0, 10, 0, 0, 4, 0, 3, 0, 0, 7, NULL),
(359, 'M.O. Neasloney Wildlife Management Area', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=13', 1666, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 1, 0, 0, 0, 2, 0, 0, 1, 0, 0, 0, 1, 1, 0, 12, 9, 0, 19, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 6, 9, 0, 4, 0, 6, 1, 20, 4, 0, 1, 6, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(360, 'MacArthur County Park', 'http://www.bexar.org/CommissionerPct3/BCSD_CommissionerPct3_T112_R30.html', 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(361, 'Mackenzie Reservoir', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/mackenzie/', 2088, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 13, 18, 1, 45, 0, 0, 2, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(362, 'Mad Island Wildlife Management Area', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=39', 1705, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 12, 12, 0, 19, 0, 0, 0, 9, 0, 1, 0, 0, 3, 0, 1, 2, 2, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 4, 8, 0, 3, 0, 7, 2, 17, 4, 0, 0, 5, 0, 0, 4, 0, 3, 0, 0, 4, NULL),
(363, 'Madison Square Park', 'http://www.sanantonio.gov/sapar/madisonreservations.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(364, 'Magnolia Ridge Park', 'http://www.recreation.gov/camping/magnolia-ridge/r/campgroundDetails.do?contractCode=NRSO&parkId=712', 179, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(365, 'Magoffin Home State Historic Site', 'http://www.visitmagoffinhome.com/index.aspx?page=13', 281, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 1, 0, 1, 0, 0, 0, NULL),
(366, 'Malden Lake Park', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/wright_patman/access2.phtml', 2285, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 24, 13, 0, 26, 0, 0, 0, 11, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 12, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(367, 'Martin Creek Lake State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/martin_creek/', 1833, 3, 4, 0, 0, 3, 0, 2, 0, 1, 0, 3, 0, 1, 0, 1, 2, 0, 0, 0, 0, 0, 3, 0, 0, 0, 1, 0, 0, 13, 9, 0, 22, 0, 0, 0, 8, 0, 1, 0, 0, 4, 0, 0, 3, 1, 3, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 0, 0, 5, 9, 0, 4, 0, 7, 1, 13, 4, 0, 0, 7, 0, 0, 5, 0, 4, 0, 0, 5, NULL),
(368, 'Martin Dies, Jr. State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/martin_dies_jr/', 1960, 3, 3, 0, 0, 3, 0, 2, 0, 1, 0, 1, 0, 1, 0, 2, 1, 0, 0, 0, 0, 0, 5, 0, 0, 0, 1, 0, 0, 13, 9, 0, 20, 0, 0, 0, 9, 0, 1, 0, 0, 3, 0, 1, 2, 1, 4, 0, 3, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 0, 0, 0, 5, 16, 0, 6, 0, 7, 1, 15, 4, 0, 2, 6, 1, 0, 4, 0, 3, 0, 0, 6, NULL),
(369, 'Martinez Park', 'http://www.sanantonio.gov/sapar/martinezreservations.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(370, 'Mary Moore Searight Metropolitan Park', 'http://www.austinparks.org/apfweb/park.php?&parkId=282', 446, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2, 1, 0, 2, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 2, 1, 2, 1, 0, 2, 0, 0, 0, 0, 0, 0, 6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, NULL),
(371, 'Mary Quinlan Park - Lake Austin', 'http://www.wildtexas.com/texas-parks/mary-quinlan-park-lake-austin', 375, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, NULL),
(372, 'Mason Mountain Wildlife Management Area', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=14', 1789, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 2, 1, 0, 12, 9, 0, 19, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 4, 8, 0, 3, 0, 6, 1, 21, 4, 0, 0, 4, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(373, 'Matador Wildlife Management Area', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=15', 2070, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 4, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 2, 0, 12, 11, 1, 21, 0, 0, 0, 8, 0, 1, 0, 0, 4, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 7, 8, 0, 4, 0, 12, 3, 21, 4, 1, 2, 5, 0, 0, 4, 0, 4, 0, 0, 5, NULL),
(374, 'Matagorda Island Wildlife Management Area', 'http://www.wildtexas.com/texas-parks/matagorda-island-wildlife-management-area', 711, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 5, 4, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 0, 2, 0, 5, 0, 18, 0, 0, 0, 0, 0, 0, 7, 0, 1, 0, 0, 4, NULL),
(375, 'McAllister Park', 'http://www.wildtexas.com/texas-parks/mcallister-park', 625, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 5, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 1, 6, 1, 1, 0, 5, 0, 2, 0, 0, 0, 1, 0, 0, 15, 1, 0, 0, 0, 1, NULL),
(376, 'McCown Valley Park', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/whitney/access2.phtml', 2101, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 24, 12, 0, 27, 0, 0, 0, 10, 0, 1, 0, 0, 3, 0, 0, 2, 1, 4, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 1, 3, 0, 6, 1, 13, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(377, 'McFaddin National Wildlife Refuge', 'http://www.fws.gov/southwest/refuges/texas/mcfaddin/', 485, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 8, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 2, 7, NULL),
(378, 'McKinney Falls State Park', 'http://www.wildtexas.com/texas-parks/mckinney-falls-state-park', 857, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 3, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 1, 7, 10, 0, 0, 0, 6, 0, 4, 0, 0, 0, 2, 1, 0, 7, 0, 0, 0, 0, 4, NULL),
(379, 'Medina Base Road Park', 'http://www.sanantonio.gov/sapar/medinabasereservations.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(380, 'Medina River Greenway', 'http://www.sanantonio.gov/creekways/MedinaRiverTrailPage.asp', 1499, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 3, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 7, 0, 0, 0, 4, 70, 0, 1, 0, 0, 1, 0, 0, 0, 3, 2, 1, 0, 1, 0, 0, 0, 0, 1, NULL),
(381, 'Medina River Natural Area', 'http://www.wildtexas.com/texas-parks/medina-river-natural-area', 509, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1, 2, 0, 0, 0, 6, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 0, 1, 0, 8, 0, 3, 0, 0, 0, 0, 3, 0, 7, 0, 0, 0, 0, 1, NULL),
(382, 'Memorial Park', 'http://www.digitalcity.com/houston/entertainment/venue.adp?vid=118557', 658, 1, 1, 2, 0, 0, 1, 0, 0, 2, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 3, 0, 0, 2, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 4, 0, 0, 0, 0, 0, NULL),
(383, 'Meridian State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/meridian/', 1963, 3, 3, 0, 0, 2, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 1, 0, 0, 14, 8, 0, 21, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 1, 2, 1, 3, 1, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 6, 12, 2, 5, 0, 7, 1, 12, 4, 0, 1, 6, 0, 0, 4, 0, 3, 0, 0, 8, NULL),
(384, 'Midway Park', 'http://www.wildtexas.com/texas-parks/midway-park-waco-lake', 302, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, NULL),
(385, 'Milam Park', 'http://www.sanantonio.gov/sapar/milamparkreservations.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(386, 'Mill Creek Park', 'http://www.recreation.gov/camping/mill-creek-texas/r/campgroundDetails.do?contractCode=NRSO&parkId=7', 179, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(387, 'Mill Creek Reservoir', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/mill_creek/', 1897, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0, 12, 14, 0, 36, 0, 0, 0, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(388, 'Millers Creek Reservoir', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/millers/', 1873, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 16, 17, 1, 37, 0, 0, 1, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(389, 'Mission County Park', 'http://www.sanantonio.gov/sapar/missionreservations.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(390, 'Mission Rosario State Historic Site', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/goliad_and_mission_espiritu_santo/act.phtml#rosar', 2321, 3, 3, 0, 0, 2, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 1, 0, 0, 12, 8, 0, 20, 0, 0, 1, 10, 0, 1, 1, 0, 3, 0, 0, 2, 1, 4, 1, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 1, 5, 11, 1, 6, 0, 7, 1, 13, 4, 0, 0, 6, 0, 0, 4, 0, 3, 0, 0, 6, NULL),
(391, 'Mission Tejas State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/mission_tejas/', 2066, 3, 4, 0, 0, 2, 0, 2, 0, 1, 0, 3, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 1, 0, 1, 12, 8, 0, 22, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 3, 1, 2, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 2, 6, 10, 1, 6, 0, 8, 1, 12, 4, 0, 0, 6, 0, 0, 4, 0, 3, 0, 0, 5, NULL),
(392, 'Mitchell Lake Audubon Center', 'http://www.mitchelllakeaudubon.org/', 341, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 3, 1, 0, 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 9, NULL),
(393, 'Monahans Sandhills State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/monahans_sandhills/', 1900, 3, 3, 0, 0, 2, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 1, 0, 0, 12, 12, 0, 19, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 1, 5, 11, 1, 4, 0, 7, 1, 15, 4, 0, 1, 7, 0, 0, 4, 0, 3, 0, 0, 7, NULL),
(394, 'Monterrey Park', 'http://www.sanantonio.gov/sapar/monterreyrentals.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(395, 'Monument Hill & Kreische Brewery State Historic Si', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/monument_hill_and_kreische_brewery/', 2554, 3, 4, 1, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 1, 0, 0, 12, 8, 1, 19, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 3, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 4, 12, 1, 6, 0, 5, 1, 12, 4, 1, 0, 8, 0, 0, 4, 0, 3, 0, 0, 6, NULL),
(396, 'Moore Plantation Wildlife Management Area', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=31', 1790, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 12, 10, 0, 21, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 6, 8, 0, 3, 0, 9, 1, 21, 4, 0, 0, 6, 6, 0, 4, 0, 3, 0, 0, 4, NULL),
(397, 'Moss Lake', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/moss/', 1844, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 14, 13, 1, 37, 0, 0, 1, 8, 0, 2, 1, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 1, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(398, 'Mother Neff State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/mother_neff/', 1993, 3, 3, 1, 0, 3, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 1, 0, 0, 12, 8, 0, 21, 0, 0, 0, 9, 0, 1, 0, 0, 3, 0, 1, 2, 1, 2, 1, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 7, 12, 1, 5, 0, 8, 1, 13, 4, 0, 0, 6, 0, 0, 4, 0, 3, 0, 0, 7, NULL),
(399, 'Mott Park', 'http://www.recreation.gov/campgroundDetails.do?contractCode=NRSO&parkId=71300', 932, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 6, 18, 0, 9, 0, 0, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 1, 2, 0, 0, 5, 0, 1, 0, 0, 0, 2, 1, 0, 0, 0, 4, 0, 0, 1, NULL),
(400, 'Mount Bonnell Park', 'http://www.yelp.com/biz/covert-park-at-mount-bonnell-austin', 1451, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 1, 7, 0, 0, 0, 0, 5, 0, 0, 0, 0, 3, 0, 0, 4, 0, 0, 1, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4, 2, 1, 1, 1, 4, 0, 0, 0, 0, 2, 45, 0, 0, 0, 1, 3, 0, 1, 0, NULL);
INSERT INTO `park` (`Park_ID`, `Park_Name`, `Website`, `word_count`, `social`, `family`, `play`, `swing`, `child`, `party`, `cook`, `bbq`, `pet`, `barbecue`, `picnic`, `grill`, `kid`, `dogs`, `animal`, `cabin`, `bathroom`, `handicap`, `restroom`, `beer`, `smoke`, `free`, `isolate`, `peace`, `quiet`, `anti`, `drink`, `beach`, `boat`, `water`, `sun`, `fish`, `wading`, `wade`, `pool`, `river`, `stream`, `tube`, `floa`, `sprinkler`, `hot`, `bikini`, `wet`, `ski`, `dive`, `swim`, `active`, `walk`, `exercise`, `climb`, `adventur`, `athletic`, `soccer`, `softball`, `basketball`, `baseball`, `sports`, `volleyball`, `jog`, `bik`, `backpack`, `exciting`, `explor`, `hik`, `trail`, `look`, `nature`, `relax`, `camp`, `fire`, `wildlife`, `cave`, `sight`, `watch`, `view`, `plant`, `stargaze`, `star`, `pictur`, `photo`, `astronomy`, `outside`, `bird`, `Park_Description`) VALUES
(401, 'Mountain Creek Lake', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/mountain_creek/', 1837, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 13, 0, 33, 0, 0, 1, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 1, 0, 4, 0, 3, 0, 0, 3, NULL),
(402, 'Muleshoe National Wildlife Refuge', 'http://www.fws.gov/southwest/refuges/texas/muleshoe/index.html', 480, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 8, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 2, 7, NULL),
(403, 'Mustang Bear Creek Park', 'http://www.swf-wc.usace.army.mil/benbrook/Recreation/Parks/Corpsparks.asp', 1767, 0, 0, 0, 0, 0, 0, 4, 0, 2, 0, 7, 2, 0, 0, 1, 0, 0, 0, 7, 0, 0, 2, 0, 0, 0, 0, 3, 7, 9, 14, 0, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 3, 5, 2, 0, 0, 37, 9, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 2, NULL),
(404, 'Mustang Island State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/mustang_island/', 1802, 3, 3, 0, 0, 2, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 1, 0, 1, 12, 8, 1, 21, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 3, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 5, 12, 0, 4, 0, 7, 1, 12, 4, 0, 0, 6, 0, 0, 4, 0, 3, 0, 0, 6, NULL),
(405, 'Nacogdoches Lake', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/nacogdoches/', 1964, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0, 13, 16, 7, 47, 0, 0, 1, 8, 0, 1, 0, 0, 4, 0, 0, 2, 1, 2, 2, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(406, 'Nani Falcone Park', 'http://www.sanantonio.gov/sapar/nanifalconereservations.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(407, 'Nannie M. Stringfellow Wildlife Management Area', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=105', 1943, 2, 3, 0, 0, 2, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 2, 1, 0, 12, 12, 0, 19, 0, 0, 0, 9, 0, 1, 0, 0, 3, 0, 3, 2, 2, 2, 1, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 4, 8, 0, 3, 0, 7, 2, 19, 4, 0, 0, 5, 1, 0, 4, 0, 3, 0, 0, 6, NULL),
(408, 'Normoyle Park', 'http://www.sanantonio.gov/sapar/normoylepark.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(409, 'North Park - Canyon Lake', 'http://www.wildtexas.com/texas-parks/north-park-canyon-lake', 361, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 3, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, NULL),
(410, 'North Toledo Bend Wildlife Management Area', 'http://www.sra.dst.tx.us/basin/recreation.asp?page=site&ID=30', 5004, 0, 5, 7, 0, 0, 0, 2, 0, 0, 1, 18, 8, 0, 0, 0, 1, 0, 0, 8, 0, 0, 1, 2, 0, 0, 0, 1, 3, 30, 43, 0, 26, 1, 0, 1, 60, 10, 0, 2, 0, 2, 0, 4, 1, 1, 13, 0, 1, 0, 0, 0, 0, 0, 1, 2, 1, 1, 0, 0, 2, 2, 0, 1, 13, 26, 0, 5, 0, 45, 1, 17, 0, 2, 4, 11, 4, 0, 0, 0, 2, 0, 0, 8, NULL),
(411, 'Northridge Park', 'http://www.sanantonio.gov/sapar/northridgereservations.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(412, 'O.H. Ivie Lake', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/o_h_ivie/', 1967, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0, 12, 15, 2, 41, 0, 0, 1, 13, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(413, 'O.P. Schnabel Park', 'http://www.sanantonio.gov/sapar/schnabelhis.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(414, 'Oak Creek Reservoir', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/oak_creek/', 1850, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 15, 2, 39, 0, 0, 1, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(415, 'Oak Park', 'http://www.recreation.gov/camping/Oak_Park_Tx/r/campgroundDetails.do?contractCode=NRSO&parkId=73899&', 816, 0, 1, 1, 1, 0, 0, 0, 0, 1, 0, 9, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 5, 18, 1, 6, 0, 0, 0, 1, 0, 0, 0, 0, 3, 0, 0, 1, 0, 2, 0, 1, 0, 0, 0, 0, 0, 1, 0, 2, 0, 2, 0, 0, 0, 0, 2, 1, 1, 2, 0, 1, 0, 1, 2, 0, 0, 0, 4, 0, 0, 0, 0, 3, 0, 0, 0, NULL),
(416, 'Oak Park - Navarro Mills Lake', 'http://www.wildtexas.com/texas-parks/oak-park-navarro-mills-lake', 357, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(417, 'Oakland Park', 'http://www.lake-lewisville.org/oakland-park/', 170, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(418, 'Old City Park / Friendswood City Park', 'http://www.wildtexas.com/texas-parks/friendswood-old-city-park', 281, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(419, 'Old Fort Parker State Historic Site', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/old_fort_parker/', 2161, 2, 4, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 8, 0, 21, 0, 0, 0, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 7, 1, 14, 4, 0, 0, 3, 1, 0, 5, 0, 3, 0, 0, 3, NULL),
(420, 'Old Sabine Bottom Wildlife Management Area', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=34', 1712, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 12, 10, 0, 20, 0, 0, 0, 10, 0, 1, 0, 0, 3, 0, 1, 2, 2, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 5, 8, 0, 3, 0, 9, 1, 16, 4, 0, 1, 5, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(421, 'Old Tunnel Wildlife Management Area', 'https://www.tpwd.state.tx.us/state-parks/old-tunnel', 2306, 3, 3, 0, 0, 1, 0, 2, 0, 3, 0, 1, 0, 2, 0, 1, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 1, 1, 0, 12, 12, 6, 19, 0, 0, 0, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 5, 21, 0, 6, 0, 5, 1, 13, 5, 0, 2, 18, 0, 0, 4, 0, 3, 0, 0, 7, NULL),
(422, 'Olmos Basin Park', 'http://www.sanantonio.gov/sapar/olmosparkpicnicreservations.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(423, 'Olympia Park', 'http://www.sanantonio.gov/sapar/olympiareservations.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(424, 'Orsinger County Park', 'http://www.bexar.org/CommissionerPct3/BCSD_CommissionerPct3_T112_R30.html', 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(425, 'Overlook Park', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/lop/access2.phtml', 2838, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 33, 12, 1, 25, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 6, 3, 0, 5, 1, 11, 4, 0, 0, 4, 0, 0, 7, 0, 3, 0, 0, 3, NULL),
(426, 'Overlook Park - Canyon Lake', 'http://www.wildtexas.com/texas-parks/overlook-park-canyon-lake', 363, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 2, 5, 1, 0, 2, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 2, NULL),
(427, 'Pace Bend Park', 'http://austin.citysearch.com/profile/10199984/?cslink=cs_sports_recreation_3_2', 708, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 8, 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 14, 0, 0, 1, 0, 2, 0, 0, 0, NULL),
(428, 'Padre Island National Seashore', 'http://www.wildtexas.com/texas-parks/padre-island-national-seashore', 873, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 8, 1, 7, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 2, 5, 0, 2, 0, 8, 0, 3, 0, 0, 1, 1, 0, 0, 7, 0, 1, 0, 0, 5, NULL),
(429, 'Palmetto State Park', 'http://wildtexas.com/parks/palmetto.php', 741, 0, 0, 1, 0, 0, 0, 0, 0, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 3, 5, 0, 1, 0, 0, 0, 6, 0, 0, 0, 0, 2, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 8, 0, 3, 0, 6, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 2, 0, 0, 3, NULL),
(430, 'Palo Alto Park', 'http://www.sanantonio.gov/sapar/paloaltoreservations.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(431, 'Palo Duro Canyon State Park', 'http://www.wildtexas.com/texas-parks/palo-duro-canyon-state-park', 849, 0, 2, 1, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 2, 1, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 7, 6, 0, 0, 0, 6, 0, 4, 0, 0, 0, 2, 0, 0, 8, 0, 0, 0, 0, 1, NULL),
(432, 'Palo Duro Reservoir', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/palo_duro/access.phtml', 1850, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 24, 15, 0, 26, 0, 0, 0, 12, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 7, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(433, 'Palo Pinto Reservoir', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/palo_pinto/', 1757, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 15, 16, 0, 32, 0, 0, 1, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 1, 0, 4, 0, 3, 0, 0, 3, NULL),
(434, 'Pat Cleburne Lake', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/pat_cleburne/', 1837, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 12, 15, 2, 43, 0, 0, 1, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(435, 'Pat Mayse Lake', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/pat_mayse/index.phtml', 2066, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0, 12, 17, 0, 48, 0, 0, 1, 9, 1, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(436, 'Pat Mayse State Wildlife Management Area', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=18', 1741, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 12, 12, 0, 20, 0, 0, 0, 8, 1, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 5, 9, 0, 3, 0, 7, 1, 18, 4, 0, 0, 6, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(437, 'Pat Mayse West Park', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/pat_mayse/access.phtml#pointd', 1837, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 13, 12, 0, 25, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(438, 'Pauline Reservoir', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/pauline/', 1533, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 8, 0, 18, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(439, 'Peach Point Wildlife Management Area', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=41', 2131, 2, 3, 0, 0, 1, 0, 2, 0, 2, 0, 2, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 1, 1, 0, 12, 12, 0, 20, 0, 0, 0, 9, 0, 1, 0, 0, 4, 0, 2, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 5, 9, 0, 5, 0, 6, 1, 20, 4, 0, 0, 5, 7, 0, 4, 0, 3, 0, 0, 3, NULL),
(440, 'Pecan Point Park - Navarro Mills Lake', 'http://www.wildtexas.com/texas-parks/pecan-point-park-navarro-mills-lake', 328, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(441, 'Pedernales Falls State Park', 'http://www.wildtexas.com/texas-parks/pedernales-falls-state-park', 854, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 1, 1, 1, 0, 1, 4, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 2, 7, 12, 1, 3, 0, 10, 0, 3, 0, 0, 0, 2, 1, 0, 7, 0, 0, 0, 0, 6, NULL),
(442, 'Pilot Knoll Park', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/lewisville/access2.phtml', 2291, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 15, 12, 0, 27, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(443, 'Piney Point Park', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/wright_patman/access2.phtml', 2285, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 24, 13, 0, 26, 0, 0, 0, 11, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 12, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(444, 'Pittman-Sullivan Park', 'http://www.sanantonio.gov/sapar/pittmansullivanreservations.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(445, 'Playa Lakes Wildlife Management Area - Dimmitt Uni', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=50', 1635, 2, 3, 6, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 9, 0, 19, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 4, 8, 0, 3, 0, 6, 1, 16, 4, 0, 0, 4, 1, 0, 4, 0, 3, 0, 0, 3, NULL),
(446, 'Playa Lakes Wildlife Management Area - Taylor Lake', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=19', 1738, 2, 4, 5, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 12, 12, 0, 19, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 1, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 5, 8, 0, 3, 0, 6, 1, 18, 4, 0, 0, 7, 1, 0, 4, 0, 3, 0, 0, 5, NULL),
(447, 'Plowman Creek Park', 'http://www.recreation.gov/camping/Plowman_Creek_Tx/r/campgroundDetails.do?contractCode=NRSO&parkId=7', 684, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(448, 'Port Isabel Lighthouse State Historic Site', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/port_isabel_lighthouse/', 1928, 3, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 1, 12, 8, 0, 19, 0, 0, 0, 8, 0, 1, 0, 0, 4, 0, 0, 2, 1, 2, 0, 2, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 4, 9, 0, 3, 1, 5, 1, 13, 4, 0, 0, 8, 0, 0, 4, 0, 4, 0, 0, 6, NULL),
(449, 'Possum Kingdom State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/possum_kingdom/', 2010, 3, 3, 0, 0, 2, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 2, 0, 0, 2, 0, 0, 6, 0, 0, 0, 1, 2, 0, 15, 16, 0, 22, 0, 0, 0, 8, 0, 2, 0, 0, 3, 0, 1, 4, 2, 3, 1, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 1, 5, 11, 1, 6, 0, 9, 1, 12, 4, 0, 0, 6, 0, 0, 4, 0, 3, 0, 0, 5, NULL),
(450, 'Potter''s Creek Park - Canyon Lake', 'http://www.wildtexas.com/texas-parks/potters-creek-park-canyon-lake', 396, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 8, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 2, NULL),
(451, 'Powell Park', 'http://www.samrayburn.com/camping--powell-park-marina-and-campground/97', 452, 0, 2, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 6, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 0, NULL),
(452, 'Preston Bend Park', 'http://www.recreation.gov/camping/preston-bend/r/campgroundDetails.do?contractCode=NRSO&parkId=73357', 776, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 2, 1, 5, 21, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 4, 2, 0, 1, 6, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 3, 0, 0, 2, NULL),
(453, 'Proctor Lake', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/proctor/', 1854, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 15, 1, 37, 0, 0, 1, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 4, NULL),
(454, 'Promontory Park', 'http://www.wecamphere.com/Campground/CampgroundDetail.aspx?C1=9135', 415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 1, 21, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, NULL),
(455, 'Purtis Creek State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/purtis_creek/', 1971, 3, 3, 0, 0, 2, 0, 2, 0, 1, 0, 3, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 1, 0, 0, 19, 10, 0, 26, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 1, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 6, 10, 0, 6, 0, 8, 1, 12, 4, 0, 0, 6, 0, 0, 5, 0, 3, 0, 0, 5, NULL),
(456, 'Quinta Mazatlan - World Birding Center', 'http://www.quintamazatlan.com/about/mission.aspx', 540, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4, 0, 0, 0, 0, 0, 0, 8, NULL),
(457, 'Rainbow Hills Park', 'http://www.sanantonio.gov/sapar/rainbowhillsreservations.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(458, 'Ratcliff Lake Recreation Area', 'http://www.fs.fed.us/r8/texas/recreation/davy_crockett/ratcliff.shtml', 741, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 2, 3, 0, 0, 0, 0, 0, 0, 1, NULL),
(459, 'Ray Roberts Lake State Park - Isle du Bois Unit', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/ray_roberts_lake/', 2343, 3, 3, 0, 0, 2, 0, 3, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 4, 0, 1, 16, 11, 0, 27, 0, 0, 0, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 3, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 1, 0, 1, 8, 19, 1, 6, 0, 8, 1, 12, 4, 0, 1, 9, 0, 0, 4, 0, 3, 0, 0, 6, NULL),
(460, 'Ray Roberts Lake State Park - Johnson Branch Unit', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/ray_roberts_lake/', 2343, 3, 3, 0, 0, 2, 0, 3, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 4, 0, 1, 16, 11, 0, 27, 0, 0, 0, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 3, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 1, 0, 1, 8, 19, 1, 6, 0, 8, 1, 12, 4, 0, 1, 9, 0, 0, 4, 0, 3, 0, 0, 6, NULL),
(461, 'Ray Roberts Lake Wildlife Management Area', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=20', 1815, 2, 3, 0, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 2, 0, 0, 0, 2, 0, 0, 1, 0, 0, 0, 2, 1, 0, 12, 14, 0, 24, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 7, 9, 0, 3, 0, 9, 1, 19, 4, 0, 0, 7, 0, 0, 5, 0, 3, 0, 0, 4, NULL),
(462, 'Rayburn Park', 'http://www.recreation.gov/campgroundDetails.do?contractCode=NRSO&parkId=71373', 793, 0, 1, 3, 0, 0, 0, 0, 0, 2, 0, 2, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 5, 17, 0, 3, 0, 0, 0, 2, 0, 0, 0, 0, 3, 0, 0, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 0, 0, 3, 3, 0, 0, 0, 0, 2, 1, 0, 0, 0, 3, 0, 0, 2, NULL),
(463, 'Raymond Russell Park', 'http://www.bexar.org/CommissionerPct3/BCSD_CommissionerPct3_T112_R30.html', 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(464, 'Red Bluff Reservoir', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/red_bluff/', 1631, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 14, 0, 26, 0, 0, 1, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(465, 'Redhead Pond Wildlife Management Area', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=42', 1604, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 12, 11, 0, 19, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 1, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 4, 8, 0, 3, 0, 6, 1, 16, 4, 0, 0, 6, 0, 0, 4, 0, 3, 0, 0, 5, NULL),
(466, 'Resaca de la Palma State Park - World Birding Cent', 'http://www.theworldbirdingcenter.com/Resaca.html', 810, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 4, 1, 3, 0, 0, 0, 4, 0, 0, 0, 3, 0, 0, 1, 0, 0, 0, 0, 15, NULL),
(467, 'Richard Simpson Park - Lake Arlington', 'http://www.wildtexas.com/texas-parks/richard-simpson-park-lake-arlington', 329, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 2, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, NULL),
(468, 'Richland Chambers Reservoir', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/richland_chambers/', 2002, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 18, 1, 41, 0, 0, 1, 9, 0, 1, 1, 0, 3, 0, 0, 2, 1, 2, 1, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 1, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 5, 0, 3, 0, 0, 4, NULL),
(469, 'Richland Creek Wildlife Management Area', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=23', 1924, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 1, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 12, 12, 0, 20, 1, 0, 0, 10, 0, 1, 0, 0, 3, 0, 1, 2, 3, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 5, 8, 0, 3, 0, 8, 1, 22, 4, 0, 0, 5, 0, 0, 4, 0, 3, 0, 0, 6, NULL),
(470, 'Rio Grande National Wild & Scenic River', 'http://www.nps.gov/rigr/index.htm', 605, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 9, 0, 1, 3, 0, 2, 0, 1, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 2, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL),
(471, 'River Legacy Park: East & West Units', 'http://www.riverlegacy.org/', 284, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL),
(472, 'Riverside Park', 'http://www.wildtexas.com/texas-parks/riverside-park-brownwood', 271, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 2, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(473, 'Rocky Creek Park', 'http://www.recreation.gov/camping/rocky-creek-somerville-lake/r/campgroundDetails.do?contractCode=NR', 179, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(474, 'Rocky Hill Ranch', 'http://www.rockyhillranch.com/general-information-about-rocky-hill-ranch/', 1039, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 1, 8, 0, 0, 0, 4, 0, 1, 0, 0, 0, 0, 0, 0, 4, 0, 1, 0, 0, 0, NULL),
(475, 'Rocky Point Park', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/wright_patman/access2.phtml', 2285, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 24, 13, 0, 26, 0, 0, 0, 11, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 12, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(476, 'Rodriguez Park', 'http://www.sanantonio.gov/sapar/rodriguezreservations.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(477, 'Roma Bluffs - World Birding Center', 'http://www.theworldbirdingcenter.com/Roma.html', 611, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 3, 0, 0, 0, 6, 3, 0, 1, 0, 0, 0, 1, 0, 1, 0, 1, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1, 4, 0, 0, 0, 4, 0, 0, 0, 4, 0, 0, 3, 0, 0, 0, 0, 16, NULL),
(478, 'Roosevelt Park', 'http://www.sanantonio.gov/sapar/rooseveltreservations.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(479, 'Rosedale Park', 'http://www.sanantonio.gov/sapar/rosedalereservations.asp?res=2560&ver=true', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(480, 'Rusk KOA', 'http://www.koa.com/where/tx/43233/', 968, 0, 4, 3, 0, 0, 0, 1, 0, 1, 0, 0, 0, 6, 0, 0, 10, 0, 0, 0, 0, 0, 4, 0, 0, 0, 1, 0, 0, 0, 1, 3, 1, 0, 0, 2, 0, 0, 1, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 38, 2, 0, 0, 0, 1, 6, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(481, 'Sabine National Forest', 'http://www.fs.fed.us/r8/texas/recreation/sabine/sabine_gen_info.shtml', 741, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 2, 3, 0, 0, 0, 0, 0, 0, 1, NULL),
(482, 'Sabine Pass Battleground State Park & Historic Sit', 'http://www.visitsabinepassbattleground.com/index.aspx?page=14', 283, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(483, 'Salado Creek Greenway - Covington Park to South Si', 'http://www.sanantonio.gov/creekways/SaladoCovingtontoSSLions.asp', 1499, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 3, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 7, 0, 0, 0, 4, 70, 0, 1, 0, 0, 1, 0, 0, 0, 3, 2, 1, 0, 1, 0, 0, 0, 0, 1, NULL),
(484, 'Salado Creek Greenway - Huebner to Blanco Road', 'http://www.sanantonio.gov/creekways/HuebnerBlancoSaladoPg.asp', 1499, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 3, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 7, 0, 0, 0, 4, 70, 0, 1, 0, 0, 1, 0, 0, 0, 3, 2, 1, 0, 1, 0, 0, 0, 0, 1, NULL),
(485, 'Salado Creek Greenway - Loop 410 to Eisenhauer', 'http://www.sanantonio.gov/creekways/Loop410EisenhauerSaladoPg.asp', 1499, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 3, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 7, 0, 0, 0, 4, 70, 0, 1, 0, 0, 1, 0, 0, 0, 3, 2, 1, 0, 1, 0, 0, 0, 0, 1, NULL),
(486, 'Sam Bell Maxey House State Historic Site', 'http://www.thc.state.tx.us/hsites/hs_maxey.aspx?Site=Maxey', 785, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 4, 0, 1, 0, 0, 0, 0, 0, NULL),
(487, 'Sam Houston National Forest Wildlife Management Ar', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=30', 1736, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 12, 10, 0, 21, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 3, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 6, 9, 0, 3, 0, 10, 1, 17, 4, 0, 0, 6, 0, 0, 4, 0, 3, 0, 0, 4, NULL),
(488, 'Sam Rayburn Reservoir', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/sam_rayburn/', 2125, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 20, 3, 48, 0, 0, 1, 9, 0, 1, 0, 0, 4, 0, 0, 2, 1, 2, 1, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 3, 0, 4, 0, 3, 0, 0, 3, NULL),
(489, 'Sam Wahl Recreation Area - Alan Henry Reservoir', 'http://www.wildtexas.com/texas-parks/sam-wahl-recreation-area-lake-alan-henry', 438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 0, 3, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, NULL),
(490, 'San Angelo KOA', 'http://www.koa.com/where/tx/43111/', 920, 0, 0, 1, 0, 0, 0, 1, 0, 3, 1, 1, 0, 5, 0, 0, 8, 0, 0, 0, 0, 0, 3, 0, 0, 0, 1, 0, 0, 2, 1, 0, 0, 0, 0, 3, 2, 0, 1, 0, 0, 5, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 2, 0, 0, 2, 38, 2, 0, 0, 0, 0, 3, 0, 0, 1, 0, 1, 0, 0, 0, NULL),
(491, 'San Angelo State Park - O.C. Fisher Reservoir', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/san_angelo/', 2143, 3, 3, 0, 0, 2, 0, 2, 0, 2, 0, 2, 0, 1, 0, 3, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 1, 0, 0, 13, 10, 4, 25, 0, 0, 0, 9, 0, 1, 0, 0, 4, 0, 0, 2, 1, 5, 0, 3, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 1, 7, 12, 0, 4, 0, 11, 1, 13, 4, 0, 0, 6, 0, 0, 5, 0, 3, 0, 0, 6, NULL),
(492, 'San Antonio KOA', 'http://www.koa.com/where/tx/43112/', 1063, 0, 1, 0, 0, 0, 0, 1, 0, 3, 0, 0, 0, 5, 0, 0, 8, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 2, 1, 0, 2, 0, 0, 6, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 4, 0, 0, 1, 41, 2, 0, 0, 0, 0, 4, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(493, 'San Antonio Missions National Historical Park', 'http://wildtexas.com/parks/samnhp.php', 678, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 5, 0, 1, 0, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 2, NULL),
(494, 'San Augustine Park', 'http://www.recreation.gov/camping/san-augustine/r/campgroundDetails.do?contractCode=NRSO&parkId=7140', 179, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(495, 'San Bernard National Wildlife Refuge', 'http://www.fws.gov/southwest/refuges/texas/texasmidcoast/', 620, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 13, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 2, 9, NULL),
(496, 'San Felipe State Historic Site', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/stephen_f_austin_and_san_felipe/', 2412, 3, 4, 0, 0, 2, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 2, 0, 0, 0, 0, 0, 3, 0, 1, 1, 2, 0, 0, 12, 9, 1, 21, 0, 0, 0, 11, 0, 1, 0, 0, 3, 0, 0, 3, 1, 2, 0, 5, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 1, 10, 16, 0, 6, 0, 13, 1, 12, 4, 0, 0, 6, 0, 0, 4, 0, 3, 0, 0, 5, NULL),
(497, 'San Marcos City Park', 'http://www.ci.san-marcos.tx.us/departments/parks/?menu=DP13', 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(498, 'San Pedro Park', 'http://www.sanantonio.gov/sapar/sanpedroreservations.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(499, 'Sanders Cove Park', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/pat_mayse/access.phtml', 1837, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 13, 12, 0, 25, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(500, 'Sandy Creek Park', 'https://parks.traviscountytx.gov/find-a-park/sandy-creek', 545, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 3, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 7, 2, 1, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 2, 1, 0, 2, 0, 0, 0, 1, 2, 0, 2, 0, 0, 2, 0, 0, 0, 3, 2, 0, 1, 0, 9, 4, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 2, NULL),
(501, 'Santa Ana National Wildlife Refuge', 'https://www.fws.gov/refuges/profiles/index.cfm?id=21551', 535, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 2, 0, 0, 0, 2, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 2, NULL),
(502, 'Sea Center Texas', 'http://www.tpwd.state.tx.us/spdest/visitorcenters/seacenter/', 1733, 2, 3, 1, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 2, 0, 0, 12, 9, 0, 22, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 2, 2, 1, 2, 0, 3, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 9, 0, 4, 0, 5, 1, 13, 4, 0, 0, 4, 0, 0, 4, 0, 3, 0, 0, 6, NULL),
(503, 'Sea Rim State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/sea_rim/', 2093, 3, 3, 0, 0, 2, 0, 2, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 1, 0, 4, 12, 10, 0, 20, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 1, 2, 1, 5, 0, 4, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 4, 12, 0, 5, 0, 9, 1, 16, 4, 0, 0, 6, 0, 0, 4, 0, 3, 0, 1, 10, NULL),
(504, 'Sebastopol State Historic Site', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/sebastopol/', 2161, 2, 4, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 8, 0, 21, 0, 0, 0, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 7, 1, 14, 4, 0, 0, 3, 1, 0, 5, 0, 3, 0, 0, 3, NULL),
(505, 'Selma Hughes Park - Lake Austin', 'http://www.wildtexas.com/texas-parks/selma-hughes-park-lake-austin', 332, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 2, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(506, 'Selma Park - Lake Amon G. Carter', 'http://www.cityofbowietx.com/index.aspx?NID=274', 294, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 4, 0, 0, 1, 0, 1, 0, 0, 0, NULL),
(507, 'Seminole Canyon State Park & Historic Site', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/seminole_canyon/', 2056, 3, 3, 0, 0, 2, 0, 2, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 1, 0, 0, 12, 8, 1, 19, 0, 0, 0, 10, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 1, 7, 11, 0, 5, 0, 7, 1, 12, 7, 0, 0, 8, 0, 0, 4, 0, 3, 0, 0, 5, NULL),
(508, 'Sheldon Lake State Park & Environmental Learning C', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/sheldon_lake/', 2256, 3, 4, 0, 0, 4, 0, 2, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 1, 0, 0, 14, 9, 1, 27, 0, 0, 0, 8, 0, 1, 0, 0, 5, 0, 1, 2, 1, 2, 0, 3, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 5, 11, 0, 9, 0, 5, 1, 16, 4, 0, 0, 8, 2, 0, 4, 0, 4, 0, 0, 9, NULL),
(509, 'Sibley Nature Center', 'http://www.wildtexas.com/texas-parks/sibley-nature-center', 263, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 11, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(510, 'Sierra Diablo Wildlife Management Area', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=21', 1726, 2, 3, 0, 0, 1, 0, 2, 0, 2, 0, 2, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 1, 1, 0, 12, 9, 0, 19, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 4, 8, 0, 3, 0, 6, 1, 16, 4, 0, 0, 4, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(511, 'Silverlake Park', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/grapevine/access.phtml#pointc', 2003, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 19, 12, 2, 28, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 9, 0, 3, 0, 8, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(512, 'Sister Grove Park at Lake Lavon', 'http://www.lake-lavon.com/sister-grove-park/', 828, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 5, 6, 1, 2, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 1, 3, 17, 0, 0, 0, 14, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(513, 'Somerville Wildlife Management Area', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=52', 1894, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 2, 0, 0, 1, 0, 0, 0, 1, 1, 0, 12, 13, 0, 20, 0, 0, 0, 10, 1, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 5, 10, 0, 4, 0, 6, 1, 17, 4, 0, 0, 5, 1, 0, 5, 0, 3, 0, 0, 5, NULL),
(514, 'South Llano River State Park', 'http://wildtexas.com/parks/slrsp.php', 701, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 3, 0, 0, 0, 11, 0, 0, 0, 0, 3, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 2, 3, 1, 0, 0, 6, 0, 6, 0, 0, 0, 2, 0, 0, 0, 0, 3, 0, 1, 1, NULL),
(515, 'South Padre Island Birding & Nature Center - World', 'http://southpadreislandbirding.com/', 636, 0, 2, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 9, 0, 0, 0, 2, 0, 1, 1, 1, 2, 0, 2, 0, 2, 0, 0, 25, NULL),
(516, 'South Padre Island KOA', 'http://koa.com/campgrounds/south-padre/', 1275, 1, 0, 2, 0, 1, 1, 1, 0, 3, 0, 0, 0, 2, 0, 0, 10, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 4, 1, 4, 5, 4, 0, 0, 4, 0, 2, 2, 0, 0, 11, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2, 2, 1, 1, 32, 1, 0, 0, 0, 0, 4, 0, 0, 0, 0, 4, 0, 0, 1, NULL),
(517, 'Southside Lions Park', 'http://www.sanantonio.gov/sapar/sslionsparkreservations.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(518, 'Sowell Creek Park', 'http://www.recreation.gov/camping/sowell-creek/r/campgroundBookingWindow.do?contractCode=NRSO&parkId', 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(519, 'Speegleville Park - Waco Lake', 'http://www.wildtexas.com/texas-parks/speegleville-park-waco-lake', 316, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, NULL),
(520, 'Stamford Reservoir', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/stamford/', 1921, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 18, 2, 37, 0, 0, 1, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 1, 0, 4, 0, 3, 0, 0, 3, NULL),
(521, 'Starr Family Home State Historic Site', 'http://www.thc.state.tx.us/hsites/hs_starr.aspx?Site=Starr', 785, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 4, 0, 1, 0, 0, 0, 0, 0, NULL),
(522, 'Stephen F. Austin State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/stephen_f_austin_and_san_felipe/', 2412, 3, 4, 0, 0, 2, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 2, 0, 0, 0, 0, 0, 3, 0, 1, 1, 2, 0, 0, 12, 9, 1, 21, 0, 0, 0, 11, 0, 1, 0, 0, 3, 0, 0, 3, 1, 2, 0, 5, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 1, 10, 16, 0, 6, 0, 13, 1, 12, 4, 0, 0, 6, 0, 0, 4, 0, 3, 0, 0, 5, NULL),
(523, 'Stevenson Park', 'http://www.wildtexas.com/texas-parks/stevenson-park', 280, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(524, 'Stillhouse Hollow Park', 'http://swf67.swf-wc.usace.army.mil/stillhouse/', 416, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, NULL),
(525, 'Stone Oak Park', 'http://www.sanantonio.gov/sapar/nature.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(526, 'Striker Reservoir', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/striker/', 1859, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 14, 15, 5, 45, 0, 0, 1, 8, 0, 1, 1, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(527, 'Sunshine RV', 'http://www.passport-america.com/campgrounds/united_states/texas/harlingen/sunshine_rv_resort_an_enco', 436, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(528, 'Sweetwater Reservoir', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/sweetwater/', 1769, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 20, 2, 36, 0, 0, 1, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(529, 'Tawakoni Wildlife Management Area - Caddo Creek Un', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=24', 1868, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 13, 13, 0, 21, 0, 0, 0, 10, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 5, 8, 0, 3, 0, 8, 1, 18, 4, 0, 0, 5, 0, 0, 4, 0, 3, 0, 0, 4, NULL),
(530, 'Tawakoni Wildlife Management Area - Duck Cove Unit', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=24', 1868, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 13, 13, 0, 21, 0, 0, 0, 10, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 5, 8, 0, 3, 0, 8, 1, 18, 4, 0, 0, 5, 0, 0, 4, 0, 3, 0, 0, 4, NULL),
(531, 'Tawakoni Wildlife Management Area - Pawnee Inlet U', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=24', 1868, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 13, 13, 0, 21, 0, 0, 0, 10, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 5, 8, 0, 3, 0, 8, 1, 18, 4, 0, 0, 5, 0, 0, 4, 0, 3, 0, 0, 4, NULL),
(532, 'Taylor Park', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/granger/access.phtml#pointc', 1934, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 1, 0, 0, 19, 13, 0, 26, 0, 0, 0, 11, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 9, 0, 3, 0, 6, 1, 13, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(533, 'Temple''s Lake Park', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/belton/access2.phtml', 2088, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 22, 12, 0, 25, 0, 0, 0, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 1, 3, 0, 6, 1, 11, 4, 0, 7, 4, 0, 0, 4, 0, 3, 0, 0, 3, NULL);
INSERT INTO `park` (`Park_ID`, `Park_Name`, `Website`, `word_count`, `social`, `family`, `play`, `swing`, `child`, `party`, `cook`, `bbq`, `pet`, `barbecue`, `picnic`, `grill`, `kid`, `dogs`, `animal`, `cabin`, `bathroom`, `handicap`, `restroom`, `beer`, `smoke`, `free`, `isolate`, `peace`, `quiet`, `anti`, `drink`, `beach`, `boat`, `water`, `sun`, `fish`, `wading`, `wade`, `pool`, `river`, `stream`, `tube`, `floa`, `sprinkler`, `hot`, `bikini`, `wet`, `ski`, `dive`, `swim`, `active`, `walk`, `exercise`, `climb`, `adventur`, `athletic`, `soccer`, `softball`, `basketball`, `baseball`, `sports`, `volleyball`, `jog`, `bik`, `backpack`, `exciting`, `explor`, `hik`, `trail`, `look`, `nature`, `relax`, `camp`, `fire`, `wildlife`, `cave`, `sight`, `watch`, `view`, `plant`, `stargaze`, `star`, `pictur`, `photo`, `astronomy`, `outside`, `bird`, `Park_Description`) VALUES
(534, 'Texarkana KOA', 'http://www.texarkanarvpark.com/', 115, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 4, 0, 0, 0, 0, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(535, 'Texas State Railroad', 'http://www.texasstaterr.com/', 274, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 2, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 4, 0, 0, 0, NULL),
(536, 'Thomason Park', 'http://www.wildtexas.com/texas-parks/thomason-park', 210, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(537, 'Timpson Reservoir', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/timpson/', 1937, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 15, 18, 6, 47, 0, 0, 1, 8, 0, 1, 0, 0, 4, 0, 0, 2, 1, 2, 2, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(538, 'Toledo Bend Reservoir', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/toledo_bend/', 2399, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 20, 6, 59, 0, 0, 1, 13, 0, 1, 0, 0, 4, 0, 0, 2, 1, 2, 2, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 12, 4, 0, 1, 3, 4, 0, 4, 0, 3, 0, 0, 3, NULL),
(539, 'Tony Houseman Wildlife Management Area', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=38', 1666, 2, 3, 1, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 14, 10, 0, 21, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 3, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 6, 8, 0, 3, 0, 7, 1, 18, 4, 0, 0, 6, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(540, 'Town Lake / Lady Bird Lake', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/town_lake/', 1533, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 8, 0, 18, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(541, 'Tradinghouse Creek Reservoir', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/tradinghouse/', 1888, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 12, 16, 1, 45, 0, 0, 1, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 1, 0, 4, 0, 3, 0, 0, 3, NULL),
(542, 'Travis Park', 'http://www.sanantonio.gov/sapar/travisreservations.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(543, 'Trigg Park', 'http://www.wildtexas.com/texas-parks/trigg-park', 212, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(544, 'Trinity River National Wildlife Refuge', 'http://www.fws.gov/southwest/refuges/texas/trinityriver/', 481, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 7, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 8, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 2, 7, NULL),
(545, 'Twin Bridges Park at Waco Lake', 'http://www.wildtexas.com/texas-parks/twin-bridges-park-waco-lake', 302, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(546, 'Twin Buttes Reservoir', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/twin_buttes/', 1893, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 13, 17, 2, 39, 0, 0, 1, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(547, 'Twin Coves Park', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/grapevine/access.phtml', 2003, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 19, 12, 2, 28, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 9, 0, 3, 0, 8, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(548, 'Twin Dikes Park', 'http://www.recreation.gov/camping/twin-dikes/r/campgroundDetails.do?contractCode=NRSO&parkId=71463', 729, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 5, 17, 0, 4, 0, 0, 0, 1, 0, 0, 0, 0, 4, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 3, 1, 1, 2, 0, 0, 2, 2, 1, 0, 0, 0, 2, 0, 0, 0, 0, 3, 0, 0, 1, NULL),
(549, 'Tyler Nature Center', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=59', 1701, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 2, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 12, 9, 0, 19, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 1, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 5, 10, 0, 11, 0, 6, 2, 16, 4, 0, 1, 5, 1, 0, 4, 0, 3, 0, 0, 5, NULL),
(550, 'Tyler State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/tyler/', 2173, 3, 3, 1, 0, 2, 0, 3, 0, 1, 0, 2, 0, 3, 0, 1, 2, 0, 0, 0, 0, 0, 5, 0, 1, 0, 1, 0, 0, 20, 11, 0, 29, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 1, 2, 1, 4, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 2, 5, 15, 0, 8, 1, 9, 2, 12, 4, 0, 1, 6, 1, 0, 5, 0, 3, 0, 0, 6, NULL),
(551, 'Union Grove Park', 'http://www.swf-wc.usace.army.mil/stillhouse/Recreation/Camping/Devareas.asp', 611, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 4, 3, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(552, 'Varner-Hogg Plantation State Historic Site', 'http://www.visitvarnerhoggplantation.com/index.aspx?page=19', 281, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 1, 0, 2, 0, 0, 0, NULL),
(553, 'Vidaurri Park', 'http://www.sanantonio.gov/sapar/vidaurrireservations.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(554, 'Villa Coronado Park', 'http://www.sanantonio.gov/sapar/villacoronado.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(555, 'Village Creek State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/village_creek/', 1883, 3, 3, 0, 0, 2, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 1, 0, 0, 13, 8, 0, 20, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 6, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 1, 8, 14, 0, 6, 0, 8, 3, 12, 4, 0, 1, 6, 0, 0, 4, 0, 3, 0, 0, 6, NULL),
(556, 'Waco North KOA', 'http://www.koakampgrounds.com/where/tx/43130/index.htm', 432, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 16, 1, 0, 0, 0, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(557, 'Walker Ranch Historic Landmark Park', 'http://www.sanaturalareas.org/wr/wrindex.html', 267, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 0, 2, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, NULL),
(558, 'Walling Bend - Whitney Lake', 'http://www.recreation.gov/camping/Walling_Bend_Tx/r/campgroundDetails.do?contractCode=NRSO&parkId=71', 179, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(559, 'Walsh Boat Landing - Lake Austin', 'http://www.wildtexas.com/texas-parks/walsh-boat-landing-lake-austin', 344, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 2, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(560, 'Walter Buck Wildlife Management Area', 'http://www.tpwd.state.tx.us/state-parks/south-llano-river', 1965, 3, 3, 0, 0, 2, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 1, 0, 0, 12, 9, 0, 21, 0, 0, 0, 14, 0, 2, 0, 0, 3, 0, 1, 2, 1, 5, 0, 3, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 1, 7, 12, 0, 5, 0, 9, 1, 13, 4, 0, 1, 6, 0, 0, 4, 0, 3, 0, 0, 8, NULL),
(561, 'Walter Umphrey State Park', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/walter_umphrey/', 1533, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 8, 0, 18, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(562, 'Washington-on-the-Brazos State Historic Site', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/washington_on_the_brazos/', 2428, 3, 3, 0, 0, 1, 1, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 1, 1, 0, 12, 8, 1, 19, 0, 0, 0, 10, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 4, 3, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 1, 4, 10, 2, 3, 0, 5, 2, 12, 4, 2, 1, 7, 1, 0, 9, 1, 3, 0, 0, 6, NULL),
(563, 'Waxahachie Creek Park', 'http://www.recreation.gov/camping/waxahachie-ck/r/campgroundDetails.do?contractCode=NRSO&parkId=7148', 179, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(564, 'Welder Flats Wildlife Management Area', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=43', 1692, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 14, 10, 0, 21, 1, 0, 0, 8, 0, 1, 0, 0, 3, 0, 1, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 4, 8, 0, 3, 0, 6, 1, 18, 4, 0, 0, 5, 0, 0, 4, 0, 3, 0, 0, 4, NULL),
(565, 'Westcave Preserve', 'http://www.westcave.org/', 60, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, NULL),
(566, 'Westcliff Park', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/belton/access2.phtml#areac', 2088, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 22, 12, 0, 25, 0, 0, 0, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 1, 3, 0, 6, 1, 11, 4, 0, 7, 4, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(567, 'White Oak Creek Wildlife Management Area', 'http://www.tpwd.state.tx.us/huntwild/hunt/wma/find_a_wma/list/?id=35', 1733, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 12, 10, 0, 21, 0, 0, 0, 9, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 6, 8, 0, 3, 0, 6, 1, 17, 4, 0, 1, 6, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(568, 'White River Reservoir', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/white_river/', 1972, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 13, 18, 2, 43, 0, 0, 1, 16, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 5, 0, 3, 0, 0, 3, NULL),
(569, 'Wichita Reservoir', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/wichita/', 1624, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 14, 0, 26, 0, 0, 1, 8, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(570, 'Wild Basin Preserve', 'http://www.austinparks.org/apfweb/park.php?&parkId=681', 388, 0, 1, 1, 0, 2, 0, 0, 0, 1, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 2, 0, 1, 0, 0, 0, 5, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 1, 6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, NULL),
(571, 'Willis Creek Park', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/granger/access.phtml#pointa', 1934, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 1, 0, 0, 19, 13, 0, 26, 0, 0, 0, 11, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 9, 0, 3, 0, 6, 1, 13, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(572, 'Wilson H. Fox Park', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/granger/access.phtml#pointd', 1934, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 1, 0, 0, 19, 13, 0, 26, 0, 0, 0, 11, 0, 1, 0, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 9, 0, 3, 0, 6, 1, 13, 4, 0, 0, 3, 0, 0, 4, 0, 3, 0, 0, 3, NULL),
(573, 'Wolf Creek Park - Navarro Mills Lake', 'http://www.wildtexas.com/texas-parks/wolf-creek-park-navarro-mills-lake', 346, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(574, 'Woodlawn Lake Park', 'http://www.sanantonio.gov/sapar/woodlawnreservations.asp', 492, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(575, 'Wright Patman Lake', 'http://www.tpwd.state.tx.us/fishboat/fish/recreational/lakes/wright_patman/', 1890, 2, 3, 0, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 12, 15, 3, 48, 0, 0, 1, 11, 1, 1, 1, 0, 3, 0, 0, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 3, 0, 5, 1, 11, 4, 0, 0, 3, 1, 0, 4, 0, 3, 0, 0, 3, NULL),
(576, 'Wyler Aerial Tramway - Franklin Mountains State Pa', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/wyler_aerial_tram/', 2144, 3, 3, 0, 0, 2, 0, 2, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 3, 0, 0, 0, 1, 0, 0, 12, 8, 2, 19, 0, 0, 0, 8, 0, 1, 0, 0, 3, 0, 1, 2, 1, 2, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 1, 0, 4, 9, 0, 3, 0, 5, 1, 13, 4, 0, 1, 12, 0, 0, 5, 0, 3, 0, 0, 10, NULL),
(577, 'Yegua Creek Park', 'http://www.recreation.gov/camping/yegua-creek/r/campgroundDetails.do?contractCode=NRSO&parkId=71510', 698, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 5, 20, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 2, 1, 4, 2, 1, 0, 5, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 3, 0, 0, 0, NULL),
(578, 'Zaragoza Birthplace State Historic Site', 'http://www.tpwd.state.tx.us/spdest/findadest/parks/goliad_and_mission_espiritu_santo/act.phtml#zarag', 2321, 3, 3, 0, 0, 2, 0, 2, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 1, 0, 0, 12, 8, 0, 20, 0, 0, 1, 10, 0, 1, 1, 0, 3, 0, 0, 2, 1, 4, 1, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 1, 5, 11, 1, 6, 0, 7, 1, 13, 4, 0, 0, 6, 0, 0, 4, 0, 3, 0, 0, 6, NULL),
(579, 'Zilker Metropolitan Park', 'http://www.austinparks.org/apfweb/park.php?&parkId=386', 445, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 4, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 5, 1, 0, 0, 0, 0, 0, 1, 1, 2, 1, 0, 1, 0, 0, 0, 0, 0, 1, 6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 1, NULL),
(580, 'Zilker Nature Preserve', 'http://www.austinparks.org/apfweb/park.php?&parkId=696', 383, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 2, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 6, 2, 5, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 5, 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `park_dimensions`
--

CREATE TABLE IF NOT EXISTS `park_dimensions` (
  `Park_Dimensions_ID` int(11) NOT NULL,
  `Park_ID` int(11) NOT NULL,
  `Social` int(11) NOT NULL,
  `Water` int(11) NOT NULL,
  `Active` int(11) NOT NULL,
  `Nature` int(11) NOT NULL,
  `Social2` int(11) NOT NULL,
  `Water2` int(11) NOT NULL,
  `Active2` int(11) NOT NULL,
  `Nature2` int(11) NOT NULL,
  PRIMARY KEY (`Park_Dimensions_ID`),
  UNIQUE KEY `Park_ID` (`Park_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This will contain the reduced dimensions for each park';

--
-- Dumping data for table `park_dimensions`
--

INSERT INTO `park_dimensions` (`Park_Dimensions_ID`, `Park_ID`, `Social`, `Water`, `Active`, `Nature`, `Social2`, `Water2`, `Active2`, `Nature2`) VALUES
(0, 0, 1, 1, 1, 1, 4, 4, 4, 4),
(1, 1, 4, 4, 2, 10, 2, 2, 1, 6),
(2, 2, 0, 0, 0, 4, 0, 0, 0, 7),
(3, 3, 0, 0, 4, 1, 0, 0, 5, 1),
(4, 4, 0, 2, 0, 1, 0, 6, 0, 3),
(5, 5, 2, 2, 1, 6, 2, 2, 1, 6),
(6, 6, 3, 2, 0, 2, 5, 3, 0, 5),
(7, 7, 4, 6, 0, 8, 3, 4, 0, 6),
(8, 8, 4, 4, 0, 4, 4, 4, 0, 5),
(9, 9, 1, 0, 11, 1, 1, 0, 5, 0),
(10, 10, 0, 0, 0, 1, 0, 0, 0, 7),
(11, 11, 0, 2, 0, 1, 0, 6, 0, 3),
(12, 12, 7, 0, 16, 1, 3, 0, 5, 0),
(13, 13, 0, 2, 0, 1, 0, 6, 0, 3),
(14, 14, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 15, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 16, 3, 5, 1, 12, 2, 3, 1, 6),
(17, 17, 0, 0, 7, 1, 0, 0, 5, 1),
(18, 18, 1, 6, 0, 12, 1, 3, 0, 6),
(19, 19, 0, 0, 0, 1, 0, 0, 0, 7),
(20, 20, 15, 20, 8, 21, 3, 4, 2, 5),
(21, 21, 0, 0, 5, 1, 0, 0, 5, 1),
(22, 22, 0, 2, 1, 1, 0, 6, 3, 3),
(23, 23, 2, 4, 3, 2, 2, 5, 3, 2),
(24, 24, 4, 10, 5, 21, 1, 3, 1, 6),
(25, 25, 3, 2, 4, 3, 3, 2, 4, 3),
(26, 26, 0, 6, 6, 8, 0, 4, 3, 4),
(27, 27, 0, 0, 12, 1, 0, 0, 5, 0),
(28, 28, 1, 0, 0, 1, 5, 0, 0, 7),
(29, 29, 15, 24, 8, 21, 3, 5, 2, 4),
(30, 30, 7, 23, 22, 25, 1, 4, 3, 4),
(31, 31, 1, 7, 0, 12, 1, 4, 0, 6),
(32, 32, 11, 19, 8, 21, 2, 4, 2, 5),
(33, 33, 0, 1, 0, 18, 0, 0, 0, 7),
(34, 34, 14, 28, 14, 25, 2, 5, 2, 4),
(35, 35, 0, 0, 1, 3, 0, 0, 2, 6),
(36, 36, 6, 10, 3, 14, 2, 4, 1, 6),
(37, 37, 9, 10, 4, 6, 4, 5, 2, 3),
(38, 38, 15, 19, 8, 21, 3, 4, 2, 5),
(39, 39, 16, 17, 10, 28, 3, 3, 2, 5),
(40, 40, 0, 2, 2, 2, 0, 4, 4, 4),
(41, 41, 1, 0, 0, 1, 5, 0, 0, 7),
(42, 42, 13, 17, 11, 23, 3, 4, 2, 5),
(43, 43, 3, 12, 2, 16, 1, 4, 1, 6),
(44, 44, 15, 19, 12, 24, 3, 4, 2, 5),
(45, 45, 12, 21, 8, 23, 2, 4, 2, 5),
(46, 46, 0, 0, 3, 4, 0, 0, 4, 5),
(47, 47, 1, 0, 0, 1, 5, 0, 0, 7),
(48, 48, 12, 19, 8, 27, 2, 4, 2, 5),
(49, 49, 1, 0, 7, 1, 1, 0, 5, 1),
(50, 50, 7, 7, 5, 14, 3, 3, 2, 6),
(51, 51, 2, 1, 3, 5, 2, 1, 3, 5),
(52, 52, 17, 23, 21, 32, 2, 3, 3, 5),
(53, 53, 17, 23, 21, 32, 2, 3, 3, 5),
(54, 54, -1, 2, 6, 13, 0, 1, 3, 6),
(55, 55, 10, 26, 8, 22, 2, 5, 2, 4),
(56, 56, 8, 24, 8, 24, 2, 5, 2, 5),
(57, 57, 0, 0, 0, 1, 0, 0, 0, 7),
(58, 58, 12, 19, 20, 27, 2, 3, 3, 4),
(59, 59, 3, 8, 3, 15, 1, 3, 1, 6),
(60, 60, 13, 21, 8, 30, 2, 4, 1, 5),
(61, 61, 28, 32, 6, 22, 4, 5, 1, 4),
(62, 62, 4, 4, 0, 10, 2, 2, 0, 6),
(63, 63, 1, 0, 7, 1, 1, 0, 5, 1),
(64, 64, 3, 3, 0, 8, 2, 2, 0, 7),
(65, 65, -1, 9, 17, 11, 0, 3, 4, 3),
(66, 66, 1, 2, 1, 2, 2, 4, 2, 4),
(67, 67, 8, 6, 1, 8, 4, 3, 1, 6),
(68, 68, 13, 5, 5, 1, 6, 2, 4, 1),
(69, 69, 5, 6, 8, 17, 2, 2, 3, 6),
(70, 70, 0, 8, 18, 6, 0, 3, 5, 2),
(71, 71, 11, 22, 8, 21, 2, 5, 2, 5),
(72, 72, 10, 18, 11, 25, 2, 4, 2, 5),
(73, 73, 7, 25, 8, 25, 1, 5, 2, 5),
(74, 74, 0, 3, 0, 0, 0, 7, 0, 0),
(75, 75, 1, 2, 2, 1, 2, 4, 4, 2),
(76, 76, 7, 4, 10, 15, 2, 1, 3, 5),
(77, 77, 11, 21, 8, 27, 2, 4, 2, 5),
(78, 78, 20, 11, 0, 14, 5, 3, 0, 6),
(79, 79, 1, 6, 0, 12, 1, 3, 0, 6),
(80, 80, 8, 8, 2, 13, 3, 3, 1, 6),
(81, 81, 11, 17, 8, 22, 2, 4, 2, 5),
(82, 82, 11, 9, 1, 14, 4, 3, 0, 6),
(83, 83, 0, 0, 3, 1, 0, 0, 5, 2),
(84, 84, 12, 20, 8, 24, 2, 4, 2, 5),
(85, 85, 1, 0, 3, 1, 2, 0, 5, 2),
(86, 86, 12, 20, 8, 24, 2, 4, 2, 5),
(87, 87, 5, 2, 1, 7, 4, 2, 1, 7),
(88, 88, 11, 20, 8, 21, 2, 4, 2, 5),
(89, 89, 1, 6, 0, 12, 1, 3, 0, 6),
(90, 90, 11, 24, 8, 21, 2, 5, 2, 4),
(91, 91, 3, 11, 19, 6, 1, 3, 4, 1),
(92, 92, 3, 9, 18, 6, 1, 3, 5, 2),
(93, 93, 6, 0, 4, 6, 4, 0, 3, 5),
(94, 94, 18, 4, 19, 8, 5, 1, 5, 2),
(95, 95, 14, 17, 10, 24, 3, 3, 2, 5),
(96, 96, 15, 22, 8, 21, 3, 4, 2, 5),
(97, 97, 16, 23, 8, 21, 3, 4, 2, 4),
(98, 98, 0, 1, 0, 0, 0, 7, 0, 0),
(99, 99, 6, 5, 0, 7, 4, 3, 0, 6),
(100, 100, 1, 0, 0, 1, 5, 0, 0, 7),
(101, 101, 1, 0, 7, 2, 1, 0, 5, 1),
(102, 102, 16, 23, 9, 29, 3, 4, 2, 5),
(103, 103, 0, 3, 1, 0, 0, 7, 2, 0),
(104, 104, 2, 3, 7, 11, 1, 2, 3, 5),
(105, 105, 0, 0, 1, 1, 0, 0, 4, 4),
(106, 106, 4, 6, 0, 1, 4, 6, 0, 1),
(107, 107, 10, 21, 15, 30, 2, 4, 2, 5),
(108, 108, -1, 1, 0, 12, -1, 1, 0, 7),
(109, 109, 0, 1, 7, 1, 0, 1, 5, 1),
(110, 110, 1, 0, 0, 1, 5, 0, 0, 7),
(111, 111, 10, 14, 0, 12, 3, 5, 0, 5),
(112, 112, 11, 17, 8, 21, 3, 4, 2, 5),
(113, 113, 11, 12, 7, 13, 4, 4, 2, 4),
(114, 114, 7, 29, 6, 17, 1, 6, 1, 3),
(115, 115, 12, 19, 8, 27, 2, 4, 2, 5),
(116, 116, 34, 22, 11, 12, 5, 4, 3, 3),
(117, 117, 1, 0, 21, 0, 0, 0, 5, 0),
(118, 118, -2, 6, 2, 13, -1, 3, 1, 6),
(119, 119, 11, 22, 8, 21, 2, 5, 2, 5),
(120, 120, 13, 18, 9, 24, 3, 4, 2, 5),
(121, 121, 5, 7, 6, 12, 2, 3, 3, 5),
(122, 122, 4, 7, 4, 12, 2, 3, 2, 6),
(123, 123, 14, 22, 8, 31, 2, 4, 1, 5),
(124, 124, 9, 18, 9, 26, 2, 4, 2, 5),
(125, 125, 9, 22, 15, 27, 2, 4, 3, 5),
(126, 126, -1, 1, 1, 5, -1, 1, 1, 7),
(127, 127, 1, 0, 21, 1, 0, 0, 5, 0),
(128, 128, 19, 18, 9, 14, 4, 4, 2, 4),
(129, 129, 19, 18, 9, 14, 4, 4, 2, 4),
(130, 130, 1, 0, 1, 1, 4, 0, 4, 4),
(131, 131, 1, 0, 3, 1, 2, 0, 5, 2),
(132, 132, 5, 10, 4, 11, 2, 4, 2, 5),
(133, 133, 0, 0, 3, 1, 0, 0, 5, 2),
(134, 134, 7, 4, 1, 5, 5, 3, 1, 5),
(135, 135, 2, 3, 9, 5, 1, 2, 4, 2),
(136, 136, 0, 0, 1, 4, 0, 0, 2, 7),
(137, 137, 2, 5, 4, 3, 2, 5, 3, 3),
(138, 138, 0, 1, 7, 1, 0, 1, 5, 1),
(139, 139, 11, 17, 8, 22, 2, 4, 2, 5),
(140, 140, 1, 0, 0, 1, 5, 0, 0, 7),
(141, 141, 14, 22, 10, 28, 2, 4, 2, 5),
(142, 142, 14, 22, 10, 28, 2, 4, 2, 5),
(143, 143, 15, 19, 8, 21, 3, 4, 2, 5),
(144, 144, 1, 0, 16, 1, 0, 0, 5, 0),
(145, 145, 13, 19, 12, 31, 2, 3, 2, 5),
(146, 146, 17, 18, 11, 26, 3, 3, 2, 5),
(147, 147, 2, 3, 9, 5, 1, 2, 4, 2),
(148, 148, 3, 2, 0, 5, 3, 2, 0, 6),
(149, 149, 2, 3, 9, 5, 1, 2, 4, 2),
(150, 150, 15, 23, 8, 21, 3, 5, 2, 4),
(151, 151, 12, 18, 11, 27, 2, 3, 2, 5),
(152, 152, 21, 9, 5, 10, 6, 2, 2, 5),
(153, 153, 21, 9, 5, 10, 6, 2, 2, 5),
(154, 154, 12, 20, 8, 28, 2, 4, 2, 5),
(155, 155, 10, 19, 13, 30, 2, 3, 2, 5),
(156, 156, 3, 12, 2, 11, 1, 5, 1, 5),
(157, 157, 1, 3, 0, 0, 2, 7, 0, 0),
(158, 158, 2, 3, 9, 5, 1, 2, 4, 2),
(159, 159, 6, 19, 8, 27, 1, 4, 2, 5),
(160, 160, 11, 21, 9, 31, 2, 4, 2, 5),
(161, 161, 11, 19, 14, 25, 2, 4, 3, 5),
(162, 162, 0, 3, 4, 0, 0, 4, 4, 0),
(163, 163, 11, 16, 4, 25, 2, 4, 1, 6),
(164, 164, 0, 1, 0, 0, 0, 7, 0, 0),
(165, 165, 14, 22, 8, 31, 2, 4, 1, 5),
(166, 166, 12, 13, 2, 16, 4, 4, 1, 5),
(167, 167, -2, 10, 3, 17, -1, 3, 1, 6),
(168, 168, 11, 17, 8, 22, 2, 4, 2, 5),
(169, 169, 10, 1, 5, 10, 5, 0, 3, 6),
(170, 170, 12, 20, 8, 24, 2, 4, 2, 5),
(171, 171, 13, 19, 8, 26, 3, 4, 2, 5),
(172, 172, 2, 3, 9, 5, 1, 2, 4, 2),
(173, 173, 5, 5, 10, 3, 3, 3, 5, 1),
(174, 174, 4, 0, 10, 13, 2, 0, 4, 5),
(175, 175, 8, 11, 6, 14, 3, 4, 2, 5),
(176, 176, 65, 54, 18, 48, 5, 4, 2, 4),
(177, 177, 1, 2, 2, 0, 2, 5, 4, 0),
(178, 178, 9, 22, 12, 26, 2, 4, 2, 5),
(179, 179, 11, 25, 8, 21, 2, 5, 2, 4),
(180, 180, 9, 18, 9, 21, 2, 4, 2, 5),
(181, 181, 1, 1, 0, 5, 1, 1, 0, 7),
(182, 182, 9, 19, 8, 22, 2, 4, 2, 5),
(183, 183, 15, 25, 10, 25, 3, 4, 2, 5),
(184, 184, 9, 16, 2, 14, 3, 5, 1, 5),
(185, 185, 10, 19, 8, 23, 2, 4, 2, 5),
(186, 186, 4, 6, 2, 8, 3, 4, 1, 5),
(187, 187, 2, 1, 0, 3, 4, 2, 0, 7),
(188, 188, -1, 1, 0, 12, -1, 1, 0, 7),
(189, 189, 14, 17, 12, 21, 3, 4, 3, 5),
(190, 190, 11, 17, 8, 22, 2, 4, 2, 5),
(191, 191, 11, 22, 8, 21, 2, 5, 2, 5),
(192, 192, 17, 22, 10, 28, 3, 4, 2, 5),
(193, 193, 9, 21, 15, 30, 2, 4, 2, 5),
(194, 194, 2, 3, 9, 5, 1, 2, 4, 2),
(195, 195, 9, 3, 0, 12, 4, 1, 0, 7),
(196, 196, 3, 2, 3, 1, 4, 3, 4, 1),
(197, 197, -1, 1, 0, 12, -1, 1, 0, 7),
(198, 198, 5, 9, 1, 8, 3, 5, 1, 5),
(199, 199, 2, 8, 0, 12, 1, 4, 0, 6),
(200, 200, 13, 19, 8, 24, 3, 4, 2, 5),
(201, 201, 11, 22, 8, 22, 2, 5, 2, 5),
(202, 202, 2, 3, 9, 5, 1, 2, 4, 2),
(203, 203, 11, 23, 9, 21, 2, 5, 2, 4),
(204, 204, 2, 3, 9, 5, 1, 2, 4, 2),
(205, 205, -1, 5, 2, 18, 0, 2, 1, 7),
(206, 206, 6, 5, 5, 9, 3, 3, 3, 5),
(207, 207, 6, 1, 3, 8, 4, 1, 2, 6),
(208, 208, 11, 17, 8, 21, 3, 4, 2, 5),
(209, 209, 11, 20, 10, 21, 2, 4, 2, 5),
(210, 210, 12, 19, 8, 21, 3, 4, 2, 5),
(211, 211, 2, 5, 0, 9, 1, 3, 0, 6),
(212, 212, 11, 22, 8, 21, 2, 5, 2, 5),
(213, 213, 15, 24, 8, 21, 3, 5, 2, 4),
(214, 214, 5, 6, 5, 13, 2, 3, 2, 6),
(215, 215, 0, 7, 0, 3, 0, 6, 0, 3),
(216, 216, 11, 7, 2, 15, 4, 2, 1, 6),
(217, 217, 15, 24, 9, 30, 2, 4, 2, 5),
(218, 218, 1, 6, 0, 12, 1, 3, 0, 6),
(219, 219, 7, 15, 1, 15, 2, 5, 0, 5),
(220, 220, 10, 14, 10, 15, 3, 4, 3, 4),
(221, 221, 2, 3, 9, 5, 1, 2, 4, 2),
(222, 222, -2, 4, 1, 11, -1, 2, 1, 7),
(223, 223, 2, 3, 9, 5, 1, 2, 4, 2),
(224, 224, 2, 3, 9, 5, 1, 2, 4, 2),
(225, 225, 16, 9, 4, 7, 6, 3, 2, 4),
(226, 226, 13, 24, 8, 22, 3, 5, 2, 4),
(227, 227, 4, 6, 5, 12, 2, 3, 2, 6),
(228, 228, 2, 5, 2, 6, 2, 4, 2, 5),
(229, 229, 0, 0, 0, 2, 0, 0, 0, 7),
(230, 230, 11, 18, 8, 21, 2, 4, 2, 5),
(231, 231, 10, 17, 9, 23, 2, 4, 2, 5),
(232, 232, 11, 26, 8, 23, 2, 5, 2, 4),
(233, 233, 0, 3, 1, 16, 0, 1, 0, 7),
(234, 234, 10, 22, 8, 21, 2, 5, 2, 5),
(235, 235, 11, 24, 8, 23, 2, 5, 2, 5),
(236, 236, 11, 19, 9, 36, 2, 3, 1, 6),
(237, 237, 9, 20, 9, 25, 2, 4, 2, 5),
(238, 238, 9, 20, 11, 27, 2, 4, 2, 5),
(239, 239, -1, 1, 1, 5, -1, 1, 1, 7),
(240, 240, 8, 6, 3, 15, 3, 2, 1, 6),
(241, 241, 2, 3, 9, 5, 1, 2, 4, 2),
(242, 242, 11, 21, 8, 23, 2, 4, 2, 5),
(243, 243, 15, 32, 10, 29, 2, 5, 2, 4),
(244, 244, 3, 5, 4, 8, 2, 3, 3, 5),
(245, 245, 13, 20, 8, 23, 3, 4, 2, 5),
(246, 246, 1, 10, 0, 8, 1, 5, 0, 4),
(247, 247, 11, 17, 8, 21, 3, 4, 2, 5),
(248, 248, 11, 22, 8, 21, 2, 5, 2, 5),
(249, 249, 3, 8, 18, 6, 1, 3, 5, 2),
(250, 250, 12, 20, 8, 24, 2, 4, 2, 5),
(251, 251, 6, 2, 3, 6, 5, 2, 3, 6),
(252, 252, 12, 16, 1, 19, 3, 4, 0, 5),
(253, 253, 13, 20, 8, 22, 3, 4, 2, 5),
(254, 254, 15, 20, 8, 24, 3, 4, 2, 5),
(255, 255, 7, 5, 1, 8, 4, 3, 1, 6),
(256, 256, 10, 17, 12, 30, 2, 3, 2, 5),
(257, 257, 11, 20, 8, 21, 2, 4, 2, 5),
(258, 258, 11, 23, 10, 21, 2, 5, 2, 4),
(259, 259, 0, 0, 0, 1, 0, 0, 0, 7),
(260, 260, 2, 3, 9, 5, 1, 2, 4, 2),
(261, 261, 1, 11, 1, 9, 0, 5, 0, 4),
(262, 262, 5, 3, 0, 5, 5, 3, 0, 6),
(263, 263, 0, 0, 0, 1, 0, 0, 0, 7),
(264, 264, 0, 0, 0, 0, 0, 0, 0, 0),
(265, 265, 11, 22, 8, 21, 2, 5, 2, 5),
(266, 266, 0, 0, 0, 0, 0, 0, 0, 0),
(267, 267, 10, 22, 10, 28, 2, 4, 2, 5),
(268, 268, 2, 4, 0, 2, 3, 6, 0, 3),
(269, 269, 0, 0, 0, 0, 0, 0, 0, 0),
(270, 270, 0, 0, 0, 1, 0, 0, 0, 7),
(271, 271, 10, 25, 8, 21, 2, 5, 2, 4),
(272, 272, 13, 19, 12, 29, 2, 3, 2, 5),
(273, 273, 11, 27, 8, 21, 2, 5, 2, 4),
(274, 274, 10, 25, 8, 26, 2, 5, 1, 5),
(275, 275, 13, 21, 19, 28, 2, 4, 3, 4),
(276, 276, 11, 22, 8, 21, 2, 5, 2, 5),
(277, 277, 11, 21, 8, 21, 2, 5, 2, 5),
(278, 278, 11, 26, 8, 21, 2, 5, 2, 4),
(279, 279, 13, 20, 10, 21, 3, 4, 2, 5),
(280, 280, 10, 21, 9, 23, 2, 4, 2, 5),
(281, 281, 18, 15, 9, 15, 4, 4, 3, 4),
(282, 282, 8, 14, 4, 12, 3, 5, 1, 4),
(283, 283, 12, 22, 11, 25, 2, 4, 2, 5),
(284, 284, -1, 1, 1, 5, -1, 1, 1, 7),
(285, 285, 11, 22, 8, 21, 2, 5, 2, 5),
(286, 286, 11, 25, 8, 21, 2, 5, 2, 4),
(287, 287, 11, 23, 8, 21, 2, 5, 2, 4),
(288, 288, 10, 22, 12, 21, 2, 5, 2, 4),
(289, 289, 2, 4, 0, 4, 2, 5, 0, 5),
(290, 290, 11, 22, 8, 22, 2, 5, 2, 5),
(291, 291, 11, 22, 8, 22, 2, 5, 2, 5),
(292, 292, 11, 21, 8, 23, 2, 4, 2, 5),
(293, 293, 11, 22, 8, 21, 2, 5, 2, 5),
(294, 294, 11, 22, 8, 21, 2, 5, 2, 5),
(295, 295, 10, 26, 8, 23, 2, 5, 2, 4),
(296, 296, 10, 22, 8, 21, 2, 5, 2, 5),
(297, 297, 11, 17, 8, 22, 2, 4, 2, 5),
(298, 298, 11, 21, 8, 23, 2, 4, 2, 5),
(299, 299, 11, 21, 8, 21, 2, 5, 2, 5),
(300, 300, 10, 20, 8, 21, 2, 4, 2, 5),
(301, 301, 10, 22, 8, 23, 2, 4, 2, 5),
(302, 302, 8, 25, 11, 28, 1, 4, 2, 5),
(303, 303, 10, 21, 8, 22, 2, 4, 2, 5),
(304, 304, 2, 2, 6, 4, 2, 2, 4, 3),
(305, 305, 11, 17, 8, 21, 3, 4, 2, 5),
(306, 306, 6, 9, 2, 15, 2, 3, 1, 6),
(307, 307, 11, 21, 8, 21, 2, 5, 2, 5),
(308, 308, 9, 22, 11, 28, 2, 4, 2, 5),
(309, 309, 11, 22, 8, 21, 2, 5, 2, 5),
(310, 310, 11, 22, 8, 22, 2, 5, 2, 5),
(311, 311, 11, 22, 8, 21, 2, 5, 2, 5),
(312, 312, 12, 29, 8, 22, 2, 5, 1, 4),
(313, 313, 11, 24, 10, 22, 2, 5, 2, 4),
(314, 314, 11, 23, 11, 24, 2, 4, 2, 5),
(315, 315, 7, 25, 8, 22, 1, 5, 2, 4),
(316, 316, 2, 8, 0, 9, 1, 5, 0, 5),
(317, 317, 10, 22, 8, 21, 2, 5, 2, 5),
(318, 318, 11, 23, 9, 21, 2, 5, 2, 4),
(319, 319, 11, 20, 8, 23, 2, 4, 2, 5),
(320, 320, 9, 18, 9, 26, 2, 4, 2, 5),
(321, 321, 1, 10, 0, 10, 0, 5, 0, 5),
(322, 322, 10, 22, 31, 29, 1, 3, 4, 4),
(323, 323, 10, 22, 31, 29, 1, 3, 4, 4),
(324, 324, 9, 17, 8, 21, 2, 4, 2, 5),
(325, 325, 11, 17, 8, 22, 2, 4, 2, 5),
(326, 326, 11, 33, 13, 21, 2, 5, 2, 3),
(327, 327, 10, 25, 8, 24, 2, 5, 2, 5),
(328, 328, 8, 25, 8, 22, 2, 5, 2, 4),
(329, 329, 11, 20, 8, 23, 2, 4, 2, 5),
(330, 330, 11, 22, 8, 21, 2, 5, 2, 5),
(331, 331, 11, 22, 8, 21, 2, 5, 2, 5),
(332, 332, 10, 18, 9, 21, 2, 4, 2, 5),
(333, 333, 10, 25, 8, 21, 2, 5, 2, 4),
(334, 334, 11, 20, 10, 21, 2, 4, 2, 5),
(335, 335, 18, 21, 8, 21, 4, 4, 2, 5),
(336, 336, -1, 1, 0, 12, -1, 1, 0, 7),
(337, 337, 13, 19, 8, 21, 3, 4, 2, 5),
(338, 338, 3, 15, 9, 0, 1, 6, 3, 0),
(339, 339, 14, 22, 8, 31, 2, 4, 1, 5),
(340, 340, 4, 6, 11, 11, 2, 2, 4, 4),
(341, 341, 11, 27, 8, 21, 2, 5, 2, 4),
(342, 342, 4, 4, 1, 2, 5, 5, 1, 3),
(343, 343, 12, 19, 8, 22, 3, 4, 2, 5),
(344, 344, 12, 19, 8, 27, 2, 4, 2, 5),
(345, 345, 10, 18, 10, 26, 2, 4, 2, 5),
(346, 346, 12, 14, 1, 12, 4, 4, 0, 5),
(347, 347, 12, 14, 1, 11, 4, 5, 0, 4),
(348, 348, 11, 22, 8, 22, 2, 5, 2, 5),
(349, 349, 5, 4, 1, 13, 2, 2, 1, 7),
(350, 350, 3, 4, 0, 1, 4, 5, 0, 2),
(351, 351, 17, 22, 10, 28, 3, 4, 2, 5),
(352, 352, 3, 12, 3, 20, 1, 4, 1, 6),
(353, 353, 15, 19, 10, 22, 3, 4, 2, 5),
(354, 354, 15, 19, 10, 22, 3, 4, 2, 5),
(355, 355, 15, 19, 10, 22, 3, 4, 2, 5),
(356, 356, 1, 10, 4, 5, 1, 6, 2, 3),
(357, 357, 4, 6, 2, 16, 2, 2, 1, 6),
(358, 358, 26, 21, 11, 25, 4, 3, 2, 5),
(359, 359, 16, 19, 8, 23, 3, 4, 2, 5),
(360, 360, 0, 0, 0, 2, 0, 0, 0, 7),
(361, 361, 11, 22, 8, 21, 2, 5, 2, 5),
(362, 362, 15, 22, 8, 22, 3, 4, 2, 5),
(363, 363, 2, 3, 9, 5, 1, 2, 4, 2),
(364, 364, 0, 0, 0, 4, 0, 0, 0, 7),
(365, 365, 1, 1, 2, 7, 1, 1, 2, 6),
(366, 366, 12, 20, 8, 21, 3, 4, 2, 5),
(367, 367, 14, 18, 12, 21, 3, 4, 3, 5),
(368, 368, 12, 20, 13, 26, 2, 4, 2, 5),
(369, 369, 2, 3, 9, 5, 1, 2, 4, 2),
(370, 370, 5, 9, 20, 6, 2, 3, 5, 1),
(371, 371, 5, 3, 3, 1, 5, 3, 4, 1),
(372, 372, 15, 19, 8, 21, 3, 4, 2, 5),
(373, 373, 19, 22, 8, 30, 3, 4, 1, 5),
(374, 374, 4, 12, 3, 12, 2, 5, 1, 5),
(375, 375, 4, 4, 14, 14, 1, 1, 4, 4),
(376, 376, 14, 23, 9, 23, 3, 4, 2, 5),
(377, 377, 1, 6, 0, 12, 1, 3, 0, 6),
(378, 378, 1, 3, 3, 16, 0, 1, 1, 7),
(379, 379, 2, 3, 9, 5, 1, 2, 4, 2),
(380, 380, 4, 6, 11, 11, 2, 2, 4, 4),
(381, 381, 6, 5, 0, 9, 4, 3, 0, 6),
(382, 382, 15, 6, 6, 2, 6, 2, 4, 1),
(383, 383, 10, 19, 10, 27, 2, 4, 2, 5),
(384, 384, 3, 3, 0, 2, 4, 4, 0, 4),
(385, 385, 2, 3, 9, 5, 1, 2, 4, 2),
(386, 386, 0, 0, 0, 4, 0, 0, 0, 7),
(387, 387, 10, 19, 8, 21, 2, 4, 2, 5),
(388, 388, 7, 21, 8, 21, 2, 5, 2, 5),
(389, 389, 2, 3, 9, 5, 1, 2, 4, 2),
(390, 390, 10, 22, 11, 26, 2, 4, 2, 5),
(391, 391, 12, 19, 13, 27, 2, 4, 2, 5),
(392, 392, 2, 0, 6, 14, 1, 0, 3, 6),
(393, 393, 10, 18, 8, 28, 2, 4, 2, 6),
(394, 394, 2, 3, 9, 5, 1, 2, 4, 2),
(395, 395, 11, 18, 9, 27, 2, 4, 2, 5),
(396, 396, 15, 20, 8, 24, 3, 4, 2, 5),
(397, 397, 11, 24, 8, 23, 2, 5, 2, 5),
(398, 398, 12, 19, 10, 24, 2, 4, 2, 5),
(399, 399, 15, 13, 2, 12, 5, 4, 1, 5),
(400, 400, 1, 11, 10, 28, 0, 2, 2, 6),
(401, 401, 11, 20, 8, 22, 2, 4, 2, 5),
(402, 402, 1, 6, 0, 12, 1, 3, 0, 6),
(403, 403, 23, 21, 9, 17, 4, 4, 2, 4),
(404, 404, 12, 20, 8, 22, 3, 4, 2, 5),
(405, 405, 10, 23, 11, 21, 2, 5, 2, 4),
(406, 406, 2, 3, 9, 5, 1, 2, 4, 2),
(407, 407, 15, 23, 10, 23, 3, 4, 2, 5),
(408, 408, 2, 3, 9, 5, 1, 2, 4, 2),
(409, 409, 1, 4, 2, 2, 1, 6, 3, 3),
(410, 410, 28, 45, 24, 34, 3, 5, 3, 4),
(411, 411, 2, 3, 9, 5, 1, 2, 4, 2),
(412, 412, 14, 22, 8, 21, 3, 4, 2, 5),
(413, 413, 2, 3, 9, 5, 1, 2, 4, 2),
(414, 414, 11, 22, 8, 21, 2, 5, 2, 5),
(415, 415, 19, 17, 15, 14, 4, 4, 3, 3),
(416, 416, 7, 8, 2, 3, 4, 5, 2, 2),
(417, 417, 9, 5, 0, 2, 6, 3, 0, 3),
(418, 418, 1, 0, 0, 0, 7, 0, 0, 0),
(419, 419, 11, 17, 8, 22, 2, 4, 2, 5),
(420, 420, 15, 22, 8, 23, 3, 4, 2, 5),
(421, 421, 12, 23, 8, 26, 2, 4, 2, 5),
(422, 422, 2, 3, 9, 5, 1, 2, 4, 2),
(423, 423, 2, 3, 9, 5, 1, 2, 4, 2),
(424, 424, 0, 0, 0, 2, 0, 0, 0, 7),
(425, 425, 12, 20, 8, 24, 2, 4, 2, 5),
(426, 426, 2, 1, 1, 8, 2, 1, 1, 7),
(427, 427, 8, 8, 1, 5, 5, 5, 1, 4),
(428, 428, 9, 11, 3, 14, 3, 4, 1, 5),
(429, 429, 2, 8, 3, 14, 1, 3, 1, 6),
(430, 430, 2, 3, 9, 5, 1, 2, 4, 2),
(431, 431, 6, 3, 2, 11, 3, 2, 1, 7),
(432, 432, 17, 20, 8, 21, 3, 4, 2, 5),
(433, 433, 11, 20, 8, 22, 2, 4, 2, 5),
(434, 434, 7, 22, 8, 21, 2, 5, 2, 5),
(435, 435, 10, 23, 8, 21, 2, 5, 2, 4),
(436, 436, 15, 23, 8, 21, 3, 5, 2, 4),
(437, 437, 11, 18, 8, 21, 2, 4, 2, 5),
(438, 438, 11, 17, 8, 21, 3, 4, 2, 5),
(439, 439, 14, 23, 8, 24, 3, 4, 2, 5),
(440, 440, 0, 1, 2, 2, 0, 2, 4, 4),
(441, 441, 10, 15, 6, 23, 2, 4, 1, 6),
(442, 442, 11, 19, 8, 21, 2, 4, 2, 5),
(443, 443, 12, 20, 8, 21, 3, 4, 2, 5),
(444, 444, 2, 3, 9, 5, 1, 2, 4, 2),
(445, 445, 14, 17, 8, 22, 3, 4, 2, 5),
(446, 446, 18, 22, 8, 22, 3, 4, 2, 5),
(447, 447, 0, 0, 0, 4, 0, 0, 0, 7),
(448, 448, 13, 19, 8, 24, 3, 4, 2, 5),
(449, 449, 19, 24, 11, 26, 3, 4, 2, 5),
(450, 450, 6, 2, 0, 5, 5, 2, 0, 6),
(451, 451, 9, 8, 0, 3, 5, 5, 0, 2),
(452, 452, 10, 15, 1, 18, 3, 4, 0, 5),
(453, 453, 11, 21, 8, 21, 2, 5, 2, 5),
(454, 454, 0, 2, 0, 10, 0, 1, 0, 7),
(455, 455, 10, 21, 8, 21, 2, 5, 2, 5),
(456, 456, 0, 1, 0, 8, 0, 1, 0, 7),
(457, 457, 2, 3, 9, 5, 1, 2, 4, 2),
(458, 458, -1, 1, 1, 5, -1, 1, 1, 7),
(459, 459, 12, 21, 11, 30, 2, 4, 2, 5),
(460, 460, 12, 21, 11, 30, 2, 4, 2, 5),
(461, 461, 17, 20, 8, 21, 3, 4, 2, 5),
(462, 462, 12, 13, 2, 16, 4, 4, 1, 5),
(463, 463, 0, 0, 0, 2, 0, 0, 0, 7),
(464, 464, 11, 20, 8, 21, 2, 4, 2, 5),
(465, 465, 15, 22, 8, 21, 3, 4, 2, 5),
(466, 466, -5, 5, 7, 14, -2, 2, 3, 5),
(467, 467, 1, 2, 2, 1, 2, 4, 4, 2),
(468, 468, 11, 24, 10, 23, 2, 5, 2, 4),
(469, 469, 19, 26, 9, 22, 3, 5, 2, 4),
(470, 470, 4, 15, 5, 8, 2, 6, 2, 3),
(471, 471, 2, 4, 1, 4, 2, 5, 1, 5),
(472, 472, 4, 3, 4, 3, 4, 3, 4, 3),
(473, 473, 0, 0, 0, 4, 0, 0, 0, 7),
(474, 474, 6, 2, 8, 6, 4, 1, 4, 3),
(475, 475, 12, 20, 8, 21, 3, 4, 2, 5),
(476, 476, 2, 3, 9, 5, 1, 2, 4, 2),
(477, 477, 1, 13, 7, 13, 0, 5, 2, 4),
(478, 478, 2, 3, 9, 5, 1, 2, 4, 2),
(479, 479, 2, 3, 9, 5, 1, 2, 4, 2),
(480, 480, 11, 7, 0, 12, 4, 3, 0, 6),
(481, 481, -1, 1, 1, 5, -1, 1, 1, 7),
(482, 482, 1, 0, 0, 5, 1, 0, 0, 7),
(483, 483, 4, 6, 11, 11, 2, 2, 4, 4),
(484, 484, 4, 6, 11, 11, 2, 2, 4, 4),
(485, 485, 4, 6, 11, 11, 2, 2, 4, 4),
(486, 486, -1, 1, 0, 12, -1, 1, 0, 7),
(487, 487, 15, 20, 9, 21, 3, 4, 2, 5),
(488, 488, 11, 22, 10, 23, 2, 4, 2, 5),
(489, 489, 0, 2, 0, 4, 0, 3, 0, 6),
(490, 490, 12, 8, 4, 12, 4, 3, 2, 5),
(491, 491, 13, 21, 10, 25, 2, 4, 2, 5),
(492, 492, 8, 6, 2, 12, 4, 3, 1, 6),
(493, 493, 5, 6, 4, 5, 3, 4, 3, 4),
(494, 494, 0, 0, 0, 4, 0, 0, 0, 7),
(495, 495, 1, 7, 0, 18, 0, 3, 0, 7),
(496, 496, 6, 19, 10, 26, 1, 4, 2, 5),
(497, 497, 0, 0, 0, 2, 0, 0, 0, 7),
(498, 498, 2, 3, 9, 5, 1, 2, 4, 2),
(499, 499, 11, 18, 8, 21, 2, 4, 2, 5),
(500, 500, 11, 10, 18, 9, 3, 3, 4, 2),
(501, 501, 1, 6, 0, 7, 1, 5, 0, 5),
(502, 502, 8, 20, 9, 21, 2, 4, 2, 5),
(503, 503, 13, 25, 10, 26, 2, 4, 2, 5),
(504, 504, 11, 17, 8, 22, 2, 4, 2, 5),
(505, 505, 5, 3, 0, 1, 6, 4, 0, 2),
(506, 506, 5, 3, 1, 2, 6, 3, 2, 4),
(507, 507, 9, 18, 8, 25, 2, 4, 2, 5),
(508, 508, 10, 21, 9, 26, 2, 4, 2, 5),
(509, 509, 0, 0, 0, 4, 0, 0, 0, 7),
(510, 510, 14, 19, 8, 21, 3, 4, 2, 5),
(511, 511, 13, 23, 8, 21, 3, 5, 2, 4),
(512, 512, 5, 10, 2, 11, 2, 4, 1, 5),
(513, 513, 16, 23, 8, 22, 3, 4, 2, 5),
(514, 514, 4, 8, 2, 14, 2, 3, 1, 6),
(515, 515, 7, 4, 2, 19, 2, 1, 1, 7),
(516, 516, 19, 22, 8, 16, 4, 5, 2, 4),
(517, 517, 2, 3, 9, 5, 1, 2, 4, 2),
(518, 518, 0, 0, 0, 4, 0, 0, 0, 7),
(519, 519, 0, 0, 0, 2, 0, 0, 0, 7),
(520, 520, 11, 22, 8, 22, 2, 5, 2, 5),
(521, 521, -1, 1, 0, 12, -1, 1, 0, 7),
(522, 522, 6, 19, 10, 26, 1, 4, 2, 5),
(523, 523, 2, 2, 8, 1, 2, 2, 5, 1),
(524, 524, 2, 4, 0, 6, 2, 4, 0, 6),
(525, 525, 2, 3, 9, 5, 1, 2, 4, 2),
(526, 526, 11, 26, 8, 21, 2, 5, 2, 4),
(527, 527, 1, 0, 0, 1, 5, 0, 0, 7),
(528, 528, 11, 22, 8, 21, 2, 5, 2, 5),
(529, 529, 15, 20, 8, 21, 3, 4, 2, 5),
(530, 530, 15, 20, 8, 21, 3, 4, 2, 5),
(531, 531, 15, 20, 8, 21, 3, 4, 2, 5),
(532, 532, 12, 19, 8, 21, 3, 4, 2, 5),
(533, 533, 12, 19, 8, 27, 2, 4, 2, 5),
(534, 534, 0, 0, 0, 3, 0, 0, 0, 7),
(535, 535, 1, 2, 0, 6, 1, 2, 0, 7),
(536, 536, 0, 0, 14, 1, 0, 0, 5, 0),
(537, 537, 11, 23, 11, 21, 2, 5, 2, 4),
(538, 538, 11, 23, 11, 26, 2, 4, 2, 5),
(539, 539, 16, 20, 9, 21, 3, 4, 2, 5),
(540, 540, 11, 17, 8, 21, 3, 4, 2, 5),
(541, 541, 7, 21, 8, 22, 2, 5, 2, 5),
(542, 542, 2, 3, 9, 5, 1, 2, 4, 2),
(543, 543, 1, 0, 10, 1, 1, 0, 5, 0),
(544, 544, 1, 7, 0, 12, 1, 4, 0, 6),
(545, 545, 4, 5, 1, 1, 4, 5, 1, 1),
(546, 546, 11, 22, 8, 21, 2, 5, 2, 5),
(547, 547, 13, 23, 8, 21, 3, 5, 2, 4),
(548, 548, 8, 12, 0, 11, 3, 5, 0, 5),
(549, 549, 15, 21, 8, 26, 3, 4, 2, 5),
(550, 550, 13, 22, 9, 34, 2, 4, 1, 6),
(551, 551, 9, 9, 2, 4, 5, 5, 1, 3),
(552, 552, 3, 2, 0, 7, 3, 2, 0, 7),
(553, 553, 2, 3, 9, 5, 1, 2, 4, 2),
(554, 554, 2, 3, 9, 5, 1, 2, 4, 2),
(555, 555, 12, 18, 9, 29, 2, 3, 2, 6),
(556, 556, 6, 2, 3, 6, 5, 2, 3, 6),
(557, 557, 5, 0, 6, 6, 4, 0, 4, 4),
(558, 558, 0, 0, 0, 4, 0, 0, 0, 7),
(559, 559, 4, 4, 0, 0, 5, 5, 0, 0),
(560, 560, 10, 20, 10, 27, 2, 4, 2, 5),
(561, 561, 11, 17, 8, 21, 3, 4, 2, 5),
(562, 562, 16, 20, 13, 37, 2, 3, 2, 6),
(563, 563, 0, 0, 0, 4, 0, 0, 0, 7),
(564, 564, 11, 23, 8, 21, 2, 5, 2, 4),
(565, 565, 5, 0, 0, 2, 6, 0, 0, 7),
(566, 566, 12, 19, 8, 27, 2, 4, 2, 5),
(567, 567, 15, 20, 8, 23, 3, 4, 2, 5),
(568, 568, 11, 22, 8, 21, 2, 5, 2, 5),
(569, 569, 11, 20, 8, 21, 2, 4, 2, 5),
(570, 570, 5, 11, 17, 6, 2, 4, 4, 2),
(571, 571, 12, 19, 8, 21, 3, 4, 2, 5),
(572, 572, 12, 19, 8, 21, 3, 4, 2, 5),
(573, 573, 4, 3, 0, 2, 5, 4, 0, 4),
(574, 574, 2, 3, 9, 5, 1, 2, 4, 2),
(575, 575, 11, 28, 8, 22, 2, 5, 1, 4),
(576, 576, 13, 21, 13, 25, 2, 4, 2, 5),
(577, 577, 10, 10, 2, 13, 4, 4, 1, 5),
(578, 578, 10, 22, 11, 26, 2, 4, 2, 5),
(579, 579, 4, 10, 21, 6, 1, 3, 5, 1),
(580, 580, 3, 8, 17, 8, 1, 3, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `park_rank`
--

CREATE TABLE IF NOT EXISTS `park_rank` (
  `Park_ID` int(20) NOT NULL DEFAULT '0',
  `User_ID` int(20) NOT NULL DEFAULT '0',
  `Park_Rank` int(3) DEFAULT NULL,
  `Park_Rank_Updated_Date` date NOT NULL,
  `Park_Rank_Updated_Time` time NOT NULL,
  PRIMARY KEY (`Park_ID`,`User_ID`),
  KEY `User_ID` (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `User_ID` int(11) NOT NULL AUTO_INCREMENT,
  `User_Name` varchar(20) NOT NULL,
  `L_Name` varchar(20) NOT NULL,
  `F_Name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `User_Last_Login_Date` date NOT NULL,
  `User_Last_Login_Time` time NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `User_Social` int(11) DEFAULT NULL,
  `User_Water` int(11) DEFAULT NULL,
  `User_Active` int(11) DEFAULT NULL,
  `User_Nature` int(11) DEFAULT NULL,
  PRIMARY KEY (`User_ID`),
  UNIQUE KEY `User_Name` (`User_Name`),
  UNIQUE KEY `User_Name_2` (`User_Name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=82 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_ID`, `User_Name`, `L_Name`, `F_Name`, `password`, `User_Last_Login_Date`, `User_Last_Login_Time`, `email`, `User_Social`, `User_Water`, `User_Active`, `User_Nature`) VALUES
(68, 'l', 'l', 'l', '2db95e8e1a9267b7a1188556b2013b33', '2014-05-04', '18:50:43', 'llb97@txstate.edu', 1, 2, 6, 3),
(69, 'o', 'o', 'o', 'd95679752134a2d9eb61dbd7b91c4bcc', '2014-05-04', '01:34:54', 'o@o.o', 7, 5, 7, 7),
(70, 'p', 'p', 'p', '83878c91171338902e0fe0fb97a8c47a', '2014-05-04', '01:39:58', 'p@p.p', 7, 1, 3, 2),
(71, 'a', 'a', 'a', '0cc175b9c0f1b6a831c399e269772661', '2014-05-04', '03:48:41', 'a@a.com', 1, 1, 1, 7),
(72, 'katerham', 'Lee', 'Boyd', '2db95e8e1a9267b7a1188556b2013b33', '2014-05-04', '12:03:18', 'l@l.c', 5, 7, 7, 5),
(73, 'kingjack', 'Jack', 'Boyd', 'c9e9a848920877e76685b2e4e76de38d', '2014-05-04', '12:32:10', 'janetteboydtulsa@gmail.com', 5, 5, 5, 4),
(74, 'pp', 'p', 'p', '83878c91171338902e0fe0fb97a8c47a', '2014-05-04', '12:32:45', 'p@p.p', 2, 2, 2, 3),
(75, 'queen', 'Janette', 'Boyd', '72545f3f86fad045a26ed54abd2bbb9f', '2014-05-04', '19:47:29', 'janetteboydtulsa@gmail.com', 5, 1, 1, 4),
(76, 'q ', '', '', '7694f4a66316e53c8cdd9d9954bd611d', '2014-05-04', '13:35:53', '', 0, 0, 0, 0),
(77, 'test', 'Test', 'test', '098f6bcd4621d373cade4e832627b4f6', '2014-05-04', '18:40:09', 'test@test.com', 2, 2, 2, 3),
(78, 'better', 'z', 'b', 'f016441d00c16c9b912d05e9d81d894d', '2014-05-04', '19:48:31', 'janettenoyesboyd@gmail.com', 1, 1, 1, 4),
(79, 'LL', 'Le', 'LL', '2db95e8e1a9267b7a1188556b2013b33', '2014-05-04', '20:30:51', 'l@l.l', 1, 1, 1, 4),
(80, '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '2014-05-04', '20:41:30', '', 0, 0, 0, 0),
(81, 'lll', 'Lee', 'Boyd', '5b54c0a045f179bcbbbc9abcb8b5cd4c', '2014-05-05', '10:44:29', 'l@l.com', 7, 7, 7, 7);

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE IF NOT EXISTS `user_log` (
  `Log_ID` int(20) NOT NULL,
  `User_ID` int(20) DEFAULT NULL,
  `Log_Table` enum('amenity','amenity_rank','amenity_type','park','park_rank','user') NOT NULL,
  `Log_Type` enum('u','i','d') DEFAULT NULL,
  `Log_Date` date NOT NULL,
  `Log_Time` time NOT NULL,
  `Log_Notes` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Log_ID`),
  KEY `User_ID` (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `amenity`
--
ALTER TABLE `amenity`
  ADD CONSTRAINT `amenity_ibfk_1` FOREIGN KEY (`Park_ID`) REFERENCES `park` (`Park_ID`),
  ADD CONSTRAINT `Amenity_Type_ID` FOREIGN KEY (`Amenity_Type_ID`) REFERENCES `amenity_type` (`Amenity_Type_ID`);

--
-- Constraints for table `amenity_rank`
--
ALTER TABLE `amenity_rank`
  ADD CONSTRAINT `amenity_rank_ibfk_1` FOREIGN KEY (`Amenity_ID`) REFERENCES `amenity` (`Amenity_ID`),
  ADD CONSTRAINT `amenity_rank_ibfk_2` FOREIGN KEY (`Park_ID`) REFERENCES `park` (`Park_ID`),
  ADD CONSTRAINT `amenity_rank_ibfk_3` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`);

--
-- Constraints for table `park_dimensions`
--
ALTER TABLE `park_dimensions`
  ADD CONSTRAINT `park_dimensions_ibfk_1` FOREIGN KEY (`Park_ID`) REFERENCES `park` (`Park_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `park_rank`
--
ALTER TABLE `park_rank`
  ADD CONSTRAINT `park_rank_ibfk_1` FOREIGN KEY (`Park_ID`) REFERENCES `park` (`Park_ID`),
  ADD CONSTRAINT `park_rank_ibfk_2` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`);

--
-- Constraints for table `user_log`
--
ALTER TABLE `user_log`
  ADD CONSTRAINT `user_log_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`);
--
-- Database: `phpmyadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin' AUTO_INCREMENT=22 ;

--
-- Dumping data for table `pma_column_info`
--

INSERT INTO `pma_column_info` (`id`, `db_name`, `table_name`, `column_name`, `comment`, `mimetype`, `transformation`, `transformation_options`) VALUES
(1, 'my_parks', 'park', 'Website', '', '', '_', ''),
(2, 'my_parks', 'park_dimensions', 'Park_Dimensions_ID', '', '', '_', ''),
(3, 'my_parks', 'park_dimensions', 'Social', '', '', '_', ''),
(4, 'my_parks', 'park_dimensions', 'Water', '', '', '_', ''),
(5, 'my_parks', 'park_dimensions', 'Active', '', '', '_', ''),
(6, 'my_parks', 'park_dimensions', 'Nature', '', '', '_', ''),
(7, 'my_parks', 'park_dimensions', 'Park_ID', '', '', '_', ''),
(8, 'my_parks', 'park_dimensions', 'Social2', '', '', '_', ''),
(9, 'my_parks', 'park_dimensions', 'Water2', '', '', '_', ''),
(10, 'my_parks', 'park_dimensions', 'Active2', '', '', '_', ''),
(11, 'my_parks', 'park_dimensions', 'Nature2', '', '', '_', ''),
(14, 'my_parks', 'user', 'Social', '', '', '_', ''),
(13, 'my_parks', 'park', 'Park_Description', '', '', '_', ''),
(15, 'my_parks', 'user', 'Water', '', '', '_', ''),
(16, 'my_parks', 'user', 'Active', '', '', '_', ''),
(17, 'my_parks', 'user', 'Nature', '', '', '_', ''),
(18, 'my_parks', 'user', 'User_Social', '', '', '_', ''),
(19, 'my_parks', 'user', 'User_Water', '', '', '_', ''),
(20, 'my_parks', 'user', 'User_Active', '', '', '_', ''),
(21, 'my_parks', 'user', 'User_Nature', '', '', '_', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '[{"db":"my_parks","table":"user"},{"db":"my_parks","table":"park_dimensions"},{"db":"my_parks","table":"park"},{"db":"my_parks","table":"park_rank"},{"db":"my_parks","table":"user_log"},{"db":"my_parks","table":"user_dimensions"},{"db":"my_parks","table":"Park"},{"db":"my_parks","table":"Park_Dimensions"},{"db":"my_parks","table":"amenity"},{"db":"mysql","table":"db"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma_table_uiprefs`
--

INSERT INTO `pma_table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'my_parks', 'park', '{"sorted_col":"`park`.`Website` ASC"}', '2014-05-04 21:03:14'),
('root', 'my_parks', 'user', '{"sorted_col":"`user`.`User_Last_Login_Time` DESC"}', '2014-05-04 22:05:04');

-- --------------------------------------------------------

--
-- Table structure for table `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma_userconfig`
--

INSERT INTO `pma_userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2014-05-01 02:07:53', '{"collation_connection":"utf8mb4_general_ci","Export\\/file_template_database":"@Parks@"}');
--
-- Database: `test`
--
--
-- Database: `webauth`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_pwd`
--

CREATE TABLE IF NOT EXISTS `user_pwd` (
  `name` char(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pass` char(32) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user_pwd`
--

INSERT INTO `user_pwd` (`name`, `pass`) VALUES
('xampp', 'wampp');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
