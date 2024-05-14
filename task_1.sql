-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2024 at 07:26 AM
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
-- Database: `assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EM_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(32) NOT NULL,
  `LAST_NAME` varchar(32) NOT NULL,
  `SALARY` bigint(56) NOT NULL,
  `JOINING_DATE` date NOT NULL,
  `DEPARTMENT` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EM_ID`, `FIRST_NAME`, `LAST_NAME`, `SALARY`, `JOINING_DATE`, `DEPARTMENT`) VALUES
(1, 'JOHN', 'ABRAHAM', 100000, '2014-01-01', 'BANKING'),
(2, 'MICHAEL', 'CLERK', 800000, '2014-01-01', 'INSURANCE'),
(3, 'ROY', 'THOMS', 700000, '2014-01-01', 'INSURANCE'),
(4, 'JERRY', 'PINTO', 6500000, '2014-01-01', 'INSURANCE'),
(5, 'PHILIP', 'MATHEW', 7500000, '2014-01-01', 'SERVICES'),
(6, 'TESTNAME1', '123', 65000, '2014-01-01', 'SERVICES'),
(7, 'TESTNAME2', 'LNAME%', 600000, '2014-01-01', 'INSURANCE'),
(8, 'TOM', 'JOSE', 600000, '2014-01-01', 'INSURANCE');

-- --------------------------------------------------------

--
-- Table structure for table `incentives`
--

CREATE TABLE `incentives` (
  `insentive_id` int(11) NOT NULL,
  `EMOLOYEE_REF_ID` int(11) NOT NULL,
  `INCENTIVE_DATE` date NOT NULL,
  `INCENTIVE_AMT` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `incentives`
--

INSERT INTO `incentives` (`insentive_id`, `EMOLOYEE_REF_ID`, `INCENTIVE_DATE`, `INCENTIVE_AMT`) VALUES
(1, 1, '2014-02-01', '5000'),
(2, 2, '2014-02-01', '3000'),
(3, 3, '2014-02-01', '4000'),
(4, 1, '2014-02-01', '4500'),
(5, 2, '2014-02-01', '3500');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EM_ID`);

--
-- Indexes for table `incentives`
--
ALTER TABLE `incentives`
  ADD PRIMARY KEY (`insentive_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EM_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `incentives`
--
ALTER TABLE `incentives`
  MODIFY `insentive_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*
Q1. Get First_Name from employee table using alias name “Employee Name”. 
  ->SELECT FIRST_NAME AS Employee_name FROM `employee`;

Q2. Get FIRST_NAME, Joining year, Joining Month and Joining Date from employee table.
  -> SELECT FIRST_NAME,JOINING_DATE FROM `employee` ;

Q3. Get all employee details from the employee table order by First Name Ascending And Salary descending? 
  ->SELECT * FROM `employee` ORDER BY FIRST_NAME ASC,SALARY DESC;

Q4. Get employee details from employee table whose first name contains „o‟. 
  ->SELECT * FROM `employee` WHERE FIRST_NAME LIKE '%o%';

Q5. Get employee details from employee table whose joining month is “January”. 
  ->SELECT * FROM `employee` WHERE month(JOINING_DATE)=1;

Q6. Get department, total salary with respect to a department from employee table Order By total salary descending. 
  ->SELECT DEPARTMENT ,SUM(SALARY) AS TOTAL_SALARY FROM `employee` GROUP BY DEPARTMENT ORDER BY SALARY DESC;

Q7. Get department wise maximum salary from employee table order by salary ascending? 
  ->SELECT DEPARTMENT, MAX(SALARY) AS MAX_SALARY FROM `employee` GROUP BY DEPARTMENT ORDER BY MAX_SALARY ASC;

Q8. Select first_name, incentive amount from employee and incentives table for those Employees who have incentives and incentive amount greater than 3000 
  ->SELECT employee.FIRST_NAME , incentives.INCENTIVE_AMT FROM employee INNER JOIN incentives ON employee.EM_ID= incentives.insentive_id WHERE incentives.INCENTIVE_AMT >3000;

Q9. Select 2nd Highest salary from employee table
  -> SELECT max(SALARY) AS second_highest_salary FROM employee WHERE SALARY < (SELECT MAX(SALARY) FROM employee);

Q10. Select first_name, incentive amount from employee and incentives table for all Employees who got incentives using left join. 
  -> SELECT employee.FIRST_NAME , incentives.INCENTIVE_AMT FROM employee LEFT JOIN incentives ON employee.EM_ID=incentives.insentive_id;

Q11. Create View OF Employee table in which store first name, last name and salary only. 
  -> CREATE VIEW EmployeeView AS SELECT FIRST_NAME,LAST_NAME, SALARY FROM employee;

Q12. Create Procedure to find out department wise highest salary. 
  -> DELIMITER &&
  CREATE PROCEDURE FindHighestSalaryByDepartment()
  BEGIN
    SELECT Department, MAX(Salary) AS Highest_Salary
    FROM Employee
    GROUP BY Department;
    END &&

  DELIMITER ;

  CALL FindHighestSalaryByDepartment();

Q13. Create after Insert trigger on Employee table which insert records in view table. 
  -> CREATE TRIGGER insert_2 BEFORE INSERT ON employee FOR EACH ROW INSERT INTO viewtable SET action='insert',
    EM_ID=new.EM_ID,FIRST_NAME=new.FIRST_NAME,LAST_NAME=new.LAST_NAME,SALARY=new.SALARY,
    JOINING_DATE=new.JOINING_DATE,DEPARTMENT=new.DEPARTMENT,changedata=now();

