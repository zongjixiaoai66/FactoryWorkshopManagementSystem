/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t173`;
CREATE DATABASE IF NOT EXISTS `t173` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t173`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'upload/picture1.jpg'),
	(2, 'picture2', 'upload/picture2.jpg'),
	(3, 'picture3', 'upload/picture3.jpg');

DROP TABLE IF EXISTS `kanbanxinxi`;
CREATE TABLE IF NOT EXISTS `kanbanxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kanbanmingcheng` varchar(200) NOT NULL COMMENT '看板名称',
  `yulantu` varchar(200) DEFAULT NULL COMMENT '预览图',
  `wangyelianjie` varchar(200) NOT NULL COMMENT '网页链接',
  `neirongshuoming` longtext COMMENT '内容说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='看板信息';

DELETE FROM `kanbanxinxi`;
INSERT INTO `kanbanxinxi` (`id`, `addtime`, `kanbanmingcheng`, `yulantu`, `wangyelianjie`, `neirongshuoming`) VALUES
	(21, '2022-03-19 07:00:38', '看板名称1', 'upload/kanbanxinxi_yulantu1.jpg', 'http://www.baidu.com', '内容说明1'),
	(22, '2022-03-19 07:00:38', '看板名称2', 'upload/kanbanxinxi_yulantu2.jpg', '网页链接2', '内容说明2'),
	(23, '2022-03-19 07:00:38', '看板名称3', 'upload/kanbanxinxi_yulantu3.jpg', '网页链接3', '内容说明3'),
	(24, '2022-03-19 07:00:38', '看板名称4', 'upload/kanbanxinxi_yulantu4.jpg', '网页链接4', '内容说明4'),
	(25, '2022-03-19 07:00:38', '看板名称5', 'upload/kanbanxinxi_yulantu5.jpg', '网页链接5', '内容说明5'),
	(26, '2022-03-19 07:00:38', '看板名称6', 'upload/kanbanxinxi_yulantu6.jpg', '网页链接6', '内容说明6');

