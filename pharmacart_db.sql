-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: pharmacart_db
-- ------------------------------------------------------
-- Server version	8.0.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantity` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3d704slv66tw6x5hmbm6p2x3u` (`product_id`),
  KEY `FK9x4wn098i53ikun1ynxet2ynj` (`user_id`),
  CONSTRAINT `FK3d704slv66tw6x5hmbm6p2x3u` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FK9x4wn098i53ikun1ynxet2ynj` FOREIGN KEY (`user_id`) REFERENCES `user_dtls` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,1,33,2),(2,1,17,2),(3,1,1,2),(4,1,1,3),(5,1,1,4);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_name` varchar(255) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'c1.png',_binary '','Medicine'),(2,'c2.png',_binary '','Devices'),(3,'c3.png',_binary '','Protein Supplements'),(4,'c4.png',_binary '','Hair Care'),(5,'c5.png',_binary '','Personal Care'),(6,'c6.png',_binary '','Baby Care');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_address`
--

DROP TABLE IF EXISTS `order_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_address`
--

LOCK TABLES `order_address` WRITE;
/*!40000 ALTER TABLE `order_address` DISABLE KEYS */;
INSERT INTO `order_address` VALUES (1,'kumbla','Bengaluru','prajwalkumble75@gmail.com','praj','praj','7889379937','671321','kerala'),(2,'kumbla','Bengaluru','prajwalkumble75@gmail.com','praj','praj','7889379937','671321','kerala'),(3,'kumbla','Bengaluru','prajwalkumble75@gmail.com','praj','praj','7889379937','671321','kerala'),(4,'kumbla','Bengaluru','prajwalkumble75@gmail.com','praj','praj','07889379937','671321','kerala'),(5,'kumbla','Bengaluru','prajwalkumble75@gmail.com','praj','praj','07889379937','671321','kerala'),(6,'kumbla','Bengaluru','prajwalkumble75@gmail.com','praj','praj','07889379937','671321','kerala'),(7,'mudipu','mangalore','bhavish88@gmail.com','praj','Pk','08197073284','574199','karnataka'),(8,'mudipu','mangalore','bhavish88@gmail.com','Bhavish','Pk','08197073284','574199','karnataka'),(9,'mudipu','mangalore','bhavish88@gmail.com','Bhavish','Pk','08197073284','574199','karnataka'),(10,'mudipu','mangalore','bhavish88@gmail.com','Bhavish','Pk','08197073284','574199','karnataka'),(11,'mudipu','mangalore','samsangnxt@gmail.com','Bhavish','Pk','08197073284','574199','karnataka'),(12,'mudipu','mangalore','samsangnxt@gmail.com','Bhavish','Pk','08197073284','574199','karnataka'),(13,'mudipu','mangalore','samsangnxt@gmail.com','Bhavish','Pk','08197073284','574199','karnataka');
/*!40000 ALTER TABLE `order_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `description` varchar(5000) DEFAULT NULL,
  `discount` int NOT NULL,
  `discount_price` double DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `stock` int NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Medicine','Paracetamol 500mg - Pain reliever and fever reducer',10,441,'id1.png',_binary '',490,150,'Paracetamol500mg'),(2,'Medicine','Ibuprofen 200mg - Anti-inflammatory drug',15,553,'id2.png',_binary '',655,100,'Ibuprofen200mg'),(3,'Medicine','Amoxicillin 250mg - Antibiotic capsules',5,820,'id3.png',_binary '',860,80,'Amoxicillin250mg'),(4,'Medicine','Cetirizine 10mg - Allergy relief tablets',0,NULL,'id4.png',_binary '',410,200,'Cetirizine10mg'),(5,'Medicine','Omeprazole 20mg - Acid reducer',12,721,'id5.png',_binary '',820,90,'Omeprazole20mg'),(6,'Medicine','Metformin 500mg - Diabetes medication',10,1147,'id6.png',_binary '',1147,120,'Metformin500mg'),(7,'Medicine','Loratadine 10mg - Allergy relief',0,NULL,'id7.png',_binary '',615,100,'Loratadine10mg'),(8,'Medicine','Vitamin D3 1000 IU - Supplement',20,820,'id8.png',_binary '',820,140,'VitaminD33000IU'),(9,'Devices','Digital Blood Pressure Monitor',15,2413,'id9.png',_binary '',2869,50,'BPMonitor'),(10,'Devices','Infrared Thermometer',10,2210,'id10.png',_binary '',2458,75,'InfraredThermometer'),(11,'Devices','Pulse Oximeter',5,1500,'id11.png',_binary '',1638,60,'PulseOximeter'),(12,'Devices','Glucometer Kit',20,3279,'id12.png',_binary '',4099,40,'GlucometerKit'),(13,'Devices','Nebulizer Machine',15,8749,'id13.png',_binary '',10299,30,'NebulizerMachine'),(14,'Devices','Medical Stethoscope',10,3689,'id14.png',_binary '',4099,80,'MedicalStethoscope'),(15,'Devices','Thermometer Digital',0,NULL,'id15.png',_binary '',819,100,'DigitalThermometer'),(16,'Devices','Wheelchair Foldable',25,12299,'id16.png',_binary '',16399,20,'WheelchairFoldable'),(17,'Protein Supplements','Whey Protein Powder - Chocolate flavor',10,3674,'id17.png',_binary '',4099,100,'wheyproteinpowder'),(18,'Protein Supplements','Casein Protein Powder - Vanilla flavor',15,3163,'id18.png',_binary '',4099,80,'caseinproteinpowder'),(19,'Protein Supplements','Soy Protein Isolate',20,3279,'id19.png',_binary '',4099,70,'soyproteinisolate'),(20,'Protein Supplements','Pea Protein Powder',0,NULL,'id20.png',_binary '',2458,60,'peaproteinpowder'),(21,'Protein Supplements','Protein Bars (12-pack)',10,1479,'id21.png',_binary '',1638,90,'proteinbars'),(22,'Protein Supplements','Mass Gainer Powder',15,4099,'id22.png',_binary '',4899,40,'massgainerpowder'),(23,'Protein Supplements','Egg White Protein Powder',10,2210,'id23.png',_binary '',2458,50,'eggwhiteproteinpowder'),(24,'Protein Supplements','Collagen Peptides Powder',5,3089,'id24.png',_binary '',3279,65,'collagenpeptidespowder'),(25,'Hair Care','Anti-Dandruff Shampoo - 250ml',10,737,'id25.png',_binary '',819,150,'AntiDandruffShampoo'),(26,'Hair Care','Hair Fall Control Oil - 100ml',15,1231,'id26.png',_binary '',1439,120,'DeepNourishmentHairTreatment'),(27,'Hair Care','Hair Serum - Smooth and Shine',0,NULL,'id27.png',_binary '',1638,90,'HairSerum'),(28,'Hair Care','Volumizing Conditioner - 200ml',5,1231,'id28.png',_binary '',1439,130,'VolumizingConditioner'),(29,'Hair Care','Herbal Shampoo - 250ml',10,656,'id29.png',_binary '',737,110,'HerbalShampoo'),(30,'Hair Care','Hair Mask - Deep Nourishment',20,1638,'id30.png',_binary '',2049,70,'HairCareProducts'),(31,'Hair Care','Hair Growth Supplement Capsules',15,1399,'id31.png',_binary '',1638,65,'HairGrowthSupplement'),(32,'Hair Care','Leave-in Conditioner Spray',0,NULL,'id32.png',_binary '',1147,140,'LeaveInSpray'),(33,'Personal Care','Moisturizing Body Lotion - 300ml',10,737,'id33.png',_binary '',819,130,'bodylotion'),(34,'Personal Care','Antibacterial Hand Wash - 250ml',15,553,'id34.png',_binary '',655,150,'antibacterial'),(35,'Personal Care','Toothpaste - Whitening',0,NULL,'id35.png',_binary '',328,200,'toothpaste'),(36,'Personal Care','Deodorant Spray - Fresh',5,615,'id36.png',_binary '',655,120,'deodorant'),(37,'Personal Care','Facial Cleanser - Gentle',10,656,'id37.png',_binary '',737,100,'facewash'),(38,'Personal Care','Sunscreen Lotion SPF 50+',15,1231,'id38.png',_binary '',1439,90,'sunscreen'),(39,'Personal Care','Lip Balm - Hydrating',0,NULL,'id39.png',_binary '',410,140,'lipbalm'),(40,'Personal Care','Nail Care Kit',20,1479,'id40.png',_binary '',1638,80,'nailcare'),(41,'Baby Care',NULL,10,NULL,'id41.png',_binary '',350,100,'Baby Diapers Size M (20)'),(42,'Baby Care',NULL,5,NULL,'id42.png',_binary '',180,120,'Baby Shampoo 200ml'),(43,'Baby Care',NULL,8,NULL,'id43.png',_binary '',200,90,'Baby Lotion 100ml'),(44,'Baby Care',NULL,5,NULL,'id44.png',_binary '',150,150,'Baby Wipes (80 Sheets)'),(45,'Baby Care',NULL,7,NULL,'id45.png',_binary '',130,80,'Baby Powder 150g'),(46,'Baby Care',NULL,6,NULL,'id46.png',_binary '',170,110,'Baby Oil 100ml'),(47,'Baby Care',NULL,10,NULL,'id47.png',_binary '',220,75,'Diaper Rash Cream 50g'),(48,'Baby Care',NULL,12,NULL,'id48.png',_binary '',300,60,'Baby Feeding Bottle 250ml');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_order`
