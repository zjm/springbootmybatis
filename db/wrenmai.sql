/*
Navicat MySQL Data Transfer

Source Server         : mybaidu
Source Server Version : 50723
Source Host           : 182.61.37.82:3306
Source Database       : wrenmai

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2018-10-18 00:25:47
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
  `id` varchar(30) NOT NULL,
  `userid` varchar(30) DEFAULT NULL,
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
INSERT INTO `kernelrecord` VALUES ('234461497772732416', '227939210462490624', '签到', '2', '1', '2018-10-09 23:46:17', '2018-10-09 23:46:17');
INSERT INTO `kernelrecord` VALUES ('234461499945381888', '227939210462490624', '签到奖励', '15', '1', '2018-10-09 23:46:17', '2018-10-09 23:46:17');
INSERT INTO `kernelrecord` VALUES ('234462033339215872', '233589179726950400', '签到', '2', '1', '2018-10-09 23:48:24', '2018-10-09 23:48:24');
INSERT INTO `kernelrecord` VALUES ('234462034849165312', '233589179726950400', '签到奖励', '15', '1', '2018-10-09 23:48:24', '2018-10-09 23:48:24');
INSERT INTO `kernelrecord` VALUES ('234471448813498368', '233589179726950400', '签到', '2', '1', '2018-10-10 00:25:49', '2018-10-10 00:25:49');
INSERT INTO `kernelrecord` VALUES ('234471450331836416', '233589179726950400', '签到奖励', '15', '1', '2018-10-10 00:25:49', '2018-10-10 00:25:49');
INSERT INTO `kernelrecord` VALUES ('234804948687122432', '227939210462490624', '签到', '2', '1', '2018-10-10 22:31:02', '2018-10-10 22:31:02');
INSERT INTO `kernelrecord` VALUES ('234804950075437056', '227939210462490624', '签到奖励', '15', '1', '2018-10-10 22:31:02', '2018-10-10 22:31:02');
INSERT INTO `kernelrecord` VALUES ('235179608847151104', '235179608377389056', '新用户注册', '15', '1', '2018-10-11 23:19:48', '2018-10-11 23:19:48');
INSERT INTO `kernelrecord` VALUES ('235185561332084736', '235185560862322688', '新用户注册', '15', '1', '2018-10-11 23:43:27', '2018-10-11 23:43:27');
INSERT INTO `kernelrecord` VALUES ('235526970815803392', '235526970329264128', '新用户注册', '15', '1', '2018-10-12 22:20:05', '2018-10-12 22:20:05');
INSERT INTO `kernelrecord` VALUES ('236452488000040960', '236452487530278912', '新用户注册', '15', '1', '2018-10-15 11:37:46', '2018-10-15 11:37:46');
INSERT INTO `kernelrecord` VALUES ('236618181756579840', '233589179726950400', '签到', '2', '1', '2018-10-15 22:36:10', '2018-10-15 22:36:10');
INSERT INTO `kernelrecord` VALUES ('237174151419260928', '237174151016607744', '新用户注册', '15', '1', '2018-10-17 11:25:24', '2018-10-17 11:25:24');
INSERT INTO `kernelrecord` VALUES ('237180000258748416', '237179999864483840', '新用户注册', '15', '1', '2018-10-17 11:48:38', '2018-10-17 11:48:38');
INSERT INTO `kernelrecord` VALUES ('237248564734980096', '237248564323938304', '新用户注册', '15', '1', '2018-10-17 16:21:05', '2018-10-17 16:21:05');
INSERT INTO `kernelrecord` VALUES ('237251685657866240', '237251685251018752', '新用户注册', '15', '1', '2018-10-17 16:33:29', '2018-10-17 16:33:29');
INSERT INTO `kernelrecord` VALUES ('237252050520371200', '237252050109329408', '新用户注册', '15', '1', '2018-10-17 16:34:56', '2018-10-17 16:34:56');
INSERT INTO `kernelrecord` VALUES ('237252609835003904', '237252609428156416', '新用户注册', '15', '1', '2018-10-17 16:37:10', '2018-10-17 16:37:10');
INSERT INTO `kernelrecord` VALUES ('237262238732251136', '237262238321209344', '新用户注册', '15', '1', '2018-10-17 17:15:25', '2018-10-17 17:15:25');
INSERT INTO `kernelrecord` VALUES ('237262410841321472', '237262410413502464', '新用户注册', '15', '1', '2018-10-17 17:16:06', '2018-10-17 17:16:06');
INSERT INTO `kernelrecord` VALUES ('237332502484611072', '237332502019043328', '新用户注册', '15', '1', '2018-10-17 21:54:38', '2018-10-17 21:54:38');
INSERT INTO `kernelrecord` VALUES ('237334804121513984', '237334803714666496', '新用户注册', '15', '1', '2018-10-17 22:03:46', '2018-10-17 22:03:46');
INSERT INTO `kernelrecord` VALUES ('237337424227725312', '237337423829266432', '新用户注册', '15', '1', '2018-10-17 22:14:11', '2018-10-17 22:14:11');
INSERT INTO `kernelrecord` VALUES ('237338043462184960', '237338043000811520', '新用户注册', '15', '1', '2018-10-17 22:16:39', '2018-10-17 22:16:39');
INSERT INTO `kernelrecord` VALUES ('237338611387723776', '237338610922156032', '新用户注册', '15', '1', '2018-10-17 22:18:54', '2018-10-17 22:18:54');
INSERT INTO `kernelrecord` VALUES ('237340358898348032', '237340358457946112', '新用户注册', '15', '1', '2018-10-17 22:25:51', '2018-10-17 22:25:51');
INSERT INTO `kernelrecord` VALUES ('237343159170887680', '237343158730485760', '新用户注册', '15', '1', '2018-10-17 22:36:58', '2018-10-17 22:36:58');
INSERT INTO `kernelrecord` VALUES ('237345816786759680', '237345816321191936', '新用户注册', '15', '1', '2018-10-17 22:47:32', '2018-10-17 22:47:32');
INSERT INTO `kernelrecord` VALUES ('237349413737984000', '237349413314359296', '新用户注册', '15', '1', '2018-10-17 23:01:49', '2018-10-17 23:01:49');
INSERT INTO `kernelrecord` VALUES ('237350351777296384', '237350351366254592', '新用户注册', '15', '1', '2018-10-17 23:05:33', '2018-10-17 23:05:33');
INSERT INTO `kernelrecord` VALUES ('237351966659833856', '237351966244597760', '新用户注册', '15', '1', '2018-10-17 23:11:58', '2018-10-17 23:11:58');
INSERT INTO `kernelrecord` VALUES ('237352955580248064', '237352955127263232', '新用户注册', '15', '1', '2018-10-17 23:15:54', '2018-10-17 23:15:54');
INSERT INTO `kernelrecord` VALUES ('237365191715581952', '237365191191293952', '新用户注册', '15', '1', '2018-10-18 00:04:31', '2018-10-18 00:04:31');
INSERT INTO `kernelrecord` VALUES ('237365956148457472', '237365955674501120', '新用户注册', '15', '1', '2018-10-18 00:07:33', '2018-10-18 00:07:33');
INSERT INTO `kernelrecord` VALUES ('237366039279562752', '237366038801412096', '新用户注册', '15', '1', '2018-10-18 00:07:53', '2018-10-18 00:07:53');
INSERT INTO `kernelrecord` VALUES ('237367581793579008', '237367581340594176', '新用户注册', '15', '1', '2018-10-18 00:14:01', '2018-10-18 00:14:01');

-- ----------------------------
-- Table structure for moneydetail
-- ----------------------------
DROP TABLE IF EXISTS `moneydetail`;
CREATE TABLE `moneydetail` (
  `id` varchar(30) NOT NULL,
  `userid` varchar(30) DEFAULT NULL COMMENT '充币者',
  `type` tinyint(4) unsigned DEFAULT NULL COMMENT '1.充值，2.消费或提现',
  `status` tinyint(4) unsigned DEFAULT NULL COMMENT '0.开始，1.操作成功，2.正在支付，3.操作失败',
  `moneynum` varchar(30) DEFAULT NULL COMMENT '金额',
  `title` varchar(100) DEFAULT NULL COMMENT '用途',
  `note` varchar(100) DEFAULT NULL COMMENT '备注',
  `createtime` varchar(30) DEFAULT NULL COMMENT '创建发起时间',
  `successtime` varchar(30) DEFAULT NULL COMMENT '支付成功时间',
  `failtime` varchar(30) DEFAULT NULL COMMENT '支付失败时间',
  `startpaytime` varchar(30) DEFAULT NULL COMMENT '开始支付时间',
  PRIMARY KEY (`id`),
  KEY `id_moneydtail_index` (`id`) USING BTREE,
  KEY `id_moneydetail_userid_index` (`userid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moneydetail
-- ----------------------------
INSERT INTO `moneydetail` VALUES ('234816966915780608', '227939210462490624', '2', '0', '3', '提现', null, '2018-10-10 23:18:47', null, null, null);
INSERT INTO `moneydetail` VALUES ('234817143860883456', '227939210462490624', '2', '0', '2', '提现', null, '2018-10-10 23:19:29', null, null, null);
INSERT INTO `moneydetail` VALUES ('234825676631306240', '227939210462490624', '2', '0', '5', 'sss', null, '2018-10-10 23:53:24', null, null, null);
INSERT INTO `moneydetail` VALUES ('234839576244383744', '227939210462490624', '2', '0', '5', 'sss', null, '2018-10-11 00:48:38', null, null, null);
INSERT INTO `moneydetail` VALUES ('234839583966097408', '227939210462490624', '2', '0', '5', 'sss', null, '2018-10-11 00:48:39', null, null, null);
INSERT INTO `moneydetail` VALUES ('236618208390410240', '233589179726950400', '2', '0', '5', '提现', null, '2018-10-15 22:36:17', null, null, null);
INSERT INTO `moneydetail` VALUES ('236618218117001216', '233589179726950400', '2', '0', '5', '提现', null, '2018-10-15 22:36:19', null, null, null);
INSERT INTO `moneydetail` VALUES ('236618222604906496', '233589179726950400', '2', '0', '5', '提现', null, '2018-10-15 22:36:20', null, null, null);
INSERT INTO `moneydetail` VALUES ('236618224450400256', '233589179726950400', '2', '0', '5', '提现', null, '2018-10-15 22:36:20', null, null, null);
INSERT INTO `moneydetail` VALUES ('236618225540919296', '233589179726950400', '2', '0', '5', '提现', null, '2018-10-15 22:36:21', null, null, null);
INSERT INTO `moneydetail` VALUES ('236618226572718080', '233589179726950400', '2', '0', '5', '提现', null, '2018-10-15 22:36:21', null, null, null);
INSERT INTO `moneydetail` VALUES ('236618227860369408', '233589179726950400', '2', '0', '5', '提现', null, '2018-10-15 22:36:21', null, null, null);
INSERT INTO `moneydetail` VALUES ('236618230737661952', '233589179726950400', '2', '0', '5', '提现', null, '2018-10-15 22:36:22', null, null, null);

-- ----------------------------
-- Table structure for myaddress
-- ----------------------------
DROP TABLE IF EXISTS `myaddress`;
CREATE TABLE `myaddress` (
  `id` varchar(30) NOT NULL COMMENT '主键',
  `userid` varchar(30) DEFAULT NULL,
  `name` varchar(100) DEFAULT '0' COMMENT '联系人',
  `phone` varchar(15) DEFAULT '' COMMENT '手机号码',
  `area` varchar(100) DEFAULT NULL COMMENT '选择地区',
  `detailaddress` varchar(300) DEFAULT NULL COMMENT '详细地址',
  `postcoe` varchar(10) DEFAULT '' COMMENT '邮编',
  `createtime` varchar(30) DEFAULT '' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `myaddindex` (`id`),
  KEY `address_userid_index` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myaddress
-- ----------------------------
INSERT INTO `myaddress` VALUES ('228173921118056448', null, '田星星', '13569878968', '上海市静安区', 'abc', '88688', null);
INSERT INTO `myaddress` VALUES ('228180105573167104', '227939210462490624', '田星星', '13569878968', '上海市静安区', '静安大道888号8栋8楼88层8室', '88688', null);
INSERT INTO `myaddress` VALUES ('228180143204462592', null, '田圆', '15832015876', '上海市静安区', '国贸大厦', '88688', null);
INSERT INTO `myaddress` VALUES ('228689365608427520', '227939210462490620', '张三', '158756320589', '拱墅区', 'xx小区', '485263', null);
INSERT INTO `myaddress` VALUES ('228883509043785728', '227939210462490620', 'ALso', '15686357852', '东河区', '尚尚小区', '482600', null);
INSERT INTO `myaddress` VALUES ('228883913198530560', '227939210462490620', '李四', '157854203695', '红山区', '思思小区', '480132', null);
INSERT INTO `myaddress` VALUES ('228979532059635712', null, '麻子', '15863278955', '河北省唐山市路南区', '大大小区', '485602', null);
INSERT INTO `myaddress` VALUES ('230105761336782848', '227939210462490620', '李四', '174586203', '东城区', '哈哈哈小区', '418500', '2018-09-27 23:18:08');
INSERT INTO `myaddress` VALUES ('230272924819386368', '0', 'Jack', '171946462', '东城区', 'Xx小区', '412369', '2018-09-28 10:22:23');
INSERT INTO `myaddress` VALUES ('233610793470390272', null, '收件人1', '15236895320', '河北省秦皇岛市海港区', '哈哈哈哈小区6523号', '456200', null);
INSERT INTO `myaddress` VALUES ('233611267397382144', null, '收件人2', '17814985325', '河北省石家庄市长安区', '华海期货小区', '452023', null);
INSERT INTO `myaddress` VALUES ('233613943422054400', null, '收件人3', '17230258420', '北京市北京市东城区', 'asahj小区', '542021', null);
INSERT INTO `myaddress` VALUES ('233615774294470656', null, '收件人4', '15203687520', '辽宁省大连市西岗区', '啥卡小区96号', '420123', null);
INSERT INTO `myaddress` VALUES ('233669570047504384', null, '收件人1', '15302587532', '山西省太原市小店区', '古林大道542弄28号', '452014', null);
INSERT INTO `myaddress` VALUES ('233682374058045440', null, '指尖脉', '13678987898', '上海市上海市黄浦区', '上海这边', '235689', null);
INSERT INTO `myaddress` VALUES ('234095320743538688', null, '白雪', '15789542023', '江苏省无锡市北塘区', '小河湖畔542号', '415804', null);
INSERT INTO `myaddress` VALUES ('234096268954038272', null, '百灵鸟', '14785203699', '上海市宝山区', '祥和大道2035号', '472035', null);
INSERT INTO `myaddress` VALUES ('235161899832963072', '227939210462490624', '萧亚轩', '15870869852', '山西省大同市城  区', '彤彤小区90号', '456800', '2018-10-11 22:09:26');

-- ----------------------------
-- Table structure for quersionanser
-- ----------------------------
DROP TABLE IF EXISTS `quersionanser`;
CREATE TABLE `quersionanser` (
  `id` varchar(30) NOT NULL,
  `quersionid` varchar(30) DEFAULT NULL COMMENT '提问的问题id',
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
INSERT INTO `question` VALUES ('228301065290772480', '227939210462490624', '79', null, '问题内容', '0', '0', '30', '0', null, '5', '2', null, '科技公司', null, '2018-09-22 23:46:55');
INSERT INTO `question` VALUES ('228301573980155904', '227939210462490624', '81', null, '问题内容', '0', '0', '30', '0', null, '5', '2', null, '科技公司', null, '2018-09-22 23:48:56');
INSERT INTO `question` VALUES ('228301650790445056', '227939210462490624', '81', null, '问题内容2', '0', '1', '30', '0', null, '5', '2', null, '科技公司是订单', null, '2018-09-22 23:49:15');
INSERT INTO `question` VALUES ('228305357951201280', '227939210462490624', '81', null, '问题内容2', '0', '1', '30', '0', null, '5', '2', null, '科技公司是订单', '10', '2018-09-23 00:03:59');
INSERT INTO `question` VALUES ('228327108810633216', '227939210462490624', '77', null, '请问', '0', '1', '3', '0', null, '5', '2', null, '测试公司', '10', '2018-09-23 01:30:24');
INSERT INTO `question` VALUES ('228327562852429824', '227939210462490624', '77', null, 'ahsajhdaks', '0', '1', '2', '0', null, '5', '2', null, '公司gs', '10', '2018-09-23 01:32:13');
INSERT INTO `question` VALUES ('228328232959602688', '227939210462490624', '80', null, 'fisdfjkd', '0', '1', '4', '0', null, '5', '2', null, '公司gs', '10', '2018-09-23 01:34:52');
INSERT INTO `question` VALUES ('228329249843441664', '227939210462490624', '79', null, 'dghkdkjf', '0', '1', '4', '0', null, '5', '2', null, '公司gs', '200', '2018-09-23 01:38:55');
INSERT INTO `question` VALUES ('228439179028066304', '227939210462490624', '0', null, '', '0', '0', '3', '0', null, '5', '2', null, '公司gs', '0', '2018-09-23 08:55:44');
INSERT INTO `question` VALUES ('228568165112606720', '227939210462490624', '81', '高级问题标题', '高级问题内容，高级问题内容高级问题内容高级问题内容', '0', '0', '10', '0', '0', '5', '2', null, '发布者公司名称', '100', '2018-09-23 17:28:17');
INSERT INTO `question` VALUES ('228570846594068480', '227939210462490624', '81', '高级问题标题1', '高级问题内容2，高级问题内容高级问题内容高级问题内容', '0', '1', '15', '0', '0', '5', '2', null, '发布者公司名称1', '80', '2018-09-23 17:38:56');
INSERT INTO `question` VALUES ('228571316804907008', '227939210462490624', '81', '高级问题标题11', '高级问题内容23，高级问题内容高级问题内容高级问题内容', '0', '1', '15', '0', '0', '5', '2', null, '发布者公司名称12', '90', '2018-09-23 17:40:48');
INSERT INTO `question` VALUES ('228571411692646400', '227939210462490624', '81', '高级问题标题11', '高级问题内容23，高级问题内容高级问题内容高级问题内容', '0', '1', '15', '0', '0', '5', '2', null, '发布者公司名称12', '90', '2018-09-23 17:41:11');
INSERT INTO `question` VALUES ('228571628928233472', '227939210462490624', '81', '高级问题标题11', '高级问题内容23，高级问题内容高级问题内容高级问题内容', '0', '1', '15', '0', '0', '5', '2', null, '发布者公司名称12', '90', '2018-09-23 17:42:02');
INSERT INTO `question` VALUES ('228571880146071552', '227939210462490624', '81', '高级问题标题32', '高级问题内容2啊3，高级阿斯蒂芬问题内容高级问题内容高级问题内容', '0', '0', '30', '0', '0', '5', '2', null, '发布者公司名称1223', '200', '2018-09-23 17:43:02');
INSERT INTO `question` VALUES ('228572013386526720', '227939210462490624', '81', '高级问题标题323', '高级问题内容2啊36563，高级阿斯蒂芬问题内容高级问题内容高级问题内容', '0', '0', '15', '0', '0', '5', '2', null, '发布者公司名称45665', '200', '2018-09-23 17:43:34');
INSERT INTO `question` VALUES ('228575521875685376', '227939210462490624', '81', '高级问题23标题', '高级问是的法规题内565656容2啊36563，高级阿斯蒂芬问题内容高级问题内容高级问题内容', '0', '0', '15', '0', '0', '5', '2', null, '发布者公司名称45665', '110', '2018-09-23 17:57:31');
INSERT INTO `question` VALUES ('228576958236061696', '227939210462490624', '81', '高级问题23标题', '高级问是的法规题内565656容2啊36563，高级阿斯蒂芬问题内容高级问题内容高级问题内容', '0', '0', '15', '0', '0', '5', '2', null, '发布者公司名称45665', '110', '2018-09-23 18:03:13');
INSERT INTO `question` VALUES ('228581853257265152', '227939210462490624', '81', '高级问题23标题82', '高级问82是的法规题内565656容2啊36563，高级阿斯蒂芬问题内容高级问题内容高级问题内容', '0', '1', '20', '0', '0', '5', '2', null, '发布者公司名称45665', '100', '2018-09-23 18:22:40');
INSERT INTO `question` VALUES ('228586609480560640', '227939210462490624', '81', '高级问题23标题82', '高级问82是的法规题内565656容2啊36563，高级阿斯蒂芬问题内容高级问题内容高级问题内容', '0', '1', '20', '0', '0', '5', '2', null, '发布者公司名称45665', '100', '2018-09-23 18:41:34');
INSERT INTO `question` VALUES ('228634263866568704', '227939210462490624', '77', null, '求推荐', '0', '1', '4', '0', '0', '5', '2', null, '公司名称', '100', '2018-09-23 21:50:56');
INSERT INTO `question` VALUES ('228642583885115392', '227939210462490624', '80', null, '推荐求助', '0', '1', '4', '0', '0', '5', '2', null, '公司名称', '160', '2018-09-23 22:23:59');
INSERT INTO `question` VALUES ('229665799848062976', '227939210462490624', '77', '字母', '一二三四一二三四', '0', '0', '3', '0', '0', '5', '2', null, '测试公司', '10', '2018-09-26 18:09:53');
INSERT INTO `question` VALUES ('229715687906471936', '227939210462490624', '0', null, '', '0', '0', '3', '0', '0', '5', '2', null, '', '0', '2018-09-26 21:28:07');
INSERT INTO `question` VALUES ('229724699792240640', '227939210462490624', '77', '字母', '一二三四一二三四', '0', '0', '3', '0', '0', '5', '2', null, '测试公司', '10', '2018-09-26 22:03:56');
INSERT INTO `question` VALUES ('229734450735345664', '227939210462490624', '77', '字母阿萨德', '我我我', '0', '0', '3', '0', '0', '5', '2', null, '测试公司', '10', '2018-09-26 22:42:41');
INSERT INTO `question` VALUES ('229740091906453504', '227939210462490624', '77', '求助帖', '哈哈哈哈哈哈哈哈哈', '0', '1', '4', '0', '0', '5', '2', null, '公司名称', '100', '2018-09-26 23:05:06');
INSERT INTO `question` VALUES ('229746930379386880', '227939210462490624', '77', null, 'hsjdzcd', '0', '1', '4', '0', '0', '5', '2', null, '公司名称', '100', '2018-09-26 23:32:16');
INSERT INTO `question` VALUES ('229762283046170624', '227939210462490620', '77', null, 'hahah', '0', '1', '4', '0', '0', '5', '2', null, '', '100', '2018-09-27 00:33:17');
INSERT INTO `question` VALUES ('229764287113981952', '227939210462490620', '80', null, '请问谁能介绍一个经验丰富的经理', '0', '1', '5', '0', '0', '5', '2', null, '', '160', '2018-09-27 00:41:14');
INSERT INTO `question` VALUES ('229955068936318976', '227939210462490620', '77', null, '求介绍', '0', '1', '4', '0', '0', '5', '2', null, 'xx公司', '100', '2018-09-27 13:19:20');
INSERT INTO `question` VALUES ('230086514376175616', '227939210462490620', '77', null, '求助', '0', '1', '5', '0', '0', '5', '2', null, '测试公司01', '100', '2018-09-27 22:01:39');
INSERT INTO `question` VALUES ('230087347746631680', '227939210462490620', '80', '求助帖-高级提问01', '高级提问内容01', '0', '1', '1', '0', '0', '5', '2', null, '测试公司01', '160', '2018-09-27 22:04:58');
INSERT INTO `question` VALUES ('230273248409939968', '0', '80', null, '求主。', '0', '1', '1', '0', '0', '5', '2', null, '公司', '160', '2018-09-28 10:23:40');
INSERT INTO `question` VALUES ('230273684441395200', '0', '81', '求助标题', '哈哈哈哈哈哈哈哈哈哈', '0', '1', '4', '0', '0', '5', '2', null, '公司', '56', '2018-09-28 10:25:24');
INSERT INTO `question` VALUES ('230831507155972096', '227939210462490624', '79', null, '求介绍一个经验丰富的产品经理', '0', '1', '4', '0', '0', '5', '2', null, '公司', '200', '2018-09-29 23:21:59');
INSERT INTO `question` VALUES ('231032043750813696', '0', '79', null, '求推荐，哈哈哈哈，不需要了，哈哈哈哈', '0', '1', '2', '0', '0', '5', '2', null, '单位名称哟', '200', '2018-09-30 12:38:51');
INSERT INTO `question` VALUES ('231032047005593600', '0', '79', null, '求推荐，哈哈哈哈，不需要了，哈哈哈哈', '0', '1', '2', '0', '0', '5', '2', null, '单位名称哟', '200', '2018-09-30 12:38:52');
INSERT INTO `question` VALUES ('231033107472445440', '0', '77', null, '谁能介绍认识下雷军', '0', '0', '3', '0', '0', '5', '2', null, '', '100', '2018-09-30 12:43:05');
INSERT INTO `question` VALUES ('231033109817061376', '0', '77', null, '谁能介绍认识下雷军', '0', '0', '3', '0', '0', '5', '2', null, '', '100', '2018-09-30 12:43:05');
INSERT INTO `question` VALUES ('231033437073436672', '0', '77', null, '怎样监听页面呢', '0', '1', '2', '0', '0', '5', '2', null, '单位名称', '100', '2018-09-30 12:44:23');
INSERT INTO `question` VALUES ('231039099497082880', '0', '77', null, 'PS你乖哦', '0', '0', '3', '0', '0', '5', '2', null, '', '100', '2018-09-30 13:06:53');
INSERT INTO `question` VALUES ('231042163717173248', '0', '77', null, 'fjjrkkr', '0', '0', '5', '0', '0', '5', '2', null, '', '100', '2018-09-30 13:19:04');
INSERT INTO `question` VALUES ('233525543499198464', '0', '78', null, '你好 支付问题', '0', '0', '3', '0', '0', '5', '2', null, '', '10', '2018-10-07 09:47:08');
INSERT INTO `question` VALUES ('233537540764725248', '0', '78', null, '支付宝提问1', '0', '0', '3', '0', '0', '5', '2', null, '', '10', '2018-10-07 10:34:48');
INSERT INTO `question` VALUES ('233537817169358848', '0', '81', null, '浩浩荡荡1', '0', '0', '3', '0', '0', '5', '2', null, '', '56', '2018-10-07 10:35:54');
INSERT INTO `question` VALUES ('233541324022738944', '0', '80', null, '阿斯蒂芬1', '0', '0', '3', '0', '0', '5', '2', null, '', '160', '2018-10-07 10:49:50');
INSERT INTO `question` VALUES ('233541511185166336', '0', '81', null, '附加费1', '0', '0', '3', '0', '0', '5', '2', null, '', '56', '2018-10-07 10:50:35');
INSERT INTO `question` VALUES ('233542214305705984', '0', '78', null, '测试userid', '0', '0', '3', '0', '0', '5', '2', null, '', '10', '2018-10-07 10:53:22');
INSERT INTO `question` VALUES ('233542519751700480', '0', '78', null, '测试userid2', '0', '0', '3', '0', '0', '5', '2', null, '', '10', '2018-10-07 10:54:35');
INSERT INTO `question` VALUES ('233543202823467008', '227939210462490624', '77', null, '一一二二三三四四', '0', '1', '4', '0', '0', '3', '2', null, '单位名称', '100', '2018-10-07 10:57:18');
INSERT INTO `question` VALUES ('233543663320297472', '227939210462490624', '78', null, '号外号外，今儿有一些小道消息。。。', '0', '1', '4', '0', '0', '3', '2', null, '单位名称', '10', '2018-10-07 10:59:08');
INSERT INTO `question` VALUES ('233547317481828352', '0', '78', null, '测试问题2qq', '0', '0', '3', '0', '0', '5', '2', null, '', '10', '2018-10-07 11:13:39');
INSERT INTO `question` VALUES ('233557994300764160', '0', '0', null, '还是打电话1', '0', '0', '3', '0', '0', '5', '2', null, '', '0', '2018-10-07 11:56:05');
INSERT INTO `question` VALUES ('233559135336001536', '233557556377677824', '78', null, '沟沟壑壑好', '0', '0', '3', '0', '0', '5', '2', null, '', '10', '2018-10-07 12:00:37');
INSERT INTO `question` VALUES ('233566843980214272', '233557556377677824', '78', null, '好的黑豆豆浆', '0', '0', '3', '0', '0', '5', '2', null, '', '10', '2018-10-07 12:31:15');
INSERT INTO `question` VALUES ('233567125338320896', '233557556377677824', '77', null, '电话电话电话电话', '0', '0', '3', '0', '0', '5', '2', null, '', '100', '2018-10-07 12:32:22');
INSERT INTO `question` VALUES ('233589250522607616', '233557556377677824', '78', null, '放假放假放假就', '0', '0', '3', '0', '0', '5', '2', null, '', '10', '2018-10-07 14:00:17');
INSERT INTO `question` VALUES ('233589460397191168', '233583010794958848', '80', null, '都是说的私家车空间搜到夫叫会加错闪电发货', '0', '1', '4', '0', '0', '5', '2', null, '公司测试公司', '160', '2018-10-07 14:01:07');
INSERT INTO `question` VALUES ('233589638697054208', '233589179726950400', '77', null, '到家顶焦度计', '0', '0', '3', '0', '0', '5', '2', null, '', '100', '2018-10-07 14:01:49');
INSERT INTO `question` VALUES ('233590340064374784', '233583010794958848', '77', null, '哈哈实践活动', '0', '1', '4', '0', '0', '5', '2', null, '公司名称测试', '100', '2018-10-07 14:04:36');
INSERT INTO `question` VALUES ('233601467376726016', '233583010794958848', '80', null, '哈哈哈哈哈哈哈哈', '0', '1', '2', '0', '0', '5', '2', null, '公司名称测试', '160', '2018-10-07 14:48:49');
INSERT INTO `question` VALUES ('233660465081741312', '233583010794958848', '80', null, '电视剧爱的啥事时刻大声道', '0', '1', '1', '0', '0', '5', '2', null, '公司名称测试', '160', '2018-10-07 18:43:16');
INSERT INTO `question` VALUES ('234087797328179200', '233589179726950400', '78', null, '规划好很好', '0', '0', '3', '0', '0', '0', '0', null, '', '10', '2018-10-08 23:01:20');
INSERT INTO `question` VALUES ('234108575742423040', '233589179726950400', '78', null, '回电话电话', '0', '0', '3', '0', '0', '1', '0', null, '', '10', '2018-10-09 00:23:53');
INSERT INTO `question` VALUES ('234433557131423744', '227939210462490624', '81', null, '萨的痕迹十多个收到货三分', '0', '1', '2', '0', '0', '0', '0', null, '公司名称测试', '56', '2018-10-09 21:55:15');
INSERT INTO `question` VALUES ('234436146434666496', '227939210462490624', '80', null, '哈哈好的吧', '0', '1', '1', '0', '0', '0', '0', null, '公司名称测试', '160', '2018-10-09 22:05:32');
INSERT INTO `question` VALUES ('234815632770592768', '227939210462490624', '78', null, '', '0', '0', '3', '0', '0', '0', '0', null, '', '10', '2018-10-10 23:13:29');
INSERT INTO `question` VALUES ('234830001285885952', '227939210462490624', '78', null, '哈哈哈', '0', '1', '1', '0', '0', '0', '0', null, '公司名称测试', '10', '2018-10-11 00:10:35');
INSERT INTO `question` VALUES ('235053403284172800', '227939210462490624', '77', null, '哈哈', '0', '1', '3', '0', '0', '0', '0', null, '火聘', '100', '2018-10-11 14:58:18');
INSERT INTO `question` VALUES ('235151784102850560', '227939210462490624', '79', null, '预览环境下测试1', '0', '1', '2', '0', '0', '0', '0', null, '火聘', '200', '2018-10-11 21:29:14');
INSERT INTO `question` VALUES ('235182922305368064', '227939210462490624', '77', null, '洒家开发商是煎熬的看法和', '0', '1', '3', '0', '0', '0', '0', null, '火聘', '100', '2018-10-11 23:32:58');
INSERT INTO `question` VALUES ('235183462858878976', '227939210462490624', '78', null, '阿飞飞', '0', '1', '2', '0', '0', '0', '0', null, '火聘', '10', '2018-10-11 23:35:07');
INSERT INTO `question` VALUES ('235311616491515904', '227939210462490624', '81', '高级问题提标题', '发布内容', '0', '0', '5', '0', '0', '0', '0', null, '公司发名称', '1', '2018-10-12 08:04:21');
INSERT INTO `question` VALUES ('235364478126911488', '233589179726950400', '78', null, '测试', '0', '0', '3', '0', '0', '0', '0', null, '', '10', '2018-10-12 11:34:24');
INSERT INTO `question` VALUES ('235516331632357376', '227939210462490624', '77', null, '咖妃很骄傲的发挥健身房', '0', '1', '3', '0', '0', '0', '0', null, '火聘', '100', '2018-10-12 21:37:49');
INSERT INTO `question` VALUES ('235516460405878784', '227939210462490624', '77', '深度国际施工方', '反身代词刚睡醒的金黄色的', '0', '1', '3', '0', '0', '0', '0', null, '火聘', '100', '2018-10-12 21:38:19');
INSERT INTO `question` VALUES ('235519780684034048', '227939210462490624', '78', '随便吧准备下班', '装备制造百般阻挠', '0', '1', '3', '0', '0', '0', '0', null, '火聘', '10', '2018-10-12 21:51:31');
INSERT INTO `question` VALUES ('237367274879578112', '237366038801412096', '78', null, '电话电话电话的', '0', '0', '3', '0', '0', '0', '0', null, '', '10', '2018-10-18 00:12:48');

-- ----------------------------
-- Table structure for questionimgs
-- ----------------------------
DROP TABLE IF EXISTS `questionimgs`;
CREATE TABLE `questionimgs` (
  `id` varchar(30) NOT NULL,
  `questionid` varchar(30) DEFAULT NULL,
  `imgname` varchar(200) DEFAULT '' COMMENT '图片名称，高级提问图片',
  `createtime` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `qimgs_idex` (`id`),
  KEY `qimgs_quid_index` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questionimgs
-- ----------------------------
INSERT INTO `questionimgs` VALUES ('235311617393291264', '235311616491515904', 'https://renmai.manmengtv.com/questionimags/227939210462490624/group_3@3x.png', null);
INSERT INTO `questionimgs` VALUES ('235516460892418048', '235516460405878784', 'https://renmai.manmengtv.com/questionimags/227939210462490624/wxe8a8a6ab55249f60.o6zAJs0-6US_KADRrKwNSL-KB1II.ucBcrD6ZLL1a66c449129e3bdc2ae79f0600f8a7d9c2.png', null);
INSERT INTO `questionimgs` VALUES ('235519781166379008', '235519780684034048', 'https://renmai.manmengtv.com/questionimags/227939210462490624/tmp_8eeaa7481957d09d3a24ab70049f4b23e741f0a81db115b4.jpg', null);
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
  `id` varchar(30) NOT NULL COMMENT '主键',
  `userid` varchar(30) DEFAULT NULL,
  `nickname` varchar(100) DEFAULT '0' COMMENT '用户昵称',
  `headimg` varchar(300) DEFAULT '' COMMENT '头像路径',
  `dimension` int(20) DEFAULT NULL COMMENT '人脉维度',
  `money` int(11) DEFAULT '0' COMMENT '显示解决了“”',
  `status` tinyint(4) DEFAULT '0' COMMENT '0.不显示，1.显示，2.已解决',
  `createtime` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `id` varchar(30) NOT NULL COMMENT '订单id',
  `userid` varchar(30) DEFAULT '0' COMMENT '用户id',
  `addressid` varchar(30) DEFAULT '0' COMMENT '收货地址id',
  `productid` varchar(30) DEFAULT '0' COMMENT '产品id',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
INSERT INTO `sellorder` VALUES ('230572877198389248', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-29 06:14:17', '2018-09-29 06:14:17', null);
INSERT INTO `sellorder` VALUES ('230574583990710272', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-29 06:21:04', '2018-09-29 06:21:04', null);
INSERT INTO `sellorder` VALUES ('230574703285104640', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-29 06:21:33', '2018-09-29 06:21:33', null);
INSERT INTO `sellorder` VALUES ('230575661675180032', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-29 06:25:21', '2018-09-29 06:25:21', null);
INSERT INTO `sellorder` VALUES ('230576277944266752', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-29 06:27:48', '2018-09-29 06:27:48', null);
INSERT INTO `sellorder` VALUES ('230580644994871296', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-29 06:45:09', '2018-09-29 06:45:09', null);
INSERT INTO `sellorder` VALUES ('230638213943783424', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-29 10:33:55', '2018-09-29 10:33:55', null);
INSERT INTO `sellorder` VALUES ('230640207278370816', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-29 10:41:50', '2018-09-29 10:41:50', null);
INSERT INTO `sellorder` VALUES ('230690157441839104', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-29 14:00:19', '2018-09-29 14:00:19', null);
INSERT INTO `sellorder` VALUES ('230712844247625728', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-29 15:30:28', '2018-09-29 15:30:28', null);
INSERT INTO `sellorder` VALUES ('230719229995773952', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-29 15:55:50', '2018-09-29 15:55:51', null);
INSERT INTO `sellorder` VALUES ('230721238505353216', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-29 16:03:49', '2018-09-29 16:03:49', null);
INSERT INTO `sellorder` VALUES ('230721824999075840', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-29 16:06:09', '2018-09-29 16:06:09', null);
INSERT INTO `sellorder` VALUES ('230721935569317888', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-29 16:06:36', '2018-09-29 16:06:36', null);
INSERT INTO `sellorder` VALUES ('230721971929739264', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-29 16:06:44', '2018-09-29 16:06:44', null);
INSERT INTO `sellorder` VALUES ('230729338327134208', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-29 16:36:01', '2018-09-29 16:36:01', null);
INSERT INTO `sellorder` VALUES ('230732718697082880', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-29 16:49:26', '2018-09-29 16:49:26', null);
INSERT INTO `sellorder` VALUES ('230740825112309760', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-29 17:21:39', '2018-09-29 17:21:39', null);
INSERT INTO `sellorder` VALUES ('230804998550712320', '227939210462490624', '228688508343021570', '78', '10', '10', '10', '1', '0', '0', '2018-09-29 21:36:39', '2018-09-29 21:36:39', null);
INSERT INTO `sellorder` VALUES ('230829461715546112', '227939210462490624', '228173921118056450', '78', '10', '10', '10', '1', '0', '0', '2018-09-29 23:13:52', '2018-09-29 23:13:52', null);
INSERT INTO `sellorder` VALUES ('230844381609848832', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-30 00:13:09', '2018-09-30 00:13:09', null);
INSERT INTO `sellorder` VALUES ('230846364622254080', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-30 00:21:02', '2018-09-30 00:21:02', null);
INSERT INTO `sellorder` VALUES ('230846994782875648', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-30 00:23:32', '2018-09-30 00:23:32', null);
INSERT INTO `sellorder` VALUES ('230847950891249664', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-30 00:27:20', '2018-09-30 00:27:20', null);
INSERT INTO `sellorder` VALUES ('230849110377230336', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-30 00:31:56', '2018-09-30 00:31:56', null);
INSERT INTO `sellorder` VALUES ('230851092089401344', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-30 00:39:49', '2018-09-30 00:39:49', null);
INSERT INTO `sellorder` VALUES ('230852162622582784', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-30 00:44:04', '2018-09-30 00:44:04', null);
INSERT INTO `sellorder` VALUES ('230854562343284736', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-30 00:53:36', '2018-09-30 00:53:36', null);
INSERT INTO `sellorder` VALUES ('230860584021651456', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-30 01:17:32', '2018-09-30 01:17:32', null);
INSERT INTO `sellorder` VALUES ('230861141813751808', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-30 01:19:45', '2018-09-30 01:19:45', null);
INSERT INTO `sellorder` VALUES ('230861441404497920', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-30 01:20:56', '2018-09-30 01:20:56', null);
INSERT INTO `sellorder` VALUES ('230862285688532992', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-30 01:24:18', '2018-09-30 01:24:18', null);
INSERT INTO `sellorder` VALUES ('230874483655700480', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-30 02:12:46', '2018-09-30 02:12:46', null);
INSERT INTO `sellorder` VALUES ('230875317357506560', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-30 02:16:05', '2018-09-30 02:16:05', null);
INSERT INTO `sellorder` VALUES ('230875486652198912', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-30 02:16:45', '2018-09-30 02:16:45', null);
INSERT INTO `sellorder` VALUES ('230875598271016960', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-30 02:17:12', '2018-09-30 02:17:12', null);
INSERT INTO `sellorder` VALUES ('230983774819577856', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-30 09:27:03', '2018-09-30 09:27:03', null);
INSERT INTO `sellorder` VALUES ('230996495497687040', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-30 10:17:36', '2018-09-30 10:17:36', null);
INSERT INTO `sellorder` VALUES ('230998860430831616', '227939210462490624', '228180143204462592', '81', '56', '56', '56', '1', '0', '0', '2018-09-30 10:27:00', '2018-09-30 10:27:00', null);
INSERT INTO `sellorder` VALUES ('231000576064745472', '227939210462490624', '228180105573167104', '78', '10', '10', '10', '1', '0', '0', '2018-09-30 10:33:49', '2018-09-30 10:33:49', null);
INSERT INTO `sellorder` VALUES ('231002510955900928', '227939210462490624', '228979532059635712', '78', '10', '10', '10', '1', '0', '0', '2018-09-30 10:41:30', '2018-09-30 10:41:30', null);
INSERT INTO `sellorder` VALUES ('231014016552529920', '227939210462490624', '228979532059635712', '78', '10', '10', '10', '1', '0', '0', '2018-09-30 11:27:13', '2018-09-30 11:27:13', null);
INSERT INTO `sellorder` VALUES ('231016858688417792', '227939210462490624', '228180105573167104', '78', '10', '10', '10', '1', '0', '0', '2018-09-30 11:38:31', '2018-09-30 11:38:31', null);
INSERT INTO `sellorder` VALUES ('231034124368867328', '227939210462490624', '228180105573167104', '78', '10', '10', '10', '1', '0', '0', '2018-09-30 12:47:07', '2018-09-30 12:47:07', null);
INSERT INTO `sellorder` VALUES ('234458938047721472', '227939210462490624', '228180105573167104', '78', '10', '10', '10', '1', '0', '0', '2018-10-09 23:36:06', '2018-10-09 23:36:06', null);
INSERT INTO `sellorder` VALUES ('234828475301621760', '227939210462490624', '0', '77', '100', '100', '100', '1', '0', '0', '2018-10-11 00:04:31', '2018-10-11 00:04:31', null);
INSERT INTO `sellorder` VALUES ('234828948368781312', '227939210462490624', '0', '77', '100', '100', '100', '1', '0', '0', '2018-10-11 00:06:24', '2018-10-11 00:06:24', null);
INSERT INTO `sellorder` VALUES ('234829300711288832', '227939210462490624', '0', '77', '100', '100', '100', '1', '0', '0', '2018-10-11 00:07:48', '2018-10-11 00:07:48', null);
INSERT INTO `sellorder` VALUES ('234829965877571584', '227939210462490624', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-11 00:10:26', '2018-10-11 00:10:26', null);
INSERT INTO `sellorder` VALUES ('235051472738316288', '233589179726950400', '0', '77', '100', '100', '100', '1', '0', '0', '2018-10-11 14:50:38', '2018-10-11 14:50:38', null);
INSERT INTO `sellorder` VALUES ('235051899634577408', '233589179726950400', '0', '77', '100', '100', '100', '1', '0', '0', '2018-10-11 14:52:19', '2018-10-11 14:52:19', null);
INSERT INTO `sellorder` VALUES ('235053368022659072', '227939210462490624', '0', '77', '100', '100', '100', '1', '0', '0', '2018-10-11 14:58:10', '2018-10-11 14:58:10', null);
INSERT INTO `sellorder` VALUES ('235097784825409536', '233589179726950400', '0', '77', '100', '100', '100', '1', '0', '0', '2018-10-11 17:54:39', '2018-10-11 17:54:39', null);
INSERT INTO `sellorder` VALUES ('235100575409106944', '233589179726950400', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-11 18:05:45', '2018-10-11 18:05:45', null);
INSERT INTO `sellorder` VALUES ('235151748921028608', '227939210462490624', '0', '79', '200', '200', '200', '1', '0', '0', '2018-10-11 21:29:05', '2018-10-11 21:29:05', null);
INSERT INTO `sellorder` VALUES ('235161152840003584', '227939210462490624', '0', '77', '100', '100', '100', '1', '0', '0', '2018-10-11 22:06:27', '2018-10-11 22:06:27', null);
INSERT INTO `sellorder` VALUES ('235175952521359360', '227939210462490624', '0', '80', '160', '160', '160', '1', '0', '0', '2018-10-11 23:05:16', '2018-10-11 23:05:16', null);
INSERT INTO `sellorder` VALUES ('235177037889794048', '227939210462490624', '0', '81', '56', '56', '56', '1', '0', '0', '2018-10-11 23:09:35', '2018-10-11 23:09:35', null);
INSERT INTO `sellorder` VALUES ('235177955205050368', '233589179726950400', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-11 23:13:13', '2018-10-11 23:13:13', null);
INSERT INTO `sellorder` VALUES ('235178975163314176', '233589179726950400', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-11 23:17:17', '2018-10-11 23:17:17', null);
INSERT INTO `sellorder` VALUES ('235179167606370304', '233589179726950400', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-11 23:18:02', '2018-10-11 23:18:03', null);
INSERT INTO `sellorder` VALUES ('235179249839894528', '233589179726950400', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-11 23:18:22', '2018-10-11 23:18:22', null);
INSERT INTO `sellorder` VALUES ('235179285357260800', '233589179726950400', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-11 23:18:31', '2018-10-11 23:18:31', null);
INSERT INTO `sellorder` VALUES ('235356244494249984', '235179608377389056', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-12 11:01:41', '2018-10-12 11:01:41', null);
INSERT INTO `sellorder` VALUES ('235356250324332544', '235179608377389056', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-12 11:01:42', '2018-10-12 11:01:42', null);
INSERT INTO `sellorder` VALUES ('235356253860130816', '235179608377389056', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-12 11:01:43', '2018-10-12 11:01:43', null);
INSERT INTO `sellorder` VALUES ('235356255223279616', '235179608377389056', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-12 11:01:43', '2018-10-12 11:01:44', null);
INSERT INTO `sellorder` VALUES ('235363718865612800', '235179608377389056', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-12 11:31:23', '2018-10-12 11:31:23', null);
INSERT INTO `sellorder` VALUES ('235363822217457664', '235179608377389056', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-12 11:31:48', '2018-10-12 11:31:48', null);
INSERT INTO `sellorder` VALUES ('235363846246625280', '235179608377389056', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-12 11:31:53', '2018-10-12 11:31:53', null);
INSERT INTO `sellorder` VALUES ('235363895462588416', '235179608377389056', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-12 11:32:05', '2018-10-12 11:32:05', null);
INSERT INTO `sellorder` VALUES ('235363943877439488', '235179608377389056', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-12 11:32:17', '2018-10-12 11:32:17', null);
INSERT INTO `sellorder` VALUES ('235363983626858496', '235179608377389056', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-12 11:32:26', '2018-10-12 11:32:26', null);
INSERT INTO `sellorder` VALUES ('235364443326771200', '233589179726950400', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-12 11:34:16', '2018-10-12 11:34:16', null);
INSERT INTO `sellorder` VALUES ('235519744889843712', '227939210462490624', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-12 21:51:22', '2018-10-12 21:51:22', null);
INSERT INTO `sellorder` VALUES ('236872153792770048', '227939210462490624', '0', '80', '500', '500', '500', '1', '0', '0', '2018-10-16 15:25:22', '2018-10-16 15:25:22', null);
INSERT INTO `sellorder` VALUES ('236872236672217088', '227939210462490624', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-16 15:25:42', '2018-10-16 15:25:42', null);
INSERT INTO `sellorder` VALUES ('236872362463588352', '227939210462490624', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-16 15:26:12', '2018-10-16 15:26:12', null);
INSERT INTO `sellorder` VALUES ('236872365726756864', '227939210462490624', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-16 15:26:12', '2018-10-16 15:26:12', null);
INSERT INTO `sellorder` VALUES ('236872366511091712', '227939210462490624', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-16 15:26:13', '2018-10-16 15:26:13', null);
INSERT INTO `sellorder` VALUES ('236872367098294272', '227939210462490624', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-16 15:26:13', '2018-10-16 15:26:13', null);
INSERT INTO `sellorder` VALUES ('236872367807131648', '227939210462490624', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-16 15:26:13', '2018-10-16 15:26:13', null);
INSERT INTO `sellorder` VALUES ('236872746850578432', '227939210462490624', '0', '77', '100', '100', '100', '1', '0', '0', '2018-10-16 15:27:43', '2018-10-16 15:27:43', null);
INSERT INTO `sellorder` VALUES ('236936770929815552', '227939210462490624', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-16 19:42:08', '2018-10-16 19:42:08', null);
INSERT INTO `sellorder` VALUES ('236936803431477248', '227939210462490624', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-16 19:42:16', '2018-10-16 19:42:16', null);
INSERT INTO `sellorder` VALUES ('236936930745380864', '227939210462490624', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-16 19:42:46', '2018-10-16 19:42:46', null);
INSERT INTO `sellorder` VALUES ('237174297674641408', '237174151016607744', '0', '77', '100', '100', '100', '1', '0', '0', '2018-10-17 11:25:59', '2018-10-17 11:25:59', null);
INSERT INTO `sellorder` VALUES ('237182293263773696', '227939210462490624', '0', '79', '1276', '1276', '1276', '1', '0', '0', '2018-10-17 11:57:45', '2018-10-17 11:57:45', null);
INSERT INTO `sellorder` VALUES ('237182294484316160', '227939210462490624', '0', '79', '1276', '1276', '1276', '1', '0', '0', '2018-10-17 11:57:45', '2018-10-17 11:57:45', null);
INSERT INTO `sellorder` VALUES ('237182299723001856', '227939210462490624', '0', '79', '1276', '1276', '1276', '1', '0', '0', '2018-10-17 11:57:46', '2018-10-17 11:57:46', null);
INSERT INTO `sellorder` VALUES ('237182372766806016', '227939210462490624', '0', '79', '1276', '1276', '1276', '1', '0', '0', '2018-10-17 11:58:04', '2018-10-17 11:58:04', null);
INSERT INTO `sellorder` VALUES ('237182380517879808', '227939210462490624', '0', '79', '1276', '1276', '1276', '1', '0', '0', '2018-10-17 11:58:06', '2018-10-17 11:58:06', null);
INSERT INTO `sellorder` VALUES ('237182389514661888', '227939210462490624', '0', '79', '1276', '1276', '1276', '1', '0', '0', '2018-10-17 11:58:08', '2018-10-17 11:58:08', null);
INSERT INTO `sellorder` VALUES ('237184690069434368', '233589179726950400', '0', '77', '100', '100', '100', '1', '0', '0', '2018-10-17 12:07:16', '2018-10-17 12:07:16', null);
INSERT INTO `sellorder` VALUES ('237190855398518784', '233589179726950400', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-17 12:31:46', '2018-10-17 12:31:46', null);
INSERT INTO `sellorder` VALUES ('237194971176759296', '233589179726950400', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-17 12:48:07', '2018-10-17 12:48:08', null);
INSERT INTO `sellorder` VALUES ('237195440875892736', '233589179726950400', '0', '79', '1276', '1276', '1276', '1', '0', '0', '2018-10-17 12:49:59', '2018-10-17 12:50:00', null);
INSERT INTO `sellorder` VALUES ('237195829788536832', '235179608377389056', '0', '80', '500', '500', '500', '1', '0', '0', '2018-10-17 12:51:32', '2018-10-17 12:51:32', null);
INSERT INTO `sellorder` VALUES ('237212921388593152', '233589179726950400', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-17 13:59:27', '2018-10-17 13:59:27', null);
INSERT INTO `sellorder` VALUES ('237248847540121600', '237248564323938304', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-17 16:22:13', '2018-10-17 16:22:13', null);
INSERT INTO `sellorder` VALUES ('237252130849681408', '237252050109329408', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-17 16:35:15', '2018-10-17 16:35:15', null);
INSERT INTO `sellorder` VALUES ('237262582098948096', '237262410413502464', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-17 17:16:47', '2018-10-17 17:16:47', null);
INSERT INTO `sellorder` VALUES ('237332615193948160', '237332502019043328', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-17 21:55:04', '2018-10-17 21:55:04', null);
INSERT INTO `sellorder` VALUES ('237333527211798528', '237332502019043328', '0', '77', '100', '100', '100', '1', '0', '0', '2018-10-17 21:58:42', '2018-10-17 21:58:42', null);
INSERT INTO `sellorder` VALUES ('237333582568222720', '237332502019043328', '0', '77', '100', '100', '100', '1', '0', '0', '2018-10-17 21:58:55', '2018-10-17 21:58:55', null);
INSERT INTO `sellorder` VALUES ('237333646678159360', '237332502019043328', '0', '77', '100', '100', '100', '1', '0', '0', '2018-10-17 21:59:10', '2018-10-17 21:59:10', null);
INSERT INTO `sellorder` VALUES ('237334929216630784', '237334803714666496', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-17 22:04:16', '2018-10-17 22:04:16', null);
INSERT INTO `sellorder` VALUES ('237338075733159936', '237338043000811520', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-17 22:16:46', '2018-10-17 22:16:46', null);
INSERT INTO `sellorder` VALUES ('237342914131259392', '237340358457946112', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-17 22:36:00', '2018-10-17 22:36:00', null);
INSERT INTO `sellorder` VALUES ('237359592034529280', '237352955127263232', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-17 23:42:16', '2018-10-17 23:42:16', null);
INSERT INTO `sellorder` VALUES ('237361445849788416', '237352955127263232', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-17 23:49:38', '2018-10-17 23:49:38', null);
INSERT INTO `sellorder` VALUES ('237361904492736512', '237352955127263232', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-17 23:51:28', '2018-10-17 23:51:28', null);
INSERT INTO `sellorder` VALUES ('237362109539676160', '237352955127263232', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-17 23:52:16', '2018-10-17 23:52:16', null);
INSERT INTO `sellorder` VALUES ('237365509295697920', '237338043000811520', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-18 00:05:47', '2018-10-18 00:05:47', null);
INSERT INTO `sellorder` VALUES ('237365861503987712', '237352955127263232', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-18 00:07:11', '2018-10-18 00:07:11', null);
INSERT INTO `sellorder` VALUES ('237366040609157120', '237365955674501120', '0', '77', '100', '100', '100', '1', '0', '0', '2018-10-18 00:07:54', '2018-10-18 00:07:54', null);
INSERT INTO `sellorder` VALUES ('237367230482870272', '237366038801412096', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-18 00:12:37', '2018-10-18 00:12:37', null);
INSERT INTO `sellorder` VALUES ('237367301991559168', '237365955674501120', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-18 00:12:54', '2018-10-18 00:12:54', null);
INSERT INTO `sellorder` VALUES ('237367659216236544', '237366038801412096', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-18 00:14:20', '2018-10-18 00:14:20', null);
INSERT INTO `sellorder` VALUES ('237369260668612608', '237367581340594176', '0', '78', '10', '10', '10', '1', '0', '0', '2018-10-18 00:20:41', '2018-10-18 00:20:41', null);
INSERT INTO `sellorder` VALUES ('237369613422161920', '237367581340594176', '0', '77', '100', '100', '100', '1', '0', '0', '2018-10-18 00:22:05', '2018-10-18 00:22:06', null);
INSERT INTO `sellorder` VALUES ('237369677431435264', '237367581340594176', '0', '82', '7099', '7099', '7099', '1', '0', '0', '2018-10-18 00:22:21', '2018-10-18 00:22:21', null);

-- ----------------------------
-- Table structure for sellproduct
-- ----------------------------
DROP TABLE IF EXISTS `sellproduct`;
CREATE TABLE `sellproduct` (
  `id` varchar(30) NOT NULL,
  `productname` varchar(200) DEFAULT '' COMMENT '出售产品名称',
  `price` float DEFAULT '0' COMMENT '价格',
  `kernel` int(11) DEFAULT '0' COMMENT '麦粒数',
  `thumbnail` varchar(200) DEFAULT '' COMMENT '缩略图路径',
  `detailimg` varchar(200) DEFAULT '' COMMENT '详情图路径',
  `remainingnum` int(11) DEFAULT '0' COMMENT '剩余数',
  `totalnum` int(11) DEFAULT '0' COMMENT '商品总数',
  `createtime` varchar(30) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sellproduct
-- ----------------------------
INSERT INTO `sellproduct` VALUES ('77', '京东E卡', '100', '100', 'http://ubestchain.com/images/product/100_1.png', 'http://ubestchain.com/images/detail/detail2.jpg', '10', '200', '2018-09-22 10:51:22');
INSERT INTO `sellproduct` VALUES ('78', '手机充值卡', '10', '100', 'http://ubestchain.com/images/product/10_1.png', 'http://ubestchain.com/images/detail/detail1.jpg', '2', '200', '2018-09-22 10:52:12');
INSERT INTO `sellproduct` VALUES ('79', '苹果蓝牙耳机', '1276', '100', 'http://ubestchain.com/images/product/1276_1.png', 'http://ubestchain.com/images/detail/detail3.jpg', '15', '200', '2018-09-22 10:52:29');
INSERT INTO `sellproduct` VALUES ('80', '大额京东E卡', '500', '100', 'http://ubestchain.com/images/product/500_1.png', 'http://ubestchain.com/images/detail/detail2.jpg', '35', '200', '2018-09-22 10:52:42');
INSERT INTO `sellproduct` VALUES ('81', '京东E卡小额', '50', '100', 'http://ubestchain.com/images/product/50_1.png', 'http://ubestchain.com/images/detail/detail2.jpg', '15', '200', '2018-09-22 10:53:02');
INSERT INTO `sellproduct` VALUES ('82', 'iPhone X', '7099', '100', 'http://ubestchain.com/images/product/7099_1.png', 'http://ubestchain.com/images/detail/detail4.jpg', '150', '200', '2018-09-22 10:52:42');

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
-- Table structure for signin
-- ----------------------------
DROP TABLE IF EXISTS `signin`;
CREATE TABLE `signin` (
  `id` varchar(30) NOT NULL,
  `userid` varchar(30) DEFAULT NULL,
  `signintime` varchar(30) DEFAULT NULL COMMENT '签到时间,查询是否已经包含当天',
  `type` tinyint(4) DEFAULT '0' COMMENT '暂时不用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of signin
-- ----------------------------
INSERT INTO `signin` VALUES ('234461499047800832', '227939210462490624', '2018-10-10 22:31:02', '0');
INSERT INTO `signin` VALUES ('234462033934807040', '233589179726950400', '2018-10-15 22:36:10', '0');

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
INSERT INTO `userinfo` VALUES ('237367581340594176', 'oEds65BZ6NXIurpvwyXf8znxONWQ', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKyBXRBiafNdSx7b4nMTObjIRFAF66t4FJcAT0VAKFdwhaZJHwZtglrtKdbKc5OgP2QsDU2duvEwxg/132', '建明', null, null, '', null, null, '20', null, '0', '2018-10-18 00:14:01');
