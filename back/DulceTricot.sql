CREATE DATABASE  IF NOT EXISTS `mega_shop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mega_shop`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: mega_shop
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
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `line1` varchar(255) DEFAULT NULL,
  `line2` varchar(255) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `pincode` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_addresses_users1_idx` (`user_id`),
  CONSTRAINT `fk_addresses_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,'Test Address','Test Address','New Delhi','Delhi','India','9855698981',110045,1),(2,'Test Address 2','Gollahalli, Electronic City','Bangalore','Karnataka','India','9855698981',560100,1);
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Gorros','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTRmIVFkYFB8qqutJivw1q9EYEXo4TVBbUiw&usqp=CAU'),(2,'Bodies','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnYfSS3WKZiaxkI3z8tZV-0Qu8JgUV-kXX_A&usqp=CAU'),(3,'Bufandas','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaRWgLtnLAwh0T3BtSebq-66HgOJfh-SOGRw&usqp=CAU'),(4,'Mantas','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFF8mSWKgkHbtQlBN3Rpn-GfIFVCFAV933ag&usqp=CAU'),(5,'Chalecos','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSI61K2T9o-fzRxrkilht6rXZ15aFKGr9Xvig&usqp=CAU'),(6,'Pantalones','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYaD_5Ff9DtROarclmYz8Lb2-o6ZdKg593kg&usqp=CAU'),(7,'Jardineros','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUqnJi3nucnK8mkGRaJaE0XAeVPncXlY1Czg&usqp=CAU');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_orders_users1_idx` (`user_id`),
  CONSTRAINT `users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (7,1),(8,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1),(91,1),(93,1),(94,1),(95,1),(96,1),(97,1),(98,1),(99,1),(100,1),(101,1),(102,1),(103,1),(120,1),(121,1),(122,1),(123,1),(124,1),(6,2),(42,2),(43,2),(44,2),(63,2),(104,2),(105,2),(106,2),(107,2),(108,2),(109,2),(110,2),(111,2),(112,2),(113,2),(114,2),(115,2),(116,2),(117,2),(118,2),(119,2);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_details`
--

DROP TABLE IF EXISTS `orders_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_orders_has_products_products1_idx` (`product_id`),
  KEY `fk_orders_has_products_orders1_idx` (`order_id`),
  CONSTRAINT `fk_orders_has_products_orders1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_orders_has_products_products1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_details`
--

