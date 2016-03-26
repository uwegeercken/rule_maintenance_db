-- MySQL dump 10.15  Distrib 10.0.23-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: ruleengine_rules
-- ------------------------------------------------------
-- Server version	10.0.23-MariaDB

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
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action`
--

LOCK TABLES `action` WRITE;
/*!40000 ALTER TABLE `action` DISABLE KEYS */;
INSERT INTO `action` VALUES (1,'com.datamelt.rules.core.action.StringAction','setValue','set value (string)','2014-04-29 18:27:04'),(2,'com.datamelt.rules.core.action.StringAction','prependValue','prepend','2014-04-29 18:27:04'),(3,'com.datamelt.rules.core.action.StringAction','appendValue','append','2014-04-29 18:27:04'),(4,'com.datamelt.rules.core.action.StringAction','concatValues','concat','2014-04-29 18:27:04'),(5,'com.datamelt.rules.core.action.StringAction','addLeadingSpaces','add leading spaces','2014-04-29 18:27:04'),(6,'com.datamelt.rules.core.action.StringAction','addLeadingZeros','add leading zeros','2014-04-29 18:27:04'),(7,'com.datamelt.rules.core.action.StringAction','lowerCaseValue','lowercase','2014-04-29 18:27:04'),(8,'com.datamelt.rules.core.action.StringAction','upperCaseValue','uppercase','2014-04-29 18:27:04'),(9,'com.datamelt.rules.core.action.StringAction','subStringValue','substring','2014-04-29 18:27:04'),(10,'com.datamelt.rules.core.action.StringAction','trimValue','trim','2014-04-29 18:27:04'),(11,'com.datamelt.rules.core.action.MathAction','setValue','set value (number)','2014-04-29 18:27:04'),(12,'com.datamelt.rules.core.action.MathAction','addValues','sum','2014-04-29 18:27:04'),(13,'com.datamelt.rules.core.action.MathAction','devideValues','devide','2014-04-29 18:27:04'),(14,'com.datamelt.rules.core.action.MathAction','multiplyValues','multiply','2014-04-29 18:27:04'),(15,'com.datamelt.rules.core.action.MathAction','substractValues','subtract','2014-04-29 18:27:04'),(16,'com.datamelt.rules.core.action.DateAction','setValue','set value (date)','2014-05-15 20:17:08'),(17,'com.datamelt.rules.core.action.MathAction','squareRootValue','square root','2016-03-24 19:10:38'),(18,'com.datamelt.rules.core.action.MathAction','squareValue','square','2016-03-24 19:12:26'),(19,'com.datamelt.rules.core.action.MathAction','roundValue','round','2016-03-24 20:57:13'),(20,'com.datamelt.rules.core.action.MathAction','cosValue','cosinus','2016-03-24 20:57:32'),(21,'com.datamelt.rules.core.action.MathAction','coshValue','cosinush','2016-03-24 20:57:53'),(22,'com.datamelt.rules.core.action.MathAction','acosValue','acosinus','2016-03-24 20:58:03'),(23,'com.datamelt.rules.core.action.MathAction','sinValue','sinus','2016-03-24 20:58:14'),(24,'com.datamelt.rules.core.action.MathAction','sinhValue','sinush','2016-03-24 20:58:28'),(25,'com.datamelt.rules.core.action.MathAction','asinValue','asinus','2016-03-24 20:58:50'),(26,'com.datamelt.rules.core.action.MathAction','tanValue','tangens','2016-03-24 20:59:02'),(27,'com.datamelt.rules.core.action.MathAction','tanhValue','tangensh','2016-03-24 20:59:22'),(28,'com.datamelt.rules.core.action.MathAction','atanValue','atangens','2016-03-24 20:59:40');
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
  `package` varchar(80) DEFAULT NULL,
  `class` varchar(80) DEFAULT NULL,
  `check_single_field` tinyint(1) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `check`
--

LOCK TABLES `check` WRITE;
/*!40000 ALTER TABLE `check` DISABLE KEYS */;
INSERT INTO `check` VALUES (1,'Check Is Equal','Check for equality of values','is equal to','com.datamelt.rules.implementation','CheckIsEqual',0,'2014-11-27 22:03:01'),(2,'Check Is Not Equal','Check if values are not equal','is not equal to','com.datamelt.rules.implementation','CheckIsNotEqual',0,'2014-11-27 20:35:35'),(3,'Check Contains','Check if one String contains another String','contains','com.datamelt.rules.implementation','CheckContains',0,'2014-11-27 20:35:35'),(4,'Check Not Contains','Check if one String does not contain another String','does not contain','com.datamelt.rules.implementation','CheckNotContains',0,'2014-11-27 20:35:35'),(5,'Check Is Uppercase','Check if a String contains upper case characters only','is uppercase','com.datamelt.rules.implementation','CheckIsUppercase',1,'2014-11-27 20:35:35'),(6,'Check Is Lowercase','Check if a String contains lower case characters only','is lowercase','com.datamelt.rules.implementation','CheckIsLowercase',1,'2014-11-27 20:35:35'),(7,'Check Ends With','Check if a String ends with a certain String','ends with','com.datamelt.rules.implementation','CheckEndsWith',0,'2014-11-27 20:35:35'),(8,'Check Not Ends With','Check if a String does not end with a certain String','does not end with','com.datamelt.rules.implementation','CheckNotEndsWith',0,'2014-11-27 20:35:35'),(9,'Check Starts With','Check if a String starts with a certain String','starts with','com.datamelt.rules.implementation','CheckStartsWith',0,'2014-11-27 20:35:35'),(10,'Check Not Starts With','Check if a String does not start with a certain String','does not start with','com.datamelt.rules.implementation','CheckNotStartsWith',0,'2014-11-27 20:35:35'),(11,'Check Is Greater','Check if a numeric value is greater than the other one. In case of a String checks if the length of a String is greater than the other one','is greater than','com.datamelt.rules.implementation','CheckIsGreater',0,'2014-11-27 20:35:35'),(12,'Check Is Smaller','Check if a numeric value is smaller than the other one. In case of a String checks if the length of a String is smaller than the other one','is smaller than','com.datamelt.rules.implementation','CheckIsSmaller',0,'2014-11-27 20:35:35'),(13,'Check Is Greater Or Equal','Check if a numeric value is greater or equal than the other one. In case of a string checks if the length of a String is greater or equal than the other one','is greater or equal than','com.datamelt.rules.implementation','CheckIsGreaterOrEqual',0,'2014-11-27 20:35:35'),(14,'Check Is Smaller Or Equal','Check if a numeric value is smaller or equal than the other one. In case of a string checks if the length of a String is smaller or equal than the other one','is smaller or equal than','com.datamelt.rules.implementation','CheckIsSmallerOrEqual',0,'2014-11-27 20:35:35'),(15,'Check Is In List','Checks if a string is contained in a list of values. The list is represented by a string where the individual values are seperated by a comma','is in list','com.datamelt.rules.implementation','CheckIsInList',0,'2014-11-27 20:35:35'),(16,'Check Is Not In List','Checks if a string is not contained in a list of values. The list is represented by a string where the individual values are seperated by a comma','is not in list','com.datamelt.rules.implementation','CheckIsNotInList',0,'2014-11-27 20:35:35'),(17,'Check Is Between','Checks if a numeric value is between two given values','is between','com.datamelt.rules.implementation','CheckIsBetween',0,'2014-11-27 20:35:35'),(18,'Check Is Not Between','Checks if a numeric value is not between two given values','is not between','com.datamelt.rules.implementation','CheckIsNotBetween',0,'2014-11-27 20:35:35'),(19,'Check Is Numeric','Checks if a value is numeric where all characters are numbers','is numeric','com.datamelt.rules.implementation','CheckIsNumeric',1,'2014-11-27 20:35:35'),(20,'Check Is Empty','Checks if a string value is empty, meaning of zero length','is empty','com.datamelt.rules.implementation','CheckIsEmpty',1,'2014-11-27 20:35:35'),(21,'Check Is Not Empty','Checks if a string value is not empty, meaning it\'s length is greater than zero','is not empty','com.datamelt.rules.implementation','CheckIsNotEmpty',1,'2014-11-27 20:35:35'),(22,'Check Is Null','Checks if a value is null','is null','com.datamelt.rules.implementation','CheckIsNull',1,'2014-11-27 20:35:35'),(23,'Check Is Not Null','Checks if a value is not null','is not null','com.datamelt.rules.implementation','CheckIsNotNull',1,'2014-11-27 20:35:35'),(24,'Check Length','Checks if a string has a defined length. In case of an integer, checks the number of digits the integer consists of','has length','com.datamelt.rules.implementation','CheckLength',0,'2014-11-27 20:35:35'),(25,'Check Matches','Checks if a string matches another one, using a regular expression pattern','matches','com.datamelt.rules.implementation','CheckMatches',0,'2014-11-27 20:35:35'),(26,'Check Not Matches','Checks if a string does not match another one, using a regular expression pattern','not matches','com.datamelt.rules.implementation','CheckNotMatches',0,'2014-11-27 20:35:35'),(27,'Check Sounds Like','Checks if a string sounds like the other, using the soundex algorithm','sounds like','com.datamelt.rules.implementation','CheckSoundsLike',0,'2014-11-27 20:35:35'),(28,'Check Not Sounds Like','Checks if a string does not sound like the other, using the soundex algorithm','not sounds like','com.datamelt.rules.implementation','CheckNotSoundsLike',0,'2014-11-27 22:04:10'),(29,'Check Is Negative Number','Checks if a number is smaller than zero','is negativ number','com.datamelt.rules.implementation','CheckIsNegativeNumber',1,'2014-11-27 20:35:35'),(30,'Check List Has Member','Checks if a comma seperated list of values contains a given member','has list member','com.datamelt.rules.implementation','CheckListHasMember',0,'2015-04-17 06:25:48'),(31,'Check List Not Has Member','Checks if a comma seperated list of values not contains a given member','has not list member','com.datamelt.rules.implementation','CheckListNotHasMember',0,'2015-04-17 06:26:09'),(32,'Check Is Prime','Checks if a number is a prime number','is prime','com.datamelt.rules.implementation','CheckIsPrime',1,'2014-11-27 20:35:35'),(33,'Check Is Not Prime','Checks if a number is not a prime number','is not prime','com.datamelt.rules.implementation','CheckIsNotPrime',1,'2014-11-27 20:35:35'),(34,'Check Is Even','Checks if a number is an even number','is even','com.datamelt.rules.implementation','CheckIsEven',1,'2014-11-27 20:35:35'),(35,'Check Is Not Even','Checks if a number is not an even number','is not even','com.datamelt.rules.implementation','CheckIsNotEven',1,'2014-11-27 20:35:35'),(36,'Check Distance Is Equal','Checks if the Levenshtein distance between two strings is equal to a given value','is equal to (Levenshtein distance)','com.datamelt.rules.implementation','CheckDistanceIsEqual',0,'2015-04-17 06:23:05'),(37,'Check Distance Is Greater Or Equal','Checks if the Levenshtein distance between two strings is greater or equal to a given value','is greater than or equal to (Levenshtein distance)','com.datamelt.rules.implementation','CheckDistanceIsGreaterOrEqual',0,'2015-04-17 06:27:57'),(38,'Check Distance Is Smaller Or Equal','Checks if the Levenshtein distance between two strings is smaller or equal to a given value','is smaller than or equal to (Levenshtein distance)','com.datamelt.rules.implementation','CheckDistanceIsSmallerOrEqual',0,'2015-04-17 06:28:13'),(39,'Check Distance Is Smaller','Checks if the Levenshtein distance between two strings is smaller than a given value','is smaller than (Levenshtein distance)','com.datamelt.rules.implementation','CheckDistanceIsSmaller',0,'2015-04-17 06:21:53'),(40,'Check Distance Is Greater','Checks if the Levenshtein distance between two strings is greater than a given value','is greater than (Levenshtein distance)','com.datamelt.rules.implementation','CheckDistanceIsGreater',0,'2015-04-17 06:20:47');
/*!40000 ALTER TABLE `check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `check_method`
--

