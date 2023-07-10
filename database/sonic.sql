-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2023 at 09:50 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sonic`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(1, 'tamil_albums'),
(2, 'hindi_albums'),
(3, 'english_albums'),
(4, 'uploaded_albums');

-- --------------------------------------------------------

--
-- Table structure for table `english_albums`
--

CREATE TABLE `english_albums` (
  `song_id` int(100) NOT NULL,
  `song_name` varchar(255) NOT NULL,
  `song_format` varchar(100) NOT NULL,
  `singer_name` varchar(100) NOT NULL,
  `movie_name` varchar(50) NOT NULL,
  `song_image` varchar(255) NOT NULL,
  `audio_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `favorite_songs`
--

CREATE TABLE `favorite_songs` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `song_name` varchar(255) NOT NULL,
  `singer_name` varchar(255) NOT NULL,
  `song_image` varchar(255) NOT NULL,
  `audio_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hindi_albums`
--

CREATE TABLE `hindi_albums` (
  `song_id` int(100) NOT NULL,
  `song_name` varchar(255) NOT NULL,
  `song_format` varchar(100) NOT NULL,
  `singer_name` varchar(100) NOT NULL,
  `movie_name` varchar(50) NOT NULL,
  `song_image` varchar(255) NOT NULL,
  `audio_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tamil_albums`
--

CREATE TABLE `tamil_albums` (
  `song_id` int(100) NOT NULL,
  `song_name` varchar(255) NOT NULL,
  `song_format` varchar(100) NOT NULL,
  `singer_name` varchar(100) NOT NULL,
  `movie_name` varchar(50) NOT NULL,
  `song_image` varchar(255) NOT NULL,
  `audio_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `upload_albums`
--

CREATE TABLE `upload_albums` (
  `song_id` int(100) NOT NULL,
  `singer_id` int(11) NOT NULL,
  `song_name` varchar(255) NOT NULL,
  `song_format` varchar(100) NOT NULL,
  `singer_name` varchar(100) NOT NULL,
  `song_image` varchar(255) NOT NULL,
  `audio_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `mobile_number` varchar(10) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `activation_code` varchar(255) NOT NULL DEFAULT '0',
  `confirm_status` int(1) DEFAULT 0,
  `contributions` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `mobile_number`, `email_address`, `password`, `activation_code`, `confirm_status`, `contributions`) VALUES
(1, 'Sujith', '9876543210', 'admin@gmail.com', 'abc', '0', 1, 0),
(2, 'riya', '9988776655', 'riyab@gmail.com', '123', '0', 1, 0),
(3, 'manasa', '7988326625', 'manasank@gmail.com', '1234', '0', 1, 0),
(4, 'madhuram', '7788576312', 'madhug@gmail.com', '12345', '0', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `english_albums`
--
ALTER TABLE `english_albums`
  ADD PRIMARY KEY (`song_id`);

--
-- Indexes for table `favorite_songs`
--
ALTER TABLE `favorite_songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hindi_albums`
--
ALTER TABLE `hindi_albums`
  ADD PRIMARY KEY (`song_id`);

--
-- Indexes for table `tamil_albums`
--
ALTER TABLE `tamil_albums`
  ADD PRIMARY KEY (`song_id`);

--
-- Indexes for table `upload_albums`
--
ALTER TABLE `upload_albums`
  ADD PRIMARY KEY (`song_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `english_albums`
--
ALTER TABLE `english_albums`
  MODIFY `song_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorite_songs`
--
ALTER TABLE `favorite_songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hindi_albums`
--
ALTER TABLE `hindi_albums`
  MODIFY `song_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tamil_albums`
--
ALTER TABLE `tamil_albums`
  MODIFY `song_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload_albums`
--
ALTER TABLE `upload_albums`
  MODIFY `song_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
