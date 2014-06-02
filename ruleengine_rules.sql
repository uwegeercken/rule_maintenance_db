-- MySQL dump 10.14  Distrib 5.5.37-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: ruleengine_rules
-- ------------------------------------------------------
-- Server version	5.5.37-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `action`
--

DROP TABLE IF EXISTS `action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `action` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `classname` varchar(255) NOT NULL,
  `methodname` varchar(255) DEFAULT NULL,
  `methoddisplayname` varchar(255) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action`
--

LOCK TABLES `action` WRITE;
/*!40000 ALTER TABLE `action` DISABLE KEYS */;
INSERT INTO `action` VALUES (1,'com.datamelt.rules.core.action.StringAction','setValue','set value (string)','2014-04-29 18:27:04'),(2,'com.datamelt.rules.core.action.StringAction','prependValue','prepend','2014-04-29 18:27:04'),(3,'com.datamelt.rules.core.action.StringAction','appendValue','append','2014-04-29 18:27:04'),(4,'com.datamelt.rules.core.action.StringAction','concatValues','concat','2014-04-29 18:27:04'),(5,'com.datamelt.rules.core.action.StringAction','addLeadingSpaces','add leading spaces','2014-04-29 18:27:04'),(6,'com.datamelt.rules.core.action.StringAction','addLeadingZeros','add leading zeros','2014-04-29 18:27:04'),(7,'com.datamelt.rules.core.action.StringAction','lowerCaseValue','lowercase','2014-04-29 18:27:04'),(8,'com.datamelt.rules.core.action.StringAction','upperCaseValue','uppercase','2014-04-29 18:27:04'),(9,'com.datamelt.rules.core.action.StringAction','subStringValue','substring','2014-04-29 18:27:04'),(10,'com.datamelt.rules.core.action.StringAction','trimValue','trim','2014-04-29 18:27:04'),(11,'com.datamelt.rules.core.action.MathAction','setValue','set value (number)','2014-04-29 18:27:04'),(12,'com.datamelt.rules.core.action.MathAction','addValues','sum','2014-04-29 18:27:04'),(13,'com.datamelt.rules.core.action.MathAction','devideValues','devide','2014-04-29 18:27:04'),(14,'com.datamelt.rules.core.action.MathAction','multiplyValues','multiply','2014-04-29 18:27:04'),(15,'com.datamelt.rules.core.action.MathAction','substractValues','subtract','2014-04-29 18:27:04'),(16,'com.datamelt.rules.core.action.DateAction','setValue','set value (date)','2014-05-15 20:17:08');
/*!40000 ALTER TABLE `action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `check`
--

DROP TABLE IF EXISTS `check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `check` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name_descriptive` varchar(255) DEFAULT NULL,
  `check_single_field` tinyint(1) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `check`
--

LOCK TABLES `check` WRITE;
/*!40000 ALTER TABLE `check` DISABLE KEYS */;
INSERT INTO `check` VALUES (1,'CheckIsEqual','Check for equality of values','is equal to',0,'2014-04-16 14:10:45'),(2,'CheckIsNotEqual','Check if values are not equal','is not equal to',0,'2014-04-17 23:04:34'),(3,'CheckContains','Check if one String contains another String','contains',0,'2014-04-16 14:10:45'),(4,'CheckNotContains','Check if one String does not contain another String','does not contain',0,'2014-04-16 14:10:45'),(5,'CheckIsUppercase','Check if a String contains upper case characters only','is uppercase',1,'2014-04-16 14:11:30'),(6,'CheckIsLowercase','Check if a String contains lower case characters only','is lowercase',1,'2014-04-16 14:11:30'),(7,'CheckEndsWith','Check if a String ends with a certain String','ends with',0,'2014-04-16 14:10:45'),(8,'CheckNotEndsWith','Check if a String does not end with a certain String','does not end with',0,'2014-04-16 14:10:45'),(9,'CheckStartsWith','Check if a String starts with a certain String','starts with',0,'2014-04-16 14:10:45'),(10,'CheckNotStartsWith','Check if a String does not start with a certain String','does not start with',0,'2014-04-16 14:10:45'),(11,'CheckIsGreater','Check if a numeric value is greater than the other one. In case of a String checks if the length of a String is greater than the other one','is greater than',0,'2014-04-16 14:10:45'),(12,'CheckIsSmaller','Check if a numeric value is smaller than the other one. In case of a String checks if the length of a String is smaller than the other one','is smaller than',0,'2014-04-16 14:10:45'),(13,'CheckIsGreaterOrEqual','Check if a numeric value is greater or equal than the other one. In case of a string checks if the length of a String is greater or equal than the other one','is greater or equal than',0,'2014-04-16 14:10:45'),(14,'CheckIsSmallerOrEqual','Check if a numeric value is smaller or equal than the other one. In case of a string checks if the length of a String is smaller or equal than the other one','is smaller or equal than',0,'2014-04-16 14:10:45'),(15,'CheckIsInList','Checks if a string is contained in a list of values. The list is represented by a string where the individual values are seperated by a comma','is in list',0,'2014-04-16 14:10:45'),(16,'CheckIsNotInList','Checks if a string is not contained in a list of values. The list is represented by a string where the individual values are seperated by a comma','is not in list',0,'2014-04-16 14:10:45'),(17,'CheckIsBetween','Checks if a numeric value is between two given values','is between',0,'2014-04-16 14:10:45'),(18,'CheckIsNotBetween','Checks if a numeric value is not between two given values','is not between',0,'2014-04-16 14:10:45'),(19,'CheckIsNumeric','Checks if a value is numeric where all characters are numbers','is numeric',1,'2014-04-16 14:11:30'),(20,'CheckIsEmpty','Checks if a string value is empty, meaning of zero length','is empty',1,'2014-04-16 17:12:54'),(21,'CheckIsNotEmpty','Checks if a string value is not empty, meaning it\'s length is greater than zero','is not empty',1,'2014-04-16 17:12:54'),(22,'CheckIsNull','Checks if a value is null','is null',1,'2014-04-16 14:11:30'),(23,'CheckIsNotNull','Checks if a value is not null','is not null',1,'2014-04-16 14:11:30'),(24,'CheckLength','Checks if a string has a defined length. In case of an integer, checks the number of digits the integer consists of','has length',0,'2014-04-16 14:10:45'),(25,'CheckMatches','Checks if a string matches another one, using a regular expression pattern','matches',0,'2014-04-16 14:10:45'),(26,'CheckNotMatches','Checks if a string does not match another one, using a regular expression pattern','not matches',0,'2014-04-16 14:10:45'),(27,'CheckSoundsLike','Checks if a string sounds like the other, using the soundex algorithm','sounds like',0,'2014-04-16 14:10:45'),(28,'CheckNotSoundsLike','Checks if a string does not sound like the other, using the soundex algorithm','not sounds like',0,'2014-04-16 14:10:45'),(29,'CheckIsNegativNumber','Checks if a number is smaller than zero','is negativ number',1,'2014-04-16 14:11:30');
/*!40000 ALTER TABLE `check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'Admin','Admin Group','2014-04-08 14:35:19'),(2,'User','User Group','2014-04-08 14:35:33'),(3,'User_ro','Read-only User Group','2014-04-08 14:35:49');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupuser`
--

DROP TABLE IF EXISTS `groupuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupuser` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `groups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_groupuser` (`user_id`,`groups_id`),
  KEY `idx_user` (`user_id`),
  KEY `idx_group` (`groups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupuser`
--

LOCK TABLES `groupuser` WRITE;
/*!40000 ALTER TABLE `groupuser` DISABLE KEYS */;
INSERT INTO `groupuser` VALUES (1,1,1,'2014-04-08 14:37:02');
/*!40000 ALTER TABLE `groupuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `database_hostname` varchar(80) DEFAULT NULL,
  `database_name` varchar(80) DEFAULT NULL,
  `database_tablename` varchar(80) DEFAULT NULL,
  `database_userid` varchar(80) DEFAULT NULL,
  `database_user_password` varchar(80) DEFAULT NULL,
  `last_update_user_id` int(10) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `projectuser`
--

DROP TABLE IF EXISTS `projectuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectuser` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `project_id` int(10) unsigned NOT NULL DEFAULT '0',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_projectuser` (`user_id`,`project_id`),
  KEY `idx_user` (`user_id`),
  KEY `idx_project` (`project_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rule`
--

DROP TABLE IF EXISTS `rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rule` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `rulesubgroup_id` int(10) NOT NULL DEFAULT '0',
  `check_id` int(10) DEFAULT NULL,
  `last_update_user_id` int(10) DEFAULT NULL,
  `name` varchar(80) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `object1_classname` varchar(255) DEFAULT NULL,
  `object1_methodname` varchar(255) DEFAULT NULL,
  `object1_parametertype_id` int(10) DEFAULT NULL,
  `object1_parameter` varchar(255) DEFAULT NULL,
  `object1_type_id` int(10) DEFAULT NULL,
  `object2_classname` varchar(255) DEFAULT NULL,
  `object2_methodname` varchar(255) DEFAULT NULL,
  `object2_parametertype_id` int(10) DEFAULT NULL,
  `object2_parameter` varchar(255) DEFAULT NULL,
  `object2_type_id` int(10) DEFAULT NULL,
  `expectedvalue` varchar(255) DEFAULT NULL,
  `expectedvalue_type_id` int(10) DEFAULT NULL,
  `message_passed` varchar(255) NOT NULL,
  `message_failed` varchar(255) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rulegroup`
--

DROP TABLE IF EXISTS `rulegroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rulegroup` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(10) unsigned NOT NULL DEFAULT '0',
  `last_update_user_id` int(10) DEFAULT NULL,
  `name` varchar(80) NOT NULL,
  `description` varchar(255) NOT NULL,
  `valid_from` date NOT NULL,
  `valid_until` date NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rulegroupaction`
--

DROP TABLE IF EXISTS `rulegroupaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rulegroupaction` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `rulegroup_id` int(10) NOT NULL DEFAULT '0',
  `last_update_user_id` int(10) DEFAULT NULL,
  `action_id` int(10) NOT NULL,
  `name` varchar(80) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `object1_classname` varchar(255) DEFAULT NULL,
  `object1_methodname` varchar(255) DEFAULT NULL,
  `object1_parametertype_id` int(10) DEFAULT NULL,
  `object1_parameter` varchar(255) DEFAULT NULL,
  `object1_type_id` int(10) DEFAULT NULL,
  `object2_classname` varchar(255) DEFAULT NULL,
  `object2_methodname` varchar(255) DEFAULT NULL,
  `object2_parametertype_id` int(10) DEFAULT NULL,
  `object2_parameter` varchar(255) DEFAULT NULL,
  `object2_type_id` int(10) DEFAULT NULL,
  `parameter1` varchar(255) DEFAULT NULL,
  `parameter1_type_id` int(10) DEFAULT NULL,
  `parameter2` varchar(255) DEFAULT NULL,
  `parameter2_type_id` int(10) DEFAULT NULL,
  `parameter3` varchar(255) DEFAULT NULL,
  `parameter3_type_id` int(10) DEFAULT NULL,
  `execute_if` varchar(20) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rulesubgroup`
--

DROP TABLE IF EXISTS `rulesubgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rulesubgroup` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rulegroup_id` int(10) unsigned NOT NULL DEFAULT '0',
  `last_update_user_id` int(10) DEFAULT NULL,
  `name` varchar(80) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `intergroupoperator` enum('and','or') NOT NULL,
  `ruleoperator` enum('and','or') NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `types` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types`
--

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` VALUES (1,'string','2014-04-13 15:28:35'),(2,'integer','2014-04-13 15:28:40'),(3,'float','2014-04-13 15:28:47'),(4,'double','2014-04-13 15:28:51'),(5,'boolean','2014-04-13 15:28:57'),(6,'long','2014-04-17 22:39:47'),(7,'bigdecimal','2014-04-23 21:17:04'),(8,'date','2014-05-15 19:28:37');
/*!40000 ALTER TABLE `types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(25) NOT NULL,
  `name` varchar(80) NOT NULL DEFAULT '',
  `password` varchar(255) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastlogin` datetime DEFAULT NULL,
  `deleted` tinyint(1) unsigned DEFAULT '0',
  `deleted_date` date DEFAULT '0000-00-00',
  `password_update_date` date DEFAULT '0000-00-00',
  `is_admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin','*4ACFE3202A5FF5CF467898FC58AAB1D615029441','2014-06-02 16:50:36','2014-06-02 06:50:36',0,'0000-00-00','0000-00-00',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-02 19:17:06
