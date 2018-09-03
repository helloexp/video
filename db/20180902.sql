/*
Navicat MySQL Data Transfer

Source Server         : video
Source Server Version : 50639
Source Host           : 166.62.28.144:3306
Source Database       : 1se0x

Target Server Type    : MYSQL
Target Server Version : 50639
File Encoding         : 65001

Date: 2018-09-02 22:03:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for vd_admin
-- ----------------------------
DROP TABLE IF EXISTS `vd_admin`;
CREATE TABLE `vd_admin` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL COMMENT '管理员账号',
  `password` varchar(32) NOT NULL COMMENT '管理员密码',
  `login_ip` varchar(32) DEFAULT NULL COMMENT '登录ip',
  `login_count` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `create_time` int(32) unsigned DEFAULT NULL COMMENT '账号创建时间',
  `update_time` int(32) DEFAULT NULL COMMENT '更新时间',
  `deleted_time` int(32) DEFAULT NULL COMMENT '账号删除时间',
  PRIMARY KEY (`id`,`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='后台管理';

-- ----------------------------
-- Records of vd_admin
-- ----------------------------
INSERT INTO `vd_admin` VALUES ('2', 'user_1se0x', '68be2bae8c7710482a5d2f1aa1fc5cbe', '49.156.2.67', '0', '1535598221', '1535688907', null);

-- ----------------------------
-- Table structure for vd_slider
-- ----------------------------
DROP TABLE IF EXISTS `vd_slider`;
CREATE TABLE `vd_slider` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT NULL,
  `sort` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '排序',
  `jump` varchar(255) DEFAULT NULL COMMENT '跳转地址',
  `create_time` int(32) DEFAULT NULL,
  `deleted_time` int(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='轮播图管理';

-- ----------------------------
-- Records of vd_slider
-- ----------------------------
INSERT INTO `vd_slider` VALUES ('15', '/uploads/images/20180901/a96c8d471fbaa4d9b30cf56f1c1f6c4c.jpg', '1', 'http://1se01.com/play?playid=20', '1535857907', null);
INSERT INTO `vd_slider` VALUES ('16', '/uploads/images/20180901/487d4c3e8b8f73f4c70cbeefd200853e.jpg', '2', 'http://1se01.com/play?playid=19', '1535857974', null);

-- ----------------------------
-- Table structure for vd_statistics
-- ----------------------------
DROP TABLE IF EXISTS `vd_statistics`;
CREATE TABLE `vd_statistics` (
  `id` int(16) unsigned NOT NULL AUTO_INCREMENT,
  `browse_ip` varchar(64) DEFAULT NULL COMMENT '浏览人ip',
  `stop_time` int(32) DEFAULT NULL COMMENT '停留网站时间',
  `create_time` int(32) DEFAULT NULL,
  `deleted_time` int(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=329 DEFAULT CHARSET=utf8 COMMENT='数据统计表';

-- ----------------------------
-- Records of vd_statistics
-- ----------------------------
INSERT INTO `vd_statistics` VALUES ('120', '49.156.2.67', null, '1535703528', null);
INSERT INTO `vd_statistics` VALUES ('121', '49.156.2.67', null, '1535703532', null);
INSERT INTO `vd_statistics` VALUES ('122', '49.156.2.67', null, '1535703543', null);
INSERT INTO `vd_statistics` VALUES ('123', '49.156.2.67', null, '1535703553', null);
INSERT INTO `vd_statistics` VALUES ('124', '49.156.2.67', null, '1535703574', null);
INSERT INTO `vd_statistics` VALUES ('125', '49.156.2.67', null, '1535703580', null);
INSERT INTO `vd_statistics` VALUES ('126', '49.156.2.67', null, '1535703609', null);
INSERT INTO `vd_statistics` VALUES ('127', '49.156.2.67', null, '1535704098', null);
INSERT INTO `vd_statistics` VALUES ('128', '49.156.2.67', null, '1535704104', null);
INSERT INTO `vd_statistics` VALUES ('129', '49.156.2.67', null, '1535704112', null);
INSERT INTO `vd_statistics` VALUES ('130', '49.156.2.67', null, '1535704198', null);
INSERT INTO `vd_statistics` VALUES ('131', '49.156.2.67', null, '1535704247', null);
INSERT INTO `vd_statistics` VALUES ('132', '49.156.2.67', null, '1535704351', null);
INSERT INTO `vd_statistics` VALUES ('133', '49.156.2.67', null, '1535704405', null);
INSERT INTO `vd_statistics` VALUES ('134', '49.156.2.67', null, '1535704542', null);
INSERT INTO `vd_statistics` VALUES ('135', '49.156.2.67', null, '1535704559', null);
INSERT INTO `vd_statistics` VALUES ('136', '49.156.2.67', null, '1535704573', null);
INSERT INTO `vd_statistics` VALUES ('137', '123.151.77.49', null, '1535704624', null);
INSERT INTO `vd_statistics` VALUES ('138', '123.151.77.49', null, '1535704735', null);
INSERT INTO `vd_statistics` VALUES ('139', '49.156.2.67', null, '1535704751', null);
INSERT INTO `vd_statistics` VALUES ('140', '49.156.2.67', null, '1535705291', null);
INSERT INTO `vd_statistics` VALUES ('141', '123.151.77.49', null, '1535705331', null);
INSERT INTO `vd_statistics` VALUES ('142', '49.156.2.67', null, '1535705580', null);
INSERT INTO `vd_statistics` VALUES ('143', '49.156.2.67', null, '1535706379', null);
INSERT INTO `vd_statistics` VALUES ('144', '123.151.77.49', null, '1535706408', null);
INSERT INTO `vd_statistics` VALUES ('145', '117.20.118.212', null, '1535706751', null);
INSERT INTO `vd_statistics` VALUES ('146', '49.156.2.67', null, '1535706891', null);
INSERT INTO `vd_statistics` VALUES ('147', '49.156.2.67', null, '1535707111', null);
INSERT INTO `vd_statistics` VALUES ('148', '117.20.115.26', null, '1535707481', null);
INSERT INTO `vd_statistics` VALUES ('149', '117.20.115.26', null, '1535707854', null);
INSERT INTO `vd_statistics` VALUES ('150', '117.20.115.26', null, '1535707904', null);
INSERT INTO `vd_statistics` VALUES ('151', '123.151.77.49', null, '1535708079', null);
INSERT INTO `vd_statistics` VALUES ('152', '49.156.2.67', null, '1535708137', null);
INSERT INTO `vd_statistics` VALUES ('153', '49.156.2.67', null, '1535708148', null);
INSERT INTO `vd_statistics` VALUES ('154', '117.20.115.219', null, '1535708320', null);
INSERT INTO `vd_statistics` VALUES ('155', '49.156.2.67', null, '1535713833', null);
INSERT INTO `vd_statistics` VALUES ('156', '49.156.2.67', null, '1535717356', null);
INSERT INTO `vd_statistics` VALUES ('157', '49.156.2.67', null, '1535718188', null);
INSERT INTO `vd_statistics` VALUES ('158', '49.156.2.67', null, '1535718299', null);
INSERT INTO `vd_statistics` VALUES ('159', '49.156.2.67', null, '1535718493', null);
INSERT INTO `vd_statistics` VALUES ('160', '49.156.2.67', null, '1535718619', null);
INSERT INTO `vd_statistics` VALUES ('161', '49.156.2.67', null, '1535718700', null);
INSERT INTO `vd_statistics` VALUES ('162', '49.156.2.67', null, '1535719110', null);
INSERT INTO `vd_statistics` VALUES ('163', '49.156.2.67', null, '1535719589', null);
INSERT INTO `vd_statistics` VALUES ('164', '49.156.2.67', null, '1535719993', null);
INSERT INTO `vd_statistics` VALUES ('165', '49.156.2.67', null, '1535720006', null);
INSERT INTO `vd_statistics` VALUES ('166', '49.156.2.67', null, '1535720022', null);
INSERT INTO `vd_statistics` VALUES ('167', '49.156.2.67', null, '1535720047', null);
INSERT INTO `vd_statistics` VALUES ('168', '49.156.2.67', null, '1535720054', null);
INSERT INTO `vd_statistics` VALUES ('169', '49.156.2.67', null, '1535720155', null);
INSERT INTO `vd_statistics` VALUES ('170', '49.156.2.67', null, '1535720800', null);
INSERT INTO `vd_statistics` VALUES ('171', '49.156.2.67', null, '1535721319', null);
INSERT INTO `vd_statistics` VALUES ('172', '49.156.2.67', null, '1535721346', null);
INSERT INTO `vd_statistics` VALUES ('173', '49.156.2.67', null, '1535721377', null);
INSERT INTO `vd_statistics` VALUES ('174', '49.156.2.67', null, '1535722864', null);
INSERT INTO `vd_statistics` VALUES ('175', '123.151.77.49', null, '1535722911', null);
INSERT INTO `vd_statistics` VALUES ('176', '49.156.2.67', null, '1535723291', null);
INSERT INTO `vd_statistics` VALUES ('177', '117.20.115.219', null, '1535723293', null);
INSERT INTO `vd_statistics` VALUES ('178', '49.156.2.67', null, '1535723324', null);
INSERT INTO `vd_statistics` VALUES ('179', '117.20.115.219', null, '1535723364', null);
INSERT INTO `vd_statistics` VALUES ('180', '117.20.115.219', null, '1535723426', null);
INSERT INTO `vd_statistics` VALUES ('181', '49.156.2.67', null, '1535724346', null);
INSERT INTO `vd_statistics` VALUES ('182', '117.20.118.212', null, '1535731825', null);
INSERT INTO `vd_statistics` VALUES ('183', '117.20.118.212', null, '1535731985', null);
INSERT INTO `vd_statistics` VALUES ('184', '123.151.77.49', null, '1535732130', null);
INSERT INTO `vd_statistics` VALUES ('185', '111.231.218.16', null, '1535746063', null);
INSERT INTO `vd_statistics` VALUES ('186', '49.156.2.67', null, '1535773125', null);
INSERT INTO `vd_statistics` VALUES ('187', '49.156.2.67', null, '1535773223', null);
INSERT INTO `vd_statistics` VALUES ('188', '49.156.2.67', null, '1535773237', null);
INSERT INTO `vd_statistics` VALUES ('189', '49.156.2.67', null, '1535773241', null);
INSERT INTO `vd_statistics` VALUES ('190', '49.156.2.67', null, '1535774583', null);
INSERT INTO `vd_statistics` VALUES ('191', '49.156.2.67', null, '1535774986', null);
INSERT INTO `vd_statistics` VALUES ('192', '49.156.2.67', null, '1535777862', null);
INSERT INTO `vd_statistics` VALUES ('193', '49.156.2.67', null, '1535782377', null);
INSERT INTO `vd_statistics` VALUES ('194', '49.156.2.67', null, '1535786978', null);
INSERT INTO `vd_statistics` VALUES ('195', '49.156.2.67', null, '1535787026', null);
INSERT INTO `vd_statistics` VALUES ('196', '49.156.2.67', null, '1535790475', null);
INSERT INTO `vd_statistics` VALUES ('197', '49.156.2.67', null, '1535791565', null);
INSERT INTO `vd_statistics` VALUES ('198', '49.156.2.67', null, '1535791675', null);
INSERT INTO `vd_statistics` VALUES ('199', '64.233.173.40', null, '1535791830', null);
INSERT INTO `vd_statistics` VALUES ('200', '49.156.2.67', null, '1535792486', null);
INSERT INTO `vd_statistics` VALUES ('201', '64.233.173.44', null, '1535794045', null);
INSERT INTO `vd_statistics` VALUES ('202', '49.156.2.67', null, '1535794282', null);
INSERT INTO `vd_statistics` VALUES ('203', '49.156.2.67', null, '1535799696', null);
INSERT INTO `vd_statistics` VALUES ('204', '49.156.2.67', null, '1535799712', null);
INSERT INTO `vd_statistics` VALUES ('205', '49.156.2.67', null, '1535799895', null);
INSERT INTO `vd_statistics` VALUES ('206', '49.156.2.67', null, '1535800181', null);
INSERT INTO `vd_statistics` VALUES ('207', '49.156.2.67', null, '1535800465', null);
INSERT INTO `vd_statistics` VALUES ('208', '49.156.2.67', null, '1535800554', null);
INSERT INTO `vd_statistics` VALUES ('209', '49.156.2.67', null, '1535801186', null);
INSERT INTO `vd_statistics` VALUES ('210', '49.156.2.67', null, '1535801526', null);
INSERT INTO `vd_statistics` VALUES ('211', '49.156.2.67', null, '1535801757', null);
INSERT INTO `vd_statistics` VALUES ('212', '49.156.2.67', null, '1535801774', null);
INSERT INTO `vd_statistics` VALUES ('213', '49.156.2.67', null, '1535803026', null);
INSERT INTO `vd_statistics` VALUES ('214', '49.156.2.67', null, '1535803035', null);
INSERT INTO `vd_statistics` VALUES ('215', '49.156.2.67', null, '1535803064', null);
INSERT INTO `vd_statistics` VALUES ('216', '49.156.2.67', null, '1535803075', null);
INSERT INTO `vd_statistics` VALUES ('217', '49.156.2.67', null, '1535803161', null);
INSERT INTO `vd_statistics` VALUES ('218', '49.156.2.67', null, '1535803589', null);
INSERT INTO `vd_statistics` VALUES ('219', '49.156.2.67', null, '1535804288', null);
INSERT INTO `vd_statistics` VALUES ('220', '49.156.2.67', null, '1535804545', null);
INSERT INTO `vd_statistics` VALUES ('221', '49.156.2.67', null, '1535805285', null);
INSERT INTO `vd_statistics` VALUES ('222', '49.156.2.67', null, '1535810391', null);
INSERT INTO `vd_statistics` VALUES ('223', '49.156.2.67', null, '1535811279', null);
INSERT INTO `vd_statistics` VALUES ('224', '49.156.2.67', null, '1535811375', null);
INSERT INTO `vd_statistics` VALUES ('225', '49.156.2.67', null, '1535811387', null);
INSERT INTO `vd_statistics` VALUES ('226', '49.156.2.67', null, '1535811422', null);
INSERT INTO `vd_statistics` VALUES ('227', '49.156.2.67', null, '1535811543', null);
INSERT INTO `vd_statistics` VALUES ('228', '49.156.2.67', null, '1535811956', null);
INSERT INTO `vd_statistics` VALUES ('229', '49.156.2.67', null, '1535813424', null);
INSERT INTO `vd_statistics` VALUES ('230', '49.156.2.67', null, '1535813439', null);
INSERT INTO `vd_statistics` VALUES ('231', '49.156.2.67', null, '1535813504', null);
INSERT INTO `vd_statistics` VALUES ('232', '49.156.2.67', null, '1535813566', null);
INSERT INTO `vd_statistics` VALUES ('233', '49.156.2.67', null, '1535813706', null);
INSERT INTO `vd_statistics` VALUES ('234', '49.156.2.67', null, '1535813792', null);
INSERT INTO `vd_statistics` VALUES ('235', '49.156.2.67', null, '1535814081', null);
INSERT INTO `vd_statistics` VALUES ('236', '27.109.114.251', null, '1535814696', null);
INSERT INTO `vd_statistics` VALUES ('237', '66.249.82.170', null, '1535816484', null);
INSERT INTO `vd_statistics` VALUES ('238', '27.109.114.26', null, '1535824038', null);
INSERT INTO `vd_statistics` VALUES ('239', '66.249.82.168', null, '1535828118', null);
INSERT INTO `vd_statistics` VALUES ('240', '49.156.2.67', null, '1535857181', null);
INSERT INTO `vd_statistics` VALUES ('241', '49.156.2.67', null, '1535858029', null);
INSERT INTO `vd_statistics` VALUES ('242', '49.156.2.67', null, '1535858034', null);
INSERT INTO `vd_statistics` VALUES ('243', '49.156.2.67', null, '1535858086', null);
INSERT INTO `vd_statistics` VALUES ('244', '49.156.2.67', null, '1535858115', null);
INSERT INTO `vd_statistics` VALUES ('245', '49.156.2.67', null, '1535858142', null);
INSERT INTO `vd_statistics` VALUES ('246', '49.156.2.67', null, '1535858852', null);
INSERT INTO `vd_statistics` VALUES ('247', '49.156.2.67', null, '1535858886', null);
INSERT INTO `vd_statistics` VALUES ('248', '49.156.2.67', null, '1535858938', null);
INSERT INTO `vd_statistics` VALUES ('249', '49.156.2.67', null, '1535861362', null);
INSERT INTO `vd_statistics` VALUES ('250', '49.156.2.67', null, '1535861956', null);
INSERT INTO `vd_statistics` VALUES ('251', '49.156.2.76', null, '1535861994', null);
INSERT INTO `vd_statistics` VALUES ('252', '49.156.2.76', null, '1535862062', null);
INSERT INTO `vd_statistics` VALUES ('253', '49.156.2.67', null, '1535862133', null);
INSERT INTO `vd_statistics` VALUES ('254', '49.156.2.67', null, '1535862148', null);
INSERT INTO `vd_statistics` VALUES ('255', '117.20.116.102', null, '1535862164', null);
INSERT INTO `vd_statistics` VALUES ('256', '27.109.114.138', null, '1535862182', null);
INSERT INTO `vd_statistics` VALUES ('257', '49.156.2.67', null, '1535865958', null);
INSERT INTO `vd_statistics` VALUES ('258', '49.156.2.67', null, '1535865979', null);
INSERT INTO `vd_statistics` VALUES ('259', '138.68.29.214', null, '1535868155', null);
INSERT INTO `vd_statistics` VALUES ('260', '49.156.2.67', null, '1535869086', null);
INSERT INTO `vd_statistics` VALUES ('261', '49.156.2.67', null, '1535871922', null);
INSERT INTO `vd_statistics` VALUES ('262', '49.156.2.67', null, '1535872259', null);
INSERT INTO `vd_statistics` VALUES ('263', '106.2.232.28', null, '1535872329', null);
INSERT INTO `vd_statistics` VALUES ('264', '49.156.2.67', null, '1535872489', null);
INSERT INTO `vd_statistics` VALUES ('265', '49.156.2.67', null, '1535872528', null);
INSERT INTO `vd_statistics` VALUES ('266', '106.2.232.28', null, '1535873115', null);
INSERT INTO `vd_statistics` VALUES ('267', '49.156.2.67', null, '1535873743', null);
INSERT INTO `vd_statistics` VALUES ('268', '118.213.101.119', null, '1535873892', null);
INSERT INTO `vd_statistics` VALUES ('269', '58.100.92.215', null, '1535875093', null);
INSERT INTO `vd_statistics` VALUES ('270', '117.152.246.82', null, '1535875181', null);
INSERT INTO `vd_statistics` VALUES ('271', '117.172.54.140', null, '1535875206', null);
INSERT INTO `vd_statistics` VALUES ('272', '58.100.92.215', null, '1535875222', null);
INSERT INTO `vd_statistics` VALUES ('273', '117.152.246.82', null, '1535875308', null);
INSERT INTO `vd_statistics` VALUES ('274', '117.172.54.140', null, '1535875335', null);
INSERT INTO `vd_statistics` VALUES ('275', '117.152.246.82', null, '1535875372', null);
INSERT INTO `vd_statistics` VALUES ('276', '180.97.35.218', null, '1535875396', null);
INSERT INTO `vd_statistics` VALUES ('277', '61.129.6.225', null, '1535875418', null);
INSERT INTO `vd_statistics` VALUES ('278', '101.89.29.94', null, '1535875424', null);
INSERT INTO `vd_statistics` VALUES ('279', '117.152.246.82', null, '1535875453', null);
INSERT INTO `vd_statistics` VALUES ('280', '101.91.60.104', null, '1535875480', null);
INSERT INTO `vd_statistics` VALUES ('281', '61.151.178.166', null, '1535875486', null);
INSERT INTO `vd_statistics` VALUES ('282', '58.100.92.215', null, '1535875516', null);
INSERT INTO `vd_statistics` VALUES ('283', '58.100.92.215', null, '1535875529', null);
INSERT INTO `vd_statistics` VALUES ('284', '58.100.92.215', null, '1535875548', null);
INSERT INTO `vd_statistics` VALUES ('285', '58.100.92.215', null, '1535875569', null);
INSERT INTO `vd_statistics` VALUES ('286', '117.152.246.82', null, '1535875760', null);
INSERT INTO `vd_statistics` VALUES ('287', '110.18.247.161', null, '1535876188', null);
INSERT INTO `vd_statistics` VALUES ('288', '49.156.2.67', null, '1535876234', null);
INSERT INTO `vd_statistics` VALUES ('289', '49.156.2.67', null, '1535876252', null);
INSERT INTO `vd_statistics` VALUES ('290', '49.156.2.67', null, '1535876262', null);
INSERT INTO `vd_statistics` VALUES ('291', '66.220.149.24', null, '1535877423', null);
INSERT INTO `vd_statistics` VALUES ('292', '101.199.110.109', null, '1535877661', null);
INSERT INTO `vd_statistics` VALUES ('293', '180.163.220.61', null, '1535877690', null);
INSERT INTO `vd_statistics` VALUES ('294', '110.18.247.161', null, '1535878034', null);
INSERT INTO `vd_statistics` VALUES ('295', '49.156.2.67', null, '1535881600', null);
INSERT INTO `vd_statistics` VALUES ('296', '70.42.131.170', null, '1535882045', null);
INSERT INTO `vd_statistics` VALUES ('297', '49.156.2.67', null, '1535882102', null);
INSERT INTO `vd_statistics` VALUES ('298', '49.156.2.67', null, '1535882774', null);
INSERT INTO `vd_statistics` VALUES ('299', '180.163.220.66', null, '1535883152', null);
INSERT INTO `vd_statistics` VALUES ('300', '180.163.220.100', null, '1535883187', null);
INSERT INTO `vd_statistics` VALUES ('301', '64.74.215.1', null, '1535883672', null);
INSERT INTO `vd_statistics` VALUES ('302', '123.151.77.49', null, '1535884185', null);
INSERT INTO `vd_statistics` VALUES ('303', '49.156.2.67', null, '1535884231', null);
INSERT INTO `vd_statistics` VALUES ('304', '148.251.45.254', null, '1535886491', null);
INSERT INTO `vd_statistics` VALUES ('305', '91.103.66.202', null, '1535886529', null);
INSERT INTO `vd_statistics` VALUES ('306', '8.28.16.254', null, '1535886530', null);
INSERT INTO `vd_statistics` VALUES ('307', '91.103.66.202', null, '1535886530', null);
INSERT INTO `vd_statistics` VALUES ('308', '87.112.175.7', null, '1535886743', null);
INSERT INTO `vd_statistics` VALUES ('309', '49.156.2.67', null, '1535886864', null);
INSERT INTO `vd_statistics` VALUES ('310', '121.227.129.17', null, '1535888054', null);
INSERT INTO `vd_statistics` VALUES ('311', '121.227.129.17', null, '1535888415', null);
INSERT INTO `vd_statistics` VALUES ('312', '121.227.129.17', null, '1535888825', null);
INSERT INTO `vd_statistics` VALUES ('313', '49.156.2.67', null, '1535889395', null);
INSERT INTO `vd_statistics` VALUES ('314', '101.199.121.77', null, '1535889593', null);
INSERT INTO `vd_statistics` VALUES ('315', '42.236.10.106', null, '1535889603', null);
INSERT INTO `vd_statistics` VALUES ('316', '180.163.220.99', null, '1535889623', null);
INSERT INTO `vd_statistics` VALUES ('317', '101.199.110.108', null, '1535890011', null);
INSERT INTO `vd_statistics` VALUES ('318', '49.156.2.67', null, '1535890157', null);
INSERT INTO `vd_statistics` VALUES ('319', '49.156.2.67', null, '1535890180', null);
INSERT INTO `vd_statistics` VALUES ('320', '49.156.2.67', null, '1535890642', null);
INSERT INTO `vd_statistics` VALUES ('321', '49.156.2.67', null, '1535890680', null);
INSERT INTO `vd_statistics` VALUES ('322', '101.199.108.120', null, '1535890760', null);
INSERT INTO `vd_statistics` VALUES ('323', '49.156.2.67', null, '1535891612', null);
INSERT INTO `vd_statistics` VALUES ('324', '203.144.88.58', null, '1535892258', null);
INSERT INTO `vd_statistics` VALUES ('325', '49.156.2.67', null, '1535893342', null);
INSERT INTO `vd_statistics` VALUES ('326', '103.112.241.103', null, '1535893787', null);
INSERT INTO `vd_statistics` VALUES ('327', '101.89.239.232', null, '1535893847', null);
INSERT INTO `vd_statistics` VALUES ('328', '49.156.2.67', null, '1535893967', null);

-- ----------------------------
-- Table structure for vd_type
-- ----------------------------
DROP TABLE IF EXISTS `vd_type`;
CREATE TABLE `vd_type` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL COMMENT '类别名称',
  `sort` int(4) unsigned NOT NULL DEFAULT '1' COMMENT '排序',
  `create_time` int(32) DEFAULT NULL COMMENT '创建日期',
  `update_time` int(32) DEFAULT NULL COMMENT '更新时间',
  `deleted_time` int(32) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='类别表';

-- ----------------------------
-- Records of vd_type
-- ----------------------------
INSERT INTO `vd_type` VALUES ('9', '日韩', '1', '1535704242', '1535704242', null);
INSERT INTO `vd_type` VALUES ('10', '欧美', '2', '1535704262', '1535704262', null);
INSERT INTO `vd_type` VALUES ('11', '国产', '3', '1535704271', '1535704271', null);
INSERT INTO `vd_type` VALUES ('12', '偷拍', '4', '1535704279', '1535704279', null);
INSERT INTO `vd_type` VALUES ('13', '动漫', '5', '1535773201', '1535773201', null);
INSERT INTO `vd_type` VALUES ('14', '三级', '6', '1535773217', '1535773217', null);

-- ----------------------------
-- Table structure for vd_video
-- ----------------------------
DROP TABLE IF EXISTS `vd_video`;
CREATE TABLE `vd_video` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL COMMENT '视频地址',
  `img` text COMMENT '封面地址',
  `time` varchar(32) DEFAULT NULL COMMENT '视频播放时间',
  `title` varchar(255) DEFAULT NULL COMMENT '视频标题',
  `desc` text COMMENT '视频描述',
  `type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '视频类型（根据类型表来定）',
  `fabulous` int(16) NOT NULL DEFAULT '0' COMMENT '点赞',
  `step_on` int(16) NOT NULL DEFAULT '0' COMMENT '踩',
  `watch_count` int(32) NOT NULL DEFAULT '0' COMMENT '观看次数',
  `is_hd` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1-代表高清  0-代表不是高清',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '特别推荐',
  `create_time` int(32) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(32) DEFAULT NULL COMMENT '更新时间',
  `deleted_time` int(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='视频表';

-- ----------------------------
-- Records of vd_video
-- ----------------------------
INSERT INTO `vd_video` VALUES ('19', '/videos/rihan/1.mp4', '/uploads/images/20180901/487d4c3e8b8f73f4c70cbeefd200853e.jpg', '01:02:10', 'ド変态子持ちママととことんヤリまくる ド', '<p>演员：暧羽裸ゆめ</p><p>风格：[高清]pacopaco</p><p>大小：724.97 MB</p><p>介绍：122217_191-paco</p>', '9', '1', '1', '22', '1', '1', '1535704533', '1535789682', null);
INSERT INTO `vd_video` VALUES ('20', '/videos/rihan/2.mp4', '/uploads/images/20180901/a96c8d471fbaa4d9b30cf56f1c1f6c4c.jpg', '01:01:47', '中出しサンタ2018', '<p>类别：日本无码</p><p>演员：神田るな</p><p>风格：[高清]加勒比</p><p>大小：722.29 MB</p><p>介绍：122217-561-carib</p>', '9', '1', '0', '45', '1', '1', '1535705273', '1535789750', null);
INSERT INTO `vd_video` VALUES ('21', '/videos/toupai/FTM/1.mp4', '/uploads/images/20180902/8524759e704fae09266301db32ea23e9.jpg', '00:04:49', 'FTM1', '福利自己看', '12', '0', '0', '22', '0', '0', '1535716654', '1535890492', null);
INSERT INTO `vd_video` VALUES ('22', '/videos/toupai/FTM/2.mp4', '/uploads/images/20180902/bc552a992a0bc1ad111a31c40e5f7253.jpg', '00:04:48', 'FTM2', '<p>大小：8.85M</p>', '12', '0', '0', '2', '0', '0', '1535774461', '1535890604', null);
INSERT INTO `vd_video` VALUES ('23', '/videos/toupai/FTM/3.mp4', '/uploads/images/20180902/84a1261869541b5bcd759bd0b527f614.jpg', '00:04:48', 'FTM3', '大小：9.61M', '12', '0', '0', '3', '0', '0', '1535774521', '1535890619', null);
INSERT INTO `vd_video` VALUES ('24', '/videos/toupai/FTM/4.mp4', '/uploads/images/20180902/1fd401be6a831b50df96aae5f09064e5.jpg', '00:04:48', 'FTM4', '大小：13.2M', '12', '0', '0', '6', '0', '0', '1535774572', '1535890631', null);
INSERT INTO `vd_video` VALUES ('25', '/videos/guochan/njdxs/1.mp4', '/uploads/images/20180902/4d667d828c16407005d4b08192ac7f02.jpg', '00:04:06', '南京大学生1', '<p>风格：国产自拍</p><p>大小：9.18M</p>', '11', '1', '0', '4', '0', '0', '1535793644', '1535891529', null);
INSERT INTO `vd_video` VALUES ('26', '/videos/guochan/njdxs/2.mp4', '/uploads/images/20180902/2d0e73e277859e86efdd2403ae815537.jpg', '00:04:08', '南京大学生2', '<p>风格：国产自拍</p><p>大小：9.76M</p>', '11', '0', '0', '6', '0', '0', '1535793703', '1535891540', null);
INSERT INTO `vd_video` VALUES ('27', '/videos/guochan/njdxs/3.mp4', '/uploads/images/20180902/ea186cd75be7c56e009acf9501228961.jpg', '00:04:08', '南京大学生3', '<p>风格：国产自拍</p><p>大小：9.77M</p>', '11', '0', '0', '4', '0', '0', '1535793757', '1535891550', null);
INSERT INTO `vd_video` VALUES ('28', '/videos/guochan/njdxs/4.mp4', '/uploads/images/20180902/58cc9dbca4b21beac3a497d434b2fdac.jpg', '00:04:08', '南京大学生4', '<p>风格：国产自拍</p><p>大小：9.47M</p>', '11', '0', '0', '4', '0', '0', '1535793838', '1535891560', null);
INSERT INTO `vd_video` VALUES ('29', '/videos/guochan/njdxs/5.mp4', '/uploads/images/20180902/1af618cafc3cbeecdaba378694473aa6.jpg', '00:04:12', '南京大学生5', '<p>风格：国产自拍</p><p>大小：10.0M</p>', '11', '1', '0', '5', '0', '0', '1535793884', '1535891569', null);
INSERT INTO `vd_video` VALUES ('30', '/videos/rihan/dymjzk.mp4', '/uploads/images/20180902/b95686b80c52f7171521b63ee735681e.jpg', '01:12:14', '到姨妈家做客', '<p>字幕：【中文简字】</p><p>大小：169M</p>', '9', '0', '0', '8', '0', '0', '1535799618', '1535891243', null);
INSERT INTO `vd_video` VALUES ('32', '/videos/rihan/dskfxyz.mp4', '/uploads/images/20180902/d0607b915da0ad0e3c44e9a355c32037.jpg', '00:53:43', '独守空房小姨子', '<p>字幕：【中文简字】</p><p>大小：145MB</p>', '9', '0', '0', '18', '0', '1', '1535801669', '1535891259', null);
INSERT INTO `vd_video` VALUES ('31', '/videos/rihan/cjk.mp4', '/uploads/images/20180902/fefa9899f40d9113c3106b0d21b9b6e6.jpg', '00:36:32', '苍井空', '<p>字幕：【中文简字】</p><p>大小：62.0M</p>', '9', '0', '0', '9', '0', '0', '1535799882', '1535891229', null);
INSERT INTO `vd_video` VALUES ('33', '/videos/dongman/1.mp4', 'https://tu.169rr.com/javboxpic/playpic/1789.jpg', '00:13:04', '[日语简字有修] 武想少女队ぶれいど☆ブライダーズ THE ANIMATION', '<p>大小：105.20M</p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"140\" class=\"layui-table\"><tbody><tr height=\"20\">\n  <td height=\"20\" class=\"xl64\" width=\"140\">介绍：[日语简字修]\n  武想少女队ぶれいど☆ブライダーズ THE ANIMATION</td></tr></tbody></table>', '13', '0', '0', '1', '0', '0', '1535802797', '1535802810', null);
INSERT INTO `vd_video` VALUES ('34', '/videos/dongman/2.mp4', 'https://tu.169rr.com/javboxpic/playpic/1788.jpg', '00:16:35', '[日语简字有修] ラブビッチ～优しい女…～', '<p>大小：133.46M</p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"140\" class=\"layui-table\"><tbody><tr height=\"20\">\n  <td height=\"20\" class=\"xl66\" width=\"140\">介绍：[日语简字修]\n  ラブビッチ～优しい女…～</td></tr></tbody></table>', '13', '1', '0', '1', '0', '0', '1535802879', '1535802879', null);
INSERT INTO `vd_video` VALUES ('35', '/videos/dongman/3.mp4', 'https://tu.169rr.com/javboxpic/playpic/1787.jpg', '00:23:29', '[日语繁字有修] 新・圣ヤリマン学园援交日记 THE ANIMATION', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"140\" class=\"layui-table\"><tbody><tr height=\"20\">\n  <td height=\"20\" class=\"xl66\" width=\"140\">介绍：[日语繁字修]\n  新・圣ヤリマン学园援交日记 THE ANIMATION</td></tr></tbody></table>', '13', '0', '0', '1', '0', '0', '1535802929', '1535802929', null);
INSERT INTO `vd_video` VALUES ('36', '/videos/dongman/4.mp4', 'https://tu.169rr.com/javboxpic/playpic/1786.jpg', '00:13:57', '[日语简字无修] 雪夜一夜物语 第一夜 盗人', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"140\" class=\"layui-table\"><tbody><tr height=\"20\">\n  <td height=\"20\" class=\"xl66\" width=\"140\">介绍：[日语简字修]\n  雪夜一夜物语 第一夜 盗人</td></tr></tbody></table>', '13', '0', '0', '2', '0', '0', '1535802979', '1535802979', null);
INSERT INTO `vd_video` VALUES ('37', '/videos/oumei/171203-001.mp4', 'https://tu.169rr.com/javboxpic/playpic/3812.jpg', '00:25:39', 'Popping Candy＂s Cherry', '<p>大小：298.65M</p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"140\" class=\"layui-table\"><tbody><tr height=\"20\">\n  <td height=\"20\" class=\"xl63\" width=\"140\">介绍：171203-001</td></tr></tbody></table>', '10', '0', '0', '1', '1', '0', '1535804045', '1535804045', null);
INSERT INTO `vd_video` VALUES ('38', '/videos/oumei/171203-002.mp4', 'https://tu.169rr.com/javboxpic/playpic/3811.jpg', '00:24:59', 'BDSM Newbie Humiliated', '大小：292.22M', '10', '0', '0', '0', '1', '0', '1535804095', '1535804095', null);
INSERT INTO `vd_video` VALUES ('39', '/videos/oumei/171203-003.mp4', 'https://tu.169rr.com/javboxpic/playpic/3810.jpg', '00:12:58', 'Blow That Cock， Get That Job', '大小：151.63M', '10', '0', '0', '1', '1', '0', '1535804143', '1535804143', null);
INSERT INTO `vd_video` VALUES ('40', '/videos/oumei/171203-004.mp4', 'https://tu.169rr.com/javboxpic/playpic/3809.jpg', '00:17:05', 'Naughty For You', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"140\" class=\"layui-table\"><tbody><tr height=\"20\">\n  <td height=\"20\" class=\"xl65\" width=\"140\">大小：198.67\n  MB</td></tr></tbody></table>', '10', '0', '0', '4', '1', '1', '1535804184', '1535804184', null);
INSERT INTO `vd_video` VALUES ('41', '/videos/guochan/dxslcb.mp4', '/uploads/images/20180902/c7713eaf6e64ac82c8499103506dc24d.jpg', '00:56:54', '大学生绿茶婊', '大小：458M', '11', '0', '0', '3', '0', '0', '1535806325', '1535891423', null);
INSERT INTO `vd_video` VALUES ('42', '/videos/oumei/wzsnpc.mp4', '/uploads/images/20180902/c75010cb8187bd8b854f0480c33b0fd0.jpg', '00:29:52', '维族少女破处', '大小：107M', '10', '0', '0', '1', '0', '0', '1535806448', '1535892164', null);
INSERT INTO `vd_video` VALUES ('43', '/videos/sanji/1.mp4', 'https://tu.169rr.com/javboxpic/playpic/823.jpg', '01:16:31', '(中文字幕)顶楼的偷窃狂 江戸川乱歩猟奇馆 屋根里の散歩者  ', '<p><font size=\"3\">大小：608.76MB<br></font><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"140\" class=\"layui-table\"><tbody><tr height=\"20\">\n  <td height=\"20\" class=\"xl64\" width=\"140\"><p>演员：&nbsp;宫下顺子</p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"166\" class=\"layui-table\"></table></td></tr></tbody></table></p><tbody><tr height=\"20\">\n  <td height=\"20\" class=\"xl65\" width=\"166\">介绍：顶楼的偷窃狂\n  江戸川乱歩猟奇馆 屋根里の散歩者 &nbsp;</td></tr></tbody><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"140\" class=\"layui-table\"><tbody><tr height=\"20\"><td height=\"20\" class=\"xl64\" width=\"140\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"166\" class=\"layui-table\"></table></td></tr></tbody></table>', '14', '0', '0', '1', '0', '0', '1535807298', '1535807298', null);
INSERT INTO `vd_video` VALUES ('44', '/videos/sanji/2.mp4', 'https://tu.169rr.com/javboxpic/playpic/822.jpg', '01:02:55', '(中文字幕)性爱体位暖春宫 セックスの悩み、体位で解决! ~カーマスートラから日本の48手まで~', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"112\" class=\"layui-table\"><tbody><tr height=\"20\">\n  <td height=\"20\" class=\"xl65\" width=\"112\"><p>大小：487.93M</p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"140\" class=\"layui-table\"><tbody><tr height=\"20\">\n  <td height=\"20\" class=\"xl65\" width=\"140\"><p>演员：&nbsp;樱井ゆうこ</p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"310\" class=\"layui-table\"><tbody><tr height=\"20\">\n  <td height=\"20\" class=\"xl65\" width=\"310\">介绍：性爱体位暖春宫\n  セックスの悩み、体位で解决! ~カーマスートラから日本の48手まで~</td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table>', '14', '0', '0', '0', '0', '0', '1535807351', '1535807351', null);
INSERT INTO `vd_video` VALUES ('45', '/videos/sanji/3.mp4', 'https://tu.169rr.com/javboxpic/playpic/821.jpg', '02:09:22', '(中文字幕)爱恋 Love  ', '<p><font size=\"3\">大小：1014.55MB</font></p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"140\" class=\"layui-table\"><tbody><tr height=\"20\">\n  <td height=\"20\" class=\"xl65\" width=\"140\"><p>演员：&nbsp;卡尔·格洛斯曼</p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"310\" class=\"layui-table\"><tbody><tr height=\"20\">\n  <td height=\"20\" class=\"xl65\" width=\"310\">介绍：爱恋\n  Love&nbsp;&nbsp;</td></tr></tbody></table></td></tr></tbody></table>', '14', '0', '0', '1', '0', '0', '1535807437', '1535807437', null);
INSERT INTO `vd_video` VALUES ('46', '/videos/sanji/4.mp4', 'https://tu.169rr.com/javboxpic/playpic/820.jpg', '01:25:58', '(中文字幕)红色假期 黑色婚礼 赤いバカンス、黒いウェディング', '<p>大小：666.93MB</p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"140\" class=\"layui-table\"><tbody><tr height=\"20\">\n  <td height=\"20\" class=\"xl65\" width=\"140\"><p>演员：チョ</p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"310\" class=\"layui-table\"><tbody><tr height=\"20\">\n  <td height=\"20\" class=\"xl65\" width=\"310\">介绍：红色假期\n  黑色婚礼 赤いバカンス、黒いウェディング</td></tr></tbody></table></td></tr></tbody></table>', '14', '0', '0', '2', '0', '0', '1535807487', '1535807487', null);
INSERT INTO `vd_video` VALUES ('47', '/videos/dongman/5.mp4', 'https://tu.169rr.com/javboxpic/playpic/1791.jpg', '00:30:11', '[日语简字无修] もみじ－「ワタシ…人形じゃありません…」第2巻 色づきはじめた若叶たち テレカなし', '<p>大小：242.99MB</p><p><font size=\"3\">介绍：[日语简字无修]&nbsp;</font></p><p><font size=\"3\">もみじ－「ワタシ…人形じゃありません…」</font></p><p><font size=\"3\">第2巻 色づきはじめた若叶たち テレカなし</font></p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"140\" class=\"layui-table\"><tbody><tr height=\"20\"></tr></tbody></table>', '13', '0', '0', '0', '0', '0', '1535808544', '1535808865', null);
INSERT INTO `vd_video` VALUES ('48', '/videos/dongman/6.mp4', 'https://tu.169rr.com/javboxpic/playpic/1790.jpg', '00:29:58', '[日语简字无修] もみじ－「ワタシ…人形じゃありません…」第3巻 芽吹きはじめた若叶たち テレカ付き', '<p>大小：241.29MB</p><p>介绍：[日语简字无修] もみじ－「ワタシ…人形じゃありません…」第3巻 芽吹きはじめた若叶たち テレカ付き</p>', '13', '0', '0', '0', '0', '0', '1535808610', '1535808875', null);
INSERT INTO `vd_video` VALUES ('49', '/videos/dongman/7.mp4', 'https://tu.169rr.com/javboxpic/playpic/1793.jpg', '00:15:51', '[日语繁字有修] OVA妹ビッチに榨られたい ＃2 妹は生オナホ ～サヤカはお兄ちゃん専用性玩具～', '<p>大小：127.50MB</p><p>介绍：[日语繁字有修] OVA妹ビッチに榨られたい ＃2 妹は生オナホ ～サヤカはお兄ちゃん専用性玩具～</p>', '13', '0', '0', '0', '0', '0', '1535808734', '1535808885', null);
INSERT INTO `vd_video` VALUES ('50', '/videos/dongman/8.mp4', 'https://tu.169rr.com/javboxpic/playpic/1792.jpg', '00:30:15', '[日语简字无修] もみじ－「ワタシ…人形じゃありません…」第1巻 季节はずれの落叶 テレカ付', '<p>大小：243.49MB</p><p>介绍：[日语简字无修] もみじ－「ワタシ…人形じゃありません…」第1巻 季节はずれの落叶 テレカ付</p><div><br></div>', '13', '0', '0', '0', '0', '0', '1535808955', '1535808955', null);
INSERT INTO `vd_video` VALUES ('51', '/videos/dongman/9.mp4', 'https://tu.169rr.com/javboxpic/playpic/1795.jpg', '00:20:45', '[日语繁字有修] 転生剣奴の子作り闘技场（ハーレムコロッセオ） ケモ耳ちっぱい?ライティウス～ケダモノ迫るマイクロボディ', '<p>大小：166.97MB</p><p>介绍：[日语繁字有修] 転生剣奴の子作り闘技场（ハーレムコロッセオ） ケモ耳ちっぱい?ライティウス～ケダモノ迫るマイクロボディ</p><div><br></div>', '13', '0', '0', '3', '0', '0', '1535809005', '1535809025', null);
INSERT INTO `vd_video` VALUES ('52', '/videos/dongman/10.mp4', 'https://tu.169rr.com/javboxpic/playpic/1794.jpg', '00:30:08', '[日语简字无修] もみじ－「ワタシ…人形じゃありません…」第4巻 落つることのないもみじ テレカ付', '<p>大小：242.52MB</p><p>介绍：[日语简字无修] もみじ－「ワタシ…人形じゃありません…」第4巻 落つることのないもみじ テレカ付</p><div><br></div>', '13', '0', '0', '0', '0', '0', '1535809093', '1535809093', null);
INSERT INTO `vd_video` VALUES ('53', '/videos/dongman/11.mp4', 'https://tu.169rr.com/javboxpic/playpic/1797.jpg', '00:28:47', '[日语繁字有修] 龙堂寺士门の淫谋 前编 性奴隶调教', '<p>大小：231.60MB</p><p>介绍：[日语繁字有修] 龙堂寺士门の淫谋 前编 性奴隶调教</p><div><br></div>', '13', '0', '0', '0', '0', '0', '1535809596', '1535809596', null);
INSERT INTO `vd_video` VALUES ('54', '/videos/dongman/12.mp4', 'https://tu.169rr.com/javboxpic/playpic/1796.jpg', '00:26:05', '[日语繁字有修] は～とふるママン THE ANIMATION', '<p>大小：209.97MB</p><p>介绍：[日语繁字有修] は～とふるママン THE ANIMATION</p><div><br></div>', '13', '0', '0', '1', '0', '0', '1535809700', '1535809700', null);
INSERT INTO `vd_video` VALUES ('55', '/videos/dongman/13.mp4', 'https://tu.169rr.com/javboxpic/playpic/1799.jpg', '00:15:33', '[日语繁字有修] 気に入った膣にいきなり中出しOKなリゾート岛 part1', '<p>大小：125.16MB</p><p>介绍：[日语繁字有修] 気に入った膣にいきなり中出しOKなリゾート岛 part1</p><div><br></div>', '13', '0', '0', '1', '0', '0', '1535810205', '1535810205', null);
INSERT INTO `vd_video` VALUES ('56', '/videos/dongman/14.mp4', 'https://tu.169rr.com/javboxpic/playpic/1798.jpg', '00:22:50', '[日语简字有修] 一求乳魂 前编［ごばん］', '<p>大小：183.73MB</p><p>介绍：[日语简字有修] 一求乳魂 前编［ごばん］</p><div><br></div>', '13', '0', '0', '1', '0', '0', '1535810284', '1535810284', null);
INSERT INTO `vd_video` VALUES ('57', '/videos/dongman/15.mp4', 'https://tu.169rr.com/javboxpic/playpic/1801.jpg', '00:15:50', '[日语简字有修] さきゅばみすと?すとーりー ～のんひゅーまあんらいふ～ THE ANIMATION', '<p>大小：127.49MB</p><p>介绍：[日语简字有修] さきゅばみすと?すとーりー ～のんひゅーまあんらいふ～ THE ANIMATION</p><div><br></div>', '13', '1', '0', '5', '0', '0', '1535810344', '1535810344', null);
INSERT INTO `vd_video` VALUES ('58', '/videos/rihan/1_1.mp4', 'https://tu.169rr.com/javboxpic/playpic/7816.jpg', '00:26:26', '期间限定配信 圣夜に突然やってきたスレンダーエロ可爱サンタ Merry Christmas Vol1 Tera', '<p>大小：305.25MB</p><p>演员：テラ</p><div><br></div><p><br></p>', '9', '0', '0', '0', '1', '0', '1535811069', '1535811187', null);
INSERT INTO `vd_video` VALUES ('59', '/videos/rihan/2_1.mp4', 'https://tu.169rr.com/javboxpic/playpic/7815.jpg', '00:30:57', '东热激情 串刺しぶち込み特集 part1', '<p>大小：364.01MB</p><p>演员：森高七海|高桥亜弥|结城花梨|西川彩|小仓优</p>', '9', '0', '0', '3', '1', '0', '1535811150', '1535811150', null);
INSERT INTO `vd_video` VALUES ('60', '/videos/toupai/1.mp4', 'https://tu.169rr.com/javboxpic/playpic/2672.jpg', '00:40:05', '大学生情侣酒店开房真搞不懂这美女怎么会被这猥琐四眼田鸡泡到108P高清无水印', '<p>大小：322.51MB</p><p>介绍：大学生情侣酒店开房真搞不懂这美女怎么会被这猥琐四眼田鸡泡到108P高清无水印<br><br></p>', '12', '0', '0', '3', '1', '0', '1535858246', '1535858246', null);
INSERT INTO `vd_video` VALUES ('63', '/videos/guochan/gzbm.mp4', '/uploads/images/20180902/f8251609ce1a7ca5f0037f6fd723d624.jpg', '00:51:39', '广州保姆', '大小：233MB', '11', '0', '0', '3', '0', '0', '1535863560', '1535891407', null);
INSERT INTO `vd_video` VALUES ('64', '/videos/oumei/5.mp4', 'https://tu.169rr.com/javboxpic/playpic/3814.jpg', '00:38:16', 'Babes In Toyland', '大小：447.36MB', '10', '0', '0', '4', '1', '0', '1535872184', '1535872184', null);
INSERT INTO `vd_video` VALUES ('65', '/videos/oumei/6.mp4', 'https://tu.169rr.com/javboxpic/playpic/3813.jpg', '00:29:53', 'Busty Boss Fucked Hard', '大小：349.51MB', '10', '0', '0', '2', '1', '0', '1535872238', '1535872238', null);
INSERT INTO `vd_video` VALUES ('62', '/videos/toupai/2.mp4', 'https://tu.169rr.com/javboxpic/playpic/2671.jpg', '00:06:25', '大学时暗恋的美女同学多年后再见面时被我带到宾馆啪啪，看见她吃鸡巴的样子，忍不住狠狠的干她！', '<p>大小：51.76MB</p><p>介绍：大学时暗恋的美女同学多年后再见面时被我带到宾馆啪啪，看见她吃鸡巴的样子，忍不住狠狠的干她！<br><br></p>', '12', '0', '0', '5', '0', '0', '1535858428', '1535858428', null);
INSERT INTO `vd_video` VALUES ('66', '/videos/rihan/negybb.mp4', '/uploads/images/20180902/a0ae42d03065a6174cc4dbbbbd8bebd7.jpg', '01:01:20', '女儿勾引爸爸', '大小：216MB', '9', '0', '0', '1', '0', '0', '1535891908', '1535891908', null);
