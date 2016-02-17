-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2015 at 07:44 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fileautomation`
--
CREATE DATABASE IF NOT EXISTS `fileautomation` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `fileautomation`;

-- --------------------------------------------------------

--
-- Table structure for table `8_sem_project`
--

CREATE TABLE IF NOT EXISTS `8_sem_project` (
  `project_name` varchar(300) NOT NULL,
  `year` int(30) NOT NULL,
  `dept` char(100) NOT NULL,
  `submit_date` date NOT NULL,
  `f_ID_no` varchar(30) NOT NULL,
  `USN` varchar(30) NOT NULL,
  `file_link` varchar(300) NOT NULL,
  `TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Uploadedby` varchar(300) NOT NULL,
  `sendto` varchar(100) NOT NULL,
  PRIMARY KEY (`project_name`,`year`,`dept`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `8_sem_project`
--

INSERT INTO `8_sem_project` (`project_name`, `year`, `dept`, `submit_date`, `f_ID_no`, `USN`, `file_link`, `TIMESTAMP`, `Uploadedby`, `sendto`) VALUES
('Google', 2012, 'Biotechnology', '2015-11-11', 'a43', '1rv12is001', 'Untitled1.cpp', '2015-11-13 09:02:08', 'a43', ''),
('machine', 2012, 'Biotechnology', '2015-11-21', 'a43', '1rv12is001', 'BOOTEX.LOG', '2015-11-13 08:58:09', 'a43', '');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `name` char(100) NOT NULL,
  `a_ID_no` varchar(30) NOT NULL,
  `pass` varchar(300) NOT NULL,
  `gender` char(1) NOT NULL,
  `designation` char(100) NOT NULL,
  `TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`a_ID_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `a_ID_no`, `pass`, `gender`, `designation`, `TIMESTAMP`, `email`) VALUES
('admin', '1234', 'admin', 'M', 'Professor', '2015-04-20 07:29:18', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `admission`
--

CREATE TABLE IF NOT EXISTS `admission` (
  `USN` varchar(30) NOT NULL,
  `admn_no` int(30) NOT NULL,
  `rank` int(30) NOT NULL,
  `category` char(100) NOT NULL,
  `dept` char(100) NOT NULL,
  `year` int(30) NOT NULL,
  `file_link` varchar(300) NOT NULL,
  `TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Uploadedby` varchar(300) NOT NULL,
  PRIMARY KEY (`USN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `conferece`
--

