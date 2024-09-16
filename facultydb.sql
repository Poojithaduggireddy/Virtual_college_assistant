-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2024 at 02:14 PM
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
-- Database: `facultydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `faculty_id` varchar(50) NOT NULL,
  `faculty_name` varchar(100) NOT NULL,
  `faculty_password` varchar(100) NOT NULL,
  `department` varchar(50) DEFAULT NULL,
  `user_type` enum('faculty') DEFAULT 'faculty'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`faculty_id`, `faculty_name`, `faculty_password`, `department`, `user_type`) VALUES
('F001', 'Dr. Chepuri Samson', 'password123', 'IT', 'faculty'),
('F002', 'Dr. Jayasree Hanumantha Rao', 'password456', 'IT', 'faculty'),
('F003', 'D. B. V. Ravi Shankar', 'password789', 'IT', 'faculty'),
('F004', 'Dr. A V Krishna Prasad', 'password101', 'IT', 'faculty'),
('F005', 'Jindam Sowjanya', 'password102', 'IT', 'faculty'),
('F006', 'Kuthadi Devaki', 'password103', 'IT', 'faculty'),
('F007', 'Seelam Ch Vijaya Bhaskar', 'password104', 'IT', 'faculty'),
('F008', 'Kakara Sri Lakshmi', 'password105', 'IT', 'faculty'),
('F009', 'Chikkela Srujana', 'password106', 'IT', 'faculty'),
('F010', 'Ramya Madhavi', 'ramya123', 'IT', 'faculty'),
('F011', 'Nithya Lakshmi', 'nithya123', 'IT', 'faculty'),
('F012', 'Dr Dumpala Shanthi', 'Shanthi123', 'IT', 'faculty'),
('F013', 'Dr Vasavi Bande', 'Vasavi123', 'IT', 'faculty'),
('F014', 'Dr Ugendhar Addagatla', 'ug123', 'IT', 'faculty'),
('F015', 'Pisupati Karthik', 'karthik123', 'IT', 'faculty'),
('F016', 'Kintali Chandra Sekhar', 'chandu123', 'IT', 'faculty'),
('F017', 'Durgam Muninder', 'muni123', 'IT', 'faculty'),
('F018', 'Annapureddy Manasa', 'manu123', 'IT', 'faculty'),
('F019', 'Parlakula Amba Bhavani', 'bhav123', 'IT', 'faculty'),
('F020', 'B. Kalpana', 'kalp123', 'IT', 'faculty'),
('F021', 'P. Sita Sowjanya', 'sita123', 'IT', 'faculty'),
('F022', 'V. Swarna Kamalam', 'swarna123', 'IT', 'faculty'),
('F023', 'T. Shashi Kumar', 'shashi123', 'IT', 'faculty'),
('F024', 'Medishetty Swapna', 'swapna123', 'IT', 'faculty'),
('F025', 'Maya B. Dhone', 'maya123', 'IT', 'faculty'),
('F026', 'M. Prathyusha', 'prathu123', 'IT', 'faculty'),
('F027', 'Sri Laxmi K', 'sri123', 'IT', 'faculty'),
('F028', 'M. Sravani', 'srav123', 'IT', 'faculty'),
('F029', 'Thuvva Anjali', 'anjali123', 'IT', 'faculty'),
('F030', 'B. Mahender Reddy', 'mahi123', 'IT', 'faculty');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`faculty_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
