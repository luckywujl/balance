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
-- Table structure for table `bal_work_iodetail`
--

DROP TABLE IF EXISTS `bal_work_iodetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bal_work_iodetail` (
  `iodetail_ID` int(10) NOT NULL AUTO_INCREMENT COMMENT '进/出明细ID',
  `iodetail_code` varchar(45) DEFAULT NULL COMMENT '单据编号',
  `iodetail_plate_number` varchar(45) DEFAULT NULL COMMENT '车牌号',
  `iodetail_mototype` varchar(45) DEFAULT NULL COMMENT '车型',
  `iodetail_iotype` enum('0','1') DEFAULT NULL COMMENT '进出类型:0=出;1=入',
  `iodetail_iotime` int(11) DEFAULT NULL COMMENT '进/出时间',
  `iodetail_channel` varchar(45) DEFAULT NULL COMMENT '进/出通道',
  `iodetail_card_id` varchar(45) DEFAULT NULL COMMENT '卡号',
  `iodetail_card_code` varchar(45) DEFAULT NULL COMMENT '卡号',
  `iodetail_custom_id` int(10) DEFAULT NULL COMMENT '客户ID',
  `iodetail_product_id` int(10) DEFAULT NULL COMMENT '货品名称ID',
  `iodetail_weight` double DEFAULT NULL COMMENT '重量(kg)',
  `iodetail_checker` varchar(45) DEFAULT NULL COMMENT '查验人员',
  `iodetail_operator` varchar(45) DEFAULT NULL COMMENT '进/出场操作员',
  `iodetail_remark` varchar(45) DEFAULT NULL COMMENT '进/出备注',
  `iodetail_status` enum('0','1','2') DEFAULT NULL COMMENT '状态:0=在场,1=离场,2=异常',
  `iodetail_statement_ID` int(10) DEFAULT NULL COMMENT '结算单ID',
  `company_id` int(10) DEFAULT NULL COMMENT '数据归属',
  PRIMARY KEY (`iodetail_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=294 DEFAULT CHARSET=utf8 COMMENT='进/出明细';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bal_work_iodetail`
--

LOCK TABLES `bal_work_iodetail` WRITE;
/*!40000 ALTER TABLE `bal_work_iodetail` DISABLE KEYS */;
INSERT INTO `bal_work_iodetail` VALUES (146,NULL,'苏H6L671','中型货车','1',1607090898,'1号通道出','3','800003',2,0,5689.5,'企业管理员','Admin','常用备注','1',NULL,1),(147,NULL,'苏H6L671','中型货车','0',1607092005,'1号通道出','3','800003',2,0,5689.5,'企业管理员','Admin','+100',NULL,NULL,1),(148,NULL,'苏H6L671','','1',1607093025,'1号通道出','3','800003',3,3,5689.5,'企业管理员','企业管理员','常用备注','1',NULL,1),(149,NULL,'苏H6L671','','0',1607093103,'1号通道出','3','800003',3,3,5689.5,'企业管理员','企业管理员','+100',NULL,NULL,1),(150,NULL,'无','马自达三轮车','1',1607291360,'1号通道入','3','800003',3,2,39340,'企业管理员','Admin','123','1',NULL,1),(151,NULL,'苏H6L671','中型货车','0',1607296306,'1号通道入','3','800003',2,2,39340,NULL,'Admin','0.4+100',NULL,NULL,1),(152,'I2020001','苏H6L669','中型货车','1',1607359661,'1号通道入','3','800003',3,0,39340,'企业管理员','Admin','常用备注','1',NULL,1),(153,'I20201208001','苏H6L669','中型货车','1',1607359710,'1号通道入','3','800003',3,0,456,'企业管理员','Admin','常用备注','1',NULL,1),(154,'I20201208001','苏H6L669','中型货车','1',1607359734,'1号通道入','3','800003',3,0,39340,'企业管理员','Admin','非常','1',NULL,1),(155,'I20201208121','苏H6L669','中型货车','1',1607359834,'1号通道入','3','800003',3,0,39340,'企业管理员','Admin','常用备注','1',NULL,1),(156,'I20201208121','苏H6L669','中型货车','1',1607359877,'1号通道入','3','800003',3,0,39340,'企业管理员','Admin','','1',NULL,1),(157,'I20201208122','苏H6L669','中型货车','1',1607359979,'1号通道入','3','800003',3,0,39340,'企业管理员','Admin','常用备注','1',NULL,1),(158,'I202012080123','苏H6L669','中型货车','1',1607360033,'1号通道入','3','800003',3,0,39340,'企业管理员','Admin','非常','1',NULL,1),(159,'J202012080123','无','中型货车','1',1607360657,'1号通道入','3','800003',3,0,39340,'企业管理员','Admin','常用备注','1',NULL,1),(160,NULL,'苏H6L671','中型货车','0',1607360896,'1号通道出','3','800003',3,2,5689.5,NULL,'Admin','0.2+100',NULL,NULL,1),(161,'C202012080001','苏H6L671','中型货车','0',1607360929,'1号通道出','3','800003',3,3,5689.5,NULL,'Admin','0.2+100',NULL,NULL,1),(162,'C202012080002','苏H6L671','中型货车','0',1607361762,'1号通道出','3','800003',2,3,5689.5,NULL,'Admin','0.02+100',NULL,NULL,1),(163,'C202012080003','苏H6L671','中型货车','0',1607362064,'1号通道出','3','800003',3,2,5689.5,NULL,'Admin','0.2+100',NULL,NULL,1),(164,'J202012080124','123','中型货车','1',1607362429,'1号通道入','3','800003',3,0,39340,'企业管理员','Admin','123','1',NULL,1),(165,'C202012080004','苏H6L671','中型货车','0',1607363533,'1号通道出','3','800003',3,2,5689.5,NULL,'Admin','0.2+100',NULL,NULL,1),(166,'C202012080005','苏H6L671','','0',1607363673,'1号通道出','3','800003',3,3,5689.5,NULL,'Admin','0.2+100',NULL,NULL,1),(167,'J202012080125','无','小型货车','1',1607367997,'1号通道入','3','800003',3,2,39340,'企业管理员','Admin','常用备注','1',NULL,1),(203,'C202012080006','无','马自达三轮车','0',1607369833,'1号通道出','3','800003',3,2,123456,NULL,'Admin','0.02+50','1',NULL,1),(204,'J202012080126','苏H6L669','中型货车','1',1607370936,'1号通道入','3','800003',3,2,5689,'企业管理员','Admin','常用备注','1',NULL,1),(205,'C202012080007','苏H6L669','中型货车','0',1607371145,'1号通道入','3','800003',3,3,51000,NULL,'Admin','0.02+100','1',NULL,1),(207,'C202012080008','苏H6L669','中型货车','0',1607372402,'1号通道入','3','800003',3,2,1500,NULL,'Admin','0.02+100','1',NULL,1),(208,'C202012080009','苏H6L669','中型货车','0',1607372480,'1号通道入','3','800003',3,3,39340,NULL,'Admin','0.02+100','1',NULL,1),(209,'C202012080010','苏H6L669','中型货车','0',1607372532,'1号通道入','3','800003',3,3,39360,NULL,'Admin','0.02+100','1',NULL,1),(210,'C202012080011','苏H6L669','中型货车','0',1607372563,'1号通道入','3','800003',3,2,45200,NULL,'Admin','0.02+100','1',NULL,1),(215,'C202012080012','苏H6L669','中型货车','0',1607372989,'1号通道入','3','800003',3,3,45000,NULL,'Admin','0.02+100','1',NULL,1),(216,'C202012080013','苏H6L669','中型货车','0',1607375436,'1号通道入','3','800003',3,2,39340,'企业管理员','Admin','0.02+100','1',NULL,1),(217,'J202012080001','苏H6L671','小型货车','1',1607431170,'1号通道出','2','800002',2,3,5689.5,'企业管理员','企业管理员','常用备注','1',NULL,2),(218,'C202012080001','苏H6L671','小型货车','0',1607431591,'1号通道出','2','800002',2,3,1200,'企业管理员','企业管理员','0.02+100','1',NULL,2),(219,'J202012080002','苏H6L671','小型货车','1',1607431790,'1号通道出','2','800002',2,3,5689.5,'企业管理员','企业管理员','常用备注','1',NULL,2),(240,'C202012090001','无','中型货车','0',1607444185,'1号通道入','3','800003',3,2,50000,'企业管理员','Admin','0.2+100','1',NULL,1),(241,'J202012090001','苏H6L671','小型货车','1',1607444390,'1号通道出','3','800003',3,0,5689.5,'企业管理员','企业管理员','常用备注','1',NULL,2),(242,'C202012090001','苏H6L671','小型货车','0',1607444431,'1号通道出','3','800003',3,3,80000,'企业管理员','企业管理员','0.2+100','1',NULL,2),(243,'C202012090002','苏H6L671','小型货车','0',1607444508,'1号通道出','2','800002',2,3,1200,'企业管理员','企业管理员','0.2+100','1',NULL,2),(244,'J202012090002','苏H6L671','小型货车','1',1607459639,'1号通道出','2','800002',2,3,5689.5,'企业管理员','企业管理员','常用备注','1',NULL,2),(245,'C202012090003','苏H6L671','小型货车','0',1607459666,'1号通道出','2','800002',2,3,3200,'企业管理员','企业管理员','0.2+100','1',NULL,2),(246,'C202012090002','123','中型货车','0',1607460101,'1号通道入','3','800003',3,3,50000,'企业管理员','Admin','0.2+100','1',NULL,1),(276,'C202012090003','苏H6L669','中型货车','0',1607471290,'1号通道入','3','800003',3,2,39340,'企业管理员','Admin','0.2+100','1',NULL,1),(277,'C202012090004','无','小型货车','0',1607474021,'1号通道入','3','800003',3,2,39340,'企业管理员','Admin','0.2+100','1',NULL,1),(278,'J202012090003','苏H6L671','小型货车','1',1607478848,'1号通道出','2','800002',2,3,5689.5,'企业管理员','企业管理员','常用备注','1',NULL,2),(279,'C202012090004','苏H6L671','小型货车','0',1607478940,'1号通道出','2','800002',2,3,4000,'企业管理员','企业管理员','0.2+100','1',NULL,2),(280,'J202012090001','无','中型货车','1',1607479805,'1号通道入','2','800002',2,2,39340,'企业管理员','Admin','常用备注','0',NULL,1),(281,'J202012090002','苏H6L669','大型货车','1',1607480509,'1号通道入','2','800002',2,3,39340,'企业管理员','Admin','常用备注','0',NULL,1),(282,'J202012090003','苏H6L668','中型货车','1',1607481085,'1号通道入','2','800002',2,3,39340,'企业管理员','Admin','常用备注','0',NULL,1),(283,'J202012090004','苏H6L668','中型货车','1',1607481124,'1号通道入','2','800002',2,3,39340,'企业管理员','Admin','常用备注','0',NULL,1),(284,'J202012090005','苏H6L668','中型货车','1',1607481155,'1号通道入','2','800002',2,3,39340,'企业管理员','Admin','常用备注','0',NULL,1),(285,'J202012090006','苏H6L668','中型货车','1',1607481466,'1号通道入','2','800002',2,3,39340,'企业管理员','Admin','常用备注','0',NULL,1),(287,'J202012090007','苏H6L668','中型货车','1',1607481580,'1号通道入','2','800002',2,3,39340,'企业管理员','Admin','常用备注','0',NULL,1),(288,'J202012090004','苏H6L671','小型货车','1',1607481741,'1号通道出','2','800002',2,3,5689.5,'企业管理员','企业管理员','常用备注','1',NULL,2),(289,'J202012090005','苏H6L671','小型货车','1',1607481872,'1号通道出','2','800002',2,3,5689.5,'企业管理员','企业管理员','常用备注','0',NULL,2),(290,'J202012090006','苏H6L671','小型货车','1',1607490197,'1号通道出','2','800002',2,3,5689.5,'企业管理员','企业管理员','常用备注','0',NULL,2),(291,'C202012090005','苏H6L671','小型货车','0',1607490227,'1号通道出','2','800002',2,3,2100,'企业管理员','企业管理员','0.2+100','1',NULL,2),(292,'J202012120001','无','小型货车','1',1607783360,'1号通道出','1','800001',1,3,1200,'','2001','常用备注','1',NULL,2),(293,'C202012120001','无','小型货车','0',1607784397,'1号通道出','1','800001',1,3,100,'2001','2001','0.2+100','1',NULL,2);
/*!40000 ALTER TABLE `bal_work_iodetail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-22  8:07:17
