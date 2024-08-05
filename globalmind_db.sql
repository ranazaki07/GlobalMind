-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: globalmind_db
-- ------------------------------------------------------
-- Server version	8.0.38

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
-- Table structure for table `businesses`
--

DROP TABLE IF EXISTS `businesses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `businesses` (
  `business_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text,
  `website` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`business_id`),
  KEY `idx_businesses_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `businesses`
--

LOCK TABLES `businesses` WRITE;
/*!40000 ALTER TABLE `businesses` DISABLE KEYS */;
INSERT INTO `businesses` VALUES (1,'CustomShoe','Customized Shoe Business','www.customshoe.com','153 Sydney','2024-07-07 01:59:35','2024-07-07 01:59:35'),(2,'Small Business #2','Description for Business #2','www.business2.com','Location #2','2024-07-07 01:59:35','2024-07-07 01:59:35'),(3,'GreenGardens','Organic gardening supplies','www.greengardens.com','45 Green St','2024-07-07 01:59:35','2024-07-07 01:59:35'),(4,'TechTrends','Latest tech gadgets and reviews','www.techtrends.com','789 Tech Ave','2024-07-07 01:59:35','2024-07-07 01:59:35'),(5,'HealthyLiving','Health and wellness products','www.healthyliving.com','101 Wellness Blvd','2024-07-07 01:59:35','2024-07-07 01:59:35');
/*!40000 ALTER TABLE `businesses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaigns` (
  `campaign_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` text,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `business_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`campaign_id`),
  KEY `idx_campaigns_business_id` (`business_id`),
  CONSTRAINT `campaigns_ibfk_1` FOREIGN KEY (`business_id`) REFERENCES `businesses` (`business_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns`
--

LOCK TABLES `campaigns` WRITE;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
INSERT INTO `campaigns` VALUES (1,'Social Awareness','Campaign to raise awareness','2024-07-01','2024-07-31',1,'2024-07-07 02:00:40','2024-07-07 02:00:40'),(2,'Support Local','Encouraging local shopping','2024-08-01','2024-08-31',2,'2024-07-07 02:00:40','2024-07-07 02:00:40'),(3,'Green Earth','Promoting sustainable practices','2024-09-01','2024-09-30',3,'2024-07-07 02:00:40','2024-07-07 02:00:40'),(4,'Tech Innovation','Showcasing new technologies','2024-10-01','2024-10-31',4,'2024-07-07 02:00:40','2024-07-07 02:00:40'),(5,'Health First','Raising health awareness','2024-11-01','2024-11-30',5,'2024-07-07 02:00:40','2024-07-07 02:00:40');
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donations`
--

DROP TABLE IF EXISTS `donations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donations` (
  `donation_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`donation_id`),
  KEY `idx_donations_user_id` (`user_id`),
  CONSTRAINT `donations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donations`
--

LOCK TABLES `donations` WRITE;
/*!40000 ALTER TABLE `donations` DISABLE KEYS */;
INSERT INTO `donations` VALUES (1,2,50.00,'2024-07-07 02:00:40'),(2,3,75.00,'2024-07-07 02:00:40'),(3,4,100.00,'2024-07-07 02:00:40'),(4,5,25.00,'2024-07-07 02:00:40'),(5,1,60.00,'2024-07-07 02:00:40'),(6,2,45.00,'2024-07-07 02:00:40'),(7,3,30.00,'2024-07-07 02:00:40'),(8,4,85.00,'2024-07-07 02:00:40'),(9,5,90.00,'2024-07-07 02:00:40'),(10,1,55.00,'2024-07-07 02:00:40');
/*!40000 ALTER TABLE `donations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `session_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `login_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`session_id`),
  KEY `idx_sessions_user_id` (`user_id`),
  CONSTRAINT `sessions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES (1,1,'2024-07-01 03:30:00','2024-07-01 11:30:00'),(2,2,'2024-07-02 02:30:00','2024-07-02 10:30:00'),(3,3,'2024-07-03 04:30:00','2024-07-03 12:30:00'),(4,4,'2024-07-04 04:00:00','2024-07-04 12:00:00'),(5,5,'2024-07-05 03:15:00','2024-07-05 11:15:00'),(6,1,'2024-07-06 03:30:00','2024-07-06 11:30:00'),(7,2,'2024-07-07 02:30:00','2024-07-07 10:30:00'),(8,3,'2024-07-08 04:30:00','2024-07-08 12:30:00'),(9,4,'2024-07-09 04:00:00','2024-07-09 12:00:00'),(10,5,'2024-07-10 03:15:00','2024-07-10 11:15:00');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  KEY `idx_users_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'john_doe','1234567890','hash_pw','advocate','2024-07-07 01:59:03','2024-07-07 01:59:03'),(2,'jane_smith','0987654321','hash_pw','client','2024-07-07 01:59:03','2024-07-07 01:59:03'),(3,'alice_jones','1122334455','hash_pw','advocate','2024-07-07 01:59:03','2024-07-07 01:59:03'),(4,'bob_brown','6677889900','hash_pw','client','2024-07-07 01:59:03','2024-07-07 01:59:03'),(5,'charlie_clark','4455667788','hash_pw','client','2024-07-07 01:59:03','2024-07-07 01:59:03');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webinars`
--

DROP TABLE IF EXISTS `webinars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webinars` (
  `webinar_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` text,
  `date` date DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`webinar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webinars`
--

LOCK TABLES `webinars` WRITE;
/*!40000 ALTER TABLE `webinars` DISABLE KEYS */;
INSERT INTO `webinars` VALUES (1,'Impact Together','Webinar Details','2024-07-11','10:00-13:00','www.webinarlink.com','2024-07-07 02:00:40','2024-07-07 02:00:40'),(2,'Small Steps, Big Change','Making a difference','2024-07-12','14:00-15:00','www.webinarlink.com/2','2024-07-07 02:00:40','2024-07-07 02:00:40'),(3,'Empower & Inspire','Inspiring stories','2024-07-13','10:00-11:00','www.webinarlink.com/3','2024-07-07 02:00:40','2024-07-07 02:00:40'),(4,'Future Tech','Technology trends','2024-07-14','16:00-18:00','www.webinarlink.com/4','2024-07-07 02:00:40','2024-07-07 02:00:40'),(5,'Healthy Living','Wellness tips','2024-07-15','09:00-11:00','www.webinarlink.com/5','2024-07-07 02:00:40','2024-07-07 02:00:40');
/*!40000 ALTER TABLE `webinars` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-07  8:19:06
