-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2025 at 07:07 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news-portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(35) NOT NULL,
  `admin_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `admin_password`) VALUES
(1, 'admin@admin.com', '$2y$10$b3GAX6.Pd6054RRQ8C9se.zfOhTljRkduBfAKWFrmtdKwj02aSTuq');

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `article_title` varchar(250) NOT NULL,
  `article_image` varchar(200) NOT NULL,
  `article_description` text NOT NULL,
  `article_date` date NOT NULL,
  `article_trend` tinyint(4) NOT NULL,
  `article_active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`article_id`, `category_id`, `author_id`, `article_title`, `article_image`, `article_description`, `article_date`, `article_trend`, `article_active`) VALUES
(41, 6, 5, 'D. Y. Patil Sports Start: 2nd Feb 2025 to 12th Feb 2025', 'article-6-1737623814.jpg', 'Sports and studies go hand-in-hand in shaping a balanced life. Just like focusing on academics, engaging in sports is crucial for physical fitness, mental well-being, and teamwork skills. It’s important to understand that both sports and studies should be prioritized, as they help in overall personal growth and career development. Unlike jobs that may restrict time, college life offers the perfect opportunity to engage in both. Make the most of this time to excel both academically and athletically.\r\n\r\nEvent Dates:\r\n\r\n2nd & 3rd Feb 2025: Volleyball (Outdoor)\r\n4th & 5th Feb 2025: Football (Outdoor)\r\n6th & 7th Feb 2025: Cricket (Outdoor)\r\n7th to 12th Feb 2025: Indoor Sports (Table Tennis, Badminton, Chess, etc.)\r\nRegistration:\r\nRegistration for all sports events has started! Students are encouraged to register early to confirm their participation and secure their spot. Don\'t miss this opportunity to showcase your skills and engage in some healthy competition.\r\n\r\nContact Person: Mr. Rahul Sharma\r\nContact Number: 9876543210', '2025-01-23', 0, 1),
(49, 4, 8, 'Upcoming Semester Registration Deadline ', 'article-4-1744868505.jpg', 'Registration for the Fall 2024 semester closes on August 25, 2024. Ensure all course selections are finalized and fees are paid to avoid late penalties. Visit the student portal for details.  ', '2025-04-17', 1, 1),
(50, 5, 8, 'Campus Placement Drive - Tech Mahindra', 'article-5-1744868751.jpg', 'Tech Mahindra is conducting a recruitment drive on October 10, 2024, for final-year CS/IT students. Eligibility: 60%+ aggregate, no active backlogs. Register by October 5 via the placement portal.  ', '2025-04-17', 1, 1),
(51, 4, 8, 'Scholarship Application Open - Merit-Based', 'article-4-1744868914.jpg', 'Applications for the 2024-25 Merit Scholarship are now open! Students with 8.0+ CGPA can apply before September 15, 2024. Required documents: Marksheets, income proof, and recommendation letter.', '2025-04-17', 0, 1),
(52, 4, 8, 'Library Renovation - Temporary Closure', 'article-4-1744869152.jpg', 'Central Library will be closed for renovation from July 1-15, 2024. Students can access e-resources via the Digital Library Portal. Physical book returns will resume post-renovation.  ', '2025-04-17', 0, 1),
(53, 5, 8, 'Internship Opportunity - Google Summer Internship  ', 'article-5-1744869256.jpg', 'Google is offering summer internships (June-August 2024) for pre-final year students. Apply via their career portal by March 30, 2024. Stipend: $6,000/month. Eligibility: Strong DSA & development skills.  ', '2025-04-17', 1, 1),
(54, 3, 8, 'Hostel Fee Payment Reminder  ', 'article-3-1744869386.jpg', 'Last date to pay Hostel Fees for Semester II (2024) is January 20, 2024. Late payments will incur a 5% penalty. Pay online via the college payment gateway.  ', '2025-04-17', 0, 1),
(55, 5, 8, 'Workshop on AI & Machine Learning  ', 'article-5-1744869500.jpg', 'Attend a 2-day workshop on AI/ML by industry experts on February 12-13, 2024. Limited seats! Register at the CS Department. Fee: ₹500 (includes certification).  ', '2025-04-17', 0, 1),
(56, 4, 8, 'Anti-Ragging Policy Notice  ', 'article-4-1744869566.jpg', 'Strict action will be taken against ragging as per UGC guidelines. Report incidents anonymously via anti-ragging helpline: 1800-123-4567 or email report@college.edu.  ', '2025-04-17', 0, 1),
(57, 4, 8, 'Final Year Project Submission Guidelines  ', 'article-4-1744869665.jpg', 'Final-year students must submit project synopses by April 5, 2024, and final reports by May 20, 2024. Format: IEEE template (softcopy + hardcopy). Late submissions will be penalized.  ', '2025-04-17', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `article_tags`
--

CREATE TABLE `article_tags` (
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `article_tags`
--

INSERT INTO `article_tags` (`article_id`, `tag_id`) VALUES
(49, 7),
(49, 5),
(49, 1),
(49, 19),
(49, 3),
(49, 6),
(50, 30),
(50, 29),
(51, 5),
(51, 1),
(51, 19),
(51, 3),
(51, 6),
(51, 2),
(51, 8),
(51, 17),
(51, 12),
(51, 13),
(51, 14),
(52, 7),
(52, 5),
(52, 1),
(52, 3),
(52, 6),
(52, 11),
(52, 8),
(53, 16),
(53, 21),
(53, 20),
(53, 1),
(53, 18),
(53, 19),
(53, 6),
(53, 28),
(53, 22),
(53, 2),
(53, 30),
(53, 12),
(53, 29),
(53, 24),
(54, 15),
(54, 12),
(54, 13),
(54, 14),
(55, 28),
(55, 29),
(55, 27),
(55, 35),
(55, 36),
(57, 5),
(57, 1),
(57, 19),
(57, 3),
(57, 6),
(57, 17),
(57, 24);

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(35) NOT NULL,
  `author_password` varchar(100) NOT NULL,
  `author_email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `author_name`, `author_password`, `author_email`) VALUES
(2, 'U Anish', '$2y$10$gD8OeQmEZBbQFnO2CCpoBeot5X2/D76qV/ej5q1yyXkCmTilG6LHy', 'anish@anish.com'),
(3, 'Varshini Senthil', '$2y$10$yfqAfNTZiiGgStBU9089rOysv0n35bqk9t.M/tjC/H2ahfmPedoyS', 'vari@vari.com'),
(6, 'Om Ghode', '$2y$10$vZwfslZEDxMeZSgrQiTateoJC3ZYSgZ.VEtW54.PQv5Qn3vd7dFwa', 'ghodeom31@gmail.com'),
(8, 'Om Ghode', '$2y$10$vZwfslZEDxMeZSgrQiTateoJC3ZYSgZ.VEtW54.PQv5Qn3vd7dFwa', 'ghodeom30@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `bookmark`
--

CREATE TABLE `bookmark` (
  `bookmark_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookmark`
--

INSERT INTO `bookmark` (`bookmark_id`, `user_id`, `article_id`) VALUES
(29, 9, 41),
(32, 15, 41);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(60) NOT NULL,
  `category_color` varchar(35) NOT NULL,
  `category_image` varchar(250) NOT NULL,
  `category_description` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_color`, `category_image`, `category_description`) VALUES
(1, 'Question Paper', 'tag-blue', 'Question Paper1737609371.png', 'It provides students with access to previous exam question papers. This feature helps students prepare effectively by giving them insights into the exam pattern, important topics, and question trends. It serves as a centralized resource for academic revision, making exam preparation more efficient and organized.'),
(2, 'Technology', 'tag-orange', 'Technology1616565177.jpg', 'World is changing rapidly because of the development of technology and boom in the need for technology, because nothing can be done without technology in today\'s world. So be up to date on the latest developments.'),
(3, 'Canteen', 'tag-yellow', 'Food1616565209.jpg', 'Canteen Updates keeps students and staff informed about the latest news from the college canteen, including new menu items, special offers, and schedule changes. Stay updated and never miss important announcements!'),
(4, 'Education', 'tag-blue', 'Education1616565234.jpg', 'Education is everything to survive in this competetive world. what is the latest when it comes to education and need to get education to every part of the world and the poor.'),
(5, 'Jobs & Internships', 'tag-orange', 'Jobs & Internships1737608236.jpeg', 'Jobs & Internships is a dedicated section of CampusConnect that connects students with career opportunities. It features job postings, internship openings, and career resources to help students build their professional skills. Teachers and professionals can share guidance on resumes, interviews, and career planning, making it a one-stop hub for stu'),
(6, 'Sports', 'tag-purple', 'Sports1616565300.jpg', 'And it\'s a six or GOALLL!!!! are a few things that make us feel like a child. Sports, tournaments and league matches, where is each team standing, what is new in the world of sports??'),
(7, 'Entertainment', 'tag-purple', 'Entertainment1620564450.jpg', 'ROLL. CAMERA. ACTION. Behold the drama unfold in the coolest way possible. Catch your favorite celebrities on their new projects and endorsements.'),
(8, 'Health', 'tag-yellow', 'Health1616565475.jpg', 'One of human beings\' major asset is our ability of take care of our health and be healthy. our first priority should be to be healthy.');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `tag_id` int(11) NOT NULL,
  `tag_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`tag_id`, `tag_name`) VALUES
(1, 'CSE'),
(2, 'IT'),
(3, 'ECE'),
(4, 'ME'),
(5, 'CIVIL'),
(6, 'EEE'),
(7, 'BIO'),
(8, 'MBA'),
(9, 'MSC'),
(10, 'PHD'),
(11, 'GEN'),
(12, 'OBC'),
(13, 'SC'),
(14, 'ST'),
(15, 'EWS'),
(16, 'AI'),
(17, 'ML'),
(18, 'CYBERSECURITY'),
(19, 'DATA-SCIENCE'),
(20, 'CLOUD'),
(21, 'BLOCKCHAIN'),
(22, 'IOT'),
(23, 'NETWORKING'),
(24, 'SOFTWARE'),
(25, 'HARDWARE'),
(26, 'ROBOTICS'),
(27, 'RESEARCH'),
(28, 'INTERNSHIP'),
(29, 'PLACEMENT'),
(30, 'IT-JOB'),
(31, 'GOVERNMENT-JOB'),
(32, 'FREELANCE'),
(33, 'STARTUP'),
(34, 'HACKATHON'),
(35, 'SEMINAR'),
(36, 'WORKSHOP'),
(37, 'TECH-FEST'),
(38, 'CULTURAL'),
(39, 'SPORTS');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(35) NOT NULL,
  `user_email` varchar(45) NOT NULL,
  `user_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_password`) VALUES
(1, 'Anish U ', 'anish@anish.com', '$2y$10$gD8OeQmEZBbQFnO2CCpoBeot5X2/D76qV/ej5q1yyXkCmTilG6LHy'),
(2, 'Jaishri S K', 'jai@jai.com', '$2y$10$CIVnTItR2cIxuLm4/zGjuOIfsh/Dqs/zaKOJ2ST4dIk0YrJF/Cam6'),
(4, 'Suyash U', 'suyash@suyash.com', '$2y$10$xDw4C1y58k8kafvdzKo6WO/XglvO9jeJV7evQTxfOSxJ8DybuXDFW'),
(5, 'Varshini Senthil', 'vari@vari.com', '$2y$10$yfqAfNTZiiGgStBU9089rOysv0n35bqk9t.M/tjC/H2ahfmPedoyS'),
(6, 'Nivethitha V S', 'nivi@nivi.com', '$2y$10$ETC53l2u7pyzCfbwsQMzcOzvVln2gEimQOIG7wVgM/vw.ouCb0FM.'),
(11, 'Om Ghode', 'ghodeom30@gmail.com', '$2y$10$LefNIidgyAveOr20zY/54.MZ.N0eVNZjtGFyPEgHSYf8FOk4j1lgG'),
(13, 'Sachin', 'sachin@gmail.com', '$2y$10$vZwfslZEDxMeZSgrQiTateoJC3ZYSgZ.VEtW54.PQv5Qn3vd7dFwa'),
(14, 'arti', 'arti@gmail.com', '$2y$10$rSdGyZlw2mn5mXMuZZfdT.6rZzgppaD5xr2Ysiw/Fr.SMmmOHjmlS'),
(15, 'shruti', 'shruti@gmail.com', '$2y$10$LuPjL4c36WgkUEEbz0ZqQeotUKE0K4yZ5tm3Qec.7AtfTgf2mLIZC');

-- --------------------------------------------------------

--
-- Table structure for table `user_tags`
--

CREATE TABLE `user_tags` (
  `user_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_tags`
--

INSERT INTO `user_tags` (`user_id`, `tag_id`) VALUES
(11, 2),
(11, 3),
(11, 4),
(11, 5),
(11, 7),
(11, 9),
(11, 16),
(0, 10),
(13, 1),
(13, 30),
(14, 1),
(14, 32),
(15, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `bookmark`
--
ALTER TABLE `bookmark`
  ADD PRIMARY KEY (`bookmark_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `bookmark`
--
ALTER TABLE `bookmark`
  MODIFY `bookmark_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