CREATE TABLE IF NOT EXISTS `conferece` (
  `date` date NOT NULL,
  `topic` char(100) NOT NULL,
  `organizer` char(100) NOT NULL,
  `location` char(100) NOT NULL,
  `file_link` varchar(300) NOT NULL,
  `TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`date`,`topic`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `counsellor`
--

CREATE TABLE IF NOT EXISTS `counsellor` (
  `f_ID_no` varchar(30) NOT NULL,
  `batch_no` varchar(30) NOT NULL,
  `USN` varchar(30) NOT NULL,
  `file_type` char(100) NOT NULL,
  `file_name` varchar(300) NOT NULL,
  `date` date NOT NULL,
  `file_link` varchar(300) NOT NULL,
  `TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Uploadedby` varchar(300) NOT NULL,
  PRIMARY KEY (`USN`,`file_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `examination`
--

CREATE TABLE IF NOT EXISTS `examination` (
  `course_ID` varchar(30) NOT NULL,
  `f_ID_no` varchar(30) NOT NULL,
  `type` char(100) NOT NULL,
  `date` date NOT NULL,
  `year` int(30) NOT NULL,
  `semester` int(30) NOT NULL,
  `programme` char(100) NOT NULL,
  `file_link` varchar(300) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Uploadedby` varchar(300) NOT NULL,
  PRIMARY KEY (`course_ID`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examination`
--

INSERT INTO `examination` (`course_ID`, `f_ID_no`, `type`, `date`, `year`, `semester`, `programme`, `file_link`, `timestamp`, `Uploadedby`) VALUES
('231', 'a43', 'SIE', '2015-04-15', 2012, 2, 'UG', 'iiit_os-concepts.pdf', '2015-04-19 21:56:12', '11'),
('23116', 'a4316', 'SIE16', '0000-00-00', 201216, 216, 'UG16', 'iiit_os-concepts.pdf16', '0000-00-00 00:00:00', '1116'),
('789', 'a43', 'SIE', '2015-04-09', 2014, 2, 'PG', 'iiit_os-concepts.pdf', '2015-04-19 21:56:02', 'a72'),
('algorithm', 'a43', 'CIE', '2015-04-09', 2012, 6, 'UG', 'Report__Insertion_Merge_Quick_-libre.pdf', '2015-04-19 21:55:58', '11');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE IF NOT EXISTS `faculty` (
  `name` char(100) NOT NULL,
  `f_ID_no` varchar(30) NOT NULL,
  `gender` char(1) NOT NULL,
  `pass` varchar(250) NOT NULL,
  `dept` char(100) NOT NULL,
  `dob` date NOT NULL,
  `designation` char(100) NOT NULL,
  `joining_date` date NOT NULL,
  `email` varchar(300) NOT NULL,
  `TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`f_ID_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`name`, `f_ID_no`, `gender`, `pass`, `dept`, `dob`, `designation`, `joining_date`, `email`, `TIMESTAMP`) VALUES
('agni', '11', 'm', '123', 'ise', '2015-04-30', '', '0000-00-00', 'a@a.a', '0000-00-00 00:00:00'),
('apurva', '1234', 'M', '123', 'ISE', '2015-04-25', '', '0000-00-00', 'collegemy7@gmail.com', '0000-00-00 00:00:00'),
('Pranay Kumar', 'a43', 'M', '123', 'ise', '2015-04-18', '', '0000-00-00', 'pranay04k@yahoo.in', '0000-00-00 00:00:00'),
('rajesh', 'a72', 'M', '1234', 'ISE', '1984-03-09', 'Associate Professor', '0000-00-00', 'rajesh12@gmail.com', '2015-04-20 04:28:27');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE IF NOT EXISTS `inventory` (
  `type` char(100) NOT NULL,
  `i_ID_no` varchar(30) NOT NULL,
  `dept` char(100) NOT NULL,
  `location` char(100) NOT NULL,
  `cost` int(30) NOT NULL,
  `file_link` varchar(300) NOT NULL,
  `TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Uploadedby` varchar(300) NOT NULL,
  PRIMARY KEY (`i_ID_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mou`
--

CREATE TABLE IF NOT EXISTS `mou` (
  `date` date NOT NULL,
  `topic` varchar(300) NOT NULL,
  `file_link` varchar(300) NOT NULL,
  `TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Uploadedby` varchar(300) NOT NULL,
  PRIMARY KEY (`date`,`topic`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mou`
--

INSERT INTO `mou` (`date`, `topic`, `file_link`, `TIMESTAMP`, `Uploadedby`) VALUES
('0000-00-00', '46Company 24611', '46test.txt', '0000-00-00 00:00:00', '46a72'),
('0000-00-00', '5193Company 1', '5193companies.txt', '0000-00-00 00:00:00', '5193'),
('0000-00-00', '93Company 1', '93companies.txt', '0000-00-00 00:00:00', '93'),
('2015-04-15', 'Company 143', 'companies.txt', '2015-04-19 21:40:43', 'a43'),
('2015-04-22', 'Company 24611', 'test.txt', '2015-04-19 21:45:11', 'a72'),
('2015-05-23', 'Company 2469ws', 'intarcs.pdf', '2015-05-04 02:47:54', 'a43'),
('2015-05-27', 'check', 'jpmorgan.pdf', '2015-05-04 02:46:06', 'a43');

-- --------------------------------------------------------

--
-- Table structure for table `placement`
--

CREATE TABLE IF NOT EXISTS `placement` (
  `year` int(30) NOT NULL,
  `USN` varchar(30) NOT NULL,
  `company` char(100) NOT NULL,
  `job_profile` char(100) NOT NULL,
  `pay` varchar(300) NOT NULL,
  `file_link` varchar(300) NOT NULL,
  `TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Uploadedby` varchar(300) NOT NULL,
  `sendto` varchar(200) NOT NULL,
  PRIMARY KEY (`USN`,`company`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `placement`
--

INSERT INTO `placement` (`year`, `USN`, `company`, `job_profile`, `pay`, `file_link`, `TIMESTAMP`, `Uploadedby`, `sendto`) VALUES
(2012, '1RV11IS001', 'CISCO', 'DEVELOPER', '10,000,000', 'VMWare_EDIT1.pdf', '2015-11-30 06:24:29', 'a43', 'a72'),
(2012, '1RV11IS002', 'CITRIX', 'TESTER', '12,000,000', 'cover letter.docx', '2015-11-30 06:24:36', 'a72', 'a71'),
(2012, '1RV11IS003', 'SAP', 'DEVELOPER', '14,000,000', 'Report__Insertion_Merge_Quick_-libre.pdf', '2015-04-19 21:57:07', '11', ''),
(2012, '1RV12IS001', 'J P MORGAN', 'DEVELOPER', '700000', '', '2015-08-21 05:54:04', 'a43', ''),
(2014, '1rv12is01', 'CISCO1', 'TESTER', '12000000', 'resume(txt).txt', '2015-04-19 21:57:09', 'a43', ''),
(2012, '1rv12is065', 'Student', 'dsa', '1232', 'PRANAY KUMAR-1.doc', '2015-11-30 06:40:14', '11', 'rajesh'),
(2014, '30_COPY_1rv12is01', '30_COPY_CISCO1', '30_COPY_TESTER', '12000000', '30_COPY_resume(txt).txt', '0000-00-00 00:00:00', '30_COPY_a43', '');

-- --------------------------------------------------------

--
-- Table structure for table `publication`
--

CREATE TABLE IF NOT EXISTS `publication` (
  `publication_name` varchar(300) NOT NULL,
  `author` char(100) NOT NULL,
  `publisher` char(100) NOT NULL,
  `issue_date` date NOT NULL,
  `ISSN` varchar(300) NOT NULL,
  `file_link` varchar(300) NOT NULL,
  `TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Uploadedby` varchar(300) NOT NULL,
  PRIMARY KEY (`ISSN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rnd`
--

CREATE TABLE IF NOT EXISTS `rnd` (
  `project_ID` varchar(30) NOT NULL,
  `project_name` varchar(300) NOT NULL,
  `f_ID_no` varchar(30) NOT NULL,
  `USN` varchar(30) NOT NULL,
  `company` char(100) NOT NULL,
  `cost` int(30) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `file_link` varchar(300) NOT NULL,
  `TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Uploadedby` varchar(300) NOT NULL,
  PRIMARY KEY (`project_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rnd`
--

INSERT INTO `rnd` (`project_ID`, `project_name`, `f_ID_no`, `USN`, `company`, `cost`, `start_date`, `end_date`, `file_link`, `TIMESTAMP`, `Uploadedby`) VALUES
('113e', 'Aquaponics', 'a43', '1rv12is01', 'CISCO', 11221221, '2015-04-10', '2015-04-30', 'lower bound nlogn.pdf', '2015-04-19 21:57:32', 'a43'),
('113e2', 'Aquaponics II', 'a43', '1rv002', 'CITRIX', 11221221, '2015-04-06', '2015-04-30', 'qsi.txt', '2015-04-19 21:03:56', 'a43'),
('113e23', 'Aquaponics III', 'a72', '1rv0022', 'CISCO1', 222, '2015-04-15', '2015-04-23', 'test.txt', '2015-04-20 04:41:11', 'a72');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `name` char(100) NOT NULL,
  `USN` varchar(30) NOT NULL,
  `gender` char(1) NOT NULL,
  `pass` varchar(300) NOT NULL,
  `dept` char(100) NOT NULL,
  `dob` date NOT NULL,
  `year` int(30) NOT NULL,
  `email` varchar(300) NOT NULL,
  `TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`USN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`name`, `USN`, `gender`, `pass`, `dept`, `dob`, `year`, `email`, `TIMESTAMP`) VALUES
('rahul', '1rv12is010', 'M', '123', 'ise', '2015-04-01', 2012, 'rahul@gmail.com', '2015-04-20 07:06:31'),
('agni', '1RV12IS044', 'M', '123', 'ise', '2015-04-09', 2014, 'pranay06b@gmail.com', '2015-04-20 07:07:50');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
  `f_ID_no` varchar(30) NOT NULL,
  `certificate_name` varchar(300) NOT NULL,
  `file_link` varchar(300) NOT NULL,
  `TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Uploadedby` varchar(300) NOT NULL,
  PRIMARY KEY (`f_ID_no`,`certificate_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
