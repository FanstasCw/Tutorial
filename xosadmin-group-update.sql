/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50548
Source Host           : localhost:3306
Source Database       : osadmin

Target Server Type    : MYSQL
Target Server Version : 50548
File Encoding         : 65001

Date: 2019-06-08 14:36:07
*/

SET FOREIGN_KEY_CHECKS=0;
use osadmin;

DROP TABLE `osa_menu_url`;
DROP TABLE `osa_module`;


-- ----------------------------
-- Table structure for osa_menu_url
-- ----------------------------
DROP TABLE IF EXISTS `osa_menu_url`;
CREATE TABLE `osa_menu_url` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(50) NOT NULL,
  `menu_url` varchar(255) NOT NULL,
  `module_id` int(11) NOT NULL,
  `is_show` tinyint(4) NOT NULL COMMENT '是否在sidebar里出现',
  `online` int(11) NOT NULL DEFAULT '1' COMMENT '在线状态，还是下线状态，即可用，不可用。',
  `shortcut_allowed` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '是否允许快捷访问',
  `menu_desc` varchar(255) DEFAULT NULL,
  `father_menu` int(11) NOT NULL DEFAULT '0' COMMENT '上一级菜单',
  PRIMARY KEY (`menu_id`),
  UNIQUE KEY `menu_url` (`menu_url`)
) ENGINE=InnoDB AUTO_INCREMENT=913 DEFAULT CHARSET=utf8 COMMENT='功能链接（菜单链接）';

