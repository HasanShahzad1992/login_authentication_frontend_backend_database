-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: my_db_one
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (2,'pbkdf2_sha256$870000$H8BXVXcVV6nTQQaLvJ48ty$myTjiMrMnh115AsiF2xj64l3mrQpuVXWCa2oPw7OnNc=',NULL,0,'Basit','','','Basit@gmail.com',0,1,'2025-05-06 18:35:15.711745'),(3,'pbkdf2_sha256$870000$qzxsxHUtRP7SW3dq1Ut9vk$K6VvwSiamMYnX87gQX7r55+gcHEgnfTsnTNh1P+NBlk=',NULL,0,'Xerox','','','Xerox111222@hotmail.com',0,1,'2025-05-06 19:07:04.686546'),(4,'pbkdf2_sha256$870000$K6mjfoNF0JtqJjbwapCUYK$ZEDhACECL81Shakrw1NBMfOlWcyEZY+n+B92iLcRMzg=',NULL,0,'PakistanIndia','','','PakistanIndia@hotmal.com',0,1,'2025-05-08 18:58:08.064088'),(5,'pbkdf2_sha256$870000$Tw4VudAgXAoGSN7xuiYQG1$ZiBZ63JXHnVr2aQj4opMbxOWuFlELe8r/a2YrqFDtjo=',NULL,0,'IndiaChina','','','IndiaChina@hotmail.com',0,1,'2025-05-08 19:00:51.486786'),(6,'pbkdf2_sha256$870000$xU1iWLQA604NCUkOuwc6Kf$26JKkC8c0iC7ifm1UV1xDsKBkjHrVOuUma8CN/Dly18=',NULL,0,'Basit2Hasan','','','Basit2Hasan@rocketmail.com',0,1,'2025-05-09 18:30:32.288707'),(7,'pbkdf2_sha256$870000$yZLOlD1wloFQtuUnmokwO2$HaFRE9fxeFqkqZ5pbuFvV4ZI2qJopof3pVO4qX8F1ZU=',NULL,0,'dexter','','','dexter@laboratory.com',0,1,'2025-05-09 18:50:26.673757'),(8,'pbkdf2_sha256$870000$sq2bLgClGVPfR4WWC0Hjxv$c/RaBZlYKVg1WUaDBS4litRYuOfWrFlxEScdBLvNOYI=',NULL,0,'Didi','','','Didi@hotmail.com',0,1,'2025-05-09 18:52:34.977945'),(9,'pbkdf2_sha256$870000$ZpHXLsk7ExtxNZdC9VmNMk$4KncH/rJhBZ6j6EPk6Zhr24dtnvfjdTTAJUbV/MMo3g=',NULL,0,'China ','','','China@rocketmail.com',0,1,'2025-05-10 18:58:10.335159'),(10,'pbkdf2_sha256$870000$AB50TrdMc4YG7EHCMhO04G$CjpTDBOQy0BqbWgqqmI7GdyhX11wC9A27T0pb0ZV0hE=','2025-05-18 15:29:12.263706',0,'abc','','','abc@gmail.com',0,1,'2025-05-18 14:29:46.782670'),(11,'pbkdf2_sha256$870000$AIMNkgHK4KqHQ4A99zEzYf$t69hS37Q3BiLa1zoJv0KG9oE4C22a8lGek1n6A8Yslo=','2025-05-20 18:49:36.263314',0,'Hasan','','','hasan@gmail.com',0,1,'2025-05-18 15:30:22.228372'),(12,'pbkdf2_sha256$870000$Sovotltwp4pLryIsqyTZQa$Xc4VAs7mBQBxmHz7xZjsGFt+UPWuFpsRTx3gfo1fJ+c=',NULL,0,'IndiaPakistan','','','IndiaPakistan@hotmail.com',0,1,'2025-05-20 18:16:03.442629'),(13,'pbkdf2_sha256$870000$6iINu8eDUEF2dYaaMT0v5A$La+n8gu2Kzd2aJ/AX5PKYUT064Q5+QA+4AREEU6QYTk=',NULL,0,'USA','','','USA@gmail.com',0,1,'2025-05-20 18:23:14.212695'),(14,'pbkdf2_sha256$870000$vVpv6l2RsTaPj9MlKrTs8w$ftNcWviuB01PT3xdWJ5YhL7UWyHS/AKPm64nsRTIXCE=',NULL,0,'USAMexcio','','','USAMexico@hotmail.com',0,1,'2025-05-20 18:29:56.960847'),(15,'pbkdf2_sha256$870000$Fwr3U53tDpo1YxcjHqNXgY$JyEwcVue51ELqK1AYtyiXhyn1jVjAA9bqjXh7IuxWPI=',NULL,0,'USApakistan','','','USApakistan@hotmail.com',0,1,'2025-05-20 18:38:28.925762'),(17,'pbkdf2_sha256$870000$KoULjw99RXBD0euGiJTJ21$gkOaCmdHGAzg6JpwH9vgwxcvuYH9eg799Zjd6JOrMUg=',NULL,0,'PakistanIran','','','PakistanIran@gmail.com',0,1,'2025-05-20 18:39:33.835303'),(18,'pbkdf2_sha256$870000$TEzyoCSju5HvI8rG5PcdW3$jLpk6wawkdKWpSH7qh1j6Y4k2fVmySCw2u3PBkPoN0o=',NULL,0,'IndiaTaiwan','','','IndiaTaiwan@gmail.com',0,1,'2025-05-20 18:41:52.159616');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-05-02 18:44:29.925007'),(2,'auth','0001_initial','2025-05-02 18:44:30.841855'),(3,'admin','0001_initial','2025-05-02 18:44:31.061290'),(4,'admin','0002_logentry_remove_auto_add','2025-05-02 18:44:31.075281'),(5,'admin','0003_logentry_add_action_flag_choices','2025-05-02 18:44:31.084552'),(6,'contenttypes','0002_remove_content_type_name','2025-05-02 18:44:31.250218'),(7,'auth','0002_alter_permission_name_max_length','2025-05-02 18:44:31.355158'),(8,'auth','0003_alter_user_email_max_length','2025-05-02 18:44:31.401131'),(9,'auth','0004_alter_user_username_opts','2025-05-02 18:44:31.413124'),(10,'auth','0005_alter_user_last_login_null','2025-05-02 18:44:31.528059'),(11,'auth','0006_require_contenttypes_0002','2025-05-02 18:44:31.532057'),(12,'auth','0007_alter_validators_add_error_messages','2025-05-02 18:44:31.541466'),(13,'auth','0008_alter_user_username_max_length','2025-05-02 18:44:31.659088'),(14,'auth','0009_alter_user_last_name_max_length','2025-05-02 18:44:31.756335'),(15,'auth','0010_alter_group_name_max_length','2025-05-02 18:44:31.785319'),(16,'auth','0011_update_proxy_permissions','2025-05-02 18:44:31.803308'),(17,'auth','0012_alter_user_first_name_max_length','2025-05-02 18:44:31.901779'),(18,'sessions','0001_initial','2025-05-02 18:44:31.949265');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('52s0ada6af6add9pkk5g92rh0i8g6v24','.eJxVjEEOwiAQRe_C2pCOpcPg0r1nIDNApWogKe3KeHfbpAvd_vfefyvP65L92tLsp6guCkCdfkfh8ExlJ_HB5V51qGWZJ9G7og_a9K3G9Loe7t9B5pa3Gp0R3PQOrUBAEHRA0ts-shnZCJ3TQDQ6Q8EaZLEJkYZOXDCJGUR9vgUDOD8:1uHRDQ:dJA7pLIDRAIoLhrkpvRbgmhS1NlTf6gyeE4wf7tWJpM','2025-06-03 17:57:24.527789'),('5qtkj8svxzkn77nxa0ulyih9e269djsi','.eJxVjEEOwiAQRe_C2pCOpcPg0r1nIDNApWogKe3KeHfbpAvd_vfefyvP65L92tLsp6guCkCdfkfh8ExlJ_HB5V51qGWZJ9G7og_a9K3G9Loe7t9B5pa3Gp0R3PQOrUBAEHRA0ts-shnZCJ3TQDQ6Q8EaZLEJkYZOXDCJGUR9vgUDOD8:1uHRwH:x3_I3yBUE5itzj-RnCsOIloZHBRomy0GDhVtZBpmjnA','2025-06-03 18:43:45.713424'),('a22ozdh4xwoqhzc5tbde9vg8hbrety7p','.eJxVjEEOwiAQRe_C2pCOpcPg0r1nIDNApWogKe3KeHfbpAvd_vfefyvP65L92tLsp6guCkCdfkfh8ExlJ_HB5V51qGWZJ9G7og_a9K3G9Loe7t9B5pa3Gp0R3PQOrUBAEHRA0ts-shnZCJ3TQDQ6Q8EaZLEJkYZOXDCJGUR9vgUDOD8:1uGfze:39XBZnM7MFcu5MtY1vk5DivkC9GFT2eXWD9fVLPKsJ4','2025-06-01 15:32:02.486695'),('an140zwawz5as4zd3zsrfrt2h7dhda16','.eJxVjEEOwiAQRe_C2pCOpcPg0r1nIDNApWogKe3KeHfbpAvd_vfefyvP65L92tLsp6guCkCdfkfh8ExlJ_HB5V51qGWZJ9G7og_a9K3G9Loe7t9B5pa3Gp0R3PQOrUBAEHRA0ts-shnZCJ3TQDQ6Q8EaZLEJkYZOXDCJGUR9vgUDOD8:1uHR0m:nqSVvreCim8f9Az11W_3ZTILRjQFcUsT4GqZJzQve18','2025-06-03 17:44:20.222847'),('atdt1cji345q9l9ne5py0zl4m2nvr35h','.eJxVjEEOgjAQRe_StWlmSlvEpXvO0Ew7M4IaSCisjHdXEha6_e-9_zKJtnVIW5UljWwuBsGcfsdM5SHTTvhO0222ZZ7WZcx2V-xBq-1nluf1cP8OBqrDtxYfVPCcoSVGhMjSqdPgvWsIhaFkAgIXWx8aLqGgY42ddgKgsSU17w8SlTh9:1uGfwu:WmICQdFMjIlJQBNTUC37fUZP27RCF6n0iMp41XdQihA','2025-06-01 15:29:12.274336'),('cu8fevcggv6lpoyujelj96oa1r16lsoj','.eJxVjEEOwiAQRe_C2pCOpcPg0r1nIDNApWogKe3KeHfbpAvd_vfefyvP65L92tLsp6guCkCdfkfh8ExlJ_HB5V51qGWZJ9G7og_a9K3G9Loe7t9B5pa3Gp0R3PQOrUBAEHRA0ts-shnZCJ3TQDQ6Q8EaZLEJkYZOXDCJGUR9vgUDOD8:1uHRzE:1F8zjcpnRY1FkQWt33VlF9aVl7aOFPnFMWnAcY-sro8','2025-06-03 18:46:48.842385'),('jlug8t97h6frn3fx5t5ephfrp1304alk','.eJxVjEEOwiAQRe_C2pCOpcPg0r1nIDNApWogKe3KeHfbpAvd_vfefyvP65L92tLsp6guCkCdfkfh8ExlJ_HB5V51qGWZJ9G7og_a9K3G9Loe7t9B5pa3Gp0R3PQOrUBAEHRA0ts-shnZCJ3TQDQ6Q8EaZLEJkYZOXDCJGUR9vgUDOD8:1uHRJ6:BVshrTstNGNch33sdtaEOmoWp_Lr0nq2bWHPvnQKJz0','2025-06-03 18:03:16.155825'),('kpnfcd64ecomv28tpxjari0u2060etj9','.eJxVjEEOwiAQRe_C2pCOpcPg0r1nIDNApWogKe3KeHfbpAvd_vfefyvP65L92tLsp6guCkCdfkfh8ExlJ_HB5V51qGWZJ9G7og_a9K3G9Loe7t9B5pa3Gp0R3PQOrUBAEHRA0ts-shnZCJ3TQDQ6Q8EaZLEJkYZOXDCJGUR9vgUDOD8:1uHS1w:BdgsCiHCKuPRfqyYds3arvCSxNd3-HU6_a1UpYgFdPM','2025-06-03 18:49:36.271310'),('lzrcgxw0ifw5ucdyquzbxay4ppvwxbul','.eJxVjEEOwiAQRe_C2pCOpcPg0r1nIDNApWogKe3KeHfbpAvd_vfefyvP65L92tLsp6guCkCdfkfh8ExlJ_HB5V51qGWZJ9G7og_a9K3G9Loe7t9B5pa3Gp0R3PQOrUBAEHRA0ts-shnZCJ3TQDQ6Q8EaZLEJkYZOXDCJGUR9vgUDOD8:1uHR9w:N7ZqWjeErhjk4ZB2I0AtWbqsIwNOR0BtRlV3ABPmwXw','2025-06-03 17:53:48.202721'),('mezkc49w32z57sb93za8gs9rihgyzxv2','e30:1uDphc:TB-otd_d82nNDCd4Qvy2Kk9ZesTMVYGBTz3A7DYKJhU','2025-05-24 19:17:40.911945'),('v0xcizqfm6zr9r6ailb5lcp4yaoegiz6','.eJxVjEEOwiAQRe_C2pCOpcPg0r1nIDNApWogKe3KeHfbpAvd_vfefyvP65L92tLsp6guCkCdfkfh8ExlJ_HB5V51qGWZJ9G7og_a9K3G9Loe7t9B5pa3Gp0R3PQOrUBAEHRA0ts-shnZCJ3TQDQ6Q8EaZLEJkYZOXDCJGUR9vgUDOD8:1uHRw7:rJ9OwqjT0725coMSSDYnZ692Sqkxvh37VlSFi7RHh0Y','2025-06-03 18:43:35.491354'),('v33ug62hkabt6u9wh6rxm0tf1c8rc3pd','.eJxVjEEOwiAQRe_C2pCOpcPg0r1nIDNApWogKe3KeHfbpAvd_vfefyvP65L92tLsp6guCkCdfkfh8ExlJ_HB5V51qGWZJ9G7og_a9K3G9Loe7t9B5pa3Gp0R3PQOrUBAEHRA0ts-shnZCJ3TQDQ6Q8EaZLEJkYZOXDCJGUR9vgUDOD8:1uHRKB:Zb7fUNTJ1zv9buuHmk6sfuNDwg-9RLmvq940pd-xsHk','2025-06-03 18:04:23.620605'),('w6x2kw4u9i2crrb4x1xtusyynniddl0t','.eJxVjEEOgjAQRe_StWlmSlvEpXvO0Ew7M4IaSCisjHdXEha6_e-9_zKJtnVIW5UljWwuBsGcfsdM5SHTTvhO0222ZZ7WZcx2V-xBq-1nluf1cP8OBqrDtxYfVPCcoSVGhMjSqdPgvWsIhaFkAgIXWx8aLqGgY42ddgKgsSU17w8SlTh9:1uGf2N:hmqlUJ8RFEbLSLSbxrF5C0NteksLkCQjseDBk4ilrl8','2025-06-01 14:30:47.489700'),('zb2b0jjys7zjgl6x2qw828ngwhhzi4eu','.eJxVjEEOwiAQRe_C2pCOpcPg0r1nIDNApWogKe3KeHfbpAvd_vfefyvP65L92tLsp6guCkCdfkfh8ExlJ_HB5V51qGWZJ9G7og_a9K3G9Loe7t9B5pa3Gp0R3PQOrUBAEHRA0ts-shnZCJ3TQDQ6Q8EaZLEJkYZOXDCJGUR9vgUDOD8:1uHRTM:GBWHFtePVdITF_dQCXXDBYw_J147AOsYazDMYS6b78s','2025-06-03 18:13:52.970829');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-21 22:59:12