DROP TABLE IF EXISTS `renyuan`;
CREATE TABLE IF NOT EXISTS `renyuan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `renyuanleixing` varchar(200) DEFAULT NULL COMMENT '人员类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='人员';

DELETE FROM `renyuan`;
INSERT INTO `renyuan` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `xingbie`, `touxiang`, `youxiang`, `shouji`, `renyuanleixing`) VALUES
	(11, '2022-03-19 07:00:38', '人员1', '1', '姓名1', '男', 'upload/renyuan_touxiang1.jpg', '773890001@qq.com', '13823888881', '人员类型1'),
	(12, '2022-03-19 07:00:38', '人员2', '123456', '姓名2', '男', 'upload/renyuan_touxiang2.jpg', '773890002@qq.com', '13823888882', '人员类型2'),
	(13, '2022-03-19 07:00:38', '人员3', '123456', '姓名3', '男', 'upload/renyuan_touxiang3.jpg', '773890003@qq.com', '13823888883', '人员类型3'),
	(14, '2022-03-19 07:00:38', '人员4', '123456', '姓名4', '男', 'upload/renyuan_touxiang4.jpg', '773890004@qq.com', '13823888884', '人员类型4'),
	(15, '2022-03-19 07:00:38', '人员5', '123456', '姓名5', '男', 'upload/renyuan_touxiang5.jpg', '773890005@qq.com', '13823888885', '人员类型5'),
	(16, '2022-03-19 07:00:38', '人员6', '123456', '姓名6', '男', 'upload/renyuan_touxiang6.jpg', '773890006@qq.com', '13823888886', '人员类型6');

DROP TABLE IF EXISTS `shebeixinxi`;
CREATE TABLE IF NOT EXISTS `shebeixinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) NOT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) NOT NULL COMMENT '设备名称',
  `shebeileixing` varchar(200) DEFAULT NULL COMMENT '设备类型',
  `guimo` varchar(200) DEFAULT NULL COMMENT '规模',
  `shuliang` int NOT NULL COMMENT '数量',
  `zhuyishixiang` longtext COMMENT '注意事项',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shebeibianhao` (`shebeibianhao`),
  UNIQUE KEY `shebeimingcheng` (`shebeimingcheng`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='设备信息';

DELETE FROM `shebeixinxi`;
INSERT INTO `shebeixinxi` (`id`, `addtime`, `shebeibianhao`, `shebeimingcheng`, `shebeileixing`, `guimo`, `shuliang`, `zhuyishixiang`) VALUES
	(31, '2022-03-19 07:00:38', '1111111111', '设备名称1', '设备类型1', '规模1', 1, '注意事项1'),
	(32, '2022-03-19 07:00:38', '2222222222', '设备名称2', '设备类型2', '规模2', 2, '注意事项2'),
	(33, '2022-03-19 07:00:38', '3333333333', '设备名称3', '设备类型3', '规模3', 3, '注意事项3'),
	(34, '2022-03-19 07:00:38', '4444444444', '设备名称4', '设备类型4', '规模4', 4, '注意事项4'),
	(35, '2022-03-19 07:00:38', '5555555555', '设备名称5', '设备类型5', '规模5', 5, '注意事项5'),
	(36, '2022-03-19 07:00:38', '6666666666', '设备名称6', '设备类型6', '规模6', 6, '注意事项6');

DROP TABLE IF EXISTS `shengchangongxu`;
CREATE TABLE IF NOT EXISTS `shengchangongxu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shengchanpici` varchar(200) DEFAULT NULL COMMENT '生产批次',
  `gongxumingcheng` varchar(200) NOT NULL COMMENT '工序名称',
  `gongxubianhao` varchar(200) DEFAULT NULL COMMENT '工序编号',
  `shebeimingcheng` varchar(200) NOT NULL COMMENT '设备名称',
  `picishuliang` int DEFAULT NULL COMMENT '批次数量',
  `gongxuneirong` longtext COMMENT '工序内容',
  `chanpinmingcheng` longtext COMMENT '产品名称',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gongxubianhao` (`gongxubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='生产工序';

DELETE FROM `shengchangongxu`;
INSERT INTO `shengchangongxu` (`id`, `addtime`, `shengchanpici`, `gongxumingcheng`, `gongxubianhao`, `shebeimingcheng`, `picishuliang`, `gongxuneirong`, `chanpinmingcheng`, `fabushijian`) VALUES
	(51, '2022-03-19 07:00:38', '生产批次1', '工序名称1', '1111111111', '设备名称1', 1, '工序内容1', '产品名称1', '2022-03-19 15:00:38'),
	(52, '2022-03-19 07:00:38', '生产批次2', '工序名称2', '2222222222', '设备名称2', 2, '工序内容2', '产品名称2', '2022-03-19 15:00:38'),
	(53, '2022-03-19 07:00:38', '生产批次3', '工序名称3', '3333333333', '设备名称3', 3, '工序内容3', '产品名称3', '2022-03-19 15:00:38'),
	(54, '2022-03-19 07:00:38', '生产批次4', '工序名称4', '4444444444', '设备名称4', 4, '工序内容4', '产品名称4', '2022-03-19 15:00:38'),
	(55, '2022-03-19 07:00:38', '生产批次5', '工序名称5', '5555555555', '设备名称5', 5, '工序内容5', '产品名称5', '2022-03-19 15:00:38'),
	(56, '2022-03-19 07:00:38', '生产批次6', '工序名称6', '6666666666', '设备名称6', 6, '工序内容6', '产品名称6', '2022-03-19 15:00:38');

DROP TABLE IF EXISTS `shengchankaili`;
CREATE TABLE IF NOT EXISTS `shengchankaili` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongdanshuliang` int NOT NULL COMMENT '工单数量',
  `shengchanpici` varchar(200) NOT NULL COMMENT '生产批次',
  `picishuliang` int DEFAULT NULL COMMENT '批次数量',
  `picishuoming` longtext COMMENT '批次说明',
  `chanpinmingcheng` longtext COMMENT '产品名称',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='生产开立';

DELETE FROM `shengchankaili`;
INSERT INTO `shengchankaili` (`id`, `addtime`, `gongdanshuliang`, `shengchanpici`, `picishuliang`, `picishuoming`, `chanpinmingcheng`, `fabushijian`) VALUES
	(41, '2022-03-19 07:00:38', 1, '生产批次1', 1, '批次说明1', '产品名称1', '2022-03-19 15:00:38'),
	(42, '2022-03-19 07:00:38', 2, '生产批次2', 2, '批次说明2', '产品名称2', '2022-03-19 15:00:38'),
	(43, '2022-03-19 07:00:38', 3, '生产批次3', 3, '批次说明3', '产品名称3', '2022-03-19 15:00:38'),
	(44, '2022-03-19 07:00:38', 4, '生产批次4', 4, '批次说明4', '产品名称4', '2022-03-19 15:00:38'),
	(45, '2022-03-19 07:00:38', 5, '生产批次5', 5, '批次说明5', '产品名称5', '2022-03-19 15:00:38'),
	(46, '2022-03-19 07:00:38', 6, '生产批次6', 6, '批次说明6', '产品名称6', '2022-03-19 15:00:38');

DROP TABLE IF EXISTS `shengchanliucheng`;
CREATE TABLE IF NOT EXISTS `shengchanliucheng` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shengchanpihao` varchar(200) DEFAULT NULL COMMENT '生产批号',
  `shengchanpici` varchar(200) DEFAULT NULL COMMENT '生产批次',
  `gongxumingcheng` varchar(200) DEFAULT NULL COMMENT '工序名称',
  `gongxubianhao` varchar(200) DEFAULT NULL COMMENT '工序编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `picishuliang` int NOT NULL COMMENT '批次数量',
  `chanpinmingcheng` longtext COMMENT '产品名称',
  `shengchanzhuangtai` varchar(200) DEFAULT NULL COMMENT '生产状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shengchanpihao` (`shengchanpihao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3 COMMENT='生产流程';

DELETE FROM `shengchanliucheng`;
INSERT INTO `shengchanliucheng` (`id`, `addtime`, `shengchanpihao`, `shengchanpici`, `gongxumingcheng`, `gongxubianhao`, `shebeimingcheng`, `picishuliang`, `chanpinmingcheng`, `shengchanzhuangtai`) VALUES
	(61, '2022-03-19 07:00:39', '1111111111', '生产批次1', '工序名称1', '工序编号1', '设备名称1', 1, '产品名称1', '未生产'),
	(62, '2022-03-19 07:00:39', '2222222222', '生产批次2', '工序名称2', '工序编号2', '设备名称2', 2, '产品名称2', '未生产'),
	(63, '2022-03-19 07:00:39', '3333333333', '生产批次3', '工序名称3', '工序编号3', '设备名称3', 3, '产品名称3', '未生产'),
	(64, '2022-03-19 07:00:39', '4444444444', '生产批次4', '工序名称4', '工序编号4', '设备名称4', 4, '产品名称4', '未生产'),
	(65, '2022-03-19 07:00:39', '5555555555', '生产批次5', '工序名称5', '工序编号5', '设备名称5', 5, '产品名称5', '未生产'),
	(66, '2022-03-19 07:00:39', '6666666666', '生产批次6', '工序名称6', '工序编号6', '设备名称6', 6, '产品名称6', '未生产');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'abo', 'users', '管理员', '8i16ofpzrbi2azrveekfyjjy1gduhb3o', '2022-03-19 07:01:42', '2022-03-19 08:04:47');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-03-19 07:00:39');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
