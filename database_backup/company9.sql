-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: May 18, 2025 at 01:14 PM
-- Server version: 9.1.0
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_pk` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_fk` char(36) NOT NULL,
  `item_fk` char(36) NOT NULL,
  `comment_text` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_pk`, `user_fk`, `item_fk`, `comment_text`, `created_at`, `updated_at`) VALUES
('354c428d-3942-4420-b065-c62f314b1e91', '4218788d-03b7-4812-bd7d-31c8859e92d8', '8c74f46b-aff6-4f62-ae73-3c3896cff47b', 'The food is delicious', '2025-05-17 12:40:16', '2025-05-17 12:40:16'),
('4c9f77e7-e7b2-4b29-9d2c-f173c2f54157', 'b57f4087-f09b-4fea-812f-c1456096236a', '0769086c-a11b-448a-9827-a9e98bfab504', 'Absolutely delicious, will order again!', '2025-05-16 12:27:18', '2025-05-16 12:27:18'),
('4d2ecc87-f264-46f5-8175-00fe0f7e12c9', '4218788d-03b7-4812-bd7d-31c8859e92d8', '8c74f46b-aff6-4f62-ae73-3c3896cff47b', 'oh', '2025-05-17 12:55:12', '2025-05-17 12:55:12'),
('5a619c9c-7ed8-44a2-a26d-d414b9eaed60', '4218788d-03b7-4812-bd7d-31c8859e92d8', '8c74f46b-aff6-4f62-ae73-3c3896cff47b', 'ah', '2025-05-17 13:09:27', '2025-05-17 13:09:27'),
('5d2f77f7-3a7b-4e2b-94a2-f273c3f64158', '62c03ce5-4914-4b66-92c4-653d6121bba7', '08b93775-7b54-4617-ac32-fe44b66b155e', 'Perfectly cooked, really enjoyed it.', '2025-05-16 12:27:18', '2025-05-16 12:27:18'),
('617eb631-957e-4434-912c-e5ef77856f5b', '4218788d-03b7-4812-bd7d-31c8859e92d8', '0769086c-a11b-448a-9827-a9e98bfab504', 'This is my new comment test', '2025-05-17 12:38:50', '2025-05-17 12:38:50'),
('6c250a03-51b0-401e-9fdc-f35108c8a020', '4218788d-03b7-4812-bd7d-31c8859e92d8', '8c74f46b-aff6-4f62-ae73-3c3896cff47b', 'nyam', '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
('6e3f88f8-4b8c-5f3c-a5b3-f383d4f75159', '515e6e0f-c56e-44e4-980d-0d95c27022c1', '0c920532-b151-4287-95d6-86a9cbe42bfa', 'Not bad, but I expected a bit more flavor.', '2025-05-16 12:27:18', '2025-05-16 12:27:18'),
('73bf9164-7e8f-47f2-a169-69e1ad7358d9', '4218788d-03b7-4812-bd7d-31c8859e92d8', 'c2af3926-8d5c-4cb7-b301-884b78ff1cbe', 'asd', '2025-05-17 13:19:01', '2025-05-17 13:19:01'),
('76001184-1d3d-46d1-ab56-3b2a52bed279', '4218788d-03b7-4812-bd7d-31c8859e92d8', 'c2af3926-8d5c-4cb7-b301-884b78ff1cbe', 'Hey', '2025-05-17 13:09:57', '2025-05-17 13:09:57'),
('9d9bb9fe-b855-41ae-9274-9a00172f55fb', '4218788d-03b7-4812-bd7d-31c8859e92d8', '8c74f46b-aff6-4f62-ae73-3c3896cff47b', 'aaa', '2025-05-17 13:00:14', '2025-05-17 13:00:14'),
('ac57a9f0-0db6-41d5-98b4-2a6e6bfedb92', '4218788d-03b7-4812-bd7d-31c8859e92d8', 'c2af3926-8d5c-4cb7-b301-884b78ff1cbe', 'as', '2025-05-17 13:10:42', '2025-05-17 13:10:42'),
('b0711429-d078-4199-925d-0e71081eeeb2', '4218788d-03b7-4812-bd7d-31c8859e92d8', 'c2af3926-8d5c-4cb7-b301-884b78ff1cbe', 'hihi', '2025-05-17 13:15:24', '2025-05-17 13:15:24'),
('b5c22dd5-922c-474a-94f0-3ec1b0153732', '4218788d-03b7-4812-bd7d-31c8859e92d8', '8c74f46b-aff6-4f62-ae73-3c3896cff47b', 'delicious', '2025-05-17 12:40:52', '2025-05-17 12:40:52'),
('be7a3abb-2791-4698-a32a-c37489f8b154', '4218788d-03b7-4812-bd7d-31c8859e92d8', '8c74f46b-aff6-4f62-ae73-3c3896cff47b', 'ah', '2025-05-17 13:09:32', '2025-05-17 13:09:32'),
('d05dbbb6-b4a1-4dd7-b116-6f1986b3699a', '4218788d-03b7-4812-bd7d-31c8859e92d8', 'c2af3926-8d5c-4cb7-b301-884b78ff1cbe', 'as', '2025-05-17 13:10:48', '2025-05-17 13:10:48'),
('d7c25c33-47bf-402c-a310-46d445119f5e', '4218788d-03b7-4812-bd7d-31c8859e92d8', 'c2af3926-8d5c-4cb7-b301-884b78ff1cbe', 'as', '2025-05-17 13:14:09', '2025-05-17 13:14:09'),
('dae72ad3-8be5-4b82-924a-93a5505cc0f2', '4218788d-03b7-4812-bd7d-31c8859e92d8', '8c74f46b-aff6-4f62-ae73-3c3896cff47b', 'ah', '2025-05-17 13:09:50', '2025-05-17 13:09:50'),
('ec2a9956-0ada-491e-a7eb-d00e2230539c', '4218788d-03b7-4812-bd7d-31c8859e92d8', 'c2af3926-8d5c-4cb7-b301-884b78ff1cbe', 'as', '2025-05-17 13:11:26', '2025-05-17 13:11:26');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_pk` char(36) NOT NULL,
  `item_user_fk` char(36) DEFAULT NULL,
  `item_title` varchar(50) NOT NULL,
  `item_price` decimal(5,2) NOT NULL,
  `item_image_1` varchar(50) DEFAULT NULL,
  `item_image_2` varchar(50) DEFAULT NULL,
  `item_image_3` varchar(50) DEFAULT NULL,
  `item_created_at` int UNSIGNED DEFAULT NULL,
  `item_deleted_at` int UNSIGNED DEFAULT NULL,
  `item_blocked_at` int UNSIGNED DEFAULT NULL,
  `item_updated_at` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_pk`, `item_user_fk`, `item_title`, `item_price`, `item_image_1`, `item_image_2`, `item_image_3`, `item_created_at`, `item_deleted_at`, `item_blocked_at`, `item_updated_at`) VALUES
('0769086c-a11b-448a-9827-a9e98bfab504', 'b57f4087-f09b-4fea-812f-c1456096236a', 'Chicken Alfredo', 900.64, 'dish_36.jpg', 'dish_36.jpg', 'dish_36.jpg', 1747388963, 0, 0, 0),
('08b93775-7b54-4617-ac32-fe44b66b155e', '62c03ce5-4914-4b66-92c4-653d6121bba7', 'Chicken Parmesan', 643.92, 'dish_78.jpg', 'dish_78.jpg', 'dish_78.jpg', 1747388963, 0, 0, 0),
('0c920532-b151-4287-95d6-86a9cbe42bfa', '515e6e0f-c56e-44e4-980d-0d95c27022c1', 'Mango Sticky Rice', 828.07, 'dish_65.jpg', 'dish_65.jpg', 'dish_65.jpg', 1747388963, 0, 0, 0),
('0e9a0242-bdf4-4844-8534-7381ea182c48', '939f9920-e27f-42b8-b1d5-0b3760328054', 'Burrito', 519.49, 'dish_43.jpg', 'dish_43.jpg', 'dish_43.jpg', 1747388963, 0, 0, 0),
('11bad3e1-c228-4345-80bd-509fed8d577d', '65d44fab-f666-499c-bb03-397413e947d9', 'Chateaubriand', 888.56, 'dish_2.jpg', 'dish_2.jpg', 'dish_2.jpg', 1747388963, 0, 0, 0),
('137ab3d4-318b-4a69-893b-5e385124edef', 'b57f4087-f09b-4fea-812f-c1456096236a', 'Chili Con Carne', 588.68, 'dish_34.jpg', 'dish_34.jpg', 'dish_34.jpg', 1747388963, 0, 0, 0),
('158f95e2-fc96-425c-8a61-4f17cd6fd935', '53018c37-196c-439d-9f2d-e66b57b06844', 'Hummus', 629.73, 'dish_41.jpg', 'dish_41.jpg', 'dish_41.jpg', 1747388963, 0, 0, 0),
('296c1ee3-4ece-4733-8a5f-af4502f9bb03', '65d44fab-f666-499c-bb03-397413e947d9', 'Chicken Shawarma', 663.96, 'dish_99.jpg', 'dish_99.jpg', 'dish_99.jpg', 1747388963, 0, 0, 0),
('2abdceba-0769-490a-a3fc-c19b54327c7e', '65d44fab-f666-499c-bb03-397413e947d9', 'Masala Dosa', 893.21, 'dish_55.jpg', 'dish_55.jpg', 'dish_55.jpg', 1747388963, 0, 0, 0),
('35f108e3-029d-4b56-9ba7-61e5e630a0a7', '939f9920-e27f-42b8-b1d5-0b3760328054', 'Hamburger', 926.73, 'dish_52.jpg', 'dish_52.jpg', 'dish_52.jpg', 1747388963, 0, 0, 0),
('39fdc745-40ea-486c-8580-779a6072ab01', '939f9920-e27f-42b8-b1d5-0b3760328054', 'Maki Sushi', 637.09, 'dish_66.jpg', 'dish_66.jpg', 'dish_66.jpg', 1747388963, 0, 0, 0),
('3e77cd81-6e29-4c2c-b2cb-2fd435b06428', '515e6e0f-c56e-44e4-980d-0d95c27022c1', 'Bibimbap', 912.70, 'dish_71.jpg', 'dish_71.jpg', 'dish_71.jpg', 1747388963, 0, 0, 0),
('48c64bdf-1bee-4ba3-85f1-4530b1840422', 'b398a1ea-4fdc-45b7-bf90-587bb05fb53c', 'Chili Con Carne', 935.16, 'dish_42.jpg', 'dish_42.jpg', 'dish_42.jpg', 1747388963, 0, 0, 0),
('4a828f51-b6e7-465a-a539-fa6f2d4211f9', 'be42a59e-822b-481e-aec1-5fa94328b986', 'Pad Thai', 674.16, 'dish_16.jpg', 'dish_16.jpg', 'dish_16.jpg', 1747388963, 0, 0, 0),
('4b02f5a7-f9ca-466a-8985-125591952cb7', '53018c37-196c-439d-9f2d-e66b57b06844', 'Clafoutis', 701.10, 'dish_47.jpg', 'dish_47.jpg', 'dish_47.jpg', 1747388963, 0, 0, 0),
('4bbacd04-5c28-42c9-a386-02898eb10fa1', '53018c37-196c-439d-9f2d-e66b57b06844', 'Nasi Goreng', 901.27, 'dish_80.jpg', 'dish_80.jpg', 'dish_80.jpg', 1747388963, 0, 0, 0),
('4d6886dc-1c40-4326-ba55-1699be0a4d1c', '939f9920-e27f-42b8-b1d5-0b3760328054', 'Bulgogi', 659.36, 'dish_98.jpg', 'dish_98.jpg', 'dish_98.jpg', 1747388963, 0, 0, 0),
('4f9dcc41-2a71-4bc1-8a6c-7b13d3dc6a6f', '515e6e0f-c56e-44e4-980d-0d95c27022c1', 'Chilaquiles', 668.77, 'dish_32.jpg', 'dish_32.jpg', 'dish_32.jpg', 1747388963, 0, 0, 0),
('4fa79a7c-69fc-4cb3-87f6-c99874928d29', '939f9920-e27f-42b8-b1d5-0b3760328054', 'Clafoutis', 682.56, 'dish_19.jpg', 'dish_19.jpg', 'dish_19.jpg', 1747388963, 0, 0, 0),
('50ce3457-50a9-48f9-b93e-e0fc400b1dae', '773bef29-ab20-4df0-a98d-6f0d4e09922c', 'Lamb Tagine', 810.97, 'dish_78.jpg', 'dish_78.jpg', 'dish_78.jpg', 1747388963, 0, 0, 0),
('5217373f-37d2-494a-9a07-eb4dd4caf349', 'be42a59e-822b-481e-aec1-5fa94328b986', 'Ragu', 817.45, 'dish_89.jpg', 'dish_89.jpg', 'dish_89.jpg', 1747388963, 0, 0, 0),
('572ddcfa-33f7-4a36-a5f6-3e9e5450e07b', '53018c37-196c-439d-9f2d-e66b57b06844', 'Tortilla Española', 606.61, 'dish_56.jpg', 'dish_56.jpg', 'dish_56.jpg', 1747388963, 0, 0, 0),
('615840c0-b058-4dfb-a376-3de8dd42b7f1', 'b398a1ea-4fdc-45b7-bf90-587bb05fb53c', 'Cannelloni', 881.84, 'dish_66.jpg', 'dish_66.jpg', 'dish_66.jpg', 1747388963, 0, 0, 0),
('61c60187-7631-4ea8-a06a-20f5d5ac53cc', '62c03ce5-4914-4b66-92c4-653d6121bba7', 'Pork Ribs', 754.46, 'dish_3.jpg', 'dish_3.jpg', 'dish_3.jpg', 1747388963, 0, 0, 0),
('6b1ea969-162a-4483-97ae-b9fbd494f292', '773bef29-ab20-4df0-a98d-6f0d4e09922c', 'Beef Brisket', 873.13, 'dish_33.jpg', 'dish_33.jpg', 'dish_33.jpg', 1747388963, 0, 0, 0),
('6ca123b9-9212-4879-92ce-896fa3440286', '773bef29-ab20-4df0-a98d-6f0d4e09922c', 'Hummus', 811.57, 'dish_36.jpg', 'dish_36.jpg', 'dish_36.jpg', 1747388963, 0, 0, 0),
('706df588-790b-406e-a286-f3d90d1b81b8', 'be42a59e-822b-481e-aec1-5fa94328b986', 'Arancini', 972.28, 'dish_72.jpg', 'dish_72.jpg', 'dish_72.jpg', 1747388963, 0, 0, 0),
('7bbf5142-c77c-4a9c-9db1-09adc6de6b10', 'b57f4087-f09b-4fea-812f-c1456096236a', 'Pork Ribs', 830.83, 'dish_26.jpg', 'dish_26.jpg', 'dish_26.jpg', 1747388963, 0, 0, 0),
('87e72c06-abf9-43a9-a11f-82eaa0228709', '773bef29-ab20-4df0-a98d-6f0d4e09922c', 'Schnitzel', 952.80, 'dish_89.jpg', 'dish_89.jpg', 'dish_89.jpg', 1747388963, 0, 0, 0),
('8c74f46b-aff6-4f62-ae73-3c3896cff47b', '25b1d996-bd55-4385-bea7-f1b72b752be6', 'Tortilla Española', 888.44, 'dish_49.jpg', 'dish_49.jpg', 'dish_49.jpg', 1747388963, 0, 0, 0),
('909a550c-0628-40f8-83ee-ce2d192e40ab', '65d44fab-f666-499c-bb03-397413e947d9', 'Mango Sticky Rice', 642.55, 'dish_90.jpg', 'dish_90.jpg', 'dish_90.jpg', 1747388963, 0, 0, 0),
('9d01bbc1-9f4e-4359-8d3e-0b6f4fd9163f', '515e6e0f-c56e-44e4-980d-0d95c27022c1', 'Chateaubriand', 692.28, 'dish_15.jpg', 'dish_15.jpg', 'dish_15.jpg', 1747388963, 0, 0, 0),
('a02a0fbc-249d-431b-a7ec-f5c2dbb90915', '939f9920-e27f-42b8-b1d5-0b3760328054', 'Chicken Alfredo', 934.69, 'dish_87.jpg', 'dish_87.jpg', 'dish_87.jpg', 1747388963, 0, 0, 0),
('a67e11d7-7d6c-45ce-bba7-7f10a8319b26', '65d44fab-f666-499c-bb03-397413e947d9', 'Salmon Teriyaki', 655.18, 'dish_65.jpg', 'dish_65.jpg', 'dish_65.jpg', 1747388963, 0, 0, 0),
('aa5d7964-5e67-43db-8182-d551f4c6384d', '53018c37-196c-439d-9f2d-e66b57b06844', 'Chicken Tikka Masala', 911.03, 'dish_5.jpg', 'dish_5.jpg', 'dish_5.jpg', 1747388963, 0, 0, 0),
('af1d7114-9f07-4fee-8088-989398353538', '62c03ce5-4914-4b66-92c4-653d6121bba7', 'Fish and Chips', 965.49, 'dish_38.jpg', 'dish_38.jpg', 'dish_38.jpg', 1747388963, 0, 0, 0),
('afdc22a9-54ad-41a9-8799-f316be1e6e95', 'b398a1ea-4fdc-45b7-bf90-587bb05fb53c', 'Tofu Scramble', 868.02, 'dish_52.jpg', 'dish_52.jpg', 'dish_52.jpg', 1747388963, 0, 0, 0),
('b622fdcd-2116-4391-9478-0c6b0915231f', 'b57f4087-f09b-4fea-812f-c1456096236a', 'Hummus', 579.59, 'dish_34.jpg', 'dish_34.jpg', 'dish_34.jpg', 1747388963, 0, 0, 0),
('b98a174d-40b0-48b9-9618-16f3fd3dead7', 'be42a59e-822b-481e-aec1-5fa94328b986', 'Tofu Stir Fry', 688.41, 'dish_54.jpg', 'dish_54.jpg', 'dish_54.jpg', 1747388963, 0, 0, 0),
('bf6b6c66-317f-403c-9f40-5b7cb1dfa440', '773bef29-ab20-4df0-a98d-6f0d4e09922c', 'Pizza Margherita', 782.04, 'dish_9.jpg', 'dish_9.jpg', 'dish_9.jpg', 1747388963, 0, 0, 0),
('c2af3926-8d5c-4cb7-b301-884b78ff1cbe', '25b1d996-bd55-4385-bea7-f1b72b752be6', 'Stuffed Bell Peppers', 905.93, 'dish_85.jpg', 'dish_85.jpg', 'dish_85.jpg', 1747388963, 0, 0, 0),
('c3990fc2-2ca6-4444-9e81-61a36026b107', 'b57f4087-f09b-4fea-812f-c1456096236a', 'Falafel', 854.88, 'dish_22.jpg', 'dish_22.jpg', 'dish_22.jpg', 1747388963, 0, 0, 0),
('ca1e2c57-8bf1-4a7c-b349-1e249410b5ab', '62c03ce5-4914-4b66-92c4-653d6121bba7', 'Kimchi', 707.37, 'dish_42.jpg', 'dish_42.jpg', 'dish_42.jpg', 1747388963, 0, 0, 0),
('cf119b2d-1719-4298-86d2-541fe858032b', 'b398a1ea-4fdc-45b7-bf90-587bb05fb53c', 'Fajitas', 507.45, 'dish_75.jpg', 'dish_75.jpg', 'dish_75.jpg', 1747388963, 0, 0, 0),
('cfb297e1-899b-466e-90cb-05788828fc97', '25b1d996-bd55-4385-bea7-f1b72b752be6', 'Burrito', 894.49, 'dish_46.jpg', 'dish_46.jpg', 'dish_46.jpg', 1747388963, 0, 0, 0),
('d1f4b6df-02c0-41d2-9ee9-78efb3d0eab1', 'b398a1ea-4fdc-45b7-bf90-587bb05fb53c', 'Masala Dosa', 654.52, 'dish_6.jpg', 'dish_6.jpg', 'dish_6.jpg', 1747388963, 0, 0, 0),
('d2053d7e-fa90-4286-830e-5b2801655df1', '62c03ce5-4914-4b66-92c4-653d6121bba7', 'Chilaquiles', 810.94, 'dish_75.jpg', 'dish_75.jpg', 'dish_75.jpg', 1747388963, 0, 0, 0),
('d31608d1-7327-4af4-9639-29a2ce682d91', '53018c37-196c-439d-9f2d-e66b57b06844', 'Tom Yum Soup', 760.27, 'dish_12.jpg', 'dish_12.jpg', 'dish_12.jpg', 1747388963, 0, 0, 0),
('d7244fdc-8ec3-49f8-a5cb-0ae5f41306c6', 'be42a59e-822b-481e-aec1-5fa94328b986', 'Crepes', 648.46, 'dish_47.jpg', 'dish_47.jpg', 'dish_47.jpg', 1747388963, 0, 0, 0),
('da3aa029-f62a-4ba5-a9c9-9234ed14997f', '773bef29-ab20-4df0-a98d-6f0d4e09922c', 'Mole Poblano', 744.42, 'dish_47.jpg', 'dish_47.jpg', 'dish_47.jpg', 1747388963, 0, 0, 0),
('e0efe1d7-d6cd-4cee-a682-18b5ff271b1f', '25b1d996-bd55-4385-bea7-f1b72b752be6', 'Panzanella', 860.95, 'dish_58.jpg', 'dish_58.jpg', 'dish_58.jpg', 1747388963, 0, 0, 0),
('e2799639-a22d-43de-a891-4aaafdaa3ea3', '65d44fab-f666-499c-bb03-397413e947d9', 'Ragu', 818.06, 'dish_34.jpg', 'dish_34.jpg', 'dish_34.jpg', 1747388963, 0, 0, 0),
('e4185dc5-dec2-4c06-8991-03eae76c9faf', 'b57f4087-f09b-4fea-812f-c1456096236a', 'Tofu Stir Fry', 713.18, 'dish_36.jpg', 'dish_36.jpg', 'dish_36.jpg', 1747388963, 0, 0, 0),
('e478b8be-a517-43d1-986f-12d35c347e5b', 'be42a59e-822b-481e-aec1-5fa94328b986', 'Roti', 948.68, 'dish_1.jpg', 'dish_1.jpg', 'dish_1.jpg', 1747388963, 0, 0, 0),
('ead64630-0a2f-4098-a824-c0272f477f2b', '62c03ce5-4914-4b66-92c4-653d6121bba7', 'Panzanella', 906.54, 'dish_52.jpg', 'dish_52.jpg', 'dish_52.jpg', 1747388963, 0, 0, 0),
('eb1ccf6c-ae1e-4b04-b89f-7b5615351d65', '515e6e0f-c56e-44e4-980d-0d95c27022c1', 'Pesto Pasta', 662.50, 'dish_52.jpg', 'dish_52.jpg', 'dish_52.jpg', 1747388963, 0, 0, 0),
('f215212f-f2f7-47b2-9c9c-e7ddb1f905c0', '25b1d996-bd55-4385-bea7-f1b72b752be6', 'Caesar Salad', 906.55, 'dish_45.jpg', 'dish_45.jpg', 'dish_45.jpg', 1747388963, 0, 0, 0),
('f27507c0-241e-45f8-aa07-0d47b496b037', '27763272-712a-4d0a-b574-cad7318106a0', 'Spaghetti Carbonara', 15.99, 'dish_1.jpg', 'dish_2.jpg', 'dish_3.jpg', 1747388962, 0, 0, 0),
('f6ff0010-c85d-4b28-a994-f4be05f3eb03', 'b398a1ea-4fdc-45b7-bf90-587bb05fb53c', 'Risotto', 834.59, 'dish_73.jpg', 'dish_73.jpg', 'dish_73.jpg', 1747388963, 0, 0, 0),
('f9ec15a2-04a2-4cf7-bf12-f1cd1a6fc927', '25b1d996-bd55-4385-bea7-f1b72b752be6', 'Moussaka', 535.75, 'dish_1.jpg', 'dish_1.jpg', 'dish_1.jpg', 1747388963, 0, 0, 0),
('fb840500-ec7a-48a8-bc29-3e58e5542f09', '515e6e0f-c56e-44e4-980d-0d95c27022c1', 'Beef Brisket', 897.77, 'dish_58.jpg', 'dish_58.jpg', 'dish_58.jpg', 1747388963, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_pk` char(36) NOT NULL,
  `role_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_pk`, `role_name`) VALUES
