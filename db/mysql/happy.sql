DROP TABLE IF EXISTS `sms_log`;
CREATE TABLE `sms_log`
(
    `id`          bigint      NOT NULL AUTO_INCREMENT COMMENT 'id',
    `platform_id` bigint        DEFAULT NULL COMMENT '平台ID',
    `platform`    tinyint       DEFAULT NULL COMMENT '平台类型',
    `mobile`      varchar(20) NOT NULL COMMENT '手机号',
    `params`      varchar(200)  DEFAULT NULL COMMENT '参数',
    `status`      tinyint       DEFAULT NULL COMMENT '状态  0：失败   1：成功',
    `error`       varchar(2000) DEFAULT NULL COMMENT '异常信息',
    `create_time` datetime      DEFAULT NULL COMMENT '创建时间',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='短信日志';

DROP TABLE IF EXISTS `sms_platform`;
CREATE TABLE `sms_platform`
(
    `id`          bigint       NOT NULL AUTO_INCREMENT COMMENT 'id',
    `platform`    tinyint      DEFAULT NULL COMMENT '平台类型  0：阿里云   1：腾讯云   2：七牛云   3：华为云',
    `sign_name`   varchar(100) NOT NULL COMMENT '短信签名',
    `template_id` varchar(100) NOT NULL COMMENT '短信模板',
    `app_id`      varchar(100) NOT NULL COMMENT '短信应用ID，如：腾讯云等',
    `sender_id`   varchar(100) NOT NULL COMMENT '腾讯云国际短信、华为云等需要',
    `url`         varchar(200) NOT NULL COMMENT '接入地址，如：华为云',
    `access_key`  varchar(100) DEFAULT NULL COMMENT 'AccessKey',
    `secret_key`  varchar(100) DEFAULT NULL COMMENT 'SecretKey',
    `status`      tinyint      DEFAULT NULL COMMENT '状态  0：禁用   1：启用',
    `version`     int          DEFAULT NULL COMMENT '版本号',
    `deleted`     tinyint      DEFAULT NULL COMMENT '删除标识  0：正常   1：已删除',
    `creator`     bigint       DEFAULT NULL COMMENT '创建者',
    `create_time` datetime     DEFAULT NULL COMMENT '创建时间',
    `updater`     bigint       DEFAULT NULL COMMENT '更新者',
    `update_time` datetime     DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='短信平台';

DROP TABLE IF EXISTS `sys_attachment`;
CREATE TABLE `sys_attachment`
(
    `id`          bigint       NOT NULL AUTO_INCREMENT COMMENT 'id',
    `name`        varchar(255) NOT NULL COMMENT '附件名称',
    `url`         varchar(255) NOT NULL COMMENT '附件地址',
    `size`        bigint      DEFAULT NULL COMMENT '附件大小',
    `platform`    varchar(50) DEFAULT NULL COMMENT '存储平台',
    `tenant_id`   bigint      DEFAULT NULL COMMENT '租户ID',
    `version`     int         DEFAULT NULL COMMENT '版本号',
    `deleted`     tinyint     DEFAULT NULL COMMENT '删除标识  0：正常   1：已删除',
    `creator`     bigint      DEFAULT NULL COMMENT '创建者',
    `create_time` datetime    DEFAULT NULL COMMENT '创建时间',
    `updater`     bigint      DEFAULT NULL COMMENT '更新者',
    `update_time` datetime    DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='附件管理';

INSERT INTO `sys_attachment` (`id`, `name`, `url`, `size`, `platform`, `tenant_id`, `version`, `deleted`, `creator`,
                              `create_time`, `updater`, `update_time`)
VALUES (1, '222.jpeg', 'http://localhost:8080/upload/20240303/222_66596.jpeg', 190943, 'LOCAL', NULL, 0, 1, 10000,
        '2024-03-03 18:29:57', 10000, '2024-03-06 00:11:24');

DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`
(
    `id`           bigint       NOT NULL AUTO_INCREMENT COMMENT 'id',
    `dict_type_id` bigint       NOT NULL COMMENT '字典类型ID',
    `dict_label`   varchar(255) NOT NULL COMMENT '字典标签',
    `dict_value`   varchar(255) DEFAULT NULL COMMENT '字典值',
    `label_class`  varchar(100) DEFAULT NULL COMMENT '标签样式',
    `remark`       varchar(255) DEFAULT NULL COMMENT '备注',
    `sort`         int          DEFAULT NULL COMMENT '排序',
    `tenant_id`    bigint       DEFAULT NULL COMMENT '租户ID',
    `version`      int          DEFAULT NULL COMMENT '版本号',
    `deleted`      tinyint      DEFAULT NULL COMMENT '删除标识  0：正常   1：已删除',
    `creator`      bigint       DEFAULT NULL COMMENT '创建者',
    `create_time`  datetime     DEFAULT NULL COMMENT '创建时间',
    `updater`      bigint       DEFAULT NULL COMMENT '更新者',
    `update_time`  datetime     DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典数据';

INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (1, 1, '停用', '0', 'danger', '', 1, 10000, 0, 0, 10000, '2024-03-03 17:11:13', 10000, '2024-03-03 17:11:13');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (2, 1, '正常', '1', 'primary', '', 0, 10000, 0, 0, 10000, '2024-03-03 17:11:13', 10000, '2024-03-03 17:11:13');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (3, 2, '男', '0', 'primary', '', 0, 10000, 0, 0, 10000, '2024-03-03 17:11:13', 10000, '2024-03-03 17:11:13');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (4, 2, '女', '1', 'success', '', 1, 10000, 0, 0, 10000, '2024-03-03 17:11:13', 10000, '2024-03-03 17:11:13');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (5, 2, '未知', '2', 'warning', '', 2, 10000, 0, 0, 10000, '2024-03-03 17:11:13', 10000, '2024-03-03 17:11:13');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (6, 3, '正常', '1', 'primary', '', 0, 10000, 0, 0, 10000, '2024-03-03 17:11:13', 10000, '2024-03-03 17:11:13');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (7, 3, '停用', '0', 'danger', '', 1, 10000, 0, 0, 10000, '2024-03-03 17:11:13', 10000, '2024-03-03 17:11:13');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (8, 4, '全部数据', '0', '', '', 0, 10000, 0, 0, 10000, '2024-03-03 17:11:13', 10000, '2024-03-03 17:11:13');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (9, 4, '本机构及子机构数据', '1', '', '', 0, 10000, 0, 0, 10000, '2024-03-03 17:11:13', 10000,
        '2024-03-03 17:11:13');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (10, 4, '本机构数据', '2', '', '', 0, 10000, 0, 0, 10000, '2024-03-03 17:11:13', 10000, '2024-03-03 17:11:13');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (11, 4, '本人数据', '3', '', '', 0, 10000, 0, 0, 10000, '2024-03-03 17:11:13', 10000, '2024-03-03 17:11:13');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (12, 4, '自定义数据', '4', '', '', 0, 10000, 0, 0, 10000, '2024-03-03 17:11:13', 10000, '2024-03-03 17:11:13');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (13, 5, '禁用', '0', 'danger', '', 1, 10000, 0, 0, 10000, '2024-03-03 17:11:13', 10000, '2024-03-03 17:11:13');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (14, 5, '启用', '1', 'primary', '', 0, 10000, 0, 0, 10000, '2024-03-03 17:11:13', 10000, '2024-03-03 17:11:13');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (15, 6, '失败', '0', 'danger', '', 1, 10000, 0, 0, 10000, '2024-03-03 17:11:13', 10000, '2024-03-03 17:11:13');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (16, 6, '成功', '1', 'primary', '', 0, 10000, 0, 0, 10000, '2024-03-03 17:11:13', 10000, '2024-03-03 17:11:13');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (17, 7, '登录成功', '0', 'primary', '', 0, 10000, 0, 0, 10000, '2024-03-03 17:11:13', 10000,
        '2024-03-03 17:11:13');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (18, 7, '退出成功', '1', 'warning', '', 1, 10000, 0, 0, 10000, '2024-03-03 17:11:13', 10000,
        '2024-03-03 17:11:13');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (19, 7, '验证码错误', '2', 'danger', '', 2, 10000, 0, 0, 10000, '2024-03-03 17:11:13', 10000,
        '2024-03-03 17:11:13');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (20, 7, '账号密码错误', '3', 'danger', '', 3, 10000, 0, 0, 10000, '2024-03-03 17:11:13', 10000,
        '2024-03-03 17:11:13');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (21, 8, '否', '0', 'primary', '', 1, 10000, 0, 0, 10000, '2024-03-03 17:11:13', 10000, '2024-03-03 17:11:13');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (22, 8, '是', '1', 'danger', '', 0, 10000, 0, 0, 10000, '2024-03-03 17:11:13', 10000, '2024-03-03 17:11:13');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (23, 9, '是', '1', 'danger', '', 1, 10000, 0, 0, 10000, '2024-03-03 17:11:13', 10000, '2024-03-03 17:11:13');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (24, 9, '否', '0', 'primary', '', 0, 10000, 0, 0, 10000, '2024-03-03 17:11:13', 10000, '2024-03-03 17:11:13');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (25, 10, '其它', '0', 'info', '', 10, 10000, 0, 0, 10000, '2024-03-03 17:11:13', 10000, '2024-03-03 17:11:13');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (26, 10, '查询', '1', 'primary', '', 0, 10000, 0, 0, 10000, '2024-03-03 17:11:13', 10000, '2024-03-03 17:11:13');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (27, 10, '新增', '2', 'success', '', 1, 10000, 0, 0, 10000, '2024-03-03 17:11:13', 10000, '2024-03-03 17:11:13');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (28, 10, '修改', '3', 'warning', '', 2, 10000, 0, 0, 10000, '2024-03-03 17:11:13', 10000, '2024-03-03 17:11:13');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (29, 10, '删除', '4', 'danger', '', 3, 10000, 0, 0, 10000, '2024-03-03 17:11:13', 10000, '2024-03-03 17:11:13');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (30, 10, '导出', '5', 'info', '', 4, 10000, 0, 0, 10000, '2024-03-03 17:11:13', 10000, '2024-03-03 17:11:13');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (31, 10, '导入', '6', 'info', '', 5, 10000, 0, 0, 10000, '2024-03-03 17:11:13', 10000, '2024-03-03 17:11:13');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (32, 11, '阿里云', '0', '', '', 0, 10000, 0, 0, 10000, '2024-03-03 17:12:33', 10000, '2024-03-03 17:12:33');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (33, 11, '腾讯云', '1', '', '', 1, 10000, 0, 0, 10000, '2024-03-03 17:12:33', 10000, '2024-03-03 17:12:33');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (34, 11, '七牛云', '2', '', '', 2, 10000, 0, 0, 10000, '2024-03-03 17:12:33', 10000, '2024-03-03 17:12:33');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (35, 11, '华为云', '3', '', '', 3, 10000, 0, 0, 10000, '2024-03-03 17:12:33', 10000, '2024-03-03 17:12:33');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (36, 12, '默认', 'default', '', '', 0, 10000, 0, 0, 10000, '2024-03-03 17:13:29', 10000, '2024-03-03 17:13:29');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (37, 12, '系统', 'system', '', '', 1, 10000, 0, 0, 10000, '2024-03-03 17:13:29', 10000, '2024-03-03 17:13:29');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (38, 13, '暂停', '0', 'danger', '', 0, 10000, 0, 0, 10000, '2024-03-03 17:13:29', 10000, '2024-03-03 17:13:29');
INSERT INTO `sys_dict_data` (`id`, `dict_type_id`, `dict_label`, `dict_value`, `label_class`, `remark`, `sort`,
                             `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (39, 13, '正常', '1', 'primary', '', 1, 10000, 0, 0, 10000, '2024-03-03 17:13:29', 10000, '2024-03-03 17:13:29');

DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`
(
    `id`          bigint       NOT NULL AUTO_INCREMENT COMMENT 'id',
    `dict_type`   varchar(100) NOT NULL COMMENT '字典类型',
    `dict_name`   varchar(255) NOT NULL COMMENT '字典名称',
    `dict_source` tinyint      DEFAULT '0' COMMENT '来源  0：字典数据  1：动态SQL',
    `dict_sql`    varchar(500) DEFAULT NULL COMMENT '动态SQL',
    `remark`      varchar(255) DEFAULT NULL COMMENT '备注',
    `sort`        int          DEFAULT NULL COMMENT '排序',
    `tenant_id`   bigint       DEFAULT NULL COMMENT '租户ID',
    `version`     int          DEFAULT NULL COMMENT '版本号',
    `deleted`     tinyint      DEFAULT NULL COMMENT '删除标识  0：正常   1：已删除',
    `creator`     bigint       DEFAULT NULL COMMENT '创建者',
    `create_time` datetime     DEFAULT NULL COMMENT '创建时间',
    `updater`     bigint       DEFAULT NULL COMMENT '更新者',
    `update_time` datetime     DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典类型';

INSERT INTO `sys_dict_type` (`id`, `dict_type`, `dict_name`, `dict_source`, `dict_sql`, `remark`, `sort`, `tenant_id`,
                             `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (1, 'post_status', '状态', 0, NULL, '岗位管理', 0, 10000, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_dict_type` (`id`, `dict_type`, `dict_name`, `dict_source`, `dict_sql`, `remark`, `sort`, `tenant_id`,
                             `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (2, 'user_gender', '性别', 0, NULL, '用户管理', 0, 10000, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_dict_type` (`id`, `dict_type`, `dict_name`, `dict_source`, `dict_sql`, `remark`, `sort`, `tenant_id`,
                             `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (3, 'user_status', '状态', 0, NULL, '用户管理', 0, 10000, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_dict_type` (`id`, `dict_type`, `dict_name`, `dict_source`, `dict_sql`, `remark`, `sort`, `tenant_id`,
                             `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (4, 'role_data_scope', '数据范围', 0, NULL, '角色管理', 0, 10000, 0, 0, 10000, '2024-03-03 17:11:13', 10000,
        '2024-03-03 17:11:13');
INSERT INTO `sys_dict_type` (`id`, `dict_type`, `dict_name`, `dict_source`, `dict_sql`, `remark`, `sort`, `tenant_id`,
                             `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (5, 'enable_disable', '状态', 0, NULL, '功能状态：启用 | 禁用 ', 0, 10000, 0, 0, 10000, '2024-03-03 17:11:13',
        10000, '2024-03-03 17:11:13');
INSERT INTO `sys_dict_type` (`id`, `dict_type`, `dict_name`, `dict_source`, `dict_sql`, `remark`, `sort`, `tenant_id`,
                             `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (6, 'success_fail', '状态', 0, NULL, '操作状态：成功 | 失败', 0, 10000, 0, 0, 10000, '2024-03-03 17:11:13', 10000,
        '2024-03-03 17:11:13');
INSERT INTO `sys_dict_type` (`id`, `dict_type`, `dict_name`, `dict_source`, `dict_sql`, `remark`, `sort`, `tenant_id`,
                             `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (7, 'login_operation', '操作信息', 0, NULL, '登录管理', 0, 10000, 0, 0, 10000, '2024-03-03 17:11:13', 10000,
        '2024-03-03 17:11:13');
INSERT INTO `sys_dict_type` (`id`, `dict_type`, `dict_name`, `dict_source`, `dict_sql`, `remark`, `sort`, `tenant_id`,
                             `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (8, 'params_type', '系统参数', 0, NULL, '参数管理', 0, 10000, 0, 0, 10000, '2024-03-03 17:11:13', 10000,
        '2024-03-03 17:11:13');
INSERT INTO `sys_dict_type` (`id`, `dict_type`, `dict_name`, `dict_source`, `dict_sql`, `remark`, `sort`, `tenant_id`,
                             `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (9, 'user_super_admin', '用户是否是超管', 0, NULL, '用户是否是超管', 0, 10000, 0, 0, 10000,
        '2024-03-03 17:11:13', 10000, '2024-03-03 17:11:13');
INSERT INTO `sys_dict_type` (`id`, `dict_type`, `dict_name`, `dict_source`, `dict_sql`, `remark`, `sort`, `tenant_id`,
                             `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (10, 'log_operate_type', '操作类型', 0, NULL, '操作日志', 0, 10000, 0, 0, 10000, '2024-03-03 17:11:13', 10000,
        '2024-03-03 17:11:13');
INSERT INTO `sys_dict_type` (`id`, `dict_type`, `dict_name`, `dict_source`, `dict_sql`, `remark`, `sort`, `tenant_id`,
                             `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (11, 'sms_platform', '平台类型', 0, NULL, '短信管理', 0, 10000, 0, 0, 10000, '2024-03-03 17:12:33', 10000,
        '2024-03-03 17:12:33');


DROP TABLE IF EXISTS `sys_log_login`;
CREATE TABLE `sys_log_login`
(
    `id`          bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
    `username`    varchar(50)  DEFAULT NULL COMMENT '用户名',
    `ip`          varchar(32)  DEFAULT NULL COMMENT '登录IP',
    `address`     varchar(32)  DEFAULT NULL COMMENT '登录地点',
    `user_agent`  varchar(500) DEFAULT NULL COMMENT 'User Agent',
    `status`      tinyint      DEFAULT NULL COMMENT '登录状态  0：失败   1：成功',
    `operation`   tinyint unsigned DEFAULT NULL COMMENT '操作信息   0：登录成功   1：退出成功  2：验证码错误  3：账号密码错误',
    `tenant_id`   bigint       DEFAULT NULL COMMENT '租户ID',
    `create_time` datetime     DEFAULT NULL COMMENT '创建时间',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='登录日志';

DROP TABLE IF EXISTS `sys_log_operate`;
CREATE TABLE `sys_log_operate`
(
    `id`           bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
    `module`       varchar(100) DEFAULT NULL COMMENT '模块名',
    `name`         varchar(100) DEFAULT NULL COMMENT '操作名',
    `req_uri`      varchar(200) DEFAULT NULL COMMENT '请求URI',
    `req_method`   varchar(20)  DEFAULT NULL COMMENT '请求方法',
    `req_params`   text COMMENT '请求参数',
    `ip`           varchar(32)  DEFAULT NULL COMMENT '操作IP',
    `address`      varchar(32)  DEFAULT NULL COMMENT '登录地点',
    `user_agent`   varchar(500) DEFAULT NULL COMMENT 'User Agent',
    `operate_type` tinyint      DEFAULT NULL COMMENT '操作类型',
    `duration`     int    NOT NULL COMMENT '执行时长',
    `status`       tinyint      DEFAULT NULL COMMENT '操作状态  0：失败   1：成功',
    `user_id`      bigint       DEFAULT NULL COMMENT '用户ID',
    `real_name`    varchar(50)  DEFAULT NULL COMMENT '操作人',
    `result_msg`   varchar(500) DEFAULT NULL COMMENT '返回消息',
    `tenant_id`    bigint       DEFAULT NULL COMMENT '租户ID',
    `create_time`  datetime     DEFAULT NULL COMMENT '创建时间',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='操作日志';


DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`
(
    `id`          bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
    `pid`         bigint       DEFAULT NULL COMMENT '上级ID',
    `name`        varchar(200) DEFAULT NULL COMMENT '菜单名称',
    `url`         varchar(200) DEFAULT NULL COMMENT '菜单URL',
    `authority`   varchar(500) DEFAULT NULL COMMENT '授权标识(多个用逗号分隔，如：sys:menu:list,sys:menu:save)',
    `type`        tinyint      DEFAULT NULL COMMENT '类型   0：菜单   1：按钮   2：接口',
    `open_style`  tinyint      DEFAULT NULL COMMENT '打开方式   0：内部   1：外部',
    `icon`        varchar(50)  DEFAULT NULL COMMENT '菜单图标',
    `sort`        int          DEFAULT NULL COMMENT '排序',
    `version`     int          DEFAULT NULL COMMENT '版本号',
    `deleted`     tinyint      DEFAULT NULL COMMENT '删除标识  0：正常   1：已删除',
    `creator`     bigint       DEFAULT NULL COMMENT '创建者',
    `create_time` datetime     DEFAULT NULL COMMENT '创建时间',
    `updater`     bigint       DEFAULT NULL COMMENT '更新者',
    `update_time` datetime     DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`id`),
    KEY           `idx_pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜单管理';

INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (1, NULL, '系统设置', NULL, NULL, 0, 0, 'icon-setting', 1, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (2, 1, '菜单管理', 'sys/menu/index', NULL, 0, 0, 'icon-menu', 0, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (3, 2, '查看', '', 'sys:menu:list', 1, 0, '', 0, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (4, 2, '新增', '', 'sys:menu:save', 1, 0, '', 1, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (5, 2, '修改', '', 'sys:menu:update,sys:menu:info', 1, 0, '', 2, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (6, 2, '删除', '', 'sys:menu:delete', 1, 0, '', 3, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (7, 1, '数据字典', 'sys/dict/type', '', 0, 0, 'icon-insertrowabove', 1, 0, 0, 10000, '2024-03-03 17:11:12',
        10000, '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (8, 7, '查询', '', 'sys:dict:page', 1, 0, '', 0, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (9, 7, '新增', '', 'sys:dict:save', 1, 0, '', 2, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (10, 7, '修改', '', 'sys:dict:update,sys:dict:info', 1, 0, '', 1, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (11, 7, '删除', '', 'sys:dict:delete', 1, 0, '', 3, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (12, NULL, '权限管理', '', '', 0, 0, 'icon-safetycertificate', 0, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (13, 12, '岗位管理', 'sys/post/index', '', 0, 0, 'icon-solution', 2, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (14, 13, '查询', '', 'sys:post:page', 1, 0, '', 0, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (15, 13, '新增', '', 'sys:post:save', 1, 0, '', 1, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (16, 13, '修改', '', 'sys:post:update,sys:post:info', 1, 0, '', 2, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (17, 13, '删除', '', 'sys:post:delete', 1, 0, '', 3, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (18, 12, '机构管理', 'sys/org/index', '', 0, 0, 'icon-cluster', 1, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (19, 18, '查询', '', 'sys:org:list', 1, 0, '', 0, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (20, 18, '新增', '', 'sys:org:save', 1, 0, '', 1, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (21, 18, '修改', '', 'sys:org:update,sys:org:info', 1, 0, '', 2, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (22, 18, '删除', '', 'sys:org:delete', 1, 0, '', 3, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (23, 12, '角色管理', 'sys/role/index', '', 0, 0, 'icon-team', 3, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (24, 23, '查询', '', 'sys:role:page', 1, 0, '', 0, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (25, 23, '新增', '', 'sys:role:save,sys:role:menu,sys:org:list', 1, 0, '', 1, 0, 0, 10000, '2024-03-03 17:11:12',
        10000, '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (26, 23, '修改', '', 'sys:role:update,sys:role:info,sys:role:menu,sys:org:list,sys:user:page', 1, 0, '', 2, 0, 0,
        10000, '2024-03-03 17:11:12', 10000, '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (27, 23, '删除', '', 'sys:role:delete', 1, 0, '', 3, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (28, 12, '用户管理', 'sys/user/index', '', 0, 0, 'icon-user', 0, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (29, 28, '查询', '', 'sys:user:page', 1, 0, '', 0, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (30, 28, '新增', '', 'sys:user:save,sys:role:list', 1, 0, '', 1, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (31, 28, '修改', '', 'sys:user:update,sys:user:info,sys:role:list', 1, 0, '', 2, 0, 0, 10000,
        '2024-03-03 17:11:12', 10000, '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (32, 28, '删除', '', 'sys:user:delete', 1, 0, '', 3, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (33, NULL, '应用管理', '', '', 0, 0, 'icon-appstore', 2, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (34, 1, '附件管理', 'sys/attachment/index', NULL, 0, 0, 'icon-folder-fill', 3, 0, 0, 10000,
        '2024-03-03 17:11:12', 10000, '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (35, 34, '查看', '', 'sys:attachment:page', 1, 0, '', 0, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (36, 34, '上传', '', 'sys:attachment:save', 1, 0, '', 1, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (37, 34, '删除', '', 'sys:attachment:delete', 1, 0, '', 1, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (38, NULL, '日志管理', '', '', 0, 0, 'icon-filedone', 3, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (39, 38, '登录日志', 'sys/log/login', 'sys:log:login', 0, 0, 'icon-solution', 0, 0, 0, 10000,
        '2024-03-03 17:11:12', 10000, '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (40, 28, '导入', '', 'sys:user:import', 1, 0, '', 5, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (41, 28, '导出', '', 'sys:user:export', 1, 0, '', 6, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (42, 1, '参数管理', 'sys/params/index', 'sys:params:all', 0, 0, 'icon-filedone', 2, 0, 0, 10000,
        '2024-03-03 17:11:12', 10000, '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (43, 1, '接口文档', '{{apiUrl}}/doc.html', NULL, 0, 1, 'icon-file-text-fill', 10, 0, 0, 10000,
        '2024-03-03 17:11:12', 10000, '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (44, 38, '操作日志', 'sys/log/operate', 'sys:operate:all', 0, 0, 'icon-file-text', 1, 0, 0, 10000,
        '2024-03-03 17:11:12', 10000, '2024-03-03 17:11:12');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (45, 1, '三方登录', 'sys/third/config/index', 'third:config:all', 0, 0, 'icon-chrome-fill', 0, 0, 0, 10000,
        '2024-03-03 17:11:12', 10000, '2024-03-05 23:10:39');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (48, 33, '消息管理', '', '', 0, 0, 'icon-message', 2, 0, 0, 10000, '2024-03-03 17:12:32', 10000,
        '2024-03-03 17:12:32');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (49, 48, '短信日志', 'message/sms/log/index', 'sms:log', 0, 0, 'icon-detail', 1, 0, 0, 10000,
        '2024-03-03 17:12:32', 10000, '2024-03-03 17:12:32');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (50, 48, '短信平台', 'message/sms/platform/index', NULL, 0, 0, 'icon-whatsapp', 0, 0, 0, 10000,
        '2024-03-03 17:12:32', 10000, '2024-03-03 17:12:32');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (51, 50, '查看', '', 'sms:platform:page', 1, 0, '', 0, 0, 0, 10000, '2024-03-03 17:12:32', 10000,
        '2024-03-03 17:12:32');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (52, 50, '新增', '', 'sms:platform:save', 1, 0, '', 1, 0, 0, 10000, '2024-03-03 17:12:33', 10000,
        '2024-03-03 17:12:33');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (53, 50, '修改', '', 'sms:platform:update,sms:platform:info', 1, 0, '', 2, 0, 0, 10000, '2024-03-03 17:12:33',
        10000, '2024-03-03 17:12:33');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (54, 50, '删除', '', 'sms:platform:delete', 1, 0, '', 3, 0, 0, 10000, '2024-03-03 17:12:33', 10000,
        '2024-03-03 17:12:33');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (56, 66, '服务监控', 'monitor/server/index', 'monitor:server:all', 0, 0, 'icon-sever', 0, 0, 0, 10000,
        '2024-03-03 17:13:07', 10000, '2024-03-05 23:21:52');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (57, 66, '缓存监控', 'monitor/cache/index', 'monitor:cache:all', 0, 0, 'icon-fund-fill', 2, 0, 0, 10000,
        '2024-03-03 17:13:07', 10000, '2024-03-05 23:22:03');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (58, 66, '在线用户', 'monitor/user/index', 'monitor:user:all', 0, 0, 'icon-user', 3, 0, 0, 10000,
        '2024-03-03 17:13:07', 10000, '2024-03-05 23:22:11');
INSERT INTO `sys_menu` (`id`, `pid`, `name`, `url`, `authority`, `type`, `open_style`, `icon`, `sort`, `version`,
                        `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (66, NULL, '系统监控', '', '', 0, 0, 'icon-Report', 10, 0, 0, 10000, '2024-03-05 23:21:21', 10000,
        '2024-03-05 23:21:21');

DROP TABLE IF EXISTS `sys_org`;
CREATE TABLE `sys_org`
(
    `id`          bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
    `pid`         bigint      DEFAULT NULL COMMENT '上级ID',
    `name`        varchar(50) DEFAULT NULL COMMENT '机构名称',
    `sort`        int         DEFAULT NULL COMMENT '排序',
    `leader_id`   bigint      DEFAULT NULL COMMENT '负责人ID',
    `tenant_id`   bigint      DEFAULT NULL COMMENT '租户ID',
    `version`     int         DEFAULT NULL COMMENT '版本号',
    `deleted`     tinyint     DEFAULT NULL COMMENT '删除标识  0：正常   1：已删除',
    `creator`     bigint      DEFAULT NULL COMMENT '创建者',
    `create_time` datetime    DEFAULT NULL COMMENT '创建时间',
    `updater`     bigint      DEFAULT NULL COMMENT '更新者',
    `update_time` datetime    DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`id`),
    KEY           `idx_pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='机构管理';

INSERT INTO `sys_org` (`id`, `pid`, `name`, `sort`, `leader_id`, `tenant_id`, `version`, `deleted`, `creator`,
                       `create_time`, `updater`, `update_time`)
VALUES (1, NULL, '北京', 0, NULL, NULL, 0, 0, 10000, '2024-03-03 18:08:23', 10000, '2024-03-03 18:08:23');
INSERT INTO `sys_org` (`id`, `pid`, `name`, `sort`, `leader_id`, `tenant_id`, `version`, `deleted`, `creator`,
                       `create_time`, `updater`, `update_time`)
VALUES (2, NULL, '上海', 0, NULL, NULL, 0, 0, 10000, '2024-03-03 18:08:31', 10000, '2024-03-03 18:08:31');
INSERT INTO `sys_org` (`id`, `pid`, `name`, `sort`, `leader_id`, `tenant_id`, `version`, `deleted`, `creator`,
                       `create_time`, `updater`, `update_time`)
VALUES (3, NULL, '中央', 0, NULL, NULL, 0, 0, 10000, '2024-03-03 18:08:39', 10000, '2024-03-03 18:08:39');
INSERT INTO `sys_org` (`id`, `pid`, `name`, `sort`, `leader_id`, `tenant_id`, `version`, `deleted`, `creator`,
                       `create_time`, `updater`, `update_time`)
VALUES (4, 3, '内蒙', 0, NULL, NULL, 0, 0, 10000, '2024-03-03 18:08:47', 10000, '2024-03-03 18:08:47');

DROP TABLE IF EXISTS `sys_params`;

CREATE TABLE `sys_params`
(
    `id`          bigint  NOT NULL AUTO_INCREMENT COMMENT 'id',
    `param_name`  varchar(100)  DEFAULT NULL COMMENT '参数名称',
    `param_type`  tinyint NOT NULL COMMENT '系统参数   0：否   1：是',
    `param_key`   varchar(100)  DEFAULT NULL COMMENT '参数键',
    `param_value` varchar(2000) DEFAULT NULL COMMENT '参数值',
    `remark`      varchar(200)  DEFAULT NULL COMMENT '备注',
    `tenant_id`   bigint        DEFAULT NULL COMMENT '租户ID',
    `version`     int           DEFAULT NULL COMMENT '版本号',
    `deleted`     tinyint       DEFAULT NULL COMMENT '删除标识  0：正常   1：已删除',
    `creator`     bigint        DEFAULT NULL COMMENT '创建者',
    `create_time` datetime      DEFAULT NULL COMMENT '创建时间',
    `updater`     bigint        DEFAULT NULL COMMENT '更新者',
    `update_time` datetime      DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='参数管理';

INSERT INTO `sys_params` (`id`, `param_name`, `param_type`, `param_key`, `param_value`, `remark`, `tenant_id`,
                          `version`, `deleted`, `creator`, `create_time`, `updater`, `update_time`)
VALUES (1, '用户登录-验证码开关', 1, 'LOGIN_CAPTCHA', 'false', '是否开启验证码（true：开启，false：关闭）', 10000, 0, 0,
        10000, '2024-03-03 17:11:13', 10000, '2024-03-03 17:11:13');

DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`
(
    `id`          bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
    `post_code`   varchar(100) DEFAULT NULL COMMENT '岗位编码',
    `post_name`   varchar(100) DEFAULT NULL COMMENT '岗位名称',
    `sort`        int          DEFAULT NULL COMMENT '排序',
    `status`      tinyint      DEFAULT NULL COMMENT '状态  0：停用   1：正常',
    `tenant_id`   bigint       DEFAULT NULL COMMENT '租户ID',
    `version`     int          DEFAULT NULL COMMENT '版本号',
    `deleted`     tinyint      DEFAULT NULL COMMENT '删除标识  0：正常   1：已删除',
    `creator`     bigint       DEFAULT NULL COMMENT '创建者',
    `create_time` datetime     DEFAULT NULL COMMENT '创建时间',
    `updater`     bigint       DEFAULT NULL COMMENT '更新者',
    `update_time` datetime     DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='岗位管理';

INSERT INTO `sys_post` (`id`, `post_code`, `post_name`, `sort`, `status`, `tenant_id`, `version`, `deleted`, `creator`,
                        `create_time`, `updater`, `update_time`)
VALUES (1, '001', '测试岗位', 0, 1, NULL, 0, 0, 10000, '2024-03-03 18:09:13', 10000, '2024-03-03 18:09:13');
INSERT INTO `sys_post` (`id`, `post_code`, `post_name`, `sort`, `status`, `tenant_id`, `version`, `deleted`, `creator`,
                        `create_time`, `updater`, `update_time`)
VALUES (2, '002', '开发岗位', 0, 1, NULL, 0, 0, 10000, '2024-03-03 18:09:25', 10000, '2024-03-03 18:09:25');

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role`
(
    `id`          bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
    `name`        varchar(50)  DEFAULT NULL COMMENT '角色名称',
    `role_code`   varchar(50)  DEFAULT NULL COMMENT '角色编码',
    `remark`      varchar(100) DEFAULT NULL COMMENT '备注',
    `data_scope`  tinyint      DEFAULT NULL COMMENT '数据范围  0：全部数据  1：本机构及子机构数据  2：本机构数据  3：本人数据  4：自定义数据',
    `org_id`      bigint       DEFAULT NULL COMMENT '机构ID',
    `tenant_id`   bigint       DEFAULT NULL COMMENT '租户ID',
    `version`     int          DEFAULT NULL COMMENT '版本号',
    `deleted`     tinyint      DEFAULT NULL COMMENT '删除标识  0：正常   1：已删除',
    `creator`     bigint       DEFAULT NULL COMMENT '创建者',
    `create_time` datetime     DEFAULT NULL COMMENT '创建时间',
    `updater`     bigint       DEFAULT NULL COMMENT '更新者',
    `update_time` datetime     DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`id`),
    KEY           `idx_org_id` (`org_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色管理';

INSERT INTO `sys_role` (`id`, `name`, `role_code`, `remark`, `data_scope`, `org_id`, `tenant_id`, `version`, `deleted`,
                        `creator`, `create_time`, `updater`, `update_time`)
VALUES (1, '测试', '001', '', 3, NULL, NULL, 0, 0, 10000, '2024-03-03 18:10:27', 10000, '2024-03-03 18:10:27');
INSERT INTO `sys_role` (`id`, `name`, `role_code`, `remark`, `data_scope`, `org_id`, `tenant_id`, `version`, `deleted`,
                        `creator`, `create_time`, `updater`, `update_time`)
VALUES (2, '开发', '002', '', 3, NULL, NULL, 0, 0, 10000, '2024-03-03 18:10:40', 10000, '2024-03-03 18:10:40');

DROP TABLE IF EXISTS `sys_role_data_scope`;
CREATE TABLE `sys_role_data_scope`
(
    `id`          bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
    `role_id`     bigint   DEFAULT NULL COMMENT '角色ID',
    `org_id`      bigint   DEFAULT NULL COMMENT '机构ID',
    `version`     int      DEFAULT NULL COMMENT '版本号',
    `deleted`     tinyint  DEFAULT NULL COMMENT '删除标识  0：正常   1：已删除',
    `creator`     bigint   DEFAULT NULL COMMENT '创建者',
    `create_time` datetime DEFAULT NULL COMMENT '创建时间',
    `updater`     bigint   DEFAULT NULL COMMENT '更新者',
    `update_time` datetime DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`id`),
    KEY           `idx_role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色数据权限';

DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`
(
    `id`          bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
    `role_id`     bigint   DEFAULT NULL COMMENT '角色ID',
    `menu_id`     bigint   DEFAULT NULL COMMENT '菜单ID',
    `version`     int      DEFAULT NULL COMMENT '版本号',
    `deleted`     tinyint  DEFAULT NULL COMMENT '删除标识  0：正常   1：已删除',
    `creator`     bigint   DEFAULT NULL COMMENT '创建者',
    `create_time` datetime DEFAULT NULL COMMENT '创建时间',
    `updater`     bigint   DEFAULT NULL COMMENT '更新者',
    `update_time` datetime DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`id`),
    KEY           `idx_role_id` (`role_id`),
    KEY           `idx_menu_id` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色菜单关系';

INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (1, 1, 33, 0, 0, 10000, '2024-03-03 18:10:27', 10000, '2024-03-03 18:10:27');
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (2, 1, 47, 0, 1, 10000, '2024-03-03 18:10:27', 10000, '2024-03-03 18:10:27');
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (3, 1, 48, 0, 0, 10000, '2024-03-03 18:10:27', 10000, '2024-03-03 18:10:27');
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (4, 1, 50, 0, 0, 10000, '2024-03-03 18:10:27', 10000, '2024-03-03 18:10:27');
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (5, 1, 51, 0, 0, 10000, '2024-03-03 18:10:27', 10000, '2024-03-03 18:10:27');
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (6, 1, 52, 0, 0, 10000, '2024-03-03 18:10:27', 10000, '2024-03-03 18:10:27');
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (7, 1, 53, 0, 0, 10000, '2024-03-03 18:10:27', 10000, '2024-03-03 18:10:27');
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (8, 1, 54, 0, 0, 10000, '2024-03-03 18:10:27', 10000, '2024-03-03 18:10:27');
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (9, 1, 49, 0, 0, 10000, '2024-03-03 18:10:27', 10000, '2024-03-03 18:10:27');
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (10, 1, 55, 0, 1, 10000, '2024-03-03 18:10:27', 10000, '2024-03-03 18:10:27');
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (11, 1, 56, 0, 0, 10000, '2024-03-03 18:10:27', 10000, '2024-03-03 18:10:27');
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (12, 1, 57, 0, 0, 10000, '2024-03-03 18:10:27', 10000, '2024-03-03 18:10:27');
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (13, 1, 58, 0, 0, 10000, '2024-03-03 18:10:27', 10000, '2024-03-03 18:10:27');
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (14, 2, 12, 0, 0, 10000, '2024-03-03 18:10:40', 10000, '2024-03-03 18:10:40');
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (15, 2, 28, 0, 0, 10000, '2024-03-03 18:10:40', 10000, '2024-03-03 18:10:40');
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (16, 2, 29, 0, 0, 10000, '2024-03-03 18:10:40', 10000, '2024-03-03 18:10:40');
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (17, 2, 30, 0, 0, 10000, '2024-03-03 18:10:40', 10000, '2024-03-03 18:10:40');
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (18, 2, 31, 0, 0, 10000, '2024-03-03 18:10:40', 10000, '2024-03-03 18:10:40');
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (19, 2, 32, 0, 0, 10000, '2024-03-03 18:10:40', 10000, '2024-03-03 18:10:40');
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (20, 2, 40, 0, 0, 10000, '2024-03-03 18:10:40', 10000, '2024-03-03 18:10:40');
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (21, 2, 41, 0, 0, 10000, '2024-03-03 18:10:40', 10000, '2024-03-03 18:10:40');
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (22, 2, 18, 0, 0, 10000, '2024-03-03 18:10:40', 10000, '2024-03-03 18:10:40');
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (23, 2, 19, 0, 0, 10000, '2024-03-03 18:10:40', 10000, '2024-03-03 18:10:40');
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (24, 2, 20, 0, 0, 10000, '2024-03-03 18:10:40', 10000, '2024-03-03 18:10:40');
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (25, 2, 21, 0, 0, 10000, '2024-03-03 18:10:40', 10000, '2024-03-03 18:10:40');
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (26, 2, 22, 0, 0, 10000, '2024-03-03 18:10:40', 10000, '2024-03-03 18:10:40');
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (27, 2, 13, 0, 0, 10000, '2024-03-03 18:10:40', 10000, '2024-03-03 18:10:40');
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (28, 2, 14, 0, 0, 10000, '2024-03-03 18:10:40', 10000, '2024-03-03 18:10:40');
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (29, 2, 15, 0, 0, 10000, '2024-03-03 18:10:40', 10000, '2024-03-03 18:10:40');
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (30, 2, 16, 0, 0, 10000, '2024-03-03 18:10:40', 10000, '2024-03-03 18:10:40');
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (31, 2, 17, 0, 0, 10000, '2024-03-03 18:10:40', 10000, '2024-03-03 18:10:40');
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (32, 2, 23, 0, 0, 10000, '2024-03-03 18:10:40', 10000, '2024-03-03 18:10:40');
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (33, 2, 24, 0, 0, 10000, '2024-03-03 18:10:40', 10000, '2024-03-03 18:10:40');
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (34, 2, 25, 0, 0, 10000, '2024-03-03 18:10:40', 10000, '2024-03-03 18:10:40');
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (35, 2, 26, 0, 0, 10000, '2024-03-03 18:10:40', 10000, '2024-03-03 18:10:40');
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (36, 2, 27, 0, 0, 10000, '2024-03-03 18:10:40', 10000, '2024-03-03 18:10:40');

DROP TABLE IF EXISTS `sys_third_login`;
CREATE TABLE `sys_third_login`
(
    `id`          bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
    `open_type`   varchar(50)  DEFAULT NULL COMMENT '开放平台类型',
    `open_id`     varchar(100) DEFAULT NULL COMMENT '开放平台，唯一标识',
    `username`    varchar(100) DEFAULT NULL COMMENT '昵称',
    `user_id`     bigint       DEFAULT NULL COMMENT '用户ID',
    `tenant_id`   bigint       DEFAULT NULL COMMENT '租户ID',
    `version`     int          DEFAULT NULL COMMENT '版本号',
    `deleted`     tinyint      DEFAULT NULL COMMENT '删除标识  0：正常   1：已删除',
    `create_time` datetime     DEFAULT NULL COMMENT '创建时间',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='第三方登录';

DROP TABLE IF EXISTS `sys_third_login_config`;

CREATE TABLE `sys_third_login_config`
(
    `id`            bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
    `open_type`     varchar(50)  DEFAULT NULL COMMENT '开放平台类型',
    `client_id`     varchar(200) DEFAULT NULL COMMENT 'ClientID',
    `client_secret` varchar(200) DEFAULT NULL COMMENT 'ClientSecret',
    `redirect_uri`  varchar(200) DEFAULT NULL COMMENT 'RedirectUri',
    `agent_id`      varchar(200) DEFAULT NULL COMMENT 'AgentID',
    `tenant_id`     bigint       DEFAULT NULL COMMENT '租户ID',
    `version`       int          DEFAULT NULL COMMENT '版本号',
    `deleted`       tinyint      DEFAULT NULL COMMENT '删除标识  0：正常   1：已删除',
    `create_time`   datetime     DEFAULT NULL COMMENT '创建时间',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='第三方登录配置';

INSERT INTO `sys_third_login_config` (`id`, `open_type`, `client_id`, `client_secret`, `redirect_uri`, `agent_id`,
                                      `tenant_id`, `version`, `deleted`, `create_time`)
VALUES (1, 'feishu', 'cli_a541d3aa03f8500b', '5Chz39zvEhZtxSVZz3vLjfQHdkvavQaH',
        'http://localhost:8080/sys/third/callback/feishu', '', 10000, 0, 0, '2024-03-03 17:11:13');

DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`
(
    `id`          bigint      NOT NULL AUTO_INCREMENT COMMENT 'id',
    `username`    varchar(50) NOT NULL COMMENT '用户名',
    `password`    varchar(100) DEFAULT NULL COMMENT '密码',
    `real_name`   varchar(50)  DEFAULT NULL COMMENT '姓名',
    `avatar`      varchar(200) DEFAULT NULL COMMENT '头像',
    `gender`      tinyint      DEFAULT NULL COMMENT '性别   0：男   1：女   2：未知',
    `email`       varchar(100) DEFAULT NULL COMMENT '邮箱',
    `mobile`      varchar(20)  DEFAULT NULL COMMENT '手机号',
    `org_id`      bigint       DEFAULT NULL COMMENT '机构ID',
    `super_admin` tinyint      DEFAULT NULL COMMENT '超级管理员   0：否   1：是',
    `status`      tinyint      DEFAULT NULL COMMENT '状态  0：停用   1：正常',
    `tenant_id`   bigint       DEFAULT NULL COMMENT '租户ID',
    `version`     int          DEFAULT NULL COMMENT '版本号',
    `deleted`     tinyint      DEFAULT NULL COMMENT '删除标识  0：正常   1：已删除',
    `creator`     bigint       DEFAULT NULL COMMENT '创建者',
    `create_time` datetime     DEFAULT NULL COMMENT '创建时间',
    `updater`     bigint       DEFAULT NULL COMMENT '更新者',
    `update_time` datetime     DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10002 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户管理';

INSERT INTO `sys_user` (`id`, `username`, `password`, `real_name`, `avatar`, `gender`, `email`, `mobile`, `org_id`,
                        `super_admin`, `status`, `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                        `update_time`)
VALUES (10000, 'admin', 'dc1fd00e3eeeb940ff46f457bf97d66ba7fcc36e0b20802383de142860e76ae6', 'admin', NULL, 0,
        'admin@admin.com', '13800000000', NULL, 1, 1, 10000, 0, 0, 10000, '2024-03-03 17:11:12', 10000,
        '2024-03-03 17:11:12');
INSERT INTO `sys_user` (`id`, `username`, `password`, `real_name`, `avatar`, `gender`, `email`, `mobile`, `org_id`,
                        `super_admin`, `status`, `tenant_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                        `update_time`)
VALUES (10001, 'test1', '207cf410532f92a47dee245ce9b11ff71f578ebd763eb3bbea44ebd043d018fb', 'test1', NULL, 0, '',
        '13114918799', 1, 0, 1, NULL, 0, 0, 10000, '2024-03-03 18:23:19', 10000, '2024-03-03 18:23:19');

DROP TABLE IF EXISTS `sys_user_post`;

CREATE TABLE `sys_user_post`
(
    `id`          bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
    `user_id`     bigint   DEFAULT NULL COMMENT '用户ID',
    `post_id`     bigint   DEFAULT NULL COMMENT '岗位ID',
    `version`     int      DEFAULT NULL COMMENT '版本号',
    `deleted`     tinyint  DEFAULT NULL COMMENT '删除标识  0：正常   1：已删除',
    `creator`     bigint   DEFAULT NULL COMMENT '创建者',
    `create_time` datetime DEFAULT NULL COMMENT '创建时间',
    `updater`     bigint   DEFAULT NULL COMMENT '更新者',
    `update_time` datetime DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`id`),
    KEY           `idx_user_id` (`user_id`),
    KEY           `idx_post_id` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户岗位关系';


INSERT INTO `sys_user_post` (`id`, `user_id`, `post_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (1, 10001, 1, 0, 0, 10000, '2024-03-03 18:23:19', 10000, '2024-03-03 18:23:19');

DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`
(
    `id`          bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
    `role_id`     bigint   DEFAULT NULL COMMENT '角色ID',
    `user_id`     bigint   DEFAULT NULL COMMENT '用户ID',
    `version`     int      DEFAULT NULL COMMENT '版本号',
    `deleted`     tinyint  DEFAULT NULL COMMENT '删除标识  0：正常   1：已删除',
    `creator`     bigint   DEFAULT NULL COMMENT '创建者',
    `create_time` datetime DEFAULT NULL COMMENT '创建时间',
    `updater`     bigint   DEFAULT NULL COMMENT '更新者',
    `update_time` datetime DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`id`),
    KEY           `idx_role_id` (`role_id`),
    KEY           `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户角色关系';

INSERT INTO `sys_user_role` (`id`, `role_id`, `user_id`, `version`, `deleted`, `creator`, `create_time`, `updater`,
                             `update_time`)
VALUES (1, 1, 10001, 0, 0, 10000, '2024-03-03 18:23:19', 10000, '2024-03-03 18:23:19');

DROP TABLE IF EXISTS `sys_user_token`;

CREATE TABLE `sys_user_token`
(
    `id`                   bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
    `user_id`              bigint      DEFAULT NULL COMMENT '用户ID',
    `access_token`         varchar(32) DEFAULT NULL COMMENT 'accessToken',
    `access_token_expire`  datetime    DEFAULT NULL COMMENT 'accessToken 过期时间',
    `refresh_token`        varchar(32) DEFAULT NULL COMMENT 'refreshToken',
    `refresh_token_expire` datetime    DEFAULT NULL COMMENT 'refreshToken 过期时间',
    `tenant_id`            bigint      DEFAULT NULL COMMENT '租户ID',
    `create_time`          datetime    DEFAULT NULL COMMENT '创建时间',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户Token';

INSERT INTO `sys_user_token` (`id`, `user_id`, `access_token`, `access_token_expire`, `refresh_token`,
                              `refresh_token_expire`, `tenant_id`, `create_time`)
VALUES (1, 10000, '01d5b457715b495f94771626205608d7', '2024-03-06 20:48:34', '8d22a3d0372a44f9a07f692636510ad3',
        '2024-03-21 18:48:34', NULL, '2024-03-03 17:20:11');
INSERT INTO `sys_user_token` (`id`, `user_id`, `access_token`, `access_token_expire`, `refresh_token`,
                              `refresh_token_expire`, `tenant_id`, `create_time`)
VALUES (2, 10001, '1a442277b2a64ebcbdf36e185f501c86', '2024-03-03 22:48:24', 'fb13d9a2e0044a858a04d8eaf899c41d',
        '2024-03-17 20:48:24', NULL, '2024-03-03 20:48:24');


