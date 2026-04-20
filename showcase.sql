-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2025 at 06:05 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `showcase`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `date_time` datetime NOT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `platform` varchar(100) DEFAULT NULL,
  `registration_link` varchar(255) DEFAULT NULL,
  `host_name` varchar(255) DEFAULT NULL,
  `is_paid` tinyint(1) DEFAULT 0,
  `certificate_available` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `user_id`, `title`, `description`, `date_time`, `duration`, `image`, `platform`, `registration_link`, `host_name`, `is_paid`, `certificate_available`, `created_at`) VALUES
(5, 1, 'AI & Innovation Conference 2025', 'Join us for a dynamic and insightful event exploring the future of Artificial Intelligence, Machine Learning, and technological innovation. Hear from industry leaders, participate in hands-on workshops, and network with tech enthusiasts.', '2025-08-13 10:00:00', '6.5 hours', '68910076c0377_eventbanner.webp', 'Zoom', 'https://example.com/ai-event-register', 'Tech Innovators Bangladesh', 0, 1, '2025-08-04 18:48:22'),
(6, 1, 'Creative Design Workshop 2025', 'Unlock your inner artist in this hands-on workshop focused on graphic design, branding, and UI/UX fundamentals. Ideal for beginners and professionals looking to sharpen their design thinking skills.', '2025-07-04 16:00:00', '3.5 hours', '689101fce69dd_banner.webp', 'Online (Google Meet)', 'https://www.youtube.com/', 'DesignHub Studio', 1, 1, '2025-08-04 18:54:52'),
(7, 2, 'Live Video Editing Seminar', 'Want to turn your boring video clips into an amazing story? Using the right color palette and tools, you can produce a piece of art worthy of compliments. In fact, appealing videos do more than what you think, they create a long-lasting impact on the audience and convince customers to buy a product. For this reason, professional editors are always in demand in the marketing sector. Enroll in this course to be an expert editor.', '2025-08-15 10:43:00', '3 hours', '68958128170e2_course_1668488066.webp', 'Online (Google Meet)', 'https://example.com/ai-event-register', 'DesignHub Studio', 0, 1, '2025-08-08 04:46:32');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `age_limit` varchar(50) DEFAULT NULL,
  `salary` varchar(100) DEFAULT NULL,
  `experience` varchar(100) DEFAULT NULL,
  `published` date DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `education` text DEFAULT NULL,
  `requirements` text DEFAULT NULL,
  `responsibilities` text DEFAULT NULL,
  `skills` text DEFAULT NULL,
  `employment_status` varchar(50) DEFAULT NULL,
  `apply_procedure` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `user_id`, `job_title`, `company_name`, `location`, `age_limit`, `salary`, `experience`, `published`, `deadline`, `description`, `education`, `requirements`, `responsibilities`, `skills`, `employment_status`, `apply_procedure`, `created_at`) VALUES
