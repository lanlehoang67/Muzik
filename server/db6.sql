-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: muzik-server_development
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

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
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `albums` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `artist_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_albums_on_artist_id` (`artist_id`),
  CONSTRAINT `fk_rails_124a79559a` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (1,1,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Songs/Em+Cua+Ngay+Hom+Qua+-+Son+Tung+M-TP.mp3','2019-10-25 15:53:00','2019-10-25 15:53:00'),(2,2,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Already+Dead+(Omae+Wa+Mou)+-+Lil+Boom%2C+Deadman+Shibito.jpg','2019-10-25 15:53:49','2019-10-25 15:53:49'),(3,3,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Asphyxia+(Tokyo+Ghoul+Re+Opening)+-+Co+Shu+Nie.jpg','2019-10-25 15:53:50','2019-10-25 15:53:50'),(4,4,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Ato+Hitotsu+-+Funky+Monkey+Babys.jpg','2019-10-25 15:53:50','2019-10-25 15:53:50'),(5,5,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Adamas+(Sword+Art+Online+Alicization+Opening)+-+Lisa.jpg','2019-10-25 15:53:50','2019-10-25 15:53:50'),(6,57,'Courage','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Resolution+-+Tomatsu+Haruka.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(7,70,'Date a live the movie','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/TrustInYou-SweetARMS.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(8,23,'From the edge','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/From+The+Edge+-+FictionJunction%2C+Lisa.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(9,24,'Fuyu No Hanashi','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Fuyu+No+Hanashi+(Live)+-+Yano+Shougo.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(10,40,'harehareya Sou ','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Kokoronashi+-+Sou.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(11,27,'harehareya flower','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Harehare+Ya+-+Flower.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(12,8,'MoMoland song','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/BBoom+BBoom+(Japanese+Version)+-+Momoland.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(13,7,'Sakura song','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Anata+Ni+Daette+Yokatta+-+Sakura.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(14,61,'Sakurairomaukoro','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Sakurairo+Mau+Koro+-+Mika+Nakashima.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(15,6,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Ai+Wo+Komete+Umi+-+Aoi+Teshima.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(16,9,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Best+Friend+-+Kana+Nishino.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(17,10,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Bird+-+EXO.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(18,11,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Blue+Sapphire+-+Hiroomi+Tosaka.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(19,12,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Boy+With+Luv+(Japanese+Version)+-+BTS+(Bangtan+Boys).jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(20,13,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Brave+Shine+-+Aimer.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(21,14,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Chime+-+Phototropic.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(22,15,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Courage+(Sword+Art+Online+II+Opening+2)+-+Tomatsu+Haruka.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(23,16,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Cutlery+(Self+Cover)+-+Yuukisan.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(24,17,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Date+A+Live+-+Sweet+ARMS.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(25,18,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Doraemon+No+Uta+-+KUMIKO+OUSUGI.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(26,19,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Doraemon+No+Uta+-+Satoko+Yamano.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(27,20,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Electric+Angel+-+Hatsune+Miku.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(28,21,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Endless+Tears+-+Maiko+Nakamura%2C+Cliff+Edge.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(29,22,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Fall+In+Love+-+U-KISS.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(30,25,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Gokuraku+Joudo+-+Garnidelia.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(31,26,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Grand+Escape+(Extended+Edit)+-+RADWIMPS%2C+Toko+Miura.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(32,28,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Hirari+Hirari+-+Hatsune+Miku.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(33,29,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Hoshi+Ga+Furu+Yume+(Fate-Grand+Order+Babylonia+Ending)+-+Eir+Aoi.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(34,30,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Ichinen+Nikagetsu+Hatsuka+-+BRIGHT.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(35,31,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Inferno+(Enen+No+Shouboutai+Opening)+-+Mrs.Green+Apple.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(36,32,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Izanagi+-+Hideya+Tawada.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(37,33,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Kamado+Tanjirou+No+Uta+-+Go+Shiina%2C+Nami+Nakagawa.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(38,34,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Kanojo+Wa+Tabi+Ni+Deru+-+Sana.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(39,35,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Kaze+No+Kioku+-+Anri+Kumaki.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(40,36,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Kill+This+Love+(Japan+Version)+-+BlackPink.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(41,37,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Kimi+Dattara+-+Happy+Birthday.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(42,38,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Kimi+Ga+Iru+Sekai+E+-+Kano.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(43,39,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/KokoNiIru-AiobahnRionos.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(44,41,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Last_Heroes_-_Dimensions.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(45,42,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Lemon+-+Kobasolo%2C+Harutya.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(46,43,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Lemon-KenshiYonezu.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(47,44,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Ly+%C4%90a%CC%89o+Chi+Ca+-+Toyama+Nao.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(48,45,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Ly+%C4%90%E1%BA%A3o+Chi+Ca+-+TOMO.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(49,46,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Masayume+Chasing+-+BoA.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(50,47,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Nandemonaiya+(MAXONE+Remix)+-+Mone+Kamishiraishi.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(51,48,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Nandemonaiya+-+Konamilk.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(52,49,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Natsu+Ga+Koborete+Yuku+-+Hiiragi+Minami.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(53,50,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Nijio+Wataru+Heiwaga+Kita+-+Chara.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(54,51,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Orange+(Shigatsu+Wa+Kimi+No+Uso+Ending+2)+(Anime+Version)+-+7!!.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(55,52,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Papapa+(Oresuki+Opening)+-+Shuka+Saito.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(56,53,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Phantom+Joke+(Fate+Grand+Order+Babylonia+Opening)+-+Unison+Square+Garden.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(57,54,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Planet+-+Lambsey.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(58,55,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Real+X+Eyez+-+J%2C+Takanori+Nishikawa.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(59,56,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Resister+-+ASCA.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(60,58,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/RetroVision+-+Hope.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(61,59,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Rise+-+Madkid.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(62,60,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Rob+The+Frontier+(Nanatsu+No+Taizai+Kamigami+No+Gekirin+Opening)+-+UVERworld.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(63,62,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Sangenshoku+(Dr.Stone+Opening+2)+-+Pelican+Fanclub.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(64,63,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Sayonara+I+Love+You+-+Cliff+Edge%2C+Jya+Me.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(65,64,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Sayonara+No+Natsu+-+Aoi+Teshima.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(66,65,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Senbonzakura+-+Hatsune+Miku.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(67,66,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Silhouette+-+Kana-Boon.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(68,67,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/SobaNiIruyo-Elisa.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(69,68,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Some+(Japanese+Version)+-+BolBBalgan4.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(70,69,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/T-Mass+-+Ignoring+My+Heart.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(71,71,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Uchiage+Hanabi+-+Daoko%2C+Kenshi+Yonezu.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(72,72,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Umbrella+-+Itou+Kashitarou.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(73,73,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Where+To+Go+My+Love+(Piano+Version)+-+Kokia.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(74,74,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Yasashii+Kimochi+(Karakai+Jouzu+No+Takagi-San+2+Ending+8)+-+Rie+Takahashi.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(75,75,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Yellow+-+Yoh+Kamiyama.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(76,76,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Yume+To+Hazakura+-+Kurenai.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(77,77,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Anh+%C4%90%E1%BB%A3i+Em+%C4%90%C6%B0%E1%BB%A3c+Kh%C3%B4ng.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(78,78,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/I+Adore+You.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(79,79,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/M%E1%BB%99ng+H%E1%BB%93i+Tru+Ti%C3%AAn+.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(80,80,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/%C4%90%C3%AAm+N%C6%B0%E1%BB%9Bc+M%E1%BA%AFt+.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(81,81,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/I+Adore+You.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(82,82,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/M%E1%BA%A1c+V%E1%BA%A5n+Quy+K%E1%BB%B3+.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(83,83,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Nh%E1%BA%A5t+%C4%90%E1%BB%8Bnh+Ph%E1%BA%A3i+B%E1%BA%A3o+Tr%E1%BB%8Dng.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(84,84,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Ng%C3%B4i+Sao.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(85,85,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Nh%E1%BA%AFm+M%E1%BA%AFt+L%E1%BA%A1i+Trong+%C4%90%C3%AAm.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(86,86,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/T%C4%A9nh+Nguy%E1%BB%87t+T%C6%B0+.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(87,87,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Walk+On+Water.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(88,88,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/C%C3%B4+Th%E1%BA%AFm+Kh%C3%B4ng+V%E1%BB%81.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(89,89,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/%C4%90i+%C4%90u+%C4%90%C6%B0a+%C4%90i.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(90,90,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Em+G%C3%AC+%C6%A0i.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(91,91,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Gi%C3%A1+Nh%C6%B0+C%C3%B4+%E1%BA%A4y+Ch%C6%B0a+Xu%E1%BA%A5t+Hi%E1%BB%87n.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(92,92,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Kh%C3%B3+V%E1%BA%BD+N%E1%BB%A5+C%C6%B0%E1%BB%9Di.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(93,93,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/H%E1%BA%BFt+Th%C6%B0%C6%A1ng+C%E1%BA%A1n+Nh%E1%BB%9B.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08'),(94,94,'single','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/L%C3%A0+B%E1%BA%A1n+Kh%C3%B4ng+Th%E1%BB%83+Y%C3%AAu.jpg','2019-10-25 17:05:08','2019-10-25 17:05:08');
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2019-11-13 15:23:36','2019-11-13 15:23:36');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artists` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `begin_year` int(11) DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `approved` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES (1,'Sơn Tùng mtp','0000-00-00 00:00:00',0,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/45481.jpg','2019-10-23 05:48:55','2019-10-23 05:48:55',NULL),(2,'LilBoomDeadmanShibito',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Already+Dead+(Omae+Wa+Mou)+-+Lil+Boom%2C+Deadman+Shibito.jpg','2019-10-24 19:48:01','2019-10-24 19:48:01',NULL),(3,'CoShuNie',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Asphyxia+(Tokyo+Ghoul+Re+Opening)+-+Co+Shu+Nie.jpg','2019-10-24 19:48:02','2019-10-24 19:48:02',NULL),(4,'FunkeyMonkeyBabys',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Ato+Hitotsu+-+Funky+Monkey+Babys.jpg','2019-10-24 19:48:03','2019-10-24 19:48:03',NULL),(5,'Lisa',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Adamas+(Sword+Art+Online+Alicization+Opening)+-+Lisa.jpg','2019-10-24 19:48:04','2019-10-24 19:48:04',NULL),(6,'Aoi Teshima',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Ai+Wo+Komete+Umi+-+Aoi+Teshima.jpg','2019-10-24 19:48:05','2019-10-24 19:48:05',NULL),(7,'Sakura',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Anata+Ni+Daette+Yokatta+-+Sakura.jpg','2019-10-24 19:48:06','2019-10-24 19:48:06',NULL),(8,'Momoland',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/BBoom+BBoom+(Japanese+Version)+-+Momoland.jpg','2019-10-24 19:48:07','2019-10-24 19:48:07',NULL),(9,'Kana Nishino',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Best+Friend+-+Kana+Nishino.jpg','2019-10-24 19:48:08','2019-10-24 19:48:08',NULL),(10,'EXO',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Bird+-+EXO.jpg','2019-10-24 19:48:09','2019-10-24 19:48:09',NULL),(11,'Hiroomi Tosaka',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Blue+Sapphire+-+Hiroomi+Tosaka.jpg','2019-10-24 19:48:10','2019-10-24 19:48:10',NULL),(12,'BTS (Bangtan Boys)',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Boy+With+Luv+(Japanese+Version)+-+BTS+(Bangtan+Boys).jpg','2019-10-24 19:48:11','2019-10-24 19:48:11',NULL),(13,'Aimer',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Brave+Shine+-+Aimer.jpg','2019-10-24 19:48:12','2019-10-24 19:48:12',NULL),(14,'Phototropic','0000-00-00 00:00:00',NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Chime+-+Phototropic.jpg','2019-10-24 19:48:13','2019-10-24 19:48:13',NULL),(15,'Tomatsu Haruka',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Courage+(Sword+Art+Online+II+Opening+2)+-+Tomatsu+Haruka.jpg','2019-10-24 19:48:14','2019-10-24 19:48:14',NULL),(16,'Yuukisan',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Cutlery+(Self+Cover)+-+Yuukisan.jpg','2019-10-24 19:48:15','2019-10-24 19:48:15',NULL),(17,'Sweet ARMS',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Date+A+Live+-+Sweet+ARMS.jpg','2019-10-24 19:48:16','2019-10-24 19:48:16',NULL),(18,'KUMIKO OUSUGI',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Doraemon+No+Uta+-+KUMIKO+OUSUGI.jpg','2019-10-24 19:48:17','2019-10-24 19:48:17',NULL),(19,'Satoko Yamano',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Doraemon+No+Uta+-+Satoko+Yamano.jpg','2019-10-24 19:48:18','2019-10-24 19:48:18',NULL),(20,'Hatsune Miku',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Electric+Angel+-+Hatsune+Miku.jpg','2019-10-24 19:48:19','2019-10-24 19:48:19',NULL),(21,'Maiko Nakamura, Cliff Edge',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Endless+Tears+-+Maiko+Nakamura%2C+Cliff+Edge.jpg','2019-10-24 19:48:20','2019-10-24 19:48:20',NULL),(22,'U-KISS',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Fall+In+Love+-+U-KISS.jpg','2019-10-24 19:48:21','2019-10-24 19:48:21',NULL),(23,'FictionJunction, Lisa',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/From+The+Edge+-+FictionJunction%2C+Lisa.jpg','2019-10-24 19:48:22','2019-10-24 19:48:22',NULL),(24,'Yano Shougo',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Fuyu+No+Hanashi+(Live)+-+Yano+Shougo.jpg','2019-10-24 19:48:23','2019-10-24 19:48:23',NULL),(25,'Garnidelia',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Gokuraku+Joudo+-+Garnidelia.jpg','2019-10-24 19:48:24','2019-10-24 19:48:24',NULL),(26,'RADWIMPS, Toko Miura',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Grand+Escape+(Extended+Edit)+-+RADWIMPS%2C+Toko+Miura.jpg','2019-10-24 19:48:25','2019-10-24 19:48:25',NULL),(27,'Flower',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Harehare+Ya+-+Flower.jpg','2019-10-24 19:48:26','2019-10-24 19:48:26',NULL),(28,'Hatsune Miku',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Hirari+Hirari+-+Hatsune+Miku.jpg','2019-10-24 19:48:27','2019-10-24 19:48:27',NULL),(29,'Eir Aoi',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Hoshi+Ga+Furu+Yume+(Fate-Grand+Order+Babylonia+Ending)+-+Eir+Aoi.jpg','2019-10-24 19:48:28','2019-10-24 19:48:28',NULL),(30,'BRIGHT',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Ichinen+Nikagetsu+Hatsuka+-+BRIGHT.jpg','2019-10-24 19:48:29','2019-10-24 19:48:29',NULL),(31,'Mrs.Green Apple',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Inferno+(Enen+No+Shouboutai+Opening)+-+Mrs.Green+Apple.jpg','2019-10-24 19:48:30','2019-10-24 19:48:30',NULL),(32,'Hideya Tawada',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Izanagi+-+Hideya+Tawada.jpg','2019-10-24 19:48:31','2019-10-24 19:48:31',NULL),(33,'Go Shiina, Nami Nakagawa',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Kamado+Tanjirou+No+Uta+-+Go+Shiina%2C+Nami+Nakagawa.jpg','2019-10-24 19:48:32','2019-10-24 19:48:32',NULL),(34,'Sana',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Kanojo+Wa+Tabi+Ni+Deru+-+Sana.jpg','2019-10-24 19:48:33','2019-10-24 19:48:33',NULL),(35,'Anri Kumaki',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Kaze+No+Kioku+-+Anri+Kumaki.jpg','2019-10-24 19:48:34','2019-10-24 19:48:34',NULL),(36,'BlackPink',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Kill+This+Love+(Japan+Version)+-+BlackPink.jpg','2019-10-24 19:48:35','2019-10-24 19:48:35',NULL),(37,'Happy Birthday',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Kimi+Dattara+-+Happy+Birthday.jpg','2019-10-24 19:48:36','2019-10-24 19:48:36',NULL),(38,'Kano',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Kimi+Ga+Iru+Sekai+E+-+Kano.jpg','2019-10-24 19:48:37','2019-10-24 19:48:37',NULL),(39,'AiobahnRionos',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/KokoNiIru-AiobahnRionos.jpg','2019-10-24 19:48:38','2019-10-24 19:48:38',NULL),(40,'Sou',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Kokoronashi+-+Sou.jpg','2019-10-24 19:48:39','2019-10-24 19:48:39',NULL),(41,'Dimensions',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Last_Heroes_-_Dimensions.jpg','2019-10-24 19:48:40','2019-10-24 19:48:40',NULL),(42,'Kobasolo, Harutya',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Lemon+-+Kobasolo%2C+Harutya.jpg','2019-10-24 19:48:41','2019-10-24 19:48:41',NULL),(43,'KenshiYonezu',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Lemon-KenshiYonezu.jpg','2019-10-24 19:48:42','2019-10-24 19:48:42',NULL),(44,'Toyama Nao',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Ly+%C4%90a%CC%89o+Chi+Ca+-+Toyama+Nao.jpg','2019-10-24 19:48:43','2019-10-24 19:48:43',NULL),(45,'TOMO',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Ly+%C4%90%E1%BA%A3o+Chi+Ca+-+TOMO.jpg','2019-10-24 19:48:44','2019-10-24 19:48:44',NULL),(46,'BoA',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Masayume+Chasing+-+BoA.jpg','2019-10-24 19:48:45','2019-10-24 19:48:45',NULL),(47,'Mone Kamishiraishi',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Nandemonaiya+(MAXONE+Remix)+-+Mone+Kamishiraishi.jpg','2019-10-24 19:48:46','2019-10-24 19:48:46',NULL),(48,'Konamilk',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Nandemonaiya+-+Konamilk.jpg','2019-10-24 19:48:47','2019-10-24 19:48:47',NULL),(49,'Hiiragi Minami',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Natsu+Ga+Koborete+Yuku+-+Hiiragi+Minami.jpg','2019-10-24 19:48:48','2019-10-24 19:48:48',NULL),(50,'Chara',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Nijio+Wataru+Heiwaga+Kita+-+Chara.jpg','2019-10-24 19:48:49','2019-10-24 19:48:49',NULL),(51,'7!!',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Orange+(Shigatsu+Wa+Kimi+No+Uso+Ending+2)+(Anime+Version)+-+7!!.jpg','2019-10-24 19:48:50','2019-10-24 19:48:50',NULL),(52,'Shuka Saito',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Papapa+(Oresuki+Opening)+-+Shuka+Saito.jpg','2019-10-24 19:48:51','2019-10-24 19:48:51',NULL),(53,'Unison Square Garden',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Phantom+Joke+(Fate+Grand+Order+Babylonia+Opening)+-+Unison+Square+Garden.jpg','2019-10-24 19:48:52','2019-10-24 19:48:52',NULL),(54,'Lambsey',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Planet+-+Lambsey.jpg','2019-10-24 19:48:53','2019-10-24 19:48:53',NULL),(55,'J, Takanori Nishikawa',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Real+X+Eyez+-+J%2C+Takanori+Nishikawa.jpg','2019-10-24 19:48:54','2019-10-24 19:48:54',NULL),(56,'ASCA',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Resister+-+ASCA.jpg','2019-10-24 19:48:55','2019-10-24 19:48:55',NULL),(57,'Tomatsu Haruka',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Resolution+-+Tomatsu+Haruka.jpg','2019-10-24 19:48:56','2019-10-24 19:48:56',NULL),(58,'Hope',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/RetroVision+-+Hope.jpg','2019-10-24 19:48:57','2019-10-24 19:48:57',NULL),(59,'Madkid',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Rise+-+Madkid.jpg','2019-10-24 19:48:58','2019-10-24 19:48:58',NULL),(60,'UVERworld',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Rob+The+Frontier+(Nanatsu+No+Taizai+Kamigami+No+Gekirin+Opening)+-+UVERworld.jpg','2019-10-24 19:48:59','2019-10-24 19:48:59',NULL),(61,'Mika Nakashima',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Sakurairo+Mau+Koro+-+Mika+Nakashima.jpg','2019-10-24 19:49:00','2019-10-24 19:49:00',NULL),(62,'Pelican Fanclub',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Sangenshoku+(Dr.Stone+Opening+2)+-+Pelican+Fanclub.jpg','2019-10-24 19:49:00','2019-10-24 19:49:00',NULL),(63,'Cliff Edge, Jya Me',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Sayonara+I+Love+You+-+Cliff+Edge%2C+Jya+Me.jpg','2019-10-24 19:49:00','2019-10-24 19:49:00',NULL),(64,'Aoi Teshima',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Sayonara+No+Natsu+-+Aoi+Teshima.jpg','2019-10-24 19:49:01','2019-10-24 19:49:01',NULL),(65,'Hatsune Miku',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Senbonzakura+-+Hatsune+Miku.jpg','2019-10-24 19:49:01','2019-10-24 19:49:01',NULL),(66,'Kana-Boon',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Silhouette+-+Kana-Boon.jpg','2019-10-24 19:49:01','2019-10-24 19:49:01',NULL),(67,'Elisa',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/SobaNiIruyo-Elisa.jpg','2019-10-24 19:49:02','2019-10-24 19:49:02',NULL),(68,'BolBBalgan4',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Some+(Japanese+Version)+-+BolBBalgan4.jpg','2019-10-24 19:49:02','2019-10-24 19:49:02',NULL),(69,'T-Mass',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/T-Mass+-+Ignoring+My+Heart.jpg','2019-10-24 19:49:02','2019-10-24 19:49:02',NULL),(70,'SweetARMS',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/TrustInYou-SweetARMS.jpg','2019-10-24 19:49:03','2019-10-24 19:49:03',NULL),(71,'Daoko, Kenshi Yonezu',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Uchiage+Hanabi+-+Daoko%2C+Kenshi+Yonezu.jpg','2019-10-24 19:49:03','2019-10-24 19:49:03',NULL),(72,'Itou Kashitarou',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Umbrella+-+Itou+Kashitarou.jpg','2019-10-24 19:49:03','2019-10-24 19:49:03',NULL),(73,'Kokia',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Where+To+Go+My+Love+(Piano+Version)+-+Kokia.jpg','2019-10-24 19:49:03','2019-10-24 19:49:03',NULL),(74,'Rie Takahashi',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Yasashii+Kimochi+(Karakai+Jouzu+No+Takagi-San+2+Ending+8)+-+Rie+Takahashi.jpg','2019-10-24 19:49:04','2019-10-24 19:49:04',NULL),(75,'Yoh Kamiyama',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Yellow+-+Yoh+Kamiyama.jpg','2019-10-24 19:49:04','2019-10-24 19:49:04',NULL),(76,'Kurenai',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Yume+To+Hazakura+-+Kurenai.jpg','2019-10-24 19:49:04','2019-10-24 19:49:04',NULL),(77,'Mỹ Tâm',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Anh+%C4%90%E1%BB%A3i+Em+%C4%90%C6%B0%E1%BB%A3c+Kh%C3%B4ng.jpg','2019-10-24 19:49:05','2019-10-24 19:49:05',NULL),(78,'Truong Van Loi',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/I+Adore+You.jpg','2019-10-24 19:49:05','2019-10-24 19:49:05',NULL),(79,'Ly Ngoc Cuong',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/M%E1%BB%99ng+H%E1%BB%93i+Tru+Ti%C3%AAn+.jpg','2019-10-24 19:49:05','2019-10-24 19:49:05',NULL),(80,'Gian Hoang Diec',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/%C4%90%C3%AAm+N%C6%B0%E1%BB%9Bc+M%E1%BA%AFt+.jpg','2019-10-24 19:49:06','2019-10-24 19:49:06',NULL),(81,'Dich Duong Thien Ti',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/I+Adore+You.jpg','2019-10-24 19:49:06','2019-10-24 19:49:06',NULL),(82,'Tuong Tuyet Nhi',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/M%E1%BA%A1c+V%E1%BA%A5n+Quy+K%E1%BB%B3+.jpg','2019-10-24 19:49:06','2019-10-24 19:49:06',NULL),(83,'Dai Trang',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Nh%E1%BA%A5t+%C4%90%E1%BB%8Bnh+Ph%E1%BA%A3i+B%E1%BA%A3o+Tr%E1%BB%8Dng.jpg','2019-10-24 19:49:07','2019-10-24 19:49:07',NULL),(84,'Luu Ban Hao',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Ng%C3%B4i+Sao.jpg','2019-10-24 19:49:07','2019-10-24 19:49:07',NULL),(85,'Linh Sieu',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Nh%E1%BA%AFm+M%E1%BA%AFt+L%E1%BA%A1i+Trong+%C4%90%C3%AAm.jpg','2019-10-24 19:49:07','2019-10-24 19:49:07',NULL),(86,'Diep Huyen Thanh',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/T%C4%A9nh+Nguy%E1%BB%87t+T%C6%B0+.jpg','2019-10-24 19:49:08','2019-10-24 19:49:08',NULL),(87,'Dang Tu Ky',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Walk+On+Water.jpg','2019-10-24 19:49:08','2019-10-24 19:49:08',NULL),(88,'Phat Ho_ Jokes Bii_ T',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/C%C3%B4+Th%E1%BA%AFm+Kh%C3%B4ng+V%E1%BB%81.jpg','2019-10-24 19:49:08','2019-10-24 19:49:08',NULL),(89,'Bich Phuong',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/%C4%90i+%C4%90u+%C4%90%C6%B0a+%C4%90i.jpg','2019-10-24 19:49:09','2019-10-24 19:49:09',NULL),(90,'Jack_ K-ICM',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Em+G%C3%AC+%C6%A0i.jpg','2019-10-24 19:49:09','2019-10-24 19:49:09',NULL),(91,'Miu Le',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Gi%C3%A1+Nh%C6%B0+C%C3%B4+%E1%BA%A4y+Ch%C6%B0a+Xu%E1%BA%A5t+Hi%E1%BB%87n.jpg','2019-10-24 19:49:09','2019-10-24 19:49:09',NULL),(92,'Dat G_ Du Uyen',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Kh%C3%B3+V%E1%BA%BD+N%E1%BB%A5+C%C6%B0%E1%BB%9Di.jpg','2019-10-24 19:49:10','2019-10-24 19:49:10',NULL),(93,'Duc Phuc',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/H%E1%BA%BFt+Th%C6%B0%C6%A1ng+C%E1%BA%A1n+Nh%E1%BB%9B.jpg','2019-10-24 19:49:10','2019-10-24 19:49:10',NULL),(94,'Lou Hoang',NULL,NULL,NULL,NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/L%C3%A0+B%E1%BA%A1n+Kh%C3%B4ng+Th%E1%BB%83+Y%C3%AAu.jpg','2019-10-24 19:49:10','2019-10-24 19:49:10',NULL);
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `song_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_comments_on_user_id` (`user_id`),
  KEY `index_comments_on_song_id` (`song_id`),
  CONSTRAINT `fk_rails_03de2dc08c` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_rails_9bdaf62174` FOREIGN KEY (`song_id`) REFERENCES `songs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emotions`
--

DROP TABLE IF EXISTS `emotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emotions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `song_name` varchar(255) DEFAULT NULL,
  `song_src` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emotions`
--

LOCK TABLES `emotions` WRITE;
/*!40000 ALTER TABLE `emotions` DISABLE KEYS */;
/*!40000 ALTER TABLE `emotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `venue` text,
  `phone_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `description` text,
  `paid` tinyint(1) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `hot_picture` varchar(255) DEFAULT NULL,
  `type_event` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genres` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'happy','happy song',NULL,'2019-11-13 15:34:49','2019-11-13 15:34:49'),(2,'sad','sad song',NULL,'2019-11-13 15:34:57','2019-11-13 15:34:57'),(3,'angry','angry song',NULL,'2019-11-13 15:35:05','2019-11-13 15:35:05'),(4,'chill','chill song',NULL,'2019-11-13 15:35:14','2019-11-13 15:35:14');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history_songs`
--

DROP TABLE IF EXISTS `history_songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history_songs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `song_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_history_songs_on_user_id` (`user_id`),
  KEY `index_history_songs_on_song_id` (`song_id`),
  CONSTRAINT `fk_rails_47a884e7ae` FOREIGN KEY (`song_id`) REFERENCES `songs` (`id`),
  CONSTRAINT `fk_rails_51adf187a9` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history_songs`
--

LOCK TABLES `history_songs` WRITE;
/*!40000 ALTER TABLE `history_songs` DISABLE KEYS */;
/*!40000 ALTER TABLE `history_songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lyrics`
--

DROP TABLE IF EXISTS `lyrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lyrics` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `start_time` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `song_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_lyrics_on_song_id` (`song_id`),
  CONSTRAINT `fk_rails_a7a77bd903` FOREIGN KEY (`song_id`) REFERENCES `songs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lyrics`
--

LOCK TABLES `lyrics` WRITE;
/*!40000 ALTER TABLE `lyrics` DISABLE KEYS */;
/*!40000 ALTER TABLE `lyrics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_favorite_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_notifications_on_user_favorite_id` (`user_favorite_id`),
  KEY `index_notifications_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_87bdc8df03` FOREIGN KEY (`user_favorite_id`) REFERENCES `user_favorites` (`id`),
  CONSTRAINT `fk_rails_b080fb4855` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `play_list_songs`
--

DROP TABLE IF EXISTS `play_list_songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `play_list_songs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `play_list_id` bigint(20) DEFAULT NULL,
  `song_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_play_list_songs_on_play_list_id` (`play_list_id`),
  KEY `index_play_list_songs_on_song_id` (`song_id`),
  CONSTRAINT `fk_rails_4846a2fcce` FOREIGN KEY (`play_list_id`) REFERENCES `play_lists` (`id`),
  CONSTRAINT `fk_rails_d8c0692883` FOREIGN KEY (`song_id`) REFERENCES `songs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `play_list_songs`
--

LOCK TABLES `play_list_songs` WRITE;
/*!40000 ALTER TABLE `play_list_songs` DISABLE KEYS */;
/*!40000 ALTER TABLE `play_list_songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `play_lists`
--

DROP TABLE IF EXISTS `play_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `play_lists` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_play_lists_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_1c5e8fc15e` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `play_lists`
--

LOCK TABLES `play_lists` WRITE;
/*!40000 ALTER TABLE `play_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `play_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20191113082753'),('20191113082832'),('20191113082938'),('20191113083011'),('20191113083340'),('20191114130044');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song_genres`
--

DROP TABLE IF EXISTS `song_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song_genres` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `song_id` bigint(20) DEFAULT NULL,
  `genre_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_song_genres_on_song_id` (`song_id`),
  KEY `index_song_genres_on_genre_id` (`genre_id`),
  CONSTRAINT `fk_rails_2667afbc1f` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`),
  CONSTRAINT `fk_rails_d21ad1d041` FOREIGN KEY (`song_id`) REFERENCES `songs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song_genres`
--

LOCK TABLES `song_genres` WRITE;
/*!40000 ALTER TABLE `song_genres` DISABLE KEYS */;
INSERT INTO `song_genres` VALUES (1,4,3,'2019-11-14 17:24:54','2019-11-14 17:24:54'),(2,3,2,'2019-11-14 17:25:00','2019-11-14 17:25:00'),(3,1,3,'2019-11-14 17:25:09','2019-11-14 17:25:09');
/*!40000 ALTER TABLE `song_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `songs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES (1,'Ignite',NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Songs/IgniteSwordArtOnlineIIOpening-EirAoi-3313964.mp3','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Ignite+(Sword+Art+Online+II+Opening+1)+-+Eir+Aoi.jpg','2019-11-14 17:15:09','2019-11-14 17:15:09'),(3,'Hazy Moon',NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Songs/HazyMoon-HatsuneMiku-1689454.mp3','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Hazy+Moon.jpg','2019-11-14 17:17:31','2019-11-14 17:17:31'),(4,'Gurenge',NULL,'https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Songs/Gurenge-Lisa-5948391.mp3','https://lehoanglan.s3-ap-northeast-1.amazonaws.com/Images/Gurenge-Lisa.jpg','2019-11-14 17:22:33','2019-11-14 17:22:33');
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_favorites`
--

DROP TABLE IF EXISTS `user_favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_favorites` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `favorite_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_favorites_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_25ed4cb388` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_favorites`
--

LOCK TABLES `user_favorites` WRITE;
/*!40000 ALTER TABLE `user_favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_songs`
--

DROP TABLE IF EXISTS `user_songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_songs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `song_id` bigint(20) DEFAULT NULL,
  `genre_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_songs_on_user_id` (`user_id`),
  KEY `index_user_songs_on_song_id` (`song_id`),
  KEY `index_user_songs_on_genre_id` (`genre_id`),
  CONSTRAINT `fk_rails_0464e14546` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_rails_86672a3780` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`),
  CONSTRAINT `fk_rails_88ff7daa6d` FOREIGN KEY (`song_id`) REFERENCES `songs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_songs`
--

LOCK TABLES `user_songs` WRITE;
/*!40000 ALTER TABLE `user_songs` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,NULL,NULL,NULL,NULL,'2019-11-13 15:33:32','2019-11-13 15:33:32','landeptrai@gmail.com','$2a$11$ljecLndF98PMysA8aaGpz.9ujKd7MJIlnD7/sT1D6HKKGlzypEpva',NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `artist_id` bigint(20) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `length` varchar(255) DEFAULT NULL,
  `video_file_name` varchar(255) DEFAULT NULL,
  `video_content_type` varchar(255) DEFAULT NULL,
  `video_file_size` int(11) DEFAULT NULL,
  `video_updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `picture_file_name` varchar(255) DEFAULT NULL,
  `picture_content_type` varchar(255) DEFAULT NULL,
  `picture_file_size` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_videos_on_artist_id` (`artist_id`),
  CONSTRAINT `fk_rails_efd16c3d65` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-21 18:41:07
