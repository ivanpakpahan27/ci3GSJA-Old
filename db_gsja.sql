-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.14-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for db_gsja
CREATE DATABASE IF NOT EXISTS `db_gsja` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `db_gsja`;

-- Dumping structure for table db_gsja.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table db_gsja.categories: ~2 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `user_id`, `name`, `created_at`) VALUES
	(3, 3, 'Warta', '2021-12-08 22:56:37'),
	(6, 3, 'Renungan', '2021-12-08 22:57:10');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table db_gsja.comments
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table db_gsja.comments: ~2 rows (approximately)
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `created_at`) VALUES
	(1, 2, 'John Doe', 'jdoe@gmail.com', 'Great Post!', '2017-03-17 20:57:29'),
	(2, 2, 'Jan Doe', 'jane@yahoo.com', 'Thank you for this awesome post', '2017-03-17 21:05:58');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;

-- Dumping structure for table db_gsja.gallery
CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `upload_image` varchar(225) DEFAULT NULL,
  `date_taken` date DEFAULT NULL,
  `created_at` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table db_gsja.gallery: ~6 rows (approximately)
/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;
INSERT INTO `gallery` (`id`, `title`, `upload_image`, `date_taken`, `created_at`) VALUES
	(7, 'Lorem', 'Lighthouse.jpg', '2021-11-30', '0000-00-00 00:00:00'),
	(8, 'Jenu', 'Chrysanthemum.jpg', '2021-12-02', '0000-00-00 00:00:00'),
	(9, 'asas', 'Penguins.jpg', '2021-12-04', '0000-00-00 00:00:00'),
	(10, 'asas', 'Tulips.jpg', '2021-12-02', '0000-00-00 00:00:00'),
	(11, 'asas', 'Tulips.jpg', '2021-12-09', '0000-00-00 00:00:00'),
	(12, 'ss', 'Koala.jpg', '2021-12-15', '12/10/2021 12:35:55 am'),
	(13, 'Terbaru', 'Tulips.jpg', '2021-12-11', '12/10/2021 01:19:22 am');
/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;

