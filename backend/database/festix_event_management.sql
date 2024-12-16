-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 15, 2024 at 03:21 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `festix_event_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` enum('Musik','Artis','Tips') NOT NULL,
  `author` varchar(100) NOT NULL,
  `authorPic` varchar(255) DEFAULT NULL,
  `authorBio` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `content` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `category`, `author`, `authorPic`, `authorBio`, `date`, `image`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Momen Tak Terlupakan di Hidup NDX AKA', 'Musik', 'John Doe', '/public/images/john.jpg', 'Tech Enthusiast', '2024-12-16', '/public/images/blog1.png', 'Ini adalah konten blog pertama yang telah diperbarui.', '2024-12-14 16:23:37', '2024-12-15 12:58:00'),
(5, 'Kisah di Balik Bernadya dan Karyanya', 'Musik', 'Gema Show', '/public/images/john.jpg', 'Ultrama', '2024-12-09', '/public/images/blog2.png', 'Ini adalah is konten.', '2024-12-15 01:38:57', '2024-12-15 13:02:34'),
(6, 'Rizky Febian: Musisi Muda Berbakat', 'Artis', 'Wisnu', '/public/images/john.jpg', 'Freelancer', '2024-12-12', '/public/images/blog4.png', 'www', '2024-12-15 07:34:34', '2024-12-15 13:09:31'),
(7, 'Kisah Sukses Tulus: Dari Nol Hingga jadi Bintang', 'Artis', 'Wisnu', '/public/images/john.jpg', 'Freelancer', '2024-12-23', '/public/images/blog3.png', 'Ini adalah konten.', '2024-12-15 13:08:25', '2024-12-15 13:08:25'),
(8, 'Perjalanan Lagu Perahu Kertas: Dari Ide Hingga Jadi Hits', 'Musik', 'Gema Show', '/public/images/john.jpg', 'Youtuber', '2024-12-16', '/public/images/blog5.png', 'Ini adalah  isi konten.\n', '2024-12-15 13:10:15', '2024-12-15 13:10:15'),
(9, 'Kisah di Balik Lagu Hits Satru Karya Denny Caknan', 'Musik', 'Tara Arts', '/public/images/john.jpg', 'Youtuber', '2024-12-16', '/public/images/blog6.png', 'Ini adalah konten.\n', '2024-12-15 13:11:15', '2024-12-15 13:11:15'),
(10, '9 Outfit Nonton Konser Stylish dan Nyaman, Tanpa Ribet!', 'Tips', 'Wisnu', '/public/images/john.jpg', 'Freelancer', '2024-12-18', '/public/images/blog7.png', 'Ini adalah konten.', '2024-12-15 13:15:09', '2024-12-15 13:15:09'),
(11, 'Baru Pertama Nonton Konser? Ini Dia 10 Tips Nonton Konser Pemula!', 'Tips', 'Wisnu', '/public/images/john.jpg', 'Freelancer', '2024-12-27', '/public/images/blog8.png', 'Ini adalah konten', '2024-12-15 13:16:29', '2024-12-15 13:16:29');

-- --------------------------------------------------------

--
-- Table structure for table `communities`
--

CREATE TABLE `communities` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  `category` enum('Pop','Rock','Lainnya') NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `whatsappLink` varchar(255) DEFAULT NULL
);

--
-- Dumping data for table `communities`
--

