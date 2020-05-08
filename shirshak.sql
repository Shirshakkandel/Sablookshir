-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2020 at 06:05 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shirshak`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(0, 'good sulav\r\n', 'shirshak_kandel', 'sulav_kns', '2020-03-17 04:39:50', 'no', 21),
(0, 'Upload new video sulav\r\n', 'shirshak_kandel', 'sulav_kns', '2020-03-17 05:09:35', 'no', 21),
(0, 'good', 'shirshak_kandel', 'shirshak_kandel', '2020-04-21 08:29:34', 'no', 32),
(0, 'Yes its work bro', 'sulav_kns', 'shirshak_kandel', '2020-04-27 11:06:27', 'no', 33),
(0, 'Yes it work this post id is 36', 'sulav_kns', 'shirshak_kandel', '2020-04-27 12:15:28', 'no', 36);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `user_to`, `user_from`) VALUES
(4, 'sulav_kns', 'samrat_thapa');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(14, 'shirshak_kandel', 20),
(16, 'shirshak_kandel', 19),
(17, 'shirshak_kandel', 21),
(31, 'shirshak_kandel', 18),
(32, 'shirshak_kandel', 30),
(33, 'shirshak_kandel', 1),
(34, 'sulav_kns', 18),
(36, 'shirshak_kandel', 32),
(37, 'shirshak_kandel', 32),
(39, 'sulav_kns', 33),
(40, 'sulav_kns', 32),
(41, 'sulav_kns', 30),
(42, 'sulav_kns', 20),
(43, 'sulav_kns', 36),
(44, 'samrat_thapa', 35),
(45, 'samrat_thapa', 32);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(1, 'sulav_kns', 'shirshak_kandel', 'hey', '2020-04-23 08:02:12', 'yes', 'yes', 'no'),
(2, 'sulav_kns', 'shirshak_kandel', 'hello\r\n', '2020-04-23 11:49:07', 'yes', 'yes', 'no'),
(3, 'sulav_kns', 'shirshak_kandel', 'hey\r\n', '2020-04-23 11:49:16', 'yes', 'yes', 'no'),
(4, 'shirshak_kandel', 'sulav_kns', 'hi Shirshak bro', '2020-04-23 12:27:59', 'yes', 'yes', 'no'),
(5, 'sulav_kns', 'shirshak_kandel', 'Hey dude', '2020-04-23 12:51:40', 'yes', 'yes', 'no'),
(6, 'sulav_kns', 'shirshak_kandel', 'How are you', '2020-04-23 12:51:53', 'yes', 'yes', 'no'),
(7, 'sulav_kns', 'shirshak_kandel', 'I want your number ', '2020-04-23 12:52:08', 'yes', 'yes', 'no'),
(8, 'sulav_kns', 'shirshak_kandel', 'Can I call you in viber', '2020-04-23 12:52:22', 'yes', 'yes', 'no'),
(9, 'sulav_kns', 'shirshak_kandel', 'Can I call you in viber', '2020-04-23 12:53:04', 'yes', 'yes', 'no'),
(10, 'sulav_kns', 'shirshak_kandel', 'Can I call you in viber', '2020-04-23 12:53:39', 'yes', 'yes', 'no'),
(11, 'sulav_kns', 'shirshak_kandel', 'Can I call you in viber', '2020-04-23 12:53:55', 'yes', 'yes', 'no'),
(12, 'sulav_kns', 'shirshak_kandel', 'Can I call you in viber', '2020-04-23 12:54:01', 'yes', 'yes', 'no'),
(14, 'sulav_kns', 'shirshak_kandel', 'are \r\n', '2020-04-23 13:10:13', 'yes', 'yes', 'no'),
(15, 'shirshak_kandel', 'sulav_kns', 'hey  bro\r\n', '2020-04-23 13:15:33', 'yes', 'yes', 'no'),
(16, 'shirshak_kandel', 'sulav_kns', 'I will give my number', '2020-04-23 13:15:43', 'yes', 'yes', 'no'),
(17, 'shirshak_kandel', 'sulav_kns', 'My number is 9846863569\r\n', '2020-04-23 13:16:04', 'yes', 'yes', 'no'),
(18, 'shirshak_kandel', 'sulav_kns', 'Call me when you are free', '2020-04-23 13:16:25', 'yes', 'yes', 'no'),
(19, 'laxuman_thapa', 'shirshak_kandel', 'hello mama', '2020-04-24 07:57:54', 'no', 'no', 'no'),
(20, 'sulav_kns', 'shirshak_kandel', 'Hi', '2020-04-24 08:11:15', 'yes', 'yes', 'no'),
(21, 'sulav_kns', 'shirshak_kandel', 'hello', '2020-04-25 12:01:21', 'yes', 'yes', 'no'),
(22, 'sulav_kns', 'shirshak_kandel', 'hey\r\n\r\n', '2020-04-26 08:33:07', 'yes', 'yes', 'no'),
(23, 'shirshak_kandel', 'sulav_kns', 'hey\r\n', '2020-04-26 10:09:22', 'yes', 'yes', 'no'),
(24, 'shirshak_kandel', 'sulav_kns', 'hello shirshak\r\n', '2020-04-27 09:20:31', 'yes', 'yes', 'no'),
(25, 'shirshak_kandel', 'sulav_kns', 'hello bro\r\n', '2020-04-27 09:25:16', 'yes', 'yes', 'no'),
(26, 'sulav_kns', 'shirshak_kandel', 'hello Sulav pro bro\r\n', '2020-04-27 09:26:10', 'yes', 'yes', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opened`, `viewed`) VALUES
(1, 'sulav_kns', 'shirshak_kandel', 'Shirshak Kandel posted on your profile', 'post.php?id=', '2020-04-27 10:07:35', 'no', 'yes'),
(2, 'shirshak_kandel', 'sulav_kns', 'Sulav Kns liked your post', 'post.php?id=33', '2020-04-27 10:26:01', 'no', 'yes'),
(3, 'shirshak_kandel', 'sulav_kns', 'Sulav Kns commented on your post', 'post.php?id=33', '2020-04-27 11:06:27', 'no', 'yes'),
(4, 'laxuman_thapa', 'sulav_kns', 'Sulav Kns posted on your profile', 'post.php?id=', '2020-04-27 11:07:38', 'no', 'no'),
(5, 'shirshak_kandel', 'sulav_kns', 'Sulav Kns liked your post', 'post.php?id=', '2020-04-27 11:26:14', 'no', 'yes'),
(6, 'shirshak_kandel', 'sulav_kns', 'Sulav Kns liked your post', 'post.php?id=33', '2020-04-27 11:53:13', 'no', 'yes'),
(7, 'shirshak_kandel', 'sulav_kns', 'Sulav Kns liked your post', 'post.php?id=32', '2020-04-27 11:53:17', 'no', 'yes'),
(8, 'sulav_kns', 'shirshak_kandel', 'Shirshak Kandel posted on your profile', 'post.php?id=36', '2020-04-27 12:14:05', 'no', 'yes'),
(9, 'shirshak_kandel', 'sulav_kns', 'Sulav Kns commented on your post', 'post.php?id=36', '2020-04-27 12:15:28', 'yes', 'yes'),
(10, 'shirshak_kandel', 'sulav_kns', 'Sulav Kns liked your post', 'post.php?id=36', '2020-04-27 12:15:54', 'yes', 'yes'),
(11, 'sulav_kns', 'samrat_thapa', 'Samrat Thapa liked your post', 'post.php?id=35', '2020-04-30 05:17:16', 'no', 'yes'),
(12, 'shirshak_kandel', 'samrat_thapa', 'Samrat Thapa liked your post', 'post.php?id=32', '2020-04-30 05:17:19', 'no', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`, `image`) VALUES
(1, 'hello', 'shirshak_kandel', 'sulav_kns', '2020-03-09 05:10:37', 'no', 'no', 1, ''),
(2, 'hello', 'shirshak_kandel', '', '2020-03-09 05:11:08', 'no', 'no', 0, ''),
(3, 'hello', 'shirshak_kandel', '0', '2020-03-09 05:15:28', 'no', 'no', 0, ''),
(4, 'hellp\r\n', 'shirshak_kandel', '0', '2020-03-09 05:16:54', 'no', 'yes', 0, ''),
(5, 'hello\r\n', 'shirshak_kandel', '0', '2020-03-09 05:17:47', 'no', 'no', 0, ''),
(6, 'hello\r\n', 'shirshak_kandel', '0', '2020-03-09 14:46:04', 'no', 'no', 0, ''),
(7, 'hi i am shirshak\r\n', 'shirshak_kandel', '0', '2020-03-10 04:06:27', 'no', 'no', 0, ''),
(8, 'hello', 'shirshak_kandel', '0', '2020-03-10 07:37:06', 'no', 'no', 0, ''),
(9, 'Hey my name is laxuman thapa ', 'laxuman_thapa', '0', '2020-03-10 08:31:09', 'no', 'no', 0, ''),
(10, 'Hey my name is laxuman thapa ', 'laxuman_thapa', '0', '2020-03-10 08:31:50', 'no', 'no', 0, ''),
(11, 'https://www.bollymoviereviewz.com/2013/04/bollywood-box-office-collection-2013.html', 'laxuman_thapa', '0', '2020-03-10 08:55:46', 'no', 'no', 0, ''),
(12, 'https://www.bollymoviereviewz.com/2013/04/bollywood-box-office-collection-2013.html', 'laxuman_thapa', '0', '2020-03-10 08:55:50', 'no', 'no', 0, ''),
(13, '#ads #becommerce \r\nMy ads link in hamro bazaar\r\nhttps://hamrobazaar.com/m/useritems.php?user_siteid=2133414', 'shirshak_kandel', '0', '2020-03-12 10:49:47', 'no', 'no', 0, ''),
(14, 'Kalash website link\r\nhttps://kalashagro.com/', 'shirshak_kandel', '0', '2020-03-12 10:51:28', 'no', 'no', 0, ''),
(15, 'Kalash website link\r\nhttps://kalashagro.com/', 'shirshak_kandel', '0', '2020-03-12 10:52:06', 'no', 'no', 0, ''),
(16, 'Great book summary site link--->>> https://shirshakkandel.com.np/', 'shirshak_kandel', '0', '2020-03-12 10:58:17', 'no', 'no', 0, ''),
(17, 'Kalash agro Facebook page \r\nhttps://m.facebook.com/kalashagro.sjt/?tsid=0.07705120558961087&source=result', 'shirshak_kandel', '0', '2020-03-13 04:43:14', 'no', 'no', 0, ''),
(18, 'Shuvakamana communication center Facebook page -->>>>>> https://www.facebook.com/shuvakamanacommunication/', 'shirshak_kandel', '0', '2020-03-13 04:45:23', 'no', 'no', 0, ''),
(19, 'My Facebook profile link ---->>>>>>>\r\nhttps://m.facebook.com/shirshak.kandel?ref=bookmarks', 'shirshak_kandel', '0', '2020-03-13 04:47:57', 'no', 'no', 1, ''),
(20, 'Hi my name is Sulav ', 'sulav_kns', '0', '2020-03-15 03:59:46', 'no', 'no', 2, ''),
(21, 'My YouTube channel link --->>>https://www.youtube.com/channel/UC4IRm1MbV0xiiW0GVDedWcw', 'sulav_kns', '0', '2020-03-15 04:12:40', 'no', 'no', 2, ''),
(22, 'hey Sulav lazy man\r\n', 'shirshak_kandel', '0', '2020-04-19 05:10:06', 'no', 'yes', 0, ''),
(23, 'hey sulav', 'shirshak_kandel', '0', '2020-04-19 05:10:48', 'no', 'yes', 0, ''),
(24, 'hey', 'shirshak_kandel', 'sulav_kns', '2020-04-19 05:38:22', 'no', 'yes', 0, ''),
(25, 'hello', 'shirshak_kandel', 'none', '0000-00-00 00:00:00', 'no', 'yes', 0, ''),
(26, 'hey', 'shirshak_kandel', 'none', '2020-04-19 05:54:51', 'no', 'yes', 0, ''),
(27, 'hi\r\n', 'shirshak_kandel', 'none', '2020-04-19 05:56:57', 'no', 'yes', 0, ''),
(28, 'hi\r\n', 'shirshak_kandel', 'none', '2020-04-19 07:37:18', 'no', 'yes', 0, ''),
(29, 'hey\r\n', 'shirshak_kandel', 'sulav_kns', '2020-04-19 07:41:41', 'no', 'yes', 0, ''),
(30, 'hello\r\n', 'sulav_kns', 'none', '2020-04-21 06:14:43', 'no', 'no', 2, ''),
(31, 'hey\r\n', 'shirshak_kandel', 'none', '2020-04-21 08:28:38', 'no', 'yes', 0, ''),
(32, 'hey\r\n', 'shirshak_kandel', 'none', '2020-04-21 08:29:02', 'no', 'no', 4, ''),
(33, 'This is testing of notificaion entry in database', 'shirshak_kandel', 'sulav_kns', '2020-04-27 10:07:34', 'no', 'no', 1, ''),
(34, 'post in other profile cheacking having post id', 'sulav_kns', 'laxuman_thapa', '2020-04-27 11:07:38', 'no', 'yes', 0, ''),
(35, 'Post id cheacking in notification database', 'sulav_kns', 'shirshak_kandel', '2020-04-27 11:26:13', 'no', 'no', 1, ''),
(36, 'After return id correction cheaking if id is given in database in link table', 'shirshak_kandel', 'sulav_kns', '2020-04-27 12:14:05', 'no', 'no', 1, ''),
(37, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/PvC1A-rzL10\'></iframe><br>', 'shirshak_kandel', 'none', '2020-05-01 12:26:46', 'no', 'yes', 0, ''),
(38, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/PvC1A-rzL10\'></iframe><br>', 'shirshak_kandel', 'none', '2020-05-01 12:29:04', 'no', 'no', 0, ''),
(39, 'This is cheaking of trends topic', 'shirshak_kandel', 'none', '2020-05-01 13:35:51', 'no', 'no', 0, ''),
(40, 'You can upload photo', 'sulav_kns', 'none', '2020-05-01 16:35:14', 'no', 'no', 0, 'assets/images/posts/5eac33a2c26e286696512_491609621506508_3171634366556143616_n.jpg'),
(41, 'You can upload photo', 'shirshak_kandel', 'none', '2020-05-01 16:36:21', 'no', 'no', 0, 'assets/images/posts/5eac33e5cb80ckalash agro.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `trends`
--

CREATE TABLE `trends` (
  `title` varchar(50) NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trends`
--

INSERT INTO `trends` (`title`, `hits`) VALUES
('Cheaking', 1),
('Trends', 1),
('Topic', 1),
('Upload', 3),
('Images', 1),
('Photo', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` int(11) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(1, 'Shirshak', 'Kandel', 'shirshak_kandel', 'Shirshakkandel@gmail.com', 'd09de31c06afaa8f2c87edd17296c219', '2020-03-01', 'assets/images/profile_pics/shirshak_kandel564655a857ac82f0d04b9abfeda81126n.jpeg', 27, 8, 0, ',laxuman_thapa,sulav_kns,samrat_thapa,'),
(4, 'Laxuman', 'Thapa', 'laxuman_thapa', 'laxuman@gmail.com', 'e1dc7ba91f207a015644a75f9ee3b9c7', '2020-03-06', 'assets/images/profile_pics/laxuman_thapaf746cabf7d96ed240adb7ada3e891590n.jpeg', 4, 0, 0, ',sulav_kns,shirshak_kandel,'),
(6, 'Sulav', 'Kns', 'sulav_kns', 'sulav@gmail.com', 'de1698dc71fe65bc9d1ece948dc0892f', '2020-03-15', 'assets/images/profile_pics/sulav_knsaa1005b72d7943a6eecc16a00576a53an.jpeg', 7, 6, 0, '\r\n,laxuman_thapa,shirshak_kandel,'),
(7, 'Samrat', 'Thapa', 'samrat_thapa', 'samrat@gmail.com', '91614fb63fdc19e1fc84948f37962424', '2020-04-30', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 0, ',shirshak_kandel,');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
