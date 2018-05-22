-- MySQL dump 10.13  Distrib 5.7.19, for Win64 (x86_64)
--
-- Host: localhost    Database: overcooked
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
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
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
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
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add food_ class',7,'add_food_class'),(20,'Can change food_ class',7,'change_food_class'),(21,'Can delete food_ class',7,'delete_food_class'),(22,'Can add food',8,'add_food'),(23,'Can change food',8,'change_food'),(24,'Can delete food',8,'delete_food'),(25,'Can add food type',9,'add_foodtype'),(26,'Can change food type',9,'change_foodtype'),(27,'Can delete food type',9,'delete_foodtype'),(28,'Can add food',10,'add_food'),(29,'Can change food',10,'change_food'),(30,'Can delete food',10,'delete_food'),(31,'Can add order',11,'add_order'),(32,'Can change order',11,'change_order'),(33,'Can delete order',11,'delete_order'),(34,'Can add detail',12,'add_detail'),(35,'Can change detail',12,'change_detail'),(36,'Can delete detail',12,'delete_detail'),(37,'Can add station',13,'add_station'),(38,'Can change station',13,'change_station'),(39,'Can delete station',13,'delete_station'),(40,'Can add employee',14,'add_employee'),(41,'Can change employee',14,'change_employee'),(42,'Can delete employee',14,'delete_employee'),(43,'Can add distribute',15,'add_distribute'),(44,'Can change distribute',15,'change_distribute'),(45,'Can delete distribute',15,'delete_distribute'),(46,'Can add job',16,'add_job'),(47,'Can change job',16,'change_job'),(48,'Can delete job',16,'delete_job'),(49,'Can add capacity',17,'add_capacity'),(50,'Can change capacity',17,'change_capacity'),(51,'Can delete capacity',17,'delete_capacity');
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
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$100000$jmwFzQM3dWDe$VKJKDhk1KRUBvtIPfWTpESEZx9V9pUJUvw/TVuGiR5s=','2018-05-08 09:35:33.800721',1,'admin','','','lw390937635@163.com',1,1,'2018-04-16 14:23:59.695811'),(3,'pbkdf2_sha256$100000$FHspz9AdbSS2$0A+xpO0FSq9hnR/7B1jaQkJA4d+LQO3tU3uUZ7Qw0hQ=','2018-05-07 13:24:56.941524',0,'user0000','','','',0,1,'2018-05-07 10:36:10.768793');
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
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
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
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
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
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-05-07 04:49:34.911843','2','slw',1,'[{\"added\": {}}]',4,1),(2,'2018-05-07 04:56:59.777296','2','slw',3,'',4,1);
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
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(12,'foreground','detail'),(10,'foreground','food'),(9,'foreground','foodtype'),(11,'foreground','order'),(17,'kitchen','capacity'),(13,'kitchen','station'),(8,'mis','food'),(7,'mis','food_class'),(15,'personnel','distribute'),(14,'personnel','employee'),(16,'personnel','job'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-04-08 12:35:25.998269'),(2,'auth','0001_initial','2018-04-08 12:35:27.078781'),(3,'admin','0001_initial','2018-04-08 12:35:27.345429'),(4,'admin','0002_logentry_remove_auto_add','2018-04-08 12:35:27.356436'),(5,'contenttypes','0002_remove_content_type_name','2018-04-08 12:35:27.547019'),(6,'auth','0002_alter_permission_name_max_length','2018-04-08 12:35:27.645423'),(7,'auth','0003_alter_user_email_max_length','2018-04-08 12:35:27.741942'),(8,'auth','0004_alter_user_username_opts','2018-04-08 12:35:27.754814'),(9,'auth','0005_alter_user_last_login_null','2018-04-08 12:35:27.839745'),(10,'auth','0006_require_contenttypes_0002','2018-04-08 12:35:27.844249'),(11,'auth','0007_alter_validators_add_error_messages','2018-04-08 12:35:27.855258'),(12,'auth','0008_alter_user_username_max_length','2018-04-08 12:35:28.032080'),(13,'auth','0009_alter_user_last_name_max_length','2018-04-08 12:35:28.122704'),(14,'sessions','0001_initial','2018-04-08 12:35:28.193062'),(15,'mis','0001_initial','2018-04-16 14:21:18.684138'),(16,'foreground','0001_initial','2018-05-07 15:33:44.062049'),(17,'foreground','0002_auto_20180507_2336','2018-05-07 15:36:34.050516'),(18,'foreground','0003_auto_20180508_1726','2018-05-08 09:26:25.169797'),(19,'foreground','0004_remove_order_foods','2018-05-08 09:28:31.509515'),(20,'foreground','0005_auto_20180508_2132','2018-05-08 13:32:58.096176'),(21,'foreground','0006_auto_20180514_1111','2018-05-14 03:11:12.956456'),(22,'personnel','0001_initial','2018-05-14 05:29:31.623095'),(23,'kitchen','0001_initial','2018-05-14 05:29:31.834701'),(24,'kitchen','0002_auto_20180514_1335','2018-05-14 05:35:57.006914');
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
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('49yhpu5z5tz2drntk4k2sbxhbfqsosys','M2U5YjcwMGFlOTVlZWRiNzViYjU1NTIxZjVlODA1NmY0MjY5NzIwMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MjkwOTA4ODdiYjBjYjI1MDU2OGFmNjg4ZjFkYjY2ZjcyMGY1MThiIn0=','2018-05-21 05:45:17.684849'),('9k5n5l47sjc3juvupf500nsyno9fagz9','M2U5YjcwMGFlOTVlZWRiNzViYjU1NTIxZjVlODA1NmY0MjY5NzIwMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MjkwOTA4ODdiYjBjYjI1MDU2OGFmNjg4ZjFkYjY2ZjcyMGY1MThiIn0=','2018-05-22 09:35:33.816346'),('ddw35r48xo7vtpodnwjr7gbuzq6b9yqt','ZTE1NTdhZjYyMmIyYmVmZmJjMDVkNDMxZTUxYTgwZWMyYzVmYzlmODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZmMwZTk4MTRkMzhkYTAwZWZiMDc1ZGI3NDBmOTUwNzU5ZmEwMjU3In0=','2018-04-30 14:25:52.307492'),('zqbcrhg9ywvq0ko50dnvzntn1i0vr3bq','M2U5YjcwMGFlOTVlZWRiNzViYjU1NTIxZjVlODA1NmY0MjY5NzIwMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MjkwOTA4ODdiYjBjYjI1MDU2OGFmNjg4ZjFkYjY2ZjcyMGY1MThiIn0=','2018-05-21 11:19:21.336975');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foreground_detail`
--

DROP TABLE IF EXISTS `foreground_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foreground_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mark` varchar(300) DEFAULT NULL,
  `state` varchar(8) NOT NULL,
  `food_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `foreground_detail_food_id_746c3dbb_fk_foreground_food_id` (`food_id`),
  KEY `foreground_detail_order_id_4cc6e68c_fk_foreground_order_id` (`order_id`),
  CONSTRAINT `foreground_detail_food_id_746c3dbb_fk_foreground_food_id` FOREIGN KEY (`food_id`) REFERENCES `foreground_food` (`id`),
  CONSTRAINT `foreground_detail_order_id_4cc6e68c_fk_foreground_order_id` FOREIGN KEY (`order_id`) REFERENCES `foreground_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foreground_detail`
--

LOCK TABLES `foreground_detail` WRITE;
/*!40000 ALTER TABLE `foreground_detail` DISABLE KEYS */;
INSERT INTO `foreground_detail` VALUES (5,'','未分配',1,7),(6,'中辣','未分配',2,7),(7,'','未分配',3,7),(8,'','未分配',3,7),(9,'','未分配',1,8),(10,'中辣','未分配',2,8),(11,'','未分配',3,8),(12,'','未分配',3,8);
/*!40000 ALTER TABLE `foreground_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foreground_food`
--

DROP TABLE IF EXISTS `foreground_food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foreground_food` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `describe` varchar(300) NOT NULL,
  `image` varchar(300) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `foreground_food_type_id_4658cddb_fk_foreground_foodtype_id` (`type_id`),
  CONSTRAINT `foreground_food_type_id_4658cddb_fk_foreground_foodtype_id` FOREIGN KEY (`type_id`) REFERENCES `foreground_foodtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foreground_food`
--

LOCK TABLES `foreground_food` WRITE;
/*!40000 ALTER TABLE `foreground_food` DISABLE KEYS */;
INSERT INTO `foreground_food` VALUES (1,'鱼香肉丝','-','-',11.50,1),(2,'宫保鸡丁','-','-',12.50,1),(3,'鸭血汤','-','-',9.00,2);
/*!40000 ALTER TABLE `foreground_food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foreground_foodtype`
--

DROP TABLE IF EXISTS `foreground_foodtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foreground_foodtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foreground_foodtype`
--

LOCK TABLES `foreground_foodtype` WRITE;
/*!40000 ALTER TABLE `foreground_foodtype` DISABLE KEYS */;
INSERT INTO `foreground_foodtype` VALUES (1,'汤'),(2,'炒菜');
/*!40000 ALTER TABLE `foreground_foodtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foreground_order`
--

DROP TABLE IF EXISTS `foreground_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foreground_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(16) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `guest` varchar(32) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `date` time(6) NOT NULL,
  `state` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foreground_order`
--

LOCK TABLES `foreground_order` WRITE;
/*!40000 ALTER TABLE `foreground_order` DISABLE KEYS */;
INSERT INTO `foreground_order` VALUES (7,'堂吃',112.50,'','','','11:13:57.440820',''),(8,'配送',112.50,'霸气浣熊','17621192758','上海海事大学59号楼','11:17:43.099194','');
/*!40000 ALTER TABLE `foreground_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kitchen_capacity`
--

DROP TABLE IF EXISTS `kitchen_capacity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kitchen_capacity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` double NOT NULL,
  `food_id` int(11) NOT NULL,
  `station_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kitchen_capacity_food_id_8e4be3f3_fk_foreground_food_id` (`food_id`),
  KEY `kitchen_capacity_station_id_c94626d9_fk_kitchen_station_id` (`station_id`),
  CONSTRAINT `kitchen_capacity_food_id_8e4be3f3_fk_foreground_food_id` FOREIGN KEY (`food_id`) REFERENCES `foreground_food` (`id`),
  CONSTRAINT `kitchen_capacity_station_id_c94626d9_fk_kitchen_station_id` FOREIGN KEY (`station_id`) REFERENCES `kitchen_station` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kitchen_capacity`
--

LOCK TABLES `kitchen_capacity` WRITE;
/*!40000 ALTER TABLE `kitchen_capacity` DISABLE KEYS */;
/*!40000 ALTER TABLE `kitchen_capacity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kitchen_station`
--

DROP TABLE IF EXISTS `kitchen_station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kitchen_station` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `charger_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kitchen_station_charger_id_5ca75132_fk_personnel_employee_id` (`charger_id`),
  CONSTRAINT `kitchen_station_charger_id_5ca75132_fk_personnel_employee_id` FOREIGN KEY (`charger_id`) REFERENCES `personnel_employee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kitchen_station`
--

LOCK TABLES `kitchen_station` WRITE;
/*!40000 ALTER TABLE `kitchen_station` DISABLE KEYS */;
/*!40000 ALTER TABLE `kitchen_station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personnel_distribute`
--

DROP TABLE IF EXISTS `personnel_distribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personnel_distribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` varchar(300) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `personnel_distribute_employee_id_059ccb92_fk_personnel` (`employee_id`),
  KEY `personnel_distribute_job_id_ae93ed17_fk_personnel_job_id` (`job_id`),
  CONSTRAINT `personnel_distribute_employee_id_059ccb92_fk_personnel` FOREIGN KEY (`employee_id`) REFERENCES `personnel_employee` (`id`),
  CONSTRAINT `personnel_distribute_job_id_ae93ed17_fk_personnel_job_id` FOREIGN KEY (`job_id`) REFERENCES `personnel_job` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnel_distribute`
--

LOCK TABLES `personnel_distribute` WRITE;
/*!40000 ALTER TABLE `personnel_distribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `personnel_distribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personnel_employee`
--

DROP TABLE IF EXISTS `personnel_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personnel_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `phone` varchar(4) NOT NULL,
  `performance` int(11) DEFAULT NULL,
  `salary` decimal(16,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnel_employee`
--

LOCK TABLES `personnel_employee` WRITE;
/*!40000 ALTER TABLE `personnel_employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `personnel_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personnel_job`
--

DROP TABLE IF EXISTS `personnel_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personnel_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `salary` decimal(16,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnel_job`
--

LOCK TABLES `personnel_job` WRITE;
/*!40000 ALTER TABLE `personnel_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `personnel_job` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-14 17:57:46
