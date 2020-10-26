-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 04, 2020 at 09:37 PM
-- Server version: 5.6.45
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dtrack_dtrack`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `pass` varchar(250) NOT NULL COMMENT 'password should be md5()'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `pass`) VALUES
(1, 'admin@admin.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `device_tokon`
--

CREATE TABLE `device_tokon` (
  `id` int(11) NOT NULL,
  `fb_id` varchar(250) NOT NULL,
  `tokon` varchar(250) NOT NULL,
  `phone_id` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `discover_section`
--

CREATE TABLE `discover_section` (
  `id` int(11) NOT NULL,
  `section_name` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discover_section`
--

INSERT INTO `discover_section` (`id`, `section_name`, `created`) VALUES
(1, 'Sport Lover', '2020-05-26 02:45:28'),
(2, 'Smiles', '2020-05-23 15:14:18'),
(3, 'Times We Had', '2020-05-23 15:14:18'),
(4, 'ROCKSTAR', '2020-05-23 15:14:18'),
(5, 'Ice Me Out', '2020-05-23 15:14:18'),
(6, 'The Sharkboy Beat', '2020-05-23 15:14:18'),
(7, 'Party Girl', '2020-05-23 15:14:18'),
(8, 'Laxed (Siren Beat)', '2020-05-23 15:14:18'),
(9, 'Dream Girl', '2020-05-23 15:14:18'),
(10, 'Speed Test', '2020-05-23 15:14:18'),
(13, 'futbool', '2020-05-26 23:35:34'),
(12, 'hello', '2020-05-26 15:15:44'),
(14, 'bbbbb', '2020-05-27 12:24:31'),
(15, 'true love', '2020-05-27 17:03:01'),
(16, 'Sss', '2020-05-27 17:15:07'),
(17, 'Ggy', '2020-05-28 05:27:08'),
(18, 'dd', '2020-05-28 14:51:33'),
(19, 'Test', '2020-05-28 16:37:01'),
(20, 'gggggggg', '2020-05-29 18:37:57'),
(21, '', '2020-05-30 11:35:15'),
(22, 'Hello', '2020-05-30 17:46:29'),
(23, 'Timepass', '2020-05-30 19:38:06'),
(24, '', '2020-05-31 05:14:09'),
(25, 'Khan', '2020-05-31 11:27:22'),
(26, 'Games', '2020-05-31 16:56:33'),
(27, 'Test', '2020-06-01 14:41:07'),
(28, 'Laura', '2020-06-02 06:15:04'),
(29, 'fuck mitron', '2020-06-02 12:35:59'),
(30, 'Uu', '2020-06-03 01:27:32'),
(31, 'hhh', '2020-06-03 02:38:04'),
(32, 'messeng', '2020-06-04 02:50:04');

-- --------------------------------------------------------

--
-- Table structure for table `fav_sound`
--