LOCK TABLES `orders_details` WRITE;
/*!40000 ALTER TABLE `orders_details` DISABLE KEYS */;
INSERT INTO `orders_details` VALUES (4,7,4,1),(6,8,5,1),(45,39,1,3),(49,40,1,2),(54,42,1,2),(59,43,1,2),(62,44,1,2),(66,52,4,1),(67,53,7,1),(68,54,1,1),(69,55,3,6),(70,56,1,1),(71,56,4,1),(72,56,7,1),(73,56,6,1),(74,57,2,1),(75,57,3,1),(76,58,3,1),(77,58,2,1),(78,59,2,1),(79,59,3,1),(80,60,2,1),(81,60,3,1),(82,61,2,1),(83,61,3,1),(84,62,1,1),(85,62,4,1),(86,63,1,2),(90,64,1,1),(91,64,2,1),(92,65,2,1),(93,65,3,1),(94,66,2,1),(95,67,3,2),(96,67,2,3),(97,68,8,2),(98,68,7,1),(99,69,5,2),(100,69,6,1),(101,70,2,1),(102,70,3,1),(103,71,2,1),(104,71,1,2),(105,71,4,6),(106,71,3,3),(107,72,1,1),(108,72,3,1),(109,73,6,2),(110,73,4,1),(111,74,5,1),(112,75,6,1),(113,76,2,1),(114,77,2,1),(115,77,3,1),(116,78,1,1),(117,78,2,1),(118,79,6,2),(119,79,8,1),(120,79,7,1),(121,80,1,1),(122,80,2,3),(123,81,4,3),(124,81,2,6),(125,81,3,6),(126,82,2,1),(127,82,3,1),(128,83,5,1),(129,85,3,3),(130,85,6,4),(131,85,4,1),(132,86,2,1),(133,87,4,3),(134,87,6,1),(135,89,7,4),(136,89,4,2),(137,89,5,3),(138,89,6,8),(139,90,4,4),(140,91,2,1),(141,93,2,1),(142,93,3,1),(143,94,2,1),(144,94,3,3),(145,95,5,1),(146,95,3,1),(147,95,2,1),(148,96,2,8),(149,96,4,1),(150,96,3,1),(151,97,6,1),(152,97,5,1),(153,98,3,6),(154,98,4,3),(155,99,2,14),(156,99,5,2),(157,100,2,5),(158,101,3,1),(159,102,3,3),(160,103,2,1),(161,103,4,3),(162,104,1,2),(166,105,1,2),(171,106,1,2),(174,107,1,2),(178,108,2,1),(179,109,2,1),(180,110,5,1),(181,110,4,1),(182,111,6,4),(183,111,7,1),(184,112,5,1),(185,112,2,1),(186,112,3,1),(187,113,2,1),(188,114,3,1),(189,115,2,1),(190,115,3,1),(191,116,3,1),(192,116,5,6),(193,117,4,1),(194,117,5,1),(195,118,2,1),(196,119,3,1),(197,120,2,1),(198,121,2,3),(199,121,8,1),(200,121,4,1),(201,122,2,1),(202,123,3,1),(203,124,8,4),(204,124,2,1);
/*!40000 ALTER TABLE `orders_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `images` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `quantity` int NOT NULL,
  `short_desc` varchar(255) NOT NULL,
  `cat_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_ibfk_1` (`cat_id`),
  FULLTEXT KEY `description` (`description`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Gorro punto 1','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTRmIVFkYFB8qqutJivw1q9EYEXo4TVBbUiw&usqp=CAU',NULL,'Gorro hecho en punto tricot 1',240.99,0,'Gorros',1),(2,'Gorro punto 2','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuLlU3s08Y59i3L3k3mC42z4eQL-wUX-4oBw&usqp=CAU',NULL,'Gorro  hecho en punto tricot 2',59.99,45,'Gorros',1),(3,'Gorro punto 3','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0WRHy9Xzsiy8P4AK827KJq5U-9h3LotR5YA&usqp=CAU',NULL,'Gorro  hecho en punto tricot 3',39.99,68,'Gorros',1),(4,'Body babe 1','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnYfSS3WKZiaxkI3z8tZV-0Qu8JgUV-kXX_A&usqp=CAU',NULL,'Body babe hecho en punto tricot 1',250,77,'Body',2),(5,'Body babe 2','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQq7Q0A7kS6cOsi2Ys7MeI1QxYdqsRjoC1XmA&usqp=CAU',NULL,'Body babe hecho en punto tricot 2',240.99,83,'Body',2),(6,'Body babe 3','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-HwpZVmCpgg2V8gJtxCJOW6J8o_kQ4bQSbA&usqp=CAU',NULL,'Body babe hecho en punto tricot 3',59.99,1,'Body',2),(7,'Body babe 4','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpYVR5TYxKq1R_ExKaG80K_D-2yzBnrKSDCA&usqp=CAU',NULL,'Body babe hecho en punto tricot 4',39.99,95,'Body',2),(8,'Bufanda 1','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaRWgLtnLAwh0T3BtSebq-66HgOJfh-SOGRw&usqp=CAU',NULL,'Bufanda hecho en punto tricot 1',250,95,'Bufanda',3),(9,'Bufanda 2','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQH8BGxlmUvuJHIvB24cgHuPui5oE-RFIY8LQ&usqp=CAU',NULL,'Bufanda hecho en punto tricot 2',240.99,100,'Bufanda',3),(10,'Bufanda 3','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsbSN8NlWhs8-bxJyY4g4cn1sKknjQTY-6Yg&usqp=CAU',NULL,'Bufanda hecho en punto tricot 3',59.99,100,'Bufanda',3);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'not set',
  `lname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'not set',
  `age` int DEFAULT '18',
  `role` int DEFAULT '555',
  `photoUrl` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `type` varchar(255) NOT NULL DEFAULT 'local',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'john','$2b$10$iLEz3tkVKeOCwuagcqhDUOV.Iswjc.I41unbnnFGiqK/gmstDCC3i','john@gmail.com','Indranil','Mukherjee',31,777,'','local'),(2,'shane','$2b$10$ewemZ.oLASXUIWfUrjkDeOTCZUCpnhSlR3/Act2eQnvGg6mnGLOtG','shane123@gmail.com','Navoneel','Mukherjee',27,555,'','local'),(11,'mike','$2b$10$vIS0W3LKhbx2tFh1GMYWhul7GWtIg4jnKU2C/NGux1pUG3QKMdNzO','mike-doe@excellent.com','Mike','Leming',40,555,'https://i.pinimg.com/originals/dc/55/a0/dc55a0fec14d93d9cf6fa32c32f7c7f2.jpg','local'),(14,'indramukh','$2b$10$po91FRkYQIfPDN6G1BxG0uIV7Z54GbJRkJw2t9wRec9uqmRKillqa','indramukh@hotmail.com','Indranil','Mukherjee',NULL,555,'https://image.shutterstock.com/image-vector/person-gray-photo-placeholder-man-260nw-1259815156.jpg','local'),(19,'test','$2b$10$cSa3jm7cboNSJRTgNRFJg.GviAzr/pyfptMxwxmjdKP./CdxDtLlK','test@gmail.com','Indranil','Mukherjee',NULL,555,'https://image.shutterstock.com/image-vector/person-gray-photo-placeholder-man-260nw-1259815156.jpg','local'),(20,'bhaikaju','$2b$10$P9X8c/MC39.Zxr2k5SfxK.lwbcj6PNou2ueqod29CFZrmuDUCvlfe','bhaikaju@gmail.com','Programming\'s Fun','not set',NULL,555,'https://lh3.googleusercontent.com/a-/AOh14GiPx0OQHJOCy-fSfNmKr1vbnM-Rp7CgS_jx_6oY=s96-c','social'),(21,'shreyamukherjee07','$2b$10$SOw/LSErH0IbZ96h7pop.O6NJreOD3HjRGiZZmKnqiXiuUPCl8b8W','shreyamukherjee07@gmail.com','Shreya','Mukherjee',NULL,555,'https://lh3.googleusercontent.com/a-/AOh14Gg2Be7kKwqsUbQwyuCGToyZcCQ3ZDDWNkvSbQJVHA=s96-c','social');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mega_shop'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-14 13:27:41