(3, 1, 'Software Engineer', 'Tech Solutions Ltd.', 'Dhaka, Bangladesh', '25-35 years', '40,000 - 60,000 BDT per month', 'Minimum 3 years in software development', '2025-08-05', '2025-08-31', 'We are looking for a skilled Software Engineer to develop high-quality applications and collaborate with cross-functional teams.', 'Bachelor’s degree in Computer Science or related field', 'Proficient in PHP, JavaScript, and MySQL. Strong problem-solving skills.', 'Develop and maintain web applications, write clean code, and participate in code reviews.', 'PHP, JavaScript, MySQL, Laravel, Git, REST APIs', 'Full-time', 'Please send your resume and cover letter to careers@techsolutions.com with the subject \"Software Engineer Application\".', '2025-08-04 19:07:04'),
(4, 1, 'Junior Web Developer', 'BrightCode Solutions', 'Dhaka, Bangladesh', '22-30 years', '25,000 – 35,000 BDT per month', 'Minimum 1 year in web development', '2025-08-08', '2025-08-25', 'We are seeking a passionate Junior Web Developer to join our growing tech team. You will work on live projects and get hands-on experience with front-end and back-end technologies.', 'BSc in Computer Science or relevant field from any reputed university.', 'Basic knowledge of HTML, CSS, JavaScript, and PHP\r\nFamiliarity with MySQL or similar databases\r\nAbility to learn quickly and adapt to new technologies\r\nTeam player with good communication skills', 'Assist in designing and developing dynamic web applications\r\nWrite clean, maintainable code\r\nFix bugs and optimize performance\r\nCollaborate with the senior developers and UI/UX team', 'HTML, CSS, JavaScript, PHP, MySQL, Git, Bootstrap', 'Full-time', 'Send your updated CV to jobs@brightcode.com with the subject line “Application for Junior Web Developer” or apply through our careers portal at www.brightcode.com/careers.', '2025-08-04 19:18:22'),
(5, 2, 'Video Editor and Graphics Deginer', 'Datascape IT Limited', 'Dhaka, Bangladesh', 'no limit', '20k - 25K', '• 2–4 years of hands-on experience in graphics design, video editing, and motion design. • Portfolio', '2025-08-08', '2025-09-08', 'We are seeking a skilled and creative Video Editor to join our team and support the visual storytelling of our IT products, services, and brand initiatives. The ideal candidate will be responsible for producing high-quality video content that aligns with our marketing strategies, training materials, product demonstrations, and internal communications. This role requires a strong understanding of visual aesthetics, technical editing skills, and the ability to translate complex IT concepts into engaging and informative visual content.\r\n\r\nThe Video Editor will collaborate closely with the marketing, design, and product teams to create compelling videos for digital platforms, including websites, social media, presentations, and corporate communications.', 'Bachelor’s degree in Fine Arts, Media Studies, Animation, Graphic Design, or a related field.\r\n• Diploma or short course certification in video editing or motion graphics is a plus.', 'Software Knowledge:\r\n• Proficient in Adobe After Effects, Premiere Pro, Photoshop & Illustrator.', 'Creative & Conceptual Skills:\r\n• Strong sense of storytelling, pacing, and transitions.\r\n• Ability to create engaging motion graphics aligned with brand guidelines.\r\n• Good understanding of color grading, typography, and visual aesthetics.', '• Ability to design and animate visual elements, including text, icons, and logos for dynamic content.\r\n• Skilled in editing footage with proper pacing, transitions, and storytelling structure.\r\n• Ability to create or manipulate images for use in video projects, including background removal and layering.\r\n• Creating clean, scalable assets suitable for motion use, such as logos, icons, or illustrations.', 'Full-time', 'Interested candidates are requested to send their CV to marketing@miepathways.com', '2025-08-08 04:34:53');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `sent_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `file_path` varchar(255) DEFAULT NULL,
  `file_type` enum('image','video','document','audio') DEFAULT NULL,
  `STATUS` enum('unread','read') DEFAULT 'unread'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender_id`, `receiver_id`, `message`, `sent_at`, `file_path`, `file_type`, `STATUS`) VALUES
(9, 1, 26, 'Hi Tomalika', '2025-08-06 13:56:49', NULL, NULL, 'unread'),
(10, 1, 2, 'hello munna how are you?', '2025-08-06 14:08:22', NULL, NULL, 'read'),
(11, 2, 1, 'I\'m fine what about you?', '2025-08-06 14:08:44', NULL, NULL, 'read'),
(12, 1, 2, 'Okay', '2025-08-06 15:55:44', NULL, NULL, 'read'),
(13, 1, 2, '', '2025-08-06 16:10:32', 'uploads/1754496632_68937e78843a3.jpg', 'image', 'read'),
(14, 2, 1, 'okay', '2025-08-06 16:11:34', NULL, NULL, 'read'),
(15, 2, 1, 'hi', '2025-08-06 16:23:42', NULL, NULL, 'read');

-- --------------------------------------------------------

--
-- Table structure for table `q&a`
--

