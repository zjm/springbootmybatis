/*
Navicat MySQL Data Transfer

Source Server         : mybaidu
Source Server Version : 50723
Source Host           : 182.61.37.82:3306
Source Database       : wrenmai

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2018-09-17 00:49:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` bigint(11) NOT NULL,
  `userid` bigint(20) DEFAULT NULL,
  `content` varchar(300) DEFAULT NULL COMMENT '提问',
  `type` tinyint(4) DEFAULT NULL COMMENT '0.我发起的；1.我参与的',
  `realnamepublish` tinyint(4) DEFAULT NULL COMMENT '1.是实名发布；0.非实名发布',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------

-- ----------------------------
-- Table structure for rolltitles
-- ----------------------------
DROP TABLE IF EXISTS `rolltitles`;
CREATE TABLE `rolltitles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `nickname` varchar(100) DEFAULT '0' COMMENT '用户昵称',
  `headiconpath` varchar(300) DEFAULT '' COMMENT '头像路径',
  `dimension` varchar(20) DEFAULT '' COMMENT '人脉维度',
  `money` int(11) NOT NULL COMMENT '显示解决了“”',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rolltitles
-- ----------------------------

-- ----------------------------
-- Table structure for sellproduct
-- ----------------------------
DROP TABLE IF EXISTS `sellproduct`;
CREATE TABLE `sellproduct` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `productname` varchar(200) DEFAULT '' COMMENT '出售产品名称',
  `price` float DEFAULT '0' COMMENT '价格',
  `kernel` int(11) DEFAULT '0' COMMENT '麦粒数',
  `thumbnail` varchar(100) DEFAULT '' COMMENT '缩略图路径',
  `detailimg` varchar(100) DEFAULT '' COMMENT '详情图路径',
  `remainingnum` int(11) DEFAULT '0' COMMENT '剩余数',
  `totalnum` int(11) DEFAULT '0' COMMENT '商品总数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sellproduct
-- ----------------------------
INSERT INTO `sellproduct` VALUES ('1', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('2', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('3', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('4', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('5', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('6', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('7', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('8', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('9', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('10', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('11', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('12', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('13', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('14', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('15', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('16', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('17', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('18', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('19', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('20', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('21', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('22', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('23', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('24', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('25', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('26', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('27', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('28', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('29', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('30', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('31', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('32', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('33', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('34', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('35', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('36', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('37', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('38', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('39', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('40', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('41', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('42', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('43', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('44', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('45', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('46', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('47', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('48', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('49', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('50', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('51', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('52', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('53', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('54', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('55', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('56', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('57', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('58', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('59', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('60', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('61', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('62', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('63', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('64', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('65', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('66', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('67', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('68', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('69', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('70', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');
INSERT INTO `sellproduct` VALUES ('71', '产品1', '10.2', '100', 'headimg', 'long img', '100', '100');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `phone` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(100) DEFAULT '' COMMENT '姓名',
  `company` varchar(255) DEFAULT '' COMMENT '公司',
  `department` varchar(100) DEFAULT '' COMMENT '部门',
  `weixinhao` varchar(100) DEFAULT '' COMMENT '微信号',
  `mykernel` int(11) DEFAULT '0' COMMENT '我的麦粒数',
  `address` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', 'artname', '姓名', '公司', '部门', '微信', '0', null);
INSERT INTO `userinfo` VALUES ('2', '13585958130', 'testname', 'artname', '部门1', 'yishicom', '0', null);
INSERT INTO `userinfo` VALUES ('3', '13585958130', 'testname3', 'artname2', '部门1啊', 'yishicom', '0', null);
INSERT INTO `userinfo` VALUES ('4', '13585958130', 'testname3', 'artname2', '部门1啊', 'yishicom', '0', null);
INSERT INTO `userinfo` VALUES ('5', '13585958130', 'testname3', 'artname2', '部门1啊', 'yishicom', '0', null);
