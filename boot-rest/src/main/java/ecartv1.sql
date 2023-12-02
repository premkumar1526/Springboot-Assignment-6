/*-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: ecartv1
-- ------------------------------------------------------
-- Server version	8.0.30*/

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
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `brand_id` int NOT NULL,
  `brand_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*--
-- Dumping data for table `brands`
--*/

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (18,'Samsung'),(31,'Hp'),(35,'Lenovo'),(44,'Dell'),(49,'Apple'),(60,'Samsung'),(73,'Hp'),(77,'Lenovo'),(81,'Sony'),(86,'One Plus'),(90,'Real Me'),(94,'Mi'),(98,'Vivo');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

/*--
-- Table structure for table `cart`
--*/

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `qty` double NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*--
-- Dumping data for table `cart`
--*/

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,1,3,1),(2,6,1,1),(3,10,10,2),(4,14,6,3),(5,27,2,4),(6,30,1,5);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

/*--
-- Table structure for table `categories`
--*/

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `category_id` int NOT NULL,
  `category_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*--
-- Dumping data for table `categories`
--*/

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (3,'Laptops'),(11,'Mobiles'),(45,'Laptops'),(53,'Mobiles'),(82,'Televisions');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

/*--
-- Table structure for table `hibernate_sequence`
--*/

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*--
-- Dumping data for table `hibernate_sequence`
--*/

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (170);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

/*--
-- Table structure for table `hibernate_sequences`
--*/

