-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2022 at 03:49 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecart`
--

-- --------------------------------------------------------

--
-- Table structure for table `index_table`
--

CREATE TABLE `index_table` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `index_table`
--

INSERT INTO `index_table` (`id`, `product_name`, `product_image`) VALUES
(1, 'Biriyani', 'https://i.pinimg.com/736x/eb/07/fb/eb07fbadd098d0c1b4455daae8025210.jpg'),
(2, 'Starters', 'https://storcpdkenticomedia.blob.core.windows.net/media/recipemanagementsystem/media/recipe-media-files/recipes/retail/x17/2020_df_retail_super-easy-chicken-and-rice-soup_20247_760x580.jpg?ext=.jpg'),
(3, 'Paneer', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp6fDw0JteCpBJa_L396g-4w99EPeocLZlinFEEQSl0AkeBXxrhWl21S3AaLafCIYfFE8&usqp=CAU'),
(4, 'Shawarma', 'https://halal786.in/wp-content/uploads/2020/06/Chicken-Shawarma-rolls-Halal.png');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `user_name` varchar(25) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_table`
--

CREATE TABLE `product_table` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `product_price` int(11) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_table`
--

INSERT INTO `product_table` (`id`, `product_name`, `product_image`, `product_price`, `category`) VALUES
(1, 'Chicken Biriyani', 'https://res.cloudinary.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_508,h_320,c_fill/mhlpvwk9wjmqz0y5gp53', 130, 'Biriyani'),
(2, 'Mutton Biriyani', 'https://foodalltime.com/wp-content/uploads/2018/07/Hyderabadi-Mutton-Dum-Biryani-Recipe-_-Hyderabadi-Dum-Biryani-Recipe-1-1024x576.png', 180, 'Biriyani'),
(3, 'Chicken Soup', 'https://www.sharmispassions.com/wp-content/uploads/2020/03/CountryChickenSoup1-500x375.png', 180, 'Starters'),
(4, 'Fish Biriyani', 'https://www.bigbasket.com/media/uploads/recipe/w-l/1025_1.jpg', 160, 'Biriyani'),
(5, 'Prawn Biriyani', 'https://i0.wp.com/kalimirchbysmita.com/wp-content/uploads/2018/09/Prawns-Biryani-in-Microwave-Insta-01.jpg?resize=1537%2C1024', 180, 'Biriyani'),
(6, 'Clams Casino', 'https://assets.epicurious.com/photos/5de56a5a320765000847b407/master/pass/ClamsCasino_RECIPE_Props_112019_17252.jpg', 70, 'Starters'),
(7, 'Paneer tikka', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQo50PJ7Q18xJaYtcCKxdL0f3-L4I9NbWyVZsVZUTOsHAuWbQDJ', 120, 'Starters'),
(8, 'Mini Appetizer', 'https://images-gmi-pmc.edge-generalmills.com/c45210e0-0acb-4453-b5b2-5ebf286b7492.jpg', 80, 'Starters'),
(9, 'Paneer Tikka', 'https://www.indianhealthyrecipes.com/wp-content/uploads/2021/07/paneer-tikka-restaurant-style.jpg', 204, 'Paneer'),
(10, 'Paneer Butter Masala', 'https://i0.wp.com/vegecravings.com/wp-content/uploads/2017/04/paneer-butter-masala-recipe-step-by-step-instructions.jpg?fit=2592%2C1944&quality=65&strip=all&ssl=1', 150, 'Paneer'),
(11, 'Paalak Paneer', 'https://s3.amazonaws.com/images.chefinyou.com/main/opos-palak-paneer-recipe/main-img4.JPG', 170, 'Paneer'),
(12, 'Kadai Paneer', 'https://foodhistoria.com/wp-content/uploads/2021/10/Best-Kadai-Paneer-Recipe-e1633976638846.jpg', 180, 'Paneer'),
(13, 'Mexican Shawarma', 'https://bordercantina.restaurantengine.com/files/2020/02/mexican-2456038_640.jpg', 130, 'Shawarma'),
(14, 'Veg Shawarma roll', 'https://res.cloudinary.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_1024/lhmvvzzky7rpwzxjygko', 80, 'Shawarma'),
(15, 'Pepper Chicken Shawarma', 'https://hips.hearstapps.com/vidthumb/images/190130-chicken-shwarma-horizontal-1551285400.png', 150, 'Shawarma'),
(16, 'Arabic Rumali Roll Shawarma', 'https://www.qdelo.com/public/images/restaurant/items/item1061866316.jpg', 110, 'Shawarma');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `user_name` varchar(25) NOT NULL,
  `number` bigint(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `index_table`
--
ALTER TABLE `index_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_table`
--
ALTER TABLE `product_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `index_table`
--
ALTER TABLE `index_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_table`
--
ALTER TABLE `product_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
