-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2020 at 04:25 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `songify`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `ALBUM_id` int(20) NOT NULL,
  `NAME` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`ALBUM_id`, `NAME`) VALUES
(1, 'Student of the Year'),
(2, '3 idiots'),
(3, 'Street Dancer 3D'),
(4, 'Vicky Donor'),
(5, 'PK'),
(6, 'Munna Bhai M.B.B.S.'),
(7, 'Sanju'),
(8, 'Yaad Piya ki aane lagi'),
(9, 'Bharat'),
(10, 'M.S. Dhoni: The Untold Story'),
(11, 'Good Newwz'),
(12, 'Housefull 4'),
(13, 'Gully Boy'),
(14, 'Dabangg 3'),
(15, 'Padmaavat'),
(16, 'Simmba'),
(17, 'Badhaai Ho'),
(18, 'Tiger Zinda Hain'),
(19, 'Hindi Medium'),
(20, 'Judwaa 2'),
(21, 'Tubelight'),
(22, 'Raees'),
(23, 'Kaabil'),
(24, 'Frozen 2'),
(25, 'Once upno a time in hollywood'),
(26, 'Booksmart'),
(27, 'Us'),
(28, 'Rocketman'),
(29, 'Yesterday'),
(30, 'Deadpool 2'),
(31, 'Mission Impossible'),
(32, 'Dangal'),
(33, 'Sultan'),
(34, 'Ae Dil hain Mushqil'),
(35, 'Bajrangi Bhaijaan'),
(36, 'Singham Returns'),
(37, '2 States'),
(38, 'Happy New year'),
(39, 'Ek Villian'),
(40, 'Gunday'),
(41, 'Gujrati'),
(42, 'English'),
(43, 'K-Pop');

-- --------------------------------------------------------

--
-- Table structure for table `album1`
--

CREATE TABLE `album1` (
  `Album_id` int(11) NOT NULL,
  `Release_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `Artist_id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`Artist_id`, `Name`) VALUES
(1, 'Alka Yagnik'),
(2, 'Arijit Singh'),
(3, 'Asha Bhosle'),
(4, 'Neha Kakkar'),
(5, 'Shreya Ghoshal'),
(6, 'Vishal Shekar'),
(7, 'Kishore Kumar'),
(8, 'A.R. Rahman'),
(9, 'Atif Aslam'),
(10, 'Sonu Nigam'),
(11, 'Kumar Sanu'),
(12, 'Pritam'),
(13, 'Badshah'),
(14, 'Anu Malik'),
(15, 'Diljit Dosanjh'),
(16, 'Shankar Mahadevan'),
(17, 'Shankar Ehsaan Loy'),
(18, 'Bappi Lahiri'),
(19, 'Shaan'),
(20, 'S.D.Burman'),
(21, 'Gajendra Verma'),
(22, 'Benny Dayal'),
(23, 'Richa Sharma'),
(24, 'Falguni Pathak'),
(25, 'Meet Bros'),
(26, 'Mika Singh'),
(27, 'Sanjay Oza'),
(28, 'Parth Chaudhary'),
(29, 'Geeta Rabari'),
(30, 'Vijay Suvada'),
(31, 'Sachin Jigar'),
(32, 'Jayker Bhojak'),
(33, 'Shyamal Saumil'),
(34, 'Aarti Munshi'),
(35, 'Vatsala Patil'),
(36, 'Bhoomi Trivedi'),
(37, 'Atul Purohit'),
(38, 'Paritosh Goswami'),
(39, 'Sachin Limaye'),
(40, 'Achal Mehta'),
(41, 'Daler Mehndi'),
(42, 'Sukhwinder Singh'),
(43, 'Malkit Singh'),
(44, 'Gurdas Maan'),
(45, 'Guru Randhawa'),
(46, 'Jasdeep Singh Gill'),
(47, 'Kesha'),
(48, 'Billie Eilish'),
(49, 'Halsey'),
(50, 'Tove Lo'),
(51, 'Krewella'),
(52, 'Tame Impala'),
(53, 'The Weekend'),
(54, 'Selena Gomez'),
(55, 'Adele'),
(56, 'Akon'),
(57, 'Alan Walker'),
(58, 'Calvin Harris'),
(59, 'Ariana Grande'),
(60, 'Avicii'),
(61, 'Rita Ora'),
(62, 'Drake'),
(63, 'Khalid'),
(64, 'Bon Iver'),
(65, 'Bon Jovi'),
(66, 'Bryan Adams'),
(67, 'Enrique Iglesias'),
(68, 'Katy Perry'),
(69, 'Jennifer Lopez'),
(70, 'Dua Lipa'),
(71, 'Rihanna'),
(72, 'Michael Jackson'),
(73, 'Taylor Swift'),
(74, 'Lady Gaga'),
(75, 'Camila Cabello'),
(76, 'The Chainsmokers'),
(77, 'Daft Punk'),
(78, 'DJ Snake'),
(79, 'Foreigner'),
(80, 'Cardi B'),
(81, 'Hot Chelle Rae'),
(82, 'Imagine Dragons'),
(83, 'BTS'),
(84, 'PSY'),
(85, 'Red Velvet'),
(86, 'TWICE'),
(87, 'Queen'),
(88, 'pink floyd'),
(89, 'Led Zeppelin'),
(90, 'Guns n Roses'),
(91, 'Aerosmith'),
(92, 'Coldplay'),
(93, 'AC/DC'),
(94, 'Nirvana'),
(95, 'The Smiths'),
(96, 'John Legend'),
(97, 'The Doors'),
(98, 'OneRepublic'),
(99, 'Fall Out Boy'),
(100, 'Justin Bieber');

