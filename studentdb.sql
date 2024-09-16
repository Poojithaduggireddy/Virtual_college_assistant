-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2024 at 02:15 PM
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
-- Database: `studentdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `attendance_percentage` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `username`, `attendance_percentage`) VALUES
(1, '245121737001', 50.00),
(2, '245121737002', 68.00),
(3, '245121737003', 78.90),
(4, '245121737004', 76.00),
(5, '245121737005', 70.45),
(6, '245121737006', 75.00),
(7, '245121737007', 45.00),
(8, '245121737008', 64.00),
(9, '245121737009', 60.00),
(10, '245121737010', 67.00);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `cgpa` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `username`, `cgpa`) VALUES
(1, '245121737001', 9.72),
(2, '245121737002', 9.49),
(3, '245121737003', 7.13),
(4, '245121737004', 9.28),
(5, '245121737005', 9.82),
(6, '245121737006', 9.39),
(7, '245121737007', 0.00),
(8, '245121737008', 9.59),
(9, '245121737009', 8.82),
(10, '245121737010', 9.38);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` enum('student','faculty','visitor') NOT NULL,
  `student_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `user_type`, `student_name`) VALUES
('245121737001', 'p001', 'student', 'Kasu Santhoshini'),
('245121737002', 'p002', 'student', 'Gangidi Rashmitha'),
('245121737003', 'p003', 'student', 'Pasunuri Sai Kumar'),
('245121737004', 'p004', 'student', 'Kavuluru Abhinav'),
('245121737005', 'p005', 'student', 'Poojitha Duggireddy'),
('245121737006', 'p006', 'student', 'SingiReddy Abhishek'),
('245121737007', 'p007', 'student', 'Neela Bharath'),
('245121737008', 'p008', 'student', 'Chakka Snigdha'),
('245121737009', 'p009', 'student', 'Manish Gajadi'),
('245121737010', 'p010', 'student', 'Kancharla Vaishnavi'),
('245121737025', 'p025', 'student', 'Dundigalla Pramitha'),
('245121737036', 'p036', 'student', 'Sindhu Ramavath');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
