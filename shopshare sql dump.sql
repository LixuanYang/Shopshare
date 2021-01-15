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
(12345, 'https://www.nike.com/t/air-jordan-1-mid-se-mens-shoe-GR4N79/DC1419-700?nikemt=true&cp=94940895952_search_%7cPRODUCT_GROUP%7cGOOGLE%7c71700000041569911%7cAll_X_X_X_X-Device_X_Jordan-FullPrice_X%7c%7cc&&ds_e_ad_type=pla&gclid=CjwKCAiAiML-BRAAEiwAuWVggj4WCHbXpc0TEYK4c5AkgAJyID8DLxZulgI-KIFa8aW5_abkoq3quRoC2NAQAvD_BwE&gclsrc=aw.ds', 'Looks Cool', '����\0JFIF\0\0\0\0\0\0��\0C\0	\n\n			\n\n		\r\r\n��\0C	��\0\0:\0d\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\n��\00\0\0\0\0\0\0\0!	\"12AS�#r�QaBq���\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0#\0\0\0\0\0\0\0\0\0\0\0!\"1�Aq�����\0\0\0?\0�ޚi�\Z�r��m_����k�h�jۅRS�H�a�rwE\0�,�$k�q�������ں���������c��K<��@UU�H\0N���u��4X���MI�x�vYu��!��\\�Yhᅞzyg8kY��T�@�k;lUEɖ�\\��8�m�g�׼�U��\0C�M%E��:��@-2�e%Or9u�k��k��ۛ�e�3��u�Ɣ�Y1+�#4�@��F��0C�܏<r�k����R������VMMK\r�lb�m4ƞ��H�3<o$��\0���A �r�U\\ڋ���m,��W�����59~a�W�\Z��+y6�gm������y!Jʐ\'�	�_f̓Լ�Տ��]&ee��N��:�lt[vst����^��T>Kw�?����:�1_ސ�ۭ=��z-�u���IUo�?�OQB����<�#@d&���̣�-q_1,��{���j��YL����*x ��S@4�Mo�����+�٭¡���%5]����9�%?3�J=\nTr=^��߷j�~��0���5ݨje��QN �Q��8��\'x�<�\"�8��B���￦���_�����\\n��R�\0o�_,u��,ee\\�\'Wq��Ȋ�h�zZ����|����?Iy5/Tj�����OI����B�\nX����@�W�=G��<���kW�u��%Uv�h�<��&����?���裦�y�Դ�CB�Y����	��\'�vWI#`�o��A#йG�ر-��M�Ͷ/5�l�E\r5��ٌE]Ww�$�WUX�\'D���v�(�b�J!\"���\r��n�h�\Z�w[UY����1������[�/��~�2p��|�ή%}�wn.�<n9�<7Lp����F���2���	���=�.����2\Z��h}1�`���fJt�k��kU˚��ĲTS��4H�,p�X�\'\0���,9��)��d���Z*�)a��m��5��A0t�j�W��u�2��u�>�]��;��\\��Ѭ~�d���zy������|:������e\"�\n������QY%��������\"�M2���ಎ9<�\08OKd�*��^ܿ%ձU�y������&�zqͷ\'�-��EM�\"��j��i�n�X���`T���AY6W��W���2�n���C+�Wp�j��n�w�I	fn(�H�\0q����pp�[qq+�����엊QMYC0J�<���+����C\0F�w�5�6����3qL���$��ަ����=��$���A\0�� ���5� ��J�C��Y���y�~o�������\n8te,:S�P9\0�����Ch�h�ʹ3S�v��Jz\rfAotn~��3��r=羚>3��\r��L�.Ƞ�jU��Y��$P��rD�R|�5��9��+q���9a#�DfR8��?O��>�u{v������Ew�����?L�+��I2#+4%\'bb\r�d) R�\\s���{,���Y(���]�e�Z�V�z��zR�PGǒX�ǎuK�=�^�k.)KU�t��i�eE��� ��\"��������q�@m����So��b��Moz~�f��e�GS��=�{}ؤ�$��,��6jm[����ٚ����&��*��<�,�Wp���F\n�A��:h���h�i�\Zi����0�+�\rCS�����h�i�\Zi��i��}���GN��u�\0#�i�\'ޛ��t�M�_�:��}���GN��u�\0#�i�9e�PÉ\\{��\0#��ޛ��t�����h	�����;�}�������zo��\0�ӽ7���\Zh	�����5\r4��', 1, 1234567890),
(12346, 'https://www.nike.com/w/mens-running-shoes-37v7jznik1zy7ok', 'Comfortable', '����\0JFIF\0\0\0\0\0\0��\0(\0(\0(\0(\0+\0(\0-\02\02\0-\0?\0D\0<\0D\0?\0]\0U\0N\0N\0U\0]\0�\0d\0l\0d\0l\0d\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�R	\0�\0�	R�H6H�����S5S\n\n\0(\0(\0(\0(\0+\0(\0-\02\02\0-\0?\0D\0<\0D\0?\0]\0U\0N\0N\0U\0]\0�\0d\0l\0d\0l\0d\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�R	\0�\0�	R�H6H�����S5S\n\n��\0\0��\"\0��\0\Z\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0�`\0\0\0\0@\0\0\0\0�\0\0\0\0\0\0\0 \0\0\n\0\0\0\0\0\0\0\0@\0\0(\0\0\0\0\0h \0\0�Z\0\0\r\0@\0?+�t��\0\Z\0�\0G���f����\04\0@\0�/�Ko���\0�\0�~g�Vׯ��\0�\0 ����\Z[����\0�\0��q������t�\r\0\0|�78h���wl�\0�2�Z�]zzvu��\0 ���z��i4]oZ����h\0��K���R��ۮ��\0\0�\'k�o�ǋ��[�\0C�l\0+_E��Z���i7��}M�\0E��[�Ⱦ~8zj�1���k`\0ߛ�\0VfB�y{uw݀\0+��B��Xe��������v\0\0W@EHg��Ý���~�\0\0���VQ\0�w�s�;�� \0\0|�Xz�x��ǧ�\0A@	�5��ˆ�F@\0M��E\0D��r�?��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\n\0\0(\0\0�\0\0\0\0j �H ���A5\0�<���4�/C���8)\0驝s�֯(��SRJ���[sيV�YbI��\0]iPL����\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0B��\0�;h\0�L�-\0d�L�h	lI��@3*(X�\0$�F�\0$�U��\0L�����\0+\0\0\0\0\0\0\0!1@AQ 0PaR2B����\0\0?\0�\0�%�r�S� �I2�fsrc<)�/yOM���b*jkv��^_ �J8��q����]z�F�ɕ\r��	J�!�2�!jlvo�v��IbX�ǁ��@�;�8��A�{�#*��`7c���g��uqu?U�!�	�eo��DSvSple,B��f�J�5�C�+��Ca�iKWc��uqu?^���\'|��*.�G� 6��1_M�$���E���u�jh_��5��\ZÁy̪�[�\r�x<���ĸ�x��<���.\r��@�R�v&�$�	B��I�\0ezz���e,c�S���̸��)T�Px=V&���b�r\"����\Z��upi�tjM��@��Щ�@���P��i<�5S��w��\n�����f�5�������2���dxSo�4\"FJ�05ĥPTc���b>����5���؍t��s�1����i��`�S���w\"~�Oă̲\0��&_�d�^��ҋ�m�=�V�:Q�%4Կ�@���˟��\"^���e��4�c4����q/c�r��A ʵ?Ȑ�cش��VXg{C�\Z�[��\0\'����}�:�$�CME\Z�\\Jt5���h�\0q��NT�[�0�(=��%f�rG]BSr���G���j==z\Z\r��FF��\Z�E�`Gap�e�eS{&0ߧ6ac+�4���h�s���\"�%|A�i��Z�%��A\n��+a���{�F(�\"[\rX�&�V6CxU�\0i�ϙ��#�=H��Ň�r9s�9�3��\0 \0\0\0\0\0\0\0\0\0\00 1@!A`��\0?\0�ׯN�<-��IMG�]�K�\n-�n9��N`�^\r�_�T�R���M���/�r��e��:�r�$����\0\0\0\0\0\0\0\0\0\0\0\0\0 0@1!Ap��\0?\0�sb�b�cWΚq{D��!������v�^n�=I��)���', 1, 1123456789),
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
