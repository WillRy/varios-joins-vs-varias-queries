-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: example
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `user_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Rua 4',1),(2,'Rua 5',1),(3,'Rua 6',1),(4,'Rua 4',2),(5,'Rua 5',2),(6,'Rua 6',2),(7,'Rua 4',3),(8,'Rua 5',3),(9,'Rua 6',3),(10,'Rua 4',4),(11,'Rua 5',4),(12,'Rua 6',4),(13,'Rua 4',5),(14,'Rua 5',5),(15,'Rua 6',5),(16,'Rua 4',6),(17,'Rua 5',6),(18,'Rua 6',6),(19,'Rua 4',7),(20,'Rua 5',7),(21,'Rua 6',7),(22,'Rua 4',8),(23,'Rua 5',8),(24,'Rua 6',8),(25,'Rua 4',9),(26,'Rua 5',9),(27,'Rua 6',9),(28,'Rua 4',10),(29,'Rua 5',10),(30,'Rua 6',10),(31,'Rua 4',11),(32,'Rua 5',11),(33,'Rua 6',11),(34,'Rua 4',12),(35,'Rua 5',12),(36,'Rua 6',12),(37,'Rua 4',13),(38,'Rua 5',13),(39,'Rua 6',13),(40,'Rua 4',14),(41,'Rua 5',14),(42,'Rua 6',14),(43,'Rua 4',15),(44,'Rua 5',15),(45,'Rua 6',15),(46,'Rua 4',16),(47,'Rua 5',16),(48,'Rua 6',16),(49,'Rua 4',17),(50,'Rua 5',17),(51,'Rua 6',17),(52,'Rua 4',18),(53,'Rua 5',18),(54,'Rua 6',18),(55,'Rua 4',19),(56,'Rua 5',19),(57,'Rua 6',19),(58,'Rua 4',20),(59,'Rua 5',20),(60,'Rua 6',20);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `extension` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `user_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `files_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (1,'documento.pdf','pdf','documento1.pdf',1),(2,'documento.pdf','pdf','documento1.pdf',1),(3,'documento.pdf','pdf','documento1.pdf',1),(4,'documento.pdf','pdf','documento1.pdf',2),(5,'documento.pdf','pdf','documento1.pdf',2),(6,'documento.pdf','pdf','documento1.pdf',2),(7,'documento.pdf','pdf','documento1.pdf',3),(8,'documento.pdf','pdf','documento1.pdf',3),(9,'documento.pdf','pdf','documento1.pdf',3),(10,'documento.pdf','pdf','documento1.pdf',4),(11,'documento.pdf','pdf','documento1.pdf',4),(12,'documento.pdf','pdf','documento1.pdf',4),(13,'documento.pdf','pdf','documento1.pdf',5),(14,'documento.pdf','pdf','documento1.pdf',5),(15,'documento.pdf','pdf','documento1.pdf',5),(16,'documento.pdf','pdf','documento1.pdf',6),(17,'documento.pdf','pdf','documento1.pdf',6),(18,'documento.pdf','pdf','documento1.pdf',6),(19,'documento.pdf','pdf','documento1.pdf',7),(20,'documento.pdf','pdf','documento1.pdf',7),(21,'documento.pdf','pdf','documento1.pdf',7),(22,'documento.pdf','pdf','documento1.pdf',8),(23,'documento.pdf','pdf','documento1.pdf',8),(24,'documento.pdf','pdf','documento1.pdf',8),(25,'documento.pdf','pdf','documento1.pdf',9),(26,'documento.pdf','pdf','documento1.pdf',9),(27,'documento.pdf','pdf','documento1.pdf',9),(28,'documento.pdf','pdf','documento1.pdf',10),(29,'documento.pdf','pdf','documento1.pdf',10),(30,'documento.pdf','pdf','documento1.pdf',10),(31,'documento.pdf','pdf','documento1.pdf',11),(32,'documento.pdf','pdf','documento1.pdf',11),(33,'documento.pdf','pdf','documento1.pdf',11),(34,'documento.pdf','pdf','documento1.pdf',12),(35,'documento.pdf','pdf','documento1.pdf',12),(36,'documento.pdf','pdf','documento1.pdf',12),(37,'documento.pdf','pdf','documento1.pdf',13),(38,'documento.pdf','pdf','documento1.pdf',13),(39,'documento.pdf','pdf','documento1.pdf',13),(40,'documento.pdf','pdf','documento1.pdf',14),(41,'documento.pdf','pdf','documento1.pdf',14),(42,'documento.pdf','pdf','documento1.pdf',14),(43,'documento.pdf','pdf','documento1.pdf',15),(44,'documento.pdf','pdf','documento1.pdf',15),(45,'documento.pdf','pdf','documento1.pdf',15),(46,'documento.pdf','pdf','documento1.pdf',16),(47,'documento.pdf','pdf','documento1.pdf',16),(48,'documento.pdf','pdf','documento1.pdf',16),(49,'documento.pdf','pdf','documento1.pdf',17),(50,'documento.pdf','pdf','documento1.pdf',17),(51,'documento.pdf','pdf','documento1.pdf',17),(52,'documento.pdf','pdf','documento1.pdf',18),(53,'documento.pdf','pdf','documento1.pdf',18),(54,'documento.pdf','pdf','documento1.pdf',18),(55,'documento.pdf','pdf','documento1.pdf',19),(56,'documento.pdf','pdf','documento1.pdf',19),(57,'documento.pdf','pdf','documento1.pdf',19),(58,'documento.pdf','pdf','documento1.pdf',20),(59,'documento.pdf','pdf','documento1.pdf',20),(60,'documento.pdf','pdf','documento1.pdf',20);
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone`
--

