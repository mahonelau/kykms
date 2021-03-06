CREATE database if NOT EXISTS `km` default character set utf8mb4 collate utf8mb4_unicode_ci;
use `km`;


SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for km_doc
-- ----------------------------
DROP TABLE IF EXISTS `km_doc`;
CREATE TABLE `km_doc`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `file_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `preview_file_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `original_preview_file_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file_size` int(0) NULL DEFAULT NULL,
  `name` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `serial_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` smallint(0) NULL DEFAULT NULL,
  `category` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `source` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `keywords` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fti_flag` smallint(0) NULL DEFAULT NULL,
  `convert_flag` smallint(0) NULL DEFAULT NULL,
  `release_flag` smallint(0) NULL DEFAULT NULL,
  `downloads` bigint(0) NULL DEFAULT NULL,
  `views` bigint(0) NULL DEFAULT NULL,
  `last_update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_update_time` datetime(0) NULL DEFAULT NULL,
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `process_msg` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `index_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dep_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pub_time_txt` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `public_flag` smallint(0) NULL DEFAULT NULL,
  `download_flag` smallint(0) NULL DEFAULT NULL,
  `effect_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pub_time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `public_remark` smallint(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for km_doc_business_type
-- ----------------------------
DROP TABLE IF EXISTS `km_doc_business_type`;
CREATE TABLE `km_doc_business_type`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `doc_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `business_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for km_doc_favourite
-- ----------------------------
DROP TABLE IF EXISTS `km_doc_favourite`;
CREATE TABLE `km_doc_favourite`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `doc_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `add_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for km_doc_topic_type
-- ----------------------------
DROP TABLE IF EXISTS `km_doc_topic_type`;
CREATE TABLE `km_doc_topic_type`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `doc_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `topic_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for km_doc_version
-- ----------------------------
DROP TABLE IF EXISTS `km_doc_version`;
CREATE TABLE `km_doc_version`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `doc_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `version` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for km_doc_visit_record
-- ----------------------------
DROP TABLE IF EXISTS `km_doc_visit_record`;
CREATE TABLE `km_doc_visit_record`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `doc_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `visit_type` decimal(6, 0) NULL DEFAULT NULL COMMENT '1????????? 2????????? 3????????? 4?????????',
  `keywords` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `keywords_max` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `source_ip` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for km_file
-- ----------------------------
DROP TABLE IF EXISTS `km_file`;
CREATE TABLE `km_file`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sha256` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `physical_path` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `url` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `original_name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for km_search_record
-- ----------------------------
DROP TABLE IF EXISTS `km_search_record`;
CREATE TABLE `km_search_record`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'id',
  `keywords` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'keywords',
  `title` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `topic_codes` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `keywords_max` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `source_ip` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'sourceIp',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'createBy',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT 'createTime'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for km_sys_config
-- ----------------------------
DROP TABLE IF EXISTS `km_sys_config`;
CREATE TABLE `km_sys_config`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item_value` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of km_sys_config
-- ----------------------------
INSERT INTO `km_sys_config` VALUES ('12', 'MaxContentSearchLength', '102400', '?????????????????????????????????????????????????????????????????????????????????????????????????????????', NULL);
INSERT INTO `km_sys_config` VALUES ('10', 'DuplicateCheckHitRate', '50%', '????????????????????????????????????????????????(??????????????????????????????)', NULL);
INSERT INTO `km_sys_config` VALUES ('1', 'supportFileTypes', 'doc,xls,pdf,ppt,txt,xlsx,docx,pptx,zip,rar,jpg,jpeg,bmp,png,gif', '??????????????????????????????????????????????????????????????????????????????', NULL);
INSERT INTO `km_sys_config` VALUES ('4', 'downloadLimitConfig', '102', '24????????????????????????', NULL);
INSERT INTO `km_sys_config` VALUES ('5', 'TitleSearchBoostConfig', '1', '????????????:??????,???1?????????', NULL);
INSERT INTO `km_sys_config` VALUES ('6', 'KeywordSearchBoostConfig', '1', '????????????:?????????,???1?????????', NULL);
INSERT INTO `km_sys_config` VALUES ('7', 'ContentSearchBoostConfig', '1', '????????????:??????,???1?????????', NULL);
INSERT INTO `km_sys_config` VALUES ('8', 'searchLimitConfig', '10', '10?????????????????????', NULL);
INSERT INTO `km_sys_config` VALUES ('9', 'viewLimitConfig', '10', '10?????????????????????', NULL);
INSERT INTO `km_sys_config` VALUES ('2', 'IndexFileTypes', 'doc,xls,pdf,ppt,txt,xlsx,docx,pptx,zip,rar', '????????????????????????????????????', NULL);
INSERT INTO `km_sys_config` VALUES ('3', 'ConvertFileTypes', 'doc,xls,pdf,ppt,txt,xlsx,docx,pptx,jpg,jpeg,bmp,png,gif', '?????????????????????????????????????????????', NULL);
INSERT INTO `km_sys_config` VALUES ('11', 'RecommendHotTopic', '0', '?????????????????????????????????', NULL);

-- ----------------------------
-- Table structure for onl_cgreport_head
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgreport_head`;
CREATE TABLE `onl_cgreport_head`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????',
  `cgr_sql` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????SQL',
  `return_val_field` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???????????????',
  `return_txt_field` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????',
  `return_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????????????????',
  `db_source` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???????????????',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '??????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of onl_cgreport_head
-- ----------------------------
INSERT INTO `onl_cgreport_head` VALUES ('1420565897964433409', 'doc_visit_record', '??????????????????', 'SELECT kd.serial_number,kd.title,kdvr.visit_type,kdvr.create_by,kdvr.source_ip,kdvr.create_time FROM km_doc_visit_record kdvr\nJOIN km_doc kd ON kd.id=kdvr.doc_id \n ORDER BY create_time DESC\n', NULL, NULL, '1', NULL, NULL, '2021-12-17 14:52:04', 'ceshi', '2021-07-29 10:04:38', 'admin');

-- ----------------------------
-- Table structure for onl_cgreport_item
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgreport_item`;
CREATE TABLE `onl_cgreport_item`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cgrhead_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????ID',
  `field_name` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????',
  `field_txt` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '????????????',
  `field_width` decimal(11, 0) NULL DEFAULT NULL,
  `field_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `search_mode` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `is_order` decimal(11, 0) NULL DEFAULT NULL COMMENT '????????????  0???,1???',
  `is_search` decimal(11, 0) NULL DEFAULT NULL COMMENT '????????????  0???,1???',
  `dict_code` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '??????CODE',
  `field_href` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????URL',
  `is_show` decimal(11, 0) NULL DEFAULT NULL COMMENT '????????????  0???,1??????',
  `order_num` decimal(11, 0) NULL DEFAULT NULL COMMENT '??????',
  `replace_val` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???????????????',
  `is_total` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???????????? 0???,1???????????????????????????',
  `group_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of onl_cgreport_item
-- ----------------------------
INSERT INTO `onl_cgreport_item` VALUES ('1420565899138838529', '1420565897964433409', 'title', '????????????', NULL, 'String', NULL, 0, 1, NULL, NULL, 1, 1, NULL, NULL, NULL, 'admin', '2021-07-29 10:04:38', NULL, NULL);
INSERT INTO `onl_cgreport_item` VALUES ('1420565899155615745', '1420565897964433409', 'serial_number', '???????????????', NULL, 'String', 'single', 0, 1, NULL, NULL, 1, 2, NULL, NULL, NULL, 'admin', '2021-07-29 10:04:38', NULL, NULL);
INSERT INTO `onl_cgreport_item` VALUES ('1420565899168198658', '1420565897964433409', 'visit_type', '????????????', NULL, 'Integer', 'single', 0, 1, 'dict_doc_visit_type', NULL, 1, 3, NULL, NULL, NULL, 'admin', '2021-07-29 10:04:38', NULL, NULL);
INSERT INTO `onl_cgreport_item` VALUES ('1420565899168198659', '1420565897964433409', 'create_by', '?????????', NULL, 'String', 'single', 0, 1, '', NULL, 1, 4, NULL, NULL, NULL, 'admin', '2021-07-29 10:04:38', NULL, NULL);
INSERT INTO `onl_cgreport_item` VALUES ('1420565899172392962', '1420565897964433409', 'source_ip', 'IP??????', NULL, 'String', NULL, 0, 0, NULL, NULL, 1, 5, NULL, NULL, NULL, 'admin', '2021-07-29 10:04:38', NULL, NULL);
INSERT INTO `onl_cgreport_item` VALUES ('1420565899189170177', '1420565897964433409', 'create_time', '????????????', NULL, 'Date', 'group', 0, 1, NULL, NULL, 1, 6, NULL, NULL, NULL, 'admin', '2021-07-29 10:04:38', NULL, NULL);

-- ----------------------------
-- Table structure for onl_cgreport_param
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgreport_param`;
CREATE TABLE `onl_cgreport_param`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cgrhead_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????ID',
  `param_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????',
  `param_txt` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `param_value` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???????????????',
  `order_num` decimal(11, 0) NULL DEFAULT NULL COMMENT '??????',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????????????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????????????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for oss_file
-- ----------------------------
DROP TABLE IF EXISTS `oss_file`;
CREATE TABLE `oss_file`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????id',
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????????????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????????????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Oss File' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `blob_data` longblob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_trig_to_trig_fk` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar` longblob NOT NULL,
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cron_expression` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_trig_to_trig_fk` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fired_time` decimal(13, 0) NOT NULL,
  `sched_time` decimal(13, 0) NOT NULL,
  `priority` decimal(13, 0) NOT NULL,
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE,
  INDEX `idx_qrtz_ft_inst_job_req_rcvry`(`instance_name`, `sched_name`, `requests_recovery`) USING BTREE,
  INDEX `idx_qrtz_ft_jg`(`job_group`, `sched_name`) USING BTREE,
  INDEX `idx_qrtz_ft_j_g`(`job_name`, `sched_name`, `job_group`) USING BTREE,
  INDEX `idx_qrtz_ft_tg`(`sched_name`, `trigger_group`) USING BTREE,
  INDEX `idx_qrtz_ft_trig_inst_name`(`sched_name`, `instance_name`) USING BTREE,
  INDEX `idx_qrtz_ft_t_g`(`sched_name`, `trigger_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_data` longblob NULL,
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE,
  INDEX `idx_qrtz_j_grp`(`sched_name`, `job_group`) USING BTREE,
  INDEX `idx_qrtz_j_req_recovery`(`sched_name`, `requests_recovery`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('MyScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('MyScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_checkin_time` decimal(13, 0) NOT NULL,
  `checkin_interval` decimal(13, 0) NOT NULL,
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('MyScheduler', '172_16_0_21646914039944', 1647951194622, 10000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `repeat_count` decimal(7, 0) NOT NULL,
  `repeat_interval` decimal(12, 0) NOT NULL,
  `times_triggered` decimal(10, 0) NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_trig_to_trig_fk` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `str_prop_1` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `str_prop_2` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `str_prop_3` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `int_prop_1` decimal(10, 0) NULL DEFAULT NULL,
  `int_prop_2` decimal(10, 0) NULL DEFAULT NULL,
  `long_prop_1` decimal(13, 0) NULL DEFAULT NULL,
  `long_prop_2` decimal(13, 0) NULL DEFAULT NULL,
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL,
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL,
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_trig_to_trig_fk` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `next_fire_time` decimal(13, 0) NULL DEFAULT NULL,
  `prev_fire_time` decimal(13, 0) NULL DEFAULT NULL,
  `priority` decimal(13, 0) NULL DEFAULT NULL,
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_time` decimal(13, 0) NOT NULL,
  `end_time` decimal(13, 0) NULL DEFAULT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `misfire_instr` decimal(2, 0) NULL DEFAULT NULL,
  `job_data` longblob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `idx_qrtz_t_c`(`sched_name`, `calendar_name`) USING BTREE,
  INDEX `idx_qrtz_t_g`(`sched_name`, `trigger_group`) USING BTREE,
  INDEX `idx_qrtz_t_j`(`job_group`, `job_name`, `sched_name`) USING BTREE,
  INDEX `idx_qrtz_t_jg`(`sched_name`, `job_group`) USING BTREE,
  INDEX `idx_qrtz_t_next_fire_time`(`sched_name`, `next_fire_time`) USING BTREE,
  INDEX `idx_qrtz_t_nft_misfire`(`sched_name`, `misfire_instr`, `next_fire_time`) USING BTREE,
  INDEX `idx_qrtz_t_nft_st`(`next_fire_time`, `sched_name`, `trigger_state`) USING BTREE,
  INDEX `idx_qrtz_t_nft_st_misfire`(`sched_name`, `misfire_instr`, `next_fire_time`, `trigger_state`) USING BTREE,
  INDEX `idx_qrtz_t_nft_st_misfire_grp`(`sched_name`, `misfire_instr`, `trigger_state`, `trigger_group`, `next_fire_time`) USING BTREE,
  INDEX `idx_qrtz_t_n_g_state`(`trigger_group`, `sched_name`, `trigger_state`) USING BTREE,
  INDEX `idx_qrtz_t_n_state`(`sched_name`, `trigger_group`, `trigger_name`, `trigger_state`) USING BTREE,
  INDEX `idx_qrtz_t_state`(`sched_name`, `trigger_state`) USING BTREE,
  INDEX `qrtz_trigger_to_jobs_fk`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_trigger_to_jobs_fk` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_announcement
-- ----------------------------
DROP TABLE IF EXISTS `sys_announcement`;
CREATE TABLE `sys_announcement`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `titile` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `msg_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '??????',
  `start_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `sender` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `priority` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????L??????M??????H??????',
  `msg_category` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????1:????????????2:????????????',
  `msg_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????????????????USER:???????????????ALL:???????????????',
  `send_status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???????????????0????????????1????????????2????????????',
  `send_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `cancel_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `del_flag` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???????????????0????????????1????????????',
  `bus_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????(email:?????? bpm:??????)',
  `bus_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????id',
  `open_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????(?????????component ?????????url)',
  `open_page` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????/?????? ??????',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `user_ids` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '????????????',
  `msg_abstract` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '??????',
  `dt_task_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????task_id?????????????????????'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '???????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_announcement_send
-- ----------------------------
DROP TABLE IF EXISTS `sys_announcement_send`;
CREATE TABLE `sys_announcement_send`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `annt_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????ID',
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????id',
  `read_flag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???????????????0?????????1?????????',
  `read_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '???????????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_category
-- ----------------------------
DROP TABLE IF EXISTS `sys_category`;
CREATE TABLE `sys_category`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `sys_org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `has_child` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????',
  `sort_order` int(0) NULL DEFAULT NULL,
  `recommend` tinyint(1) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_category
-- ----------------------------
INSERT INTO `sys_category` VALUES ('1450287793728155650', '1415239215563579394', '???????????????', 'B04A02', 'ceshi', '2021-10-19 10:28:49', 'ceshi', '2021-10-19 10:28:58', 'A01', '1', 1, NULL);
INSERT INTO `sys_category` VALUES ('1450287947566837762', '1450287793728155650', '???????????????', 'B04A02A05', 'ceshi', '2021-10-19 10:29:26', NULL, NULL, 'A01', NULL, 1, NULL);
INSERT INTO `sys_category` VALUES ('1450287992101957633', '1450287793728155650', '????????????', 'B04A02A06', 'ceshi', '2021-10-19 10:29:37', NULL, NULL, 'A01', NULL, 1, NULL);
INSERT INTO `sys_category` VALUES ('1450288184205275137', '1450288104739991553', '??????', 'B04A03A02', 'ceshi', '2021-10-19 10:30:22', NULL, NULL, 'A01', NULL, 1, NULL);
INSERT INTO `sys_category` VALUES ('1450288234289459202', '1450288104739991553', '??????', 'B04A03A04', 'ceshi', '2021-10-19 10:30:34', NULL, NULL, 'A01', NULL, 1, NULL);
INSERT INTO `sys_category` VALUES ('1450288263007858689', '1450288104739991553', '??????', 'B04A03A05', 'ceshi', '2021-10-19 10:30:41', NULL, NULL, 'A01', NULL, 1, NULL);
INSERT INTO `sys_category` VALUES ('1450287865912127490', '1450287793728155650', '????????????', 'B04A02A02', 'ceshi', '2021-10-19 10:29:06', NULL, NULL, 'A01', NULL, 1, NULL);
INSERT INTO `sys_category` VALUES ('1415239215563579394', '0', '???????????????', 'B04', 'admin', '2021-07-14 04:18:18', 'ceshi', '2021-11-24 18:24:43', 'A01', '1', 1, 1);
INSERT INTO `sys_category` VALUES ('1450287893921689602', '1450287793728155650', '????????????', 'B04A02A03', 'ceshi', '2021-10-19 10:29:13', NULL, NULL, 'A01', NULL, 1, NULL);
INSERT INTO `sys_category` VALUES ('1448923409156202498', '1448923264612098049', '????????????', 'B06A04', 'ceshi', '2021-10-15 16:07:15', 'ceshi', '2021-11-15 11:32:50', 'A01', NULL, 1, 0);
INSERT INTO `sys_category` VALUES ('1448923583488253953', '0', '????????????', 'B07', 'ceshi', '2021-10-15 16:07:56', 'ceshi', '2021-11-23 14:00:03', 'A01', '0', 4, 0);
INSERT INTO `sys_category` VALUES ('1448923935583297538', '0', '????????????', 'B10', 'ceshi', '2021-10-15 16:09:20', 'ceshi', '2021-11-23 14:00:10', 'A01', '0', 5, 1);
INSERT INTO `sys_category` VALUES ('1448923843216334849', '0', '????????????', 'B08', 'ceshi', '2021-10-15 16:08:58', 'ceshi', '2021-11-23 14:00:36', 'A01', NULL, 7, 0);
INSERT INTO `sys_category` VALUES ('1448923896492384258', '0', '????????????', 'B09', 'ceshi', '2021-10-15 16:09:11', 'ceshi', '2021-11-23 14:00:46', 'A01', NULL, 8, 0);
INSERT INTO `sys_category` VALUES ('1448924019523903490', '0', '????????????', 'B11', 'ceshi', '2021-10-15 16:09:40', 'ceshi', '2021-11-23 14:00:20', 'A01', NULL, 6, NULL);
INSERT INTO `sys_category` VALUES ('1448924056215674881', '0', '????????????', 'B12', 'ceshi', '2021-10-15 16:09:49', 'ceshi', '2021-11-23 14:00:56', 'A01', NULL, 9, 0);
INSERT INTO `sys_category` VALUES ('1448924103653253122', '0', '????????????', 'B13', 'ceshi', '2021-10-15 16:10:00', 'ceshi', '2021-11-23 14:02:40', 'A01', NULL, 15, NULL);
INSERT INTO `sys_category` VALUES ('1448924139699101697', '0', '????????????', 'B14', 'ceshi', '2021-10-15 16:10:09', 'ceshi', '2021-11-23 14:02:01', 'A01', NULL, 11, 0);
INSERT INTO `sys_category` VALUES ('1448924177934376962', '0', '????????????', 'B15', 'ceshi', '2021-10-15 16:10:18', 'ceshi', '2021-11-23 14:02:09', 'A01', NULL, 12, NULL);
INSERT INTO `sys_category` VALUES ('1448924211119710210', '0', '????????????', 'B16', 'ceshi', '2021-10-15 16:10:26', 'ceshi', '2021-11-23 14:02:15', 'A01', NULL, 13, NULL);
INSERT INTO `sys_category` VALUES ('1448924255076016129', '0', '????????????', 'B17', 'ceshi', '2021-10-15 16:10:36', 'ceshi', '2021-11-23 14:02:24', 'A01', NULL, 14, NULL);
INSERT INTO `sys_category` VALUES ('1448924309627133953', '0', '????????????', 'B18', 'ceshi', '2021-10-15 16:10:49', 'ceshi', '2021-12-28 11:09:43', 'A01', '0', 10, 0);
INSERT INTO `sys_category` VALUES ('1448924350068613122', '0', '???????????????', 'B19', 'ceshi', '2021-10-15 16:10:59', 'ceshi', '2021-11-23 14:03:04', 'A01', NULL, 16, NULL);
INSERT INTO `sys_category` VALUES ('1448924381949517826', '0', '????????????', 'B20', 'ceshi', '2021-10-15 16:11:07', 'ceshi', '2021-11-23 14:03:17', 'A01', NULL, 17, NULL);
INSERT INTO `sys_category` VALUES ('1448924413280968705', '0', '????????????', 'B21', 'ceshi', '2021-10-15 16:11:14', 'ceshi', '2021-11-23 14:03:32', 'A01', NULL, 18, NULL);
INSERT INTO `sys_category` VALUES ('1448924439432454145', '0', '??????', 'B22', 'ceshi', '2021-10-15 16:11:20', 'ceshi', '2021-10-21 16:46:11', 'A01', NULL, 19, NULL);
INSERT INTO `sys_category` VALUES ('1450287922069663745', '1450287793728155650', '???????????????', 'B04A02A04', 'ceshi', '2021-10-19 10:29:20', NULL, NULL, 'A01', NULL, 1, NULL);
INSERT INTO `sys_category` VALUES ('1450287830122131457', '1450287793728155650', '????????????', 'B04A02A01', 'ceshi', '2021-10-19 10:28:58', NULL, NULL, 'A01', NULL, 1, NULL);
INSERT INTO `sys_category` VALUES ('1450288104739991553', '1415239215563579394', '???????????????', 'B04A03', 'ceshi', '2021-10-19 10:30:03', 'ceshi', '2021-10-19 10:30:10', 'A01', '1', 1, NULL);
INSERT INTO `sys_category` VALUES ('1450288134951563265', '1450288104739991553', '???????????????', 'B04A03A01', 'ceshi', '2021-10-19 10:30:11', NULL, NULL, 'A01', NULL, 1, NULL);
INSERT INTO `sys_category` VALUES ('1450288212390998018', '1450288104739991553', '??????', 'B04A03A03', 'ceshi', '2021-10-19 10:30:29', NULL, NULL, 'A01', NULL, 1, NULL);
INSERT INTO `sys_category` VALUES ('1448919819863777282', '0', '????????????', 'B05', 'ceshi', '2021-10-15 15:52:59', 'ceshi', '2021-11-24 18:24:39', 'A01', '0', 2, 1);
INSERT INTO `sys_category` VALUES ('1448923264612098049', '0', '????????????', 'B06', 'ceshi', '2021-10-15 16:06:40', 'ceshi', '2021-12-28 11:17:28', 'A01', '1', 3, NULL);

-- ----------------------------
-- Table structure for sys_check_rule
-- ----------------------------
DROP TABLE IF EXISTS `sys_check_rule`;
CREATE TABLE `sys_check_rule`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????id',
  `rule_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `rule_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????Code',
  `rule_json` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '??????JSON',
  `rule_description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  UNIQUE INDEX `uk_scr_rule_code`(`rule_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_check_rule
-- ----------------------------
INSERT INTO `sys_check_rule` VALUES ('1224980593992388610', '??????????????????', 'common', '[{\"digits\":\"1\",\"pattern\":\"^[a-z|A-Z]$\",\"message\":\"????????????????????????\"},{\"digits\":\"*\",\"pattern\":\"^[0-9|a-z|A-Z|_]{0,}$\",\"message\":\"????????????????????????????????????????????????\"},{\"digits\":\"*\",\"pattern\":\"^.{3,}$\",\"message\":\"????????????3??????\"},{\"digits\":\"*\",\"pattern\":\"^.{3,12}$\",\"message\":\"????????????12??????\"}]', '?????????1???????????????????????????2??????????????????????????????????????????????????????3?????????3???????????????12?????????', 'admin', '2020-02-07 11:25:48', 'admin', '2020-02-05 16:58:27');
INSERT INTO `sys_check_rule` VALUES ('1225001845524004866', '?????????????????????', 'test', '[{\"digits\":\"*\",\"pattern\":\"^.{3,12}$\",\"message\":\"????????????3-12?????????\"},{\"digits\":\"3\",\"pattern\":\"^\\\\d{3}$\",\"message\":\"???3??????????????????\"},{\"digits\":\"*\",\"pattern\":\"^[^pP]*$\",\"message\":\"????????????P\"},{\"digits\":\"4\",\"pattern\":\"^@{4}$\",\"message\":\"???4-7??????????????? @\"},{\"digits\":\"2\",\"pattern\":\"^#=$\",\"message\":\"???8-9???????????? #=\"},{\"digits\":\"1\",\"pattern\":\"^O$\",\"message\":\"???10?????????????????????O\"},{\"digits\":\"*\",\"pattern\":\"^.*???$\",\"message\":\"??????????????????\"}]', '??????????????????????????????????????????', 'admin', '2020-02-07 11:57:31', 'admin', '2020-02-05 18:22:54');

-- ----------------------------
-- Table structure for sys_data_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_data_log`;
CREATE TABLE `sys_data_log`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????????????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????????????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `data_table` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `data_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????ID',
  `data_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '????????????',
  `data_version` decimal(11, 0) NULL DEFAULT NULL COMMENT '?????????',
  INDEX `idx_sdl_data_table_id`(`data_table`, `data_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_data_source
-- ----------------------------
DROP TABLE IF EXISTS `sys_data_source`;
CREATE TABLE `sys_data_source`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???????????????',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???????????????',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `db_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???????????????',
  `db_driver` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `db_url` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '???????????????',
  `db_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???????????????',
  `db_username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `db_password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `sys_org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  UNIQUE INDEX `uk_sdc_rule_code`(`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_data_source
-- ----------------------------
INSERT INTO `sys_data_source` VALUES ('1209779538310004737', 'local_mysql', 'MySQL5.7', '???????????????MySQL5.7', '1', 'com.mysql.jdbc.Driver', 'jdbc:mysql://127.0.0.1:3306/jeecg-boot?characterEncoding=UTF-8&useUnicode=true&useSSL=false', 'jeecg-boot', 'root', 'f5b6775e8d1749483f2320627de0e706', 'admin', '2019-12-25 18:14:53', 'admin', '2020-07-10 16:54:42', 'A01');

-- ----------------------------
-- Table structure for sys_depart
-- ----------------------------
DROP TABLE IF EXISTS `sys_depart`;
CREATE TABLE `sys_depart`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `parent_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????ID',
  `depart_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????/????????????',
  `depart_name_en` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '?????????',
  `depart_name_abbr` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '??????',
  `depart_order` decimal(11, 0) NULL DEFAULT NULL COMMENT '??????',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '??????',
  `org_category` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '???????????? 1?????????2???????????????2??????',
  `org_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???????????? 1???????????? 2?????????',
  `org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????',
  `mobile` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `fax` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `memo` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '??????',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????1?????????0????????????',
  `del_flag` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???????????????0????????????1????????????',
  `qywx_identifier` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????????????????ID',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  UNIQUE INDEX `uniq_depart_org_code`(`org_code`) USING BTREE,
  INDEX `idx_sd_depart_order`(`depart_order`) USING BTREE,
  INDEX `idx_sd_parent_id`(`parent_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '???????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_depart
-- ----------------------------
INSERT INTO `sys_depart` VALUES ('f79b7d5a99b1442c876858a6961cb1fb', NULL, '????????????', NULL, NULL, 0, NULL, '1', '1', 'A01', NULL, NULL, NULL, 'root', NULL, '0', NULL, 'ceshi', '2021-10-14 16:41:10', NULL, NULL);
INSERT INTO `sys_depart` VALUES ('10c6c58575c24db297d838ec5c5f813d', NULL, '?????????', NULL, NULL, 0, NULL, '1', '1', 'A04', NULL, NULL, NULL, NULL, NULL, '0', NULL, 'ceshi', '2021-10-21 16:29:03', 'ceshi', '2021-10-21 16:29:15');
INSERT INTO `sys_depart` VALUES ('a06041ec62674810983326ae552ced92', NULL, '????????????', NULL, NULL, 0, NULL, '1', '1', 'A05', NULL, NULL, NULL, NULL, NULL, '0', NULL, 'ceshi', '2021-10-21 16:30:10', 'ceshi', '2021-10-28 10:55:17');
INSERT INTO `sys_depart` VALUES ('e615307e7b684f15885ef6da29f6771d', 'a06041ec62674810983326ae552ced92', '????????????', NULL, NULL, 1, NULL, '2', '2', 'A05A01', NULL, NULL, NULL, NULL, NULL, '0', NULL, 'ceshi', '2021-10-28 10:55:59', NULL, NULL);
INSERT INTO `sys_depart` VALUES ('e0c42ad532b24b5fb76e44e9ecc03389', 'e615307e7b684f15885ef6da29f6771d', '???????????????', NULL, NULL, 1, NULL, '2', '3', 'A05A01A01', NULL, NULL, NULL, NULL, NULL, '0', NULL, 'ceshi', '2021-10-28 10:58:15', NULL, NULL);
INSERT INTO `sys_depart` VALUES ('2d9f7327dc2e4cf2b62d058a2c422534', 'e615307e7b684f15885ef6da29f6771d', '?????????', NULL, NULL, 2, NULL, '2', '3', 'A05A01A02', NULL, NULL, NULL, NULL, NULL, '0', NULL, 'ceshi', '2021-10-28 10:58:28', NULL, NULL);
INSERT INTO `sys_depart` VALUES ('7aeb44fb58da45b484ab63b338acf738', 'e615307e7b684f15885ef6da29f6771d', '?????????', NULL, NULL, 3, NULL, '2', '3', 'A05A01A03', NULL, NULL, NULL, NULL, NULL, '0', NULL, 'ceshi', '2021-10-28 10:58:42', NULL, NULL);
INSERT INTO `sys_depart` VALUES ('5eebbb70b6e24289933613b83c19c92b', 'a06041ec62674810983326ae552ced92', '????????????', NULL, NULL, 2, NULL, '2', '2', 'A05A02', NULL, NULL, NULL, NULL, NULL, '0', NULL, 'ceshi', '2021-10-28 10:56:20', NULL, NULL);
INSERT INTO `sys_depart` VALUES ('2b098c54e19943fb8246e1c1162a63a2', '5eebbb70b6e24289933613b83c19c92b', '?????????????????????', NULL, NULL, 1, NULL, '2', '3', 'A05A02A01', NULL, NULL, NULL, NULL, NULL, '0', NULL, 'ceshi', '2021-10-28 10:59:21', NULL, NULL);
INSERT INTO `sys_depart` VALUES ('8ef9c3c7e11e4fe0b2d457803b85cd24', 'a06041ec62674810983326ae552ced92', '????????????', NULL, NULL, 3, NULL, '2', '2', 'A05A03', NULL, NULL, NULL, NULL, NULL, '0', NULL, 'ceshi', '2021-10-28 10:56:29', NULL, NULL);
INSERT INTO `sys_depart` VALUES ('d28c13eaaa1d4655ac4a1cd248d10158', '8ef9c3c7e11e4fe0b2d457803b85cd24', '?????????', NULL, NULL, 1, NULL, '2', '3', 'A05A03A01', NULL, NULL, NULL, NULL, NULL, '0', NULL, 'ceshi', '2021-10-28 11:00:47', NULL, NULL);
INSERT INTO `sys_depart` VALUES ('02e9449426374c099d59d31ba9142520', '8ef9c3c7e11e4fe0b2d457803b85cd24', '?????????', NULL, NULL, 2, NULL, '2', '3', 'A05A03A02', NULL, NULL, NULL, NULL, NULL, '0', NULL, 'ceshi', '2021-10-28 11:01:11', NULL, NULL);
INSERT INTO `sys_depart` VALUES ('3995768f0b814cb6ba09a12f833c70f5', '8ef9c3c7e11e4fe0b2d457803b85cd24', '???????????????', NULL, NULL, 3, NULL, '2', '3', 'A05A03A03', NULL, NULL, NULL, NULL, NULL, '0', NULL, 'ceshi', '2021-10-28 11:01:29', NULL, NULL);
INSERT INTO `sys_depart` VALUES ('93732fbb0ff14965a337fc27972c6f4d', 'a06041ec62674810983326ae552ced92', '????????????', NULL, NULL, 4, NULL, '2', '2', 'A05A04', NULL, NULL, NULL, NULL, NULL, '0', NULL, 'ceshi', '2021-10-28 10:56:40', NULL, NULL);
INSERT INTO `sys_depart` VALUES ('35ccd833985b475a975e4b46eb4cf127', '93732fbb0ff14965a337fc27972c6f4d', '?????????', NULL, NULL, 1, NULL, '2', '3', 'A05A04A01', NULL, NULL, NULL, NULL, NULL, '0', NULL, 'ceshi', '2021-10-28 11:01:46', NULL, NULL);
INSERT INTO `sys_depart` VALUES ('fb8b5f2a6d5d40508b9523434e44d536', '93732fbb0ff14965a337fc27972c6f4d', '???????????????', NULL, NULL, 2, NULL, '2', '3', 'A05A04A02', NULL, NULL, NULL, NULL, NULL, '0', NULL, 'ceshi', '2021-10-28 11:01:57', NULL, NULL);
INSERT INTO `sys_depart` VALUES ('c66be80d393b45af85ad2f1b307785e9', '93732fbb0ff14965a337fc27972c6f4d', '?????????', NULL, NULL, 3, NULL, '2', '3', 'A05A04A03', NULL, NULL, NULL, NULL, NULL, '0', NULL, 'ceshi', '2021-10-28 11:02:12', NULL, NULL);
INSERT INTO `sys_depart` VALUES ('1fbd9362d9cd4f3b9781794ca1f509b8', '', 'test', NULL, NULL, 0, NULL, '1', '1', 'A06', NULL, NULL, NULL, NULL, NULL, '0', NULL, 'admin', '2022-01-06 15:00:32', NULL, NULL);

-- ----------------------------
-- Table structure for sys_depart_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_depart_permission`;
CREATE TABLE `sys_depart_permission`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `depart_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????id',
  `permission_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????id',
  `data_rule_ids` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '????????????id'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '???????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_depart_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_depart_role`;
CREATE TABLE `sys_depart_role`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `depart_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????id',
  `role_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????',
  `role_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '???????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_depart_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_depart_role_permission`;
CREATE TABLE `sys_depart_role_permission`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `depart_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????id',
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????id',
  `permission_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????id',
  `data_rule_ids` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '????????????ids',
  `operate_date` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `operate_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????ip',
  INDEX `idx_sdrp_per_id`(`permission_id`) USING BTREE,
  INDEX `idx_sdrp_role_id`(`role_id`) USING BTREE,
  INDEX `idx_sdrp_role_per_id`(`permission_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '?????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_depart_role_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_depart_role_user`;
CREATE TABLE `sys_depart_role_user`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????id',
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????id',
  `drole_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????id'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '?????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????',
  `dict_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `del_flag` decimal(11, 0) NULL DEFAULT NULL COMMENT '????????????',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `type` decimal(11, 0) NULL DEFAULT NULL COMMENT '????????????0???string,1???number',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('0b5d19e1fce4b2e6647e6b4a17760c14', '????????????', 'msg_category', '????????????1:????????????2:????????????', 0, 'admin', '2019-04-22 18:01:35', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1174509082208395266', '????????????', 'position_rank', '?????????????????????', 0, 'admin', '2019-09-19 10:22:41', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1174511106530525185', '????????????', 'org_category', '???????????? 1?????????2?????? 3??????', 0, 'admin', '2019-09-19 10:30:43', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1178295274528845826', '??????????????????', 'form_perms_type', NULL, 0, 'admin', '2019-09-29 21:07:39', 'admin', '2019-09-29 21:08:26', NULL);
INSERT INTO `sys_dict` VALUES ('1199517671259906049', '????????????', 'urgent_level', '????????????????????????', 0, 'admin', '2019-11-27 10:37:53', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1199518099888414722', '??????????????????', 'eoa_plan_type', NULL, 0, 'admin', '2019-11-27 10:39:36', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1199520177767587841', '??????????????????', 'eoa_cms_menu_type', NULL, 0, 'admin', '2019-11-27 10:47:51', 'admin', '2019-11-27 10:49:35', 0);
INSERT INTO `sys_dict` VALUES ('1199525215290306561', '??????????????????', 'eoa_plan_status', NULL, 0, 'admin', '2019-11-27 11:07:52', 'admin', '2019-11-27 11:10:11', 0);
INSERT INTO `sys_dict` VALUES ('1209733563293962241', '???????????????', 'database_type', NULL, 0, 'admin', '2019-12-25 15:12:12', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1232913193820581889', 'Online??????????????????', 'ol_form_biz_type', NULL, 0, 'admin', '2020-02-27 14:19:46', 'admin', '2020-02-27 14:20:23', 0);
INSERT INTO `sys_dict` VALUES ('1250687930947620866', '??????????????????', 'quartz_status', NULL, 0, 'admin', '2020-04-16 15:30:14', NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES ('1280401766745718786', '????????????', 'tenant_status', '????????????', 0, 'admin', '2020-07-07 15:22:25', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1356445645198135298', '??????', 'is_open', NULL, 0, 'admin', '2021-02-02 11:33:38', 'admin', '2021-02-02 15:28:12', 0);
INSERT INTO `sys_dict` VALUES ('1415509679443714049', '????????????', 'km_dict_business', '????????????', 0, 'admin', '2021-07-14 22:13:01', 'admin', '2021-07-29 17:16:56', 0);
INSERT INTO `sys_dict` VALUES ('1415572544998932482', '????????????', 'km_dict_source', '????????????', 0, 'admin', '2021-07-15 02:22:49', 'admin', '2021-07-29 17:16:51', 0);
INSERT INTO `sys_dict` VALUES ('1415574243599777794', '????????????', 'km_dict_category', '????????????', 0, 'admin', '2021-07-15 02:29:34', 'admin', '2021-07-29 17:16:46', 0);
INSERT INTO `sys_dict` VALUES ('1415575033756319746', '??????????????????', 'km_dict_versions', '??????????????????', 0, 'admin', '2021-07-15 02:32:43', 'admin', '2021-07-29 17:16:40', 0);
INSERT INTO `sys_dict` VALUES ('1418495479619317761', '????????????', 'dict_fti_flag', NULL, 0, 'admin', '2021-07-23 03:57:31', 'admin', '2021-07-23 04:04:33', 0);
INSERT INTO `sys_dict` VALUES ('1420563456950808577', '????????????', 'dict_doc_visit_type', '????????????-????????????', 0, 'admin', '2021-07-29 09:54:56', 'admin', '2021-07-29 10:06:39', 0);
INSERT INTO `sys_dict` VALUES ('1435461054779015169', '????????????', 'doc_dict_status', NULL, 0, 'admin', '2021-09-08 12:32:40', 'admin', '2021-09-08 12:46:04', 0);
INSERT INTO `sys_dict` VALUES ('1435763999777144834', '????????????', 'dict_statisticsType', NULL, 0, 'admin', '2021-09-09 08:36:27', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1446749054125019137', '????????????', 'dict_is_open', NULL, 1, 'admin', '2021-10-09 16:07:08', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1448189415518433282', '??????', 'km_dict_year', '????????????', 0, 'admin', '2021-10-13 15:30:37', 'ceshi', '2021-10-14 23:12:52', 0);
INSERT INTO `sys_dict` VALUES ('1450412344901677057', '????????????', 'km_dict_public_remark', '????????????', 0, 'ceshi', '2021-10-19 18:43:45', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('236e8a4baff0db8c62c00dd95632834f', '?????????????????????', 'activiti_sync', '?????????????????????', 0, 'admin', '2019-05-15 15:27:33', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('2e02df51611a4b9632828ab7e5338f00', '????????????', 'perms_type', '????????????', 0, 'admin', '2019-04-26 18:26:55', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('2f0320997ade5dd147c90130f7218c3e', '????????????', 'msg_type', NULL, 0, 'admin', '2019-03-17 21:21:32', 'admin', '2019-03-26 19:57:45', 0);
INSERT INTO `sys_dict` VALUES ('3486f32803bb953e7155dab3513dc68b', '????????????', 'del_flag', NULL, 0, 'admin', '2019-01-18 21:46:26', 'admin', '2019-03-30 11:17:11', 0);
INSERT INTO `sys_dict` VALUES ('3d9a351be3436fbefb1307d4cfb49bf2', '??????', 'sex', NULL, 0, NULL, '2019-01-04 14:56:32', 'admin', '2019-03-30 11:28:27', 1);
INSERT INTO `sys_dict` VALUES ('4274efc2292239b6f000b153f50823ff', '??????????????????', 'global_perms_type', '??????????????????', 0, 'admin', '2019-05-10 17:54:05', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('4c03fca6bf1f0299c381213961566349', 'Online??????????????????', 'online_graph_display_template', 'Online??????????????????', 0, 'admin', '2019-04-12 17:28:50', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('4c753b5293304e7a445fd2741b46529d', '????????????', 'dict_item_status', NULL, 0, 'admin', '2020-06-18 23:18:42', 'admin', '2019-03-30 19:33:52', 1);
INSERT INTO `sys_dict` VALUES ('4d7fec1a7799a436d26d02325eff295e', '?????????', 'priority', '?????????', 0, 'admin', '2019-03-16 17:03:34', 'admin', '2019-04-16 17:39:23', 0);
INSERT INTO `sys_dict` VALUES ('4e4602b3e3686f0911384e188dc7efb4', '????????????', 'rule_conditions', NULL, 0, 'admin', '2019-04-01 10:15:03', 'admin', '2019-04-01 10:30:47', 0);
INSERT INTO `sys_dict` VALUES ('4f69be5f507accea8d5df5f11346181a', '??????????????????', 'msgType', NULL, 0, 'admin', '2019-04-11 14:27:09', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('68168534ff5065a152bfab275c2136f8', '??????????????????', 'valid_status', '??????????????????', 0, 'admin', '2020-09-26 19:21:14', 'admin', '2019-04-26 19:21:23', 0);
INSERT INTO `sys_dict` VALUES ('6b78e3f59faec1a4750acff08030a79b', '????????????', 'user_type', NULL, 0, NULL, '2019-01-04 14:59:01', 'admin', '2019-03-18 23:28:18', 0);
INSERT INTO `sys_dict` VALUES ('72cce0989df68887546746d8f09811aa', 'Online????????????', 'cgform_table_type', NULL, 0, 'admin', '2019-01-27 10:13:02', 'admin', '2019-03-30 11:37:36', 0);
INSERT INTO `sys_dict` VALUES ('78bda155fe380b1b3f175f1e88c284c6', '????????????', 'bpm_status', '????????????', 0, 'admin', '2019-05-09 16:31:52', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('83bfb33147013cc81640d5fd9eda030c', '????????????', 'log_type', NULL, 0, 'admin', '2019-03-18 23:22:19', NULL, NULL, 1);
INSERT INTO `sys_dict` VALUES ('845da5006c97754728bf48b6a10f79cc', '??????', 'status', NULL, 0, 'admin', '2019-03-18 21:45:25', 'admin', '2019-03-18 21:58:25', 0);
INSERT INTO `sys_dict` VALUES ('880a895c98afeca9d9ac39f29e67c13e', '????????????', 'operate_type', '????????????', 0, 'admin', '2019-07-22 10:54:29', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('8dfe32e2d29ea9430a988b3b558bf233', '????????????', 'send_status', '????????????', 0, 'admin', '2019-04-16 17:40:42', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('a7adbcd86c37f7dbc9b66945c82ef9e6', '1???0???', 'yn', NULL, 0, 'admin', '2019-05-22 19:29:29', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('a9d9942bd0eccb6e89de92d130ec4c4a', '??????????????????', 'msgSendStatus', NULL, 0, 'admin', '2019-04-12 18:18:17', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('ac2f7c0c5c5775fcea7e2387bcb22f01', '????????????', 'menu_type', NULL, 0, 'admin', '2020-12-18 23:24:32', 'admin', '2019-04-01 15:27:06', 1);
INSERT INTO `sys_dict` VALUES ('ad7c65ba97c20a6805d5dcdf13cdaf36', 'onlineT??????', 'ceshi_online', NULL, 0, 'admin', '2019-03-22 16:31:49', 'admin', '2019-03-22 16:34:16', 0);
INSERT INTO `sys_dict` VALUES ('bd1b8bc28e65d6feefefb6f3c79f42fd', 'Online??????????????????', 'online_graph_data_type', 'Online??????????????????', 0, 'admin', '2019-04-12 17:24:24', 'admin', '2019-04-12 17:24:57', 0);
INSERT INTO `sys_dict` VALUES ('c36169beb12de8a71c8683ee7c28a503', '????????????', 'depart_status', NULL, 0, 'admin', '2019-03-18 21:59:51', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('c5a14c75172783d72cbee6ee7f5df5d1', 'Online????????????', 'online_graph_type', 'Online????????????', 0, 'admin', '2019-04-12 17:04:06', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('d6e1152968b02d69ff358c75b48a6ee1', '????????????', 'bpm_process_type', NULL, 0, 'admin', '2021-02-22 19:26:54', 'admin', '2019-03-30 18:14:44', 0);
INSERT INTO `sys_dict` VALUES ('fc6cd58fde2e8481db10d3a1e68ce70c', '????????????', 'user_status', NULL, 0, 'admin', '2019-03-18 21:57:25', 'admin', '2019-03-18 23:11:58', 1);

-- ----------------------------
-- Table structure for sys_dict_item
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_item`;
CREATE TABLE `sys_dict_item`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dict_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????id',
  `item_text` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '???????????????',
  `item_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `sort_order` decimal(11, 0) NULL DEFAULT NULL COMMENT '??????',
  `status` decimal(11, 0) NULL DEFAULT NULL COMMENT '?????????1?????? 0????????????',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_item
-- ----------------------------
INSERT INTO `sys_dict_item` VALUES ('f16c5706f3ae05c57a53850c64ce7c45', 'a9d9942bd0eccb6e89de92d130ec4c4a', '????????????', '1', NULL, 2, 1, 'admin', '2019-04-12 18:19:43', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('f2a7920421f3335afdf6ad2b342f6b5d', '845da5006c97754728bf48b6a10f79cc', '??????', '2', NULL, NULL, 1, 'admin', '2019-03-18 21:46:02', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('f37f90c496ec9841c4c326b065e00bb2', '83bfb33147013cc81640d5fd9eda030c', '????????????', '1', NULL, NULL, 1, 'admin', '2019-03-18 23:22:37', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('f753aff60ff3931c0ecb4812d8b5e643', '4c03fca6bf1f0299c381213961566349', '????????????', 'double', NULL, 3, 1, 'admin', '2019-04-12 17:43:51', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('f80a8f6838215753b05e1a5ba3346d22', '880a895c98afeca9d9ac39f29e67c13e', '??????', '4', NULL, 4, 1, 'admin', '2019-07-22 10:55:14', 'admin', '2019-07-22 10:55:30');
INSERT INTO `sys_dict_item` VALUES ('fcec03570f68a175e1964808dc3f1c91', '4c03fca6bf1f0299c381213961566349', 'Tab??????', 'tab', NULL, 1, 1, 'admin', '2019-04-12 17:43:31', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('fe50b23ae5e68434def76f67cef35d2d', '78bda155fe380b1b3f175f1e88c284c6', '?????????', '4', '?????????', 4, 1, 'admin', '2021-09-09 16:33:43', 'admin', '2019-05-09 16:34:40');
INSERT INTO `sys_dict_item` VALUES ('1420564005536411661', '1420563456950808577', '??????', '6', '??????', 6, 1, 'admin', '2021-07-29 09:57:06', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1420564005536411664', '1420563456950808577', '??????', '7', '??????', 7, 1, 'admin', '2021-07-29 09:57:06', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1450412465588580354', '1450412344901677057', '????????????', '1', NULL, 1, 1, NULL, '2021-10-19 18:44:14', 'ceshi', '2021-11-12 01:33:39');
INSERT INTO `sys_dict_item` VALUES ('1450412578524409857', '1450412344901677057', '???????????????', '2', NULL, 2, 1, NULL, '2021-10-19 18:44:41', 'ceshi', '2021-10-19 19:10:43');
INSERT INTO `sys_dict_item` VALUES ('1450412635868934145', '1450412344901677057', '?????????', '3', NULL, 3, 1, NULL, '2021-10-19 18:44:54', 'ceshi', '2021-10-19 19:10:53');
INSERT INTO `sys_dict_item` VALUES ('0072d115e07c875d76c9b022e2179128', '4d7fec1a7799a436d26d02325eff295e', '???', 'L', '???', 3, 1, 'admin', '2019-04-16 17:04:59', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('05a2e732ce7b00aa52141ecc3e330b4e', '3486f32803bb953e7155dab3513dc68b', '?????????', '1', NULL, NULL, 1, 'admin', '2025-10-18 21:46:56', 'admin', '2019-03-28 22:23:20');
INSERT INTO `sys_dict_item` VALUES ('096c2e758d823def3855f6376bc736fb', 'bd1b8bc28e65d6feefefb6f3c79f42fd', 'SQL', 'sql', NULL, 1, 1, 'admin', '2019-04-12 17:26:26', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('0c9532916f5cd722017b46bc4d953e41', '2f0320997ade5dd147c90130f7218c3e', '????????????', 'USER', NULL, NULL, 1, 'admin', '2019-03-17 21:22:19', 'admin', '2019-03-17 21:22:28');
INSERT INTO `sys_dict_item` VALUES ('0ca4beba9efc4f9dd54af0911a946d5c', '72cce0989df68887546746d8f09811aa', '??????', '3', NULL, 3, 1, 'admin', '2019-03-27 10:13:43', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1030a2652608f5eac3b49d70458b8532', '2e02df51611a4b9632828ab7e5338f00', '??????', '2', '??????', 2, 1, 'admin', '2021-03-26 18:27:28', 'admin', '2019-04-26 18:39:11');
INSERT INTO `sys_dict_item` VALUES ('1174509082208395266', '1174511106530525185', '??????', '3', '??????', 1, 1, 'admin', '2019-09-19 10:31:16', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1174509601047994369', '1174509082208395266', '??????', '1', NULL, 1, 1, 'admin', '2019-09-19 10:24:45', 'admin', '2019-09-23 11:46:39');
INSERT INTO `sys_dict_item` VALUES ('1174509667297026049', '1174509082208395266', '??????', '2', NULL, 2, 1, 'admin', '2019-09-19 10:25:01', 'admin', '2019-09-23 11:46:47');
INSERT INTO `sys_dict_item` VALUES ('1174509713568587777', '1174509082208395266', '??????', '3', NULL, 3, 1, 'admin', '2019-09-19 10:25:12', 'admin', '2019-09-23 11:46:56');
INSERT INTO `sys_dict_item` VALUES ('1174509788361416705', '1174509082208395266', '?????????', '4', NULL, 4, 1, 'admin', '2019-09-19 10:25:30', 'admin', '2019-09-23 11:47:06');
INSERT INTO `sys_dict_item` VALUES ('1174509835803189250', '1174509082208395266', '?????????', '5', NULL, 5, 1, 'admin', '2019-09-19 10:25:41', 'admin', '2019-09-23 11:47:12');
INSERT INTO `sys_dict_item` VALUES ('1174511197735665665', '1174511106530525185', '??????', '1', '??????', 1, 1, 'admin', '2019-09-19 10:31:05', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1174511244036587521', '1174511106530525185', '??????', '2', '??????', 1, 1, 'admin', '2019-09-19 10:31:16', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1178295553450061826', '1178295274528845826', '?????????(???????????????)', '2', NULL, 2, 1, 'admin', '2019-09-29 21:08:46', 'admin', '2019-09-29 21:09:18');
INSERT INTO `sys_dict_item` VALUES ('1178295639554928641', '1178295274528845826', '??????(??????????????????)', '1', NULL, 1, 1, 'admin', '2019-09-29 21:09:06', 'admin', '2019-09-29 21:09:24');
INSERT INTO `sys_dict_item` VALUES ('1199517884758368257', '1199517671259906049', '??????', '1', NULL, 1, 1, 'admin', '2019-11-27 10:38:44', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199517914017832962', '1199517671259906049', '??????', '2', NULL, 1, 1, 'admin', '2019-11-27 10:38:51', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199517941339529217', '1199517671259906049', '??????', '3', NULL, 1, 1, 'admin', '2019-11-27 10:38:58', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199518186144276482', '1199518099888414722', '????????????', '1', NULL, 1, 1, 'admin', '2019-11-27 10:39:56', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199518214858481666', '1199518099888414722', '????????????', '2', NULL, 1, 1, 'admin', '2019-11-27 10:40:03', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199518235943247874', '1199518099888414722', '????????????', '3', NULL, 1, 1, 'admin', '2019-11-27 10:40:08', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199520817285701634', '1199520177767587841', '??????', '1', NULL, 1, 1, 'admin', '2019-11-27 10:50:24', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199520835035996161', '1199520177767587841', '??????', '2', NULL, 1, 1, 'admin', '2019-11-27 10:50:28', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199525468672405505', '1199525215290306561', '?????????', '0', NULL, 1, 1, 'admin', '2019-11-27 11:08:52', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199525490575060993', '1199525215290306561', '?????????', '1', NULL, 1, 1, 'admin', '2019-11-27 11:08:58', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199525506429530114', '1199525215290306561', '?????????', '2', NULL, 1, 1, 'admin', '2019-11-27 11:09:02', 'admin', '2019-11-27 11:10:02');
INSERT INTO `sys_dict_item` VALUES ('1199607547704647681', '4f69be5f507accea8d5df5f11346181a', '??????', '4', NULL, 1, 1, 'admin', '2019-11-27 16:35:02', 'admin', '2019-11-27 19:37:46');
INSERT INTO `sys_dict_item` VALUES ('1209733775114702850', '1209733563293962241', 'MySQL5.5', '1', NULL, 1, 1, 'admin', '2019-12-25 15:13:02', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1209733839933476865', '1209733563293962241', 'Oracle', '2', NULL, 3, 1, 'admin', '2019-12-25 15:13:18', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1209733903020003330', '1209733563293962241', 'SQLServer', '3', NULL, 4, 1, 'admin', '2019-12-25 15:13:33', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1232913424813486081', '1232913193820581889', '????????????', 'demo', NULL, 1, 1, 'admin', '2020-02-27 14:20:42', 'admin', '2020-02-27 14:21:37');
INSERT INTO `sys_dict_item` VALUES ('1232913493717512194', '1232913193820581889', '????????????', 'bpm', NULL, 2, 1, 'admin', '2020-02-27 14:20:58', 'admin', '2020-02-27 14:22:20');
INSERT INTO `sys_dict_item` VALUES ('1232913605382467585', '1232913193820581889', '????????????', 'temp', NULL, 4, 1, 'admin', '2020-02-27 14:21:25', 'admin', '2020-02-27 14:22:16');
INSERT INTO `sys_dict_item` VALUES ('1232914232372195330', '1232913193820581889', '????????????', 'bdfl_include', NULL, 5, 1, 'admin', '2020-02-27 14:23:54', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1234371726545010689', '4e4602b3e3686f0911384e188dc7efb4', '?????????', 'LEFT_LIKE', '?????????', 7, 1, 'admin', '2020-03-02 14:55:27', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1234371809495760898', '4e4602b3e3686f0911384e188dc7efb4', '?????????', 'RIGHT_LIKE', '?????????', 7, 1, 'admin', '2020-03-02 14:55:47', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1250688147579228161', '1250687930947620866', '??????', '0', NULL, 1, 1, 'admin', '2020-04-16 15:31:05', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1250688201064992770', '1250687930947620866', '??????', '-1', NULL, 1, 1, 'admin', '2020-04-16 15:31:18', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1280401815068295170', '1280401766745718786', '??????', '1', NULL, 1, 1, 'admin', '2020-07-07 15:22:36', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1280401847607705602', '1280401766745718786', '??????', '0', NULL, 1, 1, 'admin', '2020-07-07 15:22:44', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1305827309355302914', 'bd1b8bc28e65d6feefefb6f3c79f42fd', 'API', 'api', NULL, 3, 1, 'admin', '2020-09-15 19:14:26', 'admin', '2020-09-15 19:14:41');
INSERT INTO `sys_dict_item` VALUES ('1334440962954936321', '1209733563293962241', 'MYSQL5.7', '4', NULL, 1, 1, 'admin', '2020-12-03 18:16:02', 'admin', '2020-12-03 18:16:02');
INSERT INTO `sys_dict_item` VALUES ('1356445705549975553', '1356445645198135298', '???', 'Y', NULL, 1, 1, 'admin', '2021-02-02 11:33:52', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1356445754212290561', '1356445645198135298', '???', 'N', NULL, 1, 1, 'admin', '2021-02-02 11:34:04', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1415510117652013057', '1415509679443714049', '????????????', '1', '', 1, 1, 'admin', '2021-07-14 22:14:46', 'ceshi', '2021-11-23 11:50:48');
INSERT INTO `sys_dict_item` VALUES ('1415512755764371457', '1415509679443714049', '????????????', '2', '', 1, 1, 'admin', '2021-07-14 22:25:15', 'ceshi', '2021-11-23 11:51:07');
INSERT INTO `sys_dict_item` VALUES ('1415512840657084418', '1415509679443714049', '????????????', '3', '', 1, 1, 'admin', '2021-07-14 22:25:35', 'ceshi', '2021-11-23 11:51:44');
INSERT INTO `sys_dict_item` VALUES ('1415512908009218049', '1415509679443714049', '????????????', '4', '', 1, 1, 'admin', '2021-07-14 22:25:51', 'ceshi', '2021-11-23 11:52:07');
INSERT INTO `sys_dict_item` VALUES ('1415512988313362433', '1415509679443714049', '????????????', '5', NULL, 1, 1, 'admin', '2021-07-14 22:26:10', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1415513052456853505', '1415509679443714049', '????????????', '6', '', 1, 1, 'admin', '2021-07-14 22:26:25', 'ceshi', '2021-11-23 11:54:12');
INSERT INTO `sys_dict_item` VALUES ('1415513104826933249', '1415509679443714049', '????????????', '7', '', 1, 1, 'admin', '2021-07-14 22:26:38', 'ceshi', '2021-11-23 11:54:29');
INSERT INTO `sys_dict_item` VALUES ('1415518346117292034', '1415509679443714049', '????????????', '8', '', 1, 1, 'admin', '2021-07-14 22:47:27', 'ceshi', '2021-11-23 11:54:44');
INSERT INTO `sys_dict_item` VALUES ('1415518423493812226', '1415509679443714049', '????????????', '9', '', 1, 1, 'admin', '2021-07-14 22:47:46', 'ceshi', '2021-11-23 13:52:59');
INSERT INTO `sys_dict_item` VALUES ('1415518535649501185', '1415509679443714049', '????????????', '10', '', 1, 1, 'admin', '2021-07-14 22:48:13', 'ceshi', '2021-11-23 13:53:32');
INSERT INTO `sys_dict_item` VALUES ('1415518651982716929', '1415509679443714049', '??????', '11', '', 1, 0, 'admin', '2021-07-14 22:48:40', 'ceshi', '2021-11-23 13:57:07');
INSERT INTO `sys_dict_item` VALUES ('1415518739014524929', '1415509679443714049', '????????????', '12', '', 1, 0, 'admin', '2021-07-14 22:49:01', 'ceshi', '2021-11-23 13:57:17');
INSERT INTO `sys_dict_item` VALUES ('1415518841401679874', '1415509679443714049', '????????????', '13', '', 1, 0, 'admin', '2021-07-14 22:49:26', 'ceshi', '2021-11-23 13:57:27');
INSERT INTO `sys_dict_item` VALUES ('1415518946661933057', '1415509679443714049', '????????????', '14', '', 1, 0, 'admin', '2021-07-14 22:49:51', 'ceshi', '2021-11-23 13:58:04');
INSERT INTO `sys_dict_item` VALUES ('1415519089138245634', '1415509679443714049', '????????????', '15', '', 1, 0, 'admin', '2021-07-14 22:50:25', 'ceshi', '2021-11-23 13:58:12');
INSERT INTO `sys_dict_item` VALUES ('1415519256226734082', '1415509679443714049', '????????????', '16', '', 1, 0, 'admin', '2021-07-14 22:51:04', 'ceshi', '2021-11-23 13:58:29');
INSERT INTO `sys_dict_item` VALUES ('1415519311788679170', '1415509679443714049', '????????????', '17', '', 1, 0, 'admin', '2021-07-14 22:51:18', 'ceshi', '2021-11-23 13:58:45');
INSERT INTO `sys_dict_item` VALUES ('1415519414536544257', '1415509679443714049', '????????????', '18', '', 1, 0, 'admin', '2021-07-14 22:51:42', 'ceshi', '2021-11-23 13:58:57');
INSERT INTO `sys_dict_item` VALUES ('1415519478847807490', '1415509679443714049', '??????', '19', '', 11, 1, 'admin', '2021-07-14 22:51:57', 'ceshi', '2021-11-23 13:55:27');
INSERT INTO `sys_dict_item` VALUES ('1415572705485586434', '1415572544998932482', '???????????????????????????', '1', NULL, 1, 1, 'admin', '2021-07-15 02:23:28', 'ceshi', '2021-10-15 16:44:35');
INSERT INTO `sys_dict_item` VALUES ('1415572764965011458', '1415572544998932482', '???????????????', '2', NULL, 1, 1, 'admin', '2021-07-15 02:23:42', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1415572821936242690', '1415572544998932482', '????????????', '3', NULL, 1, 1, 'admin', '2021-07-15 02:23:55', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1415572891293253634', '1415572544998932482', '?????????????????????', '4', NULL, 1, 1, 'admin', '2021-07-15 02:24:12', 'ceshi', '2021-10-15 16:44:49');
INSERT INTO `sys_dict_item` VALUES ('1415572979956645890', '1415572544998932482', '??????????????????', '5', NULL, 1, 1, 'admin', '2021-07-15 02:24:33', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1415573174215835649', '1415572544998932482', '??????????????????', '6', NULL, 1, 1, 'admin', '2021-07-15 02:25:19', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1415573266092064770', '1415572544998932482', '????????????????????????', '7', NULL, 1, 1, 'admin', '2021-07-15 02:25:41', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1415573399961665538', '1415572544998932482', '??????????????????', '8', NULL, 1, 1, 'admin', '2021-07-15 02:26:13', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1415573454684749826', '1415572544998932482', '????????????', '9', NULL, 1, 1, 'admin', '2021-07-15 02:26:26', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1415573499555414018', '1415572544998932482', '??????', '10', NULL, 1, 1, 'admin', '2021-07-15 02:26:37', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1415573567788351489', '1415572544998932482', '??????', '11', NULL, 1, 1, 'admin', '2021-07-15 02:26:53', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1415573676152389634', '1415572544998932482', '??????', '12', NULL, 1, 1, 'admin', '2021-07-15 02:27:19', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1415574342098812929', '1415574243599777794', '??????', '1', '', 1, 1, 'admin', '2021-07-15 02:29:58', 'ceshi', '2021-11-23 11:39:09');
INSERT INTO `sys_dict_item` VALUES ('1415574391214112769', '1415574243599777794', '??????', '2', '', 1, 1, 'admin', '2021-07-15 02:30:10', 'ceshi', '2021-11-23 11:39:18');
INSERT INTO `sys_dict_item` VALUES ('1415574432960020481', '1415574243599777794', '??????', '3', '', 1, 1, 'admin', '2021-07-15 02:30:20', 'ceshi', '2021-11-23 11:39:24');
INSERT INTO `sys_dict_item` VALUES ('1415574502241533954', '1415574243599777794', '??????', '4', '', 1, 1, 'admin', '2021-07-15 02:30:36', 'ceshi', '2021-11-23 11:39:43');
INSERT INTO `sys_dict_item` VALUES ('1415574564849909762', '1415574243599777794', '??????', '5', '', 1, 1, 'admin', '2021-07-15 02:30:51', 'ceshi', '2021-11-23 11:39:50');
INSERT INTO `sys_dict_item` VALUES ('1415574697549299713', '1415574243599777794', '??????', '7', '', 1, 1, 'admin', '2021-07-15 02:31:23', 'ceshi', '2021-11-23 11:40:23');
INSERT INTO `sys_dict_item` VALUES ('1415575114165321729', '1415575033756319746', '?????????', '1', NULL, 1, 1, 'admin', '2021-07-15 02:33:02', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1415575176530427906', '1415575033756319746', '?????????', '2', NULL, 1, 1, 'admin', '2021-07-15 02:33:17', 'ceshi', '2021-10-26 17:26:24');
INSERT INTO `sys_dict_item` VALUES ('1418496971277398018', '1418495479619317761', '????????????', '-1', NULL, 1, 1, 'admin', '2021-07-23 04:03:27', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1418497014818467842', '1418495479619317761', '????????????', '0', NULL, 1, 1, 'admin', '2021-07-23 04:03:37', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1418497058619584514', '1418495479619317761', '?????????', '1', NULL, 1, 1, 'admin', '2021-07-23 04:03:48', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1418497118333890561', '1418495479619317761', '???????????????', '2', NULL, 1, 1, 'admin', '2021-07-23 04:04:02', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1420563600144347137', '1420563456950808577', '??????', '0', '??????', 0, 1, 'admin', '2021-07-29 09:55:30', 'admin', '2021-07-29 09:55:57');
INSERT INTO `sys_dict_item` VALUES ('1420563852746305538', '1420563456950808577', '??????????????????', '3', '??????????????????', 3, 1, 'admin', '2021-07-29 09:56:30', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1420563930554839041', '1420563456950808577', '??????', '4', '??????', 4, 1, 'admin', '2021-07-29 09:56:49', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1420564005536411650', '1420563456950808577', '??????', '5', '??????', 5, 1, 'admin', '2021-07-29 09:57:06', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1435461449668542466', '1435461054779015169', '??????', '0', NULL, 1, 1, 'admin', '2021-09-08 12:34:14', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1435461470677811202', '1435461054779015169', '?????????', '1', NULL, 1, 1, 'admin', '2021-09-08 12:34:19', 'admin', '2021-09-08 12:35:03');
INSERT INTO `sys_dict_item` VALUES ('1435461526139092994', '1435461054779015169', '????????????', '2', NULL, 1, 1, 'admin', '2021-09-08 12:34:32', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1435461599442944002', '1435461054779015169', '????????????', '3', NULL, 1, 1, 'admin', '2021-09-08 12:34:50', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1435764110502576129', '1435763999777144834', '??????', '1', NULL, 1, 1, 'admin', '2021-09-09 08:36:54', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1435764144711319554', '1435763999777144834', '??????', '2', NULL, 1, 1, 'admin', '2021-09-09 08:37:02', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1435764240131735554', '1435763999777144834', '????????????', '4', NULL, 1, 1, 'admin', '2021-09-09 08:37:25', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1435764293730746370', '1435763999777144834', '????????????', '5', NULL, 1, 1, 'admin', '2021-09-09 08:37:37', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1446749165269880833', '1446749054125019137', '??????', '0', NULL, 1, 1, 'admin', '2021-10-09 16:07:35', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1446749218503987201', '1446749054125019137', '?????????', '1', NULL, 1, 1, 'admin', '2021-10-09 16:07:48', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1448189485705916417', '1448189415518433282', '2021???', '2021', NULL, 2021, 1, NULL, '2021-10-13 15:30:54', NULL, '2021-10-13 15:31:47');
INSERT INTO `sys_dict_item` VALUES ('1448189539787272194', '1448189415518433282', '2022???', '2022', NULL, 2022, 1, NULL, '2021-10-13 15:31:07', NULL, '2021-10-13 15:31:59');
INSERT INTO `sys_dict_item` VALUES ('1448189588860628993', '1448189415518433282', '2020???', '2020', NULL, 2020, 1, NULL, '2021-10-13 15:31:19', NULL, '2021-10-13 15:31:54');
INSERT INTO `sys_dict_item` VALUES ('1448199169691152386', '1448189415518433282', '2019???', '2019', NULL, 2019, 1, NULL, '2021-10-13 16:09:23', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1448199236258951170', '1448189415518433282', '2018???', '2018', NULL, 2018, 1, NULL, '2021-10-13 16:09:39', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1448199306417074178', '1448189415518433282', '2023???', '2023', NULL, 2023, 1, NULL, '2021-10-13 16:09:56', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1448199379939028994', '1448189415518433282', '2024???', '2024', NULL, 2024, 1, NULL, '2021-10-13 16:10:13', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1448199445483417601', '1448189415518433282', '2025???', '2025', NULL, 2025, 1, NULL, '2021-10-13 16:10:29', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1448199700622929921', '1448189415518433282', '2017???', '2017', NULL, 2017, 1, NULL, '2021-10-13 16:11:30', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1448199760270127105', '1448189415518433282', '2016???', '2016', NULL, 2016, 1, NULL, '2021-10-13 16:11:44', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1448199814963851265', '1448189415518433282', '2015???', '2015', NULL, 2015, 1, NULL, '2021-10-13 16:11:57', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1448199899512631298', '1448189415518433282', '2026???', '2026', NULL, 2026, 1, NULL, '2021-10-13 16:12:17', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1448199976788488193', '1448189415518433282', '2027???', '2027', NULL, 2027, 1, NULL, '2021-10-13 16:12:35', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1448200037769474050', '1448189415518433282', '2028???', '2028', NULL, 2028, 1, NULL, '2021-10-13 16:12:50', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1448200113774456834', '1448189415518433282', '2029???', '2029', NULL, 2029, 1, NULL, '2021-10-13 16:13:08', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('147c48ff4b51545032a9119d13f3222a', 'd6e1152968b02d69ff358c75b48a6ee1', '????????????', 'test', NULL, 1, 1, 'admin', '2019-03-22 19:27:05', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1543fe7e5e26fb97cdafe4981bedc0c8', '4c03fca6bf1f0299c381213961566349', '????????????', 'single', NULL, 2, 1, 'admin', '2022-07-12 17:43:39', 'admin', '2019-04-12 17:43:57');
INSERT INTO `sys_dict_item` VALUES ('1ce390c52453891f93514c1bd2795d44', 'ad7c65ba97c20a6805d5dcdf13cdaf36', '000', '00', NULL, 1, 1, 'admin', '2019-03-22 16:34:34', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1db531bcff19649fa82a644c8a939dc4', '4c03fca6bf1f0299c381213961566349', '????????????', 'combination', NULL, 4, 1, 'admin', '2019-05-11 16:07:08', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('222705e11ef0264d4214affff1fb4ff9', '4f69be5f507accea8d5df5f11346181a', '??????', '1', NULL, 1, 1, 'admin', '2023-02-28 10:50:36', 'admin', '2019-04-28 10:58:11');
INSERT INTO `sys_dict_item` VALUES ('23a5bb76004ed0e39414e928c4cde155', '4e4602b3e3686f0911384e188dc7efb4', '?????????', '!=', '?????????', 3, 1, 'admin', '2019-04-01 16:46:15', 'admin', '2019-04-01 17:48:40');
INSERT INTO `sys_dict_item` VALUES ('25847e9cb661a7c711f9998452dc09e6', '4e4602b3e3686f0911384e188dc7efb4', '????????????', '<=', '????????????', 6, 1, 'admin', '2019-04-01 16:44:34', 'admin', '2019-04-01 17:49:10');
INSERT INTO `sys_dict_item` VALUES ('2d51376643f220afdeb6d216a8ac2c01', '68168534ff5065a152bfab275c2136f8', '??????', '1', '??????', 2, 1, 'admin', '2019-04-26 19:22:01', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('308c8aadf0c37ecdde188b97ca9833f5', '8dfe32e2d29ea9430a988b3b558bf233', '?????????', '1', '?????????', 2, 1, 'admin', '2019-04-16 17:41:24', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('333e6b2196e01ef9a5f76d74e86a6e33', '8dfe32e2d29ea9430a988b3b558bf233', '?????????', '0', '?????????', 1, 1, 'admin', '2019-04-16 17:41:12', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('337ea1e401bda7233f6258c284ce4f50', 'bd1b8bc28e65d6feefefb6f3c79f42fd', 'JSON', 'json', NULL, 1, 1, 'admin', '2019-04-12 17:26:33', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('33bc9d9f753cf7dc40e70461e50fdc54', 'a9d9942bd0eccb6e89de92d130ec4c4a', '????????????', '2', NULL, 3, 1, 'admin', '2019-04-12 18:20:02', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('3fbc03d6c994ae06d083751248037c0e', '78bda155fe380b1b3f175f1e88c284c6', '?????????', '3', '?????????', 3, 1, 'admin', '2019-05-09 16:33:25', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('41d7aaa40c9b61756ffb1f28da5ead8e', '0b5d19e1fce4b2e6647e6b4a17760c14', '????????????', '1', NULL, 1, 1, 'admin', '2019-04-22 18:01:57', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('41fa1e9571505d643aea87aeb83d4d76', '4e4602b3e3686f0911384e188dc7efb4', '??????', '=', '??????', 4, 1, 'admin', '2019-04-01 16:45:24', 'admin', '2019-04-01 17:49:00');
INSERT INTO `sys_dict_item` VALUES ('43d2295b8610adce9510ff196a49c6e9', '845da5006c97754728bf48b6a10f79cc', '??????', '1', NULL, NULL, 1, 'admin', '2019-03-18 21:45:51', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('4f05fb5376f4c61502c5105f52e4dd2b', '83bfb33147013cc81640d5fd9eda030c', '????????????', '2', NULL, NULL, 1, 'admin', '2019-03-18 23:22:49', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('50223341bfb5ba30bf6319789d8d17fe', 'd6e1152968b02d69ff358c75b48a6ee1', '????????????', 'business', NULL, 3, 1, 'admin', '2023-04-22 19:28:05', 'admin', '2019-03-22 23:24:39');
INSERT INTO `sys_dict_item` VALUES ('51222413e5906cdaf160bb5c86fb827c', 'a7adbcd86c37f7dbc9b66945c82ef9e6', '???', '1', NULL, 1, 1, 'admin', '2019-05-22 19:29:45', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('538fca35afe004972c5f3947c039e766', '2e02df51611a4b9632828ab7e5338f00', '??????', '1', '??????', 1, 1, 'admin', '2025-03-26 18:27:13', 'admin', '2019-04-26 18:39:07');
INSERT INTO `sys_dict_item` VALUES ('5584c21993bde231bbde2b966f2633ac', '4e4602b3e3686f0911384e188dc7efb4', '?????????SQL?????????', 'USE_SQL_RULES', '?????????SQL?????????', 9, 1, 'admin', '2019-04-01 10:45:24', 'admin', '2019-04-01 17:49:27');
INSERT INTO `sys_dict_item` VALUES ('58b73b344305c99b9d8db0fc056bbc0a', '72cce0989df68887546746d8f09811aa', '??????', '2', NULL, 2, 1, 'admin', '2019-03-27 10:13:36', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('5b65a88f076b32e8e69d19bbaadb52d5', '2f0320997ade5dd147c90130f7218c3e', '????????????', 'ALL', NULL, NULL, 1, 'admin', '2020-10-17 21:22:43', 'admin', '2019-03-28 22:17:09');
INSERT INTO `sys_dict_item` VALUES ('5d833f69296f691843ccdd0c91212b6b', '880a895c98afeca9d9ac39f29e67c13e', '??????', '3', NULL, 3, 1, 'admin', '2019-07-22 10:55:07', 'admin', '2019-07-22 10:55:41');
INSERT INTO `sys_dict_item` VALUES ('5d84a8634c8fdfe96275385075b105c9', '3d9a351be3436fbefb1307d4cfb49bf2', '???', '2', NULL, 2, 1, NULL, '2019-01-04 14:56:56', NULL, '2019-01-04 17:38:12');
INSERT INTO `sys_dict_item` VALUES ('66c952ae2c3701a993e7db58f3baf55e', '4e4602b3e3686f0911384e188dc7efb4', '??????', '>', '??????', 1, 1, 'admin', '2019-04-01 10:45:46', 'admin', '2019-04-01 17:48:29');
INSERT INTO `sys_dict_item` VALUES ('6937c5dde8f92e9a00d4e2ded9198694', 'ad7c65ba97c20a6805d5dcdf13cdaf36', 'easyui', '3', NULL, 1, 1, 'admin', '2019-03-22 16:32:15', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('69cacf64e244100289ddd4aa9fa3b915', 'a9d9942bd0eccb6e89de92d130ec4c4a', '?????????', '0', NULL, 1, 1, 'admin', '2019-04-12 18:19:23', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('6a7a9e1403a7943aba69e54ebeff9762', '4f69be5f507accea8d5df5f11346181a', '??????', '2', NULL, 2, 1, 'admin', '2031-02-28 10:50:44', 'admin', '2019-04-28 10:59:03');
INSERT INTO `sys_dict_item` VALUES ('6c682d78ddf1715baf79a1d52d2aa8c2', '72cce0989df68887546746d8f09811aa', '??????', '1', NULL, 1, 1, 'admin', '2019-03-27 10:13:29', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('6d404fd2d82311fbc87722cd302a28bc', '4e4602b3e3686f0911384e188dc7efb4', '??????', 'LIKE', '??????', 7, 1, 'admin', '2019-04-01 16:46:02', 'admin', '2019-04-01 17:49:20');
INSERT INTO `sys_dict_item` VALUES ('6d4e26e78e1a09699182e08516c49fc4', '4d7fec1a7799a436d26d02325eff295e', '???', 'H', '???', 1, 1, 'admin', '2019-04-16 17:04:24', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('700e9f030654f3f90e9ba76ab0713551', '6b78e3f59faec1a4750acff08030a79b', '333', '333', NULL, NULL, 1, 'admin', '2019-02-21 19:59:47', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('7050c1522702bac3be40e3b7d2e1dfd8', 'c5a14c75172783d72cbee6ee7f5df5d1', '?????????', 'bar', NULL, 1, 1, 'admin', '2019-04-12 17:05:17', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('71b924faa93805c5c1579f12e001c809', 'd6e1152968b02d69ff358c75b48a6ee1', 'OA??????', 'oa', NULL, 2, 1, 'admin', '2021-03-22 19:27:17', 'admin', '2019-03-22 23:24:36');
INSERT INTO `sys_dict_item` VALUES ('75b260d7db45a39fc7f21badeabdb0ed', 'c36169beb12de8a71c8683ee7c28a503', '?????????', '0', NULL, NULL, 1, 'admin', '2019-03-18 23:29:41', 'admin', '2019-03-18 23:29:54');
INSERT INTO `sys_dict_item` VALUES ('7688469db4a3eba61e6e35578dc7c2e5', 'c36169beb12de8a71c8683ee7c28a503', '??????', '1', NULL, NULL, 1, 'admin', '2019-03-18 23:29:28', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('78ea6cadac457967a4b1c4eb7aaa418c', 'fc6cd58fde2e8481db10d3a1e68ce70c', '??????', '1', NULL, NULL, 1, 'admin', '2019-03-18 23:30:28', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('7ccf7b80c70ee002eceb3116854b75cb', 'ac2f7c0c5c5775fcea7e2387bcb22f01', '????????????', '2', NULL, NULL, 1, 'admin', '2019-03-18 23:25:40', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('81fb2bb0e838dc68b43f96cc309f8257', 'fc6cd58fde2e8481db10d3a1e68ce70c', '??????', '2', NULL, NULL, 1, 'admin', '2019-03-18 23:30:37', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('83250269359855501ec4e9c0b7e21596', '4274efc2292239b6f000b153f50823ff', '??????/?????????(???????????????/?????????)', '1', NULL, 1, 1, 'admin', '2019-05-10 17:54:51', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('84778d7e928bc843ad4756db1322301f', '4e4602b3e3686f0911384e188dc7efb4', '????????????', '>=', '????????????', 5, 1, 'admin', '2019-04-01 10:46:02', 'admin', '2019-04-01 17:49:05');
INSERT INTO `sys_dict_item` VALUES ('848d4da35ebd93782029c57b103e5b36', 'c5a14c75172783d72cbee6ee7f5df5d1', '??????', 'pie', NULL, 3, 1, 'admin', '2019-04-12 17:05:49', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('84dfc178dd61b95a72900fcdd624c471', '78bda155fe380b1b3f175f1e88c284c6', '?????????', '2', '?????????', 2, 1, 'admin', '2019-05-09 16:33:01', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('86f19c7e0a73a0bae451021ac05b99dd', 'ac2f7c0c5c5775fcea7e2387bcb22f01', '?????????', '1', NULL, NULL, 1, 'admin', '2019-03-18 23:25:27', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('8bccb963e1cd9e8d42482c54cc609ca2', '4f69be5f507accea8d5df5f11346181a', '??????', '3', NULL, 3, 1, 'admin', '2021-05-11 14:29:12', 'admin', '2019-04-11 14:29:31');
INSERT INTO `sys_dict_item` VALUES ('8c618902365ca681ebbbe1e28f11a548', '4c753b5293304e7a445fd2741b46529d', '??????', '1', NULL, 0, 1, 'admin', '2020-07-18 23:19:27', 'admin', '2019-05-17 14:51:18');
INSERT INTO `sys_dict_item` VALUES ('8cdf08045056671efd10677b8456c999', '4274efc2292239b6f000b153f50823ff', '?????????(??????????????????)', '2', NULL, 2, 1, 'admin', '2019-05-10 17:55:38', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('8ff48e657a7c5090d4f2a59b37d1b878', '4d7fec1a7799a436d26d02325eff295e', '???', 'M', '???', 2, 1, 'admin', '2019-04-16 17:04:40', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('948923658baa330319e59b2213cda97c', '880a895c98afeca9d9ac39f29e67c13e', '??????', '2', NULL, 2, 1, 'admin', '2019-07-22 10:54:59', 'admin', '2019-07-22 10:55:36');
INSERT INTO `sys_dict_item` VALUES ('9a96c4a4e4c5c9b4e4d0cbf6eb3243cc', '4c753b5293304e7a445fd2741b46529d', '?????????', '0', NULL, 1, 1, 'admin', '2019-03-18 23:19:53', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('a1e7d1ca507cff4a480c8caba7c1339e', '880a895c98afeca9d9ac39f29e67c13e', '??????', '6', NULL, 6, 1, 'admin', '2019-07-22 12:06:50', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('a2be752dd4ec980afaec1efd1fb589af', '8dfe32e2d29ea9430a988b3b558bf233', '?????????', '2', '?????????', 3, 1, 'admin', '2019-04-16 17:41:39', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('aa0d8a8042a18715a17f0a888d360aa4', 'ac2f7c0c5c5775fcea7e2387bcb22f01', '????????????', '0', NULL, NULL, 1, 'admin', '2019-03-18 23:24:52', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('adcf2a1fe93bb99a84833043f475fe0b', '4e4602b3e3686f0911384e188dc7efb4', '??????', 'IN', '??????', 8, 1, 'admin', '2019-04-01 16:45:47', 'admin', '2019-04-01 17:49:24');
INSERT INTO `sys_dict_item` VALUES ('b029a41a851465332ee4ee69dcf0a4c2', '0b5d19e1fce4b2e6647e6b4a17760c14', '????????????', '2', NULL, 1, 1, 'admin', '2019-02-22 18:02:08', 'admin', '2019-04-22 18:02:13');
INSERT INTO `sys_dict_item` VALUES ('b2a8b4bb2c8e66c2c4b1bb086337f393', '3486f32803bb953e7155dab3513dc68b', '??????', '0', NULL, NULL, 1, 'admin', '2022-10-18 21:46:48', 'admin', '2019-03-28 22:22:20');
INSERT INTO `sys_dict_item` VALUES ('b57f98b88363188daf38d42f25991956', '6b78e3f59faec1a4750acff08030a79b', '22', '222', NULL, NULL, 0, 'admin', '2019-02-21 19:59:43', 'admin', '2019-03-11 21:23:27');
INSERT INTO `sys_dict_item` VALUES ('b5f3bd5f66bb9a83fecd89228c0d93d1', '68168534ff5065a152bfab275c2136f8', '??????', '0', '??????', 1, 1, 'admin', '2019-04-26 19:21:49', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('b9fbe2a3602d4a27b45c100ac5328484', '78bda155fe380b1b3f175f1e88c284c6', '?????????', '1', '?????????', 1, 1, 'admin', '2019-05-09 16:32:35', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('ba27737829c6e0e582e334832703d75e', '236e8a4baff0db8c62c00dd95632834f', '??????', '1', '??????', 1, 1, 'admin', '2019-05-15 15:28:15', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('bcec04526b04307e24a005d6dcd27fd6', '880a895c98afeca9d9ac39f29e67c13e', '??????', '5', NULL, 5, 1, 'admin', '2019-07-22 12:06:41', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('c53da022b9912e0aed691bbec3c78473', '880a895c98afeca9d9ac39f29e67c13e', '??????', '1', NULL, 1, 1, 'admin', '2019-07-22 10:54:51', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('c5700a71ad08994d18ad1dacc37a71a9', 'a7adbcd86c37f7dbc9b66945c82ef9e6', '???', '0', NULL, 1, 1, 'admin', '2019-05-22 19:29:55', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('cbfcc5b88fc3a90975df23ffc8cbe29c', 'c5a14c75172783d72cbee6ee7f5df5d1', '?????????', 'line', NULL, 2, 1, 'admin', '2019-05-12 17:05:30', 'admin', '2019-04-12 17:06:06');
INSERT INTO `sys_dict_item` VALUES ('d217592908ea3e00ff986ce97f24fb98', 'c5a14c75172783d72cbee6ee7f5df5d1', '????????????', 'table', NULL, 4, 1, 'admin', '2019-04-12 17:05:56', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('df168368dcef46cade2aadd80100d8aa', '3d9a351be3436fbefb1307d4cfb49bf2', '???', '1', NULL, 1, 1, NULL, '2027-08-04 14:56:49', 'admin', '2019-03-23 22:44:44');
INSERT INTO `sys_dict_item` VALUES ('e6329e3a66a003819e2eb830b0ca2ea0', '4e4602b3e3686f0911384e188dc7efb4', '??????', '<', '??????', 2, 1, 'admin', '2019-04-01 16:44:15', 'admin', '2019-04-01 17:48:34');
INSERT INTO `sys_dict_item` VALUES ('e94eb7af89f1dbfa0d823580a7a6e66a', '236e8a4baff0db8c62c00dd95632834f', '?????????', '0', '?????????', 2, 1, 'admin', '2019-05-15 15:28:28', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('f0162f4cc572c9273f3e26b2b4d8c082', 'ad7c65ba97c20a6805d5dcdf13cdaf36', 'booostrap', '1', NULL, 1, 1, 'admin', '2021-08-22 16:32:04', 'admin', '2019-03-22 16:33:57');

-- ----------------------------
-- Table structure for sys_fill_rule
-- ----------------------------
DROP TABLE IF EXISTS `sys_fill_rule`;
CREATE TABLE `sys_fill_rule`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????ID',
  `rule_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `rule_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????Code',
  `rule_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???????????????',
  `rule_params` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  UNIQUE INDEX `uk_sfr_rule_code`(`rule_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_fill_rule
-- ----------------------------
INSERT INTO `sys_fill_rule` VALUES ('1202551334738382850', '??????????????????', 'org_num_role', 'org.jeecg.modules.system.rule.OrgCodeRule', '{\"parentId\":\"c6d7cb4deeac411cb3384b1b31278596\"}', 'admin', '2019-12-09 10:37:06', 'admin', '2019-12-05 19:32:35');
INSERT INTO `sys_fill_rule` VALUES ('1202787623203065858', '????????????????????????', 'category_code_rule', 'org.jeecg.modules.system.rule.CategoryCodeRule', '{\"pid\":\"\"}', 'admin', '2019-12-09 10:36:54', 'admin', '2019-12-06 11:11:31');
INSERT INTO `sys_fill_rule` VALUES ('1260134137920090113', '???????????????', 'shop_order_num', 'org.jeecg.modules.online.cgform.rule.OrderNumberRule', '{}', 'admin', '2020-12-07 18:29:50', 'admin', '2020-05-12 17:06:05');

-- ----------------------------
-- Table structure for sys_gateway_route
-- ----------------------------
DROP TABLE IF EXISTS `sys_gateway_route`;
CREATE TABLE `sys_gateway_route`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `router_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????ID',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `uri` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `predicates` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '??????',
  `filters` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '?????????',
  `retryable` decimal(11, 0) NULL DEFAULT NULL COMMENT '????????????:0-??? 1-???',
  `strip_prefix` decimal(11, 0) NULL DEFAULT NULL COMMENT '??????????????????0-??? 1-???',
  `persistable` decimal(11, 0) NULL DEFAULT NULL COMMENT '?????????????????????:0-??? 1-???',
  `show_api` decimal(11, 0) NULL DEFAULT NULL COMMENT '??????????????????????????????:0-??? 1-???',
  `status` decimal(11, 0) NULL DEFAULT NULL COMMENT '??????:0-?????? 1-??????',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `sys_org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_gateway_route
-- ----------------------------
INSERT INTO `sys_gateway_route` VALUES ('1331051599401857026', 'jeecg-demo-websocket', 'jeecg-demo-websocket', 'lb:ws://jeecg-demo', '[{\"args\":[\"/vxeSocket/**\"],\"name\":\"Path\"}]', '[]', NULL, NULL, NULL, NULL, 1, 'admin', '2020-11-24 09:46:46', NULL, NULL, NULL);
INSERT INTO `sys_gateway_route` VALUES ('jeecg-cloud-websocket', 'jeecg-system-websocket', 'jeecg-system-websocket', 'lb:ws://jeecg-system', '[{\"args\":[\"/websocket/**\",\"/eoaSocket/**\",\"/newsWebsocket/**\"],\"name\":\"Path\"}]', '[]', NULL, NULL, NULL, NULL, 1, 'admin', '2020-11-16 19:41:51', NULL, NULL, NULL);
INSERT INTO `sys_gateway_route` VALUES ('jeecg-demo', 'jeecg-demo', 'jeecg-demo', 'lb://jeecg-demo', '[{\"args\":[\"/mock/**\",\"/test/**\",\"/bigscreen/template1/**\",\"/bigscreen/template2/**\"],\"name\":\"Path\"}]', '[]', NULL, NULL, NULL, NULL, 1, 'admin', '2020-11-16 19:41:51', NULL, NULL, NULL);
INSERT INTO `sys_gateway_route` VALUES ('jeecg-system', 'jeecg-system', 'jeecg-system', 'lb://jeecg-system', '[{\"args\":[\"/sys/**\",\"/eoa/**\",\"/joa/**\",\"/online/**\",\"/bigscreen/**\",\"/jmreport/**\",\"/desform/**\",\"/process/**\",\"/act/**\",\"/plug-in/***/\",\"/druid/**\",\"/generic/**\"],\"name\":\"Path\"}]', '[]', NULL, NULL, NULL, NULL, 1, 'admin', '2020-11-16 19:41:51', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `log_type` decimal(11, 0) NULL DEFAULT NULL COMMENT '???????????????1???????????????2???????????????',
  `log_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '????????????',
  `operate_type` decimal(11, 0) NULL DEFAULT NULL COMMENT '????????????',
  `userid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????',
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP',
  `method` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '??????java??????',
  `request_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `request_param` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '????????????',
  `request_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `cost_time` decimal(20, 0) NULL DEFAULT NULL COMMENT '??????',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  INDEX `idx_sl_create_time`(`create_time`) USING BTREE,
  INDEX `idx_sl_log_type`(`log_type`) USING BTREE,
  INDEX `idx_sl_operate_type`(`operate_type`) USING BTREE,
  INDEX `idx_sl_userid`(`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '???????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????id',
  `parent_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???id',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `component_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `redirect` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????????????????',
  `menu_type` decimal(11, 0) NULL DEFAULT NULL COMMENT '????????????(0:????????????; 1:?????????:2:????????????)',
  `perms` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????',
  `perms_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????1??????2??????',
  `sort_no` decimal(8, 2) NULL DEFAULT NULL COMMENT '????????????',
  `always_show` decimal(4, 0) NULL DEFAULT NULL COMMENT '???????????????: 1???0???',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `is_route` decimal(4, 0) NULL DEFAULT NULL COMMENT '??????????????????: 0:??????  1:???????????????1???',
  `is_leaf` decimal(4, 0) NULL DEFAULT NULL COMMENT '??????????????????:    1:???   0:??????',
  `keep_alive` decimal(4, 0) NULL DEFAULT NULL COMMENT '?????????????????????:    1:???   0:??????',
  `hidden` decimal(11, 0) NULL DEFAULT NULL COMMENT '??????????????????: 0???,1???',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `del_flag` decimal(11, 0) NULL DEFAULT NULL COMMENT '???????????? 0?????? 1?????????',
  `rule_flag` decimal(11, 0) NULL DEFAULT NULL COMMENT '????????????????????????1???0???',
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????(0??????1??????)',
  `internal_or_external` decimal(4, 0) NULL DEFAULT NULL COMMENT '???????????????????????? 0/???????????? 1/????????????'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '???????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('9502685863ab87f0ad1134142788a385', NULL, '??????', '/dashboard/analysis', 'dashboard/Analysis', NULL, NULL, 0, NULL, NULL, 0.00, 0, 'home', 1, 1, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-03-29 11:04:13', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('97c8629abc7848eccdb6d77c24bb3ebb', '700b7f95165c46cc7a78bf227aa8fed3', '????????????', '/monitor/Disk', 'modules/monitor/DiskMonitoring', NULL, NULL, 1, NULL, NULL, 6.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-25 14:30:06', 'admin', '2019-05-05 14:37:14', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('9cb91b8851db0cf7b19d7ecc2a8193dd', '1939e035e803a99ceecb6f5563570fb2', '??????????????????', '/modules/bpm/task/form/FormModule', 'modules/bpm/task/form/FormModule', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-03-08 16:49:05', 'admin', '2019-03-08 18:37:56', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('b1cb0a3fedf7ed0e4653cb5a229837ee', '08e6b9dc3c04489c8e1ff2ce6f105aa4', '????????????', '/isystem/QuartzJobList', 'system/QuartzJobList', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, 0, 0, NULL, NULL, '2019-01-03 09:38:52', 'admin', '2020-09-09 14:48:16', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('b6bcee2ccc854052d3cc3e9c96d90197', '71102b3b87fb07e5527bbd2c530dd90a', '????????????', '/modules/extbpm/joa/JoaOvertimeList', 'modules/extbpm/joa/JoaOvertimeList', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-03 15:33:10', 'admin', '2019-04-03 15:34:48', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('d07a2c87a451434c99ab06296727ec4f', '700b7f95165c46cc7a78bf227aa8fed3', 'JVM??????', '/monitor/JvmInfo', 'modules/monitor/JvmInfo', NULL, NULL, 1, NULL, NULL, 4.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-01 23:07:48', 'admin', '2019-04-02 11:37:16', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('d7d6e2e4e2934f2c9385a623fd98c6f3', NULL, '????????????', '/isystem', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 7.00, 0, 'setting', 1, 0, 0, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2021-07-14 01:50:27', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('e41b69c57a941a3bbcce45032fe57605', '', '????????????', '/online', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 6.00, 0, 'cloud', 1, 0, 0, 0, NULL, 'admin', '2019-03-08 10:43:10', 'ceshi', '2021-12-15 22:21:51', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('024f1fd1283dc632458976463d8984e1', '700b7f95165c46cc7a78bf227aa8fed3', 'Tomcat??????', '/monitor/TomcatInfo', 'modules/monitor/TomcatInfo', NULL, NULL, 1, NULL, NULL, 4.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-02 09:44:29', 'admin', '2019-05-07 15:19:10', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('08e6b9dc3c04489c8e1ff2ce6f105aa4', NULL, '????????????', '/dashboard3', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 6.00, 0, 'dashboard', 1, 0, 0, 1, NULL, NULL, '2018-12-25 20:34:38', 'ceshi', '2021-10-14 15:05:03', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('109c78a583d4693ce2f16551b7786786', 'e41b69c57a941a3bbcce45032fe57605', 'Online????????????', '/online/cgreport', 'modules/online/cgreport/OnlCgreportHeadList', NULL, NULL, 1, NULL, NULL, 2.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-03-08 10:51:07', 'ceshi', '2021-12-15 22:21:31', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('1415139394194399233', NULL, '????????????', '/km/filemanagement', 'layouts/RouteView', NULL, NULL, 0, NULL, '1', 1.00, 0, 'folder', 1, 0, 0, 0, NULL, 'admin', '2021-07-13 21:41:38', 'admin', '2021-07-14 01:40:06', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1415145872468893697', '1415139394194399233', '??????????????????', '/km/filemanagement/draftslist', 'km/filemanagement/DraftsList', NULL, NULL, 1, NULL, '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2021-07-13 22:07:23', 'admin', '2022-03-28 00:11:34', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1415156984451063809', NULL, '????????????', '/km/datasetting', 'layouts/RouteView', NULL, NULL, 0, NULL, '1', 2.00, 0, 'cluster', 1, 0, 0, 0, NULL, 'admin', '2021-07-13 22:51:32', 'admin', '2021-07-29 17:28:49', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1415277817119023106', '1415156984451063809', '??????????????????', '/km/datasetting/dictlist', 'km/datasetting/DictList', NULL, NULL, 1, NULL, '1', NULL, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2021-07-14 06:51:41', 'admin', '2021-07-29 17:28:22', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1419574496959193090', '1415156984451063809', '????????????', '/km/datasetting/KmSysConfigList', 'km/datasetting/KmSysConfigList', NULL, NULL, 1, NULL, '1', 3.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2021-07-26 03:25:09', NULL, NULL, 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1420569665158332418', NULL, '??????', '/layouts/RouteView', 'layouts/RouteView', NULL, NULL, 0, NULL, '1', 1.80, 0, 'diff', 1, 0, 0, 0, NULL, 'admin', '2021-07-29 10:19:36', 'admin', '2021-08-04 17:04:21', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1422846497589129218', '1415139394194399233', '????????????', '/km/filemanagement/FileStatisticsList', 'km/filemanagement/FileStatisticsList', NULL, NULL, 1, NULL, '1', 4.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2021-08-04 17:06:55', 'ceshi', '2021-10-14 18:01:35', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('190c2b43bec6a5f7a4194a85db67d96a', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '????????????', '/isystem/roleUserList', 'system/RoleUserList', NULL, NULL, 1, NULL, NULL, 1.20, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-04-17 15:13:56', 'admin', '2019-12-25 09:36:31', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('3f915b2769fc80648e92d04e84ca059d', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '????????????', '/isystem/user', 'system/UserList', NULL, NULL, 1, NULL, NULL, 1.10, 0, NULL, 1, 1, 0, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-12-25 09:36:24', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('45c966826eeff4c99b8f8ebfe74511fc', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '????????????', '/isystem/depart', 'system/DepartList', NULL, NULL, 1, NULL, NULL, 1.40, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-01-29 18:47:40', 'admin', '2019-12-25 09:36:47', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('54dd5457a3190740005c1bfec55b1c34', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '????????????', '/isystem/permission', 'system/PermissionList', NULL, NULL, 1, NULL, NULL, 1.30, 0, NULL, 1, 1, 0, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-12-25 09:36:39', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('58857ff846e61794c69208e9d3a85466', '1420569665158332418', '????????????', '/isystem/log', 'system/LogList', NULL, NULL, 1, NULL, NULL, 2.00, 0, NULL, 1, 1, 0, 0, NULL, NULL, '2018-12-26 10:11:18', 'admin', '2021-07-29 10:20:23', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('700b7f95165c46cc7a78bf227aa8fed3', '08e6b9dc3c04489c8e1ff2ce6f105aa4', '????????????', '/monitor', 'layouts/RouteView', NULL, NULL, 1, NULL, NULL, 3.00, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2019-04-02 11:34:34', 'admin', '2020-09-09 14:48:51', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('841057b8a1bef8f6b4b20f9a618a7fa6', '08e6b9dc3c04489c8e1ff2ce6f105aa4', '????????????', '/sys/dataLog-list', 'system/DataLogList', NULL, NULL, 1, NULL, NULL, 2.10, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-03-11 19:26:49', 'admin', '2020-09-09 14:48:32', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('8b3bff2eee6f1939147f5c68292a1642', '700b7f95165c46cc7a78bf227aa8fed3', '???????????????', '/monitor/SystemInfo', 'modules/monitor/SystemInfo', NULL, NULL, 1, NULL, NULL, 4.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-02 11:39:19', 'admin', '2019-04-02 15:40:02', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('8d1ebd663688965f1fd86a2f0ead3416', '700b7f95165c46cc7a78bf227aa8fed3', 'Redis??????', '/monitor/redis/info', 'modules/monitor/RedisInfo', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-02 13:11:33', 'admin', '2019-05-07 15:18:54', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('9fe26464838de2ea5e90f2367e35efa0', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO????????????', '/online/cgreport/:code', 'modules/online/cgreport/auto/OnlCgreportAutoList', 'onlineAutoList', NULL, 1, NULL, NULL, 9.00, 0, NULL, 1, 1, 0, 1, NULL, 'admin', '2019-03-12 11:06:48', 'ceshi', '2021-12-15 22:21:35', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('1453933027082489858', '1415139394194399233', '?????????', '/km/filemanagement/KmDocFavouriteList', 'km/filemanagement/KmDocFavouriteList', NULL, NULL, 1, NULL, '1', 0.00, 0, NULL, 1, 1, 0, 0, NULL, 'ceshi', '2021-10-29 11:53:41', NULL, NULL, 0, NULL, '1', 0);
INSERT INTO `sys_permission` VALUES ('1456909004028821505', '1415139394194399233', '????????????', '/km/search/DoSearch', 'km/search/DoSearch', NULL, NULL, 1, NULL, '1', 9.00, 0, NULL, 1, 0, 0, 1, NULL, 'ceshi', '2021-11-06 16:59:09', NULL, NULL, 0, NULL, '1', 0);
INSERT INTO `sys_permission` VALUES ('1456909292378832898', '1456909004028821505', '????????????', '/km/search/DoSearch', NULL, NULL, NULL, 2, 'searchList:batchDownload', '1', NULL, 0, NULL, 1, 1, 0, 0, NULL, 'ceshi', '2021-11-06 17:00:18', NULL, NULL, 0, NULL, '1', 0);
INSERT INTO `sys_permission` VALUES ('fc810a2267dd183e4ef7c71cc60f4670', '700b7f95165c46cc7a78bf227aa8fed3', '????????????', '/monitor/HttpTrace', 'modules/monitor/HttpTrace', NULL, NULL, 1, NULL, NULL, 4.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-02 09:46:19', 'admin', '2019-04-02 11:37:27', 0, 0, NULL, NULL);

-- ----------------------------
-- Table structure for sys_permission_data_rule
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission_data_rule`;
CREATE TABLE `sys_permission_data_rule`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `permission_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????ID',
  `rule_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `rule_column` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `rule_conditions` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `rule_value` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '?????????',
  `status` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????1???0???',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_permission_data_rule
-- ----------------------------
INSERT INTO `sys_permission_data_rule` VALUES ('40283181614231d401614234fe670003', '40283181614231d401614232cd1c0001', 'createBy', 'createBy', '=', '#{sys_user_code}', '1', '2018-01-29 21:57:04', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('4028318161424e730161424fca6f0004', '4028318161424e730161424f61510002', 'createBy', 'createBy', '=', '#{sys_user_code}', '1', '2018-01-29 22:26:20', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402880e6487e661a01487e732c020005', '402889fb486e848101486e93a7c80014', 'SYS_ORG_CODE', 'SYS_ORG_CODE', 'LIKE', '010201%', '1', '2014-09-16 20:32:30', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402880e6487e661a01487e8153ee0007', '402889fb486e848101486e93a7c80014', 'create_by', 'create_by', NULL, '#{SYS_USER_CODE}', '1', '2014-09-16 20:47:57', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402880ec5ddec439015ddf9225060038', '40288088481d019401481d2fcebf000d', '????????????', NULL, 'USE_SQL_RULES', 'name like \'%???%\' or age > 10', '1', NULL, NULL, '2017-08-14 15:10:25', 'demo');
INSERT INTO `sys_permission_data_rule` VALUES ('402880ec5ddfdd26015ddfe3e0570011', '4028ab775dca0d1b015dca3fccb60016', '??????sql??????', NULL, 'USE_SQL_RULES', 'table_name like \'%test%\' or is_tree = \'Y\'', '1', NULL, NULL, '2017-08-14 16:38:55', 'demo');
INSERT INTO `sys_permission_data_rule` VALUES ('402880f25b1e2ac7015b1e5fdebc0012', '402880f25b1e2ac7015b1e5cdc340010', '?????????????????????', 'create_by', '=', '#{sys_user_code}', '1', '2017-03-30 16:40:51', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402881875b19f141015b19f8125e0014', '40288088481d019401481d2fcebf000d', '????????????????????????', 'sys_org_code', 'LIKE', '#{sys_org_code}', '1', NULL, NULL, '2017-08-14 15:04:32', 'demo');
INSERT INTO `sys_permission_data_rule` VALUES ('402881e45394d66901539500a4450001', '402881e54df73c73014df75ab670000f', 'sysCompanyCode', 'sysCompanyCode', '=', '#{SYS_COMPANY_CODE}', '1', '2016-03-21 01:09:21', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402881e45394d6690153950177cb0003', '402881e54df73c73014df75ab670000f', 'sysOrgCode', 'sysOrgCode', '=', '#{SYS_ORG_CODE}', '1', '2016-03-21 01:10:15', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402881e56266f43101626727aff60067', '402881e56266f43101626724eb730065', '??????????????????????????????', 'createBy', '=', '#{sys_user_code}', '1', '2018-03-27 19:11:16', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402881e56266f4310162672fb1a70082', '402881e56266f43101626724eb730065', '?????????????????????????????????', 'sysOrgCode', 'LIKE', '#{sys_org_code}', '1', '2018-03-27 19:20:01', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402881e56266f431016267387c9f0088', '402881e56266f43101626724eb730065', '??????????????????1000?????????', 'money', '>=', '1000', '1', '2018-03-27 19:29:37', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402881f3650de25101650dfb5a3a0010', '402881e56266f4310162671d62050044', '22', NULL, 'USE_SQL_RULES', '22', '1', '2018-08-06 14:45:01', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402889fb486e848101486e913cd6000b', '402889fb486e848101486e8e2e8b0007', 'userName', 'userName', '=', 'admin', '1', '2014-09-13 18:31:25', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402889fb486e848101486e98d20d0016', '402889fb486e848101486e93a7c80014', 'title', 'title', '=', '12', '1', NULL, NULL, '2014-09-13 22:18:22', 'scott');
INSERT INTO `sys_permission_data_rule` VALUES ('402889fe47fcb29c0147fcb6b6220001', '8a8ab0b246dc81120146dc8180fe002b', '12', '12', '>', '12', '1', '2014-08-22 15:55:38', '8a8ab0b246dc81120146dc8181950052', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('4028ab775dca0d1b015dca4183530018', '4028ab775dca0d1b015dca3fccb60016', '????????????', 'isDbSynch', '=', 'Y', '1', NULL, NULL, '2017-08-14 16:43:45', 'demo');
INSERT INTO `sys_permission_data_rule` VALUES ('4028ef815595a881015595b0ccb60001', '40288088481d019401481d2fcebf000d', '??????????????????', 'create_by', '=', '#{sys_user_code}', '1', NULL, NULL, '2017-08-14 15:03:56', 'demo');
INSERT INTO `sys_permission_data_rule` VALUES ('4028ef81574ae99701574aed26530005', '4028ef81574ae99701574aeb97bd0003', '?????????', 'userName', '!=', 'admin', '1', '2016-09-21 12:07:18', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('f852d85d47f224990147f2284c0c0005', NULL, '??????', 'test', '<=', '11', '1', '2014-08-20 14:43:52', '8a8ab0b246dc81120146dc8181950052', NULL, NULL);

-- ----------------------------
-- Table structure for sys_position
-- ----------------------------
DROP TABLE IF EXISTS `sys_position`;
CREATE TABLE `sys_position`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `post_rank` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `company_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????id',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????',
  UNIQUE INDEX `uniq_position_code`(`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_position
-- ----------------------------
INSERT INTO `sys_position` VALUES ('1185040064792571906', 'devleader', '???????????????', '2', NULL, 'admin', '2019-10-18 11:49:03', 'admin', '2020-02-23 22:55:42', 'A01');
INSERT INTO `sys_position` VALUES ('1256485574212153345', '?????????', 'laozong', '5', NULL, 'admin', '2020-05-02 15:28:00', 'admin', '2020-05-02 15:28:03', '??????????????????');

-- ----------------------------
-- Table structure for sys_quartz_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_quartz_job`;
CREATE TABLE `sys_quartz_job`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `del_flag` decimal(11, 0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `job_class_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'cron?????????',
  `parameter` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `status` decimal(11, 0) NULL DEFAULT NULL COMMENT '?????? 0?????? -1??????',
  UNIQUE INDEX `uniq_job_class_name`(`job_class_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_quartz_job
-- ----------------------------
INSERT INTO `sys_quartz_job` VALUES ('df26ecacf0f75d219d746750fe84bbee', NULL, NULL, 0, 'admin', '2020-05-02 15:40:35', 'org.jeecg.modules.quartz.job.SampleParamJob', '0/1 * * * * ?', 'scott', '???????????? ???????????????1?????????????????????', -1);
INSERT INTO `sys_quartz_job` VALUES ('a253cdfc811d69fa0efc70d052bc8128', 'admin', '2019-03-30 12:44:48', 0, 'admin', '2020-05-02 15:48:49', 'org.jeecg.modules.quartz.job.SampleJob', '0/1 * * * * ?', NULL, NULL, -1);
INSERT INTO `sys_quartz_job` VALUES ('5b3d2c087ad41aa755fc4f89697b01e7', 'admin', '2019-04-11 19:04:21', 0, 'admin', '2020-05-02 15:48:48', 'org.jeecg.modules.message.job.SendMsgJob', '0/50 * * * * ? *', NULL, NULL, -1);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????id',
  `role_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `role_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '?????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '?????????', 'admin', '?????????', NULL, '2018-12-21 18:03:39', 'admin', '2022-01-06 14:36:13');
INSERT INTO `sys_role` VALUES ('1501891096828817410', 'test', '9dcb6f3da512450db97043164d6894e6', NULL, 'ceshi', '2022-03-10 20:01:56', NULL, NULL);

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????id',
  `permission_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????id',
  `data_rule_ids` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '????????????ids',
  `operate_date` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `operate_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????ip'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '???????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES ('1e47db875601fd97723254046b5bba90', 'f6817f48af4fb3af11b9e8bf182f618b', 'baf16b7174bd821b6bab23fa9abb200d', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('2779cdea8367fff37db26a42c1a1f531', 'f6817f48af4fb3af11b9e8bf182f618b', 'fef097f3903caf3a3c3a6efa8de43fbb', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('3de2a60c7e42a521fecf6fcc5cb54978', 'f6817f48af4fb3af11b9e8bf182f618b', '2d83d62bd2544b8994c8f38cf17b0ddf', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('6daddafacd7eccb91309530c17c5855d', 'f6817f48af4fb3af11b9e8bf182f618b', 'edfa74d66e8ea63ea432c2910837b150', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('7413acf23b56c906aedb5a36fb75bd3a', 'f6817f48af4fb3af11b9e8bf182f618b', 'a4fc7b64b01a224da066bb16230f9c5a', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('4204f91fb61911ba8ce40afa7c02369f', 'f6817f48af4fb3af11b9e8bf182f618b', '3f915b2769fc80648e92d04e84ca059d', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('4dab5a06acc8ef3297889872caa74747', 'f6817f48af4fb3af11b9e8bf182f618b', 'ffb423d25cc59dcd0532213c4a518261', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('4f254549d9498f06f4cc9b23f3e2c070', 'f6817f48af4fb3af11b9e8bf182f618b', '93d5cfb4448f11e9916698e7f462b4b6', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('504e326de3f03562cdd186748b48a8c7', 'f6817f48af4fb3af11b9e8bf182f618b', '027aee69baee98a0ed2e01806e89c891', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('5de6871fadb4fe1cdd28989da0126b07', 'f6817f48af4fb3af11b9e8bf182f618b', 'a400e4f4d54f79bf5ce160a3432231af', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('1209423580355481602', 'f6817f48af4fb3af11b9e8bf182f618b', '190c2b43bec6a5f7a4194a85db67d96a', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('1269526122208522241', 'f6817f48af4fb3af11b9e8bf182f618b', '1267412134208319489', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('1415139448871346178', 'f6817f48af4fb3af11b9e8bf182f618b', '1415139394194399233', NULL, '2021-07-13 21:41:51', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1415145981671792642', 'f6817f48af4fb3af11b9e8bf182f618b', '1415145872468893697', NULL, '2021-07-13 22:07:49', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1415157254522298370', 'f6817f48af4fb3af11b9e8bf182f618b', '1415156984451063809', NULL, '2021-07-13 22:52:36', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1415277853504610305', 'f6817f48af4fb3af11b9e8bf182f618b', '1415277817119023106', NULL, '2021-07-14 06:51:50', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1419574538910621698', 'f6817f48af4fb3af11b9e8bf182f618b', '1419574496959193090', NULL, '2021-07-26 03:25:19', '192.168.0.103');
INSERT INTO `sys_role_permission` VALUES ('1420570298724728833', 'f6817f48af4fb3af11b9e8bf182f618b', '1420569665158332418', NULL, '2021-07-29 10:22:07', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1422846634373771266', 'f6817f48af4fb3af11b9e8bf182f618b', '1422846497589129218', NULL, '2021-08-04 17:07:27', '192.168.0.104');
INSERT INTO `sys_role_permission` VALUES ('cf1feb1bf69eafc982295ad6c9c8d698', 'f6817f48af4fb3af11b9e8bf182f618b', 'a2b11669e98c5fe54a53c3e3c4f35d14', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('d37ad568e26f46ed0feca227aa9c2ffa', 'f6817f48af4fb3af11b9e8bf182f618b', '9502685863ab87f0ad1134142788a385', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('dbc5dd836d45c5bc7bc94b22596ab956', 'f6817f48af4fb3af11b9e8bf182f618b', '1939e035e803a99ceecb6f5563570fb2', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('dc83bb13c0e8c930e79d28b2db26f01f', 'f6817f48af4fb3af11b9e8bf182f618b', '63b551e81c5956d5c861593d366d8c57', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('dc8fd3f79bd85bd832608b42167a1c71', 'f6817f48af4fb3af11b9e8bf182f618b', '91c23960fab49335831cf43d820b0a61', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('de82e89b8b60a3ea99be5348f565c240', 'f6817f48af4fb3af11b9e8bf182f618b', '56ca78fe0f22d815fabc793461af67b8', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('ec846a3f85fdb6813e515be71f11b331', 'f6817f48af4fb3af11b9e8bf182f618b', '732d48f8e0abe99fe6a23d18a3171cd1', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('ecdd72fe694e6bba9c1d9fc925ee79de', 'f6817f48af4fb3af11b9e8bf182f618b', '45c966826eeff4c99b8f8ebfe74511fc', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('f177acac0276329dc66af0c9ad30558a', 'f6817f48af4fb3af11b9e8bf182f618b', 'c2c356bf4ddd29975347a7047a062440', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('fafe73c4448b977fe42880a6750c3ee8', 'f6817f48af4fb3af11b9e8bf182f618b', '9cb91b8851db0cf7b19d7ecc2a8193dd', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('1453933071680524290', 'f6817f48af4fb3af11b9e8bf182f618b', '1453933027082489858', NULL, '2021-10-29 11:53:51', '192.168.0.102');
INSERT INTO `sys_role_permission` VALUES ('84eac2f113c23737128fb099d1d1da89', 'f6817f48af4fb3af11b9e8bf182f618b', '03dc3d93261dda19fc86dd7ca486c6cf', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('86060e2867a5049d8a80d9fe5d8bc28b', 'f6817f48af4fb3af11b9e8bf182f618b', '765dd244f37b804e3d00f475fd56149b', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('1458355149641641985', 'f6817f48af4fb3af11b9e8bf182f618b', '1456909292378832898', NULL, '2021-11-10 16:45:37', '116.23.216.197');
INSERT INTO `sys_role_permission` VALUES ('980171fda43adfe24840959b1d048d4d', 'f6817f48af4fb3af11b9e8bf182f618b', 'd7d6e2e4e2934f2c9385a623fd98c6f3', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('a034ed7c38c996b880d3e78f586fe0ae', 'f6817f48af4fb3af11b9e8bf182f618b', 'c89018ea6286e852b424466fd92a2ffc', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('acacce4417e5d7f96a9c3be2ded5b4be', 'f6817f48af4fb3af11b9e8bf182f618b', 'f9d3f4f27653a71c52faa9fb8070fbe7', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('af60ac8fafd807ed6b6b354613b9ccbc', 'f6817f48af4fb3af11b9e8bf182f618b', '58857ff846e61794c69208e9d3a85466', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('bea2986432079d89203da888d99b3f16', 'f6817f48af4fb3af11b9e8bf182f618b', '54dd5457a3190740005c1bfec55b1c34', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('1479012049120796674', 'f6817f48af4fb3af11b9e8bf182f618b', '1456909004028821505', NULL, '2022-01-06 16:48:46', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1501891384792952834', '1501891096828817410', '9502685863ab87f0ad1134142788a385', NULL, '2022-03-10 20:03:05', '116.23.218.77');
INSERT INTO `sys_role_permission` VALUES ('1501891384809730049', '1501891096828817410', '1415139394194399233', NULL, '2022-03-10 20:03:05', '116.23.218.77');
INSERT INTO `sys_role_permission` VALUES ('1501891384809730050', '1501891096828817410', '1453933027082489858', NULL, '2022-03-10 20:03:05', '116.23.218.77');
INSERT INTO `sys_role_permission` VALUES ('1501891384809730052', '1501891096828817410', '1415145872468893697', NULL, '2022-03-10 20:03:05', '116.23.218.77');
INSERT INTO `sys_role_permission` VALUES ('1501891384830701569', '1501891096828817410', '1422846497589129218', NULL, '2022-03-10 20:03:05', '116.23.218.77');
INSERT INTO `sys_role_permission` VALUES ('1501891384830701570', '1501891096828817410', '1456909004028821505', NULL, '2022-03-10 20:03:05', '116.23.218.77');
INSERT INTO `sys_role_permission` VALUES ('1501891384830701571', '1501891096828817410', '1456909292378832898', NULL, '2022-03-10 20:03:05', '116.23.218.77');
INSERT INTO `sys_role_permission` VALUES ('1501891384830701572', '1501891096828817410', '1420569665158332418', NULL, '2022-03-10 20:03:05', '116.23.218.77');
INSERT INTO `sys_role_permission` VALUES ('1501891384830701574', '1501891096828817410', '58857ff846e61794c69208e9d3a85466', NULL, '2022-03-10 20:03:05', '116.23.218.77');
INSERT INTO `sys_role_permission` VALUES ('1501891384830701575', '1501891096828817410', '1415156984451063809', NULL, '2022-03-10 20:03:05', '116.23.218.77');
INSERT INTO `sys_role_permission` VALUES ('1501891384830701576', '1501891096828817410', '1415277817119023106', NULL, '2022-03-10 20:03:05', '116.23.218.77');
INSERT INTO `sys_role_permission` VALUES ('1501891384830701578', '1501891096828817410', '1419574496959193090', NULL, '2022-03-10 20:03:05', '116.23.218.77');

-- ----------------------------
-- Table structure for sys_tenant
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant`;
CREATE TABLE `sys_tenant`  (
  `id` decimal(11, 0) NOT NULL COMMENT '????????????',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `create_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `begin_date` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `end_date` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `status` decimal(11, 0) NULL DEFAULT NULL COMMENT '?????? 1?????? 0??????'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '??????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_tenant
-- ----------------------------
INSERT INTO `sys_tenant` VALUES (1, '????????????001', '2020-07-10 15:43:32', 'admin', NULL, NULL, 1);

-- ----------------------------
-- Table structure for sys_third_account
-- ----------------------------
DROP TABLE IF EXISTS `sys_third_account`;
CREATE TABLE `sys_third_account`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????',
  `sys_user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???????????????id',
  `third_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `status` decimal(4, 0) NULL DEFAULT NULL COMMENT '??????(1-??????,2-??????)',
  `del_flag` decimal(4, 0) NULL DEFAULT NULL COMMENT '????????????(0-??????,1-?????????)',
  `realname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `third_user_uuid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???????????????',
  `third_user_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????app????????????'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `realname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `salt` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'md5?????????',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `birthday` datetime(0) NULL DEFAULT NULL COMMENT '??????',
  `sex` decimal(4, 0) NULL DEFAULT NULL COMMENT '??????(0-????????????,1-???,2-???)',
  `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `status` decimal(4, 0) NULL DEFAULT NULL COMMENT '??????(1-??????,2-??????)',
  `del_flag` decimal(4, 0) NULL DEFAULT NULL COMMENT '????????????(0-??????,1-?????????)',
  `third_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????????????????',
  `third_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???????????????',
  `activiti_sync` decimal(4, 0) NULL DEFAULT NULL COMMENT '?????????????????????(1-??????,0-?????????)',
  `work_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????',
  `post` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????????????????',
  `telephone` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `user_identity` decimal(4, 0) NULL DEFAULT NULL COMMENT '?????????1???????????? 2?????????',
  `depart_ids` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '????????????',
  `rel_tenant_ids` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???????????????',
  `client_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????ID'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '?????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('e9ca23d68d884d4ebb19d07889727dae', 'admin', '?????????', 'cb362cfeefbf3d8d', 'RCGTeGiH', '', '2018-12-05 00:00:00', 1, 'jeecg@163.com', '18611111111', 'A01', 1, 0, NULL, NULL, 1, '00001', '?????????', NULL, NULL, '2019-06-21 17:54:10', 'admin', '2021-10-09 21:03:21', 2, 'c6d7cb4deeac411cb3384b1b31278596', NULL, NULL);
INSERT INTO `sys_user` VALUES ('1448560127207559169', 'ceshi', '??????', '8480d522fcf8d62c', 'bslhULTz', NULL, NULL, NULL, NULL, NULL, 'A01', 1, 0, 'bf4ff455bd3344e784cf2ba92ffee2e1', '1', NULL, NULL, NULL, NULL, NULL, '2021-10-14 16:03:41', 'ceshi', '2022-03-22 14:12:52', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_user_agent
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_agent`;
CREATE TABLE `sys_user_agent`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????',
  `user_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `agent_user_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????',
  `start_time` datetime(0) NULL DEFAULT NULL COMMENT '??????????????????',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '??????????????????',
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????0??????1??????',
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???????????????',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????????????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???????????????',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????????????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  UNIQUE INDEX `uk_sug_user_name`(`user_name`) USING BTREE,
  INDEX `idx_sug_end_time`(`end_time`) USING BTREE,
  INDEX `idx_sug_start_time`(`start_time`) USING BTREE,
  INDEX `idx_sug_status`(`status`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '?????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_user_depart
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_depart`;
CREATE TABLE `sys_user_depart`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????id',
  `dep_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????id'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_depart
-- ----------------------------
INSERT INTO `sys_user_depart` VALUES ('1506108597582270465', '1448560127207559169', 'f79b7d5a99b1442c876858a6961cb1fb');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????id',
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????id',
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????id'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '???????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1446823599141052418', 'e9ca23d68d884d4ebb19d07889727dae', 'f6817f48af4fb3af11b9e8bf182f618b');
INSERT INTO `sys_user_role` VALUES ('1446823599141052418', 'f6817f48af4fb3af11b9e8bf182f618b', 'f6817f48af4fb3af11b9e8bf182f618b');
INSERT INTO `sys_user_role` VALUES ('1506108597502578689', '1448560127207559169', '1501891096828817410');

SET FOREIGN_KEY_CHECKS = 1;
