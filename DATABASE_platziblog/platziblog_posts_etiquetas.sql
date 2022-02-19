-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: platziblog
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `posts_etiquetas`
--

DROP TABLE IF EXISTS `posts_etiquetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_etiquetas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `etiqueta_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `postetiquetas_post_idx` (`post_id`),
  KEY `postetiquetas_etiquetas_idx` (`etiqueta_id`),
  CONSTRAINT `postetiquetas_etiquetas` FOREIGN KEY (`etiqueta_id`) REFERENCES `etiquetas` (`id`),
  CONSTRAINT `postetiquetas_post` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_etiquetas`
--

LOCK TABLES `posts_etiquetas` WRITE;
/*!40000 ALTER TABLE `posts_etiquetas` DISABLE KEYS */;
INSERT INTO `posts_etiquetas` VALUES (1,43,3),(2,43,11),(3,44,2),(4,44,4),(5,45,14),(6,45,13),(7,46,10),(8,46,11),(9,46,12),(10,46,20),(11,47,10),(12,48,1),(13,48,2),(14,48,4),(15,48,13),(16,49,13),(17,49,14),(18,49,17),(19,50,13),(20,50,14),(21,50,16),(22,51,7),(23,51,8),(24,51,9),(25,51,18),(26,52,8),(27,52,18),(28,53,7),(29,53,8),(30,54,4),(31,54,5),(32,55,5),(33,55,6),(34,56,5),(35,56,6),(36,56,10),(37,58,2),(38,58,3),(39,58,13),(40,59,1),(41,59,13),(42,57,10),(43,60,5),(44,60,6),(45,61,10),(46,61,12),(47,61,20),(48,62,5),(49,62,10),(50,63,13),(51,63,14),(52,63,17),(53,52,19);
/*!40000 ALTER TABLE `posts_etiquetas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-18 22:09:09