DROP TABLE IF EXISTS `phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` varchar(255) DEFAULT NULL,
  `user_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `phone_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone`
--

LOCK TABLES `phone` WRITE;
/*!40000 ALTER TABLE `phone` DISABLE KEYS */;
INSERT INTO `phone` VALUES (1,'1111-1111',1),(2,'2222-2222',1),(3,'3333-3333',1),(4,'1111-1111',2),(5,'2222-2222',2),(6,'3333-3333',2),(7,'1111-1111',3),(8,'2222-2222',3),(9,'3333-3333',3),(10,'1111-1111',4),(11,'2222-2222',4),(12,'3333-3333',4),(13,'1111-1111',5),(14,'2222-2222',5),(15,'3333-3333',5),(16,'1111-1111',6),(17,'2222-2222',6),(18,'3333-3333',6),(19,'1111-1111',7),(20,'2222-2222',7),(21,'3333-3333',7),(22,'1111-1111',8),(23,'2222-2222',8),(24,'3333-3333',8),(25,'1111-1111',9),(26,'2222-2222',9),(27,'3333-3333',9),(28,'1111-1111',10),(29,'2222-2222',10),(30,'3333-3333',10),(31,'1111-1111',11),(32,'2222-2222',11),(33,'3333-3333',11),(34,'1111-1111',12),(35,'2222-2222',12),(36,'3333-3333',12),(37,'1111-1111',13),(38,'2222-2222',13),(39,'3333-3333',13),(40,'1111-1111',14),(41,'2222-2222',14),(42,'3333-3333',14),(43,'1111-1111',15),(44,'2222-2222',15),(45,'3333-3333',15),(46,'1111-1111',16),(47,'2222-2222',16),(48,'3333-3333',16),(49,'1111-1111',17),(50,'2222-2222',17),(51,'3333-3333',17),(52,'1111-1111',18),(53,'2222-2222',18),(54,'3333-3333',18),(55,'1111-1111',19),(56,'2222-2222',19),(57,'3333-3333',19),(58,'1111-1111',20),(59,'2222-2222',20),(60,'3333-3333',20);
/*!40000 ALTER TABLE `phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL DEFAULT '',
  `last_name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `level` int NOT NULL DEFAULT '1',
  `forget` varchar(255) DEFAULT NULL,
  `genre` varchar(10) DEFAULT NULL,
  `datebirth` date DEFAULT NULL,
  `document` varchar(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'registered' COMMENT 'registered, confirmed',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  FULLTEXT KEY `full_text` (`first_name`,`last_name`,`email`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'John','Doe','johndoe@test.com','$2y$10$7aQNdKPaeaX0wwxShqfDN.Jwc4SzPPQGOk7fZdLgV/WmGvVx6oFwm',1,NULL,NULL,NULL,NULL,NULL,'registered','2021-12-04 16:44:58',NULL),(2,'Gwendolyn','Cathenod','gcathenod1@oaic.gov.au','$2y$10$7aQNdKPaeaX0wwxShqfDN.Jwc4SzPPQGOk7fZdLgV/WmGvVx6oFwm',1,NULL,NULL,NULL,NULL,NULL,'registered','2022-01-14 23:30:48',NULL),(3,'Clayton','Doe','johndoe1@test.com','$2y$10$7aQNdKPaeaX0wwxShqfDN.Jwc4SzPPQGOk7fZdLgV/WmGvVx6oFwm',1,NULL,NULL,NULL,NULL,NULL,'registered','2021-12-04 18:11:54','2021-12-04 18:23:39'),(4,'Josnei','Doe','johndoe2@test.com','$2y$10$7aQNdKPaeaX0wwxShqfDN.Jwc4SzPPQGOk7fZdLgV/WmGvVx6oFwm',1,NULL,NULL,NULL,NULL,NULL,'registered','2021-12-04 18:11:55','2021-12-04 18:23:39'),(5,'Valdislei','Doe','johndoe3@test.com','$2y$10$7aQNdKPaeaX0wwxShqfDN.Jwc4SzPPQGOk7fZdLgV/WmGvVx6oFwm',1,NULL,NULL,NULL,NULL,NULL,'registered','2021-12-04 18:11:56','2021-12-04 18:23:39'),(6,'Walter','Doe','johndoe4@test.com','$2y$10$7aQNdKPaeaX0wwxShqfDN.Jwc4SzPPQGOk7fZdLgV/WmGvVx6oFwm',1,NULL,NULL,NULL,NULL,NULL,'registered','2021-12-04 18:11:57','2021-12-04 18:33:04'),(7,'Gilmar','Doe','johndoe5@test.com','$2y$10$7aQNdKPaeaX0wwxShqfDN.Jwc4SzPPQGOk7fZdLgV/WmGvVx6oFwm',1,NULL,NULL,NULL,NULL,NULL,'registered','2021-12-04 18:11:59','2021-12-04 18:33:04'),(8,'John','Doe','johndoe6@test.com','$2y$10$7aQNdKPaeaX0wwxShqfDN.Jwc4SzPPQGOk7fZdLgV/WmGvVx6oFwm',1,NULL,NULL,NULL,NULL,NULL,'registered','2021-12-04 18:12:00',NULL),(9,'John','Doe','johndoe7@test.com','$2y$10$7aQNdKPaeaX0wwxShqfDN.Jwc4SzPPQGOk7fZdLgV/WmGvVx6oFwm',1,NULL,NULL,NULL,NULL,NULL,'registered','2021-12-04 18:12:01',NULL),(10,'John','Doe','johndoe8@test.com','$2y$10$7aQNdKPaeaX0wwxShqfDN.Jwc4SzPPQGOk7fZdLgV/WmGvVx6oFwm',1,NULL,NULL,NULL,NULL,NULL,'registered','2021-12-04 18:12:04',NULL),(11,'John','Doe','johndoe9@test.com','$2y$10$7aQNdKPaeaX0wwxShqfDN.Jwc4SzPPQGOk7fZdLgV/WmGvVx6oFwm',1,NULL,NULL,NULL,NULL,NULL,'registered','2021-12-04 18:12:06',NULL),(12,'John','Doe','johndoe10@test.com','$2y$10$7aQNdKPaeaX0wwxShqfDN.Jwc4SzPPQGOk7fZdLgV/WmGvVx6oFwm',1,NULL,NULL,NULL,NULL,NULL,'registered','2021-12-04 18:12:07',NULL),(13,'','','fulano1640455783@fulano.com','',1,NULL,NULL,NULL,NULL,NULL,'registered','2021-12-25 18:09:43',NULL),(14,'','','fulano1640455795@fulano.com','',1,NULL,NULL,NULL,NULL,NULL,'registered','2021-12-25 18:09:55',NULL),(15,'','','fulano1640455802@fulano.com','',1,NULL,NULL,NULL,NULL,NULL,'registered','2021-12-25 18:10:02',NULL),(16,'','','fulano1640455813@fulano.com','',1,NULL,NULL,NULL,NULL,NULL,'registered','2021-12-25 18:10:13',NULL),(17,'','','fulano1640455850@fulano.com','',1,NULL,NULL,NULL,NULL,NULL,'registered','2021-12-25 18:10:50',NULL),(18,'','','fulano1640455884@fulano.com','',1,NULL,NULL,NULL,NULL,NULL,'registered','2021-12-25 18:11:24',NULL),(19,'','','fulano1640455922@fulano.com','',1,NULL,NULL,NULL,NULL,NULL,'registered','2021-12-25 18:12:02',NULL),(20,'','','fulano1640455967@fulano.com','',1,NULL,NULL,NULL,NULL,NULL,'registered','2021-12-25 18:12:47',NULL),(21,'','','fulano1640456261@fulano.com','',1,NULL,NULL,NULL,NULL,NULL,'registered','2021-12-25 18:17:41',NULL);
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

-- Dump completed on 2022-02-12 23:19:33
