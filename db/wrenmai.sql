/*
Navicat MySQL Data Transfer

Source Server         : mybaidu
Source Server Version : 50723
Source Host           : 182.61.37.82:3306
Source Database       : wrenmai

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2018-09-29 00:37:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for appeal
-- ----------------------------
DROP TABLE IF EXISTS `appeal`;
CREATE TABLE `appeal` (
  `id` varchar(30) NOT NULL,
  `senduserid` varchar(30) DEFAULT NULL COMMENT '发起投诉人',
  `recuserid` varchar(30) DEFAULT NULL COMMENT '被投诉人',
  `orderid` varchar(30) DEFAULT NULL COMMENT '申诉订单',
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `content` varchar(600) DEFAULT NULL,
  `createtime` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idex_appeal` (`id`),
  KEY `appeal_sendId_index` (`senduserid`),
  KEY `appeal_recId_index` (`recuserid`),
  KEY `appeal_orderid_index` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of appeal
-- ----------------------------
INSERT INTO `appeal` VALUES ('228346750681739264', '227939210462490624', '227919346729480192', '0', '投诉标题', '投诉内容啊，速度快冻死了', '2018-09-23 02:48:27');
INSERT INTO `appeal` VALUES ('228348587979829248', '227919346729480192', '227939210462490624', '0', '投诉标题1', '投诉内容啊，速度快冻死了2', '2018-09-23 02:55:45');
INSERT INTO `appeal` VALUES ('228351171486543872', '227919346729480192', '227939210462490624', '0', '投诉标题11', '投诉内容啊，速度快冻死了21', '2018-09-23 03:06:01');
INSERT INTO `appeal` VALUES ('228352110259859456', '227919346729480192', '227939210462490624', '0', '投诉标题1', '投诉内容啊，速度快冻死了2', '2018-09-23 03:09:45');

-- ----------------------------
-- Table structure for customservice
-- ----------------------------
DROP TABLE IF EXISTS `customservice`;
CREATE TABLE `customservice` (
  `id` varchar(30) NOT NULL,
  `senduserid` varchar(30) DEFAULT NULL,
  `recuserid` varchar(30) DEFAULT NULL,
  `sendnickname` varchar(200) DEFAULT NULL,
  `recnickname` varchar(200) DEFAULT NULL,
  `content` varchar(3000) DEFAULT NULL,
  `imgurl` varchar(300) DEFAULT NULL,
  `createtime` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `service_send_userid` (`senduserid`) USING BTREE,
  KEY `service_rec_userid` (`recuserid`) USING BTREE,
  KEY `ser_id_index` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customservice
-- ----------------------------
INSERT INTO `customservice` VALUES ('228848801631170560', '227939210462490624', '228696647893250048', 'ALSO', null, 'ni hao你 好聊天内容', 'http://ubestchain.com/questionimags/227939210462490624/CrystalEff02.png', '2018-09-24 12:03:26');
INSERT INTO `customservice` VALUES ('228848871323725824', '227939210462490624', '228696647893250048', 'ALSO', null, 'ni hao1你 好聊天内容', 'http://ubestchain.com/questionimags/227939210462490624/CrystalEff02.png', '2018-09-24 12:03:42');
INSERT INTO `customservice` VALUES ('228848882455408640', '227939210462490624', '228696647893250048', 'ALSO', null, 'ni hao12你 好聊天内容', 'http://ubestchain.com/questionimags/227939210462490624/CrystalEff02.png', '2018-09-24 12:03:45');
INSERT INTO `customservice` VALUES ('228848893234769920', '227939210462490624', '228696647893250048', 'ALSO', null, 'ni hao122你 好聊天内容', 'http://ubestchain.com/questionimags/227939210462490624/CrystalEff02.png', '2018-09-24 12:03:47');
INSERT INTO `customservice` VALUES ('228848904060268544', '227939210462490624', '228696647893250048', 'ALSO', null, 'ni hao122你 2好聊天内容', 'http://ubestchain.com/questionimags/227939210462490624/CrystalEff02.png', '2018-09-24 12:03:50');
INSERT INTO `customservice` VALUES ('228848916005646336', '227939210462490624', '228696647893250048', 'ALSO', null, 'ni hao1撒旦法22你 2好聊天内容', 'http://ubestchain.com/questionimags/227939210462490624/CrystalEff02.png', '2018-09-24 12:03:53');
INSERT INTO `customservice` VALUES ('228849085107400704', '228696647893250048', '227939210462490624', null, 'ALSO', '可为科技人文', 'http://ubestchain.com/questionimags/228696647893250048/CrystalEff02.png', '2018-09-24 12:04:33');
INSERT INTO `customservice` VALUES ('228849115121840128', '228696647893250048', '227939210462490624', null, 'ALSO', '可为asdf科技人文', 'http://ubestchain.com/questionimags/228696647893250048/CrystalEff02.png', '2018-09-24 12:04:40');
INSERT INTO `customservice` VALUES ('228849133878767616', '228696647893250048', '227939210462490624', null, 'ALSO', '可为23科技人文', 'http://ubestchain.com/questionimags/228696647893250048/CrystalEff02.png', '2018-09-24 12:04:45');
INSERT INTO `customservice` VALUES ('228849146843361280', '228696647893250048', '227939210462490624', null, 'ALSO', '可为23科we技人文', 'http://ubestchain.com/questionimags/228696647893250048/CrystalEff02.png', '2018-09-24 12:04:48');
INSERT INTO `customservice` VALUES ('228849166942466048', '228696647893250048', '227939210462490624', null, 'ALSO', '12可为23科we技人文', 'http://ubestchain.com/questionimags/228696647893250048/CrystalEff02.png', '2018-09-24 12:04:53');
INSERT INTO `customservice` VALUES ('228849184172666880', '228696647893250048', '227939210462490624', null, 'ALSO', '1asdfwe', 'http://ubestchain.com/questionimags/228696647893250048/CrystalEff02.png', '2018-09-24 12:04:57');
INSERT INTO `customservice` VALUES ('228849209351073792', '228696647893250048', '227939210462490624', null, 'ALSO', '递四方速递丰富的水分为', 'http://ubestchain.com/questionimags/228696647893250048/CrystalEff02.png', '2018-09-24 12:05:03');
INSERT INTO `customservice` VALUES ('228849261180088320', '228696647893250048', '227939210462490624', null, 'ALSO', '哦个为power破认为power啥都分开完了', 'http://ubestchain.com/questionimags/228696647893250048/CrystalEff02.png', '2018-09-24 12:05:15');
INSERT INTO `customservice` VALUES ('228850059326779392', '228696647893250048', '227939210462490624', '2', 'ALSO', '哦个为power破认为power啥都分开完了', 'http://ubestchain.com/questionimags/228696647893250048/CrystalEff02.png', '2018-09-24 12:08:25');
INSERT INTO `customservice` VALUES ('228850069569269760', '228696647893250048', '227939210462490624', '2', 'ALSO', '哦个为power破认为power啥都分开完了', 'http://ubestchain.com/questionimags/228696647893250048/CrystalEff02.png', '2018-09-24 12:08:28');
INSERT INTO `customservice` VALUES ('228850090465292288', '228696647893250048', '227939210462490624', '2', 'ALSO', '哦个为pow阿斯蒂芬er破认为power啥都分开完了', 'http://ubestchain.com/questionimags/228696647893250048/CrystalEff02.png', '2018-09-24 12:08:33');
INSERT INTO `customservice` VALUES ('228850293029203968', '227939210462490624', '228696647893250048', 'ALSO', '2', 'asdfasdf', 'http://ubestchain.com/questionimags/227939210462490624/CrystalEff02.png', '2018-09-24 12:09:21');
INSERT INTO `customservice` VALUES ('228850311387672576', '227939210462490624', '228696647893250048', 'ALSO', '2', 'asdfasdf', 'http://ubestchain.com/questionimags/227939210462490624/CrystalEff02.png', '2018-09-24 12:09:26');
INSERT INTO `customservice` VALUES ('228850335244873728', '227939210462490624', '228696647893250048', 'ALSO', '2', '撒打发斯蒂芬', 'http://ubestchain.com/questionimags/227939210462490624/CrystalEff02.png', '2018-09-24 12:09:31');
INSERT INTO `customservice` VALUES ('228850356530966528', '227939210462490624', '228696647893250048', 'ALSO', '2', '撒打发斯蒂芬', 'http://ubestchain.com/questionimags/227939210462490624/CrystalEff01.png', '2018-09-24 12:09:36');
INSERT INTO `customservice` VALUES ('228850377301159936', '227939210462490624', '228696647893250048', 'ALSO', '2', '撒打发斯蒂芬撒的发生的', 'http://ubestchain.com/questionimags/227939210462490624/CrystalEff01.png', '2018-09-24 12:09:41');
INSERT INTO `customservice` VALUES ('228850394581692416', '227939210462490624', '228696647893250048', 'ALSO', '2', '撒打发斯蒂21323芬撒的发生的', 'http://ubestchain.com/questionimags/227939210462490624/CrystalEff01.png', '2018-09-24 12:09:45');
INSERT INTO `customservice` VALUES ('228850454551851008', '228696647893250048', '227939210462490624', '2', 'ALSO', '啥的符文', 'http://ubestchain.com/questionimags/228696647893250048/CrystalEff01.png', '2018-09-24 12:10:00');
INSERT INTO `customservice` VALUES ('228850475712114688', '228696647893250048', '227939210462490624', '2', 'ALSO', '啥的符文12', 'http://ubestchain.com/questionimags/228696647893250048/CrystalEff01.png', '2018-09-24 12:10:05');
INSERT INTO `customservice` VALUES ('228850488760594432', '228696647893250048', '227939210462490624', '2', 'ALSO', '啥的符文12阿达是否打算', 'http://ubestchain.com/questionimags/228696647893250048/CrystalEff01.png', '2018-09-24 12:10:08');
INSERT INTO `customservice` VALUES ('228850502454996992', '228696647893250048', '227939210462490624', '2', 'ALSO', '啥的符文12阿达是否打算43543', 'http://ubestchain.com/questionimags/228696647893250048/CrystalEff01.png', '2018-09-24 12:10:11');

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
INSERT INTO `kernelrecord` VALUES ('228640351454228480', null, '新用户注册', '6', '1', '2018-09-23 22:15:07', '2018-09-23 22:15:07');
INSERT INTO `kernelrecord` VALUES ('228874278261485568', null, '新用户注册', '6', '1', '2018-09-24 13:44:40', '2018-09-24 13:44:40');
INSERT INTO `kernelrecord` VALUES ('228990962427228160', null, '新用户注册', '6', '1', '2018-09-24 21:28:19', '2018-09-24 21:28:19');
INSERT INTO `kernelrecord` VALUES ('228990986330566656', null, '新用户注册', '6', '1', '2018-09-24 21:28:25', '2018-09-24 21:28:25');
INSERT INTO `kernelrecord` VALUES ('228991303449309184', null, '新用户注册', '6', '1', '2018-09-24 21:29:41', '2018-09-24 21:29:41');
INSERT INTO `kernelrecord` VALUES ('229066565541163008', null, '新用户注册', '6', '1', '2018-09-25 02:28:45', '2018-09-25 02:28:45');
INSERT INTO `kernelrecord` VALUES ('229899143336685568', null, '新用户注册', '6', '1', '2018-09-27 09:37:07', '2018-09-27 09:37:07');
INSERT INTO `kernelrecord` VALUES ('230099839310884864', null, '签到', '2', '1', '2018-09-27 22:54:36', '2018-09-27 22:54:36');
INSERT INTO `kernelrecord` VALUES ('230464962865131520', null, '签到', '6', '1', '2018-09-28 23:05:28', '2018-09-28 23:05:28');

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
  PRIMARY KEY (`id`),
  KEY `myaddindex` (`id`),
  KEY `address_userid_index` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=230272924819386369 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myaddress
-- ----------------------------
INSERT INTO `myaddress` VALUES ('228173921118056448', '227939210462490624', '天孙猴', '13569878968', '天空', '天空大道888号8栋8楼8888层8室', '88888', null);
INSERT INTO `myaddress` VALUES ('228180105573167104', '227939210462490624', '田星星', '13569878968', '上海市静安区', '静安大道888号8栋8楼88层8室', '88688', null);
INSERT INTO `myaddress` VALUES ('228180143204462592', '227939210462490624', '田星星', '13569878968', '上海市静安区', '静安大道888号8栋8楼88层8室', '88688', null);
INSERT INTO `myaddress` VALUES ('228688508343021568', '227939210462490624', '张三', '15963', '呼和浩特', 'xx小区', '485206', null);
INSERT INTO `myaddress` VALUES ('228689365608427520', '227939210462490620', '张三', '158756320589', '拱墅区', 'xx小区', '485263', null);
INSERT INTO `myaddress` VALUES ('228883509043785728', '227939210462490620', 'ALso', '15686357852', '东河区', '尚尚小区', '482600', null);
INSERT INTO `myaddress` VALUES ('228883913198530560', '227939210462490620', '李四', '157854203695', '红山区', '思思小区', '480132', null);
INSERT INTO `myaddress` VALUES ('228979532059635712', '227939210462490624', '麻子', '15863278955', '郊  区', '大大小区', '485602', null);
INSERT INTO `myaddress` VALUES ('230105761336782848', '227939210462490620', '李四', '174586203', '东城区', '哈哈哈小区', '418500', '2018-09-27 23:18:08');
INSERT INTO `myaddress` VALUES ('230272924819386368', '0', 'Jack', '171946462', '东城区', 'Xx小区', '412369', '2018-09-28 10:22:23');

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
  `id` varchar(30) NOT NULL,
  `userid` varchar(30) DEFAULT '0',
  `productid` varchar(30) DEFAULT NULL COMMENT '礼品（商品）id',
  `title` varchar(100) DEFAULT NULL,
  `content` varchar(3000) DEFAULT '' COMMENT '提问',
  `type` tinyint(4) DEFAULT '0' COMMENT '0.我发起的；1.我参与的',
  `realnamepublish` tinyint(4) DEFAULT '0' COMMENT '1.是实名发布；0.非实名发布',
  `validityperiod` int(11) DEFAULT '0' COMMENT '有效期，当前时间与有创建时间计算小于等于有效期 查询显示',
  `status` tinyint(4) DEFAULT '0' COMMENT '0.进行中，1.结束，2.解决',
  `questiontype` tinyint(4) DEFAULT NULL COMMENT '0.普通问题，1.高级问题',
  `viewnum` int(11) DEFAULT '0' COMMENT '被浏览数量',
  `ansernum` int(11) DEFAULT '0' COMMENT '回答数',
  `giftimg` varchar(200) DEFAULT '' COMMENT '礼物图片，可保持礼物id（对应产品表）暂时不用，用productid替代',
  `publishcompany` varchar(200) DEFAULT '' COMMENT '发布者公司名称',
  `rewardbalance` float DEFAULT '0' COMMENT '该问题金额',
  `createtime` varchar(30) DEFAULT '' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `question_id_index` (`id`),
  KEY `question_usrid_index` (`userid`),
  KEY `question_prodecut_id` (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('228301065290772480', '227939210462490624', '79', null, '问题内容', '0', '0', '30', '0', null, '1', '2', null, '科技公司', null, '2018-09-22 23:46:55');
INSERT INTO `question` VALUES ('228301573980155904', '227939210462490624', '81', null, '问题内容', '0', '0', '30', '0', null, '2', '2', null, '科技公司', null, '2018-09-22 23:48:56');
INSERT INTO `question` VALUES ('228301650790445056', '227939210462490624', '81', null, '问题内容2', '0', '1', '30', '0', null, '3', '1', null, '科技公司是订单', null, '2018-09-22 23:49:15');
INSERT INTO `question` VALUES ('228305357951201280', '227939210462490624', '81', null, '问题内容2', '0', '1', '30', '0', null, '0', '0', null, '科技公司是订单', '10', '2018-09-23 00:03:59');
INSERT INTO `question` VALUES ('228327108810633216', '227939210462490624', '77', null, '请问', '0', '1', '3', '0', null, '0', '0', null, '测试公司', '10', '2018-09-23 01:30:24');
INSERT INTO `question` VALUES ('228327562852429824', '227939210462490624', '77', null, 'ahsajhdaks', '0', '1', '2', '0', null, '0', '0', null, '公司gs', '10', '2018-09-23 01:32:13');
INSERT INTO `question` VALUES ('228328232959602688', '227939210462490624', '80', null, 'fisdfjkd', '0', '1', '4', '0', null, '0', '0', null, '公司gs', '10', '2018-09-23 01:34:52');
INSERT INTO `question` VALUES ('228329249843441664', '227939210462490624', '79', null, 'dghkdkjf', '0', '1', '4', '0', null, '0', '0', null, '公司gs', '200', '2018-09-23 01:38:55');
INSERT INTO `question` VALUES ('228439179028066304', '227939210462490624', '0', null, '', '0', '0', '3', '0', null, '0', '0', null, '公司gs', '0', '2018-09-23 08:55:44');
INSERT INTO `question` VALUES ('228568165112606720', '227939210462490624', '81', '高级问题标题', '高级问题内容，高级问题内容高级问题内容高级问题内容', '0', '0', '10', '0', '0', '0', '0', null, '发布者公司名称', '100', '2018-09-23 17:28:17');
INSERT INTO `question` VALUES ('228570846594068480', '227939210462490624', '81', '高级问题标题1', '高级问题内容2，高级问题内容高级问题内容高级问题内容', '0', '1', '15', '0', '0', '0', '0', null, '发布者公司名称1', '80', '2018-09-23 17:38:56');
INSERT INTO `question` VALUES ('228571316804907008', '227939210462490624', '81', '高级问题标题11', '高级问题内容23，高级问题内容高级问题内容高级问题内容', '0', '1', '15', '0', '0', '0', '0', null, '发布者公司名称12', '90', '2018-09-23 17:40:48');
INSERT INTO `question` VALUES ('228571411692646400', '227939210462490624', '81', '高级问题标题11', '高级问题内容23，高级问题内容高级问题内容高级问题内容', '0', '1', '15', '0', '0', '0', '0', null, '发布者公司名称12', '90', '2018-09-23 17:41:11');
INSERT INTO `question` VALUES ('228571628928233472', '227939210462490624', '81', '高级问题标题11', '高级问题内容23，高级问题内容高级问题内容高级问题内容', '0', '1', '15', '0', '0', '0', '0', null, '发布者公司名称12', '90', '2018-09-23 17:42:02');
INSERT INTO `question` VALUES ('228571880146071552', '227939210462490624', '81', '高级问题标题32', '高级问题内容2啊3，高级阿斯蒂芬问题内容高级问题内容高级问题内容', '0', '0', '30', '0', '0', '0', '0', null, '发布者公司名称1223', '200', '2018-09-23 17:43:02');
INSERT INTO `question` VALUES ('228572013386526720', '227939210462490624', '81', '高级问题标题323', '高级问题内容2啊36563，高级阿斯蒂芬问题内容高级问题内容高级问题内容', '0', '0', '15', '0', '0', '0', '0', null, '发布者公司名称45665', '200', '2018-09-23 17:43:34');
INSERT INTO `question` VALUES ('228575521875685376', '227939210462490624', '81', '高级问题23标题', '高级问是的法规题内565656容2啊36563，高级阿斯蒂芬问题内容高级问题内容高级问题内容', '0', '0', '15', '0', '0', '0', '0', null, '发布者公司名称45665', '110', '2018-09-23 17:57:31');
INSERT INTO `question` VALUES ('228576958236061696', '227939210462490624', '81', '高级问题23标题', '高级问是的法规题内565656容2啊36563，高级阿斯蒂芬问题内容高级问题内容高级问题内容', '0', '0', '15', '0', '0', '0', '0', null, '发布者公司名称45665', '110', '2018-09-23 18:03:13');
INSERT INTO `question` VALUES ('228581853257265152', '227939210462490624', '81', '高级问题23标题82', '高级问82是的法规题内565656容2啊36563，高级阿斯蒂芬问题内容高级问题内容高级问题内容', '0', '1', '20', '0', '0', '0', '0', null, '发布者公司名称45665', '100', '2018-09-23 18:22:40');
INSERT INTO `question` VALUES ('228586609480560640', '227939210462490624', '81', '高级问题23标题82', '高级问82是的法规题内565656容2啊36563，高级阿斯蒂芬问题内容高级问题内容高级问题内容', '0', '1', '20', '0', '0', '0', '0', null, '发布者公司名称45665', '100', '2018-09-23 18:41:34');
INSERT INTO `question` VALUES ('228634263866568704', '227939210462490624', '77', null, '求推荐', '0', '1', '4', '0', '0', '0', '0', null, '公司名称', '100', '2018-09-23 21:50:56');
INSERT INTO `question` VALUES ('228642583885115392', '227939210462490624', '80', null, '推荐求助', '0', '1', '4', '0', '0', '0', '0', null, '公司名称', '160', '2018-09-23 22:23:59');
INSERT INTO `question` VALUES ('229665799848062976', '227939210462490624', '77', '字母', '一二三四一二三四', '0', '0', '3', '0', '0', '0', '0', null, '测试公司', '10', '2018-09-26 18:09:53');
INSERT INTO `question` VALUES ('229715687906471936', '227939210462490624', '0', null, '', '0', '0', '3', '0', '0', '0', '0', null, '', '0', '2018-09-26 21:28:07');
INSERT INTO `question` VALUES ('229724699792240640', '227939210462490624', '77', '字母', '一二三四一二三四', '0', '0', '3', '0', '0', '0', '0', null, '测试公司', '10', '2018-09-26 22:03:56');
INSERT INTO `question` VALUES ('229734450735345664', '227939210462490624', '77', '字母阿萨德', '我我我', '0', '0', '3', '0', '0', '0', '0', null, '测试公司', '10', '2018-09-26 22:42:41');
INSERT INTO `question` VALUES ('229740091906453504', '227939210462490624', '77', '求助帖', '哈哈哈哈哈哈哈哈哈', '0', '1', '4', '0', '0', '0', '0', null, '公司名称', '100', '2018-09-26 23:05:06');
INSERT INTO `question` VALUES ('229746930379386880', '227939210462490624', '77', null, 'hsjdzcd', '0', '1', '4', '0', '0', '0', '0', null, '公司名称', '100', '2018-09-26 23:32:16');
INSERT INTO `question` VALUES ('229762283046170624', '227939210462490620', '77', null, 'hahah', '0', '1', '4', '0', '0', '0', '0', null, '', '100', '2018-09-27 00:33:17');
INSERT INTO `question` VALUES ('229764287113981952', '227939210462490620', '80', null, '请问谁能介绍一个经验丰富的经理', '0', '1', '5', '0', '0', '0', '0', null, '', '160', '2018-09-27 00:41:14');
INSERT INTO `question` VALUES ('229955068936318976', '227939210462490620', '77', null, '求介绍', '0', '1', '4', '0', '0', '0', '0', null, 'xx公司', '100', '2018-09-27 13:19:20');
INSERT INTO `question` VALUES ('230086514376175616', '227939210462490620', '77', null, '求助', '0', '1', '5', '0', '0', '0', '0', null, '测试公司01', '100', '2018-09-27 22:01:39');
INSERT INTO `question` VALUES ('230087347746631680', '227939210462490620', '80', '求助帖-高级提问01', '高级提问内容01', '0', '1', '1', '0', '0', '0', '0', null, '测试公司01', '160', '2018-09-27 22:04:58');
INSERT INTO `question` VALUES ('230273248409939968', '0', '80', null, '求主。', '0', '1', '1', '0', '0', '0', '0', null, '公司', '160', '2018-09-28 10:23:40');
INSERT INTO `question` VALUES ('230273684441395200', '0', '81', '求助标题', '哈哈哈哈哈哈哈哈哈哈', '0', '1', '4', '0', '0', '0', '0', null, '公司', '56', '2018-09-28 10:25:24');

-- ----------------------------
-- Table structure for questionimgs
-- ----------------------------
DROP TABLE IF EXISTS `questionimgs`;
CREATE TABLE `questionimgs` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(11) DEFAULT NULL,
  `imgname` varchar(200) DEFAULT '' COMMENT '图片名称，高级提问图片',
  `createtime` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `qimgs_idex` (`id`),
  KEY `qimgs_quid_index` (`questionid`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questionimgs
-- ----------------------------
INSERT INTO `questionimgs` VALUES ('81', '228586609480560640', 'http://ubestchain.com/questionimags/227939210462490624/BaseEff01.png', null);
INSERT INTO `questionimgs` VALUES ('82', '228586609480560640', 'http://ubestchain.com/questionimags/227939210462490624/BaseEff02.png', null);
INSERT INTO `questionimgs` VALUES ('83', '228586609480560640', 'http://ubestchain.com/questionimags/227939210462490624/BaseEff03.png', null);
INSERT INTO `questionimgs` VALUES ('84', '228586609480560640', 'http://ubestchain.com/questionimags/227939210462490624/BokashiEff.png', null);
INSERT INTO `questionimgs` VALUES ('85', '228586609480560640', 'http://ubestchain.com/questionimags/227939210462490624/BokashiRef.png', null);
INSERT INTO `questionimgs` VALUES ('86', '229665799848062976', 'http://ubestchain.com/questionimags/227939210462490624/wx98b1b926838bbe7f.o6zAJs0-6US_KADRrKwNSL-KB1II.otVvNfQcyNMT8317ed20c09a342072c4b1423ddc8527.jpg', null);
INSERT INTO `questionimgs` VALUES ('87', '229724699792240640', 'http://ubestchain.com/questionimags/227939210462490624/wx98b1b926838bbe7f.o6zAJs0-6US_KADRrKwNSL-KB1II.DJeumNqQ6hYAce8541cb41cc4aa8d3dc9824aa0c4f4f.jpg', null);
INSERT INTO `questionimgs` VALUES ('88', '229734450735345664', 'http://ubestchain.com/questionimags/227939210462490624/wxe8a8a6ab55249f60.o6zAJs0-6US_KADRrKwNSL-KB1II.QO8snZiXvKpJ66c449129e3bdc2ae79f0600f8a7d9c2.png', null);
INSERT INTO `questionimgs` VALUES ('89', '229740091906453504', 'http://ubestchain.com/questionimags/227939210462490624/wxe8a8a6ab55249f60.o6zAJs0-6US_KADRrKwNSL-KB1II.s6fFSbakWfXBce8541cb41cc4aa8d3dc9824aa0c4f4f.jpg', null);
INSERT INTO `questionimgs` VALUES ('90', '230087347746631680', 'http://ubestchain.com/questionimags/227939210462490620/wxe8a8a6ab55249f60.o6zAJs0-6US_KADRrKwNSL-KB1II.4eAgOXohEQaS5aeaf8b6730a8d6a9a0b9a78410516c1.jpg', null);
INSERT INTO `questionimgs` VALUES ('91', '230273684441395200', 'http://ubestchain.com/questionimags/0/tmp_e7f7da44617decc9f612056619a0a356a8976978dc47d4e2.jpg', null);

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
  `price` float DEFAULT NULL COMMENT '订单单价',
  `totalcost` float DEFAULT NULL COMMENT '总费用',
  `realcost` float DEFAULT NULL COMMENT '折扣后费用',
  `buynum` int(11) DEFAULT '0' COMMENT '购买数量',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态：0.待发货，1.待收货(支付成功)，2.已经签收,3.撤单',
  `sendtype` tinyint(4) DEFAULT '0' COMMENT '配送方式：0.免费，1.收费',
  `createtime` varchar(30) DEFAULT '0' COMMENT '创建日期',
  `paytime` varchar(30) DEFAULT NULL COMMENT '支付时间',
  `paysuccesstime` varchar(30) DEFAULT NULL COMMENT '付款成功时间',
  PRIMARY KEY (`id`),
  KEY `orderindex` (`id`),
  KEY `order_user_index` (`userid`),
  KEY `order_add_index` (`addressid`),
  KEY `order_product_index` (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=230372071153070081 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sellorder
-- ----------------------------
INSERT INTO `sellorder` VALUES ('228215739973103616', '227939210462490624', '228180143204462592', '81', null, null, null, '1', '0', '0', '2018-09-22 18:07:52', null, null);
INSERT INTO `sellorder` VALUES ('228215784998957056', '227939210462490624', '228180143204462592', '81', null, null, null, '2', '0', '0', '2018-09-22 18:08:03', null, null);
INSERT INTO `sellorder` VALUES ('228697772558118912', '227939210462490624', '0', '78', null, null, null, '1', '0', '0', '2018-09-24 02:03:17', null, null);
INSERT INTO `sellorder` VALUES ('228698623926333440', '227939210462490624', '0', '78', null, null, null, '1', '0', '0', '2018-09-24 02:06:40', null, null);
INSERT INTO `sellorder` VALUES ('228698847642120192', '227939210462490624', '0', '78', null, null, null, '1', '0', '0', '2018-09-24 02:07:34', null, null);
INSERT INTO `sellorder` VALUES ('228961252360056832', '227939210462490624', '0', '78', null, null, null, '1', '0', '0', '2018-09-24 19:30:16', null, null);
INSERT INTO `sellorder` VALUES ('229867887265837056', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-27 07:32:55', '2018-09-27 07:32:55', null);
INSERT INTO `sellorder` VALUES ('229869396170895360', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-27 07:38:54', '2018-09-27 07:38:54', null);
INSERT INTO `sellorder` VALUES ('229875173266812928', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-27 08:01:52', '2018-09-27 08:01:52', null);
INSERT INTO `sellorder` VALUES ('229876854041866240', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-27 08:08:32', '2018-09-27 08:08:33', null);
INSERT INTO `sellorder` VALUES ('229964821456482304', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-27 13:58:05', '2018-09-27 13:58:06', null);
INSERT INTO `sellorder` VALUES ('229965540746063872', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-27 14:00:57', '2018-09-27 14:00:57', null);
INSERT INTO `sellorder` VALUES ('229967397094682624', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-27 14:08:20', '2018-09-27 14:08:20', null);
INSERT INTO `sellorder` VALUES ('229973090182885376', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-27 14:30:57', '2018-09-27 14:30:57', null);
INSERT INTO `sellorder` VALUES ('229973392684478464', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-27 14:32:09', '2018-09-27 14:32:09', null);
INSERT INTO `sellorder` VALUES ('229974833461456896', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-27 14:37:53', '2018-09-27 14:37:53', null);
INSERT INTO `sellorder` VALUES ('229976942961487872', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-27 14:46:15', '2018-09-27 14:46:16', null);
INSERT INTO `sellorder` VALUES ('229978603264143360', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-27 14:52:51', '2018-09-27 14:52:51', null);
INSERT INTO `sellorder` VALUES ('229985248253833216', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-27 15:19:16', '2018-09-27 15:19:16', null);
INSERT INTO `sellorder` VALUES ('230090063982096384', '227939210462490620', '0', '78', null, null, null, '1', '0', '0', '2018-09-27 22:15:46', null, null);
INSERT INTO `sellorder` VALUES ('230090520464977920', '227939210462490620', '0', '78', null, null, null, '1', '0', '0', '2018-09-27 22:17:34', null, null);
INSERT INTO `sellorder` VALUES ('230091577869987840', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-27 22:21:47', '2018-09-27 22:21:47', null);
INSERT INTO `sellorder` VALUES ('230270523412574208', '227939210462490624', '228689365608427520', '78', '10', '10', '10', '1', '0', '0', '2018-09-28 10:12:51', '2018-09-28 10:12:51', null);
INSERT INTO `sellorder` VALUES ('230348112504287232', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-28 15:21:09', '2018-09-28 15:21:09', null);
INSERT INTO `sellorder` VALUES ('230372071153070080', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-28 16:56:21', '2018-09-28 16:56:22', null);

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
  `id` varchar(30) NOT NULL,
  `openid` varchar(64) DEFAULT '',
  `headimg` varchar(500) DEFAULT NULL COMMENT '头像',
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
  PRIMARY KEY (`id`),
  KEY `userinfo_id_idex` (`id`),
  KEY `opendiindex` (`openid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', null, 'http://ubestchain.com/images/333.png', '1', 'artname', '姓名', '公司', '部门', '微信', '0', null, null, null);
INSERT INTO `userinfo` VALUES ('2', null, 'http://ubestchain.com/images/333.png', '2', '13585958130', 'testname', 'artname', '部门1', 'yishicom', '0', null, null, null);
INSERT INTO `userinfo` VALUES ('227899321788395520', null, 'http://ubestchain.com/images/333.png', '昵称', null, null, null, null, null, '15', null, null, '2018-09-21 21:10:32');
INSERT INTO `userinfo` VALUES ('227899705936310272', null, 'http://ubestchain.com/images/333.png', '昵称', null, null, null, null, null, '15', null, null, '2018-09-21 21:12:04');
INSERT INTO `userinfo` VALUES ('227899710747176960', null, 'http://ubestchain.com/images/333.png', '昵称', null, null, null, null, null, '15', null, null, '2018-09-21 21:12:05');
INSERT INTO `userinfo` VALUES ('227899715327356928', null, 'http://ubestchain.com/images/333.png', '昵称', null, 'zhi.name.hao', '公司名称', '部门', 'zhi.weixin', '15', null, null, '2018-09-21 21:12:06');
INSERT INTO `userinfo` VALUES ('227899719530049536', null, 'http://ubestchain.com/images/333.png', '昵称', null, null, null, null, null, '15', null, null, '2018-09-21 21:12:07');
INSERT INTO `userinfo` VALUES ('227899723585941504', null, 'http://ubestchain.com/images/333.png', '昵称', null, null, null, null, null, '15', null, null, '2018-09-21 21:12:08');
INSERT INTO `userinfo` VALUES ('227899728174510080', null, 'http://ubestchain.com/images/333.png', '昵称', null, null, null, null, null, '15', null, null, '2018-09-21 21:12:09');
INSERT INTO `userinfo` VALUES ('227899732146515968', null, 'http://ubestchain.com/images/333.png', '昵称', null, null, null, null, null, '15', null, null, '2018-09-21 21:12:10');
INSERT INTO `userinfo` VALUES ('227899736252739584', null, 'http://ubestchain.com/images/333.png', '昵称', null, null, null, null, null, '15', null, null, '2018-09-21 21:12:11');
INSERT INTO `userinfo` VALUES ('227899740702896128', null, 'http://ubestchain.com/images/333.png', '昵称', null, null, null, null, null, '15', null, null, '2018-09-21 21:12:12');
INSERT INTO `userinfo` VALUES ('227899744809119744', null, 'http://ubestchain.com/images/333.png', '昵称', null, null, null, null, null, '15', null, null, '2018-09-21 21:12:13');
INSERT INTO `userinfo` VALUES ('227902526710607872', null, 'http://ubestchain.com/images/333.png', '昵称', null, null, null, null, null, '15', null, null, '2018-09-21 21:23:16');
INSERT INTO `userinfo` VALUES ('227902537108287488', null, 'http://ubestchain.com/images/333.png', '昵称', null, null, null, null, null, '15', null, null, '2018-09-21 21:23:19');
INSERT INTO `userinfo` VALUES ('227919346729480192', null, 'http://ubestchain.com/images/333.png', '昵称', null, null, null, null, null, '15', null, null, '2018-09-21 22:30:06');
INSERT INTO `userinfo` VALUES ('227939210462490624', 'oEds65J4MErwlkxLWQq_nSdI-85A', 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', 'ALSO', null, 'Addr', '公司', '技术部', '176264', '90', null, null, '2018-09-21 23:49:02');
INSERT INTO `userinfo` VALUES ('228607222232379392', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '15', null, null, '2018-09-23 20:03:29');
INSERT INTO `userinfo` VALUES ('228611140337266688', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-23 20:19:03');
INSERT INTO `userinfo` VALUES ('228612300624359424', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-23 20:23:39');
INSERT INTO `userinfo` VALUES ('228612768373141504', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '1', null, null, null, null, null, '20', null, null, '2018-09-23 20:25:31');
INSERT INTO `userinfo` VALUES ('228613798326431744', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-23 20:29:36');
INSERT INTO `userinfo` VALUES ('228613823492255744', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-23 20:29:42');
INSERT INTO `userinfo` VALUES ('228614183019606016', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '1', null, null, null, null, null, '20', null, null, '2018-09-23 20:31:08');
INSERT INTO `userinfo` VALUES ('228614963835432960', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-23 20:34:14');
INSERT INTO `userinfo` VALUES ('228617212401807360', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-23 20:43:10');
INSERT INTO `userinfo` VALUES ('228618219659718656', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-23 20:47:11');
INSERT INTO `userinfo` VALUES ('228621282399219712', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '1', null, null, null, null, null, '20', null, null, '2018-09-23 20:59:21');
INSERT INTO `userinfo` VALUES ('228621338883911680', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '1', null, null, null, null, null, '20', null, null, '2018-09-23 20:59:34');
INSERT INTO `userinfo` VALUES ('228621392126406656', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-23 20:59:47');
INSERT INTO `userinfo` VALUES ('228621516781121536', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '1', null, null, null, null, null, '20', null, null, '2018-09-23 21:00:17');
INSERT INTO `userinfo` VALUES ('228621634087415808', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-23 21:00:45');
INSERT INTO `userinfo` VALUES ('228622093267234816', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '1', null, null, null, null, null, '20', null, null, '2018-09-23 21:02:34');
INSERT INTO `userinfo` VALUES ('228623227172155392', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-23 21:07:04');
INSERT INTO `userinfo` VALUES ('228623285917577216', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-23 21:07:18');
INSERT INTO `userinfo` VALUES ('228623470081077248', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-23 21:08:02');
INSERT INTO `userinfo` VALUES ('228624954621423616', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '1', null, null, null, null, null, '20', null, null, '2018-09-23 21:13:56');
INSERT INTO `userinfo` VALUES ('228625540389531648', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-23 21:16:16');
INSERT INTO `userinfo` VALUES ('228625992745218048', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-23 21:18:04');
INSERT INTO `userinfo` VALUES ('228626245607223296', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-23 21:19:04');
INSERT INTO `userinfo` VALUES ('228630708048883712', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-23 21:36:48');
INSERT INTO `userinfo` VALUES ('228630983941812224', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-23 21:37:54');
INSERT INTO `userinfo` VALUES ('228631103290732544', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-23 21:38:22');
INSERT INTO `userinfo` VALUES ('228631356488282112', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-23 21:39:23');
INSERT INTO `userinfo` VALUES ('228631421646794752', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '1', null, null, null, null, null, '20', null, null, '2018-09-23 21:39:38');
INSERT INTO `userinfo` VALUES ('228631649795960832', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-23 21:40:33');
INSERT INTO `userinfo` VALUES ('228632642663215104', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-23 21:44:29');
INSERT INTO `userinfo` VALUES ('228633477707198464', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '1', null, null, null, null, null, '20', null, null, '2018-09-23 21:47:48');
INSERT INTO `userinfo` VALUES ('228633968621121536', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-23 21:49:45');
INSERT INTO `userinfo` VALUES ('228634093707849728', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-23 21:50:15');
INSERT INTO `userinfo` VALUES ('228638392441630720', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '1', null, null, null, null, null, '20', null, null, '2018-09-23 22:07:20');
INSERT INTO `userinfo` VALUES ('228639343936270336', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '1', null, null, null, null, null, '20', null, null, '2018-09-23 22:11:07');
INSERT INTO `userinfo` VALUES ('228642481569263616', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-23 22:23:35');
INSERT INTO `userinfo` VALUES ('228645495281545216', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '1', null, null, null, null, null, '20', null, null, '2018-09-23 22:35:34');
INSERT INTO `userinfo` VALUES ('228646176239382528', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-23 22:38:16');
INSERT INTO `userinfo` VALUES ('228646341327187968', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-23 22:38:55');
INSERT INTO `userinfo` VALUES ('228646401590947840', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '1', null, null, null, null, null, '20', null, null, '2018-09-23 22:39:10');
INSERT INTO `userinfo` VALUES ('228646514069598208', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '1', null, null, null, null, null, '20', null, null, '2018-09-23 22:39:37');
INSERT INTO `userinfo` VALUES ('228646634169298944', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-23 22:40:05');
INSERT INTO `userinfo` VALUES ('228647329534570496', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-23 22:42:51');
INSERT INTO `userinfo` VALUES ('228647784419422208', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-23 22:44:39');
INSERT INTO `userinfo` VALUES ('228648488995385344', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '1', null, null, null, null, null, '20', null, null, '2018-09-23 22:47:27');
INSERT INTO `userinfo` VALUES ('228649428360097792', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '1', null, null, null, null, null, '20', null, null, '2018-09-23 22:51:11');
INSERT INTO `userinfo` VALUES ('228650121150066688', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '1', null, null, null, null, null, '20', null, null, '2018-09-23 22:53:56');
INSERT INTO `userinfo` VALUES ('228650585245609984', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '1', null, null, null, null, null, '20', null, null, '2018-09-23 22:55:47');
INSERT INTO `userinfo` VALUES ('228650627138318336', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-23 22:55:57');
INSERT INTO `userinfo` VALUES ('228650827055624192', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-23 22:56:45');
INSERT INTO `userinfo` VALUES ('228651041107734528', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-23 22:57:36');
INSERT INTO `userinfo` VALUES ('228651377897762816', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-23 22:58:56');
INSERT INTO `userinfo` VALUES ('228651476052865024', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '1', null, null, null, null, null, '20', null, null, '2018-09-23 22:59:20');
INSERT INTO `userinfo` VALUES ('228651599323459584', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-23 22:59:49');
INSERT INTO `userinfo` VALUES ('228651824607916032', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-23 23:00:43');
INSERT INTO `userinfo` VALUES ('228654437151797248', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '1', null, null, null, null, null, '20', null, null, '2018-09-23 23:11:06');
INSERT INTO `userinfo` VALUES ('228654587559538688', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-23 23:11:41');
INSERT INTO `userinfo` VALUES ('228654699899777024', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-23 23:12:08');
INSERT INTO `userinfo` VALUES ('228654993048072192', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-23 23:13:18');
INSERT INTO `userinfo` VALUES ('228656475969417216', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-23 23:19:12');
INSERT INTO `userinfo` VALUES ('228656676251627520', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-23 23:19:59');
INSERT INTO `userinfo` VALUES ('228656793880883200', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '1', null, null, null, null, null, '20', null, null, '2018-09-23 23:20:27');
INSERT INTO `userinfo` VALUES ('228657049599209472', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-23 23:21:28');
INSERT INTO `userinfo` VALUES ('228658550296014848', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-23 23:27:26');
INSERT INTO `userinfo` VALUES ('228661180682465280', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-23 23:37:53');
INSERT INTO `userinfo` VALUES ('228661800206331904', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '1', null, null, null, null, null, '20', null, null, '2018-09-23 23:40:21');
INSERT INTO `userinfo` VALUES ('228671210609700864', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-24 00:17:45');
INSERT INTO `userinfo` VALUES ('228671700722511872', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-24 00:19:41');
INSERT INTO `userinfo` VALUES ('228674710223712256', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '1', null, null, null, null, null, '20', null, null, '2018-09-24 00:31:39');
INSERT INTO `userinfo` VALUES ('228674850246356992', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '1', null, null, null, null, null, '20', null, null, '2018-09-24 00:32:12');
INSERT INTO `userinfo` VALUES ('228674992760418304', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '1', null, null, null, null, null, '20', null, null, '2018-09-24 00:32:46');
INSERT INTO `userinfo` VALUES ('228675194183479296', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-24 00:33:34');
INSERT INTO `userinfo` VALUES ('228675817184423936', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-24 00:36:03');
INSERT INTO `userinfo` VALUES ('228676721413451776', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '1', null, null, null, null, null, '20', null, null, '2018-09-24 00:39:38');
INSERT INTO `userinfo` VALUES ('228676933213220864', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-24 00:40:29');
INSERT INTO `userinfo` VALUES ('228682440065937408', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-24 01:02:22');
INSERT INTO `userinfo` VALUES ('228682553282785280', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-24 01:02:49');
INSERT INTO `userinfo` VALUES ('228683676018274304', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-24 01:07:17');
INSERT INTO `userinfo` VALUES ('228685163637239808', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-24 01:13:11');
INSERT INTO `userinfo` VALUES ('228686705106874368', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-24 01:19:19');
INSERT INTO `userinfo` VALUES ('228687715296604160', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-24 01:23:20');
INSERT INTO `userinfo` VALUES ('228687947447136256', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '1', null, null, null, null, null, '20', null, null, '2018-09-24 01:24:15');
INSERT INTO `userinfo` VALUES ('228688922035613696', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-24 01:28:07');
INSERT INTO `userinfo` VALUES ('228689270695522304', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-24 01:29:30');
INSERT INTO `userinfo` VALUES ('228689594307047424', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-24 01:30:48');
INSERT INTO `userinfo` VALUES ('228691062858706944', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-24 01:36:38');
INSERT INTO `userinfo` VALUES ('228692148977922048', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-24 01:40:57');
INSERT INTO `userinfo` VALUES ('228696473603141632', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '1', null, null, null, null, null, '20', null, null, '2018-09-24 01:58:08');
INSERT INTO `userinfo` VALUES ('228696620026294272', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-24 01:58:43');
INSERT INTO `userinfo` VALUES ('228696647893250048', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-24 01:58:49');
INSERT INTO `userinfo` VALUES ('228696675391107072', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-24 01:58:56');
INSERT INTO `userinfo` VALUES ('228697320286318592', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-24 02:01:30');
INSERT INTO `userinfo` VALUES ('228697589220896768', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-24 02:02:34');
INSERT INTO `userinfo` VALUES ('228697732364103680', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-24 02:03:08');
INSERT INTO `userinfo` VALUES ('228698594939498496', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-24 02:06:34');
INSERT INTO `userinfo` VALUES ('228698818860806144', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-24 02:07:27');
INSERT INTO `userinfo` VALUES ('228775797991665664', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKyBXRBiafNdSx7b4nMTObjIRFAF66t4FJcAT0VAKFdwhaZJHwZtglrtKdbKc5OgP2QsDU2duvEwxg/132', '1', null, null, null, null, null, '20', null, null, '2018-09-24 07:13:20');
INSERT INTO `userinfo` VALUES ('228778441091051520', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKyBXRBiafNdSx7b4nMTObjIRFAF66t4FJcAT0VAKFdwhaZJHwZtglrtKdbKc5OgP2QsDU2duvEwxg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-24 07:23:50');
INSERT INTO `userinfo` VALUES ('228778575933730816', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKyBXRBiafNdSx7b4nMTObjIRFAF66t4FJcAT0VAKFdwhaZJHwZtglrtKdbKc5OgP2QsDU2duvEwxg/132', '1', null, null, null, null, null, '20', null, null, '2018-09-24 07:24:23');
INSERT INTO `userinfo` VALUES ('228778607361650688', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKyBXRBiafNdSx7b4nMTObjIRFAF66t4FJcAT0VAKFdwhaZJHwZtglrtKdbKc5OgP2QsDU2duvEwxg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-24 07:24:30');
INSERT INTO `userinfo` VALUES ('228778619554492416', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKyBXRBiafNdSx7b4nMTObjIRFAF66t4FJcAT0VAKFdwhaZJHwZtglrtKdbKc5OgP2QsDU2duvEwxg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-24 07:24:33');
INSERT INTO `userinfo` VALUES ('228778630858141696', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKyBXRBiafNdSx7b4nMTObjIRFAF66t4FJcAT0VAKFdwhaZJHwZtglrtKdbKc5OgP2QsDU2duvEwxg/132', '1', null, null, null, null, null, '20', null, null, '2018-09-24 07:24:36');
INSERT INTO `userinfo` VALUES ('228778930075594752', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKyBXRBiafNdSx7b4nMTObjIRFAF66t4FJcAT0VAKFdwhaZJHwZtglrtKdbKc5OgP2QsDU2duvEwxg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-24 07:25:47');
INSERT INTO `userinfo` VALUES ('228779373669380096', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKyBXRBiafNdSx7b4nMTObjIRFAF66t4FJcAT0VAKFdwhaZJHwZtglrtKdbKc5OgP2QsDU2duvEwxg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-24 07:27:33');
INSERT INTO `userinfo` VALUES ('228779431508832256', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKyBXRBiafNdSx7b4nMTObjIRFAF66t4FJcAT0VAKFdwhaZJHwZtglrtKdbKc5OgP2QsDU2duvEwxg/132', '1', null, null, null, null, null, '20', null, null, '2018-09-24 07:27:46');
INSERT INTO `userinfo` VALUES ('228820970746408960', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '1', null, null, null, null, null, '20', null, null, '2018-09-24 10:12:50');
INSERT INTO `userinfo` VALUES ('228821207267405824', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '1', null, null, null, null, null, '20', null, null, '2018-09-24 10:13:47');
INSERT INTO `userinfo` VALUES ('228821717693231104', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '1', null, null, null, null, null, '20', null, null, '2018-09-24 10:15:48');
INSERT INTO `userinfo` VALUES ('228821862891646976', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-24 10:16:23');
INSERT INTO `userinfo` VALUES ('228832335246651392', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '2', null, null, null, null, null, '20', null, null, '2018-09-24 10:58:00');
INSERT INTO `userinfo` VALUES ('228832854472126464', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', '0', null, null, null, null, null, '20', null, null, '2018-09-24 11:00:04');
INSERT INTO `userinfo` VALUES ('228874024665477120', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKyBXRBiafNdSx7b4nMTObjIRFAF66t4FJcAT0VAKFdwhaZJHwZtglrtKdbKc5OgP2QsDU2duvEwxg/132', null, null, null, null, null, null, '20', null, null, '2018-09-24 13:43:39');
INSERT INTO `userinfo` VALUES ('228876421324337152', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-24 13:53:11');
INSERT INTO `userinfo` VALUES ('228876477460901888', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-24 13:53:24');
INSERT INTO `userinfo` VALUES ('228877458621853696', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-24 13:57:18');
INSERT INTO `userinfo` VALUES ('228877914827911168', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-24 13:59:07');
INSERT INTO `userinfo` VALUES ('228878031576363008', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-24 13:59:35');
INSERT INTO `userinfo` VALUES ('228878561774137344', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-24 14:01:41');
INSERT INTO `userinfo` VALUES ('228878629143048192', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-24 14:01:57');
INSERT INTO `userinfo` VALUES ('228880977559023616', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-24 14:11:17');
INSERT INTO `userinfo` VALUES ('228881424998985728', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-24 14:13:04');
INSERT INTO `userinfo` VALUES ('228881584458035200', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-24 14:13:42');
INSERT INTO `userinfo` VALUES ('228882214148894720', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-24 14:16:12');
INSERT INTO `userinfo` VALUES ('228882556185997312', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-24 14:17:33');
INSERT INTO `userinfo` VALUES ('228882765813116928', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-24 14:18:23');
INSERT INTO `userinfo` VALUES ('228882869970268160', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-24 14:18:48');
INSERT INTO `userinfo` VALUES ('228883303518695424', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-24 14:20:32');
INSERT INTO `userinfo` VALUES ('228883776879456256', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-24 14:22:24');
INSERT INTO `userinfo` VALUES ('228884210310443008', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-24 14:24:08');
INSERT INTO `userinfo` VALUES ('228884833957310464', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-24 14:26:36');
INSERT INTO `userinfo` VALUES ('228884932359876608', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-24 14:27:00');
INSERT INTO `userinfo` VALUES ('228885021346230272', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-24 14:27:21');
INSERT INTO `userinfo` VALUES ('228885184915697664', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-24 14:28:00');
INSERT INTO `userinfo` VALUES ('228887691456933888', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-24 14:37:58');
INSERT INTO `userinfo` VALUES ('228889372492034048', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-24 14:44:38');
INSERT INTO `userinfo` VALUES ('228889796733300736', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-24 14:46:20');
INSERT INTO `userinfo` VALUES ('228889995161628672', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-24 14:47:07');
INSERT INTO `userinfo` VALUES ('228893959173173248', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKyBXRBiafNdSx7b4nMTObjIRFAF66t4FJcAT0VAKFdwhaZJHwZtglrtKdbKc5OgP2QsDU2duvEwxg/132', null, null, null, null, null, null, '20', null, null, '2018-09-24 15:02:52');
INSERT INTO `userinfo` VALUES ('228894422786371584', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKyBXRBiafNdSx7b4nMTObjIRFAF66t4FJcAT0VAKFdwhaZJHwZtglrtKdbKc5OgP2QsDU2duvEwxg/132', null, null, null, null, null, null, '20', null, null, '2018-09-24 15:04:43');
INSERT INTO `userinfo` VALUES ('228895251085914112', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKyBXRBiafNdSx7b4nMTObjIRFAF66t4FJcAT0VAKFdwhaZJHwZtglrtKdbKc5OgP2QsDU2duvEwxg/132', null, null, null, null, null, null, '20', null, null, '2018-09-24 15:08:00');
INSERT INTO `userinfo` VALUES ('228896255449755648', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKyBXRBiafNdSx7b4nMTObjIRFAF66t4FJcAT0VAKFdwhaZJHwZtglrtKdbKc5OgP2QsDU2duvEwxg/132', null, null, null, null, null, null, '20', null, null, '2018-09-24 15:11:59');
INSERT INTO `userinfo` VALUES ('228896316900503552', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKyBXRBiafNdSx7b4nMTObjIRFAF66t4FJcAT0VAKFdwhaZJHwZtglrtKdbKc5OgP2QsDU2duvEwxg/132', null, null, null, null, null, null, '20', null, null, '2018-09-24 15:12:14');
INSERT INTO `userinfo` VALUES ('228897367061950464', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKyBXRBiafNdSx7b4nMTObjIRFAF66t4FJcAT0VAKFdwhaZJHwZtglrtKdbKc5OgP2QsDU2duvEwxg/132', null, null, null, null, null, null, '20', null, null, '2018-09-24 15:16:25');
INSERT INTO `userinfo` VALUES ('228897477812547584', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKyBXRBiafNdSx7b4nMTObjIRFAF66t4FJcAT0VAKFdwhaZJHwZtglrtKdbKc5OgP2QsDU2duvEwxg/132', null, null, null, null, null, null, '20', null, null, '2018-09-24 15:16:51');
INSERT INTO `userinfo` VALUES ('228899738081030144', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKyBXRBiafNdSx7b4nMTObjIRFAF66t4FJcAT0VAKFdwhaZJHwZtglrtKdbKc5OgP2QsDU2duvEwxg/132', null, null, null, null, null, null, '20', null, null, '2018-09-24 15:25:50');
INSERT INTO `userinfo` VALUES ('228905679925014528', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-24 15:49:26');
INSERT INTO `userinfo` VALUES ('228905998687924224', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-24 15:50:42');
INSERT INTO `userinfo` VALUES ('229056632502349824', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKyBXRBiafNdSx7b4nMTObjIRFAF66t4FJcAT0VAKFdwhaZJHwZtglrtKdbKc5OgP2QsDU2duvEwxg/132', null, null, null, null, null, null, '20', null, null, '2018-09-25 01:49:16');
INSERT INTO `userinfo` VALUES ('229060728219234304', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKyBXRBiafNdSx7b4nMTObjIRFAF66t4FJcAT0VAKFdwhaZJHwZtglrtKdbKc5OgP2QsDU2duvEwxg/132', null, null, null, null, null, null, '20', null, null, '2018-09-25 02:05:33');
INSERT INTO `userinfo` VALUES ('229063349491462144', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKyBXRBiafNdSx7b4nMTObjIRFAF66t4FJcAT0VAKFdwhaZJHwZtglrtKdbKc5OgP2QsDU2duvEwxg/132', null, null, null, null, null, null, '20', null, null, '2018-09-25 02:15:58');
INSERT INTO `userinfo` VALUES ('229065547600359424', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKyBXRBiafNdSx7b4nMTObjIRFAF66t4FJcAT0VAKFdwhaZJHwZtglrtKdbKc5OgP2QsDU2duvEwxg/132', null, null, null, null, null, null, '20', null, null, '2018-09-25 02:24:42');
INSERT INTO `userinfo` VALUES ('229065601081929728', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKyBXRBiafNdSx7b4nMTObjIRFAF66t4FJcAT0VAKFdwhaZJHwZtglrtKdbKc5OgP2QsDU2duvEwxg/132', null, null, null, null, null, null, '20', null, null, '2018-09-25 02:24:55');
INSERT INTO `userinfo` VALUES ('229065732074237952', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKyBXRBiafNdSx7b4nMTObjIRFAF66t4FJcAT0VAKFdwhaZJHwZtglrtKdbKc5OgP2QsDU2duvEwxg/132', null, null, null, null, null, null, '20', null, null, '2018-09-25 02:25:26');
INSERT INTO `userinfo` VALUES ('229066348850835456', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKyBXRBiafNdSx7b4nMTObjIRFAF66t4FJcAT0VAKFdwhaZJHwZtglrtKdbKc5OgP2QsDU2duvEwxg/132', null, null, null, null, null, null, '20', null, null, '2018-09-25 02:27:53');
INSERT INTO `userinfo` VALUES ('229903337049288704', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-27 09:53:46');
INSERT INTO `userinfo` VALUES ('229907833645166592', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-27 10:11:39');
INSERT INTO `userinfo` VALUES ('229908037547061248', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-27 10:12:27');
INSERT INTO `userinfo` VALUES ('229919657652383744', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-27 10:58:38');
INSERT INTO `userinfo` VALUES ('229920154736128000', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-27 11:00:36');
INSERT INTO `userinfo` VALUES ('229920279210487808', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-27 11:01:06');
INSERT INTO `userinfo` VALUES ('229921864049225728', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-27 11:07:24');
INSERT INTO `userinfo` VALUES ('229922012636639232', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-27 11:07:59');
INSERT INTO `userinfo` VALUES ('229922308867747840', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-27 11:09:10');
INSERT INTO `userinfo` VALUES ('229922400756559872', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-27 11:09:32');
INSERT INTO `userinfo` VALUES ('229927461855424512', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-27 11:29:38');
INSERT INTO `userinfo` VALUES ('230084215889195008', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-27 21:52:31');
INSERT INTO `userinfo` VALUES ('230085889538125824', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-27 21:59:10');
INSERT INTO `userinfo` VALUES ('230089144670351360', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-27 22:12:06');
INSERT INTO `userinfo` VALUES ('230260094791577600', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-28 09:31:24');
INSERT INTO `userinfo` VALUES ('230270924849410048', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-28 10:14:26');
INSERT INTO `userinfo` VALUES ('230452049404227584', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-28 22:14:10');
INSERT INTO `userinfo` VALUES ('230452760527499264', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-28 22:16:59');
INSERT INTO `userinfo` VALUES ('230457043293564928', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-28 22:34:00');
INSERT INTO `userinfo` VALUES ('230463340361543680', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-28 22:59:02');
INSERT INTO `userinfo` VALUES ('230464641166209024', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-28 23:04:12');
INSERT INTO `userinfo` VALUES ('230466481400311808', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-28 23:11:31');
INSERT INTO `userinfo` VALUES ('230468194991599616', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-28 23:18:19');
INSERT INTO `userinfo` VALUES ('230471520227422208', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-28 23:31:32');
INSERT INTO `userinfo` VALUES ('230472376523943936', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-28 23:34:56');
INSERT INTO `userinfo` VALUES ('230473001684955136', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-28 23:37:25');
INSERT INTO `userinfo` VALUES ('230473602430922752', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-28 23:39:48');
INSERT INTO `userinfo` VALUES ('230474274039656448', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-28 23:42:28');
INSERT INTO `userinfo` VALUES ('230474698280923136', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-28 23:44:10');
INSERT INTO `userinfo` VALUES ('230474944964718592', null, 'https://wx.qlogo.cn/mmopen/vi_32/VXFzMBwfObb7htaEQwDm8VZcgwO0LBIsTfowaD728iaK9PANuKIEER2ZVeLbIYWggZzbRISGcPv2k3PkBb8yoMg/132', null, null, null, null, null, null, '20', null, null, '2018-09-28 23:45:08');
INSERT INTO `userinfo` VALUES ('230487194060451840', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKyBXRBiafNdSx7b4nMTObjIRFAF66t4FJcAT0VAKFdwhaZJHwZtglrtKdbKc5OgP2QsDU2duvEwxg/132', null, null, null, null, null, null, '20', null, null, '2018-09-29 00:33:49');
INSERT INTO `userinfo` VALUES ('3', null, 'http://ubestchain.com/images/333.png', '0', '13585958130', 'testname3', 'artname2', '部门1啊', 'yishicom', '0', null, null, null);
INSERT INTO `userinfo` VALUES ('4', null, 'http://ubestchain.com/images/333.png', '1', '13585958130', 'testname3', 'artname2', '部门1啊', 'yishicom', '0', null, null, null);
INSERT INTO `userinfo` VALUES ('5', null, 'http://ubestchain.com/images/333.png', '2', '13585958130', 'testname3', 'artname2', '部门1啊', 'yishicom', '0', null, null, null);
