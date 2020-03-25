-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: localhost    Database: django_pn
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `anggota_anggota`
--

DROP TABLE IF EXISTS `anggota_anggota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anggota_anggota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_hp` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `status` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anggota_anggota`
--

LOCK TABLES `anggota_anggota` WRITE;
/*!40000 ALTER TABLE `anggota_anggota` DISABLE KEYS */;
INSERT INTO `anggota_anggota` VALUES (1,'Diah','Muncar','081238912839','Bendahara','pengurus'),(2,'Anton','Mbrayu','098762378','~','anggota'),(3,'Lukman','banyuwangi','0812345738','~','anggota'),(4,'Mita','songgon','0817239849','Sekertaris','pengurus'),(5,'Komarun','Sumatra','08712308238','Keamanan','pengurus');
/*!40000 ALTER TABLE `anggota_anggota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add berita',7,'add_berita'),(26,'Can change berita',7,'change_berita'),(27,'Can delete berita',7,'delete_berita'),(28,'Can view berita',7,'view_berita'),(29,'Can add kategory',8,'add_kategory'),(30,'Can change kategory',8,'change_kategory'),(31,'Can delete kategory',8,'delete_kategory'),(32,'Can view kategory',8,'view_kategory'),(33,'Can add image',9,'add_image'),(34,'Can change image',9,'change_image'),(35,'Can delete image',9,'delete_image'),(36,'Can view image',9,'view_image'),(37,'Can add video',10,'add_video'),(38,'Can change video',10,'change_video'),(39,'Can delete video',10,'delete_video'),(40,'Can view video',10,'view_video'),(41,'Can add jadwal',11,'add_jadwal'),(42,'Can change jadwal',11,'change_jadwal'),(43,'Can delete jadwal',11,'delete_jadwal'),(44,'Can view jadwal',11,'view_jadwal'),(45,'Can add anggota',12,'add_anggota'),(46,'Can change anggota',12,'change_anggota'),(47,'Can delete anggota',12,'delete_anggota'),(48,'Can view anggota',12,'view_anggota');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$120000$0hSfAZ7DcJJv$/u5+C0Ni4juLGRdL6Y8sptih4J/fgd1Oy6akxHxZ88I=','2020-03-21 12:55:06.678767',1,'admin','','','admin@gmail.com',1,1,'2020-03-14 03:05:21.450382');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `berita_berita`
--

DROP TABLE IF EXISTS `berita_berita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `berita_berita` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(225) NOT NULL,
  `thumbnail` varchar(100) NOT NULL,
  `body` longtext,
  `created_at` date NOT NULL,
  `penulis_id` int(11) NOT NULL,
  `slug` varchar(225) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `berita_berita_penulis_id_ff27028e_fk_auth_user_id` (`penulis_id`),
  KEY `berita_berita_slug_a37f1c05` (`slug`),
  CONSTRAINT `berita_berita_penulis_id_ff27028e_fk_auth_user_id` FOREIGN KEY (`penulis_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `berita_berita`
--

