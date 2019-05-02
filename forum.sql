-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 12, 2019 at 01:45 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forum`
--

-- --------------------------------------------------------

--
-- Table structure for table `forums`
--

DROP TABLE IF EXISTS `forums`;
CREATE TABLE IF NOT EXISTS `forums` (
  `forum_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forum_posts`
--

DROP TABLE IF EXISTS `forum_posts`;
CREATE TABLE IF NOT EXISTS `forum_posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) NOT NULL,
  `post_text` text,
  `post_create_time` datetime DEFAULT NULL,
  `post_owner` varchar(150) DEFAULT NULL,
  `forum_id` int(11) NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forum_posts`
--

INSERT INTO `forum_posts` (`post_id`, `topic_id`, `post_text`, `post_create_time`, `post_owner`, `forum_id`) VALUES
(1, 1, 'heyhey', '2019-03-29 11:07:23', 'aaa@mm.com', 0),
(2, 1, 'hoyhoyhoy', '2019-03-29 11:55:54', 'hah@mm.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `forum_topics`
--

DROP TABLE IF EXISTS `forum_topics`;
CREATE TABLE IF NOT EXISTS `forum_topics` (
  `topic_id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_title` varchar(150) DEFAULT NULL,
  `topic_create_time` datetime DEFAULT NULL,
  `topic_owner` varchar(150) DEFAULT NULL,
  `forum_id` int(11) NOT NULL,
  PRIMARY KEY (`topic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forum_topics`
--

INSERT INTO `forum_topics` (`topic_id`, `topic_title`, `topic_create_time`, `topic_owner`, `forum_id`) VALUES
(1, 'hey', '2019-03-29 11:07:23', '', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
