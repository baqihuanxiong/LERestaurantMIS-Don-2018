-- MySQL dump 10.13  Distrib 5.7.19, for Win64 (x86_64)
--
-- Host: localhost    Database: OverCooked
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add food_ class',7,'add_food_class'),(20,'Can change food_ class',7,'change_food_class'),(21,'Can delete food_ class',7,'delete_food_class'),(22,'Can add food',8,'add_food'),(23,'Can change food',8,'change_food'),(24,'Can delete food',8,'delete_food'),(25,'Can add food type',9,'add_foodtype'),(26,'Can change food type',9,'change_foodtype'),(27,'Can delete food type',9,'delete_foodtype'),(28,'Can add food',10,'add_food'),(29,'Can change food',10,'change_food'),(30,'Can delete food',10,'delete_food'),(31,'Can add order',11,'add_order'),(32,'Can change order',11,'change_order'),(33,'Can delete order',11,'delete_order'),(34,'Can add detail',12,'add_detail'),(35,'Can change detail',12,'change_detail'),(36,'Can delete detail',12,'delete_detail'),(37,'Can add station',13,'add_station'),(38,'Can change station',13,'change_station'),(39,'Can delete station',13,'delete_station'),(40,'Can add employee',14,'add_employee'),(41,'Can change employee',14,'change_employee'),(42,'Can delete employee',14,'delete_employee'),(43,'Can add distribute',15,'add_distribute'),(44,'Can change distribute',15,'change_distribute'),(45,'Can delete distribute',15,'delete_distribute'),(46,'Can add job',16,'add_job'),(47,'Can change job',16,'change_job'),(48,'Can delete job',16,'delete_job'),(49,'Can add capacity',17,'add_capacity'),(50,'Can change capacity',17,'change_capacity'),(51,'Can delete capacity',17,'delete_capacity'),(52,'Can add prepare',18,'add_prepare'),(53,'Can change prepare',18,'change_prepare'),(54,'Can delete prepare',18,'delete_prepare'),(55,'Can add junk',19,'add_junk'),(56,'Can change junk',19,'change_junk'),(57,'Can delete junk',19,'delete_junk'),(58,'Can add entry',20,'add_entry'),(59,'Can change entry',20,'change_entry'),(60,'Can delete entry',20,'delete_entry'),(61,'Can add material',21,'add_material'),(62,'Can change material',21,'change_material'),(63,'Can delete material',21,'delete_material'),(64,'Can add bom',22,'add_bom'),(65,'Can change bom',22,'change_bom'),(66,'Can delete bom',22,'delete_bom'),(67,'Can add entry sheet',23,'add_entrysheet'),(68,'Can change entry sheet',23,'change_entrysheet'),(69,'Can delete entry sheet',23,'delete_entrysheet'),(70,'Can add storage',24,'add_storage'),(71,'Can change storage',24,'change_storage'),(72,'Can delete storage',24,'delete_storage'),(73,'Can add purchase',25,'add_purchase'),(74,'Can change purchase',25,'change_purchase'),(75,'Can delete purchase',25,'delete_purchase'),(76,'Can add delivery sheet',26,'add_deliverysheet'),(77,'Can change delivery sheet',26,'change_deliverysheet'),(78,'Can delete delivery sheet',26,'delete_deliverysheet'),(79,'Can add delivery',27,'add_delivery'),(80,'Can change delivery',27,'change_delivery'),(81,'Can delete delivery',27,'delete_delivery'),(82,'Can add supplier',28,'add_supplier'),(83,'Can change supplier',28,'change_supplier'),(84,'Can delete supplier',28,'delete_supplier'),(85,'Can add delivery detail',23,'add_deliverydetail'),(86,'Can change delivery detail',23,'change_deliverydetail'),(87,'Can delete delivery detail',23,'delete_deliverydetail'),(88,'Can add entry detail',26,'add_entrydetail'),(89,'Can change entry detail',26,'change_entrydetail'),(90,'Can delete entry detail',26,'delete_entrydetail'),(91,'Can add purchase detail',29,'add_purchasedetail'),(92,'Can change purchase detail',29,'change_purchasedetail'),(93,'Can delete purchase detail',29,'delete_purchasedetail');
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
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$100000$jmwFzQM3dWDe$VKJKDhk1KRUBvtIPfWTpESEZx9V9pUJUvw/TVuGiR5s=','2018-05-26 19:51:54.413786',1,'admin','','','lw390937635@163.com',1,1,'2018-04-16 14:23:59.695811'),(3,'pbkdf2_sha256$100000$FHspz9AdbSS2$0A+xpO0FSq9hnR/7B1jaQkJA4d+LQO3tU3uUZ7Qw0hQ=','2018-05-07 13:24:56.941524',0,'user0000','','','',0,1,'2018-05-07 10:36:10.768793');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(12,'foreground','detail'),(10,'foreground','food'),(9,'foreground','foodtype'),(11,'foreground','order'),(17,'kitchen','capacity'),(18,'kitchen','prepare'),(13,'kitchen','station'),(8,'mis','food'),(7,'mis','food_class'),(15,'personnel','distribute'),(14,'personnel','employee'),(16,'personnel','job'),(6,'sessions','session'),(22,'warehouse','bom'),(27,'warehouse','delivery'),(23,'warehouse','deliverydetail'),(20,'warehouse','entry'),(26,'warehouse','entrydetail'),(19,'warehouse','junk'),(21,'warehouse','material'),(25,'warehouse','purchase'),(29,'warehouse','purchasedetail'),(24,'warehouse','storage'),(28,'warehouse','supplier');
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-04-08 12:35:25.998269'),(2,'auth','0001_initial','2018-04-08 12:35:27.078781'),(3,'admin','0001_initial','2018-04-08 12:35:27.345429'),(4,'admin','0002_logentry_remove_auto_add','2018-04-08 12:35:27.356436'),(5,'contenttypes','0002_remove_content_type_name','2018-04-08 12:35:27.547019'),(6,'auth','0002_alter_permission_name_max_length','2018-04-08 12:35:27.645423'),(7,'auth','0003_alter_user_email_max_length','2018-04-08 12:35:27.741942'),(8,'auth','0004_alter_user_username_opts','2018-04-08 12:35:27.754814'),(9,'auth','0005_alter_user_last_login_null','2018-04-08 12:35:27.839745'),(10,'auth','0006_require_contenttypes_0002','2018-04-08 12:35:27.844249'),(11,'auth','0007_alter_validators_add_error_messages','2018-04-08 12:35:27.855258'),(12,'auth','0008_alter_user_username_max_length','2018-04-08 12:35:28.032080'),(13,'auth','0009_alter_user_last_name_max_length','2018-04-08 12:35:28.122704'),(14,'sessions','0001_initial','2018-04-08 12:35:28.193062'),(15,'mis','0001_initial','2018-04-16 14:21:18.684138'),(16,'foreground','0001_initial','2018-05-07 15:33:44.062049'),(17,'foreground','0002_auto_20180507_2336','2018-05-07 15:36:34.050516'),(18,'foreground','0003_auto_20180508_1726','2018-05-08 09:26:25.169797'),(19,'foreground','0004_remove_order_foods','2018-05-08 09:28:31.509515'),(20,'foreground','0005_auto_20180508_2132','2018-05-08 13:32:58.096176'),(21,'foreground','0006_auto_20180514_1111','2018-05-14 03:11:12.956456'),(22,'personnel','0001_initial','2018-05-14 05:29:31.623095'),(23,'kitchen','0001_initial','2018-05-14 05:29:31.834701'),(24,'kitchen','0002_auto_20180514_1335','2018-05-14 05:35:57.006914'),(25,'personnel','0002_auto_20180514_2040','2018-05-14 12:40:48.856733'),(26,'foreground','0007_food_available','2018-05-14 13:34:33.565252'),(27,'kitchen','0003_prepare','2018-05-16 00:30:05.947412'),(28,'kitchen','0004_auto_20180516_0930','2018-05-16 01:30:10.182684'),(29,'foreground','0008_detail_station','2018-05-16 01:46:14.412033'),(30,'kitchen','0005_auto_20180516_0949','2018-05-16 01:49:10.768618'),(31,'foreground','0009_auto_20180520_0225','2018-05-19 18:26:16.117562'),(32,'foreground','0010_auto_20180521_2326','2018-05-21 15:26:12.179915'),(33,'foreground','0011_auto_20180527_1507','2018-05-27 15:07:33.059364'),(34,'foreground','0012_food_score','2018-05-27 22:10:42.349687'),(37,'warehouse','0001_initial','2018-05-29 18:10:46.202131'),(38,'foreground','0013_food_material','2018-05-29 18:10:46.233399'),(39,'warehouse','0002_auto_20180529_1813','2018-05-29 18:13:34.544095'),(40,'warehouse','0003_purchasedetail_left','2018-05-29 20:24:27.865922'),(41,'personnel','0003_employee_account','2018-05-30 12:07:31.758286'),(42,'warehouse','0004_auto_20180530_2005','2018-05-30 20:06:01.263496'),(43,'warehouse','0005_purchase_term','2018-05-30 23:33:27.226431');
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
INSERT INTO `django_session` VALUES ('49yhpu5z5tz2drntk4k2sbxhbfqsosys','M2U5YjcwMGFlOTVlZWRiNzViYjU1NTIxZjVlODA1NmY0MjY5NzIwMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MjkwOTA4ODdiYjBjYjI1MDU2OGFmNjg4ZjFkYjY2ZjcyMGY1MThiIn0=','2018-05-21 05:45:17.684849'),('4nyiz79e3fplkhavlwdtbgbo4o56rpxw','M2U5YjcwMGFlOTVlZWRiNzViYjU1NTIxZjVlODA1NmY0MjY5NzIwMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MjkwOTA4ODdiYjBjYjI1MDU2OGFmNjg4ZjFkYjY2ZjcyMGY1MThiIn0=','2018-06-09 00:05:58.885025'),('94mwesy2ppqhi96gbtpf07umgtjtlbh4','M2U5YjcwMGFlOTVlZWRiNzViYjU1NTIxZjVlODA1NmY0MjY5NzIwMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MjkwOTA4ODdiYjBjYjI1MDU2OGFmNjg4ZjFkYjY2ZjcyMGY1MThiIn0=','2018-06-09 00:04:15.157805'),('9k5n5l47sjc3juvupf500nsyno9fagz9','M2U5YjcwMGFlOTVlZWRiNzViYjU1NTIxZjVlODA1NmY0MjY5NzIwMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MjkwOTA4ODdiYjBjYjI1MDU2OGFmNjg4ZjFkYjY2ZjcyMGY1MThiIn0=','2018-05-22 09:35:33.816346'),('ddw35r48xo7vtpodnwjr7gbuzq6b9yqt','ZTE1NTdhZjYyMmIyYmVmZmJjMDVkNDMxZTUxYTgwZWMyYzVmYzlmODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZmMwZTk4MTRkMzhkYTAwZWZiMDc1ZGI3NDBmOTUwNzU5ZmEwMjU3In0=','2018-04-30 14:25:52.307492'),('fom9s3o3kp1v99sdt2v24ufalite7i4u','M2U5YjcwMGFlOTVlZWRiNzViYjU1NTIxZjVlODA1NmY0MjY5NzIwMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MjkwOTA4ODdiYjBjYjI1MDU2OGFmNjg4ZjFkYjY2ZjcyMGY1MThiIn0=','2018-06-05 18:48:25.642543'),('lohxfa5ephql7t1aahdze7rwsnxhxsar','M2U5YjcwMGFlOTVlZWRiNzViYjU1NTIxZjVlODA1NmY0MjY5NzIwMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MjkwOTA4ODdiYjBjYjI1MDU2OGFmNjg4ZjFkYjY2ZjcyMGY1MThiIn0=','2018-06-09 19:51:54.418766'),('mjvycljm3zqsc88oogrwsh685acjg57a','M2U5YjcwMGFlOTVlZWRiNzViYjU1NTIxZjVlODA1NmY0MjY5NzIwMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MjkwOTA4ODdiYjBjYjI1MDU2OGFmNjg4ZjFkYjY2ZjcyMGY1MThiIn0=','2018-06-06 21:22:28.343472'),('r0om0j0p14geyke8hzxfruj9xohdw20c','M2U5YjcwMGFlOTVlZWRiNzViYjU1NTIxZjVlODA1NmY0MjY5NzIwMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MjkwOTA4ODdiYjBjYjI1MDU2OGFmNjg4ZjFkYjY2ZjcyMGY1MThiIn0=','2018-06-06 19:42:55.427115');
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
  `station_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `foreground_detail_food_id_746c3dbb_fk_foreground_food_id` (`food_id`),
  KEY `foreground_detail_order_id_4cc6e68c_fk_foreground_order_id` (`order_id`),
  KEY `foreground_detail_station_id_bf06b9f2_fk_kitchen_station_id` (`station_id`),
  CONSTRAINT `foreground_detail_food_id_746c3dbb_fk_foreground_food_id` FOREIGN KEY (`food_id`) REFERENCES `foreground_food` (`id`),
  CONSTRAINT `foreground_detail_order_id_4cc6e68c_fk_foreground_order_id` FOREIGN KEY (`order_id`) REFERENCES `foreground_order` (`id`),
  CONSTRAINT `foreground_detail_station_id_bf06b9f2_fk_kitchen_station_id` FOREIGN KEY (`station_id`) REFERENCES `kitchen_station` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foreground_detail`
