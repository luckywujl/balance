-- MySQL dump 10.13  Distrib 8.0.19, for Linux (x86_64)
--
-- Host: localhost    Database: bal_haxxj_com
-- ------------------------------------------------------
-- Server version	8.0.16

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
-- Table structure for table `bal_custom_customtype`
--

DROP TABLE IF EXISTS `bal_custom_customtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bal_custom_customtype` (
  `customtype_ID` int(10) NOT NULL AUTO_INCREMENT COMMENT '客户类型ID',
  `customtype` varchar(45) DEFAULT NULL COMMENT '客户类型',
  `company_id` varchar(45) DEFAULT NULL COMMENT '数据归属',
  `customtype_attribute` enum('0','1') DEFAULT NULL COMMENT '客户类型属性:0=供方,1=购方',
  PRIMARY KEY (`customtype_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='客户类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bal_custom_customtype`
--

LOCK TABLES `bal_custom_customtype` WRITE;
/*!40000 ALTER TABLE `bal_custom_customtype` DISABLE KEYS */;
INSERT INTO `bal_custom_customtype` VALUES (1,'地产菜农户','2','0'),(2,'业主商户','1','0'),(3,'采购客户','1','1'),(4,'采购客户','2','1'),(5,'业主商户','2','0');
/*!40000 ALTER TABLE `bal_custom_customtype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-22  8:07:15
