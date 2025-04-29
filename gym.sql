-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2024 at 01:09 PM
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
-- Database: `gym`
--

-- --------------------------------------------------------

--
-- Table structure for table `equip`
--

CREATE TABLE `equip` (
  `name` varchar(255) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `equip`
--

INSERT INTO `equip` (`name`, `count`) VALUES
('Weight (40kg)', 10),
('Weight (20kg)', 15),
('Treadmill', 4);

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `username` varchar(200) NOT NULL,
  `password` varchar(500) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `prof` int(11) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`username`, `password`, `name`, `prof`, `street`, `city`, `phone`, `time`) VALUES
('1', '$5$rounds=535000$nuBu6IWv9w6C0bma$K1qr6BesvND5EerZXfsiso2/lg.r55IjkJUlTo1nB49', 'One', 3, 'ABC', 'XYZ', '9000000007', '2024-11-16 11:43:59'),
('2', '$5$rounds=535000$rbPlOO.VJLM/U/7u$AxhJd9TDqhPBnWWSzWO6XfiLCljlc.1J2EcOMJuXNbD', 'Two', 2, 'ABC', 'XYZ', '9000000007', '2024-11-16 11:44:29'),
('3', '$5$rounds=535000$15ON6.O0XZZmbt.s$cJk3XWsD18AfN03sKZcVGWH89g/9os2PgiJR63YA7k0', 'Three', 4, 'ABC', 'XYZ', '9000000007', '2024-11-16 11:45:20'),
('Mem1', '$5$rounds=535000$Jw8ZFhzHXp9P5NEU$tnRVMHbjX3x27b/fV7aRiZUyUoVijGgQMabdi7qHZq1', 'Member1', 4, 'A Nagar', 'XYZ', '9000000007', '2024-11-16 12:29:52'),
('Pr_yanka259522', '$5$rounds=535000$7b7ZUtv9rOOSlcSw$ROjl8wDt.cMrSIN1SX6NkwHYGvrhpQ6STezTtzOp2W3', 'Priyanka', 1, 'AdarshNagar', 'Sri Ganganagar', '9000000007', '2024-11-16 11:56:41'),
('Rpst1', '$5$rounds=535000$N.ffOJQ3ymKPzqbh$64eBb4KPisCvTRgcZ61jPLFvDf/.S.4F7GqqwcYin3A', 'Receptionist1', 2, 'ABC', 'XYZ', '9000000007', '2024-11-16 12:29:07'),
('Tr1', '$5$rounds=535000$DaqvXhbgRtJHEb8T$xT/SfZ5o.gR1F.xmyi/7/F7YkSQrL7E2WG0nRIpIRXB', 'Trainer1', 3, 'AdharshNagar', 'XYZ', '9000000007', '2024-11-16 12:28:33');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `username` varchar(200) NOT NULL,
  `plan` varchar(100) DEFAULT NULL,
  `trainor` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`username`, `plan`, `trainor`) VALUES
('3', 'Plan4', '1'),
('Mem1', 'Plan1', 'Tr1');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`name`) VALUES
('Plan1'),
('Plan2'),
('Plan3'),
('Plan4');

-- --------------------------------------------------------

--
-- Table structure for table `progress`
--

CREATE TABLE `progress` (
  `username` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `daily_result` varchar(200) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `receps`
--

CREATE TABLE `receps` (
  `username` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receps`
--

INSERT INTO `receps` (`username`) VALUES
('2'),
('Rpst1');

-- --------------------------------------------------------

--
-- Table structure for table `trainors`
--

CREATE TABLE `trainors` (
  `username` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trainors`
--

INSERT INTO `trainors` (`username`) VALUES
('1'),
('Tr1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`username`),
  ADD KEY `plan` (`plan`),
  ADD KEY `trainor` (`trainor`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `progress`
--
ALTER TABLE `progress`
  ADD PRIMARY KEY (`username`,`date`);

--
-- Indexes for table `receps`
--
ALTER TABLE `receps`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `trainors`
--
ALTER TABLE `trainors`
  ADD PRIMARY KEY (`username`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `members_ibfk_1` FOREIGN KEY (`username`) REFERENCES `info` (`username`),
  ADD CONSTRAINT `members_ibfk_2` FOREIGN KEY (`plan`) REFERENCES `plans` (`name`),
  ADD CONSTRAINT `members_ibfk_3` FOREIGN KEY (`trainor`) REFERENCES `trainors` (`username`);

--
-- Constraints for table `progress`
--
ALTER TABLE `progress`
  ADD CONSTRAINT `progress_ibfk_1` FOREIGN KEY (`username`) REFERENCES `members` (`username`);

--
-- Constraints for table `receps`
--
ALTER TABLE `receps`
  ADD CONSTRAINT `receps_ibfk_1` FOREIGN KEY (`username`) REFERENCES `info` (`username`);

--
-- Constraints for table `trainors`
--
ALTER TABLE `trainors`
  ADD CONSTRAINT `trainors_ibfk_1` FOREIGN KEY (`username`) REFERENCES `info` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