--

LOCK TABLES `foreground_detail` WRITE;
/*!40000 ALTER TABLE `foreground_detail` DISABLE KEYS */;
INSERT INTO `foreground_detail` VALUES (181,'','已完成',1,41,2),(182,'','已分配',6,41,4),(183,'','已分配',17,41,6),(184,'','已分配',1,42,1),(185,'','已分配',3,42,8),(186,'','已分配',6,42,4),(187,'','已分配',13,43,10),(188,'','已分配',14,43,2),(189,'','未分配',6,44,4),(190,'','已分配',7,44,3),(191,'','已分配',8,44,6),(192,'','已分配',7,45,1),(193,'','已分配',10,45,3),(194,'','已分配',16,45,2),(195,'','已分配',3,46,9),(196,'','已分配',5,46,5),(197,'','未分配',6,46,4),(198,'','已分配',12,46,2),(199,'','已分配',18,46,10),(200,'不要辣','未分配',18,47,10),(201,'','已分配',9,48,7),(202,'','已分配',3,49,7),(203,'','未分配',6,49,4),(204,'','未分配',11,49,6),(205,'','已分配',4,50,5),(206,'','已分配',19,50,5),(207,'','已分配',3,51,9),(208,'','未分配',15,51,2),(209,'','未分配',6,52,4),(210,'','未分配',8,52,3),(211,'','未分配',11,52,6),(212,'','未分配',2,53,3),(213,'','已分配',3,53,8),(214,'','未分配',5,53,1),(215,'','未分配',6,53,4),(216,'打包','未分配',13,53,10),(217,'','未分配',13,54,10),(218,'','未分配',18,54,10);
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
  `available` tinyint(1) NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `foreground_food_type_id_4658cddb_fk_foreground_foodtype_id` (`type_id`),
  CONSTRAINT `foreground_food_type_id_4658cddb_fk_foreground_foodtype_id` FOREIGN KEY (`type_id`) REFERENCES `foreground_foodtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foreground_food`
