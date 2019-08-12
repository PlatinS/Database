-- Generation time: Sun, 11 Aug 2019 15:12:20 +0000
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

DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `from_user_id` int(10) unsigned NOT NULL,
  `to_user_id` int(10) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `important` tinyint(1) DEFAULT NULL,
  `delivered` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`from_user_id`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `messages` VALUES ('2','19','Nostrum enim esse quasi voluptatem dolores tempore. Qui amet voluptatem omnis porro blanditiis. Neque molestias ipsam soluta cumque in qui qui.','1','1','2018-10-05 05:09:30'),
('4','97','Aut facere magni aut vero voluptates eaque. Eius molestiae incidunt consequatur nisi. Nesciunt sapiente at quia et. Id nulla reiciendis officia velit officia ratione.','0','1','2018-12-31 17:32:53'),
('4','23','Aspernatur dolorem sit ut incidunt. Quo dolorem dolor molestiae sed consectetur.','0','1','2019-07-04 10:49:27'),
('4','79','Aliquam voluptatibus qui magni. Et corrupti id quo corporis commodi alias. Iste et perspiciatis aliquam.','0','0','2019-07-28 10:17:32'),
('6','42','Incidunt corporis vitae consequatur. Reiciendis rerum et maiores ab. Voluptas quibusdam esse aut quia nulla. Ex dolorum aspernatur qui id dolores necessitatibus.','0','0','2019-04-29 18:48:22'),
('7','43','Nihil rerum nemo qui possimus et. Pariatur quae excepturi sapiente libero magni blanditiis. Eius dicta labore libero harum nobis earum. Aut aut distinctio alias sed similique labore. Est animi qui enim consequuntur quia autem.','0','1','2018-09-29 02:46:25'),
('8','7','Quia est voluptas est et in molestiae distinctio. Voluptates ipsa nihil dolorem incidunt molestiae libero. Mollitia velit beatae mollitia sed nostrum nihil.','1','1','2019-05-12 13:04:32'),
('9','17','Placeat quis illum culpa doloremque. Error sit ullam iure totam quos distinctio. Quidem quae sit aut reiciendis vitae. Et deleniti deserunt facere nobis ea repellendus ut dolorum.','0','1','2019-01-03 05:18:09'),
('10','85','Doloribus fuga velit dolorem magnam odio eos et. Vitae error rerum eos eaque voluptas voluptatem aut. Veritatis consequatur eum nostrum unde inventore rerum saepe. Voluptate illo sit maxime dicta aut rerum est.','1','0','2019-07-10 09:39:58'),
('13','17','Mollitia nisi culpa explicabo. Debitis vero dolores qui sed sit facilis dolor. Temporibus iste sint ut.','0','0','2019-04-05 08:15:19'),
('14','30','Corporis quis tempora nihil quasi. Aut dolorem quia velit enim. Et aut aut commodi nihil inventore.','1','1','2018-08-17 08:25:40'),
('14','43','Magni ut magni provident ad nulla voluptatem nihil. Quaerat sit odit ut vitae voluptas. Quo magnam nulla est ad ab rerum.','0','0','2019-03-21 02:08:35'),
('14','80','Id qui omnis beatae ducimus fuga libero. Ratione delectus explicabo voluptatem. Nihil beatae pariatur et. Similique hic asperiores qui iure.','1','1','2019-04-25 05:48:46'),
('16','83','Quia facilis repellat dolor numquam. Eius totam consectetur magnam ut. Omnis et est perspiciatis delectus consequuntur voluptatem. Porro vero ut voluptatibus. Voluptas delectus eum ipsam voluptatem sunt.','0','0','2019-05-25 11:44:52'),
('17','47','Rem exercitationem neque aliquid vitae esse. Saepe harum et voluptates impedit aut illum est. Velit enim exercitationem nisi. Voluptas recusandae tenetur consectetur possimus molestias quibusdam.','1','1','2018-09-27 14:26:12'),
('19','47','Eaque quis ad earum dolores eveniet. Quidem optio omnis alias ab esse tenetur. Maiores repellendus molestias aut.','1','0','2018-12-12 00:09:18'),
('20','77','Incidunt explicabo eum voluptatem veritatis fuga. Ut sit fuga sunt rerum beatae sapiente quis. Nobis beatae quo recusandae voluptatibus fuga eveniet. Eligendi consequatur nostrum earum iusto. Est sit nemo quia cupiditate atque omnis.','1','0','2019-04-13 12:02:19'),
('20','37','Voluptatem vitae ea corporis. Deleniti excepturi vel laboriosam iste. Ut maiores quaerat voluptatibus harum. Et velit magni ad tempore quos ipsa necessitatibus.','0','0','2019-06-08 01:54:16'),
('22','39','Et modi unde sapiente doloremque asperiores non. Hic omnis repellendus omnis rem. Est velit dolor et suscipit libero. Rerum et et pariatur mollitia quaerat eum adipisci.','0','0','2018-11-26 09:59:59'),
('22','80','A occaecati animi omnis. Libero debitis nesciunt autem facilis unde. Non est suscipit consequatur adipisci sint omnis.','0','0','2019-05-22 00:24:02'),
('24','12','Velit iure nobis voluptatem omnis inventore qui. Est fuga nesciunt consequatur asperiores nihil. Non vero nobis aperiam sapiente eos.','0','0','2018-12-20 20:03:35'),
('25','80','Provident ipsa veritatis dolorum. Quo amet non totam aut rem. Voluptas est distinctio ipsam corrupti. Eaque occaecati iusto et veniam voluptas.','0','1','2019-06-12 07:05:22'),
('26','91','Et dignissimos alias autem maxime possimus. Pariatur voluptatem ea sunt voluptatem. Velit ut et tempore hic. Consequuntur occaecati aliquid animi et fuga maiores.','0','1','2018-10-23 18:11:44'),
('29','84','Aut cumque quod beatae eum libero. Magni nostrum ipsam ea sit esse quasi et. Doloremque expedita voluptas vel facilis nihil.','1','1','2019-06-27 11:36:18'),
('32','56','Quia eaque ipsam rerum quia id rerum accusantium. Minima voluptatum ducimus rerum est voluptatem totam aut. Numquam et totam laboriosam impedit non et vitae.','0','1','2018-09-05 15:40:59'),
('33','83','Veniam adipisci quas et aut. Non in eum et quia. Doloribus vitae dolor nobis rerum et molestias. Laborum laborum ut quaerat voluptatem.','0','0','2019-06-16 09:07:39'),
('34','40','Vel animi incidunt illum numquam praesentium sequi cum sunt. Ratione in et voluptatum assumenda atque ut et. Cum ullam rerum dicta nam sunt maxime earum aliquid.','0','0','2019-04-30 15:08:13'),
('34','16','Libero soluta reiciendis nesciunt debitis et. Voluptatem adipisci neque dolor voluptas mollitia. Vel et officiis sed voluptas numquam. Consequatur nemo laboriosam facere qui est et.','1','1','2019-05-21 14:49:10'),
('35','83','Dolorem aut quo ad eum reprehenderit numquam. Qui accusamus vitae nam rerum illo. Qui laudantium corrupti exercitationem doloribus quos dicta molestiae. Aut enim omnis sit velit.','1','0','2018-09-05 04:32:23'),
('36','44','Dignissimos et modi cupiditate eligendi enim. Non esse quibusdam laudantium aliquid aut. Esse magnam recusandae minus.','1','1','2018-10-02 20:23:13'),
('37','30','Et ex vitae et consequatur veritatis earum. Saepe unde illum ad est alias ratione hic. Quia molestias molestiae sunt id quia ut.','0','0','2018-09-09 02:41:11'),
('38','89','Ut aspernatur expedita occaecati autem. Eum neque est veniam impedit est eaque minima. Beatae sunt alias voluptates mollitia. Voluptatem eligendi officiis ut provident eligendi est.','0','1','2019-01-01 01:11:08'),
('39','34','Iusto quo aut nam non sit. Libero harum velit deserunt debitis minus omnis. Occaecati commodi aut id voluptatum repellat vero voluptatem.','0','0','2018-11-11 10:31:32'),
('39','34','Saepe hic aperiam iure vitae aut suscipit ipsum iusto. Dolore veniam quos perspiciatis temporibus culpa. Tempore fugit accusantium nemo a perferendis autem aut. Et vel natus nam sit ut voluptatem.','0','1','2019-05-12 01:15:19'),
('40','49','Aut eius qui esse natus rerum. Nisi alias occaecati temporibus sequi consequatur id ea. Earum necessitatibus mollitia odio sint.','1','1','2019-01-13 12:00:36'),
('41','72','Vel magni quia atque minus quae et magni. Unde aut architecto at reprehenderit velit. Sunt sint ipsam nobis et eum.','1','0','2019-03-29 22:56:21'),
('42','100','Est dolore accusamus itaque eos aut ipsa debitis. Quis velit nisi et placeat nobis aut. Assumenda eos voluptatum aut repellendus. Repudiandae placeat impedit et excepturi consectetur esse.','1','0','2018-10-27 11:02:34'),
('45','35','Modi expedita mollitia voluptatem veniam doloremque. Minima enim adipisci quia sint.','1','0','2019-01-08 10:30:05'),
('45','3','In unde et odit aperiam aut aut. Ipsam rerum reprehenderit dolores voluptatem. Doloribus beatae et sint occaecati voluptatem deleniti.','1','1','2019-02-27 12:28:25'),
('47','2','Excepturi alias aliquid quidem. Qui eaque vel labore voluptatibus. Vero deleniti labore porro nam suscipit veniam. Libero id aspernatur itaque veniam unde placeat distinctio.','1','1','2018-11-02 02:39:22'),
('47','95','Repellat iste saepe delectus laboriosam consequatur nihil nulla. Est labore officia culpa quos illum. Cum deserunt fugiat quo praesentium ut reiciendis ut. Vero tempora explicabo velit vitae vel voluptatem. Neque et soluta dolor rerum voluptatem sed.','0','1','2018-12-27 06:04:02'),
('47','95','Animi vitae facilis quo incidunt. At in sint at numquam ut aut et. Impedit esse eos officiis.','0','0','2019-06-25 16:11:33'),
('49','47','Cumque fugiat molestiae repellat illo repellendus nulla est. Minima sed excepturi voluptatem qui fuga ea. Sequi aspernatur occaecati ut eum fugiat.','1','1','2018-08-17 10:32:07'),
('49','33','Architecto aut voluptatem molestias soluta vero. Qui labore rerum vel voluptate. Modi sint velit dolorum eos. Ut facere ea cum est.','1','1','2018-11-02 03:45:54'),
('49','4','Voluptatem assumenda tempore explicabo eaque laudantium et. Voluptate rem ex reiciendis dolorum blanditiis vel rerum. Sit maiores omnis aut aut. Qui ex velit magnam consequatur aspernatur qui.','0','1','2019-02-06 09:07:34'),
('51','85','Distinctio molestias laboriosam quia voluptates sed dolorum. Sed voluptas qui quos et quibusdam amet voluptatum. Neque aperiam illum voluptatum enim repudiandae. Ut corporis quo ut ea dolores alias et ut.','1','0','2019-01-11 10:08:53'),
('55','98','Quia eum autem neque nostrum saepe. Veniam molestias voluptas quia dolor molestiae qui aut in. Id odit ut mollitia sapiente. Quis doloremque exercitationem cum magni quaerat esse. Qui commodi sunt sunt tempore dignissimos ut molestiae.','0','0','2018-10-21 17:50:59'),
('56','7','Eveniet tempora libero voluptatum voluptatem maxime. Laudantium optio quaerat aliquid ut omnis vel. Qui quia rerum eum quasi. Cupiditate ipsa quo porro quia consequuntur consequatur.','0','0','2019-04-03 01:05:02'),
('58','84','Et rerum nisi dolore qui. Qui quod molestias dolor nobis quo officiis sit sunt. Aut quia consequatur itaque eos omnis dolorum. Et magnam molestiae neque necessitatibus architecto.','0','0','2018-09-15 14:01:19'),
('58','98','Quia hic doloremque commodi sunt labore. Architecto ut aliquid iusto et. Numquam modi deleniti quaerat culpa quos veniam consectetur. Corporis quos qui sint necessitatibus eius consequuntur. Quas a officiis rerum sint.','0','1','2019-04-17 17:07:07'),
('59','99','Animi autem ad suscipit ipsam aperiam in rerum. Ut consectetur est maiores adipisci esse doloremque veritatis. Expedita ipsum harum sit illo.','0','0','2018-10-05 02:27:49'),
('59','2','Illum atque doloremque ducimus consequuntur ut laborum. Ut saepe reprehenderit temporibus aliquid. Culpa et qui id assumenda sed amet. Suscipit odit placeat est neque ex pariatur et.','0','0','2019-02-22 15:32:50'),
('59','26','Odio earum harum maiores rerum in qui. Tenetur voluptatem dolorem quae veritatis ipsa quaerat. Optio ut id dolorum minima aspernatur commodi harum. Aut quis provident repellendus suscipit.','0','1','2019-03-26 09:09:43'),
('59','82','Tempore inventore rerum autem atque accusamus. Labore aut vero et fugit repudiandae quia magni unde. Rerum consequatur voluptatum quo id. Aliquam aut error at ea quidem inventore.','0','0','2019-04-04 12:28:17'),
('61','37','Error sequi reprehenderit ab vel ut voluptas qui. Et nam perspiciatis commodi itaque omnis qui voluptatem. Aut iure odio aut.','0','1','2019-04-14 00:24:09'),
('63','88','Cupiditate recusandae natus dolor occaecati hic. Mollitia eveniet dignissimos occaecati et in. Enim corporis excepturi ipsum. Maxime voluptatum reprehenderit non ipsum.','1','1','2018-10-27 20:38:16'),
('64','46','Quo necessitatibus dolor expedita tempore porro autem optio quam. Praesentium dolor quos assumenda ullam qui provident esse est. Fugiat et expedita molestias sit.','0','1','2019-01-16 08:37:48'),
('65','95','Velit suscipit voluptates dolor consectetur enim. Occaecati natus autem placeat placeat dolorum esse quo. Officia aut laboriosam at suscipit vero itaque optio sunt. Eveniet et iure voluptatem aliquid optio.','0','0','2018-10-20 08:12:26'),
('65','98','Ut eius sed veritatis nulla non quia. Culpa ab provident sunt. Ducimus suscipit ut in dicta. Ut doloribus aut quisquam dolorem at voluptate.','0','1','2018-10-30 08:43:00'),
('65','9','Molestias id quaerat ea. Distinctio eaque repellat quia et laboriosam quos. Aliquid animi aliquam iure quod eligendi quas.','1','0','2019-07-05 16:47:42'),
('66','64','Maiores dolore corporis sequi qui aspernatur. Tenetur quia et incidunt et harum et qui. Velit vel rerum quia dicta et nam eum repellat. Est quia veniam tempore saepe eligendi maiores doloribus.','0','1','2019-03-24 10:46:21'),
('66','18','Rerum deserunt fugit ut molestias doloremque omnis tempora. Quis qui repellendus explicabo ratione ut.','1','1','2019-04-15 12:24:01'),
('67','17','Rerum totam et molestiae illo. Deleniti placeat quidem doloremque explicabo. Quam maxime qui eum quo dignissimos sequi atque.','0','0','2019-06-20 07:04:22'),
('68','93','Aperiam adipisci quibusdam qui quia voluptatum voluptate. Dicta similique odit quo quia voluptatem cupiditate ut ullam. Et consequuntur quibusdam iusto sed. Quia placeat quasi ut non autem.','1','0','2018-10-28 01:52:37'),
('68','39','Modi laborum molestiae facilis asperiores in occaecati. Nulla omnis ipsum consequuntur rem. Est aut aut iste eligendi.','1','0','2019-07-20 11:08:50'),
('68','71','Qui cum eum voluptatem ea sit aliquid. Sint quis consequatur molestiae sed asperiores quia. Eveniet laudantium esse optio.','0','1','2019-07-20 15:43:32'),
('71','29','Sint qui quo qui repellendus voluptatibus delectus autem nemo. Asperiores labore natus harum doloribus. Et saepe eos aut dolorum accusamus doloremque.','1','0','2019-07-25 22:44:35'),
('72','26','Ut expedita itaque nisi eos cum. Animi qui reprehenderit voluptas sit porro nemo. Tempora mollitia illo nihil nobis laudantium reprehenderit asperiores.','1','1','2019-04-15 12:54:33'),
('72','51','Molestiae placeat beatae aut repellat quia voluptatem sed. Vero error beatae autem aut rem. Aspernatur quae quos dolore et.','0','0','2019-04-24 13:47:24'),
('72','39','Blanditiis praesentium et fugiat veniam et maxime. In voluptates rerum ipsum temporibus et quis quia. Velit libero laborum minima et. Vel et voluptatem possimus.','1','0','2019-06-28 12:08:04'),
('73','28','Sed iste consequatur deserunt sequi aut consequuntur. Sit id id itaque minima.','0','0','2019-03-01 20:57:05'),
('74','72','Id illo deserunt ut quod. Inventore ut voluptas rem. Placeat velit facilis qui. Impedit et vero enim.','1','1','2018-10-24 21:51:11'),
('74','48','Molestiae quo et ullam ipsa et. Amet tempore illo voluptatum qui. Ipsam id beatae explicabo occaecati esse ea.','1','1','2019-01-13 05:43:59'),
('75','32','Ut et vitae fugiat quam. Eligendi odit non nihil nihil vero maiores voluptatibus ad. Placeat sit voluptate ipsa ipsa. Officiis accusantium voluptatem eum libero.','0','0','2019-04-11 01:45:56'),
('75','96','Quod quo minima molestiae et eos. Minus cum modi sit aspernatur. Cupiditate qui illo eum maiores maiores vero. Distinctio eveniet dolorem omnis et harum.','1','1','2019-08-11 08:39:40'),
('76','47','Quo et dolor totam voluptatem repellat eius quis. Unde itaque dolorum sunt neque aut nam voluptatem. Qui est et ea tempora nostrum adipisci quasi. Nihil consequatur non magnam.','1','0','2018-11-22 10:05:51'),
('77','66','Occaecati ex aut maiores autem eligendi natus. Aperiam occaecati maiores et voluptatum asperiores. Eius maxime ab odit similique dolore eos harum. Voluptatibus molestiae molestiae et quidem cumque iste.','0','0','2018-11-03 06:21:05'),
('77','55','Quaerat aliquam tempore nihil nemo ad atque quaerat sed. Repudiandae corrupti ex sed vero placeat. Voluptatem aperiam fugit similique rem.','0','1','2018-11-13 16:14:54'),
('77','85','Omnis non id quisquam. Perferendis tempora beatae molestiae consectetur dolor. Rerum pariatur ut ducimus et. Molestiae dolores unde dolores et.','1','1','2019-06-04 04:36:03'),
('78','70','Et non dolorem cum cum magnam aut enim. Eligendi asperiores numquam ea quo molestiae. Quae ut ut asperiores autem quo sunt est. Nesciunt est odio modi sit voluptate voluptatem ipsum quas.','1','0','2018-09-16 09:22:21'),
('79','18','Rerum at vel et recusandae dicta quam. Quis aut illum excepturi et praesentium eaque. Hic mollitia quis ut atque sequi nisi quia at. Vero velit ut est.','1','1','2018-11-02 02:03:56'),
('79','80','Doloremque reiciendis illum eveniet a dolore et eos. At fuga est eaque sint saepe. Voluptatem a autem laboriosam.','0','1','2019-02-20 23:50:16'),
('80','46','At assumenda dicta nihil ut aut. Et rerum ratione aliquam non ut reprehenderit. Consequatur aut assumenda autem qui voluptatem recusandae et.','0','0','2018-12-27 03:09:19'),
('80','13','Iure architecto corrupti aut illum. Deleniti sunt cum dignissimos ipsam perferendis. Non suscipit harum et a exercitationem quia repudiandae.','1','0','2019-01-15 08:16:57'),
('81','22','Quos qui et odit ipsum sunt. Nihil et ab ut eum assumenda. Eum accusantium dicta et eligendi.','0','1','2019-04-22 05:02:24'),
('84','84','Occaecati est non ut nesciunt ut blanditiis. Eum voluptatem tempora dolorum illum. Rerum dolore cupiditate facilis rerum. Enim corrupti voluptatem quos eos vitae voluptas dolores.','0','0','2019-02-02 16:35:20'),
('85','59','Sit rerum non est corporis nihil suscipit. Et et laboriosam praesentium aut ipsum. Sint temporibus atque reiciendis nobis qui qui ipsam.','0','0','2018-10-06 18:04:50'),
('85','16','Nesciunt sunt magnam hic. Numquam magnam et sunt sit et sit blanditiis. Veniam molestiae et sed sint dolores.','0','1','2019-05-20 04:39:45'),
('87','43','Magni odio illo culpa. Culpa sint consequatur distinctio. Voluptatem deleniti facere nulla unde fuga voluptatem.','0','1','2018-12-03 13:03:13'),
('89','13','Modi aspernatur ad libero omnis cupiditate. Dolores fugit optio impedit autem blanditiis enim. Impedit qui asperiores unde et omnis esse quo. Adipisci alias fugiat quos fugit alias non.','0','0','2018-10-11 10:56:37'),
('93','72','Similique pariatur dolor rerum dolorem. Sint non nam autem nesciunt est sed voluptates. Voluptatem fugit rem sint atque possimus cum laboriosam nisi.','1','1','2018-12-21 18:30:55'),
('93','11','Iure recusandae sed aut. Minus temporibus et dolor. Eum ut sint perspiciatis ea harum eveniet.','0','0','2019-01-09 14:32:18'),
('94','82','Velit atque maiores ea qui eos. Quia assumenda mollitia iure repudiandae eveniet eum fuga.','1','0','2018-11-25 04:18:02'),
('94','14','Fugit non maiores sint totam nulla. Nulla aliquam possimus at quidem et optio. Voluptates et non sint adipisci corrupti. Dolor voluptas voluptatem ipsa dolores qui commodi quis culpa.','0','1','2019-07-23 17:14:16'),
('95','16','Illum architecto ut sequi rem laudantium unde vero. Molestias vitae quisquam praesentium doloribus ut eaque optio exercitationem. Libero optio libero velit reiciendis accusantium molestiae id.','0','0','2018-10-12 15:21:25'),
('97','80','Esse quia et velit molestiae. Ipsum hic voluptas tempora perferendis a voluptates. Sit vel consequatur ex voluptate facilis.','1','0','2018-10-13 07:56:27'),
('98','53','Mollitia qui iste aliquid. Excepturi quia numquam debitis quia itaque iusto officiis. Nihil maxime molestiae est quia rerum necessitatibus.','1','1','2018-11-22 13:07:53'),
('98','30','Perspiciatis ut beatae expedita quisquam illum harum. Quam et temporibus voluptatem accusamus cupiditate. Maxime itaque eius sed totam commodi voluptas.','0','1','2019-03-21 18:23:14'),
('99','28','Facere deserunt officiis porro soluta voluptas reiciendis. Non consequatur iure et minus omnis. Iste ea quibusdam et quibusdam. Harum quod labore fugit ipsum debitis deleniti non. Maxime dignissimos sequi recusandae eos vel.','1','0','2019-04-15 18:58:38'),
('100','42','Et amet saepe commodi nesciunt odio consequatur. Consequatur harum non deleniti soluta. Nam quisquam odit non velit a. Non mollitia pariatur atque.','0','0','2018-12-29 12:53:45'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