CREATE TABLE `fav_sound` (
  `id` int(11) NOT NULL,
  `fb_id` varchar(50) NOT NULL,
  `sound_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `follow_users`
--

CREATE TABLE `follow_users` (
  `id` int(11) NOT NULL,
  `fb_id` varchar(250) NOT NULL,
  `followed_fb_id` varchar(250) NOT NULL COMMENT 'a person who follow by other'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `my_fb_id` varchar(250) NOT NULL,
  `effected_fb_id` varchar(250) NOT NULL,
  `type` varchar(250) NOT NULL COMMENT 'likes,comments,mention,followers',
  `value` varchar(250) NOT NULL COMMENT 'this could be a video id',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sound`
--

CREATE TABLE `sound` (
  `id` int(11) NOT NULL,
  `sound_name` varchar(250) NOT NULL,
  `description` varchar(150) NOT NULL,
  `thum` varchar(500) NOT NULL,
  `section` varchar(250) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sound`
--

INSERT INTO `sound` (`id`, `sound_name`, `description`, `thum`, `section`, `created`) VALUES
(130, 'Ampinity News dont share this any one', 'Ampinity News dont share this any one, dont make a noice  dont make a noice ', 'upload/audio/1520829607.jpg', '23', '2020-06-02 09:07:45'),
(135, 'chup hai baty', 'indain top song', 'upload/audio/612054072.jpg', '26', '2020-06-02 09:07:41'),
(136, 'chinies rock', 'rock music', 'upload/audio/344972206.jpg', '27', '2020-06-02 09:07:50'),
(137, 'tera mukhara kia bat hai', '#indian top songs', 'upload/audio/2042051767.jpg', '26', '2020-06-02 09:07:38'),
(138, 'vaja mai payar na jane', '#sad indian songs', 'upload/audio/2042051767.jpg', '26', '2020-06-01 15:02:40'),
(139, 'chup han batn', 'snag tery panio saa #indian songs', 'upload/audio/1138119371.jpg', '23', '2020-06-01 15:05:12'),
(140, 'mai hu tera shahzada', 'top indian song', 'upload/audio/2094802963.jpg', '22', '2020-06-01 15:05:46'),
(141, 'indian top ads', '#ad videos', 'upload/audio/612054072.jpg', '31', '2020-06-01 15:06:34'),
(142, '2020 nigah songs', 'black guy song', 'upload/audio/1316158799.jpg', '27', '2020-06-01 15:07:51'),
(143, 'light song', 'light song playing with music', 'upload/audio/763248801.jpg', '27', '2020-06-01 15:09:20'),
(144, 'five four three two one', 'sexy girl singing a song', 'upload/audio/1577876990.jpg', '27', '2020-06-01 15:10:25'),
(145, 'sky falling down', 'men singing song', 'upload/audio/1020368320.jpg', '22', '2020-06-01 15:10:59'),
(146, 'im barby girl', 'barby girl', 'upload/audio/1263087474.jpg', '29', '2020-06-01 15:15:09'),
(147, 'low profile song', 'inhouse songs', 'upload/audio/1520829607.jpg', '22', '2020-06-01 15:19:26'),
(148, 'classic song', '#classis song indian', 'upload/audio/1853660639.jpg', '29', '2020-06-01 15:20:00'),
(149, 'dont be aglly', 'aglly', 'upload/audio/2072768646.jpg', '31', '2020-06-01 15:20:40'),
(150, 'girls swag', '#swat', 'upload/audio/848257514.jpg', '31', '2020-06-01 15:21:03'),
(151, 'private school chat', 'trending car', 'upload/audio/344972206.jpg', '24', '2020-06-01 15:22:07'),
(152, 'top rated songs', 'top rated songs ', 'upload/audio/1545165634.jpg', '28', '2020-06-01 15:35:26');

-- --------------------------------------------------------

--
-- Table structure for table `sound_section`
--

CREATE TABLE `sound_section` (
  `id` int(11) NOT NULL,
  `section_name` varchar(150) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sound_section`
--

INSERT INTO `sound_section` (`id`, `section_name`, `created`) VALUES
(27, 'Global Pop', '2020-05-23 11:28:19'),
(28, 'Sport', '2020-05-23 11:28:28'),
(24, 'Orignal Sounds', '2020-05-23 11:27:15'),
(26, 'Recommended', '2020-05-23 11:28:08'),
(25, 'Funny Sounds', '2020-05-23 11:27:26'),
(23, 'world popolar', '2020-05-21 13:19:50'),
(22, 'Most Popular', '2020-05-21 13:19:40'),
(34, 'DDDDDDDDDDDDDDDDDDD', '2020-06-01 08:43:15'),
(29, 'Electronic Music', '2020-05-23 11:28:48'),
(33, 'Naats', '2020-05-31 16:31:22'),
(31, 'Trending', '2020-05-23 11:53:08'),
(32, 'TEST SECTION', '2020-05-25 16:48:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fb_id` varchar(150) NOT NULL,
  `username` varchar(25) DEFAULT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(150) NOT NULL,
  `bio` varchar(150) NOT NULL,
  `profile_pic` varchar(250) NOT NULL,
  `block` varchar(100) NOT NULL DEFAULT '0',
  `version` varchar(15) DEFAULT '0',
  `device` varchar(25) NOT NULL,
  `signup_type` varchar(110) NOT NULL,
  `tokon` varchar(500) NOT NULL,
  `bearer_token` varchar(500) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `fb_id` varchar(50) NOT NULL,
  `description` varchar(320) NOT NULL,
  `video` varchar(500) NOT NULL DEFAULT 'NULL',
  `thum` varchar(500) NOT NULL DEFAULT 'NULL',
  `gif` varchar(500) NOT NULL DEFAULT 'NULL',
  `view` int(11) NOT NULL DEFAULT '0',
  `section` varchar(250) NOT NULL DEFAULT '0',
  `sound_id` int(11) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `video_comment`
--

CREATE TABLE `video_comment` (
  `id` int(11) NOT NULL,
  `video_id` varchar(50) NOT NULL,
  `fb_id` varchar(50) NOT NULL,
  `comments` varchar(250) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `video_like_dislike`
--

CREATE TABLE `video_like_dislike` (
  `id` int(11) NOT NULL,
  `video_id` varchar(50) NOT NULL,
  `fb_id` varchar(50) NOT NULL,
  `action` int(11) NOT NULL COMMENT '1= like ',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `device_tokon`
--
ALTER TABLE `device_tokon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discover_section`
--
ALTER TABLE `discover_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fav_sound`
--
ALTER TABLE `fav_sound`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follow_users`
--
ALTER TABLE `follow_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sound`
--
ALTER TABLE `sound`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sound_section`
--
ALTER TABLE `sound_section`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `section_name` (`section_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `fb_id` (`fb_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_comment`
--
ALTER TABLE `video_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_like_dislike`
--
ALTER TABLE `video_like_dislike`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `device_tokon`
--
ALTER TABLE `device_tokon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discover_section`
--
ALTER TABLE `discover_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `fav_sound`
--
ALTER TABLE `fav_sound`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `follow_users`
--
ALTER TABLE `follow_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sound`
--
ALTER TABLE `sound`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `sound_section`
--
ALTER TABLE `sound_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `video_comment`
--
ALTER TABLE `video_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `video_like_dislike`
--
ALTER TABLE `video_like_dislike`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
