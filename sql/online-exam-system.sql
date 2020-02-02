/*
Navicat MySQL Data Transfer

Source Server         : 本地数据库
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : online-exam-system

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2020-02-02 19:31:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_account`
-- ----------------------------
DROP TABLE IF EXISTS `t_account`;
CREATE TABLE `t_account` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(63) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `username` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '账号,一般为学号或者教工号',
  `password` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `qq` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'QQ',
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `description` varchar(63) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '个人描述',
  `avatar_img_url` varchar(63) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `state` int(8) DEFAULT '0' COMMENT '当前账号状态,0表示正常,1表示禁用',
  `level` int(8) DEFAULT '0' COMMENT '0表示学生,1表示教师,2表示管理员',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of t_account
-- ----------------------------
INSERT INTO `t_account` VALUES ('1', '小明同学', 'xiaoming', '6F4B6B45FD8AF9C1F74B1D09C7613A3B', '123456', '18888888888', '123456@qq.com', '我是学渣。', 'headimg_placeholder.png', '0', '0', '2020-01-08 19:36:13', '2020-02-02 11:35:51');
INSERT INTO `t_account` VALUES ('2', '管理员', 'admin', '6F4B6B45FD8AF9C1F74B1D09C7613A3B', '123456', '18888888888', '123456@qq.com', '我是一个管理员，可以控制你们。', '6ab08a65-c969-4d6a-84dd-f0233d574459.png', '0', '2', '2020-01-30 09:47:38', '2020-02-02 11:35:54');
INSERT INTO `t_account` VALUES ('3', '小张同学', 'xiaozhang', '6F4B6B45FD8AF9C1F74B1D09C7613A3B', '123456', '18888888888', '123456@qq.com', '我是学霸。', 'headimg_placeholder.png', '0', '0', '2020-01-02 15:08:44', '2020-02-02 11:36:03');
INSERT INTO `t_account` VALUES ('4', '小红同学', 'xiaohong', '6F4B6B45FD8AF9C1F74B1D09C7613A3B', '123456', '18888888888', '123456@qq.com', '我是学酥。', 'headimg_placeholder.png', '0', '0', '2020-01-02 15:18:35', '2020-02-02 11:36:08');
INSERT INTO `t_account` VALUES ('5', '小刘同学', 'xiaoliu', '6F4B6B45FD8AF9C1F74B1D09C7613A3B', '123456', '18888888888', '123456@qq.com', '我搬砖的。', 'headimg_placeholder.png', '0', '0', '2020-01-13 19:33:13', '2020-02-02 11:36:17');
INSERT INTO `t_account` VALUES ('6', '大老师', 'dalaoshi', '6F4B6B45FD8AF9C1F74B1D09C7613A3B', '123456', '18888888888', '123456@qq.com', '我是你们的老师，可以批改试卷。', '806f91c4-08b5-49ec-9334-96bd24db8986.png', '0', '1', '2020-02-01 21:04:16', '2020-02-02 19:22:34');

-- ----------------------------
-- Table structure for `t_comment`
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` int(8) DEFAULT NULL COMMENT '用户ID',
  `post_id` int(8) DEFAULT NULL COMMENT '帖子id',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES ('5', '1', '8', '77778', '2020-02-02 12:34:40');

-- ----------------------------
-- Table structure for `t_contest`
-- ----------------------------
DROP TABLE IF EXISTS `t_contest`;
CREATE TABLE `t_contest` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_score` int(8) DEFAULT NULL COMMENT '考试总分',
  `subject_id` int(8) DEFAULT NULL COMMENT '学科ID',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `start_time` timestamp NULL DEFAULT NULL COMMENT '考试开始时间',
  `end_time` timestamp NULL DEFAULT NULL COMMENT '考试结束时间',
  `state` int(8) DEFAULT '0' COMMENT '进行状态:0表示未开始,1表示进行中,2表示考试已经结束,3表示该考试已经完成批卷',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of t_contest
-- ----------------------------
INSERT INTO `t_contest` VALUES ('4', '晋中学院2019年数据库原理与应用考试试题A卷', '100', '8', '2018-02-16 14:19:51', '2020-02-02 11:41:25', '2020-02-01 02:05:00', '2020-03-08 08:25:00', '1');
INSERT INTO `t_contest` VALUES ('5', '晋中学院2019年数据库原理与应用考试试题B卷', '0', '8', '2018-02-20 15:30:53', '2020-02-02 11:41:27', '2020-02-01 02:05:00', '2020-03-08 08:25:00', '1');
INSERT INTO `t_contest` VALUES ('6', '晋中学院2019年数据库原理与应用考试试题C卷', '0', '8', '2018-03-03 21:28:42', '2020-02-02 11:45:06', '2020-02-01 02:05:00', '2020-03-08 08:25:00', '1');
INSERT INTO `t_contest` VALUES ('7', 'C语言期末考试理论部分', '2', '2', '2020-02-02 11:53:58', '2020-02-02 12:32:45', '2020-02-02 11:55:00', '2020-02-02 12:30:00', '2');

-- ----------------------------
-- Table structure for `t_grade`
-- ----------------------------
DROP TABLE IF EXISTS `t_grade`;
CREATE TABLE `t_grade` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `student_id` int(8) DEFAULT NULL COMMENT '考生主键ID',
  `contest_id` int(8) DEFAULT NULL COMMENT '考试主键ID',
  `result` int(8) DEFAULT '0' COMMENT '最终分数',
  `auto_result` int(8) DEFAULT '0' COMMENT '电脑自动评判选择题分数',
  `manul_result` int(8) DEFAULT NULL COMMENT '人工手动评判分数',
  `answer_json` longtext COLLATE utf8mb4_unicode_ci COMMENT '考试作答答案json',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '考试交卷时间',
  `finish_time` timestamp NULL DEFAULT NULL COMMENT '改卷完成时间',
  `state` int(8) DEFAULT '0' COMMENT '0表示已交卷但是未评卷,1表示已交卷已评卷',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of t_grade
-- ----------------------------
INSERT INTO `t_grade` VALUES ('7', '1', '7', '0', '0', '0', 'B', '2020-02-02 11:57:17', null, '0');
INSERT INTO `t_grade` VALUES ('8', '1', '7', '0', '0', '0', '', '2020-02-02 12:00:57', null, '0');

-- ----------------------------
-- Table structure for `t_post`
-- ----------------------------
DROP TABLE IF EXISTS `t_post`;
CREATE TABLE `t_post` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `author_id` int(8) DEFAULT NULL COMMENT '作者ID',
  `html_content` longtext COLLATE utf8mb4_unicode_ci COMMENT 'html源代码',
  `text_content` longtext COLLATE utf8mb4_unicode_ci COMMENT '文本内容',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '帖子最后编辑时间',
  `last_reply_time` timestamp NULL DEFAULT NULL COMMENT '最后一次回复时间',
  `reply_num` int(8) DEFAULT '0' COMMENT '回复数',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of t_post
-- ----------------------------
INSERT INTO `t_post` VALUES ('8', '1', '<p><b>我要和你们交流一下技术</b></p><p><b>​</b><i></i><u></u><sub></sub><sup></sup><strike></strike><br></p>', '我要和你们交流一下技术​', '2020-02-02 12:34:25', '2020-02-02 12:34:40', '2020-02-02 12:34:40', '1', '我要和你们交流一下技术');

-- ----------------------------
-- Table structure for `t_question`
-- ----------------------------
DROP TABLE IF EXISTS `t_question`;
CREATE TABLE `t_question` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '题目标题',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '题目内容',
  `question_type` int(8) DEFAULT NULL COMMENT '题目类型,0表示单项选择题,1表示多项选择题,2表示问答题,3表示编程题',
  `option_a` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '选项A',
  `option_b` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '选项B',
  `option_c` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '选项C',
  `option_d` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '选项D',
  `answer` text COLLATE utf8mb4_unicode_ci COMMENT '答案',
  `parse` text COLLATE utf8mb4_unicode_ci COMMENT '答案解析',
  `subject_id` int(8) DEFAULT NULL COMMENT '学科ID',
  `contest_id` int(8) DEFAULT NULL COMMENT '试卷ID',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `score` int(8) DEFAULT NULL COMMENT '题目分值',
  `difficulty` int(8) DEFAULT '1' COMMENT '题目难度',
  `state` int(8) DEFAULT '1' COMMENT '0表示未考试题目,1表示已考试题目',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of t_question
-- ----------------------------
INSERT INTO `t_question` VALUES ('4', '下列哪一个 Transact-SQL 语句能够实现收回 user2 查询基本表 T 的权限？（ ）', '下列哪一个 Transact-SQL 语句能够实现收回 user2 查询基本表 T 的权限？（ ）', '0', 'REVOKE UPDATE ON T', 'GRANT SELECT ON T TO user2', 'DENY SELECT ON T TO user2', 'REVOKE SELECT ON T FROM user2', 'D', 'DENY：在安全系统中创建一项，以拒绝给当前数据库内的安全帐户授予权限并防止安全帐户通过其组或角色成员资格继承权限。\nREVOKE：删除以前在当前数据库内的用户上授予或拒绝的权限。', '8', '4', '2018-02-18 12:02:35', '2018-04-02 17:40:55', '5', '1', '1');
INSERT INTO `t_question` VALUES ('5', '用如下的 SQL 语句创建一个 s 表  CREATE  TABLE  s （ NO  CHAR （ 4 ） primary key ，  NAME  CHAR （ 8 ） NOT  NULL ，  SEX  CHAR （ 2 ），  AGE  INT ）  那么可以插入到该表中的数据是（ ）', '用如下的 SQL 语句创建一个 s 表\n\nCREATE  TABLE  s （ NO  CHAR （ 4 ） primary key ，\n\nNAME  CHAR （ 8 ） NOT  NULL ，\n\nSEX  CHAR （ 2 ），\n\nAGE  INT ）\n\n那么可以插入到该表中的数据是（ ）', '0', '（’1031’，’曾华’，NULL，NULL）', '（’1032’，’曾华’，男，23）', '（NULL，’曾华’，’男’，’23’）', '（’1033’，NULL，’男’，23）', 'A', '主键和NAME不能为空，所以C和D排除，插入char类型时要加单引号，插入int不用加单引号，综合，A对', '8', '4', '2018-02-18 20:17:06', '2018-04-02 17:40:55', '5', '4', '1');
INSERT INTO `t_question` VALUES ('6', '数据库管理系统的工作不包括？（）', '数据库管理系统的工作不包括？（）', '0', '定义数据库', '对已定义的数据库进行管理', '为定义的数据库提供操作系统', '数据通信', 'C', '略', '8', '4', '2018-02-20 16:38:46', '2018-04-02 17:40:55', '5', '1', '1');
INSERT INTO `t_question` VALUES ('7', '在关系数据库设计中，设计关系模式（二维表）是数据库设计中哪个阶段的任务。（）', '在关系数据库设计中，设计关系模式（二维表）是数据库设计中哪个阶段的任务。（）', '0', '逻辑设计阶段', '概念设计阶段', '物理设计阶段', '需求分析阶段', 'A', '逻辑设计的目的是从概念模型导出特定的DBMS可以处理的数据库的逻辑结构(数据库的模式和外模式)。在关系数据库设计中，设计关系模式是在数据库的逻辑设计阶段。', '8', '4', '2018-02-20 18:00:48', '2018-04-02 17:40:55', '5', '1', '1');
INSERT INTO `t_question` VALUES ('8', '（） 是存储在计算机内有结构的数据的集合。', '（） 是存储在计算机内有结构的数据的集合。', '0', '数据库系统', '数据库', '数据库管理系统', '数据结构', 'B', '1、数据库系统（Database System）是由数据库及其管理软件组成的系统。\n\n2、数据库(Database)是按照数据结构来组织、存储和管理数据的建立在计算机存储设备上的仓库。\n\n3、数据库管理系统(Database Management System)是一种操纵和管理数据库的大型软件，用于建立、使用和维护数据库，简称DBMS。\n\n4、数据结构是计算机存储、组织数据的方式。', '8', '4', '2018-02-20 18:27:38', '2018-04-02 17:40:55', '5', '1', '1');
INSERT INTO `t_question` VALUES ('9', '层次型、网状型和关系型数据库划分原则是。 （）', '层次型、网状型和关系型数据库划分原则是。 （）', '0', '记录长度', '文件的大小', '联系的复杂程度', '数据之间的联系', 'D', '略', '8', '4', '2018-02-20 18:29:42', '2018-04-02 17:40:55', '5', '1', '1');
INSERT INTO `t_question` VALUES ('10', '实体是信息世界中的术语，与之对应的数据库术语为。 （）', '实体是信息世界中的术语，与之对应的数据库术语为。 （）', '0', '文件', '数据库', '字段', '记录', 'D', '略', '8', '4', '2018-02-20 18:32:05', '2018-04-02 17:40:55', '5', '1', '1');
INSERT INTO `t_question` VALUES ('11', '表 test1 中包含两列： c1 为整型， c2 为 8 位长的字符串类型，使用如下语句创建视图......', '表 test1 中包含两列： c1 为整型， c2 为 8 位长的字符串类型，使用如下语句创建视图：\n\nCREATE VIEW v1 AS SELECT c1,c2 FROM test1 WHERE c1>30 WITH CHECK OPTION\n\n以下语句能够成功执行的有几条？ （ ）\n\nINSERT INTO v1 VALUES(1, \' 赵六 \')\n\nINSERT INTO v1 VALUES(101, \' 李四 \')\n\nINSERT INTO t1 VALUES(20, \' 王五 \')', '0', '0', '1', '2', '3', 'C', '略', '8', '4', '2018-02-20 18:36:14', '2018-04-02 17:40:55', '5', '1', '1');
INSERT INTO `t_question` VALUES ('12', '简述关系模型的三类完整性约束。', '简述关系模型的三类完整性约束。', '2', null, null, null, null, '1. 实体完整性约束 要求候选码非空且唯一。\r\n\r\n2. 参照完整性约束 要求外码要么取空值要么所取的值在对应的候选码中出现。\r\n\r\n3. 用户自定义完整性。包括非空约束，唯一约束，检查约束，缺省值约束等。', '1. 实体完整性约束 要求候选码非空且唯一。\r\n\r\n2. 参照完整性约束 要求外码要么取空值要么所取的值在对应的候选码中出现。\r\n\r\n3. 用户自定义完整性。包括非空约束，唯一约束，检查约束，缺省值约束等。', '8', '4', '2018-02-20 18:38:10', '2018-04-02 17:40:55', '20', '1', '1');
INSERT INTO `t_question` VALUES ('13', '如果对数据库的并发性不加以任何控制，可能造成哪些不良现象？怎样控制才能防止这些现象的产生？', '如果对数据库的并发性不加以任何控制，可能造成哪些不良现象？怎样控制才能防止这些现象的产生？', '2', null, null, null, null, '1. 丢失修改\r\n\r\n2. 读“脏”数据\r\n\r\n3. 不可重复读\r\n\r\n通过基于锁的协议实现对事务并发控制。', '1. 丢失修改\r\n\r\n2. 读“脏”数据\r\n\r\n3. 不可重复读\r\n\r\n通过基于锁的协议实现对事务并发控制。', '8', '4', '2018-02-20 18:47:11', '2018-04-02 17:40:55', '20', '1', '1');
INSERT INTO `t_question` VALUES ('14', '简述三级封锁协议及其解决的事务并发执行的问题。', '简述三级封锁协议及其解决的事务并发执行的问题。', '2', null, null, null, null, '\n\n一级封锁协议：对对象加写锁，直到事物结束时才释放写锁。\n\n二级封锁协议：在一级封锁协议的基础上，给事物加读锁，读完后立即释放读锁。\n\n三级封锁协议：在一级封锁协议的基础上，给事务加锁，知道事物结束释放。', '\n\n一级封锁协议：对对象加写锁，直到事物结束时才释放写锁。\n\n二级封锁协议：在一级封锁协议的基础上，给事物加读锁，读完后立即释放读锁。\n\n三级封锁协议：在一级封锁协议的基础上，给事务加锁，知道事物结束释放。', '8', '4', '2018-02-20 18:48:31', '2018-04-02 17:40:55', '20', '1', '1');
INSERT INTO `t_question` VALUES ('15', '这是一道简单题', '骗你的', '0', '1', '2', '3', '4', 'D', '因为其他都是错的', '2', '7', '2020-02-02 11:57:01', '2020-02-02 11:57:01', '2', '5', '0');

-- ----------------------------
-- Table structure for `t_reply`
-- ----------------------------
DROP TABLE IF EXISTS `t_reply`;
CREATE TABLE `t_reply` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` int(8) DEFAULT NULL COMMENT '用户id',
  `atuser_id` int(8) DEFAULT NULL COMMENT '被回复用户id',
  `post_id` int(8) DEFAULT NULL COMMENT '帖子id',
  `comment_id` int(8) DEFAULT NULL COMMENT '评论id',
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '内容',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of t_reply
-- ----------------------------
INSERT INTO `t_reply` VALUES ('4', '1', '0', '8', '5', '89', '2020-02-02 12:34:45');
INSERT INTO `t_reply` VALUES ('5', '1', '1', '8', '5', '56', '2020-02-02 12:34:53');

-- ----------------------------
-- Table structure for `t_subject`
-- ----------------------------
DROP TABLE IF EXISTS `t_subject`;
CREATE TABLE `t_subject` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '学科名称',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `question_num` int(11) DEFAULT '0' COMMENT '题目数量',
  `img_url` varchar(63) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图片url',
  `state` int(4) DEFAULT '0' COMMENT '课程状态,0表示正常,1表示弃用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of t_subject
-- ----------------------------
INSERT INTO `t_subject` VALUES ('1', '计算机组成原理', '2018-01-18 21:56:29', '2018-01-18 21:56:29', '0', 'problemset_default.jpg', '0');
INSERT INTO `t_subject` VALUES ('2', 'C语言程序设计', '2018-01-18 22:32:54', '2018-01-18 22:32:54', '0', 'problemset_c.jpg', '0');
INSERT INTO `t_subject` VALUES ('3', 'Java语言程序设计', '2018-01-18 22:32:54', '2018-01-18 22:32:54', '0', 'problemset_java.jpg', '0');
INSERT INTO `t_subject` VALUES ('4', 'C++语言程序设计', '2018-01-18 22:32:54', '2018-01-18 22:32:54', '0', 'problemset_c++.jpg', '0');
INSERT INTO `t_subject` VALUES ('5', 'Python语言程序设计', '2018-01-18 22:32:54', '2018-01-18 22:32:54', '0', 'problemset_python.jpg', '0');
INSERT INTO `t_subject` VALUES ('6', '数据结构与算法', '2018-01-18 22:32:54', '2018-01-18 22:32:54', '0', 'problemset_datastructures.jpg', '0');
INSERT INTO `t_subject` VALUES ('7', '软件测试', '2018-01-18 22:32:54', '2018-01-18 22:59:40', '0', 'problemset_softwareTest.jpg', '0');
INSERT INTO `t_subject` VALUES ('8', '数据库概论', '2018-01-18 22:32:54', '2018-01-18 22:32:54', '0', 'problemset_database.jpg', '0');
INSERT INTO `t_subject` VALUES ('9', '大学计算机', '2018-01-26 15:59:21', '2018-01-26 15:59:37', '0', 'problemset_computer.jpg', '0');
INSERT INTO `t_subject` VALUES ('10', '人工智能原理', '2018-01-26 16:01:29', '2018-01-26 16:01:29', '0', 'problemset_ai.png', '0');
INSERT INTO `t_subject` VALUES ('11', '大数据算法', '2018-01-26 16:02:40', '2018-01-26 16:02:40', '0', 'problemset_bigdata.jpg', '0');
INSERT INTO `t_subject` VALUES ('12', '物联网概论', '2018-01-26 16:05:06', '2018-01-26 16:05:13', '0', 'problemset_internetofthings.jpg', '0');
INSERT INTO `t_subject` VALUES ('13', '计算机操作系统', '2018-01-26 16:06:13', '2018-01-26 16:06:13', '0', 'problemset_os.jpg', '0');
INSERT INTO `t_subject` VALUES ('14', '计算机网络', '2018-01-26 16:07:25', '2018-01-26 16:08:35', '0', 'problemset_networld.jpg', '0');
INSERT INTO `t_subject` VALUES ('15', '算法设计与分析入门', '2018-01-26 16:09:47', '2018-01-26 16:09:47', '0', 'problemset_algorithm.jpg', '0');
INSERT INTO `t_subject` VALUES ('16', '计算机图形学', '2018-01-26 16:10:17', '2018-01-26 16:10:17', '0', 'problemset_graphic.jpg', '0');
INSERT INTO `t_subject` VALUES ('17', '数字电路与系统', '2018-01-26 16:26:31', '2018-01-26 16:26:31', '0', 'problemset_digitalcircuits.jpg', '0');
INSERT INTO `t_subject` VALUES ('19', '线性代数', '2018-03-04 20:40:10', '2018-03-04 20:40:10', '0', 'problemset_default.jpg', '0');
INSERT INTO `t_subject` VALUES ('20', 'C语言程序设计', '2018-04-13 19:33:14', '2018-04-13 19:33:14', '0', 'problemset_c.jpg', '0');
INSERT INTO `t_subject` VALUES ('21', 'Java语言程序设计', '2018-04-13 19:33:14', '2018-04-13 19:33:14', '0', 'problemset_java.jpg', '0');
INSERT INTO `t_subject` VALUES ('22', 'C++语言程序设计', '2018-04-13 19:33:14', '2018-04-13 19:33:14', '0', 'problemset_c++.jpg', '0');
INSERT INTO `t_subject` VALUES ('23', 'Python语言程序设计', '2018-04-13 19:33:14', '2018-04-13 19:33:14', '0', 'problemset_python.jpg', '0');
INSERT INTO `t_subject` VALUES ('24', '数据结构与算法', '2018-04-13 19:33:14', '2018-04-13 19:33:14', '0', 'problemset_datastructures.jpg', '0');
INSERT INTO `t_subject` VALUES ('25', '数据结构与算法', '2018-04-13 19:33:14', '2018-04-13 19:33:14', '0', 'problemset_datastructures.jpg', '0');
INSERT INTO `t_subject` VALUES ('26', '数据库概论', '2018-04-13 19:33:14', '2018-04-13 19:33:14', '0', 'problemset_database.jpg', '0');
