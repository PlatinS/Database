-- Generation time: Sun, 11 Aug 2019 15:05:38 +0000
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

DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL PRIMARY KEY,
  `sex` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `hometown` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `profiles` VALUES ('1','m','2001-06-14','Winonaton','57'),
('2','f','2005-02-05','Sierramouth','89'),
('3','m','2000-09-27','Yundtborough','13'),
('4','f','2005-06-05','Runolfsdottirborough','27'),
('5','m','1993-05-19','Glenhaven','11'),
('6','m','2010-10-21','New Leathamouth','92'),
('7','m','1991-10-16','Trevionchester','87'),
('8','f','2011-10-18','Rickmouth','42'),
('9','f','2001-07-17','Port Caraside','5'),
('10','f','2016-02-19','North Hassieburgh','98'),
('11','m','2014-10-30','South Cielo','19'),
('12','f','2016-01-07','South Abagailbury','69'),
('13','m','1995-04-15','West Feltonhaven','40'),
('14','f','2009-08-29','North Nameburgh','47'),
('15','m','2001-03-03','Port Jannie','48'),
('16','f','2015-06-22','New Danial','37'),
('17','m','1990-11-06','Schoenborough','71'),
('18','m','1998-06-20','East Dandre','33'),
('19','m','1994-01-12','Lubowitzstad','44'),
('20','m','2000-11-17','West Jamar','67'),
('21','f','1993-02-01','East Darren','53'),
('22','f','1996-10-30','Penelopeport','2'),
('23','f','1991-09-23','Beierburgh','79'),
('24','m','2016-09-06','O\'Connerhaven','23'),
('25','f','2018-12-14','Jacobsfurt','78'),
('26','m','2006-01-31','Rubyside','97'),
('27','m','2004-01-26','Laviniachester','68'),
('28','f','2010-12-31','East Susan','80'),
('29','f','2000-11-14','Raymondshire','81'),
('30','f','2004-12-02','Elenorview','61'),
('31','f','2004-04-09','New Lucio','1'),
('32','m','1990-10-22','Abelview','35'),
('33','f','2010-11-13','West Fayetown','83'),
('34','f','2008-11-27','Port Marietta','26'),
('35','f','2011-05-08','Port Cassie','16'),
('36','m','2008-08-28','Port Magnus','62'),
('37','m','2019-04-29','North Ollie','60'),
('38','m','2011-10-24','Hendersonfurt','72'),
('39','m','2012-07-08','Wernerstad','100'),
('40','f','2013-05-08','East Juliusstad','14'),
('41','f','1995-02-17','West Averyside','10'),
('42','f','2018-02-26','South Bailey','65'),
('43','f','2010-04-29','Port Kamrenchester','93'),
('44','m','2011-03-19','Cooperborough','85'),
('45','m','2014-12-28','North Treverfurt','31'),
('46','m','2011-11-04','New Vidal','63'),
('47','f','2003-02-18','Riceshire','4'),
('48','f','1990-07-20','South Maeganmouth','20'),
('49','m','2010-04-17','West Bryon','84'),
('50','f','2006-12-28','Romagueramouth','28'),
('51','m','2007-08-07','West Savannahburgh','86'),
('52','m','2009-06-13','Considineville','91'),
('53','f','2017-11-02','Kunzeland','82'),
('54','m','2012-02-25','Greentown','59'),
('55','m','2000-07-25','Syblestad','45'),
('56','f','2015-08-10','West Monserrate','51'),
('57','f','2010-05-01','Lehnerland','18'),
('58','m','2007-06-29','Port Bernieport','12'),
('59','m','2019-02-24','West Shadfurt','55'),
('60','m','2011-10-02','East Micahchester','9'),
('61','m','2006-01-20','East Chaimfort','24'),
('62','f','1995-08-22','North Yasmeen','34'),
('63','m','1995-03-18','Daxport','77'),
('64','m','2011-02-18','Lake Sterlingland','22'),
('65','f','2016-04-27','South Kobe','17'),
('66','f','1999-05-15','East Royal','21'),
('67','f','1996-07-05','East Josefa','52'),
('68','m','2011-04-05','Mustafaville','43'),
('69','m','2018-04-09','North Marie','38'),
('70','f','1998-02-11','Sophieside','39'),
('71','f','2005-07-09','Cliffordburgh','32'),
('72','f','2005-05-16','Hillsside','29'),
('73','m','1998-01-12','Lake Hiram','3'),
('74','f','2016-12-30','South Lue','15'),
('75','m','2011-10-25','Gayville','56'),
('76','f','1998-05-09','Marcellehaven','94'),
('77','m','1998-03-23','Santinaberg','50'),
('78','f','1992-11-19','Brookmouth','75'),
('79','f','2001-07-29','Port Kaylin','6'),
('80','f','2011-10-02','East Madison','46'),
('81','m','1995-04-26','Abbottstad','8'),
('82','m','2007-08-31','Lake Lorenzastad','76'),
('83','m','2018-02-07','Gabetown','73'),
('84','m','2002-07-22','Hoegerland','88'),
('85','m','2014-01-27','Mosciskihaven','58'),
('86','f','2008-03-28','Schmidtfort','49'),
('87','m','1993-06-04','North Arnoldhaven','95'),
('88','m','2008-04-20','New Lillieside','7'),
('89','f','2008-09-30','North Dasiaberg','99'),
('90','m','1992-04-27','Clarabelleton','90'),
('91','m','2003-04-01','Antoneburgh','41'),
('92','m','1994-09-19','Port Sophia','70'),
('93','f','2012-08-28','New Dereckview','25'),
('94','f','2016-03-15','Port Lonzostad','96'),
('95','m','1997-03-02','Jeniferberg','30'),
('96','m','2017-06-14','Fishermouth','74'),
('97','m','2016-12-26','Camilletown','54'),
('98','f','1991-08-26','West Rosie','36'),
('99','f','2015-10-05','Tyrellville','66'),
('100','f','1998-07-19','Lake Marqueschester','64'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

