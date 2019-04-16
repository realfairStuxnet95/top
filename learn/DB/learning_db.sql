-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2019 at 08:35 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

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
  `status` varchar(50) NOT NULL,
  `regDate` varchar(200) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `summary`, `course_price`, `assigned_teacher`, `status`, `regDate`, `timestamp`) VALUES
(1, 'Software Engineering:Introduction to COmputing Eras.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '20000', 2, 'ACTIVE', '12/04/2019', '2019-04-12 10:54:09'),
(2, 'fdfdfd', 'p212121212121/p', '1212', 2, 'ACTIVE', '2019/04/12 02:15:22pm', '2019-04-12 12:15:22');

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
(3, 1, 2, 'Welcome to my homeland of technology', '&lt;p&gt;Welcome to my homeland of technologyWelcome to my homeland of technologyWelcome to my homeland of technologyWelcome to my homeland of technology&lt;/p&gt;', 'andela_proficiency_certificate-8044823061943953113.pdf', 'ACTIVE', '2019/04/13 08:24:20am', '2019-04-13 06:24:20');

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
(2, 3, 'Learning the Basics of Computing Era', '&lt;p&gt;&lt;strong&gt;Lorem ipsum&lt;/strong&gt;&amp;nbsp;dolor sit ame&lt;em&gt;t, consectetur adipisicing elit, sed do&lt;/em&gt;&amp;nbsp;eiusmod&lt;br /&gt;tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,&lt;br /&gt;quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo&lt;br /&gt;consequat. Duis aute irure dolor in r&lt;strong&gt;eprehenderit i&lt;/strong&gt;n voluptate velit esse&lt;br /&gt;cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non&lt;br /&gt;proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;', '', '', '2019/04/13 12:32:43pm', '2019-04-13 10:32:43');

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
(2, 2, 'Who was the Inventor of C Programming Language?', 'Dennis Ritchies', 'Mark Zuckerburg', 'Bill Gates', 'Bjarne Straustop', 'No Correct Answer', 'answer5', 'ACTIVE', '2019/04/13 01:35:44pm', '2019-04-13 11:35:44');

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
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course_credits`
--
ALTER TABLE `course_credits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `credits_attachments`
--
ALTER TABLE `credits_attachments`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `credit_quiz`
--
ALTER TABLE `credit_quiz`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `system_users`
--
ALTER TABLE `system_users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
