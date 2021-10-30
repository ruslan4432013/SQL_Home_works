DROP DATABASE IF EXISTS kinopoisk;
CREATE DATABASE kinopoisk;

USE kinopoisk;

-- MariaDB dump 10.17  Distrib 10.4.15-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_23
-- ------------------------------------------------------
-- Server version	10.4.15-MariaDB-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `command_films`
--

DROP TABLE IF EXISTS `command_films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `command_films` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `photo_id` bigint(20) unsigned NOT NULL,
  `persons_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `persons_type_id` bigint(20) unsigned NOT NULL,
  `persons_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `photo_id` (`photo_id`),
  KEY `persons_type_id` (`persons_type_id`),
  CONSTRAINT `command_films_ibfk_1` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`),
  CONSTRAINT `command_films_ibfk_2` FOREIGN KEY (`persons_type_id`) REFERENCES `type_persons` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `command_films`
--

LOCK TABLES `command_films` WRITE;
/*!40000 ALTER TABLE `command_films` DISABLE KEYS */;
INSERT INTO `command_films` VALUES (1,1,'Mya Gislason',1,'Et mollitia eveniet quia praesentium quibusdam veniam. Velit esse esse porro aut nobis facere. Fugiat veniam similique quas quae. Animi unde mollitia dolor voluptates voluptatem earum voluptas.'),(2,2,'Elody Rau',2,'Ipsam velit expedita consectetur voluptas enim cum facere. Omnis et eveniet nostrum.'),(3,3,'Mr. Ed Schulist V',3,'Vitae ratione praesentium harum delectus. Voluptatum corrupti tenetur vel iste et non. Quam delectus et laudantium velit.'),(4,4,'Oscar Johnson',4,'Est quae id ad placeat quo rerum mollitia. Labore recusandae architecto aut. Sequi error iusto dignissimos.'),(5,5,'Shanna Medhurst',1,'Consequatur possimus esse incidunt minima. Hic aut ea aut eos asperiores. Ratione repellat molestiae voluptatem culpa recusandae.'),(6,6,'Elisha McCullough I',2,'Qui est quibusdam ipsum cumque. Et quis dolor iure aut eveniet. Corrupti et cum aspernatur quis eaque eligendi.'),(7,7,'Prof. Maynard Schumm',3,'Nihil quo voluptatibus et ea voluptas. Error saepe ea et rerum magnam sunt nemo. Dolor accusantium velit earum voluptate fuga qui quam.'),(8,8,'Mr. Quincy Kulas',4,'Ratione excepturi tempora blanditiis ut veritatis. Voluptatem animi ab porro libero incidunt. Voluptas nobis atque consequatur dolores eveniet doloribus a nisi. Et provident et molestiae labore debitis soluta quia.'),(9,9,'Haleigh Weissnat I',1,'Adipisci aliquam aut perspiciatis possimus vitae dolores exercitationem libero. Sit earum adipisci necessitatibus consequuntur beatae distinctio in. Sit totam nisi aliquam. Inventore quisquam aut unde. Nemo voluptatem aperiam quia molestiae.'),(10,10,'Joy Hickle',2,'Unde vel non quae rerum. Veniam numquam sed non repellat sapiente laborum. Asperiores sint eligendi ut sint rerum est at.');
/*!40000 ALTER TABLE `command_films` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_type_id` bigint(20) unsigned NOT NULL,
  `rating` bigint(20) unsigned DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `required_subscription_type` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filename` (`filename`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,'et','Nihil est placeat dolor et non nam doloribus. Quod impedit eveniet provident magni. Accusantium omnis optio eos quos. Fuga quaerat non enim.',1,4,34,NULL,'1975-02-16 09:50:40','1983-11-18 22:01:36',1),(2,'distinctio','Ullam consequuntur minima et illo voluptatem non quia. Aperiam id sit et nostrum. Ut id nam voluptatem sapiente cumque modi.',2,1,259,NULL,'1976-07-22 00:43:32','1995-04-19 12:09:16',2),(3,'repellendus','Sit aliquam et quo et. Molestias quia maiores sunt labore iste et. Asperiores et quidem dolores. Aut autem et quibusdam in maxime tempora dicta accusamus.',3,3,658799,NULL,'2006-03-25 12:33:21','2006-12-03 11:01:28',3),(4,'odio','Ipsum odit in fugiat rem voluptatem. Quasi animi et officiis consequatur aut. Ut nam quae accusamus voluptatum at consectetur eius a. Odio molestiae voluptatem vero et.',4,2,0,NULL,'1991-02-23 01:35:07','2006-01-08 00:48:46',4),(5,'ut','Quaerat deserunt corrupti est distinctio quos et voluptatem laboriosam. Aut nihil harum rerum officia. Fugit saepe tempora veritatis ut earum quibusdam. Maxime et quasi saepe eos natus.',1,2,63529,NULL,'1988-01-01 17:28:10','2000-09-01 08:42:11',1),(6,'debitis','Omnis repellendus vel officiis rerum. Voluptatem voluptatibus labore praesentium perspiciatis asperiores eveniet et. Repellat eius non libero velit esse.',2,3,0,NULL,'1979-07-16 04:41:05','1985-08-05 08:39:04',2),(7,'ab','Vel voluptatem cumque dolorum aut enim maiores. Ipsa et illum pariatur totam voluptatem. Amet delectus facere enim sequi neque et. Omnis velit id debitis cumque. Quo velit nisi in quas beatae porro quia et.',3,4,0,NULL,'1986-10-08 19:23:27','1983-09-05 22:17:58',3),(8,'rem','Aperiam voluptatum odio ab ipsam. Impedit error perferendis rerum totam velit autem error. Fuga et deserunt laboriosam eos commodi. Totam voluptate voluptatem velit consequuntur non.',4,1,86959,NULL,'2007-10-17 11:58:05','1988-08-15 06:07:23',4),(9,'itaque','Et voluptas tempore et. Qui alias ut magnam qui temporibus voluptatem eaque. Rerum laborum hic earum dolorem sed.',1,1,79596,NULL,'2018-02-17 02:47:29','1997-06-25 00:52:09',1),(10,'voluptates','Praesentium suscipit deserunt dolor. Et illo tenetur ratione. Necessitatibus officiis corporis id vero et. Quia ab itaque quia magnam quasi velit. Nobis suscipit aliquam odio aliquam ipsa.',2,5,5,NULL,'2000-06-20 18:23:15','1979-12-11 04:11:18',2);
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_ratings`
--

DROP TABLE IF EXISTS `media_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_ratings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  `rate` enum('0','1','2','3','4','5') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `media_ratings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `media_ratings_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_ratings`
--

LOCK TABLES `media_ratings` WRITE;
/*!40000 ALTER TABLE `media_ratings` DISABLE KEYS */;
INSERT INTO `media_ratings` VALUES (61,1,1,'0','2010-02-16 04:37:49'),(62,2,2,'1','2015-06-30 09:07:50'),(63,3,3,'2','2011-07-14 00:20:25'),(64,4,4,'1','1995-02-17 02:39:47'),(65,5,5,'4','1992-11-01 08:02:58'),(66,6,6,'1','2020-09-06 01:16:54'),(67,7,7,'5','1994-03-30 00:29:44'),(68,8,8,'4','1987-07-09 23:29:49'),(69,9,9,'5','2019-12-04 04:29:22'),(70,10,10,'4','1978-01-25 04:36:21');
/*!40000 ALTER TABLE `media_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_types`
--

DROP TABLE IF EXISTS `media_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_types`
--

LOCK TABLES `media_types` WRITE;
/*!40000 ALTER TABLE `media_types` DISABLE KEYS */;
INSERT INTO `media_types` VALUES (1,' Action','2010-07-26 04:02:33','2015-01-17 08:04:46'),(2,'Horror','2013-05-21 10:02:17','1978-05-11 05:17:50'),(3,' Comedy','1996-08-29 22:33:40','2012-03-30 10:07:52'),(4,' Porn','1984-06-05 17:57:06','2017-08-29 23:10:50');
/*!40000 ALTER TABLE `media_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paid_subscriptions`
--

DROP TABLE IF EXISTS `paid_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paid_subscriptions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `type_subscription_id` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `paid_subscriptions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paid_subscriptions`
--

LOCK TABLES `paid_subscriptions` WRITE;
/*!40000 ALTER TABLE `paid_subscriptions` DISABLE KEYS */;
INSERT INTO `paid_subscriptions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,1),(6,6,2),(7,7,3),(8,8,4),(9,9,1),(10,10,2);
/*!40000 ALTER TABLE `paid_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `size` int(11) DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (1,136434291,NULL),(2,3,NULL),(3,20345329,NULL),(4,386,NULL),(5,3411574,NULL),(6,22,NULL),(7,7308991,NULL),(8,0,NULL),(9,78536,NULL),(10,33,NULL);
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `photo_id` (`photo_id`),
  CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'f','2020-12-05',1,'2006-05-05 06:25:21'),(2,'f','2017-12-17',2,'1973-10-04 15:10:52'),(3,'f','2020-10-07',3,'1997-08-20 14:07:45'),(4,'m','2008-01-09',4,'1994-07-04 01:37:15'),(5,'f','2019-06-24',5,'1997-05-01 04:20:37'),(6,'m','1985-04-17',6,'1986-07-08 13:18:58'),(7,'m','1974-10-01',7,'1986-10-19 01:55:01'),(8,'f','2017-07-18',8,'1989-11-01 18:47:51'),(9,'f','1980-08-14',9,'2019-05-13 04:35:07'),(10,'f','2013-05-07',10,'2020-08-12 01:14:14');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_persons`
--

DROP TABLE IF EXISTS `type_persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_persons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type_persons` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_persons`
--

