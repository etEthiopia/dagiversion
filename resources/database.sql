-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2018 at 08:57 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `entertaiment_ethiopia`
--
CREATE DATABASE IF NOT EXISTS `entertaiment_ethiopia` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `entertaiment_ethiopia`;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `catagory` varchar(255) NOT NULL,
  `Image` text NOT NULL,
  `content` varchar(766) NOT NULL,
  `FullContent` text NOT NULL,
  `importance` int(11) NOT NULL,
  `source` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `catagory`, `Image`, `content`, `FullContent`, `importance`, `source`, `date`) VALUES
(2, 'Blue News', 'Movies\r\n', 'images/NEWS4.jpg', 'This is the blue News that talks about with the category movies.', 'Our point of view needs careful explanation as it is different from some of our peers’. Firstly, to push the physics analogy one more time, even though relativistic mechanics seems to rule the universe, in the classroom one might prefer doing classical physics before relativity theory. Shaders, which are the programmable parts of the modern OpenGL pipeline, add great flexibility and power. But, so too, do they add a fair bit of complexity – even a cursory comparison of our very first program square.cpp from Chapter 2 with its equivalent in OpenGL 4.3, squareShaderized.cpp complemented with a vertex and a fragment shader in Chapter 20, should convince the reader of this. Consider more carefully, say, a vertex shader. It must compute the position coordinates of a vertex, taking into account all transformations, both modelview – such as translation, rotation, scaling and viewing – and projection. In the classical fixed-function pipeline, the user can simply issue commands such as glTranslatef(), glRotatef(), etc., leaving to OpenGL actual computation of the transformed coordinates; not so for the programmable pipeline, where the reader must write herself all the needed matrix operations in the vertex shader. We firmly believe that the new student is best served learning first how to transform objects according to an understanding of simply how a scene comes together physically (e.g., a ball falls to the ground, a robot arm bends at the elbow, etc.) with the help of ready-to-use commands like glTranslatef(), and, only later, the actual mathematics behind them. Such consideration applies as well to other automatic services of the fixed-function pipeline which allow the student to focus on phenomena, disregarding initially implementation. For example, as an instructor, I would much prefer to teach first how diffuse light lends three-dimensionality, specular light highlights, and so on, gently motivating Phong’s lighting 3D standard supported by almost all the newer browsers, are syntax-wise Preface very close to OpenGL 4.3, so assimilation of the latter means ability to code 3D graphics on multiple platforms.', 4, 'The blue reporter', '2018-06-16'),
(4, 'The Red News', 'Music', 'images/NEWS3.jpg', 'This is the red news', 'Our point of view needs careful explanation as it is different from some of our peers’. Firstly, to push the physics analogy one more time, even though relativistic mechanics seems to rule the universe, in the classroom one might prefer doing classical physics before relativity theory. Shaders, which are the programmable parts of the modern OpenGL pipeline, add great flexibility and power. But, so too, do they add a fair bit of complexity – even a cursory comparison of our very first program square.cpp from Chapter 2 with its equivalent in OpenGL 4.3, squareShaderized.cpp complemented with a vertex and a fragment shader in Chapter 20, should convince the reader of this. Consider more carefully, say, a vertex shader. It must compute the position coordinates of a vertex, taking into account all transformations, both modelview – such as translation, rotation, scaling and viewing – and projection. In the classical fixed-function pipeline, the user can simply issue commands such as glTranslatef(), glRotatef(), etc., leaving to OpenGL actual computation of the transformed coordinates; not so for the programmable pipeline, where the reader must write herself all the needed matrix operations in the vertex shader. We firmly believe that the new student is best served learning first how to transform objects according to an understanding of simply how a scene comes together physically (e.g., a ball falls to the ground, a robot arm bends at the elbow, etc.) with the help of ready-to-use commands like glTranslatef(), and, only later, the actual mathematics behind them. Such consideration applies as well to other automatic services of the fixed-function pipeline which allow the student to focus on phenomena, disregarding initially implementation. For example, as an instructor, I would much prefer to teach first how diffuse light lends three-dimensionality, specular light highlights, and so on, gently motivating Phong’s lighting 3D standard supported by almost all the newer browsers, are syntax-wise Preface very close to OpenGL 4.3, so assimilation of the latter means ability to code 3D graphics on multiple platforms.', 1, 'The Red reporter', '2018-06-16'),
(5, 'The Pink News', 'Music', 'images/NEWS5.jpg', 'This is the pink news', 'Our point of view needs careful explanation as it is different from some of our peers’. Firstly, to push the physics analogy one more time, even though relativistic mechanics seems to rule the universe, in the classroom one might prefer doing classical physics before relativity theory. Shaders, which are the programmable parts of the modern OpenGL pipeline, add great flexibility and power. But, so too, do they add a fair bit of complexity – even a cursory comparison of our very first program square.cpp from Chapter 2 with its equivalent in OpenGL 4.3, squareShaderized.cpp complemented with a vertex and a fragment shader in Chapter 20, should convince the reader of this. Consider more carefully, say, a vertex shader. It must compute the position coordinates of a vertex, taking into account all transformations, both modelview – such as translation, rotation, scaling and viewing – and projection. In the classical fixed-function pipeline, the user can simply issue commands such as glTranslatef(), glRotatef(), etc., leaving to OpenGL actual computation of the transformed coordinates; not so for the programmable pipeline, where the reader must write herself all the needed matrix operations in the vertex shader. We firmly believe that the new student is best served learning first how to transform objects according to an understanding of simply how a scene comes together physically (e.g., a ball falls to the ground, a robot arm bends at the elbow, etc.) with the help of ready-to-use commands like glTranslatef(), and, only later, the actual mathematics behind them. Such consideration applies as well to other automatic services of the fixed-function pipeline which allow the student to focus on phenomena, disregarding initially implementation. For example, as an instructor, I would much prefer to teach first how diffuse light lends three-dimensionality, specular light highlights, and so on, gently motivating Phong’s lighting 3D standard supported by almost all the newer browsers, are syntax-wise Preface very close to OpenGL 4.3, so assimilation of the latter means ability to code 3D graphics on multiple platforms.', 3, 'www.facebook.com/dagireporter', '2018-06-16'),
(8, 'The Black News', 'News', 'images/NEWS1.jpg', 'This is the general black news with type like normal news', 'Our point of view needs careful explanation as it is different from some of our peers’. Firstly, to push the physics analogy one more time, even though relativistic mechanics seems to rule the universe, in the classroom one might prefer doing classical physics before relativity theory. Shaders, which are the programmable parts of the modern OpenGL pipeline, add great flexibility and power. But, so too, do they add a fair bit of complexity – even a cursory comparison of our very first program square.cpp from Chapter 2 with its equivalent in OpenGL 4.3, squareShaderized.cpp complemented with a vertex and a fragment shader in Chapter 20, should convince the reader of this. Consider more carefully, say, a vertex shader. It must compute the position coordinates of a vertex, taking into account all transformations, both modelview – such as translation, rotation, scaling and viewing – and projection. In the classical fixed-function pipeline, the user can simply issue commands such as glTranslatef(), glRotatef(), etc., leaving to OpenGL actual computation of the transformed coordinates; not so for the programmable pipeline, where the reader must write herself all the needed matrix operations in the vertex shader. We firmly believe that the new student is best served learning first how to transform objects according to an understanding of simply how a scene comes together physically (e.g., a ball falls to the ground, a robot arm bends at the elbow, etc.) with the help of ready-to-use commands like glTranslatef(), and, only later, the actual mathematics behind them. Such consideration applies as well to other automatic services of the fixed-function pipeline which allow the student to focus on phenomena, disregarding initially implementation. For example, as an instructor, I would much prefer to teach first how diffuse light lends three-dimensionality, specular light highlights, and so on, gently motivating Phong’s lighting 3D standard supported by almost all the newer browsers, are syntax-wise Preface very close to OpenGL 4.3, so assimilation of the latter means ability to code 3D graphics on multiple platforms.', 5, 'Ethiopian news agency', '2018-06-16'),
(9, 'The Green News', 'Cinema', 'images/NEWS1.jpg', 'This is the cinema news black news with type like normal news', 'Our point of view needs careful explanation as it is different from some of our peers’. Firstly, to push the physics analogy one more time, even though relativistic mechanics seems to rule the universe, in the classroom one might prefer doing classical physics before relativity theory. Shaders, which are the programmable parts of the modern OpenGL pipeline, add great flexibility and power. But, so too, do they add a fair bit of complexity – even a cursory comparison of our very first program square.cpp from Chapter 2 with its equivalent in OpenGL 4.3, squareShaderized.cpp complemented with a vertex and a fragment shader in Chapter 20, should convince the reader of this. Consider more carefully, say, a vertex shader. It must compute the position coordinates of a vertex, taking into account all transformations, both modelview – such as translation, rotation, scaling and viewing – and projection. In the classical fixed-function pipeline, the user can simply issue commands such as glTranslatef(), glRotatef(), etc., leaving to OpenGL actual computation of the transformed coordinates; not so for the programmable pipeline, where the reader must write herself all the needed matrix operations in the vertex shader. We firmly believe that the new student is best served learning first how to transform objects according to an understanding of simply how a scene comes together physically (e.g., a ball falls to the ground, a robot arm bends at the elbow, etc.) with the help of ready-to-use commands like glTranslatef(), and, only later, the actual mathematics behind them. Such consideration applies as well to other automatic services of the fixed-function pipeline which allow the student to focus on phenomena, disregarding initially implementation. For example, as an instructor, I would much prefer to teach first how diffuse light lends three-dimensionality, specular light highlights, and so on, gently motivating Phong’s lighting 3D standard supported by almost all the newer browsers, are syntax-wise Preface very close to OpenGL 4.3, so assimilation of the latter means ability to code 3D graphics on multiple platforms.', 4, 'EBC', '2018-06-16');