('16fd2706-8baf-433b-82eb-8c7fada847da', 'admin'),
('c56a4180-65aa-42ec-a945-5fd21dec0538', 'customer'),
('f47ac10b-58cc-4372-a567-0e02b2c3d479', 'partner'),
('9f8c8d22-5a67-4b6c-89d7-58f8b8cb4e15', 'restaurant');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_pk` char(36) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_last_name` varchar(20) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_created_at` int UNSIGNED DEFAULT NULL,
  `user_deleted_at` int UNSIGNED DEFAULT NULL,
  `user_blocked_at` int UNSIGNED DEFAULT NULL,
  `user_updated_at` int UNSIGNED DEFAULT NULL,
  `user_verified_at` int UNSIGNED DEFAULT NULL,
  `user_verification_key` char(36) DEFAULT NULL,
  `user_reset_password_key` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_pk`, `user_name`, `user_last_name`, `user_email`, `user_password`, `user_created_at`, `user_deleted_at`, `user_blocked_at`, `user_updated_at`, `user_verified_at`, `user_verification_key`, `user_reset_password_key`) VALUES
('048d5f1c-a1e7-4dd7-a40a-250ad162489e', 'JohnGlemteKoden', 'Customer', 'customer2@fulldemo.com', 'scrypt:32768:8:1$ti0zSdM5E7mqfAgf$217ed0beff6029f88d5b2f6502814835a12662a5855afc3dd56fb6e1f06f893edffcc3635be7ceeff566f87c8288d5371403f103e670147fcfdeb8d6519a9a9b', 1747388962, 0, 0, 0, 1747388962, 'b47317e3-7495-4c59-bdf3-3dfb57d0859f', 'dc2ed7b7-8786-41c2-a3f7-249800add5e8'),
('17f9f812-f6a3-4159-8b5e-2669deb252b5', 'Sharon', 'Arnold', 'kallen@example.net', 'scrypt:32768:8:1$sGMbdnNd0w53PDoB$6c47e543bbd60dd2d8e0460fb4f0395aa88a67a8364890a3c180f85df920c36f3c7215b5540609fa9db87c650b9fc66b23bbde6d5e127d4f7cfdc7cab38628ed', 1747388962, 0, 0, 0, 0, '2a38b5ab-8850-47f5-9fb7-a4a7f72bfb5a', '0'),
('1c06b3fb-b434-4091-9343-452ad09be506', 'Brenda', 'Howard', 'sarmstrong@example.com', 'scrypt:32768:8:1$WzObFQ4GljavhPst$c11e3c03be33a52f607d2071f0a81046033e33445665b19069d6069d4abd4dad866d963c1a970799385dc3e68e3324877aacf70ca35e5c0eebefae4388be472d', 1747388962, 0, 0, 0, 0, 'f58a5f4e-ce59-45db-8fe8-1c72845d78b7', '0'),
('1e8047ec-5c9d-4dc0-86d7-2dd8a4fe995d', 'UnverifiedJohn', 'Customer', 'Unverifiedcustomer@fulldemo.com', 'scrypt:32768:8:1$QpK2WB1wwuKy7WOY$03f83161b4194bf90033805e768179cad1802bf7a83f5524115bf35038bf4d1816c206f6ede8ec635b3bfc785cc6dbd768aab004743742033c8d2d930af7c09d', 1747388962, 0, 0, 0, 0, '2722bdea-432b-4f0b-b441-2a5e1dc27e66', '0'),
('25b1d996-bd55-4385-bea7-f1b72b752be6', 'Eclipse Bar & Gril', '', 'ericmoore@example.net', 'scrypt:32768:8:1$WlMAwM0VLJRBg4d4$6bf0f4f4484ff92daebd4bd3d653578569fc8740dc586dd25bcefd6c8f1b9e1de76e62df972c47fd4e545558165753a9cbedbb071f80002b616019b1754d3b27', 1747388963, 0, 0, 0, 0, '3be96fd6-6429-45ff-9999-4b6e1c21a142', '0'),
('27763272-712a-4d0a-b574-cad7318106a0', 'Johns Diner', 'Restaurant', 'restaurant@fulldemo.com', 'scrypt:32768:8:1$7J4Nsf6U3shjk9V5$472e93d124e175c8eaa2ef950f17b2df5443788d1995220f7bb866579a23fe0fbec61439289f6667db6f0b51a36a4e2f5421ce14cbd754379e3d7643a5a87314', 1747388962, 0, 0, 0, 1747388962, '536b9323-a1f5-47ea-8f27-06fdb2e85a23', '0'),
('2c3e124c-a942-4f6a-9550-b3ee6197ddc2', 'Erik', 'Boyd', 'thomasbarrett@example.org', 'scrypt:32768:8:1$sGMbdnNd0w53PDoB$6c47e543bbd60dd2d8e0460fb4f0395aa88a67a8364890a3c180f85df920c36f3c7215b5540609fa9db87c650b9fc66b23bbde6d5e127d4f7cfdc7cab38628ed', 1747388962, 0, 0, 0, 1747388962, 'e713ed3c-2454-4466-bc50-5de87c3969f4', '0'),
('2e10ffaf-fe36-4edf-8787-17069f71bcba', 'Heather', 'Mcdonald', 'washingtonnicole@example.com', 'scrypt:32768:8:1$WzObFQ4GljavhPst$c11e3c03be33a52f607d2071f0a81046033e33445665b19069d6069d4abd4dad866d963c1a970799385dc3e68e3324877aacf70ca35e5c0eebefae4388be472d', 1747388962, 0, 0, 0, 0, '827b737b-ea01-4e0c-b589-3948cb975abc', '0'),
('2f44cac2-3c7d-4580-bcfb-caa6a058862b', 'April', 'Mason', 'bcarter@example.org', 'scrypt:32768:8:1$sGMbdnNd0w53PDoB$6c47e543bbd60dd2d8e0460fb4f0395aa88a67a8364890a3c180f85df920c36f3c7215b5540609fa9db87c650b9fc66b23bbde6d5e127d4f7cfdc7cab38628ed', 1747388962, 0, 0, 0, 0, '04a86f21-389d-4ade-b989-f9b8ba0dafce', '0'),
('3aea3795-dbb1-4fd8-b924-3348a6087442', 'Leslie', 'Becker', 'george98@fakemail.io', 'scrypt:32768:8:1$WzObFQ4GljavhPst$c11e3c03be33a52f607d2071f0a81046033e33445665b19069d6069d4abd4dad866d963c1a970799385dc3e68e3324877aacf70ca35e5c0eebefae4388be472d', 1747388962, 0, 0, 0, 0, 'f3bca0ca-89ba-4b5c-a8ed-a35a37714939', '0'),
('3b1f6532-abf1-4d4f-8d02-61f7890ebed9', 'Santiago', 'Donoso', 'admin@fulldemo.com', 'scrypt:32768:8:1$WpDQZCw0jqmwzO0X$1f80a78acf409d2c5e50cabe64a263a3366e81b4cca1b7131154a932a7fadcdda827f5558c0bb5c12fba0063b2898facd6914325b9cc628a317c29d3185c5803', 1747388962, 0, 0, 0, 1747388962, '26134dc0-6959-4a80-8808-5e37aedb42bb', '0'),
('4218788d-03b7-4812-bd7d-31c8859e92d8', 'John', 'Customer', 'customer@fulldemo.com', 'scrypt:32768:8:1$SHWtQ06Cad7Sc60l$35f4e25724df24fc5c82e3166605864750e2f4e4eddd7dfd966e14522db646f998475a94652b17db5e61c9ff8256834da059a5720282d7a3a20c746627e5b7ac', 1747388962, 0, 0, 0, 1747388962, '110cd8ec-b7e3-4a54-af25-2d09083aff21', '0'),
('515e6e0f-c56e-44e4-980d-0d95c27022c1', 'Amber Waves Eatery', '', 'aprilbryant@example.org', 'scrypt:32768:8:1$WlMAwM0VLJRBg4d4$6bf0f4f4484ff92daebd4bd3d653578569fc8740dc586dd25bcefd6c8f1b9e1de76e62df972c47fd4e545558165753a9cbedbb071f80002b616019b1754d3b27', 1747388963, 0, 0, 0, 0, 'd551c370-af30-4913-aa18-8ce212ac05cb', '0'),
('53018c37-196c-439d-9f2d-e66b57b06844', 'Summit View Tavern', '', 'douglas08@example.com', 'scrypt:32768:8:1$WlMAwM0VLJRBg4d4$6bf0f4f4484ff92daebd4bd3d653578569fc8740dc586dd25bcefd6c8f1b9e1de76e62df972c47fd4e545558165753a9cbedbb071f80002b616019b1754d3b27', 1747388963, 0, 0, 0, 1747388963, 'a4fcdb2e-ca74-4bfa-be6d-0f2b5b4a30f0', '0'),
('62c03ce5-4914-4b66-92c4-653d6121bba7', 'Willow\'s Bistro', '', 'ojohnson@example.com', 'scrypt:32768:8:1$WlMAwM0VLJRBg4d4$6bf0f4f4484ff92daebd4bd3d653578569fc8740dc586dd25bcefd6c8f1b9e1de76e62df972c47fd4e545558165753a9cbedbb071f80002b616019b1754d3b27', 1747388963, 0, 0, 0, 1747388963, '36070d04-e0b2-4e89-bf48-030928bad7a0', '0'),
('65d44fab-f666-499c-bb03-397413e947d9', 'Crimson Oak Steakho', '', 'george15@example.net', 'scrypt:32768:8:1$WlMAwM0VLJRBg4d4$6bf0f4f4484ff92daebd4bd3d653578569fc8740dc586dd25bcefd6c8f1b9e1de76e62df972c47fd4e545558165753a9cbedbb071f80002b616019b1754d3b27', 1747388963, 0, 0, 0, 0, 'e346f10c-99f1-41b7-b181-ecbc27b927a6', '0'),
('67f475f0-5c55-4369-af63-8dd874eb01a9', 'Tim', 'Farmer', 'zrojas@fakemail.io', 'scrypt:32768:8:1$WzObFQ4GljavhPst$c11e3c03be33a52f607d2071f0a81046033e33445665b19069d6069d4abd4dad866d963c1a970799385dc3e68e3324877aacf70ca35e5c0eebefae4388be472d', 1747388962, 0, 0, 0, 1747388962, 'a4ce443a-07a0-4d16-ac72-fcef9b4cd672', '0'),
('6ccaefa0-4b82-4f9a-98f8-2a71718fde81', 'Thomas', 'Powell', 'elizabethlittle@gmail.com', 'scrypt:32768:8:1$WzObFQ4GljavhPst$c11e3c03be33a52f607d2071f0a81046033e33445665b19069d6069d4abd4dad866d963c1a970799385dc3e68e3324877aacf70ca35e5c0eebefae4388be472d', 1747388962, 0, 0, 0, 1747388962, '5e51a448-9ca3-4bc4-85b7-705b83fb2980', '0'),
('773bef29-ab20-4df0-a98d-6f0d4e09922c', 'The Velvet Vine', '', 'michael16@example.org', 'scrypt:32768:8:1$WlMAwM0VLJRBg4d4$6bf0f4f4484ff92daebd4bd3d653578569fc8740dc586dd25bcefd6c8f1b9e1de76e62df972c47fd4e545558165753a9cbedbb071f80002b616019b1754d3b27', 1747388963, 0, 0, 0, 0, '975206f5-3097-4b67-be29-5d26775169ab', '0'),
('82767691-cc57-4a58-b63b-49c1d3e4dee4', 'Juan', 'Dyer', 'wpage@mydomain.net', 'scrypt:32768:8:1$WzObFQ4GljavhPst$c11e3c03be33a52f607d2071f0a81046033e33445665b19069d6069d4abd4dad866d963c1a970799385dc3e68e3324877aacf70ca35e5c0eebefae4388be472d', 1747388962, 0, 0, 0, 1747388962, '8c6e33e9-1b4d-4d53-a9e8-fd544d212e46', '0'),
('8b4cedff-46e4-4819-bf17-7ec526d63ff4', 'John', 'Reed', 'nsalazar@example.org', 'scrypt:32768:8:1$sGMbdnNd0w53PDoB$6c47e543bbd60dd2d8e0460fb4f0395aa88a67a8364890a3c180f85df920c36f3c7215b5540609fa9db87c650b9fc66b23bbde6d5e127d4f7cfdc7cab38628ed', 1747388962, 0, 0, 0, 0, '14679572-0f98-406b-a418-6d2393f5f7b8', '0'),
('8d3eff69-442b-4f26-9e88-012b79f68a1d', 'Jennifer', 'Vasquez', 'jasmine62@example.org', 'scrypt:32768:8:1$sGMbdnNd0w53PDoB$6c47e543bbd60dd2d8e0460fb4f0395aa88a67a8364890a3c180f85df920c36f3c7215b5540609fa9db87c650b9fc66b23bbde6d5e127d4f7cfdc7cab38628ed', 1747388962, 0, 0, 0, 1747388962, '810a024d-9135-4c54-b9d9-f43386579bb6', '0'),
('939f9920-e27f-42b8-b1d5-0b3760328054', 'The Tasty Table', '', 'rbrown@example.net', 'scrypt:32768:8:1$WlMAwM0VLJRBg4d4$6bf0f4f4484ff92daebd4bd3d653578569fc8740dc586dd25bcefd6c8f1b9e1de76e62df972c47fd4e545558165753a9cbedbb071f80002b616019b1754d3b27', 1747388963, 0, 0, 0, 1747388963, '19023ed5-b5d0-4482-9e9b-6186bae7e0fa', '0'),
('9a41f960-2eb7-4d07-89f3-d3dd601589c0', 'Matthew', 'Lee', 'walkerjason@website.co', 'scrypt:32768:8:1$WzObFQ4GljavhPst$c11e3c03be33a52f607d2071f0a81046033e33445665b19069d6069d4abd4dad866d963c1a970799385dc3e68e3324877aacf70ca35e5c0eebefae4388be472d', 1747388962, 0, 0, 0, 1747388962, 'ca2f8bf3-5d3d-4f20-8b8e-652c42b8eb8e', '0'),
('9aa49090-a7c3-4bbd-866d-b514031967bc', 'Lawrence', 'Lopez', 'bhernandez@example.org', 'scrypt:32768:8:1$sGMbdnNd0w53PDoB$6c47e543bbd60dd2d8e0460fb4f0395aa88a67a8364890a3c180f85df920c36f3c7215b5540609fa9db87c650b9fc66b23bbde6d5e127d4f7cfdc7cab38628ed', 1747388962, 0, 0, 0, 0, '6e4e0a3b-438e-4ed4-99c3-e36056c3e847', '0'),
('af1c83c3-5ed1-44cf-8994-7d22e87a100a', 'Gerald', 'Coleman', 'zbaker@hotmail.com', 'scrypt:32768:8:1$WzObFQ4GljavhPst$c11e3c03be33a52f607d2071f0a81046033e33445665b19069d6069d4abd4dad866d963c1a970799385dc3e68e3324877aacf70ca35e5c0eebefae4388be472d', 1747388962, 0, 0, 0, 1747388962, 'd4d21b22-77e8-475d-9af6-abc98d9d55dc', '0'),
('b0272380-b9ab-42a6-a1e4-db28f006f760', 'Jacob', 'Brown', 'operry@example.net', 'scrypt:32768:8:1$sGMbdnNd0w53PDoB$6c47e543bbd60dd2d8e0460fb4f0395aa88a67a8364890a3c180f85df920c36f3c7215b5540609fa9db87c650b9fc66b23bbde6d5e127d4f7cfdc7cab38628ed', 1747388962, 0, 0, 0, 1747388962, '64422411-674e-4b5e-a474-6ef6746006b4', '0'),
('b38fa0dd-16c2-4fbf-a7c9-8e5956578064', 'John', 'Partner', 'partner@fulldemo.com', 'scrypt:32768:8:1$0rHKLGghnQdJBg5h$7fdd9a98d451cb6163be59d322cd275ea35319f7d0b1fc1ddb2eb04badabbf2572e2d690dc01c33e5e9b78f12dc21187a1accdb1598f13463b58cce883910622', 1747388962, 0, 0, 0, 1747388962, '2c7270e0-110c-4e09-9c4e-9de718e410fb', '0'),
('b398a1ea-4fdc-45b7-bf90-587bb05fb53c', 'The Midnight Diner', '', 'mercadoomar@example.net', 'scrypt:32768:8:1$WlMAwM0VLJRBg4d4$6bf0f4f4484ff92daebd4bd3d653578569fc8740dc586dd25bcefd6c8f1b9e1de76e62df972c47fd4e545558165753a9cbedbb071f80002b616019b1754d3b27', 1747388963, 0, 0, 0, 0, '5506ebf0-97f4-49cb-92da-23ef5abf8b4a', '0'),
('b57f4087-f09b-4fea-812f-c1456096236a', 'The Velvet Fork', '', 'zgutierrez@example.net', 'scrypt:32768:8:1$WlMAwM0VLJRBg4d4$6bf0f4f4484ff92daebd4bd3d653578569fc8740dc586dd25bcefd6c8f1b9e1de76e62df972c47fd4e545558165753a9cbedbb071f80002b616019b1754d3b27', 1747388963, 0, 0, 0, 1747388963, '7278a0b1-68dc-4817-8e4f-7e8622916a33', '0'),
('b8082b1f-5d7b-4c89-a80b-d64775d5684b', 'Angela', 'Payne', 'ymoore@mydomain.net', 'scrypt:32768:8:1$WzObFQ4GljavhPst$c11e3c03be33a52f607d2071f0a81046033e33445665b19069d6069d4abd4dad866d963c1a970799385dc3e68e3324877aacf70ca35e5c0eebefae4388be472d', 1747388962, 0, 0, 0, 1747388962, '6faa6e33-d4f2-422d-85ea-aa2ed73f9edd', '0'),
('be42a59e-822b-481e-aec1-5fa94328b986', 'Golden Harvest Bis', '', 'timothy49@example.org', 'scrypt:32768:8:1$WlMAwM0VLJRBg4d4$6bf0f4f4484ff92daebd4bd3d653578569fc8740dc586dd25bcefd6c8f1b9e1de76e62df972c47fd4e545558165753a9cbedbb071f80002b616019b1754d3b27', 1747388963, 0, 0, 0, 1747388963, '762ff925-29ba-4611-adfe-487763220518', '0'),
('c23980dc-d911-4c84-9ec4-824d98d4f660', 'Sheila', 'Bowen', 'carrcarlos@example.org', 'scrypt:32768:8:1$sGMbdnNd0w53PDoB$6c47e543bbd60dd2d8e0460fb4f0395aa88a67a8364890a3c180f85df920c36f3c7215b5540609fa9db87c650b9fc66b23bbde6d5e127d4f7cfdc7cab38628ed', 1747388962, 0, 0, 0, 0, '3d5b238f-a7a5-4f44-be33-46176d3167f1', '0'),
('ddd86d8f-b1f2-4149-a4d2-c66a2202afb9', 'Derek', 'Smith', 'ijones@website.co', 'scrypt:32768:8:1$WzObFQ4GljavhPst$c11e3c03be33a52f607d2071f0a81046033e33445665b19069d6069d4abd4dad866d963c1a970799385dc3e68e3324877aacf70ca35e5c0eebefae4388be472d', 1747388962, 0, 0, 0, 0, 'd11f5a1c-c970-4f30-bdc0-189c0f1a6e4b', '0'),
('fbc1de69-e044-4d17-91e0-a20dab02bfde', 'Crystal', 'Huber', 'waynebailey@example.net', 'scrypt:32768:8:1$sGMbdnNd0w53PDoB$6c47e543bbd60dd2d8e0460fb4f0395aa88a67a8364890a3c180f85df920c36f3c7215b5540609fa9db87c650b9fc66b23bbde6d5e127d4f7cfdc7cab38628ed', 1747388962, 0, 0, 0, 1747388962, '319f323b-c94c-48f1-aa8e-1d91b2abc246', '0'),
('fe263e8a-5632-402c-af20-0beb303f7ef6', 'Tina', 'Campbell', 'whiterussell@example.net', 'scrypt:32768:8:1$sGMbdnNd0w53PDoB$6c47e543bbd60dd2d8e0460fb4f0395aa88a67a8364890a3c180f85df920c36f3c7215b5540609fa9db87c650b9fc66b23bbde6d5e127d4f7cfdc7cab38628ed', 1747388962, 0, 0, 0, 1747388962, '1eec7c34-316f-4f8a-ad05-7476b8de9e6c', '0');

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `user_role_user_fk` char(36) NOT NULL,
  `user_role_role_fk` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`user_role_user_fk`, `user_role_role_fk`) VALUES