DROP TABLE IF EXISTS `hibernate_sequences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequences` (
  `sequence_name` varchar(255) NOT NULL,
  `next_val` bigint DEFAULT NULL,
  PRIMARY KEY (`sequence_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*--
-- Dumping data for table `hibernate_sequences`
--*/

LOCK TABLES `hibernate_sequences` WRITE;
/*!40000 ALTER TABLE `hibernate_sequences` DISABLE KEYS */;
INSERT INTO `hibernate_sequences` VALUES ('default',15);
/*!40000 ALTER TABLE `hibernate_sequences` ENABLE KEYS */;
UNLOCK TABLES;

/*--
-- Table structure for table `orders`
--*/

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `order_date` datetime DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `product_id` int NOT NULL,
  `qty` int NOT NULL,
  `total` double NOT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*--
-- Dumping data for table `orders`
--*/

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2022-10-28 12:06:32','success',1,3,135000,'202210280001',1),(2,'2022-10-28 12:06:32','success',6,2,470000,'202210280002',1),(3,'2022-10-28 12:06:32','success',10,1,97000,'202210280003',2),(4,'2022-10-28 12:06:32','success',14,5,675000,'202210280004',3),(5,'2022-10-28 12:06:32','success',17,4,625000,'202210280005',4),(6,'2022-11-04 11:22:16','Success',76,8,440000,'9017749413963851283',3),(7,'2022-11-04 11:22:16','Success',76,1,55000,'1384612859426883911',3),(8,'2022-11-04 11:22:16','Success',76,2,110000,'919584692795945311',3),(9,'2022-11-04 11:22:16','Success',76,6,330000,'3050253511470694688',3),(10,'2022-11-04 11:22:16','Success',48,2,470000,'5315968274779280440',3);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

/*--
-- Table structure for table `price_info`
--*/

DROP TABLE IF EXISTS `price_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `price_info` (
  `price_id` int NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`price_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*--
-- Dumping data for table `price_info`
--*/

LOCK TABLES `price_info` WRITE;
/*!40000 ALTER TABLE `price_info` DISABLE KEYS */;
INSERT INTO `price_info` VALUES (4,45000),(8,235000),(12,97000),(15,135000),(19,125000),(22,122000),(25,98000),(28,125000),(32,267000),(36,55000),(46,45000),(50,235000),(54,97000),(57,135000),(61,125000),(64,122000),(67,98000),(70,125000),(74,267000),(78,55000),(83,245000),(87,65000),(91,56000),(95,67000),(99,34000),(165,45000),(168,38000);
/*!40000 ALTER TABLE `price_info` ENABLE KEYS */;
UNLOCK TABLES;

/*--
-- Table structure for table `products`
--*/

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `rating` double NOT NULL,
  `brand_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `price_id` int DEFAULT NULL,
  `stock_id` int DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `FKog2rp4qthbtt2lfyhfo32lsw9` (`category_id`),
  KEY `FK9ilqpy62n1ruig6vxau5xet4c` (`price_id`),
  KEY `FK521o6mmi4qi3ht9ubiq23d1fx` (`stock_id`),
  KEY `FKdhk1hh773y0mvkursh78sxg0d` (`brand_id`),
  CONSTRAINT `FK521o6mmi4qi3ht9ubiq23d1fx` FOREIGN KEY (`stock_id`) REFERENCES `stock_info` (`stock_id`),
  CONSTRAINT `FK9ilqpy62n1ruig6vxau5xet4c` FOREIGN KEY (`price_id`) REFERENCES `price_info` (`price_id`),
  CONSTRAINT `FKdhk1hh773y0mvkursh78sxg0d` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`brand_id`),
  CONSTRAINT `FKog2rp4qthbtt2lfyhfo32lsw9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*--
-- Dumping data for table `products`
--*/

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (43,'I5 Gen12 16GB RAM 2 TB SSD','Dell,I5','Dell Laptop',0,44,45,46,47),(48,'Apple M2 chip 16 GB 2 TB SSD','Apple,Mac Book,Mac Book Pro,M2','Apple Macbook Pro',0,49,45,50,51),(52,'256 GB Purple','Phone,Iphone,Iphone14','Iphone14',0,49,53,54,55),(56,'512 GB Deep Blue','Phone,Iphone,Iphone14 Pro','Iphone 14 Pro',0,44,45,57,58),(59,'256 GB Green','Phone,Iphone,Iphone14 Pro','Iphone 14 Pro',0,60,53,61,62),(63,'512 Black','Samsung,S22','Samsung S22',0,44,45,64,65),(66,'256 Blue','Samsung,S22','Samsung S22',0,44,45,67,68),(69,'512 Red','Samsung,S22','Samsung S22',0,44,45,70,71),(72,'I9 Gen12 32GB RAM 2 TB SSD','HP,Laptop','HP Laptop',0,73,45,74,75),(76,'I5 Gen12 16GB RAM 2 TB SSD','Lenovo,I5','Lenovo Laptop',0,77,45,78,79),(80,'65 inch OLED','Sony,Bravio,OLED,65 inch','Sony Bravio',0,81,82,83,84),(85,'512 GB Blue','One Plus,10R','One Plus 10R',0,86,53,87,88),(89,'256 GB Green Glass','Real Me,GT,GT Pro','Real Me GT Pro',0,90,53,91,92),(93,'65 inch OLED','MI,MI OLED,OLED,65 inch','MI OLED TV',0,94,82,95,96),(97,'256 GB Blue','Vivo','Vivo 5.7 OLED ',0,98,53,99,100),(164,'Iphone12 256 GB Red Color','Apple,Iphone12,Iphone','Iphone12',0,49,11,165,166),(167,'Iphone 10 4.7 inches screen ','Iphone,Apple,Iphone10','Iphone 10',0,49,11,168,169);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

/*--
-- Table structure for table `stock_info`
--*/

DROP TABLE IF EXISTS `stock_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_info` (
  `stock_id` int NOT NULL,
  `stock` int NOT NULL,
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*--
-- Dumping data for table `stock_info`
--*/

LOCK TABLES `stock_info` WRITE;
/*!40000 ALTER TABLE `stock_info` DISABLE KEYS */;
INSERT INTO `stock_info` VALUES (5,6),(9,10),(13,13),(16,2),(20,30),(23,6),(26,6),(29,6),(33,3),(37,8),(47,6),(51,10),(55,13),(58,2),(62,30),(65,6),(68,6),(71,6),(75,3),(79,8),(84,14),(88,20),(92,16),(96,12),(100,13),(166,76),(169,18);
/*!40000 ALTER TABLE `stock_info` ENABLE KEYS */;
UNLOCK TABLES;

/*--
-- Table structure for table `user_info`
--*/

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info` (
  `user_id` int NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `mobile` bigint NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UK_nd4xxe4sfscx08oods9gi8y2v` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*--
-- Dumping data for table `user_info`
--*/

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (1,'Hyderabad','1983-08-21','praveen@abc.com','Praveen','Reddy',8787878787,'$2a$10$6swlvXed/Wi2c2aK2u/a/utKpl9Oxoe48l/ZoQyQyiagMFeoThR/y','user1'),(2,'Chennai','1981-02-22','david@abc.com','David','Rodson',9749876545,'$2a$10$oBpO96UYvsPkbSTJbIKhIO6c1yK8wB0AlzgPd5Tuu2jUZifuzIGtu','user2'),(3,'USA','1980-02-12','james@abc.com','James','Goedic',9854643234,'$2a$10$qjMjjhtCAc1RV92BDj4ixO/Rw/y5R/WNrWGedB4cn7gBdulbyQk22','james'),(4,'Kolkatha','1991-09-18','bucky@abc.com','Bucky','Wall',7898098765,'$2a$10$sxlaHfl8ALZWs41sdONnF.IdQ94QhGCb3WCpgzSwFf3snpCUukQ8u','user4'),(5,'Delhi','1978-05-29','prashanth@abc.com','Prashath','Kumar',6578989987,'$2a$10$gSQJJZmNwG.jOHj6LUrPQuiVWrvZzVjqyMdD3y9uaA83ls9yJ/3Iu','user5');
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

/*-- Dump completed on 2022-11-04 11:32:36*/
