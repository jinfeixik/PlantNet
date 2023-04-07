/*
 Navicat Premium Data Transfer

 Source Server         : demo
 Source Server Type    : MySQL
 Source Server Version : 50561
 Source Host           : localhost:3306
 Source Schema         : db_plant

 Target Server Type    : MySQL
 Target Server Version : 50561
 File Encoding         : 65001

 Date: 26/01/2021 15:45:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `addressID` int(10) NOT NULL AUTO_INCREMENT,
  `userID` int(10) NOT NULL,
  `isDefault` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addressPhone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recipient` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `county` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addressInfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`addressID`) USING BTREE,
  INDEX `用户编号3`(`userID`) USING BTREE,
  CONSTRAINT `用户编号3` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (8, 10, '是', '13243452342', '小星星', '山西省', '太原市', '尖草坪区', '一巷');
INSERT INTO `address` VALUES (10, 1, '是', '15274455610', '中学生', '天津市', '天津市市辖区', '南开区', '小楼');
INSERT INTO `address` VALUES (11, 1, '否', '15274455610', '李先生', '天津市', '天津市市辖区', '河西区', '小巷子');
INSERT INTO `address` VALUES (12, 1, '否', '12367867531', '李', '河北省', '石家庄市', '井陉矿区', '一巷');

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `articleID` int(10) NOT NULL AUTO_INCREMENT,
  `plantID` int(10) NULL DEFAULT NULL,
  `articleTitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `articleContent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `articleAuthor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `articleImage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `articleCreateTime` datetime NULL DEFAULT NULL,
  `readTimes` int(10) NULL DEFAULT 0,
  `articleState` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `articleLikesNumber` int(10) NULL DEFAULT 0,
  `articleCollectNumber` int(10) NULL DEFAULT 0,
  `articleDescribe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`articleID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (8, 0, '1231311111', '<p>111111111111111111</p>', 'yang', 'plantResource/5cd17a3db59ef_190_auto.png', '2020-05-08 21:09:06', 12, '禁用', 0, 0, '1111111111111111111');
INSERT INTO `article` VALUES (9, 0, '这是一篇好文章', '<p style=\"text-align: center;\"><img src=\"http://localhost:8080/PlantNet/plantResource/20200508/1588943570433053151.jpg\" title=\"1588943570433053151.jpg\" alt=\"5cd17cddb1b23_190_auto.jpg\" width=\"706\" height=\"178\" style=\"width: 706px; height: 178px;\"/></p><p style=\"text-align: center;\">好文章配图</p><p style=\"text-align: center;\"><img src=\"http://localhost:8080/PlantNet/plantResource/20200508/1588943586218037531.jpg\" title=\"1588943586218037531.jpg\" alt=\"5e70c1d7be5a2_190_auto.jpg\" width=\"712\" height=\"141\" style=\"width: 712px; height: 141px;\"/></p><p style=\"line-height: 16px; text-align: center;\"><img src=\"http://localhost:8080/PlantNet/plantResource/20200508/1588943640509021143.jpg\" title=\"1588943640509021143.jpg\" alt=\"5cd17cddb1b23_190_auto.jpg\" width=\"718\" height=\"199\" style=\"width: 718px; height: 199px;\"/></p><p style=\"line-height: 16px;\"><br/></p><p style=\"line-height: 16px;\"><br/></p><p style=\"line-height: 16px; text-align: center;\"><img style=\"vertical-align: middle; margin-right: 2px;\" src=\"/PlantNet/ueditor/dialogs/attachment/fileTypeImages/icon_txt.gif\"/><a style=\"font-size:12px; color:#0066cc;\" href=\"http://localhost:8080/PlantNet/plantResource/20200508/1588943705361012938.txt\" title=\"wenbe.txt\">wenbe.txt</a></p><p style=\"line-height: 16px;\"><br/></p><p style=\"line-height: 16px;\"><br/></p><p style=\"line-height: 16px;\"><br/></p><p style=\"line-height: 16px;\"><br/></p><p style=\"line-height: 16px;\"><br/></p><p><br/></p>', 'yang', 'plantResource/5e70c1d7be5a2_190_auto.jpg', '2020-05-08 21:15:23', 40, '禁用', 0, 1, '真的是一篇好文章来着，不骗你');
INSERT INTO `article` VALUES (10, 0, '听说这5种花很喜欢喝啤酒，快试试！', '<p><img src=\"http://localhost:8080/PlantNet/plantResource/20200508/1588949973755003569.jpg\" title=\"1588949973755003569.jpg\" alt=\"5eb5170c9474b_190_auto.jpg\" width=\"647\" height=\"258\" style=\"width: 647px; height: 258px;\"/></p><p>啤酒花</p><p style=\"line-height: 16px;\"><img style=\"vertical-align: middle; margin-right: 2px;\" src=\"/PlantNet/ueditor/dialogs/attachment/fileTypeImages/icon_txt.gif\"/><a style=\"font-size:12px; color:#0066cc;\" href=\"http://localhost:8080/PlantNet/plantResource/20200508/1588950007902058852.txt\" title=\"leadXML.txt\">leadXML.txt</a></p><p><br/></p>', 'yang', 'plantResource/5eb5170c9474b_190_auto.jpg', '2020-05-08 23:00:12', 320, '禁用', 0, 1, '夏天天气炎热，男士们总喜欢在冰箱里冰上几瓶啤酒，中午来上一杯，冰爽又解暑，不过喝啤酒不只是人的专利，有些花花也很喜欢喝啤酒，一个月喝上1~2次，叶子油绿光亮，盆盆都长得旺！今天芽芽就简单给大家介');
INSERT INTO `article` VALUES (11, 0, '这5种花越晒越好看，几天就爆盆！', '<p><img src=\"http://localhost:8080/PlantNet/plantResource/20200510/1589053697733074961.jpg\" style=\"\" title=\"1589053697733074961.jpg\"/></p><p>这个也很棒</p><p><img src=\"http://localhost:8080/PlantNet/plantResource/20200510/1589053709750002844.jpg\" style=\"\" title=\"1589053709750002844.jpg\"/></p><p>这株花还不错</p><p><img src=\"http://localhost:8080/PlantNet/plantResource/20200510/1589053709759011875.jpg\" style=\"\" title=\"1589053709759011875.jpg\"/></p><p style=\"line-height: 16px;\"><img style=\"vertical-align: middle; margin-right: 2px;\" src=\"/PlantNet/ueditor/dialogs/attachment/fileTypeImages/icon_txt.gif\"/><a style=\"font-size:12px; color:#0066cc;\" href=\"http://localhost:8080/PlantNet/plantResource/20200510/1589053749374051449.txt\" title=\"wenbe.txt\">wenbe.txt</a></p><p>好图片啊都是</p><p><br/></p>', 'yang', 'plantResource/5eb61d4c63559_190_auto.jpg', '2020-05-10 03:49:15', 9, '可用', 0, 0, '每天看月季绣球，芽芽觉得自己有些看腻了，正巧，芽芽最近发现不少花友养了一些不怎么常见的漂亮花，芽芽立马就被吸引了注意力！接下来跟着芽芽一起来看看，到底都有哪些花吧！ 巴西紫牡丹 芽芽第');
INSERT INTO `article` VALUES (12, 0, '这10种植物太适合养生的人种了！', '<p style=\"text-align: center;\"><img src=\"http://localhost:8080/PlantNet/plantResource/20200510/1589054346106082000.jpeg\" style=\"width: 430px; height: 319px;\" title=\"1589054346106082000.jpeg\" width=\"430\" height=\"319\"/></p><p style=\"text-align: center;\">这是第一株花</p><p style=\"text-align: center;\"><img src=\"http://localhost:8080/PlantNet/plantResource/20200510/1589054354803093795.jpg\" style=\"width: 428px; height: 176px;\" title=\"1589054354803093795.jpg\" width=\"428\" height=\"176\"/></p><p style=\"text-align: center;\">这是第二朵</p><p style=\"text-align: center;\"><img src=\"http://localhost:8080/PlantNet/plantResource/20200510/1589054354809020962.jpg\" style=\"width: 430px; height: 259px;\" title=\"1589054354809020962.jpg\" width=\"430\" height=\"259\"/></p><p style=\"text-align: center;\">这是第三朵</p><p style=\"line-height: 16px; text-align: center;\"><img style=\"vertical-align: middle; margin-right: 2px;\" src=\"/PlantNet/ueditor/dialogs/attachment/fileTypeImages/icon_txt.gif\"/><a style=\"font-size:12px; color:#0066cc;\" href=\"http://localhost:8080/PlantNet/plantResource/20200510/1589054411167013209.txt\" title=\"leadXML.txt\">leadXML.txt</a></p><p style=\"text-align: center;\"><br/></p>', '小信', 'plantResource/5581a076a31ce_200_200.jpg', '2020-05-10 04:01:57', 20, '可用', 0, 2, '花卉植物非常多，但最受欢迎，养护最多的往往就是我们很熟悉的一些种类。今天芽芽就带大家细数那些家家有养，种植最多的十大花卉植物，你家绝对有一盆。 绿萝 绿萝种植的普及度想必是人尽皆知，就连不..');
INSERT INTO `article` VALUES (13, 0, '学会这几招，让花花轻松度夏！', '<p style=\"text-align:center\"><img src=\"http://localhost:8080/PlantNet/plantResource/20200510/1589055743328053533.jpg\" title=\"1589055743328053533.jpg\" alt=\"1589055743328053533.jpg\" width=\"560\" height=\"500\" border=\"0\" vspace=\"0\" style=\"width: 560px; height: 500px;\"/></p><p style=\"text-align: center;\">这是一篇简短的文章</p>', '小信', 'plantResource/5e70c1d7be5a2_190_auto.jpg', '2020-05-10 04:23:13', 15, '可用', 0, 1, '夏天对于很多花卉来说，也是个很不友好的季节，我国很多地区一到夏天，气温都会飙升到35度以上，再加上毒辣的阳光，人都有点受不了，花儿们更是一个个耷拉着脑袋，无精打采的，今天，芽芽就提前跟大家分享一些夏季');
INSERT INTO `article` VALUES (14, 0, '夏天不要养这5种花，死的太快了！', '', '小小二二', 'plantResource/5e70c1d7be5a2_190_auto.jpg', '2020-05-10 04:32:15', 9, '可用', 0, 0, '马上就立夏了，温度也一直飙升，难得的五一假期，芽芽都懒得出去玩耍，因为实在太热了。其实不只人怕热，很多花儿也特别怕热，天一热就容易死，根本活不过夏天。今天芽芽给大家总结5种夏天容易死的花，小白们最好不');
INSERT INTO `article` VALUES (15, 0, '养花太省钱了，这6种植物只要扦插就能活！', '<p><img src=\"http://localhost:8080/PlantNet/plantResource/20200510/1589057462541017194.png\" style=\"width: 560px; height: 500px;\" title=\"1589057462541017194.png\" width=\"560\" height=\"500\" border=\"0\" vspace=\"0\" alt=\"1589057462541017194.png\"/></p><p><img src=\"http://localhost:8080/PlantNet/plantResource/20200510/1589057462554069367.jpg\" style=\"width: 560px; height: 500px;\" title=\"1589057462554069367.jpg\" width=\"560\" height=\"500\" border=\"0\" vspace=\"0\" alt=\"1589057462554069367.jpg\"/></p><p><img src=\"http://localhost:8080/PlantNet/plantResource/20200510/1589057462541085531.jpg\" style=\"width: 560px; height: 500px;\" title=\"1589057462541085531.jpg\" width=\"560\" height=\"500\" border=\"0\" vspace=\"0\" alt=\"1589057462541085531.jpg\"/></p><p><br/></p>', '小小二二', 'plantResource/5e97b680bebcc_190_auto.jpg', '2020-05-10 04:52:21', 16, '可用', 0, 2, '很多刚接触养花的花友们一般都是选择在花店或者花卉市场买花。很多时候，植物在养护的过程中，通常会因为浇水施肥不当，或者阳光温度不适合，很容易就把花卉养死了，没办法只能不断买新的盆栽，还要担心会不会被花贩');
INSERT INTO `article` VALUES (16, 0, '小小文章', '<p>11</p>', '小小二二', 'plantResource/5e3e41f0c86fd_190_auto.jpg', '2020-05-10 04:54:06', 19, '可用', 0, 1, '哈哈哈哈哈哈真的不错了');
INSERT INTO `article` VALUES (17, 0, '测试文章', '<p><img src=\"http://localhost:8080/PlantNet/plantResource/20200607/1591543449266076990.jpg\" title=\"1591543449266076990.jpg\" alt=\"5e70c1d7be5a2_190_auto.jpg\"/></p><p>1111</p>', 'yang', 'plantResource/5c7a89bb7847c_190_auto.jpg', '2020-06-07 23:24:36', 4, '可用', 0, 0, '11362713627');

-- ----------------------------
-- Table structure for articlecollect
-- ----------------------------
DROP TABLE IF EXISTS `articlecollect`;
CREATE TABLE `articlecollect`  (
  `articleCollectID` int(10) NOT NULL AUTO_INCREMENT,
  `userID` int(10) NOT NULL,
  `articleID` int(10) NOT NULL,
  `articleCollectTime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`articleCollectID`) USING BTREE,
  INDEX `用户编号6`(`userID`) USING BTREE,
  INDEX `文章编号1`(`articleID`) USING BTREE,
  CONSTRAINT `用户编号6` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `文章编号1` FOREIGN KEY (`articleID`) REFERENCES `article` (`articleID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of articlecollect
-- ----------------------------
INSERT INTO `articlecollect` VALUES (7, 1, 9, '2020-05-10 01:32:00');
INSERT INTO `articlecollect` VALUES (12, 28, 12, '2020-05-10 04:14:50');
INSERT INTO `articlecollect` VALUES (14, 28, 13, '2020-05-10 04:23:30');
INSERT INTO `articlecollect` VALUES (18, 30, 12, '2020-05-10 04:50:00');
INSERT INTO `articlecollect` VALUES (20, 30, 15, '2020-05-10 04:52:43');
INSERT INTO `articlecollect` VALUES (21, 32, 15, '2020-05-10 04:58:21');
INSERT INTO `articlecollect` VALUES (23, 1, 10, '2020-05-10 10:18:05');
INSERT INTO `articlecollect` VALUES (25, 1, 16, '2020-05-16 20:33:54');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `commentID` int(10) NOT NULL AUTO_INCREMENT,
  `userID` int(10) NOT NULL,
  `replyID` int(10) NULL DEFAULT NULL,
  `commentTime` datetime NULL DEFAULT NULL,
  `commentContent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `commentStar` int(10) NULL DEFAULT NULL,
  `commentState` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `articleID` int(10) NOT NULL,
  PRIMARY KEY (`commentID`) USING BTREE,
  INDEX `用户编号4`(`userID`) USING BTREE,
  INDEX `文章编号2`(`articleID`) USING BTREE,
  CONSTRAINT `用户编号4` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `文章编号2` FOREIGN KEY (`articleID`) REFERENCES `article` (`articleID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 1, 0, '2020-05-09 14:31:57', '小兄弟', 0, '折叠', 10);
INSERT INTO `comment` VALUES (2, 1, 0, '2020-05-09 14:32:59', '我的好兄弟', 0, '折叠', 10);
INSERT INTO `comment` VALUES (3, 1, 0, '2020-05-09 14:33:15', '大撒大撒', 0, '折叠', 10);
INSERT INTO `comment` VALUES (4, 1, 0, '2020-05-09 14:33:40', '123333', 0, '显示', 10);
INSERT INTO `comment` VALUES (5, 1, 0, '2020-05-09 14:35:02', '小说', 0, '显示', 10);
INSERT INTO `comment` VALUES (6, 1, 0, '2020-05-09 14:36:25', '兄弟，有点东西', 0, '显示', 10);
INSERT INTO `comment` VALUES (7, 1, 0, '2020-05-09 14:36:49', '好的了', 0, '显示', 9);
INSERT INTO `comment` VALUES (8, 1, 0, '2020-05-09 14:39:22', '21212', 0, '显示', 8);
INSERT INTO `comment` VALUES (9, 1, 0, '2020-05-09 14:42:14', '好的哟', 0, '显示', 10);
INSERT INTO `comment` VALUES (10, 1, 0, '2020-05-09 15:30:38', '小东西', 0, '显示', 10);
INSERT INTO `comment` VALUES (11, 1, 0, '2020-05-09 15:32:57', '这篇文章还真不错\r\n', 0, '显示', 9);
INSERT INTO `comment` VALUES (12, 10, 0, '2020-05-09 15:44:04', '这是另一个评论', 0, '折叠', 10);
INSERT INTO `comment` VALUES (13, 1, 0, '2020-05-09 16:28:38', 'dsad1', 0, '折叠', 9);
INSERT INTO `comment` VALUES (14, 1, 0, '2020-05-10 03:50:41', '好好看！', 0, '显示', 11);
INSERT INTO `comment` VALUES (15, 28, 0, '2020-05-10 04:02:30', '这是朵好花啊', 0, '显示', 12);
INSERT INTO `comment` VALUES (16, 28, 0, '2020-05-10 04:23:28', '小兄弟', 0, '显示', 13);
INSERT INTO `comment` VALUES (17, 30, 0, '2020-05-10 04:26:31', '阳光洒在肉肉上的时候，闪闪发光，因为它们笑了。', 0, '显示', 13);
INSERT INTO `comment` VALUES (18, 30, 0, '2020-05-10 04:29:07', '阳光洒在肉肉上的时候，闪闪发光，因为它们笑了。', 0, '显示', 13);
INSERT INTO `comment` VALUES (19, 30, 0, '2020-05-10 04:29:44', '这个小黄花不错', 0, '显示', 12);
INSERT INTO `comment` VALUES (20, 30, 0, '2020-05-10 04:33:19', '小兄弟', 0, '显示', 14);
INSERT INTO `comment` VALUES (21, 30, 0, '2020-05-10 04:33:58', '嗯嗯', 0, '显示', 13);
INSERT INTO `comment` VALUES (22, 30, 0, '2020-05-10 04:49:52', '可以的\n', 0, '显示', 12);
INSERT INTO `comment` VALUES (23, 30, 0, '2020-05-10 04:52:32', '哈哈哈', 0, '显示', 15);
INSERT INTO `comment` VALUES (24, 32, 0, '2020-05-10 04:58:17', '嗯嗯，正好', 0, '显示', 15);
INSERT INTO `comment` VALUES (25, 1, 0, '2020-05-10 10:37:03', '沙发沙发！', 0, '显示', 16);
INSERT INTO `comment` VALUES (26, 1, 0, '2020-05-16 20:33:47', '好文章', 0, '显示', 16);
INSERT INTO `comment` VALUES (27, 10, 0, '2020-05-16 22:23:40', '11', 0, '显示', 16);
INSERT INTO `comment` VALUES (28, 10, 0, '2020-05-16 22:23:47', 'hahah', 0, '显示', 16);
INSERT INTO `comment` VALUES (29, 1, 0, '2020-06-07 23:21:11', 'xio', 0, '折叠', 16);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `orderID` int(10) NOT NULL AUTO_INCREMENT,
  `userID` int(10) NOT NULL,
  `plantDetailsID` int(10) NOT NULL,
  `orderNumber` int(10) NULL DEFAULT 0,
  `orderCreateTime` datetime NULL DEFAULT NULL,
  `paymentMethod` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addressID` int(10) NOT NULL,
  `orderState` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `orderAmount` float(10, 2) NULL DEFAULT 0.00,
  `orderCode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`orderID`) USING BTREE,
  INDEX `用户编号2`(`userID`) USING BTREE,
  INDEX `详情编号3`(`plantDetailsID`) USING BTREE,
  CONSTRAINT `用户编号2` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `详情编号3` FOREIGN KEY (`plantDetailsID`) REFERENCES `plantdetails` (`plantDetailsID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (8, 1, 6, 3, '2020-05-06 17:55:18', '支付宝', 9, '已完成', 66.00, '202056175518397');
INSERT INTO `order` VALUES (9, 2, 5, 1, '2020-05-06 17:58:47', '支付宝', 0, '已发货', 11.00, '202056175847189');
INSERT INTO `order` VALUES (12, 1, 6, 6, '2020-05-06 19:04:32', '支付宝', 5, '已完成', 132.00, '20205619432909');
INSERT INTO `order` VALUES (13, 1, 7, 1, '2020-05-07 18:17:13', '支付宝', 4, '已完成', 3.00, '202057181713474');
INSERT INTO `order` VALUES (14, 32, 6, 3, '2020-05-10 05:00:40', '支付宝', 0, '已完成', 66.00, '20205105040812');
INSERT INTO `order` VALUES (15, 1, 6, 1, '2020-05-10 09:23:16', '支付宝', 10, '待支付', 22.00, '20205109231651');
INSERT INTO `order` VALUES (16, 1, 7, 3, '2020-06-07 23:22:02', '支付宝', 11, '待支付', 9.00, '20206723222703');

-- ----------------------------
-- Table structure for plant
-- ----------------------------
DROP TABLE IF EXISTS `plant`;
CREATE TABLE `plant`  (
  `plantID` int(10) NOT NULL AUTO_INCREMENT,
  `plantName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `plantState` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `plantCreateTime` datetime NOT NULL,
  `plantAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `viewTimes` int(10) NULL DEFAULT 0,
  `plantType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `plantLikesNumber` int(10) NULL DEFAULT 0,
  `plantCollectNumber` int(10) NULL DEFAULT 0,
  `plantEnglishName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`plantID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of plant
-- ----------------------------
INSERT INTO `plant` VALUES (1, '转运竹', '已上架', '2020-06-04 16:40:16', '西双版纳', 96, '趣味类,观赏,阳台,夏季,留心养殖', 0, 3, 'Dracaena sanderiana');
INSERT INTO `plant` VALUES (32, '白斑玉露', '已上架', '2020-06-04 16:39:44', '西双版纳', 18, '芳香类,吸甲醛,庭院,null,留心养殖', 0, 0, 'Dracaena sanderiana');
INSERT INTO `plant` VALUES (36, '测试花', '已上架', '2020-06-04 16:38:51', '', 0, '芳香类,观赏,庭院,null,null', 0, 0, '1');
INSERT INTO `plant` VALUES (37, '小撒花', '已上架', '2020-06-04 16:39:12', '', 10, '观果类,null,null,null,null', 0, 1, 'cc');
INSERT INTO `plant` VALUES (38, '大王花', '已上架', '2020-06-04 16:39:07', '', 0, '芳香类,防辐射,窗台,null,留心养殖', 0, 0, '');
INSERT INTO `plant` VALUES (43, '黄花', '已上架', '2020-06-04 16:39:04', '', 6, 'null,净化空气,null,null,null', 0, 1, '');
INSERT INTO `plant` VALUES (44, '小花', '已上架', '2020-06-04 16:39:16', '', 3, '芳香类,null,null,null,null', 0, 0, '');
INSERT INTO `plant` VALUES (45, '奥普琳娜', '已上架', '2020-06-04 16:39:30', '澳大利亚', 1, 'null,吸甲醛,null,null,null', 0, 0, 'Graptoveria \'Opalina\'');
INSERT INTO `plant` VALUES (46, '江户紫', '已上架', '2020-06-04 16:39:19', '迦南', 0, '趣味类,净化空气,null,null,null', 0, 0, 'Kalanchoe marmorata');
INSERT INTO `plant` VALUES (57, '五彩红星', '已上架', '2020-06-04 16:39:41', '哈萨克斯坦', 0, '芳香类,吸甲醛,窗台,夏季,留心养殖', 0, 0, 'Noregelia carolinae cv.Meyendorffii');
INSERT INTO `plant` VALUES (59, '摇钱树', '已上架', '2020-06-04 16:40:08', '山里', 1, '趣味类,净化空气,窗台,春季,容易养殖', 0, 0, 'A cash cow');
INSERT INTO `plant` VALUES (60, '百合竹', '已上架', '2020-06-04 16:40:00', '临沂', 4, '趣味类,净化空气,阳台,秋季,留心养殖', 0, 0, 'Dracaena reflexa');
INSERT INTO `plant` VALUES (62, '黄金花月', '已上架', '2020-06-04 16:39:34', '福州', 11, '观果类,吸甲醛,阳台,秋季,留心养殖', 0, 0, '');
INSERT INTO `plant` VALUES (63, '万带兰', '已上架', '2020-06-04 16:40:12', '海南', 49, '芳香类,净化空气,庭院,夏季,留心养殖', 0, 0, 'Vanda coerulea');
INSERT INTO `plant` VALUES (66, '芦荟', '已上架', '2020-06-04 16:40:05', '杭州', 82, '观果类,吸甲醛,窗台,秋季,精心养护', 0, 2, 'Aloe');
INSERT INTO `plant` VALUES (105, '一品红', '已上架', '2020-06-04 16:39:21', '阜阳', 98, '观花类,净化空气,窗台,秋季,容易养殖', 0, 4, 'Euphorbia pulcherrima Willd');
INSERT INTO `plant` VALUES (107, '测试花朵', '已上架', '2020-06-04 16:38:58', '', 3, '芳香类,吸甲醛,null,null,null', 0, 0, '');
INSERT INTO `plant` VALUES (108, '测试花1', '已上架', '2020-06-07 23:17:59', '', 3, '观果类,吸甲醛,庭院,null,null', 0, 0, '');

-- ----------------------------
-- Table structure for plantcollect
-- ----------------------------
DROP TABLE IF EXISTS `plantcollect`;
CREATE TABLE `plantcollect`  (
  `plantCollectID` int(10) NOT NULL AUTO_INCREMENT,
  `userID` int(10) NOT NULL,
  `plantID` int(10) NOT NULL,
  `plantCollectTime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`plantCollectID`) USING BTREE,
  INDEX `用户编号5`(`userID`) USING BTREE,
  INDEX `花草编号6`(`plantID`) USING BTREE,
  CONSTRAINT `用户编号5` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `花草编号6` FOREIGN KEY (`plantID`) REFERENCES `plant` (`plantID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of plantcollect
-- ----------------------------
INSERT INTO `plantcollect` VALUES (28, 10, 1, '2020-05-04 06:04:05');
INSERT INTO `plantcollect` VALUES (40, 1, 37, '2020-05-10 01:34:51');
INSERT INTO `plantcollect` VALUES (41, 1, 105, '2020-05-10 03:41:36');
INSERT INTO `plantcollect` VALUES (42, 1, 66, '2020-05-10 03:42:09');
INSERT INTO `plantcollect` VALUES (45, 32, 105, '2020-05-10 04:57:19');
INSERT INTO `plantcollect` VALUES (46, 32, 66, '2020-05-10 04:57:23');
INSERT INTO `plantcollect` VALUES (47, 32, 43, '2020-05-10 04:57:28');

-- ----------------------------
-- Table structure for plantdetails
-- ----------------------------
DROP TABLE IF EXISTS `plantdetails`;
CREATE TABLE `plantdetails`  (
  `plantDetailsID` int(10) NOT NULL AUTO_INCREMENT,
  `plantID` int(10) NOT NULL,
  `plantPrice` float(10, 2) NULL DEFAULT 0.00,
  `plantSales` int(10) NULL DEFAULT 0,
  `plantDescribe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `plantStock` int(10) NULL DEFAULT 0,
  `plantDetailsState` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`plantDetailsID`) USING BTREE,
  INDEX `花草编号2`(`plantID`) USING BTREE,
  CONSTRAINT `花草编号2` FOREIGN KEY (`plantID`) REFERENCES `plant` (`plantID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of plantdetails
-- ----------------------------
INSERT INTO `plantdetails` VALUES (5, 1, 11.00, 3, '大号转运竹', 87, '启用');
INSERT INTO `plantdetails` VALUES (6, 1, 22.00, 26, '小号转运竹', 4, '启用');
INSERT INTO `plantdetails` VALUES (7, 63, 3.00, 5, '小白露', 49, '启用');
INSERT INTO `plantdetails` VALUES (8, 108, 2.00, 0, '小测试花', 5, '启用');

-- ----------------------------
-- Table structure for plantdetailsimage
-- ----------------------------
DROP TABLE IF EXISTS `plantdetailsimage`;
CREATE TABLE `plantdetailsimage`  (
  `plantDetailsImageID` int(10) NOT NULL AUTO_INCREMENT,
  `plantDetailsID` int(10) NOT NULL,
  `plantDetailsImagePath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `plantDetailsImageDescribe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`plantDetailsImageID`) USING BTREE,
  INDEX `详情编号1`(`plantDetailsID`) USING BTREE,
  CONSTRAINT `详情编号1` FOREIGN KEY (`plantDetailsID`) REFERENCES `plantdetails` (`plantDetailsID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of plantdetailsimage
-- ----------------------------
INSERT INTO `plantdetailsimage` VALUES (5, 5, 'plantResource/552a4da69a4be_200_200.jpg', '代后期被大量引进中国作观赏之用，现为中国常见的观赏植物，也颇受国际市场欢迎。 转运竹近两、三年才开始流行');
INSERT INTO `plantdetailsimage` VALUES (6, 6, 'plantResource/534605f9c4c77_200_200.jpg', '小转运竹');
INSERT INTO `plantdetailsimage` VALUES (7, 7, 'plantResource/551acb8ca7b15_200_200.jpg', '这是一颗小白露');
INSERT INTO `plantdetailsimage` VALUES (8, 8, 'plantResource/55bc55407af99_200_200.jpg', '小');

-- ----------------------------
-- Table structure for plantimage
-- ----------------------------
DROP TABLE IF EXISTS `plantimage`;
CREATE TABLE `plantimage`  (
  `plantImageID` int(10) NOT NULL AUTO_INCREMENT,
  `plantID` int(10) NOT NULL,
  `plantImagePath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `plantImageDescribe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `imageStyle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `imageSpace` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `imageTheme` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `imageEncyclopedia` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `imageSeason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`plantImageID`) USING BTREE,
  INDEX `花草编号3`(`plantID`) USING BTREE,
  CONSTRAINT `花草编号3` FOREIGN KEY (`plantID`) REFERENCES `plant` (`plantID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of plantimage
-- ----------------------------
INSERT INTO `plantimage` VALUES (1, 1, 'plantResource/546d904f19b40_200_200.jpg', '这是以盆转运竹', '观赏', '室内绿植', '绿植', '块根植物', '夏季');
INSERT INTO `plantimage` VALUES (32, 32, 'plantResource/53f56a7f18045_200_200.jpg', '这是一株白斑玉露', '观花', '室内观赏', '玻璃瓶植物', '家居绿植', '夏季');
INSERT INTO `plantimage` VALUES (36, 36, 'plantResource/5514302d6cbf5_200_200.jpg', '', '观赏', '室内绿植', '绿植', '多肉', '春季');
INSERT INTO `plantimage` VALUES (37, 37, 'plantResource/5a463d2052ca9_140_120.jpg', '', '观花', '室内水培', '水培', '家居绿植', '春季');
INSERT INTO `plantimage` VALUES (38, 38, 'plantResource/55bc55407af99_200_200.jpg', '', '观赏', '室内绿植', '绿植', '多肉', '春季');
INSERT INTO `plantimage` VALUES (43, 43, 'plantResource/55267b76564ea_200_200.jpg', '', '观赏', '室内绿植', '绿植', '多肉', '春季');
INSERT INTO `plantimage` VALUES (44, 44, 'plantResource/53d75a1db119f_200_200.jpg', '', '观赏', '室内绿植', '绿植', '多肉', '春季');
INSERT INTO `plantimage` VALUES (45, 45, 'plantResource/59d8c235bd47d_200_200 (1).jpg', '这是一株奥普琳娜', '观赏', '室内观赏', '水培', '多肉', '春季');
INSERT INTO `plantimage` VALUES (46, 46, 'plantResource/5a463d2052ca9_140_120.jpg', '这是一株江户紫', '观赏', '室内绿植', '绿植', '多肉', '春季');
INSERT INTO `plantimage` VALUES (57, 57, 'plantResource/55227cc8b7e39_200_200.jpg', '这是一株五彩红星', '花朵', '室内盆景', '水培', '兰花', '秋季');
INSERT INTO `plantimage` VALUES (59, 59, 'plantResource/552a4da69a4be_200_200.jpg', '这是一株摇钱树', '观花', '室内观赏', '水培', '块根植物', '春季');
INSERT INTO `plantimage` VALUES (60, 60, 'plantResource/5266a881c0f35_200_200.jpg', '这是一株百合竹', '花朵', '室内绿植', '玻璃瓶植物', '多肉', '春季');
INSERT INTO `plantimage` VALUES (62, 62, 'plantResource/53f6a4b54093e_200_200.jpg', '这是一株黄金花月', '叶子', '家居绿植', '水培', '兰花', '秋季');
INSERT INTO `plantimage` VALUES (63, 63, 'plantResource/53eac6e4838ac_200_200.jpg', '这是一株万带兰', '叶子', '家居绿植', '水培', '家居绿植', '夏季');
INSERT INTO `plantimage` VALUES (66, 66, 'plantResource/5423885d36ac6_200_200.jpg', '这是一颗芦荟', '花朵', '室内绿植', '水培', '兰花', '秋季');
INSERT INTO `plantimage` VALUES (105, 105, 'plantResource/524ee0bc4392a_140_120.jpg', '这是一品红', '观花', '家居绿植', '玻璃瓶植物', '多肉', '春季');
INSERT INTO `plantimage` VALUES (107, 107, 'plantResource/551d6772d340c_200_200.jpg', '', '观赏', '室内绿植', '绿植', '多肉', '春季');
INSERT INTO `plantimage` VALUES (108, 108, 'plantResource/5bae0afcc50ff_140_120.jpg', '这是一朵测试花', '观赏', '室内绿植', '绿植', '多肉', '春季');

-- ----------------------------
-- Table structure for plantinfo
-- ----------------------------
DROP TABLE IF EXISTS `plantinfo`;
CREATE TABLE `plantinfo`  (
  `plantInfoID` int(10) NOT NULL AUTO_INCREMENT,
  `plantID` int(10) NOT NULL,
  `plantClass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `plantDepart` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `plantFlowering` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `plantIntroduce` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `plantFeature` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `plantHabit` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `plantTechnique` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `plantBreed` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `plantPestControl` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `plantArea` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `plantFunction` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `plantLanguage` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`plantInfoID`) USING BTREE,
  INDEX `花草编号1`(`plantID`) USING BTREE,
  CONSTRAINT `花草编号1` FOREIGN KEY (`plantID`) REFERENCES `plant` (`plantID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of plantinfo
-- ----------------------------
INSERT INTO `plantinfo` VALUES (1, 1, '多年生草本花卉', '植物界 被子植物门 双子叶植物纲 百合亚目 龙舌兰科', '不开花', '转运竹又叫弯竹，中文学名富贵竹，别名辛氏龙树、竹蕉、万年竹，万寿竹、距花万寿竹、开运竹、富贵塔、竹塔、塔竹，放在文昌位又叫文昌竹（通常放4支）。属假叶树科龙血树属。原产于非洲西部的喀麦隆。为多年生常绿草本植物，株高可达1.5~2.5米高以上，如作商品观赏，栽培高度为80～100厘米为宜，多栽培于园圃中，喜阴湿，茎叶肥厚，其品种有绿叶、绿叶白边（称银边）、绿叶黄边（称金边）、绿叶银心（称银心），主要作盆栽观赏植物，观赏价值高，并象征着\"大吉大利\"，名字也是因此而出的，在1970年代后期被大量引进中国作观赏之用，现为中国常见的观赏植物，也颇受国际市场欢迎。\r\n转运竹近两、三年才开始流行的新品种，由广东省台山市海宴镇的花农发明和推广，在栽培和加工过程中需要投入大量的人力，因而生产成本较高。不过由于其造型变化多样（有螺旋型、心型、8字型…等），组合后可观赏性较高，且人们寄望她能转来好运，故深受人们所爱，市场占有额居开运竹之上，是目前市场上主流的富贵竹产品。', '转运竹为多年生常绿草本植物，株高可达1.5~2.5米高以上，如作商品观赏，栽培高度为80～100厘米为宜，多栽培于园圃中。\r\n转运竹茎干直立，株态玲珑，茎干粗壮，高达2米以上，叶长披针形，叶片浓绿，生长强健，水栽易活。其品种有绿叶、绿叶白边（称银边）、绿叶黄边（称金边）、绿叶银心（称银心）。\r\n绿叶转运竹又称万年竹，其叶片浓绿色，长势旺，栽培较为广泛。一般多用于家庭瓶插或盆栽护养，特别是从台湾流传而来的“塔状”造型，又名“开运竹”，观赏价值高，颇受国际市场欢迎。\r\n转运竹粗生粗长，茎杆挺拔，叶色浓绿，冬夏长青，不论盘栽或剪取茎干瓶插或加工“开运竹”、“弯竹”，均显得疏挺高洁，茎叶纤秀，柔美优雅，姿态潇洒，富有竹韵，观赏价值特高。', '转运竹性喜阴湿高温，耐阴、耐涝，耐肥力强，抗寒力强；喜半阴的环境。适宜生长于排水良好的砂质土或半泥砂及冲积层粘土中，适宜生长温度为20—28℃，可耐2—3℃低温，但冬季要防霜冻。夏秋季高温多湿季节，对富贵竹生长十分有利，是其生长最佳时期。\r\n转运竹对光照要求不严，适宜在明亮散射光下生长，光照过强、曝晒会引起叶片变黄、褪绿、生长慢等现象。所以在大田栽植，应搭1·7—1·8米高的遮阳网荫棚，以75%遮光率为宜，创造半阴阳、散射光照的环境。尤其是4—9月，要避免强光照直射，曝晒或过干旱，否则易使叶面粗糙，枯焦，生势弱，叶片缺乏光泽，降低观赏价值。\r\n在生长季节应经常保持土壤湿润，并常向叶面喷水或洒水，以增加空气的湿度；遇大雨应排清田间积水，以防倒伏。冬季要注意防寒、防霜冻，温度在10℃以下叶片会泛黄萎落。此时，土壤应干干湿湿为宜，但不宜干旱，也不宜过湿，要减少浇水和停止施肥。', '土地选择\r\n由于转运竹是喜阴湿的观赏植物，为此，要加速其生长，缩短生产周期，创造更佳的经济效益，就要选择排灌方便，土壤疏松肥沃的水稻田栽培为宜。\r\n\r\n搭建遮阳棚\r\n搭建遮阴棚即是盖遮阳网，稻田四周用木柱或水泥桩搭架，木柱要求高2.4米，深埋0.4米，若按20平方米用四条木柱(或水泥柱)计，每亩约需木柱30~35条，棚顶面上用铁线或尼龙绳系紧。然后按每亩10捆塑料遮阳网(宽1.5米/100米55元/捆)，盖好遮阴，再用泥龙绳四周系好即成。\r\n\r\n精细整地，合理密植\r\n整地时畦面高度为15~20厘米，畦面宽120~150厘米，畦沟25厘米。每亩施30担腐熟农家肥充分把平后，插植株苗，种植规格以8×5寸或6×5寸种植，每亩可种1.5~2万株以上，一般种植不要过密，栽植深度以2.5~3.5厘米为好，(即种苗4个节位，插植2个节位即可)，保持适当的空间，以便通风透光。\r\n\r\n科学施肥，加强管理\r\n转运竹无论在坡地、半旱水田都能生长，为加速其生长，缩短生产周期，提高经济效益，为此，要抓好:\r\n1、施足基地\r\n插植时，亩施腐熟农家肥30~40担，撒施15~20公斤(N:P:K=15:15:15)复合肥与农家肥耙均匀，然后插植。\r\n\r\n2、适施苗肥\r\n植株种植20天后，开始透发新根，可淋一次粪水30~40担/亩，30~40天后，视苗的生长情况，追施一次攻苗肥，一般以复合肥为主，亩施复合肥15~20公斤，施后培土、当植株长至35~45厘米高时，需要养分也增多，是植株生长始盛阶段，因此，此期追肥要重施，亩施复合肥25~30公斤，尿素10~l5公斤为宜，同时可结合喷施根外肥，用新枝素或喷施宝等植物生长素喷施，以促进生长平衡，叶茂茎粗，提高抗逆力。', '转运竹长势、发根长芽力强，常采用扦插繁殖，只要气温适宜整年都可进行。\r\n一般剪取不带叶的茎段作插穗，长5—10厘米，最好有3个节间，插于砂床中或半泥砂土中。在南方春、秋季一般25—30天可萌生根、芽，35天可上盘或移栽大田。水插也可生根，还可进行无土栽培。广东各地近几年用顶穗枝（即嫩茎）截成20—25厘米直接插于砂壤中或半泥砂、冲积粘土大田，经精心护养栽种可当年春节采切作瓶用材。\r\n广州以南地区，如台山市海宴镇农民在春秋季均直接插于大田，也可在10—12月用顶穗枝或节间顶苗、侧芽顶穗剪成15—20厘米的插条、插入粗砂或半泥砂大田，埋入土壤2个节，每天浇水一次，保持土壤湿润，一般35—45天可生根。\r\n春季扦插最适宜在1月下旬（大寒后）至2月中下旬（雨水前后），可露地直接扦插于大田，一般30—35天可生根。也可在3月中旬至4月上旬（春分至清明）扦插，最好在3月下旬种植，因这段时期温度逐渐升高、湿度适宜，插后7—15天左右可生根，成活率100%，管理好的当年可上市。', '种植富贵竹要注意雨天排涝，旱天防旱，冷天防霜，如遇旱天，要注意该跑马水，保持田间畦面湿润。盖遮阳网的富贵竹田块，鳞翅目成虫较难飞进产卵繁殖，故虫害也较少，到目前为止，只发现少量钻心虫，未发现病害，从3月初栽培到12中下旬收获，只喷洒2次杀虫药剂即可。\r\n\r\n富贵竹常有蜘蛛、天牛、叶螨、介壳虫等害虫蛀心或咬皮、咬叶心、咬叶尖为害并传播炭疽病，可用50％敌敌畏1000倍喷杀，防虫效果较好。叶片上出现炭疽病、叶斑病时，可用75％百菌清800倍、或70％甲基托布津、50％加瑞农可湿粉600—800倍液，或12.5％乳油蕉斑脱600—800倍或70％代高乐1000—1200倍，或50％炭疽福美可湿粉500倍液喷施防治，上述农药交替使用，每5—7天一次，连续3-4次，防治效果较好。', '转运竹原产于非洲西部的喀麦隆和刚果一带，20世纪80年代后期大量引进中国。', '观赏价值\r\n转运竹粗生粗长，茎杆挺拔，叶色浓绿，冬夏长青，不论盘栽或剪取茎干瓶插或加工“开运竹”、“弯竹”，均显得疏挺高洁，茎叶纤秀，柔美优雅，姿态潇洒，富有竹韵，观赏价值特高。\r\n绿叶转运竹又称万年竹，其叶片浓绿色，长势旺，栽培较为广泛。一般多用于家庭瓶插或盆栽护养，特别是从台湾流传而来的“塔状”造型，又名“开运竹”，观赏价值高，颇受国际市场欢迎。\r\n\r\n盆栽装饰\r\n主要作盆栽观赏植物，观赏价值高，并象征着\"大吉大利\"，名字也是因此而出的，在1970年代后期被大量引进中国作观赏之用，现为中国常见的观赏植物。\r\n转运竹主要生长在我国西南一带又称水竹，其造型玲珑，排列有序，既有竹的韵美，生机勃勃，又富有寓意，吉祥如意！开运竹常作为室内观赏花卉。\r\n\r\n环保作用\r\n1、转运竹的颜色呈深绿或翠绿，这种颜色有助于愉悦人的身心；\r\n2、转运竹可以吸附室内的有害气体、灰尘，并且可以调节室内的湿度；\r\n3、转运竹还具有减少辐射的作用，对于经常面对电脑和手机的人，起到了很到的保护作用。\r\n\r\n经济价值\r\n种植富贵竹具有产量高，经济效益高优势，每亩可种植1.8~2.5万株，一年亩产值可达3~5万元。\r\n\r\n特别提醒\r\n北方购买转运竹在春季较好，买回后即进入适宜生长期。冬季有供暖设施的也可在年节前购买。盆栽应挑选叶片浓绿有光泽、金边条纹鲜亮、无干尖、无脱脚、株高30厘米以下、有3个至6个分枝的健壮植株。水养各种造型的，要选茎干粗细均匀、造型优美、基部及根系无腐烂的植株。特别提醒的是，转运竹在碱性土和干燥的气候中生长不良，叶尖易干枯。长期在室内荫蔽处也生长瘦弱，叶色暗淡无光泽，应予以注意。', '转运竹的花语：大吉大利。\r\n转运竹茎节貌似竹节却非竹，中国有“花开富贵，竹报平安”的祝辞，故而得人们喜爱。转运竹容易栽培，向征着“大吉大利”。\r\n转运竹的美与它的吉祥名字分不开，它具有细长潇洒的叶子，翠绿的叶色，其茎节表现出貌似竹节的特征，却不是真正的竹。');
INSERT INTO `plantinfo` VALUES (32, 32, '多年生草本花卉', '植物界 被子植物门 双子叶植物纲 百合亚目 龙舌兰科', '不开花', '111', '222', '33', '44', '55', '', '', '', '');
INSERT INTO `plantinfo` VALUES (36, 36, '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `plantinfo` VALUES (37, 37, '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `plantinfo` VALUES (38, 38, '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `plantinfo` VALUES (43, 43, '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `plantinfo` VALUES (44, 44, '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `plantinfo` VALUES (45, 45, '多肉多浆植物', '植物界 景天科 风车石莲属', '春季', '奥普琳娜 为风车石莲属（Graptoveria ）多肉植物,肉质叶互生，呈莲花状排列,整体颜色呈现粉粉的淡蓝色，叶缘和尖端容易泛红，非常漂亮，颇有古代美人的娇羞感。', '叶长匙型，叶上部斜尖，顶尖易红，叶面略内凹，叶背有龙骨，奥普琳娜和其他美人系的多肉植物一样，生长速度较快，容易长大并群生，也叶片较厚重的关系，植株具备具有匍匐状生长习性。奥普琳娜往往在春季中旬开花，和石莲花属开的花差不多，抽生出穗状花梗，钟型花朵，花黄色，尖端橙色。奥普琳娜，浅浅的粉蓝，美人般娇羞感的胭脂红，让人很想拜倒在她的石榴裙下。奥普琳娜非常美丽，让很多肉友亲切的称她为奥普。', '奥普琳娜属于冬型种，喜温暖、干燥和阳光充足的环境，耐旱，忌盆土长期潮湿，生长适温10—25℃。奥普琳娜属于比较好养又好看的多肉植物，养护得当的奥普琳娜叶片较胖，白粉厚，颜色粉蓝，配合叶尖和叶缘的粉红，就像抹了胭脂的美人，光照不足，浇水过多的情况，株型会较为松散，叶片细长无力，颜色黯淡。 ', '养护\r\n\r\n奥普琳娜喜欢阳光充足、凉爽干燥的生长环境，耐干旱，不耐寒。夏季温度升高，要遮阳、加强通风、逐步断水，整个夏季少给水，两周一次土表喷水即可。冬季0摄氏度以下就要停止给水了，防止植株冻伤。\r\n\r\n\r\n浇水\r\n\r\n奥普琳娜本身叶片厚实，因此较为耐旱，春秋生长季在充足的光照下可以充分浇水，配土接近干透即可浇透一次水，但夏季酷热，冬季严寒时，应节制浇水，待干透后，少量浇水即可。判断是否过度浇水，可参照奥普琳娜的叶片包裹度(光照充分是前提)。配土可选择透气排水性良好的土壤，如泥炭土、颗粒土1:1的比例配置。\r\n\r\n\r\n光照\r\n\r\n夏季超过30℃应遮阴，其余时间可半日照或全日照，充足的光照，奥普琳娜的叶型会更包，白粉更厚，叶尖和叶缘就像抹了腮红，叶子的顶尖很容易就一点红，光照不足容易造成徒长，然后植株变得头重脚轻。', '奥普琳娜容易群生，采用叶插法、砍头法和侧芽分株法进行繁殖，除了寒冷的冬季，全年都可以进行。', '无', '无', '无', '无');
INSERT INTO `plantinfo` VALUES (46, 46, '多年生草本花卉', '植物界 被子植物门 双子叶植物纲 蔷薇目 景天科 伽蓝菜属', '春季', '江户紫，景天科草本植物，多年生草本花卉。原产非洲的索马里、埃塞俄比亚。', '江户紫是多年生肉质植物，植株呈灌木状，通常在基部分枝，茎圆柱形，直立生长。肉质叶交互对生，无柄，叶片倒卵形，叶缘有不规则的波状齿，长约10厘米，蓝灰至灰绿色，被有一层薄薄的白粉，表面有红褐至紫褐色斑点或晕纹。花白色，但栽培中很少能见到花。常作观叶植物栽培。', '宜温暖干燥和阳光充足的环境，不耐寒，忌水湿，耐干旱和半阴，强光曝晒和过于荫蔽都对植株生长不利。', '栽培中若光线不足，会造成茎叶徒长，株形松散，叶色暗淡，白粉消失，斑点颜色减退，植株缺乏生机，严重影响观赏。\r\n\r\n夏天的强光直射，又会造成叶尖枯萎。因此，除夏季高温时要适当遮光外，其它季节都要给予充足的光照，这样培养出的植株叶片肥厚，白粉明显，紫褐色斑点清晰显著，非常漂亮。夏季高温时因植株生长缓慢，应加强通风，以免因土壤湿度过大，引起基部茎叶变黄腐烂。\r\n\r\n\r\n冬季放在室内阳光充足处，夜间不低于12℃，白天在18℃以上，可正常浇水，使植株继续生长；如果维持不了这么高的温度，节制浇水，使植株休眠，也能耐5℃的低温。\r\n\r\n\r\n春、秋季节是植株生长的旺盛期，保持土壤湿润而不积水，每月施一次腐熟的稀薄液肥或无机复合肥。每年春季换盆一次，并对植株进行修剪，以保持株形完美。\r\n\r\n\r\n盆土宜用疏松肥沃，具有良好排水、保水性能的沙质土壤。可用腐叶土2份、园土1份、粗砂或蛭石2份，另加少量腐熟的骨粉混匀后使用，因本种根系发达，应用较大的花盆栽种。\r\n\r\n\r\n新栽的植株放在光线明亮又无直射阳光处养护，不必浇太多的水，等恢复长势后再进行正常养护。', '繁殖用扦插方法，以春、秋季节成活率最高，如果冬季不低于18℃也可进行。插穗剪取健壮成熟的顶端枝条，每段长5～8厘米，待切口晾干后插于沙土中，保持稍有潮气，10天左右可生根。\r\n\r\n若大量繁殖则用叶片扦插，所用的叶片要成熟而充实，平放或斜插于沙土中，不必浇水；经常喷雾保湿，2周左右生根，等叶片基部长出不定芽，形成幼苗时上盆。', '无', '江户紫原产非洲的索马里、埃塞俄比亚', '江户紫叶片肥厚，灰绿或蓝绿色叶面上布满了紫褐色斑点，犹如一块美丽的调色板，是多肉植物中的观叶佳品，大型植株可供布置温室、植物园中的沙漠生态景观，小苗也可家庭盆栽，美化阳台、窗台、客厅等处，其叶片斑驳可爱，颇有特色。', '无');
INSERT INTO `plantinfo` VALUES (57, 57, '凤梨科植物', '植物界 被子植物门 双子叶植物纲 禾本目 凤梨科 彩叶凤梨属', '夏季', '五彩红星原产南美安第斯山地区，近稍热带地区。喜温热、湿润环境，明亮的散射光对生长、开花有利，土壤用疏松、排水良好、含腐殖质的壤土，冬季湿度不低于10℃。 五彩红星为好湿性的气生凤梨，喜明亮的光线，但夏季忌置于强光下，以免叶片灼伤。光线亦不可太暗，否则影响色彩的充分表现。越冬温度要求在5℃以上。 五彩红星室内养护应置于光线明亮处,是花架、台桌、橱柜和茶几上摆放的极好材料。\r\n\r\n', '五彩红星原产南美安第斯山地区，近稍热带地区。喜温热、湿润环境，明亮的散射光对生长、开花有利，土壤用疏松、排水良好、含腐殖质的壤土，冬季湿度不低于10℃。\r\n五彩红星为好湿性的气生凤梨，喜明亮的光线，但夏季忌置于强光下，以免叶片灼伤。光线亦不可太暗，否则影响色彩的充分表现。越冬温度要求在5℃以上。\r\n五彩红星室内养护应置于光线明亮处,是花架、台桌、橱柜和茶几上摆放的极好材料。', '五彩红星盆栽，株高30厘米左右，冠幅80厘米。叶片线形，基部较宽，浅绿色，叶长60厘米，宽5厘米。一生只在春季开1次花，花茎常高出叶丛20厘米以上，花茎、苞片及近花茎基部的数枚叶片均为深红色，保持时间甚长，观赏期可达2个月左石。', '五彩红星喜温热、湿润环境，明亮的散射光对生长、开花有利，土壤用疏松、排水良好、含腐殖质的壤土，冬季湿度不低于10℃。\r\n五彩红星为多年生草本植物，为好湿性的气生凤梨。喜明亮的光线，但夏季忌置于强光下，以免叶片灼伤。光线亦 不可太暗，否则影响色彩的充分表现。越冬温度要求在5℃以上。', '五彩红星盆栽植株宜放室内窗台或阳台养护，全年保持盆土湿润。在莲座状叶筒内不可缺水，并保持水质清洁，生长期每半月施肥1次，冬季室内栽培应放南窗台多见阳光。', '五彩红星主要有叶斑病危害，可喷洒100倍波尔多液防治或50%多菌灵可湿性粉剂1000倍液防治。', '五彩红星原产南美安第斯山地区，近稍热带地区。', '盆栽作用\r\n五彩红星室内养护应置于光线明亮处,是花架、台桌、橱柜和茶几上摆放的极好材料。\r\n\r\n观赏价值\r\n红星凤梨叶片翠绿光亮，深红色管状苞片，色彩艳丽持久，观赏期长。除盆栽点缀窗台、阳台和客厅以外，还可装饰小庭院和入口处，常用作在大型插花和花展的装饰材料。', '无');
INSERT INTO `plantinfo` VALUES (59, 59, '灌木花卉', '植物界 被子植物门 双子叶植物纲 荨麻目 榆科 青檀属', '春季', '摇钱树是天南星科雪芋属，小叶椭圆状；另有金钱榕，为桑科榕属，叶近似圆形）是近年从国外引种的多年生草本花卉，株高50厘米至80厘米，地下球茎上着生泽米苏铁或蕨类植物状的羽状复叶，叶柄肉质，具小叶7对至10对，小叶椭圆状，像一对对排列整齐的铜钱。佛焰花苞红褐色。\r\n同名书图书和由斯蒂芬·赫瑞克 （Stephen Herek）导演执导同名电影《摇钱树》。\r\n传说中的一种宝树，摇摇它就会落下金钱来。北京旧俗中有岁末做“摇钱树”祈年的习俗，江南一带旧俗，在大年初一，家家户户在门前挂“摇钱树”，预示新的一年钱财滚滚来。汉朝墓葬中使用的一种明器，还用来比喻藉以生财的人或物。', '摇钱树是落叶灌木或小乔木，高3—6米，稀达10米；幼杖灰绿色，无毛，老枝深灰色；芽圆柱状，长8--10毫米，芽鳞宽披针形，长约5毫米，宽约1．5毫米，微红色，先端有小突尖，边缘具缘毛。\r\n摇钱树叶常聚生枝顶，纸质，长圆形至长圆状椭圆形，长3—4(--5)厘)米，宽2—2.5厘米，先端钝尖，具短凸尖头，基部宽楔形或楔形，边缘具钝锯齿，两面无毛，中脉在表面下凹，连同侧脉在表面不明显，在背面明显，四脉在背面明显；叶柄粗壮，长0.8-1(--15)毫米，具槽，无毛。\r\n花多数组成伞形花序状总状花序；花极纤细，长2．5-4厘米，无毛；花下垂；花萼5裂，裂片三角形，长约2．5毫米，有缘毛；花冠阔钟形，长宽各1厘米，肉红色，口部5浅裂；雄蕊10枚，着生于花冠基部，花丝长4．5毫米，中部以下膨大，被微柔毛，花药2裂，长1.5毫米，芒长约1毫米；子房球形，具有纵纹，疏被白色短毛，花柱长约5．5毫米，被疏微毛。\r\n摇钱树蒴果卵圆形，直径6-9(--8)毫米，室背开裂为5果瓣，果爿长约6毫米，宽约3．2毫米，果爿中间具微纵槽。种子长约6毫米，微有光泽，具皱纹，有翅，每室有种子多数，种子着生于中轴之上部。\r\n摇钱树花期5月，果期6-10月。', '摇钱树是一种阳性树种，喜光、稍耐半阴；耐寒（黄山栾较差）；耐干旱和瘠薄，也耐低湿、盐碱地及短期涝害。深根性，根强健，萌蘖力强，生长中速，幼时较缓，以后渐快，适生性广，对土壤要求不严，在微酸及碱性土壤上都能生长，较喜欢生长于石灰质土壤中。抗风能力较强，可抗零下25℃低温，对粉尘、二氧化硫和臭氧均有较强的抗性。病虫害少，栽培管理容易。\r\n\r\n摇钱树在明亮或较黑暗的地方均能生长良好，夏季要保持较高的空气湿度并注意遮荫，冬季可保持相对干燥环境但需有明亮的光照。栽培基质以肥沃疏松、富含有机质、透气良好、保水保肥能力强，但不积水的微酸性土壤最佳，生长期每月施复合肥一次。', '摇钱树栽培管理较为简单，移植时适当剪短主根及粗侧根，这样可以促进多发须根，容易成活。\r\n\r\n栽培要点\r\n栽培土质以深厚，湿润的土壤最为适宜。喜光，能耐半阴，耐寒。具深根性，产生萌蘖的能力强，耐干旱、瘠薄，能耐短期积水，对烟尘有较强的抗性。\r\n\r\n一、遮荫\r\n遮荫时间、遮荫度应视当时当地的气温和气候条件而定，以保证其幼苗不受日灼危害为度。进入秋季要逐步延长光照时间和光照强度，直至接受全光，以提高幼苗的木质化程度。\r\n\r\n二、间苗和补苗\r\n幼苗长到5～10cm高时要间苗，以株距10～15cm间苗后结合浇水施追肥，每平方米留苗12株左右。间苗要求间 小留大，去劣留优，间密留稀，全苗等距，并在阴雨天进行为好。结合间苗，对缺株进行补苗处理，以保证幼苗分布均匀。\r\n\r\n三、日常管理\r\n要经常松土、除草、浇水，保持床面湿润，秋末落叶后大部分苗木可高达2m，地径粗在2cm左右。将苗子掘起分级，第二年春移植，移植前将根稍剪短一些，移植结束后从根茎处截去苗干。', '苗期管理技术\r\n遮荫时间、遮荫度应视当时当地的气温和气候条件而定，以保证其摇钱树幼苗不受日灼危害为度。进入秋季要逐步延长光照时间和光照强度，直至接受全光，以提高幼苗的木质化程度。\r\n\r\n间苗和补苗\r\n幼苗长到5～10cm高时要间苗，以株距10～15cm间苗后结合浇水施追肥，每平方米留苗12株左右。间苗要求间小留大，去劣留优，间密留稀，全苗等距，并在阴雨天进行为好。结合间苗，对缺株进行补苗处理，以保证幼苗分布均匀。\r\n要经常松土、除草、浇水，保持床面湿润，秋末落叶后大部分苗木可高达2m，地径粗在2cm左右。将苗子掘起分级，第二年春移植，移植前将根稍剪短一些，移植结束后从根茎处截去苗干。\r\n\r\n日常养护\r\n摇钱树对光的要求不怎么严格.在明亮或较黑暗的地方均能生长良好，夏季要保持较高的空气湿度并注意遮荫，冬季可保持相对干燥环境但需有明亮的光照。摇钱树 栽培基质以肥沃疏松、富含有机质、透气良好、保水保肥能力强，但不积水的微酸性土壤最佳。', '摇钱树可采用播种、小叶扦插、组织培养等方法进行繁殖。', '以播种繁殖为主，分蘖或根插亦可，秋季果熟时采收，及时晾晒去壳。因种皮坚硬不易透水，如不经处理，第二年春播常不发芽，故秋季去壳播种，可用湿沙层积处理后春播。一般采用垄播，垅距60-70cm，因种子出苗率低，故用种量大，播种量30-40kg/亩。', '盆栽观赏\r\n摇钱树的养殖方法，摇钱树形端庄整齐，叶、花、果均可供观赏。\r\n\r\n室内摆设\r\n摇钱树是很流行的室内植物，适合摆在公司、大厅里。能起到祈求财富的作用。当然在中国古代认为，摇钱树保留着商周时期先民崇拜的原始宗教观念，又赋予了世俗的祈财纳福的吉祥观念。认为这种树会生财、结金钱，摇落以后可再生。而摇钱树又是长生树，谁拥有它，谁就会消灾富贵长命，子孙昌盛。\r\n\r\n绿化作用\r\n我们在日常绿化工程中很多时候都会选择在道路的两边种植摇钱树，主要是因为摇钱树美观，可以有效的吸收噪音，而且摇钱树耐寒，很容易种植，对环境的适应性强，还能吸收道路两旁的烟尘等作用，因此受到绿化工程的喜爱。\r\n\r\n经济价值\r\n摇钱树可提制栲胶，花可作黄色染料，种子可榨油，是工业污染区配植的好树种。', '摇钱树的花语：庄重富贵、财运滚滚。\r\n江南一带旧俗，在大年初一，家家户户在门前挂“摇钱树”，预示新的一年钱财滚滚来');
INSERT INTO `plantinfo` VALUES (60, 60, '灌木花卉', '植物界 种子植物门 单子叶植物纲 天门冬目 龙舌兰科 龙血树属', '夏季', '百合竹，为百合科常绿灌木，宿根性，叶片碧绿而富有光泽，龙血树族，龙血树属。叶片中间有金黄色的条纹，甚是美丽，是家庭常见栽培观叶植物之一，其也开花，花为白色，较小，雌雄异株，花序比较长，能达半米。百合竹的适应性比较好，能在室内半阴或散射光照下长期生长。分布于马达加斯加。百合竹是极受人们喜爱。此类植物叶色殊雅，为室内观叶佳品。原产马达加斯加，现作为观叶植物广泛栽培，其叶片潇洒飘逸，耐荫性好，适合室内观赏，还可水培欣赏。', '百合竹为多年生长绿灌木或小乔木。叶线形或披针形，全缘，浓绿有光泽，松散成簇；花序单生或分枝，常反折，花白色，为雌雄异株。\r\n花序单生或分枝，小花白色。其斑叶品种金边百合竹也见于栽培，叶缘有金黄色纵条纹；金心百合竹，叶缘绿色，中央呈金黄色。花序比较长，能达半米。', '百合竹为习性强健，喜高温多湿，生长适温20—28℃，耐旱也耐湿，温度高则生长旺盛，冬季干冷易引起叶尖干枯。宜半阴，忌强烈阳光直射，越冬要求12℃以上。 对土壤及肥料要求不严。', '田间管理\r\n基质\r\n百合竹的适应性较好，能在粘土、砂土中生长，但以疏松肥沃、排水良好且富含腐殖质的砂性土壤生长最佳。家庭栽培可用腐叶土与河沙或炉渣灰混合作基质。\r\n湿度\r\n最适生长温度为20～30℃之间，越冬温度最好保持在10℃以上，不耐低温冻害。在生长过程中需要一定的空气湿度，否则叶色变得暗淡，光泽度下降。可在生长期中勤向植株喷洒清水，如果条件允许，最好在环境中增加水分湿度。\r\n光照\r\n百合竹喜光照，又忌夏季烈日直射，家庭养护可将其置于南窗下或阳台处，只在夏日避开直射光照即可，其他季节最好能给予一定的光照，否则叶片中间的金黄色条纹会暗淡、消失，严重降低观赏价值。\r\n浇水\r\n百合竹对水的耐受度较宽，轻度的干旱与湿渍都不会损害太大，但最好在管理中以盆土表层干燥后浇透为宜，利于其生长良好。干湿交替进行浇水可令枝叶浓密，枝节紧凑，观赏价值高。\r\n施肥\r\n对肥料的需求不严格，可在生长期中追施化学肥料或有机肥液均可，但施用化学肥料时要少量多次，并在施肥后及时浇水。另外，可在每年换盆换土时加入一定腐熟的有机肥料作底肥，可保证其生长良好。\r\n修剪\r\n由于其具有一定的宿根性，能从根部生长新枝，所以株形一般皆良好。百合竹比较耐修剪，最好在修剪前后适当增加肥水管理，可保生长出的新枝叶更好。修剪主要是以整形为主，当然在扦插繁殖时需要插穗也是修剪的主要原因之一。', '家庭栽培\r\n家庭栽培可用腐叶土与河沙或炉渣灰混合作基质。每2年换一次盆，可选择观叶植物培养土。\r\n【温度】：15-22度\r\n【光照】：请不要让其离窗户太远，除非在夏季的上午10时至下午5时。\r\n【土壤】：观叶植物营养土、腐叶土和河沙各1份混合配成。\r\n【施肥】：每年4-9月，每月1次\r\n【空气湿度】：请将植物置于潮湿的砾石层上。每天喷水。\r\n【浇水】：盆土表面干至2-3厘米深时，要浇透。\r\n【换盆】：每2年换盆1次，3月进行。\r\n【特殊要求】：百合竹喜其他室内植物的陪伴，它们可视为其提供有益的水分补充。\r\n【繁殖】：3-9月，取10厘米茎段在水中或密闭环境中扦插。\r\n【建议】：为了使植株垂直、匀称地生长，请定期转动花盆1/4圈。', '百合竹的病虫害较少，主要病害为叶斑病，家庭养护过程中常因空气干燥或有其他花卉植物而受红蜘蛛的危害，一般可用大水冲洗多次，或直接喷施螨类专杀药剂进行防治，如三氯杀螨醇、尼索朗、克螨特等。', '百合竹为原产马达加斯加。', '观赏价值\r\n百合竹是极受人们喜爱，此类植物叶色殊雅，为室内观叶佳品。原产马达加斯加，现作为观叶植物广泛栽培，其叶片潇洒飘逸，耐荫性好，适合室内观赏，还可水培欣赏。\r\n百合竹是家庭常见栽培观叶植物之一，其也开花，花为白色，较小，雌雄异株。', '无');
INSERT INTO `plantinfo` VALUES (62, 62, '秋季', '植物界 被子植物门 双子叶植物纲 蔷薇目 景天科 青锁龙属', '秋季', '黄金花月是景天科青锁龙属多肉植物，原产地南非，喜欢温暖干燥，阳光充足的环境，也耐半阴。通常为绿色，日照充足时，叶片边缘会变红，植株呈现出金色，因此得名。\r\n黄金花月是一种枝干非常容易木质化、并且呈树状生长的多肉植物，在原产地常以高大的树状出现，叶片大部分时间为绿色，日照充足时叶片变为红色，根系发达习性强健。', '黄金花月是花月的锦斑变异品种，植株呈多分枝的灌木状，茎明显，圆形，表皮绿色或者黄褐色，叶片上有小点点。肉质叶对生，在茎或分枝顶端密生长，肉质叶长卵形,稍内弯，轻微有叶尖，叶色黄绿至金黄色，有光泽，冬季温差大的时候叶片的边缘呈红色，叶心金黄色，非常美丽,控水和强光照下整个植株呈现非常漂亮的黄红色，一般养殖的颜色为黄绿色。\r\n黄金花月为花月的斑锦变异品种，叶片较圆，其叶色根据季节的不同而变化，晚秋至初春的冷凉季节为绿色带黄色晕斑，叶缘部分则呈红色，暮春至秋季的温暖季节叶色则为黄白色，叶缘部分的红色变淡，到了深秋季节叶色则带暗红色晕，花深桃红色。\r\n黄金花月枝干非常容易木质化、并且呈树状生长的多肉植物，在原产地常以高大的树状出现，叶片大部分时间为绿色，日照充足时叶片变为红色，根系发达习性强健。植株多分枝，呈灌木状，株高可达1m以上，肉质茎圆柱形，粗壮，表皮灰白色或浅褐色。肉质叶肥厚多汁，匙形至倒卵形，顶端圆钝，交互对生，叶色深绿，有光泽，有些类型的叶缘呈红色。小花红色、粉红色。', '黄金花月需要接受充足日照叶色才会艳丽，株型才会更紧实美观。日照太少则叶色浅变绿，叶片排列松散，拉长，并且枝干非常嫩。黄金花月喜欢日照，夏季要减少浇水，根系较发达，习性较强健，不用太多管理。\r\n黄金花月属景天科青锁龙多肉植物，原产地南非，喜欢温暖干燥，阳光充足的环境，也耐半阴。通常为绿色，日照充足时，叶片边缘会变红，植株呈现出金色，因此得名。', '黄金花月需要接受充足日照叶色才会艳丽，株型才会更紧实美观。日照太少则叶色浅变绿，叶片排列松散，拉长，并且枝干非常嫩。黄金花月喜欢日照，夏季要减少浇水，根系较发达，习性较强健，不用太多管理。\r\n黄金花月属景天科青锁龙多肉植物，原产地南非，喜欢温暖干燥，阳光充足的环境，也耐半阴。通常为绿色，日照充足时，叶片边缘会变红，植株呈现出金色，因此得名。', '黄金花月繁殖方法主要是以扦插为主，就是大家常说的采用砍头法。砍头全年都可以进行，晾干伤口扦插在微湿的土壤等待发根就可以。\r\n黄金花月的繁殖可在生长季节进行扦插，常结合修剪进行，枝插、叶插均可以。\r\n枝插剪取健壮充实的顶端枝条做插穗，长短要求不严，晾2天左右,等伤口干燥后插子土壤中。叶插则掰取健壮成熟、充实、无病虫害的的肉质叶,平放或斜插子土壤中,使叶片的基部充分与土壤接触,约20~30天即可生根、发芽，等这些小芽长得稍大些后取下栽种。\r\n\r\n黄金花月是一种枝干非常容易木质化、并且呈树状生长的多肉植物，它的叶片大部分时间为绿色，日照充足时叶片变为红色，根系发达习性强健。\r\n黄金花月非常适合单独栽培，由于自身后期会生长得非常大，占据大部分空间，不适合和与其他多肉植物组合。日照充足整株变为红色，非常抢眼。南方地区温度不低，比较适合栽于庭院中', '黄金花月繁殖方法主要是以扦插为主，就是大家常说的采用砍头法。砍头全年都可以进行，晾干伤口扦插在微湿的土壤等待发根就可以。\r\n黄金花月的繁殖可在生长季节进行扦插，常结合修剪进行，枝插、叶插均可以。\r\n枝插剪取健壮充实的顶端枝条做插穗，长短要求不严，晾2天左右,等伤口干燥后插子土壤中。叶插则掰取健壮成熟、充实、无病虫害的的肉质叶,平放或斜插子土壤中,使叶片的基部充分与土壤接触,约20~30天即可生根、发芽，等这些小芽长得稍大些后取下栽种。\r\n\r\n黄金花月是一种枝干非常容易木质化、并且呈树状生长的多肉植物，它的叶片大部分时间为绿色，日照充足时叶片变为红色，根系发达习性强健。\r\n黄金花月非常适合单独栽培，由于自身后期会生长得非常大，占据大部分空间，不适合和与其他多肉植物组合。日照充足整株变为红色，非常抢眼。南方地区温度不低，比较适合栽于庭院中', '黄金花月原产于南非，现世界多地可栽培。', '观赏价值\r\n黄金花月叶形叶色较美，有一定的观赏价值。每年的三月，气候冷凉，光照充足，昼夜温差大，是其一年当中叶色最美的时节。\r\n\r\n净化空气\r\n盆栽可放置于电视、电脑旁，可吸收辐射，亦可栽植于室内以吸收甲醛等物质，净化空气。\r\n\r\n绿化庭院\r\n黄金花月非常适合单独栽培，由于自身后期会生长得非常大，占据大部分空间，不适合和与其他多肉植物组合。日照充足整株变为红色，非常抢眼。南方地区温度不低，比较适合栽于庭院中。', '无');
INSERT INTO `plantinfo` VALUES (63, 63, '兰科花卉', '植物界 被子植物门 单子叶植物纲 天门冬目 兰科 万带兰属 盛花期：春季夏季', '春季夏季', '万带兰属是目前世界上栽培较多和最受欢迎的洋兰之一。是热带庭院中栽种比较多而管 理十分省事的花卉，既可作盆栽花卉，又能作切花。 该属植物全世界约有60个原生种，全部为附生植物。广泛分布于东半球的热带和亚热带 地区，自印度往东至中国南部、东南亚、新几内亚、澳大利亚及菲律宾、所罗门群岛等太平洋岛 屿均有分布。大多数种类花较大，花色鲜艳，花期长，是很有价值的观赏花卉。 是世界上栽培较多和最受欢迎的热带...', '万带兰为典型的附生兰科植物。与卡特兰和石解不同，它为单轴类茎的洋兰，有明显的茎 干和气生根。根较卡特兰、石斜粗壮，不但负责吸收水分和养料，并且支撑茎干直立向上。新根 在春天从茎部生出，通常白色，先端根冠部分常为绿色。如根冠折断，生长即停止不前。万带兰 靠粗壮的根系可以附着在其他植物或岩石上生长。\r\n叶片在茎的两例排成两列，通常可看到3种形态：扁平而背呈龙骨状；圆拄状；半圆柱状而 在向轴面具有一纵槽。叶表面有较厚的角质层，有较强的抗干旱结构。\r\n花较大，春季开花，通常色泽鲜艳，有粉红色、黄色、紫红色、纯白色，也有其他兰花很少见的茶褐色、 天蓝色等。花尊与花瓣相似，通常明显具爪。唇辨与蕊校基部粘连，有距，3裂，佣裂片直立，中 裂片前伸；距呈圆锥形，端钝，内面秃净。蕊拄短，圆柱形，无蕊柱足，花药顶生，2室，花粉块2— 4枚，着生于短而宽、具大型粘盘的柄上。', '广泛栽培的多为优良的杂交种品种。万带兰要求高温、高湿和较强的阳光，适于热带地区栽培。北方需在高温温室种植，室温保持在20℃以上。', '万带兰属于气生根系，因此栽培介质要排水良好、保湿性强、透气性能好。一般 用苔藓、木炭、碎树皮即可，也可到花市上购买配制好的介质材料。平时管护热带兰要保持盆土潮湿，表面干燥时就应当浇水，并要求浇透。一般夏季每天浇1次，冬季每周浇2次至3次。夏季高温时可在花盆周围洒少量的水或者在叶面上喷水。\r\n在生长季节可每隔10天向植株施一次无机肥料配制的稀薄液肥或兰花专用肥。热带兰生长季节的适宜温度为18℃至25℃，要有充足的室内散射光，避免阳光直接暴晒，以免影响生长和花期。在开花期，要把植株放在弱光照的地方，以便让花得更加绚丽长久。越冬温度要保持在10℃以上。', '扦插繁殖\r\n以春、秋季或花谢后进行最好。母株基部常生长较多气生根，将带有气生根 的茎节上部剪下，用水苔包扎排放在塑料框架中，室温25～30℃，空气湿度70%～80%，待茎部萌发新芽后取出盆栽。母株基部还会萌发出新芽，待新芽长成茎节时，又可剪取繁殖。\r\n\r\n播种繁殖\r\n万带兰种子以随收随播最好，种子用10%次氯酸钠水溶液浸泡5～10分钟，再用无菌水冲洗后均匀播种在培养基上。以MS培养基添加5毫克/升6－苄氨基腺嘌呤和0．2毫克/升萘乙酸。在播种2～3个月后，从原球茎的顶部长出第一片叶。当出现2～3片叶时，原球茎伸长，逐渐出现第一条根。播种后9～10个月，小苗可从培养瓶中移植到小盆。\r\n\r\n无菌播种\r\n一种万带兰的无菌播种和组织培养技术，其特征在于该技术包括以下步骤：\r\n（1）材料：采用大花万带兰和鸟舌兰为亲本，开花时选取生长健壮的母株进行大花万带兰的自交授粉及其进行大花万带兰和鸟舌兰杂交，授粉后果实120-150天成熟时，做为外植体用于播种；\r\n（2）无菌播种：取基本成熟的果实，用75%的酒精浸泡30秒后置于0.1%的升汞溶液中消毒20分钟，无菌水冲洗4～5次后切开果实，用接种针将白色粉末状种子接种到种子萌发培养基中30-40天胚萌发，60天形成完整植；当培养基中无菌实生菌太密而实生苗较小时，可在相同的培养基上进行壮苗培养；培养温度26±2℃，光照度1500～2000lx，光照12小时/天；\r\n（3）丛生芽增殖：为获得更多的种苗，利用无菌实生苗的茎尖或茎节培养在增殖培养基上能形成丛生芽，丛生芽在相同的培养基上能进行继代增殖。培养温度26±2℃，光照度1500～2000lx，光照12小时/天；\r\n（4）生根壮苗：将播种形成的植株或继代增殖得到的丛生芽切割成单个芽，接种在生根培养基上进行生根培养；40天能形成株高3-4厘米的完整植株；培养温度26±2℃，光照度1500～2000lx，光照12小时/天；\r\n（5）试管苗移栽：当试管苗能长至3-4厘米高时，转移到自然光下炼苗7-14天，然后将其从玻璃瓶中取出，洗净根部的培养基，移入泥炭和粗椰壳的混合基质中，保持适当通风和足够的湿度', '症状\r\n叶斑半圆形（始自叶缘）、近圆形以至不定形。褐色、灰褐色至灰白色，稍下陷。后期斑面现散生的针头大小黑粒（病菌分孢器）。\r\n\r\n病原及发病特点\r\n病原为半知菌亚门真菌，多为叶点霉[Phyllosticta sp.]，有的为大茎点霉[Macrophoma sp.]壳针孢霉[Septeria sp.]和壳二孢霉[Ascochyta sp.]。病菌均以菌丝体和子实体（分孢器）在病部和病残体上越冬，翌年分生孢子自分孢器顶部孔口涌出，借雨水溅射传播、扩散，从孔口或伤口侵入致病。温暖潮湿的天气或园圃环境，皆有利这些病菌的繁殖、传播和侵染。\r\n\r\n防治方法\r\n①剪除病段和清除病残物集中烧毁。\r\n②改善园圃通透性。\r\n③喷药保护新抽叶片[1%波尔多液，或30%氧氯化铜悬浮剂+4%多硫悬浮剂（1∶1）600～800倍液（即混即喷），或试用50%加瑞农可湿粉600倍液，或40%氟硅唑、25%腈菌唑浮油7000倍液，或50%甲羟鎓水剂1500倍液7～l0天喷一次，连喷数次。', '该属植物全世界约有60个原生种，全部为附生植物。广泛分布于东半球的热带和亚热带 地区，自印度往东至中国南部、东南亚、新几内亚、澳大利亚及菲律宾、所罗门群岛等太平洋岛 屿均有分布。大多数种类花较大，花色鲜艳，花期长，是很有价值的观赏花卉。', '观赏价值\r\n万带兰是世界上栽培较多和最受欢迎的洋兰之一。是热带庭院中栽种比较多而管 理十分省事的花卉，既可作盆栽花卉，又能作切花。\r\n万带兰一般生长缓慢，从幼苗到成品花一般需要生长2年至4年，所以家庭养花一般都是到花卉市场上购买成品花。', '万带兰是兰花的一种，它的花语和象征代表意义：有个性。 \r\n万带兰为典型的附生兰科植物，它为单轴类茎的洋兰，有明显的茎干和气生根。根较卡特兰、石斜粗壮，不但负责吸收水分和养料，并且支撑茎干直立向上。新根在春天从茎部生出，通常白色，先端根冠部分常为绿色。如根冠折断，生长即停止不前。万带兰靠粗壮的根系可以附着在其他植物或岩石上生长。正因为万带兰生长习性如此与众不同，故此人们付予它的象征意义是：有个性。 ');
INSERT INTO `plantinfo` VALUES (66, 66, '多年生草本花卉', '植物界 被子植物门 单子叶植物纲 天门冬目 百合科 芦荟属', '春季冬季', '芦荟是一种百合科草本植物，它是多年生百合科肉质草本植物。芦荟叶簇生，呈座状或生于茎顶，叶常披针形或叶短宽，边缘有尖齿状刺。花序为伞形、总状、穗状、圆锥形等，色呈红、黄或具赤色斑点，花瓣六片、雌蕊六枚。花被基部多连合成筒状。\r\n芦荟原产于地中海、非洲，为百合科多年生草本植物，据考证的野生芦荟品种300多种，主要分布于非洲等地。\r\n芦荟颇受大众喜爱，主要因其易于栽种，为花叶兼备的观赏植物。可食用的品种只有六种，而当中具有药用价值的芦荟品种主要有：洋芦荟 (又名巴巴多斯芦荟或翠叶芦荟 Aloe Barbadensis/Aloe Vera)，库拉索芦荟（原产于非洲北部地区，目前西印度群岛有广泛栽培，我国亦有栽培），好望角芦荟（分布于非洲南部），元江芦荟等。\r\n芦荟可以当护肤品，芦荟胶对蚊叮有一定的止痒作用。它的特征成分是芦荟蒽醌等，芦荟由于含有多种生物活性物质，在中国民间就被作为美容、护发和治疗皮肤疾病的天然药物。含有丰富的多糖、蛋白质、氨基酸、维生素、活性酶及对人体十分有益的微量元素。', '芦荟为常绿、多肉质的草本植物。茎短、叶近簇生或稍二列（幼小植株），肥厚多汁，条状披针形，粉绿色，长15-35厘米，基部宽4-5厘米，顶端有几个小齿，边缘疏生刺状小齿。\r\n花葶高60-90厘米，不分枝或有时稍分枝；总状花序具几十朵花；苞片近披针形，先端锐尖；花点垂，稀疏排列，淡黄色而有红斑；花被长约2.5厘米，萼片先端稍外弯；雄蕊与花被近等长或略长，花柱明显伸出花被外。\r\n\r\n芦荟叶簇生呈座状或生于茎顶，叶常披针形或叶短宽，边缘有尖齿状刺。花序为伞形、总状、穗状、圆锥形等，色呈红、黄或具赤色斑点，花瓣六片、雌蕊六枚，花被基部多连合成筒状。\r\n\r\n芦荟属生长在热带或亚热带地区，叶肥厚多汁，叶面光滑油润，簇生于短茎上，呈座状或生于茎顶，叶常披针形或叶短宽，叶缘有刺状细齿有或无斑纹，四季葱翠碧绿，常不结实，给人以朴实无华的感觉。\r\n\r\n芦荟各个品种性质和形状差别很大，有的象巨大的乔木，高达20米左右，有的高度却不及10厘米，其叶子和花的形状也有许多种，栽培上各有特征，千姿百态，深受人们的喜爱。芦荟本是热带植物，生性畏寒，但芦荟也是好种易活的植物。\r\n\r\n芦荟12月至翌年3月开花。', '土壤\r\n芦荟以透水透气性能好，有机质含量高，PH值在6.5-7.2。芦荟喜欢生长在排水性能良好，不易板结的疏松土质中。一般的土壤中可掺些沙砾灰渣，如能加入腐叶草灰等更好。排水透气性不良的土质会造成根部呼吸受阻，腐烂坏死，但过多沙质的土壤往往造成水分和养分的流失，使芦荟生长不良。\r\n\r\n光照\r\n喜光，耐半阴，忌阳光直射和过度荫蔽。芦荟需要充分的阳光才能生长，需要注意的是，初植的芦荟还不宜晒太阳，最好是只在早上见见阳光，过上十天半个月它才会慢慢适应在阳光下茁壮成长。\r\n\r\n温度\r\n芦荟怕寒冷，它长期生长在终年无霜的环境中。适宜生长环境温度为20-30℃，夜间最佳温度为14-17℃。在5℃左右停止生长，0℃时，生命过程发生障碍，如果低于0℃，就会冻伤叶肉受冻全部萎蔫死亡。生长最适宜的温度为15-35℃，湿度为45-85%。\r\n\r\n水份\r\n芦荟有较强的抗旱能力，离土的芦荟能干放数月不死。芦荟生长期需要充足的水分，但不耐涝。\r\n和所有植物一样，芦荟也需要水分，但最怕积水。在阴雨潮湿的季节或排水不好的情况下很容易叶片萎缩、枝根腐烂以至死亡。\r\n\r\n生态环境\r\n芦荟的生态环境（空气、水体、土壤等）不能受污染，注意通风。\r\n\r\n肥料\r\n肥料对任何植物都是不可缺少的。芦荟不仅需要氮磷钾，还需要一些微量元素。为保证芦荟是绿色天然植物，要尽量使用发酵的有机肥，饼肥、鸡粪、堆肥都可以，蚯蚓粪肥更适合种植芦荟。\r\n\r\n繁殖\r\n芦荟一般都是采用幼苗分株移栽或扦插等技术进行无性繁殖的。无性繁殖速度快，可以稳定保持品种的优良特征。', '芦荟是最好养的植物，干了浇点水，这是懒人种的植物。芦荟生命力十分旺盛，极其好养，其生长特性是喜阳光，但惧烈日；喜湿润，但忌积水；耐高温、怕严寒。 \r\n芦荟喜高温湿润气候，喜光，耐旱，忌积水，怕寒冷，当气温降至0℃时即遭寒害。对土壤要求不严，种在旱、瘠土壤上叶瘦色黄，在肥沃土壤中叶片肥厚浓绿。\r\n1、减少浇水，1星期浇1-2次。 \r\n2、不要让叶子接触土曩。 \r\n3、防冻。 \r\n4、多让芦荟晒太阳，不要暴晒。', '芦荟喜欢生长在排水性能良好，不易板结的疏松土质中。一般的土壤中可掺些沙砾灰渣，如能加入腐叶草灰等更好。排水透气性不良的土质会造成根部呼吸受阻，烂根坏死，但过多沙质的土壤往往造成水分和养分的流失，使芦荟生长不良，及时在地面喷施新高脂膜，可保墒防水分蒸发、防晒抗旱、保温防冻、防土层板结，窒息和隔离病虫源。', '芦荟常见病害主要有炭疽病、褐斑病、叶枯病、白绢病及细菌性病害。家庭盆栽芦荟，对病害宜采取预防为主，在病害发生前选择抗病品种和优质无病害种苗，其观赏价值已下降。\r\n\r\n病害预防\r\n在病害未发生前，或已发病的植株去除带病部位后，将0.5～0.8的石灰等量式波尔多液（即每100公斤水加硫酸铜和石灰各0.5～0.8公斤）施于芦荟叶面，可有效预防、抑制病菌侵入和蔓延。\r\n\r\n病害治疗\r\n病害发生后，用内吸传导的治疗剂如托布津、瑞毒霉等，以及抗生素如硫酸链霉素、农用链霉素、春雷霉素、井冈霉素等直接施用，能杀死芦荟体内的病原菌，控制病害蔓延。\r\n\r\n芦荟锈病\r\n症状：肉质叶上产生黄褐色病斑。夏孢子堆生在表皮下，裸露后呈红褐色，粉状。冬孢子堆生在表皮下，破裂后呈黑褐色。\r\n病原物：Uromycesaloes(Cooke)Magnus，又称芦荟单胞锈菌.\r\n侵染途径：病菌主要以冬孢子随病株残体留在土壤表面越冬。\r\n①越冬后的孢子，在适宜的环境下，萌发产生担孢子，借气流传播到叶片上，产生芽管侵入为害，先后在受害部位形成性孢子器和锈孢子器。\r\n②锈孢子成熟后，借气流传播，萌发后再侵入危害害，之后在寄主被害部产夏孢子堆和夏孢子。\r\n③夏孢子成熟后又借气流传播，重复侵染。直至生长后期或天气转凉时，在病部形成冬孢子堆和冬孢子，然后越冬。\r\n发生条件：锈病的发生与气候条件有着密切的关系，在日平均气温27℃-32℃，天气多雨，湿度大，锈病会严重发生。防治方法：清除田间病残体，集中烧毁。', '芦荟原产于非洲热带干旱地区，分布几乎遍及世界各地。在印度和马来西亚一带、非洲大陆和热带地区都有野生芦荟分布。在中国福建、台湾、广东、广西、四川、云南等地有栽培，也有野生状态的芦荟存在。芦荟的品种至少有300种以上，其中非洲大陆就有250种左右，马达加斯加约有40种，其余10种分布在阿拉伯等地。\r\n芦荟原非洲北部地区，目前于南美洲的西印度群岛广泛栽培；我国亦有栽培。\r\n\r\n植物资源分布\r\n1、库拉索芦荟原产非洲北部地区，目前于南美洲的西印度群岛广泛栽培，中国亦有栽培。\r\n2、好望角芦荟分布非洲南部地区。\r\n3、斑纹芦荟。芦荟原产于非洲热带干旱地区,现在芦荟分布几乎遍及世界各地，据调查，在印度和马来西亚一带、非洲大陆和热带地区都有野生芦荟分布。在中国云南元江地区，也有野生状态的芦荟存在。\r\n\r\n生境分布\r\n1、原产非洲北部地区，目前于南美洲的西印度群岛广泛栽培；中国亦有栽培。\r\n2、中国福建、台湾、广东、广西、四川、云南等地有栽培。\r\n3、分布非洲南部地区。', '芦荟的叶片中含有超过二百种化合物，当中包括有20种矿物质、18种氨基酸、12种维生素及其他各种不同的养分，包括多种黏多糖、脂肪酸、蒽醌类及黄酮类化合物、糖、活性酶等。蒽醌类又名安特拉归农综合体，有消毒杀菌的功效，主要存在于汁液里。不过，芦荟的表皮含有大黄素，可以令服用者腹泻，及令孕妇流产，因此芦荟必须去皮食用。\r\n味苦性寒，清肝热、通便、杀虫；此外还用于头痛、大便秘结、小儿惊痫、疳疡疖肿、烧烫伤、癣疮、痔、萎缩性鼻炎、瘰、肝炎、胆道结石、湿癣等。但众多品种之中，只有数个品种可作食用或外用，其中药用价值最佳的品种为翠叶芦荟。', '芦荟的花语：自尊又自卑的爱，另一种说法芦荟代表青春之源。');
INSERT INTO `plantinfo` VALUES (105, 105, '灌木花卉', '植物界 被子植物门 双子叶植物纲 金虎尾目 大戟科 大戟属', '冬季 秋季', '一品红为大戟科大戟属植物，又名为圣诞花，是在圣诞节用来摆设的红色花卉。原产于墨西哥塔斯科地区的某种变色型观叶植物。 一品红通常高六十厘米至三米，其深绿色的叶长约七至十六厘米。其最顶层的叶是火红色、红色或白色的，因此经常被误会为花朵，而真正的花是在叶束中间的部份。花期从十二月可持续至来年的二月，花期时正值圣诞、元旦期间，非常适合节日的喜庆气氛。 一品红可作药用植物有活血化痰、接骨消肿的作用。', '一品红为常绿灌木，高50～300厘米,茎叶含白色乳汁。茎光滑，嫩枝绿色，老枝深褐色。\r\n\r\n一品红为单叶互生；杯状聚伞花序，每一花序只有1枚雄蕊和1枚雌蕊，其下形成鲜红色的总苞片，呈叶片状，色泽艳丽，是观赏的主要部位。一品红的“花”由形似叶状、色彩鲜艳的苞片（变态叶）组成，真正的花则是苞片中间一群黄绿色的细碎小花，不易引人注意。\r\n\r\n一品红为果为蒴果，果实9～10月成熟，花期12月至翌年3月。卵状椭圆形，全缘或波状浅裂，有时呈提琴形，顶部叶片较窄，披针形；叶被有毛，叶质较薄，脉纹明显；顶端靠近花序之叶片呈苞片状，开花时株红色，为主要观赏部位。杯状花序聚伞状排列，顶生；总苞淡绿色，边缘有齿及1～2枚大而黄色的腺体；雄花具柄，无花被；雌花单生，位于总苞中央；自然花期12月至翌年2月。有白色及粉色栽培品种。\r\n\r\n一品红为根圆柱状，极多分枝。茎直立，高1-3 (4)米，直径1-4 (5)厘米，无毛。叶互生，卵状椭圆形、长椭圆形或披针形，长6-25厘米，宽4-10厘米，先端渐尖或急尖，基部楔形或渐狭，绿色，边缘全缘或浅裂或波状浅裂，叶面被短柔毛或无毛，叶背被柔毛；叶柄长2-5厘米，无毛；无托叶；苞叶5-7枚，狭椭圆形，长3-7厘米，宽1-2厘米，通常全缘，极少边缘浅波状分裂，朱红色；叶柄长2-6厘米。\r\n\r\n一品红为花序数个聚伞排列于枝顶；花序柄长3-4毫米；总苞坛状，淡绿色，高7-9毫米，直径6-8毫米，边缘齿状5裂，裂片三角形，无毛；腺体常1枚，极少2枚，黄色，常压扁，呈两唇状，长4-5毫米，宽约3毫米。雄花多数，常伸出总苞之外；苞片丝状，具柔毛；雌花1枚，子房柄明显伸出总苞之外，无毛；子房光滑；花柱3,中部以下合生；柱头2深裂。蒴果，三棱状圆形，长1.5-2.0 厘米，直径约1.5厘米，平滑无毛。种子卵状，长约1厘米，直径8-9毫米，灰色或淡灰色，近平滑；无种阜。\r\n\r\n一品红花果期10至次年4月。', '喜温暖\r\n一品红的生长适温为18～25℃，4～9月为18～24℃，9月至翌年4月为13～16℃。冬季温度不低于10℃，否则会引起苞片泛蓝，基部叶片易变黄脱落，形成“脱脚”现象。当春季气温回升时，从茎干上能继续萌芽抽出枝条。\r\n\r\n喜湿润\r\n一品红对水分的反应比较敏感，生长期只要水分供应充足，茎叶生长迅速，有时出现节间伸长、叶片狭窄的徒长现象。相反，盆土水分缺乏或者时干时湿，会引起叶黄脱落。因此，水分的控制直接关系到一品红的生长和发育。\r\n\r\n喜阳光\r\n一品红为短日照植物，在茎叶生长期需充足阳光，促使茎叶生长迅速繁茂。要使苞片提前变红，将每天光照控制在12小时以内，促使花芽分化。如每天光照9小时，5周后苞片即可转红。土壤以疏松肥沃，排水良好的砂质土壤为好。盆栽土以培养土、腐叶土和沙的混合土为佳。', '栽培要点\r\n一品红喜欢温暖湿润通风的环境，不耐低温，过强的阳光照射跟光线不足都同样不利于生长，生长期间要做好肥水管理、摘心定头等养护工作。\r\n浇水时要注意防止过干过湿，否则会造成植株下部的叶子发黄脱落、枝条生长不均匀、夏季天气炎热时，应适当加大浇水量，但切勿盆内积水，以免引起根部腐烂。其他季节要具体看盆土干湿情况而定。\r\n\r\n一品红对土壤的要求不严，一般的肥沃沙质土壤就行。换盆时应及时加入腐熟的有机肥作为基肥，在生长开花季节，每隔半个月左右施一次液肥。入秋后，可加施一些富含钾磷的肥，以促进花芽分化，保证苞叶艳红纯正。\r\n一品红进入生长期后，长势较快，这时一定要注意摘心定头，否则枝条生长过高，除了易倒之外还影响到外观的形状，减少了观赏价值。\r\n一品红的繁殖可以采取扦插法，在春夏季节时剪取一段枝条，在剪口涂抹一些草木灰，以防止切口腐烂，插入土中大约二十五天左右即可生根。\r\n\r\n1、培养土的配制\r\n一品红喜疏松、排水良好的土壤，一般用菜园土3份、腐殖土3份、腐叶土3份、腐熟的饼肥1份，加少量的炉渣混合使用。[8]\r\n\r\n2、温度\r\n一品红喜温暖怕寒冷。每年的9月中下旬进入室内，要加强通风，使植株逐渐适应室内环境，冬季室温应保持15℃至20℃。此时正值苞片变色及花芽分化期，若室温低于15℃以下，则花、叶发育不良。至12月中旬以后进入开花阶段，要逐渐通风。\r\n\r\n3、光照\r\n一品红喜光照充足，向光性强，属短日照植物。一年四季均应得到充足的光照，苞片变色及花芽分化、开花期间显得更为重要。如光照不足，枝条易徒长、易感病害，花色暗淡，长期放置阴暗处，则不开花，冬季会落叶。为了提前或延迟开花，可控制光照，一般每天给予8至9小时的光照，40天便可开花。\r\n\r\n4、施肥\r\n一品红喜肥沃沙质土壤。除上盆、换盆时，加入有机肥及马蹄片作基肥外，在生长开花季节，每隔10至15天施一次稀释5倍充分腐熟的麻酱渣液肥。入秋后，还可用0．3%的复合化肥，每周施一次，连续3至4次，以促进苞片变色及花芽分化。\r\n\r\n5、浇水\r\n要根据天气、盆土和植株生长情况灵活掌握，一般浇水以保持盆土湿润又不积水为度，但在开花后要减少浇水。\r\n\r\n6、修剪\r\n主要修剪一些老根、病弱枝，一般修剪时间为6月下旬、8月中旬。在栽培中应控制大肥大水，尤其是秋季植株定型前。待枝条长20至30厘米时开始整形作弯，目的是使株形短小，花头整齐，均匀分布，提高观赏性。\r\n\r\n盆栽养护\r\n养护一品红要做好生长期的肥水管理、控制定头、保暖防寒等工作。\r\n浇水要注意调匀，防止过干过湿，否则会造成植株下部叶子发黄脱落，俗称“脱脚”，或枝条生长不均匀。在黄梅季节及夏天阵雨时，要防止盆内积水，雨后要及时侧盆倒水，或者雨前连盆将其移到室内。夏季天气炎热，需水量多，每天早晨浇足清水，傍晚观察，如发现盆土干燥，应补充浇水1次，这次水量可以少些。春秋季节一般1-2天浇水1次，具体看天气与盆土干湿而定。\r\n中耕施肥工作不可忽视，上盆2-3周后就可用小竹片疏松盆土，使土壤空气流通，然后可施些液肥，用20%腐熟人粪尿及黄豆水均可。8中旬至10月，需增加施肥的次数，约10天施1次，并适当卿川．几神卉的肥料，浓度也可略浓些，用30%腐熟鸡、鸭、鸽粪水。可以促使其形成花蕾时充分生长。\r\n一品红上盆后，生长较快，要控制定头，否则枝条生长过高，风大易倒，且影响姿态的美观。定头可以根据需要分为直头或扎景两种。直头的形式即在6月最后一次定头后，让枝条一直生长，可长到高60-70厘米大株。而扎景需在定头生长达l0-15厘米时，用铅丝剪成15-20厘米一段，上端弯成钩子形，下端插入盆土中，上端把每根枝条由L而下钩到盆面，约10天枝条继续长出约巧厘米后，再把枝条沿盆边水平方向诱引，再隔10天后，把已到盆边的枝条向上引导。在9月中旬至10月下旬，用30-40厘米长的细竹竿把每根花头扎住，而开花时枝条如有高低可进行整理，高的往下扎，低的往上拉。这种方法费=L较多，但可以使盆花花朵整齐。国外引进许多一品红矮生品种，只要通过定头控制，便可达到株矮、花大、花头整齐的目的。\r\n\r\n一品红每年10月中句即霜降前进人室内养护，太迟会受冻害，太早室内温度高，会使植株徒长。刚移到室内时，安放在通风处；到10月中旬，要放在朝南向阳温暖地方，不再受冷风吹袭，以免叶黄脱落。一般在12月上、中旬，一品红顶端叶片转红，被绿叶衬托，显得格外红艳。', '要使圣诞红的质量达到最佳状态，肥料和水分的管理也是非常重要的，其对肥料的需要量是很大的，而且各个生长时期所需要的肥料的成分也有很大的差别，特别是在营养生长时期，前面我们讲到从扦插后生根（约15天）开始，我们就由灌溉时伴随施肥，一直到开花、销售都离不开肥料的补给。圣诞红植株所需要的营养成分主要有氮、磷、钾、钙、镁、锰、锌、硼、钼等元素，缺少哪一种元素都会出现不良的症状。', '主要有真菌引起的茎腐病、灰霉病和细菌引起的叶斑病等，除了定期喷施杀菌剂外，还要在温室中做好通风换气、降低湿度等辅助工作来减少病原，工具应及时消毒，防止交叉传染，并及时清理病株，减少感染源。冬季可用硫磺熏蒸器或含硫的烟雾弹杀死空气中的真菌孢子。\r\n一品红在温室栽培过程中易感染灰霉病、根腐病、茎腐病、叶斑病等病虫害，国内外有不少有针对性的研究。', '一品红原产于中美洲墨西哥塔斯科（Taxco）地区，在被引入欧洲之前很久，就被当地的阿芝特克人（Aztecs,美洲印第安人）一直用作颜料和药物。1825年由美国驻墨西哥首任大使约尔·波因塞特（JoelRobertsPoinsett）引入美国。\r\n广泛栽培于热带和亚热带。中国绝大部分省区市均有栽培，两广和云南地区有露地栽培，植株可高达2米。常见于公园、植物园及温室中，供观赏。\r\n原产中美洲，广泛栽培于热带和亚热带。我国绝大部分省区市均有栽培，常见于公园、植物园及温室中，供观赏。', '开花期间适逢圣诞节，故又称“圣诞红”。这是一种适合任何祝福的花。尤其是红而大的叶子，一付喜气洋洋的模样，好像正握著双手向人道贺似的。它是代表圣诞节的最佳花朵，但是在一些婚礼中，也可以看到红白两色圣诞红装饰著就是“我的心正在燃烧”，也可做为求爱之用咧！把它当成礼物送人，一定能让对方体礼堂的情景。使婚宴气氛更显得温馨热闹。在寒冷的冬季里，放一盆鲜红的圣诞红在家中，感觉就像是点燃了一盆温暖的炉火一样。 所以，它的花语之一会。出你一片炽热的热情。', '一品红花色艳丽，由于其开花时正值元旦、春节，因此有普天同庆、共祝新生的美好寓意。\r\n在严寒冬季，一品红拿硕大深红的花朵，给人感觉像是一盆温暖的炉火，因此又被赋予我的心正在燃烧的花语。\r\n\r\n花语：绿洲（Oasis）\r\n在其它树木的叶子的果实都掉落的严冬里，只有这种树依然繁茂，并结着红色的果实。这种树对厌倦漫长严冬的人来说，有如沙漠里的绿洲。因此，它的花语是“绿洲”。凡是受到这种花祝福的而诞生人，具有安慰人心的好心肠。如果将这种心指向特定的某个人，他(她)将会立刻成为你的俘虏。');
INSERT INTO `plantinfo` VALUES (107, 107, '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `plantinfo` VALUES (108, 108, '', '', '', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE `shoppingcart`  (
  `shoppingCartID` int(10) NOT NULL AUTO_INCREMENT,
  `userID` int(10) NOT NULL,
  `plantDetailsID` int(10) NOT NULL DEFAULT 0,
  `shoppingCartNumber` int(10) NULL DEFAULT NULL,
  `shoppingCartCreateTime` datetime NULL DEFAULT NULL,
  `shoppingCartAmount` float(10, 2) UNSIGNED NULL DEFAULT 0.00,
  PRIMARY KEY (`shoppingCartID`) USING BTREE,
  INDEX `用户编号1`(`userID`) USING BTREE,
  INDEX `详情编号2`(`plantDetailsID`) USING BTREE,
  CONSTRAINT `用户编号1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `详情编号2` FOREIGN KEY (`plantDetailsID`) REFERENCES `plantdetails` (`plantDetailsID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of shoppingcart
-- ----------------------------
INSERT INTO `shoppingcart` VALUES (24, 32, 5, 2, '2020-05-10 05:00:08', 22.00);
INSERT INTO `shoppingcart` VALUES (25, 1, 6, 3, '2020-05-18 01:30:30', 66.00);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userID` int(10) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userAccount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userPassword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userEmail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userCreateTime` datetime NULL DEFAULT NULL,
  `userAvatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userState` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userPhone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userSex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`userID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'yang', '1234', '123456', '25774541@qq.com', '2020-02-22 12:07:19', 'plantResource/53eac6e4838ac_200_200.jpg', '会员', '可用', '广州市天河区黄村1', '16734256743', '女');
INSERT INTO `user` VALUES (2, 'yangxiao', '122', '122', '2575440638@qq.com', '2020-02-22 13:12:05', 'plantResource/55e7253348f8f_200_200.jpg', '会员', '停用', '黄埔', '13221321323', '男');
INSERT INTO `user` VALUES (8, '1244', 'admin', '1234', '2575440638@qq.com', '2020-02-22 14:12:27', 'plantResource/55e7253348f8f_200_200.jpg', '管理员', '可用', '岳阳', '13221321326', '女');
INSERT INTO `user` VALUES (9, '12', '2222', '442333', '2575440638@qq.com', '2020-02-22 14:13:51', 'plantResource/55e7253348f8f_200_200.jpg', '普通用户', '可用', '中山', '13221321325', '男');
INSERT INTO `user` VALUES (10, 'eeqq', '12', '1', '2575440638@qq.com', '2020-02-22 14:16:02', 'plantResource/55e7253348f8f_200_200.jpg', '会员', '可用', '衡阳', '15274455610', '女');
INSERT INTO `user` VALUES (23, '2131', '213123', '321321', '2575440638@qq.com', '2020-04-24 00:19:06', 'plantResource/55e7253348f8f_200_200.jpg', '会员', '可用', 'ewqeq', '13243567676', '男');
INSERT INTO `user` VALUES (24, '23213', '321333', '321332', '2575440638@qq.com', '2020-04-28 00:28:08', 'plantResource/55e7253348f8f_200_200.jpg', '会员', '可用', 'sadadsa', '13221321321', '男');
INSERT INTO `user` VALUES (25, '小心', 'ewqewq', 'ewqewq', '2575440638@qq.com', '2020-04-28 02:47:34', 'plantResource/55e7253348f8f_200_200.jpg', '会员', '可用', '231321312', '13213213213', '男');
INSERT INTO `user` VALUES (26, '32133', '321321321', '3213213213', '2575440638@qq.com', '2020-04-28 02:55:03', 'plantResource/55e7253348f8f_200_200.jpg', '会员', '可用', 'ewqewqeq', '14267654532', '男');
INSERT INTO `user` VALUES (27, 'dsads', 'dsadsa', 'dsadsad', '2575440638@qq.com', '2020-04-28 02:56:57', 'plantResource/55e7253348f8f_200_200.jpg', '会员', '可用', '小小小', '13256432345', '男');
INSERT INTO `user` VALUES (28, '小信', '260696', '98391', '2575440638@qq.com', '2020-04-28 03:53:15', 'plantResource/55e7253348f8f_200_200.jpg', '会员', '可用', 'sdada', '14234531234', '男');
INSERT INTO `user` VALUES (29, 'dsad', '25732132', '321321', '2575440638@qq.com', '2020-05-01 19:37:20', 'plantResource/55e7253348f8f_200_200.jpg', '普通用户', '可用', '3213', '15274455320', '男');
INSERT INTO `user` VALUES (30, '小小二二', 'yang11', 'yang22', '2575440638@qq.com', '2020-05-04 18:18:48', 'plantResource/u=3377311918,627704564&fm=26&gp=0.jpg', '会员', '可用', '临澧县', '14254356578', '男');
INSERT INTO `user` VALUES (31, '312321', '32132ewq', '321ewqe', '2575440638@qq.com', '2020-05-04 23:41:01', 'plantResource/55e7253348f8f_200_200.jpg', '会员', '可用', '广州市天河区', '12321321321', '男');
INSERT INTO `user` VALUES (32, 'xiaoxi', 'xiaoxiaoa', 'xiaoxiaoa', '2575440638@qq.com', '2020-05-10 04:56:46', 'plantResource/52ceab933158a_200_200.jpg', '会员', '可用', '小地址', '12323234571', '男');

SET FOREIGN_KEY_CHECKS = 1;
