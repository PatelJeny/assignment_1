-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2024 at 07:16 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CNM` varchar(32) DEFAULT NULL,
  `CNAME` varchar(32) DEFAULT NULL,
  `CITY` varchar(32) DEFAULT NULL,
  `RATING` varchar(32) DEFAULT NULL,
  `SNO` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CNM`, `CNAME`, `CITY`, `RATING`, `SNO`) VALUES
('201', 'HOFFMAN', 'LONDON', '100', '1001'),
('202', 'GIOVANNE', 'ROME', '200', '1003'),
('203', 'LIU', 'SAN JOSE', '300', '1002'),
('204', 'GRASS', 'BARCELONA', '100', '1002'),
('206', 'CLEMENS', 'LONDON', '300', '1007'),
('207', 'PEREIRA', 'ROME', '100', '1004');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `onm` int(11) NOT NULL,
  `amt` varchar(16) NOT NULL,
  `ode` date NOT NULL,
  `cnm` int(11) NOT NULL,
  `sno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`onm`, `amt`, `ode`, `cnm`, `sno`) VALUES
(3001, '18.69', '1994-10-03', 201, 1007),
(3002, '1900.1', '1994-10-03', 207, 1004),
(3003, '767.19', '1994-10-03', 201, 1001),
(3005, '3005', '1994-10-03', 203, 1002),
(3006, '3006', '1994-10-04', 201, 1007),
(3007, '3007', '1994-10-05', 204, 1002),
(3008, '3008', '1994-10-05', 206, 1001),
(3009, '3009', '1994-10-04', 202, 1003),
(3010, '3010', '1994-10-06', 204, 1002),
(3011, '3011', '1994-10-06', 206, 1001);

-- --------------------------------------------------------

--
-- Table structure for table `sales_person`
--

CREATE TABLE `sales_person` (
  `SNO` int(11) NOT NULL,
  `SNAME` varchar(30) NOT NULL,
  `CITY` varchar(30) NOT NULL,
  `COMM` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_person`
--

INSERT INTO `sales_person` (`SNO`, `SNAME`, `CITY`, `COMM`) VALUES
(1001, 'PEEL', 'LONDON', '0.12'),
(1002, 'SERRES', 'SAN JOSE', '0.13'),
(1003, 'AXELROD', 'NEW YORK', '0.1'),
(1004, 'MOTIKA', 'LODON', '0.11'),
(1007, 'RAFKIN', 'BARCELONA', '0.15');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/* 
Q1. All orders for more than $1000. 
  ->SELECT * FROM `order` WHERE amt>1000;

Q2. Names and cities of all salespeople in London with commission above 0.10. 
  ->SELECT SNAME, CITY FROM sales_person WHERE CITY='LONDON' AND COMM > 0.10; 

Q3. All salespeople either in Barcelona or in London.
  ->SELECT * FROM `sales_person` WHERE CITY IN ('Barcelona','London')

Q4.  All salespeople with commission between 0.10 and 0.12.  
  ->SELECT * FROM `sales_person` WHERE COMM BETWEEN 0.10 AND 0.12;

Q5. All customers with NULL values in city column
  ->SELECT * FROM customer WHERE CITY IS NULL;

Q6. All orders taken on Oct 3Rd and Oct 4th 1994. 
  ->SELECT * FROM `order` WHERE DATE(ode) IN ('1994-10-03', '1994-10-04');

Q7. All customers serviced by peel or Motika. 
  ->SELECT * FROM sales_person WHERE SNAME IN ('Peel', 'Motika');

Q8. All customers whose names begin with a letter from A to B
  ->SELECT * FROM customer WHERE CNAME LIKE 'A%' OR CNAME LIKE 'B%';

Q9. All customers excluding those with rating <= 100 unless they are located in Rome. 
  ->SELECT * FROM customer WHERE RATING > 100 OR (RATING <= 100 AND CITY = 'ROME');

Q10. All orders except those with 0 or NULL value in amt field.
  ->SELECT * FROM `order` WHERE amt IS NOT NULL AND amt != 0;

Q11. Count the number of salespeople currently listing orders in the order table. 
  ->SELECT  COUNT(DISTINCT onm) AS num_salespeople FROM `order` WHERE 1