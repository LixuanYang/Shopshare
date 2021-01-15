-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 11, 2020 at 08:51 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopshare`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogger`
--

CREATE TABLE `blogger` (
  `BloggerID` int(10) NOT NULL,
  `NickName` varchar(20) DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `Interest` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blogger`
--

INSERT INTO `blogger` (`BloggerID`, `NickName`, `Email`, `Interest`) VALUES
(1123456789, 'Frank', '456@gmail.com', 'shoes'),
(1234567890, 'Bill', '123@gmail.com', 'shoes'),
(1234567891, 'Nancy', '135@gamail.com', 'Ties');

-- --------------------------------------------------------

--
-- Table structure for table `friend`
--

CREATE TABLE `friend` (
  `FriendID` int(10) NOT NULL,
  `FriendName` varchar(20) NOT NULL,
  `BloggerID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `friend`
--

INSERT INTO `friend` (`FriendID`, `FriendName`, `BloggerID`) VALUES
(1123456789, 'Frank', 1234567890),
(1234567890, 'Bill', 1123456789),
(1234567898, 'Frank', 1234567890);

-- --------------------------------------------------------

--
-- Table structure for table `friendship`
--

CREATE TABLE `friendship` (
  `Year_in_friendship` int(3) NOT NULL,
  `FriendID` int(10) NOT NULL,
  `BloggerID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `friendship`
--

INSERT INTO `friendship` (`Year_in_friendship`, `FriendID`, `BloggerID`) VALUES
(2, 1123456789, 1234567890),
(2, 1234567890, 1123456789),
(1, 1234567898, 1234567890);

-- --------------------------------------------------------

--
-- Table structure for table `info_contain_review`
--

CREATE TABLE `info_contain_review` (
  `number of likes` int(5) NOT NULL,
  `InfoID` int(10) NOT NULL,
  `ReviewID` int(10) NOT NULL,
  `BloggerID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `info_contain_review`
--

INSERT INTO `info_contain_review` (`number of likes`, `InfoID`, `ReviewID`, `BloggerID`) VALUES
(200, 1, 12345, 1234567890),
(500, 1, 12346, 1123456789),
(400, 2, 12346, 1234567890);

-- --------------------------------------------------------

--
-- Table structure for table `leave a message`
--

CREATE TABLE `leave a message` (
  `content` varchar(500) NOT NULL,
  `FriendID` int(10) NOT NULL,
  `BloggerID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `leave a message`
--

INSERT INTO `leave a message` (`content`, `FriendID`, `BloggerID`) VALUES
('How do you like the Bose Headset?', 1123456789, 1234567890),
('How do you like the Asus Motherboard?', 1234567890, 1123456789);

-- --------------------------------------------------------

--
-- Table structure for table `purchaseinfo`
--

CREATE TABLE `purchaseinfo` (
  `BloggerID` int(10) NOT NULL,
  `InfoID` int(10) NOT NULL,
  `ItemName` varchar(20) NOT NULL,
  `PurchasePrice` int(10) NOT NULL,
  `Attitude` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchaseinfo`
--

INSERT INTO `purchaseinfo` (`BloggerID`, `InfoID`, `ItemName`, `PurchasePrice`, `Attitude`) VALUES
(1123456789, 1, 'Nike Shoes', 200, 'Like'),
(1123456789, 2, 'ASUS Motherboard', 270, 'Dislike'),
(1234567890, 1, 'AJ', 220, 'Like'),
(1234567890, 2, 'Bose Headset', 150, 'Like');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `ReviewID` int(5) NOT NULL,
  `PurchaseWeb` varchar(8000) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `Photo` blob,
  `InfoID` int(10) NOT NULL,
  `BloggerID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`ReviewID`, `PurchaseWeb`, `Description`, `Photo`, `InfoID`, `BloggerID`) VALUES
(12345, 'https://www.nike.com/t/air-jordan-1-mid-se-mens-shoe-GR4N79/DC1419-700?nikemt=true&cp=94940895952_search_%7cPRODUCT_GROUP%7cGOOGLE%7c71700000041569911%7cAll_X_X_X_X-Device_X_Jordan-FullPrice_X%7c%7cc&&ds_e_ad_type=pla&gclid=CjwKCAiAiML-BRAAEiwAuWVggj4WCHbXpc0TEYK4c5AkgAJyID8DLxZulgI-KIFa8aW5_abkoq3quRoC2NAQAvD_BwE&gclsrc=aw.ds', 'Looks Cool', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0C\0	\n\n			\n\n		\r\r\nÿÛ\0C	ÿÀ\0\0:\0d\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\00\0\0\0\0\0\0\0!	\"12AS’#r±QaBq‘ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0#\0\0\0\0\0\0\0\0\0\0\0!\"1AqÁÑğÿÚ\0\0\0?\0ÙŞši \Zór—Äm_ò»õºÍk§hÒjÛ…RSÁHëa¤rwE\0Ÿ,À$kµq¸Ûìöú«µÚºŠ†Š©©©©•cŠ‘K<ì@UU’H\0N°“Öuæã½4XÛ¾MI·x¥vYu¼Ö!¥·\\ªYhá…zyg8kYš¥Tš@àk;lUEÉ–Œ\\™8m‡g¶×¼áU¦ÿ\0CÍM%E¶²:˜ã™@-2Àe%Or9uíkçÛkàšÛ›µe‹3½áuğÆ”´Y1+õ#4É@êòFìä0CÖÜ<r§k¾…òïR×äËí¾¡²ëVMMK\rªlbëm4Æ¶H¥3<o$’û\0¼‹äA òr¯U\\Ú‹á¿Ü•m,®ÆWËóâ¿ĞÔ59~aüWú\Z¢·+y6³gm‚ï¹Ùí›ãy!JÊ\'©	Ç_fÌ“Ô¼ˆÕ‘ã]&ee¦±Nõí:ôlt[vst½®™^‚ÉT>KwÒ?ãîóğ:ª1_Ş²Û­=’ƒz-´u•ÔëIUo‰?ÓOQB¿ãËù<Ï#@d&šòñÌ£Ì-q_1,ŠÙ{¶ÏÏj²İYLÁàôÉ*x é¯S@4ÓMoÎùíğÜ+æÙ­Â¡®øí%5]À¬Åœ9%?3¿J=\nTr=^èèß·jÑ~Äï0á—ÊË5İ¨jeÊÉQN ‘Q‰–8êã\'xÔ<¢\"À8ŒòBòÂÉï¿¦Îç×_¶Êé¹Ğ\\n“äRÿ\0o¶_,u·ˆ,ee\\Ó\'WqÊõÈŠÎhzZ‚Âö»|’±¤Ü?Iy5/TjìøåÁOIŞñÊÃB—\nXéáø•@ÌWÀ=G–×<ÕùèkWÙu³×%UvØh³<¦Õ&éïå÷?¸İçè£¦¯yíÔ´’CB†Y¢·ÑÉ	¥™\'¥vWI#`•o½ÇA#Ğ¹G©Ø±-İÜMšÍ¶/5Èl’E\r5¶–ÙŒE]Ww„$‹WUX­\'DğÈÄv‚(báJ!\"µ´ì…\r¢ûnÊh½\Zîw[UY­¦¨—1¡»İş÷[‰/¬²~é2pà|ñÎ®%}ßwn.å½<n9ú<7Lp¯ù¹F©Ã2µ¦ş	œ“â=Œ.¦§¯Â2\Z¬«h}1×`öœÅfJtÎkÄˆkUËš‡µÄ²TSÊÜ4H‰,p•X˜\'\0˜¾—,9…·)®ºd›€·Z*Š)a¶Úmøı5®İA0t¬jµW´ÀuÔ2€üuÖ>à]¡Š;÷¥\\ÆêÑ¬~ıd¸¬zyã“ú§ø|:›®ØÒe\"¾\nš½±®ÄéQY%¾¦ƒ¯ ©à\"ÑM2·¿Óà²9<’\08OKdµ*äÒ^Ü¿%Õ±UíyÉÓõ‹º¹&ÊzqÍ·\'í-îÙEM²\"¸‚jšˆi–n–XÇŞî`T”ëAY6W’æWúœ›2Èn—«­C+ÍWp©j‰ænwªI	fn(òHé\0qÈãèçpp¼[qq+¦šãĞŞì—ŠQMYC0J„<‚®¬+©¬ªÊC\0FªwÙ5»6Ëäõ›3qL†ÒÍ$ñÓŞ¦§¢ª„=¨ƒ$Œ’·A\0ÉÄ ·€5è ´¦J™CİáYú¸úyğ~o¯“ôäùó®Í\n8te,:S©P9\0‚×şñäChöhúÊ¹3SÜvâÛJz\rfAotn~Ÿ³3±àr=ï¦¯>3ì›È\r²šLŸ.È «jUÒÒY­Ò$PËÍrD£R|á 5ş·9­õ+q§¨š9a#¦DfR8ò­È?Oı>u{vã×©½³½Ew·îÍúìŠ?LÈ+ÚãI2#+4%\'bb\rĞd) Rá\\s«½›{,·æÙY(À¨¿]¤eëZôVÙzÁùzR®PGÇ’XãÇuKÚ=š^®k.)KU¶tÖÔiµeEşßÙ ñÔ\"™äóğğ‡ãäqã@m£ÓÆïSoÆËb»±Moz~£f¨§eàGS¯á=â{}Ø¤è$õé,ä¹6jm[³ØÆÕÙš¥éì†&– *¼Ó<,ÒWp¡¥’F\nºA“Ç:hƒ¦šhši \Zi¦€œ¿0ş+ı\rCS—æÅ¡¨hši \Zi¦€i¦š}é¾ëşGNôßuÿ\0#¨i \'Ş›î¿ätïM÷_ò:†š}é¾ëşGNôßuÿ\0#¨i 9e–PÃ‰\\{«ÿ\0#ş£Ş›î¿ät—æÅ¡¨h	÷¦û¯ù;Ó}×ü¡¦€Ÿzoºÿ\0‘Ó½7İÈê\Zh	÷¦û¯ù5\r4ÿÙ', 1, 1234567890),
(12346, 'https://www.nike.com/w/mens-running-shoes-37v7jznik1zy7ok', 'Comfortable', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0(\0(\0(\0(\0+\0(\0-\02\02\0-\0?\0D\0<\0D\0?\0]\0U\0N\0N\0U\0]\0Œ\0d\0l\0d\0l\0d\0Œ\0Õ\0…\0›\0…\0…\0›\0…\0Õ\0¼\0ä\0¹\0­\0¹\0ä\0¼R	\0ë\0ë	R†H6H†Ù§§ÙS5S\n\n\0(\0(\0(\0(\0+\0(\0-\02\02\0-\0?\0D\0<\0D\0?\0]\0U\0N\0N\0U\0]\0Œ\0d\0l\0d\0l\0d\0Œ\0Õ\0…\0›\0…\0…\0›\0…\0Õ\0¼\0ä\0¹\0­\0¹\0ä\0¼R	\0ë\0ë	R†H6H†Ù§§ÙS5S\n\nÿÂ\0\0Û•\"\0ÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0ÿÚ\0\0\0\0\0ú`\0\0\0\0@\0\0\0\0€\0\0\0\0\0\0\0 \0\0\n\0\0\0\0\0\0\0\0@\0\0(\0\0\0\0\0h \0\0†Z\0\0\r\0@\0?+št÷ô€\0\Z\0€\0GÎùşf»ş–€\04\0@\0/–Ko¿Õè\0 \0€~gV×¯Ñî \0Ğ\0 ‡›Ê\Z[¾¿§°\0Ğ\0ŸÌqø†âïßét€\r\0\0|ï78h­úöwl \0¼2ã„Zš]zzvuì€\0 óù¸zã‹Èi4]oZèéèĞh\0™â¿K—›‹RªîÛ®¯¢\0\0‡\'kèoƒÇ‹¥£[ÿ\0C l\0+_EóZ’Òïi7íô}M€\0Eøğ[ÓÈ¾~8zjé˜1éÓôk`\0ß›Î\0VfB™y{uwİ€\0+ËåB…ˆXeÓïÁ‰áÓÓôv\0\0W@EHgèãÃççÓ~à\0\0¯ÉVQ\0‰wåsŸ;¯Ñ \0\0|¿XzúxùçÇ§ï\0A@	›5×áË†¿F@\0MüîE\0D±›rÆ?ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÚ\0\0\0\0\0\0\n\0\0(\0\0 \0\0\0\0j  H €¼â®A5\0ß<ªÜÁ4€/Cœ¥Û8)\0é©sŠÖ¯(¤éSRJƒš[sÙŠVôYbI¬²\0]iPLÜßÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÚ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0B’€\0ƒ;h\0€Lî‰-\0dØLÍh	lI–è@3*(XÙ\0$Fòµ\0$€U°Ô\0L‚Š¯ÿÄ\0+\0\0\0\0\0\0\0!1@AQ 0PaR2B€ÿÚ\0\0?\0ÿ\0Ğ%”rÂSÁ îI2­fsrc<)âª/yOMşÇb*jkvÚæ^_ ÄJ8²¶qÕÅÔü]zšF‘É•\rõ	J³!¸2–!jlvo‰v¤˜IbXÊÇêæ@Ö;Ê8®ÀAˆ{#*¼`7c”«šgÊÄuqu?Uô!ó	eoåì‚DSvSple,B¾ÇføJÕ5¶C“+¨Ca iKWcºÅuqu?^§ôì\'|»ƒ*. G¶ 6€ø1_Mˆ$˜¿ØE¨ÃuÕjh_¸Ç5¦Î\ZÃyÌªš[İ\rçx<ªÜÄÄ¸ïx¸¥<ˆ¬¬.\rú¢@™R¡v&€$Ø	BÔ×Iÿ\0ezzãø´e,c¡Së‘•Ì¸€‘)TÑPx=V&§ô…b®r\"•¬¤¨\Z»‰upi´tjM¤Ç@ÂÑĞ©·@¦ãîP«¨i<õ5S±ôwˆìŒ\n˜¬•Öãfï5£íÁ—µ÷Ú2†éãdxSoñ·‘4\"FJÖ05Ä¥PTcœÆb>ıœ•Š5ÔØÊØt€s¸1¨©†‹i¿ê`¥Sõ‚ƒw\"~ûOÄƒÌ²\0…¡&_ìd„^†âÒ‹…mö=ŒVÔ:Q–%4Ô¿Ÿ@—õÜËŸæ·\"^ıçøe‰ñ4ùc4¨í•òâq/c•r»¬A Êµ?È‚cØ´°šVXg{C\Z—[ŞÜ\0\'üôœÄ}Ş:”$™CME\Z¨\\Jt5¤âhÿ\0q‘èNTí[ 0”(=Öì%fìrG]BSr¦ĞıGÄÕØj==z\Z\rÇôFFàÚ\Z®E‹`GapŒe²eS{&0ß§6ac+Ñ4Ûë×hÎs ë\"%|AÔiˆÂZÂ%ŠİA\nÀƒ+aŠî²İ{ÃF(á‡\"[\rX‡&ÆV6CxUÿ\0iøÏ™£î#é=H˜¥Å‡ºr9sÌ9¿3ÿÄ\0 \0\0\0\0\0\0\0\0\0\00 1@!A`ÿÚ\0?\0ş×¯N’<-åñ·IMGŞ]ÇKà\n-¢n9°ÇN`¢^\r¢_‘T¶R¶¢ØM¤±Å/”r±úe¶‰:›r$­çÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0 0@1!ApÿÚ\0?\0øsbÙbØcWÎšq{D‰è!©‹´ù‰v¯^n¶=IÊÖ)¬ÿÙ', 1, 1123456789),
(12346, 'https://www.bose.com/en_us/index.html?mc=25_PS_BD_BO_00_GO_&gclid=CjwKCAiAiML-BRAAEiwAuWVggp9JZwv3hzuWD4Mc2q09ruHKqzFiGVP1HaRxp44qdGq0qHWT8ezgNRoCkXAQAvD_BwE&gclsrc=aw.ds', 'Sound quality is nice', NULL, 2, 1234567890);

-- --------------------------------------------------------

--
-- Table structure for table `share`
--

CREATE TABLE `share` (
  `BloggerID` int(10) NOT NULL,
  `InfoID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `share`
--

INSERT INTO `share` (`BloggerID`, `InfoID`) VALUES
(1123456789, 1),
(1123456789, 2),
(1234567890, 1),
(1234567890, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `ReviewID` int(10) NOT NULL,
  `FriendID` int(10) NOT NULL,
  `Time_tag` datetime(6) NOT NULL,
  `BloggerID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`ReviewID`, `FriendID`, `Time_tag`, `BloggerID`) VALUES
(12345, 1234567890, '2020-12-03 16:04:12.000000', 1123456789),
(12346, 1123456789, '2020-12-01 16:04:26.000000', 1234567890);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogger`
--
ALTER TABLE `blogger`
  ADD PRIMARY KEY (`BloggerID`);

--
-- Indexes for table `friend`
--
ALTER TABLE `friend`
  ADD PRIMARY KEY (`FriendID`),
  ADD KEY `BloggerID` (`BloggerID`);

--
-- Indexes for table `friendship`
--
ALTER TABLE `friendship`
  ADD PRIMARY KEY (`FriendID`,`BloggerID`),
  ADD KEY `BloggerID` (`BloggerID`);

--
-- Indexes for table `info_contain_review`
--
ALTER TABLE `info_contain_review`
  ADD PRIMARY KEY (`InfoID`,`ReviewID`,`BloggerID`),
  ADD KEY `InfoID` (`InfoID`),
  ADD KEY `ReviewID` (`ReviewID`),
  ADD KEY `BloggerID` (`BloggerID`);

--
-- Indexes for table `leave a message`
--
ALTER TABLE `leave a message`
  ADD PRIMARY KEY (`FriendID`,`BloggerID`),
  ADD KEY `FriendID` (`FriendID`,`BloggerID`),
  ADD KEY `BloggerID` (`BloggerID`);

--
-- Indexes for table `purchaseinfo`
--
ALTER TABLE `purchaseinfo`
  ADD PRIMARY KEY (`BloggerID`,`InfoID`),
  ADD KEY `BloggerID` (`BloggerID`),
  ADD KEY `InfoID` (`InfoID`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`ReviewID`,`InfoID`,`BloggerID`),
  ADD KEY `InfoID` (`InfoID`),
  ADD KEY `BloggerID` (`BloggerID`);

--
-- Indexes for table `share`
--
ALTER TABLE `share`
  ADD PRIMARY KEY (`BloggerID`,`InfoID`),
  ADD KEY `BloggerID` (`BloggerID`),
  ADD KEY `InfoID` (`InfoID`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`ReviewID`,`FriendID`,`BloggerID`),
  ADD KEY `ReviewID` (`ReviewID`,`FriendID`),
  ADD KEY `BloggerID` (`BloggerID`),
  ADD KEY `FriendID` (`FriendID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `friendship`
--
ALTER TABLE `friendship`
  ADD CONSTRAINT `friendship_ibfk_1` FOREIGN KEY (`BloggerID`) REFERENCES `blogger` (`BloggerID`),
  ADD CONSTRAINT `friendship_ibfk_2` FOREIGN KEY (`FriendID`) REFERENCES `friend` (`FriendID`);

--
-- Constraints for table `info_contain_review`
--
ALTER TABLE `info_contain_review`
  ADD CONSTRAINT `info_contain_review_ibfk_1` FOREIGN KEY (`BloggerID`) REFERENCES `blogger` (`BloggerID`),
  ADD CONSTRAINT `info_contain_review_ibfk_2` FOREIGN KEY (`ReviewID`) REFERENCES `review` (`ReviewID`),
  ADD CONSTRAINT `info_contain_review_ibfk_3` FOREIGN KEY (`InfoID`) REFERENCES `purchaseinfo` (`InfoID`);

--
-- Constraints for table `leave a message`
--
ALTER TABLE `leave a message`
  ADD CONSTRAINT `leave a message_ibfk_1` FOREIGN KEY (`BloggerID`) REFERENCES `blogger` (`BloggerID`),
  ADD CONSTRAINT `leave a message_ibfk_2` FOREIGN KEY (`FriendID`) REFERENCES `friend` (`FriendID`);

--
-- Constraints for table `purchaseinfo`
--
ALTER TABLE `purchaseinfo`
  ADD CONSTRAINT `purchaseinfo_ibfk_1` FOREIGN KEY (`BloggerID`) REFERENCES `blogger` (`BloggerID`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`InfoID`) REFERENCES `purchaseinfo` (`InfoID`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`BloggerID`) REFERENCES `blogger` (`BloggerID`);

--
-- Constraints for table `share`
--
ALTER TABLE `share`
  ADD CONSTRAINT `share_ibfk_1` FOREIGN KEY (`BloggerID`) REFERENCES `blogger` (`BloggerID`),
  ADD CONSTRAINT `share_ibfk_2` FOREIGN KEY (`InfoID`) REFERENCES `purchaseinfo` (`InfoID`);

--
-- Constraints for table `tag`
--
ALTER TABLE `tag`
  ADD CONSTRAINT `tag_ibfk_1` FOREIGN KEY (`BloggerID`) REFERENCES `blogger` (`BloggerID`),
  ADD CONSTRAINT `tag_ibfk_2` FOREIGN KEY (`FriendID`) REFERENCES `friend` (`FriendID`),
  ADD CONSTRAINT `tag_ibfk_3` FOREIGN KEY (`ReviewID`) REFERENCES `review` (`ReviewID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
