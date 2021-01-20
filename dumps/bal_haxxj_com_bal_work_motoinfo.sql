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
-- Table structure for table `bal_work_motoinfo`
--

DROP TABLE IF EXISTS `bal_work_motoinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bal_work_motoinfo` (
  `moto_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '车辆ID',
  `moto_platenumber` varchar(45) DEFAULT NULL COMMENT '车牌号码',
  `moto_type` varchar(45) DEFAULT NULL COMMENT '车型',
  `moto_tare` double DEFAULT NULL COMMENT '车辆皮重',
  `moto_date` int(11) DEFAULT NULL COMMENT '获取时间',
  `moto_tarecode` varchar(45) DEFAULT NULL COMMENT '获取皮重单号',
  `moto_operator` varchar(45) DEFAULT NULL COMMENT '录入员',
  `company_id` int(10) DEFAULT NULL COMMENT '数据归属',
  PRIMARY KEY (`moto_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='车辆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bal_work_motoinfo`
--

LOCK TABLES `bal_work_motoinfo` WRITE;
/*!40000 ALTER TABLE `bal_work_motoinfo` DISABLE KEYS */;
INSERT INTO `bal_work_motoinfo` VALUES (1,'苏H6L669','小型货车',1600,2021,'H234567',NULL,NULL),(2,'','大型货车',0,NULL,NULL,NULL,1),(3,'akw','小型货车',112,NULL,NULL,NULL,2),(4,'_无_','小型货车',1200,1609598845,'J202101020004','2',NULL),(5,'_无_','小型货车',1040,1609600437,'J202101020009','企业管理员',2),(6,'苏H6L669','小型货车',1600,1609600963,'C202101020001','企业管理员',2);
/*!40000 ALTER TABLE `bal_work_motoinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-20 22:01:14
