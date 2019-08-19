-- Generation time: Mon, 19 Aug 2019 16:33:32 +0000
-- Host: mysql.hostinger.ro
-- DB name: u574849695_24
/*!40030 SET NAMES UTF8 */;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `likes`;
CREATE TABLE `likes` (
  `id` int(10) unsigned NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `likes_type_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `likes` VALUES ('1','29','4','98','2018-11-23 15:43:59','2019-07-30 15:25:23'),
('2','12','3','51','2018-11-10 23:10:26','2019-07-30 14:38:22'),
('3','18','2','62','2019-03-29 17:47:17','2019-07-22 04:12:06'),
('4','30','4','32','2019-08-13 16:15:39','2019-08-08 20:23:23'),
('5','42','3','96','2018-08-24 18:14:29','2019-08-15 21:59:06'),
('6','37','1','20','2019-03-03 06:56:16','2019-07-26 07:32:13'),
('7','44','4','68','2018-10-03 09:47:27','2019-07-28 09:48:26'),
('8','64','3','82','2019-07-13 05:50:53','2019-07-27 21:06:17'),
('9','50','4','88','2019-05-01 07:04:44','2019-08-15 19:03:53'),
('10','56','2','26','2019-06-11 18:56:40','2019-08-03 12:14:52'),
('11','23','4','78','2018-09-23 05:21:51','2019-07-23 04:41:18'),
('12','1','2','24','2018-11-25 03:49:11','2019-08-02 04:01:20'),
('13','8','4','36','2018-11-22 20:01:35','2019-08-02 05:22:29'),
('14','7','1','46','2018-11-24 18:24:29','2019-08-13 02:03:06'),
('15','28','4','91','2018-09-16 07:30:32','2019-07-21 04:44:44'),
('16','61','3','51','2019-06-02 01:55:49','2019-08-08 08:16:39'),
('17','18','4','91','2018-10-26 04:10:01','2019-07-30 23:29:53'),
('18','47','4','34','2019-04-12 20:25:11','2019-08-18 05:05:55'),
('19','58','2','91','2019-01-02 06:05:50','2019-08-13 19:32:19'),
('20','60','1','20','2019-02-05 15:36:55','2019-07-27 03:15:38'),
('21','67','4','46','2018-11-14 02:15:11','2019-08-06 15:34:45'),
('22','64','3','97','2019-04-19 02:37:59','2019-08-15 11:02:03'),
('23','5','2','44','2018-11-02 13:30:34','2019-08-01 05:27:16'),
('24','29','2','94','2018-11-15 05:39:29','2019-07-31 11:55:51'),
('25','17','4','76','2018-08-30 04:06:51','2019-08-05 07:42:17'),
('26','42','1','1','2019-06-14 20:33:58','2019-07-29 21:33:56'),
('27','60','3','59','2019-01-07 19:44:12','2019-08-17 08:31:39'),
('28','29','4','15','2019-04-10 09:18:06','2019-08-16 20:16:51'),
('29','13','1','67','2018-11-28 12:59:29','2019-07-30 14:26:09'),
('30','8','1','100','2019-01-21 21:24:11','2019-07-23 10:20:53'),
('31','65','1','2','2018-08-23 21:24:38','2019-08-13 19:09:13'),
('32','31','2','1','2019-05-17 15:27:22','2019-08-11 10:54:42'),
('33','51','3','70','2019-04-12 15:20:18','2019-08-11 17:07:49'),
('34','22','2','10','2019-05-23 22:39:17','2019-08-17 20:36:48'),
('35','40','3','14','2018-08-24 04:18:16','2019-07-27 06:14:29'),
('36','42','3','22','2018-10-30 00:32:32','2019-07-26 23:49:44'),
('37','4','2','5','2018-09-01 04:14:13','2019-08-07 04:35:03'),
('38','16','1','85','2018-10-23 07:40:36','2019-08-11 23:15:40'),
('39','11','3','30','2019-05-16 15:51:58','2019-07-29 00:03:44'),
('40','23','4','68','2019-05-04 18:29:31','2019-08-18 21:43:53'),
('41','47','3','44','2019-01-24 15:35:14','2019-08-18 20:17:02'),
('42','27','4','32','2018-12-02 16:51:45','2019-07-26 09:52:52'),
('43','45','2','69','2019-07-04 12:03:14','2019-08-07 11:11:09'),
('44','13','2','62','2019-02-02 22:21:23','2019-08-08 00:01:51'),
('45','1','4','25','2018-09-27 00:17:42','2019-07-27 02:52:13'),
('46','38','1','91','2019-06-12 18:13:39','2019-08-01 02:59:40'),
('47','16','4','94','2019-04-27 11:49:21','2019-08-07 19:45:50'),
('48','55','4','13','2019-02-28 19:38:58','2019-08-18 05:37:42'),
('49','11','1','85','2018-12-11 00:58:42','2019-08-19 07:00:29'),
('50','48','2','16','2019-07-20 17:36:46','2019-07-27 03:59:51'),
('51','55','2','70','2018-12-23 05:57:47','2019-07-24 15:44:44'),
('52','10','2','61','2019-07-17 23:59:55','2019-07-22 17:51:02'),
('53','52','4','42','2018-12-18 17:34:01','2019-07-25 21:48:57'),
('54','39','4','95','2019-08-11 17:49:34','2019-08-12 21:46:07'),
('55','38','1','36','2019-04-30 15:14:48','2019-08-11 13:35:45'),
('56','3','3','48','2018-09-19 20:54:16','2019-08-03 19:48:15'),
('57','57','1','15','2018-12-01 14:38:19','2019-07-22 14:03:02'),
('58','13','1','43','2019-06-27 10:29:22','2019-08-05 15:10:54'),
('59','1','3','81','2018-11-12 22:55:08','2019-07-30 18:05:02'),
('60','30','4','32','2019-01-16 03:39:34','2019-07-22 03:49:25'),
('61','32','3','42','2019-05-28 11:53:32','2019-08-11 01:54:45'),
('62','50','2','79','2018-08-24 18:25:50','2019-08-10 01:19:12'),
('63','64','1','17','2018-09-07 18:23:44','2019-08-09 12:57:37'),
('64','11','4','7','2019-02-11 15:11:23','2019-07-27 12:48:54'),
('65','36','1','12','2018-10-30 03:43:08','2019-08-07 22:12:06'),
('66','37','1','19','2018-09-10 18:17:28','2019-08-12 15:08:47'),
('67','26','2','79','2018-09-25 15:08:14','2019-08-14 08:55:10'),
('68','29','2','7','2019-08-03 11:59:19','2019-07-24 20:19:38'),
('69','3','2','22','2018-09-25 07:31:21','2019-08-02 10:58:38'),
('70','35','2','74','2019-05-21 01:02:42','2019-08-05 14:22:23'),
('71','27','3','68','2019-04-05 19:46:16','2019-08-10 13:06:20'),
('72','13','3','47','2018-08-25 21:04:41','2019-07-29 18:25:42'),
('73','35','1','10','2019-08-02 20:46:57','2019-08-10 05:40:13'),
('74','19','2','15','2019-06-29 22:01:27','2019-08-01 19:02:40'),
('75','25','3','46','2019-02-10 03:54:14','2019-08-15 15:10:54'),
('76','57','4','30','2019-06-29 18:04:24','2019-07-26 23:07:24'),
('77','27','3','8','2018-10-15 04:16:10','2019-08-09 20:14:15'),
('78','67','4','96','2019-04-22 07:10:13','2019-08-18 16:28:10'),
('79','55','1','19','2018-11-15 03:59:55','2019-08-13 02:52:38'),
('80','4','2','30','2019-07-12 16:15:04','2019-08-14 12:23:51'),
('81','42','4','18','2018-10-14 19:17:58','2019-07-27 22:10:07'),
('82','29','4','91','2019-03-02 23:53:21','2019-08-16 01:47:44'),
('83','14','2','94','2019-01-19 18:10:11','2019-08-06 04:06:39'),
('84','55','3','33','2019-06-10 07:36:46','2019-08-03 23:25:29'),
('85','27','4','48','2018-09-22 00:01:30','2019-07-20 14:09:49'),
('86','28','4','49','2019-03-16 16:30:54','2019-08-06 15:18:43'),
('87','51','1','50','2019-05-12 04:11:13','2019-07-24 00:46:42'),
('88','23','4','58','2018-08-26 07:30:03','2019-07-24 15:45:55'),
('89','11','3','83','2018-12-10 19:20:17','2019-07-25 07:56:28'),
('90','28','1','55','2019-04-28 15:34:53','2019-08-02 16:24:01'),
('91','36','1','69','2019-05-30 20:48:55','2019-08-13 03:35:40'),
('92','54','2','19','2019-08-02 21:31:55','2019-07-20 03:09:42'),
('93','28','2','41','2018-12-18 05:34:42','2019-07-22 07:46:45'),
('94','18','2','13','2019-01-18 12:12:33','2019-08-17 13:52:51'),
('95','22','3','26','2019-05-20 02:15:22','2019-08-03 09:40:42'),
('96','11','1','22','2019-06-29 00:49:44','2019-08-15 10:12:05'),
('97','55','4','11','2019-02-28 12:33:12','2019-07-23 23:50:43'),
('98','3','4','55','2019-04-13 15:33:46','2019-07-21 17:35:31'),
('99','14','3','90','2018-12-16 15:28:09','2019-08-10 08:42:17'),
('100','52','1','53','2019-01-12 19:01:32','2019-08-08 03:15:34'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

