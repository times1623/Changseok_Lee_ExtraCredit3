-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 16, 2018 at 10:25 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `vue_video`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

CREATE TABLE `tbl_genre` (
  `genre_id` mediumint(8) UNSIGNED NOT NULL,
  `genre_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Fantasy'),
(3, 'Adventure');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_synopsis`
--

CREATE TABLE `tbl_synopsis` (
  `synopsis_id` mediumint(8) UNSIGNED NOT NULL,
  `synopsis_desc` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_synopsis`
--

INSERT INTO `tbl_synopsis` (`synopsis_id`, `synopsis_desc`) VALUES
(1, 'In response to the attack, Nick Fury issues a state of emergency, telling his top agents Phil Coulson (Clark Gregg), Natasha Romanoff (Scarlett Johansson), and Maria Hill (Cobie Smulders), that they are completely out of options. '),
(2, 'The seeds for the eventual rise of the evil Empire are sown in a seemingly routine place: a trade dispute between the Republic and the Trade Federation. Two Jedi, the keepers of peace and justice, are dispatched to negotiate the dispute, but (wait for it) it\'s a trap! They end up barely escaping with their lives,.....'),
(3, 'It is November 16, 1983 in Hawkins, Indiana. Inside Hawkins National Laboratory, a scientist bursts out a door, running from something that isn\'t there. He runs to the elevator, tapping the floor button repeatedly, looking back and forth. He then gets in and taps the button again.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_thumbnail`
--

CREATE TABLE `tbl_thumbnail` (
  `thumbnail_id` mediumint(8) UNSIGNED NOT NULL,
  `thumbnail_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_thumbnail`
--

INSERT INTO `tbl_thumbnail` (`thumbnail_id`, `thumbnail_name`) VALUES
(1, 'avengers_thumb.jpg'),
(2, 'starwars_thumb.jpg'),
(3, 'stranger_thumb.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vid_genre`
--

CREATE TABLE `tbl_vid_genre` (
  `vid_genre_id` mediumint(8) UNSIGNED NOT NULL,
  `id` int(11) NOT NULL,
  `genre_id` mediumint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_vid_genre`
--

INSERT INTO `tbl_vid_genre` (`vid_genre_id`, `id`, `genre_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vid_synopsis`
--

CREATE TABLE `tbl_vid_synopsis` (
  `vid_synopsis_id` mediumint(8) UNSIGNED NOT NULL,
  `id` int(11) NOT NULL,
  `synopsis_id` mediumint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_vid_synopsis`
--

INSERT INTO `tbl_vid_synopsis` (`vid_synopsis_id`, `id`, `synopsis_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vid_thumb`
--

CREATE TABLE `tbl_vid_thumb` (
  `vid_thumb_id` mediumint(8) UNSIGNED NOT NULL,
  `id` int(11) NOT NULL,
  `thumbnail_id` mediumint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_vid_thumb`
--

INSERT INTO `tbl_vid_thumb` (`vid_thumb_id`, `id`, `thumbnail_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `vid_name` varchar(45) NOT NULL,
  `vid_path` varchar(60) NOT NULL,
  `vid_desc` varchar(400) NOT NULL,
  `vid_genre` int(11) NOT NULL,
  `vid_thumb` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `vid_name`, `vid_path`, `vid_desc`, `vid_genre`, `vid_thumb`) VALUES
(1, 'Marvel\'s Avengers', 'avengers.mp4', 'generic description', 1, 'avengers.jpg'),
(2, 'Star Wars The Force Awakens', 'forceawakens.mp4', 'some other generic description', 2, 'forceawakens.jpg'),
(3, 'Stranger Things', 'strangerthings.mp4', 'don\'t get caught in the upside down', 3, 'strangerthings.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `tbl_synopsis`
--
ALTER TABLE `tbl_synopsis`
  ADD PRIMARY KEY (`synopsis_id`);

--
-- Indexes for table `tbl_thumbnail`
--
ALTER TABLE `tbl_thumbnail`
  ADD PRIMARY KEY (`thumbnail_id`);

--
-- Indexes for table `tbl_vid_genre`
--
ALTER TABLE `tbl_vid_genre`
  ADD PRIMARY KEY (`vid_genre_id`);

--
-- Indexes for table `tbl_vid_synopsis`
--
ALTER TABLE `tbl_vid_synopsis`
  ADD PRIMARY KEY (`vid_synopsis_id`);

--
-- Indexes for table `tbl_vid_thumb`
--
ALTER TABLE `tbl_vid_thumb`
  ADD PRIMARY KEY (`vid_thumb_id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_synopsis`
--
ALTER TABLE `tbl_synopsis`
  MODIFY `synopsis_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_thumbnail`
--
ALTER TABLE `tbl_thumbnail`
  MODIFY `thumbnail_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_vid_genre`
--
ALTER TABLE `tbl_vid_genre`
  MODIFY `vid_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_vid_synopsis`
--
ALTER TABLE `tbl_vid_synopsis`
  MODIFY `vid_synopsis_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_vid_thumb`
--
ALTER TABLE `tbl_vid_thumb`
  MODIFY `vid_thumb_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
