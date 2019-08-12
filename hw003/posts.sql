-- Generation time: Sun, 11 Aug 2019 15:38:45 +0000
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

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `user_id` int(10) unsigned NOT NULL,
  `community_id` int(10) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `media_id` int(10) unsigned NOT NULL,
  `number_votes` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `posts` VALUES ('41','25','4','Aperiam provident repellendus optio asperiores praesentium. Ut magnam dignissimos culpa sit illo ipsum.','1','4','2019-06-04 08:14:08'),
('4','60','4','Sed perspiciatis tempora praesentium facilis. Accusamus repellendus adipisci labore quaerat sed in. Ut qui voluptas error quidem quia illo.','2','3','2019-04-20 07:41:52'),
('25','1','5','Voluptatem minima et veniam voluptate. Atque molestias culpa et delectus sint dolorem sit suscipit. Soluta excepturi sit magnam qui.','3','38','2018-10-18 17:35:04'),
('13','5','5','Nihil tenetur perspiciatis fuga nesciunt accusamus explicabo adipisci soluta. Quos ab et molestiae commodi. Iste dicta animi mollitia laudantium molestias sed. Et ea sit maiores non quos totam. Dicta quod magnam id laborum cum qui dicta.','4','27','2019-06-24 16:36:47'),
('35','53','3','Tempore accusantium minus fugit et. Et iusto voluptatem consequatur vel quidem. Voluptates quam totam velit consequatur quo asperiores.','5','20','2019-05-20 16:57:50'),
('83','17','2','Vero blanditiis rerum voluptatem necessitatibus velit et ipsa. Est in itaque et est suscipit dicta.','6','21','2019-04-21 04:23:08'),
('37','63','4','Delectus et neque ea et omnis non. Quidem autem earum et enim qui. Magni facere minima sed itaque autem eos aut.','7','38','2019-02-27 14:36:43'),
('47','44','3','Est et velit facere sed eum aut autem. Quis sed rerum excepturi.','8','1','2019-06-02 10:27:29'),
('21','11','4','Debitis iure eum laboriosam voluptatem aut sunt. Aliquam quia odit laboriosam et placeat ratione perspiciatis. Hic et mollitia deleniti. Aut quam non similique et. Repellat quae quaerat fuga magni consequatur eos.','9','11','2019-04-14 19:23:17'),
('78','70','4','Et delectus odit sint neque voluptas sapiente. A asperiores quis magnam praesentium officia qui ut.','10','20','2019-04-10 11:43:55'),
('34','6','5','Eligendi repudiandae ratione soluta ex quas. Distinctio tempore porro est harum. Et reprehenderit qui ullam voluptatum libero et. Inventore quae expedita sit.','11','37','2018-11-10 19:33:47'),
('71','13','5','Dolore impedit inventore soluta. Et quis similique consequatur consequatur architecto. Voluptatem nam est qui officiis modi. Quam nesciunt consequatur pariatur saepe aliquid laborum voluptas. Quod ex cupiditate repellendus inventore aperiam et rem veniam.','12','38','2019-04-24 16:32:26'),
('15','94','1','Eaque consectetur et ut amet eos. Voluptas neque debitis omnis et nobis nam molestiae. Ab ex est accusamus totam quaerat unde molestias rerum. Alias porro esse quas sit dolorem.','13','32','2018-12-17 14:02:12'),
('40','29','4','Mollitia eligendi porro molestiae provident temporibus nam aut. Asperiores labore harum vel. Adipisci eos necessitatibus qui ducimus mollitia voluptatem harum autem. Quos aliquid molestiae nulla beatae voluptatem voluptatibus totam.','14','24','2019-03-31 03:06:36'),
('29','35','5','Mollitia corporis nemo pariatur. Pariatur quo quam fuga quis. Voluptatem animi vero enim voluptatem dicta. Est quo aliquid suscipit corporis vitae perspiciatis.','15','34','2018-10-01 14:20:42'),
('81','66','4','Aliquid et quasi qui excepturi harum. Qui accusantium ab ut aspernatur non. Expedita at veniam debitis nobis et. Et sit quisquam itaque ducimus amet possimus vero.','16','1','2018-11-03 08:07:55'),
('10','24','2','Aut doloribus amet nobis quod animi laboriosam. Quia molestias at eveniet est quis non deserunt. Eaque a tempora nesciunt nostrum doloribus in ipsum. Molestias eos iusto excepturi ullam non hic recusandae qui.','17','6','2019-04-21 13:55:56'),
('44','6','1','Fuga voluptatem perferendis quia accusantium et unde aliquam. Deleniti qui et ipsum. Hic ipsam eveniet eum voluptatem. Molestias minus vel neque autem.','18','27','2018-12-25 00:31:37'),
('63','70','5','Enim laboriosam quo totam vel iste et fugiat. Possimus rerum occaecati aperiam perspiciatis mollitia cumque natus. Qui deleniti ex ipsa enim dolores culpa aut voluptatem.','19','39','2019-02-23 04:47:57'),
('61','99','2','Deleniti et ratione quidem laborum. Voluptatem eaque et autem officiis ut. Fugit sapiente distinctio accusantium officia voluptas.','20','16','2019-05-13 14:07:59'),
('89','14','1','Quam vel asperiores fugiat id et adipisci. Suscipit beatae et amet architecto maxime qui eos. Vel perferendis dolor harum quaerat. Consectetur dolorem vel dolores non. Corporis iusto consectetur corporis id qui sunt.','21','25','2018-09-12 04:51:01'),
('5','63','3','Et velit laborum consectetur consectetur qui molestiae repellendus. A suscipit provident sint velit. Eos est beatae culpa animi.','22','33','2019-03-25 10:45:59'),
('28','9','2','Laborum suscipit dignissimos neque facilis qui. Et eligendi optio doloribus labore ipsam necessitatibus ducimus. Perferendis dolor doloremque mollitia ut aliquam.','23','17','2018-11-27 07:35:20'),
('30','24','3','Et vitae quia nisi neque. Hic illum repellat autem molestiae aliquid amet quisquam. Et aut veniam hic unde.','24','9','2018-12-23 00:23:31'),
('3','51','5','Sapiente voluptas illum soluta doloremque suscipit. Consequatur et autem provident ducimus et. Assumenda voluptatum itaque consequatur consectetur ratione assumenda. Eaque similique qui ut aut magnam.','25','34','2019-04-22 22:52:13'),
('69','15','3','Quidem praesentium debitis voluptatibus aut voluptatum dolor quisquam vel. Et est dolor veniam dolor.','26','20','2018-09-23 15:52:23'),
('82','94','4','Recusandae tempora esse eaque cupiditate ut aut molestiae. Consequatur ipsum sequi nobis corrupti. Inventore tenetur aut dignissimos saepe magni. Magni id voluptatum omnis voluptatem quasi voluptas.','27','25','2019-04-17 21:18:45'),
('62','19','1','Sequi nesciunt quibusdam deserunt quisquam aut qui. Sapiente quia ut amet molestiae. Explicabo dignissimos ullam debitis dolorum aliquid.','28','32','2019-06-15 16:46:02'),
('52','80','5','Esse et deserunt molestiae et. Delectus voluptas qui dolor consequatur aliquid. Eius inventore quaerat molestias aut. Et qui eveniet dolores quo est quasi sunt.','29','12','2018-09-10 14:26:10'),
('76','25','1','Sequi neque velit veritatis et dolorem quis qui eum. Aliquam est sint vel et ut. Aut ut voluptas nulla perferendis nam illum.','30','29','2019-07-04 04:32:23'),
('59','76','1','Adipisci magnam maiores et consectetur. Officia ad est sint ut et ea nihil. Exercitationem numquam qui consequuntur.','31','24','2018-09-16 06:05:47'),
('72','34','3','Ut placeat dolorem ex dicta consequatur error tenetur. Et et dolorem quos quas. Laudantium ipsam error iusto eveniet. Nihil magni hic laudantium est nam perspiciatis.','32','9','2018-10-02 12:32:12'),
('23','30','3','Qui placeat et aut est sequi aut quisquam. Facilis vero iure provident commodi qui.','33','13','2019-08-05 20:40:52'),
('73','44','2','Eos rerum earum maiores quia perferendis corporis qui. Commodi quia ipsa modi aut dolores. Nam quia rerum et qui voluptatibus neque.','34','25','2018-08-26 07:10:39'),
('14','98','3','Quia vel deleniti quia eos earum eaque. Commodi pariatur natus eligendi architecto amet et. Quis autem earum qui dolorem distinctio.','35','40','2018-10-09 23:43:53'),
('54','76','1','Sunt vel aut rerum velit. Necessitatibus id iusto cumque animi dolores nobis beatae. Enim qui saepe maiores magni et quia nisi commodi.','36','40','2019-05-23 08:53:22'),
('6','64','1','Recusandae aperiam ut ratione exercitationem. Culpa quia qui qui culpa. Est quod voluptatum nisi dolores.','37','25','2019-07-18 10:03:16'),
('60','23','4','Esse necessitatibus ut eveniet eum. Modi qui dolor nam ut nostrum accusantium et minus. Quod reprehenderit laborum corporis in eius perspiciatis. Sapiente voluptas adipisci rem repudiandae dolor. Ad eos est quia id qui excepturi quaerat.','38','23','2019-01-05 15:06:28'),
('18','16','2','Et repellendus impedit ullam ad corporis dicta. Quis aut corrupti voluptas. Quae odit cum et et doloremque id voluptates.','39','31','2018-10-23 07:49:19'),
('67','93','5','Molestiae eum totam nemo et consequuntur. Id eum reiciendis magni doloribus soluta rerum.','40','14','2019-03-26 06:58:07'),
('55','4','3','Culpa sint quia dignissimos placeat libero voluptas eaque. Quis voluptatum delectus sit quod dolorum qui. Id nulla explicabo cumque nostrum qui.','41','38','2018-10-12 05:39:46'),
('49','82','3','Consequatur sed accusamus qui. Enim molestiae placeat omnis labore libero. A nisi impedit nesciunt necessitatibus et eum. Eum officiis qui asperiores at voluptas.','42','17','2019-05-04 20:54:52'),
('46','78','2','Magni qui velit omnis accusamus qui cumque sit occaecati. Aut quia qui modi non ipsam consequatur praesentium. Sequi officiis mollitia velit libero consequatur.','43','26','2019-03-05 08:01:00'),
('12','89','2','Et labore impedit ea quod qui et suscipit quibusdam. Voluptatem exercitationem laboriosam ab exercitationem. Esse laudantium animi commodi sed deleniti.','44','40','2018-09-30 15:27:08'),
('85','38','3','Doloremque itaque illo voluptatem aut omnis harum. Sint modi nobis a sed. Dolore illum qui aliquid ut. Ullam ipsam dolore enim atque officiis voluptatem eligendi.','45','36','2018-09-12 04:15:51'),
('65','29','5','Quam mollitia excepturi natus unde et id. Doloribus labore quae sapiente tempora consequatur. Reprehenderit reprehenderit consequatur esse nam aliquam cumque. Possimus sit deleniti est.','46','5','2018-09-02 13:36:12'),
('79','22','3','Ipsam ea recusandae facilis ducimus aliquid perferendis recusandae. Veniam non dolore perferendis explicabo ipsa quia et.','47','1','2019-03-11 17:27:32'),
('68','22','3','Architecto dignissimos impedit sunt soluta ut. Nulla enim adipisci est quisquam odio. Veniam ea qui est voluptatem.','48','7','2019-05-07 03:23:32'),
('96','64','4','Natus magni omnis delectus occaecati. Debitis et quisquam et voluptatibus cumque sit. Enim qui perferendis non vitae dolorem quia qui omnis.','49','1','2019-03-20 13:38:44'),
('39','98','5','Nam quia temporibus harum velit sint. Impedit praesentium voluptas omnis qui vitae dolorem consequatur.','50','19','2018-09-21 14:25:04'),
('31','35','5','Qui occaecati explicabo autem provident enim qui maiores. Consequatur corporis ea ea. Aliquam laborum sed ea fugiat eos corporis dolores. Beatae quis qui ea distinctio nobis.','51','16','2019-02-25 14:47:24'),
('97','86','5','Temporibus veniam ea veritatis. Magni ut dolorem nemo consequuntur. Consectetur aperiam ut quisquam quae qui. Voluptatem sit laudantium ipsam rerum quod.','52','27','2018-10-03 04:48:13'),
('98','74','1','Error consectetur repellendus temporibus quod accusamus sunt. Consectetur veritatis occaecati et rerum. Qui nesciunt eos et eum dolorem dolore sunt. Nam accusamus quod dolore soluta magni fuga.','53','37','2019-03-22 05:04:31'),
('27','62','5','Consequuntur nam sapiente totam voluptas. Atque omnis ipsam qui a et deleniti. Voluptatem dolor eaque sed doloribus eos architecto. Velit nihil rerum iusto incidunt.','54','33','2019-05-08 23:52:22'),
('87','5','1','Enim iste qui unde omnis. Rerum modi veniam eos aperiam nulla. Aspernatur animi magnam et aperiam nemo numquam voluptates. In perspiciatis laboriosam ut iusto consectetur nemo.','55','30','2018-09-01 00:46:59'),
('90','99','1','Quia aliquam enim nemo suscipit rerum voluptatem illo. Quia voluptate voluptas omnis consectetur et magni.','56','6','2018-09-26 15:59:50'),
('48','8','4','Aliquid voluptas quas rerum quo illum. Rerum sequi aut nostrum ex. Optio quidem quo in ut molestiae cum. Ipsa consequatur qui accusamus quis distinctio optio enim earum.','57','3','2018-09-14 19:33:28'),
('2','31','4','Qui omnis est quaerat placeat animi eveniet occaecati sint. Quis aut amet veritatis adipisci in sed. Rerum voluptatibus fuga earum.','58','0','2018-11-11 16:08:17'),
('94','17','1','Fuga fugit iusto ipsam mollitia illum necessitatibus ut. Occaecati et voluptatem ut animi ea nulla. Sit reiciendis est deleniti commodi.','59','25','2018-08-27 21:29:38'),
('36','85','1','Non recusandae provident et voluptatem hic consequuntur corrupti. Necessitatibus omnis dignissimos fuga temporibus molestiae aut harum. Ad ut molestias dicta culpa quia inventore ipsa cumque.','60','32','2019-01-06 23:05:25'),
('26','52','2','Nulla ut necessitatibus deleniti totam explicabo. Voluptatibus voluptates suscipit consectetur praesentium qui qui facere. Blanditiis minima non rerum pariatur porro eos velit.','61','4','2018-11-16 04:57:22'),
('11','8','4','Ratione excepturi officiis mollitia aut ut est. Voluptatem dolore animi perferendis voluptatem. Nobis dolor doloribus quis quod.','62','16','2019-03-05 20:34:29'),
('92','88','2','Animi sed corporis voluptas nobis vel sunt. Consequuntur quaerat velit doloribus commodi cum cum rerum. Facilis repudiandae est ea eos perspiciatis aut perspiciatis fugiat. Repellat consequatur consectetur voluptatem voluptas.','63','22','2018-10-01 16:14:43'),
('50','75','4','Est dicta eius vel similique eum incidunt et. Veniam et et voluptatem magnam laborum consequatur. Temporibus at non non iste dolorem.','64','6','2019-04-27 00:42:36'),
('93','77','2','Eaque est officia accusantium dolorum voluptate. Quisquam iusto eum dolor minima corrupti sunt. Et itaque vero reprehenderit aliquid atque doloribus illum iure.','65','35','2018-09-10 19:34:48'),
('7','9','4','Nesciunt quaerat deserunt repudiandae maxime officia. Ratione est ea ea rerum veritatis reprehenderit occaecati. Porro atque dolorem aliquam natus modi.','66','35','2019-07-30 10:01:58'),
('84','67','1','Mollitia voluptates doloremque quia veniam. Quo dolores qui aspernatur repellendus. Commodi laboriosam qui iste magnam.','67','16','2018-08-28 00:16:14'),
('20','27','2','Fugiat suscipit facilis soluta voluptatum voluptas id sunt. Quis ex sit cumque hic aliquam. Qui nihil numquam in rerum voluptatem assumenda. Qui quo odio nobis omnis laboriosam adipisci ex.','68','3','2018-10-17 00:25:31'),
('24','77','4','Saepe sit repudiandae impedit repellat. Voluptatem vero ut distinctio alias ea neque laudantium. Error et a voluptas culpa.','69','17','2019-04-07 21:35:45'),
('88','3','1','Suscipit cumque animi optio quae. Nihil aut vel facilis debitis aliquid quia. Unde error et natus sit labore.','70','20','2019-07-18 19:06:38'),
('80','65','2','Beatae tempore qui aut ut quo. Eligendi unde voluptatem vel non natus. Perferendis eum id quia. Voluptatem sapiente quis culpa tenetur velit sint ut. Quia culpa voluptatem hic eos iusto dolor.','71','21','2019-06-25 16:16:30'),
('70','85','2','Eligendi aut eligendi dolor voluptatum enim eum nostrum. Eligendi veritatis recusandae iusto repellendus ut. Delectus quos et ipsa atque dicta. Iusto molestiae ex rerum cum et quia.','72','39','2019-07-04 04:50:47'),
('74','41','5','Quibusdam ad aut commodi. Occaecati quia alias molestiae magnam qui praesentium libero. Aut et ut ea sunt veniam ut quisquam.','73','22','2019-02-02 08:33:28'),
('77','79','5','Asperiores corrupti culpa ut omnis labore nobis repudiandae consequuntur. Totam quam at et ex iure. Quod earum qui nihil totam ut dolores fugiat enim.','74','6','2018-09-05 15:28:07'),
('9','46','5','Placeat enim ut qui voluptas maiores blanditiis quasi. Ut deserunt sint quia quia quia.','75','28','2018-09-01 18:55:08'),
('42','44','5','Debitis vel temporibus eos neque necessitatibus. Praesentium quia necessitatibus omnis esse quisquam.','76','10','2019-04-12 14:25:41'),
('38','20','2','Beatae et animi nisi numquam nihil corporis. Quasi velit ea consectetur consequatur. Non est blanditiis enim sit.','77','20','2019-07-21 18:25:25'),
('16','46','1','Sint et nihil optio expedita aut. Quia id commodi est aut doloribus.','78','14','2018-12-20 10:42:05'),
('1','35','3','Commodi porro necessitatibus est soluta nostrum voluptas est. Unde aut earum dolorem. Quam ad occaecati dicta exercitationem et.','79','31','2018-12-16 10:41:09'),
('45','92','2','Vero veniam voluptas voluptate autem sit exercitationem. Quia enim aut voluptatum animi tempora voluptatibus. Dolorum ut ratione pariatur eum qui omnis. Modi magnam nisi veniam voluptatum qui itaque at. Ut placeat aspernatur ipsa fugiat corporis.','80','7','2019-06-14 05:19:17'),
('8','16','3','Eum similique odit ut mollitia voluptatum odit sed. Voluptatibus sed ipsam praesentium quia suscipit consectetur laboriosam. Est sapiente placeat laboriosam praesentium.','81','24','2019-07-13 10:46:10'),
('22','72','2','Illo doloremque rem optio et fugit. Dicta facilis vitae tempore ducimus temporibus sunt. Eius dolorum ipsum ipsum velit impedit possimus optio. Eveniet non magnam libero molestiae ea id quo.','82','39','2019-01-20 19:25:06'),
('91','22','4','Amet soluta neque voluptatem qui nesciunt est. Quam recusandae dolorem id et. Nobis inventore ut sed perferendis distinctio.','83','40','2018-09-01 18:03:18'),
('17','69','4','Hic rerum natus soluta non error et. Voluptas tenetur totam possimus sapiente laudantium. Debitis veniam accusantium non vel sit.','84','6','2019-04-30 21:45:19'),
('58','92','3','Recusandae qui consequatur consequatur quia quaerat nesciunt deleniti. Dolore cupiditate ut qui ut molestiae ut autem est. Rerum laudantium perferendis ea et nesciunt nisi rerum. Dolorem quibusdam est aut itaque sit. Et nisi eveniet sunt voluptas.','85','38','2019-05-06 21:53:22'),
('75','100','3','Eos similique architecto consequuntur rerum et pariatur ex. Accusantium nulla totam sed iusto necessitatibus blanditiis quod id. Et beatae eligendi porro vel. Dolor error iusto consequatur totam maiores.','86','36','2019-01-15 00:09:40'),
('53','54','3','Quia deserunt voluptatem nisi perspiciatis voluptates. Ad aut aperiam repellendus velit ut quis animi. Aut mollitia aut enim fugit et laborum.','87','14','2018-12-26 19:37:29'),
('43','97','3','Voluptas officia rem fugiat dolorem officiis. Praesentium illum facere est ut. Placeat exercitationem dolorum porro iusto in porro doloremque est.','88','12','2018-12-23 02:41:34'),
('66','24','5','Ut et ex et voluptatem delectus nostrum quod. Amet dolore est laboriosam neque. Aliquam voluptas eius accusantium qui consequatur consequatur. Odit eos velit vel voluptas enim temporibus.','89','22','2018-11-22 12:25:23'),
('56','21','5','At libero quia est dicta labore. Alias repudiandae itaque minima iure rerum. Labore rerum sequi alias numquam sint. Velit quia sunt soluta minus natus.','90','1','2019-03-11 03:13:18'),
('100','56','3','Incidunt est repellendus architecto reprehenderit magnam. Quia harum rerum non qui qui. Officia ducimus nostrum quas et. Alias qui tempora laudantium et.','91','3','2019-07-12 13:10:07'),
('51','41','2','Omnis enim et quis. Occaecati adipisci temporibus eligendi velit totam. Doloribus accusamus id in id iure saepe. Temporibus non libero quia.','92','32','2018-09-01 20:22:19'),
('99','24','1','Adipisci aliquam commodi dolorem ipsam totam laudantium. Facere aspernatur in voluptate est est occaecati qui. Cupiditate corrupti est esse tenetur quo.','93','8','2019-03-27 21:00:28'),
('86','86','4','Dicta facilis consequuntur vel facilis adipisci et quaerat. Dolor occaecati iure ut voluptatem odit eius ut. Exercitationem aut ut ab enim.','94','10','2019-07-04 13:48:33'),
('19','84','2','Distinctio perferendis sed veniam corrupti quae quo omnis eos. Autem aut quisquam dicta voluptatem aut. Labore eos praesentium ab id recusandae hic consequuntur.','95','34','2019-02-18 16:17:55'),
('33','45','2','Voluptatum nam itaque hic sit quisquam. Accusantium nemo quasi non in culpa ut dolores sed. Sapiente sapiente aut ipsam et.','96','11','2019-02-11 07:01:03'),
('32','36','1','Nihil et distinctio minus perferendis fugiat corrupti illo et. Aliquid voluptatem accusamus odio harum itaque aut. Exercitationem reprehenderit vel velit molestias impedit fugiat.','97','40','2018-12-26 22:41:30'),
('95','90','5','Qui deserunt aut nihil aut. Maiores eveniet eaque quos maiores. Laudantium in sed minima quam et et iure perferendis.','98','33','2019-02-23 14:45:40'),
('64','87','4','Possimus tempore quis aut facere accusamus praesentium. Soluta corporis sit harum id. Molestiae molestias et iste voluptate. Dignissimos aut dignissimos consectetur hic ipsa. Ratione aut sunt culpa quia libero qui unde.','99','3','2018-08-22 22:23:59'),
('57','92','4','Nihil odio eligendi voluptas animi libero. Non autem nam sint maxime aut. Placeat exercitationem voluptate aut cumque velit. A eaque aliquam consequatur nihil voluptas. Rerum animi quia non impedit et nostrum.','100','5','2019-05-09 01:33:42'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

