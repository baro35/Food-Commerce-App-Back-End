-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: foodcommerce
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
  `id` bigint NOT NULL,
  `building_number` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `district` varchar(255) DEFAULT NULL,
  `hood_name` varchar(255) DEFAULT NULL,
  `street_no` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (5,'10','İzmir','Gaziemir','Yeşil','600'),(6,'10','İzmir','Buca','Ataturk','423'),(10,'2','İzmir','Buca','Kurucesme','423'),(46,'769','İzmir','Gaziemir','Atifbey','38'),(48,'770','İzmir','Gaziemir','Atifbey','38'),(50,'771','İzmir','Gaziemir','Atifbey','38'),(52,'771','İzmir','Gaziemir','Atifbey','38'),(54,'772','İzmir','Gaziemir','Atifbey','38'),(56,'134','İzmir','Buca','Kurucesme','11'),(58,'160','İzmir','Buca','Kurucesme','11'),(60,'78','İzmir','Konak','Kibris Sehitleri','56'),(62,'78','İzmir','Konak','Kibris Sehitleri','56'),(64,'79','İzmir','Konak','Kibris Sehitleri','56');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cardinformation`
--

DROP TABLE IF EXISTS `cardinformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cardinformation` (
  `id` bigint NOT NULL,
  `card_name` varchar(255) NOT NULL,
  `card_number` varchar(255) NOT NULL,
  `ccv` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmg5atkjh65mr25hy53v8rmfeu` (`user_id`),
  CONSTRAINT `FKmg5atkjh65mr25hy53v8rmfeu` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cardinformation`
--

LOCK TABLES `cardinformation` WRITE;
/*!40000 ALTER TABLE `cardinformation` DISABLE KEYS */;
INSERT INTO `cardinformation` VALUES (7,'Is Bankasi','1111 1111 1111 1111','222','07/23',2),(8,'Ziraat','2222 2222 2222 2222','333','07/23',2),(182,'Master Card','22222222222222','333','2023-01-06',3),(183,'asss','sdasda','dsada','2023-01-06',3);
/*!40000 ALTER TABLE `cardinformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (17,'Breakfast & Börek'),(18,'Burger'),(19,'Cag Kebab'),(20,'Chicken'),(21,'Çiğ Köfte'),(22,'Coffee'),(23,'Dessert'),(24,'Doner'),(25,'Home-Made Cuisine'),(26,'Ice Cream'),(27,'Kebab & Turkish'),(28,'Kokorec'),(29,'Kumpir'),(30,'Kumru'),(31,'Manti'),(32,'Meatballs'),(33,'Meze'),(34,'Pasta & Salad'),(35,'Patisserie & Bakery'),(36,'Pide & Lahmacun'),(37,'Pizza'),(38,'Rice'),(39,'Seafood'),(40,'Steak'),(41,'Toast & Sandwich'),(42,'Vegan Options'),(43,'Vegetarian Options'),(44,'Waffle'),(45,'World Cuisine & Café'),(94,'Drinks'),(150,'Far East');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluation`
--

DROP TABLE IF EXISTS `evaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evaluation` (
  `id` bigint NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `rate_value` int NOT NULL,
  `restaurant_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKr5que7u7h80ygdah43fwq0co7` (`restaurant_id`),
  KEY `FKqpsktd9js1aw0vd4e5m545ujt` (`user_id`),
  CONSTRAINT `FKqpsktd9js1aw0vd4e5m545ujt` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKr5que7u7h80ygdah43fwq0co7` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluation`
--

LOCK TABLES `evaluation` WRITE;
/*!40000 ALTER TABLE `evaluation` DISABLE KEYS */;
INSERT INTO `evaluation` VALUES (66,'it was delicious thanks.',5,47,2),(67,'Thanks for fast delivery.',5,47,3),(68,'it was so fresh.',5,51,2),(69,'Not bad :)',4,59,2),(70,'Classic',4,57,2),(71,'I love Bomba',5,61,2),(162,'değerlendirdim güzelmiş',4,51,3);
/*!40000 ALTER TABLE `evaluation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favoriterestaurants`
--

DROP TABLE IF EXISTS `favoriterestaurants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favoriterestaurants` (
  `id` bigint NOT NULL,
  `restaurant_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdsk1eu6l78yejuyvcgxd48gp9` (`restaurant_id`),
  KEY `FKe0qe0h23jm8b8lalgjk2lv3gy` (`user_id`),
  CONSTRAINT `FKdsk1eu6l78yejuyvcgxd48gp9` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`),
  CONSTRAINT `FKe0qe0h23jm8b8lalgjk2lv3gy` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favoriterestaurants`
--

LOCK TABLES `favoriterestaurants` WRITE;
/*!40000 ALTER TABLE `favoriterestaurants` DISABLE KEYS */;
INSERT INTO `favoriterestaurants` VALUES (72,47,2),(73,51,2),(74,53,2),(75,55,3),(76,59,3),(77,61,3),(184,47,3),(185,47,3);
/*!40000 ALTER TABLE `favoriterestaurants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food` (
  `id` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  `restaurant_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkomdx99dhk2cveaxugl2lws2u` (`category_id`),
  KEY `FKm9xrxt95wwp1r2s7andom1l1c` (`restaurant_id`),
  CONSTRAINT `FKkomdx99dhk2cveaxugl2lws2u` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FKm9xrxt95wwp1r2s7andom1l1c` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food`
--

LOCK TABLES `food` WRITE;
/*!40000 ALTER TABLE `food` DISABLE KEYS */;
INSERT INTO `food` VALUES (78,'Maxi Karisik',40,41,47),(79,'Kasap Sucuklu Sandvic',45,41,47),(80,'Maxi BamBam Sandvic',40,41,47),(81,'Ayvalik Sandvic',40,41,47),(82,'Patates Kizartmasi',30,41,47),(83,'Meyveli Waffle',64,44,49),(84,'Egzotik Waffle',74,44,49),(85,'Hedo',65,44,49),(86,'Cuba',55,44,49),(87,'Çiğ Köfte Dürüm',23,21,51),(88,'Mega Çiğ Köfte Dürüm',26,21,51),(89,'Ultra Mega Çiğ Köfte Dürüm',29,21,51),(90,'Doritos\'lu Çiğ Köfte Dürüm',28,21,51),(91,'Doritos\'lu Mega Çiğ Köfte Dürüm',34,21,51),(92,'Doritos\'lu Ultra Mega Çiğ Köfte Dürüm',37,21,51),(93,'Çiğ Köfte (200 gr.)',35,21,51),(95,'Çiğ Köfte (400gr.)',60,21,51),(96,'Çiğ Köfte (600gr.)',90,21,51),(97,'Çiğ Köfte (800gr.)',112,21,51),(98,'Çiğ Köfte (1kg.)',128,21,51),(99,'Çiğ Köfte Tako',25,21,51),(100,'Ekmek Arası Sardalya Fileto Tava',45,39,53),(101,'Karadeniz Usulü Hamsi Tava',85,39,53),(102,'Sardalya Fileto Tava',75,39,53),(103,'Ekmek Arası Mezgit Tava',65,39,53),(104,'Deniz Börülcesi',25,34,53),(105,'3\'lü Meze Menü',70,33,53),(106,'Adana Kebap',100,27,55),(107,'Urfa Kebap',100,27,55),(108,'Tavuk Şiş',100,20,55),(109,'Kanat',100,20,55),(110,'Izgara Köfte',100,27,55),(111,'Manisa Kebabı',100,27,55),(112,'Patlıcan Kebap',100,27,55),(113,'Filtre Kahve',25,22,57),(114,'Filtre Kahve',25,22,65),(115,'Ice Filtre Kahve',27,22,57),(116,'Ice Filtre Kahve',27,22,65),(117,'Cold Brew',35,22,57),(118,'Cold Brew',35,22,65),(119,'Americano',32,22,57),(120,'Americano',32,22,65),(121,'Machiato',35,22,57),(122,'Machiato',35,22,65),(123,'Latte',41,22,57),(124,'Latte',41,22,65),(125,'Flat White',45,22,57),(126,'Flat White',45,22,65),(127,'Cheesecake Limonlu',50,23,57),(128,'Cheesecake Limonlu',50,23,65),(129,'Cheesecake Ahududulu',50,23,57),(130,'Cheesecake Ahududulu',50,23,65),(131,'Triple Cookie',29,23,57),(132,'Triple Cookie',29,23,65),(133,'Cookie Pie',29,23,57),(134,'Cookie Pie',29,23,65),(135,'Su',11,94,57),(136,'Su',11,94,65),(137,'Su',9,94,59),(138,'Espresso',26,22,59),(139,'Mocha',31,22,59),(140,'White Chocolate Mocha',38,22,59),(141,'Türk Kahvesi',28,22,59),(142,'Filtre Kahve',28,22,59),(143,'Bomba (Classic)',10,23,61),(144,'Bomba (Vişneli)',10,23,61),(145,'Bomba (Beyaz Çikolata)',10,23,61),(146,'Bomba (Antep Fıstığı)',10,23,61),(147,'Bomba (Yer Fıstığı)',10,23,61),(148,'Bomba (Hindistan Cevizi)',10,23,61),(149,'Bomba (Karamelli)',10,23,61),(151,'California Roll',199,150,63),(152,'Tavuklu Noodle',101,150,63),(153,'Karidesli Noodle',179,150,63),(154,'Hot Sushi Set (12 Pcs.)',299,150,63),(155,'All In One Set (10 Pcs.)',359,150,63),(156,'California Dream Set (24 Pcs.)',450,150,63),(157,'Salmon California Roll',199,150,63),(158,'Philadelphia Roll',199,150,63),(159,'Mexican Roll',199,150,63);
/*!40000 ALTER TABLE `food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_portion`
--

DROP TABLE IF EXISTS `food_portion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_portion` (
  `food_id` bigint NOT NULL,
  `portion_id` bigint NOT NULL,
  KEY `FKi3ebtir7ekfyfsqnd0ph24r9` (`portion_id`),
  KEY `FK8pp19xtnpntmj2cdbwv004fl9` (`food_id`),
  CONSTRAINT `FK8pp19xtnpntmj2cdbwv004fl9` FOREIGN KEY (`food_id`) REFERENCES `food` (`id`),
  CONSTRAINT `FKi3ebtir7ekfyfsqnd0ph24r9` FOREIGN KEY (`portion_id`) REFERENCES `portion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_portion`
--

LOCK TABLES `food_portion` WRITE;
/*!40000 ALTER TABLE `food_portion` DISABLE KEYS */;
INSERT INTO `food_portion` VALUES (78,11),(79,11),(80,11),(81,11),(82,11),(83,11),(84,11),(85,11),(86,11),(87,11),(88,11),(89,11),(90,11),(91,11),(92,11),(93,11),(95,11),(96,11),(97,11),(98,11),(99,11),(100,11),(101,11),(102,11),(103,11),(104,11),(105,11),(114,11),(115,11),(116,11),(117,11),(118,11),(119,11),(120,11),(121,11),(122,11),(123,11),(124,11),(125,11),(126,11),(127,11),(128,11),(129,11),(130,11),(131,11),(132,11),(133,11),(134,11),(135,11),(136,11),(137,11),(138,11),(139,11),(140,11),(141,11),(142,11),(143,11),(144,11),(145,11),(146,11),(147,11),(148,11),(149,11),(151,11),(152,11),(153,11),(154,11),(155,11),(156,11),(157,11),(158,11),(159,11),(106,11),(106,12),(106,13),(107,11),(107,13),(107,12),(108,11),(108,12),(108,13),(109,11),(109,13),(109,12),(110,11),(110,12),(110,13),(111,11),(111,13),(111,12),(112,11),(112,12),(112,13),(113,11),(113,13),(113,12);
/*!40000 ALTER TABLE `food_portion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (186);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log` (
  `id` bigint NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint NOT NULL,
  `food_id` bigint DEFAULT NULL,
  `payment_type_id` bigint DEFAULT NULL,
  `restaurant_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `user_address_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5g4j2r53ncoltplogbnqlpt30` (`food_id`),
  KEY `FKb88q7mdoglvs19dkxsbc5l1hv` (`payment_type_id`),
  KEY `FKi7hgjxhw21nei3xgpe4nnpenh` (`restaurant_id`),
  KEY `FK32ql8ubntj5uh44ph9659tiih` (`user_id`),
  KEY `FKi2x7w4vss6hyc0yisf72uhjvh` (`user_address_id`),
  CONSTRAINT `FK32ql8ubntj5uh44ph9659tiih` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FK5g4j2r53ncoltplogbnqlpt30` FOREIGN KEY (`food_id`) REFERENCES `food` (`id`),
  CONSTRAINT `FKb88q7mdoglvs19dkxsbc5l1hv` FOREIGN KEY (`payment_type_id`) REFERENCES `paymenttype` (`id`),
  CONSTRAINT `FKi2x7w4vss6hyc0yisf72uhjvh` FOREIGN KEY (`user_address_id`) REFERENCES `address` (`id`),
  CONSTRAINT `FKi7hgjxhw21nei3xgpe4nnpenh` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (160,78,16,47,2,5),(161,85,16,49,2,5),(164,81,14,47,3,6),(165,106,14,55,3,6),(166,108,14,55,3,6),(167,111,14,55,3,6),(168,109,14,55,3,6),(169,78,14,47,3,6),(170,108,15,55,3,6),(171,109,15,55,3,6),(172,78,14,47,3,6),(173,80,14,47,3,6),(174,88,14,51,3,6),(175,81,14,47,3,6),(176,89,14,51,3,6),(177,80,14,47,3,6),(178,78,14,47,3,6),(179,80,14,47,3,6),(180,78,14,47,3,6),(181,78,14,47,3,6);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymenttype`
