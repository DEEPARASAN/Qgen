-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 18, 2024 at 02:25 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `question_generator`
--

-- --------------------------------------------------------

--
-- Table structure for table `sb_admin`
--

CREATE TABLE `sb_admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sb_admin`
--

INSERT INTO `sb_admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `sb_department`
--

CREATE TABLE `sb_department` (
  `id` int(11) NOT NULL,
  `dept` varchar(30) NOT NULL,
  `detail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sb_department`
--

INSERT INTO `sb_department` (`id`, `dept`, `detail`) VALUES
(1, 'CSE', 'Computer Science'),
(2, 'IT', 'Information Technology');

-- --------------------------------------------------------

--
-- Table structure for table `sb_mark`
--

CREATE TABLE `sb_mark` (
  `id` int(11) NOT NULL,
  `mark` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sb_mark`
--

INSERT INTO `sb_mark` (`id`, `mark`) VALUES
(1, 2),
(2, 15),
(3, 5),
(4, 10);

-- --------------------------------------------------------

--
-- Table structure for table `sb_paper`
--

CREATE TABLE `sb_paper` (
  `id` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `sid` int(11) NOT NULL,
  `dept` varchar(30) NOT NULL,
  `semester` int(11) NOT NULL,
  `scode` varchar(20) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `set_num` int(11) NOT NULL,
  `test` varchar(30) NOT NULL,
  `regulation` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  `sem` varchar(20) NOT NULL,
  `edate` varchar(20) NOT NULL,
  `time_hours` varchar(20) NOT NULL,
  `max_mark` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sb_paper`
--

INSERT INTO `sb_paper` (`id`, `uname`, `sid`, `dept`, `semester`, `scode`, `subject`, `set_num`, `test`, `regulation`, `year`, `sem`, `edate`, `time_hours`, `max_mark`) VALUES
(1, 'SS1', 1, 'IT', 8, 'U19ITE30', 'Total Quality Management', 1, 'INTERNAL TEST - I', '2023', 'III', 'VI', '05-04-2023', '1.30', 40),
(2, 'SS1', 1, 'IT', 8, 'U19ITE30', 'Total Quality Management', 2, 'test2', '2024', 'IV', 'VIII', '30-01-2024', '3', 40),
(3, 'SS1', 2, 'IT', 8, 'PY001', 'Python', 0, 'Model', '2024', 'III', 'VIII', '17-04-2024', '3', 25);

-- --------------------------------------------------------

--
-- Table structure for table `sb_paper_ques`
--

CREATE TABLE `sb_paper_ques` (
  `id` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `sid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `part` varchar(20) NOT NULL,
  `num_ques` int(11) NOT NULL,
  `qmark` int(11) NOT NULL,
  `qtype` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sb_paper_ques`
--

INSERT INTO `sb_paper_ques` (`id`, `uname`, `sid`, `pid`, `part`, `num_ques`, `qmark`, `qtype`) VALUES
(1, 'SS1', 1, 1, 'A', 5, 2, 1),
(2, 'SS1', 1, 1, 'B', 2, 15, 2),
(3, 'SS1', 1, 2, 'A', 5, 2, 1),
(4, 'SS1', 1, 2, 'B', 2, 15, 2),
(5, 'SS1', 1, 1, 'B', 2, 15, 2),
(6, 'SS1', 2, 3, 'A', 3, 5, 1),
(7, 'SS1', 2, 3, 'B', 2, 10, 1),
(8, 'SS1', 2, 3, 'C', 2, 15, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sb_paper_ques2`
--

CREATE TABLE `sb_paper_ques2` (
  `id` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `sid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `partid` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `question` text NOT NULL,
  `mark` int(11) NOT NULL,
  `kl` varchar(20) NOT NULL,
  `co` varchar(20) NOT NULL,
  `qtype` int(11) NOT NULL,
  `value1` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sb_paper_ques2`
--

INSERT INTO `sb_paper_ques2` (`id`, `uname`, `sid`, `pid`, `partid`, `qid`, `question`, `mark`, `kl`, `co`, `qtype`, `value1`) VALUES
(1, 'SS1', 1, 1, 1, 2, 'Distinquish between internal customer and external customer', 2, 'K2', 'CO1', 1, '1'),
(2, 'SS1', 1, 1, 1, 4, 'Mention some tools', 2, 'K1', 'CO1', 1, '2'),
(3, 'SS1', 1, 1, 1, 5, 'Why team and team work required in TOM?', 2, 'K2', 'CO2', 1, '3'),
(4, 'SS1', 1, 1, 1, 3, 'State the four absolutes of quality observed by crossby', 2, 'K1', 'CO1', 1, '4'),
(5, 'SS1', 1, 1, 1, 1, 'Define quality and how is quality defined give any two definitions', 2, 'K1', 'CO1', 1, '5'),
(8, 'SS1', 1, 2, 3, 3, 'State the four absolutes of quality observed by crossby', 2, 'K1', 'CO1', 1, '1'),
(9, 'SS1', 1, 2, 3, 5, 'Why team and team work required in TOM?', 2, 'K2', 'CO2', 1, '2'),
(10, 'SS1', 1, 2, 3, 1, 'Define quality and how is quality defined give any two definitions', 2, 'K1', 'CO1', 1, '3'),
(11, 'SS1', 1, 2, 3, 4, 'Mention some tools', 2, 'K1', 'CO1', 1, '4'),
(12, 'SS1', 1, 2, 3, 2, 'Distinquish between internal customer and external customer', 2, 'K2', 'CO1', 1, '5'),
(13, 'SS1', 1, 1, 5, 11, '', 5, '', '', 2, '6'),
(14, 'SS1', 1, 1, 5, 12, '', 10, '', '', 2, '7'),
(15, 'SS1', 2, 3, 6, 15, 'Python 10 packages', 5, '', '', 1, '1'),
(16, 'SS1', 2, 3, 6, 16, 'python array example', 5, '', '', 1, '2'),
(17, 'SS1', 2, 3, 6, 14, 'Python Basic controls?', 5, '', '', 1, '3'),
(18, 'SS1', 2, 3, 7, 18, 'python with mysql example', 10, '', '', 1, '4'),
(19, 'SS1', 2, 3, 7, 17, 'Python and flask', 10, '', '', 1, '5'),
(20, 'SS1', 2, 3, 8, 0, '', 0, '', '', 2, '6'),
(21, 'SS1', 2, 3, 8, 0, '', 0, '', '', 2, '7');

-- --------------------------------------------------------

--
-- Table structure for table `sb_paper_ques3`
--

CREATE TABLE `sb_paper_ques3` (
  `id` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `sid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `partid` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `question` text NOT NULL,
  `mark` int(11) NOT NULL,
  `kl` varchar(20) NOT NULL,
  `co` varchar(20) NOT NULL,
  `qorder` varchar(10) NOT NULL,
  `ques_id` int(11) NOT NULL,
  `value1` varchar(20) NOT NULL,
  `value2` varchar(20) NOT NULL,
  `value3` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sb_paper_ques3`
--

INSERT INTO `sb_paper_ques3` (`id`, `uname`, `sid`, `pid`, `partid`, `qid`, `question`, `mark`, `kl`, `co`, `qorder`, `ques_id`, `value1`, `value2`, `value3`) VALUES
(1, 'SS1', 1, 1, 2, 12, 'Explain Structure with example', 10, 'K1', 'CO2', 'A', 6, '6', 'a i', ''),
(2, 'SS1', 1, 1, 2, 11, 'What is object oriented programming, give an example', 5, 'K1', 'CO1', 'A', 6, '', 'ii', ''),
(3, 'SS1', 1, 1, 2, 8, 'What is 5S? Explain all the elements of 5S', 15, 'K3', 'CO1', 'B', 6, '', 'b i', 'yes'),
(4, 'SS1', 1, 1, 2, 6, 'State and explain the barriers to TQM', 15, 'K3', 'CO1', 'A', 7, '7', 'a', ''),
(5, 'SS1', 1, 1, 2, 9, 'Write the fourteen steps of Deming''s philosophy', 15, 'K2', 'CO2', 'B', 7, '', 'b i', 'yes'),
(6, 'SS1', 1, 2, 4, 11, 'What is object oriented programming, give an example', 5, 'K1', 'CO1', 'A', 13, '13', 'a i', ''),
(7, 'SS1', 1, 2, 4, 13, 'Explain Arrays and Functions', 10, 'K2', 'CO2', 'A', 13, '', 'ii', ''),
(8, 'SS1', 1, 2, 4, 6, 'State and explain the barriers to TQM', 15, 'K3', 'CO1', 'B', 13, '', 'b i', 'yes'),
(9, 'SS1', 1, 2, 4, 7, 'Why to measure quality cost? classify the various types', 15, 'K3', 'CO1', 'A', 14, '14', 'a', ''),
(10, 'SS1', 1, 2, 4, 8, 'What is 5S? Explain all the elements of 5S', 15, 'K3', 'CO1', 'B', 14, '', 'b i', 'yes'),
(11, 'SS1', 1, 1, 5, 10, 'Explain loops and example', 5, 'K1', 'CO1', 'B', 14, '', 'ii', ''),
(12, 'SS1', 2, 3, 8, 18, 'python with mysql example', 10, '', '', 'A', 20, '20', 'a i', ''),
(13, 'SS1', 2, 3, 8, 14, 'Python Basic controls?', 5, '', '', 'A', 20, '', 'ii', ''),
(14, 'SS1', 2, 3, 8, 15, 'Python 10 packages', 5, '', '', 'B', 21, '', 'b i', 'yes'),
(15, 'SS1', 2, 3, 8, 17, 'Python and flask', 10, '', '', 'B', 21, '', 'ii', '');

-- --------------------------------------------------------

--
-- Table structure for table `sb_question`
--

CREATE TABLE `sb_question` (
  `id` int(11) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `semester` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `mark` int(11) NOT NULL,
  `kl` varchar(20) NOT NULL,
  `co` varchar(20) NOT NULL,
  `question` varchar(200) NOT NULL,
  `q_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sb_question`
--

INSERT INTO `sb_question` (`id`, `dept`, `semester`, `subject_id`, `mark`, `kl`, `co`, `question`, `q_image`) VALUES
(1, 'IT', 8, 1, 2, 'K1', 'CO1', 'Define quality and how is quality defined give any two definitions', ''),
(2, 'IT', 8, 1, 2, 'K2', 'CO1', 'Distinquish between internal customer and external customer', ''),
(3, 'IT', 8, 1, 2, 'K1', 'CO1', 'State the four absolutes of quality observed by crossby', 'Q1273.jpg'),
(4, 'IT', 8, 1, 2, 'K1', 'CO1', 'Mention some tools', ''),
(5, 'IT', 8, 1, 2, 'K2', 'CO2', 'Why team and team work required in TOM?', ''),
(6, 'IT', 8, 1, 15, 'K3', 'CO1', 'State and explain the barriers to TQM', ''),
(7, 'IT', 8, 1, 15, 'K3', 'CO1', 'Why to measure quality cost? classify the various types', ''),
(8, 'IT', 8, 1, 15, 'K3', 'CO1', 'What is 5S? Explain all the elements of 5S', ''),
(9, 'IT', 8, 1, 15, 'K2', 'CO2', 'Write the fourteen steps of Deming''s philosophy', ''),
(10, 'IT', 8, 1, 5, 'K1', 'CO1', 'Explain loops and example', 'Q1273.jpg'),
(11, 'IT', 8, 1, 5, 'K1', 'CO1', 'What is object oriented programming, give an example', ''),
(12, 'IT', 8, 1, 10, 'K1', 'CO2', 'Explain Structure with example', 'Q1273.jpg'),
(13, 'IT', 8, 1, 10, 'K2', 'CO2', 'Explain Arrays and Functions', ''),
(14, 'IT', 8, 2, 5, '', '', 'Python Basic controls?', 'Q14cmmm.jpg'),
(15, 'IT', 8, 2, 5, '', '', 'Python 10 packages', ''),
(16, 'IT', 8, 2, 5, '', '', 'python array example', ''),
(17, 'IT', 8, 2, 10, '', '', 'Python and flask', ''),
(18, 'IT', 8, 2, 10, '', '', 'python with mysql example', 'Q1830.png');

-- --------------------------------------------------------

--
-- Table structure for table `sb_subject`
--

CREATE TABLE `sb_subject` (
  `id` int(11) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `semester` int(11) NOT NULL,
  `sub_code` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sb_subject`
--

INSERT INTO `sb_subject` (`id`, `dept`, `subject`, `semester`, `sub_code`) VALUES
(1, 'IT', 'Total Quality Management', 8, 'U19ITE30'),
(2, 'IT', 'Python', 8, 'PY001');

-- --------------------------------------------------------

--
-- Table structure for table `sb_user`
--

CREATE TABLE `sb_user` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `location` varchar(40) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `photo` varchar(20) NOT NULL,
  `rdate` varchar(15) NOT NULL,
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `uname` (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sb_user`
--

INSERT INTO `sb_user` (`id`, `name`, `mobile`, `email`, `location`, `uname`, `pass`, `photo`, `rdate`) VALUES
(1, 'Raja', 8974512245, 'raja@gmail.com', 'Salem', 'SS1', '123456', '', '');