CREATE TABLE `q&a` (
  `id` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `question` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skill_posts`
--

CREATE TABLE `skill_posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `video_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tools_used` varchar(255) DEFAULT NULL,
  `MODE` enum('Online','Offline') DEFAULT 'Online',
  `duration` varchar(100) DEFAULT NULL,
  `others` text DEFAULT NULL,
  `course_outline` text DEFAULT NULL,
  `weekly_class` varchar(255) DEFAULT NULL,
  `course_type` enum('free','paid') DEFAULT 'free'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skill_posts`
--

INSERT INTO `skill_posts` (`id`, `user_id`, `title`, `description`, `category`, `image_path`, `video_path`, `created_at`, `tools_used`, `MODE`, `duration`, `others`, `course_outline`, `weekly_class`, `course_type`) VALUES
(111, 1, 'Web Development', 'I\'m good at \"Web Development\". I want to share my small knowledge about basic web development. If anyone interest to learn web development please contact with me.', 'Web Development', 'profileSystem/uploads/1754331305_1753446505_web Development.webp', '', '2025-08-04 18:15:05', 'VS Code, XAMPP, Extentions.', 'Online', '15-20 (30-40 hours)', NULL, 'Web Development Weekly Breakdown\r\nWeek 1: HTML Basics\r\nWeek 2: CSS Basics\r\nWeek 3: CSS Layout & Responsive Design (Flexbox, Grid, Media Queries)\r\nWeek 4: JavaScript Basics\r\nWeek 5: Advanced JavaScript (ES6, DOM, Events)\r\nWeek 6: Git & GitHub\r\nWeek 7: React.js Basics\r\nWeek 8: React.js Projects (API, State, Props)\r\nWeek 9: Backend Basics (PHP/MySQL or Node.js)\r\nWeek 10: CRUD Operations\r\nWeek 11: Authentication & File Upload\r\nWeek 12: Final Project & Deployment', '2 days per week (Sunday, Monday)', 'free'),
(112, 1, 'Build Web site', 'Here I want to build some websites like e-commerce, personal portfolio, simple task management website etc. If anyone interest, contact with me.', 'Web Development', 'profileSystem/uploads/1754331957_1754331305_1753446505_web Development.webp', '', '2025-08-04 18:25:57', 'Code editor: VS Code Design: Figma  Deployment: GitHub Pages  Database: phpMyAdmin', 'Online', '5-8 class (10-16 hours)', NULL, 'Every week have two online class. So, we need 3 to 4 weeks.', '2 days per week (Sunday, Monday)', 'free'),
(113, 2, 'Professional Video Editing', 'I specialize in creative and professional video editing for various platforms including YouTube, Instagram, TikTok, commercials, and personal projects.\r\nWith a keen eye for detail and storytelling, I ensure every frame delivers the right emotion and impact.', 'Video Editing', 'profileSystem/uploads/1754624663_videoEditing.webp', '', '2025-08-08 03:44:23', 'Filmora X', 'Online', '10-12 class (20-22 hours)', NULL, 'Week 1 – Introduction to Video Editing\r\nWeek 2 – Importing & Organizing Media\r\nWeek 3 – Basic Editing Tools\r\nWeek 4 – Transitions & Basic Effects\r\nWeek 5 – Text & Titles\r\nWeek 6 – Audio Editing & Music\r\nWeek 7 – Color Correction & Grading\r\nWeek 8 – Motion Graphics & Animations\r\nWeek 9 – Working with Green Screen\r\n\r\nWeek 10 – Advanced Editing Techniques\r\nWeek 11 – Exporting & File Management\r\nWeek 12 – Final Project & Portfolio', '2 days per week (Sunday, Monday)', 'paid'),
(114, 2, 'Content Writing', 'I\'m a good content writer. I want to share my knowledge for you. If you interest please contact me. I will try my best to share my knowledge.', 'Content Writing', 'profileSystem/uploads/1754625418_image.webp', '', '2025-08-08 03:56:58', 'Grammarly( Account)', 'Online', '10-12 class (20-22 hours)', NULL, 'Week 1 – Introduction to Content Writing\r\nWeek 2 – Understanding Your Audience\r\nWeek 3 – Writing Basics & Grammar\r\nWeek 4 – Crafting Catchy Headlines\r\nWeek 5 – Blog Writing Techniques\r\nWeek 6 – SEO Basics for Writers\r\nWeek 7 – Storytelling in Content\r\nWeek 8 – Writing for Social Media\r\nWeek 9 – Copywriting Fundamentals\r\nWeek 10 – Editing & Proofreading Skills\r\nWeek 11 – Creating a Content Strategy\r\nWeek 12 – Final Writing Project & Portfolio', '2 days per week (Tuesday, Friday)', 'free');

-- --------------------------------------------------------

--
-- Table structure for table `skill_post_likes`
--

CREATE TABLE `skill_post_likes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skill_post_likes`
--

INSERT INTO `skill_post_likes` (`id`, `user_id`, `post_id`, `created_at`) VALUES
(24, 2, 111, '2025-08-08 03:00:12'),
(25, 2, 112, '2025-08-08 03:00:17'),
(26, 1, 114, '2025-08-08 07:53:49'),
(28, 1, 113, '2025-08-08 07:54:49'),
(29, 1, 112, '2025-08-08 07:55:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `cover_photo` varchar(255) DEFAULT 'Images/default_cover.jpg',
  `profile_picture` varchar(255) DEFAULT 'Images/default_profile.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `cover_photo`, `profile_picture`) VALUES
(1, 'Maruf Sikder', 'marufsikder5051@gmail.com', '$2y$10$//VIRSt/edYaaxmLj8wlMeEPJbfDrPMLNCemT2/GphqdZjo88666i', 'uploads/1754330197_IMG_3323.JPG', 'uploads/1754330246_IMG_1355.JPG'),
(2, 'Munna Biswas ', 'munna@gmail.com', '$2y$10$3/aCE.GowF1aOQ1ELL852e.8N4zkMvNfVZipGdvCBcgH6w2N2YwlS', 'uploads/1754494351_munna.jpg', 'uploads/1754494346_munna.jpg'),
(26, 'Tomalika Sarker', 'tomalika5341@gmail.com', '$2y$10$uKkYFQFXO95iuJ5ETcAAA.kslnWTGHWFkORWxWlar3pjTLfpv/reS', 'uploads/1754494472_toma_cover.jpg', 'uploads/1754494467_toma.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `section` enum('experience','skill','education') DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `organization_or_institute` varchar(255) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `section`, `title`, `organization_or_institute`, `duration`, `created_at`) VALUES
(35, 1, 'experience', 'Web Developer', 'X international organization ', '2023 - Present', '2025-08-04 17:58:16'),
(36, 1, 'skill', 'Web Development', '', 'High', '2025-08-04 17:58:43'),
(37, 1, 'skill', 'UI/UX Design', '', 'Medium', '2025-08-04 17:59:05'),
(38, 1, 'education', 'HSC', 'BMPSC', '2020', '2025-08-04 17:59:17'),
(39, 1, 'education', 'B.Sc. Honours', 'Daffodil International University', '2022 - on going', '2025-08-04 18:00:27'),
(40, 2, 'experience', 'Web Developer', 'BM international organization ', '2023 - Present', '2025-08-08 02:56:13'),
(41, 2, 'skill', 'Video Editing', '', 'High', '2025-08-08 02:56:45'),
(42, 2, 'education', 'HSC', 'Qadirabad Cantonment Sapper College ', '2020', '2025-08-08 02:57:08'),
(43, 2, 'education', 'SSC', 'Saint Louis High School', '2018', '2025-08-08 08:04:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `receiver_id` (`receiver_id`);

--
-- Indexes for table `q&a`
--
ALTER TABLE `q&a`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skill_posts`
--
ALTER TABLE `skill_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `skill_post_likes`
--
ALTER TABLE `skill_post_likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `q&a`
--
ALTER TABLE `q&a`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `skill_posts`
--
ALTER TABLE `skill_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `skill_post_likes`
--
ALTER TABLE `skill_post_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `skill_posts`
--
ALTER TABLE `skill_posts`
  ADD CONSTRAINT `skill_posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
