-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2022 at 03:22 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinefoodphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'admin', 'CAC29D7A34687EB14B37068EE4708E7B', 'admin@mail.com', '', '2024-03-27 13:21:52');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `s_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`,`rs_id`,`email`, `title`, `slogan`, `price`, `img`) VALUES
(1, 1, 'www.T-Town Aligarh.com','Chole Bhature', 'Chole bhature is a popular North Indian dish of spicy chickpeas (chole) and deep-fried bread (bhatura or puri).', '140.00', 'chole.jpeg'),
(2, 1,'www.T-Town Aligarh.com', 'French Fries', 'French fries are a snack made from potatoes that are cut into thin strips, washed, partially dried, and deep-fried until golden brown.', '110.00', 'french.jpeg'),
(3, 1,'www.T-Town Aligarh.com', 'Chicken Madeira', 'Chicken Madeira, like Chicken Marsala, is made with chicken, mushrooms, and a special fortified wine. But, the wines are different;', '230.00', '62908bdf2f581.jpg'),
(4, 1,'www.T-Town Aligarh.com', 'Malai Kofta', 'A traditional curry hailing from the north of India; malai koftas are vegetarian koftas or croquettes made with spiced potato and paneer (Indian cottage cheese) steeped in a tomato curry.', '80.00', 'malai.jpeg'),
(5, 2,'www.Sher-e-Punjab.com', 'sandwich', 'A sandwich is a food made by putting different types of food between two pieces of bread, also known as slices or sheets. ', '49.00', 'sandwich.jpeg'),
(6, 2,'www.Sher-e-Punjab.com', 'Cheesy Mashed Potato', 'Deliciously Cheesy Mashed Potato. The ultimate mash for your Thanksgiving table or the perfect accompaniment to vegan sausage casserole.', '50.00', '606d74c416da5.jpg'),
(7, 2,'www.Sher-e-Punjab.com', 'Crispy Chicken Strips', 'Fried chicken strips, served with special honey mustard sauce.', '80.00', '606d74f6ecbbb.jpg'),
(8, 2,'www.Sher-e-Punjab.com', 'Lemon Grilled Chicken And Pasta', 'Marinated rosemary grilled chicken breast served with mashed potatoes and your choice of pasta.', '110.00', '606d752a209c3.jpg'),
(9, 3,'www.Khala Ka Hotel.com', 'Vegetable Fried Rice', 'Chinese rice wok with cabbage, beans, carrots, and spring onions.', '50.00', '606d7575798fb.jpg'),
(10, 3,'www.Khala Ka Hotel.com', 'Prawn Crackers', '12 pieces deep-fried prawn crackers', '70.00', '606d75a7e21ec.jpg'),
(11, 3, 'www.Khala Ka Hotel.com','Spring Rolls', 'Lightly seasoned shredded cabbage, onion and carrots, wrapped in house made spring roll wrappers, deep fried to golden brown.', '60.00', '606d75ce105d0.jpg'),
(12, 3,'www.Khala Ka Hotel.com', 'Manchurian Chicken', 'Chicken pieces slow cooked with spring onions in our house made manchurian style sauce.', '150.00', '606d7600dc54c.jpg'),
(13, 4, 'www.Dua Raheem.com',' Buffalo Wings', 'Fried chicken wings tossed in spicy Buffalo sauce served with crisp celery sticks and Blue cheese dip.', '500.00', '606d765f69a19.jpg'),
(14, 4,'www.Dua Raheem.com', 'Mac N Cheese Bites', 'Served with our traditional spicy queso and marinara sauce.', '90.00', '606d768a1b2a1.jpg'),
(15, 4, 'www.Dua Raheem.com','Signature Potato Twisters', 'Spiral sliced potatoes, topped with our traditional spicy queso, Monterey Jack cheese, pico de gallo, sour cream and fresh cilantro.', '60.00', '606d76ad0c0cb.jpg'),
(16, 4, 'www.Dua Raheem.com','Meatballs Penne Pasta', 'Garlic-herb beef meatballs tossed in our house-made marinara sauce and penne pasta topped with fresh parsley.', '100.00', '606d76eedbb99.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'none', '2024-03-01 05:17:49'),
(2, 3, 'in process', 'none', '2024-03-27 11:01:30'),
(3, 2, 'closed', 'thank you for your order!', '2024-03-27 11:11:41'),
(4, 3, 'closed', 'none', '2024-03-27 11:42:35'),
(5, 4, 'in process', 'none', '2024-03-27 11:42:55'),
(6, 1, 'rejected', 'none', '2024-03-27 11:43:26'),
(7, 7, 'in process', 'none', '2024-03-27 13:03:24'),
(8, 8, 'in process', 'none', '2024-03-27 13:03:38'),
(9, 9, 'rejected', 'thank you', '2024-03-27 13:03:53'),
(10, 7, 'closed', 'thank you for your ordering with us', '2024-03-27 13:04:33'),
(11, 8, 'closed', 'thanks ', '2024-03-27 13:05:24'),
(12, 5, 'closed', 'none', '2024-03-27 13:18:03');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--



CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `s_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;







--
-- Table structure for table `seller`
--

-- CREATE TABLE `seller` (
--   `restaurent` int(255) NOT NULL,a
--   `dishes` int(255) NOT NULL,
--   `total_order` int(255) NOT NULL,
--   `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `s_id`,`title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(1, 1,1, 'T-Town Aligarh', 'nthavern@mail.com', '3547854700', 'www.T-Town Aligarh.com', '8am', '8pm', 'mon-sat', 'anupshahr-aligarh rd, near mouji sweets, saheb bagh, aligarh, uttar pradesh', 'T-Town Aligarh.jpeg', '2024-03-27 08:10:35'),
(2, 2,2, 'Sher-e-Punjab', 'eataly@gmail.com', '0557426406', 'www.Sher-e-Punjab.com', '11am', '9pm', 'Mon-Sat', 'A2Z, Gulzar residency, S.S Nagar, Aligarh, Uttar Pradesh 202001', 'Sher-e-Punjab.jpeg', '2024-03-27 08:06:41'),
(3, 3, 3,  'Khala Ka Hotel', 'nanxiangbao45@mail.com', '1458745855', 'www.Khala Ka Hotel.com', '9am', '8pm', 'mon-sat', 'W36M+JPH, Jamia Urdu, S.S Nagar, Aligarh, Uttar Pradesh 202001', 'Khala Ka Hotel.jpg', '2024-03-27 08:04:30'),
(4, 4,4, 'Dua Raheem', 'hbg@mail.com', '6545687458', 'www.Dua Raheem.com', '7am', '8pm', 'mon-sat', ' Rifa Complex, Medical Rd, Jamia Urdu, S.S Nagar, Aligarh, Uttar Pradesh 202001', 'Dua Raheem.jpg', '2024-03-27 11:01:03');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Indian', '2024-03-27 08:07:35'),
(2, 'Indian', '2024-03-27 08:45:23'),
(3, 'Indian', '2024-03-27 08:45:25'),
(4, 'Indian', '2024-03-27 08:45:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `usertype` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT '1',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`,  `usertype`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(1, 'eric', 'customer','Eric', 'Lopez',  'eric@mail.com', '1458965547', 'a32de55ffd7a9c4101a0c5c8788b38ed', '87 Armbrester Drive', 1, '2024-03-27 08:40:36'),
(2, 'harry','customer', 'Harry', 'Holt', 'harryh@mail.com', '3578545458', 'bc28715006af20d0e961afd053a984d9', '33 Stadium Drive', 1, '2024-03-27 08:41:07'),
(3, 'james', 'customer', 'James', 'Duncan', 'james@mail.com', '0258545696', '58b2318af54435138065ee13dd8bea16', '67 Hiney Road', 1, '2024-03-27 08:41:37'),
(4, 'christine', 'customer', 'Christine', 'Moore', 'christine@mail.com', '7412580010', '5f4dcc3b5aa765d61d8327deb882cf99', '114 Test Address', 1, '2024-03-27 05:14:42'),
(5, 'scott', 'customer', 'Scott', 'Miller', 'scott@mail.com', '7896547850', '5f4dcc3b5aa765d61d8327deb882cf99', '63 Charack Road', 1, '2024-03-27 10:53:51'),
(6, 'liamoore', 'customer', 'Liam', 'Moore', 'liamoore@mail.com', '7896969696', '5f4dcc3b5aa765d61d8327deb882cf99', '122 Bleck Street', 1, '2024-03-27 12:57:00');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(1, 4, 'Spring Rolls', 2, '6.00', 'rejected', '2022-05-27 11:43:26'),
(2, 4, 'Prawn Crackers', 1, '7.00', 'closed', '2022-05-27 11:11:41'),
(3, 5, 'Chicken Madeira', 1, '23.00', 'closed', '2022-05-27 11:42:35'),
(4, 5, 'Cheesy Mashed Potato', 1, '5.00', 'in process', '2022-05-27 11:42:55'),
(5, 5, 'Meatballs Penne Pasta', 1, '10.00', 'closed', '2022-05-27 13:18:03'),
(6, 5, 'Yorkshire Lamb Patties', 1, '14.00', NULL, '2022-05-27 11:40:51'),
(7, 6, 'Yorkshire Lamb Patties', 1, '14.00', 'closed', '2022-05-27 13:04:33'),
(8, 6, 'Lobster Thermidor', 1, '36.00', 'closed', '2022-05-27 13:05:24'),
(9, 6, 'Stuffed Jacket Potatoes', 1, '8.00', 'rejected', '2022-05-27 13:03:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;


  -- ALTER TABLE `restaurant`
  -- MODIFY `s_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
