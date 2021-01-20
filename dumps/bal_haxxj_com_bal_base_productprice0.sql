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
-- Table structure for table `bal_base_productprice`
--

DROP TABLE IF EXISTS `bal_base_productprice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bal_base_productprice` (
  `productprice_ID` int(10) NOT NULL AUTO_INCREMENT COMMENT '货品价格ID',
  `productprice_product_id` int(10) DEFAULT NULL COMMENT '货品ID',
  `productprice_producttype_id` int(10) DEFAULT NULL COMMENT '货品品类ID',
  `productprice_customtype_id` int(10) DEFAULT NULL COMMENT '客户类别',
  `productprice_unit` varchar(45) DEFAULT NULL COMMENT '货品单位',
  `productprice_price` double DEFAULT NULL COMMENT '货品价格',
  `productprice_begin_time` int(11) DEFAULT NULL COMMENT '开始进场时间',
  `productprice_end_time` int(11) DEFAULT NULL COMMENT '截止进场时间',
  `company_id` int(10) DEFAULT NULL COMMENT '数据归属',
  PRIMARY KEY (`productprice_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='货品价格';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bal_base_productprice`
--

LOCK TABLES `bal_base_productprice` WRITE;
/*!40000 ALTER TABLE `bal_base_productprice` DISABLE KEYS */;
INSERT INTO `bal_base_productprice` VALUES (7,3,1,1,'公斤',0.5,1606651200,1606651200,2),(8,3,1,1,'公斤',0.5,1606651632,1606651632,2);
/*!40000 ALTER TABLE `bal_base_productprice` ENABLE KEYS */;
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
