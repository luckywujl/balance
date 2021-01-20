-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
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
-- Table structure for table `bal_custom_card`
--

DROP TABLE IF EXISTS `bal_custom_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bal_custom_card` (
  `card_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '卡信息ID',
  `card_code` varchar(45) NOT NULL COMMENT '卡面编号',
  `card_encode` varchar(45) NOT NULL COMMENT '卡内码',
  `card_custom_id` int(10) DEFAULT NULL COMMENT '客户ID',
  `createtime` int(11) DEFAULT NULL COMMENT '开卡时间',
  `company_id` int(10) DEFAULT NULL COMMENT '数据归属',
  `card_status` enum('0','1','2') DEFAULT NULL COMMENT '卡状态:0=正常,1=挂失,2=作废',
  PRIMARY KEY (`card_id`),
  UNIQUE KEY `card_encode_UNIQUE` (`card_encode`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='卡信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bal_custom_card`
--

LOCK TABLES `bal_custom_card` WRITE;
/*!40000 ALTER TABLE `bal_custom_card` DISABLE KEYS */;
INSERT INTO `bal_custom_card` VALUES (1,'800001','123456789',1,1606666146,1,'0'),(2,'800002','123',2,1606666845,2,'0'),(3,'800003','456',3,1606667024,2,'0'),(5,'800004','789',1,1607092170,1,'0');
/*!40000 ALTER TABLE `bal_custom_card` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-20 22:01:15
