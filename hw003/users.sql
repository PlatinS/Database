-- Generation time: Sun, 11 Aug 2019 15:04:05 +0000
-- Host: mysql.hostinger.ro
-- DB name: u574849695_25
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

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL  AUTO_INCREMENT PRIMARY KEY,
  `firstname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `number_votes` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` VALUES ('10','Adrien','O\'Keefe','abigale.blick@example.com','495 803-70-16','18','2019-07-23 03:25:16','2019-08-05 23:13:30'),
('79','Zoe','Herzog','adelbert.o\'connell@example.net','495 236-17-38','17','2018-12-15 06:06:42','2019-08-08 21:52:37'),
('99','Elroy','Metz','amie80@example.com','495 251-19-26','15','2019-07-30 07:24:50','2019-07-25 08:13:47'),
('86','Casimir','Satterfield','arielle94@example.com','495 598-51-44','25','2019-03-05 09:14:35','2019-08-10 08:25:31'),
('40','Shaun','Lubowitz','barbara.raynor@example.org','495 508-51-15','27','2018-09-12 15:16:45','2019-07-20 14:54:40'),
('3','Estelle','Mraz','bayer.mia@example.com','495 379-00-34','12','2019-02-03 11:26:46','2019-07-17 20:23:39'),
('92','Etha','Hoeger','beahan.nyasia@example.net','495 929-49-39','7','2018-08-20 01:38:03','2019-07-18 10:38:28'),
('56','Samantha','Schmidt','bechtelar.kaylie@example.net','495 777-76-72','7','2019-07-16 17:37:57','2019-08-05 18:08:44'),
('35','Abigale','Bayer','berneice78@example.net','495 833-47-44','2','2019-03-02 23:14:00','2019-07-17 13:27:07'),
('21','Brittany','Luettgen','camilla52@example.net','495 940-30-39','2','2018-10-27 00:05:12','2019-08-03 11:46:50'),
('2','Imelda','Hodkiewicz','candelario02@example.com','495 515-77-37','12','2018-08-19 19:33:53','2019-08-07 15:07:22'),
('96','Harmon','Streich','carlotta78@example.org','495 159-29-68','11','2018-09-26 03:06:37','2019-08-06 12:56:39'),
('9','Mellie','Roberts','chyna08@example.net','495 336-23-35','3','2019-02-16 09:23:21','2019-08-10 12:11:05'),
('19','Stuart','McGlynn','cjaskolski@example.com','495 359-37-05','9','2018-11-11 18:30:16','2019-07-12 21:25:08'),
('18','Alysa','Dibbert','cleora.kilback@example.net','495 465-59-68','2','2018-08-28 11:45:49','2019-07-25 21:25:21'),
('5','Judd','Lesch','cleveland51@example.org','495 440-51-24','8','2019-07-26 03:54:58','2019-07-15 13:02:25'),
('53','Dayna','Kulas','connor.cruickshank@example.org','495 891-13-36','23','2018-12-13 06:37:12','2019-08-08 12:33:30'),
('31','Rita','Okuneva','corwin.alice@example.org','495 154-84-18','17','2019-04-07 22:36:28','2019-08-07 00:14:27'),
('66','Vinnie','Reichert','csteuber@example.com','495 515-92-44','8','2019-01-26 14:57:56','2019-07-30 06:54:50'),
('77','Henry','Price','cullen13@example.com','495 945-35-26','19','2018-09-21 14:00:45','2019-07-26 15:47:51'),
('4','Irving','Christiansen','darlene22@example.com','495 127-22-89','4','2019-06-13 12:07:40','2019-07-12 22:17:51'),
('70','Isaias','Gleason','devin22@example.org','495 406-89-93','6','2019-02-27 17:25:37','2019-08-02 14:28:01'),
('67','Ocie','Keebler','dhickle@example.net','495 009-18-05','20','2018-12-29 04:10:42','2019-07-19 08:14:59'),
('87','Clay','Vandervort','dorthy.wolf@example.org','495 677-86-90','3','2019-02-13 05:01:46','2019-07-22 00:05:13'),
('73','Dolly','Franecki','dschimmel@example.net','495 532-25-13','18','2019-03-19 00:52:45','2019-07-17 02:43:12'),
('68','Dimitri','Bernier','durgan.greta@example.org','495 529-85-09','23','2018-08-28 02:47:09','2019-08-09 15:34:34'),
('12','Forrest','Marks','flatley.hardy@example.org','495 104-40-51','27','2018-12-28 07:03:27','2019-08-10 15:59:40'),
('82','Maryjane','Okuneva','gislason.milan@example.net','495 757-66-39','0','2019-04-14 10:19:13','2019-08-04 08:26:44'),
('88','Olen','Dickens','gorczany.marlene@example.com','495 130-71-07','15','2019-05-05 12:47:21','2019-08-10 23:19:28'),
('98','Ona','Harber','hand.leola@example.net','495 925-55-81','23','2019-04-26 06:24:34','2019-07-23 06:50:01'),
('54','Delaney','Johnston','harvey.jerde@example.net','495 938-90-73','3','2018-09-19 12:38:13','2019-07-20 20:40:40'),
('8','Providenci','O\'Connell','haven.watsica@example.org','495 064-96-28','26','2018-09-08 16:25:34','2019-07-21 23:30:40'),
('84','Luisa','Kub','hayes.quincy@example.org','495 229-00-49','8','2018-12-24 11:53:15','2019-07-17 09:41:22'),
('11','Zelda','Hauck','heller.mozelle@example.com','495 864-37-70','5','2019-04-14 12:53:57','2019-08-06 16:50:13'),
('22','Meda','Schneider','hills.cielo@example.com','495 915-45-05','13','2019-03-10 14:54:43','2019-08-07 07:06:48'),
('34','Juanita','Orn','hodkiewicz.rosemary@example.com','495 809-56-63','18','2018-09-25 11:39:26','2019-07-23 05:42:35'),
('32','Alfredo','Olson','iheathcote@example.org','495 360-46-23','19','2019-01-18 16:26:51','2019-07-27 00:27:25'),
('71','Stone','Leannon','jacques31@example.net','495 605-88-11','25','2019-01-01 23:05:19','2019-07-16 15:13:45'),
('46','Simone','Greenholt','jakubowski.betsy@example.org','495 875-89-33','22','2019-04-27 10:01:47','2019-07-18 02:06:36'),
('28','Destinee','Stokes','jkunze@example.org','495 998-09-38','26','2019-07-18 19:47:23','2019-07-26 15:39:46'),
('75','Gardner','Robel','jo.hintz@example.net','495 899-33-26','13','2018-10-29 23:17:06','2019-08-11 14:59:14'),
('85','Moriah','Anderson','jo\'kon@example.com','495 181-60-40','16','2019-04-12 15:02:15','2019-07-20 07:38:16'),
('27','Blair','Daniel','joe02@example.org','495 389-19-60','26','2018-10-09 04:54:20','2019-07-19 08:29:52'),
('94','Chaz','Zboncak','johnson.lydia@example.net','495 712-95-64','24','2019-07-21 03:46:45','2019-07-13 22:19:40'),
('42','Danika','Veum','jonatan36@example.com','495 305-65-92','10','2019-06-09 04:54:51','2019-08-03 22:47:26'),
('30','Eriberto','Raynor','jovani.smith@example.net','495 955-23-55','14','2018-10-09 17:19:31','2019-07-28 03:46:00'),
('1','Camren','Botsford','juston41@example.com','495 488-34-66','1','2018-12-11 03:40:18','2019-07-16 12:21:34'),
('6','Hollie','Will','keith39@example.com','495 489-53-28','14','2019-03-07 01:54:35','2019-07-20 02:29:30'),
('55','Allen','Feeney','kulas.rigoberto@example.net','495 135-42-79','5','2019-02-15 02:19:07','2019-07-27 21:10:05'),
('45','Avery','Parisian','lemke.daphne@example.com','495 661-03-96','25','2019-01-22 06:13:43','2019-08-05 06:05:24'),
('37','Bradley','Botsford','leslie.bauch@example.com','495 945-28-71','0','2018-11-03 22:06:19','2019-07-27 12:44:23'),
('59','Fabiola','Marks','losinski@example.net','495 136-32-31','27','2018-11-01 23:34:57','2019-07-12 05:59:57'),
('38','Lloyd','Harris','lquitzon@example.com','495 080-04-35','26','2018-08-27 06:33:44','2019-07-25 07:18:09'),
('26','Darrick','Aufderhar','luettgen.drew@example.com','495 898-13-61','16','2019-04-02 21:49:02','2019-08-06 11:15:45'),
('7','Tomas','Stiedemann','lweber@example.org','495 630-76-55','1','2019-05-13 22:17:56','2019-08-10 15:59:29'),
('81','Lori','Dickens','lyla.kling@example.net','495 751-52-22','2','2019-01-06 13:46:16','2019-08-10 02:59:27'),
('76','Tanner','Gaylord','maeve68@example.net','495 217-32-25','6','2018-08-29 13:12:48','2019-07-21 07:28:41'),
('97','Quinton','Bailey','makayla43@example.org','495 494-93-28','20','2018-11-15 13:05:58','2019-07-27 19:42:04'),
('90','Maximillia','Schneider','mariana.fisher@example.com','495 516-55-96','0','2019-07-09 17:30:49','2019-08-05 04:30:36'),
('14','Augusta','Ankunding','marlee.howell@example.org','495 569-70-05','15','2018-08-25 10:06:52','2019-07-30 17:44:18'),
('24','Alvis','Abernathy','maude33@example.org','495 764-03-14','10','2018-10-30 19:18:24','2019-07-21 00:59:57'),
('58','Lonie','Wintheiser','meaghan.jacobson@example.com','495 689-81-72','24','2019-02-05 04:52:01','2019-08-02 14:21:31'),
('48','Annabell','Erdman','meichmann@example.org','495 127-31-46','28','2018-09-12 18:58:20','2019-07-31 18:57:36'),
('69','Timmy','Klocko','miller.kade@example.net','495 564-06-95','16','2018-12-27 05:25:07','2019-07-16 10:24:16'),
('57','Geraldine','Turcotte','neha07@example.org','495 668-88-97','21','2019-07-21 03:00:54','2019-08-08 05:07:33'),
('64','Connor','Davis','ngoodwin@example.net','495 455-97-50','0','2018-09-24 16:30:14','2019-07-19 00:48:44'),
('33','Fleta','Schneider','nikolaus.alden@example.net','495 214-04-81','12','2019-01-15 12:01:26','2019-07-15 15:50:52'),
('49','Sydnie','Medhurst','nikolaus.meaghan@example.com','495 235-28-52','28','2018-10-11 08:09:00','2019-07-13 00:05:13'),
('44','Mavis','Erdman','nmonahan@example.org','495 497-99-26','8','2019-06-21 11:04:56','2019-07-24 14:45:32'),
('29','Albert','Hauck','obeahan@example.net','495 444-38-18','6','2019-03-30 06:04:27','2019-07-16 02:35:14'),
('62','Alessandra','Pagac','ollie.hyatt@example.net','495 592-25-12','2','2018-11-05 11:44:22','2019-08-06 19:52:08'),
('63','Mavis','Jacobson','omari09@example.net','495 630-86-75','12','2018-09-02 00:26:47','2019-08-01 17:05:39'),
('15','Makenzie','Deckow','pbruen@example.com','495 135-47-68','13','2019-05-30 02:07:42','2019-08-08 04:01:54'),
('17','Shyanne','Sipes','plegros@example.com','495 240-88-57','18','2018-12-23 05:22:05','2019-07-15 11:58:09'),
('93','Pauline','Rempel','rmarquardt@example.com','495 918-79-79','13','2019-02-08 18:25:52','2019-07-13 02:02:42'),
('100','Landen','Lehner','russ.windler@example.com','495 417-50-97','6','2019-06-14 06:12:11','2019-08-06 23:05:30'),
('60','Serena','Schultz','ryder.langosh@example.net','495 464-84-27','16','2019-06-04 02:26:56','2019-07-28 07:16:33'),
('91','Cristopher','Kessler','ryder41@example.org','495 272-85-33','13','2018-11-22 00:54:00','2019-07-26 22:56:14'),
('83','Otis','Boyle','sgorczany@example.org','495 656-61-69','26','2018-10-07 21:54:17','2019-07-14 16:11:34'),
('65','Cruz','O\'Hara','shanie16@example.net','495 863-56-27','18','2019-04-08 03:51:28','2019-08-08 11:09:28'),
('47','Bette','Hilll','shaniya26@example.net','495 742-65-67','16','2018-09-05 05:35:54','2019-07-12 06:52:49'),
('25','Johnathon','Brown','shields.lincoln@example.net','495 706-41-02','5','2018-10-13 14:34:10','2019-08-09 16:25:11'),
('78','Toby','Gibson','smith.marjorie@example.com','495 035-14-33','1','2018-11-26 19:10:11','2019-07-27 17:03:42'),
('39','Thelma','Walsh','sonia.kirlin@example.org','495 403-83-46','1','2019-06-01 08:37:31','2019-08-04 21:37:53'),
('95','Hilma','Frami','susan78@example.com','495 004-65-22','12','2019-04-08 06:46:28','2019-07-30 10:17:57'),
('13','Edwina','Casper','tamara36@example.com','495 749-86-93','26','2019-05-30 10:39:56','2019-08-01 03:02:34'),
('51','Zora','Zboncak','thea.ruecker@example.com','495 441-62-75','17','2019-01-02 10:19:29','2019-08-06 18:25:04'),
('43','Gregoria','Crooks','turcotte.teresa@example.com','495 629-39-11','3','2018-12-02 22:53:25','2019-07-13 03:06:54'),
('36','Maryse','Ruecker','vauer@example.com','495 948-30-32','7','2018-09-21 23:22:12','2019-08-07 10:43:40'),
('16','Wallace','Buckridge','vhettinger@example.net','495 420-34-44','8','2018-08-25 00:11:36','2019-08-04 11:36:51'),
('89','Kay','Lebsack','vonrueden.nicole@example.org','495 711-43-48','21','2019-06-19 23:03:32','2019-08-02 02:44:49'),
('23','Jaylin','Morissette','wade55@example.net','495 202-55-56','25','2019-07-13 02:09:26','2019-08-05 23:27:10'),
('52','Jonathon','Mertz','waldo71@example.net','495 048-72-58','2','2018-10-08 21:34:49','2019-08-05 17:57:45'),
('20','Felix','Breitenberg','wilkinson.layla@example.org','495 703-34-47','20','2019-03-21 00:55:44','2019-07-18 22:43:21'),
('74','Caitlyn','Fay','winifred.quitzon@example.org','495 587-05-01','0','2018-10-25 01:51:05','2019-07-25 13:58:48'),
('61','Rowena','Skiles','wmohr@example.org','495 655-52-31','7','2019-02-07 07:45:13','2019-08-10 21:26:39'),
('50','Alverta','Collier','wwest@example.net','495 790-24-21','0','2019-02-08 14:28:18','2019-07-15 19:02:38'),
('80','Araceli','Kuvalis','yasmine.heidenreich@example.net','495 678-23-41','3','2019-06-26 08:58:32','2019-07-27 18:35:12'),
('41','Lauriane','Goyette','ymckenzie@example.com','495 061-13-44','16','2019-05-23 07:35:14','2019-07-12 15:03:32'),
('72','Efren','Schulist','zachariah89@example.net','495 752-87-31','17','2018-08-23 10:09:29','2019-07-13 07:09:18'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

