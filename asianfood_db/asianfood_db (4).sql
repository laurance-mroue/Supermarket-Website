-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2024 at 01:38 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asianfood_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'laurance', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(3, 'admin2', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 2, 'laurance', 'laurancemroue0@gmail.com', '2', 'hi'),
(10, 4, 'zadahd', 'laurancemroue0@gmail.com', '1234', '1234'),
(11, 0, 'la', 'laurancemroue0@gmail.com', '1234', 'hi');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(9, 3, 'laurance', '3', 'laurancemroue0@gmail.com', 'cash on delivery', '1, 2, wwde, d 34cr, r4rcr, tv5tv, 5tvtrc - 222', 'Nissin Cereal Cisco Sawayaka Lemon Corn Flakes 6.35oz (180g) (3 x 1) - Lotte Poke Peace Kapuccho Choco Ball 1.3oz (37g) (3 x 1) - ', 6, '2023-12-29', 'pending'),
(11, 2, 'zizi', '7134444', 'laurancemroue5@gmail.com', 'cash on delivery', '1, 2, sdgs, eryyr, eyeyr, eyrey, yeyi - 2', 'Lotte Poke Peace Kapuccho Choco Ball 1.3oz (37g) (3 x 1) - ', 3, '2024-01-06', 'pending'),
(12, 2, 'fatima', '7134444', 'laurancemroue5@gmail.com', 'cash on delivery', '1, 2, sdgs, eryyr, eyeyr, eyrey, yeyi - 2', 'Mondelez Ritz Mini Sandwich Cookies - Mustard Cheese Flavor 1.44oz (41g) - 亿滋 乐之 迷你夹心饼干 - 芥末芝士味 1.44 (5 x 1) - Lotte Poke Peace Kapuccho Choco Ball 1.3oz (37g) (3 x 1) - ', 8, '2024-01-07', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `image`) VALUES
(3, 'Mondelez Ritz Mini Sandwich Cookies - Mustard Cheese Flavor 1.44oz (41g) - 亿滋 乐之 迷你夹心饼干 - 芥末芝士味 1.44', 'Snacks', 4.5, 'MondelezRitzMiniSandwichCookies-MustardCheeseFlavor1.44oz_41g__front.webp'),
(4, 'Lotte Poke Peace Kapuccho Choco Ball 1.3oz (37g)', 'Snacks', 2.99, 'LottePokePeaceKapucchoChocoBall1.3oz_37g__front.webp'),
(5, 'Nissin Cereal Cisco Sawayaka Lemon Corn Flakes 6.35oz (180g)', 'Snacks', 3, 'NissinCerealCiscoSawayakaLemonCornFlakes6.35oz_180g__front.webp'),
(6, 'Glico Pretz Sticks - Sweet Corn 1.09oz (31g)', 'Snacks', 1.25, 'GlicoPretzSticks-SweetCorn1.09oz_31g__front.webp'),
(7, 'Nissin Cereal Cisco Reikoku Choco Mint Corn Flakes 1.23oz (35g)', 'Snacks', 1.86, 'NissinCerealCiscoReikokuChocoMintCornFlakes1.23oz_35g__front.webp'),
(8, 'Nissin Crisp Choco Flakes 1.7oz', 'Snacks', 3.9, 'NissinCrispChocoFlakes1.7oz_front.webp'),
(9, 'Ocean Bomb My Hero Academia Sparkling Water - White Peach Flavor 11.1oz (330ml) - Ocean Bomb 我的英雄学院 ', 'Drinks', 2.59, 'OceanBombMyHeroAcademiaSparkingWater-WhitePeachFlavor11.1oz_330ml__front.webp'),
(10, 'Ocean Bomb Digimon Adventure Tailmon Sparkling Water - Pomegranate Flavor 11.1oz (330ml) - 数码宝贝 石榴味气', 'Drinks', 2.5, 'OceanBombDigimonAdventureTailmonSparklingWater-PomegranateFlavor11.1oz_330ml__front.webp'),
(11, 'Ocean Bomb Sailor Moon Sparkling Water - Pineapple Flavor 11.15oz (330ml) - Ocean Bomb 美少女战士 凤梨风味气泡水', 'Drinks', 2.59, 'OceanBombSailorMoonSparklingWater-PineappleFlavor11.15oz_330ml__front.webp'),
(12, 'Ocean Bomb Ultraman Tiga Sparkling Water - Green Apple Flavor 11.1oz (330ml) - Ocean Bomb 超人力霸王 青苹果风', 'Drinks', 2.56, 'OceanBombUltramanTigaSparklingWater-GreenAppleFlavor11.1oz_330ml__front.webp'),
(13, 'Ocean Bomb Digimon Adventure Agumon Sparkling Water - Banana Flavor 11.1oz (330ml) - 数码宝贝 香蕉味气泡水 11.', 'Drinks', 2.56, 'OceanBombDigimonAdventureAgumonSparklingWater-BananaFlavor11.1oz_330ml__front.webp'),
(14, 'Dragon Ball Drink', 'Drinks', 2.7, 'OceanBombDragonBallZGohanSparklingWater-WhiteGrapeFlavor11.1oz_330ml__front.webp'),
(15, 'Samyang Hot Chicken Ramen Jjajang Flavor - Big Bowl 3.7oz (105g)', 'Noodles', 3.5, 'SamyangHotChickenRamenJjajangFlavor-BigBowl3.7oz_105g__front.webp'),
(16, 'Samyang Hot Chicken Ramen Cheese Flavor - Big Bowl 3.7oz (105g)', 'Noodles', 3.5, 'SamyangHotChickenRamen-CheeseFlavorCup2.64oz_FRONT.webp'),
(17, 'Samyang Hot Chicken Ramen Carbonara Flavor - Big Bowl 3.7oz (105g)', 'Noodles', 3.5, 'SamyangHotChickenRamen-CarbonaraFlavorBigBowl3.7oz_front.webp'),
(18, 'Samyang Hot Chicken Ramen (2X Spicy) Cup 2.64oz', 'Noodles', 2.67, 'SamyangHotChickenRamen_2XSpicy_Cup2.64oz_Front.webp'),
(19, 'Samyang Hot Chicken Ramen Cup 2.47oz', 'Noodles', 2.67, 'SamyangHotChickenRamenCup2.47oz_Front.webp'),
(20, 'Nongshim Spicy Shrimp Flavor Cup Noodle Soup 2.3oz', 'Noodles', 2.29, 'NongshimSpicyShrimpFlavorCupNoodleSoup2.3oz_front.webp'),
(21, 'Christine&#39;s Bake Shop Pan De Coco 2.5oz (75g)', 'Bakery', 5.99, 'Christine_sBakeShopPanDeCoco2.5oz_75g__front.webp'),
(22, 'Kubota Japanese Rice Cake - Lychee Flavor 7.05oz (200g)', 'Bakery', 5.99, 'KubotaJapaneseRiceCake-LycheeFlavor7.05oz_200g__front.webp'),
(23, 'Kubota Japanese Rice Cake - Apple Flavor 7.05oz (200g)', 'Bakery', 5.29, 'KubotaJapaneseRiceCake-AppleFlavor7.05oz_200g__front.webp'),
(24, 'Kubota Japanese Rice Cake - Orange Flavor 7.05oz (200g)', 'Bakery', 5.29, 'KubotaJapaneseRiceCake-OrangeFlavor7.05oz_200g__front.webp'),
(25, 'Red Sakura Hello Kitty Pineapple Cakes 5.2oz (150g) - 红樱花 Hello Kitty 凤梨酥 5.2oz (150g)', 'Bakery', 4, 'RedSakuraHelloKittyPineappleCakes5.2oz_150g__front (1).webp'),
(26, 'D-Plus Baked Wheat Cake - Green Tea Flavor 2.82oz (80g)', 'Bakery', 5.6, 'D-PlusBakedWheatCake-GreenTeaFlavor2.82oz_80g__front.webp');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `number`, `password`, `address`) VALUES
(2, 'fatima', 'laurancemroue5@gmail.com', '7134444', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '1, 2, sdgs, eryyr, eyeyr, eyrey, yeyi - 2'),
(3, 'laurance', 'laurancemroue0@gmail.com', '3', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '1, 2, wwde, d 34cr, r4rcr, tv5tv, 5tvtrc - 222'),
(4, 'admin', 'lauramroue4@gmail.com', '23', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '1, esh, sfhs, sfh, shfhs, aah, sadha - 2'),
(5, 'malak', 'mrouelaurance@gmail.com', '123', '35139ef894b28b73bea022755166a23933c7d9cb', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
