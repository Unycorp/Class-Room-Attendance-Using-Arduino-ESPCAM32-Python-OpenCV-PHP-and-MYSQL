SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_id` varchar(30) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `course_code` varchar(10) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `date_id` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `courses` (`id`, `course_id`, `course_name`, `course_code`, `user_id`, `date_id`) VALUES
(1, '1', 'Introduction to calculus', 'mth112', '1', '2021-03-13 11:05:58'),
(2, '2', 'Introduction to Algebra', 'mth110', '1', '2021-03-13 11:06:08'),
(4, '4', 'Introduction to Algebra and trigonometry in the night', 'mth110', '1', '2021-03-13 11:06:08'),
(8, '604cdb36a7627', 'Intro. to physics', 'phy111', '1', '2021-03-13 15:33:10'),
(9, '604cdb9c95084', 'Intro. to chemistry', 'chm111', '1', '2021-03-13 15:34:52'),
(10, '6063bdd1556c2', 'Introduction to plant biology', 'aeb111', '1', '2021-03-31 00:09:53'),
(12, '606b61577cbf8', 'Python Programming', 'CSC404', '606b5d9ac2657', '2021-04-05 19:13:27');

CREATE TABLE `courses_management` (
  `id` int(11) NOT NULL,
  `management_id` varchar(30) DEFAULT NULL,
  `course_id` varchar(30) DEFAULT NULL,
  `camera_id` varchar(30) DEFAULT NULL,
  `user_id` varchar(30) DEFAULT NULL,
  `course_duration` varchar(30) DEFAULT NULL,
  `date_id` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `courses_management` (`id`, `management_id`, `course_id`, `camera_id`, `user_id`, `course_duration`, `date_id`) VALUES
(1, '607aabb608b86', '606b61577cbf8', '1', '606b5d9ac2657', '6', '2021-04-17 09:34:46'),
(2, '607aade7e1100', '606b61577cbf8', '2', '606b5d9ac2657', '5', '2021-04-17 09:44:08'),
(3, '607ab469c6084', '606b61577cbf8', '1', '606b5d9ac2657', '0', '2021-04-17 10:11:53'),
(4, '609be86a9c78f', '606b61577cbf8', '1', '606b5d9ac2657', '4213', '2021-05-12 14:38:34'),
(5, '609fc3e2073ac', '606b61577cbf8', '1', '606b5d9ac2657', '0', '2021-05-15 12:51:46'),
(7, '60a31ec3c21ac', '606b61577cbf8', '1', '606b5d9ac2657', '12', '2021-05-18 01:56:20');

CREATE TABLE `courses_on_progress` (
  `id` int(11) NOT NULL,
  `progress_id` varchar(30) DEFAULT NULL,
  `course_id` varchar(30) DEFAULT NULL,
  `camera_id` varchar(30) DEFAULT NULL,
  `user_id` varchar(30) DEFAULT NULL,
  `date_id` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `course_registration` (
  `id` int(11) NOT NULL,
  `user_id` varchar(30) DEFAULT NULL,
  `student_id` varchar(30) DEFAULT NULL,
  `course_id` varchar(30) DEFAULT NULL,
  `date_id` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `course_registration` (`id`, `user_id`, `student_id`, `course_id`, `date_id`) VALUES
(9, '1', '1', '1', '2021-04-02 20:51:28'),
(10, '1', 'eng1502841', '1', '2021-04-02 20:53:22'),
(11, '1', 'eng1501238', '6063bdd1556c2', '2021-04-04 00:28:06'),
(12, '1', 'eng1501240', '6063bdd1556c2', '2021-04-04 00:28:06'),
(13, '1', 'eng1501236', '6063bdd1556c2', '2021-04-04 00:28:06'),
(14, '1', 'eng1501235', '6063bdd1556c2', '2021-04-04 18:23:26'),
(15, '606b5d9ac2657', 'eng1501240', '606b61577cbf8', '2021-04-05 23:03:12'),
(17, '606b5d9ac2657', 'eng1501239', '606b61577cbf8', '2021-04-05 23:10:12'),
(18, '606b5d9ac2657', 'eng1501241', '606b61577cbf8', '2021-04-06 18:43:16'),
(19, '606b5d9ac2657', 'eng1501238', '606b61577cbf8', '2021-04-06 18:43:16'),
(20, '606b5d9ac2657', 'eng1501237', '606b61577cbf8', '2021-04-06 18:43:16'),
(21, '606b5d9ac2657', 'eng1501236', '606b61577cbf8', '2021-04-06 18:43:17'),
(22, '606b5d9ac2657', 'eng1501235', '606b61577cbf8', '2021-04-06 18:43:17'),
(23, '606b5d9ac2657', 'eng1501234', '606b61577cbf8', '2021-04-06 18:43:17');

CREATE TABLE `lecturers` (
  `id` int(11) NOT NULL,
  `lecturer_id` varchar(30) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `ref_id` varchar(255) DEFAULT NULL,
  `date_id` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `lecturers` (`id`, `lecturer_id`, `name`, `email`, `password`, `position`, `photo`, `ref_id`, `date_id`) VALUES
(5, '606b5ac6cad77', 'Dr. Harris Portal Lodge', 'harris@gmail.com', 'harris1234', 'senior lecturer', '606b5ac6cad77IMG-20171101-WA0002.jpg', NULL, '2021-04-05 18:45:26'),
(6, '606b5cdc796d3', 'Dr Rev Kingsley Ogbomo Itohan', 'itohan@gmail.com', 'itohan1234', 'lecturer 2', '606b5cdc796d3IMG-20170306-WA0001.jpg', NULL, '2021-04-05 18:54:20'),
(7, '606b5d9ac2657', 'marry wine', 'marry@gmail.com', 'marry1234', 'senior lecturer 4', '60a2f6e35e9af6092bdbd56346customer3.jpg', 'ref1234567890', '2021-04-05 18:57:30'),
(8, '60a2f2dba528d', 'Adam Smit', 'jane@gmail.com', 'geuu2280', 'first lecturer', '60a2f2dba528dIMG-20180831-WA0001.jpg', '1234tyui8909', '2021-05-17 22:48:59');

CREATE TABLE `record_attendance` (
  `id` int(11) NOT NULL,
  `record_id` varchar(30) DEFAULT NULL,
  `student_id` varchar(30) DEFAULT NULL,
  `lecturer_id` varchar(30) DEFAULT NULL,
  `course_id` varchar(30) DEFAULT NULL,
  `camera_id` varchar(30) DEFAULT NULL,
  `date_id` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `record_attendance` (`id`, `record_id`, `student_id`, `lecturer_id`, `course_id`, `camera_id`, `date_id`) VALUES
(1, '607aabb608b86', 'eng1501234', '606b5d9ac2657', '606b61577cbf8', '1', '2021-04-17 09:35:52'),
(2, '607aabb608b86', 'eng1501235', '606b5d9ac2657', '606b61577cbf8', '1', '2021-04-17 09:38:17'),
(3, '607aabb608b86', 'eng1501236', '606b5d9ac2657', '606b61577cbf8', '1', '2021-04-17 09:39:21'),
(5, '607aade7e1100', 'eng1501235', '606b5d9ac2657', '606b61577cbf8', '2', '2021-04-17 09:45:20'),
(6, '607aade7e1100', 'eng1501234', '606b5d9ac2657', '606b61577cbf8', '2', '2021-04-17 09:45:43'),
(7, '607aade7e1100', 'eng1501236', '606b5d9ac2657', '606b61577cbf8', '2', '2021-04-17 09:46:55'),
(8, '607ab469c6084', 'eng1501236', '606b5d9ac2657', '606b61577cbf8', '1', '2021-04-17 10:12:09'),
(11, '60a31ec3c21ac', 'eng1501236', '606b5d9ac2657', '606b61577cbf8', '1', '2021-05-18 02:02:02'),
(12, '60a31ec3c21ac', 'eng1501234', '606b5d9ac2657', '606b61577cbf8', '1', '2021-05-18 02:03:36'),
(13, '60a31ec3c21ac', 'eng1501235', '606b5d9ac2657', '606b61577cbf8', '1', '2021-05-18 02:03:44'),
(14, '60a31ec3c21ac', 'eng1501237', '606b5d9ac2657', '606b61577cbf8', '1', '2021-05-18 02:04:01'),
(15, '60a31ec3c21ac', 'eng1501239', '606b5d9ac2657', '606b61577cbf8', '1', '2021-05-18 02:04:41'),
(16, '60a31ec3c21ac', 'eng1501240', '606b5d9ac2657', '606b61577cbf8', '1', '2021-05-18 02:05:11'),
(17, '60a31ec3c21ac', 'eng1501241', '606b5d9ac2657', '606b61577cbf8', '1', '2021-05-18 02:05:40'),
(18, '60a31ec3c21ac', 'eng1501238', '606b5d9ac2657', '606b61577cbf8', '1', '2021-05-18 02:08:21');

CREATE TABLE `record_attendance_history` (
  `id` int(11) NOT NULL,
  `record_id` varchar(30) DEFAULT NULL,
  `student_id` varchar(30) DEFAULT NULL,
  `lecturer_id` varchar(30) DEFAULT NULL,
  `course_id` varchar(30) DEFAULT NULL,
  `time_in` timestamp NOT NULL DEFAULT current_timestamp(),
  `time_out` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `record_attendance_history` (`id`, `record_id`, `student_id`, `lecturer_id`, `course_id`, `time_in`, `time_out`) VALUES
(1, '607aabb608b86', 'eng1501234', '606b5d9ac2657', '606b61577cbf8', '2021-04-17 09:35:52', '2021-04-17 09:40:46'),
(2, '607aabb608b86', 'eng1501235', '606b5d9ac2657', '606b61577cbf8', '2021-04-17 09:38:17', '2021-04-17 09:40:46'),
(3, '607aabb608b86', 'eng1501236', '606b5d9ac2657', '606b61577cbf8', '2021-04-17 09:39:21', '2021-04-17 09:40:46'),
(5, '607aade7e1100', 'eng1501235', '606b5d9ac2657', '606b61577cbf8', '2021-04-17 09:45:20', '2021-04-17 09:49:00'),
(6, '607aade7e1100', 'eng1501234', '606b5d9ac2657', '606b61577cbf8', '2021-04-17 09:45:43', '2021-04-17 09:49:00'),
(7, '607aade7e1100', 'eng1501236', '606b5d9ac2657', '606b61577cbf8', '2021-04-17 09:46:55', '2021-04-17 09:49:00'),
(8, '607ab469c6084', 'eng1501236', '606b5d9ac2657', '606b61577cbf8', '2021-04-17 10:12:09', '2021-04-17 10:12:21'),
(10, '60a31ec3c21ac', 'eng1501236', '606b5d9ac2657', '606b61577cbf8', '2021-05-18 02:02:02', '2021-05-18 02:08:34'),
(11, '60a31ec3c21ac', 'eng1501234', '606b5d9ac2657', '606b61577cbf8', '2021-05-18 02:03:36', '2021-05-18 02:08:34'),
(12, '60a31ec3c21ac', 'eng1501235', '606b5d9ac2657', '606b61577cbf8', '2021-05-18 02:03:44', '2021-05-18 02:08:34'),
(13, '60a31ec3c21ac', 'eng1501237', '606b5d9ac2657', '606b61577cbf8', '2021-05-18 02:04:01', '2021-05-18 02:08:34'),
(14, '60a31ec3c21ac', 'eng1501239', '606b5d9ac2657', '606b61577cbf8', '2021-05-18 02:04:41', '2021-05-18 02:08:34'),
(15, '60a31ec3c21ac', 'eng1501240', '606b5d9ac2657', '606b61577cbf8', '2021-05-18 02:05:11', '2021-05-18 02:08:34'),
(16, '60a31ec3c21ac', 'eng1501241', '606b5d9ac2657', '606b61577cbf8', '2021-05-18 02:05:40', '2021-05-18 02:08:34'),
(17, '60a31ec3c21ac', 'eng1501238', '606b5d9ac2657', '606b61577cbf8', '2021-05-18 02:08:21', '2021-05-18 02:08:34');

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `student_id` varchar(30) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `photo` varchar(255) NOT NULL,
  `date_id` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `students` (`id`, `student_id`, `name`, `photo`, `date_id`) VALUES
(9, 'eng1501234', 'Adam Smit', '6069062f6c878sad.jpg', '2021-04-04 00:12:39'),
(10, 'eng1501235', 'Marry Jane', '6069066df1ba1happy.jpg', '2021-04-04 00:21:01'),
(11, 'eng1501236', 'Leonardo Augustus', '606906c5288d3angry.jpg', '2021-04-04 00:22:29'),
(12, 'eng1501237', 'Benedita Eghenti', '606906f676a20neutral.jpg', '2021-04-04 00:23:18'),
(13, 'eng1501238', 'David Luiz', '6069075ba6ebcraj1.png', '2021-04-04 00:24:59'),
(14, 'eng1501239', 'Lupita Samata', '606907785d1a6bernadette3.png', '2021-04-04 00:25:28'),
(15, 'eng1501240', 'Amy April', '60690790d1e66amy1.png', '2021-04-04 00:25:52'),
(16, 'eng1501241', 'Samuel Ajayi Crada', '606907c29d20dsheldon2.png', '2021-04-04 00:26:42');

CREATE TABLE `waiting_list` (
  `id` int(11) NOT NULL,
  `waiting_list_id` varchar(30) DEFAULT NULL,
  `ref_id` varchar(255) DEFAULT NULL,
  `lecturer_id` varchar(30) DEFAULT NULL,
  `camera_id` varchar(30) DEFAULT NULL,
  `course_id` varchar(30) DEFAULT NULL,
  `date_id` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `courses_management`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `courses_on_progress`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `course_registration`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `lecturers`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `record_attendance`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `record_attendance_history`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `waiting_list`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

ALTER TABLE `courses_management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

ALTER TABLE `courses_on_progress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

ALTER TABLE `course_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

ALTER TABLE `lecturers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `record_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

ALTER TABLE `record_attendance_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

ALTER TABLE `waiting_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