LOCK TABLES `berita_berita` WRITE;
/*!40000 ALTER TABLE `berita_berita` DISABLE KEYS */;
INSERT INTO `berita_berita` VALUES (1,'Lorem Ipsum','thumbnail/pn.jpg','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi in nibh vitae est dictum dapibus. Nunc molestie, mi vel viverra posuere, nunc turpis sodales dolor, ut lobortis felis magna id velit. Curabitur vulputate ut purus eget vehicula. Donec scelerisque odio eros, a aliquet augue ullamcorper et. Morbi magna justo, venenatis quis ligula et, tempor auctor ligula. Fusce scelerisque pharetra posuere. Integer lorem lectus, faucibus in auctor id, convallis a ipsum. Nullam nec lacus a nibh dignissim sollicitudin. Sed at pulvinar ligula, ac aliquam orci. Donec fermentum augue rutrum, aliquam orci in, condimentum lacus. Maecenas venenatis scelerisque nisi, sit amet fringilla est vehicula ac. Mauris id massa nisi. Quisque eu lobortis sapien. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;</p>\r\n\r\n<p>Ut sodales diam vitae nibh luctus, quis condimentum eros iaculis. Nulla dapibus efficitur urna non tincidunt. Curabitur iaculis magna arcu, vitae malesuada nulla ultrices id. Fusce tempus mauris vel cursus bibendum. Aliquam erat volutpat. Aliquam viverra rhoncus magna, in fringilla magna scelerisque non. Aliquam quis accumsan diam, eget convallis quam. Proin rutrum sit amet nisi quis sodales.</p>\r\n\r\n<p>Morbi a scelerisque odio. Suspendisse potenti. Mauris vel sapien pellentesque, laoreet lectus sit amet, imperdiet orci. Sed nec justo libero. Quisque nec turpis non dui rutrum vulputate. Nulla semper eu risus vitae interdum. Pellentesque in dui turpis. Suspendisse malesuada at nisl quis placerat. Etiam sagittis, metus eget sagittis rutrum, arcu eros luctus tortor, sit amet finibus tortor urna pharetra elit. Proin sagittis mauris iaculis, porta quam eu, aliquet ante. Maecenas iaculis vitae ipsum ut fermentum. Nulla dictum arcu feugiat risus blandit congue. Vestibulum volutpat sodales mauris. Nam consectetur quam sit amet magna cursus tempor. Vivamus a dui augue.</p>\r\n\r\n<p>Integer efficitur elit eu tellus tristique tincidunt. Maecenas congue erat eget ultrices tincidunt. Phasellus mattis venenatis felis, quis interdum mi hendrerit ac. Etiam condimentum sit amet urna vel porttitor. Integer placerat hendrerit augue sed scelerisque. Aenean sed arcu cursus, auctor risus a, tempus nisl. Morbi orci odio, volutpat ut ullamcorper vel, rutrum at dolor. Quisque ornare risus quis tempus lacinia. Quisque scelerisque enim velit, at vulputate enim elementum eu. Cras ut blandit lorem, a tempor ante. Aliquam purus erat, aliquet sit amet est a, commodo dignissim nibh.</p>\r\n\r\n<p>Nam consectetur leo id posuere gravida. Pellentesque molestie vulputate enim. Ut volutpat nisl id sem sodales aliquet efficitur ut est. Sed luctus diam vel sapien ullamcorper elementum. Donec suscipit dolor vel sapien posuere pretium. Ut porta ornare diam, vel ultricies metus hendrerit vitae. Sed mattis sem vitae lacus volutpat, et volutpat enim tristique. In ac lobortis ante, in laoreet est. In hac habitasse platea dictumst. Quisque nisl ex, placerat id urna id, eleifend consequat felis. Nulla sit amet convallis mauris. Curabitur dignissim ligula ex, eget lobortis ligula faucibus sit amet. Vestibulum vitae ipsum luctus, efficitur tellus laoreet, porttitor justo. Morbi dignissim tellus et nulla laoreet rhoncus.</p>','2020-03-14',1,'1'),(2,'Lorem Ipsum','thumbnail/92_408268_151204profilepicture_hero.jpg','<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Purus in massa tempor nec. Dolor purus non enim praesent. Malesuada fames ac turpis egestas integer eget. Penatibus et magnis dis parturient montes nascetur ridiculus mus. Ut eu sem integer vitae justo eget. Ligula ullamcorper malesuada proin libero nunc consequat interdum varius sit. Leo vel fringilla est ullamcorper eget nulla facilisi. Dignissim convallis aenean et tortor. Proin gravida hendrerit lectus a.</p>\r\n\r\n<p>Cras fermentum odio eu feugiat. Eu turpis egestas pretium aenean pharetra magna ac placerat. Et malesuada fames ac turpis egestas integer eget aliquet. Sodales ut eu sem integer vitae justo eget magna fermentum. Est ullamcorper eget nulla facilisi etiam dignissim diam. Malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Mattis ullamcorper velit sed ullamcorper morbi. Mattis molestie a iaculis at erat pellentesque adipiscing commodo. Dignissim convallis aenean et tortor at risus. Vitae sapien pellentesque habitant morbi tristique. Pharetra vel turpis nunc eget lorem dolor sed viverra.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Mauris augue neque gravida in fermentum. Volutpat lacus laoreet non curabitur gravida arcu ac tortor. Cras tincidunt lobortis feugiat vivamus at augue eget. Elit at imperdiet dui accumsan sit amet. Est ultricies integer quis auctor. Orci nulla pellentesque dignissim enim. Enim eu turpis egestas pretium aenean pharetra magna. Placerat in egestas erat imperdiet. Diam phasellus vestibulum lorem sed risus ultricies tristique nulla aliquet. Massa ultricies mi quis hendrerit dolor magna. Id diam maecenas ultricies mi eget mauris pharetra et ultrices. Commodo elit at imperdiet dui accumsan sit amet nulla. Vitae congue eu consequat ac felis donec et odio pellentesque. Sed ullamcorper morbi tincidunt ornare massa eget egestas purus. Urna nec tincidunt praesent semper feugiat nibh sed pulvinar. Sit amet consectetur adipiscing elit pellentesque habitant morbi. Eros donec ac odio tempor orci dapibus ultrices in iaculis. Tortor condimentum lacinia quis vel eros donec ac odio tempor.</p>\r\n\r\n<p>Eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Odio ut enim blandit volutpat. Mattis enim ut tellus elementum sagittis. Dapibus ultrices in iaculis nunc sed augue lacus. Porta non pulvinar neque laoreet suspendisse interdum consectetur. Amet mauris commodo quis imperdiet massa tincidunt nunc pulvinar sapien. Nulla posuere sollicitudin aliquam ultrices sagittis. Dignissim sodales ut eu sem integer vitae justo eget magna. Suspendisse sed nisi lacus sed viverra. Ac auctor augue mauris augue neque gravida. Tempor nec feugiat nisl pretium. Enim eu turpis egestas pretium aenean pharetra. Pellentesque sit amet porttitor eget dolor morbi non arcu. Commodo elit at imperdiet dui accumsan sit. Quis risus sed vulputate odio ut enim blandit. Nulla malesuada pellentesque elit eget gravida cum sociis natoque.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Purus in massa tempor nec. Dolor purus non enim praesent. Malesuada fames ac turpis egestas integer eget. Penatibus et magnis dis parturient montes nascetur ridiculus mus. Ut eu sem integer vitae justo eget. Ligula ullamcorper malesuada proin libero nunc consequat interdum varius sit. Leo vel fringilla est ullamcorper eget nulla facilisi. Dignissim convallis aenean et tortor. Proin gravida hendrerit lectus a.</p>\r\n\r\n<p>Cras fermentum odio eu feugiat. Eu turpis egestas pretium aenean pharetra magna ac placerat. Et malesuada fames ac turpis egestas integer eget aliquet. Sodales ut eu sem integer vitae justo eget magna fermentum. Est ullamcorper eget nulla facilisi etiam dignissim diam. Malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Mattis ullamcorper velit sed ullamcorper morbi. Mattis molestie a iaculis at erat pellentesque adipiscing commodo. Dignissim convallis aenean et tortor at risus. Vitae sapien pellentesque habitant morbi tristique. Pharetra vel turpis nunc eget lorem dolor sed viverra.</p>\r\n\r\n<p>Mauris augue neque gravida in fermentum. Volutpat lacus laoreet non curabitur gravida arcu ac tortor. Cras tincidunt lobortis feugiat vivamus at augue eget. Elit at imperdiet dui accumsan sit amet. Est ultricies integer quis auctor. Orci nulla pellentesque dignissim enim. Enim eu turpis egestas pretium aenean pharetra magna. Placerat in egestas erat imperdiet. Diam phasellus vestibulum lorem sed risus ultricies tristique nulla aliquet. Massa ultricies mi quis hendrerit dolor magna. Id diam maecenas ultricies mi eget mauris pharetra et ultrices. Commodo elit at imperdiet dui accumsan sit amet nulla. Vitae congue eu consequat ac felis donec et odio pellentesque. Sed ullamcorper morbi tincidunt ornare massa eget egestas purus. Urna nec tincidunt praesent semper feugiat nibh sed pulvinar. Sit amet consectetur adipiscing elit pellentesque habitant morbi. Eros donec ac odio tempor orci dapibus ultrices in iaculis. Tortor condimentum lacinia quis vel eros donec ac odio tempor.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"/media/uploads/2020/03/14/img_9740.jpg\" style=\"height:720px; width:1280px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Odio ut enim blandit volutpat. Mattis enim ut tellus elementum sagittis. Dapibus ultrices in iaculis nunc sed augue lacus. Porta non pulvinar neque laoreet suspendisse interdum consectetur. Amet mauris commodo quis imperdiet massa tincidunt nunc pulvinar sapien. Nulla posuere sollicitudin aliquam ultrices sagittis. Dignissim sodales ut eu sem integer vitae justo eget magna. Suspendisse sed nisi lacus sed viverra. Ac auctor augue mauris augue neque gravida. Tempor nec feugiat nisl pretium. Enim eu turpis egestas pretium aenean pharetra. Pellentesque sit amet porttitor eget dolor morbi non arcu. Commodo elit at imperdiet dui accumsan sit. Quis risus sed vulputate odio ut enim blandit. Nulla malesuada pellentesque elit eget gravida cum sociis natoque.</p>\r\n\r\n<p>Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Egestas integer eget aliquet nibh praesent. Pellentesque elit eget gravida cum sociis. Quisque id diam vel quam elementum. Porta non pulvinar neque laoreet suspendisse interdum consectetur. Ut eu sem integer vitae justo eget magna fermentum. Ut etiam sit amet nisl. Et malesuada fames ac turpis egestas maecenas pharetra convallis. Fames ac turpis egestas sed tempus. Laoreet sit amet cursus sit amet dictum sit amet justo. Mi quis hendrerit dolor magna eget. Facilisi morbi tempus iaculis urna id. Semper feugiat nibh sed pulvinar proin gravida hendrerit lectus. Sed id semper risus in.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Egestas integer eget aliquet nibh praesent. Pellentesque elit eget gravida cum sociis. Quisque id diam vel quam elementum. Porta non pulvinar neque laoreet suspendisse interdum consectetur. Ut eu sem integer vitae justo eget magna fermentum. Ut etiam sit amet nisl. Et malesuada fames ac turpis egestas maecenas pharetra convallis. Fames ac turpis egestas sed tempus. Laoreet sit amet cursus sit amet dictum sit amet justo. Mi quis hendrerit dolor magna eget. Facilisi morbi tempus iaculis urna id. Semper feugiat nibh sed pulvinar proin gravida hendrerit lectus. Sed id semper risus in.</p>','2020-03-14',1,'lorem-ipsum'),(3,'The standard Lorem Ipsum passage, used since the 1500s','thumbnail/pn1.jpg','<p>For starters,&nbsp;<em><strong>lorem ipsum</strong></em>&nbsp;isn&rsquo;t just some wacky text-thingy with no meaning whatsoever. These words have been derived from the Latin phrase &lsquo;<em>dolorem ipsum</em>&rsquo; which translates to &lsquo;<em>pain itself</em>&rsquo;.&nbsp;<em><strong>Lorem Ipsum</strong></em>&nbsp;is a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Lorem_ipsum\" rel=\"noopener noreferrer\" target=\"_blank\">placeholder text used to illustrate graphic features by publishers and graphic designers</a>.</p>\r\n\r\n<p>It is a pseudo-Latin text used instead of English in web design, typography, layout and printing to emphasize elements of design over content. It is also called the text (or filler) of the placeholder. It&rsquo;s a handy tool for mock-ups. This helps define a text or presentation&rsquo;s visual elements, such as typography, font, or format.</p>\r\n\r\n<p>The classical author and philosopher Cicero&rsquo;s Lorem ipsum is mostly part of a Latin text. We changed the words and letters by adding or removing them, so it deliberately makes the content nonsensical; it is no longer genuine, correct, or understandable Latin.</p>\r\n\r\n<p>While the lorem ipsum is still similar to classical Latin, it has no sense whatsoever in fact. Since the text of Cicero does not include the letters K, W, or Z, foreign to Latin, these and others are frequently randomly inserted to imitate the typographic appearance of European languages, just as digraphs are not present in the original.</p>\r\n\r\n<p><img alt=\"Lorem Ipsum Generator\" src=\"https://yaszamedia.com/wp-content/uploads/2020/03/lorem-ipsum.png\" style=\"height:319px; width:550px\" /></p>\r\n\r\n<p>In a professional context, private or corporate clients often plan for a report to be written and delivered with the actual content not yet ready. Think of a blog of news that&rsquo;s full of content every hour on the day you go live.</p>\r\n\r\n<p>Webmasters or Content Managers, however, tend to be distracted by understandable content, such as a random text copied from a newspaper or the internet. It is possible that they will concentrate on the message, regardless of the format and its elements. In addition, random text risks being unintentionally humorous or insulting, pose an unnecessary corporate danger. Since the early 1960s, Lorem ipsum and its many variants have been used, and quite likely since the 16th century.</p>\r\n\r\n<h2>When to Use Lorem Ipsum Generator tool?</h2>\r\n\r\n<p>In the design stage, Lorem Ipsum is actually useful as it focuses our attention on places where the content is a dynamic block coming from the CMS (unlike static content elements that will always remain the same). Lorem Ipsum blocks with a range of character counts provide an obvious reminder to check and check that the design and the content model match. It adds value to your&nbsp;<a href=\"http://services/content-marketing/\" rel=\"noopener noreferrer\" target=\"_blank\">content marketing</a>&nbsp;design prototypes.</p>\r\n\r\n<h2>Lorem Ipsum FAQs</h2>\r\n\r\n<ul>\r\n	<li><strong>What is the meaning of Lorem Ipsum?</strong><br />\r\n	Lorem Ipsum is the printing and typesetting industry&rsquo;s basic dummy text. Since the 1500s, Lorem Ipsum has been the industry standard.</li>\r\n	<li><strong>Why is it used?</strong><br />\r\n	The text of the Lorem Ipsum is used to fill spaces designated for hosting texts not yet published. To get a real impression of the digital / advertising / editorial product they are working on, programmers, graphic designers, typographers use it.</li>\r\n	<li><strong>Where did it originate?</strong><br />\r\n	Lorem Ipsum is not simply random text, contrary to popular belief. It has origins in a 45 BC piece of classical Latin literature, which makes it more than 2000 years old.</li>\r\n	<li><strong>How can I get some Lorem Ipsum text?</strong><br />\r\n	You can simply use our Lorem Ipsum Generator tool to generate as much filler text as you want based on your requirement.</li>\r\n	<li><strong>Is this copyright free?</strong><br />\r\n	Yes, our Lorem Ipsum Generator tool is free to use. There is no copyright issues when you use it for your work. We would really appreciate a share/mention though.</li>\r\n</ul>','2020-03-14',1,'the-standard-lorem-ipsum-passage-used-since-the-1500se13f4989e98b4c'),(4,'Lorem Ipsum','thumbnail/pn3.jpg','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Purus in massa tempor nec. Dolor purus non enim praesent. Malesuada fames ac turpis egestas integer eget. Penatibus et magnis dis parturient montes nascetur ridiculus mus. Ut eu sem integer vitae justo eget. Ligula ullamcorper malesuada proin libero nunc consequat interdum varius sit. Leo vel fringilla est ullamcorper eget nulla facilisi. Dignissim convallis aenean et tortor. Proin gravida hendrerit lectus a.</p>\r\n\r\n<p>Cras fermentum odio eu feugiat. Eu turpis egestas pretium aenean pharetra magna ac placerat. Et malesuada fames ac turpis egestas integer eget aliquet. Sodales ut eu sem integer vitae justo eget magna fermentum. Est ullamcorper eget nulla facilisi etiam dignissim diam. Malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Mattis ullamcorper velit sed ullamcorper morbi. Mattis molestie a iaculis at erat pellentesque adipiscing commodo. Dignissim convallis aenean et tortor at risus. Vitae sapien pellentesque habitant morbi tristique. Pharetra vel turpis nunc eget lorem dolor sed viverra.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Mauris augue neque gravida in fermentum. Volutpat lacus laoreet non curabitur gravida arcu ac tortor. Cras tincidunt lobortis feugiat vivamus at augue eget. Elit at imperdiet dui accumsan sit amet. Est ultricies integer quis auctor. Orci nulla pellentesque dignissim enim. Enim eu turpis egestas pretium aenean pharetra magna. Placerat in egestas erat imperdiet. Diam phasellus vestibulum lorem sed risus ultricies tristique nulla aliquet. Massa ultricies mi quis hendrerit dolor magna. Id diam maecenas ultricies mi eget mauris pharetra et ultrices. Commodo elit at imperdiet dui accumsan sit amet nulla. Vitae congue eu consequat ac felis donec et odio pellentesque. Sed ullamcorper morbi tincidunt ornare massa eget egestas purus. Urna nec tincidunt praesent semper feugiat nibh sed pulvinar. Sit amet consectetur adipiscing elit pellentesque habitant morbi. Eros donec ac odio tempor orci dapibus ultrices in iaculis. Tortor condimentum lacinia quis vel eros donec ac odio tempor.</p>\r\n\r\n<p>Eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Odio ut enim blandit volutpat. Mattis enim ut tellus elementum sagittis. Dapibus ultrices in iaculis nunc sed augue lacus. Porta non pulvinar neque laoreet suspendisse interdum consectetur. Amet mauris commodo quis imperdiet massa tincidunt nunc pulvinar sapien. Nulla posuere sollicitudin aliquam ultrices sagittis. Dignissim sodales ut eu sem integer vitae justo eget magna. Suspendisse sed nisi lacus sed viverra. Ac auctor augue mauris augue neque gravida. Tempor nec feugiat nisl pretium. Enim eu turpis egestas pretium aenean pharetra. Pellentesque sit amet porttitor eget dolor morbi non arcu. Commodo elit at imperdiet dui accumsan sit. Quis risus sed vulputate odio ut enim blandit. Nulla malesuada pellentesque elit eget gravida cum sociis natoque.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Purus in massa tempor nec. Dolor purus non enim praesent. Malesuada fames ac turpis egestas integer eget. Penatibus et magnis dis parturient montes nascetur ridiculus mus. Ut eu sem integer vitae justo eget. Ligula ullamcorper malesuada proin libero nunc consequat interdum varius sit. Leo vel fringilla est ullamcorper eget nulla facilisi. Dignissim convallis aenean et tortor. Proin gravida hendrerit lectus a.</p>\r\n\r\n<p>Cras fermentum odio eu feugiat. Eu turpis egestas pretium aenean pharetra magna ac placerat. Et malesuada fames ac turpis egestas integer eget aliquet. Sodales ut eu sem integer vitae justo eget magna fermentum. Est ullamcorper eget nulla facilisi etiam dignissim diam. Malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Mattis ullamcorper velit sed ullamcorper morbi. Mattis molestie a iaculis at erat pellentesque adipiscing commodo. Dignissim convallis aenean et tortor at risus. Vitae sapien pellentesque habitant morbi tristique. Pharetra vel turpis nunc eget lorem dolor sed viverra.</p>\r\n\r\n<p>Mauris augue neque gravida in fermentum. Volutpat lacus laoreet non curabitur gravida arcu ac tortor. Cras tincidunt lobortis feugiat vivamus at augue eget. Elit at imperdiet dui accumsan sit amet. Est ultricies integer quis auctor. Orci nulla pellentesque dignissim enim. Enim eu turpis egestas pretium aenean pharetra magna. Placerat in egestas erat imperdiet. Diam phasellus vestibulum lorem sed risus ultricies tristique nulla aliquet. Massa ultricies mi quis hendrerit dolor magna. Id diam maecenas ultricies mi eget mauris pharetra et ultrices. Commodo elit at imperdiet dui accumsan sit amet nulla. Vitae congue eu consequat ac felis donec et odio pellentesque. Sed ullamcorper morbi tincidunt ornare massa eget egestas purus. Urna nec tincidunt praesent semper feugiat nibh sed pulvinar. Sit amet consectetur adipiscing elit pellentesque habitant morbi. Eros donec ac odio tempor orci dapibus ultrices in iaculis. Tortor condimentum lacinia quis vel eros donec ac odio tempor.</p>','2020-03-14',1,'lorem-ipsum349e6bd734044b'),(5,'Lorem ipsum','thumbnail/pn12.jpeg','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Purus in massa tempor nec. Dolor purus non enim praesent. Malesuada fames ac turpis egestas integer eget. Penatibus et magnis dis parturient montes nascetur ridiculus mus. Ut eu sem integer vitae justo eget. Ligula ullamcorper malesuada proin libero nunc consequat interdum varius sit. Leo vel fringilla est ullamcorper eget nulla facilisi. Dignissim convallis aenean et tortor. Proin gravida hendrerit lectus a.</p>\r\n\r\n<p>Cras fermentum odio eu feugiat. Eu turpis egestas pretium aenean pharetra magna ac placerat. Et malesuada fames ac turpis egestas integer eget aliquet. Sodales ut eu sem integer vitae justo eget magna fermentum. Est ullamcorper eget nulla facilisi etiam dignissim diam. Malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Mattis ullamcorper velit sed ullamcorper morbi. Mattis molestie a iaculis at erat pellentesque adipiscing commodo. Dignissim convallis aenean et tortor at risus. Vitae sapien pellentesque habitant morbi tristique. Pharetra vel turpis nunc eget lorem dolor sed viverra.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Mauris augue neque gravida in fermentum. Volutpat lacus laoreet non curabitur gravida arcu ac tortor. Cras tincidunt lobortis feugiat vivamus at augue eget. Elit at imperdiet dui accumsan sit amet. Est ultricies integer quis auctor. Orci nulla pellentesque dignissim enim. Enim eu turpis egestas pretium aenean pharetra magna. Placerat in egestas erat imperdiet. Diam phasellus vestibulum lorem sed risus ultricies tristique nulla aliquet. Massa ultricies mi quis hendrerit dolor magna. Id diam maecenas ultricies mi eget mauris pharetra et ultrices. Commodo elit at imperdiet dui accumsan sit amet nulla. Vitae congue eu consequat ac felis donec et odio pellentesque. Sed ullamcorper morbi tincidunt ornare massa eget egestas purus. Urna nec tincidunt praesent semper feugiat nibh sed pulvinar. Sit amet consectetur adipiscing elit pellentesque habitant morbi. Eros donec ac odio tempor orci dapibus ultrices in iaculis. Tortor condimentum lacinia quis vel eros donec ac odio tempor.</p>\r\n\r\n<p>Eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Odio ut enim blandit volutpat. Mattis enim ut tellus elementum sagittis. Dapibus ultrices in iaculis nunc sed augue lacus. Porta non pulvinar neque laoreet suspendisse interdum consectetur. Amet mauris commodo quis imperdiet massa tincidunt nunc pulvinar sapien. Nulla posuere sollicitudin aliquam ultrices sagittis. Dignissim sodales ut eu sem integer vitae justo eget magna. Suspendisse sed nisi lacus sed viverra. Ac auctor augue mauris augue neque gravida. Tempor nec feugiat nisl pretium. Enim eu turpis egestas pretium aenean pharetra. Pellentesque sit amet porttitor eget dolor morbi non arcu. Commodo elit at imperdiet dui accumsan sit. Quis risus sed vulputate odio ut enim blandit. Nulla malesuada pellentesque elit eget gravida cum sociis natoque.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Purus in massa tempor nec. Dolor purus non enim praesent. Malesuada fames ac turpis egestas integer eget. Penatibus et magnis dis parturient montes nascetur ridiculus mus. Ut eu sem integer vitae justo eget. Ligula ullamcorper malesuada proin libero nunc consequat interdum varius sit. Leo vel fringilla est ullamcorper eget nulla facilisi. Dignissim convallis aenean et tortor. Proin gravida hendrerit lectus a.</p>\r\n\r\n<p>Cras fermentum odio eu feugiat. Eu turpis egestas pretium aenean pharetra magna ac placerat. Et malesuada fames ac turpis egestas integer eget aliquet. Sodales ut eu sem integer vitae justo eget magna fermentum. Est ullamcorper eget nulla facilisi etiam dignissim diam. Malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Mattis ullamcorper velit sed ullamcorper morbi. Mattis molestie a iaculis at erat pellentesque adipiscing commodo. Dignissim convallis aenean et tortor at risus. Vitae sapien pellentesque habitant morbi tristique. Pharetra vel turpis nunc eget lorem dolor sed viverra.</p>\r\n\r\n<p>Mauris augue neque gravida in fermentum. Volutpat lacus laoreet non curabitur gravida arcu ac tortor. Cras tincidunt lobortis feugiat vivamus at augue eget. Elit at imperdiet dui accumsan sit amet. Est ultricies integer quis auctor. Orci nulla pellentesque dignissim enim. Enim eu turpis egestas pretium aenean pharetra magna. Placerat in egestas erat imperdiet. Diam phasellus vestibulum lorem sed risus ultricies tristique nulla aliquet. Massa ultricies mi quis hendrerit dolor magna. Id diam maecenas ultricies mi eget mauris pharetra et ultrices. Commodo elit at imperdiet dui accumsan sit amet nulla. Vitae congue eu consequat ac felis donec et odio pellentesque. Sed ullamcorper morbi tincidunt ornare massa eget egestas purus. Urna nec tincidunt praesent semper feugiat nibh sed pulvinar. Sit amet consectetur adipiscing elit pellentesque habitant morbi. Eros donec ac odio tempor orci dapibus ultrices in iaculis. Tortor condimentum lacinia quis vel eros donec ac odio tempor.</p>','2020-03-14',1,'lorem-ipsum65732db17f1240'),(6,'lorem ipsums','thumbnail/pn56.jpg','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Purus in massa tempor nec. Dolor purus non enim praesent. Malesuada fames ac turpis egestas integer eget. Penatibus et magnis dis parturient montes nascetur ridiculus mus. Ut eu sem integer vitae justo eget. Ligula ullamcorper malesuada proin libero nunc consequat interdum varius sit. Leo vel fringilla est ullamcorper eget nulla facilisi. Dignissim convallis aenean et tortor. Proin gravida hendrerit lectus a.</p>\r\n\r\n<p>Cras fermentum odio eu feugiat. Eu turpis egestas pretium aenean pharetra magna ac placerat. Et malesuada fames ac turpis egestas integer eget aliquet. Sodales ut eu sem integer vitae justo eget magna fermentum. Est ullamcorper eget nulla facilisi etiam dignissim diam. Malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Mattis ullamcorper velit sed ullamcorper morbi. Mattis molestie a iaculis at erat pellentesque adipiscing commodo. Dignissim convallis aenean et tortor at risus. Vitae sapien pellentesque habitant morbi tristique. Pharetra vel turpis nunc eget lorem dolor sed viverra.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Mauris augue neque gravida in fermentum. Volutpat lacus laoreet non curabitur gravida arcu ac tortor. Cras tincidunt lobortis feugiat vivamus at augue eget. Elit at imperdiet dui accumsan sit amet. Est ultricies integer quis auctor. Orci nulla pellentesque dignissim enim. Enim eu turpis egestas pretium aenean pharetra magna. Placerat in egestas erat imperdiet. Diam phasellus vestibulum lorem sed risus ultricies tristique nulla aliquet. Massa ultricies mi quis hendrerit dolor magna. Id diam maecenas ultricies mi eget mauris pharetra et ultrices. Commodo elit at imperdiet dui accumsan sit amet nulla. Vitae congue eu consequat ac felis donec et odio pellentesque. Sed ullamcorper morbi tincidunt ornare massa eget egestas purus. Urna nec tincidunt praesent semper feugiat nibh sed pulvinar. Sit amet consectetur adipiscing elit pellentesque habitant morbi. Eros donec ac odio tempor orci dapibus ultrices in iaculis. Tortor condimentum lacinia quis vel eros donec ac odio tempor.</p>\r\n\r\n<p>Eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Odio ut enim blandit volutpat. Mattis enim ut tellus elementum sagittis. Dapibus ultrices in iaculis nunc sed augue lacus. Porta non pulvinar neque laoreet suspendisse interdum consectetur. Amet mauris commodo quis imperdiet massa tincidunt nunc pulvinar sapien. Nulla posuere sollicitudin aliquam ultrices sagittis. Dignissim sodales ut eu sem integer vitae justo eget magna. Suspendisse sed nisi lacus sed viverra. Ac auctor augue mauris augue neque gravida. Tempor nec feugiat nisl pretium. Enim eu turpis egestas pretium aenean pharetra. Pellentesque sit amet porttitor eget dolor morbi non arcu. Commodo elit at imperdiet dui accumsan sit. Quis risus sed vulputate odio ut enim blandit. Nulla malesuada pellentesque elit eget gravida cum sociis natoque.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Purus in massa tempor nec. Dolor purus non enim praesent. Malesuada fames ac turpis egestas integer eget. Penatibus et magnis dis parturient montes nascetur ridiculus mus. Ut eu sem integer vitae justo eget. Ligula ullamcorper malesuada proin libero nunc consequat interdum varius sit. Leo vel fringilla est ullamcorper eget nulla facilisi. Dignissim convallis aenean et tortor. Proin gravida hendrerit lectus a.</p>\r\n\r\n<p>Cras fermentum odio eu feugiat. Eu turpis egestas pretium aenean pharetra magna ac placerat. Et malesuada fames ac turpis egestas integer eget aliquet. Sodales ut eu sem integer vitae justo eget magna fermentum. Est ullamcorper eget nulla facilisi etiam dignissim diam. Malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Mattis ullamcorper velit sed ullamcorper morbi. Mattis molestie a iaculis at erat pellentesque adipiscing commodo. Dignissim convallis aenean et tortor at risus. Vitae sapien pellentesque habitant morbi tristique. Pharetra vel turpis nunc eget lorem dolor sed viverra.</p>\r\n\r\n<p>Mauris augue neque gravida in fermentum. Volutpat lacus laoreet non curabitur gravida arcu ac tortor. Cras tincidunt lobortis feugiat vivamus at augue eget. Elit at imperdiet dui accumsan sit amet. Est ultricies integer quis auctor. Orci nulla pellentesque dignissim enim. Enim eu turpis egestas pretium aenean pharetra magna. Placerat in egestas erat imperdiet. Diam phasellus vestibulum lorem sed risus ultricies tristique nulla aliquet. Massa ultricies mi quis hendrerit dolor magna. Id diam maecenas ultricies mi eget mauris pharetra et ultrices. Commodo elit at imperdiet dui accumsan sit amet nulla. Vitae congue eu consequat ac felis donec et odio pellentesque. Sed ullamcorper morbi tincidunt ornare massa eget egestas purus. Urna nec tincidunt praesent semper feugiat nibh sed pulvinar. Sit amet consectetur adipiscing elit pellentesque habitant morbi. Eros donec ac odio tempor orci dapibus ultrices in iaculis. Tortor condimentum lacinia quis vel eros donec ac odio tempor.</p>','2020-03-14',1,'lorem-ipsumse43a26e2bc2e4e'),(7,'Lorem Ipsums','thumbnail/pn4.jpg','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Purus in massa tempor nec. Dolor purus non enim praesent. Malesuada fames ac turpis egestas integer eget. Penatibus et magnis dis parturient montes nascetur ridiculus mus. Ut eu sem integer vitae justo eget. Ligula ullamcorper malesuada proin libero nunc consequat interdum varius sit. Leo vel fringilla est ullamcorper eget nulla facilisi. Dignissim convallis aenean et tortor. Proin gravida hendrerit lectus a.</p>\r\n\r\n<p>Cras fermentum odio eu feugiat. Eu turpis egestas pretium aenean pharetra magna ac placerat. Et malesuada fames ac turpis egestas integer eget aliquet. Sodales ut eu sem integer vitae justo eget magna fermentum. Est ullamcorper eget nulla facilisi etiam dignissim diam. Malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Mattis ullamcorper velit sed ullamcorper morbi. Mattis molestie a iaculis at erat pellentesque adipiscing commodo. Dignissim convallis aenean et tortor at risus. Vitae sapien pellentesque habitant morbi tristique. Pharetra vel turpis nunc eget lorem dolor sed viverra.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Mauris augue neque gravida in fermentum. Volutpat lacus laoreet non curabitur gravida arcu ac tortor. Cras tincidunt lobortis feugiat vivamus at augue eget. Elit at imperdiet dui accumsan sit amet. Est ultricies integer quis auctor. Orci nulla pellentesque dignissim enim. Enim eu turpis egestas pretium aenean pharetra magna. Placerat in egestas erat imperdiet. Diam phasellus vestibulum lorem sed risus ultricies tristique nulla aliquet. Massa ultricies mi quis hendrerit dolor magna. Id diam maecenas ultricies mi eget mauris pharetra et ultrices. Commodo elit at imperdiet dui accumsan sit amet nulla. Vitae congue eu consequat ac felis donec et odio pellentesque. Sed ullamcorper morbi tincidunt ornare massa eget egestas purus. Urna nec tincidunt praesent semper feugiat nibh sed pulvinar. Sit amet consectetur adipiscing elit pellentesque habitant morbi. Eros donec ac odio tempor orci dapibus ultrices in iaculis. Tortor condimentum lacinia quis vel eros donec ac odio tempor.</p>\r\n\r\n<p>Eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Odio ut enim blandit volutpat. Mattis enim ut tellus elementum sagittis. Dapibus ultrices in iaculis nunc sed augue lacus. Porta non pulvinar neque laoreet suspendisse interdum consectetur. Amet mauris commodo quis imperdiet massa tincidunt nunc pulvinar sapien. Nulla posuere sollicitudin aliquam ultrices sagittis. Dignissim sodales ut eu sem integer vitae justo eget magna. Suspendisse sed nisi lacus sed viverra. Ac auctor augue mauris augue neque gravida. Tempor nec feugiat nisl pretium. Enim eu turpis egestas pretium aenean pharetra. Pellentesque sit amet porttitor eget dolor morbi non arcu. Commodo elit at imperdiet dui accumsan sit. Quis risus sed vulputate odio ut enim blandit. Nulla malesuada pellentesque elit eget gravida cum sociis natoque.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Purus in massa tempor nec. Dolor purus non enim praesent. Malesuada fames ac turpis egestas integer eget. Penatibus et magnis dis parturient montes nascetur ridiculus mus. Ut eu sem integer vitae justo eget. Ligula ullamcorper malesuada proin libero nunc consequat interdum varius sit. Leo vel fringilla est ullamcorper eget nulla facilisi. Dignissim convallis aenean et tortor. Proin gravida hendrerit lectus a.</p>\r\n\r\n<p>Cras fermentum odio eu feugiat. Eu turpis egestas pretium aenean pharetra magna ac placerat. Et malesuada fames ac turpis egestas integer eget aliquet. Sodales ut eu sem integer vitae justo eget magna fermentum. Est ullamcorper eget nulla facilisi etiam dignissim diam. Malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Mattis ullamcorper velit sed ullamcorper morbi. Mattis molestie a iaculis at erat pellentesque adipiscing commodo. Dignissim convallis aenean et tortor at risus. Vitae sapien pellentesque habitant morbi tristique. Pharetra vel turpis nunc eget lorem dolor sed viverra.</p>\r\n\r\n<p>Mauris augue neque gravida in fermentum. Volutpat lacus laoreet non curabitur gravida arcu ac tortor. Cras tincidunt lobortis feugiat vivamus at augue eget. Elit at imperdiet dui accumsan sit amet. Est ultricies integer quis auctor. Orci nulla pellentesque dignissim enim. Enim eu turpis egestas pretium aenean pharetra magna. Placerat in egestas erat imperdiet. Diam phasellus vestibulum lorem sed risus ultricies tristique nulla aliquet. Massa ultricies mi quis hendrerit dolor magna. Id diam maecenas ultricies mi eget mauris pharetra et ultrices. Commodo elit at imperdiet dui accumsan sit amet nulla. Vitae congue eu consequat ac felis donec et odio pellentesque. Sed ullamcorper morbi tincidunt ornare massa eget egestas purus. Urna nec tincidunt praesent semper feugiat nibh sed pulvinar. Sit amet consectetur adipiscing elit pellentesque habitant morbi. Eros donec ac odio tempor orci dapibus ultrices in iaculis. Tortor condimentum lacinia quis vel eros donec ac odio tempor.</p>','2020-03-14',1,'lorem-ipsums53e109587eed45');
/*!40000 ALTER TABLE `berita_berita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `berita_berita_kategori`
--

DROP TABLE IF EXISTS `berita_berita_kategori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `berita_berita_kategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `berita_id` int(11) NOT NULL,
  `kategory_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `berita_berita_Kategory_berita_id_kategory_id_512f37e0_uniq` (`berita_id`,`kategory_id`),
  KEY `berita_berita_katego_kategory_id_87b25ade_fk_berita_ka` (`kategory_id`),
  CONSTRAINT `berita_berita_katego_kategory_id_87b25ade_fk_berita_ka` FOREIGN KEY (`kategory_id`) REFERENCES `berita_kategory` (`id`),
  CONSTRAINT `berita_berita_kategori_berita_id_f5941ad6_fk_berita_berita_id` FOREIGN KEY (`berita_id`) REFERENCES `berita_berita` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `berita_berita_kategori`
--

LOCK TABLES `berita_berita_kategori` WRITE;
/*!40000 ALTER TABLE `berita_berita_kategori` DISABLE KEYS */;
INSERT INTO `berita_berita_kategori` VALUES (1,1,1),(2,1,2),(3,2,1),(4,3,1),(5,3,2),(6,4,2),(7,5,2),(8,6,1),(9,6,2),(10,7,2);
/*!40000 ALTER TABLE `berita_berita_kategori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `berita_kategory`
--

DROP TABLE IF EXISTS `berita_kategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `berita_kategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `berita_kategory`
--

LOCK TABLES `berita_kategory` WRITE;
/*!40000 ALTER TABLE `berita_kategory` DISABLE KEYS */;
INSERT INTO `berita_kategory` VALUES (1,'sport'),(2,'hiburan');
/*!40000 ALTER TABLE `berita_kategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-03-14 03:19:03.826660','1','Kategory object (1)',1,'[{\"added\": {}}]',8,1),(2,'2020-03-14 03:19:35.923174','2','Kategory object (2)',1,'[{\"added\": {}}]',8,1),(3,'2020-03-14 03:24:10.058951','1','Lorem Ipsum',1,'[{\"added\": {}}]',7,1),(4,'2020-03-14 03:30:10.544393','1','Lorem Ipsum',2,'[]',7,1),(5,'2020-03-14 03:51:17.720037','1','Lorem Ipsum',2,'[]',7,1),(6,'2020-03-14 04:30:34.171894','2','Lorem Ipsum',1,'[{\"added\": {}}]',7,1),(7,'2020-03-14 04:32:52.526008','2','Lorem Ipsum',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(8,'2020-03-14 08:10:36.659955','3','The standard Lorem Ipsum passage, used since the 1500s',1,'[{\"added\": {}}]',7,1),(9,'2020-03-14 10:12:24.050714','4','Lorem Ipsum',1,'[{\"added\": {}}]',7,1),(10,'2020-03-14 10:12:55.901051','5','Lorem ipsum',1,'[{\"added\": {}}]',7,1),(11,'2020-03-14 10:14:06.133237','6','lorem ipsum',1,'[{\"added\": {}}]',7,1),(12,'2020-03-14 10:14:47.544621','7','Lorem Ipsum',1,'[{\"added\": {}}]',7,1),(13,'2020-03-14 10:23:11.845374','6','lorem ipsums',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',7,1),(14,'2020-03-14 10:24:58.023107','5','Lorem ipsum',2,'[]',7,1),(15,'2020-03-14 10:25:03.193888','5','Lorem ipsum',2,'[]',7,1),(16,'2020-03-14 10:25:10.229132','3','The standard Lorem Ipsum passage, used since the 1500s',2,'[]',7,1),(17,'2020-03-14 10:25:21.549513','5','Lorem ipsum',2,'[]',7,1),(18,'2020-03-14 10:25:53.975622','7','Lorem Ipsums',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',7,1),(19,'2020-03-14 10:26:22.113086','5','Lorem ipsum',2,'[]',7,1),(20,'2020-03-14 10:26:29.156376','4','Lorem Ipsum',2,'[]',7,1),(21,'2020-03-14 23:29:07.271210','1','Lorem Ipsum',1,'[{\"added\": {}}]',9,1),(22,'2020-03-14 23:29:21.967665','2','Lorem Ipsum',1,'[{\"added\": {}}]',9,1),(23,'2020-03-14 23:29:37.945587','3','Lorem Ipsum',1,'[{\"added\": {}}]',9,1),(24,'2020-03-14 23:29:48.428116','4','Lorem Ipsum',1,'[{\"added\": {}}]',9,1),(25,'2020-03-14 23:29:59.297578','5','Lorem Ipsum',1,'[{\"added\": {}}]',9,1),(26,'2020-03-14 23:30:10.001008','6','Lorem Ipsum',1,'[{\"added\": {}}]',9,1),(27,'2020-03-14 23:30:22.646840','7','Lorem Ipsum',1,'[{\"added\": {}}]',9,1),(28,'2020-03-14 23:30:35.481941','8','Lorem Ipsum',1,'[{\"added\": {}}]',9,1),(29,'2020-03-15 03:31:05.083422','1','Best Perform PAGAR NUSA Spesial Hari Santri Nasional',1,'[{\"added\": {}}]',10,1),(30,'2020-03-15 03:34:25.215373','2','Keber Saman pagar Nusa ranting sumberberas',1,'[{\"added\": {}}]',10,1),(31,'2020-03-15 03:35:31.154597','3','Pagar Nusa Minhajut Thullab - BC 313 Banyuwangi, in Actions',1,'[{\"added\": {}}]',10,1),(32,'2020-03-15 03:36:24.835299','4','ganda Pencak SIlat Pagar Nusa Minhajut thullab Banyuwangi',1,'[{\"added\": {}}]',10,1),(33,'2020-03-15 03:37:48.584493','5','Ngweri 😱 Atraksi Berb4haya Black Cobra Pagar Nusa',1,'[{\"added\": {}}]',10,1),(34,'2020-03-15 03:38:45.844063','6','zaki pagar nusa minhajut thullab banyuwangi, pengalaman pertama',1,'[{\"added\": {}}]',10,1),(35,'2020-03-15 03:39:16.081177','7','Farizz PN Minhajut Thullab SMK minhajut Thullab Banyuwangi',1,'[{\"added\": {}}]',10,1),(36,'2020-03-15 03:39:48.808940','8','Pengalaman Farizz Yg Berharga',1,'[{\"added\": {}}]',10,1),(37,'2020-03-15 04:39:32.987272','1','Tanding bola',1,'[{\"added\": {}}]',11,1),(38,'2020-03-15 06:01:23.203419','2','Latihan',1,'[{\"added\": {}}]',11,1),(39,'2020-03-15 06:01:48.398949','3','Separigan',1,'[{\"added\": {}}]',11,1),(40,'2020-03-15 06:02:19.309671','4','sabong',1,'[{\"added\": {}}]',11,1),(41,'2020-03-15 06:02:40.500373','5','gladi resik',1,'[{\"added\": {}}]',11,1),(42,'2020-03-15 06:02:58.198981','6','Persiapan Kejurnas',1,'[{\"added\": {}}]',11,1),(43,'2020-03-15 11:37:15.219770','6','Persiapan Kejurnas',2,'[{\"changed\": {\"fields\": [\"start\"]}}]',11,1),(44,'2020-03-15 11:37:19.780096','5','gladi resik',2,'[{\"changed\": {\"fields\": [\"start\"]}}]',11,1),(45,'2020-03-15 11:37:23.918861','4','sabong',2,'[{\"changed\": {\"fields\": [\"start\"]}}]',11,1),(46,'2020-03-15 11:37:30.194198','4','sabong',2,'[]',11,1),(47,'2020-03-15 11:37:34.207615','3','Separigan',2,'[{\"changed\": {\"fields\": [\"start\"]}}]',11,1),(48,'2020-03-15 12:41:21.985958','1','Diah',1,'[{\"added\": {}}]',12,1),(49,'2020-03-15 12:45:29.891844','2','Anton',1,'[{\"added\": {}}]',12,1),(50,'2020-03-15 12:45:43.172369','2','Anton',2,'[]',12,1),(51,'2020-03-15 12:45:56.856338','1','Diah',2,'[]',12,1),(52,'2020-03-15 12:46:03.351654','1','Diah',2,'[]',12,1),(53,'2020-03-15 12:46:15.428430','2','Anton',2,'[]',12,1),(54,'2020-03-15 12:48:02.773802','2','Anton',2,'[{\"changed\": {\"fields\": [\"status\"]}}]',12,1),(55,'2020-03-15 12:48:13.504040','1','Diah',2,'[{\"changed\": {\"fields\": [\"status\"]}}]',12,1),(56,'2020-03-15 12:48:40.353937','3','Lukman',1,'[{\"added\": {}}]',12,1),(57,'2020-03-15 12:49:23.491046','4','Mita',1,'[{\"added\": {}}]',12,1),(58,'2020-03-15 12:49:51.479148','5','Komarun',1,'[{\"added\": {}}]',12,1),(59,'2020-03-15 12:50:02.980927','2','Anton',2,'[{\"changed\": {\"fields\": [\"jabatan\"]}}]',12,1),(60,'2020-03-15 13:27:37.586721','5','Komarun',2,'[{\"changed\": {\"fields\": [\"status\"]}}]',12,1),(61,'2020-03-15 13:27:43.980509','4','Mita',2,'[{\"changed\": {\"fields\": [\"status\"]}}]',12,1),(62,'2020-03-15 13:27:51.770089','3','Lukman',2,'[{\"changed\": {\"fields\": [\"status\"]}}]',12,1),(63,'2020-03-15 13:27:58.674388','2','Anton',2,'[{\"changed\": {\"fields\": [\"status\"]}}]',12,1),(64,'2020-03-15 13:28:04.964394','1','Diah',2,'[{\"changed\": {\"fields\": [\"status\"]}}]',12,1),(65,'2020-03-15 13:28:11.405243','5','Komarun',2,'[{\"changed\": {\"fields\": [\"status\"]}}]',12,1),(66,'2020-03-15 13:28:18.962227','4','Mita',2,'[{\"changed\": {\"fields\": [\"status\"]}}]',12,1),(67,'2020-03-15 13:28:26.385938','1','Diah',2,'[{\"changed\": {\"fields\": [\"status\"]}}]',12,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(12,'anggota','anggota'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'berita','berita'),(8,'berita','kategory'),(5,'contenttypes','contenttype'),(9,'galery','image'),(10,'galery','video'),(11,'jadwal','jadwal'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-03-14 02:59:08.316942'),(2,'auth','0001_initial','2020-03-14 02:59:08.748932'),(3,'admin','0001_initial','2020-03-14 02:59:08.857664'),(4,'admin','0002_logentry_remove_auto_add','2020-03-14 02:59:08.877095'),(5,'admin','0003_logentry_add_action_flag_choices','2020-03-14 02:59:08.904775'),(6,'contenttypes','0002_remove_content_type_name','2020-03-14 02:59:09.000974'),(7,'auth','0002_alter_permission_name_max_length','2020-03-14 02:59:09.061149'),(8,'auth','0003_alter_user_email_max_length','2020-03-14 02:59:09.112078'),(9,'auth','0004_alter_user_username_opts','2020-03-14 02:59:09.133741'),(10,'auth','0005_alter_user_last_login_null','2020-03-14 02:59:09.205651'),(11,'auth','0006_require_contenttypes_0002','2020-03-14 02:59:09.211672'),(12,'auth','0007_alter_validators_add_error_messages','2020-03-14 02:59:09.249398'),(13,'auth','0008_alter_user_username_max_length','2020-03-14 02:59:09.337050'),(14,'auth','0009_alter_user_last_name_max_length','2020-03-14 02:59:09.409089'),(15,'auth','0010_user_role_user','2020-03-14 02:59:09.463653'),(16,'auth','0011_remove_user_role_user','2020-03-14 02:59:09.533245'),(17,'auth','0012_user_role_user','2020-03-14 02:59:09.583491'),(18,'auth','0013_remove_user_role_user','2020-03-14 02:59:09.652416'),(19,'auth','0014_user_role_user','2020-03-14 02:59:09.713412'),(20,'auth','0015_remove_user_role_user','2020-03-14 02:59:09.782219'),(21,'auth','0016_user_role_user','2020-03-14 02:59:09.840465'),(22,'auth','0017_remove_user_role_user','2020-03-14 02:59:09.906235'),(23,'auth','0018_user_role_user','2020-03-14 02:59:09.976483'),(24,'auth','0019_remove_user_role_user','2020-03-14 02:59:10.057673'),(25,'auth','0020_user_role_user','2020-03-14 02:59:10.089033'),(26,'auth','0021_remove_user_role_user','2020-03-14 02:59:10.145324'),(27,'auth','0022_user_role_user','2020-03-14 02:59:10.189371'),(28,'auth','0023_remove_user_role_user','2020-03-14 02:59:10.258121'),(29,'auth','0024_user_role_user','2020-03-14 02:59:10.323163'),(30,'auth','0025_remove_user_role_user','2020-03-14 02:59:10.392944'),(31,'auth','0026_user_role_user','2020-03-14 02:59:10.440286'),(32,'auth','0027_remove_user_role_user','2020-03-14 02:59:10.503096'),(33,'auth','0028_user_role_user','2020-03-14 02:59:10.554065'),(34,'auth','0029_remove_user_role_user','2020-03-14 02:59:10.623208'),(35,'auth','0030_user_role_user','2020-03-14 02:59:10.680284'),(36,'auth','0031_remove_user_role_user','2020-03-14 02:59:10.742201'),(37,'berita','0001_initial','2020-03-14 02:59:10.865296'),(38,'sessions','0001_initial','2020-03-14 02:59:10.907238'),(39,'berita','0002_berita_penulis','2020-03-14 03:29:15.877558'),(40,'berita','0003_auto_20200314_0345','2020-03-14 03:45:47.721009'),(41,'berita','0004_auto_20200314_0350','2020-03-14 03:50:51.288851'),(42,'berita','0005_berita_slug','2020-03-14 04:21:51.979537'),(43,'berita','0006_auto_20200314_0422','2020-03-14 04:23:00.832967'),(44,'galery','0001_initial','2020-03-14 10:34:08.252789'),(45,'galery','0002_auto_20200315_0328','2020-03-15 03:29:05.191466'),(46,'jadwal','0001_initial','2020-03-15 04:34:49.468398'),(47,'jadwal','0002_auto_20200315_0438','2020-03-15 04:38:20.062748'),(48,'jadwal','0003_auto_20200315_0600','2020-03-15 06:01:01.941594'),(49,'jadwal','0004_auto_20200315_0612','2020-03-15 06:13:00.370819'),(50,'anggota','0001_initial','2020-03-15 12:33:14.586405'),(51,'anggota','0002_auto_20200315_1236','2020-03-15 12:36:16.248881'),(52,'anggota','0003_auto_20200315_1243','2020-03-15 12:43:08.059826'),(53,'anggota','0004_auto_20200315_1244','2020-03-15 12:44:45.828703'),(54,'anggota','0005_auto_20200315_1245','2020-03-15 12:45:24.288022');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('bx84azbx7ahp0qvo9uymxsjsaq59ii7n','MWQyYjAwYzUwODQ3NDNhNDI0MGQ3Yjc1ZDVhOTA2NTU4MjJmNDgxMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMWE3ZWQ1YmM5NGZlYmE0YjM5OGIzM2EzZTE5ZDVmYzVjYzM2YTMzIn0=','2020-04-03 10:56:14.628884'),('f1i1r55l0q1o6bf8yz9p8nwao2aylr1s','MWQyYjAwYzUwODQ3NDNhNDI0MGQ3Yjc1ZDVhOTA2NTU4MjJmNDgxMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMWE3ZWQ1YmM5NGZlYmE0YjM5OGIzM2EzZTE5ZDVmYzVjYzM2YTMzIn0=','2020-04-04 12:55:06.687754'),('gbwnyfq1xn5kfwypo4pfytz06mc9oiel','MWQyYjAwYzUwODQ3NDNhNDI0MGQ3Yjc1ZDVhOTA2NTU4MjJmNDgxMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMWE3ZWQ1YmM5NGZlYmE0YjM5OGIzM2EzZTE5ZDVmYzVjYzM2YTMzIn0=','2020-03-29 17:16:24.594970'),('tmxftxcahdjz6tm85b8bw95ebrl0dbcm','MWQyYjAwYzUwODQ3NDNhNDI0MGQ3Yjc1ZDVhOTA2NTU4MjJmNDgxMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMWE3ZWQ1YmM5NGZlYmE0YjM5OGIzM2EzZTE5ZDVmYzVjYzM2YTMzIn0=','2020-04-01 13:50:07.500188');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galery_image`
--

DROP TABLE IF EXISTS `galery_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galery_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galery_image`
--

LOCK TABLES `galery_image` WRITE;
/*!40000 ALTER TABLE `galery_image` DISABLE KEYS */;
INSERT INTO `galery_image` VALUES (1,'Lorem Ipsum','gallery/1.jpg'),(2,'Lorem Ipsum','gallery/2.jpg'),(3,'Lorem Ipsum','gallery/3.jpg'),(4,'Lorem Ipsum','gallery/4.jpg'),(5,'Lorem Ipsum','gallery/4_KVSMsR2.jpg'),(6,'Lorem Ipsum','gallery/5.jpg'),(7,'Lorem Ipsum','gallery/6.jpg'),(8,'Lorem Ipsum','gallery/7.jpg');
/*!40000 ALTER TABLE `galery_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galery_video`
--

DROP TABLE IF EXISTS `galery_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galery_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `url_video` varchar(1200) NOT NULL,
  `youtube_id` varchar(122) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galery_video`
--

LOCK TABLES `galery_video` WRITE;
/*!40000 ALTER TABLE `galery_video` DISABLE KEYS */;
INSERT INTO `galery_video` VALUES (1,'Best Perform PAGAR NUSA Spesial Hari Santri Nasional','https://www.youtube.com/watch?v=tydubMT09AY','tydubMT09AY'),(2,'Keber Saman pagar Nusa ranting sumberberas','https://www.youtube.com/watch?v=pLPju4kMOSI','pLPju4kMOSI'),(3,'Pagar Nusa Minhajut Thullab - BC 313 Banyuwangi, in Actions','https://www.youtube.com/watch?v=C6vCT2OeIBs','C6vCT2OeIBs'),(4,'ganda Pencak SIlat Pagar Nusa Minhajut thullab Banyuwangi','https://www.youtube.com/watch?v=6kHdrHgMxfg','6kHdrHgMxfg'),(5,'Ngweri 😱 Atraksi Berb4haya Black Cobra Pagar Nusa','https://www.youtube.com/watch?v=Ci2j87p_2x4','Ci2j87p_2x4'),(6,'zaki pagar nusa minhajut thullab banyuwangi, pengalaman pertama','https://www.youtube.com/watch?v=9u7NJXkfigs','9u7NJXkfigs'),(7,'Farizz PN Minhajut Thullab SMK minhajut Thullab Banyuwangi','https://www.youtube.com/watch?v=f08dowhZ93c','f08dowhZ93c'),(8,'Pengalaman Farizz Yg Berharga','https://www.youtube.com/watch?v=p9IMTC4JHNg','p9IMTC4JHNg');
/*!40000 ALTER TABLE `galery_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jadwal_jadwal`
--

DROP TABLE IF EXISTS `jadwal_jadwal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jadwal_jadwal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jadwal_jadwal`
--

LOCK TABLES `jadwal_jadwal` WRITE;
/*!40000 ALTER TABLE `jadwal_jadwal` DISABLE KEYS */;
INSERT INTO `jadwal_jadwal` VALUES (1,'Tanding bola','2020-03-15','2020-03-26'),(2,'Latihan','2020-03-20',NULL),(3,'Separigan','2020-03-15','2020-03-15'),(4,'sabong','2020-03-15',NULL),(5,'gladi resik','2020-03-15',NULL),(6,'Persiapan Kejurnas','2020-03-15',NULL);
/*!40000 ALTER TABLE `jadwal_jadwal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-21 20:00:43
