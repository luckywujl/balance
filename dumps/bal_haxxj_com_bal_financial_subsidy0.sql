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
-- Table structure for table `bal_financial_subsidy`
--

DROP TABLE IF EXISTS `bal_financial_subsidy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bal_financial_subsidy` (
  `subsidy_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '补贴ID',
  `subsidy_custom_id` int(10) DEFAULT NULL COMMENT '客户ID',
  `subsidy_date` int(11) DEFAULT NULL COMMENT '发放日期',
  `subsidy_amount` double DEFAULT NULL COMMENT '补贴金额',
  `subsidy_operator` varchar(45) DEFAULT NULL COMMENT '经办人',
  `subsidy_statement_id` int(10) DEFAULT NULL COMMENT '结算单ID',
  `subsidy_satement_code` varchar(45) DEFAULT NULL COMMENT '结算单号',
  `subsidy_remark` varchar(45) DEFAULT NULL COMMENT '备注',
  `company_id` varchar(45) DEFAULT NULL COMMENT '数据归属',
  PRIMARY KEY (`subsidy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='补贴发放';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bal_financial_subsidy`
--

LOCK TABLES `bal_financial_subsidy` WRITE;
/*!40000 ALTER TABLE `bal_financial_subsidy` DISABLE KEYS */;
/*!40000 ALTER TABLE `bal_financial_subsidy` ENABLE KEYS */;
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
