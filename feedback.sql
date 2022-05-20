-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2022 at 07:56 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feedback`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`) VALUES
(1, 'gfdg', 'dfg@gmail.com', 'sldfjldsfdsf');

-- --------------------------------------------------------

--
-- Table structure for table `final_feedback`
--

CREATE TABLE `final_feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `product_feedback` text NOT NULL,
  `review` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `final_feedback`
--

INSERT INTO `final_feedback` (`id`, `name`, `email`, `product_name`, `file`, `product_feedback`, `review`) VALUES
(7, 'Joy Dhar', 'joyustcian@gmail.com', 'Walton primo y4', 'IMG-6287ca30ce6ba1.11772431.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Alias voluptate cupiditate possimus perspiciatis. Modi deserunt pariatur dolorum ad nam perferendis!', 5),
(8, 'Bijoy', 'bijoy@gmail.com', 'Apple 13', 'IMG-6287cafb33a5f4.40369893.jpg', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nihil, quisquam architecto nobis assumenda, ducimus tempora natus exercitationem ab repellendus, velit expedita. Quo nemo quod, deserunt laboriosam voluptates sit odio amet.', 3),
(9, 'dsfdsf', 'joyuiseclsd@gmail.com', 'Product', 'IMG-6287d1abeeeac9.47856643.jpg', 'hhkjljl;;;', 5);

-- --------------------------------------------------------

--
-- Table structure for table `userfeedback`
--

CREATE TABLE `userfeedback` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userfeedback`
--

INSERT INTO `userfeedback` (`id`, `name`, `email`, `body`) VALUES
(1, 'dhar', 'joyustcian@gmail.com', 'sdfsdfsdfsdf'),
(2, 'dhar', 'joyustcian@gmail.com', 'sdffsdfssdf'),
(3, 'ereerasddasd', '123@gmail.com', 'asdasdasdsad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `final_feedback`
--
ALTER TABLE `final_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userfeedback`
--
ALTER TABLE `userfeedback`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `final_feedback`
--
ALTER TABLE `final_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `userfeedback`
--
ALTER TABLE `userfeedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
