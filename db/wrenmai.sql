/*
Navicat MySQL Data Transfer

Source Server         : mybaidu
Source Server Version : 50723
Source Host           : 182.61.37.82:3306
Source Database       : wrenmai

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2018-09-15 00:23:08
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
  `headiconpath` varchar(300) DEFAULT NULL COMMENT '头像路径',
  `dimension` varchar(20) DEFAULT NULL COMMENT '人脉维度',
  `money` int(11) NOT NULL COMMENT '显示解决了“”',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rolltitles
-- ----------------------------

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '姓名',
  `phone` varchar(30) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL COMMENT '公司',
  `department` varchar(100) DEFAULT NULL COMMENT '部门',
  `weixinhao` varchar(100) DEFAULT NULL COMMENT '微信号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