--

DROP TABLE IF EXISTS `paymenttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymenttype` (
  `id` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymenttype`
--

LOCK TABLES `paymenttype` WRITE;
/*!40000 ALTER TABLE `paymenttype` DISABLE KEYS */;
INSERT INTO `paymenttype` VALUES (14,'Cash - Pay At The Door'),(15,'Credit Card - Pay At The Door'),(16,'Credit Card - Online Payment');
/*!40000 ALTER TABLE `paymenttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portion`
--

DROP TABLE IF EXISTS `portion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `portion` (
  `id` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portion`
--

LOCK TABLES `portion` WRITE;
/*!40000 ALTER TABLE `portion` DISABLE KEYS */;
INSERT INTO `portion` VALUES (11,'Normal'),(12,'Büyük'),(13,'Aile Boyu');
/*!40000 ALTER TABLE `portion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `id` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  `address_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK96q13p1ptpewvus590a8o83xt` (`address_id`),
  CONSTRAINT `FK96q13p1ptpewvus590a8o83xt` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (47,'BamBam',46),(49,'Edem Waffle',48),(51,'Komagene',50),(53,'Balikci Yuksel',52),(55,'Tuna Ustanin Yeri',54),(57,'Starbucks',56),(59,'Not Bad',58),(61,'Celebi',60),(63,'SushiCo',62),(65,'StarBucks',64);
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_category`
--

DROP TABLE IF EXISTS `restaurant_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant_category` (
  `restaurant_id` bigint NOT NULL,
  `category_id` bigint NOT NULL,
  KEY `FKq2v7vgpohkb4eojo5xdjf2uxr` (`category_id`),
  KEY `FKa2k1csl388o7ii70i5h06kyg5` (`restaurant_id`),
  CONSTRAINT `FKa2k1csl388o7ii70i5h06kyg5` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`),
  CONSTRAINT `FKq2v7vgpohkb4eojo5xdjf2uxr` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_category`
--

LOCK TABLES `restaurant_category` WRITE;
/*!40000 ALTER TABLE `restaurant_category` DISABLE KEYS */;
INSERT INTO `restaurant_category` VALUES (49,23),(49,26),(49,44),(51,21),(51,39),(47,41),(47,21),(47,30),(55,19),(55,20),(55,24),(55,27),(55,33),(55,38),(57,22),(57,23),(57,42),(57,43),(57,45),(59,22),(59,23),(59,45),(61,23),(61,35),(65,22),(65,23),(65,45),(63,39),(63,38),(63,150),(53,39);
/*!40000 ALTER TABLE `restaurant_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL,
  `birth_date` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_6dotkott2kjsp8vw4d0m25fb7` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,' ','admin@gmail.com','admin','admin',' ',' '),(2,'02.06.2000','baranselcuk35@gmail.com','Baran','123','05364820220','Selcuk'),(3,'27.02.2000','gokaydinc@gmail.com','Gökay','3131','05061141664','Dinç');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_addresses`
--

DROP TABLE IF EXISTS `users_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_addresses` (
  `user_id` bigint NOT NULL,
  `addresses_id` bigint NOT NULL,
  KEY `FKe4noxx3lwcqyb2puartxil7g1` (`addresses_id`),
  KEY `FKrpoauh74gtrrvj9m8skx6vti1` (`user_id`),
  CONSTRAINT `FKe4noxx3lwcqyb2puartxil7g1` FOREIGN KEY (`addresses_id`) REFERENCES `address` (`id`),
  CONSTRAINT `FKrpoauh74gtrrvj9m8skx6vti1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_addresses`
--

LOCK TABLES `users_addresses` WRITE;
/*!40000 ALTER TABLE `users_addresses` DISABLE KEYS */;
INSERT INTO `users_addresses` VALUES (3,6),(2,5),(2,10);
/*!40000 ALTER TABLE `users_addresses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-04  3:53:44