LOCK TABLES `type_persons` WRITE;
/*!40000 ALTER TABLE `type_persons` DISABLE KEYS */;
INSERT INTO `type_persons` VALUES (1,' director'),(2,' stuntman'),(3,' producer'),(4,'actors');
/*!40000 ALTER TABLE `type_persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_subscription`
--

DROP TABLE IF EXISTS `type_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_subscription` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type_subscription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_subscription` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_subscription`
--

LOCK TABLES `type_subscription` WRITE;
/*!40000 ALTER TABLE `type_subscription` DISABLE KEYS */;
INSERT INTO `type_subscription` VALUES (1,' child',1299),(2,' full',1021),(3,' home',1652),(4,'free',412);
/*!40000 ALTER TABLE `type_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Tevin','Denesik','lenna.nikolaus@example.org','43013c53ce217f40eaf921a4069deba8f764008f',89750280851),(2,'Jerald','Wolff','sbauch@example.net','1bfe3a2f988b65c6ac9c32420960481ef6642bdb',89860329668),(3,'Giovanna','Dach','hilpert.heloise@example.org','8a0ca3a798836f625a724579e239f6939bb13d68',89009967286),(4,'Lon','Roob','shanelle83@example.net','aeba78d9b2a45e28527381240f59f540dacb1bcb',89426293772),(5,'Tara','Wyman','friesen.holly@example.org','7fde012dc84a438cc2e8c54519e691a1bc019f9a',89057800245),(6,'Jovany','Pacocha','chelsey52@example.org','a57d1375636fd9df0712429e922fa7d0211fdaa5',89756958003),(7,'Earlene','Donnelly','kuphal.sheridan@example.net','e8dab5826931c3d6ec85dd7d27bf0bc99e701c4c',89246106359),(8,'Orie','Little','muller.bettye@example.org','17b1f93aa8149a2da6987831dc2ba0097a40daec',89826977806),(9,'Suzanne','Kautzer','aswift@example.org','d4620c067e53877cc20069303db7f507a330b65d',89876241531),(10,'Maurine','O\'Reilly','pink14@example.org','46e8e727f05d28733172db03ce98c2888a98b253',89008823131);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-01  3:48:20
