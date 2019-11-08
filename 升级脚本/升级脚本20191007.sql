﻿-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: safety2019ld
-- ------------------------------------------------------
-- Server version	5.6.23-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bft_fklib`
--

DROP TABLE IF EXISTS `bft_fklib`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bft_fklib` (
  `FKLibID` int(20) NOT NULL AUTO_INCREMENT COMMENT 'FK参照ID',
  `strFKCode` varchar(100) DEFAULT NULL COMMENT 'FK参照编码',
  `strFKName` varchar(100) DEFAULT NULL COMMENT 'FK参照名称',
  `strFkDesc` varchar(200) DEFAULT NULL COMMENT '参照描述',
  `strSQL` varchar(2000) DEFAULT NULL COMMENT 'FK参照的取数来源SQL',
  `strParentField` varchar(100) DEFAULT NULL COMMENT '父字段',
  `strValueMember` varchar(100) DEFAULT NULL COMMENT 'FK参照选择返回结果的数据列名',
  `strDsiplayMember` varchar(100) DEFAULT NULL COMMENT 'FK参照选择返回结果的显示数据列名',
  `strColumns` varchar(4000) DEFAULT NULL COMMENT 'FK参照选择时显示的列描述，以列名，列标题，列，列标题方式成对罗列',
  `blnDefaultSelection` tinyint(1) DEFAULT NULL COMMENT '是否默认选择',
  `strEntityList` varchar(200) DEFAULT NULL,
  `blnEnable` tinyint(1) DEFAULT NULL COMMENT '是否默认选择',
  `blnDynamicSql` tinyint(1) DEFAULT NULL,
  `strTreeFkCode` varchar(100) DEFAULT NULL COMMENT '树控件FK编码',
  `strTreeFilterField` varchar(100) DEFAULT NULL COMMENT '树控件过滤字段',
  `strGridFilterField` varchar(100) DEFAULT NULL COMMENT 'Grid过滤字段',
  `strCommandParameter` varchar(200) DEFAULT NULL COMMENT '请求命令参数',
  PRIMARY KEY (`FKLibID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bft_fklib`
--

LOCK TABLES `bft_fklib` WRITE;
/*!40000 ALTER TABLE `bft_fklib` DISABLE KEYS */;
INSERT INTO `bft_fklib` VALUES (1,'AllMetaData','所有元数据','所有元数据','select * from  BFT_MetaData','','ID','strName','ID,元数据ID,0;strName,元数据名称,100;strTableName,表名,100;',0,'MetaData',1,1,'','','',''),(2,'AllListRef','所有列表','所有列表','select * from BFT_ListEx  where blnList=1','','ListID','strListName','ListID,列表ID,0;strListCode,编码,120;strListName,名称,120;',0,'CBF_ListEx',1,1,'','','',''),(3,'AllClass1','所有班次','所有班次','select * from BFT_EnumCode  where EnumTypeID=1','','lngEnumValue','strEnumDisplay','lngEnumValue,ID,0;strEnumDisplay,班次,60;lngEnumValue3,开始时间,60;lngEnumValue4,结束时间,60;',0,'CBF_EnumCode',1,1,'','','',''),(4,'AllRequest','所有请求库','所有请求库','select * from   BFT_Request ','','RequestID','RequestCode','RequestID,ID,0;RequestCode,请求库编码,120;RequestName,请求库名称,120;',0,'CBF_Request',1,1,'','','',''),(5,'AllRight','所有权限点','所有权限点','select *  from   BFT_Right  ','','RightCode','RightName','RightID,ID,0;RightCode,权限编码,120;RightName,权限名称,120;',0,'CBF_Right',1,1,'','','',''),(7,'AllJC_WZ','所有安装位置','所有安装位置','select  wzid as wzID,wz as wz  from KJ_DeviceAddress','','wzID','wz','wzID,安装位置ID,0;wz,安装位置,150;',0,'JC_WZ',1,1,'','','',''),(9,'AllTypeCode','所有数据状态','所有类型编码','select * from BFT_EnumCode  where EnumTypeID=4','','lngEnumValue','strEnumDisplay','lngEnumValue,ID,0;strEnumDisplay,状态,150;',0,'CBF_EnumCode',1,1,'','','',''),(10,'AllEnumType','类型','类型','select * from BFT_EnumCode  where EnumTypeID=4','','lngEnumValue','strEnumDisplay','lngEnumValue,ID,0;strEnumDisplay,类型,150;',0,'CBF_EnumCode',1,1,'','','',''),(11,'AllClass','所有班次','所有班次','select * from BFT_Class','','ClassID','strName','ClassID,ID,0;strName,班次,30;datStart,开始时间,30;datEnd,结束时间,30;',0,'CBF_Class',1,1,'','','',''),(12,'AllJC_Dev','所有设备类型','所有设备类型','SELECT KJ_DeviceType.devID, (CASE type WHEN 1 THEN Xs1 ELSE \'-\' END) AS Name,Name as CGTypeName,Color1,Color2,Color3,xs1,xs2,xs3 FROM KJ_DeviceType ','','devID','CGTypeName','devID,设备类型ID,0;CGTypeName,设备类型,250;Name,单位,80;Color1,0态颜色,0;Color2,1态颜色,0;Color3,2态颜色,0;',0,'JC_DEV',1,1,'','','',''),(13,'AllPoint','所有测点(以测点表为主表)','所有测点(以测点表为主表)','SELECT KJ_DeviceDefInfo.ID,KJ_DeviceDefInfo.fzh,KJ_DeviceDefInfo.kh,KJ_DeviceDefInfo.activity,KJ_DeviceDefInfo.devid,KJ_DeviceDefInfo.wzid,KJ_DeviceDefInfo.csid,KJ_DeviceDefInfo.point,KJ_DeviceDefInfo.ssz,KJ_DeviceDefInfo.state,KJ_DeviceDefInfo.alarm,KJ_DeviceDefInfo.zts,KJ_DeviceDefInfo.jckz1,KJ_DeviceDefInfo.jckz2,KJ_DeviceDefInfo.jckz3,KJ_DeviceDefInfo.z1,KJ_DeviceDefInfo.z2,KJ_DeviceDefInfo.z3,KJ_DeviceDefInfo.z4,KJ_DeviceDefInfo.z5,KJ_DeviceDefInfo.z6,KJ_DeviceDefInfo.z7,KJ_DeviceDefInfo.z8,KJ_DeviceDefInfo.K1,KJ_DeviceDefInfo.K2,KJ_DeviceDefInfo.K3,KJ_DeviceDefInfo.K4,KJ_DeviceDefInfo.K5,KJ_DeviceDefInfo.K6,KJ_DeviceDefInfo.K7,KJ_DeviceDefInfo.K8,KJ_DeviceDefInfo.bz1,KJ_DeviceDefInfo.bz2,KJ_DeviceDefInfo.bz3,KJ_DeviceDefInfo.bz4,KJ_DeviceDefInfo.bz5,KJ_DeviceDefInfo.remark,KJ_DeviceDefInfo.upflag,KJ_DeviceType.NAME AS strDevName,KJ_DeviceAddress.wz AS strWzName FROM KJ_DeviceAddress RIGHT OUTER JOIN KJ_DeviceDefInfo ON KJ_DeviceAddress.wzID=KJ_DeviceDefInfo.wzid LEFT OUTER JOIN KJ_DeviceType ON KJ_DeviceDefInfo.devid=KJ_DeviceType.devID where KJ_DeviceDefInfo.activity=1 ORDER BY type,point','','point','point','ID,ID,0;point,测点号,100;strWzName,安装位置,180;strDevName,设备类型,100;',0,'JC_DEF',1,1,'','','',''),(14,'AllRole','所有角色','所有角色','select  *   from BFT_Role','','RoleID','RoleName','RoleID,ID,0;RoleName,角色名称,150;',0,'',1,1,'','','',''),(15,'AllPointA','所有测点(以JC_M为主表)','所有测点(以JC_M为主表)','SELECT a.fzh,a.kh,a.devid,a.wzid,a.point,c.NAME AS strDevName,b.wz AS strWzName,concat(a.point,\' \',c.`NAME`) AS pointa FROM viewjc_mdef AS a LEFT OUTER JOIN KJ_DeviceAddress AS b ON a.wzID=b.wzid LEFT OUTER JOIN KJ_DeviceType AS c ON a.devid=c.devID ORDER BY point',NULL,'point','point','point,测点号,100;strWzName,安装位置,180;strDevName,设备类型,100;',0,'JC_DEF',1,1,NULL,NULL,NULL,NULL),(16,'AllAllDevPro','所有设备性质','所有设备性质','select * from BFT_EnumCode  where EnumTypeID=1','','lngEnumValue','strEnumDisplay','lngEnumValue,ID,0;strEnumDisplay,类型,150;',0,'CBF_EnumCode',1,1,'','','',''),(17,'AllOperatorType','所有操作日志类型','所有操作日志类型','select * from BFT_EnumCode  where EnumTypeID=5','','lngEnumValue','strEnumDisplay','lngEnumValue,ID,0;strEnumDisplay,类型,150;',0,'CBF_EnumCode',1,1,'','','',''),(18,'AllDevModel','所有设备型号','所有设备性质','select * from BFT_EnumCode  where EnumTypeID=3','','lngEnumValue','strEnumDisplay','lngEnumValue,ID,0;strEnumDisplay,设备型号,150;',0,'CBF_EnumCode',1,1,'','','',''),(19,'AllDevType','所有设备种类','所有所有设备种类','select * from BFT_EnumCode  where EnumTypeID=2','','lngEnumValue','strEnumDisplay','lngEnumValue,ID,0;strEnumDisplay,设备种类,150;',0,'CBF_EnumCode',1,1,'','','',''),(20,'AllDevTypeCode','所有设备状态','所有设备状态','select * from BFT_EnumCode  where EnumTypeID=8 ',NULL,'lngEnumValue','strEnumDisplay','lngEnumValue,ID,0;strEnumDisplay,设备状态,150;',0,'CBF_EnumCode',1,1,NULL,NULL,NULL,NULL),(21,'AllPointByLine','所有测点','现用于旗客','SELECT KJ_DeviceDefInfo.ID,KJ_DeviceDefInfo.pointid,KJ_DeviceDefInfo.fzh,KJ_DeviceDefInfo.kh,KJ_DeviceDefInfo.devid,KJ_DeviceDefInfo.wzid,KJ_DeviceDefInfo.csid,KJ_DeviceDefInfo.point,KJ_DeviceType.NAME AS strDevName,KJ_DeviceAddress.wz AS strWzName,KJ_DeviceDefInfo.z1,KJ_DeviceDefInfo.z2,KJ_DeviceDefInfo.z3,KJ_DeviceDefInfo.z4,KJ_DeviceDefInfo.z5,KJ_DeviceDefInfo.z6,KJ_DeviceDefInfo.z7,KJ_DeviceDefInfo.z8,KJ_DeviceType.type,KJ_DeviceType.lc,KJ_DeviceType.lc2 FROM KJ_DeviceAddress RIGHT OUTER JOIN KJ_DeviceDefInfo ON KJ_DeviceAddress.wzID=KJ_DeviceDefInfo.wzid LEFT OUTER JOIN KJ_DeviceType ON KJ_DeviceDefInfo.devid=KJ_DeviceType.devID WHERE KJ_DeviceType.type IN (0,1,2) AND KJ_DeviceDefInfo.activity=1 ORDER BY Point',NULL,'pointid','point','pointid,pointid,0;point,测点号,100;strWzName,安装位置,180;strDevName,设备类型,100;',0,'JC_Def',1,1,NULL,NULL,NULL,NULL),(22,'AllPointByLL','所有累计量测点（Old）','所有累计量测点（Old）','SELECT KJ_DeviceDefInfo.ID,KJ_DeviceDefInfo.pointid,KJ_DeviceDefInfo.fzh,KJ_DeviceDefInfo.kh,KJ_DeviceDefInfo.devid,KJ_DeviceDefInfo.wzid,KJ_DeviceDefInfo.csid,KJ_DeviceDefInfo.point,KJ_DeviceType.NAME AS strDevName,KJ_DeviceAddress.wz AS strWzName,KJ_DeviceDefInfo.z1,KJ_DeviceDefInfo.z2,KJ_DeviceDefInfo.z3,KJ_DeviceDefInfo.z4,KJ_DeviceDefInfo.z5,KJ_DeviceDefInfo.z6,KJ_DeviceDefInfo.z7,KJ_DeviceDefInfo.z8,KJ_DeviceType.type,KJ_DeviceType.lc,KJ_DeviceType.lc2 FROM KJ_DeviceAddress RIGHT OUTER JOIN KJ_DeviceDefInfo ON KJ_DeviceAddress.wzID=KJ_DeviceDefInfo.wzid LEFT OUTER JOIN KJ_DeviceType ON KJ_DeviceDefInfo.devid=KJ_DeviceType.devID WHERE KJ_DeviceType.type IN (0) AND KJ_DeviceDefInfo.activity=1 ORDER BY Point',NULL,'pointid','point','pointid,pointid,0;point,测点号,100;strWzName,安装位置,180;strDevName,设备类型,100;',0,'jc_Def',1,1,NULL,NULL,NULL,NULL),(23,'AllPointBYKGL','所有测点(开关量)','所有测点(开关量)','SELECT KJ_DeviceDefInfo.ID,KJ_DeviceDefInfo.pointid,KJ_DeviceDefInfo.fzh,KJ_DeviceDefInfo.kh,KJ_DeviceDefInfo.devid,KJ_DeviceDefInfo.wzid,KJ_DeviceDefInfo.csid,KJ_DeviceDefInfo.point,KJ_DeviceType.NAME AS strDevName,KJ_DeviceAddress.wz AS strWzName,KJ_DeviceDefInfo.z1,KJ_DeviceDefInfo.z2,KJ_DeviceDefInfo.z3,KJ_DeviceDefInfo.z4,KJ_DeviceDefInfo.z5,KJ_DeviceDefInfo.z6,KJ_DeviceDefInfo.z7,KJ_DeviceDefInfo.z8,KJ_DeviceType.type,KJ_DeviceType.lc,KJ_DeviceType.lc2 FROM KJ_DeviceAddress RIGHT OUTER JOIN KJ_DeviceDefInfo ON KJ_DeviceAddress.wzID=KJ_DeviceDefInfo.wzid LEFT OUTER JOIN KJ_DeviceType ON KJ_DeviceDefInfo.devid=KJ_DeviceType.devID WHERE KJ_DeviceType.type IN (2) AND KJ_DeviceDefInfo.activity=1 ORDER BY Point',NULL,'pointid','point','pointid,pointid,0;point,测点号,100;strWzName,安装位置,180;strDevName,设备类型,100;',0,'jc_def',1,1,NULL,NULL,NULL,NULL),(24,'AllPointActivity','所有活动测点','所有活动测点','SELECT KJ_DeviceDefInfo.ID,KJ_DeviceDefInfo.fzh,KJ_DeviceDefInfo.kh,KJ_DeviceDefInfo.devid,KJ_DeviceDefInfo.wzid,KJ_DeviceDefInfo.csid,KJ_DeviceDefInfo.point,KJ_DeviceDefInfo.ssz,KJ_DeviceDefInfo.state,KJ_DeviceDefInfo.alarm,KJ_DeviceDefInfo.zts,KJ_DeviceDefInfo.jckz1,KJ_DeviceDefInfo.jckz2,KJ_DeviceDefInfo.jckz3,KJ_DeviceDefInfo.z1,KJ_DeviceDefInfo.z2,KJ_DeviceDefInfo.z3,KJ_DeviceDefInfo.z4,KJ_DeviceDefInfo.z5,KJ_DeviceDefInfo.z6,KJ_DeviceDefInfo.z7,KJ_DeviceDefInfo.z8,KJ_DeviceDefInfo.K1,KJ_DeviceDefInfo.K2,KJ_DeviceDefInfo.K3,KJ_DeviceDefInfo.K4,KJ_DeviceDefInfo.K5,KJ_DeviceDefInfo.K6,KJ_DeviceDefInfo.K7,KJ_DeviceDefInfo.K8,KJ_DeviceDefInfo.bz1,KJ_DeviceDefInfo.bz2,KJ_DeviceDefInfo.bz3,KJ_DeviceDefInfo.bz4,KJ_DeviceDefInfo.bz5,KJ_DeviceDefInfo.remark,KJ_DeviceDefInfo.upflag,KJ_DeviceType.NAME AS strDevName,KJ_DeviceType.type AS type,KJ_DeviceAddress.wz AS strWzName FROM KJ_DeviceAddress RIGHT OUTER JOIN KJ_DeviceDefInfo ON KJ_DeviceAddress.wzID=KJ_DeviceDefInfo.wzid LEFT OUTER JOIN KJ_DeviceType ON KJ_DeviceDefInfo.devid=KJ_DeviceType.devID WHERE activity=1 ORDER BY type,point',NULL,'point','point','ID,ID,0;point,测点号,100;strWzName,安装位置,180;strDevName,设备类型,100;',0,'jc_def',1,1,NULL,NULL,NULL,NULL),(25,'AllPointMnl','所有模拟量测点','所有模拟量测点','SELECT KJ_DeviceDefInfo.ID,KJ_DeviceDefInfo.fzh,KJ_DeviceDefInfo.kh,KJ_DeviceDefInfo.activity,KJ_DeviceDefInfo.devid,KJ_DeviceDefInfo.wzid,KJ_DeviceDefInfo.csid,KJ_DeviceDefInfo.point,KJ_DeviceDefInfo.ssz,KJ_DeviceDefInfo.state,KJ_DeviceDefInfo.alarm,KJ_DeviceDefInfo.zts,KJ_DeviceDefInfo.jckz1,KJ_DeviceDefInfo.jckz2,KJ_DeviceDefInfo.jckz3,KJ_DeviceDefInfo.z1,KJ_DeviceDefInfo.z2,KJ_DeviceDefInfo.z3,KJ_DeviceDefInfo.z4,KJ_DeviceDefInfo.z5,KJ_DeviceDefInfo.z6,KJ_DeviceDefInfo.z7,KJ_DeviceDefInfo.z8,KJ_DeviceDefInfo.K1,KJ_DeviceDefInfo.K2,KJ_DeviceDefInfo.K3,KJ_DeviceDefInfo.K4,KJ_DeviceDefInfo.K5,KJ_DeviceDefInfo.K6,KJ_DeviceDefInfo.K7,KJ_DeviceDefInfo.K8,KJ_DeviceDefInfo.bz1,KJ_DeviceDefInfo.bz2,KJ_DeviceDefInfo.bz3,KJ_DeviceDefInfo.bz4,KJ_DeviceDefInfo.bz5,KJ_DeviceDefInfo.remark,KJ_DeviceDefInfo.upflag,KJ_DeviceType.NAME AS strDevName,KJ_DeviceAddress.wz AS strWzName FROM KJ_DeviceAddress RIGHT OUTER JOIN KJ_DeviceDefInfo ON KJ_DeviceAddress.wzID=KJ_DeviceDefInfo.wzid LEFT OUTER JOIN KJ_DeviceType ON KJ_DeviceDefInfo.devid=KJ_DeviceType.devID WHERE KJ_DeviceDefInfo.point LIKE \'%A%\' AND KJ_DeviceDefInfo.activity=1 ORDER BY type,point','','point','point','ID,ID,0;point,测点号,100;strWzName,安装位置,180;strDevName,设备类型,100;',0,'JC_DEF',1,1,NULL,NULL,NULL,NULL),(26,'AllPointKgl','所有开关量测点','所有开关量测点','SELECT KJ_DeviceDefInfo.ID,KJ_DeviceDefInfo.fzh,KJ_DeviceDefInfo.kh,KJ_DeviceDefInfo.activity,KJ_DeviceDefInfo.devid,KJ_DeviceDefInfo.wzid,KJ_DeviceDefInfo.csid,KJ_DeviceDefInfo.point,KJ_DeviceDefInfo.ssz,KJ_DeviceDefInfo.state,KJ_DeviceDefInfo.alarm,KJ_DeviceDefInfo.zts,KJ_DeviceDefInfo.jckz1,KJ_DeviceDefInfo.jckz2,KJ_DeviceDefInfo.jckz3,KJ_DeviceDefInfo.z1,KJ_DeviceDefInfo.z2,KJ_DeviceDefInfo.z3,KJ_DeviceDefInfo.z4,KJ_DeviceDefInfo.z5,KJ_DeviceDefInfo.z6,KJ_DeviceDefInfo.z7,KJ_DeviceDefInfo.z8,KJ_DeviceDefInfo.K1,KJ_DeviceDefInfo.K2,KJ_DeviceDefInfo.K3,KJ_DeviceDefInfo.K4,KJ_DeviceDefInfo.K5,KJ_DeviceDefInfo.K6,KJ_DeviceDefInfo.K7,KJ_DeviceDefInfo.K8,KJ_DeviceDefInfo.bz1,KJ_DeviceDefInfo.bz2,KJ_DeviceDefInfo.bz3,KJ_DeviceDefInfo.bz4,KJ_DeviceDefInfo.bz5,KJ_DeviceDefInfo.remark,KJ_DeviceDefInfo.upflag,KJ_DeviceType.NAME AS strDevName,KJ_DeviceAddress.wz AS strWzName FROM KJ_DeviceAddress RIGHT OUTER JOIN KJ_DeviceDefInfo ON KJ_DeviceAddress.wzID=KJ_DeviceDefInfo.wzid LEFT OUTER JOIN KJ_DeviceType ON KJ_DeviceDefInfo.devid=KJ_DeviceType.devID WHERE KJ_DeviceDefInfo.point LIKE \'%D%\' AND KJ_DeviceDefInfo.activity=1 ORDER BY type,point','','point','point','ID,ID,0;point,测点号,100;strWzName,安装位置,180;strDevName,设备类型,100;',0,'JC_DEF',1,1,NULL,NULL,NULL,NULL),(27,'AllCallDirection','呼叫方向','呼叫方向','select * from BFT_EnumCode  where EnumTypeID=26',NULL,'lngEnumValue','strEnumDisplay','lngEnumValue,ID,0;strEnumDisplay,呼叫方向,150;',0,'CBF_EnumCode',1,1,NULL,NULL,NULL,NULL),(28,'AllPersonPoint','所有人员定位测点','所有人员定位测点','SELECT a.*,b.`name` AS strDevName,c.wz AS strWzName FROM PE_DeviceDefInfo AS a LEFT JOIN KJ_DeviceType AS b ON a.devid=b.devid LEFT JOIN KJ_DeviceAddress AS c ON a.wzid=c.wzID ORDER BY b.type,a.point',NULL,'point','point','ID,ID,0;point,测点号,100;strWzName,安装位置,180;strDevName,设备类型,100;',0,'R_DEF',1,1,NULL,NULL,NULL,NULL),(29,'AllPointMultisystem','所有测点（多系统）','所有测点（多系统）','SELECT a.*,b.`name` AS strDevName,c.wz AS strWzName,b.type FROM KJ_DeviceDefInfo AS a LEFT JOIN KJ_DeviceType AS b ON a.devid=b.devid LEFT JOIN KJ_DeviceAddress AS c ON a.wzid=c.wzID UNION ALL\nSELECT a.*,b.`name` AS strDevName,c.wz AS strWzName,b.type FROM PE_DeviceDefInfo AS a LEFT JOIN KJ_DeviceType AS b ON a.devid=b.devid LEFT JOIN KJ_DeviceAddress AS c ON a.wzid=c.wzID UNION ALL\nSELECT a.*,b.`name` AS strDevName,c.wz AS strWzName,b.type FROM RA_DeviceDefInfo AS a LEFT JOIN KJ_DeviceType AS b ON a.devid=b.devid LEFT JOIN KJ_DeviceAddress AS c ON a.wzid=c.wzID WHERE a.activity=1 ORDER BY type,point',NULL,'point','point','ID,ID,0;point,测点号,100;strWzName,安装位置,180;strDevName,设备类型,100;',0,'jc_DEF',1,1,NULL,NULL,NULL,NULL),(30,'AllPointLjl','所有累计量测点','所有累计量测点','SELECT a.*,b.`name` AS strDevName,c.wz AS strWzName FROM KJ_DeviceDefInfo AS a LEFT JOIN KJ_DeviceType AS b ON a.devid=b.devid LEFT JOIN KJ_DeviceAddress AS c ON a.wzid=c.wzID WHERE b.type=0 AND a.activity=1 AND b.devid=5 ORDER BY b.type,a.point','','point','point','ID,ID,0;point,测点号,100;strWzName,安装位置,100;strDevName,设备类型,180;',0,'JC_DEF',1,1,NULL,NULL,NULL,NULL),(31,'AllPointStation','所有分站','所有分站','SELECT a.*,b.`name` AS strDevName,c.wz AS strWzName FROM KJ_DeviceDefInfo AS a LEFT JOIN KJ_DeviceType AS b ON a.devid=b.devid LEFT JOIN KJ_DeviceAddress AS c ON a.wzid=c.wzID WHERE b.type=0 AND a.activity=1 ORDER BY b.type,a.point',NULL,'point','point','ID,ID,0;point,测点号,100;strWzName,安装位置,100;strDevName,设备类型,180;',0,'JC_DEF',1,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `bft_fklib` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bft_listcommandex`
--

DROP TABLE IF EXISTS `bft_listcommandex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bft_listcommandex` (
  `ListCommandID` int(20) NOT NULL AUTO_INCREMENT COMMENT '列表按钮命令ID',
  `ListID` int(20) DEFAULT NULL COMMENT '所属列表ID',
  `requestId` varchar(500) DEFAULT NULL COMMENT '请求ID',
  `parameters` varchar(1000) DEFAULT NULL COMMENT '请求参数',
  `strRequestCode` varchar(200) DEFAULT NULL COMMENT '权限编码',
  `strListCommandCode` varchar(200) DEFAULT NULL COMMENT '列表命令编码',
  `strListCommandName` varchar(200) DEFAULT NULL COMMENT '列表命令名显示的汉字标题',
  `strListCommandTip` varchar(200) DEFAULT NULL COMMENT '列表命令提示',
  `strListIconName` varchar(100) DEFAULT NULL COMMENT '采用的图标索引',
  `blnVisible` tinyint(1) NOT NULL COMMENT '是否显示',
  `blnDblClick` tinyint(1) NOT NULL COMMENT '是否作为默认列表双击时的相应事件',
  `lngRowIndex` int(11) DEFAULT NULL COMMENT '显示顺序',
  `strCustomer` varchar(50) DEFAULT NULL COMMENT '客户标识',
  `strWebParameters` varchar(500) DEFAULT NULL COMMENT 'Web请求参数',
  `strWebListIconName` varchar(100) DEFAULT NULL COMMENT 'Web图标',
  PRIMARY KEY (`ListCommandID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bft_listcommandex`
--

LOCK TABLES `bft_listcommandex` WRITE;
/*!40000 ALTER TABLE `bft_listcommandex` DISABLE KEYS */;
INSERT INTO `bft_listcommandex` VALUES (1,2,'add','AddUser','RequestAddUser','add','新增','新增一条记录','add',1,0,1,'','','icon-add'),(2,2,'modfiy','UpdateUser','RequestUpdateUser','update','修改','修改一条记录','edit',1,1,2,'','','icon-edit'),(3,2,'delete','DeleteUser','RequestDeleteUser','del','删除','删除一条记录','delete',1,0,3,'','','icon-delete'),(4,3,'add','AddRole','RequestAddRole','add','新增','新增一条记录','add',1,0,1,'','','icon-add'),(5,3,'modfiy','UpdateRole','RequestUpdateRole','update','修改','修改一条记录','edit',1,1,2,'','','icon-edit'),(6,3,'delete','DeleteRole','RequestDeleteRole','del','删除','删除一条记录','delete',1,0,3,'','','icon-delete'),(7,4,'add','AddRight','RequestAddRight','add','新增','新增一条记录','add',1,0,1,'','','icon-add'),(8,4,'modfiy','UpdateRight','RequestUpdateRight','update','修改','修改一条记录','edit',1,1,2,'','','icon-edit'),(9,4,'delete','UpdateRight','RequestDeleteRight','del','删除','删除一条记录','delete',1,0,3,'','','icon-delete'),(10,5,'add','AddMenu','RequestAddMenu','add','新增','新增一条记录','add',1,0,1,'','','icon-add'),(11,5,'modfiy','UpdateMenu','RequestUpdateMenu','update','修改','修改一条记录','edit',1,1,2,'','','icon-edit'),(12,5,'delete','DeleteMenu','RequestDeleteMenu','del','删除','删除一条记录','delete',1,0,3,'','','icon-delete'),(13,3,'modfiy','AddRoleRight','RequestAddRoleRight','','角色授权','','',1,0,4,'','',''),(14,12,'add','','RequestAddRequest','add','新增','新增一条记录','add',1,0,1,'','','icon-add'),(15,12,'modfiy','','RequestUpdateRequest','update','修改','修改一条记录','edit',1,1,2,'','','icon-edit'),(16,12,'delete','','RequestDeleteRequest','del','删除','删除一条记录','delete',1,0,3,'','','icon-delete'),(17,43,'modfiy','AddRoleRight','RequestDefWB','','设备维保','','edit',1,0,1,'','',''),(18,73,'add','','RequestHandCtrl','add','新增','新增一条记录','add',1,0,1,'','','icon-add'),(19,76,'add','','','add','新增','新增一条记录','add',1,0,1,'','','icon-add'),(20,77,'add','','RequestHandCtrl','add','新增','新增一条记录','add',1,1,1,'','','icon-add'),(21,76,'modfiy','','RequestviewmcReport','update','修改','修改一条记录','edit',1,1,2,'','','icon-edit'),(23,81,'modfiy','','RequestviewmcReport','update','修改','修改一条记录','edit',1,1,2,'','','icon-edit'),(25,49,'add','','RequestAddUser','add','新增','新增一条记录','add',1,0,1,'','','icon-add'),(26,49,'modfiy','','RequestUpdateUser','update','修改','修改一条记录','edit',1,1,2,'','','icon-edit'),(27,49,'delete','','RequestDeleteUser','del','删除','删除一条记录','delete',1,0,3,'','','icon-delete');
/*!40000 ALTER TABLE `bft_listcommandex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bft_listdataex`
--

DROP TABLE IF EXISTS `bft_listdataex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bft_listdataex` (
  `ListDataID` int(11) NOT NULL AUTO_INCREMENT COMMENT '列表数据ID',
  `ListID` int(11) NOT NULL COMMENT '所属列表ID',
  `UserID` int(11) DEFAULT NULL,
  `strListSQL` varchar(8000) DEFAULT NULL COMMENT '列表取数的完整SQL',
  `strListSrcSQL` varchar(8000) DEFAULT NULL COMMENT '原始SQL{nowhere}或者{where}',
  `strListDataName` varchar(500) DEFAULT NULL COMMENT '列表数据的显示名称（数据条件名称）',
  `strListDefaultField` varchar(500) DEFAULT NULL COMMENT '列表数据的显示名称（数据条件名称）',
  `strPivotSetting` varchar(255) DEFAULT NULL COMMENT '分析表设置',
  `strChartSetting` varchar(255) DEFAULT NULL COMMENT '图表设置',
  `blnSmlSum` tinyint(1) DEFAULT NULL COMMENT '小计',
  `lngSmlSumType` int(11) DEFAULT NULL COMMENT '小计类型',
  `lngRowIndex` int(11) DEFAULT NULL COMMENT '显示顺序',
  `strDefaultShowStyle` varchar(50) DEFAULT NULL COMMENT '默认显示样式',
  `blnDefault` tinyint(1) DEFAULT NULL COMMENT '是否默认',
  `blnPredefine` tinyint(1) DEFAULT NULL COMMENT '是否预置',
  `strConTextCondition` varchar(1000) DEFAULT NULL COMMENT '上下文条件串',
  PRIMARY KEY (`ListDataID`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bft_listdataex`
--

LOCK TABLES `bft_listdataex` WRITE;
/*!40000 ALTER TABLE `bft_listdataex` DISABLE KEYS */;
INSERT INTO `bft_listdataex` VALUES (1,2,0,'select BFT_User1.UserCode  BFT_User1_UserCode,BFT_User1.UserName  BFT_User1_UserName,BFT_User1.DeptCode  BFT_User1_DeptCode,BFT_User1.CreateName  BFT_User1_CreateName,BFT_User1.CreateTime  BFT_User1_CreateTime,BFT_User1.ContactPhone  BFT_User1_ContactPhone,BFT_User1.UserID  BFT_User1_UserID,BFT_User1.UserFlag  BFT_User1_UserFlag,BFT_User1.UserType  BFT_User1_UserType  from    (select UserCode,UserName,DeptCode,CreateName,CreateTime,ContactPhone,UserID,UserFlag,UserType from BFT_User) BFT_User1 where 1=1   order by BFT_User1.CreateTime Desc ,BFT_User1.UserCode Asc ','','全部','BFT_User1_UserID','','',1,1,1,'list',0,0,NULL),(2,3,0,'select BFT_Role1.RoleCode  BFT_Role1_RoleCode,BFT_Role1.RoleName  BFT_Role1_RoleName,BFT_Role1.CreateName  BFT_Role1_CreateName,BFT_Role1.RoleDescription  BFT_Role1_RoleDescription,BFT_Role1.CreateTime  BFT_Role1_CreateTime,BFT_Role1.RoleID  BFT_Role1_RoleID  from    (select RoleCode,RoleName,CreateName,RoleDescription,CreateTime,RoleID from BFT_Role) BFT_Role1 where 1=1   order by BFT_Role1.CreateTime Desc ,BFT_Role1.RoleCode Asc ','','全部','BFT_Role1_RoleID','','',0,0,1,NULL,0,0,NULL),(3,4,0,'select BFT_Right1.CreateName  BFT_Right1_CreateName,BFT_Right1.RightName  BFT_Right1_RightName,BFT_Right1.RightCode  BFT_Right1_RightCode,BFT_Right1.RightType  BFT_Right1_RightType,BFT_Right1.RightDescription  BFT_Right1_RightDescription,BFT_Right1.CreateTime  BFT_Right1_CreateTime,BFT_Right1.RightID  BFT_Right1_RightID  from    (select CreateName,RightName,RightCode,RightType,RightDescription,CreateTime,RightID from BFT_Right) BFT_Right1 where 1=1   order by BFT_Right1.CreateTime Desc ,BFT_Right1.RightName Asc ','','全部','BFT_Right1_RightID','','',0,0,1,'list',0,0,NULL),(4,5,0,'select BFT_Menu1.MenuCode  BFT_Menu1_MenuCode,BFT_Menu1.MenuName  BFT_Menu1_MenuName,BFT_Menu1.Remark1  BFT_Menu1_Remark1,BFT_Menu1.MenuURL  BFT_Menu1_MenuURL,BFT_Menu1.MenuFile  BFT_Menu1_MenuFile,BFT_Menu1.MenuNamespace  BFT_Menu1_MenuNamespace,BFT_Menu1.MenuParams  BFT_Menu1_MenuParams,BFT_Menu1.MenuStatus  BFT_Menu1_MenuStatus,BFT_Menu1.MenuForSys  BFT_Menu1_MenuForSys,BFT_Menu1.ShowType  BFT_Menu1_ShowType,BFT_Menu1.RightCode  BFT_Menu1_RightCode,BFT_Menu1.RequestCode  BFT_Menu1_RequestCode,BFT_Menu1.MenuID  BFT_Menu1_MenuID,BFT_Menu1.MenuParent  BFT_Menu1_MenuParent,BFT_Menu1.MenuMemo  BFT_Menu1_MenuMemo  from    (select MenuCode,MenuName,Remark1,MenuURL,MenuFile,MenuNamespace,MenuParams,MenuStatus,MenuForSys,ShowType,RightCode,RequestCode,MenuID,MenuParent,MenuMemo from BFT_Menu) BFT_Menu1 where 1=1   order by BFT_Menu1.MenuCode Asc ','','全部','BFT_Menu1_MenuID','','',0,0,1,'list',0,0,NULL),(5,9,0,'select ViewMLLDayReport1.bid  ViewMLLDayReport1_bid,ViewMLLDayReport1.point  ViewMLLDayReport1_point,ViewMLLDayReport1.pjz  ViewMLLDayReport1_pjz,ViewMLLDayReport1.zxz  ViewMLLDayReport1_zxz,ViewMLLDayReport1.zdz  ViewMLLDayReport1_zdz,ViewMLLDayReport1.zdzs  ViewMLLDayReport1_zdzs,ViewMLLDayReport1.sumcountbybj  ViewMLLDayReport1_sumcountbybj,ViewMLLDayReport1.sumtimebybj  ViewMLLDayReport1_sumtimebybj,ViewMLLDayReport1.sumcountbydd  ViewMLLDayReport1_sumcountbydd,ViewMLLDayReport1.sumtimebydd  ViewMLLDayReport1_sumtimebydd,ViewMLLDayReport1.sumcountbykd  ViewMLLDayReport1_sumcountbykd,ViewMLLDayReport1.sumtimebykd  ViewMLLDayReport1_sumtimebykd,ViewMLLDayReport1.sumcountbygz  ViewMLLDayReport1_sumcountbygz,ViewMLLDayReport1.sumtimebygz  ViewMLLDayReport1_sumtimebygz,ViewMLLDayReport1.datsearch  ViewMLLDayReport1_datsearch,ViewMLLDayReport1.devid  ViewMLLDayReport1_devid,ViewMLLDayReport1.wzid  ViewMLLDayReport1_wzid,ViewMLLDayReport1.kh  ViewMLLDayReport1_kh,ViewMLLDayReport1.fzh  ViewMLLDayReport1_fzh,ViewMLLDayReport1.state  ViewMLLDayReport1_state,ViewMLLDayReport1.bida  ViewMLLDayReport1_bida,KJ_DeviceType2.Name  KJ_DeviceType2_Name,KJ_DeviceType2.Xs1  KJ_DeviceType2_Xs1,KJ_DeviceType2.devID  KJ_DeviceType2_devID,KJ_DeviceType2.Bz4  KJ_DeviceType2_Bz4,KJ_DeviceType2.Bz3  KJ_DeviceType2_Bz3,KJ_DeviceAddress3.wz  KJ_DeviceAddress3_wz,KJ_DeviceAddress3.wzID  KJ_DeviceAddress3_wzID,KJ_DeviceDefInfo6.z2  KJ_DeviceDefInfo6_z2,KJ_DeviceDefInfo6.z3  KJ_DeviceDefInfo6_z3,KJ_DeviceDefInfo6.z4  KJ_DeviceDefInfo6_z4,KJ_DeviceDefInfo6.ID  KJ_DeviceDefInfo6_ID,KJ_DeviceDefInfo6.pointid  KJ_DeviceDefInfo6_pointid,KJ_DeviceDefInfo6.z6  KJ_DeviceDefInfo6_z6,(case KJ_DeviceDefInfo6.z2 when \'0\' then \'-\' else  KJ_DeviceDefInfo6.z2 end) Bjmx,(case KJ_DeviceDefInfo6.z6 when \'0\' then \'-\' else KJ_DeviceDefInfo6.z6   end) myxxbj,(case KJ_DeviceDefInfo6.z3 when \'0\' then \'-\' else  KJ_DeviceDefInfo6.z3 end) ddmx,(case KJ_DeviceDefInfo6.z4 when \'0\' then \'-\' else  KJ_DeviceDefInfo6.z4 end) fdmx  from    (select bid,point,pjz,zxz,zdz,zdzs,sumcountbybj,sumtimebybj,sumcountbydd,sumtimebydd,sumcountbykd,sumtimebykd,sumcountbygz,sumtimebygz,datsearch,devid,wzid,kh,fzh,state,bida from ViewMLLDayReport) ViewMLLDayReport1 left join    (select Name,Xs1,devID,Bz4,Bz3 from KJ_DeviceType) KJ_DeviceType2 on ViewMLLDayReport1.devid=KJ_DeviceType2.devID left join    (select wz,wzID from KJ_DeviceAddress) KJ_DeviceAddress3 on ViewMLLDayReport1.wzid=KJ_DeviceAddress3.wzID left join    (select z2,z3,z4,ID,pointid,z6 from KJ_DeviceDefInfo) KJ_DeviceDefInfo6 on ViewMLLDayReport1.bida=KJ_DeviceDefInfo6.pointid where 1=1   order by KJ_DeviceType2.Bz3 Asc ,ViewMLLDayReport1.point Asc ','','安全监控日报','ViewMSum1_wzid','','',0,0,1,'list',1,0,''),(6,10,0,'select ViewJC_BMonth1.point  ViewJC_BMonth1_point,ViewJC_BMonth1.sumcount  ViewJC_BMonth1_sumcount,ViewJC_BMonth1.sumtime  ViewJC_BMonth1_sumtime,ViewJC_BMonth1.stime  ViewJC_BMonth1_stime,ViewJC_BMonth1.etime  ViewJC_BMonth1_etime,ViewJC_BMonth1.cursumtime  ViewJC_BMonth1_cursumtime,ViewJC_BMonth1.pjz  ViewJC_BMonth1_pjz,ViewJC_BMonth1.zdz  ViewJC_BMonth1_zdz,ViewJC_BMonth1.zdzs  ViewJC_BMonth1_zdzs,ViewJC_BMonth1.cs  ViewJC_BMonth1_cs,ViewJC_BMonth1.bz2  ViewJC_BMonth1_bz2,ViewJC_BMonth1.datsearch  ViewJC_BMonth1_datsearch,ViewJC_BMonth1.bid  ViewJC_BMonth1_bid,ViewJC_BMonth1.wzid  ViewJC_BMonth1_wzid,ViewJC_BMonth1.state  ViewJC_BMonth1_state,ViewJC_BMonth1.devid  ViewJC_BMonth1_devid,ViewJC_BMonth1.bida  ViewJC_BMonth1_bida,ViewJC_BMonth1.remark  ViewJC_BMonth1_remark,ViewJC_BMonth1.bz1  ViewJC_BMonth1_bz1,ViewJC_BMonth1.pointid  ViewJC_BMonth1_pointid,KJ_DeviceAddress4.wz  KJ_DeviceAddress4_wz,KJ_DeviceAddress4.wzID  KJ_DeviceAddress4_wzID,BFT_EnumCode5.strEnumDisplay  BFT_EnumCode5_strEnumDisplay,BFT_EnumCode5.lngEnumValue  BFT_EnumCode5_lngEnumValue,KJ_DeviceType3.Name  KJ_DeviceType3_Name,KJ_DeviceType3.Xs1  KJ_DeviceType3_Xs1,KJ_DeviceType3.devID  KJ_DeviceType3_devID,viewmnlbjmaxavgmaxtime2.zdz  viewmnlbjmaxavgmaxtime2_zdz,viewmnlbjmaxavgmaxtime2.zdzs  viewmnlbjmaxavgmaxtime2_zdzs,viewmnlbjmaxavgmaxtime2.pjz  viewmnlbjmaxavgmaxtime2_pjz,viewmnlbjmaxavgmaxtime2.pointid  viewmnlbjmaxavgmaxtime2_pointid,KJ_DeviceDefInfo6.z2  KJ_DeviceDefInfo6_z2,KJ_DeviceDefInfo6.ID  KJ_DeviceDefInfo6_ID,KJ_DeviceDefInfo6.pointid  KJ_DeviceDefInfo6_pointid,(cast(ViewJC_BMonth1.cursumtime as char)) cusSutime  from    (select point,sumcount,sumtime,stime,etime,cursumtime,pjz,zdz,zdzs,cs,bz2,datsearch,bid,wzid,state,devid,bida,remark,bz1,pointid from ViewJC_BMonth) ViewJC_BMonth1 left join    (select wz,wzID from KJ_DeviceAddress) KJ_DeviceAddress4 on ViewJC_BMonth1.wzid=KJ_DeviceAddress4.wzID left join    (select strEnumDisplay,lngEnumValue from BFT_EnumCode where EnumTypeID=8) BFT_EnumCode5 on ViewJC_BMonth1.state=BFT_EnumCode5.lngEnumValue left join    (select Name,Xs1,devID from KJ_DeviceType) KJ_DeviceType3 on ViewJC_BMonth1.devid=KJ_DeviceType3.devID left join    (select zdz,zdzs,pjz,pointid from viewmnlbjmaxavgmaxtime) viewmnlbjmaxavgmaxtime2 on ViewJC_BMonth1.bida=viewmnlbjmaxavgmaxtime2.pointid left join    (select z2,ID,pointid from KJ_DeviceDefInfo) KJ_DeviceDefInfo6 on ViewJC_BMonth1.pointid=KJ_DeviceDefInfo6.pointid where 1=1  and  (isnull(ViewJC_BMonth1.sumcount,0)>0 )  order by KJ_DeviceAddress4.wz Asc ,ViewJC_BMonth1.point Asc ,ViewJC_BMonth1.stime Asc ','','全部','ViewJC_BMonth1_bid','','',0,0,1,'list',1,0,NULL),(7,11,0,'select BFT_RunLog1.CreateDate  BFT_RunLog1_CreateDate,BFT_RunLog1.ThreadNumber  BFT_RunLog1_ThreadNumber,BFT_RunLog1.LogLevel  BFT_RunLog1_LogLevel,BFT_RunLog1.Logger  BFT_RunLog1_Logger,BFT_RunLog1.MessageContent  BFT_RunLog1_MessageContent,BFT_RunLog1.ID  BFT_RunLog1_Id  from    (select CreateDate,ThreadNumber,LogLevel,Logger,MessageContent,ID from BFT_RunLog) BFT_RunLog1 where 1=1 ','','全部','BFT_RunLog1_Id','','',0,0,1,NULL,0,0,NULL),(8,12,0,'select BFT_request1.RequestCode  BFT_request1_RequestCode,BFT_request1.RequestName  BFT_request1_RequestName,BFT_request1.MenuURL  BFT_request1_MenuURL,BFT_request1.MenuFile  BFT_request1_MenuFile,BFT_request1.MenuNamespace  BFT_request1_MenuNamespace,BFT_request1.MenuParams  BFT_request1_MenuParams,BFT_request1.ShowType  BFT_request1_ShowType,BFT_request1.LoadByIframe  BFT_request1_LoadByIframe,BFT_request1.MenuForSys  BFT_request1_MenuForSys,BFT_request1.RequestID  BFT_request1_RequestID,BFT_request1.BZ1  BFT_request1_BZ1  from    (select RequestCode,RequestName,MenuURL,MenuFile,MenuNamespace,MenuParams,ShowType,LoadByIframe,MenuForSys,RequestID,BZ1 from BFT_request) BFT_request1 where 1=1   order by BFT_request1.RequestCode Asc ','','全部','BFT_request1_RequestID','','',0,0,1,'list',0,0,NULL),(9,13,0,'select ViewMLLDDDayReport1.point  ViewMLLDDDayReport1_point,ViewMLLDDDayReport1.wzid  ViewMLLDDDayReport1_wzid,ViewMLLDDDayReport1.stime  ViewMLLDDDayReport1_stime,ViewMLLDDDayReport1.etime  ViewMLLDDDayReport1_etime,ViewMLLDDDayReport1.pjz  ViewMLLDDDayReport1_pjz,ViewMLLDDDayReport1.zdz  ViewMLLDDDayReport1_zdz,ViewMLLDDDayReport1.zdzs  ViewMLLDDDayReport1_zdzs,ViewMLLDDDayReport1.bid  ViewMLLDDDayReport1_bid,ViewMLLDDDayReport1.wz  ViewMLLDDDayReport1_wz,ViewMLLDDDayReport1.kdstate  ViewMLLDDDayReport1_kdstate,ViewMLLDDDayReport1.kdstime  ViewMLLDDDayReport1_kdstime,ViewMLLDDDayReport1.kdetime  ViewMLLDDDayReport1_kdetime,ViewMLLDDDayReport1.kdcursumtime  ViewMLLDDDayReport1_kdcursumtime,ViewMLLDDDayReport1.cs  ViewMLLDDDayReport1_cs,ViewMLLDDDayReport1.bz2  ViewMLLDDDayReport1_bz2,ViewMLLDDDayReport1.datsearch  ViewMLLDDDayReport1_datsearch,ViewMLLDDDayReport1.state  ViewMLLDDDayReport1_state,ViewMLLDDDayReport1.cursumtime  ViewMLLDDDayReport1_cursumtime,ViewMLLDDDayReport1.devid  ViewMLLDDDayReport1_devid,ViewMLLDDDayReport1.bidb  ViewMLLDDDayReport1_bidb,ViewMLLDDDayReport1.kdpid  ViewMLLDDDayReport1_kdpid,ViewMLLDDDayReport1.kdssz  ViewMLLDDDayReport1_kdssz,ViewMLLDDDayReport1.bida  ViewMLLDDDayReport1_bida,ViewMLLDDDayReport1.remark  ViewMLLDDDayReport1_remark,ViewMLLDDDayReport1.bz1  ViewMLLDDDayReport1_bz1,ViewMLLDDDayReport1.pointid  ViewMLLDDDayReport1_pointid,KJ_DeviceAddress3.wz  KJ_DeviceAddress3_wz,KJ_DeviceAddress3.wzID  KJ_DeviceAddress3_wzID,BFT_EnumCode4.lngEnumValue  BFT_EnumCode4_lngEnumValue,BFT_EnumCode4.strEnumDisplay  BFT_EnumCode4_strEnumDisplay,KJ_DeviceType2.Name  KJ_DeviceType2_Name,KJ_DeviceType2.Xs1  KJ_DeviceType2_Xs1,KJ_DeviceType2.devID  KJ_DeviceType2_devID,KJ_DeviceType2.type  KJ_DeviceType2_type,view_3montha6.sumcount  view_3montha6_sumcount,view_3montha6.sumtime  view_3montha6_sumtime,view_3montha6.bida  view_3montha6_bida,viewmnlddmaxavgmaxtime5.zdz  viewmnlddmaxavgmaxtime5_zdz,viewmnlddmaxavgmaxtime5.zdzs  viewmnlddmaxavgmaxtime5_zdzs,viewmnlddmaxavgmaxtime5.pjz  viewmnlddmaxavgmaxtime5_pjz,viewmnlddmaxavgmaxtime5.pointid  viewmnlddmaxavgmaxtime5_pointid,KJ_DeviceDefInfo8.z3  KJ_DeviceDefInfo8_z3,KJ_DeviceDefInfo8.z4  KJ_DeviceDefInfo8_z4,KJ_DeviceDefInfo8.ID  KJ_DeviceDefInfo8_ID,KJ_DeviceDefInfo8.pointid  KJ_DeviceDefInfo8_pointid,(cast(ViewMLLDDDayReport1.cursumtime as char)) afd  from    (select point,wzid,stime,etime,pjz,zdz,zdzs,bid,wz,kdstate,kdstime,kdetime,kdcursumtime,cs,bz2,datsearch,state,cursumtime,devid,bidb,kdpid,kdssz,bida,remark,bz1,pointid from ViewMLLDDDayReport) ViewMLLDDDayReport1 left join    (select wz,wzID from KJ_DeviceAddress) KJ_DeviceAddress3 on ViewMLLDDDayReport1.wzid=KJ_DeviceAddress3.wzID left join    (select lngEnumValue,strEnumDisplay from BFT_EnumCode where EnumTypeID=8) BFT_EnumCode4 on ViewMLLDDDayReport1.state=BFT_EnumCode4.lngEnumValue left join    (select Name,Xs1,devID,type from KJ_DeviceType) KJ_DeviceType2 on ViewMLLDDDayReport1.devid=KJ_DeviceType2.devID left join    (select sumcount,sumtime,bida from view_3montha) view_3montha6 on ViewMLLDDDayReport1.bidb=view_3montha6.bida left join    (select zdz,zdzs,pjz,pointid from viewmnlddmaxavgmaxtime) viewmnlddmaxavgmaxtime5 on ViewMLLDDDayReport1.bida=viewmnlddmaxavgmaxtime5.pointid left join    (select z3,z4,ID,pointid from KJ_DeviceDefInfo) KJ_DeviceDefInfo8 on ViewMLLDDDayReport1.pointid=KJ_DeviceDefInfo8.pointid where 1=1  and  (KJ_DeviceType2.type in (1) ) and  (isnull(view_3montha6.sumcount,0)>0 )  order by ViewMLLDDDayReport1.stime Asc ','','全部','KJ_DeviceType2_devID','','',0,0,1,NULL,1,0,NULL),(10,14,0,'select ViewMLLDDDayReport1.point  ViewMLLDDDayReport1_point,ViewMLLDDDayReport1.devid  ViewMLLDDDayReport1_devid,ViewMLLDDDayReport1.wzid  ViewMLLDDDayReport1_wzid,ViewMLLDDDayReport1.wz  ViewMLLDDDayReport1_wz,ViewMLLDDDayReport1.bid  ViewMLLDDDayReport1_bid,ViewMLLDDDayReport1.datsearch  ViewMLLDDDayReport1_datsearch,ViewMLLDDDayReport1.kdstime  ViewMLLDDDayReport1_kdstime,ViewMLLDDDayReport1.kdetime  ViewMLLDDDayReport1_kdetime,ViewMLLDDDayReport1.kdcursumtime  ViewMLLDDDayReport1_kdcursumtime,ViewMLLDDDayReport1.toid  ViewMLLDDDayReport1_toid,ViewMLLDDDayReport1.state  ViewMLLDDDayReport1_state,ViewMLLDDDayReport1.bidb  ViewMLLDDDayReport1_bidb,ViewMLLDDDayReport1.kdpid  ViewMLLDDDayReport1_kdpid,ViewMLLDDDayReport1.kdssz  ViewMLLDDDayReport1_kdssz,ViewMLLDDDayReport1.kdstate  ViewMLLDDDayReport1_kdstate,KJ_DeviceType2.Name  KJ_DeviceType2_Name,KJ_DeviceType2.Xs1  KJ_DeviceType2_Xs1,KJ_DeviceType2.devID  KJ_DeviceType2_devID,KJ_DeviceType2.type  KJ_DeviceType2_type,KJ_DeviceAddress3.wz  KJ_DeviceAddress3_wz,KJ_DeviceAddress3.wzID  KJ_DeviceAddress3_wzID,BFT_EnumCode4.strEnumDisplay  BFT_EnumCode4_strEnumDisplay,BFT_EnumCode4.lngEnumValue  BFT_EnumCode4_lngEnumValue,view_3montha6.sumcount  view_3montha6_sumcount,view_3montha6.sumtime  view_3montha6_sumtime,view_3montha6.bida  view_3montha6_bida  from    (select point,devid,wzid,wz,bid,datsearch,kdstime,kdetime,kdcursumtime,toid,state,bidb,kdpid,kdssz,kdstate from ViewMLLDDDayReport) ViewMLLDDDayReport1 left join    (select Name,Xs1,devID,type from KJ_DeviceType) KJ_DeviceType2 on ViewMLLDDDayReport1.devid=KJ_DeviceType2.devID left join    (select wz,wzID from KJ_DeviceAddress) KJ_DeviceAddress3 on ViewMLLDDDayReport1.wzid=KJ_DeviceAddress3.wzID left join    (select strEnumDisplay,lngEnumValue from BFT_EnumCode where EnumTypeID=8) BFT_EnumCode4 on ViewMLLDDDayReport1.state=BFT_EnumCode4.lngEnumValue left join    (select sumcount,sumtime,bida from view_3montha) view_3montha6 on ViewMLLDDDayReport1.bidb=view_3montha6.bida where 1=1  and ViewMLLDDDayReport1.kdstate <> \'复电失败\'  and ViewMLLDDDayReport1.kdstate not like  \'%成功%\'  and  (KJ_DeviceType2.type in (1) )  order by ViewMLLDDDayReport1.point Asc ','','全部','KJ_DeviceType2_devID','','',0,0,1,NULL,0,0,'ViewMLLDDDayReport1_kdstate&&&$$$ViewMLLDDDayReport1_kdstate <> \'复电失败\'  and ViewMLLDDDayReport1_kdstate not like  \'%成功%\''),(11,15,0,'select ViewMLLTJZReport1.point  ViewMLLTJZReport1_point,ViewMLLTJZReport1.wzid  ViewMLLTJZReport1_wzid,ViewMLLTJZReport1.id  ViewMLLTJZReport1_id,ViewMLLTJZReport1.timer  ViewMLLTJZReport1_timer,ViewMLLTJZReport1.timerend  ViewMLLTJZReport1_timerend,ViewMLLTJZReport1.zdz  ViewMLLTJZReport1_zdz,ViewMLLTJZReport1.zxz  ViewMLLTJZReport1_zxz,ViewMLLTJZReport1.pjz  ViewMLLTJZReport1_pjz,ViewMLLTJZReport1.datsearch  ViewMLLTJZReport1_datsearch,ViewMLLTJZReport1.state  ViewMLLTJZReport1_state,ViewMLLTJZReport1.devid  ViewMLLTJZReport1_devid,ViewMLLTJZReport1.pointid  ViewMLLTJZReport1_pointid,ViewMLLTJZReport1.bid  ViewMLLTJZReport1_bid,KJ_DeviceAddress3.wz  KJ_DeviceAddress3_wz,KJ_DeviceAddress3.wzID  KJ_DeviceAddress3_wzID,BFT_EnumCode5.strEnumDisplay  BFT_EnumCode5_strEnumDisplay,BFT_EnumCode5.lngEnumValue  BFT_EnumCode5_lngEnumValue,KJ_DeviceType2.Name  KJ_DeviceType2_Name,KJ_DeviceType2.Xs1  KJ_DeviceType2_Xs1,KJ_DeviceType2.devID  KJ_DeviceType2_devID,KJ_DeviceDefInfo6.z2  KJ_DeviceDefInfo6_z2,KJ_DeviceDefInfo6.z3  KJ_DeviceDefInfo6_z3,KJ_DeviceDefInfo6.z4  KJ_DeviceDefInfo6_z4,KJ_DeviceDefInfo6.ID  KJ_DeviceDefInfo6_ID,KJ_DeviceDefInfo6.pointid  KJ_DeviceDefInfo6_pointid,viewfiveminutemaxandtime4.pjz  viewfiveminutemaxandtime4_pjz,viewfiveminutemaxandtime4.zdz  viewfiveminutemaxandtime4_zdz,viewfiveminutemaxandtime4.zdzs  viewfiveminutemaxandtime4_zdzs,viewfiveminutemaxandtime4.pointid  viewfiveminutemaxandtime4_pointid  from    (select point,wzid,id,timer,timerend,zdz,zxz,pjz,datsearch,state,devid,pointid,bid from ViewMLLTJZReport) ViewMLLTJZReport1 left join    (select wz,wzID from KJ_DeviceAddress) KJ_DeviceAddress3 on ViewMLLTJZReport1.wzid=KJ_DeviceAddress3.wzID left join    (select strEnumDisplay,lngEnumValue from BFT_EnumCode where EnumTypeID=8) BFT_EnumCode5 on ViewMLLTJZReport1.state=BFT_EnumCode5.lngEnumValue left join    (select Name,Xs1,devID from KJ_DeviceType) KJ_DeviceType2 on ViewMLLTJZReport1.devid=KJ_DeviceType2.devID left join    (select z2,z3,z4,ID,pointid from KJ_DeviceDefInfo) KJ_DeviceDefInfo6 on ViewMLLTJZReport1.pointid=KJ_DeviceDefInfo6.pointid left join    (select pjz,zdz,zdzs,pointid from viewfiveminutemaxandtime) viewfiveminutemaxandtime4 on ViewMLLTJZReport1.bid=viewfiveminutemaxandtime4.pointid where 1=1   order by ViewMLLTJZReport1.point Asc ,ViewMLLTJZReport1.timer Asc ','','5分钟','ViewMLLTJZReport1_id','','',0,0,1,'',1,0,''),(12,15,0,'SELECT Max(ViewMLLTJZReport1.zdz) ViewMLLTJZReport1_zdz,Min(ViewMLLTJZReport1.zxz) ViewMLLTJZReport1_zxz,Avg(ViewMLLTJZReport1.pjz) ViewMLLTJZReport1_pjz,ViewMLLTJZReport1.point ViewMLLTJZReport1_point,KJ_DeviceType2.NAME KJ_DeviceType2_Name,KJ_DeviceType2.Xs1 KJ_DeviceType2_Xs1,JC_WZ3.wz JC_WZ3_wz,JC_DEF6.z2 JC_DEF6_z2,JC_DEF6.z3 JC_DEF6_z3,JC_DEF6.z4 JC_DEF6_z4,viewfiveminutemaxandtime4.zdz viewfiveminutemaxandtime4_zdz,viewfiveminutemaxandtime4.zdzs viewfiveminutemaxandtime4_zdzs,viewfiveminutemaxandtime4.pjz viewfiveminutemaxandtime4_pjz,ViewMLLTJZReport1.timer1 ViewMLLTJZReport1_timer1,ViewMLLTJZReport1.timerenda ViewMLLTJZReport1_timerenda FROM (\nSELECT point,devid,wzid,id,timer1,timerenda,zdz,zxz,pjz,datsearch,sjhour,pointid,timer,timerend,bid FROM ViewMLLTJZReport) ViewMLLTJZReport1 LEFT JOIN (\nSELECT NAME,Xs1,devID FROM KJ_DeviceType) KJ_DeviceType2 ON ViewMLLTJZReport1.devid=KJ_DeviceType2.devID LEFT JOIN (\nSELECT wz,wzID FROM KJ_DeviceAddress) JC_WZ3 ON ViewMLLTJZReport1.wzid=JC_WZ3.wzID LEFT JOIN (\nSELECT z2,z3,z4,ID,pointid FROM KJ_DeviceDefInfo) JC_DEF6 ON ViewMLLTJZReport1.pointid=JC_DEF6.pointid LEFT JOIN (\nSELECT zdz,zdzs,pjz,pointid FROM viewfiveminutemaxandtime) viewfiveminutemaxandtime4 ON ViewMLLTJZReport1.bid=viewfiveminutemaxandtime4.pointid WHERE 1=1 GROUP BY ViewMLLTJZReport1.point,KJ_DeviceType2.NAME,KJ_DeviceType2.Xs1,JC_WZ3.wz,JC_DEF6.z2,JC_DEF6.z3,JC_DEF6.z4,viewfiveminutemaxandtime4.zdz,viewfiveminutemaxandtime4.zdzs,viewfiveminutemaxandtime4.pjz,ViewMLLTJZReport1.timer1,ViewMLLTJZReport1.timerenda ORDER BY ViewMLLTJZReport1.point ASC,ViewMLLTJZReport1.timer1 ASC ','','1小时','ViewMLLTJZReport1_id','','',0,0,1,NULL,0,0,NULL),(13,17,0,'select ViewJC_KGStateMonth1.point  ViewJC_KGStateMonth1_point,ViewJC_KGStateMonth1.state  ViewJC_KGStateMonth1_state,ViewJC_KGStateMonth1.sumtime  ViewJC_KGStateMonth1_sumtime,ViewJC_KGStateMonth1.sumcount  ViewJC_KGStateMonth1_sumcount,ViewJC_KGStateMonth1.duration  ViewJC_KGStateMonth1_duration,ViewJC_KGStateMonth1.stime  ViewJC_KGStateMonth1_stime,ViewJC_KGStateMonth1.etime  ViewJC_KGStateMonth1_etime,ViewJC_KGStateMonth1.pid  ViewJC_KGStateMonth1_pid,ViewJC_KGStateMonth1.datSearch  ViewJC_KGStateMonth1_datSearch,ViewJC_KGStateMonth1.fzh  ViewJC_KGStateMonth1_fzh,ViewJC_KGStateMonth1.kh  ViewJC_KGStateMonth1_kh,ViewJC_KGStateMonth1.devid  ViewJC_KGStateMonth1_devid,ViewJC_KGStateMonth1.wzid  ViewJC_KGStateMonth1_wzid,KJ_DeviceType2.Name  KJ_DeviceType2_Name,KJ_DeviceType2.devID  KJ_DeviceType2_devID,KJ_DeviceAddress3.wz  KJ_DeviceAddress3_wz,KJ_DeviceAddress3.wzID  KJ_DeviceAddress3_wzID  from    (select point,state,sumtime,sumcount,duration,stime,etime,pid,datSearch,fzh,kh,devid,wzid from ViewJC_KGStateMonth) ViewJC_KGStateMonth1 left join    (select Name,devID from KJ_DeviceType) KJ_DeviceType2 on ViewJC_KGStateMonth1.devid=KJ_DeviceType2.devID left join    (select wz,wzID from KJ_DeviceAddress) KJ_DeviceAddress3 on ViewJC_KGStateMonth1.wzid=KJ_DeviceAddress3.wzID where 1=1  and  (isnull(ViewJC_KGStateMonth1.sumcount,0)>0 )  order by ViewJC_KGStateMonth1.point Asc ,ViewJC_KGStateMonth1.state Asc ,ViewJC_KGStateMonth1.stime Asc ','','全部','ViewJC_KGStateMonth1_pid','','',0,0,1,'list',1,0,NULL),(14,18,0,'select ViewKGLBJDDDayReport1.point  ViewKGLBJDDDayReport1_point,ViewKGLBJDDDayReport1.wz  ViewKGLBJDDDayReport1_wz,ViewKGLBJDDDayReport1.kdsumcount  ViewKGLBJDDDayReport1_kdsumcount,ViewKGLBJDDDayReport1.kdsumtime  ViewKGLBJDDDayReport1_kdsumtime,ViewKGLBJDDDayReport1.kdstate  ViewKGLBJDDDayReport1_kdstate,ViewKGLBJDDDayReport1.kdstime  ViewKGLBJDDDayReport1_kdstime,ViewKGLBJDDDayReport1.kdetime  ViewKGLBJDDDayReport1_kdetime,ViewKGLBJDDDayReport1.kdcursumtime  ViewKGLBJDDDayReport1_kdcursumtime,ViewKGLBJDDDayReport1.bid  ViewKGLBJDDDayReport1_bid,ViewKGLBJDDDayReport1.datsearch  ViewKGLBJDDDayReport1_datsearch,ViewKGLBJDDDayReport1.toid  ViewKGLBJDDDayReport1_toid,ViewKGLBJDDDayReport1.wzid  ViewKGLBJDDDayReport1_wzid,KJ_DeviceAddress3.wz  KJ_DeviceAddress3_wz,KJ_DeviceAddress3.wzID  KJ_DeviceAddress3_wzID  from    (select point,wz,kdsumcount,kdsumtime,kdstate,kdstime,kdetime,kdcursumtime,bid,datsearch,toid,wzid from ViewKGLBJDDDayReport) ViewKGLBJDDDayReport1 left join    (select wz,wzID from KJ_DeviceAddress) KJ_DeviceAddress3 on ViewKGLBJDDDayReport1.wzid=KJ_DeviceAddress3.wzID where 1=1   order by ViewKGLBJDDDayReport1.point Asc ','','全部','ViewKGLBJDDDayReport1_bid','','',0,0,1,NULL,0,0,''),(15,19,0,'select ViewKGLBJDDDayReport1.point  ViewKGLBJDDDayReport1_point,ViewKGLBJDDDayReport1.devid  ViewKGLBJDDDayReport1_devid,ViewKGLBJDDDayReport1.sumtime  ViewKGLBJDDDayReport1_sumtime,ViewKGLBJDDDayReport1.sumcount  ViewKGLBJDDDayReport1_sumcount,ViewKGLBJDDDayReport1.wz  ViewKGLBJDDDayReport1_wz,ViewKGLBJDDDayReport1.cursumtime  ViewKGLBJDDDayReport1_cursumtime,ViewKGLBJDDDayReport1.stime  ViewKGLBJDDDayReport1_stime,ViewKGLBJDDDayReport1.etime  ViewKGLBJDDDayReport1_etime,ViewKGLBJDDDayReport1.kdstate  ViewKGLBJDDDayReport1_kdstate,ViewKGLBJDDDayReport1.bid  ViewKGLBJDDDayReport1_bid,ViewKGLBJDDDayReport1.wzid  ViewKGLBJDDDayReport1_wzid,ViewKGLBJDDDayReport1.cs  ViewKGLBJDDDayReport1_cs,ViewKGLBJDDDayReport1.bz2  ViewKGLBJDDDayReport1_bz2,ViewKGLBJDDDayReport1.remark  ViewKGLBJDDDayReport1_remark,ViewKGLBJDDDayReport1.bz1  ViewKGLBJDDDayReport1_bz1,ViewKGLBJDDDayReport1.datsearch  ViewKGLBJDDDayReport1_datsearch,ViewKGLBJDDDayReport1.statename  ViewKGLBJDDDayReport1_statename,ViewKGLBJDDDayReport1.kdstime  ViewKGLBJDDDayReport1_kdstime,ViewKGLBJDDDayReport1.kdetime  ViewKGLBJDDDayReport1_kdetime,ViewKGLBJDDDayReport1.kdcursumtime  ViewKGLBJDDDayReport1_kdcursumtime,KJ_DeviceType2.Name  KJ_DeviceType2_Name,KJ_DeviceType2.devID  KJ_DeviceType2_devID,KJ_DeviceType2.Bz3  KJ_DeviceType2_Bz3,BFT_EnumCode5.lngEnumValue  BFT_EnumCode5_lngEnumValue,BFT_EnumCode5.strEnumDisplay  BFT_EnumCode5_strEnumDisplay,KJ_DeviceAddress3.wz  KJ_DeviceAddress3_wz,KJ_DeviceAddress3.wzID  KJ_DeviceAddress3_wzID,(case  when  ViewKGLBJDDDayReport1.kdstate like \'%成功%\'  then ViewKGLBJDDDayReport1.stime else  ViewKGLBJDDDayReport1.kdstime  end) kdstimea,(case  when  ViewKGLBJDDDayReport1.kdstate like \'%成功%\'  then ViewKGLBJDDDayReport1.etime  else ViewKGLBJDDDayReport1.kdetime  end) kdetimea,(case  when  ViewKGLBJDDDayReport1.kdstate like \'%成功%\'  then \r\nViewKGLBJDDDayReport1.cursumtime else  ViewKGLBJDDDayReport1.kdcursumtime  end) kdcursumtimea  from    (select point,devid,sumtime,sumcount,wz,cursumtime,stime,etime,kdstate,bid,wzid,cs,bz2,remark,bz1,datsearch,statename,kdstime,kdetime,kdcursumtime from ViewKGLBJDDDayReport) ViewKGLBJDDDayReport1 left join    (select Name,devID,Bz3 from KJ_DeviceType) KJ_DeviceType2 on ViewKGLBJDDDayReport1.devid=KJ_DeviceType2.devID left join    (select lngEnumValue,strEnumDisplay from BFT_EnumCode where EnumTypeID=2) BFT_EnumCode5 on KJ_DeviceType2.Bz3=BFT_EnumCode5.lngEnumValue left join    (select wz,wzID from KJ_DeviceAddress) KJ_DeviceAddress3 on ViewKGLBJDDDayReport1.wzid=KJ_DeviceAddress3.wzID where 1=1  and  (isnull(ViewKGLBJDDDayReport1.sumcount,0)>0 ) and  (isnull(ViewKGLBJDDDayReport1.kdstate,\'\')<>\'复电失败\' ) and  (isnull(BFT_EnumCode5.strEnumDisplay,\'\')<>\'语音风门\' )  order by ViewKGLBJDDDayReport1.point Asc ,ViewKGLBJDDDayReport1.stime Asc ','','全部','ViewKGLBJDDDayReport1_bid','','',0,0,1,NULL,1,0,''),(16,19,0,'SELECT ViewKGLBJDDDayReport1.point ViewKGLBJDDDayReport1_point,ViewKGLBJDDDayReport1.statename ViewKGLBJDDDayReport1_statename,ViewKGLBJDDDayReport1.sumcount ViewKGLBJDDDayReport1_sumcount,ViewKGLBJDDDayReport1.sumtime ViewKGLBJDDDayReport1_sumtime,ViewKGLBJDDDayReport1.stime ViewKGLBJDDDayReport1_stime,ViewKGLBJDDDayReport1.etime ViewKGLBJDDDayReport1_etime,ViewKGLBJDDDayReport1.cursumtime ViewKGLBJDDDayReport1_cursumtime,ViewKGLBJDDDayReport1.wz ViewKGLBJDDDayReport1_wz,ViewKGLBJDDDayReport1.kdstate ViewKGLBJDDDayReport1_kdstate,ViewKGLBJDDDayReport1.kdstime ViewKGLBJDDDayReport1_kdstime,ViewKGLBJDDDayReport1.kdetime ViewKGLBJDDDayReport1_kdetime,ViewKGLBJDDDayReport1.kdcursumtime ViewKGLBJDDDayReport1_kdcursumtime,ViewKGLBJDDDayReport1.bid ViewKGLBJDDDayReport1_bid,ViewKGLBJDDDayReport1.datsearch ViewKGLBJDDDayReport1_datsearch,ViewKGLBJDDDayReport1.isalarm ViewKGLBJDDDayReport1_isalarm,ViewKGLBJDDDayReport1.wzid ViewKGLBJDDDayReport1_wzid,ViewKGLBJDDDayReport1.kzk ViewKGLBJDDDayReport1_kzk,ViewKGLBJDDDayReport1.cs ViewKGLBJDDDayReport1_cs,ViewKGLBJDDDayReport1.bz1 ViewKGLBJDDDayReport1_bz1,ViewKGLBJDDDayReport1.bz2 ViewKGLBJDDDayReport1_bz2,JC_WZ3.wz JC_WZ3_wz,JC_WZ3.wzID JC_WZ3_wzID,(CASE WHEN ViewKGLBJDDDayReport1.kdstate LIKE \'%成功%\' THEN ViewKGLBJDDDayReport1.stime ELSE ViewKGLBJDDDayReport1.kdstime END) kdstime2,(CASE WHEN ViewKGLBJDDDayReport1.kdstate LIKE \'%成功%\' THEN ViewKGLBJDDDayReport1.etime ELSE ViewKGLBJDDDayReport1.kdetime END) kdetime2,(CASE WHEN ViewKGLBJDDDayReport1.kdstate LIKE \'%成功%\' THEN ViewKGLBJDDDayReport1.cursumtime ELSE ViewKGLBJDDDayReport1.kdcursumtime END) kdcursumtime2 FROM (\nSELECT point,statename,sumcount,sumtime,stime,etime,cursumtime,wz,kdstate,kdstime,kdetime,kdcursumtime,bid,datsearch,isalarm,wzid,kzk,cs,bz1,bz2 FROM ViewKGLBJDDDayReport) ViewKGLBJDDDayReport1 LEFT JOIN (\nSELECT wz,wzID FROM KJ_DeviceAddress) JC_WZ3 ON ViewKGLBJDDDayReport1.wzid=JC_WZ3.wzID WHERE 1=1 AND ViewKGLBJDDDayReport1.isalarm> 0 AND (length(ViewKGLBJDDDayReport1.kzk)=0 OR ViewKGLBJDDDayReport1.kzk IS NULL) AND (ifnull(ViewKGLBJDDDayReport1.kdstate,\'\')<> \'复电失败\') ORDER BY ViewKGLBJDDDayReport1.stime ASC ','','报警','ViewKGLBJDDDayReport1_bid','','',0,0,1,NULL,0,0,'ViewKGLBJDDDayReport1_isalarm,ViewKGLBJDDDayReport1_kzk&&&$$$ViewKGLBJDDDayReport1_isalarm>0 and (length(ViewKGLBJDDDayReport1_kzk)=0 or ViewKGLBJDDDayReport1_kzk is null)'),(17,21,0,'select ViewJKSBGZDayReport1.point  ViewJKSBGZDayReport1_point,ViewJKSBGZDayReport1.wzid  ViewJKSBGZDayReport1_wzid,ViewJKSBGZDayReport1.ssz  ViewJKSBGZDayReport1_ssz,ViewJKSBGZDayReport1.sumtime  ViewJKSBGZDayReport1_sumtime,ViewJKSBGZDayReport1.sumcount  ViewJKSBGZDayReport1_sumcount,ViewJKSBGZDayReport1.cursumtime  ViewJKSBGZDayReport1_cursumtime,ViewJKSBGZDayReport1.stime  ViewJKSBGZDayReport1_stime,ViewJKSBGZDayReport1.etime  ViewJKSBGZDayReport1_etime,ViewJKSBGZDayReport1.bid  ViewJKSBGZDayReport1_bid,ViewJKSBGZDayReport1.cs  ViewJKSBGZDayReport1_cs,ViewJKSBGZDayReport1.bz2  ViewJKSBGZDayReport1_bz2,ViewJKSBGZDayReport1.devid  ViewJKSBGZDayReport1_devid,ViewJKSBGZDayReport1.type  ViewJKSBGZDayReport1_type,ViewJKSBGZDayReport1.remark  ViewJKSBGZDayReport1_remark,ViewJKSBGZDayReport1.bz1  ViewJKSBGZDayReport1_bz1,ViewJKSBGZDayReport1.datsearch  ViewJKSBGZDayReport1_datsearch,KJ_DeviceAddress3.wz  KJ_DeviceAddress3_wz,KJ_DeviceAddress3.wzID  KJ_DeviceAddress3_wzID,KJ_DeviceType2.Name  KJ_DeviceType2_Name,KJ_DeviceType2.devID  KJ_DeviceType2_devID,KJ_DeviceType2.type  KJ_DeviceType2_type,BFT_EnumCode5.strEnumDisplay  BFT_EnumCode5_strEnumDisplay,BFT_EnumCode5.lngEnumValue  BFT_EnumCode5_lngEnumValue  from    (select point,wzid,ssz,sumtime,sumcount,cursumtime,stime,etime,bid,cs,bz2,devid,type,remark,bz1,datsearch from ViewJKSBGZDayReport) ViewJKSBGZDayReport1 left join    (select wz,wzID from KJ_DeviceAddress) KJ_DeviceAddress3 on ViewJKSBGZDayReport1.wzid=KJ_DeviceAddress3.wzID left join    (select Name,devID,type from KJ_DeviceType) KJ_DeviceType2 on ViewJKSBGZDayReport1.devid=KJ_DeviceType2.devID left join    (select strEnumDisplay,lngEnumValue from BFT_EnumCode where EnumTypeID=1) BFT_EnumCode5 on KJ_DeviceType2.type=BFT_EnumCode5.lngEnumValue where 1=1  and  (isnull(ViewJKSBGZDayReport1.sumcount,0)>0 ) and  (isnull(KJ_DeviceType2.Name,\'\')<>\'风门开闭\' )  order by ViewJKSBGZDayReport1.point Asc ,ViewJKSBGZDayReport1.stime Asc ','','全部','ViewJKSBGZDayReport1_bid','','',0,0,1,NULL,0,0,NULL),(19,23,0,'select ViewMLLBJDDReport1.point  ViewMLLBJDDReport1_point,ViewMLLBJDDReport1.wzid  ViewMLLBJDDReport1_wzid,ViewMLLBJDDReport1.typename  ViewMLLBJDDReport1_typename,ViewMLLBJDDReport1.sumcount  ViewMLLBJDDReport1_sumcount,ViewMLLBJDDReport1.sumtime  ViewMLLBJDDReport1_sumtime,ViewMLLBJDDReport1.stime  ViewMLLBJDDReport1_stime,ViewMLLBJDDReport1.etime  ViewMLLBJDDReport1_etime,ViewMLLBJDDReport1.cursumtime  ViewMLLBJDDReport1_cursumtime,ViewMLLBJDDReport1.pjz  ViewMLLBJDDReport1_pjz,ViewMLLBJDDReport1.zdz  ViewMLLBJDDReport1_zdz,ViewMLLBJDDReport1.zdzs  ViewMLLBJDDReport1_zdzs,ViewMLLBJDDReport1.datsearch  ViewMLLBJDDReport1_datsearch,ViewMLLBJDDReport1.bid  ViewMLLBJDDReport1_bid,ViewMLLBJDDReport1.state  ViewMLLBJDDReport1_state,ViewMLLBJDDReport1.devid  ViewMLLBJDDReport1_devid,KJ_DeviceAddress3.wz  KJ_DeviceAddress3_wz,KJ_DeviceAddress3.wzID  KJ_DeviceAddress3_wzID,BFT_EnumCode4.strEnumDisplay  BFT_EnumCode4_strEnumDisplay,BFT_EnumCode4.lngEnumValue  BFT_EnumCode4_lngEnumValue,KJ_DeviceType2.Xs1  KJ_DeviceType2_Xs1,KJ_DeviceType2.Name  KJ_DeviceType2_Name,KJ_DeviceType2.devID  KJ_DeviceType2_devID,KJ_DeviceType2.type  KJ_DeviceType2_type,(case  when  ViewMLLBJDDReport1.typename=\'馈电\'  then \' \'  else   ViewMLLBJDDReport1.pjz   end) strAVG,(case  when  ViewMLLBJDDReport1.typename=\'馈电\'  then \' \'  else   ViewMLLBJDDReport1.zdz  end) strMAX,(case  when  ViewMLLBJDDReport1.typename=\'馈电\'  then \' \'  else   ViewMLLBJDDReport1.zdzs  end) strMAXTime  from    (select point,wzid,typename,sumcount,sumtime,stime,etime,cursumtime,pjz,zdz,zdzs,datsearch,bid,state,devid from ViewMLLBJDDReport) ViewMLLBJDDReport1 left join    (select wz,wzID from KJ_DeviceAddress) KJ_DeviceAddress3 on ViewMLLBJDDReport1.wzid=KJ_DeviceAddress3.wzID left join    (select strEnumDisplay,lngEnumValue from BFT_EnumCode where EnumTypeID=8) BFT_EnumCode4 on ViewMLLBJDDReport1.state=BFT_EnumCode4.lngEnumValue left join    (select Xs1,Name,devID,type from KJ_DeviceType) KJ_DeviceType2 on ViewMLLBJDDReport1.devid=KJ_DeviceType2.devID where 1=1  and  (KJ_DeviceType2.type in (1) )  order by KJ_DeviceType2.Name Asc ,KJ_DeviceAddress3.wz Asc ,ViewMLLBJDDReport1.stime Asc ','','全部','ViewMLLBJDDReport1_bid','','',0,0,1,NULL,0,0,NULL),(21,27,0,'SELECT viewsbrunlogreport1.timer viewsbrunlogreport1_timer,viewsbrunlogreport1.point viewsbrunlogreport1_point,viewsbrunlogreport1.wzid viewsbrunlogreport1_wzid,viewsbrunlogreport1.devid viewsbrunlogreport1_devid,viewsbrunlogreport1.val viewsbrunlogreport1_val,viewsbrunlogreport1.datsearch viewsbrunlogreport1_datsearch,viewsbrunlogreport1.id viewsbrunlogreport1_id,viewsbrunlogreport1.type viewsbrunlogreport1_type,viewsbrunlogreport1.valnumber viewsbrunlogreport1_valnumber,viewsbrunlogreport1.state viewsbrunlogreport1_state,JC_WZ3.wz JC_WZ3_wz,JC_WZ3.wzID JC_WZ3_wzID,KJ_DeviceType2.NAME KJ_DeviceType2_Name,KJ_DeviceType2.Xs1 KJ_DeviceType2_Xs1,KJ_DeviceType2.type KJ_DeviceType2_type,KJ_DeviceType2.devID KJ_DeviceType2_devID,BFT_EnumCode4.lngEnumValue BFT_EnumCode4_lngEnumValue,BFT_EnumCode4.strEnumDisplay BFT_EnumCode4_strEnumDisplay,BFT_EnumCode5.strEnumDisplay BFT_EnumCode5_strEnumDisplay,BFT_EnumCode5.lngEnumValue BFT_EnumCode5_lngEnumValue,(CASE KJ_DeviceType2.type WHEN 1 THEN KJ_DeviceType2.Xs1 ELSE \'\' END) dd FROM (\nSELECT timer,point,wzid,devid,val,datsearch,id,type,valnumber,state FROM viewsbrunlogreport) viewsbrunlogreport1 LEFT JOIN (\nSELECT wz,wzID FROM KJ_DeviceAddress) JC_WZ3 ON viewsbrunlogreport1.wzid=JC_WZ3.wzID LEFT JOIN (\nSELECT NAME,Xs1,type,devID FROM KJ_DeviceType) KJ_DeviceType2 ON viewsbrunlogreport1.devid=KJ_DeviceType2.devID LEFT JOIN (\nSELECT lngEnumValue,strEnumDisplay FROM BFT_EnumCode WHERE EnumTypeID=4) BFT_EnumCode4 ON viewsbrunlogreport1.type=BFT_EnumCode4.lngEnumValue LEFT JOIN (\nSELECT strEnumDisplay,lngEnumValue FROM BFT_EnumCode WHERE EnumTypeID=8) BFT_EnumCode5 ON viewsbrunlogreport1.state=BFT_EnumCode5.lngEnumValue WHERE 1=1 ORDER BY viewsbrunlogreport1.timer ASC,viewsbrunlogreport1.point ASC ','','按天','viewsbrunlogreport1_id','','',0,0,1,NULL,0,0,NULL),(22,27,0,'select viewsbrunlogreport1.timer  viewsbrunlogreport1_timer,viewsbrunlogreport1.point  viewsbrunlogreport1_point,viewsbrunlogreport1.wzid  viewsbrunlogreport1_wzid,viewsbrunlogreport1.devid  viewsbrunlogreport1_devid,viewsbrunlogreport1.val  viewsbrunlogreport1_val,viewsbrunlogreport1.datsearch  viewsbrunlogreport1_datsearch,viewsbrunlogreport1.id  viewsbrunlogreport1_id,viewsbrunlogreport1.type  viewsbrunlogreport1_type,viewsbrunlogreport1.valnumber  viewsbrunlogreport1_valnumber,viewsbrunlogreport1.fzh  viewsbrunlogreport1_fzh,viewsbrunlogreport1.kh  viewsbrunlogreport1_kh,viewsbrunlogreport1.state  viewsbrunlogreport1_state,KJ_DeviceAddress3.wz  KJ_DeviceAddress3_wz,KJ_DeviceAddress3.wzID  KJ_DeviceAddress3_wzID,KJ_DeviceType2.Name  KJ_DeviceType2_Name,KJ_DeviceType2.Xs1  KJ_DeviceType2_Xs1,KJ_DeviceType2.type  KJ_DeviceType2_type,KJ_DeviceType2.devID  KJ_DeviceType2_devID,KJ_DeviceType2.Xs2  KJ_DeviceType2_Xs2,KJ_DeviceType2.Xs3  KJ_DeviceType2_Xs3,BFT_EnumCode4.lngEnumValue  BFT_EnumCode4_lngEnumValue,BFT_EnumCode4.strEnumDisplay  BFT_EnumCode4_strEnumDisplay,BFT_EnumCode5.strEnumDisplay  BFT_EnumCode5_strEnumDisplay,BFT_EnumCode5.lngEnumValue  BFT_EnumCode5_lngEnumValue,(case KJ_DeviceType2.type when 1 then KJ_DeviceType2.Xs1 else \'\' end) dd  from    (select timer,point,wzid,devid,val,datsearch,id,type,valnumber,fzh,kh,state from viewsbrunlogreport) viewsbrunlogreport1 left join    (select wz,wzID from KJ_DeviceAddress) KJ_DeviceAddress3 on viewsbrunlogreport1.wzid=KJ_DeviceAddress3.wzID left join    (select Name,Xs1,type,devID,Xs2,Xs3 from KJ_DeviceType) KJ_DeviceType2 on viewsbrunlogreport1.devid=KJ_DeviceType2.devID left join    (select lngEnumValue,strEnumDisplay from BFT_EnumCode where EnumTypeID=4) BFT_EnumCode4 on viewsbrunlogreport1.type=BFT_EnumCode4.lngEnumValue left join    (select strEnumDisplay,lngEnumValue from BFT_EnumCode where EnumTypeID=8) BFT_EnumCode5 on viewsbrunlogreport1.state=BFT_EnumCode5.lngEnumValue where 1=1  and ! ( viewsbrunlogreport1.fzh = 0 AND viewsbrunlogreport1.kh = 0 AND viewsbrunlogreport1.point != \'000000\' )   order by viewsbrunlogreport1.timer Asc ,viewsbrunlogreport1.point Asc ','','按日期段','viewsbrunlogreport1_id','','',0,0,1,'list',1,0,'viewsbrunlogreport1_point,viewsbrunlogreport1_fzh,viewsbrunlogreport1_kh&&&$$$! ( viewsbrunlogreport1_fzh = 0 AND viewsbrunlogreport1_kh = 0 AND viewsbrunlogreport1_point != \'000000\' )'),(23,28,0,'select viewmcrunlogreport1.timer  viewmcrunlogreport1_timer,viewmcrunlogreport1.point  viewmcrunlogreport1_point,viewmcrunlogreport1.wzid  viewmcrunlogreport1_wzid,viewmcrunlogreport1.ssz  viewmcrunlogreport1_ssz,viewmcrunlogreport1.ID  viewmcrunlogreport1_ID,viewmcrunlogreport1.datsearch  viewmcrunlogreport1_datsearch,viewmcrunlogreport1.devid  viewmcrunlogreport1_devid,viewmcrunlogreport1.state  viewmcrunlogreport1_state,viewmcrunlogreport1.type  viewmcrunlogreport1_type,KJ_DeviceAddress3.wz  KJ_DeviceAddress3_wz,KJ_DeviceAddress3.wzID  KJ_DeviceAddress3_wzID,KJ_DeviceType2.Name  KJ_DeviceType2_Name,KJ_DeviceType2.Xs1  KJ_DeviceType2_Xs1,KJ_DeviceType2.devID  KJ_DeviceType2_devID,BFT_EnumCode4.strEnumDisplay  BFT_EnumCode4_strEnumDisplay,BFT_EnumCode4.lngEnumValue  BFT_EnumCode4_lngEnumValue,BFT_EnumCode5.strEnumDisplay  BFT_EnumCode5_strEnumDisplay,BFT_EnumCode5.lngEnumValue  BFT_EnumCode5_lngEnumValue,(case BFT_EnumCode5.strEnumDisplay \r\nwhen \'断线\' then \'-\' \r\nwhen \'设备状态未知\' then \'-\' \r\nelse  viewmcrunlogreport1.ssz end) Value1  from    (select timer,point,wzid,ssz,ID,datsearch,devid,state,type from viewmcrunlogreport) viewmcrunlogreport1 left join    (select wz,wzID from KJ_DeviceAddress) KJ_DeviceAddress3 on viewmcrunlogreport1.wzid=KJ_DeviceAddress3.wzID left join    (select Name,Xs1,devID from KJ_DeviceType) KJ_DeviceType2 on viewmcrunlogreport1.devid=KJ_DeviceType2.devID left join    (select strEnumDisplay,lngEnumValue from BFT_EnumCode where EnumTypeID=8) BFT_EnumCode4 on viewmcrunlogreport1.state=BFT_EnumCode4.lngEnumValue left join    (select strEnumDisplay,lngEnumValue from BFT_EnumCode where EnumTypeID=4) BFT_EnumCode5 on viewmcrunlogreport1.type=BFT_EnumCode5.lngEnumValue where 1=1   order by viewmcrunlogreport1.timer Asc ,viewmcrunlogreport1.point Asc ','','全部','viewmcrunlogreport1_ID','','',0,0,1,NULL,0,0,NULL),(24,29,0,'select BFT_operatelog1.UserName  BFT_operatelog1_UserName,BFT_operatelog1.LoginIP  BFT_operatelog1_LoginIP,BFT_operatelog1.OperationContent  BFT_operatelog1_OperationContent,BFT_operatelog1.CreateTime  BFT_operatelog1_CreateTime,BFT_operatelog1.Remark  BFT_operatelog1_Remark,BFT_operatelog1.OperateLogID  BFT_operatelog1_OperateLogID,BFT_operatelog1.Type  BFT_operatelog1_Type,BFT_EnumCode2.strEnumDisplay  BFT_EnumCode2_strEnumDisplay,BFT_EnumCode2.lngEnumValue  BFT_EnumCode2_lngEnumValue  from    (select UserName,LoginIP,OperationContent,CreateTime,Remark,OperateLogID,Type from BFT_operatelog) BFT_operatelog1 left join    (select strEnumDisplay,lngEnumValue from BFT_EnumCode where EnumTypeID=5) BFT_EnumCode2 on BFT_operatelog1.Type=BFT_EnumCode2.lngEnumValue where 1=1   order by BFT_operatelog1.CreateTime Asc ','','全部','BFT_operatelog1_OperateLogID','','',0,0,1,NULL,0,0,NULL),(28,32,0,'SELECT jc_defkzk1.point jc_defkzk1_point,jc_defkzk1.wzid jc_defkzk1_wzid,jc_defkzk1.devid jc_defkzk1_devid,jc_defkzk1.ID jc_defkzk1_ID,jc_defkzk1.Z2 jc_defkzk1_Z2,jc_defkzk1.Z6 jc_defkzk1_Z6,jc_defkzk1.Z3 jc_defkzk1_Z3,jc_defkzk1.Z7 jc_defkzk1_Z7,jc_defkzk1.Z4 jc_defkzk1_Z4,jc_defkzk1.Z8 jc_defkzk1_Z8,JC_WZ3.wz JC_WZ3_wz,JC_WZ3.wzID JC_WZ3_wzID,KJ_DeviceType2.NAME KJ_DeviceType2_Name,KJ_DeviceType2.devID KJ_DeviceType2_devID,KJ_DeviceType2.type KJ_DeviceType2_type,KJ_DeviceType2.Bz3 KJ_DeviceType2_Bz3 FROM (\nSELECT point,wzid,devid,ID,Z2,Z6,Z3,Z7,Z4,Z8 FROM jc_defkzk) jc_defkzk1 LEFT JOIN (\nSELECT wz,wzID FROM KJ_DeviceAddress) JC_WZ3 ON jc_defkzk1.wzid=JC_WZ3.wzID LEFT JOIN (\nSELECT NAME,devID,type,Bz3 FROM KJ_DeviceType) KJ_DeviceType2 ON jc_defkzk1.devid=KJ_DeviceType2.devID WHERE 1=1 AND (KJ_DeviceType2.type IN (1)) ORDER BY jc_defkzk1.point ASC ','','所有模拟量','jc_defkzk1_ID','','',0,0,2,NULL,0,0,NULL),(29,32,0,'SELECT jc_defkzk1.point jc_defkzk1_point,jc_defkzk1.devid jc_defkzk1_devid,jc_defkzk1.ID jc_defkzk1_ID,jc_defkzk1.wzid jc_defkzk1_wzid,KJ_DeviceType2.NAME KJ_DeviceType2_Name,KJ_DeviceType2.devID KJ_DeviceType2_devID,KJ_DeviceType2.type KJ_DeviceType2_type,KJ_DeviceType2.Pl1 KJ_DeviceType2_Pl1,KJ_DeviceType2.Pl2 KJ_DeviceType2_Pl2,KJ_DeviceType2.Pl3 KJ_DeviceType2_Pl3,KJ_DeviceType2.Bz3 KJ_DeviceType2_Bz3,JC_WZ3.wz JC_WZ3_wz,JC_WZ3.wzID JC_WZ3_wzID,(CASE WHEN KJ_DeviceType2.Pl1+KJ_DeviceType2.Pl2+KJ_DeviceType2.Pl3> 0 THEN \'是\' ELSE \'否\' END) blnBaoJin FROM (\nSELECT point,devid,ID,wzid FROM jc_defkzk) jc_defkzk1 LEFT JOIN (\nSELECT NAME,devID,type,Pl1,Pl2,Pl3,Bz3 FROM KJ_DeviceType) KJ_DeviceType2 ON jc_defkzk1.devid=KJ_DeviceType2.devID LEFT JOIN (\nSELECT wz,wzID FROM KJ_DeviceAddress) JC_WZ3 ON jc_defkzk1.wzid=JC_WZ3.wzID WHERE 1=1 AND (KJ_DeviceType2.type IN (2)) ORDER BY jc_defkzk1.point ASC ','','所有开关量','jc_defkzk1_ID','','',0,0,3,NULL,0,0,NULL),(32,34,0,'select viewkglkddayreport1.point  viewkglkddayreport1_point,viewkglkddayreport1.wzid  viewkglkddayreport1_wzid,viewkglkddayreport1.devid  viewkglkddayreport1_devid,viewkglkddayreport1.wz  viewkglkddayreport1_wz,viewkglkddayreport1.kdsumtime  viewkglkddayreport1_kdsumtime,viewkglkddayreport1.kdsumcount  viewkglkddayreport1_kdsumcount,viewkglkddayreport1.kdstate  viewkglkddayreport1_kdstate,viewkglkddayreport1.kdcursumtime  viewkglkddayreport1_kdcursumtime,viewkglkddayreport1.kdstime  viewkglkddayreport1_kdstime,viewkglkddayreport1.kdetime  viewkglkddayreport1_kdetime,viewkglkddayreport1.cs  viewkglkddayreport1_cs,viewkglkddayreport1.bz2  viewkglkddayreport1_bz2,viewkglkddayreport1.datsearch  viewkglkddayreport1_datsearch,viewkglkddayreport1.bid  viewkglkddayreport1_bid,viewkglkddayreport1.bz1  viewkglkddayreport1_bz1,KJ_DeviceAddress3.wz  KJ_DeviceAddress3_wz,KJ_DeviceAddress3.wzID  KJ_DeviceAddress3_wzID,KJ_DeviceType2.Name  KJ_DeviceType2_Name,KJ_DeviceType2.devID  KJ_DeviceType2_devID,KJ_DeviceType2.Xs1  KJ_DeviceType2_Xs1  from    (select point,wzid,devid,wz,kdsumtime,kdsumcount,kdstate,kdcursumtime,kdstime,kdetime,cs,bz2,datsearch,bid,bz1 from viewkglkddayreport) viewkglkddayreport1 left join    (select wz,wzID from KJ_DeviceAddress) KJ_DeviceAddress3 on viewkglkddayreport1.wzid=KJ_DeviceAddress3.wzID left join    (select Name,devID,Xs1 from KJ_DeviceType) KJ_DeviceType2 on viewkglkddayreport1.devid=KJ_DeviceType2.devID where 1=1  and viewkglkddayreport1.kdstate <> \'复电失败\'  and viewkglkddayreport1.kdstate not like  \'%正常%\'  and  (isnull(viewkglkddayreport1.kdsumcount,0)>0 )  order by viewkglkddayreport1.kdstime Asc ','','全部','viewkglkddayreport1_bid','','',0,0,1,NULL,1,0,'viewkglkddayreport1_kdstate&&&$$$viewkglkddayreport1_kdstate <> \'复电失败\'  and viewkglkddayreport1_kdstate not like  \'%正常%\''),(33,35,0,'select ViewMLLDayReport1.bid  ViewMLLDayReport1_bid,ViewMLLDayReport1.point  ViewMLLDayReport1_point,ViewMLLDayReport1.pjz  ViewMLLDayReport1_pjz,ViewMLLDayReport1.zdz  ViewMLLDayReport1_zdz,ViewMLLDayReport1.zdzs  ViewMLLDayReport1_zdzs,ViewMLLDayReport1.sumcountbybj  ViewMLLDayReport1_sumcountbybj,ViewMLLDayReport1.sumtimebybj  ViewMLLDayReport1_sumtimebybj,ViewMLLDayReport1.sumcountbydd  ViewMLLDayReport1_sumcountbydd,ViewMLLDayReport1.sumtimebydd  ViewMLLDayReport1_sumtimebydd,ViewMLLDayReport1.sumcountbykd  ViewMLLDayReport1_sumcountbykd,ViewMLLDayReport1.sumtimebykd  ViewMLLDayReport1_sumtimebykd,ViewMLLDayReport1.datsearch  ViewMLLDayReport1_datsearch,ViewMLLDayReport1.devid  ViewMLLDayReport1_devid,ViewMLLDayReport1.wzid  ViewMLLDayReport1_wzid,ViewMLLDayReport1.kh  ViewMLLDayReport1_kh,ViewMLLDayReport1.fzh  ViewMLLDayReport1_fzh,ViewMLLDayReport1.state  ViewMLLDayReport1_state,KJ_DeviceType2.Name  KJ_DeviceType2_Name,KJ_DeviceType2.Xs1  KJ_DeviceType2_Xs1,KJ_DeviceType2.devID  KJ_DeviceType2_devID,KJ_DeviceAddress3.wz  KJ_DeviceAddress3_wz,KJ_DeviceAddress3.wzID  KJ_DeviceAddress3_wzID  from    (select bid,point,pjz,zdz,zdzs,sumcountbybj,sumtimebybj,sumcountbydd,sumtimebydd,sumcountbykd,sumtimebykd,datsearch,devid,wzid,kh,fzh,state from ViewMLLDayReport) ViewMLLDayReport1 left join    (select Name,Xs1,devID from KJ_DeviceType) KJ_DeviceType2 on ViewMLLDayReport1.devid=KJ_DeviceType2.devID left join    (select wz,wzID from KJ_DeviceAddress) KJ_DeviceAddress3 on ViewMLLDayReport1.wzid=KJ_DeviceAddress3.wzID where 1=1   order by ViewMLLDayReport1.point Asc ','','全部','ViewMSum1_wzid','','',0,0,1,'list',1,0,NULL),(34,10,0,'SELECT ViewJC_BMonth1.point ViewJC_BMonth1_point,ViewJC_BMonth1.sumcount ViewJC_BMonth1_sumcount,ViewJC_BMonth1.bida ViewJC_BMonth1_bida,ViewJC_BMonth1.sumtime ViewJC_BMonth1_sumtime,ViewJC_BMonth1.stime ViewJC_BMonth1_stime,ViewJC_BMonth1.etime ViewJC_BMonth1_etime,ViewJC_BMonth1.cursumtime ViewJC_BMonth1_cursumtime,ViewJC_BMonth1.zdz ViewJC_BMonth1_zdz,ViewJC_BMonth1.zdzs ViewJC_BMonth1_zdzs,ViewJC_BMonth1.datsearch ViewJC_BMonth1_datsearch,ViewJC_BMonth1.bid ViewJC_BMonth1_bid,ViewJC_BMonth1.wzid ViewJC_BMonth1_wzid,ViewJC_BMonth1.state ViewJC_BMonth1_state,ViewJC_BMonth1.devid ViewJC_BMonth1_devid,ViewJC_BMonth1.cs ViewJC_BMonth1_cs,ViewJC_BMonth1.bz1 ViewJC_BMonth1_bz1,ViewJC_BMonth1.bz2 ViewJC_BMonth1_bz2,viewmnlbjmaxavgmaxtime2.zdz viewmnlbjmaxavgmaxtime2_zdz,viewmnlbjmaxavgmaxtime2.zdzs viewmnlbjmaxavgmaxtime2_zdzs,viewmnlbjmaxavgmaxtime2.pjz viewmnlbjmaxavgmaxtime2_pjz,viewmnlbjmaxavgmaxtime2.pointid viewmnlbjmaxavgmaxtime2_pointid,JC_WZ4.wz JC_WZ4_wz,JC_WZ4.wzID JC_WZ4_wzID,BFT_EnumCode5.strEnumDisplay BFT_EnumCode5_strEnumDisplay,BFT_EnumCode5.lngEnumValue BFT_EnumCode5_lngEnumValue,KJ_DeviceType3.NAME KJ_DeviceType3_Name,KJ_DeviceType3.Xs1 KJ_DeviceType3_Xs1,KJ_DeviceType3.devID KJ_DeviceType3_devID FROM (\nSELECT point,sumcount,bida,sumtime,stime,etime,cursumtime,zdz,zdzs,datsearch,bid,wzid,state,devid,cs,bz1,bz2 FROM ViewJC_BMonth) ViewJC_BMonth1 LEFT JOIN (\nSELECT zdz,zdzs,pjz,pointid FROM viewmnlbjmaxavgmaxtime) viewmnlbjmaxavgmaxtime2 ON ViewJC_BMonth1.bida=viewmnlbjmaxavgmaxtime2.pointid LEFT JOIN (\nSELECT wz,wzID FROM KJ_DeviceAddress) JC_WZ4 ON ViewJC_BMonth1.wzid=JC_WZ4.wzID LEFT JOIN (\nSELECT strEnumDisplay,lngEnumValue FROM BFT_EnumCode WHERE EnumTypeID=8) BFT_EnumCode5 ON ViewJC_BMonth1.state=BFT_EnumCode5.lngEnumValue LEFT JOIN (\nSELECT NAME,Xs1,devID FROM KJ_DeviceType) KJ_DeviceType3 ON ViewJC_BMonth1.devid=KJ_DeviceType3.devID WHERE 1=1 AND (ifnull(BFT_EnumCode5.strEnumDisplay,\'\')=\'标校\') AND (ifnull(KJ_DeviceType3.NAME,\'\') LIKE \'%瓦斯%\') ORDER BY ViewJC_BMonth1.point ASC,ViewJC_BMonth1.stime ASC ','','标校查询','ViewJC_BMonth1_bid','','',0,0,1,'list',0,0,NULL),(35,10,0,'SELECT ViewJC_BMonth1.point ViewJC_BMonth1_point,ViewJC_BMonth1.sumcount ViewJC_BMonth1_sumcount,ViewJC_BMonth1.bida ViewJC_BMonth1_bida,ViewJC_BMonth1.sumtime ViewJC_BMonth1_sumtime,ViewJC_BMonth1.stime ViewJC_BMonth1_stime,ViewJC_BMonth1.etime ViewJC_BMonth1_etime,ViewJC_BMonth1.cursumtime ViewJC_BMonth1_cursumtime,ViewJC_BMonth1.zdz ViewJC_BMonth1_zdz,ViewJC_BMonth1.zdzs ViewJC_BMonth1_zdzs,ViewJC_BMonth1.datsearch ViewJC_BMonth1_datsearch,ViewJC_BMonth1.bid ViewJC_BMonth1_bid,ViewJC_BMonth1.wzid ViewJC_BMonth1_wzid,ViewJC_BMonth1.state ViewJC_BMonth1_state,ViewJC_BMonth1.devid ViewJC_BMonth1_devid,ViewJC_BMonth1.pjz ViewJC_BMonth1_pjz,ViewJC_BMonth1.cs ViewJC_BMonth1_cs,ViewJC_BMonth1.bz1 ViewJC_BMonth1_bz1,ViewJC_BMonth1.bz2 ViewJC_BMonth1_bz2,viewmnlbjmaxavgmaxtime2.zdz viewmnlbjmaxavgmaxtime2_zdz,viewmnlbjmaxavgmaxtime2.zdzs viewmnlbjmaxavgmaxtime2_zdzs,viewmnlbjmaxavgmaxtime2.pjz viewmnlbjmaxavgmaxtime2_pjz,viewmnlbjmaxavgmaxtime2.pointid viewmnlbjmaxavgmaxtime2_pointid,JC_WZ4.wz JC_WZ4_wz,JC_WZ4.wzID JC_WZ4_wzID,BFT_EnumCode5.strEnumDisplay BFT_EnumCode5_strEnumDisplay,BFT_EnumCode5.lngEnumValue BFT_EnumCode5_lngEnumValue,KJ_DeviceType3.NAME KJ_DeviceType3_Name,KJ_DeviceType3.Xs1 KJ_DeviceType3_Xs1,KJ_DeviceType3.devID KJ_DeviceType3_devID FROM (\nSELECT point,sumcount,bida,sumtime,stime,etime,cursumtime,zdz,zdzs,datsearch,bid,wzid,state,devid,pjz,cs,bz1,bz2 FROM ViewJC_BMonth) ViewJC_BMonth1 LEFT JOIN (\nSELECT zdz,zdzs,pjz,pointid FROM viewmnlbjmaxavgmaxtime) viewmnlbjmaxavgmaxtime2 ON ViewJC_BMonth1.bida=viewmnlbjmaxavgmaxtime2.pointid LEFT JOIN (\nSELECT wz,wzID FROM KJ_DeviceAddress) JC_WZ4 ON ViewJC_BMonth1.wzid=JC_WZ4.wzID LEFT JOIN (\nSELECT strEnumDisplay,lngEnumValue FROM BFT_EnumCode WHERE EnumTypeID=8) BFT_EnumCode5 ON ViewJC_BMonth1.state=BFT_EnumCode5.lngEnumValue LEFT JOIN (\nSELECT NAME,Xs1,devID FROM KJ_DeviceType) KJ_DeviceType3 ON ViewJC_BMonth1.devid=KJ_DeviceType3.devID WHERE 1=1 AND (ViewJC_BMonth1.devid IN (21,22,23,24,25,26,27,231,235,236,237)) ORDER BY ViewJC_BMonth1.point ASC,ViewJC_BMonth1.stime ASC ','','瓦斯','ViewJC_BMonth1_bid','','',0,0,1,'list',0,0,NULL),(36,9,0,'SELECT ViewMLLDayReport1.bid ViewMLLDayReport1_bid,ViewMLLDayReport1.point ViewMLLDayReport1_point,ViewMLLDayReport1.pjz ViewMLLDayReport1_pjz,ViewMLLDayReport1.zdz ViewMLLDayReport1_zdz,ViewMLLDayReport1.zdzs ViewMLLDayReport1_zdzs,ViewMLLDayReport1.sumcountbybj ViewMLLDayReport1_sumcountbybj,ViewMLLDayReport1.sumtimebybj ViewMLLDayReport1_sumtimebybj,ViewMLLDayReport1.sumcountbydd ViewMLLDayReport1_sumcountbydd,ViewMLLDayReport1.sumtimebydd ViewMLLDayReport1_sumtimebydd,ViewMLLDayReport1.sumcountbykd ViewMLLDayReport1_sumcountbykd,ViewMLLDayReport1.sumtimebykd ViewMLLDayReport1_sumtimebykd,ViewMLLDayReport1.datsearch ViewMLLDayReport1_datsearch,ViewMLLDayReport1.devid ViewMLLDayReport1_devid,ViewMLLDayReport1.wzid ViewMLLDayReport1_wzid,ViewMLLDayReport1.kh ViewMLLDayReport1_kh,ViewMLLDayReport1.fzh ViewMLLDayReport1_fzh,ViewMLLDayReport1.state ViewMLLDayReport1_state,KJ_DeviceType2.NAME KJ_DeviceType2_Name,KJ_DeviceType2.Xs1 KJ_DeviceType2_Xs1,KJ_DeviceType2.devID KJ_DeviceType2_devID,JC_WZ3.wz JC_WZ3_wz,JC_WZ3.wzID JC_WZ3_wzID FROM (\nSELECT bid,point,pjz,zdz,zdzs,sumcountbybj,sumtimebybj,sumcountbydd,sumtimebydd,sumcountbykd,sumtimebykd,datsearch,devid,wzid,kh,fzh,state FROM ViewMLLDayReport) ViewMLLDayReport1 LEFT JOIN (\nSELECT NAME,Xs1,devID FROM KJ_DeviceType) KJ_DeviceType2 ON ViewMLLDayReport1.devid=KJ_DeviceType2.devID LEFT JOIN (\nSELECT wz,wzID FROM KJ_DeviceAddress) JC_WZ3 ON ViewMLLDayReport1.wzid=JC_WZ3.wzID WHERE 1=1 ORDER BY ViewMLLDayReport1.point ASC ','','瓦斯','ViewMSum1_wzid','','',0,0,1,'list',0,0,NULL),(37,10,0,'SELECT ViewJC_BMonth1.point ViewJC_BMonth1_point,ViewJC_BMonth1.sumcount ViewJC_BMonth1_sumcount,ViewJC_BMonth1.bida ViewJC_BMonth1_bida,ViewJC_BMonth1.sumtime ViewJC_BMonth1_sumtime,ViewJC_BMonth1.stime ViewJC_BMonth1_stime,ViewJC_BMonth1.etime ViewJC_BMonth1_etime,ViewJC_BMonth1.cursumtime ViewJC_BMonth1_cursumtime,ViewJC_BMonth1.zdz ViewJC_BMonth1_zdz,ViewJC_BMonth1.zdzs ViewJC_BMonth1_zdzs,ViewJC_BMonth1.datsearch ViewJC_BMonth1_datsearch,ViewJC_BMonth1.bid ViewJC_BMonth1_bid,ViewJC_BMonth1.wzid ViewJC_BMonth1_wzid,ViewJC_BMonth1.state ViewJC_BMonth1_state,ViewJC_BMonth1.devid ViewJC_BMonth1_devid,ViewJC_BMonth1.cs ViewJC_BMonth1_cs,ViewJC_BMonth1.bz1 ViewJC_BMonth1_bz1,ViewJC_BMonth1.bz2 ViewJC_BMonth1_bz2,viewmnlbjmaxavgmaxtime2.zdz viewmnlbjmaxavgmaxtime2_zdz,viewmnlbjmaxavgmaxtime2.zdzs viewmnlbjmaxavgmaxtime2_zdzs,viewmnlbjmaxavgmaxtime2.pjz viewmnlbjmaxavgmaxtime2_pjz,viewmnlbjmaxavgmaxtime2.pointid viewmnlbjmaxavgmaxtime2_pointid,JC_WZ4.wz JC_WZ4_wz,JC_WZ4.wzID JC_WZ4_wzID,BFT_EnumCode5.strEnumDisplay BFT_EnumCode5_strEnumDisplay,BFT_EnumCode5.lngEnumValue BFT_EnumCode5_lngEnumValue,KJ_DeviceType3.NAME KJ_DeviceType3_Name,KJ_DeviceType3.Xs1 KJ_DeviceType3_Xs1,KJ_DeviceType3.devID KJ_DeviceType3_devID FROM (\nSELECT point,sumcount,bida,sumtime,stime,etime,cursumtime,zdz,zdzs,datsearch,bid,wzid,state,devid,cs,bz1,bz2 FROM ViewJC_BMonth) ViewJC_BMonth1 LEFT JOIN (\nSELECT zdz,zdzs,pjz,pointid FROM viewmnlbjmaxavgmaxtime) viewmnlbjmaxavgmaxtime2 ON ViewJC_BMonth1.bida=viewmnlbjmaxavgmaxtime2.pointid LEFT JOIN (\nSELECT wz,wzID FROM KJ_DeviceAddress) JC_WZ4 ON ViewJC_BMonth1.wzid=JC_WZ4.wzID LEFT JOIN (\nSELECT strEnumDisplay,lngEnumValue FROM BFT_EnumCode WHERE EnumTypeID=8) BFT_EnumCode5 ON ViewJC_BMonth1.state=BFT_EnumCode5.lngEnumValue LEFT JOIN (\nSELECT NAME,Xs1,devID FROM KJ_DeviceType) KJ_DeviceType3 ON ViewJC_BMonth1.devid=KJ_DeviceType3.devID WHERE 1=1 AND (ifnull(BFT_EnumCode5.strEnumDisplay,\'\')=\'标校\') AND (ifnull(KJ_DeviceType3.NAME,\'\') LIKE \'%一氧化碳%\') ORDER BY ViewJC_BMonth1.point ASC,ViewJC_BMonth1.stime ASC ','','一氧化碳标校','ViewJC_BMonth1_bid','','',0,0,1,'list',0,0,NULL),(38,37,0,'select viewjc_llmonth1.point  viewjc_llmonth1_point,viewjc_llmonth1.FY  viewjc_llmonth1_FY,viewjc_llmonth1.WD  viewjc_llmonth1_WD,viewjc_llmonth1.WS  viewjc_llmonth1_WS,viewjc_llmonth1.CO  viewjc_llmonth1_CO,viewjc_llmonth1.yxsc  viewjc_llmonth1_yxsc,viewjc_llmonth1.GH  viewjc_llmonth1_GH,viewjc_llmonth1.GC  viewjc_llmonth1_GC,viewjc_llmonth1.GHL  viewjc_llmonth1_GHL,viewjc_llmonth1.GCL  viewjc_llmonth1_GCL,viewjc_llmonth1.BH  viewjc_llmonth1_BH,viewjc_llmonth1.BC  viewjc_llmonth1_BC,viewjc_llmonth1.BHL  viewjc_llmonth1_BHL,viewjc_llmonth1.BCL  viewjc_llmonth1_BCL,viewjc_llmonth1.Timer  viewjc_llmonth1_Timer,viewjc_llmonth1.PointID  viewjc_llmonth1_PointID,viewjc_llmonth1.By1  viewjc_llmonth1_By1,viewjc_llmonth1.sort  viewjc_llmonth1_sort,viewjc_llmonth1.datsearch  viewjc_llmonth1_datsearch,viewjc_llmonth1.ID  viewjc_llmonth1_ID,KJ_DeviceDefInfo2.ID  KJ_DeviceDefInfo2_ID,KJ_DeviceDefInfo2.pointid  KJ_DeviceDefInfo2_pointid,KJ_DeviceDefInfo2.wzid  KJ_DeviceDefInfo2_wzid,KJ_DeviceAddress4.wz  KJ_DeviceAddress4_wz,KJ_DeviceAddress4.wzID  KJ_DeviceAddress4_wzID,(case viewjc_llmonth1.By1 when \'-999\' then \'合计\' else viewjc_llmonth1.point end) xiaoji  from    (select point,FY,WD,WS,CO,yxsc,GH,GC,GHL,GCL,BH,BC,BHL,BCL,Timer,PointID,By1,sort,datsearch,ID from viewjc_llmonth) viewjc_llmonth1 left join    (select ID,pointid,wzid from KJ_DeviceDefInfo) KJ_DeviceDefInfo2 on viewjc_llmonth1.PointID=KJ_DeviceDefInfo2.pointid left join    (select wz,wzID from KJ_DeviceAddress) KJ_DeviceAddress4 on KJ_DeviceDefInfo2.wzid=KJ_DeviceAddress4.wzID where 1=1   order by viewjc_llmonth1.PointID Asc ,viewjc_llmonth1.Timer Asc ,viewjc_llmonth1.sort Asc ','','全部','KJ_DeviceDefInfo2_ID','','',0,0,1,NULL,0,0,NULL),(39,38,0,'select viewjc_lld1.point  viewjc_lld1_point,viewjc_lld1.FY  viewjc_lld1_FY,viewjc_lld1.WD  viewjc_lld1_WD,viewjc_lld1.WS  viewjc_lld1_WS,viewjc_lld1.CO  viewjc_lld1_CO,viewjc_lld1.yxsc  viewjc_lld1_yxsc,viewjc_lld1.GH  viewjc_lld1_GH,viewjc_lld1.GC  viewjc_lld1_GC,viewjc_lld1.GHL  viewjc_lld1_GHL,viewjc_lld1.GCL  viewjc_lld1_GCL,viewjc_lld1.BH  viewjc_lld1_BH,viewjc_lld1.ID  viewjc_lld1_ID,viewjc_lld1.BC  viewjc_lld1_BC,viewjc_lld1.BHL  viewjc_lld1_BHL,viewjc_lld1.BCL  viewjc_lld1_BCL,viewjc_lld1.timer  viewjc_lld1_timer,viewjc_lld1.By1  viewjc_lld1_By1,viewjc_lld1.sort  viewjc_lld1_sort,viewjc_lld1.datsearch  viewjc_lld1_datsearch,viewjc_lld1.PointID  viewjc_lld1_PointID,KJ_DeviceDefInfo2.ID  KJ_DeviceDefInfo2_ID,KJ_DeviceDefInfo2.pointid  KJ_DeviceDefInfo2_pointid,KJ_DeviceDefInfo2.wzid  KJ_DeviceDefInfo2_wzid,KJ_DeviceAddress4.wz  KJ_DeviceAddress4_wz,KJ_DeviceAddress4.wzID  KJ_DeviceAddress4_wzID,(case   viewjc_lld1.By1 when \'-999\'  then \'合计\' else viewjc_lld1.point  end) xiaoji  from    (select point,FY,WD,WS,CO,yxsc,GH,GC,GHL,GCL,BH,ID,BC,BHL,BCL,timer,By1,sort,datsearch,PointID from viewjc_lld) viewjc_lld1 left join    (select ID,pointid,wzid from KJ_DeviceDefInfo) KJ_DeviceDefInfo2 on viewjc_lld1.PointID=KJ_DeviceDefInfo2.pointid left join    (select wz,wzID from KJ_DeviceAddress) KJ_DeviceAddress4 on KJ_DeviceDefInfo2.wzid=KJ_DeviceAddress4.wzID where 1=1   order by viewjc_lld1.PointID Asc ,viewjc_lld1.timer Asc ,viewjc_lld1.sort Asc ','','全部','viewjc_lld1_ID','','',0,0,1,NULL,0,0,NULL),(41,39,0,'select viewjc_llm1.point  viewjc_llm1_point,viewjc_llm1.FY  viewjc_llm1_FY,viewjc_llm1.WD  viewjc_llm1_WD,viewjc_llm1.WS  viewjc_llm1_WS,viewjc_llm1.CO  viewjc_llm1_CO,viewjc_llm1.yxsc  viewjc_llm1_yxsc,viewjc_llm1.GH  viewjc_llm1_GH,viewjc_llm1.GC  viewjc_llm1_GC,viewjc_llm1.GHL  viewjc_llm1_GHL,viewjc_llm1.GCL  viewjc_llm1_GCL,viewjc_llm1.BH  viewjc_llm1_BH,viewjc_llm1.BC  viewjc_llm1_BC,viewjc_llm1.BHL  viewjc_llm1_BHL,viewjc_llm1.BCL  viewjc_llm1_BCL,viewjc_llm1.timer  viewjc_llm1_timer,viewjc_llm1.PointID  viewjc_llm1_PointID,viewjc_llm1.By1  viewjc_llm1_By1,viewjc_llm1.sort  viewjc_llm1_sort,viewjc_llm1.datsearch  viewjc_llm1_datsearch,viewjc_llm1.ID  viewjc_llm1_ID,KJ_DeviceDefInfo2.wzid  KJ_DeviceDefInfo2_wzid,KJ_DeviceDefInfo2.ID  KJ_DeviceDefInfo2_ID,KJ_DeviceDefInfo2.pointid  KJ_DeviceDefInfo2_pointid,KJ_DeviceAddress4.wz  KJ_DeviceAddress4_wz,KJ_DeviceAddress4.wzID  KJ_DeviceAddress4_wzID,(case viewjc_llm1.By1 when \'-999\' then \'合计\' else viewjc_llm1.point end) xiaoji,(date_format(viewjc_llm1.timer,\'%Y-%m\')) shijian  from    (select point,FY,WD,WS,CO,yxsc,GH,GC,GHL,GCL,BH,BC,BHL,BCL,timer,PointID,By1,sort,datsearch,ID from viewjc_llm) viewjc_llm1 left join    (select wzid,ID,pointid from KJ_DeviceDefInfo) KJ_DeviceDefInfo2 on viewjc_llm1.PointID=KJ_DeviceDefInfo2.pointid left join    (select wz,wzID from KJ_DeviceAddress) KJ_DeviceAddress4 on KJ_DeviceDefInfo2.wzid=KJ_DeviceAddress4.wzID where 1=1   order by viewjc_llm1.PointID Asc ,shijian Asc ,viewjc_llm1.sort Asc ','','全部','viewjc_llm1_ID','','',0,0,1,NULL,0,0,NULL),(42,40,0,'select viewjc_lly1.point  viewjc_lly1_point,viewjc_lly1.FY  viewjc_lly1_FY,viewjc_lly1.WD  viewjc_lly1_WD,viewjc_lly1.WS  viewjc_lly1_WS,viewjc_lly1.CO  viewjc_lly1_CO,viewjc_lly1.yxsc  viewjc_lly1_yxsc,viewjc_lly1.GH  viewjc_lly1_GH,viewjc_lly1.GC  viewjc_lly1_GC,viewjc_lly1.GHL  viewjc_lly1_GHL,viewjc_lly1.GCL  viewjc_lly1_GCL,viewjc_lly1.BH  viewjc_lly1_BH,viewjc_lly1.BC  viewjc_lly1_BC,viewjc_lly1.BHL  viewjc_lly1_BHL,viewjc_lly1.BCL  viewjc_lly1_BCL,viewjc_lly1.timer  viewjc_lly1_timer,viewjc_lly1.By1  viewjc_lly1_By1,viewjc_lly1.sort  viewjc_lly1_sort,viewjc_lly1.datsearch  viewjc_lly1_datsearch,viewjc_lly1.PointID  viewjc_lly1_PointID,viewjc_lly1.ID  viewjc_lly1_ID,KJ_DeviceDefInfo2.ID  KJ_DeviceDefInfo2_ID,KJ_DeviceDefInfo2.pointid  KJ_DeviceDefInfo2_pointid,KJ_DeviceDefInfo2.wzid  KJ_DeviceDefInfo2_wzid,KJ_DeviceAddress4.wz  KJ_DeviceAddress4_wz,KJ_DeviceAddress4.wzID  KJ_DeviceAddress4_wzID,(case viewjc_lly1.By1 when \'-999\' then \'合计\' else viewjc_lly1.point end) xiaoji,(date_format(viewjc_lly1.timer,\'%Y\')) shijian  from    (select point,FY,WD,WS,CO,yxsc,GH,GC,GHL,GCL,BH,BC,BHL,BCL,timer,By1,sort,datsearch,PointID,ID from viewjc_lly) viewjc_lly1 left join    (select ID,pointid,wzid from KJ_DeviceDefInfo) KJ_DeviceDefInfo2 on viewjc_lly1.PointID=KJ_DeviceDefInfo2.pointid left join    (select wz,wzID from KJ_DeviceAddress) KJ_DeviceAddress4 on KJ_DeviceDefInfo2.wzid=KJ_DeviceAddress4.wzID where 1=1   order by viewjc_lly1.PointID Asc ,shijian Asc ,viewjc_lly1.sort Asc ','','全部','viewjc_lly1_ID','','',0,0,1,NULL,0,0,NULL),(43,41,0,'select viewsbrunlogreport1.bz1  viewsbrunlogreport1_bz1,viewsbrunlogreport1.point  viewsbrunlogreport1_point,viewsbrunlogreport1.timer  viewsbrunlogreport1_timer,viewsbrunlogreport1.datsearch  viewsbrunlogreport1_datsearch,viewsbrunlogreport1.wzid  viewsbrunlogreport1_wzid,viewsbrunlogreport1.id  viewsbrunlogreport1_id,viewsbrunlogreport1.state  viewsbrunlogreport1_state,viewsbrunlogreport1.fzh  viewsbrunlogreport1_fzh,viewsbrunlogreport1.kh  viewsbrunlogreport1_kh,KJ_DeviceAddress3.wz  KJ_DeviceAddress3_wz,KJ_DeviceAddress3.wzID  KJ_DeviceAddress3_wzID,BFT_EnumCode5.strEnumDisplay  BFT_EnumCode5_strEnumDisplay,BFT_EnumCode5.lngEnumValue  BFT_EnumCode5_lngEnumValue  from    (select bz1,point,timer,datsearch,wzid,id,state,fzh,kh from viewsbrunlogreport) viewsbrunlogreport1 left join    (select wz,wzID from KJ_DeviceAddress) KJ_DeviceAddress3 on viewsbrunlogreport1.wzid=KJ_DeviceAddress3.wzID left join    (select strEnumDisplay,lngEnumValue from BFT_EnumCode where EnumTypeID=8) BFT_EnumCode5 on viewsbrunlogreport1.state=BFT_EnumCode5.lngEnumValue where 1=1  and viewsbrunlogreport1.fzh=0 and viewsbrunlogreport1.kh=0 and viewsbrunlogreport1.point!=\'000000\'   order by viewsbrunlogreport1.timer Asc ,viewsbrunlogreport1.point Asc ','','全部','viewsbrunlogreport1_id','','',0,0,1,NULL,0,0,'viewsbrunlogreport1_point,viewsbrunlogreport1_fzh,viewsbrunlogreport1_kh&&&$$$viewsbrunlogreport1_fzh=0 and viewsbrunlogreport1_kh=0 and viewsbrunlogreport1_point!=\'000000\''),(44,42,0,'select ViewJC_KGStateMonth1.point  ViewJC_KGStateMonth1_point,ViewJC_KGStateMonth1.devid  ViewJC_KGStateMonth1_devid,ViewJC_KGStateMonth1.sumtime  ViewJC_KGStateMonth1_sumtime,ViewJC_KGStateMonth1.ssz  ViewJC_KGStateMonth1_ssz,ViewJC_KGStateMonth1.sumcount  ViewJC_KGStateMonth1_sumcount,ViewJC_KGStateMonth1.pid  ViewJC_KGStateMonth1_pid,ViewJC_KGStateMonth1.datSearch  ViewJC_KGStateMonth1_datSearch,ViewJC_KGStateMonth1.wzid  ViewJC_KGStateMonth1_wzid,KJ_DeviceType2.Name  KJ_DeviceType2_Name,KJ_DeviceType2.devID  KJ_DeviceType2_devID,KJ_DeviceAddress3.wz  KJ_DeviceAddress3_wz,KJ_DeviceAddress3.wzID  KJ_DeviceAddress3_wzID  from    (select point,devid,sumtime,ssz,sumcount,pid,datSearch,wzid from ViewJC_KGStateMonth) ViewJC_KGStateMonth1 left join    (select Name,devID from KJ_DeviceType) KJ_DeviceType2 on ViewJC_KGStateMonth1.devid=KJ_DeviceType2.devID left join    (select wz,wzID from KJ_DeviceAddress) KJ_DeviceAddress3 on ViewJC_KGStateMonth1.wzid=KJ_DeviceAddress3.wzID where 1=1 ','','全部','ViewJC_KGStateMonth1_pid','','',0,0,1,NULL,0,0,NULL),(45,43,0,'select KJ_DeviceDefInfo1.point  KJ_DeviceDefInfo1_point,KJ_DeviceDefInfo1.wzid  KJ_DeviceDefInfo1_wzid,KJ_DeviceDefInfo1.devid  KJ_DeviceDefInfo1_devid,KJ_DeviceDefInfo1.bz13  KJ_DeviceDefInfo1_bz13,KJ_DeviceDefInfo1.bz15  KJ_DeviceDefInfo1_bz15,KJ_DeviceDefInfo1.ID  KJ_DeviceDefInfo1_ID,KJ_DeviceDefInfo1.pointid  KJ_DeviceDefInfo1_pointid,KJ_DeviceDefInfo1.activity  KJ_DeviceDefInfo1_activity,KJ_DeviceAddress3.wz  KJ_DeviceAddress3_wz,KJ_DeviceAddress3.wzID  KJ_DeviceAddress3_wzID,KJ_DeviceType2.Name  KJ_DeviceType2_Name,KJ_DeviceType2.Bz4  KJ_DeviceType2_Bz4,KJ_DeviceType2.bz7  KJ_DeviceType2_bz7,KJ_DeviceType2.bz5  KJ_DeviceType2_bz5,KJ_DeviceType2.bz6  KJ_DeviceType2_bz6,KJ_DeviceType2.devID  KJ_DeviceType2_devID,BFT_EnumCode6.strEnumDisplay  BFT_EnumCode6_strEnumDisplay,BFT_EnumCode6.lngEnumValue  BFT_EnumCode6_lngEnumValue,(case\r\nwhen KJ_DeviceDefInfo1.bz13 is null or KJ_DeviceDefInfo1.bz13=\'\'\r\nthen \'-\'\r\nelse KJ_DeviceDefInfo1.bz13\r\nend) wybm,(case\r\nwhen KJ_DeviceDefInfo1.bz15 is null or KJ_DeviceDefInfo1.bz15=\'\'\r\nthen \'-\'\r\nelse KJ_DeviceDefInfo1.bz15\r\nend) ccdate,(CONCAT(KJ_DeviceType2.bz5,\'年\')) ddfdeee,(CONCAT(KJ_DeviceType2.bz6,\'年\')) bddds,(case\r\nwhen KJ_DeviceDefInfo1.bz15 is null or KJ_DeviceDefInfo1.bz15=\'\'\r\nthen \'-\'\r\nelse DATE_ADD(KJ_DeviceDefInfo1.bz15,INTERVAL KJ_DeviceType2.bz5 YEAR)\r\nend) bz5end,(case\r\nwhen KJ_DeviceDefInfo1.bz15 is null or KJ_DeviceDefInfo1.bz15=\'\'\r\nthen \'-\'\r\nelse DATE_ADD(KJ_DeviceDefInfo1.bz15,INTERVAL KJ_DeviceType2.bz6 YEAR)\r\nend) ddfd,(case \r\nwhen KJ_DeviceDefInfo1.bz15 is null or KJ_DeviceDefInfo1.bz15=\'\'\r\nthen \'-\'\r\nelse \r\n    case \r\n    when now() >  DATE_ADD(KJ_DeviceDefInfo1.bz15,INTERVAL KJ_DeviceType2.bz5 YEAR)\r\n    then \'是\' \r\n    else \'否\' \r\n    end\r\nend) test,(case \r\nwhen KJ_DeviceDefInfo1.bz15 is null or KJ_DeviceDefInfo1.bz15=\'\'\r\nthen \'-\'\r\nelse \r\n    case \r\n    when now() >  DATE_ADD(KJ_DeviceDefInfo1.bz15,INTERVAL KJ_DeviceType2.bz6 YEAR)\r\n    then \'是\' \r\n    else \'否\' \r\n    end\r\nend) afdfd  from    (select point,wzid,devid,bz13,bz15,ID,pointid,activity from KJ_DeviceDefInfo) KJ_DeviceDefInfo1 left join    (select wz,wzID from KJ_DeviceAddress) KJ_DeviceAddress3 on KJ_DeviceDefInfo1.wzid=KJ_DeviceAddress3.wzID left join    (select Name,Bz4,bz7,bz5,bz6,devID from KJ_DeviceType) KJ_DeviceType2 on KJ_DeviceDefInfo1.devid=KJ_DeviceType2.devID left join    (select strEnumDisplay,lngEnumValue from BFT_EnumCode where EnumTypeID=3) BFT_EnumCode6 on KJ_DeviceType2.Bz4=BFT_EnumCode6.lngEnumValue where 1=1  and  (isnull(KJ_DeviceDefInfo1.activity,\'\')=\'1\' )  order by KJ_DeviceDefInfo1.point Asc ','','全部','KJ_DeviceDefInfo1_ID,KJ_DeviceDefInfo1_pointid','','',0,0,1,NULL,0,0,NULL),(46,45,0,'select viewjc_devtj1.bz4  viewjc_devtj1_bz4,viewjc_devtj1.sumcoumt  viewjc_devtj1_sumcoumt,viewjc_devtj1.sumzycount  viewjc_devtj1_sumzycount,viewjc_devtj1.sumkccount  viewjc_devtj1_sumkccount,viewjc_devtj1.sumoveryxcount  viewjc_devtj1_sumoveryxcount,viewjc_devtj1.sumoverzbcount  viewjc_devtj1_sumoverzbcount,viewjc_devtj1.devid  viewjc_devtj1_devid,BFT_EnumCode2.strEnumDisplay  BFT_EnumCode2_strEnumDisplay,BFT_EnumCode2.lngEnumValue  BFT_EnumCode2_lngEnumValue  from    (select bz4,sumcoumt,sumzycount,sumkccount,sumoveryxcount,sumoverzbcount,devid from viewjc_devtj) viewjc_devtj1 left join    (select strEnumDisplay,lngEnumValue from BFT_EnumCode where EnumTypeID=3) BFT_EnumCode2 on viewjc_devtj1.bz4=BFT_EnumCode2.lngEnumValue where 1=1  and  (isnull(BFT_EnumCode2.strEnumDisplay,\'\')<>\'\' )','','全部','viewjc_devtj1_devid','','',0,0,1,NULL,0,0,NULL),(68,86,0,'SELECT Sum(BFT_User1.UserName) BFT_User1_UserName,BFT_User1.PASSWORD BFT_User1_Password,BFT_User1.UserCode BFT_User1_UserCode,BFT_User1.CreateName BFT_User1_CreateName,BFT_User1.LoginCount BFT_User1_LoginCount,BFT_User1.UserType BFT_User1_UserType FROM (\nSELECT PASSWORD,UserID,UserCode,UserName,CreateName,LoginCount,UserType FROM BFT_User) BFT_User1 WHERE 1=1 AND (ifnull(BFT_User1.UserName,\'\')> \'2\') GROUP BY BFT_User1.PASSWORD,BFT_User1.UserCode,BFT_User1.CreateName,BFT_User1.LoginCount,BFT_User1.UserType ORDER BY BFT_User1.UserName ASC ','','2221','BFT_User1_UserID','','',0,0,1,'',1,0,''),(69,32,0,'select jc_defkzk1.point  jc_defkzk1_point,jc_defkzk1.ID  jc_defkzk1_ID,jc_defkzk1.wzid  jc_defkzk1_wzid,jc_defkzk1.Z2  jc_defkzk1_Z2,jc_defkzk1.Z3  jc_defkzk1_Z3,jc_defkzk1.Z4  jc_defkzk1_Z4,jc_defkzk1.Z6  jc_defkzk1_Z6,jc_defkzk1.remark  jc_defkzk1_remark,jc_defkzk1.devid  jc_defkzk1_devid,KJ_DeviceAddress3.wz  KJ_DeviceAddress3_wz,KJ_DeviceAddress3.wzID  KJ_DeviceAddress3_wzID,KJ_DeviceType2.Name  KJ_DeviceType2_Name,KJ_DeviceType2.devID  KJ_DeviceType2_devID,KJ_DeviceType2.Bz3  KJ_DeviceType2_Bz3,KJ_DeviceType2.type  KJ_DeviceType2_type,KJ_DeviceType2.Bz4  KJ_DeviceType2_Bz4,BFT_EnumCode7.strEnumDisplay  BFT_EnumCode7_strEnumDisplay,BFT_EnumCode7.lngEnumValue  BFT_EnumCode7_lngEnumValue  from    (select point,ID,wzid,Z2,Z3,Z4,Z6,remark,devid from jc_defkzk) jc_defkzk1 left join    (select wz,wzID from KJ_DeviceAddress) KJ_DeviceAddress3 on jc_defkzk1.wzid=KJ_DeviceAddress3.wzID left join    (select Name,devID,Bz3,type,Bz4 from KJ_DeviceType) KJ_DeviceType2 on jc_defkzk1.devid=KJ_DeviceType2.devID left join    (select strEnumDisplay,lngEnumValue from BFT_EnumCode where EnumTypeID=3) BFT_EnumCode7 on KJ_DeviceType2.Bz4=BFT_EnumCode7.lngEnumValue where 1=1   order by jc_defkzk1.point Asc ','','所有设备','jc_defkzk1_ID','','',0,0,1,NULL,1,0,''),(71,47,0,'select viewkdstatereport1.point  viewkdstatereport1_point,viewkdstatereport1.devid  viewkdstatereport1_devid,viewkdstatereport1.wz  viewkdstatereport1_wz,viewkdstatereport1.wzid  viewkdstatereport1_wzid,viewkdstatereport1.kdsumcount  viewkdstatereport1_kdsumcount,viewkdstatereport1.kdsumtme  viewkdstatereport1_kdsumtme,viewkdstatereport1.kdcursumtime  viewkdstatereport1_kdcursumtime,viewkdstatereport1.kdstime  viewkdstatereport1_kdstime,viewkdstatereport1.kdetime  viewkdstatereport1_kdetime,viewkdstatereport1.cs  viewkdstatereport1_cs,viewkdstatereport1.bz2  viewkdstatereport1_bz2,viewkdstatereport1.state  viewkdstatereport1_state,viewkdstatereport1.toid  viewkdstatereport1_toid,viewkdstatereport1.kdssz  viewkdstatereport1_kdssz,viewkdstatereport1.kdstate  viewkdstatereport1_kdstate,viewkdstatereport1.bz1  viewkdstatereport1_bz1,viewkdstatereport1.type  viewkdstatereport1_type,viewkdstatereport1.datsearch  viewkdstatereport1_datsearch,KJ_DeviceType2.Name  KJ_DeviceType2_Name,KJ_DeviceType2.Xs1  KJ_DeviceType2_Xs1,KJ_DeviceType2.type  KJ_DeviceType2_type,KJ_DeviceType2.devID  KJ_DeviceType2_devID,KJ_DeviceAddress3.wz  KJ_DeviceAddress3_wz,KJ_DeviceAddress3.wzID  KJ_DeviceAddress3_wzID,BFT_EnumCode4.strEnumDisplay  BFT_EnumCode4_strEnumDisplay,BFT_EnumCode4.lngEnumValue  BFT_EnumCode4_lngEnumValue  from    (select point,devid,wz,wzid,kdsumcount,kdsumtme,kdcursumtime,kdstime,kdetime,cs,bz2,state,toid,kdssz,kdstate,bz1,type,datsearch from viewkdstatereport) viewkdstatereport1 left join    (select Name,Xs1,type,devID from KJ_DeviceType) KJ_DeviceType2 on viewkdstatereport1.devid=KJ_DeviceType2.devID left join    (select wz,wzID from KJ_DeviceAddress) KJ_DeviceAddress3 on viewkdstatereport1.wzid=KJ_DeviceAddress3.wzID left join    (select strEnumDisplay,lngEnumValue from BFT_EnumCode where EnumTypeID=8) BFT_EnumCode4 on viewkdstatereport1.state=BFT_EnumCode4.lngEnumValue where 1=1  and viewkdstatereport1.kdstate not like  \'%正常%\'  and  (isnull(viewkdstatereport1.type,0)<>30 ) and  (KJ_DeviceType2.type in (1) ) and  (isnull(BFT_EnumCode4.strEnumDisplay,\'\')<>\'\' )  order by viewkdstatereport1.kdstime Asc ','','全部','KJ_DeviceType2_devID','','',0,0,1,NULL,1,0,'viewkdstatereport1_kdstate&&&$$$viewkdstatereport1_kdstate not like  \'%正常%\''),(72,19,0,'SELECT ViewKGLBJDDDayReport1.point ViewKGLBJDDDayReport1_point,ViewKGLBJDDDayReport1.statename ViewKGLBJDDDayReport1_statename,ViewKGLBJDDDayReport1.sumcount ViewKGLBJDDDayReport1_sumcount,ViewKGLBJDDDayReport1.sumtime ViewKGLBJDDDayReport1_sumtime,ViewKGLBJDDDayReport1.stime ViewKGLBJDDDayReport1_stime,ViewKGLBJDDDayReport1.etime ViewKGLBJDDDayReport1_etime,ViewKGLBJDDDayReport1.cursumtime ViewKGLBJDDDayReport1_cursumtime,ViewKGLBJDDDayReport1.wz ViewKGLBJDDDayReport1_wz,ViewKGLBJDDDayReport1.kdstate ViewKGLBJDDDayReport1_kdstate,ViewKGLBJDDDayReport1.kdstime ViewKGLBJDDDayReport1_kdstime,ViewKGLBJDDDayReport1.kdetime ViewKGLBJDDDayReport1_kdetime,ViewKGLBJDDDayReport1.kdcursumtime ViewKGLBJDDDayReport1_kdcursumtime,ViewKGLBJDDDayReport1.bid ViewKGLBJDDDayReport1_bid,ViewKGLBJDDDayReport1.datsearch ViewKGLBJDDDayReport1_datsearch,ViewKGLBJDDDayReport1.isalarm ViewKGLBJDDDayReport1_isalarm,ViewKGLBJDDDayReport1.wzid ViewKGLBJDDDayReport1_wzid,ViewKGLBJDDDayReport1.kzk ViewKGLBJDDDayReport1_kzk,ViewKGLBJDDDayReport1.cs ViewKGLBJDDDayReport1_cs,ViewKGLBJDDDayReport1.bz1 ViewKGLBJDDDayReport1_bz1,ViewKGLBJDDDayReport1.bz2 ViewKGLBJDDDayReport1_bz2,JC_WZ3.wz JC_WZ3_wz,JC_WZ3.wzID JC_WZ3_wzID,(CASE WHEN ViewKGLBJDDDayReport1.kdstate LIKE \'%成功%\' THEN ViewKGLBJDDDayReport1.stime ELSE ViewKGLBJDDDayReport1.kdstime END) kdstime2,(CASE WHEN ViewKGLBJDDDayReport1.kdstate LIKE \'%成功%\' THEN ViewKGLBJDDDayReport1.etime ELSE ViewKGLBJDDDayReport1.kdetime END) kdetime2,(CASE WHEN ViewKGLBJDDDayReport1.kdstate LIKE \'%成功%\' THEN ViewKGLBJDDDayReport1.cursumtime ELSE ViewKGLBJDDDayReport1.kdcursumtime END) kdcursumtime2 FROM (\nSELECT point,statename,sumcount,sumtime,stime,etime,cursumtime,wz,kdstate,kdstime,kdetime,kdcursumtime,bid,datsearch,isalarm,wzid,kzk,cs,bz1,bz2 FROM ViewKGLBJDDDayReport) ViewKGLBJDDDayReport1 LEFT JOIN (\nSELECT wz,wzID FROM KJ_DeviceAddress) JC_WZ3 ON ViewKGLBJDDDayReport1.wzid=JC_WZ3.wzID WHERE 1=1 AND length(ViewKGLBJDDDayReport1.kzk)> 0 AND (ifnull(ViewKGLBJDDDayReport1.kdstate,\'\')<> \'复电失败\') ORDER BY ViewKGLBJDDDayReport1.stime ASC ','','断电','ViewKGLBJDDDayReport1_bid','','',0,0,1,NULL,0,0,'ViewKGLBJDDDayReport1_kzk&&&$$$length(ViewKGLBJDDDayReport1_kzk)>0'),(74,49,0,'select BFT_Userrole1.UserID  BFT_Userrole1_UserID,BFT_Userrole1.RoleID  BFT_Userrole1_RoleID,BFT_Userrole1.UserRoleID  BFT_Userrole1_UserRoleID,BFT_User2.UserCode  BFT_User2_UserCode,BFT_User2.UserName  BFT_User2_UserName,BFT_User2.DeptCode  BFT_User2_DeptCode,BFT_User2.CreateName  BFT_User2_CreateName,BFT_User2.CreateTime  BFT_User2_CreateTime,BFT_User2.ContactPhone  BFT_User2_ContactPhone,BFT_User2.UserFlag  BFT_User2_UserFlag,BFT_User2.UserID  BFT_User2_UserID,BFT_Role3.RoleName  BFT_Role3_RoleName,BFT_Role3.RoleID  BFT_Role3_RoleID  from    (select UserID,RoleID,UserRoleID from BFT_userrole) BFT_Userrole1 inner join    (select UserCode,UserName,DeptCode,CreateName,CreateTime,ContactPhone,UserFlag,UserID from BFT_User) BFT_User2 on BFT_Userrole1.UserID=BFT_User2.UserID left join    (select RoleName,RoleID from BFT_Role) BFT_Role3 on BFT_Userrole1.RoleID=BFT_Role3.RoleID where 1=1   order by BFT_User2.CreateTime Desc ,BFT_User2.UserCode Asc ','','全部','BFT_User2_UserID','','',0,0,1,NULL,0,0,NULL),(76,51,0,'select viewmnldaysavg1.point  viewmnldaysavg1_point,viewmnldaysavg1.wz  viewmnldaysavg1_wz,viewmnldaysavg1.name  viewmnldaysavg1_name,viewmnldaysavg1.pjz  viewmnldaysavg1_pjz,viewmnldaysavg1.zdz  viewmnldaysavg1_zdz,viewmnldaysavg1.zxz  viewmnldaysavg1_zxz,viewmnldaysavg1.datsearch  viewmnldaysavg1_datsearch,viewmnldaysavg1.PointID  viewmnldaysavg1_PointID  from    (select point,wz,name,pjz,zdz,zxz,datsearch,PointID from viewmnldaysavg) viewmnldaysavg1 where 1=1 ','','全部','viewmnldaysavg1_PointID','','',0,0,1,NULL,0,0,NULL),(77,52,0,'select viewmnlbx1.point  viewmnlbx1_point,viewmnlbx1.pointid  viewmnlbx1_pointid,viewmnlbx1.devid  viewmnlbx1_devid,viewmnlbx1.stime  viewmnlbx1_stime,viewmnlbx1.etime  viewmnlbx1_etime,viewmnlbx1.sumtime  viewmnlbx1_sumtime,viewmnlbx1.wz  viewmnlbx1_wz,viewmnlbx1.id  viewmnlbx1_id,viewmnlbx1.kdstate  viewmnlbx1_kdstate,viewmnlbx1.datsearch  viewmnlbx1_datsearch,viewmnlbx1.ida  viewmnlbx1_ida,KJ_DeviceDefInfo2.wzid  KJ_DeviceDefInfo2_wzid,KJ_DeviceDefInfo2.ID  KJ_DeviceDefInfo2_ID,KJ_DeviceDefInfo2.pointid  KJ_DeviceDefInfo2_pointid,KJ_DeviceAddress5.wz  KJ_DeviceAddress5_wz,KJ_DeviceAddress5.wzID  KJ_DeviceAddress5_wzID,KJ_DeviceType3.Name  KJ_DeviceType3_Name,KJ_DeviceType3.devID  KJ_DeviceType3_devID,(\'1.5\') bzqtnd  from    (select point,pointid,devid,stime,etime,sumtime,wz,id,kdstate,datsearch,ida from viewmnlbx) viewmnlbx1 left join    (select wzid,ID,pointid from KJ_DeviceDefInfo) KJ_DeviceDefInfo2 on viewmnlbx1.pointid=KJ_DeviceDefInfo2.pointid left join    (select wz,wzID from KJ_DeviceAddress) KJ_DeviceAddress5 on KJ_DeviceDefInfo2.wzid=KJ_DeviceAddress5.wzID left join    (select Name,devID from KJ_DeviceType) KJ_DeviceType3 on viewmnlbx1.devid=KJ_DeviceType3.devID where 1=1 ','','全部','KJ_DeviceDefInfo2_ID','','',0,0,1,NULL,0,0,NULL),(78,53,0,'select viewmnlbjddmonth1.point  viewmnlbjddmonth1_point,viewmnlbjddmonth1.wz  viewmnlbjddmonth1_wz,viewmnlbjddmonth1.devname  viewmnlbjddmonth1_devname,viewmnlbjddmonth1.bjcs  viewmnlbjddmonth1_bjcs,viewmnlbjddmonth1.bjstarttime  viewmnlbjddmonth1_bjstarttime,viewmnlbjddmonth1.bjendtime  viewmnlbjddmonth1_bjendtime,viewmnlbjddmonth1.bjpjzzdzzdzs  viewmnlbjddmonth1_bjpjzzdzzdzs,viewmnlbjddmonth1.bjljscall  viewmnlbjddmonth1_bjljscall,viewmnlbjddmonth1.ddcs  viewmnlbjddmonth1_ddcs,viewmnlbjddmonth1.ddstarttime  viewmnlbjddmonth1_ddstarttime,viewmnlbjddmonth1.ddendtime  viewmnlbjddmonth1_ddendtime,viewmnlbjddmonth1.ddljsc  viewmnlbjddmonth1_ddljsc,viewmnlbjddmonth1.ddstartendtime  viewmnlbjddmonth1_ddstartendtime,viewmnlbjddmonth1.ddpjzzdzzdzs  viewmnlbjddmonth1_ddpjzzdzzdzs,viewmnlbjddmonth1.ddljscall  viewmnlbjddmonth1_ddljscall,viewmnlbjddmonth1.kdcs  viewmnlbjddmonth1_kdcs,viewmnlbjddmonth1.kdstarttime  viewmnlbjddmonth1_kdstarttime,viewmnlbjddmonth1.kdendtime  viewmnlbjddmonth1_kdendtime,viewmnlbjddmonth1.kdljscall  viewmnlbjddmonth1_kdljscall,viewmnlbjddmonth1.datsearch  viewmnlbjddmonth1_datsearch,viewmnlbjddmonth1.PointID  viewmnlbjddmonth1_PointID,viewmnlbjddmonth1.devid  viewmnlbjddmonth1_devid,viewmnlbjddmonth1.gzcs  viewmnlbjddmonth1_gzcs,viewmnlbjddmonth1.gzstarttime  viewmnlbjddmonth1_gzstarttime,viewmnlbjddmonth1.gzendtime  viewmnlbjddmonth1_gzendtime,viewmnlbjddmonth1.gzljscall  viewmnlbjddmonth1_gzljscall,viewmnlbjddmonth1.bjcuoshi  viewmnlbjddmonth1_bjcuoshi,viewmnlbjddmonth1.ddcuoshi  viewmnlbjddmonth1_ddcuoshi,viewmnlbjddmonth1.gzcuoshi  viewmnlbjddmonth1_gzcuoshi,viewmnlbjddmonth1.pointid2  viewmnlbjddmonth1_pointid2,viewmnlbjddmonth1.zdz  viewmnlbjddmonth1_zdz,viewmnlbjddmonth1.zdzs  viewmnlbjddmonth1_zdzs,viewmnlbjddmonth1.zxz  viewmnlbjddmonth1_zxz,viewmnlbjddmonth1.zxzs  viewmnlbjddmonth1_zxzs,viewmnlbjddmonth1.pjz  viewmnlbjddmonth1_pjz,KJ_DeviceType2.Xs1  KJ_DeviceType2_Xs1,KJ_DeviceType2.Bz3  KJ_DeviceType2_Bz3,KJ_DeviceType2.devID  KJ_DeviceType2_devID,BFT_EnumCode4.strEnumDisplay  BFT_EnumCode4_strEnumDisplay,BFT_EnumCode4.lngEnumValue  BFT_EnumCode4_lngEnumValue,KJ_DeviceDefInfo3.z2  KJ_DeviceDefInfo3_z2,KJ_DeviceDefInfo3.z3  KJ_DeviceDefInfo3_z3,KJ_DeviceDefInfo3.z4  KJ_DeviceDefInfo3_z4,KJ_DeviceDefInfo3.ID  KJ_DeviceDefInfo3_ID,KJ_DeviceDefInfo3.pointid  KJ_DeviceDefInfo3_pointid,(concat(viewmnlbjddmonth1.bjcuoshi,viewmnlbjddmonth1.ddcuoshi,viewmnlbjddmonth1.gzcuoshi)) bjddcuoshi  from    (select point,wz,devname,bjcs,bjstarttime,bjendtime,bjpjzzdzzdzs,bjljscall,ddcs,ddstarttime,ddendtime,ddljsc,ddstartendtime,ddpjzzdzzdzs,ddljscall,kdcs,kdstarttime,kdendtime,kdljscall,datsearch,PointID,devid,gzcs,gzstarttime,gzendtime,gzljscall,bjcuoshi,ddcuoshi,gzcuoshi,pointid2,zdz,zdzs,zxz,zxzs,pjz from viewmnlbjddmonth) viewmnlbjddmonth1 left join    (select Xs1,Bz3,devID from KJ_DeviceType) KJ_DeviceType2 on viewmnlbjddmonth1.devid=KJ_DeviceType2.devID left join    (select strEnumDisplay,lngEnumValue from BFT_EnumCode where EnumTypeID=2) BFT_EnumCode4 on KJ_DeviceType2.Bz3=BFT_EnumCode4.lngEnumValue left join    (select z2,z3,z4,ID,pointid from KJ_DeviceDefInfo) KJ_DeviceDefInfo3 on viewmnlbjddmonth1.pointid2=KJ_DeviceDefInfo3.pointid where 1=1  and viewmnlbjddmonth1.bjcs!=0 or viewmnlbjddmonth1.ddcs!=0 or viewmnlbjddmonth1.kdcs!=0 ','','全部','viewmnlbjddmonth1_PointID','','',0,0,1,NULL,1,0,'viewmnlbjddmonth1_bjcs,viewmnlbjddmonth1_ddcs,viewmnlbjddmonth1_kdcs&&&$$$viewmnlbjddmonth1_bjcs!=0 or viewmnlbjddmonth1_ddcs!=0 or viewmnlbjddmonth1_kdcs!=0'),(79,54,0,'select viewkdstatereport1.point  viewkdstatereport1_point,viewkdstatereport1.wzid  viewkdstatereport1_wzid,viewkdstatereport1.devid  viewkdstatereport1_devid,viewkdstatereport1.wz  viewkdstatereport1_wz,viewkdstatereport1.kdstate  viewkdstatereport1_kdstate,viewkdstatereport1.kdstime  viewkdstatereport1_kdstime,viewkdstatereport1.kdetime  viewkdstatereport1_kdetime,viewkdstatereport1.kdcursumtime  viewkdstatereport1_kdcursumtime,viewkdstatereport1.cs  viewkdstatereport1_cs,viewkdstatereport1.bz1  viewkdstatereport1_bz1,viewkdstatereport1.bz2  viewkdstatereport1_bz2,viewkdstatereport1.datsearch  viewkdstatereport1_datsearch,viewkdstatereport1.bidb  viewkdstatereport1_bidb,KJ_DeviceAddress3.wz  KJ_DeviceAddress3_wz,KJ_DeviceAddress3.wzID  KJ_DeviceAddress3_wzID,KJ_DeviceType2.Name  KJ_DeviceType2_Name,KJ_DeviceType2.devID  KJ_DeviceType2_devID,KJ_DeviceType2.type  KJ_DeviceType2_type  from    (select point,wzid,devid,wz,kdstate,kdstime,kdetime,kdcursumtime,cs,bz1,bz2,datsearch,bidb from viewkdstatereport) viewkdstatereport1 left join    (select wz,wzID from KJ_DeviceAddress) KJ_DeviceAddress3 on viewkdstatereport1.wzid=KJ_DeviceAddress3.wzID left join    (select Name,devID,type from KJ_DeviceType) KJ_DeviceType2 on viewkdstatereport1.devid=KJ_DeviceType2.devID where 1=1  and viewkdstatereport1.kdstate <> \'复电失败\'  and viewkdstatereport1.kdstate not like  \'%成功%\'  and  (KJ_DeviceType2.type in (2) )  order by viewkdstatereport1.point Asc ,viewkdstatereport1.kdstime Asc ','','全部','view_4montha6_bid','','',0,0,1,NULL,0,0,'viewkdstatereport1_kdstate&&&$$$viewkdstatereport1_kdstate <> \'复电失败\'  and viewkdstatereport1_kdstate not like  \'%成功%\''),(80,9,0,'SELECT ViewMLLDayReport1.bid ViewMLLDayReport1_bid,ViewMLLDayReport1.point ViewMLLDayReport1_point,ViewMLLDayReport1.zdz ViewMLLDayReport1_zdz,ViewMLLDayReport1.zxz ViewMLLDayReport1_zxz,ViewMLLDayReport1.pjz ViewMLLDayReport1_pjz,ViewMLLDayReport1.zdzs ViewMLLDayReport1_zdzs,ViewMLLDayReport1.sumcountbydd ViewMLLDayReport1_sumcountbydd,ViewMLLDayReport1.sumtimebydd ViewMLLDayReport1_sumtimebydd,ViewMLLDayReport1.sumcountbybj ViewMLLDayReport1_sumcountbybj,ViewMLLDayReport1.sumtimebybj ViewMLLDayReport1_sumtimebybj,ViewMLLDayReport1.sumcountbykdfdsb ViewMLLDayReport1_sumcountbykdfdsb,ViewMLLDayReport1.sumtimebykdfdsb ViewMLLDayReport1_sumtimebykdfdsb,ViewMLLDayReport1.sumcountbygz ViewMLLDayReport1_sumcountbygz,ViewMLLDayReport1.sumtimebygz ViewMLLDayReport1_sumtimebygz,ViewMLLDayReport1.datsearch ViewMLLDayReport1_datsearch,ViewMLLDayReport1.devid ViewMLLDayReport1_devid,ViewMLLDayReport1.wzid ViewMLLDayReport1_wzid,ViewMLLDayReport1.kh ViewMLLDayReport1_kh,ViewMLLDayReport1.fzh ViewMLLDayReport1_fzh,ViewMLLDayReport1.state ViewMLLDayReport1_state,ViewMLLDayReport1.bida ViewMLLDayReport1_bida,KJ_DeviceType2.NAME KJ_DeviceType2_Name,KJ_DeviceType2.Xs1 KJ_DeviceType2_Xs1,KJ_DeviceType2.devID KJ_DeviceType2_devID,KJ_DeviceType2.Bz3 KJ_DeviceType2_Bz3,JC_WZ3.wz JC_WZ3_wz,JC_WZ3.wzID JC_WZ3_wzID,JC_DEF6.z2 JC_DEF6_z2,JC_DEF6.z3 JC_DEF6_z3,JC_DEF6.z4 JC_DEF6_z4,JC_DEF6.ID JC_DEF6_ID,JC_DEF6.pointid JC_DEF6_pointid FROM (\nSELECT bid,point,zdz,zxz,pjz,zdzs,sumcountbydd,sumtimebydd,sumcountbybj,sumtimebybj,sumcountbykdfdsb,sumtimebykdfdsb,sumcountbygz,sumtimebygz,datsearch,devid,wzid,kh,fzh,state,bida FROM ViewMLLDayReport) ViewMLLDayReport1 LEFT JOIN (\nSELECT NAME,Xs1,devID,Bz3 FROM KJ_DeviceType) KJ_DeviceType2 ON ViewMLLDayReport1.devid=KJ_DeviceType2.devID LEFT JOIN (\nSELECT wz,wzID FROM KJ_DeviceAddress) JC_WZ3 ON ViewMLLDayReport1.wzid=JC_WZ3.wzID LEFT JOIN (\nSELECT z2,z3,z4,ID,pointid FROM KJ_DeviceDefInfo) JC_DEF6 ON ViewMLLDayReport1.bida=JC_DEF6.pointid WHERE 1=1 ORDER BY KJ_DeviceType2.Bz3 ASC,ViewMLLDayReport1.point ASC ','','模拟量日报表_复电失败','ViewMSum1_wzid','','',0,0,1,'',0,0,''),(81,53,0,'SELECT viewmnlbjddmonth1.point viewmnlbjddmonth1_point,viewmnlbjddmonth1.wz viewmnlbjddmonth1_wz,viewmnlbjddmonth1.devname viewmnlbjddmonth1_devname,viewmnlbjddmonth1.bjcs viewmnlbjddmonth1_bjcs,viewmnlbjddmonth1.bjstarttime viewmnlbjddmonth1_bjstarttime,viewmnlbjddmonth1.bjendtime viewmnlbjddmonth1_bjendtime,viewmnlbjddmonth1.bjpjzzdzzdzs viewmnlbjddmonth1_bjpjzzdzzdzs,viewmnlbjddmonth1.bjljscall viewmnlbjddmonth1_bjljscall,viewmnlbjddmonth1.ddcs viewmnlbjddmonth1_ddcs,viewmnlbjddmonth1.ddstarttime viewmnlbjddmonth1_ddstarttime,viewmnlbjddmonth1.ddendtime viewmnlbjddmonth1_ddendtime,viewmnlbjddmonth1.ddljsc viewmnlbjddmonth1_ddljsc,viewmnlbjddmonth1.ddstartendtime viewmnlbjddmonth1_ddstartendtime,viewmnlbjddmonth1.ddpjzzdzzdzs viewmnlbjddmonth1_ddpjzzdzzdzs,viewmnlbjddmonth1.ddljscall viewmnlbjddmonth1_ddljscall,viewmnlbjddmonth1.kdfdsbcs viewmnlbjddmonth1_kdfdsbcs,viewmnlbjddmonth1.kdfdsbstarttime viewmnlbjddmonth1_kdfdsbstarttime,viewmnlbjddmonth1.kdfdsbendtime viewmnlbjddmonth1_kdfdsbendtime,viewmnlbjddmonth1.kdfdsbljscall viewmnlbjddmonth1_kdfdsbljscall,viewmnlbjddmonth1.datsearch viewmnlbjddmonth1_datsearch,viewmnlbjddmonth1.bjcuoshi viewmnlbjddmonth1_bjcuoshi,viewmnlbjddmonth1.ddcuoshi viewmnlbjddmonth1_ddcuoshi,viewmnlbjddmonth1.PointID viewmnlbjddmonth1_PointID,viewmnlbjddmonth1.devid viewmnlbjddmonth1_devid,KJ_DeviceType2.Xs1 KJ_DeviceType2_Xs1,KJ_DeviceType2.Bz3 KJ_DeviceType2_Bz3,KJ_DeviceType2.devID KJ_DeviceType2_devID,BFT_EnumCode4.strEnumDisplay BFT_EnumCode4_strEnumDisplay,BFT_EnumCode4.lngEnumValue BFT_EnumCode4_lngEnumValue,(concat(viewmnlbjddmonth1.bjcuoshi,viewmnlbjddmonth1.ddcuoshi)) bjddcuoshi FROM (\nSELECT point,wz,devname,bjcs,bjstarttime,bjendtime,bjpjzzdzzdzs,bjljscall,ddcs,ddstarttime,ddendtime,ddljsc,ddstartendtime,ddpjzzdzzdzs,ddljscall,kdfdsbcs,kdfdsbstarttime,kdfdsbendtime,kdfdsbljscall,datsearch,bjcuoshi,ddcuoshi,PointID,devid FROM viewmnlbjddmonth) viewmnlbjddmonth1 LEFT JOIN (\nSELECT Xs1,Bz3,devID FROM KJ_DeviceType) KJ_DeviceType2 ON viewmnlbjddmonth1.devid=KJ_DeviceType2.devID LEFT JOIN (\nSELECT strEnumDisplay,lngEnumValue FROM BFT_EnumCode WHERE EnumTypeID=2) BFT_EnumCode4 ON KJ_DeviceType2.Bz3=BFT_EnumCode4.lngEnumValue WHERE 1=1 AND viewmnlbjddmonth1.bjcs !=0 OR viewmnlbjddmonth1.ddcs !=0 OR viewmnlbjddmonth1.kdfdsbcs !=0 ','','全部_复电失败','viewmnlbjddmonth1_PointID','','',0,0,1,NULL,0,0,'viewmnlbjddmonth1_bjcs,viewmnlbjddmonth1_ddcs,viewmnlbjddmonth1_kdfdsbcs&&&$$$viewmnlbjddmonth1_bjcs!=0 or viewmnlbjddmonth1_ddcs!=0 or viewmnlbjddmonth1_kdfdsbcs!=0'),(83,19,0,'SELECT ViewKGLBJDDDayReport1.point ViewKGLBJDDDayReport1_point,ViewKGLBJDDDayReport1.statename ViewKGLBJDDDayReport1_statename,ViewKGLBJDDDayReport1.sumcountfdsb ViewKGLBJDDDayReport1_sumcountfdsb,ViewKGLBJDDDayReport1.sumtimefdsb ViewKGLBJDDDayReport1_sumtimefdsb,ViewKGLBJDDDayReport1.stime ViewKGLBJDDDayReport1_stime,ViewKGLBJDDDayReport1.etime ViewKGLBJDDDayReport1_etime,ViewKGLBJDDDayReport1.cursumtime ViewKGLBJDDDayReport1_cursumtime,ViewKGLBJDDDayReport1.wz ViewKGLBJDDDayReport1_wz,ViewKGLBJDDDayReport1.kdstate ViewKGLBJDDDayReport1_kdstate,ViewKGLBJDDDayReport1.kdstime ViewKGLBJDDDayReport1_kdstime,ViewKGLBJDDDayReport1.kdetime ViewKGLBJDDDayReport1_kdetime,ViewKGLBJDDDayReport1.kdcursumtime ViewKGLBJDDDayReport1_kdcursumtime,ViewKGLBJDDDayReport1.bid ViewKGLBJDDDayReport1_bid,ViewKGLBJDDDayReport1.datsearch ViewKGLBJDDDayReport1_datsearch,ViewKGLBJDDDayReport1.wzid ViewKGLBJDDDayReport1_wzid,ViewKGLBJDDDayReport1.remark ViewKGLBJDDDayReport1_remark,ViewKGLBJDDDayReport1.cs ViewKGLBJDDDayReport1_cs,ViewKGLBJDDDayReport1.bz1 ViewKGLBJDDDayReport1_bz1,ViewKGLBJDDDayReport1.bz2 ViewKGLBJDDDayReport1_bz2,ViewKGLBJDDDayReport1.devid ViewKGLBJDDDayReport1_devid,JC_WZ3.wz JC_WZ3_wz,JC_WZ3.wzID JC_WZ3_wzID,KJ_DeviceType2.devID KJ_DeviceType2_devID,KJ_DeviceType2.Bz3 KJ_DeviceType2_Bz3,BFT_EnumCode5.strEnumDisplay BFT_EnumCode5_strEnumDisplay,BFT_EnumCode5.lngEnumValue BFT_EnumCode5_lngEnumValue,(CASE WHEN ViewKGLBJDDDayReport1.kdstate LIKE \'%成功%\' THEN ViewKGLBJDDDayReport1.stime ELSE ViewKGLBJDDDayReport1.kdstime END) kdstimea,(CASE WHEN ViewKGLBJDDDayReport1.kdstate LIKE \'%成功%\' THEN ViewKGLBJDDDayReport1.etime ELSE ViewKGLBJDDDayReport1.kdetime END) kdetimea,(CASE WHEN ViewKGLBJDDDayReport1.kdstate LIKE \'%成功%\' THEN ViewKGLBJDDDayReport1.cursumtime ELSE ViewKGLBJDDDayReport1.kdcursumtime END) kdcursumtimea FROM (\nSELECT point,statename,sumcountfdsb,sumtimefdsb,stime,etime,cursumtime,wz,kdstate,kdstime,kdetime,kdcursumtime,bid,datsearch,wzid,remark,cs,bz1,bz2,devid FROM ViewKGLBJDDDayReport) ViewKGLBJDDDayReport1 LEFT JOIN (\nSELECT wz,wzID FROM KJ_DeviceAddress) JC_WZ3 ON ViewKGLBJDDDayReport1.wzid=JC_WZ3.wzID LEFT JOIN (\nSELECT devID,Bz3 FROM KJ_DeviceType) KJ_DeviceType2 ON ViewKGLBJDDDayReport1.devid=KJ_DeviceType2.devID LEFT JOIN (\nSELECT strEnumDisplay,lngEnumValue FROM BFT_EnumCode WHERE EnumTypeID=2) BFT_EnumCode5 ON KJ_DeviceType2.Bz3=BFT_EnumCode5.lngEnumValue WHERE 1=1 AND (ifnull(ViewKGLBJDDDayReport1.wz,\'\')<> \'无断电区域\') AND (ifnull(BFT_EnumCode5.strEnumDisplay,\'\')<> \'语音风门\') ORDER BY ViewKGLBJDDDayReport1.stime ASC ','','全部_复电失败','ViewKGLBJDDDayReport1_bid','','',0,0,1,NULL,0,0,''),(84,34,0,'SELECT viewkglkddayreport1.point viewkglkddayreport1_point,viewkglkddayreport1.wzid viewkglkddayreport1_wzid,viewkglkddayreport1.devid viewkglkddayreport1_devid,viewkglkddayreport1.kdsumcountfdsb viewkglkddayreport1_kdsumcountfdsb,viewkglkddayreport1.kdsumtimefdsb viewkglkddayreport1_kdsumtimefdsb,viewkglkddayreport1.wz viewkglkddayreport1_wz,viewkglkddayreport1.kdstate viewkglkddayreport1_kdstate,viewkglkddayreport1.kdstime viewkglkddayreport1_kdstime,viewkglkddayreport1.kdetime viewkglkddayreport1_kdetime,viewkglkddayreport1.kdcursumtime viewkglkddayreport1_kdcursumtime,viewkglkddayreport1.datsearch viewkglkddayreport1_datsearch,viewkglkddayreport1.cs viewkglkddayreport1_cs,viewkglkddayreport1.bid viewkglkddayreport1_bid,viewkglkddayreport1.bz1 viewkglkddayreport1_bz1,viewkglkddayreport1.bz2 viewkglkddayreport1_bz2,JC_WZ3.wz JC_WZ3_wz,JC_WZ3.wzID JC_WZ3_wzID,KJ_DeviceType2.NAME KJ_DeviceType2_Name,KJ_DeviceType2.Xs1 KJ_DeviceType2_Xs1,KJ_DeviceType2.devID KJ_DeviceType2_devID FROM (\nSELECT point,wzid,devid,kdsumcountfdsb,kdsumtimefdsb,wz,kdstate,kdstime,kdetime,kdcursumtime,datsearch,cs,bid,bz1,bz2 FROM viewkglkddayreport) viewkglkddayreport1 LEFT JOIN (\nSELECT wz,wzID FROM KJ_DeviceAddress) JC_WZ3 ON viewkglkddayreport1.wzid=JC_WZ3.wzID LEFT JOIN (\nSELECT NAME,Xs1,devID FROM KJ_DeviceType) KJ_DeviceType2 ON viewkglkddayreport1.devid=KJ_DeviceType2.devID WHERE 1=1 AND viewkglkddayreport1.kdstate NOT LIKE \'%正常%\' AND (ifnull(viewkglkddayreport1.kdsumcountfdsb,0)> 0) ORDER BY viewkglkddayreport1.kdstime ASC ','','全部_复电失败','viewkglkddayreport1_bid','','',0,0,1,NULL,0,0,'viewkglkddayreport1_kdstate&&&$$$viewkglkddayreport1_kdstate not like  \'%正常%\''),(85,47,0,'SELECT viewkdstatereport1.point viewkdstatereport1_point,viewkdstatereport1.devid viewkdstatereport1_devid,viewkdstatereport1.wzid viewkdstatereport1_wzid,viewkdstatereport1.wz viewkdstatereport1_wz,viewkdstatereport1.datsearch viewkdstatereport1_datsearch,viewkdstatereport1.kdsumcountfdsb viewkdstatereport1_kdsumcountfdsb,viewkdstatereport1.kdsumtmefdsb viewkdstatereport1_kdsumtmefdsb,viewkdstatereport1.kdstime viewkdstatereport1_kdstime,viewkdstatereport1.kdetime viewkdstatereport1_kdetime,viewkdstatereport1.kdcursumtime viewkdstatereport1_kdcursumtime,viewkdstatereport1.state viewkdstatereport1_state,viewkdstatereport1.toid viewkdstatereport1_toid,viewkdstatereport1.kdssz viewkdstatereport1_kdssz,viewkdstatereport1.kdstate viewkdstatereport1_kdstate,viewkdstatereport1.cs viewkdstatereport1_cs,viewkdstatereport1.bz1 viewkdstatereport1_bz1,viewkdstatereport1.bz2 viewkdstatereport1_bz2,viewkdstatereport1.type viewkdstatereport1_type,KJ_DeviceType2.NAME KJ_DeviceType2_Name,KJ_DeviceType2.Xs1 KJ_DeviceType2_Xs1,KJ_DeviceType2.type KJ_DeviceType2_type,KJ_DeviceType2.devID KJ_DeviceType2_devID,JC_WZ3.wz JC_WZ3_wz,JC_WZ3.wzID JC_WZ3_wzID,BFT_EnumCode4.strEnumDisplay BFT_EnumCode4_strEnumDisplay,BFT_EnumCode4.lngEnumValue BFT_EnumCode4_lngEnumValue FROM (\nSELECT point,devid,wzid,wz,datsearch,kdsumcountfdsb,kdsumtmefdsb,kdstime,kdetime,kdcursumtime,state,toid,kdssz,kdstate,cs,bz1,bz2,type FROM viewkdstatereport) viewkdstatereport1 LEFT JOIN (\nSELECT NAME,Xs1,type,devID FROM KJ_DeviceType) KJ_DeviceType2 ON viewkdstatereport1.devid=KJ_DeviceType2.devID LEFT JOIN (\nSELECT wz,wzID FROM KJ_DeviceAddress) JC_WZ3 ON viewkdstatereport1.wzid=JC_WZ3.wzID LEFT JOIN (\nSELECT strEnumDisplay,lngEnumValue FROM BFT_EnumCode WHERE EnumTypeID=8) BFT_EnumCode4 ON viewkdstatereport1.state=BFT_EnumCode4.lngEnumValue WHERE 1=1 AND viewkdstatereport1.kdstate NOT LIKE \'%正常%\' AND (KJ_DeviceType2.type IN (1)) AND (ifnull(BFT_EnumCode4.strEnumDisplay,\'\')<> \'\') ORDER BY viewkdstatereport1.kdstime ASC ','','全部_复电失败','KJ_DeviceType2_devID','','',0,0,1,NULL,0,0,'viewkdstatereport1_kdstate&&&$$$viewkdstatereport1_kdstate not like  \'%正常%\''),(86,56,0,'select viewlinkagehistory1.linkagename  viewlinkagehistory1_linkagename,viewlinkagehistory1.StartTime  viewlinkagehistory1_StartTime,viewlinkagehistory1.EndTime  viewlinkagehistory1_EndTime,viewlinkagehistory1.IsForceEndText  viewlinkagehistory1_IsForceEndText,viewlinkagehistory1.username  viewlinkagehistory1_username,viewlinkagehistory1.bigdataanalyzename  viewlinkagehistory1_bigdataanalyzename,viewlinkagehistory1.wz  viewlinkagehistory1_wz,viewlinkagehistory1.point  viewlinkagehistory1_point,viewlinkagehistory1.Id  viewlinkagehistory1_Id,viewlinkagehistory1.devname  viewlinkagehistory1_devname,viewlinkagehistory1.DataStateText  viewlinkagehistory1_DataStateText  from    (select linkagename,StartTime,EndTime,IsForceEndText,username,bigdataanalyzename,wz,point,Id,devname,DataStateText from viewlinkagehistory) viewlinkagehistory1 where 1=1   order by viewlinkagehistory1.linkagename Asc ,viewlinkagehistory1.StartTime Asc ','','全部','viewlinkagehistory1_Id','','',0,0,1,NULL,0,0,NULL),(91,62,0,'select viewsubstationdischarge1.point  viewsubstationdischarge1_point,viewsubstationdischarge1.wzid  viewsubstationdischarge1_wzid,viewsubstationdischarge1.devid  viewsubstationdischarge1_devid,viewsubstationdischarge1.state  viewsubstationdischarge1_state,viewsubstationdischarge1.stime  viewsubstationdischarge1_stime,viewsubstationdischarge1.etime  viewsubstationdischarge1_etime,viewsubstationdischarge1.duration  viewsubstationdischarge1_duration,viewsubstationdischarge1.datsearch  viewsubstationdischarge1_datsearch,viewsubstationdischarge1.id  viewsubstationdischarge1_id,KJ_DeviceAddress5.wz  KJ_DeviceAddress5_wz,KJ_DeviceAddress5.wzID  KJ_DeviceAddress5_wzID,KJ_DeviceType4.Name  KJ_DeviceType4_Name,KJ_DeviceType4.devID  KJ_DeviceType4_devID,BFT_EnumCode3.strEnumDisplay  BFT_EnumCode3_strEnumDisplay,BFT_EnumCode3.lngEnumValue  BFT_EnumCode3_lngEnumValue  from    (select point,wzid,devid,state,stime,etime,duration,datsearch,id from viewsubstationdischarge) viewsubstationdischarge1 left join    (select wz,wzID from KJ_DeviceAddress) KJ_DeviceAddress5 on viewsubstationdischarge1.wzid=KJ_DeviceAddress5.wzID left join    (select Name,devID from KJ_DeviceType) KJ_DeviceType4 on viewsubstationdischarge1.devid=KJ_DeviceType4.devID left join    (select strEnumDisplay,lngEnumValue from BFT_EnumCode where EnumTypeID=8) BFT_EnumCode3 on viewsubstationdischarge1.state=BFT_EnumCode3.lngEnumValue where 1=1   order by viewsubstationdischarge1.point Asc ,viewsubstationdischarge1.stime Asc ','','全部','viewsubstationdischarge1_id','','',0,0,1,NULL,0,0,NULL),(92,63,0,'select viewequipmentaccount1.name  viewequipmentaccount1_name,viewequipmentaccount1.totalnum  viewequipmentaccount1_totalnum,viewequipmentaccount1.usednum  viewequipmentaccount1_usednum,viewequipmentaccount1.unusednum  viewequipmentaccount1_unusednum,viewequipmentaccount1.overindate  viewequipmentaccount1_overindate,viewequipmentaccount1.overguaranteeperiod  viewequipmentaccount1_overguaranteeperiod,viewequipmentaccount1.devid2  viewequipmentaccount1_devid2,viewequipmentaccount1.devid  viewequipmentaccount1_devid  from    (select name,totalnum,usednum,unusednum,overindate,overguaranteeperiod,devid2,devid from viewequipmentaccount) viewequipmentaccount1 where 1=1 ','','全部','viewequipmentaccount1_devid','','',0,0,1,NULL,0,0,NULL),(93,67,0,'select viewstationpowerchargehistory1.point  viewstationpowerchargehistory1_point,viewstationpowerchargehistory1.wz  viewstationpowerchargehistory1_wz,viewstationpowerchargehistory1.Stime  viewstationpowerchargehistory1_Stime,viewstationpowerchargehistory1.DischargeStime  viewstationpowerchargehistory1_DischargeStime,viewstationpowerchargehistory1.DischargeEtime  viewstationpowerchargehistory1_DischargeEtime,viewstationpowerchargehistory1.userName  viewstationpowerchargehistory1_userName,viewstationpowerchargehistory1.Id  viewstationpowerchargehistory1_Id,(case when viewstationpowerchargehistory1.DischargeStime=\'1900-01-01 00:00:00\' then \'-\' else viewstationpowerchargehistory1.DischargeStime end) chargeStime,(case when viewstationpowerchargehistory1.DischargeEtime=\'1900-01-01 00:00:00\' then \'-\' else viewstationpowerchargehistory1.DischargeEtime end) chargeEtime  from    (select point,wz,Stime,DischargeStime,DischargeEtime,userName,Id from viewstationpowerchargehistory) viewstationpowerchargehistory1 where 1=1   order by viewstationpowerchargehistory1.Stime Asc ','','放电记录查询','viewstationpowerchargehistory1_Id','','',0,0,1,NULL,0,0,NULL),(94,68,0,'select ViewKGLBJDDDayReport1.point  ViewKGLBJDDDayReport1_point,ViewKGLBJDDDayReport1.wzid  ViewKGLBJDDDayReport1_wzid,ViewKGLBJDDDayReport1.devid  ViewKGLBJDDDayReport1_devid,ViewKGLBJDDDayReport1.sumtime  ViewKGLBJDDDayReport1_sumtime,ViewKGLBJDDDayReport1.sumcount  ViewKGLBJDDDayReport1_sumcount,ViewKGLBJDDDayReport1.wz  ViewKGLBJDDDayReport1_wz,ViewKGLBJDDDayReport1.cursumtime  ViewKGLBJDDDayReport1_cursumtime,ViewKGLBJDDDayReport1.stime  ViewKGLBJDDDayReport1_stime,ViewKGLBJDDDayReport1.etime  ViewKGLBJDDDayReport1_etime,ViewKGLBJDDDayReport1.kdstate  ViewKGLBJDDDayReport1_kdstate,ViewKGLBJDDDayReport1.cs  ViewKGLBJDDDayReport1_cs,ViewKGLBJDDDayReport1.bz2  ViewKGLBJDDDayReport1_bz2,ViewKGLBJDDDayReport1.remark  ViewKGLBJDDDayReport1_remark,ViewKGLBJDDDayReport1.bz1  ViewKGLBJDDDayReport1_bz1,ViewKGLBJDDDayReport1.datsearch  ViewKGLBJDDDayReport1_datsearch,ViewKGLBJDDDayReport1.statename  ViewKGLBJDDDayReport1_statename,ViewKGLBJDDDayReport1.bid  ViewKGLBJDDDayReport1_bid,ViewKGLBJDDDayReport1.kdstime  ViewKGLBJDDDayReport1_kdstime,ViewKGLBJDDDayReport1.kdetime  ViewKGLBJDDDayReport1_kdetime,ViewKGLBJDDDayReport1.kdcursumtime  ViewKGLBJDDDayReport1_kdcursumtime,KJ_DeviceAddress3.wz  KJ_DeviceAddress3_wz,KJ_DeviceAddress3.wzID  KJ_DeviceAddress3_wzID,KJ_DeviceType2.Name  KJ_DeviceType2_Name,KJ_DeviceType2.devID  KJ_DeviceType2_devID,KJ_DeviceType2.Bz3  KJ_DeviceType2_Bz3,BFT_EnumCode5.strEnumDisplay  BFT_EnumCode5_strEnumDisplay,BFT_EnumCode5.lngEnumValue  BFT_EnumCode5_lngEnumValue,(case  when  ViewKGLBJDDDayReport1.kdstate like \'%成功%\'  then ViewKGLBJDDDayReport1.stime else  ViewKGLBJDDDayReport1.kdstime  end) kdstimea,(case  when  ViewKGLBJDDDayReport1.kdstate like \'%成功%\'  then ViewKGLBJDDDayReport1.etime  else ViewKGLBJDDDayReport1.kdetime  end) kdetimea,(case  when  ViewKGLBJDDDayReport1.kdstate like \'%成功%\'  then \r\nViewKGLBJDDDayReport1.cursumtime else  ViewKGLBJDDDayReport1.kdcursumtime  end) kdcursumtimea  from    (select point,wzid,devid,sumtime,sumcount,wz,cursumtime,stime,etime,kdstate,cs,bz2,remark,bz1,datsearch,statename,bid,kdstime,kdetime,kdcursumtime from ViewKGLBJDDDayReport) ViewKGLBJDDDayReport1 left join    (select wz,wzID from KJ_DeviceAddress) KJ_DeviceAddress3 on ViewKGLBJDDDayReport1.wzid=KJ_DeviceAddress3.wzID left join    (select Name,devID,Bz3 from KJ_DeviceType) KJ_DeviceType2 on ViewKGLBJDDDayReport1.devid=KJ_DeviceType2.devID left join    (select strEnumDisplay,lngEnumValue from BFT_EnumCode where EnumTypeID=2) BFT_EnumCode5 on KJ_DeviceType2.Bz3=BFT_EnumCode5.lngEnumValue where 1=1  and  (isnull(ViewKGLBJDDDayReport1.wz,\'\')<>\'无断电区域\' ) and  (isnull(ViewKGLBJDDDayReport1.kdstate,\'\')<>\'复电失败\' ) and  (isnull(BFT_EnumCode5.strEnumDisplay,\'\')<>\'语音风门\' )','','开关量断电日报','ViewKGLBJDDDayReport1_bid,KJ_DeviceAddress3_wzID,KJ_DeviceType2_devID','','',0,0,1,NULL,0,0,NULL),(95,69,0,'select viewswitchrunlogreport1.point  viewswitchrunlogreport1_point,viewswitchrunlogreport1.remark  viewswitchrunlogreport1_remark,viewswitchrunlogreport1.wzid  viewswitchrunlogreport1_wzid,viewswitchrunlogreport1.type  viewswitchrunlogreport1_type,viewswitchrunlogreport1.sumtime  viewswitchrunlogreport1_sumtime,viewswitchrunlogreport1.stime  viewswitchrunlogreport1_stime,viewswitchrunlogreport1.etime  viewswitchrunlogreport1_etime,viewswitchrunlogreport1.datsearch  viewswitchrunlogreport1_datsearch,KJ_DeviceAddress2.wz  KJ_DeviceAddress2_wz,KJ_DeviceAddress2.wzID  KJ_DeviceAddress2_wzID,BFT_EnumCode3.strEnumDisplay  BFT_EnumCode3_strEnumDisplay,BFT_EnumCode3.lngEnumValue  BFT_EnumCode3_lngEnumValue  from    (select point,remark,wzid,type,sumtime,stime,etime,datsearch from viewswitchrunlogreport) viewswitchrunlogreport1 left join    (select wz,wzID from KJ_DeviceAddress) KJ_DeviceAddress2 on viewswitchrunlogreport1.wzid=KJ_DeviceAddress2.wzID left join    (select strEnumDisplay,lngEnumValue from BFT_EnumCode where EnumTypeID=4) BFT_EnumCode3 on viewswitchrunlogreport1.type=BFT_EnumCode3.lngEnumValue where 1=1 ','','所有','KJ_DeviceAddress2_wzID','','',0,0,1,NULL,0,0,NULL);
/*!40000 ALTER TABLE `bft_listdataex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bft_listdisplayex`
--

DROP TABLE IF EXISTS `bft_listdisplayex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bft_listdisplayex` (
  `ListDisplayID` int(20) NOT NULL AUTO_INCREMENT COMMENT '列表显示项目ID',
  `UserID` int(20) NOT NULL,
  `ListDataID` int(20) NOT NULL COMMENT '所属列表ID',
  `strListDisplayFieldName` varchar(100) NOT NULL COMMENT '（原始）字段名称',
  `strListDisplayFieldNameCHS` varchar(500) NOT NULL COMMENT '（原始）字段名称',
  `blnSummary` tinyint(1) NOT NULL COMMENT '是否小计',
  `lngListDisplayFieldFormat` int(11) NOT NULL COMMENT '（暂不处理） 数据显示类型 1 PK 不显示 2 FK 编码+名称 3 字符串 4 2位小数的货币 5 数字 6 日期 7 逻辑 8 二进制 9 4位小数的货币',
  `lngDisplayWidth` int(11) DEFAULT NULL COMMENT '字段显示宽度',
  `lngRowIndex` int(11) NOT NULL COMMENT '显示顺序',
  `lngSummaryType` int(11) DEFAULT NULL COMMENT '分组类型(1计数,2汇总,3平均,4最大,5最小)',
  `strSummaryDisplayFormat` varchar(100) DEFAULT NULL COMMENT '显示格式',
  `lngHyperLinkType` int(11) DEFAULT NULL COMMENT '超链接类型 1卡片或单据，2列表',
  `strHyperlink` varchar(200) DEFAULT NULL COMMENT '超级链接单据(parameters={targetColumnFiledName};RequestType[列如:Receipt,Entity=Receipt&ReceiptID={ReceiptID}&ReceiptTypeID={ReceiptTypeID}];Bill)',
  `strParaColName` varchar(2000) DEFAULT NULL COMMENT '超链接参数字段',
  `strConditionFormat` text COMMENT '条件格式',
  `isCalcField` tinyint(1) DEFAULT NULL COMMENT '计算列',
  `strBluerCondition` varchar(2000) DEFAULT NULL COMMENT '模糊查询条件',
  `lngSortOrder` int(1) DEFAULT NULL,
  `blnMerge` tinyint(1) NOT NULL COMMENT '是否合并',
  `lngApplyType` int(11) DEFAULT NULL COMMENT '应用类型(1代表全部,2代表列表,3代表报表)',
  `lngFKType` int(11) DEFAULT NULL,
  `blnMainMerge` tinyint(1) NOT NULL,
  `blnKeyWord` tinyint(1) DEFAULT NULL,
  `lngKeyGroup` int(11) DEFAULT NULL,
  `blnConstant` tinyint(1) DEFAULT '0',
  `lngProivtType` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ListDisplayID`)
) ENGINE=InnoDB AUTO_INCREMENT=27731 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bft_listdisplayex`
--

LOCK TABLES `bft_listdisplayex` WRITE;
/*!40000 ALTER TABLE `bft_listdisplayex` DISABLE KEYS */;
INSERT INTO `bft_listdisplayex` VALUES (9678,10000001,53,'KJ_DeviceDefInfo1_fzh','分站号',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9679,10000001,53,'KJ_DeviceDefInfo1_kh','口号',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9680,10000001,53,'KJ_DeviceDefInfo1_ID','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9681,10000001,53,'KJ_DeviceDefInfo1_pointid','测点ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9682,10000001,54,'KJ_DeviceDefInfo1_fzh','分站号',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9683,10000001,54,'KJ_DeviceDefInfo1_devid','设备类型ID',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9684,10000001,54,'KJ_DeviceDefInfo1_ID','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9685,10000001,54,'KJ_DeviceDefInfo1_pointid','测点ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9686,10000001,55,'KJ_DeviceDefInfo1_kh','口号',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9687,10000001,55,'KJ_DeviceDefInfo1_devid','设备类型ID',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9688,10000001,55,'KJ_DeviceDefInfo1_ID','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9689,10000001,55,'KJ_DeviceDefInfo1_pointid','测点ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9691,10000001,56,'KJ_DeviceDefInfo1_kh','口号',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9692,10000001,56,'KJ_DeviceDefInfo1_ID','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9693,10000001,56,'KJ_DeviceDefInfo1_pointid','测点ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9694,10000001,56,'KJ_DeviceDefInfo1_fzh','分站号',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9695,10000001,56,'KJ_DeviceDefInfo1_kh','口号',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9696,10000001,56,'KJ_DeviceDefInfo1_ID','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9697,10000001,56,'KJ_DeviceDefInfo1_pointid','测点ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9699,10000001,57,'KJ_DeviceDefInfo1_wzid','安装位置ID',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9700,10000001,57,'KJ_DeviceDefInfo1_ID','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9701,10000001,57,'KJ_DeviceDefInfo1_pointid','测点ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9702,10000001,57,'KJ_DeviceDefInfo1_kh','口号',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9703,10000001,57,'KJ_DeviceDefInfo1_wzid','安装位置ID',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9704,10000001,57,'KJ_DeviceDefInfo1_ID','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9705,10000001,57,'KJ_DeviceDefInfo1_pointid','测点ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9707,10000001,58,'BFT_User1_UserName','真实用户姓名',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9708,10000001,58,'BFT_User1_UserID','用户ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9709,10000001,58,'BFT_User1_UserCode','登录用户名(编码)',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9710,10000001,58,'BFT_User1_UserName','真实用户姓名',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9711,10000001,58,'BFT_User1_UserID','用户ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9712,10000001,59,'BFT_User1_UserName','真实用户姓名',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9713,10000001,59,'BFT_User1_Password','密码',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9714,10000001,59,'BFT_User1_UserID','用户ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9716,10000001,60,'BFT_User1_Password','密码',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9717,10000001,60,'BFT_User1_UserID','用户ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9721,10000001,61,'BFT_User1_UserCode','登录用户名(编码)2',0,0,102,1,1,'数量',2,'ListEx;ListID=2','','',0,'',0,1,1,1,1,1,0,1,0),(9722,10000001,61,'BFT_User1_UserName','真实用户姓名2',0,0,102,-1,0,'',0,'','','',0,'',0,0,0,2,0,0,0,0,0),(9723,10000001,61,'BFT_User1_UserID','用户ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9724,10000001,61,'BFT_User1_UserName','真实用户姓名',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9725,10000001,61,'BFT_User1_UserName','真实用户姓名2',0,0,102,2,0,'',0,'','','',0,'',0,0,0,2,0,0,0,0,0),(9726,10000001,61,'BFT_User1_UserID','用户ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9727,10000001,61,'BFT_User1_UserID','用户ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9728,10000001,61,'BFT_User1_UserCode','登录用户名(编码)2',0,0,102,3,1,'数量',2,'ListEx;ListID=2','','',0,'',0,1,1,1,1,1,0,1,0),(9729,10000001,61,'BFT_User1_UserName','真实用户姓名',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9730,10000001,61,'BFT_User1_UserName','真实用户姓名2',0,0,102,-1,0,'',0,'','','',0,'',0,0,0,2,0,0,0,0,0),(9731,10000001,61,'BFT_User1_UserID','用户ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9732,10000001,61,'BFT_User1_UserID','用户ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9735,10000001,62,'BFT_User1_UserID','用户ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9736,10000001,62,'BFT_User1_DeptCode','所属单位编码',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9737,10000001,62,'BFT_User1_UserCode','登录用户名(编码)',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9738,10000001,62,'BFT_User1_UserID','用户ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9741,10000001,63,'BFT_User1_UserID','用户ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9742,10000001,63,'BFT_User1_UserCode','登录用户名(编码)',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9743,10000001,63,'BFT_User1_UserName','真实用户姓名',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9744,10000001,63,'BFT_User1_UserID','用户ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9749,10000001,64,'BFT_User1_UserName','真实用户姓名',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9750,10000001,64,'BFT_User1_UserID','用户ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9751,10000001,64,'BFT_User1_UserCode','登录用户名(编码)',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9752,10000001,64,'BFT_User1_UserName','真实用户姓名',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9753,10000001,64,'BFT_User1_UserID','用户ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9754,10000001,64,'BFT_User1_UserCode','登录用户名(编码)',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9755,10000001,64,'BFT_User1_UserName','真实用户姓名',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(9756,10000001,64,'BFT_User1_UserID','用户ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(11775,10000001,21,'viewsbrunlogreport1_timer','时间',0,0,125,1,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(11776,10000001,21,'viewsbrunlogreport1_point','测点号',0,0,82,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(11777,10000001,21,'viewsbrunlogreport1_wzid','安装位置',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(11778,10000001,21,'viewsbrunlogreport1_devid','设备类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(11779,10000001,21,'KJ_DeviceAddress3_wz','安装位置',0,0,100,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(11780,10000001,21,'KJ_DeviceType2_Name','设备类型',0,0,100,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(11781,10000001,21,'viewsbrunlogreport1_val','值',0,0,100,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(11782,10000001,21,'KJ_DeviceType2_Xs1','单位',0,0,100,-1,0,'',0,'','','',0,'无;KJ_DeviceType2_Xs1=\'断线\'',0,0,0,0,0,0,0,0,0),(11783,10000001,21,'dd','单位',0,0,100,6,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(11784,10000001,21,'viewsbrunlogreport1_datsearch','查询时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,13,0,0,0,0,0),(11785,10000001,21,'KJ_DeviceType2_type','设备性质',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(11786,10000001,21,'viewsbrunlogreport1_id','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(11787,10000001,21,'KJ_DeviceType2_devID','设备类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(11788,10000001,21,'KJ_DeviceAddress3_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(11789,10000001,21,'BFT_EnumCode4_lngEnumValue','类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(11790,10000001,21,'viewsbrunlogreport1_type','状态',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(11791,10000001,21,'BFT_EnumCode4_strEnumDisplay','状态',0,0,100,7,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(11792,10000001,21,'viewsbrunlogreport1_valnumber','值',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(11793,10000001,21,'viewsbrunlogreport1_state','设备状态',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(11794,10000001,21,'BFT_EnumCode5_strEnumDisplay','设备状态',0,0,100,8,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(11795,10000001,21,'BFT_EnumCode5_lngEnumValue','设备状态ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13301,10000001,72,'ViewKGLBJDDDayReport1_point','测点号',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13302,10000001,72,'KJ_DeviceAddress3_wz','安装位置',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13303,10000001,72,'ViewKGLBJDDDayReport1_statename','状态名称',0,0,75,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13304,10000001,72,'ViewKGLBJDDDayReport1_sumcount','累计次数',0,0,69,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13305,10000001,72,'ViewKGLBJDDDayReport1_sumtime','累计时间',0,0,80,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13306,10000001,72,'ViewKGLBJDDDayReport1_stime','本次开始时间',0,0,125,6,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13307,10000001,72,'ViewKGLBJDDDayReport1_etime','本次结束时间',0,0,125,7,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13308,10000001,72,'ViewKGLBJDDDayReport1_cursumtime','本次累计时间',0,0,97,8,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13309,10000001,72,'ViewKGLBJDDDayReport1_wz','断电区域',0,0,100,9,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13310,10000001,72,'ViewKGLBJDDDayReport1_kdstate','馈电状态',0,0,70,10,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13311,10000001,72,'ViewKGLBJDDDayReport1_kdstime','馈电开始时间',0,0,100,-1,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13312,10000001,72,'ViewKGLBJDDDayReport1_kdetime','馈电结束时间',0,0,100,-1,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13313,10000001,72,'ViewKGLBJDDDayReport1_kdcursumtime','馈电累计时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13314,10000001,72,'ViewKGLBJDDDayReport1_bid','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13315,10000001,72,'kdstime2','馈电开始时间',0,0,100,11,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(13316,10000001,72,'kdetime2','馈电结束时间',0,0,100,12,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(13317,10000001,72,'kdcursumtime2','馈电累计时间',0,0,100,13,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(13318,10000001,72,'ViewKGLBJDDDayReport1_datsearch','查询时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,11,0,0,0,0,0),(13319,10000001,72,'ViewKGLBJDDDayReport1_isalarm','报警标志',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13320,10000001,72,'ViewKGLBJDDDayReport1_wzid','安装位置',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13321,10000001,72,'KJ_DeviceAddress3_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13322,10000001,72,'ViewKGLBJDDDayReport1_kzk','控制口',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13323,10000001,72,'ViewKGLBJDDDayReport1_cs','处理措施',0,0,100,14,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13324,10000001,72,'ViewKGLBJDDDayReport1_bz1','措施录入人',0,0,100,15,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13325,10000001,72,'ViewKGLBJDDDayReport1_bz2','措施录入时间',0,0,100,16,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13326,10000001,16,'ViewKGLBJDDDayReport1_point','测点号',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13327,10000001,16,'KJ_DeviceAddress3_wz','安装位置',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13328,10000001,16,'ViewKGLBJDDDayReport1_statename','状态名称',0,0,75,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13329,10000001,16,'ViewKGLBJDDDayReport1_sumcount','累计次数',0,0,69,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13330,10000001,16,'ViewKGLBJDDDayReport1_sumtime','累计时间',0,0,80,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13331,10000001,16,'ViewKGLBJDDDayReport1_stime','本次开始时间',0,0,125,6,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13332,10000001,16,'ViewKGLBJDDDayReport1_etime','本次结束时间',0,0,125,7,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13333,10000001,16,'ViewKGLBJDDDayReport1_cursumtime','本次累计时间',0,0,97,8,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13334,10000001,16,'ViewKGLBJDDDayReport1_wz','断电区域',0,0,100,9,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13335,10000001,16,'ViewKGLBJDDDayReport1_kdstate','馈电状态',0,0,70,10,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13336,10000001,16,'ViewKGLBJDDDayReport1_kdstime','馈电开始时间',0,0,100,-1,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13337,10000001,16,'ViewKGLBJDDDayReport1_kdetime','馈电结束时间',0,0,100,-1,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13338,10000001,16,'ViewKGLBJDDDayReport1_kdcursumtime','馈电累计时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13339,10000001,16,'ViewKGLBJDDDayReport1_bid','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13340,10000001,16,'kdstime2','馈电开始时间',0,0,100,11,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(13341,10000001,16,'kdetime2','馈电结束时间',0,0,100,12,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(13342,10000001,16,'kdcursumtime2','馈电累计时间',0,0,100,13,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(13343,10000001,16,'ViewKGLBJDDDayReport1_datsearch','查询时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,11,0,0,0,0,0),(13344,10000001,16,'ViewKGLBJDDDayReport1_isalarm','报警标志',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13345,10000001,16,'ViewKGLBJDDDayReport1_wzid','安装位置',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13346,10000001,16,'KJ_DeviceAddress3_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13347,10000001,16,'ViewKGLBJDDDayReport1_kzk','控制口',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13348,10000001,16,'ViewKGLBJDDDayReport1_cs','处理措施',0,0,100,14,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13349,10000001,16,'ViewKGLBJDDDayReport1_bz1','措施录入人',0,0,100,15,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(13350,10000001,16,'ViewKGLBJDDDayReport1_bz2','措施录入时间',0,0,100,16,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(15871,10000001,29,'jc_defkzk1_point','测点号',0,0,57,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(15872,10000001,29,'KJ_DeviceAddress3_wz','安装位置',0,0,143,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(15873,10000001,29,'KJ_DeviceType2_Name','设备类型',0,0,198,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(15874,10000001,29,'blnBaoJin','是否报警',0,0,100,4,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(15875,10000001,29,'jc_defkzk1_devid','设备类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(15876,10000001,29,'jc_defkzk1_ID','ID编号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(15877,10000001,29,'KJ_DeviceAddress3_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(15878,10000001,29,'KJ_DeviceType2_devID','设备类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(15879,10000001,29,'KJ_DeviceType2_type','类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(15880,10000001,29,'KJ_DeviceType2_Pl1','开关量0太是否报警',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(15881,10000001,29,'KJ_DeviceType2_Pl2','开关量1太是否报警',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(15882,10000001,29,'KJ_DeviceType2_Pl3','开关量2太是否报警',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(15883,10000001,29,'jc_defkzk1_wzid','安装位置编号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(15884,10000001,29,'KJ_DeviceType2_Bz3','设备型号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(15885,10000001,28,'jc_defkzk1_point','测点号',0,0,57,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(15886,10000001,28,'KJ_DeviceAddress3_wz','安装位置',0,0,143,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(15887,10000001,28,'jc_defkzk1_wzid','安装位置编号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(15888,10000001,28,'KJ_DeviceType2_Name','设备类型',0,0,231,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(15889,10000001,28,'jc_defkzk1_devid','设备类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(15890,10000001,28,'jc_defkzk1_ID','ID编号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(15891,10000001,28,'KJ_DeviceAddress3_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(15892,10000001,28,'KJ_DeviceType2_devID','设备类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(15893,10000001,28,'jc_defkzk1_Z2','上限报警值',0,0,79,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(15894,10000001,28,'jc_defkzk1_Z6','下限报警值',0,0,79,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(15895,10000001,28,'jc_defkzk1_Z3','上限断电值',0,0,79,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(15896,10000001,28,'jc_defkzk1_Z7','下限断电值',0,0,79,7,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(15897,10000001,28,'jc_defkzk1_Z4','上限恢复值',0,0,79,8,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(15898,10000001,28,'jc_defkzk1_Z8','下限恢复值',0,0,79,9,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(15899,10000001,28,'KJ_DeviceType2_type','类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(15900,10000001,28,'KJ_DeviceType2_Bz3','设备型号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16880,10000001,36,'ViewMLLDayReport1_bid','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16881,10000001,36,'KJ_DeviceAddress3_wz','安装位置',0,0,135,1,0,'',0,'','','',0,'',0,0,0,0,0,1,0,0,0),(16882,10000001,36,'ViewMLLDayReport1_point','测点号',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16883,10000001,36,'KJ_DeviceType2_Name','设备类型',0,0,198,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16884,10000001,36,'KJ_DeviceAddress3_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16885,10000001,36,'KJ_DeviceType2_Xs1','单位',0,0,72,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16886,10000001,36,'ViewMLLDayReport1_pjz','平均值',0,0,66,5,0,'',0,'','','',0,'',0,0,0,0,0,0,3,0,0),(16887,10000001,36,'ViewMLLDayReport1_zdz','最大值',0,0,62,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16888,10000001,36,'ViewMLLDayReport1_zdzs','最大值时刻',0,0,148,7,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16889,10000001,36,'ViewMLLDayReport1_sumcountbybj','报警次数',0,0,78,8,0,'',0,'','','',0,'',0,0,0,0,0,0,2,0,0),(16890,10000001,36,'ViewMLLDayReport1_sumtimebybj','报警时间',0,0,73,9,0,'',0,'','','',0,'',0,0,0,0,0,0,2,0,0),(16891,10000001,36,'ViewMLLDayReport1_sumcountbydd','断电次数',0,0,73,10,0,'',0,'','','',0,'',0,0,0,0,0,0,2,0,0),(16892,10000001,36,'ViewMLLDayReport1_sumtimebydd','断电时间',0,0,75,11,0,'',0,'','','',0,'',0,0,0,0,0,0,2,0,0),(16893,10000001,36,'ViewMLLDayReport1_sumcountbykd','馈电异常次数',0,0,83,12,0,'',0,'','','',0,'',0,0,0,0,0,0,2,0,0),(16894,10000001,36,'ViewMLLDayReport1_sumtimebykd','馈电时间',0,0,100,13,0,'',0,'','','',0,'',0,0,0,0,0,0,2,0,0),(16895,10000001,36,'ViewMLLDayReport1_datsearch','查询日期',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,13,0,0,0,0,0),(16896,10000001,36,'ViewMLLDayReport1_devid','设备类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16897,10000001,36,'KJ_DeviceType2_devID','设备类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16898,10000001,36,'ViewMLLDayReport1_wzid','安装位置',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16899,10000001,36,'ViewMLLDayReport1_kh','口号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16900,10000001,36,'ViewMLLDayReport1_fzh','分站号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16901,10000001,36,'ViewMLLDayReport1_state','设备状态',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16932,10000001,37,'ViewJC_BMonth1_point','测点号',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16933,10000001,37,'KJ_DeviceAddress4_wz','安装位置',0,0,146,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16934,10000001,37,'KJ_DeviceType3_Name','设备类型',0,0,127,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16935,10000001,37,'KJ_DeviceType3_Xs1','单位',0,0,47,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16936,10000001,37,'ViewJC_BMonth1_sumcount','累计报警次数',0,0,100,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16937,10000001,37,'ViewJC_BMonth1_bida','关联最大值ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16938,10000001,37,'ViewJC_BMonth1_sumtime','累计报警时间',0,0,100,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16939,10000001,37,'viewmnlbjmaxavgmaxtime2_zdz','最大值',0,0,100,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16940,10000001,37,'viewmnlbjmaxavgmaxtime2_zdzs','最大值时间',0,0,140,7,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16941,10000001,37,'viewmnlbjmaxavgmaxtime2_pjz','平均值',0,0,100,8,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16942,10000001,37,'ViewJC_BMonth1_stime','本次开始时间',0,0,140,9,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16943,10000001,37,'ViewJC_BMonth1_etime','本次结束时间',0,0,140,10,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16944,10000001,37,'ViewJC_BMonth1_cursumtime','本次累计时间',0,0,75,11,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16945,10000001,37,'ViewJC_BMonth1_zdz','本次最大值',0,0,82,12,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16946,10000001,37,'ViewJC_BMonth1_zdzs','本次最大值时刻',0,0,132,13,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16947,10000001,37,'ViewJC_BMonth1_datsearch','查询时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,12,0,0,0,0,0),(16948,10000001,37,'ViewJC_BMonth1_bid','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16949,10000001,37,'ViewJC_BMonth1_wzid','安装位置',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16950,10000001,37,'KJ_DeviceAddress4_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16951,10000001,37,'KJ_DeviceType3_devID','设备类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16952,10000001,37,'ViewJC_BMonth1_state','设备状态',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16953,10000001,37,'BFT_EnumCode5_strEnumDisplay','设备状态',0,0,100,14,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16954,10000001,37,'BFT_EnumCode5_lngEnumValue','设备状态ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16955,10000001,37,'ViewJC_BMonth1_devid','设备类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16956,10000001,37,'ViewJC_BMonth1_cs','处理措施',0,0,100,15,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16957,10000001,37,'ViewJC_BMonth1_bz1','措施录入人',0,0,100,16,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16958,10000001,37,'ViewJC_BMonth1_bz2','措施录入时间',0,0,140,17,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16959,10000001,37,'viewmnlbjmaxavgmaxtime2_pointid','测点id',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16960,10000001,35,'ViewJC_BMonth1_point','测点号',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16961,10000001,35,'KJ_DeviceAddress4_wz','安装位置',0,0,146,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16962,10000001,35,'KJ_DeviceType3_Name','设备类型',0,0,198,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16963,10000001,35,'KJ_DeviceType3_Xs1','单位',0,0,47,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16964,10000001,35,'ViewJC_BMonth1_sumcount','累计报警次数',0,0,100,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16965,10000001,35,'ViewJC_BMonth1_bida','关联最大值ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16966,10000001,35,'ViewJC_BMonth1_sumtime','累计报警时间',0,0,100,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16967,10000001,35,'viewmnlbjmaxavgmaxtime2_zdz','最大值',0,0,100,7,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16968,10000001,35,'viewmnlbjmaxavgmaxtime2_zdzs','最大值时间',0,0,140,8,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16969,10000001,35,'viewmnlbjmaxavgmaxtime2_pjz','平均值',0,0,100,9,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16970,10000001,35,'ViewJC_BMonth1_stime','本次开始时间',0,0,140,10,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16971,10000001,35,'ViewJC_BMonth1_etime','本次结束时间',0,0,140,11,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16972,10000001,35,'ViewJC_BMonth1_cursumtime','本次累计时间',0,0,75,12,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16973,10000001,35,'ViewJC_BMonth1_zdz','本次最大值',0,0,82,13,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16974,10000001,35,'ViewJC_BMonth1_zdzs','本次最大值时刻',0,0,132,14,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16975,10000001,35,'ViewJC_BMonth1_datsearch','查询时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,12,0,0,0,0,0),(16976,10000001,35,'ViewJC_BMonth1_bid','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16977,10000001,35,'ViewJC_BMonth1_wzid','安装位置',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16978,10000001,35,'KJ_DeviceAddress4_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16979,10000001,35,'KJ_DeviceType3_devID','设备类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16980,10000001,35,'ViewJC_BMonth1_state','设备状态',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16981,10000001,35,'BFT_EnumCode5_strEnumDisplay','设备状态',0,0,100,15,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16982,10000001,35,'BFT_EnumCode5_lngEnumValue','设备状态ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16983,10000001,35,'ViewJC_BMonth1_devid','设备类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16984,10000001,35,'ViewJC_BMonth1_pjz','本次平均值',0,0,100,16,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16985,10000001,35,'ViewJC_BMonth1_cs','处理措施',0,0,100,17,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16986,10000001,35,'ViewJC_BMonth1_bz1','措施录入人',0,0,100,18,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16987,10000001,35,'ViewJC_BMonth1_bz2','措施录入时间',0,0,140,19,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16988,10000001,35,'viewmnlbjmaxavgmaxtime2_pointid','测点id',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16989,10000001,34,'ViewJC_BMonth1_point','测点号',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16990,10000001,34,'KJ_DeviceAddress4_wz','安装位置',0,0,146,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16991,10000001,34,'KJ_DeviceType3_Name','设备类型',0,0,127,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16992,10000001,34,'KJ_DeviceType3_Xs1','单位',0,0,47,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16993,10000001,34,'ViewJC_BMonth1_sumcount','累计报警次数',0,0,100,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16994,10000001,34,'ViewJC_BMonth1_bida','关联最大值ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16995,10000001,34,'ViewJC_BMonth1_sumtime','累计报警时间',0,0,100,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16996,10000001,34,'viewmnlbjmaxavgmaxtime2_zdz','最大值',0,0,100,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16997,10000001,34,'viewmnlbjmaxavgmaxtime2_zdzs','最大值时间',0,0,140,7,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16998,10000001,34,'viewmnlbjmaxavgmaxtime2_pjz','平均值',0,0,100,8,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(16999,10000001,34,'ViewJC_BMonth1_stime','本次开始时间',0,0,140,9,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(17000,10000001,34,'ViewJC_BMonth1_etime','本次结束时间',0,0,140,10,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(17001,10000001,34,'ViewJC_BMonth1_cursumtime','本次累计时间',0,0,75,11,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(17002,10000001,34,'ViewJC_BMonth1_zdz','本次最大值',0,0,82,12,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(17003,10000001,34,'ViewJC_BMonth1_zdzs','本次最大值时刻',0,0,132,13,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(17004,10000001,34,'ViewJC_BMonth1_datsearch','查询时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,12,0,0,0,0,0),(17005,10000001,34,'ViewJC_BMonth1_bid','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(17006,10000001,34,'ViewJC_BMonth1_wzid','安装位置',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(17007,10000001,34,'KJ_DeviceAddress4_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(17008,10000001,34,'KJ_DeviceType3_devID','设备类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(17009,10000001,34,'ViewJC_BMonth1_state','设备状态',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(17010,10000001,34,'BFT_EnumCode5_strEnumDisplay','设备状态',0,0,100,14,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(17011,10000001,34,'BFT_EnumCode5_lngEnumValue','设备状态ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(17012,10000001,34,'ViewJC_BMonth1_devid','设备类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(17013,10000001,34,'ViewJC_BMonth1_cs','处理措施',0,0,100,15,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(17014,10000001,34,'ViewJC_BMonth1_bz1','措施录入人',0,0,100,16,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(17015,10000001,34,'ViewJC_BMonth1_bz2','措施录入时间',0,0,140,17,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(17016,10000001,34,'viewmnlbjmaxavgmaxtime2_pointid','测点id',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18862,10000001,12,'ViewMLLTJZReport1_point','测点号',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18863,10000001,12,'KJ_DeviceType2_Name','设备类型',0,0,186,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18864,10000001,12,'ViewMLLTJZReport1_devid','设备类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18865,10000001,12,'KJ_DeviceType2_Xs1','单位',0,0,49,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18866,10000001,12,'KJ_DeviceAddress3_wz','安装位置',0,0,154,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18867,10000001,12,'KJ_DeviceDefInfo6_z2','上限报警值',0,0,100,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18868,10000001,12,'KJ_DeviceDefInfo6_z3','上限断电值',0,0,100,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18869,10000001,12,'KJ_DeviceDefInfo6_z4','上限恢复值',0,0,100,7,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18870,10000001,12,'ViewMLLTJZReport1_wzid','安装位置',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18871,10000001,12,'ViewMLLTJZReport1_id','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18872,10000001,12,'KJ_DeviceType2_devID','设备类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18873,10000001,12,'KJ_DeviceAddress3_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18874,10000001,12,'viewfiveminutemaxandtime4_zdz','最大值',0,0,100,8,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18875,10000001,12,'viewfiveminutemaxandtime4_zdzs','最大值时间',0,0,125,9,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18876,10000001,12,'viewfiveminutemaxandtime4_pjz','平均值',0,0,100,10,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18877,10000001,12,'ViewMLLTJZReport1_timer1','每次开始时间',0,0,139,11,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18878,10000001,12,'ViewMLLTJZReport1_timerenda','每次结束时间',0,0,128,12,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18879,10000001,12,'ViewMLLTJZReport1_zdz','每次最大值',0,0,73,13,3,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18880,10000001,12,'ViewMLLTJZReport1_zxz','每次最小值',0,0,84,14,2,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18881,10000001,12,'ViewMLLTJZReport1_pjz','每次平均值',0,0,94,15,5,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18882,10000001,12,'pjzcacl','每次平均值',0,0,100,-1,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(18883,10000001,12,'ViewMLLTJZReport1_datsearch','查询时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,12,0,0,0,0,0),(18884,10000001,12,'ViewMLLTJZReport1_sjhour','小时',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18885,10000001,12,'ViewMLLTJZReport1_pointid','测点id',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18886,10000001,12,'KJ_DeviceDefInfo6_ID','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18887,10000001,12,'KJ_DeviceDefInfo6_pointid','测点ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18888,10000001,12,'ViewMLLTJZReport1_timer','每次开始时间',0,0,137,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18889,10000001,12,'ViewMLLTJZReport1_timerend','每次结束时间',0,0,134,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18890,10000001,12,'ViewMLLTJZReport1_bid','关联最大值ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18891,10000001,12,'viewfiveminutemaxandtime4_pointid','测点ID编号[历史表关联字段]',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18985,10000001,80,'ViewMLLDayReport1_bid','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18986,10000001,80,'ViewMLLDayReport1_point','测点号',0,0,70,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18987,10000001,80,'KJ_DeviceAddress3_wz','安装位置',0,0,191,2,0,'',0,'','','',0,'',0,0,0,0,0,1,0,0,0),(18988,10000001,80,'KJ_DeviceType2_Name','设备类型',0,0,182,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18989,10000001,80,'KJ_DeviceAddress3_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18990,10000001,80,'KJ_DeviceType2_Xs1','单位',0,0,47,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18991,10000001,80,'KJ_DeviceDefInfo6_z2','报警值',0,0,55,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18992,10000001,80,'KJ_DeviceDefInfo6_z3','断电值',0,0,51,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18993,10000001,80,'KJ_DeviceDefInfo6_z4','复电值',0,0,52,7,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18994,10000001,80,'ViewMLLDayReport1_zdz','最大值',0,0,62,8,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18995,10000001,80,'ViewMLLDayReport1_zxz','最小值',0,0,54,9,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18996,10000001,80,'ViewMLLDayReport1_pjz','平均值',0,0,58,10,0,'',0,'','','',0,'',0,0,0,0,0,0,3,0,0),(18997,10000001,80,'ViewMLLDayReport1_zdzs','最大值时刻',0,0,148,11,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(18998,10000001,80,'ViewMLLDayReport1_sumcountbydd','断电次数',0,0,56,12,0,'',0,'','','',0,'',0,0,0,0,0,0,2,0,0),(18999,10000001,80,'ViewMLLDayReport1_sumtimebydd','累计断电时间',0,0,75,13,0,'',0,'','','',0,'',0,0,0,0,0,0,2,0,0),(19000,10000001,80,'ViewMLLDayReport1_sumcountbybj','报警次数',0,0,57,14,0,'',0,'','','',0,'',0,0,0,0,0,0,2,0,0),(19001,10000001,80,'ViewMLLDayReport1_sumtimebybj','累计报警时间',0,0,73,15,0,'',0,'','','',0,'',0,0,0,0,0,0,2,0,0),(19002,10000001,80,'ViewMLLDayReport1_sumcountbykdfdsb','馈电异常次数',0,0,100,16,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19003,10000001,80,'ViewMLLDayReport1_sumtimebykdfdsb','累计馈电异常',0,0,100,17,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19004,10000001,80,'ViewMLLDayReport1_sumcountbygz','故障次数',0,0,100,18,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19005,10000001,80,'ViewMLLDayReport1_sumtimebygz','累计故障时间',0,0,100,19,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19006,10000001,80,'ViewMLLDayReport1_datsearch','查询日期',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,13,0,0,0,0,0),(19007,10000001,80,'ViewMLLDayReport1_devid','设备类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19008,10000001,80,'KJ_DeviceType2_devID','设备类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19009,10000001,80,'ViewMLLDayReport1_wzid','安装位置',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19010,10000001,80,'ViewMLLDayReport1_kh','口号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19011,10000001,80,'ViewMLLDayReport1_fzh','分站号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19012,10000001,80,'ViewMLLDayReport1_state','设备状态',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19013,10000001,80,'ViewMLLDayReport1_bida','defid',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19014,10000001,80,'KJ_DeviceDefInfo6_ID','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19015,10000001,80,'KJ_DeviceDefInfo6_pointid','测点ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19016,10000001,80,'KJ_DeviceType2_Bz3','设备种类',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19397,10000001,84,'viewkglkddayreport1_point','测点号',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19398,10000001,84,'KJ_DeviceAddress3_wz','安装位置',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19399,10000001,84,'viewkglkddayreport1_wzid','安装位置',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19400,10000001,84,'KJ_DeviceType2_Name','设备类型',0,0,186,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19401,10000001,84,'viewkglkddayreport1_devid','设备类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19402,10000001,84,'KJ_DeviceType2_Xs1','单位',0,0,55,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19403,10000001,84,'viewkglkddayreport1_kdsumcountfdsb','馈电异常次数',0,0,100,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19404,10000001,84,'viewkglkddayreport1_kdsumtimefdsb','馈电异常时间',0,0,100,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19405,10000001,84,'viewkglkddayreport1_wz','断电区域',0,0,67,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19406,10000001,84,'viewkglkddayreport1_kdstate','馈电状态',0,0,67,7,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19407,10000001,84,'viewkglkddayreport1_kdstime','馈电开始时间',0,0,125,8,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19408,10000001,84,'viewkglkddayreport1_kdetime','馈电结束时间',0,0,125,9,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19409,10000001,84,'viewkglkddayreport1_kdcursumtime','馈电累计时间',0,0,100,10,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19410,10000001,84,'viewkglkddayreport1_datsearch','查询日期',0,0,100,-1,0,'日期',0,'','','',0,'',0,0,0,12,0,0,0,0,0),(19411,10000001,84,'viewkglkddayreport1_cs','处理措施',0,0,100,11,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19412,10000001,84,'viewkglkddayreport1_bid','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19413,10000001,84,'KJ_DeviceAddress3_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19414,10000001,84,'KJ_DeviceType2_devID','设备类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19415,10000001,84,'viewkglkddayreport1_bz1','措施录入人',0,0,100,12,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19416,10000001,84,'viewkglkddayreport1_bz2','措施录入时间',0,0,135,13,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19443,10000001,85,'viewkdstatereport1_point','测点号',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19444,10000001,85,'KJ_DeviceType2_Name','设备类型',0,0,192,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19445,10000001,85,'viewkdstatereport1_devid','设备类型编号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19446,10000001,85,'KJ_DeviceType2_Xs1','单位',0,0,50,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19447,10000001,85,'KJ_DeviceAddress3_wz','安装位置',0,0,157,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19448,10000001,85,'viewkdstatereport1_wzid','安装位置编号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19449,10000001,85,'viewkdstatereport1_wz','控制区域',0,0,172,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19450,10000001,85,'viewkdstatereport1_datsearch','查询时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,12,0,0,0,0,0),(19451,10000001,85,'viewkdstatereport1_kdsumcountfdsb','馈电异常累计次数',0,0,100,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19452,10000001,85,'viewkdstatereport1_kdsumtmefdsb','馈电异常累计时间',0,0,100,7,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19453,10000001,85,'viewkdstatereport1_kdstime','本次馈电开始时间',0,0,100,8,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19454,10000001,85,'viewkdstatereport1_kdetime','本次馈电结束时间',0,0,100,9,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19455,10000001,85,'viewkdstatereport1_kdcursumtime','本次馈电累积时间',0,0,100,10,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19456,10000001,85,'viewkdstatereport1_state','设备状态',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19457,10000001,85,'BFT_EnumCode4_strEnumDisplay','设备状态',0,0,100,11,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19458,10000001,85,'viewkdstatereport1_toid','馈电异常去向id',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19459,10000001,85,'KJ_DeviceType2_type','类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19460,10000001,85,'viewkdstatereport1_kdssz','馈电状态值',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19461,10000001,85,'viewkdstatereport1_kdstate','馈电状态',0,0,100,12,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19462,10000001,85,'KJ_DeviceType2_devID','设备类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19463,10000001,85,'KJ_DeviceAddress3_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19464,10000001,85,'BFT_EnumCode4_lngEnumValue','设备状态ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19465,10000001,85,'viewkdstatereport1_cs','处理措施',0,0,100,13,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19466,10000001,85,'viewkdstatereport1_bz1','措施录入人',0,0,100,14,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19467,10000001,85,'viewkdstatereport1_bz2','措施录入时间',0,0,100,15,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(19468,10000001,85,'viewkdstatereport1_type','数据状态',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21074,10000001,81,'viewmnlbjddmonth1_point','测点号',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21075,10000001,81,'viewmnlbjddmonth1_wz','安装位置',0,0,139,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21076,10000001,81,'KJ_DeviceType2_Xs1','单位',0,0,100,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21077,10000001,81,'viewmnlbjddmonth1_devname','设备类型',0,0,207,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21078,10000001,81,'BFT_EnumCode4_strEnumDisplay','种类名称',0,0,100,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21079,10000001,81,'viewmnlbjddmonth1_bjcs','报警次数',0,0,67,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21080,10000001,81,'viewmnlbjddmonth1_bjstarttime','报警对应时间',0,0,140,7,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21081,10000001,81,'viewmnlbjddmonth1_bjendtime','报警解除时间',0,0,139,8,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21082,10000001,81,'viewmnlbjddmonth1_bjpjzzdzzdzs','报警平均值/最大值/最大值时刻',0,0,208,9,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21083,10000001,81,'viewmnlbjddmonth1_bjljscall','报警累计时间',0,0,91,10,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21084,10000001,81,'viewmnlbjddmonth1_ddcs','断电次数',0,0,67,11,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21085,10000001,81,'viewmnlbjddmonth1_ddstarttime','断电对应时间',0,0,141,12,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21086,10000001,81,'viewmnlbjddmonth1_ddendtime','断电解除时间',0,0,141,13,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21087,10000001,81,'viewmnlbjddmonth1_ddljsc','本次断电累计时间',0,0,115,14,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21088,10000001,81,'viewmnlbjddmonth1_ddstartendtime','断电时刻及复电时刻',0,0,277,15,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21089,10000001,81,'viewmnlbjddmonth1_ddpjzzdzzdzs','断电平均值/最大值/最大值时刻',0,0,208,16,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21090,10000001,81,'viewmnlbjddmonth1_ddljscall','断电累计时间',0,0,91,17,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21091,10000001,81,'viewmnlbjddmonth1_kdfdsbcs','馈电异常次数',0,0,100,18,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21092,10000001,81,'viewmnlbjddmonth1_kdfdsbstarttime','馈电对应时间',0,0,125,19,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21093,10000001,81,'viewmnlbjddmonth1_kdfdsbendtime','馈电解除时间',0,0,125,20,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21094,10000001,81,'viewmnlbjddmonth1_kdfdsbljscall','馈电累计时间',0,0,100,21,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21095,10000001,81,'viewmnlbjddmonth1_datsearch','查询时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21096,10000001,81,'viewmnlbjddmonth1_bjcuoshi','报警措施及时刻',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21097,10000001,81,'viewmnlbjddmonth1_ddcuoshi','断电措施及时刻',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21098,10000001,81,'bjddcuoshi','处理措施及时刻',0,0,231,22,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(21099,10000001,81,'viewmnlbjddmonth1_PointID','测点ID编号[历史表关联字段]',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21100,10000001,81,'viewmnlbjddmonth1_devid','设备类型ID(即驱动编号)0-20：用于分站类型 ',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21101,10000001,81,'KJ_DeviceType2_Bz3','设备种类',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21102,10000001,81,'KJ_DeviceType2_devID','设备类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21103,10000001,81,'BFT_EnumCode4_lngEnumValue','种类ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21616,10000001,83,'ViewKGLBJDDDayReport1_point','测点号',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21617,10000001,83,'KJ_DeviceAddress3_wz','安装位置',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21618,10000001,83,'BFT_EnumCode5_strEnumDisplay','种类名称',0,0,100,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21619,10000001,83,'ViewKGLBJDDDayReport1_statename','状态名称',0,0,75,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21620,10000001,83,'ViewKGLBJDDDayReport1_sumcountfdsb','累计次数',0,0,100,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21621,10000001,83,'ViewKGLBJDDDayReport1_sumtimefdsb','累计时间',0,0,100,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21622,10000001,83,'ViewKGLBJDDDayReport1_stime','本次开始时间',0,0,125,7,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21623,10000001,83,'ViewKGLBJDDDayReport1_etime','本次结束时间',0,0,125,8,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21624,10000001,83,'ViewKGLBJDDDayReport1_cursumtime','本次累计时间',0,0,97,9,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21625,10000001,83,'ViewKGLBJDDDayReport1_wz','断电区域',0,0,100,10,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21626,10000001,83,'ViewKGLBJDDDayReport1_kdstate','馈电状态',0,0,70,11,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21627,10000001,83,'ViewKGLBJDDDayReport1_kdstime','馈电开始时间',0,0,125,-1,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21628,10000001,83,'ViewKGLBJDDDayReport1_kdetime','馈电结束时间',0,0,125,-1,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21629,10000001,83,'ViewKGLBJDDDayReport1_kdcursumtime','馈电累计时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21630,10000001,83,'ViewKGLBJDDDayReport1_bid','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21631,10000001,83,'ViewKGLBJDDDayReport1_datsearch','查询时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,12,0,0,0,0,0),(21632,10000001,83,'ViewKGLBJDDDayReport1_wzid','安装位置',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21633,10000001,83,'KJ_DeviceAddress3_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21634,10000001,83,'kdstimea','馈电开始时间',0,0,125,12,0,'日期时间',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(21635,10000001,83,'kdetimea','馈电结束时间',0,0,125,13,0,'日期时间',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(21636,10000001,83,'kdcursumtimea','馈电累计时间',0,0,100,14,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(21637,10000001,83,'ViewKGLBJDDDayReport1_remark','异常原因',0,0,180,15,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21638,10000001,83,'ViewKGLBJDDDayReport1_cs','处理措施',0,0,180,16,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21639,10000001,83,'ViewKGLBJDDDayReport1_bz1','处理人',0,0,100,17,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21640,10000001,83,'ViewKGLBJDDDayReport1_bz2','处理时间',0,0,140,18,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21641,10000001,83,'KJ_DeviceType2_devID','设备类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21642,10000001,83,'KJ_DeviceType2_Bz3','设备种类',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21643,10000001,83,'ViewKGLBJDDDayReport1_devid','设备类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(21644,10000001,83,'BFT_EnumCode5_lngEnumValue','种类ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26576,10000001,1,'BFT_User1_UserCode','用户编码',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26577,10000001,1,'BFT_User1_UserName','用户姓名',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26578,10000001,1,'BFT_User1_DeptCode','所属单位编码',0,0,100,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26579,10000001,1,'BFT_User1_CreateName','创建人',0,0,100,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26580,10000001,1,'BFT_User1_CreateTime','创建时间',0,0,189,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26581,10000001,1,'BFT_User1_ContactPhone','联系电话',0,0,100,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26582,10000001,1,'BFT_User1_UserID','用户ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26583,10000001,1,'BFT_User1_UserFlag','启用',0,0,100,7,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26584,10000001,1,'BFT_User1_UserType','用户类型',0,0,100,8,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26585,10000001,2,'BFT_Role1_RoleCode','角色编号',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26586,10000001,2,'BFT_Role1_RoleName','角色名称',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26587,10000001,2,'BFT_Role1_CreateName','创建人',0,0,100,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26588,10000001,2,'BFT_Role1_RoleDescription','角色描述',0,0,177,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26589,10000001,2,'BFT_Role1_CreateTime','创建时间',0,0,176,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26590,10000001,2,'BFT_Role1_RoleID','角色ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26591,10000001,3,'BFT_Right1_CreateName','创建人',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26592,10000001,3,'BFT_Right1_RightName','权限名称',0,0,199,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26593,10000001,3,'BFT_Right1_RightCode','权限编号',0,0,168,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26594,10000001,3,'BFT_Right1_RightType','权限类型',0,0,100,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26595,10000001,3,'BFT_Right1_RightDescription','权限描述',0,0,235,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26596,10000001,3,'BFT_Right1_CreateTime','创建时间',0,0,100,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26597,10000001,3,'BFT_Right1_RightID','权限ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26598,10000001,4,'BFT_Menu1_MenuCode','菜单编码',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26599,10000001,4,'BFT_Menu1_MenuName','菜单名称',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26600,10000001,4,'BFT_Menu1_Remark1','菜单简称',0,0,100,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26601,10000001,4,'BFT_Menu1_MenuURL','菜单连接地址',0,0,100,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26602,10000001,4,'BFT_Menu1_MenuFile','菜单所属程序文件',0,0,100,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26603,10000001,4,'BFT_Menu1_MenuNamespace','菜单所属文件命名空间',0,0,100,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26604,10000001,4,'BFT_Menu1_MenuParams','菜单窗体参数',0,0,100,7,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26605,10000001,4,'BFT_Menu1_MenuStatus','菜单是否在菜单树中进行加载',0,0,100,8,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26606,10000001,4,'BFT_Menu1_MenuForSys','菜单响应类型',0,0,100,9,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26607,10000001,4,'BFT_Menu1_ShowType','模态标记',0,0,100,10,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26608,10000001,4,'BFT_Menu1_RightCode','权限编号',0,0,100,11,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26609,10000001,4,'BFT_Menu1_RequestCode','请求库编码',0,0,100,12,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26610,10000001,4,'BFT_Menu1_MenuID','菜单编号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26611,10000001,4,'BFT_Menu1_MenuParent','父菜单编号',0,0,100,13,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26612,10000001,4,'BFT_Menu1_MenuMemo','菜单标志位',0,0,100,14,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26613,10000001,7,'BFT_RunLog1_CreateDate','生成日期',0,0,144,1,0,'日期时间',0,'','','',0,'',0,0,0,12,0,0,0,0,0),(26614,10000001,7,'BFT_RunLog1_ThreadNumber','线程号',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26615,10000001,7,'BFT_RunLog1_LogLevel','日志等级',0,0,100,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26616,10000001,7,'BFT_RunLog1_Logger','记录器',0,0,100,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26617,10000001,7,'BFT_RunLog1_MessageContent','日志内容',0,0,100,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26618,10000001,7,'BFT_RunLog1_Id','编号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26619,10000001,8,'BFT_request1_RequestCode','请求编码',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26620,10000001,8,'BFT_request1_RequestName','请求名称',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26621,10000001,8,'BFT_request1_MenuURL','菜单连接地址',0,0,100,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26622,10000001,8,'BFT_request1_MenuFile','菜单所属程序文件',0,0,100,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26623,10000001,8,'BFT_request1_MenuNamespace','菜单所属文件命名空间',0,0,100,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26624,10000001,8,'BFT_request1_MenuParams','菜单窗体参数',0,0,100,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26625,10000001,8,'BFT_request1_ShowType','模态标记',0,0,100,7,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26626,10000001,8,'BFT_request1_LoadByIframe','窗体打开次数',0,0,100,8,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26627,10000001,8,'BFT_request1_MenuForSys','菜单响应类型',0,0,100,9,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26628,10000001,8,'BFT_request1_RequestID','请求编号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26629,10000001,8,'BFT_request1_BZ1','菜单方法名称',0,0,100,10,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26630,10000001,74,'BFT_User2_UserCode','用户编码',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26631,10000001,74,'BFT_Userrole1_UserID','用户ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26632,10000001,74,'BFT_User2_UserName','用户姓名',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26633,10000001,74,'BFT_User2_DeptCode','所属单位编码',0,0,100,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26634,10000001,74,'BFT_User2_CreateName','创建人',0,0,100,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26635,10000001,74,'BFT_User2_CreateTime','创建时间',0,0,100,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26636,10000001,74,'BFT_User2_ContactPhone','联系电话',0,0,100,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26637,10000001,74,'BFT_User2_UserFlag','启用',0,0,100,7,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26638,10000001,74,'BFT_Role3_RoleName','角色名称',0,0,100,8,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26639,10000001,74,'BFT_Userrole1_RoleID','角色ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26640,10000001,74,'BFT_Userrole1_UserRoleID','用户角色ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26641,10000001,74,'BFT_User2_UserID','用户ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26642,10000001,74,'BFT_Role3_RoleID','角色ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26643,10000001,6,'ViewJC_BMonth1_point','测点号',0,0,100,1,0,'',0,'','','',0,'',0,1,0,0,0,0,0,0,0),(26644,10000001,6,'KJ_DeviceAddress4_wz','安装位置',0,0,146,2,0,'',0,'','','',0,'',0,1,0,0,0,0,0,0,0),(26645,10000001,6,'KJ_DeviceType3_Name','设备类型',0,0,216,3,0,'',0,'','','',0,'',0,1,0,0,0,0,0,0,0),(26646,10000001,6,'KJ_DeviceType3_Xs1','单位',0,0,47,4,0,'',0,'','','',0,'',0,1,0,0,0,0,0,0,0),(26647,10000001,6,'KJ_DeviceDefInfo6_z2','报警门限',0,0,100,5,0,'',0,'','','',0,'',0,1,0,0,0,0,0,0,0),(26648,10000001,6,'ViewJC_BMonth1_sumcount','报警次数',0,0,82,6,0,'',0,'','','',0,'',0,1,0,0,0,0,0,0,0),(26649,10000001,6,'ViewJC_BMonth1_sumtime','累计报警时间',0,0,100,7,0,'',0,'','','',0,'',0,1,0,0,0,0,0,0,0),(26650,10000001,6,'viewmnlbjmaxavgmaxtime2_zdz','最大值',0,0,58,8,0,'',0,'','','',0,'',0,1,0,0,0,0,0,0,0),(26651,10000001,6,'viewmnlbjmaxavgmaxtime2_zdzs','最大值时间',0,0,138,9,0,'日期时间',0,'','','',0,'',0,1,0,0,0,0,0,0,0),(26652,10000001,6,'viewmnlbjmaxavgmaxtime2_pjz','平均值',0,0,48,10,0,'',0,'','','',0,'',0,1,0,0,0,0,0,0,0),(26653,10000001,6,'ViewJC_BMonth1_stime','本次开始时间',0,0,128,11,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26654,10000001,6,'ViewJC_BMonth1_etime','本次结束时间',0,0,140,12,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26655,10000001,6,'ViewJC_BMonth1_cursumtime','本次累计时间',0,0,75,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26656,10000001,6,'cusSutime','本次累计时间',0,0,100,13,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(26657,10000001,6,'ViewJC_BMonth1_pjz','本次平均值',0,0,100,14,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26658,10000001,6,'ViewJC_BMonth1_zdz','本次最大值',0,0,82,15,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26659,10000001,6,'ViewJC_BMonth1_zdzs','本次最大值时刻',0,0,132,16,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26660,10000001,6,'ViewJC_BMonth1_cs','处理措施',0,0,180,17,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26661,10000001,6,'ViewJC_BMonth1_bz2','处理时间',0,0,140,18,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26662,10000001,6,'ViewJC_BMonth1_datsearch','查询时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,12,0,0,0,0,0),(26663,10000001,6,'ViewJC_BMonth1_bid','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26664,10000001,6,'ViewJC_BMonth1_wzid','安装位置',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26665,10000001,6,'KJ_DeviceAddress4_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26666,10000001,6,'KJ_DeviceType3_devID','设备类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26667,10000001,6,'ViewJC_BMonth1_state','设备状态',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26668,10000001,6,'BFT_EnumCode5_strEnumDisplay','设备状态',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26669,10000001,6,'BFT_EnumCode5_lngEnumValue','设备状态ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26670,10000001,6,'ViewJC_BMonth1_devid','设备类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26671,10000001,6,'viewmnlbjmaxavgmaxtime2_pointid','测点id',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26672,10000001,6,'ViewJC_BMonth1_bida','关联最大值ID',0,0,100,-1,0,'',0,'','','',0,'',0,1,0,0,1,0,0,0,0),(26673,10000001,6,'ViewJC_BMonth1_remark','异常原因',0,0,180,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26674,10000001,6,'ViewJC_BMonth1_bz1','处理人',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26675,10000001,6,'ViewJC_BMonth1_pointid','测点ID编号[历史表关联字段]',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26676,10000001,6,'KJ_DeviceDefInfo6_ID','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26677,10000001,6,'KJ_DeviceDefInfo6_pointid','测点ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26678,10000001,5,'ViewMLLDayReport1_bid','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26679,10000001,5,'ViewMLLDayReport1_point','测点号',0,0,70,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26680,10000001,5,'KJ_DeviceAddress3_wz','安装位置',0,0,150,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26681,10000001,5,'KJ_DeviceType2_Name','设备类型',0,0,120,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26682,10000001,5,'KJ_DeviceAddress3_wzID','',0,0,0,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26683,10000001,5,'KJ_DeviceType2_Xs1','单位',0,0,100,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26684,10000001,5,'KJ_DeviceDefInfo6_z2','上限报警',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26685,10000001,5,'Bjmx','报警门限',0,0,100,5,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(26686,10000001,5,'myxxbj','下限报警',0,0,100,6,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(26687,10000001,5,'KJ_DeviceDefInfo6_z3','上限断电',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26688,10000001,5,'ddmx','断电门限',0,0,100,7,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(26689,10000001,5,'KJ_DeviceDefInfo6_z4','上限复电',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26690,10000001,5,'fdmx','复电门限',0,0,100,8,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(26691,10000001,5,'ViewMLLDayReport1_pjz','平均值',0,0,58,9,0,'',0,'','','',0,'',0,0,0,0,0,0,3,0,0),(26692,10000001,5,'ViewMLLDayReport1_zxz','最小值',0,0,54,10,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26693,10000001,5,'ViewMLLDayReport1_zdz','最大值',0,0,62,11,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26694,10000001,5,'ViewMLLDayReport1_zdzs','最大值时刻',0,0,148,12,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26695,10000001,5,'ViewMLLDayReport1_sumcountbybj','报警次数',0,0,57,13,0,'',0,'','','',0,'',0,0,0,0,0,0,2,0,0),(26696,10000001,5,'ViewMLLDayReport1_sumtimebybj','累计报警时间',0,0,91,14,0,'',0,'','','',0,'',0,0,0,0,0,0,2,0,0),(26697,10000001,5,'ViewMLLDayReport1_sumcountbydd','断电次数',0,0,56,15,0,'',0,'','','',0,'',0,0,0,0,0,0,2,0,0),(26698,10000001,5,'ViewMLLDayReport1_sumtimebydd','累计断电时间',0,0,91,16,0,'',0,'','','',0,'',0,0,0,0,0,0,2,0,0),(26699,10000001,5,'ViewMLLDayReport1_sumcountbykd','馈电异常次数',0,0,91,17,0,'',0,'','','',0,'',0,0,0,0,0,0,2,0,0),(26700,10000001,5,'ViewMLLDayReport1_sumtimebykd','馈电异常累计时间',0,0,115,18,0,'',0,'','','',0,'',0,0,0,0,0,0,2,0,0),(26701,10000001,5,'ViewMLLDayReport1_sumcountbygz','故障次数',0,0,100,19,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26702,10000001,5,'ViewMLLDayReport1_sumtimebygz','累计故障时间',0,0,100,20,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26703,10000001,5,'ViewMLLDayReport1_datsearch','查询日期',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,13,0,0,0,0,0),(26704,10000001,5,'ViewMLLDayReport1_devid','设备类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26705,10000001,5,'KJ_DeviceType2_devID','',0,0,0,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26706,10000001,5,'ViewMLLDayReport1_wzid','安装位置',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26707,10000001,5,'ViewMLLDayReport1_kh','口号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26708,10000001,5,'ViewMLLDayReport1_fzh','分站号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26709,10000001,5,'ViewMLLDayReport1_state','设备状态',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26710,10000001,5,'ViewMLLDayReport1_bida','defid',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26711,10000001,5,'KJ_DeviceDefInfo6_ID','',0,0,0,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26712,10000001,5,'KJ_DeviceDefInfo6_pointid','',0,0,0,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26713,10000001,5,'KJ_DeviceType2_Bz4','设备型号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26714,10000001,5,'KJ_DeviceType2_Bz3','设备种类',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26715,10000001,5,'KJ_DeviceDefInfo6_z6','下限报警值',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26762,10000001,9,'ViewMLLDDDayReport1_point','测点号',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26763,10000001,9,'KJ_DeviceAddress3_wz','安装位置',0,0,126,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26764,10000001,9,'KJ_DeviceType2_Name','设备类型',0,0,202,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26765,10000001,9,'KJ_DeviceType2_Xs1','单位',0,0,51,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26766,10000001,9,'KJ_DeviceDefInfo8_z3','断电门限',0,0,100,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26767,10000001,9,'KJ_DeviceDefInfo8_z4','复电门限',0,0,100,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26768,10000001,9,'view_3montha6_sumcount','断电次数',0,0,100,7,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26769,10000001,9,'view_3montha6_sumtime','累计断电时间',0,0,100,8,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26770,10000001,9,'viewmnlddmaxavgmaxtime5_zdz','最大值',0,0,100,9,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26771,10000001,9,'viewmnlddmaxavgmaxtime5_zdzs','最大值时刻',0,0,133,10,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26772,10000001,9,'viewmnlddmaxavgmaxtime5_pjz','平均值',0,0,100,11,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26773,10000001,9,'ViewMLLDDDayReport1_wzid','安装位置',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26774,10000001,9,'KJ_DeviceType2_devID','设备类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26775,10000001,9,'KJ_DeviceAddress3_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26776,10000001,9,'afd','本次断电累计时间',0,0,100,12,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(26777,10000001,9,'ViewMLLDDDayReport1_stime','本次断电开始时间',0,0,130,13,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26778,10000001,9,'ViewMLLDDDayReport1_etime','本次断电结束时间',0,0,132,14,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26779,10000001,9,'ViewMLLDDDayReport1_pjz','本次平均值',0,0,73,15,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26780,10000001,9,'ViewMLLDDDayReport1_zdz','本次最大值',0,0,97,16,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26781,10000001,9,'ViewMLLDDDayReport1_zdzs','本次最大值时刻',0,0,125,17,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26782,10000001,9,'ViewMLLDDDayReport1_bid','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26783,10000001,9,'ViewMLLDDDayReport1_wz','断电区域',0,0,103,18,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26784,10000001,9,'ViewMLLDDDayReport1_kdstate','馈电状态',0,0,100,19,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26785,10000001,9,'ViewMLLDDDayReport1_kdstime','本次馈电开始时间',0,0,125,20,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26786,10000001,9,'ViewMLLDDDayReport1_kdetime','本次馈电结束时间',0,0,125,21,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26787,10000001,9,'ViewMLLDDDayReport1_kdcursumtime','本次馈电累计时间',0,0,100,22,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26788,10000001,9,'BFT_EnumCode4_lngEnumValue','设备状态ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26789,10000001,9,'ViewMLLDDDayReport1_cs','处理措施',0,0,180,23,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26790,10000001,9,'ViewMLLDDDayReport1_bz2','处理时间',0,0,140,24,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26791,10000001,9,'ViewMLLDDDayReport1_datsearch','查询时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,12,0,0,0,0,0),(26792,10000001,9,'ViewMLLDDDayReport1_state','设备状态',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26793,10000001,9,'BFT_EnumCode4_strEnumDisplay','设备状态',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26794,10000001,9,'ViewMLLDDDayReport1_cursumtime','本次断电累计时间',0,0,110,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26795,10000001,9,'ViewMLLDDDayReport1_devid','设备类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26796,10000001,9,'ViewMLLDDDayReport1_bidb','关联断电次数',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26797,10000001,9,'view_3montha6_bida','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26798,10000001,9,'ViewMLLDDDayReport1_kdpid','关联断电ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26799,10000001,9,'ViewMLLDDDayReport1_kdssz','馈电状态值',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26800,10000001,9,'KJ_DeviceType2_type','类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26801,10000001,9,'ViewMLLDDDayReport1_bida','关联最大值',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26802,10000001,9,'viewmnlddmaxavgmaxtime5_pointid','测点id',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26803,10000001,9,'ViewMLLDDDayReport1_remark','异常原因',0,0,180,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26804,10000001,9,'ViewMLLDDDayReport1_bz1','处理人',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26805,10000001,9,'ViewMLLDDDayReport1_pointid','测点ID编号[历史表关联字段]',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26806,10000001,9,'KJ_DeviceDefInfo8_ID','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26807,10000001,9,'KJ_DeviceDefInfo8_pointid','测点ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26808,10000001,10,'ViewMLLDDDayReport1_point','测点号',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26809,10000001,10,'KJ_DeviceType2_Name','设备类型',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26810,10000001,10,'ViewMLLDDDayReport1_devid','设备类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26811,10000001,10,'KJ_DeviceType2_Xs1','单位',0,0,51,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26812,10000001,10,'KJ_DeviceAddress3_wz','安装位置',0,0,100,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26813,10000001,10,'ViewMLLDDDayReport1_wzid','安装位置',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26814,10000001,10,'KJ_DeviceType2_devID','设备类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26815,10000001,10,'KJ_DeviceAddress3_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26816,10000001,10,'view_3montha6_sumcount','累计断电次数',0,0,100,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26817,10000001,10,'view_3montha6_sumtime','累计断电时间',0,0,100,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26818,10000001,10,'ViewMLLDDDayReport1_wz','断电区域',0,0,103,7,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26819,10000001,10,'ViewMLLDDDayReport1_bid','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26820,10000001,10,'ViewMLLDDDayReport1_datsearch','查询时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,12,0,0,0,0,0),(26821,10000001,10,'ViewMLLDDDayReport1_kdstime','本次馈电开始时间',0,0,137,8,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26822,10000001,10,'ViewMLLDDDayReport1_kdetime','本次馈电结束时间',0,0,133,9,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26823,10000001,10,'ViewMLLDDDayReport1_kdcursumtime','本次馈电累计时间',0,0,100,10,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26824,10000001,10,'ViewMLLDDDayReport1_toid','馈电异常去向ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26825,10000001,10,'ViewMLLDDDayReport1_state','设备状态',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26826,10000001,10,'BFT_EnumCode4_strEnumDisplay','设备状态',0,0,100,11,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26827,10000001,10,'BFT_EnumCode4_lngEnumValue','设备状态ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26828,10000001,10,'KJ_DeviceType2_type','类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26829,10000001,10,'ViewMLLDDDayReport1_bidb','关联断电次数',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26830,10000001,10,'view_3montha6_bida','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26831,10000001,10,'ViewMLLDDDayReport1_kdpid','关联断电ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26832,10000001,10,'ViewMLLDDDayReport1_kdssz','馈电状态值',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26833,10000001,10,'ViewMLLDDDayReport1_kdstate','馈电状态',0,0,100,12,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26834,10000001,11,'ViewMLLTJZReport1_point','测点号',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26835,10000001,11,'KJ_DeviceAddress3_wz','安装位置',0,0,154,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26836,10000001,11,'KJ_DeviceType2_Name','设备类型',0,0,180,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26837,10000001,11,'KJ_DeviceType2_Xs1','单位',0,0,49,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26838,10000001,11,'KJ_DeviceDefInfo6_z2','报警门限',0,0,79,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26839,10000001,11,'KJ_DeviceDefInfo6_z3','断电门限',0,0,79,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26840,10000001,11,'KJ_DeviceDefInfo6_z4','复电门限',0,0,79,7,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26841,10000001,11,'viewfiveminutemaxandtime4_pjz','平均值',0,0,100,8,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26842,10000001,11,'viewfiveminutemaxandtime4_zdz','最大值',0,0,100,9,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26843,10000001,11,'ViewMLLTJZReport1_wzid','安装位置',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26844,10000001,11,'ViewMLLTJZReport1_id','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26845,10000001,11,'KJ_DeviceType2_devID','设备类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26846,10000001,11,'KJ_DeviceAddress3_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26847,10000001,11,'viewfiveminutemaxandtime4_zdzs','最大值时间',0,0,125,10,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26848,10000001,11,'ViewMLLTJZReport1_timer','每次开始时间',0,0,137,11,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26849,10000001,11,'ViewMLLTJZReport1_timerend','每次结束时间',0,0,134,12,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26850,10000001,11,'ViewMLLTJZReport1_zdz','每次最大值',0,0,79,13,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26851,10000001,11,'ViewMLLTJZReport1_zxz','每次最小值',0,0,84,14,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26852,10000001,11,'ViewMLLTJZReport1_pjz','每次平均值',0,0,94,15,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26853,10000001,11,'ViewMLLTJZReport1_datsearch','查询时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,12,0,0,0,0,0),(26854,10000001,11,'ViewMLLTJZReport1_state','设备状态',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26855,10000001,11,'BFT_EnumCode5_strEnumDisplay','设备状态',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26856,10000001,11,'BFT_EnumCode5_lngEnumValue','设备状态ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26857,10000001,11,'ViewMLLTJZReport1_devid','设备类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26858,10000001,11,'ViewMLLTJZReport1_pointid','测点id',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26859,10000001,11,'KJ_DeviceDefInfo6_ID','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26860,10000001,11,'KJ_DeviceDefInfo6_pointid','测点ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26861,10000001,11,'ViewMLLTJZReport1_bid','关联最大值ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26862,10000001,11,'viewfiveminutemaxandtime4_pointid','测点ID编号[历史表关联字段]',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26863,10000001,19,'ViewMLLBJDDReport1_point','测点号',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26864,10000001,19,'KJ_DeviceAddress3_wz','安装位置',0,0,170,2,0,'',0,'','','',0,'',0,1,0,0,0,0,0,0,0),(26865,10000001,19,'KJ_DeviceType2_Xs1','单位',0,0,39,3,0,'',0,'','','',0,'',0,1,0,0,0,0,0,0,0),(26866,10000001,19,'KJ_DeviceType2_Name','设备类型',0,0,178,4,0,'',0,'','','',0,'',0,1,0,0,0,0,0,0,0),(26867,10000001,19,'ViewMLLBJDDReport1_wzid','安装位置',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26868,10000001,19,'ViewMLLBJDDReport1_typename','类型名称',0,0,98,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26869,10000001,19,'ViewMLLBJDDReport1_sumcount','累计次数',0,0,58,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26870,10000001,19,'ViewMLLBJDDReport1_sumtime','累计时间',0,0,71,7,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26871,10000001,19,'ViewMLLBJDDReport1_stime','开始时间',0,0,142,8,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26872,10000001,19,'ViewMLLBJDDReport1_etime','结束时间',0,0,135,9,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26873,10000001,19,'ViewMLLBJDDReport1_cursumtime','本次累计时间',0,0,75,10,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26874,10000001,19,'ViewMLLBJDDReport1_pjz','平均值(停用)',0,0,56,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26875,10000001,19,'ViewMLLBJDDReport1_zdz','最大值(停用)',0,0,62,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26876,10000001,19,'ViewMLLBJDDReport1_zdzs','最大值时刻(停用)',0,0,125,-1,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26877,10000001,19,'strAVG','平均值',0,0,100,11,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(26878,10000001,19,'strMAX','最大值',0,0,100,12,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(26879,10000001,19,'strMAXTime','最大值时刻',0,0,100,13,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(26880,10000001,19,'ViewMLLBJDDReport1_datsearch','查询时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,12,0,0,0,0,0),(26881,10000001,19,'ViewMLLBJDDReport1_bid','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26882,10000001,19,'KJ_DeviceType2_devID','设备类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26883,10000001,19,'KJ_DeviceAddress3_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26884,10000001,19,'ViewMLLBJDDReport1_state','设备状态',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26885,10000001,19,'BFT_EnumCode4_strEnumDisplay','设备状态',0,0,100,14,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26886,10000001,19,'BFT_EnumCode4_lngEnumValue','设备状态ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26887,10000001,19,'ViewMLLBJDDReport1_devid','设备类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26888,10000001,19,'KJ_DeviceType2_type','类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26889,10000001,33,'ViewMLLDayReport1_bid','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26890,10000001,33,'KJ_DeviceAddress3_wz','安装位置',0,0,135,1,0,'',0,'','','',0,'',0,0,0,0,0,1,0,0,0),(26891,10000001,33,'ViewMLLDayReport1_point','测点号',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26892,10000001,33,'KJ_DeviceAddress3_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26893,10000001,33,'KJ_DeviceType2_Name','设备类型',0,0,218,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26894,10000001,33,'KJ_DeviceType2_Xs1','单位',0,0,72,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26895,10000001,33,'ViewMLLDayReport1_pjz','平均值',0,0,66,5,0,'',0,'','','',0,'',0,0,0,0,0,0,3,0,0),(26896,10000001,33,'ViewMLLDayReport1_zdz','最大值',0,0,62,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26897,10000001,33,'ViewMLLDayReport1_zdzs','最大值时刻',0,0,148,7,0,'时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26898,10000001,33,'ViewMLLDayReport1_sumcountbybj','报警次数',0,0,78,8,0,'',0,'','','',0,'',0,0,0,0,0,0,2,0,0),(26899,10000001,33,'ViewMLLDayReport1_sumtimebybj','报警时间',0,0,73,9,0,'',0,'','','',0,'',0,0,0,0,0,0,2,0,0),(26900,10000001,33,'ViewMLLDayReport1_sumcountbydd','断电次数',0,0,73,10,0,'',0,'','','',0,'',0,0,0,0,0,0,2,0,0),(26901,10000001,33,'ViewMLLDayReport1_sumtimebydd','断电时间',0,0,75,11,0,'',0,'','','',0,'',0,0,0,0,0,0,2,0,0),(26902,10000001,33,'ViewMLLDayReport1_sumcountbykd','馈电异常次数',0,0,83,12,0,'',0,'','','',0,'',0,0,0,0,0,0,2,0,0),(26903,10000001,33,'ViewMLLDayReport1_sumtimebykd','馈电时间',0,0,100,13,0,'',0,'','','',0,'',0,0,0,0,0,0,2,0,0),(26904,10000001,33,'ViewMLLDayReport1_datsearch','查询日期',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,13,0,0,0,0,0),(26905,10000001,33,'ViewMLLDayReport1_devid','设备类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26906,10000001,33,'KJ_DeviceType2_devID','设备类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26907,10000001,33,'ViewMLLDayReport1_wzid','安装位置',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26908,10000001,33,'ViewMLLDayReport1_kh','口号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26909,10000001,33,'ViewMLLDayReport1_fzh','分站号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26910,10000001,33,'ViewMLLDayReport1_state','设备状态',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26911,10000001,71,'viewkdstatereport1_point','测点号',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26912,10000001,71,'KJ_DeviceType2_Name','设备类型',0,0,192,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26913,10000001,71,'viewkdstatereport1_devid','设备类型编号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26914,10000001,71,'KJ_DeviceAddress3_wz','安装位置',0,0,157,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26915,10000001,71,'KJ_DeviceType2_Xs1','单位',0,0,50,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26916,10000001,71,'viewkdstatereport1_wz','断电区域',0,0,172,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26917,10000001,71,'viewkdstatereport1_wzid','安装位置编号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26918,10000001,71,'viewkdstatereport1_kdsumcount','馈电异常累计次数',0,0,100,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26919,10000001,71,'viewkdstatereport1_kdsumtme','馈电异常累计时间',0,0,100,7,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26920,10000001,71,'viewkdstatereport1_kdcursumtime','本次馈电累积时间',0,0,100,8,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26921,10000001,71,'viewkdstatereport1_kdstime','本次馈电开始时间',0,0,100,9,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26922,10000001,71,'viewkdstatereport1_kdetime','本次馈电结束时间',0,0,100,10,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26923,10000001,71,'viewkdstatereport1_cs','处理措施',0,0,100,11,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26924,10000001,71,'viewkdstatereport1_bz2','措施录入时间',0,0,100,12,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26925,10000001,71,'viewkdstatereport1_state','设备状态',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26926,10000001,71,'BFT_EnumCode4_strEnumDisplay','设备状态',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26927,10000001,71,'viewkdstatereport1_toid','馈电异常去向id',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26928,10000001,71,'KJ_DeviceType2_type','类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26929,10000001,71,'viewkdstatereport1_kdssz','馈电状态值',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26930,10000001,71,'viewkdstatereport1_kdstate','馈电状态',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26931,10000001,71,'KJ_DeviceType2_devID','设备类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26932,10000001,71,'KJ_DeviceAddress3_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26933,10000001,71,'BFT_EnumCode4_lngEnumValue','设备状态ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26934,10000001,71,'viewkdstatereport1_bz1','措施录入人',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26935,10000001,71,'viewkdstatereport1_type','数据状态',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26936,10000001,71,'viewkdstatereport1_datsearch','查询时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,12,0,0,0,0,0),(26951,10000001,76,'viewmnldaysavg1_point','测点号',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26952,10000001,76,'viewmnldaysavg1_wz','安装位置',0,0,181,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26953,10000001,76,'viewmnldaysavg1_name','设备类型',0,0,194,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26954,10000001,76,'viewmnldaysavg1_pjz','平均值',0,0,100,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26955,10000001,76,'viewmnldaysavg1_zdz','最大值',0,0,100,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26956,10000001,76,'viewmnldaysavg1_zxz','最小值',0,0,100,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26957,10000001,76,'viewmnldaysavg1_datsearch','查询时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26958,10000001,76,'viewmnldaysavg1_PointID','测点ID编号[历史表关联字段]',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26959,10000001,77,'viewmnlbx1_point','测点号',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26960,10000001,77,'KJ_DeviceAddress5_wz','安装位置',0,0,100,2,0,'',0,'','','',0,'',0,1,0,0,0,0,0,0,0),(26961,10000001,77,'KJ_DeviceDefInfo2_wzid','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26962,10000001,77,'viewmnlbx1_pointid','pointid',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26963,10000001,77,'KJ_DeviceType3_Name','设备类型',0,0,100,3,0,'',0,'','','',0,'',0,1,0,0,0,0,0,0,0),(26964,10000001,77,'viewmnlbx1_devid','设备类型索引ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26965,10000001,77,'viewmnlbx1_stime','开始时间',0,0,125,4,0,'日期时间',0,'','','',0,'',0,1,0,0,0,0,0,0,0),(26966,10000001,77,'viewmnlbx1_etime','结束时间',0,0,125,5,0,'日期时间',0,'','','',0,'',0,1,0,0,0,0,0,0,0),(26967,10000001,77,'viewmnlbx1_sumtime','累计时间',0,0,100,6,0,'',0,'','','',0,'',0,1,0,0,0,0,0,0,0),(26968,10000001,77,'viewmnlbx1_wz','控制区域',0,0,100,7,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26969,10000001,77,'viewmnlbx1_id','请录入字段名',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26970,10000001,77,'KJ_DeviceDefInfo2_ID','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26971,10000001,77,'KJ_DeviceDefInfo2_pointid','测点ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26972,10000001,77,'KJ_DeviceAddress5_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26973,10000001,77,'KJ_DeviceType3_devID','设备类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26974,10000001,77,'viewmnlbx1_kdstate','馈电状态',0,0,100,8,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26975,10000001,77,'bzqtnd','标准气体浓度',0,0,100,9,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(26976,10000001,77,'viewmnlbx1_datsearch','查询时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(26977,10000001,77,'viewmnlbx1_ida','主键ida',0,0,100,-1,0,'',0,'','','',0,'',0,1,0,0,1,0,0,0,0),(27024,10000001,78,'viewmnlbjddmonth1_point','测点号',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27025,10000001,78,'viewmnlbjddmonth1_wz','安装位置',0,0,139,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27026,10000001,78,'KJ_DeviceType2_Xs1','单位',0,0,100,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27027,10000001,78,'KJ_DeviceDefInfo3_z2','上限报警值',0,0,100,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27028,10000001,78,'KJ_DeviceDefInfo3_z3','上限断电值',0,0,100,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27029,10000001,78,'KJ_DeviceDefInfo3_z4','上限恢复值',0,0,100,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27030,10000001,78,'viewmnlbjddmonth1_devname','设备类型',0,0,207,7,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27031,10000001,78,'BFT_EnumCode4_strEnumDisplay','种类名称',0,0,100,8,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27032,10000001,78,'viewmnlbjddmonth1_bjcs','报警次数',0,0,67,9,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27033,10000001,78,'viewmnlbjddmonth1_bjstarttime','报警对应时间',0,0,140,10,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27034,10000001,78,'viewmnlbjddmonth1_bjendtime','报警解除时间',0,0,139,11,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27035,10000001,78,'viewmnlbjddmonth1_bjpjzzdzzdzs','报警平均值/最大值/最大值时刻',0,0,208,12,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27036,10000001,78,'viewmnlbjddmonth1_bjljscall','报警累计时间',0,0,91,13,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27037,10000001,78,'viewmnlbjddmonth1_ddcs','断电次数',0,0,67,14,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27038,10000001,78,'viewmnlbjddmonth1_ddstarttime','断电对应时间',0,0,141,15,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27039,10000001,78,'viewmnlbjddmonth1_ddendtime','断电解除时间',0,0,141,16,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27040,10000001,78,'viewmnlbjddmonth1_ddljsc','本次断电累计时间',0,0,115,17,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27041,10000001,78,'viewmnlbjddmonth1_ddstartendtime','断电时刻及复电时刻',0,0,277,18,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27042,10000001,78,'viewmnlbjddmonth1_ddpjzzdzzdzs','断电平均值/最大值/最大值时刻',0,0,208,19,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27043,10000001,78,'viewmnlbjddmonth1_ddljscall','断电累计时间',0,0,91,20,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27044,10000001,78,'viewmnlbjddmonth1_kdcs','馈电异常次数',0,0,91,21,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27045,10000001,78,'viewmnlbjddmonth1_kdstarttime','馈电对应时间',0,0,139,22,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27046,10000001,78,'viewmnlbjddmonth1_kdendtime','馈电解除时间',0,0,140,23,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27047,10000001,78,'viewmnlbjddmonth1_kdljscall','馈电累计时间',0,0,91,24,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27048,10000001,78,'viewmnlbjddmonth1_datsearch','查询时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27049,10000001,78,'viewmnlbjddmonth1_PointID','测点ID编号[历史表关联字段]',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27050,10000001,78,'KJ_DeviceType2_Bz3','设备种类',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27051,10000001,78,'viewmnlbjddmonth1_devid','设备类型ID(即驱动编号)0-20：用于分站类型 ',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27052,10000001,78,'KJ_DeviceType2_devID','设备类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27053,10000001,78,'BFT_EnumCode4_lngEnumValue','种类ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27054,10000001,78,'viewmnlbjddmonth1_gzcs','故障次数',0,0,100,25,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27055,10000001,78,'viewmnlbjddmonth1_gzstarttime','故障对应时间',0,0,100,26,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27056,10000001,78,'viewmnlbjddmonth1_gzendtime','故障解除时间',0,0,100,27,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27057,10000001,78,'viewmnlbjddmonth1_gzljscall','故障累计时间',0,0,100,28,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27058,10000001,78,'viewmnlbjddmonth1_bjcuoshi','报警措施及时刻',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27059,10000001,78,'viewmnlbjddmonth1_ddcuoshi','断电措施及时刻',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27060,10000001,78,'viewmnlbjddmonth1_gzcuoshi','故障措施及时刻',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27061,10000001,78,'viewmnlbjddmonth1_pointid2','测点ID编号[历史表关联字段]',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27062,10000001,78,'KJ_DeviceDefInfo3_ID','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27063,10000001,78,'KJ_DeviceDefInfo3_pointid','测点ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27064,10000001,78,'viewmnlbjddmonth1_zdz','最大值',0,0,100,29,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27065,10000001,78,'viewmnlbjddmonth1_zdzs','最大值时刻',0,0,100,30,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27066,10000001,78,'viewmnlbjddmonth1_zxz','最小值',0,0,100,31,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27067,10000001,78,'viewmnlbjddmonth1_zxzs','最小值时刻',0,0,100,32,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27068,10000001,78,'viewmnlbjddmonth1_pjz','平均值',0,0,100,33,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27069,10000001,78,'bjddcuoshi','处理措施及时刻',0,0,231,34,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(27070,10000001,13,'ViewJC_KGStateMonth1_point','测点号',0,0,100,1,0,'',0,'','','',0,'',0,1,0,0,1,0,0,0,0),(27071,10000001,13,'KJ_DeviceAddress3_wz','安装位置',0,0,179,2,0,'',0,'','','',0,'',0,1,0,0,0,0,0,0,0),(27072,10000001,13,'KJ_DeviceType2_Name','设备类型',0,0,79,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27073,10000001,13,'ViewJC_KGStateMonth1_state','变动状态',0,0,100,4,0,'',0,'','','',0,'',0,1,0,0,0,0,0,0,0),(27074,10000001,13,'ViewJC_KGStateMonth1_sumtime','累计运行时间',0,0,86,5,0,'',0,'','','',0,'',0,1,0,0,0,0,0,0,0),(27075,10000001,13,'ViewJC_KGStateMonth1_sumcount','累计变动次数',0,0,92,6,0,'',0,'','','',0,'',0,1,0,0,0,0,0,0,0),(27076,10000001,13,'ViewJC_KGStateMonth1_duration','本次持续时间',0,0,100,7,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27077,10000001,13,'ViewJC_KGStateMonth1_stime','本次开始时间',0,0,125,8,0,'日期时间',0,'','','',0,'',0,0,0,12,0,0,0,0,0),(27078,10000001,13,'ViewJC_KGStateMonth1_etime','本次结束时间',0,0,125,9,0,'日期时间',0,'','','',0,'',0,0,0,12,0,0,0,0,0),(27079,10000001,13,'ViewJC_KGStateMonth1_pid','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27080,10000001,13,'ViewJC_KGStateMonth1_datSearch','查询时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,12,0,0,0,0,0),(27081,10000001,13,'ViewJC_KGStateMonth1_fzh','分站号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27082,10000001,13,'ViewJC_KGStateMonth1_kh','口号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27083,10000001,13,'KJ_DeviceType2_devID','设备类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27084,10000001,13,'KJ_DeviceAddress3_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27085,10000001,13,'ViewJC_KGStateMonth1_devid','设备类型',0,0,70,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27086,10000001,13,'ViewJC_KGStateMonth1_wzid','安装位置',0,0,70,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27101,10000001,14,'ViewKGLBJDDDayReport1_point','测点号',0,0,58,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27102,10000001,14,'KJ_DeviceAddress3_wz','安装位置',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27103,10000001,14,'ViewKGLBJDDDayReport1_wz','断电区域',0,0,100,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27104,10000001,14,'ViewKGLBJDDDayReport1_kdsumcount','馈电异常次数',0,0,91,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27105,10000001,14,'ViewKGLBJDDDayReport1_kdsumtime','馈电异常时间',0,0,100,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27106,10000001,14,'ViewKGLBJDDDayReport1_kdstate','馈电状态',0,0,70,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27107,10000001,14,'ViewKGLBJDDDayReport1_kdstime','馈电开始时间',0,0,134,7,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27108,10000001,14,'ViewKGLBJDDDayReport1_kdetime','馈电结束时间',0,0,125,8,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27109,10000001,14,'ViewKGLBJDDDayReport1_kdcursumtime','馈电累计时间',0,0,100,9,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27110,10000001,14,'ViewKGLBJDDDayReport1_bid','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27111,10000001,14,'ViewKGLBJDDDayReport1_datsearch','查询时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,11,0,0,0,0,0),(27112,10000001,14,'ViewKGLBJDDDayReport1_toid','馈电异常去向ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27113,10000001,14,'ViewKGLBJDDDayReport1_wzid','安装位置',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27114,10000001,14,'KJ_DeviceAddress3_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27145,10000001,15,'ViewKGLBJDDDayReport1_point','测点号',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27146,10000001,15,'KJ_DeviceAddress3_wz','安装位置',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27147,10000001,15,'ViewKGLBJDDDayReport1_devid','设备类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27148,10000001,15,'KJ_DeviceType2_Name','设备类型',0,0,100,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27149,10000001,15,'ViewKGLBJDDDayReport1_sumtime','累计时间',0,0,80,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27150,10000001,15,'ViewKGLBJDDDayReport1_sumcount','累计次数',0,0,69,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27151,10000001,15,'ViewKGLBJDDDayReport1_wz','断电区域',0,0,100,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27152,10000001,15,'ViewKGLBJDDDayReport1_cursumtime','本次累计时间',0,0,97,7,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27153,10000001,15,'ViewKGLBJDDDayReport1_stime','本次开始时间',0,0,125,8,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27154,10000001,15,'ViewKGLBJDDDayReport1_etime','本次结束时间',0,0,125,9,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27155,10000001,15,'kdstimea','馈电开始时间',0,0,125,10,0,'日期时间',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(27156,10000001,15,'kdetimea','馈电结束时间',0,0,125,11,0,'日期时间',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(27157,10000001,15,'kdcursumtimea','馈电累计时间',0,0,100,12,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(27158,10000001,15,'ViewKGLBJDDDayReport1_kdstate','馈电状态',0,0,70,13,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27159,10000001,15,'ViewKGLBJDDDayReport1_bid','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27160,10000001,15,'ViewKGLBJDDDayReport1_wzid','安装位置',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27161,10000001,15,'KJ_DeviceAddress3_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27162,10000001,15,'ViewKGLBJDDDayReport1_cs','处理措施',0,0,180,14,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27163,10000001,15,'ViewKGLBJDDDayReport1_bz2','处理时间',0,0,140,15,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27164,10000001,15,'ViewKGLBJDDDayReport1_remark','异常原因',0,0,180,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27165,10000001,15,'ViewKGLBJDDDayReport1_bz1','处理人',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27166,10000001,15,'KJ_DeviceType2_devID','设备类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27167,10000001,15,'KJ_DeviceType2_Bz3','设备种类',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27168,10000001,15,'BFT_EnumCode5_lngEnumValue','种类ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27169,10000001,15,'ViewKGLBJDDDayReport1_datsearch','查询时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,12,0,0,0,0,0),(27170,10000001,15,'BFT_EnumCode5_strEnumDisplay','种类名称',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27171,10000001,15,'ViewKGLBJDDDayReport1_statename','状态名称',0,0,75,16,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27172,10000001,15,'ViewKGLBJDDDayReport1_kdstime','馈电开始时间',0,0,125,-1,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27173,10000001,15,'ViewKGLBJDDDayReport1_kdetime','馈电结束时间',0,0,125,-1,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27174,10000001,15,'ViewKGLBJDDDayReport1_kdcursumtime','馈电累计时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27221,10000001,32,'viewkglkddayreport1_point','测点号',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27222,10000001,32,'KJ_DeviceAddress3_wz','安装位置',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27223,10000001,32,'viewkglkddayreport1_wzid','安装位置',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27224,10000001,32,'KJ_DeviceType2_Name','设备类型',0,0,186,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27225,10000001,32,'viewkglkddayreport1_devid','设备类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27226,10000001,32,'viewkglkddayreport1_wz','断电区域',0,0,67,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27227,10000001,32,'viewkglkddayreport1_kdsumtime','馈电异常时间',0,0,91,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27228,10000001,32,'viewkglkddayreport1_kdsumcount','馈电异常次数',0,0,86,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27229,10000001,32,'viewkglkddayreport1_kdstate','单次馈电状态',0,0,67,7,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27230,10000001,32,'viewkglkddayreport1_kdcursumtime','单次馈电累计时间',0,0,100,8,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27231,10000001,32,'viewkglkddayreport1_kdstime','单次馈电开始时间',0,0,125,9,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27232,10000001,32,'viewkglkddayreport1_kdetime','单次馈电结束时间',0,0,125,10,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27233,10000001,32,'viewkglkddayreport1_cs','处理措施',0,0,100,11,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27234,10000001,32,'viewkglkddayreport1_bz2','措施录入时间',0,0,135,12,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27235,10000001,32,'viewkglkddayreport1_datsearch','查询日期',0,0,100,-1,0,'日期',0,'','','',0,'',0,0,0,12,0,0,0,0,0),(27236,10000001,32,'viewkglkddayreport1_bid','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27237,10000001,32,'KJ_DeviceAddress3_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27238,10000001,32,'KJ_DeviceType2_devID','设备类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27239,10000001,32,'viewkglkddayreport1_bz1','措施录入人',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27240,10000001,32,'KJ_DeviceType2_Xs1','单位',0,0,55,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27241,10000001,44,'ViewJC_KGStateMonth1_point','测点号',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27242,10000001,44,'KJ_DeviceType2_Name','设备类型',0,0,173,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27243,10000001,44,'ViewJC_KGStateMonth1_devid','设备类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27244,10000001,44,'KJ_DeviceAddress3_wz','安装位置',0,0,177,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27245,10000001,44,'ViewJC_KGStateMonth1_sumtime','累计运行时间',0,0,100,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27246,10000001,44,'ViewJC_KGStateMonth1_ssz','值',0,0,100,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27247,10000001,44,'ViewJC_KGStateMonth1_sumcount','累计变动次数',0,0,100,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27248,10000001,44,'ViewJC_KGStateMonth1_pid','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27249,10000001,44,'KJ_DeviceType2_devID','设备类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27250,10000001,44,'KJ_DeviceAddress3_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27251,10000001,44,'ViewJC_KGStateMonth1_datSearch','查询时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27252,10000001,44,'ViewJC_KGStateMonth1_wzid','安装位置',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27253,10000001,94,'ViewKGLBJDDDayReport1_point','测点号',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27254,10000001,94,'KJ_DeviceAddress3_wz','安装位置',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27255,10000001,94,'ViewKGLBJDDDayReport1_wzid','安装位置',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27256,10000001,94,'KJ_DeviceType2_Name','设备类型',0,0,100,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27257,10000001,94,'ViewKGLBJDDDayReport1_devid','设备类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27258,10000001,94,'ViewKGLBJDDDayReport1_sumtime','累计时间',0,0,100,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27259,10000001,94,'ViewKGLBJDDDayReport1_sumcount','累计次数',0,0,100,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27260,10000001,94,'ViewKGLBJDDDayReport1_wz','断电区域',0,0,100,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27261,10000001,94,'ViewKGLBJDDDayReport1_cursumtime','本次累计时间',0,0,100,7,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27262,10000001,94,'ViewKGLBJDDDayReport1_stime','本次开始时间',0,0,100,8,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27263,10000001,94,'ViewKGLBJDDDayReport1_etime','本次结束时间',0,0,100,9,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27264,10000001,94,'ViewKGLBJDDDayReport1_kdstate','馈电状态',0,0,100,10,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27265,10000001,94,'kdstimea','馈电开始时间',0,0,100,11,0,'日期时间',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(27266,10000001,94,'kdetimea','馈电结束时间',0,0,100,12,0,'日期时间',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(27267,10000001,94,'kdcursumtimea','馈电累计时间',0,0,100,13,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(27268,10000001,94,'ViewKGLBJDDDayReport1_cs','处理措施',0,0,100,14,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27269,10000001,94,'ViewKGLBJDDDayReport1_bz2','处理时间',0,0,100,15,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27270,10000001,94,'ViewKGLBJDDDayReport1_remark','异常原因',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27271,10000001,94,'ViewKGLBJDDDayReport1_bz1','处理人',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27272,10000001,94,'ViewKGLBJDDDayReport1_datsearch','查询时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,12,0,0,0,0,0),(27273,10000001,94,'ViewKGLBJDDDayReport1_statename','状态名称',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27274,10000001,94,'ViewKGLBJDDDayReport1_bid','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27275,10000001,94,'KJ_DeviceAddress3_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27276,10000001,94,'KJ_DeviceType2_devID','设备类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27277,10000001,94,'ViewKGLBJDDDayReport1_kdstime','馈电开始时间1',0,0,100,-1,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27278,10000001,94,'ViewKGLBJDDDayReport1_kdetime','馈电结束时间1',0,0,100,-1,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27279,10000001,94,'ViewKGLBJDDDayReport1_kdcursumtime','馈电累计时间1',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27280,10000001,94,'BFT_EnumCode5_strEnumDisplay','种类名称',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27281,10000001,94,'KJ_DeviceType2_Bz3','设备种类',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27282,10000001,94,'BFT_EnumCode5_lngEnumValue','种类ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27283,10000001,79,'viewkdstatereport1_point','测点号',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27284,10000001,79,'KJ_DeviceAddress3_wz','安装位置',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27285,10000001,79,'viewkdstatereport1_wzid','安装位置编号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27286,10000001,79,'KJ_DeviceType2_Name','设备类型',0,0,191,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27287,10000001,79,'viewkdstatereport1_devid','设备类型编号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27288,10000001,79,'view_4monthabykg17_sumcount','累计馈电次数',0,0,100,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27289,10000001,79,'view_4monthabykg17_sumtime','累计馈电时间',0,0,100,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27290,10000001,79,'viewkdstatereport1_wz','控制区域',0,0,100,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27291,10000001,79,'viewkdstatereport1_kdstate','馈电状态',0,0,100,7,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27292,10000001,79,'viewkdstatereport1_kdstime','本次馈电开始时间',0,0,138,8,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27293,10000001,79,'viewkdstatereport1_kdetime','本次馈电结束时间',0,0,136,9,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27294,10000001,79,'viewkdstatereport1_kdcursumtime','本次馈电累积时间',0,0,100,10,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27295,10000001,79,'viewkdstatereport1_cs','处理措施',0,0,100,11,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27296,10000001,79,'viewkdstatereport1_bz1','措施录入人',0,0,100,12,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27297,10000001,79,'viewkdstatereport1_bz2','措施录入时间',0,0,134,13,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27298,10000001,79,'viewkdstatereport1_datsearch','查询时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,12,0,0,0,0,0),(27299,10000001,79,'KJ_DeviceAddress3_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27300,10000001,79,'KJ_DeviceType2_devID','设备类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27301,10000001,79,'KJ_DeviceType2_type','类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27302,10000001,79,'viewkdstatereport1_bidb','开关量关联馈电次数及时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27303,10000001,79,'view_4monthabykg17_PointID','测点id',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27327,10000001,17,'ViewJKSBGZDayReport1_point','测点号',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27328,10000001,17,'KJ_DeviceAddress3_wz','安装位置',0,0,177,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27329,10000001,17,'KJ_DeviceType2_Name','设备类型',0,0,196,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27330,10000001,17,'BFT_EnumCode5_strEnumDisplay','设备性质',0,0,100,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27331,10000001,17,'ViewJKSBGZDayReport1_wzid','安装位置',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27332,10000001,17,'ViewJKSBGZDayReport1_ssz','故障状态',0,0,100,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27333,10000001,17,'ViewJKSBGZDayReport1_sumtime','累计时间',0,0,70,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27334,10000001,17,'ViewJKSBGZDayReport1_sumcount','累计次数',0,0,70,7,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27335,10000001,17,'ViewJKSBGZDayReport1_cursumtime','本次累计时间',0,0,100,8,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27336,10000001,17,'ViewJKSBGZDayReport1_stime','本次开始时间',0,0,125,9,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27337,10000001,17,'ViewJKSBGZDayReport1_etime','本次结束时间',0,0,125,10,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27338,10000001,17,'ViewJKSBGZDayReport1_bid','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27339,10000001,17,'KJ_DeviceType2_devID','设备类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27340,10000001,17,'KJ_DeviceAddress3_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27341,10000001,17,'ViewJKSBGZDayReport1_cs','处理措施',0,0,180,11,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27342,10000001,17,'ViewJKSBGZDayReport1_bz2','处理时间',0,0,140,12,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27343,10000001,17,'ViewJKSBGZDayReport1_devid','设备类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27344,10000001,17,'ViewJKSBGZDayReport1_type','数据状态',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27345,10000001,17,'KJ_DeviceType2_type','设备性质',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27346,10000001,17,'BFT_EnumCode5_lngEnumValue','性质ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27347,10000001,17,'ViewJKSBGZDayReport1_remark','异常原因',0,0,180,13,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27348,10000001,17,'ViewJKSBGZDayReport1_bz1','处理人',0,0,100,14,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27349,10000001,17,'ViewJKSBGZDayReport1_datsearch','查询时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,12,0,0,0,0,0),(27350,10000001,22,'viewsbrunlogreport1_timer','时间',0,0,125,1,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27351,10000001,22,'viewsbrunlogreport1_point','测点号',0,0,82,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27352,10000001,22,'viewsbrunlogreport1_wzid','安装位置',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27353,10000001,22,'viewsbrunlogreport1_devid','设备类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27354,10000001,22,'KJ_DeviceAddress3_wz','安装位置',0,0,100,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27355,10000001,22,'KJ_DeviceType2_Name','设备类型',0,0,100,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27356,10000001,22,'viewsbrunlogreport1_val','值',0,0,100,5,0,'',0,'','','等于&&$True&&$断线&&$##*&&$1;255;0;255;255;ffffff00&&$2;255;0;0;0;Black&&$False&&$$等于&&$True&&$上限报警&&$##*&&$2;255;0;0;255;Red&&$2;255;0;0;0;Black&&$False1',0,'',0,0,0,0,0,0,0,0,0),(27357,10000001,22,'dd','单位',0,0,100,6,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(27358,10000001,22,'KJ_DeviceType2_Xs1','单位',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27359,10000001,22,'viewsbrunlogreport1_datsearch','查询时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,12,0,0,0,0,0),(27360,10000001,22,'KJ_DeviceType2_type','设备性质',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27361,10000001,22,'viewsbrunlogreport1_id','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27362,10000001,22,'KJ_DeviceType2_devID','设备类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27363,10000001,22,'KJ_DeviceAddress3_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27364,10000001,22,'BFT_EnumCode4_lngEnumValue','类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27365,10000001,22,'viewsbrunlogreport1_type','状态',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27366,10000001,22,'BFT_EnumCode4_strEnumDisplay','状态',0,0,100,7,0,'',0,'','','等于&&$True&&$上限报警&&$##*&&$2;255;0;0;255;Red&&$2;255;0;0;0;Black&&$False&&$$等于&&$True&&$下限报警&&$##*&&$2;255;0;0;255;Red&&$2;255;0;0;0;Black&&$False1',0,'',0,0,0,0,0,0,0,0,0),(27367,10000001,22,'BFT_EnumCode5_strEnumDisplay','设备状态',0,0,100,8,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27368,10000001,22,'viewsbrunlogreport1_valnumber','值(转换)',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27369,10000001,22,'KJ_DeviceType2_Xs2','开关量1态显示值',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27370,10000001,22,'KJ_DeviceType2_Xs3','开关量2态显示值',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27371,10000001,22,'viewsbrunlogreport1_fzh','分站号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27372,10000001,22,'viewsbrunlogreport1_kh','口号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27373,10000001,22,'viewsbrunlogreport1_state','设备状态',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27374,10000001,22,'BFT_EnumCode5_lngEnumValue','设备状态ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27394,10000001,23,'viewmcrunlogreport1_timer','时间',0,0,151,1,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27395,10000001,23,'viewmcrunlogreport1_point','测点号',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27396,10000001,23,'KJ_DeviceAddress3_wz','安装位置',0,0,100,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27397,10000001,23,'viewmcrunlogreport1_wzid','安装位置',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27398,10000001,23,'KJ_DeviceType2_Name','设备类型',0,0,100,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27399,10000001,23,'viewmcrunlogreport1_ssz','数值',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27400,10000001,23,'Value1','数值',0,0,100,5,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(27401,10000001,23,'KJ_DeviceType2_Xs1','单位',0,0,44,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27402,10000001,23,'viewmcrunlogreport1_ID','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27403,10000001,23,'KJ_DeviceType2_devID','设备类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27404,10000001,23,'KJ_DeviceAddress3_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27405,10000001,23,'viewmcrunlogreport1_datsearch','查询时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,12,0,0,0,0,0),(27406,10000001,23,'viewmcrunlogreport1_devid','设备类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27407,10000001,23,'BFT_EnumCode5_strEnumDisplay','状态',0,0,100,7,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27408,10000001,23,'viewmcrunlogreport1_state','设备状态',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27409,10000001,23,'BFT_EnumCode4_strEnumDisplay','设备状态',0,0,100,8,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27410,10000001,23,'BFT_EnumCode4_lngEnumValue','设备状态ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27411,10000001,23,'viewmcrunlogreport1_type','类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27412,10000001,23,'BFT_EnumCode5_lngEnumValue','类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27413,10000001,24,'BFT_operatelog1_UserName','操作用户',0,0,59,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27414,10000001,24,'BFT_operatelog1_LoginIP','客户端IP',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27415,10000001,24,'BFT_EnumCode2_strEnumDisplay','操作类型',0,0,100,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27416,10000001,24,'BFT_operatelog1_OperationContent','操作内容',0,0,730,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27417,10000001,24,'BFT_operatelog1_CreateTime','操作时间',0,0,125,5,0,'日期时间',0,'','','',0,'',0,0,0,12,0,0,0,0,0),(27418,10000001,24,'BFT_operatelog1_Remark','备注',0,0,100,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27419,10000001,24,'BFT_operatelog1_OperateLogID','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27420,10000001,24,'BFT_EnumCode2_lngEnumValue','类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27421,10000001,24,'BFT_operatelog1_Type','操作类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27422,10000001,69,'jc_defkzk1_point','测点号',0,0,78,1,0,'',0,'','','',0,'',0,0,1,0,0,0,0,0,0),(27423,10000001,69,'jc_defkzk1_ID','ID编号',0,0,100,-1,0,'',0,'','','',0,'',0,0,1,0,0,0,0,0,0),(27424,10000001,69,'KJ_DeviceAddress3_wz','安装位置',0,0,179,2,0,'',0,'','','',0,'',0,0,1,0,0,0,0,0,0),(27425,10000001,69,'KJ_DeviceType2_Name','设备类型',0,0,201,3,0,'',0,'','','',0,'',0,0,1,0,0,0,0,0,0),(27426,10000001,69,'KJ_DeviceType2_devID','设备类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,1,0,0,0,0,0,0),(27427,10000001,69,'jc_defkzk1_wzid','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,1,0,0,0,0,0,0),(27428,10000001,69,'KJ_DeviceAddress3_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,1,0,0,0,0,0,0),(27429,10000001,69,'BFT_EnumCode7_strEnumDisplay','设备型号',0,0,196,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27430,10000001,69,'jc_defkzk1_Z2','上限报警值',0,0,100,5,0,'',0,'','','',0,'',0,0,1,0,0,0,0,0,0),(27431,10000001,69,'jc_defkzk1_Z3','上限断电值',0,0,100,6,0,'',0,'','','',0,'',0,0,1,0,0,0,0,0,0),(27432,10000001,69,'jc_defkzk1_Z4','上限恢复值',0,0,100,7,0,'',0,'','','',0,'',0,0,1,0,0,0,0,0,0),(27433,10000001,69,'jc_defkzk1_Z6','下限报警值',0,0,100,8,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27434,10000001,69,'jc_defkzk1_remark','备注',0,0,100,9,0,'',0,'','','',0,'',0,0,1,0,0,0,0,0,0),(27435,10000001,69,'BFT_EnumCode7_lngEnumValue','型号ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27436,10000001,69,'jc_defkzk1_devid','设备类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,1,0,0,0,0,0,0),(27437,10000001,69,'KJ_DeviceType2_Bz3','设备种类',0,0,100,-1,0,'',0,'','','',0,'',0,0,1,0,0,0,0,0,0),(27438,10000001,69,'KJ_DeviceType2_type','设备性质',0,0,100,-1,0,'',0,'','','',0,'',0,0,1,0,0,0,0,0,0),(27439,10000001,69,'KJ_DeviceType2_Bz4','设备型号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27440,10000001,43,'viewsbrunlogreport1_bz1','IP',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27441,10000001,43,'viewsbrunlogreport1_point','MAC',0,0,171,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27442,10000001,43,'KJ_DeviceAddress3_wz','安装位置',0,0,138,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27443,10000001,43,'BFT_EnumCode5_strEnumDisplay','设备状态',0,0,100,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27444,10000001,43,'viewsbrunlogreport1_timer','时间',0,0,125,5,0,'日期时间',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27445,10000001,43,'viewsbrunlogreport1_datsearch','查询时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27446,10000001,43,'viewsbrunlogreport1_wzid','安装位置',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27447,10000001,43,'viewsbrunlogreport1_id','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27448,10000001,43,'KJ_DeviceAddress3_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27449,10000001,43,'viewsbrunlogreport1_state','设备状态',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27450,10000001,43,'BFT_EnumCode5_lngEnumValue','设备状态ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27451,10000001,43,'viewsbrunlogreport1_fzh','分站号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27452,10000001,43,'viewsbrunlogreport1_kh','口号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27453,10000001,45,'KJ_DeviceDefInfo1_point','测点号',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27454,10000001,45,'KJ_DeviceDefInfo1_wzid','安装位置',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27455,10000001,45,'KJ_DeviceAddress3_wz','安装位置',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27456,10000001,45,'KJ_DeviceDefInfo1_devid','设备类型',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27457,10000001,45,'KJ_DeviceType2_Name','设备类型',0,0,100,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27458,10000001,45,'KJ_DeviceType2_Bz4','设备型号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27459,10000001,45,'BFT_EnumCode6_strEnumDisplay','设备型号',0,0,100,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27460,10000001,45,'KJ_DeviceType2_bz7','设备总数',0,0,70,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27461,10000001,45,'KJ_DeviceDefInfo1_bz13','唯一编码',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27462,10000001,45,'KJ_DeviceDefInfo1_bz15','出厂日期',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27463,10000001,45,'wybm','唯一编码',0,0,100,5,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(27464,10000001,45,'ccdate','出厂日期',0,0,100,6,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(27465,10000001,45,'KJ_DeviceType2_bz5','有效期',0,0,58,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27466,10000001,45,'KJ_DeviceType2_bz6','质保期',0,0,58,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27467,10000001,45,'KJ_DeviceDefInfo1_ID','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27468,10000001,45,'KJ_DeviceDefInfo1_pointid','测点ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27469,10000001,45,'KJ_DeviceType2_devID','设备类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27470,10000001,45,'BFT_EnumCode6_lngEnumValue','型号ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27471,10000001,45,'KJ_DeviceAddress3_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27472,10000001,45,'ddfdeee','有效期',0,0,58,7,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(27473,10000001,45,'bddds','质保期',0,0,58,8,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(27474,10000001,45,'bz5end','有效截止日期',0,0,94,9,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(27475,10000001,45,'ddfd','质保截止日期',0,0,94,10,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(27476,10000001,45,'KJ_DeviceDefInfo1_activity','活动',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27477,10000001,45,'test','是否超有效期',0,0,94,11,0,'',0,'','','等于&&$False&&$是&&$##*&&$2;255;0;0;255;Red&&$2;255;0;0;0;Black&&$False1',1,'',0,0,0,0,0,0,0,0,0),(27478,10000001,45,'afdfd','是否超质保期',0,0,100,12,0,'',0,'','','等于&&$False&&$是&&$##*&&$2;255;0;0;255;Red&&$2;255;0;0;0;Black&&$False1',1,'',0,0,0,0,0,0,0,0,0),(27488,10000001,46,'viewjc_devtj1_bz4','设备型号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27489,10000001,46,'BFT_EnumCode2_strEnumDisplay','设备型号',0,0,203,1,0,'',2,'ListEx;ListID=43','KJ_DeviceType2_Bz4=viewjc_devtj1_bz4$0','',0,'',0,0,0,0,0,0,0,0,0),(27490,10000001,46,'viewjc_devtj1_sumcoumt','设备总数',0,0,70,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27491,10000001,46,'viewjc_devtj1_sumzycount','在用数量',0,0,70,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27492,10000001,46,'viewjc_devtj1_sumkccount','库存数量',0,0,70,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27493,10000001,46,'viewjc_devtj1_sumoveryxcount','超有效期数量',0,0,94,5,0,'',0,'','','大于&&$False&&$0&&$##*&&$2;255;0;0;255;Red&&$2;255;0;0;0;Black&&$False2',0,'',0,0,0,0,0,0,0,0,0),(27494,10000001,46,'viewjc_devtj1_sumoverzbcount','超保质期数量',0,0,94,6,0,'',0,'','','大于&&$False&&$0&&$##*&&$1;255;0;0;255;ffff0000&&$2;255;0;0;0;Black&&$False2',0,'',0,0,0,0,0,0,0,0,0),(27495,10000001,46,'viewjc_devtj1_devid','设备类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27496,10000001,46,'BFT_EnumCode2_lngEnumValue','型号ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27497,10000001,91,'viewsubstationdischarge1_point','测点号',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27498,10000001,91,'KJ_DeviceAddress5_wz','安装位置',0,0,180,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27499,10000001,91,'viewsubstationdischarge1_wzid','安装位置编号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27500,10000001,91,'KJ_DeviceType4_Name','设备类型',0,0,140,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27501,10000001,91,'viewsubstationdischarge1_devid','设备类型编号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27502,10000001,91,'BFT_EnumCode3_strEnumDisplay','设备状态',0,0,100,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27503,10000001,91,'viewsubstationdischarge1_state','设备状态',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27504,10000001,91,'viewsubstationdischarge1_stime','开始时间',0,0,140,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27505,10000001,91,'viewsubstationdischarge1_etime','结束时间',0,0,140,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27506,10000001,91,'viewsubstationdischarge1_duration','持续时间',0,0,100,7,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27507,10000001,91,'viewsubstationdischarge1_datsearch','查询时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27508,10000001,91,'viewsubstationdischarge1_id','主键id',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27509,10000001,91,'KJ_DeviceAddress5_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27510,10000001,91,'KJ_DeviceType4_devID','设备类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27511,10000001,91,'BFT_EnumCode3_lngEnumValue','设备状态ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27512,10000001,92,'viewequipmentaccount1_name','设备类型',0,0,200,1,0,'',2,'ListEx;ListID=43','KJ_DeviceDefInfo1_devid=viewequipmentaccount1_devid2$0','',0,'',0,0,0,0,0,0,0,0,0),(27513,10000001,92,'viewequipmentaccount1_totalnum','已购设备总数量',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27514,10000001,92,'viewequipmentaccount1_usednum','已使用设备数量',0,0,100,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27515,10000001,92,'viewequipmentaccount1_unusednum','未使用设备数量',0,0,100,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27516,10000001,92,'viewequipmentaccount1_overindate','超有效期数量',0,0,100,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27517,10000001,92,'viewequipmentaccount1_overguaranteeperiod','超保质期数量',0,0,100,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27518,10000001,92,'viewequipmentaccount1_devid2','设备类型查询',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27519,10000001,92,'viewequipmentaccount1_devid','设备类型ID(即驱动编号)0-20：用于分站类型 ',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27520,10000001,93,'viewstationpowerchargehistory1_point','测点号',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27521,10000001,93,'viewstationpowerchargehistory1_wz','安装位置',0,0,150,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27522,10000001,93,'viewstationpowerchargehistory1_Stime','执行放电时间',0,0,120,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27523,10000001,93,'viewstationpowerchargehistory1_DischargeStime','设备放电开始时间',0,0,120,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27524,10000001,93,'chargeStime','设备放电开始时间',0,0,120,4,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(27525,10000001,93,'viewstationpowerchargehistory1_DischargeEtime','设备放电结束时间',0,0,120,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27526,10000001,93,'chargeEtime','设备放电结束时间',0,0,120,5,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(27527,10000001,93,'viewstationpowerchargehistory1_userName','操作人',0,0,100,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27528,10000001,93,'viewstationpowerchargehistory1_Id','ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27555,10000001,38,'xiaoji','测点号',0,0,100,1,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(27556,10000001,38,'viewjc_llmonth1_point','测点号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27557,10000001,38,'KJ_DeviceAddress4_wz','安装位置',0,0,140,2,0,'',0,'','','',0,' ;xiaoji=\'合计\'',0,0,0,0,0,0,0,0,0),(27558,10000001,38,'viewjc_llmonth1_FY','负压（KPa）',0,0,80,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27559,10000001,38,'viewjc_llmonth1_WD','温度（℃）',0,0,75,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27560,10000001,38,'viewjc_llmonth1_WS','瓦斯（%）',0,0,70,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27561,10000001,38,'viewjc_llmonth1_CO','一氧化碳（ppm）',0,0,65,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27562,10000001,38,'viewjc_llmonth1_yxsc','运行时间',0,0,100,7,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27563,10000001,38,'viewjc_llmonth1_GH','工况混合流量（m³/min）',0,0,145,8,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27564,10000001,38,'viewjc_llmonth1_GC','工况纯量平均值',0,0,100,9,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27565,10000001,38,'viewjc_llmonth1_GHL','工况混合累计值',0,0,95,10,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27566,10000001,38,'viewjc_llmonth1_GCL','工况纯量累计值',0,0,100,11,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27567,10000001,38,'viewjc_llmonth1_BH','标况混合流量（m³/min）',0,0,145,12,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27568,10000001,38,'viewjc_llmonth1_BC','标况纯量平均值',0,0,100,13,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27569,10000001,38,'viewjc_llmonth1_BHL','标况混合累计值',0,0,100,14,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27570,10000001,38,'viewjc_llmonth1_BCL','标况纯量累计值',0,0,100,15,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27571,10000001,38,'viewjc_llmonth1_Timer','时间',0,0,125,16,0,'日期时间',0,'','','',0,'   ; xiaoji=\'合计\'',0,0,0,0,0,0,0,0,0),(27572,10000001,38,'KJ_DeviceDefInfo2_ID','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27573,10000001,38,'KJ_DeviceDefInfo2_pointid','测点ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27574,10000001,38,'KJ_DeviceDefInfo2_wzid','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27575,10000001,38,'viewjc_llmonth1_PointID','测点',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27576,10000001,38,'KJ_DeviceAddress4_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27577,10000001,38,'viewjc_llmonth1_By1','备注1',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27578,10000001,38,'viewjc_llmonth1_sort','排序',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27579,10000001,38,'viewjc_llmonth1_datsearch','查询时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,12,0,0,0,0,0),(27580,10000001,38,'viewjc_llmonth1_ID','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27581,10000001,39,'xiaoji','测点号',0,0,100,1,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(27582,10000001,39,'viewjc_lld1_point','测点号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27583,10000001,39,'KJ_DeviceAddress4_wz','安装位置',0,0,140,2,0,'',0,'','','',0,' ; xiaoji=\'合计\'',0,0,0,0,0,0,0,0,0),(27584,10000001,39,'viewjc_lld1_FY','负压（KPa）',0,0,80,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27585,10000001,39,'viewjc_lld1_WD','温度（℃）',0,0,75,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27586,10000001,39,'viewjc_lld1_WS','瓦斯（%）',0,0,70,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27587,10000001,39,'viewjc_lld1_CO','一氧化碳（ppm）',0,0,65,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27588,10000001,39,'viewjc_lld1_yxsc','运行时间',0,0,100,7,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27589,10000001,39,'viewjc_lld1_GH','工况混合流量（m³/min）',0,0,145,8,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27590,10000001,39,'viewjc_lld1_GC','工况纯量平均值',0,0,100,9,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27591,10000001,39,'viewjc_lld1_GHL','工况混合累计值',0,0,95,10,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27592,10000001,39,'viewjc_lld1_GCL','工况纯量累计值',0,0,100,11,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27593,10000001,39,'viewjc_lld1_BH','标况混合流量（m³/min）',0,0,145,12,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27594,10000001,39,'viewjc_lld1_ID','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27595,10000001,39,'KJ_DeviceDefInfo2_ID','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27596,10000001,39,'KJ_DeviceDefInfo2_pointid','测点ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27597,10000001,39,'KJ_DeviceAddress4_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27598,10000001,39,'viewjc_lld1_BC','标况纯量平均值',0,0,100,13,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27599,10000001,39,'viewjc_lld1_BHL','标况混合累计值',0,0,100,14,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27600,10000001,39,'viewjc_lld1_BCL','标况纯量累计值',0,0,100,15,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27601,10000001,39,'viewjc_lld1_timer','时间',0,0,100,16,0,'',0,'','','',0,' ; xiaoji=\'合计\'',0,0,0,0,0,0,0,0,0),(27602,10000001,39,'viewjc_lld1_By1','备注1',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27603,10000001,39,'viewjc_lld1_sort','排序',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27604,10000001,39,'viewjc_lld1_datsearch','查询时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27605,10000001,39,'KJ_DeviceDefInfo2_wzid','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27606,10000001,39,'viewjc_lld1_PointID','测点',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27607,10000001,41,'xiaoji','测点号',0,0,100,1,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(27608,10000001,41,'viewjc_llm1_point','测点号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27609,10000001,41,'KJ_DeviceDefInfo2_wzid','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27610,10000001,41,'KJ_DeviceAddress4_wz','安装位置',0,0,140,2,0,'',0,'','','',0,' ;xiaoji=\'合计\'',0,0,0,0,0,0,0,0,0),(27611,10000001,41,'viewjc_llm1_FY','负压（KPa）',0,0,80,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27612,10000001,41,'viewjc_llm1_WD','温度（℃）',0,0,75,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27613,10000001,41,'viewjc_llm1_WS','瓦斯（%）',0,0,70,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27614,10000001,41,'viewjc_llm1_CO','一氧化碳（ppm）',0,0,65,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27615,10000001,41,'viewjc_llm1_yxsc','运行时间',0,0,100,7,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27616,10000001,41,'viewjc_llm1_GH','工况混合流量（m³/min）',0,0,145,8,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27617,10000001,41,'viewjc_llm1_GC','工况纯量平均值',0,0,100,9,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27618,10000001,41,'viewjc_llm1_GHL','工况混合累计值',0,0,100,10,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27619,10000001,41,'viewjc_llm1_GCL','工况纯量累计值',0,0,100,11,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27620,10000001,41,'viewjc_llm1_BH','标况混合流量（m³/min）',0,0,145,12,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27621,10000001,41,'viewjc_llm1_BC','标况纯量平均值',0,0,100,13,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27622,10000001,41,'viewjc_llm1_BHL','标况混合累计值',0,0,100,14,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27623,10000001,41,'viewjc_llm1_BCL','标况纯量累计值',0,0,100,15,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27624,10000001,41,'viewjc_llm1_timer','时间',0,0,100,-1,0,'日期',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27625,10000001,41,'shijian','时间',0,0,100,16,0,'',0,'','','',1,'  ;xiaoji=\'合计\'',0,0,0,0,0,0,0,0,0),(27626,10000001,41,'viewjc_llm1_PointID','测点',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27627,10000001,41,'viewjc_llm1_By1','备注1',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27628,10000001,41,'viewjc_llm1_sort','排序',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27629,10000001,41,'viewjc_llm1_datsearch','查询时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,14,0,0,0,0,0),(27630,10000001,41,'viewjc_llm1_ID','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27631,10000001,41,'KJ_DeviceDefInfo2_ID','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27632,10000001,41,'KJ_DeviceDefInfo2_pointid','测点ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27633,10000001,41,'KJ_DeviceAddress4_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27634,10000001,42,'xiaoji','测点号',0,0,100,1,0,'',0,'','','',1,'',0,0,0,0,0,0,0,0,0),(27635,10000001,42,'viewjc_lly1_point','测点号',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27636,10000001,42,'KJ_DeviceAddress4_wz','安装位置',0,0,140,2,0,'',0,'','','',0,' ;xiaoji=\'合计\'',0,0,0,0,0,0,0,0,0),(27637,10000001,42,'viewjc_lly1_FY','负压（KPa）',0,0,80,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27638,10000001,42,'viewjc_lly1_WD','温度（℃）',0,0,75,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27639,10000001,42,'viewjc_lly1_WS','瓦斯（%）',0,0,70,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27640,10000001,42,'viewjc_lly1_CO','一氧化碳（ppm）',0,0,65,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27641,10000001,42,'viewjc_lly1_yxsc','运行时间',0,0,100,7,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27642,10000001,42,'viewjc_lly1_GH','工况混合流量（m³/min）',0,0,145,8,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27643,10000001,42,'viewjc_lly1_GC','工况纯量平均值',0,0,100,9,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27644,10000001,42,'viewjc_lly1_GHL','工况混合累计值',0,0,95,10,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27645,10000001,42,'viewjc_lly1_GCL','工况纯量累计值',0,0,100,11,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27646,10000001,42,'viewjc_lly1_BH','标况混合流量（m³/min）',0,0,145,12,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27647,10000001,42,'viewjc_lly1_BC','标况纯量平均值',0,0,100,13,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27648,10000001,42,'viewjc_lly1_BHL','标况混合累计值',0,0,100,14,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27649,10000001,42,'viewjc_lly1_BCL','标况纯量累计值',0,0,100,15,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27650,10000001,42,'viewjc_lly1_timer','时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27651,10000001,42,'shijian','时间',0,0,125,16,0,'',0,'','','',1,'  ;xiaoji=\'合计\'',0,0,0,0,0,0,0,0,0),(27652,10000001,42,'viewjc_lly1_By1','备注1',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27653,10000001,42,'viewjc_lly1_sort','排序',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27654,10000001,42,'viewjc_lly1_datsearch','查询时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,16,0,0,0,0,0),(27655,10000001,42,'viewjc_lly1_PointID','测点',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27656,10000001,42,'viewjc_lly1_ID','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27657,10000001,42,'KJ_DeviceDefInfo2_ID','主键ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27658,10000001,42,'KJ_DeviceDefInfo2_pointid','测点ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27659,10000001,42,'KJ_DeviceDefInfo2_wzid','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27660,10000001,42,'KJ_DeviceAddress4_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27661,10000001,86,'viewlinkagehistory1_linkagename','应急联动名称',0,0,100,1,0,'',0,'','','',0,'',0,1,0,0,1,0,0,0,0),(27662,10000001,86,'viewlinkagehistory1_StartTime','开始时间',0,0,130,2,0,'',0,'','','',0,'',0,1,0,0,1,0,0,0,0),(27663,10000001,86,'viewlinkagehistory1_EndTime','结束时间',0,0,130,3,0,'',0,'','','',0,'',0,1,0,0,0,0,0,0,0),(27664,10000001,86,'viewlinkagehistory1_IsForceEndText','是否强制结束',0,0,100,4,0,'',0,'','','',0,'',0,1,0,0,0,0,0,0,0),(27665,10000001,86,'viewlinkagehistory1_username','强制结束人',0,0,100,5,0,'',0,'','','',0,'',0,1,0,0,0,0,0,0,0),(27666,10000001,86,'viewlinkagehistory1_bigdataanalyzename','分析模型名称',0,0,180,6,0,'',0,'','','',0,'',0,1,0,0,0,0,0,0,0),(27667,10000001,86,'viewlinkagehistory1_wz','主控测点安装位置',0,0,180,7,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27668,10000001,86,'viewlinkagehistory1_point','主控测点号',0,0,100,8,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27669,10000001,86,'viewlinkagehistory1_Id','唯一编码',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27670,10000001,86,'viewlinkagehistory1_devname','主控测点类型',0,0,180,9,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27671,10000001,86,'viewlinkagehistory1_DataStateText','主控测点数据状态',0,0,100,10,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27719,10000001,95,'viewswitchrunlogreport1_point','MAC地址',0,0,100,1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27720,10000001,95,'viewswitchrunlogreport1_remark','IP地址',0,0,100,2,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27721,10000001,95,'KJ_DeviceAddress2_wz','安装位置',0,0,100,3,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27722,10000001,95,'viewswitchrunlogreport1_wzid','安装位置索引ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27723,10000001,95,'BFT_EnumCode3_strEnumDisplay','状态',0,0,100,4,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27724,10000001,95,'viewswitchrunlogreport1_type','数据状态',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27725,10000001,95,'viewswitchrunlogreport1_sumtime','故障累计时间',0,0,100,5,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27726,10000001,95,'viewswitchrunlogreport1_stime','开始时间',0,0,100,6,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27727,10000001,95,'viewswitchrunlogreport1_etime','结束时间',0,0,100,7,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27728,10000001,95,'KJ_DeviceAddress2_wzID','安装位置ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27729,10000001,95,'BFT_EnumCode3_lngEnumValue','类型ID',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0),(27730,10000001,95,'viewswitchrunlogreport1_datsearch','查询时间',0,0,100,-1,0,'',0,'','','',0,'',0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `bft_listdisplayex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bft_listex`
--

DROP TABLE IF EXISTS `bft_listex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bft_listex` (
  `ListID` int(11) NOT NULL AUTO_INCREMENT COMMENT '列表ID',
  `DirID` int(11) NOT NULL,
  `strListCode` varchar(200) DEFAULT NULL COMMENT '列表编码',
  `strListName` varchar(200) DEFAULT NULL COMMENT '列表名称',
  `blnList` tinyint(1) DEFAULT NULL COMMENT '是否为列表',
  `MainMetaDataID` int(11) DEFAULT NULL COMMENT '主元数据ID',
  `strListDescription` varchar(500) DEFAULT NULL COMMENT '列表描述信息',
  `blnPivot` tinyint(1) DEFAULT NULL COMMENT '支持报表',
  `blnChart` tinyint(1) DEFAULT NULL COMMENT '支持图表',
  `blnEnable` tinyint(1) NOT NULL COMMENT '是否有效',
  `strRightCode` varchar(500) DEFAULT NULL COMMENT '所需权限编码',
  `strDescription` varchar(500) DEFAULT NULL COMMENT '描述',
  `Programer` varchar(50) DEFAULT NULL COMMENT '配置程序员',
  `LastUpdateDate` varchar(50) DEFAULT NULL COMMENT '最后修改日期',
  `ProgramerNotes` varchar(1000) DEFAULT NULL COMMENT '开发说明',
  `blnPredefine` tinyint(1) DEFAULT NULL COMMENT '是否预制',
  `strListGroupCode` varchar(500) DEFAULT NULL COMMENT '列表分组编码',
  `strGuidCode` varchar(36) DEFAULT NULL COMMENT '列表唯一编码',
  PRIMARY KEY (`ListID`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bft_listex`
--

LOCK TABLES `bft_listex` WRITE;
/*!40000 ALTER TABLE `bft_listex` DISABLE KEYS */;
INSERT INTO `bft_listex` VALUES (1,0,'全部','全部',0,0,NULL,0,0,1,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),(2,6,'UserList','用户管理',1,1,'',1,0,1,NULL,NULL,NULL,NULL,NULL,0,'','cb8e6d7b-6e46-4498-9901-8e8fc7eece84'),(3,6,'RoleList','角色管理',1,2,'',0,0,1,NULL,NULL,NULL,NULL,NULL,0,'','982b5522-8383-41f5-a777-7b175d57b821'),(4,6,'RightList','权限点管理',1,3,'',1,0,1,NULL,NULL,NULL,NULL,NULL,0,'','2ca94d3c-4485-4d33-9cae-ad3842176a73'),(5,6,'MenuList','菜单列表',1,4,'',0,0,1,NULL,NULL,NULL,NULL,NULL,0,'','9adf9323-5e39-41d0-bb5e-acec13c62387'),(6,1,'系统管理','系统管理',0,0,NULL,0,0,1,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),(8,1,'模拟量','模拟量',0,0,NULL,0,0,1,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),(9,8,'MLLDayReport','模拟量日(班)报表',1,26,'',1,0,1,NULL,'汇总表',NULL,NULL,NULL,0,'','f9374f12-91d0-4d50-b6bd-bf931ff23ff4'),(10,8,'MLLBJReport','模拟量报警日(班)报表',1,31,'',1,0,1,NULL,NULL,NULL,NULL,NULL,0,'','818fd2b1-15cc-453b-9830-63534321e6b7'),(11,6,'RunLogList','运行日志列表',1,5,'',0,0,1,NULL,NULL,NULL,NULL,NULL,0,'','ba6e2fc1-69b8-4c8a-a249-8e5a3133b78d'),(12,6,'RequestList','请求库列表',1,6,'',0,0,1,NULL,NULL,NULL,NULL,NULL,0,'','7fa5c9d3-59b0-4720-9a83-c0323f53f5b3'),(13,8,'MLLDDDay','模拟量断电日(班)报表',1,33,'',1,0,1,NULL,NULL,NULL,NULL,NULL,0,'','46ee36fa-01e3-4301-b33c-551a93f55ed9'),(14,8,'MLLKDDay','模拟量馈电异常日(班)报表(停用)',1,33,'',1,0,1,NULL,NULL,NULL,NULL,NULL,0,'','b201d391-8858-44f1-9000-40ca3c340c05'),(15,8,'MMLTJZReport','模拟量统计值报表',1,34,'',1,0,1,NULL,NULL,NULL,NULL,NULL,0,'','55b95981-fdd0-4a08-9426-1fee61d7f85a'),(16,1,'开关量','开关量',0,0,NULL,0,0,1,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),(17,16,'KGLStateRBReport','开关量状态变动日(班)报表',1,27,'',1,0,1,NULL,NULL,NULL,NULL,NULL,0,'','1917fb72-584f-4cbe-b946-5fc5bcbd4f4b'),(18,16,'KGLKDDDayReport','开关量馈电异常日(班)报表(暂时停用)',1,39,'暂时停用',1,0,1,NULL,NULL,NULL,NULL,NULL,0,'','4ef80129-0198-4077-91b9-b89eb43c8733'),(19,16,'KGLBJDDDayReport','开关量报警及断电日(班)报表',1,39,'',1,0,1,NULL,NULL,NULL,NULL,NULL,0,'','b1ff2cc0-720a-4572-b17d-0d001e5d1be2'),(20,1,'逻辑分析','逻辑分析',0,0,NULL,0,0,1,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),(21,20,'JKSBGZDayReport','监控设备故障日(班)报表',1,40,'',1,0,1,NULL,NULL,NULL,NULL,NULL,0,'','fc02749b-451c-4846-9267-b7f36ea057bd'),(23,8,'MLLBJDD','模拟量报警断电记录月报表（未使用）',1,38,'',1,0,1,NULL,NULL,NULL,NULL,NULL,0,'','b2555fd1-a00e-459e-95d6-3aabe474c90c'),(26,1,'其它报表','其它报表',0,0,NULL,0,0,1,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),(27,26,'sbrunlogreport','设备运行日志报表',1,148,'',1,0,1,NULL,NULL,NULL,NULL,NULL,0,'','2476c5d2-f008-4bad-9a15-0426a89bd492'),(28,26,'MCRungLogReport','密采记录报表',1,149,'',1,0,1,NULL,NULL,NULL,NULL,NULL,0,'','512519bf-854a-48b9-8351-ac7d0c8fdcc2'),(29,26,'OperatorList','操作日志列表',1,150,'',1,0,1,NULL,NULL,NULL,NULL,NULL,0,'','7abcfc2f-9e18-4593-872b-02b07bfd2f31'),(32,26,'devwzReport','设备安装情况列表',1,155,'',1,0,1,NULL,NULL,NULL,NULL,NULL,0,'','6be824ac-d267-4dcc-9957-6126f1118bbd'),(34,16,'KGLKDDDayReporta','开关量馈电异常日(班)报表',1,162,'',1,0,1,NULL,NULL,NULL,NULL,NULL,0,'','03390bcd-6689-438f-b247-c81869176bcd'),(35,8,'MLLDayReport2','模拟量日(班)报表(未使用)',1,26,'',1,0,1,NULL,'汇总表',NULL,NULL,NULL,0,'','e7d9fbb7-b3d1-4685-a545-3d3ba7cd6f3f'),(36,1,'抽放报表','抽放报表',0,0,NULL,0,0,1,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),(37,36,'CFHoutReport','抽放24小时报表',1,164,'',1,0,1,NULL,NULL,NULL,NULL,NULL,0,'','f1c8c30a-f254-4b19-a659-9813b1248e5e'),(38,36,'CFDayReport','抽放日报表',1,165,'',1,0,1,NULL,NULL,NULL,NULL,NULL,0,'','4760bd9a-c405-494e-bbb8-0cbd6bd67560'),(39,36,'CFMonthReport','抽放月报表',1,166,'',1,0,1,NULL,NULL,NULL,NULL,NULL,0,'','e32e78c1-a967-420d-89db-f894615a1db7'),(40,36,'CFYearReport','抽放年报表',1,167,'',1,0,1,NULL,NULL,NULL,NULL,NULL,0,'','09c2842c-c041-4b20-ad24-6bc9ec261147'),(41,26,'module','网络模块运行记录',1,148,'',1,0,1,NULL,NULL,NULL,NULL,NULL,0,'','4496337e-95f5-4860-8d60-4c9352e19901'),(42,16,'FengJiTongji','风机运行状态统计',1,27,'',1,0,1,NULL,NULL,NULL,NULL,NULL,0,'','8b4baed9-ea9e-49e2-b0df-78bac1dd2b41'),(43,26,'defTest','设备台账明细列表',1,9,'',1,0,1,NULL,NULL,NULL,NULL,NULL,0,'','28547c24-c851-474b-80e0-e97e64479fb7'),(45,26,'ggddfdfd','设备台账列表（停用）',1,168,'',1,0,1,NULL,NULL,NULL,NULL,NULL,0,'','82bb1513-8f5a-4ae2-92fb-3826c825c698'),(47,8,'MnlKdYcDay','模拟量馈电异常日(班)报表',1,172,'',1,0,1,NULL,NULL,NULL,NULL,NULL,0,'','fdf76fff-4b0e-4bcb-b9ee-f0a6d830ec2d'),(49,6,'ListUserRole','用户管理',1,175,'',0,0,1,NULL,NULL,NULL,NULL,NULL,0,'','a9466c3d-62a5-459d-9e26-215ddddbb276'),(51,8,'ListMnlDaysAvg','模拟量多天平均值',1,176,'',1,0,1,NULL,NULL,NULL,NULL,NULL,0,'','0f81ea9a-e021-4820-8085-e103ee5e7f5c'),(52,8,'ListMnlBx','模拟量标校记录',1,177,'',1,0,1,NULL,NULL,NULL,NULL,NULL,0,'','c2a4b0f1-cff8-4b51-877c-87365d0b181a'),(53,8,'ListMnlBjDdMonth','模拟量报警断电月报',1,178,'',1,0,1,NULL,NULL,NULL,NULL,NULL,0,'','3e879a5d-91f1-4c23-ac89-d0412fabaa7b'),(54,16,'ListKglKdYc','开关量馈电异常日(班)报表(新未使用)',1,172,'',1,0,1,NULL,NULL,NULL,NULL,NULL,0,'','23db842d-c195-4b92-bbbf-ccb13262f696'),(55,1,'应急联动','应急联动',0,0,NULL,0,0,1,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),(56,55,'LinkageHistory','应急联动历史记录列表',1,183,'',1,0,1,NULL,NULL,NULL,NULL,NULL,0,'','19baa012-ca32-4fac-9ab0-ffe1fd19a2cb'),(62,26,'SubstationDischarge','分站放电情况',1,189,'',1,0,1,NULL,NULL,NULL,NULL,NULL,0,'','50ba61c9-5dba-42de-841a-6260d3e46f0e'),(63,26,'EquipmentAccount','设备台帐列表',1,190,'',1,0,1,NULL,NULL,NULL,NULL,NULL,0,'','47847484-e315-4ed8-8c10-710772809931'),(67,26,'PowerboxChargeHistory','放电记录查询',1,193,'',1,0,1,NULL,NULL,NULL,NULL,NULL,0,'','45ae09b7-f65f-4946-9416-a16ce2f64855'),(68,16,'reportKglDD','开关量断电日(班)报表列表',1,39,'',1,0,1,NULL,NULL,NULL,NULL,NULL,0,'','f9239c36-a8d2-4827-becf-0d73c6dd0233'),(69,20,'switchrunlogreport','交换机故障查询列表',1,194,'',1,0,1,NULL,NULL,NULL,NULL,NULL,0,'','582541f8-05fd-41e2-b27c-d8178cf27d86');
/*!40000 ALTER TABLE `bft_listex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bft_listmetadata`
--

DROP TABLE IF EXISTS `bft_listmetadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bft_listmetadata` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `ListDataID` int(20) NOT NULL COMMENT '列表方案ID',
  `MetaDataID` int(20) NOT NULL COMMENT '元数据ID',
  `MetaDataFieldID` int(20) DEFAULT NULL COMMENT '元数据字段ID',
  `MetaDataFieldName` varchar(100) NOT NULL DEFAULT '' COMMENT '元数据名称',
  `lngParentFieldID` int(20) NOT NULL COMMENT '父元数据ID',
  `lngRelativeFieldID` int(20) NOT NULL COMMENT '关联元数据ID',
  `strFullPath` varchar(1000) DEFAULT NULL COMMENT '字段全路径描述',
  `strParentFullPath` varchar(1000) DEFAULT NULL COMMENT '字段全路径描述',
  `strTableAlias` varchar(100) NOT NULL COMMENT '构造sql别名',
  `lngAliasCount` int(11) NOT NULL COMMENT '表别名数量',
  `lngSourceType` int(11) NOT NULL COMMENT '字段来源类型(0代表直接来源，2代表参照)',
  `lngParentID` int(20) NOT NULL COMMENT '父元数据ID',
  `strFieldType` varchar(50) DEFAULT NULL COMMENT '字段类型',
  `strFkCode` varchar(100) DEFAULT NULL COMMENT '参照编码',
  `blnSysProcess` tinyint(1) DEFAULT NULL COMMENT '是否为系统处理字段 用于建立关系自动生成的字段(ID外键字段，元数据blnPK为true的字段)',
  `blnShow` tinyint(1) DEFAULT NULL,
  `lngKeyFieldType` int(11) DEFAULT NULL COMMENT '是否为系统处理字段 用于建立关系自动生成的字段(ID外键字段，元数据blnPK为true的字段)',
  `isCalcField` tinyint(1) NOT NULL COMMENT '是否为计算字段',
  `strFormula` varchar(500) DEFAULT NULL COMMENT '计算公式',
  `strRefColList` varchar(200) DEFAULT NULL COMMENT '引用栏目列表',
  `lngOrder` int(11) DEFAULT NULL COMMENT '排序顺序',
  `lngOrderMethod` int(11) DEFAULT NULL COMMENT '排序方式0 Asc 1 Desc',
  `strCondition` varchar(1000) DEFAULT NULL COMMENT '固定条件',
  `strConditionCHS` varchar(1000) DEFAULT NULL COMMENT '固定条件中文',
  `blnFreCondition` tinyint(1) DEFAULT NULL COMMENT '固定条件中文',
  `lngFreConIndex` int(11) DEFAULT NULL COMMENT '常用条件顺序',
  `strFreCondition` varchar(1000) DEFAULT NULL COMMENT '常用条件串',
  `strFreConditionCHS` varchar(1000) DEFAULT NULL COMMENT '常用条件串中文',
  `blnReceivePara` tinyint(1) DEFAULT NULL COMMENT '接收参数',
  `blnPrintFreCondition` tinyint(1) DEFAULT NULL COMMENT '常用条件是否打印',
  PRIMARY KEY (`ID`,`MetaDataFieldName`)
) ENGINE=InnoDB AUTO_INCREMENT=27582 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bft_listmetadata`
--

LOCK TABLES `bft_listmetadata` WRITE;
/*!40000 ALTER TABLE `bft_listmetadata` DISABLE KEYS */;
INSERT INTO `bft_listmetadata` VALUES (9541,53,9,140,'KJ_DeviceDefInfo1_fzh',0,0,'0','','KJ_DeviceDefInfo1',1,0,0,'smallint','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(9542,53,9,141,'KJ_DeviceDefInfo1_kh',0,0,'0','','KJ_DeviceDefInfo1',1,0,0,'tinyint','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(9543,53,9,139,'KJ_DeviceDefInfo1_ID',0,0,'0','','KJ_DeviceDefInfo1',1,0,0,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(9544,53,9,2581,'KJ_DeviceDefInfo1_pointid',0,0,'0','','KJ_DeviceDefInfo1',1,0,0,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(9545,54,9,140,'KJ_DeviceDefInfo1_fzh',0,0,'0','','KJ_DeviceDefInfo1',1,0,0,'smallint','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(9546,54,9,142,'KJ_DeviceDefInfo1_devid',0,178,'0','','KJ_DeviceDefInfo1',1,1,0,'tinyint','AllJC_Dev',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(9547,54,9,139,'KJ_DeviceDefInfo1_ID',0,0,'0','','KJ_DeviceDefInfo1',1,0,0,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(9548,54,9,2581,'KJ_DeviceDefInfo1_pointid',0,0,'0','','KJ_DeviceDefInfo1',1,0,0,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(9549,55,9,141,'KJ_DeviceDefInfo1_kh',0,0,'0','','KJ_DeviceDefInfo1',1,0,0,'tinyint','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(9550,55,9,142,'KJ_DeviceDefInfo1_devid',0,178,'0','','KJ_DeviceDefInfo1',1,1,0,'tinyint','AllJC_Dev',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(9551,55,9,139,'KJ_DeviceDefInfo1_ID',0,0,'0','','KJ_DeviceDefInfo1',1,0,0,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(9552,55,9,2581,'KJ_DeviceDefInfo1_pointid',0,0,'0','','KJ_DeviceDefInfo1',1,0,0,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(9554,56,9,141,'KJ_DeviceDefInfo1_kh',0,0,'0','','KJ_DeviceDefInfo1',1,0,0,'tinyint','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(9555,56,9,139,'KJ_DeviceDefInfo1_ID',0,0,'0','','KJ_DeviceDefInfo1',1,0,0,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(9556,56,9,2581,'KJ_DeviceDefInfo1_pointid',0,0,'0','','KJ_DeviceDefInfo1',1,0,0,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(9557,56,9,140,'KJ_DeviceDefInfo1_fzh',0,0,'0','','KJ_DeviceDefInfo1',1,0,0,'smallint','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(9558,56,9,141,'KJ_DeviceDefInfo1_kh',0,0,'0','','KJ_DeviceDefInfo1',1,0,0,'tinyint','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(9559,56,9,139,'KJ_DeviceDefInfo1_ID',0,0,'0','','KJ_DeviceDefInfo1',1,0,0,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(9560,56,9,2581,'KJ_DeviceDefInfo1_pointid',0,0,'0','','KJ_DeviceDefInfo1',1,0,0,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(9562,57,9,143,'KJ_DeviceDefInfo1_wzid',0,136,'0','','KJ_DeviceDefInfo1',1,1,0,'smallint','AllJC_WZ',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(9563,57,9,139,'KJ_DeviceDefInfo1_ID',0,0,'0','','KJ_DeviceDefInfo1',1,0,0,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(9564,57,9,2581,'KJ_DeviceDefInfo1_pointid',0,0,'0','','KJ_DeviceDefInfo1',1,0,0,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(9565,57,9,141,'KJ_DeviceDefInfo1_kh',0,0,'0','','KJ_DeviceDefInfo1',1,0,0,'tinyint','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(9566,57,9,143,'KJ_DeviceDefInfo1_wzid',0,136,'0','','KJ_DeviceDefInfo1',1,1,0,'smallint','AllJC_WZ',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(9567,57,9,139,'KJ_DeviceDefInfo1_ID',0,0,'0','','KJ_DeviceDefInfo1',1,0,0,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(9568,57,9,2581,'KJ_DeviceDefInfo1_pointid',0,0,'0','','KJ_DeviceDefInfo1',1,0,0,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(9570,58,1,3,'BFT_User1_UserName',0,0,'0','','BFT_User1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(9571,58,1,1,'BFT_User1_UserID',0,0,'0','','BFT_User1',1,0,0,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(9572,58,1,2,'BFT_User1_UserCode',0,0,'0','','BFT_User1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(9573,58,1,3,'BFT_User1_UserName',0,0,'0','','BFT_User1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(9574,58,1,1,'BFT_User1_UserID',0,0,'0','','BFT_User1',1,0,0,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(9575,59,1,3,'BFT_User1_UserName',0,0,'0','','BFT_User1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(9576,59,1,4,'BFT_User1_Password',0,0,'0','','BFT_User1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(9577,59,1,1,'BFT_User1_UserID',0,0,'0','','BFT_User1',1,0,0,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(9579,60,1,4,'BFT_User1_Password',0,0,'0','','BFT_User1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(9580,60,1,1,'BFT_User1_UserID',0,0,'0','','BFT_User1',1,0,0,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(9584,61,1,2,'BFT_User1_UserCode',0,0,'0','','BFT_User1',1,0,0,'varchar','',0,1,0,0,'','',1,1,'小于&&$2&&$$所有','小于&&$2&&$$所有',1,1,'','',1,1),(9585,61,1,3,'BFT_User1_UserName',0,0,'0','','BFT_User1',1,0,0,'varchar','',0,0,0,0,'','',0,0,'','',1,2,'','',0,0),(9586,61,1,1,'BFT_User1_UserID',0,0,'0','','BFT_User1',1,0,0,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(9587,61,1,3,'BFT_User1_UserName',0,0,'0','','BFT_User1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(9588,61,1,3,'BFT_User1_UserName',0,0,'0','','BFT_User1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(9589,61,1,1,'BFT_User1_UserID',0,0,'0','','BFT_User1',1,0,0,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(9590,61,1,1,'BFT_User1_UserID',0,0,'0','','BFT_User1',1,0,0,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(9591,61,1,2,'BFT_User1_UserCode',0,0,'0','','BFT_User1',1,0,0,'varchar','',0,1,0,0,'','',1,1,'小于&&$2&&$$所有','小于&&$2&&$$所有',1,1,'','',1,1),(9592,61,1,3,'BFT_User1_UserName',0,0,'0','','BFT_User1',1,0,0,'varchar','',0,0,0,0,'','',0,0,'','',1,2,'','',0,0),(9593,61,1,3,'BFT_User1_UserName',0,0,'0','','BFT_User1',1,0,0,'varchar','',0,0,0,0,'','',0,0,'','',1,2,'','',0,0),(9594,61,1,1,'BFT_User1_UserID',0,0,'0','','BFT_User1',1,0,0,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(9595,61,1,1,'BFT_User1_UserID',0,0,'0','','BFT_User1',1,0,0,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(9598,62,1,1,'BFT_User1_UserID',0,0,'0','','BFT_User1',1,0,0,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(9599,62,1,5,'BFT_User1_DeptCode',0,0,'0','','BFT_User1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(9600,62,1,2,'BFT_User1_UserCode',0,0,'0','','BFT_User1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(9601,62,1,1,'BFT_User1_UserID',0,0,'0','','BFT_User1',1,0,0,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(9604,63,1,1,'BFT_User1_UserID',0,0,'0','','BFT_User1',1,0,0,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(9605,63,1,2,'BFT_User1_UserCode',0,0,'0','','BFT_User1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(9606,63,1,3,'BFT_User1_UserName',0,0,'0','','BFT_User1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(9607,63,1,1,'BFT_User1_UserID',0,0,'0','','BFT_User1',1,0,0,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(11626,21,148,2254,'viewsbrunlogreport1_timer',0,0,'0','','viewsbrunlogreport1',1,0,0,'datetime','',0,1,0,0,'','',1,1,'','',0,0,'','',0,0),(11627,21,148,2251,'viewsbrunlogreport1_point',0,0,'0','','viewsbrunlogreport1',1,0,0,'varchar','AllPoint',0,1,0,0,'','',2,1,'','',1,1,'','',1,0),(11628,21,148,2250,'viewsbrunlogreport1_wzid',0,136,'0','','viewsbrunlogreport1',1,1,0,'int','AllJC_WZ',0,0,0,0,'','',0,0,'','',1,2,'','',0,0),(11629,21,148,2249,'viewsbrunlogreport1_devid',0,178,'0','','viewsbrunlogreport1',1,1,0,'int','AllJC_Dev',0,0,0,0,'','',0,0,'','',1,3,'','',0,0),(11630,21,8,137,'KJ_DeviceAddress3_wz',2250,0,'0_2250','0','KJ_DeviceAddress3',3,0,148,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(11631,21,10,180,'KJ_DeviceType2_Name',2249,0,'0_2249','0','KJ_DeviceType2',2,0,148,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(11632,21,148,2253,'viewsbrunlogreport1_val',0,0,'0','','viewsbrunlogreport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(11633,21,10,199,'KJ_DeviceType2_Xs1',2249,0,'0_2249','0','KJ_DeviceType2',2,0,148,'nvarchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(11634,21,0,0,'dd',0,0,'','','',0,0,0,'varchar','',0,1,0,1,'case KJ_DeviceType2_type when 1 then KJ_DeviceType2_Xs1 else \'\' end','KJ_DeviceType2_Xs1,KJ_DeviceType2_type',0,0,'','',0,0,'','',0,0),(11635,21,148,2257,'viewsbrunlogreport1_datsearch',0,0,'0','','viewsbrunlogreport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,4,'','',0,0),(11636,21,10,179,'KJ_DeviceType2_type',2249,2233,'0_2249','0','KJ_DeviceType2',2,1,148,'tinyint','AllAllDevPro',0,0,0,0,'','',0,0,'','',1,5,'','',0,0),(11637,21,148,2246,'viewsbrunlogreport1_id',0,0,'0','','viewsbrunlogreport1',1,0,0,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(11638,21,10,178,'KJ_DeviceType2_devID',2249,0,'0_2249','0','KJ_DeviceType2',2,0,148,'tinyint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(11639,21,8,136,'KJ_DeviceAddress3_wzID',2250,0,'0_2250','0','KJ_DeviceAddress3',3,0,148,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(11640,21,43,753,'BFT_EnumCode4_lngEnumValue',2252,0,'0_2252','0','BFT_EnumCode4',4,0,148,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(11641,21,148,2252,'viewsbrunlogreport1_type',0,753,'0','','viewsbrunlogreport1',1,1,0,'smallint','AllTypeCode',0,0,0,0,'','',0,0,'','',1,6,'','',0,0),(11642,21,43,754,'BFT_EnumCode4_strEnumDisplay',2252,0,'0_2252','0','BFT_EnumCode4',4,0,148,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(11643,21,148,2258,'viewsbrunlogreport1_valnumber',0,0,'0','','viewsbrunlogreport1',1,0,0,'decimal','',0,0,0,0,'','',0,0,'','',1,7,'','',0,0),(11644,21,148,2541,'viewsbrunlogreport1_state',0,2524,'0','','viewsbrunlogreport1',1,1,0,'int','AllDevTypeCode',0,0,0,0,'','',0,0,'','',1,8,'','',0,0),(11645,21,163,2525,'BFT_EnumCode5_strEnumDisplay',2541,0,'0_2541','0','BFT_EnumCode5',5,0,148,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(11646,21,163,2524,'BFT_EnumCode5_lngEnumValue',2541,0,'0_2541','0','BFT_EnumCode5',5,0,148,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(13152,72,39,670,'ViewKGLBJDDDayReport1_point',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'nvarchar','AllPoint',0,1,0,0,'','',0,0,'','',1,2,'','',0,0),(13153,72,8,137,'KJ_DeviceAddress3_wz',669,0,'0_669','0','KJ_DeviceAddress3',3,0,39,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(13154,72,39,698,'ViewKGLBJDDDayReport1_statename',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(13155,72,39,685,'ViewKGLBJDDDayReport1_sumcount',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'int','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(13156,72,39,686,'ViewKGLBJDDDayReport1_sumtime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(13157,72,39,672,'ViewKGLBJDDDayReport1_stime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'datetime','',0,1,0,0,'','',2,1,'','',0,0,'','',0,0),(13158,72,39,673,'ViewKGLBJDDDayReport1_etime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(13159,72,39,674,'ViewKGLBJDDDayReport1_cursumtime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(13160,72,39,683,'ViewKGLBJDDDayReport1_wz',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(13161,72,39,699,'ViewKGLBJDDDayReport1_kdstate',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'不等于&&$复电失败','不等于&&$复电失败',0,0,'','',0,0),(13162,72,39,694,'ViewKGLBJDDDayReport1_kdstime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(13163,72,39,695,'ViewKGLBJDDDayReport1_kdetime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(13164,72,39,696,'ViewKGLBJDDDayReport1_kdcursumtime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'varchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(13165,72,39,687,'ViewKGLBJDDDayReport1_bid',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'varchar','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(13166,72,0,0,'kdstime2',0,0,'','','',0,0,0,'datetime','',0,1,0,1,'case  when  ViewKGLBJDDDayReport1_kdstate like \'%成功%\'  then ViewKGLBJDDDayReport1_stime else  ViewKGLBJDDDayReport1_kdstime  end','ViewKGLBJDDDayReport1_stime,ViewKGLBJDDDayReport1_kdstate,ViewKGLBJDDDayReport1_kdstime',0,0,'','',0,0,'','',0,0),(13167,72,0,0,'kdetime2',0,0,'','','',0,0,0,'datetime','',0,1,0,1,'case  when  ViewKGLBJDDDayReport1_kdstate like \'%成功%\'  then ViewKGLBJDDDayReport1_etime  else ViewKGLBJDDDayReport1_kdetime  end','ViewKGLBJDDDayReport1_etime,ViewKGLBJDDDayReport1_kdstate,ViewKGLBJDDDayReport1_kdetime',0,0,'','',0,0,'','',0,0),(13168,72,0,0,'kdcursumtime2',0,0,'','','',0,0,0,'varchar','',0,1,0,1,'case  when  ViewKGLBJDDDayReport1_kdstate like \'%成功%\'  then \r\nViewKGLBJDDDayReport1_cursumtime else  ViewKGLBJDDDayReport1_kdcursumtime  end','ViewKGLBJDDDayReport1_cursumtime,ViewKGLBJDDDayReport1_kdstate,ViewKGLBJDDDayReport1_kdcursumtime',0,0,'','',0,0,'','',0,0),(13169,72,39,689,'ViewKGLBJDDDayReport1_datsearch',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'','',0,0),(13170,72,39,700,'ViewKGLBJDDDayReport1_isalarm',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'bit','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(13171,72,39,669,'ViewKGLBJDDDayReport1_wzid',0,136,'0','','ViewKGLBJDDDayReport1',1,1,0,'smallint','AllJC_WZ',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(13172,72,8,136,'KJ_DeviceAddress3_wzID',669,0,'0_669','0','KJ_DeviceAddress3',3,0,39,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(13173,72,39,680,'ViewKGLBJDDDayReport1_kzk',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'ntext','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(13174,72,39,679,'ViewKGLBJDDDayReport1_cs',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'ntext','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(13175,72,39,2771,'ViewKGLBJDDDayReport1_bz1',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(13176,72,39,2772,'ViewKGLBJDDDayReport1_bz2',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(13177,16,39,670,'ViewKGLBJDDDayReport1_point',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'nvarchar','AllPoint',0,1,0,0,'','',0,0,'','',1,2,'','',0,0),(13178,16,8,137,'KJ_DeviceAddress3_wz',669,0,'0_669','0','KJ_DeviceAddress3',3,0,39,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(13179,16,39,698,'ViewKGLBJDDDayReport1_statename',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(13180,16,39,685,'ViewKGLBJDDDayReport1_sumcount',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'int','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(13181,16,39,686,'ViewKGLBJDDDayReport1_sumtime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(13182,16,39,672,'ViewKGLBJDDDayReport1_stime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'datetime','',0,1,0,0,'','',2,1,'','',0,0,'','',0,0),(13183,16,39,673,'ViewKGLBJDDDayReport1_etime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(13184,16,39,674,'ViewKGLBJDDDayReport1_cursumtime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(13185,16,39,683,'ViewKGLBJDDDayReport1_wz',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(13186,16,39,699,'ViewKGLBJDDDayReport1_kdstate',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'不等于&&$复电失败','不等于&&$复电失败',0,0,'','',0,0),(13187,16,39,694,'ViewKGLBJDDDayReport1_kdstime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(13188,16,39,695,'ViewKGLBJDDDayReport1_kdetime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(13189,16,39,696,'ViewKGLBJDDDayReport1_kdcursumtime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'varchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(13190,16,39,687,'ViewKGLBJDDDayReport1_bid',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'varchar','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(13191,16,0,0,'kdstime2',0,0,'','','',0,0,0,'datetime','',0,1,0,1,'case  when  ViewKGLBJDDDayReport1_kdstate like \'%成功%\'  then ViewKGLBJDDDayReport1_stime else  ViewKGLBJDDDayReport1_kdstime  end','ViewKGLBJDDDayReport1_stime,ViewKGLBJDDDayReport1_kdstate,ViewKGLBJDDDayReport1_kdstime',0,0,'','',0,0,'','',0,0),(13192,16,0,0,'kdetime2',0,0,'','','',0,0,0,'datetime','',0,1,0,1,'case  when  ViewKGLBJDDDayReport1_kdstate like \'%成功%\'  then ViewKGLBJDDDayReport1_etime  else ViewKGLBJDDDayReport1_kdetime  end','ViewKGLBJDDDayReport1_etime,ViewKGLBJDDDayReport1_kdstate,ViewKGLBJDDDayReport1_kdetime',0,0,'','',0,0,'','',0,0),(13193,16,0,0,'kdcursumtime2',0,0,'','','',0,0,0,'varchar','',0,1,0,1,'case  when  ViewKGLBJDDDayReport1_kdstate like \'%成功%\'  then \r\nViewKGLBJDDDayReport1_cursumtime else  ViewKGLBJDDDayReport1_kdcursumtime  end','ViewKGLBJDDDayReport1_cursumtime,ViewKGLBJDDDayReport1_kdstate,ViewKGLBJDDDayReport1_kdcursumtime',0,0,'','',0,0,'','',0,0),(13194,16,39,689,'ViewKGLBJDDDayReport1_datsearch',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'','',0,0),(13195,16,39,700,'ViewKGLBJDDDayReport1_isalarm',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'bit','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(13196,16,39,669,'ViewKGLBJDDDayReport1_wzid',0,136,'0','','ViewKGLBJDDDayReport1',1,1,0,'smallint','AllJC_WZ',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(13197,16,8,136,'KJ_DeviceAddress3_wzID',669,0,'0_669','0','KJ_DeviceAddress3',3,0,39,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(13198,16,39,680,'ViewKGLBJDDDayReport1_kzk',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'ntext','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(13199,16,39,679,'ViewKGLBJDDDayReport1_cs',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'ntext','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(13200,16,39,2771,'ViewKGLBJDDDayReport1_bz1',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(13201,16,39,2772,'ViewKGLBJDDDayReport1_bz2',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(15722,29,155,2381,'jc_defkzk1_point',0,0,'0','','jc_defkzk1',1,0,0,'varchar','AllPoint',0,1,0,0,'','',1,1,'','',1,3,'','',0,0),(15723,29,8,137,'KJ_DeviceAddress3_wz',2379,0,'0_2379','0','KJ_DeviceAddress3',3,0,155,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(15724,29,10,180,'KJ_DeviceType2_Name',2378,0,'0_2378','0','KJ_DeviceType2',2,0,155,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(15725,29,0,0,'blnBaoJin',0,0,'','','',0,0,0,'varchar','',0,1,0,1,'case when KJ_DeviceType2_Pl1+KJ_DeviceType2_Pl2+KJ_DeviceType2_Pl3>0 then \'是\' else \'否\' end','KJ_DeviceType2_Pl1,KJ_DeviceType2_Pl2,KJ_DeviceType2_Pl3',0,0,'','',0,0,'','',0,0),(15726,29,155,2378,'jc_defkzk1_devid',0,178,'0','','jc_defkzk1',1,1,0,'int','AllJC_Dev',0,0,1,0,'','',0,0,'','',1,2,'','',0,0),(15727,29,155,2374,'jc_defkzk1_ID',0,0,'0','','jc_defkzk1',1,0,0,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(15728,29,8,136,'KJ_DeviceAddress3_wzID',2379,0,'0_2379','0','KJ_DeviceAddress3',3,0,155,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(15729,29,10,178,'KJ_DeviceType2_devID',2378,0,'0_2378','0','KJ_DeviceType2',2,0,155,'tinyint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(15730,29,10,179,'KJ_DeviceType2_type',2378,2233,'0_2378','0','KJ_DeviceType2',2,1,155,'tinyint','AllAllDevPro',0,0,0,0,'','',0,0,'等于&&$\'2\'','等于&&$开关量',0,0,'','',0,0),(15731,29,10,183,'KJ_DeviceType2_Pl1',2378,0,'0_2378','0','KJ_DeviceType2',2,0,155,'smallint','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(15732,29,10,184,'KJ_DeviceType2_Pl2',2378,0,'0_2378','0','KJ_DeviceType2',2,0,155,'smallint','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(15733,29,10,185,'KJ_DeviceType2_Pl3',2378,0,'0_2378','0','KJ_DeviceType2',2,0,155,'smallint','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(15734,29,155,2379,'jc_defkzk1_wzid',0,136,'0','','jc_defkzk1',1,1,0,'int','AllJC_WZ',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(15735,29,10,204,'KJ_DeviceType2_Bz3',2378,2316,'0_2378','0','KJ_DeviceType2',2,1,155,'int','AllDevType',0,0,0,0,'','',0,0,'','',1,3,'','',0,0),(15736,28,155,2381,'jc_defkzk1_point',0,0,'0','','jc_defkzk1',1,0,0,'varchar','AllPoint',0,1,0,0,'','',1,1,'','',1,3,'','',0,0),(15737,28,8,137,'KJ_DeviceAddress3_wz',2379,0,'0_2379','0','KJ_DeviceAddress3',3,0,155,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(15738,28,155,2379,'jc_defkzk1_wzid',0,136,'0','','jc_defkzk1',1,1,0,'int','AllJC_WZ',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(15739,28,10,180,'KJ_DeviceType2_Name',2378,0,'0_2378','0','KJ_DeviceType2',2,0,155,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(15740,28,155,2378,'jc_defkzk1_devid',0,178,'0','','jc_defkzk1',1,1,0,'int','AllJC_Dev',0,0,1,0,'','',0,0,'','',1,2,'','',0,0),(15741,28,155,2374,'jc_defkzk1_ID',0,0,'0','','jc_defkzk1',1,0,0,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(15742,28,8,136,'KJ_DeviceAddress3_wzID',2379,0,'0_2379','0','KJ_DeviceAddress3',3,0,155,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(15743,28,10,178,'KJ_DeviceType2_devID',2378,0,'0_2378','0','KJ_DeviceType2',2,0,155,'tinyint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(15744,28,155,2391,'jc_defkzk1_Z2',0,0,'0','','jc_defkzk1',1,0,0,'float','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(15745,28,155,2395,'jc_defkzk1_Z6',0,0,'0','','jc_defkzk1',1,0,0,'float','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(15746,28,155,2392,'jc_defkzk1_Z3',0,0,'0','','jc_defkzk1',1,0,0,'float','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(15747,28,155,2396,'jc_defkzk1_Z7',0,0,'0','','jc_defkzk1',1,0,0,'float','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(15748,28,155,2393,'jc_defkzk1_Z4',0,0,'0','','jc_defkzk1',1,0,0,'float','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(15749,28,155,2397,'jc_defkzk1_Z8',0,0,'0','','jc_defkzk1',1,0,0,'float','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(15750,28,10,179,'KJ_DeviceType2_type',2378,2233,'0_2378','0','KJ_DeviceType2',2,1,155,'tinyint','AllAllDevPro',0,0,0,0,'','',0,0,'等于&&$\'1\'','等于&&$模拟量',0,0,'','',0,0),(15751,28,10,204,'KJ_DeviceType2_Bz3',2378,2316,'0_2378','0','KJ_DeviceType2',2,1,155,'int','AllDevType',0,0,0,0,'','',0,0,'','',1,3,'','',0,0),(16731,36,26,489,'ViewMLLDayReport1_bid',0,0,'0','','ViewMLLDayReport1',1,0,0,'varchar','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(16732,36,8,137,'KJ_DeviceAddress3_wz',455,0,'0_455','0','KJ_DeviceAddress3',3,0,26,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16733,36,26,442,'ViewMLLDayReport1_point',0,145,'0','','ViewMLLDayReport1',1,1,0,'nvarchar','AllPoint',0,1,0,0,'','',1,1,'','',0,0,'','',0,0),(16734,36,10,180,'KJ_DeviceType2_Name',454,0,'0_454','0','KJ_DeviceType2',2,0,26,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16735,36,8,136,'KJ_DeviceAddress3_wzID',455,0,'0_455','0','KJ_DeviceAddress3',3,0,26,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(16736,36,10,199,'KJ_DeviceType2_Xs1',454,0,'0_454','0','KJ_DeviceType2',2,0,26,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16737,36,26,444,'ViewMLLDayReport1_pjz',0,0,'0','','ViewMLLDayReport1',1,0,0,'float','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16738,36,26,443,'ViewMLLDayReport1_zdz',0,0,'0','','ViewMLLDayReport1',1,0,0,'real','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16739,36,26,445,'ViewMLLDayReport1_zdzs',0,0,'0','','ViewMLLDayReport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16740,36,26,483,'ViewMLLDayReport1_sumcountbybj',0,0,'0','','ViewMLLDayReport1',1,0,0,'int','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16741,36,26,484,'ViewMLLDayReport1_sumtimebybj',0,0,'0','','ViewMLLDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16742,36,26,485,'ViewMLLDayReport1_sumcountbydd',0,0,'0','','ViewMLLDayReport1',1,0,0,'int','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16743,36,26,486,'ViewMLLDayReport1_sumtimebydd',0,0,'0','','ViewMLLDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16744,36,26,487,'ViewMLLDayReport1_sumcountbykd',0,0,'0','','ViewMLLDayReport1',1,0,0,'int','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16745,36,26,488,'ViewMLLDayReport1_sumtimebykd',0,0,'0','','ViewMLLDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16746,36,26,456,'ViewMLLDayReport1_datsearch',0,0,'0','','ViewMLLDayReport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'','',0,1),(16747,36,26,454,'ViewMLLDayReport1_devid',0,178,'0','','ViewMLLDayReport1',1,1,0,'tinyint','AllJC_Dev',0,0,1,0,'','',0,0,'','',1,2,'','',0,0),(16748,36,10,178,'KJ_DeviceType2_devID',454,0,'0_454','0','KJ_DeviceType2',2,0,26,'tinyint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(16749,36,26,455,'ViewMLLDayReport1_wzid',0,136,'0','','ViewMLLDayReport1',1,1,0,'smallint','AllJC_WZ',0,0,1,0,'','',0,0,'','',0,0,'','',0,0),(16750,36,26,453,'ViewMLLDayReport1_kh',0,0,'0','','ViewMLLDayReport1',1,0,0,'tinyint','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(16751,36,26,452,'ViewMLLDayReport1_fzh',0,0,'0','','ViewMLLDayReport1',1,0,0,'smallint','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(16752,36,26,2544,'ViewMLLDayReport1_state',0,2524,'0','','ViewMLLDayReport1',1,1,0,'int','AllDevTypeCode',0,0,0,0,'','',0,0,'','',1,3,'','',0,0),(16783,37,31,555,'ViewJC_BMonth1_point',0,0,'0','','ViewJC_BMonth1',1,0,0,'nvarchar','AllPoint',0,1,0,0,'','',1,1,'','',1,3,'','',0,0),(16784,37,8,137,'KJ_DeviceAddress4_wz',554,0,'0_554','0','KJ_DeviceAddress4',4,0,31,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16785,37,10,180,'KJ_DeviceType3_Name',553,0,'0_553','0','KJ_DeviceType3',3,0,31,'nvarchar','',0,1,0,0,'','',0,0,'包含&&$一氧化碳','包含&&$一氧化碳',0,0,'','',0,0),(16786,37,10,199,'KJ_DeviceType3_Xs1',553,0,'0_553','0','KJ_DeviceType3',3,0,31,'nvarchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(16787,37,31,572,'ViewJC_BMonth1_sumcount',0,0,'0','','ViewJC_BMonth1',1,0,0,'int','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16788,37,31,568,'ViewJC_BMonth1_bida',0,582,'0','','ViewJC_BMonth1',1,1,0,'varchar','',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(16789,37,31,573,'ViewJC_BMonth1_sumtime',0,0,'0','','ViewJC_BMonth1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16790,37,173,2791,'viewmnlbjmaxavgmaxtime2_zdz',568,0,'0_568','0','viewmnlbjmaxavgmaxtime2',2,0,31,'decimal','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16791,37,173,2793,'viewmnlbjmaxavgmaxtime2_zdzs',568,0,'0_568','0','viewmnlbjmaxavgmaxtime2',2,0,31,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16792,37,173,2792,'viewmnlbjmaxavgmaxtime2_pjz',568,0,'0_568','0','viewmnlbjmaxavgmaxtime2',2,0,31,'decimal','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16793,37,31,557,'ViewJC_BMonth1_stime',0,0,'0','','ViewJC_BMonth1',1,0,0,'datetime','',0,1,0,0,'','',2,1,'','',0,0,'','',0,0),(16794,37,31,558,'ViewJC_BMonth1_etime',0,0,'0','','ViewJC_BMonth1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16795,37,31,559,'ViewJC_BMonth1_cursumtime',0,0,'0','','ViewJC_BMonth1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16796,37,31,561,'ViewJC_BMonth1_zdz',0,0,'0','','ViewJC_BMonth1',1,0,0,'real','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16797,37,31,563,'ViewJC_BMonth1_zdzs',0,0,'0','','ViewJC_BMonth1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16798,37,31,570,'ViewJC_BMonth1_datsearch',0,0,'0','','ViewJC_BMonth1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'介于&&$1900-01-01 00:00:00&&$9999-12-31 23:59:59','',0,1),(16799,37,31,567,'ViewJC_BMonth1_bid',0,0,'0','','ViewJC_BMonth1',1,0,0,'varchar','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(16800,37,31,554,'ViewJC_BMonth1_wzid',0,136,'0','','ViewJC_BMonth1',1,1,0,'smallint','AllJC_WZ',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(16801,37,8,136,'KJ_DeviceAddress4_wzID',554,0,'0_554','0','KJ_DeviceAddress4',4,0,31,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(16802,37,10,178,'KJ_DeviceType3_devID',553,0,'0_553','0','KJ_DeviceType3',3,0,31,'tinyint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(16803,37,31,2537,'ViewJC_BMonth1_state',0,2524,'0','','ViewJC_BMonth1',1,1,0,'smallint','AllDevTypeCode',0,0,0,0,'','',0,0,'','',1,2,'','',0,0),(16804,37,163,2525,'BFT_EnumCode5_strEnumDisplay',2537,0,'0_2537','0','BFT_EnumCode5',5,0,31,'varchar','',0,1,0,0,'','',0,0,'等于&&$标校','等于&&$标校',0,0,'','',0,0),(16805,37,163,2524,'BFT_EnumCode5_lngEnumValue',2537,0,'0_2537','0','BFT_EnumCode5',5,0,31,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(16806,37,31,553,'ViewJC_BMonth1_devid',0,178,'0','','ViewJC_BMonth1',1,1,0,'tinyint','AllJC_Dev',0,0,1,0,'','',0,0,'','',1,4,'','',0,0),(16807,37,31,564,'ViewJC_BMonth1_cs',0,0,'0','','ViewJC_BMonth1',1,0,0,'ntext','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16808,37,31,2775,'ViewJC_BMonth1_bz1',0,0,'0','','ViewJC_BMonth1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16809,37,31,2776,'ViewJC_BMonth1_bz2',0,0,'0','','ViewJC_BMonth1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16810,37,173,2789,'viewmnlbjmaxavgmaxtime2_pointid',568,0,'0_568','0','viewmnlbjmaxavgmaxtime2',2,0,31,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(16811,35,31,555,'ViewJC_BMonth1_point',0,0,'0','','ViewJC_BMonth1',1,0,0,'nvarchar','AllPoint',0,1,0,0,'','',1,1,'','',1,3,'','',0,0),(16812,35,8,137,'KJ_DeviceAddress4_wz',554,0,'0_554','0','KJ_DeviceAddress4',4,0,31,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16813,35,10,180,'KJ_DeviceType3_Name',553,0,'0_553','0','KJ_DeviceType3',3,0,31,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16814,35,10,199,'KJ_DeviceType3_Xs1',553,0,'0_553','0','KJ_DeviceType3',3,0,31,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16815,35,31,572,'ViewJC_BMonth1_sumcount',0,0,'0','','ViewJC_BMonth1',1,0,0,'int','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16816,35,31,568,'ViewJC_BMonth1_bida',0,582,'0','','ViewJC_BMonth1',1,1,0,'varchar','',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(16817,35,31,573,'ViewJC_BMonth1_sumtime',0,0,'0','','ViewJC_BMonth1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16818,35,173,2791,'viewmnlbjmaxavgmaxtime2_zdz',568,0,'0_568','0','viewmnlbjmaxavgmaxtime2',2,0,31,'decimal','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16819,35,173,2793,'viewmnlbjmaxavgmaxtime2_zdzs',568,0,'0_568','0','viewmnlbjmaxavgmaxtime2',2,0,31,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16820,35,173,2792,'viewmnlbjmaxavgmaxtime2_pjz',568,0,'0_568','0','viewmnlbjmaxavgmaxtime2',2,0,31,'decimal','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16821,35,31,557,'ViewJC_BMonth1_stime',0,0,'0','','ViewJC_BMonth1',1,0,0,'datetime','',0,1,0,0,'','',2,1,'','',0,0,'','',0,0),(16822,35,31,558,'ViewJC_BMonth1_etime',0,0,'0','','ViewJC_BMonth1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16823,35,31,559,'ViewJC_BMonth1_cursumtime',0,0,'0','','ViewJC_BMonth1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16824,35,31,561,'ViewJC_BMonth1_zdz',0,0,'0','','ViewJC_BMonth1',1,0,0,'real','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16825,35,31,563,'ViewJC_BMonth1_zdzs',0,0,'0','','ViewJC_BMonth1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16826,35,31,570,'ViewJC_BMonth1_datsearch',0,0,'0','','ViewJC_BMonth1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'介于&&$1900-01-01 00:00:00&&$9999-12-31 23:59:59','',0,1),(16827,35,31,567,'ViewJC_BMonth1_bid',0,0,'0','','ViewJC_BMonth1',1,0,0,'varchar','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(16828,35,31,554,'ViewJC_BMonth1_wzid',0,136,'0','','ViewJC_BMonth1',1,1,0,'smallint','AllJC_WZ',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(16829,35,8,136,'KJ_DeviceAddress4_wzID',554,0,'0_554','0','KJ_DeviceAddress4',4,0,31,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(16830,35,10,178,'KJ_DeviceType3_devID',553,0,'0_553','0','KJ_DeviceType3',3,0,31,'tinyint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(16831,35,31,2537,'ViewJC_BMonth1_state',0,2524,'0','','ViewJC_BMonth1',1,1,0,'smallint','AllDevTypeCode',0,0,0,0,'','',0,0,'','',1,2,'','',0,0),(16832,35,163,2525,'BFT_EnumCode5_strEnumDisplay',2537,0,'0_2537','0','BFT_EnumCode5',5,0,31,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16833,35,163,2524,'BFT_EnumCode5_lngEnumValue',2537,0,'0_2537','0','BFT_EnumCode5',5,0,31,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(16834,35,31,553,'ViewJC_BMonth1_devid',0,178,'0','','ViewJC_BMonth1',1,1,0,'tinyint','AllJC_Dev',0,0,1,0,'','',0,0,'等于&&$\'21\',\'22\',\'23\',\'24\',\'25\',\'26\',\'27\',\'231\',\'235\',\'236\',\'237\'','等于&&$瓦斯(工作面),瓦斯(回风),瓦斯(硐室),管道高浓瓦斯,瓦斯(总回),瓦斯(墙前),瓦斯(煤仓),煤仓瓦斯,瓦斯(上隅角),瓦斯(漏煤眼),瓦斯(水仓)',1,4,'','',0,0),(16835,35,31,562,'ViewJC_BMonth1_pjz',0,0,'0','','ViewJC_BMonth1',1,0,0,'real','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16836,35,31,564,'ViewJC_BMonth1_cs',0,0,'0','','ViewJC_BMonth1',1,0,0,'ntext','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16837,35,31,2775,'ViewJC_BMonth1_bz1',0,0,'0','','ViewJC_BMonth1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16838,35,31,2776,'ViewJC_BMonth1_bz2',0,0,'0','','ViewJC_BMonth1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16839,35,173,2789,'viewmnlbjmaxavgmaxtime2_pointid',568,0,'0_568','0','viewmnlbjmaxavgmaxtime2',2,0,31,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(16840,34,31,555,'ViewJC_BMonth1_point',0,0,'0','','ViewJC_BMonth1',1,0,0,'nvarchar','AllPoint',0,1,0,0,'','',1,1,'','',1,3,'','',0,0),(16841,34,8,137,'KJ_DeviceAddress4_wz',554,0,'0_554','0','KJ_DeviceAddress4',4,0,31,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16842,34,10,180,'KJ_DeviceType3_Name',553,0,'0_553','0','KJ_DeviceType3',3,0,31,'nvarchar','',0,1,0,0,'','',0,0,'包含&&$瓦斯','包含&&$瓦斯',0,0,'','',0,0),(16843,34,10,199,'KJ_DeviceType3_Xs1',553,0,'0_553','0','KJ_DeviceType3',3,0,31,'nvarchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(16844,34,31,572,'ViewJC_BMonth1_sumcount',0,0,'0','','ViewJC_BMonth1',1,0,0,'int','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16845,34,31,568,'ViewJC_BMonth1_bida',0,582,'0','','ViewJC_BMonth1',1,1,0,'varchar','',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(16846,34,31,573,'ViewJC_BMonth1_sumtime',0,0,'0','','ViewJC_BMonth1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16847,34,173,2791,'viewmnlbjmaxavgmaxtime2_zdz',568,0,'0_568','0','viewmnlbjmaxavgmaxtime2',2,0,31,'decimal','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16848,34,173,2793,'viewmnlbjmaxavgmaxtime2_zdzs',568,0,'0_568','0','viewmnlbjmaxavgmaxtime2',2,0,31,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16849,34,173,2792,'viewmnlbjmaxavgmaxtime2_pjz',568,0,'0_568','0','viewmnlbjmaxavgmaxtime2',2,0,31,'decimal','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16850,34,31,557,'ViewJC_BMonth1_stime',0,0,'0','','ViewJC_BMonth1',1,0,0,'datetime','',0,1,0,0,'','',2,1,'','',0,0,'','',0,0),(16851,34,31,558,'ViewJC_BMonth1_etime',0,0,'0','','ViewJC_BMonth1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16852,34,31,559,'ViewJC_BMonth1_cursumtime',0,0,'0','','ViewJC_BMonth1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16853,34,31,561,'ViewJC_BMonth1_zdz',0,0,'0','','ViewJC_BMonth1',1,0,0,'real','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16854,34,31,563,'ViewJC_BMonth1_zdzs',0,0,'0','','ViewJC_BMonth1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16855,34,31,570,'ViewJC_BMonth1_datsearch',0,0,'0','','ViewJC_BMonth1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'介于&&$1900-01-01 00:00:00&&$9999-12-31 23:59:59','',0,1),(16856,34,31,567,'ViewJC_BMonth1_bid',0,0,'0','','ViewJC_BMonth1',1,0,0,'varchar','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(16857,34,31,554,'ViewJC_BMonth1_wzid',0,136,'0','','ViewJC_BMonth1',1,1,0,'smallint','AllJC_WZ',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(16858,34,8,136,'KJ_DeviceAddress4_wzID',554,0,'0_554','0','KJ_DeviceAddress4',4,0,31,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(16859,34,10,178,'KJ_DeviceType3_devID',553,0,'0_553','0','KJ_DeviceType3',3,0,31,'tinyint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(16860,34,31,2537,'ViewJC_BMonth1_state',0,2524,'0','','ViewJC_BMonth1',1,1,0,'smallint','AllDevTypeCode',0,0,0,0,'','',0,0,'','',1,2,'','',0,0),(16861,34,163,2525,'BFT_EnumCode5_strEnumDisplay',2537,0,'0_2537','0','BFT_EnumCode5',5,0,31,'varchar','',0,1,0,0,'','',0,0,'等于&&$标校','等于&&$标校',0,0,'','',0,0),(16862,34,163,2524,'BFT_EnumCode5_lngEnumValue',2537,0,'0_2537','0','BFT_EnumCode5',5,0,31,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(16863,34,31,553,'ViewJC_BMonth1_devid',0,178,'0','','ViewJC_BMonth1',1,1,0,'tinyint','AllJC_Dev',0,0,1,0,'','',0,0,'','',1,4,'','',0,0),(16864,34,31,564,'ViewJC_BMonth1_cs',0,0,'0','','ViewJC_BMonth1',1,0,0,'ntext','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16865,34,31,2775,'ViewJC_BMonth1_bz1',0,0,'0','','ViewJC_BMonth1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16866,34,31,2776,'ViewJC_BMonth1_bz2',0,0,'0','','ViewJC_BMonth1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(16867,34,173,2789,'viewmnlbjmaxavgmaxtime2_pointid',568,0,'0_568','0','viewmnlbjmaxavgmaxtime2',2,0,31,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(18713,12,34,637,'ViewMLLTJZReport1_point',0,0,'0','','ViewMLLTJZReport1',1,0,0,'nvarchar','AllPoint',0,1,0,0,'','',1,1,'','',1,2,'','',0,0),(18714,12,10,180,'KJ_DeviceType2_Name',627,0,'0_627','0','KJ_DeviceType2',2,0,34,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(18715,12,34,627,'ViewMLLTJZReport1_devid',0,178,'0','','ViewMLLTJZReport1',1,1,0,'tinyint','AllJC_Dev',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(18716,12,10,199,'KJ_DeviceType2_Xs1',627,0,'0_627','0','KJ_DeviceType2',2,0,34,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(18717,12,8,137,'KJ_DeviceAddress3_wz',628,0,'0_628','0','KJ_DeviceAddress3',3,0,34,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(18718,12,9,154,'KJ_DeviceDefInfo6_z2',2892,0,'0_2892','0','KJ_DeviceDefInfo6',6,0,34,'real','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(18719,12,9,155,'KJ_DeviceDefInfo6_z3',2892,0,'0_2892','0','KJ_DeviceDefInfo6',6,0,34,'real','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(18720,12,9,156,'KJ_DeviceDefInfo6_z4',2892,0,'0_2892','0','KJ_DeviceDefInfo6',6,0,34,'real','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(18721,12,34,628,'ViewMLLTJZReport1_wzid',0,136,'0','','ViewMLLTJZReport1',1,1,0,'smallint','AllJC_WZ',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(18722,12,34,624,'ViewMLLTJZReport1_id',0,0,'0','','ViewMLLTJZReport1',1,0,0,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(18723,12,10,178,'KJ_DeviceType2_devID',627,0,'0_627','0','KJ_DeviceType2',2,0,34,'tinyint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(18724,12,8,136,'KJ_DeviceAddress3_wzID',628,0,'0_628','0','KJ_DeviceAddress3',3,0,34,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(18725,12,182,2906,'viewfiveminutemaxandtime4_zdz',641,0,'0_641','0','viewfiveminutemaxandtime4',4,0,34,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(18726,12,182,2908,'viewfiveminutemaxandtime4_zdzs',641,0,'0_641','0','viewfiveminutemaxandtime4',4,0,34,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(18727,12,182,2907,'viewfiveminutemaxandtime4_pjz',641,0,'0_641','0','viewfiveminutemaxandtime4',4,0,34,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(18728,12,34,643,'ViewMLLTJZReport1_timer1',0,0,'0','','ViewMLLTJZReport1',1,0,0,'varchar','',0,1,0,0,'','',2,1,'','',0,0,'','',0,0),(18729,12,34,644,'ViewMLLTJZReport1_timerenda',0,0,'0','','ViewMLLTJZReport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(18730,12,34,629,'ViewMLLTJZReport1_zdz',0,0,'0','','ViewMLLTJZReport1',1,0,0,'real','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(18731,12,34,631,'ViewMLLTJZReport1_zxz',0,0,'0','','ViewMLLTJZReport1',1,0,0,'real','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(18732,12,34,630,'ViewMLLTJZReport1_pjz',0,0,'0','','ViewMLLTJZReport1',1,0,0,'float','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(18733,12,0,0,'pjzcacl',0,0,'','','',0,0,0,'decimal','',0,0,0,1,'round(ViewMLLTJZReport1_pjz,2)','ViewMLLTJZReport1_pjz',0,0,'','',0,0,'','',0,0),(18734,12,34,642,'ViewMLLTJZReport1_datsearch',0,0,'0','','ViewMLLTJZReport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'','',0,0),(18735,12,34,638,'ViewMLLTJZReport1_sjhour',0,0,'0','','ViewMLLTJZReport1',1,0,0,'nvarchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(18736,12,34,2892,'ViewMLLTJZReport1_pointid',0,2581,'0','','ViewMLLTJZReport1',1,1,0,'bigint','',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(18737,12,9,139,'KJ_DeviceDefInfo6_ID',2892,0,'0_2892','0','KJ_DeviceDefInfo6',6,0,34,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(18738,12,9,2581,'KJ_DeviceDefInfo6_pointid',2892,0,'0_2892','0','KJ_DeviceDefInfo6',6,0,34,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(18739,12,34,639,'ViewMLLTJZReport1_timer',0,0,'0','','ViewMLLTJZReport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(18740,12,34,640,'ViewMLLTJZReport1_timerend',0,0,'0','','ViewMLLTJZReport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(18741,12,34,641,'ViewMLLTJZReport1_bid',0,2904,'0','','ViewMLLTJZReport1',1,1,0,'varchar','',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(18742,12,182,2904,'viewfiveminutemaxandtime4_pointid',641,0,'0_641','0','viewfiveminutemaxandtime4',4,0,34,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(18836,80,26,489,'ViewMLLDayReport1_bid',0,0,'0','','ViewMLLDayReport1',1,0,0,'varchar','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(18837,80,26,442,'ViewMLLDayReport1_point',0,145,'0','','ViewMLLDayReport1',1,1,0,'nvarchar','AllPointMnl',0,1,0,0,'','',2,1,'','',1,2,'','',0,0),(18838,80,8,137,'KJ_DeviceAddress3_wz',455,0,'0_455','0','KJ_DeviceAddress3',3,0,26,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(18839,80,10,180,'KJ_DeviceType2_Name',454,0,'0_454','0','KJ_DeviceType2',2,0,26,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(18840,80,8,136,'KJ_DeviceAddress3_wzID',455,0,'0_455','0','KJ_DeviceAddress3',3,0,26,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(18841,80,10,199,'KJ_DeviceType2_Xs1',454,0,'0_454','0','KJ_DeviceType2',2,0,26,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(18842,80,9,154,'KJ_DeviceDefInfo6_z2',2902,0,'0_2902','0','KJ_DeviceDefInfo6',6,0,26,'real','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(18843,80,9,155,'KJ_DeviceDefInfo6_z3',2902,0,'0_2902','0','KJ_DeviceDefInfo6',6,0,26,'real','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(18844,80,9,156,'KJ_DeviceDefInfo6_z4',2902,0,'0_2902','0','KJ_DeviceDefInfo6',6,0,26,'real','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(18845,80,26,443,'ViewMLLDayReport1_zdz',0,0,'0','','ViewMLLDayReport1',1,0,0,'real','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(18846,80,26,2900,'ViewMLLDayReport1_zxz',0,0,'0','','ViewMLLDayReport1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(18847,80,26,444,'ViewMLLDayReport1_pjz',0,0,'0','','ViewMLLDayReport1',1,0,0,'float','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(18848,80,26,445,'ViewMLLDayReport1_zdzs',0,0,'0','','ViewMLLDayReport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(18849,80,26,485,'ViewMLLDayReport1_sumcountbydd',0,0,'0','','ViewMLLDayReport1',1,0,0,'int','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(18850,80,26,486,'ViewMLLDayReport1_sumtimebydd',0,0,'0','','ViewMLLDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(18851,80,26,483,'ViewMLLDayReport1_sumcountbybj',0,0,'0','','ViewMLLDayReport1',1,0,0,'int','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(18852,80,26,484,'ViewMLLDayReport1_sumtimebybj',0,0,'0','','ViewMLLDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(18853,80,26,2917,'ViewMLLDayReport1_sumcountbykdfdsb',0,0,'0','','ViewMLLDayReport1',1,0,0,'bigint','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(18854,80,26,2918,'ViewMLLDayReport1_sumtimebykdfdsb',0,0,'0','','ViewMLLDayReport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(18855,80,26,2915,'ViewMLLDayReport1_sumcountbygz',0,0,'0','','ViewMLLDayReport1',1,0,0,'bigint','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(18856,80,26,2916,'ViewMLLDayReport1_sumtimebygz',0,0,'0','','ViewMLLDayReport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(18857,80,26,456,'ViewMLLDayReport1_datsearch',0,0,'0','','ViewMLLDayReport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'','',0,1),(18858,80,26,454,'ViewMLLDayReport1_devid',0,178,'0','','ViewMLLDayReport1',1,1,0,'tinyint','AllJC_Dev',0,0,1,0,'','',0,0,'','',1,3,'','',0,0),(18859,80,10,178,'KJ_DeviceType2_devID',454,0,'0_454','0','KJ_DeviceType2',2,0,26,'tinyint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(18860,80,26,455,'ViewMLLDayReport1_wzid',0,136,'0','','ViewMLLDayReport1',1,1,0,'smallint','AllJC_WZ',0,0,1,0,'','',0,0,'','',0,0,'','',0,0),(18861,80,26,453,'ViewMLLDayReport1_kh',0,0,'0','','ViewMLLDayReport1',1,0,0,'tinyint','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(18862,80,26,452,'ViewMLLDayReport1_fzh',0,0,'0','','ViewMLLDayReport1',1,0,0,'smallint','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(18863,80,26,2544,'ViewMLLDayReport1_state',0,2524,'0','','ViewMLLDayReport1',1,1,0,'int','AllDevTypeCode',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(18864,80,26,2902,'ViewMLLDayReport1_bida',0,2581,'0','','ViewMLLDayReport1',1,1,0,'bigint','',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(18865,80,9,139,'KJ_DeviceDefInfo6_ID',2902,0,'0_2902','0','KJ_DeviceDefInfo6',6,0,26,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(18866,80,9,2581,'KJ_DeviceDefInfo6_pointid',2902,0,'0_2902','0','KJ_DeviceDefInfo6',6,0,26,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(18867,80,10,204,'KJ_DeviceType2_Bz3',454,2316,'0_454','0','KJ_DeviceType2',2,1,26,'int','AllDevType',0,0,1,0,'','',1,1,'','',0,0,'','',0,0),(19248,84,162,2500,'viewkglkddayreport1_point',0,0,'0','','viewkglkddayreport1',1,0,0,'varchar','AllPointKgl',0,1,0,0,'','',0,0,'','',1,2,'','',0,0),(19249,84,8,137,'KJ_DeviceAddress3_wz',2499,0,'0_2499','0','KJ_DeviceAddress3',3,0,162,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(19250,84,162,2499,'viewkglkddayreport1_wzid',0,136,'0','','viewkglkddayreport1',1,1,0,'int','AllJC_WZ',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(19251,84,10,180,'KJ_DeviceType2_Name',2498,0,'0_2498','0','KJ_DeviceType2',2,0,162,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(19252,84,162,2498,'viewkglkddayreport1_devid',0,178,'0','','viewkglkddayreport1',1,1,0,'int','AllJC_Dev',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(19253,84,10,199,'KJ_DeviceType2_Xs1',2498,0,'0_2498','0','KJ_DeviceType2',2,0,162,'nvarchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(19254,84,162,2926,'viewkglkddayreport1_kdsumcountfdsb',0,0,'0','','viewkglkddayreport1',1,0,0,'bigint','',0,1,0,0,'','',0,0,'大于&&$0','大于&&$0',0,0,'','',0,0),(19255,84,162,2927,'viewkglkddayreport1_kdsumtimefdsb',0,0,'0','','viewkglkddayreport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(19256,84,162,2508,'viewkglkddayreport1_wz',0,0,'0','','viewkglkddayreport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(19257,84,162,2520,'viewkglkddayreport1_kdstate',0,0,'0','','viewkglkddayreport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(19258,84,162,2517,'viewkglkddayreport1_kdstime',0,0,'0','','viewkglkddayreport1',1,0,0,'datetime','',0,1,0,0,'','',2,1,'','',0,0,'','',0,0),(19259,84,162,2518,'viewkglkddayreport1_kdetime',0,0,'0','','viewkglkddayreport1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(19260,84,162,2519,'viewkglkddayreport1_kdcursumtime',0,0,'0','','viewkglkddayreport1',1,0,0,'time','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(19261,84,162,2512,'viewkglkddayreport1_datsearch',0,0,'0','','viewkglkddayreport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'','',0,1),(19262,84,162,2553,'viewkglkddayreport1_cs',0,0,'0','','viewkglkddayreport1',1,0,0,'text','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(19263,84,162,2559,'viewkglkddayreport1_bid',0,0,'0','','viewkglkddayreport1',1,0,0,'varchar','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(19264,84,8,136,'KJ_DeviceAddress3_wzID',2499,0,'0_2499','0','KJ_DeviceAddress3',3,0,162,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(19265,84,10,178,'KJ_DeviceType2_devID',2498,0,'0_2498','0','KJ_DeviceType2',2,0,162,'tinyint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(19266,84,162,2785,'viewkglkddayreport1_bz1',0,0,'0','','viewkglkddayreport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(19267,84,162,2786,'viewkglkddayreport1_bz2',0,0,'0','','viewkglkddayreport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(19294,85,172,2745,'viewkdstatereport1_point',0,0,'0','','viewkdstatereport1',1,0,0,'varchar','AllPointMnl',0,1,0,0,'','',0,0,'','',1,3,'','',0,0),(19295,85,10,180,'KJ_DeviceType2_Name',2743,0,'0_2743','0','KJ_DeviceType2',2,0,172,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(19296,85,172,2743,'viewkdstatereport1_devid',0,178,'0','','viewkdstatereport1',1,1,0,'bigint','AllJC_Dev',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(19297,85,10,199,'KJ_DeviceType2_Xs1',2743,0,'0_2743','0','KJ_DeviceType2',2,0,172,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(19298,85,8,137,'KJ_DeviceAddress3_wz',2744,0,'0_2744','0','KJ_DeviceAddress3',3,0,172,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(19299,85,172,2744,'viewkdstatereport1_wzid',0,136,'0','','viewkdstatereport1',1,1,0,'bigint','AllJC_WZ',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(19300,85,172,2756,'viewkdstatereport1_wz',0,0,'0','','viewkdstatereport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(19301,85,172,2762,'viewkdstatereport1_datsearch',0,0,'0','','viewkdstatereport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'','',0,1),(19302,85,172,2930,'viewkdstatereport1_kdsumcountfdsb',0,0,'0','','viewkdstatereport1',1,0,0,'bigint','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(19303,85,172,2931,'viewkdstatereport1_kdsumtmefdsb',0,0,'0','','viewkdstatereport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(19304,85,172,2763,'viewkdstatereport1_kdstime',0,0,'0','','viewkdstatereport1',1,0,0,'datetime','',0,1,0,0,'','',2,1,'','',0,0,'','',0,0),(19305,85,172,2764,'viewkdstatereport1_kdetime',0,0,'0','','viewkdstatereport1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(19306,85,172,2765,'viewkdstatereport1_kdcursumtime',0,0,'0','','viewkdstatereport1',1,0,0,'time','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(19307,85,172,2747,'viewkdstatereport1_state',0,2524,'0','','viewkdstatereport1',1,1,0,'smallint','AllDevTypeCode',0,0,0,0,'','',0,0,'','',1,2,'','',0,0),(19308,85,163,2525,'BFT_EnumCode4_strEnumDisplay',2747,0,'0_2747','0','BFT_EnumCode4',4,0,172,'varchar','',0,1,0,0,'','',0,0,'不等于&&$','不等于&&$',0,0,'','',0,0),(19309,85,172,2766,'viewkdstatereport1_toid',0,0,'0','','viewkdstatereport1',1,0,0,'bigint','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(19310,85,10,179,'KJ_DeviceType2_type',2743,2233,'0_2743','0','KJ_DeviceType2',2,1,172,'tinyint','AllAllDevPro',0,0,0,0,'','',0,0,'等于&&$\'1\'','等于&&$模拟量',0,0,'','',0,0),(19311,85,172,2768,'viewkdstatereport1_kdssz',0,0,'0','','viewkdstatereport1',1,0,0,'varchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(19312,85,172,2769,'viewkdstatereport1_kdstate',0,0,'0','','viewkdstatereport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(19313,85,10,178,'KJ_DeviceType2_devID',2743,0,'0_2743','0','KJ_DeviceType2',2,0,172,'tinyint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(19314,85,8,136,'KJ_DeviceAddress3_wzID',2744,0,'0_2744','0','KJ_DeviceAddress3',3,0,172,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(19315,85,163,2524,'BFT_EnumCode4_lngEnumValue',2747,0,'0_2747','0','BFT_EnumCode4',4,0,172,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(19316,85,172,2753,'viewkdstatereport1_cs',0,0,'0','','viewkdstatereport1',1,0,0,'text','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(19317,85,172,2787,'viewkdstatereport1_bz1',0,0,'0','','viewkdstatereport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(19318,85,172,2788,'viewkdstatereport1_bz2',0,0,'0','','viewkdstatereport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(19319,85,172,2746,'viewkdstatereport1_type',0,0,'0','','viewkdstatereport1',1,0,0,'smallint','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(20925,81,178,2858,'viewmnlbjddmonth1_point',0,0,'0','','viewmnlbjddmonth1',1,0,0,'varchar','AllPointMnl',0,1,0,0,'','',0,0,'','',1,2,'','',0,0),(20926,81,178,2879,'viewmnlbjddmonth1_wz',0,0,'0','','viewmnlbjddmonth1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(20927,81,10,199,'KJ_DeviceType2_Xs1',3082,0,'0_3082','0','KJ_DeviceType2',2,0,178,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(20928,81,178,2880,'viewmnlbjddmonth1_devname',0,0,'0','','viewmnlbjddmonth1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(20929,81,153,2317,'BFT_EnumCode4_strEnumDisplay',204,0,'0_3082_204','0_3082','BFT_EnumCode4',4,0,10,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(20930,81,178,2859,'viewmnlbjddmonth1_bjcs',0,0,'0','','viewmnlbjddmonth1',1,0,0,'bigint','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(20931,81,178,2860,'viewmnlbjddmonth1_bjstarttime',0,0,'0','','viewmnlbjddmonth1',1,0,0,'text','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(20932,81,178,2861,'viewmnlbjddmonth1_bjendtime',0,0,'0','','viewmnlbjddmonth1',1,0,0,'text','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(20933,81,178,2862,'viewmnlbjddmonth1_bjpjzzdzzdzs',0,0,'0','','viewmnlbjddmonth1',1,0,0,'text','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(20934,81,178,2864,'viewmnlbjddmonth1_bjljscall',0,0,'0','','viewmnlbjddmonth1',1,0,0,'time','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(20935,81,178,2866,'viewmnlbjddmonth1_ddcs',0,0,'0','','viewmnlbjddmonth1',1,0,0,'bigint','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(20936,81,178,2867,'viewmnlbjddmonth1_ddstarttime',0,0,'0','','viewmnlbjddmonth1',1,0,0,'text','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(20937,81,178,2868,'viewmnlbjddmonth1_ddendtime',0,0,'0','','viewmnlbjddmonth1',1,0,0,'text','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(20938,81,178,2871,'viewmnlbjddmonth1_ddljsc',0,0,'0','','viewmnlbjddmonth1',1,0,0,'text','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(20939,81,178,2869,'viewmnlbjddmonth1_ddstartendtime',0,0,'0','','viewmnlbjddmonth1',1,0,0,'text','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(20940,81,178,2870,'viewmnlbjddmonth1_ddpjzzdzzdzs',0,0,'0','','viewmnlbjddmonth1',1,0,0,'text','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(20941,81,178,2872,'viewmnlbjddmonth1_ddljscall',0,0,'0','','viewmnlbjddmonth1',1,0,0,'time','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(20942,81,178,2919,'viewmnlbjddmonth1_kdfdsbcs',0,0,'0','','viewmnlbjddmonth1',1,0,0,'bigint','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(20943,81,178,2920,'viewmnlbjddmonth1_kdfdsbstarttime',0,0,'0','','viewmnlbjddmonth1',1,0,0,'text','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(20944,81,178,2921,'viewmnlbjddmonth1_kdfdsbendtime',0,0,'0','','viewmnlbjddmonth1',1,0,0,'text','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(20945,81,178,2923,'viewmnlbjddmonth1_kdfdsbljscall',0,0,'0','','viewmnlbjddmonth1',1,0,0,'time','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(20946,81,178,2881,'viewmnlbjddmonth1_datsearch',0,0,'0','','viewmnlbjddmonth1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'','',0,1),(20947,81,178,2865,'viewmnlbjddmonth1_bjcuoshi',0,0,'0','','viewmnlbjddmonth1',1,0,0,'text','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(20948,81,178,2873,'viewmnlbjddmonth1_ddcuoshi',0,0,'0','','viewmnlbjddmonth1',1,0,0,'text','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(20949,81,0,0,'bjddcuoshi',0,0,'','','',0,0,0,'varchar','',0,1,0,1,'concat(viewmnlbjddmonth1_bjcuoshi,viewmnlbjddmonth1_ddcuoshi)','viewmnlbjddmonth1_bjcuoshi,viewmnlbjddmonth1_ddcuoshi',0,0,'','',0,0,'','',0,0),(20950,81,178,2857,'viewmnlbjddmonth1_PointID',0,0,'0','','viewmnlbjddmonth1',1,0,0,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(20951,81,178,3082,'viewmnlbjddmonth1_devid',0,178,'0','','viewmnlbjddmonth1',1,1,0,'bigint','AllJC_Dev',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(20952,81,10,204,'KJ_DeviceType2_Bz3',3082,2316,'0_3082','0','KJ_DeviceType2',2,1,178,'int','AllDevType',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(20953,81,10,178,'KJ_DeviceType2_devID',3082,0,'0_3082','0','KJ_DeviceType2',2,0,178,'tinyint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(20954,81,153,2316,'BFT_EnumCode4_lngEnumValue',204,0,'0_3082_204','0_3082','BFT_EnumCode4',4,0,10,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(21467,83,39,670,'ViewKGLBJDDDayReport1_point',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'nvarchar','AllPointKgl',0,1,0,0,'','',0,0,'','',1,2,'','',0,0),(21468,83,8,137,'KJ_DeviceAddress3_wz',669,0,'0_669','0','KJ_DeviceAddress3',3,0,39,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(21469,83,153,2317,'BFT_EnumCode5_strEnumDisplay',204,0,'0_668_204','0_668','BFT_EnumCode5',5,0,10,'varchar','',0,1,0,0,'','',0,0,'不等于&&$语音风门','不等于&&$语音风门',0,0,'','',0,0),(21470,83,39,698,'ViewKGLBJDDDayReport1_statename',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(21471,83,39,2924,'ViewKGLBJDDDayReport1_sumcountfdsb',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'bigint','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(21472,83,39,2925,'ViewKGLBJDDDayReport1_sumtimefdsb',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(21473,83,39,672,'ViewKGLBJDDDayReport1_stime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'datetime','',0,1,0,0,'','',2,1,'','',0,0,'','',0,0),(21474,83,39,673,'ViewKGLBJDDDayReport1_etime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(21475,83,39,674,'ViewKGLBJDDDayReport1_cursumtime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(21476,83,39,683,'ViewKGLBJDDDayReport1_wz',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'不等于&&$无断电区域','不等于&&$无断电区域',0,0,'','',0,0),(21477,83,39,699,'ViewKGLBJDDDayReport1_kdstate',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(21478,83,39,694,'ViewKGLBJDDDayReport1_kdstime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(21479,83,39,695,'ViewKGLBJDDDayReport1_kdetime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(21480,83,39,696,'ViewKGLBJDDDayReport1_kdcursumtime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'varchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(21481,83,39,687,'ViewKGLBJDDDayReport1_bid',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'varchar','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(21482,83,39,689,'ViewKGLBJDDDayReport1_datsearch',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'','',0,1),(21483,83,39,669,'ViewKGLBJDDDayReport1_wzid',0,136,'0','','ViewKGLBJDDDayReport1',1,1,0,'smallint','AllJC_WZ',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(21484,83,8,136,'KJ_DeviceAddress3_wzID',669,0,'0_669','0','KJ_DeviceAddress3',3,0,39,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(21485,83,0,0,'kdstimea',0,0,'','','',0,0,0,'datetime','',0,1,0,1,'case  when  ViewKGLBJDDDayReport1_kdstate like \'%成功%\'  then ViewKGLBJDDDayReport1_stime else  ViewKGLBJDDDayReport1_kdstime  end','ViewKGLBJDDDayReport1_stime,ViewKGLBJDDDayReport1_kdstate,ViewKGLBJDDDayReport1_kdstime',0,0,'','',0,0,'','',0,0),(21486,83,0,0,'kdetimea',0,0,'','','',0,0,0,'datetime','',0,1,0,1,'case  when  ViewKGLBJDDDayReport1_kdstate like \'%成功%\'  then ViewKGLBJDDDayReport1_etime  else ViewKGLBJDDDayReport1_kdetime  end','ViewKGLBJDDDayReport1_etime,ViewKGLBJDDDayReport1_kdstate,ViewKGLBJDDDayReport1_kdetime',0,0,'','',0,0,'','',0,0),(21487,83,0,0,'kdcursumtimea',0,0,'','','',0,0,0,'varchar','',0,1,0,1,'case  when  ViewKGLBJDDDayReport1_kdstate like \'%成功%\'  then \r\nViewKGLBJDDDayReport1_cursumtime else  ViewKGLBJDDDayReport1_kdcursumtime  end','ViewKGLBJDDDayReport1_cursumtime,ViewKGLBJDDDayReport1_kdstate,ViewKGLBJDDDayReport1_kdcursumtime',0,0,'','',0,0,'','',0,0),(21488,83,39,3092,'ViewKGLBJDDDayReport1_remark',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'text','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(21489,83,39,679,'ViewKGLBJDDDayReport1_cs',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'ntext','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(21490,83,39,2771,'ViewKGLBJDDDayReport1_bz1',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(21491,83,39,2772,'ViewKGLBJDDDayReport1_bz2',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(21492,83,10,178,'KJ_DeviceType2_devID',668,0,'0_668','0','KJ_DeviceType2',2,0,39,'tinyint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(21493,83,10,204,'KJ_DeviceType2_Bz3',668,2316,'0_668','0','KJ_DeviceType2',2,1,39,'int','AllDevType',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(21494,83,39,668,'ViewKGLBJDDDayReport1_devid',0,178,'0','','ViewKGLBJDDDayReport1',1,1,0,'tinyint','AllJC_Dev',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(21495,83,153,2316,'BFT_EnumCode5_lngEnumValue',204,0,'0_668_204','0_668','BFT_EnumCode5',5,0,10,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26427,1,1,2,'BFT_User1_UserCode',0,0,'0','','BFT_User1',1,0,0,'varchar','',0,1,0,0,'','',2,1,'','',1,1,'','',0,0),(26428,1,1,3,'BFT_User1_UserName',0,0,'0','','BFT_User1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',1,2,'','',1,0),(26429,1,1,5,'BFT_User1_DeptCode',0,0,'0','','BFT_User1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26430,1,1,8,'BFT_User1_CreateName',0,0,'0','','BFT_User1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26431,1,1,7,'BFT_User1_CreateTime',0,0,'0','','BFT_User1',1,0,0,'datetime','',0,1,0,0,'','',1,2,'','',0,0,'','',0,0),(26432,1,1,13,'BFT_User1_ContactPhone',0,0,'0','','BFT_User1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26433,1,1,1,'BFT_User1_UserID',0,0,'0','','BFT_User1',1,0,0,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26434,1,1,12,'BFT_User1_UserFlag',0,0,'0','','BFT_User1',1,0,0,'tinyint','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26435,1,1,14,'BFT_User1_UserType',0,0,'0','','BFT_User1',1,0,0,'int','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26436,2,2,21,'BFT_Role1_RoleCode',0,0,'0','','BFT_Role1',1,0,0,'varchar','',0,1,0,0,'','',2,1,'','',1,1,'','',0,0),(26437,2,2,22,'BFT_Role1_RoleName',0,0,'0','','BFT_Role1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',1,2,'','',1,0),(26438,2,2,26,'BFT_Role1_CreateName',0,0,'0','','BFT_Role1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26439,2,2,23,'BFT_Role1_RoleDescription',0,0,'0','','BFT_Role1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26440,2,2,25,'BFT_Role1_CreateTime',0,0,'0','','BFT_Role1',1,0,0,'datetime','',0,1,0,0,'','',1,2,'','',0,0,'','',0,0),(26441,2,2,20,'BFT_Role1_RoleID',0,0,'0','','BFT_Role1',1,0,0,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26442,3,3,32,'BFT_Right1_CreateName',0,0,'0','','BFT_Right1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',1,3,'','',0,0),(26443,3,3,29,'BFT_Right1_RightName',0,0,'0','','BFT_Right1',1,0,0,'varchar','',0,1,0,0,'','',2,1,'','',1,2,'','',0,0),(26444,3,3,28,'BFT_Right1_RightCode',0,0,'0','','BFT_Right1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',1,1,'','',0,0),(26445,3,3,33,'BFT_Right1_RightType',0,0,'0','','BFT_Right1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26446,3,3,30,'BFT_Right1_RightDescription',0,0,'0','','BFT_Right1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26447,3,3,31,'BFT_Right1_CreateTime',0,0,'0','','BFT_Right1',1,0,0,'datetime','',0,1,0,0,'','',1,2,'','',0,0,'','',0,0),(26448,3,3,27,'BFT_Right1_RightID',0,0,'0','','BFT_Right1',1,0,0,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26449,4,4,35,'BFT_Menu1_MenuCode',0,0,'0','','BFT_Menu1',1,0,0,'varchar','',0,1,0,0,'','',1,1,'','',1,1,'','',0,0),(26450,4,4,36,'BFT_Menu1_MenuName',0,0,'0','','BFT_Menu1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',1,2,'','',0,0),(26451,4,4,54,'BFT_Menu1_Remark1',0,0,'0','','BFT_Menu1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26452,4,4,37,'BFT_Menu1_MenuURL',0,0,'0','','BFT_Menu1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26453,4,4,41,'BFT_Menu1_MenuFile',0,0,'0','','BFT_Menu1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26454,4,4,42,'BFT_Menu1_MenuNamespace',0,0,'0','','BFT_Menu1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26455,4,4,43,'BFT_Menu1_MenuParams',0,0,'0','','BFT_Menu1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26456,4,4,45,'BFT_Menu1_MenuStatus',0,0,'0','','BFT_Menu1',1,0,0,'int','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26457,4,4,46,'BFT_Menu1_MenuForSys',0,0,'0','','BFT_Menu1',1,0,0,'int','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26458,4,4,51,'BFT_Menu1_ShowType',0,0,'0','','BFT_Menu1',1,0,0,'int','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26459,4,4,52,'BFT_Menu1_RightCode',0,0,'0','','BFT_Menu1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26460,4,4,53,'BFT_Menu1_RequestCode',0,0,'0','','BFT_Menu1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26461,4,4,34,'BFT_Menu1_MenuID',0,0,'0','','BFT_Menu1',1,0,0,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26462,4,4,38,'BFT_Menu1_MenuParent',0,0,'0','','BFT_Menu1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26463,4,4,39,'BFT_Menu1_MenuMemo',0,0,'0','','BFT_Menu1',1,0,0,'int','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26464,7,5,60,'BFT_RunLog1_CreateDate',0,0,'0','','BFT_RunLog1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',1,1,'','',0,0),(26465,7,5,61,'BFT_RunLog1_ThreadNumber',0,0,'0','','BFT_RunLog1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26466,7,5,62,'BFT_RunLog1_LogLevel',0,0,'0','','BFT_RunLog1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26467,7,5,63,'BFT_RunLog1_Logger',0,0,'0','','BFT_RunLog1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26468,7,5,64,'BFT_RunLog1_MessageContent',0,0,'0','','BFT_RunLog1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26469,7,5,59,'BFT_RunLog1_Id',0,0,'0','','BFT_RunLog1',1,0,0,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26470,8,6,66,'BFT_request1_RequestCode',0,0,'0','','BFT_request1',1,0,0,'varchar','',0,1,0,0,'','',1,1,'','',1,1,'','',0,0),(26471,8,6,67,'BFT_request1_RequestName',0,0,'0','','BFT_request1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',1,2,'','',0,0),(26472,8,6,68,'BFT_request1_MenuURL',0,0,'0','','BFT_request1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',1,3,'','',0,0),(26473,8,6,69,'BFT_request1_MenuFile',0,0,'0','','BFT_request1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26474,8,6,70,'BFT_request1_MenuNamespace',0,0,'0','','BFT_request1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26475,8,6,71,'BFT_request1_MenuParams',0,0,'0','','BFT_request1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26476,8,6,72,'BFT_request1_ShowType',0,0,'0','','BFT_request1',1,0,0,'int','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26477,8,6,73,'BFT_request1_LoadByIframe',0,0,'0','','BFT_request1',1,0,0,'int','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26478,8,6,74,'BFT_request1_MenuForSys',0,0,'0','','BFT_request1',1,0,0,'int','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26479,8,6,65,'BFT_request1_RequestID',0,0,'0','','BFT_request1',1,0,0,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26480,8,6,777,'BFT_request1_BZ1',0,0,'0','','BFT_request1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26481,74,1,2,'BFT_User2_UserCode',2819,0,'0_2819','0','BFT_User2',2,0,175,'varchar','',0,1,0,0,'','',2,1,'','',1,1,'','',0,0),(26482,74,175,2819,'BFT_Userrole1_UserID',0,1,'0','','BFT_Userrole1',1,3,0,'bigint','',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(26483,74,1,3,'BFT_User2_UserName',2819,0,'0_2819','0','BFT_User2',2,0,175,'varchar','',0,1,0,0,'','',0,0,'','',1,2,'','',1,0),(26484,74,1,5,'BFT_User2_DeptCode',2819,0,'0_2819','0','BFT_User2',2,0,175,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26485,74,1,8,'BFT_User2_CreateName',2819,0,'0_2819','0','BFT_User2',2,0,175,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26486,74,1,7,'BFT_User2_CreateTime',2819,0,'0_2819','0','BFT_User2',2,0,175,'datetime','',0,1,0,0,'','',1,2,'','',0,0,'','',0,0),(26487,74,1,13,'BFT_User2_ContactPhone',2819,0,'0_2819','0','BFT_User2',2,0,175,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26488,74,1,12,'BFT_User2_UserFlag',2819,0,'0_2819','0','BFT_User2',2,0,175,'tinyint','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26489,74,2,22,'BFT_Role3_RoleName',2820,0,'0_2820','0','BFT_Role3',3,0,175,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26490,74,175,2820,'BFT_Userrole1_RoleID',0,20,'0','','BFT_Userrole1',1,1,0,'bigint','',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(26491,74,175,2818,'BFT_Userrole1_UserRoleID',0,0,'0','','BFT_Userrole1',1,0,0,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26492,74,1,1,'BFT_User2_UserID',2819,0,'0_2819','0','BFT_User2',2,0,175,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26493,74,2,20,'BFT_Role3_RoleID',2820,0,'0_2820','0','BFT_Role3',3,0,175,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26494,6,31,555,'ViewJC_BMonth1_point',0,0,'0','','ViewJC_BMonth1',1,0,0,'nvarchar','AllPointMnl',0,1,0,0,'','',2,1,'','',1,3,'','',0,0),(26495,6,8,137,'KJ_DeviceAddress4_wz',554,0,'0_554','0','KJ_DeviceAddress4',4,0,31,'nvarchar','',0,1,0,0,'','',1,1,'','',1,5,'','',0,0),(26496,6,10,180,'KJ_DeviceType3_Name',553,0,'0_553','0','KJ_DeviceType3',3,0,31,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26497,6,10,199,'KJ_DeviceType3_Xs1',553,0,'0_553','0','KJ_DeviceType3',3,0,31,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26498,6,9,154,'KJ_DeviceDefInfo6_z2',3125,0,'0_3125','0','KJ_DeviceDefInfo6',6,0,31,'real','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26499,6,31,572,'ViewJC_BMonth1_sumcount',0,0,'0','','ViewJC_BMonth1',1,0,0,'int','',0,1,0,0,'','',0,0,'大于&&$0','大于&&$0',0,0,'','',0,0),(26500,6,31,573,'ViewJC_BMonth1_sumtime',0,0,'0','','ViewJC_BMonth1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26501,6,173,2791,'viewmnlbjmaxavgmaxtime2_zdz',568,0,'0_568','0','viewmnlbjmaxavgmaxtime2',2,0,31,'decimal','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26502,6,173,2793,'viewmnlbjmaxavgmaxtime2_zdzs',568,0,'0_568','0','viewmnlbjmaxavgmaxtime2',2,0,31,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26503,6,173,2792,'viewmnlbjmaxavgmaxtime2_pjz',568,0,'0_568','0','viewmnlbjmaxavgmaxtime2',2,0,31,'decimal','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26504,6,31,557,'ViewJC_BMonth1_stime',0,0,'0','','ViewJC_BMonth1',1,0,0,'datetime','',0,1,0,0,'','',3,1,'','',0,0,'','',0,0),(26505,6,31,558,'ViewJC_BMonth1_etime',0,0,'0','','ViewJC_BMonth1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26506,6,31,559,'ViewJC_BMonth1_cursumtime',0,0,'0','','ViewJC_BMonth1',1,0,0,'varchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26507,6,0,0,'cusSutime',0,0,'','','',0,0,0,'varchar','',0,1,0,1,'cast(ViewJC_BMonth1_cursumtime as char)','ViewJC_BMonth1_cursumtime',0,0,'','',0,0,'','',0,0),(26508,6,31,562,'ViewJC_BMonth1_pjz',0,0,'0','','ViewJC_BMonth1',1,0,0,'real','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26509,6,31,561,'ViewJC_BMonth1_zdz',0,0,'0','','ViewJC_BMonth1',1,0,0,'real','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26510,6,31,563,'ViewJC_BMonth1_zdzs',0,0,'0','','ViewJC_BMonth1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26511,6,31,564,'ViewJC_BMonth1_cs',0,0,'0','','ViewJC_BMonth1',1,0,0,'ntext','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26512,6,31,2776,'ViewJC_BMonth1_bz2',0,0,'0','','ViewJC_BMonth1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26513,6,31,570,'ViewJC_BMonth1_datsearch',0,0,'0','','ViewJC_BMonth1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'介于&&$1900-01-01 00:00:00&&$9999-12-31 23:59:59','',0,1),(26514,6,31,567,'ViewJC_BMonth1_bid',0,0,'0','','ViewJC_BMonth1',1,0,0,'varchar','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26515,6,31,554,'ViewJC_BMonth1_wzid',0,136,'0','','ViewJC_BMonth1',1,1,0,'smallint','AllJC_WZ',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(26516,6,8,136,'KJ_DeviceAddress4_wzID',554,0,'0_554','0','KJ_DeviceAddress4',4,0,31,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26517,6,10,178,'KJ_DeviceType3_devID',553,0,'0_553','0','KJ_DeviceType3',3,0,31,'tinyint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26518,6,31,2537,'ViewJC_BMonth1_state',0,2524,'0','','ViewJC_BMonth1',1,1,0,'smallint','AllDevTypeCode',0,0,0,0,'','',0,0,'','',1,2,'','',0,0),(26519,6,163,2525,'BFT_EnumCode5_strEnumDisplay',2537,0,'0_2537','0','BFT_EnumCode5',5,0,31,'varchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26520,6,163,2524,'BFT_EnumCode5_lngEnumValue',2537,0,'0_2537','0','BFT_EnumCode5',5,0,31,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26521,6,31,553,'ViewJC_BMonth1_devid',0,178,'0','','ViewJC_BMonth1',1,1,0,'tinyint','AllJC_Dev',0,0,1,0,'','',0,0,'','',1,4,'','',0,0),(26522,6,173,2789,'viewmnlbjmaxavgmaxtime2_pointid',568,0,'0_568','0','viewmnlbjmaxavgmaxtime2',2,0,31,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26523,6,31,568,'ViewJC_BMonth1_bida',0,2789,'0','','ViewJC_BMonth1',1,1,0,'varchar','',0,0,1,0,'','',0,0,'','',0,0,'','',0,0),(26524,6,31,3090,'ViewJC_BMonth1_remark',0,0,'0','','ViewJC_BMonth1',1,0,0,'text','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26525,6,31,2775,'ViewJC_BMonth1_bz1',0,0,'0','','ViewJC_BMonth1',1,0,0,'varchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26526,6,31,3125,'ViewJC_BMonth1_pointid',0,2581,'0','','ViewJC_BMonth1',1,1,0,'bigint','',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(26527,6,9,139,'KJ_DeviceDefInfo6_ID',3125,0,'0_3125','0','KJ_DeviceDefInfo6',6,0,31,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26528,6,9,2581,'KJ_DeviceDefInfo6_pointid',3125,0,'0_3125','0','KJ_DeviceDefInfo6',6,0,31,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26529,5,26,489,'ViewMLLDayReport1_bid',0,0,'0','','ViewMLLDayReport1',1,0,0,'varchar','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26530,5,26,442,'ViewMLLDayReport1_point',0,145,'0','','ViewMLLDayReport1',1,1,0,'nvarchar','AllPointMnl',0,1,0,0,'','',2,1,'','',1,2,'','',0,0),(26531,5,8,137,'KJ_DeviceAddress3_wz',455,0,'0_455','0','KJ_DeviceAddress3',3,0,26,'nvarchar','',0,1,0,0,'','',0,0,'','',1,3,'','',0,0),(26532,5,10,180,'KJ_DeviceType2_Name',454,0,'0_454','0','KJ_DeviceType2',2,0,26,'nvarchar','',0,1,0,0,'','',0,0,'','',1,4,'','',0,0),(26533,5,8,136,'KJ_DeviceAddress3_wzID',455,0,'0_455','0','KJ_DeviceAddress3',3,0,26,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26534,5,10,199,'KJ_DeviceType2_Xs1',454,0,'0_454','0','KJ_DeviceType2',2,0,26,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26535,5,9,154,'KJ_DeviceDefInfo6_z2',2902,0,'0_2902','0','KJ_DeviceDefInfo6',6,0,26,'real','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26536,5,0,0,'Bjmx',0,0,'','','',0,0,0,'varchar','',0,1,0,1,'case KJ_DeviceDefInfo6_z2 when \'0\' then \'-\' else  KJ_DeviceDefInfo6_z2 end','KJ_DeviceDefInfo6_z2',0,0,'','',0,0,'','',0,0),(26537,5,0,0,'myxxbj',0,0,'','','',0,0,0,'varchar','',0,1,0,1,'case KJ_DeviceDefInfo6_z6 when \'0\' then \'-\' else KJ_DeviceDefInfo6_z6   end','KJ_DeviceDefInfo6_z6',0,0,'','',0,0,'','',0,0),(26538,5,9,155,'KJ_DeviceDefInfo6_z3',2902,0,'0_2902','0','KJ_DeviceDefInfo6',6,0,26,'real','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26539,5,0,0,'ddmx',0,0,'','','',0,0,0,'varchar','',0,1,0,1,'case KJ_DeviceDefInfo6_z3 when \'0\' then \'-\' else  KJ_DeviceDefInfo6_z3 end','KJ_DeviceDefInfo6_z3',0,0,'','',0,0,'','',0,0),(26540,5,9,156,'KJ_DeviceDefInfo6_z4',2902,0,'0_2902','0','KJ_DeviceDefInfo6',6,0,26,'real','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26541,5,0,0,'fdmx',0,0,'','','',0,0,0,'varchar','',0,1,0,1,'case KJ_DeviceDefInfo6_z4 when \'0\' then \'-\' else  KJ_DeviceDefInfo6_z4 end','KJ_DeviceDefInfo6_z4',0,0,'','',0,0,'','',0,0),(26542,5,26,444,'ViewMLLDayReport1_pjz',0,0,'0','','ViewMLLDayReport1',1,0,0,'float','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26543,5,26,2900,'ViewMLLDayReport1_zxz',0,0,'0','','ViewMLLDayReport1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26544,5,26,443,'ViewMLLDayReport1_zdz',0,0,'0','','ViewMLLDayReport1',1,0,0,'real','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26545,5,26,445,'ViewMLLDayReport1_zdzs',0,0,'0','','ViewMLLDayReport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26546,5,26,483,'ViewMLLDayReport1_sumcountbybj',0,0,'0','','ViewMLLDayReport1',1,0,0,'int','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26547,5,26,484,'ViewMLLDayReport1_sumtimebybj',0,0,'0','','ViewMLLDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26548,5,26,485,'ViewMLLDayReport1_sumcountbydd',0,0,'0','','ViewMLLDayReport1',1,0,0,'int','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26549,5,26,486,'ViewMLLDayReport1_sumtimebydd',0,0,'0','','ViewMLLDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26550,5,26,487,'ViewMLLDayReport1_sumcountbykd',0,0,'0','','ViewMLLDayReport1',1,0,0,'int','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26551,5,26,488,'ViewMLLDayReport1_sumtimebykd',0,0,'0','','ViewMLLDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26552,5,26,2915,'ViewMLLDayReport1_sumcountbygz',0,0,'0','','ViewMLLDayReport1',1,0,0,'bigint','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26553,5,26,2916,'ViewMLLDayReport1_sumtimebygz',0,0,'0','','ViewMLLDayReport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26554,5,26,456,'ViewMLLDayReport1_datsearch',0,0,'0','','ViewMLLDayReport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'','',0,1),(26555,5,26,454,'ViewMLLDayReport1_devid',0,178,'0','','ViewMLLDayReport1',1,1,0,'tinyint','AllJC_Dev',0,0,1,0,'','',0,0,'','',0,0,'','',0,0),(26556,5,10,178,'KJ_DeviceType2_devID',454,0,'0_454','0','KJ_DeviceType2',2,0,26,'tinyint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26557,5,26,455,'ViewMLLDayReport1_wzid',0,136,'0','','ViewMLLDayReport1',1,1,0,'smallint','AllJC_WZ',0,0,1,0,'','',0,0,'','',0,0,'','',0,0),(26558,5,26,453,'ViewMLLDayReport1_kh',0,0,'0','','ViewMLLDayReport1',1,0,0,'tinyint','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26559,5,26,452,'ViewMLLDayReport1_fzh',0,0,'0','','ViewMLLDayReport1',1,0,0,'smallint','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26560,5,26,2544,'ViewMLLDayReport1_state',0,2524,'0','','ViewMLLDayReport1',1,1,0,'int','AllDevTypeCode',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26561,5,26,2902,'ViewMLLDayReport1_bida',0,2581,'0','','ViewMLLDayReport1',1,1,0,'bigint','',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(26562,5,9,139,'KJ_DeviceDefInfo6_ID',2902,0,'0_2902','0','KJ_DeviceDefInfo6',6,0,26,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26563,5,9,2581,'KJ_DeviceDefInfo6_pointid',2902,0,'0_2902','0','KJ_DeviceDefInfo6',6,0,26,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26564,5,10,205,'KJ_DeviceType2_Bz4',454,2301,'0_454','0','KJ_DeviceType2',2,1,26,'int','AllDevModel',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26565,5,10,204,'KJ_DeviceType2_Bz3',454,2316,'0_454','0','KJ_DeviceType2',2,1,26,'int','AllDevType',0,0,1,0,'','',1,1,'','',0,0,'','',0,0),(26566,5,9,158,'KJ_DeviceDefInfo6_z6',2902,0,'0_2902','0','KJ_DeviceDefInfo6',6,0,26,'real','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26613,9,33,591,'ViewMLLDDDayReport1_point',0,0,'0','','ViewMLLDDDayReport1',1,0,0,'nvarchar','AllPointMnl',0,1,0,0,'','',0,0,'','',1,3,'','',0,0),(26614,9,8,137,'KJ_DeviceAddress3_wz',590,0,'0_590','0','KJ_DeviceAddress3',3,0,33,'nvarchar','',0,1,0,0,'','',0,0,'','',1,5,'','',0,0),(26615,9,10,180,'KJ_DeviceType2_Name',589,0,'0_589','0','KJ_DeviceType2',2,0,33,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26616,9,10,199,'KJ_DeviceType2_Xs1',589,0,'0_589','0','KJ_DeviceType2',2,0,33,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26617,9,9,155,'KJ_DeviceDefInfo8_z3',3126,0,'0_3126','0','KJ_DeviceDefInfo8',8,0,33,'real','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26618,9,9,156,'KJ_DeviceDefInfo8_z4',3126,0,'0_3126','0','KJ_DeviceDefInfo8',8,0,33,'real','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26619,9,169,2698,'view_3montha6_sumcount',2695,0,'0_2695','0','view_3montha6',6,0,33,'bigint','',0,1,0,0,'','',0,0,'大于&&$0','大于&&$0',0,0,'','',0,0),(26620,9,169,2699,'view_3montha6_sumtime',2695,0,'0_2695','0','view_3montha6',6,0,33,'time','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26621,9,179,2884,'viewmnlddmaxavgmaxtime5_zdz',609,0,'0_609','0','viewmnlddmaxavgmaxtime5',5,0,33,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26622,9,179,2886,'viewmnlddmaxavgmaxtime5_zdzs',609,0,'0_609','0','viewmnlddmaxavgmaxtime5',5,0,33,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26623,9,179,2885,'viewmnlddmaxavgmaxtime5_pjz',609,0,'0_609','0','viewmnlddmaxavgmaxtime5',5,0,33,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26624,9,33,590,'ViewMLLDDDayReport1_wzid',0,136,'0','','ViewMLLDDDayReport1',1,1,0,'smallint','AllJC_WZ',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(26625,9,10,178,'KJ_DeviceType2_devID',589,0,'0_589','0','KJ_DeviceType2',2,0,33,'tinyint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26626,9,8,136,'KJ_DeviceAddress3_wzID',590,0,'0_590','0','KJ_DeviceAddress3',3,0,33,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26627,9,0,0,'afd',0,0,'','','',0,0,0,'varchar','',0,1,0,1,'cast(ViewMLLDDDayReport1_cursumtime as char)','ViewMLLDDDayReport1_cursumtime',0,0,'','',0,0,'','',0,0),(26628,9,33,593,'ViewMLLDDDayReport1_stime',0,0,'0','','ViewMLLDDDayReport1',1,0,0,'datetime','',0,1,0,0,'','',2,1,'','',0,0,'','',0,0),(26629,9,33,594,'ViewMLLDDDayReport1_etime',0,0,'0','','ViewMLLDDDayReport1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26630,9,33,598,'ViewMLLDDDayReport1_pjz',0,0,'0','','ViewMLLDDDayReport1',1,0,0,'real','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26631,9,33,597,'ViewMLLDDDayReport1_zdz',0,0,'0','','ViewMLLDDDayReport1',1,0,0,'real','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26632,9,33,599,'ViewMLLDDDayReport1_zdzs',0,0,'0','','ViewMLLDDDayReport1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26633,9,33,608,'ViewMLLDDDayReport1_bid',0,0,'0','','ViewMLLDDDayReport1',1,0,0,'varchar','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26634,9,33,604,'ViewMLLDDDayReport1_wz',0,0,'0','','ViewMLLDDDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',1,6,'','',0,0),(26635,9,33,2710,'ViewMLLDDDayReport1_kdstate',0,0,'0','','ViewMLLDDDayReport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26636,9,33,618,'ViewMLLDDDayReport1_kdstime',0,0,'0','','ViewMLLDDDayReport1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26637,9,33,619,'ViewMLLDDDayReport1_kdetime',0,0,'0','','ViewMLLDDDayReport1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26638,9,33,620,'ViewMLLDDDayReport1_kdcursumtime',0,0,'0','','ViewMLLDDDayReport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26639,9,163,2524,'BFT_EnumCode4_lngEnumValue',2538,0,'0_2538','0','BFT_EnumCode4',4,0,33,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26640,9,33,600,'ViewMLLDDDayReport1_cs',0,0,'0','','ViewMLLDDDayReport1',1,0,0,'ntext','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26641,9,33,2780,'ViewMLLDDDayReport1_bz2',0,0,'0','','ViewMLLDDDayReport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26642,9,33,616,'ViewMLLDDDayReport1_datsearch',0,0,'0','','ViewMLLDDDayReport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'','',0,1),(26643,9,33,2538,'ViewMLLDDDayReport1_state',0,2524,'0','','ViewMLLDDDayReport1',1,1,0,'int','AllDevTypeCode',0,0,0,0,'','',0,0,'','',1,2,'','',0,0),(26644,9,163,2525,'BFT_EnumCode4_strEnumDisplay',2538,0,'0_2538','0','BFT_EnumCode4',4,0,33,'varchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26645,9,33,595,'ViewMLLDDDayReport1_cursumtime',0,0,'0','','ViewMLLDDDayReport1',1,0,0,'varchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26646,9,33,589,'ViewMLLDDDayReport1_devid',0,178,'0','','ViewMLLDDDayReport1',1,1,0,'tinyint','AllJC_Dev',0,0,1,0,'','',0,0,'','',1,4,'','',0,0),(26647,9,33,2695,'ViewMLLDDDayReport1_bidb',0,2700,'0','','ViewMLLDDDayReport1',1,1,0,'bigint','',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(26648,9,169,2700,'view_3montha6_bida',2695,0,'0_2695','0','view_3montha6',6,0,33,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26649,9,33,2707,'ViewMLLDDDayReport1_kdpid',0,0,'0','','ViewMLLDDDayReport1',1,0,0,'bigint','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26650,9,33,2708,'ViewMLLDDDayReport1_kdssz',0,0,'0','','ViewMLLDDDayReport1',1,0,0,'varchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26651,9,10,179,'KJ_DeviceType2_type',589,2233,'0_589','0','KJ_DeviceType2',2,1,33,'tinyint','AllAllDevPro',0,0,0,0,'','',0,0,'等于&&$\'1\'','等于&&$模拟量',0,0,'','',0,0),(26652,9,33,609,'ViewMLLDDDayReport1_bida',0,2882,'0','','ViewMLLDDDayReport1',1,1,0,'varchar','',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(26653,9,179,2882,'viewmnlddmaxavgmaxtime5_pointid',609,0,'0_609','0','viewmnlddmaxavgmaxtime5',5,0,33,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26654,9,33,3091,'ViewMLLDDDayReport1_remark',0,0,'0','','ViewMLLDDDayReport1',1,0,0,'text','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26655,9,33,2779,'ViewMLLDDDayReport1_bz1',0,0,'0','','ViewMLLDDDayReport1',1,0,0,'varchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26656,9,33,3126,'ViewMLLDDDayReport1_pointid',0,2581,'0','','ViewMLLDDDayReport1',1,1,0,'bigint','',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(26657,9,9,139,'KJ_DeviceDefInfo8_ID',3126,0,'0_3126','0','KJ_DeviceDefInfo8',8,0,33,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26658,9,9,2581,'KJ_DeviceDefInfo8_pointid',3126,0,'0_3126','0','KJ_DeviceDefInfo8',8,0,33,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26659,10,33,591,'ViewMLLDDDayReport1_point',0,0,'0','','ViewMLLDDDayReport1',1,0,0,'nvarchar','AllPoint',0,1,0,0,'','',1,1,'','',1,3,'','',0,0),(26660,10,10,180,'KJ_DeviceType2_Name',589,0,'0_589','0','KJ_DeviceType2',2,0,33,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26661,10,33,589,'ViewMLLDDDayReport1_devid',0,178,'0','','ViewMLLDDDayReport1',1,1,0,'tinyint','AllJC_Dev',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(26662,10,10,199,'KJ_DeviceType2_Xs1',589,0,'0_589','0','KJ_DeviceType2',2,0,33,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26663,10,8,137,'KJ_DeviceAddress3_wz',590,0,'0_590','0','KJ_DeviceAddress3',3,0,33,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26664,10,33,590,'ViewMLLDDDayReport1_wzid',0,136,'0','','ViewMLLDDDayReport1',1,1,0,'smallint','AllJC_WZ',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(26665,10,10,178,'KJ_DeviceType2_devID',589,0,'0_589','0','KJ_DeviceType2',2,0,33,'tinyint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26666,10,8,136,'KJ_DeviceAddress3_wzID',590,0,'0_590','0','KJ_DeviceAddress3',3,0,33,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26667,10,169,2698,'view_3montha6_sumcount',2695,0,'0_2695','0','view_3montha6',6,0,33,'bigint','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26668,10,169,2699,'view_3montha6_sumtime',2695,0,'0_2695','0','view_3montha6',6,0,33,'time','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26669,10,33,604,'ViewMLLDDDayReport1_wz',0,0,'0','','ViewMLLDDDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26670,10,33,608,'ViewMLLDDDayReport1_bid',0,0,'0','','ViewMLLDDDayReport1',1,0,0,'varchar','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26671,10,33,616,'ViewMLLDDDayReport1_datsearch',0,0,'0','','ViewMLLDDDayReport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'','',0,1),(26672,10,33,618,'ViewMLLDDDayReport1_kdstime',0,0,'0','','ViewMLLDDDayReport1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26673,10,33,619,'ViewMLLDDDayReport1_kdetime',0,0,'0','','ViewMLLDDDayReport1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26674,10,33,620,'ViewMLLDDDayReport1_kdcursumtime',0,0,'0','','ViewMLLDDDayReport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26675,10,33,623,'ViewMLLDDDayReport1_toid',0,0,'0','','ViewMLLDDDayReport1',1,0,0,'int','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26676,10,33,2538,'ViewMLLDDDayReport1_state',0,2524,'0','','ViewMLLDDDayReport1',1,1,0,'int','AllDevTypeCode',0,0,0,0,'','',0,0,'','',1,2,'','',0,0),(26677,10,163,2525,'BFT_EnumCode4_strEnumDisplay',2538,0,'0_2538','0','BFT_EnumCode4',4,0,33,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26678,10,163,2524,'BFT_EnumCode4_lngEnumValue',2538,0,'0_2538','0','BFT_EnumCode4',4,0,33,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26679,10,10,179,'KJ_DeviceType2_type',589,2233,'0_589','0','KJ_DeviceType2',2,1,33,'tinyint','AllAllDevPro',0,0,0,0,'','',0,0,'等于&&$\'1\'','等于&&$模拟量',0,0,'','',0,0),(26680,10,33,2695,'ViewMLLDDDayReport1_bidb',0,2700,'0','','ViewMLLDDDayReport1',1,1,0,'bigint','',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(26681,10,169,2700,'view_3montha6_bida',2695,0,'0_2695','0','view_3montha6',6,0,33,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26682,10,33,2707,'ViewMLLDDDayReport1_kdpid',0,0,'0','','ViewMLLDDDayReport1',1,0,0,'bigint','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26683,10,33,2708,'ViewMLLDDDayReport1_kdssz',0,0,'0','','ViewMLLDDDayReport1',1,0,0,'varchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26684,10,33,2710,'ViewMLLDDDayReport1_kdstate',0,0,'0','','ViewMLLDDDayReport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26685,11,34,637,'ViewMLLTJZReport1_point',0,0,'0','','ViewMLLTJZReport1',1,0,0,'nvarchar','AllPointMnl',0,1,0,0,'','',1,1,'','',1,2,'','',0,0),(26686,11,8,137,'KJ_DeviceAddress3_wz',628,0,'0_628','0','KJ_DeviceAddress3',3,0,34,'nvarchar','',0,1,0,0,'','',0,0,'','',1,3,'','',0,0),(26687,11,10,180,'KJ_DeviceType2_Name',627,0,'0_627','0','KJ_DeviceType2',2,0,34,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26688,11,10,199,'KJ_DeviceType2_Xs1',627,0,'0_627','0','KJ_DeviceType2',2,0,34,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26689,11,9,154,'KJ_DeviceDefInfo6_z2',2892,0,'0_2892','0','KJ_DeviceDefInfo6',6,0,34,'real','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26690,11,9,155,'KJ_DeviceDefInfo6_z3',2892,0,'0_2892','0','KJ_DeviceDefInfo6',6,0,34,'real','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26691,11,9,156,'KJ_DeviceDefInfo6_z4',2892,0,'0_2892','0','KJ_DeviceDefInfo6',6,0,34,'real','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26692,11,182,2907,'viewfiveminutemaxandtime4_pjz',641,0,'0_641','0','viewfiveminutemaxandtime4',4,0,34,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26693,11,182,2906,'viewfiveminutemaxandtime4_zdz',641,0,'0_641','0','viewfiveminutemaxandtime4',4,0,34,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26694,11,34,628,'ViewMLLTJZReport1_wzid',0,136,'0','','ViewMLLTJZReport1',1,1,0,'smallint','AllJC_WZ',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(26695,11,34,624,'ViewMLLTJZReport1_id',0,0,'0','','ViewMLLTJZReport1',1,0,0,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26696,11,10,178,'KJ_DeviceType2_devID',627,0,'0_627','0','KJ_DeviceType2',2,0,34,'tinyint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26697,11,8,136,'KJ_DeviceAddress3_wzID',628,0,'0_628','0','KJ_DeviceAddress3',3,0,34,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26698,11,182,2908,'viewfiveminutemaxandtime4_zdzs',641,0,'0_641','0','viewfiveminutemaxandtime4',4,0,34,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26699,11,34,639,'ViewMLLTJZReport1_timer',0,0,'0','','ViewMLLTJZReport1',1,0,0,'datetime','',0,1,0,0,'','',2,1,'','',0,0,'','',0,0),(26700,11,34,640,'ViewMLLTJZReport1_timerend',0,0,'0','','ViewMLLTJZReport1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26701,11,34,629,'ViewMLLTJZReport1_zdz',0,0,'0','','ViewMLLTJZReport1',1,0,0,'real','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26702,11,34,631,'ViewMLLTJZReport1_zxz',0,0,'0','','ViewMLLTJZReport1',1,0,0,'real','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26703,11,34,630,'ViewMLLTJZReport1_pjz',0,0,'0','','ViewMLLTJZReport1',1,0,0,'float','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26704,11,34,642,'ViewMLLTJZReport1_datsearch',0,0,'0','','ViewMLLTJZReport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'','',0,1),(26705,11,34,2539,'ViewMLLTJZReport1_state',0,2524,'0','','ViewMLLTJZReport1',1,1,0,'int','AllDevTypeCode',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26706,11,163,2525,'BFT_EnumCode5_strEnumDisplay',2539,0,'0_2539','0','BFT_EnumCode5',5,0,34,'varchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26707,11,163,2524,'BFT_EnumCode5_lngEnumValue',2539,0,'0_2539','0','BFT_EnumCode5',5,0,34,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26708,11,34,627,'ViewMLLTJZReport1_devid',0,178,'0','','ViewMLLTJZReport1',1,1,0,'tinyint','AllJC_Dev',1,0,1,0,'','',0,0,'','',0,3,'','',0,0),(26709,11,34,2892,'ViewMLLTJZReport1_pointid',0,2581,'0','','ViewMLLTJZReport1',1,1,0,'bigint','',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(26710,11,9,139,'KJ_DeviceDefInfo6_ID',2892,0,'0_2892','0','KJ_DeviceDefInfo6',6,0,34,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26711,11,9,2581,'KJ_DeviceDefInfo6_pointid',2892,0,'0_2892','0','KJ_DeviceDefInfo6',6,0,34,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26712,11,34,641,'ViewMLLTJZReport1_bid',0,2904,'0','','ViewMLLTJZReport1',1,1,0,'varchar','',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(26713,11,182,2904,'viewfiveminutemaxandtime4_pointid',641,0,'0_641','0','viewfiveminutemaxandtime4',4,0,34,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26714,19,38,649,'ViewMLLBJDDReport1_point',0,0,'0','','ViewMLLBJDDReport1',1,0,0,'nvarchar','AllPointMnl',0,1,0,0,'','',0,0,'','',1,4,'','',0,0),(26715,19,8,137,'KJ_DeviceAddress3_wz',648,0,'0_648','0','KJ_DeviceAddress3',3,0,38,'nvarchar','',0,1,0,0,'','',3,1,'','',0,0,'','',0,0),(26716,19,10,199,'KJ_DeviceType2_Xs1',647,0,'0_647','0','KJ_DeviceType2',2,0,38,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26717,19,10,180,'KJ_DeviceType2_Name',647,0,'0_647','0','KJ_DeviceType2',2,0,38,'nvarchar','',0,1,0,0,'','',1,1,'','',0,0,'','',0,0),(26718,19,38,648,'ViewMLLBJDDReport1_wzid',0,136,'0','','ViewMLLBJDDReport1',1,1,0,'smallint','AllJC_WZ',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(26719,19,38,663,'ViewMLLBJDDReport1_typename',0,0,'0','','ViewMLLBJDDReport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26720,19,38,664,'ViewMLLBJDDReport1_sumcount',0,0,'0','','ViewMLLBJDDReport1',1,0,0,'int','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26721,19,38,665,'ViewMLLBJDDReport1_sumtime',0,0,'0','','ViewMLLBJDDReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26722,19,38,651,'ViewMLLBJDDReport1_stime',0,0,'0','','ViewMLLBJDDReport1',1,0,0,'datetime','',0,1,0,0,'','',4,1,'','',0,0,'','',0,0),(26723,19,38,652,'ViewMLLBJDDReport1_etime',0,0,'0','','ViewMLLBJDDReport1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26724,19,38,653,'ViewMLLBJDDReport1_cursumtime',0,0,'0','','ViewMLLBJDDReport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26725,19,38,656,'ViewMLLBJDDReport1_pjz',0,0,'0','','ViewMLLBJDDReport1',1,0,0,'real','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26726,19,38,655,'ViewMLLBJDDReport1_zdz',0,0,'0','','ViewMLLBJDDReport1',1,0,0,'real','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26727,19,38,657,'ViewMLLBJDDReport1_zdzs',0,0,'0','','ViewMLLBJDDReport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26728,19,0,0,'strAVG',0,0,'','','',0,0,0,'varchar','',0,1,0,1,'case  when  ViewMLLBJDDReport1_typename=\'馈电\'  then \' \'  else   ViewMLLBJDDReport1_pjz   end','ViewMLLBJDDReport1_typename,ViewMLLBJDDReport1_pjz',0,0,'','',0,0,'','',0,0),(26729,19,0,0,'strMAX',0,0,'','','',0,0,0,'varchar','',0,1,0,1,'case  when  ViewMLLBJDDReport1_typename=\'馈电\'  then \' \'  else   ViewMLLBJDDReport1_zdz  end','ViewMLLBJDDReport1_typename,ViewMLLBJDDReport1_zdz',0,0,'','',0,0,'','',0,0),(26730,19,0,0,'strMAXTime',0,0,'','','',0,0,0,'varchar','',0,1,0,1,'case  when  ViewMLLBJDDReport1_typename=\'馈电\'  then \' \'  else   ViewMLLBJDDReport1_zdzs  end','ViewMLLBJDDReport1_typename,ViewMLLBJDDReport1_zdz,ViewMLLBJDDReport1_zdzs',0,0,'','',0,0,'','',0,0),(26731,19,38,662,'ViewMLLBJDDReport1_datsearch',0,0,'0','','ViewMLLBJDDReport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'','',0,1),(26732,19,38,660,'ViewMLLBJDDReport1_bid',0,0,'0','','ViewMLLBJDDReport1',1,0,0,'varchar','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26733,19,10,178,'KJ_DeviceType2_devID',647,0,'0_647','0','KJ_DeviceType2',2,0,38,'tinyint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26734,19,8,136,'KJ_DeviceAddress3_wzID',648,0,'0_648','0','KJ_DeviceAddress3',3,0,38,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26735,19,38,2542,'ViewMLLBJDDReport1_state',0,2524,'0','','ViewMLLBJDDReport1',1,1,0,'int','AllDevTypeCode',0,0,0,0,'','',0,0,'','',1,2,'','',0,0),(26736,19,163,2525,'BFT_EnumCode4_strEnumDisplay',2542,0,'0_2542','0','BFT_EnumCode4',4,0,38,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26737,19,163,2524,'BFT_EnumCode4_lngEnumValue',2542,0,'0_2542','0','BFT_EnumCode4',4,0,38,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26738,19,38,647,'ViewMLLBJDDReport1_devid',0,178,'0','','ViewMLLBJDDReport1',1,1,0,'tinyint','AllJC_Dev',0,0,1,0,'','',0,0,'','',1,3,'','',0,0),(26739,19,10,179,'KJ_DeviceType2_type',647,2233,'0_647','0','KJ_DeviceType2',2,1,38,'tinyint','AllAllDevPro',0,0,0,0,'','',0,0,'等于&&$\'1\'','等于&&$模拟量',0,0,'','',0,0),(26740,33,26,489,'ViewMLLDayReport1_bid',0,0,'0','','ViewMLLDayReport1',1,0,0,'varchar','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26741,33,8,137,'KJ_DeviceAddress3_wz',455,0,'0_455','0','KJ_DeviceAddress3',3,0,26,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26742,33,26,442,'ViewMLLDayReport1_point',0,145,'0','','ViewMLLDayReport1',1,1,0,'nvarchar','AllPoint',0,1,0,0,'','',1,1,'','',0,0,'','',1,0),(26743,33,8,136,'KJ_DeviceAddress3_wzID',455,0,'0_455','0','KJ_DeviceAddress3',3,0,26,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26744,33,10,180,'KJ_DeviceType2_Name',454,0,'0_454','0','KJ_DeviceType2',2,0,26,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26745,33,10,199,'KJ_DeviceType2_Xs1',454,0,'0_454','0','KJ_DeviceType2',2,0,26,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26746,33,26,444,'ViewMLLDayReport1_pjz',0,0,'0','','ViewMLLDayReport1',1,0,0,'float','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26747,33,26,443,'ViewMLLDayReport1_zdz',0,0,'0','','ViewMLLDayReport1',1,0,0,'real','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26748,33,26,445,'ViewMLLDayReport1_zdzs',0,0,'0','','ViewMLLDayReport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26749,33,26,483,'ViewMLLDayReport1_sumcountbybj',0,0,'0','','ViewMLLDayReport1',1,0,0,'int','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26750,33,26,484,'ViewMLLDayReport1_sumtimebybj',0,0,'0','','ViewMLLDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26751,33,26,485,'ViewMLLDayReport1_sumcountbydd',0,0,'0','','ViewMLLDayReport1',1,0,0,'int','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26752,33,26,486,'ViewMLLDayReport1_sumtimebydd',0,0,'0','','ViewMLLDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26753,33,26,487,'ViewMLLDayReport1_sumcountbykd',0,0,'0','','ViewMLLDayReport1',1,0,0,'int','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26754,33,26,488,'ViewMLLDayReport1_sumtimebykd',0,0,'0','','ViewMLLDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26755,33,26,456,'ViewMLLDayReport1_datsearch',0,0,'0','','ViewMLLDayReport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'','',0,1),(26756,33,26,454,'ViewMLLDayReport1_devid',0,178,'0','','ViewMLLDayReport1',1,1,0,'tinyint','AllJC_Dev',0,0,1,0,'','',0,0,'','',1,2,'','',0,0),(26757,33,10,178,'KJ_DeviceType2_devID',454,0,'0_454','0','KJ_DeviceType2',2,0,26,'tinyint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26758,33,26,455,'ViewMLLDayReport1_wzid',0,136,'0','','ViewMLLDayReport1',1,1,0,'smallint','AllJC_WZ',0,0,1,0,'','',0,0,'','',0,0,'','',0,0),(26759,33,26,453,'ViewMLLDayReport1_kh',0,0,'0','','ViewMLLDayReport1',1,0,0,'tinyint','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26760,33,26,452,'ViewMLLDayReport1_fzh',0,0,'0','','ViewMLLDayReport1',1,0,0,'smallint','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26761,33,26,2544,'ViewMLLDayReport1_state',0,2524,'0','','ViewMLLDayReport1',1,1,0,'int','AllDevTypeCode',0,0,0,0,'','',0,0,'','',1,3,'','',0,0),(26762,71,172,2745,'viewkdstatereport1_point',0,0,'0','','viewkdstatereport1',1,0,0,'varchar','AllPointMnl',0,1,0,0,'','',0,0,'','',1,3,'','',0,0),(26763,71,10,180,'KJ_DeviceType2_Name',2743,0,'0_2743','0','KJ_DeviceType2',2,0,172,'nvarchar','',0,1,0,0,'','',0,0,'','',1,4,'','',0,0),(26764,71,172,2743,'viewkdstatereport1_devid',0,178,'0','','viewkdstatereport1',1,1,0,'bigint','AllJC_Dev',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(26765,71,8,137,'KJ_DeviceAddress3_wz',2744,0,'0_2744','0','KJ_DeviceAddress3',3,0,172,'nvarchar','',0,1,0,0,'','',0,0,'','',1,5,'','',0,0),(26766,71,10,199,'KJ_DeviceType2_Xs1',2743,0,'0_2743','0','KJ_DeviceType2',2,0,172,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26767,71,172,2756,'viewkdstatereport1_wz',0,0,'0','','viewkdstatereport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26768,71,172,2744,'viewkdstatereport1_wzid',0,136,'0','','viewkdstatereport1',1,1,0,'bigint','AllJC_WZ',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(26769,71,172,2928,'viewkdstatereport1_kdsumcount',0,0,'0','','viewkdstatereport1',1,0,0,'bigint','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26770,71,172,2929,'viewkdstatereport1_kdsumtme',0,0,'0','','viewkdstatereport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26771,71,172,2765,'viewkdstatereport1_kdcursumtime',0,0,'0','','viewkdstatereport1',1,0,0,'time','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26772,71,172,2763,'viewkdstatereport1_kdstime',0,0,'0','','viewkdstatereport1',1,0,0,'datetime','',0,1,0,0,'','',2,1,'','',0,0,'','',0,0),(26773,71,172,2764,'viewkdstatereport1_kdetime',0,0,'0','','viewkdstatereport1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26774,71,172,2753,'viewkdstatereport1_cs',0,0,'0','','viewkdstatereport1',1,0,0,'text','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26775,71,172,2788,'viewkdstatereport1_bz2',0,0,'0','','viewkdstatereport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26776,71,172,2747,'viewkdstatereport1_state',0,2524,'0','','viewkdstatereport1',1,1,0,'smallint','AllDevTypeCode',0,0,0,0,'','',0,0,'','',1,2,'','',0,0),(26777,71,163,2525,'BFT_EnumCode4_strEnumDisplay',2747,0,'0_2747','0','BFT_EnumCode4',4,0,172,'varchar','',0,0,0,0,'','',0,0,'不等于&&$','不等于&&$',0,0,'','',0,0),(26778,71,172,2766,'viewkdstatereport1_toid',0,0,'0','','viewkdstatereport1',1,0,0,'bigint','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26779,71,10,179,'KJ_DeviceType2_type',2743,2233,'0_2743','0','KJ_DeviceType2',2,1,172,'tinyint','AllAllDevPro',0,0,0,0,'','',0,0,'等于&&$\'1\'','等于&&$模拟量',0,0,'','',0,0),(26780,71,172,2768,'viewkdstatereport1_kdssz',0,0,'0','','viewkdstatereport1',1,0,0,'varchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26781,71,172,2769,'viewkdstatereport1_kdstate',0,0,'0','','viewkdstatereport1',1,0,0,'varchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26782,71,10,178,'KJ_DeviceType2_devID',2743,0,'0_2743','0','KJ_DeviceType2',2,0,172,'tinyint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26783,71,8,136,'KJ_DeviceAddress3_wzID',2744,0,'0_2744','0','KJ_DeviceAddress3',3,0,172,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26784,71,163,2524,'BFT_EnumCode4_lngEnumValue',2747,0,'0_2747','0','BFT_EnumCode4',4,0,172,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26785,71,172,2787,'viewkdstatereport1_bz1',0,0,'0','','viewkdstatereport1',1,0,0,'varchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26786,71,172,2746,'viewkdstatereport1_type',0,0,'0','','viewkdstatereport1',1,0,0,'smallint','',0,0,0,0,'','',0,0,'不等于&&$30','不等于&&$30',0,0,'','',0,1),(26787,71,172,2762,'viewkdstatereport1_datsearch',0,0,'0','','viewkdstatereport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'','',0,1),(26802,76,176,2824,'viewmnldaysavg1_point',0,0,'0','','viewmnldaysavg1',1,0,0,'varchar','AllPointMnl',0,1,0,0,'','',0,0,'','',1,2,'','',0,0),(26803,76,176,2825,'viewmnldaysavg1_wz',0,0,'0','','viewmnldaysavg1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26804,76,176,2826,'viewmnldaysavg1_name',0,0,'0','','viewmnldaysavg1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26805,76,176,2827,'viewmnldaysavg1_pjz',0,0,'0','','viewmnldaysavg1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26806,76,176,2828,'viewmnldaysavg1_zdz',0,0,'0','','viewmnldaysavg1',1,0,0,'float','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26807,76,176,2829,'viewmnldaysavg1_zxz',0,0,'0','','viewmnldaysavg1',1,0,0,'float','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26808,76,176,2830,'viewmnldaysavg1_datsearch',0,0,'0','','viewmnldaysavg1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'','',0,1),(26809,76,176,2823,'viewmnldaysavg1_PointID',0,0,'0','','viewmnldaysavg1',1,0,0,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26810,77,177,2837,'viewmnlbx1_point',0,0,'0','','viewmnlbx1',1,0,0,'varchar','AllPointMnl',0,1,0,0,'','',0,0,'','',1,2,'','',0,0),(26811,77,8,137,'KJ_DeviceAddress5_wz',143,0,'0_2832_143','0_2832','KJ_DeviceAddress5',5,0,9,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26812,77,9,143,'KJ_DeviceDefInfo2_wzid',2832,136,'0_2832','0','KJ_DeviceDefInfo2',2,1,177,'smallint','AllJC_WZ',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(26813,77,177,2832,'viewmnlbx1_pointid',0,2581,'0','','viewmnlbx1',1,1,0,'bigint','',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(26814,77,10,180,'KJ_DeviceType3_Name',2835,0,'0_2835','0','KJ_DeviceType3',3,0,177,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26815,77,177,2835,'viewmnlbx1_devid',0,178,'0','','viewmnlbx1',1,1,0,'bigint','',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(26816,77,177,2840,'viewmnlbx1_stime',0,0,'0','','viewmnlbx1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26817,77,177,2841,'viewmnlbx1_etime',0,0,'0','','viewmnlbx1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26818,77,177,2855,'viewmnlbx1_sumtime',0,0,'0','','viewmnlbx1',1,0,0,'time','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26819,77,177,2853,'viewmnlbx1_wz',0,0,'0','','viewmnlbx1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26820,77,177,2831,'viewmnlbx1_id',0,0,'0','','viewmnlbx1',1,0,0,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26821,77,9,139,'KJ_DeviceDefInfo2_ID',2832,0,'0_2832','0','KJ_DeviceDefInfo2',2,0,177,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26822,77,9,2581,'KJ_DeviceDefInfo2_pointid',2832,0,'0_2832','0','KJ_DeviceDefInfo2',2,0,177,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26823,77,8,136,'KJ_DeviceAddress5_wzID',143,0,'0_2832_143','0_2832','KJ_DeviceAddress5',5,0,9,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26824,77,10,178,'KJ_DeviceType3_devID',2835,0,'0_2835','0','KJ_DeviceType3',3,0,177,'tinyint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26825,77,177,2903,'viewmnlbx1_kdstate',0,0,'0','','viewmnlbx1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26826,77,0,0,'bzqtnd',0,0,'','','',0,0,0,'varchar','',0,1,0,1,'\'1.5\'','',0,0,'','',0,0,'','',0,0),(26827,77,177,2854,'viewmnlbx1_datsearch',0,0,'0','','viewmnlbx1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'','',0,1),(26828,77,177,2856,'viewmnlbx1_ida',0,0,'0','','viewmnlbx1',1,0,0,'bigint','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26875,78,178,2858,'viewmnlbjddmonth1_point',0,0,'0','','viewmnlbjddmonth1',1,0,0,'varchar','AllPointMnl',0,1,0,0,'','',0,0,'','',1,2,'','',0,0),(26876,78,178,2879,'viewmnlbjddmonth1_wz',0,0,'0','','viewmnlbjddmonth1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26877,78,10,199,'KJ_DeviceType2_Xs1',3082,0,'0_3082','0','KJ_DeviceType2',2,0,178,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26878,78,9,154,'KJ_DeviceDefInfo3_z2',3089,0,'0_3089','0','KJ_DeviceDefInfo3',3,0,178,'real','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26879,78,9,155,'KJ_DeviceDefInfo3_z3',3089,0,'0_3089','0','KJ_DeviceDefInfo3',3,0,178,'real','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26880,78,9,156,'KJ_DeviceDefInfo3_z4',3089,0,'0_3089','0','KJ_DeviceDefInfo3',3,0,178,'real','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26881,78,178,2880,'viewmnlbjddmonth1_devname',0,0,'0','','viewmnlbjddmonth1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26882,78,153,2317,'BFT_EnumCode4_strEnumDisplay',204,0,'0_3082_204','0_3082','BFT_EnumCode4',4,0,10,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26883,78,178,2859,'viewmnlbjddmonth1_bjcs',0,0,'0','','viewmnlbjddmonth1',1,0,0,'bigint','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26884,78,178,2860,'viewmnlbjddmonth1_bjstarttime',0,0,'0','','viewmnlbjddmonth1',1,0,0,'text','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26885,78,178,2861,'viewmnlbjddmonth1_bjendtime',0,0,'0','','viewmnlbjddmonth1',1,0,0,'text','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26886,78,178,2862,'viewmnlbjddmonth1_bjpjzzdzzdzs',0,0,'0','','viewmnlbjddmonth1',1,0,0,'text','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26887,78,178,2864,'viewmnlbjddmonth1_bjljscall',0,0,'0','','viewmnlbjddmonth1',1,0,0,'time','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26888,78,178,2866,'viewmnlbjddmonth1_ddcs',0,0,'0','','viewmnlbjddmonth1',1,0,0,'bigint','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26889,78,178,2867,'viewmnlbjddmonth1_ddstarttime',0,0,'0','','viewmnlbjddmonth1',1,0,0,'text','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26890,78,178,2868,'viewmnlbjddmonth1_ddendtime',0,0,'0','','viewmnlbjddmonth1',1,0,0,'text','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26891,78,178,2871,'viewmnlbjddmonth1_ddljsc',0,0,'0','','viewmnlbjddmonth1',1,0,0,'text','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26892,78,178,2869,'viewmnlbjddmonth1_ddstartendtime',0,0,'0','','viewmnlbjddmonth1',1,0,0,'text','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26893,78,178,2870,'viewmnlbjddmonth1_ddpjzzdzzdzs',0,0,'0','','viewmnlbjddmonth1',1,0,0,'text','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26894,78,178,2872,'viewmnlbjddmonth1_ddljscall',0,0,'0','','viewmnlbjddmonth1',1,0,0,'time','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26895,78,178,2874,'viewmnlbjddmonth1_kdcs',0,0,'0','','viewmnlbjddmonth1',1,0,0,'bigint','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26896,78,178,2875,'viewmnlbjddmonth1_kdstarttime',0,0,'0','','viewmnlbjddmonth1',1,0,0,'text','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26897,78,178,2876,'viewmnlbjddmonth1_kdendtime',0,0,'0','','viewmnlbjddmonth1',1,0,0,'text','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26898,78,178,2878,'viewmnlbjddmonth1_kdljscall',0,0,'0','','viewmnlbjddmonth1',1,0,0,'time','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26899,78,178,2881,'viewmnlbjddmonth1_datsearch',0,0,'0','','viewmnlbjddmonth1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'','',0,1),(26900,78,178,2857,'viewmnlbjddmonth1_PointID',0,0,'0','','viewmnlbjddmonth1',1,0,0,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26901,78,10,204,'KJ_DeviceType2_Bz3',3082,2316,'0_3082','0','KJ_DeviceType2',2,1,178,'int','AllDevType',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(26902,78,178,3082,'viewmnlbjddmonth1_devid',0,178,'0','','viewmnlbjddmonth1',1,1,0,'bigint','AllJC_Dev',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(26903,78,10,178,'KJ_DeviceType2_devID',3082,0,'0_3082','0','KJ_DeviceType2',2,0,178,'tinyint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26904,78,153,2316,'BFT_EnumCode4_lngEnumValue',204,0,'0_3082_204','0_3082','BFT_EnumCode4',4,0,10,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26905,78,178,3083,'viewmnlbjddmonth1_gzcs',0,0,'0','','viewmnlbjddmonth1',1,0,0,'bigint','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26906,78,178,3084,'viewmnlbjddmonth1_gzstarttime',0,0,'0','','viewmnlbjddmonth1',1,0,0,'text','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26907,78,178,3085,'viewmnlbjddmonth1_gzendtime',0,0,'0','','viewmnlbjddmonth1',1,0,0,'text','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26908,78,178,3087,'viewmnlbjddmonth1_gzljscall',0,0,'0','','viewmnlbjddmonth1',1,0,0,'time','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26909,78,178,2865,'viewmnlbjddmonth1_bjcuoshi',0,0,'0','','viewmnlbjddmonth1',1,0,0,'text','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26910,78,178,2873,'viewmnlbjddmonth1_ddcuoshi',0,0,'0','','viewmnlbjddmonth1',1,0,0,'text','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26911,78,178,3088,'viewmnlbjddmonth1_gzcuoshi',0,0,'0','','viewmnlbjddmonth1',1,0,0,'text','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26912,78,178,3089,'viewmnlbjddmonth1_pointid2',0,2581,'0','','viewmnlbjddmonth1',1,1,0,'bigint','',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(26913,78,9,139,'KJ_DeviceDefInfo3_ID',3089,0,'0_3089','0','KJ_DeviceDefInfo3',3,0,178,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26914,78,9,2581,'KJ_DeviceDefInfo3_pointid',3089,0,'0_3089','0','KJ_DeviceDefInfo3',3,0,178,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26915,78,178,3100,'viewmnlbjddmonth1_zdz',0,0,'0','','viewmnlbjddmonth1',1,0,0,'decimal','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26916,78,178,3101,'viewmnlbjddmonth1_zdzs',0,0,'0','','viewmnlbjddmonth1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26917,78,178,3102,'viewmnlbjddmonth1_zxz',0,0,'0','','viewmnlbjddmonth1',1,0,0,'decimal','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26918,78,178,3103,'viewmnlbjddmonth1_zxzs',0,0,'0','','viewmnlbjddmonth1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26919,78,178,3104,'viewmnlbjddmonth1_pjz',0,0,'0','','viewmnlbjddmonth1',1,0,0,'decimal','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26920,78,0,0,'bjddcuoshi',0,0,'','','',0,0,0,'varchar','',0,1,0,1,'concat(viewmnlbjddmonth1_bjcuoshi,viewmnlbjddmonth1_ddcuoshi,viewmnlbjddmonth1_gzcuoshi)','viewmnlbjddmonth1_bjcuoshi,viewmnlbjddmonth1_ddcuoshi,viewmnlbjddmonth1_gzcuoshi',0,0,'','',0,0,'','',0,0),(26921,13,27,457,'ViewJC_KGStateMonth1_point',0,0,'0','','ViewJC_KGStateMonth1',1,0,0,'nvarchar','AllPointKgl',0,1,0,0,'','',1,1,'','',1,2,'','',1,0),(26922,13,8,137,'KJ_DeviceAddress3_wz',466,0,'0_466','0','KJ_DeviceAddress3',3,0,27,'nvarchar','',0,1,0,0,'','',0,0,'','',1,3,'','',0,0),(26923,13,10,180,'KJ_DeviceType2_Name',465,0,'0_465','0','KJ_DeviceType2',2,0,27,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26924,13,27,550,'ViewJC_KGStateMonth1_state',0,0,'0','','ViewJC_KGStateMonth1',1,0,0,'nvarchar','',0,1,0,0,'','',2,1,'','',0,0,'','',0,0),(26925,13,27,462,'ViewJC_KGStateMonth1_sumtime',0,0,'0','','ViewJC_KGStateMonth1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26926,13,27,461,'ViewJC_KGStateMonth1_sumcount',0,0,'0','','ViewJC_KGStateMonth1',1,0,0,'int','',0,1,0,0,'','',0,0,'大于&&$0','大于&&$0',0,0,'','',0,0),(26927,13,27,3105,'ViewJC_KGStateMonth1_duration',0,0,'0','','ViewJC_KGStateMonth1',1,0,0,'time','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26928,13,27,458,'ViewJC_KGStateMonth1_stime',0,0,'0','','ViewJC_KGStateMonth1',1,0,0,'datetime','',0,1,0,0,'','',3,1,'','',0,0,'','',0,0),(26929,13,27,459,'ViewJC_KGStateMonth1_etime',0,0,'0','','ViewJC_KGStateMonth1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26930,13,27,468,'ViewJC_KGStateMonth1_pid',0,0,'0','','ViewJC_KGStateMonth1',1,0,0,'nvarchar','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26931,13,27,467,'ViewJC_KGStateMonth1_datSearch',0,0,'0','','ViewJC_KGStateMonth1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'介于&&$1900-01-01 00:00:00&&$9999-12-31 23:59:59','',0,1),(26932,13,27,463,'ViewJC_KGStateMonth1_fzh',0,0,'0','','ViewJC_KGStateMonth1',1,0,0,'smallint','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26933,13,27,464,'ViewJC_KGStateMonth1_kh',0,0,'0','','ViewJC_KGStateMonth1',1,0,0,'tinyint','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26934,13,10,178,'KJ_DeviceType2_devID',465,0,'0_465','0','KJ_DeviceType2',2,0,27,'tinyint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26935,13,8,136,'KJ_DeviceAddress3_wzID',466,0,'0_466','0','KJ_DeviceAddress3',3,0,27,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26936,13,27,465,'ViewJC_KGStateMonth1_devid',0,178,'0','','ViewJC_KGStateMonth1',1,1,0,'tinyint','AllJC_Dev',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(26937,13,27,466,'ViewJC_KGStateMonth1_wzid',0,136,'0','','ViewJC_KGStateMonth1',1,1,0,'smallint','AllJC_WZ',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(26952,14,39,670,'ViewKGLBJDDDayReport1_point',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',1,1,'','',0,0,'','',0,0),(26953,14,8,137,'KJ_DeviceAddress3_wz',669,0,'0_669','0','KJ_DeviceAddress3',3,0,39,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26954,14,39,683,'ViewKGLBJDDDayReport1_wz',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26955,14,39,690,'ViewKGLBJDDDayReport1_kdsumcount',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'int','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26956,14,39,691,'ViewKGLBJDDDayReport1_kdsumtime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26957,14,39,699,'ViewKGLBJDDDayReport1_kdstate',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26958,14,39,694,'ViewKGLBJDDDayReport1_kdstime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26959,14,39,695,'ViewKGLBJDDDayReport1_kdetime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26960,14,39,696,'ViewKGLBJDDDayReport1_kdcursumtime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26961,14,39,687,'ViewKGLBJDDDayReport1_bid',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'varchar','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26962,14,39,689,'ViewKGLBJDDDayReport1_datsearch',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'','',0,0),(26963,14,39,692,'ViewKGLBJDDDayReport1_toid',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'int','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(26964,14,39,669,'ViewKGLBJDDDayReport1_wzid',0,136,'0','','ViewKGLBJDDDayReport1',1,1,0,'smallint','AllJC_WZ',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(26965,14,8,136,'KJ_DeviceAddress3_wzID',669,0,'0_669','0','KJ_DeviceAddress3',3,0,39,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(26996,15,39,670,'ViewKGLBJDDDayReport1_point',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'nvarchar','AllPointKgl',0,1,0,0,'','',1,1,'','',1,2,'','',0,0),(26997,15,8,137,'KJ_DeviceAddress3_wz',669,0,'0_669','0','KJ_DeviceAddress3',3,0,39,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(26998,15,39,668,'ViewKGLBJDDDayReport1_devid',0,178,'0','','ViewKGLBJDDDayReport1',1,1,0,'tinyint','AllJC_Dev',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(26999,15,10,180,'KJ_DeviceType2_Name',668,0,'0_668','0','KJ_DeviceType2',2,0,39,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27000,15,39,686,'ViewKGLBJDDDayReport1_sumtime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27001,15,39,685,'ViewKGLBJDDDayReport1_sumcount',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'int','',0,1,0,0,'','',0,0,'大于&&$0','大于&&$0',0,0,'','',0,0),(27002,15,39,683,'ViewKGLBJDDDayReport1_wz',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27003,15,39,674,'ViewKGLBJDDDayReport1_cursumtime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27004,15,39,672,'ViewKGLBJDDDayReport1_stime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'datetime','',0,1,0,0,'','',2,1,'','',0,0,'','',0,0),(27005,15,39,673,'ViewKGLBJDDDayReport1_etime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27006,15,0,0,'kdstimea',0,0,'','','',0,0,0,'datetime','',0,1,0,1,'case  when  ViewKGLBJDDDayReport1_kdstate like \'%成功%\'  then ViewKGLBJDDDayReport1_stime else  ViewKGLBJDDDayReport1_kdstime  end','ViewKGLBJDDDayReport1_stime,ViewKGLBJDDDayReport1_kdstate,ViewKGLBJDDDayReport1_kdstime',0,0,'','',0,0,'','',0,0),(27007,15,0,0,'kdetimea',0,0,'','','',0,0,0,'datetime','',0,1,0,1,'case  when  ViewKGLBJDDDayReport1_kdstate like \'%成功%\'  then ViewKGLBJDDDayReport1_etime  else ViewKGLBJDDDayReport1_kdetime  end','ViewKGLBJDDDayReport1_etime,ViewKGLBJDDDayReport1_kdstate,ViewKGLBJDDDayReport1_kdetime',0,0,'','',0,0,'','',0,0),(27008,15,0,0,'kdcursumtimea',0,0,'','','',0,0,0,'varchar','',0,1,0,1,'case  when  ViewKGLBJDDDayReport1_kdstate like \'%成功%\'  then \r\nViewKGLBJDDDayReport1_cursumtime else  ViewKGLBJDDDayReport1_kdcursumtime  end','ViewKGLBJDDDayReport1_cursumtime,ViewKGLBJDDDayReport1_kdstate,ViewKGLBJDDDayReport1_kdcursumtime',0,0,'','',0,0,'','',0,0),(27009,15,39,699,'ViewKGLBJDDDayReport1_kdstate',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'不等于&&$复电失败','不等于&&$复电失败',0,0,'','',0,0),(27010,15,39,687,'ViewKGLBJDDDayReport1_bid',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'varchar','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27011,15,39,669,'ViewKGLBJDDDayReport1_wzid',0,136,'0','','ViewKGLBJDDDayReport1',1,1,0,'smallint','AllJC_WZ',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(27012,15,8,136,'KJ_DeviceAddress3_wzID',669,0,'0_669','0','KJ_DeviceAddress3',3,0,39,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27013,15,39,679,'ViewKGLBJDDDayReport1_cs',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'ntext','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27014,15,39,2772,'ViewKGLBJDDDayReport1_bz2',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27015,15,39,3092,'ViewKGLBJDDDayReport1_remark',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'text','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27016,15,39,2771,'ViewKGLBJDDDayReport1_bz1',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'varchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27017,15,10,178,'KJ_DeviceType2_devID',668,0,'0_668','0','KJ_DeviceType2',2,0,39,'tinyint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27018,15,10,204,'KJ_DeviceType2_Bz3',668,2316,'0_668','0','KJ_DeviceType2',2,1,39,'int','AllDevType',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(27019,15,153,2316,'BFT_EnumCode5_lngEnumValue',204,0,'0_668_204','0_668','BFT_EnumCode5',5,0,10,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27020,15,39,689,'ViewKGLBJDDDayReport1_datsearch',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'','',0,1),(27021,15,153,2317,'BFT_EnumCode5_strEnumDisplay',204,0,'0_668_204','0_668','BFT_EnumCode5',5,0,10,'varchar','',0,0,0,0,'','',0,0,'不等于&&$语音风门','不等于&&$语音风门',0,0,'','',0,0),(27022,15,39,698,'ViewKGLBJDDDayReport1_statename',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,1),(27023,15,39,694,'ViewKGLBJDDDayReport1_kdstime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27024,15,39,695,'ViewKGLBJDDDayReport1_kdetime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27025,15,39,696,'ViewKGLBJDDDayReport1_kdcursumtime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'varchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27072,32,162,2500,'viewkglkddayreport1_point',0,0,'0','','viewkglkddayreport1',1,0,0,'varchar','AllPointKgl',0,1,0,0,'','',0,0,'','',1,2,'','',0,0),(27073,32,8,137,'KJ_DeviceAddress3_wz',2499,0,'0_2499','0','KJ_DeviceAddress3',3,0,162,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27074,32,162,2499,'viewkglkddayreport1_wzid',0,136,'0','','viewkglkddayreport1',1,1,0,'int','AllJC_WZ',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(27075,32,10,180,'KJ_DeviceType2_Name',2498,0,'0_2498','0','KJ_DeviceType2',2,0,162,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27076,32,162,2498,'viewkglkddayreport1_devid',0,178,'0','','viewkglkddayreport1',1,1,0,'int','AllJC_Dev',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(27077,32,162,2508,'viewkglkddayreport1_wz',0,0,'0','','viewkglkddayreport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27078,32,162,2514,'viewkglkddayreport1_kdsumtime',0,0,'0','','viewkglkddayreport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27079,32,162,2513,'viewkglkddayreport1_kdsumcount',0,0,'0','','viewkglkddayreport1',1,0,0,'bigint','',0,1,0,0,'','',0,0,'大于&&$0','大于&&$0',0,0,'','',0,0),(27080,32,162,2520,'viewkglkddayreport1_kdstate',0,0,'0','','viewkglkddayreport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27081,32,162,2519,'viewkglkddayreport1_kdcursumtime',0,0,'0','','viewkglkddayreport1',1,0,0,'time','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27082,32,162,2517,'viewkglkddayreport1_kdstime',0,0,'0','','viewkglkddayreport1',1,0,0,'datetime','',0,1,0,0,'','',2,1,'','',0,0,'','',0,0),(27083,32,162,2518,'viewkglkddayreport1_kdetime',0,0,'0','','viewkglkddayreport1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27084,32,162,2553,'viewkglkddayreport1_cs',0,0,'0','','viewkglkddayreport1',1,0,0,'text','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27085,32,162,2786,'viewkglkddayreport1_bz2',0,0,'0','','viewkglkddayreport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27086,32,162,2512,'viewkglkddayreport1_datsearch',0,0,'0','','viewkglkddayreport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'','',0,1),(27087,32,162,2559,'viewkglkddayreport1_bid',0,0,'0','','viewkglkddayreport1',1,0,0,'varchar','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27088,32,8,136,'KJ_DeviceAddress3_wzID',2499,0,'0_2499','0','KJ_DeviceAddress3',3,0,162,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27089,32,10,178,'KJ_DeviceType2_devID',2498,0,'0_2498','0','KJ_DeviceType2',2,0,162,'tinyint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27090,32,162,2785,'viewkglkddayreport1_bz1',0,0,'0','','viewkglkddayreport1',1,0,0,'varchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27091,32,10,199,'KJ_DeviceType2_Xs1',2498,0,'0_2498','0','KJ_DeviceType2',2,0,162,'nvarchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27092,44,27,457,'ViewJC_KGStateMonth1_point',0,0,'0','','ViewJC_KGStateMonth1',1,0,0,'nvarchar','AllPointKgl',0,1,0,0,'','',0,0,'','',1,2,'','',0,0),(27093,44,10,180,'KJ_DeviceType2_Name',465,0,'0_465','0','KJ_DeviceType2',2,0,27,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27094,44,27,465,'ViewJC_KGStateMonth1_devid',0,178,'0','','ViewJC_KGStateMonth1',1,1,0,'tinyint','AllJC_Dev',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(27095,44,8,137,'KJ_DeviceAddress3_wz',466,0,'0_466','0','KJ_DeviceAddress3',3,0,27,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27096,44,27,462,'ViewJC_KGStateMonth1_sumtime',0,0,'0','','ViewJC_KGStateMonth1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27097,44,27,460,'ViewJC_KGStateMonth1_ssz',0,0,'0','','ViewJC_KGStateMonth1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27098,44,27,461,'ViewJC_KGStateMonth1_sumcount',0,0,'0','','ViewJC_KGStateMonth1',1,0,0,'int','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27099,44,27,468,'ViewJC_KGStateMonth1_pid',0,0,'0','','ViewJC_KGStateMonth1',1,0,0,'nvarchar','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27100,44,10,178,'KJ_DeviceType2_devID',465,0,'0_465','0','KJ_DeviceType2',2,0,27,'tinyint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27101,44,8,136,'KJ_DeviceAddress3_wzID',466,0,'0_466','0','KJ_DeviceAddress3',3,0,27,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27102,44,27,467,'ViewJC_KGStateMonth1_datSearch',0,0,'0','','ViewJC_KGStateMonth1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'','',0,0),(27103,44,27,466,'ViewJC_KGStateMonth1_wzid',0,136,'0','','ViewJC_KGStateMonth1',1,1,0,'smallint','AllJC_WZ',0,0,1,0,'','',0,0,'','',1,3,'','',0,0),(27104,94,39,670,'ViewKGLBJDDDayReport1_point',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'nvarchar','AllPointKgl',0,1,0,0,'','',0,0,'','',1,2,'','',0,0),(27105,94,8,137,'KJ_DeviceAddress3_wz',669,0,'0_669','0','KJ_DeviceAddress3',3,0,39,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27106,94,39,669,'ViewKGLBJDDDayReport1_wzid',0,136,'0','','ViewKGLBJDDDayReport1',1,1,0,'smallint','AllJC_WZ',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(27107,94,10,180,'KJ_DeviceType2_Name',668,0,'0_668','0','KJ_DeviceType2',2,0,39,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27108,94,39,668,'ViewKGLBJDDDayReport1_devid',0,178,'0','','ViewKGLBJDDDayReport1',1,1,0,'tinyint','AllJC_Dev',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(27109,94,39,686,'ViewKGLBJDDDayReport1_sumtime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27110,94,39,685,'ViewKGLBJDDDayReport1_sumcount',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'int','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27111,94,39,683,'ViewKGLBJDDDayReport1_wz',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'不等于&&$无断电区域','不等于&&$无断电区域',0,0,'','',0,0),(27112,94,39,674,'ViewKGLBJDDDayReport1_cursumtime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27113,94,39,672,'ViewKGLBJDDDayReport1_stime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27114,94,39,673,'ViewKGLBJDDDayReport1_etime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27115,94,39,699,'ViewKGLBJDDDayReport1_kdstate',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'不等于&&$复电失败','不等于&&$复电失败',0,0,'','',0,0),(27116,94,0,0,'kdstimea',0,0,'','','',0,0,0,'datetime','',0,1,0,1,'case  when  ViewKGLBJDDDayReport1_kdstate like \'%成功%\'  then ViewKGLBJDDDayReport1_stime else  ViewKGLBJDDDayReport1_kdstime  end','ViewKGLBJDDDayReport1_stime,ViewKGLBJDDDayReport1_kdstime,ViewKGLBJDDDayReport1_kdstate',0,0,'','',0,0,'','',0,0),(27117,94,0,0,'kdetimea',0,0,'','','',0,0,0,'datetime','',0,1,0,1,'case  when  ViewKGLBJDDDayReport1_kdstate like \'%成功%\'  then ViewKGLBJDDDayReport1_etime  else ViewKGLBJDDDayReport1_kdetime  end','ViewKGLBJDDDayReport1_etime,ViewKGLBJDDDayReport1_kdetime,ViewKGLBJDDDayReport1_kdstate',0,0,'','',0,0,'','',0,0),(27118,94,0,0,'kdcursumtimea',0,0,'','','',0,0,0,'datetime','',0,1,0,1,'case  when  ViewKGLBJDDDayReport1_kdstate like \'%成功%\'  then \r\nViewKGLBJDDDayReport1_cursumtime else  ViewKGLBJDDDayReport1_kdcursumtime  end','ViewKGLBJDDDayReport1_cursumtime,ViewKGLBJDDDayReport1_kdcursumtime,ViewKGLBJDDDayReport1_kdstate',0,0,'','',0,0,'','',0,0),(27119,94,39,679,'ViewKGLBJDDDayReport1_cs',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'ntext','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27120,94,39,2772,'ViewKGLBJDDDayReport1_bz2',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27121,94,39,3092,'ViewKGLBJDDDayReport1_remark',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'text','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27122,94,39,2771,'ViewKGLBJDDDayReport1_bz1',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'varchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27123,94,39,689,'ViewKGLBJDDDayReport1_datsearch',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'','',0,1),(27124,94,39,698,'ViewKGLBJDDDayReport1_statename',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'nvarchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27125,94,39,687,'ViewKGLBJDDDayReport1_bid',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'varchar','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27126,94,8,136,'KJ_DeviceAddress3_wzID',669,0,'0_669','0','KJ_DeviceAddress3',3,0,39,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27127,94,10,178,'KJ_DeviceType2_devID',668,0,'0_668','0','KJ_DeviceType2',2,0,39,'tinyint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27128,94,39,694,'ViewKGLBJDDDayReport1_kdstime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27129,94,39,695,'ViewKGLBJDDDayReport1_kdetime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27130,94,39,696,'ViewKGLBJDDDayReport1_kdcursumtime',0,0,'0','','ViewKGLBJDDDayReport1',1,0,0,'varchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27131,94,153,2317,'BFT_EnumCode5_strEnumDisplay',204,0,'0_668_204','0_668','BFT_EnumCode5',5,0,10,'varchar','',0,0,0,0,'','',0,0,'不等于&&$语音风门','不等于&&$语音风门',0,0,'','',0,0),(27132,94,10,204,'KJ_DeviceType2_Bz3',668,2316,'0_668','0','KJ_DeviceType2',2,1,39,'int','AllDevType',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(27133,94,153,2316,'BFT_EnumCode5_lngEnumValue',204,0,'0_668_204','0_668','BFT_EnumCode5',5,0,10,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27134,79,172,2745,'viewkdstatereport1_point',0,0,'0','','viewkdstatereport1',1,0,0,'varchar','AllPoint',0,1,0,0,'','',1,1,'','',1,2,'','',0,0),(27135,79,8,137,'KJ_DeviceAddress3_wz',2744,0,'0_2744','0','KJ_DeviceAddress3',3,0,172,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27136,79,172,2744,'viewkdstatereport1_wzid',0,136,'0','','viewkdstatereport1',1,1,0,'bigint','AllJC_WZ',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(27137,79,10,180,'KJ_DeviceType2_Name',2743,0,'0_2743','0','KJ_DeviceType2',2,0,172,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27138,79,172,2743,'viewkdstatereport1_devid',0,178,'0','','viewkdstatereport1',1,1,0,'bigint','AllJC_Dev',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(27139,79,180,2889,'view_4monthabykg17_sumcount',2760,0,'0_2760','0','view_4monthabykg17',7,0,172,'bigint','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27140,79,180,2890,'view_4monthabykg17_sumtime',2760,0,'0_2760','0','view_4monthabykg17',7,0,172,'time','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27141,79,172,2756,'viewkdstatereport1_wz',0,0,'0','','viewkdstatereport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27142,79,172,2769,'viewkdstatereport1_kdstate',0,0,'0','','viewkdstatereport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27143,79,172,2763,'viewkdstatereport1_kdstime',0,0,'0','','viewkdstatereport1',1,0,0,'datetime','',0,1,0,0,'','',2,1,'','',0,0,'','',0,0),(27144,79,172,2764,'viewkdstatereport1_kdetime',0,0,'0','','viewkdstatereport1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27145,79,172,2765,'viewkdstatereport1_kdcursumtime',0,0,'0','','viewkdstatereport1',1,0,0,'time','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27146,79,172,2753,'viewkdstatereport1_cs',0,0,'0','','viewkdstatereport1',1,0,0,'text','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27147,79,172,2787,'viewkdstatereport1_bz1',0,0,'0','','viewkdstatereport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27148,79,172,2788,'viewkdstatereport1_bz2',0,0,'0','','viewkdstatereport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27149,79,172,2762,'viewkdstatereport1_datsearch',0,0,'0','','viewkdstatereport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'','',0,1),(27150,79,8,136,'KJ_DeviceAddress3_wzID',2744,0,'0_2744','0','KJ_DeviceAddress3',3,0,172,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27151,79,10,178,'KJ_DeviceType2_devID',2743,0,'0_2743','0','KJ_DeviceType2',2,0,172,'tinyint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27152,79,10,179,'KJ_DeviceType2_type',2743,2233,'0_2743','0','KJ_DeviceType2',2,1,172,'tinyint','AllAllDevPro',0,0,0,0,'','',0,0,'等于&&$\'2\'','等于&&$开关量',0,0,'','',0,0),(27153,79,172,2760,'viewkdstatereport1_bidb',0,2887,'0','','viewkdstatereport1',1,1,0,'bigint','',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(27154,79,180,2887,'view_4monthabykg17_PointID',2760,0,'0_2760','0','view_4monthabykg17',7,0,172,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27178,17,40,705,'ViewJKSBGZDayReport1_point',0,0,'0','','ViewJKSBGZDayReport1',1,0,0,'nvarchar','AllPoint',0,1,0,0,'','',1,1,'','',1,2,'','',0,0),(27179,17,8,137,'KJ_DeviceAddress3_wz',704,0,'0_704','0','KJ_DeviceAddress3',3,0,40,'nvarchar','',0,1,0,0,'','',0,0,'','',1,6,'','',0,0),(27180,17,10,180,'KJ_DeviceType2_Name',703,0,'0_703','0','KJ_DeviceType2',2,0,40,'nvarchar','',0,1,0,0,'','',0,0,'不等于&&$风门开闭','不等于&&$风门开闭',0,0,'','',0,0),(27181,17,147,2234,'BFT_EnumCode5_strEnumDisplay',179,0,'0_703_179','0_703','BFT_EnumCode5',5,0,10,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27182,17,40,704,'ViewJKSBGZDayReport1_wzid',0,136,'0','','ViewJKSBGZDayReport1',1,1,0,'smallint','AllJC_WZ',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(27183,17,40,710,'ViewJKSBGZDayReport1_ssz',0,0,'0','','ViewJKSBGZDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27184,17,40,720,'ViewJKSBGZDayReport1_sumtime',0,0,'0','','ViewJKSBGZDayReport1',1,0,0,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27185,17,40,719,'ViewJKSBGZDayReport1_sumcount',0,0,'0','','ViewJKSBGZDayReport1',1,0,0,'int','',0,1,2,0,'','',0,0,'大于&&$0','大于&&$0',0,0,'','',0,0),(27186,17,40,709,'ViewJKSBGZDayReport1_cursumtime',0,0,'0','','ViewJKSBGZDayReport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27187,17,40,707,'ViewJKSBGZDayReport1_stime',0,0,'0','','ViewJKSBGZDayReport1',1,0,0,'datetime','',0,1,0,0,'','',2,1,'','',0,0,'','',0,0),(27188,17,40,708,'ViewJKSBGZDayReport1_etime',0,0,'0','','ViewJKSBGZDayReport1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27189,17,40,716,'ViewJKSBGZDayReport1_bid',0,0,'0','','ViewJKSBGZDayReport1',1,0,0,'varchar','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27190,17,10,178,'KJ_DeviceType2_devID',703,0,'0_703','0','KJ_DeviceType2',2,0,40,'tinyint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27191,17,8,136,'KJ_DeviceAddress3_wzID',704,0,'0_704','0','KJ_DeviceAddress3',3,0,40,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27192,17,40,714,'ViewJKSBGZDayReport1_cs',0,0,'0','','ViewJKSBGZDayReport1',1,0,0,'ntext','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27193,17,40,3107,'ViewJKSBGZDayReport1_bz2',0,0,'0','','ViewJKSBGZDayReport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27194,17,40,703,'ViewJKSBGZDayReport1_devid',0,178,'0','','ViewJKSBGZDayReport1',1,1,0,'tinyint','AllJC_Dev',0,0,1,0,'','',0,0,'','',1,3,'','',0,0),(27195,17,40,706,'ViewJKSBGZDayReport1_type',0,753,'0','','ViewJKSBGZDayReport1',1,1,0,'tinyint','AllTypeCode',0,0,1,0,'','',0,0,'','',1,4,'','',0,0),(27196,17,10,179,'KJ_DeviceType2_type',703,2233,'0_703','0','KJ_DeviceType2',2,1,40,'tinyint','AllAllDevPro',0,0,1,0,'','',0,0,'','',1,5,'','',0,0),(27197,17,147,2233,'BFT_EnumCode5_lngEnumValue',179,0,'0_703_179','0_703','BFT_EnumCode5',5,0,10,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27198,17,40,3095,'ViewJKSBGZDayReport1_remark',0,0,'0','','ViewJKSBGZDayReport1',1,0,0,'text','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27199,17,40,3106,'ViewJKSBGZDayReport1_bz1',0,0,'0','','ViewJKSBGZDayReport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27200,17,40,718,'ViewJKSBGZDayReport1_datsearch',0,0,'0','','ViewJKSBGZDayReport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'','',0,1),(27201,22,148,2254,'viewsbrunlogreport1_timer',0,0,'0','','viewsbrunlogreport1',1,0,0,'datetime','',0,1,0,0,'','',1,1,'','',0,0,'','',0,0),(27202,22,148,2251,'viewsbrunlogreport1_point',0,0,'0','','viewsbrunlogreport1',1,0,0,'varchar','AllPoint',0,1,0,0,'','',2,1,'','',1,1,'','',1,0),(27203,22,148,2250,'viewsbrunlogreport1_wzid',0,136,'0','','viewsbrunlogreport1',1,1,0,'int','AllJC_WZ',0,0,0,0,'','',0,0,'','',1,2,'','',0,0),(27204,22,148,2249,'viewsbrunlogreport1_devid',0,178,'0','','viewsbrunlogreport1',1,1,0,'int','AllJC_Dev',0,0,0,0,'','',0,0,'','',1,3,'','',0,0),(27205,22,8,137,'KJ_DeviceAddress3_wz',2250,0,'0_2250','0','KJ_DeviceAddress3',3,0,148,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27206,22,10,180,'KJ_DeviceType2_Name',2249,0,'0_2249','0','KJ_DeviceType2',2,0,148,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27207,22,148,2253,'viewsbrunlogreport1_val',0,0,'0','','viewsbrunlogreport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27208,22,0,0,'dd',0,0,'','','',0,0,0,'varchar','',0,1,0,1,'case KJ_DeviceType2_type when 1 then KJ_DeviceType2_Xs1 else \'\' end','KJ_DeviceType2_Xs1,KJ_DeviceType2_type',0,0,'','',0,0,'','',0,0),(27209,22,10,199,'KJ_DeviceType2_Xs1',2249,0,'0_2249','0','KJ_DeviceType2',2,0,148,'nvarchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27210,22,148,2257,'viewsbrunlogreport1_datsearch',0,0,'0','','viewsbrunlogreport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,4,'','',0,0),(27211,22,10,179,'KJ_DeviceType2_type',2249,2233,'0_2249','0','KJ_DeviceType2',2,1,148,'tinyint','AllAllDevPro',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27212,22,148,2246,'viewsbrunlogreport1_id',0,0,'0','','viewsbrunlogreport1',1,0,0,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27213,22,10,178,'KJ_DeviceType2_devID',2249,0,'0_2249','0','KJ_DeviceType2',2,0,148,'tinyint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27214,22,8,136,'KJ_DeviceAddress3_wzID',2250,0,'0_2250','0','KJ_DeviceAddress3',3,0,148,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27215,22,43,753,'BFT_EnumCode4_lngEnumValue',2252,0,'0_2252','0','BFT_EnumCode4',4,0,148,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27216,22,148,2252,'viewsbrunlogreport1_type',0,753,'0','','viewsbrunlogreport1',1,1,0,'smallint','AllTypeCode',0,0,0,0,'','',0,0,'','',1,5,'','',0,0),(27217,22,43,754,'BFT_EnumCode4_strEnumDisplay',2252,0,'0_2252','0','BFT_EnumCode4',4,0,148,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27218,22,163,2525,'BFT_EnumCode5_strEnumDisplay',2541,0,'0_2541','0','BFT_EnumCode5',5,0,148,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27219,22,148,2258,'viewsbrunlogreport1_valnumber',0,0,'0','','viewsbrunlogreport1',1,0,0,'decimal','',0,0,0,0,'','',0,0,'','',1,6,'','',0,0),(27220,22,10,200,'KJ_DeviceType2_Xs2',2249,0,'0_2249','0','KJ_DeviceType2',2,0,148,'nvarchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27221,22,10,201,'KJ_DeviceType2_Xs3',2249,0,'0_2249','0','KJ_DeviceType2',2,0,148,'nvarchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27222,22,148,2247,'viewsbrunlogreport1_fzh',0,0,'0','','viewsbrunlogreport1',1,0,0,'smallint','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27223,22,148,2248,'viewsbrunlogreport1_kh',0,0,'0','','viewsbrunlogreport1',1,0,0,'smallint','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27224,22,148,2541,'viewsbrunlogreport1_state',0,2524,'0','','viewsbrunlogreport1',1,1,0,'int','AllDevTypeCode',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(27225,22,163,2524,'BFT_EnumCode5_lngEnumValue',2541,0,'0_2541','0','BFT_EnumCode5',5,0,148,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27245,23,149,2266,'viewmcrunlogreport1_timer',0,0,'0','','viewmcrunlogreport1',1,0,0,'datetime','',0,1,0,0,'','',1,1,'','',0,0,'','',0,0),(27246,23,149,2263,'viewmcrunlogreport1_point',0,0,'0','','viewmcrunlogreport1',1,0,0,'varchar','AllPoint',0,1,0,0,'','',2,1,'','',1,3,'','',1,0),(27247,23,8,137,'KJ_DeviceAddress3_wz',2265,0,'0_2265','0','KJ_DeviceAddress3',3,0,149,'nvarchar','',0,1,0,0,'','',0,0,'','',1,5,'','',0,0),(27248,23,149,2265,'viewmcrunlogreport1_wzid',0,136,'0','','viewmcrunlogreport1',1,1,0,'int','AllJC_WZ',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(27249,23,10,180,'KJ_DeviceType2_Name',2264,0,'0_2264','0','KJ_DeviceType2',2,0,149,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27250,23,149,2267,'viewmcrunlogreport1_ssz',0,0,'0','','viewmcrunlogreport1',1,0,0,'float','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27251,23,0,0,'Value1',0,0,'','','',0,0,0,'varchar','',0,1,0,1,'case BFT_EnumCode5_strEnumDisplay \r\nwhen \'断线\' then \'-\' \r\nwhen \'设备状态未知\' then \'-\' \r\nelse  viewmcrunlogreport1_ssz end','viewmcrunlogreport1_ssz,BFT_EnumCode5_strEnumDisplay',0,0,'','',0,0,'','',0,0),(27252,23,10,199,'KJ_DeviceType2_Xs1',2264,0,'0_2264','0','KJ_DeviceType2',2,0,149,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27253,23,149,2259,'viewmcrunlogreport1_ID',0,0,'0','','viewmcrunlogreport1',1,0,0,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27254,23,10,178,'KJ_DeviceType2_devID',2264,0,'0_2264','0','KJ_DeviceType2',2,0,149,'tinyint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27255,23,8,136,'KJ_DeviceAddress3_wzID',2265,0,'0_2265','0','KJ_DeviceAddress3',3,0,149,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27256,23,149,2269,'viewmcrunlogreport1_datsearch',0,0,'0','','viewmcrunlogreport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'','',0,0),(27257,23,149,2264,'viewmcrunlogreport1_devid',0,178,'0','','viewmcrunlogreport1',1,1,0,'int','AllJC_Dev',0,0,1,0,'','',0,0,'','',1,2,'','',0,0),(27258,23,43,754,'BFT_EnumCode5_strEnumDisplay',2561,0,'0_2561','0','BFT_EnumCode5',5,0,149,'varchar','',0,1,0,0,'','',0,0,'','',1,6,'','',0,0),(27259,23,149,2540,'viewmcrunlogreport1_state',0,2524,'0','','viewmcrunlogreport1',1,1,0,'int','AllDevTypeCode',0,0,0,0,'','',0,0,'','',1,4,'','',0,0),(27260,23,163,2525,'BFT_EnumCode4_strEnumDisplay',2540,0,'0_2540','0','BFT_EnumCode4',4,0,149,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27261,23,163,2524,'BFT_EnumCode4_lngEnumValue',2540,0,'0_2540','0','BFT_EnumCode4',4,0,149,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27262,23,149,2561,'viewmcrunlogreport1_type',0,753,'0','','viewmcrunlogreport1',1,1,0,'smallint','AllTypeCode',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(27263,23,43,753,'BFT_EnumCode5_lngEnumValue',2561,0,'0_2561','0','BFT_EnumCode5',5,0,149,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27264,24,150,2271,'BFT_operatelog1_UserName',0,0,'0','','BFT_operatelog1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',1,3,'','',0,0),(27265,24,150,2272,'BFT_operatelog1_LoginIP',0,0,'0','','BFT_operatelog1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',1,1,'','',0,0),(27266,24,151,2280,'BFT_EnumCode2_strEnumDisplay',2273,0,'0_2273','0','BFT_EnumCode2',2,0,150,'varchar','',0,1,0,0,'','',0,0,'','',1,5,'','',0,0),(27267,24,150,2274,'BFT_operatelog1_OperationContent',0,0,'0','','BFT_operatelog1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',1,2,'','',0,0),(27268,24,150,2275,'BFT_operatelog1_CreateTime',0,0,'0','','BFT_operatelog1',1,0,0,'datetime','',0,1,0,0,'','',1,1,'','',1,4,'','',0,0),(27269,24,150,2276,'BFT_operatelog1_Remark',0,0,'0','','BFT_operatelog1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27270,24,150,2270,'BFT_operatelog1_OperateLogID',0,0,'0','','BFT_operatelog1',1,0,0,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27271,24,151,2279,'BFT_EnumCode2_lngEnumValue',2273,0,'0_2273','0','BFT_EnumCode2',2,0,150,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27272,24,150,2273,'BFT_operatelog1_Type',0,2279,'0','','BFT_operatelog1',1,1,0,'int','AllOperatorType',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(27273,69,155,2381,'jc_defkzk1_point',0,0,'0','','jc_defkzk1',1,0,0,'varchar','AllPoint',0,1,0,0,'','',1,1,'','',1,1,'','',0,0),(27274,69,155,2374,'jc_defkzk1_ID',0,0,'0','','jc_defkzk1',1,0,0,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27275,69,8,137,'KJ_DeviceAddress3_wz',2379,0,'0_2379','0','KJ_DeviceAddress3',3,0,155,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27276,69,10,180,'KJ_DeviceType2_Name',2378,0,'0_2378','0','KJ_DeviceType2',2,0,155,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27277,69,10,178,'KJ_DeviceType2_devID',2378,0,'0_2378','0','KJ_DeviceType2',2,0,155,'tinyint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27278,69,155,2379,'jc_defkzk1_wzid',0,136,'0','','jc_defkzk1',1,1,0,'int','AllJC_WZ',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(27279,69,8,136,'KJ_DeviceAddress3_wzID',2379,0,'0_2379','0','KJ_DeviceAddress3',3,0,155,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27280,69,152,2302,'BFT_EnumCode7_strEnumDisplay',205,0,'0_2378_205','0_2378','BFT_EnumCode7',7,0,10,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27281,69,155,2391,'jc_defkzk1_Z2',0,0,'0','','jc_defkzk1',1,0,0,'float','',0,1,0,0,'','',0,0,'','',1,4,'','',0,0),(27282,69,155,2392,'jc_defkzk1_Z3',0,0,'0','','jc_defkzk1',1,0,0,'float','',0,1,0,0,'','',0,0,'','',1,5,'','',0,0),(27283,69,155,2393,'jc_defkzk1_Z4',0,0,'0','','jc_defkzk1',1,0,0,'float','',0,1,0,0,'','',0,0,'','',1,6,'','',0,0),(27284,69,155,2395,'jc_defkzk1_Z6',0,0,'0','','jc_defkzk1',1,0,0,'float','',0,1,0,0,'','',0,0,'','',1,7,'','',0,0),(27285,69,155,2416,'jc_defkzk1_remark',0,0,'0','','jc_defkzk1',1,0,0,'text','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27286,69,152,2301,'BFT_EnumCode7_lngEnumValue',205,0,'0_2378_205','0_2378','BFT_EnumCode7',7,0,10,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27287,69,155,2378,'jc_defkzk1_devid',0,178,'0','','jc_defkzk1',1,1,0,'int','AllJC_Dev',0,0,0,0,'','',0,0,'','',1,2,'','',0,0),(27288,69,10,204,'KJ_DeviceType2_Bz3',2378,2316,'0_2378','0','KJ_DeviceType2',2,1,155,'int','AllDevType',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27289,69,10,179,'KJ_DeviceType2_type',2378,2233,'0_2378','0','KJ_DeviceType2',2,1,155,'tinyint','AllAllDevPro',0,0,1,0,'','',0,0,'','',0,0,'','',0,0),(27290,69,10,205,'KJ_DeviceType2_Bz4',2378,2301,'0_2378','0','KJ_DeviceType2',2,1,155,'int','AllDevModel',0,0,1,0,'','',0,0,'','',1,3,'','',0,0),(27291,43,148,3141,'viewsbrunlogreport1_bz1',0,0,'0','','viewsbrunlogreport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27292,43,148,2251,'viewsbrunlogreport1_point',0,0,'0','','viewsbrunlogreport1',1,0,0,'varchar','AllPoint',0,1,0,0,'','',2,1,'','',0,0,'','',0,0),(27293,43,8,137,'KJ_DeviceAddress3_wz',2250,0,'0_2250','0','KJ_DeviceAddress3',3,0,148,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27294,43,163,2525,'BFT_EnumCode5_strEnumDisplay',2541,0,'0_2541','0','BFT_EnumCode5',5,0,148,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27295,43,148,2254,'viewsbrunlogreport1_timer',0,0,'0','','viewsbrunlogreport1',1,0,0,'datetime','',0,1,0,0,'','',1,1,'','',0,0,'','',0,0),(27296,43,148,2257,'viewsbrunlogreport1_datsearch',0,0,'0','','viewsbrunlogreport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'','',0,0),(27297,43,148,2250,'viewsbrunlogreport1_wzid',0,136,'0','','viewsbrunlogreport1',1,1,0,'int','AllJC_WZ',0,0,1,0,'','',0,0,'','',1,2,'','',0,0),(27298,43,148,2246,'viewsbrunlogreport1_id',0,0,'0','','viewsbrunlogreport1',1,0,0,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27299,43,8,136,'KJ_DeviceAddress3_wzID',2250,0,'0_2250','0','KJ_DeviceAddress3',3,0,148,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27300,43,148,2541,'viewsbrunlogreport1_state',0,2524,'0','','viewsbrunlogreport1',1,1,0,'int','AllDevTypeCode',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(27301,43,163,2524,'BFT_EnumCode5_lngEnumValue',2541,0,'0_2541','0','BFT_EnumCode5',5,0,148,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27302,43,148,2247,'viewsbrunlogreport1_fzh',0,0,'0','','viewsbrunlogreport1',1,0,0,'smallint','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27303,43,148,2248,'viewsbrunlogreport1_kh',0,0,'0','','viewsbrunlogreport1',1,0,0,'smallint','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27304,45,9,145,'KJ_DeviceDefInfo1_point',0,0,'0','','KJ_DeviceDefInfo1',1,0,0,'nvarchar','AllPoint',0,1,0,0,'','',1,1,'','',0,0,'','',0,0),(27305,45,9,143,'KJ_DeviceDefInfo1_wzid',0,136,'0','','KJ_DeviceDefInfo1',1,1,0,'smallint','AllJC_WZ',0,0,0,0,'','',0,0,'','',1,1,'','',0,0),(27306,45,8,137,'KJ_DeviceAddress3_wz',143,0,'0_143','0','KJ_DeviceAddress3',3,0,9,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27307,45,9,142,'KJ_DeviceDefInfo1_devid',0,178,'0','','KJ_DeviceDefInfo1',1,1,0,'tinyint','AllJC_Dev',0,0,1,0,'','',0,0,'','',1,3,'','',1,0),(27308,45,10,180,'KJ_DeviceType2_Name',142,0,'0_142','0','KJ_DeviceType2',2,0,9,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27309,45,10,205,'KJ_DeviceType2_Bz4',142,2301,'0_142','0','KJ_DeviceType2',2,1,9,'int','AllDevModel',0,0,0,0,'','',0,0,'','',1,2,'','',0,0),(27310,45,152,2302,'BFT_EnumCode6_strEnumDisplay',205,0,'0_142_205','0_142','BFT_EnumCode6',6,0,10,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27311,45,10,2684,'KJ_DeviceType2_bz7',142,0,'0_142','0','KJ_DeviceType2',2,0,9,'varchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27312,45,9,2597,'KJ_DeviceDefInfo1_bz13',0,0,'0','','KJ_DeviceDefInfo1',1,0,0,'varchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27313,45,9,2599,'KJ_DeviceDefInfo1_bz15',0,0,'0','','KJ_DeviceDefInfo1',1,0,0,'varchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27314,45,0,0,'wybm',0,0,'','','',0,0,0,'varchar','',0,1,0,1,'case\r\nwhen KJ_DeviceDefInfo1_bz13 is null or KJ_DeviceDefInfo1_bz13=\'\'\r\nthen \'-\'\r\nelse KJ_DeviceDefInfo1_bz13\r\nend','KJ_DeviceDefInfo1_bz13',0,0,'','',0,0,'','',0,0),(27315,45,0,0,'ccdate',0,0,'','','',0,0,0,'datetime','',0,1,0,1,'case\r\nwhen KJ_DeviceDefInfo1_bz15 is null or KJ_DeviceDefInfo1_bz15=\'\'\r\nthen \'-\'\r\nelse KJ_DeviceDefInfo1_bz15\r\nend','KJ_DeviceDefInfo1_bz15',0,0,'','',0,0,'','',0,0),(27316,45,10,2298,'KJ_DeviceType2_bz5',142,0,'0_142','0','KJ_DeviceType2',2,0,9,'int','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27317,45,10,2683,'KJ_DeviceType2_bz6',142,0,'0_142','0','KJ_DeviceType2',2,0,9,'varchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27318,45,9,139,'KJ_DeviceDefInfo1_ID',0,0,'0','','KJ_DeviceDefInfo1',1,0,0,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27319,45,9,2581,'KJ_DeviceDefInfo1_pointid',0,0,'0','','KJ_DeviceDefInfo1',1,0,0,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27320,45,10,178,'KJ_DeviceType2_devID',142,0,'0_142','0','KJ_DeviceType2',2,0,9,'tinyint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27321,45,152,2301,'BFT_EnumCode6_lngEnumValue',205,0,'0_142_205','0_142','BFT_EnumCode6',6,0,10,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27322,45,8,136,'KJ_DeviceAddress3_wzID',143,0,'0_143','0','KJ_DeviceAddress3',3,0,9,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27323,45,0,0,'ddfdeee',0,0,'','','',0,0,0,'varchar','',0,1,0,1,'CONCAT(KJ_DeviceType2_bz5,\'年\')','KJ_DeviceType2_bz5',0,0,'','',0,0,'','',0,0),(27324,45,0,0,'bddds',0,0,'','','',0,0,0,'varchar','',0,1,0,1,'CONCAT(KJ_DeviceType2_bz6,\'年\')','KJ_DeviceType2_bz6',0,0,'','',0,0,'','',0,0),(27325,45,0,0,'bz5end',0,0,'','','',0,0,0,'datetime','',0,1,0,1,'case\r\nwhen KJ_DeviceDefInfo1_bz15 is null or KJ_DeviceDefInfo1_bz15=\'\'\r\nthen \'-\'\r\nelse DATE_ADD(KJ_DeviceDefInfo1_bz15,INTERVAL KJ_DeviceType2_bz5 YEAR)\r\nend','KJ_DeviceDefInfo1_bz15,KJ_DeviceType2_bz5',0,0,'','',0,0,'','',0,0),(27326,45,0,0,'ddfd',0,0,'','','',0,0,0,'datetime','',0,1,0,1,'case\r\nwhen KJ_DeviceDefInfo1_bz15 is null or KJ_DeviceDefInfo1_bz15=\'\'\r\nthen \'-\'\r\nelse DATE_ADD(KJ_DeviceDefInfo1_bz15,INTERVAL KJ_DeviceType2_bz6 YEAR)\r\nend','KJ_DeviceDefInfo1_bz15,KJ_DeviceType2_bz6',0,0,'','',0,0,'','',0,0),(27327,45,9,2592,'KJ_DeviceDefInfo1_activity',0,0,'0','','KJ_DeviceDefInfo1',1,0,0,'varchar','',0,0,0,0,'','',0,0,'等于&&$1','等于&&$1',0,0,'','',0,0),(27328,45,0,0,'test',0,0,'','','',0,0,0,'varchar','',0,1,0,1,'case \r\nwhen KJ_DeviceDefInfo1_bz15 is null or KJ_DeviceDefInfo1_bz15=\'\'\r\nthen \'-\'\r\nelse \r\n    case \r\n    when now() >  DATE_ADD(KJ_DeviceDefInfo1_bz15,INTERVAL KJ_DeviceType2_bz5 YEAR)\r\n    then \'是\' \r\n    else \'否\' \r\n    end\r\nend','KJ_DeviceDefInfo1_bz15,KJ_DeviceType2_bz5',0,0,'','',0,0,'','',0,0),(27329,45,0,0,'afdfd',0,0,'','','',0,0,0,'varchar','',0,1,0,1,'case \r\nwhen KJ_DeviceDefInfo1_bz15 is null or KJ_DeviceDefInfo1_bz15=\'\'\r\nthen \'-\'\r\nelse \r\n    case \r\n    when now() >  DATE_ADD(KJ_DeviceDefInfo1_bz15,INTERVAL KJ_DeviceType2_bz6 YEAR)\r\n    then \'是\' \r\n    else \'否\' \r\n    end\r\nend','KJ_DeviceDefInfo1_bz15,KJ_DeviceType2_bz6',0,0,'','',0,0,'','',0,0),(27339,46,168,2689,'viewjc_devtj1_bz4',0,2301,'0','','viewjc_devtj1',1,1,0,'int','AllDevModel',0,0,0,0,'','',0,0,'','',1,1,'','',0,0),(27340,46,152,2302,'BFT_EnumCode2_strEnumDisplay',2689,0,'0_2689','0','BFT_EnumCode2',2,0,168,'varchar','',0,1,0,0,'','',0,0,'不等于&&$','不等于&&$',0,0,'','',0,0),(27341,46,168,2690,'viewjc_devtj1_sumcoumt',0,0,'0','','viewjc_devtj1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27342,46,168,2691,'viewjc_devtj1_sumzycount',0,0,'0','','viewjc_devtj1',1,0,0,'bigint','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27343,46,168,2692,'viewjc_devtj1_sumkccount',0,0,'0','','viewjc_devtj1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27344,46,168,2693,'viewjc_devtj1_sumoveryxcount',0,0,'0','','viewjc_devtj1',1,0,0,'bigint','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27345,46,168,2694,'viewjc_devtj1_sumoverzbcount',0,0,'0','','viewjc_devtj1',1,0,0,'bigint','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27346,46,168,2688,'viewjc_devtj1_devid',0,0,'0','','viewjc_devtj1',1,0,0,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27347,46,152,2301,'BFT_EnumCode2_lngEnumValue',2689,0,'0_2689','0','BFT_EnumCode2',2,0,168,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27348,91,189,3119,'viewsubstationdischarge1_point',0,0,'0','','viewsubstationdischarge1',1,0,0,'varchar','AllPoint',0,1,0,0,'','',1,1,'','',1,2,'','',0,0),(27349,91,8,137,'KJ_DeviceAddress5_wz',3118,0,'0_3118','0','KJ_DeviceAddress5',5,0,189,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27350,91,189,3118,'viewsubstationdischarge1_wzid',0,136,'0','','viewsubstationdischarge1',1,1,0,'bigint','',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(27351,91,10,180,'KJ_DeviceType4_Name',3117,0,'0_3117','0','KJ_DeviceType4',4,0,189,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27352,91,189,3117,'viewsubstationdischarge1_devid',0,178,'0','','viewsubstationdischarge1',1,1,0,'bigint','',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(27353,91,163,2525,'BFT_EnumCode3_strEnumDisplay',3111,0,'0_3111','0','BFT_EnumCode3',3,0,189,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27354,91,189,3111,'viewsubstationdischarge1_state',0,2524,'0','','viewsubstationdischarge1',1,1,0,'smallint','',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(27355,91,189,3112,'viewsubstationdischarge1_stime',0,0,'0','','viewsubstationdischarge1',1,0,0,'datetime','',0,1,0,0,'','',2,1,'','',0,0,'','',0,0),(27356,91,189,3113,'viewsubstationdischarge1_etime',0,0,'0','','viewsubstationdischarge1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27357,91,189,3114,'viewsubstationdischarge1_duration',0,0,'0','','viewsubstationdischarge1',1,0,0,'time','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27358,91,189,3108,'viewsubstationdischarge1_datsearch',0,0,'0','','viewsubstationdischarge1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'','',0,0),(27359,91,189,3109,'viewsubstationdischarge1_id',0,0,'0','','viewsubstationdischarge1',1,0,0,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27360,91,8,136,'KJ_DeviceAddress5_wzID',3118,0,'0_3118','0','KJ_DeviceAddress5',5,0,189,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27361,91,10,178,'KJ_DeviceType4_devID',3117,0,'0_3117','0','KJ_DeviceType4',4,0,189,'tinyint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27362,91,163,2524,'BFT_EnumCode3_lngEnumValue',3111,0,'0_3111','0','BFT_EnumCode3',3,0,189,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27363,92,190,3129,'viewequipmentaccount1_name',0,0,'0','','viewequipmentaccount1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27364,92,190,3130,'viewequipmentaccount1_totalnum',0,0,'0','','viewequipmentaccount1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27365,92,190,3133,'viewequipmentaccount1_usednum',0,0,'0','','viewequipmentaccount1',1,0,0,'bigint','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27366,92,190,3134,'viewequipmentaccount1_unusednum',0,0,'0','','viewequipmentaccount1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27367,92,190,3136,'viewequipmentaccount1_overindate',0,0,'0','','viewequipmentaccount1',1,0,0,'bigint','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27368,92,190,3137,'viewequipmentaccount1_overguaranteeperiod',0,0,'0','','viewequipmentaccount1',1,0,0,'bigint','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27369,92,190,3135,'viewequipmentaccount1_devid2',0,0,'0','','viewequipmentaccount1',1,0,0,'bigint','AllJC_Dev',0,0,0,0,'','',0,0,'','',1,1,'','',0,0),(27370,92,190,3128,'viewequipmentaccount1_devid',0,0,'0','','viewequipmentaccount1',1,0,0,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27371,93,193,3176,'viewstationpowerchargehistory1_point',0,0,'0','','viewstationpowerchargehistory1',1,0,0,'varchar','AllPointStation',0,1,0,0,'','',0,0,'','',1,2,'','',0,0),(27372,93,193,3177,'viewstationpowerchargehistory1_wz',0,0,'0','','viewstationpowerchargehistory1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27373,93,193,3168,'viewstationpowerchargehistory1_Stime',0,0,'0','','viewstationpowerchargehistory1',1,0,0,'datetime','',0,1,0,0,'','',2,1,'','',1,1,'','',0,0),(27374,93,193,3170,'viewstationpowerchargehistory1_DischargeStime',0,0,'0','','viewstationpowerchargehistory1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27375,93,0,0,'chargeStime',0,0,'','','',0,0,0,'varchar','',0,1,0,1,'case when viewstationpowerchargehistory1_DischargeStime=\'1900-01-01 00:00:00\' then \'-\' else viewstationpowerchargehistory1_DischargeStime end','viewstationpowerchargehistory1_DischargeStime',0,0,'','',0,0,'','',0,0),(27376,93,193,3171,'viewstationpowerchargehistory1_DischargeEtime',0,0,'0','','viewstationpowerchargehistory1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27377,93,0,0,'chargeEtime',0,0,'','','',0,0,0,'varchar','',0,1,0,1,'case when viewstationpowerchargehistory1_DischargeEtime=\'1900-01-01 00:00:00\' then \'-\' else viewstationpowerchargehistory1_DischargeEtime end','viewstationpowerchargehistory1_DischargeEtime',0,0,'','',0,0,'','',0,0),(27378,93,193,3172,'viewstationpowerchargehistory1_userName',0,0,'0','','viewstationpowerchargehistory1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27379,93,193,3165,'viewstationpowerchargehistory1_Id',0,0,'0','','viewstationpowerchargehistory1',1,0,0,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27406,38,0,0,'xiaoji',0,0,'','','',0,0,0,'varchar','',0,1,0,1,'case viewjc_llmonth1_By1 when \'-999\' then \'合计\' else viewjc_llmonth1_point end','viewjc_llmonth1_point,viewjc_llmonth1_By1',0,0,'','',0,0,'','',0,0),(27407,38,164,2933,'viewjc_llmonth1_point',0,0,'0','','viewjc_llmonth1',1,0,0,'varchar','AllPointLjl',0,0,0,0,'','',0,0,'','',1,2,'','',0,0),(27408,38,8,137,'KJ_DeviceAddress4_wz',143,0,'0_2563_143','0_2563','KJ_DeviceAddress4',4,0,9,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27409,38,164,2564,'viewjc_llmonth1_FY',0,0,'0','','viewjc_llmonth1',1,0,0,'float','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27410,38,164,2565,'viewjc_llmonth1_WD',0,0,'0','','viewjc_llmonth1',1,0,0,'float','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27411,38,164,2566,'viewjc_llmonth1_WS',0,0,'0','','viewjc_llmonth1',1,0,0,'float','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27412,38,164,2567,'viewjc_llmonth1_CO',0,0,'0','','viewjc_llmonth1',1,0,0,'float','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27413,38,164,2577,'viewjc_llmonth1_yxsc',0,0,'0','','viewjc_llmonth1',1,0,0,'bigint','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27414,38,164,2569,'viewjc_llmonth1_GH',0,0,'0','','viewjc_llmonth1',1,0,0,'float','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27415,38,164,2571,'viewjc_llmonth1_GC',0,0,'0','','viewjc_llmonth1',1,0,0,'float','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27416,38,164,2574,'viewjc_llmonth1_GHL',0,0,'0','','viewjc_llmonth1',1,0,0,'float','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27417,38,164,2575,'viewjc_llmonth1_GCL',0,0,'0','','viewjc_llmonth1',1,0,0,'float','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27418,38,164,2568,'viewjc_llmonth1_BH',0,0,'0','','viewjc_llmonth1',1,0,0,'float','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27419,38,164,2570,'viewjc_llmonth1_BC',0,0,'0','','viewjc_llmonth1',1,0,0,'float','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27420,38,164,2572,'viewjc_llmonth1_BHL',0,0,'0','','viewjc_llmonth1',1,0,0,'float','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27421,38,164,2573,'viewjc_llmonth1_BCL',0,0,'0','','viewjc_llmonth1',1,0,0,'float','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27422,38,164,2576,'viewjc_llmonth1_Timer',0,0,'0','','viewjc_llmonth1',1,0,0,'datetime','',0,1,0,0,'','',3,1,'','',0,0,'','',0,0),(27423,38,9,139,'KJ_DeviceDefInfo2_ID',2563,0,'0_2563','0','KJ_DeviceDefInfo2',2,0,164,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27424,38,9,2581,'KJ_DeviceDefInfo2_pointid',2563,0,'0_2563','0','KJ_DeviceDefInfo2',2,0,164,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27425,38,9,143,'KJ_DeviceDefInfo2_wzid',2563,136,'0_2563','0','KJ_DeviceDefInfo2',2,1,164,'smallint','AllJC_WZ',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(27426,38,164,2563,'viewjc_llmonth1_PointID',0,2581,'0','','viewjc_llmonth1',1,1,0,'bigint','AllPointByLL',0,0,1,0,'','',2,1,'','',0,0,'','',0,0),(27427,38,8,136,'KJ_DeviceAddress4_wzID',143,0,'0_2563_143','0_2563','KJ_DeviceAddress4',4,0,9,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27428,38,164,2578,'viewjc_llmonth1_By1',0,0,'0','','viewjc_llmonth1',1,0,0,'varchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27429,38,164,2606,'viewjc_llmonth1_sort',0,0,'0','','viewjc_llmonth1',1,0,0,'bigint','',0,0,0,0,'','',4,1,'','',0,0,'','',0,0),(27430,38,164,2607,'viewjc_llmonth1_datsearch',0,0,'0','','viewjc_llmonth1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'','',0,0),(27431,38,164,2562,'viewjc_llmonth1_ID',0,0,'0','','viewjc_llmonth1',1,0,0,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27432,39,0,0,'xiaoji',0,0,'','','',0,0,0,'varchar','',0,1,0,1,'case   viewjc_lld1_By1 when \'-999\'  then \'合计\' else viewjc_lld1_point  end','viewjc_lld1_point,viewjc_lld1_By1',0,0,'','',0,0,'','',0,0),(27433,39,165,2932,'viewjc_lld1_point',0,0,'0','','viewjc_lld1',1,0,0,'varchar','AllPointLjl',0,0,0,0,'','',0,0,'','',1,2,'','',0,0),(27434,39,8,137,'KJ_DeviceAddress4_wz',143,0,'0_2609_143','0_2609','KJ_DeviceAddress4',4,0,9,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27435,39,165,2610,'viewjc_lld1_FY',0,0,'0','','viewjc_lld1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27436,39,165,2611,'viewjc_lld1_WD',0,0,'0','','viewjc_lld1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27437,39,165,2612,'viewjc_lld1_WS',0,0,'0','','viewjc_lld1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27438,39,165,2613,'viewjc_lld1_CO',0,0,'0','','viewjc_lld1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27439,39,165,2624,'viewjc_lld1_yxsc',0,0,'0','','viewjc_lld1',1,0,0,'time','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27440,39,165,2615,'viewjc_lld1_GH',0,0,'0','','viewjc_lld1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27441,39,165,2617,'viewjc_lld1_GC',0,0,'0','','viewjc_lld1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27442,39,165,2620,'viewjc_lld1_GHL',0,0,'0','','viewjc_lld1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27443,39,165,2621,'viewjc_lld1_GCL',0,0,'0','','viewjc_lld1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27444,39,165,2614,'viewjc_lld1_BH',0,0,'0','','viewjc_lld1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27445,39,165,2608,'viewjc_lld1_ID',0,0,'0','','viewjc_lld1',1,0,0,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27446,39,9,139,'KJ_DeviceDefInfo2_ID',2609,0,'0_2609','0','KJ_DeviceDefInfo2',2,0,165,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27447,39,9,2581,'KJ_DeviceDefInfo2_pointid',2609,0,'0_2609','0','KJ_DeviceDefInfo2',2,0,165,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27448,39,8,136,'KJ_DeviceAddress4_wzID',143,0,'0_2609_143','0_2609','KJ_DeviceAddress4',4,0,9,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27449,39,165,2616,'viewjc_lld1_BC',0,0,'0','','viewjc_lld1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27450,39,165,2618,'viewjc_lld1_BHL',0,0,'0','','viewjc_lld1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27451,39,165,2619,'viewjc_lld1_BCL',0,0,'0','','viewjc_lld1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27452,39,165,2622,'viewjc_lld1_timer',0,0,'0','','viewjc_lld1',1,0,0,'datetime','',0,1,0,0,'','',3,1,'','',0,0,'','',0,0),(27453,39,165,2625,'viewjc_lld1_By1',0,0,'0','','viewjc_lld1',1,0,0,'varchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27454,39,165,2628,'viewjc_lld1_sort',0,0,'0','','viewjc_lld1',1,0,0,'bigint','',0,0,0,0,'','',4,1,'','',0,0,'','',0,0),(27455,39,165,2629,'viewjc_lld1_datsearch',0,0,'0','','viewjc_lld1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'','',0,0),(27456,39,9,143,'KJ_DeviceDefInfo2_wzid',2609,136,'0_2609','0','KJ_DeviceDefInfo2',2,1,165,'smallint','AllJC_WZ',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(27457,39,165,2609,'viewjc_lld1_PointID',0,2581,'0','','viewjc_lld1',1,1,0,'bigint','AllPointByLL',1,0,1,0,'','',2,1,'','',0,2,'','',0,0),(27458,41,0,0,'xiaoji',0,0,'','','',0,0,0,'varchar','',0,1,0,1,'case viewjc_llm1_By1 when \'-999\' then \'合计\' else viewjc_llm1_point end','viewjc_llm1_point,viewjc_llm1_By1',0,0,'','',0,0,'','',0,0),(27459,41,166,2934,'viewjc_llm1_point',0,0,'0','','viewjc_llm1',1,0,0,'varchar','AllPointLjl',0,0,0,0,'','',0,0,'','',1,3,'','',0,0),(27460,41,9,143,'KJ_DeviceDefInfo2_wzid',2631,136,'0_2631','0','KJ_DeviceDefInfo2',2,1,166,'smallint','AllJC_WZ',1,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27461,41,8,137,'KJ_DeviceAddress4_wz',143,0,'0_2631_143','0_2631','KJ_DeviceAddress4',4,0,9,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27462,41,166,2632,'viewjc_llm1_FY',0,0,'0','','viewjc_llm1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27463,41,166,2633,'viewjc_llm1_WD',0,0,'0','','viewjc_llm1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27464,41,166,2634,'viewjc_llm1_WS',0,0,'0','','viewjc_llm1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27465,41,166,2635,'viewjc_llm1_CO',0,0,'0','','viewjc_llm1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27466,41,166,2646,'viewjc_llm1_yxsc',0,0,'0','','viewjc_llm1',1,0,0,'time','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27467,41,166,2637,'viewjc_llm1_GH',0,0,'0','','viewjc_llm1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27468,41,166,2639,'viewjc_llm1_GC',0,0,'0','','viewjc_llm1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27469,41,166,2642,'viewjc_llm1_GHL',0,0,'0','','viewjc_llm1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27470,41,166,2643,'viewjc_llm1_GCL',0,0,'0','','viewjc_llm1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27471,41,166,2636,'viewjc_llm1_BH',0,0,'0','','viewjc_llm1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27472,41,166,2638,'viewjc_llm1_BC',0,0,'0','','viewjc_llm1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27473,41,166,2640,'viewjc_llm1_BHL',0,0,'0','','viewjc_llm1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27474,41,166,2641,'viewjc_llm1_BCL',0,0,'0','','viewjc_llm1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27475,41,166,2644,'viewjc_llm1_timer',0,0,'0','','viewjc_llm1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27476,41,0,0,'shijian',0,0,'','','',0,0,0,'varchar','',0,1,0,1,'date_format(viewjc_llm1_timer,\'%Y-%m\')','viewjc_llm1_timer',3,1,'','',0,0,'','',0,0),(27477,41,166,2631,'viewjc_llm1_PointID',0,2581,'0','','viewjc_llm1',1,1,0,'bigint','AllPointByLL',1,0,1,0,'','',2,1,'','',0,2,'','',0,0),(27478,41,166,2647,'viewjc_llm1_By1',0,0,'0','','viewjc_llm1',1,0,0,'varchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27479,41,166,2650,'viewjc_llm1_sort',0,0,'0','','viewjc_llm1',1,0,0,'bigint','',0,0,0,0,'','',4,1,'','',0,0,'','',0,0),(27480,41,166,2651,'viewjc_llm1_datsearch',0,0,'0','','viewjc_llm1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'','',0,0),(27481,41,166,2630,'viewjc_llm1_ID',0,0,'0','','viewjc_llm1',1,0,0,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27482,41,9,139,'KJ_DeviceDefInfo2_ID',2631,0,'0_2631','0','KJ_DeviceDefInfo2',2,0,166,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27483,41,9,2581,'KJ_DeviceDefInfo2_pointid',2631,0,'0_2631','0','KJ_DeviceDefInfo2',2,0,166,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27484,41,8,136,'KJ_DeviceAddress4_wzID',143,0,'0_2631_143','0_2631','KJ_DeviceAddress4',4,0,9,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27485,42,0,0,'xiaoji',0,0,'','','',0,0,0,'varchar','',0,1,0,1,'case viewjc_lly1_By1 when \'-999\' then \'合计\' else viewjc_lly1_point end','viewjc_lly1_point,viewjc_lly1_By1',0,0,'','',0,0,'','',0,0),(27486,42,167,2935,'viewjc_lly1_point',0,0,'0','','viewjc_lly1',1,0,0,'varchar','AllPointLjl',0,0,0,0,'','',0,0,'','',1,2,'','',0,0),(27487,42,8,137,'KJ_DeviceAddress4_wz',143,0,'0_2662_143','0_2662','KJ_DeviceAddress4',4,0,9,'nvarchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27488,42,167,2663,'viewjc_lly1_FY',0,0,'0','','viewjc_lly1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27489,42,167,2664,'viewjc_lly1_WD',0,0,'0','','viewjc_lly1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27490,42,167,2665,'viewjc_lly1_WS',0,0,'0','','viewjc_lly1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27491,42,167,2666,'viewjc_lly1_CO',0,0,'0','','viewjc_lly1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27492,42,167,2677,'viewjc_lly1_yxsc',0,0,'0','','viewjc_lly1',1,0,0,'time','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27493,42,167,2668,'viewjc_lly1_GH',0,0,'0','','viewjc_lly1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27494,42,167,2670,'viewjc_lly1_GC',0,0,'0','','viewjc_lly1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27495,42,167,2673,'viewjc_lly1_GHL',0,0,'0','','viewjc_lly1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27496,42,167,2674,'viewjc_lly1_GCL',0,0,'0','','viewjc_lly1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27497,42,167,2667,'viewjc_lly1_BH',0,0,'0','','viewjc_lly1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27498,42,167,2669,'viewjc_lly1_BC',0,0,'0','','viewjc_lly1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27499,42,167,2671,'viewjc_lly1_BHL',0,0,'0','','viewjc_lly1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27500,42,167,2672,'viewjc_lly1_BCL',0,0,'0','','viewjc_lly1',1,0,0,'double','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27501,42,167,2675,'viewjc_lly1_timer',0,0,'0','','viewjc_lly1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27502,42,0,0,'shijian',0,0,'','','',0,0,0,'varchar','',0,1,0,1,'date_format(viewjc_lly1_timer,\'%Y\')','viewjc_lly1_timer',3,1,'','',0,0,'','',0,0),(27503,42,167,2678,'viewjc_lly1_By1',0,0,'0','','viewjc_lly1',1,0,0,'varchar','',0,0,0,0,'','',0,0,'','',0,0,'','',0,0),(27504,42,167,2681,'viewjc_lly1_sort',0,0,'0','','viewjc_lly1',1,0,0,'bigint','',0,0,0,0,'','',4,1,'','',0,0,'','',0,0),(27505,42,167,2682,'viewjc_lly1_datsearch',0,0,'0','','viewjc_lly1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',1,1,'','',0,0),(27506,42,167,2662,'viewjc_lly1_PointID',0,2581,'0','','viewjc_lly1',1,1,0,'bigint','AllPointByLL',1,0,1,0,'','',2,1,'','',0,2,'','',0,0),(27507,42,167,2661,'viewjc_lly1_ID',0,0,'0','','viewjc_lly1',1,0,0,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27508,42,9,139,'KJ_DeviceDefInfo2_ID',2662,0,'0_2662','0','KJ_DeviceDefInfo2',2,0,167,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27509,42,9,2581,'KJ_DeviceDefInfo2_pointid',2662,0,'0_2662','0','KJ_DeviceDefInfo2',2,0,167,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27510,42,9,143,'KJ_DeviceDefInfo2_wzid',2662,136,'0_2662','0','KJ_DeviceDefInfo2',2,1,167,'smallint','AllJC_WZ',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(27511,42,8,136,'KJ_DeviceAddress4_wzID',143,0,'0_2662_143','0_2662','KJ_DeviceAddress4',4,0,9,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27512,86,183,2954,'viewlinkagehistory1_linkagename',0,0,'0','','viewlinkagehistory1',1,0,0,'varchar','',0,1,0,0,'','',1,1,'','',1,2,'','',0,0),(27513,86,183,2938,'viewlinkagehistory1_StartTime',0,0,'0','','viewlinkagehistory1',1,0,0,'datetime','',0,1,0,0,'','',2,1,'','',1,1,'','',0,0),(27514,86,183,2939,'viewlinkagehistory1_EndTime',0,0,'0','','viewlinkagehistory1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27515,86,183,2952,'viewlinkagehistory1_IsForceEndText',0,0,'0','','viewlinkagehistory1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27516,86,183,2956,'viewlinkagehistory1_username',0,0,'0','','viewlinkagehistory1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27517,86,183,3127,'viewlinkagehistory1_bigdataanalyzename',0,0,'0','','viewlinkagehistory1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27518,86,183,2948,'viewlinkagehistory1_wz',0,0,'0','','viewlinkagehistory1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27519,86,183,2947,'viewlinkagehistory1_point',0,0,'0','','viewlinkagehistory1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27520,86,183,2936,'viewlinkagehistory1_Id',0,0,'0','','viewlinkagehistory1',1,0,0,'bigint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27521,86,183,2955,'viewlinkagehistory1_devname',0,0,'0','','viewlinkagehistory1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27522,86,183,2950,'viewlinkagehistory1_DataStateText',0,0,'0','','viewlinkagehistory1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27570,95,194,3184,'viewswitchrunlogreport1_point',0,0,'0','','viewswitchrunlogreport1',1,0,0,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27571,95,194,3191,'viewswitchrunlogreport1_remark',0,0,'0','','viewswitchrunlogreport1',1,0,0,'text','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27572,95,8,137,'KJ_DeviceAddress2_wz',3183,0,'0_3183','0','KJ_DeviceAddress2',2,0,194,'nvarchar','',0,1,0,0,'','',0,0,'','',1,2,'','',0,0),(27573,95,194,3183,'viewswitchrunlogreport1_wzid',0,136,'0','','viewswitchrunlogreport1',1,1,0,'bigint','',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(27574,95,43,754,'BFT_EnumCode3_strEnumDisplay',3185,0,'0_3185','0','BFT_EnumCode3',3,0,194,'varchar','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27575,95,194,3185,'viewswitchrunlogreport1_type',0,753,'0','','viewswitchrunlogreport1',1,1,0,'smallint','',1,0,1,0,'','',0,0,'','',0,0,'','',0,0),(27576,95,194,3190,'viewswitchrunlogreport1_sumtime',0,0,'0','','viewswitchrunlogreport1',1,0,0,'time','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27577,95,194,3188,'viewswitchrunlogreport1_stime',0,0,'0','','viewswitchrunlogreport1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',1,1,'','',0,0),(27578,95,194,3189,'viewswitchrunlogreport1_etime',0,0,'0','','viewswitchrunlogreport1',1,0,0,'datetime','',0,1,0,0,'','',0,0,'','',0,0,'','',0,0),(27579,95,8,136,'KJ_DeviceAddress2_wzID',3183,0,'0_3183','0','KJ_DeviceAddress2',2,0,194,'smallint','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27580,95,43,753,'BFT_EnumCode3_lngEnumValue',3185,0,'0_3185','0','BFT_EnumCode3',3,0,194,'int','',1,0,2,0,'','',0,0,'','',0,0,'','',0,0),(27581,95,194,3193,'viewswitchrunlogreport1_datsearch',0,0,'0','','viewswitchrunlogreport1',1,0,0,'datetime','',0,0,0,0,'','',0,0,'','',0,0,'','',0,1);
/*!40000 ALTER TABLE `bft_listmetadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bft_menu`
--

DROP TABLE IF EXISTS `bft_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bft_menu` (
  `MenuID` bigint(20) NOT NULL COMMENT '菜单ID',
  `MenuCode` varchar(128) DEFAULT NULL COMMENT '菜单编码',
  `MenuName` varchar(128) DEFAULT NULL COMMENT '菜单名称',
  `MenuURL` varchar(1000) DEFAULT NULL COMMENT '菜单连接地址',
  `MenuParent` varchar(129) DEFAULT NULL COMMENT '父菜单编号',
  `MenuMemo` int(11) DEFAULT NULL COMMENT '菜单标志位',
  `MenuFlag` int(11) DEFAULT NULL COMMENT '菜单使用标志',
  `MenuFile` varchar(500) DEFAULT NULL COMMENT '菜单所属程序文件',
  `MenuNamespace` varchar(500) DEFAULT NULL COMMENT '菜单所属文件命名空间',
  `MenuParams` varchar(500) DEFAULT NULL COMMENT '菜单窗体参数',
  `MenuSort` varchar(128) DEFAULT NULL COMMENT '菜单排序标志',
  `MenuStatus` int(11) DEFAULT NULL COMMENT '菜单是否在菜单树中进行加载',
  `MenuForSys` int(11) DEFAULT NULL COMMENT '菜单响应类型',
  `MenuSmallIcon` varchar(1000) DEFAULT NULL COMMENT '菜单小图标',
  `MenuLargeIcon` varchar(1000) DEFAULT NULL COMMENT '菜单大图标',
  `LoadByIframe` int(11) DEFAULT NULL COMMENT '窗口打开次数',
  `IsSystemDesktop` int(11) DEFAULT NULL COMMENT '系统桌面标记',
  `ShowType` int(11) DEFAULT NULL COMMENT '模态标记',
  `RightCode` varchar(128) DEFAULT NULL COMMENT '权限编号',
  `RequestCode` varchar(128) DEFAULT NULL COMMENT '请求库编码',
  `Remark1` varchar(200) DEFAULT NULL COMMENT '菜单简称(已使用)',
  `Remark2` varchar(200) DEFAULT NULL COMMENT '备注2',
  `Rmark3` varchar(200) DEFAULT NULL COMMENT '备注3',
  `Remark4` varchar(200) DEFAULT NULL COMMENT '备注4',
  `Remark5` varchar(200) DEFAULT NULL COMMENT '备注5',
  PRIMARY KEY (`MenuID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bft_menu`
--

LOCK TABLES `bft_menu` WRITE;
/*!40000 ALTER TABLE `bft_menu` DISABLE KEYS */;
INSERT INTO `bft_menu` VALUES (1,'008007011','模拟量报警断电记录月报表','frmList','008007',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=23','11',0,0,'008-打印-13模拟量断电日(班)报表.png','',0,0,1,'MLLBJDDMonthReport','RequestMLLBJDDReport','模拟量断电月报表','1',NULL,NULL,NULL),(2,'008007010','逻辑分析报表','frmList','008007',0,0,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=22','10',0,0,'008-打印-逻辑分析记录.png','',0,0,1,'LJFXReport','RequestAnalysishReport','逻辑分析查询','1',NULL,NULL,NULL),(3,'008006009','监控设备故障日(班)报表','frmList','008006',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=21','9',0,0,'008-打印-10设备故障.png','',0,0,1,'SBGZDayReport','RequestJKSBGZDayReport','设备故障','1',NULL,NULL,NULL),(4,'008002002','开关量报警及断电日(班)报表','frmList','008002',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=19','8',0,0,'008-打印-03报警开关量.png','',0,0,1,'KGLBJDDDayReport','RequestKGLBJDDDayReport','开关量报警','1',NULL,NULL,NULL),(5,'008004007','开关量馈电异常日(班)报表','frmList','008004',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=34','7',0,0,'008-打印-07馈电异常开关量.png','',0,0,1,'KGLKDDayReport','RequestKGLKDDDayReporta','开关量馈电异常','1',NULL,NULL,NULL),(6,'008007006','开关量状态变动日(班)报表','frmList','008007',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=17','6',0,0,'008-打印-19开关量状态变动报表.png','',0,0,1,'KGLStateDayReport','RequestKGLStateRBReport','开关量状态变动报表','1',NULL,NULL,NULL),(7,'008007005','模拟量统计值报表','frmList','008007',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=15','5',0,0,'008-打印-15模拟量统计值报表.png','',0,0,1,'MLLTJZReport','RequestMLLTJZReport','模拟量统计值报表','1',NULL,NULL,NULL),(8,'008004004','模拟量馈电异常日(班)报表','frmList','008004',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=14','4',0,0,'008-打印-06馈电异常模拟量.png','',0,0,1,'MLLKDDayReport','RequestMLLKDReport','模拟量馈电异常','1',NULL,NULL,NULL),(9,'008003003','模拟量断电日(班)报表','frmList','008003',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=13','3',0,0,'008-打印-04断电控制模拟量.png','',0,0,1,'MLLDDDayReport','RequestMLLDDReport','模拟量断电','1',NULL,NULL,NULL),(10,'008002001','模拟量报警日(班)报表','frmList','008002',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=10','2',0,0,'008-打印-02报警模拟量.png','',0,0,1,'MLLBJDayReport','RequestMLLBJReport','模拟量报警','1',NULL,NULL,NULL),(11,'008007002','模拟量日(班)报表','frmList','008007',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=9','2',0,0,'008-打印-日报.png','',0,0,0,'MLLDayReport','Requestddd','模拟量日(班)报表','1',NULL,NULL,NULL),(635738703572705595,'008007013','设备运行日志查询','frmList','008007',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=27','13',0,0,'008-打印-24设备运行日志.png','',0,0,1,'SBRunLogReport','Requestsbrunlogreport','设备运行日志','1',NULL,NULL,NULL),(635738705737438633,'008007014','模拟量密采记录查询','frmList','008007',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=28','14',0,0,'008-打印-16模拟量密采记录.png','',0,0,1,'MCRunLogReport','RequestMCRungLogReport','模拟量密采记录','1',NULL,NULL,NULL),(635739555503384359,'008007015','系统操作日志','frmList','008007',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=29','15',0,0,'008-打印-25系统操作日志.png','',0,0,1,'OperatorLogReport','RequestOperatorList','系统操作日志','1',NULL,NULL,NULL),(635743902623549757,'008007016','设备安装情况查询','frmList','008007',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=32','16',0,0,'008-打印-26传感器安装情况.png','',0,0,1,'DefWZReport','RequestdevwzReport','设备使用情况','1',NULL,NULL,NULL),(636196523753631152,'001015006','修改密码','frmChaPas','001015',0,1,'Sys.CBF.Win.dll','Sys.CBF.Win.View.User','','6',0,0,'001-参数设置-20修改密码.png','',0,0,1,'ChangePassword','ChangePassword','修改密码','1',NULL,NULL,NULL),(636201734745995326,'003001008','菜单切换','frmLogOn','003001',0,0,'Sys.CBF.Win.dll','Sys.CBF.Win.View.LogOn','','3',0,0,'003-控制-05菜单切换.png','',0,2,0,'QueryUserMenuTypeChg','RequetUserMenuTypeChg','菜单切换','1',NULL,NULL,NULL),(636201734745995327,'003001009','数据获取','Maintenance','003001',0,1,'Sys.Safety.Client.Control.exe','Sys.Safety.Client.Control','','11',0,0,'003-控制-09数据获取.png','',0,0,1,'StationMaintenanceManage','RequestMaintenance','数据获取','1',NULL,NULL,NULL),(1506151132320060005,'001015','用户及权限管理','','001',0,1,'','','','15',0,0,'','',0,0,0,'','','角色及用户','1',NULL,NULL,NULL),(1506151132320060006,'001','参数设置','','',-1,1,'','','','1',0,0,'','',0,0,0,'','','参数设置','1',NULL,NULL,NULL),(1506151132320060007,'001015001','用户管理','frmList','001015',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=49','1',0,0,'001-参数设置-15用户角色.png','',0,0,1,'QueryUser','RequestUserList','用户管理','1',NULL,NULL,NULL),(1506151132320060008,'001015002','系统角色','frmList','001015',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=3','2',0,0,'001-参数设置-17角色设置.png','',0,0,1,'QueryRole','RequestRoleList','系统角色','1',NULL,NULL,NULL),(1506151132320060009,'001015003','系统权限','frmList','001015',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=4','3',0,0,'001-参数设置-16权限设置.png','',0,0,1,'QueryRight','RequestRightList','系统权限','1',NULL,NULL,NULL),(1506151132320060010,'001015004','系统菜单','frmList','001015',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=5','4',0,0,'001-参数设置-19菜单管理.png','',0,0,1,'QueryMenu','RequestMenuList','系统菜单','1',NULL,NULL,NULL),(1506151132320060011,'001015005','页面管理','frmList','001015',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=12','5',0,0,'001-参数设置-20请求库.png','',0,0,1,'QueryRequest','RequestRequestList','页面管理','1',NULL,NULL,NULL),(1506151132320060012,'008007012','运行日志列表查询','frmList','008007',0,0,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=11','7',0,0,'008-打印-24设备运行日志.png','',0,0,1,'QueryRunLog','RequestRunLogList','运行日志','1',NULL,NULL,NULL),(1506151132320060013,'002','页面编辑',NULL,NULL,-1,1,NULL,NULL,NULL,'2',0,0,NULL,NULL,0,0,0,NULL,NULL,'页面编辑','1',NULL,NULL,NULL),(1506151132320060014,'001003017','元数据管理','','001003',0,0,'元数据工具\\Sys.CBF.MetaData.BulidMetaData.exe','','','1',0,0,'001-参数设置-13元数据管理.png','',0,1,1,'OpenMetaData','RequestMeteDataTool','元数据配置','1',NULL,NULL,NULL),(1506151132320060015,'008001001','报表配置工具','frmMain','008001',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','','2',0,0,'008-打印-01编辑（报表编辑）.png','',0,0,1,'OpenReportCenter','RequestReportTool','样式编辑','1',NULL,NULL,NULL),(1506151132320060016,'001003018','枚举配置','frmEnumType','001003',0,0,'Sys.CBF.Win.dll','Sys.CBF.Win.View.EnumCode','','3',0,0,'001-参数设置-10枚举配置.png','',0,0,1,'OpenEnumCode','RequestEnumTool','枚举配置','1',NULL,NULL,NULL),(1506151132320060018,'003004001','用户登录','frmLogOn','003004',0,1,'Sys.CBF.Win.dll','Sys.CBF.Win.View.LogOn','','7',0,0,'002-页面编辑-09用户登录.png','',0,0,1,'UserLogin','RequestUserLogOn','用户登录','1',NULL,NULL,NULL),(1506151132320060019,'005','曲线显示',NULL,NULL,-1,1,NULL,NULL,NULL,'3',0,0,NULL,NULL,0,0,0,NULL,NULL,'曲线显示','1',NULL,NULL,NULL),(1506151132320060020,'005002001','模拟量5分钟曲线','Mnl_FiveMiniteLine','005002',0,1,'Sys.Safety.Client.Chart.exe','Sys.Safety.Client.Chart','GraphicInIframe=false','1',1,0,'005-曲线显示-05_5分钟曲线.png','',0,0,1,'QueryMnl_FiveMiniteLine','RequestMnl_FiveMiniteLine','模拟量5分钟曲线','1',NULL,NULL,NULL),(1506151132320060021,'005002002','模拟量月柱状图','Mnl_MthBarAndLine','005002',0,1,'Sys.Safety.Client.Chart.exe','Sys.Safety.Client.Chart','GraphicInIframe=false','3',1,0,'005-曲线显示-07模拟量月.png','',0,0,1,'QueryMnl_MthBarAndLine','RequestMnl_MthBarAndLine','模拟量月曲线','1',NULL,NULL,NULL),(1506151132320060022,'005002003','模拟量密采曲线','Mnl_McLine','005002',0,1,'Sys.Safety.Client.Chart.exe','Sys.Safety.Client.Chart',NULL,'2',1,0,'005-曲线-03-密采曲线.png','',0,0,0,'QueryMnl_McLine','RequestMnl_McLine','模拟量密采曲线','1',NULL,NULL,NULL),(1506151132320060023,'005002005','模拟量多点同屏曲线','Mnl_LineWithScreen','005002',0,1,'Sys.Safety.Client.Chart.exe','Sys.Safety.Client.Chart','GraphicInIframe=false','9',1,0,'005-曲线显示-10模拟量多点同屏曲线.png','',0,0,1,'QueryMnl_LineWithScreen','RequestMnl_LineWithScreen','模拟量同屏曲线','1',NULL,NULL,NULL),(1506151132320060024,'005002006','模拟量多点同坐标曲线','Mnl_LineWithCoordinate','005002',0,1,'Sys.Safety.Client.Chart.exe','Sys.Safety.Client.Chart','GraphicInIframe=false','6',0,0,'005-曲线显示-11模拟量多点同坐标.png','',0,0,1,'QueryMnl_LineWithCoordinate','RequestMnl_LineWithCoordinate','模拟量同坐标曲线','1',NULL,NULL,NULL),(1506151132320060025,'006','状态图与柱状图显示',NULL,NULL,-1,1,NULL,NULL,NULL,'4',0,0,NULL,NULL,0,0,0,NULL,NULL,'状态图与柱状图显示','1',NULL,NULL,NULL),(1506151132320060026,'006001001','开关量状态图','Kgl_StateLine','006001',0,1,'Sys.Safety.Client.Chart.exe','Sys.Safety.Client.Chart','GraphicInIframe=false','1',1,0,'006-状态图与柱状图-01状态图.png','',0,0,1,'QueryKgl_StateLine','RequestKgl_StateLine','开关量状态图','1',NULL,NULL,NULL),(1506151132320060027,'006001002','开关量柱状图','Kgl_StateBar','006001',0,1,'Sys.Safety.Client.Chart.exe','Sys.Safety.Client.Chart','GraphicInIframe=false','2',1,0,'006-状态图与柱状图-02柱状图.png','',0,0,1,'QueryKgl_StateBar','RequestKgl_StateBar','开关量柱状图','1',NULL,NULL,NULL),(1506151132320060028,'006001003','开关量状态变化图','Kgl_StateChg','006001',0,1,'Sys.Safety.Client.Chart.exe','Sys.Safety.Client.Chart','GraphicInIframe=false','3',1,0,'006-状态图与柱状图-03状态变化时间分布（开关量）.png','',0,0,1,'QueryKgl_StateChg','RequestKgl_StateChg','开关量状态变化','1',NULL,NULL,NULL),(1506151132320060029,'005002008','开关量多点同屏','Kgl_StateLineWidthScreen','005002',0,1,'Sys.Safety.Client.Chart.exe','Sys.Safety.Client.Chart','GraphicInIframe=false','5',0,0,'005-曲线显示-14开关量多点同屏曲线.png','',0,0,1,'QueryKgl_StateLineWidthScreen','RequestKgl_StateLineWidthScreen','开关量同屏曲线','1',NULL,NULL,NULL),(1506151132320060030,'007','模拟图显示','',NULL,-1,1,'Sys.Safety.Client.Chart.exe','Sys.Safety.Client.Chart',NULL,'5',0,0,NULL,NULL,0,0,0,NULL,NULL,'模拟图显示','1',NULL,NULL,NULL),(1506151132320060032,'007001002','瓦斯抽采(放)','WebGisDisplay','007001',0,0,'Sys.Safety.Client.Graphic.exe','Sys.Safety.Client.Graphic','Url=http://192.168.1.254:8066/Gis/Index','2',0,0,'007-模拟图显示-02瓦斯抽采（放）.png','',0,0,1,'QueryGISPlatformCenter','RequestGISPlatformCenter2','瓦斯抽采(放)','1',NULL,'',NULL),(1506151132320060033,'007001003','系统自检','WebGisDisplay','007001',0,0,'Sys.Safety.Client.Graphic.exe','Sys.Safety.Client.Graphic','Url=http://192.168.1.254:8066/Gis/Index','3',0,0,'007-模拟图显示-03系统自检.png','',0,0,1,'QueryGISPlatformCenter','RequestGISPlatformCenter2','系统自检','1',NULL,'',NULL),(1506151132320060034,'001001001','系统参数（测点定义）','CFPointMrgFrame','001001',0,1,'Sys.Safety.Client.Define.exe','Sys.Safety.Client.Define','','1',0,0,'001-参数设置-01测点.png','',0,0,1,'ManagePoint','RequestPointMrg','系统参数','1',NULL,'ALT+A',NULL),(1506151132320060035,'001001002','模拟量（定义）','CFPointMrgFrame','001001',0,1,'Sys.Safety.Client.PointMrg.exe','Sys.Safety.Client.PointMrg','','2',0,0,'001-参数设置-02模拟量.png','',0,0,1,'ManagePoint','RequestPointMrg','模拟量','1',NULL,NULL,NULL),(1506151132320060036,'001001003','开关量（定义）','CFPointMrgFrame','001001',0,1,'Sys.Safety.Client.PointMrg.exe','Sys.Safety.Client.PointMrg','','3',0,0,'001-参数设置-03开关量.png','',0,0,1,'ManagePoint','RequestPointMrg','开关量','1',NULL,NULL,NULL),(1506151132320060037,'001001004','累计量（定义）','CFPointMrgFrame','001001',0,1,'Sys.Safety.Client.PointMrg.exe','Sys.Safety.Client.PointMrg','','4',0,0,'001-参数设置-04累计量.png','',0,0,1,'ManagePoint','RequestPointMrg','累计量','1',NULL,NULL,NULL),(1506151132320060038,'001001005','虚拟分站抽放（定义）','','001001',0,0,'','','','5',0,0,'001-参数设置-05分站抽放.png','',0,0,0,'','','虚拟分站','1',NULL,NULL,NULL),(1506151132320060039,'001001006','抽放及自动控制定义','','001001',0,0,'','','','6',0,0,'001-参数设置-06抽放及控制.png','',0,0,0,'','','抽放控制','1',NULL,NULL,NULL),(1506151132320060040,'001002007','抽放合并设置','','001002',0,0,'','','','7',0,0,'001-参数设置-07抽放合并.png','',0,0,0,'','','抽放合并','1',NULL,NULL,NULL),(1506151132320060041,'001002008','设备类型定义','CFPointMrgFrame','001002',0,1,'Sys.Safety.Client.PointMrg.exe','Sys.Safety.Client.PointMrg','','8',0,0,'001-参数设置-08设备类型.png','',0,0,1,'ManagePoint','RequestPointMrg','类型定义','1',NULL,NULL,NULL),(1506151132320060042,'001002009','安装位置定义','','001002',0,0,'','','','9',0,0,'001-参数设置-09安装位置.png','',0,0,0,'','','安装位置','1',NULL,NULL,NULL),(1506151132320060043,'001002010','处理措施定义','','001002',0,0,'','','','10',0,0,'001-参数设置-10处理措施.png','',0,0,0,'','','处理措施','1',NULL,NULL,NULL),(1506151132320060044,'001002011','网络设备管理','','001002',0,0,'','','','11',0,0,'001-参数设置-11网络设备.png','',0,0,0,'','','网络设备','1',NULL,NULL,NULL),(1506151132320060045,'001002012','人员区域管理','','001002',0,0,'','','','12',0,0,'001-参数设置-12人员区域.png','',0,0,0,'','','人员区域','1',NULL,NULL,NULL),(1506151132320060046,'001003013','日志配置','LogManage','001003',0,0,'Sys.CBF.Win.dll','Sys.CBF.Win.View.LogManage','','13',0,0,'001-参数设置-07日志配置.png','',0,0,1,'QueryLogManage','RequestLogManage','日志配置','1',NULL,NULL,NULL),(1506151132320060049,'002001001','列表（显示编排）','RealDatadisplaySetForm','002001',0,1,'Sys.Safety.Client.Real.dll','Sys.Safety.Client.Real',NULL,'1',0,0,'002-页面编辑-01实时显示区.png','',0,0,0,'QueryRealDatadisplaySetForm','RequestRealDatadisplaySetForm','列表（显示编排）','1',NULL,NULL,NULL),(1506151132320060051,'002002003','模拟图(编辑)','WebGisDisplay','002002',0,0,'Graphic\\Sys.Safety.Client.Graphic.exe','Sys.Safety.Client.Graphic','Url=http://192.168.1.254:8066/Gis/edit','3',0,0,'002-页面编辑-03模拟图(编辑).png','',0,0,1,'QueryGISPlatformCenter1','RequestGISPlatformCenter1','模拟图(显示编辑)','1',NULL,'',NULL),(1506151132320060052,'002002004','组态图形编辑','MainFrm','002002',0,0,'Sys.Safety.Client.VG.exe','Sys.Safety.Client.VG',NULL,'4',0,0,'002-页面编辑-04组态图形.png','',0,0,0,'QueryVG1','RequestVG1','组态编辑','1',NULL,NULL,NULL),(1506151132320060053,'003','控制',NULL,'',-1,1,NULL,NULL,NULL,'3',0,0,NULL,NULL,0,0,0,NULL,NULL,'控制','1',NULL,NULL,NULL),(1506151132320060054,'003001001','逻辑控制（交叉断电）','','003001',0,0,'','','','1',0,0,'003-控制-01逻辑控制.png','',0,0,0,'','','逻辑控制','1',NULL,NULL,NULL),(1506151132320060055,'003001002','操作（手动控制）','CFHandCtrl','003001',0,1,'Sys.Safety.Client.Control.exe','Sys.Safety.Client.Control','','2',0,0,'003-控制-02手动控制.png','',0,0,1,'HandControl','RequestHandCtrl','手动控制','1',NULL,NULL,NULL),(1506151132320060056,'003001012','下发时间同步命令','','003001',0,0,'','','','3',0,0,'003-控制-03时钟同步.png','',0,0,0,'','','时间同步','1',NULL,NULL,NULL),(1506151132320060057,'003002004','抽放装置下发自动控制','','003002',0,0,'','','','4',0,0,'003-控制-04下发自动控制.png','',0,0,0,'','','抽放自动控制','1',NULL,NULL,NULL),(1506151132320060058,'003002005','抽放装置下发手动控制','','003002',0,0,'','','','5',0,0,'003-控制-05下发手动控制.png','',0,0,0,'','','抽放手动控制','1',NULL,NULL,NULL),(1506151132320060059,'003002006','新抽放自动控制下发命令','','003002',0,0,'','','','6',0,0,'003-控制-06新自动下发.png','',0,0,0,'','','新抽放控制','1',NULL,NULL,NULL),(1506151132320060060,'003003007','断电设置查询','','003003',0,0,'','','','7',0,0,'003-控制-07断电设置.png','',0,0,0,'','','断电查询','1',NULL,NULL,NULL),(1506151132320060061,'003003008','瓦斯三分风电闭锁强制解锁','','003003',0,0,'','','','8',0,0,'003-控制-08强制解锁.png','',0,0,0,'','','三分闭锁','1',NULL,NULL,NULL),(1506151132320060062,'003003009','电力变送器一键清零','','003003',0,0,'','','','9',0,0,'003-控制-09一键清零.png','',0,0,0,'','','一键清零','1',NULL,NULL,NULL),(1506151132320060063,'003003010','多参数传感器标效','','003003',0,0,'','','','10',0,0,'003-控制-10传感器标校.png','',0,0,0,'','','设备标效','1',NULL,NULL,NULL),(1506151132320060064,'004','列表显示',NULL,NULL,-1,1,NULL,NULL,NULL,'4',0,0,NULL,NULL,0,0,0,NULL,NULL,'列表显示','1',NULL,NULL,NULL),(1506151132320060065,'004001','报警',NULL,'004',0,1,NULL,NULL,NULL,'1',0,0,NULL,NULL,0,0,0,NULL,NULL,'报警','1',NULL,NULL,NULL),(1506151132320060066,'004001001','模拟量','Showform','004001',0,1,'Sys.Safety.Client.Real.dll','Sys.Safety.Client.Real','MM=2','1',0,0,'004-列表显示-01报警模拟量.png','',0,2,0,'','RequestShowForm1','模拟量报警','1',NULL,NULL,NULL),(1506151132320060067,'004001002','开关量','Showform','004001',0,1,'Sys.Safety.Client.Real.dll','Sys.Safety.Client.Real','MM=3','2',0,0,'004-列表显示-02报警开关量.png','',0,2,0,'','RequestShowForm2','开关量报警','1',NULL,NULL,NULL),(1506151132320060068,'004002','断电控制',NULL,'004',0,1,NULL,NULL,NULL,'2',0,0,NULL,'',0,0,0,NULL,NULL,'断电控制','1',NULL,NULL,NULL),(1506151132320060069,'004002001','模拟量','Showform','004002',0,1,'Sys.Safety.Client.Real.dll','Sys.Safety.Client.Real','MM=2','1',0,0,'004-列表显示-03断电控制模拟量.png','',0,2,0,'','RequestShowForm3','模拟量断电控制','1',NULL,NULL,NULL),(1506151132320060070,'004002002','开关量','RealKglDDControl','004002',0,1,'Sys.Safety.Client.Display.dll','Sys.Safety.Client.Display','','2',0,0,'004-列表显示-04断电控制开关量.png','',0,0,2,'','RequestShowForm4','开关量断电控制','1',NULL,'',NULL),(1506151132320060071,'004003','馈电异常','','004',0,1,'','','','3',0,0,'','',0,0,0,'','','馈电异常','1',NULL,NULL,NULL),(1506151132320060072,'004003001','模拟量','Showform','004003',0,1,'Sys.Safety.Client.Real.dll','Sys.Safety.Client.Real','MM=4','1',0,0,'004-列表显示-05馈电异常模拟量.png','',0,2,0,'','RequestShowForm5','模拟量馈电异常','1',NULL,NULL,NULL),(1506151132320060073,'004003002','开关量','Showform','004003',0,1,'Sys.Safety.Client.Real.dll','Sys.Safety.Client.Real','MM=4','2',0,0,'004-列表显示-06馈电异常开关量.png','',0,2,0,'','RequestShowForm6','开关量馈电异常','1',NULL,NULL,NULL),(1506151132320060074,'004004','调用',NULL,'004',0,1,NULL,NULL,NULL,'4',0,0,NULL,NULL,0,0,0,NULL,NULL,'调用显示','1',NULL,NULL,NULL),(1506151132320060075,'004004001','模拟量','Showform','004004',0,1,'Sys.Safety.Client.Real.dll','Sys.Safety.Client.Real','MM=2','1',0,0,'004-列表显示-07调用模拟量.png','',0,2,0,'','RequestShowForm8','模拟量调用显示','1',NULL,NULL,NULL),(1506151132320060076,'004004002','开关量','Showform','004004',0,1,'Sys.Safety.Client.Real.dll','Sys.Safety.Client.Real','MM=3','2',0,0,'004-列表显示-08调用开关量.png','',0,2,0,'','RequestShowForm9','开关量调用显示','1',NULL,NULL,NULL),(1506151132320060077,'004004003','模拟量调用编辑','','004004',0,0,'','','','3',0,0,'004-列表显示-09编辑模拟量.png','',0,0,0,'','','模拟量编辑','1',NULL,NULL,NULL),(1506151132320060078,'004004004','开关量调用编辑','','004004',0,0,'','','','4',0,0,'004-列表显示-10编辑开关量.png','',0,0,0,'','','开关量编辑','1',NULL,NULL,NULL),(1506151132320060079,'004005005','设备故障','frmFaultInfo','004005',0,1,'Sys.Safety.Client.Real.dll','Sys.Safety.Client.Real',NULL,'5',0,0,'004-列表显示-11-设备故障.png','',0,0,0,'QueryfrmFaultInfo','RequestfrmFaultInfo','设备故障','1',NULL,NULL,NULL),(1506151132320060080,'004005006','开关量状态变动显示',NULL,'004005',0,1,'Sys.Safety.Client.Real.dll','Sys.Safety.Client.Real',NULL,'6',0,0,'004-列表显示-12-开关量状态.png','',0,0,0,'ShowForm7','RequestShowForm7','开关量变动','1',NULL,NULL,NULL),(1506151132320060081,'004005007','分站监测信息显示','FzShowForm','004005',0,0,'Sys.Safety.Client.Real.dll','Sys.Safety.Client.Real','','7',0,0,'004-列表显示-13-分站监测信息.png','',0,0,0,'FzShowForm','RequestFzShowForm','分站监测','1',NULL,NULL,NULL),(1506151132320060082,'004005008','系统巡检实时显示','','004005',0,0,'','','','8',0,0,'004-列表显示-12系统巡检.png','',0,0,0,'','','系统巡检','1',NULL,NULL,NULL),(1506151132320060083,'008','打印',NULL,NULL,-1,1,NULL,NULL,NULL,'8',0,0,NULL,NULL,0,0,0,NULL,NULL,'打印','1',NULL,NULL,NULL),(1506151132320060084,'009','查询',NULL,NULL,-1,1,NULL,NULL,NULL,'9',0,0,NULL,NULL,0,0,0,NULL,NULL,'查询','1',NULL,NULL,NULL),(1506151132320060085,'011','帮助','','',-1,1,'','','','15',0,0,'','',0,0,0,'','','帮助','1',NULL,NULL,NULL),(1506151132320060086,'007001001','通风系统','WebGisDisplay','007001',0,0,'Sys.Safety.Client.Graphic.exe','Sys.Safety.Client.Graphic','Url=http://192.168.1.254:8066/Gis/Index','1',0,0,'007-模拟图显示-01通风系统.png','',0,0,1,'QueryGISPlatformCenter','RequestGISPlatformCenter2','通风系统','1',NULL,'',NULL),(1506151132320060087,'004005009','实时主界面','WorkMainForm','004005',0,1,'Sys.Safety.Client.Real.dll','Sys.Safety.Client.Real','','',0,0,'004-列表显示-14实时显示.png','',0,1,0,'','RequestWorkMainForm','实时显示','1',NULL,NULL,NULL),(1506151132320060088,'005002007','模拟量开关量同屏曲线','MnlAndKgl_LineWithScreen','005002',0,1,'Sys.Safety.Client.Chart.exe','Sys.Safety.Client.Chart','GraphicInIframe=false','7',0,0,'005-曲线显示-12模开同屏.png','',0,0,1,'QueryMnlAndKgl_LineWithScreen','RequestMnlAndKgl_LineWithScreen','模开同屏曲线','1',NULL,NULL,NULL),(1506151132320060089,'001001','测点定义','','001',0,1,'','','','1',0,0,'','',0,0,0,'','','设备定义','1',NULL,NULL,NULL),(1506151132320060090,'001002','设备管理',NULL,'001',0,1,NULL,NULL,NULL,'2',0,0,NULL,NULL,0,0,0,NULL,NULL,'设备管理','1',NULL,NULL,NULL),(1506151132320060091,'001003','系统设置','','001',0,1,'','','','6',0,0,'','',0,0,0,'','','系统设置','1',NULL,NULL,NULL),(1506151132320060092,'002001','列表编辑',NULL,'002',0,1,NULL,NULL,NULL,'1',0,0,NULL,NULL,0,0,0,NULL,NULL,'列表','1',NULL,NULL,NULL),(1506151132320060093,'002002','模拟图(编辑)','','002',0,1,'','','','2',0,0,'','',0,0,0,'','','模拟图(编辑)','1',NULL,'',NULL),(1506151132320060094,'003001','控制',NULL,'003',0,1,NULL,NULL,NULL,'1',0,0,NULL,NULL,0,0,0,NULL,NULL,'基本控制','1',NULL,NULL,NULL),(1506151132320060095,'003002','抽放控制',NULL,'003',0,0,NULL,NULL,NULL,'2',0,0,'003-控制-04下发自动控制.png','',0,0,0,NULL,NULL,'抽放控制','1',NULL,NULL,NULL),(1506151132320060096,'003003','其它',NULL,'003',0,0,NULL,NULL,NULL,'3',0,0,'003-控制-07断电设置.png','',0,0,0,NULL,NULL,'其它','1',NULL,NULL,NULL),(1506151132320060097,'004005','其它显示',NULL,'004',0,1,NULL,NULL,NULL,'5',0,0,NULL,NULL,0,0,0,NULL,NULL,'其它显示','1',NULL,NULL,NULL),(1506151132320060098,'005001','报警断电馈电曲线',NULL,'005',0,1,NULL,NULL,NULL,'1',0,0,NULL,NULL,0,0,0,NULL,NULL,'模拟量曲线','1',NULL,NULL,NULL),(1506151132320060099,'005002','调用',NULL,'005',0,1,NULL,NULL,NULL,'2',1,0,NULL,NULL,0,0,0,NULL,NULL,'调用','1',NULL,NULL,NULL),(1506151132320060100,'006001','状态图与柱状图',NULL,'006',0,1,NULL,NULL,NULL,'1',1,0,NULL,NULL,0,0,0,NULL,NULL,'状态图与柱状图','1',NULL,NULL,NULL),(1506151132320060101,'007001','模拟图显示','','007',0,1,'','','','1',0,0,'','',0,0,0,'','','模拟图显示','1',NULL,'',NULL),(1506151132320060102,'008002','报警',NULL,'008',0,1,NULL,NULL,NULL,'1',0,0,NULL,NULL,0,0,0,NULL,NULL,'报警','1',NULL,NULL,NULL),(1506151132320060105,'009006006','开关量状态变动记录','frmList','009006',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=17','6',0,0,'009-查询-14开关量状态变化记录.png','',0,0,1,'KGLStateDayReport','RequestKGLStateRBReport','开关量状态变动','1',NULL,NULL,NULL),(1506151132320060106,'009006008','设备台账查询','frmList','009006',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=63','8',0,0,'009-查询-16设备台账查询.png','',0,0,0,'EquipmentStandbooksManage','RequestEquipmentAccount','设备台账查询','1',NULL,NULL,NULL),(1506151132320060107,'009006007','传感器标校','FrmBxTj','009006',0,0,'Sys.Safety.Client.Display.dll','Sys.Safety.Client.Display','','7',0,0,'009-查询-15传感器标校.png','',0,0,1,'SensorStandardManage','FrmBxTjx','传感器标校','1',NULL,'',NULL),(1506151132320060111,'009006002','模拟量统计值报表','frmList','009006',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=15','2',0,0,'009-查询-10模拟量统计值记录.png','',0,0,1,'MLLTJZReport','RequestMLLTJZReport','模拟量统计值报表','1',NULL,NULL,NULL),(1506151132320060120,'011001','帮助','','011',0,1,'','','','1',0,0,'','',0,0,0,'','','帮助','1',NULL,NULL,NULL),(1506151132320060121,'011001001','帮助-参数设置','SysHelp','011001',0,1,'Sys.Safety.ClientFramework.dll','Sys.Safety.ClientFramework.CBFCommon','KJ379X煤矿安全监控系统软件使用说明.chm::_8.htm','1',0,0,'010-帮助-01参数设置.png','',0,2,0,'','requestHelp1','参数设置','1',NULL,'',NULL),(1506151132320060122,'011001002','帮助-页面编辑','SysHelp','011001',0,1,'Sys.Safety.ClientFramework.dll','Sys.Safety.ClientFramework.CBFCommon','filePath=KJ379X煤矿安全监控系统软件使用说明.chm::_54.htm','2',0,0,'010-帮助-02页面编辑.png','',0,2,0,'','requestHelp2','页面编辑','1',NULL,'',NULL),(1506151132320060123,'011001003','帮助-控制','SysHelp','011001',0,1,'Sys.Safety.ClientFramework.dll','Sys.Safety.ClientFramework.CBFCommon','filePath=KJ379X煤矿安全监控系统软件使用说明.chm::_27.htm','3',0,0,'010-帮助-03控制.png','',0,2,0,'','requestHelp3','控制','1',NULL,'',NULL),(1506151132320060124,'011001004','帮助-列表显示','SysHelp','011001',0,1,'Sys.Safety.ClientFramework.dll','Sys.Safety.ClientFramework.CBFCommon','filePath=KJ379X煤矿安全监控系统软件使用说明.chm::_48.htm','4',0,0,'010-帮助-04列表显示.png','',0,2,0,'','requestHelp4','列表显示','1',NULL,'',NULL),(1506151132320060125,'011001005','帮助-曲线显示','SysHelp','011001',0,1,'Sys.Safety.ClientFramework.dll','Sys.Safety.ClientFramework.CBFCommon','filePath=KJ379X煤矿安全监控系统软件使用说明.chm::_69.htm','5',0,0,'010-帮助-05曲线显示.png','',0,2,0,'','requestHelp5','曲线显示','1',NULL,'',NULL),(1506151132320060126,'001003015','报警配置','frmAlarmCfg','001003',0,1,'Sys.Safety.Client.Alarm.dll','Sys.Safety.Client.Alarm','','15',0,0,'001-参数设置-09报警配置.png','',0,0,1,'AlarmSet','RequestAlarmCfg','报警配置','1',NULL,NULL,NULL),(1506151132320060127,'001003016','通用配置','frmSetMgr','001003',0,1,'Sys.Safety.Client.Setting.exe','Sys.Safety.Client.Setting','','16',0,0,'001-参数设置-14系统设置.png','',0,0,1,'GeneralSet','RequestSetMgr','通用配置','1',NULL,'',NULL),(1506151132320060128,'003004002','用户注销','frmLogOn','003004',0,1,'Sys.CBF.Win.dll','Sys.CBF.Win.View.LogOn',NULL,'8',0,0,'用户注销.png','',0,0,0,'QueryUserLogOut','RequestUserLogOut','用户注销','1',NULL,NULL,NULL),(1506151132320060129,'003004','用户登录',NULL,'003',0,1,NULL,NULL,NULL,'7',0,0,NULL,NULL,0,0,0,NULL,NULL,'用户登录','1',NULL,NULL,NULL),(1506151132320060132,'003001006','升为主控','MasterManagement','003001',0,1,'Sys.CBF.Common.dll','Sys.CBF.Common.Util','','1',0,0,'003-控制-06升为主机.png','',0,2,0,'QueryUpdateMaster','RequestUpdateMaster','升为主控','1',NULL,NULL,NULL),(1506151132320060133,'003001007','降为热备','MasterManagement','003001',0,1,'Sys.CBF.Common.dll','Sys.CBF.Common.Util','','2',0,0,'003-控制-07将为备机.png','',0,2,0,'QueryDelMaster','RequestDelMaster','降为热备','1',NULL,NULL,NULL),(1506151132320060190,'001001007','逻辑分析编辑','WinFrm_AnysList','001001',0,0,'Sys.Safety.Client.LogicAnys.exe','Sys.Safety.Client.LogicAnys','','1',0,0,'010-逻辑分析-修改逻辑定义.png','',0,0,1,'QueryLogicanays','RequestLogicanays','逻辑编辑','1',NULL,NULL,NULL),(1506151132320060196,'008007017','瓦斯抽放小时报表','frmList','008007',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=37','17',1,0,'瓦斯抽放小时报表.png','',0,0,1,'GasHoursReport\n','RequestCFHoutReport','瓦斯抽放小时','1',NULL,NULL,NULL),(1506151132320060198,'004005010','逻辑分析实时','WinFrm_Real','004005',0,0,'Sys.Safety.Client.LogicAnys.exe','Sys.Safety.Client.LogicAnys','','2',0,0,'010-逻辑分析-实时监测.png','',0,0,1,'QueryLogicanayReal','RequestLogicanayReal','逻辑分析实时','1',NULL,NULL,NULL),(1506151132320060222,'002003','曲线(编辑)',NULL,'002',0,1,NULL,NULL,NULL,'3',0,0,NULL,NULL,0,0,0,NULL,NULL,'曲线','1',NULL,NULL,NULL),(1506151132320060223,'003001004','维护管理','DyxForm','003001',0,1,'Sys.Safety.Client.Control.exe','Sys.Safety.Client.Control','','2',0,0,'003-控制-03电源箱管理.png','',0,0,1,'PowerCaseManagement\n','DyxFormx','维护管理','1',NULL,NULL,NULL),(1506151132320060224,'003001005','远程升级管理','','003001',0,0,'','','','3',0,0,'003-控制-04远程升级管理.png','',0,0,0,'','','升级管理','1',NULL,NULL,NULL),(1506151132320060296,'008007018','瓦斯抽放日报表','frmList','008007',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=38','18',1,0,'瓦斯抽放日报表.png','',0,0,1,'GasDaysReport\n','RequestCFDayReport','瓦斯抽放日报','1',NULL,NULL,NULL),(1506151132320060322,'005001001','报警','Mnl_BjLine','005001',0,1,'Sys.Safety.Client.Chart.exe','Sys.Safety.Client.Chart','','1',1,0,'005-曲线显示-01报警.png','',0,0,1,'AnalogAlarm\nChart','RequestMnl_BjLine','模拟量报警','1',NULL,NULL,NULL),(1506151132320060323,'005001002','断电控制','Mnl_DdLine','005001',0,1,'Sys.Safety.Client.Chart.exe','Sys.Safety.Client.Chart','','1',1,0,'005-曲线显示-02断点控制.png','',0,0,1,'AnalogPower\nOffChart','RequestMnl_DdLine','模拟量断电控制','1',NULL,NULL,NULL),(1506151132320060324,'005001003','馈电异常','MnlAndKzl_LineWithScreen','005001',0,1,'Sys.Safety.Client.Chart.exe','Sys.Safety.Client.Chart','','1',1,0,'005-曲线显示-03馈电异常.png','',0,0,1,'AnalogSupplyAnomalies\nChart','RequestMnlAndKzl_LineWithScreen','模拟量馈电异常','1',NULL,NULL,NULL),(1506151132320060325,'005003','实时曲线','','005',0,1,'','','','2',1,0,'','',0,0,0,'','','实时曲线','1',NULL,NULL,NULL),(1506151132320060326,'005003001','实时曲线','Mnl_SSZChart','005003',0,1,'Sys.Safety.Client.Chart.exe','Sys.Safety.Client.Chart','','3',0,0,'005-曲线显示-15实时曲线.png','',0,0,1,'QueryMnl_SSZChart','RequestMnl_SSZChart','实时曲线','1',NULL,NULL,NULL),(1506151132320060327,'008003','断电控制',NULL,'008',0,1,'','','','2',0,0,'','',0,0,0,'','','断电控制','1',NULL,NULL,NULL),(1506151132320060328,'008004','馈电异常','','008',0,1,'','','','3',0,0,'','',0,0,0,'','','馈电异常','1',NULL,NULL,NULL),(1506151132320060329,'008005','调用','','008',0,1,'','','','4',0,0,'','',0,0,0,'','','调用','1',NULL,NULL,NULL),(1506151132320060330,'008006','设备故障',NULL,'008',0,1,'','','','6',0,0,'','',0,0,0,'','','设备故障','1',NULL,NULL,NULL),(1506151132320060331,'008007','其它',NULL,'008',0,1,'','','','7',0,0,'','',0,0,0,'','','其它','1',NULL,NULL,NULL),(1506151132320060332,'008001','编辑(报表)','','008',0,1,'','','','1',0,0,'','',0,0,0,'','','编辑','1',NULL,NULL,NULL),(1506151132320060333,'008003004','开关量报警及断电日(班)报表','frmList','008003',0,1,'Sys.Safety.Reports.dll','Sys.Safety.Reports','ListID=68','8',0,0,'008-打印-05断电控制开关量.png','',0,0,1,'KGLBJDDDayReport','requestKglDD','开关量断电','1',NULL,'',NULL),(1506151132320060334,'008005001','模拟量','frmList','008005',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=9','1',0,0,'008-打印-08调用模拟量.png','',0,0,1,'MLLDayReport','Requestddd','模拟量调用','1',NULL,NULL,NULL),(1506151132320060335,'008005002','开关量','frmList','008005',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=17','1',0,0,'008-打印-09调用开关量.png','',0,0,1,'KGLStateDayReport','RequestKGLStateRBReport','开关量调用','1',NULL,NULL,NULL),(1506151132320060339,'009005002','开关量','','009005',0,1,'','','','1',0,0,'009-查询-08调用开关量.png','',0,0,0,'','RequestKGLStateRBReport','开关量调用','1',NULL,NULL,NULL),(1506151132320060340,'009005001','模拟量','','009005',0,1,'','','','1',0,0,'009-查询-07调用模拟量.png','',0,0,0,'','Requestddd','模拟量调用','1',NULL,NULL,NULL),(1506151132320060341,'009005','调用','','009',0,1,'','','','4',0,0,'','',0,0,0,'','','调用','1',NULL,NULL,NULL),(1506151132320060342,'009004007','开关量馈电异常日(班)报表','frmList','009004',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=34','7',0,0,'009-查询-06馈电异常开关量.png','',0,0,1,'KGLKDDayReport','RequestKGLKDDDayReporta','开关量馈电异常','1',NULL,NULL,NULL),(1506151132320060343,'009004004','模拟量馈电异常日(班)报表','frmList','009004',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=14','4',0,0,'009-查询-05馈电异常模拟量.png','',0,0,1,'MLLKDDayReport','RequestMLLKDReport','模拟量馈电异常','1',NULL,NULL,NULL),(1506151132320060344,'009004','馈电异常','','009',0,1,'','','','3',0,0,'','',0,0,0,'','','馈电异常','1',NULL,NULL,NULL),(1506151132320060345,'009003004','开关量报警及断电日(班)报表','frmList','009003',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=19','8',0,0,'009-查询-04断电控制开关量.png','',0,0,1,'KGLBJDDDayReport','RequestKGLBJDDDayReport','开关量断电','1',NULL,NULL,NULL),(1506151132320060346,'009003003','模拟量断电日(班)报表','frmList','009003',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=13','3',0,0,'009-查询-03断电控制模拟量.png','',0,0,1,'MLLDDDayReport','RequestMLLDDReport','模拟量断电','1',NULL,NULL,NULL),(1506151132320060347,'009003','断电控制','','009',0,1,'','','','2',0,0,'','',0,0,0,'','','断电控制','1',NULL,NULL,NULL),(1506151132320060348,'009002002','开关量报警及断电日(班)报表','frmList','009002',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=19','8',0,0,'009-查询-02报警开关量.png','',0,0,1,'KGLBJDDDayReport','RequestKGLBJDDDayReport','开关量报警','1',NULL,NULL,NULL),(1506151132320060349,'009002001','模拟量报警日(班)报表','frmList','009002',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=10','2',0,0,'009-查询-01报警模拟量.png','',0,0,1,'MLLBJDayReport','RequestMLLBJReport','模拟量报警','1',NULL,NULL,NULL),(1506151132320060350,'009002','报警','','009',0,1,'','','','1',0,0,'','',0,0,0,'','','报警','1',NULL,NULL,NULL),(1506151132320060351,'009006','其它','','009',0,1,'','','','6',0,0,'','',0,0,0,'','','其它','1',NULL,NULL,NULL),(1506151132320060352,'009006001','监控设备故障日(班)报表','frmList','009006',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=21','1',0,0,'009-查询-09设备故障.png','',0,0,1,'SBGZDayReport','RequestJKSBGZDayReport','设备故障日(班)报表','1',NULL,NULL,NULL),(1506151132320060353,'009006003','模拟量密采记录查询','frmList','009006',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=28','3',0,0,'009-查询-11模拟量密采记录.png','',0,0,1,'MCRunLogReport','RequestMCRungLogReport','模拟量密采记录','1',NULL,NULL,NULL),(1506151132320060354,'009006004','设备运行日志查询','frmList','009006',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=27','4',0,0,'009-查询-12设备运行记录.png','',0,0,1,'SBRunLogReport','Requestsbrunlogreport','设备运行日志','1',NULL,NULL,NULL),(1506151132320060355,'009006005','系统操作日志','frmList','009006',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=29','5',0,0,'009-查询-17操作日志.png','',0,0,1,'OperatorLogReport','RequestOperatorList','系统操作日志','1',NULL,NULL,NULL),(1506151132320060396,'008007019','瓦斯抽放月报表','frmList','008007',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=39','19',1,0,'瓦斯抽放月报表.png','',0,0,1,'GasMonthsReport\n','RequestCFMonthReport','瓦斯抽放月报','1',NULL,NULL,NULL),(1506151132320060496,'008007020','瓦斯抽放年报表','frmList','008007',0,1,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=40','20',1,0,'瓦斯抽放年报表.png','',0,0,1,'GasYearsReport\n','RequestCFYearReport','瓦斯抽放年报','1',NULL,NULL,NULL),(1506151132320060726,'011001006','帮助-状态图','SysHelp','011001',0,1,'Sys.Safety.ClientFramework.dll','Sys.Safety.ClientFramework.CBFCommon','filePath=KJ379X煤矿安全监控系统软件使用说明.chm::_76.htm','6',0,0,'010-帮助-06柱状图与柱状图显示.png','',0,2,0,'','requestHelp6','状态图','1',NULL,'',NULL),(1506151132320060727,'011001007','模拟图显示','','011001',0,0,'','','','7',0,0,'010-帮助-07模拟图.png','',0,0,0,'','','模拟图显示','1',NULL,'',NULL),(1506151132320060728,'011001008','帮助-打印','SysHelp','011001',0,1,'Sys.Safety.ClientFramework.dll','Sys.Safety.ClientFramework.CBFCommon','filePath=KJ379X煤矿安全监控系统软件使用说明.chm::_83.htm','8',0,0,'010-帮助-08打印.png','',0,2,0,'','requestHelp7','打印','1',NULL,'',NULL),(1506151132320060729,'011001009','帮助-查询','SysHelp','011001',0,1,'Sys.Safety.ClientFramework.dll','Sys.Safety.ClientFramework.CBFCommon','filePath=KJ379X煤矿安全监控系统软件使用说明.chm::_83.htm','9',0,0,'010-帮助-09查询.png','',0,2,0,'','requestHelp7','查询','1',NULL,'',NULL),(1506151132321160085,'010','大数据分析','','',-1,1,'','','','15',0,0,'','',0,0,0,'','','大数据分析','1',NULL,NULL,NULL),(4612042068239849981,'010020001','瓦斯含量分析配置','GasContentAnalyzeConfigList','010020',0,0,'Sys.Safety.Client.Linkage.dll','Sys.Safety.Client.Linkage.Views.GasContentAnalyze','','1',0,0,'001-定义-瓦斯含量分析.png','',0,0,1,'QueryLogManage','RequestGasContent','分析配置','1',NULL,NULL,NULL),(4616436474757875908,'001017001','部门管理','frmDeptList','001017',0,0,'Sys.KJ237.Client.Main.dll','Sys.KJ237.Client.Main.Dept','','1',0,0,'010-帮助-02页面编辑.png','',0,0,1,'','RequestPersonDeptList','部门管理','1',NULL,NULL,NULL),(4628014905688411752,'010016004','区域断电','SetRegionOutageManage','010016',0,1,'Sys.Safety.Client.BigDataAnalysis.exe','Sys.Safety.Client.BigDataAnalysis','','4',0,0,'001016-大数据分析-区域断电管理.png','',0,0,1,'BigDataPowerOffManage','RequestBigDataAnalysisRegionOutageManage','区域断电','1',NULL,NULL,NULL),(4655496983043210668,'011001011','应急联动','','011001',0,0,'','','','11',0,0,'001016-大数据分析-查看应急联动.png','',0,0,0,'','','应急联动','1','','',''),(4696390957136883004,'008007022','模拟量多天平均值','frmList','008007',0,0,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=51','22',0,0,'008-打印-日报.png','',0,0,0,'','RequestListMnlDaysAvg','模拟量平均值','1',NULL,NULL,NULL),(4716087184089000931,'005004001','大数据分析曲线','CurvilinearQuery','005004',0,1,'Sys.Safety.Client.BigDataAnalysis.exe','Sys.Safety.Client.BigDataAnalysis','','1',0,0,'001016-大数据分析-大数据分析曲线.png','',0,0,1,'BigDataChart','RequestBigDataAnalysisCurvilinear','大数据曲线','1',NULL,NULL,NULL),(4725833451247449661,'009006010','系统报警处理','frmAlarmProcess','009006',0,1,'Sys.Safety.Client.Alarm.dll','Sys.Safety.Client.Alarm','','18',0,0,'009-查询-01系统报警处理.png','',0,0,1,'AlarmProcessing\nManage','RequestAlarmProcess','系统报警处理','1',NULL,NULL,NULL),(4736777443604348553,'009008','人员定位','','009',0,0,'','','','8',0,0,'','',0,0,0,'','','人员定位','1',NULL,NULL,NULL),(4749418556688507556,'009007','应急联动','','009',0,0,'','','','7',0,0,'','',0,0,0,'','','应急联动','1',NULL,NULL,NULL),(4818145487706669376,'003006','人员呼叫管理','','003',0,0,'','','','6',0,0,'','',0,0,0,'','','人员呼叫','1',NULL,NULL,NULL),(4854464205270157617,'001001009','添加标校标记','','001001',0,0,'','','','9',1,0,'003-控制-10传感器标校.png','',0,0,0,'','AddCalibrationMarkRequest','标校标记','1',NULL,NULL,NULL),(4856166841917266517,'001003019','倍数报警配置','MultipleSetting','001003',0,0,'Sys.Safety.Client.Alarm.dll','Sys.Safety.Client.Alarm.MultipleSetting','','19',0,0,'001-参数设置-09报警配置.png','',0,0,1,'Multiplesetting','MultipleSetting','倍数报警','1',NULL,NULL,NULL),(4893676844356071373,'005002010','模开控同屏曲线','MnlKglKzl_LineWithScreen','005002',0,1,'Sys.Safety.Client.Chart.exe','Sys.Safety.Client.Chart','','10',0,0,'005-曲线显示-12模开同屏.png','',0,0,2,'RightMnlKglKzlChart','RequestMnlKglKzlChart','模开控同屏曲线','1',NULL,NULL,NULL),(4894982258742753229,'005002009','模拟量小时曲线','Mnl_DayZdzLine','005002',0,1,'Sys.Safety.Client.Chart.exe','Sys.Safety.Client.Chart','','4',0,0,'005-曲线显示-08模拟量小时曲线.png','',0,0,1,'QueryMnl_DayZdzLine','RequestMnl_DayZdzLine','模拟量小时曲线','1',NULL,NULL,NULL),(4933405903544524926,'001017002','人员档案管理','frmPersonList','001017',0,0,'Sys.KJ237.Client.Main.dll','Sys.KJ237.Client.Main.PersonInfo','','2',0,0,'001-参数设置-10用户管理.png','',0,0,1,'','RequestPersonList','人员档案','1',NULL,NULL,NULL),(4953743005213402976,'009007001','应急联动历史记录报表','frmList','009007',0,0,'Sys.Safety.Reports.dll','Sys.Safety.Reports','ListID=56','1',0,0,'009-查询-应急联动历史记录.png','',0,0,1,'','RequestLinkageHistory','联动历史记录','1',NULL,NULL,NULL),(4961372113242921549,'004006','人员显示','','004',0,0,'','','','6',0,0,'','',0,0,0,'','','人员显示','1',NULL,NULL,NULL),(4977249509979277345,'002003001','曲线设置','ChartSetting','002003',0,1,'Sys.Safety.Client.Chart.exe','Sys.Safety.Client.Chart','','1',0,0,'002-页面编辑-02曲线(样式编辑).png','',0,0,1,'ChartColor','RequestChartColor','曲线(显示编辑)','1',NULL,NULL,NULL),(4979630883552384567,'007001006','监控模拟图显示','','007001',0,1,'GisVector\\GISShow.exe','','','6',0,0,'006-状态图与柱状图-03状态变化时间分布（开关量）.png','',0,0,0,'','requestgisedit12','模拟图显示','1',NULL,'',NULL),(5042873704224264288,'001018','应急联动配置','','001',0,0,'','','','4',0,0,'','',0,0,0,'','','应急联动','1',NULL,NULL,NULL),(5091783673904104878,'009006013','放电记录查询','frmList','009006',0,1,'Sys.Safety.Reports.dll','Sys.Safety.Reports','ListID=67','13',0,0,'005-曲线显示-03馈电异常.png','',0,0,0,'','RequestPowerboxChargeHistory','放电记录查询','1',NULL,'',NULL),(5098633575014345277,'004006001','人员实时显示','PersonRealForm','004006',0,0,'Sys.Safety.Client.Real.dll','Sys.Safety.Client.Real','','1',0,0,'001-参数设置-10用户管理.png','',0,0,1,'','PersonRealForm','人员实时','1',NULL,NULL,NULL),(5099163196381059194,'003006001','人员呼叫','PersonCallManage','003006',0,0,'Sys.Safety.Client.Control.exe','Sys.Safety.Client.Control.PersonInfo','','1',0,0,'报警联动设置.png','',0,0,1,'','PersonCallManage','人员呼叫','1',NULL,NULL,NULL),(5104725120694345666,'004005011','软件自诊断','frmAutoCheck','004005',0,1,'Sys.Safety.Client.SetMgr.dll','Sys.Safety.Client.SetMgr','','11',0,0,'软件自诊断.png','',0,0,1,'','RequestDiagnosis\n','自诊断','1',NULL,NULL,NULL),(5118781422303237127,'001018001','联动配置','LinkageQuery','001018',0,0,'Sys.Safety.Client.Linkage.dll','Sys.Safety.Client.Linkage.Views','','1',0,0,'010-逻辑分析-修改逻辑定义.png','',0,0,1,'','LinkageQuery','联动配置','1',NULL,NULL,NULL),(5123091469356861938,'008007021','模拟量倍数报警','frmList','008007',0,0,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=48','21',0,0,'008-打印-02报警模拟量.png','',0,0,1,'MnlBsBjQuery','MnlBsBjRequest','倍数报警','1',NULL,NULL,NULL),(5152704128306528948,'001015007','快捷菜单','frmUserMenu','001015',0,1,'Sys.CBF.Win.dll','Sys.CBF.Win.View.ShortCutMenu','','7',0,0,'001-参数设置-21用户菜单.png','',1,0,1,'','RequestUserMenu','快捷菜单','1',NULL,NULL,NULL),(5162689771421700803,'011001010','大数据分析','','011001',0,0,'','','','10',0,0,'001016-大数据分析-模型管理.png','',0,0,0,'','','大数据分析','1','','',''),(5218580167948538722,'009008001','呼叫历史记录报表','frmList','009008',0,0,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=58','1',0,0,'005-曲线-06模拟量密采曲线.png','',0,0,1,'','RequestPersonCallHistory','呼叫历史','1',NULL,NULL,NULL),(5222663038013503139,'001017','人员管理','','001',0,0,'','','','17',0,0,'','',0,0,0,'','','人员管理','1',NULL,NULL,NULL),(5240477322335003248,'001019','视频管理','frmVideoList','001',0,0,'Sys.Video.Client.Main.dll','Sys.Video.Client.Main','','19',0,0,'','',0,0,1,'','','视频管理','1',NULL,NULL,NULL),(5241016469071746611,'003001011','主备机切换','','003001',0,1,'','','','11',0,0,'002-控制辅助-08主备切换.png','',0,0,0,'','RequestStopServer','主备切换','1',NULL,NULL,NULL),(5273930802971426539,'004005012','大数据分析实时列表','AnalysisResultsInRealtime','004005',0,1,'Sys.Safety.Client.BigDataAnalysis.exe','Sys.Safety.Client.BigDataAnalysis','','12',0,0,'001016-大数据分析-大数据分析实时列表.png','',0,0,1,'BigDataRealDisplay','RequestBigDataAnalysisRealtime','大数据实时','1',NULL,NULL,NULL),(5335118180916327910,'010020','瓦斯含量','','010',0,0,'','','','5',0,0,'','',0,0,0,'','','瓦斯含量','1',NULL,NULL,NULL),(5364030363272337066,'010016002','应用模型','LargedataAnalysisManage','010016',0,1,'Sys.Safety.Client.BigDataAnalysis.exe','Sys.Safety.Client.BigDataAnalysis','','2',0,0,'001016-大数据分析-模型管理.png','',0,0,1,'BigDataModelManage','RequestBigDataAnalysisModelManage','应用模型','1',NULL,NULL,NULL),(5392066247588515115,'010016003','报警推送','SetAlarmNotificationPersonnelManage','010016',0,1,'Sys.Safety.Client.BigDataAnalysis.exe','Sys.Safety.Client.BigDataAnalysis','','3',0,0,'001016-大数据分析-报警推送管理.png','',0,0,1,'BigDataAlarmManage','RequestBigDataAnalysisAlarmManage','报警推送','1',NULL,NULL,NULL),(5411755680549098180,'010016','大数据分析管理','','010',0,1,'','','','3',0,0,'','',0,0,0,'','','大数据分析','1',NULL,NULL,NULL),(5426982662585031332,'007001004','查看应急联动','SetEmergencyLinkageList','007001',0,0,'Sys.Safety.Client.DataAnalysis.exe','Sys.Safety.Client.DataAnalysis','','4',0,0,'001016-大数据分析-查看应急联动.png','',0,0,1,'BigDataEmergencyLinkageDisplay','RequestBigDataAnalysisViewEmergencyLinkage','联动展示','1',NULL,NULL,NULL),(5436142373417027467,'003001010','网络模块时间同步','','003001',0,1,'','','','10',0,0,'003-控制-10时钟同步.png','',0,0,0,'RightSetNetworkModuleSyncTime','RequestSetNetworkModuleSyncTime','时间同步','1',NULL,NULL,NULL),(5443335725267875610,'003001003','强制解控','SolutionControl','003001',0,1,'Sys.Safety.Client.Control.exe','Sys.Safety.Client.Control','','12',0,0,'003-控制-02手动控制.png','',0,0,1,'HandControl','SolutionControl','强制解控','1',NULL,NULL,NULL),(5445447576167623986,'001001010','地点类型管理','Frm_AddressTypeManage','001001',0,1,'Sys.Safety.Client.Define.exe','Sys.Safety.Client.Define','','10',0,0,'001-参数设置-09安装位置.png','',0,0,1,'','requestAddressTypeMag','地点类型管理','1',NULL,NULL,NULL),(5450978044826331955,'003005001','快捷菜单','frmShortCutMenu','003005',0,1,'Sys.Safety.ClientFramework.dll','Sys.Safety.ClientFramework.View.ShortCutMenu','','1',0,0,'003-控制-11快捷菜单.png','',1,0,2,'','RequestShortCutMenu','快捷菜单','1',NULL,NULL,NULL),(5451880132151544070,'001019001','视频定义','frmVideoList','001019',0,0,'Sys.Video.Client.Main.dll','Sys.Video.Client.Main','','1',0,0,'报警联动设置.png','',0,0,1,'','VideoRequest','视频定义','1',NULL,NULL,NULL),(5454453984342823509,'009008002','人员定位设备故障记录','frmList','009008',0,0,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=59','2',0,0,'005-曲线显示-01报警.png','',0,0,1,'','RequestPersonEquipmentFault','设备故障','1',NULL,NULL,NULL),(5470288168667084240,'009008004','人员定位历史轨迹表','frmList','009008',0,0,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=61','4',0,0,'005-曲线显示-03馈电异常.png','',0,0,1,'','RequestPersonTraceHistory','历史轨迹','1',NULL,NULL,NULL),(5472016296028238429,'003005','快捷功能','frmShortCutMenu','003',0,1,'Sys.CBF.Win.dll','Sys.CBF.Win.View.ShortCutMenu','','5',0,0,'003-控制-11快捷菜单.png','',1,0,2,'','RequestShortCutMenu','快捷功能','1',NULL,NULL,NULL),(5481769062145993331,'010016005','应急联动管理','SetEmergencyLinkage','010016',0,0,'Sys.Safety.Client.BigDataAnalysis.exe','Sys.Safety.Client.BigDataAnalysis','','5',0,0,'001016-大数据分析-应急联动管理.png','',0,0,1,'BigDataEmergencyLinkage\nManage','RequestBigDataAnalysismergencyLinkageManage','应急联动管理','1',NULL,NULL,NULL),(5486681422344979335,'010016001','分析模板','AnalysisTemplateManage','010016',0,1,'Sys.Safety.Client.BigDataAnalysis.exe','Sys.Safety.Client.BigDataAnalysis','','1',0,0,'001016-大数据分析-模板管理.png','',0,0,1,'BigDataTemplateManage','RequestBigDataAnalysisForm','分析模板','1',NULL,NULL,NULL),(5536464430167407034,'001001008','区域管理','Frm_CheckArea','001001',0,1,'Sys.Safety.Client.PointMrg.exe','Sys.Safety.Client.PointMrg.Area','','8',0,0,'001-参数设置-12人员区域.png','',0,0,2,'AreaManage','AreaManageRequest','区域管理','1',NULL,NULL,NULL),(5575869822524176383,'004005014','未标校传感器查看','SensorCalibration','004005',0,1,'Sys.Safety.Client.Alarm.dll','Sys.Safety.Client.Alarm','','14',0,0,'010-逻辑分析-实时监测.png','',0,0,1,'','RequestBxDis','未标校传感器查看','1',NULL,'',NULL),(5600643936285260260,'005004','其它','','005',0,1,'','','','4',1,0,'','',0,0,0,'','','其它','1',NULL,NULL,NULL),(5620827262005680337,'009008003','人员定位设备运行记录','frmList','009008',0,0,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=60','3',0,0,'005-曲线显示-02断点控制.png','',0,0,1,'','RequestPersonEquipmentOperating','设备运行','1',NULL,NULL,NULL),(5624820576837040137,'008007023','甲烷标校记录报表','frmList','008007',0,0,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=52','23',0,0,'008-打印-日报.png','',0,0,1,'','RequestListMnlbx','甲烷标校记录','1',NULL,NULL,NULL),(5651966731367614733,'004005013','断电关系查询','DDGXForm','004005',0,1,'Sys.Safety.Client.Real.dll','Sys.Safety.Client.Real','','17',0,0,'004-列表显示-15断电关系查询.png','',0,0,1,'','DDGXRequest','断电关系','1',NULL,NULL,NULL),(5674428719130370223,'007001005','监控模拟图编辑','','002002',0,1,'GisVector\\GISEditor.exe','','','5',0,0,'006-状态图与柱状图-03状态变化时间分布（开关量）.png','',0,0,0,'','requestgisedit11','模拟图编辑','1',NULL,'',NULL),(5702481450452891104,'009006011','分站放电情况','frmList','009006',0,0,'Sys.Safety.Reports.dll','Sys.Safety.Reports','ListID=62','11',0,0,'005-曲线显示-03馈电异常.png','',0,0,1,'','RequestSubstationDischarge','分站放电情况','1',NULL,'',NULL),(5726202646045518261,'009006012','网络模块运行记录','frmList','009006',0,0,'Sys.CBF.ListReport.dll','Sys.CBF.ListReport','ListID=41','12',0,0,'001-参数设置-11网络设备.png','',0,0,1,'','RequestNetworkModuleLog','网络模块记录','1',NULL,NULL,NULL);
/*!40000 ALTER TABLE `bft_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bft_metadata`
--

DROP TABLE IF EXISTS `bft_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bft_metadata` (
  `ID` int(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `strName` varchar(50) NOT NULL COMMENT '元数据名称',
  `strTableName` varchar(50) NOT NULL COMMENT '表名',
  `strBusinessModule` varchar(50) NOT NULL COMMENT '系统模块(如JC,XS,KC)',
  `SourceMetaDataID` int(20) DEFAULT '0' COMMENT '源元数据ID',
  `strSrcType` varchar(50) DEFAULT NULL COMMENT '来源类型(U数据表，V视图)',
  `TypeID` int(20) DEFAULT '0' COMMENT '类型ID(单据类型ID或者枚举类型ID)',
  `strFilter` varchar(500) DEFAULT NULL COMMENT '过滤条件',
  `strDesc` varchar(100) DEFAULT NULL COMMENT '描述',
  `strKeyFieldPropName` varchar(50) DEFAULT NULL COMMENT '关键字段属性名(暂时未用)',
  `strLastUpdateTime` char(19) DEFAULT NULL,
  `blnCache` tinyint(1) DEFAULT '0' COMMENT '缓存',
  `blnDay` tinyint(1) DEFAULT '0',
  `strDayType` varchar(255) DEFAULT NULL,
  `strDayTableName` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bft_metadata`
--

LOCK TABLES `bft_metadata` WRITE;
/*!40000 ALTER TABLE `bft_metadata` DISABLE KEYS */;
INSERT INTO `bft_metadata` VALUES (1,'用户表','BFT_User','',0,'U',0,'','','','',0,0,'',''),(2,'角色表','BFT_Role','',0,'U',0,'','','','',0,0,'',''),(3,'权限表','BFT_Right','',0,'U',0,'','','','',0,0,'',''),(4,'菜单表','BFT_Menu','',0,'U',0,'','','','',0,0,'',''),(5,'运行日志','BFT_RunLog','',0,'U',0,'','','','2015-10-10 17:40:41',0,0,'',''),(6,'请求库','BFT_request','',0,'U',0,'','','','2015-07-02 13:35:41',0,0,NULL,NULL),(8,'安装位置','KJ_DeviceAddress','',0,'U',0,'','','','2015-05-13 13:54:30',0,0,'',''),(9,'测点','KJ_DeviceDefInfo','',0,'U',0,'','','','2015-05-13 13:54:51',0,0,'',''),(10,'设备类型','KJ_DeviceType','',0,'U',0,'','','','2015-05-13 13:55:17',0,0,'',''),(26,'模拟量日班报表','ViewMLLDayReport','',0,'V',0,'','','','2015-06-18 11:16:40',0,1,'yyyymm','jc_hourmonth:KJ_Hour;JC_BMonth:KJ_DataAlarm;jc_bmonthkd:KJ_FeedInfo'),(27,'开关量状态变动明细月表','ViewJC_KGStateMonth','',0,'V',0,'','','','',0,1,'yyyymm','JC_BMonth:KJ_DataAlarm;'),(28,'开关量状态变动明细月表(不去除异常时间)','ViewJC_KGStateMonthAB','',0,'V',0,'','','','',0,1,'yyyymmdd','JC_BMonth:KJ_DataAlarm;JC_BMonthKGB:KJ_DataAlarm;'),(29,'逻辑分析月表','JC_AnalysisHMonth','',0,'V',0,'','','','',0,1,'yyyymm','jc_analysish'),(30,'逻辑分析单元定义表','jc_analysisunit','',0,'U',0,'','','','2015-06-16 15:53:33',0,0,'',''),(31,'模拟量报警月表','ViewJC_BMonth','',0,'V',0,'','','','',0,1,'yyyymm','jc_hourmonth:KJ_Hour;JC_BMonth:KJ_DataAlarm'),(32,'模拟量最大值月表','View_1Month','',0,'V',0,'','','','',0,0,'',''),(33,'模拟量断电日班报表','ViewMLLDDDayReport','',0,'V',0,'','','','',0,1,'yyyymm','jc_hourmonth:KJ_Hour;JC_BMonth:KJ_DataAlarm;jc_bmonthkd:KJ_FeedInfo'),(34,'模拟量统计值报表','ViewMLLTJZReport','',0,'V',0,'','','2','2017-10-12 17:08:23',0,1,'yyyymmdd','JC_MMonth:KJ_StaFiveMinute;viewfiveminute:KJ_StaFiveMinute'),(38,'模拟量报警断电记录月报表','ViewMLLBJDDReport','',0,'V',0,'','','','',0,1,'yyyymm','jc_hourmonth:KJ_Hour;JC_BMonth:KJ_DataAlarm;jc_bmonthkd:KJ_FeedInfo'),(39,'开关量报警及断电日(班)报表','ViewKGLBJDDDayReport','',0,'V',0,'','','2','2017-10-30 19:39:15',0,1,'yyyymm','JC_BMonth:KJ_DataAlarm;jc_bmonthkd:KJ_FeedInfo'),(40,'监控设备故障日(班)报表','ViewJKSBGZDayReport','',0,'V',0,'','','','',0,1,'yyyymm','JC_BMonth:KJ_DataAlarm;JC_RMonth:KJ_DataRunRecord'),(42,'枚举表','BFT_EnumCode','',0,'U',0,'','','','',0,0,'',''),(43,'数据状态','BFT_EnumCode','',42,'U',0,'EnumTypeID=4','','','2017-07-19 09:58:47',0,0,'',''),(44,'开关量状态变动明细月表(异常)','ViewJC_KGStateMonth1','',0,'V',0,NULL,NULL,NULL,NULL,0,1,'yyyymmdd','JC_BMonth:KJ_DataAlarm;'),(147,'设备性质','BFT_EnumCode','',42,'U',1,'EnumTypeID=1','','','2015-07-30 14:22:56',0,0,NULL,NULL),(148,'设备运行日志报表','viewsbrunlogreport','',0,'V',0,NULL,NULL,NULL,NULL,0,1,'yyyymm','JC_RMonth:KJ_DataRunRecord;'),(149,'密采记录报表','viewmcrunlogreport','',0,'V',0,NULL,NULL,NULL,NULL,0,1,'yyyymmdd','JC_MCMonth:KJ_DataDetail;'),(150,'操作日志','BFT_operatelog','',0,'U',0,NULL,NULL,NULL,NULL,0,0,NULL,NULL),(151,'操作日志类型','BFT_EnumCode','',42,'U',5,'EnumTypeID=5','','','2015-07-31 15:52:13',0,0,NULL,NULL),(152,'设备型号','BFT_EnumCode','',42,'U',3,'EnumTypeID=3','','','2015-08-04 13:50:06',0,0,NULL,NULL),(153,'设备种类','BFT_EnumCode','',42,'U',2,'EnumTypeID=2','','','2015-08-04 13:52:15',0,0,NULL,NULL),(155,'传感器安装情况','jc_defkzk','',0,'V',0,NULL,NULL,NULL,NULL,0,0,NULL,NULL),(158,'请录入元数据名称','jc_bdd','',0,'V',0,NULL,NULL,NULL,NULL,0,0,NULL,NULL),(162,'开关量馈电异常日(班)报表','viewkglkddayreport','',0,'V',0,'','','2','2017-10-31 16:42:19',0,1,'yyyymm','JC_BMonth:KJ_DataAlarm;jc_bmonthkd:KJ_FeedInfo'),(163,'设备状态','BFT_EnumCode','',42,'U',8,'EnumTypeID=8','','','2015-09-06 14:42:52',0,0,NULL,NULL),(164,'抽放24小时报表','viewjc_llmonth','',0,'V',0,'','','','2016-10-21 13:24:10',0,1,'yyyymm','jc_ll_hmonth:CF_Hour;'),(165,'抽放日报表','viewjc_lld','',0,'V',0,'','','','2016-10-21 10:19:33',0,1,'','jc_ll_dmonth:CF_Day;'),(166,'抽放月报表','viewjc_llm','',0,'V',0,'','','','2016-10-21 14:10:47',0,1,'','jc_ll_mmonth:CF_Month;'),(167,'抽放年报表','viewjc_lly','',0,'V',0,'','','','2016-10-21 14:32:31',0,1,'','jc_ll_ymonth:CF_Year;'),(168,'传感器超期服役统计','viewjc_devtj','',0,'V',0,NULL,NULL,NULL,NULL,0,0,NULL,NULL),(169,'模拟量断电次数月表','view_3montha','',0,'V',0,NULL,NULL,NULL,NULL,0,0,NULL,NULL),(170,'模拟量馈电次数月表','view_4montha','',0,'V',0,NULL,NULL,NULL,NULL,0,0,NULL,NULL),(172,'模拟量馈电状态报表','viewkdstatereport','',0,'V',0,'','','2','2017-09-11 11:39:03',0,1,'yyyymm','jc_hourmonth:KJ_Hour;JC_BMonth:KJ_DataAlarm;jc_bmonthkd:KJ_FeedInfo'),(173,'模拟量报警最大值及时间和平均值','viewmnlbjmaxavgmaxtime','',0,'V',0,NULL,NULL,NULL,NULL,0,0,NULL,NULL),(174,'模拟量倍数报警月表','viewmnlbsbjmonth','',0,'V',0,'','','','2017-07-30 12:10:34',0,1,'yyyymm','viewjcmb:KJ_MultipleHistory;'),(175,'用户角色关联表','BFT_userrole','',0,'U',0,NULL,NULL,NULL,NULL,0,0,NULL,NULL),(176,'模拟量多天平均值','viewmnldaysavg','',0,'V',0,'','','','2017-08-02 16:38:48',0,1,'','viewmnldaysavg:KJ_Day;'),(177,'模拟量标校记录','viewmnlbx','',0,'V',0,'','','2','2017-11-05 15:25:01',0,1,'yyyymm','jc_bmonth:KJ_DataAlarm;jc_bmonthkd:KJ_FeedInfo'),(178,'模拟量报警断电月报','viewmnlbjddmonth','',0,'V',0,'','','','2017-08-15 10:48:27',0,1,'yyyymm','jc_bmonth:KJ_DataAlarm;jc_bmonthkd:KJ_FeedInfo'),(179,'模拟量断电最大值及时间和平均值','viewmnlddmaxavgmaxtime','',0,'V',0,NULL,NULL,NULL,NULL,0,0,NULL,NULL),(180,'开关量馈电次数及时间','view_4monthabykg1','',0,'V',0,NULL,NULL,NULL,NULL,0,0,NULL,NULL),(181,'设备定义表','viewjc_mdef','',0,'V',0,'','','1','2017-08-23 15:05:53',0,0,'',''),(182,'五分钟最大值及时间','viewfiveminutemaxandtime','',0,'V',0,NULL,NULL,NULL,NULL,0,0,NULL,NULL),(183,'应急联动历史记录','viewlinkagehistory','',0,'V',0,'','','','2017-12-21 11:42:11',0,0,'',''),(184,'呼叫历史记录','viewpersoncallhistory','',0,'V',0,'','','','2018-03-09 16:15:00',0,1,'yyyymm','viewpersoncallhistorycallperson:PE_CallHistory,PE_CallHistoryPersonDetail;viewpersoncallhistorycallequipment:PE_CallHistory,PE_CallHistoryPointDetail'),(186,'人员定位设备故障记录','viewpersonequipmentfault','',0,'V',0,'','','r_def','2017-12-25 16:13:27',0,1,'yyyymm','viewpersonequipmentfault:PE_DataAlarm;'),(187,'人员定位设备运行记录','viewpersonequipmentoperating','',0,'V',0,'','','r_def','2017-12-25 17:47:09',0,1,'yyyymm','viewpersonequipmentoperating:PE_DataRunRecord;'),(188,'人员定位历史轨迹表','viewpersontracehistory','',0,'V',0,'','','','2017-12-26 10:25:55',0,1,'yyyymmdd','viewpersontracehistory:PE_Trajectory;'),(189,'分站放电情况','viewsubstationdischarge','',0,'V',0,'','','','2018-01-25 14:39:04',0,1,'yyyymm','jc_bmonth:KJ_DataAlarm;'),(190,'设备台帐','viewequipmentaccount','',0,'V',0,NULL,NULL,NULL,NULL,0,0,NULL,NULL),(193,'放电记录查询','viewstationpowerchargehistory','',0,'V',0,NULL,NULL,NULL,NULL,0,0,NULL,NULL),(194,'交换机故障查询','viewswitchrunlogreport','',0,'V',0,'','','','2019-10-07 20:23:54',0,1,'yyyymm','jc_bmonth:KJ_DataAlarm;');
/*!40000 ALTER TABLE `bft_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bft_metadatafields`
--

DROP TABLE IF EXISTS `bft_metadatafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bft_metadatafields` (
  `ID` int(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `MetaDataID` int(20) NOT NULL COMMENT '元数据ID',
  `strMetaDataTable` varchar(50) DEFAULT NULL COMMENT '元数据表名(冗余字段)',
  `strFieldName` varchar(50) DEFAULT NULL COMMENT '字段名',
  `strFieldChName` varchar(50) DEFAULT NULL COMMENT '字段中文名',
  `strFieldDesc` varchar(200) DEFAULT NULL,
  `strFieldType` varchar(50) DEFAULT NULL COMMENT '字段类型',
  `strFieldDevDesc` varchar(50) DEFAULT NULL COMMENT '字段类型',
  `lngFieldLen` int(11) DEFAULT NULL COMMENT '字段长度',
  `decimalNum` int(11) DEFAULT NULL COMMENT '小数位数',
  `blnMust` tinyint(1) DEFAULT NULL COMMENT '是否必录',
  `blnPK` tinyint(1) DEFAULT '0' COMMENT '是否为PK字段',
  `strDefaultValue` varchar(50) DEFAULT NULL COMMENT '字段默认值',
  `blnHidden` tinyint(1) DEFAULT NULL COMMENT '是否必须隐藏 主要针对ID字段',
  `blnFieldRight` tinyint(1) DEFAULT NULL COMMENT '是否控制字段权限',
  `lngDataRightType` int(11) DEFAULT NULL COMMENT '数据权限类型 (0不控制数据权限 1 机构 2 商品)',
  `lngRowIndex` int(11) DEFAULT NULL COMMENT '字段顺序',
  `lngSourceType` int(11) DEFAULT '0' COMMENT '字段关联档案来源类型',
  `lngRelativeID` int(20) DEFAULT '0' COMMENT '关联元数据ID或者枚举类型ID',
  `lngRelativeFieldID` int(20) DEFAULT '0' COMMENT '关联元数据字段ID或者枚举字段键值',
  `lngFieldShowStyle` int(11) DEFAULT '0' COMMENT '来源字段的展现形式',
  `strFkCode` varchar(100) DEFAULT NULL,
  `strDisplayFormat` varchar(200) DEFAULT NULL COMMENT '显示格式',
  `strLastUpdateTime` char(19) DEFAULT NULL,
  `blnDay` tinyint(1) DEFAULT '0' COMMENT '是否作为日表拼sql(Union)依据',
  `blnDesignSort` tinyint(1) DEFAULT '0' COMMENT '栏目顺序可编排',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3194 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bft_metadatafields`
--

LOCK TABLES `bft_metadatafields` WRITE;
/*!40000 ALTER TABLE `bft_metadatafields` DISABLE KEYS */;
INSERT INTO `bft_metadatafields` VALUES (1,1,'BFT_User','UserID','用户ID','用户ID','int','',4,0,1,1,'',0,0,0,1,0,0,0,0,'','','2018-08-22 10:48:34',0,0),(2,1,'BFT_User','UserCode','登录用户名(编码)','登录用户名(编码)','varchar','',128,0,0,0,'',0,0,0,2,0,0,0,0,'','','2018-08-22 10:48:34',0,0),(3,1,'BFT_User','UserName','真实用户姓名','真实用户姓名','varchar','',128,0,0,0,'',0,0,0,3,0,0,0,0,'','','2018-08-22 10:48:34',0,0),(4,1,'BFT_User','Password','密码','密码','varchar','',128,0,0,0,'',0,0,0,4,0,0,0,0,'','','2018-08-22 10:48:34',0,0),(5,1,'BFT_User','DeptCode','所属单位编码','所属单位编码','varchar','',128,0,0,0,'',0,0,0,5,0,0,0,0,'','','2018-08-22 10:48:34',0,0),(6,1,'BFT_User','LoginCount','登陆次数','登陆次数','int','',4,0,0,0,'',0,0,0,6,0,0,0,0,'','','2018-08-22 10:48:34',0,0),(7,1,'BFT_User','CreateTime','创建时间','创建时间','datetime','',8,3,0,0,'',0,0,0,7,0,0,0,0,'','','2018-08-22 10:48:34',0,0),(8,1,'BFT_User','CreateName','创建人','创建人','varchar','',128,0,0,0,'',0,0,0,8,0,0,0,0,'','','2018-08-22 10:48:34',0,0),(9,1,'BFT_User','LoginTime','登陆时间','登陆时间','datetime','',8,3,0,0,'',0,0,0,9,0,0,0,0,'','','2018-08-22 10:48:34',0,0),(10,1,'BFT_User','LastLoginTime','最后登陆时间','最后登陆时间','datetime','',8,3,0,0,'',0,0,0,10,0,0,0,0,'','','2018-08-22 10:48:34',0,0),(11,1,'BFT_User','LoginIP','登录IP','登录IP','varchar','',128,0,0,0,'',0,0,0,11,0,0,0,0,'','','2018-08-22 10:48:34',0,0),(12,1,'BFT_User','UserFlag','是否使用','是否使用','tinyint','',4,0,0,0,'',0,0,0,12,0,0,0,0,'','','2018-08-22 10:48:34',0,0),(13,1,'BFT_User','ContactPhone','联系电话','联系电话','varchar','',32,0,0,0,'',0,0,0,13,0,0,0,0,'','','2018-08-22 10:48:34',0,0),(14,1,'BFT_User','UserType','用户类型','用户类型','int','',4,0,0,0,'',0,0,0,14,0,0,0,0,'','','2018-08-22 10:48:34',0,0),(15,1,'BFT_User','Remark1','备用','备用','varchar','',200,0,0,0,'',0,0,0,15,0,0,0,0,'','','2018-08-22 10:48:34',0,0),(16,1,'BFT_User','Remark2','备用','备用','varchar','',200,0,0,0,'',0,0,0,16,0,0,0,0,'','','2018-08-22 10:48:34',0,0),(17,1,'BFT_User','Remark3','备用','备用','varchar','',200,0,0,0,'',0,0,0,17,0,0,0,0,'','','2018-08-22 10:48:34',0,0),(18,1,'BFT_User','Remark4','备用','备用','varchar','',200,0,0,0,'',0,0,0,18,0,0,0,0,'','','2018-08-22 10:48:34',0,0),(19,1,'BFT_User','Remark5','备用','备用','varchar','',200,0,0,0,'',0,0,0,19,0,0,0,0,'','','2018-08-22 10:48:34',0,0),(20,2,'BFT_Role','RoleID','角色ID','角色ID','int','',4,0,1,1,'',0,0,0,1,0,0,0,0,'','','2015-03-18 13:14:04',0,0),(21,2,'BFT_Role','RoleCode','角色编号','角色编号','varchar','',128,0,0,0,'',0,0,0,2,0,0,0,0,'','','2015-03-18 13:14:04',0,0),(22,2,'BFT_Role','RoleName','角色名称','角色名称','varchar','',128,0,0,0,'',0,0,0,3,0,0,0,0,'','','2015-03-18 13:14:04',0,0),(23,2,'BFT_Role','RoleDescription','角色描述','角色描述','varchar','',256,0,0,0,'',0,0,0,4,0,0,0,0,'','','2015-03-18 13:14:04',0,0),(24,2,'BFT_Role','RoleFlag','角色使用标记','角色使用标记','int','',4,0,0,0,'',0,0,0,5,0,0,0,0,'','','2015-03-18 13:14:04',0,0),(25,2,'BFT_Role','CreateTime','创建时间','创建时间','datetime','',8,3,0,0,'',0,0,0,6,0,0,0,0,'','','2015-03-18 13:14:04',0,0),(26,2,'BFT_Role','CreateName','创建人','创建人','varchar','',128,0,0,0,'',0,0,0,7,0,0,0,0,'','','2015-03-18 13:14:04',0,0),(27,3,'BFT_Right','RightID','权限ID','权限ID','int','',4,0,1,1,'',0,0,0,1,0,0,0,0,'','','2015-03-18 14:03:19',0,0),(28,3,'BFT_Right','RightCode','权限编号','权限编号','varchar','',128,0,0,0,'',0,0,0,2,0,0,0,0,'','','2015-03-18 14:03:19',0,0),(29,3,'BFT_Right','RightName','权限名称','权限名称','varchar','',128,0,0,0,'',0,0,0,3,0,0,0,0,'','','2015-03-18 14:03:19',0,0),(30,3,'BFT_Right','RightDescription','权限描述','权限描述','varchar','',128,0,0,0,'',0,0,0,4,0,0,0,0,'','','2015-03-18 14:03:19',0,0),(31,3,'BFT_Right','CreateTime','创建时间','创建时间','datetime','',8,3,0,0,'',0,0,0,5,0,0,0,0,'','','2015-03-18 14:03:19',0,0),(32,3,'BFT_Right','CreateName','创建人','创建人','varchar','',128,0,0,0,'',0,0,0,6,0,0,0,0,'','','2015-03-18 14:03:19',0,0),(33,3,'BFT_Right','RightType','权限类型','权限类型','varchar','',128,0,0,0,'',0,0,0,7,0,0,0,0,'','','2015-03-18 14:03:19',0,0),(34,4,'BFT_Menu','MenuID','菜单编号','菜单编号','int','',4,0,1,1,'',0,0,0,1,0,0,0,0,'','','2015-03-18 15:46:01',0,0),(35,4,'BFT_Menu','MenuCode','菜单编码','菜单编码','varchar','',128,0,0,0,'',0,0,0,2,0,0,0,0,'','','2015-03-18 15:46:01',0,0),(36,4,'BFT_Menu','MenuName','菜单名称','菜单名称','varchar','',128,0,0,0,'',0,0,0,3,0,0,0,0,'','','2015-03-18 15:46:01',0,0),(37,4,'BFT_Menu','MenuURL','菜单连接地址','菜单连接地址','varchar','',1000,0,0,0,'',0,0,0,4,0,0,0,0,'','','2015-03-18 15:46:01',0,0),(38,4,'BFT_Menu','MenuParent','父菜单编号','父菜单编号','varchar','',128,0,0,0,'',0,0,0,5,0,0,0,0,'','','2015-03-18 15:46:01',0,0),(39,4,'BFT_Menu','MenuMemo','菜单标志位','菜单标志位','int','',4,0,0,0,'',0,0,0,6,0,0,0,0,'','','2015-03-18 15:46:01',0,0),(40,4,'BFT_Menu','MenuFlag','菜单使用标志','菜单使用标志','int','',4,0,0,0,'',0,0,0,7,0,0,0,0,'','','2015-03-18 15:46:01',0,0),(41,4,'BFT_Menu','MenuFile','菜单所属程序文件','菜单所属程序文件','varchar','',500,0,0,0,'',0,0,0,8,0,0,0,0,'','','2015-03-18 15:46:01',0,0),(42,4,'BFT_Menu','MenuNamespace','菜单所属文件命名空间','菜单所属文件命名空间','varchar','',500,0,0,0,'',0,0,0,9,0,0,0,0,'','','2015-03-18 15:46:01',0,0),(43,4,'BFT_Menu','MenuParams','菜单窗体参数','菜单窗体参数','varchar','',500,0,0,0,'',0,0,0,10,0,0,0,0,'','','2015-03-18 15:46:01',0,0),(44,4,'BFT_Menu','MenuSort','菜单排序标志','菜单排序标志','varchar','',128,0,0,0,'',0,0,0,11,0,0,0,0,'','','2015-03-18 15:46:01',0,0),(45,4,'BFT_Menu','MenuStatus','菜单是否在菜单树中进行加载','菜单是否在菜单树中进行加载','int','',4,0,0,0,'',0,0,0,12,0,0,0,0,'','','2015-03-18 15:46:01',0,0),(46,4,'BFT_Menu','MenuForSys','菜单响应类型','菜单响应类型','int','',4,0,0,0,'',0,0,0,13,0,0,0,0,'','','2015-03-18 15:46:01',0,0),(47,4,'BFT_Menu','MenuSmallIcon','菜单小图标','菜单小图标','varchar','',1000,0,0,0,'',0,0,0,14,0,0,0,0,'','','2015-03-18 15:46:01',0,0),(48,4,'BFT_Menu','MenuLargeIcon','菜单大图标','菜单大图标','varchar','',1000,0,0,0,'',0,0,0,15,0,0,0,0,'','','2015-03-18 15:46:01',0,0),(49,4,'BFT_Menu','LoadByIframe','窗口打开次数','窗口打开次数','int','',4,0,0,0,'',0,0,0,16,0,0,0,0,'','','2015-03-18 15:46:01',0,0),(50,4,'BFT_Menu','IsSystemDesktop','系统桌面标记','系统桌面标记','int','',4,0,0,0,'',0,0,0,17,0,0,0,0,'','','2015-03-18 15:46:01',0,0),(51,4,'BFT_Menu','ShowType','模态标记','模态标记','int','',4,0,0,0,'',0,0,0,18,0,0,0,0,'','','2015-03-18 15:46:01',0,0),(52,4,'BFT_Menu','RightCode','权限编号','权限编号','varchar','',128,0,0,0,'',0,0,0,19,0,0,0,0,'','','2015-03-18 15:46:01',0,0),(53,4,'BFT_Menu','RequestCode','请求库编码','请求库编码','nvarchar','',256,0,0,0,'',0,0,0,20,0,0,0,0,'','','2015-03-18 15:46:01',0,0),(54,4,'BFT_Menu','Remark1','备注1','备注1','varchar','',200,0,0,0,'',0,0,0,21,0,0,0,0,'','','2015-03-18 15:46:01',0,0),(55,4,'BFT_Menu','Remark2','备注2','备注2','varchar','',200,0,0,0,'',0,0,0,22,0,0,0,0,'','','2015-03-18 15:46:01',0,0),(56,4,'BFT_Menu','Rmark3','备注3','备注3','varchar','',200,0,0,0,'',0,0,0,23,0,0,0,0,'','','2015-03-18 15:46:01',0,0),(57,4,'BFT_Menu','Remark4','备注4','备注4','varchar','',200,0,0,0,'',0,0,0,24,0,0,0,0,'','','2015-03-18 15:46:01',0,0),(58,4,'BFT_Menu','Remark5','备注5','备注5','varchar','',200,0,0,0,'',0,0,0,25,0,0,0,0,'','','2015-03-18 15:46:01',0,0),(59,5,'BFT_RunLog','ID','编号','编号','varchar','',40,0,1,1,'',0,0,0,7,0,0,0,0,'','','2015-10-10 17:40:56',0,0),(60,5,'BFT_RunLog','CreateDate','生成日期','生成日期','datetime','',8,3,0,0,'',0,0,0,2,0,0,0,0,'','','2015-10-10 17:40:56',0,0),(61,5,'BFT_RunLog','ThreadNumber','线程号','线程号','varchar','',255,0,0,0,'',0,0,0,3,0,0,0,0,'','','2015-10-10 17:40:56',0,0),(62,5,'BFT_RunLog','LogLevel','日志等级','日志等级','varchar','',50,0,0,0,'',0,0,0,4,0,0,0,0,'','','2015-10-10 17:40:56',0,0),(63,5,'BFT_RunLog','Logger','记录器','记录器','varchar','',255,0,0,0,'',0,0,0,5,0,0,0,0,'','','2015-10-10 17:40:56',0,0),(64,5,'BFT_RunLog','MessageContent','日志内容','日志内容','varchar','',8000,0,0,0,'',0,0,0,6,0,0,0,0,'','','2015-10-10 17:40:56',0,0),(65,6,'BFT_request','RequestID','请求编号','请求编号','bigint','',0,0,1,1,'',0,0,0,1,0,0,0,0,'','','2015-07-23 11:48:51',0,0),(66,6,'BFT_request','RequestCode','请求编码','请求编码','varchar','',128,0,1,0,'',0,0,0,2,0,0,0,0,'','','2015-07-23 11:48:51',0,0),(67,6,'BFT_request','RequestName','请求名称','请求名称','varchar','',128,0,1,0,'',0,0,0,3,0,0,0,0,'','','2015-07-23 11:48:51',0,0),(68,6,'BFT_request','MenuURL','菜单连接地址','菜单连接地址','varchar','',1000,0,1,0,'',0,0,0,4,0,0,0,0,'','','2015-07-23 11:48:51',0,0),(69,6,'BFT_request','MenuFile','菜单所属程序文件','菜单所属程序文件','varchar','',500,0,1,0,'',0,0,0,5,0,0,0,0,'','','2015-07-23 11:48:51',0,0),(70,6,'BFT_request','MenuNamespace','菜单所属文件命名空间','菜单所属文件命名空间','varchar','',500,0,1,0,'',0,0,0,6,0,0,0,0,'','','2015-07-23 11:48:51',0,0),(71,6,'BFT_request','MenuParams','菜单窗体参数','菜单窗体参数','varchar','',500,0,1,0,'',0,0,0,7,0,0,0,0,'','','2015-07-23 11:48:51',0,0),(72,6,'BFT_request','ShowType','模态标记','模态标记','int','',0,0,1,0,'',0,0,0,8,0,0,0,0,'','','2015-07-23 11:48:51',0,0),(73,6,'BFT_request','LoadByIframe','窗体打开次数','窗体打开次数','int','',0,0,1,0,'',0,0,0,9,0,0,0,0,'','','2015-07-23 11:48:51',0,0),(74,6,'BFT_request','MenuForSys','菜单响应类型','菜单响应类型','int','',0,0,1,0,'',0,0,0,10,0,0,0,0,'','','2015-07-23 11:48:51',0,0),(135,8,'KJ_DeviceAddress','ID','主键ID','','int','',4,0,1,0,'',0,0,0,1,0,0,0,0,'','','2015-08-06 15:42:03',0,0),(136,8,'KJ_DeviceAddress','wzID','安装位置ID','','smallint','',2,0,1,1,'',0,0,0,2,0,0,0,0,'','','2015-08-06 15:42:03',0,0),(137,8,'KJ_DeviceAddress','wz','安装位置名称','','nvarchar','',60,0,1,0,'',0,0,0,3,0,0,0,0,'','','2015-08-06 15:42:03',0,0),(138,8,'KJ_DeviceAddress','upflag','上传标志','','nvarchar','',2,0,1,0,'',0,0,0,4,0,0,0,0,'','','2015-08-06 15:42:03',0,0),(139,9,'KJ_DeviceDefInfo','ID','主键ID','','int','',4,0,1,1,'',0,0,0,1,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(140,9,'KJ_DeviceDefInfo','fzh','分站号','','smallint','',2,0,1,0,'',0,0,0,2,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(141,9,'KJ_DeviceDefInfo','kh','口号','','tinyint','',1,0,1,0,'',0,0,0,3,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(142,9,'KJ_DeviceDefInfo','devid','设备类型ID','','tinyint','',1,0,0,0,'',0,0,0,4,1,10,178,0,'AllJC_Dev','','2017-07-19 10:59:44',0,0),(143,9,'KJ_DeviceDefInfo','wzid','安装位置ID','','smallint','',2,0,0,0,'',0,0,0,5,1,8,136,0,'AllJC_WZ','','2017-07-19 10:59:44',0,0),(144,9,'KJ_DeviceDefInfo','csid','请录入字段名','','tinyint','',1,0,0,0,'',0,0,0,6,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(145,9,'KJ_DeviceDefInfo','point','测点号','','nvarchar','',12,0,1,0,'',0,0,0,7,0,0,0,0,'AllPoint','','2017-07-19 10:59:44',0,0),(146,9,'KJ_DeviceDefInfo','ssz','实时值 ','','nvarchar','',100,0,0,0,'',0,0,0,8,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(147,9,'KJ_DeviceDefInfo','state','状态值 ','','tinyint','',1,0,0,0,'',0,0,0,9,1,163,2524,0,'AllDevTypeCode','','2017-07-19 10:59:44',0,0),(148,9,'KJ_DeviceDefInfo','alarm','报警状态','','tinyint','',1,0,0,0,'',0,0,0,10,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(149,9,'KJ_DeviceDefInfo','zts','状态变动时间','','datetime','',8,3,0,0,'',0,0,0,11,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(150,9,'KJ_DeviceDefInfo','jckz1','请录入字段名','','ntext','',16,0,0,0,'',0,0,0,12,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(151,9,'KJ_DeviceDefInfo','jckz2','请录入字段名','','ntext','',16,0,0,0,'',0,0,0,13,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(152,9,'KJ_DeviceDefInfo','jckz3','请录入字段名','','ntext','',16,0,0,0,'',0,0,0,14,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(153,9,'KJ_DeviceDefInfo','z1','上限预警值','','real','',4,0,0,0,'',0,0,0,15,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(154,9,'KJ_DeviceDefInfo','z2','上限报警值','','real','',4,0,0,0,'',0,0,0,16,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(155,9,'KJ_DeviceDefInfo','z3','上限断电值','','real','',4,0,0,0,'',0,0,0,17,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(156,9,'KJ_DeviceDefInfo','z4','上限恢复值','','real','',4,0,0,0,'',0,0,0,18,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(157,9,'KJ_DeviceDefInfo','z5','下限预警值','','real','',4,0,0,0,'',0,0,0,19,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(158,9,'KJ_DeviceDefInfo','z6','下限报警值','','real','',4,0,0,0,'',0,0,0,20,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(159,9,'KJ_DeviceDefInfo','z7','下限断电值','','real','',4,0,0,0,'',0,0,0,21,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(160,9,'KJ_DeviceDefInfo','z8','下限恢复值','','real','',4,0,0,0,'',0,0,0,22,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(161,9,'KJ_DeviceDefInfo','K1','请录入字段名','','smallint','',2,0,0,0,'',0,0,0,23,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(162,9,'KJ_DeviceDefInfo','K2','请录入字段名','','smallint','',2,0,0,0,'',0,0,0,24,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(163,9,'KJ_DeviceDefInfo','K3','请录入字段名','','smallint','',2,0,0,0,'',0,0,0,25,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(164,9,'KJ_DeviceDefInfo','K4','请录入字段名','','smallint','',2,0,0,0,'',0,0,0,26,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(165,9,'KJ_DeviceDefInfo','K5','请录入字段名','','smallint','',2,0,0,0,'',0,0,0,27,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(166,9,'KJ_DeviceDefInfo','K6','请录入字段名','','smallint','',2,0,0,0,'',0,0,0,28,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(167,9,'KJ_DeviceDefInfo','K7','请录入字段名','','smallint','',2,0,0,0,'',0,0,0,29,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(168,9,'KJ_DeviceDefInfo','K8','请录入字段名','','smallint','',2,0,0,0,'',0,0,0,30,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(169,9,'KJ_DeviceDefInfo','bz1','请录入字段名','','tinyint','',1,0,0,0,'',0,0,0,31,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(170,9,'KJ_DeviceDefInfo','bz2','请录入字段名','','tinyint','',1,0,0,0,'',0,0,0,32,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(171,9,'KJ_DeviceDefInfo','bz3','请录入字段名','','tinyint','',1,0,0,0,'',0,0,0,33,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(172,9,'KJ_DeviceDefInfo','bz4','请录入字段名','','tinyint','',1,0,0,0,'',0,0,0,34,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(173,9,'KJ_DeviceDefInfo','bz5','请录入字段名','','tinyint','',1,0,0,0,'',0,0,0,35,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(174,9,'KJ_DeviceDefInfo','remark','请录入字段名','','ntext','',16,0,0,0,'',0,0,0,36,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(175,9,'KJ_DeviceDefInfo','upflag','请录入字段名','','nvarchar','',2,0,0,0,'',0,0,0,37,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(177,10,'KJ_DeviceType','ID','主键ID','','int','',4,0,1,0,'',0,0,0,1,0,0,0,0,'','','2017-07-19 11:34:10',0,0),(178,10,'KJ_DeviceType','devID','设备类型ID','','tinyint','',1,0,1,1,'',0,0,0,2,0,0,0,0,'','','2017-07-19 11:34:10',0,0),(179,10,'KJ_DeviceType','type','类型','类型:0-分站1-模拟量2-开关量3-控制量','tinyint','',1,0,1,0,'',0,0,0,3,1,147,2233,0,'AllAllDevPro','','2017-07-19 11:34:10',0,0),(180,10,'KJ_DeviceType','Name','设备类型名称','','nvarchar','',40,0,1,0,'',0,0,0,4,0,0,0,0,'','','2017-07-19 11:34:10',0,0),(181,10,'KJ_DeviceType','Lc','请录入字段名','','smallint','',2,0,0,0,'',0,0,0,5,0,0,0,0,'','','2017-07-19 11:34:10',0,0),(182,10,'KJ_DeviceType','Lc2','请录入字段名','','smallint','',2,0,0,0,'',0,0,0,6,0,0,0,0,'','','2017-07-19 11:34:10',0,0),(183,10,'KJ_DeviceType','Pl1','开关量0太是否报警','','smallint','',2,0,0,0,'',0,0,0,7,0,0,0,0,'','','2017-07-19 11:34:10',0,0),(184,10,'KJ_DeviceType','Pl2','开关量1太是否报警','','smallint','',2,0,0,0,'',0,0,0,8,0,0,0,0,'','','2017-07-19 11:34:10',0,0),(185,10,'KJ_DeviceType','Pl3','开关量2太是否报警','','smallint','',2,0,0,0,'',0,0,0,9,0,0,0,0,'','','2017-07-19 11:34:10',0,0),(186,10,'KJ_DeviceType','Pl4','请录入字段名','','smallint','',2,0,0,0,'',0,0,0,10,0,0,0,0,'','','2017-07-19 11:34:10',0,0),(187,10,'KJ_DeviceType','xzxs','请录入字段名','','real','',4,0,0,0,'',0,0,0,11,0,0,0,0,'','','2017-07-19 11:34:10',0,0),(188,10,'KJ_DeviceType','Z1','上限预警','','real','',4,0,0,0,'',0,0,0,12,0,0,0,0,'','','2017-07-19 11:34:10',0,0),(189,10,'KJ_DeviceType','Z2','上限报警','','real','',4,0,0,0,'',0,0,0,13,0,0,0,0,'','','2017-07-19 11:34:10',0,0),(190,10,'KJ_DeviceType','Z3','上限断电','','real','',4,0,0,0,'',0,0,0,14,0,0,0,0,'','','2017-07-19 11:34:10',0,0),(191,10,'KJ_DeviceType','Z4','上限恢复','','real','',4,0,0,0,'',0,0,0,15,0,0,0,0,'','','2017-07-19 11:34:10',0,0),(192,10,'KJ_DeviceType','Z5','下限预警','','real','',4,0,0,0,'',0,0,0,16,0,0,0,0,'','','2017-07-19 11:34:10',0,0),(193,10,'KJ_DeviceType','Z6','下限报警','','real','',4,0,0,0,'',0,0,0,17,0,0,0,0,'','','2017-07-19 11:34:10',0,0),(194,10,'KJ_DeviceType','Z7','下限断电','','real','',4,0,0,0,'',0,0,0,18,0,0,0,0,'','','2017-07-19 11:34:10',0,0),(195,10,'KJ_DeviceType','Z8','下限恢复','','real','',4,0,0,0,'',0,0,0,19,0,0,0,0,'','','2017-07-19 11:34:10',0,0),(196,10,'KJ_DeviceType','Color1','请录入字段名','','int','',4,0,0,0,'',0,0,0,20,0,0,0,0,'','','2017-07-19 11:34:10',0,0),(197,10,'KJ_DeviceType','Color2','请录入字段名','','int','',4,0,0,0,'',0,0,0,21,0,0,0,0,'','','2017-07-19 11:34:10',0,0),(198,10,'KJ_DeviceType','Color3','请录入字段名','','int','',4,0,0,0,'',0,0,0,22,0,0,0,0,'','','2017-07-19 11:34:10',0,0),(199,10,'KJ_DeviceType','Xs1','单位','','nvarchar','',20,0,0,0,'',0,0,0,23,0,0,0,0,'','','2017-07-19 11:34:10',0,0),(200,10,'KJ_DeviceType','Xs2','请录入字段名','','nvarchar','',20,0,0,0,'',0,0,0,24,0,0,0,0,'','','2017-07-19 11:34:10',0,0),(201,10,'KJ_DeviceType','Xs3','请录入字段名','','nvarchar','',20,0,0,0,'',0,0,0,25,0,0,0,0,'','','2017-07-19 11:34:10',0,0),(202,10,'KJ_DeviceType','Bz1','请录入字段名','','int','',1,0,0,0,'',0,0,0,26,0,0,0,0,'','','2017-07-19 11:34:10',0,0),(203,10,'KJ_DeviceType','Bz2','请录入字段名','','int','',1,0,0,0,'',0,0,0,27,0,0,0,0,'','','2017-07-19 11:34:10',0,0),(204,10,'KJ_DeviceType','Bz3','设备种类','','int','',1,0,0,0,'',0,0,0,28,1,153,2316,0,'AllDevType','','2017-07-19 11:34:10',0,0),(205,10,'KJ_DeviceType','Bz4','设备型号','','int','',1,0,0,0,'',0,0,0,29,1,152,2301,0,'AllDevModel','','2017-07-19 11:34:10',0,0),(206,10,'KJ_DeviceType','remark','请录入字段名','','ntext','',16,0,0,0,'',0,0,0,30,0,0,0,0,'','','2017-07-19 11:34:10',0,0),(207,10,'KJ_DeviceType','upflag','请录入字段名','','nvarchar','',2,0,0,0,'',0,0,0,31,0,0,0,0,'','','2017-07-19 11:34:10',0,0),(442,26,'ViewMSum','point','测点号','','nvarchar','',100,0,0,0,'',0,0,0,1,1,9,145,0,'AllPointMnl','','2017-10-16 16:15:16',1,1),(443,26,'ViewMSum','zdz','最大值','','real','',4,0,0,0,'',0,0,0,2,0,0,0,0,'','','2017-10-16 16:15:16',0,0),(444,26,'ViewMSum','pjz','平均值','','float','',8,0,0,0,'',0,0,0,3,0,0,0,0,'','','2017-10-16 16:15:16',0,0),(445,26,'ViewMSum','zdzs','最大值时刻','','varchar','',100,0,0,0,'',0,0,0,4,0,0,0,0,'','','2017-10-16 16:15:16',0,0),(452,26,'ViewMSum','fzh','分站号','','smallint','',2,0,1,0,'',0,0,0,11,0,0,0,0,'','','2017-10-16 16:15:16',0,0),(453,26,'ViewMSum','kh','口号','','tinyint','',1,0,1,0,'',0,0,0,12,0,0,0,0,'','','2017-10-16 16:15:16',0,0),(454,26,'ViewMSum','devid','设备类型','','tinyint','',1,0,0,0,'',0,0,0,13,1,10,178,0,'AllJC_Dev','','2017-10-16 16:15:16',0,0),(455,26,'ViewMSum','wzid','安装位置','','smallint','',2,0,0,0,'',0,0,0,14,1,8,136,0,'AllJC_WZ','','2017-10-16 16:15:16',0,0),(456,26,'ViewMSum','datsearch','查询日期','','datetime','',8,3,1,0,'',0,0,0,15,0,0,0,0,'','','2017-10-16 16:15:16',0,0),(457,27,'ViewJC_KGStateMonth','point','测点号','','nvarchar','',12,0,0,0,'',0,0,0,1,0,0,0,0,'AllPointKgl','','2018-01-24 17:51:15',1,1),(458,27,'ViewJC_KGStateMonth','stime','开始时间','','datetime','',8,3,0,0,'',0,0,0,2,0,0,0,0,'','','2018-01-24 17:51:15',0,0),(459,27,'ViewJC_KGStateMonth','etime','结束时间','','datetime','',8,3,0,0,'',0,0,0,3,0,0,0,0,'','','2018-01-24 17:51:15',0,0),(460,27,'ViewJC_KGStateMonth','ssz','值','','nvarchar','',20,0,0,0,'',0,0,0,4,0,0,0,0,'','','2018-01-24 17:51:15',0,0),(461,27,'ViewJC_KGStateMonth','sumcount','累计变动次数','','int','',4,0,0,0,'',0,0,0,5,0,0,0,0,'','','2018-01-24 17:51:15',0,0),(462,27,'ViewJC_KGStateMonth','sumtime','累计运行时间','','nvarchar','',16,0,0,0,'',0,0,0,6,0,0,0,0,'','','2018-01-24 17:51:15',0,0),(463,27,'ViewJC_KGStateMonth','fzh','分站号','','smallint','',2,0,0,0,'',0,0,0,7,0,0,0,0,'','','2018-01-24 17:51:15',0,0),(464,27,'ViewJC_KGStateMonth','kh','口号','','tinyint','',1,0,0,0,'',0,0,0,8,0,0,0,0,'','','2018-01-24 17:51:15',0,0),(465,27,'ViewJC_KGStateMonth','devid','设备类型','','tinyint','',1,0,0,0,'',0,0,0,9,1,10,178,0,'AllJC_Dev','','2018-01-24 17:51:15',0,0),(466,27,'ViewJC_KGStateMonth','wzid','安装位置','','smallint','',2,0,0,0,'',0,0,0,10,1,8,136,0,'AllJC_WZ','','2018-01-24 17:51:15',0,0),(467,27,'ViewJC_KGStateMonth','datSearch','查询时间','','datetime','',8,3,1,0,'',0,0,0,11,0,0,0,0,'','','2018-01-24 17:51:15',1,0),(468,27,'ViewJC_KGStateMonth','pid','主键ID','','nvarchar','',260,0,0,1,'',0,0,0,12,0,0,0,0,'','','2018-01-24 17:51:15',0,0),(483,26,'ViewMLLDayReport','sumcountbybj','报警次数','','int','',4,0,1,0,'',0,0,0,16,0,0,0,0,'','','2017-10-16 16:15:16',0,0),(484,26,'ViewMLLDayReport','sumtimebybj','报警时间','','nvarchar','',16,0,1,0,'',0,0,0,17,0,0,0,0,'','','2017-10-16 16:15:16',0,0),(485,26,'ViewMLLDayReport','sumcountbydd','断电次数','','int','',4,0,1,0,'',0,0,0,18,0,0,0,0,'','','2017-10-16 16:15:16',0,0),(486,26,'ViewMLLDayReport','sumtimebydd','断电时间','','nvarchar','',16,0,1,0,'',0,0,0,19,0,0,0,0,'','','2017-10-16 16:15:16',0,0),(487,26,'ViewMLLDayReport','sumcountbykd','馈电次数','','int','',4,0,1,0,'',0,0,0,20,0,0,0,0,'','','2017-10-16 16:15:16',0,0),(488,26,'ViewMLLDayReport','sumtimebykd','馈电时间','','nvarchar','',16,0,1,0,'',0,0,0,21,0,0,0,0,'','','2017-10-16 16:15:16',0,0),(489,26,'ViewMLLDayReport','bid','主键ID','','varchar','',120,0,0,1,'',0,0,0,16,0,0,0,0,'','','2017-10-16 16:15:16',0,0),(506,30,'jc_analysisunit','AnalysisID','分析单元ID','','bigint','',8,0,1,1,'',0,0,0,1,0,0,0,0,'','','2015-06-16 15:56:45',0,0),(507,30,'jc_analysisunit','AnalysisName','分析单元名称','','varchar','',16,0,0,0,'',0,0,0,2,0,0,0,0,'','','2015-06-16 15:56:45',0,0),(508,30,'jc_analysisunit','KeepTime','条件满足保持时间','','smallint','',2,0,0,0,'',0,0,0,3,0,0,0,0,'','','2015-06-16 15:56:45',0,0),(509,30,'jc_analysisunit','AlarmTip','分析单元满足条件是否报警提示','','smallint','',2,0,0,0,'',0,0,0,4,0,0,0,0,'','','2015-06-16 15:56:45',0,0),(510,30,'jc_analysisunit','AlarmShow','分析单元原点报警显示','','smallint','',2,0,0,0,'',0,0,0,5,0,0,0,0,'','','2015-06-16 15:56:45',0,0),(511,30,'jc_analysisunit','ControlOutput','分析单元控制输出标志','','smallint','',2,0,0,0,'',0,0,0,6,0,0,0,0,'','','2015-06-16 15:56:45',0,0),(512,30,'jc_analysisunit','DelFlag','删除标志','','smallint','',2,0,0,0,'',0,0,0,7,0,0,0,0,'','','2015-06-16 15:56:45',0,0),(513,30,'jc_analysisunit','Expression','表达式','','text','',16,0,0,0,'',0,0,0,8,0,0,0,0,'','','2015-06-16 15:56:45',0,0),(514,30,'jc_analysisunit','Bz1','备注1','','text','',16,0,0,0,'',0,0,0,9,0,0,0,0,'','','2015-06-16 15:56:45',0,0),(515,30,'jc_analysisunit','Bz2','备注2','','text','',16,0,0,0,'',0,0,0,10,0,0,0,0,'','','2015-06-16 15:56:45',0,0),(516,30,'jc_analysisunit','Bz3','备注3','','text','',16,0,0,0,'',0,0,0,11,0,0,0,0,'','','2015-06-16 15:56:45',0,0),(517,30,'jc_analysisunit','Bz4','备注4','','text','',16,0,0,0,'',0,0,0,12,0,0,0,0,'','','2015-06-16 15:56:45',0,0),(518,30,'jc_analysisunit','Bz5','备注5','','text','',16,0,0,0,'',0,0,0,13,0,0,0,0,'','','2015-06-16 15:56:45',0,0),(519,30,'jc_analysisunit','Upflag','上传标志','','varchar','',1,0,0,0,'',0,0,0,14,0,0,0,0,'','','2015-06-16 15:56:45',0,0),(520,30,'jc_analysisunit','Out_Value','输出值','','varchar','',16,0,0,0,'',0,0,0,15,0,0,0,0,'','','2015-06-16 15:56:45',0,0),(521,30,'jc_analysisunit','Create_Timer','表达式生成的时间','','datetime','',8,3,0,0,'',0,0,0,16,0,0,0,0,'','','2015-06-16 15:56:45',0,0),(550,27,'ViewJC_KGStateMonth','state','状态值','','nvarchar','',20,0,0,0,'',0,0,0,13,0,0,0,0,'','','2018-01-24 17:51:15',0,0),(551,31,'ViewJC_BMonth','fzh','分站号','','smallint','',2,0,1,0,'',0,0,0,1,0,0,0,0,'','','2018-02-05 18:03:27',0,0),(552,31,'ViewJC_BMonth','kh','口号','','tinyint','',1,0,1,0,'',0,0,0,2,0,0,0,0,'','','2018-02-05 18:03:27',0,0),(553,31,'ViewJC_BMonth','devid','设备类型','','tinyint','',1,0,0,0,'',0,0,0,3,1,10,178,0,'AllJC_Dev','','2018-02-05 18:03:27',0,0),(554,31,'ViewJC_BMonth','wzid','安装位置','','smallint','',2,0,0,0,'',0,0,0,4,1,8,136,0,'AllJC_WZ','','2018-02-05 18:03:27',0,0),(555,31,'ViewJC_BMonth','point','测点号','','nvarchar','',100,0,0,0,'',0,0,0,5,0,0,0,0,'AllPointMnl','','2018-02-05 18:03:27',1,1),(556,31,'ViewJC_BMonth','type','类型','','tinyint','',1,0,0,0,'',0,0,0,6,0,0,0,0,'','','2018-02-05 18:03:27',0,0),(557,31,'ViewJC_BMonth','stime','本次开始时间','','datetime','',8,3,0,0,'',0,0,0,7,0,0,0,0,'','','2018-02-05 18:03:27',0,0),(558,31,'ViewJC_BMonth','etime','本次结束时间','','datetime','',8,3,0,0,'',0,0,0,8,0,0,0,0,'','','2018-02-05 18:03:27',0,0),(559,31,'ViewJC_BMonth','cursumtime','本次累计时间','','varchar','',14,0,0,0,'',0,0,0,9,0,0,0,0,'','','2018-02-05 18:03:27',0,0),(560,31,'ViewJC_BMonth','ssz','实时值','','nvarchar','',20,0,0,0,'',0,0,0,10,0,0,0,0,'','','2018-02-05 18:03:27',0,0),(561,31,'ViewJC_BMonth','zdz','本次最大值','','real','',4,0,0,0,'',0,0,0,11,0,0,0,0,'','','2018-02-05 18:03:27',0,0),(562,31,'ViewJC_BMonth','pjz','本次平均值','','real','',4,0,0,0,'',0,0,0,12,0,0,0,0,'','','2018-02-05 18:03:27',0,0),(563,31,'ViewJC_BMonth','zdzs','本次最大值时刻','','datetime','',8,3,0,0,'',0,0,0,13,0,0,0,0,'','','2018-02-05 18:03:27',0,0),(564,31,'ViewJC_BMonth','cs','处理措施','','ntext','',16,0,0,0,'',0,0,0,14,0,0,0,0,'','','2018-02-05 18:03:27',0,0),(565,31,'ViewJC_BMonth','kzk','控制口','','ntext','',16,0,0,0,'',0,0,0,15,0,0,0,0,'','','2018-02-05 18:03:27',0,0),(566,31,'ViewJC_BMonth','upflag','请录入字段名','','nvarchar','',2,0,0,0,'',0,0,0,16,0,0,0,0,'','','2018-02-05 18:03:27',0,0),(567,31,'ViewJC_BMonth','bid','主键ID','','varchar','',120,0,0,1,'',0,0,0,17,0,0,0,0,'','','2018-02-05 18:03:27',0,0),(568,31,'ViewJC_BMonth','bida','关联最大值ID','','varchar','',120,0,0,0,'',0,0,0,18,1,173,2789,0,'','','2018-02-05 18:03:27',0,0),(569,31,'ViewJC_BMonth','kdid','馈电Ids','','nvarchar','',100,0,0,0,'',0,0,0,19,0,0,0,0,'','','2018-02-05 18:03:27',0,0),(570,31,'ViewJC_BMonth','datsearch','查询时间','','datetime','',8,3,1,0,'',0,0,0,20,0,0,0,0,'','','2018-02-05 18:03:27',0,0),(571,31,'ViewJC_BMonth','typename','类型名称','','varchar','',4,0,1,0,'',0,0,0,21,0,0,0,0,'','','2018-02-05 18:03:27',0,0),(572,31,'ViewJC_BMonth','sumcount','累计报警次数','','int','',4,0,0,0,'',0,0,0,22,0,0,0,0,'','','2018-02-05 18:03:27',0,0),(573,31,'ViewJC_BMonth','sumtime','累计报警时间','','nvarchar','',16,0,0,0,'',0,0,0,23,0,0,0,0,'','','2018-02-05 18:03:27',0,0),(578,32,'View_1Month','point','测点号','','nvarchar','',100,0,0,0,'',0,0,0,5,0,0,0,0,'AllPoint','','2015-06-17 10:46:54',1,1),(579,32,'View_1Month','zdz','最大值','','real','',4,0,0,0,'',0,0,0,6,0,0,0,0,'','','2015-06-17 10:46:54',0,0),(580,32,'View_1Month','pjz','平均值','','float','',8,0,0,0,'',0,0,0,7,0,0,0,0,'','','2015-06-17 10:46:54',0,0),(581,32,'View_1Month','zdzs','最大值时刻','','varchar','',111,0,0,0,'',0,0,0,8,0,0,0,0,'','','2015-06-17 10:46:54',0,0),(582,32,'View_1Month','bid','主键ID','','varchar','',120,0,0,1,'',0,0,0,9,0,0,0,0,'','','2015-06-17 10:46:54',0,0),(583,32,'View_1Month','bida','请录入字段名','','varchar','',120,0,0,0,'',0,0,0,10,0,0,0,0,'','','2015-06-17 10:46:54',0,0),(584,32,'View_1Month','bidb','请录入字段名','','varchar','',120,0,0,0,'',0,0,0,11,0,0,0,0,'','','2015-06-17 10:46:54',0,0),(585,32,'View_1Month','bidc','请录入字段名','','varchar','',120,0,0,0,'',0,0,0,12,0,0,0,0,'','','2015-06-17 10:46:54',0,0),(586,32,'View_1Month','datSearch','请录入字段名','','datetime','',8,3,1,0,'',0,0,0,13,0,0,0,0,'','','2015-06-17 10:46:54',0,0),(587,33,'ViewMLLDDDayReport','fzh','分站号','','smallint','',2,0,1,0,'',0,0,0,1,0,0,0,0,'','','2018-02-05 18:11:08',0,0),(588,33,'ViewMLLDDDayReport','kh','口号','','tinyint','',1,0,1,0,'',0,0,0,2,0,0,0,0,'','','2018-02-05 18:11:08',0,0),(589,33,'ViewMLLDDDayReport','devid','设备类型','','tinyint','',1,0,0,0,'',0,0,0,3,1,10,178,0,'AllJC_Dev','','2018-02-05 18:11:08',0,0),(590,33,'ViewMLLDDDayReport','wzid','安装位置','','smallint','',2,0,0,0,'',0,0,0,4,1,8,136,0,'AllJC_WZ','','2018-02-05 18:11:08',0,0),(591,33,'ViewMLLDDDayReport','point','测点号','','nvarchar','',100,0,0,0,'',0,0,0,5,0,0,0,0,'AllPointMnl','','2018-02-05 18:11:08',0,1),(592,33,'ViewMLLDDDayReport','type','类型','','tinyint','',1,0,0,0,'',0,0,0,6,0,0,0,0,'','','2018-02-05 18:11:08',0,0),(593,33,'ViewMLLDDDayReport','stime','本次断电开始时间','','datetime','',8,3,0,0,'',0,0,0,7,0,0,0,0,'','','2018-02-05 18:11:08',0,0),(594,33,'ViewMLLDDDayReport','etime','本次断电结束时间','','datetime','',8,3,0,0,'',0,0,0,8,0,0,0,0,'','','2018-02-05 18:11:08',0,0),(595,33,'ViewMLLDDDayReport','cursumtime','本次断电累计时间','','varchar','',14,0,0,0,'',0,0,0,9,0,0,0,0,'','','2018-02-05 18:11:08',0,0),(596,33,'ViewMLLDDDayReport','ssz','实时值','','nvarchar','',20,0,0,0,'',0,0,0,10,0,0,0,0,'','','2018-02-05 18:11:08',0,0),(597,33,'ViewMLLDDDayReport','zdz','本次最大值','','real','',4,0,0,0,'',0,0,0,11,0,0,0,0,'','','2018-02-05 18:11:08',0,0),(598,33,'ViewMLLDDDayReport','pjz','本次平均值','','real','',4,0,0,0,'',0,0,0,12,0,0,0,0,'','','2018-02-05 18:11:08',0,0),(599,33,'ViewMLLDDDayReport','zdzs','本次最大值时刻','','datetime','',8,3,0,0,'',0,0,0,13,0,0,0,0,'','','2018-02-05 18:11:08',0,0),(600,33,'ViewMLLDDDayReport','cs','处理措施','','ntext','',16,0,0,0,'',0,0,0,14,0,0,0,0,'','','2018-02-05 18:11:08',1,0),(601,33,'ViewMLLDDDayReport','kzk','控制口','','ntext','',16,0,0,0,'',0,0,0,15,0,0,0,0,'','','2018-02-05 18:11:08',0,0),(602,33,'ViewMLLDDDayReport','kdid','馈电IDS','','nvarchar','',100,0,0,0,'',0,0,0,16,0,0,0,0,'','','2018-02-05 18:11:08',0,0),(603,33,'ViewMLLDDDayReport','JCDEFPoint','断电区域测点号','','nvarchar','',12,0,0,0,'',0,0,0,17,0,0,0,0,'','','2018-02-05 18:11:08',0,0),(604,33,'ViewMLLDDDayReport','wz','断电区域','','nvarchar','',60,0,0,0,'',0,0,0,18,0,0,0,0,'','','2018-02-05 18:11:08',0,0),(605,33,'ViewMLLDDDayReport','pid','关联馈电异常','','nvarchar','',92,0,0,0,'',0,0,0,19,0,0,0,0,'','','2018-02-05 18:11:08',0,0),(608,33,'ViewMLLDDDayReport','bid','主键ID','','varchar','',120,0,0,1,'',0,0,0,22,0,0,0,0,'','','2018-02-05 18:11:08',0,0),(609,33,'ViewMLLDDDayReport','bida','关联最大值','','varchar','',120,0,0,0,'',0,0,0,23,1,179,2882,0,'','','2018-02-05 18:11:08',0,0),(616,33,'ViewMLLDDDayReport','datsearch','查询时间','','datetime','',8,3,1,0,'',0,0,0,27,0,0,0,0,'','','2018-02-05 18:11:08',0,0),(618,33,'ViewMLLDDDayReport','kdstime','本次馈电开始时间','','datetime','',8,3,0,0,'',0,0,0,29,0,0,0,0,'','','2018-02-05 18:11:08',0,0),(619,33,'ViewMLLDDDayReport','kdetime','本次馈电结束时间','','datetime','',8,3,0,0,'',0,0,0,30,0,0,0,0,'','','2018-02-05 18:11:08',0,0),(620,33,'ViewMLLDDDayReport','kdcursumtime','本次馈电累计时间','','varchar','',14,0,0,0,'',0,0,0,31,0,0,0,0,'','','2018-02-05 18:11:08',0,0),(623,33,'ViewMLLDDDayReport','toid','馈电异常去向ID','','int','',4,0,0,0,'',0,0,0,34,0,0,0,0,'','','2018-02-05 18:11:08',0,0),(624,34,'ViewMLLTJZReport','id','主键ID','','int','',4,0,1,1,'',0,0,0,1,0,0,0,0,'','','2017-10-12 17:02:27',0,0),(625,34,'ViewMLLTJZReport','fzh','分站号','','smallint','',2,0,1,0,'',0,0,0,2,0,0,0,0,'','','2017-10-12 17:02:27',0,0),(626,34,'ViewMLLTJZReport','kh','口号','','tinyint','',1,0,1,0,'',0,0,0,3,0,0,0,0,'','','2017-10-12 17:02:27',0,0),(627,34,'ViewMLLTJZReport','devid','设备类型','','tinyint','',1,0,0,0,'',0,0,0,4,1,10,178,0,'AllJC_Dev','','2017-10-12 17:02:27',0,0),(628,34,'ViewMLLTJZReport','wzid','安装位置','','smallint','',2,0,0,0,'',0,0,0,5,1,8,136,0,'AllJC_WZ','','2017-10-12 17:02:27',0,0),(629,34,'ViewMLLTJZReport','zdz','最大值','','real','',4,0,0,0,'',0,0,0,6,0,0,0,0,'','','2017-10-12 17:02:27',0,0),(630,34,'ViewMLLTJZReport','pjz','平均值','','float','',8,0,0,0,'',0,0,0,7,0,0,0,0,'','','2017-10-12 17:02:27',0,0),(631,34,'ViewMLLTJZReport','zxz','最小值','','real','',4,0,0,0,'',0,0,0,8,0,0,0,0,'','','2017-10-12 17:02:27',0,0),(632,34,'ViewMLLTJZReport','ssz','实时值','','real','',4,0,0,0,'',0,0,0,9,0,0,0,0,'','','2017-10-12 17:02:27',0,0),(633,34,'ViewMLLTJZReport','zdzs','最大值时刻','','int','',4,0,0,0,'',0,0,0,10,0,0,0,0,'','','2017-10-12 17:02:27',0,0),(634,34,'ViewMLLTJZReport','zxzs','最小值时刻','','int','',4,0,0,0,'',0,0,0,11,0,0,0,0,'','','2017-10-12 17:02:27',0,0),(635,34,'ViewMLLTJZReport','sj','时间','','smallint','',2,0,0,0,'',0,0,0,12,0,0,0,0,'','','2017-10-12 17:02:27',0,0),(636,34,'ViewMLLTJZReport','upflag','请录入字段名','','nvarchar','',2,0,0,0,'',0,0,0,13,0,0,0,0,'','','2017-10-12 17:02:27',0,0),(637,34,'ViewMLLTJZReport','point','测点号','','nvarchar','',100,0,0,0,'',0,0,0,14,0,0,0,0,'AllPointMnl','','2017-10-12 17:02:27',0,1),(638,34,'ViewMLLTJZReport','sjhour','小时','','nvarchar','',6,0,0,0,'',0,0,0,15,0,0,0,0,'','','2017-10-12 17:02:27',0,0),(639,34,'ViewMLLTJZReport','timer','开始时间','','datetime','',8,3,0,0,'',0,0,0,16,0,0,0,0,'','','2017-10-12 17:02:27',0,0),(640,34,'ViewMLLTJZReport','timerend','结束时间','','datetime','',8,3,0,0,'',0,0,0,17,0,0,0,0,'','','2017-10-12 17:02:27',0,0),(641,34,'ViewMLLTJZReport','bid','关联最大值ID','','varchar','',220,0,0,0,'',0,0,0,18,1,182,2904,0,'','','2017-10-12 17:02:27',0,0),(642,34,'ViewMLLTJZReport','datsearch','查询时间','','datetime','',8,3,1,0,'',0,0,0,19,0,0,0,0,'','','2017-10-12 17:02:27',1,0),(643,34,'ViewMLLTJZReport','timer1','开始时间(小时)','','varchar','',19,0,0,0,'',0,0,0,20,0,0,0,0,'','','2017-10-12 17:02:27',0,0),(644,34,'ViewMLLTJZReport','timerenda','结束时间(小时)','','varchar','',19,0,0,0,'',0,0,0,21,0,0,0,0,'','','2017-10-12 17:02:27',0,0),(645,38,'ViewMLLBJDDReport','fzh','分站号','','smallint','',2,0,1,0,'',0,0,0,1,0,0,0,0,'','','2017-09-11 11:27:45',0,0),(646,38,'ViewMLLBJDDReport','kh','口号','','tinyint','',1,0,1,0,'',0,0,0,2,0,0,0,0,'','','2017-09-11 11:27:45',0,0),(647,38,'ViewMLLBJDDReport','devid','设备类型','','tinyint','',1,0,0,0,'',0,0,0,3,1,10,178,0,'AllJC_Dev','','2017-09-11 11:27:45',0,0),(648,38,'ViewMLLBJDDReport','wzid','安装位置','','smallint','',2,0,0,0,'',0,0,0,4,1,8,136,0,'AllJC_WZ','','2017-09-11 11:27:45',0,0),(649,38,'ViewMLLBJDDReport','point','测点号','','nvarchar','',100,0,0,0,'',0,0,0,5,0,0,0,0,'AllPointMnl','','2017-09-11 11:27:45',0,1),(650,38,'ViewMLLBJDDReport','type','类型 ','','tinyint','',1,0,0,0,'',0,0,0,6,0,0,0,0,'','','2017-09-11 11:27:45',0,0),(651,38,'ViewMLLBJDDReport','stime','开始时间','','datetime','',8,3,0,0,'',0,0,0,7,0,0,0,0,'','','2017-09-11 11:27:45',0,0),(652,38,'ViewMLLBJDDReport','etime','结束时间','','datetime','',8,3,0,0,'',0,0,0,8,0,0,0,0,'','','2017-09-11 11:27:45',0,0),(653,38,'ViewMLLBJDDReport','cursumtime','本次累计时间','','varchar','',14,0,0,0,'',0,0,0,9,0,0,0,0,'','','2017-09-11 11:27:45',0,0),(654,38,'ViewMLLBJDDReport','ssz','实时值','','nvarchar','',20,0,0,0,'',0,0,0,10,0,0,0,0,'','','2017-09-11 11:27:45',0,0),(655,38,'ViewMLLBJDDReport','zdz','最大值','','real','',4,0,0,0,'',0,0,0,11,0,0,0,0,'','','2017-09-11 11:27:45',0,0),(656,38,'ViewMLLBJDDReport','pjz','平均值','','real','',4,0,0,0,'',0,0,0,12,0,0,0,0,'','','2017-09-11 11:27:45',0,0),(657,38,'ViewMLLBJDDReport','zdzs','最大值时刻','','datetime','',8,3,0,0,'',0,0,0,13,0,0,0,0,'','','2017-09-11 11:27:45',0,0),(658,38,'ViewMLLBJDDReport','cs','处理措施','','ntext','',16,0,0,0,'',0,0,0,14,0,0,0,0,'','','2017-09-11 11:27:45',1,0),(659,38,'ViewMLLBJDDReport','kzk','控件口','','ntext','',16,0,0,0,'',0,0,0,15,0,0,0,0,'','','2017-09-11 11:27:45',0,0),(660,38,'ViewMLLBJDDReport','bid','主键ID','','varchar','',120,0,0,1,'',0,0,0,16,0,0,0,0,'','','2017-09-11 11:27:45',0,0),(661,38,'ViewMLLBJDDReport','kdid','馈电IDs','','nvarchar','',100,0,0,0,'',0,0,0,17,0,0,0,0,'','','2017-09-11 11:27:45',0,0),(662,38,'ViewMLLBJDDReport','datsearch','查询时间','','datetime','',8,3,1,0,'',0,0,0,18,0,0,0,0,'','','2017-09-11 11:27:45',0,0),(663,38,'ViewMLLBJDDReport','typename','类型名称','','varchar','',4,0,1,0,'',0,0,0,19,0,0,0,0,'','','2017-09-11 11:27:45',0,0),(664,38,'ViewMLLBJDDReport','sumcount','累计次数','','int','',4,0,0,0,'',0,0,0,20,0,0,0,0,'','','2017-09-11 11:27:45',0,0),(665,38,'ViewMLLBJDDReport','sumtime','累计时间','','nvarchar','',16,0,0,0,'',0,0,0,21,0,0,0,0,'','','2017-09-11 11:27:45',0,0),(666,39,'ViewKGLBJDDDayReport','fzh','分站号','','smallint','',2,0,1,0,'',0,0,0,1,0,0,0,0,'','','2018-01-25 11:15:10',0,0),(667,39,'ViewKGLBJDDDayReport','kh','口号','','tinyint','',1,0,1,0,'',0,0,0,2,0,0,0,0,'','','2018-01-25 11:15:10',0,0),(668,39,'ViewKGLBJDDDayReport','devid','设备类型','','tinyint','',1,0,0,0,'',0,0,0,3,1,10,178,0,'AllJC_Dev','','2018-01-25 11:15:10',0,0),(669,39,'ViewKGLBJDDDayReport','wzid','安装位置','','smallint','',2,0,0,0,'',0,0,0,4,1,8,136,0,'AllJC_WZ','','2018-01-25 11:15:10',0,0),(670,39,'ViewKGLBJDDDayReport','point','测点号','','nvarchar','',12,0,1,0,'',0,0,0,5,0,0,0,0,'AllPointKgl','','2018-01-25 11:15:10',0,1),(671,39,'ViewKGLBJDDDayReport','type','类型','','tinyint','',1,0,0,0,'',0,0,0,6,0,0,0,0,'','','2018-01-25 11:15:10',0,0),(672,39,'ViewKGLBJDDDayReport','stime','本次开始时间','','datetime','',8,3,0,0,'',0,0,0,7,0,0,0,0,'','','2018-01-25 11:15:10',0,0),(673,39,'ViewKGLBJDDDayReport','etime','本次结束时间','','datetime','',8,3,0,0,'',0,0,0,8,0,0,0,0,'','','2018-01-25 11:15:10',0,0),(674,39,'ViewKGLBJDDDayReport','cursumtime','本次累计时间','','varchar','',14,0,0,0,'',0,0,0,9,0,0,0,0,'','','2018-01-25 11:15:10',0,0),(679,39,'ViewKGLBJDDDayReport','cs','处理措施及时刻','','ntext','',16,0,0,0,'',0,0,0,14,0,0,0,0,'','','2018-01-25 11:15:10',0,0),(680,39,'ViewKGLBJDDDayReport','kzk','控制口','','ntext','',16,0,0,0,'',0,0,0,15,0,0,0,0,'','','2018-01-25 11:15:10',0,0),(681,39,'ViewKGLBJDDDayReport','kdid','馈电ids','','nvarchar','',100,0,0,0,'',0,0,0,16,0,0,0,0,'','','2018-01-25 11:15:10',0,0),(682,39,'ViewKGLBJDDDayReport','JCDEFPoint','断电区域测点号','','nvarchar','',12,0,0,0,'',0,0,0,17,0,0,0,0,'','','2018-01-25 11:15:10',0,0),(683,39,'ViewKGLBJDDDayReport','wz','断电区域','','nvarchar','',60,0,0,0,'',0,0,0,18,0,0,0,0,'','','2018-01-25 11:15:10',0,0),(684,39,'ViewKGLBJDDDayReport','pid','关联馈电异常ID','','nvarchar','',92,0,0,0,'',0,0,0,19,0,0,0,0,'','','2018-01-25 11:15:10',0,0),(685,39,'ViewKGLBJDDDayReport','sumcount','累计次数','','int','',4,0,0,0,'',0,0,0,20,0,0,0,0,'','','2018-01-25 11:15:10',0,0),(686,39,'ViewKGLBJDDDayReport','sumtime','累计时间','','nvarchar','',16,0,0,0,'',0,0,0,21,0,0,0,0,'','','2018-01-25 11:15:10',0,0),(687,39,'ViewKGLBJDDDayReport','bid','主键ID','','varchar','',150,0,0,1,'',0,0,0,22,0,0,0,0,'','','2018-01-25 11:15:10',0,0),(688,39,'ViewKGLBJDDDayReport','bida','请录入字段名','','varchar','',150,0,0,0,'',0,0,0,23,0,0,0,0,'','','2018-01-25 11:15:10',0,0),(689,39,'ViewKGLBJDDDayReport','datsearch','查询时间','','datetime','',8,3,1,0,'',0,0,0,24,0,0,0,0,'','','2018-01-25 11:15:10',1,0),(690,39,'ViewKGLBJDDDayReport','kdsumcount','馈电次数','','int','',4,0,0,0,'',0,0,0,25,0,0,0,0,'','','2018-01-25 11:15:10',0,0),(691,39,'ViewKGLBJDDDayReport','kdsumtime','馈电时间','','nvarchar','',16,0,0,0,'',0,0,0,26,0,0,0,0,'','','2018-01-25 11:15:10',0,0),(692,39,'ViewKGLBJDDDayReport','toid','馈电异常去向ID','','int','',4,0,0,0,'',0,0,0,27,0,0,0,0,'','','2018-01-25 11:15:10',0,0),(693,39,'ViewKGLBJDDDayReport','kdidpoint','馈电去向测点','','nvarchar','',12,0,0,0,'',0,0,0,28,0,0,0,0,'','','2018-01-25 11:15:10',0,0),(694,39,'ViewKGLBJDDDayReport','kdstime','馈电开始时间','','datetime','',8,3,0,0,'',0,0,0,29,0,0,0,0,'','','2018-01-25 11:15:10',0,0),(695,39,'ViewKGLBJDDDayReport','kdetime','馈电结束时间','','datetime','',8,3,0,0,'',0,0,0,30,0,0,0,0,'','','2018-01-25 11:15:10',0,0),(696,39,'ViewKGLBJDDDayReport','kdcursumtime','馈电累计时间','','varchar','',14,0,0,0,'',0,0,0,31,0,0,0,0,'','','2018-01-25 11:15:10',0,0),(697,39,'ViewKGLBJDDDayReport','state','状态ID','','int','',4,0,0,0,'',0,0,0,28,0,0,0,0,'','','2018-01-25 11:15:10',0,0),(698,39,'ViewKGLBJDDDayReport','statename','状态名称','','nvarchar','',20,0,0,0,'',0,0,0,29,0,0,0,0,'','','2018-01-25 11:15:10',0,0),(699,39,'ViewKGLBJDDDayReport','kdstate','馈电状态','','nvarchar','',20,0,0,0,'',0,0,0,30,0,0,0,0,'','','2018-01-25 11:15:10',0,0),(700,39,'ViewKGLBJDDDayReport','isalarm','报警标志','','bit','',1,0,0,0,'',0,0,0,31,0,0,0,0,'','','2018-01-25 11:15:10',0,0),(701,40,'ViewJKSBGZDayReport','fzh','分站号','','smallint','',2,0,1,0,'',0,0,0,1,0,0,0,0,'','','2018-01-25 11:28:15',0,0),(702,40,'ViewJKSBGZDayReport','kh','口号','','tinyint','',1,0,1,0,'',0,0,0,2,0,0,0,0,'','','2018-01-25 11:28:15',0,0),(703,40,'ViewJKSBGZDayReport','devid','设备类型','','tinyint','',1,0,0,0,'',0,0,0,3,1,10,178,0,'AllJC_Dev','','2018-01-25 11:28:15',0,0),(704,40,'ViewJKSBGZDayReport','wzid','安装位置','','smallint','',2,0,0,0,'',0,0,0,4,1,8,136,0,'AllJC_WZ','','2018-01-25 11:28:15',0,0),(705,40,'ViewJKSBGZDayReport','point','测点号','','nvarchar','',12,0,1,0,'',0,0,0,5,0,0,0,0,'AllPoint','','2018-01-25 11:28:15',0,1),(706,40,'ViewJKSBGZDayReport','type','数据状态','','tinyint','',1,0,0,0,'',0,0,0,6,1,43,753,0,'AllTypeCode','','2018-01-25 11:28:15',0,0),(707,40,'ViewJKSBGZDayReport','stime','本次开始时间','','datetime','',8,3,0,0,'',0,0,0,7,0,0,0,0,'','','2018-01-25 11:28:15',0,0),(708,40,'ViewJKSBGZDayReport','etime','本次结束时间','','datetime','',8,3,0,0,'',0,0,0,8,0,0,0,0,'','','2018-01-25 11:28:15',0,0),(709,40,'ViewJKSBGZDayReport','cursumtime','本次累计时间','','varchar','',14,0,0,0,'',0,0,0,9,0,0,0,0,'','','2018-01-25 11:28:15',0,0),(710,40,'ViewJKSBGZDayReport','ssz','实时值','','nvarchar','',20,0,0,0,'',0,0,0,10,0,0,0,0,'','','2018-01-25 11:28:15',0,0),(711,40,'ViewJKSBGZDayReport','zdz','最大值','','real','',4,0,0,0,'',0,0,0,11,0,0,0,0,'','','2018-01-25 11:28:15',0,0),(712,40,'ViewJKSBGZDayReport','pjz','平均值','','real','',4,0,0,0,'',0,0,0,12,0,0,0,0,'','','2018-01-25 11:28:15',0,0),(713,40,'ViewJKSBGZDayReport','zdzs','最大值时刻','','datetime','',8,3,0,0,'',0,0,0,13,0,0,0,0,'','','2018-01-25 11:28:15',0,0),(714,40,'ViewJKSBGZDayReport','cs','处理措施','','ntext','',16,0,0,0,'',0,0,0,14,0,0,0,0,'','','2018-01-25 11:28:15',1,0),(715,40,'ViewJKSBGZDayReport','upflag','请录入字段名','','nvarchar','',2,0,0,0,'',0,0,0,15,0,0,0,0,'','','2018-01-25 11:28:15',0,0),(716,40,'ViewJKSBGZDayReport','bid','主键ID','','varchar','',120,0,0,1,'',0,0,0,16,0,0,0,0,'','','2018-01-25 11:28:15',0,0),(717,40,'ViewJKSBGZDayReport','bida','请录入字段名','','varchar','',120,0,0,0,'',0,0,0,17,0,0,0,0,'','','2018-01-25 11:28:15',0,0),(718,40,'ViewJKSBGZDayReport','datsearch','查询时间','','datetime','',8,3,1,0,'',0,0,0,18,0,0,0,0,'','','2018-01-25 11:28:15',0,0),(719,40,'ViewJKSBGZDayReport','sumcount','累计次数','','int','',4,0,0,1,'',0,0,0,19,0,0,0,0,'','','2018-01-25 11:28:15',0,0),(720,40,'ViewJKSBGZDayReport','sumtime','累计时间','','nvarchar','',16,0,0,0,'',0,0,0,20,0,0,0,0,'','','2018-01-25 11:28:15',0,0),(738,42,'BFT_EnumCode','EnumCodeID','枚举ID','枚举ID','int','',4,0,1,1,'',0,0,0,1,0,0,0,0,'','','2015-06-25 13:49:05',0,0),(739,42,'BFT_EnumCode','EnumTypeID','枚举类型ID','枚举类型ID','int','',4,0,0,0,'',0,0,0,2,0,0,0,0,'','','2015-06-25 13:49:05',0,0),(740,42,'BFT_EnumCode','lngEnumValue','枚举值','枚举值','int','',4,0,1,0,'',0,0,0,3,0,0,0,0,'','','2015-06-25 13:49:05',0,0),(741,42,'BFT_EnumCode','strEnumDisplay','枚举显示值','枚举显示值','varchar','',200,0,1,0,'',0,0,0,4,0,0,0,0,'','','2015-06-25 13:49:05',0,0),(742,42,'BFT_EnumCode','blnDefault','是否为默认','是否为默认','bit','',1,0,0,0,'',0,0,0,5,0,0,0,0,'','','2015-06-25 13:49:05',0,0),(743,42,'BFT_EnumCode','blnPredefined','是否为系统预制','是否为系统预制','bit','',1,0,0,0,'',0,0,0,6,0,0,0,0,'','','2015-06-25 13:49:05',0,0),(744,42,'BFT_EnumCode','lngRowIndex','显示顺序','显示顺序','int','',4,0,0,0,'',0,0,0,7,0,0,0,0,'','','2015-06-25 13:49:05',0,0),(745,42,'BFT_EnumCode','blnEnable','是否有效','是否有效','bit','',1,0,0,0,'',0,0,0,8,0,0,0,0,'','','2015-06-25 13:49:05',0,0),(746,42,'BFT_EnumCode','lngEnumValue1','枚举扩展值1','枚举扩展值1','datetime','',8,3,0,0,'',0,0,0,9,0,0,0,0,'','','2015-06-25 13:49:05',0,0),(747,42,'BFT_EnumCode','lngEnumValue2','枚举扩展值2','枚举扩展值2','decimal','',9,2,0,0,'',0,0,0,10,0,0,0,0,'','','2015-06-25 13:49:05',0,0),(748,42,'BFT_EnumCode','lngEnumValue3','枚举扩展值3','枚举扩展值3','varchar','',200,0,0,0,'',0,0,0,11,0,0,0,0,'','','2015-06-25 13:49:05',0,0),(749,42,'BFT_EnumCode','lngEnumValue4','枚举扩展值4','枚举扩展值4','varchar','',200,0,0,0,'',0,0,0,12,0,0,0,0,'','','2015-06-25 13:49:05',0,0),(750,42,'BFT_EnumCode','strDescription','开发描述信息','开发描述信息','varchar','',100,0,0,0,'',0,0,0,13,0,0,0,0,'','','2015-06-25 13:49:05',0,0),(751,43,'BFT_EnumCode','EnumCodeID','枚举ID','枚举ID','int','',4,0,1,0,'',0,0,0,1,0,0,0,0,'','','2017-07-19 10:05:11',0,0),(752,43,'BFT_EnumCode','EnumTypeID','枚举类型ID','枚举类型ID','int','',4,0,0,0,'',0,0,0,2,0,0,0,0,'','','2017-07-19 10:05:11',0,0),(753,43,'BFT_EnumCode','lngEnumValue','类型ID','枚举值','int','',4,0,1,1,'',0,0,0,3,0,0,0,0,'','','2017-07-19 10:05:11',0,0),(754,43,'BFT_EnumCode','strEnumDisplay','数据状态名称','枚举显示值','varchar','',200,0,1,0,'',0,0,0,4,0,0,0,0,'','','2017-07-19 10:05:11',0,0),(755,43,'BFT_EnumCode','blnDefault','是否为默认','是否为默认','bit','',1,0,0,0,'',0,0,0,5,0,0,0,0,'','','2017-07-19 10:05:11',0,0),(756,43,'BFT_EnumCode','blnPredefined','是否为系统预制','是否为系统预制','bit','',1,0,0,0,'',0,0,0,6,0,0,0,0,'','','2017-07-19 10:05:11',0,0),(757,43,'BFT_EnumCode','lngRowIndex','显示顺序','显示顺序','int','',4,0,0,0,'',0,0,0,7,0,0,0,0,'','','2017-07-19 10:05:11',0,0),(758,43,'BFT_EnumCode','blnEnable','是否有效','是否有效','bit','',1,0,0,0,'',0,0,0,8,0,0,0,0,'','','2017-07-19 10:05:11',0,0),(759,43,'BFT_EnumCode','lngEnumValue1','枚举扩展值1','枚举扩展值1','datetime','',8,3,0,0,'',0,0,0,9,0,0,0,0,'','','2017-07-19 10:05:11',0,0),(760,43,'BFT_EnumCode','lngEnumValue2','枚举扩展值2','枚举扩展值2','decimal','',9,2,0,0,'',0,0,0,10,0,0,0,0,'','','2017-07-19 10:05:11',0,0),(761,43,'BFT_EnumCode','lngEnumValue3','枚举扩展值3','枚举扩展值3','varchar','',200,0,0,0,'',0,0,0,11,0,0,0,0,'','','2017-07-19 10:05:11',0,0),(762,43,'BFT_EnumCode','lngEnumValue4','枚举扩展值4','枚举扩展值4','varchar','',200,0,0,0,'',0,0,0,12,0,0,0,0,'','','2017-07-19 10:05:11',0,0),(763,43,'BFT_EnumCode','strDescription','开发描述信息','开发描述信息','varchar','',100,0,0,0,'',0,0,0,13,0,0,0,0,'','','2017-07-19 10:05:11',0,0),(764,44,'ViewJC_KGStateMonth1','fzh','分站号','','smallint','',2,0,1,0,'',0,0,0,0,0,0,0,0,'','','2015-07-10 11:52:49',0,0),(765,44,'ViewJC_KGStateMonth1','kh','口号','','tinyint','',1,0,1,0,'',0,0,0,0,0,0,0,0,'','','2015-07-10 11:52:49',0,0),(766,44,'ViewJC_KGStateMonth1','devid','设备类型','','tinyint','',1,0,0,0,'',0,0,0,0,1,10,178,0,'AllJC_Dev','','2015-07-10 11:52:49',0,0),(767,44,'ViewJC_KGStateMonth1','wzid','安装位置','','smallint','',2,0,0,0,'',0,0,0,0,1,8,136,0,'AllJC_WZ','','2015-07-10 11:52:49',0,0),(768,44,'ViewJC_KGStateMonth1','point','测点号','','nvarchar','',12,0,1,0,'',0,0,0,0,0,0,0,0,'','','2015-07-10 11:52:49',0,0),(769,44,'ViewJC_KGStateMonth1','state','状态值','','nvarchar','',20,0,0,0,'',0,0,0,0,0,0,0,0,'','','2015-07-10 11:52:49',0,0),(770,44,'ViewJC_KGStateMonth1','stime','开始时间','','datetime','',8,3,0,0,'',0,0,0,0,0,0,0,0,'','','2015-07-10 11:52:49',0,0),(771,44,'ViewJC_KGStateMonth1','etime','结束时间','','datetime','',8,3,0,0,'',0,0,0,0,0,0,0,0,'','','2015-07-10 11:52:49',0,0),(772,44,'ViewJC_KGStateMonth1','ssz','值','','nvarchar','',20,0,0,0,'',0,0,0,0,0,0,0,0,'','','2015-07-10 11:52:49',0,0),(773,44,'ViewJC_KGStateMonth1','sumcount','累计变动次数','','int','',4,0,0,0,'',0,0,0,0,0,0,0,0,'','  ','2015-07-10 11:52:49',0,0),(774,44,'ViewJC_KGStateMonth1','sumtime','累计运行时间','','nvarchar','',16,0,0,0,'',0,0,0,0,0,0,0,0,'','','2015-07-10 11:52:49',0,0),(775,44,'ViewJC_KGStateMonth1','pid','主键ID','','varchar','',150,0,0,1,'',0,0,0,0,0,0,0,0,'','','2015-07-10 11:52:49',0,0),(776,44,'ViewJC_KGStateMonth1','datSearch','查询时间','','datetime','',8,3,1,0,'',0,0,0,0,0,0,0,0,'','','2015-07-10 11:52:49',0,0),(777,6,'BFT_request','BZ1','菜单方法名称','菜单方法名称（已使用）','varchar','',200,0,1,0,'',0,0,0,11,0,0,0,0,'','','2015-07-23 11:48:51',0,0),(778,6,'BFT_request','BZ2','请录入字段名','','varchar','',200,0,1,0,'',0,0,0,12,0,0,0,0,'','','2015-07-23 11:48:51',0,0),(779,6,'BFT_request','BZ3','请录入字段名','','varchar','',200,0,1,0,'',0,0,0,13,0,0,0,0,'','','2015-07-23 11:48:51',0,0),(780,6,'BFT_request','BZ4','请录入字段名','','varchar','',200,0,1,0,'',0,0,0,14,0,0,0,0,'','','2015-07-23 11:48:51',0,0),(781,6,'BFT_request','BZ5','请录入字段名','','varchar','',200,0,1,0,'',0,0,0,15,0,0,0,0,'','','2015-07-23 11:48:51',0,0),(2231,147,'BFT_EnumCode','EnumCodeID','枚举ID','枚举ID','int','',4,0,1,0,'',0,0,0,1,0,0,0,0,'','','2015-07-30 14:23:54',0,0),(2232,147,'BFT_EnumCode','EnumTypeID','枚举类型ID','枚举类型ID','int','',4,0,0,0,'',0,0,0,2,0,0,0,0,'','','2015-07-30 14:23:54',0,0),(2233,147,'BFT_EnumCode','lngEnumValue','性质ID','性质ID','int','',4,0,1,1,'',0,0,0,3,0,0,0,0,'','','2015-07-30 14:23:54',0,0),(2234,147,'BFT_EnumCode','strEnumDisplay','设备性质','设备性质','varchar','',200,0,1,0,'',0,0,0,4,0,0,0,0,'','','2015-07-30 14:23:54',0,0),(2235,147,'BFT_EnumCode','blnDefault','是否为默认','是否为默认','bit','',1,0,0,0,'',0,0,0,5,0,0,0,0,'','','2015-07-30 14:23:54',0,0),(2236,147,'BFT_EnumCode','blnPredefined','是否为系统预制','是否为系统预制','bit','',1,0,0,0,'',0,0,0,6,0,0,0,0,'','','2015-07-30 14:23:54',0,0),(2237,147,'BFT_EnumCode','lngRowIndex','显示顺序','显示顺序','int','',4,0,0,0,'',0,0,0,7,0,0,0,0,'','','2015-07-30 14:23:54',0,0),(2238,147,'BFT_EnumCode','blnEnable','是否有效','是否有效','bit','',1,0,0,0,'',0,0,0,8,0,0,0,0,'','','2015-07-30 14:23:54',0,0),(2239,147,'BFT_EnumCode','lngEnumValue1','枚举扩展值1','枚举扩展值1','datetime','',8,3,0,0,'',0,0,0,9,0,0,0,0,'','','2015-07-30 14:23:54',0,0),(2240,147,'BFT_EnumCode','lngEnumValue2','枚举扩展值2','枚举扩展值2','decimal','',9,2,0,0,'',0,0,0,10,0,0,0,0,'','','2015-07-30 14:23:54',0,0),(2241,147,'BFT_EnumCode','lngEnumValue3','枚举扩展值3','枚举扩展值3','varchar','',200,0,0,0,'',0,0,0,11,0,0,0,0,'','','2015-07-30 14:23:54',0,0),(2242,147,'BFT_EnumCode','lngEnumValue4','枚举扩展值4','枚举扩展值4','varchar','',200,0,0,0,'',0,0,0,12,0,0,0,0,'','','2015-07-30 14:23:54',0,0),(2243,147,'BFT_EnumCode','strDescription','开发描述信息','开发描述信息','varchar','',100,0,0,0,'',0,0,0,13,0,0,0,0,'','','2015-07-30 14:23:54',0,0),(2246,148,'viewsbrunlogreport','id','主键ID','','bigint','',0,0,1,1,'',0,0,0,1,0,0,0,0,'','','2015-09-06 15:52:43',0,0),(2247,148,'viewsbrunlogreport','fzh','分站号','','smallint','',0,0,1,0,'',0,0,0,2,0,0,0,0,'','','2015-09-06 15:52:43',0,0),(2248,148,'viewsbrunlogreport','kh','口号','','smallint','',0,0,1,0,'',0,0,0,3,0,0,0,0,'','','2015-09-06 15:52:43',0,0),(2249,148,'viewsbrunlogreport','devid','设备类型','','int','',0,0,1,0,'',0,0,0,4,1,10,178,0,'AllJC_Dev','','2015-09-06 15:52:43',0,0),(2250,148,'viewsbrunlogreport','wzid','安装位置','','int','',0,0,1,0,'',0,0,0,5,1,8,136,0,'AllJC_WZ','','2015-09-06 15:52:43',0,0),(2251,148,'viewsbrunlogreport','point','测点号','','varchar','',10,0,1,0,'',0,0,0,6,0,0,0,0,'AllPoint','','2015-09-06 15:52:43',0,0),(2252,148,'viewsbrunlogreport','type','类型编码','','smallint','',0,0,1,0,'',0,0,0,7,1,43,753,0,'AllTypeCode','','2015-09-06 15:52:43',0,0),(2253,148,'viewsbrunlogreport','val','值','','varchar','',10,0,1,0,'',0,0,0,8,0,0,0,0,'','','2015-09-06 15:52:43',0,0),(2254,148,'viewsbrunlogreport','timer','时间','','datetime','',0,0,1,0,'',0,0,0,9,0,0,0,0,'','','2015-09-06 15:52:43',0,0),(2255,148,'viewsbrunlogreport','remark','备注','','text','',65535,0,1,0,'',0,0,0,10,0,0,0,0,'','','2015-09-06 15:52:43',0,0),(2256,148,'viewsbrunlogreport','upflag','请录入字段名','','varchar','',1,0,1,0,'',0,0,0,11,0,0,0,0,'','','2015-09-06 15:52:43',1,0),(2257,148,'viewsbrunlogreport','datsearch','查询时间','','datetime','',0,0,1,0,'',0,0,0,12,0,0,0,0,'','','2015-09-06 15:52:43',0,0),(2258,148,'viewsbrunlogreport','valnumber','值(转化为数字后)','','decimal','',0,2,1,0,'',0,0,0,13,0,0,0,0,'','','2015-09-06 15:52:43',0,0),(2259,149,'viewmcrunlogreport','ID','主键ID','','bigint','',0,0,1,1,'',0,0,0,1,0,0,0,0,'','','2015-09-17 09:47:10',0,0),(2260,149,'viewmcrunlogreport','fzh','分站号','','smallint','',0,0,1,0,'',0,0,0,2,0,0,0,0,'','','2015-09-17 09:47:10',0,0),(2261,149,'viewmcrunlogreport','kh','口号','','smallint','',0,0,1,0,'',0,0,0,3,0,0,0,0,'','','2015-09-17 09:47:10',0,0),(2262,149,'viewmcrunlogreport','dzh','地址号','','smallint','',0,0,1,0,'',0,0,0,4,0,0,0,0,'','','2015-09-17 09:47:10',0,0),(2263,149,'viewmcrunlogreport','point','测点号','','varchar','',10,0,1,0,'',0,0,0,5,0,0,0,0,'AllPoint','','2015-09-17 09:47:10',0,0),(2264,149,'viewmcrunlogreport','devid','设备类型','','int','',0,0,1,0,'',0,0,0,6,1,10,178,0,'AllJC_Dev','','2015-09-17 09:47:10',0,0),(2265,149,'viewmcrunlogreport','wzid','安装位置','','int','',0,0,1,0,'',0,0,0,7,1,8,136,0,'AllJC_WZ','','2015-09-17 09:47:10',0,0),(2266,149,'viewmcrunlogreport','timer','时间','','datetime','',0,0,1,0,'',0,0,0,8,0,0,0,0,'','','2015-09-17 09:47:10',0,0),(2267,149,'viewmcrunlogreport','ssz','数值','','float','',0,0,1,0,'',0,0,0,9,0,0,0,0,'','','2015-09-17 09:47:10',0,0),(2268,149,'viewmcrunlogreport','upflag','请录入字段名','','varchar','',1,0,1,0,'',0,0,0,10,0,0,0,0,'','','2015-09-17 09:47:10',1,0),(2269,149,'viewmcrunlogreport','datsearch','查询时间','','datetime','',0,0,1,0,'',0,0,0,11,0,0,0,0,'','','2015-09-17 09:47:10',0,0),(2270,150,'BFT_operatelog','OperateLogID','主键ID','','bigint','',0,0,1,1,'',0,0,0,1,0,0,0,0,'','','2015-07-31 15:54:35',0,0),(2271,150,'BFT_operatelog','UserName','操作用户','','varchar','',128,0,1,0,'',0,0,0,2,0,0,0,0,'','','2015-07-31 15:54:35',0,0),(2272,150,'BFT_operatelog','LoginIP','客户端IP','','varchar','',128,0,1,0,'',0,0,0,3,0,0,0,0,'','','2015-07-31 15:54:35',0,0),(2273,150,'BFT_operatelog','Type','操作类型','','int','',0,0,1,0,'',0,0,0,4,1,151,2279,0,'AllOperatorType','','2015-07-31 15:54:35',0,0),(2274,150,'BFT_operatelog','OperationContent','操作内容','','varchar','',4000,0,1,0,'',0,0,0,5,0,0,0,0,'','','2015-07-31 15:54:35',0,0),(2275,150,'BFT_operatelog','CreateTime','操作时间','','datetime','',0,0,1,0,'',0,0,0,6,0,0,0,0,'','','2015-07-31 15:54:35',0,0),(2276,150,'BFT_operatelog','Remark','备注','','varchar','',2000,0,1,0,'',0,0,0,7,0,0,0,0,'','','2015-07-31 15:54:35',0,0),(2277,151,'BFT_EnumCode','EnumCodeID','枚举ID','枚举ID','int','',4,0,1,0,'',0,0,0,1,0,0,0,0,'','','2015-07-31 15:52:46',0,0),(2278,151,'BFT_EnumCode','EnumTypeID','枚举类型ID','枚举类型ID','int','',4,0,0,0,'',0,0,0,2,0,0,0,0,'','','2015-07-31 15:52:46',0,0),(2279,151,'BFT_EnumCode','lngEnumValue','类型ID','类型ID','int','',4,0,1,1,'',0,0,0,3,0,0,0,0,'','','2015-07-31 15:52:46',0,0),(2280,151,'BFT_EnumCode','strEnumDisplay','类型名称','类型名称','varchar','',200,0,1,0,'',0,0,0,4,0,0,0,0,'','','2015-07-31 15:52:46',0,0),(2281,151,'BFT_EnumCode','blnDefault','是否为默认','是否为默认','bit','',1,0,0,0,'',0,0,0,5,0,0,0,0,'','','2015-07-31 15:52:46',0,0),(2282,151,'BFT_EnumCode','blnPredefined','是否为系统预制','是否为系统预制','bit','',1,0,0,0,'',0,0,0,6,0,0,0,0,'','','2015-07-31 15:52:46',0,0),(2283,151,'BFT_EnumCode','lngRowIndex','显示顺序','显示顺序','int','',4,0,0,0,'',0,0,0,7,0,0,0,0,'','','2015-07-31 15:52:46',0,0),(2284,151,'BFT_EnumCode','blnEnable','是否有效','是否有效','bit','',1,0,0,0,'',0,0,0,8,0,0,0,0,'','','2015-07-31 15:52:46',0,0),(2285,151,'BFT_EnumCode','lngEnumValue1','枚举扩展值1','枚举扩展值1','datetime','',8,3,0,0,'',0,0,0,9,0,0,0,0,'','','2015-07-31 15:52:46',0,0),(2286,151,'BFT_EnumCode','lngEnumValue2','枚举扩展值2','枚举扩展值2','decimal','',9,2,0,0,'',0,0,0,10,0,0,0,0,'','','2015-07-31 15:52:46',0,0),(2287,151,'BFT_EnumCode','lngEnumValue3','枚举扩展值3','枚举扩展值3','varchar','',200,0,0,0,'',0,0,0,11,0,0,0,0,'','','2015-07-31 15:52:46',0,0),(2288,151,'BFT_EnumCode','lngEnumValue4','枚举扩展值4','枚举扩展值4','varchar','',200,0,0,0,'',0,0,0,12,0,0,0,0,'','','2015-07-31 15:52:46',0,0),(2289,151,'BFT_EnumCode','strDescription','开发描述信息','开发描述信息','varchar','',100,0,0,0,'',0,0,0,13,0,0,0,0,'','','2015-07-31 15:52:46',0,0),(2298,10,'KJ_DeviceType','bz5','有效期','','int','',0,0,1,0,'',0,0,0,32,0,0,0,0,'','','2017-07-19 11:34:10',0,0),(2299,152,'BFT_EnumCode','EnumCodeID','枚举ID','枚举ID','int','',4,0,1,0,'',0,0,0,1,0,0,0,0,'','','2015-08-04 13:50:31',0,0),(2300,152,'BFT_EnumCode','EnumTypeID','枚举类型ID','枚举类型ID','int','',4,0,0,0,'',0,0,0,2,0,0,0,0,'','','2015-08-04 13:50:31',0,0),(2301,152,'BFT_EnumCode','lngEnumValue','型号ID','型号ID','int','',4,0,1,1,'',0,0,0,3,0,0,0,0,'','','2015-08-04 13:50:31',0,0),(2302,152,'BFT_EnumCode','strEnumDisplay','型号名称','型号名称','varchar','',200,0,1,0,'',0,0,0,4,0,0,0,0,'','','2015-08-04 13:50:31',0,0),(2303,152,'BFT_EnumCode','blnDefault','是否为默认','是否为默认','bit','',1,0,0,0,'',0,0,0,5,0,0,0,0,'','','2015-08-04 13:50:31',0,0),(2304,152,'BFT_EnumCode','blnPredefined','是否为系统预制','是否为系统预制','bit','',1,0,0,0,'',0,0,0,6,0,0,0,0,'','','2015-08-04 13:50:32',0,0),(2305,152,'BFT_EnumCode','lngRowIndex','显示顺序','显示顺序','int','',4,0,0,0,'',0,0,0,7,0,0,0,0,'','','2015-08-04 13:50:32',0,0),(2306,152,'BFT_EnumCode','blnEnable','是否有效','是否有效','bit','',1,0,0,0,'',0,0,0,8,0,0,0,0,'','','2015-08-04 13:50:32',0,0),(2307,152,'BFT_EnumCode','lngEnumValue1','枚举扩展值1','枚举扩展值1','datetime','',8,3,0,0,'',0,0,0,9,0,0,0,0,'','','2015-08-04 13:50:32',0,0),(2308,152,'BFT_EnumCode','lngEnumValue2','枚举扩展值2','枚举扩展值2','decimal','',9,2,0,0,'',0,0,0,10,0,0,0,0,'','','2015-08-04 13:50:32',0,0),(2309,152,'BFT_EnumCode','lngEnumValue3','枚举扩展值3','枚举扩展值3','varchar','',200,0,0,0,'',0,0,0,11,0,0,0,0,'','','2015-08-04 13:50:32',0,0),(2310,152,'BFT_EnumCode','lngEnumValue4','枚举扩展值4','枚举扩展值4','varchar','',200,0,0,0,'',0,0,0,12,0,0,0,0,'','','2015-08-04 13:50:32',0,0),(2311,152,'BFT_EnumCode','strDescription','开发描述信息','开发描述信息','varchar','',100,0,0,0,'',0,0,0,13,0,0,0,0,'','','2015-08-04 13:50:32',0,0),(2314,153,'BFT_EnumCode','EnumCodeID','枚举ID','枚举ID','int','',4,0,1,0,'',0,0,0,1,0,0,0,0,'','','2015-08-04 13:52:39',0,0),(2315,153,'BFT_EnumCode','EnumTypeID','枚举类型ID','枚举类型ID','int','',4,0,0,0,'',0,0,0,2,0,0,0,0,'','','2015-08-04 13:52:39',0,0),(2316,153,'BFT_EnumCode','lngEnumValue','种类ID','种类ID','int','',4,0,1,1,'',0,0,0,3,0,0,0,0,'','','2015-08-04 13:52:39',0,0),(2317,153,'BFT_EnumCode','strEnumDisplay','种类名称','种类名称','varchar','',200,0,1,0,'',0,0,0,4,0,0,0,0,'','','2015-08-04 13:52:39',0,0),(2318,153,'BFT_EnumCode','blnDefault','是否为默认','是否为默认','bit','',1,0,0,0,'',0,0,0,5,0,0,0,0,'','','2015-08-04 13:52:39',0,0),(2319,153,'BFT_EnumCode','blnPredefined','是否为系统预制','是否为系统预制','bit','',1,0,0,0,'',0,0,0,6,0,0,0,0,'','','2015-08-04 13:52:39',0,0),(2320,153,'BFT_EnumCode','lngRowIndex','显示顺序','显示顺序','int','',4,0,0,0,'',0,0,0,7,0,0,0,0,'','','2015-08-04 13:52:39',0,0),(2321,153,'BFT_EnumCode','blnEnable','是否有效','是否有效','bit','',1,0,0,0,'',0,0,0,8,0,0,0,0,'','','2015-08-04 13:52:40',0,0),(2322,153,'BFT_EnumCode','lngEnumValue1','枚举扩展值1','枚举扩展值1','datetime','',8,3,0,0,'',0,0,0,9,0,0,0,0,'','','2015-08-04 13:52:40',0,0),(2323,153,'BFT_EnumCode','lngEnumValue2','枚举扩展值2','枚举扩展值2','decimal','',9,2,0,0,'',0,0,0,10,0,0,0,0,'','','2015-08-04 13:52:40',0,0),(2324,153,'BFT_EnumCode','lngEnumValue3','枚举扩展值3','枚举扩展值3','varchar','',200,0,0,0,'',0,0,0,11,0,0,0,0,'','','2015-08-04 13:52:40',0,0),(2325,153,'BFT_EnumCode','lngEnumValue4','枚举扩展值4','枚举扩展值4','varchar','',200,0,0,0,'',0,0,0,12,0,0,0,0,'','','2015-08-04 13:52:40',0,0),(2326,153,'BFT_EnumCode','strDescription','开发描述信息','开发描述信息','varchar','',100,0,0,0,'',0,0,0,13,0,0,0,0,'','','2015-08-04 13:52:40',0,0),(2374,155,'jc_defkzk','ID','主键ID','ID编号','bigint','',0,0,1,1,'',0,0,0,1,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2375,155,'jc_defkzk','fzh','分站号','分站号','smallint','',0,0,1,0,'',0,0,0,2,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2376,155,'jc_defkzk','kh','口号','口号','smallint','',0,0,1,0,'',0,0,0,3,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2377,155,'jc_defkzk','dzh','地址号','地址号','smallint','',0,0,1,0,'',0,0,0,4,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2378,155,'jc_defkzk','devid','设备类型ID','设备类型ID','int','',0,0,1,0,'',0,0,0,5,1,10,178,0,'AllJC_Dev','','2015-09-08 15:35:44',0,0),(2379,155,'jc_defkzk','wzid','安装位置ID','安装位置ID','int','',0,0,1,0,'',0,0,0,6,1,8,136,0,'AllJC_WZ','','2015-09-08 15:35:44',0,0),(2380,155,'jc_defkzk','csid','处理措施编号','处理措施编号','int','',0,0,1,0,'',0,0,0,7,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2381,155,'jc_defkzk','point','测点号','测点号','varchar','',10,0,1,0,'',0,0,0,8,0,0,0,0,'AllPoint','','2015-09-08 15:35:44',0,0),(2382,155,'jc_defkzk','ssz','实时值','实时值','varchar','',10,0,1,0,'',0,0,0,9,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2383,155,'jc_defkzk','state','状态值','状态值','smallint','',0,0,1,0,'',0,0,0,10,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2384,155,'jc_defkzk','alarm','报警状态 大于零为报警','报警状态 大于零为报警','smallint','',0,0,1,0,'',0,0,0,11,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2385,155,'jc_defkzk','Voltage','请录入字段名','','float','',0,0,1,0,'',0,0,0,12,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2386,155,'jc_defkzk','zts','状态变动时间','状态变动时间','datetime','',0,0,1,0,'',0,0,0,13,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2387,155,'jc_defkzk','jckz1','分站: mac地址/Ip地址/抽放绑定开停\r\n模拟','分站: mac地址/Ip地址/抽放绑定开停\r\n模拟量：上下限断电交叉控制测点号/断线交叉控制测点号/上溢负漂交叉控制测点号\r\n开关量：0态交叉控制测点号/1态交叉控制测点号/2态交叉控制测点号\r\n导出','text','',65535,0,1,0,'',0,0,0,14,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2388,155,'jc_defkzk','jckz2','请录入字段名','','text','',65535,0,1,0,'',0,0,0,15,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2389,155,'jc_defkzk','jckz3','请录入字段名','','text','',65535,0,1,0,'',0,0,0,16,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2390,155,'jc_defkzk','Z1','上限预警值','上限预警值','float','',0,0,1,0,'',0,0,0,17,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2391,155,'jc_defkzk','Z2','上限报警值','上限报警值','float','',0,0,1,0,'',0,0,0,18,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2392,155,'jc_defkzk','Z3','上限断电值','上限断电值','float','',0,0,1,0,'',0,0,0,19,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2393,155,'jc_defkzk','Z4','上限恢复值','上限恢复值','float','',0,0,1,0,'',0,0,0,20,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2394,155,'jc_defkzk','Z5','下限预警值','下限预警值','float','',0,0,1,0,'',0,0,0,21,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2395,155,'jc_defkzk','Z6','下限报警值','下限报警值','float','',0,0,1,0,'',0,0,0,22,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2396,155,'jc_defkzk','Z7','下限断电值','下限断电值','float','',0,0,1,0,'',0,0,0,23,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2397,155,'jc_defkzk','Z8','下限恢复值','下限恢复值','float','',0,0,1,0,'',0,0,0,24,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2398,155,'jc_defkzk','K1','分站：大气压（101）/抽放正负压（0负1正）/串','分站：大气压（101）/抽放正负压（0负1正）/串口端口号\r\n模拟量：上限报警控制口/上限断电控制口/下限报警控制口/下限断电控制口/上溢控制口/负漂控制口/断线控制口/备用控制口\r\n开关量:0态控制','smallint','',0,0,1,0,'',0,0,0,25,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2399,155,'jc_defkzk','K2','请录入字段名','','smallint','',0,0,1,0,'',0,0,0,26,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2400,155,'jc_defkzk','K3','请录入字段名','','smallint','',0,0,1,0,'',0,0,0,27,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2401,155,'jc_defkzk','K4','请录入字段名','','smallint','',0,0,1,0,'',0,0,0,28,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2402,155,'jc_defkzk','K5','请录入字段名','','smallint','',0,0,1,0,'',0,0,0,29,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2403,155,'jc_defkzk','K6','请录入字段名','','smallint','',0,0,1,0,'',0,0,0,30,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2404,155,'jc_defkzk','K7','请录入字段名','','smallint','',0,0,1,0,'',0,0,0,31,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2405,155,'jc_defkzk','K8','请录入字段名','','smallint','',0,0,1,0,'',0,0,0,32,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2406,155,'jc_defkzk','Bz1','分站：  运行记录标志\r\n模拟量：运行记录标志\r\n','分站：  运行记录标志\r\n模拟量：运行记录标志\r\n开关量：运行记录标志\r\n','smallint','',0,0,1,0,'',0,0,0,33,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2407,155,'jc_defkzk','Bz2','分站：响铃报警标\r\n模拟量：响铃报警标志\r\n开关量','分站：响铃报警标\r\n模拟量：响铃报警标志\r\n开关量：响铃报警标志\r\n','smallint','',0,0,1,0,'',0,0,0,34,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2408,155,'jc_defkzk','Bz3','分站：风电闭锁标志 1；逻辑控制 2\r\n模拟量：突','分站：风电闭锁标志 1；逻辑控制 2\r\n模拟量：突出预测标志 \r\n','smallint','',0,0,1,0,'',0,0,0,35,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2409,155,'jc_defkzk','Bz4','分站：设备休眠标志\r\n模拟量：密采记录标志\r\n开关','分站：设备休眠标志\r\n模拟量：密采记录标志\r\n开关量：设备休眠标志\r\n控制量：标记\r\n','smallint','',0,0,1,0,'',0,0,0,36,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2410,155,'jc_defkzk','Bz5','联网上传标志','联网上传标志','smallint','',0,0,1,0,'',0,0,0,37,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2411,155,'jc_defkzk','Bz6','模拟量：传感器标校周期','模拟量：传感器标校周期','varchar','',10,0,1,0,'',0,0,0,38,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2412,155,'jc_defkzk','Bz7','请录入字段名','','varchar','',10,0,1,0,'',0,0,0,39,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2413,155,'jc_defkzk','Bz8','请录入字段名','','varchar','',10,0,1,0,'',0,0,0,40,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2414,155,'jc_defkzk','Bz9','请录入字段名','','varchar','',10,0,1,0,'',0,0,0,41,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2415,155,'jc_defkzk','Bz10','请录入字段名','','varchar','',10,0,1,0,'',0,0,0,42,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2416,155,'jc_defkzk','remark','备注','备注','text','',65535,0,1,0,'',0,0,0,43,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2417,155,'jc_defkzk','upflag','上传标志0-未传1-已传','上传标志0-未传1-已传','varchar','',1,0,1,0,'',0,0,0,44,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2418,155,'jc_defkzk','kzkpoint','控制口测点号','控制口测点号','varchar','',10,0,1,0,'',0,0,0,45,0,0,0,0,'','','2015-09-08 15:35:44',0,0),(2419,155,'jc_defkzk','kzkwzid','安装位置编号','安装位置编号','int','',0,0,1,0,'',0,0,0,46,1,8,136,0,'','','2015-09-08 15:35:44',0,0),(2444,158,'jc_bdd','id','请录入字段名','','bigint',NULL,0,0,1,0,'',0,0,0,1,0,0,0,0,NULL,NULL,NULL,0,0),(2445,158,'jc_bdd','fzh','分站号','分站号','smallint',NULL,0,0,1,0,'',0,0,0,2,0,0,0,0,NULL,NULL,NULL,0,0),(2446,158,'jc_bdd','kh','口号','口号','smallint',NULL,0,0,1,0,'',0,0,0,3,0,0,0,0,NULL,NULL,NULL,0,0),(2447,158,'jc_bdd','devid','设备类型索引ID','设备类型索引ID','int',NULL,0,0,1,0,'',0,0,0,4,0,0,0,0,NULL,NULL,NULL,0,0),(2448,158,'jc_bdd','wzid','安装位置索引ID','安装位置索引ID','int',NULL,0,0,1,0,'',0,0,0,5,0,0,0,0,NULL,NULL,NULL,0,0),(2449,158,'jc_bdd','point','测点号','测点号','varchar',NULL,10,0,1,0,'',0,0,0,6,0,0,0,0,NULL,NULL,NULL,0,0),(2450,158,'jc_bdd','type','类型','类型','smallint',NULL,0,0,1,0,'',0,0,0,7,0,0,0,0,NULL,NULL,NULL,0,0),(2451,158,'jc_bdd','stime','开始时间','开始时间','datetime',NULL,0,0,1,0,'',0,0,0,8,0,0,0,0,NULL,NULL,NULL,0,0),(2452,158,'jc_bdd','etime','请录入字段名','','datetime',NULL,0,0,1,0,'',0,0,0,9,0,0,0,0,NULL,NULL,NULL,0,0),(2453,158,'jc_bdd','cursumtime','请录入字段名','','time',NULL,0,0,1,0,'',0,0,0,10,0,0,0,0,NULL,NULL,NULL,0,0),(2454,158,'jc_bdd','ssz','模拟量：断线/上溢/负漂/实时值\r\n开关量：断线/','模拟量：断线/上溢/负漂/实时值\r\n开关量：断线/开/停\r\n控制量：接通/断开\r\n馈电状态：复电失败/断电失败\r\n设备故障：系统启动/系统退出/非法退出\r\n分站状态：通讯中断/通讯误码/初始化中/交流','varchar',NULL,10,0,1,0,'',0,0,0,11,0,0,0,0,NULL,NULL,NULL,0,0),(2455,158,'jc_bdd','zdz','最大值','最大值','float',NULL,0,0,1,0,'',0,0,0,12,0,0,0,0,NULL,NULL,NULL,0,0),(2456,158,'jc_bdd','pjz','平均值','平均值','float',NULL,0,0,1,0,'',0,0,0,13,0,0,0,0,NULL,NULL,NULL,0,0),(2457,158,'jc_bdd','zdzs','最大值时间','最大值时间','datetime',NULL,0,0,1,0,'',0,0,0,14,0,0,0,0,NULL,NULL,NULL,0,0),(2458,158,'jc_bdd','cs','处理措施','处理措施','text',NULL,65535,0,1,0,'',0,0,0,15,0,0,0,0,NULL,NULL,NULL,0,0),(2459,158,'jc_bdd','kzk','模拟量、开关量：控制测点号\r\n控制量：馈电点号','模拟量、开关量：控制测点号\r\n控制量：馈电点号','text',NULL,65535,0,1,0,'',0,0,0,16,0,0,0,0,NULL,NULL,NULL,0,0),(2460,158,'jc_bdd','kdid','馈电异常记录ID EX:2015090912000','馈电异常记录ID EX:201509091200000909,201509091200000910','text',NULL,65535,0,1,0,'',0,0,0,17,0,0,0,0,NULL,NULL,NULL,0,0),(2496,162,'viewkglkddayreport','fzh','分站号','分站号','smallint','',0,0,1,0,'',0,0,0,1,0,0,0,0,'','','2017-11-03 15:23:26',0,0),(2497,162,'viewkglkddayreport','kh','口号','口号','smallint','',0,0,1,0,'',0,0,0,2,0,0,0,0,'','','2017-11-03 15:23:26',0,0),(2498,162,'viewkglkddayreport','devid','设备类型','设备类型','int','',0,0,1,0,'',0,0,0,3,1,10,178,0,'AllJC_Dev','','2017-11-03 15:23:26',0,0),(2499,162,'viewkglkddayreport','wzid','安装位置','安装位置','int','',0,0,1,0,'',0,0,0,4,1,8,136,0,'AllJC_WZ','','2017-11-03 15:23:26',0,0),(2500,162,'viewkglkddayreport','point','测点号','测点号','varchar','',10,0,1,0,'',0,0,0,5,0,0,0,0,'AllPointKgl','','2017-11-03 15:23:26',0,1),(2507,162,'viewkglkddayreport','JCDEFPoint','断电区域测点号','断电区域测点号','varchar','',10,0,1,0,'',0,0,0,12,0,0,0,0,'','','2017-11-03 15:23:26',0,0),(2508,162,'viewkglkddayreport','wz','断电区域','','varchar','',30,0,1,0,'',0,0,0,13,0,0,0,0,'','','2017-11-03 15:23:26',0,0),(2512,162,'viewkglkddayreport','datsearch','查询日期','','datetime','',0,0,1,0,'',0,0,0,17,0,0,0,0,'','','2017-11-03 15:23:26',1,0),(2513,162,'viewkglkddayreport','kdsumcount','馈电异常次数','','bigint','',0,0,1,0,'',0,0,0,18,0,0,0,0,'','','2017-11-03 15:23:26',0,0),(2514,162,'viewkglkddayreport','kdsumtime','馈电异常时间','','varchar','',10,0,1,0,'',0,0,0,19,0,0,0,0,'','','2017-11-03 15:23:26',0,0),(2515,162,'viewkglkddayreport','toid','馈电异常去向ID','','bigint','',0,0,1,0,'',0,0,0,20,0,0,0,0,'','','2017-11-03 15:23:26',0,0),(2517,162,'viewkglkddayreport','kdstime','馈电开始时间','开始时间','datetime','',0,0,1,0,'',0,0,0,22,0,0,0,0,'','','2017-11-03 15:23:26',0,0),(2518,162,'viewkglkddayreport','kdetime','馈电结束时间','','datetime','',0,0,1,0,'',0,0,0,23,0,0,0,0,'','','2017-11-03 15:23:26',0,0),(2519,162,'viewkglkddayreport','kdcursumtime','馈电累计时间','','time','',0,0,1,0,'',0,0,0,24,0,0,0,0,'','','2017-11-03 15:23:26',0,0),(2520,162,'viewkglkddayreport','kdstate','馈电状态','','varchar','',10,0,1,0,'',0,0,0,25,0,0,0,0,'','','2017-11-03 15:23:26',0,0),(2522,163,'BFT_EnumCode','EnumCodeID','枚举ID','枚举ID','int','',4,0,1,0,'',0,0,0,1,0,0,0,0,'','','2015-09-06 14:44:02',0,0),(2523,163,'BFT_EnumCode','EnumTypeID','枚举类型ID','枚举类型ID','int','',4,0,0,0,'',0,0,0,2,0,0,0,0,'','','2015-09-06 14:44:02',0,0),(2524,163,'BFT_EnumCode','lngEnumValue','设备状态ID','设备状态ID','int','',4,0,1,1,'',0,0,0,3,0,0,0,0,'','','2015-09-06 14:44:02',0,0),(2525,163,'BFT_EnumCode','strEnumDisplay','设备状态名称','设备状态名称','varchar','',200,0,1,0,'',0,0,0,4,0,0,0,0,'','','2015-09-06 14:44:02',0,0),(2526,163,'BFT_EnumCode','blnDefault','是否为默认','是否为默认','bit','',1,0,0,0,'',0,0,0,5,0,0,0,0,'','','2015-09-06 14:44:02',0,0),(2527,163,'BFT_EnumCode','blnPredefined','是否为系统预制','是否为系统预制','bit','',1,0,0,0,'',0,0,0,6,0,0,0,0,'','','2015-09-06 14:44:02',0,0),(2528,163,'BFT_EnumCode','lngRowIndex','显示顺序','显示顺序','int','',4,0,0,0,'',0,0,0,7,0,0,0,0,'','','2015-09-06 14:44:02',0,0),(2529,163,'BFT_EnumCode','blnEnable','是否有效','是否有效','bit','',1,0,0,0,'',0,0,0,8,0,0,0,0,'','','2015-09-06 14:44:02',0,0),(2530,163,'BFT_EnumCode','lngEnumValue1','枚举扩展值1','枚举扩展值1','datetime','',8,3,0,0,'',0,0,0,9,0,0,0,0,'','','2015-09-06 14:44:02',0,0),(2531,163,'BFT_EnumCode','lngEnumValue2','枚举扩展值2','枚举扩展值2','decimal','',9,2,0,0,'',0,0,0,10,0,0,0,0,'','','2015-09-06 14:44:02',0,0),(2532,163,'BFT_EnumCode','lngEnumValue3','枚举扩展值3','枚举扩展值3','varchar','',200,0,0,0,'',0,0,0,11,0,0,0,0,'','','2015-09-06 14:44:02',0,0),(2533,163,'BFT_EnumCode','lngEnumValue4','枚举扩展值4','枚举扩展值4','varchar','',200,0,0,0,'',0,0,0,12,0,0,0,0,'','','2015-09-06 14:44:02',0,0),(2534,163,'BFT_EnumCode','strDescription','开发描述信息','开发描述信息','varchar','',100,0,0,0,'',0,0,0,13,0,0,0,0,'','','2015-09-06 14:44:02',0,0),(2537,31,'ViewJC_BMonth','state','设备状态','设备状态','smallint','',0,0,1,0,'',0,0,0,24,1,163,2524,0,'AllDevTypeCode','','2018-02-05 18:03:27',0,0),(2538,33,'ViewMLLDDDayReport','state','设备状态','','int','',0,0,1,0,'',0,0,0,35,1,163,2524,0,'AllDevTypeCode','','2018-02-05 18:11:08',0,0),(2539,34,'ViewMLLTJZReport','state','设备状态','','int','',0,0,1,0,'',0,0,0,22,1,163,2524,0,'AllDevTypeCode','','2017-10-12 17:02:27',0,0),(2540,149,'viewmcrunlogreport','state','设备状态','','int','',0,0,1,0,'',0,0,0,12,1,163,2524,0,'AllDevTypeCode','','2015-09-17 09:47:10',0,0),(2541,148,'viewsbrunlogreport','state','设备状态','','int','',0,0,1,0,'',0,0,0,14,1,163,2524,0,'AllDevTypeCode','','2015-09-06 15:52:43',0,0),(2542,38,'ViewMLLBJDDReport','state','设备状态','','int','',0,0,1,0,'',0,0,0,22,1,163,2524,0,'AllDevTypeCode','','2017-09-11 11:27:45',0,0),(2544,26,'ViewMLLDayReport','state','设备状态','','int','',0,0,1,0,'',0,0,0,17,1,163,2524,0,'AllDevTypeCode','','2017-10-16 16:15:16',0,0),(2545,162,'viewkglkddayreport','type','类型','类型','smallint','',0,0,1,0,'',0,0,0,18,0,0,0,0,'','','2017-11-03 15:23:26',0,0),(2549,162,'viewkglkddayreport','ssz','实时值','模拟量：断线/上溢/负漂/实时值\r\n开关量：断线/开/停\r\n控制量：接通/断开\r\n馈电状态：复电失败/断电失败\r\n设备故障：系统启动/系统退出/非法退出\r\n分站状态：通讯中断/通讯误码/初始化中/交流','varchar','',10,0,1,0,'',0,0,0,22,0,0,0,0,'','','2017-11-03 15:23:26',0,0),(2550,162,'viewkglkddayreport','zdz','最大值','最大值','float','',0,0,1,0,'',0,0,0,23,0,0,0,0,'','','2017-11-03 15:23:26',0,0),(2551,162,'viewkglkddayreport','pjz','平均值','平均值','float','',0,0,1,0,'',0,0,0,24,0,0,0,0,'','','2017-11-03 15:23:26',0,0),(2552,162,'viewkglkddayreport','zdzs','最大值时间','最大值时间','datetime','',0,0,1,0,'',0,0,0,25,0,0,0,0,'','','2017-11-03 15:23:26',0,0),(2553,162,'viewkglkddayreport','cs','处理措施','处理措施','text','',65535,0,1,0,'',0,0,0,26,0,0,0,0,'','','2017-11-03 15:23:26',0,0),(2554,162,'viewkglkddayreport','kzk','控制口','模拟量、开关量：控制测点号\r\n控制量：馈电点号','text','',65535,0,1,0,'',0,0,0,27,0,0,0,0,'','','2017-11-03 15:23:26',0,0),(2555,162,'viewkglkddayreport','kdid','馈电ids','馈电异常记录ID EX:201509091200000909,201509091200000910','text','',65535,0,1,0,'',0,0,0,28,0,0,0,0,'','','2017-11-03 15:23:26',0,0),(2556,162,'viewkglkddayreport','pid','关联馈电异常ID','','varchar','',38,0,1,0,'',0,0,0,29,0,0,0,0,'','','2017-11-03 15:23:26',0,0),(2557,162,'viewkglkddayreport','sumcount','累计次数','','bigint','',0,0,1,0,'',0,0,0,30,0,0,0,0,'','','2017-11-03 15:23:26',0,0),(2558,162,'viewkglkddayreport','sumtime','累计时间','','varchar','',10,0,1,0,'',0,0,0,31,0,0,0,0,'','','2017-11-03 15:23:26',0,0),(2559,162,'viewkglkddayreport','bid','主键ID','','varchar','',34,0,1,1,'',0,0,0,32,0,0,0,0,'','','2017-11-03 15:23:26',0,0),(2560,162,'viewkglkddayreport','bida','请录入字段名','','varchar','',34,0,1,0,'',0,0,0,33,0,0,0,0,'','','2017-11-03 15:23:26',0,0),(2561,149,'viewmcrunlogreport','type','类型','类型','smallint','',0,0,1,0,'',0,0,0,13,1,43,753,0,'AllTypeCode','','2015-09-17 09:47:10',0,0),(2562,164,'jc_llmonth','ID','主键ID','','bigint','',0,0,1,1,'',0,0,0,1,0,0,0,0,'','','2017-12-25 15:37:59',0,0),(2563,164,'jc_llmonth','PointID','测点ID','','bigint','',0,0,1,0,'',0,0,0,2,1,9,2581,0,'','','2017-12-25 15:37:59',0,0),(2564,164,'jc_llmonth','FY','负压平均值','','float','',0,0,1,0,'',0,0,0,3,0,0,0,0,'','','2017-12-25 15:37:59',0,0),(2565,164,'jc_llmonth','WD','温度平均值','','float','',0,0,1,0,'',0,0,0,4,0,0,0,0,'','','2017-12-25 15:37:59',0,0),(2566,164,'jc_llmonth','WS','瓦斯平均值','','float','',0,0,1,0,'',0,0,0,5,0,0,0,0,'','','2017-12-25 15:37:59',0,0),(2567,164,'jc_llmonth','CO','一氧化碳平均值','','float','',0,0,1,0,'',0,0,0,6,0,0,0,0,'','','2017-12-25 15:37:59',0,0),(2568,164,'jc_llmonth','BH','标况混合流量平均值','','float','',0,0,1,0,'',0,0,0,7,0,0,0,0,'','','2017-12-25 15:37:59',0,0),(2569,164,'jc_llmonth','GH','工况混合流量平均值','','float','',0,0,1,0,'',0,0,0,8,0,0,0,0,'','','2017-12-25 15:37:59',0,0),(2570,164,'jc_llmonth','BC','标况纯量平均值','','float','',0,0,1,0,'',0,0,0,9,0,0,0,0,'','','2017-12-25 15:37:59',0,0),(2571,164,'jc_llmonth','GC','工况纯量平均值','','float','',0,0,1,0,'',0,0,0,10,0,0,0,0,'','','2017-12-25 15:37:59',0,0),(2572,164,'jc_llmonth','BHL','标况混合累计值','','float','',0,0,1,0,'',0,0,0,11,0,0,0,0,'','','2017-12-25 15:37:59',0,0),(2573,164,'jc_llmonth','BCL','标况纯量累计值','','float','',0,0,1,0,'',0,0,0,12,0,0,0,0,'','','2017-12-25 15:37:59',0,0),(2574,164,'jc_llmonth','GHL','工况混合累计值','','float','',0,0,1,0,'',0,0,0,13,0,0,0,0,'','','2017-12-25 15:37:59',0,0),(2575,164,'jc_llmonth','GCL','工况纯量累计值','','float','',0,0,1,0,'',0,0,0,14,0,0,0,0,'','','2017-12-25 15:37:59',0,0),(2576,164,'jc_llmonth','Timer','时间','','datetime','',0,0,1,0,'',0,0,0,15,0,0,0,0,'','','2017-12-25 15:37:59',0,0),(2577,164,'jc_llmonth','yxsc','运行时间','','bigint','',0,0,1,0,'',0,0,0,16,0,0,0,0,'','','2017-12-25 15:37:59',0,0),(2578,164,'jc_llmonth','By1','备注1','','varchar','',255,0,1,0,'',0,0,0,17,0,0,0,0,'','','2017-12-25 15:37:59',0,0),(2579,164,'jc_llmonth','By2','备注2','','varchar','',255,0,1,0,'',0,0,0,18,0,0,0,0,'','','2017-12-25 15:37:59',0,0),(2580,164,'jc_llmonth','By3','备注3','','varchar','',255,0,1,0,'',0,0,0,19,0,0,0,0,'','','2017-12-25 15:37:59',0,0),(2581,9,'KJ_DeviceDefInfo','pointid','测点ID','','bigint','',0,0,1,1,'',0,0,0,39,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(2582,9,'KJ_DeviceDefInfo','dzh','地址号\r\n传感器：\r\n0：单参数 非0：参数地址\r','地址号\r\n传感器：\r\n0：单参数 非0：参数地址\r\n','smallint','',0,0,1,0,'',0,0,0,40,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(2583,9,'KJ_DeviceDefInfo','datastate','请录入字段名','','smallint','',0,0,1,0,'',0,0,0,41,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(2584,9,'KJ_DeviceDefInfo','voltage','请录入字段名','','float','',0,0,1,0,'',0,0,0,42,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(2585,9,'KJ_DeviceDefInfo','bz6','模拟量：传感器标校周期','模拟量：传感器标校周期','varchar','',10,0,1,0,'',0,0,0,43,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(2586,9,'KJ_DeviceDefInfo','bz7','请录入字段名','','varchar','',10,0,1,0,'',0,0,0,44,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(2587,9,'KJ_DeviceDefInfo','bz8','请录入字段名','','varchar','',10,0,1,0,'',0,0,0,45,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(2588,9,'KJ_DeviceDefInfo','bz9','请录入字段名','','text','',65535,0,1,0,'',0,0,0,46,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(2589,9,'KJ_DeviceDefInfo','bz10','请录入字段名','','text','',65535,0,1,0,'',0,0,0,47,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(2590,9,'KJ_DeviceDefInfo','areaid','请录入字段名','','bigint','',0,0,1,0,'',0,0,0,48,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(2591,9,'KJ_DeviceDefInfo','sysid','请录入字段名','','bigint','',0,0,1,0,'',0,0,0,49,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(2592,9,'KJ_DeviceDefInfo','activity','请录入字段名','','varchar','',1,0,1,0,'',0,0,0,50,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(2593,9,'KJ_DeviceDefInfo','createupdatetime','请录入字段名','','datetime','',0,0,1,0,'',0,0,0,51,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(2594,9,'KJ_DeviceDefInfo','deletetime','请录入字段名','','datetime','',0,0,1,0,'',0,0,0,52,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(2595,9,'KJ_DeviceDefInfo','bz11','分站：  运行记录标志\r\n模拟量：运行记录标志\r\n','分站：  运行记录标志\r\n模拟量：运行记录标志\r\n开关量：运行记录标志\r\n','varchar','',500,0,1,0,'',0,0,0,53,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(2596,9,'KJ_DeviceDefInfo','bz12','未使用','分站：响铃报警标\r\n模拟量：响铃报警标志\r\n开关量：响铃报警标志\r\n','varchar','',500,0,1,0,'',0,0,0,54,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(2597,9,'KJ_DeviceDefInfo','bz13','唯一编码','分站：风电闭锁标志 1；逻辑控制 2\r\n模拟量：突出预测标志 \r\n','varchar','',500,0,1,0,'',0,0,0,55,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(2598,9,'KJ_DeviceDefInfo','bz14','分站：设备休眠标志\r\n模拟量：密采记录标志\r\n开关','分站：设备休眠标志\r\n模拟量：密采记录标志\r\n开关量：设备休眠标志\r\n控制量：标记\r\n','varchar','',500,0,1,0,'',0,0,0,56,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(2599,9,'KJ_DeviceDefInfo','bz15','出厂日期','出厂日期','varchar','',500,0,1,0,'',0,0,0,57,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(2600,9,'KJ_DeviceDefInfo','bz16','模拟量：传感器标校周期','模拟量：传感器标校周期','varchar','',500,0,1,0,'',0,0,0,58,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(2601,9,'KJ_DeviceDefInfo','bz17','请录入字段名','','varchar','',500,0,1,0,'',0,0,0,59,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(2602,9,'KJ_DeviceDefInfo','bz18','请录入字段名','','varchar','',500,0,1,0,'',0,0,0,60,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(2603,9,'KJ_DeviceDefInfo','bz19','请录入字段名','','varchar','',500,0,1,0,'',0,0,0,61,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(2604,9,'KJ_DeviceDefInfo','bz20','请录入字段名','','varchar','',500,0,1,0,'',0,0,0,62,0,0,0,0,'','','2017-07-19 10:59:44',0,0),(2605,164,'viewjc_llmonth','yxsc1','请录入字段名','','decimal','',0,0,1,0,'',0,0,0,20,0,0,0,0,'','','2017-12-25 15:37:59',0,0),(2606,164,'viewjc_llmonth','sort','排序','','bigint','',0,0,1,0,'',0,0,0,21,0,0,0,0,'','','2017-12-25 15:37:59',0,0),(2607,164,'viewjc_llmonth','datsearch','查询时间','','datetime','',0,0,1,0,'',0,0,0,22,0,0,0,0,'','','2017-12-25 15:37:59',0,0),(2608,165,'viewjc_lld','ID','主键ID','','bigint','',0,0,1,1,'',0,0,0,1,0,0,0,0,'','','2017-12-25 16:23:33',0,0),(2609,165,'viewjc_lld','PointID','测点','','bigint','',0,0,1,0,'',0,0,0,2,1,9,2581,0,'','','2017-12-25 16:23:33',0,0),(2610,165,'viewjc_lld','FY','负压平均值','','double','',0,0,1,0,'',0,0,0,3,0,0,0,0,'','','2017-12-25 16:23:33',0,0),(2611,165,'viewjc_lld','WD','温度平均值','','double','',0,0,1,0,'',0,0,0,4,0,0,0,0,'','','2017-12-25 16:23:33',0,0),(2612,165,'viewjc_lld','WS','瓦斯平均值','','double','',0,0,1,0,'',0,0,0,5,0,0,0,0,'','','2017-12-25 16:23:33',0,0),(2613,165,'viewjc_lld','CO','一氧化碳平均值','','double','',0,0,1,0,'',0,0,0,6,0,0,0,0,'','','2017-12-25 16:23:33',0,0),(2614,165,'viewjc_lld','BH','标况混合流量平均值','','double','',0,0,1,0,'',0,0,0,7,0,0,0,0,'','','2017-12-25 16:23:33',0,0),(2615,165,'viewjc_lld','GH','工况混合流量平均值','','double','',0,0,1,0,'',0,0,0,8,0,0,0,0,'','','2017-12-25 16:23:33',0,0),(2616,165,'viewjc_lld','BC','标况纯量平均值','','double','',0,0,1,0,'',0,0,0,9,0,0,0,0,'','','2017-12-25 16:23:33',0,0),(2617,165,'viewjc_lld','GC','工况纯量平均值','','double','',0,0,1,0,'',0,0,0,10,0,0,0,0,'','','2017-12-25 16:23:33',0,0),(2618,165,'viewjc_lld','BHL','标况混合累计值','','double','',0,0,1,0,'',0,0,0,11,0,0,0,0,'','','2017-12-25 16:23:33',0,0),(2619,165,'viewjc_lld','BCL','标况纯量累计值','','double','',0,0,1,0,'',0,0,0,12,0,0,0,0,'','','2017-12-25 16:23:33',0,0),(2620,165,'viewjc_lld','GHL','工况混合累计值','','double','',0,0,1,0,'',0,0,0,13,0,0,0,0,'','','2017-12-25 16:23:33',0,0),(2621,165,'viewjc_lld','GCL','工况纯量累计值','','double','',0,0,1,0,'',0,0,0,14,0,0,0,0,'','','2017-12-25 16:23:33',0,0),(2622,165,'viewjc_lld','timer','时间','','datetime','',0,0,1,0,'',0,0,0,15,0,0,0,0,'','','2017-12-25 16:23:33',0,0),(2623,165,'viewjc_lld','yxsc1','请录入字段名','','decimal','',0,0,1,0,'',0,0,0,16,0,0,0,0,'','','2017-12-25 16:23:33',0,0),(2624,165,'viewjc_lld','yxsc','运行时间','','time','',0,0,1,0,'',0,0,0,17,0,0,0,0,'','','2017-12-25 16:23:33',0,0),(2625,165,'viewjc_lld','By1','备注1','','varchar','',255,0,1,0,'',0,0,0,18,0,0,0,0,'','','2017-12-25 16:23:33',0,0),(2626,165,'viewjc_lld','By2','备注2','','varchar','',255,0,1,0,'',0,0,0,19,0,0,0,0,'','','2017-12-25 16:23:33',0,0),(2627,165,'viewjc_lld','By3','备注3','','varchar','',255,0,1,0,'',0,0,0,20,0,0,0,0,'','','2017-12-25 16:23:33',0,0),(2628,165,'viewjc_lld','sort','排序','','bigint','',0,0,1,0,'',0,0,0,21,0,0,0,0,'','','2017-12-25 16:23:33',0,0),(2629,165,'viewjc_lld','datsearch','查询时间','','datetime','',0,0,1,0,'',0,0,0,22,0,0,0,0,'','','2017-12-25 16:23:33',0,0),(2630,166,'viewjc_llm','ID','主键ID','','bigint','',0,0,1,1,'',0,0,0,1,0,0,0,0,'','','2017-12-25 16:23:53',0,0),(2631,166,'viewjc_llm','PointID','测点','','bigint','',0,0,1,0,'',0,0,0,2,1,9,2581,0,'','','2017-12-25 16:23:53',0,0),(2632,166,'viewjc_llm','FY','负压平均值','','double','',0,0,1,0,'',0,0,0,3,0,0,0,0,'','','2017-12-25 16:23:53',0,0),(2633,166,'viewjc_llm','WD','温度平均值','','double','',0,0,1,0,'',0,0,0,4,0,0,0,0,'','','2017-12-25 16:23:53',0,0),(2634,166,'viewjc_llm','WS','瓦斯平均值','','double','',0,0,1,0,'',0,0,0,5,0,0,0,0,'','','2017-12-25 16:23:53',0,0),(2635,166,'viewjc_llm','CO','一氧化碳平均值','','double','',0,0,1,0,'',0,0,0,6,0,0,0,0,'','','2017-12-25 16:23:53',0,0),(2636,166,'viewjc_llm','BH','标况混合流量平均值','','double','',0,0,1,0,'',0,0,0,7,0,0,0,0,'','','2017-12-25 16:23:53',0,0),(2637,166,'viewjc_llm','GH','工况混合流量平均值','','double','',0,0,1,0,'',0,0,0,8,0,0,0,0,'','','2017-12-25 16:23:53',0,0),(2638,166,'viewjc_llm','BC','标况纯量平均值','','double','',0,0,1,0,'',0,0,0,9,0,0,0,0,'','','2017-12-25 16:23:53',0,0),(2639,166,'viewjc_llm','GC','工况纯量平均值','','double','',0,0,1,0,'',0,0,0,10,0,0,0,0,'','','2017-12-25 16:23:53',0,0),(2640,166,'viewjc_llm','BHL','标况混合累计值','','double','',0,0,1,0,'',0,0,0,11,0,0,0,0,'','','2017-12-25 16:23:53',0,0),(2641,166,'viewjc_llm','BCL','标况纯量累计值','','double','',0,0,1,0,'',0,0,0,12,0,0,0,0,'','','2017-12-25 16:23:53',0,0),(2642,166,'viewjc_llm','GHL','工况混合累计值','','double','',0,0,1,0,'',0,0,0,13,0,0,0,0,'','','2017-12-25 16:23:53',0,0),(2643,166,'viewjc_llm','GCL','工况纯量累计值','','double','',0,0,1,0,'',0,0,0,14,0,0,0,0,'','','2017-12-25 16:23:53',0,0),(2644,166,'viewjc_llm','timer','时间','','datetime','',0,0,1,0,'',0,0,0,15,0,0,0,0,'','','2017-12-25 16:23:53',0,0),(2645,166,'viewjc_llm','yxsc1','请录入字段名','','decimal','',0,0,1,0,'',0,0,0,16,0,0,0,0,'','','2017-12-25 16:23:53',0,0),(2646,166,'viewjc_llm','yxsc','运行时间','','time','',0,0,1,0,'',0,0,0,17,0,0,0,0,'','','2017-12-25 16:23:53',0,0),(2647,166,'viewjc_llm','By1','备注1','','varchar','',255,0,1,0,'',0,0,0,18,0,0,0,0,'','','2017-12-25 16:23:53',0,0),(2648,166,'viewjc_llm','By2','备注2','','varchar','',255,0,1,0,'',0,0,0,19,0,0,0,0,'','','2017-12-25 16:23:53',0,0),(2649,166,'viewjc_llm','By3','备注3','','varchar','',255,0,1,0,'',0,0,0,20,0,0,0,0,'','','2017-12-25 16:23:53',0,0),(2650,166,'viewjc_llm','sort','排序','','bigint','',0,0,1,0,'',0,0,0,21,0,0,0,0,'','','2017-12-25 16:23:53',0,0),(2651,166,'viewjc_llm','datsearch','查询时间','','datetime','',0,0,1,0,'',0,0,0,22,0,0,0,0,'','','2017-12-25 16:23:53',0,0),(2661,167,'viewjc_lly','ID','主键ID','','bigint','',0,0,1,1,'',0,0,0,1,0,0,0,0,'','','2017-12-25 16:24:11',0,0),(2662,167,'viewjc_lly','PointID','测点','','bigint','',0,0,1,0,'',0,0,0,2,1,9,2581,0,'','','2017-12-25 16:24:11',0,0),(2663,167,'viewjc_lly','FY','负压平均值','','double','',0,0,1,0,'',0,0,0,3,0,0,0,0,'','','2017-12-25 16:24:11',0,0),(2664,167,'viewjc_lly','WD','温度平均值','','double','',0,0,1,0,'',0,0,0,4,0,0,0,0,'','','2017-12-25 16:24:11',0,0),(2665,167,'viewjc_lly','WS','瓦斯平均值','','double','',0,0,1,0,'',0,0,0,5,0,0,0,0,'','','2017-12-25 16:24:11',0,0),(2666,167,'viewjc_lly','CO','一氧化碳平均值','','double','',0,0,1,0,'',0,0,0,6,0,0,0,0,'','','2017-12-25 16:24:11',0,0),(2667,167,'viewjc_lly','BH','标况混合流量平均值','','double','',0,0,1,0,'',0,0,0,7,0,0,0,0,'','','2017-12-25 16:24:11',0,0),(2668,167,'viewjc_lly','GH','工况混合流量平均值','','double','',0,0,1,0,'',0,0,0,8,0,0,0,0,'','','2017-12-25 16:24:11',0,0),(2669,167,'viewjc_lly','BC','标况纯量平均值','','double','',0,0,1,0,'',0,0,0,9,0,0,0,0,'','','2017-12-25 16:24:11',0,0),(2670,167,'viewjc_lly','GC','工况纯量平均值','','double','',0,0,1,0,'',0,0,0,10,0,0,0,0,'','','2017-12-25 16:24:11',0,0),(2671,167,'viewjc_lly','BHL','标况混合累计值','','double','',0,0,1,0,'',0,0,0,11,0,0,0,0,'','','2017-12-25 16:24:11',0,0),(2672,167,'viewjc_lly','BCL','标况纯量累计值','','double','',0,0,1,0,'',0,0,0,12,0,0,0,0,'','','2017-12-25 16:24:11',0,0),(2673,167,'viewjc_lly','GHL','工况混合累计值','','double','',0,0,1,0,'',0,0,0,13,0,0,0,0,'','','2017-12-25 16:24:11',0,0),(2674,167,'viewjc_lly','GCL','工况纯量累计值','','double','',0,0,1,0,'',0,0,0,14,0,0,0,0,'','','2017-12-25 16:24:11',0,0),(2675,167,'viewjc_lly','timer','时间','','datetime','',0,0,1,0,'',0,0,0,15,0,0,0,0,'','','2017-12-25 16:24:11',0,0),(2676,167,'viewjc_lly','yxsc1','请录入字段名','','decimal','',0,0,1,0,'',0,0,0,16,0,0,0,0,'','','2017-12-25 16:24:11',0,0),(2677,167,'viewjc_lly','yxsc','运行时间','','time','',0,0,1,0,'',0,0,0,17,0,0,0,0,'','','2017-12-25 16:24:11',0,0),(2678,167,'viewjc_lly','By1','备注1','','varchar','',255,0,1,0,'',0,0,0,18,0,0,0,0,'','','2017-12-25 16:24:11',0,0),(2679,167,'viewjc_lly','By2','备注2','','varchar','',255,0,1,0,'',0,0,0,19,0,0,0,0,'','','2017-12-25 16:24:11',0,0),(2680,167,'viewjc_lly','By3','备注3','','varchar','',255,0,1,0,'',0,0,0,20,0,0,0,0,'','','2017-12-25 16:24:11',0,0),(2681,167,'viewjc_lly','sort','排序','','bigint','',0,0,1,0,'',0,0,0,21,0,0,0,0,'','','2017-12-25 16:24:11',0,0),(2682,167,'viewjc_lly','datsearch','查询时间','','datetime','',0,0,1,0,'',0,0,0,22,0,0,0,0,'','','2017-12-25 16:24:11',0,0),(2683,10,'KJ_DeviceType','bz6','质保期','','varchar','',10,0,1,0,'',0,0,0,33,0,0,0,0,'','','2017-07-19 11:34:10',0,0),(2684,10,'KJ_DeviceType','bz7','库存数量','','varchar','',10,0,1,0,'',0,0,0,34,0,0,0,0,'','','2017-07-19 11:34:10',0,0),(2685,10,'KJ_DeviceType','bz8','请录入字段名','','varchar','',10,0,1,0,'',0,0,0,35,0,0,0,0,'','','2017-07-19 11:34:10',0,0),(2686,10,'KJ_DeviceType','bz9','请录入字段名','','varchar','',10,0,1,0,'',0,0,0,36,0,0,0,0,'','','2017-07-19 11:34:10',0,0),(2687,10,'KJ_DeviceType','bz10','请录入字段名','','varchar','',10,0,1,0,'',0,0,0,37,0,0,0,0,'','','2017-07-19 11:34:10',0,0),(2688,168,'viewjc_devtj','devid','设备类型ID','设备类型ID(即驱动编号)0-20：用于分站类型 21-76：用于传感器类型','int','',0,0,1,1,'',0,0,0,1,1,10,178,0,'','','2017-06-29 16:26:37',0,0),(2689,168,'viewjc_devtj','bz4','设备型号','','int','',0,0,1,0,'',0,0,0,2,1,152,2301,0,'AllDevModel','','2017-06-29 16:26:37',0,0),(2690,168,'viewjc_devtj','sumcoumt','型号总数','','varchar','',10,0,1,0,'',0,0,0,3,0,0,0,0,'','','2017-06-29 16:26:37',0,0),(2691,168,'viewjc_devtj','sumzycount','在用数量','','bigint','',0,0,1,0,'',0,0,0,4,0,0,0,0,'','','2017-06-29 16:26:37',0,0),(2692,168,'viewjc_devtj','sumkccount','库存数量','','double','',0,0,1,0,'',0,0,0,5,0,0,0,0,'','','2017-06-29 16:26:37',0,0),(2693,168,'viewjc_devtj','sumoveryxcount','超有效期数量','','bigint','',0,0,1,0,'',0,0,0,6,0,0,0,0,'','','2017-06-29 16:26:37',0,0),(2694,168,'viewjc_devtj','sumoverzbcount','超保质期数量','','bigint','',0,0,1,0,'',0,0,0,7,0,0,0,0,'','','2017-06-29 16:26:37',0,0),(2695,33,'ViewMLLDDDayReport','bidb','关联断电次数','','bigint','',0,0,1,0,'',0,0,0,28,1,169,2700,0,'','','2018-02-05 18:11:08',0,0),(2696,33,'ViewMLLDDDayReport','bidc','关联馈电次数','','bigint','',0,0,1,0,'',0,0,0,29,1,170,2705,0,'','','2018-02-05 18:11:08',0,0),(2697,169,'view_3montha','pointid','测点ID','','bigint','',0,0,1,0,'',0,0,0,1,0,0,0,0,'','','2017-03-22 14:30:09',0,0),(2698,169,'view_3montha','sumcount','累计断电次数','','bigint','',0,0,1,0,'',0,0,0,2,0,0,0,0,'','','2017-03-22 14:30:09',0,0),(2699,169,'view_3montha','sumtime','累计断电时间','','time','',0,0,1,0,'',0,0,0,3,0,0,0,0,'','','2017-03-22 14:30:09',0,0),(2700,169,'view_3montha','bida','主键ID','','bigint','',0,0,1,1,'',0,0,0,4,0,0,0,0,'','','2017-03-22 14:30:09',0,0),(2701,170,'view_4montha','PointID','测点ID','','bigint','',0,0,1,0,'',0,0,0,1,0,0,0,0,'','','2017-03-22 14:31:38',0,0),(2702,170,'view_4montha','point','测点号','测点号','varchar','',50,0,1,0,'',0,0,0,2,0,0,0,0,'','','2017-03-22 14:31:39',0,0),(2703,170,'view_4montha','sumcount','累计馈电次数','','bigint','',0,0,1,0,'',0,0,0,3,0,0,0,0,'','','2017-03-22 14:31:39',0,0),(2704,170,'view_4montha','sumtime','累计馈电时间','','time','',0,0,1,0,'',0,0,0,4,0,0,0,0,'','','2017-03-22 14:31:39',0,0),(2705,170,'view_4montha','bid','主键ID','','bigint','',0,0,1,1,'',0,0,0,5,0,0,0,0,'','','2017-03-22 14:31:40',0,0),(2706,39,'ViewKGLBJDDDayReport','pointid','请录入字段名','','bigint','',0,0,1,0,'',0,0,0,32,0,0,0,0,'','','2018-01-25 11:15:10',0,0),(2707,33,'ViewMLLDDDayReport','kdpid','关联断电ID','','bigint','',0,0,1,0,'',0,0,0,30,0,0,0,0,'','','2018-02-05 18:11:08',0,0),(2708,33,'ViewMLLDDDayReport','kdssz','馈电状态值','模拟量：断线/上溢/负漂/实时值\r\n开关量：断线/开/停\r\n控制量：接通/断开\r\n馈电状态：复电失败/断电失败\r\n设备故障：系统启动/系统退出/非法退出\r\n分站状态：通讯中断/通讯误码/初始化中/交流','varchar','',10,0,1,0,'',0,0,0,31,0,0,0,0,'','','2018-02-05 18:11:08',0,0),(2709,33,'ViewMLLDDDayReport','zdzsa','最大值时间','最大值时间','datetime','',0,0,1,0,'',0,0,0,32,0,0,0,0,'','','2018-02-05 18:11:08',0,0),(2710,33,'ViewMLLDDDayReport','kdstate','馈电状态','','varchar','',10,0,1,0,'',0,0,0,33,0,0,0,0,'','','2018-02-05 18:11:08',0,0),(2741,172,'viewkdstatereport','fzh','分站号','分站号','smallint','',0,0,1,0,'',0,0,0,1,0,0,0,0,'','','2017-11-03 15:29:45',0,0),(2742,172,'viewkdstatereport','kh','口号','口号','smallint','',0,0,1,0,'',0,0,0,2,0,0,0,0,'','','2017-11-03 15:29:45',0,0),(2743,172,'viewkdstatereport','devid','设备类型编号','设备类型编号','bigint','',0,0,1,0,'',0,0,0,3,1,10,178,0,'AllJC_Dev','','2017-11-03 15:29:45',0,0),(2744,172,'viewkdstatereport','wzid','安装位置编号','安装位置编号','bigint','',0,0,1,0,'',0,0,0,4,1,8,136,0,'AllJC_WZ','','2017-11-03 15:29:45',0,0),(2745,172,'viewkdstatereport','point','测点号','测点号','varchar','',50,0,1,0,'',0,0,0,5,0,0,0,0,'AllPointMnl','','2017-11-03 15:29:45',0,1),(2746,172,'viewkdstatereport','type','数据状态','数据状态','smallint','',0,0,1,0,'',0,0,0,6,0,0,0,0,'','','2017-11-03 15:29:45',0,0),(2747,172,'viewkdstatereport','state','设备状态','设备状态','smallint','',0,0,1,0,'',0,0,0,7,1,163,2524,0,'AllDevTypeCode','','2017-11-03 15:29:45',0,0),(2748,172,'viewkdstatereport','ssz','显示值（报警初始值）','显示值（报警初始值）','varchar','',10,0,1,0,'',0,0,0,8,0,0,0,0,'','','2017-11-03 15:29:45',0,0),(2749,172,'viewkdstatereport','zdz','最大值','最大值','float','',0,0,1,0,'',0,0,0,9,0,0,0,0,'','','2017-11-03 15:29:45',0,0),(2750,172,'viewkdstatereport','pjz','平均值','平均值','float','',0,0,1,0,'',0,0,0,10,0,0,0,0,'','','2017-11-03 15:29:45',0,0),(2751,172,'viewkdstatereport','zdzsa','最大值时间','最大值时间','datetime','',0,0,1,0,'',0,0,0,11,0,0,0,0,'','','2017-11-03 15:29:45',0,0),(2752,172,'viewkdstatereport','zdzs','本次最大值时刻','本次最大值时刻','varchar','',19,0,1,0,'',0,0,0,12,0,0,0,0,'','','2017-11-03 15:29:45',0,0),(2753,172,'viewkdstatereport','cs','处理措施','处理措施','text','',65535,0,1,0,'',0,0,0,13,0,0,0,0,'','','2017-11-03 15:29:45',0,0),(2754,172,'viewkdstatereport','kzk','控制口','控制口','text','',65535,0,1,0,'',0,0,0,14,0,0,0,0,'','','2017-11-03 15:29:45',0,0),(2755,172,'viewkdstatereport','kdid','馈电ids','馈电ids','text','',65535,0,1,0,'',0,0,0,15,0,0,0,0,'','','2017-11-03 15:29:45',0,0),(2756,172,'viewkdstatereport','wz','控制区域','控制区域','varchar','',60,0,1,0,'',0,0,0,16,0,0,0,0,'','','2017-11-03 15:29:45',0,0),(2757,172,'viewkdstatereport','pid','关联馈电异常','关联馈电异常','bigint','',0,0,1,0,'',0,0,0,17,0,0,0,0,'','','2017-11-03 15:29:45',0,0),(2758,172,'viewkdstatereport','bid','主键id','主键id','bigint','',0,0,1,0,'',0,0,0,18,0,0,0,0,'','','2017-11-03 15:29:45',0,0),(2759,172,'viewkdstatereport','bida','模拟量关联最大值','关联最大值','bigint','',0,0,1,0,'',0,0,0,19,1,32,582,0,'','','2017-11-03 15:29:45',0,0),(2760,172,'viewkdstatereport','bidb','开关量关联馈电次数及时间','无关联','bigint','',0,0,1,0,'',0,0,0,20,0,0,0,0,'','','2017-11-03 15:29:45',0,0),(2761,172,'viewkdstatereport','bidc','模拟量关联馈电次数及时间','关联馈电次数','bigint','',0,0,1,0,'',0,0,0,21,0,0,0,0,'','','2017-11-03 15:29:45',0,0),(2762,172,'viewkdstatereport','datsearch','查询时间','查询时间','datetime','',0,0,1,0,'',0,0,0,22,0,0,0,0,'','','2017-11-03 15:29:45',0,0),(2763,172,'viewkdstatereport','kdstime','本次馈电开始时间','本次馈电开始时间','datetime','',0,0,1,0,'',0,0,0,23,0,0,0,0,'','','2017-11-03 15:29:45',0,0),(2764,172,'viewkdstatereport','kdetime','本次馈电结束时间','本次馈电结束时间','datetime','',0,0,1,0,'',0,0,0,24,0,0,0,0,'','','2017-11-03 15:29:45',0,0),(2765,172,'viewkdstatereport','kdcursumtime','本次馈电累积时间','本次馈电累积时间','time','',0,0,1,0,'',0,0,0,25,0,0,0,0,'','','2017-11-03 15:29:45',0,0),(2766,172,'viewkdstatereport','toid','馈电异常去向id','馈电异常去向id','bigint','',0,0,1,0,'',0,0,0,26,0,0,0,0,'','','2017-11-03 15:29:45',0,0),(2767,172,'viewkdstatereport','kdpid','无关联2','无关联2','bigint','',0,0,1,0,'',0,0,0,27,0,0,0,0,'','','2017-11-03 15:29:45',0,0),(2768,172,'viewkdstatereport','kdssz','馈电状态值','馈电状态值','varchar','',10,0,1,0,'',0,0,0,28,0,0,0,0,'','','2017-11-03 15:29:45',0,0),(2769,172,'viewkdstatereport','kdstate','馈电状态','馈电状态','varchar','',10,0,1,0,'',0,0,0,29,0,0,0,0,'','','2017-11-03 15:29:45',0,0),(2770,40,'ViewJKSBGZDayReport','pointid','测点id','测点id','bigint','',0,0,1,0,'',0,0,0,21,0,0,0,0,'','','2018-01-25 11:28:15',0,0),(2771,39,'ViewKGLBJDDDayReport','bz1','处理人','','varchar','',500,0,1,0,'',0,0,0,33,0,0,0,0,'','','2018-01-25 11:15:10',0,0),(2772,39,'ViewKGLBJDDDayReport','bz2','处理时间','','varchar','',500,0,1,0,'',0,0,0,34,0,0,0,0,'','','2018-01-25 11:15:10',0,0),(2773,27,'ViewJC_KGStateMonth','pointid','测点ID编号[历史表关联字段]','测点ID编号[历史表关联字段]','bigint','',0,0,1,0,'',0,0,0,14,0,0,0,0,'','','2018-01-24 17:51:15',0,0),(2774,31,'ViewJC_BMonth','zdzsa','最大值时间','最大值时间','datetime','',0,0,1,0,'',0,0,0,25,0,0,0,0,'','','2018-02-05 18:03:27',0,0),(2775,31,'ViewJC_BMonth','bz1','处理人','','varchar','',500,0,1,0,'',0,0,0,26,0,0,0,0,'','','2018-02-05 18:03:27',0,0),(2776,31,'ViewJC_BMonth','bz2','处理时间','','varchar','',500,0,1,0,'',0,0,0,27,0,0,0,0,'','','2018-02-05 18:03:27',0,0),(2777,32,'View_1Month','pointid','测点ID编号[历史表关联字段]','测点ID编号[历史表关联字段]','bigint',NULL,0,0,1,0,'',0,0,0,14,0,0,0,0,NULL,NULL,NULL,0,0),(2778,32,'View_1Month','zdzsa','请录入字段名','','varchar',NULL,29,0,1,0,'',0,0,0,15,0,0,0,0,NULL,NULL,NULL,0,0),(2779,33,'ViewMLLDDDayReport','bz1','处理人','','varchar','',500,0,1,0,'',0,0,0,34,0,0,0,0,'','','2018-02-05 18:11:08',0,0),(2780,33,'ViewMLLDDDayReport','bz2','处理时间','','varchar','',500,0,1,0,'',0,0,0,35,0,0,0,0,'','','2018-02-05 18:11:08',0,0),(2781,158,'jc_bdd','pointid','请录入字段名','','bigint',NULL,0,0,1,0,'',0,0,0,18,0,0,0,0,NULL,NULL,NULL,0,0),(2782,158,'jc_bdd','state','设备状态','设备状态','smallint',NULL,0,0,1,0,'',0,0,0,19,0,0,0,0,NULL,NULL,NULL,0,0),(2783,158,'jc_bdd','bz1','备注1','备注1','varchar',NULL,500,0,1,0,'',0,0,0,20,0,0,0,0,NULL,NULL,NULL,0,0),(2784,158,'jc_bdd','bz2','备注2','备注2','varchar',NULL,500,0,1,0,'',0,0,0,21,0,0,0,0,NULL,NULL,NULL,0,0),(2785,162,'viewkglkddayreport','bz1','备注1','备注1','varchar','',500,0,1,0,'',0,0,0,29,0,0,0,0,'','','2017-11-03 15:23:26',0,0),(2786,162,'viewkglkddayreport','bz2','备注2','备注2','varchar','',500,0,1,0,'',0,0,0,30,0,0,0,0,'','','2017-11-03 15:23:26',0,0),(2787,172,'viewkdstatereport','bz1','备注1','备注1','varchar','',500,0,1,0,'',0,0,0,30,0,0,0,0,'','','2017-11-03 15:29:45',0,0),(2788,172,'viewkdstatereport','bz2','备注2','备注2','varchar','',500,0,1,0,'',0,0,0,31,0,0,0,0,'','','2017-11-03 15:29:45',0,0),(2789,173,'viewmnlbjmaxavgmaxtime','pointid','测点id','','bigint','',0,0,1,1,'',0,0,0,1,0,0,0,0,'','','2017-07-21 16:01:00',0,0),(2790,173,'viewmnlbjmaxavgmaxtime','point','测点号','测点号','varchar','',50,0,1,0,'',0,0,0,2,0,0,0,0,'','','2017-07-21 16:01:00',0,0),(2791,173,'viewmnlbjmaxavgmaxtime','zdz','最大值','','decimal','',0,0,1,0,'',0,0,0,3,0,0,0,0,'','','2017-07-21 16:01:00',0,0),(2792,173,'viewmnlbjmaxavgmaxtime','pjz','平均值','','decimal','',0,2,1,0,'',0,0,0,4,0,0,0,0,'','','2017-07-21 16:01:00',0,0),(2793,173,'viewmnlbjmaxavgmaxtime','zdzs','最大值时间','','datetime','',0,0,1,0,'',0,0,0,5,0,0,0,0,'','','2017-07-21 16:01:00',0,0),(2794,174,'viewmnlbsbjmonth','ID','模拟量倍数报警月表id','模拟量倍数报警月表id','bigint','',0,0,1,1,'',0,0,0,1,0,0,0,0,'','','2017-09-11 14:07:33',0,0),(2795,174,'viewmnlbsbjmonth','pointID','请录入字段名','','bigint','',0,0,1,0,'',0,0,0,2,0,0,0,0,'','','2017-09-11 14:07:33',0,0),(2796,174,'viewmnlbsbjmonth','fzh','分站号','分站号','smallint','',0,0,1,0,'',0,0,0,3,0,0,0,0,'','','2017-09-11 14:07:33',0,0),(2797,174,'viewmnlbsbjmonth','kh','口号','口号','smallint','',0,0,1,0,'',0,0,0,4,0,0,0,0,'','','2017-09-11 14:07:33',0,0),(2798,174,'viewmnlbsbjmonth','dzh','地址号','地址号','smallint','',0,0,1,0,'',0,0,0,5,0,0,0,0,'','','2017-09-11 14:07:33',0,0),(2799,174,'viewmnlbsbjmonth','devid','设备类型索引ID','设备类型索引ID','bigint','',0,0,1,0,'',0,0,0,6,0,0,0,0,'','','2017-09-11 14:07:33',0,0),(2800,174,'viewmnlbsbjmonth','wzid','安装位置索引ID','安装位置索引ID','bigint','',0,0,1,0,'',0,0,0,7,0,0,0,0,'','','2017-09-11 14:07:33',0,0),(2801,174,'viewmnlbsbjmonth','point','测点号','测点号','varchar','',50,0,1,0,'',0,0,0,8,0,0,0,0,'AllPointMnl','','2017-09-11 14:07:33',0,1),(2802,174,'viewmnlbsbjmonth','type','倍数报警类型,值默认1','倍数报警类型,值默认1','smallint','',0,0,1,0,'',0,0,0,9,0,0,0,0,'','','2017-09-11 14:07:33',0,0),(2803,174,'viewmnlbsbjmonth','bstj','报警条件','报警条件','varchar','',200,0,1,0,'',0,0,0,10,0,0,0,0,'','','2017-09-11 14:07:33',0,0),(2804,174,'viewmnlbsbjmonth','bsz','最大值','最大值','float','',0,0,1,0,'',0,0,0,11,0,0,0,0,'','','2017-09-11 14:07:33',0,0),(2805,174,'viewmnlbsbjmonth','stime','开始时间','开始时间','datetime','',0,0,1,0,'',0,0,0,12,0,0,0,0,'','','2017-09-11 14:07:33',0,0),(2806,174,'viewmnlbsbjmonth','etime','结束时间','结束时间','datetime','',0,0,1,0,'',0,0,0,13,0,0,0,0,'','','2017-09-11 14:07:33',0,0),(2807,174,'viewmnlbsbjmonth','ssz','报警开始时的实时值','报警开始时的实时值','varchar','',10,0,1,0,'',0,0,0,14,0,0,0,0,'','','2017-09-11 14:07:33',0,0),(2808,174,'viewmnlbsbjmonth','zdz','报警期间的最大值','报警期间的最大值','float','',0,0,1,0,'',0,0,0,15,0,0,0,0,'','','2017-09-11 14:07:33',0,0),(2809,174,'viewmnlbsbjmonth','pjz','周平均值','周平均值','float','',0,0,1,0,'',0,0,0,16,0,0,0,0,'','','2017-09-11 14:07:33',0,0),(2810,174,'viewmnlbsbjmonth','zdzs','报警期间的最大值时间','报警期间的最大值时间','datetime','',0,0,1,0,'',0,0,0,17,0,0,0,0,'','','2017-09-11 14:07:33',0,0),(2811,174,'viewmnlbsbjmonth','Bz1','备用1','备用1','text','',65535,0,1,0,'',0,0,0,18,0,0,0,0,'','','2017-09-11 14:07:33',0,0),(2812,174,'viewmnlbsbjmonth','Bz2','备用2','备用2','text','',65535,0,1,0,'',0,0,0,19,0,0,0,0,'','','2017-09-11 14:07:33',0,0),(2813,174,'viewmnlbsbjmonth','Bz3','备用3','备用3','text','',65535,0,1,0,'',0,0,0,20,0,0,0,0,'','','2017-09-11 14:07:33',0,0),(2814,174,'viewmnlbsbjmonth','upflag','上传标志0-未传1-已传','上传标志0-未传1-已传','varchar','',1,0,1,0,'',0,0,0,21,0,0,0,0,'','','2017-09-11 14:07:33',0,0),(2815,174,'viewmnlbsbjmonth','wz','安装位置，最多30个汉字','安装位置，最多30个汉字','varchar','',60,0,1,0,'',0,0,0,22,0,0,0,0,'','','2017-09-11 14:07:33',0,0),(2816,174,'viewmnlbsbjmonth','name','传感器类型名','传感器类型名','varchar','',20,0,1,0,'',0,0,0,23,0,0,0,0,'','','2017-09-11 14:07:33',0,0),(2817,174,'viewmnlbsbjmonth','datsearch','查询时间','查询时间','datetime','',0,0,1,0,'',0,0,0,24,0,0,0,0,'','','2017-09-11 14:07:33',0,0),(2818,175,'BFT_userrole','UserRoleID','用户角色ID','用户角色ID','bigint','',0,0,1,1,'',0,0,0,1,0,0,0,0,'','','2017-07-30 16:07:28',0,0),(2819,175,'BFT_userrole','UserID','用户ID','用户ID','bigint','',0,0,1,0,'',0,0,0,2,3,1,1,0,'','','2017-07-30 16:07:28',0,0),(2820,175,'BFT_userrole','RoleID','角色ID','角色ID','bigint','',0,0,1,0,'',0,0,0,3,1,2,20,0,'','','2017-07-30 16:07:28',0,0),(2821,175,'BFT_userrole','CreateTime','创建时间','创建时间','datetime','',0,0,1,0,'',0,0,0,4,0,0,0,0,'','','2017-07-30 16:07:28',0,0),(2822,175,'BFT_userrole','CreateName','创建人','创建人','varchar','',128,0,1,0,'',0,0,0,5,0,0,0,0,'','','2017-07-30 16:07:28',0,0),(2823,176,'viewmnldaysavg','PointID','测点ID编号[历史表关联字段]','测点ID编号[历史表关联字段]','bigint','',0,0,1,1,'',0,0,0,1,0,0,0,0,'','','2017-09-11 14:21:33',0,0),(2824,176,'viewmnldaysavg','point','测点号','测点号','varchar','',50,0,1,0,'',0,0,0,2,0,0,0,0,'AllPointMnl','','2017-09-11 14:21:33',0,1),(2825,176,'viewmnldaysavg','wz','安装位置','安装位置','varchar','',60,0,1,0,'',0,0,0,3,0,0,0,0,'','','2017-09-11 14:21:33',0,0),(2826,176,'viewmnldaysavg','name','设备类型','设备类型','varchar','',20,0,1,0,'',0,0,0,4,0,0,0,0,'','','2017-09-11 14:21:33',0,0),(2827,176,'viewmnldaysavg','pjz','平均值','平均值','double','',0,0,1,0,'',0,0,0,5,0,0,0,0,'','','2017-09-11 14:21:33',0,0),(2828,176,'viewmnldaysavg','zdz','最大值','最大值','float','',0,0,1,0,'',0,0,0,6,0,0,0,0,'','','2017-09-11 14:21:33',0,0),(2829,176,'viewmnldaysavg','zxz','最小值','最小值','float','',0,0,1,0,'',0,0,0,7,0,0,0,0,'','','2017-09-11 14:21:33',0,0),(2830,176,'viewmnldaysavg','datsearch','查询时间','查询时间','datetime','',0,0,1,0,'',0,0,0,8,0,0,0,0,'','','2017-09-11 14:21:33',0,0),(2831,177,'viewmnlbx','id','主键id','主键id','bigint','',0,0,1,1,'',0,0,0,1,0,0,0,0,'','','2017-09-20 16:28:16',0,0),(2832,177,'viewmnlbx','pointid','pointid','pointid','bigint','',0,0,1,0,'',0,0,0,2,1,9,2581,0,'','','2017-09-20 16:28:16',0,0),(2833,177,'viewmnlbx','fzh','分站号','分站号','smallint','',0,0,1,0,'',0,0,0,3,0,0,0,0,'','','2017-09-20 16:28:16',0,0),(2834,177,'viewmnlbx','kh','口号','口号','smallint','',0,0,1,0,'',0,0,0,4,0,0,0,0,'','','2017-09-20 16:28:16',0,0),(2835,177,'viewmnlbx','devid','设备类型索引ID','设备类型索引ID','bigint','',0,0,1,0,'',0,0,0,5,1,10,178,0,'','','2017-09-20 16:28:16',0,0),(2836,177,'viewmnlbx','wzid','安装位置索引ID','安装位置索引ID','bigint','',0,0,1,0,'',0,0,0,6,0,0,0,0,'','','2017-09-20 16:28:16',0,0),(2837,177,'viewmnlbx','point','测点号','测点号','varchar','',50,0,1,0,'',0,0,0,7,0,0,0,0,'AllPointMnl','','2017-09-20 16:28:16',0,1),(2838,177,'viewmnlbx','type','数据状态','数据状态','smallint','',0,0,1,0,'',0,0,0,8,0,0,0,0,'','','2017-09-20 16:28:16',0,0),(2839,177,'viewmnlbx','state','设备状态','设备状态','smallint','',0,0,1,0,'',0,0,0,9,0,0,0,0,'','','2017-09-20 16:28:16',0,0),(2840,177,'viewmnlbx','stime','开始时间','开始时间','datetime','',0,0,1,0,'',0,0,0,10,0,0,0,0,'','','2017-09-20 16:28:16',0,0),(2841,177,'viewmnlbx','etime','结束时间','结束时间','datetime','',0,0,1,0,'',0,0,0,11,0,0,0,0,'','','2017-09-20 16:28:16',0,0),(2842,177,'viewmnlbx','ssz','显示值（报警初始值）','显示值（报警初始值）','varchar','',10,0,1,0,'',0,0,0,12,0,0,0,0,'','','2017-09-20 16:28:16',0,0),(2843,177,'viewmnlbx','zdz','最大值','最大值','float','',0,0,1,0,'',0,0,0,13,0,0,0,0,'','','2017-09-20 16:28:16',0,0),(2844,177,'viewmnlbx','pjz','平均值','平均值','float','',0,0,1,0,'',0,0,0,14,0,0,0,0,'','','2017-09-20 16:28:16',0,0),(2845,177,'viewmnlbx','zdzs','最大值时间','最大值时间','datetime','',0,0,1,0,'',0,0,0,15,0,0,0,0,'','','2017-09-20 16:28:16',0,0),(2846,177,'viewmnlbx','cs','处理措施','处理措施','text','',65535,0,1,0,'',0,0,0,16,0,0,0,0,'','','2017-09-20 16:28:16',0,0),(2847,177,'viewmnlbx','bz1','备注1','备注1','varchar','',500,0,1,0,'',0,0,0,17,0,0,0,0,'','','2017-09-20 16:28:16',0,0),(2848,177,'viewmnlbx','bz2','备注2','备注2','varchar','',500,0,1,0,'',0,0,0,18,0,0,0,0,'','','2017-09-20 16:28:16',0,0),(2849,177,'viewmnlbx','kzk','模拟量、开关量：控制测点号\r\n控制量：馈电点号','模拟量、开关量：控制测点号\r\n控制量：馈电点号','text','',65535,0,1,0,'',0,0,0,19,0,0,0,0,'','','2017-09-20 16:28:16',0,0),(2850,177,'viewmnlbx','upflag','上传标志0-未传1-已传','上传标志0-未传1-已传','varchar','',1,0,1,0,'',0,0,0,20,0,0,0,0,'','','2017-09-20 16:28:16',0,0),(2851,177,'viewmnlbx','kdid','馈电异常记录ID EX:2015090912000','馈电异常记录ID EX:201509091200000909,201509091200000910','text','',65535,0,1,0,'',0,0,0,21,0,0,0,0,'','','2017-09-20 16:28:16',0,0),(2852,177,'viewmnlbx','isalarm','是否为报警标志','是否为报警标志','smallint','',0,0,1,0,'',0,0,0,22,0,0,0,0,'','','2017-09-20 16:28:16',0,0),(2853,177,'viewmnlbx','wz','控制区域','控制区域','varchar','',60,0,1,0,'',0,0,0,23,0,0,0,0,'','','2017-09-20 16:28:16',0,0),(2854,177,'viewmnlbx','datsearch','查询时间','查询时间','datetime','',0,0,1,0,'',0,0,0,24,0,0,0,0,'','','2017-09-20 16:28:16',0,0),(2855,177,'viewmnlbx','sumtime','累计时间','累计时间','time','',0,0,1,0,'',0,0,0,25,0,0,0,0,'','','2017-09-20 16:28:16',0,0),(2856,177,'viewmnlbx','ida','主键ida','','bigint','',0,0,1,0,'',0,0,0,26,0,0,0,0,'','','2017-09-20 16:28:16',0,0),(2857,178,'viewmnlbjddmonth','PointID','测点ID编号[历史表关联字段]','测点ID编号[历史表关联字段]','bigint','',0,0,1,1,'',0,0,0,1,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(2858,178,'viewmnlbjddmonth','point','测点号','测点号','varchar','',50,0,1,0,'',0,0,0,2,0,0,0,0,'AllPointMnl','','2018-01-24 10:12:10',0,1),(2859,178,'viewmnlbjddmonth','bjcs','报警次数','','bigint','',0,0,1,0,'',0,0,0,3,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(2860,178,'viewmnlbjddmonth','bjstarttime','报警对应时间','','text','',65535,0,1,0,'',0,0,0,4,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(2861,178,'viewmnlbjddmonth','bjendtime','报警解除时间','','text','',65535,0,1,0,'',0,0,0,5,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(2862,178,'viewmnlbjddmonth','bjpjzzdzzdzs','报警平均值/最大值/最大值时刻','','text','',65535,0,1,0,'',0,0,0,6,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(2863,178,'viewmnlbjddmonth','bjljsc','本次报警累计时间','','text','',65535,0,1,0,'',0,0,0,7,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(2864,178,'viewmnlbjddmonth','bjljscall','报警累计时间','','time','',0,0,1,0,'',0,0,0,8,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(2865,178,'viewmnlbjddmonth','bjcuoshi','报警措施及时刻','','text','',65535,0,1,0,'',0,0,0,9,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(2866,178,'viewmnlbjddmonth','ddcs','断电次数','','bigint','',0,0,1,0,'',0,0,0,10,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(2867,178,'viewmnlbjddmonth','ddstarttime','断电对应时间','','text','',65535,0,1,0,'',0,0,0,11,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(2868,178,'viewmnlbjddmonth','ddendtime','断电解除时间','','text','',65535,0,1,0,'',0,0,0,12,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(2869,178,'viewmnlbjddmonth','ddstartendtime','断电时刻及复电时刻','','text','',65535,0,1,0,'',0,0,0,13,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(2870,178,'viewmnlbjddmonth','ddpjzzdzzdzs','断电平均值/最大值/最大值时刻','','text','',65535,0,1,0,'',0,0,0,14,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(2871,178,'viewmnlbjddmonth','ddljsc','本次断电累计时间','','text','',65535,0,1,0,'',0,0,0,15,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(2872,178,'viewmnlbjddmonth','ddljscall','断电累计时间','','time','',0,0,1,0,'',0,0,0,16,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(2873,178,'viewmnlbjddmonth','ddcuoshi','断电措施及时刻','','text','',65535,0,1,0,'',0,0,0,17,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(2874,178,'viewmnlbjddmonth','kdcs','馈电次数','','bigint','',0,0,1,0,'',0,0,0,18,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(2875,178,'viewmnlbjddmonth','kdstarttime','馈电对应时间','','text','',65535,0,1,0,'',0,0,0,19,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(2876,178,'viewmnlbjddmonth','kdendtime','馈电解除时间','','text','',65535,0,1,0,'',0,0,0,20,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(2877,178,'viewmnlbjddmonth','kdljsc','本次馈电累计时间','','text','',65535,0,1,0,'',0,0,0,21,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(2878,178,'viewmnlbjddmonth','kdljscall','馈电累计时间','','time','',0,0,1,0,'',0,0,0,22,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(2879,178,'viewmnlbjddmonth','wz','安装位置','安装位置，最多30个汉字','varchar','',60,0,1,0,'',0,0,0,23,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(2880,178,'viewmnlbjddmonth','devname','设备类型','传感器类型名','varchar','',20,0,1,0,'',0,0,0,24,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(2881,178,'viewmnlbjddmonth','datsearch','查询时间','','datetime','',0,0,1,0,'',0,0,0,25,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(2882,179,'viewmnlddmaxavgmaxtime','pointid','测点id','','bigint','',0,0,1,1,'',0,0,0,1,0,0,0,0,'','','2017-08-15 17:32:15',0,0),(2883,179,'viewmnlddmaxavgmaxtime','point','测点号','测点号','varchar','',50,0,1,0,'',0,0,0,2,0,0,0,0,'','','2017-08-15 17:32:15',0,0),(2884,179,'viewmnlddmaxavgmaxtime','zdz','最大值','','varchar','',10,0,1,0,'',0,0,0,3,0,0,0,0,'','','2017-08-15 17:32:15',0,0),(2885,179,'viewmnlddmaxavgmaxtime','pjz','平均值','','varchar','',10,0,1,0,'',0,0,0,4,0,0,0,0,'','','2017-08-15 17:32:15',0,0),(2886,179,'viewmnlddmaxavgmaxtime','zdzs','最大值时间','','varchar','',19,0,1,0,'',0,0,0,5,0,0,0,0,'','','2017-08-15 17:32:15',0,0),(2887,180,'view_4monthabykg1','PointID','测点id','','bigint','',0,0,1,1,'',0,0,0,1,0,0,0,0,'','','2017-08-17 10:18:08',0,0),(2888,180,'view_4monthabykg1','point','测点号','测点号','varchar','',50,0,1,0,'',0,0,0,2,0,0,0,0,'','','2017-08-17 10:18:08',0,0),(2889,180,'view_4monthabykg1','sumcount','累计馈电次数','','bigint','',0,0,1,0,'',0,0,0,3,0,0,0,0,'','','2017-08-17 10:18:08',0,0),(2890,180,'view_4monthabykg1','sumtime','累计馈电时间','','time','',0,0,1,0,'',0,0,0,4,0,0,0,0,'','','2017-08-17 10:18:08',0,0),(2891,180,'view_4monthabykg1','bid','测点id2','','bigint','',0,0,1,0,'',0,0,0,5,0,0,0,0,'','','2017-08-17 10:18:08',0,0),(2892,34,'ViewMLLTJZReport','pointid','测点id','','bigint','',0,0,1,0,'',0,0,0,23,1,9,2581,0,'','','2017-10-12 17:02:27',0,0),(2893,181,'viewjc_mdef','fzh','分站号','分站号','smallint',NULL,0,0,1,0,'',0,0,0,1,0,0,0,0,NULL,NULL,NULL,0,0),(2894,181,'viewjc_mdef','kh','口号','口号','smallint',NULL,0,0,1,0,'',0,0,0,2,0,0,0,0,NULL,NULL,NULL,0,0),(2895,181,'viewjc_mdef','devid','设备类型编号','设备类型编号','bigint',NULL,0,0,1,0,'',0,0,0,3,0,0,0,0,NULL,NULL,NULL,0,0),(2896,181,'viewjc_mdef','wzid','安装位置编号','安装位置编号','bigint',NULL,0,0,1,0,'',0,0,0,4,0,0,0,0,NULL,NULL,NULL,0,0),(2897,181,'viewjc_mdef','point','测点号','测点号','varchar',NULL,50,0,1,0,'',0,0,0,5,0,0,0,0,NULL,NULL,NULL,0,0),(2898,181,'viewjc_mdef','pointid','测点ID编号[历史表关联字段]','测点ID编号[历史表关联字段]','bigint',NULL,0,0,1,0,'',0,0,0,6,0,0,0,0,NULL,NULL,NULL,0,0),(2899,181,'viewjc_mdef','bid','测点ID编号[历史表关联字段]','测点ID编号[历史表关联字段]','bigint',NULL,0,0,1,0,'',0,0,0,7,0,0,0,0,NULL,NULL,NULL,0,0),(2900,26,'ViewMLLDayReport','zxz','最小值','','double','',0,2,1,0,'',0,0,0,18,0,0,0,0,'','','2017-10-16 16:15:16',0,0),(2901,26,'ViewMLLDayReport','zxzs','最小值时间','最小值时间','datetime','',0,0,1,0,'',0,0,0,19,0,0,0,0,'','','2017-10-16 16:15:16',0,0),(2902,26,'ViewMLLDayReport','bida','defid','','bigint','',0,0,1,0,'',0,0,0,20,1,9,2581,0,'','','2017-10-16 16:15:16',0,0),(2903,177,'viewmnlbx','kdstate','馈电状态','','varchar','',10,0,1,0,'',0,0,0,27,0,0,0,0,'','','2017-09-20 16:28:16',0,0),(2904,182,'viewfiveminutemaxandtime','pointid','测点ID编号[历史表关联字段]','测点ID编号[历史表关联字段]','bigint','',0,0,1,1,'',0,0,0,1,0,0,0,0,'','','2017-10-12 17:01:47',0,0),(2905,182,'viewfiveminutemaxandtime','point','测点号','测点号','varchar','',50,0,1,0,'',0,0,0,2,0,0,0,0,'','','2017-10-12 17:01:47',0,1),(2906,182,'viewfiveminutemaxandtime','zdz','最大值','','double','',0,2,1,0,'',0,0,0,3,0,0,0,0,'','','2017-10-12 17:01:47',0,0),(2907,182,'viewfiveminutemaxandtime','pjz','平均值','','double','',0,2,1,0,'',0,0,0,4,0,0,0,0,'','','2017-10-12 17:01:47',0,0),(2908,182,'viewfiveminutemaxandtime','zdzs','最大值时间','最大值时间','datetime','',0,0,1,0,'',0,0,0,5,0,0,0,0,'','','2017-10-12 17:01:47',0,0),(2909,182,'viewfiveminutemaxandtime','zdzsa','请录入字段名','','varchar','',29,0,1,0,'',0,0,0,6,0,0,0,0,'','','2017-10-12 17:01:47',0,0),(2910,182,'viewfiveminutemaxandtime','bid','测点ID编号[历史表关联字段]','测点ID编号[历史表关联字段]','bigint','',0,0,1,0,'',0,0,0,7,0,0,0,0,'','','2017-10-12 17:01:47',0,0),(2911,182,'viewfiveminutemaxandtime','bida','测点ID编号[历史表关联字段]','测点ID编号[历史表关联字段]','bigint','',0,0,1,0,'',0,0,0,8,0,0,0,0,'','','2017-10-12 17:01:47',0,0),(2912,182,'viewfiveminutemaxandtime','bidb','测点ID编号[历史表关联字段]','测点ID编号[历史表关联字段]','bigint','',0,0,1,0,'',0,0,0,9,0,0,0,0,'','','2017-10-12 17:01:47',0,0),(2913,182,'viewfiveminutemaxandtime','bidc','测点ID编号[历史表关联字段]','测点ID编号[历史表关联字段]','bigint','',0,0,1,0,'',0,0,0,10,0,0,0,0,'','','2017-10-12 17:01:47',0,0),(2914,182,'viewfiveminutemaxandtime','datSearch','请录入字段名','','datetime','',0,0,1,0,'',0,0,0,11,0,0,0,0,'','','2017-10-12 17:01:47',0,0),(2915,26,'ViewMLLDayReport','sumcountbygz','故障次数','','bigint','',0,0,1,0,'',0,0,0,21,0,0,0,0,'','','2017-10-16 16:15:16',0,0),(2916,26,'ViewMLLDayReport','sumtimebygz','故障时间','','varchar','',10,0,1,0,'',0,0,0,22,0,0,0,0,'','','2017-10-16 16:15:16',0,0),(2917,26,'ViewMLLDayReport','sumcountbykdfdsb','馈电次数_复电失败','','bigint','',0,0,1,0,'',0,0,0,23,0,0,0,0,'','','2017-10-16 16:15:16',0,0),(2918,26,'ViewMLLDayReport','sumtimebykdfdsb','馈电时间_复电失败','','varchar','',10,0,1,0,'',0,0,0,24,0,0,0,0,'','','2017-10-16 16:15:16',0,0),(2919,178,'viewmnlbjddmonth','kdfdsbcs','馈电次数_复电失败','','bigint','',0,0,1,0,'',0,0,0,26,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(2920,178,'viewmnlbjddmonth','kdfdsbstarttime','馈电对应时间_复电失败','','text','',65535,0,1,0,'',0,0,0,27,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(2921,178,'viewmnlbjddmonth','kdfdsbendtime','馈电解除时间_复电失败','','text','',65535,0,1,0,'',0,0,0,28,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(2922,178,'viewmnlbjddmonth','kdfdsbljsc','本次馈电累计时间_复电失败','','text','',65535,0,1,0,'',0,0,0,29,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(2923,178,'viewmnlbjddmonth','kdfdsbljscall','馈电累计时间_复电失败','','time','',0,0,1,0,'',0,0,0,30,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(2924,39,'ViewKGLBJDDDayReport','sumcountfdsb','累计次数_复电失败','','bigint','',0,0,1,0,'',0,0,0,35,0,0,0,0,'','','2018-01-25 11:15:10',0,0),(2925,39,'ViewKGLBJDDDayReport','sumtimefdsb','累计时间_复电失败','','varchar','',10,0,1,0,'',0,0,0,36,0,0,0,0,'','','2018-01-25 11:15:10',0,0),(2926,162,'viewkglkddayreport','kdsumcountfdsb','馈电异常次数_复电失败','','bigint','',0,0,1,0,'',0,0,0,31,0,0,0,0,'','','2017-11-03 15:23:26',0,0),(2927,162,'viewkglkddayreport','kdsumtimefdsb','馈电异常时间_复电失败','','varchar','',10,0,1,0,'',0,0,0,32,0,0,0,0,'','','2017-11-03 15:23:26',0,0),(2928,172,'viewkdstatereport','kdsumcount','馈电异常累计次数','','bigint','',0,0,1,0,'',0,0,0,32,0,0,0,0,'','','2017-11-03 15:29:45',0,0),(2929,172,'viewkdstatereport','kdsumtme','馈电异常累计时间','','varchar','',10,0,1,0,'',0,0,0,33,0,0,0,0,'','','2017-11-03 15:29:45',0,0),(2930,172,'viewkdstatereport','kdsumcountfdsb','馈电异常累计次数_复电失败','','bigint','',0,0,1,0,'',0,0,0,34,0,0,0,0,'','','2017-11-03 15:29:45',0,0),(2931,172,'viewkdstatereport','kdsumtmefdsb','馈电异常累计时间_复电失败','','varchar','',10,0,1,0,'',0,0,0,35,0,0,0,0,'','','2017-11-03 15:29:45',0,0),(2932,165,'viewjc_lld','point','测点号','测点号','varchar','',50,0,1,0,'',0,0,0,23,0,0,0,0,'AllPointLjl','','2017-12-25 16:23:33',0,1),(2933,164,'viewjc_llmonth','point','测点号','','varchar','',50,0,1,0,'',0,0,0,23,0,0,0,0,'AllPointLjl','','2017-12-25 15:37:59',0,1),(2934,166,'viewjc_llm','point','测点号','','varchar','',50,0,1,0,'',0,0,0,23,0,0,0,0,'AllPointLjl','','2017-12-25 16:23:53',0,1),(2935,167,'viewjc_lly','point','测点号','','varchar','',50,0,1,0,'',0,0,0,23,0,0,0,0,'AllPointLjl','','2017-12-25 16:24:11',0,1),(2936,183,'viewlinkagehistory','Id','唯一编码','唯一编码','bigint','',0,0,1,1,'',0,0,0,1,0,0,0,0,'','','2017-12-18 20:58:17',0,0),(2937,183,'viewlinkagehistory','SysEmergencyLinkageId','应急联动配置Id','应急联动配置Id','bigint','',0,0,1,0,'',0,0,0,2,0,0,0,0,'','','2017-12-18 20:58:17',0,0),(2938,183,'viewlinkagehistory','StartTime','开始时间','开始时间','datetime','',0,0,1,0,'',0,0,0,3,0,0,0,0,'','','2017-12-18 20:58:17',0,0),(2939,183,'viewlinkagehistory','EndTime','结束时间','结束时间','datetime','',0,0,1,0,'',0,0,0,4,0,0,0,0,'','','2017-12-18 20:58:17',0,0),(2940,183,'viewlinkagehistory','IsForceEnd','是否强制结束（0-不是，1-是）','是否强制结束（0-不是，1-是）','int','',0,0,1,0,'',0,0,0,5,0,0,0,0,'','','2017-12-18 20:58:17',0,0),(2941,183,'viewlinkagehistory','EndPerson','强制结束人Id','强制结束人Id','bigint','',0,0,1,0,'',0,0,0,6,0,0,0,0,'','','2017-12-18 20:58:17',0,0),(2942,183,'viewlinkagehistory','By1','请录入字段名','','varchar','',500,0,1,0,'',0,0,0,7,0,0,0,0,'','','2017-12-18 20:58:17',0,0),(2943,183,'viewlinkagehistory','By2','请录入字段名','','varchar','',500,0,1,0,'',0,0,0,8,0,0,0,0,'','','2017-12-18 20:58:17',0,0),(2944,183,'viewlinkagehistory','By3','请录入字段名','','varchar','',500,0,1,0,'',0,0,0,9,0,0,0,0,'','','2017-12-18 20:58:17',0,0),(2945,183,'viewlinkagehistory','By4','请录入字段名','','varchar','',500,0,1,0,'',0,0,0,10,0,0,0,0,'','','2017-12-18 20:58:17',0,0),(2946,183,'viewlinkagehistory','By5','请录入字段名','','varchar','',500,0,1,0,'',0,0,0,11,0,0,0,0,'','','2017-12-18 20:58:17',0,0),(2947,183,'viewlinkagehistory','point','主控测点号','测点号','varchar','',50,0,1,0,'',0,0,0,12,0,0,0,0,'','','2017-12-18 20:58:17',0,0),(2948,183,'viewlinkagehistory','wz','主控测点安装位置','安装位置，最多30个汉字','varchar','',60,0,1,0,'',0,0,0,13,0,0,0,0,'','','2017-12-18 20:58:17',0,0),(2950,183,'viewlinkagehistory','DataStateText','主控测点数据状态','枚举显示值','varchar','',200,0,1,0,'',0,0,0,15,0,0,0,0,'','','2017-12-18 20:58:17',0,0),(2951,183,'viewlinkagehistory','datsearch','查询时间','','datetime','',0,0,1,0,'',0,0,0,16,0,0,0,0,'','','2017-12-18 20:58:17',0,0),(2952,183,'viewlinkagehistory','IsForceEndText','是否强制结束','','varchar','',1,0,1,0,'',0,0,0,17,0,0,0,0,'','','2017-12-18 20:58:17',0,0),(2953,183,'viewlinkagehistory','pointid','主控测点id','测点ID编号[历史表关联字段]','bigint','',0,0,1,0,'',0,0,0,18,0,0,0,0,'','','2017-12-18 20:58:17',0,0),(2954,183,'viewlinkagehistory','linkagename','应急联动名称','应急联动名称','varchar','',100,0,1,0,'',0,0,0,19,0,0,0,0,'','','2017-12-18 20:58:17',0,0),(2955,183,'viewlinkagehistory','devname','主控测点类型','传感器类型名','varchar','',20,0,1,0,'',0,0,0,20,0,0,0,0,'','','2017-12-18 20:58:17',0,0),(2956,183,'viewlinkagehistory','username','强制结束人','真实用户姓名','varchar','',128,0,1,0,'',0,0,0,20,0,0,0,0,'','','2017-12-18 20:58:17',0,0),(2957,184,'viewpersoncallhistory','Id','唯一编码','唯一编码','bigint','',0,0,1,1,'',0,0,0,1,0,0,0,0,'','','2018-03-09 14:03:16',0,0),(2958,184,'viewpersoncallhistory','Hjlx','呼叫方向（0-井下呼叫地面，1-地面呼叫井下）','呼叫类型（0-井下呼叫地面，1-地面呼叫井下）','int','',0,0,1,0,'',0,0,0,2,0,0,0,0,'AllCallDirection','','2018-03-09 14:03:16',0,0),(2959,184,'viewpersoncallhistory','Bh','向上呼叫人员卡号','呼叫卡号','varchar','',20,0,1,0,'',0,0,0,3,0,0,0,0,'','','2018-03-09 14:03:16',0,0),(2960,184,'viewpersoncallhistory','Yid','向上呼叫人员id','人员编号','bigint','',0,0,1,0,'',0,0,0,4,0,0,0,0,'','','2018-03-09 14:03:16',0,0),(2961,184,'viewpersoncallhistory','PointId','向上呼叫测点id','设备Id','bigint','',0,0,1,0,'',0,0,0,5,0,0,0,0,'','','2018-03-09 14:03:16',0,0),(2962,184,'viewpersoncallhistory','CallTime','呼叫时间','呼叫时间','datetime','',0,0,1,0,'',0,0,0,6,0,0,0,0,'','','2018-03-09 14:03:16',0,0),(2963,184,'viewpersoncallhistory','Tsycs','呼叫提示音响应次数','呼叫提示音响应次数','int','',0,0,1,0,'',0,0,0,7,0,0,0,0,'','','2018-03-09 14:03:16',0,0),(2964,184,'viewpersoncallhistory','State','呼叫状态（0-解除呼叫 1-一般呼叫 2-紧急呼叫','呼叫状态（0-解除呼叫 1-一般呼叫 2-紧急呼叫）','int','',0,0,1,0,'',0,0,0,8,0,0,0,0,'','','2018-03-09 14:03:16',0,0),(2965,184,'viewpersoncallhistory','Type','呼叫范围类型（0-全员呼叫 1-区段呼叫 2-指定','呼叫范围类型（0-全员呼叫 1-区段呼叫 2-指定卡号呼叫）','int','',0,0,1,0,'',0,0,0,9,0,0,0,0,'','','2018-03-09 14:03:16',0,0),(2966,184,'viewpersoncallhistory','Card','未使用','呼叫的卡号','varchar','',500,0,1,0,'',0,0,0,10,0,0,0,0,'','','2018-03-09 14:03:16',0,0),(2967,184,'viewpersoncallhistory','Username','登陆用户名','登陆用户名','varchar','',128,0,1,0,'',0,0,0,11,0,0,0,0,'','','2018-03-09 14:03:16',0,0),(2968,184,'viewpersoncallhistory','IP','登陆用户Ip','登陆用户Ip','varchar','',15,0,1,0,'',0,0,0,12,0,0,0,0,'','','2018-03-09 14:03:16',0,0),(2969,184,'viewpersoncallhistory','timer','记录时间','记录时间','datetime','',0,0,1,0,'',0,0,0,13,0,0,0,0,'','','2018-03-09 14:03:16',0,0),(2970,184,'viewpersoncallhistory','Flag','呼叫标志','呼叫标志','int','',0,0,1,0,'',0,0,0,14,0,0,0,0,'','','2018-03-09 14:03:16',0,0),(2971,184,'viewpersoncallhistory','SysFlag','系统类型标志:0—人员,1—机车','系统类型标志:0—人员,1—机车','int','',0,0,1,0,'',0,0,0,15,0,0,0,0,'','','2018-03-09 14:03:16',0,0),(2972,184,'viewpersoncallhistory','upflag','标记','标记','varchar','',1,0,1,0,'',0,0,0,16,0,0,0,0,'','','2018-03-09 14:03:16',0,0),(2973,184,'viewpersoncallhistory','By1','请录入字段名','','varchar','',500,0,1,0,'',0,0,0,17,0,0,0,0,'','','2018-03-09 14:03:16',0,0),(2974,184,'viewpersoncallhistory','By2','请录入字段名','','varchar','',500,0,1,0,'',0,0,0,18,0,0,0,0,'','','2018-03-09 14:03:16',0,0),(2975,184,'viewpersoncallhistory','By3','请录入字段名','','varchar','',500,0,1,0,'',0,0,0,19,0,0,0,0,'','','2018-03-09 14:03:16',0,0),(2976,184,'viewpersoncallhistory','By4','请录入字段名','','varchar','',500,0,1,0,'',0,0,0,20,0,0,0,0,'','','2018-03-09 14:03:16',0,0),(2977,184,'viewpersoncallhistory','By5','请录入字段名','','varchar','',500,0,1,0,'',0,0,0,21,0,0,0,0,'','','2018-03-09 14:03:16',0,0),(2978,184,'viewpersoncallhistory','point','向上呼叫测点','测点号','varchar','',50,0,1,0,'',0,0,0,22,0,0,0,0,'','','2018-03-09 14:03:16',0,0),(2979,184,'viewpersoncallhistory','wz','向上呼叫测点位置','安装位置，最多30个汉字','varchar','',60,0,1,0,'',0,0,0,23,0,0,0,0,'','','2018-03-09 14:03:16',0,0),(2981,184,'viewpersoncallhistory','datsearch','查询时间','','datetime','',0,0,1,0,'',0,0,0,25,0,0,0,0,'','','2018-03-09 14:03:16',0,0),(2982,184,'viewpersoncallhistory','hjlxText','呼叫方向文本','','varchar','',6,0,1,0,'',0,0,0,26,0,0,0,0,'','','2018-03-09 14:03:16',0,0),(2983,184,'viewpersoncallhistory','StateText','呼叫状态文本','','varchar','',4,0,1,0,'',0,0,0,27,0,0,0,0,'','','2018-03-09 14:03:16',0,0),(2984,184,'viewpersoncallhistory','TypeText','呼叫范围类型文本','','varchar','',7,0,1,0,'',0,0,0,28,0,0,0,0,'','','2018-03-09 14:03:16',0,0),(2985,184,'viewpersoncallhistory','FlagText','呼叫标志文本','','varchar','',6,0,1,0,'',0,0,0,29,0,0,0,0,'','','2018-03-09 14:03:16',0,0),(2986,184,'viewpersoncallhistory','sysflagText','系统类型文本','','varchar','',2,0,1,0,'',0,0,0,30,0,0,0,0,'','','2018-03-09 14:03:16',0,0),(2988,184,'viewpersoncallhistory','callobject','呼叫对象','','varchar','',4,0,1,0,'',0,0,0,32,0,0,0,0,'','','2018-03-09 14:03:16',0,0),(2989,184,'viewpersoncallhistory','devname','传感器类型名','传感器类型名','varchar','',20,0,1,0,'',0,0,0,32,0,0,0,0,'','','2018-03-09 14:03:16',0,0),(2990,184,'viewpersoncallhistory','callpersonname','向上呼叫人员名称','员工姓名','varchar','',50,0,1,0,'',0,0,0,33,0,0,0,0,'','','2018-03-09 14:03:16',0,0),(3006,186,'viewpersonequipmentfault','ID','主键id','','bigint','',0,0,1,1,'',0,0,0,1,0,0,0,0,'','','2017-12-25 16:11:00',0,0),(3007,186,'viewpersonequipmentfault','pointID','测点id','','bigint','',0,0,1,0,'',0,0,0,2,0,0,0,0,'','','2017-12-25 16:11:00',0,0),(3008,186,'viewpersonequipmentfault','fzh','分站号','分站号','smallint','',0,0,1,0,'',0,0,0,3,0,0,0,0,'','','2017-12-25 16:11:00',0,0),(3009,186,'viewpersonequipmentfault','kh','口号','口号','smallint','',0,0,1,0,'',0,0,0,4,0,0,0,0,'','','2017-12-25 16:11:00',0,0),(3010,186,'viewpersonequipmentfault','dzh','地址号','地址号','smallint','',0,0,1,0,'',0,0,0,5,0,0,0,0,'','','2017-12-25 16:11:00',0,0),(3011,186,'viewpersonequipmentfault','devid','设备类型索引ID','设备类型索引ID','bigint','',0,0,1,0,'',0,0,0,6,0,0,0,0,'','','2017-12-25 16:11:00',0,0),(3012,186,'viewpersonequipmentfault','wzid','安装位置索引ID','安装位置索引ID','bigint','',0,0,1,0,'',0,0,0,7,0,0,0,0,'','','2017-12-25 16:11:00',0,0),(3013,186,'viewpersonequipmentfault','point','测点号','测点号','varchar','',50,0,1,0,'',0,0,0,8,0,0,0,0,'AllPersonPoint','','2017-12-25 16:11:00',0,1),(3014,186,'viewpersonequipmentfault','type','数据状态','数据状态','smallint','',0,0,1,0,'',0,0,0,9,0,0,0,0,'','','2017-12-25 16:11:00',0,0),(3015,186,'viewpersonequipmentfault','state','设备状态','设备状态','smallint','',0,0,1,0,'',0,0,0,10,0,0,0,0,'','','2017-12-25 16:11:00',0,0),(3016,186,'viewpersonequipmentfault','stime','开始时间','开始时间','datetime','',0,0,1,0,'',0,0,0,11,0,0,0,0,'','','2017-12-25 16:11:00',0,0),(3017,186,'viewpersonequipmentfault','etime','结束时间','结束时间','datetime','',0,0,1,0,'',0,0,0,12,0,0,0,0,'','','2017-12-25 16:11:00',0,0),(3018,186,'viewpersonequipmentfault','ssz','显示值（报警初始值）','显示值（报警初始值）','varchar','',10,0,1,0,'',0,0,0,13,0,0,0,0,'','','2017-12-25 16:11:00',0,0),(3019,186,'viewpersonequipmentfault','zdz','最大值','最大值','float','',0,0,1,0,'',0,0,0,14,0,0,0,0,'','','2017-12-25 16:11:00',0,0),(3020,186,'viewpersonequipmentfault','pjz','平均值','平均值','float','',0,0,1,0,'',0,0,0,15,0,0,0,0,'','','2017-12-25 16:11:00',0,0),(3021,186,'viewpersonequipmentfault','zdzs','最大值时间','最大值时间','datetime','',0,0,1,0,'',0,0,0,16,0,0,0,0,'','','2017-12-25 16:11:00',0,0),(3022,186,'viewpersonequipmentfault','cs','处理措施','处理措施','text','',65535,0,1,0,'',0,0,0,17,0,0,0,0,'','','2017-12-25 16:11:00',0,0),(3023,186,'viewpersonequipmentfault','kzk','模拟量、开关量：控制测点号\r\n控制量：馈电点号','模拟量、开关量：控制测点号\r\n控制量：馈电点号','text','',65535,0,1,0,'',0,0,0,18,0,0,0,0,'','','2017-12-25 16:11:00',0,0),(3024,186,'viewpersonequipmentfault','kdid','馈电异常记录ID EX:2015090912000','馈电异常记录ID EX:201509091200000909,201509091200000910','text','',65535,0,1,0,'',0,0,0,19,0,0,0,0,'','','2017-12-25 16:11:00',0,0),(3025,186,'viewpersonequipmentfault','isalarm','是否为报警标志','是否为报警标志','smallint','',0,0,1,0,'',0,0,0,20,0,0,0,0,'','','2017-12-25 16:11:00',0,0),(3026,186,'viewpersonequipmentfault','upflag','请录入字段名','','varchar','',1,0,1,0,'',0,0,0,21,0,0,0,0,'','','2017-12-25 16:11:00',0,0),(3027,186,'viewpersonequipmentfault','remark','备注','备注','text','',65535,0,1,0,'',0,0,0,22,0,0,0,0,'','','2017-12-25 16:11:00',0,0),(3028,186,'viewpersonequipmentfault','Bz1','备注1','备注1','varchar','',500,0,1,0,'',0,0,0,23,0,0,0,0,'','','2017-12-25 16:11:00',0,0),(3029,186,'viewpersonequipmentfault','Bz2','备注2','备注2','varchar','',500,0,1,0,'',0,0,0,24,0,0,0,0,'','','2017-12-25 16:11:00',0,0),(3030,186,'viewpersonequipmentfault','Bz3','备注3','备注3','varchar','',500,0,1,0,'',0,0,0,25,0,0,0,0,'','','2017-12-25 16:11:00',0,0),(3031,186,'viewpersonequipmentfault','Bz4','备注4','备注4','varchar','',500,0,1,0,'',0,0,0,26,0,0,0,0,'','','2017-12-25 16:11:00',0,0),(3032,186,'viewpersonequipmentfault','Bz5','备注5','备注5','varchar','',500,0,1,0,'',0,0,0,27,0,0,0,0,'','','2017-12-25 16:11:00',0,0),(3033,186,'viewpersonequipmentfault','wz','安装位置，最多30个汉字','安装位置，最多30个汉字','varchar','',60,0,1,0,'',0,0,0,28,0,0,0,0,'','','2017-12-25 16:11:00',0,0),(3034,186,'viewpersonequipmentfault','name','传感器类型名','传感器类型名','varchar','',20,0,1,0,'',0,0,0,29,0,0,0,0,'','','2017-12-25 16:11:00',0,0),(3035,186,'viewpersonequipmentfault','dataState','数据状态','枚举显示值','varchar','',200,0,1,0,'',0,0,0,30,0,0,0,0,'','','2017-12-25 16:11:00',0,0),(3036,186,'viewpersonequipmentfault','equState','设备状态','枚举显示值','varchar','',200,0,1,0,'',0,0,0,31,0,0,0,0,'','','2017-12-25 16:11:00',0,0),(3037,186,'viewpersonequipmentfault','datsearch','查询时间','','datetime','',0,0,1,0,'',0,0,0,32,0,0,0,0,'','','2017-12-25 16:11:00',0,0),(3038,187,'viewpersonequipmentoperating','ID','主键ID','主键ID','bigint','',0,0,1,1,'',0,0,0,1,0,0,0,0,'','','2017-12-25 17:31:02',0,0),(3039,187,'viewpersonequipmentoperating','pointID','测点ID编号[历史表关联字段]','测点ID编号[历史表关联字段]','bigint','',0,0,1,0,'',0,0,0,2,0,0,0,0,'','','2017-12-25 17:31:02',0,0),(3040,187,'viewpersonequipmentoperating','fzh','分站号','分站号','smallint','',0,0,1,0,'',0,0,0,3,0,0,0,0,'','','2017-12-25 17:31:02',0,0),(3041,187,'viewpersonequipmentoperating','kh','口号','口号','smallint','',0,0,1,0,'',0,0,0,4,0,0,0,0,'','','2017-12-25 17:31:02',0,0),(3042,187,'viewpersonequipmentoperating','dzh','地址号','地址号','smallint','',0,0,1,0,'',0,0,0,5,0,0,0,0,'','','2017-12-25 17:31:02',0,0),(3043,187,'viewpersonequipmentoperating','devid','设备类型索引ID','设备类型索引ID','bigint','',0,0,1,0,'',0,0,0,6,0,0,0,0,'','','2017-12-25 17:31:02',0,0),(3044,187,'viewpersonequipmentoperating','wzid','安装位置索引ID','安装位置索引ID','bigint','',0,0,1,0,'',0,0,0,7,0,0,0,0,'','','2017-12-25 17:31:02',0,0),(3045,187,'viewpersonequipmentoperating','point','测点号','测点号','varchar','',50,0,1,0,'',0,0,0,8,0,0,0,0,'AllPersonPoint','','2017-12-25 17:31:02',0,1),(3046,187,'viewpersonequipmentoperating','type','数据状态','数据状态','smallint','',0,0,1,0,'',0,0,0,9,0,0,0,0,'','','2017-12-25 17:31:02',0,0),(3047,187,'viewpersonequipmentoperating','state','设备状态','设备状态','smallint','',0,0,1,0,'',0,0,0,10,0,0,0,0,'','','2017-12-25 17:31:02',0,0),(3048,187,'viewpersonequipmentoperating','val','值','值','varchar','',10,0,1,0,'',0,0,0,11,0,0,0,0,'','','2017-12-25 17:31:02',0,0),(3049,187,'viewpersonequipmentoperating','timer','时间','时间','datetime','',0,0,1,0,'',0,0,0,12,0,0,0,0,'','','2017-12-25 17:31:02',0,0),(3050,187,'viewpersonequipmentoperating','remark','备注','备注','text','',65535,0,1,0,'',0,0,0,13,0,0,0,0,'','','2017-12-25 17:31:02',0,0),(3051,187,'viewpersonequipmentoperating','Bz1','备用1','备用1','varchar','',500,0,1,0,'',0,0,0,14,0,0,0,0,'','','2017-12-25 17:31:02',0,0),(3052,187,'viewpersonequipmentoperating','Bz2','备用2','备用2','varchar','',500,0,1,0,'',0,0,0,15,0,0,0,0,'','','2017-12-25 17:31:02',0,0),(3053,187,'viewpersonequipmentoperating','Bz3','备用3','备用3','varchar','',500,0,1,0,'',0,0,0,16,0,0,0,0,'','','2017-12-25 17:31:02',0,0),(3054,187,'viewpersonequipmentoperating','Bz4','备用4','备用4','varchar','',500,0,1,0,'',0,0,0,17,0,0,0,0,'','','2017-12-25 17:31:02',0,0),(3055,187,'viewpersonequipmentoperating','Bz5','备用5','备用5','varchar','',500,0,1,0,'',0,0,0,18,0,0,0,0,'','','2017-12-25 17:31:02',0,0),(3056,187,'viewpersonequipmentoperating','upflag','上传标志0-未传1-已传','上传标志0-未传1-已传','varchar','',1,0,1,0,'',0,0,0,19,0,0,0,0,'','','2017-12-25 17:31:02',0,0),(3057,187,'viewpersonequipmentoperating','wz','安装位置','安装位置，最多30个汉字','varchar','',60,0,1,0,'',0,0,0,20,0,0,0,0,'','','2017-12-25 17:31:02',0,0),(3058,187,'viewpersonequipmentoperating','name','设备类型','设备类型','varchar','',20,0,1,0,'',0,0,0,21,0,0,0,0,'','','2017-12-25 17:31:02',0,0),(3059,187,'viewpersonequipmentoperating','dataState','数据状态','枚举显示值','varchar','',200,0,1,0,'',0,0,0,22,0,0,0,0,'','','2017-12-25 17:31:02',0,0),(3060,187,'viewpersonequipmentoperating','equState','设备状态','枚举显示值','varchar','',200,0,1,0,'',0,0,0,23,0,0,0,0,'','','2017-12-25 17:31:02',0,0),(3061,187,'viewpersonequipmentoperating','datsearch','查询时间','','datetime','',0,0,1,0,'',0,0,0,24,0,0,0,0,'','','2017-12-25 17:31:02',0,0),(3062,188,'viewpersontracehistory','Id','唯一编码','唯一编码','bigint','',0,0,1,1,'',0,0,0,1,0,0,0,0,'','','2017-12-26 10:26:44',0,0),(3063,188,'viewpersontracehistory','bh','标志卡号','标志卡号','varchar','',20,0,1,0,'',0,0,0,2,0,0,0,0,'','','2017-12-26 10:26:44',0,0),(3064,188,'viewpersontracehistory','Yid','内部编号','内部编号','bigint','',0,0,1,0,'',0,0,0,3,0,0,0,0,'','','2017-12-26 10:26:44',0,0),(3065,188,'viewpersontracehistory','pointid','识别点号','识别点号','bigint','',0,0,1,0,'',0,0,0,4,0,0,0,0,'','','2017-12-26 10:26:44',0,0),(3066,188,'viewpersontracehistory','rtime','采集时间','采集时间','datetime','',0,0,1,0,'',0,0,0,5,0,0,0,0,'','','2017-12-26 10:26:44',0,0),(3067,188,'viewpersontracehistory','timer','写数据库时间','写数据库时间','datetime','',0,0,1,0,'',0,0,0,6,0,0,0,0,'','','2017-12-26 10:26:44',0,0),(3068,188,'viewpersontracehistory','flag','记录标志','记录标志','varchar','',2,0,1,0,'',0,0,0,7,0,0,0,0,'','','2017-12-26 10:26:44',0,0),(3069,188,'viewpersontracehistory','sysflag','系统类型标志','系统类型标志','smallint','',0,0,1,0,'',0,0,0,8,0,0,0,0,'','','2017-12-26 10:26:44',0,0),(3070,188,'viewpersontracehistory','cwflag','标注该轨迹是否可用','标注该轨迹是否可用','smallint','',0,0,1,0,'',0,0,0,9,0,0,0,0,'','','2017-12-26 10:26:44',0,0),(3071,188,'viewpersontracehistory','by1','请录入字段名','','varchar','',500,0,1,0,'',0,0,0,10,0,0,0,0,'','','2017-12-26 10:26:44',0,0),(3072,188,'viewpersontracehistory','by2','请录入字段名','','varchar','',500,0,1,0,'',0,0,0,11,0,0,0,0,'','','2017-12-26 10:26:44',0,0),(3073,188,'viewpersontracehistory','by3','请录入字段名','','varchar','',500,0,1,0,'',0,0,0,12,0,0,0,0,'','','2017-12-26 10:26:44',0,0),(3074,188,'viewpersontracehistory','by4','请录入字段名','','varchar','',500,0,1,0,'',0,0,0,13,0,0,0,0,'','','2017-12-26 10:26:44',0,0),(3075,188,'viewpersontracehistory','by5','请录入字段名','','varchar','',500,0,1,0,'',0,0,0,14,0,0,0,0,'','','2017-12-26 10:26:44',0,0),(3076,188,'viewpersontracehistory','upflag','标记','标记','varchar','',1,0,1,0,'',0,0,0,15,0,0,0,0,'','','2017-12-26 10:26:44',0,0),(3077,188,'viewpersontracehistory','personName','员工姓名','员工姓名','varchar','',50,0,1,0,'',0,0,0,16,0,0,0,0,'','','2017-12-26 10:26:44',0,0),(3078,188,'viewpersontracehistory','point','测点号','测点号','varchar','',50,0,1,0,'',0,0,0,17,0,0,0,0,'','','2017-12-26 10:26:44',0,0),(3079,188,'viewpersontracehistory','flagText','记录标志文本','','varchar','',6,0,1,0,'',0,0,0,18,0,0,0,0,'','','2017-12-26 10:26:44',0,0),(3080,188,'viewpersontracehistory','sysflagText','系统类型标志文本','','varchar','',2,0,1,0,'',0,0,0,19,0,0,0,0,'','','2017-12-26 10:26:44',0,0),(3081,188,'viewpersontracehistory','datsearch','查询时间','','datetime','',0,0,1,0,'',0,0,0,20,0,0,0,0,'','','2017-12-26 10:26:44',0,0),(3082,178,'viewmnlbjddmonth','devid','设备类型ID(即驱动编号)0-20：用于分站类型 ','设备类型ID(即驱动编号)0-20：用于分站类型 21-76：用于传感器类型','bigint','',0,0,1,0,'',0,0,0,31,1,10,178,0,'AllJC_Dev','','2018-01-24 10:12:10',0,0),(3083,178,'viewmnlbjddmonth','gzcs','故障次数','','bigint','',0,0,1,0,'',0,0,0,32,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(3084,178,'viewmnlbjddmonth','gzstarttime','故障对应时间','','text','',65535,0,1,0,'',0,0,0,33,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(3085,178,'viewmnlbjddmonth','gzendtime','故障解除时间','','text','',65535,0,1,0,'',0,0,0,34,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(3086,178,'viewmnlbjddmonth','gzljsc','本次故障累计时间','','text','',65535,0,1,0,'',0,0,0,35,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(3087,178,'viewmnlbjddmonth','gzljscall','故障累计时间','','time','',0,0,1,0,'',0,0,0,36,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(3088,178,'viewmnlbjddmonth','gzcuoshi','故障措施及时刻','','text','',65535,0,1,0,'',0,0,0,37,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(3089,178,'viewmnlbjddmonth','pointid2','测点ID编号[历史表关联字段]','测点ID编号[历史表关联字段]','bigint','',0,0,1,0,'',0,0,0,38,1,9,2581,0,'','','2018-01-24 10:12:10',0,0),(3090,31,'ViewJC_BMonth','remark','异常原因','','text','',65535,0,1,0,'',0,0,0,28,0,0,0,0,'','','2018-02-05 18:03:27',0,0),(3091,33,'ViewMLLDDDayReport','remark','异常原因','','text','',65535,0,1,0,'',0,0,0,36,0,0,0,0,'','','2018-02-05 18:11:08',0,0),(3092,39,'ViewKGLBJDDDayReport','remark','异常原因','','text','',65535,0,1,0,'',0,0,0,37,0,0,0,0,'','','2018-01-25 11:15:10',0,0),(3093,32,'View_1Month','zxz','请录入字段名','','decimal',NULL,0,2,1,0,'',0,0,0,12,0,0,0,0,NULL,NULL,NULL,0,0),(3094,32,'View_1Month','zxzs','请录入字段名','','datetime',NULL,0,0,1,0,'',0,0,0,13,0,0,0,0,NULL,NULL,NULL,0,0),(3095,40,'ViewJKSBGZDayReport','remark','异常原因','','text','',65535,0,1,0,'',0,0,0,22,0,0,0,0,'','','2018-01-25 11:28:15',0,0),(3096,158,'jc_bdd','remark','备注','备注','text',NULL,65535,0,1,0,'',0,0,0,22,0,0,0,0,NULL,NULL,NULL,0,0),(3097,181,'viewjc_mdef','bz6','模拟量：传感器标校周期','模拟量：传感器标校周期','varchar',NULL,500,0,1,0,'',0,0,0,8,0,0,0,0,NULL,NULL,NULL,0,0),(3098,181,'viewjc_mdef','bz7','最近一次标校时间','最近一次标校时间','varchar',NULL,500,0,1,0,'',0,0,0,9,0,0,0,0,NULL,NULL,NULL,0,0),(3099,181,'viewjc_mdef','bz8','备用8','备用8','varchar',NULL,500,0,1,0,'',0,0,0,10,0,0,0,0,NULL,NULL,NULL,0,0),(3100,178,'viewmnlbjddmonth','zdz','最大值','','decimal','',0,2,1,0,'',0,0,0,39,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(3101,178,'viewmnlbjddmonth','zdzs','最大值时刻','','datetime','',0,0,1,0,'',0,0,0,40,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(3102,178,'viewmnlbjddmonth','zxz','最小值','','decimal','',0,2,1,0,'',0,0,0,41,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(3103,178,'viewmnlbjddmonth','zxzs','最小值时刻','','datetime','',0,0,1,0,'',0,0,0,42,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(3104,178,'viewmnlbjddmonth','pjz','平均值','','decimal','',0,2,1,0,'',0,0,0,43,0,0,0,0,'','','2018-01-24 10:12:10',0,0),(3105,27,'ViewJC_KGStateMonth','duration','本次持续时间','','time','',0,0,1,0,'',0,0,0,15,0,0,0,0,'','','2018-01-24 17:51:15',0,0),(3106,40,'ViewJKSBGZDayReport','bz1','处理人','','varchar','',500,0,1,0,'',0,0,0,23,0,0,0,0,'','','2018-01-25 11:28:15',0,0),(3107,40,'ViewJKSBGZDayReport','bz2','处理时间','','varchar','',500,0,1,0,'',0,0,0,24,0,0,0,0,'','','2018-01-25 11:28:15',0,0),(3108,189,'viewsubstationdischarge','datsearch','查询时间','','datetime','',0,0,1,0,'',0,0,0,1,0,0,0,0,'','','2018-01-25 15:26:35',0,0),(3109,189,'viewsubstationdischarge','id','主键id','','bigint','',0,0,1,1,'',0,0,0,2,0,0,0,0,'','','2018-01-25 15:26:35',0,0),(3110,189,'viewsubstationdischarge','type','数据状态','数据状态','smallint','',0,0,1,0,'',0,0,0,3,1,43,753,0,'','','2018-01-25 15:26:35',0,0),(3111,189,'viewsubstationdischarge','state','设备状态','设备状态','smallint','',0,0,1,0,'',0,0,0,4,1,163,2524,0,'','','2018-01-25 15:26:35',0,0),(3112,189,'viewsubstationdischarge','stime','开始时间','开始时间','datetime','',0,0,1,0,'',0,0,0,5,0,0,0,0,'','','2018-01-25 15:26:35',0,0),(3113,189,'viewsubstationdischarge','etime','结束时间','','datetime','',0,0,1,0,'',0,0,0,6,0,0,0,0,'','','2018-01-25 15:26:35',0,0),(3114,189,'viewsubstationdischarge','duration','持续时间','','time','',0,0,1,0,'',0,0,0,7,0,0,0,0,'','','2018-01-25 15:26:35',0,0),(3115,189,'viewsubstationdischarge','fzh','分站号','分站号','smallint','',0,0,1,0,'',0,0,0,8,0,0,0,0,'','','2018-01-25 15:26:35',0,0),(3116,189,'viewsubstationdischarge','kh','口号','口号','smallint','',0,0,1,0,'',0,0,0,9,0,0,0,0,'','','2018-01-25 15:26:35',0,0),(3117,189,'viewsubstationdischarge','devid','设备类型编号','设备类型编号','bigint','',0,0,1,0,'',0,0,0,10,1,10,178,0,'','','2018-01-25 15:26:35',0,0),(3118,189,'viewsubstationdischarge','wzid','安装位置编号','安装位置编号','bigint','',0,0,1,0,'',0,0,0,11,1,8,136,0,'','','2018-01-25 15:26:35',0,0),(3119,189,'viewsubstationdischarge','point','测点号','测点号','varchar','',50,0,1,0,'',0,0,0,12,0,0,0,0,'AllPoint','','2018-01-25 15:26:35',0,1),(3120,189,'viewsubstationdischarge','pointid','测点ID编号[历史表关联字段]','测点ID编号[历史表关联字段]','bigint','',0,0,1,0,'',0,0,0,13,0,0,0,0,'','','2018-01-25 15:26:35',0,0),(3121,189,'viewsubstationdischarge','bid','测点ID编号[历史表关联字段]','测点ID编号[历史表关联字段]','bigint','',0,0,1,0,'',0,0,0,14,0,0,0,0,'','','2018-01-25 15:26:35',0,0),(3122,189,'viewsubstationdischarge','bz6','模拟量：传感器标校周期','模拟量：传感器标校周期','varchar','',500,0,1,0,'',0,0,0,15,0,0,0,0,'','','2018-01-25 15:26:35',0,0),(3123,189,'viewsubstationdischarge','bz7','最近一次标校时间','最近一次标校时间','varchar','',500,0,1,0,'',0,0,0,16,0,0,0,0,'','','2018-01-25 15:26:35',0,0),(3124,189,'viewsubstationdischarge','bz8','备用8','备用8','varchar','',500,0,1,0,'',0,0,0,17,0,0,0,0,'','','2018-01-25 15:26:35',0,0),(3125,31,'ViewJC_BMonth','pointid','测点ID编号[历史表关联字段]','测点ID编号[历史表关联字段]','bigint','',0,0,1,0,'',0,0,0,29,1,9,2581,0,'','','2018-02-05 18:03:27',0,0),(3126,33,'ViewMLLDDDayReport','pointid','测点ID编号[历史表关联字段]','测点ID编号[历史表关联字段]','bigint','',0,0,1,0,'',0,0,0,37,1,9,2581,0,'','','2018-02-05 18:11:08',0,0),(3127,183,'viewlinkagehistory','bigdataanalyzename','分析模型名称','分析模型名称','varchar',NULL,100,0,1,0,'',0,0,0,21,0,0,0,0,NULL,NULL,NULL,0,0),(3128,190,'viewequipmentaccount','devid','设备类型ID(即驱动编号)0-20：用于分站类型 ','设备类型ID(即驱动编号)0-20：用于分站类型 21-76：用于传感器类型','bigint','',0,0,1,1,'',0,0,0,1,0,0,0,0,'','','2018-03-08 16:42:01',0,0),(3129,190,'viewequipmentaccount','name','传感器类型名','传感器类型名','varchar','',20,0,1,0,'',0,0,0,2,0,0,0,0,'','','2018-03-08 16:42:01',0,0),(3130,190,'viewequipmentaccount','totalnum','已购设备总数量','库存数量','varchar','',10,0,1,0,'',0,0,0,3,0,0,0,0,'','','2018-03-08 16:42:01',0,0),(3133,190,'viewequipmentaccount','usednum','已使用设备数量','','bigint','',0,0,1,0,'',0,0,0,6,0,0,0,0,'','','2018-03-08 16:42:01',0,0),(3134,190,'viewequipmentaccount','unusednum','未使用设备数量','','double','',0,0,1,0,'',0,0,0,7,0,0,0,0,'','','2018-03-08 16:42:01',0,0),(3135,190,'viewequipmentaccount','devid2','设备类型ID(即驱动编号)0-20：用于分站类型 ','设备类型ID(即驱动编号)0-20：用于分站类型 21-76：用于传感器类型','bigint','',0,0,1,0,'',0,0,0,8,0,0,0,0,'AllJC_Dev','','2018-03-08 16:42:01',0,0),(3136,190,'viewequipmentaccount','overindate','超有效期数量','','bigint','',0,0,1,0,'',0,0,0,9,0,0,0,0,'','','2018-03-08 16:42:01',0,0),(3137,190,'viewequipmentaccount','overguaranteeperiod','超保质期数量','','bigint','',0,0,1,0,'',0,0,0,10,0,0,0,0,'','','2018-03-08 16:42:01',0,0),(3138,184,'viewpersoncallhistory','downcalledlist','向下呼叫对象列表','','varchar','',341,0,1,0,'',0,0,0,33,0,0,0,0,'','','2018-03-09 14:03:16',0,0),(3139,148,'viewsbrunlogreport','pointid','测点ID编号[历史表关联字段]','测点ID编号[历史表关联字段]','bigint',NULL,0,0,1,0,'',0,0,0,15,0,0,0,0,NULL,NULL,NULL,0,0),(3140,148,'viewsbrunlogreport','dzh','地址号','地址号','smallint',NULL,0,0,1,0,'',0,0,0,16,0,0,0,0,NULL,NULL,NULL,0,0),(3141,148,'viewsbrunlogreport','bz1','备用1','备用1','varchar',NULL,500,0,1,0,'',0,0,0,17,0,0,0,0,NULL,NULL,NULL,0,0),(3142,148,'viewsbrunlogreport','bz2','备用2','备用2','varchar',NULL,500,0,1,0,'',0,0,0,18,0,0,0,0,NULL,NULL,NULL,0,0),(3143,148,'viewsbrunlogreport','bz3','备用3','备用3','varchar',NULL,500,0,1,0,'',0,0,0,19,0,0,0,0,NULL,NULL,NULL,0,0),(3144,148,'viewsbrunlogreport','bz4','备用4','备用4','varchar',NULL,500,0,1,0,'',0,0,0,20,0,0,0,0,NULL,NULL,NULL,0,0),(3145,148,'viewsbrunlogreport','bz5','备用5','备用5','varchar',NULL,500,0,1,0,'',0,0,0,21,0,0,0,0,NULL,NULL,NULL,0,0),(3165,193,'viewstationpowerchargehistory','Id','ID','','bigint','',0,0,1,1,'',0,0,0,1,0,0,0,0,'','','2019-01-30 19:13:26',0,0),(3166,193,'viewstationpowerchargehistory','fzh','分站号','分站号','smallint','',0,0,1,0,'',0,0,0,2,0,0,0,0,'','','2019-01-30 19:13:26',0,0),(3167,193,'viewstationpowerchargehistory','Mac','MAC地址','','varchar','',18,0,1,0,'',0,0,0,3,0,0,0,0,'','','2019-01-30 19:13:26',0,0),(3168,193,'viewstationpowerchargehistory','Stime','执行放电时间','放电时间','datetime','',0,0,1,0,'',0,0,0,4,0,0,0,0,'','','2019-01-30 19:13:26',0,0),(3169,193,'viewstationpowerchargehistory','Etime','执行取消放电时间','','datetime','',0,0,1,0,'',0,0,0,5,0,0,0,0,'','','2019-01-30 19:13:26',0,0),(3170,193,'viewstationpowerchargehistory','DischargeStime','设备放电开始时间','','datetime','',0,0,1,0,'',0,0,0,6,0,0,0,0,'','','2019-01-30 19:13:26',0,0),(3171,193,'viewstationpowerchargehistory','DischargeEtime','设备放电结束时间','','datetime','',0,0,1,0,'',0,0,0,7,0,0,0,0,'','','2019-01-30 19:13:26',0,0),(3172,193,'viewstationpowerchargehistory','userName','操作人','','varchar','',128,0,1,0,'',0,0,0,8,0,0,0,0,'','','2019-01-30 19:13:26',0,0),(3173,193,'viewstationpowerchargehistory','Bz1','备用','','text','',65535,0,1,0,'',0,0,0,9,0,0,0,0,'','','2019-01-30 19:13:26',0,0),(3174,193,'viewstationpowerchargehistory','Bz2','备用','','text','',65535,0,1,0,'',0,0,0,10,0,0,0,0,'','','2019-01-30 19:13:26',0,0),(3175,193,'viewstationpowerchargehistory','Bz3','备用','','text','',65535,0,1,0,'',0,0,0,11,0,0,0,0,'','','2019-01-30 19:13:26',0,0),(3176,193,'viewstationpowerchargehistory','point','测点号','测点号','varchar','',50,0,1,0,'',0,0,0,12,0,0,0,0,'AllPointStation','','2019-01-30 19:13:26',0,0),(3177,193,'viewstationpowerchargehistory','wz','安装位置','安装位置，最多30个汉字','varchar','',60,0,1,0,'',0,0,0,13,0,0,0,0,'','','2019-01-30 19:13:26',0,0),(3178,194,'viewswitchrunlogreport','id','ID','ID','bigint','',0,0,1,0,'',0,0,0,1,0,0,0,0,'','','2019-10-07 20:29:03',0,0),(3179,194,'viewswitchrunlogreport','pointid','PointID','PointID','bigint','',0,0,1,0,'',0,0,0,2,0,0,0,0,'','','2019-10-07 20:29:03',0,0),(3180,194,'viewswitchrunlogreport','fzh','分站号','分站号','smallint','',0,0,1,0,'',0,0,0,3,0,0,0,0,'','','2019-10-07 20:29:03',0,0),(3181,194,'viewswitchrunlogreport','kh','口号','口号','smallint','',0,0,1,0,'',0,0,0,4,0,0,0,0,'','','2019-10-07 20:29:03',0,0),(3182,194,'viewswitchrunlogreport','devid','设备类型索引ID','设备类型','bigint','',0,0,1,0,'',0,0,0,5,0,0,0,0,'','','2019-10-07 20:29:03',0,0),(3183,194,'viewswitchrunlogreport','wzid','安装位置索引ID','安装位','bigint','',0,0,1,0,'',0,0,0,6,1,8,136,0,'','','2019-10-07 20:29:03',0,0),(3184,194,'viewswitchrunlogreport','point','测点号','MAC地址','varchar','',50,0,1,0,'',0,0,0,7,0,0,0,0,'','','2019-10-07 20:29:03',0,0),(3185,194,'viewswitchrunlogreport','type','数据状态','数据状态','smallint','',0,0,1,0,'',0,0,0,8,1,43,753,0,'','','2019-10-07 20:29:03',0,0),(3186,194,'viewswitchrunlogreport','state','设备状态','设备状态','smallint','',0,0,1,0,'',0,0,0,9,1,163,2524,0,'','','2019-10-07 20:29:03',0,0),(3187,194,'viewswitchrunlogreport','ssz','显示值（报警初始值）','显示值','varchar','',10,0,1,0,'',0,0,0,10,0,0,0,0,'','','2019-10-07 20:29:03',0,0),(3188,194,'viewswitchrunlogreport','stime','开始时间','开始时间','datetime','',0,0,1,0,'',0,0,0,11,0,0,0,0,'','','2019-10-07 20:29:03',0,0),(3189,194,'viewswitchrunlogreport','etime','结束时间','结束时间','datetime','',0,0,1,0,'',0,0,0,12,0,0,0,0,'','','2019-10-07 20:29:03',0,0),(3190,194,'viewswitchrunlogreport','sumtime','故障累计时间','故障累计时间','time','',0,0,1,0,'',0,0,0,13,0,0,0,0,'','','2019-10-07 20:29:03',0,0),(3191,194,'viewswitchrunlogreport','remark','备注','IP地址','text','',65535,0,1,0,'',0,0,0,14,0,0,0,0,'','','2019-10-07 20:29:03',0,0),(3192,194,'viewswitchrunlogreport','upflag','上传标志0-未传1-已传','上传标志0-未传1-已传','varchar','',1,0,1,0,'',0,0,0,15,0,0,0,0,'','','2019-10-07 20:29:03',0,0),(3193,194,'viewswitchrunlogreport','datsearch','查询时间','查询时间','datetime','',0,0,1,0,'',0,0,0,16,0,0,0,0,'','','2019-10-07 20:29:03',0,0);
/*!40000 ALTER TABLE `bft_metadatafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `jc_bdd`
--

DROP TABLE IF EXISTS `jc_bdd`;
/*!50001 DROP VIEW IF EXISTS `jc_bdd`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `jc_bdd` (
  `PointID` tinyint NOT NULL,
  `id` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `stime` tinyint NOT NULL,
  `etime` tinyint NOT NULL,
  `cursumtime` tinyint NOT NULL,
  `ssz` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `pjz` tinyint NOT NULL,
  `zdzs` tinyint NOT NULL,
  `cs` tinyint NOT NULL,
  `bz1` tinyint NOT NULL,
  `bz2` tinyint NOT NULL,
  `kzk` tinyint NOT NULL,
  `kdid` tinyint NOT NULL,
  `isalarm` tinyint NOT NULL,
  `remark` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `jc_bddbykg`
--

DROP TABLE IF EXISTS `jc_bddbykg`;
/*!50001 DROP VIEW IF EXISTS `jc_bddbykg`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `jc_bddbykg` (
  `PointID` tinyint NOT NULL,
  `id` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `stime` tinyint NOT NULL,
  `etime` tinyint NOT NULL,
  `cursumtime` tinyint NOT NULL,
  `ssz` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `pjz` tinyint NOT NULL,
  `zdzs` tinyint NOT NULL,
  `cs` tinyint NOT NULL,
  `bz1` tinyint NOT NULL,
  `bz2` tinyint NOT NULL,
  `kzk` tinyint NOT NULL,
  `kdid` tinyint NOT NULL,
  `isalarm` tinyint NOT NULL,
  `remark` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `jc_bkd`
--

DROP TABLE IF EXISTS `jc_bkd`;
/*!50001 DROP VIEW IF EXISTS `jc_bkd`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `jc_bkd` (
  `Pointid` tinyint NOT NULL,
  `id` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `kzk` tinyint NOT NULL,
  `kdid` tinyint NOT NULL,
  `stime` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `jc_bkddetail`
--

DROP TABLE IF EXISTS `jc_bkddetail`;
/*!50001 DROP VIEW IF EXISTS `jc_bkddetail`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `jc_bkddetail` (
  `Pointid` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `ids` tinyint NOT NULL,
  `id` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `typedd` tinyint NOT NULL,
  `stime` tinyint NOT NULL,
  `etime` tinyint NOT NULL,
  `ssz` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `pjz` tinyint NOT NULL,
  `zdzs` tinyint NOT NULL,
  `cs` tinyint NOT NULL,
  `kzk` tinyint NOT NULL,
  `upflag` tinyint NOT NULL,
  `kdid` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `jc_bmonth`
--

DROP TABLE IF EXISTS `jc_bmonth`;
/*!50001 DROP VIEW IF EXISTS `jc_bmonth`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `jc_bmonth` (
  `id` tinyint NOT NULL,
  `pointid` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `stime` tinyint NOT NULL,
  `etime` tinyint NOT NULL,
  `ssz` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `pjz` tinyint NOT NULL,
  `zdzs` tinyint NOT NULL,
  `cs` tinyint NOT NULL,
  `bz1` tinyint NOT NULL,
  `bz2` tinyint NOT NULL,
  `kzk` tinyint NOT NULL,
  `upflag` tinyint NOT NULL,
  `kdid` tinyint NOT NULL,
  `isalarm` tinyint NOT NULL,
  `remark` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `jc_bmonthbydrepeat`
--

DROP TABLE IF EXISTS `jc_bmonthbydrepeat`;
/*!50001 DROP VIEW IF EXISTS `jc_bmonthbydrepeat`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `jc_bmonthbydrepeat` (
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `ssz` tinyint NOT NULL,
  `rownumber` tinyint NOT NULL,
  `stime` tinyint NOT NULL,
  `etime` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `jc_bmonthkd`
--

DROP TABLE IF EXISTS `jc_bmonthkd`;
/*!50001 DROP VIEW IF EXISTS `jc_bmonthkd`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `jc_bmonthkd` (
  `pointid` tinyint NOT NULL,
  `id` tinyint NOT NULL,
  `fromtype` tinyint NOT NULL,
  `kzk` tinyint NOT NULL,
  `kdid` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `cs` tinyint NOT NULL,
  `bz1` tinyint NOT NULL,
  `bz2` tinyint NOT NULL,
  `zkfzh` tinyint NOT NULL,
  `zkkh` tinyint NOT NULL,
  `zkdevid` tinyint NOT NULL,
  `zkwzid` tinyint NOT NULL,
  `zkstime` tinyint NOT NULL,
  `zketime` tinyint NOT NULL,
  `zkssz` tinyint NOT NULL,
  `zkzdz` tinyint NOT NULL,
  `zkpjz` tinyint NOT NULL,
  `zkzdzs` tinyint NOT NULL,
  `zkupflag` tinyint NOT NULL,
  `zkisalarm` tinyint NOT NULL,
  `bkpointid` tinyint NOT NULL,
  `toid` tinyint NOT NULL,
  `kdidpoint` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `stime` tinyint NOT NULL,
  `etime` tinyint NOT NULL,
  `ssz` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `pjz` tinyint NOT NULL,
  `zdzs` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `jc_bmonthnumber`
--

DROP TABLE IF EXISTS `jc_bmonthnumber`;
/*!50001 DROP VIEW IF EXISTS `jc_bmonthnumber`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `jc_bmonthnumber` (
  `rownumber` tinyint NOT NULL,
  `id` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `stime` tinyint NOT NULL,
  `etime` tinyint NOT NULL,
  `ssz` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `pjz` tinyint NOT NULL,
  `zdzs` tinyint NOT NULL,
  `cs` tinyint NOT NULL,
  `kzk` tinyint NOT NULL,
  `upflag` tinyint NOT NULL,
  `kdid` tinyint NOT NULL,
  `isalarm` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `jc_defkzk`
--

DROP TABLE IF EXISTS `jc_defkzk`;
/*!50001 DROP VIEW IF EXISTS `jc_defkzk`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `jc_defkzk` (
  `ID` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `dzh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `csid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `ssz` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `alarm` tinyint NOT NULL,
  `Voltage` tinyint NOT NULL,
  `zts` tinyint NOT NULL,
  `jckz1` tinyint NOT NULL,
  `jckz2` tinyint NOT NULL,
  `jckz3` tinyint NOT NULL,
  `Z1` tinyint NOT NULL,
  `Z2` tinyint NOT NULL,
  `Z3` tinyint NOT NULL,
  `Z4` tinyint NOT NULL,
  `Z5` tinyint NOT NULL,
  `Z6` tinyint NOT NULL,
  `Z7` tinyint NOT NULL,
  `Z8` tinyint NOT NULL,
  `K1` tinyint NOT NULL,
  `K2` tinyint NOT NULL,
  `K3` tinyint NOT NULL,
  `K4` tinyint NOT NULL,
  `K5` tinyint NOT NULL,
  `K6` tinyint NOT NULL,
  `K7` tinyint NOT NULL,
  `K8` tinyint NOT NULL,
  `Bz1` tinyint NOT NULL,
  `Bz2` tinyint NOT NULL,
  `Bz3` tinyint NOT NULL,
  `Bz4` tinyint NOT NULL,
  `Bz5` tinyint NOT NULL,
  `Bz6` tinyint NOT NULL,
  `Bz7` tinyint NOT NULL,
  `Bz8` tinyint NOT NULL,
  `Bz9` tinyint NOT NULL,
  `Bz10` tinyint NOT NULL,
  `remark` tinyint NOT NULL,
  `upflag` tinyint NOT NULL,
  `kzkpoint` tinyint NOT NULL,
  `kzkwzid` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `jc_hourmax`
--

DROP TABLE IF EXISTS `jc_hourmax`;
/*!50001 DROP VIEW IF EXISTS `jc_hourmax`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `jc_hourmax` (
  `pointid` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `zxz` tinyint NOT NULL,
  `pjz` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `jc_hourmonth`
--

DROP TABLE IF EXISTS `jc_hourmonth`;
/*!50001 DROP VIEW IF EXISTS `jc_hourmonth`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `jc_hourmonth` (
  `pointid` tinyint NOT NULL,
  `id` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `pjz` tinyint NOT NULL,
  `zxz` tinyint NOT NULL,
  `zdzs` tinyint NOT NULL,
  `zxzs` tinyint NOT NULL,
  `upflag` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `timer` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `jc_ll_dmonth`
--

DROP TABLE IF EXISTS `jc_ll_dmonth`;
/*!50001 DROP VIEW IF EXISTS `jc_ll_dmonth`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `jc_ll_dmonth` (
  `id` tinyint NOT NULL,
  `pointid` tinyint NOT NULL,
  `fy` tinyint NOT NULL,
  `wd` tinyint NOT NULL,
  `ws` tinyint NOT NULL,
  `co` tinyint NOT NULL,
  `bh` tinyint NOT NULL,
  `gh` tinyint NOT NULL,
  `bc` tinyint NOT NULL,
  `gc` tinyint NOT NULL,
  `bhl` tinyint NOT NULL,
  `bcl` tinyint NOT NULL,
  `ghl` tinyint NOT NULL,
  `gcl` tinyint NOT NULL,
  `timer` tinyint NOT NULL,
  `yxsc` tinyint NOT NULL,
  `by1` tinyint NOT NULL,
  `by2` tinyint NOT NULL,
  `by3` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `jc_ll_dmonthmax`
--

DROP TABLE IF EXISTS `jc_ll_dmonthmax`;
/*!50001 DROP VIEW IF EXISTS `jc_ll_dmonthmax`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `jc_ll_dmonthmax` (
  `pointid` tinyint NOT NULL,
  `timer` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `jc_ll_hmonth`
--

DROP TABLE IF EXISTS `jc_ll_hmonth`;
/*!50001 DROP VIEW IF EXISTS `jc_ll_hmonth`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `jc_ll_hmonth` (
  `id` tinyint NOT NULL,
  `pointid` tinyint NOT NULL,
  `fy` tinyint NOT NULL,
  `wd` tinyint NOT NULL,
  `ws` tinyint NOT NULL,
  `co` tinyint NOT NULL,
  `bh` tinyint NOT NULL,
  `gh` tinyint NOT NULL,
  `bc` tinyint NOT NULL,
  `gc` tinyint NOT NULL,
  `bhl` tinyint NOT NULL,
  `bcl` tinyint NOT NULL,
  `ghl` tinyint NOT NULL,
  `gcl` tinyint NOT NULL,
  `timer` tinyint NOT NULL,
  `yxsc` tinyint NOT NULL,
  `by1` tinyint NOT NULL,
  `by2` tinyint NOT NULL,
  `by3` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `jc_ll_hmonthmax`
--

DROP TABLE IF EXISTS `jc_ll_hmonthmax`;
/*!50001 DROP VIEW IF EXISTS `jc_ll_hmonthmax`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `jc_ll_hmonthmax` (
  `pointid` tinyint NOT NULL,
  `timer` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `jc_ll_mmonth`
--

DROP TABLE IF EXISTS `jc_ll_mmonth`;
/*!50001 DROP VIEW IF EXISTS `jc_ll_mmonth`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `jc_ll_mmonth` (
  `id` tinyint NOT NULL,
  `pointid` tinyint NOT NULL,
  `fy` tinyint NOT NULL,
  `wd` tinyint NOT NULL,
  `ws` tinyint NOT NULL,
  `co` tinyint NOT NULL,
  `bh` tinyint NOT NULL,
  `gh` tinyint NOT NULL,
  `bc` tinyint NOT NULL,
  `gc` tinyint NOT NULL,
  `bhl` tinyint NOT NULL,
  `bcl` tinyint NOT NULL,
  `ghl` tinyint NOT NULL,
  `gcl` tinyint NOT NULL,
  `timer` tinyint NOT NULL,
  `yxsc` tinyint NOT NULL,
  `by1` tinyint NOT NULL,
  `by2` tinyint NOT NULL,
  `by3` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `jc_ll_mmonthmax`
--

DROP TABLE IF EXISTS `jc_ll_mmonthmax`;
/*!50001 DROP VIEW IF EXISTS `jc_ll_mmonthmax`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `jc_ll_mmonthmax` (
  `pointid` tinyint NOT NULL,
  `timer` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `jc_ll_ymonth`
--

DROP TABLE IF EXISTS `jc_ll_ymonth`;
/*!50001 DROP VIEW IF EXISTS `jc_ll_ymonth`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `jc_ll_ymonth` (
  `id` tinyint NOT NULL,
  `pointid` tinyint NOT NULL,
  `fy` tinyint NOT NULL,
  `wd` tinyint NOT NULL,
  `ws` tinyint NOT NULL,
  `co` tinyint NOT NULL,
  `bh` tinyint NOT NULL,
  `gh` tinyint NOT NULL,
  `bc` tinyint NOT NULL,
  `gc` tinyint NOT NULL,
  `bhl` tinyint NOT NULL,
  `bcl` tinyint NOT NULL,
  `ghl` tinyint NOT NULL,
  `gcl` tinyint NOT NULL,
  `timer` tinyint NOT NULL,
  `yxsc` tinyint NOT NULL,
  `by1` tinyint NOT NULL,
  `by2` tinyint NOT NULL,
  `by3` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `jc_ll_ymonthmax`
--

DROP TABLE IF EXISTS `jc_ll_ymonthmax`;
/*!50001 DROP VIEW IF EXISTS `jc_ll_ymonthmax`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `jc_ll_ymonthmax` (
  `pointid` tinyint NOT NULL,
  `timer` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `jc_mcmonth`
--

DROP TABLE IF EXISTS `jc_mcmonth`;
/*!50001 DROP VIEW IF EXISTS `jc_mcmonth`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `jc_mcmonth` (
  `pointid` tinyint NOT NULL,
  `id` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `dzh` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `timer` tinyint NOT NULL,
  `ssz` tinyint NOT NULL,
  `upflag` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `type` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `jc_mmax`
--

DROP TABLE IF EXISTS `jc_mmax`;
/*!50001 DROP VIEW IF EXISTS `jc_mmax`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `jc_mmax` (
  `pointid` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `pjz` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `jc_mmonth`
--

DROP TABLE IF EXISTS `jc_mmonth`;
/*!50001 DROP VIEW IF EXISTS `jc_mmonth`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `jc_mmonth` (
  `pointid` tinyint NOT NULL,
  `id` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `pjz` tinyint NOT NULL,
  `zxz` tinyint NOT NULL,
  `ssz` tinyint NOT NULL,
  `zdzs` tinyint NOT NULL,
  `zxzs` tinyint NOT NULL,
  `sj` tinyint NOT NULL,
  `upflag` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `timer` tinyint NOT NULL,
  `state` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `jc_rmonth`
--

DROP TABLE IF EXISTS `jc_rmonth`;
/*!50001 DROP VIEW IF EXISTS `jc_rmonth`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `jc_rmonth` (
  `id` tinyint NOT NULL,
  `pointid` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `dzh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `val` tinyint NOT NULL,
  `timer` tinyint NOT NULL,
  `remark` tinyint NOT NULL,
  `bz1` tinyint NOT NULL,
  `bz2` tinyint NOT NULL,
  `bz3` tinyint NOT NULL,
  `bz4` tinyint NOT NULL,
  `bz5` tinyint NOT NULL,
  `upflag` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_1month`
--

DROP TABLE IF EXISTS `view_1month`;
/*!50001 DROP VIEW IF EXISTS `view_1month`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_1month` (
  `pointid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `zxz` tinyint NOT NULL,
  `pjz` tinyint NOT NULL,
  `zdzs` tinyint NOT NULL,
  `zxzs` tinyint NOT NULL,
  `zdzsa` tinyint NOT NULL,
  `bid` tinyint NOT NULL,
  `bida` tinyint NOT NULL,
  `bidb` tinyint NOT NULL,
  `bidc` tinyint NOT NULL,
  `datSearch` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_2montha`
--

DROP TABLE IF EXISTS `view_2montha`;
/*!50001 DROP VIEW IF EXISTS `view_2montha`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_2montha` (
  `Pointid` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `sumcount` tinyint NOT NULL,
  `sum(etime-stime)` tinyint NOT NULL,
  `sumtime` tinyint NOT NULL,
  `bida` tinyint NOT NULL,
  `datSearch` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_3montha`
--

DROP TABLE IF EXISTS `view_3montha`;
/*!50001 DROP VIEW IF EXISTS `view_3montha`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_3montha` (
  `pointid` tinyint NOT NULL,
  `sumcount` tinyint NOT NULL,
  `sumtime` tinyint NOT NULL,
  `bida` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_3monthabykg`
--

DROP TABLE IF EXISTS `view_3monthabykg`;
/*!50001 DROP VIEW IF EXISTS `view_3monthabykg`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_3monthabykg` (
  `pointid` tinyint NOT NULL,
  `isalarm` tinyint NOT NULL,
  `sumcount` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `sumtime` tinyint NOT NULL,
  `bida` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_3monthabykg1`
--

DROP TABLE IF EXISTS `view_3monthabykg1`;
/*!50001 DROP VIEW IF EXISTS `view_3monthabykg1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_3monthabykg1` (
  `pointid` tinyint NOT NULL,
  `sumcount` tinyint NOT NULL,
  `sumtime` tinyint NOT NULL,
  `bida` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_3monthabykgfdsb`
--

DROP TABLE IF EXISTS `view_3monthabykgfdsb`;
/*!50001 DROP VIEW IF EXISTS `view_3monthabykgfdsb`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_3monthabykgfdsb` (
  `pointid` tinyint NOT NULL,
  `sumcount` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `sumtime` tinyint NOT NULL,
  `bida` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_4montha`
--

DROP TABLE IF EXISTS `view_4montha`;
/*!50001 DROP VIEW IF EXISTS `view_4montha`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_4montha` (
  `PointID` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `sumcount` tinyint NOT NULL,
  `sumtime` tinyint NOT NULL,
  `bid` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_4monthabykg`
--

DROP TABLE IF EXISTS `view_4monthabykg`;
/*!50001 DROP VIEW IF EXISTS `view_4monthabykg`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_4monthabykg` (
  `PointID` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `sumcount` tinyint NOT NULL,
  `sumtime` tinyint NOT NULL,
  `bid` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_4monthabykg1`
--

DROP TABLE IF EXISTS `view_4monthabykg1`;
/*!50001 DROP VIEW IF EXISTS `view_4monthabykg1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_4monthabykg1` (
  `PointID` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `sumcount` tinyint NOT NULL,
  `sumtime` tinyint NOT NULL,
  `bid` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_4monthabykg1fdsb`
--

DROP TABLE IF EXISTS `view_4monthabykg1fdsb`;
/*!50001 DROP VIEW IF EXISTS `view_4monthabykg1fdsb`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_4monthabykg1fdsb` (
  `PointID` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `sumcount` tinyint NOT NULL,
  `sumtime` tinyint NOT NULL,
  `bid` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_4monthafdsb`
--

DROP TABLE IF EXISTS `view_4monthafdsb`;
/*!50001 DROP VIEW IF EXISTS `view_4monthafdsb`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_4monthafdsb` (
  `PointID` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `sumcount` tinyint NOT NULL,
  `sumtime` tinyint NOT NULL,
  `bid` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_5montha`
--

DROP TABLE IF EXISTS `view_5montha`;
/*!50001 DROP VIEW IF EXISTS `view_5montha`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_5montha` (
  `pointid` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `ssz` tinyint NOT NULL,
  `sumcount` tinyint NOT NULL,
  `sumtime` tinyint NOT NULL,
  `bida` tinyint NOT NULL,
  `datSearch` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_5montha1`
--

DROP TABLE IF EXISTS `view_5montha1`;
/*!50001 DROP VIEW IF EXISTS `view_5montha1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_5montha1` (
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `ssz` tinyint NOT NULL,
  `sumcount` tinyint NOT NULL,
  `sumtime` tinyint NOT NULL,
  `bida` tinyint NOT NULL,
  `datSearch` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_6montha`
--

DROP TABLE IF EXISTS `view_6montha`;
/*!50001 DROP VIEW IF EXISTS `view_6montha`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_6montha` (
  `sumcount` tinyint NOT NULL,
  `sumtime` tinyint NOT NULL,
  `PointID` tinyint NOT NULL,
  `datSearch` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `type` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewb_mdef`
--

DROP TABLE IF EXISTS `viewb_mdef`;
/*!50001 DROP VIEW IF EXISTS `viewb_mdef`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewb_mdef` (
  `ID` tinyint NOT NULL,
  `PointID` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `Sysid` tinyint NOT NULL,
  `activity` tinyint NOT NULL,
  `CreateUpdateTime` tinyint NOT NULL,
  `DeleteTime` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `dzh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `csid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `ssz` tinyint NOT NULL,
  `datastate` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `alarm` tinyint NOT NULL,
  `Voltage` tinyint NOT NULL,
  `zts` tinyint NOT NULL,
  `jckz1` tinyint NOT NULL,
  `jckz2` tinyint NOT NULL,
  `jckz3` tinyint NOT NULL,
  `Z1` tinyint NOT NULL,
  `Z2` tinyint NOT NULL,
  `Z3` tinyint NOT NULL,
  `Z4` tinyint NOT NULL,
  `Z5` tinyint NOT NULL,
  `Z6` tinyint NOT NULL,
  `Z7` tinyint NOT NULL,
  `Z8` tinyint NOT NULL,
  `K1` tinyint NOT NULL,
  `K2` tinyint NOT NULL,
  `K3` tinyint NOT NULL,
  `K4` tinyint NOT NULL,
  `K5` tinyint NOT NULL,
  `K6` tinyint NOT NULL,
  `K7` tinyint NOT NULL,
  `K8` tinyint NOT NULL,
  `Bz1` tinyint NOT NULL,
  `Bz2` tinyint NOT NULL,
  `Bz3` tinyint NOT NULL,
  `Bz4` tinyint NOT NULL,
  `Bz5` tinyint NOT NULL,
  `Bz6` tinyint NOT NULL,
  `Bz7` tinyint NOT NULL,
  `Bz8` tinyint NOT NULL,
  `Bz9` tinyint NOT NULL,
  `Bz10` tinyint NOT NULL,
  `Bz11` tinyint NOT NULL,
  `Bz12` tinyint NOT NULL,
  `Bz13` tinyint NOT NULL,
  `Bz14` tinyint NOT NULL,
  `Bz15` tinyint NOT NULL,
  `Bz16` tinyint NOT NULL,
  `Bz17` tinyint NOT NULL,
  `Bz18` tinyint NOT NULL,
  `Bz19` tinyint NOT NULL,
  `Bz20` tinyint NOT NULL,
  `remark` tinyint NOT NULL,
  `upflag` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewdefwzreport`
--

DROP TABLE IF EXISTS `viewdefwzreport`;
/*!50001 DROP VIEW IF EXISTS `viewdefwzreport`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewdefwzreport` (
  `ID` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `dzh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `csid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `ssz` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `alarm` tinyint NOT NULL,
  `Voltage` tinyint NOT NULL,
  `zts` tinyint NOT NULL,
  `jckz1` tinyint NOT NULL,
  `jckz2` tinyint NOT NULL,
  `jckz3` tinyint NOT NULL,
  `Z1` tinyint NOT NULL,
  `Z2` tinyint NOT NULL,
  `Z3` tinyint NOT NULL,
  `Z4` tinyint NOT NULL,
  `Z5` tinyint NOT NULL,
  `Z6` tinyint NOT NULL,
  `Z7` tinyint NOT NULL,
  `Z8` tinyint NOT NULL,
  `K1` tinyint NOT NULL,
  `K2` tinyint NOT NULL,
  `K3` tinyint NOT NULL,
  `K4` tinyint NOT NULL,
  `K5` tinyint NOT NULL,
  `K6` tinyint NOT NULL,
  `K7` tinyint NOT NULL,
  `K8` tinyint NOT NULL,
  `Bz1` tinyint NOT NULL,
  `Bz2` tinyint NOT NULL,
  `Bz3` tinyint NOT NULL,
  `Bz4` tinyint NOT NULL,
  `Bz5` tinyint NOT NULL,
  `Bz6` tinyint NOT NULL,
  `Bz7` tinyint NOT NULL,
  `Bz8` tinyint NOT NULL,
  `Bz9` tinyint NOT NULL,
  `Bz10` tinyint NOT NULL,
  `remark` tinyint NOT NULL,
  `upflag` tinyint NOT NULL,
  `kzkpoint` tinyint NOT NULL,
  `kzkwzid` tinyint NOT NULL,
  `wz` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewequipmentaccount`
--

DROP TABLE IF EXISTS `viewequipmentaccount`;
/*!50001 DROP VIEW IF EXISTS `viewequipmentaccount`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewequipmentaccount` (
  `devid` tinyint NOT NULL,
  `devid2` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `totalnum` tinyint NOT NULL,
  `usednum` tinyint NOT NULL,
  `unusednum` tinyint NOT NULL,
  `overindate` tinyint NOT NULL,
  `overguaranteeperiod` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewfiveminute`
--

DROP TABLE IF EXISTS `viewfiveminute`;
/*!50001 DROP VIEW IF EXISTS `viewfiveminute`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewfiveminute` (
  `pointid` tinyint NOT NULL,
  `id` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `pjz` tinyint NOT NULL,
  `zxz` tinyint NOT NULL,
  `zdzs` tinyint NOT NULL,
  `zxzs` tinyint NOT NULL,
  `upflag` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `timer` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewfiveminutemax`
--

DROP TABLE IF EXISTS `viewfiveminutemax`;
/*!50001 DROP VIEW IF EXISTS `viewfiveminutemax`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewfiveminutemax` (
  `pointid` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `zxz` tinyint NOT NULL,
  `pjz` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewfiveminutemaxandtime`
--

DROP TABLE IF EXISTS `viewfiveminutemaxandtime`;
/*!50001 DROP VIEW IF EXISTS `viewfiveminutemaxandtime`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewfiveminutemaxandtime` (
  `pointid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `pjz` tinyint NOT NULL,
  `zdzs` tinyint NOT NULL,
  `zdzsa` tinyint NOT NULL,
  `bid` tinyint NOT NULL,
  `bida` tinyint NOT NULL,
  `bidb` tinyint NOT NULL,
  `bidc` tinyint NOT NULL,
  `datSearch` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewjc_bdef`
--

DROP TABLE IF EXISTS `viewjc_bdef`;
/*!50001 DROP VIEW IF EXISTS `viewjc_bdef`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewjc_bdef` (
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `bid` tinyint NOT NULL,
  `bida` tinyint NOT NULL,
  `bidb` tinyint NOT NULL,
  `bidc` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewjc_bmonth`
--

DROP TABLE IF EXISTS `viewjc_bmonth`;
/*!50001 DROP VIEW IF EXISTS `viewjc_bmonth`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewjc_bmonth` (
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `stime` tinyint NOT NULL,
  `etime` tinyint NOT NULL,
  `cursumtime` tinyint NOT NULL,
  `ssz` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `pjz` tinyint NOT NULL,
  `zdzsa` tinyint NOT NULL,
  `zdzs` tinyint NOT NULL,
  `cs` tinyint NOT NULL,
  `bz1` tinyint NOT NULL,
  `bz2` tinyint NOT NULL,
  `kzk` tinyint NOT NULL,
  `upflag` tinyint NOT NULL,
  `bid` tinyint NOT NULL,
  `bida` tinyint NOT NULL,
  `pointid` tinyint NOT NULL,
  `kdid` tinyint NOT NULL,
  `remark` tinyint NOT NULL,
  `datsearch` tinyint NOT NULL,
  `typename` tinyint NOT NULL,
  `sumcount` tinyint NOT NULL,
  `sumtime` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewjc_def`
--

DROP TABLE IF EXISTS `viewjc_def`;
/*!50001 DROP VIEW IF EXISTS `viewjc_def`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewjc_def` (
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `bid` tinyint NOT NULL,
  `bida` tinyint NOT NULL,
  `bidb` tinyint NOT NULL,
  `bidc` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewjc_dev`
--

DROP TABLE IF EXISTS `viewjc_dev`;
/*!50001 DROP VIEW IF EXISTS `viewjc_dev`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewjc_dev` (
  `devid` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `statename` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewjc_devoveryx`
--

DROP TABLE IF EXISTS `viewjc_devoveryx`;
/*!50001 DROP VIEW IF EXISTS `viewjc_devoveryx`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewjc_devoveryx` (
  `devid` tinyint NOT NULL,
  `bz4` tinyint NOT NULL,
  `bz7` tinyint NOT NULL,
  `sumoveryxcount` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewjc_devoverzb`
--

DROP TABLE IF EXISTS `viewjc_devoverzb`;
/*!50001 DROP VIEW IF EXISTS `viewjc_devoverzb`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewjc_devoverzb` (
  `devid` tinyint NOT NULL,
  `bz4` tinyint NOT NULL,
  `bz7` tinyint NOT NULL,
  `sumoverzbcount` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewjc_devtj`
--

DROP TABLE IF EXISTS `viewjc_devtj`;
/*!50001 DROP VIEW IF EXISTS `viewjc_devtj`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewjc_devtj` (
  `devid` tinyint NOT NULL,
  `bz4` tinyint NOT NULL,
  `sumcoumt` tinyint NOT NULL,
  `sumzycount` tinyint NOT NULL,
  `sumkccount` tinyint NOT NULL,
  `sumoveryxcount` tinyint NOT NULL,
  `sumoverzbcount` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewjc_dmonth`
--

DROP TABLE IF EXISTS `viewjc_dmonth`;
/*!50001 DROP VIEW IF EXISTS `viewjc_dmonth`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewjc_dmonth` (
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `stime` tinyint NOT NULL,
  `etime` tinyint NOT NULL,
  `cursumtime` tinyint NOT NULL,
  `ssz` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `pjz` tinyint NOT NULL,
  `zdzs` tinyint NOT NULL,
  `cs` tinyint NOT NULL,
  `kzk` tinyint NOT NULL,
  `upflag` tinyint NOT NULL,
  `bid` tinyint NOT NULL,
  `bida` tinyint NOT NULL,
  `kdid` tinyint NOT NULL,
  `datsearch` tinyint NOT NULL,
  `typename` tinyint NOT NULL,
  `sumcount` tinyint NOT NULL,
  `sumtime` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewjc_dmonthbywz`
--

DROP TABLE IF EXISTS `viewjc_dmonthbywz`;
/*!50001 DROP VIEW IF EXISTS `viewjc_dmonthbywz`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewjc_dmonthbywz` (
  `PointID` tinyint NOT NULL,
  `id` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `stime` tinyint NOT NULL,
  `etime` tinyint NOT NULL,
  `cursumtime` tinyint NOT NULL,
  `ssz` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `pjz` tinyint NOT NULL,
  `zdzs` tinyint NOT NULL,
  `cs` tinyint NOT NULL,
  `bz1` tinyint NOT NULL,
  `bz2` tinyint NOT NULL,
  `kzk` tinyint NOT NULL,
  `kdid` tinyint NOT NULL,
  `remark` tinyint NOT NULL,
  `JCDEFPoint` tinyint NOT NULL,
  `wz` tinyint NOT NULL,
  `bid` tinyint NOT NULL,
  `pid` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewjc_dmonthbywzkg`
--

DROP TABLE IF EXISTS `viewjc_dmonthbywzkg`;
/*!50001 DROP VIEW IF EXISTS `viewjc_dmonthbywzkg`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewjc_dmonthbywzkg` (
  `PointID` tinyint NOT NULL,
  `id` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `stime` tinyint NOT NULL,
  `etime` tinyint NOT NULL,
  `cursumtime` tinyint NOT NULL,
  `ssz` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `pjz` tinyint NOT NULL,
  `zdzs` tinyint NOT NULL,
  `cs` tinyint NOT NULL,
  `bz1` tinyint NOT NULL,
  `bz2` tinyint NOT NULL,
  `kzk` tinyint NOT NULL,
  `kdid` tinyint NOT NULL,
  `JCDEFPoint` tinyint NOT NULL,
  `wz` tinyint NOT NULL,
  `bid` tinyint NOT NULL,
  `pid` tinyint NOT NULL,
  `isalarm` tinyint NOT NULL,
  `remark` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewjc_kgstate`
--

DROP TABLE IF EXISTS `viewjc_kgstate`;
/*!50001 DROP VIEW IF EXISTS `viewjc_kgstate`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewjc_kgstate` (
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `PointID` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `statename` tinyint NOT NULL,
  `bid` tinyint NOT NULL,
  `bida` tinyint NOT NULL,
  `bidb` tinyint NOT NULL,
  `bidc` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewjc_kgstatemonth`
--

DROP TABLE IF EXISTS `viewjc_kgstatemonth`;
/*!50001 DROP VIEW IF EXISTS `viewjc_kgstatemonth`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewjc_kgstatemonth` (
  `Pointid` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `stime` tinyint NOT NULL,
  `etime` tinyint NOT NULL,
  `ssz` tinyint NOT NULL,
  `duration` tinyint NOT NULL,
  `sumcount` tinyint NOT NULL,
  `sumtime` tinyint NOT NULL,
  `pid` tinyint NOT NULL,
  `datSearch` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewjc_kgstatemonth1`
--

DROP TABLE IF EXISTS `viewjc_kgstatemonth1`;
/*!50001 DROP VIEW IF EXISTS `viewjc_kgstatemonth1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewjc_kgstatemonth1` (
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `stime` tinyint NOT NULL,
  `etime` tinyint NOT NULL,
  `ssz` tinyint NOT NULL,
  `sumcount` tinyint NOT NULL,
  `sumtime` tinyint NOT NULL,
  `pid` tinyint NOT NULL,
  `datSearch` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewjc_kmonth`
--

DROP TABLE IF EXISTS `viewjc_kmonth`;
/*!50001 DROP VIEW IF EXISTS `viewjc_kmonth`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewjc_kmonth` (
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `PointID` tinyint NOT NULL,
  `id` tinyint NOT NULL,
  `kzk` tinyint NOT NULL,
  `kdid` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `toid` tinyint NOT NULL,
  `kdidpoint` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `stime` tinyint NOT NULL,
  `etime` tinyint NOT NULL,
  `ssz` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `pjz` tinyint NOT NULL,
  `zdzs` tinyint NOT NULL,
  `cs` tinyint NOT NULL,
  `bz1` tinyint NOT NULL,
  `bz2` tinyint NOT NULL,
  `pid` tinyint NOT NULL,
  `cursumtime` tinyint NOT NULL,
  `typename` tinyint NOT NULL,
  `sumcount` tinyint NOT NULL,
  `sumtime` tinyint NOT NULL,
  `bid` tinyint NOT NULL,
  `datsearch` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewjc_kmonthbykg`
--

DROP TABLE IF EXISTS `viewjc_kmonthbykg`;
/*!50001 DROP VIEW IF EXISTS `viewjc_kmonthbykg`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewjc_kmonthbykg` (
  `id` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `kzk` tinyint NOT NULL,
  `kdid` tinyint NOT NULL,
  `toid` tinyint NOT NULL,
  `kdidpoint` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `stime` tinyint NOT NULL,
  `etime` tinyint NOT NULL,
  `cs` tinyint NOT NULL,
  `pid` tinyint NOT NULL,
  `cursumtime` tinyint NOT NULL,
  `bid` tinyint NOT NULL,
  `ssz` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewjc_lld`
--

DROP TABLE IF EXISTS `viewjc_lld`;
/*!50001 DROP VIEW IF EXISTS `viewjc_lld`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewjc_lld` (
  `ID` tinyint NOT NULL,
  `PointID` tinyint NOT NULL,
  `FY` tinyint NOT NULL,
  `WD` tinyint NOT NULL,
  `WS` tinyint NOT NULL,
  `CO` tinyint NOT NULL,
  `BH` tinyint NOT NULL,
  `GH` tinyint NOT NULL,
  `BC` tinyint NOT NULL,
  `GC` tinyint NOT NULL,
  `BHL` tinyint NOT NULL,
  `BCL` tinyint NOT NULL,
  `GHL` tinyint NOT NULL,
  `GCL` tinyint NOT NULL,
  `timer` tinyint NOT NULL,
  `yxsc1` tinyint NOT NULL,
  `yxsc` tinyint NOT NULL,
  `By1` tinyint NOT NULL,
  `By2` tinyint NOT NULL,
  `By3` tinyint NOT NULL,
  `sort` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `datsearch` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewjc_llm`
--

DROP TABLE IF EXISTS `viewjc_llm`;
/*!50001 DROP VIEW IF EXISTS `viewjc_llm`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewjc_llm` (
  `ID` tinyint NOT NULL,
  `PointID` tinyint NOT NULL,
  `FY` tinyint NOT NULL,
  `WD` tinyint NOT NULL,
  `WS` tinyint NOT NULL,
  `CO` tinyint NOT NULL,
  `BH` tinyint NOT NULL,
  `GH` tinyint NOT NULL,
  `BC` tinyint NOT NULL,
  `GC` tinyint NOT NULL,
  `BHL` tinyint NOT NULL,
  `BCL` tinyint NOT NULL,
  `GHL` tinyint NOT NULL,
  `GCL` tinyint NOT NULL,
  `timer` tinyint NOT NULL,
  `yxsc1` tinyint NOT NULL,
  `yxsc` tinyint NOT NULL,
  `By1` tinyint NOT NULL,
  `By2` tinyint NOT NULL,
  `By3` tinyint NOT NULL,
  `sort` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `datsearch` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewjc_llmonth`
--

DROP TABLE IF EXISTS `viewjc_llmonth`;
/*!50001 DROP VIEW IF EXISTS `viewjc_llmonth`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewjc_llmonth` (
  `ID` tinyint NOT NULL,
  `PointID` tinyint NOT NULL,
  `FY` tinyint NOT NULL,
  `WD` tinyint NOT NULL,
  `WS` tinyint NOT NULL,
  `CO` tinyint NOT NULL,
  `BH` tinyint NOT NULL,
  `GH` tinyint NOT NULL,
  `BC` tinyint NOT NULL,
  `GC` tinyint NOT NULL,
  `BHL` tinyint NOT NULL,
  `BCL` tinyint NOT NULL,
  `GHL` tinyint NOT NULL,
  `GCL` tinyint NOT NULL,
  `timer` tinyint NOT NULL,
  `yxsc1` tinyint NOT NULL,
  `yxsc` tinyint NOT NULL,
  `By1` tinyint NOT NULL,
  `By2` tinyint NOT NULL,
  `By3` tinyint NOT NULL,
  `sort` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `datsearch` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewjc_llmonth(暂时不用)`
--

DROP TABLE IF EXISTS `viewjc_llmonth(暂时不用)`;
/*!50001 DROP VIEW IF EXISTS `viewjc_llmonth(暂时不用)`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewjc_llmonth(暂时不用)` (
  `ID` tinyint NOT NULL,
  `PointID` tinyint NOT NULL,
  `FY` tinyint NOT NULL,
  `WD` tinyint NOT NULL,
  `WS` tinyint NOT NULL,
  `CO` tinyint NOT NULL,
  `BH` tinyint NOT NULL,
  `GH` tinyint NOT NULL,
  `BC` tinyint NOT NULL,
  `GC` tinyint NOT NULL,
  `BHL` tinyint NOT NULL,
  `BCL` tinyint NOT NULL,
  `GHL` tinyint NOT NULL,
  `GCL` tinyint NOT NULL,
  `timer` tinyint NOT NULL,
  `yxsc1` tinyint NOT NULL,
  `yxsc` tinyint NOT NULL,
  `By1` tinyint NOT NULL,
  `By2` tinyint NOT NULL,
  `By3` tinyint NOT NULL,
  `datsearch` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewjc_lly`
--

DROP TABLE IF EXISTS `viewjc_lly`;
/*!50001 DROP VIEW IF EXISTS `viewjc_lly`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewjc_lly` (
  `ID` tinyint NOT NULL,
  `PointID` tinyint NOT NULL,
  `FY` tinyint NOT NULL,
  `WD` tinyint NOT NULL,
  `WS` tinyint NOT NULL,
  `CO` tinyint NOT NULL,
  `BH` tinyint NOT NULL,
  `GH` tinyint NOT NULL,
  `BC` tinyint NOT NULL,
  `GC` tinyint NOT NULL,
  `BHL` tinyint NOT NULL,
  `BCL` tinyint NOT NULL,
  `GHL` tinyint NOT NULL,
  `GCL` tinyint NOT NULL,
  `timer` tinyint NOT NULL,
  `yxsc1` tinyint NOT NULL,
  `yxsc` tinyint NOT NULL,
  `By1` tinyint NOT NULL,
  `By2` tinyint NOT NULL,
  `By3` tinyint NOT NULL,
  `sort` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `datsearch` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewjc_mdef`
--

DROP TABLE IF EXISTS `viewjc_mdef`;
/*!50001 DROP VIEW IF EXISTS `viewjc_mdef`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewjc_mdef` (
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `pointid` tinyint NOT NULL,
  `bid` tinyint NOT NULL,
  `bz6` tinyint NOT NULL,
  `bz7` tinyint NOT NULL,
  `bz8` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewjc_mdefsubqueryaft`
--

DROP TABLE IF EXISTS `viewjc_mdefsubqueryaft`;
/*!50001 DROP VIEW IF EXISTS `viewjc_mdefsubqueryaft`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewjc_mdefsubqueryaft` (
  `point` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewjc_mdefsubquerybef`
--

DROP TABLE IF EXISTS `viewjc_mdefsubquerybef`;
/*!50001 DROP VIEW IF EXISTS `viewjc_mdefsubquerybef`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewjc_mdefsubquerybef` (
  `point` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewjcbmonthkdpx`
--

DROP TABLE IF EXISTS `viewjcbmonthkdpx`;
/*!50001 DROP VIEW IF EXISTS `viewjcbmonthkdpx`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewjcbmonthkdpx` (
  `pointid` tinyint NOT NULL,
  `id` tinyint NOT NULL,
  `fromtype` tinyint NOT NULL,
  `kzk` tinyint NOT NULL,
  `kdid` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `toid` tinyint NOT NULL,
  `kdidpoint` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `stime` tinyint NOT NULL,
  `etime` tinyint NOT NULL,
  `ssz` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `pjz` tinyint NOT NULL,
  `zdzs` tinyint NOT NULL,
  `cs` tinyint NOT NULL,
  `bz1` tinyint NOT NULL,
  `bz2` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewjcbmonthpx`
--

DROP TABLE IF EXISTS `viewjcbmonthpx`;
/*!50001 DROP VIEW IF EXISTS `viewjcbmonthpx`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewjcbmonthpx` (
  `id` tinyint NOT NULL,
  `pointid` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `stime` tinyint NOT NULL,
  `etime` tinyint NOT NULL,
  `ssz` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `pjz` tinyint NOT NULL,
  `zdzs` tinyint NOT NULL,
  `cs` tinyint NOT NULL,
  `bz1` tinyint NOT NULL,
  `bz2` tinyint NOT NULL,
  `kzk` tinyint NOT NULL,
  `upflag` tinyint NOT NULL,
  `kdid` tinyint NOT NULL,
  `isalarm` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewjcmb`
--

DROP TABLE IF EXISTS `viewjcmb`;
/*!50001 DROP VIEW IF EXISTS `viewjcmb`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewjcmb` (
  `id` tinyint NOT NULL,
  `pointid` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `dzh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `bstj` tinyint NOT NULL,
  `bsz` tinyint NOT NULL,
  `stime` tinyint NOT NULL,
  `etime` tinyint NOT NULL,
  `ssz` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `pjz` tinyint NOT NULL,
  `zdzs` tinyint NOT NULL,
  `bz1` tinyint NOT NULL,
  `bz2` tinyint NOT NULL,
  `bz3` tinyint NOT NULL,
  `upflag` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewjksbgzdayreport`
--

DROP TABLE IF EXISTS `viewjksbgzdayreport`;
/*!50001 DROP VIEW IF EXISTS `viewjksbgzdayreport`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewjksbgzdayreport` (
  `pointid` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `stime` tinyint NOT NULL,
  `etime` tinyint NOT NULL,
  `cursumtime` tinyint NOT NULL,
  `ssz` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `pjz` tinyint NOT NULL,
  `zdzs` tinyint NOT NULL,
  `cs` tinyint NOT NULL,
  `bz1` tinyint NOT NULL,
  `bz2` tinyint NOT NULL,
  `upflag` tinyint NOT NULL,
  `remark` tinyint NOT NULL,
  `bid` tinyint NOT NULL,
  `bida` tinyint NOT NULL,
  `datsearch` tinyint NOT NULL,
  `sumcount` tinyint NOT NULL,
  `sumtime` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewkdstatereport`
--

DROP TABLE IF EXISTS `viewkdstatereport`;
/*!50001 DROP VIEW IF EXISTS `viewkdstatereport`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewkdstatereport` (
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `ssz` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `pjz` tinyint NOT NULL,
  `zdzsa` tinyint NOT NULL,
  `zdzs` tinyint NOT NULL,
  `cs` tinyint NOT NULL,
  `bz1` tinyint NOT NULL,
  `bz2` tinyint NOT NULL,
  `kzk` tinyint NOT NULL,
  `kdid` tinyint NOT NULL,
  `wz` tinyint NOT NULL,
  `pid` tinyint NOT NULL,
  `bid` tinyint NOT NULL,
  `bida` tinyint NOT NULL,
  `bidb` tinyint NOT NULL,
  `bidc` tinyint NOT NULL,
  `datsearch` tinyint NOT NULL,
  `kdstime` tinyint NOT NULL,
  `kdetime` tinyint NOT NULL,
  `kdcursumtime` tinyint NOT NULL,
  `toid` tinyint NOT NULL,
  `kdpid` tinyint NOT NULL,
  `kdssz` tinyint NOT NULL,
  `kdstate` tinyint NOT NULL,
  `kdsumcount` tinyint NOT NULL,
  `kdsumtme` tinyint NOT NULL,
  `kdsumcountfdsb` tinyint NOT NULL,
  `kdsumtmefdsb` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewkglbjdddayreport`
--

DROP TABLE IF EXISTS `viewkglbjdddayreport`;
/*!50001 DROP VIEW IF EXISTS `viewkglbjdddayreport`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewkglbjdddayreport` (
  `Pointid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `statename` tinyint NOT NULL,
  `stime` tinyint NOT NULL,
  `etime` tinyint NOT NULL,
  `cursumtime` tinyint NOT NULL,
  `cs` tinyint NOT NULL,
  `bz1` tinyint NOT NULL,
  `bz2` tinyint NOT NULL,
  `kzk` tinyint NOT NULL,
  `kdid` tinyint NOT NULL,
  `JCDEFPoint` tinyint NOT NULL,
  `wz` tinyint NOT NULL,
  `pid` tinyint NOT NULL,
  `remark` tinyint NOT NULL,
  `sumcount` tinyint NOT NULL,
  `sumtime` tinyint NOT NULL,
  `sumcountfdsb` tinyint NOT NULL,
  `sumtimefdsb` tinyint NOT NULL,
  `bid` tinyint NOT NULL,
  `bida` tinyint NOT NULL,
  `datsearch` tinyint NOT NULL,
  `kdsumcount` tinyint NOT NULL,
  `kdsumtime` tinyint NOT NULL,
  `toid` tinyint NOT NULL,
  `kdidpoint` tinyint NOT NULL,
  `kdstime` tinyint NOT NULL,
  `kdetime` tinyint NOT NULL,
  `kdcursumtime` tinyint NOT NULL,
  `kdstate` tinyint NOT NULL,
  `isalarm` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewkglkddayreport`
--

DROP TABLE IF EXISTS `viewkglkddayreport`;
/*!50001 DROP VIEW IF EXISTS `viewkglkddayreport`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewkglkddayreport` (
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `ssz` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `pjz` tinyint NOT NULL,
  `zdzs` tinyint NOT NULL,
  `cs` tinyint NOT NULL,
  `bz1` tinyint NOT NULL,
  `bz2` tinyint NOT NULL,
  `kzk` tinyint NOT NULL,
  `kdid` tinyint NOT NULL,
  `JCDEFPoint` tinyint NOT NULL,
  `wz` tinyint NOT NULL,
  `pid` tinyint NOT NULL,
  `sumcount` tinyint NOT NULL,
  `sumtime` tinyint NOT NULL,
  `bid` tinyint NOT NULL,
  `bida` tinyint NOT NULL,
  `datsearch` tinyint NOT NULL,
  `kdstate` tinyint NOT NULL,
  `kdstime` tinyint NOT NULL,
  `kdetime` tinyint NOT NULL,
  `kdcursumtime` tinyint NOT NULL,
  `kdsumcount` tinyint NOT NULL,
  `kdsumtime` tinyint NOT NULL,
  `kdsumcountfdsb` tinyint NOT NULL,
  `kdsumtimefdsb` tinyint NOT NULL,
  `toid` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewlinkagehistory`
--

DROP TABLE IF EXISTS `viewlinkagehistory`;
/*!50001 DROP VIEW IF EXISTS `viewlinkagehistory`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewlinkagehistory` (
  `Id` tinyint NOT NULL,
  `SysEmergencyLinkageId` tinyint NOT NULL,
  `StartTime` tinyint NOT NULL,
  `EndTime` tinyint NOT NULL,
  `IsForceEnd` tinyint NOT NULL,
  `EndPerson` tinyint NOT NULL,
  `By1` tinyint NOT NULL,
  `By2` tinyint NOT NULL,
  `By3` tinyint NOT NULL,
  `By4` tinyint NOT NULL,
  `By5` tinyint NOT NULL,
  `LinkageName` tinyint NOT NULL,
  `BigDataAnalyzeName` tinyint NOT NULL,
  `pointid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `UserName` tinyint NOT NULL,
  `wz` tinyint NOT NULL,
  `DevName` tinyint NOT NULL,
  `DataStateText` tinyint NOT NULL,
  `datsearch` tinyint NOT NULL,
  `IsForceEndText` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewmcrunlogreport`
--

DROP TABLE IF EXISTS `viewmcrunlogreport`;
/*!50001 DROP VIEW IF EXISTS `viewmcrunlogreport`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewmcrunlogreport` (
  `ID` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `dzh` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `timer` tinyint NOT NULL,
  `ssz` tinyint NOT NULL,
  `upflag` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `datsearch` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewmllbjddreport`
--

DROP TABLE IF EXISTS `viewmllbjddreport`;
/*!50001 DROP VIEW IF EXISTS `viewmllbjddreport`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewmllbjddreport` (
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `stime` tinyint NOT NULL,
  `etime` tinyint NOT NULL,
  `cursumtime` tinyint NOT NULL,
  `ssz` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `pjz` tinyint NOT NULL,
  `zdzs` tinyint NOT NULL,
  `cs` tinyint NOT NULL,
  `kzk` tinyint NOT NULL,
  `bid` tinyint NOT NULL,
  `kdid` tinyint NOT NULL,
  `datsearch` tinyint NOT NULL,
  `typename` tinyint NOT NULL,
  `sumcount` tinyint NOT NULL,
  `sumtime` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewmlldayreport`
--

DROP TABLE IF EXISTS `viewmlldayreport`;
/*!50001 DROP VIEW IF EXISTS `viewmlldayreport`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewmlldayreport` (
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `zxz` tinyint NOT NULL,
  `pjz` tinyint NOT NULL,
  `zdzs` tinyint NOT NULL,
  `zxzs` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `sumcountbybj` tinyint NOT NULL,
  `sumtimebybj` tinyint NOT NULL,
  `sumcountbydd` tinyint NOT NULL,
  `sumtimebydd` tinyint NOT NULL,
  `sumcountbykd` tinyint NOT NULL,
  `sumtimebykd` tinyint NOT NULL,
  `sumcountbykdfdsb` tinyint NOT NULL,
  `sumtimebykdfdsb` tinyint NOT NULL,
  `sumcountbygz` tinyint NOT NULL,
  `sumtimebygz` tinyint NOT NULL,
  `datsearch` tinyint NOT NULL,
  `bid` tinyint NOT NULL,
  `bida` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewmlldddayreport`
--

DROP TABLE IF EXISTS `viewmlldddayreport`;
/*!50001 DROP VIEW IF EXISTS `viewmlldddayreport`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewmlldddayreport` (
  `pointid` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `stime` tinyint NOT NULL,
  `etime` tinyint NOT NULL,
  `cursumtime` tinyint NOT NULL,
  `ssz` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `pjz` tinyint NOT NULL,
  `zdzsa` tinyint NOT NULL,
  `zdzs` tinyint NOT NULL,
  `cs` tinyint NOT NULL,
  `bz1` tinyint NOT NULL,
  `bz2` tinyint NOT NULL,
  `kzk` tinyint NOT NULL,
  `kdid` tinyint NOT NULL,
  `JCDEFPoint` tinyint NOT NULL,
  `wz` tinyint NOT NULL,
  `pid` tinyint NOT NULL,
  `remark` tinyint NOT NULL,
  `bid` tinyint NOT NULL,
  `bida` tinyint NOT NULL,
  `bidb` tinyint NOT NULL,
  `bidc` tinyint NOT NULL,
  `datsearch` tinyint NOT NULL,
  `kdstime` tinyint NOT NULL,
  `kdetime` tinyint NOT NULL,
  `kdcursumtime` tinyint NOT NULL,
  `toid` tinyint NOT NULL,
  `kdpid` tinyint NOT NULL,
  `kdssz` tinyint NOT NULL,
  `kdstate` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewmlltjzreport`
--

DROP TABLE IF EXISTS `viewmlltjzreport`;
/*!50001 DROP VIEW IF EXISTS `viewmlltjzreport`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewmlltjzreport` (
  `id` tinyint NOT NULL,
  `pointid` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `pjz` tinyint NOT NULL,
  `zxz` tinyint NOT NULL,
  `ssz` tinyint NOT NULL,
  `zdzs` tinyint NOT NULL,
  `zxzs` tinyint NOT NULL,
  `sj` tinyint NOT NULL,
  `upflag` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `sjhour` tinyint NOT NULL,
  `timer` tinyint NOT NULL,
  `timerend` tinyint NOT NULL,
  `timer1` tinyint NOT NULL,
  `timerenda` tinyint NOT NULL,
  `bid` tinyint NOT NULL,
  `datsearch` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewmnlbjddmonth`
--

DROP TABLE IF EXISTS `viewmnlbjddmonth`;
/*!50001 DROP VIEW IF EXISTS `viewmnlbjddmonth`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewmnlbjddmonth` (
  `PointID` tinyint NOT NULL,
  `PointID2` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `bjcs` tinyint NOT NULL,
  `bjstarttime` tinyint NOT NULL,
  `bjendtime` tinyint NOT NULL,
  `bjpjzzdzzdzs` tinyint NOT NULL,
  `bjljsc` tinyint NOT NULL,
  `bjljscall` tinyint NOT NULL,
  `bjcuoshi` tinyint NOT NULL,
  `ddcs` tinyint NOT NULL,
  `ddstarttime` tinyint NOT NULL,
  `ddendtime` tinyint NOT NULL,
  `ddstartendtime` tinyint NOT NULL,
  `ddpjzzdzzdzs` tinyint NOT NULL,
  `ddljsc` tinyint NOT NULL,
  `ddljscall` tinyint NOT NULL,
  `ddcuoshi` tinyint NOT NULL,
  `kdcs` tinyint NOT NULL,
  `kdstarttime` tinyint NOT NULL,
  `kdendtime` tinyint NOT NULL,
  `kdljsc` tinyint NOT NULL,
  `kdljscall` tinyint NOT NULL,
  `kdfdsbcs` tinyint NOT NULL,
  `kdfdsbstarttime` tinyint NOT NULL,
  `kdfdsbendtime` tinyint NOT NULL,
  `kdfdsbljsc` tinyint NOT NULL,
  `kdfdsbljscall` tinyint NOT NULL,
  `gzcs` tinyint NOT NULL,
  `gzstarttime` tinyint NOT NULL,
  `gzendtime` tinyint NOT NULL,
  `gzljsc` tinyint NOT NULL,
  `gzljscall` tinyint NOT NULL,
  `gzcuoshi` tinyint NOT NULL,
  `wz` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `devname` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `zdzs` tinyint NOT NULL,
  `zxz` tinyint NOT NULL,
  `zxzs` tinyint NOT NULL,
  `pjz` tinyint NOT NULL,
  `datsearch` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewmnlbjhbh`
--

DROP TABLE IF EXISTS `viewmnlbjhbh`;
/*!50001 DROP VIEW IF EXISTS `viewmnlbjhbh`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewmnlbjhbh` (
  `PointID` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `bjcs` tinyint NOT NULL,
  `bjstarttime` tinyint NOT NULL,
  `bjendtime` tinyint NOT NULL,
  `bjpjzzdzzdzs` tinyint NOT NULL,
  `bjljsc` tinyint NOT NULL,
  `bjljscall` tinyint NOT NULL,
  `bjcuoshi` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewmnlbjmaxavg`
--

DROP TABLE IF EXISTS `viewmnlbjmaxavg`;
/*!50001 DROP VIEW IF EXISTS `viewmnlbjmaxavg`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewmnlbjmaxavg` (
  `pointid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `pjz` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewmnlbjmaxavgmaxtime`
--

DROP TABLE IF EXISTS `viewmnlbjmaxavgmaxtime`;
/*!50001 DROP VIEW IF EXISTS `viewmnlbjmaxavgmaxtime`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewmnlbjmaxavgmaxtime` (
  `pointid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `pjz` tinyint NOT NULL,
  `zdzs` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewmnlbsbjmonth`
--

DROP TABLE IF EXISTS `viewmnlbsbjmonth`;
/*!50001 DROP VIEW IF EXISTS `viewmnlbsbjmonth`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewmnlbsbjmonth` (
  `ID` tinyint NOT NULL,
  `pointID` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `dzh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `bstj` tinyint NOT NULL,
  `bsz` tinyint NOT NULL,
  `stime` tinyint NOT NULL,
  `etime` tinyint NOT NULL,
  `ssz` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `pjz` tinyint NOT NULL,
  `zdzs` tinyint NOT NULL,
  `Bz1` tinyint NOT NULL,
  `Bz2` tinyint NOT NULL,
  `Bz3` tinyint NOT NULL,
  `upflag` tinyint NOT NULL,
  `wz` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `datsearch` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewmnlbx`
--

DROP TABLE IF EXISTS `viewmnlbx`;
/*!50001 DROP VIEW IF EXISTS `viewmnlbx`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewmnlbx` (
  `id` tinyint NOT NULL,
  `ida` tinyint NOT NULL,
  `pointid` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `stime` tinyint NOT NULL,
  `etime` tinyint NOT NULL,
  `sumtime` tinyint NOT NULL,
  `ssz` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `pjz` tinyint NOT NULL,
  `zdzs` tinyint NOT NULL,
  `cs` tinyint NOT NULL,
  `bz1` tinyint NOT NULL,
  `bz2` tinyint NOT NULL,
  `kzk` tinyint NOT NULL,
  `upflag` tinyint NOT NULL,
  `kdid` tinyint NOT NULL,
  `isalarm` tinyint NOT NULL,
  `wz` tinyint NOT NULL,
  `kdstate` tinyint NOT NULL,
  `datsearch` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewmnldaysavg`
--

DROP TABLE IF EXISTS `viewmnldaysavg`;
/*!50001 DROP VIEW IF EXISTS `viewmnldaysavg`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewmnldaysavg` (
  `pointid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `wz` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `pjz` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `zxz` tinyint NOT NULL,
  `datsearch` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewmnlddhbh`
--

DROP TABLE IF EXISTS `viewmnlddhbh`;
/*!50001 DROP VIEW IF EXISTS `viewmnlddhbh`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewmnlddhbh` (
  `PointID` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `ddcs` tinyint NOT NULL,
  `ddstarttime` tinyint NOT NULL,
  `ddendtime` tinyint NOT NULL,
  `ddstartendtime` tinyint NOT NULL,
  `ddpjzzdzzdzs` tinyint NOT NULL,
  `ddljsc` tinyint NOT NULL,
  `ddljscall` tinyint NOT NULL,
  `ddcuoshi` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewmnlddmaxavg`
--

DROP TABLE IF EXISTS `viewmnlddmaxavg`;
/*!50001 DROP VIEW IF EXISTS `viewmnlddmaxavg`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewmnlddmaxavg` (
  `pointid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `pjz` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewmnlddmaxavgmaxtime`
--

DROP TABLE IF EXISTS `viewmnlddmaxavgmaxtime`;
/*!50001 DROP VIEW IF EXISTS `viewmnlddmaxavgmaxtime`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewmnlddmaxavgmaxtime` (
  `pointid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `pjz` tinyint NOT NULL,
  `zdzs` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewmnlgzhbh`
--

DROP TABLE IF EXISTS `viewmnlgzhbh`;
/*!50001 DROP VIEW IF EXISTS `viewmnlgzhbh`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewmnlgzhbh` (
  `PointID` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `gzcs` tinyint NOT NULL,
  `gzstarttime` tinyint NOT NULL,
  `gzendtime` tinyint NOT NULL,
  `gzljsc` tinyint NOT NULL,
  `gzljscall` tinyint NOT NULL,
  `gzcuoshi` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewmnlkdhbh`
--

DROP TABLE IF EXISTS `viewmnlkdhbh`;
/*!50001 DROP VIEW IF EXISTS `viewmnlkdhbh`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewmnlkdhbh` (
  `PointID` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `kdcs` tinyint NOT NULL,
  `kdstarttime` tinyint NOT NULL,
  `kdendtime` tinyint NOT NULL,
  `kdljsc` tinyint NOT NULL,
  `kdljscall` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewmnlkdhbhfdsb`
--

DROP TABLE IF EXISTS `viewmnlkdhbhfdsb`;
/*!50001 DROP VIEW IF EXISTS `viewmnlkdhbhfdsb`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewmnlkdhbhfdsb` (
  `PointID` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `kdcs` tinyint NOT NULL,
  `kdstarttime` tinyint NOT NULL,
  `kdendtime` tinyint NOT NULL,
  `kdljsc` tinyint NOT NULL,
  `kdljscall` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewpersoncallhistory`
--

DROP TABLE IF EXISTS `viewpersoncallhistory`;
/*!50001 DROP VIEW IF EXISTS `viewpersoncallhistory`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewpersoncallhistory` (
  `id` tinyint NOT NULL,
  `hjlx` tinyint NOT NULL,
  `bh` tinyint NOT NULL,
  `yid` tinyint NOT NULL,
  `pointid` tinyint NOT NULL,
  `calltime` tinyint NOT NULL,
  `tsycs` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `card` tinyint NOT NULL,
  `username` tinyint NOT NULL,
  `ip` tinyint NOT NULL,
  `timer` tinyint NOT NULL,
  `flag` tinyint NOT NULL,
  `sysflag` tinyint NOT NULL,
  `upflag` tinyint NOT NULL,
  `by1` tinyint NOT NULL,
  `by2` tinyint NOT NULL,
  `by3` tinyint NOT NULL,
  `by4` tinyint NOT NULL,
  `by5` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `wz` tinyint NOT NULL,
  `devname` tinyint NOT NULL,
  `callpersonname` tinyint NOT NULL,
  `datsearch` tinyint NOT NULL,
  `hjlxtext` tinyint NOT NULL,
  `statetext` tinyint NOT NULL,
  `typetext` tinyint NOT NULL,
  `flagtext` tinyint NOT NULL,
  `sysflagtext` tinyint NOT NULL,
  `callobject` tinyint NOT NULL,
  `downcalledlist` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewpersoncallhistorycallequipment`
--

DROP TABLE IF EXISTS `viewpersoncallhistorycallequipment`;
/*!50001 DROP VIEW IF EXISTS `viewpersoncallhistorycallequipment`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewpersoncallhistorycallequipment` (
  `id` tinyint NOT NULL,
  `hjlx` tinyint NOT NULL,
  `bh` tinyint NOT NULL,
  `yid` tinyint NOT NULL,
  `pointid` tinyint NOT NULL,
  `calltime` tinyint NOT NULL,
  `tsycs` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `card` tinyint NOT NULL,
  `username` tinyint NOT NULL,
  `ip` tinyint NOT NULL,
  `timer` tinyint NOT NULL,
  `flag` tinyint NOT NULL,
  `sysflag` tinyint NOT NULL,
  `upflag` tinyint NOT NULL,
  `by1` tinyint NOT NULL,
  `by2` tinyint NOT NULL,
  `by3` tinyint NOT NULL,
  `by4` tinyint NOT NULL,
  `by5` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `wz` tinyint NOT NULL,
  `devname` tinyint NOT NULL,
  `callpersonname` tinyint NOT NULL,
  `datsearch` tinyint NOT NULL,
  `hjlxtext` tinyint NOT NULL,
  `statetext` tinyint NOT NULL,
  `typetext` tinyint NOT NULL,
  `flagtext` tinyint NOT NULL,
  `sysflagtext` tinyint NOT NULL,
  `callobject` tinyint NOT NULL,
  `downcalledlist` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewpersoncallhistorycallperson`
--

DROP TABLE IF EXISTS `viewpersoncallhistorycallperson`;
/*!50001 DROP VIEW IF EXISTS `viewpersoncallhistorycallperson`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewpersoncallhistorycallperson` (
  `id` tinyint NOT NULL,
  `hjlx` tinyint NOT NULL,
  `bh` tinyint NOT NULL,
  `yid` tinyint NOT NULL,
  `pointid` tinyint NOT NULL,
  `calltime` tinyint NOT NULL,
  `tsycs` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `card` tinyint NOT NULL,
  `username` tinyint NOT NULL,
  `ip` tinyint NOT NULL,
  `timer` tinyint NOT NULL,
  `flag` tinyint NOT NULL,
  `sysflag` tinyint NOT NULL,
  `upflag` tinyint NOT NULL,
  `by1` tinyint NOT NULL,
  `by2` tinyint NOT NULL,
  `by3` tinyint NOT NULL,
  `by4` tinyint NOT NULL,
  `by5` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `wz` tinyint NOT NULL,
  `devname` tinyint NOT NULL,
  `callpersonname` tinyint NOT NULL,
  `datsearch` tinyint NOT NULL,
  `hjlxtext` tinyint NOT NULL,
  `statetext` tinyint NOT NULL,
  `typetext` tinyint NOT NULL,
  `flagtext` tinyint NOT NULL,
  `sysflagtext` tinyint NOT NULL,
  `callobject` tinyint NOT NULL,
  `downcalledlist` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewpersonequipmentfault`
--

DROP TABLE IF EXISTS `viewpersonequipmentfault`;
/*!50001 DROP VIEW IF EXISTS `viewpersonequipmentfault`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewpersonequipmentfault` (
  `id` tinyint NOT NULL,
  `pointid` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `dzh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `stime` tinyint NOT NULL,
  `etime` tinyint NOT NULL,
  `ssz` tinyint NOT NULL,
  `zdz` tinyint NOT NULL,
  `pjz` tinyint NOT NULL,
  `zdzs` tinyint NOT NULL,
  `cs` tinyint NOT NULL,
  `kzk` tinyint NOT NULL,
  `kdid` tinyint NOT NULL,
  `isalarm` tinyint NOT NULL,
  `upflag` tinyint NOT NULL,
  `remark` tinyint NOT NULL,
  `bz1` tinyint NOT NULL,
  `bz2` tinyint NOT NULL,
  `bz3` tinyint NOT NULL,
  `bz4` tinyint NOT NULL,
  `bz5` tinyint NOT NULL,
  `wz` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `datastate` tinyint NOT NULL,
  `equstate` tinyint NOT NULL,
  `datsearch` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewpersonequipmentoperating`
--

DROP TABLE IF EXISTS `viewpersonequipmentoperating`;
/*!50001 DROP VIEW IF EXISTS `viewpersonequipmentoperating`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewpersonequipmentoperating` (
  `id` tinyint NOT NULL,
  `pointid` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `dzh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `val` tinyint NOT NULL,
  `timer` tinyint NOT NULL,
  `remark` tinyint NOT NULL,
  `bz1` tinyint NOT NULL,
  `bz2` tinyint NOT NULL,
  `bz3` tinyint NOT NULL,
  `bz4` tinyint NOT NULL,
  `bz5` tinyint NOT NULL,
  `upflag` tinyint NOT NULL,
  `wz` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `datastate` tinyint NOT NULL,
  `equstate` tinyint NOT NULL,
  `datsearch` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewpersontracehistory`
--

DROP TABLE IF EXISTS `viewpersontracehistory`;
/*!50001 DROP VIEW IF EXISTS `viewpersontracehistory`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewpersontracehistory` (
  `id` tinyint NOT NULL,
  `bh` tinyint NOT NULL,
  `yid` tinyint NOT NULL,
  `pointid` tinyint NOT NULL,
  `rtime` tinyint NOT NULL,
  `timer` tinyint NOT NULL,
  `flag` tinyint NOT NULL,
  `sysflag` tinyint NOT NULL,
  `cwflag` tinyint NOT NULL,
  `by1` tinyint NOT NULL,
  `by2` tinyint NOT NULL,
  `by3` tinyint NOT NULL,
  `by4` tinyint NOT NULL,
  `by5` tinyint NOT NULL,
  `upflag` tinyint NOT NULL,
  `personname` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `flagtext` tinyint NOT NULL,
  `sysflagtext` tinyint NOT NULL,
  `datsearch` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewsbrunlogreport`
--

DROP TABLE IF EXISTS `viewsbrunlogreport`;
/*!50001 DROP VIEW IF EXISTS `viewsbrunlogreport`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewsbrunlogreport` (
  `id` tinyint NOT NULL,
  `pointid` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `dzh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `val` tinyint NOT NULL,
  `timer` tinyint NOT NULL,
  `remark` tinyint NOT NULL,
  `bz1` tinyint NOT NULL,
  `bz2` tinyint NOT NULL,
  `bz3` tinyint NOT NULL,
  `bz4` tinyint NOT NULL,
  `bz5` tinyint NOT NULL,
  `upflag` tinyint NOT NULL,
  `valnumber` tinyint NOT NULL,
  `datsearch` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewstationpowerchargehistory`
--

DROP TABLE IF EXISTS `viewstationpowerchargehistory`;
/*!50001 DROP VIEW IF EXISTS `viewstationpowerchargehistory`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewstationpowerchargehistory` (
  `Id` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `Mac` tinyint NOT NULL,
  `Stime` tinyint NOT NULL,
  `Etime` tinyint NOT NULL,
  `DischargeStime` tinyint NOT NULL,
  `DischargeEtime` tinyint NOT NULL,
  `userName` tinyint NOT NULL,
  `Bz1` tinyint NOT NULL,
  `Bz2` tinyint NOT NULL,
  `Bz3` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `wz` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewsubstationdischarge`
--

DROP TABLE IF EXISTS `viewsubstationdischarge`;
/*!50001 DROP VIEW IF EXISTS `viewsubstationdischarge`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewsubstationdischarge` (
  `datsearch` tinyint NOT NULL,
  `id` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `stime` tinyint NOT NULL,
  `etime` tinyint NOT NULL,
  `duration` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `pointid` tinyint NOT NULL,
  `bid` tinyint NOT NULL,
  `bz6` tinyint NOT NULL,
  `bz7` tinyint NOT NULL,
  `bz8` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewswitchrunlogreport`
--

DROP TABLE IF EXISTS `viewswitchrunlogreport`;
/*!50001 DROP VIEW IF EXISTS `viewswitchrunlogreport`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewswitchrunlogreport` (
  `id` tinyint NOT NULL,
  `pointid` tinyint NOT NULL,
  `fzh` tinyint NOT NULL,
  `kh` tinyint NOT NULL,
  `devid` tinyint NOT NULL,
  `wzid` tinyint NOT NULL,
  `point` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `ssz` tinyint NOT NULL,
  `stime` tinyint NOT NULL,
  `etime` tinyint NOT NULL,
  `sumtime` tinyint NOT NULL,
  `remark` tinyint NOT NULL,
  `upflag` tinyint NOT NULL,
  `datsearch` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `jc_bdd`
--

/*!50001 DROP TABLE IF EXISTS `jc_bdd`*/;
/*!50001 DROP VIEW IF EXISTS `jc_bdd`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `jc_bdd` AS select `jc_bmonth`.`pointid` AS `PointID`,`jc_bmonth`.`id` AS `id`,`jc_bmonth`.`fzh` AS `fzh`,`jc_bmonth`.`kh` AS `kh`,`jc_bmonth`.`devid` AS `devid`,`jc_bmonth`.`wzid` AS `wzid`,`jc_bmonth`.`point` AS `point`,`jc_bmonth`.`type` AS `type`,`jc_bmonth`.`state` AS `state`,`jc_bmonth`.`stime` AS `stime`,`jc_bmonth`.`etime` AS `etime`,timediff(`jc_bmonth`.`etime`,`jc_bmonth`.`stime`) AS `cursumtime`,`jc_bmonth`.`ssz` AS `ssz`,`jc_bmonth`.`zdz` AS `zdz`,`jc_bmonth`.`pjz` AS `pjz`,`jc_bmonth`.`zdzs` AS `zdzs`,`jc_bmonth`.`cs` AS `cs`,`jc_bmonth`.`bz1` AS `bz1`,`jc_bmonth`.`bz2` AS `bz2`,`jc_bmonth`.`kzk` AS `kzk`,`jc_bmonth`.`kdid` AS `kdid`,`jc_bmonth`.`isalarm` AS `isalarm`,`jc_bmonth`.`remark` AS `remark` from `jc_bmonth` where ((`jc_bmonth`.`kzk` <> '') and (`jc_bmonth`.`kzk` is not null)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `jc_bddbykg`
--

/*!50001 DROP TABLE IF EXISTS `jc_bddbykg`*/;
/*!50001 DROP VIEW IF EXISTS `jc_bddbykg`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `jc_bddbykg` AS select `jc_bmonth`.`pointid` AS `PointID`,`jc_bmonth`.`id` AS `id`,`jc_bmonth`.`fzh` AS `fzh`,`jc_bmonth`.`kh` AS `kh`,`jc_bmonth`.`devid` AS `devid`,`jc_bmonth`.`wzid` AS `wzid`,`jc_bmonth`.`point` AS `point`,`jc_bmonth`.`type` AS `type`,`jc_bmonth`.`stime` AS `stime`,`jc_bmonth`.`etime` AS `etime`,timediff(`jc_bmonth`.`etime`,`jc_bmonth`.`stime`) AS `cursumtime`,`jc_bmonth`.`ssz` AS `ssz`,`jc_bmonth`.`zdz` AS `zdz`,`jc_bmonth`.`pjz` AS `pjz`,`jc_bmonth`.`zdzs` AS `zdzs`,`jc_bmonth`.`cs` AS `cs`,`jc_bmonth`.`bz1` AS `bz1`,`jc_bmonth`.`bz2` AS `bz2`,`jc_bmonth`.`kzk` AS `kzk`,`jc_bmonth`.`kdid` AS `kdid`,`jc_bmonth`.`isalarm` AS `isalarm`,`jc_bmonth`.`remark` AS `remark` from `jc_bmonth` where (`jc_bmonth`.`type` in (25,26,27)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `jc_bkd`
--

/*!50001 DROP TABLE IF EXISTS `jc_bkd`*/;
/*!50001 DROP VIEW IF EXISTS `jc_bkd`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `jc_bkd` AS select `jc_bmonth`.`pointid` AS `Pointid`,`jc_bmonth`.`id` AS `id`,`jc_bmonth`.`fzh` AS `fzh`,`jc_bmonth`.`kh` AS `kh`,`jc_bmonth`.`devid` AS `devid`,`jc_bmonth`.`wzid` AS `wzid`,`jc_bmonth`.`point` AS `point`,`jc_bmonth`.`type` AS `type`,`jc_bmonth`.`state` AS `state`,`jc_bmonth`.`kzk` AS `kzk`,`jc_bmonth`.`kdid` AS `kdid`,`jc_bmonth`.`stime` AS `stime` from `jc_bmonth` where ((`jc_bmonth`.`kdid` is not null) and (`jc_bmonth`.`kdid` <> '')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `jc_bkddetail`
--

/*!50001 DROP TABLE IF EXISTS `jc_bkddetail`*/;
/*!50001 DROP VIEW IF EXISTS `jc_bkddetail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `jc_bkddetail` AS select `a`.`Pointid` AS `Pointid`,`a`.`fzh` AS `fzh`,`a`.`kh` AS `kh`,`a`.`devid` AS `devid`,`a`.`wzid` AS `wzid`,`a`.`point` AS `point`,`a`.`kdid` AS `ids`,`b`.`id` AS `id`,`a`.`type` AS `type`,`b`.`type` AS `typedd`,`b`.`stime` AS `stime`,`b`.`etime` AS `etime`,`b`.`ssz` AS `ssz`,`b`.`zdz` AS `zdz`,`b`.`pjz` AS `pjz`,`b`.`zdzs` AS `zdzs`,`b`.`cs` AS `cs`,`b`.`kzk` AS `kzk`,`b`.`upflag` AS `upflag`,`b`.`kdid` AS `kdid` from (`jc_bkd` `a` left join `jc_bmonth` `b` on((locate(concat(',',cast(`b`.`id` as char charset utf8),','),concat(',',`a`.`kdid`,',')) > 0))) where (`b`.`type` <> 30) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `jc_bmonth`
--

/*!50001 DROP TABLE IF EXISTS `jc_bmonth`*/;
/*!50001 DROP VIEW IF EXISTS `jc_bmonth`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `jc_bmonth` AS select `kj_dataalarm201910`.`ID` AS `id`,`kj_dataalarm201910`.`pointID` AS `pointid`,`kj_dataalarm201910`.`fzh` AS `fzh`,`kj_dataalarm201910`.`kh` AS `kh`,`kj_dataalarm201910`.`devid` AS `devid`,`kj_dataalarm201910`.`wzid` AS `wzid`,`kj_dataalarm201910`.`point` AS `point`,`kj_dataalarm201910`.`type` AS `type`,`kj_dataalarm201910`.`state` AS `state`,`kj_dataalarm201910`.`stime` AS `stime`,(case year(`kj_dataalarm201910`.`etime`) when 1900 then now() else `kj_dataalarm201910`.`etime` end) AS `etime`,`kj_dataalarm201910`.`ssz` AS `ssz`,`kj_dataalarm201910`.`zdz` AS `zdz`,`kj_dataalarm201910`.`pjz` AS `pjz`,`kj_dataalarm201910`.`zdzs` AS `zdzs`,`kj_dataalarm201910`.`cs` AS `cs`,`kj_dataalarm201910`.`Bz1` AS `bz1`,`kj_dataalarm201910`.`Bz2` AS `bz2`,`kj_dataalarm201910`.`kzk` AS `kzk`,`kj_dataalarm201910`.`upflag` AS `upflag`,`kj_dataalarm201910`.`kdid` AS `kdid`,`kj_dataalarm201910`.`isalarm` AS `isalarm`,`kj_dataalarm201910`.`remark` AS `remark` from `kj_dataalarm201910` where (((`kj_dataalarm201910`.`stime` between '2019-10-07 00:00:00' and '2019-10-07 23:59:00') or (`kj_dataalarm201910`.`etime` between '2019-10-07 00:00:00' and '2019-10-07 23:59:00')) and (`kj_dataalarm201910`.`state` <> 12345)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `jc_bmonthbydrepeat`
--

/*!50001 DROP TABLE IF EXISTS `jc_bmonthbydrepeat`*/;
/*!50001 DROP VIEW IF EXISTS `jc_bmonthbydrepeat`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `jc_bmonthbydrepeat` AS select `jc_bmonthnumber`.`fzh` AS `fzh`,`jc_bmonthnumber`.`kh` AS `kh`,`jc_bmonthnumber`.`devid` AS `devid`,`jc_bmonthnumber`.`wzid` AS `wzid`,`jc_bmonthnumber`.`point` AS `point`,`jc_bmonthnumber`.`type` AS `type`,`jc_bmonthnumber`.`ssz` AS `ssz`,`jc_bmonthnumber`.`rownumber` AS `rownumber`,min(`jc_bmonthnumber`.`stime`) AS `stime`,max(`jc_bmonthnumber`.`etime`) AS `etime` from `jc_bmonthnumber` group by `jc_bmonthnumber`.`fzh`,`jc_bmonthnumber`.`kh`,`jc_bmonthnumber`.`devid`,`jc_bmonthnumber`.`wzid`,`jc_bmonthnumber`.`point`,`jc_bmonthnumber`.`type`,`jc_bmonthnumber`.`ssz`,`jc_bmonthnumber`.`rownumber` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `jc_bmonthkd`
--

/*!50001 DROP TABLE IF EXISTS `jc_bmonthkd`*/;
/*!50001 DROP VIEW IF EXISTS `jc_bmonthkd`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `jc_bmonthkd` AS select `a`.`pointid` AS `pointid`,`a`.`id` AS `id`,`a`.`type` AS `fromtype`,`a`.`kzk` AS `kzk`,`a`.`kdid` AS `kdid`,`a`.`state` AS `state`,`a`.`point` AS `point`,`a`.`cs` AS `cs`,`a`.`bz1` AS `bz1`,`a`.`bz2` AS `bz2`,`a`.`fzh` AS `zkfzh`,`a`.`kh` AS `zkkh`,`a`.`devid` AS `zkdevid`,`a`.`wzid` AS `zkwzid`,`a`.`stime` AS `zkstime`,`a`.`etime` AS `zketime`,`a`.`ssz` AS `zkssz`,`a`.`zdz` AS `zkzdz`,`a`.`pjz` AS `zkpjz`,`a`.`zdzs` AS `zkzdzs`,`a`.`upflag` AS `zkupflag`,`a`.`isalarm` AS `zkisalarm`,`b`.`pointid` AS `bkpointid`,`b`.`id` AS `toid`,`b`.`point` AS `kdidpoint`,`b`.`type` AS `type`,`b`.`stime` AS `stime`,`b`.`etime` AS `etime`,`b`.`ssz` AS `ssz`,`b`.`zdz` AS `zdz`,`b`.`pjz` AS `pjz`,`b`.`zdzs` AS `zdzs` from ((`kj_feedinfo201907` left join `jc_bmonth` `a` on((`kj_feedinfo201907`.`BJID` = `a`.`id`))) left join `jc_bmonth` `b` on((`kj_feedinfo201907`.`KDID` = `b`.`id`))) where (`kj_feedinfo201907`.`Timer` between '2019-07-27 00:00:00' and '2019-07-27 23:59:59') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `jc_bmonthnumber`
--

/*!50001 DROP TABLE IF EXISTS `jc_bmonthnumber`*/;
/*!50001 DROP VIEW IF EXISTS `jc_bmonthnumber`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `jc_bmonthnumber` AS select (select (count(0) + 1) AS `行号` from `jc_bmonth` `a` where ((`a`.`id` < `b`.`id`) and (`a`.`fzh` = `b`.`fzh`) and (`a`.`kh` = `b`.`kh`) and (`a`.`devid` = `b`.`devid`) and (`a`.`wzid` = `b`.`wzid`) and (`a`.`type` <> `b`.`type`))) AS `rownumber`,`b`.`id` AS `id`,`b`.`fzh` AS `fzh`,`b`.`kh` AS `kh`,`b`.`devid` AS `devid`,`b`.`wzid` AS `wzid`,`b`.`point` AS `point`,`b`.`type` AS `type`,`b`.`stime` AS `stime`,`b`.`etime` AS `etime`,`b`.`ssz` AS `ssz`,`b`.`zdz` AS `zdz`,`b`.`pjz` AS `pjz`,`b`.`zdzs` AS `zdzs`,`b`.`cs` AS `cs`,`b`.`kzk` AS `kzk`,`b`.`upflag` AS `upflag`,`b`.`kdid` AS `kdid`,`b`.`isalarm` AS `isalarm` from `jc_bmonth` `b` order by `b`.`fzh`,`b`.`kh`,`b`.`devid`,`b`.`wzid`,`b`.`stime` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `jc_defkzk`
--

/*!50001 DROP TABLE IF EXISTS `jc_defkzk`*/;
/*!50001 DROP VIEW IF EXISTS `jc_defkzk`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `jc_defkzk` AS select `kj_devicedefinfo`.`ID` AS `ID`,`kj_devicedefinfo`.`fzh` AS `fzh`,`kj_devicedefinfo`.`kh` AS `kh`,`kj_devicedefinfo`.`dzh` AS `dzh`,`kj_devicedefinfo`.`devid` AS `devid`,`kj_devicedefinfo`.`wzid` AS `wzid`,`kj_devicedefinfo`.`csid` AS `csid`,`kj_devicedefinfo`.`point` AS `point`,`kj_devicedefinfo`.`ssz` AS `ssz`,`kj_devicedefinfo`.`state` AS `state`,`kj_devicedefinfo`.`alarm` AS `alarm`,`kj_devicedefinfo`.`Voltage` AS `Voltage`,`kj_devicedefinfo`.`zts` AS `zts`,`kj_devicedefinfo`.`jckz1` AS `jckz1`,`kj_devicedefinfo`.`jckz2` AS `jckz2`,`kj_devicedefinfo`.`jckz3` AS `jckz3`,round(`kj_devicedefinfo`.`Z1`,2) AS `Z1`,round(`kj_devicedefinfo`.`Z2`,2) AS `Z2`,round(`kj_devicedefinfo`.`Z3`,2) AS `Z3`,round(`kj_devicedefinfo`.`Z4`,2) AS `Z4`,round(`kj_devicedefinfo`.`Z5`,2) AS `Z5`,round(`kj_devicedefinfo`.`Z6`,2) AS `Z6`,round(`kj_devicedefinfo`.`Z7`,2) AS `Z7`,round(`kj_devicedefinfo`.`Z8`,2) AS `Z8`,`kj_devicedefinfo`.`K1` AS `K1`,`kj_devicedefinfo`.`K2` AS `K2`,`kj_devicedefinfo`.`K3` AS `K3`,`kj_devicedefinfo`.`K4` AS `K4`,`kj_devicedefinfo`.`K5` AS `K5`,`kj_devicedefinfo`.`K6` AS `K6`,`kj_devicedefinfo`.`K7` AS `K7`,`kj_devicedefinfo`.`K8` AS `K8`,`kj_devicedefinfo`.`Bz1` AS `Bz1`,`kj_devicedefinfo`.`Bz2` AS `Bz2`,`kj_devicedefinfo`.`Bz3` AS `Bz3`,`kj_devicedefinfo`.`Bz4` AS `Bz4`,`kj_devicedefinfo`.`Bz5` AS `Bz5`,`kj_devicedefinfo`.`Bz6` AS `Bz6`,`kj_devicedefinfo`.`Bz7` AS `Bz7`,`kj_devicedefinfo`.`Bz8` AS `Bz8`,`kj_devicedefinfo`.`Bz9` AS `Bz9`,`kj_devicedefinfo`.`Bz10` AS `Bz10`,`kj_devicedefinfo`.`remark` AS `remark`,`kj_devicedefinfo`.`upflag` AS `upflag`,'' AS `kzkpoint`,0 AS `kzkwzid` from `kj_devicedefinfo` where (`kj_devicedefinfo`.`activity` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `jc_hourmax`
--

/*!50001 DROP TABLE IF EXISTS `jc_hourmax`*/;
/*!50001 DROP VIEW IF EXISTS `jc_hourmax`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `jc_hourmax` AS select `jc_hourmonth`.`pointid` AS `pointid`,`jc_hourmonth`.`fzh` AS `fzh`,`jc_hourmonth`.`kh` AS `kh`,`jc_hourmonth`.`devid` AS `devid`,`jc_hourmonth`.`wzid` AS `wzid`,`jc_hourmonth`.`point` AS `point`,max(`jc_hourmonth`.`zdz`) AS `zdz`,min(`jc_hourmonth`.`zxz`) AS `zxz`,round(avg(`jc_hourmonth`.`pjz`),2) AS `pjz` from `jc_hourmonth` group by `jc_hourmonth`.`pointid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `jc_hourmonth`
--

/*!50001 DROP TABLE IF EXISTS `jc_hourmonth`*/;
/*!50001 DROP VIEW IF EXISTS `jc_hourmonth`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `jc_hourmonth` AS select `kj_hour201907`.`PointID` AS `pointid`,`kj_hour201907`.`ID` AS `id`,`kj_hour201907`.`fzh` AS `fzh`,`kj_hour201907`.`kh` AS `kh`,`kj_hour201907`.`devid` AS `devid`,`kj_hour201907`.`wzid` AS `wzid`,`kj_hour201907`.`zdz` AS `zdz`,`kj_hour201907`.`pjz` AS `pjz`,`kj_hour201907`.`zxz` AS `zxz`,`kj_hour201907`.`zdzs` AS `zdzs`,`kj_hour201907`.`zxzs` AS `zxzs`,`kj_hour201907`.`upflag` AS `upflag`,`kj_hour201907`.`point` AS `point`,`kj_hour201907`.`Timer` AS `timer` from `kj_hour201907` where (`kj_hour201907`.`Timer` between '2019-07-27 00:00:00' and '2019-07-27 23:59:00') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `jc_ll_dmonth`
--

/*!50001 DROP TABLE IF EXISTS `jc_ll_dmonth`*/;
/*!50001 DROP VIEW IF EXISTS `jc_ll_dmonth`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `jc_ll_dmonth` AS select `cf_day`.`ID` AS `id`,`cf_day`.`PointID` AS `pointid`,`cf_day`.`FY` AS `fy`,`cf_day`.`WD` AS `wd`,`cf_day`.`WS` AS `ws`,`cf_day`.`CO` AS `co`,`cf_day`.`BH` AS `bh`,`cf_day`.`GH` AS `gh`,`cf_day`.`BC` AS `bc`,`cf_day`.`GC` AS `gc`,`cf_day`.`BHL` AS `bhl`,`cf_day`.`BCL` AS `bcl`,`cf_day`.`GHL` AS `ghl`,`cf_day`.`GCL` AS `gcl`,`cf_day`.`Timer` AS `timer`,`cf_day`.`yxsc` AS `yxsc`,`cf_day`.`Bz1` AS `by1`,`cf_day`.`Bz2` AS `by2`,`cf_day`.`Bz3` AS `by3` from `cf_day` where (`cf_day`.`Timer` between '2018-11-26 00:00:00' and '2018-11-26 23:59:59') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `jc_ll_dmonthmax`
--

/*!50001 DROP TABLE IF EXISTS `jc_ll_dmonthmax`*/;
/*!50001 DROP VIEW IF EXISTS `jc_ll_dmonthmax`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `jc_ll_dmonthmax` AS select `jc_ll_dmonth`.`pointid` AS `pointid`,max(`jc_ll_dmonth`.`timer`) AS `timer` from `jc_ll_dmonth` group by `jc_ll_dmonth`.`pointid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `jc_ll_hmonth`
--

/*!50001 DROP TABLE IF EXISTS `jc_ll_hmonth`*/;
/*!50001 DROP VIEW IF EXISTS `jc_ll_hmonth`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `jc_ll_hmonth` AS select `cf_hour201908`.`ID` AS `id`,`cf_hour201908`.`pointID` AS `pointid`,round(`cf_hour201908`.`FY`,2) AS `fy`,round(`cf_hour201908`.`WD`,2) AS `wd`,round(`cf_hour201908`.`WS`,2) AS `ws`,round(`cf_hour201908`.`CO`,2) AS `co`,round(`cf_hour201908`.`BH`,2) AS `bh`,round(`cf_hour201908`.`GH`,2) AS `gh`,round(`cf_hour201908`.`BC`,2) AS `bc`,round(`cf_hour201908`.`GC`,2) AS `gc`,round(`cf_hour201908`.`BHL`,2) AS `bhl`,round(`cf_hour201908`.`BCL`,2) AS `bcl`,round(`cf_hour201908`.`GHL`,2) AS `ghl`,round(`cf_hour201908`.`GCL`,2) AS `gcl`,`cf_hour201908`.`timer` AS `timer`,`cf_hour201908`.`yxsc` AS `yxsc`,`cf_hour201908`.`Bz1` AS `by1`,`cf_hour201908`.`Bz2` AS `by2`,`cf_hour201908`.`Bz3` AS `by3` from `cf_hour201908` where (`cf_hour201908`.`timer` between '2019-08-02 00:00:00' and '2019-08-02 23:59:00') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `jc_ll_hmonthmax`
--

/*!50001 DROP TABLE IF EXISTS `jc_ll_hmonthmax`*/;
/*!50001 DROP VIEW IF EXISTS `jc_ll_hmonthmax`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `jc_ll_hmonthmax` AS select `jc_ll_hmonth`.`pointid` AS `pointid`,max(`jc_ll_hmonth`.`timer`) AS `timer` from `jc_ll_hmonth` group by `jc_ll_hmonth`.`pointid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `jc_ll_mmonth`
--

/*!50001 DROP TABLE IF EXISTS `jc_ll_mmonth`*/;
/*!50001 DROP VIEW IF EXISTS `jc_ll_mmonth`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `jc_ll_mmonth` AS select `cf_month`.`ID` AS `id`,`cf_month`.`PointID` AS `pointid`,`cf_month`.`FY` AS `fy`,`cf_month`.`WD` AS `wd`,`cf_month`.`WS` AS `ws`,`cf_month`.`CO` AS `co`,`cf_month`.`BH` AS `bh`,`cf_month`.`GH` AS `gh`,`cf_month`.`BC` AS `bc`,`cf_month`.`GC` AS `gc`,`cf_month`.`BHL` AS `bhl`,`cf_month`.`BCL` AS `bcl`,`cf_month`.`GHL` AS `ghl`,`cf_month`.`GCL` AS `gcl`,`cf_month`.`Timer` AS `timer`,`cf_month`.`yxsc` AS `yxsc`,`cf_month`.`Bz1` AS `by1`,`cf_month`.`Bz2` AS `by2`,`cf_month`.`Bz3` AS `by3` from `cf_month` where (`cf_month`.`Timer` between '2018-08-01 00:00:00' and '2018-08-31 23:59:59') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `jc_ll_mmonthmax`
--

/*!50001 DROP TABLE IF EXISTS `jc_ll_mmonthmax`*/;
/*!50001 DROP VIEW IF EXISTS `jc_ll_mmonthmax`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `jc_ll_mmonthmax` AS select `jc_ll_mmonth`.`pointid` AS `pointid`,max(`jc_ll_mmonth`.`timer`) AS `timer` from `jc_ll_mmonth` group by `jc_ll_mmonth`.`pointid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `jc_ll_ymonth`
--

/*!50001 DROP TABLE IF EXISTS `jc_ll_ymonth`*/;
/*!50001 DROP VIEW IF EXISTS `jc_ll_ymonth`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `jc_ll_ymonth` AS select `cf_year`.`ID` AS `id`,`cf_year`.`PointID` AS `pointid`,`cf_year`.`FY` AS `fy`,`cf_year`.`WD` AS `wd`,`cf_year`.`WS` AS `ws`,`cf_year`.`CO` AS `co`,`cf_year`.`BH` AS `bh`,`cf_year`.`GH` AS `gh`,`cf_year`.`BC` AS `bc`,`cf_year`.`GC` AS `gc`,`cf_year`.`BHL` AS `bhl`,`cf_year`.`BCL` AS `bcl`,`cf_year`.`GHL` AS `ghl`,`cf_year`.`GCL` AS `gcl`,`cf_year`.`Timer` AS `timer`,`cf_year`.`yxsc` AS `yxsc`,`cf_year`.`Bz1` AS `by1`,`cf_year`.`Bz2` AS `by2`,`cf_year`.`Bz3` AS `by3` from `cf_year` where (`cf_year`.`Timer` between '2018-01-01 00:00:00' and '2018-12-31 23:59:59') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `jc_ll_ymonthmax`
--

/*!50001 DROP TABLE IF EXISTS `jc_ll_ymonthmax`*/;
/*!50001 DROP VIEW IF EXISTS `jc_ll_ymonthmax`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `jc_ll_ymonthmax` AS select `jc_ll_ymonth`.`pointid` AS `pointid`,max(`jc_ll_ymonth`.`timer`) AS `timer` from `jc_ll_ymonth` group by `jc_ll_ymonth`.`pointid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `jc_mcmonth`
--

/*!50001 DROP TABLE IF EXISTS `jc_mcmonth`*/;
/*!50001 DROP VIEW IF EXISTS `jc_mcmonth`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `jc_mcmonth` AS select `kj_datadetail20190805`.`pointID` AS `pointid`,`kj_datadetail20190805`.`ID` AS `id`,`kj_datadetail20190805`.`fzh` AS `fzh`,`kj_datadetail20190805`.`kh` AS `kh`,`kj_datadetail20190805`.`dzh` AS `dzh`,`kj_datadetail20190805`.`point` AS `point`,`kj_datadetail20190805`.`devid` AS `devid`,`kj_datadetail20190805`.`wzid` AS `wzid`,`kj_datadetail20190805`.`timer` AS `timer`,round(`kj_datadetail20190805`.`ssz`,2) AS `ssz`,`kj_datadetail20190805`.`upflag` AS `upflag`,`kj_datadetail20190805`.`state` AS `state`,`kj_datadetail20190805`.`type` AS `type` from `kj_datadetail20190805` where (`kj_datadetail20190805`.`timer` between '2019-08-05 00:00:00' and '2019-08-05 23:59:00') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `jc_mmax`
--

/*!50001 DROP TABLE IF EXISTS `jc_mmax`*/;
/*!50001 DROP VIEW IF EXISTS `jc_mmax`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `jc_mmax` AS select `kj_month`.`PointID` AS `pointid`,`kj_month`.`fzh` AS `fzh`,`kj_month`.`kh` AS `kh`,`kj_month`.`devid` AS `devid`,`kj_month`.`wzid` AS `wzid`,`kj_month`.`point` AS `point`,max(`kj_month`.`zdz`) AS `zdz`,round(avg(`kj_month`.`pjz`),2) AS `pjz` from `kj_month` group by `kj_month`.`PointID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `jc_mmonth`
--

/*!50001 DROP TABLE IF EXISTS `jc_mmonth`*/;
/*!50001 DROP VIEW IF EXISTS `jc_mmonth`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `jc_mmonth` AS select `kj_stafiveminute20190806`.`pointID` AS `pointid`,`kj_stafiveminute20190806`.`ID` AS `id`,`kj_stafiveminute20190806`.`fzh` AS `fzh`,`kj_stafiveminute20190806`.`kh` AS `kh`,`kj_stafiveminute20190806`.`devid` AS `devid`,`kj_stafiveminute20190806`.`wzid` AS `wzid`,`kj_stafiveminute20190806`.`zdz` AS `zdz`,`kj_stafiveminute20190806`.`pjz` AS `pjz`,`kj_stafiveminute20190806`.`zxz` AS `zxz`,`kj_stafiveminute20190806`.`ssz` AS `ssz`,`kj_stafiveminute20190806`.`zdzs` AS `zdzs`,`kj_stafiveminute20190806`.`zxzs` AS `zxzs`,`kj_stafiveminute20190806`.`sj` AS `sj`,`kj_stafiveminute20190806`.`upflag` AS `upflag`,`kj_stafiveminute20190806`.`point` AS `point`,`kj_stafiveminute20190806`.`timer` AS `timer`,`kj_stafiveminute20190806`.`state` AS `state` from `kj_stafiveminute20190806` where (`kj_stafiveminute20190806`.`timer` between '2019-08-06 00:00:00' and '2019-08-06 23:59:00') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `jc_rmonth`
--

/*!50001 DROP TABLE IF EXISTS `jc_rmonth`*/;
/*!50001 DROP VIEW IF EXISTS `jc_rmonth`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `jc_rmonth` AS select `a`.`ID` AS `id`,`a`.`pointID` AS `pointid`,`a`.`fzh` AS `fzh`,`a`.`kh` AS `kh`,`a`.`dzh` AS `dzh`,`a`.`devid` AS `devid`,`a`.`wzid` AS `wzid`,`a`.`point` AS `point`,`a`.`type` AS `type`,`a`.`state` AS `state`,`a`.`val` AS `val`,`a`.`timer` AS `timer`,`a`.`remark` AS `remark`,`a`.`Bz1` AS `bz1`,`a`.`Bz2` AS `bz2`,`a`.`Bz3` AS `bz3`,`a`.`Bz4` AS `bz4`,`a`.`Bz5` AS `bz5`,`a`.`upflag` AS `upflag` from `kj_datarunrecord201910` `a` where (`a`.`timer` between '2019-10-07 00:00:00' and '2019-10-07 23:59:00') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_1month`
--

/*!50001 DROP TABLE IF EXISTS `view_1month`*/;
/*!50001 DROP VIEW IF EXISTS `view_1month`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_1month` AS select `temp`.`pointid` AS `pointid`,`temp`.`point` AS `point`,cast(`temp`.`zdz` as decimal(8,2)) AS `zdz`,cast(`temp`.`zxz` as decimal(8,2)) AS `zxz`,cast(`temp`.`pjz` as decimal(8,2)) AS `pjz`,(select `b`.`zdzs` from `jc_hourmonth` `b` where ((`b`.`pointid` = `temp`.`pointid`) and (`b`.`zdz` = `temp`.`zdz`)) limit 1) AS `zdzs`,(select `c`.`zxzs` from `jc_hourmonth` `c` where ((`c`.`pointid` = `temp`.`pointid`) and (`c`.`zxz` = `temp`.`zxz`)) limit 1) AS `zxzs`,NULL AS `zdzsa`,`temp`.`pointid` AS `bid`,`temp`.`pointid` AS `bida`,`temp`.`pointid` AS `bidb`,`temp`.`pointid` AS `bidc`,now() AS `datSearch` from `jc_hourmax` `temp` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_2montha`
--

/*!50001 DROP TABLE IF EXISTS `view_2montha`*/;
/*!50001 DROP VIEW IF EXISTS `view_2montha`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_2montha` AS select `jc_bmonth`.`pointid` AS `Pointid`,`jc_bmonth`.`fzh` AS `fzh`,`jc_bmonth`.`kh` AS `kh`,`jc_bmonth`.`point` AS `point`,`jc_bmonth`.`devid` AS `devid`,`jc_bmonth`.`wzid` AS `wzid`,count(`jc_bmonth`.`id`) AS `sumcount`,sum((`jc_bmonth`.`etime` - `jc_bmonth`.`stime`)) AS `sum(etime-stime)`,sec_to_time(sum((unix_timestamp(`jc_bmonth`.`etime`) - unix_timestamp(`jc_bmonth`.`stime`)))) AS `sumtime`,`jc_bmonth`.`pointid` AS `bida`,now() AS `datSearch` from `jc_bmonth` where ((`jc_bmonth`.`point` like '%a%') and (`jc_bmonth`.`type` in (10,16))) group by `jc_bmonth`.`pointid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_3montha`
--

/*!50001 DROP TABLE IF EXISTS `view_3montha`*/;
/*!50001 DROP VIEW IF EXISTS `view_3montha`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_3montha` AS select `jc_bmonth`.`pointid` AS `pointid`,count(`jc_bmonth`.`id`) AS `sumcount`,cast(sec_to_time(sum((unix_timestamp(`jc_bmonth`.`etime`) - unix_timestamp(`jc_bmonth`.`stime`)))) as char charset utf8) AS `sumtime`,`jc_bmonth`.`pointid` AS `bida` from `jc_bmonth` where ((`jc_bmonth`.`point` like '%a%') and (`jc_bmonth`.`kzk` <> '') and (`jc_bmonth`.`kzk` is not null)) group by `jc_bmonth`.`pointid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_3monthabykg`
--

/*!50001 DROP TABLE IF EXISTS `view_3monthabykg`*/;
/*!50001 DROP VIEW IF EXISTS `view_3monthabykg`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_3monthabykg` AS select `jc_bmonth_1`.`pointid` AS `pointid`,`jc_bmonth_1`.`isalarm` AS `isalarm`,count(`jc_bmonth_1`.`id`) AS `sumcount`,`jc_bmonth_1`.`type` AS `type`,sec_to_time(sum((unix_timestamp(`jc_bmonth_1`.`etime`) - unix_timestamp(`jc_bmonth_1`.`stime`)))) AS `sumtime`,concat(`jc_bmonth_1`.`pointid`,`jc_bmonth_1`.`type`) AS `bida` from (`jc_bmonth` `jc_bmonth_1` left join `jc_bmonthkd` `a` on((`jc_bmonth_1`.`id` = `a`.`id`))) where ((`jc_bmonth_1`.`type` in (25,26,27)) and ((`jc_bmonth_1`.`isalarm` > 0) or ((`jc_bmonth_1`.`kzk` is not null) and (`jc_bmonth_1`.`kzk` <> ''))) and (ifnull(`a`.`type`,0) <> 30)) group by `jc_bmonth_1`.`pointid`,`jc_bmonth_1`.`type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_3monthabykg1`
--

/*!50001 DROP TABLE IF EXISTS `view_3monthabykg1`*/;
/*!50001 DROP VIEW IF EXISTS `view_3monthabykg1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_3monthabykg1` AS select `jc_bmonth`.`pointid` AS `pointid`,count(`jc_bmonth`.`id`) AS `sumcount`,sec_to_time(sum((unix_timestamp(`jc_bmonth`.`etime`) - unix_timestamp(`jc_bmonth`.`stime`)))) AS `sumtime`,`jc_bmonth`.`pointid` AS `bida` from `jc_bmonth` where ((`jc_bmonth`.`type` in (25,26,27)) and ((`jc_bmonth`.`isalarm` > 0) or ((`jc_bmonth`.`kzk` is not null) and (`jc_bmonth`.`kzk` <> '')))) group by `jc_bmonth`.`pointid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_3monthabykgfdsb`
--

/*!50001 DROP TABLE IF EXISTS `view_3monthabykgfdsb`*/;
/*!50001 DROP VIEW IF EXISTS `view_3monthabykgfdsb`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_3monthabykgfdsb` AS select `jc_bmonth_1`.`pointid` AS `pointid`,count(`jc_bmonth_1`.`id`) AS `sumcount`,`jc_bmonth_1`.`type` AS `type`,sec_to_time(sum((unix_timestamp(`jc_bmonth_1`.`etime`) - unix_timestamp(`jc_bmonth_1`.`stime`)))) AS `sumtime`,concat(`jc_bmonth_1`.`pointid`,`jc_bmonth_1`.`type`) AS `bida` from `jc_bmonth` `jc_bmonth_1` where ((`jc_bmonth_1`.`type` in (25,26,27)) and ((`jc_bmonth_1`.`isalarm` > 0) or ((`jc_bmonth_1`.`kzk` is not null) and (`jc_bmonth_1`.`kzk` <> '')))) group by `jc_bmonth_1`.`pointid`,`jc_bmonth_1`.`type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_4montha`
--

/*!50001 DROP TABLE IF EXISTS `view_4montha`*/;
/*!50001 DROP VIEW IF EXISTS `view_4montha`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_4montha` AS select `view_kd`.`pointid` AS `PointID`,`view_kd`.`point` AS `point`,count(`view_kd`.`toid`) AS `sumcount`,sec_to_time(sum((unix_timestamp(`view_kd`.`etime`) - unix_timestamp(`view_kd`.`stime`)))) AS `sumtime`,`view_kd`.`pointid` AS `bid` from `jc_bmonthkd` `view_kd` where ((`view_kd`.`point` like '%a%') and (`view_kd`.`type` <> 30)) group by `view_kd`.`pointid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_4monthabykg`
--

/*!50001 DROP TABLE IF EXISTS `view_4monthabykg`*/;
/*!50001 DROP VIEW IF EXISTS `view_4monthabykg`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_4monthabykg` AS select `view_kd`.`pointid` AS `PointID`,`view_kd`.`point` AS `point`,`view_kd`.`fromtype` AS `type`,count(`view_kd`.`id`) AS `sumcount`,sec_to_time(sum((unix_timestamp(`view_kd`.`etime`) - unix_timestamp(`view_kd`.`stime`)))) AS `sumtime`,concat(`view_kd`.`pointid`,`view_kd`.`type`) AS `bid` from `jc_bmonthkd` `view_kd` where (`view_kd`.`point` like '%d%') group by `view_kd`.`pointid`,`view_kd`.`fromtype` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_4monthabykg1`
--

/*!50001 DROP TABLE IF EXISTS `view_4monthabykg1`*/;
/*!50001 DROP VIEW IF EXISTS `view_4monthabykg1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_4monthabykg1` AS select `view_kd`.`pointid` AS `PointID`,`view_kd`.`point` AS `point`,count(`view_kd`.`id`) AS `sumcount`,sec_to_time(sum((unix_timestamp(`view_kd`.`etime`) - unix_timestamp(`view_kd`.`stime`)))) AS `sumtime`,`view_kd`.`pointid` AS `bid` from `jc_bmonthkd` `view_kd` where ((`view_kd`.`point` like '%d%') and (`view_kd`.`type` <> 30)) group by `view_kd`.`pointid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_4monthabykg1fdsb`
--

/*!50001 DROP TABLE IF EXISTS `view_4monthabykg1fdsb`*/;
/*!50001 DROP VIEW IF EXISTS `view_4monthabykg1fdsb`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_4monthabykg1fdsb` AS select `view_kd`.`pointid` AS `PointID`,`view_kd`.`point` AS `point`,count(`view_kd`.`id`) AS `sumcount`,sec_to_time(sum((unix_timestamp(`view_kd`.`etime`) - unix_timestamp(`view_kd`.`stime`)))) AS `sumtime`,`view_kd`.`pointid` AS `bid` from `jc_bmonthkd` `view_kd` where (`view_kd`.`point` like '%d%') group by `view_kd`.`pointid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_4monthafdsb`
--

/*!50001 DROP TABLE IF EXISTS `view_4monthafdsb`*/;
/*!50001 DROP VIEW IF EXISTS `view_4monthafdsb`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_4monthafdsb` AS select `view_kd`.`pointid` AS `PointID`,`view_kd`.`point` AS `point`,count(`view_kd`.`toid`) AS `sumcount`,sec_to_time(sum((unix_timestamp(`view_kd`.`etime`) - unix_timestamp(`view_kd`.`stime`)))) AS `sumtime`,`view_kd`.`pointid` AS `bid` from `jc_bmonthkd` `view_kd` where (`view_kd`.`point` like '%a%') group by `view_kd`.`pointid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_5montha`
--

/*!50001 DROP TABLE IF EXISTS `view_5montha`*/;
/*!50001 DROP VIEW IF EXISTS `view_5montha`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_5montha` AS select `jc_bmonth`.`pointid` AS `pointid`,`jc_bmonth`.`type` AS `type`,`jc_bmonth`.`point` AS `point`,`jc_bmonth`.`ssz` AS `ssz`,count(`jc_bmonth`.`id`) AS `sumcount`,sec_to_time(sum((unix_timestamp(`jc_bmonth`.`etime`) - unix_timestamp(`jc_bmonth`.`stime`)))) AS `sumtime`,concat(`jc_bmonth`.`pointid`,`jc_bmonth`.`type`) AS `bida`,now() AS `datSearch` from `jc_bmonth` where (`jc_bmonth`.`type` in (25,26,27)) group by `jc_bmonth`.`pointid`,`jc_bmonth`.`type`,`jc_bmonth`.`ssz` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_5montha1`
--

/*!50001 DROP TABLE IF EXISTS `view_5montha1`*/;
/*!50001 DROP VIEW IF EXISTS `view_5montha1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_5montha1` AS select `jc_bmonthbydrepeat`.`fzh` AS `fzh`,`jc_bmonthbydrepeat`.`kh` AS `kh`,`jc_bmonthbydrepeat`.`point` AS `point`,`jc_bmonthbydrepeat`.`devid` AS `devid`,`jc_bmonthbydrepeat`.`wzid` AS `wzid`,`jc_bmonthbydrepeat`.`type` AS `type`,`jc_bmonthbydrepeat`.`ssz` AS `ssz`,count(`jc_bmonthbydrepeat`.`rownumber`) AS `sumcount`,sec_to_time(sum((unix_timestamp(`jc_bmonthbydrepeat`.`etime`) - unix_timestamp(`jc_bmonthbydrepeat`.`stime`)))) AS `sumtime`,concat(`jc_bmonthbydrepeat`.`fzh`,`jc_bmonthbydrepeat`.`kh`,`jc_bmonthbydrepeat`.`devid`,`jc_bmonthbydrepeat`.`wzid`,`jc_bmonthbydrepeat`.`type`) AS `bida`,now() AS `datSearch` from `jc_bmonthbydrepeat` where (`jc_bmonthbydrepeat`.`type` in (25,26,27)) group by `jc_bmonthbydrepeat`.`fzh`,`jc_bmonthbydrepeat`.`kh`,`jc_bmonthbydrepeat`.`point`,`jc_bmonthbydrepeat`.`devid`,`jc_bmonthbydrepeat`.`wzid`,`jc_bmonthbydrepeat`.`type`,`jc_bmonthbydrepeat`.`ssz` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_6montha`
--

/*!50001 DROP TABLE IF EXISTS `view_6montha`*/;
/*!50001 DROP VIEW IF EXISTS `view_6montha`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_6montha` AS select count(`jc_bmonth`.`id`) AS `sumcount`,sec_to_time(sum((unix_timestamp(`jc_bmonth`.`etime`) - unix_timestamp(`jc_bmonth`.`stime`)))) AS `sumtime`,`viewjc_mdef`.`pointid` AS `PointID`,now() AS `datSearch`,`viewjc_mdef`.`fzh` AS `fzh`,`viewjc_mdef`.`kh` AS `kh`,`viewjc_mdef`.`devid` AS `devid`,`viewjc_mdef`.`wzid` AS `wzid`,`viewjc_mdef`.`point` AS `point`,`jc_bmonth`.`type` AS `type` from (`viewjc_mdef` left join `jc_bmonth` on(((`viewjc_mdef`.`pointid` = `jc_bmonth`.`pointid`) and (`jc_bmonth`.`type` in (0,1,20,22,23,25,33))))) where (`viewjc_mdef`.`fzh` > 0) group by `viewjc_mdef`.`pointid`,`viewjc_mdef`.`point`,`jc_bmonth`.`type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewb_mdef`
--

/*!50001 DROP TABLE IF EXISTS `viewb_mdef`*/;
/*!50001 DROP VIEW IF EXISTS `viewb_mdef`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewb_mdef` AS select `ra_devicedefinfo`.`ID` AS `ID`,`ra_devicedefinfo`.`PointID` AS `PointID`,`ra_devicedefinfo`.`areaid` AS `areaid`,`ra_devicedefinfo`.`Sysid` AS `Sysid`,`ra_devicedefinfo`.`activity` AS `activity`,`ra_devicedefinfo`.`CreateUpdateTime` AS `CreateUpdateTime`,`ra_devicedefinfo`.`DeleteTime` AS `DeleteTime`,`ra_devicedefinfo`.`fzh` AS `fzh`,`ra_devicedefinfo`.`kh` AS `kh`,`ra_devicedefinfo`.`dzh` AS `dzh`,`ra_devicedefinfo`.`devid` AS `devid`,`ra_devicedefinfo`.`wzid` AS `wzid`,`ra_devicedefinfo`.`csid` AS `csid`,`ra_devicedefinfo`.`point` AS `point`,`ra_devicedefinfo`.`ssz` AS `ssz`,`ra_devicedefinfo`.`datastate` AS `datastate`,`ra_devicedefinfo`.`state` AS `state`,`ra_devicedefinfo`.`alarm` AS `alarm`,`ra_devicedefinfo`.`Voltage` AS `Voltage`,`ra_devicedefinfo`.`zts` AS `zts`,`ra_devicedefinfo`.`jckz1` AS `jckz1`,`ra_devicedefinfo`.`jckz2` AS `jckz2`,`ra_devicedefinfo`.`jckz3` AS `jckz3`,`ra_devicedefinfo`.`Z1` AS `Z1`,`ra_devicedefinfo`.`Z2` AS `Z2`,`ra_devicedefinfo`.`Z3` AS `Z3`,`ra_devicedefinfo`.`Z4` AS `Z4`,`ra_devicedefinfo`.`Z5` AS `Z5`,`ra_devicedefinfo`.`Z6` AS `Z6`,`ra_devicedefinfo`.`Z7` AS `Z7`,`ra_devicedefinfo`.`Z8` AS `Z8`,`ra_devicedefinfo`.`K1` AS `K1`,`ra_devicedefinfo`.`K2` AS `K2`,`ra_devicedefinfo`.`K3` AS `K3`,`ra_devicedefinfo`.`K4` AS `K4`,`ra_devicedefinfo`.`K5` AS `K5`,`ra_devicedefinfo`.`K6` AS `K6`,`ra_devicedefinfo`.`K7` AS `K7`,`ra_devicedefinfo`.`K8` AS `K8`,`ra_devicedefinfo`.`Bz1` AS `Bz1`,`ra_devicedefinfo`.`Bz2` AS `Bz2`,`ra_devicedefinfo`.`Bz3` AS `Bz3`,`ra_devicedefinfo`.`Bz4` AS `Bz4`,`ra_devicedefinfo`.`Bz5` AS `Bz5`,`ra_devicedefinfo`.`Bz6` AS `Bz6`,`ra_devicedefinfo`.`Bz7` AS `Bz7`,`ra_devicedefinfo`.`Bz8` AS `Bz8`,`ra_devicedefinfo`.`Bz9` AS `Bz9`,`ra_devicedefinfo`.`Bz10` AS `Bz10`,`ra_devicedefinfo`.`Bz11` AS `Bz11`,`ra_devicedefinfo`.`Bz12` AS `Bz12`,`ra_devicedefinfo`.`Bz13` AS `Bz13`,`ra_devicedefinfo`.`Bz14` AS `Bz14`,`ra_devicedefinfo`.`Bz15` AS `Bz15`,`ra_devicedefinfo`.`Bz16` AS `Bz16`,`ra_devicedefinfo`.`Bz17` AS `Bz17`,`ra_devicedefinfo`.`Bz18` AS `Bz18`,`ra_devicedefinfo`.`Bz19` AS `Bz19`,`ra_devicedefinfo`.`Bz20` AS `Bz20`,`ra_devicedefinfo`.`remark` AS `remark`,`ra_devicedefinfo`.`upflag` AS `upflag` from `ra_devicedefinfo` where (`ra_devicedefinfo`.`activity` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewdefwzreport`
--

/*!50001 DROP TABLE IF EXISTS `viewdefwzreport`*/;
/*!50001 DROP VIEW IF EXISTS `viewdefwzreport`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewdefwzreport` AS select `jc_defkzk`.`ID` AS `ID`,`jc_defkzk`.`fzh` AS `fzh`,`jc_defkzk`.`kh` AS `kh`,`jc_defkzk`.`dzh` AS `dzh`,`jc_defkzk`.`devid` AS `devid`,`jc_defkzk`.`wzid` AS `wzid`,`jc_defkzk`.`csid` AS `csid`,`jc_defkzk`.`point` AS `point`,`jc_defkzk`.`ssz` AS `ssz`,`jc_defkzk`.`state` AS `state`,`jc_defkzk`.`alarm` AS `alarm`,`jc_defkzk`.`Voltage` AS `Voltage`,`jc_defkzk`.`zts` AS `zts`,`jc_defkzk`.`jckz1` AS `jckz1`,`jc_defkzk`.`jckz2` AS `jckz2`,`jc_defkzk`.`jckz3` AS `jckz3`,`jc_defkzk`.`Z1` AS `Z1`,`jc_defkzk`.`Z2` AS `Z2`,`jc_defkzk`.`Z3` AS `Z3`,`jc_defkzk`.`Z4` AS `Z4`,`jc_defkzk`.`Z5` AS `Z5`,`jc_defkzk`.`Z6` AS `Z6`,`jc_defkzk`.`Z7` AS `Z7`,`jc_defkzk`.`Z8` AS `Z8`,`jc_defkzk`.`K1` AS `K1`,`jc_defkzk`.`K2` AS `K2`,`jc_defkzk`.`K3` AS `K3`,`jc_defkzk`.`K4` AS `K4`,`jc_defkzk`.`K5` AS `K5`,`jc_defkzk`.`K6` AS `K6`,`jc_defkzk`.`K7` AS `K7`,`jc_defkzk`.`K8` AS `K8`,`jc_defkzk`.`Bz1` AS `Bz1`,`jc_defkzk`.`Bz2` AS `Bz2`,`jc_defkzk`.`Bz3` AS `Bz3`,`jc_defkzk`.`Bz4` AS `Bz4`,`jc_defkzk`.`Bz5` AS `Bz5`,`jc_defkzk`.`Bz6` AS `Bz6`,`jc_defkzk`.`Bz7` AS `Bz7`,`jc_defkzk`.`Bz8` AS `Bz8`,`jc_defkzk`.`Bz9` AS `Bz9`,`jc_defkzk`.`Bz10` AS `Bz10`,`jc_defkzk`.`remark` AS `remark`,`jc_defkzk`.`upflag` AS `upflag`,`jc_defkzk`.`kzkpoint` AS `kzkpoint`,`jc_defkzk`.`kzkwzid` AS `kzkwzid`,`kj_deviceaddress`.`wz` AS `wz` from (`jc_defkzk` left join `kj_deviceaddress` on((`jc_defkzk`.`wzid` = `kj_deviceaddress`.`wzID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewequipmentaccount`
--

/*!50001 DROP TABLE IF EXISTS `viewequipmentaccount`*/;
/*!50001 DROP VIEW IF EXISTS `viewequipmentaccount`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewequipmentaccount` AS select `a`.`devid` AS `devid`,`a`.`devid` AS `devid2`,`a`.`name` AS `name`,`a`.`Bz7` AS `totalnum`,count(`b`.`ID`) AS `usednum`,(`a`.`Bz7` - count(`b`.`ID`)) AS `unusednum`,(select count(`i`.`ID`) from `kj_devicedefinfo` `i` where ((`i`.`activity` = 1) and (`i`.`devid` = `a`.`devid`) and (now() >= (`i`.`Bz15` + interval `a`.`Bz5` year)))) AS `overindate`,(select count(`i`.`ID`) from `kj_devicedefinfo` `i` where ((`i`.`activity` = 1) and (`i`.`devid` = `a`.`devid`) and (now() >= (`i`.`Bz15` + interval `a`.`Bz6` year)))) AS `overguaranteeperiod` from (`kj_devicetype` `a` left join `kj_devicedefinfo` `b` on(((`a`.`devid` = `b`.`devid`) and (`b`.`activity` = 1)))) where (`a`.`sysid` = 9) group by `a`.`devid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewfiveminute`
--

/*!50001 DROP TABLE IF EXISTS `viewfiveminute`*/;
/*!50001 DROP VIEW IF EXISTS `viewfiveminute`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewfiveminute` AS select `a`.`pointID` AS `pointid`,`a`.`ID` AS `id`,`a`.`fzh` AS `fzh`,`a`.`kh` AS `kh`,`a`.`devid` AS `devid`,`a`.`wzid` AS `wzid`,`a`.`zdz` AS `zdz`,`a`.`pjz` AS `pjz`,`a`.`zxz` AS `zxz`,`a`.`zdzs` AS `zdzs`,`a`.`zxzs` AS `zxzs`,`a`.`upflag` AS `upflag`,`a`.`point` AS `point`,`a`.`timer` AS `timer` from `kj_stafiveminute20190806` `a` where (`a`.`timer` between '2019-08-06 00:00:00' and '2019-08-06 23:59:00') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewfiveminutemax`
--

/*!50001 DROP TABLE IF EXISTS `viewfiveminutemax`*/;
/*!50001 DROP VIEW IF EXISTS `viewfiveminutemax`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewfiveminutemax` AS select `a`.`pointid` AS `pointid`,`a`.`fzh` AS `fzh`,`a`.`kh` AS `kh`,`a`.`devid` AS `devid`,`a`.`wzid` AS `wzid`,`a`.`point` AS `point`,max(`a`.`zdz`) AS `zdz`,min(`a`.`zxz`) AS `zxz`,round(avg(`a`.`pjz`),2) AS `pjz` from `viewfiveminute` `a` group by `a`.`pointid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewfiveminutemaxandtime`
--

/*!50001 DROP TABLE IF EXISTS `viewfiveminutemaxandtime`*/;
/*!50001 DROP VIEW IF EXISTS `viewfiveminutemaxandtime`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewfiveminutemaxandtime` AS select `b`.`pointid` AS `pointid`,`b`.`point` AS `point`,round(max(`a`.`zdz`),2) AS `zdz`,round(avg(`a`.`pjz`),2) AS `pjz`,`b`.`zdzs` AS `zdzs`,(date_format(`b`.`timer`,'%Y-%m-%d') + interval `b`.`zdzs` second) AS `zdzsa`,`b`.`pointid` AS `bid`,`b`.`pointid` AS `bida`,`b`.`pointid` AS `bidb`,`b`.`pointid` AS `bidc`,now() AS `datSearch` from (`viewfiveminutemax` `a` join `viewfiveminute` `b` on(((`a`.`pointid` = `b`.`pointid`) and (`a`.`zdz` = `b`.`zdz`)))) group by `a`.`pointid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewjc_bdef`
--

/*!50001 DROP TABLE IF EXISTS `viewjc_bdef`*/;
/*!50001 DROP VIEW IF EXISTS `viewjc_bdef`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewjc_bdef` AS select distinct `jc_bmonth`.`fzh` AS `fzh`,`jc_bmonth`.`kh` AS `kh`,`jc_bmonth`.`devid` AS `devid`,`jc_bmonth`.`wzid` AS `wzid`,`jc_bmonth`.`point` AS `point`,concat(`jc_bmonth`.`fzh`,`jc_bmonth`.`kh`,`jc_bmonth`.`devid`,`jc_bmonth`.`wzid`) AS `bid`,concat(`jc_bmonth`.`fzh`,`jc_bmonth`.`kh`,`jc_bmonth`.`devid`,`jc_bmonth`.`wzid`) AS `bida`,concat(`jc_bmonth`.`fzh`,`jc_bmonth`.`kh`,`jc_bmonth`.`devid`,`jc_bmonth`.`wzid`) AS `bidb`,concat(`jc_bmonth`.`fzh`,`jc_bmonth`.`kh`,`jc_bmonth`.`devid`,`jc_bmonth`.`wzid`) AS `bidc` from `jc_bmonth` where (`jc_bmonth`.`point` like '%d%') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewjc_bmonth`
--

/*!50001 DROP TABLE IF EXISTS `viewjc_bmonth`*/;
/*!50001 DROP VIEW IF EXISTS `viewjc_bmonth`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewjc_bmonth` AS select `view_jcmdef`.`fzh` AS `fzh`,`view_jcmdef`.`kh` AS `kh`,`view_jcmdef`.`devid` AS `devid`,`view_jcmdef`.`wzid` AS `wzid`,`view_jcmdef`.`point` AS `point`,`jc_bmonth`.`type` AS `type`,`jc_bmonth`.`state` AS `state`,`jc_bmonth`.`stime` AS `stime`,(case when (`jc_bmonth`.`etime` = '1900-01-01 00:00:00') then '-' else `jc_bmonth`.`etime` end) AS `etime`,timediff(`jc_bmonth`.`etime`,`jc_bmonth`.`stime`) AS `cursumtime`,`jc_bmonth`.`ssz` AS `ssz`,(case `jc_bmonth`.`zdzs` when '1900-01-01 00:00:00' then '-' else `jc_bmonth`.`zdz` end) AS `zdz`,(case `jc_bmonth`.`zdzs` when '1900-01-01 00:00:00' then '-' else `jc_bmonth`.`pjz` end) AS `pjz`,`jc_bmonth`.`zdzs` AS `zdzsa`,(case `jc_bmonth`.`zdzs` when '1900-01-01 00:00:00' then '-' else `jc_bmonth`.`zdzs` end) AS `zdzs`,`jc_bmonth`.`cs` AS `cs`,`jc_bmonth`.`bz1` AS `bz1`,`jc_bmonth`.`bz2` AS `bz2`,`jc_bmonth`.`kzk` AS `kzk`,`jc_bmonth`.`upflag` AS `upflag`,`view_jcmdef`.`pointid` AS `bid`,`view_jcmdef`.`pointid` AS `bida`,`view_jcmdef`.`pointid` AS `pointid`,`jc_bmonth`.`kdid` AS `kdid`,`jc_bmonth`.`remark` AS `remark`,now() AS `datsearch`,'报警' AS `typename`,ifnull(`view_2montha`.`sumcount`,0) AS `sumcount`,ifnull(`view_2montha`.`sumtime`,'00:00:00') AS `sumtime` from ((`viewjc_mdef` `view_jcmdef` left join `view_2montha` on((`view_jcmdef`.`pointid` = `view_2montha`.`Pointid`))) left join `jc_bmonth` on(((`view_jcmdef`.`pointid` = `jc_bmonth`.`pointid`) and (`jc_bmonth`.`type` in (10,16))))) where (`view_jcmdef`.`point` like '%a%') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewjc_def`
--

/*!50001 DROP TABLE IF EXISTS `viewjc_def`*/;
/*!50001 DROP VIEW IF EXISTS `viewjc_def`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewjc_def` AS select distinct `jc_rmonth`.`fzh` AS `fzh`,`jc_rmonth`.`kh` AS `kh`,`jc_rmonth`.`devid` AS `devid`,`jc_rmonth`.`wzid` AS `wzid`,`jc_rmonth`.`point` AS `point`,concat(`jc_rmonth`.`fzh`,`jc_rmonth`.`kh`,`jc_rmonth`.`devid`,`jc_rmonth`.`wzid`) AS `bid`,concat(`jc_rmonth`.`fzh`,`jc_rmonth`.`kh`,`jc_rmonth`.`devid`,`jc_rmonth`.`wzid`) AS `bida`,concat(`jc_rmonth`.`fzh`,`jc_rmonth`.`kh`,`jc_rmonth`.`devid`,`jc_rmonth`.`wzid`) AS `bidb`,concat(`jc_rmonth`.`fzh`,`jc_rmonth`.`kh`,`jc_rmonth`.`devid`,`jc_rmonth`.`wzid`) AS `bidc` from `jc_rmonth` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewjc_dev`
--

/*!50001 DROP TABLE IF EXISTS `viewjc_dev`*/;
/*!50001 DROP VIEW IF EXISTS `viewjc_dev`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewjc_dev` AS select `kj_devicetype`.`devid` AS `devid`,25 AS `state`,`kj_devicetype`.`Xs1` AS `statename` from `kj_devicetype` where (`kj_devicetype`.`type` = 2) union select `kj_devicetype_2`.`devid` AS `devid`,26 AS `state`,`kj_devicetype_2`.`Xs2` AS `statename` from `kj_devicetype` `kj_devicetype_2` where (`kj_devicetype_2`.`type` = 2) union select `kj_devicetype_1`.`devid` AS `devid`,27 AS `state`,`kj_devicetype_1`.`Xs3` AS `statename` from `kj_devicetype` `kj_devicetype_1` where (`kj_devicetype_1`.`type` = 2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewjc_devoveryx`
--

/*!50001 DROP TABLE IF EXISTS `viewjc_devoveryx`*/;
/*!50001 DROP VIEW IF EXISTS `viewjc_devoveryx`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewjc_devoveryx` AS select `kj_devicetype`.`devid` AS `devid`,`kj_devicetype`.`Bz4` AS `bz4`,`kj_devicetype`.`Bz7` AS `bz7`,count(`kj_devicedefinfo`.`PointID`) AS `sumoveryxcount` from (`kj_devicetype` left join `kj_devicedefinfo` on((`kj_devicetype`.`devid` = `kj_devicedefinfo`.`devid`))) where ((`kj_devicedefinfo`.`activity` = 1) and (now() >= (`kj_devicedefinfo`.`Bz12` + interval `kj_devicetype`.`Bz5` year))) group by `kj_devicetype`.`devid`,`kj_devicetype`.`Bz4`,`kj_devicetype`.`Bz7` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewjc_devoverzb`
--

/*!50001 DROP TABLE IF EXISTS `viewjc_devoverzb`*/;
/*!50001 DROP VIEW IF EXISTS `viewjc_devoverzb`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewjc_devoverzb` AS select `kj_devicetype`.`devid` AS `devid`,`kj_devicetype`.`Bz4` AS `bz4`,`kj_devicetype`.`Bz7` AS `bz7`,count(`kj_devicedefinfo`.`PointID`) AS `sumoverzbcount` from (`kj_devicetype` left join `kj_devicedefinfo` on((`kj_devicetype`.`devid` = `kj_devicedefinfo`.`devid`))) where ((`kj_devicedefinfo`.`activity` = 1) and (now() >= (`kj_devicedefinfo`.`Bz12` + interval `kj_devicetype`.`Bz6` year))) group by `kj_devicetype`.`devid`,`kj_devicetype`.`Bz4`,`kj_devicetype`.`Bz7` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewjc_devtj`
--

/*!50001 DROP TABLE IF EXISTS `viewjc_devtj`*/;
/*!50001 DROP VIEW IF EXISTS `viewjc_devtj`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewjc_devtj` AS select `kj_devicetype`.`devid` AS `devid`,`kj_devicetype`.`Bz4` AS `bz4`,`kj_devicetype`.`Bz7` AS `sumcoumt`,count(`kj_devicedefinfo`.`PointID`) AS `sumzycount`,(`kj_devicetype`.`Bz7` - count(`kj_devicedefinfo`.`PointID`)) AS `sumkccount`,`viewjc_devoveryx`.`sumoveryxcount` AS `sumoveryxcount`,`viewjc_devoverzb`.`sumoverzbcount` AS `sumoverzbcount` from (((`kj_devicetype` left join `kj_devicedefinfo` on((`kj_devicetype`.`devid` = `kj_devicedefinfo`.`devid`))) left join `viewjc_devoveryx` on((`kj_devicetype`.`devid` = `viewjc_devoveryx`.`devid`))) left join `viewjc_devoverzb` on((`kj_devicetype`.`devid` = `viewjc_devoverzb`.`devid`))) where (`kj_devicedefinfo`.`activity` = 1) group by `kj_devicetype`.`devid`,`kj_devicetype`.`Bz4` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewjc_dmonth`
--

/*!50001 DROP TABLE IF EXISTS `viewjc_dmonth`*/;
/*!50001 DROP VIEW IF EXISTS `viewjc_dmonth`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewjc_dmonth` AS select `view_jcmdef`.`fzh` AS `fzh`,`view_jcmdef`.`kh` AS `kh`,`view_jcmdef`.`devid` AS `devid`,`view_jcmdef`.`wzid` AS `wzid`,`view_jcmdef`.`point` AS `point`,`jc_bmonth`.`type` AS `type`,`jc_bmonth`.`state` AS `state`,`jc_bmonth`.`stime` AS `stime`,`jc_bmonth`.`etime` AS `etime`,timediff(`jc_bmonth`.`etime`,`jc_bmonth`.`stime`) AS `cursumtime`,`jc_bmonth`.`ssz` AS `ssz`,`jc_bmonth`.`zdz` AS `zdz`,`jc_bmonth`.`pjz` AS `pjz`,`jc_bmonth`.`zdzs` AS `zdzs`,`jc_bmonth`.`cs` AS `cs`,`jc_bmonth`.`kzk` AS `kzk`,`jc_bmonth`.`upflag` AS `upflag`,`view_jcmdef`.`pointid` AS `bid`,`view_jcmdef`.`pointid` AS `bida`,`jc_bmonth`.`kdid` AS `kdid`,now() AS `datsearch`,'断电' AS `typename`,ifnull(`view_3montha`.`sumcount`,0) AS `sumcount`,ifnull(`view_3montha`.`sumtime`,'00:00:00') AS `sumtime` from ((`viewjc_mdef` `view_jcmdef` left join `view_3montha` on((`view_jcmdef`.`pointid` = `view_3montha`.`pointid`))) left join `jc_bmonth` on(((`view_jcmdef`.`pointid` = `jc_bmonth`.`pointid`) and (((`jc_bmonth`.`type` = 20) and (length(ifnull(cast(`jc_bmonth`.`kzk` as char charset utf8),'')) > 0)) or (`jc_bmonth`.`type` in (12,18)))))) where (`view_jcmdef`.`point` like '%a%') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewjc_dmonthbywz`
--

/*!50001 DROP TABLE IF EXISTS `viewjc_dmonthbywz`*/;
/*!50001 DROP VIEW IF EXISTS `viewjc_dmonthbywz`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewjc_dmonthbywz` AS select `jc_bmonth1`.`PointID` AS `PointID`,`jc_bmonth1`.`id` AS `id`,`jc_bmonth1`.`fzh` AS `fzh`,`jc_bmonth1`.`kh` AS `kh`,`jc_bmonth1`.`devid` AS `devid`,`jc_bmonth1`.`wzid` AS `wzid`,`jc_bmonth1`.`point` AS `point`,`jc_bmonth1`.`type` AS `type`,`jc_bmonth1`.`state` AS `state`,`jc_bmonth1`.`stime` AS `stime`,`jc_bmonth1`.`etime` AS `etime`,`jc_bmonth1`.`cursumtime` AS `cursumtime`,`jc_bmonth1`.`ssz` AS `ssz`,`jc_bmonth1`.`zdz` AS `zdz`,`jc_bmonth1`.`pjz` AS `pjz`,`jc_bmonth1`.`zdzs` AS `zdzs`,`jc_bmonth1`.`cs` AS `cs`,`jc_bmonth1`.`bz1` AS `bz1`,`jc_bmonth1`.`bz2` AS `bz2`,`jc_bmonth1`.`kzk` AS `kzk`,`jc_bmonth1`.`kdid` AS `kdid`,`jc_bmonth1`.`remark` AS `remark`,`kj_devicedefinfo`.`point` AS `JCDEFPoint`,`kj_deviceaddress`.`wz` AS `wz`,concat(`jc_bmonth1`.`fzh`,`jc_bmonth1`.`kh`,`jc_bmonth1`.`devid`,`jc_bmonth1`.`wzid`) AS `bid`,`jc_bmonth1`.`id` AS `pid` from ((`jc_bdd` `jc_bmonth1` left join `kj_devicedefinfo` on(((`kj_devicedefinfo`.`activity` = 1) and (locate(concat(',',`kj_devicedefinfo`.`point`,','),concat(',',replace(cast(`jc_bmonth1`.`kzk` as char charset utf8),'|',','),',')) > 0)))) left join `kj_deviceaddress` on((`kj_devicedefinfo`.`wzid` = `kj_deviceaddress`.`wzID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewjc_dmonthbywzkg`
--

/*!50001 DROP TABLE IF EXISTS `viewjc_dmonthbywzkg`*/;
/*!50001 DROP VIEW IF EXISTS `viewjc_dmonthbywzkg`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewjc_dmonthbywzkg` AS select `jc_bmonth1`.`PointID` AS `PointID`,`jc_bmonth1`.`id` AS `id`,`jc_bmonth1`.`fzh` AS `fzh`,`jc_bmonth1`.`kh` AS `kh`,`jc_bmonth1`.`devid` AS `devid`,`jc_bmonth1`.`wzid` AS `wzid`,`jc_bmonth1`.`point` AS `point`,`jc_bmonth1`.`type` AS `type`,`jc_bmonth1`.`stime` AS `stime`,`jc_bmonth1`.`etime` AS `etime`,`jc_bmonth1`.`cursumtime` AS `cursumtime`,`jc_bmonth1`.`ssz` AS `ssz`,`jc_bmonth1`.`zdz` AS `zdz`,`jc_bmonth1`.`pjz` AS `pjz`,`jc_bmonth1`.`zdzs` AS `zdzs`,`jc_bmonth1`.`cs` AS `cs`,`jc_bmonth1`.`bz1` AS `bz1`,`jc_bmonth1`.`bz2` AS `bz2`,`jc_bmonth1`.`kzk` AS `kzk`,`jc_bmonth1`.`kdid` AS `kdid`,`kj_devicedefinfo`.`point` AS `JCDEFPoint`,`kj_deviceaddress`.`wz` AS `wz`,concat(`jc_bmonth1`.`PointID`,`jc_bmonth1`.`type`) AS `bid`,`jc_bmonth1`.`id` AS `pid`,`jc_bmonth1`.`isalarm` AS `isalarm`,`jc_bmonth1`.`remark` AS `remark` from ((`jc_bddbykg` `jc_bmonth1` left join `kj_devicedefinfo` on(((`kj_devicedefinfo`.`activity` = 1) and (locate(concat(',',`kj_devicedefinfo`.`point`,','),concat(',',replace(cast(`jc_bmonth1`.`kzk` as char charset utf8),'|',','),',')) > 0)))) left join `kj_deviceaddress` on((`kj_devicedefinfo`.`wzid` = `kj_deviceaddress`.`wzID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewjc_kgstate`
--

/*!50001 DROP TABLE IF EXISTS `viewjc_kgstate`*/;
/*!50001 DROP VIEW IF EXISTS `viewjc_kgstate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewjc_kgstate` AS select `viewjc_mdef`.`fzh` AS `fzh`,`viewjc_mdef`.`kh` AS `kh`,`viewjc_mdef`.`devid` AS `devid`,`viewjc_mdef`.`wzid` AS `wzid`,`viewjc_mdef`.`pointid` AS `PointID`,`viewjc_mdef`.`point` AS `point`,25 AS `state`,`viewjc_mdef`.`bz6` AS `statename`,concat(`viewjc_mdef`.`pointid`,'25') AS `bid`,concat(`viewjc_mdef`.`pointid`,'25') AS `bida`,concat(`viewjc_mdef`.`pointid`,'25') AS `bidb`,concat(`viewjc_mdef`.`pointid`,'25') AS `bidc` from `viewjc_mdef` where (`viewjc_mdef`.`point` like '%d%') union all select `viewjc_mdef`.`fzh` AS `fzh`,`viewjc_mdef`.`kh` AS `kh`,`viewjc_mdef`.`devid` AS `devid`,`viewjc_mdef`.`wzid` AS `wzid`,`viewjc_mdef`.`pointid` AS `PointID`,`viewjc_mdef`.`point` AS `point`,26 AS `state`,`viewjc_mdef`.`bz7` AS `statename`,concat(`viewjc_mdef`.`pointid`,'26') AS `bid`,concat(`viewjc_mdef`.`pointid`,'26') AS `bida`,concat(`viewjc_mdef`.`pointid`,'26') AS `bidb`,concat(`viewjc_mdef`.`pointid`,'26') AS `bidc` from `viewjc_mdef` where (`viewjc_mdef`.`point` like '%d%') union all select `viewjc_mdef`.`fzh` AS `fzh`,`viewjc_mdef`.`kh` AS `kh`,`viewjc_mdef`.`devid` AS `devid`,`viewjc_mdef`.`wzid` AS `wzid`,`viewjc_mdef`.`pointid` AS `PointID`,`viewjc_mdef`.`point` AS `point`,27 AS `state`,`viewjc_mdef`.`bz8` AS `statename`,concat(`viewjc_mdef`.`pointid`,'27') AS `bid`,concat(`viewjc_mdef`.`pointid`,'27') AS `bida`,concat(`viewjc_mdef`.`pointid`,'27') AS `bidb`,concat(`viewjc_mdef`.`pointid`,'27') AS `bidc` from `viewjc_mdef` where (`viewjc_mdef`.`point` like '%d%') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewjc_kgstatemonth`
--

/*!50001 DROP TABLE IF EXISTS `viewjc_kgstatemonth`*/;
/*!50001 DROP VIEW IF EXISTS `viewjc_kgstatemonth`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewjc_kgstatemonth` AS select `viewjc_kgstate`.`PointID` AS `Pointid`,`viewjc_kgstate`.`fzh` AS `fzh`,`viewjc_kgstate`.`kh` AS `kh`,`viewjc_kgstate`.`devid` AS `devid`,`viewjc_kgstate`.`wzid` AS `wzid`,`viewjc_kgstate`.`point` AS `point`,`viewjc_kgstate`.`statename` AS `state`,`jc_bmonth`.`stime` AS `stime`,`jc_bmonth`.`etime` AS `etime`,`jc_bmonth`.`ssz` AS `ssz`,timediff(`jc_bmonth`.`etime`,`jc_bmonth`.`stime`) AS `duration`,ifnull(`view_5montha`.`sumcount`,0) AS `sumcount`,ifnull(`view_5montha`.`sumtime`,'00:00:00') AS `sumtime`,concat(`jc_bmonth`.`pointid`,`jc_bmonth`.`type`) AS `pid`,now() AS `datSearch` from ((`viewjc_kgstate` left join `jc_bmonth` on(((`viewjc_kgstate`.`PointID` = `jc_bmonth`.`pointid`) and (`viewjc_kgstate`.`state` = `jc_bmonth`.`type`)))) left join `view_5montha` on(((`viewjc_kgstate`.`PointID` = `view_5montha`.`pointid`) and (`viewjc_kgstate`.`state` = `view_5montha`.`type`)))) where (`viewjc_kgstate`.`point` like '%d%') order by `viewjc_kgstate`.`point` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewjc_kgstatemonth1`
--

/*!50001 DROP TABLE IF EXISTS `viewjc_kgstatemonth1`*/;
/*!50001 DROP VIEW IF EXISTS `viewjc_kgstatemonth1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewjc_kgstatemonth1` AS select `viewjc_kgstate`.`fzh` AS `fzh`,`viewjc_kgstate`.`kh` AS `kh`,`viewjc_kgstate`.`devid` AS `devid`,`viewjc_kgstate`.`wzid` AS `wzid`,`viewjc_kgstate`.`point` AS `point`,`viewjc_kgstate`.`statename` AS `state`,`jc_bmonthbydrepeat`.`stime` AS `stime`,`jc_bmonthbydrepeat`.`etime` AS `etime`,`jc_bmonthbydrepeat`.`ssz` AS `ssz`,ifnull(`view_5montha1`.`sumcount`,0) AS `sumcount`,ifnull(`view_5montha1`.`sumtime`,'00:00:00') AS `sumtime`,concat(`jc_bmonthbydrepeat`.`fzh`,`jc_bmonthbydrepeat`.`kh`,`jc_bmonthbydrepeat`.`devid`,`jc_bmonthbydrepeat`.`wzid`,`jc_bmonthbydrepeat`.`type`) AS `pid`,now() AS `datSearch` from ((`viewjc_kgstate` left join `jc_bmonthbydrepeat` on((`viewjc_kgstate`.`bid` = concat(`jc_bmonthbydrepeat`.`fzh`,`jc_bmonthbydrepeat`.`kh`,`jc_bmonthbydrepeat`.`devid`,`jc_bmonthbydrepeat`.`wzid`,`jc_bmonthbydrepeat`.`type`)))) left join `view_5montha1` on(((`jc_bmonthbydrepeat`.`type` = `view_5montha1`.`type`) and (`jc_bmonthbydrepeat`.`wzid` = `view_5montha1`.`wzid`) and (`jc_bmonthbydrepeat`.`devid` = `view_5montha1`.`devid`) and (`jc_bmonthbydrepeat`.`kh` = `view_5montha1`.`kh`) and (`jc_bmonthbydrepeat`.`fzh` = `view_5montha1`.`fzh`)))) where (`viewjc_kgstate`.`point` like '%d%') order by `viewjc_kgstate`.`point` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewjc_kmonth`
--

/*!50001 DROP TABLE IF EXISTS `viewjc_kmonth`*/;
/*!50001 DROP VIEW IF EXISTS `viewjc_kmonth`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewjc_kmonth` AS select `view_jcmdef`.`fzh` AS `fzh`,`view_jcmdef`.`kh` AS `kh`,`view_jcmdef`.`devid` AS `devid`,`view_jcmdef`.`wzid` AS `wzid`,`view_jcmdef`.`point` AS `point`,`view_jcmdef`.`pointid` AS `PointID`,`jc_bmonthkd`.`id` AS `id`,`jc_bmonthkd`.`kzk` AS `kzk`,`jc_bmonthkd`.`kdid` AS `kdid`,`jc_bmonthkd`.`state` AS `state`,`jc_bmonthkd`.`toid` AS `toid`,`jc_bmonthkd`.`kdidpoint` AS `kdidpoint`,`jc_bmonthkd`.`type` AS `type`,`jc_bmonthkd`.`stime` AS `stime`,`jc_bmonthkd`.`etime` AS `etime`,`jc_bmonthkd`.`ssz` AS `ssz`,`jc_bmonthkd`.`zdz` AS `zdz`,`jc_bmonthkd`.`pjz` AS `pjz`,`jc_bmonthkd`.`zdzs` AS `zdzs`,`jc_bmonthkd`.`cs` AS `cs`,`jc_bmonthkd`.`bz1` AS `bz1`,`jc_bmonthkd`.`bz2` AS `bz2`,`jc_bmonthkd`.`id` AS `pid`,timediff(`jc_bmonthkd`.`etime`,`jc_bmonthkd`.`stime`) AS `cursumtime`,'馈电' AS `typename`,ifnull(`view_4montha`.`sumcount`,0) AS `sumcount`,ifnull(`view_4montha`.`sumtime`,'00:00:00') AS `sumtime`,`view_jcmdef`.`pointid` AS `bid`,now() AS `datsearch` from ((`viewjc_mdef` `view_jcmdef` left join `view_4montha` on((`view_jcmdef`.`pointid` = `view_4montha`.`PointID`))) left join `jc_bmonthkd` on((`view_jcmdef`.`pointid` = `jc_bmonthkd`.`pointid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewjc_kmonthbykg`
--

/*!50001 DROP TABLE IF EXISTS `viewjc_kmonthbykg`*/;
/*!50001 DROP VIEW IF EXISTS `viewjc_kmonthbykg`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewjc_kmonthbykg` AS select `jc_bmonth1`.`id` AS `id`,`jc_bmonth1`.`fzh` AS `fzh`,`jc_bmonth1`.`kh` AS `kh`,`jc_bmonth1`.`devid` AS `devid`,`jc_bmonth1`.`wzid` AS `wzid`,`jc_bmonth1`.`point` AS `point`,`jc_bmonth1`.`kzk` AS `kzk`,`jc_bmonth1`.`kdid` AS `kdid`,`b`.`id` AS `toid`,`b`.`kdidpoint` AS `kdidpoint`,`b`.`type` AS `type`,`b`.`stime` AS `stime`,`b`.`etime` AS `etime`,`b`.`cs` AS `cs`,`jc_bmonth1`.`id` AS `pid`,timediff(`b`.`etime`,`b`.`stime`) AS `cursumtime`,concat(`jc_bmonth1`.`Pointid`,`jc_bmonth1`.`type`) AS `bid`,`b`.`ssz` AS `ssz` from (`jc_bkd` `jc_bmonth1` left join `jc_bmonthkd` `b` on((`jc_bmonth1`.`id` = `b`.`id`))) where (`jc_bmonth1`.`point` like '%d%') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewjc_lld`
--

/*!50001 DROP TABLE IF EXISTS `viewjc_lld`*/;
/*!50001 DROP VIEW IF EXISTS `viewjc_lld`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewjc_lld` AS select `jc_ll_dmonth`.`id` AS `ID`,`jc_ll_dmonth`.`pointid` AS `PointID`,sum(`jc_ll_dmonth`.`fy`) AS `FY`,sum(`jc_ll_dmonth`.`wd`) AS `WD`,sum(`jc_ll_dmonth`.`ws`) AS `WS`,sum(`jc_ll_dmonth`.`co`) AS `CO`,sum(`jc_ll_dmonth`.`bh`) AS `BH`,sum(`jc_ll_dmonth`.`gh`) AS `GH`,sum(`jc_ll_dmonth`.`bc`) AS `BC`,sum(`jc_ll_dmonth`.`gc`) AS `GC`,sum(`jc_ll_dmonth`.`bhl`) AS `BHL`,sum(`jc_ll_dmonth`.`bcl`) AS `BCL`,sum(`jc_ll_dmonth`.`ghl`) AS `GHL`,sum(`jc_ll_dmonth`.`gcl`) AS `GCL`,`jc_ll_dmonth`.`timer` AS `timer`,sum(`jc_ll_dmonth`.`yxsc`) AS `yxsc1`,sec_to_time(sum(`jc_ll_dmonth`.`yxsc`)) AS `yxsc`,`jc_ll_dmonth`.`by1` AS `By1`,`jc_ll_dmonth`.`by2` AS `By2`,`jc_ll_dmonth`.`by3` AS `By3`,0 AS `sort`,`a`.`point` AS `point`,now() AS `datsearch` from (`jc_ll_dmonth` left join `kj_devicedefinfo` `a` on((`jc_ll_dmonth`.`pointid` = `a`.`PointID`))) group by `jc_ll_dmonth`.`pointid`,`jc_ll_dmonth`.`timer` union all select `jc_ll_dmonth`.`id` AS `ID`,`jc_ll_dmonth`.`pointid` AS `PointID`,round(avg(`jc_ll_dmonth`.`fy`),2) AS `FY`,round(avg(`jc_ll_dmonth`.`wd`),2) AS `WD`,round(avg(`jc_ll_dmonth`.`ws`),2) AS `WS`,round(avg(`jc_ll_dmonth`.`co`),2) AS `CO`,round(avg(`jc_ll_dmonth`.`bh`),2) AS `BH`,round(avg(`jc_ll_dmonth`.`gh`),2) AS `GH`,round(avg(`jc_ll_dmonth`.`bc`),2) AS `BC`,round(avg(`jc_ll_dmonth`.`gc`),2) AS `GC`,sum(`jc_ll_dmonth`.`bhl`) AS `BHL`,sum(`jc_ll_dmonth`.`bcl`) AS `BCL`,sum(`jc_ll_dmonth`.`ghl`) AS `GHL`,sum(`jc_ll_dmonth`.`gcl`) AS `GCL`,`jc_ll_dmonthmax`.`timer` AS `timer`,sum(`jc_ll_dmonth`.`yxsc`) AS `yxsc1`,sec_to_time(sum(`jc_ll_dmonth`.`yxsc`)) AS `yxsc`,'-999' AS `By1`,`jc_ll_dmonth`.`by2` AS `By2`,`jc_ll_dmonth`.`by3` AS `By3`,1 AS `sort`,`a`.`point` AS `point`,now() AS `datsearch` from ((`jc_ll_dmonth` left join `jc_ll_dmonthmax` on((`jc_ll_dmonth`.`pointid` = `jc_ll_dmonthmax`.`pointid`))) left join `kj_devicedefinfo` `a` on((`jc_ll_dmonth`.`pointid` = `a`.`PointID`))) group by `jc_ll_dmonth`.`pointid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewjc_llm`
--

/*!50001 DROP TABLE IF EXISTS `viewjc_llm`*/;
/*!50001 DROP VIEW IF EXISTS `viewjc_llm`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewjc_llm` AS select `jc_ll_mmonth`.`id` AS `ID`,`jc_ll_mmonth`.`pointid` AS `PointID`,sum(`jc_ll_mmonth`.`fy`) AS `FY`,sum(`jc_ll_mmonth`.`wd`) AS `WD`,sum(`jc_ll_mmonth`.`ws`) AS `WS`,sum(`jc_ll_mmonth`.`co`) AS `CO`,sum(`jc_ll_mmonth`.`bh`) AS `BH`,sum(`jc_ll_mmonth`.`gh`) AS `GH`,sum(`jc_ll_mmonth`.`bc`) AS `BC`,sum(`jc_ll_mmonth`.`gc`) AS `GC`,sum(`jc_ll_mmonth`.`bhl`) AS `BHL`,sum(`jc_ll_mmonth`.`bcl`) AS `BCL`,sum(`jc_ll_mmonth`.`ghl`) AS `GHL`,sum(`jc_ll_mmonth`.`gcl`) AS `GCL`,`jc_ll_mmonth`.`timer` AS `timer`,sum(`jc_ll_mmonth`.`yxsc`) AS `yxsc1`,sec_to_time(sum(`jc_ll_mmonth`.`yxsc`)) AS `yxsc`,`jc_ll_mmonth`.`by1` AS `By1`,`jc_ll_mmonth`.`by2` AS `By2`,`jc_ll_mmonth`.`by3` AS `By3`,0 AS `sort`,`a`.`point` AS `point`,now() AS `datsearch` from (`jc_ll_mmonth` left join `kj_devicedefinfo` `a` on((`jc_ll_mmonth`.`pointid` = `a`.`PointID`))) group by `jc_ll_mmonth`.`pointid`,`jc_ll_mmonth`.`timer` union all select `jc_ll_mmonth`.`id` AS `ID`,`jc_ll_mmonth`.`pointid` AS `PointID`,round(avg(`jc_ll_mmonth`.`fy`),2) AS `FY`,round(avg(`jc_ll_mmonth`.`wd`),2) AS `WD`,round(avg(`jc_ll_mmonth`.`ws`),2) AS `WS`,round(avg(`jc_ll_mmonth`.`co`),2) AS `CO`,round(avg(`jc_ll_mmonth`.`bh`),2) AS `BH`,round(avg(`jc_ll_mmonth`.`gh`),2) AS `GH`,round(avg(`jc_ll_mmonth`.`bc`),2) AS `BC`,round(avg(`jc_ll_mmonth`.`gc`),2) AS `GC`,sum(`jc_ll_mmonth`.`bhl`) AS `BHL`,sum(`jc_ll_mmonth`.`bcl`) AS `BCL`,sum(`jc_ll_mmonth`.`ghl`) AS `GHL`,sum(`jc_ll_mmonth`.`gcl`) AS `GCL`,`jc_ll_mmonthmax`.`timer` AS `timer`,sum(`jc_ll_mmonth`.`yxsc`) AS `yxsc1`,sec_to_time(sum(`jc_ll_mmonth`.`yxsc`)) AS `yxsc`,'-999' AS `By1`,`jc_ll_mmonth`.`by2` AS `By2`,`jc_ll_mmonth`.`by3` AS `By3`,1 AS `sort`,`a`.`point` AS `point`,now() AS `datsearch` from ((`jc_ll_mmonth` left join `jc_ll_mmonthmax` on((`jc_ll_mmonth`.`pointid` = `jc_ll_mmonthmax`.`pointid`))) left join `kj_devicedefinfo` `a` on((`jc_ll_mmonth`.`pointid` = `a`.`PointID`))) group by `jc_ll_mmonth`.`pointid` order by `pointid`,`timer`,`sort` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewjc_llmonth`
--

/*!50001 DROP TABLE IF EXISTS `viewjc_llmonth`*/;
/*!50001 DROP VIEW IF EXISTS `viewjc_llmonth`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewjc_llmonth` AS select `jc_ll_hmonth`.`id` AS `ID`,`jc_ll_hmonth`.`pointid` AS `PointID`,sum(`jc_ll_hmonth`.`fy`) AS `FY`,sum(`jc_ll_hmonth`.`wd`) AS `WD`,sum(`jc_ll_hmonth`.`ws`) AS `WS`,sum(`jc_ll_hmonth`.`co`) AS `CO`,sum(`jc_ll_hmonth`.`bh`) AS `BH`,sum(`jc_ll_hmonth`.`gh`) AS `GH`,sum(`jc_ll_hmonth`.`bc`) AS `BC`,sum(`jc_ll_hmonth`.`gc`) AS `GC`,sum(`jc_ll_hmonth`.`bhl`) AS `BHL`,sum(`jc_ll_hmonth`.`bcl`) AS `BCL`,sum(`jc_ll_hmonth`.`ghl`) AS `GHL`,sum(`jc_ll_hmonth`.`gcl`) AS `GCL`,`jc_ll_hmonth`.`timer` AS `timer`,sum(`jc_ll_hmonth`.`yxsc`) AS `yxsc1`,sec_to_time(sum(`jc_ll_hmonth`.`yxsc`)) AS `yxsc`,`jc_ll_hmonth`.`by1` AS `By1`,`jc_ll_hmonth`.`by2` AS `By2`,`jc_ll_hmonth`.`by3` AS `By3`,0 AS `sort`,`a`.`point` AS `point`,now() AS `datsearch` from (`jc_ll_hmonth` left join `kj_devicedefinfo` `a` on((`jc_ll_hmonth`.`pointid` = `a`.`PointID`))) group by `jc_ll_hmonth`.`pointid`,`jc_ll_hmonth`.`timer` union all select `jc_ll_hmonth`.`id` AS `ID`,`jc_ll_hmonth`.`pointid` AS `PointID`,round(avg(`jc_ll_hmonth`.`fy`),2) AS `FY`,round(avg(`jc_ll_hmonth`.`wd`),2) AS `WD`,round(avg(`jc_ll_hmonth`.`ws`),2) AS `WS`,round(avg(`jc_ll_hmonth`.`co`),2) AS `CO`,round(avg(`jc_ll_hmonth`.`bh`),2) AS `BH`,round(avg(`jc_ll_hmonth`.`gh`),2) AS `GH`,round(avg(`jc_ll_hmonth`.`bc`),2) AS `BC`,round(avg(`jc_ll_hmonth`.`gc`),2) AS `GC`,sum(`jc_ll_hmonth`.`bhl`) AS `BHL`,sum(`jc_ll_hmonth`.`bcl`) AS `BCL`,sum(`jc_ll_hmonth`.`ghl`) AS `GHL`,sum(`jc_ll_hmonth`.`gcl`) AS `GCL`,`jc_ll_hmonthmax`.`timer` AS `timer`,sum(`jc_ll_hmonth`.`yxsc`) AS `yxsc1`,sec_to_time(sum(`jc_ll_hmonth`.`yxsc`)) AS `yxsc`,'-999' AS `By1`,`jc_ll_hmonth`.`by2` AS `By2`,`jc_ll_hmonth`.`by3` AS `By3`,1 AS `sort`,`a`.`point` AS `point`,now() AS `datsearch` from ((`jc_ll_hmonth` left join `jc_ll_hmonthmax` on((`jc_ll_hmonth`.`pointid` = `jc_ll_hmonthmax`.`pointid`))) left join `kj_devicedefinfo` `a` on((`jc_ll_hmonth`.`pointid` = `a`.`PointID`))) group by `jc_ll_hmonth`.`pointid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewjc_llmonth(暂时不用)`
--

/*!50001 DROP TABLE IF EXISTS `viewjc_llmonth(暂时不用)`*/;
/*!50001 DROP VIEW IF EXISTS `viewjc_llmonth(暂时不用)`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewjc_llmonth(暂时不用)` AS select `jc_ll_hmonth`.`id` AS `ID`,`jc_ll_hmonth`.`pointid` AS `PointID`,sum(`jc_ll_hmonth`.`fy`) AS `FY`,sum(`jc_ll_hmonth`.`wd`) AS `WD`,sum(`jc_ll_hmonth`.`ws`) AS `WS`,sum(`jc_ll_hmonth`.`co`) AS `CO`,sum(`jc_ll_hmonth`.`bh`) AS `BH`,sum(`jc_ll_hmonth`.`gh`) AS `GH`,sum(`jc_ll_hmonth`.`bc`) AS `BC`,sum(`jc_ll_hmonth`.`gc`) AS `GC`,sum(`jc_ll_hmonth`.`bhl`) AS `BHL`,sum(`jc_ll_hmonth`.`bcl`) AS `BCL`,sum(`jc_ll_hmonth`.`ghl`) AS `GHL`,sum(`jc_ll_hmonth`.`gcl`) AS `GCL`,ifnull(`jc_ll_hmonth`.`timer`,'2000-01-01 00:00:00') AS `timer`,sum(`jc_ll_hmonth`.`yxsc`) AS `yxsc1`,sec_to_time(sum(`jc_ll_hmonth`.`yxsc`)) AS `yxsc`,`jc_ll_hmonth`.`by1` AS `By1`,`jc_ll_hmonth`.`by2` AS `By2`,`jc_ll_hmonth`.`by3` AS `By3`,now() AS `datsearch` from `jc_ll_hmonth` group by `jc_ll_hmonth`.`pointid`,`jc_ll_hmonth`.`timer` with rollup having (`jc_ll_hmonth`.`pointid` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewjc_lly`
--

/*!50001 DROP TABLE IF EXISTS `viewjc_lly`*/;
/*!50001 DROP VIEW IF EXISTS `viewjc_lly`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewjc_lly` AS select `jc_ll_ymonth`.`id` AS `ID`,`jc_ll_ymonth`.`pointid` AS `PointID`,sum(`jc_ll_ymonth`.`fy`) AS `FY`,sum(`jc_ll_ymonth`.`wd`) AS `WD`,sum(`jc_ll_ymonth`.`ws`) AS `WS`,sum(`jc_ll_ymonth`.`co`) AS `CO`,sum(`jc_ll_ymonth`.`bh`) AS `BH`,sum(`jc_ll_ymonth`.`gh`) AS `GH`,sum(`jc_ll_ymonth`.`bc`) AS `BC`,sum(`jc_ll_ymonth`.`gc`) AS `GC`,sum(`jc_ll_ymonth`.`bhl`) AS `BHL`,sum(`jc_ll_ymonth`.`bcl`) AS `BCL`,sum(`jc_ll_ymonth`.`ghl`) AS `GHL`,sum(`jc_ll_ymonth`.`gcl`) AS `GCL`,`jc_ll_ymonth`.`timer` AS `timer`,sum(`jc_ll_ymonth`.`yxsc`) AS `yxsc1`,sec_to_time(sum(`jc_ll_ymonth`.`yxsc`)) AS `yxsc`,`jc_ll_ymonth`.`by1` AS `By1`,`jc_ll_ymonth`.`by2` AS `By2`,`jc_ll_ymonth`.`by3` AS `By3`,0 AS `sort`,`a`.`point` AS `point`,now() AS `datsearch` from (`jc_ll_ymonth` left join `kj_devicedefinfo` `a` on((`jc_ll_ymonth`.`pointid` = `a`.`PointID`))) group by `jc_ll_ymonth`.`pointid`,`jc_ll_ymonth`.`timer` union all select `jc_ll_ymonth`.`id` AS `ID`,`jc_ll_ymonth`.`pointid` AS `PointID`,round(avg(`jc_ll_ymonth`.`fy`),2) AS `FY`,round(avg(`jc_ll_ymonth`.`wd`),2) AS `WD`,round(avg(`jc_ll_ymonth`.`ws`),2) AS `WS`,round(avg(`jc_ll_ymonth`.`co`),2) AS `CO`,round(avg(`jc_ll_ymonth`.`bh`),2) AS `BH`,round(avg(`jc_ll_ymonth`.`gh`),2) AS `GH`,round(avg(`jc_ll_ymonth`.`bc`),2) AS `BC`,round(avg(`jc_ll_ymonth`.`gc`),2) AS `GC`,sum(`jc_ll_ymonth`.`bhl`) AS `BHL`,sum(`jc_ll_ymonth`.`bcl`) AS `BCL`,sum(`jc_ll_ymonth`.`ghl`) AS `GHL`,sum(`jc_ll_ymonth`.`gcl`) AS `GCL`,`jc_ll_ymonthmax`.`timer` AS `timer`,sum(`jc_ll_ymonth`.`yxsc`) AS `yxsc1`,sec_to_time(sum(`jc_ll_ymonth`.`yxsc`)) AS `yxsc`,'-999' AS `By1`,`jc_ll_ymonth`.`by2` AS `By2`,`jc_ll_ymonth`.`by3` AS `By3`,1 AS `sort`,`a`.`point` AS `point`,now() AS `datsearch` from ((`jc_ll_ymonth` left join `jc_ll_ymonthmax` on((`jc_ll_ymonth`.`pointid` = `jc_ll_ymonthmax`.`pointid`))) left join `kj_devicedefinfo` `a` on((`jc_ll_ymonth`.`pointid` = `a`.`PointID`))) group by `jc_ll_ymonth`.`pointid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewjc_mdef`
--

/*!50001 DROP TABLE IF EXISTS `viewjc_mdef`*/;
/*!50001 DROP VIEW IF EXISTS `viewjc_mdef`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewjc_mdef` AS select `kj_devicedefinfo`.`fzh` AS `fzh`,`kj_devicedefinfo`.`kh` AS `kh`,`kj_devicedefinfo`.`devid` AS `devid`,`kj_devicedefinfo`.`wzid` AS `wzid`,`kj_devicedefinfo`.`point` AS `point`,`kj_devicedefinfo`.`PointID` AS `pointid`,`kj_devicedefinfo`.`PointID` AS `bid`,`kj_devicedefinfo`.`Bz6` AS `bz6`,`kj_devicedefinfo`.`Bz7` AS `bz7`,`kj_devicedefinfo`.`Bz8` AS `bz8` from `kj_devicedefinfo` where ((`kj_devicedefinfo`.`DeleteTime` = '1900-01-01 00:00:00') or (`kj_devicedefinfo`.`DeleteTime` between '9999-12-31 23:59:59' and '9999-12-31 23:59:59')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewjc_mdefsubqueryaft`
--

/*!50001 DROP TABLE IF EXISTS `viewjc_mdefsubqueryaft`*/;
/*!50001 DROP VIEW IF EXISTS `viewjc_mdefsubqueryaft`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewjc_mdefsubqueryaft` AS select distinct `a`.`point` AS `point` from `kj_devicedefinfo` `a` where ((`a`.`activity` = 0) and (not(`a`.`point` in (select `kj_devicedefinfo`.`point` from `kj_devicedefinfo` where (`kj_devicedefinfo`.`activity` = 1)))) and (`a`.`DeleteTime` between '2017-09-15 00:00:00' and '9999-12-31 23:59:59')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewjc_mdefsubquerybef`
--

/*!50001 DROP TABLE IF EXISTS `viewjc_mdefsubquerybef`*/;
/*!50001 DROP VIEW IF EXISTS `viewjc_mdefsubquerybef`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewjc_mdefsubquerybef` AS select distinct `a`.`point` AS `point` from `kj_devicedefinfo` `a` where ((`a`.`activity` = 0) and (`a`.`DeleteTime` between '2019-07-28 00:00:00' and '9999-12-31 23:59:59')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewjcbmonthkdpx`
--

/*!50001 DROP TABLE IF EXISTS `viewjcbmonthkdpx`*/;
/*!50001 DROP VIEW IF EXISTS `viewjcbmonthkdpx`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewjcbmonthkdpx` AS select `jc_bmonthkd`.`pointid` AS `pointid`,`jc_bmonthkd`.`id` AS `id`,`jc_bmonthkd`.`fromtype` AS `fromtype`,`jc_bmonthkd`.`kzk` AS `kzk`,`jc_bmonthkd`.`kdid` AS `kdid`,`jc_bmonthkd`.`state` AS `state`,`jc_bmonthkd`.`point` AS `point`,`jc_bmonthkd`.`toid` AS `toid`,`jc_bmonthkd`.`kdidpoint` AS `kdidpoint`,`jc_bmonthkd`.`type` AS `type`,`jc_bmonthkd`.`stime` AS `stime`,`jc_bmonthkd`.`etime` AS `etime`,`jc_bmonthkd`.`ssz` AS `ssz`,`jc_bmonthkd`.`zdz` AS `zdz`,`jc_bmonthkd`.`pjz` AS `pjz`,`jc_bmonthkd`.`zdzs` AS `zdzs`,`jc_bmonthkd`.`cs` AS `cs`,`jc_bmonthkd`.`bz1` AS `bz1`,`jc_bmonthkd`.`bz2` AS `bz2` from `jc_bmonthkd` order by `jc_bmonthkd`.`point`,`jc_bmonthkd`.`stime` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewjcbmonthpx`
--

/*!50001 DROP TABLE IF EXISTS `viewjcbmonthpx`*/;
/*!50001 DROP VIEW IF EXISTS `viewjcbmonthpx`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewjcbmonthpx` AS select `jc_bmonth`.`id` AS `id`,`jc_bmonth`.`pointid` AS `pointid`,`jc_bmonth`.`fzh` AS `fzh`,`jc_bmonth`.`kh` AS `kh`,`jc_bmonth`.`devid` AS `devid`,`jc_bmonth`.`wzid` AS `wzid`,`jc_bmonth`.`point` AS `point`,`jc_bmonth`.`type` AS `type`,`jc_bmonth`.`state` AS `state`,`jc_bmonth`.`stime` AS `stime`,`jc_bmonth`.`etime` AS `etime`,`jc_bmonth`.`ssz` AS `ssz`,(case when (`jc_bmonth`.`zdzs` = '1900-01-01 00:00:00') then '-' else `jc_bmonth`.`zdz` end) AS `zdz`,(case when (`jc_bmonth`.`zdzs` = '1900-01-01 00:00:00') then '-' else `jc_bmonth`.`pjz` end) AS `pjz`,(case when (`jc_bmonth`.`zdzs` = '1900-01-01 00:00:00') then '-' else `jc_bmonth`.`zdzs` end) AS `zdzs`,`jc_bmonth`.`cs` AS `cs`,`jc_bmonth`.`bz1` AS `bz1`,`jc_bmonth`.`bz2` AS `bz2`,`jc_bmonth`.`kzk` AS `kzk`,`jc_bmonth`.`upflag` AS `upflag`,`jc_bmonth`.`kdid` AS `kdid`,`jc_bmonth`.`isalarm` AS `isalarm` from `jc_bmonth` order by `jc_bmonth`.`point`,`jc_bmonth`.`stime` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewjcmb`
--

/*!50001 DROP TABLE IF EXISTS `viewjcmb`*/;
/*!50001 DROP VIEW IF EXISTS `viewjcmb`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewjcmb` AS select `kj_multiplehistory201901`.`ID` AS `id`,`kj_multiplehistory201901`.`pointID` AS `pointid`,`kj_multiplehistory201901`.`fzh` AS `fzh`,`kj_multiplehistory201901`.`kh` AS `kh`,`kj_multiplehistory201901`.`dzh` AS `dzh`,`kj_multiplehistory201901`.`devid` AS `devid`,`kj_multiplehistory201901`.`wzid` AS `wzid`,`kj_multiplehistory201901`.`point` AS `point`,`kj_multiplehistory201901`.`type` AS `type`,`kj_multiplehistory201901`.`bstj` AS `bstj`,`kj_multiplehistory201901`.`bsz` AS `bsz`,`kj_multiplehistory201901`.`stime` AS `stime`,`kj_multiplehistory201901`.`etime` AS `etime`,`kj_multiplehistory201901`.`ssz` AS `ssz`,`kj_multiplehistory201901`.`zdz` AS `zdz`,`kj_multiplehistory201901`.`pjz` AS `pjz`,`kj_multiplehistory201901`.`zdzs` AS `zdzs`,`kj_multiplehistory201901`.`Bz1` AS `bz1`,`kj_multiplehistory201901`.`Bz2` AS `bz2`,`kj_multiplehistory201901`.`Bz3` AS `bz3`,`kj_multiplehistory201901`.`upflag` AS `upflag` from `kj_multiplehistory201901` where ((`kj_multiplehistory201901`.`stime` between '2017-11-18 00:00:00' and '2017-11-18 23:59:00') or (`kj_multiplehistory201901`.`etime` between '2017-11-18 00:00:00' and '2017-11-18 23:59:00')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewjksbgzdayreport`
--

/*!50001 DROP TABLE IF EXISTS `viewjksbgzdayreport`*/;
/*!50001 DROP VIEW IF EXISTS `viewjksbgzdayreport`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewjksbgzdayreport` AS select `view_6montha`.`PointID` AS `pointid`,`view_6montha`.`fzh` AS `fzh`,`view_6montha`.`kh` AS `kh`,`view_6montha`.`devid` AS `devid`,`view_6montha`.`wzid` AS `wzid`,`view_6montha`.`point` AS `point`,`view_6montha`.`type` AS `type`,`jc_bmonth`.`stime` AS `stime`,`jc_bmonth`.`etime` AS `etime`,timediff(`jc_bmonth`.`etime`,`jc_bmonth`.`stime`) AS `cursumtime`,`jc_bmonth`.`ssz` AS `ssz`,`jc_bmonth`.`zdz` AS `zdz`,`jc_bmonth`.`pjz` AS `pjz`,`jc_bmonth`.`zdzs` AS `zdzs`,`jc_bmonth`.`cs` AS `cs`,`jc_bmonth`.`bz1` AS `bz1`,`jc_bmonth`.`bz2` AS `bz2`,`jc_bmonth`.`upflag` AS `upflag`,`jc_bmonth`.`remark` AS `remark`,concat(`view_6montha`.`fzh`,`view_6montha`.`kh`,`view_6montha`.`devid`,`view_6montha`.`wzid`) AS `bid`,concat(`view_6montha`.`fzh`,`view_6montha`.`kh`,`view_6montha`.`devid`,`view_6montha`.`wzid`) AS `bida`,now() AS `datsearch`,ifnull(`view_6montha`.`sumcount`,0) AS `sumcount`,ifnull(`view_6montha`.`sumtime`,'00:00:00') AS `sumtime` from (`view_6montha` left join `jc_bmonth` on(((`view_6montha`.`PointID` = `jc_bmonth`.`pointid`) and (`view_6montha`.`type` = `jc_bmonth`.`type`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewkdstatereport`
--

/*!50001 DROP TABLE IF EXISTS `viewkdstatereport`*/;
/*!50001 DROP VIEW IF EXISTS `viewkdstatereport`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewkdstatereport` AS select `viewjc_mdef`.`fzh` AS `fzh`,`viewjc_mdef`.`kh` AS `kh`,`viewjc_mdef`.`devid` AS `devid`,`viewjc_mdef`.`wzid` AS `wzid`,`viewjc_mdef`.`point` AS `point`,`viewjc_kmonth`.`type` AS `type`,`viewjc_kmonth`.`state` AS `state`,`viewjc_kmonth`.`ssz` AS `ssz`,`viewjc_kmonth`.`zdz` AS `zdz`,`viewjc_kmonth`.`pjz` AS `pjz`,`viewjc_kmonth`.`zdzs` AS `zdzsa`,(case `viewjc_kmonth`.`zdzs` when '1900-01-01 00:00:00' then '' else `viewjc_kmonth`.`zdzs` end) AS `zdzs`,`viewjc_kmonth`.`cs` AS `cs`,`viewjc_kmonth`.`bz1` AS `bz1`,`viewjc_kmonth`.`bz2` AS `bz2`,`viewjc_kmonth`.`kzk` AS `kzk`,`viewjc_kmonth`.`kdid` AS `kdid`,ifnull(`kj_deviceaddress`.`wz`,'无控制区域') AS `wz`,`viewjc_kmonth`.`pid` AS `pid`,`viewjc_mdef`.`bid` AS `bid`,`viewjc_mdef`.`bid` AS `bida`,`viewjc_mdef`.`bid` AS `bidb`,`viewjc_mdef`.`bid` AS `bidc`,now() AS `datsearch`,`viewjc_kmonth`.`stime` AS `kdstime`,`viewjc_kmonth`.`etime` AS `kdetime`,`viewjc_kmonth`.`cursumtime` AS `kdcursumtime`,`viewjc_kmonth`.`toid` AS `toid`,`viewjc_kmonth`.`pid` AS `kdpid`,`viewjc_kmonth`.`ssz` AS `kdssz`,(case when (ifnull(`kj_deviceaddress`.`wz`,'') = '') then '' when (length(`viewjc_kmonth`.`pid`) > 0) then `viewjc_kmonth`.`ssz` else '馈电正常' end) AS `kdstate`,ifnull(`a`.`sumcount`,0) AS `kdsumcount`,ifnull(`a`.`sumtime`,0) AS `kdsumtme`,ifnull(`b`.`sumcount`,0) AS `kdsumcountfdsb`,ifnull(`b`.`sumtime`,0) AS `kdsumtmefdsb` from (((((`viewjc_mdef` left join `viewjc_kmonth` on((`viewjc_mdef`.`pointid` = `viewjc_kmonth`.`PointID`))) left join `kj_devicedefinfo` on(((`kj_devicedefinfo`.`activity` = 1) and (`viewjc_kmonth`.`kdidpoint` = `kj_devicedefinfo`.`point`)))) left join `kj_deviceaddress` on((`kj_devicedefinfo`.`wzid` = `kj_deviceaddress`.`wzID`))) left join `view_4montha` `a` on((`viewjc_mdef`.`pointid` = `a`.`PointID`))) left join `view_4monthafdsb` `b` on((`viewjc_mdef`.`pointid` = `b`.`PointID`))) order by `viewjc_kmonth`.`stime` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewkglbjdddayreport`
--

/*!50001 DROP TABLE IF EXISTS `viewkglbjdddayreport`*/;
/*!50001 DROP VIEW IF EXISTS `viewkglbjdddayreport`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewkglbjdddayreport` AS select `viewjc_kgstate`.`PointID` AS `Pointid`,`viewjc_kgstate`.`point` AS `point`,`viewjc_kgstate`.`fzh` AS `fzh`,`viewjc_kgstate`.`kh` AS `kh`,`viewjc_kgstate`.`devid` AS `devid`,`viewjc_kgstate`.`wzid` AS `wzid`,`viewjc_dmonthbywzkg`.`type` AS `type`,`viewjc_kgstate`.`state` AS `state`,`viewjc_kgstate`.`statename` AS `statename`,`viewjc_dmonthbywzkg`.`stime` AS `stime`,`viewjc_dmonthbywzkg`.`etime` AS `etime`,`viewjc_dmonthbywzkg`.`cursumtime` AS `cursumtime`,`viewjc_dmonthbywzkg`.`cs` AS `cs`,`viewjc_dmonthbywzkg`.`bz1` AS `bz1`,`viewjc_dmonthbywzkg`.`bz2` AS `bz2`,`viewjc_dmonthbywzkg`.`kzk` AS `kzk`,`viewjc_dmonthbywzkg`.`kdid` AS `kdid`,`viewjc_dmonthbywzkg`.`JCDEFPoint` AS `JCDEFPoint`,ifnull(`viewjc_dmonthbywzkg`.`wz`,'无断电区域') AS `wz`,`viewjc_dmonthbywzkg`.`pid` AS `pid`,`viewjc_dmonthbywzkg`.`remark` AS `remark`,ifnull(`view_3monthabykg`.`sumcount`,0) AS `sumcount`,ifnull(`view_3monthabykg`.`sumtime`,'00:00:00') AS `sumtime`,ifnull(`view_3monthabykgfdsb`.`sumcount`,0) AS `sumcountfdsb`,ifnull(`view_3monthabykgfdsb`.`sumtime`,'00:00:00') AS `sumtimefdsb`,`viewjc_kgstate`.`bid` AS `bid`,`viewjc_kgstate`.`bid` AS `bida`,now() AS `datsearch`,ifnull(`view_4monthabykg`.`sumcount`,0) AS `kdsumcount`,ifnull(`view_4monthabykg`.`sumtime`,'00:00:00') AS `kdsumtime`,`viewjc_kmonthbykg`.`toid` AS `toid`,`viewjc_kmonthbykg`.`kdidpoint` AS `kdidpoint`,`viewjc_kmonthbykg`.`stime` AS `kdstime`,`viewjc_kmonthbykg`.`etime` AS `kdetime`,`viewjc_kmonthbykg`.`cursumtime` AS `kdcursumtime`,(case when (ifnull(`viewjc_dmonthbywzkg`.`wz`,'') = '') then '' when (length(`viewjc_kmonthbykg`.`pid`) > 0) then `viewjc_kmonthbykg`.`ssz` else '断电成功' end) AS `kdstate`,`viewjc_dmonthbywzkg`.`isalarm` AS `isalarm` from ((((`viewjc_kgstate` left join (`viewjc_dmonthbywzkg` left join `viewjc_kmonthbykg` on(((`viewjc_dmonthbywzkg`.`pid` = `viewjc_kmonthbykg`.`pid`) and (`viewjc_dmonthbywzkg`.`JCDEFPoint` = `viewjc_kmonthbykg`.`kdidpoint`)))) on(((`viewjc_kgstate`.`PointID` = `viewjc_dmonthbywzkg`.`PointID`) and (`viewjc_kgstate`.`state` = `viewjc_dmonthbywzkg`.`type`)))) left join `view_4monthabykg` on(((`viewjc_kgstate`.`PointID` = `view_4monthabykg`.`PointID`) and (`viewjc_kgstate`.`state` = `view_4monthabykg`.`type`)))) left join `view_3monthabykg` on(((`viewjc_kgstate`.`PointID` = `view_3monthabykg`.`pointid`) and (`view_3monthabykg`.`isalarm` = 1) and (`viewjc_kgstate`.`state` = `view_3monthabykg`.`type`)))) left join `view_3monthabykgfdsb` on(((`viewjc_kgstate`.`PointID` = `view_3monthabykgfdsb`.`pointid`) and (`viewjc_kgstate`.`state` = `view_3monthabykgfdsb`.`type`)))) where (`viewjc_dmonthbywzkg`.`isalarm` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewkglkddayreport`
--

/*!50001 DROP TABLE IF EXISTS `viewkglkddayreport`*/;
/*!50001 DROP VIEW IF EXISTS `viewkglkddayreport`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewkglkddayreport` AS select `viewjc_mdef`.`fzh` AS `fzh`,`viewjc_mdef`.`kh` AS `kh`,`viewjc_mdef`.`devid` AS `devid`,`viewjc_mdef`.`wzid` AS `wzid`,`viewjc_mdef`.`point` AS `point`,`viewjc_dmonthbywzkg`.`type` AS `type`,`viewjc_dmonthbywzkg`.`ssz` AS `ssz`,`viewjc_dmonthbywzkg`.`zdz` AS `zdz`,`viewjc_dmonthbywzkg`.`pjz` AS `pjz`,`viewjc_dmonthbywzkg`.`zdzs` AS `zdzs`,`viewjc_dmonthbywzkg`.`cs` AS `cs`,`viewjc_dmonthbywzkg`.`bz1` AS `bz1`,`viewjc_dmonthbywzkg`.`bz2` AS `bz2`,`viewjc_dmonthbywzkg`.`kzk` AS `kzk`,`viewjc_dmonthbywzkg`.`kdid` AS `kdid`,`viewjc_dmonthbywzkg`.`JCDEFPoint` AS `JCDEFPoint`,ifnull(`viewjc_dmonthbywzkg`.`wz`,'无控制区域') AS `wz`,`viewjc_dmonthbywzkg`.`pid` AS `pid`,ifnull(`view_3monthabykg1`.`sumcount`,0) AS `sumcount`,ifnull(`view_3monthabykg1`.`sumtime`,'00:00:00') AS `sumtime`,`viewjc_mdef`.`pointid` AS `bid`,`viewjc_mdef`.`pointid` AS `bida`,now() AS `datsearch`,(case when (ifnull(`viewjc_dmonthbywzkg`.`wz`,'') = '') then '' when (length(`viewjc_kmonthbykg`.`pid`) > 0) then `viewjc_kmonthbykg`.`ssz` else '馈电正常' end) AS `kdstate`,`viewjc_kmonthbykg`.`stime` AS `kdstime`,`viewjc_kmonthbykg`.`etime` AS `kdetime`,`viewjc_kmonthbykg`.`cursumtime` AS `kdcursumtime`,ifnull(`view_4monthabykg1`.`sumcount`,0) AS `kdsumcount`,ifnull(`view_4monthabykg1`.`sumtime`,'00:00:00') AS `kdsumtime`,ifnull(`view_4monthabykg1fdsb`.`sumcount`,0) AS `kdsumcountfdsb`,ifnull(`view_4monthabykg1fdsb`.`sumtime`,'00:00:00') AS `kdsumtimefdsb`,`viewjc_kmonthbykg`.`toid` AS `toid` from ((((`viewjc_mdef` left join `view_4monthabykg1` on((`viewjc_mdef`.`pointid` = `view_4monthabykg1`.`PointID`))) left join `view_4monthabykg1fdsb` on((`viewjc_mdef`.`pointid` = `view_4monthabykg1fdsb`.`PointID`))) left join `view_3monthabykg1` on((`viewjc_mdef`.`pointid` = `view_3monthabykg1`.`pointid`))) left join (`viewjc_dmonthbywzkg` left join `viewjc_kmonthbykg` on(((`viewjc_dmonthbywzkg`.`pid` = `viewjc_kmonthbykg`.`pid`) and (`viewjc_dmonthbywzkg`.`JCDEFPoint` = `viewjc_kmonthbykg`.`kdidpoint`)))) on(((`viewjc_mdef`.`pointid` = `viewjc_dmonthbywzkg`.`PointID`) and (length(`viewjc_dmonthbywzkg`.`kdid`) > 0)))) where (`viewjc_mdef`.`point` like '%d%') order by `viewjc_mdef`.`pointid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewlinkagehistory`
--

/*!50001 DROP TABLE IF EXISTS `viewlinkagehistory`*/;
/*!50001 DROP VIEW IF EXISTS `viewlinkagehistory`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewlinkagehistory` AS select `a`.`Id` AS `Id`,`a`.`SysEmergencyLinkageId` AS `SysEmergencyLinkageId`,`a`.`StartTime` AS `StartTime`,`a`.`EndTime` AS `EndTime`,`a`.`IsForceEnd` AS `IsForceEnd`,`a`.`EndPerson` AS `EndPerson`,`a`.`By1` AS `By1`,`a`.`By2` AS `By2`,`a`.`By3` AS `By3`,`a`.`By4` AS `By4`,`a`.`By5` AS `By5`,`h`.`Name` AS `LinkageName`,`i`.`Name` AS `BigDataAnalyzeName`,`c`.`pointid` AS `pointid`,`c`.`point` AS `point`,`d`.`UserName` AS `UserName`,`f`.`wz` AS `wz`,`g`.`name` AS `DevName`,`e`.`strEnumDisplay` AS `DataStateText`,now() AS `datsearch`,(case `a`.`IsForceEnd` when 1 then '是' when 0 then '否' end) AS `IsForceEndText` from ((((((((`kj_emergencylinkhistory` `a` left join `kj_sysemergencylinkage` `h` on((`a`.`SysEmergencyLinkageId` = `h`.`Id`))) left join `kj_largedataanalysisconfig` `i` on((`h`.`MasterModelId` = `i`.`Id`))) left join `kj_emergencylinkagehistorymasterpointass` `b` on((`a`.`Id` = `b`.`EmergencyLinkHistoryId`))) left join `viewjc_mdef` `c` on((`b`.`PointId` = `c`.`pointid`))) left join `kj_deviceaddress` `f` on((`c`.`wzid` = `f`.`wzID`))) left join `kj_devicetype` `g` on((`c`.`devid` = `g`.`devid`))) left join `bft_user` `d` on((`a`.`EndPerson` = `d`.`UserID`))) left join `bft_enumcode` `e` on(((`b`.`DataState` = `e`.`lngEnumValue`) and (`e`.`EnumTypeID` = 4)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewmcrunlogreport`
--

/*!50001 DROP TABLE IF EXISTS `viewmcrunlogreport`*/;
/*!50001 DROP VIEW IF EXISTS `viewmcrunlogreport`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewmcrunlogreport` AS select `jc_mcmonth`.`id` AS `ID`,`jc_mcmonth`.`fzh` AS `fzh`,`jc_mcmonth`.`kh` AS `kh`,`jc_mcmonth`.`dzh` AS `dzh`,`jc_mcmonth`.`point` AS `point`,`jc_mcmonth`.`devid` AS `devid`,`jc_mcmonth`.`wzid` AS `wzid`,`jc_mcmonth`.`timer` AS `timer`,`jc_mcmonth`.`ssz` AS `ssz`,`jc_mcmonth`.`upflag` AS `upflag`,`jc_mcmonth`.`type` AS `type`,`jc_mcmonth`.`state` AS `state`,now() AS `datsearch` from (`jc_mcmonth` left join `viewjc_mdef` on((`jc_mcmonth`.`pointid` = `viewjc_mdef`.`pointid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewmllbjddreport`
--

/*!50001 DROP TABLE IF EXISTS `viewmllbjddreport`*/;
/*!50001 DROP VIEW IF EXISTS `viewmllbjddreport`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewmllbjddreport` AS select `viewjc_bmonth`.`fzh` AS `fzh`,`viewjc_bmonth`.`kh` AS `kh`,`viewjc_bmonth`.`devid` AS `devid`,`viewjc_bmonth`.`wzid` AS `wzid`,`viewjc_bmonth`.`point` AS `point`,`viewjc_bmonth`.`type` AS `type`,`viewjc_bmonth`.`state` AS `state`,`viewjc_bmonth`.`stime` AS `stime`,`viewjc_bmonth`.`etime` AS `etime`,`viewjc_bmonth`.`cursumtime` AS `cursumtime`,`viewjc_bmonth`.`ssz` AS `ssz`,`viewjc_bmonth`.`zdz` AS `zdz`,`viewjc_bmonth`.`pjz` AS `pjz`,`viewjc_bmonth`.`zdzs` AS `zdzs`,`viewjc_bmonth`.`cs` AS `cs`,`viewjc_bmonth`.`kzk` AS `kzk`,`viewjc_bmonth`.`bid` AS `bid`,`viewjc_bmonth`.`kdid` AS `kdid`,`viewjc_bmonth`.`datsearch` AS `datsearch`,`viewjc_bmonth`.`typename` AS `typename`,`viewjc_bmonth`.`sumcount` AS `sumcount`,`viewjc_bmonth`.`sumtime` AS `sumtime` from `viewjc_bmonth` union all select `viewjc_dmonth`.`fzh` AS `fzh`,`viewjc_dmonth`.`kh` AS `kh`,`viewjc_dmonth`.`devid` AS `devid`,`viewjc_dmonth`.`wzid` AS `wzid`,`viewjc_dmonth`.`point` AS `point`,`viewjc_dmonth`.`type` AS `type`,`viewjc_dmonth`.`state` AS `state`,`viewjc_dmonth`.`stime` AS `stime`,`viewjc_dmonth`.`etime` AS `etime`,`viewjc_dmonth`.`cursumtime` AS `cursumtime`,`viewjc_dmonth`.`ssz` AS `ssz`,`viewjc_dmonth`.`zdz` AS `zdz`,`viewjc_dmonth`.`pjz` AS `pjz`,`viewjc_dmonth`.`zdzs` AS `zdzs`,`viewjc_dmonth`.`cs` AS `cs`,`viewjc_dmonth`.`kzk` AS `kzk`,`viewjc_dmonth`.`bid` AS `bid`,`viewjc_dmonth`.`kdid` AS `kdid`,`viewjc_dmonth`.`datsearch` AS `datsearch`,`viewjc_dmonth`.`typename` AS `typename`,`viewjc_dmonth`.`sumcount` AS `sumcount`,`viewjc_dmonth`.`sumtime` AS `sumtime` from `viewjc_dmonth` union all select `viewjc_kmonth`.`fzh` AS `fzh`,`viewjc_kmonth`.`kh` AS `kh`,`viewjc_kmonth`.`devid` AS `devid`,`viewjc_kmonth`.`wzid` AS `wzid`,`viewjc_kmonth`.`point` AS `point`,`viewjc_kmonth`.`type` AS `type`,`viewjc_kmonth`.`state` AS `state`,`viewjc_kmonth`.`stime` AS `stime`,`viewjc_kmonth`.`etime` AS `etime`,`viewjc_kmonth`.`cursumtime` AS `cursumtime`,`viewjc_kmonth`.`ssz` AS `ssz`,`viewjc_kmonth`.`zdz` AS `zdz`,`viewjc_kmonth`.`pjz` AS `pjz`,`viewjc_kmonth`.`zdzs` AS `zdzs`,`viewjc_kmonth`.`cs` AS `cs`,`viewjc_kmonth`.`kzk` AS `kzk`,`viewjc_kmonth`.`bid` AS `bid`,`viewjc_kmonth`.`kdid` AS `kdid`,`viewjc_kmonth`.`datsearch` AS `datsearch`,`viewjc_kmonth`.`typename` AS `typename`,`viewjc_kmonth`.`sumcount` AS `sumcount`,`viewjc_kmonth`.`sumtime` AS `sumtime` from `viewjc_kmonth` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewmlldayreport`
--

/*!50001 DROP TABLE IF EXISTS `viewmlldayreport`*/;
/*!50001 DROP VIEW IF EXISTS `viewmlldayreport`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewmlldayreport` AS select `viewjc_mdef`.`fzh` AS `fzh`,`viewjc_mdef`.`kh` AS `kh`,`viewjc_mdef`.`devid` AS `devid`,`viewjc_mdef`.`wzid` AS `wzid`,`viewjc_mdef`.`point` AS `point`,`view_1month`.`zdz` AS `zdz`,`view_1month`.`zxz` AS `zxz`,`view_1month`.`pjz` AS `pjz`,`view_1month`.`zdzs` AS `zdzs`,`view_1month`.`zxzs` AS `zxzs`,12345 AS `state`,ifnull(`view_2montha`.`sumcount`,0) AS `sumcountbybj`,ifnull(`view_2montha`.`sumtime`,'00:00:00') AS `sumtimebybj`,ifnull(`view_3montha`.`sumcount`,0) AS `sumcountbydd`,ifnull(`view_3montha`.`sumtime`,'00:00:00') AS `sumtimebydd`,ifnull(`view_4montha`.`sumcount`,0) AS `sumcountbykd`,ifnull(`view_4montha`.`sumtime`,'00:00:00') AS `sumtimebykd`,ifnull(`b`.`sumcount`,0) AS `sumcountbykdfdsb`,ifnull(`b`.`sumtime`,'00:00:00') AS `sumtimebykdfdsb`,ifnull(`a`.`sumcount`,0) AS `sumcountbygz`,ifnull(`a`.`sumtime`,'00:00:00') AS `sumtimebygz`,now() AS `datsearch`,`viewjc_mdef`.`bid` AS `bid`,`viewjc_mdef`.`bid` AS `bida` from ((((((`viewjc_mdef` left join `view_4montha` on((`viewjc_mdef`.`pointid` = `view_4montha`.`PointID`))) left join `view_4monthafdsb` `b` on((`viewjc_mdef`.`pointid` = `b`.`PointID`))) left join `view_3montha` on((`viewjc_mdef`.`pointid` = `view_3montha`.`pointid`))) left join `view_2montha` on((`viewjc_mdef`.`pointid` = `view_2montha`.`Pointid`))) left join `view_1month` on((`viewjc_mdef`.`pointid` = `view_1month`.`pointid`))) left join `view_6montha` `a` on((`viewjc_mdef`.`pointid` = `a`.`PointID`))) where (`viewjc_mdef`.`point` like '%a%') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewmlldddayreport`
--

/*!50001 DROP TABLE IF EXISTS `viewmlldddayreport`*/;
/*!50001 DROP VIEW IF EXISTS `viewmlldddayreport`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewmlldddayreport` AS select `viewjc_mdef`.`pointid` AS `pointid`,`viewjc_mdef`.`fzh` AS `fzh`,`viewjc_mdef`.`kh` AS `kh`,`viewjc_mdef`.`devid` AS `devid`,`viewjc_mdef`.`wzid` AS `wzid`,`viewjc_mdef`.`point` AS `point`,`viewjc_dmonthbywz`.`type` AS `type`,`viewjc_dmonthbywz`.`state` AS `state`,`viewjc_dmonthbywz`.`stime` AS `stime`,`viewjc_dmonthbywz`.`etime` AS `etime`,`viewjc_dmonthbywz`.`cursumtime` AS `cursumtime`,`viewjc_dmonthbywz`.`ssz` AS `ssz`,(case `viewjc_dmonthbywz`.`zdzs` when '1900-01-01 00:00:00' then '-' else `viewjc_dmonthbywz`.`zdz` end) AS `zdz`,(case `viewjc_dmonthbywz`.`zdzs` when '1900-01-01 00:00:00' then '-' else `viewjc_dmonthbywz`.`pjz` end) AS `pjz`,`viewjc_dmonthbywz`.`zdzs` AS `zdzsa`,(case `viewjc_dmonthbywz`.`zdzs` when '1900-01-01 00:00:00' then '-' else `viewjc_dmonthbywz`.`zdzs` end) AS `zdzs`,`viewjc_dmonthbywz`.`cs` AS `cs`,`viewjc_dmonthbywz`.`bz1` AS `bz1`,`viewjc_dmonthbywz`.`bz2` AS `bz2`,`viewjc_dmonthbywz`.`kzk` AS `kzk`,`viewjc_dmonthbywz`.`kdid` AS `kdid`,`viewjc_dmonthbywz`.`JCDEFPoint` AS `JCDEFPoint`,ifnull(`viewjc_dmonthbywz`.`wz`,'无断电区域') AS `wz`,`viewjc_dmonthbywz`.`pid` AS `pid`,`viewjc_dmonthbywz`.`remark` AS `remark`,`viewjc_mdef`.`bid` AS `bid`,`viewjc_mdef`.`bid` AS `bida`,`viewjc_mdef`.`bid` AS `bidb`,`viewjc_mdef`.`bid` AS `bidc`,now() AS `datsearch`,`jc_bmonthkd`.`stime` AS `kdstime`,`jc_bmonthkd`.`etime` AS `kdetime`,timediff(`jc_bmonthkd`.`etime`,`jc_bmonthkd`.`stime`) AS `kdcursumtime`,`jc_bmonthkd`.`toid` AS `toid`,`jc_bmonthkd`.`id` AS `kdpid`,`jc_bmonthkd`.`ssz` AS `kdssz`,(case when (ifnull(`view_3montha`.`sumcount`,0) = 0) then '' when (ifnull(`viewjc_dmonthbywz`.`wz`,'') = '') then '' when (length(`jc_bmonthkd`.`id`) > 0) then `jc_bmonthkd`.`ssz` else '断电成功' end) AS `kdstate` from ((`viewjc_mdef` left join (`viewjc_dmonthbywz` left join `jc_bmonthkd` on(((`viewjc_dmonthbywz`.`pid` = `jc_bmonthkd`.`id`) and (`viewjc_dmonthbywz`.`JCDEFPoint` = `jc_bmonthkd`.`kdidpoint`)))) on((`viewjc_mdef`.`pointid` = `viewjc_dmonthbywz`.`PointID`))) left join `view_3montha` on((`viewjc_mdef`.`pointid` = `view_3montha`.`pointid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewmlltjzreport`
--

/*!50001 DROP TABLE IF EXISTS `viewmlltjzreport`*/;
/*!50001 DROP VIEW IF EXISTS `viewmlltjzreport`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewmlltjzreport` AS select `jc_mmonth`.`id` AS `id`,`jc_mmonth`.`pointid` AS `pointid`,`jc_mmonth`.`fzh` AS `fzh`,`jc_mmonth`.`kh` AS `kh`,`jc_mmonth`.`devid` AS `devid`,`jc_mmonth`.`wzid` AS `wzid`,`jc_mmonth`.`state` AS `state`,`jc_mmonth`.`zdz` AS `zdz`,round(`jc_mmonth`.`pjz`,2) AS `pjz`,`jc_mmonth`.`zxz` AS `zxz`,`jc_mmonth`.`ssz` AS `ssz`,`jc_mmonth`.`zdzs` AS `zdzs`,`jc_mmonth`.`zxzs` AS `zxzs`,`jc_mmonth`.`sj` AS `sj`,`jc_mmonth`.`upflag` AS `upflag`,`jc_mmonth`.`point` AS `point`,date_format(`jc_mmonth`.`timer`,'%Y-%m-%d %H') AS `sjhour`,`jc_mmonth`.`timer` AS `timer`,(`jc_mmonth`.`timer` + interval 5 minute) AS `timerend`,concat(convert(date_format(`jc_mmonth`.`timer`,'%Y-%m-%d %H') using utf8mb4),':00:00') AS `timer1`,concat(convert(date_format(`jc_mmonth`.`timer`,'%Y-%m-%d %H') using utf8),':59:59') AS `timerenda`,`jc_mmonth`.`pointid` AS `bid`,now() AS `datsearch` from `jc_mmonth` order by `jc_mmonth`.`point`,`jc_mmonth`.`timer`,date_format(`jc_mmonth`.`timer`,'%Y-%m-%d %H') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewmnlbjddmonth`
--

/*!50001 DROP TABLE IF EXISTS `viewmnlbjddmonth`*/;
/*!50001 DROP VIEW IF EXISTS `viewmnlbjddmonth`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewmnlbjddmonth` AS select `bjinfo`.`PointID` AS `PointID`,`bjinfo`.`PointID` AS `PointID2`,`bjinfo`.`point` AS `point`,`bjinfo`.`bjcs` AS `bjcs`,`bjinfo`.`bjstarttime` AS `bjstarttime`,`bjinfo`.`bjendtime` AS `bjendtime`,`bjinfo`.`bjpjzzdzzdzs` AS `bjpjzzdzzdzs`,`bjinfo`.`bjljsc` AS `bjljsc`,`bjinfo`.`bjljscall` AS `bjljscall`,`bjinfo`.`bjcuoshi` AS `bjcuoshi`,`ddinfo`.`ddcs` AS `ddcs`,`ddinfo`.`ddstarttime` AS `ddstarttime`,`ddinfo`.`ddendtime` AS `ddendtime`,`ddinfo`.`ddstartendtime` AS `ddstartendtime`,`ddinfo`.`ddpjzzdzzdzs` AS `ddpjzzdzzdzs`,`ddinfo`.`ddljsc` AS `ddljsc`,`ddinfo`.`ddljscall` AS `ddljscall`,`ddinfo`.`ddcuoshi` AS `ddcuoshi`,`kdinfo`.`kdcs` AS `kdcs`,`kdinfo`.`kdstarttime` AS `kdstarttime`,`kdinfo`.`kdendtime` AS `kdendtime`,`kdinfo`.`kdljsc` AS `kdljsc`,`kdinfo`.`kdljscall` AS `kdljscall`,`kdfdsbinfo`.`kdcs` AS `kdfdsbcs`,`kdfdsbinfo`.`kdstarttime` AS `kdfdsbstarttime`,`kdfdsbinfo`.`kdendtime` AS `kdfdsbendtime`,`kdfdsbinfo`.`kdljsc` AS `kdfdsbljsc`,`kdfdsbinfo`.`kdljscall` AS `kdfdsbljscall`,`gzinfo`.`gzcs` AS `gzcs`,`gzinfo`.`gzstarttime` AS `gzstarttime`,`gzinfo`.`gzendtime` AS `gzendtime`,`gzinfo`.`gzljsc` AS `gzljsc`,`gzinfo`.`gzljscall` AS `gzljscall`,`gzinfo`.`gzcuoshi` AS `gzcuoshi`,`j`.`wz` AS `wz`,`k`.`devid` AS `devid`,`k`.`name` AS `devname`,`a`.`zdz` AS `zdz`,`a`.`zdzs` AS `zdzs`,`a`.`zxz` AS `zxz`,`a`.`zxzs` AS `zxzs`,`a`.`pjz` AS `pjz`,now() AS `datsearch` from ((((((((`viewmnlbjhbh` `bjinfo` left join `viewmnlddhbh` `ddinfo` on((`bjinfo`.`PointID` = `ddinfo`.`PointID`))) left join `viewmnlkdhbh` `kdinfo` on((`bjinfo`.`PointID` = `kdinfo`.`PointID`))) left join `viewmnlkdhbhfdsb` `kdfdsbinfo` on((`bjinfo`.`PointID` = `kdfdsbinfo`.`PointID`))) left join `viewmnlgzhbh` `gzinfo` on((`bjinfo`.`PointID` = `gzinfo`.`PointID`))) left join `kj_devicedefinfo` `i` on((`bjinfo`.`PointID` = `i`.`PointID`))) left join `kj_deviceaddress` `j` on((`i`.`wzid` = `j`.`wzID`))) left join `kj_devicetype` `k` on((`i`.`devid` = `k`.`devid`))) left join `view_1month` `a` on((`bjinfo`.`PointID` = `a`.`pointid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewmnlbjhbh`
--

/*!50001 DROP TABLE IF EXISTS `viewmnlbjhbh`*/;
/*!50001 DROP VIEW IF EXISTS `viewmnlbjhbh`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewmnlbjhbh` AS select `a`.`pointid` AS `PointID`,`a`.`point` AS `point`,count(`b`.`stime`) AS `bjcs`,group_concat(`b`.`stime` separator '
') AS `bjstarttime`,group_concat(`b`.`etime` separator '
') AS `bjendtime`,group_concat(concat(`b`.`pjz`,'/',`b`.`zdz`,'/',`b`.`zdzs`) separator '
') AS `bjpjzzdzzdzs`,group_concat(timediff(`b`.`etime`,`b`.`stime`) separator '
') AS `bjljsc`,sec_to_time(sum(timestampdiff(SECOND,`b`.`stime`,`b`.`etime`))) AS `bjljscall`,group_concat((case when ((`b`.`cs` is not null) and (`b`.`cs` <> '')) then concat(`b`.`cs`,',',`b`.`bz2`,';') else '' end) separator '') AS `bjcuoshi` from (`viewjc_mdef` `a` left join `viewjcbmonthpx` `b` on(((`a`.`pointid` = `b`.`pointid`) and ((`b`.`type` = 10) or (`b`.`type` = 16))))) where (`a`.`point` like '___A%') group by `a`.`pointid`,`a`.`point` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewmnlbjmaxavg`
--

/*!50001 DROP TABLE IF EXISTS `viewmnlbjmaxavg`*/;
/*!50001 DROP VIEW IF EXISTS `viewmnlbjmaxavg`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewmnlbjmaxavg` AS select `a`.`pointid` AS `pointid`,`a`.`point` AS `point`,max(`a`.`zdz`) AS `zdz`,avg(`a`.`pjz`) AS `pjz` from `jc_bmonth` `a` where ((`a`.`point` like '___A%') and (`a`.`type` in (10,16))) group by `a`.`pointid`,`a`.`point` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewmnlbjmaxavgmaxtime`
--

/*!50001 DROP TABLE IF EXISTS `viewmnlbjmaxavgmaxtime`*/;
/*!50001 DROP VIEW IF EXISTS `viewmnlbjmaxavgmaxtime`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewmnlbjmaxavgmaxtime` AS select `a`.`pointid` AS `pointid`,`a`.`point` AS `point`,(case when ((select `b`.`zdzs` from `jc_bmonth` `b` where ((`b`.`pointid` = `a`.`pointid`) and (`b`.`zdz` = `a`.`zdz`) and (`b`.`type` in (10,16))) limit 1) = '1900-01-01 00:00:00') then '-' else cast(`a`.`zdz` as decimal(8,2)) end) AS `zdz`,(case when ((select `b`.`zdzs` from `jc_bmonth` `b` where ((`b`.`pointid` = `a`.`pointid`) and (`b`.`zdz` = `a`.`zdz`) and (`b`.`type` in (10,16))) limit 1) = '1900-01-01 00:00:00') then '-' else cast(`a`.`pjz` as decimal(8,2)) end) AS `pjz`,(case when ((select `b`.`zdzs` from `jc_bmonth` `b` where ((`b`.`pointid` = `a`.`pointid`) and (`b`.`zdz` = `a`.`zdz`) and (`b`.`type` in (10,16))) limit 1) = '1900-01-01 00:00:00') then '-' else (select `b`.`zdzs` from `jc_bmonth` `b` where ((`b`.`pointid` = `a`.`pointid`) and (`b`.`zdz` = `a`.`zdz`) and (`b`.`type` in (10,16))) limit 1) end) AS `zdzs` from `viewmnlbjmaxavg` `a` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewmnlbsbjmonth`
--

/*!50001 DROP TABLE IF EXISTS `viewmnlbsbjmonth`*/;
/*!50001 DROP VIEW IF EXISTS `viewmnlbsbjmonth`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewmnlbsbjmonth` AS select `viewjcmb`.`id` AS `ID`,`viewjcmb`.`pointid` AS `pointID`,`viewjcmb`.`fzh` AS `fzh`,`viewjcmb`.`kh` AS `kh`,`viewjcmb`.`dzh` AS `dzh`,`viewjcmb`.`devid` AS `devid`,`viewjcmb`.`wzid` AS `wzid`,`viewjcmb`.`point` AS `point`,`viewjcmb`.`type` AS `type`,`viewjcmb`.`bstj` AS `bstj`,`viewjcmb`.`bsz` AS `bsz`,`viewjcmb`.`stime` AS `stime`,`viewjcmb`.`etime` AS `etime`,`viewjcmb`.`ssz` AS `ssz`,`viewjcmb`.`zdz` AS `zdz`,`viewjcmb`.`pjz` AS `pjz`,`viewjcmb`.`zdzs` AS `zdzs`,`viewjcmb`.`bz1` AS `Bz1`,`viewjcmb`.`bz2` AS `Bz2`,`viewjcmb`.`bz3` AS `Bz3`,`viewjcmb`.`upflag` AS `upflag`,`b`.`wz` AS `wz`,`c`.`name` AS `name`,now() AS `datsearch` from ((`viewjcmb` left join `kj_deviceaddress` `b` on((`viewjcmb`.`wzid` = `b`.`wzID`))) left join `kj_devicetype` `c` on((`viewjcmb`.`devid` = `c`.`devid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewmnlbx`
--

/*!50001 DROP TABLE IF EXISTS `viewmnlbx`*/;
/*!50001 DROP VIEW IF EXISTS `viewmnlbx`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewmnlbx` AS select `a`.`id` AS `id`,`a`.`id` AS `ida`,`a`.`pointid` AS `pointid`,`a`.`fzh` AS `fzh`,`a`.`kh` AS `kh`,`a`.`devid` AS `devid`,`a`.`wzid` AS `wzid`,`a`.`point` AS `point`,`a`.`type` AS `type`,`a`.`state` AS `state`,`a`.`stime` AS `stime`,`a`.`etime` AS `etime`,timediff(`a`.`etime`,`a`.`stime`) AS `sumtime`,`a`.`ssz` AS `ssz`,`a`.`zdz` AS `zdz`,`a`.`pjz` AS `pjz`,`a`.`zdzs` AS `zdzs`,`a`.`cs` AS `cs`,`a`.`bz1` AS `bz1`,`a`.`bz2` AS `bz2`,`a`.`kzk` AS `kzk`,`a`.`upflag` AS `upflag`,`a`.`kdid` AS `kdid`,`a`.`isalarm` AS `isalarm`,`c`.`wz` AS `wz`,'馈电正常' AS `kdstate`,now() AS `datsearch` from ((`jc_bmonth` `a` left join `kj_devicedefinfo` `b` on((locate(concat(',',`b`.`point`,','),concat(',',replace(cast(`a`.`kzk` as char charset utf8),'|',','),',')) > 0))) left join `kj_deviceaddress` `c` on((`b`.`wzid` = `c`.`wzID`))) where ((`a`.`state` = 24) and (`a`.`kzk` <> '') and (`a`.`kzk` is not null) and ((`a`.`kdid` = '') or isnull(`a`.`kdid`))) union all (select `a`.`id` AS `id`,`a`.`id` AS `ida`,`a`.`pointid` AS `pointid`,`a`.`zkfzh` AS `fzh`,`a`.`zkkh` AS `kh`,`a`.`zkdevid` AS `devid`,`a`.`zkwzid` AS `wzid`,`a`.`point` AS `point`,`a`.`fromtype` AS `type`,`a`.`state` AS `state`,`a`.`zkstime` AS `stime`,`a`.`zketime` AS `etime`,timediff(`a`.`zketime`,`a`.`zkstime`) AS `sumtime`,`a`.`zkssz` AS `ssz`,`a`.`zkzdz` AS `zdz`,`a`.`zkpjz` AS `pjz`,`a`.`zkzdzs` AS `zdzs`,`a`.`cs` AS `cs`,`a`.`bz1` AS `bz1`,`a`.`bz2` AS `bz2`,`a`.`kzk` AS `kzk`,`a`.`zkupflag` AS `upflag`,`a`.`kdid` AS `kdid`,`a`.`zkisalarm` AS `isalarm`,`e`.`wz` AS `wz`,`a`.`ssz` AS `kdstate`,now() AS `datsearch` from ((`jc_bmonthkd` `a` left join `kj_devicedefinfo` `d` on((`a`.`bkpointid` = `d`.`PointID`))) left join `kj_deviceaddress` `e` on((`d`.`wzid` = `e`.`wzID`))) where (`a`.`state` = 24)) order by `id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewmnldaysavg`
--

/*!50001 DROP TABLE IF EXISTS `viewmnldaysavg`*/;
/*!50001 DROP VIEW IF EXISTS `viewmnldaysavg`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewmnldaysavg` AS select `a`.`pointid` AS `pointid`,`a`.`point` AS `point`,`c`.`wz` AS `wz`,`d`.`name` AS `name`,cast(avg(`b`.`pjz`) as decimal(8,2)) AS `pjz`,max(`b`.`zdz`) AS `zdz`,min(`b`.`zxz`) AS `zxz`,now() AS `datsearch` from (((`viewjc_mdef` `a` join `kj_day` `b` on(((`a`.`pointid` = `b`.`PointID`) and (`b`.`Timer` between '2019-08-05 00:00:00' and '2019-08-05 23:59:59')))) left join `kj_deviceaddress` `c` on((`a`.`wzid` = `c`.`wzID`))) left join `kj_devicetype` `d` on((`a`.`devid` = `d`.`devid`))) group by `a`.`pointid`,`a`.`point` order by `a`.`point` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewmnlddhbh`
--

/*!50001 DROP TABLE IF EXISTS `viewmnlddhbh`*/;
/*!50001 DROP VIEW IF EXISTS `viewmnlddhbh`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewmnlddhbh` AS select `a`.`pointid` AS `PointID`,`a`.`point` AS `point`,count(`b`.`stime`) AS `ddcs`,group_concat(`b`.`stime` separator '
') AS `ddstarttime`,group_concat(`b`.`etime` separator '
') AS `ddendtime`,group_concat(concat(`b`.`stime`,'--',`b`.`etime`) separator '
') AS `ddstartendtime`,group_concat(concat(`b`.`pjz`,'/',`b`.`zdz`,'/',`b`.`zdzs`) separator '
') AS `ddpjzzdzzdzs`,group_concat(timediff(`b`.`etime`,`b`.`stime`) separator '
') AS `ddljsc`,sec_to_time(sum(timestampdiff(SECOND,`b`.`stime`,`b`.`etime`))) AS `ddljscall`,group_concat((case when ((`b`.`cs` is not null) and (`b`.`cs` <> '')) then concat(`b`.`cs`,',',`b`.`bz2`,';') else '' end) separator '') AS `ddcuoshi` from (`viewjc_mdef` `a` left join `viewjcbmonthpx` `b` on(((`a`.`pointid` = `b`.`pointid`) and (`b`.`kzk` <> '') and (`b`.`kzk` is not null)))) where (`a`.`point` like '___A%') group by `a`.`pointid`,`a`.`point` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewmnlddmaxavg`
--

/*!50001 DROP TABLE IF EXISTS `viewmnlddmaxavg`*/;
/*!50001 DROP VIEW IF EXISTS `viewmnlddmaxavg`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewmnlddmaxavg` AS select `a`.`pointid` AS `pointid`,`a`.`point` AS `point`,max(`a`.`zdz`) AS `zdz`,avg(`a`.`pjz`) AS `pjz` from `jc_bmonth` `a` where ((`a`.`point` like '___A%') and (`a`.`type` in (12,18))) group by `a`.`pointid`,`a`.`point` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewmnlddmaxavgmaxtime`
--

/*!50001 DROP TABLE IF EXISTS `viewmnlddmaxavgmaxtime`*/;
/*!50001 DROP VIEW IF EXISTS `viewmnlddmaxavgmaxtime`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewmnlddmaxavgmaxtime` AS select `a`.`pointid` AS `pointid`,`a`.`point` AS `point`,(case when ((select `b`.`zdzs` from `jc_bmonth` `b` where ((`b`.`pointid` = `a`.`pointid`) and (`b`.`zdz` = `a`.`zdz`) and (`b`.`type` in (12,18))) limit 1) = '1900-01-01 00:00:00') then '-' else cast(`a`.`zdz` as decimal(8,2)) end) AS `zdz`,(case when ((select `b`.`zdzs` from `jc_bmonth` `b` where ((`b`.`pointid` = `a`.`pointid`) and (`b`.`zdz` = `a`.`zdz`) and (`b`.`type` in (12,18))) limit 1) = '1900-01-01 00:00:00') then '-' else cast(`a`.`pjz` as decimal(8,2)) end) AS `pjz`,(case when ((select `b`.`zdzs` from `jc_bmonth` `b` where ((`b`.`pointid` = `a`.`pointid`) and (`b`.`zdz` = `a`.`zdz`) and (`b`.`type` in (12,18))) limit 1) = '1900-01-01 00:00:00') then '-' else (select `b`.`zdzs` from `jc_bmonth` `b` where ((`b`.`pointid` = `a`.`pointid`) and (`b`.`zdz` = `a`.`zdz`) and (`b`.`type` in (12,18))) limit 1) end) AS `zdzs` from `viewmnlddmaxavg` `a` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewmnlgzhbh`
--

/*!50001 DROP TABLE IF EXISTS `viewmnlgzhbh`*/;
/*!50001 DROP VIEW IF EXISTS `viewmnlgzhbh`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewmnlgzhbh` AS select `a`.`pointid` AS `PointID`,`a`.`point` AS `point`,count(`b`.`stime`) AS `gzcs`,group_concat(`b`.`stime` separator '
') AS `gzstarttime`,group_concat(`b`.`etime` separator '
') AS `gzendtime`,group_concat(timediff(`b`.`etime`,`b`.`stime`) separator '
') AS `gzljsc`,sec_to_time(sum(timestampdiff(SECOND,`b`.`stime`,`b`.`etime`))) AS `gzljscall`,group_concat((case when ((`b`.`cs` is not null) and (`b`.`cs` <> '')) then concat(`b`.`cs`,',',`b`.`bz2`,';') else '' end) separator '') AS `gzcuoshi` from (`viewjc_mdef` `a` left join `viewjcbmonthpx` `b` on(((`a`.`pointid` = `b`.`pointid`) and (`b`.`type` in (0,1,20,22,23,25,33))))) where (`a`.`point` like '___A%') group by `a`.`pointid`,`a`.`point` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewmnlkdhbh`
--

/*!50001 DROP TABLE IF EXISTS `viewmnlkdhbh`*/;
/*!50001 DROP VIEW IF EXISTS `viewmnlkdhbh`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewmnlkdhbh` AS select `a`.`pointid` AS `PointID`,`a`.`point` AS `point`,count(`b`.`toid`) AS `kdcs`,group_concat(`b`.`stime` separator '
') AS `kdstarttime`,group_concat(`b`.`etime` separator '
') AS `kdendtime`,group_concat(timediff(`b`.`etime`,`b`.`stime`) separator '
') AS `kdljsc`,sec_to_time(sum(timestampdiff(SECOND,`b`.`stime`,`b`.`etime`))) AS `kdljscall` from (`viewjc_mdef` `a` left join `viewjcbmonthkdpx` `b` on((`a`.`pointid` = `b`.`pointid`))) where ((`a`.`point` like '___A%') and (ifnull(`b`.`type`,0) <> 30)) group by `a`.`pointid`,`a`.`point` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewmnlkdhbhfdsb`
--

/*!50001 DROP TABLE IF EXISTS `viewmnlkdhbhfdsb`*/;
/*!50001 DROP VIEW IF EXISTS `viewmnlkdhbhfdsb`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewmnlkdhbhfdsb` AS select `a`.`pointid` AS `PointID`,`a`.`point` AS `point`,count(`b`.`toid`) AS `kdcs`,group_concat(`b`.`stime` separator '
') AS `kdstarttime`,group_concat(`b`.`etime` separator '
') AS `kdendtime`,group_concat(timediff(`b`.`etime`,`b`.`stime`) separator '
') AS `kdljsc`,sec_to_time(sum(timestampdiff(SECOND,`b`.`stime`,`b`.`etime`))) AS `kdljscall` from (`viewjc_mdef` `a` left join `viewjcbmonthkdpx` `b` on((`a`.`pointid` = `b`.`pointid`))) where (`a`.`point` like '___A%') group by `a`.`pointid`,`a`.`point` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewpersoncallhistory`
--

/*!50001 DROP TABLE IF EXISTS `viewpersoncallhistory`*/;
/*!50001 DROP VIEW IF EXISTS `viewpersoncallhistory`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewpersoncallhistory` AS select `viewpersoncallhistorycallequipment`.`id` AS `id`,`viewpersoncallhistorycallequipment`.`hjlx` AS `hjlx`,`viewpersoncallhistorycallequipment`.`bh` AS `bh`,`viewpersoncallhistorycallequipment`.`yid` AS `yid`,`viewpersoncallhistorycallequipment`.`pointid` AS `pointid`,`viewpersoncallhistorycallequipment`.`calltime` AS `calltime`,`viewpersoncallhistorycallequipment`.`tsycs` AS `tsycs`,`viewpersoncallhistorycallequipment`.`state` AS `state`,`viewpersoncallhistorycallequipment`.`type` AS `type`,`viewpersoncallhistorycallequipment`.`card` AS `card`,`viewpersoncallhistorycallequipment`.`username` AS `username`,`viewpersoncallhistorycallequipment`.`ip` AS `ip`,`viewpersoncallhistorycallequipment`.`timer` AS `timer`,`viewpersoncallhistorycallequipment`.`flag` AS `flag`,`viewpersoncallhistorycallequipment`.`sysflag` AS `sysflag`,`viewpersoncallhistorycallequipment`.`upflag` AS `upflag`,`viewpersoncallhistorycallequipment`.`by1` AS `by1`,`viewpersoncallhistorycallequipment`.`by2` AS `by2`,`viewpersoncallhistorycallequipment`.`by3` AS `by3`,`viewpersoncallhistorycallequipment`.`by4` AS `by4`,`viewpersoncallhistorycallequipment`.`by5` AS `by5`,`viewpersoncallhistorycallequipment`.`point` AS `point`,`viewpersoncallhistorycallequipment`.`wz` AS `wz`,`viewpersoncallhistorycallequipment`.`devname` AS `devname`,`viewpersoncallhistorycallequipment`.`callpersonname` AS `callpersonname`,`viewpersoncallhistorycallequipment`.`datsearch` AS `datsearch`,`viewpersoncallhistorycallequipment`.`hjlxtext` AS `hjlxtext`,`viewpersoncallhistorycallequipment`.`statetext` AS `statetext`,`viewpersoncallhistorycallequipment`.`typetext` AS `typetext`,`viewpersoncallhistorycallequipment`.`flagtext` AS `flagtext`,`viewpersoncallhistorycallequipment`.`sysflagtext` AS `sysflagtext`,`viewpersoncallhistorycallequipment`.`callobject` AS `callobject`,`viewpersoncallhistorycallequipment`.`downcalledlist` AS `downcalledlist` from `viewpersoncallhistorycallequipment` union all select `viewpersoncallhistorycallperson`.`id` AS `id`,`viewpersoncallhistorycallperson`.`hjlx` AS `hjlx`,`viewpersoncallhistorycallperson`.`bh` AS `bh`,`viewpersoncallhistorycallperson`.`yid` AS `yid`,`viewpersoncallhistorycallperson`.`pointid` AS `pointid`,`viewpersoncallhistorycallperson`.`calltime` AS `calltime`,`viewpersoncallhistorycallperson`.`tsycs` AS `tsycs`,`viewpersoncallhistorycallperson`.`state` AS `state`,`viewpersoncallhistorycallperson`.`type` AS `type`,`viewpersoncallhistorycallperson`.`card` AS `card`,`viewpersoncallhistorycallperson`.`username` AS `username`,`viewpersoncallhistorycallperson`.`ip` AS `ip`,`viewpersoncallhistorycallperson`.`timer` AS `timer`,`viewpersoncallhistorycallperson`.`flag` AS `flag`,`viewpersoncallhistorycallperson`.`sysflag` AS `sysflag`,`viewpersoncallhistorycallperson`.`upflag` AS `upflag`,`viewpersoncallhistorycallperson`.`by1` AS `by1`,`viewpersoncallhistorycallperson`.`by2` AS `by2`,`viewpersoncallhistorycallperson`.`by3` AS `by3`,`viewpersoncallhistorycallperson`.`by4` AS `by4`,`viewpersoncallhistorycallperson`.`by5` AS `by5`,`viewpersoncallhistorycallperson`.`point` AS `point`,`viewpersoncallhistorycallperson`.`wz` AS `wz`,`viewpersoncallhistorycallperson`.`devname` AS `devname`,`viewpersoncallhistorycallperson`.`callpersonname` AS `callpersonname`,`viewpersoncallhistorycallperson`.`datsearch` AS `datsearch`,`viewpersoncallhistorycallperson`.`hjlxtext` AS `hjlxtext`,`viewpersoncallhistorycallperson`.`statetext` AS `statetext`,`viewpersoncallhistorycallperson`.`typetext` AS `typetext`,`viewpersoncallhistorycallperson`.`flagtext` AS `flagtext`,`viewpersoncallhistorycallperson`.`sysflagtext` AS `sysflagtext`,`viewpersoncallhistorycallperson`.`callobject` AS `callobject`,`viewpersoncallhistorycallperson`.`downcalledlist` AS `downcalledlist` from `viewpersoncallhistorycallperson` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewpersoncallhistorycallequipment`
--

/*!50001 DROP TABLE IF EXISTS `viewpersoncallhistorycallequipment`*/;
/*!50001 DROP VIEW IF EXISTS `viewpersoncallhistorycallequipment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewpersoncallhistorycallequipment` AS select `a`.`Id` AS `id`,`a`.`Hjlx` AS `hjlx`,`a`.`Bh` AS `bh`,`a`.`Yid` AS `yid`,`a`.`PointId` AS `pointid`,`a`.`CallTime` AS `calltime`,`a`.`Tsycs` AS `tsycs`,`a`.`State` AS `state`,`a`.`Type` AS `type`,`a`.`Card` AS `card`,`a`.`Username` AS `username`,`a`.`IP` AS `ip`,`a`.`timer` AS `timer`,`a`.`Flag` AS `flag`,`a`.`SysFlag` AS `sysflag`,`a`.`upflag` AS `upflag`,`a`.`By1` AS `by1`,`a`.`By2` AS `by2`,`a`.`By3` AS `by3`,`a`.`By4` AS `by4`,`a`.`By5` AS `by5`,`b`.`point` AS `point`,`c`.`wz` AS `wz`,`d`.`name` AS `devname`,`e`.`name` AS `callpersonname`,now() AS `datsearch`,(case `a`.`Hjlx` when '0' then '井下呼叫地面' when '1' then '地面呼叫井下' end) AS `hjlxtext`,(case `a`.`State` when 0 then '一般呼叫' when 1 then '紧急呼叫' when 2 then '解除呼叫' end) AS `statetext`,(case `a`.`Type` when 0 then '所有人员呼叫' when 1 then '呼叫指定卡号段' when 2 then '呼叫指定人员' when 3 then '呼叫所有设备' when 4 then '呼叫指定设备' end) AS `typetext`,(case when ((`a`.`Hjlx` = '0') and (`a`.`Flag` = '0')) then '正常' when ((`a`.`Hjlx` = '0') and (`a`.`Flag` = '1')) then '补传' when ((`a`.`Hjlx` = '0') and (`a`.`Flag` = '2')) then '修改' when ((`a`.`Hjlx` = '1') and (`a`.`Flag` = '0')) then '中心站未处理' when ((`a`.`Hjlx` = '1') and (`a`.`Flag` = '1')) then '中心站已处理' end) AS `flagtext`,(case `a`.`SysFlag` when 0 then '人员' when 1 then '机车' end) AS `sysflagtext`,(case `a`.`By2` when 0 then '人员呼叫' when 1 then '设备呼叫' end) AS `callobject`,group_concat(`g`.`point` separator ',') AS `downcalledlist` from ((((((`pe_callhistory201901` `a` left join `pe_devicedefinfo` `b` on((`a`.`PointId` = `b`.`PointID`))) left join `kj_deviceaddress` `c` on((`b`.`wzid` = `c`.`wzID`))) left join `kj_devicetype` `d` on((`b`.`devid` = `d`.`devid`))) left join `pe_personarchive` `e` on((`a`.`Yid` = `e`.`Id`))) left join `pe_callhistorypointdetail201901` `f` on((`a`.`Id` = `f`.`PhjId`))) left join `pe_devicedefinfo` `g` on((`f`.`PointId` = `g`.`PointID`))) where ((`a`.`timer` between '2018-04-11 00:00:00' and '2018-05-26 23:59:59') and (`a`.`Type` = 4)) group by `a`.`Id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewpersoncallhistorycallperson`
--

/*!50001 DROP TABLE IF EXISTS `viewpersoncallhistorycallperson`*/;
/*!50001 DROP VIEW IF EXISTS `viewpersoncallhistorycallperson`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewpersoncallhistorycallperson` AS select `a`.`Id` AS `id`,`a`.`Hjlx` AS `hjlx`,`a`.`Bh` AS `bh`,`a`.`Yid` AS `yid`,`a`.`PointId` AS `pointid`,`a`.`CallTime` AS `calltime`,`a`.`Tsycs` AS `tsycs`,`a`.`State` AS `state`,`a`.`Type` AS `type`,`a`.`Card` AS `card`,`a`.`Username` AS `username`,`a`.`IP` AS `ip`,`a`.`timer` AS `timer`,`a`.`Flag` AS `flag`,`a`.`SysFlag` AS `sysflag`,`a`.`upflag` AS `upflag`,`a`.`By1` AS `by1`,`a`.`By2` AS `by2`,`a`.`By3` AS `by3`,`a`.`By4` AS `by4`,`a`.`By5` AS `by5`,`b`.`point` AS `point`,`c`.`wz` AS `wz`,`d`.`name` AS `devname`,`e`.`name` AS `callpersonname`,now() AS `datsearch`,(case `a`.`Hjlx` when '0' then '井下呼叫地面' when '1' then '地面呼叫井下' end) AS `hjlxtext`,(case `a`.`State` when 0 then '一般呼叫' when 1 then '紧急呼叫' when 2 then '解除呼叫' end) AS `statetext`,(case `a`.`Type` when 0 then '所有人员呼叫' when 1 then '呼叫指定卡号段' when 2 then '呼叫指定人员' when 3 then '呼叫所有设备' when 4 then '呼叫指定设备' end) AS `typetext`,(case when ((`a`.`Hjlx` = '0') and (`a`.`Flag` = '0')) then '正常' when ((`a`.`Hjlx` = '0') and (`a`.`Flag` = '1')) then '补传' when ((`a`.`Hjlx` = '0') and (`a`.`Flag` = '2')) then '修改' when ((`a`.`Hjlx` = '1') and (`a`.`Flag` = '0')) then '中心站未处理' when ((`a`.`Hjlx` = '1') and (`a`.`Flag` = '1')) then '中心站已处理' end) AS `flagtext`,(case `a`.`SysFlag` when 0 then '人员' when 1 then '机车' end) AS `sysflagtext`,(case `a`.`By2` when 0 then '人员呼叫' when 1 then '设备呼叫' end) AS `callobject`,group_concat(`g`.`bh` separator ',') AS `downcalledlist` from ((((((`pe_callhistory201901` `a` left join `pe_devicedefinfo` `b` on((`a`.`PointId` = `b`.`PointID`))) left join `kj_deviceaddress` `c` on((`b`.`wzid` = `c`.`wzID`))) left join `kj_devicetype` `d` on((`b`.`devid` = `d`.`devid`))) left join `pe_personarchive` `e` on((`a`.`Yid` = `e`.`Id`))) left join `pe_callhistorypersondetail201901` `f` on((`a`.`Id` = `f`.`PhjId`))) left join `pe_personarchive` `g` on((`f`.`Yid` = `g`.`Id`))) where ((`a`.`timer` between '2018-04-11 00:00:00' and '2018-05-26 23:59:59') and (`a`.`Type` = 2)) group by `a`.`Id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewpersonequipmentfault`
--

/*!50001 DROP TABLE IF EXISTS `viewpersonequipmentfault`*/;
/*!50001 DROP VIEW IF EXISTS `viewpersonequipmentfault`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewpersonequipmentfault` AS select `a`.`ID` AS `id`,`a`.`pointID` AS `pointid`,`a`.`fzh` AS `fzh`,`a`.`kh` AS `kh`,`a`.`dzh` AS `dzh`,`a`.`devid` AS `devid`,`a`.`wzid` AS `wzid`,`a`.`point` AS `point`,`a`.`type` AS `type`,`a`.`state` AS `state`,`a`.`stime` AS `stime`,`a`.`etime` AS `etime`,`a`.`ssz` AS `ssz`,`a`.`zdz` AS `zdz`,`a`.`pjz` AS `pjz`,`a`.`zdzs` AS `zdzs`,`a`.`cs` AS `cs`,`a`.`kzk` AS `kzk`,`a`.`kdid` AS `kdid`,`a`.`isalarm` AS `isalarm`,`a`.`upflag` AS `upflag`,`a`.`remark` AS `remark`,`a`.`Bz1` AS `bz1`,`a`.`Bz2` AS `bz2`,`a`.`Bz3` AS `bz3`,`a`.`Bz4` AS `bz4`,`a`.`Bz5` AS `bz5`,`c`.`wz` AS `wz`,`d`.`name` AS `name`,`e`.`strEnumDisplay` AS `datastate`,`f`.`strEnumDisplay` AS `equstate`,now() AS `datsearch` from (((((`pe_dataalarm201901` `a` left join `viewjc_mdef` `b` on((`a`.`pointID` = `b`.`pointid`))) left join `kj_deviceaddress` `c` on((`b`.`wzid` = `c`.`wzID`))) left join `kj_devicetype` `d` on((`b`.`devid` = `d`.`devid`))) left join `bft_enumcode` `e` on(((`a`.`type` = `e`.`lngEnumValue`) and (`e`.`EnumTypeID` = 4)))) left join `bft_enumcode` `f` on(((`a`.`state` <> 12345) and (`e`.`EnumTypeID` = 8)))) where ((`a`.`stime` between '2018-02-07 00:00:00' and '2018-02-07 23:59:59') or (`a`.`etime` between '2018-02-07 00:00:00' and '2018-02-07 23:59:59')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewpersonequipmentoperating`
--

/*!50001 DROP TABLE IF EXISTS `viewpersonequipmentoperating`*/;
/*!50001 DROP VIEW IF EXISTS `viewpersonequipmentoperating`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewpersonequipmentoperating` AS select `a`.`ID` AS `id`,`a`.`pointID` AS `pointid`,`a`.`fzh` AS `fzh`,`a`.`kh` AS `kh`,`a`.`dzh` AS `dzh`,`a`.`devid` AS `devid`,`a`.`wzid` AS `wzid`,`a`.`point` AS `point`,`a`.`type` AS `type`,`a`.`state` AS `state`,`a`.`val` AS `val`,`a`.`timer` AS `timer`,`a`.`remark` AS `remark`,`a`.`Bz1` AS `bz1`,`a`.`Bz2` AS `bz2`,`a`.`Bz3` AS `bz3`,`a`.`Bz4` AS `bz4`,`a`.`Bz5` AS `bz5`,`a`.`upflag` AS `upflag`,`c`.`wz` AS `wz`,`d`.`name` AS `name`,`e`.`strEnumDisplay` AS `datastate`,`f`.`strEnumDisplay` AS `equstate`,now() AS `datsearch` from (((((`pe_datarunrecord201901` `a` left join `viewjc_mdef` `b` on((`a`.`pointID` = `b`.`pointid`))) left join `kj_deviceaddress` `c` on((`b`.`wzid` = `c`.`wzID`))) left join `kj_devicetype` `d` on((`b`.`devid` = `d`.`devid`))) left join `bft_enumcode` `e` on(((`a`.`type` = `e`.`lngEnumValue`) and (`e`.`EnumTypeID` = 4)))) left join `bft_enumcode` `f` on(((`a`.`state` <> 12345) and (`e`.`EnumTypeID` = 8)))) where (`a`.`timer` between '2017-12-25 00:00:00' and '2017-12-25 23:59:59') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewpersontracehistory`
--

/*!50001 DROP TABLE IF EXISTS `viewpersontracehistory`*/;
/*!50001 DROP VIEW IF EXISTS `viewpersontracehistory`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewpersontracehistory` AS select `a`.`Id` AS `id`,`a`.`bh` AS `bh`,`a`.`Yid` AS `yid`,`a`.`pointid` AS `pointid`,`a`.`rtime` AS `rtime`,`a`.`timer` AS `timer`,`a`.`flag` AS `flag`,`a`.`sysflag` AS `sysflag`,`a`.`cwflag` AS `cwflag`,`a`.`by1` AS `by1`,`a`.`by2` AS `by2`,`a`.`by3` AS `by3`,`a`.`by4` AS `by4`,`a`.`by5` AS `by5`,`a`.`upflag` AS `upflag`,`b`.`name` AS `personname`,`c`.`point` AS `point`,(case `a`.`flag` when '0' then '正常采集' when '1' then '补传采集' when '2' then '人工编辑' when '3' then '正常入井' when '4' then '补传入井' when '5' then '人工编辑入井' when '6' then '正常出井' when '7' then '补传出井' when '8' then '人工编辑出井' end) AS `flagtext`,(case `a`.`sysflag` when 0 then '人员' when 1 then '机车' end) AS `sysflagtext`,now() AS `datsearch` from ((`pe_trajectory20190101` `a` left join `pe_personarchive` `b` on((`a`.`Yid` = `b`.`Id`))) left join `pe_devicedefinfo` `c` on((`a`.`pointid` = `c`.`PointID`))) where (`a`.`rtime` between '2017-12-26 00:00:00' and '2017-12-26 23:59:00') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewsbrunlogreport`
--

/*!50001 DROP TABLE IF EXISTS `viewsbrunlogreport`*/;
/*!50001 DROP VIEW IF EXISTS `viewsbrunlogreport`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewsbrunlogreport` AS select `a`.`id` AS `id`,`a`.`pointid` AS `pointid`,`a`.`fzh` AS `fzh`,`a`.`kh` AS `kh`,`a`.`dzh` AS `dzh`,`a`.`devid` AS `devid`,`a`.`wzid` AS `wzid`,`a`.`point` AS `point`,`a`.`type` AS `type`,`a`.`state` AS `state`,`a`.`val` AS `val`,`a`.`timer` AS `timer`,`a`.`remark` AS `remark`,`a`.`bz1` AS `bz1`,`a`.`bz2` AS `bz2`,`a`.`bz3` AS `bz3`,`a`.`bz4` AS `bz4`,`a`.`bz5` AS `bz5`,`a`.`upflag` AS `upflag`,if(((`a`.`val` regexp '(^[0-9]+.[0-9]+$)|(^[0-9]$)') = 1),cast(`a`.`val` as decimal(18,2)),'') AS `valnumber`,now() AS `datsearch` from `jc_rmonth` `a` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewstationpowerchargehistory`
--

/*!50001 DROP TABLE IF EXISTS `viewstationpowerchargehistory`*/;
/*!50001 DROP VIEW IF EXISTS `viewstationpowerchargehistory`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewstationpowerchargehistory` AS select `kj_powerboxchargehistory`.`Id` AS `Id`,`kj_powerboxchargehistory`.`fzh` AS `fzh`,`kj_powerboxchargehistory`.`Mac` AS `Mac`,`kj_powerboxchargehistory`.`Stime` AS `Stime`,`kj_powerboxchargehistory`.`Etime` AS `Etime`,`kj_powerboxchargehistory`.`DischargeStime` AS `DischargeStime`,`kj_powerboxchargehistory`.`DischargeEtime` AS `DischargeEtime`,`kj_powerboxchargehistory`.`userName` AS `userName`,`kj_powerboxchargehistory`.`Bz1` AS `Bz1`,`kj_powerboxchargehistory`.`Bz2` AS `Bz2`,`kj_powerboxchargehistory`.`Bz3` AS `Bz3`,(case when (`kj_devicedefinfo`.`point` is not null) then `kj_devicedefinfo`.`point` else `kj_powerboxchargehistory`.`Mac` end) AS `point`,(case when (`kj_deviceaddress`.`wz` is not null) then `kj_deviceaddress`.`wz` else `wz1`.`wz` end) AS `wz` from ((((`kj_powerboxchargehistory` left join `kj_devicedefinfo` on(((`kj_devicedefinfo`.`fzh` = `kj_powerboxchargehistory`.`fzh`) and (`kj_devicedefinfo`.`activity` = 1) and (`kj_devicedefinfo`.`kh` = 0)))) left join `kj_deviceaddress` on((`kj_deviceaddress`.`wzID` = `kj_devicedefinfo`.`wzid`))) left join `kj_sysswitches` on((`kj_sysswitches`.`MAC` = `kj_powerboxchargehistory`.`Mac`))) left join `kj_deviceaddress` `wz1` on((`wz1`.`wzID` = `kj_sysswitches`.`Wzid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewsubstationdischarge`
--

/*!50001 DROP TABLE IF EXISTS `viewsubstationdischarge`*/;
/*!50001 DROP VIEW IF EXISTS `viewsubstationdischarge`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewsubstationdischarge` AS select now() AS `datsearch`,`a`.`id` AS `id`,`a`.`type` AS `type`,`a`.`state` AS `state`,`a`.`stime` AS `stime`,`a`.`etime` AS `etime`,timediff(`a`.`etime`,`a`.`stime`) AS `duration`,`b`.`fzh` AS `fzh`,`b`.`kh` AS `kh`,`b`.`devid` AS `devid`,`b`.`wzid` AS `wzid`,`b`.`point` AS `point`,`b`.`pointid` AS `pointid`,`b`.`bid` AS `bid`,`b`.`bz6` AS `bz6`,`b`.`bz7` AS `bz7`,`b`.`bz8` AS `bz8` from (`jc_bmonth` `a` left join `viewjc_mdef` `b` on((`a`.`pointid` = `b`.`pointid`))) where ((`a`.`point` like '___0%') and (`a`.`type` = 4)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewswitchrunlogreport`
--

/*!50001 DROP TABLE IF EXISTS `viewswitchrunlogreport`*/;
/*!50001 DROP VIEW IF EXISTS `viewswitchrunlogreport`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewswitchrunlogreport` AS select `a`.`id` AS `id`,`a`.`pointid` AS `pointid`,`a`.`fzh` AS `fzh`,`a`.`kh` AS `kh`,`a`.`devid` AS `devid`,`a`.`wzid` AS `wzid`,`a`.`point` AS `point`,`a`.`type` AS `type`,`a`.`state` AS `state`,`a`.`ssz` AS `ssz`,`a`.`stime` AS `stime`,`a`.`etime` AS `etime`,sec_to_time((unix_timestamp(`a`.`etime`) - unix_timestamp(`a`.`stime`))) AS `sumtime`,`a`.`remark` AS `remark`,`a`.`upflag` AS `upflag`,now() AS `datsearch` from `jc_bmonth` `a` where ((`a`.`fzh` = 0) and (`a`.`kh` = 0) and (`a`.`devid` = 0)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

delete from `bft_request` where `RequestID`=4851865196619423749;
INSERT INTO `bft_request`(`RequestID`, `RequestCode`, `RequestName`, `MenuURL`, `MenuFile`, `MenuNamespace`, `MenuParams`, `ShowType`, `LoadByIframe`, `MenuForSys`, `BZ1`, `BZ2`, `BZ3`, `BZ4`, `BZ5`) VALUES (4851865196619423749, 'Requestswitchrunlogreport', '交换机故障查询列表', 'frmList', 'Sys.Safety.Reports.dll', 'Sys.Safety.Reports', 'ListID=69', 2, 0, 0, '', '0', NULL, NULL, NULL);

delete from `bft_menu` where `MenuID`=5168206891612525916;
INSERT INTO `bft_menu`(`MenuID`, `MenuCode`, `MenuName`, `MenuURL`, `MenuParent`, `MenuMemo`, `MenuFlag`, `MenuFile`, `MenuNamespace`, `MenuParams`, `MenuSort`, `MenuStatus`, `MenuForSys`, `MenuSmallIcon`, `MenuLargeIcon`, `LoadByIframe`, `IsSystemDesktop`, `ShowType`, `RightCode`, `RequestCode`, `Remark1`, `Remark2`, `Rmark3`, `Remark4`, `Remark5`) VALUES (5168206891612525916, '008007024', '交换机故障报表', 'frmList', '008007', 0, 1, 'Sys.Safety.Reports.dll', 'Sys.Safety.Reports', 'ListID=69', '24', 0, 0, '009-查询-09设备故障.png', '', 0, 0, 0, '', 'Requestswitchrunlogreport', '交换机故障报表', '1', NULL, '', NULL);



-- Dump completed on 2019-10-07 20:59:12
