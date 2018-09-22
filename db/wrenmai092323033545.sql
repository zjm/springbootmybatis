/*
Navicat MySQL Data Transfer

Source Server         : mybaidu
Source Server Version : 50723
Source Host           : 182.61.37.82:3306
Source Database       : wrenmai

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2018-09-23 03:55:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for appeal
-- ----------------------------
DROP TABLE IF EXISTS `appeal`;
CREATE TABLE `appeal` (
  `id` bigint(20) NOT NULL,
  `senduserid` bigint(20) DEFAULT NULL COMMENT '发起投诉人',
  `recuserid` bigint(20) DEFAULT NULL COMMENT '被投诉人',
  `orderid` bigint(20) DEFAULT NULL COMMENT '申诉订单',
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `content` varchar(600) DEFAULT NULL,
  `createtime` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of appeal
-- ----------------------------
INSERT INTO `appeal` VALUES ('228346750681739264', '227939210462490624', '227919346729480192', '0', '投诉标题', '投诉内容啊，速度快冻死了', '2018-09-23 02:48:27');
INSERT INTO `appeal` VALUES ('228348587979829248', '227919346729480192', '227939210462490624', '0', '投诉标题1', '投诉内容啊，速度快冻死了2', '2018-09-23 02:55:45');
INSERT INTO `appeal` VALUES ('228351171486543872', '227919346729480192', '227939210462490624', '0', '投诉标题11', '投诉内容啊，速度快冻死了21', '2018-09-23 03:06:01');
INSERT INTO `appeal` VALUES ('228352110259859456', '227919346729480192', '227939210462490624', '0', '投诉标题1', '投诉内容啊，速度快冻死了2', '2018-09-23 03:09:45');

-- ----------------------------
-- Table structure for kernelrecord
-- ----------------------------
DROP TABLE IF EXISTS `kernelrecord`;
CREATE TABLE `kernelrecord` (
  `id` bigint(20) NOT NULL,
  `userid` bigint(20) DEFAULT NULL,
  `title` varchar(100) DEFAULT '' COMMENT '奖励标题(获得原因)',
  `rewardnum` int(11) DEFAULT '0' COMMENT '奖励数量',
  `type` tinyint(4) DEFAULT '1' COMMENT '0.减少麦粒，1.增加麦粒',
  `rewardtime` varchar(30) DEFAULT NULL COMMENT '奖励时间',
  `createtime` varchar(30) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kernelrecord
-- ----------------------------
INSERT INTO `kernelrecord` VALUES ('228075253840998400', '227939210462490624', '登录奖励', '11', '1', '2018-09-22 08:49:37', '2018-09-22 08:49:37');
INSERT INTO `kernelrecord` VALUES ('228077178196062208', '227939210462490624', '签订奖励', '10', '1', '2018-09-22 08:57:16', '2018-09-22 08:57:16');
INSERT INTO `kernelrecord` VALUES ('228077324040400896', '227939210462490624', '签订奖励', '5', '1', '2018-09-22 08:57:51', '2018-09-22 08:57:51');
INSERT INTO `kernelrecord` VALUES ('228077337009188864', '227939210462490624', '签订奖励', '8', '1', '2018-09-22 08:57:54', '2018-09-22 08:57:54');
INSERT INTO `kernelrecord` VALUES ('228077349713735680', '227939210462490624', '签订奖励', '9', '1', '2018-09-22 08:57:57', '2018-09-22 08:57:57');
INSERT INTO `kernelrecord` VALUES ('228262016106622976', null, 'Also', '2', '1', '2018-09-22 21:11:45', '2018-09-22 21:11:45');
INSERT INTO `kernelrecord` VALUES ('228262433720889344', null, 'Also', '2', '1', '2018-09-22 21:13:25', '2018-09-22 21:13:25');
INSERT INTO `kernelrecord` VALUES ('228263354018295808', null, 'Also', '2', '1', '2018-09-22 21:17:04', '2018-09-22 21:17:04');
INSERT INTO `kernelrecord` VALUES ('228263481365753856', null, 'Also', '2', '1', '2018-09-22 21:17:34', '2018-09-22 21:17:34');
INSERT INTO `kernelrecord` VALUES ('228265828892536832', null, '签订奖励', '9', '1', '2018-09-22 21:26:54', '2018-09-22 21:26:54');
INSERT INTO `kernelrecord` VALUES ('228267703750619136', null, '签订奖励', '9', '1', '2018-09-22 21:34:21', '2018-09-22 21:34:21');
INSERT INTO `kernelrecord` VALUES ('228268116822454272', null, '新用户注册', '2', '1', '2018-09-22 21:36:00', '2018-09-22 21:36:00');
INSERT INTO `kernelrecord` VALUES ('228270082956980224', null, '新用户注册', '2', '1', '2018-09-22 21:43:48', '2018-09-22 21:43:48');
INSERT INTO `kernelrecord` VALUES ('228270342550843392', null, '新用户注册', '2', '1', '2018-09-22 21:44:50', '2018-09-22 21:44:50');
INSERT INTO `kernelrecord` VALUES ('228270519915376640', null, '新用户注册', '6', '1', '2018-09-22 21:45:33', '2018-09-22 21:45:33');

-- ----------------------------
-- Table structure for myaddress
-- ----------------------------
DROP TABLE IF EXISTS `myaddress`;
CREATE TABLE `myaddress` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT '0' COMMENT '联系人',
  `phone` varchar(15) DEFAULT '' COMMENT '手机号码',
  `area` varchar(100) DEFAULT NULL COMMENT '选择地区',
  `detailaddress` varchar(300) DEFAULT NULL COMMENT '详细地址',
  `postcoe` varchar(10) DEFAULT '' COMMENT '邮编',
  `createtime` varchar(30) DEFAULT '' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=228180143204462593 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myaddress
-- ----------------------------
INSERT INTO `myaddress` VALUES ('228173921118056448', '227939210462490624', '天孙猴', '13569878968', '天空', '天空大道888号8栋8楼8888层8室', '88888', null);
INSERT INTO `myaddress` VALUES ('228174320680038400', '227939210462490624', '天孙猴', '13569878968', '上海市静安区', '静安大道888号8栋8楼88层8室', '88688', null);
INSERT INTO `myaddress` VALUES ('228180105573167104', '227939210462490624', '田星星', '13569878968', '上海市静安区', '静安大道888号8栋8楼88层8室', '88688', null);
INSERT INTO `myaddress` VALUES ('228180143204462592', '227939210462490624', '田星星', '13569878968', '上海市静安区', '静安大道888号8栋8楼88层8室', '88688', null);

-- ----------------------------
-- Table structure for quersionanser
-- ----------------------------
DROP TABLE IF EXISTS `quersionanser`;
CREATE TABLE `quersionanser` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `quersionid` bigint(20) DEFAULT NULL COMMENT '提问的问题id',
  `content` varchar(1000) DEFAULT NULL COMMENT '回答的问题答案',
  `createtime` varchar(30) DEFAULT '' COMMENT '回答时间',
  `anseruserid` tinyint(4) DEFAULT '0' COMMENT '解答人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quersionanser
-- ----------------------------

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` bigint(20) unsigned NOT NULL,
  `userid` bigint(20) DEFAULT '0',
  `productid` bigint(20) DEFAULT NULL COMMENT '礼品（商品）id',
  `content` varchar(300) DEFAULT '' COMMENT '提问',
  `type` tinyint(4) DEFAULT '0' COMMENT '0.我发起的；1.我参与的',
  `realnamepublish` tinyint(4) DEFAULT '0' COMMENT '1.是实名发布；0.非实名发布',
  `validityperiod` int(11) DEFAULT '0' COMMENT '有效期，当前时间与有创建时间计算小于等于有效期 查询显示',
  `status` tinyint(4) DEFAULT '0' COMMENT '0.进行中，1.结束，2.解决',
  `viewnum` int(11) DEFAULT '0' COMMENT '被浏览数量',
  `ansernum` int(11) DEFAULT '0' COMMENT '回答数',
  `giftimg` varchar(200) DEFAULT '' COMMENT '礼物图片，可保持礼物id（对应产品表）',
  `publishcompany` varchar(200) DEFAULT '' COMMENT '发布者公司名称',
  `rewardbalance` float DEFAULT '0' COMMENT '该问题金额',
  `createtime` varchar(30) DEFAULT '' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('228301065290772480', '227939210462490624', '79', '问题内容', '0', '0', '30', '0', '1', '2', null, '科技公司', null, '2018-09-22 23:46:55');
INSERT INTO `question` VALUES ('228301573980155904', '227939210462490624', '81', '问题内容', '0', '0', '30', '0', '2', '2', null, '科技公司', null, '2018-09-22 23:48:56');
INSERT INTO `question` VALUES ('228301650790445056', '227939210462490624', '81', '问题内容2', '0', '1', '30', '0', '3', '1', null, '科技公司是订单', null, '2018-09-22 23:49:15');
INSERT INTO `question` VALUES ('228305357951201280', '227939210462490624', '81', '问题内容2', '0', '1', '30', '0', '0', '0', null, '科技公司是订单', '10', '2018-09-23 00:03:59');
INSERT INTO `question` VALUES ('228327108810633216', '227939210462490624', '77', '请问', '0', '1', '3', '0', '0', '0', null, '测试公司', '10', '2018-09-23 01:30:24');
INSERT INTO `question` VALUES ('228327562852429824', '227939210462490624', '77', 'ahsajhdaks', '0', '1', '2', '0', '0', '0', null, '公司gs', '10', '2018-09-23 01:32:13');
INSERT INTO `question` VALUES ('228328232959602688', '227939210462490624', '80', 'fisdfjkd', '0', '1', '4', '0', '0', '0', null, '公司gs', '10', '2018-09-23 01:34:52');
INSERT INTO `question` VALUES ('228329249843441664', '227939210462490624', '79', 'dghkdkjf', '0', '1', '4', '0', '0', '0', null, '公司gs', '200', '2018-09-23 01:38:55');

-- ----------------------------
-- Table structure for questionimgs
-- ----------------------------
DROP TABLE IF EXISTS `questionimgs`;
CREATE TABLE `questionimgs` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(11) DEFAULT NULL,
  `imgname` varchar(200) DEFAULT '' COMMENT '图片名称，高级提问图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questionimgs
-- ----------------------------
INSERT INTO `questionimgs` VALUES ('21', '227258336670642176', 'upload/icon_android192.png');
INSERT INTO `questionimgs` VALUES ('22', '227258336670642176', 'upload/icon_android96.png');
INSERT INTO `questionimgs` VALUES ('23', '227259343362322432', 'upload/icon_android192.png');
INSERT INTO `questionimgs` VALUES ('24', '227259343362322432', 'upload/icon_android96.png');
INSERT INTO `questionimgs` VALUES ('25', '227259744929181696', 'upload/icon_android192.png');
INSERT INTO `questionimgs` VALUES ('26', '227259744929181696', 'upload/icon_android96.png');
INSERT INTO `questionimgs` VALUES ('27', '227930595706007552', 'upload/icon_android192.png');
INSERT INTO `questionimgs` VALUES ('28', '227930595706007552', 'upload/icon_android96.png');
INSERT INTO `questionimgs` VALUES ('29', '227930786211295232', 'upload/icon_android192.png');
INSERT INTO `questionimgs` VALUES ('30', '227930786211295232', 'upload/icon_android96.png');

-- ----------------------------
-- Table structure for rolltitles
-- ----------------------------
DROP TABLE IF EXISTS `rolltitles`;
CREATE TABLE `rolltitles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) DEFAULT NULL,
  `nickname` varchar(100) DEFAULT '0' COMMENT '用户昵称',
  `headimg` varchar(300) DEFAULT '' COMMENT '头像路径',
  `dimension` int(20) DEFAULT NULL COMMENT '人脉维度',
  `money` int(11) DEFAULT '0' COMMENT '显示解决了“”',
  `status` tinyint(4) DEFAULT '0' COMMENT '0.不显示，1.显示，2.已解决',
  `createtime` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=228066017312501761 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rolltitles
-- ----------------------------
INSERT INTO `rolltitles` VALUES ('228063773129175040', null, 'also', 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', '10', '2', null);
INSERT INTO `rolltitles` VALUES ('228065915869065216', null, 'also1', 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', '10', '2', null);
INSERT INTO `rolltitles` VALUES ('228065940837756928', null, 'also2', 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', '10', '2', null);
INSERT INTO `rolltitles` VALUES ('228065968448860160', null, 'also3', 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', '100', '2', null);
INSERT INTO `rolltitles` VALUES ('228066017312501760', null, 'also4', 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '1', '300', '2', null);

-- ----------------------------
-- Table structure for sellorder
-- ----------------------------
DROP TABLE IF EXISTS `sellorder`;
CREATE TABLE `sellorder` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `userid` bigint(20) DEFAULT '0' COMMENT '用户id',
  `addressid` bigint(20) DEFAULT '0' COMMENT '收货地址id',
  `productid` bigint(20) DEFAULT '0' COMMENT '产品id',
  `buynum` int(11) DEFAULT '0' COMMENT '购买数量',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态：0.正常，1.撤单,2.完成',
  `sendtype` tinyint(4) DEFAULT '0' COMMENT '配送方式：0.免费，1.收费',
  `createtime` varchar(255) DEFAULT '0' COMMENT '创建日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=228215784998957057 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sellorder
-- ----------------------------
INSERT INTO `sellorder` VALUES ('228215739973103616', '227939210462490624', '228180143204462592', '81', '1', '0', '0', '2018-09-22 18:07:52');
INSERT INTO `sellorder` VALUES ('228215784998957056', '227939210462490624', '228180143204462592', '81', '2', '0', '0', '2018-09-22 18:08:03');

-- ----------------------------
-- Table structure for sellproduct
-- ----------------------------
DROP TABLE IF EXISTS `sellproduct`;
CREATE TABLE `sellproduct` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `productname` varchar(200) DEFAULT '' COMMENT '出售产品名称',
  `price` float DEFAULT '0' COMMENT '价格',
  `kernel` int(11) DEFAULT '0' COMMENT '麦粒数',
  `thumbnail` varchar(200) DEFAULT '' COMMENT '缩略图路径',
  `detailimg` varchar(200) DEFAULT '' COMMENT '详情图路径',
  `remainingnum` int(11) DEFAULT '0' COMMENT '剩余数',
  `totalnum` int(11) DEFAULT '0' COMMENT '商品总数',
  `createtime` varchar(30) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sellproduct
-- ----------------------------
INSERT INTO `sellproduct` VALUES ('77', '商品1', '100', '100', 'http://ubestchain.com/images/8uweixinfenxiao.jpg', 'http://ubestchain.com/images/detail/detail2.jpg', '10', '200', '2018-09-22 10:51:22');
INSERT INTO `sellproduct` VALUES ('78', '商品po', '10', '100', 'http://ubestchain.com/images/appfuzhuang.jpg', 'http://ubestchain.com/images/detail/detail1.jpg', '2', '200', '2018-09-22 10:52:12');
INSERT INTO `sellproduct` VALUES ('79', '商品21', '200', '100', 'http://ubestchain.com/images/apphongjiu12.jpg', 'http://ubestchain.com/images/detail/detail3.jpg', '15', '200', '2018-09-22 10:52:29');
INSERT INTO `sellproduct` VALUES ('80', '商品2', '160', '100', 'http://ubestchain.com/images/apphongjiu2.jpg', 'http://ubestchain.com/images/detail/detail4.jpg', '35', '200', '2018-09-22 10:52:42');
INSERT INTO `sellproduct` VALUES ('81', '商品3', '56', '100', 'http://ubestchain.com/images/appjiaoyu.jpg', 'http://ubestchain.com/images/detail/detail2.jpg', '15', '200', '2018-09-22 10:53:02');

-- ----------------------------
-- Table structure for sharertop
-- ----------------------------
DROP TABLE IF EXISTS `sharertop`;
CREATE TABLE `sharertop` (
  `id` bigint(20) NOT NULL,
  `userid` bigint(20) NOT NULL DEFAULT '0' COMMENT '传播者用户id',
  `headimg` varchar(200) DEFAULT NULL COMMENT '人脉排行榜，分享者头像URL',
  `visits` int(11) DEFAULT '0' COMMENT '传播者代理几次围观',
  `isfriend` tinyint(4) DEFAULT '0' COMMENT '是否为好友：0.非好友，1.好友',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sharertop
-- ----------------------------

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `headimg` varchar(200) DEFAULT NULL COMMENT '头像',
  `nickname` varchar(100) DEFAULT NULL COMMENT '昵称',
  `phone` varchar(30) DEFAULT '0' COMMENT '电话号码',
  `name` varchar(100) DEFAULT '' COMMENT '姓名',
  `company` varchar(255) DEFAULT '' COMMENT '公司',
  `department` varchar(100) DEFAULT '' COMMENT '部门',
  `weixinhao` varchar(100) DEFAULT '' COMMENT '微信号',
  `mykernel` int(11) DEFAULT '0' COMMENT '我的麦粒数',
  `address` varchar(255) DEFAULT '',
  `rmbbalance` float(255,0) DEFAULT '0' COMMENT '金钱余额',
  `createtime` varchar(30) DEFAULT '' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=227939210462490625 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', null, null, 'artname', '姓名', '公司', '部门', '微信', '0', null, null, null);
INSERT INTO `userinfo` VALUES ('2', null, null, '13585958130', 'testname', 'artname', '部门1', 'yishicom', '0', null, null, null);
INSERT INTO `userinfo` VALUES ('3', null, null, '13585958130', 'testname3', 'artname2', '部门1啊', 'yishicom', '0', null, null, null);
INSERT INTO `userinfo` VALUES ('4', null, null, '13585958130', 'testname3', 'artname2', '部门1啊', 'yishicom', '0', null, null, null);
INSERT INTO `userinfo` VALUES ('5', null, null, '13585958130', 'testname3', 'artname2', '部门1啊', 'yishicom', '0', null, null, null);
INSERT INTO `userinfo` VALUES ('227899321788395520', 'http://ubestchain.com/images/333.png', '昵称', null, null, null, null, null, '15', null, null, '2018-09-21 21:10:32');
INSERT INTO `userinfo` VALUES ('227899705936310272', 'http://ubestchain.com/images/333.png', '昵称', null, null, null, null, null, '15', null, null, '2018-09-21 21:12:04');
INSERT INTO `userinfo` VALUES ('227899710747176960', 'http://ubestchain.com/images/333.png', '昵称', null, null, null, null, null, '15', null, null, '2018-09-21 21:12:05');
INSERT INTO `userinfo` VALUES ('227899715327356928', 'http://ubestchain.com/images/333.png', '昵称', null, 'zhi.name.hao', '公司名称', '部门', 'zhi.weixin', '15', null, null, '2018-09-21 21:12:06');
INSERT INTO `userinfo` VALUES ('227899719530049536', 'http://ubestchain.com/images/333.png', '昵称', null, null, null, null, null, '15', null, null, '2018-09-21 21:12:07');
INSERT INTO `userinfo` VALUES ('227899723585941504', 'http://ubestchain.com/images/333.png', '昵称', null, null, null, null, null, '15', null, null, '2018-09-21 21:12:08');
INSERT INTO `userinfo` VALUES ('227899728174510080', 'http://ubestchain.com/images/333.png', '昵称', null, null, null, null, null, '15', null, null, '2018-09-21 21:12:09');
INSERT INTO `userinfo` VALUES ('227899732146515968', 'http://ubestchain.com/images/333.png', '昵称', null, null, null, null, null, '15', null, null, '2018-09-21 21:12:10');
INSERT INTO `userinfo` VALUES ('227899736252739584', 'http://ubestchain.com/images/333.png', '昵称', null, null, null, null, null, '15', null, null, '2018-09-21 21:12:11');
INSERT INTO `userinfo` VALUES ('227899740702896128', 'http://ubestchain.com/images/333.png', '昵称', null, null, null, null, null, '15', null, null, '2018-09-21 21:12:12');
INSERT INTO `userinfo` VALUES ('227899744809119744', 'http://ubestchain.com/images/333.png', '昵称', null, null, null, null, null, '15', null, null, '2018-09-21 21:12:13');
INSERT INTO `userinfo` VALUES ('227902526710607872', 'http://ubestchain.com/images/333.png', '昵称', null, null, null, null, null, '15', null, null, '2018-09-21 21:23:16');
INSERT INTO `userinfo` VALUES ('227902537108287488', 'http://ubestchain.com/images/333.png', '昵称', null, null, null, null, null, '15', null, null, '2018-09-21 21:23:19');
INSERT INTO `userinfo` VALUES ('227919346729480192', 'http://ubestchain.com/images/333.png', '昵称', null, null, null, null, null, '15', null, null, '2018-09-21 22:30:06');
INSERT INTO `userinfo` VALUES ('227939210462490624', 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', 'ALSO', null, null, null, null, null, '40', null, null, '2018-09-21 23:49:02');
