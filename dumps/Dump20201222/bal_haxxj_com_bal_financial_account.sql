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
-- Table structure for table `bal_financial_account`
--

DROP TABLE IF EXISTS `bal_financial_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bal_financial_account` (
  `account_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '收支ID',
  `account_code` varchar(45) DEFAULT NULL COMMENT '收支单号',
  `account_date` int(11) DEFAULT NULL COMMENT '发生时间',
  `account_type` enum('0','1') DEFAULT NULL COMMENT '收支类型:0=收入,1=支出',
  `account_object` varchar(45) DEFAULT NULL COMMENT '收支事由',
  `account_custom_id` int(10) DEFAULT NULL COMMENT '付款人',
  `account_amount` double DEFAULT NULL COMMENT '收支金额',
  `account_paymentmode` varchar(45) DEFAULT NULL COMMENT '支付方式',
  `account_operator` varchar(45) DEFAULT NULL COMMENT '经手人',
  `account_statement_code` varchar(45) DEFAULT NULL COMMENT '结算单号',
  `account_remark` tinytext COMMENT '收支备注',
  `company_id` int(10) DEFAULT NULL COMMENT '数据归属',
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='收支明细';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bal_financial_account`
--

LOCK TABLES `bal_financial_account` WRITE;
/*!40000 ALTER TABLE `bal_financial_account` DISABLE KEYS */;
INSERT INTO `bal_financial_account` VALUES (1,'',NULL,'0','客户补卡',2,20,'现金','2001','','补卡',NULL),(2,NULL,NULL,'0','客户补卡',1,1,'刷卡','Admin',NULL,'',1),(3,NULL,NULL,'0','客户补卡',2,1,'刷卡','Admin',NULL,'',1),(4,'A202012150001',1607997833,'0','客户补卡',1,1,'刷卡','Admin',NULL,'fff ',1),(5,'A202012150001',1608000767,'0','补卡',2,120,'现金','企业管理员',NULL,'办理副卡',2),(6,'R202012210001',1608484963,'','客户充值',2,120,'现金','Admin',NULL,'10',1),(7,'R202012210002',1608485018,'','客户充值',2,100,'微信','Admin',NULL,'',1),(8,'R202012210003',1608485187,'','客户充值',1,120,'支付宝','Admin',NULL,'',1),(9,'A202012210001',1608485803,'0','客户补卡',2,20,'现金','Admin',NULL,'',1),(10,'R202012210004',1608485877,'0','客户充值',2,120,'刷卡','Admin',NULL,'',1),(12,'R202012210005',1608486536,'0','客户充值',1,120,'刷卡','Admin',NULL,'',1),(13,'R202012210006',1608486684,'0','客户充值',1,12,'微信','Admin',NULL,'1',1),(14,'R202012210007',1608486953,'0','客户充值',1,40,'支付宝','Admin',NULL,'172',1),(15,'R202012210008',1608486966,'0','客户充值',1,20,'支付宝','Admin',NULL,'192',1),(16,'R202012210009',1608488029,'0','客户充值',2,1,'现金','Admin',NULL,'1',1),(17,'R202012210010',1608488046,'0','客户充值',3,12,'现金','Admin',NULL,'12',1),(18,'R202012210011',1608488111,'0','客户充值',0,0,'','Admin',NULL,NULL,1),(19,'R202012210012',1608488121,'0','客户充值',3,0,'','Admin',NULL,'12',1),(20,'R202012210013',1608488150,'0','客户充值',3,0,'','Admin',NULL,'12',1),(21,'R202012210014',1608488537,'0','客户充值',0,0,'','Admin',NULL,NULL,1),(22,'R202012210015',1608488538,'0','客户充值',0,0,'','Admin',NULL,NULL,1),(23,'R202012210016',1608488544,'0','客户充值',0,0,'','Admin',NULL,NULL,1),(24,'R202012210017',1608488596,'0','客户充值',2,12,'刷卡','Admin',NULL,'13',1),(25,'R202012210018',1608488672,'0','客户充值',3,23,'微信','Admin',NULL,'35',1);
/*!40000 ALTER TABLE `bal_financial_account` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-22  8:07:16
