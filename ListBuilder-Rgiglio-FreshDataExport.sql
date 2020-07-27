CREATE DATABASE  IF NOT EXISTS `listbuilderdb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `listbuilderdb`;
-- MySQL dump 10.16  Distrib 10.1.35-MariaDB, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: listbuilderdb
-- ------------------------------------------------------
-- Server version	10.1.35-MariaDB

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
-- Table structure for table `entry`
--

DROP TABLE IF EXISTS `entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entry` (
  `entryID` int(11) NOT NULL AUTO_INCREMENT,
  `entryName` varchar(50) CHARACTER SET utf8 NOT NULL,
  `cost` int(11) NOT NULL,
  `notes` text,
  `listID` int(11) NOT NULL,
  PRIMARY KEY (`entryID`),
  KEY `list_fk` (`listID`),
  CONSTRAINT `list_fk` FOREIGN KEY (`listID`) REFERENCES `lists` (`listID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entry`
--

LOCK TABLES `entry` WRITE;
/*!40000 ALTER TABLE `entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `avatarID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileName` varchar(255) CHARACTER SET utf8 NOT NULL,
  `type` varchar(50) CHARACTER SET utf8 NOT NULL,
  `data` longblob,
  PRIMARY KEY (`avatarID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'Elk_snow.gif','image/gif','GIF89aA\0I\0÷\0ÿÿÿ\0\0\0\n\n\n´´´666‰‰‰111ºººIII¿¿¿CCC¦¦¦888ôôô...ÆÆÆñññ¨¨¨\"\"\"***‘‘‘¢¢¢®®®ÎÎÎZZZ{{{sssúúú===WWWnnn$$$äääííífffËËËÀÀÀÙÙÙâââjjj”””^^^tttÜÜÜ}}}ëëë˜˜˜DDD×××ÒÒÒêêê†††ÑÑÑßßß———ÊÊÊÕÕÕpppûûû___xxx­­­ããã&&&wwwaaaššš(((ğğğªªª>>>GGGVVVYYYÍÍÍÂÂÂÚÚÚ~~~QQQiii‚‚‚eeeoooæææîîî|||:::¾¾¾MMMÇÇÇÔÔÔ²²²\\\\\\,,,kkkvvvöööƒƒƒFFFÁÁÁ\r\r\rLLLĞĞĞccc›››uuuŸŸŸHHHõõõ???ååå‹‹‹ØØØlll%%%ìììÅÅÅggg³³³---333   ¹¹¹ààà’’’°°°···»»»ïïï///èèè222¥¥¥ççç)))555@@@mmm###ÛÛÛ777TTTddd¤¤¤÷÷÷øøøÃÃÃééé<<<JJJPPPrrr„„„™™™qqq‡‡‡			“““µµµÈÈÈÓÓÓŞŞŞbbbAAA•••òòòSSS\Z\Z\Z444EEENNNyyyÉÉÉ999½½½hhh§§§ŒŒŒóóó\'\'\'+++OOORRRUUU………£££¯¯¯¸¸¸ÄÄÄ]]]   zzzKKKÏÏÏùùùBBBXXX¬¬¬±±±¶¶¶\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!ÿNETSCAPE2.0\0\0\0!şG44\0!ù	\n\0\0,\0\0\0\0A\0I\0\0ÿ€‚ƒ„…\0…ƒ\0‡ˆŒ‚‹‘’“”•–•—Ššœ›Ÿ£¤¥¦§’™ªˆ¬¨Š¬DCƒL¯¢˜Œ´‚®“¿Á—\0‹N«K†¤¡›ÃƒÉ‚_M«®Ğ£¡N‘Òƒc×·–ÅŠb‹bÓåF<ã¬\0¾ßKîç«ÈŠî^ğaiÆ/Ñ£%\nŠ\rp„O€|Y\"+Vä@C{ã\nèE\0»\0<q8 á¡bà³‚/)K’,x²£eÃbs÷Ğ—‘ P ¤ÃLœ	êqQ\0 A•2‹ğ@@IX1ĞS@‚Pqœô£)EC m6ãµ\rÿŒ»xdŒÔT¯ĞÅj‡U‡–Z>h›ñßÅ¾}µÌEpåÊ]L„cÅBLë£´}ìhÓÄÊ A³t—‰ğ$\'X¸zÍ\Z±ÑÂLGÂç±êÖ”hqW$VÆMšânY@’E)R@J”\0>\"[p–çpâ»›^r2j¤²×Ã¯®Œ/Ê0ÎÂ¬‹ÇªômÄî¶È¾†Œ¶øöâ(™o°˜íõ×	ğ…¨WÙ{\0f¥Ã„t‹	¶æ·øakZ!ÀE”Ršn­!šj·¹£@…ø]ØWŠ=!A	Ts©è‘d\\íF g+Šx]Š,UHm,VØ$Z¦•[`UÿeÅiwe,İÊCˆe×\rü\0D,OæxdP£Ñ%i’µá?SlÕ l\r<Y7’Ñe_¤áõà“½¸äJY}	‹gC>[6I8ôÎÖ‘9Î=ĞD%|	°E?<•ä›X˜¬dh•aèq%@òÀØ ;Š‰ê\"0ÅŒ†>_Œ™Vù”\0®ÒN¨”Ñ\\¶‚Rkâ\0\'*®ÒR%bÖŠîd)WÔÙ“%÷`dˆ;8pKKD‘¼*@u¢Ê«DÑÅ‘ĞTkU#RäC€)—VáÁ6‚Ï‰Œğ+E¬˜Ú©¬\0õºR¹‰DÀƒ;B :î\0Ì²şâ#±w’„áÎ2kR€1@+€>h‚^\"ˆZ±ñ H¸cD$ÁõKP}î€ò°\0BD²ó4jzACTü\"DC9m5²;	tö¡\'Ua¬‹IÌŠ hã’\"€LÀßfZw†daèI‰oÃn­|¶Á/çÒ«Ùo÷ºu^‘ÑXwÈ˜\0!ù	\n\0\n\0,\0\0\0A\0H\0\0ÿ€\n‚ƒ„…†ƒ\0\0‡‹\nŠŒ†’“‘–—˜ˆ™›œ‚‰Œ•Ÿ¤”¥§¨£‹p\0©±†ƒ«²¸‹«\0r›ºŸ‰£Á‚h\nÊ©¡–š…Éƒ$\nr…ŠÅÒ»ß¾\0#«#Ê¾‰%²»!ÇÛ÷ç\nå÷\ZåÀ+”A/eï) b[\" B,¬‡\n\0|](—l¢¯FÁJøšî/A2ˆ(ca‡Ç{V \Z9ñDIcßÒ%¼×ë‡8A=<~¸IªÒ„—zèA´â gÏà`!Ñº{ešFš¤µ€\0_Ş mà<LÇ$,dÃFá­Ÿ[ÿ-5P\0)[‰PÀh(è½¶m°½ËvçÂ5]­¼ğ_Á$3í­æ-ÅDÀƒ1†üøŞ´‰yŠ~L80ãÌïÅ™|jÃÑ‡d&íø.Í…\0<l8GÃeøHŒèlÎ¨!—N­ğ˜Ø{­$µ¶BÔ˜•ß•}]¹ÒÄ®@vNnº¶mÁÙÑ{\\-ê&‰Ëèg§7Ï¦wí÷6c\rêÛTü×VwÙa—\ZÄM‡Íc²m¦^}½0ö c‰pA,	r¶¦mqH¢Xòm6Û†ªFH‚+ş•^„ô}èmnPÊ(ö!&öÈ™\0h 0‹šq(c‘çÍZÿ€ÈIdy\n].Ç=Éœƒv\'€|)‚Bs÷œ}£	ğC.3Aö˜é\0Ç%b[3fñt^`ogÜŠzÆ¢(Zz¤\\°=t¦ˆÔ…×B6nu†/ŞãC8hyD€\"í`R ÀÒŞ#®¼™ ¸a’#R¢\\’ÀB¤P\n•¢ZÊ	ÍÒ‘\0­nzOµ–ÒÆ=&xsÜ	”‚¢6Qs£BÂ&Ô¨\\µthQG}4ŠB\r]â’\0{Ï)\0@À!pğ„‰¢Ò a.(¬p‡ø5˜‚pÏ;Ë~$É=ÙFŒ\0dr•TrO\n¼¬‰\n‹§/)ôš&¾á0[È‘÷H‡ˆnuĞ(?XIXi¬èğ=j”Å‰s{+@‘XÖğ ¿*Ç…ü*€LƒĞ*@ :¬ì!a	^Š‹½\\I¼—ïFBÆ=ô@è!ö\rÂ°Âpíd	Xah3$>(4¡*ƒ»b%`Àu_tçİìâ]·ŞhQÆwE9ã$]\\Eó7¸‡\0!ù	\n\0\0,\0\0\0\0A\0I\0\0ÿ\0\r\0 ° Áƒ&$x!CJœHq!€ˆ3jÜØĞ F ^I$F‡Kª\\ÉraË—SÂL¸ç¡“2Cæ4(Àa3Kè)pˆ€-‚z\\Éà¨ÀŒğqºèÆ!%PÁ\0Q¥‡^,ô±S±Š€ĞªÈ”\0~T›§çÅ	ú±«vZ‡–ªi°…‚¡v.UËBÇb‚|÷0úklA\0Aş @À®V(ç=\Zè/‹¿„Y¦Ä“‡Ğ	;(SfTèrOµ:şÖ´ì16€ĞtäĞ(µÀ ¢äq«h¡…;†kçï yyC<ØH¶\0@Š%(ÿşÛ‡ùKÅ\r¸(Ü»\0D]gZ•©ØHpávÈÍÈ<o\0}x\'İ€À)€vn%˜Œ\rè vàÇ×_ŠøgP‹=(\0r8„íYØE\0rŸ†(j\\mç%ô„)Æè`_Æ½Ò‹(cŠí	@ÁsĞQDeLĞ‡àÕØ\0tà¥–‡;Jç¡ˆP{”íÆ’\'Féåƒä1×‹_jeŠOúçPA{‘Yætg¢(@Ö8Ş›R§tkådœbè„y¢I)IØŸƒîÙ¡£h²PGkÚÙeŒ•É\"sŒ(”\0*chŠ(5¨¨h\nP‡`”\"tj¡îÿ(@–eˆª†`H\\*¡¢¨ß~>ùß¥T†VeX›H­8â«\0§¹gH\"àe€ ÔòÉbPŠå¶¡‡\\\Z(Btœ(ÀMòA$hG\\Uƒ\n@o@—\"ÒæFG{Üw\Z\\,!ï„,ĞÜ@b\råX‹…æˆ@‰¨…HU\01¡ˆyjp¶K¢¹å6È®\Zi5pÈ_±zD9nø‡RÀÑjĞT-»›“_ÂÙ.j\r‰ì2FİYù^Pİ	°Çe!\"À ) !jÁDÓ•1,P¯€dâ\"Èå¼ÒbBˆ$\0 uV“ĞÛ‘Ä¥Ø!ƒ”Èxp“´ØÄf×-‘]°-Pl»\n\0[Í¥iñKju¨Zl4œ@¹Ñ\0~RHÕõjÍ<µj•ÁñoGg.@Ù…-À¿úºVÕ¦\0t$çfn€ê<´tAÄD‘”9rîAÏ•‘(D†PÒwŸ(\0u0ˆ ÙÙnPÅ>kĞÛ€‰4ŞKjO‘#ƒÜá¼’9RFåUÄ±vôë®”ˆuÒ?ıÓï®üü vT+ÿ](!\0!ù	\n\0:\0,\0\0\0A\0H\0\0ÿ@ ,\ZÈ¤I\Z›Ë¨tJ@©ØlôjíZµàğğ{$‹ÃM³ò*LŸ§ì¢ú½ŒÓ…-hçÎŸ\n8EvuƒhpiCXs}KŠB:’ORQ‘E5:`…Z\0ˆ\0#q#’¨\0%™u!P²²«N©²\Z»L™¨®»Ì*¢V ÍŒ™f\0,\0©‘Ì¯Ñ:%Í²q¦pP\"\r5Áád¯æ\']}vªˆ»Ñ._ ä0÷!M:>ÔÌécæ!ÇÁZB.…[€ƒ+v5 âæÑÃ1˜c6€ÄFL¬ÄbÆb— ZÙ\0(0R\0‹–Í @áè¤ÿ,m¶Äi³¦¬¦>®‘³§SY7‹F…\Zîd™T‹6•Ê/ÕSY#è¤Ú´¥²­Á¾\nØĞS\n>\'H6Ä¨9ªÚºYeÅh°áÀ†\r^400C_•™+”MŠ·±Z£ı”.¹„ênVœgµİ|€ÉLÈ.~Ê¸1Õ¡œÈxX(^3Ë¥5Û½Lµí©ŠZ¥>F;µlV £l%=Üif\0œqN°pöi¢E»\r]€B¥ \"Ïı5*rn\\e0€]““9™Å3öÇû91cå8M=òtİyw…jä¥P{Í¨åEN ÁEh¼™ zâ©V†[mH1\\W¯ÑæÔS F\0¾1ÿÙSÁe¡Øl=ĞR.5€Um(À\08P\n#pğGôÃâYÕaÁ\0K-YsM‹Ü¤÷‘\rh	}1_‘\0€ƒH˜³Àƒo41—,0±‹\r\"¢u‚OUéğ€^·U&€dÊbBéH%3€@xÊ.(0%vâÈOˆR´Ğ\"È’ƒ:ŸDwR¡¼pÄ\r²¬`^ıñÁ 0í’B²$ ‡#f(€isâ\\!èD¨£ŠU8‡ª¡sY@€\'–oP \'»h¡B«Læ²\r»º¥L€ªª§k(ÃçaeöA¬3u«Ìˆ`ç!Ö\ZA‚,ôÓé#tkD•˜HQ`®\0{È @%ÁÊ€p`%ÁE¯B€{G\nºš+\n»,Y-¦QÚ«Ô\"´†)<ƒ«?Ê²‡±[ êmc¼µD\r!p@öò¢,–lrÈU(ËäÉ,«ÜòRÛ¾|Æ>Ñ\0!ù	\n\0\0,\0\0\0\0A\0H\0\0ÿ\0HP €‚LÈ°áÂ†#|(±¢A†-jÜ˜q£Ç CŠœ8²¤É“;:TxeJ\0Ÿb\" ¦B•,?â¬)à¡&Šk\nÅéRaO\0°¢Í¢K%ZPj0É€T.<ø%ˆ˜²\n 4@À×Š]Ñ:í	ÀRGKTô¼ @\0 üX7C]•2qà€m]\rë@-¸d’Ü¸#ğQ–ç§$’ah=	 Ç%\0èÖ+ù¨ÜsJ]<C†#\r,ÀUÄ’A¹#· *²+€L=U3I; HéDy¯\\šQSd@\rFö¨ò“LşòD2´fÒºTÿg};@¥ÜussŠ“¼ÃšT×MòğºNŒÈÀ¢ô$=Œç‘}õğWòYòEB`IèÉÇà‚ª%7ÒVuÔ5¡‚	28a‡‘µ˜MJöar}Xšö&1”¢‰†ñ·á_1x A(QÉ@Â]DÉĞ€`ç¡vî·ßn=8V%jè!KZI£|áİ&åRÁihc’bö„e‰NÈ“[…T˜„d*h¢Šgòg™}¼	uà•I‚¨¢“-‚´¥œ2–i#Ÿ\nr\"K¹ı9fğ\'ƒõqò	i‰Ìa©v†N\Z¦Œ7VŠÑ—Wš`’B–æ’äÿ(s	í™)h’*iki›\\(^¡eòÄá­Ú™¤Rj¢(æªÃŞhÕ€-™¬“p\nA{QNDà¥£šØ@¸5­\0ÃqÔD2È•x•ô)€y\\š«ág\\i÷E%òm€Vi¸€$‘Q™EJ6y“°ÕBYÅ¢[a¶ù>\0[A@p]±Jl]é]Ø²¦÷lD¤wé`PmP×Q}±CÅa\'I›}DG]fLôWñ+ÀÃ@\0\'¨ZtFÈ} áZLÏ–tE˜e%ÓÙQW\'>×ÕøåÌ%Öµ¬`³JÔUiP\0ÄV]@§rBN³[e‰0MyÍ·Qƒk;_|6Öù\0˜±¥âˆœĞ›AÔÉ_‚¯ûÌPİë5BB[\r¦\0o?6ÇuR.±õu›XkTÇ˜ÍªS|u5%±b¤t1ã&¥L6Dõu°¥‡[Ô1F‘H Àî\Z=¶\Zm•gGÛNqB¡¥½‹€;5=Jßã—óøDJ\0!ù	\n\0\0,\0\0\0\0A\0I\0\0ÿ\0H@`Á‚	*\\ÈaÃ‡#2@QâÄ->L¨±£Ç36ä’ É’1¦DÉ²¥Ë—aÊœIs!Ç\0	GÔÜ9P@ÂQ\'[\nÀ\'Fõ¨ä)q(E¤çĞ!0iÂ¡<b%\0ªC£+M.­Y”¢H“PËN `ÄŒg-rp\'!ÛlĞ©¨ÕgQ\Zò:i¶pXÔq4¯c\"‚\0åXÀ«ˆq?H¥Š€~#UfÛ—\0¤Ñ`/\ZÜ\ZC†#\r,¤B-@UÂ²£ç°†ùôoåHgíj7Í;¨ƒ°“7ƒ)ã%WŸìZÙ‰Y f›C‡¾ÑivÚ`ÿÍÌ4äS¶,|æ\rqRzy…\0ğÒşÎëÜ_\Z4å8}zÿğ_eá‘|6a–×€\0şç`ƒ>öF@è€:øàƒ¤m$S b(\"‡\n\0	y0éÑ\0x,˜€ºèX¤è‘zŒÒ@Àå7W|çµˆŞ…‰x£½2|CÆ\"iE]¢V–Ánã-%•-R$¥_Š8b^ºé\"‰C\nè_‰\\)@qcEw^Œ%VÖæ—¥äUoiÔ_‘GR¹ ‹ö–Fœ,ıÅ&„2Ê¨ŒX@V•Ú ¢n²uÁ¤º	¦†c‚é¦;¡§¦‘‰Zª¦ğd\'¥aZÿHd^—Å„bS¯Šù Œ0øßMm…¢$”ºÙÛœ¢YŠ~·†¨_¤­*hähM°2\n\r.¸I($ [eØX^®X4Âh’d®‚—JŠëª€Mè[äÊÅ\0¬B fˆn”én°E-\0\"8¬fÆ‰›\ZD°åFH¨Qa·¢åf«ğ\n\0‚Æl¡’ X$k%ìh’˜tÒ)y_^‡¢dÖ[£=àŞËû2$ƒÄ‡Éä›\Zy9e1Î.ÌìatAÿ5ALÃAïÒÌi°EJC3ä¥ÓCNpDÔóª2Ğâ,À•R»œ•¦çrtZÙJV¹Õ$\Zc7¯¼<¡‰!À\n½\r€çaÉÖ(Î$J\\­ä¥ÇSxÏ{o\r5—o¶‘h¬€í”lm­Ò_G„Kjâ	9	¶ÔØ<Rz2@XHM7¥ÙĞ\r>Æ½YUÓ)ÕGÔQ, ±úHi¨rÊ»Z¾üñÕFŸ¸ôÔÏt3õ«gœq°Õó9ıÑÛG¯y÷ßÛ>åå\0!ù	\n\0\0,\0\0\0\0A\0I\0\0ÿ\0H° Áƒ*D !A\0!.œxP\"ÅŠ\r-p¸‘ãÅ5~\\h1£I‘#=¤XåÊ—K²ŒøÒ%Ì*oêŒ9sçB\røZ‘ \0‹\rl\nàhD5Uzs\rT (uuiÊ„\r»\n85À©×‹a6$\0«`<[€(‹dÈ+@”)ˆ€6 /®Œg%îĞtÖS¾)•\rd h*tHµn(Q,\0\\üärŞÀ˜6Ë²³A4(eiµ€J%šŞ£°æšt›¶3—iR®CúµÚ%\0| I±ÎÑ—-e´•1:õºÉ]7ÿpÀvŞYdaJüóaÃÒy¡Cñ}îÍö\0œËºü¼uä’gÊÑU5$ß‚ñÙ¦\0`õ}5˜\0ÿQ¸`SÿùwY„¿M\0\rZHáˆ± !…Ï%ÈTBUÈàQ/ø_	9qx,˜g¢iş½8\"_Ü!K%È(	L!EñW|^˜!”!šY,L4…UØ_—?B–€shõ×#ƒ;ş¸£Œ!úHKgp¶¨¦`=Šc”a\n€%IT™t™aÉ7¡š¶	,p~Ô\"š_®iè”ò²FO$µÙè”af¨aZt¨Ó„>Şi!£$VNLQ)jšr¦8\"«xÿªSƒi:ú\'£¬Ffài`Ú‰)®y¥G× kjˆ\'«1æÅĞP%Xéã—¯†Ùg– j¨Ím6­R²„9‹n¡@Êˆaå¦;µgÔ†åBˆ—ˆ!NVM_VA\\AºDÕ¦a§,U¹!OKA\"uƒrgZ–Uùv°ÑÀgM\'íGfğØit‘²ğH|½_Î©´ŞB|ÕÆ1IO}ÛUjyY‚‘Éëá—ÜB§ğ…ÄCyYp¯[\'U”×(e	àxé§lA{\0\nË*ÔÀi PÆ|!\0ŞÊTÇ)ÀÌİBq`l’WÁñ×ì‚ÑµeÚ›‘ŒP,DŒqAbƒ†B‘)yA‘Ğ^>,dêP^ümQ´äuÄDN¿\\ŞKuÇÂBÍ\n`‡Mƒ	~Ÿ¬[64ÊU( @^w(Ä—ªÆ±d3ó_RP\r÷ÓyçF£Æ0Ï8‘-àXòÚ~:×ñÑ3D=ÆŸ]=à”nï¡¬`]}öÚFX³÷ñÛš\0!ù	\n\0\0,\0\0\0\0A\0I\0\0ÿ\0H° Áƒ*,`¡Ã‡#JœHQ\"€†1FÔh#Å‹	^¬(p$É„ š¬¸bÈ\"KœÉòåÂX\Z#)´ÉP\0OŸ [:d£ñÒO‡)‘•Y’hSŸ-N.õÉ\"&6OPÀ+Mª>ñ*€M¯²S¿v$\n€RHJ^½À†M\0µ`”Ë&C]6—Ü•{‘è°¿Äğ\"la†oS¢ëB+¨Èlt)f 0\0è^¼ŠÙ©\\<J;­š1\"†¿\ZX\0¤šM’³MùFn¡1)B¡Hk@.\rKh¨ÒBrT¶ Õ/u³	ª¹b¥‘€¼´îë›^ÿğ v]~Â«|’´jPàÅ³f¹Ë¼j3A‚\0ßi]hÒÒÙ÷×~`E`GËaV˜€µù¦R|%€Š‚2Ù{Å‘…FFÆ3‘qƒÖUb]h3ÌÃ\0\0Ì/@OG]ô‡[Ğ-Ø!ƒ @X/Ğ™¸£…ÁøøØHFÖ\"L%é$N_ää<YUƒÒh!(O´Æ^‰:Nù(’˜$Bâ¥KhbY/áÁ‚f…Z0ßLmÚ×ƒ3–§‚ò)ÀŸ‘¡ñ›ZZ:i§z\ršä/0<af˜”‰”JæÉ•œ¾Ø‡¥(EG¢™±`¶è¥tIi2P˜!¦ÿŠ×„‘¡r¤¡âCi‰á%\Z½ıõ©†¬UK $™‰°ı¥›˜ıW$@Úu³ø×=ÕdâAIÔå‹D“6¢•g²AÉA\'ÔEE“&òİR]†ÄAfeÆ¡ÍÖåS]A<HcH@²pp¦-õ]\n`Òş¶p~|ÛïKıñ-\0¥®Æ$S4²a¬iñÕ€xuaàÒOrQĞRCóû¯º(³Å²	•»UA1ï4 AFjB´\0ÊÅP×±a@Ôe0ìtgº— ÑÏéÖÕ\0º¨±Õ@Hü…”»dÀÊ†0x±1LÍçÌÆÎ¿MZµE.‘u\\ÏÙ8ñI6é¸Ô_°·T5¸œÀ(ÇhX šù¸Ì`‰Äõä˜£”ùæ_NÓ«œŞ½ai>Ÿ¡\0!ù	\n\0\0,\0\0\0\0A\0G\0\0ÿ\0H°à@\0\Z\\È°¡Ã‡H„H±b\0…bÌÈ±£Ç n¤82¤Æ’&¢´8ñâÂ–aV\\I¦L‡Ç0\"»HäM0.³²çÌ ¸XÅ¤ÑŒ£-ØM\0Sc’LXĞC©P\n €ÃG‰\n{Ş@ª’©¦²ğD€€9g!¢EV@»˜eBˆPY[»4\0Ké°D»	K0ƒìãAË‚nÊø%\0VKD6Ù.áÃ¥ŸúÄÓFD±h”R\0•é jÀ9µÎÌ¤¹´›xJWQİTi¤Ù†ò9bÍäÄ\rB*=x´D€‹©ıY3úK\0.ÿ7=`¬ŞÎÑÖµke2(ïyEŠ\ZÏ~ò´+W¸£_xp{ÿXÑ€ôIßYõ±§\\iÿ(Ù\\û%„\0Ô8˜à€õ58 €¥’\\QiMÖDÿ•`ƒ	îõWY´\Z“= †Z¨ r\"@±(ìÁŒ!qàA\0ˆ2X‚&éŠÇí…Vn&aÅ!†\"†f\"•\0(£]PŒäİ‚õ±šHjÈ¤˜bÚµÇZÒh#‡ÒÈá%Á‡–iNI&•2iW l.”%–\'*) îT”mu^8f¤ì™H)4û)× ŒtZ:c¢€\r@ÃV*]´h[(2šêœ¦RjFÓ©ÿª¨ƒWfi—$*Áwj•f¹à€qG`²jæ®%†a„%£©¢©2yæs™.)(}™¨Kwi1†ä·’AñÛi“A¢QµôµÅ—A($8*c(Ùc1¦ÙAQ31æú‘qo…dÎA\n˜4úºİK’Õ!¼ÿñôa›‚¸o€	ŠÃé•Æl\0Ït(p1ç¶8Ğ|£ËVAÇØeÕQf*£—v]lQ¾!#8[rv™5sËûõki,©	ô£\n»Ğ%\0ÔÆ²rxˆ_pÈÔ†\0M¯Xoh(7Ó,TÊ\rÉ{Æ_	°eg§Ç5¤4m À.d7t„\0‚YzÄ‰—ÕBí–ıadH¹µÕz©éœC?5BòÕÆ”šòb]³]ÑÜHIó`3ÃÂ\\–CsÜ­RË\0À¨nå„Õ]\"Ù5EÌØ5ÇFĞ˜E®*\n„`æ-4Ÿ\0J;¤‹Ï59#:Ş5ÑÀ43äæàÛ¥ÃÚjL’DG £°J»Ğ°›O­¤_G…nl>³åY¾ËÛzõîÇA\0!ù	\n\0\0,\0\0\0\0A\0I\0\0ÿ\0H° Áƒ\0@¡Ã‡B„Èp¢Å‹JÌ‘£ÇnI2áÈ\0\'\r¦,É²åÅŠ(IòÚXáÊ…\naÚ¼iPÀÆj\"]Rä¹ĞgD(WÕXRRîÀ\"BhÄ¥1nt*Ñ¨Q)±ğTëÓ±\0Œ	€¥äR\0£6®­²V@¶Š\rÑ@¦î6XØÈ2VÊÑºˆZc(@!ÄÖy@¡V\0¬!»r^¤¼¯\rlÒ! Åu†¼`#ZÈd‘¬6Êz‘­«d¶Ê—\"Î\ZÒY ¾[\n¯ÛK$‘u¾t)‘!¤°H¾“¤È\'Ù3/ÿ¦è·E\0¤²°b6mÛÌ\'åÒ$âökÙßW/€°V«‡­—~¶G uÑ÷uè~6h`{{)8Qƒ9( „°8“…ZUgA1ê¨„¦XW1ÇX\0\0|ŒÂâm®åtCºw\"†ê—cªˆWñ¡ûe¶‚K\"(İG¡ˆ \Z®¡•®%›wIú4àƒ)$\0æ\'@o8eİ}HbØæ—ì	‡ß–ÿq4ZXò(à‘Á1„ŸYP”yš‰bƒËÕ…Œwu¨™d^‰\"™^úH€P«MÈá—{\Zª¢\0#7é¦Šm¶)Gr!êh˜›rÿš\"‘6uhä¡enH ¨‘êé£UÚÊP5C±j¦¬ü\r€Ì}\rÀkFº©ˆÍİaC|Õe§TKÖèºÖ1ó­*Ä~7Ô‡©zML´$bm•…ÑMëV“ ië&H\\K©$–Şpå›b6İİ;QhkÍ€R]¼ØtP?\nPEÀ´ïW£¬eØª‰€˜1\0pÃZÎ\näïWê¾J«J{q oËl¿Ù{^buvğZa±/Ñ¬C¬ÕVQXƒ ŞÀ10‡ÔôC?ÍR{T¶VÂ1-õUÍLrAÙà\\³AàifQòUX+ÆQ+@5#Ğ\'ß²VØ—¶J¬•Ö³\0×ØqÇ‡E×@6ÊÙÉòôF#08E£í¥K×iª»Öâiüu­”{°Ñær¤‹Ìxo]bp­«İ´CçTW¨!±­7JÅBge²_e^`ÕuL]ìÀ)\\pc7ê{±Ç»œ•òÈ\'^yÌƒ•ûìÇR@\0!ù	\n\0\0,\0\0\0\0A\0I\0\0ÿ\0H° €‚DÈPàÂ†#JœH±¢ÅŠ/6T¨±£Gˆ7~I²¤É“3P‰%J\nY&zØá¥HŒÂåDŸ^ `¡+©$r£Ğ\n¬bh¥Ë§#CRŠu €\ZVmZ$ªpÄÂ‡H¤)*A€€-bY\0õĞm·4!9xğ¨B·\Zğ\"`º’`Ó*ˆJUŒ¯ E‰‚\0ÕX€Ò¸1(zA\'€R•İòEZ\"tQ±1TéVÌB\r¼Œ€B’°he\03K>66^MöMëÏàKP}µ±*Æ#>Œ^!´Y\0C,(\\+::ê„\0lÿz\0%ä)_ÙÖ-·÷x{~ê»1|Û‚£wğ1ğ7H iIğ_X7µYF(á€e´ E\0¤ Qv!^#u¡D•È\r‡JÈ˜1¡¶A7¡¥è¡i¬mpÀ[h¢E1ráz˜eŸŒRˆ`e-ğ%PÕ¹GäŒ°™xŸ[ÅÕxN>ià_ˆâx±˜\0Gá¥%\nM¡‘nm0¢A¹WT‘I¡,oæ”e„Ú)¡\0İX`Xa0íé§Œ€Ùôå¡ˆjQ‚n†-ªâ“\Z)¢iÎøäƒ`\nâOc9Yàš›˜¦hßÅ–)¢FÆy`-ÿtl_’j¢{dyÙØ|‰jä­£É&¯+q÷á‘n5iæ_Xå©|ğõäD#@àJ·µS¬à‚iˆüd&|°€úQ}°ı4Ş}°ÊPl‡AET¬)@¸îªW!\"xù‚Qh\Z^™o¨x\0D…â…Q‰Éå\\‘µ€mºï‚[C€&\0t©âµm\0x%\"®h‚¸Åq\\Œ…pD.t§˜1ínäÖ¥…jD´B&€˜	¡t°\0=ô­\0›D4ÜÍjf^@@Ä¯\0‚\n”ôNd•\\Š¸µTÊ™âVMµ¬IĞ\'µX\0ÓPnÁ1;Ä¶!¤‡“@°™D7xĞkh1[UÃIÒD-³\0>ºË˜,•ùwKV\nµ™O\nu}óBS?*PT²ÁáÛböÓ\"P™\'£”kq5ÍRgYâÖz|óÀµ9]P5qú=¨…ÿì–ùBDõşŞ jÿôéFHTC9¤C¥M,Ê@Åì½Có	ü½tNu/;ùç§mœøAud*ü†OP@\0!ù\n\0\0,\0\0\0A\0H\0\0ÿ\0H° Á\0\0\\@!Ã‡\r:”81¢Å‹fÜÈ±£G	VüH’bÉ“(;\\ÈÃ!\0)c\Z0±ÏJ™7®@¤€†<6æü˜pä¤Ÿ¯y\0NÎ¡\'®4†4@ÏB}R¤VšE\rAÊ€¸„˜dê´R€\0]nÜù5¡[`‘¨-èO>İZÑWY\0v¯]Šë–Ê›\0|Ü0al8:81ş\Z\0MVânµ¸S`„¼I Á˜1©Ÿ1Ç%3Ú#]?45cF,\0\\×™Z\0Q›(Á4ëX5ª‰¸ß2?9QœpEKe:D©Úÿ(¦[¸\0Ê{ş&ÜnZ8i!|),ÆÚÅ|k=Àòåñ¹•ë¥gPp ı§à‚\0”Ç˜_FåÖ‚*8ß\nŞP]ñ^… R¨ÛtF$ |ş…¨ân%S\"JV\\ˆ­H¡\0$\\$“L—|#ŞeU”]ÚX!\'Û™çÖ5ŞIåI*Y¡&\\¸ wEºÔV†Iá]Æ˜b2Xc…@éWZÙ%fBb\n\0I‘F4ár)†Hg˜çÓ™ij…\rUe¡ IV%ñ¤…–ÿõÉ¨¡iA{‚hiÍÅÔé¥†&ÎE$òDj…ZPŸZM\nÿ@)©nè²ş¹ ƒ›­éŸ\0ˆâ$!X˜šgH`×…\nL„ åğ\0±Y OLZk\'´¦MkD\\Èöç‹ ¥ä!‹$Dh\0(“[{¤}t.sšBD¥\0„|	š†ßA5Ô¼„•´\Z°a¡„ç@(ìÖ*5¬™K\nC„¸qb…f†DÔ…¬Íñš^¶‚ZÂYQne’ÒN`Éˆ2BŒ=š•[é¦‡$\0É¸E²D›-@Z%ÓÄ“\n\0TÀÅH\'=#¿İ;sBÖYuD*ë{Ã°øñkVälCîöA3\0Ü,€ \\¹u…¬ãöÏáV%’[ÁrŠupot”Ó4µ:³‘@ürWG·Í©hPP½nÔê„çDÅ\"´\0(È“VR?m9œeâ[šS\0„óİÉ[—€Ÿ]âÕ\\å`8µ¶ÕhŒ 0I\0€ƒÄ!E­6ü¬QTÙGD²çwxĞnÍíõÛ÷|÷Ô‘i”ñ?:øÆ¡?P@\0;');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lists`
--

DROP TABLE IF EXISTS `lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lists` (
  `listID` int(11) NOT NULL AUTO_INCREMENT,
  `listName` varchar(100) CHARACTER SET utf8 NOT NULL,
  `userID` int(10) unsigned NOT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`listID`),
  KEY `user_fk` (`userID`),
  CONSTRAINT `user_fk` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lists`
--

LOCK TABLES `lists` WRITE;
/*!40000 ALTER TABLE `lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `userID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userName` varchar(30) CHARACTER SET utf8 NOT NULL,
  `pass` char(60) NOT NULL,
  `hash` char(60) NOT NULL,
  `avatarID` int(10) unsigned DEFAULT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`userID`),
  KEY `avatar_fk` (`avatarID`),
  CONSTRAINT `avatar_fk` FOREIGN KEY (`avatarID`) REFERENCES `images` (`avatarID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-09 19:16:58
