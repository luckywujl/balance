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
-- Table structure for table `bal_financial_statement`
--

DROP TABLE IF EXISTS `bal_financial_statement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bal_financial_statement` (
  `statement_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '结算清单ID',
  `statement_code` varchar(45) DEFAULT NULL COMMENT '结算单号',
  `statement_date` int(11) DEFAULT NULL COMMENT '结算日期',
  `statement_plate_number` varchar(45) DEFAULT NULL COMMENT '车牌号',
  `statement_mototype` varchar(45) DEFAULT NULL COMMENT '车型',
  `statement_product_id` int(10) DEFAULT NULL COMMENT '货品ID',
  `statement_custom_id` int(10) DEFAULT NULL COMMENT '客户ID',
  `statement_customtype` varchar(45) DEFAULT NULL COMMENT '客户类型',
  `statement_GW` double DEFAULT NULL COMMENT '毛重',
  `statement_tare` double DEFAULT NULL COMMENT '皮重',
  `statement_NW` double DEFAULT NULL COMMENT '净重',
  `statement_product_price` double DEFAULT NULL COMMENT '计费单价',
  `statement_discount` double DEFAULT NULL COMMENT '折扣',
  `statement_cost` double DEFAULT NULL COMMENT '实际费用',
  `statement_pay` double DEFAULT NULL COMMENT '支付金额',
  `statement_intime` int(11) DEFAULT NULL COMMENT '入场时间',
  `statement_outtime` int(11) DEFAULT NULL COMMENT '出场时间',
  `statement_remark` varchar(45) DEFAULT NULL COMMENT '备注',
  `statement_indetail_id` int(10) DEFAULT NULL COMMENT '进场单ID',
  `statement_outdetail_id` varchar(45) DEFAULT NULL COMMENT '出场单ID',
  `statement_checker` varchar(45) DEFAULT NULL COMMENT '检验人员',
  `statement_status` enum('0','1') DEFAULT NULL COMMENT '结算单状态:0=未清算,1=已清算',
  `company_id` int(10) DEFAULT NULL COMMENT '数据归属',
  PRIMARY KEY (`statement_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='结算清单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bal_financial_statement`
--

LOCK TABLES `bal_financial_statement` WRITE;
/*!40000 ALTER TABLE `bal_financial_statement` DISABLE KEYS */;
INSERT INTO `bal_financial_statement` VALUES (1,'S202012080001',1607369833,'无','马自达三轮车',2,3,'供应商',39340,123456,-84116,0.02,50,1234.56,1234.56,1607291360,1607369833,'0.02+50',150,NULL,NULL,'0',1),(2,'S202012080002',1607867202,'苏H6L669','中型货车',3,3,'采购商',39340,51000,-11660,0.02,100,233.2,230,1607359661,1607371145,'0.02+100',152,NULL,'','0',1),(3,'S202012080003',1607489665,'苏H6L669','中型货车',2,3,'采购商',456,1500,-1044,0.02,100,20.88,20.88,1607359710,1607372402,'0.02+100',153,NULL,'','0',1),(4,'S202012080004',1607372480,'苏H6L669','中型货车',3,3,'采购商',39340,39340,0,0.01,50,20.88,20.88,1607359734,1607372480,'0.02+100',154,'0','','0',1),(5,'S202012080005',1607372533,'苏H6L669','中型货车',3,3,'采购商',39340,39360,-20,0.02,50,0.4,0.4,1607372402,1607372532,'0.02+100',155,'0','','0',1),(6,'S202012080006',1607372564,'苏H6L669','中型货车',2,3,'采购商',39340,45200,-5860,0.02,100,117.2,115,1607359877,1607372563,'0.02+100',156,'0','','0',1),(39,'S202012090001',1608458638,'苏H6L671','小型货车',3,2,'地产菜农户',5689.5,4000,1689.5,0.2,100,337.9,225,1607478848,1607478940,'0.2+100',278,'279','企业管理员','1',2),(40,'S202012090002',1608458634,'苏H6L671','小型货车',3,2,'地产菜农户',5689.5,2100,3589.5,0.1,50,179.48,175,1607481741,1607490227,'0.2+100',288,'291','企业管理员','1',2),(41,'S202012120001',1608458631,'无','小型货车',3,1,'采购商',1200,100,1100,0.2,100,220,220,1607783360,1607784397,'0.2+100',292,'293','2001','1',2);
/*!40000 ALTER TABLE `bal_financial_statement` ENABLE KEYS */;
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