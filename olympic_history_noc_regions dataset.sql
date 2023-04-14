-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: olympic_history
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `noc_regions`
--

DROP TABLE IF EXISTS `noc_regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `noc_regions` (
  `NOC` text,
  `region` text,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noc_regions`
--

LOCK TABLES `noc_regions` WRITE;
/*!40000 ALTER TABLE `noc_regions` DISABLE KEYS */;
INSERT INTO `noc_regions` VALUES ('AFG','Afghanistan',''),('AHO','Curacao','Netherlands Antilles'),('ALB','Albania',''),('ALG','Algeria',''),('AND','Andorra',''),('ANG','Angola',''),('ANT','Antigua','Antigua and Barbuda'),('ANZ','Australia','Australasia'),('ARG','Argentina',''),('ARM','Armenia',''),('ARU','Aruba',''),('ASA','American Samoa',''),('AUS','Australia',''),('AUT','Austria',''),('AZE','Azerbaijan',''),('BAH','Bahamas',''),('BAN','Bangladesh',''),('BAR','Barbados',''),('BDI','Burundi',''),('BEL','Belgium',''),('BEN','Benin',''),('BER','Bermuda',''),('BHU','Bhutan',''),('BIH','Bosnia and Herzegovina',''),('BIZ','Belize',''),('BLR','Belarus',''),('BOH','Czech Republic','Bohemia'),('BOL','Boliva',''),('BOT','Botswana',''),('BRA','Brazil',''),('BRN','Bahrain',''),('BRU','Brunei',''),('BUL','Bulgaria',''),('BUR','Burkina Faso',''),('CAF','Central African Republic',''),('CAM','Cambodia',''),('CAN','Canada',''),('CAY','Cayman Islands',''),('CGO','Republic of Congo',''),('CHA','Chad',''),('CHI','Chile',''),('CHN','China',''),('CIV','Ivory Coast',''),('CMR','Cameroon',''),('COD','Democratic Republic of the Congo',''),('COK','Cook Islands',''),('COL','Colombia',''),('COM','Comoros',''),('CPV','Cape Verde',''),('CRC','Costa Rica',''),('CRO','Croatia',''),('CRT','Greece','Crete'),('CUB','Cuba',''),('CYP','Cyprus',''),('CZE','Czech Republic',''),('DEN','Denmark',''),('DJI','Djibouti',''),('DMA','Dominica',''),('DOM','Dominican Republic',''),('ECU','Ecuador',''),('EGY','Egypt',''),('ERI','Eritrea',''),('ESA','El Salvador',''),('ESP','Spain',''),('EST','Estonia',''),('ETH','Ethiopia',''),('EUN','Russia',''),('FIJ','Fiji',''),('FIN','Finland',''),('FRA','France',''),('FRG','Germany',''),('FSM','Micronesia',''),('GAB','Gabon',''),('GAM','Gambia',''),('GBR','UK',''),('GBS','Guinea-Bissau',''),('GDR','Germany',''),('GEO','Georgia',''),('GEQ','Equatorial Guinea',''),('GER','Germany',''),('GHA','Ghana',''),('GRE','Greece',''),('GRN','Grenada',''),('GUA','Guatemala',''),('GUI','Guinea',''),('GUM','Guam',''),('GUY','Guyana',''),('HAI','Haiti',''),('HKG','China','Hong Kong'),('HON','Honduras',''),('HUN','Hungary',''),('INA','Indonesia',''),('IND','India',''),('IOA','Individual Olympic Athletes','Individual Olympic Athletes'),('IRI','Iran',''),('IRL','Ireland',''),('IRQ','Iraq',''),('ISL','Iceland',''),('ISR','Israel',''),('ISV','Virgin Islands, US','Virgin Islands'),('ITA','Italy',''),('IVB','Virgin Islands, British',''),('JAM','Jamaica',''),('JOR','Jordan',''),('JPN','Japan',''),('KAZ','Kazakhstan',''),('KEN','Kenya',''),('KGZ','Kyrgyzstan',''),('KIR','Kiribati',''),('KOR','South Korea',''),('KOS','Kosovo',''),('KSA','Saudi Arabia',''),('KUW','Kuwait',''),('LAO','Laos',''),('LAT','Latvia',''),('LBA','Libya',''),('LBR','Liberia',''),('LCA','Saint Lucia',''),('LES','Lesotho',''),('LIB','Lebanon',''),('LIE','Liechtenstein',''),('LTU','Lithuania',''),('LUX','Luxembourg',''),('MAD','Madagascar',''),('MAL','Malaysia',''),('MAR','Morocco',''),('MAS','Malaysia',''),('MAW','Malawi',''),('MDA','Moldova',''),('MDV','Maldives',''),('MEX','Mexico',''),('MGL','Mongolia',''),('MHL','Marshall Islands',''),('MKD','Macedonia',''),('MLI','Mali',''),('MLT','Malta',''),('MNE','Montenegro',''),('MON','Monaco',''),('MOZ','Mozambique',''),('MRI','Mauritius',''),('MTN','Mauritania',''),('MYA','Myanmar',''),('NAM','Namibia',''),('NBO','Malaysia','North Borneo'),('NCA','Nicaragua',''),('NED','Netherlands',''),('NEP','Nepal',''),('NFL','Canada','Newfoundland'),('NGR','Nigeria',''),('NIG','Niger',''),('NOR','Norway',''),('NRU','Nauru',''),('NZL','New Zealand',''),('OMA','Oman',''),('PAK','Pakistan',''),('PAN','Panama',''),('PAR','Paraguay',''),('PER','Peru',''),('PHI','Philippines',''),('PLE','Palestine',''),('PLW','Palau',''),('PNG','Papua New Guinea',''),('POL','Poland',''),('POR','Portugal',''),('PRK','North Korea',''),('PUR','Puerto Rico',''),('QAT','Qatar',''),('RHO','Zimbabwe',''),('ROT','NA','Refugee Olympic Team'),('ROU','Romania',''),('RSA','South Africa',''),('RUS','Russia',''),('RWA','Rwanda',''),('SAA','Germany',''),('SAM','Samoa',''),('SCG','Serbia','Serbia and Montenegro'),('SEN','Senegal',''),('SEY','Seychelles',''),('SIN','Singapore',''),('SKN','Saint Kitts','Turks and Caicos Islands'),('SLE','Sierra Leone',''),('SLO','Slovenia',''),('SMR','San Marino',''),('SOL','Solomon Islands',''),('SOM','Somalia',''),('SRB','Serbia',''),('SRI','Sri Lanka',''),('SSD','South Sudan',''),('STP','Sao Tome and Principe',''),('SUD','Sudan',''),('SUI','Switzerland',''),('SUR','Suriname',''),('SVK','Slovakia',''),('SWE','Sweden',''),('SWZ','Swaziland',''),('SYR','Syria',''),('TAN','Tanzania',''),('TCH','Czech Republic',''),('TGA','Tonga',''),('THA','Thailand',''),('TJK','Tajikistan',''),('TKM','Turkmenistan',''),('TLS','Timor-Leste',''),('TOG','Togo',''),('TPE','Taiwan',''),('TTO','Trinidad','Trinidad and Tobago'),('TUN','Tunisia',''),('TUR','Turkey',''),('TUV','NA','Tuvalu'),('UAE','United Arab Emirates',''),('UAR','Syria','United Arab Republic'),('UGA','Uganda',''),('UKR','Ukraine',''),('UNK','NA','Unknown'),('URS','Russia',''),('URU','Uruguay',''),('USA','USA',''),('UZB','Uzbekistan',''),('VAN','Vanuatu',''),('VEN','Venezuela',''),('VIE','Vietnam',''),('VIN','Saint Vincent',''),('VNM','Vietnam',''),('WIF','Trinidad','West Indies Federation'),('YAR','Yemen','North Yemen'),('YEM','Yemen',''),('YMD','Yemen','South Yemen'),('YUG','Serbia','Yugoslavia'),('ZAM','Zambia',''),('ZIM','Zimbabwe','');
/*!40000 ALTER TABLE `noc_regions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-14 15:25:51
