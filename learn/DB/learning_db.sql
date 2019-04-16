-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2019 at 12:58 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learning_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(100) NOT NULL,
  `title` varchar(1024) NOT NULL,
  `summary` text NOT NULL,
  `course_price` varchar(100) NOT NULL,
  `assigned_teacher` int(100) NOT NULL,
  `path` varchar(1024) NOT NULL,
  `status` varchar(50) NOT NULL,
  `regDate` varchar(200) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `summary`, `course_price`, `assigned_teacher`, `path`, `status`, `regDate`, `timestamp`) VALUES
(5, 'Java Essential Training', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod&lt;br /&gt;tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,&lt;br /&gt;quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo&lt;br /&gt;consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse&lt;br /&gt;cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non&lt;br /&gt;proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;', '5454', 2, 'preview11-1093616141874771770.png', 'ACTIVE', '2019/04/15 09:59:35pm', '2019-04-15 19:59:35'),
(6, '0027 - Medical Biorisk Assessment &amp;amp; Management - 8 CPD Credits by Celestin Musabyumuremyi', '&lt;p&gt;Medical Risk Assessment is intended to offer an understanding of the basic theory underlying a safety risk assessment. This course will be help you to have a clear understanding on Managing Biorisk events.&lt;/p&gt;', '3548', 2, '3-1421118071818509497.jpg', 'ACTIVE', '2019/04/15 10:58:16pm', '2019-04-15 20:58:16'),
(7, '0026 Diagnostic Approach of acute Leukemias, What you wished to know! by Diogene Rwayitare - 32 CPD Credits', '&lt;p&gt;This course will give you an A to Z approach on the Diagnosis of Acute Leukemias, You will be presented with clinical, morphological features and the management of acute and chronic leukemias. Enroll by calling on 0789044439.&lt;/p&gt;', '44545454', 2, '5-10285308511866771868.jpg', 'ACTIVE', '2019/04/15 10:59:43pm', '2019-04-15 20:59:43'),
(8, '0024 Customer care in Health setting: Doing more to succeed! By David Gilet - 10 CPD Credits', '&lt;p&gt;This course will inspire Health professionals on the need to increase customer care service in their workplace, Health Setting. Will highlight about patient satisfaction also. It is to be done in 10 Hours.&lt;/p&gt;', '25000', 2, '3-6750510001086887618.jpg', 'ACTIVE', '2019/04/16 12:40:57pm', '2019-04-16 10:40:57');

-- --------------------------------------------------------

--
-- Table structure for table `course_credits`
--

CREATE TABLE `course_credits` (
  `id` int(11) NOT NULL,
  `course_id` int(100) NOT NULL,
  `teacher_id` int(100) NOT NULL,
  `credit` varchar(1024) NOT NULL,
  `summary` text NOT NULL,
  `attachment` varchar(1024) NOT NULL,
  `status` varchar(50) NOT NULL,
  `save_date` varchar(200) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_credits`
--

INSERT INTO `course_credits` (`id`, `course_id`, `teacher_id`, `credit`, `summary`, `attachment`, `status`, `save_date`, `timestamp`) VALUES
(1, 0, 2, 'Welcome to my homeland of technology', '&lt;p&gt;&lt;em&gt;&lt;strong&gt;Welcome to my homeland of technologyWelcome to my&lt;/strong&gt; &lt;/em&gt;homeland of technologyWelcome to my homeland of technologyWelcome to my homeland of technology&lt;/p&gt;', 'C:/xampp/htdocs/learn/Uploads/12-775057870319791161.PNG', 'ACTIVE', '2019/04/13 08:14:26am', '2019-04-13 06:14:26'),
(2, 1, 0, 'Welcome to my homeland of technology', '&lt;p&gt;Software Engineering:Introduction to COmputing Eras.&lt;/p&gt;', '122121-6548822882050345270.PNG', 'ACTIVE', '2019/04/13 08:22:03am', '2019-04-13 06:22:03'),
(3, 1, 2, 'Welcome to my homeland of technology', '&lt;p&gt;Welcome to my homeland of technologyWelcome to my homeland of technologyWelcome to my homeland of technologyWelcome to my homeland of technology&lt;/p&gt;', 'andela_proficiency_certificate-8044823061943953113.pdf', 'ACTIVE', '2019/04/13 08:24:20am', '2019-04-13 06:24:20'),
(4, 3, 2, 'Introduction to Pointers', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod&lt;br /&gt;tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,&lt;br /&gt;quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo&lt;br /&gt;consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse&lt;br /&gt;cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non&lt;br /&gt;proident, sunt in culpa qui officia deserunt mollit anim id est laborum.`&lt;/p&gt;', 'popcorn-634216740465487074.png', 'ACTIVE', '2019/04/15 09:30:04pm', '2019-04-15 19:30:04'),
(5, 7, 2, 'intoduction ', '&lt;p&gt;This course will give you an A to Z approach on the Diagnosis of Acute Leukemias, You will be presented with clinical, morphological features and the management of acute and chronic leukemias. Enroll by calling on 0789044439.&lt;/p&gt;', 'thenativescriptbook-496693167243384979.pdf', 'ACTIVE', '2019/04/16 12:36:37pm', '2019-04-16 10:36:37'),
(6, 7, 2, 'learning ', '&lt;p&gt;You are welcome to the Diagnostic Approach of Acute Leukemias by Diogene Rwayitare, it will be giving knowledge related to the assessment and Management of acute leukemias. Click on Read more to get in.&lt;/p&gt;', 'DataHack4FI Season 3 Concept 20-13075881861847164982.pdf', 'ACTIVE', '2019/04/16 12:38:54pm', '2019-04-16 10:38:54');

-- --------------------------------------------------------

--
-- Table structure for table `credits_attachments`
--

CREATE TABLE `credits_attachments` (
  `id` int(100) NOT NULL,
  `credit_id` int(100) NOT NULL,
  `file_path` varchar(1024) NOT NULL,
  `status` varchar(50) NOT NULL,
  `upload_date` varchar(200) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `credit_quiz`
--

CREATE TABLE `credit_quiz` (
  `id` int(100) NOT NULL,
  `credit_id` int(100) NOT NULL,
  `title` varchar(1024) NOT NULL,
  `summary` text NOT NULL,
  `duration` varchar(200) NOT NULL,
  `status` varchar(50) NOT NULL,
  `save_date` varchar(200) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `credit_quiz`
--

INSERT INTO `credit_quiz` (`id`, `credit_id`, `title`, `summary`, `duration`, `status`, `save_date`, `timestamp`) VALUES
(2, 3, 'Learning the Basics of Computing Era', '&lt;p&gt;&lt;strong&gt;Lorem ipsum&lt;/strong&gt;&amp;nbsp;dolor sit ame&lt;em&gt;t, consectetur adipisicing elit, sed do&lt;/em&gt;&amp;nbsp;eiusmod&lt;br /&gt;tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,&lt;br /&gt;quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo&lt;br /&gt;consequat. Duis aute irure dolor in r&lt;strong&gt;eprehenderit i&lt;/strong&gt;n voluptate velit esse&lt;br /&gt;cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non&lt;br /&gt;proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;', '', '', '2019/04/13 12:32:43pm', '2019-04-13 10:32:43'),
(3, 4, 'Pointers summary', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod&lt;br /&gt;tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,&lt;br /&gt;quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo&lt;br /&gt;consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse&lt;br /&gt;cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non&lt;br /&gt;proident, sunt in culpa qui officia deserunt mollit anim id est laborum.`&lt;/p&gt;', '', '', '2019/04/15 09:31:12pm', '2019-04-15 19:31:12');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(100) NOT NULL,
  `quiz_id` int(100) NOT NULL,
  `question` text NOT NULL,
  `answer1` varchar(1024) NOT NULL,
  `answer2` varchar(1024) NOT NULL,
  `answer3` varchar(1024) NOT NULL,
  `answer4` varchar(1024) NOT NULL,
  `answer5` varchar(1024) NOT NULL,
  `correct` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `save_date` varchar(200) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `quiz_id`, `question`, `answer1`, `answer2`, `answer3`, `answer4`, `answer5`, `correct`, `status`, `save_date`, `timestamp`) VALUES
(1, 2, 'When the first Computer was invented?', 'In 1960', 'In 1962', 'In 1964', 'In 1950', 'In 1980', 'answer3', 'ACTIVE', '2019/04/13 01:23:33pm', '2019-04-13 11:23:33'),
(2, 2, 'Who was the Inventor of C Programming Language?', 'Dennis Ritchies', 'Mark Zuckerburg', 'Bill Gates', 'Bjarne Straustop', 'No Correct Answer', 'answer5', 'ACTIVE', '2019/04/13 01:35:44pm', '2019-04-13 11:35:44'),
(3, 3, 'How to declare a pointer ?', 'By using lambda expression', 'By using keyboard', 'By adding * before a variable name', 'By name', 'By reference', 'answer3', 'ACTIVE', '2019/04/15 09:32:25pm', '2019-04-15 19:32:25');

-- --------------------------------------------------------

--
-- Table structure for table `system_users`
--

CREATE TABLE `system_users` (
  `id` int(100) NOT NULL,
  `names` varchar(1024) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `user_type` int(2) NOT NULL,
  `verified` int(2) NOT NULL,
  `verification_code` varchar(100) NOT NULL,
  `status` int(2) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_users`
--

INSERT INTO `system_users` (`id`, `names`, `email`, `password`, `user_type`, `verified`, `verification_code`, `status`, `reg_date`) VALUES
(1, 'Sugira Samuel', 'sam@gmail.com', '123456', 1, 1, '4545341415', 1, '2019-04-12 10:04:11'),
(2, 'Teacher Mpamire', 'teacher@top.rw', '123456', 2, 1, '4545648', 1, '2019-04-12 11:37:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_credits`
--
ALTER TABLE `course_credits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credits_attachments`
--
ALTER TABLE `credits_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credit_quiz`
--
ALTER TABLE `credit_quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_users`
--
ALTER TABLE `system_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `course_credits`
--
ALTER TABLE `course_credits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `credits_attachments`
--
ALTER TABLE `credits_attachments`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `credit_quiz`
--
ALTER TABLE `credit_quiz`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `system_users`
--
ALTER TABLE `system_users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
