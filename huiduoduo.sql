/*
Navicat MySQL Data Transfer

Source Server         : cxw
Source Server Version : 80020
Source Host           : localhost:3306
Source Database       : shopdb

Target Server Type    : MYSQL
Target Server Version : 80020
File Encoding         : 65001

Date: 2021-06-26 17:35:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cid` varchar(50) NOT NULL,
  `cname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '手机数码');
INSERT INTO `category` VALUES ('2', '电脑办公');
INSERT INTO `category` VALUES ('3', '家具家居');
INSERT INTO `category` VALUES ('4', '鞋靴箱包');
INSERT INTO `category` VALUES ('5', '智能家居');

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `itemid` varchar(50) NOT NULL,
  `count` int DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `pid` varchar(50) DEFAULT NULL,
  `oid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`itemid`),
  KEY `fk_0001` (`pid`),
  KEY `fk_0002` (`oid`),
  CONSTRAINT `fk_0001` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`),
  CONSTRAINT `fk_0002` FOREIGN KEY (`oid`) REFERENCES `orders` (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES ('0698e427-9797-4ac8-96bf-97131208512f', '1', '1299', '1', '8ea11b0f-0f4c-4ff7-b6fe-bcd320653784');
INSERT INTO `orderitem` VALUES ('0b8208f6-9b19-4a86-99aa-7c4b8c20e25b', '1', '2599', '10', 'b98412a0-6042-47ba-8150-2b646a1dfb8b');
INSERT INTO `orderitem` VALUES ('0ce100b6-893f-40f5-bd6e-4a17b6026ac6', '1', '2298', '11', '41cdf28d-32ef-4e32-b285-46ff82db382f');
INSERT INTO `orderitem` VALUES ('0e96a694-a095-41a1-96bd-198b2db408e1', '1', '2599', '10', 'ec74ba3d-9118-4ea3-aaff-cef96c5fcb4f');
INSERT INTO `orderitem` VALUES ('1568ec46-e1bd-46c2-b405-5af60c50ea9f', '1', '1799', '12', 'c7b65696-21c7-40e1-a1cf-e13c70a982c0');
INSERT INTO `orderitem` VALUES ('1d02f1cd-abbb-46e2-97db-c90f3dd91140', '1', '4199', '33', 'a1ccc17a-071a-473f-aa03-610f586a1d47');
INSERT INTO `orderitem` VALUES ('261dd607-3c2e-4168-a516-9b1adac51e69', '1', '2599', '10', '70788b01-8db2-44c8-89ea-8304632eea5f');
INSERT INTO `orderitem` VALUES ('2634f8a7-833b-409d-9aab-8389d076e3e1', '146', '715254', '47', '48737fe6-3e1a-414a-8b17-f00df183a9fe');
INSERT INTO `orderitem` VALUES ('280b4b5b-a104-4784-af0f-cd0b7cdd377f', '1', '2298', '11', 'e2919194-7e27-4c58-9822-251320f4caa5');
INSERT INTO `orderitem` VALUES ('2d29fe97-a318-4df3-807f-a8f77dffdbc1', '1', '2599', '10', '96ad2704-e1bb-4d90-ab9a-4b622b19a9c0');
INSERT INTO `orderitem` VALUES ('33943b3f-be01-4bd5-846e-14dc4468cad7', '1', '2298', '11', 'e4b1ff44-278b-48fe-8bd3-c0cf6e911b82');
INSERT INTO `orderitem` VALUES ('3f506777-b0d1-47d1-977d-fcd24b5cdf1e', '1', '2599', '10', '10914c7d-e567-4ce6-b41f-de7a31a46237');
INSERT INTO `orderitem` VALUES ('3f6e8ebc-9d47-4509-8880-ce2ae3e72ce8', '1', '2499', '13', '4eed7c09-a514-4a54-b0af-7583d079e271');
INSERT INTO `orderitem` VALUES ('43092eca-5305-4d15-9554-8b197cf1cfa8', '1', '4199', '33', '0b462e0f-814f-4980-a548-81daccb788de');
INSERT INTO `orderitem` VALUES ('43c9c611-e164-40d9-a573-e9aaa4755783', '1', '2599', '10', '60ea082a-f025-45c7-89d1-269fe1edd501');
INSERT INTO `orderitem` VALUES ('44d70f41-12bd-4ca1-883b-1d97183641a7', '1', '2298', '11', '35ebabc2-9fa7-4431-be20-92967f8f196d');
INSERT INTO `orderitem` VALUES ('469cd900-0011-4bd1-b022-5e2e33a535c9', '1', '1299', '1', '893aba69-a15c-4b13-8949-ccafce222ec4');
INSERT INTO `orderitem` VALUES ('47926eff-b44e-41b1-a442-f2508e0a9f7b', '1', '6688', '32', 'daa59b98-744c-4c43-abfd-5ad9741ae4b7');
INSERT INTO `orderitem` VALUES ('481779c2-72f5-4a50-9a57-f103711a20ff', '1', '4087', '16', '7f1a2492-02f8-4040-ab5e-46706335e944');
INSERT INTO `orderitem` VALUES ('4afa7621-96b0-4146-8bc3-ff4ba10035eb', '1', '2298', '11', '19ccd207-a249-42cf-806f-36762c3189ce');
INSERT INTO `orderitem` VALUES ('4e236c45-3fc1-4a9f-96f7-42378ff913f3', '1', '4199', '33', '29cc8856-ef5e-4cfa-b1e0-2caf18f7afd8');
INSERT INTO `orderitem` VALUES ('52189841-6093-4055-81b0-b145fb468cf5', '1', '2599', '10', 'd01f0b37-5343-487e-8566-923ed10e1d81');
INSERT INTO `orderitem` VALUES ('52657d88-75c2-4e1d-b4cb-a6d750036998', '1', '2599', '10', 'e4b1ff44-278b-48fe-8bd3-c0cf6e911b82');
INSERT INTO `orderitem` VALUES ('56f8e8f0-66e8-455c-95f8-85a7d59fc782', '1', '6599', '40', '2ae526b1-0f49-41c2-9ec8-c3357e53c36d');
INSERT INTO `orderitem` VALUES ('5bb40190-0af6-496e-87cb-987db98984c6', '1', '4288', '15', '2ea104d9-d439-441d-b9b6-b22165faffcb');
INSERT INTO `orderitem` VALUES ('61198b78-5ccb-4c7c-b528-572a1a443044', '1', '6688', '32', 'be60d3ea-8e5f-4366-985c-faa76d58a978');
INSERT INTO `orderitem` VALUES ('6486fcce-4cbe-4e2b-a920-faf9953dd2db', '1', '6688', '32', 'b7f7e119-a849-45f0-b74c-d865db97dc09');
INSERT INTO `orderitem` VALUES ('73fce09c-8f10-4ee8-91db-69e0ffbb29fb', '1', '6688', '32', '54d001ae-0c01-41b5-8bfb-9a12999e1d2f');
INSERT INTO `orderitem` VALUES ('74ce3c38-4d95-42b5-b316-f89f0f1db074', '12', '27576', '11', 'd0041ec7-3aa6-4272-b0f8-51bd68ffb50d');
INSERT INTO `orderitem` VALUES ('82df08ee-2195-4970-b636-f0045b2f436a', '1', '2599', '10', 'c1937cb2-dd24-4946-bd95-86b9e5dcd211');
INSERT INTO `orderitem` VALUES ('94241d1c-cd40-4562-a8f7-5c7599d3fd0c', '1', '2298', '11', 'f0de2668-538b-46a2-8239-85b4d7aa5f7d');
INSERT INTO `orderitem` VALUES ('9dd16de2-3e25-4009-beed-872801a95662', '1', '1299', '1', '8eebeabc-b39e-4a62-a08a-806fecc2e6a0');
INSERT INTO `orderitem` VALUES ('9e08e2e1-277d-4445-b231-24fbe689ece1', '1', '6688', '32', 'af6a69d3-3b95-4132-a608-34d667f68813');
INSERT INTO `orderitem` VALUES ('a9c6320b-a926-417a-8085-fa6cd391df43', '1', '6688', '32', '7e637f63-0a3b-49e0-a467-42df4e3fc350');
INSERT INTO `orderitem` VALUES ('aa144554-1544-4e61-9cb9-0e604c30b9a6', '1', '2599', '10', '323f6ff6-5de6-4529-ab15-97894c7cc9f8');
INSERT INTO `orderitem` VALUES ('b2809069-271c-4144-a290-bbed51c872df', '1', '2599', '10', 'f7085771-4024-4bc5-a5ba-20cea365a7f9');
INSERT INTO `orderitem` VALUES ('bb3d9d4f-7cb2-4d65-99af-44e9cfe47b8c', '1', '1799', '12', '2ea104d9-d439-441d-b9b6-b22165faffcb');
INSERT INTO `orderitem` VALUES ('bb8f0533-a9b2-48aa-bab0-b25b2c8cb8d0', '1', '1799', '12', '7029db36-3878-44f3-8acf-9e8caba11646');
INSERT INTO `orderitem` VALUES ('beb85abe-ac2c-4157-9b89-93cc686acddd', '1', '3888', '24', '63c7fc84-7fd0-44dc-b0bb-75be7990f11a');
INSERT INTO `orderitem` VALUES ('c7a137dc-2d92-42fd-82e0-85cc22e35aed', '1', '2599', '10', '07559d7d-5820-4fd5-9d93-ec7b083553b6');
INSERT INTO `orderitem` VALUES ('d6f0f253-6974-4f4f-a549-3a510291b730', '1', '2599', '10', '2e28e318-6c58-4982-9173-90e9a5a17227');
INSERT INTO `orderitem` VALUES ('dbbdebd6-68c8-45ca-afca-bd87102b3d94', '1', '2599', '10', 'f5c788d3-84bd-414d-8683-c8f3fb422aa0');
INSERT INTO `orderitem` VALUES ('dc4a76b3-52fb-4480-a186-c83c0d210444', '1', '2298', '11', 'd8213c92-b821-48d8-993e-f636af4cc555');
INSERT INTO `orderitem` VALUES ('e0a2f1a8-f40e-48ed-b98b-211201f1c84d', '1', '1799', '12', 'c5b76043-4911-44f8-85bb-b69dd60743d6');
INSERT INTO `orderitem` VALUES ('e846f8e0-c639-427a-ab57-09cbfc7d937b', '1', '2298', '11', 'bee04702-2605-4d7a-a3c3-2686e1b6e877');
INSERT INTO `orderitem` VALUES ('eb4f8d2e-d90c-4f69-a2af-cd0a7c5c2bb0', '1', '2298', '11', '30c0c4bb-ffc0-42ce-be5b-3b2e5735b4b3');
INSERT INTO `orderitem` VALUES ('ec80c104-c581-4e8a-9b26-97c3e4e973dc', '1', '1299', '1', '7c6567ef-413e-413f-9e08-e5f19b675ef3');
INSERT INTO `orderitem` VALUES ('ecf28625-e6bb-4985-ac9e-2cf9d2035ba4', '1', '6688', '32', '73cf699a-3096-4044-88cf-154142542185');
INSERT INTO `orderitem` VALUES ('efb4e953-43a1-4943-9a80-21e351153de0', '1', '2298', '11', '87da9057-9694-495c-8783-97b6b4d862ad');
INSERT INTO `orderitem` VALUES ('f481fe33-44f4-465c-8c6c-a0715f4b0bc1', '1', '2299', '31', '5f5e1269-466b-4d87-be43-fb5c0f8ce050');
INSERT INTO `orderitem` VALUES ('ff7f3633-eb84-4c27-9b08-0a14b966df69', '1', '2599', '10', 'b062bdc7-1d93-4b57-a2a7-6ca4d864dbe1');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `oid` varchar(50) NOT NULL,
  `ordertime` datetime DEFAULT NULL,
  `total` double DEFAULT NULL,
  `state` int DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `assess` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('00e6a897-e4bf-4ad7-962d-c22222d97d4c', '2021-06-18 15:49:31', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('049a54cc-ceb9-43a4-b322-3fb19a63bad8', '2021-06-18 16:13:15', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('06f8a3af-8523-45d8-8c60-b9daab86d796', '2021-06-18 18:20:20', '0', '0', '广西贵港', '啊啊啊啊', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('07559d7d-5820-4fd5-9d93-ec7b083553b6', '2019-11-05 14:41:25', '2599', '1', '广东省东莞市', '张三', '15723689921', '373eb242933b4f5ca3bd43503c34668b', '测试评论');
INSERT INTO `orders` VALUES ('081591fb-327a-470e-ad08-d2c0f9b3327d', '2021-06-18 15:46:54', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('0a517f60-5a17-4d11-84c7-561b1b87f438', '2021-06-18 18:09:35', '0', '0', '广西贵港附近的酸辣粉骄傲酸辣粉', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('0b462e0f-814f-4980-a548-81daccb788de', '2021-06-18 15:49:37', '4199', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('10914c7d-e567-4ce6-b41f-de7a31a46237', '2021-06-18 10:04:32', '2599', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('13ef4436-8686-4937-bfa4-c8d20f2fc18d', '2021-06-18 15:45:03', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('14d40c44-abe5-44e0-aca5-6d54d9d1a469', '2021-06-18 15:29:42', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('16923778-58f6-4660-8173-5254a356f621', '2021-06-18 15:43:47', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('19ccd207-a249-42cf-806f-36762c3189ce', '2021-06-18 09:04:18', '2298', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', '测试评论');
INSERT INTO `orders` VALUES ('1e0ea051-329b-47b8-8bbe-5bdd36e9d1fd', '2021-06-18 09:56:30', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('25148d34-f47c-48c9-adc8-89383e1942f0', '2021-06-18 15:50:18', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('29cc8856-ef5e-4cfa-b1e0-2caf18f7afd8', '2019-11-05 16:31:47', '4199', '1', '广东省东莞市', 'aaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', '测试评论');
INSERT INTO `orders` VALUES ('2ae526b1-0f49-41c2-9ec8-c3357e53c36d', '2021-06-18 15:53:19', '6599', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('2b2b7a71-3e10-45bb-aa49-77dfe7f83a07', '2021-06-18 09:52:25', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('2e28e318-6c58-4982-9173-90e9a5a17227', '2021-06-17 15:01:40', '2599', '0', null, 'aaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', '测试评论');
INSERT INTO `orders` VALUES ('2ea104d9-d439-441d-b9b6-b22165faffcb', '2021-06-16 15:31:27', '6087', '0', null, 'aaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', '测试评论');
INSERT INTO `orders` VALUES ('2ececf6e-4390-4bf1-8d4a-2be7843d11e8', '2021-06-18 18:09:41', '0', '0', '广西贵港附近的酸辣粉骄傲酸辣粉', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('30c0c4bb-ffc0-42ce-be5b-3b2e5735b4b3', '2021-06-18 15:29:24', '2298', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('323f6ff6-5de6-4529-ab15-97894c7cc9f8', '2021-06-18 14:55:23', '2599', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('3457a79d-c4bf-4e79-a783-f947cbcd8dc1', '2021-06-18 09:55:06', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('34b49b6d-cedd-472d-9171-2785a21eb53e', '2021-06-18 11:23:52', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('35ebabc2-9fa7-4431-be20-92967f8f196d', '2021-06-18 15:09:44', '2298', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('3821c962-4198-422d-8100-6e1da1aeeb49', '2021-06-18 11:24:36', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('3ffe50a6-d479-4e5e-a4e7-52c289d6e4df', '2021-06-16 15:14:26', '4199', '0', null, 'aaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', '测试评论');
INSERT INTO `orders` VALUES ('41cdf28d-32ef-4e32-b285-46ff82db382f', '2021-06-18 15:35:23', '2298', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('42eed974-6fd6-4bd8-b0be-ad3c6f9a8ca0', '2021-06-18 18:08:55', '0', '0', '广西贵港附近的酸辣粉骄傲酸辣粉', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('45d7a095-a91c-44e3-a188-e9840390e409', '2021-06-18 11:24:30', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('46f41df7-cdac-4002-8ec2-15f94e4c9eb2', '2021-06-18 11:49:04', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('48737fe6-3e1a-414a-8b17-f00df183a9fe', '2021-06-18 18:09:16', '715254', '0', '广西贵港附近的酸辣粉骄傲酸辣粉', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('4cac89af-a2c9-4a84-8dc1-b09093595a62', '2021-06-18 11:32:58', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('4e54eb91-210b-4cf2-a6b9-e26c8604bb46', '2021-06-18 18:20:47', '0', '0', '广西贵港', '啊啊啊啊', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('4eed7c09-a514-4a54-b0af-7583d079e271', '2021-06-18 15:36:32', '2499', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('4fc036f0-6cbc-494b-82a3-0dcc23883a72', '2021-06-18 15:27:02', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('54659269-e162-45a1-9f11-aa869cceb485', '2021-06-18 09:56:42', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('54d001ae-0c01-41b5-8bfb-9a12999e1d2f', '2021-06-18 11:29:09', '6688', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('5af0f1fb-64f4-4469-bbc0-151e8557b5f2', '2021-06-18 09:56:40', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('5c1ebcf1-6e3f-4796-9433-7476b46a8291', '2021-06-18 10:02:01', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('5f5e1269-466b-4d87-be43-fb5c0f8ce050', '2021-06-18 15:01:32', '2299', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('60ea082a-f025-45c7-89d1-269fe1edd501', '2021-06-18 15:22:20', '2599', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('63c7fc84-7fd0-44dc-b0bb-75be7990f11a', '2021-06-18 18:20:35', '3888', '0', '广西贵港', '啊啊啊啊', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('690e4a79-cd02-4182-a4ca-33a206f5460b', '2021-06-18 15:22:07', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('693eb5bd-0488-4e48-a8ab-a0dc16e63651', '2021-06-18 11:37:06', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('6ca2c6fc-644e-4486-8580-19342b8db218', '2021-06-18 18:09:20', '0', '0', '广西贵港附近的酸辣粉骄傲酸辣粉', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('6d62c528-1485-41db-bd65-e1f17ddc8390', '2021-06-18 09:52:58', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('6fd4f183-e47b-42d7-be88-2fd5e2697d5e', '2021-06-18 14:55:20', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('7029db36-3878-44f3-8acf-9e8caba11646', '2021-06-18 15:04:00', '1799', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('70788b01-8db2-44c8-89ea-8304632eea5f', '2021-06-18 15:27:07', '2599', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('720965e4-eb18-42f6-9e9e-00e89ec5e9e0', '2021-06-18 15:09:41', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('722485c3-14d1-45ca-a9f0-5fb1fb636dd8', '2021-06-18 11:39:29', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('73cf699a-3096-4044-88cf-154142542185', '2021-06-18 09:19:05', '6688', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('77f29b0b-ac7c-4f48-8df1-dbf51d9fcc78', '2021-06-18 11:25:05', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('79a17cee-9779-4035-9298-6b28cc2023bb', '2021-06-18 15:29:22', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('79f2ad7f-e899-4e3e-83a5-0373de067c63', '2021-06-18 11:49:08', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('7c6567ef-413e-413f-9e08-e5f19b675ef3', '2021-06-18 15:39:38', '1299', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('7e637f63-0a3b-49e0-a467-42df4e3fc350', '2019-11-05 15:38:39', '6688', '4', null, 'aaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', '苹果手机一般般');
INSERT INTO `orders` VALUES ('7f1a2492-02f8-4040-ab5e-46706335e944', '2019-11-05 15:32:32', '4087', '0', null, 'aaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', '测试评论');
INSERT INTO `orders` VALUES ('87da9057-9694-495c-8783-97b6b4d862ad', '2021-06-17 15:18:14', '2298', '0', null, 'aaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', '测试评论');
INSERT INTO `orders` VALUES ('887d63da-017f-4550-81b3-89f6c2b7cd14', '2021-06-18 15:01:29', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('893aba69-a15c-4b13-8949-ccafce222ec4', '2021-06-18 11:37:05', '1299', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('8e5bdf84-ed02-40c6-b1da-645820470fd8', '2021-06-18 15:53:16', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('8ea11b0f-0f4c-4ff7-b6fe-bcd320653784', '2021-06-18 11:28:18', '1299', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('8eebeabc-b39e-4a62-a08a-806fecc2e6a0', '2021-06-18 11:31:17', '1299', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('9006a801-d4e6-444e-9604-afc9d003c9e3', '2021-06-18 15:05:09', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('92e0583c-f1b7-497a-ae8c-f6ef59d70c02', '2021-06-18 11:37:03', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('96ad2704-e1bb-4d90-ab9a-4b622b19a9c0', '2021-06-17 15:02:13', '2599', '0', null, 'aaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', '测试评论');
INSERT INTO `orders` VALUES ('970ad9c0-c867-4e27-bcf4-aba88e6674de', '2021-06-18 18:19:48', '0', '0', '广西贵港', '啊啊啊啊', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('996e19f5-ebf7-42a1-b63b-72ab2cd57535', '2021-06-18 15:35:21', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('9ab2bc06-f1ff-4d2a-afbd-6e042c836d5c', '2021-06-18 15:03:58', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('a1ccc17a-071a-473f-aa03-610f586a1d47', '2021-06-16 15:25:47', '4199', '0', null, 'aaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', '测试评论');
INSERT INTO `orders` VALUES ('a2ab4a87-b80a-4835-9fff-f5b8fb36997d', '2021-06-18 15:21:17', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('a556d76e-e0f5-42e8-9efc-9ffa5e92762b', '2021-06-18 09:56:45', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('ad6608b8-2474-4bea-ac4f-f57e8c412109', '2021-06-18 15:51:50', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('af6a69d3-3b95-4132-a608-34d667f68813', '2021-06-18 14:59:27', '6688', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('b062bdc7-1d93-4b57-a2a7-6ca4d864dbe1', '2021-06-18 15:21:19', '2599', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('b661e3ee-2430-47ce-a23d-3119d8990544', '2021-06-18 11:51:44', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('b7f7e119-a849-45f0-b74c-d865db97dc09', '2021-06-18 15:51:54', '6688', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('b7fddd24-6652-4d01-ad49-8f70dfd9de82', '2021-06-18 14:59:24', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('b98412a0-6042-47ba-8150-2b646a1dfb8b', '2021-06-18 16:13:19', '2599', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('bd9e0ba6-2f1d-41d5-92df-24a3c0607383', '2021-06-18 15:36:30', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('be60d3ea-8e5f-4366-985c-faa76d58a978', '2021-06-18 11:47:27', '6688', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('bee04702-2605-4d7a-a3c3-2686e1b6e877', '2021-06-18 11:49:06', '2298', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('c1937cb2-dd24-4946-bd95-86b9e5dcd211', '2021-06-18 15:41:10', '2599', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('c4cba8da-a75e-4819-939b-0d6f0250dd0e', '2021-06-18 15:37:47', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('c5b76043-4911-44f8-85bb-b69dd60743d6', '2021-06-18 15:37:49', '1799', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('c7b65696-21c7-40e1-a1cf-e13c70a982c0', '2021-06-18 15:43:49', '1799', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('c7e5dc3a-c809-4d40-914d-11f9deeaa281', '2021-06-18 18:20:29', '0', '0', '广西贵港', '啊啊啊啊', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('ca72e727-c881-45bc-9922-b169ad8d5024', '2021-06-18 18:09:09', '0', '0', '广西贵港附近的酸辣粉骄傲酸辣粉', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('cbd21426-4342-4871-853d-e1043afb218e', '2021-06-18 09:52:05', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('d0041ec7-3aa6-4272-b0f8-51bd68ffb50d', '2021-06-16 16:33:24', '27576', '0', null, 'aaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', '测试评论');
INSERT INTO `orders` VALUES ('d01f0b37-5343-487e-8566-923ed10e1d81', '2019-11-05 17:21:43', '2599', '4', '广东创新职院', '王五', '12345678910', '67305618-b58e-4b8d-9a97-a918a3ac20d1', '华为挺不错！！！！');
INSERT INTO `orders` VALUES ('d5509892-b98b-45b0-9d10-70713f650ea1', '2021-06-18 15:39:34', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('d8213c92-b821-48d8-993e-f636af4cc555', '2021-06-16 15:28:53', '2298', '0', null, 'aaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', '测试评论');
INSERT INTO `orders` VALUES ('d90b61d8-31b7-47d9-b072-3d182ce41e49', '2021-06-18 15:43:50', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('daa59b98-744c-4c43-abfd-5ad9741ae4b7', '2021-06-18 15:45:08', '6688', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('dafb2e2b-40c3-4fff-8ff3-a070fedbbb22', '2021-06-18 09:51:10', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('def155ba-3840-4a9f-a44f-a106dc8d26fe', '2021-06-18 11:47:23', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('e2919194-7e27-4c58-9822-251320f4caa5', '2021-06-18 15:05:11', '2298', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('e3112385-2c11-41a8-891c-8a1d0956e8e8', '2021-06-18 15:41:07', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('e4b1ff44-278b-48fe-8bd3-c0cf6e911b82', '2021-06-16 15:25:14', '4897', '0', null, 'aaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', '测试评论');
INSERT INTO `orders` VALUES ('e5b7e615-9bd5-4360-8821-7e699fc77c08', '2021-06-18 11:31:14', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('e80bf1d4-f385-4c20-a221-6bed510f6954', '2021-06-18 10:04:31', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('ea9bf9d0-31a9-4380-ab0a-9a10dd83ae78', '2021-06-18 15:33:52', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('ec74ba3d-9118-4ea3-aaff-cef96c5fcb4f', '2021-06-18 11:33:00', '2599', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('f0de2668-538b-46a2-8239-85b4d7aa5f7d', '2021-06-18 11:51:53', '2298', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('f10a5600-4413-4e2f-aa0f-7ea643c4878b', '2021-06-18 15:05:13', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('f5c788d3-84bd-414d-8683-c8f3fb422aa0', '2021-06-16 15:23:04', '2599', '0', null, 'aaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', '测试评论');
INSERT INTO `orders` VALUES ('f7085771-4024-4bc5-a5ba-20cea365a7f9', '2021-06-16 15:27:04', '2599', '0', null, 'aaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', '测试评论');
INSERT INTO `orders` VALUES ('fd4bdeee-e79e-4f96-9cd5-3d7fe3161cda', '2021-06-18 11:24:40', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);
INSERT INTO `orders` VALUES ('fde7dded-528e-4113-9941-9ffdc37cf10e', '2021-06-18 15:29:27', '0', '0', '广西贵港', 'aaaaaa', '15723689921', '373eb242933b4f5ca3bd43503c34668b', null);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `pid` varchar(50) NOT NULL,
  `pname` varchar(50) DEFAULT NULL,
  `market_price` double DEFAULT NULL,
  `shop_price` double DEFAULT NULL,
  `pimage` varchar(200) DEFAULT NULL,
  `pdate` date DEFAULT NULL,
  `is_hot` int DEFAULT NULL,
  `pdesc` varchar(255) DEFAULT NULL,
  `pflag` int DEFAULT NULL,
  `cid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `sfk_0001` (`cid`),
  CONSTRAINT `sfk_0001` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '小米 4c 标准版', '1399', '1299', 'products/1/c_0001.jpg', '2015-11-02', '1', '小米 4c 标准版 全网通 白色 移动联通电信4G手机 双卡双待', '0', '1');
INSERT INTO `product` VALUES ('10', '华为 Ascend Mate7', '2699', '2599', 'products/1/c_0010.jpg', '2015-11-02', '1', '华为 Ascend Mate7 月光银 移动4G手机 双卡双待双通6英寸高清大屏，纤薄机身，智能超八核，按压式指纹识别！!选择下方“移动老用户4G飞享合约”，无需换号，还有话费每月返还！', '0', '1');
INSERT INTO `product` VALUES ('11', 'vivo X5Pro', '2399', '2298', 'products/1/c_0014.jpg', '2015-11-02', '1', '移动联通双4G手机 3G运存版 极光白【购机送蓝牙耳机+蓝牙自拍杆】新升级3G运行内存·双2.5D弧面玻璃·眼球识别技术', '0', '1');
INSERT INTO `product` VALUES ('12', '努比亚（nubia）My 布拉格', '1899', '1799', 'products/1/c_0013.jpg', '2015-11-02', '0', '努比亚（nubia）My 布拉格 银白 移动联通4G手机 双卡双待【嗨11，下单立减100】金属机身，快速充电！布拉格相机全新体验！', '0', '1');
INSERT INTO `product` VALUES ('13', '华为 麦芒4', '2599', '2499', 'products/1/c_0012.jpg', '2015-11-02', '1', '华为 麦芒4 晨曦金 全网通版4G手机 双卡双待金属机身 2.5D弧面屏 指纹解锁 光学防抖', '0', '1');
INSERT INTO `product` VALUES ('14', 'vivo X5M', '1899', '1799', 'products/1/c_0011.jpg', '2015-11-02', '0', 'vivo X5M 移动4G手机 双卡双待 香槟金【购机送蓝牙耳机+蓝牙自拍杆】5.0英寸大屏显示·八核双卡双待·Hi-Fi移动KTV', '0', '1');
INSERT INTO `product` VALUES ('15', 'Apple iPhone 6 (A1586)', '4399', '4288', 'products/1/c_0015.jpg', '2015-11-02', '1', 'Apple iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机长期省才是真的省！点击购机送费版，月月送话费，月月享优惠，畅享4G网络，就在联通4G！', '0', '1');
INSERT INTO `product` VALUES ('16', '华为 HUAWEI Mate S 臻享版', '4200', '4087', 'products/1/c_0016.jpg', '2015-11-03', '0', '华为 HUAWEI Mate S 臻享版 手机 极昼金 移动联通双4G(高配)满星评价即返30元话费啦；买就送电源+清水套+创意手机支架；优雅弧屏，mate7升级版', '0', '1');
INSERT INTO `product` VALUES ('17', '索尼(SONY) E6533 Z3+', '4099', '3999', 'products/1/c_0017.jpg', '2015-11-02', '0', '索尼(SONY) E6533 Z3+ 双卡双4G手机 防水防尘 涧湖绿索尼z3专业防水 2070万像素 移动联通双4G', '0', '1');
INSERT INTO `product` VALUES ('18', 'HTC One M9+', '3599', '3499', 'products/1/c_0018.jpg', '2015-11-02', '0', 'HTC One M9+（M9pw） 金银汇 移动联通双4G手机5.2英寸，8核CPU，指纹识别，UltraPixel超像素前置相机+2000万/200万后置双镜头相机！降价特卖，惊喜不断！', '0', '1');
INSERT INTO `product` VALUES ('19', 'HTC Desire 826d 32G 臻珠白', '1599', '1469', 'products/1/c_0020.jpg', '2015-11-02', '1', '后置1300万+UltraPixel超像素前置摄像头+【双】前置扬声器+5.5英寸【1080p】大屏！', '0', '1');
INSERT INTO `product` VALUES ('2', '中兴 AXON', '2899', '2699', 'products/1/c_0002.jpg', '2015-11-05', '1', '中兴 AXON 天机 mini 压力屏版 B2015 华尔金 移动联通电信4G 双卡双待', '0', '1');
INSERT INTO `product` VALUES ('20', '小米 红米2A 增强版 白色', '649', '549', 'products/1/c_0019.jpg', '2015-11-02', '0', '新增至2GB 内存+16GB容量！4G双卡双待，联芯 4 核 1.5GHz 处理器！', '0', '1');
INSERT INTO `product` VALUES ('21', '魅族 魅蓝note2 16GB 白色', '1099', '999', 'products/1/c_0021.jpg', '2015-11-02', '0', '现货速抢，抢完即止！5.5英寸1080P分辨率屏幕，64位八核1.3GHz处理器，1300万像素摄像头，双色温双闪光灯！', '0', '1');
INSERT INTO `product` VALUES ('22', '三星 Galaxy S5 (G9008W) 闪耀白', '2099', '1999', 'products/1/c_0022.jpg', '2015-11-02', '1', '5.1英寸全高清炫丽屏，2.5GHz四核处理器，1600万像素', '0', '1');
INSERT INTO `product` VALUES ('23', 'sonim XP7700 4G手机', '1799', '1699', 'products/1/c_0023.jpg', '2015-11-09', '1', '三防智能手机 移动/联通双4G 安全 黑黄色 双4G美国军工IP69 30天长待机 3米防水防摔 北斗', '0', '1');
INSERT INTO `product` VALUES ('24', '努比亚（nubia）Z9精英版 金色', '3988', '3888', 'products/1/c_0024.jpg', '2015-11-02', '1', '移动联通电信4G手机 双卡双待真正的无边框！金色尊贵版！4GB+64GB大内存！', '0', '1');
INSERT INTO `product` VALUES ('25', 'Apple iPhone 6 Plus (A1524) 16GB 金色', '5188', '4988', 'products/1/c_0025.jpg', '2015-11-02', '0', 'Apple iPhone 6 Plus (A1524) 16GB 金色 移动联通电信4G手机 硬货 硬实力', '0', '1');
INSERT INTO `product` VALUES ('26', 'Apple iPhone 6s (A1700) 64G 玫瑰金色', '6388', '6088', 'products/1/c_0026.jpg', '2015-11-02', '0', 'Apple iPhone 6 Plus (A1524) 16GB 金色 移动联通电信4G手机 硬货 硬实力', '0', '1');
INSERT INTO `product` VALUES ('27', '三星 Galaxy Note5（N9200）32G版', '5588', '5388', 'products/1/c_0027.jpg', '2015-11-02', '0', '旗舰机型！5.7英寸大屏，4+32G内存！不一样的SPen更优化的浮窗指令！赠无线充电板！', '0', '1');
INSERT INTO `product` VALUES ('28', '三星 Galaxy S6 Edge+（G9280）32G版 铂光金', '5999', '5888', 'products/1/c_0028.jpg', '2015-11-02', '0', '赠移动电源+自拍杆+三星OTG金属U盘+无线充电器+透明保护壳', '0', '1');
INSERT INTO `product` VALUES ('29', 'LG G4（H818）陶瓷白 国际版', '3018', '2978', 'products/1/c_0029.jpg', '2015-11-02', '0', '李敏镐代言，F1.8大光圈1600万后置摄像头，5.5英寸2K屏，3G+32G内存，LG年度旗舰机！', '0', '1');
INSERT INTO `product` VALUES ('3', '华为荣耀6', '1599', '1499', 'products/1/c_0003.jpg', '2015-11-02', '0', '荣耀 6 (H60-L01) 3GB内存标准版 黑色 移动4G手机', '0', '1');
INSERT INTO `product` VALUES ('30', '微软(Microsoft) Lumia 640 LTE DS (RM-1113)', '1099', '999', 'products/1/c_0030.jpg', '2015-11-02', '0', '微软首款双网双卡双4G手机，5.0英寸高清大屏，双网双卡双4G！', '0', '1');
INSERT INTO `product` VALUES ('31', '宏碁（acer）ATC705-N50 台式电脑', '2399', '2299', 'products/1/c_0031.jpg', '2015-11-02', '0', '爆款直降，满千减百，品质宏碁，特惠来袭，何必苦等11.11，早买早便宜！', '0', '2');
INSERT INTO `product` VALUES ('32', 'Apple MacBook Air MJVE2CH/A 13.3英寸', '6788', '6688', 'products/1/c_0032.jpg', '2015-11-02', '0', '宽屏笔记本电脑 128GB 闪存', '0', '2');
INSERT INTO `product` VALUES ('33', '联想（ThinkPad） 轻薄系列E450C(20EH0001CD)', '4399', '4199', 'products/1/c_0033.jpg', '2015-11-02', '0', '联想（ThinkPad） 轻薄系列E450C(20EH0001CD)14英寸笔记本电脑(i5-4210U 4G 500G 2G独显 Win8.1)', '0', '2');
INSERT INTO `product` VALUES ('34', '联想（Lenovo）小新V3000经典版', '4599', '4499', 'products/1/c_0034.jpg', '2015-11-02', '0', '14英寸超薄笔记本电脑（i7-5500U 4G 500G+8G SSHD 2G独显 全高清屏）黑色满1000減100，狂减！火力全开，横扫3天！', '0', '2');
INSERT INTO `product` VALUES ('35', '华硕（ASUS）经典系列R557LI', '3799', '3699', 'products/1/c_0035.jpg', '2015-11-02', '0', '15.6英寸笔记本电脑（i5-5200U 4G 7200转500G 2G独显 D刻 蓝牙 Win8.1 黑色）', '0', '2');
INSERT INTO `product` VALUES ('36', '华硕（ASUS）X450J', '4599', '4399', 'products/1/c_0036.jpg', '2015-11-02', '0', '14英寸笔记本电脑 （i5-4200H 4G 1TB GT940M 2G独显 蓝牙4.0 D刻 Win8.1 黑色）', '0', '2');
INSERT INTO `product` VALUES ('37', '戴尔（DELL）灵越 飞匣3000系列', '3399', '3299', 'products/1/c_0037.jpg', '2015-11-03', '0', ' Ins14C-4528B 14英寸笔记本（i5-5200U 4G 500G GT820M 2G独显 Win8）黑', '0', '2');
INSERT INTO `product` VALUES ('38', '惠普(HP)WASD 暗影精灵', '5699', '5499', 'products/1/c_0038.jpg', '2015-11-02', '0', '15.6英寸游戏笔记本电脑(i5-6300HQ 4G 1TB+128G SSD GTX950M 4G独显 Win10)', '0', '2');
INSERT INTO `product` VALUES ('39', 'Apple 配备 Retina 显示屏的 MacBook', '11299', '10288', 'products/1/c_0039.jpg', '2015-11-02', '0', 'Pro MF840CH/A 13.3英寸宽屏笔记本电脑 256GB 闪存', '0', '2');
INSERT INTO `product` VALUES ('4', '联想 P1', '2199', '1999', 'products/1/c_0004.jpg', '2015-11-02', '0', '联想 P1 16G 伯爵金 移动联通4G手机充电5分钟，通话3小时！科技源于超越！品质源于沉淀！5000mAh大电池！高端商务佳配！', '0', '1');
INSERT INTO `product` VALUES ('40', '机械革命（MECHREVO）MR X6S-M', '6799', '6599', 'products/1/c_0040.jpg', '2015-11-02', '0', '15.6英寸游戏本(I7-4710MQ 8G 64GSSD+1T GTX960M 2G独显 IPS屏 WIN7)黑色', '0', '2');
INSERT INTO `product` VALUES ('41', '神舟（HASEE） 战神K660D-i7D2', '5699', '5499', 'products/1/c_0041.jpg', '2015-11-02', '0', '15.6英寸游戏本(i7-4710MQ 8G 1TB GTX960M 2G独显 1080P)黑色', '0', '2');
INSERT INTO `product` VALUES ('42', '微星（MSI）GE62 2QC-264XCN', '6199', '5999', 'products/1/c_0042.jpg', '2015-11-02', '0', '15.6英寸游戏笔记本电脑（i5-4210H 8G 1T GTX960MG DDR5 2G 背光键盘）黑色', '0', '2');
INSERT INTO `product` VALUES ('43', '雷神（ThundeRobot）G150S', '5699', '5499', 'products/1/c_0043.jpg', '2015-11-02', '0', '15.6英寸游戏本 ( i7-4710MQ 4G 500G GTX950M 2G独显 包无亮点全高清屏) 金', '0', '2');
INSERT INTO `product` VALUES ('44', '惠普（HP）轻薄系列 HP', '3199', '3099', 'products/1/c_0044.jpg', '2015-11-02', '0', '15-r239TX 15.6英寸笔记本电脑（i5-5200U 4G 500G GT820M 2G独显 win8.1）金属灰', '0', '2');
INSERT INTO `product` VALUES ('45', '未来人类（Terrans Force）T5', '10999', '9899', 'products/1/c_0045.jpg', '2015-11-02', '0', '15.6英寸游戏本（i7-5700HQ 16G 120G固态+1TB GTX970M 3G GDDR5独显）黑', '0', '2');
INSERT INTO `product` VALUES ('46', '戴尔（DELL）Vostro 3800-R6308 台式电脑', '3299', '3199', 'products/1/c_0046.jpg', '2015-11-02', '0', '（i3-4170 4G 500G DVD 三年上门服务 Win7）黑', '0', '2');
INSERT INTO `product` VALUES ('47', '联想（Lenovo）H3050 台式电脑', '5099', '4899', 'products/1/c_0047.jpg', '2015-11-11', '0', '（i5-4460 4G 500G GT720 1G独显 DVD 千兆网卡 Win10）23英寸', '0', '2');
INSERT INTO `product` VALUES ('48', 'Apple iPad mini 2 ME279CH/A', '2088', '1888', 'products/1/c_0048.jpg', '2015-11-02', '0', '（配备 Retina 显示屏 7.9英寸 16G WLAN 机型 银色）', '0', '2');
INSERT INTO `product` VALUES ('49', '小米（MI）7.9英寸平板', '1399', '1299', 'products/1/c_0049.jpg', '2015-11-02', '0', 'WIFI 64GB（NVIDIA Tegra K1 2.2GHz 2G 64G 2048*1536视网膜屏 800W）白色', '0', '2');
INSERT INTO `product` VALUES ('5', '摩托罗拉 moto x（x+1）', '1799', '1699', 'products/1/c_0005.jpg', '2015-11-01', '0', '摩托罗拉 moto x（x+1）(XT1085) 32GB 天然竹 全网通4G手机11月11天！MOTO X震撼特惠来袭！1699元！带你玩转黑科技！天然材质，原生流畅系统！', '0', '1');
INSERT INTO `product` VALUES ('50', 'Apple iPad Air 2 MGLW2CH/A', '2399', '2299', 'products/1/c_0050.jpg', '2015-11-12', '0', '（9.7英寸 16G WLAN 机型 银色）', '0', '2');
INSERT INTO `product` VALUES ('6', '魅族 MX5 16GB 银黑色', '1899', '1799', 'products/1/c_0006.jpg', '2015-11-02', '0', '魅族 MX5 16GB 银黑色 移动联通双4G手机 双卡双待送原厂钢化膜+保护壳+耳机！5.5英寸大屏幕，3G运行内存，2070万+500万像素摄像头！长期省才是真的省！', '0', '1');
INSERT INTO `product` VALUES ('7', '三星 Galaxy On7', '1499', '1398', 'products/1/c_0007.jpg', '2015-11-14', '0', '三星 Galaxy On7（G6000）昂小七 金色 全网通4G手机 双卡双待新品火爆抢购中！京东尊享千元良机！5.5英寸高清大屏！1300+500W像素！评价赢30元话费券！', '0', '1');
INSERT INTO `product` VALUES ('8', 'NUU NU5', '1288', '1190', 'products/1/c_0008.jpg', '2015-11-02', '0', 'NUU NU5 16GB 移动联通双4G智能手机 双卡双待 晒单有礼 晨光金香港品牌 2.5D弧度前后钢化玻璃 随机附赠手机套+钢化贴膜 晒单送移动电源+蓝牙耳机', '0', '1');
INSERT INTO `product` VALUES ('9', '乐视（Letv）乐1pro（X800）', '2399', '2299', 'products/1/c_0009.jpg', '2015-11-02', '0', '乐视（Letv）乐1pro（X800）64GB 金色 移动联通4G手机 双卡双待乐视生态UI+5.5英寸2K屏+高通8核处理器+4GB运行内存+64GB存储+1300万摄像头！', '0', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` varchar(50) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `state` int DEFAULT NULL,
  `code` varchar(64) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('373eb242933b4f5ca3bd43503c34668b', 'ccc', 'ccc', '啊啊啊啊', 'bbb@store.com', '15723689921', '2015-11-01', '男', '0', '9782f3e837ff422b9aee8b6381ccf927bdd9d2ced10d48f4ba4b9f187edf7738', '广西贵港');
INSERT INTO `user` VALUES ('3ca76a75e4f64db2bacd0974acc7c897', 'bb', 'bb', '张三', 'bbb@store.com', '15723689921', '1990-02-01', '男', '0', '1258e96181a9457987928954825189000bae305094a042d6bd9d2d35674684e6', null);
INSERT INTO `user` VALUES ('62145f6e66ea4f5cbe7b6f6b954917d3', 'cc', 'cc', '张三', 'bbb@store.com', '15723689921', '2015-11-03', '男', '0', '19f100aa81184c03951c4b840a725b6a98097aa1106a4a38ba1c29f1a496c231', null);
INSERT INTO `user` VALUES ('67305618-b58e-4b8d-9a97-a918a3ac20d1', 'lisi', '123456', '李四', '516464@faf.com', '15464665', '2017-06-14', '女', '0', null, '广东创新职院');
INSERT INTO `user` VALUES ('c95b15a864334adab3d5bb6604c6e1fc', 'bbb', 'bbb', '老王', 'bbb@store.com', '15712344823', '2000-02-01', '男', '0', '71a3a933353347a4bcacff699e6baa9c950a02f6b84e4f6fb8404ca06febfd6f', null);
INSERT INTO `user` VALUES ('f55b7d3a352a4f0782c910b2c70f1ea4', 'aaa', 'aaa', '小王', 'aaa@store.com', '15712344823', '2000-02-01', '男', '1', null, null);