-- --------------------------------------------------------

--
-- Table structure for table `artist1`
--

CREATE TABLE `artist1` (
  `Artist_id` int(11) NOT NULL,
  `Artist_Name` varchar(50) NOT NULL,
  `Password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `creates`
--

CREATE TABLE `creates` (
  `User_id` int(11) NOT NULL,
  `Playlist_id` int(11) NOT NULL,
  `Song_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `Genre_id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`Genre_id`, `Name`) VALUES
(901, 'Pop'),
(902, 'Rock'),
(903, 'Hip-Hop'),
(904, 'R&B'),
(905, 'Electronic Dance'),
(906, 'Classical'),
(907, 'Country Music'),
(908, 'Jazz'),
(909, 'Romance');

-- --------------------------------------------------------

--
-- Table structure for table `has`
--

CREATE TABLE `has` (
  `Album_id` int(11) NOT NULL,
  `Song_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `Language_id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`Language_id`, `Name`) VALUES
(1001, 'Hindi'),
(1002, 'English');

-- --------------------------------------------------------

--
-- Table structure for table `mood`
--

CREATE TABLE `mood` (
  `Mood_id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mood`
--

INSERT INTO `mood` (`Mood_id`, `Name`) VALUES
(101, 'Happy'),
(102, 'Party/Dance'),
(103, 'Romantic'),
(104, 'Melancholy'),
(105, 'Energetic'),
(106, 'Relax');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `Playlist_id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `releases`
--

CREATE TABLE `releases` (
  `Album_id` int(11) NOT NULL,
  `Artist_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `Song_id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Album_id` int(45) NOT NULL,
  `Genre_id` int(20) NOT NULL,
  `Mood_id` int(8) NOT NULL,
  `Lang_id` int(20) NOT NULL,
  `Release_Date` varchar(20) NOT NULL,
  `Rating` tinyint(4) NOT NULL,
  `Artist_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`Song_id`, `Name`, `Album_id`, `Genre_id`, `Mood_id`, `Lang_id`, `Release_Date`, `Rating`, `Artist_id`) VALUES
(401, 'Ratta Maar', 1, 901, 105, 1001, '15-05-2018', 3, 6),
(402, 'Radha', 1, 901, 101, 1001, '10-10-2016', 5, 5),
(403, 'Aal Izz Well', 2, 901, 101, 1001, '02-05-2016', 5, 19),
(404, 'Zoobi Doobi', 2, 901, 101, 1001, '13-02-2017', 3, 5),
(405, 'Garmi', 3, 904, 102, 1001, '18-02-2019', 5, 4),
(406, 'Kho Jaane De', 4, 901, 105, 1001, '02-05-2016', 4, 20),
(407, 'Bhagwaan Hai Kahan Re Tu', 5, 901, 104, 1001, '15-07-2012', 5, 10),
(408, 'Chann Chann', 6, 901, 101, 1001, '30-11-2015', 4, 5),
(409, 'Subah Ho Gayi Maamu', 6, 901, 101, 1001, '08-06-2014', 4, 19),
(410, 'Main Badiya Tu Bhi Badiya', 7, 905, 102, 1001, '21-10-2010', 3, 10),
(411, 'Yaad Piya ki aane lagi', 8, 905, 104, 1001, '21-10-2010', 3, 4),
(412, 'Sauda Khara Khara', 11, 901, 102, 1001, '21-10-2010', 5, 15),
(413, 'Chandigarh Mein', 11, 903, 102, 1001, '21-10-2010', 4, 13),
(414, 'Badla', 12, 905, 102, 1001, '21-10-2010', 3, 2),
(415, 'Awari', 39, 904, 101, 1001, '21-10-2010', 4, 1),
(416, 'Sher Aaya Sher', 13, 905, 102, 1001, '21-10-2010', 3, 20),
(417, 'Chaandaniya', 37, 909, 103, 1001, '21-10-2010', 2, 3),
(418, 'Mujhe Chaand Pe Le Chalo', 7, 905, 102, 1001, '21-10-2010', 4, 23),
(419, 'Mere Sapnon Ki Rani', 41, 901, 101, 1001, '21-10-2010', 3, 7),
(420, 'Hoor', 19, 901, 101, 1001, '21-10-2010', 3, 9),
(421, 'Radio', 21, 901, 103, 1001, '21-10-2010', 3, 8),
(422, 'India Waale', 38, 901, 101, 1001, '21-10-2010', 2, 16),
(423, 'Badhaaiyan Tenu', 17, 901, 102, 1001, '21-10-2010', 5, 22),
(424, 'Tera Ghata', 41, 901, 104, 1001, '21-10-2010', 3, 21),
(425, 'East Aur West', 20, 905, 102, 1001, '21-10-2010', 1, 14),
(501, 'bad guy', 42, 901, 102, 1002, '29-03-2019', 5, 48),
(502, 'all the good girls go to hell', 42, 901, 102, 1002, '29-03-2019', 5, 48),
(503, 'Ocean Eyes', 42, 901, 104, 1002, '15-09-2016', 4, 48),
(504, 'bellyache', 42, 901, 101, 1002, '02-04-2016', 4, 48),
(505, 'bury a friend', 42, 901, 102, 1002, '29-03-2019', 5, 48),
(506, 'Tik Tok', 42, 901, 102, 1002, '09-10-2010', 5, 47),
(507, 'We R Who We R', 42, 901, 102, 1002, '09-10-2010', 4, 47),
(508, 'Animal', 42, 903, 105, 1002, '09-10-2009', 3, 47),
(509, 'Without Me', 42, 901, 102, 1002, '23-11-2018', 5, 49),
(510, 'Eastside', 42, 904, 103, 1002, '03-01-2017', 5, 49),
(511, 'Colour', 42, 901, 104, 1002, '23-11-2018', 3, 49),
(512, '11 Minutes', 42, 902, 105, 1002, '10-05-2017', 3, 49),
(513, 'Talking Body', 42, 901, 102, 1002, '23-09-2014', 5, 50),
(514, 'True Disaster', 42, 901, 105, 1002, '23-09-2014', 4, 50),
(515, 'Runaway', 42, 905, 102, 1002, '13-09-2015', 5, 51),
(516, 'Team', 42, 905, 105, 1002, '17-04-2014', 3, 51),
(517, 'Alibi', 42, 905, 105, 1002, '13-09-2015', 4, 51),
(518, 'The Less I Know The Better', 42, 901, 104, 1002, '07-05-2015', 5, 52),
(519, 'Borderline', 42, 901, 104, 1002, '07-07-2015', 4, 52),
(520, 'Starboy', 42, 901, 102, 1002, '17-12-2016', 5, 53),
(521, 'The Hills', 42, 903, 105, 1002, '06-01-2015', 4, 53),
(522, 'Earned It', 42, 904, 103, 1002, '06-01-2015', 5, 53),
(523, 'I Feel It Coming', 42, 904, 103, 1002, '17-12-2016', 5, 53),
(524, 'Back To You', 42, 901, 101, 1002, '25-04-2018', 5, 54),
(525, 'Hello', 42, 904, 104, 1002, '25-04-2015', 5, 55),
(526, 'Rolling in the Deep', 42, 901, 105, 1002, '05-06-2010', 5, 55),
(527, 'Someone Like You', 42, 904, 103, 1002, '05-06-2011', 5, 55),
(528, 'Smack That', 42, 903, 105, 1002, '21-02-2006', 5, 56),
(529, 'Beautiful', 42, 904, 101, 1002, '10-09-2008', 4, 56),
(530, 'Don\'t Matter', 42, 904, 103, 1002, '21-02-2006', 3, 56),
(531, 'Faded', 42, 905, 105, 1002, '04-12-2015', 5, 57),
(532, 'Summer', 42, 905, 105, 1002, '12-07-2014', 5, 58),
(533, 'How Deep is your Love', 42, 904, 102, 1002, '14-05-2013', 5, 58),
(534, 'thank u,next', 42, 901, 101, 1002, '30-10-2018', 5, 59),
(535, 'God is a woman', 42, 901, 101, 1002, '30-10-2018', 4, 59),
(536, 'Love me harder', 42, 901, 103, 1002, '20-06-2014', 3, 59),
(537, 'Wake Me Up', 42, 905, 102, 1002, '23-02-2013', 5, 60),
(538, 'Waiting For Love', 42, 905, 101, 1002, '10-09-2015', 5, 60),
(539, 'Your Song', 42, 904, 101, 1002, '12-04-2018', 4, 61),
(540, 'God\'s plan', 42, 903, 105, 1002, '19-05-2018', 5, 62),
(541, 'One Dance', 42, 903, 102, 1002, '09-03-2016', 5, 62),
(542, 'Mia', 42, 903, 102, 1002, '15-06-2018', 4, 62),
(543, 'Lovely', 42, 901, 102, 1002, '23-01-2017', 5, 63),
(544, 'Young, dumb & broke', 42, 903, 101, 1002, '05-08-2018', 4, 63),
(545, 'Holocene', 42, 904, 104, 1002, '09-05-2011', 4, 64),
(546, 'Always', 42, 902, 103, 1002, '01-03-1994', 4, 65),
(547, 'It\'s My Life', 42, 902, 105, 1002, '29-10-2000', 5, 65),
(548, 'Summer of\'69 ', 42, 902, 105, 1002, '23-07-1984', 5, 65),
(549, 'Heaven', 42, 904, 103, 1002, '23-08-1984', 5, 66),
(550, 'Everything I Do', 42, 904, 103, 1002, '23-08-1991', 5, 66),
(551, 'Somebody\'s Me', 42, 904, 103, 1002, '30-01-2007', 5, 67),
(552, 'Bialamos', 42, 903, 102, 1002, '20-06-1998', 4, 67),
(553, 'Dark Horse', 42, 901, 102, 1002, '10-09-2013', 5, 68),
(554, 'Harleys in Hawaii', 42, 901, 101, 1002, '16-10-2019', 4, 68),
(555, 'On the Floor', 42, 904, 101, 1002, '04-02-2011', 5, 69),
(556, 'Hotter Than Hell', 42, 901, 102, 1002, '01-09-2016', 3, 70),
(557, 'No Rules', 42, 901, 101, 1002, '15-05-2017', 5, 70),
(558, 'We Found Love', 42, 905, 105, 1002, '30-07-2011', 5, 71),
(559, 'Love on the brain', 42, 904, 104, 1002, '20-04-2016', 4, 71),
(560, 'Billie Jean', 42, 901, 105, 1002, '07-10-1982', 5, 72),
(561, 'Lovestory', 42, 901, 103, 1002, '20-09-2009', 5, 73),
(562, 'You Belong With Me', 42, 901, 103, 1002, '30-09-2008', 4, 73),
(563, 'Shallow', 42, 901, 103, 1002, '14-08-2018', 5, 74),
(564, 'Just Dance', 42, 901, 102, 1002, '25-10-2008', 5, 74),
(565, 'Havana', 42, 901, 101, 1002, '11-03-2018', 5, 75),
(566, 'Senorita', 42, 901, 103, 1002, '03-11-2019', 5, 75),
(567, 'Closer', 42, 905, 103, 1002, '15-07-2016', 5, 76),
(568, 'Paris', 42, 905, 105, 1002, '20-10-2017', 3, 76),
(569, 'Instant Crush', 42, 905, 106, 1002, '22-11-2013', 5, 77),
(570, 'We Will Rock You', 42, 902, 105, 1002, '18-03-1977', 4, 87),
(571, 'Bohemian Rhapsody', 42, 902, 106, 1002, '23-07-1975', 5, 87),
(572, 'I Want to Break Free', 42, 902, 101, 1002, '08-08-1984', 5, 87),
(573, 'Hey You', 42, 902, 106, 1002, '28-11-1979', 3, 88),
(574, 'Another Brick in the Wall', 42, 902, 105, 1002, '28-11-1979', 4, 88),
(575, 'Wish You Were Here', 42, 902, 104, 1002, '12-09-1975', 5, 88),
(576, 'Comfortably Numb', 42, 902, 106, 1002, '28-11-1979', 5, 88),
(577, 'Kashmir', 42, 902, 105, 1002, '14-06-1971', 3, 89),
(578, 'Immigrant Song', 42, 902, 105, 1002, '31-05-1970', 4, 89),
(579, 'Stairway to Heaven', 42, 902, 106, 1002, '14-06-1971', 5, 89),
(580, 'Don\'t Cry', 42, 902, 104, 1002, '13-04-1991', 3, 90),
(581, 'November Rain', 42, 902, 104, 1002, '23-07-1987', 5, 90),
(582, 'Sweet Child O\' Mine', 42, 902, 105, 1002, '23-07-1987', 5, 90),
(583, 'Paradise City', 42, 902, 105, 1002, '23-07-1987', 4, 90),
(584, 'I don\'t wanna miss a thing', 42, 902, 104, 1002, '30-12-1998', 4, 91),
(585, 'Yellow', 42, 902, 101, 1002, '23-02-2000', 5, 92),
(586, 'Paradise', 42, 902, 105, 1002, '15-03-2011', 4, 92),
(587, 'Highway to Hell', 42, 902, 105, 1002, '06-09-1979', 4, 93),
(588, 'The man who sold the world', 42, 902, 104, 1002, '02-06-1994', 5, 94),
(589, 'Smells like teen spirit', 42, 902, 104, 1002, '02-10-1991', 5, 94),
(590, 'Come as you are', 42, 902, 104, 1002, '22-10-1991', 4, 94),
(591, 'There is a light that never goes out', 42, 902, 104, 1002, '04-06-1986', 5, 95),
(592, 'I know it\'s over', 42, 902, 104, 1002, '04-06-1986', 4, 95),
(593, 'All of Me', 42, 904, 104, 1002, '14-11-2013', 5, 96),
(594, 'Love Me Now', 42, 904, 103, 1002, '13-02-2016', 4, 96),
(595, 'End of the Night', 42, 902, 104, 1002, '31-10-1967', 4, 97),
(596, 'Counting Stars', 42, 902, 101, 1002, '13-04-2013', 5, 98),
(597, 'Centuries', 42, 902, 105, 1002, '30-07-2014', 5, 99),
(598, 'Cold Water', 42, 905, 101, 1002, '20-01-2016', 5, 100),
(599, 'Sorry', 42, 901, 101, 1002, '20-01-2016', 5, 100),
(5100, 'Let Me Love You', 42, 905, 102, 1002, '20-01-2016', 5, 100);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_id` int(11) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`ALBUM_id`);

--
-- Indexes for table `album1`
--
ALTER TABLE `album1`
  ADD PRIMARY KEY (`Album_id`);

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`Artist_id`);

--
-- Indexes for table `artist1`
--
ALTER TABLE `artist1`
  ADD PRIMARY KEY (`Artist_id`);

--
-- Indexes for table `creates`
--
ALTER TABLE `creates`
  ADD KEY `User_id` (`User_id`),
  ADD KEY `Playlist_id` (`Playlist_id`),
  ADD KEY `Song_id` (`Song_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`Genre_id`);