-- Dumping structure for table db_gsja.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `writter` varchar(50) DEFAULT 'Gembala Sidang GSJA',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table db_gsja.posts: ~4 rows (approximately)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `body`, `post_image`, `created_at`, `writter`) VALUES
	(6, 6, 3, 'Renungan 1', 'Renungan-1', '<h3 style="text-align: center;"><strong>Renungan Harian Bacaan Injil Hari Ini</strong></h3>\r\n\r\n<p style="text-align:justify">Kedatangan Mesias, yang digambarkan Nabi Yesaya, akan membawa sukacita besar seperti perjamuan surgawi dengan hidangan dan minuman yang lezat. Pada saat itu segala kesedihan, kelemahan, kerapuhan, dan maut akan dipulihkan. Inilah pengharapan yang dijanjikan Allah kepada kita melalui kedatangan Mesias. Pengharapan itu terpenuhi dalam diri Yesus yang menyembuhkan orang-orang sakit dan menghapuskan kekurangan dan kerapuhan kita. Orang lumpuh disembuhkan, orang timpang berjalan kembali, orang buta melihat, orang bisu berkata-kata, orang tuli mendengar. Kekurangan makanan dipuaskan oleh Yesus dengan kelimpahan roti. Masa Adven ini mengajak kita untuk mengarahkan pandangan kita kepada Yesus Kristus yang akan datang, yang merupakan pemenuhan janji Allah dan akan membuat semuanya menjadi baik. Janganlah kita putus asa, menjadi apatis dan kehilangan pengharapan, karena menghadapi penyakit, kerapuhan kita, dan kebobrokan dalam masyarakat. Allah yang datang dalam diri Yesus itu akan membuat semua itu menjadi baik.</p>\r\n', 'noimage.jpg', '2021-12-08 23:08:11', 'Gembala Sidang GSJA'),
	(9, 6, 3, 'Renungan 2', 'Renungan-2', '<p>Tes Blog</p>\r\n', 'noimage.jpg', '2021-12-09 00:04:28', 'Matius Junianto'),
	(10, 6, 3, 'Renungan 4', 'Renungan-4', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus placerat dapibus placerat. Cras id arcu massa. Nulla facilisi. Quisque gravida faucibus est, non sagittis leo congue non. Duis condimentum tortor eu consequat molestie. Sed eget ante quam. Donec non tellus vel velit imperdiet efficitur nec eu lacus. Ut suscipit sapien vel bibendum pretium. Ut accumsan nunc in libero consectetur mattis. Mauris lorem turpis, tincidunt et libero ut, eleifend volutpat ante. Sed vestibulum odio pretium nulla varius, ac accumsan velit volutpat. Aliquam molestie, nunc sit amet faucibus consectetur, risus leo laoreet nisi, vitae tristique tortor turpis ac odio. Vivamus et ultrices lectus. Sed congue tristique ante, a sagittis justo ultricies vitae.</p>\r\n\r\n<p>Nullam commodo odio mi, id efficitur arcu fringilla in. Sed placerat malesuada lacinia. Etiam libero tellus, pulvinar sed ipsum ac, scelerisque venenatis est. Mauris ipsum est, rhoncus non ullamcorper vel, suscipit id turpis. Pellentesque volutpat elementum tempus. Phasellus tincidunt nulla porttitor, mollis augue ut, rhoncus est. Quisque non posuere orci, id interdum sem. Nullam sit amet interdum nulla, id fringilla justo. Nam sed congue ante, in varius nulla. Ut quis mattis nibh. Donec aliquet pharetra ligula, eu tempus odio dictum nec. Maecenas id velit dolor. Nullam consectetur nisl purus, in laoreet orci ullamcorper vitae. In consequat tempor vulputate.</p>\r\n\r\n<p>Nunc rutrum posuere sapien eu vehicula. Nunc interdum venenatis odio sit amet bibendum. Pellentesque non massa in sem mollis volutpat eget vel turpis. Proin id nibh eros. Vestibulum vitae mauris aliquam, varius mi vel, rutrum turpis. Duis imperdiet vel quam non aliquam. Morbi a venenatis mi. Proin at mattis urna. Morbi blandit nulla sit amet commodo pellentesque. Cras eu accumsan nisi, sit amet eleifend ex.</p>\r\n\r\n<p>Maecenas eleifend, dolor in pretium imperdiet, ipsum nisi vestibulum leo, eget consectetur lorem lacus vehicula felis. Quisque id libero sed sem pellentesque rutrum. Praesent iaculis mauris tortor, at condimentum dolor convallis ut. Duis erat est, efficitur eget metus vel, elementum feugiat nulla. Quisque eget arcu nibh. Aenean id iaculis diam. Vestibulum viverra turpis et quam consectetur ullamcorper. Nulla et dignissim quam. Praesent eleifend congue venenatis. Quisque eleifend elit sapien, tincidunt iaculis justo ornare in. Proin turpis justo, blandit varius libero in, gravida finibus erat.</p>\r\n', 'noimage.jpg', '2021-12-09 08:51:55', 'Matius Junianto'),
	(11, 6, 3, 'Renungan 5', 'Renungan-5', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus placerat dapibus placerat. Cras id arcu massa. Nulla facilisi. Quisque gravida faucibus est, non sagittis leo congue non. Duis condimentum tortor eu consequat molestie. Sed eget ante quam. Donec non tellus vel velit imperdiet efficitur nec eu lacus. Ut suscipit sapien vel bibendum pretium. Ut accumsan nunc in libero consectetur mattis. Mauris lorem turpis, tincidunt et libero ut, eleifend volutpat ante. Sed vestibulum odio pretium nulla varius, ac accumsan velit volutpat. Aliquam molestie, nunc sit amet faucibus consectetur, risus leo laoreet nisi, vitae tristique tortor turpis ac odio. Vivamus et ultrices lectus. Sed congue tristique ante, a sagittis justo ultricies vitae.</p>\r\n\r\n<p>Nullam commodo odio mi, id efficitur arcu fringilla in. Sed placerat malesuada lacinia. Etiam libero tellus, pulvinar sed ipsum ac, scelerisque venenatis est. Mauris ipsum est, rhoncus non ullamcorper vel, suscipit id turpis. Pellentesque volutpat elementum tempus. Phasellus tincidunt nulla porttitor, mollis augue ut, rhoncus est. Quisque non posuere orci, id interdum sem. Nullam sit amet interdum nulla, id fringilla justo. Nam sed congue ante, in varius nulla. Ut quis mattis nibh. Donec aliquet pharetra ligula, eu tempus odio dictum nec. Maecenas id velit dolor. Nullam consectetur nisl purus, in laoreet orci ullamcorper vitae. In consequat tempor vulputate.</p>\r\n\r\n<p>Nunc rutrum posuere sapien eu vehicula. Nunc interdum venenatis odio sit amet bibendum. Pellentesque non massa in sem mollis volutpat eget vel turpis. Proin id nibh eros. Vestibulum vitae mauris aliquam, varius mi vel, rutrum turpis. Duis imperdiet vel quam non aliquam. Morbi a venenatis mi. Proin at mattis urna. Morbi blandit nulla sit amet commodo pellentesque. Cras eu accumsan nisi, sit amet eleifend ex.</p>\r\n\r\n<p>Maecenas eleifend, dolor in pretium imperdiet, ipsum nisi vestibulum leo, eget consectetur lorem lacus vehicula felis. Quisque id libero sed sem pellentesque rutrum. Praesent iaculis mauris tortor, at condimentum dolor convallis ut. Duis erat est, efficitur eget metus vel, elementum feugiat nulla. Quisque eget arcu nibh. Aenean id iaculis diam. Vestibulum viverra turpis et quam consectetur ullamcorper. Nulla et dignissim quam. Praesent eleifend congue venenatis. Quisque eleifend elit sapien, tincidunt iaculis justo ornare in. Proin turpis justo, blandit varius libero in, gravida finibus erat.</p>\r\n', 'noimage.jpg', '2021-12-09 08:52:37', 'Matius Junianto'),
	(12, 6, 3, 'lll', 'lll', '<p>lllll</p>\r\n', 'Penguins.jpg', '2021-12-10 00:12:26', 'Matius Junianto');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Dumping structure for table db_gsja.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table db_gsja.users: ~2 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `zipcode`, `email`, `username`, `password`, `register_date`) VALUES
	(1, 'Brad Traversy', '01913', 'brad@gmail.com', 'brad', 'e10adc3949ba59abbe56e057f20f883e', '2017-04-10 20:14:31'),
	(2, 'John Doe', '90210', 'jdoe@gmail.com', 'john', 'e10adc3949ba59abbe56e057f20f883e', '2017-04-10 21:12:14'),
	(3, 'Ivan Pakpahan', '-', 'ivan@yahoo.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2021-12-08 22:17:29');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