INSERT INTO `communities` (`id`, `title`, `description`, `content`, `category`, `image`, `whatsappLink`) VALUES
(3, 'Komunitas Reality Club Fans Surabaya', 'Komunitas Reality Club Fans adalah tempat berkumpulnya para penggemar band Reality Club dari berbagai latar belakang dan daerah. Kami adalah komunitas penggemar yang aktif dalam mendukung karya-karya Reality Club dan berbagi antusiasme terhadap musik alternatif Indonesia.', 'Komunitas Reality Club Fans adalah tempat berkumpulnya para penggemar band Reality Club dari berbagai latar belakang dan daerah. Kami adalah komunitas penggemar yang aktif dalam mendukung karya-karya Reality Club dan berbagi antusiasme terhadap musik alternatif Indonesia.', 'Rock', '/public/images/kmrc.png', 'https://wa.me/6288123456789'),
(4, 'Waktu Indonesia Bernadya', 'Waktu Indonesia Bernadya', 'Komunitas khusus buat orang-orang yang sedang dilanda kegalauan, patah hati, overthinking, gagal move-on, dan yang pastinya suka lagu lagu Bernadya yagesya', 'Pop', '/public/images/wib.png', 'www.youtube.com'),
(5, 'Mootiara', 'Mootiara', 'Tempat berkumpulnya penggemar lagu pop romantis Tiara Andini. Berbagi pengalaman, info konser, dan selalu update karya terbaru. Yuk, join!', 'Pop', '/public/images/moot.png', 'https://wa.me/6288123456789'),
(6, 'Komunitas Dewa 19 (Baladewa)', 'Komunitas Dewa 19 (Baladewa)', 'Ayo berbagi kreativitas dan ciptakan momen berharga bersama. Jadilah bagian dari perjalanan seru ini! 🚀', 'Rock', '/public/images/baladewa.png', 'https://api.whatsapp.com/send/?phone=6288123456789&text&type=phone_number&app_absent=0'),
(7, 'Aka Familia', 'Aka Familia', 'Gabunglah ing AKa Familia! Ayo dadi bagean komunitas sing kebak inspirasi lan gawe harmoni bareng! 🎶✨', 'Lainnya', '/public/images/ndx.png', 'https://api.whatsapp.com/send/?phone=6288123456789&text&type=phone_number&app_absent=0'),
(11, 'Rizzfellas Community', 'Rizzfellas', 'Ini adalah komunitas bagi Buat penggemar Rizky Febian dan musik pop R&B. Di sini, kamu bisa berbagi pengalaman, info konser, dan karya terbaru Rizky Febian. Yuk, join dan tetap update!penggemar grup band Realit Club ya ges ya, ayo join kami  buat update update terkini terkait band Reality Club guys', 'Pop', '/public/images/jazz.jpg', 'https://chat.whatsapp.com/example2'),
(12, 'Komunitas apapun', 'Gaada', 'Gaada', 'Lainnya', '/public/images/sod.png', 'www.youtube.com');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `location` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `genre` enum('Pop','Rock','Jazz','Lainnya') NOT NULL,
  `type` enum('Festival','Konser') NOT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `additionalImage` varchar(255) DEFAULT NULL
);

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `date`, `location`, `price`, `genre`, `type`, `description`, `image`, `additionalImage`) VALUES
(22, 'Sound of Downtown Festival 2025', '2024-12-13', 'Bandung', 150000.00, 'Pop', 'Festival', 'Gaada', '/images/sod.png', '/public/images/soddetail.png'),
(47, 'Tunggu Aku di Bandung', '2024-12-13', 'Bandung', 300000.00, 'Pop', 'Konser', 'Band Sheila on 7 telah merilis harga tiket konser bertajuk \'Tunggu Aku di Bandung\'.\n\nKonser Tunggu Aku di Bandung ini akan digelar Sheila on 7 di Stadion Siliwangi pada 28 September 2024.\n\nBerdasarkan informasi yang dihimpun Redaksi PRFM, harga termurah untuk tiket nonton konser Sheila on 7 Tunggu Aku di Bandung yakni sebesar Rp325 ribu.\n\nSedangkan tiket termahal tiket nonton konser Sheila on 7 Tunggu Aku di Bandung yaitu sebesar Rp950 ribu.\n\nBerikut ini rangkuman harga tiket konser Sheila on 7 Tunggu Aku di Bandung:\n\n- CAT 1 Rp950 ribu\n- CAT 2 Rp525 ribu\n- Festival Rp475 ribu\n- CAT 3 Rp325 ribu.\n\nPerlu diketahui, semua harga di atas belum termasuk pajak pemerintah 10 persen, belum termasuk biaya layanan tiket 5 persen dan biaya lainnya.', '/images/so7.png', '/public/images/so7detail.png'),
(48, 'Tiba - Tiba Show', '2024-12-13', 'Jakarta', 500000.00, 'Pop', 'Festival', 'Nikmati pesta paling seru bersama Juicy Luicy featuring Adrian Khalif! Siapkan dirimu untuk malam penuh musik asyik, suasana seru, dan vibe yang tak terlupakan di LAVVA Plaza Senayan. Pesta ini akan digelar pada tanggal 30 Oktober 2024, jadi pastikan kamu tidak melewatkannya!\nAyo ajak teman-temanmu, rasakan euforia, dan ciptakan momen spesial bersama! Dengan Juicy Luicy dan Adrian Khalif, dijamin pestanya bakal penuh keseruan dan energi positif!', '/images/tibadetail.png', '/public/images/tiba.png'),
(49, 'Dewa ft All Star 2.0', '2024-12-27', 'Bandung', 500000.00, 'Rock', 'Konser', 'Konser Dewa 19 featuring All Stars 2.0 adalah pertunjukan musik megah yang akan menampilkan kolaborasi Dewa 19 bersama musisi-musisi rock legendaris dunia. Rencananya, acara ini akan berlangsung di Stadion Gelora Bung Karno pada 18 Januari 2025 mendatang.\n\nSejumlah nama besar telah memastikan diri untuk menjadi line up dalam acara spektakuler ini, seperti:\n\nAri Lasso\nVirzha\nEllo\nEric Martin dan Billy Sheehan dari MR. BIG\nGary Cherone dan Nuno Bettencourt dari Extreme\nJohn Waite dari Bad English\nDerek Sherinian\nDino Jelusick\nRon Bumblefoot Thal\nMereka semua akan tampil membawakan lagu-lagu dan aransemen terbaik yang belum pernah ada sebelumnya. Sajian musik ini juga akan semakin spesial dengan suguhan audio visual terbaik yang ga mungkin kamu lupakan.\n\nOleh karena itu, untuk kamu para pencinta musik rock dan Dewa 19, acara ini tidak boleh dilewatkan! Segera pesan tiketnya melalui tombol berikut ini sekarang juga!', '/images/dewa.jpg', '/public/images/dewadetail.webp'),
(50, 'Reality Club - Anything You Want Concert', '2024-12-13', 'Surabaya', 300000.00, 'Rock', 'Konser', 'Konser reality club', '/images/rc (2).jpg', '/public/images/rcdetail.jpg'),
(51, 'Pekan Gembira Ria', '2024-12-13', 'Jakarta', 120000.00, 'Pop', 'Festival', 'Pekan Gembira', '/images/pekan.jpg', '/public/images/pekandetail.jpg'),
(52, 'Java Jazz 2024', '2024-12-20', 'Jakarta', 300000.00, 'Lainnya', 'Festival', 'Java Jazz 2024 adalah festival jazz terbesar di Indonesia yang akan diselenggarakan di jakarta', '/images/java.webp', '/public/images/javadetail.jpg'),
(53, 'Sod', '2024-12-14', 'Bandung', 120000.00, 'Pop', 'Festival', 'Gada', '/images/java.webp', '/public/images/sod.png'),
(54, 'Wisnu', '2024-01-13', 'Jakarta', 200000.00, 'Pop', 'Konser', 'Gaada', '/images/kmrc.png', '/images/soddetail.png'),
(55, 'Aprilia', '2024-12-14', 'Gresik', 300000.00, 'Pop', 'Festival', 'Bebas', '/images/tiba.png', '/images/tibadetail.png'),
(56, 'Mahalini', '2024-12-16', 'Jakarta', 500000.00, 'Pop', 'Konser', 'terserah', '/images/rc.jpg', '/images/rcdetail.jpg'),
(57, 'Festix', '2024-12-15', 'Surabaya', 120000.00, 'Pop', 'Festival', 'Gaada', '/images/moot.png', '/images/pekandetail.jpg'),
(58, 'Maliq', '2024-12-31', 'Magetan', 100000.00, 'Jazz', 'Konser', 'Gaada', '/public/images/sod.png', '/public/images/sod.png'),
(59, 'I love you', '2024-12-16', 'Madiun', 200000.00, 'Pop', 'Festival', 'Gaada', '/images/moot.png', '/images/wib.png');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int NOT NULL,
  `event_id` int NOT NULL,
  `type` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `benefits` text,
  `stock` int NOT NULL
) ;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `event_id`, `type`, `price`, `benefits`, `stock`) VALUES
(15, 22, 'Reguler', 100000.00, 'Banyak', 10),
(97, 47, 'VIP', 500000.00, 'Duduk Depan Duta', 120),
(98, 48, 'Reguler', 500000.00, 'Dapat Es Teh', 50),
(99, 48, 'VIP', 1000000.00, 'Gaada', 19),
(100, 49, 'Reguler', 500000.00, 'Berdiri', 12),
(101, 49, 'VIP', 1000000.00, 'Duduk', 5),
(102, 50, 'VIP', 300000.00, 'Dapat Kopi', 50),
(103, 51, 'Reguler', 120000.00, 'Gada', 0),
(104, 51, 'VIP', 300000.00, 'Dapet es teh', 49),
(105, 52, 'Reguler', 300000.00, '-', 30),
(106, 52, 'VIP', 700000.00, 'Dapat merch', 70),
(107, 53, 'Reguler', 120000.00, 'Gaada', 12),
(108, 54, 'Reguler', 200000.00, 'Gaada', 12),
(110, 56, 'Ultra Violence', 1000000.00, 'Dapat ,merch', 80),
(111, 56, 'Reguler', 500000.00, 'Gada', 150),
(112, 57, 'VVIP', 300000.00, 'Gaada', 100),
(113, 59, 'VVIP', 200000.00, 'Gaada', 80);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_purchases`
--

CREATE TABLE `ticket_purchases` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `event_id` int NOT NULL,
  `ticket_id` int NOT NULL,
  `quantity` int NOT NULL,
  `purchase_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `birth_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `phone`, `birth_date`, `created_at`) VALUES
(1, 'test@example.com', 'testuser', '$2b$10$fghxM7G2YkuwSLnY6jVhJuJ5dxm3JJTXgUPGUWRWcCWWurtFyEWBy', '081234567890', '2000-01-01', '2024-12-11 16:32:20'),
(2, 'wisnu@kelompok.com', 'Wisnu', '$2b$10$N3Rjl7Aho4bIidyom2/TfOvSET6fcJEa4xOaxTlGsoJ8PyhGcNsfK', '085784672431', '2024-12-13', '2024-12-11 17:35:25'),
(3, 'wisnu@wisnu.com', 'User', '$2b$10$tjozwu5IqV4ItwLsVVFz2ePW44R51W.AioSXMIMJrWHS1CtqlUwom', '085784672431', '2024-12-13', '2024-12-11 18:20:33'),
(4, 'wisnu@unesa.com', 'Wisnu', '$2b$10$bmmuHKToB82Wm3jqL6VtrO0OrjgDGyiYnPADo0c/TDBLnGfAmnPbK', '085784672431', '2005-01-12', '2024-12-11 18:54:22'),
(5, 'wisnu@admin.com', 'Pratama', '$2b$10$7pJFXM9KzNYmCSTORricouf/RqqKyGKerMA9OkB3uyygZw0W8hAoC', '085784672431', '2024-12-31', '2024-12-11 19:34:13'),
(6, 'contoh@gmail.com', 'Wisnu', '$2b$10$bMNk1xfrJuSNFK/5zmLlDuysAM88LKzQsqSoDmFNmo2K5Ar70UEj6', '085784672431', '2024-12-20', '2024-12-12 03:33:39'),
(7, 'wisnu@gmail.com', 'Wisnu', '$2b$10$ijPSKUgY.PjUd.aX04Uzfuat266H95H4dFfMk8R6jQnphKDNRQwrS', '085784673121', '2024-12-21', '2024-12-12 03:39:22'),
(9, 'surabaya@gmail.com', 'Surabaya', '$2b$10$YIETr5Nwp.raa9WGse6ZH.F3z2GOwyDX9dfWGEmnRB173yJYfwS1i', '085784672431', '2024-12-15', '2024-12-14 15:03:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `communities`
--
ALTER TABLE `communities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_ibfk_1` (`event_id`);

--
-- Indexes for table `ticket_purchases`
--
ALTER TABLE `ticket_purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `ticket_id` (`ticket_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `communities`
--
ALTER TABLE `communities`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `ticket_purchases`
--
ALTER TABLE `ticket_purchases`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ticket_purchases`
--
ALTER TABLE `ticket_purchases`
  ADD CONSTRAINT `ticket_purchases_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `ticket_purchases_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`),
  ADD CONSTRAINT `ticket_purchases_ibfk_3` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