--

LOCK TABLES `foreground_food` WRITE;
/*!40000 ALTER TABLE `foreground_food` DISABLE KEYS */;
INSERT INTO `foreground_food` VALUES (1,'鱼香肉丝','','',13.50,2,1,0),(2,'宫保鸡丁','','',13.50,2,1,0),(3,'鸭血汤','','',9.00,1,1,0),(4,'红烧肉','','',18.00,3,1,0),(5,'腊鸡腿','','',12.50,3,1,0),(6,'米饭','','',1.00,5,1,0),(7,'番茄炒蛋','','',8.50,2,1,0),(8,'凉拌干丝','','',7.50,4,1,0),(9,'番茄鸡蛋面','','',10.50,6,1,0),(10,'白斩鸡（中）','','',16.80,4,1,0),(11,'白斩鸡（大）','','',19.80,4,1,0),(12,'虎皮尖椒','','',7.80,2,1,0),(13,'小笼包','','',11.00,7,1,0),(14,'土豆焖饭','','',17.00,5,1,0),(15,'蛋包饭','','',16.50,5,1,0),(16,'咖喱饭','','',17.80,5,1,0),(17,'蒸水蛋','','',7.00,3,1,0),(18,'腊肠鸡蛋煎饼','','',6.00,7,1,0),(19,'菌汤面','','',12.50,6,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foreground_foodtype`
--

LOCK TABLES `foreground_foodtype` WRITE;
/*!40000 ALTER TABLE `foreground_foodtype` DISABLE KEYS */;
INSERT INTO `foreground_foodtype` VALUES (1,'汤'),(2,'炒菜'),(3,'蒸菜'),(4,'凉菜'),(5,'主食'),(6,'面食'),(7,'小吃');
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
  `date` datetime(6) NOT NULL,
  `state` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foreground_order`
--

LOCK TABLES `foreground_order` WRITE;
/*!40000 ALTER TABLE `foreground_order` DISABLE KEYS */;
INSERT INTO `foreground_order` VALUES (41,'配送',18.60,'霸气浣熊','17621192758','上海海事大学59号楼','2018-05-27 10:45:00.015311','未完成'),(42,'配送',19.60,'霸气浣熊','17621192758','上海海事大学59号楼','2018-05-27 10:54:00.015311','未完成'),(43,'配送',19.60,'霸气浣熊','17621192758','上海海事大学59号楼','2018-05-27 11:04:00.030934','未完成'),(44,'配送',19.60,'霸气浣熊','17621192758','上海海事大学59号楼','2018-05-27 11:12:00.030934','未完成'),(45,'配送',27.10,'霸气浣熊','17621192758','上海海事大学59号楼','2018-05-27 11:14:00.037454','未完成'),(46,'配送',27.10,'霸气浣熊','17621192758','上海海事大学59号楼','2018-05-27 11:18:00.037454','未完成'),(47,'配送',27.10,'霸气浣熊','17621192758','上海海事大学59号楼','2018-05-27 11:24:00.037454','未完成'),(48,'堂吃',10.50,'','','','2018-05-27 11:26:00.053132','未完成'),(49,'堂吃',24.50,'','','','2018-05-27 11:30:00.053132','未完成'),(50,'堂吃',25.50,'','','','2018-05-27 11:36:00.053132','未完成'),(51,'堂吃',24.50,'','','','2018-05-27 11:43:00.053132','未完成'),(52,'堂吃',24.50,'','','','2018-05-27 11:50:00.068719','未完成'),(53,'堂吃',24.50,'','','','2018-05-27 12:03:00.068719','未完成'),(54,'外带',24.50,'','','','2018-05-27 12:14:00.068719','未完成');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kitchen_capacity`
--

LOCK TABLES `kitchen_capacity` WRITE;
/*!40000 ALTER TABLE `kitchen_capacity` DISABLE KEYS */;
INSERT INTO `kitchen_capacity` VALUES (1,5.2,1,1),(2,4.5,1,2),(3,4.6,1,3),(4,4.9,2,1),(5,4.4,2,2),(6,4.4,2,3),(7,1,3,7),(8,1,3,8),(9,1,3,9),(10,1,3,10),(11,7.5,4,1),(12,7.5,4,4),(13,9,4,5),(14,3,5,1),(15,3,5,4),(16,4.5,5,5),(17,0.2,6,4),(18,3.2,7,1),(19,3,7,2),(20,3,7,3),(21,2.1,8,3),(22,2.1,8,6),(23,4.5,9,5),(24,5,9,6),(25,5,9,7),(26,1,10,3),(27,1,10,6),(28,1,11,3),(29,1,11,6),(30,3.4,12,1),(31,3.2,12,2),(32,3.2,12,3),(33,11.5,13,10),(34,4.4,14,1),(35,4.4,14,2),(36,4.4,14,3),(37,5.4,14,4),(38,4.4,15,1),(39,4.4,15,2),(40,4.4,15,3),(41,4.6,15,4),(42,3.8,16,1),(43,3.8,16,2),(44,3.8,16,3),(45,4.5,16,4),(46,5.3,17,6),(47,2.4,18,10),(48,4.6,19,5),(49,4.6,19,6),(50,4.8,19,7);
/*!40000 ALTER TABLE `kitchen_capacity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kitchen_prepare`
--

DROP TABLE IF EXISTS `kitchen_prepare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kitchen_prepare` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL,
  `date` time(6) NOT NULL,
  `food_id` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kitchen_prepare_food_id_a3a6ccd2_fk_foreground_food_id` (`food_id`),
  CONSTRAINT `kitchen_prepare_food_id_a3a6ccd2_fk_foreground_food_id` FOREIGN KEY (`food_id`) REFERENCES `foreground_food` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kitchen_prepare`
--

LOCK TABLES `kitchen_prepare` WRITE;
/*!40000 ALTER TABLE `kitchen_prepare` DISABLE KEYS */;
INSERT INTO `kitchen_prepare` VALUES (2,0,'13:48:56.185499',1,11,0),(3,0,'13:49:08.247100',3,1,0);
/*!40000 ALTER TABLE `kitchen_prepare` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kitchen_station`
--

LOCK TABLES `kitchen_station` WRITE;
/*!40000 ALTER TABLE `kitchen_station` DISABLE KEYS */;
INSERT INTO `kitchen_station` VALUES (1,1),(2,1),(9,1),(10,1),(3,2),(4,2),(5,3),(6,3),(7,3),(8,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnel_distribute`
--

LOCK TABLES `personnel_distribute` WRITE;
/*!40000 ALTER TABLE `personnel_distribute` DISABLE KEYS */;
INSERT INTO `personnel_distribute` VALUES (1,'full time',1,1),(2,'full time',2,1),(3,'full time',3,1);
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
  `phone` varchar(16) NOT NULL,
  `performance` int(11) DEFAULT NULL,
  `salary` decimal(16,2) DEFAULT NULL,
  `account_id` int(11),
  PRIMARY KEY (`id`),
  KEY `personnel_employee_account_id_5c4e7b1b_fk_auth_user_id` (`account_id`),
  CONSTRAINT `personnel_employee_account_id_5c4e7b1b_fk_auth_user_id` FOREIGN KEY (`account_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnel_employee`
--

LOCK TABLES `personnel_employee` WRITE;
/*!40000 ALTER TABLE `personnel_employee` DISABLE KEYS */;
INSERT INTO `personnel_employee` VALUES (1,'林深','00000000',NULL,NULL,3),(2,'沈立文','00000000',NULL,NULL,1),(3,'赵一桐','00000000',NULL,NULL,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnel_job`
--

LOCK TABLES `personnel_job` WRITE;
/*!40000 ALTER TABLE `personnel_job` DISABLE KEYS */;
INSERT INTO `personnel_job` VALUES (1,'厨师',NULL),(2,'经理',NULL);
/*!40000 ALTER TABLE `personnel_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse_bom`
--

DROP TABLE IF EXISTS `warehouse_bom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warehouse_bom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `warehouse_bom_food_id_ccbff186_fk_foreground_food_id` (`food_id`),
  KEY `warehouse_bom_material_id_322d6cad_fk_warehouse_material_id` (`material_id`),
  CONSTRAINT `warehouse_bom_food_id_ccbff186_fk_foreground_food_id` FOREIGN KEY (`food_id`) REFERENCES `foreground_food` (`id`),
  CONSTRAINT `warehouse_bom_material_id_322d6cad_fk_warehouse_material_id` FOREIGN KEY (`material_id`) REFERENCES `warehouse_material` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse_bom`
--

LOCK TABLES `warehouse_bom` WRITE;
/*!40000 ALTER TABLE `warehouse_bom` DISABLE KEYS */;
/*!40000 ALTER TABLE `warehouse_bom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse_delivery`
--

DROP TABLE IF EXISTS `warehouse_delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warehouse_delivery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime(6) NOT NULL,
  `person_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `warehouse_delivery_person_id_060fa1db_fk_personnel_employee_id` (`person_id`),
  CONSTRAINT `warehouse_delivery_person_id_060fa1db_fk_personnel_employee_id` FOREIGN KEY (`person_id`) REFERENCES `personnel_employee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse_delivery`
--

LOCK TABLES `warehouse_delivery` WRITE;
/*!40000 ALTER TABLE `warehouse_delivery` DISABLE KEYS */;
/*!40000 ALTER TABLE `warehouse_delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse_deliverydetail`
--

DROP TABLE IF EXISTS `warehouse_deliverydetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warehouse_deliverydetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `delivery_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `warehouse_deliveryde_material_id_b2db0f64_fk_warehouse` (`material_id`),
  KEY `warehouse_deliveryde_delivery_id_d4ead4b3_fk_warehouse` (`delivery_id`),
  CONSTRAINT `warehouse_deliveryde_delivery_id_d4ead4b3_fk_warehouse` FOREIGN KEY (`delivery_id`) REFERENCES `warehouse_delivery` (`id`),
  CONSTRAINT `warehouse_deliveryde_material_id_b2db0f64_fk_warehouse` FOREIGN KEY (`material_id`) REFERENCES `warehouse_material` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse_deliverydetail`
--

LOCK TABLES `warehouse_deliverydetail` WRITE;
/*!40000 ALTER TABLE `warehouse_deliverydetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `warehouse_deliverydetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse_entry`
--

DROP TABLE IF EXISTS `warehouse_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warehouse_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime(6) NOT NULL,
  `person_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `warehouse_entry_person_id_6ee6d811_fk_personnel_employee_id` (`person_id`),
  CONSTRAINT `warehouse_entry_person_id_6ee6d811_fk_personnel_employee_id` FOREIGN KEY (`person_id`) REFERENCES `personnel_employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse_entry`
--

LOCK TABLES `warehouse_entry` WRITE;
/*!40000 ALTER TABLE `warehouse_entry` DISABLE KEYS */;
INSERT INTO `warehouse_entry` VALUES (1,'2018-05-30 19:24:59.352642',2),(2,'2018-05-30 23:08:22.519395',2);
/*!40000 ALTER TABLE `warehouse_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse_entrydetail`
--

DROP TABLE IF EXISTS `warehouse_entrydetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warehouse_entrydetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `entry_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `warehouse_entrydetai_material_id_121f3689_fk_warehouse` (`material_id`),
  KEY `warehouse_entrydetail_entry_id_01bccb33_fk_warehouse_entry_id` (`entry_id`),
  CONSTRAINT `warehouse_entrydetai_material_id_121f3689_fk_warehouse` FOREIGN KEY (`material_id`) REFERENCES `warehouse_material` (`id`),
  CONSTRAINT `warehouse_entrydetail_entry_id_01bccb33_fk_warehouse_entry_id` FOREIGN KEY (`entry_id`) REFERENCES `warehouse_entry` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse_entrydetail`
--

LOCK TABLES `warehouse_entrydetail` WRITE;
/*!40000 ALTER TABLE `warehouse_entrydetail` DISABLE KEYS */;
INSERT INTO `warehouse_entrydetail` VALUES (1,4,3,1),(2,5,1,1),(3,10,3,2);
/*!40000 ALTER TABLE `warehouse_entrydetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse_junk`
--

DROP TABLE IF EXISTS `warehouse_junk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warehouse_junk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL,
  `reason` varchar(300) NOT NULL,
  `date` datetime(6) NOT NULL,
  `storage_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `warehouse_junk_storage_id_80e2f05d_fk_warehouse_storage_id` (`storage_id`),
  CONSTRAINT `warehouse_junk_storage_id_80e2f05d_fk_warehouse_storage_id` FOREIGN KEY (`storage_id`) REFERENCES `warehouse_storage` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse_junk`
--

LOCK TABLES `warehouse_junk` WRITE;
/*!40000 ALTER TABLE `warehouse_junk` DISABLE KEYS */;
INSERT INTO `warehouse_junk` VALUES (1,5,'','2018-05-30 20:41:13.659726',1);
/*!40000 ALTER TABLE `warehouse_junk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse_material`
--

DROP TABLE IF EXISTS `warehouse_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warehouse_material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `type` varchar(16) NOT NULL,
  `unit` varchar(8) NOT NULL,
  `gd` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse_material`
--

LOCK TABLES `warehouse_material` WRITE;
/*!40000 ALTER TABLE `warehouse_material` DISABLE KEYS */;
INSERT INTO `warehouse_material` VALUES (1,'鸡蛋','常温','打',30),(2,'鸡胸肉','冷冻','盒',120),(3,'大米','常温','斤',365),(4,'酱油','常温','瓶',365),(5,'食用油','常温','瓶',365),(6,'西红柿','常温','只',7),(7,'生牛排','冷冻','盒',30),(8,'猪排','冷藏','盒',12),(9,'五花肉','冷藏','盒',6),(10,'鸡腿排','冷藏','盒',6),(11,'牛腱子','冷藏','盒',12),(12,'莴笋','常温','捆',7),(13,'卷心菜','常温','只',8);
/*!40000 ALTER TABLE `warehouse_material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse_purchase`
--

DROP TABLE IF EXISTS `warehouse_purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warehouse_purchase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime(6) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `paid` tinyint(1) NOT NULL,
  `received` tinyint(1) NOT NULL,
  `person_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `term` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `warehouse_purchase_person_id_a67df8a7_fk_personnel_employee_id` (`person_id`),
  KEY `warehouse_purchase_supplier_id_78d76991_fk_warehouse_supplier_id` (`supplier_id`),
  CONSTRAINT `warehouse_purchase_person_id_a67df8a7_fk_personnel_employee_id` FOREIGN KEY (`person_id`) REFERENCES `personnel_employee` (`id`),
  CONSTRAINT `warehouse_purchase_supplier_id_78d76991_fk_warehouse_supplier_id` FOREIGN KEY (`supplier_id`) REFERENCES `warehouse_supplier` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse_purchase`
--

LOCK TABLES `warehouse_purchase` WRITE;
/*!40000 ALTER TABLE `warehouse_purchase` DISABLE KEYS */;
/*!40000 ALTER TABLE `warehouse_purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse_purchasedetail`
--

DROP TABLE IF EXISTS `warehouse_purchasedetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warehouse_purchasedetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(8,2) NOT NULL,
  `num` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `left` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `warehouse_purchasede_material_id_588ad0ad_fk_warehouse` (`material_id`),
  KEY `warehouse_purchasede_purchase_id_570718cf_fk_warehouse` (`purchase_id`),
  CONSTRAINT `warehouse_purchasede_material_id_588ad0ad_fk_warehouse` FOREIGN KEY (`material_id`) REFERENCES `warehouse_material` (`id`),
  CONSTRAINT `warehouse_purchasede_purchase_id_570718cf_fk_warehouse` FOREIGN KEY (`purchase_id`) REFERENCES `warehouse_purchase` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse_purchasedetail`
--

LOCK TABLES `warehouse_purchasedetail` WRITE;
/*!40000 ALTER TABLE `warehouse_purchasedetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `warehouse_purchasedetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse_storage`
--

DROP TABLE IF EXISTS `warehouse_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warehouse_storage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL,
  `md` datetime(6) NOT NULL,
  `date` datetime(6) NOT NULL,
  `material_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `warehouse_storage_material_id_142ecd00_fk_warehouse_material_id` (`material_id`),
  CONSTRAINT `warehouse_storage_material_id_142ecd00_fk_warehouse_material_id` FOREIGN KEY (`material_id`) REFERENCES `warehouse_material` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse_storage`
--

LOCK TABLES `warehouse_storage` WRITE;
/*!40000 ALTER TABLE `warehouse_storage` DISABLE KEYS */;
INSERT INTO `warehouse_storage` VALUES (1,85,'2018-01-27 10:45:00.015311','2018-05-27 10:45:00.015311',3),(2,50,'2018-01-27 10:45:00.015311','2018-05-27 10:45:00.015311',1),(3,20,'2018-01-27 10:46:00.015311','2018-05-27 10:45:00.015311',6),(4,10,'2018-01-27 10:47:00.015311','2018-05-27 10:45:00.015311',4),(5,5,'2018-01-27 10:48:00.015311','2018-05-27 10:45:00.015311',2),(6,10,'2018-01-27 10:49:00.015311','2018-05-27 10:45:00.015311',5),(7,50,'2018-01-27 10:50:00.015311','2018-05-27 10:45:00.015311',7),(8,35,'2018-01-27 10:45:51.015311','2018-05-27 10:45:00.015311',8),(9,16,'2018-01-27 10:52:00.015311','2018-05-27 10:45:00.015311',9),(10,76,'2018-01-27 10:53:00.015311','2018-05-27 10:45:00.015311',10),(11,50,'2018-01-27 10:54:00.015311','2018-05-27 10:45:00.015311',11),(12,33,'2018-01-27 10:55:55.015311','2018-05-27 10:45:00.015311',12),(13,3,'2018-01-27 10:56:00.015311','2018-05-27 10:45:00.015311',13);
/*!40000 ALTER TABLE `warehouse_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse_supplier`
--

DROP TABLE IF EXISTS `warehouse_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warehouse_supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `charger` varchar(32) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `address` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse_supplier`
--

LOCK TABLES `warehouse_supplier` WRITE;
/*!40000 ALTER TABLE `warehouse_supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `warehouse_supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-31 10:25:23
