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
-- Table structure for table `bal_custom_custom`
--

DROP TABLE IF EXISTS `bal_custom_custom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bal_custom_custom` (
  `custom_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '客户ID',
  `custom_code` varchar(45) DEFAULT NULL COMMENT '客户编号',
  `custom_name` varchar(45) DEFAULT NULL COMMENT '客户名称',
  `custom_customtype` varchar(45) DEFAULT NULL COMMENT '客户类型',
  `custom_businessarea` varchar(45) DEFAULT NULL COMMENT '业务区',
  `custom_address` varchar(45) DEFAULT NULL COMMENT '客户地址',
  `custom_tel` varchar(45) DEFAULT NULL COMMENT '客户电话',
  `custom_conact` varchar(45) DEFAULT NULL COMMENT '联系人',
  `custom_IDentity` varchar(20) DEFAULT NULL COMMENT '身份证号',
  `custom_status` enum('0','1','2') DEFAULT NULL COMMENT '客户状态:0=正常,1=暂停,2=解约',
  `custom_remark` tinytext COMMENT '备注',
  `custom_account` double DEFAULT '0' COMMENT '账户余额',
  `company_id` int(10) DEFAULT NULL COMMENT '数据归属',
  PRIMARY KEY (`custom_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='客户信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bal_custom_custom`
--

LOCK TABLES `bal_custom_custom` WRITE;
/*!40000 ALTER TABLE `bal_custom_custom` DISABLE KEYS */;
INSERT INTO `bal_custom_custom` VALUES (1,'01001','飞耀水果','V地产菜农户','地产菜交易区','1区101号','123456789','张',NULL,'0',NULL,192,1),(2,'01001','李得全蔬菜批发','地产菜农户','地产菜交易区','1区102号','15358691188','李得全','320821197812050110','0','我自己的',13,2),(3,'01002','飞耀水果','采购客户','地产菜交易区','1区101号','15358691188','李得全','','0','',154,2);
/*!40000 ALTER TABLE `bal_custom_custom` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-02  9:48:35