DROP TABLE IF EXISTS `check_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `check_method` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `check_id` int(10) NOT NULL,
  `compare` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `compare_to` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `note` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `parameter1` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `parameter1_explanation` varchar(255) DEFAULT NULL,
  `parameter2` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `parameter2_explanation` varchar(255) DEFAULT NULL,
  `parameter3` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `parameter3_explanation` varchar(255) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `check_method`
--

LOCK TABLES `check_method` WRITE;
/*!40000 ALTER TABLE `check_method` DISABLE KEYS */;
INSERT INTO `check_method` VALUES (1,1,'String','String','Without parameter Strings are compared case sensitive','boolean','Ignore case differences during comparison.',NULL,NULL,NULL,NULL,'2015-04-19 15:08:06'),(2,1,'boolean','boolean',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-04-19 14:37:18'),(3,1,'Date','Date',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-04-19 14:39:53'),(6,1,'Date','String','Without parameter the String is converted to a Date using the format yyyy-MM-dd','String','Provide a date format different from the default.',NULL,NULL,NULL,NULL,'2015-04-19 15:06:04'),(7,1,'double','double',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-04-19 14:54:43'),(8,1,'float','float',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-04-19 14:55:07'),(9,1,'integer','integer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-04-19 14:58:35'),(10,1,'long','long',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-04-19 14:59:02'),(11,1,'long','integer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-04-19 14:59:10'),(12,1,'integer','long',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-04-19 14:59:18'),(13,3,'String','String','The default is to compare the values case sensitive.','boolean','Ignore case differences during comparison.',NULL,NULL,NULL,NULL,'2015-04-20 18:06:19'),(14,4,'String','String','The default is to compare the values case sensitive.','boolean','Ignore case differences during comparison.',NULL,NULL,NULL,NULL,'2015-04-20 18:07:27'),(15,7,'String','String','The default is to compare the values case sensitive.','boolean','Ignore case differences during comparison.',NULL,NULL,NULL,NULL,'2015-04-20 18:08:56'),(16,8,'String','String','The default is to compare the values case sensitive.','boolean','Ignore case differences during comparison.',NULL,NULL,NULL,NULL,'2015-04-20 18:09:05'),(17,9,'String','String','The default is to compare the values case sensitive.','boolean','Ignore case differences during comparison.',NULL,NULL,NULL,NULL,'2015-04-20 18:09:54'),(18,10,'String','String','The default is to compare the values case sensitive.','boolean','Ignore case differences during comparison.',NULL,NULL,NULL,NULL,'2015-04-20 18:10:05'),(19,24,'String','integer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-04-20 18:12:53'),(20,24,'String','long',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-04-20 18:13:43'),(21,24,'integer','integer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-04-20 18:14:13'),(22,24,'integer','long',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-04-20 18:14:19'),(23,24,'long','integer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-04-20 18:14:32'),(25,30,'String','String','First String is a comma seperated list of values','boolean','Ignore case differences during comparison.',NULL,NULL,NULL,NULL,'2015-04-20 18:19:58'),(26,31,'String','String','First String is a comma seperated list of values','boolean','Ignore case differences during comparison.',NULL,NULL,NULL,NULL,'2015-04-20 18:20:27'),(28,31,'String','long','First String is a comma seperated list of long values',NULL,NULL,NULL,NULL,NULL,NULL,'2015-04-20 18:37:21'),(29,30,'String','integer','First String is a comma seperated list of integer values',NULL,NULL,NULL,NULL,NULL,NULL,'2015-04-20 18:37:41'),(30,31,'String','integer','First String is a comma seperated list of integer values',NULL,NULL,NULL,NULL,NULL,NULL,'2015-04-20 18:37:27'),(31,30,'String','long','First String is a comma seperated list of long values',NULL,NULL,NULL,NULL,NULL,NULL,'2015-04-20 18:37:44'),(32,17,'double','double, double','2nd double is the lower limit, 3rd double is the upper limit',NULL,NULL,NULL,NULL,NULL,NULL,'2015-04-21 08:54:29'),(33,17,'double','String','String is comma seperated list of lower limit, upper limit',NULL,NULL,NULL,NULL,NULL,NULL,'2015-04-21 08:56:56'),(34,17,'float','float, float','2nd float is the lower limit, 3rd float is the upper limit',NULL,NULL,NULL,NULL,NULL,NULL,'2015-04-21 08:57:52'),(35,17,'float','String','String is comma seperated list of lower limit, upper limit',NULL,NULL,NULL,NULL,NULL,NULL,'2015-04-21 08:58:31'),(36,17,'integer','integer, integer','2nd integer is the lower limit, 3rd integer is the upper limit',NULL,NULL,NULL,NULL,NULL,NULL,'2015-04-21 08:59:43'),(37,17,'long','long, long','2nd long is the lower limit, 3rd long is the upper limit',NULL,NULL,NULL,NULL,NULL,NULL,'2015-04-21 09:00:41'),(38,17,'integer','String','String is comma seperated list of lower limit, upper limit',NULL,NULL,NULL,NULL,NULL,NULL,'2015-04-21 09:01:03'),(39,17,'long','String','String is comma seperated list of lower limit, upper limit',NULL,NULL,NULL,NULL,NULL,NULL,'2015-04-21 09:01:50'),(40,20,'String',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-04-21 09:03:53');
/*!40000 ALTER TABLE `check_method` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'Admin','Admin Group','2014-04-08 14:35:19');
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
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupuser`
--

