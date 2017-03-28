-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: farms2face
-- ------------------------------------------------------
-- Server version	5.7.17

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'Customers');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (4,1,7),(5,1,8),(6,1,9),(10,1,22),(11,1,23),(12,1,24),(1,1,34),(2,1,35),(3,1,36),(7,1,46),(8,1,47),(9,1,48);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add group',4,'add_group'),(11,'Can change group',4,'change_group'),(12,'Can delete group',4,'delete_group'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add base',7,'add_base'),(20,'Can change base',7,'change_base'),(21,'Can delete base',7,'delete_base'),(22,'Can add custom pack',8,'add_custompack'),(23,'Can change custom pack',8,'change_custompack'),(24,'Can delete custom pack',8,'delete_custompack'),(25,'Can add pre packs',9,'add_prepacks'),(26,'Can change pre packs',9,'change_prepacks'),(27,'Can delete pre packs',9,'delete_prepacks'),(28,'Can add recipe',10,'add_recipe'),(29,'Can change recipe',10,'change_recipe'),(30,'Can delete recipe',10,'delete_recipe'),(31,'Can add skin concern',11,'add_skinconcern'),(32,'Can change skin concern',11,'change_skinconcern'),(33,'Can delete skin concern',11,'delete_skinconcern'),(34,'Can add face pack',12,'add_facepack'),(35,'Can change face pack',12,'change_facepack'),(36,'Can delete face pack',12,'delete_facepack'),(37,'Can add skin type',13,'add_skintype'),(38,'Can change skin type',13,'change_skintype'),(39,'Can delete skin type',13,'delete_skintype'),(40,'Can add mixing agent',14,'add_mixingagent'),(41,'Can change mixing agent',14,'change_mixingagent'),(42,'Can delete mixing agent',14,'delete_mixingagent'),(43,'Can add ingredient',15,'add_ingredient'),(44,'Can change ingredient',15,'change_ingredient'),(45,'Can delete ingredient',15,'delete_ingredient'),(46,'Can add purchases',16,'add_purchases'),(47,'Can change purchases',16,'change_purchases'),(48,'Can delete purchases',16,'delete_purchases'),(49,'Can add pre pack',9,'add_prepack'),(50,'Can change pre pack',9,'change_prepack'),(51,'Can delete pre pack',9,'delete_prepack'),(52,'Can add option',17,'add_option'),(53,'Can change option',17,'change_option'),(54,'Can delete option',17,'delete_option'),(55,'Can add question',18,'add_question'),(56,'Can change question',18,'change_question'),(57,'Can delete question',18,'delete_question'),(58,'Can add questionnaire',19,'add_questionnaire'),(59,'Can change questionnaire',19,'change_questionnaire'),(60,'Can delete questionnaire',19,'delete_questionnaire'),(76,'Can add questionnaire entry',25,'add_questionnaireentry'),(77,'Can change questionnaire entry',25,'change_questionnaireentry'),(78,'Can delete questionnaire entry',25,'delete_questionnaireentry'),(79,'Can add questionnaire user data',26,'add_questionnaireuserdata'),(80,'Can change questionnaire user data',26,'change_questionnaireuserdata'),(81,'Can delete questionnaire user data',26,'delete_questionnaireuserdata'),(82,'Can add item',27,'add_item'),(83,'Can change item',27,'change_item'),(84,'Can delete item',27,'delete_item'),(85,'Can add recipe',28,'add_recipe'),(86,'Can change recipe',28,'change_recipe'),(87,'Can delete recipe',28,'delete_recipe'),(88,'Can add ingredient',29,'add_ingredient'),(89,'Can change ingredient',29,'change_ingredient'),(90,'Can delete ingredient',29,'delete_ingredient'),(91,'Can add base',30,'add_base'),(92,'Can change base',30,'change_base'),(93,'Can delete base',30,'delete_base'),(94,'Can add mixing agent',31,'add_mixingagent'),(95,'Can change mixing agent',31,'change_mixingagent'),(96,'Can delete mixing agent',31,'delete_mixingagent'),(97,'Can add payment',32,'add_payment'),(98,'Can change payment',32,'change_payment'),(99,'Can delete payment',32,'delete_payment'),(100,'Can add purchase history',33,'add_purchasehistory'),(101,'Can change purchase history',33,'change_purchasehistory'),(102,'Can delete purchase history',33,'delete_purchasehistory'),(103,'Can add face pack',34,'add_facepack'),(104,'Can change face pack',34,'change_facepack'),(105,'Can delete face pack',34,'delete_facepack'),(106,'Can add pre pack',35,'add_prepack'),(107,'Can change pre pack',35,'change_prepack'),(108,'Can delete pre pack',35,'delete_prepack'),(109,'Can add custom face pack',36,'add_customfacepack'),(110,'Can change custom face pack',36,'change_customfacepack'),(111,'Can delete custom face pack',36,'delete_customfacepack'),(112,'Can add item',37,'add_item'),(113,'Can change item',37,'change_item'),(114,'Can delete item',37,'delete_item'),(115,'Can add recipe',38,'add_recipe'),(116,'Can change recipe',38,'change_recipe'),(117,'Can delete recipe',38,'delete_recipe'),(124,'Can add ingredient',41,'add_ingredient'),(125,'Can change ingredient',41,'change_ingredient'),(126,'Can delete ingredient',41,'delete_ingredient'),(127,'Can add base',42,'add_base'),(128,'Can change base',42,'change_base'),(129,'Can delete base',42,'delete_base'),(133,'Can add mixing agent',44,'add_mixingagent'),(134,'Can change mixing agent',44,'change_mixingagent'),(135,'Can delete mixing agent',44,'delete_mixingagent'),(136,'Can add payment',45,'add_payment'),(137,'Can change payment',45,'change_payment'),(138,'Can delete payment',45,'delete_payment'),(139,'Can add purchase history',46,'add_purchasehistory'),(140,'Can change purchase history',46,'change_purchasehistory'),(141,'Can delete purchase history',46,'delete_purchasehistory'),(145,'Can add question',48,'add_question'),(146,'Can change question',48,'change_question'),(147,'Can delete question',48,'delete_question'),(148,'Can add option',49,'add_option'),(149,'Can change option',49,'change_option'),(150,'Can delete option',49,'delete_option'),(151,'Can add skin concern',50,'add_skinconcern'),(152,'Can change skin concern',50,'change_skinconcern'),(153,'Can delete skin concern',50,'delete_skinconcern'),(154,'Can add skin type',51,'add_skintype'),(155,'Can change skin type',51,'change_skintype'),(156,'Can delete skin type',51,'delete_skintype'),(157,'Can add questionnaire',52,'add_questionnaire'),(158,'Can change questionnaire',52,'change_questionnaire'),(159,'Can delete questionnaire',52,'delete_questionnaire'),(163,'Can add cart',54,'add_cart'),(164,'Can change cart',54,'change_cart'),(165,'Can delete cart',54,'delete_cart'),(166,'Can add face pack',55,'add_facepack'),(167,'Can change face pack',55,'change_facepack'),(168,'Can delete face pack',55,'delete_facepack'),(169,'Can add pre pack',56,'add_prepack'),(170,'Can change pre pack',56,'change_prepack'),(171,'Can delete pre pack',56,'delete_prepack'),(172,'Can add custom face pack',57,'add_customfacepack'),(173,'Can change custom face pack',57,'change_customfacepack'),(174,'Can delete custom face pack',57,'delete_customfacepack'),(175,'Can add questionnaire entry',58,'add_questionnaireentry'),(176,'Can change questionnaire entry',58,'change_questionnaireentry'),(177,'Can delete questionnaire entry',58,'delete_questionnaireentry'),(178,'Can add questionnaire user data',59,'add_questionnaireuserdata'),(179,'Can change questionnaire user data',59,'change_questionnaireuserdata'),(180,'Can delete questionnaire user data',59,'delete_questionnaireuserdata'),(181,'Can add shipping',60,'add_shipping'),(182,'Can change shipping',60,'change_shipping'),(183,'Can delete shipping',60,'delete_shipping'),(196,'Can add nonce',61,'add_nonce'),(197,'Can change nonce',61,'change_nonce'),(198,'Can delete nonce',61,'delete_nonce'),(199,'Can add code',62,'add_code'),(200,'Can change code',62,'change_code'),(201,'Can delete code',62,'delete_code'),(202,'Can add user social auth',63,'add_usersocialauth'),(203,'Can change user social auth',63,'change_usersocialauth'),(204,'Can delete user social auth',63,'delete_usersocialauth'),(205,'Can add association',65,'add_association'),(206,'Can change association',65,'change_association'),(207,'Can delete association',65,'delete_association');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$30000$afhnMIjtgZzB$4SGPoHg6sQoipgRnLo43Rara2OPl3yWYgHI+dFMULzY=','2017-03-28 05:30:52.685364',1,'root','root','','root@localhost.com',1,1,'2017-02-24 06:41:42.000000'),(2,'pbkdf2_sha256$30000$N7DFcunQbt7J$/nxGD/D49FTXxGi0rCNMXGeceVOXs6eeWedGD/0h/54=','2017-03-28 07:15:13.080064',0,'rajiv.raja@gmail.com','Rajiv','Raja','rajiv.raja@gmail.com',0,1,'2017-02-24 07:36:20.000000'),(3,'pbkdf2_sha256$30000$Sa2XkvNBJnYL$9IEh4EnkSiT5ur+L4BcgAQz0MX6AH7E1KMvp2qIMj0Y=',NULL,0,'sudhabhat26@gmail.com','Sudha','Bhat','sudhabhat26@gmail.com',0,1,'2017-02-24 07:36:43.000000'),(4,'pbkdf2_sha256$30000$YAOWKrNYVWdU$My6Xb2iVYxllVPJi/VY1IKnO2WRVh6eHhxt8WAygZs8=',NULL,0,'rupabhat@gmail.com','Rupa','Bhat','rupabhat@gmail.com',0,1,'2017-02-24 07:37:10.000000'),(6,'pbkdf2_sha256$30000$ky8H8tnyOOCa$st5Ww5jjtrCBhHpwJCuu90rcx4mdu5BNqZGI7PwGBhM=','2017-02-26 11:48:13.056688',0,'mridula@gmail.com','Mridula','Kulkarni','mridula@gmail.com',0,1,'2017-02-26 02:48:58.933433');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (2,2,1),(3,3,1),(1,4,1);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_cart`
--

DROP TABLE IF EXISTS `cart_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL,
  `createdte` datetime(6) NOT NULL,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_cart_item_id_c66662e3_fk_home_item_id` (`item_id`),
  KEY `cart_cart_user_id_9b4220b9_fk_auth_user_id` (`user_id`),
  CONSTRAINT `cart_cart_item_id_c66662e3_fk_home_item_id` FOREIGN KEY (`item_id`) REFERENCES `home_item` (`id`),
  CONSTRAINT `cart_cart_user_id_9b4220b9_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_cart`
--

