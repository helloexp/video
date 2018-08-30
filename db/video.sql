/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : video

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-08-30 13:30:13
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
INSERT INTO `vd_admin` VALUES ('1', 'admin', '68be2bae8c7710482a5d2f1aa1fc5cbe', '::1', '0', '1535598221', null, null);

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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='轮播图管理';

-- ----------------------------
-- Records of vd_slider
-- ----------------------------
INSERT INTO `vd_slider` VALUES ('13', '/uploads/images\\20180829\\4d8cdc8a89d815537c07ef880592da62.png', '1', 'http://www.baidu.com', '1535511542', null);
INSERT INTO `vd_slider` VALUES ('14', '/uploads/images\\20180829\\3b75307663109f8cf1595e86d74fdd6e.png', '2', 'http://www.baidu.com', '1535511555', null);

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
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='数据统计表';

-- ----------------------------
-- Records of vd_statistics
-- ----------------------------
INSERT INTO `vd_statistics` VALUES ('1', '127.0.0.1', null, '1535271714', null);
INSERT INTO `vd_statistics` VALUES ('2', '127.0.0.1', null, '1535271714', null);
INSERT INTO `vd_statistics` VALUES ('3', '127.0.0.1', null, '1535271714', null);
INSERT INTO `vd_statistics` VALUES ('4', '192.168.0.2', null, '1514736000', null);
INSERT INTO `vd_statistics` VALUES ('5', '192.168.1.2', null, '1517414400', null);
INSERT INTO `vd_statistics` VALUES ('6', '192.168.1.2', null, '1535271714', null);
INSERT INTO `vd_statistics` VALUES ('7', '127.0.0.1', null, '1533457314', null);
INSERT INTO `vd_statistics` VALUES ('8', '127.0.0.1', null, '1533457314', null);
INSERT INTO `vd_statistics` VALUES ('9', '127.0.0.1', null, '1530778914', null);
INSERT INTO `vd_statistics` VALUES ('10', '127.0.0.1', null, '1499242914', null);
INSERT INTO `vd_statistics` VALUES ('11', '127.0.0.1', null, '1530778914', null);
INSERT INTO `vd_statistics` VALUES ('12', '::1', null, '1535535086', null);
INSERT INTO `vd_statistics` VALUES ('13', '192.168.0.135', null, '1535535115', null);
INSERT INTO `vd_statistics` VALUES ('14', '192.168.0.135', null, '1535535209', null);
INSERT INTO `vd_statistics` VALUES ('15', '::1', null, '1535551881', null);
INSERT INTO `vd_statistics` VALUES ('16', '::1', null, '1535551894', null);
INSERT INTO `vd_statistics` VALUES ('17', '::1', null, '1535603850', null);
INSERT INTO `vd_statistics` VALUES ('18', '::1', null, '1535603862', null);
INSERT INTO `vd_statistics` VALUES ('19', '::1', null, '1535603869', null);
INSERT INTO `vd_statistics` VALUES ('20', '::1', null, '1535606751', null);

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
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='视频表';

