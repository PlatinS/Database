-- Generation time: Sun, 11 Aug 2019 15:19:59 +0000
-- Host: mysql.hostinger.ro
-- DB name: u574849695_22
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

DROP TABLE IF EXISTS `communities_users`;
CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`community_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities_users` VALUES ('1','1'),
('1','3'),
('1','15'),
('1','19'),
('1','31'),
('1','34'),
('1','40'),
('1','48'),
('1','50'),
('1','53'),
('1','67'),
('1','73'),
('1','85'),
('1','87'),
('1','97'),
('2','7'),
('2','12'),
('2','21'),
('2','40'),
('2','44'),
('2','52'),
('2','53'),
('2','54'),
('2','62'),
('2','77'),
('2','84'),
('2','89'),
('2','90'),
('2','94'),
('2','100'),
('3','2'),
('3','4'),
('3','31'),
('3','35'),
('3','36'),
('3','41'),
('3','55'),
('3','60'),
('3','70'),
('3','72'),
('3','82'),
('3','94'),
('3','100'),
('4','4'),
('4','6'),
('4','8'),
('4','13'),
('4','21'),
('4','24'),
('4','31'),
('4','32'),
('4','33'),
('4','35'),
('4','40'),
('4','43'),
('4','44'),
('4','53'),
('4','57'),
('4','60'),
('4','61'),
('4','62'),
('4','64'),
('4','67'),
('4','68'),
('4','71'),
('4','73'),
('4','85'),
('4','86'),
('4','91'),
('4','92'),
('4','95'),
('4','99'),
('5','8'),
('5','10'),
('5','20'),
('5','25'),
('5','28'),
('5','35'),
('5','39'),
('5','43'),
('5','50'),
('5','52'),
('5','56'),
('5','57'),
('5','60'),
('5','63'),
('5','66'),
('5','68'),
('5','74'),
('5','88'),
('5','92'),
('5','93'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

