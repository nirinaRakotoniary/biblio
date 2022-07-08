-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 07, 2022 at 06:01 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `books`
--
CREATE DATABASE IF NOT EXISTS `books` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `books`;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `author` varchar(50) NOT NULL,
  `code` varchar(20) NOT NULL,
  `category` varchar(15) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `available` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `title`, `author`, `code`, `category`, `date`, `available`) VALUES
(1, 'Rersponsive Web Design with HTML 5 and CSS', 'Jessica Minnick', '1', 'livre', 2021, 1),
(2, 'Murach\'s HTML5 and CSS3', 'Anne Boehm', '2', 'livre', 2018, 1),
(3, 'Responsive Web Design with HTML5 and CSS', 'Ben Frain', '3', 'livre', 2020, 1),
(4, 'Learning PHP, MySQL & JavaScript', 'Robin Nixon', '4', 'livre', 2021, 1),
(5, 'Learn PHP 8 Using MySQL, JavaScript,CSS3 and HTML5', 'Steve Prettyman', '5', 'livre', 2020, 1),
(6, 'PHP 7 – Cours et exercices', 'Jean Engels', '6', 'livre', 2017, 1),
(7, 'Cours PHP Accéléré', 'Gérard Rozsavolgyi', '7', 'livre', 2021, 1),
(8, 'Learn to Code Learn HTML, CSS & JavaScript & build a website, app and game ', 'Garry Owen', '8', 'livre', 2022, 1),
(9, 'PHP 8 Quick Scripting Reference [3 ed.]\r\n', 'Mikael Olsson', '9', 'livre', 2021, 1),
(10, 'PHP 8 Objects, Patterns, and Practice: Mastering OO Enhancements, Design Patterns, and Essential ', 'Matt Zandstra 	', '10', 'livre', 2021, 1),
(11, 'PRO PHP 8 MVC : model view controller architecture -driven application development. [2 ed.]', 'CHRISTOPHER PITT', '11', 'livre', 2021, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `CNE` varchar(10) NOT NULL,
  `Nom` varchar(12) NOT NULL,
  `Prenom` varchar(21) DEFAULT NULL,
  `Groupe` varchar(2) DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'student',
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`CNE`, `Nom`, `Prenom`, `Groupe`, `type`, `password`) VALUES
('D135735544', 'achguer', 'keltouma', 'G1', 'student', 'D135735544'),
('D139543391', 'adiouane', 'anas', 'G1', 'student', 'D139543391'),
('D137089960', 'afa', 'manal', 'G1', 'student', 'D137089960'),
('D136123128', 'ait brik', 'abdelwahed', 'G1', 'student', 'D136123128'),
('G139054907', 'ait elhadj', 'noureddine', 'G1', 'student', 'G139054907'),
('C139068543', 'akrach', 'omayma', 'G1', 'student', 'C139068543'),
('R137613264', 'amaar', 'anas', 'G1', 'student', 'R137613264'),
('F138407361', 'amraoui', 'ibtissam', 'G1', 'student', 'F138407361'),
('A18X430250', 'andriamihaja', ' joelson emile', 'G1', 'student', 'A18X430250'),
('d137199969', 'anflousse', 'laila', 'G1', 'student', 'd137199969'),
('D131869928', 'aourga', 'fatima', 'G1', 'student', 'D131869928'),
('d140064716', 'benziki', 'aicha', 'G1', 'student', 'd140064716'),
('B134027957', 'berdaiji', 'ali', 'G1', 'student', 'B134027957'),
('D132790650', 'biguedad', 'mohammed', 'G1', 'student', 'D132790650'),
('R134428946', 'bioui', 'adnane', 'G1', 'student', 'R134428946'),
('D135268230', 'boukhali', 'khalid', 'G1', 'student', 'D135268230'),
('D136223727', 'bouqal', 'hamza', 'G1', 'student', 'D136223727'),
('D131747026', 'bouttaj', 'hicham', 'G1', 'student', 'D131747026'),
('N147011646', 'cherrou', 'mohamed', 'G1', 'student', 'N147011646'),
('D135069584', 'douaij', 'hamza', 'G1', 'student', 'D135069584'),
('G136397243', 'el biad', 'farah', 'G1', 'student', 'G136397243'),
('M130098325', 'el fadili', 'omar', 'G1', 'student', 'M130098325'),
('d130374306', 'el idrissi', 'ahmed', 'G1', 'student', 'd130374306'),
('D136778782', 'el mouden', 'fatima zahra', 'G1', 'student', 'D136778782'),
('L135347785', 'el omari', 'youssef', 'G1', 'student', 'L135347785'),
('D131185631', 'el qosby', 'fatima ezzahra', 'G1', 'student', 'D131185631'),
('D130020519', 'fanan', 'abdelouahed', 'G1', 'student', 'D130020519'),
('G132295920', 'fdilat', 'hadil', 'G1', 'student', 'G132295920'),
('1.41E+09', 'hdioued', 'othman', 'G1', 'student', '1.41E+09'),
('A137007905', 'hessoune', 'ayoub', 'G1', 'student', 'A137007905'),
('D135918211', 'id ben salah', 'asma', 'G2', 'student', 'D135918211'),
('G130506922', 'idifi', 'hamid', 'G2', 'student', 'G130506922'),
('J132516886', 'ifkerne', 'youssouf', 'G2', 'student', 'J132516886'),
('D138715220', 'janati', 'hajar', 'G2', 'student', 'D138715220'),
('M144024232', 'kaddi', 'mohamed', 'G2', 'student', 'M144024232'),
('R134571340', 'khoudidir', 'fatima', 'G2', 'student', 'R134571340'),
('M134132160', 'lachgar', 'nour eddine', 'G2', 'student', 'M134132160'),
('D147070980', 'lachguer', 'yasser', 'G2', 'student', 'D147070980'),
('D137614879', 'ladib', 'hamza', 'G2', 'student', 'D137614879'),
('D137852716', 'lafdi', 'yahya', 'G2', 'student', 'D137852716'),
('D132351167', 'lakbail', 'abdellatif', 'G2', 'student', 'D132351167'),
('G130310220', 'laoumri', 'issam', 'G2', 'student', 'G130310220'),
('MM0000273', 'layinde', 'akanni saobane', 'G2', 'student', 'MM0000273'),
('D141015475', 'mannasse', 'mourad', 'G2', 'student', 'D141015475'),
('R137789465', 'moulahid', 'zakaria', 'G2', 'student', 'R137789465'),
('L133077762', 'msalla', 'loubna', 'G2', 'student', 'L133077762'),
('D138192918', 'nait moussa', 'mohamed', 'G2', 'student', 'D138192918'),
('19AA1508', 'ouattara', 'zanipe souleymane', 'G2', 'student', '19AA1508'),
('M137179028', 'oughanem', 'achraf', 'G2', 'student', 'M137179028'),
('D138896334', 'ourajdal', 'kamal', 'G2', 'student', 'D138896334'),
('A18X302700', 'rakotoniary', 'nirina fenosoa mercia', 'G2', 'student', 'A18X302700'),
('R134464456', 'riad', 'abdelghani', 'G2', 'student', 'R134464456'),
('D130394761', 'saidi', 'imane', 'G2', 'student', 'D130394761'),
('K141032078', 'sakim', 'rabab', 'G2', 'student', 'K141032078'),
('L133294566', 'samine', 'manal', 'G2', 'student', 'L133294566'),
('F136088788', 'smini', 'abdellah', 'G2', 'student', 'F136088788'),
('B130007897', 'sobhi', 'oussama', 'G2', 'student', 'B130007897'),
('D134288964', 'tiatro', 'yassine', 'G2', 'student', 'D134288964'),
('D132311180', 'zoubairi', 'wafa', 'G2', 'student', 'D132311180'),
('D138749854', 'zouiten', 'abdessamad', 'G2', 'student', 'D138749854'),
('admin', 'admin', '', NULL, 'admin', 'admin'),
('root', 'root', NULL, NULL, 'admin', 'root');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