LOCK TABLES `cart_cart` WRITE;
/*!40000 ALTER TABLE `cart_cart` DISABLE KEYS */;
INSERT INTO `cart_cart` VALUES (121,2,'2017-03-27 03:07:25.011814',129,2),(123,3,'2017-03-27 03:07:32.113943',131,2),(124,3,'2017-03-27 03:08:07.603248',132,2),(125,1,'2017-03-27 03:08:10.157342',133,2),(126,1,'2017-03-27 10:46:51.433436',134,2),(127,1,'2017-03-27 10:46:53.500304',135,2),(179,1,'2017-03-28 07:14:12.798704',187,2),(180,1,'2017-03-28 07:14:14.799088',188,2),(181,1,'2017-03-28 07:14:59.529859',189,2),(182,1,'2017-03-28 07:15:00.958364',190,2);
/*!40000 ALTER TABLE `cart_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=280 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-02-24 06:56:15.721716','1','Oily',1,'[{\"added\": {}}]',13,1),(2,'2017-02-24 06:56:24.242117','2','Dry',1,'[{\"added\": {}}]',13,1),(3,'2017-02-24 06:56:29.044538','3','Normal',1,'[{\"added\": {}}]',13,1),(4,'2017-02-24 06:57:13.831395','1','French green clay (not for sensitive skin)_Oily',1,'[{\"added\": {}}]',7,1),(5,'2017-02-24 06:57:21.636577','2','Bentonite clay_Oily',1,'[{\"added\": {}}]',7,1),(6,'2017-02-24 06:57:28.646691','3','Fuller\'s earth_Oily',1,'[{\"added\": {}}]',7,1),(7,'2017-02-24 06:57:36.859890','4','Rassoul Clay_Normal',1,'[{\"added\": {}}]',7,1),(8,'2017-02-24 06:57:44.624658','5','White Kaolin clay_Dry',1,'[{\"added\": {}}]',7,1),(9,'2017-02-24 06:58:10.599719','1','Rose water_Oily',1,'[{\"added\": {}}]',14,1),(10,'2017-02-24 06:58:17.431159','2','Aloe vera gel_Normal',1,'[{\"added\": {}}]',14,1),(11,'2017-02-24 06:58:28.967643','3','Cucumber gel_Normal',1,'[{\"added\": {}}]',14,1),(12,'2017-02-24 06:58:42.149664','4','Honey_Dry',1,'[{\"added\": {}}]',14,1),(13,'2017-02-24 06:58:47.315442','5','Honey_Normal',1,'[{\"added\": {}}]',14,1),(14,'2017-02-24 06:59:51.096103','1','Clog Pore',1,'[{\"added\": {}}]',11,1),(15,'2017-02-24 06:59:56.802101','2','Mild Acne',1,'[{\"added\": {}}]',11,1),(16,'2017-02-24 07:00:05.709580','3','Consistent Acne',1,'[{\"added\": {}}]',11,1),(17,'2017-02-24 07:00:10.175337','4','Severe Acne',1,'[{\"added\": {}}]',11,1),(18,'2017-02-24 07:00:14.570156','5','Anti-Aging Wrinkles plus Age Prevention',1,'[{\"added\": {}}]',11,1),(19,'2017-02-24 07:00:18.885948','6','Redness',1,'[{\"added\": {}}]',11,1),(20,'2017-02-24 07:00:23.336914','7','Sun Damage',1,'[{\"added\": {}}]',11,1),(21,'2017-02-24 07:00:28.248252','8','Dehydrated',1,'[{\"added\": {}}]',11,1),(22,'2017-02-24 07:00:33.350273','9','Large Pores',1,'[{\"added\": {}}]',11,1),(23,'2017-02-24 07:00:38.648026','10','Tired and Dull',1,'[{\"added\": {}}]',11,1),(24,'2017-02-24 07:00:43.318918','11','Sensitive and Irritated by Harsh Products',1,'[{\"added\": {}}]',11,1),(25,'2017-02-24 07:00:47.492257','12','Brown spots / blemishes',1,'[{\"added\": {}}]',11,1),(26,'2017-02-24 07:18:30.629445','1','Oily Clog Pore',1,'[{\"added\": {}}]',10,1),(27,'2017-02-24 07:18:45.620080','2','Oily Mild Acne',1,'[{\"added\": {}}]',10,1),(28,'2017-02-24 07:18:59.430470','3','Oily Consistent Acne',1,'[{\"added\": {}}]',10,1),(29,'2017-02-24 07:19:14.823108','4','Oily Severe Acne',1,'[{\"added\": {}}]',10,1),(30,'2017-02-24 07:19:38.221061','5','Oily Anti-Aging Wrinkles plus Age Prevention',1,'[{\"added\": {}}]',10,1),(31,'2017-02-24 07:20:44.794653','34','Sandalwood',3,'',15,1),(32,'2017-02-24 07:20:55.036411','9','Blueberry',3,'',15,1),(33,'2017-02-24 07:22:57.281791','6','Oily__Redness__Matcha',1,'[{\"added\": {}}]',10,1),(34,'2017-02-24 07:23:15.608773','7','Oily__Sun Damage__Cucumber',1,'[{\"added\": {}}]',10,1),(35,'2017-02-24 07:23:31.489694','8','Oily__Dehydrated__Coconut Water',1,'[{\"added\": {}}]',10,1),(36,'2017-02-24 07:23:45.071710','9','Oily__Large Pores__Egg White',1,'[{\"added\": {}}]',10,1),(37,'2017-02-24 07:23:56.457744','10','Oily__Tired and Dull__Oats',1,'[{\"added\": {}}]',10,1),(38,'2017-02-24 07:24:09.516241','11','Oily__Sensitive and Irritated by Harsh Products__Mint',1,'[{\"added\": {}}]',10,1),(39,'2017-02-24 07:24:22.789335','12','Oily__Brown spots / blemishes__Sandalwood Powder',1,'[{\"added\": {}}]',10,1),(40,'2017-02-24 07:25:05.823946','13','Dry__Clog Pore__Oats',1,'[{\"added\": {}}]',10,1),(41,'2017-02-24 07:25:17.273190','14','Dry__Mild Acne__Besan',1,'[{\"added\": {}}]',10,1),(42,'2017-02-24 07:25:32.778651','15','Dry__Consistent Acne__Strawberry',1,'[{\"added\": {}}]',10,1),(43,'2017-02-24 07:25:49.682895','16','Dry__Severe Acne__Sandalwood Powder',1,'[{\"added\": {}}]',10,1),(44,'2017-02-24 07:26:01.275118','17','Dry__Anti-Aging Wrinkles plus Age Prevention__Avocado',1,'[{\"added\": {}}]',10,1),(45,'2017-02-24 07:26:12.184114','18','Dry__Redness__Chamomile',1,'[{\"added\": {}}]',10,1),(46,'2017-02-24 07:26:22.855446','19','Dry__Sun Damage__Banana',1,'[{\"added\": {}}]',10,1),(47,'2017-02-24 07:26:33.787176','20','Dry__Dehydrated__Goat Milk Powder',1,'[{\"added\": {}}]',10,1),(48,'2017-02-24 07:26:47.066319','21','Dry__Large Pores__Coffee',1,'[{\"added\": {}}]',10,1),(49,'2017-02-24 07:26:57.127631','22','Dry__Tired and Dull__Papaya',1,'[{\"added\": {}}]',10,1),(50,'2017-02-24 07:27:11.903847','23','Dry__Sensitive and Irritated by Harsh Products__Nutmeg',1,'[{\"added\": {}}]',10,1),(51,'2017-02-24 07:27:24.417160','24','Dry__Brown spots / blemishes__Besan',1,'[{\"added\": {}}]',10,1),(52,'2017-02-24 07:27:35.448419','25','Normal__Clog Pore__Cacao',1,'[{\"added\": {}}]',10,1),(53,'2017-02-24 07:27:47.575957','26','Normal__Mild Acne__Blueberries',1,'[{\"added\": {}}]',10,1),(54,'2017-02-24 07:27:58.784278','27','Normal__Consistent Acne__Flax Seeds',1,'[{\"added\": {}}]',10,1),(55,'2017-02-24 07:28:10.360892','28','Normal__Severe Acne__Mangosteen',1,'[{\"added\": {}}]',10,1),(56,'2017-02-24 07:28:23.282374','29','Normal__Anti-Aging Wrinkles plus Age Prevention__Coffee',1,'[{\"added\": {}}]',10,1),(57,'2017-02-24 07:28:36.105166','30','Normal__Redness__Cucumber',1,'[{\"added\": {}}]',10,1),(58,'2017-02-24 07:28:46.113859','31','Normal__Sun Damage__Aloe Powder',1,'[{\"added\": {}}]',10,1),(59,'2017-02-24 07:29:04.959437','32','Normal__Dehydrated__Coconut Water',1,'[{\"added\": {}}]',10,1),(60,'2017-02-24 07:29:20.904775','33','Normal__Large Pores__Egg White',1,'[{\"added\": {}}]',10,1),(61,'2017-02-24 07:29:32.851144','34','Normal__Tired and Dull__Pomegranate',1,'[{\"added\": {}}]',10,1),(62,'2017-02-24 07:29:44.556166','35','Normal__Sensitive and Irritated by Harsh Products__Mint',1,'[{\"added\": {}}]',10,1),(63,'2017-02-24 07:29:56.156055','36','Normal__Brown spots / blemishes__Nutmeg',1,'[{\"added\": {}}]',10,1),(64,'2017-02-24 07:30:33.157654','12','Brown spots or blemishes',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',11,1),(65,'2017-02-24 07:34:43.537434','1','Customers',1,'[{\"added\": {}}]',4,1),(66,'2017-02-24 07:34:51.177270','1','Customers',2,'[]',4,1),(67,'2017-02-24 07:36:20.164921','2','RajivRaja',1,'[{\"added\": {}}]',3,1),(68,'2017-02-24 07:36:43.626845','3','Sudha',1,'[{\"added\": {}}]',3,1),(69,'2017-02-24 07:37:10.769395','4','Rupa',1,'[{\"added\": {}}]',3,1),(70,'2017-02-24 07:39:04.916245','4','RupaBhat',2,'[{\"changed\": {\"fields\": [\"username\", \"first_name\", \"last_name\", \"email\"]}}]',3,1),(71,'2017-02-24 07:39:30.537121','2','RajivRaja',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\"]}}]',3,1),(72,'2017-02-24 07:40:08.278705','3','SudhaBhat',2,'[{\"changed\": {\"fields\": [\"username\", \"first_name\", \"last_name\", \"email\"]}}]',3,1),(73,'2017-02-26 02:48:35.014074','5','',3,'',3,1),(74,'2017-02-26 02:49:18.708237','2','rajiv.raja@gmail.com',2,'[{\"changed\": {\"fields\": [\"username\"]}}]',3,1),(75,'2017-02-26 02:49:28.246503','4','rupabhat@gmail.com',2,'[{\"changed\": {\"fields\": [\"username\"]}}]',3,1),(76,'2017-02-26 02:49:39.418180','3','sudhabhat26@gmail.com',2,'[{\"changed\": {\"fields\": [\"username\"]}}]',3,1),(77,'2017-02-26 03:00:02.551991','6','mridula@gmail.com',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',3,1),(78,'2017-03-22 06:10:01.804288','1','<18',1,'[{\"added\": {}}]',17,1),(79,'2017-03-22 06:10:09.248039','2','18-29',1,'[{\"added\": {}}]',17,1),(80,'2017-03-22 06:10:15.067053','3','30-39',1,'[{\"added\": {}}]',17,1),(81,'2017-03-22 06:10:18.668367','4','40-49',1,'[{\"added\": {}}]',17,1),(82,'2017-03-22 06:10:29.219202','5','50-59',1,'[{\"added\": {}}]',17,1),(83,'2017-03-22 06:10:32.446444','6','60+',1,'[{\"added\": {}}]',17,1),(84,'2017-03-22 06:10:45.898721','7','Male',1,'[{\"added\": {}}]',17,1),(85,'2017-03-22 06:10:50.224197','8','Female',1,'[{\"added\": {}}]',17,1),(86,'2017-03-22 06:11:02.501110','9','Dry',1,'[{\"added\": {}}]',17,1),(87,'2017-03-22 06:11:06.091334','10','Humid',1,'[{\"added\": {}}]',17,1),(88,'2017-03-22 06:11:21.714642','11','Neither Dry nor Humid',1,'[{\"added\": {}}]',17,1),(89,'2017-03-22 06:11:27.328250','12','Tropical',1,'[{\"added\": {}}]',17,1),(90,'2017-03-22 06:11:35.246082','13','Never',1,'[{\"added\": {}}]',17,1),(91,'2017-03-22 06:11:38.271090','14','Rarely',1,'[{\"added\": {}}]',17,1),(92,'2017-03-22 06:11:41.846195','15','Sometimes',1,'[{\"added\": {}}]',17,1),(93,'2017-03-22 06:11:44.603011','16','Always',1,'[{\"added\": {}}]',17,1),(94,'2017-03-22 06:14:02.532335','17','Minimal',1,'[{\"added\": {}}]',17,1),(95,'2017-03-22 06:14:20.970839','18','Basic',1,'[{\"added\": {}}]',17,1),(96,'2017-03-22 06:14:43.827154','19','Moderate',1,'[{\"added\": {}}]',17,1),(97,'2017-03-22 06:15:19.584952','20','Advanced',1,'[{\"added\": {}}]',17,1),(98,'2017-03-22 06:15:34.090280','21','Not Applicabble',1,'[{\"added\": {}}]',17,1),(99,'2017-03-22 06:16:27.032335','21','Not Applicabble',3,'',17,1),(100,'2017-03-22 06:19:30.193750','22','Not Applicabble',1,'[{\"added\": {}}]',17,1),(101,'2017-03-22 06:24:43.839201','1','What\'s your age?',1,'[{\"added\": {}}]',18,1),(102,'2017-03-22 06:24:52.987660','2','What\'s your gender?',1,'[{\"added\": {}}]',18,1),(103,'2017-03-22 06:25:00.542070','3','What is your current environment?',1,'[{\"added\": {}}]',18,1),(104,'2017-03-22 06:25:08.446768','4','How often do you apply sunscreen?',1,'[{\"added\": {}}]',18,1),(105,'2017-03-22 06:25:24.853787','5','What best describes your morning skin routine?',1,'[{\"added\": {}}]',18,1),(106,'2017-03-22 06:25:33.375197','6','What best describes your evening skin routine?',1,'[{\"added\": {}}]',18,1),(107,'2017-03-22 06:25:40.639748','7','What is your Skin Type?',1,'[{\"added\": {}}]',18,1),(108,'2017-03-22 06:25:52.032002','8','Pick Your Top 3 Skin Concerns',1,'[{\"added\": {}}]',18,1),(109,'2017-03-22 06:54:02.401678','4','What\'s your age?',1,'[{\"added\": {}}]',19,1),(110,'2017-03-22 06:54:13.653922','5','What\'s your age?',1,'[{\"added\": {}}]',19,1),(111,'2017-03-22 06:54:22.531410','6','What\'s your age?',1,'[{\"added\": {}}]',19,1),(112,'2017-03-22 06:57:42.074401','6','What\'s your age? 30-39 None',2,'[]',19,1),(113,'2017-03-22 06:57:48.893853','7','What\'s your age? 40-49 None',1,'[{\"added\": {}}]',19,1),(114,'2017-03-22 06:57:53.325188','8','What\'s your age? 50-59 None',1,'[{\"added\": {}}]',19,1),(115,'2017-03-22 07:11:01.754791','9','What\'s your age? 60+ None',1,'[{\"added\": {}}]',19,1),(116,'2017-03-22 07:11:18.766210','10','What\'s your gender? Male None',1,'[{\"added\": {}}]',19,1),(117,'2017-03-22 07:11:23.533021','11','What\'s your gender? Female None',1,'[{\"added\": {}}]',19,1),(118,'2017-03-22 07:11:39.856164','12','What is your current environment? Dry None',1,'[{\"added\": {}}]',19,1),(119,'2017-03-22 07:11:44.956818','13','What is your current environment? Humid None',1,'[{\"added\": {}}]',19,1),(120,'2017-03-22 07:11:51.177961','14','What is your current environment? Neither Dry nor Humid None',1,'[{\"added\": {}}]',19,1),(121,'2017-03-22 07:11:56.824373','15','What is your current environment? Tropical None',1,'[{\"added\": {}}]',19,1),(122,'2017-03-22 07:12:07.258681','16','How often do you apply sunscreen? Never None',1,'[{\"added\": {}}]',19,1),(123,'2017-03-22 07:12:12.151568','17','How often do you apply sunscreen? Rarely None',1,'[{\"added\": {}}]',19,1),(124,'2017-03-22 07:12:16.675699','18','How often do you apply sunscreen? Sometimes None',1,'[{\"added\": {}}]',19,1),(125,'2017-03-22 07:12:22.062396','19','How often do you apply sunscreen? Always None',1,'[{\"added\": {}}]',19,1),(126,'2017-03-22 07:16:58.638852','20','What best describes your morning skin routine? Minimal',1,'[{\"added\": {}}]',19,1),(127,'2017-03-22 07:17:35.096068','21','What best describes your morning skin routine? Basic',1,'[{\"added\": {}}]',19,1),(128,'2017-03-22 07:17:42.638874','22','What best describes your morning skin routine? Moderate',1,'[{\"added\": {}}]',19,1),(129,'2017-03-22 07:17:47.283594','23','What best describes your morning skin routine? Advanced',1,'[{\"added\": {}}]',19,1),(130,'2017-03-22 07:17:53.232213','24','What best describes your morning skin routine? Not Applicabble',1,'[{\"added\": {}}]',19,1),(131,'2017-03-22 07:18:05.023901','25','What best describes your evening skin routine? Minimal',1,'[{\"added\": {}}]',19,1),(132,'2017-03-22 07:18:12.847021','26','What best describes your evening skin routine? Basic',1,'[{\"added\": {}}]',19,1),(133,'2017-03-22 07:18:17.160832','27','What best describes your evening skin routine? Moderate',1,'[{\"added\": {}}]',19,1),(134,'2017-03-22 07:18:21.612942','28','What best describes your evening skin routine? Advanced',1,'[{\"added\": {}}]',19,1),(135,'2017-03-22 07:18:26.012420','29','What best describes your evening skin routine? Not Applicabble',1,'[{\"added\": {}}]',19,1),(136,'2017-03-22 07:18:40.592505','22','Not Applicable',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',17,1),(137,'2017-03-22 07:20:45.821884','2','Dry',2,'[{\"changed\": {\"fields\": [\"helper\"]}}]',13,1),(138,'2017-03-22 07:20:59.471497','3','Normal',2,'[{\"changed\": {\"fields\": [\"helper\"]}}]',13,1),(139,'2017-03-22 07:21:22.167300','4','Oily T-zone and Dry otherwise',1,'[{\"added\": {}}]',13,1),(140,'2017-03-22 07:21:36.487403','5','Oily T-zone and Normal otherwise',1,'[{\"added\": {}}]',13,1),(141,'2017-03-22 07:22:43.335988','30','What is your Skin Type? None',1,'[{\"added\": {}}]',19,1),(142,'2017-03-22 07:22:57.270877','31','What is your Skin Type? None',1,'[{\"added\": {}}]',19,1),(143,'2017-03-22 07:23:01.938822','32','What is your Skin Type? None',1,'[{\"added\": {}}]',19,1),(144,'2017-03-22 07:23:07.660747','33','What is your Skin Type? None',1,'[{\"added\": {}}]',19,1),(145,'2017-03-22 07:23:15.495536','34','What is your Skin Type? None',1,'[{\"added\": {}}]',19,1),(146,'2017-03-22 07:23:21.639797','35','What is your Skin Type? None',1,'[{\"added\": {}}]',19,1),(147,'2017-03-22 07:24:25.961871','35','What is your Skin Type? Oily T-zone and Normal otherwise',3,'',19,1),(148,'2017-03-22 07:24:25.968919','34','What is your Skin Type? Oily T-zone and Dry otherwise',3,'',19,1),(149,'2017-03-22 07:24:31.046572','33','What is your Skin Type? Oily T-zone and Dry otherwise',2,'[]',19,1),(150,'2017-03-22 07:24:37.626787','36','What is your Skin Type? Oily T-zone and Normal otherwise',1,'[{\"added\": {}}]',19,1),(151,'2017-03-22 07:24:58.911633','37','Pick Your Top 3 Skin Concerns Clog Pore',1,'[{\"added\": {}}]',19,1),(152,'2017-03-22 07:25:03.795149','38','Pick Your Top 3 Skin Concerns Mild Acne',1,'[{\"added\": {}}]',19,1),(153,'2017-03-22 07:30:15.296421','38','Pick Your Top 3 Skin Concerns Mild Acne',2,'[]',19,1),(154,'2017-03-22 07:30:22.861505','39','Pick Your Top 3 Skin Concerns Consistent Acne',1,'[{\"added\": {}}]',19,1),(155,'2017-03-22 07:30:28.928011','40','Pick Your Top 3 Skin Concerns Severe Acne',1,'[{\"added\": {}}]',19,1),(156,'2017-03-22 07:30:34.303072','41','Pick Your Top 3 Skin Concerns Anti-Aging Wrinkles plus Age Prevention',1,'[{\"added\": {}}]',19,1),(157,'2017-03-22 07:30:38.365756','42','Pick Your Top 3 Skin Concerns Redness',1,'[{\"added\": {}}]',19,1),(158,'2017-03-22 07:30:43.414224','43','Pick Your Top 3 Skin Concerns Sun Damage',1,'[{\"added\": {}}]',19,1),(159,'2017-03-22 07:30:48.605792','44','Pick Your Top 3 Skin Concerns Sun Damage',1,'[{\"added\": {}}]',19,1),(160,'2017-03-22 07:30:53.636934','45','Pick Your Top 3 Skin Concerns Dehydrated',1,'[{\"added\": {}}]',19,1),(161,'2017-03-22 07:30:58.563081','46','Pick Your Top 3 Skin Concerns Large Pores',1,'[{\"added\": {}}]',19,1),(162,'2017-03-22 07:31:02.754287','47','Pick Your Top 3 Skin Concerns Tired and Dull',1,'[{\"added\": {}}]',19,1),(163,'2017-03-22 07:31:16.970495','44','Pick Your Top 3 Skin Concerns Sun Damage',3,'',19,1),(164,'2017-03-22 07:31:28.835962','47','Pick Your Top 3 Skin Concerns Tired and Dull',2,'[]',19,1),(165,'2017-03-22 07:31:34.437743','48','Pick Your Top 3 Skin Concerns Sensitive and Irritated by Harsh Products',1,'[{\"added\": {}}]',19,1),(166,'2017-03-22 07:31:39.460842','49','Pick Your Top 3 Skin Concerns Brown spots or blemishes',1,'[{\"added\": {}}]',19,1),(167,'2017-03-22 07:33:52.106649','49','Pick Your Top 3 Skin Concerns Brown spots or blemishes',3,'',19,1),(168,'2017-03-22 07:33:52.113392','48','Pick Your Top 3 Skin Concerns Sensitive and Irritated by Harsh Products',3,'',19,1),(169,'2017-03-22 07:33:52.115079','47','Pick Your Top 3 Skin Concerns Tired and Dull',3,'',19,1),(170,'2017-03-22 07:33:52.116346','46','Pick Your Top 3 Skin Concerns Large Pores',3,'',19,1),(171,'2017-03-22 07:33:52.117811','45','Pick Your Top 3 Skin Concerns Dehydrated',3,'',19,1),(172,'2017-03-22 07:33:52.119930','43','Pick Your Top 3 Skin Concerns Sun Damage',3,'',19,1),(173,'2017-03-22 07:33:52.121153','42','Pick Your Top 3 Skin Concerns Redness',3,'',19,1),(174,'2017-03-22 07:33:52.122205','41','Pick Your Top 3 Skin Concerns Anti-Aging Wrinkles plus Age Prevention',3,'',19,1),(175,'2017-03-22 07:33:52.123240','40','Pick Your Top 3 Skin Concerns Severe Acne',3,'',19,1),(176,'2017-03-22 07:33:52.124316','39','Pick Your Top 3 Skin Concerns Consistent Acne',3,'',19,1),(177,'2017-03-22 07:33:52.125380','38','Pick Your Top 3 Skin Concerns Mild Acne',3,'',19,1),(178,'2017-03-22 07:33:52.126469','37','Pick Your Top 3 Skin Concerns Clog Pore',3,'',19,1),(179,'2017-03-22 07:33:52.127554','36','What is your Skin Type? Oily T-zone and Normal otherwise',3,'',19,1),(180,'2017-03-22 07:33:52.128589','33','What is your Skin Type? Oily T-zone and Dry otherwise',3,'',19,1),(181,'2017-03-22 07:33:52.130426','32','What is your Skin Type? Normal',3,'',19,1),(182,'2017-03-22 07:33:52.131409','31','What is your Skin Type? Dry',3,'',19,1),(183,'2017-03-22 07:33:52.132401','30','What is your Skin Type? Oily',3,'',19,1),(184,'2017-03-22 07:46:19.414214','5','What\'s your age?',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(185,'2017-03-22 07:46:24.358007','5','What\'s your age?',2,'[]',19,1),(186,'2017-03-22 07:46:25.712589','5','What\'s your age?',2,'[]',19,1),(187,'2017-03-22 07:47:02.186043','6','What\'s your age? 30-39',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(188,'2017-03-22 07:47:11.756321','7','What\'s your age? 30-39',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(189,'2017-03-22 07:47:18.603892','8','What\'s your age? 40-49',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(190,'2017-03-22 07:47:25.248293','9','What\'s your age? 50-59',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(191,'2017-03-22 07:47:35.268639','7','What\'s your age? 40-49',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(192,'2017-03-22 07:47:40.629179','8','What\'s your age? 50-59',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(193,'2017-03-22 07:47:45.965843','9','What\'s your age? 60+',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(194,'2017-03-22 07:47:54.121513','10','What\'s your gender? Male',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(195,'2017-03-22 07:48:00.272363','11','What\'s your gender? Female',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(196,'2017-03-22 07:48:11.405281','12','What is your current environment? Dry',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(197,'2017-03-22 07:48:17.799995','13','What is your current environment? Humid',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(198,'2017-03-22 07:48:27.215707','14','What is your current environment? Neither Dry nor Humid',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(199,'2017-03-22 07:48:34.118532','15','What is your current environment? Tropical',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(200,'2017-03-22 07:48:42.415165','16','How often do you apply sunscreen? Never',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(201,'2017-03-22 07:48:48.236544','17','How often do you apply sunscreen? Rarely',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(202,'2017-03-22 07:48:53.610468','18','How often do you apply sunscreen? Sometimes',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(203,'2017-03-22 07:48:59.989408','19','How often do you apply sunscreen? Always',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(204,'2017-03-22 07:49:08.457056','20','What best describes your morning skin routine? Minimal',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(205,'2017-03-22 07:49:12.494459','21','What best describes your morning skin routine? Basic',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(206,'2017-03-22 07:49:17.418373','22','What best describes your morning skin routine? Moderate',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(207,'2017-03-22 07:49:23.291739','23','What best describes your morning skin routine? Advanced',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(208,'2017-03-22 07:49:28.307563','24','What best describes your morning skin routine? Not Applicable',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(209,'2017-03-22 07:49:33.283003','25','What best describes your evening skin routine? Minimal',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(210,'2017-03-22 07:49:40.034696','26','What best describes your evening skin routine? Basic',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(211,'2017-03-22 07:49:45.689678','27','What best describes your evening skin routine? Moderate',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(212,'2017-03-22 07:49:51.064790','28','What best describes your evening skin routine? Advanced',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(213,'2017-03-22 07:49:55.456994','29','What best describes your evening skin routine? Not Applicable',2,'[{\"changed\": {\"fields\": [\"option\"]}}]',19,1),(214,'2017-03-23 07:51:05.708840','5','Anti-Aging',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',11,1),(215,'2017-03-23 07:51:18.944699','11','Sensitive Skin',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',11,1),(216,'2017-03-23 07:57:14.488788','1','<<18',2,'[{\"changed\": {\"fields\": [\"name\", \"helper\"]}}]',17,1),(217,'2017-03-23 07:58:00.655579','1','<<18',2,'[{\"changed\": {\"fields\": [\"helper\"]}}]',17,1),(218,'2017-03-23 07:58:17.639302','1','< 18',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',17,1),(219,'2017-03-23 07:58:34.780703','6','60 +',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',17,1),(220,'2017-03-23 07:58:50.387580','2','18 - 29',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',17,1),(221,'2017-03-23 07:58:56.511706','3','30 - 39',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',17,1),(222,'2017-03-23 07:59:02.781940','4','40 - 49',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',17,1),(223,'2017-03-23 07:59:07.875499','5','50 - 59',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',17,1),(224,'2017-03-23 07:59:31.741397','2','18-29',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',17,1),(225,'2017-03-23 07:59:37.343149','3','30-39',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',17,1),(226,'2017-03-23 07:59:45.317602','4','40-49',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',17,1),(227,'2017-03-23 07:59:50.602238','5','50-59',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',17,1),(228,'2017-03-23 08:01:22.398136','1','What\'s your age?',2,'[{\"changed\": {\"fields\": [\"why\"]}}]',18,1),(229,'2017-03-23 08:10:29.087598','1','What\'s your age?',2,'[{\"changed\": {\"fields\": [\"why\"]}}]',18,1),(230,'2017-03-23 19:05:25.021890','45','NewMe',1,'[{\"added\": {}}]',NULL,1),(231,'2017-03-23 19:05:46.594534','45','NewMe',3,'',17,1),(232,'2017-03-23 20:42:27.693827','32','What is your Skin Type? Oily',1,'[{\"added\": {}}]',19,1),(233,'2017-03-23 20:42:32.938818','33','What is your Skin Type? Dry',1,'[{\"added\": {}}]',19,1),(234,'2017-03-23 20:42:38.622705','34','What is your Skin Type? Normal',1,'[{\"added\": {}}]',19,1),(235,'2017-03-23 20:42:43.680269','35','What is your Skin Type? Oily T-zone and Dry otherwise',1,'[{\"added\": {}}]',19,1),(236,'2017-03-23 20:42:49.048629','36','What is your Skin Type? Oily T-zone and Normal otherwise',1,'[{\"added\": {}}]',19,1),(237,'2017-03-23 20:57:10.735993','27','Oily T-zone and Normal otherwise',3,'',13,1),(238,'2017-03-23 20:57:10.742744','26','Oily T-zone and Dry otherwise',3,'',13,1),(239,'2017-03-23 20:57:59.462137','33','Oily T-zone (forehead, nose & chin)',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',11,1),(240,'2017-03-23 23:29:02.842438','3','Avocado',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',15,1),(241,'2017-03-23 23:31:23.014402','3','Avocado',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',15,1),(242,'2017-03-23 23:31:37.731398','3','Avocado',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',15,1),(243,'2017-03-23 23:34:18.341067','5','Honey_Normal',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',14,1),(244,'2017-03-23 23:34:26.543109','4','Honey_Dry',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',14,1),(245,'2017-03-23 23:34:40.911752','41','Yogurt',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',15,1),(246,'2017-03-23 23:36:21.929771','3','Avocado',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',15,1),(247,'2017-03-23 23:38:06.259915','3','Cucumber gel_Normal',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',14,1),(248,'2017-03-23 23:38:22.194857','2','Aloe vera gel_Normal',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',14,1),(249,'2017-03-23 23:38:29.946600','3','Cucumber gel_Normal',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',14,1),(250,'2017-03-23 23:38:38.629278','2','Aloe vera gel_Normal',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',14,1),(251,'2017-03-23 23:38:46.024901','1','Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',14,1),(252,'2017-03-23 23:40:31.708474','5','White Kaolin clay_Dry',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',7,1),(253,'2017-03-23 23:40:38.046642','4','Rassoul Clay_Normal',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',7,1),(254,'2017-03-23 23:40:42.613905','3','Fuller\'s earth_Oily',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',7,1),(255,'2017-03-23 23:40:47.575098','2','Bentonite clay_Oily',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',7,1),(256,'2017-03-23 23:40:52.757653','1','French green clay (not for sensitive skin)_Oily',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',7,1),(257,'2017-03-24 04:17:07.066330','5','White Kaolin clay_Dry',2,'[{\"changed\": {\"fields\": [\"helper\"]}}]',7,1),(258,'2017-03-24 04:17:10.497332','4','Rassoul Clay_Normal',2,'[{\"changed\": {\"fields\": [\"helper\"]}}]',7,1),(259,'2017-03-24 04:17:14.489257','3','Fuller\'s earth_Oily',2,'[{\"changed\": {\"fields\": [\"helper\"]}}]',7,1),(260,'2017-03-24 04:17:17.456947','2','Bentonite clay_Oily',2,'[{\"changed\": {\"fields\": [\"helper\"]}}]',7,1),(261,'2017-03-24 04:17:20.745074','1','French green clay (not for sensitive skin)_Oily',2,'[{\"changed\": {\"fields\": [\"helper\"]}}]',7,1),(262,'2017-03-24 04:17:30.699592','3','Cucumber gel_Normal',2,'[{\"changed\": {\"fields\": [\"helper\"]}}]',14,1),(263,'2017-03-24 04:17:34.284515','2','Aloe vera gel_Normal',2,'[{\"changed\": {\"fields\": [\"helper\"]}}]',14,1),(264,'2017-03-24 04:17:37.172627','1','Rose water_Oily',2,'[{\"changed\": {\"fields\": [\"helper\"]}}]',14,1),(265,'2017-03-24 05:30:23.075403','5','White Kaolin clay_Dry',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',7,1),(266,'2017-03-24 05:30:35.830506','3','Fuller\'s earth_Oily',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',7,1),(267,'2017-03-24 06:25:11.764230','1','French green clay (not for sensitive skin)_Oily',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',7,1),(268,'2017-03-25 01:45:00.910957','6','6',1,'[{\"added\": {}}]',55,1),(269,'2017-03-25 23:36:46.087682','39','anon_mbqvp365l1p5ba79t4tzwsngasn3h5rc',3,'',3,1),(270,'2017-03-26 20:02:19.429326','1','1 1 business day',1,'[{\"added\": {}}]',60,1),(271,'2017-03-26 20:03:06.395546','2','2 2 business days',1,'[{\"added\": {}}]',60,1),(272,'2017-03-26 20:04:02.466538','3','3 3-5 business days',1,'[{\"added\": {}}]',60,1),(273,'2017-03-26 20:04:39.282283','4','4 7-10 business days',1,'[{\"added\": {}}]',60,1),(274,'2017-03-27 03:03:49.448896','1','root',2,'[{\"changed\": {\"fields\": [\"first_name\", \"email\"]}}]',3,1),(275,'2017-03-28 05:31:18.204952','2','rajiv.raja1@gmail.com',2,'[{\"changed\": {\"fields\": [\"username\", \"email\"]}}]',3,1),(276,'2017-03-28 05:41:48.617055','2','rajiv.raja@gmail.com',2,'[{\"changed\": {\"fields\": [\"username\", \"email\"]}}]',3,1),(277,'2017-03-28 05:53:48.632444','2','rajiv.raja@gmail1.com',2,'[{\"changed\": {\"fields\": [\"username\", \"email\"]}}]',3,1),(278,'2017-03-28 05:54:40.197471','2','rajiv.raja1@gmail.com',2,'[{\"changed\": {\"fields\": [\"username\"]}}]',3,1),(279,'2017-03-28 07:13:43.207139','2','rajiv.raja@gmail.com',2,'[{\"changed\": {\"fields\": [\"username\", \"email\"]}}]',3,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(4,'auth','group'),(2,'auth','permission'),(3,'auth','user'),(54,'cart','cart'),(5,'contenttypes','contenttype'),(49,'facepackwizard','option'),(48,'facepackwizard','question'),(52,'facepackwizard','questionnaire'),(58,'facepackwizard','questionnaireentry'),(59,'facepackwizard','questionnaireuserdata'),(50,'facepackwizard','skinconcern'),(51,'facepackwizard','skintype'),(42,'home','base'),(57,'home','customfacepack'),(55,'home','facepack'),(41,'home','ingredient'),(37,'home','item'),(44,'home','mixingagent'),(56,'home','prepack'),(38,'home','recipe'),(45,'payments','payment'),(46,'payments','purchasehistory'),(60,'payments','shipping'),(6,'sessions','session'),(65,'social_auth','association'),(62,'social_auth','code'),(61,'social_auth','nonce'),(63,'social_auth','usersocialauth');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (181,'contenttypes','0001_initial','2017-03-27 08:16:15.943949'),(182,'auth','0001_initial','2017-03-27 08:16:15.952337'),(183,'admin','0001_initial','2017-03-27 08:16:15.954932'),(184,'admin','0002_logentry_remove_auto_add','2017-03-27 08:16:15.957842'),(185,'contenttypes','0002_remove_content_type_name','2017-03-27 08:16:15.960776'),(186,'auth','0002_alter_permission_name_max_length','2017-03-27 08:16:15.963718'),(187,'auth','0003_alter_user_email_max_length','2017-03-27 08:16:15.966536'),(188,'auth','0004_alter_user_username_opts','2017-03-27 08:16:15.969010'),(189,'auth','0005_alter_user_last_login_null','2017-03-27 08:16:15.971355'),(190,'auth','0006_require_contenttypes_0002','2017-03-27 08:16:15.973785'),(191,'auth','0007_alter_validators_add_error_messages','2017-03-27 08:16:15.976661'),(192,'auth','0008_alter_user_username_max_length','2017-03-27 08:16:15.979828'),(193,'facepackwizard','0001_initial','2017-03-27 08:16:15.982579'),(194,'home','0001_initial','2017-03-27 08:16:15.985283'),(195,'home','0002_item_price','2017-03-27 08:16:15.987922'),(196,'cart','0001_initial','2017-03-27 08:16:15.990533'),(197,'facepackwizard','0002_auto_20170324_1812','2017-03-27 08:16:15.993217'),(198,'facepackwizard','0003_auto_20170324_1817','2017-03-27 08:16:15.995785'),(199,'facepackwizard','0004_auto_20170324_1818','2017-03-27 08:16:15.998454'),(200,'home','0003_auto_20170324_1808','2017-03-27 08:16:16.003605'),(201,'home','0004_auto_20170324_1810','2017-03-27 08:16:16.006627'),(202,'home','0005_customfacepack_prepack','2017-03-27 08:16:16.010018'),(203,'home','0006_auto_20170324_1813','2017-03-27 08:16:16.013534'),(204,'home','0007_auto_20170324_1818','2017-03-27 08:16:16.016497'),(205,'home','0008_item_real_type','2017-03-27 08:16:16.019467'),(206,'home','0009_remove_item_real_type','2017-03-27 08:16:16.021952'),(207,'home','0010_item_real_type','2017-03-27 08:16:16.024276'),(208,'home','0011_remove_item_real_type','2017-03-27 08:16:16.026473'),(209,'home','0012_customfacepack_user','2017-03-27 08:16:16.028676'),(210,'payments','0001_initial','2017-03-27 08:16:16.030896'),(211,'payments','0002_remove_payment_createdte2','2017-03-27 08:16:16.033014'),(212,'payments','0003_auto_20170326_1258','2017-03-27 08:16:16.035120'),(213,'sessions','0001_initial','2017-03-27 08:16:16.037932'),(214,'default','0001_initial','2017-03-27 08:32:12.237696'),(215,'default','0002_add_related_name','2017-03-27 08:32:12.304421'),(216,'default','0003_alter_email_max_length','2017-03-27 08:32:12.328308'),(217,'default','0004_auto_20160423_0400','2017-03-27 08:32:12.367364'),(218,'social_auth','0005_auto_20160727_2333','2017-03-27 08:32:12.389226'),(219,'social_auth','0001_initial','2017-03-27 08:32:12.393547'),(220,'social_auth','0003_alter_email_max_length','2017-03-27 08:32:12.396027'),(221,'social_auth','0004_auto_20160423_0400','2017-03-27 08:32:12.398379'),(222,'social_auth','0002_add_related_name','2017-03-27 08:32:12.400754');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facepackwizard_option`
--

DROP TABLE IF EXISTS `facepackwizard_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facepackwizard_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `helper` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facepackwizard_option`
--

LOCK TABLES `facepackwizard_option` WRITE;
/*!40000 ALTER TABLE `facepackwizard_option` DISABLE KEYS */;
INSERT INTO `facepackwizard_option` VALUES (1,'< 18',''),(2,'18-29',''),(3,'30-39',''),(4,'40-49',''),(5,'50-59',''),(6,'60 +',''),(7,'Male',''),(8,'Female',''),(9,'Dry',''),(10,'Humid',''),(11,'Neither Dry nor Humid',''),(12,'Tropical',''),(13,'Never',''),(14,'Rarely',''),(15,'Sometimes',''),(16,'Always',''),(17,'Minimal','Cleanse'),(18,'Basic','Cleanse + Moisturize'),(19,'Moderate','Cleanse + Exfoliate + Tone + Moisturize'),(20,'Advanced','Cleanse + Tone + Moisturize + Face Mask once or twice a week'),(22,'Not Applicable',''),(23,'Oily',''),(24,'Dry','Less or No Oil'),(25,'Normal','Neither Oily nor Dry'),(30,'Clog Pore',''),(31,'Mild Acne',''),(32,'Consistent Acne',''),(33,'Oily T-zone (forehead, nose & chin)',''),(34,'Anti-Aging',''),(35,'Redness',''),(36,'Sun Damage',''),(37,'Dehydrated',''),(38,'Large Pores',''),(39,'Tired and Dull',''),(40,'Sensitive Skin',''),(41,'Brown spots or blemishes','');
/*!40000 ALTER TABLE `facepackwizard_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facepackwizard_question`
--

DROP TABLE IF EXISTS `facepackwizard_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facepackwizard_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  `why` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facepackwizard_question`
--

LOCK TABLES `facepackwizard_question` WRITE;
/*!40000 ALTER TABLE `facepackwizard_question` DISABLE KEYS */;
INSERT INTO `facepackwizard_question` VALUES (1,'What\'s your age?','Ehent iur aliberio. Necabo. Corro berum dolore num iunt eicid ut alibus arunt es quatium quam qui reruptas aut res et que eos sit acium quatiorestia venis et quam, venihic te est hiciendis sedit'),(2,'What\'s your gender?','Ehent iur aliberio. Necabo. Corro berum dolore num iunt eicid ut alibus arunt es quatium quam qui reruptas aut res et que eos sit acium quatiorestia venis et quam, venihic te est hiciendis sedit'),(3,'What is your current environment?','Ehent iur aliberio. Necabo. Corro berum dolore num iunt eicid ut alibus arunt es quatium quam qui reruptas aut res et que eos sit acium quatiorestia venis et quam, venihic te est hiciendis sedit'),(4,'How often do you apply sunscreen?','Ehent iur aliberio. Necabo. Corro berum dolore num iunt eicid ut alibus arunt es quatium quam qui reruptas aut res et que eos sit acium quatiorestia venis et quam, venihic te est hiciendis sedit'),(5,'What best describes your morning skin routine?','Ehent iur aliberio. Necabo. Corro berum dolore num iunt eicid ut alibus arunt es quatium quam qui reruptas aut res et que eos sit acium quatiorestia venis et quam, venihic te est hiciendis sedit'),(6,'What best describes your evening skin routine?','Ehent iur aliberio. Necabo. Corro berum dolore num iunt eicid ut alibus arunt es quatium quam qui reruptas aut res et que eos sit acium quatiorestia venis et quam, venihic te est hiciendis sedit'),(7,'What is your Skin Type?','Ehent iur aliberio. Necabo. Corro berum dolore num iunt eicid ut alibus arunt es quatium quam qui reruptas aut res et que eos sit acium quatiorestia venis et quam, venihic te est hiciendis sedit'),(8,'Pick Your Top 3 Skin Concerns','Ehent iur aliberio. Necabo. Corro berum dolore num iunt eicid ut alibus arunt es quatium quam qui reruptas aut res et que eos sit acium quatiorestia venis et quam, venihic te est hiciendis sedit');
/*!40000 ALTER TABLE `facepackwizard_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facepackwizard_questionnaire`
--

DROP TABLE IF EXISTS `facepackwizard_questionnaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facepackwizard_questionnaire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `facepackwizard_qu_option_id_2d213f38_fk_facepackwizard_option_id` (`option_id`),
  KEY `facepackwizar_question_id_d3625d75_fk_facepackwizard_question_id` (`question_id`),
  CONSTRAINT `facepackwizar_question_id_d3625d75_fk_facepackwizard_question_id` FOREIGN KEY (`question_id`) REFERENCES `facepackwizard_question` (`id`),
  CONSTRAINT `facepackwizard_qu_option_id_2d213f38_fk_facepackwizard_option_id` FOREIGN KEY (`option_id`) REFERENCES `facepackwizard_option` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facepackwizard_questionnaire`
--

LOCK TABLES `facepackwizard_questionnaire` WRITE;
/*!40000 ALTER TABLE `facepackwizard_questionnaire` DISABLE KEYS */;
INSERT INTO `facepackwizard_questionnaire` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,2),(8,8,2),(9,9,3),(10,10,3),(11,11,3),(12,12,3),(13,13,4),(14,14,4),(15,15,4),(16,16,4),(17,17,5),(18,18,5),(19,19,5),(20,20,5),(21,22,5),(22,17,6),(23,18,6),(24,19,6),(25,20,6),(26,22,6),(32,23,7),(33,24,7),(34,25,7),(37,30,8),(38,31,8),(39,32,8),(40,33,8),(41,34,8),(42,35,8),(43,36,8),(44,37,8),(45,38,8),(46,39,8),(47,40,8),(48,41,8);
/*!40000 ALTER TABLE `facepackwizard_questionnaire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facepackwizard_questionnaireentry`
--

DROP TABLE IF EXISTS `facepackwizard_questionnaireentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facepackwizard_questionnaireentry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `wizard_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `facepackwizard_qu_option_id_b1ea392d_fk_facepackwizard_option_id` (`option_id`),
  KEY `facepackwizar_question_id_aa539d35_fk_facepackwizard_question_id` (`question_id`),
  KEY `fa_wizard_id_e619abf0_fk_facepackwizard_questionnaireuserdata_id` (`wizard_id`),
  CONSTRAINT `fa_wizard_id_e619abf0_fk_facepackwizard_questionnaireuserdata_id` FOREIGN KEY (`wizard_id`) REFERENCES `facepackwizard_questionnaireuserdata` (`id`),
  CONSTRAINT `facepackwizar_question_id_aa539d35_fk_facepackwizard_question_id` FOREIGN KEY (`question_id`) REFERENCES `facepackwizard_question` (`id`),
  CONSTRAINT `facepackwizard_qu_option_id_b1ea392d_fk_facepackwizard_option_id` FOREIGN KEY (`option_id`) REFERENCES `facepackwizard_option` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=521 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facepackwizard_questionnaireentry`
--

LOCK TABLES `facepackwizard_questionnaireentry` WRITE;
/*!40000 ALTER TABLE `facepackwizard_questionnaireentry` DISABLE KEYS */;
INSERT INTO `facepackwizard_questionnaireentry` VALUES (211,3,1,22),(212,7,2,22),(213,10,3,22),(214,13,4,22),(215,17,5,22),(216,17,6,22),(217,25,7,22),(218,31,8,22),(219,33,8,22),(220,37,8,22),(221,3,1,23),(222,7,2,23),(223,10,3,23),(224,13,4,23),(225,17,5,23),(226,17,6,23),(227,24,7,23),(228,31,8,23),(229,37,8,23),(230,39,8,23),(231,4,1,24),(232,8,2,24),(233,11,3,24),(234,15,4,24),(235,20,5,24),(236,20,6,24),(237,25,7,24),(238,33,8,24),(239,34,8,24),(240,40,8,24),(241,4,1,25),(242,8,2,25),(243,11,3,25),(244,15,4,25),(245,19,5,25),(246,19,6,25),(247,24,7,25),(248,32,8,25),(249,33,8,25),(250,38,8,25),(251,4,1,26),(252,8,2,26),(253,11,3,26),(254,15,4,26),(255,19,5,26),(256,19,6,26),(257,24,7,26),(258,33,8,26),(259,38,8,26),(260,39,8,26),(261,4,1,27),(262,8,2,27),(263,11,3,27),(264,15,4,27),(265,19,5,27),(266,19,6,27),(267,24,7,27),(268,33,8,27),(269,34,8,27),(270,40,8,27),(271,3,1,28),(272,7,2,28),(273,10,3,28),(274,14,4,28),(275,19,5,28),(276,19,6,28),(277,24,7,28),(278,32,8,28),(279,33,8,28),(280,38,8,28),(281,3,1,29),(282,7,2,29),(283,10,3,29),(284,14,4,29),(285,19,5,29),(286,19,6,29),(287,24,7,29),(288,32,8,29),(289,33,8,29),(290,38,8,29),(291,3,1,30),(292,7,2,30),(293,10,3,30),(294,14,4,30),(295,19,5,30),(296,19,6,30),(297,24,7,30),(298,32,8,30),(299,33,8,30),(300,38,8,30),(301,3,1,31),(302,7,2,31),(303,10,3,31),(304,14,4,31),(305,19,5,31),(306,19,6,31),(307,24,7,31),(308,32,8,31),(309,33,8,31),(310,39,8,31),(311,4,1,32),(312,8,2,32),(313,11,3,32),(314,15,4,32),(315,19,5,32),(316,19,6,32),(317,24,7,32),(318,33,8,32),(319,34,8,32),(320,40,8,32),(321,3,1,33),(322,7,2,33),(323,10,3,33),(324,14,4,33),(325,18,5,33),(326,18,6,33),(327,23,7,33),(328,30,8,33),(329,31,8,33),(330,37,8,33),(331,3,1,34),(332,7,2,34),(333,10,3,34),(334,14,4,34),(335,19,5,34),(336,19,6,34),(337,24,7,34),(338,32,8,34),(339,33,8,34),(340,38,8,34),(341,4,1,35),(342,8,2,35),(343,11,3,35),(344,15,4,35),(345,19,5,35),(346,19,6,35),(347,24,7,35),(348,33,8,35),(349,39,8,35),(350,40,8,35),(351,3,1,36),(352,7,2,36),(353,10,3,36),(354,14,4,36),(355,18,5,36),(356,18,6,36),(357,23,7,36),(358,32,8,36),(359,33,8,36),(360,34,8,36),(361,3,1,37),(362,7,2,37),(363,10,3,37),(364,14,4,37),(365,19,5,37),(366,19,6,37),(367,24,7,37),(368,32,8,37),(369,33,8,37),(370,38,8,37),(371,3,1,38),(372,7,2,38),(373,10,3,38),(374,14,4,38),(375,18,5,38),(376,18,6,38),(377,23,7,38),(378,32,8,38),(379,38,8,38),(380,39,8,38),(381,3,1,39),(382,7,2,39),(383,10,3,39),(384,14,4,39),(385,19,5,39),(386,19,6,39),(387,24,7,39),(388,32,8,39),(389,33,8,39),(390,38,8,39),(391,3,1,40),(392,7,2,40),(393,10,3,40),(394,14,4,40),(395,19,5,40),(396,19,6,40),(397,24,7,40),(398,32,8,40),(399,33,8,40),(400,39,8,40),(401,4,1,41),(402,8,2,41),(403,11,3,41),(404,15,4,41),(405,19,5,41),(406,19,6,41),(407,24,7,41),(408,33,8,41),(409,34,8,41),(410,40,8,41),(411,2,1,42),(412,7,2,42),(413,10,3,42),(414,14,4,42),(415,18,5,42),(416,18,6,42),(417,23,7,42),(418,32,8,42),(419,33,8,42),(420,39,8,42),(421,3,1,43),(422,7,2,43),(423,10,3,43),(424,14,4,43),(425,18,5,43),(426,18,6,43),(427,23,7,43),(428,32,8,43),(429,33,8,43),(430,39,8,43),(431,4,1,44),(432,8,2,44),(433,11,3,44),(434,15,4,44),(435,20,5,44),(436,20,6,44),(437,25,7,44),(438,34,8,44),(439,38,8,44),(440,39,8,44),(441,4,1,45),(442,8,2,45),(443,11,3,45),(444,15,4,45),(445,20,5,45),(446,20,6,45),(447,25,7,45),(448,33,8,45),(449,34,8,45),(450,40,8,45),(451,3,1,46),(452,7,2,46),(453,10,3,46),(454,14,4,46),(455,18,5,46),(456,18,6,46),(457,23,7,46),(458,32,8,46),(459,33,8,46),(460,40,8,46),(461,3,1,47),(462,7,2,47),(463,10,3,47),(464,14,4,47),(465,19,5,47),(466,19,6,47),(467,24,7,47),(468,32,8,47),(469,33,8,47),(470,40,8,47),(471,3,1,48),(472,7,2,48),(473,10,3,48),(474,14,4,48),(475,19,5,48),(476,19,6,48),(477,24,7,48),(478,33,8,48),(479,39,8,48),(480,41,8,48),(481,4,1,49),(482,8,2,49),(483,11,3,49),(484,15,4,49),(485,20,5,49),(486,20,6,49),(487,25,7,49),(488,33,8,49),(489,34,8,49),(490,39,8,49),(491,3,1,50),(492,7,2,50),(493,10,3,50),(494,14,4,50),(495,19,5,50),(496,19,6,50),(497,24,7,50),(498,32,8,50),(499,33,8,50),(500,39,8,50),(501,4,1,51),(502,8,2,51),(503,11,3,51),(504,15,4,51),(505,19,5,51),(506,19,6,51),(507,24,7,51),(508,33,8,51),(509,39,8,51),(510,40,8,51),(511,4,1,52),(512,8,2,52),(513,11,3,52),(514,15,4,52),(515,20,5,52),(516,20,6,52),(517,25,7,52),(518,32,8,52),(519,34,8,52),(520,38,8,52);
/*!40000 ALTER TABLE `facepackwizard_questionnaireentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facepackwizard_questionnaireuserdata`
--

DROP TABLE IF EXISTS `facepackwizard_questionnaireuserdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facepackwizard_questionnaireuserdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdte` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `facepackwizard_questionnaireuse_user_id_9c612c78_fk_auth_user_id` (`user_id`),
  CONSTRAINT `facepackwizard_questionnaireuse_user_id_9c612c78_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facepackwizard_questionnaireuserdata`
--

LOCK TABLES `facepackwizard_questionnaireuserdata` WRITE;
/*!40000 ALTER TABLE `facepackwizard_questionnaireuserdata` DISABLE KEYS */;
INSERT INTO `facepackwizard_questionnaireuserdata` VALUES (22,'2017-03-27 03:07:22.221344',2),(23,'2017-03-27 03:08:04.415462',2),(24,'2017-03-27 10:46:44.282338',2),(25,'2017-03-27 18:27:02.288941',NULL),(26,'2017-03-27 18:52:23.508208',NULL),(27,'2017-03-27 18:53:48.684633',NULL),(28,'2017-03-28 03:51:21.780021',NULL),(29,'2017-03-28 04:44:56.226889',NULL),(30,'2017-03-28 04:53:26.769509',NULL),(31,'2017-03-28 04:55:46.649578',NULL),(32,'2017-03-28 05:35:33.039542',NULL),(33,'2017-03-28 05:39:16.053483',NULL),(34,'2017-03-28 05:54:54.483432',NULL),(35,'2017-03-28 06:00:54.267612',NULL),(36,'2017-03-28 06:03:02.994196',NULL),(37,'2017-03-28 06:06:01.804523',NULL),(38,'2017-03-28 06:07:57.933148',NULL),(39,'2017-03-28 06:09:07.492552',NULL),(40,'2017-03-28 06:38:36.892278',NULL),(41,'2017-03-28 06:40:23.919357',NULL),(42,'2017-03-28 06:46:29.713604',NULL),(43,'2017-03-28 06:48:18.952272',NULL),(44,'2017-03-28 06:49:25.112560',NULL),(45,'2017-03-28 06:50:31.668343',NULL),(46,'2017-03-28 06:52:11.265205',NULL),(47,'2017-03-28 06:55:18.190278',NULL),(48,'2017-03-28 07:00:26.026318',NULL),(49,'2017-03-28 07:02:17.210086',NULL),(50,'2017-03-28 07:11:17.131388',NULL),(51,'2017-03-28 07:14:09.752134',2),(52,'2017-03-28 07:14:56.845383',2);
/*!40000 ALTER TABLE `facepackwizard_questionnaireuserdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facepackwizard_skinconcern`
--

DROP TABLE IF EXISTS `facepackwizard_skinconcern`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facepackwizard_skinconcern` (
  `option_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`option_ptr_id`),
  CONSTRAINT `facepackwizar_option_ptr_id_f17147c2_fk_facepackwizard_option_id` FOREIGN KEY (`option_ptr_id`) REFERENCES `facepackwizard_option` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facepackwizard_skinconcern`
--

LOCK TABLES `facepackwizard_skinconcern` WRITE;
/*!40000 ALTER TABLE `facepackwizard_skinconcern` DISABLE KEYS */;
INSERT INTO `facepackwizard_skinconcern` VALUES (30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41);
/*!40000 ALTER TABLE `facepackwizard_skinconcern` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facepackwizard_skintype`
--

DROP TABLE IF EXISTS `facepackwizard_skintype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facepackwizard_skintype` (
  `option_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`option_ptr_id`),
  CONSTRAINT `facepackwizar_option_ptr_id_d9cbbe6c_fk_facepackwizard_option_id` FOREIGN KEY (`option_ptr_id`) REFERENCES `facepackwizard_option` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facepackwizard_skintype`
--

LOCK TABLES `facepackwizard_skintype` WRITE;
/*!40000 ALTER TABLE `facepackwizard_skintype` DISABLE KEYS */;
INSERT INTO `facepackwizard_skintype` VALUES (23),(24),(25);
/*!40000 ALTER TABLE `facepackwizard_skintype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_base`
--

DROP TABLE IF EXISTS `home_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_base` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  `skin_type_id` int(11),
  `helper` varchar(1000),
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `f_skin_type_id_46513bb4_fk_facepackwizard_skintype_option_ptr_id` (`skin_type_id`),
  CONSTRAINT `f_skin_type_id_46513bb4_fk_facepackwizard_skintype_option_ptr_id` FOREIGN KEY (`skin_type_id`) REFERENCES `facepackwizard_skintype` (`option_ptr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_base`
--

LOCK TABLES `home_base` WRITE;
/*!40000 ALTER TABLE `home_base` DISABLE KEYS */;
INSERT INTO `home_base` VALUES (1,'French green clay (not for sensitive skin)',23,'Deeply moisturising, rich in nutrients and boosts collagen Deeply moisturising, rich in nutrients and boosts collagen Deeply moisturising, rich in nutrients and boosts collagen','images/base/turmeric_kaKttNs.jpg'),(2,'Bentonite clay',23,'Deeply moisturising, rich in nutrients and boosts collagen Deeply moisturising, rich in nutrients and boosts collagen Deeply moisturising, rich in nutrients and boosts collagen','images/base/turmeric_9W9hilP.jpg'),(3,'Fuller\'s earth',23,'Deeply moisturising, rich in nutrients and boosts collagen Deeply moisturising, rich in nutrients and boosts collagen Deeply moisturising, rich in nutrients and boosts collagen','images/base/turmeric_G37zlov.jpg'),(4,'Rassoul Clay',25,'Deeply moisturising, rich in nutrients and boosts collagen Deeply moisturising, rich in nutrients and boosts collagen Deeply moisturising, rich in nutrients and boosts collagen','images/base/turmeric_4kJkPlv.jpg'),(5,'White Kaolin clay',24,'Deeply moisturising, rich in nutrients and boosts collagen Deeply moisturising, rich in nutrients and boosts collagen Deeply moisturising, rich in nutrients and boosts collagen','images/base/turmeric_suCKy87.jpg');
/*!40000 ALTER TABLE `home_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_customfacepack`
--

DROP TABLE IF EXISTS `home_customfacepack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_customfacepack` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facepack_id` int(11) NOT NULL,
  `optional_ingredient_id` int(11),
  `recipe_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `home_customfac_facepack_id_8dd71573_fk_home_facepack_item_ptr_id` (`facepack_id`),
  KEY `home_custo_optional_ingredient_id_256af5c6_fk_home_ingredient_id` (`optional_ingredient_id`),
  KEY `home_customfacepack_recipe_id_be82e4a4_fk_home_recipe_id` (`recipe_id`),
  KEY `home_customfacepack_user_id_15ab891a_fk_auth_user_id` (`user_id`),
  CONSTRAINT `home_custo_optional_ingredient_id_256af5c6_fk_home_ingredient_id` FOREIGN KEY (`optional_ingredient_id`) REFERENCES `home_ingredient` (`id`),
  CONSTRAINT `home_customfac_facepack_id_8dd71573_fk_home_facepack_item_ptr_id` FOREIGN KEY (`facepack_id`) REFERENCES `home_facepack` (`item_ptr_id`),
  CONSTRAINT `home_customfacepack_recipe_id_be82e4a4_fk_home_recipe_id` FOREIGN KEY (`recipe_id`) REFERENCES `home_recipe` (`id`),
  CONSTRAINT `home_customfacepack_user_id_15ab891a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=545 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_customfacepack`
--

LOCK TABLES `home_customfacepack` WRITE;
/*!40000 ALTER TABLE `home_customfacepack` DISABLE KEYS */;
INSERT INTO `home_customfacepack` VALUES (359,129,NULL,26,2),(360,129,NULL,28,2),(361,129,NULL,32,2),(365,131,16,26,2),(366,131,16,28,2),(367,131,16,32,2),(368,132,NULL,14,2),(369,132,NULL,20,2),(370,132,NULL,22,2),(371,133,29,14,2),(372,133,29,20,2),(373,133,29,22,2),(374,134,NULL,28,2),(375,134,NULL,29,2),(376,134,NULL,35,2),(377,135,15,28,2),(378,135,15,29,2),(379,135,15,35,2),(533,187,NULL,16,2),(534,187,NULL,22,2),(535,187,NULL,23,2),(536,188,23,16,2),(537,188,23,22,2),(538,188,23,23,2),(539,189,NULL,27,2),(540,189,NULL,29,2),(541,189,NULL,33,2),(542,190,38,27,2),(543,190,38,29,2),(544,190,38,33,2);
/*!40000 ALTER TABLE `home_customfacepack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_facepack`
--

DROP TABLE IF EXISTS `home_facepack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_facepack` (
  `item_ptr_id` int(11) NOT NULL,
  `base_id` int(11) NOT NULL,
  `mixing_agent_id` int(11) NOT NULL,
  PRIMARY KEY (`item_ptr_id`),
  KEY `home_facepack_base_id_d44f4387_fk_home_base_id` (`base_id`),
  KEY `home_facepack_mixing_agent_id_b743bc1b_fk_home_mixingagent_id` (`mixing_agent_id`),
  CONSTRAINT `home_facepack_base_id_d44f4387_fk_home_base_id` FOREIGN KEY (`base_id`) REFERENCES `home_base` (`id`),
  CONSTRAINT `home_facepack_item_ptr_id_b939e1a6_fk_home_item_id` FOREIGN KEY (`item_ptr_id`) REFERENCES `home_item` (`id`),
  CONSTRAINT `home_facepack_mixing_agent_id_b743bc1b_fk_home_mixingagent_id` FOREIGN KEY (`mixing_agent_id`) REFERENCES `home_mixingagent` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_facepack`
--

LOCK TABLES `home_facepack` WRITE;
/*!40000 ALTER TABLE `home_facepack` DISABLE KEYS */;
INSERT INTO `home_facepack` VALUES (129,4,2),(131,4,2),(132,5,4),(133,5,4),(134,4,2),(135,4,2),(136,5,4),(137,5,4),(138,5,4),(139,5,4),(140,5,4),(141,5,4),(142,5,4),(143,5,4),(144,5,4),(145,5,4),(146,5,4),(147,5,4),(148,5,4),(149,5,4),(150,5,4),(151,5,4),(152,5,4),(153,5,4),(154,1,1),(155,1,1),(156,5,4),(157,5,4),(158,5,4),(159,1,1),(160,5,4),(161,3,1),(162,5,4),(163,5,4),(164,5,4),(165,5,4),(166,2,1),(167,2,1),(168,2,1),(169,3,1),(170,3,1),(171,3,1),(172,4,5),(173,4,5),(174,4,5),(175,1,1),(176,1,1),(177,1,1),(178,1,1),(179,1,1),(180,1,1),(181,5,4),(182,5,4),(183,5,4),(184,5,4),(185,4,5),(186,5,4),(187,5,4),(188,5,4),(189,4,3),(190,4,3);
/*!40000 ALTER TABLE `home_facepack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_ingredient`
--

DROP TABLE IF EXISTS `home_ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_ingredient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  `helper` varchar(1000),
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_ingredient`
--

LOCK TABLES `home_ingredient` WRITE;
/*!40000 ALTER TABLE `home_ingredient` DISABLE KEYS */;
INSERT INTO `home_ingredient` VALUES (1,'Almonds',NULL,'images/ingredients/apples_eIqOvIp.jpg'),(2,'Aloe Powder','Natural moisturizer, brightens skins and increases collagen production','images/ingredients/apples_eIqOvIp.jpg'),(3,'Avocado','Deeply moisturising, rich in nutrients and boosts collagen','images/ingredients/avacado_JE2ZOFN.png'),(4,'Baking Soda',NULL,'images/ingredients/apples_eIqOvIp.jpg'),(5,'Banana','Rich in vitamins, reduces fine lines revealing smoother skin','images/ingredients/apples_eIqOvIp.jpg'),(6,'Bergamot Peel Essential Oil',NULL,'images/ingredients/apples_eIqOvIp.jpg'),(7,'Besan','Tones, brightens and clarifies','images/ingredients/apples_eIqOvIp.jpg'),(8,'Blueberries','High in vitamin C, protects from free radicals','images/ingredients/apples_eIqOvIp.jpg'),(10,'Cacao','Fights free radicals revealing fresher, healthier skin','images/ingredients/apples_eIqOvIp.jpg'),(11,'Carrot',NULL,'images/ingredients/apples_eIqOvIp.jpg'),(12,'Carrots','Packed with antioxidants, adds glow','images/ingredients/apples_eIqOvIp.jpg'),(13,'Chamomile','A powerhouse herb that purifies and soothes your skin','images/ingredients/apples_eIqOvIp.jpg'),(14,'Coconut Milk',NULL,'images/ingredients/apples_eIqOvIp.jpg'),(15,'Coconut Water','Hydrating, nourishing and adds glow','images/ingredients/apples_eIqOvIp.jpg'),(16,'Coffee','Reduces cellulite providing smooth, bright and youthful glow','images/ingredients/apples_eIqOvIp.jpg'),(17,'Cucumber','Hydrates, calms and moisturizes the skin','images/ingredients/apples_eIqOvIp.jpg'),(18,'Egg White','Effective astringent that tightens skin and reduces pore size','images/ingredients/apples_eIqOvIp.jpg'),(19,'Egg Yolk',NULL,'images/ingredients/apples_eIqOvIp.jpg'),(20,'Fenugreek','Helps draw out toxins, repairs damaged cells and combats acne effectively','images/ingredients/apples_eIqOvIp.jpg'),(21,'Flax Seeds','Keeps skin hydrated and smooth, tightens large pores, anti aging and fights acne','images/ingredients/apples_eIqOvIp.jpg'),(22,'Goat Milk Powder','Hydrates, brightens and firms','images/ingredients/apples_eIqOvIp.jpg'),(23,'Lavender Oil','Nourishing and clarifiing. Antibacterial, antimicrobial, healing to skin','images/ingredients/apples_eIqOvIp.jpg'),(24,'Lemon Juice',NULL,'images/ingredients/apples_eIqOvIp.jpg'),(25,'Mangosteen','Anti-bacterial properties clears acne and soothes irritated skin','images/ingredients/apples_eIqOvIp.jpg'),(26,'Matcha','A powerful detoxifier, calming and soothing','images/ingredients/apples_eIqOvIp.jpg'),(27,'Mint','Nourishing, soothing with anti bacterial benefits','images/ingredients/apples_eIqOvIp.jpg'),(28,'Neem',NULL,'images/ingredients/apples_eIqOvIp.jpg'),(29,'Nutmeg','Lightens blemishes/scars with anti-inflammatory properties','images/ingredients/apples_eIqOvIp.jpg'),(30,'Oats','Gently exfoliates, hydrates and softens skin','images/ingredients/apples_eIqOvIp.jpg'),(31,'Orange Peel','Adds firmness and moisture to skin, clears clogged pores','images/ingredients/apples_eIqOvIp.jpg'),(32,'Papaya','Great for tired skin with powerful fruit enzymes','images/ingredients/apples_eIqOvIp.jpg'),(33,'Pomegranate','Packed with antioxidants and vitamins to make way for radiant skin','images/ingredients/apples_eIqOvIp.jpg'),(35,'Sandalwood Powder','Ancient ayurvedic secret that helps fight acne, blemishes & spots by absorbing excell oil from skin','images/ingredients/apples_eIqOvIp.jpg'),(36,'Silk Peptide','Silk proteins derived from raw silk help balance skin\'s moisture, giving it a silky glow','images/ingredients/apples_eIqOvIp.jpg'),(37,'Strawberry','Sloughs off dead cells making way for a brighter, fresh looking skin','images/ingredients/apples_eIqOvIp.jpg'),(38,'Trifala','Three fruits Amalaki, Haritaki and Bibhitaki with amplified effect when mixed. Balancing, detoxifying and nourishing','images/ingredients/apples_eIqOvIp.jpg'),(39,'Turmeric','Clarifies, anti aging properties','images/ingredients/apples_eIqOvIp.jpg'),(40,'White Willow Tree Bark','Natural exfoliant that helps combat acne and reduces inflammation','images/ingredients/apples_eIqOvIp.jpg'),(41,'Yogurt','','images/ingredients/apples_eIqOvIp.jpg');
/*!40000 ALTER TABLE `home_ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_item`
--

DROP TABLE IF EXISTS `home_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  `helper` varchar(1000) NOT NULL,
  `createdte` datetime(6) NOT NULL,
  `price` decimal(6,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_item`
--

LOCK TABLES `home_item` WRITE;
/*!40000 ALTER TABLE `home_item` DISABLE KEYS */;
INSERT INTO `home_item` VALUES (129,'CFP_026028032000','','2017-03-27 03:07:24.994910',29.99),(131,'CFP_026028032016','','2017-03-27 03:07:32.095672',19.99),(132,'CFP_014020022000','','2017-03-27 03:08:07.586312',26.99),(133,'CFP_014020022029','','2017-03-27 03:08:10.145012',29.99),(134,'CFP_028029035000','','2017-03-27 10:46:51.413048',15.99),(135,'CFP_028029035015','','2017-03-27 10:46:53.489502',20.99),(136,'CFP_015016021000','','2017-03-27 18:27:04.032975',22.99),(137,'CFP_015016021040','','2017-03-27 18:27:06.657596',22.99),(138,'CFP_015016021007','','2017-03-27 18:27:07.496383',23.99),(139,'CFP_016021022000','','2017-03-27 18:52:27.066678',19.99),(140,'CFP_016021022039','','2017-03-27 18:52:29.539129',19.99),(141,'CFP_016021022001','','2017-03-27 18:52:30.238399',27.99),(142,'CFP_016017023000','','2017-03-27 18:53:50.002101',21.99),(143,'CFP_015016021000','','2017-03-28 03:51:23.935391',16.99),(144,'CFP_015016021008','','2017-03-28 03:51:28.439908',22.99),(145,'CFP_015016021000','','2017-03-28 04:45:00.283714',14.99),(146,'CFP_015016021014','','2017-03-28 04:45:03.328184',18.99),(147,'CFP_015016021011','','2017-03-28 04:45:04.261432',13.99),(148,'CFP_015016021000','','2017-03-28 04:53:34.137722',25.99),(149,'CFP_015016021040','','2017-03-28 04:53:37.106732',23.99),(150,'CFP_015016022000','','2017-03-28 04:55:48.731136',28.99),(151,'CFP_015016022003','','2017-03-28 04:55:50.554542',19.99),(152,'CFP_015016022008','','2017-03-28 04:55:51.311517',15.99),(153,'CFP_016017023000','','2017-03-28 05:35:35.460304',26.99),(154,'CFP_001002008000','','2017-03-28 05:39:18.217137',17.99),(155,'CFP_001002008022','','2017-03-28 05:39:21.566639',27.99),(156,'CFP_015016021000','','2017-03-28 05:54:57.786770',27.99),(157,'CFP_016022023000','','2017-03-28 06:00:59.794820',13.99),(158,'CFP_016022023040','','2017-03-28 06:01:02.282464',19.99),(159,'CFP_003004005000','','2017-03-28 06:03:08.429195',29.99),(160,'CFP_015016021000','','2017-03-28 06:06:03.397107',19.99),(161,'CFP_003009010000','','2017-03-28 06:07:59.873887',16.99),(162,'CFP_015016021000','','2017-03-28 06:09:09.635690',20.99),(163,'CFP_015016022000','','2017-03-28 06:38:39.670222',23.99),(164,'CFP_016017023000','','2017-03-28 06:40:26.549356',13.99),(165,'CFP_016017023013','','2017-03-28 06:40:28.498070',17.99),(166,'CFP_003004010000','','2017-03-28 06:46:31.475058',16.99),(167,'CFP_003004010039','','2017-03-28 06:46:33.960381',15.99),(168,'CFP_003004010027','','2017-03-28 06:46:49.087069',15.99),(169,'CFP_003004010000','','2017-03-28 06:48:21.046285',24.99),(170,'CFP_003004010031','','2017-03-28 06:48:22.607702',26.99),(171,'CFP_003004010017','','2017-03-28 06:48:24.500026',27.99),(172,'CFP_029033034000','','2017-03-28 06:49:27.012951',29.99),(173,'CFP_029033034037','','2017-03-28 06:49:33.347655',20.99),(174,'CFP_028029035000','','2017-03-28 06:50:35.216708',27.99),(175,'CFP_003004011000','','2017-03-28 06:52:16.608860',13.99),(176,'CFP_003004011008','','2017-03-28 06:52:19.524945',16.99),(177,'CFP_003004011015','','2017-03-28 06:52:20.282499',27.99),(178,'CFP_003004011000','','2017-03-28 06:53:46.455706',23.99),(179,'CFP_003004011008','','2017-03-28 06:53:49.178485',27.99),(180,'CFP_003004011015','','2017-03-28 06:53:49.741673',24.99),(181,'CFP_015016023000','','2017-03-28 06:55:20.386128',16.99),(182,'CFP_015016023023','','2017-03-28 06:55:22.179316',18.99),(183,'CFP_016022024000','','2017-03-28 07:00:27.960384',25.99),(184,'CFP_016022024010','','2017-03-28 07:00:29.931441',22.99),(185,'CFP_028029034000','','2017-03-28 07:02:19.707137',26.99),(186,'CFP_015016022000','','2017-03-28 07:11:19.661505',17.99),(187,'CFP_016022023000','','2017-03-28 07:14:12.780159',28.99),(188,'CFP_016022023023','','2017-03-28 07:14:14.783029',13.99),(189,'CFP_027029033000','','2017-03-28 07:14:59.513396',20.99),(190,'CFP_027029033038','','2017-03-28 07:15:00.945009',28.99);
/*!40000 ALTER TABLE `home_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_mixingagent`
--

DROP TABLE IF EXISTS `home_mixingagent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_mixingagent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  `skin_type_id` int(11),
  `helper` varchar(1000),
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `f_skin_type_id_69320806_fk_facepackwizard_skintype_option_ptr_id` (`skin_type_id`),
  CONSTRAINT `f_skin_type_id_69320806_fk_facepackwizard_skintype_option_ptr_id` FOREIGN KEY (`skin_type_id`) REFERENCES `facepackwizard_skintype` (`option_ptr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_mixingagent`
--

LOCK TABLES `home_mixingagent` WRITE;
/*!40000 ALTER TABLE `home_mixingagent` DISABLE KEYS */;
INSERT INTO `home_mixingagent` VALUES (1,'Rose water',23,'Deeply moisturising, rich in nutrients and boosts collagen Deeply moisturising, rich in nutrients and boosts collagen Deeply moisturising, rich in nutrients and boosts collagen','images/mixing_agents/honey_UpPb9ng.jpg'),(2,'Aloe vera gel',25,'Deeply moisturising, rich in nutrients and boosts collagen Deeply moisturising, rich in nutrients and boosts collagen Deeply moisturising, rich in nutrients and boosts collagen','images/mixing_agents/honey_pem83R4.jpg'),(3,'Cucumber gel',25,'Deeply moisturising, rich in nutrients and boosts collagen Deeply moisturising, rich in nutrients and boosts collagen Deeply moisturising, rich in nutrients and boosts collagen','images/mixing_agents/honey_ITD39RV.jpg'),(4,'Honey',24,'Natural Humectant, makes skin soft supple and hydrated','images/mixing_agents/honey_cfB6sTS.jpg'),(5,'Honey',25,'Natural Humectant, makes skin soft supple and hydrated','images/mixing_agents/honey.jpg');
/*!40000 ALTER TABLE `home_mixingagent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_prepack`
--

DROP TABLE IF EXISTS `home_prepack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_prepack` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facepack_id` int(11) NOT NULL,
  `ingredient_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `home_prepack_facepack_id_e5afc497_fk_home_facepack_item_ptr_id` (`facepack_id`),
  KEY `home_prepack_ingredient_id_f47124a7_fk_home_ingredient_id` (`ingredient_id`),
  CONSTRAINT `home_prepack_facepack_id_e5afc497_fk_home_facepack_item_ptr_id` FOREIGN KEY (`facepack_id`) REFERENCES `home_facepack` (`item_ptr_id`),
  CONSTRAINT `home_prepack_ingredient_id_f47124a7_fk_home_ingredient_id` FOREIGN KEY (`ingredient_id`) REFERENCES `home_ingredient` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_prepack`
--

LOCK TABLES `home_prepack` WRITE;
/*!40000 ALTER TABLE `home_prepack` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_prepack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_recipe`
--

DROP TABLE IF EXISTS `home_recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_recipe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mandatory_ingredient_id` int(11) NOT NULL,
  `skin_concern_id` int(11) NOT NULL,
  `skin_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `D4f283763afac08bf883b67606cf515f` (`mandatory_ingredient_id`),
  KEY `a171dab0dba8828cd73064dbe8f1039e` (`skin_concern_id`),
  KEY `f_skin_type_id_55b9f863_fk_facepackwizard_skintype_option_ptr_id` (`skin_type_id`),
  CONSTRAINT `D4f283763afac08bf883b67606cf515f` FOREIGN KEY (`mandatory_ingredient_id`) REFERENCES `home_ingredient` (`id`),
  CONSTRAINT `a171dab0dba8828cd73064dbe8f1039e` FOREIGN KEY (`skin_concern_id`) REFERENCES `facepackwizard_skinconcern` (`option_ptr_id`),
  CONSTRAINT `f_skin_type_id_55b9f863_fk_facepackwizard_skintype_option_ptr_id` FOREIGN KEY (`skin_type_id`) REFERENCES `facepackwizard_skintype` (`option_ptr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_recipe`
--

LOCK TABLES `home_recipe` WRITE;
/*!40000 ALTER TABLE `home_recipe` DISABLE KEYS */;
INSERT INTO `home_recipe` VALUES (1,31,30,23),(2,40,31,23),(3,20,32,23),(4,38,33,23),(5,12,34,23),(6,26,35,23),(7,17,36,23),(8,15,37,23),(9,18,38,23),(10,30,39,23),(11,27,40,23),(12,35,41,23),(13,30,30,24),(14,7,31,24),(15,37,32,24),(16,35,33,24),(17,3,34,24),(18,13,35,24),(19,5,36,24),(20,22,37,24),(21,16,38,24),(22,32,39,24),(23,29,40,24),(24,7,41,24),(25,10,30,25),(26,8,31,25),(27,21,32,25),(28,25,33,25),(29,16,34,25),(30,17,35,25),(31,2,36,25),(32,15,37,25),(33,18,38,25),(34,33,39,25),(35,27,40,25),(36,29,41,25);
/*!40000 ALTER TABLE `home_recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments_payment`
--

DROP TABLE IF EXISTS `payments_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdte` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(1000) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `payments_payment_user_id_f9db060a_fk_auth_user_id` (`user_id`),
  KEY `payments_payment_shipping_id_e428d0e0_fk_payments_shipping_id` (`shipping_id`),
  CONSTRAINT `payments_payment_shipping_id_e428d0e0_fk_payments_shipping_id` FOREIGN KEY (`shipping_id`) REFERENCES `payments_shipping` (`id`),
  CONSTRAINT `payments_payment_user_id_f9db060a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments_payment`
--

LOCK TABLES `payments_payment` WRITE;
/*!40000 ALTER TABLE `payments_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments_purchasehistory`
--

DROP TABLE IF EXISTS `payments_purchasehistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments_purchasehistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `payments_purchasehistory_item_id_1ac80778_fk_home_item_id` (`item_id`),
  KEY `payments_purchasehist_payment_id_a8ecb1e9_fk_payments_payment_id` (`payment_id`),
  CONSTRAINT `payments_purchasehist_payment_id_a8ecb1e9_fk_payments_payment_id` FOREIGN KEY (`payment_id`) REFERENCES `payments_payment` (`id`),
  CONSTRAINT `payments_purchasehistory_item_id_1ac80778_fk_home_item_id` FOREIGN KEY (`item_id`) REFERENCES `home_item` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments_purchasehistory`
--

LOCK TABLES `payments_purchasehistory` WRITE;
/*!40000 ALTER TABLE `payments_purchasehistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments_purchasehistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments_shipping`
--

DROP TABLE IF EXISTS `payments_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments_shipping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(1000) NOT NULL,
  `cost` decimal(6,2) NOT NULL,
  `helper` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments_shipping`
--

LOCK TABLES `payments_shipping` WRITE;
/*!40000 ALTER TABLE `payments_shipping` DISABLE KEYS */;
INSERT INTO `payments_shipping` VALUES (1,'1 business day',12.99,'One day shipping is not available for PO boxes. Orders placed before 12 PM (ET) On Mon-Fri will ship same day'),(2,'2 business days',9.99,'Two business day shipping will be standard air mail. Orders received before 12 PM (ET) will ship the same day'),(3,'3-5 business days',7.99,'Priority mail USPS will be used. Orders placed before 12PM (ET) will be shipped the same day'),(4,'7-10 business days',4.99,'Standard USPS mail');
/*!40000 ALTER TABLE `payments_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_association`
--

DROP TABLE IF EXISTS `social_auth_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_association_server_url_078befa2_uniq` (`server_url`,`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_association`
--

LOCK TABLES `social_auth_association` WRITE;
/*!40000 ALTER TABLE `social_auth_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_code`
--

DROP TABLE IF EXISTS `social_auth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `code` varchar(32) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_code_email_801b2d02_uniq` (`email`,`code`),
  KEY `social_auth_code_c1336794` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_code`
--

LOCK TABLES `social_auth_code` WRITE;
/*!40000 ALTER TABLE `social_auth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_nonce`
--

DROP TABLE IF EXISTS `social_auth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_nonce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(65) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_nonce_server_url_f6284463_uniq` (`server_url`,`timestamp`,`salt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_nonce`
--

LOCK TABLES `social_auth_nonce` WRITE;
/*!40000 ALTER TABLE `social_auth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_usersocialauth`
--

DROP TABLE IF EXISTS `social_auth_usersocialauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_usersocialauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider` varchar(32) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_usersocialauth_provider_e6b5e668_uniq` (`provider`,`uid`),
  KEY `social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id` (`user_id`),
  CONSTRAINT `social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_usersocialauth`
--

LOCK TABLES `social_auth_usersocialauth` WRITE;
/*!40000 ALTER TABLE `social_auth_usersocialauth` DISABLE KEYS */;
INSERT INTO `social_auth_usersocialauth` VALUES (41,'facebook','10102534254770084','{\"access_token\": \"EAABn4Jjpp78BAI8QkKZAY8Ww88xNbflG6631qbQiiOKjC9pY1eUkBwAi9K62mCxDMnQogb9P5C3AjswYAyEDqxiagbtDyZAD1Trh6kZCJ6iN0u36rfTERDg2hL6Q8C3nmerADjFlxNsPpUmPPAupOm0CHC4vdkZD\", \"expires\": null, \"token_type\": null, \"id\": \"10102534254770084\"}',2);
/*!40000 ALTER TABLE `social_auth_usersocialauth` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-28  0:20:14