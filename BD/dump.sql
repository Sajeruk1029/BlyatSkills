-- MariaDB dump 10.19  Distrib 10.6.5-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: blyatSkills
-- ------------------------------------------------------
-- Server version	10.6.5-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Position`
--

DROP TABLE IF EXISTS `Position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Position` (
  `Positionid` int(11) NOT NULL AUTO_INCREMENT,
  `PositionName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PositionDescription` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PayPeriod` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PayRate` decimal(10,2) NOT NULL,
  PRIMARY KEY (`Positionid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Position`
--

LOCK TABLES `Position` WRITE;
/*!40000 ALTER TABLE `Position` DISABLE KEYS */;
INSERT INTO `Position` VALUES (1,'Helpdesk Advisor','Works on the helpdesk','Hourly',1.00),(2,'Administrative Clerk','Provides administrative suppo','Hourly',0.00),(3,'HR Clerk','Provides support to the HR Ma','Hourly',1.00),(4,'Finance Clerk','Provides support to the Finan','Hourly',0.00),(5,'Marketing Assistant','Provides support to the Marke','Hourly',1.00),(6,'Social Media Assistant','Provides support to the Socia','Hourly',0.00),(7,'Assistant','Works  in any number of areas','Hourly',1.00),(8,'Workforce Support','Provides support to the Workf','Hourly',0.00),(9,'CEO','Chief Executive Officer','Yearly',1.00),(10,'Volunteer Coordinator','Coordinates  recruitment and','Yearly',0.00),(11,'Sponsorship Coordinator','Identifies, develops and main','Yearly',1.00),(13,'Social Media Coordinator','Manages content across social','Yearly',0.00),(14,'Operations Manager','Oversees all logistical aspec','Hourly',1.00),(16,'IT Manager','Oversees the planning and coo','Yearly',1.00),(19,'Administrative Manager','Oversees the administrative f','Yearly',0.00),(20,'HR Manager','Manages the recruitment, rete','Yearly',1.00),(21,'Finance Manager','Responsible for the financial','Yearly',0.00),(23,'Workforce Manager','Responsible for coordinating','Yearly',1.00);
/*!40000 ALTER TABLE `Position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Staff`
--

DROP TABLE IF EXISTS `Staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Staff` (
  `Staffid` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LastName` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DateOfBirth` datetime DEFAULT NULL,
  `Gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Positionid` int(11) NOT NULL,
  `Email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Comments` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`Staffid`),
  KEY `PositionControllerFk` (`Positionid`),
  CONSTRAINT `PositionControllerFk` FOREIGN KEY (`Positionid`) REFERENCES `Position` (`Positionid`)
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Staff`
--

