-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2022 at 12:10 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `somptueuse_cosmetics`
--

-- --------------------------------------------------------

--
-- Table structure for table `addcart`
--

CREATE TABLE `addcart` (
  `id` bigint(12) NOT NULL,
  `p_id` bigint(12) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `price` bigint(12) NOT NULL,
  `qty` bigint(12) NOT NULL,
  `total` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addcart`
--

INSERT INTO `addcart` (`id`, `p_id`, `u_id`, `price`, `qty`, `total`) VALUES
(2, 1, 'abcd', 100, 4, 400),
(3, 8, 'abcd', 30, 1, 30),
(4, 2, 'abcd', 100, 3, 300),
(5, 6, 'abcd', 30, 3, 90),
(6, 11, 'admin', 30, 2, 60),
(7, 1, 'aa', 99, 1, 99),
(8, 2, 'aa', 79, 1, 79);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `password`) VALUES
('admin', 'admin'),
('nilkanth', 'nilkanth');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(12) NOT NULL,
  `catnm` varchar(100) NOT NULL,
  `sub_cat` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `catnm`, `sub_cat`) VALUES
(1, 'beauty', 'Powdery Matte Tints'),
(2, 'beauty', 'HD Matte Tints'),
(3, 'beauty', 'Gel Based Tints'),
(4, 'beauty', 'Carrier Oil'),
(5, 'accessories', 'Hair'),
(6, 'accessories', 'Necklace'),
(7, 'accessories', 'Ring'),
(8, 'collections', 'Daisy Collection'),
(9, 'collections', 'Mini Collection'),
(10, 'collections', 'Vintage Collection');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id` bigint(12) NOT NULL,
  `p_id` bigint(12) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `email` varchar(150) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `p_id`, `u_id`, `name`, `mobile`, `email`, `location`) VALUES
(2, 8, 'abcd', '', 0, '', ''),
(3, 1, 'abcd', '', 0, '', ''),
(4, 8, 'abcd', '', 0, '', ''),
(24, 1, 'aa', 'lancey', 921709347, 'lanceyfem@gmail.com', 'deedff'),
(25, 2, 'aa', 'lancey', 921709347, 'lanceyfem@gmail.com', 'deedff');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` bigint(12) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image`) VALUES
(1, 'img/ambassador1.jpg'),
(2, 'img/bundle1.jpg'),
(3, 'img/castor_oil1.jpg'),
(4, 'img/daisy_collection3.jpg'),
(5, 'img/ambassador2.jpg'),
(6, 'img/daisy_posts1.jpg'),
(7, 'img/evo2.jpg'),
(8, 'img/mini_collection.jpg'),
(9, 'img/powdery_matte_tints.jpg'),
(10, 'img/ambassador4.jpg'),
(11, 'img/sol&luna.jpg'),
(12, 'img/ambassador3.jpg'),
(13, 'img/ambassador8.jpg'),
(14, 'img/vintage_collection.png'),
(15, 'img/daisy_posts2.png'),
(16, 'img/bundle2.jpg'),
(17, 'img/vintage_hd_matte_tints.jpg'),
(18, 'img/ambassador7.jpg'),
(19, 'img/daisy_posts3.jpg'),
(20, 'img/castor_oil2.jpg'),
(21, 'img/vintageboxes.jpg'),
(22, 'img/mini_swatch.jpg'),
(23, 'img/daisycollection4.png'),
(25, 'img/scrunchies.jpg'),
(26, 'img/ambassador6.jpg'),
(27, 'img/daisybundle.jpg'),
(28, 'img/mini_collection1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `parcel`
--

CREATE TABLE `parcel` (
  `id` bigint(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` text NOT NULL,
  `product_id` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(12) NOT NULL,
  `category` varchar(100) NOT NULL,
  `sub_cat` varchar(120) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` bigint(6) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `sub_cat`, `title`, `description`, `price`, `image`) VALUES
(1, 'beauty', 'Powdery Matte Tints', 'Aster', 'Aster is a Powdery Matte Tint in the shade of Warm Red', 99, 'mimg/aster.jpg'),
(2, 'beauty', 'Carrier Oil', 'Castor Oil', 'Castor Oil is a great remedy for hair problems as it contains ricinoleic acid and Vitamin E that\'s good for the scalp\'s health. Use everyday for best resuts.', 79, 'mimg/castor_oil.jpg'),
(3, 'beauty', 'HD Matte Tint', 'Crimson', 'Crimson is a HD Matte Tint in the shade of Dark Red', 99, 'mimg/crimson.jpg'),
(4, 'beauty', 'Powdery Matte Tints', 'Hyacinth', 'Hyacinth is a Powdery Matte Tint in the shade of Light Brown with Pink', 99, 'mimg/hyacinth.jpg'),
(5, 'beauty', 'Powdery Matte Tints', 'Iris', 'Iris is a Powdery Matte Tint in the shade of Wine Red', 99, 'mimg/iris.jpg'),
(6, 'beauty', 'Powdery Matte Tints', 'Ixora', 'Ixora is a Powdery Matte Tint in the shade of Blush Red', 99, 'mimg/ixora.jpg'),
(7, 'beauty', 'HD Matte Tints', 'Scarlet', 'Scarlet is a HD Matte Tint in the shade of Pantone Red', 99, 'mimg/scarlet.jpg'),
(8, 'beauty', 'HD Matte Tints', 'Sophia', 'Sophia is a HD Matte Tint in the shade of Burgundy', 69, 'mimg/sophia.jpg'),
(9, 'beauty', 'HD Matte Tints', 'Alexa', 'Alexa is a HD Matte Tint in the shade of Rosy Red', 69, 'mimg/alexa.jpg'),
(10, 'beauty', 'Powdery Matte Tints', 'Vintage', 'Vintage is a Powdery Matte Tint in the shade of Sangria', 99, 'mimg/vintage.jpg'),
(11, 'accessories', 'Necklace', 'Moon Necklace', 'This is a hypo-allergenic, Rose Gold Plated necklace designed to symbolize that after every sunset, a new beautiful chapter begins', 109, 'mimg/moon_necklace.png'),
(12, 'accessories', 'Hair Tie', 'Scrunchies', 'Scrunchies is an elastic hair tie made with Satin cloth to avoid breakage and split ends.', 10, 'mimg/scrunchies.jpg'),
(13, 'accessories', 'Necklace', 'Sol & Luna Necklace', 'This is a hypo-allergenic, Rose Gold Plated necklace.', 109, 'mimg/sol&luna.jpg'),
(14, 'accessories', 'Necklace', 'Two-Layered Necklace', 'This is a hypo-allergenic, Rose Gold Plated necklace.', 89, 'mimg/two-layer_necklace.jpg'),
(15, 'beauty', 'Powdery Matte Tints', 'Evo', 'Evo is a Powdery Matte Tint in the shade of Light Brown with Pink', 99, 'mimg/evo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` bigint(12) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `userid`, `password`, `email`) VALUES
(2, 'aa', 'bb', 'cc@y.com');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` bigint(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `review` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `name`, `review`, `description`) VALUES
(5, 'Milan vagh', 'Exellent', 'best hotel oh gujarat'),
(6, 'naimish gadhiya', 'Exellent', 'abcdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addcart`
--
ALTER TABLE `addcart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addcart`
--
ALTER TABLE `addcart`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
