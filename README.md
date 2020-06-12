[![license](https://img.shields.io/hexpm/l/plug.svg?style=flat-square)](https://github.com/2227324689/ToBeBetter/blob/master/LICENSE) [![issues](https://img.shields.io/bitbucket/issues-raw/2227324689/ToBeBetter.svg?style=flat-square)](https://github.com/blankjee/rail-ticketing-system/issues) [![author](https://img.shields.io/badge/author-blankjee-blue.svg?style=flat-square)](#) [![Gpmall](https://img.shields.io/badge/tech-springboot-red.svg?style=flat-square)](#)

# 在线考试系统

基于Spring Boot设计一个在线考试系统，实现线上巩固和应用以及检测相结合。相比于传统的线下考试，为更多的考试和参与考试的相关人员提供更多的便利，可以在线上即可实现考试和检测，无需再到线下考试，而批改任务也将大大地优化，提高教育行业工作者的效率，以及对于传统教学的优势互补，同时增强教学管理质量，提高教学效率，实现高效互动。

## 应用功能结构

![](https://gitee.com/blankjee/pic-bed/raw/master/images/20200520175424.png)

## 系统ER图

![](https://gitee.com/blankjee/pic-bed/raw/master/images/20200520181118.png)

## 项目用到的技术

项目采用前后端分离开发。 

* SpringBoot2.1.6
* Mybatis
* Mysql
* Redis
* druid
* mybatis generator
* HTML
* JQuery
* Bootstrap

## 应用截图

1. 登录界面

   ![](https://gitee.com/blankjee/pic-bed/raw/master/images/20200520175720.png)

2. 注册界面

   ![](https://gitee.com/blankjee/pic-bed/raw/master/images/20200520175738.png)

3. 在线评卷

   ![](https://gitee.com/blankjee/pic-bed/raw/master/images/20200520175855.png)

   ![](https://gitee.com/blankjee/pic-bed/raw/master/images/20200520175908.png)

4. 人员管理

   ![](https://gitee.com/blankjee/pic-bed/raw/master/images/20200520175948.png)

   ![](https://gitee.com/blankjee/pic-bed/raw/master/images/20200520180005.png)

5. 考试管理

   ![](https://gitee.com/blankjee/pic-bed/raw/master/images/20200520180027.png)

   ![](https://gitee.com/blankjee/pic-bed/raw/master/images/20200520180052.png)

6. 题目管理

   ![](https://gitee.com/blankjee/pic-bed/raw/master/images/20200520180126.png)

## 项目部署

开发项目环境说明：

- 系统：Windows10 
- jdk版本：1.8
- IntelliJ IDEA 版本：2.5

### 1.还原数据库文件

运行Mysql数据库，利用Navicat等可视化数据库软件连接，创建数据库`online-exam-system`录下sql文件下的数据库还原文件`online-exam-system.sql`。

### 2.导入项目

打开IDEA，点击OPEN...选择online-exam-system项目根目录下的pom.xml文件，open as project。

### 3.加载maven

等待加载Maven，IDEA自带Maven一般不需要配置。但是用的是官方源可能会比较慢，课百度`maven 换阿里源`解决。若此步不行，可手动安装maven。

### 4.配置项目

配置属性文件路径：\src\main\resources\project.properties
注：只需配置和修改sql主机地址，数据库名，用户名，密码， 项目访问路径，这几个属性，项目即可正常运行访问。

```
#数据库连接配置
#数据库主机地址
jdbc.host=127.0.0.1
#数据库名
jdbc.database=online-course
#数据库用户名
jdbc.username=填写你的数据库用户名
#数据库密码
jdbc.password=填写你的数据库密码
```

### 5. 安装Redis并运行

安装包已附在压缩包中，解压后，双击`redis-server.exe`运行。

![](https://gitee.com/blankjee/pic-bed/raw/master/images/20200520182521.png)

出现这个页面成功。

### 5.运行项目

![](https://gitee.com/blankjee/pic-bed/raw/master/images/20200520182609.png)

### 6.项目访问

1. 前台进入方式

   localhost:8080

2. 后台进入方式

   localhost:8080/manage

   测试账号：admin 密码：123456（这是管理员账户，前后台通用，使用前台最好注册个学生账户）