LOCK TABLES `Staff` WRITE;
/*!40000 ALTER TABLE `Staff` DISABLE KEYS */;
INSERT INTO `Staff` VALUES (1,'LAKISHA','TOMBLIN','2061-08-06 00:00:00','Female',2,'l_tomblin@nnl.com','«»'),(2,'KRIS','SWEELY','1980-12-24 00:00:00','Male',3,'k_sweely@yahoo.com','«»'),(3,'ELSIE','ESTELL','1974-07-07 00:00:00','Female',8,'elsie.estell@rrg.net','«»'),(4,'TYRELL','ROSENBERG','2065-08-02 00:00:00','Male',6,'tyrell_rosenberg@hotmail.com','«»'),(5,'MADELYN','HOOVER','2062-12-04 00:00:00','Female',1,'madelyn_hoover@hotmail.com','«»'),(6,'KENETH','PARHAM','2067-03-30 00:00:00','Male',2,'k_parham@live.com','«»'),(7,'LYLE','MALLORY','1989-07-06 00:00:00','Male',8,'l_mallory@live.com','«»'),(8,'CLIFTON','FIGUEROA','2056-03-23 00:00:00','Male',6,'c_figueroa@live.com','«»'),(9,'MOHAMMAD','RICHEY','1995-07-01 00:00:00','Male',2,'mohammad_richey@jcl.net','«»'),(10,'WINIFRED','DUNCAN','2068-10-20 00:00:00','Female',11,'7w_duncan@hotmail.com','«»'),(11,'VERNITA','SEABORN','1993-10-13 00:00:00','Female',19,'6v_seaborn@gmail.com','«»'),(12,'LENORA','HIGGINS','1997-06-29 00:00:00','Female',3,'l_higgins@msv.org','«»'),(13,'DON','RUSS','1971-10-13 00:00:00','Male',4,'don_russ@jcl.net','«»'),(14,'THADDEUS','STALEY','1992-02-13 00:00:00','Male',7,'t_staley@nnl.com','«»'),(15,'WILFORD','RIVERA','1978-09-21 00:00:00','Male',1,'wilford.rivera@gmail.com','«»'),(16,'LANCE','BEYER','1990-09-30 00:00:00','Male',5,'l_beyer@rnl.com','«»'),(17,'LASHANDA','SNOWDEN','1983-06-28 00:00:00','Female',8,'lashanda.snowden@rrg.net','«»'),(18,'GLORY','FELDER','2063-11-18 00:00:00','Female',3,'glory.felder@hotmail.com','«»'),(19,'ESTELLA','BLALOCK','2051-10-17 00:00:00','Female',7,'e_blalock@ccf.org','«»'),(20,'TRAVIS','RAMOS','1983-04-21 00:00:00','Male',1,'travis_ramos@hotmail.com','«»'),(21,'ILA','THOMPSON','1979-05-17 00:00:00','Female',2,'i_thompson@yahoo.com','«»'),(22,'LORRAINE','MCKEE','1973-10-11 00:00:00','Female',6,'l_mckee@hotmail.com','«»'),(23,'SHELLIE','MONTANO','1974-09-19 00:00:00','Female',1,'shellie_montano@hotmail.com','«»'),(24,'ERVIN','LAWRENCE','1984-12-20 00:00:00','Male',8,'ervin_lawrence@hotmail.com','«»'),(25,'GOLDA','GRANGER','1982-04-28 00:00:00','Female',8,'g_granger@msv.org','«»'),(26,'KING','MERCADO','2052-11-26 00:00:00','Male',13,'7k_mercado@hotmail.com','«»'),(27,'GERARDO','BOWSER','2053-08-19 00:00:00','Male',2,'gerardo_bowser@hotmail.com','«»'),(28,'KARIN','MCCARTY','1985-10-17 00:00:00','Female',3,'k_mccarty@gmail.com','«»'),(29,'MAYRA','CALLAHAN','1979-08-07 00:00:00','Female',6,'m_callahan@live.com','«»'),(30,'CALLAN','MCCONNELL','2058-12-13 00:00:00','Male',8,'callan.mcconnell@gmail.com','«»'),(31,'CLAYTON','MARKS','1988-03-08 00:00:00','Male',5,'c_marks@nnl.com','«»'),(32,'TRACY','CUMMINGS','1991-01-07 00:00:00','Female',4,'tracy.cummings@gmail.com','«»'),(33,'NELSON','CASEY','1986-06-18 00:00:00','Male',8,'n_casey@hr.org','«»'),(34,'STAN','STOVALL','2060-10-07 00:00:00','Male',6,'s_stovall@gmail.com','«»'),(35,'EARLENE','HOGAN','2064-02-27 00:00:00','Female',8,'e_hogan@gmail.com','«»'),(36,'WAYNE','ROSARIO','2053-06-20 00:00:00','Male',5,'w_rosario@gmail.com','«»'),(37,'AUTUMN','MCCALL','2065-03-11 00:00:00','Female',3,'autumn.mccall@rrg.net','«»'),(38,'PRINCESS','CATT','1970-06-21 00:00:00','Female',8,'p_catt@hotmail.com','«»'),(39,'SIBYL','TAGALA','1998-05-21 00:00:00','Female',1,'sibyl.tagala@hotmail.com','«»'),(40,'MILAGROS','BUSCH','2065-12-20 00:00:00','Female',8,'milagros_busch@jcl.net','«»'),(41,'DONNIE','JENNINGS','2069-10-15 00:00:00','Female',1,'d_jennings@msv.org','«»'),(42,'OTIS','ENRIQUEZ','1986-01-11 00:00:00','Male',11,'7otis_enriquez@hotmail.com','«»'),(43,'PETE','REDDING','1988-12-17 00:00:00','Male',2,'p_redding@ccf.org','«»'),(44,'VAN','JACK','2067-02-18 00:00:00','Male',8,'v_jack@hr.org','«»'),(45,'CYNTHIA','SOSA','1989-11-08 00:00:00','Female',8,'c_sosa@gmail.com','«»'),(46,'LUCIA','SPICER','2052-09-26 00:00:00','Female',7,'l_spicer@yahoo.com','«»'),(47,'TONJA','LEPPALA','2058-05-20 00:00:00','Female',8,'t_leppala@yahoo.com','«»'),(48,'RENATO','CREECH','2067-11-08 00:00:00','Male',3,'renato.creech@yahoo.com','«»'),(49,'DESMOND','JEFFERS','2052-05-31 00:00:00','Male',7,'desmond_jeffers@hotmail.com','«»'),(50,'CANDELARIA','WISE','2067-08-01 00:00:00','Female',4,'c_wise@hotmail.com','«»'),(51,'RORY','RODEFER','1995-09-19 00:00:00','Male',5,'rory_rodefer@ffrs.gov','«»'),(52,'SHERRI','CRAWFORD','2053-01-24 00:00:00','Female',3,'s_crawford@yahoo.com','«»'),(53,'MANUELA','PRUETT','2064-10-03 00:00:00','Female',3,'manuela_pruett@yahoo.com','«»'),(54,'TASHA','INGRAHAM','2065-10-06 00:00:00','Female',1,'t_ingraham@gmail.com','«»'),(55,'TAMIKA','ESCOBEDO','2051-03-29 00:00:00','Female',3,'t_escobedo@msv.org','«»'),(56,'MARTYN','GLEASON','1979-06-08 00:00:00','Male',2,'m_gleason@nnl.com','«»'),(57,'CHRISTOPHER','LANGEVIN','2062-11-12 00:00:00','Male',4,'c_langevin@hotmail.com','«»'),(58,'NICHOLAS','FORRESTER','1996-08-29 00:00:00','Male',6,'nicholas.forrester@rrg.net','«»'),(59,'MARITA','ELAM','1984-02-21 00:00:00','Female',1,'m_elam@yahoo.com','«»'),(60,'RYAN','HAHN','2068-04-20 00:00:00','Male',7,'ryan_hahn@hotmail.com','«»'),(61,'CHI','MIMS','2063-08-05 00:00:00','Male',7,'c_mims@msv.org','«»'),(62,'SUSAN','VANCE','1973-09-07 00:00:00','Female',2,'s_vance@gmail.com','«»'),(63,'GARETH','ROBERSON','1978-04-30 00:00:00','Male',11,'7g_roberson@nnl.com','«»'),(64,'GREIG','WALTERS','1976-11-03 00:00:00','Male',5,'g_walters@hotmail.com','«»'),(65,'ARMANDO','MOSLEY','2056-01-01 00:00:00','Male',3,'a_mosley@hotmail.com','«»'),(66,'JAYSON','MCCLELLAND','2067-03-15 00:00:00','Male',3,'j_mcclelland@yahoo.com','«»'),(67,'GRANT','DOWDY','2055-12-15 00:00:00','Male',21,'115grant.dowdy@hotmail.com','«»'),(68,'ALVA','OWEN','1971-08-20 00:00:00','Female',5,'a_owen@hotmail.com','«»'),(69,'ELDON','CRAIG','1983-07-15 00:00:00','Male',10,'9e_craig@gmail.com','«»'),(70,'BOYCE','WILLIAM','1983-12-06 00:00:00','Male',4,'b_william@hotmail.com','«»'),(71,'VITO','KANIECKI','2065-03-31 00:00:00','Male',4,'v_kaniecki@hr.org','«»'),(72,'NAPOLEON','PEDROZO','2064-04-07 00:00:00','Male',2,'n_pedrozo@hotmail.com','«»'),(73,'DARYL','MASON','1977-08-14 00:00:00','Male',5,'d_mason@fin.gov','«»'),(74,'LESLIE','BOSTON','1995-07-24 00:00:00','Male',3,'leslie.boston@yahoo.com','«»'),(75,'MITCHEL','KIM','1994-12-29 00:00:00','Male',2,'m_kim@hotmail.com','«»'),(76,'BERTA','HERMAN','1993-05-24 00:00:00','Female',13,'7b_herman@gmail.com','«»'),(77,'WILDA','LAMBERT','1991-09-03 00:00:00','Female',6,'w_lambert@yahoo.com','«»'),(78,'NEVA','CLAY','1978-12-26 00:00:00','Female',7,'n_clay@gmail.com','«»'),(79,'CHARLES','MACK','1975-08-11 00:00:00','Male',3,'c_mack@hotmail.com','«»'),(80,'HETTIE','CARMONA','1996-06-08 00:00:00','Female',4,'h_carmona@ccf.org','«»'),(81,'LUCIEN','MURILLO','2065-06-24 00:00:00','Male',10,'9l_murillo@fin.gov','«»'),(82,'DEVON','GOBERN','2058-09-02 00:00:00','Male',8,'d_gobern@ccf.org','«»'),(83,'KRISTA','EARLY','1985-08-21 00:00:00','Female',5,'k_early@hr.org','«»'),(84,'GREIG','CONN','1993-10-30 00:00:00','Male',6,'greig_conn@hotmail.com','«»'),(85,'IRMA','MONTANEZ','2054-11-27 00:00:00','Female',8,'i_montanez@gmail.com','«»'),(86,'JERRELL','OHARA','2067-05-16 00:00:00','Male',8,'j_ohara@msv.org','«»'),(87,'BRANDON','YANG','1975-10-10 00:00:00','Male',5,'brandon.yang@gmail.com','«»'),(88,'MARLENE','SCHUMACHER','1987-11-05 00:00:00','Female',4,'marlene.schumacher@rrg.net','«»'),(89,'CLEMENTINE','JACKSON','1972-06-13 00:00:00','Female',8,'clementine.jackson@gmail.com','«»'),(90,'SHAWANDA','CANTU','1977-05-02 00:00:00','Female',13,'7s_cantu@hr.org','«»'),(91,'TAMIKA','COE','2053-09-02 00:00:00','Female',8,'t_coe@fin.gov','«»'),(92,'ABRAHAM','GATLIN','1987-06-19 00:00:00','Male',8,'abraham.gatlin@hotmail.com','«»'),(93,'JANE','HEDRICK','1975-03-05 00:00:00','Female',5,'j_hedrick@gmail.com','«»'),(94,'ALONSO','HITCHCOCK','2068-01-29 00:00:00','Male',8,'alonso.hitchcock@gmail.com','«»'),(95,'LEO','VEGA','2057-11-17 00:00:00','Male',3,'l_vega@live.com','«»'),(96,'TANA','HILLMAN','2057-01-20 00:00:00','Female',2,'tana_hillman@hotmail.com','«»'),(97,'NELLIE','LINDSEY','1985-06-05 00:00:00','Female',2,'n_lindsey@ccf.org','«»'),(98,'KELLEY','DANIEL','2066-06-19 00:00:00','Male',7,'kelley.daniel@gmail.com','«»'),(99,'MARGARETTE','STEM','2066-09-12 00:00:00','Female',16,'130m_stem@ccf.org','«»'),(100,'KELVIN','RULAPAUGH','1983-08-23 00:00:00','Male',2,'k_rulapaugh@gmail.com','«»'),(101,'MAYRA','SMITH','1982-01-17 00:00:00','Female',7,'m_smith@yahoo.com','«»'),(102,'JANNA','NICKA','1980-08-07 00:00:00','Female',7,'j_nicka@msv.org','«»'),(103,'PAULINE','NEWCOMB','2057-12-07 00:00:00','Female',1,'p_newcomb@gmail.com','«»'),(104,'ELVA','PATTEN','1983-04-07 00:00:00','Female',7,'e_patten@msv.org','«»'),(105,'SHANE','COLAIZZO','1970-05-30 00:00:00','Male',16,'130s_colaizzo@fin.gov','«»'),(106,'THERSA','ARREDONDO','2064-02-02 00:00:00','Female',2,'t_arredondo@gmail.com','«»'),(107,'AMPARO','SYKES','2060-02-29 00:00:00','Female',16,'130a_sykes@ccf.org','«»'),(108,'JORGE','BLACKWELL','2055-05-08 00:00:00','Male',7,'j_blackwell@hotmail.com','«»'),(109,'TYLER','BOOTH','1972-01-26 00:00:00','Male',4,'t_booth@gmail.com','«»'),(110,'JORGE','WAYMIRE','1988-02-17 00:00:00','Male',1,'jorge_waymire@ffrs.gov','«»'),(111,'KENNETH','MEIER','1984-03-17 00:00:00','Male',5,'kenneth_meier@ffrs.gov','«»'),(112,'AUBREY','ERWIN','2060-11-01 00:00:00','Male',7,'a_erwin@yahoo.com','«»'),(113,'CHARLES','STILES','1981-08-25 00:00:00','Male',4,'c_stiles@gmail.com','«»'),(114,'LOWELL','BAER','2051-08-01 00:00:00','Male',3,'l_baer@fin.gov','«»'),(115,'TRACEY','ONOFRIO','1986-01-07 00:00:00','Female',1,'t_onofrio@ccf.org','«»'),(116,'STELLA','HIEBER','1972-07-23 00:00:00','Female',2,'stella_hieber@hotmail.com','«»'),(117,'ROSEANNE','VILLANUEVA','2055-06-14 00:00:00','Female',9,'7roseanne_villanueva@yahoo.com','«»'),(118,'VALENTIN','PARRISH','1978-11-22 00:00:00','Male',2,'valentin.parrish@rrg.net','«»'),(119,'TERESITA','RUSH','1991-07-05 00:00:00','Female',6,'t_rush@yahoo.com','«»'),(120,'CAREY','HALEY','1979-02-04 00:00:00','Female',5,'c_haley@yahoo.com','«»'),(121,'BURT','PLATT','2062-02-27 00:00:00','Male',23,'b_platt@hotmail.com','«»'),(122,'ZORA','TATE','2067-06-23 00:00:00','Female',7,'zora_tate@jcl.net','«»'),(123,'PENELOPE','ROOT','2063-07-16 00:00:00','Female',3,'penelope.root@rrg.net','«»'),(124,'DENNY','MORALES','1995-03-21 00:00:00','Male',7,'denny_morales@hotmail.com','«»'),(125,'DALE','BRANCH','1982-04-06 00:00:00','Male',14,'110d_branch@live.com','«»'),(126,'LAURENCE','METCALF','2056-06-13 00:00:00','Male',7,'laurence.metcalf@yahoo.com','«»'),(127,'MERYL','BENNETT','2063-04-25 00:00:00','Female',7,'m_bennett@nnl.com','«»'),(128,'BERNARDO','RICHEY','2051-03-07 00:00:00','Male',7,'b_richey@live.com','«»'),(129,'DAN','KINNEY','1974-02-12 00:00:00','Male',4,'d_kinney@hotmail.com','«»'),(130,'ARCHIE','ATKINSON','1970-03-06 00:00:00','Male',4,'a_atkinson@ccf.org','«»'),(131,'HUGH','VARRIANO','2058-02-10 00:00:00','Male',10,'9hugh.varriano@gmail.com','«»'),(132,'SONYA','HOLBROOK','2069-12-19 00:00:00','Female',16,'130s_holbrook@rnl.com','«»'),(133,'PATRICA','OLSEN','1982-09-12 00:00:00','Female',5,'p_olsen@gmail.com','«»'),(134,'DELIA','SHOMO','1986-12-19 00:00:00','Female',2,'d_shomo@yahoo.com','«»'),(135,'CARLA','VINSON','2058-01-21 00:00:00','Female',7,'c_vinson@ccf.org','«»'),(136,'FRANCIS','NGUYEN','1986-11-10 00:00:00','Female',13,'7f_nguyen@live.com','«»'),(137,'WILLARD','PUTNAM','2058-08-28 00:00:00','Male',3,'w_putnam@gmail.com','«»'),(138,'TARSHA','WILKINSON','2063-04-02 00:00:00','Female',2,'t_wilkinson@hr.org','«»'),(139,'DEBBY','DUNLAP','1974-01-04 00:00:00','Female',23,'debby_dunlap@jcl.net','«»'),(140,'GILDA','PERRY','1993-07-20 00:00:00','Female',6,'g_perry@yahoo.com','«»'),(141,'GARRY','SANTANA','1993-07-02 00:00:00','Male',4,'g_santana@live.com','«»'),(142,'NICKOLAS','NUNEZ','1994-03-03 00:00:00','Male',7,'nickolas.nunez@gmail.com','«»'),(143,'PALMA','GRIER','2062-08-24 00:00:00','Female',4,'p_grier@yahoo.com','«»'),(144,'RUSSELL','WHITTINGTON','2057-09-01 00:00:00','Male',8,'russell_whittington@hotmail.com','«»'),(145,'OLIVE','SALMON','2054-05-07 00:00:00','Female',23,'o_salmon@ccf.org','«»'),(146,'GARRETT','BOLLINGER','1970-12-19 00:00:00','Male',1,'g_bollinger@gmail.com','«»'),(147,'IGNACIO','COKLEY','2055-01-23 00:00:00','Male',6,'ignacio_cokley@jcl.net','«»'),(148,'NOBLE','MEINERDING','2050-08-21 00:00:00','Male',20,'7n_meinerding@ccf.org','«»'),(149,'THELMA','SKURSKY','2059-04-28 00:00:00','Female',5,'t_skursky@rnl.com','«»'),(150,'AL','BOWLES','2069-02-01 00:00:00','Male',1,'al.bowles@hotmail.com','«»'),(151,'CRAIG','COUSEY','1970-02-16 00:00:00','Male',8,'c_cousey@gmail.com','«»'),(152,'TRACI','BROOKS','2069-02-15 00:00:00','Female',1,'traci_brooks@hotmail.com','«»'),(153,'ISABELLA','WATERMAN','1979-01-01 00:00:00','Female',4,'isabella.waterman@rrg.net','«»'),(154,'JEROME','JACKSON','2056-01-23 00:00:00','Male',4,'jerome.jackson@rrg.net','«»'),(155,'SILAS','DIAS','1997-02-08 00:00:00','Male',13,'7s_dias@hotmail.com','«»'),(156,'TOD','CLARKE','2064-04-04 00:00:00','Male',7,'t_clarke@ccf.org','«»'),(157,'DONNELL','MYLES','1991-01-02 00:00:00','Male',1,'d_myles@gmail.com','«»'),(158,'KEITH','MEADOWS','2059-08-08 00:00:00','Male',2,'k_meadows@live.com','«»'),(159,'JOHNNIE','PRESTON','2057-09-19 00:00:00','Male',4,'johnnie.preston@gmail.com','«»'),(160,'NANETTE','TALBOT','1994-04-29 00:00:00','Female',4,'n_talbot@hotmail.com','«»'),(161,'RENATA','ENGLISH','2056-01-03 00:00:00','Female',7,'r_english@gmail.com','«»'),(162,'SAMMIE','DICKENS','1972-07-05 00:00:00','Female',3,'s_dickens@msv.org','«»'),(163,'ANDRA','CAREY','1987-11-27 00:00:00','Female',3,'a_carey@gmail.com','«»'),(164,'GREGOR','WOLNY','1980-04-30 00:00:00','Male',7,'g_wolny@yahoo.com','«»'),(165,'LUTHER','DOYLE','1998-04-29 00:00:00','Male',10,'9l_doyle@gmail.com','«»'),(166,'ENOLA','AUSTIN','1991-11-23 00:00:00','Female',4,'e_austin@nnl.com','«»'),(167,'DARIUS','NOBLE','2059-12-06 00:00:00','Male',7,'d_noble@gmail.com','«»'),(168,'WILTON','SEXTON','1982-12-03 00:00:00','Male',2,'w_sexton@msv.org','«»'),(169,'KATHY','KRAMER','1989-02-20 00:00:00','Female',7,'kathy_kramer@yahoo.com','«»'),(170,'LUPE','MAILLARD','1981-04-23 00:00:00','Female',1,'lupe_maillard@hotmail.com','«»'),(171,'LEANNE','NIELSEN','1982-06-22 00:00:00','Female',1,'l_nielsen@gmail.com','«»'),(172,'SEYMOUR','GROVES','1978-05-02 00:00:00','Male',4,'seymour.groves@rrg.net','«»'),(173,'GLENNA','FELTON','2064-06-21 00:00:00','Female',2,'g_felton@hotmail.com','«»'),(174,'LIN','PALAIA','2061-12-03 00:00:00','Female',7,'lin.palaia@yahoo.com','«»'),(175,'SHANELL','ORTIZ','2062-08-29 00:00:00','Female',6,'shanell_ortiz@jcl.net','«»'),(176,'NICOLETTE','DAVISON','1996-05-17 00:00:00','Female',3,'n_davison@ccf.org','«»'),(177,'GREGORIA','RYDER','2055-09-21 00:00:00','Female',2,'gregoria.ryder@gmail.com','«»'),(178,'KARRIE','TRUJILLO','1990-11-08 00:00:00','Female',1,'k_trujillo@hr.org','«»'),(179,'STACEY','SWITZER','2055-07-23 00:00:00','Female',2,'stacey.switzer@hotmail.com','«»'),(180,'KATHERYN','SPEER','1976-02-11 00:00:00','Female',7,'k_speer@gmail.com','«»'),(181,'PRUDENCE','HACKETT','2050-09-30 00:00:00','Female',10,'9p_hackett@hotmail.com','«»'),(182,'ROSANNE','CORCORAN','1977-01-19 00:00:00','Female',1,'rosanne_corcoran@jcl.net','«»'),(183,'ROSALIE','STEM','1985-07-15 00:00:00','Female',1,'rosalie.stem@hotmail.com','«»'),(184,'GEORGE','LYONS','1984-03-12 00:00:00','Male',6,'george_lyons@ffrs.gov','«»'),(185,'JAYNE','HARMAN','1982-01-11 00:00:00','Female',2,'j_harman@yahoo.com','«»'),(186,'MALLORY','WORRELL','1992-01-25 00:00:00','Female',23,'m_worrell@hotmail.com','«»'),(187,'CAMERON','NORMAN','1974-12-16 00:00:00','Male',7,'cameron.norman@yahoo.com','«»'),(188,'BERNARD','CROSBY','1977-02-06 00:00:00','Male',6,'b_crosby@yahoo.com','«»'),(189,'SHANELL','VILLALOBOS','2060-03-19 00:00:00','Female',7,'s_villalobos@yahoo.com','«»'),(190,'EVELYN','DEMESA','2061-06-08 00:00:00','Female',10,'9e_demesa@live.com','«»'),(191,'TY','LABRECHE','2066-06-25 00:00:00','Male',3,'t_labreche@hotmail.com','«»'),(192,'BRANDEE','MEANS','2062-06-03 00:00:00','Female',6,'b_means@nnl.com','«»'),(193,'LARISSA','COTTRELL','2057-08-10 00:00:00','Female',5,'l_cottrell@gmail.com','«»'),(194,'FRIEDA','BRAND','2065-04-28 00:00:00','Female',6,'frieda_brand@hotmail.com','«»'),(195,'DANI','GRIFFIN','1994-07-24 00:00:00','Female',14,'110d_griffin@gmail.com','«»'),(196,'LEE','DOW','2060-12-28 00:00:00','Male',11,'7l_dow@yahoo.com','«»'),(197,'MEAGAN','BRUCE','1982-03-20 00:00:00','Female',5,'m_bruce@live.com','«»'),(198,'JEANETTE','DOYLE','1989-10-14 00:00:00','Female',5,'jeanette_doyle@jcl.net','«»'),(199,'ANTHONY','SHAW','1977-06-27 00:00:00','Male',5,'anthony.shaw@rrg.net','«»'),(200,'ROBYN','ROSA','1984-05-13 00:00:00','Female',3,'r_rosa@msv.org','«»'),(201,'RANDI','CHAFFINS','1979-08-27 00:00:00','Female',4,'r_chaffins@gmail.com','«»'),(202,'MARJORIE','BLEDSOE','2069-07-13 00:00:00','Female',6,'m_bledsoe@gmail.com','«»'),(203,'DALE','PEARSON','1975-11-01 00:00:00','Male',4,'d_pearson@live.com','«»'),(204,'PAULA','BROWER','2060-04-09 00:00:00','Female',9,'7paula_brower@hotmail.com','«»'),(205,'DEVIN','MEYERS','1973-07-01 00:00:00','Male',3,'d_meyers@nnl.com','«»'),(206,'CHANTEL','LINDSEY','1972-04-14 00:00:00','Female',4,'chantel_lindsey@ffrs.gov','«»'),(207,'TOMAS','ABERNATHY','2058-11-18 00:00:00','Male',2,'t_abernathy@hr.org','«»'),(208,'KRISTI','CROOK','1972-10-16 00:00:00','Female',2,'k_crook@hr.org','«»'),(209,'RAMIRO','HIATT','2052-05-25 00:00:00','Male',7,'ramiro.hiatt@yahoo.com','«»'),(210,'MARANDA','MEIER','2052-08-18 00:00:00','Female',2,'m_meier@live.com','«»'),(211,'HESTER','CARDENAS','1975-01-05 00:00:00','Female',8,'h_cardenas@gmail.com','«»'),(212,'JOESPH','LANKFORD','1993-03-06 00:00:00','Male',5,'joesph_lankford@hotmail.com','«»'),(213,'BRANDY','MUELLER','1972-02-15 00:00:00','Female',5,'b_mueller@hotmail.com','«»'),(214,'MAUD','MORGAN','1971-10-19 00:00:00','Female',2,'m_morgan@gmail.com','«»'),(215,'IDA','GUERRERO','1989-11-30 00:00:00','Female',6,'i_guerrero@hr.org','«»'),(216,'TOMASA','HANDY','2056-12-14 00:00:00','Female',1,'t_handy@hotmail.com','«»'),(217,'DANNY','WILLARD','2053-11-26 00:00:00','Male',23,'d_willard@hotmail.com','«»'),(218,'DEMETRA','DURHAM','1998-05-01 00:00:00','Female',5,'d_durham@rnl.com','«»'),(219,'SAUL','PYLE','1998-04-26 00:00:00','Male',4,'s_pyle@fin.gov','«»'),(220,'CECELIA','MCDONALD','2068-06-22 00:00:00','Female',6,'c_mcdonald@nnl.com','«»'),(221,'JULES','BLACKMAN','1979-07-01 00:00:00','Male',4,'jules_blackman@hotmail.com','«»'),(222,'DEBBY','NUGENT','2058-11-03 00:00:00','Female',4,'d_nugent@rnl.com','«»'),(223,'MARTIN','JIMENEZ','1994-05-05 00:00:00','Male',1,'m_jimenez@hotmail.com','«»'),(224,'WARREN','PINTO','1973-10-16 00:00:00','Male',8,'warren.pinto@rrg.net','«»'),(225,'JUDI','NEWMAN','2061-03-15 00:00:00','Female',2,'j_newman@ccf.org','«»'),(226,'BORIS','LEBLANC','1977-08-28 00:00:00','Male',6,'boris_leblanc@jcl.net','«»'),(227,'GERTRUDE','ALFARO','1972-01-07 00:00:00','Female',19,'6g_alfaro@rnl.com','«»'),(228,'JONATHON','DELASANCHA','2052-06-17 00:00:00','Male',5,'jonathon.delasancha@rrg.net','«»'),(229,'LIZABETH','HUMPHREY','1998-02-08 00:00:00','Female',7,'l_humphrey@ccf.org','«»'),(230,'KATHI','FULTON','1977-06-10 00:00:00','Female',1,'k_fulton@yahoo.com','«»'),(231,'DENIS','BUCK','2066-06-05 00:00:00','Male',3,'d_buck@hotmail.com','«»'),(232,'BRET','ACUFF','2051-01-26 00:00:00','Male',5,'b_acuff@hotmail.com','«»'),(233,'BEULAH','OSTOLAZA','2055-10-13 00:00:00','Female',7,'b_ostolaza@msv.org','«»'),(234,'RODOLFO','MERCADO','2054-02-11 00:00:00','Male',7,'r_mercado@yahoo.com','«»'),(235,'LEONARDO','CONNER','1998-05-16 00:00:00','Male',3,'l_conner@live.com','«»'),(236,'ARTHUR','YUM','2057-03-26 00:00:00','Male',4,'a_yum@yahoo.com','«»'),(237,'MARSHALL','CHANG','1984-08-01 00:00:00','Male',8,'m_chang@gmail.com','«»'),(238,'CHUN','RYAN','1974-03-02 00:00:00','Female',5,'c_ryan@yahoo.com','«»'),(239,'JACK','GRUBB','1973-01-06 00:00:00','Male',3,'j_grubb@hr.org','«»'),(240,'BLANCH','HARDING','1987-07-08 00:00:00','Female',7,'b_harding@fin.gov','«»'),(241,'ANGEL','JERNIGAN','2062-01-20 00:00:00','Female',6,'a_jernigan@ccf.org','«»'),(242,'STEPHAINE','FARRELL','1978-12-10 00:00:00','Female',23,'s_farrell@yahoo.com','«»'),(243,'ELIJAH','SNOW','1990-01-07 00:00:00','Male',23,'e_snow@yahoo.com','«»'),(244,'RORY','HENGEL','1996-05-22 00:00:00','Male',7,'r_hengel@hotmail.com','«»'),(245,'JOSEFINA','CHRISTIAN','1997-01-16 00:00:00','Female',5,'josefina.christian@yahoo.com','«»'),(246,'JANNA','HILLS','1995-10-14 00:00:00','Female',5,'janna_hills@hotmail.com','«»'),(247,'QUINCY','LAMBERT','1977-09-21 00:00:00','Male',2,'quincy_lambert@hotmail.com','«»'),(248,'JERRY','DARLING','1980-02-25 00:00:00','Female',6,'j_darling@ccf.org','«»'),(249,'SUSIE','CARDONA','1986-03-11 00:00:00','Female',7,'susie_cardona@yahoo.com','«»'),(250,'ALEXANDRIA','SMALLS','1980-05-17 00:00:00','Female',6,'alexandria.smalls@hotmail.com','«»'),(251,'DESMOND','STONE','1991-03-28 00:00:00','Male',20,'7d_stone@gmail.com','«»');
/*!40000 ALTER TABLE `Staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Timesheet`
--

DROP TABLE IF EXISTS `Timesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Timesheet` (
  `Timesheetid` int(11) NOT NULL AUTO_INCREMENT,
  `Staffid` int(11) NOT NULL,
  `StartDateTime` datetime DEFAULT NULL,
  `EndDateTime` datetime DEFAULT NULL,
  `PayAmount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Timesheetid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Timesheet`
--

LOCK TABLES `Timesheet` WRITE;
/*!40000 ALTER TABLE `Timesheet` DISABLE KEYS */;
/*!40000 ALTER TABLE `Timesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `charity`
--

DROP TABLE IF EXISTS `charity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charity` (
  `ID_Сharity` int(11) NOT NULL AUTO_INCREMENT,
  `Charity_Name` varchar(100) NOT NULL,
  `Charity_Description` text DEFAULT NULL,
  `Charity_Logo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_Сharity`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `charity`
--

LOCK TABLES `charity` WRITE;
/*!40000 ALTER TABLE `charity` DISABLE KEYS */;
INSERT INTO `charity` VALUES (1,'Bill & Melinda Gates Foundation','Bill & Melinda Gates Foundation is the largest private foundation in the world, founded by Bill and Melinda Gates. It was launched in 2000 and is said to be the largest transparently operated private foundation in the world. The primary aims of the foundation are, globally, to enhance healthcare and reduce extreme poverty, and in America, to expand educational opportunities and access to information technology. The foundation, based in Seattle, Washington, is controlled by its three trustees: Bill Gates, Melinda Gates and Warren Buffett. Other principal officers include Co-Chair William H. Gates, Sr. and Chief Executive Officer Susan Desmond-Hellmann.','Gayts-Foundation.png'),(2,'GAVI','GAVI or Global Alliance for Vaccines and Immunization is a public-private global health partnership committed to increasing access to immunisation in poor countries','GAVI.png'),(3,'The Red Cross','Relief in times of crisis, care when it\'s needed most and commitment when others turn away. Red Cross is there for people in need, no matter who you are, no matter where you live.\r\n\r\nThe Red Cross Red Crescent Movement helps tens of millions of people around the world each year and we also care for local communities in our local country and further afield.\r\n\r\nWith millions of volunteers worldwide and thousands of members, volunteers and supporters, we can reach people and places like nobody else.','Red-Cross.png'),(5,'Oxfam International','Oxfam is an international confederation of 17 organizations working together with partners and local communities in more than 90 countries.','oxfam-international-logo.png'),(7,'Querstadtein Berlin','Querstadtein is the first project of Stadtsichten e.V., a registered non-profit association.','querstadtein-logo.png');
/*!40000 ALTER TABLE `charity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `ID_Country` char(3) NOT NULL,
  `Country_Name` varchar(50) NOT NULL,
  `Country_Flag` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_Country`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES ('AND','Andorra','flag_andorra.png'),('ARG','Argentina','flag_argentina.png'),('AUS','Australia','flag_australia.png'),('AUT','Austria','flag_austria.png'),('BEL','Belgium','flag_belgium.png'),('BOT','Botswana','flag_botswana.png'),('BRA','Brazil','flag_brazil.png'),('BUL','Bulgaria','flag_bulgaria.png'),('CAF','Central African Republic','flag_central_african_republic.png'),('CAN','Canada','flag_canada.png'),('CHI','Chile','flag_chile.png'),('CHN','China','flag_china.png'),('CIV','Ivory Coast','flag_ivory_coast.png'),('CMR','Cameroon','flag_cameroon.png'),('COL','Colombia','flag_colombia.png'),('CRO','Croatia','flag_croatia.png'),('CZE','Czech Republic','flag_czech_republic.png'),('DEN','Denmark','flag_denmark.png'),('DOM','Dominican Republic','flag_dominican_republic.png'),('ECU','Ecuador','flag_ecuador.png'),('EGY','Egypt','flag_egypt.png'),('ESA','El Salvador','flag_el_salvador.png'),('ESP','Spain','flag_spain.png'),('EST','Estonia','flag_estonia.png'),('FIN','Finland','flag_finland.png'),('FRA','France','flag_france.png'),('GBR','United Kingdom','flag_united_kingdom.png'),('GBS','Guinea-Bissau','flag_guinea.png'),('GEQ','Equatorial Guinea','flag_equatorial_guinea.png'),('GER','Germany','flag_germany.png'),('GRE','Greece','flag_greece.png'),('GUA','Guatemala','flag_guatemala.png'),('GUI','Guinea','flag_guinea-bissau.png'),('HKG','Hong Kong','flag_hong_kong.png'),('HON','Honduras','flag_honduras.png'),('HUN','Hungary','flag_hungary.png'),('INA','Indonesia','flag_indonesia.png'),('IND','India','flag_india.png'),('IRL','Ireland','flag_ireland.png'),('ISR','Israel','flag_israel.png'),('ITA','Italy','flag_italy.png'),('JAM','Jamaica','flag_jamaica.png'),('JOR','Jordan','flag_jordan.png'),('JPN','Japan','flag_japan.png'),('KEN','Kenya','flag_kenya.png'),('KOR','South Korea','flag_south_korea.png'),('KSA','Saudi Arabia','flag_saudi_arabia.png'),('LAT','Latvia','flag_latvia.png'),('LIE','Liechtenstein','flag_liechtenstein.png'),('LTU','Lithuania','flag_lithuania.png'),('LUX','Luxembourg','flag_luxembourg.png'),('MAC','Macau','flag_macau.png'),('MAD','Madagascar','flag_madagascar.png'),('MAS','Malaysia','flag_malaysia.png'),('MDA','Moldova ','flag_moldova.png'),('MEX','Mexico ','flag_mexico.png'),('MKD','Macedonia ','flag_macedonia.png'),('MLI','Mali ','flag_mali.png '),('MLT','Malta ','flag_malta.png '),('MNE','Montenegro ','flag_montenegro.png '),('MON','Monaco ','flag_monaco.png '),('MRI','Mauritius ','flag_mauritius.png '),('NCA','Nicaragua ','flag_nicaragua.png '),('NED','Netherlands ','flag_netherlands.png '),('NIG','Niger ','flag_niger.png '),('NOR','Norway ','flag_norway.png '),('NZL','New Zealand ','flag_new_zealand.png '),('PAN','Panama ','flag_panama.png '),('PAR','Paraguay ','flag_paraguay.png '),('PER','Peru ','flag_peru.png '),('PHI','Philippines ','flag_philippines.png '),('POL','Poland ','flag_poland.png '),('POR','Portugal ','flag_portugal.png '),('PUR','Puerto Rico ','flag_puerto_rico.png '),('QAT','Qatar ','flag_qatar.png '),('ROU','Romania ','flag_romania.png '),('RSA','South Africa ','flag_south_africa.png '),('RUS','Russia ','flag_russia.png '),('SEN','Senegal ','flag_senegal.png '),('SIN','Singapore','flag_singapore.png '),('SUI','Switzerland ','flag_switzerland.png '),('SVK','Slovakia','flag_slovakia.png '),('SWE','Sweden','flag_sweden.png '),('THA','Thailand','flag_thailand.png '),('TPE','Chinese Taipei ','flag_chinese_taipei.png '),('TUR','Turkey ','flag_turkey.png '),('UAE','United Arab Emirates ','flag_united_arab_emirates.png '),('URU','Uruguay ','flag_uruguay.png '),('USA','United States ','flag_usa.png '),('VAT','Vatican ','flag_vatican.png '),('VEN','Venezuela','flag_venezuela.png '),('VIE','Vietnam','flag_vietnam.png ');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `ID_Event` int(11) NOT NULL AUTO_INCREMENT,
  `Event_Name` varchar(50) NOT NULL,
  `ID_EventType` char(5) NOT NULL,
  `ID_Race` int(11) NOT NULL,
  `StartDateTime` datetime NOT NULL,
  `Cost` decimal(10,0) NOT NULL,
  `MaxParticipants` smallint(6) NOT NULL,
  PRIMARY KEY (`ID_Event`),
  KEY `ID_EventType` (`ID_EventType`,`ID_Race`),
  KEY `FK_Event_Race` (`ID_Race`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'Cairo 2.5KM Race','2.5KM',4,'2015-03-17 00:00:00',5000,15),(2,'\r\nGiza desert 6.5KM Race','6.5KM',4,'2015-03-25 00:00:00',8000,10),(4,'Red Send 4KM Race  ','4KM',4,'2015-03-10 00:00:00',6500,7),(5,'Rio 6.5KM Race','6.5KM',10,'2014-08-17 00:00:00',2700,10),(7,'Rio\'s Beach 4KM Race','4KM',10,'2014-08-10 00:00:00',3500,6),(8,'Carnaval 2.5KM Race','2.5KM',10,'2014-08-21 00:00:00',12000,15),(9,'Around of Paris 6.5KM Race','6.5KM',11,'2013-12-21 00:00:00',4000,4),(10,'Place Carrousel 2.5KM Race','2.5KM',11,'2013-12-15 00:00:00',3000,7),(13,'Munich 2.5KM Race','2.5KM',1,'2012-11-19 00:00:00',4500,8),(15,'BMW Factory 4KM Race','4KM',1,'2012-11-26 00:00:00',7000,10),(19,'Olympiaturm 6.5 KM','6.5KM',1,'2012-11-12 00:00:00',3500,4),(20,'Red Race 4KM','4KM',14,'2016-10-18 00:00:00',6000,8),(21,'Moscow ?ity 2.5KM Race','2.5KM',14,'2016-10-21 00:00:00',3500,6);
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_type`
--

DROP TABLE IF EXISTS `event_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_type` (
  `ID_Event_type` char(5) NOT NULL,
  `Event_Type_Name` varchar(80) NOT NULL,
  PRIMARY KEY (`ID_Event_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_type`
--

LOCK TABLES `event_type` WRITE;
/*!40000 ALTER TABLE `event_type` DISABLE KEYS */;
INSERT INTO `event_type` VALUES ('2.5KM','2.5km Race'),('4KM','4km Race'),('6.5KM','6.5km Race');
/*!40000 ALTER TABLE `event_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gender` (
  `ID_Gender` char(1) NOT NULL,
  `Gender_Name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_Gender`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` VALUES ('F','Female\r\n'),('M','Male');
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `race`
--

DROP TABLE IF EXISTS `race`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `race` (
  `ID_Race` int(11) NOT NULL AUTO_INCREMENT,
  `Race_Name` varchar(80) NOT NULL,
  `Sity` varchar(50) NOT NULL,
  `ID_Country` char(3) NOT NULL,
  `Year_Held` smallint(6) NOT NULL,
  PRIMARY KEY (`ID_Race`),
  KEY `FK_Race_Country` (`ID_Country`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `race`
--

LOCK TABLES `race` WRITE;
/*!40000 ALTER TABLE `race` DISABLE KEYS */;
INSERT INTO `race` VALUES (1,'Kart Skills 2012','Munich','GER',2013),(4,'Kart Skills 2013','Cairo','EGY',2016),(10,'Kart Skills 2014','Rio de Janeiro','BRA',2015),(11,'Kars Skills 2015','Paris','FRA',2014),(14,'Kart Skills 2016','Moscow','RUS',2017);
/*!40000 ALTER TABLE `race` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `racer`
--

DROP TABLE IF EXISTS `racer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `racer` (
  `ID_Racer` int(11) NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Gender` char(1) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `ID_Country` char(3) NOT NULL,
  PRIMARY KEY (`ID_Racer`),
  KEY `ID_Country` (`ID_Country`),
  KEY `FK_Racer_Gender` (`Gender`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `racer`
--

LOCK TABLES `racer` WRITE;
/*!40000 ALTER TABLE `racer` DISABLE KEYS */;
INSERT INTO `racer` VALUES (7,'Liam','Jeferson','M','1997-05-04','USA'),(8,'Anna','Ivanova','F','1992-04-15','RUS'),(9,'Irakly','Vahsha','M','1991-03-04','ISR'),(10,'Ernest','Huano','M','1987-04-07','ESP'),(11,'Gamlet','Sertio','M','1979-08-06','ITA'),(12,'Christian','Neel','M','1984-12-21','USA'),(13,'Enrice','Mussoliny','M','1989-04-05','ITA'),(16,'Lui','Andersen','M','1978-07-05','USA'),(19,'Enrike','Atlandes','M','1985-11-07','ARG'),(20,'Angela','Smith','F','1975-12-31','FRA'),(21,'Lucius','Marko','M','1987-08-16','ESP'),(23,'Andrey','Mishkevich','M','1991-03-15','CZE'),(26,'Rita','Skitter','F','1987-12-03','AUT'),(27,'Yamato','Zi','M','1985-06-07','JPN'),(28,'Kuriko','Perno','F','1987-08-03','ESP'),(29,'Viktor','Zulinc','M','1983-12-01','CZE'),(30,'Elen','Huso','F','1978-05-18','ARG'),(33,'Ahmad','Adkin','M','1976-09-27','IRL'),(34,'Alphonso','Allison','M','1983-09-12','SVK'),(36,'Alfreda','BURNHAM','F','1980-05-21','MAD'),(37,'April','Bitsuile','F','1995-09-27','CHI'),(40,'Aron','Brooks','M','1988-09-06','MEX'),(41,'Angel','Candlish','F','1975-02-15','CMR'),(42,'Austin','Crews','M','1985-10-13','GRE'),(43,'Alisha','Conard','F','1975-01-07','JAM'),(44,'Anika','Crockett','F','1993-04-01','USA'),(45,'Brian','Lipke','M','1981-09-24','PHI'),(46,'Bryan','Mccoy','M','1979-05-05','USA'),(48,'Chiquita','Cline','F','1990-10-16','HKG'),(51,'Cruz','Cook','F','1985-10-17','KEN'),(55,'Charlie','Mcknight','F','1984-01-20','TPE'),(57,'Gus','Titus','M','1976-07-15','AUS'),(58,'Hugh','Bourbon','M','1972-09-30','URU'),(59,'Robin','Carmona','M','1981-03-18','SIN'),(60,'Simon','Steoud','M','1974-12-29','KOR'),(61,'Zora','Chapman','F','1980-07-03','GBR'),(62,'Waldo','Marby','M','1986-03-03','MAC'),(63,'Willy','Spears','M','1973-07-06','USA'),(64,'Vera','Prado','F','1987-06-29','MEX'),(66,'Valeria','Sahagun','F','1976-08-29','URU'),(68,'Raley','Steel','M','1979-08-01','ESA'),(69,'Harry','Miller','M','1988-12-11','USA'),(70,'Eva','Miller','F','1991-03-25','USA'),(71,'Adam','Vergon','M','1969-05-01','ARG'),(72,'Vahshee','Ahoul','M','1975-06-04','IND'),(73,'Gretta','Veljor','F','1975-08-27','GER'),(75,'Arman','Durs','M','1984-02-14','IRL'),(76,'Uki','Cumoto','F','1995-01-01','JPN'),(78,'Agnus','Wert','M','1983-12-24','TPE'),(79,'Jerom','Votye','M','1986-09-05','FRA');
/*!40000 ALTER TABLE `racer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration` (
  `ID_Registration` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Racer` int(11) NOT NULL,
  `Registration_Date` date NOT NULL,
  `ID_Registration_Status` int(11) NOT NULL,
  `Cost` decimal(10,0) NOT NULL,
  `ID_Charity` int(11) NOT NULL,
  `SponsorshipTarget` decimal(10,0) NOT NULL,
  PRIMARY KEY (`ID_Registration`),
  KEY `ID_Charity` (`ID_Charity`),
  KEY `ID_Racer` (`ID_Racer`,`ID_Registration_Status`),
  KEY `ID_Registration_Status` (`ID_Registration_Status`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES (1,7,'2015-06-16',1,15,1,500),(4,8,'2015-06-07',2,15,3,1500),(7,9,'2015-09-17',1,15,2,700),(8,10,'2015-07-05',1,15,2,863),(9,11,'2015-12-25',2,15,7,439),(12,12,'2015-01-08',2,15,5,752),(13,13,'2015-05-09',3,15,7,600),(14,16,'2015-10-05',1,15,5,800),(15,19,'2015-02-10',4,15,1,420),(16,20,'2015-01-19',2,15,3,750),(18,21,'2015-02-12',3,15,3,500),(19,23,'2015-06-08',4,15,5,350),(21,26,'2015-12-05',1,15,2,400),(23,27,'2015-05-07',2,15,1,250),(27,28,'2015-06-18',4,15,3,1000),(28,29,'2015-02-01',3,15,7,850),(29,30,'2015-05-01',1,15,2,500),(30,33,'2015-02-19',2,15,2,150),(31,34,'2015-04-16',4,15,1,650),(32,36,'2015-08-01',1,15,5,2500),(33,37,'2015-08-27',3,15,3,280),(34,40,'2016-01-01',2,15,7,1000),(35,41,'2015-04-28',1,15,1,780),(36,42,'2015-06-18',1,15,3,560),(37,43,'2015-03-27',4,15,5,800),(39,44,'2015-06-16',3,15,2,580),(40,45,'2015-02-28',3,15,1,400),(41,46,'2015-08-05',1,15,2,1800),(42,48,'2015-12-23',2,15,7,4000),(43,51,'2015-10-12',3,15,2,100),(44,55,'2016-01-01',2,15,3,600),(45,57,'2015-05-19',1,15,5,400),(46,59,'2015-07-18',2,15,7,1350),(48,60,'2015-09-11',1,15,1,2100),(49,61,'2016-01-12',1,15,2,200),(50,62,'2015-08-15',4,15,5,180),(51,63,'2015-07-13',3,15,3,1200),(52,64,'2015-05-27',2,15,1,520),(56,66,'2015-11-15',1,15,7,100),(57,68,'2016-02-01',3,15,3,280),(58,69,'2015-07-18',4,15,5,2100),(59,70,'2015-01-02',1,15,2,1100),(60,71,'2015-06-17',3,15,3,400),(62,72,'2015-01-04',3,15,5,600),(63,73,'2015-08-13',4,15,7,320),(64,75,'2015-03-29',3,15,1,840),(65,76,'2015-07-14',3,15,2,1900),(66,78,'2015-03-30',1,15,3,1500),(67,79,'2015-08-16',4,15,7,2200),(68,58,'2015-01-28',4,15,1,280);
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_status`
--

DROP TABLE IF EXISTS `registration_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_status` (
  `ID_Registration_Status` int(11) NOT NULL AUTO_INCREMENT,
  `Statu_Name` varchar(80) NOT NULL,
  PRIMARY KEY (`ID_Registration_Status`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_status`
--

LOCK TABLES `registration_status` WRITE;
/*!40000 ALTER TABLE `registration_status` DISABLE KEYS */;
INSERT INTO `registration_status` VALUES (1,'Registered'),(2,'\nPayment Confirmed'),(4,'Race Attended');
/*!40000 ALTER TABLE `registration_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `result` (
  `ID_Result` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Registration` int(11) NOT NULL,
  `ID_Event` int(11) NOT NULL,
  `BidNumber` smallint(6) NOT NULL,
  `RaceTime` time NOT NULL,
  PRIMARY KEY (`ID_Result`),
  KEY `ID_Registration` (`ID_Registration`,`ID_Event`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES (1,1,1,1,'12:34:54'),(2,4,1,12,'00:10:15'),(3,7,2,23,'00:05:07'),(5,8,4,4,'00:03:17'),(7,9,4,25,'00:04:13'),(8,1,2,1,'00:05:14'),(9,28,15,31,'00:03:39'),(10,12,19,19,'00:06:01'),(11,13,5,34,'00:05:47'),(14,12,2,66,'00:05:47'),(16,13,10,9,'00:02:30'),(17,37,21,65,'00:02:30'),(18,40,9,32,'00:05:30'),(19,50,4,11,'00:04:00'),(20,7,2,23,'00:05:00'),(21,1,4,14,'00:02:30'),(22,68,2,15,'00:05:00'),(23,34,7,16,'00:03:00'),(24,41,1,17,'00:05:00'),(25,36,21,18,'00:02:30'),(26,37,20,19,'00:04:00'),(27,35,15,20,'00:04:00'),(28,48,7,21,'00:03:50'),(29,63,4,66,'00:03:47'),(30,60,9,54,'00:05:30'),(31,41,4,87,'00:03:55'),(32,32,13,98,'00:02:56'),(33,57,20,53,'00:03:57'),(36,64,10,63,'00:04:00'),(37,63,19,96,'00:05:15'),(38,39,21,42,'00:03:17'),(39,58,7,72,'00:02:42'),(41,44,8,56,'00:02:54'),(43,37,2,44,'00:06:11'),(44,29,15,87,'00:02:58'),(45,27,21,89,'00:01:56'),(46,8,15,49,'00:03:03'),(47,9,20,54,'00:03:21'),(50,30,9,38,'00:05:59'),(52,27,19,55,'00:03:07'),(54,41,10,1,'00:02:55'),(55,21,2,99,'00:06:56'),(56,39,5,456,'00:04:59'),(57,40,1,693,'00:02:14'),(58,29,8,12,'00:04:51'),(59,33,21,54,'00:02:13'),(60,7,10,66,'00:03:10'),(61,4,13,45,'00:04:01'),(62,19,9,71,'00:07:01');
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `ID_Role` char(1) NOT NULL,
  `Role_Name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_Role`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES ('A','Administrator'),('C','Coordinator'),('R','Racer');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsorship`
--

DROP TABLE IF EXISTS `sponsorship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sponsorship` (
  `ID_Sponsorship` int(11) NOT NULL AUTO_INCREMENT,
  `SponsorName` varchar(150) NOT NULL,
  `Amount` decimal(10,0) NOT NULL,
  PRIMARY KEY (`ID_Sponsorship`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsorship`
--

LOCK TABLES `sponsorship` WRITE;
/*!40000 ALTER TABLE `sponsorship` DISABLE KEYS */;
INSERT INTO `sponsorship` VALUES (1,'Angel Jhons',180),(2,'Uri Kovrov',25),(3,'Asha Timbert',150),(4,'Artur Genby',1000),(5,'Gely Brick',290),(6,'Bondy Black',236),(7,'Ban Trick',8000),(8,'Oliver Greds',5200),(9,'Grindel Frool',15000),(10,'Emanuel Rick',50),(11,'Elena Tvordova',150);
/*!40000 ALTER TABLE `sponsorship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `First_Name` varchar(30) NOT NULL,
  `Last_Name` varchar(30) NOT NULL,
  `ID_Role` char(1) NOT NULL,
  KEY `ID_Role` (`ID_Role`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('L.Jeferson@gmail.com','$1Qr3%9%r','Liam','Jeferson','R'),('A.Ivanova@gmail.com','%pO53f','Anna','Ivanova','R'),('I.Vahsha@gmail.com','34@7jpG','Irakly','Vahsha','R'),('E.Huano@gmail.com','72%V876^sE$','Ernest','Huano','R'),('G.Sertio@gmail.com','!44Qzvg2%!9','Gamlet','Sertio','R'),('C.Neel@gmail.com','E@AJ#4c#5ad','Christian','Neel','R'),('E.Mussoliny@gmail.com','!H5N@@$1%@','Enrice','Mussoliny','R'),('L.Andersen@gmail.com','!pUzeL$^','Lui','Andersen','R'),('E.Atlandes@gmail.com','$@^3Ul^','Enrike','Atlandes','R'),('A.Smith@gmail.com','UE$2T5!e$P','Angela','Smith','R'),('L.Marko@gmail.com','NpRQo$!','Lucius','Marko','R'),('A.Mishkevich@gmail.com','i1nO5$','Andrey','Mishkevich','R'),('R.Skitter@gmail.com','GP6oAQ2','Rita','Skitter','R'),('Y.Zi@gmail.com','o^zQ1!D','Yamato','Zi','R'),('K.Perno@gmail.com','vXkN9%g','Kuriko','Perno','R'),('V.Zulinc@gmail.com','Oc#LJH3I','Viktor','Zulinc','R'),('E.Huso@gmail.com','9uaC410#WL','Elen','Huso','R'),('A.Adkin@gmail.com','B5ob@@2z','Ahmad','Adkin','R'),('A.Allison@gmail.com','D10!61!','Alphonso','Allison','R'),('A.BURNHAM@gmail.com','o0Xl^%@x%n9','Alfreda','BURNHAM','R'),('A.Bitsuile@gmail.com','^T%Vl%@s','April','Bitsuile','R'),('A.Brooks@gmail.com','YE!Xx!4$','Aron','Brooks','R'),('A.Candlish@gmail.com','Qf7Q#c$19@^','Angel','Candlish','R'),('A.Crews@gmail.com','L0g$d@cj1R','Austin','Crews','R'),('A.Conard@gmail.com','^@ujJ1%W3^^','Alisha','Conard','R'),('A.Crockett@gmail.com','F3ohCd!','Anika','Crockett','R'),('B.Lipke@gmail.com','I7t515x','Brian','Lipke','R'),('B.Mccoy@gmail.com','@8$QR^3!c','Bryan','Mccoy','R'),('C.Cline@gmail.com','T@M$YBa6','Chiquita','Cline','R'),('C.Cook@gmail.com','SuU@!IC','Cruz','Cook','R'),('C.Mcknight@gmail.com','55n8mXY!sEB','Charlie','Mcknight','R'),('G.Titus@gmail.com','Br8Xl!0','Gus','Titus','R'),('H.Bourbon@gmail.com','49uj!w','Hugh','Bourbon','R'),('R.Carmona@gmail.com','2836Xqt','Robin','Carmona','R'),('S.Steoud@gmail.com','%mXS3nK','Simon','Steoud','R'),('Z.Chapman@gmail.com','s9A64@69W1','Zora','Chapman','R'),('W.Marby@gmail.com','^k#Gi2^#n','Waldo','Marby','R'),('W.Spears@gmail.com','3%y1pv#H9','Willy','Spears','R'),('V.Prado@gmail.com','u015D@EK','Vera','Prado','R'),('V.Sahagun@gmail.com','iupTL%K5','Valeria','Sahagun','R'),('R.Steel@gmail.com','IY7%#98B6','Raley','Steel','R'),('H.Miller@gmail.com','yb%7%yq0','Harry','Miller','R'),('E.Miller@gmail.com','$D5^37V9G!%','Eva','Miller','R'),('A.Vergon@gmail.com','Qq!vc@4o','Adam','Vergon','R'),('V.Ahoul@gmail.com','1gM^#5%%t7','Vahshee','Ahoul','R'),('G.Veljor@gmail.com','fk94j!8^','Gretta','Veljor','R'),('A.Durs@gmail.com','w2NL$vySH^K','Arman','Durs','R'),('U.Cumoto@gmail.com','69!bXu','Uki','Cumoto','R'),('A.Wert@gmail.com','Isq%5IG!n','Agnus','Wert','R'),('J.Votye@gmail.com','^d$23wn7gt','Jerom','Votye','R');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `volunteer`
--

DROP TABLE IF EXISTS `volunteer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `volunteer` (
  `ID_Volunteer` char(3) NOT NULL,
  `First_Name` varchar(80) NOT NULL,
  `Last_Name` varchar(80) NOT NULL,
  `ID_Country` char(3) NOT NULL,
  `Gender_ID` char(1) NOT NULL,
  PRIMARY KEY (`ID_Volunteer`),
  KEY `ID_Country` (`ID_Country`,`Gender_ID`),
  KEY `FK_Volunteer_Gender` (`Gender_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volunteer`
--

LOCK TABLES `volunteer` WRITE;
/*!40000 ALTER TABLE `volunteer` DISABLE KEYS */;
/*!40000 ALTER TABLE `volunteer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `сharity`
--

DROP TABLE IF EXISTS `сharity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `сharity` (
  `сharityId` int(11) NOT NULL AUTO_INCREMENT,
  `сharityName` varchar(100) NOT NULL,
  `сharityDescription` varchar(3000) NOT NULL,
  `Charity_Logo` varchar(50) NOT NULL,
  PRIMARY KEY (`сharityId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `сharity`
--

LOCK TABLES `сharity` WRITE;
/*!40000 ALTER TABLE `сharity` DISABLE KEYS */;
/*!40000 ALTER TABLE `сharity` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-28  8:55:07
