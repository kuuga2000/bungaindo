-- MySQL dump 10.13  Distrib 5.1.41, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: wsdlmerchant
-- ------------------------------------------------------
-- Server version	5.1.41-3ubuntu12.6

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
-- Table structure for table `inputlist`
--

DROP TABLE IF EXISTS `inputlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inputlist` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `merchantid` varchar(13) DEFAULT NULL,
  `storeid` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inputlist`
--

LOCK TABLES `inputlist` WRITE;
/*!40000 ALTER TABLE `inputlist` DISABLE KEYS */;
INSERT INTO `inputlist` VALUES (41,'11358647','4CA9D4828A400'),(42,'11358647','4CA9DA2337D6A'),(43,'11358647','4CA9DC0BD546D'),(44,'11358647','4CA9DC210E2CE'),(45,'11358647','4CAA931E194FD'),(46,'11358647','4CAA947968F05'),(47,'11358647','4CAA9563CAA28'),(48,'11358647','4CAA95924F05A'),(49,'11358647','4CAA9970BBAB4'),(50,'11358647','4CAAA077C3C17'),(51,'11358647','4CAAE4DF8E6C3'),(52,'11358647','4CAAE64F67474'),(53,'11358647','4CAAECDCB5D68'),(54,'11358647','4CAB1085558F1'),(55,'11358647','4CAD3BD939D0A'),(56,'11358647','4CAD7CBCE490C');
/*!40000 ALTER TABLE `inputlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentconfirm`
--

DROP TABLE IF EXISTS `paymentconfirm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paymentconfirm` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `trxid` varchar(14) NOT NULL,
  `merchantid` varchar(13) DEFAULT NULL,
  `storeid` varchar(18) DEFAULT NULL,
  `trxdate` bigint(20) DEFAULT NULL,
  `nominal` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`trxid`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentconfirm`
--

LOCK TABLES `paymentconfirm` WRITE;
/*!40000 ALTER TABLE `paymentconfirm` DISABLE KEYS */;
INSERT INTO `paymentconfirm` VALUES (24,'4CA9D48F30322','11358647','4CA9D4828A400',123456789,91000),(25,'4CA9D9ED9C33C','11358647','4CA9DA2337D6A',123456789,91000),(26,'4CA9DBE36E645','11358647','4CA9DC210E2CE',123456789,91000),(27,'4CAA92E75B640','11358647','4CAA931E194FD',123456789,91000),(28,'4CAA94347CEC6','11358647','4CAA947968F05',123456789,91000),(29,'4CAA9524AA4F3','11358647','4CAA9563CAA28',123456789,91000),(30,'4CAA9932C153C','11358647','4CAA9970BBAB4',123456789,91000);
/*!40000 ALTER TABLE `paymentconfirm` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-10-14  4:12:31