--

DROP TABLE IF EXISTS `product_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_date` date DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `order_address_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_qcdbxaeuc7c5gahwh0dutg04r` (`order_address_id`),
  KEY `FKh73acsd9s5wp6l0e55td6jr1m` (`product_id`),
  KEY `FK4f2ycr32kigtux5ag3tv0xu5m` (`user_id`),
  CONSTRAINT `FK4f2ycr32kigtux5ag3tv0xu5m` FOREIGN KEY (`user_id`) REFERENCES `user_dtls` (`id`),
  CONSTRAINT `FK8frxalwc79tpxo7hgqp3hsjck` FOREIGN KEY (`order_address_id`) REFERENCES `order_address` (`id`),
  CONSTRAINT `FKh73acsd9s5wp6l0e55td6jr1m` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_order`
--

LOCK TABLES `product_order` WRITE;
/*!40000 ALTER TABLE `product_order` DISABLE KEYS */;
INSERT INTO `product_order` VALUES (1,'2025-08-21','b6422a42-bff3-4223-8665-cca786533026','COD',737,1,'In Progress',1,33,2),(2,'2025-08-21','39be1c9a-ae52-46d8-a43c-5249c9906e42','COD',3674,1,'In Progress',2,17,2),(3,'2025-08-21','255ad52d-efff-4496-afcd-8bbed71f3429','COD',441,1,'In Progress',3,1,2),(4,'2025-08-21','dc2f1b66-a409-45ee-bd2d-8056e15c4020','COD',737,1,'In Progress',4,33,2),(5,'2025-08-21','56cef121-dc6d-4f20-8b72-0a26122d25a3','COD',3674,1,'In Progress',5,17,2),(6,'2025-08-21','f294bb90-7b37-4ebe-a47c-de310de29329','COD',441,1,'In Progress',6,1,2),(7,'2025-08-25','5f18ce24-c517-424c-bb6c-02571c58c945','COD',441,1,'In Progress',7,1,3),(8,'2025-08-25','9640c0ab-1136-458b-bb41-7b9db14d4935','COD',737,1,'In Progress',8,33,2),(9,'2025-08-25','4faa3a1e-2edb-40a2-b2a6-57ebd984eb7c','COD',3674,1,'In Progress',9,17,2),(10,'2025-08-25','b16cb2c3-e6b9-44d6-a917-3f6e506cfb09','COD',441,1,'In Progress',10,1,2),(11,'2025-08-25','c8f4cf57-52d8-4839-b84d-40e4bf23c2f4','COD',441,1,'In Progress',11,1,4),(12,'2025-08-25','bb8bb3c9-1a74-4a30-8246-a6f89427e0d5','COD',441,1,'In Progress',12,1,4),(13,'2025-08-25','d8672b9b-04c1-4b69-b3e0-a3610ad95780','COD',441,1,'In Progress',13,1,4);
/*!40000 ALTER TABLE `product_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `stock` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_dtls`
--

DROP TABLE IF EXISTS `user_dtls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_dtls` (
  `id` int NOT NULL AUTO_INCREMENT,
  `account_non_locked` bit(1) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `failed_attempt` int DEFAULT NULL,
  `is_enable` bit(1) DEFAULT NULL,
  `lock_time` datetime(6) DEFAULT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `reset_token` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_dtls`