--
-- Indexes for table `has`
--
ALTER TABLE `has`
  ADD KEY `Album_id` (`Album_id`),
  ADD KEY `Song_id` (`Song_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`Language_id`);

--
-- Indexes for table `mood`
--
ALTER TABLE `mood`
  ADD PRIMARY KEY (`Mood_id`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`Playlist_id`);

--
-- Indexes for table `releases`
--
ALTER TABLE `releases`
  ADD KEY `Album_id` (`Album_id`),
  ADD KEY `Artist_id` (`Artist_id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`Song_id`),
  ADD KEY `Album_id` (`Album_id`),
  ADD KEY `Genre_id` (`Genre_id`),
  ADD KEY `Lang_id` (`Lang_id`),
  ADD KEY `Mood_id` (`Mood_id`),
  ADD KEY `Artist_id` (`Artist_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `ALBUM_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `album1`
--
ALTER TABLE `album1`
  MODIFY `Album_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `Artist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `artist1`
--
ALTER TABLE `artist1`
  MODIFY `Artist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `Genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=910;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `Language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003;

--
-- AUTO_INCREMENT for table `mood`
--
ALTER TABLE `mood`
  MODIFY `Mood_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `Playlist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `Song_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5101;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `creates`
--
ALTER TABLE `creates`
  ADD CONSTRAINT `creates_ibfk_1` FOREIGN KEY (`Playlist_id`) REFERENCES `playlist` (`Playlist_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `creates_ibfk_2` FOREIGN KEY (`Song_id`) REFERENCES `songs` (`Song_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `creates_ibfk_3` FOREIGN KEY (`User_id`) REFERENCES `user` (`User_id`) ON UPDATE CASCADE;

--
-- Constraints for table `has`
--
ALTER TABLE `has`
  ADD CONSTRAINT `has_ibfk_1` FOREIGN KEY (`Album_id`) REFERENCES `album1` (`Album_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `has_ibfk_2` FOREIGN KEY (`Song_id`) REFERENCES `songs` (`Song_id`) ON UPDATE CASCADE;

--
-- Constraints for table `releases`
--
ALTER TABLE `releases`
  ADD CONSTRAINT `releases_ibfk_1` FOREIGN KEY (`Album_id`) REFERENCES `album1` (`Album_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `releases_ibfk_2` FOREIGN KEY (`Artist_id`) REFERENCES `artist1` (`Artist_id`);

--
-- Constraints for table `songs`
--
ALTER TABLE `songs`
  ADD CONSTRAINT `songs_ibfk_1` FOREIGN KEY (`Album_id`) REFERENCES `album` (`ALBUM_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `songs_ibfk_2` FOREIGN KEY (`Genre_id`) REFERENCES `genre` (`Genre_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `songs_ibfk_3` FOREIGN KEY (`Lang_id`) REFERENCES `language` (`Language_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `songs_ibfk_4` FOREIGN KEY (`Mood_id`) REFERENCES `mood` (`Mood_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `songs_ibfk_5` FOREIGN KEY (`Artist_id`) REFERENCES `artist` (`Artist_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