('3b1f6532-abf1-4d4f-8d02-61f7890ebed9', '16fd2706-8baf-433b-82eb-8c7fada847da'),
('25b1d996-bd55-4385-bea7-f1b72b752be6', '9f8c8d22-5a67-4b6c-89d7-58f8b8cb4e15'),
('27763272-712a-4d0a-b574-cad7318106a0', '9f8c8d22-5a67-4b6c-89d7-58f8b8cb4e15'),
('515e6e0f-c56e-44e4-980d-0d95c27022c1', '9f8c8d22-5a67-4b6c-89d7-58f8b8cb4e15'),
('53018c37-196c-439d-9f2d-e66b57b06844', '9f8c8d22-5a67-4b6c-89d7-58f8b8cb4e15'),
('62c03ce5-4914-4b66-92c4-653d6121bba7', '9f8c8d22-5a67-4b6c-89d7-58f8b8cb4e15'),
('65d44fab-f666-499c-bb03-397413e947d9', '9f8c8d22-5a67-4b6c-89d7-58f8b8cb4e15'),
('773bef29-ab20-4df0-a98d-6f0d4e09922c', '9f8c8d22-5a67-4b6c-89d7-58f8b8cb4e15'),
('939f9920-e27f-42b8-b1d5-0b3760328054', '9f8c8d22-5a67-4b6c-89d7-58f8b8cb4e15'),
('b398a1ea-4fdc-45b7-bf90-587bb05fb53c', '9f8c8d22-5a67-4b6c-89d7-58f8b8cb4e15'),
('b57f4087-f09b-4fea-812f-c1456096236a', '9f8c8d22-5a67-4b6c-89d7-58f8b8cb4e15'),
('be42a59e-822b-481e-aec1-5fa94328b986', '9f8c8d22-5a67-4b6c-89d7-58f8b8cb4e15'),
('048d5f1c-a1e7-4dd7-a40a-250ad162489e', 'c56a4180-65aa-42ec-a945-5fd21dec0538'),
('1c06b3fb-b434-4091-9343-452ad09be506', 'c56a4180-65aa-42ec-a945-5fd21dec0538'),
('1e8047ec-5c9d-4dc0-86d7-2dd8a4fe995d', 'c56a4180-65aa-42ec-a945-5fd21dec0538'),
('2e10ffaf-fe36-4edf-8787-17069f71bcba', 'c56a4180-65aa-42ec-a945-5fd21dec0538'),
('3aea3795-dbb1-4fd8-b924-3348a6087442', 'c56a4180-65aa-42ec-a945-5fd21dec0538'),
('4218788d-03b7-4812-bd7d-31c8859e92d8', 'c56a4180-65aa-42ec-a945-5fd21dec0538'),
('67f475f0-5c55-4369-af63-8dd874eb01a9', 'c56a4180-65aa-42ec-a945-5fd21dec0538'),
('6ccaefa0-4b82-4f9a-98f8-2a71718fde81', 'c56a4180-65aa-42ec-a945-5fd21dec0538'),
('82767691-cc57-4a58-b63b-49c1d3e4dee4', 'c56a4180-65aa-42ec-a945-5fd21dec0538'),
('9a41f960-2eb7-4d07-89f3-d3dd601589c0', 'c56a4180-65aa-42ec-a945-5fd21dec0538'),
('af1c83c3-5ed1-44cf-8994-7d22e87a100a', 'c56a4180-65aa-42ec-a945-5fd21dec0538'),
('b8082b1f-5d7b-4c89-a80b-d64775d5684b', 'c56a4180-65aa-42ec-a945-5fd21dec0538'),
('ddd86d8f-b1f2-4149-a4d2-c66a2202afb9', 'c56a4180-65aa-42ec-a945-5fd21dec0538'),
('17f9f812-f6a3-4159-8b5e-2669deb252b5', 'f47ac10b-58cc-4372-a567-0e02b2c3d479'),
('2c3e124c-a942-4f6a-9550-b3ee6197ddc2', 'f47ac10b-58cc-4372-a567-0e02b2c3d479'),
('2f44cac2-3c7d-4580-bcfb-caa6a058862b', 'f47ac10b-58cc-4372-a567-0e02b2c3d479'),
('8b4cedff-46e4-4819-bf17-7ec526d63ff4', 'f47ac10b-58cc-4372-a567-0e02b2c3d479'),
('8d3eff69-442b-4f26-9e88-012b79f68a1d', 'f47ac10b-58cc-4372-a567-0e02b2c3d479'),
('9aa49090-a7c3-4bbd-866d-b514031967bc', 'f47ac10b-58cc-4372-a567-0e02b2c3d479'),
('b0272380-b9ab-42a6-a1e4-db28f006f760', 'f47ac10b-58cc-4372-a567-0e02b2c3d479'),
('b38fa0dd-16c2-4fbf-a7c9-8e5956578064', 'f47ac10b-58cc-4372-a567-0e02b2c3d479'),
('c23980dc-d911-4c84-9ec4-824d98d4f660', 'f47ac10b-58cc-4372-a567-0e02b2c3d479'),
('fbc1de69-e044-4d17-91e0-a20dab02bfde', 'f47ac10b-58cc-4372-a567-0e02b2c3d479'),
('fe263e8a-5632-402c-af20-0beb303f7ef6', 'f47ac10b-58cc-4372-a567-0e02b2c3d479');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_pk`),
  ADD KEY `user_fk` (`user_fk`),
  ADD KEY `item_fk` (`item_fk`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_pk`),
  ADD KEY `item_user_fk` (`item_user_fk`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_pk`),
  ADD UNIQUE KEY `role_name` (`role_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_pk`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`user_role_user_fk`,`user_role_role_fk`),
  ADD KEY `user_role_role_fk` (`user_role_role_fk`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_fk`) REFERENCES `users` (`user_pk`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`item_fk`) REFERENCES `items` (`item_pk`) ON DELETE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`item_user_fk`) REFERENCES `users` (`user_pk`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `users_roles_ibfk_1` FOREIGN KEY (`user_role_user_fk`) REFERENCES `users` (`user_pk`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `users_roles_ibfk_2` FOREIGN KEY (`user_role_role_fk`) REFERENCES `roles` (`role_pk`) ON DELETE CASCADE ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
