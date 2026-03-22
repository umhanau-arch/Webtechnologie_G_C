-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: bowl_konfigurator
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

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
-- Table structure for table `bestellungen`
--

DROP TABLE IF EXISTS `bestellungen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bestellungen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `config_id` int(11) DEFAULT NULL,
  `liefer_name` varchar(100) NOT NULL,
  `liefer_adresse` varchar(200) NOT NULL,
  `liefer_plz` varchar(10) NOT NULL,
  `liefer_stadt` varchar(100) NOT NULL,
  `liefer_zeit` varchar(100) NOT NULL,
  `zahlungsart` varchar(50) NOT NULL,
  `status` varchar(50) DEFAULT 'ausstehend',
  `erstellt_am` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bestellungen`
--

LOCK TABLES `bestellungen` WRITE;
/*!40000 ALTER TABLE `bestellungen` DISABLE KEYS */;
INSERT INTO `bestellungen` VALUES (1,1,NULL,'THOMAS','mustermannstr. 5','63450','hanau','In 1 Stunde (60 Min.)','PayPal','ausstehend','2026-03-17 13:26:12'),(2,1,NULL,'THOMAS','mustermannstr. 5','63450','hanau','Heute Abend (18:00-20:00 Uhr)','PayPal','ausstehend','2026-03-17 13:27:26'),(3,1,NULL,'THOMAS','mustermannstr. 5','63450','hanau','Heute Abend (18:00-20:00 Uhr)','PayPal','ausstehend','2026-03-17 13:36:52'),(4,1,NULL,'THOMAS','mustermannstr. 5','63450','hanau','Heute Abend (18:00-20:00 Uhr)','PayPal','ausstehend','2026-03-17 13:37:09'),(5,1,NULL,'THOMAS','mustermannstr. 5','63450','hanau','Heute Abend (18:00-20:00 Uhr)','PayPal','ausstehend','2026-03-17 13:37:49'),(6,1,NULL,'THOMAS','mustermannstr. 5','63450','hanau','Heute Abend (18:00-20:00 Uhr)','PayPal','ausstehend','2026-03-17 13:38:46'),(7,1,NULL,'THOMAS','mustermannstr. 5','63450','hanau','Heute Abend (18:00-20:00 Uhr)','PayPal','ausstehend','2026-03-17 13:39:34'),(8,1,NULL,'THOMAS','mustermannstr. 5','63450','hanau','In 1 Stunde (60 Min.)','Kreditkarte','ausstehend','2026-03-17 13:40:17'),(9,1,NULL,'THOMAS','mustermannstr. 5','63450','hanau','In 1 Stunde (60 Min.)','Kreditkarte','ausstehend','2026-03-17 13:40:47'),(10,1,NULL,'THOMAS','mustermannstr. 5','63450','hanau','Heute Abend (18:00-20:00 Uhr)','PayPal','ausstehend','2026-03-17 13:41:19'),(11,1,NULL,'THOMAS','mustermannstr. 5','63450','hanau','Heute Abend (18:00-20:00 Uhr)','PayPal','ausstehend','2026-03-17 13:50:12'),(12,1,NULL,'THOMAS','mustermannstr. 5','63450','hanau','In 1 Stunde (60 Min.)','PayPal','ausstehend','2026-03-17 13:51:14'),(13,1,NULL,'THOMAS','mustermannstr. 5','63450','hanau','So schnell wie möglich (25-35 Min.)','Rechnung','ausstehend','2026-03-17 14:00:21'),(14,1,NULL,'THOMAS','mustermannstr. 5','63450','hanau','So schnell wie möglich (25-35 Min.)','Rechnung','ausstehend','2026-03-17 14:52:37'),(15,1,NULL,'THOMAS','mustermannstr. 5','63450','hanau','Heute Abend (18:00-20:00 Uhr)','Rechnung','ausstehend','2026-03-17 14:53:33'),(16,1,NULL,'THOMAS','mustermannstr. 5','63450','hanau','In 1 Stunde (60 Min.)','Rechnung','ausstehend','2026-03-21 15:05:06'),(17,1,NULL,'THOMAS','mustermannstr. 5','63450','hanau','In 1 Stunde (60 Min.)','PayPal','ausstehend','2026-03-22 11:03:11'),(18,1,NULL,'THOMAS','mustermannstr. 5','63450','hanau','Heute Abend (18:00-20:00 Uhr)','Rechnung','ausstehend','2026-03-22 11:03:59'),(19,1,NULL,'THOMAS','mustermannstr. 5','63450','hanau','Heute Abend (18:00-20:00 Uhr)','Rechnung','ausstehend','2026-03-22 11:07:11');
/*!40000 ALTER TABLE `bestellungen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `step_number` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `max_select` int(11) DEFAULT 1,
  `icon` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Basis',1,'Wähle deine Bowl-Basis',1,'🍚'),(2,'Protein',2,'Wähle dein Protein (max. 2)',2,'🥩'),(3,'Gemüse & Extras',2,'Wähle dein Gemüse und Extras (max. 6)',6,'🥦'),(4,'Sauce',3,'Wähle deine Sauce (max. 2)',2,'🫙'),(5,'Topping',3,'Wähle deine Toppings (max. 3)',3,'✨'),(6,'Basis',1,'Wähle deine Bowl-Basis',1,'🍚'),(7,'Protein',2,'Wähle dein Protein (max. 2)',2,'🥩'),(8,'Gemüse & Extras',2,'Wähle dein Gemüse und Extras (max. 6)',6,'🥦'),(9,'Sauce',3,'Wähle deine Sauce (max. 2)',2,'🫙'),(10,'Topping',3,'Wähle deine Toppings (max. 3)',3,'✨'),(11,'Basis',1,'Wähle deine Bowl-Basis',1,'🍚'),(12,'Protein',2,'Wähle dein Protein (max. 2)',2,'🥩'),(13,'Gemüse & Extras',2,'Wähle dein Gemüse und Extras (max. 6)',6,'🥦'),(14,'Sauce',3,'Wähle deine Sauce (max. 2)',2,'🫙'),(15,'Topping',3,'Wähle deine Toppings (max. 3)',3,'✨');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_items`
--

DROP TABLE IF EXISTS `config_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_id` int(11) NOT NULL,
  `ingredient_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `config_id` (`config_id`),
  KEY `ingredient_id` (`ingredient_id`),
  CONSTRAINT `config_items_ibfk_1` FOREIGN KEY (`config_id`) REFERENCES `configurations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `config_items_ibfk_2` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_items`
--

LOCK TABLES `config_items` WRITE;
/*!40000 ALTER TABLE `config_items` DISABLE KEYS */;
INSERT INTO `config_items` VALUES (1,1,2),(2,1,12);
/*!40000 ALTER TABLE `config_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configurations`
--

DROP TABLE IF EXISTS `configurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configurations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT 'Meine Bowl',
  `total_price` decimal(6,2) NOT NULL,
  `total_calories` int(11) DEFAULT 0,
  `total_protein` decimal(5,1) DEFAULT 0.0,
  `coupon_code` varchar(50) DEFAULT NULL,
  `discount` decimal(5,2) DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `configurations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configurations`
--

LOCK TABLES `configurations` WRITE;
/*!40000 ALTER TABLE `configurations` DISABLE KEYS */;
INSERT INTO `configurations` VALUES (1,1,'ac',6.30,410,32.0,'BOWL10',0.70,'2026-03-17 11:33:25');
/*!40000 ALTER TABLE `configurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `discount_percent` int(11) NOT NULL,
  `valid_until` date DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
INSERT INTO `coupons` VALUES (1,'BOWL10',10,'2026-12-31',1),(2,'WELCOME20',20,'2026-06-30',1),(3,'VEGAN15',15,'2026-12-31',1);
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `calories` int(11) DEFAULT 0,
  `protein` decimal(5,1) DEFAULT 0.0,
  `is_vegan` tinyint(1) DEFAULT 0,
  `is_vegetarian` tinyint(1) DEFAULT 0,
  `is_glutenfree` tinyint(1) DEFAULT 0,
  `image` varchar(100) DEFAULT NULL,
  `available` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `ingredients_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` VALUES (1,1,'Jasminreis',2.50,180,3.5,1,1,1,'reis.jpg',1),(2,1,'Quinoa',3.00,160,6.0,1,1,1,'quinoa.jpg',1),(3,1,'Vollkornnudeln',2.50,200,7.0,1,1,0,'nudeln.jpg',1),(4,1,'Gemischter Salat',2.00,40,2.0,1,1,1,'salat.jpg',1),(5,1,'Süßkartoffel',2.80,130,2.5,1,1,1,'suesskartoffel.jpg',1),(6,2,'Gegrilltes Hähnchen',3.50,165,31.0,0,0,1,'haehnchen.jpg',1),(7,2,'Lachs',4.50,208,28.0,0,0,1,'lachs.jpg',1),(8,2,'Garnelen',4.00,99,24.0,0,0,1,'garnelen.jpg',1),(9,2,'Tofu',2.50,144,15.0,1,1,1,'tofu.jpg',1),(10,2,'Falafel',2.80,333,13.0,1,1,0,'falafel.jpg',1),(11,2,'Thunfisch',3.00,132,28.0,0,0,1,'thunfisch.jpg',1),(12,2,'Rindfleisch',4.00,250,26.0,0,0,1,'rind.jpg',1),(13,3,'Avocado',1.50,160,2.0,1,1,1,'avocado.jpg',1),(14,3,'Mais',0.50,86,3.2,1,1,1,'mais.jpg',1),(15,3,'Rote Paprika',0.50,31,1.0,1,1,1,'paprika.jpg',1),(16,3,'Gurke',0.50,16,0.7,1,1,1,'gurke.jpg',1),(17,3,'Edamame',1.00,121,11.0,1,1,1,'edamame.jpg',1),(18,3,'Mango',1.00,60,0.8,1,1,1,'mango.jpg',1),(19,3,'Rote Zwiebeln',0.30,40,1.1,1,1,1,'zwiebeln.jpg',1),(20,3,'Cherry-Tomaten',0.50,18,0.9,1,1,1,'tomaten.jpg',1),(21,3,'Spinat',0.50,23,2.9,1,1,1,'spinat.jpg',1),(22,3,'Brokkoli',0.50,34,2.8,1,1,1,'brokkoli.jpg',1),(23,3,'Karotten',0.30,41,0.9,1,1,1,'karotten.jpg',1),(24,3,'Rote Beete',0.80,43,1.6,1,1,1,'rotebeete.jpg',1),(25,3,'Zucchini',0.50,17,1.2,1,1,1,'zucchini.jpg',1),(26,3,'Kichererbsen',0.80,164,8.9,1,1,1,'kichererbsen.jpg',1),(27,3,'Oliven',0.80,115,0.8,1,1,1,'oliven.jpg',1),(28,3,'Jalapeños',0.50,29,0.9,1,1,1,'jalapenos.jpg',1),(29,3,'Rucola',0.50,25,2.6,1,1,1,'rucola.jpg',1),(30,3,'Süßkartoffel-Würfel',1.00,86,1.6,1,1,1,'suesskartoffelwuerfel.jpg',1),(31,3,'Pilze',0.80,22,3.1,1,1,1,'pilze.jpg',1),(32,3,'Feta-Käse',1.00,264,14.2,0,1,1,'feta.jpg',1),(33,3,'Mozzarella',1.00,280,18.0,0,1,1,'mozzarella.jpg',1),(34,3,'Schwarze Bohnen',0.80,132,8.9,1,1,1,'bohnen.jpg',1),(35,4,'Teriyaki',0.80,60,1.2,1,1,0,'teriyaki.jpg',1),(36,4,'Tahini',0.80,90,2.6,1,1,1,'tahini.jpg',1),(37,4,'Sriracha-Mayo',0.80,100,0.5,0,1,1,'sriracha.jpg',1),(38,4,'Honig-Senf',0.80,70,0.8,0,1,1,'honigsenf.jpg',1),(39,4,'Pesto',0.80,120,3.0,0,1,0,'pesto.jpg',1),(40,4,'Mango-Chili',0.80,55,0.5,1,1,1,'mangochili.jpg',1),(41,4,'Griechischer Joghurt',0.80,59,3.5,0,1,1,'joghurt.jpg',1),(42,4,'Zitrone-Kräuter',0.80,40,0.3,1,1,1,'zitronen.jpg',1),(43,5,'Sesam',0.30,52,1.6,1,1,1,'sesam.jpg',1),(44,5,'Geröstete Nüsse',0.50,85,2.0,1,1,1,'nuesse.jpg',1),(45,5,'Croutons',0.50,65,1.5,1,1,0,'croutons.jpg',1),(46,5,'Granatapfelkerne',0.80,35,0.5,1,1,1,'granatapfel.jpg',1),(47,5,'Kürbiskerne',0.50,70,3.0,1,1,1,'kuerbis.jpg',1),(48,5,'Frischer Koriander',0.30,5,0.3,1,1,1,'koriander.jpg',1),(49,5,'Schnittlauch',0.30,4,0.3,1,1,1,'schnittlauch.jpg',1),(50,5,'Chiliflocken',0.30,15,0.5,1,1,1,'chili.jpg',1);
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preset_bowls`
--

DROP TABLE IF EXISTS `preset_bowls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preset_bowls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preset_bowls`
--

LOCK TABLES `preset_bowls` WRITE;
/*!40000 ALTER TABLE `preset_bowls` DISABLE KEYS */;
INSERT INTO `preset_bowls` VALUES (1,'Asia Bowl','Jasminreis, Hähnchen, Edamame, Mango, Teriyaki, Sesam','Beliebt','#FF6B35'),(2,'Mediterranean Bowl','Quinoa, Falafel, Feta, Oliven, Tahini, Granatapfelkerne','Vegetarisch','#4CAF50'),(3,'Power Bowl','Quinoa, Lachs, Avocado, Spinat, Zitrone-Kräuter, Kürbiskerne','High Protein','#2196F3'),(4,'Vegan Dream','Süßkartoffel, Tofu, Kichererbsen, Rote Beete, Mango-Chili, Nüsse','Vegan','#9C27B0'),(5,'Asia Bowl','Jasminreis, Hähnchen, Edamame, Mango, Teriyaki, Sesam','Beliebt','#FF6B35'),(6,'Mediterranean Bowl','Quinoa, Falafel, Feta, Oliven, Tahini, Granatapfelkerne','Vegetarisch','#4CAF50'),(7,'Power Bowl','Quinoa, Lachs, Avocado, Spinat, Zitrone-Kräuter, Kürbiskerne','High Protein','#2196F3'),(8,'Vegan Dream','Süßkartoffel, Tofu, Kichererbsen, Rote Beete, Mango-Chili, Nüsse','Vegan','#9C27B0'),(9,'Asia Bowl','Jasminreis, Hähnchen, Edamame, Mango, Teriyaki, Sesam','Beliebt','#FF6B35'),(10,'Mediterranean Bowl','Quinoa, Falafel, Feta, Oliven, Tahini, Granatapfelkerne','Vegetarisch','#4CAF50'),(11,'Power Bowl','Quinoa, Lachs, Avocado, Spinat, Zitrone-Kräuter, Kürbiskerne','High Protein','#2196F3'),(12,'Vegan Dream','Süßkartoffel, Tofu, Kichererbsen, Rote Beete, Mango-Chili, Nüsse','Vegan','#9C27B0');
/*!40000 ALTER TABLE `preset_bowls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preset_items`
--

DROP TABLE IF EXISTS `preset_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preset_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `preset_id` int(11) NOT NULL,
  `ingredient_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `preset_id` (`preset_id`),
  KEY `ingredient_id` (`ingredient_id`),
  CONSTRAINT `preset_items_ibfk_1` FOREIGN KEY (`preset_id`) REFERENCES `preset_bowls` (`id`),
  CONSTRAINT `preset_items_ibfk_2` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preset_items`
--

LOCK TABLES `preset_items` WRITE;
/*!40000 ALTER TABLE `preset_items` DISABLE KEYS */;
INSERT INTO `preset_items` VALUES (1,1,1),(2,1,6),(3,1,15),(4,1,16),(5,1,29),(6,1,37),(7,2,2),(8,2,11),(9,2,30),(10,2,25),(11,2,30),(12,2,40),(13,3,2),(14,3,7),(15,3,13),(16,3,19),(17,3,36),(18,3,41),(19,4,5),(20,4,10),(21,4,24),(22,4,22),(23,4,34),(24,4,38),(25,1,1),(26,1,6),(27,1,15),(28,1,16),(29,1,29),(30,1,37),(31,2,2),(32,2,11),(33,2,30),(34,2,25),(35,2,30),(36,2,40),(37,3,2),(38,3,7),(39,3,13),(40,3,19),(41,3,36),(42,3,41),(43,4,5),(44,4,10),(45,4,24),(46,4,22),(47,4,34),(48,4,38),(49,1,1),(50,1,6),(51,1,15),(52,1,16),(53,1,29),(54,1,37),(55,2,2),(56,2,11),(57,2,30),(58,2,25),(59,2,30),(60,2,40),(61,3,2),(62,3,7),(63,3,13),(64,3,19),(65,3,36),(66,3,41),(67,4,5),(68,4,10),(69,4,24),(70,4,22),(71,4,34),(72,4,38);
/*!40000 ALTER TABLE `preset_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'THOMAS','AB@gmail.com','$2y$10$YRhzXc7FzOVwcRCZsp8I/.q3110QhYEekyFSccyhgp0xk0CnDiVd6','mustermannstr. 5','hanau','63450','2026-03-17 11:16:35');
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

-- Dump completed on 2026-03-22 13:23:55