--

LOCK TABLES `user_dtls` WRITE;
/*!40000 ALTER TABLE `user_dtls` DISABLE KEYS */;
INSERT INTO `user_dtls` VALUES (1,_binary '','Admin Address','Admin City','admin@gmail.com',0,_binary '',NULL,'9999999999','Admin','$2a$10$3sI2RhuuN2WT8/NnXGDJ6uQpW0oGiXEGRBccbLW1nXr/Dt2wTz72y','000000','default.jpg',NULL,'ROLE_ADMIN','Admin State'),(2,_binary '','kumble','kasaragod','prajwalkumble75@gmail.com',0,_binary '',NULL,'07994880449','praj','$2a$10$jYzhUSbD4D4biNxHVJ00LuD7fOHEOzbgnJFWPoVT5SMjSWwhuMr5S','671321','device_img.jpg','98425d50-ab16-46fa-945b-ad0a6fe35c8d','ROLE_USER','kerala'),(3,_binary '','mudipu','mangalore','bhavish88@gmail.com',0,_binary '',NULL,'8197073284','Bhavish Pk ','$2a$10$icsyEVp0xPE30CrxGEBWpeeiWiaz4/YY3GeV4zxDzTEY8SfOGkY2O','574199','Database_Schema.png',NULL,'ROLE_USER','karnataka'),(4,_binary '','mudipu','mangalore','samsangnxt@gmail.com',0,_binary '',NULL,'8197073284','Bhavish Pk ','$2a$10$z8FrZWqRsLE8Yp80L4crWO6Y/dn2dTXwB4WGsHAl1zsVE3RqtjD8e','574199','Database_Schema.png',NULL,'ROLE_USER','karnataka');
/*!40000 ALTER TABLE `user_dtls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('ROLE_USER','ROLE_ADMIN') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_6dotkott2kjsp8vw4d0m25fb7` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2025-09-24 21:23:59
