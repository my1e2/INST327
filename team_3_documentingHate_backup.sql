CREATE DATABASE  IF NOT EXISTS `documenting_hatedb` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `documenting_hatedb`;
-- MySQL dump 10.13  Distrib 8.0.38, for macos14 (arm64)
--
-- Host: localhost    Database: documenting_hatedb
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `Article_id` int NOT NULL AUTO_INCREMENT,
  `Article_date` datetime NOT NULL,
  `Article_title` varchar(300) NOT NULL,
  `Article_url_prefix` varchar(300) DEFAULT NULL,
  `Article_url_suffix` varchar(300) DEFAULT NULL,
  `Location_id` int NOT NULL,
  `Organization_id` int NOT NULL,
  PRIMARY KEY (`Article_id`),
  KEY `fk_Location_id_idx` (`Location_id`),
  KEY `fk_Organization_id_idx` (`Organization_id`),
  CONSTRAINT `fk_Location_id` FOREIGN KEY (`Location_id`) REFERENCES `location` (`Location_id`),
  CONSTRAINT `fk_Organization_id` FOREIGN KEY (`Organization_id`) REFERENCES `organization` (`Organization_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'2017-03-24 10:31:00','Someone Has Been Replacing Bus Stop Ads With Posters Of A Burning Union Jack','https://www.buzzfeed.com','/fionarutherford/someone-hacked-a-bus-shelter-at-put-a-poster-of-a-burning',1,1),(2,'2017-03-24 11:11:00','Gov. Bryant Signs \'Back the Badge,\' Increased Penalties Bills','http://www.jacksonfreepress.com','/news/2017/mar/24/gov-bryant-signs-back-badge-increased-penalties-bi/',2,2),(3,'2017-03-24 11:11:00','It\'s time for South Asians to get stuck in the gossip','http://www.seattleglobalist.com','/2017/03/24/its-time-for-south-asians-to-get-stuck-in-the-gossip/63735',3,3),(4,'2017-03-24 11:56:00','Remember those Jewish community center bomb threats? Yeah, just another hate crime hoax','http://www.bizpacreview.com','/2017/03/24/shh-remember-jewish-community-center-bomb-threats-yeah-just-another-hate-crime-hoax-462752',4,4),(5,'2017-03-24 13:10:00','Kentucky Becomes Second State to Add Police to Hate Crimes Law','http://reason.com','/blog/2017/03/24/kentucky-becomes-second-state-to-add-pol',5,5),(6,'2017-03-24 13:26:00','Family suspects son-in-law in woman-son murder case in NJ, police investigates, says it\'s not hate crime','http://indianewengland.com','/2017/03/family-suspects-son-law-woman-son-murder-case-nj-police-investigates-says-not-hate-crime/',6,6),(7,'2017-03-24 13:34:00','Local activist and others take a new look at the Emmett Till case','http://wyandottedaily.com','/local-activist-and-others-take-a-new-look-at-the-emmett-till-case/',7,7),(8,'2017-03-24 13:48:00','The Center to host Free Immigration Forum on Tuesday','http://sdgln.com','/causes/2017/03/24/center-host-free-immigration-forum-tuesday',8,8),(9,'2017-03-24 14:36:00','Junction City gunman to face hate crime charges','http://www.stevenspointjournal.com','/story/news/2017/03/24/junction-city-gunman-face-hate-crimes-charges/99597568/',9,9),(10,'2017-03-24 14:45:00','IL leaders calling for action to combat recent wave of anti-Semitism, hate crimes','http://www.kfvs12.com','/story/34993196/il-leaders-calling-for-action-to-combat-recent-wave-of-anti-semitism-hate-crimes',10,10),(11,'2017-03-24 14:56:00','New Kentucky Law: Attacking A Police Officer Is A Hate Crime','http://www.westernjournalism.com','/new-kentucky-law-attacking-a-police-officer-is-a-hate-crime/',11,11),(12,'2017-03-24 16:14:00','The Hate Report: Fake hate strikes. So does real hate','https://www.revealnews.org','/blog/hate-report-its-fake-hate-vs-real-hate/',12,12),(13,'2017-03-24 16:15:00','Hampden vigil to honor New York man killed in alleged hate crime','http://www.baltimoresun.com','/bs-md-ci-hampden-vigil-20170324-story.html',13,13),(14,'2017-03-24 16:26:00','Junction City gunman to face hate crimes charges','http://www.sheboyganpress.com','/story/news/2017/03/24/junction-city-gunman-face-hate-crimes-charges/99597568/',14,14),(15,'2017-03-24 18:18:00','Jewish, Muslim and Indian American communities stand in solidarity against hate','http://wjla.com','/news/local/jewish-muslim-and-indian-american-communities-stand-in-solidarity-against-hate',5,15),(16,'2017-03-24 19:26:00','Future of hate crime prosecutions questioned','http://www.houmatoday.com','/news/20170326/future-of-hate-crime-prosecutions-questioned',15,16),(17,'2017-03-24 23:33:00','White man shouts \'go back to Lebanon\' to Sikh-American girl','http://www.indiapost.com','/white-man-shouts-go-back-to-lebanon-to-sikh-american-girl/',16,17),(18,'2017-03-25 01:48:00','Sikh-American Harassed in New York, Told To \'Go Back to Lebanon\'','https://in.news.yahoo.com','/sikh-american-harassed-york-told-085715581.html',17,18),(19,'2017-03-25 02:00:00','Tulsi Gabbard asks US Justice Department to investigate hate crimes','http://indiatribune.com','/?p=40799',18,19),(20,'2017-03-25 02:33:00','Jews, Muslims, Indian Americans join hands against hate crimes','http://indianewengland.com','/2017/03/jews-muslims-indian-americans-join-hands-hate-crimes/',6,20),(21,'2017-03-25 04:48:00','SDGLN Weekly Wrap: March 18 - 24, 2017','http://sdgln.com','/social/2017/03/24/sdgln-weekly-wrap-march-18-24-2017',8,21),(22,'2017-03-25 05:22:00','Good News: Kentucky Passes Blue Lives Matter Law, Makes It A Hate Crime To Target Police','https://townhall.com','/tipsheet/mattvespa/2017/03/25/good-news-kentucky-passes-blue-lives-matter-law-makes-it-a-hate-crime-to-target-police-n2303975',5,22),(23,'2017-03-25 07:26:00','De Blasio blames \'dynamic of hatred\' created by Trump for racist murder','http://www.americanthinker.com','/blog/2017/03/de_blasio_blames_dynamic_of_hatred_created_by_trump_for_racist_murder.html',19,23),(24,'2017-03-25 08:56:00','Criminologist: Hate Crimes Could Be on Rise for Second Consecutive Year','http://www.koco.com','/article/criminologist-hate-crimes-could-be-on-rise-for-second-consecutive-year/9182459',20,24),(25,'2017-03-25 14:00:00','Junction City Man Faces Hate Crime Charge','http://www.cbs58.com','/story/35004023/junction-city-man-faces-hate-crime-charge',21,25),(26,'2017-03-25 17:45:00','Why would anybody do this?\' Immigrants unsettled by Tri-City incidents','http://www.tri-cityherald.com','/news/local/article140824713.html',22,26),(27,'2017-03-25 20:30:00','Forum: Partisan pity parties are getting old','http://www.nhregister.com','/opinion/20170325/forum-partisan-pity-parties-are-getting-old',23,27),(28,'2017-03-26 08:18:00','Balance of Power: South Asian hate crimes','http://www.9news.com','/news/politics/balance-of-power/hold-for-balance-of-power-326/424807165',24,28),(29,'2017-03-26 16:15:00','Rocks, Bible thrown through windows of mosque','http://nbc4i.com','/2017/03/27/rocks-bible-thrown-through-windows-of-mosque/',25,29),(30,'2017-03-26 16:37:00','Report Hate Speech, Law Enforcement Officials Urge Members Of Islamic Community In Kansas','http://kcur.org','/post/report-hate-speech-law-enforcement-officials-urge-members-islamic-community-kansas',26,30),(31,'2017-03-26 17:22:00','Suspect says he would rather have killed younger black man','http://www.kansas.com','/news/nation-world/article140936558.html',27,31),(32,'2017-03-26 23:16:00','New York City: Army veteran kills 66-year-old black man in racist attack','https://www.wsws.org','/en/articles/2017/03/27/kill-m27.html',32,32),(33,'2017-03-27 04:37:00','Bible, rocks thrown through doors of Colorado mosque','http://www.wesh.com','/article/bible-rocks-thrown-through-doors-of-colorado-mosque/9189151',29,33),(34,'2017-03-27 07:14:00','Police investigate vandalism at Colorado mosque','http://www.greenevillesun.com','/news/ap_state_news/police-investigate-vandalism-at-colorado-mosque/article_cf80db54-5418-5ac2-a597-ec87bde590e0.html',30,34),(35,'2017-03-27 07:45:00','Newsday letters to the editor Monday, March 27, 2017','http://www.newsday.com','/opinion/letters/letters-everyday-people-epa-cuts-crossing-gates-1.13321641',1,35),(36,'2017-03-27 10:17:00','Racist sword killer says he\'d mulled racial attack for years','http://www.kansas.com','/news/nation-world/article141019023.html',27,36),(37,'2017-03-27 11:49:00','Racist Murderer Wishes Elderly Black Man He Killed Was A \'Young Thug\'','http://www.carbonated.tv','/news/racist-murderer-wishes-elderly-black-man-he-killed-was-a-young-thug',35,37),(38,'2017-03-27 12:41:00','Spicer: There\'s Been a \'Rush to Judgment\' to Accuse Right-Wingers of Hate Crimes','http://www.sdjewishworld.com','/2017/03/27/spicer-theres-been-a-rush-to-judgment-to-accuse-right-wingers-of-hate-crimes/',8,38),(39,'2017-03-27 13:03:00','The Latest: White racist charged with murder as terrorism','https://www.washingtonpost.com','/national/the-latest-white-racist-charged-with-murder-as-terrorism/2017/03/27/8e57dd9e-1329-11e7-bb16-269934184168_story.html',5,39),(40,'2017-03-27 13:37:00','Man who came to NYC to \'kill black men\' indicted on terrorism charges','http://pix11.com','/2017/03/27/man-who-came-to-nyc-to-kill-black-men-indicted-on-terrorism-hate-crime-charges/',1,40),(41,'2017-03-27 13:44:00','Instead of denouncing hate crime murder, Sean Spicer implied conservatives are the victims','https://mic.com','/articles/172286/instead-of-denouncing-hate-crime-murder-sean-spicer-implies-conservatives-are-the-victims',1,41),(42,'2017-03-27 14:05:00','Man arrested in connection with vandalism at Colorado mosque','http://www.wsoctv.com','/news/national-news/ap-top-news/police-investigate-vandalism-at-colorado-mosque/506497112',31,42),(43,'2017-03-27 14:08:00','Man arrested in connection with vandalism at Colorado mosque - KOAA.com | Continuous News | Colorado Springs and Pueblo','http://www.koaa.com','/story/35007411/man-arrested-in-connection-with-vandalism-at-colorado-mosque',32,43),(44,'2017-03-27 14:13:00','Man arrested in connection with vandalism at Colorado mosque - Spokane, North Idaho News & Weather KHQ.com','http://www.khq.com','/story/35007411/man-arrested-in-connection-with-vandalism-at-colorado-mosque',33,44),(45,'2017-03-27 14:14:00','Man arrested in connection with vandalism at Colorado mosque - WFMJ.com News weather sports for Youngstown-Warren Ohio','http://www.wfmj.com','/story/35007411/man-arrested-in-connection-with-vandalism-at-colorado-mosque',34,45);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `article_crime_type`
--

DROP TABLE IF EXISTS `article_crime_type`;
/*!50001 DROP VIEW IF EXISTS `article_crime_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `article_crime_type` AS SELECT 
 1 AS `Keyword`,
 1 AS `Article_title`,
 1 AS `Summary`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `article_keyword`
--

DROP TABLE IF EXISTS `article_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article_keyword` (
  `Article_id` int NOT NULL AUTO_INCREMENT,
  `Keyword_id` int NOT NULL,
  KEY `fk_Article_id_idx` (`Article_id`),
  KEY `fk_Keyword_id_idx` (`Keyword_id`),
  CONSTRAINT `fk_ArticleKeyword_Article_id` FOREIGN KEY (`Article_id`) REFERENCES `article` (`Article_id`),
  CONSTRAINT `fk_ArticleKeyword_Keyword_id` FOREIGN KEY (`Keyword_id`) REFERENCES `keyword` (`Keyword_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_keyword`
--

LOCK TABLES `article_keyword` WRITE;
/*!40000 ALTER TABLE `article_keyword` DISABLE KEYS */;
INSERT INTO `article_keyword` VALUES (1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(1,27),(1,28),(1,29),(1,30),(1,31),(2,32),(2,33),(2,34),(2,35),(2,36),(2,37),(2,38),(2,39),(2,40),(2,41),(2,42),(2,43),(2,45),(2,46),(3,47),(3,48),(3,49),(3,50),(3,51),(3,52),(3,53),(3,54),(3,55),(3,56),(3,57),(3,58),(3,59),(4,60),(4,61),(4,62),(4,63),(4,64),(4,65),(4,66),(4,67),(4,68),(4,69),(4,70),(4,71),(4,72),(4,73),(4,74),(5,75),(5,76),(5,77),(5,78),(5,79),(5,80),(5,81),(5,82),(5,83),(5,84),(5,85),(5,86),(5,87),(6,185),(6,100),(6,101),(6,102),(6,103),(6,104),(6,105),(6,106),(6,107),(6,108),(6,109),(6,110),(6,111),(7,99),(7,100),(7,101),(7,102),(7,103),(7,104),(7,105),(7,106),(7,107),(7,108),(7,109),(7,110),(7,111),(8,112),(8,113),(8,61),(8,90),(8,114),(8,115),(8,116),(8,117),(8,118),(8,119),(8,120),(8,121),(9,122),(9,123),(9,124),(9,125),(9,126),(9,127),(9,128),(9,129),(9,130),(9,131),(9,132),(9,133),(9,134),(9,63),(9,64),(10,90),(10,135),(10,136),(10,137),(10,138),(10,139),(10,140),(10,141),(10,142),(10,143),(10,144),(10,145),(10,146),(10,147),(10,148),(10,81),(11,135),(11,149),(11,150),(11,151),(11,152),(11,153),(11,154),(11,155),(11,156),(11,157),(11,158),(11,159),(11,81),(11,68),(11,43),(12,160),(12,161),(12,162),(12,163),(12,164),(12,165),(12,166),(12,26),(13,61),(13,88),(13,150),(13,38),(13,167),(13,81),(13,168),(13,68),(13,169),(13,170),(13,8),(13,91),(13,158),(13,96),(13,97),(13,16),(14,1),(14,2),(14,3),(14,38),(14,171),(14,81),(14,5),(14,172),(14,173),(14,174),(14,14),(14,58),(15,61),(15,175),(15,81),(15,102),(15,67),(15,68),(15,176),(15,177),(15,178),(15,179),(15,180),(15,181),(15,182),(15,183),(15,184),(16,33),(16,185),(16,135),(16,90),(16,38),(16,150),(16,186),(16,187),(16,81),(16,68),(16,51),(16,52),(16,8),(16,188),(16,74),(17,61),(17,47),(17,189),(17,190),(17,81),(17,191),(17,192),(17,193),(17,194),(17,195),(17,196),(17,54),(17,197),(17,198),(17,13),(17,16),(18,61),(18,47),(18,199),(18,200),(18,201),(18,81),(18,191),(18,192),(18,194),(18,202),(18,203),(18,196),(18,197),(18,198),(18,13),(18,16),(19,61),(19,47),(19,204),(19,205),(19,206),(19,207),(19,150),(19,208),(19,81),(19,209),(19,210),(19,102),(19,51),(19,211),(19,212),(20,61),(20,62),(20,81),(20,102),(20,67),(20,68),(20,176),(20,177),(20,195),(20,213),(20,55),(20,181),(20,74),(20,182),(20,214),(20,184),(21,215),(21,216),(21,217),(21,125),(21,218),(21,219),(21,220),(21,221),(21,131),(21,222),(21,223),(21,224),(21,225),(21,226),(22,161),(22,36),(22,76),(22,227),(22,38),(22,39),(22,81),(22,228),(22,164),(22,82),(22,84),(22,85),(22,86),(22,166),(22,26),(23,1),(23,36),(23,229),(23,230),(23,3),(23,90),(23,150),(23,81),(23,231),(23,68),(23,232),(23,233),(23,93),(23,234),(23,235),(23,87),(23,16),(24,236),(24,237),(24,238),(24,239),(24,240),(24,150),(24,241),(24,242),(24,243),(24,81),(24,244),(24,245),(24,155),(24,246),(24,247),(25,135),(25,248),(25,90),(25,38),(25,249),(25,250),(25,251),(25,252),(25,140),(25,141),(25,146),(25,253),(25,254),(25,240),(25,90),(25,255),(25,256),(25,257),(25,258),(25,259),(25,81),(25,260),(25,261),(25,262),(25,263),(25,264),(25,196),(25,265),(26,33),(26,273),(26,36),(26,274),(26,275),(26,276),(26,277),(26,49),(26,278),(26,81),(26,279),(26,280),(26,281),(26,282),(27,283),(27,284),(27,122),(27,285),(27,47),(27,286),(27,287),(27,288),(27,81),(27,102),(27,289),(27,52),(27,53),(27,54),(27,290),(27,291),(28,292),(28,293),(28,294),(28,295),(28,287),(28,296),(28,297),(28,168),(28,298),(28,299),(28,300),(28,301),(28,302),(29,303),(29,47),(29,138),(29,304),(29,305),(29,168),(29,306),(29,307),(29,52),(29,308),(29,309),(29,310),(29,311),(30,312),(30,313),(30,2),(30,3),(30,314),(30,315),(30,5),(30,316),(30,317),(30,318),(30,319),(30,320),(30,321),(30,14),(30,16),(31,88),(31,313),(31,400),(31,1),(31,3),(31,90),(31,150),(31,322),(31,5),(31,7),(31,8),(31,317),(31,93),(31,323),(31,13),(31,87),(31,16),(32,293),(32,324),(32,325),(32,326),(32,327),(32,328),(32,296),(32,168),(32,298),(32,26),(32,300),(32,329),(32,330),(33,335),(33,47),(33,336),(33,337),(33,338),(33,339),(33,81),(33,231),(33,340),(33,341),(33,342),(33,343),(33,344),(33,87),(33,345),(33,346),(34,351),(34,2),(34,3),(34,352),(34,353),(34,4),(34,324),(34,81),(34,5),(34,7),(34,317),(34,93),(34,12),(34,354),(34,97),(34,16),(35,2),(35,3),(35,90),(35,4),(35,355),(35,314),(35,231),(35,5),(35,268),(35,316),(35,349),(35,93),(35,356),(35,357),(35,97),(35,16),(36,90),(36,150),(36,358),(36,81),(36,68),(36,359),(36,360),(36,361),(36,362),(36,363),(36,364),(36,365),(36,94),(36,366),(36,367),(36,368),(36,16),(37,383),(37,61),(37,3),(37,4),(37,384),(37,314),(37,385),(37,5),(37,268),(37,386),(37,7),(37,317),(37,93),(37,12),(37,14),(37,16),(38,90),(38,150),(38,358),(38,81),(38,68),(38,359),(38,360),(38,361),(38,362),(38,363),(38,364),(38,365),(38,94),(38,366),(38,367),(38,368),(38,16),(39,383),(39,61),(39,3),(39,4),(39,384),(39,314),(39,385),(39,5),(39,268),(39,386),(39,7),(39,317),(39,93),(39,12),(39,14),(39,16),(40,135),(40,1),(40,2),(40,3),(40,90),(40,249),(40,387),(40,5),(40,268),(40,316),(40,7),(40,388),(40,317),(40,389),(40,390),(40,16),(41,2),(41,3),(41,90),(41,150),(41,391),(41,392),(41,393),(41,81),(41,68),(41,317),(41,233),(41,394),(41,365),(41,366),(41,379),(41,367),(41,16),(42,395),(42,396),(42,295),(42,287),(42,397),(42,398),(42,296),(42,399),(42,168),(42,298),(42,26),(42,332),(42,334),(42,214),(43,395),(43,396),(43,295),(43,287),(43,397),(43,398),(43,296),(43,399),(43,168),(43,298),(43,26),(43,332),(43,334),(43,214),(44,395),(44,396),(44,295),(44,287),(44,397),(44,398),(44,296),(44,399),(44,168),(44,298),(44,26),(44,332),(44,334),(44,214),(45,395),(45,396),(45,295),(45,287),(45,397),(45,398),(45,296),(45,399),(45,168),(45,298),(45,26),(45,332),(45,334),(45,214);
/*!40000 ALTER TABLE `article_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `article_location_details`
--

DROP TABLE IF EXISTS `article_location_details`;
/*!50001 DROP VIEW IF EXISTS `article_location_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `article_location_details` AS SELECT 
 1 AS `Article_id`,
 1 AS `Article_title`,
 1 AS `City`,
 1 AS `State`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `article_summary`
--

DROP TABLE IF EXISTS `article_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article_summary` (
  `Article_id` int NOT NULL AUTO_INCREMENT,
  `Summary_id` int NOT NULL,
  KEY `fk_Summary_id_idx` (`Summary_id`),
  KEY `fk_Article_id_idx` (`Article_id`),
  CONSTRAINT `fk_Article_id` FOREIGN KEY (`Article_id`) REFERENCES `article` (`Article_id`),
  CONSTRAINT `fk_Summary_id` FOREIGN KEY (`Summary_id`) REFERENCES `summary` (`Summary_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_summary`
--

LOCK TABLES `article_summary` WRITE;
/*!40000 ALTER TABLE `article_summary` DISABLE KEYS */;
INSERT INTO `article_summary` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,9),(15,14),(16,15),(17,16),(18,17),(19,18),(20,19),(21,20),(22,21),(23,22),(24,23),(25,24),(26,25),(27,26),(28,27),(29,28),(30,29),(31,30),(32,31),(33,32),(34,33),(35,34),(36,35),(37,36),(38,37),(39,38),(40,39),(41,40),(42,41),(43,41),(44,41),(45,42);
/*!40000 ALTER TABLE `article_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `city_article_count`
--

DROP TABLE IF EXISTS `city_article_count`;
/*!50001 DROP VIEW IF EXISTS `city_article_count`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `city_article_count` AS SELECT 
 1 AS `City Name`,
 1 AS `State`,
 1 AS `Article Count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `high_frequency_keywords`
--

DROP TABLE IF EXISTS `high_frequency_keywords`;
/*!50001 DROP VIEW IF EXISTS `high_frequency_keywords`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `high_frequency_keywords` AS SELECT 
 1 AS `Keyword`,
 1 AS `Keyword_Count`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `keyword`
--

DROP TABLE IF EXISTS `keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keyword` (
  `Keyword_id` int NOT NULL AUTO_INCREMENT,
  `Keyword` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`Keyword_id`)
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keyword`
--

LOCK TABLES `keyword` WRITE;
/*!40000 ALTER TABLE `keyword` DISABLE KEYS */;
INSERT INTO `keyword` VALUES (1,'baltimore'),(2,'black'),(3,'caughman'),(4,'daily'),(5,'jackson'),(6,'krugman'),(7,'manhattan'),(8,'maryland'),(9,'patricia'),(10,'regarded'),(11,'square'),(12,'stabbing'),(13,'times'),(14,'timothy'),(15,'veterans'),(16,'york'),(17,'bus'),(18,'buzzfeed'),(19,'decaux'),(20,'grove'),(21,'jack'),(22,'ladbroke'),(23,'london'),(24,'met'),(25,'pavli'),(26,'police'),(27,'poster'),(28,'posters'),(29,'tfl'),(30,'transport'),(31,'union'),(32,'1367'),(33,'act'),(34,'back'),(35,'badge'),(36,'bill'),(37,'bryant'),(38,'crime'),(39,'gov'),(40,'gunn'),(41,'house'),(42,'intimidating'),(43,'penalties'),(44,'philip'),(45,'protected'),(46,'reeves'),(47,'asia'),(48,'bellevue'),(49,'facebook'),(50,'gossip'),(51,'justice'),(52,'kansas'),(53,'kuchibhotla'),(54,'south'),(55,'srinivas'),(56,'tasveer'),(57,'vambulai'),(58,'vigil'),(59,'webelong'),(60,'agency'),(61,'american'),(62,'bomb'),(63,'center'),(64,'community'),(65,'fraud'),(66,'hoax'),(67,'israel'),(68,'jewish'),(69,'juan'),(70,'shh'),(71,'suspect'),(72,'telegraphic'),(73,'thompson'),(74,'threats'),(75,'add'),(76,'blue'),(77,'ciaramella'),(78,'delatoba'),(79,'donald'),(80,'gay'),(81,'hate'),(82,'law'),(83,'laws'),(84,'lives'),(85,'louisiana'),(86,'matter'),(87,'trump'),(88,'anti'),(89,'channels'),(90,'city'),(91,'nazi'),(92,'neo'),(93,'racist'),(94,'semitic'),(95,'subscribed'),(96,'supremacist'),(97,'white'),(98,'youtube'),(99,'anish'),(100,'fox'),(101,'hanumantha'),(102,'india'),(103,'jersey'),(104,'narra'),(105,'newjersey'),(106,'prakasam'),(107,'rao'),(108,'sasikala'),(109,'son'),(110,'telangana'),(111,'vijayawada'),(112,'case'),(113,'civil'),(114,'emmett'),(115,'miss'),(116,'parker'),(117,'rev'),(118,'solved'),(119,'sykes'),(120,'till'),(121,'woman'),(122,'alliance'),(123,'casa'),(124,'cornelia'),(125,'diego'),(126,'england'),(127,'forum'),(128,'free'),(129,'host'),(130,'immigration'),(131,'lgbt'),(132,'presented'),(133,'spanish'),(134,'translation'),(135,'attorney'),(136,'complaint'),(137,'gun'),(138,'hmong'),(139,'hospital'),(140,'junction'),(141,'kaminski'),(142,'marijuana'),(143,'moua'),(144,'point'),(145,'porn'),(146,'portage'),(147,'shooting'),(148,'stevens'),(149,'bruce'),(150,'crimes'),(151,'general'),(152,'government'),(153,'illinois'),(154,'kfvs'),(155,'levin'),(156,'lisa'),(157,'madigan'),(158,'semitism'),(159,'tougher'),(160,'bardstown'),(161,'bevin'),(162,'bratcher'),(163,'categorize'),(164,'kentucky'),(165,'officer'),(166,'officers'),(167,'eichenwald'),(168,'islamic'),(169,'jews'),(170,'leaflets'),(171,'hampden'),(172,'neighbors'),(173,'rice'),(174,'sarah'),(175,'communities'),(176,'kuchibholta'),(177,'muslim'),(178,'northwest'),(179,'solidarity'),(180,'starleen'),(181,'synagogue'),(182,'tifereth'),(183,'vhatnagar'),(184,'washington'),(185,'amish'),(186,'dettelbach'),(187,'federal'),(188,'prosecutions'),(189,'girl'),(190,'harassment'),(191,'heir'),(192,'lebanon'),(193,'man'),(194,'middle'),(195,'origin'),(196,'sikh'),(197,'subway'),(198,'train'),(199,'belong'),(200,'east'),(201,'harassed'),(202,'rajpreet'),(203,'shouted'),(204,'bera'),(205,'caucus'),(206,'congress'),(207,'congressman'),(208,'gabbard'),(209,'hateful'),(210,'hindu'),(211,'pluralistic'),(212,'tulsi'),(213,'people'),(214,'vandalism'),(215,'assemblymembers'),(216,'balboa'),(217,'calles'),(218,'filmout'),(219,'giggles'),(220,'hillcrest'),(221,'jim'),(222,'mcquiggan'),(223,'michael'),(224,'sdgln'),(225,'trans'),(226,'winsor'),(227,'courier'),(228,'journal'),(229,'blasio'),(230,'borelli'),(231,'island'),(232,'mayor'),(233,'president'),(234,'rhetoric'),(235,'staten'),(236,'bernardino'),(237,'brian'),(238,'california'),(239,'chicago'),(240,'cities'),(241,'criminologist'),(242,'extremism'),(243,'fact'),(244,'jurisdictions'),(245,'largest'),(246,'los_angeles'),(247,'rise'),(248,'charges'),(249,'district'),(250,'firearm'),(251,'henry'),(252,'intentionally'),(253,'thc'),(254,'butner'),(255,'diaper'),(256,'doorstep'),(257,'eaton'),(258,'ellen'),(259,'herald'),(260,'hundal'),(261,'love'),(262,'note'),(263,'richland'),(264,'shouting'),(265,'tri'),(266,'coughman'),(267,'gathered'),(268,'james'),(269,'neighborhood'),(270,'schiszik'),(271,'supremicist'),(272,'wbff'),(273,'affordable'),(274,'care'),(275,'conn'),(276,'democratic'),(277,'divisiveness'),(278,'fasano'),(279,'party'),(280,'ploys'),(281,'proposed'),(282,'republican'),(283,'9news'),(284,'akbulut'),(285,'anusha'),(286,'balance'),(287,'colorado'),(288,'dilpreet'),(289,'interfaith'),(290,'power'),(291,'yelled'),(292,'aboellail'),(293,'bible'),(294,'chief'),(295,'collins'),(296,'fort'),(297,'hutton'),(298,'mosque'),(299,'polis'),(300,'rock'),(301,'tawfik'),(302,'windows'),(303,'arab'),(304,'fbi'),(305,'harpreet'),(306,'janke'),(307,'johnson'),(308,'mokha'),(309,'south_dakota'),(310,'speech'),(311,'underreporting'),(312,'2ncawma'),(313,'army'),(314,'harris'),(315,'hirsch'),(316,'killed'),(317,'murder'),(318,'nydn'),(319,'pool'),(320,'post'),(321,'steven'),(322,'immigrants'),(323,'stabbed'),(324,'cair'),(325,'cnn'),(326,'dustin'),(327,'fccrimestopper'),(328,'fcpolice'),(329,'urges'),(330,'weir'),(331,'benches'),(332,'state'),(333,'surveillance'),(334,'university'),(335,'amanda'),(336,'climate'),(337,'credit'),(338,'descent'),(339,'fossil'),(340,'jobs'),(341,'long'),(342,'newsday'),(343,'patchogue'),(344,'pruitt'),(345,'voisard'),(346,'warming'),(347,'blonds'),(348,'mckvibmk71'),(349,'midtown'),(350,'stranger'),(351,'alec'),(352,'court'),(353,'criminal'),(354,'talkin'),(355,'elderly'),(356,'ru3mgggdfs'),(357,'thug'),(358,'denounce'),(359,'judgement'),(360,'left'),(361,'leftists'),(362,'mrctv'),(363,'press'),(364,'rush'),(365,'sean'),(366,'spicer'),(367,'whitehouse'),(368,'wingers'),(369,'acedemic'),(370,'applications'),(371,'china'),(372,'college'),(373,'counselling'),(374,'doors'),(375,'education'),(376,'international'),(377,'newsgram'),(378,'open'),(379,'students'),(380,'studying'),(381,'survey'),(382,'visa'),(383,'accused'),(384,'deter'),(385,'interracial'),(386,'latest'),(387,'indicted'),(388,'men'),(389,'terror'),(390,'vance'),(391,'debt'),(392,'devos'),(393,'hansen'),(394,'ryan'),(395,'2mkwqeg'),(396,'arrested'),(397,'coloradoan'),(398,'denver'),(399,'giaquinto'),(400,'attack');
/*!40000 ALTER TABLE `keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `Location_id` int NOT NULL AUTO_INCREMENT,
  `City` varchar(45) NOT NULL,
  `State` varchar(45) NOT NULL,
  PRIMARY KEY (`Location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'New York','NY'),(2,'Jackson','MS'),(3,'Seattle','WA'),(4,'West Palm Beach','FL'),(5,'Washington','DC'),(6,'Waltham','MA'),(7,'Kansas City','KS'),(8,'San Diego','CA'),(9,'Stevens Point','WI'),(10,'Cape Girardeau','MO'),(11,'Anthem','AZ'),(12,'Emeryville','CA'),(13,'Baltimore','MD'),(14,'Sheboygan','WI'),(15,'Houma','LA'),(16,'Union City','CA'),(17,'Altadena','CA'),(18,'Chicago','IL'),(19,'Bellevue','WA'),(20,'Oklahoma City','OK'),(21,'Milwaukee','WI'),(22,'Kennewick','WA'),(23,'New Haven','CT'),(24,'Denver','CO'),(25,'Columbus','OH'),(26,'Kansas City','MO'),(27,'Wichita','KS'),(28,'Oak Park','MI'),(29,'Orlando','FL'),(30,'Greenville','TN'),(31,'Charlotte','NC'),(32,'Colorado Springs','CO'),(33,'Spokane','WA'),(34,'Youngstown','OH'),(35,'San Ramon','CA');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organization` (
  `Organization_id` int NOT NULL AUTO_INCREMENT,
  `Organization_name` varchar(45) NOT NULL,
  PRIMARY KEY (`Organization_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization`
--

LOCK TABLES `organization` WRITE;
/*!40000 ALTER TABLE `organization` DISABLE KEYS */;
INSERT INTO `organization` VALUES (1,'BuzzFeed News'),(2,'Jackson Free Press'),(3,'Seattle Globalist'),(4,'BizPac Review'),(5,'Reason'),(6,'India New England'),(7,'Wyandotte Daily'),(8,'San Diego Gay & Lesbian News'),(9,'Stevens Point Journal'),(10,'KFVS'),(11,'Western Journalism'),(12,'Reveal'),(13,'Baltimore Sun'),(14,'The Sheboygan Press'),(15,'WJLA'),(16,'Houma Courier'),(17,'IndiaPost.com'),(18,'Yahoo News'),(19,'India Tribune'),(20,'India New England'),(21,'San Diego Gay & Lesbian News'),(22,'Townhall'),(23,'American Thinker'),(24,'KOCO Oklahoma City'),(25,'WDJT'),(26,'Tri-City Herald'),(27,'New Haven Register'),(28,'9NEWS.com'),(29,'NBC4i.com'),(30,'KCUR'),(31,'Wichita Eagle'),(32,'World Socialist Web Site'),(33,'WESH Orlando'),(34,'Greeneville Sun'),(35,'Newsday'),(36,'Wichita Eagle'),(37,'Carbonated.tv'),(38,'San Diego Jewish World'),(39,'Washington Post'),(40,'New York\'s PIX11 / WPIX-TV'),(41,'Mic'),(42,'WSOC Charlotte'),(43,'KOAA.com Colorado Springs and Pueblo News'),(44,'KHQ Right Now'),(45,'WFMJ');
/*!40000 ALTER TABLE `organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `organization_most_recent_article`
--

DROP TABLE IF EXISTS `organization_most_recent_article`;
/*!50001 DROP VIEW IF EXISTS `organization_most_recent_article`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `organization_most_recent_article` AS SELECT 
 1 AS `Organization`,
 1 AS `Article Date`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `summary`
--

DROP TABLE IF EXISTS `summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `summary` (
  `Summary_id` int NOT NULL AUTO_INCREMENT,
  `Summary` varchar(8000) DEFAULT NULL,
  PRIMARY KEY (`Summary_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `summary`
--

LOCK TABLES `summary` WRITE;
/*!40000 ALTER TABLE `summary` DISABLE KEYS */;
INSERT INTO `summary` VALUES (1,'A Met police spokesperson told BuzzFeed News the incident is being investigated as a race hate crime.	The Met police have launched an investigation after posters of the union jack being set on fire were put up at a bus stop in west London.	Idiots have put'),(2,'Gov. Phil Bryant signed the Back the Badge bill, which makes any crime against a police officer subject to the state\'s hate crime language. Photo by Arielle Dreher.	By Arielle Dreher Friday, March 24, 2017 1:16 pm CDT	JACKSON Surrounded by law'),(3,'Dozens of South Asian organizations organized a vigil at Crossroads Park in Bellevue earlier this month to honor Srinivas Kuchibhotla, who was shot to death in Kansas. (Photo by Tasveer via Facebook.)	We have an adage in Tamil that goes like this:'),(4,'Earlier this month, liberal journalist Juan Thompson was arrested for making a series of bomb threats to Jewish schools, centers, and a museum to supposedly intimidate a former girlfriend.	And now, just yesterday, after a months-long undercover anti-fraud'),(5,'Technically, this is supposed to mean that if somebody intentionally targets a person for a crime because they\'re police officers, he or she may face enhanced sentences for a conviction. That\'s how hate crime laws are used in cases when a criminal targets'),(6,'By India New England News	By INE Wire Services	New Delhi, Vijayawada and New Jersey The parents of an Indian woman who along with her seven-year-old son found dead in their home in New Jersey, suspect the involvement of their son-in-law. Meanwhile,'),(7,'by Mary Rupert	The Rev. Wheeler Parker, in the Kansas City area recently for a church conference, was surprised when he heard on the news that an accuser of Emmett Till had changed her story.	Parker was a cousin of Emmett Till who went on the train with'),(8,'by SDGLN Staff	With many people concerned about changes to US immigration policies, this forum will answer questions and link people to resources.	The San Diego LGBT Community Center will host a Free Immigration Forum on Tuesday, March March 28 from 6-8'),(9,'STEVENS POINT - The 80-year-old man accused of aiming a gun at his neighbor, a Hmong woman, told nurses at the hospital he was taken to after he was arrested he had problems with the Hmongs and believed Hmong people were criminals, according to a'),(10,'ILLINOIS (KFVS) -	Illinois Governor Bruce Rauner and Attorney General Lisa Madigan want action in response to the recent acts of anti-Semitism and hate crimes.	They are urging lawmakers to pass legislation that would strengthen laws and bring tougher'),(11,'by Fred Maxwell March 24, 2017 at 2:55pm	Kentucky has joined Louisiana as the second state to pass a law that will categorize an attack on a police officer, firefighter or first-responder as a hate crime.	The law, which is being called the Blue Lives'),(12,'By Will Carless / March 24, 2017	Since the November election, a wave of bomb threats against hundreds of Jewish institutions across the country have incited worries about a resurgence of anti-Semitism in America.	But so far the two suspects who\'ve been'),(13,'By Luke Broadwater	Residents of Baltimore\'s Hampden neighborhood plan to hold a vigil Saturday to honor the black New York man who was stabbed to death in what police say was a hate crime carried out by one of their white neighbors.	Event organizer Sarah'),(14,'by Tim Barber/ABC7	Friday night people from the Jewish, Muslim, and Indian American communities gathered on the steps of Tifereth Israel Synagogue in Northwest Washington.	They lit candles and stood in solidarity against hate crimes that have recently'),(15,'By Ann E. Marimow and Rachel Weiner The Washington Post	- The lethal stabbing of a homeless man in New York City on Monday by a white Maryland man who police said traveled to the city to act on his long-harbored hatred of black men.	- The killing in'),(16,'NEW YORK: A Sikh-American girl was harassed on a subway train here when a white man, mistaking her to be from the Middle East, allegedly shouted go back to Lebanon and you don\'t belong in this country, the latest in a series of hate crimes'),(17,'A Sikh-American girl was harassed on a subway train in New York when a white man, mistaking her to be from the Middle East, allegedly shouted go back to Lebanon and you don\'t belong in this country, the latest in a series of hate crimes against people'),(18,'Washington DC: Tulsi Gabbard, the first Hindu lawmaker in US Congress, has expressed concern over a series of hate crimes against Indian-Americans and asked the Justice Department to investigate all violent acts motivated by bigotry to promote a'),(19,'By India New England News	Washington People from the Jewish, Muslim, and Indian American communities gathered on the steps of Tifereth Israel Synagogue in northwest Washington and stood in solidarity against rising hate crimes in the US.	This is'),(20,'by SDGLN Staff	This week\'s topping stories: The passing of Michael Giggles Calles; FilmOut\'s Michael McQuiggan could use your help; and lots of weekend fun ahead.	The San Diego LGBT community has been grieving this week over the sudden passing of'),(21,'To counter the instances of shooting in which police officers were targeted, the state of Kentucky has passed a new law that makes it a hate crime to target law enforcement. Republican Gov. Matt Bevin signed the blue lives matter bill into law. Louisiana'),(22,'By Rick Moran	New York Mayor Bill de Blasio is blaming the dynamic of hate that he says was created by President Trump during the campaign for the brutal slaying of a black many by a white man who traveled from Baltimore to New York to kill black'),(23,'A recent report indicates that hate crimes are on the rise in 9 of the nation\'s largest metropolitan areas, including the three largest cities  New York, Los Angeles and Chicago. The Center for the Study of Hate and Extremism at California State'),(24,'JUNCTION CITY, Wis. (WSAW) The Portage County District Attorney has decided to charge the Junction City man accused of firing a gun in the direction of his Hmong neighbor with a hate crime.	Earlier this month, 80-year-old Henry Kaminski was taken into'),(25,'Chuck Eaton of Richland picks up a Hate has no home here sign from Ellen McBriarty of the Love, Not Hate Tri-Cities group at the Richland Public Library on Thursday evening. Scott Butner Special to the Herald	By Sara Schilling	A Richland couple came'),(26,'By Danielle Morfi Our state reps and state senators are supposed to represent our best interests, and advocate for what their communities need to thrive and prosper.	But lately, I\'ve seen our state leaders play a partisan blame game, crying foul when one'),(27,'Srinivas Kuchibhotla from India was shot and killed at a bar in Kansas. Two other people were hurt. The suspected gunman yelled \'get out of my country\' then opened fire.	The victim told police the suspect also yelled at him to go back to his country.	In'),(28,'By AP Published: March 27, 2017, 12:29 pm	FORT COLLINS, Colo. (AP)  A Colorado mosque was vandalized early Sunday when someone threw rocks and a Bible through the windows of the Islamic Center of Fort Collins.	Islamic Center president Tawfik Aboellail'),(29,'By Laura Ziegler 6 hours ago	Hate speech directed at the Islamic community should not be ignored, FBI and other federal officials told about 50 members of the Islamic Center of Johnson County at a forum Saturday.	Then, he said, immediately call local'),(30,'James Harris Jackson appears in criminal court during his arraignment, Thursday, March 23, 2017, in New York. Jackson, accused of randomly killing Timothy Caughman, a 66-year-old black man on the streets of New York by stabbing him with a sword, was'),(31,'By Fred Mazelis	James H. Jackson, a white US Army veteran, was charged last week with the wanton killing of a 66-year-old black man in New York City. Jackson was charged with second-degree murder as a hate crime.	Jackson, 28, traveled to New York from'),(32,'Officials with the Islamic Center of Fort Collins said the footage shows a man throwing several large rocks and the Bible into the mosque.	Colorado police are investigating vandalism at a mosque after a person was seen on surveillance video throwing rocks'),(33,'In this Sunday, March 26, 2017, still image from a video surveillance camera, a suspect is shown during the vandalizing of a mosque near Colorado State University in Fort Collins, Colo. Police are asking for the public\'s help in identifying the person who'),(34,'By Newsday Readers	A pedestrian walks across train tracks at a common crossing in Patchogue on Aug. 29, 2012. Photo Credit: Amanda Voisard	Newsday published news of a drop in reported hate crimes across Long Island [Hate crime drop on LI, News,'),(35,'James Harris Jackson, center, a white racist accused of fatally stabbing a 66-year-old stranger on a Manhattan street because he was black, appears in Manhattan Criminal Court, with his attorney Sanford Talkin, left, in New York, Monday March 27, 2017. He'),(36,'White supremacist James Harris Jackson revealed details of his plan to massacre black men in New York City during a recent jailhouse interview.	Trump sent his AG out to scare whites about immigrants. Of course, no word about the murderer James Harris'),(37,'At a press briefing on Monday, White House Press Secretary Sean Spicer criticized the Left for immediately rushing to judgment and assuming hate crimes must be committed by right-wingers without evidence.	Spicer said leftists need to be held to'),(38,'NEW YORK  The Latest on James Harris Jackson, a white racist accused of stabbing Timothy Caughman, a black man (all times local):	4 pm	A white racist accused of the fatal stabbing of a black man on a Manhattan street has been indicted on a charge of'),(39,'NEW YORK  A man who told police he came to New York City to kill black men has been indicted on terrorism and hate crime charges.	Manhattan District Attorney Cyrus Vance Jr. announced Monday the indictment of James Harris Jackson, 28, in the murder'),(40,'By Anna Swartz	During Monday\'s White House press briefing, press secretary Sean Spicer was asked point-blank to respond to last week\'s murder of 66-year-old Timothy Caughman, allegedly murdered by a white man who came to New York City specifically to kill'),(41,'FORT COLLINS, Colo. (AP) - Police arrested a suspect in connection with the vandalism at a mosque near Colorado State University, a case they are investigating as a hate crime. Joseph Scott Giaquinto, 35, was arrested on suspicion of several charges,'),(42,'AP National News Video	FORT COLLINS, Colo. (AP) - Police arrested a suspect in connection with the vandalism at a mosque near Colorado State University, a case they are investigating as a hate crime.	Joseph Scott Giaquinto, 35, was arrested on suspicion');
/*!40000 ALTER TABLE `summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `article_crime_type`
--

/*!50001 DROP VIEW IF EXISTS `article_crime_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `article_crime_type` AS select `k`.`Keyword` AS `Keyword`,`a`.`Article_title` AS `Article_title`,`s`.`Summary` AS `Summary` from ((((`article` `a` join `article_keyword` on((`a`.`Article_id` = `article_keyword`.`Article_id`))) join `keyword` `k` on((`article_keyword`.`Keyword_id` = `k`.`Keyword_id`))) join `article_summary` on((`a`.`Article_id` = `article_summary`.`Article_id`))) join `summary` `s` on((`article_summary`.`Summary_id` = `s`.`Summary_id`))) where ((`k`.`Keyword` = 'stabbing') or (`k`.`Keyword` = 'murder') or (`k`.`Keyword` = 'attack') or (`k`.`Keyword` = 'threats')) order by `k`.`Keyword` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `article_location_details`
--

/*!50001 DROP VIEW IF EXISTS `article_location_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `article_location_details` AS select `a`.`Article_id` AS `Article_id`,`a`.`Article_title` AS `Article_title`,`l`.`City` AS `City`,`l`.`State` AS `State` from (`article` `a` join `location` `l` on((`a`.`Location_id` = `l`.`Location_id`))) where `l`.`Location_id` in (select `article`.`Location_id` from `article` group by `article`.`Location_id` having (count(`article`.`Location_id`) > 1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `city_article_count`
--

/*!50001 DROP VIEW IF EXISTS `city_article_count`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `city_article_count` AS select `l`.`City` AS `City Name`,`l`.`State` AS `State`,count(`a`.`Location_id`) AS `Article Count` from (`location` `l` join `article` `a` on((`l`.`Location_id` = `a`.`Location_id`))) group by `l`.`City`,`l`.`State` order by count(`a`.`Location_id`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `high_frequency_keywords`
--

/*!50001 DROP VIEW IF EXISTS `high_frequency_keywords`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `high_frequency_keywords` AS select `K`.`Keyword` AS `Keyword`,count(`AK`.`Keyword_id`) AS `Keyword_Count` from (`keyword` `K` join `article_keyword` `AK` on((`K`.`Keyword_id` = `AK`.`Keyword_id`))) group by `K`.`Keyword` having (count(`AK`.`Keyword_id`) > 2) order by `Keyword_Count` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `organization_most_recent_article`
--

/*!50001 DROP VIEW IF EXISTS `organization_most_recent_article`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `organization_most_recent_article` AS select `o`.`Organization_name` AS `Organization`,`a`.`Article_date` AS `Article Date` from (`article` `a` join `organization` `o` on((`a`.`Organization_id` = `o`.`Organization_id`))) order by `a`.`Article_date` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-09 22:39:45
