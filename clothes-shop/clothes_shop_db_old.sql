-- MySQL dump 10.13  Distrib 5.7.27, for Linux (i686)
--
-- Host: localhost    Database: shop_old
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '100',
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'category_default.jpg',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'men',NULL,100,NULL,'Мужчины','category_default.jpg'),(2,'women',NULL,100,NULL,'Женщины','category_default.jpg'),(3,'accessories',NULL,100,NULL,'Аксессуары','category_default.jpg'),(4,'mens_shirts',1,100,NULL,'Рубашки','category_default.jpg'),(5,'womens_dresses',2,100,NULL,'Платья','category_default.jpg'),(6,'mens_trousers',1,100,NULL,'Штаны','category_default.jpg'),(7,'jeans',6,100,NULL,'Джинсы','category_default.jpg'),(8,'sports_trousers',6,100,NULL,'Спортивные штаны','category_default.jpg'),(9,'womens_shirts',2,100,NULL,'Рубашки','category_default.jpg'),(10,'summer_shirts',4,100,NULL,'Летние рубашки','category_default.jpg'),(11,'warm_shirts',4,100,NULL,'Теплые рубашки','category_default.jpg'),(12,'mens_jackets',1,100,NULL,'Куртки','category_default.jpg'),(13,'mens_sweatshirts',1,100,NULL,'Кофты','category_default.jpg'),(14,'winter_jackets',12,100,NULL,'Зимние куртки','category_default.jpg'),(15,'autumn_jackets',12,100,NULL,'Осенние куртки','category_default.jpg'),(16,'windcheater',12,100,NULL,'Ветровки','category_default.jpg'),(17,'hoodie',13,100,NULL,'Толстовки с капюшоном','category_default.jpg'),(18,'sweaters',13,100,NULL,'Свитера','category_default.jpg'),(19,'sweaters_with_buttons',13,100,NULL,'Кофты с пуговицами','category_default.jpg'),(20,'evening_dresses',5,100,NULL,'Вечерние платья','category_default.jpg'),(21,'summer_dresses\r\n',5,100,NULL,'Летние платья','category_default.jpg'),(22,'long_shirts',9,100,NULL,'Длинные рубашки','category_default.jpg'),(23,'short_shirts',9,100,NULL,'Короткие рубашки','category_default.jpg'),(24,'warn_shirts',9,100,NULL,'Теплые рубашки','category_default.jpg'),(25,'skirts',2,100,NULL,'Юбки','category_default.jpg'),(26,'long_skirts',25,100,NULL,'Длинные юбки','category_default.jpg'),(27,'short_skirts',25,100,NULL,'Короткие юбки','category_default.jpg'),(28,'leather_skirts',25,100,NULL,'Кожаные юбки','category_default.jpg'),(29,'hats',2,100,NULL,'Головные уборы','category_default.jpg'),(30,'baseball_cap',29,100,NULL,'Бейсболки','category_default.jpg'),(31,'winter_hats',29,100,NULL,'Зимние шапки','category_default.jpg'),(32,'towels',3,100,NULL,'Полотенца','category_default.jpg'),(33,'belts',3,100,NULL,'Ремни','category_default.jpg'),(34,'shawls',3,100,NULL,'Платки','category_default.jpg'),(35,'glasses',3,100,NULL,'Очки','category_default.jpg'),(36,'beach_towel',32,100,NULL,'Пляжное полотенце','category_default.jpg'),(37,'bath_towel',32,100,NULL,'Банное полотенце','category_default.jpg');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `last_order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'test','test','Moscow','321',0),(2,'test','test','Moscow','123',0),(3,'Имя','Фамилия','Москва','123456',0),(4,'test2','test2','Vjscow','234234',0),(5,'test2','test2','Moscow','123456',0),(6,'test2','test2','Moscow','123456',0),(7,'test2','test2','Moscow','123456',0),(8,'test2','test2','Moscow','123456',0),(9,'test2','test2','Moscow','123456',0),(10,'test2','test2','Moscow','123456',0),(11,'test2','test2','Moscow','123456',0),(12,'test2','test2','MMM','123456789',47),(13,'','','','',48),(14,'','','','',49),(15,'','','','',50),(16,'','','','',51),(17,'sadsd','asdfasdf','asdfasd','sdafasdf',0),(18,'sadsd','asdfasdf','asdfasd','sdafasdf',52),(19,'sdzfgsdf','sdfvsdfv','asdawsd','1234567',53),(21,'Foo','Foo','Foo','123456',55),(22,'Bar','Bar','Bar','654321',56),(24,'Fff','Fff','Fff','987654321',58),(25,'Tii','Tii','Tiiiiii','0987654321',59),(26,'Test3','Test3','Moscow','12345678',61),(27,'','','','',62),(28,'test3 no User','test3 no User','Moscow','123456',63);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk-emails-user_id` (`user_id`),
  KEY `fk-emails-customer_id` (`customer_id`),
  CONSTRAINT `fk-emails-customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `fk-emails-user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
