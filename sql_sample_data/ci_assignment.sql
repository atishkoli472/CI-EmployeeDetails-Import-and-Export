-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2023 at 11:01 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `employeedata`
--

CREATE TABLE `employeedata` (
  `id` int(11) NOT NULL,
  `emp_name` varchar(200) DEFAULT NULL,
  `emp_mobile_no` int(20) DEFAULT NULL,
  `emp_email` varchar(50) DEFAULT NULL,
  `emp_code` varchar(10) DEFAULT NULL,
  `joining_year` varchar(10) DEFAULT NULL,
  `joining_date` varchar(20) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT current_timestamp(),
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employeedata`
--

INSERT INTO `employeedata` (`id`, `emp_name`, `emp_mobile_no`, `emp_email`, `emp_code`, `joining_year`, `joining_date`, `created_by`, `created_date`, `modified_by`, `modified_date`) VALUES
(1, ' Aarav Gupta', 2147483647, 'aaravgupta1@gmail.com', 'EMP001', '2019', ' 10-06-2019', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(2, ' Aditi Patel', 2147483647, 'aditipatel1@gmail.com', 'EMP002', '2020', ' 27-01-2020', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(3, ' Akash Singh', 2147483647, 'akashsingh1@gmail.com', 'EMP003', '2021', ' 16-12-2021', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(4, ' Alia Khan', 2147483647, 'aliakhan1@gmail.com', 'EMP004', '2021', ' 23-03-2021', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(5, ' Aman Sharma', 1606765237, 'amansharma1@gmail.com', 'EMP005', '2018', ' 09-08-2018', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(6, ' Amrita Patel', 2147483647, 'amritapatel1@gmail.com', 'EMP006', '2018', ' 18-02-2018', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(7, ' Ananya Joshi', 2147483647, 'ananyajoshi1@gmail.com', 'EMP007', '2020', ' 21-09-2020', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(8, ' Anil Gupta', 2147483647, 'anilgupta1@gmail.com', 'EMP008', '2023', ' 30-05-2023', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(9, ' Anjali Singh', 2147483647, 'anjalisingh1@gmail.com', 'EMP009', '2022', ' 06-11-2022', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(10, ' Ankita Sharma', 2147483647, 'ankitasharma1@gmail.com', 'EMP010', '2018', ' 04-07-2018', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(11, ' Anshul Mehta', 2147483647, 'anshulmehta1@gmail.com', 'EMP011', '2023', ' 14-10-2023', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(12, ' Aradhya Kumar', 2147483647, 'aradhyakumar1@gmail.com', 'EMP012', '2022', ' 24-12-2022', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(13, ' Aravind Nair', 2147483647, 'aravindnair1@gmail.com', 'EMP013', '2021', ' 08-06-2021', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(14, ' Arjun Das', 2147483647, 'arjundas1@gmail.com', 'EMP014', '2022', ' 03-09-2022', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(15, ' Arnav Chakraborty', 2147483647, 'arnavchakraborty1@gmail.com', 'EMP015', '2019', ' 20-11-2019', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(16, ' Aryan Shah', 2147483647, 'aryanshah1@gmail.com', 'EMP016', '2020', ' 22-03-2020', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(17, ' Asha Patel', 2147483647, 'ashapatel1@gmail.com', 'EMP017', '2022', ' 17-09-2022', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(18, ' Ashish Gupta', 2147483647, 'ashishgupta1@gmail.com', 'EMP018', '2022', ' 28-12-2022', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(19, ' Asmita Das', 2147483647, 'asmitadas1@gmail.com', 'EMP019', '2019', ' 13-08-2019', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(20, ' Avik Choudhary', 2147483647, 'avikchoudhary1@gmail.com', 'EMP020', '2019', ' 09-04-2019', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(21, ' Chetan Jain', 2147483647, 'chetanjain1@gmail.com', 'EMP021', '2022', ' 11-10-2022', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(22, ' Darshana Shah', 2147483647, 'darshanashah1@gmail.com', 'EMP022', '2023', ' 06-08-2023', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(23, ' Deepak Singh', 2147483647, 'deepaksingh1@gmail.com', 'EMP023', '2019', ' 18-05-2019', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(24, ' Devika Menon', 2147483647, 'devikamenon1@gmail.com', 'EMP024', '2023', ' 27-08-2023', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(25, ' Diya Kapoor', 1937785220, 'diyakapoor1@gmail.com', 'EMP025', '2020', ' 01-02-2020', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(26, ' Divya Reddy', 2147483647, 'divyareddy1@gmail.com', 'EMP026', '2020', ' 23-11-2020', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(27, ' Esha Singh', 2147483647, 'eshasingh1@gmail.com', 'EMP027', '2019', ' 12-09-2019', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(28, ' Gaurav Patel', 2147483647, 'gauravpatel1@gmail.com', 'EMP028', '2018', ' 19-06-2018', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(29, ' Gayathri Nair', 2147483647, 'gayathrinair1@gmail.com', 'EMP029', '2023', ' 25-12-2023', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(30, ' Harsh Shah', 2147483647, 'harshshah1@gmail.com', 'EMP030', '2020', ' 02-01-2020', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(31, ' Isha Singh', 2147483647, 'ishasingh1@gmail.com', 'EMP031', '2019', ' 29-03-2019', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(32, ' Jaidev Joshi', 2147483647, 'jaidevjoshi1@gmail.com', 'EMP032', '2019', ' 05-11-2019', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(33, ' Jhanvi Kapoor', 2147483647, 'jhanvikapoor1@gmail.com', 'EMP033', '2022', ' 14-12-2022', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(34, ' Jignesh Patel', 2147483647, 'jigneshpatel1@gmail.com', 'EMP034', '2023', ' 26-09-2023', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(35, ' Kavya Sharma', 2147483647, 'kavyasharma1@gmail.com', 'EMP035', '2019', ' 22-10-2019', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(36, ' Keerthana Menon', 2147483647, 'keerthanamenon1@gmail.com', 'EMP036', '2018', ' 07-06-2018', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(37, ' Khushi Gupta', 2147483647, 'khushigupta1@gmail.com', 'EMP037', '2020', ' 21-02-2020', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(38, ' Kiran Singh', 2147483647, 'kiransingh1@gmail.com', 'EMP038', '2022', ' 17-08-2022', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(39, ' Kirti Sharma', 2147483647, 'kirtisharma1@gmail.com', 'EMP039', '2019', ' 08-04-2019', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(40, ' Krish Sharma', 2147483647, 'krishsharma1@gmail.com', 'EMP040', '2021', ' 01-11-2021', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(41, ' Kunal Desai', 2147483647, 'kunaldesai1@gmail.com', 'EMP041', '2021', ' 23-01-2021', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(42, ' Mahi Singh', 2147483647, 'mahisingh1@gmail.com', 'EMP042', '2021', ' 09-12-2021', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(43, ' Mahika Patel', 2147483647, 'mahikapatel1@gmail.com', 'EMP043', '2019', ' 15-07-2019', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(44, ' Manish Kumar', 1528734610, 'manishkumar1@gmail.com', 'EMP044', '2018', ' 05-03-2018', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(45, ' Mansi Gupta', 2147483647, 'mansigupta1@gmail.com', 'EMP045', '2022', ' 18-08-2022', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(46, ' Meena Patel', 2147483647, 'meenapatel1@gmail.com', 'EMP046', '2022', ' 29-11-2022', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(47, ' Meera Nair', 2147483647, 'meeranair1@gmail.com', 'EMP047', '2019', ' 12-04-2019', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(48, ' Mohit Singh', 2147483647, 'mohitsingh1@gmail.com', 'EMP048', '2019', ' 06-09-2019', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(49, ' Mukesh Patel', 1931323741, 'mukeshpatel1@gmail.com', 'EMP049', '2021', ' 30-10-2021', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(50, ' Nandini Reddy', 2147483647, 'nandinireddy1@gmail.com', 'EMP050', '2021', ' 16-06-2021', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(51, ' Naveen Kumar', 2147483647, 'naveenkumar1@gmail.com', 'EMP051', '2020', ' 27-05-2020', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(52, ' Nidhi Sharma', 2147483647, 'nidhisharma1@gmail.com', 'EMP052', '2020', ' 10-01-2020', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(53, ' Nihal Gupta', 2147483647, 'nihalgupta1@gmail.com', 'EMP053', '2023', ' 08-11-2023', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(54, ' Nikhil Desai', 2147483647, 'nikhildesai1@gmail.com', 'EMP054', '2018', ' 19-12-2018', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(55, ' Nitin Singh', 2147483647, 'nitinsingh1@gmail.com', 'EMP055', '2019', ' 23-07-2019', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(56, ' Omkar Sharma', 2147483647, 'omkarsharma1@gmail.com', 'EMP056', '2019', ' 13-01-2019', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(57, ' Palak Mehta', 2147483647, 'palakmehta1@gmail.com', 'EMP057', '2022', ' 05-09-2022', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(58, ' Pallavi Joshi', 2147483647, 'pallavijoshi1@gmail.com', 'EMP058', '2021', ' 17-02-2021', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(59, ' Pooja Patel', 2147483647, 'poojapatel1@gmail.com', 'EMP059', '2023', ' 30-03-2023', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(60, ' Pranav Menon', 2147483647, 'pranavmenon1@gmail.com', 'EMP060', '2023', ' 22-06-2023', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(61, ' Prateek Singh', 2147483647, 'prateeksingh1@gmail.com', 'EMP061', '2022', ' 11-12-2022', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(62, ' Priya Shah', 2147483647, 'priyashah1@gmail.com', 'EMP062', '2018', ' 03-08-2018', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(63, ' Rahul Gupta', 1859042654, 'rahulgupta1@gmail.com', 'EMP063', '2019', ' 14-06-2019', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(64, ' Raj Kumar', 2147483647, 'rajkumar1@gmail.com', 'EMP064', '2019', ' 26-11-2019', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(65, ' Rakesh Patel', 2147483647, 'rakeshpatel1@gmail.com', 'EMP065', '2023', ' 08-02-2023', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(66, ' Raman Sharma', 2147483647, 'ramansharma1@gmail.com', 'EMP066', '2020', ' 21-07-2020', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(67, ' Ravi Singh', 2147483647, 'ravisingh1@gmail.com', 'EMP067', '2021', ' 02-04-2021', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(68, ' Riya Gupta', 2147483647, 'riyagupta1@gmail.com', 'EMP068', '2023', ' 12-07-2023', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(69, ' Rohit Desai', 2147483647, 'rohitdesai1@gmail.com', 'EMP069', '2021', ' 07-12-2021', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(70, ' Roshni Patel', 2147483647, 'roshnipatel1@gmail.com', 'EMP070', '2018', ' 26-06-2018', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(71, ' Sagar Singh', 2147483647, 'sagarsingh1@gmail.com', 'EMP071', '2019', ' 15-05-2019', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(72, ' Sahil Shah', 2147483647, 'sahilshah1@gmail.com', 'EMP072', '2019', ' 28-02-2019', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(73, ' Saloni Patel', 2147483647, 'salonipatel1@gmail.com', 'EMP073', '2022', ' 06-02-2022', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(74, ' Samir Kumar', 2147483647, 'samirkumar1@gmail.com', 'EMP074', '2022', ' 19-09-2022', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(75, ' Sanjay Singh', 2147483647, 'sanjaysingh1@gmail.com', 'EMP075', '2022', ' 11-04-2022', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(76, ' Sarika Sharma', 2147483647, 'sarikasharma1@gmail.com', 'EMP076', '2019', ' 24-08-2019', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(77, ' Sejal Patel', 2147483647, 'sejalpatel1@gmail.com', 'EMP077', '2018', ' 29-05-2018', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(78, ' Shaila Menon', 2147483647, 'shailamenon1@gmail.com', 'EMP078', '2023', ' 16-10-2023', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(79, ' Shalini Gupta', 2147483647, 'shalinigupta1@gmail.com', 'EMP079', '2020', ' 03-07-2020', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(80, ' Shamita Patel', 2147483647, 'shamitapatel1@gmail.com', 'EMP080', '2022', ' 20-12-2022', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(81, ' Shivangi Singh', 2147483647, 'shivangisingh1@gmail.com', 'EMP081', '2023', ' 13-02-2023', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(82, ' Shraddha Kapoor', 2147483647, 'shraddhakapoor1@gmail.com', 'EMP082', '2020', ' 25-09-2020', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(83, ' Shreya Sharma', 2147483647, 'shreyasharma1@gmail.com', 'EMP083', '2021', ' 07-03-2021', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(84, ' Shreyansh Patel', 2147483647, 'shreyanshpatel1@gmail.com', 'EMP084', '2021', ' 01-06-2021', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(85, ' Simran Kaur', 2147483647, 'simrankaur1@gmail.com', 'EMP085', '2018', ' 28-05-2018', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(86, ' Sneha Singh', 2147483647, 'snehasingh1@gmail.com', 'EMP086', '2021', ' 18-10-2021', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(87, ' Sonali Shah', 2147483647, 'sonalishah1@gmail.com', 'EMP087', '2022', ' 14-05-2022', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(88, ' Soumya Nair', 2147483647, 'soumyanair1@gmail.com', 'EMP088', '2020', ' 24-02-2020', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(89, ' Subhash Patel', 1458925663, 'subhashpatel1@gmail.com', 'EMP089', '2020', ' 09-05-2020', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(90, ' Sudha Menon', 2147483647, 'sudhamenon1@gmail.com', 'EMP090', '2022', ' 11-06-2022', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(91, ' Sumit Gupta', 2147483647, 'sumitgupta1@gmail.com', 'EMP091', '2022', ' 30-09-2022', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(92, ' Suraj Singh', 2147483647, 'surajsingh1@gmail.com', 'EMP092', '2022', ' 08-08-2022', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(93, ' Swati Sharma', 1990700138, 'swatisharma1@gmail.com', 'EMP093', '2018', ' 21-05-2018', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(94, ' Tanishka Patel', 2147483647, 'tanishkapatel1@gmail.com', 'EMP094', '2022', ' 17-11-2022', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(95, ' Tanmay Singh', 2147483647, 'tanmaysingh1@gmail.com', 'EMP095', '2018', ' 04-12-2018', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(96, ' Tarun Gupta', 1384594630, 'tarungupta1@gmail.com', 'EMP096', '2019', ' 25-03-2019', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(97, ' Uday Desai', 1594700127, 'udaydesai1@gmail.com', 'EMP097', '2023', ' 10-09-2023', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(98, ' Vaishali Patel', 2147483647, 'vaishalipatel1@gmail.com', 'EMP098', '2023', ' 26-07-2023', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(99, ' Veena Menon', 2147483647, 'veenamenon1@gmail.com', 'EMP099', '2019', ' 22-01-2019', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32'),
(100, ' Vidyut Sharma', 2147483647, 'vidyutsharma1@gmail.com', 'EMP100', '2023', ' 03-12-2023', 1, '2023-03-09 22:34:32', 1, '2023-03-09 22:34:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employeedata`
--
ALTER TABLE `employeedata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employeedata`
--
ALTER TABLE `employeedata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