-- ----------------------------
-- Records of osa_menu_url
-- ----------------------------
INSERT INTO `osa_menu_url` VALUES ('1', '首页', '/panel/index.php', '1', '0', '1', '1', '后台首页', '0');
INSERT INTO `osa_menu_url` VALUES ('2', '账号列表', '/panel/users.php', '1', '1', '1', '1', '账号列表', '0');
INSERT INTO `osa_menu_url` VALUES ('3', '修改账号', '/panel/user_modify.php', '1', '0', '1', '0', '修改账号', '2');
INSERT INTO `osa_menu_url` VALUES ('4', '新建账号', '/panel/user_add.php', '1', '0', '1', '1', '新建账号', '2');
INSERT INTO `osa_menu_url` VALUES ('5', '个人信息', '/panel/profile.php', '1', '0', '1', '1', '个人信息', '0');
INSERT INTO `osa_menu_url` VALUES ('6', '账号组成员', '/panel/group.php', '1', '0', '1', '0', '显示账号组详情及该组成员', '7');
INSERT INTO `osa_menu_url` VALUES ('7', '账号组管理', '/panel/groups.php', '1', '1', '1', '1', '增加管理员', '0');
INSERT INTO `osa_menu_url` VALUES ('8', '修改账号组', '/panel/group_modify.php', '1', '0', '1', '0', '修改账号组', '7');
INSERT INTO `osa_menu_url` VALUES ('9', '新建账号组', '/panel/group_add.php', '1', '0', '1', '1', '新建账号组', '7');
INSERT INTO `osa_menu_url` VALUES ('10', '权限管理', '/panel/group_role.php', '1', '1', '1', '1', '用户权限依赖于账号组的权限', '0');
INSERT INTO `osa_menu_url` VALUES ('11', '菜单模块', '/panel/modules.php', '1', '1', '1', '1', '菜单里的模块', '0');
INSERT INTO `osa_menu_url` VALUES ('12', '编辑菜单模块', '/panel/module_modify.php', '1', '0', '1', '0', '编辑模块', '11');
INSERT INTO `osa_menu_url` VALUES ('13', '添加菜单模块', '/panel/module_add.php', '1', '0', '1', '1', '添加菜单模块', '11');
INSERT INTO `osa_menu_url` VALUES ('14', '功能列表', '/panel/menus.php', '1', '1', '1', '1', '菜单功能及可访问的链接', '0');
INSERT INTO `osa_menu_url` VALUES ('15', '增加功能', '/panel/menu_add.php', '1', '0', '1', '1', '增加功能', '14');
INSERT INTO `osa_menu_url` VALUES ('16', '功能修改', '/panel/menu_modify.php', '1', '0', '1', '0', '修改功能', '14');
INSERT INTO `osa_menu_url` VALUES ('17', '设置模板', '/panel/set.php', '1', '0', '1', '1', '设置模板', '0');
INSERT INTO `osa_menu_url` VALUES ('18', '便签管理', '/panel/quicknotes.php', '1', '1', '1', '1', 'quick note', '0');
INSERT INTO `osa_menu_url` VALUES ('19', '菜单链接列表', '/panel/module.php', '1', '0', '1', '0', '显示模块详情及该模块下的菜单', '11');
INSERT INTO `osa_menu_url` VALUES ('20', '登入', '/login.php', '1', '0', '1', '1', '登入页面', '0');
INSERT INTO `osa_menu_url` VALUES ('21', '操作记录', '/panel/syslog.php', '1', '1', '1', '1', '用户操作的历史行为', '0');
INSERT INTO `osa_menu_url` VALUES ('22', '系统信息', '/panel/system.php', '1', '1', '1', '1', '显示系统相关信息', '0');
INSERT INTO `osa_menu_url` VALUES ('23', 'ajax访问修改快捷菜单', '/ajax/shortcut.php', '1', '0', '1', '0', 'ajax请求', '0');
INSERT INTO `osa_menu_url` VALUES ('24', '添加便签', '/panel/quicknote_add.php', '1', '0', '1', '1', '添加quicknote的内容', '18');
INSERT INTO `osa_menu_url` VALUES ('25', '修改便签', '/panel/quicknote_modify.php', '1', '0', '1', '0', '修改quicknote的内容', '18');
INSERT INTO `osa_menu_url` VALUES ('26', '系统设置', '/panel/setting.php', '1', '0', '1', '0', '系统设置', '0');
INSERT INTO `osa_menu_url` VALUES ('101', '系统业务代码', '/xsiptva/servicecodes.php', '2', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('102', '终端维护密码', '/xsiptva/maintepassword.php', '2', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('103', '终端认证模式', '/xsiptva/authenmode.php', '2', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('104', '到期提醒时间', '/xsiptva/expreminding.php', '2', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('105', '终端WiFi配置', '/xsiptva/boxwifi.php', '2', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('106', '服务地址配置', '/xsiptva/serveraddress.php', '2', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('201', '图片资源管理', '/xsiptva/pictures.php', '3', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('202', '上传图片资源', '/xsiptva/picture_add.php', '3', '0', '1', '0', '', '201');
INSERT INTO `osa_menu_url` VALUES ('203', 'APK资源管理', '/xsiptva/apks.php', '3', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('204', '上传APK资源', '/xsiptva/apk_add.php', '3', '0', '1', '0', '', '203');
INSERT INTO `osa_menu_url` VALUES ('205', '音视频资源管理', '/xsiptva/videos.php', '3', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('206', '上传音视频资源', '/xsiptva/video_add.php', '3', '0', '1', '0', '', '205');
INSERT INTO `osa_menu_url` VALUES ('207', 'WEB资源管理', '/xsiptva/htmls.php', '3', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('208', '上传WEB资源', '/xsiptva/html_add.php', '3', '0', '1', '0', '', '207');
INSERT INTO `osa_menu_url` VALUES ('301', '桌面应用管理', '/xsiptva/desktopapps.php', '4', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('302', '修改桌面应用', '/xsiptva/desktopapp_modify.php', '4', '0', '1', '0', '', '301');
INSERT INTO `osa_menu_url` VALUES ('303', '桌面图片管理', '/xsiptva/desktoppics.php', '4', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('304', '添加桌面图片', '/xsiptva/desktoppic_add.php', '4', '0', '1', '0', '', '303');
INSERT INTO `osa_menu_url` VALUES ('305', '修改桌面图片', '/xsiptva/desktoppic_modify.php', '4', '0', '1', '0', '', '303');
INSERT INTO `osa_menu_url` VALUES ('306', '图片广告管理', '/xsiptva/desktop_adseats.php', '4', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('307', '修改图片广告', '/xsiptva/desktop_adseat_modify.php', '4', '0', '1', '0', '', '306');
INSERT INTO `osa_menu_url` VALUES ('308', '欢迎图片管理', '/xsiptva/welcomepics.php', '4', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('309', '添加欢迎图片', '/xsiptva/welcomepic_add.php', '4', '0', '1', '0', '', '308');
INSERT INTO `osa_menu_url` VALUES ('310', '修改欢迎图片', '/xsiptva/welcomepic_modify.php', '4', '0', '1', '0', '', '308');
INSERT INTO `osa_menu_url` VALUES ('311', '背景图片管理', '/xsiptva/bgpics.php', '4', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('312', '添加背景图片', '/xsiptva/bgpic_add.php', '4', '0', '1', '0', '', '311');
INSERT INTO `osa_menu_url` VALUES ('313', '修改背景图片', '/xsiptva/bgpic_modify.php', '4', '0', '1', '0', '', '311');
INSERT INTO `osa_menu_url` VALUES ('314', 'Logo图片管理', '/xsiptva/logopics.php', '4', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('315', '添加Logo图片', '/xsiptva/logopic_add.php', '4', '0', '1', '1', '', '314');
INSERT INTO `osa_menu_url` VALUES ('316', '修改Logo图片', '/xsiptva/logopic_modify.php', '4', '0', '1', '1', '', '314');
INSERT INTO `osa_menu_url` VALUES ('317', '开机直播管理', '/xsiptva/starttolives.php', '4', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('318', '添加开机直播', '/xsiptva/starttolive_add.php', '4', '0', '1', '0', '', '317');
INSERT INTO `osa_menu_url` VALUES ('319', '修改开机直播', '/xsiptva/starttolive_modify.php', '4', '0', '1', '0', '', '317');
INSERT INTO `osa_menu_url` VALUES ('320', '字幕悬浮管理', '/xsiptva/announcefloatings.php', '4', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('321', '添加字幕悬浮', '/xsiptva/announcefloating_add.php', '4', '0', '1', '0', '', '320');
INSERT INTO `osa_menu_url` VALUES ('322', '修改字幕悬浮', '/xsiptva/announcefloating_modify.php', '4', '0', '1', '0', '', '320');
INSERT INTO `osa_menu_url` VALUES ('323', '桌面版本管理', '/xsiptva/deskversion.php', '4', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('324', '桌面更新发布', '/xsiptva/deskupdate.php', '4', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('401', '组播频道管理', '/xsiptva/mcastchannels.php', '5', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('402', '添加组播频道', '/xsiptva/mcastchannel_add.php', '5', '0', '1', '0', '', '401');
INSERT INTO `osa_menu_url` VALUES ('403', '修改组播频道', '/xsiptva/mcastchannel_modify.php', '5', '0', '1', '0', '', '401');
INSERT INTO `osa_menu_url` VALUES ('404', '导出组播频道', '/xsiptva/mexport.php', '5', '0', '1', '0', '', '401');
INSERT INTO `osa_menu_url` VALUES ('405', '单播频道管理', '/xsiptva/ucastchannels.php', '5', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('406', '添加单播频道', '/xsiptva/ucastchannel_add.php', '5', '0', '1', '0', '', '405');
INSERT INTO `osa_menu_url` VALUES ('407', '修改单播频道', '/xsiptva/ucastchannel_modify.php', '5', '0', '1', '0', '', '405');
INSERT INTO `osa_menu_url` VALUES ('408', '导出单播频道', '/xsiptva/uexport.php', '5', '0', '1', '0', '', '405');
INSERT INTO `osa_menu_url` VALUES ('409', '导入组播频道', '/xsiptva/mimport.php', '5', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('410', '导入单播频道', '/xsiptva/uimport.php', '5', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('411', '默认频道管理', '/xsiptva/default_channel.php', '5', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('412', '直播版本管理', '/xsiptva/liveversion.php', '5', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('413', '频道更新发布', '/xsiptva/republish.php', '5', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('501', '酒店欢迎致词', '/xsiptva/hotelwelcomes.php', '6', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('502', '添加欢迎致词', '/xsiptva/hotelwelcome_add.php', '6', '0', '1', '0', '', '501');
INSERT INTO `osa_menu_url` VALUES ('503', '删除欢迎致词', '/xsiptva/hotelwelcome_modify.php', '6', '0', '1', '0', '', '502');
INSERT INTO `osa_menu_url` VALUES ('504', '酒店背景音乐', '/xsiptva/bgmusics.php', '6', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('505', '添加背景音乐', '/xsiptva/bgmusic_add.php', '6', '0', '1', '0', '', '504');
INSERT INTO `osa_menu_url` VALUES ('506', '删除背景音乐', '/xsiptva/bgmusic_modify.php', '6', '0', '1', '0', '', '504');
INSERT INTO `osa_menu_url` VALUES ('507', '酒店欢迎图标', '/xsiptva/welcomelogos.php', '6', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('508', '添加欢迎图标', '/xsiptva/welcomelogo_add.php', '6', '0', '1', '0', '', '507');
INSERT INTO `osa_menu_url` VALUES ('509', '删除欢迎图标', '/xsiptva/welcomelogo_modify.php', '6', '0', '1', '0', '', '507');
INSERT INTO `osa_menu_url` VALUES ('510', '开机视频管理', '/xsiptva/welcomevideos.php', '6', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('511', '添加开机视频', '/xsiptva/welcomevideo_add.php', '6', '0', '1', '0', '', '510');
INSERT INTO `osa_menu_url` VALUES ('512', '删除开机视频', '/xsiptva/welcomevideo_modify.php', '6', '0', '1', '0', '', '510');
INSERT INTO `osa_menu_url` VALUES ('513', '天气预报配置', '/xsiptva/weather.php', '6', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('514', '酒店服务管理', '/xsiptva/hotelservices.php', '6', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('515', '增加酒店服务', '/xsiptva/hotelservice_add.php', '6', '0', '1', '0', '', '514');
INSERT INTO `osa_menu_url` VALUES ('516', '修改酒店服务', '/xsiptva/hotelservice_modify.php', '6', '0', '1', '0', '', '514');
INSERT INTO `osa_menu_url` VALUES ('517', '酒店介绍管理', '/xsiptva/hotelintroduces.php', '6', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('518', '增加酒店介绍', '/xsiptva/hotelintroduce_add.php', '6', '0', '1', '0', '', '517');
INSERT INTO `osa_menu_url` VALUES ('519', '修改酒店介绍', '/xsiptva/hotelintroduce_modify.php', '6', '0', '1', '0', '', '517');
INSERT INTO `osa_menu_url` VALUES ('520', '酒店介绍主菜单管理', '/xsiptva/introducetype1s.php', '6', '0', '1', '0', '', '517');
INSERT INTO `osa_menu_url` VALUES ('521', '增加酒店介绍主菜单', '/xsiptva/introducetype1_add.php', '6', '0', '1', '0', '', '520');
INSERT INTO `osa_menu_url` VALUES ('522', '修改酒店介绍主菜单', '/xsiptva/introducetype1_modify.php', '6', '0', '1', '0', '', '520');
INSERT INTO `osa_menu_url` VALUES ('523', '酒店商场管理', '/xsiptva/hotelstores.php', '6', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('524', '增加酒店商场', '/xsiptva/hotelstore_add.php', '6', '0', '1', '0', '', '523');
INSERT INTO `osa_menu_url` VALUES ('525', '修改酒店商场', '/xsiptva/hotelstore_modify.php', '6', '0', '1', '0', '', '523');
INSERT INTO `osa_menu_url` VALUES ('526', '酒店商场分类管理', '/xsiptva/storetype1s.php', '6', '0', '1', '0', '', '523');
INSERT INTO `osa_menu_url` VALUES ('527', '增加酒店商品分类', '/xsiptva/storetype1_add.php', '6', '0', '1', '0', '', '523');
INSERT INTO `osa_menu_url` VALUES ('528', '修改酒店商品分类', '/xsiptva/storetype1_modify.php', '6', '0', '1', '0', '', '523');
INSERT INTO `osa_menu_url` VALUES ('529', '酒店服务提醒', '/xsiptva/servicerecords.php', '6', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('530', '修改酒店服务状态', '/xsiptva/servicerecord_modify.php', '6', '0', '1', '0', '', '529');
INSERT INTO `osa_menu_url` VALUES ('531', '商城订单提醒', '/xsiptva/hotelorders.php', '6', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('532', '商城历史订单', '/xsiptva/hotelorder_old.php', '6', '0', '1', '0', '', '531');
INSERT INTO `osa_menu_url` VALUES ('533', '修改商城订单状态', '/xsiptva/hotelorder_modify.php', '6', '0', '1', '0', '', '531');
INSERT INTO `osa_menu_url` VALUES ('534', '酒店通知管理', '/xsiptva/emegencynotices.php', '6', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('535', '增加酒店通知', '/xsiptva/emegencynotice_add.php', '6', '0', '1', '0', '', '534');
INSERT INTO `osa_menu_url` VALUES ('536', '修改酒店通知', '/xsiptva/emegencynotice_modify.php', '6', '0', '1', '0', '', '534');
INSERT INTO `osa_menu_url` VALUES ('537', '酒店更新发布', '/xsiptva/deskupdate_hotel.php', '6', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('601', '服务器管理', '/xsiptva/vodservers.php', '7', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('602', '添加VOD服务器', '/xsiptva/vodserver_add.php', '7', '0', '1', '0', '', '601');
INSERT INTO `osa_menu_url` VALUES ('603', '修改VOD服务器', '/xsiptva/vodserver_modify.php', '7', '0', '1', '0', '', '601');
INSERT INTO `osa_menu_url` VALUES ('604', '影片入库', '/xsiptva/vod_batchupload.php', '7', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('605', '影片管理', '/xsiptva/vodmovies.php', '7', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('606', '修改影片', '/xsiptva/vodmovie_modify.php', '7', '0', '1', '0', '', '605');
INSERT INTO `osa_menu_url` VALUES ('607', '图片管理', '/xsiptva/vod_pictures.php', '7', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('608', '修改图片', '/xsiptva/vod_picture_modify.php', '7', '0', '1', '0', '', '607');
INSERT INTO `osa_menu_url` VALUES ('609', '版本管理', '/xsiptva/vodversion.php', '7', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('701', '服务器管理', '/xsiptva/countryservers.php', '8', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('702', '添加服务器', '/xsiptva/countryserver_add.php', '8', '0', '1', '0', '', '701');
INSERT INTO `osa_menu_url` VALUES ('703', '修改服务器', '/xsiptva/countryserver_modify.php', '8', '0', '1', '0', '', '701');
INSERT INTO `osa_menu_url` VALUES ('704', '素材入库', '/xsiptva/country_batchupload.php', '8', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('705', '素材管理', '/xsiptva/countrymovies.php', '8', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('706', '修改素材', '/xsiptva/countrymovie_modify.php', '8', '0', '1', '0', '', '705');
INSERT INTO `osa_menu_url` VALUES ('707', '图片管理', '/xsiptva/country_pictures.php', '8', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('708', '修改图片', '/xsiptva/country_picture_modify.php', '8', '0', '1', '0', '', '707');
INSERT INTO `osa_menu_url` VALUES ('709', '版本管理', '/xsiptva/countryversion.php', '8', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('801', '字幕广告管理', '/xsiptva/announcements.php', '9', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('802', '上传字幕图片', '/xsiptva/upload_announce.php', '9', '0', '1', '0', '', '801');
INSERT INTO `osa_menu_url` VALUES ('803', '增加字幕广告', '/xsiptva/announcement_add.php', '9', '0', '1', '0', '', '801');
INSERT INTO `osa_menu_url` VALUES ('804', '修改字幕图片', '/xsiptva/announcement_modify.php', '9', '0', '1', '0', '', '801');
INSERT INTO `osa_menu_url` VALUES ('805', '挂角广告', '/xsiptva/cornerad.php', '9', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('806', '上传挂角图片', '/xsiptva/upload_cornerad.php', '9', '0', '1', '0', '', '801');
INSERT INTO `osa_menu_url` VALUES ('807', '广告更新发布', '/xsiptva/republishadv.php', '9', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('901', '账户管理', '/xsiptva/xusers.php', '10', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('902', '添加IPTV账户', '/xsiptva/xuser_add.php', '10', '0', '1', '0', '', '901');
INSERT INTO `osa_menu_url` VALUES ('903', '修改IPTV账户', '/xsiptva/xuser_modify.php', '10', '0', '1', '0', '', '901');
INSERT INTO `osa_menu_url` VALUES ('904', 'IPTV账户导出', '/xsiptva/xuser_export.php', '10', '0', '1', '0', '', '901');
INSERT INTO `osa_menu_url` VALUES ('905', '业务套餐', '/xsiptva/packages.php', '10', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('906', '添加业务套餐', '/xsiptva/package_add.php', '10', '0', '1', '0', '', '905');
INSERT INTO `osa_menu_url` VALUES ('907', '修改业务套餐', '/xsiptva/packages_modify.php', '10', '0', '1', '0', '', '905');
INSERT INTO `osa_menu_url` VALUES ('908', '账户导入', '/xsiptva/xuser_import.php', '10', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('909', '分组管理', '/xsiptva/groups.php', '10', '1', '1', '1', '', '0');
INSERT INTO `osa_menu_url` VALUES ('910', '添加用户组', '/xsiptva/group_add.php', '10', '0', '1', '0', '', '909');
INSERT INTO `osa_menu_url` VALUES ('911', '修改用户组', '/xsiptva/group_modify.php', '10', '0', '1', '0', '', '909');
INSERT INTO `osa_menu_url` VALUES ('912', '用户状态', '/xsiptva/xusers_action.php', '10', '1', '1', '1', '', '0');

-- ----------------------------
-- Table structure for osa_module
-- ----------------------------
DROP TABLE IF EXISTS `osa_module`;
CREATE TABLE `osa_module` (
  `module_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(50) NOT NULL,
  `module_url` varchar(128) NOT NULL,
  `module_sort` int(11) unsigned NOT NULL DEFAULT '1',
  `module_desc` varchar(255) DEFAULT NULL,
  `module_icon` varchar(32) DEFAULT 'icon-th' COMMENT '菜单模块图标',
  `online` int(11) NOT NULL DEFAULT '1' COMMENT '模块是否在线',
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='菜单模块';

-- ----------------------------
-- Records of osa_module
-- ----------------------------
INSERT INTO `osa_module` VALUES ('1', '控制面板', '/panel/index.php', '9', '配置控制面板的相关功能', 'icon-th', '1');
INSERT INTO `osa_module` VALUES ('2', '系统配置', '/panel/index.php', '0', '配置IPTV系统参数的相关功能', 'icon-cog', '1');
INSERT INTO `osa_module` VALUES ('3', '资源管理', '/panel/index.php', '1', '配置IPTV系统资源的相关功能', 'icon-leaf', '1');
INSERT INTO `osa_module` VALUES ('4', '桌面管理', '/panel/index.php', '2', '配置IPTV终端主页的相关功能', 'icon-home', '1');
INSERT INTO `osa_module` VALUES ('5', '直播管理', '/panel/index.php', '3', '管理IPTV电视直播的相关功能', 'icon-facetime-video', '1');
INSERT INTO `osa_module` VALUES ('6', '酒店管理', '/panel/index.php', '4', '配置IPTV酒店应用的相关功能', 'icon-book', '1');
INSERT INTO `osa_module` VALUES ('7', 'VOD管理', '/panel/index.php', '5', '配置IPTV内网点播的相关功能', 'icon-film', '1');
INSERT INTO `osa_module` VALUES ('8', '智慧乡村', '/panel/index.php', '6', '配置IPTV智慧乡村的相关功能', 'icon-road', '1');
INSERT INTO `osa_module` VALUES ('9', '广告管理', '/panel/index.php', '7', '配置IPTV广告业务的相关功能', 'icon-picture', '1');
INSERT INTO `osa_module` VALUES ('10', '用户管理', '/panel/index.php', '8', '配置IPTV用户计费的相关功能', 'icon-user', '1');