LOCK TABLES `groupuser` WRITE;
/*!40000 ALTER TABLE `groupuser` DISABLE KEYS */;
INSERT INTO `groupuser` VALUES (34,1,1,'2015-12-04 06:11:46');
/*!40000 ALTER TABLE `groupuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `type_id` int(10) unsigned NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `parent_1` int(10) DEFAULT NULL,
  `parent_2` int(10) DEFAULT NULL,
  `parent_3` int(10) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=159 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (152,'rule',63,1,66,53,23,'2016-02-26 21:50:25'),(157,'rule',66,1,66,53,23,'2016-02-26 22:01:32'),(156,'rule',65,1,66,53,23,'2016-02-26 21:56:36'),(155,'rule',64,1,66,53,23,'2016-02-26 21:54:10'),(153,'rule',63,1,66,53,23,'2016-02-26 21:51:16'),(154,'rule',64,1,66,53,23,'2016-02-26 21:53:07'),(123,'rule',24,1,39,32,18,'2015-10-10 15:32:31'),(124,'rulegroup',33,1,19,0,0,'2015-10-10 15:38:58'),(120,'project',18,1,0,0,0,'2015-10-10 15:27:25'),(121,'rulegroup',32,1,18,0,0,'2015-10-10 15:28:11'),(122,'rule',24,1,39,32,18,'2015-10-10 15:28:42'),(117,'project',18,1,0,0,0,'2015-10-10 15:21:16'),(118,'rulegroup',32,1,18,0,0,'2015-10-10 15:21:36'),(119,'rule',24,1,39,32,18,'2015-10-10 15:22:13'),(125,'rulegroup',34,1,19,0,0,'2015-10-10 15:39:14'),(126,'rulegroup',35,1,19,0,0,'2015-10-10 15:39:28'),(127,'rulegroup',36,1,19,0,0,'2015-10-10 15:39:39'),(128,'rulegroup',37,1,20,0,0,'2015-10-10 15:56:20'),(129,'rulegroup',38,1,20,0,0,'2015-10-10 15:56:29'),(130,'rulegroup',39,1,20,0,0,'2015-10-10 15:56:40'),(131,'rulegroup',40,1,20,0,0,'2015-10-10 15:56:50'),(132,'rulegroup',41,1,20,0,0,'2015-10-10 15:57:00'),(133,'rulegroup',42,1,20,0,0,'2015-10-10 15:57:10'),(134,'rulegroup',43,1,21,0,0,'2015-10-10 16:02:47'),(135,'rulegroup',44,1,21,0,0,'2015-10-10 16:02:58'),(136,'rulegroup',45,1,21,0,0,'2015-10-10 16:03:10'),(137,'rulegroup',46,1,21,0,0,'2015-10-10 16:03:26'),(138,'rulegroup',47,1,21,0,0,'2015-10-10 16:03:36'),(139,'rulegroup',48,1,21,0,0,'2015-10-10 16:03:48'),(140,'rulegroup',49,1,21,0,0,'2015-10-10 16:03:59'),(141,'rulegroup',50,1,21,0,0,'2015-10-10 16:04:09'),(142,'project',22,1,0,0,0,'2015-12-17 11:02:36'),(145,'rulegroup',52,1,22,0,0,'2015-12-17 12:54:55'),(146,'rule',59,1,65,52,22,'2015-12-17 12:56:34'),(147,'rule',60,1,65,52,22,'2015-12-17 12:57:07'),(148,'project',23,1,0,0,0,'2016-02-26 20:51:41'),(149,'rulegroup',53,1,23,0,0,'2016-02-26 20:52:23'),(150,'rule',61,1,66,53,23,'2016-02-26 20:53:48'),(151,'rule',62,1,66,53,23,'2016-02-26 20:54:47'),(158,'action',23,1,53,23,0,'2016-02-26 22:02:59');
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
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
  `is_private` tinyint(1) DEFAULT '0',
  `transformation_filename` varchar(255) DEFAULT NULL,
  `transformation_stepname` varchar(255) DEFAULT NULL,
  `object_classname` varchar(80) DEFAULT NULL,
  `object_method_getter` varchar(80) DEFAULT NULL,
  `object_method_setter` varchar(80) DEFAULT NULL,
  `database_hostname` varchar(80) DEFAULT NULL,
  `database_name` varchar(80) DEFAULT NULL,
  `database_tablename` varchar(80) DEFAULT NULL,
  `database_userid` varchar(80) DEFAULT NULL,
  `database_user_password` varchar(80) DEFAULT NULL,
  `last_update_user_id` int(10) DEFAULT NULL,
  `owner_user_id` int(10) DEFAULT NULL,
  `group_id` int(10) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (21,'airport_quality_checks_01','airport_quality_checks_01',0,NULL,NULL,'com.datamelt.util.RowFieldCollection','getFieldValue','setFieldValue',NULL,NULL,NULL,NULL,NULL,1,1,1,'2015-10-10 16:02:28'),(22,'RIMS Lost and Found ETL','RIMS Lost and Found ETL Project',0,'staging_final_lostfound_generate_csv_40.ktr','Rule Engine','com.datamelt.util.RowFieldCollection','getFieldValue','setFieldValue',NULL,NULL,NULL,NULL,NULL,1,1,1,'2015-12-17 12:52:23'),(23,'calculation_sample','calculation_sample',0,NULL,NULL,'com.datamelt.util.RowFieldCollection','getFieldValue','setFieldValue',NULL,NULL,NULL,NULL,NULL,1,1,1,'2016-02-26 20:51:41'),(20,'airport_kpi_01','airport_kpi_01',0,NULL,NULL,'com.datamelt.util.RowFieldCollection','getFieldValue','setFieldValue',NULL,NULL,NULL,NULL,NULL,1,1,1,'2015-10-10 15:56:04'),(18,'airport_filter_01','Airport Filter',0,NULL,NULL,'com.datamelt.util.RowFieldCollection','getFieldValue','setFieldValue',NULL,NULL,NULL,NULL,NULL,1,1,1,'2015-10-10 15:27:25'),(19,'airport_update_01','Airport Update',0,NULL,NULL,'com.datamelt.util.RowFieldCollection','getFieldValue','setFieldValue',NULL,NULL,NULL,NULL,NULL,1,1,1,'2015-10-10 15:38:38');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectuser`
--

LOCK TABLES `projectuser` WRITE;
/*!40000 ALTER TABLE `projectuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `projectuser` ENABLE KEYS */;
UNLOCK TABLES;

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
  `object1_parametertype_id` int(10) DEFAULT NULL,
  `object1_parameter` varchar(255) DEFAULT NULL,
  `object1_type_id` int(10) DEFAULT NULL,
  `object2_parametertype_id` int(10) DEFAULT NULL,
  `object2_parameter` varchar(255) DEFAULT NULL,
  `object2_type_id` int(10) DEFAULT NULL,
  `expectedvalue` varchar(255) DEFAULT NULL,
  `expectedvalue_type_id` int(10) DEFAULT NULL,
  `additional_parameter` varchar(255) DEFAULT NULL,
  `additional_parameter_type_id` int(10) DEFAULT NULL,
  `message_passed` varchar(255) NOT NULL,
  `message_failed` varchar(255) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_rule_rulesubgroup_id` (`rulesubgroup_id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rule`
--

LOCK TABLES `rule` WRITE;
/*!40000 ALTER TABLE `rule` DISABLE KEYS */;
INSERT INTO `rule` VALUES (27,41,14,1,'altitude_02','Rule altitude',1,'altitude',6,0,NULL,0,'5000',2,NULL,0,'field altitude $1 is correctly smaller or equal$0','field altitude $1 is not smaller or equal $0','2015-10-10 15:38:39'),(28,42,11,1,'altitude_01','Rule altitude',1,'altitude',6,0,NULL,0,'5000',2,NULL,0,'field altitude $1 is correctly greater $0','field altitude $1 is not greater $0','2015-10-10 15:38:39'),(25,40,14,1,'altitude_01','Rule altitude',1,'altitude',6,0,NULL,0,'500',2,NULL,0,'field altitude $1 is correctly smaller or equal $0','field altitude $1 is not smaller or equal $0','2015-10-10 15:38:39'),(26,41,11,1,'altitude_01','Rule altitude',1,'altitude',6,0,NULL,0,'500',2,NULL,0,'field altitude $1 is correctly greater $0','field altitude $1 is not greater $0','2015-10-10 15:38:39'),(24,39,1,1,'rule_01','rule_01',1,'country',1,0,NULL,0,'belgium',1,'true',5,'Field country $1 correctly is equal to $0','Field country $1 not is equal to $0','2015-10-10 15:32:31'),(29,43,3,1,'airport_type_01','Rule airport_type',1,'name',1,0,NULL,0,'Intl',1,NULL,0,'field name $1 correctly contains $0','field name $1 does not contain $0','2015-10-10 15:38:39'),(30,43,3,1,'airport_type_02','Rule airport_type',1,'name',1,0,NULL,0,'International',1,NULL,0,'field name $1 correctly contains $0','field name $1 does not contain $0','2015-10-10 15:38:39'),(31,44,11,1,'altitude_01','Rule altitude',1,'altitude',4,0,NULL,0,'500',2,NULL,0,'Field altiude $0 correctly is greater $1','Field altiude $0 is not greater $1','2015-10-10 15:56:04'),(32,44,14,1,'altitude_02','Rule altitude',1,'altitude',4,0,NULL,0,'5000',2,NULL,0,'Field altiude $0 is correctly smaller  or equal $1','Field altiude $0 is not smaller or equal $1','2015-10-10 15:56:04'),(33,45,1,1,'key_01','Rule key',1,'key',1,0,NULL,0,'airport_medium',1,NULL,0,'field key $0 is correctly equal $1','field key $0 is not equal $1','2015-10-10 15:56:04'),(34,46,3,1,'name_01','Rule name',1,'name',1,0,NULL,0,'International',1,NULL,0,'Field name $0 correctly contains $1','Field name $0 does not contain $1','2015-10-10 15:56:04'),(35,46,3,1,'name_02','Rule name',1,'name',1,0,NULL,0,'Intl',1,NULL,0,'Field name $0 correctly contains $1','Field name $0 does not contain $1','2015-10-10 15:56:04'),(36,47,1,1,'key_01','Rule key',1,'key',1,0,NULL,0,'type_international',1,NULL,0,'field key $0 is correctly equal $1','field key $0 is not equal $1','2015-10-10 15:56:04'),(37,48,4,1,'name_01','Rule name',1,'name',1,0,NULL,0,'International',1,NULL,0,'Field name $0 correctly does not contain $1','Field name $0 contains $1','2015-10-10 15:56:04'),(38,48,4,1,'name_02','Rule name',1,'name',1,0,NULL,0,'Intl',1,NULL,0,'Field name $0 correctly not contains $1','Field name $0 contains $1','2015-10-10 15:56:04'),(39,49,1,1,'key_01','Rule key',1,'key',1,0,NULL,0,'type_national',1,NULL,0,'field key $0 is correctly equal $1','field key $0 is not equal $1','2015-10-10 15:56:04'),(40,50,1,1,'key_01','Rule key',1,'key',1,0,NULL,0,'counter',1,NULL,0,'field key $0 is correctly equal $1','field key $0 is not equal $1','2015-10-10 15:56:04'),(41,51,14,1,'altitude_01','Rule altitude',1,'altitude',4,0,NULL,0,'500',2,NULL,0,'Field altiude $0 is correctly smaller or equal $1','Field altiude $0 is not smaller or equal $1','2015-10-10 15:56:04'),(42,52,1,1,'key_01','Rule key',1,'key',1,0,NULL,0,'airport_low',1,NULL,0,'field key $0 is correctly equal $1','field key $0 is not equal $1','2015-10-10 15:56:04'),(43,53,11,1,'altitude_01','Rule altitude',1,'altitude',4,0,NULL,0,'5000',2,NULL,0,'Field altiude $0 is correctly greater $1','Field altiude $0 is not greater $1','2015-10-10 15:56:04'),(44,54,1,1,'key_01','Rule key',1,'key',1,0,NULL,0,'airport_high',1,NULL,0,'field key $0 is correctly equal $1','field key $0 is not equal $1','2015-10-10 15:56:04'),(45,55,14,1,'latitude_01','Rule latitude',1,'latitude',4,0,NULL,0,'90',2,NULL,0,'field latitude $1 is correctly smaller or equal $0','field latitude $1 is not smaller or equal $0','2015-10-10 16:02:29'),(46,55,13,1,'latitude_02','Rule latitude',1,'latitude',4,0,NULL,0,'-90',2,NULL,0,'field latitude $1 is correctly greater or equal $0','field latitude $1 is not greater or equal $0','2015-10-10 16:02:29'),(47,56,14,1,'city_01','Rule city',1,'city',1,0,NULL,0,'40',6,NULL,0,'field city $1 is correctly smaller or equal $0','field city $1 is not smaller or equal $0','2015-10-10 16:02:29'),(48,57,14,1,'longitude_01','Rule longitude',1,'latitude',4,0,NULL,0,'180',2,NULL,0,'field longitude $1 is correctly smaller or equal $0','field longitude $1 is not smaller or equal $0','2015-10-10 16:02:29'),(49,57,13,1,'longitude_02','Rule longitude',1,'latitude',4,0,NULL,0,'-180',2,NULL,0,'field longitude $1 is correctly greater or equal $0','field longitude $1 is not greater or equal $0','2015-10-10 16:02:29'),(50,58,24,1,'iata_code_01','Rule iata_code',1,'iata_code',1,0,NULL,0,'3',2,NULL,0,'field iata_code $1 correctly has length $0','field iata_code $1 does not have length $0','2015-10-10 16:02:29'),(51,58,22,1,'iata_code_02','Rule iata_code',1,'iata_code',1,0,NULL,0,NULL,0,NULL,0,'field iata_code $1 correctly is null','field iata_code $1 is not null','2015-10-10 16:02:29'),(52,59,14,1,'country_01','Rule country',1,'country',1,0,NULL,0,'40',6,NULL,0,'field country $1 is correctly smaller or equal $0','field country $1 is not smaller or equal $0','2015-10-10 16:02:29'),(53,60,24,1,'icao_code_01','Rule icao_code',1,'icao_code',1,0,NULL,0,'4',2,NULL,0,'field icao_code $1 correctly has length $0','field icao_code $1 does not have length $0','2015-10-10 16:02:29'),(54,60,22,1,'icao_code_02','Rule icao_code',1,'icao_code',1,0,NULL,0,NULL,0,NULL,0,'field icao_code $1 is correctly null','field icao_code $1 is not null','2015-10-10 16:02:29'),(55,60,24,1,'icao_code_03','Rule icao_code',1,'icao_code',1,0,NULL,0,'3',2,NULL,0,'field icao_code $1 correctly has length $0','field icao_code $1 does not have length $0','2015-10-10 16:02:29'),(56,61,14,1,'name_01','Rule name',1,'name',1,0,NULL,0,'65',6,NULL,0,'field name $1 is correctly smaller or equal $0','field name $1 is not smaller or equal $0','2015-10-10 16:02:29'),(57,62,13,1,'rule_altitude_01','check altitude field',1,'altitude',6,0,NULL,0,'-100',2,NULL,0,'Field altitude $1 is correctly greater or equal $0','Field altitude $1 is not greater or equal $0','2015-10-10 16:02:29'),(58,62,14,1,'rule_altitude_02','check altitude field',1,'altitude',6,0,NULL,0,'14000',2,NULL,0,'Field altitude $1 is correctly smaller or equal $0','Field altitude $1 is not smaller or equal $0','2015-10-10 16:02:29'),(59,65,2,1,'airline_01','check airline code',1,'airline_code',1,0,NULL,0,'SWP',1,'',0,'Field airline_code $1 correctly is not equal to $0','Field airline_code  $1 is equal to $0','2015-12-17 12:56:34'),(60,65,2,1,'airline_02','check airline code',1,'airline_code',1,0,NULL,0,'YY',1,'',0,'Field airline_code $1 correctly is not equal to $0','Field airline_code  $1 is equal to $0','2015-12-17 12:57:07'),(61,66,2,1,'check financial group','',1,'financialgroup_code',1,0,NULL,0,'XYZ',1,'',0,'Field financialgroup_code $1 correctly is not equal to $0','Field financialgroup_code $1 not is not equal to $0','2016-02-26 20:53:48'),(62,66,2,1,'check insurance company','check insurance company',1,'insurance_company',1,0,NULL,0,'ABC',1,'',0,'Field insurance_company $1 correctly is not equal to $0','Field insurance_company $1 not is not equal to $0','2016-02-26 20:54:47'),(63,66,1,1,'check invoicetotal_patientamount','check invoicetotal_patientamount',1,'invoicetotal_patientamount',4,0,NULL,0,'0',4,'',0,'Field invoicetotal_patientamount $1 correctly is equal to $0','Field invoicetotal_patientamount $1 not is equal to $0','2016-02-26 21:51:16'),(64,66,11,1,'check distribution_payment','check distribution_payment',1,'distribution_payment',4,0,NULL,0,'0',4,'',0,'Field distribution_payment $1 correctly is greater than $0','Field distribution_payment $1 not is greater than $0','2016-02-26 21:54:10'),(65,66,1,1,'check payment_paymentby','check payment_paymentby',1,'payment_paymentby',1,0,NULL,0,'I',1,'',0,'Field payment_paymentby $1 correctly is equal to $0','Field payment_paymentby $1 not is equal to $0','2016-02-26 21:56:36'),(66,66,23,1,'check distribution_payment 2','check distribution_payment 2',1,'distribution_payment',4,0,NULL,0,'',0,'',0,'Field distribution_payment $1 correctly is not null','Field distribution_payment $1 not is not null','2016-02-26 22:01:32');
/*!40000 ALTER TABLE `rule` ENABLE KEYS */;
UNLOCK TABLES;

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
  PRIMARY KEY (`id`),
  KEY `idx_rulegroup_project_id` (`project_id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rulegroup`
--

LOCK TABLES `rulegroup` WRITE;
/*!40000 ALTER TABLE `rulegroup` DISABLE KEYS */;
INSERT INTO `rulegroup` VALUES (38,20,1,'airport_type_international','Rulegroup Airport Type','2014-07-01','2015-12-31','2015-10-10 15:56:29'),(40,20,1,'counter','Rulegroup Counter','2014-07-01','2015-12-31','2015-10-10 15:56:50'),(39,20,1,'airport_type_national','Rulegroup Airport Type','2014-07-01','2015-12-31','2015-10-10 15:56:40'),(37,20,1,'altitude_type_medium','Rulegroup Altitude Type','2014-07-01','2015-12-31','2015-10-10 15:56:20'),(32,18,1,'rulegroup_01','rulegroup_01','2015-10-10','2015-12-31','2015-10-10 15:28:11'),(33,19,1,'group_low','Rulegroup low airports','2014-07-01','2015-12-31','2015-10-10 15:38:58'),(34,19,1,'group_medium','Rulegroup medium airports','2014-07-01','2015-12-31','2015-10-10 15:39:14'),(35,19,1,'group_high','Rulegroup high airports','2014-07-01','2015-12-31','2015-10-10 15:39:28'),(36,19,1,'group_international','Rulegroup international airport','2014-07-01','2015-12-31','2015-10-10 15:39:39'),(41,20,1,'altitude_type_low','Rulegroup Altitude Type','2014-07-01','2015-12-31','2015-10-10 15:57:00'),(42,20,1,'altitude_type_high','Rulegroup Altitude Type','2014-07-01','2015-12-31','2015-10-10 15:57:10'),(43,21,1,'latitude_01','Rulegoup latitude','2014-07-01','2015-12-31','2015-10-10 16:02:47'),(44,21,1,'city_01','Rulegoup city','2014-07-01','2015-12-31','2015-10-10 16:02:58'),(45,21,1,'longitude_01','Rulegoup longitude','2014-07-01','2015-12-31','2015-10-10 16:03:10'),(46,21,1,'iata_code_01','Rulegoup iata_code','2014-07-01','2015-12-31','2015-10-10 16:03:26'),(47,21,1,'country_01','Rulegoup country','2014-07-01','2015-12-31','2015-10-10 16:03:36'),(48,21,1,'icao_code_01','Rulegoup icao_code','2014-07-01','2015-12-31','2015-10-10 16:03:48'),(49,21,1,'name_01','Rulegoup name','2014-07-01','2015-12-31','2015-10-10 16:03:59'),(50,21,1,'altitude_01','Rulegroup altitude','2014-07-01','2015-12-31','2015-10-10 16:04:09'),(52,22,1,'rulegroup_01','rulegroup_01','2015-12-17','2016-12-31','2015-12-17 12:54:55'),(53,23,1,'rulegroup 1','rulegroup 1','2016-02-26','2020-12-31','2016-02-26 20:52:23');
/*!40000 ALTER TABLE `rulegroup` ENABLE KEYS */;
UNLOCK TABLES;

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
  `object1_parametertype_id` int(10) DEFAULT NULL,
  `object1_parameter` varchar(255) DEFAULT NULL,
  `object1_type_id` int(10) DEFAULT NULL,
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
  PRIMARY KEY (`id`),
  KEY `idx_rulegroupaction_rulegroup_id` (`rulegroup_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rulegroupaction`
--

LOCK TABLES `rulegroupaction` WRITE;
/*!40000 ALTER TABLE `rulegroupaction` DISABLE KEYS */;
INSERT INTO `rulegroupaction` VALUES (13,34,1,1,'[undefined]','[undefined]',0,NULL,0,1,'airport_category',1,'medium',1,NULL,0,NULL,0,'passed','2015-10-10 15:38:39'),(12,33,1,1,'[undefined]','[undefined]',0,NULL,0,1,'airport_category',1,'low',1,NULL,0,NULL,0,'passed','2015-10-10 15:38:38'),(15,36,1,1,'[undefined]','[undefined]',0,NULL,0,1,'airport_type',1,'International',1,NULL,0,NULL,0,'passed','2015-10-10 15:38:39'),(14,35,1,1,'[undefined]','[undefined]',0,NULL,0,1,'airport_category',1,'high',1,NULL,0,NULL,0,'passed','2015-10-10 15:38:39'),(16,36,1,1,'[undefined]','[undefined]',0,NULL,0,1,'airport_type',1,'National',1,NULL,0,NULL,0,'failed','2015-10-10 15:38:39'),(17,37,1,11,'key_value_01','Action key value',0,NULL,0,1,'value',6,'1',6,NULL,0,NULL,0,'passed','2015-10-10 15:56:04'),(18,38,1,11,'key_value_01','Action key value',0,NULL,0,1,'value',6,'1',6,NULL,0,NULL,0,'passed','2015-10-10 15:56:04'),(19,39,1,11,'key_value_01','Action key value',0,NULL,0,1,'value',6,'1',6,NULL,0,NULL,0,'passed','2015-10-10 15:56:04'),(20,40,1,11,'key_value_01','Action key value',0,NULL,0,1,'value',6,'1',6,NULL,0,NULL,0,'passed','2015-10-10 15:56:04'),(21,41,1,11,'key_value_01','Action key value',0,NULL,0,1,'value',6,'1',6,NULL,0,NULL,0,'passed','2015-10-10 15:56:04'),(22,42,1,11,'key_value_01','Action key value',0,NULL,0,1,'value',6,'1',6,NULL,0,NULL,0,'passed','2015-10-10 15:56:04'),(23,53,1,11,'set output_column','set output_column',1,'distribution_payment',4,1,'output_column',4,'',0,'',0,'',0,'passed','2016-02-26 22:02:59');
/*!40000 ALTER TABLE `rulegroupaction` ENABLE KEYS */;
UNLOCK TABLES;

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
  PRIMARY KEY (`id`),
  KEY `idx_rulesubgroup_rulegroup_id` (`rulegroup_id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rulesubgroup`
--

LOCK TABLES `rulesubgroup` WRITE;
/*!40000 ALTER TABLE `rulesubgroup` DISABLE KEYS */;
INSERT INTO `rulesubgroup` VALUES (53,42,1,'subgroup_1','subgroup 1','and','and','2015-10-10 15:56:04'),(52,41,1,'subgroup_key_01','Subgroup key','and','and','2015-10-10 15:56:04'),(54,42,1,'subgroup_key_01','Subgroup key','and','and','2015-10-10 15:56:04'),(40,33,1,'subgroup_1','subgroup 1','and','and','2015-10-10 15:38:38'),(39,32,1,'subgroup_1','subgroup 1','and','and','2015-10-10 15:21:36'),(41,34,1,'subgroup_1','subgroup 1','and','and','2015-10-10 15:38:39'),(42,35,1,'subgroup_1','subgroup 1','and','and','2015-10-10 15:38:39'),(43,36,1,'subgroup_1','subgroup 1','and','or','2015-10-10 15:38:39'),(44,37,1,'subgroup_1','subgroup 1','and','and','2015-10-10 15:56:04'),(45,37,1,'subgroup_key_01','Subgroup key','and','and','2015-10-10 15:56:04'),(46,38,1,'subgroup_1','subgroup 1','and','or','2015-10-10 15:56:04'),(47,38,1,'subgroup_key_01','Subgroup key','and','and','2015-10-10 15:56:04'),(48,39,1,'subgroup_1','subgroup 1','and','and','2015-10-10 15:56:04'),(49,39,1,'subgroup_key_01','Subgroup key','and','and','2015-10-10 15:56:04'),(50,40,1,'subgroup_key_01','Subgroup key','and','and','2015-10-10 15:56:04'),(51,41,1,'subgroup_1','subgroup 1','and','and','2015-10-10 15:56:04'),(55,43,1,'subgroup_1','subgroup 1','and','and','2015-10-10 16:02:28'),(56,44,1,'subgroup_1','subgroup 1','and','and','2015-10-10 16:02:29'),(57,45,1,'subgroup_1','subgroup 1','and','and','2015-10-10 16:02:29'),(58,46,1,'subgroup_1','subgroup 1','and','or','2015-10-10 16:02:29'),(59,47,1,'subgroup_1','subgroup 1','and','and','2015-10-10 16:02:29'),(60,48,1,'subgroup_1','subgroup 1','and','or','2015-10-10 16:02:29'),(61,49,1,'subgroup_1','subgroup 1','and','and','2015-10-10 16:02:29'),(62,50,1,'subgroup_1','subgroup 1','and','and','2015-10-10 16:02:29'),(65,52,1,'subgroup_1','subgroup 1','and','and','2015-12-17 12:54:55'),(66,53,1,'subgroup_1','subgroup 1','and','and','2016-02-26 20:52:23');
/*!40000 ALTER TABLE `rulesubgroup` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
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
  `email` varchar(80) DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `deactivated` tinyint(1) unsigned DEFAULT '0',
  `deactivated_date` date DEFAULT '0000-00-00',
  `password_update_date` date DEFAULT '0000-00-00',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin user','*48DD1DA142B86861AB77B4A838C1F452B54D22EC',NULL,'2016-03-24 21:34:24',0,NULL,'2014-01-01','2016-03-24 20:34:24'),(2,'user1','uwe','*6D0BEFA9074B9AFD3A8FC6743B8988D49C769C9B',NULL,'2015-12-08 07:45:34',0,'0000-00-00','0000-00-00','2015-12-08 06:45:34');
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

-- Dump completed on 2016-03-24 22:14:50
