use xsiptvadb;
-- 增加user_group字段
-- xsa_xuser
-- xsl_desktop_app
-- xsl_desktop_pic
-- xsl_hotelwelcome

ALTER TABLE `xsa_xuser` ADD COLUMN `user_group` int(2) NOT NULL;
update `xsa_xuser` set `user_group`=0;

ALTER TABLE `xsl_desktop_app` ADD COLUMN `user_group` int(2) NOT NULL;
update `xsl_desktop_app` set `user_group`=0;

ALTER TABLE `xsl_desktop_pic` ADD COLUMN `user_group` int(2) NOT NULL;
update `xsl_desktop_pic` set `user_group`=0;

ALTER TABLE `xsl_hotelwelcome` ADD COLUMN `user_group` int(2) NOT NULL;
update `xsl_hotelwelcome` set `user_group`=0;


-- 增加channel_url_backup字段
-- xsa_ucast_channel
-- xas_mcast_channel

ALTER TABLE `xsa_ucast_channel` ADD COLUMN `channel_url_backup` varchar(512);
-- update `xsa_ucast_channel` set `channel_url_backup`='';

ALTER TABLE `xsa_mcast_channel` ADD COLUMN `channel_url_backup` varchar(512);
-- update `xsa_mcast_channel` set `channel_url_backup`='';

-- 新增表
-- xsl_group_params
-- xsa_user_group
-- xsl_notice


DROP TABLE IF EXISTS `xsl_group_params`;
CREATE TABLE `xsl_group_params` (
  `param_id` int(4) NOT NULL AUTO_INCREMENT,
  `param_name` varchar(64) NOT NULL,
  `param_value` text,
  `user_group` int(2) DEFAULT '0',
  PRIMARY KEY (`param_id`)
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xsl_group_params
-- ----------------------------
INSERT INTO `xsl_group_params` VALUES ('8', 'logo_picture', 'logo.png', '0');
INSERT INTO `xsl_group_params` VALUES ('22', 'background_picture', 'bg001.jpg', '0');
INSERT INTO `xsl_group_params` VALUES ('26', 'announcement_floating', '0', '0');
INSERT INTO `xsl_group_params` VALUES ('33', 'start_to_live', '0', '0');
INSERT INTO `xsl_group_params` VALUES ('42', 'welcome_logo', 'welcome_logo_jialong.png', '0');
INSERT INTO `xsl_group_params` VALUES ('43', 'background_music', 'bg_music.mp3', '0');
INSERT INTO `xsl_group_params` VALUES ('44', 'ui_template', '1', '0');
INSERT INTO `xsl_group_params` VALUES ('54', 'welcome_picture', 'welcome.jpg', '0');
INSERT INTO `xsl_group_params` VALUES ('64', 'resource_checksum', 'e84f8d1caca785db15018ac6e2c6654d', '0');
INSERT INTO `xsl_group_params` VALUES ('68', 'image_name', 'image201906051556.zip', '0');
INSERT INTO `xsl_group_params` VALUES ('81', 'welcome_video', 'bg_music.mp3', '0');
INSERT INTO `xsl_group_params` VALUES ('124', 'welcome_video_mode', '0', '0');
INSERT INTO `xsl_group_params` VALUES ('147', 'start_to_welcomeinfo', '1', '0');


DROP TABLE IF EXISTS `xsa_user_group`;
CREATE TABLE `xsa_user_group` (
  `user_group_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_group_no` int(2) unsigned DEFAULT NULL,
  `user_group_name` varchar(64) NOT NULL,
  `remark` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xsa_user_group.
-- ----------------------------
INSERT INTO `xsa_user_group` VALUES ('1', '0', '默认分组', '用户默认分组');

