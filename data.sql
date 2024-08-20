-- MySQL dump 10.13  Distrib 8.0.37, for Win64 (x86_64)
--
-- Host: localhost    Database: spm
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `files_data`
--

DROP TABLE IF EXISTS `files_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files_data` (
  `f_id` int NOT NULL AUTO_INCREMENT,
  `file_name` varchar(50) NOT NULL,
  `file_data` longblob,
  `added_by` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`f_id`),
  UNIQUE KEY `file_name` (`file_name`),
  KEY `added_by` (`added_by`),
  CONSTRAINT `files_data_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `student` (`email`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files_data`
--

LOCK TABLES `files_data` WRITE;
/*!40000 ALTER TABLE `files_data` DISABLE KEYS */;
INSERT INTO `files_data` VALUES (1,'otp.py',_binary 'import random\r\ndef genotp():\r\n    otp=\'\'\r\n    Caps=[chr(i) for i in range(ord(\'A\'),ord(\'Z\')+1)]\r\n    sms=[chr(i) for i in range(ord(\'a\'),ord(\'z\')+1)]\r\n    for i in  range(0,2):\r\n        otp=otp+random.choice(Caps)  #otp=\'K\'  #otp=\'K3i\'+\'M\'\r\n        otp=otp+str(random.randint(0,9)) #otp=\'K\'+\'3\' #otp=\'K3\'   \'K3iM5\'\r\n        otp=otp+random.choice(sms)  #otp=\'K3\'+\'i\'  #otp=\'K3i\'  \'K3iM5d\'\r\n    return otp\r\n','anusha@codegnan.com','2024-08-12 10:55:36'),(2,'bg1.jpg',_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0„\0	\r\r\r\r\r\r\r\r\r( %!5-%)+... 3D3-8(..+\n\n\n\r+ 0+-+0+-/--+-++/-+---+----/2/---+-------.-5----+---ÿÀ\0\0¨,\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0;\0\0\0\0\0\0!1AQ\"a2bq‚‘3BCR¡±#$4DSr’²Áÿ\Ä\0\Z\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0.\0\0\0\0\0\0\0\0!1A\"Qq\Ñ\ğa‘\ñ#2BC±\áÿ\Ú\0\0\0?\0\ô\á|Ë®He’\ÄD¨±*,DJ(–qÊ‹$\"\ÉB›ˆˆR\" $– I%‰>6Ü¨¬\ÌÁUA,\Ì@\0²I=„\ë\ñÆ´b\äs¬*\Ï$\èúœ§—¡\é\ß]\ç’\ñ/\ä\ÙCae\×\ä	¦ü•¦\ÂU:­‹\å\Û\é\Ğû\ô\'¦<6\É\àµ\â¾^«Â¸\Î>b³cZ¶„b­­‚¾]C\ë;ı\ç‹\ğü\Ä\áWÓƒs0\ßşHøC\õ*Tk”\ë¨ßªOY\ìXYIuimL»:0\ì\ÊFÁŒØ»\'q\âV–ßŸ/ûM\à‡7\ï(º£\'\ñk²\Ü_\ä\rş û\ÍD™\ï-\à‹\Ä0­\ÇnŒG5mş‹Uo\æx##=v¶V\ÅBüNG—¾³\æ\ZE5n\è\õBd&†n5™š\ğgÿ\0Î®\æ:¢\ÍU•\í\å“\Ñÿ\0i\ëús{\Ì!\ÌoXµf³\êÊ¶š\Î\áúYN\Æ\ÄM\'ì·ı\ë\âXÛ¿•\ÏW ÿ\0M¾š+ûG¼\İ\ç\Ïd¤\Ò\ÓY\ôukh´n‰%’F$D°Ê„D@±*,D²\Â,JK$	\Ä	\É DDªDD	\É \Ãø£)\èÃ¹\ê!m`µRH\Ø[laZú3ƒ8\âpzªÇ¯P\Z‘B\é‡77»6û’vI\õ&s\ñN+İ…zÔ¼Ö¨[jSÙ¬­…ˆ>¥\0˜™4U}GuÚŠ\ë\ï¢;c\é\ô–§\ì\Ê\'–‘\â_³¼kÕŸ}\Ò\ïz¶µ?]€\è:w\ë\ÓF|~\Ìø…¸¶]\Â3¬Bm\Ç\ö*zº\í¿ˆ~§\Úz‚y\ï\Ú^7p\ó±¶3\âµr–·°‚=@\äş	³\×KdşU§{\ñù1µb¾\Ü=\ZyÚ¿\0û½\Ë\Ä*]Wi	‘®Á\õ¥®µú\êzG†x\Í|CŒª»X¿\ï|:2Ğƒ>\Üw†&f5\Ø\ö\r­ŠTûb>`\õ˜\â\É8²n~e«®Ÿ‰œIŸl¼GÆº\ÜkF¬¥Š7Mlz0ù£\õŸ;‘;Ã›1©Ó‰\Êg(\ÉøoŒ·Ì§)vUO-\Ê?¾–üc\õ\ìG\ÍDırØ‰b0duŒ:†R6úO\Ív\ğŸ\Ú\áØ‹‰ux­›\Ée`9j:!ı7\ÓC\Òhu<\äÕ«¶z|±^-\á\íq9M²Xˆ\"%BX‰P”D°\É,¨DD\"D²B¬D@‘,¢jMNRH$’\É\nŒ&¹\÷\ğ­±\ğ\ÂÙk,\Æv\ää°µ”¶ˆ]\÷*z\×`“½’pu\ÜD\Ì,5|¾9›\Õi\áV\óz5ù8µ\Õü£1?\ÄÀq\Ş\Ä¡\Ån¶·\Ë\Ã&\Úq(\ã\n‡\õ™‡39]\õ\ö\Z\Ô\İx€ZÕ¬vˆ¥˜\éU@\Ùb}\0T\Ã9¼Y‹¥–pşAT*¨2\òÔs\íÁ\ò\Ğút\ß\ó\Ó\Óµ;ˆˆˆ\ó\ô[\Ö&5¹–Á\\Q8ld:\áüL.Nú±\ÇEù…\ô*“\Õ\ÇY\ä\Ş4\ğ8\Ã\Ä[±o¸ÕŠM‹]œŒi\Ù\Û=L\0 o\â#\å¾ııÂœW\ï¸8ù\'\\Îš³]…‹\ğ¾¾[g+hŒ•úK\nn=™hŸk¼\\œF¥êº¯#^¨O\Â\ßBu\õùO5>\â~“\âXi‘M”Ø¡’\Åe`{FˆŸø\Ï|«\ñ,\Ş\ëm¡?\ßYü-ü¾\æ\ßE—u\ìŸG‡QN{¡\Ò2NS‰3}¨‘¨\']\ægÂ¼B\ôWˆü‡\ğ—+Y?=1S^µ\ó:eZÍ¼Fß¢d‰gÎºd’\Ä\n\"¢T%‰eB\"YPˆ‰Pˆ‰\" \"\"Pˆ‰\"%	%È©!‘›_Y·\ò#¿¬+”†Xk0¨Z˜\Ø\Ïı,Œª+¸z5`›\n“yaOÉŒ\Ì%s§\âŒ¿¼ŸüEO]øû:Úœ:©>¹yOÉŒû\ğ~#^]	}{\Ól2·G­Á\ÓV\ãÑ”‚ùL¦7Xe\É\Ä1…µ=l6¬¥H> ‰\ç\ße¼K\îù9œ!\Ûb»,|r+rºÿ\0\õoşSÑ³.Z\ëwr¢–b{\0\Éÿ\0i\à\õdY•G›5\Ã/©Vp?kX¿\Ä\ö\é\é\ßKW\ôø°\ÉmLOŞş\'ı­xx\ßJ\çR»»\ñ€:µG¿\ñ\ßù\÷›ş-«b+¡Œ¡”\ÅH\Ø?\Ä\çb°g;\Í-Fv¬Lj_˜ù\Û\é\ï3œ\ÂY™\ä\Z\ë\òi?\æ\Ú{ª\÷o\ö9\ì+\àü·\Í”\ó\ï›\ğ\r\÷¶\æe)U\Z\0MÜŸ\Ä8\ö#\õxS¥î–¥\á¿\â\á\ò\Ø\Ë\ç\Ş?Ì´Aü«\Ù\ç\ç6Å¥@Ö§\Ï+6ºu\æ:¦\ö˜\ëz:ıS\ì:\ÍwŠøš\Únj«\Æ6…\Ğ$t{\è\õ\Z\èA\õ\èG\è4g¿,\îyl\Çm#ŒDL\É,¡(’Q²\ÄJ„±,¨DD¡$± ‘,@DD¡$±KH\Ò\ÈdV›\â_\Z×‡’0ü°\×Œœ\Ï\Ê1:\Ğ\Ñ\ßPD\Â\ãı¥«[«H)uÂC³¶(\éÛ¯\Æ?™˜\ñ7€\ë\âËš\÷\ÙYZ|T\ó\éÁ\÷g·\ö‰\Ô\á\ßft}\Üù¹\Ô\\/Rl^®\n‘¿‡·À&\Í\'SŸ,f/¾<7´;”Š5.\æ«9Á\çp\"-|œ;›\÷Ñ·J›ˆ\Z\Ê\Ïs­u€ngd–&cÀ\ó\ß]Ä«á¶ƒ\÷{Ê¥\ÍMV£-g»»ht\Ñ\ï\Ğúw˜\ö|sp±.|Ë«vQg!UzQ\\\ó‹Ğ‚w½\ïÿ\0\É\ë¶V¡³‚\Ö\0\0\0t\0t\Ö:‹Vº¯em;_ˆ1è¦€Å…U¥a˜\0X*³¡­\ô\ô¢gÍŸS•ÆƒRï‹«]HU[©-Ë°;‘°ƒ<9´\ğ\ô\Ó.\ö0™\\gœ\ÛM!ü\å\Ø],\ä°€ú\é[\Z<§\ØÏ€Â·8­ªH²•<\õ!Ù¿·[:¨ş.û!¼¤…<1/\Åk\éQ\÷„a\æ\nT+¿\ánm¤è¥ª	`\ë6±t“nl\ñ¾z\×\Ã‡Ã¬Ê²ª2\Ù\Å\É\Ôe\ß7\Â\İ\\\ìÁ\Ì;\ÚI7\Z§‡3\â\äúˆ\Çb£B€\ó\õ;c\ò²I¸¯\óş\å‘`|[ªT{)¨\ÖW›[51\Ñ),6¾…ºè™–\åÓ¡\\U¬i©l–´°²\ÄN#xˆ‰BrŒ\ä%IQ,K+\"%–HB\"$R\"%B\" \"\"A…u-\â¥©CZ‹uš´,²®¹ˆºØ€w4_øM²\í¶úÜ»²ÖS7&\Ñ6Â¤m|!›”“\ò=Gq²øc\"œJ“.\ÓnF‹ZÇ°f;\ä_Ê»\Ğù	©X¬LO>\â7¿¶¤\Ô\ég\ñŠ1\Ø%Œ\æ\Â9…uUm\ökz\ß%jNº\Ñ>$Ræ¥¢\î}\Å–ùr¸>½Tt\ë\ØŒV}Ë·¡-^\Ó6\Ô*ÁS\Û)>f\Ç\ãee\é£ı\Ç]&7Ã—µ‚\Û]±\ë\0\ê–É¿5\ÎÆ¶\Íkr;\ôSúÍ¶¦,ªÌ¥€J’	S®«±\Ğ\êS/\âLF \Óã‰Œ´Öµ¦ùWz\æ$§gşgÔ™µ1\\WWŒ*f\æeµ‚«&Š‘ÔŸ¯\Öy\ó3\Ã(†I\ì\0lÜ\Âaø·Zi[ªr›d‡Ò¯}±?-~¾\Û:«}¹)¼\ÍSHzt ¶‡v:\çm\ö\åS\ßBv\ğxrp\Û\è¦\×\Õ7•ZË”\æ6’\0ù\ÎÊ½:Ÿ5=ÍŒ]5¯Ì°¾Z\ÕÓ½2Á•YaPP¦¶sµnm0*:°$\ô\ß7^Q¾\à\áÉˆ”fP¶=NG:\"\Ùe‡›_	\0ll]Ì•fs…p·¦ÌªY+8N W\ñ’Í°AV]ttû \÷3#\Ãp¡MEÊ‚\í»¬vgr\ìÄŸvb~³¡hÔ¾kYÓ«„µyŸxª\ÅJZ¶U\Èy™Î´\Ü\Û\Ğ”Ç©o\õ\Ş\ÅÃª*¤¯\ÌseœŠ\Ïv>\æv$\Ï$ˆˆV\"\'\Ò D¢\Ô\ä K2BX‰P–J„’Ä’$DH(DDD@DD\÷®²9‘X¾!\Ã\í±\÷NA¡l\n·•Pl!w®Bz)<\Ú\'G \í\ÃøeXËª“Dş&?¹\÷f=L\î3\06{@;™n|˜\ìş)U]v?+Zt€úüAwús:\Ü&E¦6\ìl\ö³š¶É¡E¡\ï6\Â1Q\İIR:û~’\ã\Çø—\í&\ÑXÜ±\'\"\ì‹\ò°¯NJlR˜\ö¨e\rµ;\Ñ\îNˆ\íØ×¨µÁ8(_û£\Î\ÈT\ì 0:=Pi\å;©\Ú\Ù\í;\Ôb¶~5DÓ—[”[oF\Ødm\ôŞº7Nœ\è=¦\Â\Ø=µ_eh\×Ô¥R\Î^«±£\Ë\í\ÜüÀc\îw\Ó\Å\ÓV¾Z·\Ï3\á‡\á|:\ÇÆ¿\Z\êÚ“]œ´\ÛÊ½u¢Fú m\èœ¤y™\Å\ÄZë¦²M¦•UW°\ä…\å\æŞ»‘¿\æv\"lkO\"$!$”\ÉK	(œM\'!$\ä%BX–V$@‰Eˆ‰PˆƒDD\Ä\"\"Pˆˆˆ€ˆˆ:™üB¬pu‹Z»­jX\èc¥Q\ó&v\æ\Åü,f\àd\ãì„§rC¯Ä§ù#[\çÂ²Öe#\ÜÓ¡š\'ƒ8\óce_Áslcm6‡m„–º¦\Û*=\Ø½{ûLÏ‚32Ÿªø‚rdª¾uv²½\é]µ\Ğ7M\ï\í\Øk¿hœ7È¹3Õ¼ª®\ò\èÊ°\å\íV\æ\Æ\Ìı }Ô‘\ë=±\Ö&Ó\Ó\çıú\ÜF\õû=sM\ñM\Ãsq¸\İ@•¤yAu³\rÛ©ù”m0ú\Ìç†¸¯\ß1’\Ç_.\å-VM{Ùª\ô<¶\'Ğ\àƒ;yø\Ëmo[¨de*À\ö <\ëi\Å}û—¶/\Z\÷¶Jm[lF¡‘\Øe#`¡œ\æ‡\öm\Ø\í½‰|A\æ`³¶\á3iG\Ì\Ö~\ò+7¹Û­¢Ñ¸s¦&\'RDDJH¤’\É0’‰\'!8.‘©bYPˆ‰Qb\"‰%•‰\"B\"$R\"!ˆ…\"HX’ $\"X`²P\Óg\Ã\İ[_\Í?Ì¯øø¾‡\Şw3\ñ*\ÌÆ²›=WVU¾jÃ¸ùÏ§¤²†O\ê!\æO\ÔzN§¸k‡™O\ÉIø“\öˆlOµ]ııÿ\0Ö‰\á\ë8~k\â\ä·^z\ğ\òIŞ™\Â\ë+\ôzÇ–2\'©›\ÜM\í\'…*\òq¬QW\îù\á\Æq]\ó\æ­ù\\|\Ä\Ø|%\ÅNV6­e9Ÿ\' ¯\áf\n\nÚ¿•Ğ«“Mœ\ñ\ßX\Ë	øµ©\ì\Ïo\Î\ß\ã[I£Šb/6VB\ó\è#WPuş¥\ß\ÔOB\á\\B¬¼zr¨nzn­l¬şV\ë\ì}?Q0¹	\Ì˜dÿ\0‡g_\Â\ë\òù|7}”“»\ñ\Ç\èO8ù=º,¿ãŸ“Ï©Ç¿n>oB‰7›\í2Bb!H’ \"\"\Z]\Î;\Î¤\å¸\Ü\ã¹`rÜ³„»—i§(“q¸G(’%Ø²D,I¸Ü›U‰7‹nM\ÆÅ‰7\ÒÄ›“pi\Ê78\î7\n¦`³*5Y¤\ï³m?û€ø\ëı\ÃıÀ™\ÍÎ§\Ç6\'\Ât\êC!\õ;C\Óµ(\ë^M0]¨CØ«\rg™\ğ‡\áE±mc\ÉO%\Çü\ÌûlıMV1¨Ÿ\ôÚ¾‰7\îr\öK6\è=\Ç\õ+ú£\äD\×ş\Òx^\êN!]~c\â‡[\ë\í\ç\á¸åº£ûI#\Ú{\ô\öˆ´\Ò\Ş-\Ç\ÒX\ç¤\Ç1\æ9£u\Ş\Ä\×<[\Ãl¶¥»\òfc:\äb?µ©\Ô)ü¬6§\äg\ño?\Ék<\Û(‡½\Ô2\óQ\îNşÌ¬=&ÁrlO)\î\Å\Î\Õ\ëùK#\á\Î1_Ã£. TZ»d?Š»\Ó\Ö\ß5`G\Òd§Ÿxs\'ü7Š>+bq&6Sşš\óU~4ùyˆ»ıPû\Ï@œw‹\Ö-u\é4JÄ‘3`±$B\ébHÜ†˜H\ÜD\à:f\å\ÜDl7.\â%Cr\î\"PÜ»ˆ„M\Æ\â M\Æ\â$Sr\îHw&\â M\Æ\â!tn7!£q¹\"6iw!1Œ}E-\Ò\ô\óz½…\Ã\Ó\÷\r¨\ö\õ±r(\ß\öºA\ô\ô \ÄLw\ÃjÑºD¼W†q›¸¯#ú½•Ö™±-`\Ê}ˆVÛngÜ‘\Ã\0A°GPG¼D\Ş\ë9­/\ë0\Ğ\ÃÅ­_H–\Äü3\ï42+\Z\ìl¦ÁŞ»†­\Ç\èÀM\Â\\oüC\r.`\õ&¬ªÿ\0\ô\ïN¿§¨\÷‰—Cy\æ©\ÕV5\Ì\Æ\â&ûHÜ›ˆ…7ˆÿ\Ù','anusha@codegnan.com','2024-08-12 10:56:28');
/*!40000 ALTER TABLE `files_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `nid` int NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `note_content` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`nid`),
  UNIQUE KEY `title` (`title`),
  KEY `added_by` (`added_by`),
  CONSTRAINT `notes_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `student` (`email`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (3,'python','easy and simple','2024-08-10 07:13:57','anusha@codegnan.com');
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `email` varchar(100) NOT NULL,
  `student_fname` varchar(50) NOT NULL,
  `student_lname` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `password` varbinary(10) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('anusha@codegnan.com','anusha','baditha','2024-08-07 11:24:06',_binary '1234');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-16 12:33:36
