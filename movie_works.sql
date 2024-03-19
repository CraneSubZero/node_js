-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2024 at 04:25 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie_works`
--

-- --------------------------------------------------------

--
-- Table structure for table `character_description`
--

CREATE TABLE `character_description` (
  `id` int(5) NOT NULL,
  `name_of_character` varchar(100) NOT NULL,
  `type_of_character` varchar(100) NOT NULL,
  `type_of_conflict` varchar(100) NOT NULL,
  `type_of_personality` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movie_description`
--

CREATE TABLE `movie_description` (
  `id` int(5) NOT NULL,
  `participant_name` varchar(100) NOT NULL,
  `chosen_movie` varchar(100) NOT NULL,
  `type_of_movie` varchar(100) NOT NULL,
  `movie_sched` date NOT NULL,
  `movie_booked` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `character_description`
--
ALTER TABLE `character_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_description`
--
ALTER TABLE `movie_description`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `character_description`
--
ALTER TABLE `character_description`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movie_description`
--
ALTER TABLE `movie_description`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movie_description`
--
ALTER TABLE `movie_description`
  ADD CONSTRAINT `movie_name_pk` FOREIGN KEY (`id`) REFERENCES `character_description` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