-- --------------------------------------------------------

--
-- Table structure for table `cinemas`
--

CREATE TABLE `cinemas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cinemas`
--

INSERT INTO `cinemas` (`id`, `name`, `location`) VALUES
(0, 'Sebastopol', 'Meskel Square'),
(1, 'Alem', 'Bole');

-- --------------------------------------------------------

--
-- Table structure for table `cinema_reprsentatives`
--

CREATE TABLE `cinema_reprsentatives` (
  `username` varchar(255) NOT NULL,
  `representing_cinema` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cinema_reprsentatives`
--

INSERT INTO `cinema_reprsentatives` (`username`, `representing_cinema`) VALUES
('dawit', 1);

-- --------------------------------------------------------

--
-- Table structure for table `forums`
--

CREATE TABLE `forums` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `catagory` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forums`
--

INSERT INTO `forums` (`id`, `title`, `catagory`) VALUES
(1, 'The Performance of Alemayehu ion Denglu...', 'Movies');

-- --------------------------------------------------------

--
-- Table structure for table `fourm_thoughts`
--

CREATE TABLE `fourm_thoughts` (
  `fourm_id` int(11) NOT NULL,
  `comment` varchar(766) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `movie_title` varchar(255) NOT NULL,
  `length` double NOT NULL,
  `release_date` date NOT NULL,
  `producer` varchar(255) NOT NULL,
  `cast` text NOT NULL,
  `rate` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `movie_title`, `length`, `release_date`, `producer`, `cast`, `rate`) VALUES
(1, 'rtg', 45, '2018-06-16', '', 'Alemayehu Birhane , Dagmawi Habtamu', 2),
(2, 'ad', 45, '2018-06-16', 'asdg', 'asdg asd ,\r\nadsdag jhf', NULL),
(3, 'sfg', 0, '2018-06-16', 'sfg', 'sfg', NULL),
(4, 'TEST FROm PHP', 45, '2018-06-16', 'Dawit Yonas', 'Amf fsd ,f df,adfb', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `movie_schedules`
--

CREATE TABLE `movie_schedules` (
  `movie_id` int(11) NOT NULL,
  `cinema_id` int(11) NOT NULL,
  `schedule_day` varchar(10) NOT NULL,
  `schedule_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_schedules`
--

INSERT INTO `movie_schedules` (`movie_id`, `cinema_id`, `schedule_day`, `schedule_time`) VALUES
(2, 1, 'Friday', '12:00:00'),
(3, 0, 'Monday', '08:00:00'),
(3, 1, 'Tuesday', '10:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `musics`
--

CREATE TABLE `musics` (
  `id` int(11) NOT NULL,
  `music_title` varchar(255) NOT NULL,
  `singer` varchar(255) NOT NULL,
  `length` double NOT NULL,
  `release_date` date NOT NULL,
  `producer` varchar(255) NOT NULL,
  `rate` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `musics`
--

INSERT INTO `musics` (`id`, `music_title`, `singer`, `length`, `release_date`, `producer`, `rate`) VALUES
(1, 'Zenach', 'TeddYo', 4.05, '2018-06-04', 'Minew Shewa', 5),
(2, 'TEST FROm PHP', 'asdg', 4, '2018-06-16', 'Dawit Yonas', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `e-mail` varchar(255) NOT NULL,
  `userType` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`first_name`, `last_name`, `username`, `password`, `e-mail`, `userType`) VALUES
('Daniel', 'Geremew', 'daniel', 'daniel123', 'daniel@gmail.com', 'user'),
('Dawit', 'Yonas', 'dawit', 'test123', 'dawityonas010@gmail.com', 'cinemaRep');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cinemas`
--
ALTER TABLE `cinemas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cinema_reprsentatives`
--
ALTER TABLE `cinema_reprsentatives`
  ADD PRIMARY KEY (`username`,`representing_cinema`),
  ADD KEY `representing_cinema` (`representing_cinema`) USING BTREE;

--
-- Indexes for table `forums`
--
ALTER TABLE `forums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fourm_thoughts`
--
ALTER TABLE `fourm_thoughts`
  ADD PRIMARY KEY (`fourm_id`,`comment`,`username`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_schedules`
--
ALTER TABLE `movie_schedules`
  ADD PRIMARY KEY (`movie_id`,`cinema_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `musics`
--
ALTER TABLE `musics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `forums`
--
ALTER TABLE `forums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `musics`
--
ALTER TABLE `musics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cinema_reprsentatives`
--
ALTER TABLE `cinema_reprsentatives`
  ADD CONSTRAINT `cinema_reprsentatives_ibfk_1` FOREIGN KEY (`representing_cinema`) REFERENCES `cinemas` (`id`),
  ADD CONSTRAINT `cinema_reprsentatives_ibfk_2` FOREIGN KEY (`username`) REFERENCES `users` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
