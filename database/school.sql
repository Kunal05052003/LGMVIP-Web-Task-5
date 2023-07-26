-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2022 at 06:13 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;



CREATE TABLE `faculty` (
  `id` int(255) NOT NULL,
  `name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `sem` varchar(255) CHARACTER SET latin1 NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `faculty` (`id`, `name`, `sem`, `email`, `password`) VALUES
(1, 'Manoj Jha', '1', 'manoj@gmail.com', '356'),
(2, 'Sonalika', '1', 'sonalika@yahoo.com', '356'),
(3, 'Vijay Sharma', '1', 'vijay@gmail.com', '356'),
(4, 'Vijay Sharma', '1', 'vijay@gmail.com', '356'),
(5, 'Rajesh Jaiswal', '1', 'rajesh@gmail.com', '356'),
(6, 'Neetu Singh', '1', 'neetu@yahoo.com', '356'),
(7, 'Aman Singh', '1', 'aman@gmail.com', '40'),
(8, 'Raju Sharma', '1', 'raju@yahoo.com', '40'),
(9, 'Suman', '1', 'suman@yahoo.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(10, 'Nilesh Mishra', '1', 'nilesh@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');



CREATE TABLE `marks` (
  `id` int(255) NOT NULL,
  `roll` varchar(100) CHARACTER SET latin1 NOT NULL,
  `sem` varchar(10) CHARACTER SET latin1 NOT NULL,
  `s1` varchar(100) CHARACTER SET latin1 NOT NULL,
  `s2` varchar(100) CHARACTER SET latin1 NOT NULL,
  `s3` varchar(100) CHARACTER SET latin1 NOT NULL,
  `s4` varchar(100) CHARACTER SET latin1 NOT NULL,
  `s5` varchar(100) CHARACTER SET latin1 NOT NULL,
  `total` varchar(100) CHARACTER SET latin1 NOT NULL,
  `percent` varchar(100) CHARACTER SET latin1 NOT NULL,
  `result` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `marks` (`id`, `roll`, `sem`, `s1`, `s2`, `s3`, `s4`, `s5`, `total`, `percent`, `result`) VALUES
(1, '1', '1', '13', '19', '19', '18', '20', '89', '89', 'Best'),
(2, '1', '1', '20', '20', '20', '19', '18', '97', '97', 'Best'),
(3, '1', '1', '19', '10', '19', '20', '20', '88', '88', 'Excellent'),
(4, '3', '1', '20', '19', '20', '18', '15', '92', '92', 'Excellent');



CREATE TABLE `students` (
  `id` int(255) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `roll` varchar(255) CHARACTER SET latin1 NOT NULL,
  `sem` varchar(10) CHARACTER SET latin1 NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `students` (`id`, `name`, `roll`, `sem`, `email`) VALUES
(1, 'Ayush Singh', '1', '1', 'ayush@gmail.com'),
(2, 'Nisha', '2', '1', 'nisha@gmail.com'),
(3, 'Manish', '3', '1', 'manish@gmail.com');


CREATE TABLE `subjects` (
  `id` int(255) NOT NULL,
  `s1` varchar(255) NOT NULL,
  `s2` varchar(255) NOT NULL,
  `s3` varchar(255) NOT NULL,
  `s4` varchar(255) NOT NULL,
  `s5` varchar(255) NOT NULL,
  `sem` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`,`roll`);


ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roll` (`roll`);


ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `faculty`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;


ALTER TABLE `marks`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE `students`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


ALTER TABLE `subjects`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
COMMIT;