-- ----------------------------
-- Records of vd_video
-- ----------------------------
INSERT INTO `vd_video` VALUES ('1', 'http://www.259ss.com//js/player/HLSplayer.swf?autostart=false&v=1.5', 'http://www.dilidili.wang/uploads/allimg/180820/290_01313780511.jpg', '24:00', '进击的巨人进击的巨人进击的巨人', '<p>复仇者联盟进击的巨人进击的巨人进击的巨人进击的巨人</p><p>我只是一个标题yes</p><p>还有什么不懂得</p><p>什么都不懂啊</p><p>资源来几部</p><p>借一部说话</p>', '1', '18', '4', '1522', '0', '1', '1535202193', '1535428231', null);
INSERT INTO `vd_video` VALUES ('2', 'http://vd3.bdstatic.com/mda-ihq22gagk8hegphj/mda-ihq22gagk8hegphj.mp4', 'http://www.dilidili.wang/uploads/allimg/180825/290_1007436031.jpg', '24:58', '碧蓝之海', '碧蓝之海', '2', '1', '0', '12', '1', '0', '1535202193', '1535359024', null);
INSERT INTO `vd_video` VALUES ('3', 'http://player.youku.com/player.php/sid/XMzc4NjMxNTQ5Ng==/v.swf', 'http://www.dilidili.wang/uploads/allimg/180825/290_0117208801.jpg', '24:00', '我的英雄学院', '我的英雄学院', '1', '0', '0', '13', '1', '1', '1535202193', '1535359024', null);
INSERT INTO `vd_video` VALUES ('4', 'http://www.w3school.com.cn/example/html5/mov_bbb.mp4', 'http://www.dilidili.wang/uploads/allimg/180825/290_1703357511.jpg', '24:52', '博人传', '博人传进击的巨人', '1', '124', '1', '0', '0', '0', '1535202193', '1535357275', null);
INSERT INTO `vd_video` VALUES ('5', 'https://www.youtube.com/4f61f700-6e69-4761-9b46-a9d90998005a', 'https://i.ytimg.com/vi_webp/YE7VzlLtp-4/maxresdefault.webp', '24:21', '这是一个标题', '这是一段描述', '1', '26', '12', '125', '1', '1', '1535202193', '1535377934', null);
INSERT INTO `vd_video` VALUES ('6', 'https://gz189cloud2.oos-gz.ctyunapi.cn/295fb2cf-5722-48f9-baed-bead8c7c6209?x-amz-UFID=8139732211447451&x-amz-FSIZE=1903552074&Expires=1535202895&x-amz-UID=519993859&response-content-disposition=attachment%3Bfilename%3D%22%C3%A5%C2%A4%C2%8D%C3%A4%C2%BB%C2%87%C3%A8%C2%80%C2%85%C3%A8%C2%81%C2%94%C3%A7%C2%9B%C2%9F3%22&AWSAccessKeyId=6667aad7f6576995b9ae&x-amz-CLOUDTYPEIN=PERSON&Signature=7KozkGCdky6CQXTP4koMPHqoxZk%3D', 'http://www.dilidili.wang/uploads/allimg/180824/290_2038302201.jpg', '78:45', '复仇者联盟', '复仇者联盟3进击的巨人', '1', '1', '0', '44', '1', '0', '1535202193', '1535376469', null);
INSERT INTO `vd_video` VALUES ('7', 'https://gz189cloud2.oos-gz.ctyunapi.cn/295fb2cf-5722-48f9-baed-bead8c7c6209?x-amz-UFID=8139732211447451&x-amz-FSIZE=1903552074&Expires=1535202895&x-amz-UID=519993859&response-content-disposition=attachment%3Bfilename%3D%22%C3%A5%C2%A4%C2%8D%C3%A4%C2%BB%C2%87%C3%A8%C2%80%C2%85%C3%A8%C2%81%C2%94%C3%A7%C2%9B%C2%9F3%22&AWSAccessKeyId=6667aad7f6576995b9ae&x-amz-CLOUDTYPEIN=PERSON&Signature=7KozkGCdky6CQXTP4koMPHqoxZk%3D', 'http://www.dilidili.wang/uploads/allimg/180824/290_2039183861.jpg', '87:11', '复仇者联盟', '复仇者联盟进击的巨人', '1', '12', '1', '11', '1', '0', '1530202193', null, null);
INSERT INTO `vd_video` VALUES ('8', 'https://gz189cloud2.oos-gz.ctyunapi.cn/295fb2cf-5722-48f9-baed-bead8c7c6209?x-amz-UFID=8139732211447451&x-amz-FSIZE=1903552074&Expires=1535202895&x-amz-UID=519993859&response-content-disposition=attachment%3Bfilename%3D%22%C3%A5%C2%A4%C2%8D%C3%A4%C2%BB%C2%87%C3%A8%C2%80%C2%85%C3%A8%C2%81%C2%94%C3%A7%C2%9B%C2%9F3%22&AWSAccessKeyId=6667aad7f6576995b9ae&x-amz-CLOUDTYPEIN=PERSON&Signature=7KozkGCdky6CQXTP4koMPHqoxZk%3D', 'http://www.dilidili.wang/uploads/allimg/180825/290_1715199001.jpg', '87:12', '复仇者联盟', '复仇者联盟进击的巨人进击的巨人进击的巨人进击的巨人', '1', '0', '0', '0', '0', '1', '1535202193', '1535359053', null);
INSERT INTO `vd_video` VALUES ('9', 'https://gz189cloud2.oos-gz.ctyunapi.cn/295fb2cf-5722-48f9-baed-bead8c7c6209?x-amz-UFID=8139732211447451&x-amz-FSIZE=1903552074&Expires=1535202895&x-amz-UID=519993859&response-content-disposition=attachment%3Bfilename%3D%22%C3%A5%C2%A4%C2%8D%C3%A4%C2%BB%C2%87%C3%A8%C2%80%C2%85%C3%A8%C2%81%C2%94%C3%A7%C2%9B%C2%9F3%22&AWSAccessKeyId=6667aad7f6576995b9ae&x-amz-CLOUDTYPEIN=PERSON&Signature=7KozkGCdky6CQXTP4koMPHqoxZk%3D', 'http://www.dilidili.wang/uploads/allimg/180820/290_0131378051.jpg', '87:10', '复仇者联盟', '复仇者联盟进击的巨人进击的巨人进击的巨人进击的巨人', '1', '0', '0', '1224', '1', '0', '1535202199', '1535359053', null);
INSERT INTO `vd_video` VALUES ('10', 'https://gz189cloud2.oos-gz.ctyunapi.cn/295fb2cf-5722-48f9-baed-bead8c7c6209?x-amz-UFID=8139732211447451&x-amz-FSIZE=1903552074&Expires=1535202895&x-amz-UID=519993859&response-content-disposition=attachment%3Bfilename%3D%22%C3%A5%C2%A4%C2%8D%C3%A4%C2%BB%C2%87%C3%A8%C2%80%C2%85%C3%A8%C2%81%C2%94%C3%A7%C2%9B%C2%9F3%22&AWSAccessKeyId=6667aad7f6576995b9ae&x-amz-CLOUDTYPEIN=PERSON&Signature=7KozkGCdky6CQXTP4koMPHqoxZk%3D', 'http://www.dilidili.wang/uploads/allimg/180825/290_1703357511.jpg', '87:41', '复仇者联盟', '复仇者联盟进击的巨人进击的巨人进击的巨人进击的巨人', '1', '0', '0', '0', '0', '0', '1535201193', null, null);
INSERT INTO `vd_video` VALUES ('11', 'https://gz189cloud2.oos-gz.ctyunapi.cn/295fb2cf-5722-48f9-baed-bead8c7c6209?x-amz-UFID=8139732211447451&x-amz-FSIZE=1903552074&Expires=1535202895&x-amz-UID=519993859&response-content-disposition=attachment%3Bfilename%3D%22%C3%A5%C2%A4%C2%8D%C3%A4%C2%BB%C2%87%C3%A8%C2%80%C2%85%C3%A8%C2%81%C2%94%C3%A7%C2%9B%C2%9F3%22&AWSAccessKeyId=6667aad7f6576995b9ae&x-amz-CLOUDTYPEIN=PERSON&Signature=7KozkGCdky6CQXTP4koMPHqoxZk%3D', 'http://www.dilidili.wang/uploads/allimg/180825/290_1703357511.jpg', '45:12', '黑色的心心', '<p>这是一个好的</p><p>作者：小组</p><p>演员：玛利亚</p>', '2', '1', '1', '0', '0', '1', '1535374770', '1535376680', null);
INSERT INTO `vd_video` VALUES ('12', 'http://www.w3school.com.cn/example/html5/mov_bbb.mp4', 'http://www.dilidili.wang/uploads/allimg/180826/290_0004263261.jpg', '23:40', '工作细胞', '血液循环', '3', '0', '0', '0', '0', '0', '1535375950', '1535376502', null);
INSERT INTO `vd_video` VALUES ('16', '/uploads/videos\\20180829\\743cfe00e5302a36de38565576ece416.mp4', '/uploads/images\\20180829\\f9ea225b2efed665d66383e6e01c51f4.jpg', '00:10', '这是一个测试的视频', '测试', '3', '0', '0', '0', '1', '0', '1535523516', '1535524221', '1535524221');
INSERT INTO `vd_video` VALUES ('17', '/uploads/videos/20180829\\a22bc75f716f40ca04921303138d8789.mp4', '/uploads/images/20180829\\e61f62fbbe386806756b91a722abce24.jpg', '00:10', '小白猫', '', '3', '0', '1', '0', '0', '0', '1535524210', '1535524210', null);
INSERT INTO `vd_video` VALUES ('18', '/uploads/videos/20180829\\196fceea2fd94e3cc2a6a0ee2a96faec.mp4', '/uploads/images/20180829\\052356da2fc9be7306a1fca8a220a635.jpg', '10:00', '基地去年', '', '3', '2', '0', '6', '0', '1', '1535531675', '1535531675', null);
