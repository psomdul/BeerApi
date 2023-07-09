-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 09, 2023 at 09:27 PM
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
-- Table structure for table `beers`
--

CREATE TABLE `beers` (
  `id` int(11) NOT NULL,
  `name` longtext DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `Image` longtext DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `created_at` longtext DEFAULT NULL,
  `updated_at` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `beers`
--

INSERT INTO `beers` (`id`, `name`, `type_id`, `description`, `Image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Beername1', 2, 'descriptionBeer1', 'test', '2023-07-10 00:37:15.645', '2023-07-08 10:00:00.000', '2023-07-08 10:00:00.000'),
(2, 'Beername2', 1, 'descriptionBeer2', 'test', '2023-07-10 01:18:32.492', '2023-07-08 10:00:00.000', '2023-07-08 10:00:00.000'),
(3, 'Beername6', 2, 'descriptionBeer6', 'test', NULL, '2023-07-08 10:00:00.000', '2023-07-08 10:00:00.000'),
(4, 'Beername24n4425jj', 1, 'testdescription', 'Beername24n4425jj', NULL, '2023-07-08 10:00:00.000', '2023-07-08 10:00:00.000'),
(5, 'Beername4', 4, 'descriptionBeer4', 'test', '2023-07-10 02:04:14.749', '2023-07-08 10:00:00.000', '2023-07-08 10:00:00.000'),
(6, 'Beername5', 1, 'descriptionBeer5', 'test', NULL, '2023-07-08 10:00:00.000', '2023-07-08 10:00:00.000'),
(7, 'Beername7', 1, 'descriptionBeer7', 'test', NULL, '2023-07-08 10:00:00.000', '2023-07-08 10:00:00.000'),
(8, 'Beername8', 2, 'descriptionBeer8', 'test', NULL, '2023-07-08 10:00:00.000', '2023-07-08 10:00:00.000'),
(9, 'Beername9', 1, 'descriptionBeer9', 'test', NULL, '2023-07-08 10:00:00.000', '2023-07-08 10:00:00.000'),
(10, 'Beername10', 3, 'descriptionBeer10', 'test', NULL, '2023-07-08 10:00:00.000', '2023-07-08 10:00:00.000'),
(11, 'Beername11', 4, 'descriptionBeer11', 'test', NULL, '2023-07-08 10:00:00.000', '2023-07-08 10:00:00.000'),
(12, 'Beername12', 5, 'descriptionBeer12', 'test', NULL, '2023-07-08 10:00:00.000', '2023-07-08 10:00:00.000'),
(13, 'Beername13', 2, 'descriptionBeer13', 'test', NULL, '2023-07-08 10:00:00.000', '2023-07-08 10:00:00.000'),
(14, 'Beername14', 4, 'descriptionBeer14', 'test', NULL, '2023-07-08 10:00:00.000', '2023-07-08 10:00:00.000'),
(15, 'Beername15', 5, 'descriptionBeer15', 'test', NULL, '2023-07-08 10:00:00.000', '2023-07-08 10:00:00.000'),
(16, 'Beername16', 5, 'descriptionBeer16', 'test', NULL, '2023-07-08 10:00:00.000', '2023-07-08 10:00:00.000'),
(17, 'Beername17', 1, 'descriptionBeer17', 'test', NULL, '2023-07-08 10:00:00.000', '2023-07-08 10:00:00.000'),
(18, 'Beername18', 2, 'descriptionBeer18', 'test', NULL, '2023-07-08 10:00:00.000', '2023-07-08 10:00:00.000'),
(19, 'Beername19', 2, 'descriptionBeer19', 'test', NULL, '2023-07-08 10:00:00.000', '2023-07-08 10:00:00.000'),
(20, 'Beername20', 3, 'descriptionBeer20', 'test', NULL, '2023-07-08 10:00:00.000', '2023-07-08 10:00:00.000'),
(21, 'Beername21', 4, 'descriptionBeer21', 'test', NULL, '2023-07-08 10:00:00.000', '2023-07-08 10:00:00.000'),
(22, 'Beername22', 4, 'descriptionBeer22', 'test', NULL, '2023-07-08 10:00:00.000', '2023-07-08 10:00:00.000'),
(23, 'Beername23', 5, 'descriptionBeer23', 'test', NULL, '2023-07-08 10:00:00.000', '2023-07-08 10:00:00.000'),
(24, 'Beername24445', 1, 'testdescription', NULL, NULL, '2023-07-08 10:00:00.000', '2023-07-08 10:00:00.000'),
(25, 'Beername24445', 1, 'testdescription', 'testst.jpg', NULL, '2023-07-08 10:00:00.000', '2023-07-08 10:00:00.000'),
(26, 'Beername24445', 1, 'testdescription', 'testst.jpg', NULL, '2023-07-08 10:00:00.000', '2023-07-08 10:00:00.000'),
(27, 'Beername244425', 1, 'testdescription', 'testst.jpg', NULL, '2023-07-08 10:00:00.000', '2023-07-08 10:00:00.000'),
(28, 'Beername244425', 1, 'testdescription', 'testst.jpg', NULL, '2023-07-08 10:00:00.000', '2023-07-08 10:00:00.000'),
(29, 'Beername244425', 1, 'testdescription', 'testst.jpg', NULL, '2023-07-08 10:00:00.000', '2023-07-08 10:00:00.000'),
(30, 'Beername24n4425jsdasj', 1, 'testdescription', '', NULL, NULL, NULL),
(31, 'Beersdaname24n4425jsdasj', 1, 'testdescription', '', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beers`
--
ALTER TABLE `beers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `typeofBeer` (`type_id`),
  ADD KEY `idx_beers_deleted_at` (`deleted_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beers`
--
ALTER TABLE `beers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
