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
INSERT INTO `images` VALUES (1,'Elk_snow.gif','image/gif','GIF89aA\0I\0�\0������\0\0\0\n\n\n���666���111���III���CCC���888���...�����񨨨\"\"\"***������������ZZZ{{{sss������===WWWnnn$$$�����큁�fff������������jjj���^^^ttt���}}}��똘�DDD��������ꆆ������ߗ��������ppp���___xxx������&&&wwwaaa���(((��𪪪>>>GGG���VVVYYY���������~~~QQQiii���eeeooo���������|||:::���MMM�����Բ��\\\\\\,,,kkkvvv������FFF���\r\r\rLLL���ccc���uuu���HHH���???��勋����lll%%%������ggg���---333������������������������///���222������)))555@@@mmm###���777TTTddd���������������<<<JJJPPPrrr������qqq���			���������������bbbAAA������SSS\Z\Z\Z444EEENNNyyy���999���hhh���������\'\'\'+++OOORRRUUU���������������]]]   zzzKKK������BBBXXX���������\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!�NETSCAPE2.0\0\0\0!�G44\0!�	\n\0\0,\0\0\0\0A\0I\0\0������\0��\0���������������������������������������DC�L������������\0�N�K����Ãɂ_M��У�N�҃c׷�Ŋb��b��F<�\0��K��Ȋ�^�ai�/ѣ%\n�\rp�O�|Y\"+V�@C{�\n�E\0�\0<q8��bೂ/)K�,x��e�bs�����P��ÞL�	�qQ\0�A�2��@@IX�1�S@�Pq���)EC�m6�\r���xd��T���j�U��Z>h���ž}��Ep��]L�c�BL����}�h��ʠA�t���$\'X�z�\Z���LG����֔hqW$V�M��n�Y@�E)R@J�\0>\"[p��p⻛^r2j���ï��/�0�¬�Ǫ�m��Ⱦ������(�o�����	���W�{\0f���t��	����akZ!�E�R�n�!�j���@��]�W�=!A	Ts��d\\�F�g+�x]�,UHm,V�$Z��[`U�e�iwe,��C�eא\r�\0D,O�xdP��%i���?Slՠl\r<Y7��e_��������JY}	�gC>[6I8��֑9�=�D%|	�E?<��X��dh�a�q%@��ؠ;���\"0Ō�>_��V��\0��N����\\��Rk�\0\'*��R%b���d��)W�ٓ%�`d�;8pKKD����*@u�ʫD�ő�TkU#R�C�)�V��6�ω��+E��ک�\0��R��D��;B�:�\0́���#�w����2kR�1@+�>h�^\"�Z�� H�cD$��KP}��\0BD��4jzACT�\"DC9m5�;	t��\'Ua��I�̊��h�\"�L��fZw�da�I�o�n�|��/�ҫ�o��u^��XwȘ\0!�	\n\0\n\0,\0\0\0A\0H\0\0��\n������\0\0��\n�������������������������������p�\0���������\0�r��������h\nʩ����Ƀ$\nr��Őһ߾\0#�#���%��!����\n��\Z��+�A/e�)�b[\" B,��\n\0|](�l��F�J���/A2�(ca��{V \Z9�DIc��%���8A=<~�I�҄�z�A��g��`!Ѻ{e�F����\0_��m�<L�$,d�F᭟[�-5P\0)[��P�h(轶m���v��5]����_�$3��-�D��1������y�~L80�́�ř|j�чd&��.ͅ\0<l8G�e�H��lΨ!�N���{�$��BԘ�ߕ}]��Į@vNn��m���{\\-�&���g�7Ϧw��6c\r��T�םVw�a�\Z�M��c�m�^}�0��c��pA,	r����mqH�X��m6ۆ�FH�+��^��}�mnP�(��!�&�ș\0h�0���q(c���Z���Idy\n].�=ɜ�v\'�|)�Bs���}�	�C.3A����\0�%b[3f�t^`og܊zƢ(Zz��\\�=t���ԅ�B6nu�/��C8hyD�\"�`R����#��� �a�#R�\\��B�P\n��Z�	�ґ\0�nz�O����=&xs�	����6Qs�B�&Ԩ\\�thQG}4�B\r]�\0{�)\0@�!p����Ҡa.(��p���5��p�;�~$�=�F�\0dr��TrO\n���\n��/)��&��0[ȑ�H���nu�(?XIXi���=j�ŉs{+@�X�� �*ǅ�*�L��*@�:��!a	�^����\\I���FB�=�@�!�\r°�p�d	Xah3$>(4�*��b%`�u_t����]��hQ�wE9�$]\\E��7��\0!�	\n\0\0,\0\0\0\0A\0I\0\0�\0\r\0 ����&$x�!C�J�Hq!��3j��� F� ^I$F�K�\\�ra˗S�L���2C�4(�a��3K�)p���-�z\\�����q���!%P�\0Q��^,���S���ЪȔ\0~T����	���v�Z���i����v.U�B�b�|�0�klA\0A� @��V(�=\Z�/���Y�ē��	;(SfT�rO�:�ִ�16��t��(�� ��q�h��;�k�� yyC<�H�\0@�%(��ۇ�K�\r�(ܻ\0D]gZ���Hp�v���<o\0}x\'݀�)�vn%��\r�v���_��gP�=(\0r8��Y�E\0r��(j\\m�%��)��`_ƽ��(c��	@�s�QDeLЇ���\0tॖ�;J��P�{��ƒ\'F���1׋_je�O��PA{�Y�tg�(@�8ޛR�tk�d�b���y�I)I؟��١�h�PGk��e���\"s�(�\0*ch�(5��h\nP�`�\"tj����(@�e���`H\\*�����~>�ߥT�Ve�X�H�8�\0��gH\"�e� ���bP�嶡�\\\Z(Bt�(�M�A$hG\\U�\n@o�@�\"��FG{�w\Z\\,!�,��@b\r�X���@���HU\0�1��yjp�K����6Ȯ\Zi5p�_�zD9n��R��j�T-���_��.j\r��2F�Y�^P�	��e!\"� )�!j�D�ӕ1,P���d�\"���bB�$\0 uV��ۑĥ�!���xp����f�-�]���-Pl�\n\0[ͥi�Kju��Zl4�@��\0~RH���j�<�j���oGg.@��-����Vզ\0t$�fn��<�tA�D��9r�Aϕ�(D�P�w�(\0u0� ��nP�>k��ۀ�4�KjO�#��ἒ9RF�Uıv�뮔�u�?�������vT+�](!\0!�	\n\0:\0,\0\0\0A\0H\0\0�@� ,\Z�ȤI\Z�˨tJ@��l�j�Z����{$��M��*L������Ӆ-h�Ο\n8Evu�hpiCXs}K�B:��ORQ�E5:`�Z\0�\0#q#��\0%�u!P���N��\Z�L�����*�V ͌�f\0,\0��̯�:%Ͳq�pP\"\r5��d��\']}v����._��0�!M:>���c�!��ZB.�[��+v5 ����1�c6��FL��b�b��Z�\0(0R\0����@���,m��i����>����SY7�F�\Z�d�T�6��/�SY#�ڴ�����\n��S\n>\'H6Ĩ9�ںYe�h����\r^400C_��+�M����Z���.���nV�g��|��L�.~ʸ1ա��xX(^3˥5۽L��Z�>F;�lV��l%=�if\0�qN�p��i�E��\r]�B��\"��5*rn\\e0�]��9��3���91c��8M=�t�yw�j�P{ͨ�EN��Eh���z�V�[mH1\\W����S�F\0�1��S�e��l�=�R.�5�Um(�\08P\n#p�G����Y�a�\0K-YsM�ܤ��\rh	}1_�\0��H����o41�,0��\r\"�u�OU���^�U&�d�bB�H%3�@x�.(0%v��O�R�Џ\"Ȓ�:�DwR��p�\r��`^����0�B�$ �#f(�is�\\!�D���U8���sY@�\'�oP \'�h�B�L�\r���L����k(��ae�A�3u�̈`�!�\ZA�,����#tkD��HQ`�\0{� @%���p`%�E�B�{G\n��+\n�,Y-�Qګ�\"��)<��?ʲ��[��mc��D\r!p@����,�lr�U(���,���R۾|�>�\0!�	\n\0\0,\0\0\0\0A\0H\0\0�\0HP ��LȰ�#|(��A�-jܘq�Ǐ C��8��ɓ;:TxeJ\0�b\"��B�,?�)�&�k\n��RaO�\0��͢K%ZPj0ɀT.<�%���\n�4@�׊]�:�	�RGKT�� @\0� �X7C]�2q��m]\r�@-�d�ܸ#�Q��$�ah=	��%\0��+���sJ]<C�#\r,�U�ĒA��#� *�+�L=U3I; H�Dy�\\�QSd�@\rF���L��D2�fҺT�g};@��uss����ÚT�M��N�����$=��}��W�Y�EB`I������%7�Vu�5��	28a����MJ�ar}X��&�1������_1x�A(Q�@�]D�Ѐ`�v��n=8V%j�!KZI�|��&�R�ihc�b��e�Nȓ[�T��d*h��g�g�}�	u��I����-����2�i#�\nr\"�K��9f��\'���q�	i���a�v�N\Z��7V�їW�`�B��捒��(s	�)h�*iki�\\(^�e���ڙ�Rj�(���hՀ-���p\n�A{QNDॣ��@�5�\0�qԝD2ȕx��)�y\\���g\\i�E%�m�Vi��$�Q�EJ6y���BYŢ[a��>\0[A@p]�Jl]�]����lD�w�`PmP�Q}�C�a\'I�}DG]fL�W�+��@\0\'�ZtF�}��ZLϖtE�e%��QW\'>�����%ֵ�`�J�UiP\0ĐV]@��rBN�[e�0My�ͷQ�k;_|�6��\0���➈�ЛA��_����P��5BB[\r�\0o?6�uR.��u�XkTǘͪS|u5%�b�t1�&�L6D�u���[�1F�H���\Z=�\Zm�gG�NqB�����;5=J����DJ\0!�	\n\0\0,\0\0\0\0A\0I\0\0�\0H@`��	*\\�aÇ#2@Q�ā->L���Ǐ36�� ɒ1�Dɲ�˗aʜIs!�\0	G��9P@�Q\'[\n�\'F���)q(E���!0i¡<b%\0�C�+M.�Y��H�P�N `Čg-rp\'!�lЩ��gQ\Z�:i�pX���q4�c�\"��\0�X���q?H���~#Ufۗ\0��`/\Z�\ZC�#\r,�B-@U²�簆��o�Hg��j7�;����7�)�%W��ZىY f�C���iv�`���4�S�,|�\rqRzy�\0�������_\Z4�8}z��_e�|6a�׀\0��`�>�F@��:����m$S b(\"�\n\0	y0��\0x,�����X�葁z��@��7W|絈ޅ�x��2|C��\"iE]��V��n�-%�-R$��_�8b^��\"�C\n�_�\\)@qcEw^�%V�旞��Uoi�_�GR�����F�,��&��2ʨ�X@V��ڠ�n�u���	��c��;������Z���d\'�aZ�Hd^�ńbS��� �0���Mm��$���ۜ�Y�~����_��*h�hM�2\n\r.�I($ [e�X^�X4�h�d���J�몀M�[���\0�B�f�n��n�E-\0\"8�fƉ�\ZD��FH�Qa���f��\n\0��l���X$k%�h��t�)y�_^��d�[�=����2$�ć��\Zy9e1�.��atA�5AL�A���i�EJC3��CNpD��2��,��R�����rtZ�JV��$\Zc7��<��!�\n�\r��a��(�$J\\���Sx�{o\r5�o��h���lm��_G�Kj�	9	���<Rz2@XHM7���\r>ƽYU�)��G�Q,���Hi�rʻZ�����F�����t3��g�q���9���G�y���>��\0!�	\n\0\0,\0\0\0\0A\0I\0\0�\0H����*D�!A\0!.�xP\"Ŋ\r-p���ō5~\\h1�I�#=��X�ʗK����%̎*o�9s�B\r�Z��\0�\rl\n�hD5Uzs\rT� (uuiʄ\r�\n85��׋a�6$\0�`�<[�(�d�+@�)���6��/��g%��t�S��)�\rd h*tH�n(Q,\0\\��r���6˲�A�4(ei��J%��ޣ��t���3�iR�C���%\0| I���ї-e��1:���]7�p�v�YdaJ���a��y�C�}���\0�����u�g��U�5$߂�٦\0`�}5�\0�Q�`S��wY��M\0\rZH���!��%�TB�U��Q/��_	9qx�,�g�i��8\"_�!K%�(	L��!E�W|^�!�!�Y,L4��U��_�?B��sh��#�;����!�HKgp���`=�c�a\n�%IT�t�a�7���	�,p~�\"�_�i��FO$���af�aZt�ӄ>�i!�$VNLQ)j�r�8\"�x��S�i:�\'��Ff�i`ډ)�y�Gנkj�\'�1���P%X�㗯��g��j��m6�R��9�n�@��a�;�gԆ�B���!N�VM_VA\\A��Dզa�,U�!OKA\"u�rgZ�U�v���gM\'�Gf��it���H|�_Ω��B|��1IO}�UjyY�������B����CyYp�[\'U��(e	�x�lA{\0\n�*��i P�|!\0��T�)���B�q`�l�W���쁐�ѵeڛ��P,D�qAb��B�)yA��^>,d�P^�mQ��u�DN�\\�Ku��B�\n`�M�	~��[64�U(�@^w(ė�Ʊd3�_RP\r��y�F��0�8�-�X��~:���3D=Ɵ]=��n`]�}��FX���ۚ�\0!�	\n\0\0,\0\0\0\0A\0I\0\0�\0H����*,`�Ç#J�HQ\"��1F�h�#ŋ	^�(p$Ʉ ���bȎ\"K������X\Z#)��P\0O� [:d���O�)��Y�hS�-N.��\"&6OP�+M�>�*�M��S�v$\n�RHJ^���M\0�`��&C]6���{�谿��\"la�oS��B+��lt)f 0\0�^��٩\\<J;��1\"��\ZX\0��M��M�Fn�1)B�Hk@.\rKh��BrT�� �/u�	��b�������^��v]~«|��jP�ųf�˼j3A�\0�i]h������~`E`G�aV�����R|%���2ف{���FFƁ3�q��Ub]h3��\0\0�/@OG]�[�-�!� @X/Й������ؐHF�\"L%�$N_���<YU�ҝh!(O��^�:N��(��$B�KhbY/���f�Z0�Lm�א�3����)�����ZZ:i�z\r��/0<af����J�ɕ���؇�(EG���`��tIi2P�!����ׄ��r���Ci��%\Z������UK�$���������W$@�u�����=�d�AI��D�6��g�A�A\'�EE�&��R]��Afeơ���S]A<HcH@�p�p�-�]\n`���p~|��K��-\0���$S4�a�i�Հxua��OrQ�RC����(�Ų�	��UA1�4 AFjB�\0���Pױa@�e0�tg�� ������\0����@H����d�ʆ0x�1L����οMZ�E.�u\\��8�I6��_���T5���(�hX ����`���䘣���_Nӫ���ai>��\0!�	\n\0\0,\0\0\0\0A\0G\0\0�\0H��@\0\Z\\Ȱ�ÇH�H�b\0�b�ȱ�Ǐ n�82�ƒ&��8��aV\\I��L��0\"�H�M�0.���̠�XŤь�-�M\0Sc�LXЁC�P\n ��G�\n{�@������D��9g!�EV@��eB�PY[�4\0K鰍D�	K0���A˂n��%\0VKD6�.�å����FD�h�R\0�� j�9��̤����xJWQ�Ti����9b���\rB*=x�D����Y3�K\0�.�7=`����ֵke2(�yE�\Z�~�+W��_xp{�Xў��I�Y���\\i�(�\\�%�\0�8����58 ����\\QiM֞D��`�	��WY�\Z�=��Z��r\"@��(���!q�A\0�2X�&����Vn&a�!�\"�f\"�\0(�]P��݂����HjȤ�bڵǐZ�h#����%���iNI&�2iW l.�%�\'*)��T�mu^8f��H)4�)נ�tZ:c��\r@�V*]�h[(2�ꜦRjFө����Wfi�$*�wj��f����qG`�j�%�a�%����2y�s�.)(}��Kwi1�䷒A��i�A�Q���ŗA($8*c(�c1��AQ31���qo�d�A\n�4���K��!������a���o�	����l\0�t(p1�8�|��VA��e�Qf*��v]lQ�!#8[rv�5s���k�i,�	���\n��%\0�Ʋrx�_p�Ԇ\0M�Xoh(7��,�T��\r�{�_	��eg��5�4m �.d7t�\0��Yzĉ��B��adH���z��C?5B������b]�]��HI�`3��\\�CsܭR�\0��n���]\"�5E��5�FИE�*\n�`�-4�\0J;���59#:�5��43���ۥ��jL�DG ��J�а�O��_G�nl>��Y��۝�z���A\0!�	\n\0\0,\0\0\0\0A\0I\0\0�\0H����\0@�ÇB��p�ŋJ���ǏnI2��\0\'\r�,ɲ�Ŋ(I��X�ʅ\naڼiP��j\"]R��gD(W�XRR����\"Bhĥ1nt*ѨQ�)��T�ӱ\0�	���R\0�6���V@��\rю@��6�X��2V�Ѻ�Zc(@!��y@�V\0�!�r^���\rl�!�Őu��`#Z�d���6�z���d�ʗ\"��\Z�Y��[\n��K$�u��t)�!��H����\'�3/����E\0���b6�m��\'��$��k��W/��V����~�G �u��u�~6h`{{)8Q��9(���8��ZUgA1����XW1�X\0\0|���m��tC�w\"��c��W����e��K\"(�G�����\Z����%�wI�4��)�$\0�\'@o8e�}Hb���	�ߖ�q4Z�X�(���1��YP��y��b��Յ�w�u��d^�\"�^�H�P�M��{\Z��\0#�7�馊m�)Gr!�h��r��\"�6uh�enH�����U��P5C�j���\r��}\r�kF������aC|�e�TK���1�*�~7ԇ�zML�$bm���M�V� i�&H\\K�$��p�b6��;Qhk̀R]��tP?\nPE���W��eت���1\0p�Z�\n��W�J�J{q�o˝l��{^buv�Za�/ѬC��VQX�� ��10���C?�R{�T�V�1-�U�LrA��\\�A�ifQ�UX+�Q+@5#�\'߲Vؗ�J��ֳ\0��qǇE�@6�����F#08E��K�i����i�u��{���r���xo]b�p����C�TW�!��7JŐBge�_e^`�uL]��)\\pc7�{�ǻ����\'^ỹ����R@\0!�	\n\0\0,\0\0\0\0A\0I\0\0�\0H� ��D�P�#J�H��Ŋ/6T���G�7~I��ɓ3P��%J�\nY&z��H���D��^ `�+�$r�Ё�\n�bh�˧#CR�u��\ZVmZ$�p�H�)*A��-bY\0��m�4!9x�B�\Z�\"`��`�*�JU���E��\0�X�Ҹ1(zA\'�R���EZ\"tQ�1T�V�B\r���B��he\03K>�66^M�M���KP}��*�#>�^!�Y\0C,(\\+::�\0l�z\0%�)_����-��x{~�1|���w�1�7H�i�I�_X7�Y�F(ဍe� E\0��Qv!^#u�D��\r�JȘ1��A7���i�mp�[h�E1�r�z�e��R�`e-�%�PչG䌰�x�[��xN>i�_��x��\0G�%�\nM��nm0�A�WT��I�,o�e��)�\0�X`Xa0�駌���塈jQ�n�-��\Z)��i���`\n�Oc9Y�����h�Ŗ)�F�y`�-�tl_�j�{dy��|�j䭣�&�+q��n5i�_X�|���D#@�J��S����i��d&|���Q}��4�}��Pl��AET�)@��W!\"x��Qh\Z^�o�x\0D��Q���\\���m���[C�&\0t��m\0x%\"�h���q\\���pD.t��1�n����jD�B&��	�t�\0=��\0�D4�́�j��f^@@į\0�\n��Nd�\\���T���VM��I�\'�X\0�Pn���1;Ķ!���@��D7x��kh1�[U�I�D-�\0>�˘,��wKV\n��O\nu}�BS?*PT����b��\"P�\'��kq5�RgY��z|���9]P5q�=������BD��ޠj���FHTC9�C�M,�@��C�	��tNu/;��m��Aud*��OP@\0!�\n\0\0,\0\0\0A\0H\0\0�\0H����\0\0\\@!Ç\r:�81�ŋf�ȱ�G�	V�H�bɓ(;�\\��!\0)c\Z0��J�7�@���<6���p䤟�y\0NΡ\'�4�4@ϞB}R�V�E\rA�����d�R�\0]n��5�[`��-�O>�Z�WY\0v�]��ʛ\0|�0al8:81�\Z\0MV�n��S`���I ��1��1�%3�#]?45cF,\0\\ׁ�Z\0Q�(�4�X�5����2?9Q�pE��Ke:D���(�[�\0�{�&��nZ8i!|),���|k=�����gPp�����\0�ǘ_F�ւ*8�\n�P�]�^� R��tF$ |����n%S\"J�V\\��H�\0$\\$�L�|#��eU�]�X!\'ۙ��5�I�I*Y�&\\� wE���V�I�]���b2Xc�@�WZ�%fBb\n\0I�F4�r)�Hg��әij�\rUe� IV%񤅖��ɨ�iA{�hi������&�E$�Dj�ZP�ZM\n�@)�n���������\0��$!X��g�H`ׅ\n�L� ��\0�Y OLZk\'��MkD\\��� ��!�$Dh\0(�[{�}t.s�BD�\0�|	���A5Լ���\Z�a���@(��*5��K\n�C��qb�f�Dԅ����^��Z��YQne��N`Ɉ2B�=��[馇$\0ɸE�D�-@Z%�ē\n\0T��H\'=#��;sB�YuD*�{ð��kV�lC��A3\0��,��\\�u�������V%�[�r�upot��4�:��@�rWG�ͩhPP�n���D��\"�\0(��VR?m9�e�[�S\0����[���]��\\��`8���h���0I\0���!E�6��QT�G�D��wx�n�����|�ԑi��?:�ơ?P@\0;');
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
