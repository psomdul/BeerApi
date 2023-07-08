-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 08, 2023 at 09:19 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `BeerCollection`
--

-- --------------------------------------------------------

--
-- Table structure for table `Beer`
--

CREATE TABLE `Beer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Beer`
--

INSERT INTO `Beer` (`id`, `name`, `type_id`, `description`, `created_date`, `updated_date`, `Image`, `deleted_at`) VALUES
(1, 'Beername1', 2, 'descriptionBeer1', '2023-07-08 03:16:56', '2023-07-08 03:16:56', 'test', NULL),
(2, 'Beername2', 1, 'descriptionBeer2', '2023-07-08 03:20:54', '2023-07-08 03:20:54', 'test', NULL),
(3, 'Beername6', 2, 'descriptionBeer6', '2023-07-08 03:16:56', '2023-07-08 03:16:56', 'test', NULL),
(4, 'Beername3', 3, 'descriptionBeer3', '2023-07-08 03:16:56', '2023-07-08 03:16:56', 'test', NULL),
(5, 'Beername4', 4, 'descriptionBeer4', '2023-07-08 03:16:56', '2023-07-08 03:16:56', 'test', NULL),
(6, 'Beername5', 1, 'descriptionBeer5', '2023-07-08 03:16:56', '2023-07-08 03:16:56', 'test', NULL),
(7, 'Beername7', 1, 'descriptionBeer7', '2023-07-08 03:46:46', '2023-07-08 03:46:46', 'test', NULL),
(8, 'Beername8', 2, 'descriptionBeer8', '2023-07-08 03:46:46', '2023-07-08 03:46:46', 'test', NULL),
(9, 'Beername9', 1, 'descriptionBeer9', '2023-07-08 03:46:46', '2023-07-08 03:46:46', 'test', NULL),
(10, 'Beername10', 3, 'descriptionBeer10', '2023-07-08 03:46:46', '2023-07-08 03:46:46', 'test', NULL),
(11, 'Beername11', 4, 'descriptionBeer11', '2023-07-08 03:46:46', '2023-07-08 03:46:46', 'test', NULL),
(12, 'Beername12', 5, 'descriptionBeer12', '2023-07-08 03:46:46', '2023-07-08 03:46:46', 'test', NULL),
(13, 'Beername13', 2, 'descriptionBeer13', '2023-07-08 03:46:46', '2023-07-08 03:46:46', 'test', NULL),
(14, 'Beername14', 4, 'descriptionBeer14', '2023-07-08 03:46:46', '2023-07-08 03:46:46', 'test', NULL),
(15, 'Beername15', 5, 'descriptionBeer15', '2023-07-08 03:46:46', '2023-07-08 03:46:46', 'test', NULL),
(16, 'Beername16', 5, 'descriptionBeer16', '2023-07-08 03:46:46', '2023-07-08 03:46:46', 'test', NULL),
(17, 'Beername17', 1, 'descriptionBeer17', '2023-07-08 03:46:46', '2023-07-08 03:46:46', 'test', NULL),
(18, 'Beername18', 2, 'descriptionBeer18', '2023-07-08 03:46:46', '2023-07-08 03:46:46', 'test', NULL),
(19, 'Beername19', 2, 'descriptionBeer19', '2023-07-08 03:46:46', '2023-07-08 03:46:46', 'test', NULL),
(20, 'Beername20', 3, 'descriptionBeer20', '2023-07-08 03:46:46', '2023-07-08 03:46:46', 'test', NULL),
(21, 'Beername21', 4, 'descriptionBeer21', '2023-07-08 03:46:46', '2023-07-08 03:46:46', 'test', NULL),
(22, 'Beername22', 4, 'descriptionBeer22', '2023-07-08 03:46:46', '2023-07-08 03:46:46', 'test', NULL),
(23, 'Beername23', 5, 'descriptionBeer23', '2023-07-08 03:46:46', '2023-07-08 03:46:46', 'test', NULL),
(24, 'Beername24445', 1, 'testdescription', '2023-07-08 14:12:06', '2023-07-08 14:12:06', NULL, NULL),
(25, 'Beername24445', 1, 'testdescription', '2023-07-08 14:16:09', '2023-07-08 14:16:09', 'testst.jpg', NULL),
(26, 'Beername24445', 1, 'testdescription', '2023-07-08 14:16:30', '2023-07-08 14:16:30', 'testst.jpg', NULL),
(27, 'Beername244425', 1, 'testdescription', '2023-07-08 14:16:56', '2023-07-08 14:16:56', 'testst.jpg', NULL),
(28, 'Beername244425', 1, 'testdescription', '2023-07-08 14:17:12', '2023-07-08 14:17:12', 'testst.jpg', NULL),
(29, 'Beername244425', 1, 'testdescription', '2023-07-08 14:17:21', '2023-07-08 14:17:21', 'testst.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `beers`
--

CREATE TABLE `beers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Beer_Type`
--

CREATE TABLE `Beer_Type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Beer_Type`
--

INSERT INTO `Beer_Type` (`type_id`, `type_name`, `description`, `created_date`, `updated_at`) VALUES
(1, 'Lager', 'Lager is beer which has been brewed and conditioned at low temperature. Lagers can be pale, amber, or dark. Pale lager is the most widely consumed and commercially available style of beer', '2023-07-08 03:12:04', '2023-07-08 03:12:04'),
(2, 'Ale', 'Ale is a type of beer brewed using a warm fermentation method, resulting in a sweet, full-bodied and fruity taste. Historically, the term referred to a drink brewed without hops. As with most beers, ale typically has a bittering agent to balance the malt and act as a preservative', '2023-07-08 03:14:23', '2023-07-08 03:14:23'),
(3, 'stout', 'Stout is a dark, top-fermented beer with a number of variations, including dry stout, oatmeal stout, milk stout, and imperial stout. The first known use of the word stout for beer, in a document dated 1677 found in the Egerton Manuscripts, referred to its strength', '2023-07-08 03:14:58', '2023-07-08 03:14:58'),
(4, 'Pale_ale', 'Pale ale is a golden to amber coloured beer style brewed with pale malt. The term first appeared in England around 1703 for beers made from malts dried with high-carbon coke, which resulted in a lighter colour than other beers popular at that time', '2023-07-08 03:15:33', '2023-07-08 03:15:33'),
(5, 'Pilsner', 'Pilsner is a type of pale lager. It takes its name from the Bohemian city of Plzeň, where the world\'s first pale lager was produced in 1842 by Pilsner Urquell Brewery', '2023-07-08 03:16:03', '2023-07-08 03:16:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Beer`
--
ALTER TABLE `Beer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `typeofBeer` (`type_id`);

--
-- Indexes for table `beers`
--
ALTER TABLE `beers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_beers_deleted_at` (`deleted_at`);

--
-- Indexes for table `Beer_Type`
--
ALTER TABLE `Beer_Type`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Beer`
--
ALTER TABLE `Beer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `beers`
--
ALTER TABLE `beers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Beer_Type`
--
ALTER TABLE `Beer_Type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Beer`
--
ALTER TABLE `Beer`
  ADD CONSTRAINT `typeofBeer` FOREIGN KEY (`type_id`) REFERENCES `Beer_Type` (`type_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