INSERT INTO `emails` VALUES (8,2,NULL,'hello@mail.ru'),(9,3,1,'test@mail.ru'),(11,4,12,'test2@mail.ru'),(16,NULL,12,'al-loco@mail.ru'),(17,NULL,12,'al-loco@mail.ru'),(18,NULL,12,'al-loco@mail.ru'),(19,NULL,13,'al-loco@mail.ru'),(20,NULL,14,'al-loco@mail.ru'),(21,NULL,15,'al-loco@mail.ru'),(22,NULL,16,'al-loco@mail.ru'),(23,NULL,18,'al-loco@mail.ru'),(24,NULL,19,'test2@mail.ru'),(27,NULL,22,'bar@bar.ru'),(29,NULL,24,'s@s.ru'),(30,NULL,25,'tii@tii.ru'),(33,19,NULL,'login@mail.ru'),(34,20,26,'test3@mail.ru'),(35,NULL,27,'test3@mail.ru'),(36,NULL,28,'test3@mail.ru'),(37,21,NULL,'admin@mail.ru');
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration`
--

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` VALUES ('m000000_000000_base',1522681795),('m180402_115051_create_users_table',1522682426),('m180407_123545_create_custormers_table',1523105225),('m180407_123725_create_emails_table',1523105299),('m180407_123821_create_orders_table',1523106890),('m180407_124045_trigger_orders_status',1523106983),('m180407_124518_create_order_items_table',1523113598),('m180420_205930_add_column_last_order_id_to_customer_table',1524259446);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `price` decimal(9,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `cost` decimal(9,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk-order_items-order_id` (`order_id`),
  KEY `fk-order_items-product_id` (`product_id`),
  CONSTRAINT `fk-order_items-order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `fk-order_items-product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,3,9,100.00,3,300.00),(2,4,9,100.00,3,300.00),(3,6,9,100.00,3,300.00),(4,16,9,100.00,3,300.00),(5,16,7,250.00,3,750.00),(6,16,17,200.00,4,800.00),(7,16,19,200.00,1,200.00),(8,34,15,200.00,2,400.00),(9,35,15,200.00,2,400.00),(10,36,15,200.00,2,400.00),(11,37,15,200.00,2,400.00),(12,38,15,200.00,2,400.00),(13,39,15,200.00,2,400.00),(14,40,15,200.00,2,400.00),(15,41,9,100.00,2,200.00),(16,42,9,100.00,2,200.00),(17,43,9,100.00,2,200.00),(18,44,9,100.00,2,200.00),(19,45,9,100.00,2,200.00),(20,46,9,100.00,2,200.00),(21,47,9,100.00,2,200.00),(22,48,9,100.00,2,200.00),(23,49,9,100.00,2,200.00),(24,50,9,100.00,2,200.00),(25,51,9,100.00,2,200.00),(26,52,9,100.00,2,200.00),(27,53,9,100.00,2,200.00),(29,55,9,100.00,2,200.00),(30,56,9,100.00,2,200.00),(32,58,9,100.00,2,200.00),(33,58,21,200.00,1,200.00),(34,58,17,200.00,1,200.00),(35,58,24,200.00,1,200.00),(36,59,9,100.00,2,200.00),(37,59,21,200.00,1,200.00),(38,59,17,200.00,1,200.00),(39,59,24,200.00,1,200.00),(40,60,15,200.00,1,200.00),(41,61,14,200.00,3,600.00),(42,61,9,100.00,3,300.00),(43,62,9,100.00,2,200.00),(44,63,9,100.00,1,100.00);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `qty` int(5) NOT NULL,
  `sum` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0 or 1',
  PRIMARY KEY (`id`),
  KEY `fk-orders-customer_id` (`customer_id`),
  CONSTRAINT `fk-orders-customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'2018-04-09 10:07:20',NULL,1,1000,0),(2,1,'2018-04-10 20:19:53',NULL,3,300,0),(3,1,'2018-04-10 20:45:40',NULL,3,300,0),(4,1,'2018-04-10 20:45:53',NULL,3,300,0),(5,1,'2018-04-10 20:46:58','2018-05-06 13:43:24',3,300,1),(6,1,'2018-04-13 10:20:38',NULL,3,300,0),(16,1,'2018-04-20 09:35:32',NULL,11,2050,0),(34,5,'2018-04-20 16:15:53',NULL,2,400,0),(35,6,'2018-04-20 16:23:28',NULL,2,400,0),(36,7,'2018-04-20 16:24:43','2018-05-06 13:43:29',2,400,1),(37,8,'2018-04-20 16:26:55',NULL,2,400,0),(38,9,'2018-04-20 16:30:46',NULL,2,400,0),(39,10,'2018-04-20 16:30:48',NULL,2,400,0),(40,11,'2018-04-20 16:33:00',NULL,2,400,0),(41,NULL,'2018-04-20 22:11:56',NULL,2,200,0),(42,12,'2018-04-20 22:15:29',NULL,2,200,0),(43,12,'2018-04-21 18:36:42',NULL,2,200,0),(44,12,'2018-04-21 18:38:00',NULL,2,200,0),(45,12,'2018-04-21 18:39:15',NULL,2,200,0),(46,12,'2018-04-21 19:03:43',NULL,2,200,0),(47,12,'2018-04-21 19:06:56',NULL,2,200,0),(48,13,'2018-04-21 19:14:07',NULL,2,200,0),(49,14,'2018-04-21 19:18:07',NULL,2,200,0),(50,15,'2018-04-21 19:18:59',NULL,2,200,0),(51,16,'2018-04-21 19:21:54',NULL,2,200,0),(52,18,'2018-04-21 21:21:24',NULL,2,200,0),(53,19,'2018-04-21 21:22:56',NULL,2,200,0),(55,21,'2018-04-21 21:56:01',NULL,2,200,0),(56,22,'2018-04-21 21:57:17',NULL,2,200,0),(58,24,'2018-04-21 22:10:58',NULL,5,800,0),(59,25,'2018-04-22 14:03:09',NULL,5,800,0),(60,26,'2018-04-23 09:55:10',NULL,1,200,0),(61,26,'2018-04-23 10:03:00',NULL,6,900,0),(62,27,'2018-04-23 10:14:07',NULL,2,200,0),(63,28,'2018-04-23 10:28:05',NULL,1,100,0);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trgr-orders-update_status` 
	                BEFORE UPDATE ON `shop_old`.`orders`
	                FOR EACH ROW
	                BEGIN
		                SET NEW.updated_at = CURRENT_TIMESTAMP;
	                END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `category_id` int(255) unsigned NOT NULL,
  `content` text,
  `price` decimal(6,2) unsigned NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `create_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `img` varchar(255) NOT NULL DEFAULT 'default.jpg',
  `sale` int(1) NOT NULL DEFAULT '0' COMMENT '0 or 1',
  `new` int(1) NOT NULL DEFAULT '0' COMMENT '0 or 1',
  `hit` int(1) NOT NULL DEFAULT '0' COMMENT '0 or 1',
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`category_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'summer_shirts',10,'Характеристики.',3400.00,NULL,'Летняя рубашка без рукавов.','2018-02-08 20:47:08','default.jpg',0,0,0),(2,'summer_shirts',10,'Характеристики.',4100.00,NULL,'Хлопковая летняя рубашка.','2018-02-08 20:47:08','product1.jpg',0,0,0),(3,'warm_shirts',11,'Характеристики.',3200.00,NULL,'Рубашка в клетку','2018-02-08 21:00:05','product2.jpg',0,1,0),(4,'warm_shirts',11,'Характеристики',3400.00,NULL,'Рубашка синяя','2018-02-08 21:00:05','product3.jpg',0,0,0),(5,'blue_towel',36,'Характеристика',200.00,NULL,'Синее полотенце','2018-02-12 13:27:54','product4.jpg',0,0,0),(6,'red_towel',36,'Характеристика',200.00,NULL,'Красное полотенце','2018-02-12 13:27:54','product11.jpg',0,1,0),(7,'waffle_towel',37,'Характеристика',250.00,NULL,'Вафельное полотенце','2018-02-12 13:30:14','product12.jpg',1,0,1),(8,'terry_towel',37,'Характеристика',350.00,NULL,'Махровое полотенце','2018-02-12 13:30:14','default.jpg',0,0,0),(9,'trousers',7,'content',100.00,NULL,'Штаны','2018-02-22 19:52:42','product3.jpg',0,1,0),(10,'trousers',7,'content',200.00,NULL,'Штаны','2018-02-22 19:52:42','product_14.jpg',0,0,0),(11,'trousers',7,'content',200.00,NULL,'Штаны','2018-02-22 19:52:42','product_15.jpg',0,1,1),(12,'trousers',7,'content',200.00,NULL,'Штаны','2018-02-22 19:52:42','product_16.jpg',0,0,0),(13,'trousers',7,'content',200.00,NULL,'Штаны','2018-02-22 19:52:42','product_17.jpg',0,0,0),(14,'trousers',7,'content',200.00,NULL,'Штаны','2018-02-22 19:52:42','product1.jpg',0,0,0),(15,'trousers',7,'content',200.00,NULL,'Штаны','2018-02-22 19:52:42','product2.jpg',0,0,1),(16,'trousers',7,'content',200.00,NULL,'Штаны','2018-02-22 19:52:42','product3.jpg',0,0,0),(17,'trousers',8,'content',200.00,NULL,'Штаны','2018-02-22 19:52:42','product4.jpg',0,0,0),(18,'trousers',8,'content',200.00,NULL,'Штаны','2018-02-22 19:52:42','product_16.jpg',0,0,0),(19,'trousers',8,'content',200.00,NULL,'Штаны','2018-02-22 19:52:42','product_17.jpg',0,1,0),(20,'trousers',8,'content',200.00,NULL,'Штаны','2018-02-22 19:52:42','product_14.jpg',0,0,0),(21,'trousers',8,'content',200.00,NULL,'Штаны','2018-02-22 19:52:42','product3.jpg',0,0,0),(22,'trousers',8,'content',200.00,NULL,'Штаны','2018-02-22 19:52:42','product_17.jpg',0,1,0),(23,'trousers',8,'content',200.00,NULL,'Штаны','2018-02-22 19:52:42','product_16.jpg',0,0,0),(24,'trousers',8,'content',200.00,NULL,'Штаны','2018-02-22 19:52:42','product1.jpg',0,0,0),(25,'trousers',8,'content',200.00,NULL,'Штаны','2018-02-22 19:52:42','default.jpg',0,0,0),(26,'trousers',8,'content',200.00,NULL,'Штаны','2018-02-22 19:52:42','product_15.jpg',0,1,0),(27,'trousers',8,'content',200.00,NULL,'Штаны','2018-02-22 19:52:42','product_14.jpg',0,0,1),(28,'trousers',8,'content',200.00,NULL,'Штаны','2018-02-22 19:52:42','product4.jpg',0,0,0);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `foo` int(11) NOT NULL,
  `bar` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (1,'2018-04-07 13:13:43',1,1);
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `customer_id` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'Hello','In5vwwawmQt38lHdpcbfnyHxgM9geQu0','$2y$13$mOonTMypkOlXB84KMBH1uen1mmgzObXBz.tpoHBMEfrgAmtbD86nC',NULL,10,NULL,1522686782,1522686782),(3,'test','sABP16coalj--SRxzeG3zvFU8f3KNTxW','$2y$13$oizizJH3.ns2IEwGfCXQquUqse3eU9Gg/m/lT.hlZNsyhQCNE/Z7.',NULL,10,1,1522687292,1522687292),(4,'test2','tMkDUXZDwZuPR-2_CXNnx17KNOFUl8C9','$2y$13$nOR2V27kmXuUZH3s6LY0m.aJx1NvXvTvBk0t2cxOw2L7uq3nirpjq',NULL,10,12,1522687555,1522687555),(19,'Login','Ulfu8eZT-RUWgJ9pnPYpLzeg43RCHQ95','$2y$13$7hLVXE4k5HqELsRq7XGU.eLbxyinRQuN8xAGDKwzQDYixZlEqao5.',NULL,10,NULL,1524410852,1524410852),(20,'test3','MU0Uvp8vd7_fUsoAJ76RNgoWjNZ7MC7M','$2y$13$PaFjGn9Pi3rH.W6PpjNeRe..otrxuegZiWVtKX9ZvKiuHfTXOWM..',NULL,10,26,1524476811,1524476811),(21,'admin','_zJ4Sq-UygYn9i3A2cT1fphZS05Hvnd7','$2y$13$kCShvJ9OlLpIXYgTd8WPL.7rF/l0f0MwOIbLjlYnouv.0Ct9yJ7yC',NULL,100,NULL,1524856586,1524856586);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'shop_old'
--

--
-- Dumping routines for database 'shop_old'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-08 17:12:45
