CREATE TABLE `sapi_config` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sapi_config_cate_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '配置分类id（方便管理）',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态：1、启用，2、下架',
  `config_key` char(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '配置标识符（字母、数字._）',
  `config_value` text CHARACTER SET utf8mb4 NOT NULL COMMENT '值（Json、字符）',
  `config_des` text CHARACTER SET utf8mb4 NOT NULL COMMENT '配置描述',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '删除时间',
  PRIMARY KEY (`id`),
  KEY `sapi_config_cate_id` (`sapi_config_cate_id`),
  KEY `config_key` (`config_key`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='配置';


CREATE TABLE `sapi_config_cate` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cate_key` char(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '分类标识（字母、数字_）',
  `cate_name` varchar(255) CHARACTER SET utf8mb4 NOT NULL COMMENT '分类名称',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '删除时间',
  PRIMARY KEY (`id`),
  KEY `cate_key` (`cate_key`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='配置分类';