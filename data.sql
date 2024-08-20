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
INSERT INTO `files_data` VALUES (1,'otp.py',_binary 'import random\r\ndef genotp():\r\n    otp=\'\'\r\n    Caps=[chr(i) for i in range(ord(\'A\'),ord(\'Z\')+1)]\r\n    sms=[chr(i) for i in range(ord(\'a\'),ord(\'z\')+1)]\r\n    for i in  range(0,2):\r\n        otp=otp+random.choice(Caps)  #otp=\'K\'  #otp=\'K3i\'+\'M\'\r\n        otp=otp+str(random.randint(0,9)) #otp=\'K\'+\'3\' #otp=\'K3\'   \'K3iM5\'\r\n        otp=otp+random.choice(sms)  #otp=\'K3\'+\'i\'  #otp=\'K3i\'  \'K3iM5d\'\r\n    return otp\r\n','anusha@codegnan.com','2024-08-12 10:55:36'),(2,'bg1.jpg',_binary '�\��\�\0JFIF\0\0\0\0\0\0�\�\0�\0	\r\r\r\r\r\r\r\r\r( %!5-%)+... 3D3-8(..+\n\n\n\r+ 0+-+0+-/--+-++/-+---+----/2/---+-------.-5----+---��\0\0�,\"\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0;\0\0\0\0\0\0!1AQ\"a�2bq��3BCR��#$4DSr����\�\0\Z\0\0\0\0\0\0\0\0\0\0\0\0�\�\0.\0\0\0\0\0\0\0\0!1A\"Qq�\�\�a�\�#2BC�\��\�\0\0\0?\0\�\�|ˮHe�\�D��*,DJ(�qʋ$\"\�B���R\" $� I%�>6ܨ�\��UA,\�@\0�I=�\�\�ƴb\�s��*\�$\������\�\�]\�\�/\�\�Cae\�\�	����\�U:��\�\�\�\��\�\'�<6\�\�\�^�¸\�>b�cZ��b�����]C\�;�\�\��\�\�Wӝ��s0\���H�C�\�*Tk�\�ߪ�OY\�XYIuimL�:0\�\�F��ػ\'q\�V�ߟ/�M\��7\�(��\'\�k�\�_\�\r���\�D�\�-\��\�0�\�n�G5m��Uo\�x##=v�V\�B��N�G����\�\Z�E5n\�\�Bd&�n5���\�g�\0ή\�:�\�U�\�\�\��\0i\��s{\�!�\�oX�f�\�ʶ�\�\��YN\�\�M\'췏�\�\�Xۿ�\�W��\0M��+�G�\�\�\�d�\�\�Y\�ukh�n�%�F$D�ʄD@�*,D�\�,JK$	\�	\� DD�DD	\� \���)\�ù\�!m`�RH\�[laZ�3�8\�pz�ǯP\Z�B\�77�6��vI\�&s\�N+݅zԼ֨[jS٬���>�\0����4U}Guڊ\�\�;c\�\����\�\�\'��\�_��k՟}\�\�z��?]�\�:w\�\�F|~\�����]\�3�Bm\�\�*z�\�~�\�z�y\�\�^7�p\�3\�r�����=@\��	�\�Kd�U�{\��1�b�\�=\Zyڿ\0��\�\�*]Wi	���\�����\�zG�x\�|C���X�\�|�:2Ѓ>\�w�&f5\�\�\r��T��b>`\��\�\�8�n~e������I�l�Gƺ\�kF���7Mlz0��\��;�;�Û1�Ӊ�\�g(\��o��̧)vUO-\�?���c\�\�G\�D��r؉b0du�:�R6�O\�v\�\�\�؋�ux��\�e`9j:!��7\�C\�hu�<\�ի�z|�^-\�\�q9M�X�\"%BX�P�D�\�,�DD\"D�B�D@�,�jMNRH$�\�\n�&�\�\�\�\�ُk,\�v\�䰝����]\�*z\�`���pu\�D\�,5|�9�\�i\�V\�z5�8�\���1?\��q\�\��\�n��\�\�&\�q(\�\n�\���39]\�\�\Z\�\�x�Zլv����\�U@\�b}\0T\�9�Y���p�AT*�2\�ԍs\��\�\��t\�\�\�\��;���\�\�[\�&5���\\Q8ld:\��L.N��\�E��\�*�\�\�Y\�\�4\�8\�\�[�o�ՊM�]��i\�\�=L\0 o\�#\���W\�8�\'\\Κ�]��\�[g�+h����K\nn=�h�k�\\�F�꺯#^�O\�\�Bu\��O5>\�~�\�Xi�M�ء�\�e`{F����\�|�\�,\�\�m�?\�Y�-��\�\�E�u\�G�QN{�\�2NS�3}���\']\�g¼B\�W���\�+Y?=1S^�\�:eZͼFߢd�gκd�\�\n\"�T%�eB\"YP��P��\" \"\"P��\"%	%�ȩ!��_Y�\�#��+��X�k�0�Z�\�\��,��+�z5`�\n�yaOɌ\�%s�\�����EO]��:ڜ:�>��yOɌ�\�~#^]	}{\�l2�G��\�V\�є��L�7Xe\�\�1��=l6��H>��\�\�e�K\��9�!\�b�,|r+r��\0\�o�Sѳ.Z\�wr��b{\0\��\0i\�\�dY��G�5\�/�Vp?kX�\�\�\�\�\�KW\���\�mLOޞ�\'���xx\�J\�R��\�:�G�\�\��\���-�b+�����\�H\�?\�\�b�g�;\�-�Fv�Lj_���\�\�\�3�\�Y�\�\Z\�\�i?\�\�{�\�o\�9\�+\���\��\�\�\�\r\��\�e)U\Z\0Mܟ\�8\�#\�xS��\�\�\�\�\�\�\�\�?̴A��\�\�\�6ť@֧\�+6�u\�:�\��\�z:�S\�:\�w���\�nj�\�6�\�$t{\�\�\Z\�A\�\�G\�4g�,\�yl\�m#��DL\�,�(�Q�\�J��,�DD�$� �,@DD�$�KH\�\�dV�\�_\Zׇ�0��\���\�\�1:\�\�\�PD\�\����[��H)uC��(\�ۯ\�?��\�7�\�\�˚\�\�YZ|�T\�\��\�g�\��\�\�\�ft}\���\�\\/Rl^�\n�����&\�\'S�,f/�<7�;��5.\�9�\�p\"-|�;�\�ѷJ��\Z\�\�s�u�ngd�&c�\�\�]īᶃ\�{ʥ\�MV�-g��ht\�\�\��w�\�|sp�.|˫vQg!UzQ\\\��Ђw�\��\0\�\�V���\�\0\0\0t\0t\�:�V��em;�_�1覀ŅU�a�\0X*����\�\���g͟S�ƃR]HU[�-˰;���<9�\�\�\�.\�0�\\g�\�M!�\�\�],\����\�[\Z<�\�π·8��H��<\�!ٿ�[:��.�!����<1/\�k\�Q\��a\�\nT+�\�nm��襪	`\�6�t�nl\�z\�\��ìʲ�2\�\�\�\�e\�7\�\�\\\��\�;�\�I7\Z��3\�\���\�b�B�\�\�;c\�I��\��\�`|[�T{)�\�W�[51\�),6���虖\�ӡ\\U�i�l����\�N#x��Br�\�%IQ,K+\"%�HB\"$R\"%B\" \"\"A�u-\���CZ�u���,�����؝�w4_�M�\��ܻ�֍S7&\�6¤m|!���\�=Gq��c\"�J�.\�nF�Zǰf;\�_ʻ\��	��X�LO>\�7���\�\�g\�1\�%�\�\�9�uUm\�kz\�%jN�\�>$R楢\�}\���r��>�Tt\�\��V}˷�-^\�6\�*�S\�)>f\�\�ee\��\�]&7×��\�]�\�\0\�ɿ5\�ƶ\�kr;\�S�Ͷ�,�̥�J�	S���\�\�S/\�LF�\�㉌�ֵ��Wz\�$��g�gԙ�1\\W�W�*f\�e���&���ԟ�\�y\�3\�(�I\�\0l�ܞ\�a��Zi[�r�d�ү}�?-~�\�:�}�)�\�SHzt���v:\�m\�\�S\�Bv\�xrp\�\�\�\�7�Z˔\�6�\0�\�ʽ:�5=͌]5�̰�Z\�ӽ2��YaPP��s�nm0*:�$\�\�7^Q�\�\�Ɉ�fP�=NG:\"\�e��_	\0ll]̕��fs�p��̪Y+8N�W\�ͰAV]tt�� \�3#\�p�MEʂ\��vgr\�ğvb~���hԾkYӫ��y�x�\�JZ�U\�y�δ\�\�\��ǩo\�\�\�ê�*��\�se���\�v>\�v$�\�$��V\"\'\� D�\�\� K2BX�P�J��Ē$DH(DDD@DD\����9�X�!\�\�\�NA�l\n��Pl!w�Bz)<\�\'G�\�\��eX˪�D�&?�\�f=L\�3\06{@;�n|�\��)U]v?+Zt���Aw�s:\�&E�6\�l\����ɡE�\�6\�1Q\�IR:�~�\�\���\�&\�Xܱ\'\"\�\�NJlR�\��e\r�;\�\�N�\�؁ר��8(_��\�\�T\�0:=Pi\�;�\�\�\�;\�b�~5Dӗ[�[oF\�dm\�޺7N�\�=�\�\�=�_eh\�ԥR\�^���\�\�\���c\�w\�\�\�V�Z�\�3\�\�|:\�ƿ\Z\�ړ]��\�ʽu�F��m\���y�\�\�Z릲M��UW�\�\�\�޻��\�v\"lkO\"$!$�\�K	(�M\'!$\�%BX�V$@�E��P��DD\�\"\"P������:��B�p�u�Z��jX\�c�Q\�&v\�\��,f\�d\�섧rC�ħ�#[\�²֎e#\�ӡ�\'�8\�ce_�slcm6�m����\�*=\��{��Lς32����rd��uv��\�]�\�7M\�\�\�k�h�7ȹ3ռ��\�\�ʰ\�\�V\�\�\����}ԑ\�=�\�&ӎ\�\���\�F\��=sM\�M�\�sq�\�@��yAu�\r۩��m0�\�熸�\�1�\�_.\�-VM{٪\�<�\'Ў�\��;y�\�mo[�de*�\� �<\�i\�}���/\Z\��Jm[lF����\�e#`���\�\�m�\�\���|A\�`��\�3iG\�\�~\�+7�ۭ�Ѹs�&\'RDDJH��\�0��\'!8.��bYP��Qb\"�%��\"B\"$R\"!��\"H�X� $\"X�`�P\�g\�\�[_\�?̯����\�w3\�*\�Ʋ�=WVU�jø�ϧ���O\�!\�O\�zN��k��O\�I��\���lO�]���\0։\�\�8~k\�\�^z\�\�Iޙ\�\�+\�zǖ2\'���\�M\�\'�*\�q�QW\��\�\�q]�\�\��\\|\�\�|%\�NV6�e9�\' �\�f\n\nڿ�Ы��M�\�\�X\�	���\�\�o\�\�\�[I��b/6VB�\�\�#WPu��\�\�OB\�\\B��zr�nzn�l��V\�\�}?Q0�	\��d�\0�g_\�\�\��|7}���\�\�\�O8�=�,�㟓ϩǿn>oB�7�\�2Bb!H� \"\"\Z]\�;�\��\�\�\�`rܳ���i�(�q�G(�%زD�,I�ܛU�7��nM\�ŉ7�\�ě�pi\�78\�7\n�`�*5Y�\�m?���\��\����\�Χ\�6\'\�t\�C!\�;C\��(\�^M0]�Cث\rg�\��\�E�mc\�O%\��\��l��MV1��\�ھ�7\��r\�K6\�=\�\�+��\�D\��\�x^\�N!]~c\�[\�\�\�\�庣�I#\�{\�\���\�\�-\�\�X\�\�1\�9��u\�\�\�<[\�l���\�fc:\�b?��\�)��6�\�g\�o?\�k<\�(��\�2\�Q\�N�̬=&�rlO)\�\�\�\�\��K#\�\�1_ã.�TZ�d?��\�\�\�5`G\�d��xs\'�7�>+bq&6S��\�U~4�y���P�\�@��w�\�-u\�4�Jđ3`�$B\�bH܆�H\�D\�:f\�\�Dl7.\�%Cr\�\"Pܻ��M\�\� M\�\�$Sr\�H�w&\� M\�\�!tn7!�q�\"6iw!1�}E-\�\�\�z��\�\�\�\r��\��\��r(\�\���A\�\� \�Lw\�jѺD�W�q���#���֙�-`\�}�Vۏngܑ\�\0A�GPG�D\�\�9�/\�0\�\�ŭ_H�\��3\�42+\Z\�l��޻���\�\��M�\�\\o�C\r.`\�&���\0\�\�N����\���Cy\�\�V5\�\�\�&�Hܛ��7���\�','anusha@codegnan.com','2024-08-12 10:56:28');
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
