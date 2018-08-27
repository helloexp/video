/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : video

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-08-27 20:41:47
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='后台管理';

-- ----------------------------
-- Records of vd_admin
-- ----------------------------
INSERT INTO `vd_admin` VALUES ('1', 'admin', 'admin', '127.0.0.1', '0', null, null, null);

-- ----------------------------
-- Table structure for vd_slide
-- ----------------------------
DROP TABLE IF EXISTS `vd_slide`;
CREATE TABLE `vd_slide` (
  `id` int(8) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `create_time` int(32) DEFAULT NULL,
  `deleted_time` int(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='轮播图管理';

-- ----------------------------
-- Records of vd_slide
-- ----------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='数据统计表';

-- ----------------------------
-- Records of vd_statistics
-- ----------------------------
INSERT INTO `vd_statistics` VALUES ('1', '127.0.0.1', null, '1535271714', null);
INSERT INTO `vd_statistics` VALUES ('2', '127.0.0.1', null, '1535271714', null);
INSERT INTO `vd_statistics` VALUES ('3', '127.0.0.1', null, '1535271714', null);
INSERT INTO `vd_statistics` VALUES ('4', '127.0.0.1', null, '1514736000', null);
INSERT INTO `vd_statistics` VALUES ('5', '127.0.0.1', null, '1517414400', null);
INSERT INTO `vd_statistics` VALUES ('6', '127.0.0.1', null, '1535271714', null);
INSERT INTO `vd_statistics` VALUES ('7', '127.0.0.1', null, '1533457314', null);
INSERT INTO `vd_statistics` VALUES ('8', '127.0.0.1', null, '1533457314', null);
INSERT INTO `vd_statistics` VALUES ('9', '127.0.0.1', null, '1530778914', null);
INSERT INTO `vd_statistics` VALUES ('10', '127.0.0.1', null, '1499242914', null);
INSERT INTO `vd_statistics` VALUES ('11', '127.0.0.1', null, '1530778914', null);

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='类别表';

-- ----------------------------
-- Records of vd_type
-- ----------------------------
INSERT INTO `vd_type` VALUES ('1', '欧美', '1', '1535167724', '1535167724', null);
INSERT INTO `vd_type` VALUES ('2', '日韩', '2', '1535167724', '1535167724', null);
INSERT INTO `vd_type` VALUES ('3', '国产', '3', '1535167724', '1535275865', null);
INSERT INTO `vd_type` VALUES ('4', '三级', '4', '1535167724', '1535167724', null);
INSERT INTO `vd_type` VALUES ('5', '动漫', '5', '1535167724', '1535270231', null);
INSERT INTO `vd_type` VALUES ('6', '偷拍', '6', '1535167724', '1535270193', null);
INSERT INTO `vd_type` VALUES ('7', '自拍', '8', '1535268481', '1535268720', null);
INSERT INTO `vd_type` VALUES ('8', '无码', '7', '1535270150', '1535270283', '1535270283');

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='视频表';

-- ----------------------------
-- Records of vd_video
-- ----------------------------
INSERT INTO `vd_video` VALUES ('1', 'http://jx.618g.com/?url=http://vd3.bdstatic.com/mda-ihj3wc4bt4bxncx5/mda-ihj3wc4bt4bxncx5.mp4', 'http://www.dilidili.wang/uploads/allimg/180820/290_0131378051.jpg', '24:00', '进击的巨人进击的巨人进击的巨人', '复仇者联盟进击的巨人进击的巨人进击的巨人进击的巨人', '1', '17', '3', '1521', '0', '0', '1535202193', '1535359053', null);
INSERT INTO `vd_video` VALUES ('2', 'http://vd3.bdstatic.com/mda-ihq22gagk8hegphj/mda-ihq22gagk8hegphj.mp4', 'http://www.dilidili.wang/uploads/allimg/180825/290_1007436031.jpg', '24:58', '碧蓝之海', '碧蓝之海', '2', '1', '0', '12', '1', '0', '1535202193', '1535359024', null);
INSERT INTO `vd_video` VALUES ('3', 'http://player.youku.com/player.php/sid/XMzc4NjMxNTQ5Ng==/v.swf', 'http://www.dilidili.wang/uploads/allimg/180825/290_0117208801.jpg', '24:00', '我的英雄学院', '我的英雄学院', '1', '0', '0', '13', '1', '0', '1535202193', '1535359024', null);
INSERT INTO `vd_video` VALUES ('4', 'http://99hd.net/iframe/ckplayer6.7/ckplayer/ckplayer.swf', 'http://www.dilidili.wang/uploads/allimg/180825/290_1703357511.jpg', '24:52', '博人传', '博人传进击的巨人', '1', '124', '0', '0', '0', '0', '1535202193', '1535357275', null);
INSERT INTO `vd_video` VALUES ('5', 'blob:https://www.youtube.com/4f61f700-6e69-4761-9b46-a9d90998005a', 'https://i.ytimg.com/vi_webp/YE7VzlLtp-4/maxresdefault.webp', '24:21', '这是一个标题', '这是一段描述', '1', '26', '10', '125', '1', '0', '1535202193', '1535357212', null);
INSERT INTO `vd_video` VALUES ('6', 'https://gz189cloud2.oos-gz.ctyunapi.cn/295fb2cf-5722-48f9-baed-bead8c7c6209?x-amz-UFID=8139732211447451&x-amz-FSIZE=1903552074&Expires=1535202895&x-amz-UID=519993859&response-content-disposition=attachment%3Bfilename%3D%22%C3%A5%C2%A4%C2%8D%C3%A4%C2%BB%C2%87%C3%A8%C2%80%C2%85%C3%A8%C2%81%C2%94%C3%A7%C2%9B%C2%9F3%22&AWSAccessKeyId=6667aad7f6576995b9ae&x-amz-CLOUDTYPEIN=PERSON&Signature=7KozkGCdky6CQXTP4koMPHqoxZk%3D', 'http://www.dilidili.wang/uploads/allimg/180824/290_2038302201.jpg', '78:45', '复仇者联盟', '复仇者联盟3进击的巨人', '1', '0', '0', '44', '0', '0', '1535202193', null, null);
INSERT INTO `vd_video` VALUES ('7', 'https://gz189cloud2.oos-gz.ctyunapi.cn/295fb2cf-5722-48f9-baed-bead8c7c6209?x-amz-UFID=8139732211447451&x-amz-FSIZE=1903552074&Expires=1535202895&x-amz-UID=519993859&response-content-disposition=attachment%3Bfilename%3D%22%C3%A5%C2%A4%C2%8D%C3%A4%C2%BB%C2%87%C3%A8%C2%80%C2%85%C3%A8%C2%81%C2%94%C3%A7%C2%9B%C2%9F3%22&AWSAccessKeyId=6667aad7f6576995b9ae&x-amz-CLOUDTYPEIN=PERSON&Signature=7KozkGCdky6CQXTP4koMPHqoxZk%3D', 'http://www.dilidili.wang/uploads/allimg/180824/290_2039183861.jpg', '87:11', '复仇者联盟', '复仇者联盟进击的巨人', '1', '12', '0', '11', '1', '0', '1530202193', null, null);
INSERT INTO `vd_video` VALUES ('8', 'https://gz189cloud2.oos-gz.ctyunapi.cn/295fb2cf-5722-48f9-baed-bead8c7c6209?x-amz-UFID=8139732211447451&x-amz-FSIZE=1903552074&Expires=1535202895&x-amz-UID=519993859&response-content-disposition=attachment%3Bfilename%3D%22%C3%A5%C2%A4%C2%8D%C3%A4%C2%BB%C2%87%C3%A8%C2%80%C2%85%C3%A8%C2%81%C2%94%C3%A7%C2%9B%C2%9F3%22&AWSAccessKeyId=6667aad7f6576995b9ae&x-amz-CLOUDTYPEIN=PERSON&Signature=7KozkGCdky6CQXTP4koMPHqoxZk%3D', 'http://www.dilidili.wang/uploads/allimg/180825/290_1715199001.jpg', '87:12', '复仇者联盟', '复仇者联盟进击的巨人进击的巨人进击的巨人进击的巨人', '1', '0', '0', '0', '0', '0', '1535202193', '1535359053', null);
INSERT INTO `vd_video` VALUES ('9', 'https://gz189cloud2.oos-gz.ctyunapi.cn/295fb2cf-5722-48f9-baed-bead8c7c6209?x-amz-UFID=8139732211447451&x-amz-FSIZE=1903552074&Expires=1535202895&x-amz-UID=519993859&response-content-disposition=attachment%3Bfilename%3D%22%C3%A5%C2%A4%C2%8D%C3%A4%C2%BB%C2%87%C3%A8%C2%80%C2%85%C3%A8%C2%81%C2%94%C3%A7%C2%9B%C2%9F3%22&AWSAccessKeyId=6667aad7f6576995b9ae&x-amz-CLOUDTYPEIN=PERSON&Signature=7KozkGCdky6CQXTP4koMPHqoxZk%3D', 'http://www.dilidili.wang/uploads/allimg/180820/290_0131378051.jpg', '87:10', '复仇者联盟', '复仇者联盟进击的巨人进击的巨人进击的巨人进击的巨人', '1', '0', '0', '1224', '1', '0', '1535202199', '1535359053', null);
INSERT INTO `vd_video` VALUES ('10', 'https://gz189cloud2.oos-gz.ctyunapi.cn/295fb2cf-5722-48f9-baed-bead8c7c6209?x-amz-UFID=8139732211447451&x-amz-FSIZE=1903552074&Expires=1535202895&x-amz-UID=519993859&response-content-disposition=attachment%3Bfilename%3D%22%C3%A5%C2%A4%C2%8D%C3%A4%C2%BB%C2%87%C3%A8%C2%80%C2%85%C3%A8%C2%81%C2%94%C3%A7%C2%9B%C2%9F3%22&AWSAccessKeyId=6667aad7f6576995b9ae&x-amz-CLOUDTYPEIN=PERSON&Signature=7KozkGCdky6CQXTP4koMPHqoxZk%3D', 'http://www.dilidili.wang/uploads/allimg/180825/290_1703357511.jpg', '87:41', '复仇者联盟', '复仇者联盟进击的巨人进击的巨人进击的巨人进击的巨人', '1', '0', '0', '0', '0', '0', '1535201193', null, null);
