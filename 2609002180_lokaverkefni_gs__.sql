-- phpMyAdmin SQL Dump
-- version 4.0.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 05, 2017 at 10:02 AM
-- Server version: 5.7.14-log
-- PHP Version: 5.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `2609002180_lokaverkefni_gsö`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE IF NOT EXISTS `album` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `publishing_date` char(10) NOT NULL,
  `album_genre` int(11) DEFAULT NULL,
  `publisher_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `album_category` (`album_genre`),
  KEY `publisher_ID` (`publisher_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`ID`, `name`, `publishing_date`, `album_genre`, `publisher_ID`) VALUES
(1, 'Relapse', '19.05.2009', NULL, NULL),
(2, 'The Sickness', '07.03.2000', NULL, NULL),
(3, 'Thriller', '30.11.1982', NULL, NULL),
(4, 'Made in Heaven', '06.11.1995', NULL, NULL),
(5, 'Bangarang', '23.12.2011', NULL, NULL),
(6, 'Asylum', '31.08.2010', NULL, NULL),
(7, 'Bad', '31.08.1987', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE IF NOT EXISTS `artist` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `date_of_birth` char(10) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `retirement_date` char(10) DEFAULT NULL,
  `preformer_category` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `preformer_category` (`preformer_category`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`ID`, `name`, `date_of_birth`, `description`, `retirement_date`, `preformer_category`) VALUES
(6, 'Eminem', '17.10.1972', 'Rap', '', 1),
(7, 'Michael Jackson', '29.08.1958', 'Pop', '25.06.2009', 1),
(8, 'Skrillex', '15.01.1988', 'Dubstep', '', 1),
(9, 'David Draiman', '13.03.1973', 'Heavy Metal', '', 2),
(10, 'Freddie Mercury', '05.09.1946', 'Rock', '24.11.1991', 2);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`ID`, `name`) VALUES
(1, 'Solo'),
(2, 'Band'),
(3, 'Duette');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE IF NOT EXISTS `genre` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`ID`, `name`) VALUES
(1, 'Rap'),
(2, 'Pop'),
(3, 'Heavy Metal'),
(4, 'Rock'),
(5, 'Dupstep');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE IF NOT EXISTS `publisher` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`ID`, `name`) VALUES
(1, 'Dr. Dre'),
(2, 'Disturbed'),
(3, 'Michael Jackson'),
(4, '12th planet'),
(5, 'Queen');

-- --------------------------------------------------------

--
-- Table structure for table `track`
--

CREATE TABLE IF NOT EXISTS `track` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `length` char(10) NOT NULL,
  `author` varchar(25) NOT NULL,
  `language` varchar(15) DEFAULT NULL,
  `album_ID` int(11) DEFAULT NULL,
  `artist_ID` int(11) DEFAULT NULL,
  `genre_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `album_ID` (`album_ID`),
  KEY `artist_ID` (`artist_ID`),
  KEY `genre_ID` (`genre_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `track`
--

INSERT INTO `track` (`ID`, `name`, `length`, `author`, `language`, `album_ID`, `artist_ID`, `genre_ID`) VALUES
(1, 'Asylum', '4:36', 'Disturbed', 'English', NULL, NULL, NULL),
(2, 'The Sickness', '4:38', 'Disturbed', 'English', NULL, NULL, NULL),
(3, 'Bangarang', '3:35', 'Skrillex', 'English', NULL, NULL, NULL),
(4, 'Kyoto', '3:21', 'Skrillex', 'English', NULL, NULL, NULL),
(5, 'Thriller', '5:58', 'Temperton', 'English', NULL, NULL, NULL),
(6, 'Beat It', '4:18', 'Michael Jackson', 'English', NULL, NULL, NULL),
(7, 'Made in heaven', '5:25', 'Eddie Mercury', 'English', NULL, NULL, NULL),
(8, 'Let me live', '4:45', 'Queen', 'English', NULL, NULL, NULL),
(9, 'Mother love', '4:49', 'Mercury, May', 'English', NULL, NULL, NULL),
(10, 'My mom', '5:19', 'Eminem ', 'English', NULL, NULL, NULL),
(11, 'Hello', '4:08', 'Eminem', 'English', NULL, NULL, NULL),
(12, 'Insane', '3:01', 'Eminem', 'English', NULL, NULL, NULL),
(13, 'The devil''s den', '4:53', 'Skrillex', 'English', NULL, NULL, NULL),
(14, 'Right on time', '4:05', 'Skrillex', 'English', NULL, NULL, NULL),
(15, 'Beautiful', '6:32', 'Eminem', 'English', NULL, NULL, NULL),
(16, 'Bad', '4:08', 'Michael Jackson', 'English', NULL, NULL, NULL),
(17, 'Smooth Criminal', '4:20', 'Michael Jackson', 'English', NULL, NULL, NULL),
(18, 'Man in the mirror', '3:55', 'Michael Jackson', 'English', NULL, NULL, NULL),
(19, 'Dirty Diana', '4:42', 'Michael Jackson', 'English', NULL, NULL, NULL),
(20, 'Speed Demon', '4:03', 'Michael Jackson', 'English', NULL, NULL, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`album_genre`) REFERENCES `category` (`ID`),
  ADD CONSTRAINT `album_ibfk_2` FOREIGN KEY (`publisher_ID`) REFERENCES `publisher` (`ID`);

--
-- Constraints for table `artist`
--
ALTER TABLE `artist`
  ADD CONSTRAINT `artist_ibfk_1` FOREIGN KEY (`preformer_category`) REFERENCES `category` (`ID`);

--
-- Constraints for table `track`
--
ALTER TABLE `track`
  ADD CONSTRAINT `track_ibfk_1` FOREIGN KEY (`album_ID`) REFERENCES `album` (`ID`),
  ADD CONSTRAINT `track_ibfk_2` FOREIGN KEY (`artist_ID`) REFERENCES `artist` (`ID`),
  ADD CONSTRAINT `track_ibfk_3` FOREIGN KEY (`genre_ID`) REFERENCES `genre` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
