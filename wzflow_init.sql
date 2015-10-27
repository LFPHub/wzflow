/*
SQLyog Ultimate v8.32 
MySQL - 5.6.0-m4 : Database - wzflow
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `act_evt_log` */

DROP TABLE IF EXISTS `act_evt_log`;

CREATE TABLE `act_evt_log` (
  `LOG_NR_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_STAMP_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DATA_` longblob,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp NULL DEFAULT NULL,
  `IS_PROCESSED_` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`LOG_NR_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_evt_log` */

/*Table structure for table `act_ge_bytearray` */

DROP TABLE IF EXISTS `act_ge_bytearray`;

CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_bytearray` */

insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('747502',2,'source',NULL,'{\"resourceId\":\"747501\",\"properties\":{\"process_id\":\"chedaitest\",\"name\":\"车贷测试\",\"documentation\":\"\",\"process_author\":\"\",\"process_version\":\"\",\"process_namespace\":\"0001\",\"executionlisteners\":\"\",\"eventlisteners\":\"\"},\"stencil\":{\"id\":\"BPMNDiagram\"},\"childShapes\":[{\"resourceId\":\"sid-3B55C72B-7DCE-49E8-980F-F0315066E270\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\",\"initiator\":\"\",\"formkeydefinition\":\"\",\"formproperties\":\"\"},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-920904BC-7535-4B20-9652-2E38B9574645\"}],\"bounds\":{\"lowerRight\":{\"x\":86.5,\"y\":169},\"upperLeft\":{\"x\":56.5,\"y\":139}},\"dockers\":[]},{\"resourceId\":\"sid-D0FD7DD0-D543-4D7E-BBE1-5E0748115DA6\",\"properties\":{\"overrideid\":\"yewushenqing\",\"name\":\"业务申请\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"candidateGroups\":[{\"value\":\"2\",\"$$hashKey\":\"18U\"}]}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-D03548BD-9389-45C6-99C0-2C7852C28AED\"}],\"bounds\":{\"lowerRight\":{\"x\":231.5,\"y\":194},\"upperLeft\":{\"x\":131.5,\"y\":114}},\"dockers\":[]},{\"resourceId\":\"sid-920904BC-7535-4B20-9652-2E38B9574645\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-D0FD7DD0-D543-4D7E-BBE1-5E0748115DA6\"}],\"bounds\":{\"lowerRight\":{\"x\":130.65625,\"y\":154},\"upperLeft\":{\"x\":87.109375,\"y\":154}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-D0FD7DD0-D543-4D7E-BBE1-5E0748115DA6\"}},{\"resourceId\":\"sid-7603586C-FD6A-4901-9C23-61AD1917940F\",\"properties\":{\"overrideid\":\"yewuchushen\",\"name\":\"业务初审\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"Parallel\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"users\",\"multiinstance_variable\":\"user\",\"multiinstance_condition\":\"${nrOfCompletedInstances/nrOfInstances >= 0.5}\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"assignee\":\"${user}\"}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-27BAA4F7-A339-4FAE-8DB1-D5DCAFF7F00E\"}],\"bounds\":{\"lowerRight\":{\"x\":376.5,\"y\":194},\"upperLeft\":{\"x\":276.5,\"y\":114}},\"dockers\":[]},{\"resourceId\":\"sid-ABF58986-43CC-4927-B6EC-09BE71AA40FC\",\"properties\":{\"overrideid\":\"cheliangpinggu\",\"name\":\"车辆评估\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"assignee\":\"\",\"candidateGroups\":[{\"value\":\"2\",\"$$hashKey\":\"109\"}]}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-08F81C26-E80B-4C89-A3AB-B8DEDBB1E922\"}],\"bounds\":{\"lowerRight\":{\"x\":521.5,\"y\":194},\"upperLeft\":{\"x\":421.5,\"y\":114}},\"dockers\":[]},{\"resourceId\":\"sid-B613868D-4080-4EA3-803F-B40E9818300C\",\"properties\":{\"overrideid\":\"pinggufuhe\",\"name\":\"评估复核\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"candidateGroups\":[{\"value\":\"2\",\"$$hashKey\":\"1ZJ\"}]}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-F18F5A2B-CE33-4531-A425-ABF18973A2A2\"}],\"bounds\":{\"lowerRight\":{\"x\":751.5,\"y\":80},\"upperLeft\":{\"x\":651.5,\"y\":0}},\"dockers\":[]},{\"resourceId\":\"sid-F62971A6-5038-4A0B-B611-EB671614871D\",\"properties\":{\"overrideid\":\"zhongshenshenpi\",\"name\":\"终审审批\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"candidateGroups\":[{\"value\":\"2\",\"$$hashKey\":\"23C\"}]}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-C334CB61-24F6-4865-B13D-AEBFFD87A2A3\"}],\"bounds\":{\"lowerRight\":{\"x\":751.5,\"y\":195},\"upperLeft\":{\"x\":651.5,\"y\":115}},\"dockers\":[]},{\"resourceId\":\"sid-F18F5A2B-CE33-4531-A425-ABF18973A2A2\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-F62971A6-5038-4A0B-B611-EB671614871D\"}],\"bounds\":{\"lowerRight\":{\"x\":701.5,\"y\":114.46875},\"upperLeft\":{\"x\":701.5,\"y\":80.53125}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-F62971A6-5038-4A0B-B611-EB671614871D\"}},{\"resourceId\":\"sid-92C0D39E-557D-448A-B77F-8D2F2B87D2F2\",\"properties\":{\"overrideid\":\"qiantitiaojiaoluoshi\",\"name\":\"前提条件落实\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"candidateGroups\":[{\"value\":\"2\",\"$$hashKey\":\"275\"}]}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-DF1005DF-E7F6-42BF-A560-C269524CE2BE\"}],\"bounds\":{\"lowerRight\":{\"x\":895,\"y\":195},\"upperLeft\":{\"x\":795,\"y\":115}},\"dockers\":[]},{\"resourceId\":\"sid-C334CB61-24F6-4865-B13D-AEBFFD87A2A3\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-92C0D39E-557D-448A-B77F-8D2F2B87D2F2\"}],\"bounds\":{\"lowerRight\":{\"x\":794.671875,\"y\":155},\"upperLeft\":{\"x\":751.828125,\"y\":155}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-92C0D39E-557D-448A-B77F-8D2F2B87D2F2\"}},{\"resourceId\":\"sid-69756A84-5474-4863-A5D8-556F6D5B7E1C\",\"properties\":{\"overrideid\":\"luoshifuhe\",\"name\":\"落实复核\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"candidateGroups\":[{\"value\":\"2\",\"$$hashKey\":\"2LC\"}]}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-3B89ED2A-5C5F-4C19-89C5-4C1D26B39E5B\"}],\"bounds\":{\"lowerRight\":{\"x\":1040,\"y\":195},\"upperLeft\":{\"x\":940,\"y\":115}},\"dockers\":[]},{\"resourceId\":\"sid-DF1005DF-E7F6-42BF-A560-C269524CE2BE\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-69756A84-5474-4863-A5D8-556F6D5B7E1C\"}],\"bounds\":{\"lowerRight\":{\"x\":939.15625,\"y\":155},\"upperLeft\":{\"x\":895.84375,\"y\":155}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-69756A84-5474-4863-A5D8-556F6D5B7E1C\"}},{\"resourceId\":\"sid-13DEDC4B-A34A-4E55-BCAE-F6689D6C4015\",\"properties\":{\"overrideid\":\"hetongguanli\",\"name\":\"合同管理\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"candidateGroups\":[{\"value\":\"2\",\"$$hashKey\":\"2P5\"}]}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-F52BFC10-7737-4945-A2A6-D2961FCE89F0\"}],\"bounds\":{\"lowerRight\":{\"x\":1185,\"y\":195},\"upperLeft\":{\"x\":1085,\"y\":115}},\"dockers\":[]},{\"resourceId\":\"sid-3B89ED2A-5C5F-4C19-89C5-4C1D26B39E5B\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-13DEDC4B-A34A-4E55-BCAE-F6689D6C4015\"}],\"bounds\":{\"lowerRight\":{\"x\":1084.15625,\"y\":155},\"upperLeft\":{\"x\":1040.84375,\"y\":155}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-13DEDC4B-A34A-4E55-BCAE-F6689D6C4015\"}},{\"resourceId\":\"sid-2C35DF22-C30A-41F5-9AF1-D57929911073\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"sequencefloworder\":\"\"},\"stencil\":{\"id\":\"ParallelGateway\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-9F686C53-6F4B-46B5-867F-1BFC45678FDA\"},{\"resourceId\":\"sid-22ED8CCC-2445-4AE5-954C-56733CAB1F55\"}],\"bounds\":{\"lowerRight\":{\"x\":1155,\"y\":285},\"upperLeft\":{\"x\":1115,\"y\":245}},\"dockers\":[]},{\"resourceId\":\"sid-1DE6AD7F-1827-40E6-B85B-5B039C9FC22C\",\"properties\":{\"overrideid\":\"diyadengji\",\"name\":\"抵押登记\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"candidateGroups\":[{\"value\":\"2\",\"$$hashKey\":\"2WU\"}]}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-AEE1B50C-E85D-4776-8D83-C9DC49988DE4\"}],\"bounds\":{\"lowerRight\":{\"x\":1185,\"y\":415},\"upperLeft\":{\"x\":1085,\"y\":335}},\"dockers\":[]},{\"resourceId\":\"sid-8192DB2E-5C92-4F6E-8A4C-65157A3C0A02\",\"properties\":{\"overrideid\":\"hetonggongzheng\",\"name\":\"合同公证\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"candidateGroups\":[{\"value\":\"2\",\"$$hashKey\":\"2SY\"}]}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-A978BA75-86B0-458E-9B21-7FD7E404962A\"}],\"bounds\":{\"lowerRight\":{\"x\":1040,\"y\":305},\"upperLeft\":{\"x\":940,\"y\":225}},\"dockers\":[]},{\"resourceId\":\"sid-A7F90AA1-06D2-400E-8DC8-9EA5333483B5\",\"properties\":{\"overrideid\":\"fangkuanshencha\",\"name\":\"放款审查\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":true,\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"candidateGroups\":[{\"value\":\"2\",\"$$hashKey\":\"37A\"}]}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-3BC6F06A-D481-47FE-AEB1-DF5627713B9F\"}],\"bounds\":{\"lowerRight\":{\"x\":920,\"y\":415},\"upperLeft\":{\"x\":820,\"y\":335}},\"dockers\":[]},{\"resourceId\":\"sid-C8DC3ED5-7197-4FDF-9B62-BC6E73CD16C2\",\"properties\":{\"overrideid\":\"caiwufangkuan\",\"name\":\"财务放款\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"candidateGroups\":[{\"value\":\"2\",\"$$hashKey\":\"3B3\"}]}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-4297773B-04B0-43D4-B40E-23BB78FAE6AB\"}],\"bounds\":{\"lowerRight\":{\"x\":779.5,\"y\":415},\"upperLeft\":{\"x\":679.5,\"y\":335}},\"dockers\":[]},{\"resourceId\":\"sid-1A2B2547-B73B-418F-A8DF-4DCCB525BA2C\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"EndNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":628,\"y\":389},\"upperLeft\":{\"x\":600,\"y\":361}},\"dockers\":[]},{\"resourceId\":\"sid-3BC6F06A-D481-47FE-AEB1-DF5627713B9F\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-C8DC3ED5-7197-4FDF-9B62-BC6E73CD16C2\"}],\"bounds\":{\"lowerRight\":{\"x\":819.60546875,\"y\":375},\"upperLeft\":{\"x\":779.89453125,\"y\":375}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-C8DC3ED5-7197-4FDF-9B62-BC6E73CD16C2\"}},{\"resourceId\":\"sid-4297773B-04B0-43D4-B40E-23BB78FAE6AB\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-1A2B2547-B73B-418F-A8DF-4DCCB525BA2C\"}],\"bounds\":{\"lowerRight\":{\"x\":678.87109375,\"y\":375},\"upperLeft\":{\"x\":628.53515625,\"y\":375}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"sid-1A2B2547-B73B-418F-A8DF-4DCCB525BA2C\"}},{\"resourceId\":\"sid-66666A28-D500-4B06-916D-F44F23F4C520\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"sequencefloworder\":\"\"},\"stencil\":{\"id\":\"ExclusiveGateway\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-965CD382-3B99-4246-8DD9-F3050A6E4CF2\"},{\"resourceId\":\"sid-9A44B04A-DC1B-44DC-814B-A05AED8CB220\"}],\"bounds\":{\"lowerRight\":{\"x\":606.5,\"y\":174},\"upperLeft\":{\"x\":566.5,\"y\":134}},\"dockers\":[]},{\"resourceId\":\"sid-22ED8CCC-2445-4AE5-954C-56733CAB1F55\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-1DE6AD7F-1827-40E6-B85B-5B039C9FC22C\"}],\"bounds\":{\"lowerRight\":{\"x\":1135.409496337557,\"y\":334.64844792497405},\"upperLeft\":{\"x\":1135.184253662443,\"y\":285.32030207502595}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-1DE6AD7F-1827-40E6-B85B-5B039C9FC22C\"}},{\"resourceId\":\"sid-9F686C53-6F4B-46B5-867F-1BFC45678FDA\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-8192DB2E-5C92-4F6E-8A4C-65157A3C0A02\"}],\"bounds\":{\"lowerRight\":{\"x\":1114.6074277794598,\"y\":265.4282042191734},\"upperLeft\":{\"x\":1040.4472597205402,\"y\":265.1733582808266}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-8192DB2E-5C92-4F6E-8A4C-65157A3C0A02\"}},{\"resourceId\":\"sid-F52BFC10-7737-4945-A2A6-D2961FCE89F0\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-2C35DF22-C30A-41F5-9AF1-D57929911073\"}],\"bounds\":{\"lowerRight\":{\"x\":1135,\"y\":245.09375},\"upperLeft\":{\"x\":1135,\"y\":195.53125}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":20,\"y\":20}],\"target\":{\"resourceId\":\"sid-2C35DF22-C30A-41F5-9AF1-D57929911073\"}},{\"resourceId\":\"sid-C6947558-4B64-4B3C-A630-417A72BA92EE\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"sequencefloworder\":\"\"},\"stencil\":{\"id\":\"ParallelGateway\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-958B15D3-AD10-4211-AE06-17931D52994B\"}],\"bounds\":{\"lowerRight\":{\"x\":1010,\"y\":395},\"upperLeft\":{\"x\":970,\"y\":355}},\"dockers\":[]},{\"resourceId\":\"sid-A978BA75-86B0-458E-9B21-7FD7E404962A\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-C6947558-4B64-4B3C-A630-417A72BA92EE\"}],\"bounds\":{\"lowerRight\":{\"x\":990,\"y\":355.09375},\"upperLeft\":{\"x\":990,\"y\":305.53125}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":20,\"y\":20}],\"target\":{\"resourceId\":\"sid-C6947558-4B64-4B3C-A630-417A72BA92EE\"}},{\"resourceId\":\"sid-AEE1B50C-E85D-4776-8D83-C9DC49988DE4\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-C6947558-4B64-4B3C-A630-417A72BA92EE\"}],\"bounds\":{\"lowerRight\":{\"x\":1084.15625,\"y\":375},\"upperLeft\":{\"x\":1010.2578125,\"y\":375}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":20,\"y\":20}],\"target\":{\"resourceId\":\"sid-C6947558-4B64-4B3C-A630-417A72BA92EE\"}},{\"resourceId\":\"sid-958B15D3-AD10-4211-AE06-17931D52994B\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-A7F90AA1-06D2-400E-8DC8-9EA5333483B5\"}],\"bounds\":{\"lowerRight\":{\"x\":969.7304773585561,\"y\":375.4138194081268},\"upperLeft\":{\"x\":920.8945226414439,\"y\":375.2111805918732}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-A7F90AA1-06D2-400E-8DC8-9EA5333483B5\"}},{\"resourceId\":\"sid-27BAA4F7-A339-4FAE-8DB1-D5DCAFF7F00E\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":{\"executionListeners\":[{\"event\":\"end\",\"implementation\":\"${execution.setVariable(\'okNum\',0)}\",\"className\":\"\",\"expression\":\"${execution.setVariable(\'okNum\',0)}\",\"delegateExpression\":\"\"}]},\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-ABF58986-43CC-4927-B6EC-09BE71AA40FC\"}],\"bounds\":{\"lowerRight\":{\"x\":420.65625,\"y\":154},\"upperLeft\":{\"x\":377.34375,\"y\":154}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-ABF58986-43CC-4927-B6EC-09BE71AA40FC\"}},{\"resourceId\":\"sid-08F81C26-E80B-4C89-A3AB-B8DEDBB1E922\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-66666A28-D500-4B06-916D-F44F23F4C520\"}],\"bounds\":{\"lowerRight\":{\"x\":566.1484468700075,\"y\":154.4097335362338},\"upperLeft\":{\"x\":522.1288968799925,\"y\":154.2191727137662}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":20.5,\"y\":20.5}],\"target\":{\"resourceId\":\"sid-66666A28-D500-4B06-916D-F44F23F4C520\"}},{\"resourceId\":\"sid-D03548BD-9389-45C6-99C0-2C7852C28AED\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-7603586C-FD6A-4901-9C23-61AD1917940F\"}],\"bounds\":{\"lowerRight\":{\"x\":275.65625,\"y\":154},\"upperLeft\":{\"x\":232.34375,\"y\":154}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-7603586C-FD6A-4901-9C23-61AD1917940F\"}},{\"resourceId\":\"sid-965CD382-3B99-4246-8DD9-F3050A6E4CF2\",\"properties\":{\"overrideid\":\"\",\"name\":\"${_flow_type==\'pinggufuhe\'}\",\"documentation\":\"\",\"conditionsequenceflow\":\"${_flow_type==\'pinggufuhe\'}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-B613868D-4080-4EA3-803F-B40E9818300C\"}],\"bounds\":{\"lowerRight\":{\"x\":651.30078125,\"y\":133.8203125},\"upperLeft\":{\"x\":587,\"y\":40}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":587,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-B613868D-4080-4EA3-803F-B40E9818300C\"}},{\"resourceId\":\"sid-9A44B04A-DC1B-44DC-814B-A05AED8CB220\",\"properties\":{\"overrideid\":\"\",\"name\":\"${_flow_type==\'zhongshenshenpi\'}\",\"documentation\":\"\",\"conditionsequenceflow\":\"${_flow_type==\'zhongshenshenpi\'}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-F62971A6-5038-4A0B-B611-EB671614871D\"}],\"bounds\":{\"lowerRight\":{\"x\":651.3007907843881,\"y\":154.78078947940782},\"upperLeft\":{\"x\":606.7851467156119,\"y\":154.58639802059218}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-F62971A6-5038-4A0B-B611-EB671614871D\"}}],\"bounds\":{\"lowerRight\":{\"x\":1285,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"stencilset\":{\"url\":\"/stencilsets/bpmn2.0/bpmn2.0.json\",\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"},\"ssextensions\":[]}',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('750001',1,'source-extra',NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0�\0\0�\0\0\0@a��\0\0\0 cHRM\0\0z&\0\0��\0\0�\0\0\0��\0\0u0\0\0�`\0\0:�\0\0p��Q<\0\0\0gAMA\0\0��|�Q�\0\0\0sRGB\0���\0\0\0bKGD\0�\0�\0�����\0\0\0	pHYs\0\0�\0\0��+\0\0 \0IDATx���	|T����3Y�¾\n*�.�*�]�����m�K��*�u��ڪ�ր APQQAP��UT\r\nj!�aO �@��{�7s�0�$����~>�	�er�3wy�s��\0\0����mGٶҶl�:�v�m�m��m��m9�����_m۶�[�n=j���m�^/��@��deem�����g;찗�\0\0bp�M\0\0�$��T\'�6۶��s�WQQ��}���]�v��m�ִn�ڤ���9\r��dYY�ٸq�Y�j��*JOOܧO�Y�\0\0��d\Z\0\0\0\"2o޼kJKK��ѣG����TR��X��z۵kw[�޽��G\0\0�\r�\0�dq�m��XB���\'�5uS\"�����^�z��iӆi&���f�����?u�Q�G\0\0��T�\0\0\0$��m�l�O�U��$��v�r��M�>�WUU�ԃ>8-T\"�������_5��۔����y+MV�=����φhѢ�i׮�g���g^q�o�3f�\0@t��\0\0 	\\i۱�}NW�_vv��=��#=\\EڪEo:	4W�֍f��f�m�ךn���l��-[��={�M���E�\0\0]�*\0\0��+�z�\r���{����|h��P*��7�+�|�t�|S�i%����))){Ϙ1�Xz\0��\"�\0\0��m��h����P�����t�֭E��\rl)-r�y����Q���k׮-�򸚞\0\0 ��	\0\0������W���k��x�n۶m��}ު�ߠ�D�G�l���Τ\'\0\0�.�i\0\0 �C�m۶�ݺuk:\"�j�J˃��\0\0D�4\0\0��z�Vhj�ɤ^���|i))��ˁ�\0@��L\0\0���.��!�N�� v��v]zV��w63�j\0\0��d\Z\0\0Hd��o/�+�FV���U�M���;=��a_�q\0\0�DB�8\0\0\0v�Ǔbv�ua�Ǻ|�IImA\'\0��Be\Z\0\0H�M�p�l�6���m��-\r�}[y����n2��� \0\0�PH�\0�d0Զ\'ld��u�m�m\'�6���u�g�u�	���/��{�5�:��\0\0	�a�\0\0 \\g[_������N�u�m����.��(1E�_2��f�Wn	���mf͏�e_�`�����\0\0@B`�\0\0$��m�q�F��P]�\rEs�����D�y�RS0��i��L��;�\0\0�+�d\0\0@2��TW�uh�٦lP{��\r�\\��͈i.U���M�\0\0�gT�\0�d�mY���1��Sm������b\r��R\0\0��4\0\0�Ρ\Z��j�\0\0$+�y\0�D��\Z�ق�\0\0\0@c�2\r\0\0$*%�\nm���ܶc��\0\0\0v�4\0\0��6*�\0\0\0���	\0\0\0\0\0\0D�d\Z\0\0H���\0\0\0D�d\Z\0\0HO��ǶL�f�\0\0\0�$�\0\0\0\0\0\0��L\0\0\0\0\0\0\"D2\r\0\0\0\0\0\0��4\0\0\0\0\0\0 B$�\0\0\0\0\0\0��L\0\0�bv�ϟ�\0\0\0�it\0\0H�~���\0\0\0�� �\0\0��rrr��x<�+W��:k֬*z\0\0`�1�\0\0$��a~N��|�׻v�Zҿ�q8�_�~�b�Y����lذa��>��#SQQQ���#G��z�;��g\Z3f��;wn�����̳�>�7\n\0�$E2\r\0\0$�\'l�c[�m3��Zz<��}>߻���E999c�X2dHf�|���2��O8?/]�Լ��fڴi�;�pnǏo�z꩝^��YIII������������|�t���,[�l����ϛI�&���͛7��?--ͬ_��&y��	\0\0��<\0\0�S[��|��[rrr&z<�7�=t��6�-r~���0�w��ܹ��D;�sLQQ���\n4{�ls�e�9�1Wjjj��,0GqD���|�Is��;	2%�\\�����SO5��o��6g����e���M˖-��իMee�S�ֽ{w\'�\0\0[|\0\0\0d�6���\r�ڵkiNN�4�Ǔ���1+\Z��snw�}w�\"��;�ylܸqN�,�?��\'A�������ùo�ʕN%��[�ι�}��N��E]d�n\r\Z���|��7f�5�4U�͚5˼�ꫦo߾���7�s�y�g��_�N������UW]E\0�DH�\0\0��������d�*���|��\Z���+��=��#l�VcR���S������[�؅^�$�D�`�￿�\\�:SLb����j�w+�m۶�Iĥ��8�k�h��?�<����Z�2\\p�y衇�j�3�8ìX�¤��;	�?��ϦK�.�����\0@!�\0\0���M�شi��P�뮻��w)y���o8���ݻ��m���\'�|b�����g�mF�an��&g�e~~�S5֦M��m۶5-Z��yO%���RUZ��۷o�tq�@����{t����|����󙣎:ʙ�MB��+�ƍ��\0\0��4\0\0�Ȍ���IB���x��D��*����:� \'���0}��[�:��֭[;���˝��DUj3f�p�=�߿�3�SUnGy�0`��=t�P��,77שTU��|��;<oʔ)N�[�^��y��=U���3�>��S���:����\0\0�$H�\0�d8��z�vT^^��x��srr�%�*}>����d������m�322����o��ϭ9ʔ��S]��cǎ;<x�QRL�	ީ��T�l�̙�SNq.B�ᜪpӕ<U	�λ���gz�ϪR�8q�y�ᇝd����I�\0�dH�\0�d1<��K���ئ�a��-����2�4[�Ĭ������%�U�\rJ�i��k�����{�ԩ����w��y�z��i>������\\�ӵv�Z����_t��x�b�j�*s�7������E��7\0�$C2\r\0\0$�\')3��:��ݶ=m�o��C��V	�ɶ����9577�\"V>��-S��\'���/�g�����*���nݺ��_�p�	�jEEEμg�J�ӧ�3\'[`2M\r-����	�x{�G̉\'�h���z�j��p�P\0\0�H�\0�dp�mm�̶���m��;�Z%K\'h������2&##cV`Z,9餓v��MC.k�t�R\'	w�1��0�S�u�ܹ���,�kJ��<��saU�)���W_�C9��Y	7��5�SCC�|�i��|�A\'�F2\r\0��A2\r\0\0$�Wl;ֶ�m[�O�Y\Z����s\"��x\n233\'�RZ8�\\s�N�����a��+�j���;l��4L3�*����������J�@��w�W\r�y�t!\0\0�<H�\0�d��Y��T۪����˻?������_��6�b��\Z\0\0��R�\0\0�&�vG�}*Y�D\\t\0\0\0\"E2\r\0\0$�Q�b�\Z�T���m��v\n]\0\0��`�\'\0\0Hg��+z�R�\Z��=]\0\0��\"�\0\0�E��-۶Ͷ=l۳t\0\0\0�d\Z\0\0HCmӥ\Z��+z�:m�m\'�6��\0\0@��3\r\0\0$��l�k�x�~4�	��\r0�\\\0\0@=�L\0\0��k�2BܿѐL\0\0@=�L\0\0��VS]��-��g�����\0\0\0ԉ3�\0\0 <g[�m?�x̽�T۾��\0\0\0P�i\0\0 �C\0\0\0�10�\0\0$�1�N7\0\0\0���L\0\0���fؖn���a��n\0\0@}�L\0\0�`�����e۞�m�m�۶��\0\0@�H�\0�dRh�	����S�V۶Ķ�m˧{\0\0\0P�i\0\0 �\\b��mkoۣ�=l�Y�z�E��y\0\0�$�\0\0@2xĶ[l�ɶ���\'�)�\0\0\0ԉd\Z\0\0Hl�n�J�\0\0\0\r�B\0\0�$0ۄN��D�\0\0\0�>H�\0�d�g�\rq�k�e�=\0\0\0��<\0@����ݶu��g[\'�*�\"\0\0\0D�d\Z\0\0Hd}L��:���J�c[m��m^�	\0\0\0�\"�\0\0�����i۞�-�.\0\0@C0g\Z\0\0H7��iS�\"\0\0\0D�d\Z\0\0�1��y<�J�������X\0\0D�4\0\0\0��YLIY�i�&:\"���iy,�\'\0\0���]\0\0\0�p�o�>mݺu���۰a�Z��;��\0\0 �H�\0\0 ,���jqqq���3�lŊ���Uz\0��\"�\0\0���:��UUU_,[�l9�=���UVV~{�g~Fo\0\0]$�\0\0\0P+��{�e˲JKKK��WVV����0�.���\0\0�G2\r\0\0$�lK�v��g��������TZZ��i>eee,X���x�]��\0\0їJ\0\0�$��my�]m۞�-��4��B���C�ko�����?+�;p�رK�Mqqq����/۷o����YMhɒ%�.^�����wg�q�Tz\0��@2\r\0\0$�I��g�k��f��g�m�	�H�i;RBmРAo����VTT�]^^�YJJʦ���v�\'f+�֮]k�O�n:w�l���c��^oEii�ׅ����/�ٟ����u�Y��\n\0;�\0\0\0��׶��-�-ݶͶ��n����s�{��k֬�̶�����Νk�͛g\n͑G�������b\0\0��\0\0 �]d��u6�Uj}m��\r��|ڛ���YsrrFڛ{�͛7�;���\0\0\r�\0\0@2��mml[c�붭�K\0\0\0�+�L\0\0��n�|i���/�6�6Զw�\0\0\0D��4\0\0�L����m?ٶ�m/�%\0\0\0�*�\0\0@2xζ���m�mw���m��\Z\0\0\0��4\0\0���6�TW�\0\0\0��d\Z\0\0H�\0\0\0h$�\0\0@��ϻl��T_|�*�~�[\0\0\0P\\�\0\0\0$���m��b�n�������\0\0\0�Ae\Z\0\0H�m˱m���\Z�y�m��n[]\0\0�HP�\0\0����q�*���=\0\0\0��4\0\0���6\"�ަ:ɶ��\0\0@��	\0\0��M�ie���-Ӷ���F�\0\0\0�>H�\0�dq�m�M��N͑��m^�\0\0\0�A2\r\0\0$�nA�W�ֹ��v%�\0\0�H�L\0\0���m���U�u��\0\0\0)�i\0\0 Qm�m�m\'��\n5*�\0\0\0�`\\�\0\0$���������K\0\0\0�PT�\0�D���z������l��y�tU��߿�����0ߛ��so�}����F�s\0\0 R$�\0\0@\";Ͷ�Lu�Z��kδ��đ��2���E�|���#�\0\0�d\Z\0\0Hd��ݶ�l˵-�.Il&L�������ة���|�������\Z\0\0��L\0\0��6S{\"m\n]�8|>_��sVnnn=\0\0�d\Z\0\0�1�����M��/�[\0\0��H�\0\0 �dgg϶7�u<�,++k6�\0\0�d\Z\0\0\0���:�6�>���\0\0�E2\r\0\0\0�hL��M\0�]A2\r\0\0\0	���x�������̩�\0\0�$�\0\0\0�pf͚U��xƅyx\ZW�\0\0��d\Z\0\0\0���桉�\0\0�U$�\0\0@�jo��>w�m��e�eժU�AQ�}\Z����9��\0\0��d\Z\0\0HT�m;7��c[%]�X4����8�x<3��\'\0\0h�i\0\0 Qm���mCm;Զ���?ێ��\'�,!�pUO��3�.\0\0\r�F\0\0���6͛u�m�u�-Ӷomki�ۼ��k[ݕx233?����Z��\0\0�$Ӏ$�����m۶�a�֭Gm޼����S\Z��񘬬�M�}�����a��1b(j6�vR����k��d��\'�骝999�쏽l+�*�\0\0����t���Ν{\\EEE���ۻw���Ӷm[Ӻuk�����R2����lܸQ�_뮢����}���E��	�Mu�ڶ�����3���kۨ����t���)��v�Z3g�s�QG��v�-vw̓$����2�.]z�]�\r��s`yyy&\'b\Z%~|�Z�h1����O<��D�[�!b�\"��������3o޼kJKK��ѣG����켣�X��z۵kw[�޽� �@��i;#��t�!�n^�]�v��6��m��i⧸�x���~�e˖Ag�}v~\"���1DC� ��\r$%A�\n�ك>8�s��$A��6�:t��y�\r7���?��1�d��xr衇��7j���ϟ������A~}�=�h׫W/O�v�4\'�F�~���0mڴ1:Qa�Y�f�C�����~�߲e˦�ڭ[�t?��i��IMII�iӦ������1c�,N���\"��!b(V�L�����{UUUM=���Ӵ���y���ʅ���߿mJ~�����&��v�ș��hѢ�6֞�˗�y�W�i7&��!$cE��M[���T�4��t��`$�~F\"��%R\"]��]|�A�Y�\'}����\Z4蛱c�~�Ib�\"���XA2\rH\"����?�޽{7m<BY��\r\'����߻}�ټa���(1��L6B2$�*//?��_|�B2�P�h����s��׎�l+����½�dZ5�����{\"]C�T	��P�l�)��uS��f���vc��h�Ťe�!\0\Z!~�lFqq�y�_~���ƍ[�1DC�P�a�H��^o��w���N*��7�+�|�t�|S�i%����))){Ϙ1�Xb�CQ�ݶKm����8��\Z27ɶ��w�����ΞԣG��P �jћf͏�9��ںѬ��L{P�SC˖-MϞ=ӭ����5ɷ�&���\0v�������w�6��V����g�}��������g���򦦦�-??1DC�P,\"�$�����t�֭E�r�-�ENeA8�Ƞqt�ڵ�]WCH���=mS`����dۊ�?��=��H�ǆxM��jy��;\\����j[�N��v��Y,��Z�g�������D1DC�P,\"�$	��s��T�����ǥ��Έ��3�!$[E�m{ض_ض��km���~��?#�#�eee�t����SK��Ӹ�t颡����&��!b��E$Ӏ$�m۶�5$��U�VZ=�!$[E�����M��U��^������$�cG<&�7o�|`�񳽒�i&�:u��T�i�!C�1�0i,N 9؝ﴔ����R�!$[E�)������;��I�ԎDz��Dzyyy&��r�fo:���&��!b��E$�\08ҳ�׾��`bq/����.������t��k������;�#��!b��ɿ��	@���4�:���:���`$��T�C�1�XE2\r���I1���0�c��Ԥ����@�	�t4D�Ǜ�-w�?5=�t�y\"b�b�4\05���$�Tm�D��t4D����!����u�C� C ��H�p�/�m���\r���/�u�I �\0�D\"\r���-��!C�+$Ӏ$WYQb��dV�0-�FD�۷�5?�g�}���V��N1��t�*m�]([��N�����,��_l3@�BL�j�@�P4Ǭ�ߌ�	�`�7,5s�1��9ʹ�q�3��1$\'%�W-z˔�]�9n\"]$]{]dZ��L��Q�b����*LU���()t���=ô�~,�C �3H�IJ��$�/�u>��t��d:�\"��$D\"�J���I�F����7���t9�<�ٺ�HC �u��\0IJ���y��Db�����q\"-p��D�^�䥤j�����-��9:��!�*Ӏ$��\05�»���:u��x<K�j$���!v@�B� �\0\0�믿>�������kfΜ�tNNNa^^ެd��h�^g�O\'�1���0O\0\0� ��׿Ƽ��;���?�+�����Viii����݌��m�,\r\0\0��B2\r\0\0 ��q�&Ι3�;��q��}G}���k����?�ׯ�~��Q~e۱�<~�m_���m�#|�m�ζ�������U�V��������#G�O>����,^��(fbH��\\�~{�[Ԕ����k�:?WTT���¸�9\0@l#�\0\0����OϜ={����g�}vx�SN1���o����?���iꄁe�m�ö�l��{ƶ��j����%ۆ��ݶ���\r\Zd^{��%�~��Z��Da��m�l{�����	<s�i����c�=f��.�g%���~s�Yg�7�|�\0��0g\Z��{�w��%KnX�fͱ�W��q�ƴ�[�z���M�6m�v�m�\r:t�������!�N�@�y��\'g~���{ｦk׮!�s�I\'�VVVv\Z3f�srr����+h��2��\nS� [e�+�.��A�Ӈ���{���\Z�e�-�C<G��\"N�K����w̾��k<�@�I�����ԩ�S�3g�s��\'��˕�(--5����裏���:C��=�أ�y��JKKs~��w�1ǘO?����O?}��VUU��������s����5�v��9k�,X༦gϞ;=�����EI������O�mٲ�/k�|���^��-[���[����/gy(^׭[Gg\0\Z�4$���������A@��:Ȝy晦{��C�&33�9\0شiS����;�����o�w��wojӦ�_��� \0$����/��㏧j8_�Νk}�=(OY�lY�Y�f}6`��C\'L����?N�m{��׶�f5�>��!TƩU��А��~\0\0 \0IDAT�I���M�+�PU����z�I����u�]�6=����曝D�*��P��\Z���έJ�w���h.\\h&M��<G�1m���y\'���9��gm�Uq��������K�$�(��>��9���R�.��oZZM�M�nr˥�\nNd)��&�8������/Y����J�8�������3Q���0���f�֭�gxꩧ��5v�X糷m��y��SU�_Q�ϕ|�\'���6�T\'X��_��e��_cOo���m��vc@��QU�J�.����S��2�?���:��ƨ�S��Ҷq�ǔ�z����7Ѫ���c����D���k����?�]~Gy�.��$H�_8�������_t�d|����v��QL(v���5��P��PO\0@c\"����裏�~��wW�\\���x4�v^�igLMNځ�$�v\'��+��2������go��G q�}�ݟ����Ç�3��\Z2dHzEEE��>��~��5iҤ�<R�̟�(��?��W=�\Zۦ��}sM���\'�	w_����+���3�ߩ�����R��V�U�G�17�Q��.��I�6�&��$�O<�$?�QR�U�VNBʥלp�	��J(=��3�P�{��I�h�-�LS��M��3���{:	�g�{���饗^r~�gv���u�:���+QT^^�}s�QG9��\n����u�J���n���Ŝ��\\_�[�Z}>=�>W�Q��~�;]Y֜��Z~���۶��_��\n�S�|��?��^5�	�{Mu�0�s4�ރ�z�pW��(����N��N1�Ջ�ϓLu���q�4=w��uw?���\'j)�uꩧ:IC����\'�t������0M-%ɔ�TrM}�����-�ɏ?��,�o���I����{έ����vk��~%S\0h(�&H8v\'�^��5�.H9��sC&�j��b��ӧwz���?�;�����Y\0H<#F��SQQq��\Z�[���k����t������?�xȐ!����4��:�TW�2Hs�=�|�?�q�?	Rd�U��4)����T\'O\\J���nUM��ݕ�QՔ����(�J2�}4O�0%L�|\nLx(��R�ŭb�PS%h>��c���YCA]�I�p�0��y�:ԩD��vu���I��lj�$S?���TS�L�#�A�k�lTrM��Sb�ꫯv�ߢE�ƚ2G�6��\Z\Z��Q�ߖ����%do��NT������W��N�)^������^3+�5-Mu�\\���㋋��{�9�4�R�ܭ\Z�߬��,U���hUţ[�\'J�)�D�ּ�<\'n�����P�g�4o��lWc\0�@$ӐP�}��{������[=����Kg6{����c����㏷���Gz\0Ð!C2�t�2���� U8�7���[�l���o��j����܊F�xJ�<m����jJ��6�I4%�r��k辠[�S�o����a�J��H�%�����T�ix�����BRS%�ܹsk��B~؀$���T��l�PT��pI%���\rT�[(\Z�X�H�!��3f̨���}Lk�L��s�g��JI�p�����Z~�>䣦�r��?ND����_���\":9�s+/�d}�����_�ꡣ�հ��Po��=Ŏb����g�y��:��t�u��;ŨbV���H�)\0�m\nHÇ�%??Ԉ#<�ө�΂��F�}�ȑ#W��=\r\0�M�4���߶m�o��g�C�x�-{챣~����{��	�!������5�=����:%/֘�\'�)	��H��5����z�?� S�I�*}T��j�H�PI���1�}�,R����\nGUhn咒!�F��A`R*��M7�&�]�v%�E(T)v�\r78s{_` �E��)a���Z��lѢE5t�mb|�\rsT5W�\Z��k?�c�ꡜ\'���򆣊�7L�9��X�&^��7-,UO*zPm�L��T�a�\"0i*J�i�Q��[^�S\'	�DZC��\0\0�LCB���~�oqq�CÆ\rKi�D�K�w�m��<����A׻��_��\0����תcǎ�:t�߭��jtU��{��D�#�<r�?��J߾}9k֬����w���Y١�s�ĵ�	�GC�4O辦:i�!��p҅�I�5�&�\r���+z�*�T��J�_�����LSbn	;�F�+%���O>��f��*���o������ǩjS�II.%�꺺�hH�;�Z$��S5�y��MMܿC��`J\"���9�+}~%�t����<\'x���	��@�k���\Z�oR�����?�u�ƛ�ʰ���.�9�4w��˔��pM\r����ZK�)w��N֍�?�4���ߠe�y�ܡ��tT�^$�J�3\r�Ujh��ͺ�ͩ?kK��?UM�[�L\04�&H����~���\r��vd/�����~�\r��$�\0�81dȐv��{�]������`��d�d��P;���w�O�7�}��Sh>��#Ε�o���V�G�>���Էo��\rH�]h���y��N��\n�\n��0�Hh\"���0�e�I%JT]t��}�<�T�)���Q�B�]����M*1��4�*KT!�D���S�M���?��ꎢ��*�Ti�$�ޯ���R�K�#�W���W��S5���)�������T�i\"~�B�E\\��L�)�������~8%�������O�l���\\��	���s�=�_�����9> �v�?���)��e��w����߉Q�$��Jh)����ϴ�܄�*ς�5<֥�3ŀ��U%�V�\r�ܴH�\0\Z[�=��zyjj�>��)�����=����ݙ�����DZvv�7�z��\"�;����BMQ+V��y��\\���s��p�f�:蠃�!�J��$�F�j9|���oߞ۷o�!\rH�����Ϟ5��릛깮T������\Z���{)9V�E!~o^�_��ϝ(��&�DUk�4r)9��PIɏ�+u��h\n�_�~�[�L�ל�+��Dk�ǂ��\'�W_(�Ԃ�J��W�pH%�~��_;���[o鮾������2�HEp�8�k��[�Sb��0]<�gZ�.%@�}�ݐ/t��\Z��D�m�Q��kSW�\Z\0\0�E2\rq/==}���Sc�N]���/�e��E4����{<O�ʕ+�6p��1�d�U�~{�mĜ#�8��o~�&6?����ٳ�DŲe˜�6m��$��ć*�4�̵�~��������i[4bĈ�w�q�%>��o���\Z�ѕ ���Wb����b��:��������,܄��Qu��r�|������/�����W��]JxNemQwl�\ZN	<\r\0���LC\\�����ܲeK��3�M��3^�������\n��Ͻ��i��f���ڃ����fO�4�,֗�Ru�����\\���O�\\ۿ��믯���>���u�%��|\\�iH�P{�k~��d��CAt5�.]�8�]_�?��S�ҢEV�M�[�����]���j�j}ݺu�N;���_�+^{����owj��U����s�q�f����g�Æ\r��C�_vv��P�m���������~���U�>-������ߝ>�p�H�F�[U٧h��K/�tXs��X8�a����U婆�j]��\rH�14��\0�]�vWy�iu]>�1���Ho߾�U����$�����k���`�9�:]�.\'\rUq�=y���/<7q�DӡC3m�4�)a��OSML\\YY�q\r���Č��_}��s;u�Ts�]w%�����%��G�@ٶm�M�A����+j��/��r������j�m�c��~�\'�\'V�s{)�v�Ygu����m��������ʍ�?�����{�5۷o���M�6��X��þ��z����s��{c��&��ӥ�_^���&�f�ķ��\"�＾�����z�w�}���9�J�栓AJ�5?XP\"���vۭ���Dŋ.�ќ@�\\�0ԺWg������^��M������W^��}��ēO>�òW�j>�p4�4��\Z�E4���K/��]�sch�����C����L�Z�Eb̘1;Į�Us.&���!��U����>��U���C	���=C�4�N(��l3�3*����v�a�֬Ia͑��矟o�7���ݰ(C�cW�[���U{�4)��ڨ�CCS��n߾}�;.���7�~���%A4Qq(��Օ���-[���j��Ш���n՚��ܹSƏ��.%���d�\Z%e�Y�ƙ�I�+�i�ߨQ�̢E��y�T�(�Ѥ���yyy�����DC��xQ�N�������X97\r]&�W6^e��6�o��*\\�8�����]tQ�.� �_p�G:W���@�q�ƚ�4Q�LC<5�S]��=zt�����o���P*;��ۇؿo���2ۧ�m����^x��ڧKI������:Pնإ$��g�	�[�ՇzN}�/����.X�ｪRU񤹾��B\"8�����2���0�1�rss+��wk�������ꫯ��n��� 0�BX�˺h�|��βs��:��g�[��s����FT�\Z|�x%2�߯����;�̛7O뜝�3�⨶_�6)����W�K�:Y�틻��y�f��U���qzܥ��x�7CJ~(�?��\r%6����1��Zf���/x�����7Q,��:�����D�ׯ��p�ҥf��N��X��`Z_h�~m�_��_��5ܾ��9Z߸T��Q�Im�4M��@	ZŇ�O�jf7�����=��s�?���hд˗/{��iHP�˿Os��k�i{p�Ov�.�5�n\\��n����}��碵q��\\;��h��[n1�\'O���I+r��j#!^xaȫ��;n��5�W����q�B��Ac�γ�CҐ�$�41����/���Y�G��\\�j:�N��\n���]������\Z�-\Z��,;�1���X���r�:����n\"��+��\n5�}m����T�j�S��D��t_pKmkÇ�1b���:h�=��#}X��S٭�Ě�ӵ�Og�����`:X�3�8�Y�k��(���}W˽�A}��y�~�dt��#�誛n�F�dH����\'b��\Z���^{9��	1-#-��u�D�4]�A\'�tBM���~�ɩ�P�zp5j��1Z�+洮p�!4�T����4�Yݓo��MU�������V	z�W�>U��W�ږ���=)(:�>}�sB�u���Ħ�?:٣����,)��Ɛ��q�]�[T��d~s-3U6�9���4��SO=5�~�Śf@�}X���PҺ(ٮV�1L��mS�=s�=����{�c\Z�I=wj�pi��jEM?��N�&���:ӛ�=�I����۫W/�$�e�]�hj=�u�{Q!7^A2\rI��D��ճ��VBv��Ʈ�G��ƥ�ݸ���t�ϺDgۚu/�U+��=\n���U�����Վ�j~��G\'�|�7�v\"ܕpe��Hs�\0h����P-�tkw�&p�=͝v�=�4�d��@Cя!U���K���&��j(:�V�M;��k5|X�/((p*�4�VsP�Wgc9��QK��r���U����=�ͬo\"Mt��Сΐ�Sv�E66~����:�3���ӟ����C��a�0��1և5� ��|���) Q��kg=�^cҁ��WbD	%�t\0��1U�(Q|�X�Dw���߿j�*�siݢ��dW�%0����*�_[�lk�1�� \Z�}��u���m����PrA�ň��O�))��\r��O�b�G�`W?�{��������=��;v���u�^���̙3��zZo�.ѐp�Ɣ)S̠A��Z\0+��Ϧ�I`��*It�}��~Ӷi���w���z�W�\'�B�2?\'�5�x�]�F�d^S/3Š�ޫ���i��9�u�br֬Y�	`ſv�s���ԺH��u�[���b&�\\ZN��BE��\Z1b��B^]XIQ-�N�����}���駟�l�?�F�}�7;q�V���^�~��tB�-U�1�/�4$1��ݢ�/u��gw�u���8�}tfCg$��6�Y8��B-7��8���=pQ�Θh��Ϯy���9:s�D���4�vJ�Tq�����h�	��>��3��h��\r\\s}�����n�`Xک�?%��7���\'�gRbV;A�D�{��ߩ3��Eg�5�(�b�������.�>�8�J�V�� �M�ԗ4={��Z�x���y���|��\Z���J�{�D���o��������|ߵ�Vu����o��>�w/\\�\r��s��t+��^Z/4��#��}\"F��]w���V�A����_;1����u�>���:^\'XT��$�����U��=)��X��7ި�l�D��=��urN�h��\n����褞����;\'�oZvJ�(ѯa_�>�K��t�+�\ZѶE��n{#���㧉+��8��߿����d^S/3�o�~Ũ�&�a�.�Զ¥x��z�!\'��SrY��iݣ�8D=��Aю!��T\"M�ڗu�#SE��Z���Ԕ=z��a�W��JĊ���t�*M�Ew����Q��;X�8j�Y�%=W�B�j��[��t�2�d\Z�1��Ҷ�VFs&Դ��;�Uv�@3���4{����ϗ�s��裏n���:{�*�`J`�,p�Bgc�P��t4�_I/�^��t�Mg���Bsb\\}��5���9p��H�\"��C:X�Y;�Q֤��t(!X�|vP;$�G~~�3Z���nݺ5[�h^\r}�(�P,Ū�&�bJ6VW�8�h�i�H�5eɒ%�|4��4�`��o�\r�s[U��e��~�עT��ˉW%\Zz)%15t[\'<�Hs��뻫﹒Y:�\r�_�Dw}��\n$=_հ�$��^��kU���iJq�Ho�1Jz�[\Z��>��?t�L�z��ץy������^�6%Q�n��́�>ּU:�U�LU��6Re�*;���6��Gn�U�KhX����(1��Q%���\n��BIUd����I���XS����ܷ�N�5�2�\n��M�~Fp�O� }6Ť�KGu�3�Y�}Ŭ>g�Xd��1���)+Jn\'LUM��2�g\rL����s��v��C���U��$�bR���T����/�a�����a��Ո.*�H�����\r%%%]�s�+U?��[:v�ؑ���ڍ{؍�ݰV��)�6���������v�o�ʛ���j_s/�c�=��L�Kg��#��Ё��t�lާ�~���Imƍ���S�|g��<������u>���6�.w��條-��FE)�4��mڡ������M�לY�AYp�^nn�c��ZsV��Rg��㎑&���m\\�!��U͙fwF?.//϶;����J�]I�PW��zC;����PO��<Pa?�o�A��X��}\\j�s�ۧ���۲�y�B�%6�\0��*1� �wSU�\Z����:hp/P�Dw��ׁ��ez\\Cƃ�fzns%�$J�����Qk� U��v�dx*&tp��M�h�@�Ձ�[m����uP��h�������1\Z:��5���V�3\r�TUC��$�C��p+��TQ�MIm{t��Q^�����LT�uy���6а@��|�?	<��9���3c<~\"�!�r�-\Z;�\"��i�e�jKU��mV�s�O�	t�}5lX�^ix��J1��c�9���I�׮Lk@5>ŋ;����C�E	6�Y��y���J3%ެ�w���a�s�)A�}���%%�3�-��=vޡ2M�3᎛@2\r	�n��,((8׮4R��wj�ޮ��F�O�;���sd�7�.��sګ����5�n�K��|��Pӕ�W��p��jڹ�Y��]s��J��~���=�u\Z�L��� X��t �^��=�J��O2�P�|3�iV,Ɠv����NQ�pH�@�����i����/�<������S­�PS��i�A�F=�j�O��x������ѣ7�u�M�J�E�ܶwC�i�	����h�Y�}%�u������+S�v�+D����JĨ�W��m97�<V�H�G�D��u\0ZW���UQ�~7���wU�JV�=���aj��Jup��/ڷsd�Y�1�Fí��@p%p;���nN?�$���t�\r�RE���T�jUm�T�!YZ������\r%��RrE��vG\'�t��4\Z\\!��SGm�1���iᏩ���k�e�SN������?�LE�ƚ�9�/Q�C���}Zj�_����`s%҈����{ ŕ��FU��;:9\\W�N#8�e�U<��ZW)N��Z�)��`\r�iH��g�W_}u���ۡ�~�J�n��^��tw��J]�m�R�\Z���x���~5/p��Rd��	�胯��\nL|��A!&��N�v�\0\0 \0IDAT��A�6@�;���\'b���D��*״��\rT�bp2ͽ\Z`�8�\\��ƪ=�ȷ;߽Ǐ�yyyy�/��΄�*u%O���0U2ͭ^�����R��W����vg��	&<�	�I����A���ֲP�*�4D�=Q�H�o����q�jh��/�����	��O�h���ׁ��p\'����*Se�[e\Z|�<���p)=��s\Z歊M�<A|}h���R�\nD\'g�$Q,�E���Q:p?w�04Md���KW�V���qL�u��,�4�1q2������8���j5���pb%{��tU�W�g:��5ϟ*-5P�!��\"	�lR�Q\'ci�U��DJ��9m������M U:����Wv�t��Z1�+�j�EI\\�߬m�b��/�G2\r��\0NK�2o޼���w�������z�tQ��-�f�]!��_��$֖�v@t6ŭ��{�x�p��Dg�T������ۯf#��%�|�����ޚJ�p����q��5����TM�Ўq�����I�*�4�Og~�����b���؍U{`R����W_}�������簓��[U,�C��]Ѥ�v����u��j~\ZM\0�en���)Ç_o������P�*S�a�~��t&_�:HuϺ+���؋-�a�oW}ݑ>_�f7!�u�*�tu=U7)a*\Z~�d�{Q��1��x�w����)\Z�I�E�I�I%��ɺ��q%�t���o��QŃ*~T	�+W��A�&Jк�¥j���}��1UE�W���h{���jd�\"1u2�9��������zC1���&�׺&p?�=i�a����/d�$�����6JnI�̏�\n�dh�i�\'�B	Y��zw;L����*<��*i���ݸu/X�ĬbQ�\'xJ�LC?~|ѠA����#�F��g�\\�`Aٖ-[~�Z���v��n,&�z��{����p��{ڹ\r<�W�5�f����qwT4	}� �����Nq���s��Z�0>�\rf��؏UB��w�}�#{�����/�\nu�E�+iX�a��6:�ְU�i~F\r��k�\r��{������ٝط���c|�#�N}���h����ѣ����xW[er}ݵ=_��p[�M�jUι��^{���W5�*�Y4N������u�D�7����ؚx=�j�:��J�U��h��K/��l����T}����!��I����y�*���U�5p{�m�*�4��.zn`,+��R�/�b&��M\'�T!�u���,�p^�AU��k�$N�5�2SC��J�餁�A�/��3U��:Z����c)1�*9m��|S���J�)��,ɴx�!�.8S�+�D\'k���S\"L�(%j�)|N�U ��ܓGZ7j��&۴�Ih7ɧ�HC]�y�Ļ\\bW6��������i���\'��s	�⭟f̘���ѣ!Kg�y��B2�P4����e>>�ӧO\'�c�CBMC4�FC&��3%Nt��<%Xu�O��T�	�3Æ\r[i�޷�wլY��~B�x��WSl��\'�w�~w�Q\"���R\"6\Z�$\\�>#�Dx]�uq�H^W��R*��+�;ַ�CM��ve}k�(b(64�U\\ه\r��4Ľ	&L0`��ɓ\'o�߿Ϧ�=S�L)ڰaò�+W���\0_T�֯_�c>����}>_�뮻��eJ�=���;=_���4�P��K�jJ��RJ�w�ygњ5k>����DH�ţ�tRaZ�w���;��ńT$	�PC,#��km�+��0c���Ys��J|�HK$$Ӑ�ѐ��z�޽{�ك�F�\r���`��ɓ����\0ĩI�&2�/����G}��aÆ��y&L�����_�窢��{�������U�V��\0\0\0H`)t�*���n|���W�^��1�[�7r��2��{�=�ZDo@���*���\',^����|��e6���o���˗eee\r �\0\0��H�!aL�81o�֭w6lâE��5�{.]�t�ޯ���x�\'\r\0�3�|+����z���ot�Ը�������ڌ��c��\0\0\0h8�iH(yyy�[�n�YW�\Z;v�|w\"�]1q�į���۶m�����\0�CI����K\n\n\nf�9�|Wj�<�ȧ_~�eZFFF?i\0\0\0Ɂd\Z�*�|>��ӦM[�����������_|����\\s��)S�l��s�t�*\0$%�Ǝ{�O?�4�����d���O=�ԇs���޾}��\Z>J�\0\0$.@���9��͙999��;���?��~���+<�S2���.;vl���ٲ������d�ҥK���G���۞۶m[m_�Bqq�8���7nܸ!��~��9�G���ܹs��Q\"��O?�;%%��ĉ��E\0\0��A2\r	-//o���|���x��_-Z�����������.��?z�?\0H\"/���Ճ\r�>|��#G���U>����}��O?=��x܄	��{\0\0\0Ʌd\Z�������_�\r\0���7���G����ѣ[�J����ӧO?\"%%�ܗ_~��^\0\0H>̙\0\0�����lYY�uw�uWŒ%Kvx�7ޘ8u��4G��/�<��\0\0HN$�\0\0\0L�0a\\EE�F�\Z���o�u�{��&���b<wҤI?�K\0\0\0ɋa�\0\0\0At%��<��#���o�o.\\x������Kz\0\0 �Q�\0\0	�l۶���x���͢W\0\0\0@2\r\0\0 �	&L���l�[z\0\0\0B2\r\0\0����%�\0\0\0\\$�\0\0\0\0\0\0��L\0\0\0\0\0\0\"D2\r\0\0\0\0\0\0��4\0\0\0\0\0\0 B$�\0\0\0\0\0\0��L\0\0\0\0\0\0\"D2\r\0\0\0\0\0\0��4\0\0\0\0\0\0 B$Ӏ$��x*�^/���K!�b\0\0\0H$Ӏd����,شi��ʴ<CH�B|\"�;�1�n�U>�\'f���T���1DC�P���H۷o��nݺU�D�mذa�ݐL\'��l1�8�Y$�3�1���������mG���o��\"��!b(&��X�@r��|���[:#�V�XQio^%��l1��D\"=�B�.����>������6|���o��\"��!b(�L��Yg�5����e˖-�7��������o�<��ψ!$[!>�H��H���xd�ʕ��O��_���\'b�!b�\"�b�4 �x�ޛ�qxViii	������6f��0�B����������O>y�=��zŊ,�(��ϟa�Êx<CC�1�H�I���^do�٦���u�H�)++۰`����ǫ�r�\'���1��D\"=����N�WTT*((ؼq�Ff�����~���=�׿�\"��!b(֤�X��2v��%������_ee��۷���x�&�dɒO/^�����3�8c*1�d�!ğq�ƭ��+�Y��ܶm�Vefff�+�ßH����~{�Yg͎���ۍ9�֭���OfFF�`�����v��x�b�\"���XD2\rHBJ�\Z4�M��~ZQQQvyy�g)))���Q;��K��\Z���V���~]XX��x�b��y��o`\"m<�!bɹ� �޼)���n|�jժKlܔ�i�&��iR����\n\n\nN�l���#��!b��D���{��v�v����mGۖI�4X�����,�^M��!b�e���RRR�����;.�ҥK�����>��\r�D�ƍ��z�֮]�����4$&��v���ɴ����ܹsQ�N���m۶���\0hx�nذ!_W��$ߚ�(��\"��5��6�|���椓N2��C1�d\Z\0\0\0�Dz�H�D:�C�C�1��s�y������3Gy$1H�\0\0\0\0\0Ĩ������^�F��卤G��ZX\0\0\0\0\0\0 B$�\0\0\0\0\0\0��L\0\0\0\0\0\0\"D2\r\0\0\0\0\0\0��4\0\0\0\0\0\0 B$�\0\0\0\0\0\0��L\0\0\0\0\0\0\"D2\r\0\0\0\0\0\0��4\0\0\0\0\0\0 B$�\0\0\0\0\0\0��L\0\0\0\0\0\0\"D2\r\0\0\0\0\0\0��4\0\0\0\0\0\0 B$�\0\0\0\0\0\0��L\0\0\0\0\0\0\"D2\r\0\0\0\0\0\0��4\0\0\0\0\0\0 B$�\0\0\0\0\0\0��L\0\0\0\0\0\0\"D2\r\0\0\0\0\0\0��4\0\0\0\0\0\0 B$�\0\0\0\0\0\0��L\0\0\0\0\0\0\"D2\r\0\0\0\0\0\0��4\0\0\0\0\0\0 B$�\0\0\0\0\0\0��L\0\0\0\0\0\0\"D2\r\0\0\0\0\0\0�P\Z]\0\0\0\0\0�>�/s�ҥ7���\rڼy����^���i ������XעE�9�����x��+@h$�\0\0\0\0\0qa�ҥ�~�嗏WTTdw��ը�n�ڤ�0誡�^������ƍ�+..>㣏>�n˖-��>��|z�k\0\0\0\0@�[�lٔ���g:v�ݧOӣGӶm[i����ئM��{���>�E��ݏP��|p1�}_�\0\0\0\0@,S\"Ͷ�9���{hH\"���v�}ws�Gd����4s����g$�\0\0\0\0\01KC;�,Yr��TN�Z����|��h����f��M�Ɵ�FвeKs�ᇷ�x</M�>�Pz�F:\0\0\0\0�t��/��r��v�\"-�i����Tm+�������Q�1�m��AQQ���K�.8�3N�7�V�����x<F����<�:Q@e\Z\0\0\0\0 &骝�؀������i�ݾͬ]:�l${�g�����g̘q,�ѴRRR��q���\0\0\0\0@,*++�+v��#mK-�9U���ӥK�b{s=Ѵ&L�0���D��\"z,:H�\0\0\0\0b��͛�;��m��b��lD�:uҘپ�D��\\��eN��|��� �\0\0\0\0�I��噭[��#b�]��Moz���|��u<�)��x<��� �\0\0\0\0�I^�WsH�1���艦���=�ެ��)-�xqq�lz+J��\0\0\0\0\0�ҳڇ},-��6ħ���\n{35��[���2k֬*z+:H�\0\0\0\0�R�Ǜ�-w�?5=�t�y\"�x6&ԝ>���㤤��JE�4\0\0\0\0@\\j�� ӲӁ!�o��:qKC8}>ߦ��=O��)Z�r�Lz)zH�\0\0\0\0����-;�W�u���!��\'�:m���U<�]$�\0\0\0\0\0qg[�\Z��Lٚ�vz�|�fٗ�r��+��7=�C��;�E2\r\0\0\0\0WJW�5˾z�lް4�s6���9Ϙ\r�>5>��NC�Y�j�4{�:����z�S��\"�\0\0\0\0��4[>o�Y��k�j[y���n�fV}��Y>�ES�i%�����N���&M�TF�D�4\0\0\0\0@\\P���p֗*�\n�x�D<�a�4���U<c\0�4\0\0\0\0@\\P�ٮ�y���\'33���gdd̢W�/�.\0\0\0\0\0ă^g�O\' ����V8p���햒������^�>*�\0\0\0\0\0\0bЈ#����ֱcGco;��O\ZB�D�4\0\0\0\0\0�3lذ˖-[����ǔ��~��|��)�V�z���w��d\Z\0\0\0\0\0@QE�ڵk_���S�<�H�#�8��t�M�6lKB-�H�\0\0\0\0\0ĈQ�F]�|��q7�pC��Hsv�af�СNB��믿�ފ�i\0\0\0\0\0\01@������t�M;%�\\�P��[R���&^q��k͏d\Z\0\0\0\0\0@��\Z5�r7���YmT�v뭷��_���+ϧ���4\0\0\0\0\0�(\Z:t�%K�.���u%�\\J��v�m-�^��8�^l>$�\0\0\0\0\0\0�Di%%%�/6)%Ԇ\r�����z���/�7��4\0\0\0\0\0�(>|��������Hs��|f�h�b	��A2\r\0\0\0\0\0��)�VTT4���\rDJCC�\rFB���L\0\0\0\0\0hF\Z��&��#m���5�6�!�����0�Z�\"�\0\0\0\0\0�L�{��W_}���E	��o�=+55�UjM�d\Z\0\0\0\0\0@3h��\"��gvJJ�d�|6\r�i\0\0\0\0\0������Xz�I�]�Ћ\rDJo��~���GB��L\0\0\0\0��ۻx��zo�k����8����@ݲ�.)yқi9\0ae��u�]��}o��Y��Yi�E*�h%`�I^CLєQe�\0�9{��b�{�spg�G���g�������nz~<ϳ�q���\'�>�h��/^�8�����{<��3M>�`��l��s�eۮڼysٶ�СC�M�Q��R.���=���i�h��\r�����Z�L�lY�5\0\0\0�����d����\\��1�>�l��c�%��G�|>��X��;��|�+ɏ~���#�H����=�y�vǼ���Ƀ>�\\r�%�}�ݗt��5����>���O֯_�<��#ɏ����r0lذ�Bጸ���������w�3����FZK�@��.���몆�����?��>a\Z\0\0\04�����UW]�p��رc�#F4y\\�~���}l�?���ɴiӒ���\'���{ͬY����w�#�?{��&�;�_�hQ���3�<���	&�����Yg���m5|����Bahz�t{{.�S@�\\v�eg-X����.��̓���s���̏9��C���@m�	�\0\0\0`��o�9�N:���cdQr�W$������?�)�J����$���\Z��ӟNF��owl��\"T+�h�~eMMM����t�x�P8P�4-F�m	�:����������[��V���^+Pk�4\0\0\0�x1-3���bi��Ȏ9�l:����|��7��o߾\r��c�x��]�zWvƌ�k�S>?���\'��O2gΜ�W�^�B��ƍKƏ�e�=��������wޙt��99��s���k��kˀ��_̦���qW^?lذ���z:��CW/\\�����FA��wߝ�m)����c���g���si��s�e�����kǦ�3����a���\Za\Z\0\0\0{�+V$��_��.�(����L�:u�����)���+�Qh�����b�8��c�;&^{�!�$\'�xbv����~��O~2��\'>�\\s�5YX���g�u��Gg�<�i�G�\r�Y7w�ܤK�.ɗ���6i�X�m��ջ�W�I5�8��S�����~����߿���{�w���cƌY�`�	�\0\0\0أ��h��vZv���΂��\"`�\0��&;֝;g��B�n�\Zn7v�a�5��W�<蠃� �(F����kMN%�ֶ봵��^}��d͚5[=^H�J[(��=�����nʔ)מp�	�VZSf̘�l�ԩ����TAڮ�\0\0��_~y���[=6jԨd���]1\n)F����ٔb�S3cݴ�H�G}49�䓳��5%Fε�#�<2�>8v���7n��冤���otX>ݚ�w:nܸ���Z��+��Su���p�g�ksS3C㩝UUU��}\"H��뺧58b���x�a\Z\0\0\0lq��fW�l,B���u���>ꨣ�Ql�5׶u�\r7$���w�o���3�����]�)��rK,�_6�3f̘�t��?8`��o�����B�0$���p���Z}�uړk)=�w]z饛o�馻�}�����SO-Kk�����n�\0\0�˗/�nʹm�6n����2\Z�nݺ펋��F(���\'����\Zhݻw�F�M�0!9�s�:>.l#��b��)���nm5eʔ�tw��-.20 ݝ�n��S5%��ѣ���K�N�w��U=_|��%�F����a\Z\0\0\0l(^$�hۑj!�����{o��~��]���/�.&�X�L�����/�V��@�f���[��~���gS<���&��~z6������C=�,�nܸqS�]lqe���/61bm���׿��s~�����⋻�e�S;G�٣P(�ZPN\0\0\0P�&O�\\8餓4D��+�\Z4H����=�܁���]r�%]w&P��5ӊk��7?���>g��Th\0\0\0��u�]w=R[[{�M7�T3}��V��X#�x�AZ��\0\0\0������7m���ѣG�<��3��1\"-.6��jjg��\0\0\0��-����_}��P+�HKo���ڭC�\0\0\0Іb�gj1B�駟��ѱg�uVö#��\Z5�떩���V$L\0\0\0hc��M;\n��>�솭9ũ�����5���	�\0\0\0\0�Aj���gE�6s���]y��S;imC�\0\0\0�NbJfj#G��)��w浍/6`jg��\0\0\0���jkk�5jTm��Zi1\"�\ZimO�\0\0\0��b�gj7�p�槞zj���}����9r����L�l{�4\0\0\0�2�Z�P8gԨQ��ӧ�m�X#�ꫯ�L��i�i��\'L\0\0\0(1e����믿>��On�5�j� ���\0\0\0\0�H�P������ѣsӦM[�5^#�����Y\0\0\0\0����=����=��־��{���Ⴔ�gd\Z\0\0\0@�@-��fѢE��^�V�i\0\0\0\0e�P(����\'L\0\0\0�	�\0\0\0\0�D�4\0\0\0\0(�0\r\0\0\0\0J$L\0\0\0�	�\0\0\0\0�D�4\0\0\0\0(�0\r\0\0\0\0J$L\0\0\0�	�\0\0\0(�kEE!��k�2�����NK�0\r\0\0�2UYY�ںu�4DX�j��t7SK�0\r\0\0�2եK��k֬�e`�ҥk�����\0\0�IDAT-�4\0\0\0�TMM͵K�,�-\n\Z�}�[�r�	��M�4\0\0\0��I\'�4�P(<�x�b�юfϞ=9=�\r\Z��\0a\Z\0\0\0e����y��mX�v��h�W���ʕ+O�����\Z�w�4\0\0\0�֐!C^���g<��skjm+��Y�f���.H��l-\'L\0\0��\r8𑺺���y晵,Xi\r�V7o���?��g?�޾$m�5	��N�\0\0\0�rw��2bĈ�֬Ys��ŋ����y���\"׭[�}r�\\�~��˗\'\'NLz����^e�=�����+W�y�ܹOϙ3瀍7vN1x�੪�}{��]l�Ξ={�i�5\0\0\0AL��ݤI��-Y��t���n�����O��̘1#�?~��������t{=ݞO���\04O�\0\0@�2x����nfG��Æ\r�*�]9cƌ������*g:>k�\0\0\0@��i\0\0\0\0P\"a\Z\0\0\0\0�H�\0\0\0\0%�\0\0\0@��i\0\0\0\0P\"a\Z\0\0\0\0�H�\0\0\0\0%�\0\0\0@��i\0\0\0\0P\"a\Z\0\0\0\0�H�\0\0\0\0%�i\0\0\0�}C��<��]S���ƍ�\'G\ru@F�\0\0@Kt�+*fj��p�4\0\0\0쾪����º_��h����*5Tބi\0\0\0�r�~����\n��Ú����qO�ǩ�v\"L\0\0�R(~������r��Z�fjh�R��ڗ0\r\0\0\0Z�^{�55��4��t[�t�ҩZ��j(�˭��!��P��\0\0@3fLM.��m3O��\n��}S�L��Z4WCi�<��c�P��\0\0@*\n�6�T6=�������U3�UPC�O�\0\0\0-(��\n�\rM<�%�-Y�����P�[��㹔\Zj�4\0\0\0hA1����b�6�x>lz��P������P��\0\0@���k|�P(����֡i�Lܶ��Py�\0\0@[�l���ny�~.�������Z�����\Z=T��ʃ0\r\0\0\0ZXL���rێ,zx	�Z������P��\0\0@+�����\\���\Z��\Z*?�4\0\0\0h���O4�߭[�)Z5��	�\0\0\0��3��P(̉۹\\���j����P�{A\r���&\0\0\0���ٳ�޼y�6m��\r6����\Zew;z�\\ҽ{�u�6�K�.�w�qw�Y�l�B�r�ܹ�R]]}^Z/G�_����kf���ɴiӒ��H>��r��B�n�Vt��uZmm���������߇\ZRC��g��\0\0��O��jjj���׿�O�>�=z$��oRQa��`���:Y�vm\\0ZԥK��|��ґ�\\s������˯O�f��f5�:5�t������oܸ�!C��~3�9Ր\Zj	�4\0\0��͘1�Kk֬�i߾}+=��l$�g��������={���~��������+����L�fڦf�͛��P(?�S~�f�3�!5�R:9�\0\0@[� �����c�9�S�޽uh�@���իWnѢE���_�e��~��\';���$��8��5Ӧ5���^����;o����bG��!5Ԓ�i\0\0@��8q����<�c:��~�=_(䓕�K�<wO�ڋ%�_}*)�k��=O;��a펮]�&={��-\\�p�g?�����_-��;��͛7��4U3���%K�zo����$���1ٰjn�m���s�[�fz���m�ҥ��1�;����PCj����\0\0h3{�ׄ�}�vi�C��p���&%�Wf��6�M^����{��k{�wr�GtI���7����bZ^s!���H���I����B�.ٰ��d�ӷ%5k_u�[�f��ַ�;u��Î��Ր\Zj\r�4\0\0�ML�4�_ڱ=2�*jJhkOo�5Kf&5�h��_QQ�ɓ\'�ܿk\\q1�o�fbc����=���S��r����ܹ�:Bͨ!5��i\0\0@��֭�9䐮ͭU�q͢l�gsb	-�O�>]���r�����������R/-렃Z����h�[\r��� L\0\0�DڙңG�f���U;�������\n� r��6l8j�5S_�^�ȁxX��Ѿ�\ZRC����	\0\0��͛7�-��F��g�}�|�-��~��J5S��pH���Ѿ�\ZRC���4\0\0�M\n��� e���y(�����5SV5���!5�*�\0\0(]����;w3���kF���h-�4\0\0�,t�yD�ρG5��^�ޑ=�����s׽�{�S��I�#�k ��B�\0\0��\\�\"9�ݧ7��!�|2���U#��}z���D\0��{�{4j�V!L\0\0�F���M>^�i�ơ隩ݨ^PC�)a\Z\0\0PVΟ�,�1���N�e�bޟ4\r6�=Y��mI���o���/%��yv�!ZZgM\0\0\0��ښ�ɲH���i��|�����M�:�}�����޽5�l���i=LL��6���̛vs����o�P6��-A�\0\0��U��%�_���4�&;���f���~J�����ab�в�����6�_����AG��T�{�FTCj���o\0\0�]Ĵ�e/�_r�ָs��Kg�g�Aj�!Hc���\Z5D��\0\0�\"B��Q��iD5�^PC�9�<\0�vS5c�R�{����!ڝ�i\0\0\0\0P\"a\Z\0\0\0\0�H�\0\0\0\0%�\0\0\0@�\\�\0\0\0Z؈#���;3�˝���n}�m�t�I���Baf�ܟ;u�4n�ر��\0t�4\0\0h!Ç?3�}=�ϟ���6qHe��5}��������\r6%�[UU՝Z\0ʟ0\r\0\0vӰa�\" ��P(م�H_7 }�����~	Ӣ\0P��i\0\0��:����\'�|~��c�:uJ�=����`��w�3�ٳg���&6lHV�^�̛7/�6mZ2}�����������f>�B��\0�|	�\0\0`\r:��w���Nq?B�SO=5<xpһw���k�����CM>��g��C=���w�K����}\n��Ç�����U@�q5O\0\0�[F��W(� -�k��&.>�d�֔������4<���χ~�V��#L\0��k�u���\'� ��J��ꪭ�����w�q\r���}����߭����\0\0`g�OtEŭ�5�bD�7���lM���?/���Ɓ\\L�����2���\0\0\0J7|��3���?��X#-��\rҊ\"P�袋��ݢ��\0P^�i\0\0�s�^��թ�͉����?�p�P(|eW���s�8lذ��t���j�=�0\r\0\0J4bĈ���G�v�ʝ��c�XҥK�����F��f�����:|��:tmEE��������k�ڵ\r��.]����5ܯ��In���&_���/����x����n즛nJ-Z��kF�\Z��w9rd��믗m;k+�Û��Z�f���<���zk�y�撿۴iӒ�￿C��T3�z�\'�sՔ�<�����I�&%/���v�YE�/n���Ν�<��s\r�W�X��1�<󌿼[AgM\0\0\0����;3��es0O8ᄤW�^��9q�����}�_���CgG���!����W�������.\nI�w�R_��׳���[n�%��~�],b˹L�}��&_7~����>�����R�\\����/aw��G\'g�yfr�]w%]�v���o�M�m,�b��[YY�TUUŴ�, �����C���z�bz7R���7{m����::��������SO=�|��n�G}4ٸqc�sql�/~�5k�$�����j��̟??�ѣGv��L:w����K���l�:+z��W�)��z׻���??=zt��c�eW�~�;ޑ|�k_K&N������&{�x����/g���g?K���/$p�V�g�����ɓ��;v�V��{���_���=���N�\0@��N����\'�xb�~V��0->�!LK;�K;��Y�b��{O찖j����H�#�8\"y�����x1��!щ-���̙3��?>!.������/��}_{��\Z\r\Z����F�Dx׽{��~�2eJr�WdaKt|��#��N��|��ɟ������D������IN>��vk���|>?dKm��I[��q��%�sL\\���3#)���E�Q�>��fu\Z�Ϛ5+������-��Oҿ�옡C��{��5Ӝ8_�V���;�3�����_�>�����(�����-���X���ݎ.´�l�C�oh���G?�����oO��暬F�n\Z��>����P�ǅ��\Z��Q:a\Z\0\0��_������V��������wذa����Դ�z�SQ�����B��_~9ϢC����.Y�pa6E*:�qU�p�m�e�Yt~cz_8��ӳNmctP�EG��;����-F~���\"�����E�5�bŨ��,�vE\';����_�\"y�{ߛ��~m�>�~eڙ�э�K����:hOf��|�v�i\r���b���;.��&�؅xߟ��\'�w���ld��ի�	&$�sN����iZ�B]�G��1]?µ�oڴi�ߦ��Q����g��\"�}��������������W7�xc�G�6~M�u8i�4\0\0(]�⍘�ٚ�y���폻�>Æ\r��\\\Zo۵��JtlCtn�ӫbJT�GpDg�ӟ�t6\r+F��oK�,Y�=֔����F��u��e#M\"p��1��(>?���h��faM���^ܿ��ڤM^y��{��qWߣ-j�-k���g�8�����M��x���4����e}�[���;ň���X��G�~bTZ|Χ>��,���p�����Bc�`+����c�Z�c��_���ߖ��_��_YX\Z�GM��3~wN9�l�Z�q;�uc��[��Q�EM�ܘ���~��A�X�p��;묳�9s�l��k�i\0\0P���tt�ZS��j!W�K���[��i�����(��k[��5��U��2�a�g�\\�c���M�*�֭[6\Z%:�1$��EhW\\7�(:��I��&��^���\'�x ����Qjm��{m�Gʹ����#��C��\"H����*�z���c�q�1:��#�̞[�`A����kR__�&AZG�������v6lؐ����V�i�aO:�l��(������w��y���m�ߠz��^��կf��]���S�C�p��G?�0�1�Gl�<a\Z\0\0�.�8d�Z�2h�@-:G;P�eߩ����\\\Z��#�l�tjDX�5kc]}��[�i1M/F�D��b�1�(�����|&��@�\0�Nr�8���(.T����X�(F)�ZDg�q�V��R���Tb�Htz�c�[JG�%�T��R��o�6�\n�G/��j�i���+��6{��l�Rq��Ci8.��Ũ��3��Vc��T�r�fڿ�b��yV������?��Q���U^��쯼��l��?��?gu�|��>��-[��.5�\"|\rqA������)1e�8m�9�\07ׅd�	�\0\0�tK��q#Fh�f����W��Ws�\\,��o�?O�X���`mܸqW�K�}�_l�`$�����g�4Btd�s�m�(��dF�S��ut��n�![L�O����Y\'7F$�X��A�ύi\\�úE�����{���W\r�E8���[S��w��g���7n�Lmm޲��^�Ֆ5��3^W0\Z�L���ȴ��B�:,����ZG�����7cZo�CS�/�)��Qa�Ї��R4�\n����U�Fq���{�m�mM�.ۜ�֔��x�2���\0\0P����~Pk�5�\Z�1~��ӎ�EK�.����\n�[������@�i�c��tdI]x�ɳ�>�#�{l�D�Q��nr�aS�b��\"��-��5�Bo1�3��������ŋou|\\q�8�0�~��Ϧ\n���������1c��젶�6\nE6�r��o�zi���$#)�>�i{q;���xdZc�x}1p+nQ��+�����b#��җ��|����B��rk����b��XS�Wq\\�V��&hN����ۦl;ݝ��\0\0�Di������Ӛ�y��ϝ2eJ]ډ�;��^��ߒ>��t�Q��-�vKJ�j�G���_��ײ�g,�aE�1�#�{6gҤI�B�Ņ����������#�H��U|V,H뭷&\'�pBv�W\",	�y\\!F\"��E8aߘ1c�K.�$5S����ڭ�vT[��=��������3��x��q;^[�ֹ��Ø6�x���Cs���L�)Nˌ�c�=�M��*�oL�6lX��]�@tW֡��W�-~V��V��mG�ňǸpD�&�!�\Zm��s1���c�\'\0\0���;w�/�����8�ʕ+�5�ZZt��~��X�(�塻�;6��N�>m�:t���s�\\�#;|O>W1�����/\n��{,�#8⪉�{n�nZc���O>����l�!J�u�5�lu�K/��uN#D��~�zh����l97ɵ�^�}�X�>��&�C|�Xs������w^6����\'�V{�����l�Ps纸�ߠA���M�E(r�m�%7nl�@F9ؓ�\"غ�;������­���z([/-�~����ctZ1�\0��{�M.�袦����~Lǌ0�8R��O�j4�a ���X#\'NL~��4��k�E��/��ɍ7ޘ��W�jx����#��$-\0\0;!�L.\n�*�1pĈ��!�<�bjz�#o���<yr!�dW��[;���vԑ~�c\Z��#�v��Z�5�\rʩ��9�1*�-/ ���L{����Ξ�#�PS�a\0\0�9?.ވ�-�x��<P(���r?��m��E�K��l繽�4��|v� �֩:�y�\0\0P������ڔ������J[K�)]7�xc}>�/����%K����\0P>�i\0\0��>�n��F��W���@-��ѣG^}���J�չ\\�X�[s@��\0�N\Z7nܼB�+FgAל9s����j��|�����Ϛ5�a�\\.waUU�Z\0ʋ0\r\0\0v����c��ɖ@-F�}���NƎ�]��q\\\\l���/o<\"-)\n߮���S+@���%\0\0�q�ƍ:thMz��\\.�3�P{����p�	ɉ\'�����oOz�����T���͛�<��ӱ�7m���]�V�n�?~����$L\0��#Ԇ\r�D.��y�P�E�6}��l{�g�L�5�L���&L\0��k���AÆ\r;;��}�P(؉��=5�n[�t�.6\0\0�O�\0\0-dܸqw���G�qx>�?�P(�cz����\'�*�-���U@g�ۣq� \0� �i\0\0��Ǝ�(ݍ޲\0o\"��	\0\0\0\0%�\0\0\0@��i\0\0\0\0P\"a\Z\0\0\0\0�H�\0\0\0\0%�\0\0\0@��i\0\0\0\0P\"a\Z\0\0\0\0�H�\0\0\0\0%�\0\0\0@��i\0\0\0\0P\"a\Z\0\0\0\0�H�\0\0\0\0%�\0\0\0@��i\0\0@���r��|^C��-��OFEEEA͔M��Owu�{�!5�*u�t\0\0mԩ}fݺu\Z�TWW��x�ܿgee�kj�<�Z�jv���Ѿ�\ZRC�����	\0\0������W�X�LK�E�vy>��X�߳K�.S׬Yㄕ��K��MwS:��VCj�5�\0\0�6Q(�I;S�ӽ�hg�/�Mw��������vɒ%�j���[�r�	�fԐ\Zj�4\0\0�M<xf]]ݓ,X�5�O��jkk�:hР\'����t�I�\n�³�/v����ٳ\'��aqG�5��ڂ0\r\0\0h3�|�,�f͚�Z��UWWo�?�^�y���|皚���͛�a�ڵN`;X�z�oV�\\yz���Q�jH\r��NN+\0\0�V������gg������ѣ���r/��6���W=��3k����ڑj�3��̴+V���Le�nݜ�6!ȬY����r_�H5���Pk�\0\0m���o%���Z�t�9���O���G�-\rӊ^y���̙�3���>�k���{jٲeg���~����fZռٳgO�7o�)�tĚQCj�5�\0\0�]L�8������8ใ:������Uj�ݓ��k֮]��e˖�X�|��������!C��~�̍�;w~o�޽x�����ѣO�����53ժU�㊋�P|�o�f�5��Z�0\r\0\0hW�&M����JoH����0m�ե��t��n��Y�V3jF\r�!\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0أ� I����s�\0\0\0\0IEND�B`�',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('750007',1,'车贷测试.bpmn20.xml','750006','<?xml version=\'1.0\' encoding=\'utf-8\'?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"0001\">\n  <process id=\"chedaitest\" name=\"车贷测试\" isExecutable=\"true\">\n    <startEvent id=\"sid-3B55C72B-7DCE-49E8-980F-F0315066E270\"/>\n    <userTask id=\"yewushenqing\" name=\"业务申请\" activiti:candidateGroups=\"2\"/>\n    <sequenceFlow id=\"sid-920904BC-7535-4B20-9652-2E38B9574645\" sourceRef=\"sid-3B55C72B-7DCE-49E8-980F-F0315066E270\" targetRef=\"yewushenqing\"/>\n    <userTask id=\"yewuchushen\" name=\"业务初审\" activiti:assignee=\"${user}\">\n      <multiInstanceLoopCharacteristics isSequential=\"false\" activiti:collection=\"users\" activiti:elementVariable=\"user\">\n        <completionCondition>${nrOfCompletedInstances/nrOfInstances >= 0.5}</completionCondition>\n      </multiInstanceLoopCharacteristics>\n    </userTask>\n    <userTask id=\"cheliangpinggu\" name=\"车辆评估\" activiti:candidateGroups=\"2\"/>\n    <userTask id=\"pinggufuhe\" name=\"评估复核\" activiti:candidateGroups=\"2\"/>\n    <userTask id=\"zhongshenshenpi\" name=\"终审审批\" activiti:candidateGroups=\"2\"/>\n    <sequenceFlow id=\"sid-F18F5A2B-CE33-4531-A425-ABF18973A2A2\" sourceRef=\"pinggufuhe\" targetRef=\"zhongshenshenpi\"/>\n    <userTask id=\"qiantitiaojiaoluoshi\" name=\"前提条件落实\" activiti:candidateGroups=\"2\"/>\n    <sequenceFlow id=\"sid-C334CB61-24F6-4865-B13D-AEBFFD87A2A3\" sourceRef=\"zhongshenshenpi\" targetRef=\"qiantitiaojiaoluoshi\"/>\n    <userTask id=\"luoshifuhe\" name=\"落实复核\" activiti:candidateGroups=\"2\"/>\n    <sequenceFlow id=\"sid-DF1005DF-E7F6-42BF-A560-C269524CE2BE\" sourceRef=\"qiantitiaojiaoluoshi\" targetRef=\"luoshifuhe\"/>\n    <userTask id=\"hetongguanli\" name=\"合同管理\" activiti:candidateGroups=\"2\"/>\n    <sequenceFlow id=\"sid-3B89ED2A-5C5F-4C19-89C5-4C1D26B39E5B\" sourceRef=\"luoshifuhe\" targetRef=\"hetongguanli\"/>\n    <parallelGateway id=\"sid-2C35DF22-C30A-41F5-9AF1-D57929911073\"/>\n    <userTask id=\"diyadengji\" name=\"抵押登记\" activiti:candidateGroups=\"2\"/>\n    <userTask id=\"hetonggongzheng\" name=\"合同公证\" activiti:candidateGroups=\"2\"/>\n    <userTask id=\"fangkuanshencha\" name=\"放款审查\" activiti:candidateGroups=\"2\"/>\n    <userTask id=\"caiwufangkuan\" name=\"财务放款\" activiti:candidateGroups=\"2\"/>\n    <endEvent id=\"sid-1A2B2547-B73B-418F-A8DF-4DCCB525BA2C\"/>\n    <sequenceFlow id=\"sid-3BC6F06A-D481-47FE-AEB1-DF5627713B9F\" sourceRef=\"fangkuanshencha\" targetRef=\"caiwufangkuan\"/>\n    <sequenceFlow id=\"sid-4297773B-04B0-43D4-B40E-23BB78FAE6AB\" sourceRef=\"caiwufangkuan\" targetRef=\"sid-1A2B2547-B73B-418F-A8DF-4DCCB525BA2C\"/>\n    <exclusiveGateway id=\"sid-66666A28-D500-4B06-916D-F44F23F4C520\"/>\n    <sequenceFlow id=\"sid-22ED8CCC-2445-4AE5-954C-56733CAB1F55\" sourceRef=\"sid-2C35DF22-C30A-41F5-9AF1-D57929911073\" targetRef=\"diyadengji\"/>\n    <sequenceFlow id=\"sid-9F686C53-6F4B-46B5-867F-1BFC45678FDA\" sourceRef=\"sid-2C35DF22-C30A-41F5-9AF1-D57929911073\" targetRef=\"hetonggongzheng\"/>\n    <sequenceFlow id=\"sid-F52BFC10-7737-4945-A2A6-D2961FCE89F0\" sourceRef=\"hetongguanli\" targetRef=\"sid-2C35DF22-C30A-41F5-9AF1-D57929911073\"/>\n    <parallelGateway id=\"sid-C6947558-4B64-4B3C-A630-417A72BA92EE\"/>\n    <sequenceFlow id=\"sid-A978BA75-86B0-458E-9B21-7FD7E404962A\" sourceRef=\"hetonggongzheng\" targetRef=\"sid-C6947558-4B64-4B3C-A630-417A72BA92EE\"/>\n    <sequenceFlow id=\"sid-AEE1B50C-E85D-4776-8D83-C9DC49988DE4\" sourceRef=\"diyadengji\" targetRef=\"sid-C6947558-4B64-4B3C-A630-417A72BA92EE\"/>\n    <sequenceFlow id=\"sid-958B15D3-AD10-4211-AE06-17931D52994B\" sourceRef=\"sid-C6947558-4B64-4B3C-A630-417A72BA92EE\" targetRef=\"fangkuanshencha\"/>\n    <sequenceFlow id=\"sid-27BAA4F7-A339-4FAE-8DB1-D5DCAFF7F00E\" sourceRef=\"yewuchushen\" targetRef=\"cheliangpinggu\">\n      <extensionElements>\n        <activiti:executionListener event=\"end\" expression=\"${execution.setVariable(\'okNum\',0)}\"/>\n      </extensionElements>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-08F81C26-E80B-4C89-A3AB-B8DEDBB1E922\" sourceRef=\"cheliangpinggu\" targetRef=\"sid-66666A28-D500-4B06-916D-F44F23F4C520\"/>\n    <sequenceFlow id=\"sid-D03548BD-9389-45C6-99C0-2C7852C28AED\" sourceRef=\"yewushenqing\" targetRef=\"yewuchushen\"/>\n    <sequenceFlow id=\"sid-965CD382-3B99-4246-8DD9-F3050A6E4CF2\" name=\"${_flow_type==\'pinggufuhe\'}\" sourceRef=\"sid-66666A28-D500-4B06-916D-F44F23F4C520\" targetRef=\"pinggufuhe\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${_flow_type==\'pinggufuhe\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-9A44B04A-DC1B-44DC-814B-A05AED8CB220\" name=\"${_flow_type==\'zhongshenshenpi\'}\" sourceRef=\"sid-66666A28-D500-4B06-916D-F44F23F4C520\" targetRef=\"zhongshenshenpi\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${_flow_type==\'zhongshenshenpi\'}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_chedaitest\">\n    <bpmndi:BPMNPlane bpmnElement=\"chedaitest\" id=\"BPMNPlane_chedaitest\">\n      <bpmndi:BPMNShape bpmnElement=\"sid-3B55C72B-7DCE-49E8-980F-F0315066E270\" id=\"BPMNShape_sid-3B55C72B-7DCE-49E8-980F-F0315066E270\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"56.5\" y=\"139.0\"/>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"yewushenqing\" id=\"BPMNShape_yewushenqing\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"131.5\" y=\"114.0\"/>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"yewuchushen\" id=\"BPMNShape_yewuchushen\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"276.5\" y=\"114.0\"/>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"cheliangpinggu\" id=\"BPMNShape_cheliangpinggu\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"421.5\" y=\"114.0\"/>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"pinggufuhe\" id=\"BPMNShape_pinggufuhe\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"651.5\" y=\"0.0\"/>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"zhongshenshenpi\" id=\"BPMNShape_zhongshenshenpi\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"651.5\" y=\"115.0\"/>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"qiantitiaojiaoluoshi\" id=\"BPMNShape_qiantitiaojiaoluoshi\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"795.0\" y=\"115.0\"/>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"luoshifuhe\" id=\"BPMNShape_luoshifuhe\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"940.0\" y=\"115.0\"/>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"hetongguanli\" id=\"BPMNShape_hetongguanli\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"1085.0\" y=\"115.0\"/>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-2C35DF22-C30A-41F5-9AF1-D57929911073\" id=\"BPMNShape_sid-2C35DF22-C30A-41F5-9AF1-D57929911073\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"1115.0\" y=\"245.0\"/>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"diyadengji\" id=\"BPMNShape_diyadengji\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"1085.0\" y=\"335.0\"/>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"hetonggongzheng\" id=\"BPMNShape_hetonggongzheng\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"940.0\" y=\"225.0\"/>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"fangkuanshencha\" id=\"BPMNShape_fangkuanshencha\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"820.0\" y=\"335.0\"/>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"caiwufangkuan\" id=\"BPMNShape_caiwufangkuan\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"679.5\" y=\"335.0\"/>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-1A2B2547-B73B-418F-A8DF-4DCCB525BA2C\" id=\"BPMNShape_sid-1A2B2547-B73B-418F-A8DF-4DCCB525BA2C\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"600.0\" y=\"361.0\"/>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-66666A28-D500-4B06-916D-F44F23F4C520\" id=\"BPMNShape_sid-66666A28-D500-4B06-916D-F44F23F4C520\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"566.5\" y=\"134.0\"/>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-C6947558-4B64-4B3C-A630-417A72BA92EE\" id=\"BPMNShape_sid-C6947558-4B64-4B3C-A630-417A72BA92EE\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"970.0\" y=\"355.0\"/>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-9A44B04A-DC1B-44DC-814B-A05AED8CB220\" id=\"BPMNEdge_sid-9A44B04A-DC1B-44DC-814B-A05AED8CB220\">\n        <omgdi:waypoint x=\"605.9173913043478\" y=\"154.58260869565217\"/>\n        <omgdi:waypoint x=\"651.5\" y=\"154.7816593886463\"/>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-DF1005DF-E7F6-42BF-A560-C269524CE2BE\" id=\"BPMNEdge_sid-DF1005DF-E7F6-42BF-A560-C269524CE2BE\">\n        <omgdi:waypoint x=\"895.0\" y=\"155.0\"/>\n        <omgdi:waypoint x=\"940.0\" y=\"155.0\"/>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-958B15D3-AD10-4211-AE06-17931D52994B\" id=\"BPMNEdge_sid-958B15D3-AD10-4211-AE06-17931D52994B\">\n        <omgdi:waypoint x=\"970.4166666666666\" y=\"375.4166666666667\"/>\n        <omgdi:waypoint x=\"920.0\" y=\"375.20746887966806\"/>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-27BAA4F7-A339-4FAE-8DB1-D5DCAFF7F00E\" id=\"BPMNEdge_sid-27BAA4F7-A339-4FAE-8DB1-D5DCAFF7F00E\">\n        <omgdi:waypoint x=\"376.5\" y=\"154.0\"/>\n        <omgdi:waypoint x=\"421.5\" y=\"154.0\"/>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-3BC6F06A-D481-47FE-AEB1-DF5627713B9F\" id=\"BPMNEdge_sid-3BC6F06A-D481-47FE-AEB1-DF5627713B9F\">\n        <omgdi:waypoint x=\"820.0\" y=\"375.0\"/>\n        <omgdi:waypoint x=\"779.5\" y=\"375.0\"/>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-D03548BD-9389-45C6-99C0-2C7852C28AED\" id=\"BPMNEdge_sid-D03548BD-9389-45C6-99C0-2C7852C28AED\">\n        <omgdi:waypoint x=\"231.5\" y=\"154.0\"/>\n        <omgdi:waypoint x=\"276.5\" y=\"154.0\"/>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-4297773B-04B0-43D4-B40E-23BB78FAE6AB\" id=\"BPMNEdge_sid-4297773B-04B0-43D4-B40E-23BB78FAE6AB\">\n        <omgdi:waypoint x=\"679.5\" y=\"375.0\"/>\n        <omgdi:waypoint x=\"628.0\" y=\"375.0\"/>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-C334CB61-24F6-4865-B13D-AEBFFD87A2A3\" id=\"BPMNEdge_sid-C334CB61-24F6-4865-B13D-AEBFFD87A2A3\">\n        <omgdi:waypoint x=\"751.5\" y=\"155.0\"/>\n        <omgdi:waypoint x=\"795.0\" y=\"155.0\"/>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-A978BA75-86B0-458E-9B21-7FD7E404962A\" id=\"BPMNEdge_sid-A978BA75-86B0-458E-9B21-7FD7E404962A\">\n        <omgdi:waypoint x=\"990.0\" y=\"305.0\"/>\n        <omgdi:waypoint x=\"990.0\" y=\"355.0\"/>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-965CD382-3B99-4246-8DD9-F3050A6E4CF2\" id=\"BPMNEdge_sid-965CD382-3B99-4246-8DD9-F3050A6E4CF2\">\n        <omgdi:waypoint x=\"587.0\" y=\"134.5\"/>\n        <omgdi:waypoint x=\"587.0\" y=\"40.0\"/>\n        <omgdi:waypoint x=\"651.5\" y=\"40.0\"/>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-AEE1B50C-E85D-4776-8D83-C9DC49988DE4\" id=\"BPMNEdge_sid-AEE1B50C-E85D-4776-8D83-C9DC49988DE4\">\n        <omgdi:waypoint x=\"1085.0\" y=\"375.0\"/>\n        <omgdi:waypoint x=\"1010.0\" y=\"375.0\"/>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-F18F5A2B-CE33-4531-A425-ABF18973A2A2\" id=\"BPMNEdge_sid-F18F5A2B-CE33-4531-A425-ABF18973A2A2\">\n        <omgdi:waypoint x=\"701.5\" y=\"80.0\"/>\n        <omgdi:waypoint x=\"701.5\" y=\"115.0\"/>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-F52BFC10-7737-4945-A2A6-D2961FCE89F0\" id=\"BPMNEdge_sid-F52BFC10-7737-4945-A2A6-D2961FCE89F0\">\n        <omgdi:waypoint x=\"1135.0\" y=\"195.0\"/>\n        <omgdi:waypoint x=\"1135.0\" y=\"245.0\"/>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-920904BC-7535-4B20-9652-2E38B9574645\" id=\"BPMNEdge_sid-920904BC-7535-4B20-9652-2E38B9574645\">\n        <omgdi:waypoint x=\"86.5\" y=\"154.0\"/>\n        <omgdi:waypoint x=\"131.5\" y=\"154.0\"/>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-22ED8CCC-2445-4AE5-954C-56733CAB1F55\" id=\"BPMNEdge_sid-22ED8CCC-2445-4AE5-954C-56733CAB1F55\">\n        <omgdi:waypoint x=\"1135.4128440366972\" y=\"284.58715596330273\"/>\n        <omgdi:waypoint x=\"1135.1826484018266\" y=\"335.0\"/>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-9F686C53-6F4B-46B5-867F-1BFC45678FDA\" id=\"BPMNEdge_sid-9F686C53-6F4B-46B5-867F-1BFC45678FDA\">\n        <omgdi:waypoint x=\"1115.4310344827586\" y=\"265.4310344827586\"/>\n        <omgdi:waypoint x=\"1040.0\" y=\"265.17182130584195\"/>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-08F81C26-E80B-4C89-A3AB-B8DEDBB1E922\" id=\"BPMNEdge_sid-08F81C26-E80B-4C89-A3AB-B8DEDBB1E922\">\n        <omgdi:waypoint x=\"521.5\" y=\"154.2164502164502\"/>\n        <omgdi:waypoint x=\"566.9130434782609\" y=\"154.41304347826087\"/>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-3B89ED2A-5C5F-4C19-89C5-4C1D26B39E5B\" id=\"BPMNEdge_sid-3B89ED2A-5C5F-4C19-89C5-4C1D26B39E5B\">\n        <omgdi:waypoint x=\"1040.0\" y=\"155.0\"/>\n        <omgdi:waypoint x=\"1085.0\" y=\"155.0\"/>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('750008',1,'车贷测试.chedaitest.png','750006','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0x\0\0�\0\0\0���n\0\0F�IDATx����]e�?��_1�ÚhQ͏��~�`���4�$�\0��δ����\"(�%�ȯ5�\"��Y���\"A��6���Oi,?���/�X�BG��-l�����\\晜�s�̽���s�^ɓ��3��9�}��<�9�\n\0\0s*˲���ٳf���\\�n]644�u�\rg�7o�]�-S�\0\0\0@�\"�ٲeKv����ȑ#Z����h�iӦW���/T�\0\0\0@Gb�p�0!ϑ���]�\0\0\0�H��%\\)N\Z\ZzSU\0\0\0�5`+�\nx2U	\0\0\0t�݀�����<�O�3�߭��>n�x\0\0\0�k\'�9tp$�����_>|����}�\0\0\0�C�<����I�Nj/>�V0#�\0\0\0z���g׆�x�>���\0\0\0�v��C׷x�>���\0\0\0�!��\0\0\0(�v��jV��\'��x\0\0\0�j\'�ٽ�֖O�\'��\0\0\0\0=�N���Ȏl��M>=�v[�\'��\0\0\0\0=�N�m�wO\nx�6���\0\0\0豶�7��v?���OϪ��	f<\0\0\0@M�:8��j�--�����1�\0\0\0�#-�7����^���/��2�I-�5�G�\0\0\0�@��g�Y;f�x\0\0\0�i�3kg��<�\Z\0\0\0�E����;�	j<\0\0\0@�{�tM�\0\0\0��G�\0\0\0���G�\0\0\0���G�\0\0\0���G�\0\0\0���G�\0\0\0���G�\0\0\0���G�\0\0\0���G�\0\0\0���G�\0\0\0���G�\0\0\0���G�\0\0\0���G�\0\0\0���G�\0\0\0����P��ϩ#��\0\0\0\0600�E���Z�~��c<\0\0\0��R��k�4���x\0\0\0�k����IA��G�\0\0\0X��\'?���?��`E�\0\0\0>�&\\�\0\0\0@����kў�V�g/Z��n���e˖,��ݻwgg�uV�=��C�v�]w���=������t�M�}��w��9q�1�S͋/������?>���&=��K/�����Z����	x\0\0\0`�!�B���\nv�czb�~l��SOe����><~ێ;�C�M\nw^y���k֬��\Z������\'>��z��>�\\rI=؉�E�}��_�����\0\0\0@�C���k���;I/��_}�k�W����;���3�8cR\0�u����8)t��8����=��\'�|2[�v��;��G�o�q�uGGG뷿���N<���n�N>U�B(3x\0\0\0�$!���M��Ө�O���ʻ����@�G�n���z����ֿƌ����^z�~��_>�����c���|�3��m�ʕ��N�~��Nx�~:{�����L#\0\0\0;���n<��@%f�|�S��/w�qG��E��1��{o�9?��O��8���)Z���q��UW]�4���~���[����� \0\0\0���7k�D`3݌���<���)Sg�y�xXs�wf\'�tR�ԪƟq�׎���<;w����q{�$��c�N:u,��k�x\0\0\0��<�x�ԧ��re�9���%B��2V��w�󝓮��n~�ӟ��4ǿ㴫��b��q���[�n|]���U�}�Ѧ���\0\0\0\nF�ӛ�\'���)W��M�6��t��h+V������s�։E��2�:�,��/���텖<\0\0\00��<�\\��n��{�\rx��+�������Dp��,�իW�����}�9�썯�dɒ	�d��k��;묳<\0\0\0Pd��<�&� %f�LuJ׶m۲\r6L��裏���qN;�zHr��O~�t��Dz\\-+^/���sb�O,����wk�e\0\0\0̀����&�\0\0�9%��x\0\0\0��<\0\0\0���G�#�\0\0���x<\0\0\0Pr��\0\0\0JN�#��\0\0\0@�	x<\0\0\0(9��G�\0\0\0%\'��x\0\0\0��<\0\0\0���G�#�\0\0���x<\0\0\0Pr��\0\0\0JN�#��\0\0\0@�	x<\0\0\0(9��G�\0\0\0%\'��x\0\0\0��<\0\0\0���G�#�\0\0���x<\0\0\0Pr��\0\0\0JN�#��\0\0\0@�	x<\0\0\0(9��G�\0\0\0%\'��x\0\0\0���=�Y�n�`�8����Л�J\0\0\0�P�<�7o����J����}CCC�l�\0\0\0С~x֯_�ƍ���/����w3w\"�~��.�U\0\0@��=�	���g\r\r=��\Z0em�^��w���.�\0\0\0̐��{	\0\0\0��P�{	\0\0\0��P�{	\0\0\0��P�{	\0\0\0��P�{	\0\0\0��P�{	\0\0\0��P�{	\0\0\0��P�{	\0\0\0��P�{	\0\0\0��P�{	\0\0\0��P�{	\0\0\0��P�{	\0\0\0��P�{	\0\0\0��P�{	\0\0\0��P�{	\0\0\0��P�{	\0\0\0��P�{	\0\0\0��P�{	\0\0\0��P�{	\0\0\0��P�{	\0\0\0��P�{	\0\0\0��P�{	\0\0\0��P�{	\0\0\0��P�{	\0\0\0��P�����x�iO�K\0\0@�r�o��ڛS<�j�l)\0\0\0菠@�S���)�m�-:�_	\0\0\0�#$���;�U�388x��\0\0\0�	O�߿fk�<a�\0\0\0�O�߿Ik�X{\0\0\0��������f�\0\0\0@�_�Z�tn���\"\0\0\0�g<�}���c�\0��eYvԞ={�l߾���֭ˆ���.����l��Ϳ��ejHSCjH\r	x�����%\0�b�j˖-ف�#G�h=j���٦M�^��d]��45��!��U+s�~ԏ\ZRCjHs\0����Tf��HmCإ�45��!��U+s�~ԏ\ZRCjHs\0�\"�Tx�i��7Ր��45$��je^Տ�QCjH\ri �@L�Rt�ڱ�Ԑ��45$��je^Տ�QCjH\ri x������<�O�3�߭��>nS�v�Ԑ\ZRCjH��\0�f�T?�G\r�!5�_����v���_=��mq���y�!5��Ԑ�� ���R��5��Ԑf|Y����̿LکJ��g�*X��\ZRCjH\r	x\0��.Տ�QCjH\riƗE/�]��r�*�S�:O5��Ԑ\Z�8\0$x�]����Ԑ\ZҌ/^�;��oY�q���y�!5��Ԑ�� ���R��5��Ԑf|i�J�s��!5��<�K����~Ԑ\ZRCj�~,6ժ��>��TCjH\r�!�����v�~ԏ\ZRCjH3�,x���zk����S\r�!5��<\0	^m��G��!5��4�˂�+#;���^79լ��)X��\ZRCjH\r	x\0��.Տ�QCjH\riƗ/�h{��{R��m�U�!5��Ԑ�� ���R��5��Ԑf|Y��7��v?���S��mq���y�!5��Ԑ�� ���R��5��Ԑf|Y��?tp$���[ZN]���1�V穆Ԑ\ZRC���K��~Ԑ\ZRC��e�\n�V��w�����n�S�Z<&k#�y�!5��Ԑ�� ���R��5��Ԑf|Y���m\n_\r�!5��<\0	^m��G��!5��4�˂~;�>�F��u�jH\r�!5Tr*���.Տ�QC�\ZRCƗ�/���T���u�jH\r�!5Tb�k-�^m��G��!M\r�!�˅1uMS�jH\r�!5�>Wkk�汯g^m��G��!5��Ԑ�+�ι��Ԑ\Z*_�svn&�h��<�Kۥ�Q?jHSC����t��\ZRCj����t�h�K��~Ԑ\ZRC����t��\ZRCj�@O��h�K��~Ԑ\ZRCZAk��G�n���������+��|����E���/f_������w�{��[o}x���g\Z�i:O5��Ԑ\ZZ���t�M���]�.Տ�QC�\Z�JQC?��W�Z���UW]���?�C�}��ldd$;|�p������~���e�k���?�����\0N�y�!5���Ђ�g�t�x�M���5��Ԑ6_5����k��fd�ʕ���[o����駟ξ��og���t�M�4��t�jH\r�!5T�p��<�P?�<�Kۥ�Q?jHSCZak�?��u�]v�׮]�Q�����E�s�M7�6��t�jH\r�!5�7��\\=�v�	x4���Ԑ\ZRC3u�m���W\\q���W���¯��,^�?����i:O5��Ԑ\Z*��T����.5��~Ԑ\ZRCj�]�V�Zq�W�1�ԙK�z��_���i:O�\ZRCj�4��\\�^��g��.m��G��!M\ri������������a�f�4����bŊ��\0N�yjjH\r���j\\ �Ojm���N4>o�.�l��]����45������_Ś;�)����+m\0��<55���P�Ý�s!����l�k�!O��-Ȑ�vi�T?�G\rijH+L\r]y�K���o���?�!�oW_}�[���58M穩!5��\n�T�f�d��NȓwR�8w��[��vi�T?�G\rijH+L\r�X��ǥлaǎ�7�����i:OM\r�!5T�B�fa�T!O������jMۥ�R��5��!�5�t��}�k_;2�ˡw��+��������Tԃ��C��?��S\r�!5�-�\Z�\"�Y�Ah�,�i7�iy\n}����vi�J��!M\ri�����������?f]t�=�d_��׾S��Ȣ�@�Z�~Z��<Ր\ZRC�B���,Ӆ<��;��?Z�<�K��|��G��!5���9��o~�۶o���|\'�������\'�8�˵G\Z7���TCjH\rie��&�N��J����0�i�ATȐ�vi����U��5��Ԑ6g5t饗�����<Ȗ/_�\n>���@N��<Ր\ZRCZ�kh���T!��\"ܙ��c��\n�L�����Ԑ\Z�欆�-[v����]\rx��-Y���2�����y�!5�����Ї?��f�4yf�4�<���7���n{�]�8pկ�5��Ԑ6g5op/�1`*\\S��+|5��!M\r���?��z����|��&3w�c��ٸ����lv�:\r�	���QCjH\ris9�����CI��=Q+��-ZtT�\n?�7�pCv������>�h���޽���3�8#{衇��}��_��g<����q����g�}6{���nw�u�#����������ƿ�M7���$5�u�g�������?^�7�9�z�:J-_[�l����:�zK���%����OY;���[\r�QC�鯚5�<���f�b������b5�55��:��˿����X���/�]�p��pO��Šyǎ١C��߯]�v����T�߱���G}tv�g�w�V�Z�����ͮ�����m۶5�i[�n]}�?=��;��x����/������|��o�����O���N:)۹s��h�z׻�\'�|���M�6�o�m����{lvꩧ�?6��#��\Z*P\r��&��\'�x��0n�я~T�޽{�o���?��{���?����׬ޞz�l߾}�\0������+��׬Y3�5f\Z4�[\r�C��LB�2��S��=����駟��9�3�p����cV�\\Y�>����WO5��u\r�U�D-��{ttt|����~������|��}\Z���v��������~�w�i�M�����~F�b����饗&�^c?ߪ�8#>s�l�ż�P�m�߳x�c�9f|ܑ�����.���I����K����^�m�P��(���f�8�|�%���A���(��;�#{��\'��8X����˗���ȿ��h�~��m<��`���;6�v�c)>������o�֭��5Z������:˩v��u�k����gB�_c�`Ǫ85ԍ:J��̉�n�m� .}��k�������������w�3��k�P�j(��1�&ޯ�>��O6}l��ҥ�0�;v���!r�ы`/_s�g��xLE�^�L�ƾ+�1h��^�>~_5Լ�f1c�եЛ]E����,W�*�v������\'�A{��N�L������3c@�8���k�����l�\'v��`K��K���gwz�\Zwt�;:q��3��̄Y��>:���Nu��q[��̧ٗ鳣٬����ƨ�x�UW]5a��n�G���Q��{��]t�E>��mZҝ�9��N[�޳O|��~��>1�x��_�m_��WǿoV�}������5�_������Ɩ�5��G?���sc\Z�\ZǊ1�L}h�}Z��w�F���w��<�c�7��[o���n<�\r�`���`�VG9{R���#��v�o���r��4:����.�l�u����On9�gÆ\r�G��m�3���Ƒ�>=�Ow�\nUCݪ����f`�����1�6~v��Adm����/�;�>	WC)�I�q�W�y�{��W���g|��x���t�/v8�C=^/>4S ���o�}�F�k|p7-����\'��f�_C3�9�*���)�o\'�9��F�\Z�u���%���m�m&?��1��$\\�����{1�#���|X���,��2p�m��g�T��̛������OZ���x��w�,�4K;�	񜨿������o���Y�V#\0�����^x���i\'-N%O;c��=���w��%��x��f��|�|^k��6���	\'�P{����;.Gm��Ƹ3n�;�Q�e�Dݥqi|5��x5��E��f\\E�,����ߤ�O\nd�c���x��U}M�5c�4����4^M3~�����L��I�jh�ҥ�җ�t𭷺7��+_��+�7�Õ��f��4ݶqǼ��X���?���Q��	J�u|�w����f𤝨�{Ŀ#	M볤��k��U�j�u���o|���S+��>%�鴚f;\n��=Q?i�>�᪡b�Pz��{apL���Ӈ_\Z�Š-�K�{|�##1h��S}D�E��\Z���ԧ>Uݘ��g\n�ن��ظ�*����f�L�Tf����+����e��b�d:B;A�3��f;����3	�g�|��o��}��\\��i+p�m�D_\Z3c��ɯ�X;u&�K�� }�6����)ΟZ��q*W\np�:}0���}R�j�- ��z�숱B�∃Q���Tr���v����w��f:6���,����G�f�8�t�ƚ�B�����iO��4�)d\r��)H\nc�\":���_�F��i�������_��8���L����������>�������]�O�����tzj�jhٲe��W���6�C����\0���3�dG�ṿ���;�`/u����� ,7���:��N�V;�3��l�uJ���b�QJ�����;�����ǚ\0�;\ri�\Z*^\r���^Ň�TS�c�3�MԱ#�P\n�hK����ȉ�JGx���{�k5>�c�o�SCk5���p�Ӑ\'�������e찤�g~�e���4�N���<>f�SqR��7���.�~�,���NkY�gO5ΰN�i��3V�X1���_���Ӵ�s>v��w���ω�u�v;�i�,���߉j�>=�)ґ�_���f�H�G�����06�����,<��d�X�Y�S[c2��8$���G)N\ržH�C��X�::TGߒN+Mg\0��S?�b�$��ׅJ�w��M� w\ZW������J���rO��Z�]v��n�����_���epӷ�S��w�[���v��l��j�#ە6O�j�	K�c��U�\\TM��������4C\'�^����4(L�i�@�S�\ZJ��GK�iO���V~�O��4[�fNL���7]*~^��_�en����4.���:���x����B��;�1d|��\09D<}.�6�f�Dߚ?�Ӿ���Ƕ;����J�u�l����M\rO!_��\'vh\"O;Oi�8�n\\�4ְ���x~Z�9;��;�`nZ;#~^>��\Z����/ڟv��!����&��qD���\'������.�ml0}��{c���i�S-�_�\'v��wIc�t�V�B�����.��8C�q^c��_\"B��<�?��b����)8j�xGڗI�d�O�~.�t�c�����_�g�S{3��~�������fk�L��w�����ǥiq�3x�4�f+٧d4>���)G\r�g�׋)٩6��{���� N�5��6�\Z�m\r5Ҧ���q$8fz�A[>�IS[�/\r������<����aM;�Ne���R�e�����&#@��2v:T�����D��fr槷��2t�J�f����vx�>b�|?G���ͯϗ>�c�9��T��t���W���N�Jc�x�4;3�I14j-��n|�\\q��£��o�O?4��Y\nn����\Z���R̰H�5)��)�*��jo����P�3F\Z�7\Z�tJ��f�,7���Q���~��5�^?Ƴ)�*�>J���t����N֡�w����z�������_M<.I�٥��L^�8cE�H�c�t:�7���[�<�@Z�>~3x��yv����0��AMt��\nJS�i��c��b���\"����4Ћu�ґ�tU����O~�`�Ym��V��x��,Nun�\Z�X��Z26��K�7>o�Bwz�]�Sa�6�?�Ux�i����+\rk�D��N׊�7����x�7����i��t��٩5��1�RߛփJc�V�0U�c�4�,��t��T��\n6S-*�O�T��\0��`�֭�,��~#�^�8��Yc��\"���O�4�t�n/���f�4���HR�M�<i��]%0B�8�%^;?����R�P�ZX�|�K/���s����^�岞�Ջ�k����]���t:\r��u��-\nz�K�/��v�cNW��0u���<�UG�SM��L�f�u�\np<�xb��T���$aO���k�����h5.��j#C�f������t�v�<O�!�\\�*�ղʲ]�gm��1����c�+�͘���t}�}�T���<m���ig,P�]w]�k�J]���	xⵢL���gI6μM�O���J��f����RZ�$�.�Ҭ�N����ٕ��������T�I��j:��F�\0C~M7c��o���E]��(f�^�����\"�l�ǥ����i�s��8�ilP��\'�AO�j<+��D�x��31���N����N~ɉ��%�c�c�q����\Z<����R�Pm�pI�?�׮]���pgϞ=��׫V�c\0��<Ր\ZRCj��B����~��4���o��Vu+�I��V\ZV��%�<3��V%w��X�$�l��]T���gҁ�8���._�6�_���N���w���|�7ݩ�����Yk��X`7v��;t��;hQ��f��-[fl0�m>߳��X�=�O�:�Y�Qqц8M�q�Y�;�}c��~F���PC��4��Wir�@�a�!rjiY����6<�3̺5Ӵ�53y������������w�/�,Y�r�Fp��S\r�!5��Jg��U-�Ӳl��K��~Ԑ�����P��3888�|�����c���$�y�����K_����kl)�;\n_穆Ԑ\Z��<�ɇ4���Y�*�.m��G��!M\ri������#�Y�l����_�؆\r�z����ïE�_��߿����\r7ܰ��/�M;1k��W�R�\n_\r�!5�	x��5g���4��~Ԑ\ZRCZ�jh�ҥ\Z�j```M��ñ����}����V��8M穆Ԑ\ZRC}�Rk�j�~���.m��G��!M\riƗ\n_�yjjH\r��2Y<�,����~\nwl��K��~Ԑ��4�K8M穩!5���L��:-�vi�T?�G\rijHSCp��SSCjH\r-���o�ۥ�R��5��!���\0N�yjjH\r����������v�~ԏ\Z�Ԑf|i\0��<55���P�Ś;Y�.�n��]����45��!8M�!5����B����Kۥ�Q?jHSC����t��\ZRCj�M���5��Ԑf|���\Z�Ԑ���]j��@SCjH\r���\Z��^{�l�Ν����]\r��Ch�K��~Ԑ\ZRC����t�=j��~����ܮ��C�!�4ۥ�Q?jH\r�!��R�k:O�\Z��!l���GS?jH\r�!5��W�jH���45���v�~4cM\r�!5��W��\Z�|\0c��]����45��!8M�xԐ~H?��f�T?�G\r�!5�_*|M�)�QC�!5��R�h�G\r�!5��P�\n_\r	xԐ�ۥ�R�h��\ZRCj�\0N�)|��G\ri>��]�.Տ�QC�\Z�Ԑ����!��~��v�~ԏ\ZRCjH3�T���S���45��R�h�u5��Ԑ\ZB�+|5$�QC�`l��K��hjH\r�!8M�x<jH?�ۥ�R��5��!���|֭[�����\n�M5$�QC�\Z��X�hvνwjH\r�!:�y���Pth###��\n�\Z����k��Ú�:��Ր~H?�@��U��5��Ԑ�\0b��_��܍7���_�/�׻�������j�B5��!M\r!x�������Ԑ\Z�@��`�����H�b����]eީRCjH\r�!\0���G��!5��4\0��\n^Տ�QCjH\r;\r�!\0\0\0�2���_\0\0\0��<\0\0\0\0%\'�\0\0\0(9\0\0\0@�	x\0\0\0\0JN�\0\0\0Pr\0\0\0���\0\0\0\0���\0\0\0��<\0\0\0\0%\'�\0\0\0(9\0\0\0@�	x\0\0\0\0JN�\0\0\0Pr\0\0\0���\0\0\0\0���\0\0\0��<\0\0\0\0%\'�\0\0\0(9\0\0\0@�	x\0\0\0\0JN�\0\0\0Pr\0\0\0���\0\0\0\0���\0\0\0��<\0\0\0\0%\'�\0\0\0(9\0\0\0@�	x\0\0\0(�,ˎڳgϚ�۷�qݺu��А��6<<�m޼�w��LE���\0\0�Ҋpg˖-ف�#G�h=j���٦M�^�PU���\0\0�Ҋ�;<G���v����\0\0\0PZqZ�p�8mhh�MU�\0\0\0J+ր�*�2�\0\0��j7�y����=O�S���w�-��ۄ2��B�\0\0@i��:8����U�/�zB���>���g!�\0\0\0PZ�<����I�Nj/>�V0#�Y<\0\0\0�V;Ϯ\r�o��}��B �\0\0���	xv]�2���3��@�\0\0@i	x<�h```m:Ӵ\'��\0\0\0(�v��jV��\'��x�f``��Z{s���Z���/\0\0@)����zkˀ\'��x�h``��)�m�-:�_	\0\0�Rh\'�yedG����&��U�-��x�hlOӀgpp�<!\0\0\0J���\'��\'���mBO��X��	�w\0\0\0(���7��v?���OϪ��	f<e�l-k�\0\0\0P:�<��d��zK�5x�x�pF�SV�j�A�w\0\0\0(���od�w�����n���ǚ�#�)�j�����;��E\0\0\0(�f�t�v���,4i-�w\0\0\0(�fO;�v���#��M��s�����\0\0PN����;�	j<%�fec_\0\0�\\ڽL�&�Y�>Wkk�汯��\0\0@�x<}.�;)ԉ<�!\0\0\0e\"�����pg��\0\0��<�>3u�\nq����\0\0��<�>�nxc&\0\0\0� �����,���\0\0@�	x<}d�3r�y�*B\0\0\0�J�#���=���Z\0\0\0��G���[P9d�6��\0\0���x�vTn\'�	f�\0\0\0P<�����<��.\0\0\0�?��g��t�M\'O���<\0\0\0���G��\0��4�N�`M\0\0\0�A�#�Y`f\Z��$�	��\0\0��<�\nxN�V��ܦ�]P���<��Z\0\0\0����O;����ެ5�|�>d�M��~�h�L\0\0\0zA�S쀧1�IM�N\nWf{��l�`M\0\0\0zC�S̀�Z�~:N�jv<���\Z8s����\0\0\0��/�i6cG��T;3f�ylӅ<��\0\0@�����f����Ӕx/������S�\0\0\0:���s�9gʰ�3��.����/��z��k4{��wߝ�۷/۲eK��O}�t�h]t�E��fϔڹj�<\0\0\0x��޽���|�I\'e���j��D�s��Ƿ|�W^y�i�����o���ƃ�M�6Mz���h��������Sx?7Z�Dq��?޳E��~�-�)ÔCk�\0\0\0��z���K��P\"܉�o����ϢE��p���=��SNz�f3����Z������Oֿ:th��׬YS�ˤ����\"��2T�͌W�\0\0�����ܹ���nݺI3q���d{���p�	����c���<���m�{����k�6���f�رc��Ç�o[�z��m�s�)^�`\'�~Ex��=�T�$��93ۀ�Z�w\0\0\0�n<q:T�����OZG箻����w�c�N�)Z�\\����G?��=iVN|���~��}����p(f\rE蓂�|p����;Ｓ~�Xz~Q�4�4�	x�ib�y\0\0\0�n<���>���l��Œ_|�Ŗk�T\Z��;�cR�S���{�3q�Z;��s5x�:�����<3\rx���\0\0\0�;�X�\'v����I��{�S<1(�A1��\"���7�tS���{n��%B�4�\'��%�)������R3	x��\0\0@1)�i��1�I�o��XC�U��}���w����3���Ypڹ�z^��K�\0\0P�\nxN>��I�h�ղڹLz;q\nVZ9ߍ7�X_g�k��??]y+w�4�]\"�I���w��E]4~[D�R��t�N�N�#\0\0\0�_�\nxy�I�寬-��u�9�4}���9+W��p�q���z���8�K�?����ɷ�_�\'�u<]�n��n�3�ӿ\0\0\0`~�\"��<]�N��N�3�K�\0\0���x��lO�rZ\0\0\0�%�����^�ʂ�\0\0\0��G��g:=��iY\0\0\0��G�Ӈ�\rmN��C�v�?\0\0\0�&����8��P��iW�jY�\0\0\0�O�#��c�f�8-\0\0�r�x�\\c�#�\0\0�|<�C��+�\0\0\0�H�#�n���@��]\n\0\0���xx�X�\0\0\0�#���6\0\0\0�%���6\0\0\0�%���6\0\0\0�%���6\0\0\0�%���6\0\0\0�%���6\0\0\0�%���6\0\0\0�%���6\0\0\0�%���6\0\0\0�%���6\0\0\0�%���6\0\0\0�%���6\0\0\0�%���6\0\0\0�%���6\0\0\0�%���6\0\0\0��n�:�Jq�ᡡ�7Ueox\0\0\0(�͛7�?p��p�\0mdd価��]��7<\0\0\0������ݸq��_~�����n�N�;���/�څ��7<\0\0\0������CCCO��A�L[윗�w�������\0\0\0윣�\0\0\0\0;�!\0\0\0�sj\0\0\0윣�\0\0\0\0;�!\0\0\0��9j\0\0\0윃\Z\0\0\0;�!\0\0\0��9j\0\0\0�s�\Z\0\0\0;砆\0\0\0��9j\0\0\0�s�\Z\0\0\0윣�\0\0\0��9�!\0\0\0�s�\Z\0\0\0윣�\0\0\0\0;�!\0\0\0�sj\0\0\0�S�zY53M{�_\n\0\0\0���.ࡓz9��ޜ*�V�g�K\0\0@ww�<tZ3�L�l[�h�Q�J\0\0\0�ݝu���)��������\0\0\0��;�fR7���y��\0\0\0�͎�����ͤ�x��\0\0\0��Q�0#�j�A�w\0\0\0�\0<�T�Z�tn���\"\0\0\0�#fY?��x��\0\0���x�M����\0\0(�,ˎڳgϚ�۷�qݺu��А��6<<�m޼�w��L�h�f<>W4}\0\0�,�[�l�8�9rD�Q�6m��jmP~���Z�x|�h�\0\0�Ya5/�`�����.5�-����\\��\0\0̳�>o\\�V���f��V3�+�>\0�y��\0j ��m�Ռ��犦�\0\0� ��~�?���?e��������Y��fԌ�}�>\0���v���_=��mq���Gͨ�}\0\0��{�_&\r�S{��5�f<�#�\0\0} �k��[��>h��Q3��\0\0\n>�9t}ˁx�g\0-�Q3jF��>B\0���&����&�Y��4�	=�>B\0@_���&��q���Gͨ�<��ڛS<�j�l=�>B\0@_�wo���@<�3��5S���)�m�-:�_I��\0\0��⯌��v>z��i����>h��Q3xNi���/���G\0\0���h{��{�@<n3x�5S����Z<O�����G\0\0` �7�ݏ���i����>h��Q3	x&��c�}�>B\0` ^k��d��zK˵�x�A��Gͨ�\"�V�������\0\0⹣��w�����n9O-�uԵ�5�f��|:���b}�>B\0з�鎮:�*�Q3j���Z<f��#4}\0@_��9�:�QW��xԌ�)X�s������\0\0�=�� <5��xԌ�)�85+��>B\0@�5q5�fJ�s�v��n��*Z�}\0\0⚁��Q3%wR�3xF�<�}\0\0⚁��Q3�w��}�>\0\0qM����Y<M���&�>B\0PvK�.�P�Z�b```M��Cq�Z;\\k{k�=X��2g ���5S�pg���L}�>\0��ϫ��Z;2��6���@\\3W3j��>W�lfN��G��\0\0赁�����P�Y���\'�k�jF�6�9{�;$��G�#\0\0J�Z�,Y����Ú�K�f����_�>��o~����g^��ldd$ۺukv��7g_��C�Cy6������Q3}�����G�#\0\0��=88�V>ع�{�d�8x�`���|�S{�/�k�jF���t*�,�f�:�#�\0\0=\nw��Ί+�uf\"�w��W7�<n&������Q3%w�;����\'�ɣ��G\0\0M���?-��?\rk����իW7���1qM��R3]����<��.�}\0�|[�d�p~��lÝ|��0�g���&��^����;�δ�$���#�\0\0E�Bϯ�3�Ӳ�:]+�&�B:U�@�@\\ͨ���$�T�ɣ��G\0\0\"�J�K,�<����yA��17W3j��f\Z��$��i��>B\00�.]����r̲y�W�%���k5\\B�í~��}�T��\rĵ������L�j�L�Q�pg&�M�4�ɇ<�����>W\0\0��6��\"�.7�xc6�n���|����\0����ڛ�qm.�E�/5S��)c4ېe����G+m��)��Y!�\0(�ڀzM\n]6n�8��֭[���V��ĵ�����L�k���QC�3�Ӥf�T*Ӝ�\0���\0@���i`=׋+7\Z�<����cJ~�\0_����@����f�Y3�?���\Z8s�4�}��Y!�\0(d�s(\r�����S]2=7��c���G��@���\0�֬�-\0�v�G�,���c�2���?��+��Y!�\0(l�3>��en��\nxԋ�v[H�P�K�y�.�Oe����?������\0\0!�����]t��j_����^{�ᇳ�z�ގ=��l͚5�����bj˖-���{���}g�qF��K�,ɾ��/7��6m�v��9�x�������W��ӟ�t¿��| ^������n���n����-����!v�@��U�z6�\'�^��_h}�	\'��}����p��Ç�\r6����|�;��󫮺����������|v���[l�qz쫯���z���}�#n<���F�~��k���˿�1��u��#�\0���l\r��;.��{��g�������x`���}��裏6}�9�3��g�u֔?�;�h����=\r������^x��5>�z ^��������Fx�O;_<�׈5\Z;t��Q�˖-���ժU�{�����\\���{���_|�g5S��h,L9T)�\Z<�＠��YO?���aǎ��wߝ��=��i֟\\r�%�x[��?�x�k|~�|���~#~ޏ~����\'�����c���طo_=hj�ٷ�r��\0�E���h%cGv�xZ�?��S�\r7�P���瞫9M;�q[�L?������������-nk��@:������Gy������v��w��:th�g����A�����vz1/J}u�f���C�f3����wf�\\s������ޫ����5GZ�L���Pe�,^cޯ��\0�Υ�#bvgl�+W��ό�������K/�T߮?�я6�Sb�Nl���O�Ŀ����&�AO����`�\0�&���i`}�7�k�s��7����~��#��ě<_��W������?��v�򏏠\'\r��]v�e��4-m5K(�;�\"}����Gm�=�j���$B��⾧�~�P�^�W�Ì�|O#�Y�n�x��]z�����/�g�4��֮]�}�����͇�E��2�GMB����m�sJ��v��K�w.u�>?�?����N�pzf̪�������j�m�ݖ����N<��I�h�O�q�G�W��p*V>p����,�\0��ҥK?��jR�����|�S��-[�߹����3xb����;\r����bb���ݻ7������GP;��(n���\\pA}��xn:���0 �q�W��bg ��ƚ����.����������s�����A�?vtt��3��׍Y\0q�F<gŊ�ۏ>��z�ff��4������	[�>\"����ٶm��g�Ķ���p<>=&>W*-f�D��|&[�h�x��N�׈�9��130B�������\'��_��\Z<\0\0SJ�K���إ�S�b >���1Ok���x�=�8���(f����>�D9��3��1�\"��#����\'�k ��8H�;�q�-fV�״�A`�c����Ax���]_���N����{\Z��Zg�D�{�㏋gi�Xc��_[#\Z�������i��~�p�}Dl�ifgZ�-��и�F@�{���Pel�O�<�\Zi=��-Ln���3[�ʯ��\Z���G\0\0Lx�K�K���Ŗ���,Y2>{�����lG=v��g�`:ŭ�M�����>fM䟓�J�������v���X�\'����1��X�\'��Xw!��\"�׈��3 �)N�3_�i�O�s>��ON��N/��郝������R3xf3c����	�4<iVN�*^�\r\nG������g��/\0���#$n�曝�;U���\0@6�\0&N���K�G��o}����N�Q�3�Y�#�1\"���ӫZ<�.s]ir�4c������\"��1�n��2�E6c\Z~el�G|M����{\r�{S3�xO�Qɝ�����oU��W��`m�>�yk��	x�bagz��ҸOelf_���&��|\03�m��\n7^�/po�?ĺ\\)�NW�Jm�u��\0\0o<����\\w�u�y\"�Y�zu~ݝC���3�Y����N���@9N�����_t�E��#��hk�����,����N���t���B�ig -����qd ޻���{�x������i�v�f��ӵ:	x:\r�(P�;E����x�ӕ�������+�S��\rx��N����zp��Wr�_o��~G}\0����@Zp9����Z񼆙;�Ԭn�cp|�I\'��;��I�פY\Zi\0�Z�;���q#�ɇC�����b���E�cg?��Jel�~�=��Ia@el�H�@<�l��^����t!M��Ve�2���\'WN�\nxz�����/\n�d��W��#@I3e� BZl94Tr�����z��8�3�����G��P�=�9�^�l���;������_E����G\0\04100pI>�5yⴉ��k�jY��r~͝h�j�o�5����n/�j�m�!O;�l/�N��^4]\0� f����|@AO]߸qc}vN:}+N��������l����?/Nˊ��@\\3W3j�0f{Z�Ӳ��\0���5y�O�a۲���17W3jf��<������>B\0PҠ�±���N��������e n �f����iVN��G�#\0\0�n�ҥ\Z�j```M���caN|�Wkkkme��1��Ռ�Yp!�)�v���󉨏�G\0\0` �	xԌ�)��c���)���#�\0\0�k�jF�[��<N��G�#\0\00��Ռ�)q�#��G�#�\0\0⚁��Q3%yn��#4}\0���f �f�LyŚ;Yť���>\0�@\\3W3j���ԟ@��#\0\0�5q5�f@��\0\0�@\\�hj�+�>\0\0qq5��y�犦�\0\0�@�@\\ͨ�G�#\0\00��Ռ�}�>\0\0qM���y�犦�\0\0�@�@\\�hv���#\0\007W3j��\0\0�5q5�f@��\0\0�@\\�hv���#\0\007W3��7��>\0\0qq5�f@��\0\0�@\\�hj��\0\0�5�f�\r�+�>\0\0qq5��yC��#\0\0�T֭[g\0\\�v�6S�h�f��#\0\0�g�7o����������j�]jF[h5��M\0�<[�~��7n���/��_ý;�\Z�����j�B5�-���犦�\0\0�j��������i�q�����]e\Z��5�}\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�#�?Q��(�M��\0\0\0\0IEND�B`�',1);

/*Table structure for table `act_ge_property` */

DROP TABLE IF EXISTS `act_ge_property`;

CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_property` */

insert  into `act_ge_property`(`NAME_`,`VALUE_`,`REV_`) values ('next.dbid','752501',302);
insert  into `act_ge_property`(`NAME_`,`VALUE_`,`REV_`) values ('schema.history','create(5.17.0.2)',1);
insert  into `act_ge_property`(`NAME_`,`VALUE_`,`REV_`) values ('schema.version','5.18.0.0',1);

/*Table structure for table `act_hi_actinst` */

DROP TABLE IF EXISTS `act_hi_actinst`;

CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_actinst` */

/*Table structure for table `act_hi_attachment` */

DROP TABLE IF EXISTS `act_hi_attachment`;

CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_attachment` */

/*Table structure for table `act_hi_comment` */

DROP TABLE IF EXISTS `act_hi_comment`;

CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_comment` */

/*Table structure for table `act_hi_detail` */

DROP TABLE IF EXISTS `act_hi_detail`;

CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_detail` */

/*Table structure for table `act_hi_identitylink` */

DROP TABLE IF EXISTS `act_hi_identitylink`;

CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_identitylink` */

/*Table structure for table `act_hi_procinst` */

DROP TABLE IF EXISTS `act_hi_procinst`;

CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_procinst` */

/*Table structure for table `act_hi_taskinst` */

DROP TABLE IF EXISTS `act_hi_taskinst`;

CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `CLAIM_TIME_` datetime DEFAULT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `DUE_DATE_` datetime DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_taskinst` */

/*Table structure for table `act_hi_varinst` */

DROP TABLE IF EXISTS `act_hi_varinst`;

CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`),
  KEY `ACT_IDX_HI_PROCVAR_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_varinst` */

/*Table structure for table `act_id_group` */

DROP TABLE IF EXISTS `act_id_group`;

CREATE TABLE `act_id_group` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_group` */

/*Table structure for table `act_id_info` */

DROP TABLE IF EXISTS `act_id_info`;

CREATE TABLE `act_id_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_info` */

/*Table structure for table `act_id_membership` */

DROP TABLE IF EXISTS `act_id_membership`;

CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GROUP_ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`USER_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_membership` */

/*Table structure for table `act_id_user` */

DROP TABLE IF EXISTS `act_id_user`;

CREATE TABLE `act_id_user` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `FIRST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PWD_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PICTURE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_user` */

/*Table structure for table `act_re_deployment` */

DROP TABLE IF EXISTS `act_re_deployment`;

CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `DEPLOY_TIME_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_deployment` */

insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`TENANT_ID_`,`DEPLOY_TIME_`) values ('660036','车贷1','0001','','2015-05-22 13:08:40');
insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`TENANT_ID_`,`DEPLOY_TIME_`) values ('662506','车贷1','0001','','2015-05-22 13:17:03');
insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`TENANT_ID_`,`DEPLOY_TIME_`) values ('665001','w','0001','','2015-05-22 13:43:20');
insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`TENANT_ID_`,`DEPLOY_TIME_`) values ('667501','f','0001','','2015-05-22 14:08:15');
insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`TENANT_ID_`,`DEPLOY_TIME_`) values ('737518','w','0001','','2015-05-27 15:11:48');
insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`TENANT_ID_`,`DEPLOY_TIME_`) values ('747503','车贷测试','0001','','2015-05-30 14:40:01');
insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`TENANT_ID_`,`DEPLOY_TIME_`) values ('750006','车贷测试','0001','','2015-06-08 16:27:06');

/*Table structure for table `act_re_model` */

DROP TABLE IF EXISTS `act_re_model`;

CREATE TABLE `act_re_model` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp NULL DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_model` */

insert  into `act_re_model`(`ID_`,`REV_`,`NAME_`,`KEY_`,`CATEGORY_`,`CREATE_TIME_`,`LAST_UPDATE_TIME_`,`VERSION_`,`META_INFO_`,`DEPLOYMENT_ID_`,`EDITOR_SOURCE_VALUE_ID_`,`EDITOR_SOURCE_EXTRA_VALUE_ID_`,`TENANT_ID_`) values ('747501',8,'车贷测试','chedaitest','0001','2015-05-30 14:39:50','2015-06-08 16:27:07',1,'{\"category\":\"0001\",\"key\":\"chedaitest\",\"name\":\"车贷测试\",\"revision\":1,\"description\":\"\"}','750006','747502','750001','');

/*Table structure for table `act_re_procdef` */

DROP TABLE IF EXISTS `act_re_procdef`;

CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
  `HAS_GRAPHICAL_NOTATION_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_procdef` */

insert  into `act_re_procdef`(`ID_`,`REV_`,`CATEGORY_`,`NAME_`,`KEY_`,`VERSION_`,`DEPLOYMENT_ID_`,`RESOURCE_NAME_`,`DGRM_RESOURCE_NAME_`,`DESCRIPTION_`,`HAS_START_FORM_KEY_`,`HAS_GRAPHICAL_NOTATION_`,`SUSPENSION_STATE_`,`TENANT_ID_`) values ('chedaitest:1:750009',1,'0001','车贷测试','chedaitest',1,'750006','车贷测试.bpmn20.xml','车贷测试.chedaitest.png',NULL,0,1,1,'');

/*Table structure for table `act_ru_event_subscr` */

DROP TABLE IF EXISTS `act_ru_event_subscr`;

CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_event_subscr` */

/*Table structure for table `act_ru_execution` */

DROP TABLE IF EXISTS `act_ru_execution`;

CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_execution` */

/*Table structure for table `act_ru_identitylink` */

DROP TABLE IF EXISTS `act_ru_identitylink`;

CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_identitylink` */

/*Table structure for table `act_ru_job` */

DROP TABLE IF EXISTS `act_ru_job`;

CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_job` */

/*Table structure for table `act_ru_task` */

DROP TABLE IF EXISTS `act_ru_task`;

CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_TIME_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `DUE_DATE_` datetime DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_task` */

/*Table structure for table `act_ru_variable` */

DROP TABLE IF EXISTS `act_ru_variable`;

CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_variable` */

/*Table structure for table `sys_config` */

DROP TABLE IF EXISTS `sys_config`;

CREATE TABLE `sys_config` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `cname` varchar(100) DEFAULT NULL,
  `cvalue` varchar(100) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `location` int(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `sys_config` */

insert  into `sys_config`(`id`,`cname`,`cvalue`,`note`,`location`) values (1,'app_name','管理后台','项目名称，用于管理后台显示',0);

/*Table structure for table `sys_dict` */

DROP TABLE IF EXISTS `sys_dict`;

CREATE TABLE `sys_dict` (
  `id` varchar(50) NOT NULL DEFAULT '',
  `dkey` varchar(100) DEFAULT NULL,
  `dval` varchar(100) DEFAULT NULL,
  `txt` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `location` int(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_dict` */

insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001','01','行政区划','',0,0);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('00010001','110000','北京','北京',0,0);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100010001','110100','北京市','',0,2);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000100010001','110101','东城区','',0,3);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000100010002','110102','西城区','',0,4);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000100010003','110103','崇文区','',0,5);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000100010004','110104','宣武区','',0,6);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000100010005','110105','朝阳区','',0,7);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000100010006','110106','丰台区','',0,8);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000100010007','110107','石景山区','',0,9);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000100010008','110108','海淀区','',0,10);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000100010009','110109','门头沟区','',0,11);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000100010010','110111','房山区','',0,12);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000100010011','110112','通州区','',0,13);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000100010012','110113','顺义区','',0,14);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000100010013','110114','昌平区','',0,15);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000100010014','110115','大兴区','',0,16);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000100010015','110116','怀柔区','',0,17);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000100010016','110117','平谷区','',0,18);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000100010017','110228','密云县','',0,19);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000100010018','110229','延庆县','',0,20);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('00010002','120000','天津','',0,21);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100020001','120100','天津市','',0,22);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000200010001','120101','和平区','',0,23);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000200010002','120102','河东区','',0,24);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000200010003','120103','河西区','',0,25);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000200010004','120104','南开区','',0,26);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000200010005','120105','河北区','',0,27);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000200010006','120106','红桥区','',0,28);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000200010007','120107','塘沽区','',0,29);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000200010008','120108','汉沽区','',0,30);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000200010009','120109','大港区','',0,31);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000200010010','120110','东丽区','',0,32);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000200010011','120111','西青区','',0,33);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000200010012','120112','津南区','',0,34);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000200010013','120113','北辰区','',0,35);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000200010014','120114','武清区','',0,36);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000200010015','120115','宝坻区','',0,37);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000200010016','120116','滨海新区','',0,38);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000200010017','120221','宁河县','',0,39);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000200010018','120223','静海县','',0,40);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000200010019','120225','蓟县','',0,41);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('00010003','130000','河北省','',0,42);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100030001','130100','石家庄市','',0,43);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300010001','130102','长安区','',0,44);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300010002','130103','桥东区','',0,45);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300010003','130104','桥西区','',0,46);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300010004','130105','新华区','',0,47);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300010005','130107','井陉矿区','',0,48);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300010006','130108','裕华区','',0,49);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300010007','130121','井陉县','',0,50);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300010008','130123','正定县','',0,51);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300010009','130124','栾城县','',0,52);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300010010','130125','行唐县','',0,53);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300010011','130126','灵寿县','',0,54);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300010012','130127','高邑县','',0,55);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300010013','130128','深泽县','',0,56);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300010014','130129','赞皇县','',0,57);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300010015','130130','无极县','',0,58);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300010016','130131','平山县','',0,59);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300010017','130132','元氏县','',0,60);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300010018','130133','赵县','',0,61);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300010019','130181','辛集市','',0,62);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300010020','130182','藁城市','',0,63);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300010021','130183','晋州市','',0,64);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300010022','130184','新乐市','',0,65);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300010023','130185','鹿泉市','',0,66);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100030002','130200','唐山市','',0,67);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300020001','130202','路南区','',0,68);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300020002','130203','路北区','',0,69);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300020003','130204','古冶区','',0,70);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300020004','130205','开平区','',0,71);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300020005','130207','丰南区','',0,72);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300020006','130208','丰润区','',0,73);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300020007','130223','滦县','',0,74);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300020008','130224','滦南县','',0,75);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300020009','130225','乐亭县','',0,76);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300020010','130227','迁西县','',0,77);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300020011','130229','玉田县','',0,78);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300020012','130230','唐海县','',0,79);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300020013','130281','遵化市','',0,80);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300020014','130283','迁安市','',0,81);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100030003','130300','秦皇岛市','',0,82);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300030001','130302','海港区','',0,83);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300030002','130303','山海关区','',0,84);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300030003','130304','北戴河区','',0,85);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300030004','130321','青龙满族自治县','',0,86);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300030005','130322','昌黎县','',0,87);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300030006','130323','抚宁县','',0,88);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300030007','130324','卢龙县','',0,89);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300030008','130399','经济技术开发区','',0,90);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100030004','130400','邯郸市','',0,91);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300040001','130402','邯山区','',0,92);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300040002','130403','丛台区','',0,93);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300040003','130404','复兴区','',0,94);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300040004','130406','峰峰矿区','',0,95);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300040005','130421','邯郸县','',0,96);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300040006','130423','临漳县','',0,97);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300040007','130424','成安县','',0,98);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300040008','130425','大名县','',0,99);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300040009','130426','涉县','',0,100);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300040010','130427','磁县','',0,101);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300040011','130428','肥乡县','',0,102);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300040012','130429','永年县','',0,103);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300040013','130430','邱县','',0,104);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300040014','130431','鸡泽县','',0,105);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300040015','130432','广平县','',0,106);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300040016','130433','馆陶县','',0,107);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300040017','130434','魏县','',0,108);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300040018','130435','曲周县','',0,109);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300040019','130481','武安市','',0,110);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100030005','130500','邢台市','',0,111);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300050001','130502','桥东区','',0,112);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300050002','130503','桥西区','',0,113);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300050003','130521','邢台县','',0,114);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300050004','130522','临城县','',0,115);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300050005','130523','内丘县','',0,116);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300050006','130524','柏乡县','',0,117);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300050007','130525','隆尧县','',0,118);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300050008','130526','任县','',0,119);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300050009','130527','南和县','',0,120);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300050010','130528','宁晋县','',0,121);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300050011','130529','巨鹿县','',0,122);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300050012','130530','新河县','',0,123);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300050013','130531','广宗县','',0,124);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300050014','130532','平乡县','',0,125);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300050015','130533','威县','',0,126);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300050016','130534','清河县','',0,127);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300050017','130535','临西县','',0,128);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300050018','130581','南宫市','',0,129);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300050019','130582','沙河市','',0,130);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100030006','130600','保定市','',0,131);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300060001','130602','新市区','',0,132);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300060002','130603','北市区','',0,133);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300060003','130604','南市区','',0,134);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300060004','130621','满城县','',0,135);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300060005','130622','清苑县','',0,136);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300060006','130623','涞水县','',0,137);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300060007','130624','阜平县','',0,138);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300060008','130625','徐水县','',0,139);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300060009','130626','定兴县','',0,140);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300060010','130627','唐县','',0,141);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300060011','130628','高阳县','',0,142);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300060012','130629','容城县','',0,143);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300060013','130630','涞源县','',0,144);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300060014','130631','望都县','',0,145);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300060015','130632','安新县','',0,146);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300060016','130633','易县','',0,147);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300060017','130634','曲阳县','',0,148);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300060018','130635','蠡县','',0,149);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300060019','130636','顺平县','',0,150);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300060020','130637','博野县','',0,151);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300060021','130638','雄县','',0,152);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300060022','130681','涿州市','',0,153);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300060023','130682','定州市','',0,154);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300060024','130683','安国市','',0,155);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300060025','130684','高碑店市','',0,156);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300060026','130698','高开区','',0,157);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100030007','130700','张家口市','',0,158);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300070001','130702','桥东区','',0,159);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300070002','130703','桥西区','',0,160);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300070003','130705','宣化区','',0,161);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300070004','130706','下花园区','',0,162);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300070005','130721','宣化县','',0,163);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300070006','130722','张北县','',0,164);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300070007','130723','康保县','',0,165);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300070008','130724','沽源县','',0,166);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300070009','130725','尚义县','',0,167);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300070010','130726','蔚县','',0,168);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300070011','130727','阳原县','',0,169);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300070012','130728','怀安县','',0,170);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300070013','130729','万全县','',0,171);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300070014','130730','怀来县','',0,172);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300070015','130731','涿鹿县','',0,173);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300070016','130732','赤城县','',0,174);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300070017','130733','崇礼县','',0,175);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100030008','130800','承德市','',0,176);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300080001','130802','双桥区','',0,177);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300080002','130803','双滦区','',0,178);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300080003','130804','鹰手营子矿区','',0,179);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300080004','130821','承德县','',0,180);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300080005','130822','兴隆县','',0,181);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300080006','130823','平泉县','',0,182);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300080007','130824','滦平县','',0,183);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300080008','130825','隆化县','',0,184);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300080009','130826','丰宁满族自治县','',0,185);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300080010','130827','宽城满族自治县','',0,186);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300080011','130828','围场满族蒙古族自治县','',0,187);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100030009','130900','沧州市','',0,188);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300090001','130902','新华区','',0,189);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300090002','130903','运河区','',0,190);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300090003','130921','沧县','',0,191);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300090004','130922','青县','',0,192);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300090005','130923','东光县','',0,193);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300090006','130924','海兴县','',0,194);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300090007','130925','盐山县','',0,195);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300090008','130926','肃宁县','',0,196);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300090009','130927','南皮县','',0,197);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300090010','130928','吴桥县','',0,198);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300090011','130929','献县','',0,199);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300090012','130930','孟村回族自治县','',0,200);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300090013','130981','泊头市','',0,201);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300090014','130982','任丘市','',0,202);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300090015','130983','黄骅市','',0,203);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300090016','130984','河间市','',0,204);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100030010','131000','廊坊市','',0,205);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300100001','131002','安次区','',0,206);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300100002','131003','广阳区','',0,207);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300100003','131022','固安县','',0,208);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300100004','131023','永清县','',0,209);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300100005','131024','香河县','',0,210);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300100006','131025','大城县','',0,211);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300100007','131026','文安县','',0,212);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300100008','131028','大厂回族自治县','',0,213);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300100009','131051','开发区','',0,214);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300100010','131052','燕郊经济技术开发区','',0,215);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300100011','131081','霸州市','',0,216);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300100012','131082','三河市','',0,217);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100030011','131100','衡水市','',0,218);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300110001','131102','桃城区','',0,219);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300110002','131121','枣强县','',0,220);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300110003','131122','武邑县','',0,221);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300110004','131123','武强县','',0,222);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300110005','131124','饶阳县','',0,223);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300110006','131125','安平县','',0,224);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300110007','131126','故城县','',0,225);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300110008','131127','景县','',0,226);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300110009','131128','阜城县','',0,227);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300110010','131181','冀州市','',0,228);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000300110011','131182','深州市','',0,229);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('00010004','140000','山西省','',0,230);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100040001','140100','太原市','',0,231);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400010001','140105','小店区','',0,232);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400010002','140106','迎泽区','',0,233);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400010003','140107','杏花岭区','',0,234);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400010004','140108','尖草坪区','',0,235);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400010005','140109','万柏林区','',0,236);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400010006','140110','晋源区','',0,237);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400010007','140121','清徐县','',0,238);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400010008','140122','阳曲县','',0,239);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400010009','140123','娄烦县','',0,240);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400010010','140181','古交市','',0,241);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100040002','140200','大同市','',0,242);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400020001','140202','城区','',0,243);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400020002','140203','矿区','',0,244);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400020003','140211','南郊区','',0,245);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400020004','140212','新荣区','',0,246);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400020005','140221','阳高县','',0,247);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400020006','140222','天镇县','',0,248);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400020007','140223','广灵县','',0,249);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400020008','140224','灵丘县','',0,250);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400020009','140225','浑源县','',0,251);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400020010','140226','左云县','',0,252);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400020011','140227','大同县','',0,253);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100040003','140300','阳泉市','',0,254);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400030001','140302','城区','',0,255);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400030002','140303','矿区','',0,256);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400030003','140311','郊区','',0,257);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400030004','140321','平定县','',0,258);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400030005','140322','盂县','',0,259);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100040004','140400','长治市','',0,260);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400040001','140421','长治县','',0,261);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400040002','140423','襄垣县','',0,262);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400040003','140424','屯留县','',0,263);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400040004','140425','平顺县','',0,264);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400040005','140426','黎城县','',0,265);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400040006','140427','壶关县','',0,266);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400040007','140428','长子县','',0,267);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400040008','140429','武乡县','',0,268);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400040009','140430','沁县','',0,269);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400040010','140431','沁源县','',0,270);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400040011','140481','潞城市','',0,271);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400040012','140482','城区','',0,272);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400040013','140483','郊区','',0,273);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400040014','140484','高新区','',0,274);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100040005','140500','晋城市','',0,275);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400050001','140502','城区','',0,276);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400050002','140521','沁水县','',0,277);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400050003','140522','阳城县','',0,278);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400050004','140524','陵川县','',0,279);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400050005','140525','泽州县','',0,280);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400050006','140581','高平市','',0,281);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100040006','140600','朔州市','',0,282);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400060001','140602','朔城区','',0,283);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400060002','140603','平鲁区','',0,284);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400060003','140621','山阴县','',0,285);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400060004','140622','应县','',0,286);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400060005','140623','右玉县','',0,287);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400060006','140624','怀仁县','',0,288);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100040007','140700','晋中市','',0,289);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400070001','140702','榆次区','',0,290);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400070002','140721','榆社县','',0,291);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400070003','140722','左权县','',0,292);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400070004','140723','和顺县','',0,293);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400070005','140724','昔阳县','',0,294);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400070006','140725','寿阳县','',0,295);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400070007','140726','太谷县','',0,296);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400070008','140727','祁县','',0,297);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400070009','140728','平遥县','',0,298);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400070010','140729','灵石县','',0,299);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400070011','140781','介休市','',0,300);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100040008','140800','运城市','',0,301);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400080001','140802','盐湖区','',0,302);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400080002','140821','临猗县','',0,303);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400080003','140822','万荣县','',0,304);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400080004','140823','闻喜县','',0,305);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400080005','140824','稷山县','',0,306);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400080006','140825','新绛县','',0,307);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400080007','140826','绛县','',0,308);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400080008','140827','垣曲县','',0,309);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400080009','140828','夏县','',0,310);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400080010','140829','平陆县','',0,311);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400080011','140830','芮城县','',0,312);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400080012','140881','永济市','',0,313);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400080013','140882','河津市','',0,314);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100040009','140900','忻州市','',0,315);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400090001','140902','忻府区','',0,316);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400090002','140921','定襄县','',0,317);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400090003','140922','五台县','',0,318);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400090004','140923','代县','',0,319);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400090005','140924','繁峙县','',0,320);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400090006','140925','宁武县','',0,321);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400090007','140926','静乐县','',0,322);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400090008','140927','神池县','',0,323);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400090009','140928','五寨县','',0,324);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400090010','140929','岢岚县','',0,325);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400090011','140930','河曲县','',0,326);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400090012','140931','保德县','',0,327);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400090013','140932','偏关县','',0,328);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400090014','140981','原平市','',0,329);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100040010','141000','临汾市','',0,330);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400100001','141002','尧都区','',0,331);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400100002','141021','曲沃县','',0,332);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400100003','141022','翼城县','',0,333);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400100004','141023','襄汾县','',0,334);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400100005','141024','洪洞县','',0,335);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400100006','141025','古县','',0,336);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400100007','141026','安泽县','',0,337);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400100008','141027','浮山县','',0,338);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400100009','141028','吉县','',0,339);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400100010','141029','乡宁县','',0,340);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400100011','141030','大宁县','',0,341);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400100012','141031','隰县','',0,342);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400100013','141032','永和县','',0,343);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400100014','141033','蒲县','',0,344);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400100015','141034','汾西县','',0,345);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400100016','141081','侯马市','',0,346);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400100017','141082','霍州市','',0,347);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100040011','141100','吕梁市','',0,348);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400110001','141102','离石区','',0,349);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400110002','141121','文水县','',0,350);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400110003','141122','交城县','',0,351);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400110004','141123','兴县','',0,352);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400110005','141124','临县','',0,353);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400110006','141125','柳林县','',0,354);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400110007','141126','石楼县','',0,355);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400110008','141127','岚县','',0,356);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400110009','141128','方山县','',0,357);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400110010','141129','中阳县','',0,358);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400110011','141130','交口县','',0,359);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400110012','141181','孝义市','',0,360);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000400110013','141182','汾阳市','',0,361);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('00010005','150000','内蒙古自治区','',0,362);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100050001','150100','呼和浩特市','',0,363);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500010001','150102','新城区','',0,364);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500010002','150103','回民区','',0,365);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500010003','150104','玉泉区','',0,366);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500010004','150105','赛罕区','',0,367);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500010005','150121','土默特左旗','',0,368);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500010006','150122','托克托县','',0,369);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500010007','150123','和林格尔县','',0,370);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500010008','150124','清水河县','',0,371);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500010009','150125','武川县','',0,372);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100050002','150200','包头市','',0,373);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500020001','150202','东河区','',0,374);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500020002','150203','昆都仑区','',0,375);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500020003','150204','青山区','',0,376);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500020004','150205','石拐区','',0,377);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500020005','150206','白云矿区','',0,378);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500020006','150207','九原区','',0,379);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500020007','150221','土默特右旗','',0,380);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500020008','150222','固阳县','',0,381);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500020009','150223','达尔罕茂明安联合旗','',0,382);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100050003','150300','乌海市','',0,383);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500030001','150302','海勃湾区','',0,384);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500030002','150303','海南区','',0,385);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500030003','150304','乌达区','',0,386);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100050004','150400','赤峰市','',0,387);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500040001','150402','红山区','',0,388);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500040002','150403','元宝山区','',0,389);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500040003','150404','松山区','',0,390);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500040004','150421','阿鲁科尔沁旗','',0,391);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500040005','150422','巴林左旗','',0,392);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500040006','150423','巴林右旗','',0,393);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500040007','150424','林西县','',0,394);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500040008','150425','克什克腾旗','',0,395);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500040009','150426','翁牛特旗','',0,396);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500040010','150428','喀喇沁旗','',0,397);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500040011','150429','宁城县','',0,398);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500040012','150430','敖汉旗','',0,399);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100050005','150500','通辽市','',0,400);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500050001','150502','科尔沁区','',0,401);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500050002','150521','科尔沁左翼中旗','',0,402);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500050003','150522','科尔沁左翼后旗','',0,403);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500050004','150523','开鲁县','',0,404);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500050005','150524','库伦旗','',0,405);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500050006','150525','奈曼旗','',0,406);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500050007','150526','扎鲁特旗','',0,407);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500050008','150581','霍林郭勒市','',0,408);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100050006','150600','鄂尔多斯市','',0,409);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500060001','150602','东胜区','',0,410);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500060002','150621','达拉特旗','',0,411);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500060003','150622','准格尔旗','',0,412);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500060004','150623','鄂托克前旗','',0,413);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500060005','150624','鄂托克旗','',0,414);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500060006','150625','杭锦旗','',0,415);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500060007','150626','乌审旗','',0,416);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500060008','150627','伊金霍洛旗','',0,417);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100050007','150700','呼伦贝尔市','',0,418);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500070001','150702','海拉尔区','',0,419);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500070002','150721','阿荣旗','',0,420);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500070003','150722','莫力达瓦达斡尔族自治旗','',0,421);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500070004','150723','鄂伦春自治旗','',0,422);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500070005','150724','鄂温克族自治旗','',0,423);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500070006','150725','陈巴尔虎旗','',0,424);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500070007','150726','新巴尔虎左旗','',0,425);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500070008','150727','新巴尔虎右旗','',0,426);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500070009','150781','满洲里市','',0,427);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500070010','150782','牙克石市','',0,428);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500070011','150783','扎兰屯市','',0,429);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500070012','150784','额尔古纳市','',0,430);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500070013','150785','根河市','',0,431);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100050008','150800','巴彦淖尔市','',0,432);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500080001','150802','临河区','',0,433);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500080002','150821','五原县','',0,434);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500080003','150822','磴口县','',0,435);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500080004','150823','乌拉特前旗','',0,436);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500080005','150824','乌拉特中旗','',0,437);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500080006','150825','乌拉特后旗','',0,438);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500080007','150826','杭锦后旗','',0,439);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100050009','150900','乌兰察布市','',0,440);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500090001','150902','集宁区','',0,441);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500090002','150921','卓资县','',0,442);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500090003','150922','化德县','',0,443);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500090004','150923','商都县','',0,444);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500090005','150924','兴和县','',0,445);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500090006','150925','凉城县','',0,446);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500090007','150926','察哈尔右翼前旗','',0,447);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500090008','150927','察哈尔右翼中旗','',0,448);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500090009','150928','察哈尔右翼后旗','',0,449);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500090010','150929','四子王旗','',0,450);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500090011','150981','丰镇市','',0,451);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100050010','152200','兴安盟','',0,452);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500100001','152201','乌兰浩特市','',0,453);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500100002','152202','阿尔山市','',0,454);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500100003','152221','科尔沁右翼前旗','',0,455);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500100004','152222','科尔沁右翼中旗','',0,456);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500100005','152223','扎赉特旗','',0,457);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500100006','152224','突泉县','',0,458);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100050011','152500','锡林郭勒盟','',0,459);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500110001','152501','二连浩特市','',0,460);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500110002','152502','锡林浩特市','',0,461);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500110003','152522','阿巴嘎旗','',0,462);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500110004','152523','苏尼特左旗','',0,463);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500110005','152524','苏尼特右旗','',0,464);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500110006','152525','东乌珠穆沁旗','',0,465);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500110007','152526','西乌珠穆沁旗','',0,466);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500110008','152527','太仆寺旗','',0,467);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500110009','152528','镶黄旗','',0,468);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500110010','152529','正镶白旗','',0,469);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500110011','152530','正蓝旗','',0,470);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500110012','152531','多伦县','',0,471);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100050012','152900','阿拉善盟','',0,472);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500120001','152921','阿拉善左旗','',0,473);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500120002','152922','阿拉善右旗','',0,474);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000500120003','152923','额济纳旗','',0,475);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('00010006','210000','辽宁省','',0,476);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100060001','210100','沈阳市','',0,477);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600010001','210102','和平区','',0,478);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600010002','210103','沈河区','',0,479);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600010003','210104','大东区','',0,480);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600010004','210105','皇姑区','',0,481);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600010005','210106','铁西区','',0,482);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600010006','210111','苏家屯区','',0,483);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600010007','210112','东陵区','',0,484);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600010008','210113','新城子区','',0,485);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600010009','210114','于洪区','',0,486);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600010010','210122','辽中县','',0,487);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600010011','210123','康平县','',0,488);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600010012','210124','法库县','',0,489);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600010013','210181','新民市','',0,490);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600010014','210182','浑南新区','',0,491);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600010015','210183','张士开发区','',0,492);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600010016','210184','沈北新区','',0,493);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100060002','210200','大连市','',0,494);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600020001','210202','中山区','',0,495);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600020002','210203','西岗区','',0,496);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600020003','210204','沙河口区','',0,497);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600020004','210211','甘井子区','',0,498);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600020005','210212','旅顺口区','',0,499);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600020006','210213','金州区','',0,500);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600020007','210224','长海县','',0,501);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600020008','210251','开发区','',0,502);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600020009','210281','瓦房店市','',0,503);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600020010','210282','普兰店市','',0,504);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600020011','210283','庄河市','',0,505);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600020012','210297','岭前区','',0,506);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100060003','210300','鞍山市','',0,507);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600030001','210302','铁东区','',0,508);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600030002','210303','铁西区','',0,509);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600030003','210304','立山区','',0,510);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600030004','210311','千山区','',0,511);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600030005','210321','台安县','',0,512);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600030006','210323','岫岩满族自治县','',0,513);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600030007','210351','高新区','',0,514);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600030008','210381','海城市','',0,515);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100060004','210400','抚顺市','',0,516);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600040001','210402','新抚区','',0,517);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600040002','210403','东洲区','',0,518);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600040003','210404','望花区','',0,519);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600040004','210411','顺城区','',0,520);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600040005','210421','抚顺县','',0,521);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600040006','210422','新宾满族自治县','',0,522);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600040007','210423','清原满族自治县','',0,523);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100060005','210500','本溪市','',0,524);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600050001','210502','平山区','',0,525);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600050002','210503','溪湖区','',0,526);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600050003','210504','明山区','',0,527);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600050004','210505','南芬区','',0,528);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600050005','210521','本溪满族自治县','',0,529);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600050006','210522','桓仁满族自治县','',0,530);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100060006','210600','丹东市','',0,531);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600060001','210602','元宝区','',0,532);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600060002','210603','振兴区','',0,533);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600060003','210604','振安区','',0,534);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600060004','210624','宽甸满族自治县','',0,535);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600060005','210681','东港市','',0,536);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600060006','210682','凤城市','',0,537);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100060007','210700','锦州市','',0,538);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600070001','210702','古塔区','',0,539);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600070002','210703','凌河区','',0,540);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600070003','210711','太和区','',0,541);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600070004','210726','黑山县','',0,542);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600070005','210727','义县','',0,543);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600070006','210781','凌海市','',0,544);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600070007','210782','北镇市','',0,545);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100060008','210800','营口市','',0,546);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600080001','210802','站前区','',0,547);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600080002','210803','西市区','',0,548);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600080003','210804','鲅鱼圈区','',0,549);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600080004','210811','老边区','',0,550);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600080005','210881','盖州市','',0,551);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600080006','210882','大石桥市','',0,552);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100060009','210900','阜新市','',0,553);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600090001','210902','海州区','',0,554);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600090002','210903','新邱区','',0,555);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600090003','210904','太平区','',0,556);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600090004','210905','清河门区','',0,557);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600090005','210911','细河区','',0,558);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600090006','210921','阜新蒙古族自治县','',0,559);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600090007','210922','彰武县','',0,560);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100060010','211000','辽阳市','',0,561);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600100001','211002','白塔区','',0,562);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600100002','211003','文圣区','',0,563);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600100003','211004','宏伟区','',0,564);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600100004','211005','弓长岭区','',0,565);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600100005','211011','太子河区','',0,566);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600100006','211021','辽阳县','',0,567);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600100007','211081','灯塔市','',0,568);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100060011','211100','盘锦市','',0,569);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600110001','211102','双台子区','',0,570);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600110002','211103','兴隆台区','',0,571);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600110003','211121','大洼县','',0,572);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600110004','211122','盘山县','',0,573);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100060012','211200','铁岭市','',0,574);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600120001','211202','银州区','',0,575);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600120002','211204','清河区','',0,576);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600120003','211221','铁岭县','',0,577);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600120004','211223','西丰县','',0,578);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600120005','211224','昌图县','',0,579);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600120006','211281','调兵山市','',0,580);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600120007','211282','开原市','',0,581);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100060013','211300','朝阳市','',0,582);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600130001','211302','双塔区','',0,583);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600130002','211303','龙城区','',0,584);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600130003','211321','朝阳县','',0,585);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600130004','211322','建平县','',0,586);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600130005','211324','喀喇沁左翼蒙古族自治县','',0,587);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600130006','211381','北票市','',0,588);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600130007','211382','凌源市','',0,589);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100060014','211400','葫芦岛市','',0,590);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600140001','211402','连山区','',0,591);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600140002','211403','龙港区','',0,592);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600140003','211404','南票区','',0,593);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600140004','211421','绥中县','',0,594);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600140005','211422','建昌县','',0,595);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000600140006','211481','兴城市','',0,596);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('00010007','220000','吉林省','',0,597);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100070001','220100','长春市','',0,598);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700010001','220102','南关区','',0,599);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700010002','220103','宽城区','',0,600);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700010003','220104','朝阳区','',0,601);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700010004','220105','二道区','',0,602);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700010005','220106','绿园区','',0,603);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700010006','220112','双阳区','',0,604);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700010007','220122','农安县','',0,605);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700010008','220181','九台市','',0,606);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700010009','220182','榆树市','',0,607);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700010010','220183','德惠市','',0,608);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700010011','220184','高新技术产业开发区','',0,609);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700010012','220185','汽车产业开发区','',0,610);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700010013','220186','经济技术开发区','',0,611);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700010014','220187','净月旅游开发区','',0,612);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100070002','220200','吉林市','',0,613);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700020001','220202','昌邑区','',0,614);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700020002','220203','龙潭区','',0,615);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700020003','220204','船营区','',0,616);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700020004','220211','丰满区','',0,617);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700020005','220221','永吉县','',0,618);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700020006','220281','蛟河市','',0,619);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700020007','220282','桦甸市','',0,620);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700020008','220283','舒兰市','',0,621);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700020009','220284','磐石市','',0,622);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100070003','220300','四平市','',0,623);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700030001','220302','铁西区','',0,624);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700030002','220303','铁东区','',0,625);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700030003','220322','梨树县','',0,626);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700030004','220323','伊通满族自治县','',0,627);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700030005','220381','公主岭市','',0,628);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700030006','220382','双辽市','',0,629);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100070004','220400','辽源市','',0,630);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700040001','220402','龙山区','',0,631);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700040002','220403','西安区','',0,632);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700040003','220421','东丰县','',0,633);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700040004','220422','东辽县','',0,634);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100070005','220500','通化市','',0,635);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700050001','220502','东昌区','',0,636);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700050002','220503','二道江区','',0,637);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700050003','220521','通化县','',0,638);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700050004','220523','辉南县','',0,639);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700050005','220524','柳河县','',0,640);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700050006','220581','梅河口市','',0,641);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700050007','220582','集安市','',0,642);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100070006','220600','白山市','',0,643);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700060001','220602','八道江区','',0,644);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700060002','220621','抚松县','',0,645);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700060003','220622','靖宇县','',0,646);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700060004','220623','长白朝鲜族自治县','',0,647);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700060005','220625','江源市','',0,648);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700060006','220681','临江市','',0,649);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100070007','220700','松原市','',0,650);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700070001','220702','宁江区','',0,651);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700070002','220721','前郭尔罗斯蒙古族自治县','',0,652);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700070003','220722','长岭县','',0,653);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700070004','220723','乾安县','',0,654);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700070005','220724','扶余县','',0,655);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100070008','220800','白城市','',0,656);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700080001','220802','洮北区','',0,657);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700080002','220821','镇赉县','',0,658);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700080003','220822','通榆县','',0,659);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700080004','220881','洮南市','',0,660);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700080005','220882','大安市','',0,661);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100070009','222400','延边朝鲜族自治州','',0,662);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700090001','222401','延吉市','',0,663);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700090002','222402','图们市','',0,664);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700090003','222403','敦化市','',0,665);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700090004','222404','珲春市','',0,666);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700090005','222405','龙井市','',0,667);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700090006','222406','和龙市','',0,668);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700090007','222424','汪清县','',0,669);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000700090008','222426','安图县','',0,670);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('00010008','230000','黑龙江省','',0,671);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100080001','230100','哈尔滨市','',0,672);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800010001','230102','道里区','',0,673);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800010002','230103','南岗区','',0,674);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800010003','230104','道外区','',0,675);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800010004','230106','香坊区','',0,676);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800010005','230107','动力区','',0,677);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800010006','230108','平房区','',0,678);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800010007','230109','松北区','',0,679);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800010008','230111','呼兰区','',0,680);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800010009','230123','依兰县','',0,681);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800010010','230124','方正县','',0,682);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800010011','230125','宾县','',0,683);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800010012','230126','巴彦县','',0,684);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800010013','230127','木兰县','',0,685);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800010014','230128','通河县','',0,686);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800010015','230129','延寿县','',0,687);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800010016','230181','阿城市','',0,688);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800010017','230182','双城市','',0,689);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800010018','230183','尚志市','',0,690);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800010019','230184','五常市','',0,691);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800010020','230185','阿城市','',0,692);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100080002','230200','齐齐哈尔市','',0,693);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800020001','230202','龙沙区','',0,694);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800020002','230203','建华区','',0,695);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800020003','230204','铁锋区','',0,696);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800020004','230205','昂昂溪区','',0,697);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800020005','230206','富拉尔基区','',0,698);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800020006','230207','碾子山区','',0,699);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800020007','230208','梅里斯达斡尔族区','',0,700);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800020008','230221','龙江县','',0,701);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800020009','230223','依安县','',0,702);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800020010','230224','泰来县','',0,703);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800020011','230225','甘南县','',0,704);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800020012','230227','富裕县','',0,705);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800020013','230229','克山县','',0,706);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800020014','230230','克东县','',0,707);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800020015','230231','拜泉县','',0,708);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800020016','230281','讷河市','',0,709);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100080003','230300','鸡西市','',0,710);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800030001','230302','鸡冠区','',0,711);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800030002','230303','恒山区','',0,712);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800030003','230304','滴道区','',0,713);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800030004','230305','梨树区','',0,714);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800030005','230306','城子河区','',0,715);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800030006','230307','麻山区','',0,716);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800030007','230321','鸡东县','',0,717);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800030008','230381','虎林市','',0,718);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800030009','230382','密山市','',0,719);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100080004','230400','鹤岗市','',0,720);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800040001','230402','向阳区','',0,721);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800040002','230403','工农区','',0,722);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800040003','230404','南山区','',0,723);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800040004','230405','兴安区','',0,724);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800040005','230406','东山区','',0,725);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800040006','230407','兴山区','',0,726);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800040007','230421','萝北县','',0,727);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800040008','230422','绥滨县','',0,728);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100080005','230500','双鸭山市','',0,729);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800050001','230502','尖山区','',0,730);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800050002','230503','岭东区','',0,731);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800050003','230505','四方台区','',0,732);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800050004','230506','宝山区','',0,733);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800050005','230521','集贤县','',0,734);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800050006','230522','友谊县','',0,735);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800050007','230523','宝清县','',0,736);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800050008','230524','饶河县','',0,737);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100080006','230600','大庆市','',0,738);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800060001','230602','萨尔图区','',0,739);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800060002','230603','龙凤区','',0,740);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800060003','230604','让胡路区','',0,741);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800060004','230605','红岗区','',0,742);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800060005','230606','大同区','',0,743);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800060006','230621','肇州县','',0,744);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800060007','230622','肇源县','',0,745);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800060008','230623','林甸县','',0,746);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800060009','230624','杜尔伯特蒙古族自治县','',0,747);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100080007','230700','伊春市','',0,748);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800070001','230702','伊春区','',0,749);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800070002','230703','南岔区','',0,750);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800070003','230704','友好区','',0,751);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800070004','230705','西林区','',0,752);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800070005','230706','翠峦区','',0,753);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800070006','230707','新青区','',0,754);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800070007','230708','美溪区','',0,755);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800070008','230709','金山屯区','',0,756);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800070009','230710','五营区','',0,757);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800070010','230711','乌马河区','',0,758);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800070011','230712','汤旺河区','',0,759);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800070012','230713','带岭区','',0,760);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800070013','230714','乌伊岭区','',0,761);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800070014','230715','红星区','',0,762);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800070015','230716','上甘岭区','',0,763);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800070016','230722','嘉荫县','',0,764);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800070017','230781','铁力市','',0,765);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100080008','230800','佳木斯市','',0,766);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800080001','230802','永红区','',0,767);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800080002','230803','向阳区','',0,768);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800080003','230804','前进区','',0,769);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800080004','230805','东风区','',0,770);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800080005','230811','郊区','',0,771);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800080006','230822','桦南县','',0,772);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800080007','230826','桦川县','',0,773);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800080008','230828','汤原县','',0,774);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800080009','230833','抚远县','',0,775);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800080010','230881','同江市','',0,776);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800080011','230882','富锦市','',0,777);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100080009','230900','七台河市','',0,778);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800090001','230902','新兴区','',0,779);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800090002','230903','桃山区','',0,780);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800090003','230904','茄子河区','',0,781);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800090004','230921','勃利县','',0,782);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100080010','231000','牡丹江市','',0,783);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800100001','231002','东安区','',0,784);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800100002','231003','阳明区','',0,785);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800100003','231004','爱民区','',0,786);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800100004','231005','西安区','',0,787);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800100005','231024','东宁县','',0,788);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800100006','231025','林口县','',0,789);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800100007','231081','绥芬河市','',0,790);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800100008','231083','海林市','',0,791);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800100009','231084','宁安市','',0,792);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800100010','231085','穆棱市','',0,793);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100080011','231100','黑河市','',0,794);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800110001','231102','爱辉区','',0,795);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800110002','231121','嫩江县','',0,796);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800110003','231123','逊克县','',0,797);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800110004','231124','孙吴县','',0,798);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800110005','231181','北安市','',0,799);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800110006','231182','五大连池市','',0,800);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100080012','231200','绥化市','',0,801);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800120001','231202','北林区','',0,802);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800120002','231221','望奎县','',0,803);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800120003','231222','兰西县','',0,804);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800120004','231223','青冈县','',0,805);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800120005','231224','庆安县','',0,806);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800120006','231225','明水县','',0,807);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800120007','231226','绥棱县','',0,808);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800120008','231281','安达市','',0,809);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800120009','231282','肇东市','',0,810);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800120010','231283','海伦市','',0,811);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100080013','232700','大兴安岭地区','',0,812);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800130001','232721','呼玛县','',0,813);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800130002','232722','塔河县','',0,814);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800130003','232723','漠河县','',0,815);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000800130004','232724','加格达奇区','',0,816);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('00010009','310000','上海','',0,817);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100090001','310100','上海市','',0,818);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000900010001','310101','黄浦区','',0,819);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000900010002','310103','卢湾区','',0,820);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000900010003','310104','徐汇区','',0,821);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000900010004','310105','长宁区','',0,822);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000900010005','310106','静安区','',0,823);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000900010006','310107','普陀区','',0,824);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000900010007','310108','闸北区','',0,825);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000900010008','310109','虹口区','',0,826);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000900010009','310110','杨浦区','',0,827);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000900010010','310112','闵行区','',0,828);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000900010011','310113','宝山区','',0,829);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000900010012','310114','嘉定区','',0,830);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000900010013','310115','浦东新区','',0,831);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000900010014','310116','金山区','',0,832);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000900010015','310117','松江区','',0,833);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000900010016','310118','青浦区','',0,834);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000900010017','310119','南汇区','',0,835);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000900010018','310120','奉贤区','',0,836);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000900010019','310152','川沙区','',0,837);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001000900010020','310230','崇明县','',0,838);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('00010010','320000','江苏省','',0,839);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100100001','320100','南京市','',0,840);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000010001','320102','玄武区','',0,841);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000010002','320103','白下区','',0,842);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000010003','320104','秦淮区','',0,843);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000010004','320105','建邺区','',0,844);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000010005','320106','鼓楼区','',0,845);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000010006','320107','下关区','',0,846);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000010007','320111','浦口区','',0,847);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000010008','320113','栖霞区','',0,848);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000010009','320114','雨花台区','',0,849);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000010010','320115','江宁区','',0,850);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000010011','320116','六合区','',0,851);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000010012','320124','溧水县','',0,852);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000010013','320125','高淳县','',0,853);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100100002','320200','无锡市','',0,854);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000020001','320202','崇安区','',0,855);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000020002','320203','南长区','',0,856);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000020003','320204','北塘区','',0,857);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000020004','320205','锡山区','',0,858);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000020005','320206','惠山区','',0,859);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000020006','320211','滨湖区','',0,860);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000020007','320281','江阴市','',0,861);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000020008','320282','宜兴市','',0,862);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000020009','320296','新区','',0,863);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100100003','320300','徐州市','',0,864);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000030001','320302','鼓楼区','',0,865);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000030002','320303','云龙区','',0,866);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000030003','320304','九里区','',0,867);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000030004','320305','贾汪区','',0,868);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000030005','320311','泉山区','',0,869);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000030006','320321','丰县','',0,870);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000030007','320322','沛县','',0,871);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000030008','320323','铜山县','',0,872);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000030009','320324','睢宁县','',0,873);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000030010','320381','新沂市','',0,874);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000030011','320382','邳州市','',0,875);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100100004','320400','常州市','',0,876);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000040001','320402','天宁区','',0,877);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000040002','320404','钟楼区','',0,878);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000040003','320405','戚墅堰区','',0,879);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000040004','320411','新北区','',0,880);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000040005','320412','武进区','',0,881);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000040006','320481','溧阳市','',0,882);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000040007','320482','金坛市','',0,883);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100100005','320500','苏州市','',0,884);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000050001','320502','沧浪区','',0,885);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000050002','320503','平江区','',0,886);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000050003','320504','金阊区','',0,887);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000050004','320505','虎丘区','',0,888);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000050005','320506','吴中区','',0,889);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000050006','320507','相城区','',0,890);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000050007','320581','常熟市','',0,891);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000050008','320582','张家港市','',0,892);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000050009','320583','昆山市','',0,893);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000050010','320584','吴江市','',0,894);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000050011','320585','太仓市','',0,895);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000050012','320594','新区','',0,896);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000050013','320595','园区','',0,897);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100100006','320600','南通市','',0,898);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000060001','320602','崇川区','',0,899);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000060002','320611','港闸区','',0,900);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000060003','320612','通州区','',0,901);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000060004','320621','海安县','',0,902);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000060005','320623','如东县','',0,903);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000060006','320681','启东市','',0,904);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000060007','320682','如皋市','',0,905);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000060008','320683','通州市','',0,906);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000060009','320684','海门市','',0,907);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000060010','320693','开发区','',0,908);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100100007','320700','连云港市','',0,909);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000070001','320703','连云区','',0,910);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000070002','320705','新浦区','',0,911);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000070003','320706','海州区','',0,912);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000070004','320721','赣榆县','',0,913);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000070005','320722','东海县','',0,914);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000070006','320723','灌云县','',0,915);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000070007','320724','灌南县','',0,916);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100100008','320800','淮安市','',0,917);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000080001','320802','清河区','',0,918);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000080002','320803','楚州区','',0,919);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000080003','320804','淮阴区','',0,920);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000080004','320811','清浦区','',0,921);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000080005','320826','涟水县','',0,922);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000080006','320829','洪泽县','',0,923);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000080007','320830','盱眙县','',0,924);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000080008','320831','金湖县','',0,925);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100100009','320900','盐城市','',0,926);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000090001','320902','亭湖区','',0,927);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000090002','320903','盐都区','',0,928);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000090003','320921','响水县','',0,929);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000090004','320922','滨海县','',0,930);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000090005','320923','阜宁县','',0,931);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000090006','320924','射阳县','',0,932);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000090007','320925','建湖县','',0,933);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000090008','320981','东台市','',0,934);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000090009','320982','大丰市','',0,935);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100100010','321000','扬州市','',0,936);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000100001','321002','广陵区','',0,937);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000100002','321003','邗江区','',0,938);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000100003','321011','维扬区','',0,939);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000100004','321023','宝应县','',0,940);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000100005','321081','仪征市','',0,941);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000100006','321084','高邮市','',0,942);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000100007','321088','江都市','',0,943);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000100008','321092','经济开发区','',0,944);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100100011','321100','镇江市','',0,945);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000110001','321102','京口区','',0,946);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000110002','321111','润州区','',0,947);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000110003','321112','丹徒区','',0,948);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000110004','321181','丹阳市','',0,949);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000110005','321182','扬中市','',0,950);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000110006','321183','句容市','',0,951);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100100012','321200','泰州市','',0,952);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000120001','321202','海陵区','',0,953);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000120002','321203','高港区','',0,954);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000120003','321281','兴化市','',0,955);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000120004','321282','靖江市','',0,956);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000120005','321283','泰兴市','',0,957);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000120006','321284','姜堰市','',0,958);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100100013','321300','宿迁市','',0,959);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000130001','321302','宿城区','',0,960);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000130002','321311','宿豫区','',0,961);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000130003','321322','沭阳县','',0,962);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000130004','321323','泗阳县','',0,963);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001000130005','321324','泗洪县','',0,964);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('00010011','330000','浙江省','',0,965);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100110001','330100','杭州市','',0,966);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100010001','330102','上城区','',0,967);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100010002','330103','下城区','',0,968);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100010003','330104','江干区','',0,969);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100010004','330105','拱墅区','',0,970);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100010005','330106','西湖区','',0,971);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100010006','330108','滨江区','',0,972);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100010007','330109','萧山区','',0,973);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100010008','330110','余杭区','',0,974);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100010009','330122','桐庐县','',0,975);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100010010','330127','淳安县','',0,976);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100010011','330182','建德市','',0,977);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100010012','330183','富阳市','',0,978);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100010013','330185','临安市','',0,979);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100110002','330200','宁波市','',0,980);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100020001','330203','海曙区','',0,981);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100020002','330204','江东区','',0,982);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100020003','330205','江北区','',0,983);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100020004','330206','北仑区','',0,984);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100020005','330211','镇海区','',0,985);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100020006','330212','鄞州区','',0,986);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100020007','330225','象山县','',0,987);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100020008','330226','宁海县','',0,988);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100020009','330281','余姚市','',0,989);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100020010','330282','慈溪市','',0,990);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100020011','330283','奉化市','',0,991);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100110003','330300','温州市','',0,992);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100030001','330302','鹿城区','',0,993);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100030002','330303','龙湾区','',0,994);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100030003','330304','瓯海区','',0,995);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100030004','330322','洞头县','',0,996);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100030005','330324','永嘉县','',0,997);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100030006','330326','平阳县','',0,998);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100030007','330327','苍南县','',0,999);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100030008','330328','文成县','',0,1000);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100030009','330329','泰顺县','',0,1001);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100030010','330381','瑞安市','',0,1002);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100030011','330382','乐清市','',0,1003);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100110004','330400','嘉兴市','',0,1004);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100040001','330402','南湖区','',0,1005);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100040002','330411','秀洲区','',0,1006);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100040003','330421','嘉善县','',0,1007);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100040004','330424','海盐县','',0,1008);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100040005','330481','海宁市','',0,1009);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100040006','330482','平湖市','',0,1010);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100040007','330483','桐乡市','',0,1011);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100110005','330500','湖州市','',0,1012);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100050001','330502','吴兴区','',0,1013);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100050002','330503','南浔区','',0,1014);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100050003','330521','德清县','',0,1015);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100050004','330522','长兴县','',0,1016);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100050005','330523','安吉县','',0,1017);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100110006','330600','绍兴市','',0,1018);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100060001','330602','越城区','',0,1019);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100060002','330621','绍兴县','',0,1020);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100060003','330624','新昌县','',0,1021);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100060004','330681','诸暨市','',0,1022);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100060005','330682','上虞市','',0,1023);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100060006','330683','嵊州市','',0,1024);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100110007','330700','金华市','',0,1025);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100070001','330702','婺城区','',0,1026);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100070002','330703','金东区','',0,1027);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100070003','330723','武义县','',0,1028);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100070004','330726','浦江县','',0,1029);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100070005','330727','磐安县','',0,1030);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100070006','330781','兰溪市','',0,1031);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100070007','330782','义乌市','',0,1032);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100070008','330783','东阳市','',0,1033);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100070009','330784','永康市','',0,1034);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100110008','330800','衢州市','',0,1035);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100080001','330802','柯城区','',0,1036);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100080002','330803','衢江区','',0,1037);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100080003','330822','常山县','',0,1038);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100080004','330824','开化县','',0,1039);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100080005','330825','龙游县','',0,1040);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100080006','330881','江山市','',0,1041);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100110009','330900','舟山市','',0,1042);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100090001','330902','定海区','',0,1043);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100090002','330903','普陀区','',0,1044);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100090003','330921','岱山县','',0,1045);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100090004','330922','嵊泗县','',0,1046);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100110010','331000','台州市','',0,1047);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100100001','331002','椒江区','',0,1048);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100100002','331003','黄岩区','',0,1049);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100100003','331004','路桥区','',0,1050);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100100004','331021','玉环县','',0,1051);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100100005','331022','三门县','',0,1052);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100100006','331023','天台县','',0,1053);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100100007','331024','仙居县','',0,1054);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100100008','331081','温岭市','',0,1055);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100100009','331082','临海市','',0,1056);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100110011','331100','丽水市','',0,1057);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100110001','331102','莲都区','',0,1058);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100110002','331121','青田县','',0,1059);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100110003','331122','缙云县','',0,1060);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100110004','331123','遂昌县','',0,1061);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100110005','331124','松阳县','',0,1062);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100110006','331125','云和县','',0,1063);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100110007','331126','庆元县','',0,1064);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100110008','331127','景宁畲族自治县','',0,1065);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001100110009','331181','龙泉市','',0,1066);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('00010012','340000','安徽省','',0,1067);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100120001','340100','合肥市','',0,1068);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200010001','340102','瑶海区','',0,1069);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200010002','340103','庐阳区','',0,1070);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200010003','340104','蜀山区','',0,1071);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200010004','340111','包河区','',0,1072);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200010005','340121','长丰县','',0,1073);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200010006','340122','肥东县','',0,1074);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200010007','340123','肥西县','',0,1075);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200010008','340151','高新区','',0,1076);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200010009','340191','中区','',0,1077);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200010010','341400','巢湖市','',0,1078);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200010011','341402','居巢区','',0,1079);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200010012','341421','庐江县','',0,1080);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100120002','340200','芜湖市','',0,1081);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200020001','340202','镜湖区','',0,1082);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200020002','340203','弋江区','',0,1083);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200020003','340207','鸠江区','',0,1084);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200020004','340208','三山区','',0,1085);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200020005','340221','芜湖县','',0,1086);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200020006','340222','繁昌县','',0,1087);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200020007','340223','南陵县','',0,1088);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200020008','341422','无为县','',0,1089);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100120003','340300','蚌埠市','',0,1090);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200030001','340302','龙子湖区','',0,1091);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200030002','340303','蚌山区','',0,1092);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200030003','340304','禹会区','',0,1093);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200030004','340311','淮上区','',0,1094);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200030005','340321','怀远县','',0,1095);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200030006','340322','五河县','',0,1096);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200030007','340323','固镇县','',0,1097);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100120004','340400','淮南市','',0,1098);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200040001','340402','大通区','',0,1099);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200040002','340403','田家庵区','',0,1100);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200040003','340404','谢家集区','',0,1101);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200040004','340405','八公山区','',0,1102);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200040005','340406','潘集区','',0,1103);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200040006','340421','凤台县','',0,1104);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100120005','340500','马鞍山市','',0,1105);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200050001','340502','金家庄区','',0,1106);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200050002','340503','花山区','',0,1107);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200050003','340504','雨山区','',0,1108);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200050004','340521','当涂县','',0,1109);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200050005','341423','含山县','',0,1110);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200050006','341424','和县','',0,1111);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100120006','340600','淮北市','',0,1112);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200060001','340602','杜集区','',0,1113);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200060002','340603','相山区','',0,1114);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200060003','340604','烈山区','',0,1115);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200060004','340621','濉溪县','',0,1116);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100120007','340700','铜陵市','',0,1117);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200070001','340702','铜官山区','',0,1118);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200070002','340703','狮子山区','',0,1119);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200070003','340711','郊区','',0,1120);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200070004','340721','铜陵县','',0,1121);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100120008','340800','安庆市','',0,1122);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200080001','340802','迎江区','',0,1123);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200080002','340803','大观区','',0,1124);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200080003','340811','宜秀区','',0,1125);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200080004','340822','怀宁县','',0,1126);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200080005','340823','枞阳县','',0,1127);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200080006','340824','潜山县','',0,1128);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200080007','340825','太湖县','',0,1129);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200080008','340826','宿松县','',0,1130);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200080009','340827','望江县','',0,1131);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200080010','340828','岳西县','',0,1132);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200080011','340881','桐城市','',0,1133);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100120009','341000','黄山市','',0,1134);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200090001','341002','屯溪区','',0,1135);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200090002','341003','黄山区','',0,1136);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200090003','341004','徽州区','',0,1137);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200090004','341021','歙县','',0,1138);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200090005','341022','休宁县','',0,1139);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200090006','341023','黟县','',0,1140);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200090007','341024','祁门县','',0,1141);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100120010','341100','滁州市','',0,1142);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200100001','341102','琅琊区','',0,1143);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200100002','341103','南谯区','',0,1144);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200100003','341122','来安县','',0,1145);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200100004','341124','全椒县','',0,1146);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200100005','341125','定远县','',0,1147);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200100006','341126','凤阳县','',0,1148);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200100007','341181','天长市','',0,1149);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200100008','341182','明光市','',0,1150);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100120011','341200','阜阳市','',0,1151);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200110001','341202','颍州区','',0,1152);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200110002','341203','颍东区','',0,1153);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200110003','341204','颍泉区','',0,1154);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200110004','341221','临泉县','',0,1155);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200110005','341222','太和县','',0,1156);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200110006','341225','阜南县','',0,1157);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200110007','341226','颍上县','',0,1158);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200110008','341282','界首市','',0,1159);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100120012','341300','宿州市','',0,1160);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200120001','341302','埇桥区','',0,1161);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200120002','341321','砀山县','',0,1162);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200120003','341322','萧县','',0,1163);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200120004','341323','灵璧县','',0,1164);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200120005','341324','泗县','',0,1165);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100120013','341500','六安市','',0,1166);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200130001','341502','金安区','',0,1167);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200130002','341503','裕安区','',0,1168);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200130003','341521','寿县','',0,1169);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200130004','341522','霍邱县','',0,1170);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200130005','341523','舒城县','',0,1171);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200130006','341524','金寨县','',0,1172);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200130007','341525','霍山县','',0,1173);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100120014','341600','亳州市','',0,1174);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200140001','341602','谯城区','',0,1175);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200140002','341621','涡阳县','',0,1176);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200140003','341622','蒙城县','',0,1177);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200140004','341623','利辛县','',0,1178);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100120015','341700','池州市','',0,1179);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200150001','341702','贵池区','',0,1180);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200150002','341721','东至县','',0,1181);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200150003','341722','石台县','',0,1182);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200150004','341723','青阳县','',0,1183);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100120016','341800','宣城市','',0,1184);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200160001','341802','宣州区','',0,1185);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200160002','341821','郎溪县','',0,1186);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200160003','341822','广德县','',0,1187);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200160004','341823','泾县','',0,1188);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200160005','341824','绩溪县','',0,1189);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200160006','341825','旌德县','',0,1190);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001200160007','341881','宁国市','',0,1191);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('00010013','350000','福建省','',0,1192);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100130001','350100','福州市','',0,1193);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300010001','350102','鼓楼区','',0,1194);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300010002','350103','台江区','',0,1195);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300010003','350104','仓山区','',0,1196);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300010004','350105','马尾区','',0,1197);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300010005','350111','晋安区','',0,1198);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300010006','350121','闽侯县','',0,1199);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300010007','350122','连江县','',0,1200);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300010008','350123','罗源县','',0,1201);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300010009','350124','闽清县','',0,1202);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300010010','350125','永泰县','',0,1203);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300010011','350128','平潭县','',0,1204);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300010012','350181','福清市','',0,1205);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300010013','350182','长乐市','',0,1206);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100130002','350200','厦门市','',0,1207);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300020001','350203','思明区','',0,1208);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300020002','350205','海沧区','',0,1209);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300020003','350206','湖里区','',0,1210);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300020004','350211','集美区','',0,1211);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300020005','350212','同安区','',0,1212);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300020006','350213','翔安区','',0,1213);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100130003','350300','莆田市','',0,1214);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300030001','350302','城厢区','',0,1215);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300030002','350303','涵江区','',0,1216);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300030003','350304','荔城区','',0,1217);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300030004','350305','秀屿区','',0,1218);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300030005','350322','仙游县','',0,1219);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100130004','350400','三明市','',0,1220);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300040001','350402','梅列区','',0,1221);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300040002','350403','三元区','',0,1222);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300040003','350421','明溪县','',0,1223);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300040004','350423','清流县','',0,1224);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300040005','350424','宁化县','',0,1225);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300040006','350425','大田县','',0,1226);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300040007','350426','尤溪县','',0,1227);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300040008','350427','沙县','',0,1228);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300040009','350428','将乐县','',0,1229);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300040010','350429','泰宁县','',0,1230);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300040011','350430','建宁县','',0,1231);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300040012','350481','永安市','',0,1232);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100130005','350500','泉州市','',0,1233);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300050001','350502','鲤城区','',0,1234);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300050002','350503','丰泽区','',0,1235);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300050003','350504','洛江区','',0,1236);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300050004','350505','泉港区','',0,1237);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300050005','350521','惠安县','',0,1238);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300050006','350524','安溪县','',0,1239);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300050007','350525','永春县','',0,1240);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300050008','350526','德化县','',0,1241);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300050009','350527','金门县','',0,1242);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300050010','350581','石狮市','',0,1243);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300050011','350582','晋江市','',0,1244);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300050012','350583','南安市','',0,1245);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100130006','350600','漳州市','',0,1246);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300060001','350602','芗城区','',0,1247);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300060002','350603','龙文区','',0,1248);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300060003','350622','云霄县','',0,1249);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300060004','350623','漳浦县','',0,1250);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300060005','350624','诏安县','',0,1251);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300060006','350625','长泰县','',0,1252);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300060007','350626','东山县','',0,1253);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300060008','350627','南靖县','',0,1254);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300060009','350628','平和县','',0,1255);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300060010','350629','华安县','',0,1256);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300060011','350681','龙海市','',0,1257);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100130007','350700','南平市','',0,1258);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300070001','350702','延平区','',0,1259);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300070002','350721','顺昌县','',0,1260);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300070003','350722','浦城县','',0,1261);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300070004','350723','光泽县','',0,1262);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300070005','350724','松溪县','',0,1263);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300070006','350725','政和县','',0,1264);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300070007','350781','邵武市','',0,1265);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300070008','350782','武夷山市','',0,1266);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300070009','350783','建瓯市','',0,1267);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300070010','350784','建阳市','',0,1268);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100130008','350800','龙岩市','',0,1269);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300080001','350802','新罗区','',0,1270);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300080002','350821','长汀县','',0,1271);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300080003','350822','永定县','',0,1272);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300080004','350823','上杭县','',0,1273);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300080005','350824','武平县','',0,1274);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300080006','350825','连城县','',0,1275);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300080007','350881','漳平市','',0,1276);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100130009','350900','宁德市','',0,1277);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300090001','350902','蕉城区','',0,1278);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300090002','350921','霞浦县','',0,1279);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300090003','350922','古田县','',0,1280);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300090004','350923','屏南县','',0,1281);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300090005','350924','寿宁县','',0,1282);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300090006','350925','周宁县','',0,1283);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300090007','350926','柘荣县','',0,1284);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300090008','350981','福安市','',0,1285);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001300090009','350982','福鼎市','',0,1286);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('00010014','360000','江西省','',0,1287);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100140001','360100','南昌市','',0,1288);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400010001','360102','东湖区','',0,1289);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400010002','360103','西湖区','',0,1290);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400010003','360104','青云谱区','',0,1291);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400010004','360105','湾里区','',0,1292);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400010005','360111','青山湖区','',0,1293);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400010006','360121','南昌县','',0,1294);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400010007','360122','新建县','',0,1295);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400010008','360123','安义县','',0,1296);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400010009','360124','进贤县','',0,1297);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400010010','360125','红谷滩新区','',0,1298);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400010011','360126','经济技术开发区','',0,1299);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400010012','360127','昌北区','',0,1300);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100140002','360200','景德镇市','',0,1301);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400020001','360202','昌江区','',0,1302);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400020002','360203','珠山区','',0,1303);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400020003','360222','浮梁县','',0,1304);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400020004','360281','乐平市','',0,1305);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100140003','360300','萍乡市','',0,1306);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400030001','360302','安源区','',0,1307);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400030002','360313','湘东区','',0,1308);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400030003','360321','莲花县','',0,1309);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400030004','360322','上栗县','',0,1310);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400030005','360323','芦溪县','',0,1311);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100140004','360400','九江市','',0,1312);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400040001','360402','庐山区','',0,1313);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400040002','360403','浔阳区','',0,1314);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400040003','360421','九江县','',0,1315);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400040004','360423','武宁县','',0,1316);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400040005','360424','修水县','',0,1317);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400040006','360425','永修县','',0,1318);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400040007','360426','德安县','',0,1319);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400040008','360427','星子县','',0,1320);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400040009','360428','都昌县','',0,1321);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400040010','360429','湖口县','',0,1322);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400040011','360430','彭泽县','',0,1323);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400040012','360481','瑞昌市','',0,1324);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100140005','360500','新余市','',0,1325);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400050001','360502','渝水区','',0,1326);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400050002','360521','分宜县','',0,1327);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100140006','360600','鹰潭市','',0,1328);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400060001','360602','月湖区','',0,1329);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400060002','360622','余江县','',0,1330);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400060003','360681','贵溪市','',0,1331);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100140007','360700','赣州市','',0,1332);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400070001','360702','章贡区','',0,1333);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400070002','360721','赣县','',0,1334);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400070003','360722','信丰县','',0,1335);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400070004','360723','大余县','',0,1336);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400070005','360724','上犹县','',0,1337);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400070006','360725','崇义县','',0,1338);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400070007','360726','安远县','',0,1339);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400070008','360727','龙南县','',0,1340);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400070009','360728','定南县','',0,1341);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400070010','360729','全南县','',0,1342);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400070011','360730','宁都县','',0,1343);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400070012','360731','于都县','',0,1344);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400070013','360732','兴国县','',0,1345);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400070014','360733','会昌县','',0,1346);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400070015','360734','寻乌县','',0,1347);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400070016','360735','石城县','',0,1348);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400070017','360751','黄金区','',0,1349);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400070018','360781','瑞金市','',0,1350);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400070019','360782','南康市','',0,1351);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100140008','360800','吉安市','',0,1352);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400080001','360802','吉州区','',0,1353);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400080002','360803','青原区','',0,1354);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400080003','360821','吉安县','',0,1355);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400080004','360822','吉水县','',0,1356);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400080005','360823','峡江县','',0,1357);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400080006','360824','新干县','',0,1358);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400080007','360825','永丰县','',0,1359);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400080008','360826','泰和县','',0,1360);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400080009','360827','遂川县','',0,1361);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400080010','360828','万安县','',0,1362);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400080011','360829','安福县','',0,1363);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400080012','360830','永新县','',0,1364);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400080013','360881','井冈山市','',0,1365);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100140009','360900','宜春市','',0,1366);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400090001','360902','袁州区','',0,1367);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400090002','360921','奉新县','',0,1368);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400090003','360922','万载县','',0,1369);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400090004','360923','上高县','',0,1370);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400090005','360924','宜丰县','',0,1371);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400090006','360925','靖安县','',0,1372);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400090007','360926','铜鼓县','',0,1373);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400090008','360981','丰城市','',0,1374);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400090009','360982','樟树市','',0,1375);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400090010','360983','高安市','',0,1376);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100140010','361000','抚州市','',0,1377);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400100001','361002','临川区','',0,1378);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400100002','361021','南城县','',0,1379);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400100003','361022','黎川县','',0,1380);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400100004','361023','南丰县','',0,1381);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400100005','361024','崇仁县','',0,1382);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400100006','361025','乐安县','',0,1383);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400100007','361026','宜黄县','',0,1384);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400100008','361027','金溪县','',0,1385);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400100009','361028','资溪县','',0,1386);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400100010','361029','东乡县','',0,1387);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400100011','361030','广昌县','',0,1388);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100140011','361100','上饶市','',0,1389);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400110001','361102','信州区','',0,1390);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400110002','361121','上饶县','',0,1391);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400110003','361122','广丰县','',0,1392);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400110004','361123','玉山县','',0,1393);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400110005','361124','铅山县','',0,1394);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400110006','361125','横峰县','',0,1395);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400110007','361126','弋阳县','',0,1396);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400110008','361127','余干县','',0,1397);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400110009','361128','鄱阳县','',0,1398);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400110010','361129','万年县','',0,1399);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400110011','361130','婺源县','',0,1400);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001400110012','361181','德兴市','',0,1401);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('00010015','370000','山东省','',0,1402);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100150001','370100','济南市','',0,1403);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500010001','370102','历下区','',0,1404);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500010002','370103','市中区','',0,1405);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500010003','370104','槐荫区','',0,1406);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500010004','370105','天桥区','',0,1407);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500010005','370112','历城区','',0,1408);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500010006','370113','长清区','',0,1409);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500010007','370124','平阴县','',0,1410);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500010008','370125','济阳县','',0,1411);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500010009','370126','商河县','',0,1412);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500010010','370181','章丘市','',0,1413);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100150002','370200','青岛市','',0,1414);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500020001','370202','市南区','',0,1415);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500020002','370203','市北区','',0,1416);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500020003','370205','四方区','',0,1417);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500020004','370211','黄岛区','',0,1418);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500020005','370212','崂山区','',0,1419);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500020006','370213','李沧区','',0,1420);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500020007','370214','城阳区','',0,1421);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500020008','370251','开发区','',0,1422);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500020009','370281','胶州市','',0,1423);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500020010','370282','即墨市','',0,1424);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500020011','370283','平度市','',0,1425);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500020012','370284','胶南市','',0,1426);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500020013','370285','莱西市','',0,1427);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100150003','370300','淄博市','',0,1428);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500030001','370302','淄川区','',0,1429);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500030002','370303','张店区','',0,1430);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500030003','370304','博山区','',0,1431);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500030004','370305','临淄区','',0,1432);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500030005','370306','周村区','',0,1433);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500030006','370321','桓台县','',0,1434);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500030007','370322','高青县','',0,1435);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500030008','370323','沂源县','',0,1436);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100150004','370400','枣庄市','',0,1437);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500040001','370402','市中区','',0,1438);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500040002','370403','薛城区','',0,1439);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500040003','370404','峄城区','',0,1440);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500040004','370405','台儿庄区','',0,1441);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500040005','370406','山亭区','',0,1442);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500040006','370481','滕州市','',0,1443);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100150005','370500','东营市','',0,1444);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500050001','370502','东营区','',0,1445);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500050002','370503','河口区','',0,1446);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500050003','370521','垦利县','',0,1447);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500050004','370522','利津县','',0,1448);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500050005','370523','广饶县','',0,1449);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500050006','370589','西城区','',0,1450);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500050007','370590','东城区','',0,1451);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100150006','370600','烟台市','',0,1452);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500060001','370602','芝罘区','',0,1453);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500060002','370611','福山区','',0,1454);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500060003','370612','牟平区','',0,1455);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500060004','370613','莱山区','',0,1456);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500060005','370634','长岛县','',0,1457);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500060006','370681','龙口市','',0,1458);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500060007','370682','莱阳市','',0,1459);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500060008','370683','莱州市','',0,1460);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500060009','370684','蓬莱市','',0,1461);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500060010','370685','招远市','',0,1462);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500060011','370686','栖霞市','',0,1463);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500060012','370687','海阳市','',0,1464);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100150007','370700','潍坊市','',0,1465);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500070001','370702','潍城区','',0,1466);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500070002','370703','寒亭区','',0,1467);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500070003','370704','坊子区','',0,1468);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500070004','370705','奎文区','',0,1469);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500070005','370724','临朐县','',0,1470);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500070006','370725','昌乐县','',0,1471);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500070007','370751','开发区','',0,1472);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500070008','370781','青州市','',0,1473);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500070009','370782','诸城市','',0,1474);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500070010','370783','寿光市','',0,1475);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500070011','370784','安丘市','',0,1476);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500070012','370785','高密市','',0,1477);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500070013','370786','昌邑市','',0,1478);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100150008','370800','济宁市','',0,1479);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500080001','370802','市中区','',0,1480);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500080002','370811','任城区','',0,1481);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500080003','370826','微山县','',0,1482);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500080004','370827','鱼台县','',0,1483);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500080005','370828','金乡县','',0,1484);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500080006','370829','嘉祥县','',0,1485);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500080007','370830','汶上县','',0,1486);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500080008','370831','泗水县','',0,1487);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500080009','370832','梁山县','',0,1488);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500080010','370881','曲阜市','',0,1489);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500080011','370882','兖州市','',0,1490);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500080012','370883','邹城市','',0,1491);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100150009','370900','泰安市','',0,1492);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500090001','370902','泰山区','',0,1493);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500090002','370903','岱岳区','',0,1494);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500090003','370921','宁阳县','',0,1495);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500090004','370923','东平县','',0,1496);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500090005','370982','新泰市','',0,1497);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500090006','370983','肥城市','',0,1498);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100150010','371000','威海市','',0,1499);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500100001','371002','环翠区','',0,1500);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500100002','371081','文登市','',0,1501);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500100003','371082','荣成市','',0,1502);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500100004','371083','乳山市','',0,1503);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100150011','371100','日照市','',0,1504);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500110001','371102','东港区','',0,1505);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500110002','371103','岚山区','',0,1506);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500110003','371121','五莲县','',0,1507);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500110004','371122','莒县','',0,1508);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100150012','371200','莱芜市','',0,1509);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500120001','371202','莱城区','',0,1510);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500120002','371203','钢城区','',0,1511);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100150013','371300','临沂市','',0,1512);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500130001','371302','兰山区','',0,1513);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500130002','371311','罗庄区','',0,1514);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500130003','371312','河东区','',0,1515);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500130004','371321','沂南县','',0,1516);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500130005','371322','郯城县','',0,1517);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500130006','371323','沂水县','',0,1518);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500130007','371324','苍山县','',0,1519);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500130008','371325','费县','',0,1520);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500130009','371326','平邑县','',0,1521);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500130010','371327','莒南县','',0,1522);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500130011','371328','蒙阴县','',0,1523);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500130012','371329','临沭县','',0,1524);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100150014','371400','德州市','',0,1525);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500140001','371402','德城区','',0,1526);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500140002','371421','陵县','',0,1527);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500140003','371422','宁津县','',0,1528);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500140004','371423','庆云县','',0,1529);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500140005','371424','临邑县','',0,1530);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500140006','371425','齐河县','',0,1531);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500140007','371426','平原县','',0,1532);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500140008','371427','夏津县','',0,1533);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500140009','371428','武城县','',0,1534);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500140010','371451','开发区','',0,1535);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500140011','371481','乐陵市','',0,1536);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500140012','371482','禹城市','',0,1537);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100150015','371500','聊城市','',0,1538);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500150001','371502','东昌府区','',0,1539);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500150002','371521','阳谷县','',0,1540);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500150003','371522','莘县','',0,1541);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500150004','371523','茌平县','',0,1542);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500150005','371524','东阿县','',0,1543);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500150006','371525','冠县','',0,1544);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500150007','371526','高唐县','',0,1545);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500150008','371581','临清市','',0,1546);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100150016','371600','滨州市','',0,1547);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500160001','371602','滨城区','',0,1548);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500160002','371621','惠民县','',0,1549);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500160003','371622','阳信县','',0,1550);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500160004','371623','无棣县','',0,1551);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500160005','371624','沾化县','',0,1552);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500160006','371625','博兴县','',0,1553);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500160007','371626','邹平县','',0,1554);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100150017','371700','菏泽市','',0,1555);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500170001','371702','牡丹区','',0,1556);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500170002','371721','曹县','',0,1557);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500170003','371722','单县','',0,1558);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500170004','371723','成武县','',0,1559);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500170005','371724','巨野县','',0,1560);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500170006','371725','郓城县','',0,1561);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500170007','371726','鄄城县','',0,1562);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500170008','371727','定陶县','',0,1563);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001500170009','371728','东明县','',0,1564);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('00010016','410000','河南省','',0,1565);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100160001','410100','郑州市','',0,1566);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600010001','410102','中原区','',0,1567);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600010002','410103','二七区','',0,1568);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600010003','410104','管城回族区','',0,1569);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600010004','410105','金水区','',0,1570);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600010005','410106','上街区','',0,1571);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600010006','410108','惠济区','',0,1572);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600010007','410122','中牟县','',0,1573);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600010008','410181','巩义市','',0,1574);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600010009','410182','荥阳市','',0,1575);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600010010','410183','新密市','',0,1576);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600010011','410184','新郑市','',0,1577);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600010012','410185','登封市','',0,1578);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600010013','410186','郑东新区','',0,1579);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600010014','410187','高新区','',0,1580);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100160002','410200','开封市','',0,1581);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600020001','410202','龙亭区','',0,1582);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600020002','410203','顺河回族区','',0,1583);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600020003','410204','鼓楼区','',0,1584);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600020004','410205','禹王台区','',0,1585);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600020005','410211','金明区','',0,1586);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600020006','410221','杞县','',0,1587);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600020007','410222','通许县','',0,1588);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600020008','410223','尉氏县','',0,1589);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600020009','410224','开封县','',0,1590);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600020010','410225','兰考县','',0,1591);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100160003','410300','洛阳市','',0,1592);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600030001','410302','老城区','',0,1593);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600030002','410303','西工区','',0,1594);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600030003','410304','廛河回族区','',0,1595);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600030004','410305','涧西区','',0,1596);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600030005','410306','吉利区','',0,1597);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600030006','410307','洛龙区','',0,1598);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600030007','410322','孟津县','',0,1599);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600030008','410323','新安县','',0,1600);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600030009','410324','栾川县','',0,1601);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600030010','410325','嵩县','',0,1602);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600030011','410326','汝阳县','',0,1603);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600030012','410327','宜阳县','',0,1604);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600030013','410328','洛宁县','',0,1605);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600030014','410329','伊川县','',0,1606);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600030015','410381','偃师市','',0,1607);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600030016','471004','高新区','',0,1608);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100160004','410400','平顶山市','',0,1609);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600040001','410402','新华区','',0,1610);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600040002','410403','卫东区','',0,1611);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600040003','410404','石龙区','',0,1612);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600040004','410411','湛河区','',0,1613);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600040005','410421','宝丰县','',0,1614);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600040006','410422','叶县','',0,1615);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600040007','410423','鲁山县','',0,1616);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600040008','410425','郏县','',0,1617);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600040009','410481','舞钢市','',0,1618);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600040010','410482','汝州市','',0,1619);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100160005','410500','安阳市','',0,1620);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600050001','410502','文峰区','',0,1621);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600050002','410503','北关区','',0,1622);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600050003','410505','殷都区','',0,1623);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600050004','410506','龙安区','',0,1624);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600050005','410522','安阳县','',0,1625);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600050006','410523','汤阴县','',0,1626);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600050007','410526','滑县','',0,1627);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600050008','410527','内黄县','',0,1628);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600050009','410581','林州市','',0,1629);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100160006','410600','鹤壁市','',0,1630);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600060001','410602','鹤山区','',0,1631);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600060002','410603','山城区','',0,1632);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600060003','410611','淇滨区','',0,1633);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600060004','410621','浚县','',0,1634);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600060005','410622','淇县','',0,1635);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100160007','410700','新乡市','',0,1636);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600070001','410702','红旗区','',0,1637);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600070002','410703','卫滨区','',0,1638);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600070003','410704','凤泉区','',0,1639);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600070004','410711','牧野区','',0,1640);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600070005','410721','新乡县','',0,1641);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600070006','410724','获嘉县','',0,1642);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600070007','410725','原阳县','',0,1643);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600070008','410726','延津县','',0,1644);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600070009','410727','封丘县','',0,1645);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600070010','410728','长垣县','',0,1646);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600070011','410781','卫辉市','',0,1647);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600070012','410782','辉县市','',0,1648);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100160008','410800','焦作市','',0,1649);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600080001','410802','解放区','',0,1650);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600080002','410803','中站区','',0,1651);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600080003','410804','马村区','',0,1652);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600080004','410811','山阳区','',0,1653);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600080005','410821','修武县','',0,1654);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600080006','410822','博爱县','',0,1655);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600080007','410823','武陟县','',0,1656);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600080008','410825','温县','',0,1657);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600080009','410882','沁阳市','',0,1658);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600080010','410883','孟州市','',0,1659);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100160009','410881','济源市','',0,1660);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100160010','410900','濮阳市','',0,1661);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600100001','410902','华龙区','',0,1662);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600100002','410922','清丰县','',0,1663);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600100003','410923','南乐县','',0,1664);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600100004','410926','范县','',0,1665);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600100005','410927','台前县','',0,1666);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600100006','410928','濮阳县','',0,1667);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100160011','411000','许昌市','',0,1668);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600110001','411002','魏都区','',0,1669);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600110002','411023','许昌县','',0,1670);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600110003','411024','鄢陵县','',0,1671);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600110004','411025','襄城县','',0,1672);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600110005','411081','禹州市','',0,1673);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600110006','411082','长葛市','',0,1674);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100160012','411100','漯河市','',0,1675);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600120001','411102','源汇区','',0,1676);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600120002','411103','郾城区','',0,1677);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600120003','411104','召陵区','',0,1678);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600120004','411121','舞阳县','',0,1679);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600120005','411122','临颍县','',0,1680);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100160013','411200','三门峡市','',0,1681);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600130001','411202','湖滨区','',0,1682);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600130002','411221','渑池县','',0,1683);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600130003','411222','陕县','',0,1684);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600130004','411224','卢氏县','',0,1685);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600130005','411281','义马市','',0,1686);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600130006','411282','灵宝市','',0,1687);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100160014','411300','南阳市','',0,1688);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600140001','411302','宛城区','',0,1689);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600140002','411303','卧龙区','',0,1690);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600140003','411321','南召县','',0,1691);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600140004','411322','方城县','',0,1692);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600140005','411323','西峡县','',0,1693);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600140006','411324','镇平县','',0,1694);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600140007','411325','内乡县','',0,1695);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600140008','411326','淅川县','',0,1696);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600140009','411327','社旗县','',0,1697);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600140010','411328','唐河县','',0,1698);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600140011','411329','新野县','',0,1699);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600140012','411330','桐柏县','',0,1700);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600140013','411381','邓州市','',0,1701);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100160015','411400','商丘市','',0,1702);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600150001','411402','梁园区','',0,1703);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600150002','411403','睢阳区','',0,1704);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600150003','411421','民权县','',0,1705);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600150004','411422','睢县','',0,1706);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600150005','411423','宁陵县','',0,1707);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600150006','411424','柘城县','',0,1708);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600150007','411425','虞城县','',0,1709);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600150008','411426','夏邑县','',0,1710);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600150009','411481','永城市','',0,1711);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100160016','411500','信阳市','',0,1712);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600160001','411502','浉河区','',0,1713);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600160002','411503','平桥区','',0,1714);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600160003','411521','罗山县','',0,1715);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600160004','411522','光山县','',0,1716);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600160005','411523','新县','',0,1717);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600160006','411524','商城县','',0,1718);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600160007','411525','固始县','',0,1719);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600160008','411526','潢川县','',0,1720);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600160009','411527','淮滨县','',0,1721);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600160010','411528','息县','',0,1722);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100160017','411600','周口市','',0,1723);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600170001','411602','川汇区','',0,1724);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600170002','411621','扶沟县','',0,1725);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600170003','411622','西华县','',0,1726);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600170004','411623','商水县','',0,1727);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600170005','411624','沈丘县','',0,1728);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600170006','411625','郸城县','',0,1729);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600170007','411626','淮阳县','',0,1730);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600170008','411627','太康县','',0,1731);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600170009','411628','鹿邑县','',0,1732);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600170010','411681','项城市','',0,1733);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100160018','411700','驻马店市','',0,1734);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600180001','411702','驿城区','',0,1735);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600180002','411721','西平县','',0,1736);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600180003','411722','上蔡县','',0,1737);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600180004','411723','平舆县','',0,1738);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600180005','411724','正阳县','',0,1739);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600180006','411725','确山县','',0,1740);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600180007','411726','泌阳县','',0,1741);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600180008','411727','汝南县','',0,1742);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600180009','411728','遂平县','',0,1743);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001600180010','411729','新蔡县','',0,1744);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('00010017','420000','湖北省','',0,1745);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100170001','420100','武汉市','',0,1746);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700010001','420102','江岸区','',0,1747);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700010002','420103','江汉区','',0,1748);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700010003','420104','硚口区','',0,1749);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700010004','420105','汉阳区','',0,1750);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700010005','420106','武昌区','',0,1751);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700010006','420107','青山区','',0,1752);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700010007','420111','洪山区','',0,1753);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700010008','420112','东西湖区','',0,1754);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700010009','420113','汉南区','',0,1755);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700010010','420114','蔡甸区','',0,1756);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700010011','420115','江夏区','',0,1757);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700010012','420116','黄陂区','',0,1758);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700010013','420117','新洲区','',0,1759);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100170002','420200','黄石市','',0,1760);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700020001','420202','黄石港区','',0,1761);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700020002','420203','西塞山区','',0,1762);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700020003','420204','下陆区','',0,1763);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700020004','420205','铁山区','',0,1764);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700020005','420222','阳新县','',0,1765);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700020006','420281','大冶市','',0,1766);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100170003','420300','十堰市','',0,1767);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700030001','420302','茅箭区','',0,1768);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700030002','420303','张湾区','',0,1769);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700030003','420321','郧县','',0,1770);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700030004','420322','郧西县','',0,1771);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700030005','420323','竹山县','',0,1772);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700030006','420324','竹溪县','',0,1773);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700030007','420325','房县','',0,1774);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700030008','420381','丹江口市','',0,1775);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700030009','420382','城区','',0,1776);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100170004','420500','宜昌市','',0,1777);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700040001','420502','西陵区','',0,1778);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700040002','420503','伍家岗区','',0,1779);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700040003','420504','点军区','',0,1780);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700040004','420505','猇亭区','',0,1781);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700040005','420506','夷陵区','',0,1782);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700040006','420525','远安县','',0,1783);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700040007','420526','兴山县','',0,1784);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700040008','420527','秭归县','',0,1785);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700040009','420528','长阳土家族自治县','',0,1786);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700040010','420529','五峰土家族自治县','',0,1787);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700040011','420551','葛洲坝区','',0,1788);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700040012','420552','开发区','',0,1789);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700040013','420581','宜都市','',0,1790);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700040014','420582','当阳市','',0,1791);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700040015','420583','枝江市','',0,1792);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100170005','420600','襄阳市','',0,1793);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700050001','420602','襄城区','',0,1794);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700050002','420606','樊城区','',0,1795);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700050003','420607','襄州区','',0,1796);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700050004','420624','南漳县','',0,1797);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700050005','420625','谷城县','',0,1798);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700050006','420626','保康县','',0,1799);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700050007','420682','老河口市','',0,1800);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700050008','420683','枣阳市','',0,1801);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700050009','420684','宜城市','',0,1802);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100170006','420700','鄂州市','',0,1803);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700060001','420702','梁子湖区','',0,1804);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700060002','420703','华容区','',0,1805);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700060003','420704','鄂城区','',0,1806);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100170007','420800','荆门市','',0,1807);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700070001','420802','东宝区','',0,1808);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700070002','420804','掇刀区','',0,1809);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700070003','420821','京山县','',0,1810);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700070004','420822','沙洋县','',0,1811);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700070005','420881','钟祥市','',0,1812);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100170008','420900','孝感市','',0,1813);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700080001','420902','孝南区','',0,1814);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700080002','420921','孝昌县','',0,1815);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700080003','420922','大悟县','',0,1816);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700080004','420923','云梦县','',0,1817);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700080005','420981','应城市','',0,1818);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700080006','420982','安陆市','',0,1819);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700080007','420984','汉川市','',0,1820);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100170009','421000','荆州市','',0,1821);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700090001','421002','沙市区','',0,1822);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700090002','421003','荆州区','',0,1823);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700090003','421022','公安县','',0,1824);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700090004','421023','监利县','',0,1825);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700090005','421024','江陵县','',0,1826);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700090006','421081','石首市','',0,1827);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700090007','421083','洪湖市','',0,1828);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700090008','421087','松滋市','',0,1829);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100170010','421100','黄冈市','',0,1830);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700100001','421102','黄州区','',0,1831);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700100002','421121','团风县','',0,1832);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700100003','421122','红安县','',0,1833);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700100004','421123','罗田县','',0,1834);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700100005','421124','英山县','',0,1835);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700100006','421125','浠水县','',0,1836);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700100007','421126','蕲春县','',0,1837);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700100008','421127','黄梅县','',0,1838);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700100009','421181','麻城市','',0,1839);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700100010','421182','武穴市','',0,1840);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100170011','421200','咸宁市','',0,1841);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700110001','421202','咸安区','',0,1842);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700110002','421221','嘉鱼县','',0,1843);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700110003','421222','通城县','',0,1844);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700110004','421223','崇阳县','',0,1845);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700110005','421224','通山县','',0,1846);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700110006','421281','赤壁市','',0,1847);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700110007','421282','温泉城区','',0,1848);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100170012','421300','随州市','',0,1849);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700120001','421302','曾都区','',0,1850);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700120002','421321','随县','',0,1851);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700120003','421381','广水市','',0,1852);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100170013','422800','恩施土家族苗族自治州','',0,1853);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700130001','422801','恩施市','',0,1854);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700130002','422802','利川市','',0,1855);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700130003','422822','建始县','',0,1856);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700130004','422823','巴东县','',0,1857);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700130005','422825','宣恩县','',0,1858);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700130006','422826','咸丰县','',0,1859);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700130007','422827','来凤县','',0,1860);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001700130008','422828','鹤峰县','',0,1861);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100170014','429004','仙桃市','',0,1862);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100170015','429005','潜江市','',0,1863);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100170016','429006','天门市','',0,1864);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100170017','429021','神农架林区','',0,1865);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('00010018','430000','湖南省','',0,1866);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100180001','430100','长沙市','',0,1867);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800010001','430102','芙蓉区','',0,1868);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800010002','430103','天心区','',0,1869);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800010003','430104','岳麓区','',0,1870);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800010004','430105','开福区','',0,1871);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800010005','430111','雨花区','',0,1872);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800010006','430121','长沙县','',0,1873);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800010007','430122','望城县','',0,1874);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800010008','430124','宁乡县','',0,1875);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800010009','430181','浏阳市','',0,1876);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100180002','430200','株洲市','',0,1877);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800020001','430202','荷塘区','',0,1878);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800020002','430203','芦淞区','',0,1879);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800020003','430204','石峰区','',0,1880);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800020004','430211','天元区','',0,1881);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800020005','430221','株洲县','',0,1882);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800020006','430223','攸县','',0,1883);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800020007','430224','茶陵县','',0,1884);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800020008','430225','炎陵县','',0,1885);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800020009','430281','醴陵市','',0,1886);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100180003','430300','湘潭市','',0,1887);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800030001','430302','雨湖区','',0,1888);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800030002','430304','岳塘区','',0,1889);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800030003','430321','湘潭县','',0,1890);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800030004','430381','湘乡市','',0,1891);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800030005','430382','韶山市','',0,1892);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100180004','430400','衡阳市','',0,1893);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800040001','430405','珠晖区','',0,1894);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800040002','430406','雁峰区','',0,1895);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800040003','430407','石鼓区','',0,1896);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800040004','430408','蒸湘区','',0,1897);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800040005','430412','南岳区','',0,1898);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800040006','430421','衡阳县','',0,1899);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800040007','430422','衡南县','',0,1900);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800040008','430423','衡山县','',0,1901);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800040009','430424','衡东县','',0,1902);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800040010','430426','祁东县','',0,1903);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800040011','430481','耒阳市','',0,1904);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800040012','430482','常宁市','',0,1905);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100180005','430500','邵阳市','',0,1906);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800050001','430502','双清区','',0,1907);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800050002','430503','大祥区','',0,1908);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800050003','430511','北塔区','',0,1909);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800050004','430521','邵东县','',0,1910);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800050005','430522','新邵县','',0,1911);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800050006','430523','邵阳县','',0,1912);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800050007','430524','隆回县','',0,1913);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800050008','430525','洞口县','',0,1914);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800050009','430527','绥宁县','',0,1915);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800050010','430528','新宁县','',0,1916);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800050011','430529','城步苗族自治县','',0,1917);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800050012','430581','武冈市','',0,1918);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100180006','430600','岳阳市','',0,1919);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800060001','430602','岳阳楼区','',0,1920);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800060002','430603','云溪区','',0,1921);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800060003','430611','君山区','',0,1922);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800060004','430621','岳阳县','',0,1923);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800060005','430623','华容县','',0,1924);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800060006','430624','湘阴县','',0,1925);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800060007','430626','平江县','',0,1926);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800060008','430681','汨罗市','',0,1927);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800060009','430682','临湘市','',0,1928);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100180007','430700','常德市','',0,1929);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800070001','430702','武陵区','',0,1930);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800070002','430703','鼎城区','',0,1931);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800070003','430721','安乡县','',0,1932);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800070004','430722','汉寿县','',0,1933);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800070005','430723','澧县','',0,1934);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800070006','430724','临澧县','',0,1935);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800070007','430725','桃源县','',0,1936);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800070008','430726','石门县','',0,1937);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800070009','430781','津市市','',0,1938);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100180008','430800','张家界市','',0,1939);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800080001','430802','永定区','',0,1940);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800080002','430811','武陵源区','',0,1941);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800080003','430821','慈利县','',0,1942);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800080004','430822','桑植县','',0,1943);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100180009','430900','益阳市','',0,1944);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800090001','430902','资阳区','',0,1945);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800090002','430903','赫山区','',0,1946);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800090003','430921','南县','',0,1947);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800090004','430922','桃江县','',0,1948);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800090005','430923','安化县','',0,1949);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800090006','430981','沅江市','',0,1950);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100180010','431000','郴州市','',0,1951);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800100001','431002','北湖区','',0,1952);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800100002','431003','苏仙区','',0,1953);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800100003','431021','桂阳县','',0,1954);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800100004','431022','宜章县','',0,1955);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800100005','431023','永兴县','',0,1956);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800100006','431024','嘉禾县','',0,1957);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800100007','431025','临武县','',0,1958);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800100008','431026','汝城县','',0,1959);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800100009','431027','桂东县','',0,1960);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800100010','431028','安仁县','',0,1961);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800100011','431081','资兴市','',0,1962);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100180011','431100','永州市','',0,1963);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800110001','431102','零陵区','',0,1964);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800110002','431103','冷水滩区','',0,1965);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800110003','431121','祁阳县','',0,1966);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800110004','431122','东安县','',0,1967);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800110005','431123','双牌县','',0,1968);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800110006','431124','道县','',0,1969);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800110007','431125','江永县','',0,1970);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800110008','431126','宁远县','',0,1971);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800110009','431127','蓝山县','',0,1972);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800110010','431128','新田县','',0,1973);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800110011','431129','江华瑶族自治县','',0,1974);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100180012','431200','怀化市','',0,1975);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800120001','431202','鹤城区','',0,1976);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800120002','431221','中方县','',0,1977);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800120003','431222','沅陵县','',0,1978);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800120004','431223','辰溪县','',0,1979);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800120005','431224','溆浦县','',0,1980);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800120006','431225','会同县','',0,1981);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800120007','431226','麻阳苗族自治县','',0,1982);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800120008','431227','新晃侗族自治县','',0,1983);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800120009','431228','芷江侗族自治县','',0,1984);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800120010','431229','靖州苗族侗族自治县','',0,1985);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800120011','431230','通道侗族自治县','',0,1986);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800120012','431281','洪江市','',0,1987);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100180013','431300','娄底市','',0,1988);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800130001','431302','娄星区','',0,1989);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800130002','431321','双峰县','',0,1990);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800130003','431322','新化县','',0,1991);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800130004','431381','冷水江市','',0,1992);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800130005','431382','涟源市','',0,1993);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100180014','433100','湘西土家族苗族自治州','',0,1994);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800140001','433101','吉首市','',0,1995);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800140002','433122','泸溪县','',0,1996);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800140003','433123','凤凰县','',0,1997);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800140004','433124','花垣县','',0,1998);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800140005','433125','保靖县','',0,1999);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800140006','433126','古丈县','',0,2000);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800140007','433127','永顺县','',0,2001);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001800140008','433130','龙山县','',0,2002);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('00010019','440000','广东省','',0,2003);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100190001','440100','广州市','',0,2004);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900010001','440103','荔湾区','',0,2005);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900010002','440104','越秀区','',0,2006);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900010003','440105','海珠区','',0,2007);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900010004','440106','天河区','',0,2008);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900010005','440111','白云区','',0,2009);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900010006','440112','黄埔区','',0,2010);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900010007','440113','番禺区','',0,2011);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900010008','440114','花都区','',0,2012);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900010009','440115','南沙区','',0,2013);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900010010','440116','萝岗区','',0,2014);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900010011','440183','增城市','',0,2015);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900010012','440184','从化市','',0,2016);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900010013','440188','东山区','',0,2017);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100190002','440200','韶关市','',0,2018);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900020001','440203','武江区','',0,2019);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900020002','440204','浈江区','',0,2020);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900020003','440205','曲江区','',0,2021);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900020004','440222','始兴县','',0,2022);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900020005','440224','仁化县','',0,2023);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900020006','440229','翁源县','',0,2024);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900020007','440232','乳源瑶族自治县','',0,2025);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900020008','440233','新丰县','',0,2026);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900020009','440281','乐昌市','',0,2027);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900020010','440282','南雄市','',0,2028);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100190003','440300','深圳市','',0,2029);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900030001','440303','罗湖区','',0,2030);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900030002','440304','福田区','',0,2031);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900030003','440305','南山区','',0,2032);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900030004','440306','宝安区','',0,2033);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900030005','440307','龙岗区','',0,2034);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900030006','440308','盐田区','',0,2035);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900030007','440320','光明新区','',0,2036);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900030008','440321','坪山新区','',0,2037);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900030009','440322','大鹏新区','',0,2038);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900030010','440323','龙华新区','',0,2039);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100190004','440400','珠海市','',0,2040);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900040001','440402','香洲区','',0,2041);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900040002','440403','斗门区','',0,2042);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900040003','440404','金湾区','',0,2043);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900040004','440486','金唐区','',0,2044);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900040005','440487','南湾区','',0,2045);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100190005','440500','汕头市','',0,2046);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900050001','440507','龙湖区','',0,2047);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900050002','440511','金平区','',0,2048);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900050003','440512','濠江区','',0,2049);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900050004','440513','潮阳区','',0,2050);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900050005','440514','潮南区','',0,2051);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900050006','440515','澄海区','',0,2052);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900050007','440523','南澳县','',0,2053);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100190006','440600','佛山市','',0,2054);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900060001','440604','禅城区','',0,2055);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900060002','440605','南海区','',0,2056);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900060003','440606','顺德区','',0,2057);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900060004','440607','三水区','',0,2058);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900060005','440608','高明区','',0,2059);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100190007','440700','江门市','',0,2060);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900070001','440703','蓬江区','',0,2061);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900070002','440704','江海区','',0,2062);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900070003','440705','新会区','',0,2063);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900070004','440781','台山市','',0,2064);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900070005','440783','开平市','',0,2065);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900070006','440784','鹤山市','',0,2066);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900070007','440785','恩平市','',0,2067);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100190008','440800','湛江市','',0,2068);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900080001','440802','赤坎区','',0,2069);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900080002','440803','霞山区','',0,2070);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900080003','440804','坡头区','',0,2071);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900080004','440811','麻章区','',0,2072);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900080005','440823','遂溪县','',0,2073);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900080006','440825','徐闻县','',0,2074);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900080007','440881','廉江市','',0,2075);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900080008','440882','雷州市','',0,2076);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900080009','440883','吴川市','',0,2077);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100190009','440900','茂名市','',0,2078);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900090001','440902','茂南区','',0,2079);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900090002','440903','茂港区','',0,2080);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900090003','440923','电白县','',0,2081);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900090004','440981','高州市','',0,2082);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900090005','440982','化州市','',0,2083);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900090006','440983','信宜市','',0,2084);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100190010','441200','肇庆市','',0,2085);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900100001','441202','端州区','',0,2086);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900100002','441203','鼎湖区','',0,2087);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900100003','441223','广宁县','',0,2088);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900100004','441224','怀集县','',0,2089);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900100005','441225','封开县','',0,2090);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900100006','441226','德庆县','',0,2091);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900100007','441283','高要市','',0,2092);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900100008','441284','四会市','',0,2093);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100190011','441300','惠州市','',0,2094);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900110001','441302','惠城区','',0,2095);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900110002','441303','惠阳区','',0,2096);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900110003','441322','博罗县','',0,2097);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900110004','441323','惠东县','',0,2098);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900110005','441324','龙门县','',0,2099);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100190012','441400','梅州市','',0,2100);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900120001','441402','梅江区','',0,2101);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900120002','441421','梅县','',0,2102);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900120003','441422','大埔县','',0,2103);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900120004','441423','丰顺县','',0,2104);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900120005','441424','五华县','',0,2105);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900120006','441426','平远县','',0,2106);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900120007','441427','蕉岭县','',0,2107);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900120008','441481','兴宁市','',0,2108);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100190013','441500','汕尾市','',0,2109);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900130001','441502','城区','',0,2110);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900130002','441521','海丰县','',0,2111);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900130003','441523','陆河县','',0,2112);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900130004','441581','陆丰市','',0,2113);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100190014','441600','河源市','',0,2114);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900140001','441602','源城区','',0,2115);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900140002','441621','紫金县','',0,2116);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900140003','441622','龙川县','',0,2117);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900140004','441623','连平县','',0,2118);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900140005','441624','和平县','',0,2119);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900140006','441625','东源县','',0,2120);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100190015','441700','阳江市','',0,2121);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900150001','441702','江城区','',0,2122);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900150002','441721','阳西县','',0,2123);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900150003','441723','阳东县','',0,2124);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900150004','441781','阳春市','',0,2125);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100190016','441800','清远市','',0,2126);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900160001','441802','清城区','',0,2127);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900160002','441821','佛冈县','',0,2128);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900160003','441823','阳山县','',0,2129);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900160004','441825','连山壮族瑶族自治县','',0,2130);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900160005','441826','连南瑶族自治县','',0,2131);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900160006','441827','清新县','',0,2132);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900160007','441881','英德市','',0,2133);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900160008','441882','连州市','',0,2134);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100190017','441900','东莞市','',0,2135);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100190018','442000','中山市','',0,2136);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100190019','445100','潮州市','',0,2137);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900190001','445102','湘桥区','',0,2138);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900190002','445121','潮安县','',0,2139);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900190003','445122','饶平县','',0,2140);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900190004','445185','枫溪区','',0,2141);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100190020','445200','揭阳市','',0,2142);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900200001','445202','榕城区','',0,2143);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900200002','445221','揭东县','',0,2144);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900200003','445222','揭西县','',0,2145);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900200004','445224','惠来县','',0,2146);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900200005','445281','普宁市','',0,2147);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900200006','445284','东山区','',0,2148);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100190021','445300','云浮市','',0,2149);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900210001','445302','云城区','',0,2150);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900210002','445321','新兴县','',0,2151);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900210003','445322','郁南县','',0,2152);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900210004','445323','云安县','',0,2153);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001001900210005','445381','罗定市','',0,2154);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('00010020','450000','广西壮族自治区','',0,2155);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100200001','450100','南宁市','',0,2156);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000010001','450102','兴宁区','',0,2157);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000010002','450103','青秀区','',0,2158);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000010003','450105','江南区','',0,2159);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000010004','450107','西乡塘区','',0,2160);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000010005','450108','良庆区','',0,2161);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000010006','450109','邕宁区','',0,2162);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000010007','450122','武鸣县','',0,2163);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000010008','450123','隆安县','',0,2164);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000010009','450124','马山县','',0,2165);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000010010','450125','上林县','',0,2166);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000010011','450126','宾阳县','',0,2167);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000010012','450127','横县','',0,2168);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100200002','450200','柳州市','',0,2169);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000020001','450202','城中区','',0,2170);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000020002','450203','鱼峰区','',0,2171);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000020003','450204','柳南区','',0,2172);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000020004','450205','柳北区','',0,2173);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000020005','450221','柳江县','',0,2174);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000020006','450222','柳城县','',0,2175);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000020007','450223','鹿寨县','',0,2176);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000020008','450224','融安县','',0,2177);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000020009','450225','融水苗族自治县','',0,2178);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000020010','450226','三江侗族自治县','',0,2179);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100200003','450300','桂林市','',0,2180);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000030001','450302','秀峰区','',0,2181);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000030002','450303','叠彩区','',0,2182);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000030003','450304','象山区','',0,2183);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000030004','450305','七星区','',0,2184);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000030005','450311','雁山区','',0,2185);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000030006','450321','阳朔县','',0,2186);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000030007','450322','临桂县','',0,2187);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000030008','450323','灵川县','',0,2188);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000030009','450324','全州县','',0,2189);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000030010','450325','兴安县','',0,2190);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000030011','450326','永福县','',0,2191);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000030012','450327','灌阳县','',0,2192);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000030013','450328','龙胜各族自治县','',0,2193);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000030014','450329','资源县','',0,2194);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000030015','450330','平乐县','',0,2195);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000030016','450331','荔浦县','',0,2196);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000030017','450332','恭城瑶族自治县','',0,2197);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100200004','450400','梧州市','',0,2198);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000040001','450403','万秀区','',0,2199);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000040002','450404','蝶山区','',0,2200);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000040003','450405','长洲区','',0,2201);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000040004','450421','苍梧县','',0,2202);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000040005','450422','藤县','',0,2203);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000040006','450423','蒙山县','',0,2204);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000040007','450481','岑溪市','',0,2205);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100200005','450500','北海市','',0,2206);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000050001','450502','海城区','',0,2207);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000050002','450503','银海区','',0,2208);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000050003','450512','铁山港区','',0,2209);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000050004','450521','合浦县','',0,2210);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100200006','450600','防城港市','',0,2211);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000060001','450602','港口区','',0,2212);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000060002','450603','防城区','',0,2213);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000060003','450621','上思县','',0,2214);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000060004','450681','东兴市','',0,2215);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100200007','450700','钦州市','',0,2216);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000070001','450702','钦南区','',0,2217);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000070002','450703','钦北区','',0,2218);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000070003','450721','灵山县','',0,2219);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000070004','450722','浦北县','',0,2220);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100200008','450800','贵港市','',0,2221);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000080001','450802','港北区','',0,2222);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000080002','450803','港南区','',0,2223);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000080003','450804','覃塘区','',0,2224);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000080004','450821','平南县','',0,2225);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000080005','450881','桂平市','',0,2226);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100200009','450900','玉林市','',0,2227);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000090001','450902','玉州区','',0,2228);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000090002','450921','容县','',0,2229);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000090003','450922','陆川县','',0,2230);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000090004','450923','博白县','',0,2231);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000090005','450924','兴业县','',0,2232);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000090006','450981','北流市','',0,2233);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100200010','451000','百色市','',0,2234);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000100001','451002','右江区','',0,2235);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000100002','451021','田阳县','',0,2236);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000100003','451022','田东县','',0,2237);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000100004','451023','平果县','',0,2238);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000100005','451024','德保县','',0,2239);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000100006','451025','靖西县','',0,2240);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000100007','451026','那坡县','',0,2241);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000100008','451027','凌云县','',0,2242);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000100009','451028','乐业县','',0,2243);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000100010','451029','田林县','',0,2244);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000100011','451030','西林县','',0,2245);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000100012','451031','隆林各族自治县','',0,2246);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100200011','451100','贺州市','',0,2247);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000110001','451102','八步区','',0,2248);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000110002','451121','昭平县','',0,2249);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000110003','451122','钟山县','',0,2250);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000110004','451123','富川瑶族自治县','',0,2251);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100200012','451200','河池市','',0,2252);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000120001','451202','金城江区','',0,2253);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000120002','451221','南丹县','',0,2254);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000120003','451222','天峨县','',0,2255);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000120004','451223','凤山县','',0,2256);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000120005','451224','东兰县','',0,2257);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000120006','451225','罗城仫佬族自治县','',0,2258);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000120007','451226','环江毛南族自治县','',0,2259);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000120008','451227','巴马瑶族自治县','',0,2260);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000120009','451228','都安瑶族自治县','',0,2261);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000120010','451229','大化瑶族自治县','',0,2262);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000120011','451281','宜州市','',0,2263);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100200013','451300','来宾市','',0,2264);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000130001','451302','兴宾区','',0,2265);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000130002','451321','忻城县','',0,2266);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000130003','451322','象州县','',0,2267);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000130004','451323','武宣县','',0,2268);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000130005','451324','金秀瑶族自治县','',0,2269);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000130006','451381','合山市','',0,2270);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100200014','451400','崇左市','',0,2271);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000140001','451402','江洲区','',0,2272);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000140002','451421','扶绥县','',0,2273);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000140003','451422','宁明县','',0,2274);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000140004','451423','龙州县','',0,2275);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000140005','451424','大新县','',0,2276);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000140006','451425','天等县','',0,2277);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002000140007','451481','凭祥市','',0,2278);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('00010021','460000','海南省','',0,2279);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100210001','460100','海口市','',0,2280);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002100010001','460105','秀英区','',0,2281);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002100010002','460106','龙华区','',0,2282);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002100010003','460107','琼山区','',0,2283);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002100010004','460108','美兰区','',0,2284);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100210002','460200','三亚市','',0,2285);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100210003','469001','五指山市','',0,2286);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100210004','469002','琼海市','',0,2287);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100210005','469003','儋州市','',0,2288);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100210006','469005','文昌市','',0,2289);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100210007','469006','万宁市','',0,2290);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100210008','469007','东方市','',0,2291);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100210009','469025','定安县','',0,2292);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100210010','469026','屯昌县','',0,2293);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100210011','469027','澄迈县','',0,2294);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100210012','469028','临高县','',0,2295);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100210013','469030','白沙黎族自治县','',0,2296);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100210014','469031','昌江黎族自治县','',0,2297);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100210015','469033','乐东黎族自治县','',0,2298);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100210016','469034','陵水黎族自治县','',0,2299);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100210017','469035','保亭黎族苗族自治县','',0,2300);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100210018','469036','琼中黎族苗族自治县','',0,2301);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100210019','469037','西沙群岛','',0,2302);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100210020','469038','南沙群岛','',0,2303);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100210021','469039','中沙群岛的岛礁及其海域','',0,2304);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('00010022','500000','重庆','',0,2305);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100220001','500100','重庆市','',0,2306);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010001','500101','万州区','',0,2307);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010002','500102','涪陵区','',0,2308);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010003','500103','渝中区','',0,2309);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010004','500104','大渡口区','',0,2310);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010005','500105','江北区','',0,2311);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010006','500106','沙坪坝区','',0,2312);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010007','500107','九龙坡区','',0,2313);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010008','500108','南岸区','',0,2314);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010009','500109','北碚区','',0,2315);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010010','500110','万盛区','',0,2316);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010011','500111','双桥区','',0,2317);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010012','500112','渝北区','',0,2318);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010013','500113','巴南区','',0,2319);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010014','500114','黔江区','',0,2320);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010015','500115','长寿区','',0,2321);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010016','500222','綦江县','',0,2322);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010017','500223','潼南县','',0,2323);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010018','500224','铜梁县','',0,2324);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010019','500225','大足县','',0,2325);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010020','500226','荣昌县','',0,2326);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010021','500227','璧山县','',0,2327);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010022','500228','梁平县','',0,2328);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010023','500229','城口县','',0,2329);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010024','500230','丰都县','',0,2330);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010025','500231','垫江县','',0,2331);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010026','500232','武隆县','',0,2332);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010027','500233','忠县','',0,2333);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010028','500234','开县','',0,2334);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010029','500235','云阳县','',0,2335);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010030','500236','奉节县','',0,2336);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010031','500237','巫山县','',0,2337);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010032','500238','巫溪县','',0,2338);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010033','500240','石柱土家族自治县','',0,2339);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010034','500241','秀山土家族苗族自治县','',0,2340);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010035','500242','酉阳土家族苗族自治县','',0,2341);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010036','500243','彭水苗族土家族自治县','',0,2342);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010037','500381','江津区','',0,2343);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010038','500382','合川区','',0,2344);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010039','500383','永川区','',0,2345);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002200010040','500384','南川区','',0,2346);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('00010023','510000','四川省','',0,2347);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100230001','510100','成都市','',0,2348);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300010001','510104','锦江区','',0,2349);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300010002','510105','青羊区','',0,2350);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300010003','510106','金牛区','',0,2351);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300010004','510107','武侯区','',0,2352);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300010005','510108','成华区','',0,2353);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300010006','510112','龙泉驿区','',0,2354);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300010007','510113','青白江区','',0,2355);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300010008','510114','新都区','',0,2356);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300010009','510115','温江区','',0,2357);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300010010','510121','金堂县','',0,2358);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300010011','510122','双流县','',0,2359);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300010012','510124','郫县','',0,2360);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300010013','510129','大邑县','',0,2361);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300010014','510131','蒲江县','',0,2362);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300010015','510132','新津县','',0,2363);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300010016','510181','都江堰市','',0,2364);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300010017','510182','彭州市','',0,2365);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300010018','510183','邛崃市','',0,2366);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300010019','510184','崇州市','',0,2367);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100230002','510300','自贡市','',0,2368);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300020001','510302','自流井区','',0,2369);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300020002','510303','贡井区','',0,2370);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300020003','510304','大安区','',0,2371);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300020004','510311','沿滩区','',0,2372);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300020005','510321','荣县','',0,2373);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300020006','510322','富顺县','',0,2374);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100230003','510400','攀枝花市','',0,2375);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300030001','510402','东区','',0,2376);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300030002','510403','西区','',0,2377);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300030003','510411','仁和区','',0,2378);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300030004','510421','米易县','',0,2379);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300030005','510422','盐边县','',0,2380);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100230004','510500','泸州市','',0,2381);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300040001','510502','江阳区','',0,2382);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300040002','510503','纳溪区','',0,2383);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300040003','510504','龙马潭区','',0,2384);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300040004','510521','泸县','',0,2385);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300040005','510522','合江县','',0,2386);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300040006','510524','叙永县','',0,2387);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300040007','510525','古蔺县','',0,2388);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100230005','510600','德阳市','',0,2389);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300050001','510603','旌阳区','',0,2390);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300050002','510623','中江县','',0,2391);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300050003','510626','罗江县','',0,2392);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300050004','510681','广汉市','',0,2393);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300050005','510682','什邡市','',0,2394);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300050006','510683','绵竹市','',0,2395);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100230006','510700','绵阳市','',0,2396);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300060001','510703','涪城区','',0,2397);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300060002','510704','游仙区','',0,2398);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300060003','510722','三台县','',0,2399);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300060004','510723','盐亭县','',0,2400);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300060005','510724','安县','',0,2401);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300060006','510725','梓潼县','',0,2402);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300060007','510726','北川羌族自治县','',0,2403);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300060008','510727','平武县','',0,2404);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300060009','510751','高新区','',0,2405);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300060010','510781','江油市','',0,2406);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100230007','510800','广元市','',0,2407);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300070001','510802','利州区','',0,2408);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300070002','510811','元坝区','',0,2409);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300070003','510812','朝天区','',0,2410);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300070004','510821','旺苍县','',0,2411);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300070005','510822','青川县','',0,2412);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300070006','510823','剑阁县','',0,2413);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300070007','510824','苍溪县','',0,2414);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100230008','510900','遂宁市','',0,2415);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300080001','510903','船山区','',0,2416);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300080002','510904','安居区','',0,2417);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300080003','510921','蓬溪县','',0,2418);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300080004','510922','射洪县','',0,2419);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300080005','510923','大英县','',0,2420);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100230009','511000','内江市','',0,2421);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300090001','511002','市中区','',0,2422);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300090002','511011','东兴区','',0,2423);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300090003','511024','威远县','',0,2424);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300090004','511025','资中县','',0,2425);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300090005','511028','隆昌县','',0,2426);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100230010','511100','乐山市','',0,2427);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300100001','511102','市中区','',0,2428);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300100002','511111','沙湾区','',0,2429);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300100003','511112','五通桥区','',0,2430);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300100004','511113','金口河区','',0,2431);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300100005','511123','犍为县','',0,2432);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300100006','511124','井研县','',0,2433);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300100007','511126','夹江县','',0,2434);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300100008','511129','沐川县','',0,2435);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300100009','511132','峨边彝族自治县','',0,2436);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300100010','511133','马边彝族自治县','',0,2437);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300100011','511181','峨眉山市','',0,2438);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100230011','511300','南充市','',0,2439);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300110001','511302','顺庆区','',0,2440);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300110002','511303','高坪区','',0,2441);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300110003','511304','嘉陵区','',0,2442);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300110004','511321','南部县','',0,2443);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300110005','511322','营山县','',0,2444);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300110006','511323','蓬安县','',0,2445);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300110007','511324','仪陇县','',0,2446);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300110008','511325','西充县','',0,2447);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300110009','511381','阆中市','',0,2448);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100230012','511400','眉山市','',0,2449);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300120001','511402','东坡区','',0,2450);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300120002','511421','仁寿县','',0,2451);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300120003','511422','彭山县','',0,2452);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300120004','511423','洪雅县','',0,2453);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300120005','511424','丹棱县','',0,2454);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300120006','511425','青神县','',0,2455);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100230013','511500','宜宾市','',0,2456);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300130001','511502','翠屏区','',0,2457);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300130002','511521','宜宾县','',0,2458);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300130003','511522','南溪县','',0,2459);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300130004','511523','江安县','',0,2460);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300130005','511524','长宁县','',0,2461);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300130006','511525','高县','',0,2462);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300130007','511526','珙县','',0,2463);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300130008','511527','筠连县','',0,2464);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300130009','511528','兴文县','',0,2465);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300130010','511529','屏山县','',0,2466);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100230014','511600','广安市','',0,2467);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300140001','511602','广安区','',0,2468);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300140002','511621','岳池县','',0,2469);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300140003','511622','武胜县','',0,2470);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300140004','511623','邻水县','',0,2471);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300140005','511681','华蓥市','',0,2472);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300140006','511682','市辖区','',0,2473);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100230015','511700','达州市','',0,2474);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300150001','511702','通川区','',0,2475);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300150002','511721','达县','',0,2476);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300150003','511722','宣汉县','',0,2477);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300150004','511723','开江县','',0,2478);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300150005','511724','大竹县','',0,2479);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300150006','511725','渠县','',0,2480);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300150007','511781','万源市','',0,2481);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100230016','511800','雅安市','',0,2482);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300160001','511802','雨城区','',0,2483);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300160002','511821','名山县','',0,2484);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300160003','511822','荥经县','',0,2485);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300160004','511823','汉源县','',0,2486);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300160005','511824','石棉县','',0,2487);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300160006','511825','天全县','',0,2488);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300160007','511826','芦山县','',0,2489);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300160008','511827','宝兴县','',0,2490);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100230017','511900','巴中市','',0,2491);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300170001','511902','巴州区','',0,2492);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300170002','511921','通江县','',0,2493);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300170003','511922','南江县','',0,2494);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300170004','511923','平昌县','',0,2495);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100230018','512000','资阳市','',0,2496);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300180001','512002','雁江区','',0,2497);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300180002','512021','安岳县','',0,2498);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300180003','512022','乐至县','',0,2499);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300180004','512081','简阳市','',0,2500);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100230019','513200','阿坝藏族羌族自治州','',0,2501);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300190001','513221','汶川县','',0,2502);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300190002','513222','理县','',0,2503);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300190003','513223','茂县','',0,2504);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300190004','513224','松潘县','',0,2505);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300190005','513225','九寨沟县','',0,2506);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300190006','513226','金川县','',0,2507);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300190007','513227','小金县','',0,2508);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300190008','513228','黑水县','',0,2509);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300190009','513229','马尔康县','',0,2510);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300190010','513230','壤塘县','',0,2511);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300190011','513231','阿坝县','',0,2512);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300190012','513232','若尔盖县','',0,2513);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300190013','513233','红原县','',0,2514);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100230020','513300','甘孜藏族自治州','',0,2515);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300200001','513321','康定县','',0,2516);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300200002','513322','泸定县','',0,2517);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300200003','513323','丹巴县','',0,2518);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300200004','513324','九龙县','',0,2519);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300200005','513325','雅江县','',0,2520);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300200006','513326','道孚县','',0,2521);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300200007','513327','炉霍县','',0,2522);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300200008','513328','甘孜县','',0,2523);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300200009','513329','新龙县','',0,2524);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300200010','513330','德格县','',0,2525);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300200011','513331','白玉县','',0,2526);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300200012','513332','石渠县','',0,2527);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300200013','513333','色达县','',0,2528);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300200014','513334','理塘县','',0,2529);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300200015','513335','巴塘县','',0,2530);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300200016','513336','乡城县','',0,2531);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300200017','513337','稻城县','',0,2532);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300200018','513338','得荣县','',0,2533);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100230021','513400','凉山彝族自治州','',0,2534);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300210001','513401','西昌市','',0,2535);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300210002','513422','木里藏族自治县','',0,2536);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300210003','513423','盐源县','',0,2537);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300210004','513424','德昌县','',0,2538);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300210005','513425','会理县','',0,2539);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300210006','513426','会东县','',0,2540);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300210007','513427','宁南县','',0,2541);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300210008','513428','普格县','',0,2542);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300210009','513429','布拖县','',0,2543);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300210010','513430','金阳县','',0,2544);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300210011','513431','昭觉县','',0,2545);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300210012','513432','喜德县','',0,2546);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300210013','513433','冕宁县','',0,2547);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300210014','513434','越西县','',0,2548);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300210015','513435','甘洛县','',0,2549);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300210016','513436','美姑县','',0,2550);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002300210017','513437','雷波县','',0,2551);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('00010024','520000','贵州省','',0,2552);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100240001','520100','贵阳市','',0,2553);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400010001','520102','南明区','',0,2554);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400010002','520103','云岩区','',0,2555);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400010003','520111','花溪区','',0,2556);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400010004','520112','乌当区','',0,2557);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400010005','520113','白云区','',0,2558);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400010006','520114','小河区','',0,2559);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400010007','520121','开阳县','',0,2560);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400010008','520122','息烽县','',0,2561);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400010009','520123','修文县','',0,2562);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400010010','520151','金阳开发区','',0,2563);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400010011','520181','清镇市','',0,2564);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100240002','520200','六盘水市','',0,2565);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400020001','520201','钟山区','',0,2566);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400020002','520203','六枝特区','',0,2567);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400020003','520221','水城县','',0,2568);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400020004','520222','盘县','',0,2569);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100240003','520300','遵义市','',0,2570);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400030001','520302','红花岗区','',0,2571);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400030002','520303','汇川区','',0,2572);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400030003','520321','遵义县','',0,2573);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400030004','520322','桐梓县','',0,2574);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400030005','520323','绥阳县','',0,2575);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400030006','520324','正安县','',0,2576);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400030007','520325','道真仡佬族苗族自治县','',0,2577);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400030008','520326','务川仡佬族苗族自治县','',0,2578);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400030009','520327','凤冈县','',0,2579);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400030010','520328','湄潭县','',0,2580);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400030011','520329','余庆县','',0,2581);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400030012','520330','习水县','',0,2582);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400030013','520381','赤水市','',0,2583);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400030014','520382','仁怀市','',0,2584);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100240004','520400','安顺市','',0,2585);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400040001','520402','西秀区','',0,2586);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400040002','520421','平坝县','',0,2587);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400040003','520422','普定县','',0,2588);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400040004','520423','镇宁布依族苗族自治县','',0,2589);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400040005','520424','关岭布依族苗族自治县','',0,2590);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400040006','520425','紫云苗族布依族自治县','',0,2591);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100240005','522200','铜仁地区','',0,2592);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400050001','522201','铜仁市','',0,2593);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400050002','522222','江口县','',0,2594);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400050003','522223','玉屏侗族自治县','',0,2595);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400050004','522224','石阡县','',0,2596);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400050005','522225','思南县','',0,2597);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400050006','522226','印江土家族苗族自治县','',0,2598);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400050007','522227','德江县','',0,2599);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400050008','522228','沿河土家族自治县','',0,2600);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400050009','522229','松桃苗族自治县','',0,2601);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400050010','522230','万山特区','',0,2602);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100240006','522300','黔西南布依族苗族自治州','',0,2603);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400060001','522301','兴义市','',0,2604);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400060002','522322','兴仁县','',0,2605);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400060003','522323','普安县','',0,2606);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400060004','522324','晴隆县','',0,2607);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400060005','522325','贞丰县','',0,2608);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400060006','522326','望谟县','',0,2609);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400060007','522327','册亨县','',0,2610);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400060008','522328','安龙县','',0,2611);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100240007','522400','毕节地区','',0,2612);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400070001','522401','毕节市','',0,2613);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400070002','522422','大方县','',0,2614);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400070003','522423','黔西县','',0,2615);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400070004','522424','金沙县','',0,2616);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400070005','522425','织金县','',0,2617);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400070006','522426','纳雍县','',0,2618);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400070007','522427','威宁彝族回族苗族自治县','',0,2619);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400070008','522428','赫章县','',0,2620);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100240008','522600','黔东南苗族侗族自治州','',0,2621);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400080001','522601','凯里市','',0,2622);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400080002','522622','黄平县','',0,2623);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400080003','522623','施秉县','',0,2624);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400080004','522624','三穗县','',0,2625);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400080005','522625','镇远县','',0,2626);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400080006','522626','岑巩县','',0,2627);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400080007','522627','天柱县','',0,2628);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400080008','522628','锦屏县','',0,2629);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400080009','522629','剑河县','',0,2630);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400080010','522630','台江县','',0,2631);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400080011','522631','黎平县','',0,2632);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400080012','522632','榕江县','',0,2633);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400080013','522633','从江县','',0,2634);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400080014','522634','雷山县','',0,2635);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400080015','522635','麻江县','',0,2636);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400080016','522636','丹寨县','',0,2637);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100240009','522700','黔南布依族苗族自治州','',0,2638);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400090001','522701','都匀市','',0,2639);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400090002','522702','福泉市','',0,2640);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400090003','522722','荔波县','',0,2641);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400090004','522723','贵定县','',0,2642);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400090005','522725','瓮安县','',0,2643);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400090006','522726','独山县','',0,2644);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400090007','522727','平塘县','',0,2645);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400090008','522728','罗甸县','',0,2646);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400090009','522729','长顺县','',0,2647);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400090010','522730','龙里县','',0,2648);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400090011','522731','惠水县','',0,2649);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002400090012','522732','三都水族自治县','',0,2650);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('00010025','530000','云南省','',0,2651);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100250001','530100','昆明市','',0,2652);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500010001','530102','五华区','',0,2653);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500010002','530103','盘龙区','',0,2654);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500010003','530111','官渡区','',0,2655);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500010004','530112','西山区','',0,2656);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500010005','530113','东川区','',0,2657);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500010006','530121','呈贡县','',0,2658);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500010007','530122','晋宁县','',0,2659);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500010008','530124','富民县','',0,2660);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500010009','530125','宜良县','',0,2661);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500010010','530126','石林彝族自治县','',0,2662);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500010011','530127','嵩明县','',0,2663);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500010012','530128','禄劝彝族苗族自治县','',0,2664);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500010013','530129','寻甸回族彝族自治县','',0,2665);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500010014','530181','安宁市','',0,2666);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100250002','530300','曲靖市','',0,2667);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500020001','530302','麒麟区','',0,2668);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500020002','530321','马龙县','',0,2669);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500020003','530322','陆良县','',0,2670);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500020004','530323','师宗县','',0,2671);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500020005','530324','罗平县','',0,2672);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500020006','530325','富源县','',0,2673);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500020007','530326','会泽县','',0,2674);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500020008','530328','沾益县','',0,2675);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500020009','530381','宣威市','',0,2676);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100250003','530400','玉溪市','',0,2677);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500030001','530402','红塔区','',0,2678);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500030002','530421','江川县','',0,2679);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500030003','530422','澄江县','',0,2680);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500030004','530423','通海县','',0,2681);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500030005','530424','华宁县','',0,2682);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500030006','530425','易门县','',0,2683);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500030007','530426','峨山彝族自治县','',0,2684);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500030008','530427','新平彝族傣族自治县','',0,2685);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500030009','530428','元江哈尼族彝族傣族自治县','',0,2686);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100250004','530500','保山市','',0,2687);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500040001','530502','隆阳区','',0,2688);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500040002','530521','施甸县','',0,2689);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500040003','530522','腾冲县','',0,2690);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500040004','530523','龙陵县','',0,2691);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500040005','530524','昌宁县','',0,2692);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100250005','530600','昭通市','',0,2693);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500050001','530602','昭阳区','',0,2694);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500050002','530621','鲁甸县','',0,2695);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500050003','530622','巧家县','',0,2696);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500050004','530623','盐津县','',0,2697);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500050005','530624','大关县','',0,2698);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500050006','530625','永善县','',0,2699);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500050007','530626','绥江县','',0,2700);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500050008','530627','镇雄县','',0,2701);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500050009','530628','彝良县','',0,2702);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500050010','530629','威信县','',0,2703);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500050011','530630','水富县','',0,2704);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100250006','530700','丽江市','',0,2705);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500060001','530702','古城区','',0,2706);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500060002','530721','玉龙纳西族自治县','',0,2707);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500060003','530722','永胜县','',0,2708);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500060004','530723','华坪县','',0,2709);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500060005','530724','宁蒗彝族自治县','',0,2710);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100250007','530800','普洱市','',0,2711);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500070001','530802','思茅区','',0,2712);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500070002','530821','宁洱哈尼族彝族自治县','',0,2713);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500070003','530822','墨江哈尼族自治县','',0,2714);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500070004','530823','景东彝族自治县','',0,2715);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500070005','530824','景谷傣族彝族自治县','',0,2716);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500070006','530825','镇沅彝族哈尼族拉祜族自治县','',0,2717);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500070007','530826','江城哈尼族彝族自治县','',0,2718);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500070008','530827','孟连傣族拉祜族佤族自治县','',0,2719);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500070009','530828','澜沧拉祜族自治县','',0,2720);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500070010','530829','西盟佤族自治县','',0,2721);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100250008','530900','临沧市','',0,2722);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500080001','530902','临翔区','',0,2723);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500080002','530921','凤庆县','',0,2724);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500080003','530922','云县','',0,2725);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500080004','530923','永德县','',0,2726);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500080005','530924','镇康县','',0,2727);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500080006','530925','双江拉祜族佤族布朗族傣族自治县','',0,2728);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500080007','530926','耿马傣族佤族自治县','',0,2729);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500080008','530927','沧源佤族自治县','',0,2730);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100250009','532300','楚雄彝族自治州','',0,2731);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500090001','532301','楚雄市','',0,2732);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500090002','532322','双柏县','',0,2733);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500090003','532323','牟定县','',0,2734);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500090004','532324','南华县','',0,2735);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500090005','532325','姚安县','',0,2736);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500090006','532326','大姚县','',0,2737);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500090007','532327','永仁县','',0,2738);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500090008','532328','元谋县','',0,2739);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500090009','532329','武定县','',0,2740);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500090010','532331','禄丰县','',0,2741);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100250010','532500','红河哈尼族彝族自治州','',0,2742);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500100001','532501','个旧市','',0,2743);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500100002','532502','开远市','',0,2744);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500100003','532522','蒙自县','',0,2745);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500100004','532523','屏边苗族自治县','',0,2746);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500100005','532524','建水县','',0,2747);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500100006','532525','石屏县','',0,2748);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500100007','532526','弥勒县','',0,2749);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500100008','532527','泸西县','',0,2750);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500100009','532528','元阳县','',0,2751);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500100010','532529','红河县','',0,2752);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500100011','532530','金平苗族瑶族傣族自治县','',0,2753);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500100012','532531','绿春县','',0,2754);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500100013','532532','河口瑶族自治县','',0,2755);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100250011','532600','文山壮族苗族自治州','',0,2756);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500110001','532621','文山县','',0,2757);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500110002','532622','砚山县','',0,2758);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500110003','532623','西畴县','',0,2759);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500110004','532624','麻栗坡县','',0,2760);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500110005','532625','马关县','',0,2761);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500110006','532626','丘北县','',0,2762);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500110007','532627','广南县','',0,2763);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500110008','532628','富宁县','',0,2764);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100250012','532800','西双版纳傣族自治州','',0,2765);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500120001','532801','景洪市','',0,2766);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500120002','532822','勐海县','',0,2767);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500120003','532823','勐腊县','',0,2768);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100250013','532900','大理白族自治州','',0,2769);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500130001','532901','大理市','',0,2770);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500130002','532922','漾濞彝族自治县','',0,2771);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500130003','532923','祥云县','',0,2772);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500130004','532924','宾川县','',0,2773);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500130005','532925','弥渡县','',0,2774);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500130006','532926','南涧彝族自治县','',0,2775);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500130007','532927','巍山彝族回族自治县','',0,2776);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500130008','532928','永平县','',0,2777);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500130009','532929','云龙县','',0,2778);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500130010','532930','洱源县','',0,2779);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500130011','532931','剑川县','',0,2780);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500130012','532932','鹤庆县','',0,2781);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100250014','533100','德宏傣族景颇族自治州','',0,2782);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500140001','533102','瑞丽市','',0,2783);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500140002','533103','潞西市','',0,2784);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500140003','533122','梁河县','',0,2785);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500140004','533123','盈江县','',0,2786);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500140005','533124','陇川县','',0,2787);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100250015','533300','怒江傈僳族自治州','',0,2788);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500150001','533321','泸水县','',0,2789);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500150002','533323','福贡县','',0,2790);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500150003','533324','贡山独龙族怒族自治县','',0,2791);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500150004','533325','兰坪白族普米族自治县','',0,2792);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100250016','533400','迪庆藏族自治州','',0,2793);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500160001','533421','香格里拉县','',0,2794);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500160002','533422','德钦县','',0,2795);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002500160003','533423','维西傈僳族自治县','',0,2796);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('00010026','540000','西藏自治区','',0,2797);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100260001','540100','拉萨市','',0,2798);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600010001','540102','城关区','',0,2799);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600010002','540121','林周县','',0,2800);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600010003','540122','当雄县','',0,2801);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600010004','540123','尼木县','',0,2802);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600010005','540124','曲水县','',0,2803);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600010006','540125','堆龙德庆县','',0,2804);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600010007','540126','达孜县','',0,2805);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600010008','540127','墨竹工卡县','',0,2806);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100260002','542100','昌都地区','',0,2807);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600020001','542121','昌都县','',0,2808);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600020002','542122','江达县','',0,2809);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600020003','542123','贡觉县','',0,2810);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600020004','542124','类乌齐县','',0,2811);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600020005','542125','丁青县','',0,2812);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600020006','542126','察雅县','',0,2813);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600020007','542127','八宿县','',0,2814);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600020008','542128','左贡县','',0,2815);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600020009','542129','芒康县','',0,2816);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600020010','542132','洛隆县','',0,2817);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600020011','542133','边坝县','',0,2818);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100260003','542200','山南地区','',0,2819);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600030001','542221','乃东县','',0,2820);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600030002','542222','扎囊县','',0,2821);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600030003','542223','贡嘎县','',0,2822);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600030004','542224','桑日县','',0,2823);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600030005','542225','琼结县','',0,2824);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600030006','542226','曲松县','',0,2825);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600030007','542227','措美县','',0,2826);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600030008','542228','洛扎县','',0,2827);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600030009','542229','加查县','',0,2828);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600030010','542231','隆子县','',0,2829);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600030011','542232','错那县','',0,2830);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600030012','542233','浪卡子县','',0,2831);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100260004','542300','日喀则地区','',0,2832);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600040001','542301','日喀则市','',0,2833);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600040002','542322','南木林县','',0,2834);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600040003','542323','江孜县','',0,2835);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600040004','542324','定日县','',0,2836);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600040005','542325','萨迦县','',0,2837);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600040006','542326','拉孜县','',0,2838);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600040007','542327','昂仁县','',0,2839);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600040008','542328','谢通门县','',0,2840);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600040009','542329','白朗县','',0,2841);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600040010','542330','仁布县','',0,2842);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600040011','542331','康马县','',0,2843);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600040012','542332','定结县','',0,2844);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600040013','542333','仲巴县','',0,2845);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600040014','542334','亚东县','',0,2846);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600040015','542335','吉隆县','',0,2847);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600040016','542336','聂拉木县','',0,2848);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600040017','542337','萨嘎县','',0,2849);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600040018','542338','岗巴县','',0,2850);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100260005','542400','那曲地区','',0,2851);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600050001','542421','那曲县','',0,2852);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600050002','542422','嘉黎县','',0,2853);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600050003','542423','比如县','',0,2854);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600050004','542424','聂荣县','',0,2855);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600050005','542425','安多县','',0,2856);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600050006','542426','申扎县','',0,2857);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600050007','542427','索县','',0,2858);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600050008','542428','班戈县','',0,2859);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600050009','542429','巴青县','',0,2860);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600050010','542430','尼玛县','',0,2861);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100260006','542500','阿里地区','',0,2862);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600060001','542521','普兰县','',0,2863);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600060002','542522','札达县','',0,2864);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600060003','542523','噶尔县','',0,2865);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600060004','542524','日土县','',0,2866);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600060005','542525','革吉县','',0,2867);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600060006','542526','改则县','',0,2868);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600060007','542527','措勤县','',0,2869);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100260007','542600','林芝地区','',0,2870);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600070001','542621','林芝县','',0,2871);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600070002','542622','工布江达县','',0,2872);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600070003','542623','米林县','',0,2873);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600070004','542624','墨脱县','',0,2874);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600070005','542625','波密县','',0,2875);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600070006','542626','察隅县','',0,2876);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002600070007','542627','朗县','',0,2877);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('00010027','610000','陕西省','',0,2878);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100270001','610100','西安市','',0,2879);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700010001','610102','新城区','',0,2880);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700010002','610103','碑林区','',0,2881);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700010003','610104','莲湖区','',0,2882);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700010004','610111','灞桥区','',0,2883);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700010005','610112','未央区','',0,2884);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700010006','610113','雁塔区','',0,2885);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700010007','610114','阎良区','',0,2886);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700010008','610115','临潼区','',0,2887);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700010009','610116','长安区','',0,2888);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700010010','610122','蓝田县','',0,2889);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700010011','610124','周至县','',0,2890);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700010012','610125','户县','',0,2891);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700010013','610126','高陵县','',0,2892);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100270002','610200','铜川市','',0,2893);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700020001','610202','王益区','',0,2894);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700020002','610203','印台区','',0,2895);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700020003','610204','耀州区','',0,2896);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700020004','610222','宜君县','',0,2897);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100270003','610300','宝鸡市','',0,2898);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700030001','610302','渭滨区','',0,2899);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700030002','610303','金台区','',0,2900);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700030003','610304','陈仓区','',0,2901);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700030004','610322','凤翔县','',0,2902);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700030005','610323','岐山县','',0,2903);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700030006','610324','扶风县','',0,2904);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700030007','610326','眉县','',0,2905);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700030008','610327','陇县','',0,2906);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700030009','610328','千阳县','',0,2907);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700030010','610329','麟游县','',0,2908);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700030011','610330','凤县','',0,2909);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700030012','610331','太白县','',0,2910);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100270004','610400','咸阳市','',0,2911);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700040001','610402','秦都区','',0,2912);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700040002','610403','杨陵区','',0,2913);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700040003','610404','渭城区','',0,2914);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700040004','610422','三原县','',0,2915);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700040005','610423','泾阳县','',0,2916);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700040006','610424','乾县','',0,2917);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700040007','610425','礼泉县','',0,2918);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700040008','610426','永寿县','',0,2919);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700040009','610427','彬县','',0,2920);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700040010','610428','长武县','',0,2921);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700040011','610429','旬邑县','',0,2922);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700040012','610430','淳化县','',0,2923);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700040013','610431','武功县','',0,2924);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700040014','610481','兴平市','',0,2925);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100270005','610500','渭南市','',0,2926);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700050001','610502','临渭区','',0,2927);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700050002','610521','华县','',0,2928);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700050003','610522','潼关县','',0,2929);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700050004','610523','大荔县','',0,2930);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700050005','610524','合阳县','',0,2931);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700050006','610525','澄城县','',0,2932);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700050007','610526','蒲城县','',0,2933);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700050008','610527','白水县','',0,2934);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700050009','610528','富平县','',0,2935);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700050010','610581','韩城市','',0,2936);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700050011','610582','华阴市','',0,2937);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100270006','610600','延安市','',0,2938);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700060001','610602','宝塔区','',0,2939);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700060002','610621','延长县','',0,2940);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700060003','610622','延川县','',0,2941);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700060004','610623','子长县','',0,2942);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700060005','610624','安塞县','',0,2943);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700060006','610625','志丹县','',0,2944);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700060007','610626','吴起县','',0,2945);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700060008','610627','甘泉县','',0,2946);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700060009','610628','富县','',0,2947);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700060010','610629','洛川县','',0,2948);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700060011','610630','宜川县','',0,2949);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700060012','610631','黄龙县','',0,2950);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700060013','610632','黄陵县','',0,2951);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100270007','610700','汉中市','',0,2952);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700070001','610702','汉台区','',0,2953);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700070002','610721','南郑县','',0,2954);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700070003','610722','城固县','',0,2955);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700070004','610723','洋县','',0,2956);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700070005','610724','西乡县','',0,2957);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700070006','610725','勉县','',0,2958);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700070007','610726','宁强县','',0,2959);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700070008','610727','略阳县','',0,2960);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700070009','610728','镇巴县','',0,2961);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700070010','610729','留坝县','',0,2962);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700070011','610730','佛坪县','',0,2963);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100270008','610800','榆林市','',0,2964);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700080001','610802','榆阳区','',0,2965);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700080002','610821','神木县','',0,2966);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700080003','610822','府谷县','',0,2967);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700080004','610823','横山县','',0,2968);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700080005','610824','靖边县','',0,2969);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700080006','610825','定边县','',0,2970);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700080007','610826','绥德县','',0,2971);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700080008','610827','米脂县','',0,2972);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700080009','610828','佳县','',0,2973);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700080010','610829','吴堡县','',0,2974);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700080011','610830','清涧县','',0,2975);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700080012','610831','子洲县','',0,2976);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100270009','610900','安康市','',0,2977);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700090001','610902','汉滨区','',0,2978);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700090002','610921','汉阴县','',0,2979);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700090003','610922','石泉县','',0,2980);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700090004','610923','宁陕县','',0,2981);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700090005','610924','紫阳县','',0,2982);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700090006','610925','岚皋县','',0,2983);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700090007','610926','平利县','',0,2984);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700090008','610927','镇坪县','',0,2985);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700090009','610928','旬阳县','',0,2986);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700090010','610929','白河县','',0,2987);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100270010','611000','商洛市','',0,2988);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700100001','611002','商州区','',0,2989);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700100002','611021','洛南县','',0,2990);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700100003','611022','丹凤县','',0,2991);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700100004','611023','商南县','',0,2992);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700100005','611024','山阳县','',0,2993);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700100006','611025','镇安县','',0,2994);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002700100007','611026','柞水县','',0,2995);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('00010028','620000','甘肃省','',0,2996);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100280001','620100','兰州市','',0,2997);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800010001','620102','城关区','',0,2998);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800010002','620103','七里河区','',0,2999);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800010003','620104','西固区','',0,3000);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800010004','620105','安宁区','',0,3001);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800010005','620111','红古区','',0,3002);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800010006','620121','永登县','',0,3003);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800010007','620122','皋兰县','',0,3004);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800010008','620123','榆中县','',0,3005);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100280002','620200','嘉峪关市','',0,3006);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100280003','620300','金昌市','',0,3007);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800030001','620302','金川区','',0,3008);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800030002','620321','永昌县','',0,3009);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100280004','620400','白银市','',0,3010);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800040001','620402','白银区','',0,3011);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800040002','620403','平川区','',0,3012);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800040003','620421','靖远县','',0,3013);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800040004','620422','会宁县','',0,3014);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800040005','620423','景泰县','',0,3015);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100280005','620500','天水市','',0,3016);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800050001','620502','秦州区','',0,3017);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800050002','620503','麦积区','',0,3018);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800050003','620521','清水县','',0,3019);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800050004','620522','秦安县','',0,3020);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800050005','620523','甘谷县','',0,3021);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800050006','620524','武山县','',0,3022);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800050007','620525','张家川回族自治县','',0,3023);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100280006','620600','武威市','',0,3024);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800060001','620602','凉州区','',0,3025);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800060002','620621','民勤县','',0,3026);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800060003','620622','古浪县','',0,3027);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800060004','620623','天祝藏族自治县','',0,3028);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100280007','620700','张掖市','',0,3029);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800070001','620702','甘州区','',0,3030);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800070002','620721','肃南裕固族自治县','',0,3031);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800070003','620722','民乐县','',0,3032);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800070004','620723','临泽县','',0,3033);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800070005','620724','高台县','',0,3034);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800070006','620725','山丹县','',0,3035);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100280008','620800','平凉市','',0,3036);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800080001','620802','崆峒区','',0,3037);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800080002','620821','泾川县','',0,3038);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800080003','620822','灵台县','',0,3039);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800080004','620823','崇信县','',0,3040);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800080005','620824','华亭县','',0,3041);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800080006','620825','庄浪县','',0,3042);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800080007','620826','静宁县','',0,3043);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100280009','620900','酒泉市','',0,3044);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800090001','620902','肃州区','',0,3045);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800090002','620921','金塔县','',0,3046);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800090003','620922','安西县','',0,3047);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800090004','620923','肃北蒙古族自治县','',0,3048);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800090005','620924','阿克塞哈萨克族自治县','',0,3049);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800090006','620981','玉门市','',0,3050);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800090007','620982','敦煌市','',0,3051);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100280010','621000','庆阳市','',0,3052);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800100001','621002','西峰区','',0,3053);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800100002','621021','庆城县','',0,3054);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800100003','621022','环县','',0,3055);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800100004','621023','华池县','',0,3056);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800100005','621024','合水县','',0,3057);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800100006','621025','正宁县','',0,3058);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800100007','621026','宁县','',0,3059);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800100008','621027','镇原县','',0,3060);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100280011','621100','定西市','',0,3061);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800110001','620100','兰州市','',0,3062);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800110002','620200','嘉峪关市','',0,3063);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800110003','620300','金昌市','',0,3064);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800110004','620400','白银市','',0,3065);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800110005','620500','天水市','',0,3066);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800110006','620600','武威市','',0,3067);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800110007','620700','张掖市','',0,3068);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800110008','620800','平凉市','',0,3069);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800110009','620900','酒泉市','',0,3070);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800110010','621000','庆阳市','',0,3071);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800110011','621100','定西市','',0,3072);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800110012','621200','陇南市','',0,3073);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800110013','622900','临夏回族自治州','',0,3074);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800110014','623000','甘南藏族自治州','',0,3075);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100280012','621200','陇南市','',0,3076);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800120001','621202','武都区','',0,3077);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800120002','621221','成县','',0,3078);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800120003','621222','文县','',0,3079);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800120004','621223','宕昌县','',0,3080);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800120005','621224','康县','',0,3081);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800120006','621225','西和县','',0,3082);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800120007','621226','礼县','',0,3083);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800120008','621227','徽县','',0,3084);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800120009','621228','两当县','',0,3085);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100280013','622900','临夏回族自治州','',0,3086);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800130001','622901','临夏市','',0,3087);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800130002','622921','临夏县','',0,3088);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800130003','622922','康乐县','',0,3089);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800130004','622923','永靖县','',0,3090);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800130005','622924','广河县','',0,3091);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800130006','622925','和政县','',0,3092);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800130007','622926','东乡族自治县','',0,3093);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800130008','622927','积石山保安族东乡族撒拉族自治县','',0,3094);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100280014','623000','甘南藏族自治州','',0,3095);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800140001','623001','合作市','',0,3096);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800140002','623021','临潭县','',0,3097);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800140003','623022','卓尼县','',0,3098);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800140004','623023','舟曲县','',0,3099);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800140005','623024','迭部县','',0,3100);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800140006','623025','玛曲县','',0,3101);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800140007','623026','碌曲县','',0,3102);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002800140008','623027','夏河县','',0,3103);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('00010029','630000','青海省','',0,3104);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100290001','630100','西宁市','',0,3105);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900010001','630102','城东区','',0,3106);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900010002','630103','城中区','',0,3107);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900010003','630104','城西区','',0,3108);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900010004','630105','城北区','',0,3109);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900010005','630121','大通回族土族自治县','',0,3110);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900010006','630122','湟中县','',0,3111);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900010007','630123','湟源县','',0,3112);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100290002','632100','海东地区','',0,3113);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900020001','632121','平安县','',0,3114);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900020002','632122','民和回族土族自治县','',0,3115);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900020003','632123','乐都县','',0,3116);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900020004','632126','互助土族自治县','',0,3117);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900020005','632127','化隆回族自治县','',0,3118);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900020006','632128','循化撒拉族自治县','',0,3119);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100290003','632200','海北藏族自治州','',0,3120);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900030001','632221','门源回族自治县','',0,3121);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900030002','632222','祁连县','',0,3122);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900030003','632223','海晏县','',0,3123);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900030004','632224','刚察县','',0,3124);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100290004','632300','黄南藏族自治州','',0,3125);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900040001','632321','同仁县','',0,3126);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900040002','632322','尖扎县','',0,3127);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900040003','632323','泽库县','',0,3128);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900040004','632324','河南蒙古族自治县','',0,3129);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100290005','632500','海南藏族自治州','',0,3130);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900050001','632521','共和县','',0,3131);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900050002','632522','同德县','',0,3132);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900050003','632523','贵德县','',0,3133);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900050004','632524','兴海县','',0,3134);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900050005','632525','贵南县','',0,3135);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100290006','632600','果洛藏族自治州','',0,3136);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900060001','632621','玛沁县','',0,3137);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900060002','632622','班玛县','',0,3138);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900060003','632623','甘德县','',0,3139);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900060004','632624','达日县','',0,3140);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900060005','632625','久治县','',0,3141);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900060006','632626','玛多县','',0,3142);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100290007','632700','玉树藏族自治州','',0,3143);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900070001','632721','玉树县','',0,3144);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900070002','632722','杂多县','',0,3145);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900070003','632723','称多县','',0,3146);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900070004','632724','治多县','',0,3147);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900070005','632725','囊谦县','',0,3148);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900070006','632726','曲麻莱县','',0,3149);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100290008','632800','海西蒙古族藏族自治州','',0,3150);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900080001','630100','西宁市','',0,3151);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900080002','632100','海东地区','',0,3152);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900080003','632200','海北藏族自治州','',0,3153);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900080004','632300','黄南藏族自治州','',0,3154);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900080005','632500','海南藏族自治州','',0,3155);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900080006','632600','果洛藏族自治州','',0,3156);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900080007','632700','玉树藏族自治州','',0,3157);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001002900080008','632800','海西蒙古族藏族自治州','',0,3158);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('00010030','640000','宁夏回族自治区','',0,3159);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100300001','640100','银川市','',0,3160);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003000010001','640104','兴庆区','',0,3161);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003000010002','640105','西夏区','',0,3162);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003000010003','640106','金凤区','',0,3163);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003000010004','640121','永宁县','',0,3164);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003000010005','640122','贺兰县','',0,3165);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003000010006','640181','灵武市','',0,3166);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100300002','640200','石嘴山市','',0,3167);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003000020001','640202','大武口区','',0,3168);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003000020002','640205','惠农区','',0,3169);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003000020003','640221','平罗县','',0,3170);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100300003','640300','吴忠市','',0,3171);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003000030001','640302','利通区','',0,3172);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003000030002','640303','红寺堡区','',0,3173);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003000030003','640323','盐池县','',0,3174);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003000030004','640324','同心县','',0,3175);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003000030005','640381','青铜峡市','',0,3176);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100300004','640400','固原市','',0,3177);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003000040001','640402','原州区','',0,3178);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003000040002','640422','西吉县','',0,3179);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003000040003','640423','隆德县','',0,3180);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003000040004','640424','泾源县','',0,3181);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003000040005','640425','彭阳县','',0,3182);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100300005','640500','中卫市','',0,3183);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003000050001','640502','沙坡头区','',0,3184);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003000050002','640521','中宁县','',0,3185);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003000050003','640522','海原县','',0,3186);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('00010031','650000','新疆维吾尔自治区','',0,3187);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100310001','650100','乌鲁木齐市','',0,3188);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100010001','650102','天山区','',0,3189);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100010002','650103','沙依巴克区','',0,3190);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100010003','650104','新市区','',0,3191);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100010004','650105','水磨沟区','',0,3192);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100010005','650106','头屯河区','',0,3193);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100010006','650107','达坂城区','',0,3194);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100010007','650108','东山区','',0,3195);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100010008','650109','米东区','',0,3196);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100010009','650121','乌鲁木齐县','',0,3197);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100310002','650200','克拉玛依市','',0,3198);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100020001','650202','独山子区','',0,3199);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100020002','650203','克拉玛依区','',0,3200);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100020003','650204','白碱滩区','',0,3201);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100020004','650205','乌尔禾区','',0,3202);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100310003','652100','吐鲁番地区','',0,3203);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100030001','652101','吐鲁番市','',0,3204);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100030002','652122','鄯善县','',0,3205);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100030003','652123','托克逊县','',0,3206);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100310004','652200','哈密地区','',0,3207);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100040001','652201','哈密市','',0,3208);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100040002','652222','巴里坤哈萨克自治县','',0,3209);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100040003','652223','伊吾县','',0,3210);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100310005','652300','昌吉回族自治州','',0,3211);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100050001','652301','昌吉市','',0,3212);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100050002','652302','阜康市','',0,3213);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100050003','652303','米泉市','',0,3214);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100050004','652323','呼图壁县','',0,3215);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100050005','652324','玛纳斯县','',0,3216);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100050006','652325','奇台县','',0,3217);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100050007','652327','吉木萨尔县','',0,3218);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100050008','652328','木垒哈萨克自治县','',0,3219);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100310006','652700','博尔塔拉蒙古自治州','',0,3220);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100060001','652701','博乐市','',0,3221);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100060002','652722','精河县','',0,3222);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100060003','652723','温泉县','',0,3223);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100310007','652800','巴音郭楞蒙古自治州','',0,3224);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100070001','652801','库尔勒市','',0,3225);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100070002','652822','轮台县','',0,3226);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100070003','652823','尉犁县','',0,3227);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100070004','652824','若羌县','',0,3228);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100070005','652825','且末县','',0,3229);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100070006','652826','焉耆回族自治县','',0,3230);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100070007','652827','和静县','',0,3231);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100070008','652828','和硕县','',0,3232);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100070009','652829','博湖县','',0,3233);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100310008','652900','阿克苏地区','',0,3234);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100080001','652901','阿克苏市','',0,3235);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100080002','652922','温宿县','',0,3236);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100080003','652923','库车县','',0,3237);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100080004','652924','沙雅县','',0,3238);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100080005','652925','新和县','',0,3239);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100080006','652926','拜城县','',0,3240);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100080007','652927','乌什县','',0,3241);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100080008','652928','阿瓦提县','',0,3242);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100080009','652929','柯坪县','',0,3243);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100310009','653000','克孜勒苏柯尔克孜自治州','',0,3244);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100090001','653001','阿图什市','',0,3245);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100090002','653022','阿克陶县','',0,3246);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100090003','653023','阿合奇县','',0,3247);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100090004','653024','乌恰县','',0,3248);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100310010','653100','喀什地区','',0,3249);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100100001','653101','喀什市','',0,3250);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100100002','653121','疏附县','',0,3251);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100100003','653122','疏勒县','',0,3252);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100100004','653123','英吉沙县','',0,3253);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100100005','653124','泽普县','',0,3254);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100100006','653125','莎车县','',0,3255);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100100007','653126','叶城县','',0,3256);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100100008','653127','麦盖提县','',0,3257);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100100009','653128','岳普湖县','',0,3258);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100100010','653129','伽师县','',0,3259);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100100011','653130','巴楚县','',0,3260);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100100012','653131','塔什库尔干塔吉克自治县','',0,3261);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100310011','653200','和田地区','',0,3262);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100110001','653201','和田市','',0,3263);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100110002','653221','和田县','',0,3264);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100110003','653222','墨玉县','',0,3265);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100110004','653223','皮山县','',0,3266);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100110005','653224','洛浦县','',0,3267);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100110006','653225','策勒县','',0,3268);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100110007','653226','于田县','',0,3269);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100110008','653227','民丰县','',0,3270);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100310012','654000','伊犁哈萨克自治州','',0,3271);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100120001','654002','伊宁市','',0,3272);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100120002','654003','奎屯市','',0,3273);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100120003','654021','伊宁县','',0,3274);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100120004','654022','察布查尔锡伯自治县','',0,3275);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100120005','654023','霍城县','',0,3276);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100120006','654024','巩留县','',0,3277);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100120007','654025','新源县','',0,3278);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100120008','654026','昭苏县','',0,3279);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100120009','654027','特克斯县','',0,3280);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100120010','654028','尼勒克县','',0,3281);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100310013','654200','塔城地区','',0,3282);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100130001','654201','塔城市','',0,3283);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100130002','654202','乌苏市','',0,3284);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100130003','654221','额敏县','',0,3285);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100130004','654223','沙湾县','',0,3286);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100130005','654224','托里县','',0,3287);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100130006','654225','裕民县','',0,3288);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100130007','654226','和布克赛尔蒙古自治县','',0,3289);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100310014','654300','阿勒泰地区','',0,3290);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100140001','654301','阿勒泰市','',0,3291);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100140002','654321','布尔津县','',0,3292);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100140003','654322','富蕴县','',0,3293);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100140004','654323','福海县','',0,3294);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100140005','654324','哈巴河县','',0,3295);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100140006','654325','青河县','',0,3296);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003100140007','654326','吉木乃县','',0,3297);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100310015','659001','石河子市','',0,3298);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100310016','659002','阿拉尔市','',0,3299);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100310017','659003','图木舒克市','',0,3300);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100310018','659004','五家渠市','',0,3301);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('00010032','710000','台湾省','',0,3302);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100320001','710100','台北市','',0,3303);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200010001','710101','中正区','',0,3304);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200010002','710102','大同区','',0,3305);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200010003','710103','中山区','',0,3306);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200010004','710104','松山区','',0,3307);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200010005','710105','大安区','',0,3308);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200010006','710106','万华区','',0,3309);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200010007','710107','信义区','',0,3310);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200010008','710108','士林区','',0,3311);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200010009','710109','北投区','',0,3312);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200010010','710110','内湖区','',0,3313);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200010011','710111','南港区','',0,3314);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200010012','710112','文山区','',0,3315);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100320002','710200','高雄市','',0,3316);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200020001','710201','新兴区','',0,3317);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200020002','710202','前金区','',0,3318);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200020003','710203','芩雅区','',0,3319);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200020004','710204','盐埕区','',0,3320);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200020005','710205','鼓山区','',0,3321);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200020006','710206','旗津区','',0,3322);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200020007','710207','前镇区','',0,3323);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200020008','710208','三民区','',0,3324);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200020009','710209','左营区','',0,3325);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200020010','710210','楠梓区','',0,3326);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200020011','710211','小港区','',0,3327);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100320003','710300','台南市','',0,3328);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200030001','710301','中西区','',0,3329);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200030002','710302','东区','',0,3330);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200030003','710303','南区','',0,3331);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200030004','710304','北区','',0,3332);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200030005','710305','安平区','',0,3333);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200030006','710306','安南区','',0,3334);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100320004','710400','台中市','',0,3335);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200040001','710401','中区','',0,3336);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200040002','710402','东区','',0,3337);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200040003','710403','南区','',0,3338);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200040004','710404','西区','',0,3339);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200040005','710405','北区','',0,3340);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200040006','710406','北屯区','',0,3341);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200040007','710407','西屯区','',0,3342);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200040008','710408','南屯区','',0,3343);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100320005','710500','金门县','',0,3344);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100320006','710600','南投县','',0,3345);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100320007','710700','基隆市','',0,3346);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200070001','710701','仁爱区','',0,3347);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200070002','710702','信义区','',0,3348);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200070003','710703','中正区','',0,3349);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200070004','710704','中山区','',0,3350);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200070005','710705','安乐区','',0,3351);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200070006','710706','暖暖区','',0,3352);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200070007','710707','七堵区','',0,3353);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100320008','710800','新竹市','',0,3354);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200080001','710801','东区','',0,3355);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200080002','710802','北区','',0,3356);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200080003','710803','香山区','',0,3357);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100320009','710900','嘉义市','',0,3358);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200090001','710901','东区','',0,3359);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003200090002','710902','西区','',0,3360);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100320010','711100','新北市','',0,3361);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100320011','711200','宜兰县','',0,3362);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100320012','711300','新竹县','',0,3363);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100320013','711400','桃园县','',0,3364);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100320014','711500','苗栗县','',0,3365);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100320015','711700','彰化县','',0,3366);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100320016','711900','嘉义县','',0,3367);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100320017','712100','云林县','',0,3368);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100320018','712400','屏东县','',0,3369);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100320019','712500','台东县','',0,3370);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100320020','712600','花莲县','',0,3371);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100320021','712700','澎湖县','',0,3372);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('00010033','810000','香港特别行政区','',0,3373);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100330001','810100','香港岛','',0,3374);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003300010001','810101','中西区','',0,3375);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003300010002','810102','湾仔','',0,3376);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003300010003','810103','东区','',0,3377);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003300010004','810104','南区','',0,3378);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100330002','810200','九龙','',0,3379);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003300020001','810201','九龙城区','',0,3380);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003300020002','810202','油尖旺区','',0,3381);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003300020003','810203','深水埗区','',0,3382);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003300020004','810204','黄大仙区','',0,3383);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003300020005','810205','观塘区','',0,3384);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100330003','810300','新界','',0,3385);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003300030001','810301','北区','',0,3386);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003300030002','810302','大埔区','',0,3387);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003300030003','810303','沙田区','',0,3388);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003300030004','810304','西贡区','',0,3389);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003300030005','810305','元朗区','',0,3390);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003300030006','810306','屯门区','',0,3391);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003300030007','810307','荃湾区','',0,3392);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003300030008','810308','葵青区','',0,3393);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('0001003300030009','810309','离岛区','',0,3394);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('00010034','820000','澳门特别行政区','',0,3395);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100340001','820100','澳门半岛','',0,3396);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100340002','820200','离岛','',0,3397);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('00010035','990000','海外','',0,3398);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350001','2','Afghanistan/阿富汗','',0,3399);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350002','3','Aland Islands/奥兰群岛','',0,3400);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350003','4','Alaska(U.S.A)/阿拉斯加','',0,3401);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350004','5','Albania/阿尔巴尼亚','',0,3402);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350005','6','Algeria/阿尔及利亚','',0,3403);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350006','7','American Samoa/东萨摩亚(美)','',0,3404);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350007','8','Andorra/安道尔','',0,3405);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350008','9','Angola/安哥拉','',0,3406);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350009','10','Anguilla/安圭拉岛(英)','',0,3407);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350010','11','Antarctica/南极','',0,3408);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350011','12','Antigua and Barbuda/安提瓜和巴布达','',0,3409);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350012','13','Argentina/阿根廷','',0,3410);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350013','14','Armenia/亚美尼亚','',0,3411);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350014','15','Aruba/阿鲁巴岛','',0,3412);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350015','16','Australia/澳大利亚','',0,3413);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350016','17','Austria/奥地利','',0,3414);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350017','18','Azerbaijan/阿塞拜疆','',0,3415);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350018','19','Bahrain/巴林','',0,3416);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350019','20','Bailiwick of Guernsey/根西岛(英)','',0,3417);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350020','21','Bangladesh/孟加拉国','',0,3418);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350021','22','Barbados/巴巴多斯','',0,3419);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350022','23','Belarus/白俄罗斯','',0,3420);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350023','24','Belgium/比利时','',0,3421);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350024','25','Belize/伯利兹','',0,3422);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350025','26','Benin/贝宁','',0,3423);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350026','27','Bermuda/百慕大群岛(英)','',0,3424);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350027','28','Bhutan/不丹','',0,3425);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350028','29','Bolivia/玻利维亚','',0,3426);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350029','30','Bosnia and Herzegovina/波斯尼亚和黑塞哥维那','',0,3427);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350030','31','Botswana/博茨瓦纳','',0,3428);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350031','32','Brazil/巴西','',0,3429);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350032','33','Bulgaria/保加利亚','',0,3430);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350033','34','Burkinafaso/布基纳法索','',0,3431);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350034','35','Burundi/布隆迪','',0,3432);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350035','36','Cameroon/喀麦隆','',0,3433);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350036','37','Canada/加拿大','',0,3434);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350037','38','Canaries Island/加那利群岛','',0,3435);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350038','39','Cape Verde/佛得角','',0,3436);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350039','40','Cayman Islands/开曼群岛(英)','',0,3437);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350040','41','Central African Republic/中非','',0,3438);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350041','42','Chad/乍得','',0,3439);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350042','43','Chile/智利','',0,3440);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350043','44','Christmas Island/圣诞岛','',0,3441);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350044','45','Cocos (Keeling) Islands/科科斯岛','',0,3442);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350045','46','Colombia/哥伦比亚','',0,3443);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350046','47','Comoros/科摩罗','',0,3444);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350047','48','Congo/刚果','',0,3445);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350048','49','Cook Island/科克群岛(新)','',0,3446);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350049','50','Costa Rica/哥斯达黎加','',0,3447);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350050','51','Croatia/克罗地亚','',0,3448);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350051','52','Cuba/古巴','',0,3449);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350052','53','Cyprus/塞浦路斯','',0,3450);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350053','54','Czech/捷克','',0,3451);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350054','55','Democratic Republic of the Congo/刚果(金)','',0,3452);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350055','56','Denmark/丹麦','',0,3453);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350056','57','Diego Garcia/迪戈加西亚岛','',0,3454);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350057','58','Djibouti/吉布提','',0,3455);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350058','59','Dominica/多米尼克国','',0,3456);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350059','60','Dominican Republic/多米尼加共和国','',0,3457);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350060','61','Ecuador/厄瓜多尔','',0,3458);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350061','62','Egypt/埃及','',0,3459);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350062','63','El Salvador/萨尔瓦多','',0,3460);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350063','64','Equatorial Guinea/赤道几内亚','',0,3461);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350064','65','Eritrea/厄立特里亚','',0,3462);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350065','66','Estonia/爱沙尼亚','',0,3463);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350066','67','Ethiopia/埃塞俄比亚','',0,3464);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350067','68','Falkland Islands (Malvinas)/福克兰群岛','',0,3465);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350068','69','Faroe Islands/法罗群岛(丹)','',0,3466);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350069','70','Fiji/斐济','',0,3467);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350070','71','Finland/芬兰','',0,3468);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350071','72','France/法国','',0,3469);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350072','73','French Polynesia/法属波里尼西亚','',0,3470);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350073','74','Gabon/加蓬','',0,3471);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350074','75','Gambia/冈比亚','',0,3472);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350075','76','Georgia/格鲁吉亚','',0,3473);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350076','77','Germany/德国','',0,3474);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350077','78','Ghana/加纳','',0,3475);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350078','79','Gibraltar/直布罗陀(英)','',0,3476);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350079','80','Greece/希腊','',0,3477);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350080','81','Greenland/格陵兰岛','',0,3478);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350081','82','Grenada/格林纳达','',0,3479);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350082','83','Guadeloupe/瓜德罗普岛(法)','',0,3480);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350083','84','Guam/关岛(美)','',0,3481);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350084','85','Guatemala/危地马拉','',0,3482);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350085','86','Guinea/几内亚','',0,3483);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350086','87','Guinea-bissau/几内亚比绍','',0,3484);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350087','88','Guyana/法属圭亚那','',0,3485);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350088','89','Guyana/圭亚那','',0,3486);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350089','90','Haiti/海地','',0,3487);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350090','91','Honduras/洪都拉斯','',0,3488);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350091','92','HunGary/匈牙利','',0,3489);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350092','93','Iceland/冰岛','',0,3490);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350093','94','India/印度','',0,3491);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350094','95','Indonesia/印度尼西亚','',0,3492);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350095','96','Iran/伊郎','',0,3493);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350096','97','Iraq/伊拉克','',0,3494);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350097','98','Ireland/爱尔兰','',0,3495);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350098','99','Isle of Man/马恩岛(英)','',0,3496);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350099','100','Israel/以色列','',0,3497);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350100','101','Italy/意大利','',0,3498);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350101','102','Ivory Coast/科特迪瓦','',0,3499);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350102','103','Jamaica/牙买加','',0,3500);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350103','104','Japan/日本','',0,3501);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350104','105','Jersey/泽西岛(英)','',0,3502);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350105','106','Jordan/约旦','',0,3503);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350106','107','Kampuchea/柬埔塞','',0,3504);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350107','108','Kazakhstan/哈萨克斯坦','',0,3505);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350108','109','Kenya/肯尼亚','',0,3506);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350109','110','Kiribati/基里巴斯','',0,3507);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350110','111','Kuwait/科威特','',0,3508);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350111','112','Kyrgyzstan/吉尔吉斯斯坦','',0,3509);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350112','113','Laos/老挝','',0,3510);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350113','114','Latvia/拉脱维亚','',0,3511);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350114','115','Lebanon/黎巴嫩','',0,3512);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350115','116','Lesotho/莱索托','',0,3513);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350116','117','Liberia/利比里亚','',0,3514);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350117','118','Libya/利比亚','',0,3515);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350118','119','Liechtenstein/列支敦士登','',0,3516);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350119','120','Lithuania/立陶宛','',0,3517);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350120','121','Luxembourg/卢森堡','',0,3518);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350121','122','Macedonia/马其顿','',0,3519);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350122','123','Madagascar/马达加斯加','',0,3520);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350123','124','Malawi/马拉维','',0,3521);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350124','125','Malaysia/马来西亚','',0,3522);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350125','126','Maldives/马尔代夫','',0,3523);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350126','127','Mali/马里','',0,3524);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350127','128','Malta/马耳他','',0,3525);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350128','129','Marshall Island/马绍尔群岛','',0,3526);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350129','130','Martinique/马提尼克(法)','',0,3527);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350130','131','Mauritania/毛里塔尼亚','',0,3528);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350131','132','Mauritius/毛里求斯','',0,3529);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350132','133','Mayotte/马约特岛','',0,3530);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350133','134','Mexico/墨西哥','',0,3531);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350134','135','Micronesia/密克罗尼西亚(美)','',0,3532);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350135','136','Midway Island/中途岛(美)','',0,3533);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350136','137','Monaco/摩纳哥','',0,3534);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350137','138','Mongolia/蒙古','',0,3535);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350138','139','Montenegro/黑山','',0,3536);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350139','140','Montserrat/蒙特塞拉特岛(英)','',0,3537);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350140','141','Morocco/摩洛哥','',0,3538);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350141','142','Mozambique/莫桑比克','',0,3539);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350142','143','Myanmar/缅甸','',0,3540);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350143','144','Namibia/纳米比亚','',0,3541);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350144','145','Nauru/瑙鲁','',0,3542);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350145','146','Nepal/尼泊尔','',0,3543);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350146','147','Netherlands/荷兰','',0,3544);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350147','148','Netherlands Antilles/荷属安的列斯群岛','',0,3545);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350148','149','New Caledonia/新喀里多尼亚群岛(法)','',0,3546);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350149','150','New Zealand/新西兰','',0,3547);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350150','151','Nicaragua/尼加拉瓜','',0,3548);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350151','152','Niger/尼日尔','',0,3549);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350152','153','Nigeria/尼日利亚','',0,3550);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350153','154','Niue/纽埃岛(新)','',0,3551);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350154','155','Norfolk Island/诺福克岛(澳)','',0,3552);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350155','156','North Korea/朝鲜','',0,3553);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350156','157','Northern Mariana Islands/马里亚纳群岛','',0,3554);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350157','158','Norway/挪威','',0,3555);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350158','159','Oman/阿曼','',0,3556);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350159','160','Pakistan/巴基斯坦','',0,3557);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350160','161','Palau/帕劳(美)','',0,3558);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350161','162','Panama/巴拿马','',0,3559);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350162','163','Papua New Guinea/巴布亚新几内亚','',0,3560);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350163','164','Paraguay/巴拉圭','',0,3561);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350164','165','Peru/秘鲁','',0,3562);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350165','166','Philippines/菲律宾','',0,3563);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350166','167','Poland/波兰','',0,3564);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350167','168','Portugal/葡萄牙','',0,3565);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350168','169','Puerto Rico/波多黎各(美)','',0,3566);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350169','170','Qatar/卡塔尔','',0,3567);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350170','171','Republic of Moldova/摩尔多瓦','',0,3568);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350171','172','Reunion/留尼汪岛','',0,3569);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350172','173','Romania/罗马尼亚','',0,3570);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350173','174','Russian Federation/俄罗斯','',0,3571);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350174','175','Rwanda/卢旺达','',0,3572);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350175','176','Saint Helena, Ascension and Tristan da Cunha/阿森松(英)','',0,3573);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350176','177','Saint Helena, Ascension and Tristan da Cunha/圣赫勒拿','',0,3574);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350177','178','Saint Kitts and Nevis/圣克里斯托弗和尼维斯','',0,3575);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350178','179','Saint Lucia/圣卢西亚','',0,3576);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350179','180','Saint Pierre and Miquelon/圣皮埃尔岛及密克隆岛','',0,3577);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350180','181','Saint Vincent and the Grenadines/圣文森特岛(英)','',0,3578);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350181','182','Samoa/西萨摩亚','',0,3579);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350182','183','San Marino/圣马力诺','',0,3580);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350183','184','Sao Tome and Principe/圣多美和普林西比','',0,3581);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350184','185','Saudi Arabia/沙特阿拉伯','',0,3582);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350185','186','Senegal/塞内加尔','',0,3583);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350186','187','Serbia/塞尔维亚','',0,3584);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350187','188','Seychelles/塞舌尔','',0,3585);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350188','189','Sierra Leone/塞拉利昂','',0,3586);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350189','190','Singapore/新加坡','',0,3587);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350190','191','Sint Maarten/圣马丁(荷)','',0,3588);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350191','192','Slovakia/斯洛伐克','',0,3589);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350192','193','Slovenia/斯洛文尼亚','',0,3590);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350193','194','Solomon Islands/所罗门群岛','',0,3591);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350194','195','Somalia/索马里','',0,3592);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350195','196','South Africa/南非','',0,3593);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350196','197','South Georgia and The South Sandwich Islands/南乔治亚与南桑威奇群岛','',0,3594);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350197','198','South korea/韩国','',0,3595);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350198','199','Spain/西班牙','',0,3596);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350199','200','Sri Lanka/斯里兰卡','',0,3597);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350200','201','Sudan/苏丹','',0,3598);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350201','202','Suriname/苏里南','',0,3599);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350202','203','Svalbard and Jan Mayen/斯瓦尔巴群岛(挪)','',0,3600);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350203','204','Swaziland/斯威士兰','',0,3601);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350204','205','Sweden/瑞典','',0,3602);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350205','206','Switzerland/瑞士','',0,3603);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350206','207','Syria/叙利亚','',0,3604);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350207','208','Tajikistan/塔吉克斯坦','',0,3605);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350208','209','Thailand/泰国','',0,3606);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350209','210','The Commonwealth of The Bahamas/巴哈马国','',0,3607);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350210','211','The Vatican City State/梵蒂冈','',0,3608);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350211','212','Timor-leste/东帝汶','',0,3609);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350212','213','Togo/多哥','',0,3610);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350213','214','Tokelau/托克劳群岛(新)','',0,3611);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350214','215','Tonga/汤加','',0,3612);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350215','216','Trinidad and Tobago/特立尼达和多巴哥','',0,3613);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350216','217','Tunisia/突尼斯','',0,3614);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350217','218','Turkey/土耳其','',0,3615);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350218','219','Turkmenistan/土库曼斯坦','',0,3616);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350219','220','Turks and Caicos Islands/特克斯和凯科斯群岛(英)','',0,3617);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350220','221','Tuvalu/图瓦卢','',0,3618);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350221','222','Uganda/乌干达','',0,3619);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350222','223','Ukraine/乌克兰','',0,3620);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350223','224','United Arab Emirates/阿拉伯联合酋长国','',0,3621);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350224','225','United Kingdom/英国','',0,3622);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350225','226','United Republic of Tanzania/坦桑尼亚','',0,3623);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350226','227','United States Minor Outlying Islands/美国本土外小岛屿','',0,3624);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350227','228','United States of America/美国','',0,3625);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350228','229','Uruguay/乌拉圭','',0,3626);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350229','230','Uzbekistan/乌兹别克斯坦','',0,3627);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350230','231','Vanuatu/瓦努阿图','',0,3628);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350231','232','Venezuela/委内瑞拉','',0,3629);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350232','233','Vietnam/越南','',0,3630);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350233','234','Virgin Islands, British/维尔京群岛(英)','',0,3631);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350234','235','Virgin Islands, U.S./维尔京群岛(美)','',0,3632);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350235','236','Wallis And Futuna/瓦里斯和富士那群岛(法)','',0,3633);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350236','237','Western sahara/西撒哈拉','',0,3634);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350237','238','Yemen/也门','',0,3635);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350238','239','Yugoslavia/南斯拉夫','',0,3636);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350239','240','Zambia/赞比亚','',0,3637);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350240','241','Zanzibar/桑给巴尔','',0,3638);
insert  into `sys_dict`(`id`,`dkey`,`dval`,`txt`,`status`,`location`) values ('000100350241','242','Zimbabwe/津巴布韦','',0,3639);

/*Table structure for table `sys_resource` */

DROP TABLE IF EXISTS `sys_resource`;

CREATE TABLE `sys_resource` (
  `id` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `state` tinyint(4) DEFAULT NULL,
  `subtype` int(32) DEFAULT NULL,
  `location` int(32) DEFAULT NULL,
  `descript` varchar(255) DEFAULT NULL,
  `button` varchar(1000) DEFAULT NULL,
  `style` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_resource` */

insert  into `sys_resource`(`id`,`name`,`url`,`state`,`subtype`,`location`,`descript`,`button`,`style`) values ('0001','系统管理','',0,0,0,NULL,NULL,NULL);
insert  into `sys_resource`(`id`,`name`,`url`,`state`,`subtype`,`location`,`descript`,`button`,`style`) values ('00010001','系统管理','',0,0,16,NULL,NULL,NULL);
insert  into `sys_resource`(`id`,`name`,`url`,`state`,`subtype`,`location`,`descript`,`button`,`style`) values ('000100010001','机构管理','/private/sys/unit',0,0,17,NULL,'增加/BtnAdd;删除/BtnDel;修改/BtnUpdate;排序/BtnSort;',NULL);
insert  into `sys_resource`(`id`,`name`,`url`,`state`,`subtype`,`location`,`descript`,`button`,`style`) values ('000100010002','用户管理','/private/sys/user',0,0,18,NULL,'增加/BtnAdd;修改/BtnUpdate;删除/BtnDel;禁用/BtnLocked;启用/BtnUnlocked;',NULL);
insert  into `sys_resource`(`id`,`name`,`url`,`state`,`subtype`,`location`,`descript`,`button`,`style`) values ('000100010003','角色管理','/private/sys/role',0,0,19,NULL,'增加/BtnAdd;删除/BtnDel;修改/BtnUpdate;添加用户到角色/BtnAddRole;从角色中删除用户/BtnDelRole;分配权限/BtnMenu;',NULL);
insert  into `sys_resource`(`id`,`name`,`url`,`state`,`subtype`,`location`,`descript`,`button`,`style`) values ('000100010004','资源管理','/private/sys/res',0,0,20,NULL,'增加/BtnAdd;删除/BtnDel;修改/BtnUpdate;排序/BtnSort;',NULL);
insert  into `sys_resource`(`id`,`name`,`url`,`state`,`subtype`,`location`,`descript`,`button`,`style`) values ('000100010005','参数配置','/private/sys/config',0,0,21,NULL,'新建/BtnAdd;编辑/BtnUpdate;删除/BtnDel;',NULL);
insert  into `sys_resource`(`id`,`name`,`url`,`state`,`subtype`,`location`,`descript`,`button`,`style`) values ('000100010006','数字字典','/private/sys/dict',0,0,22,NULL,'增加/BtnAdd;修改/BtnUpdate;删除/BtnDel;排序/BtnPaixu;',NULL);
insert  into `sys_resource`(`id`,`name`,`url`,`state`,`subtype`,`location`,`descript`,`button`,`style`) values ('000100010007','定时任务','/private/sys/task',0,0,23,NULL,'新建/BtnAdd;编辑/BtnUpdate;删除/BtnDel;',NULL);
insert  into `sys_resource`(`id`,`name`,`url`,`state`,`subtype`,`location`,`descript`,`button`,`style`) values ('000100010008','访问控制','/private/sys/safe',0,0,24,NULL,'',NULL);
insert  into `sys_resource`(`id`,`name`,`url`,`state`,`subtype`,`location`,`descript`,`button`,`style`) values ('000100010009','登陆日志','/private/sys/user/log',0,0,25,NULL,'',NULL);
insert  into `sys_resource`(`id`,`name`,`url`,`state`,`subtype`,`location`,`descript`,`button`,`style`) values ('00010002','工作流','',0,0,1,' ','',NULL);
insert  into `sys_resource`(`id`,`name`,`url`,`state`,`subtype`,`location`,`descript`,`button`,`style`) values ('000100020001','流程管理','',0,0,2,' ','',NULL);
insert  into `sys_resource`(`id`,`name`,`url`,`state`,`subtype`,`location`,`descript`,`button`,`style`) values ('0001000200010001','流程定义','/private/wf/model',0,0,3,' ','',NULL);
insert  into `sys_resource`(`id`,`name`,`url`,`state`,`subtype`,`location`,`descript`,`button`,`style`) values ('0001000200010002','流程实例','/private/wf/flow',0,0,5,' ','',NULL);
insert  into `sys_resource`(`id`,`name`,`url`,`state`,`subtype`,`location`,`descript`,`button`,`style`) values ('0001000200010003','流程任务','/private/wf/task',0,0,6,' ','',NULL);
insert  into `sys_resource`(`id`,`name`,`url`,`state`,`subtype`,`location`,`descript`,`button`,`style`) values ('0001000200010004','流程部署','/private/wf/deploy',0,0,4,' ','',NULL);
insert  into `sys_resource`(`id`,`name`,`url`,`state`,`subtype`,`location`,`descript`,`button`,`style`) values ('000100020003','历史','',0,0,7,' ','',NULL);
insert  into `sys_resource`(`id`,`name`,`url`,`state`,`subtype`,`location`,`descript`,`button`,`style`) values ('0001000200030001','历史实例','/private/wf/history/flow',0,0,8,' ','',NULL);
insert  into `sys_resource`(`id`,`name`,`url`,`state`,`subtype`,`location`,`descript`,`button`,`style`) values ('0001000200030002','历史节点','/private/wf/history/node',0,0,9,' ','',NULL);
insert  into `sys_resource`(`id`,`name`,`url`,`state`,`subtype`,`location`,`descript`,`button`,`style`) values ('0001000200030003','历史任务','/private/wf/history/task',0,0,10,' ','',NULL);
insert  into `sys_resource`(`id`,`name`,`url`,`state`,`subtype`,`location`,`descript`,`button`,`style`) values ('00010003','我的流程','',0,0,11,' ','',NULL);
insert  into `sys_resource`(`id`,`name`,`url`,`state`,`subtype`,`location`,`descript`,`button`,`style`) values ('000100030001','我的申请','',0,0,12,' ','',NULL);
insert  into `sys_resource`(`id`,`name`,`url`,`state`,`subtype`,`location`,`descript`,`button`,`style`) values ('000100030002','待我审批','',0,0,13,' ','',NULL);
insert  into `sys_resource`(`id`,`name`,`url`,`state`,`subtype`,`location`,`descript`,`button`,`style`) values ('000100030003','经我审批','',0,0,14,' ','',NULL);
insert  into `sys_resource`(`id`,`name`,`url`,`state`,`subtype`,`location`,`descript`,`button`,`style`) values ('000100030004','待我阅读','',0,0,15,' ','',NULL);

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `unitid` varchar(50) DEFAULT NULL,
  `descript` varchar(50) DEFAULT NULL,
  `pid` int(32) DEFAULT NULL,
  `location` int(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `sys_role` */

insert  into `sys_role`(`id`,`name`,`unitid`,`descript`,`pid`,`location`) values (1,'公共角色',NULL,NULL,0,0);
insert  into `sys_role`(`id`,`name`,`unitid`,`descript`,`pid`,`location`) values (2,'系统管理',NULL,NULL,0,0);
insert  into `sys_role`(`id`,`name`,`unitid`,`descript`,`pid`,`location`) values (3,'工作流','','',0,0);

/*Table structure for table `sys_role_resource` */

DROP TABLE IF EXISTS `sys_role_resource`;

CREATE TABLE `sys_role_resource` (
  `roleid` int(32) DEFAULT NULL,
  `resourceid` varchar(100) DEFAULT NULL,
  `button` varchar(1000) DEFAULT NULL,
  UNIQUE KEY `INDEX_ROLERESOURCE` (`roleid`,`resourceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_role_resource` */

insert  into `sys_role_resource`(`roleid`,`resourceid`,`button`) values (2,'0001','');
insert  into `sys_role_resource`(`roleid`,`resourceid`,`button`) values (2,'00010002','');
insert  into `sys_role_resource`(`roleid`,`resourceid`,`button`) values (2,'000100020001','');
insert  into `sys_role_resource`(`roleid`,`resourceid`,`button`) values (2,'0001000200010001','');
insert  into `sys_role_resource`(`roleid`,`resourceid`,`button`) values (2,'0001000200010004','');
insert  into `sys_role_resource`(`roleid`,`resourceid`,`button`) values (2,'0001000200010002','');
insert  into `sys_role_resource`(`roleid`,`resourceid`,`button`) values (2,'0001000200010003','');
insert  into `sys_role_resource`(`roleid`,`resourceid`,`button`) values (2,'000100020003','');
insert  into `sys_role_resource`(`roleid`,`resourceid`,`button`) values (2,'0001000200030001','');
insert  into `sys_role_resource`(`roleid`,`resourceid`,`button`) values (2,'0001000200030002','');
insert  into `sys_role_resource`(`roleid`,`resourceid`,`button`) values (2,'0001000200030003','');
insert  into `sys_role_resource`(`roleid`,`resourceid`,`button`) values (2,'00010001','');
insert  into `sys_role_resource`(`roleid`,`resourceid`,`button`) values (2,'000100010001','BtnAdd,BtnDel,BtnUpdate,BtnSort,');
insert  into `sys_role_resource`(`roleid`,`resourceid`,`button`) values (2,'000100010002','BtnAdd,BtnUpdate,BtnDel,BtnLocked,BtnUnlocked,');
insert  into `sys_role_resource`(`roleid`,`resourceid`,`button`) values (2,'000100010003','BtnAdd,BtnDel,BtnUpdate,BtnAddRole,BtnDelRole,BtnMenu,');
insert  into `sys_role_resource`(`roleid`,`resourceid`,`button`) values (2,'000100010004','BtnAdd,BtnDel,BtnUpdate,BtnSort,');
insert  into `sys_role_resource`(`roleid`,`resourceid`,`button`) values (2,'000100010005','BtnAdd,BtnUpdate,BtnDel,');
insert  into `sys_role_resource`(`roleid`,`resourceid`,`button`) values (2,'000100010006','BtnAdd,BtnUpdate,BtnDel,BtnPaixu,');
insert  into `sys_role_resource`(`roleid`,`resourceid`,`button`) values (2,'000100010007','BtnAdd,BtnUpdate,BtnDel,');
insert  into `sys_role_resource`(`roleid`,`resourceid`,`button`) values (2,'000100010008','');
insert  into `sys_role_resource`(`roleid`,`resourceid`,`button`) values (2,'000100010009','');

/*Table structure for table `sys_safeconfig` */

DROP TABLE IF EXISTS `sys_safeconfig`;

CREATE TABLE `sys_safeconfig` (
  `id` int(32) NOT NULL DEFAULT '0',
  `type` int(32) DEFAULT NULL,
  `state` int(32) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_safeconfig` */

insert  into `sys_safeconfig`(`id`,`type`,`state`,`note`) values (1,1,1,'10.10.10.1');
insert  into `sys_safeconfig`(`id`,`type`,`state`,`note`) values (2,0,0,'10.10.10.2');

/*Table structure for table `sys_task` */

DROP TABLE IF EXISTS `sys_task`;

CREATE TABLE `sys_task` (
  `task_id` int(32) NOT NULL AUTO_INCREMENT,
  `task_code` varchar(100) DEFAULT NULL,
  `task_type` int(32) DEFAULT NULL,
  `task_name` varchar(50) DEFAULT NULL,
  `job_class` varchar(100) DEFAULT NULL,
  `execycle` int(32) DEFAULT NULL,
  `day_of_month` int(32) DEFAULT NULL,
  `day_of_week` int(32) DEFAULT NULL,
  `hour` int(32) DEFAULT NULL,
  `minute` int(32) DEFAULT NULL,
  `interval_hour` int(32) DEFAULT NULL,
  `interval_minute` int(32) DEFAULT NULL,
  `task_interval_unit` int(32) DEFAULT NULL,
  `cron_expression` varchar(20) DEFAULT NULL,
  `is_enable` int(32) DEFAULT NULL,
  `task_remark` varchar(255) DEFAULT NULL,
  `user_id` bigint(64) DEFAULT NULL,
  `create_time` varchar(50) DEFAULT NULL,
  `param_value` varchar(100) DEFAULT NULL,
  `task_interval` int(32) DEFAULT NULL,
  `task_threadnum` int(32) DEFAULT NULL,
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_task` */

/*Table structure for table `sys_unit` */

DROP TABLE IF EXISTS `sys_unit`;

CREATE TABLE `sys_unit` (
  `id` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(100) DEFAULT NULL,
  `unitcode` varchar(20) DEFAULT NULL,
  `descript` varchar(255) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `location` int(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_unit` */

insert  into `sys_unit`(`id`,`name`,`unitcode`,`descript`,`address`,`telephone`,`email`,`website`,`location`) values ('0001','系统管理',NULL,NULL,NULL,NULL,NULL,NULL,0);

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(120) DEFAULT NULL,
  `realname` varchar(100) DEFAULT NULL,
  `unitid` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `salt` varchar(50) DEFAULT NULL,
  `state` tinyint(4) DEFAULT NULL,
  `descript` varchar(255) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `location` int(32) DEFAULT NULL,
  `style` varchar(20) DEFAULT NULL,
  `logintype` int(32) DEFAULT NULL,
  `logintime` varchar(20) DEFAULT NULL,
  `loginip` varchar(50) DEFAULT NULL,
  `logincount` int(32) DEFAULT NULL,
  `loginresid` varchar(100) DEFAULT NULL,
  `linkqq` varchar(20) DEFAULT NULL,
  `linkweb` varchar(100) DEFAULT NULL,
  `linkcity` varchar(100) DEFAULT NULL,
  `money` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `INDEX_LONGINNAME` (`loginname`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `sys_user` */

insert  into `sys_user`(`id`,`loginname`,`realname`,`unitid`,`password`,`salt`,`state`,`descript`,`position`,`address`,`telephone`,`mobile`,`email`,`location`,`style`,`logintype`,`logintime`,`loginip`,`logincount`,`loginresid`,`linkqq`,`linkweb`,`linkcity`,`money`) values (1,'superadmin','超级管理员','0001','vjKKjPauF/aa7ZrQv8wRUc8uTvXjnLwL7ehQrSCbYjw=','y2PcU2V8negTxhAziZs9+Q==',0,NULL,NULL,NULL,NULL,NULL,'wizzer@qq.com',0,NULL,0,'2015-06-08 16:18:40','127.0.0.1',399,NULL,NULL,NULL,NULL,0);
insert  into `sys_user`(`id`,`loginname`,`realname`,`unitid`,`password`,`salt`,`state`,`descript`,`position`,`address`,`telephone`,`mobile`,`email`,`location`,`style`,`logintype`,`logintime`,`loginip`,`logincount`,`loginresid`,`linkqq`,`linkweb`,`linkcity`,`money`) values (2,'test1','test1','0001','eWLyBHQQCgBdh4YSd6gCt1Ya8kzfflHSYHUFoJBqob0=','iC7DW2izYNazD25cTA+1tQ==',0,'',NULL,'','','','',0,NULL,0,'2015-04-13 09:52:05',NULL,0,NULL,'','',NULL,0);
insert  into `sys_user`(`id`,`loginname`,`realname`,`unitid`,`password`,`salt`,`state`,`descript`,`position`,`address`,`telephone`,`mobile`,`email`,`location`,`style`,`logintype`,`logintime`,`loginip`,`logincount`,`loginresid`,`linkqq`,`linkweb`,`linkcity`,`money`) values (3,'test2','test2','0001','HjLHN67r1UhZId/nHPXrpoIrsC5FVsL8EjnOXWrgveE=','DHG4R450mKDUc0ckfGXeRA==',0,'',NULL,'','','','',0,NULL,0,'2015-04-13 09:52:29',NULL,0,NULL,'','',NULL,0);
insert  into `sys_user`(`id`,`loginname`,`realname`,`unitid`,`password`,`salt`,`state`,`descript`,`position`,`address`,`telephone`,`mobile`,`email`,`location`,`style`,`logintype`,`logintime`,`loginip`,`logincount`,`loginresid`,`linkqq`,`linkweb`,`linkcity`,`money`) values (4,'test3','test3','0001','AyQx6LYSRek/v3rIqaymdvqZZoMp5aS59BShX860Qt8=','VXTgLOUSyeXPvZ1C8nyqOQ==',0,'',NULL,'','','','',0,NULL,0,'2015-04-28 15:14:17',NULL,0,NULL,'','',NULL,0);

/*Table structure for table `sys_user_log` */

DROP TABLE IF EXISTS `sys_user_log`;

CREATE TABLE `sys_user_log` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT,
  `userid` bigint(64) DEFAULT NULL,
  `type` int(32) DEFAULT NULL,
  `loginname` varchar(100) DEFAULT NULL,
  `realname` varchar(100) DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  `logintime` varchar(20) DEFAULT NULL,
  `loginip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=402 DEFAULT CHARSET=utf8;

/*Data for the table `sys_user_log` */

insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (1,1,0,'superadmin','超级管理员',NULL,'2015-04-02 14:06:31','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (2,1,0,'superadmin','超级管理员',NULL,'2015-04-02 15:49:20','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (3,1,0,'superadmin','超级管理员',NULL,'2015-04-02 16:42:36','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (4,1,0,'superadmin','超级管理员',NULL,'2015-04-09 13:38:34','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (5,1,0,'superadmin','超级管理员',NULL,'2015-04-09 13:41:46','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (6,1,0,'superadmin','超级管理员',NULL,'2015-04-09 13:48:28','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (7,1,0,'superadmin','超级管理员',NULL,'2015-04-09 13:57:54','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (8,1,0,'superadmin','超级管理员',NULL,'2015-04-09 14:00:51','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (9,1,0,'superadmin','超级管理员',NULL,'2015-04-09 14:06:42','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (10,1,0,'superadmin','超级管理员',NULL,'2015-04-09 14:08:56','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (11,1,0,'superadmin','超级管理员',NULL,'2015-04-09 14:11:26','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (12,1,0,'superadmin','超级管理员',NULL,'2015-04-09 14:14:22','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (13,1,0,'superadmin','超级管理员',NULL,'2015-04-09 14:17:27','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (14,1,0,'superadmin','超级管理员',NULL,'2015-04-09 14:20:22','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (15,1,0,'superadmin','超级管理员',NULL,'2015-04-09 14:21:40','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (16,1,0,'superadmin','超级管理员',NULL,'2015-04-09 14:22:44','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (17,1,0,'superadmin','超级管理员',NULL,'2015-04-09 15:28:25','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (18,1,0,'superadmin','超级管理员',NULL,'2015-04-09 15:34:08','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (19,1,0,'superadmin','超级管理员',NULL,'2015-04-09 15:39:42','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (20,1,0,'superadmin','超级管理员',NULL,'2015-04-09 15:41:58','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (21,1,0,'superadmin','超级管理员',NULL,'2015-04-09 15:45:29','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (22,1,0,'superadmin','超级管理员',NULL,'2015-04-09 15:53:46','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (23,1,0,'superadmin','超级管理员',NULL,'2015-04-09 15:55:13','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (24,1,0,'superadmin','超级管理员',NULL,'2015-04-09 16:00:25','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (25,1,0,'superadmin','超级管理员',NULL,'2015-04-09 16:02:08','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (26,1,0,'superadmin','超级管理员',NULL,'2015-04-09 16:08:41','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (27,1,0,'superadmin','超级管理员',NULL,'2015-04-09 16:22:17','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (28,1,0,'superadmin','超级管理员',NULL,'2015-04-09 16:38:31','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (29,1,0,'superadmin','超级管理员',NULL,'2015-04-09 16:40:05','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (30,1,0,'superadmin','超级管理员',NULL,'2015-04-09 16:46:57','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (31,1,0,'superadmin','超级管理员',NULL,'2015-04-09 16:48:44','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (32,1,0,'superadmin','超级管理员',NULL,'2015-04-09 17:01:59','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (33,1,0,'superadmin','超级管理员',NULL,'2015-04-09 17:25:00','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (34,1,0,'superadmin','超级管理员',NULL,'2015-04-09 17:39:05','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (35,1,0,'superadmin','超级管理员',NULL,'2015-04-09 17:47:39','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (36,1,0,'superadmin','超级管理员',NULL,'2015-04-10 09:10:48','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (37,1,0,'superadmin','超级管理员',NULL,'2015-04-10 09:14:59','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (38,1,0,'superadmin','超级管理员',NULL,'2015-04-10 09:31:11','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (39,1,0,'superadmin','超级管理员',NULL,'2015-04-10 09:46:06','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (40,1,0,'superadmin','超级管理员',NULL,'2015-04-10 09:50:50','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (41,1,0,'superadmin','超级管理员',NULL,'2015-04-10 09:58:21','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (42,1,0,'superadmin','超级管理员',NULL,'2015-04-10 10:06:32','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (43,1,0,'superadmin','超级管理员',NULL,'2015-04-10 13:24:34','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (44,1,0,'superadmin','超级管理员',NULL,'2015-04-10 15:37:03','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (45,1,0,'superadmin','超级管理员',NULL,'2015-04-10 17:03:50','192.168.60.159');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (46,1,0,'superadmin','超级管理员',NULL,'2015-04-13 09:15:30','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (47,1,0,'superadmin','超级管理员',NULL,'2015-04-13 11:08:20','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (48,1,0,'superadmin','超级管理员',NULL,'2015-04-13 11:26:30','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (49,1,0,'superadmin','超级管理员',NULL,'2015-04-13 13:14:46','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (50,1,0,'superadmin','超级管理员',NULL,'2015-04-15 09:25:05','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (51,1,0,'superadmin','超级管理员',NULL,'2015-04-15 10:02:54','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (52,1,0,'superadmin','超级管理员',NULL,'2015-04-15 10:07:14','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (53,1,0,'superadmin','超级管理员',NULL,'2015-04-15 15:04:21','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (54,1,0,'superadmin','超级管理员',NULL,'2015-04-15 15:11:09','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (55,1,0,'superadmin','超级管理员',NULL,'2015-04-15 15:14:05','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (56,1,0,'superadmin','超级管理员',NULL,'2015-04-15 15:18:36','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (57,1,0,'superadmin','超级管理员',NULL,'2015-04-15 15:19:35','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (58,1,0,'superadmin','超级管理员',NULL,'2015-04-15 15:35:06','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (59,1,0,'superadmin','超级管理员',NULL,'2015-04-15 15:41:08','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (60,1,0,'superadmin','超级管理员',NULL,'2015-04-15 16:08:49','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (61,1,0,'superadmin','超级管理员',NULL,'2015-04-15 16:12:50','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (62,1,0,'superadmin','超级管理员',NULL,'2015-04-15 16:37:31','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (63,1,0,'superadmin','超级管理员',NULL,'2015-04-15 17:00:23','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (64,1,0,'superadmin','超级管理员',NULL,'2015-04-15 17:57:25','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (65,1,0,'superadmin','超级管理员',NULL,'2015-04-16 09:07:32','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (66,1,0,'superadmin','超级管理员',NULL,'2015-04-16 10:41:18','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (67,1,0,'superadmin','超级管理员',NULL,'2015-04-16 10:49:30','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (68,1,0,'superadmin','超级管理员',NULL,'2015-04-16 14:16:20','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (69,1,0,'superadmin','超级管理员',NULL,'2015-04-17 09:46:20','192.168.60.159');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (70,1,0,'superadmin','超级管理员',NULL,'2015-04-17 15:16:32','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (71,1,0,'superadmin','超级管理员',NULL,'2015-04-17 16:25:02','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (72,1,0,'superadmin','超级管理员',NULL,'2015-04-17 17:09:23','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (73,1,0,'superadmin','超级管理员',NULL,'2015-04-17 17:16:56','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (74,1,0,'superadmin','超级管理员',NULL,'2015-04-20 09:19:09','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (75,1,0,'superadmin','超级管理员',NULL,'2015-04-20 09:45:37','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (76,1,0,'superadmin','超级管理员',NULL,'2015-04-20 10:08:37','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (77,1,0,'superadmin','超级管理员',NULL,'2015-04-20 14:04:52','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (78,1,0,'superadmin','超级管理员',NULL,'2015-04-20 14:12:17','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (79,1,0,'superadmin','超级管理员',NULL,'2015-04-20 14:52:04','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (80,1,0,'superadmin','超级管理员',NULL,'2015-04-20 16:01:51','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (81,1,0,'superadmin','超级管理员',NULL,'2015-04-20 16:15:24','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (82,1,0,'superadmin','超级管理员',NULL,'2015-04-20 16:19:56','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (83,1,0,'superadmin','超级管理员',NULL,'2015-04-20 16:46:34','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (84,1,0,'superadmin','超级管理员',NULL,'2015-04-20 17:06:43','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (85,1,0,'superadmin','超级管理员',NULL,'2015-04-20 17:23:56','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (86,1,0,'superadmin','超级管理员',NULL,'2015-04-20 17:31:57','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (87,1,0,'superadmin','超级管理员',NULL,'2015-04-20 17:43:09','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (88,1,0,'superadmin','超级管理员',NULL,'2015-04-20 17:45:13','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (89,1,0,'superadmin','超级管理员',NULL,'2015-04-20 17:55:37','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (90,1,0,'superadmin','超级管理员',NULL,'2015-04-20 17:58:42','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (91,1,0,'superadmin','超级管理员',NULL,'2015-04-20 18:00:01','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (92,1,0,'superadmin','超级管理员',NULL,'2015-04-21 09:14:41','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (93,1,0,'superadmin','超级管理员',NULL,'2015-04-21 09:41:36','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (94,1,0,'superadmin','超级管理员',NULL,'2015-04-21 09:42:28','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (95,1,0,'superadmin','超级管理员',NULL,'2015-04-21 10:10:46','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (96,1,0,'superadmin','超级管理员',NULL,'2015-04-21 10:14:14','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (97,1,0,'superadmin','超级管理员',NULL,'2015-04-21 10:29:14','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (98,1,0,'superadmin','超级管理员',NULL,'2015-04-21 11:22:54','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (99,1,0,'superadmin','超级管理员',NULL,'2015-04-21 11:23:48','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (100,1,0,'superadmin','超级管理员',NULL,'2015-04-21 11:29:24','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (101,1,0,'superadmin','超级管理员',NULL,'2015-04-21 11:48:41','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (102,1,0,'superadmin','超级管理员',NULL,'2015-04-21 11:58:33','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (103,1,0,'superadmin','超级管理员',NULL,'2015-04-21 12:00:31','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (104,1,0,'superadmin','超级管理员',NULL,'2015-04-21 13:14:21','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (105,1,0,'superadmin','超级管理员',NULL,'2015-04-21 13:52:12','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (106,1,0,'superadmin','超级管理员',NULL,'2015-04-21 14:02:58','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (107,1,0,'superadmin','超级管理员',NULL,'2015-04-21 14:08:02','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (108,1,0,'superadmin','超级管理员',NULL,'2015-04-21 14:23:08','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (109,1,0,'superadmin','超级管理员',NULL,'2015-04-21 14:37:05','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (110,1,0,'superadmin','超级管理员',NULL,'2015-04-21 14:58:09','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (111,1,0,'superadmin','超级管理员',NULL,'2015-04-21 14:59:19','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (112,1,0,'superadmin','超级管理员',NULL,'2015-04-21 15:01:28','192.168.60.158');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (113,1,0,'superadmin','超级管理员',NULL,'2015-04-21 15:28:03','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (114,1,0,'superadmin','超级管理员',NULL,'2015-04-21 15:36:04','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (115,1,0,'superadmin','超级管理员',NULL,'2015-04-21 15:42:02','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (116,1,0,'superadmin','超级管理员',NULL,'2015-04-21 15:47:33','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (117,1,0,'superadmin','超级管理员',NULL,'2015-04-21 16:02:31','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (118,1,0,'superadmin','超级管理员',NULL,'2015-04-21 16:24:22','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (119,1,0,'superadmin','超级管理员',NULL,'2015-04-21 16:27:33','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (120,1,0,'superadmin','超级管理员',NULL,'2015-04-21 16:55:07','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (121,1,0,'superadmin','超级管理员',NULL,'2015-04-21 16:56:49','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (122,1,0,'superadmin','超级管理员',NULL,'2015-04-21 17:02:47','192.168.60.158');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (123,1,0,'superadmin','超级管理员',NULL,'2015-04-21 17:03:36','192.168.60.158');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (124,1,0,'superadmin','超级管理员',NULL,'2015-04-22 09:15:33','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (125,1,0,'superadmin','超级管理员',NULL,'2015-04-22 09:56:35','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (126,1,0,'superadmin','超级管理员',NULL,'2015-04-22 10:49:47','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (127,1,0,'superadmin','超级管理员',NULL,'2015-04-22 10:53:25','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (128,1,0,'superadmin','超级管理员',NULL,'2015-04-22 15:09:28','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (129,1,0,'superadmin','超级管理员',NULL,'2015-04-22 15:19:47','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (130,1,0,'superadmin','超级管理员',NULL,'2015-04-22 15:37:42','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (131,1,0,'superadmin','超级管理员',NULL,'2015-04-22 15:53:55','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (132,1,0,'superadmin','超级管理员',NULL,'2015-04-22 16:06:29','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (133,1,0,'superadmin','超级管理员',NULL,'2015-04-22 16:09:26','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (134,1,0,'superadmin','超级管理员',NULL,'2015-04-22 16:44:40','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (135,1,0,'superadmin','超级管理员',NULL,'2015-04-22 16:49:50','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (136,1,0,'superadmin','超级管理员',NULL,'2015-04-22 17:17:33','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (137,1,0,'superadmin','超级管理员',NULL,'2015-04-22 17:22:24','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (138,1,0,'superadmin','超级管理员',NULL,'2015-04-23 09:44:37','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (139,1,0,'superadmin','超级管理员',NULL,'2015-04-23 09:56:51','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (140,1,0,'superadmin','超级管理员',NULL,'2015-04-23 10:49:17','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (141,1,0,'superadmin','超级管理员',NULL,'2015-04-23 11:39:14','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (142,1,0,'superadmin','超级管理员',NULL,'2015-04-23 11:47:17','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (143,1,0,'superadmin','超级管理员',NULL,'2015-04-23 12:39:36','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (144,1,0,'superadmin','超级管理员',NULL,'2015-04-23 14:46:13','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (145,1,0,'superadmin','超级管理员',NULL,'2015-04-23 15:15:17','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (146,1,0,'superadmin','超级管理员',NULL,'2015-04-23 16:21:38','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (147,1,0,'superadmin','超级管理员',NULL,'2015-04-23 16:23:17','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (148,1,0,'superadmin','超级管理员',NULL,'2015-04-23 16:26:32','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (149,1,0,'superadmin','超级管理员',NULL,'2015-04-23 17:05:11','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (150,1,0,'superadmin','超级管理员',NULL,'2015-04-23 17:34:29','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (151,1,0,'superadmin','超级管理员',NULL,'2015-04-23 17:51:52','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (152,1,0,'superadmin','超级管理员',NULL,'2015-04-23 18:03:21','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (153,1,0,'superadmin','超级管理员',NULL,'2015-04-24 09:49:04','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (154,1,0,'superadmin','超级管理员',NULL,'2015-04-24 11:40:46','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (155,1,0,'superadmin','超级管理员',NULL,'2015-04-24 13:57:10','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (156,1,0,'superadmin','超级管理员',NULL,'2015-04-24 15:17:10','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (157,1,0,'superadmin','超级管理员',NULL,'2015-04-24 15:45:38','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (158,1,0,'superadmin','超级管理员',NULL,'2015-04-24 16:13:57','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (159,1,0,'superadmin','超级管理员',NULL,'2015-04-24 17:12:04','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (160,1,0,'superadmin','超级管理员',NULL,'2015-04-24 17:32:50','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (161,1,0,'superadmin','超级管理员',NULL,'2015-04-24 17:41:03','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (162,1,0,'superadmin','超级管理员',NULL,'2015-04-25 10:19:41','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (163,1,0,'superadmin','超级管理员',NULL,'2015-04-25 10:35:13','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (164,1,0,'superadmin','超级管理员',NULL,'2015-04-25 11:02:52','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (165,1,0,'superadmin','超级管理员',NULL,'2015-04-25 14:00:01','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (166,1,0,'superadmin','超级管理员',NULL,'2015-04-27 09:26:11','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (167,1,0,'superadmin','超级管理员',NULL,'2015-04-27 11:06:51','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (168,1,0,'superadmin','超级管理员',NULL,'2015-04-27 12:25:41','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (169,1,0,'superadmin','超级管理员',NULL,'2015-04-27 12:28:16','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (170,1,0,'superadmin','超级管理员',NULL,'2015-04-27 13:07:48','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (171,1,0,'superadmin','超级管理员',NULL,'2015-04-27 13:34:51','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (172,1,0,'superadmin','超级管理员',NULL,'2015-04-27 17:55:58','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (173,1,0,'superadmin','超级管理员',NULL,'2015-04-27 17:57:56','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (174,1,0,'superadmin','超级管理员',NULL,'2015-04-27 17:58:50','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (175,1,0,'superadmin','超级管理员',NULL,'2015-04-28 10:21:17','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (176,1,0,'superadmin','超级管理员',NULL,'2015-04-28 11:20:50','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (177,1,0,'superadmin','超级管理员',NULL,'2015-04-28 12:48:18','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (178,1,0,'superadmin','超级管理员',NULL,'2015-04-28 12:58:23','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (179,1,0,'superadmin','超级管理员',NULL,'2015-04-28 13:04:08','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (180,1,0,'superadmin','超级管理员',NULL,'2015-04-28 13:30:10','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (181,1,0,'superadmin','超级管理员',NULL,'2015-04-28 14:20:18','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (182,1,0,'superadmin','超级管理员',NULL,'2015-04-28 14:57:52','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (183,1,0,'superadmin','超级管理员',NULL,'2015-04-28 15:13:47','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (184,1,0,'superadmin','超级管理员',NULL,'2015-04-28 15:28:02','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (185,1,0,'superadmin','超级管理员',NULL,'2015-04-29 08:59:49','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (186,1,0,'superadmin','超级管理员',NULL,'2015-04-29 14:14:21','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (187,1,0,'superadmin','超级管理员',NULL,'2015-04-29 16:18:27','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (188,1,0,'superadmin','超级管理员',NULL,'2015-04-30 11:48:04','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (189,1,0,'superadmin','超级管理员',NULL,'2015-05-04 09:20:13','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (190,1,0,'superadmin','超级管理员',NULL,'2015-05-04 11:54:53','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (191,1,0,'superadmin','超级管理员',NULL,'2015-05-04 12:02:05','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (192,1,0,'superadmin','超级管理员',NULL,'2015-05-04 13:04:46','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (193,1,0,'superadmin','超级管理员',NULL,'2015-05-04 13:11:58','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (194,1,0,'superadmin','超级管理员',NULL,'2015-05-04 13:13:29','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (195,1,0,'superadmin','超级管理员',NULL,'2015-05-04 13:14:31','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (196,1,0,'superadmin','超级管理员',NULL,'2015-05-04 13:19:52','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (197,1,0,'superadmin','超级管理员',NULL,'2015-05-04 13:20:20','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (198,1,0,'superadmin','超级管理员',NULL,'2015-05-04 15:47:16','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (199,1,0,'superadmin','超级管理员',NULL,'2015-05-05 14:40:57','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (200,1,0,'superadmin','超级管理员',NULL,'2015-05-05 17:49:18','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (201,1,0,'superadmin','超级管理员',NULL,'2015-05-06 10:04:08','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (202,1,0,'superadmin','超级管理员',NULL,'2015-05-06 13:19:20','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (203,1,0,'superadmin','超级管理员',NULL,'2015-05-06 14:25:20','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (204,1,0,'superadmin','超级管理员',NULL,'2015-05-06 15:59:46','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (205,1,0,'superadmin','超级管理员',NULL,'2015-05-06 16:01:59','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (206,1,0,'superadmin','超级管理员',NULL,'2015-05-06 17:41:14','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (207,1,0,'superadmin','超级管理员',NULL,'2015-05-06 18:19:11','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (208,1,0,'superadmin','超级管理员',NULL,'2015-05-07 09:50:24','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (209,1,0,'superadmin','超级管理员',NULL,'2015-05-07 09:55:22','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (210,1,0,'superadmin','超级管理员',NULL,'2015-05-07 10:12:53','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (211,1,0,'superadmin','超级管理员',NULL,'2015-05-07 10:27:14','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (212,1,0,'superadmin','超级管理员',NULL,'2015-05-07 10:45:22','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (213,1,0,'superadmin','超级管理员',NULL,'2015-05-07 11:31:16','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (214,1,0,'superadmin','超级管理员',NULL,'2015-05-07 13:04:41','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (215,1,0,'superadmin','超级管理员',NULL,'2015-05-07 14:00:40','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (216,1,0,'superadmin','超级管理员',NULL,'2015-05-08 09:08:21','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (217,1,0,'superadmin','超级管理员',NULL,'2015-05-08 09:37:31','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (218,1,0,'superadmin','超级管理员',NULL,'2015-05-11 14:00:25','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (219,1,0,'superadmin','超级管理员',NULL,'2015-05-11 14:13:12','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (220,1,0,'superadmin','超级管理员',NULL,'2015-05-11 14:30:51','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (221,1,0,'superadmin','超级管理员',NULL,'2015-05-11 15:42:51','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (222,1,0,'superadmin','超级管理员',NULL,'2015-05-11 16:21:53','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (223,1,0,'superadmin','超级管理员',NULL,'2015-05-11 16:26:20','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (224,1,0,'superadmin','超级管理员',NULL,'2015-05-12 09:28:13','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (225,1,0,'superadmin','超级管理员',NULL,'2015-05-12 10:22:56','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (226,1,0,'superadmin','超级管理员',NULL,'2015-05-12 10:26:12','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (227,1,0,'superadmin','超级管理员',NULL,'2015-05-12 10:28:04','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (228,1,0,'superadmin','超级管理员',NULL,'2015-05-12 10:50:39','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (229,1,0,'superadmin','超级管理员',NULL,'2015-05-12 10:50:54','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (230,1,0,'superadmin','超级管理员',NULL,'2015-05-12 11:36:00','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (231,1,0,'superadmin','超级管理员',NULL,'2015-05-12 11:49:26','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (232,1,0,'superadmin','超级管理员',NULL,'2015-05-12 13:16:02','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (233,1,0,'superadmin','超级管理员',NULL,'2015-05-12 13:26:04','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (234,1,0,'superadmin','超级管理员',NULL,'2015-05-12 14:49:35','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (235,1,0,'superadmin','超级管理员',NULL,'2015-05-12 15:59:49','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (236,1,0,'superadmin','超级管理员',NULL,'2015-05-12 16:13:31','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (237,1,0,'superadmin','超级管理员',NULL,'2015-05-13 10:16:11','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (238,1,0,'superadmin','超级管理员',NULL,'2015-05-15 10:52:14','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (239,1,0,'superadmin','超级管理员',NULL,'2015-05-15 11:43:16','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (240,1,0,'superadmin','超级管理员',NULL,'2015-05-15 13:29:23','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (241,1,0,'superadmin','超级管理员',NULL,'2015-05-15 13:58:35','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (242,1,0,'superadmin','超级管理员',NULL,'2015-05-15 14:13:32','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (243,1,0,'superadmin','超级管理员',NULL,'2015-05-15 14:21:07','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (244,1,0,'superadmin','超级管理员',NULL,'2015-05-15 14:34:12','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (245,1,0,'superadmin','超级管理员',NULL,'2015-05-15 14:43:17','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (246,1,0,'superadmin','超级管理员',NULL,'2015-05-15 14:53:36','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (247,1,0,'superadmin','超级管理员',NULL,'2015-05-15 14:57:35','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (248,1,0,'superadmin','超级管理员',NULL,'2015-05-15 15:11:39','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (249,1,0,'superadmin','超级管理员',NULL,'2015-05-15 15:14:54','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (250,1,0,'superadmin','超级管理员',NULL,'2015-05-15 17:00:55','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (251,1,0,'superadmin','超级管理员',NULL,'2015-05-15 17:46:33','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (252,1,0,'superadmin','超级管理员',NULL,'2015-05-18 09:31:49','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (253,1,0,'superadmin','超级管理员',NULL,'2015-05-18 11:58:05','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (254,1,0,'superadmin','超级管理员',NULL,'2015-05-18 14:03:55','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (255,1,0,'superadmin','超级管理员',NULL,'2015-05-18 14:08:33','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (256,1,0,'superadmin','超级管理员',NULL,'2015-05-18 14:28:04','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (257,1,0,'superadmin','超级管理员',NULL,'2015-05-18 14:33:35','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (258,1,0,'superadmin','超级管理员',NULL,'2015-05-18 14:52:58','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (259,1,0,'superadmin','超级管理员',NULL,'2015-05-18 15:19:12','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (260,1,0,'superadmin','超级管理员',NULL,'2015-05-18 15:21:44','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (261,1,0,'superadmin','超级管理员',NULL,'2015-05-18 17:03:09','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (262,1,0,'superadmin','超级管理员',NULL,'2015-05-19 09:25:42','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (263,1,0,'superadmin','超级管理员',NULL,'2015-05-19 09:28:02','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (264,1,0,'superadmin','超级管理员',NULL,'2015-05-19 10:20:57','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (265,1,0,'superadmin','超级管理员',NULL,'2015-05-19 10:58:29','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (266,1,0,'superadmin','超级管理员',NULL,'2015-05-19 13:12:57','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (267,1,0,'superadmin','超级管理员',NULL,'2015-05-19 13:45:47','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (268,1,0,'superadmin','超级管理员',NULL,'2015-05-19 13:47:56','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (269,1,0,'superadmin','超级管理员',NULL,'2015-05-19 14:01:30','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (270,1,0,'superadmin','超级管理员',NULL,'2015-05-19 15:15:12','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (271,1,0,'superadmin','超级管理员',NULL,'2015-05-19 16:35:08','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (272,1,0,'superadmin','超级管理员',NULL,'2015-05-19 16:38:24','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (273,1,0,'superadmin','超级管理员',NULL,'2015-05-19 16:48:09','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (274,1,0,'superadmin','超级管理员',NULL,'2015-05-19 16:58:35','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (275,1,0,'superadmin','超级管理员',NULL,'2015-05-19 17:09:00','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (276,1,0,'superadmin','超级管理员',NULL,'2015-05-19 17:17:19','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (277,1,0,'superadmin','超级管理员',NULL,'2015-05-19 17:32:41','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (278,1,0,'superadmin','超级管理员',NULL,'2015-05-19 17:37:35','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (279,1,0,'superadmin','超级管理员',NULL,'2015-05-20 09:04:17','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (280,1,0,'superadmin','超级管理员',NULL,'2015-05-20 09:07:07','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (281,1,0,'superadmin','超级管理员',NULL,'2015-05-20 09:09:47','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (282,1,0,'superadmin','超级管理员',NULL,'2015-05-20 09:19:51','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (283,1,0,'superadmin','超级管理员',NULL,'2015-05-20 10:04:23','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (284,1,0,'superadmin','超级管理员',NULL,'2015-05-20 10:12:06','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (285,1,0,'superadmin','超级管理员',NULL,'2015-05-20 10:32:13','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (286,1,0,'superadmin','超级管理员',NULL,'2015-05-20 10:36:15','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (287,1,0,'superadmin','超级管理员',NULL,'2015-05-20 10:45:34','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (288,1,0,'superadmin','超级管理员',NULL,'2015-05-20 10:58:22','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (289,1,0,'superadmin','超级管理员',NULL,'2015-05-20 11:10:58','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (290,1,0,'superadmin','超级管理员',NULL,'2015-05-20 11:23:55','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (291,1,0,'superadmin','超级管理员',NULL,'2015-05-20 11:27:43','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (292,1,0,'superadmin','超级管理员',NULL,'2015-05-20 11:36:03','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (293,1,0,'superadmin','超级管理员',NULL,'2015-05-20 11:36:13','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (294,1,0,'superadmin','超级管理员',NULL,'2015-05-20 13:12:44','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (295,1,0,'superadmin','超级管理员',NULL,'2015-05-20 13:29:31','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (296,1,0,'superadmin','超级管理员',NULL,'2015-05-20 13:59:57','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (297,1,0,'superadmin','超级管理员',NULL,'2015-05-20 14:10:12','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (298,1,0,'superadmin','超级管理员',NULL,'2015-05-20 14:12:53','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (299,1,0,'superadmin','超级管理员',NULL,'2015-05-20 14:31:54','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (300,1,0,'superadmin','超级管理员',NULL,'2015-05-20 14:54:53','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (301,1,0,'superadmin','超级管理员',NULL,'2015-05-20 14:58:52','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (302,1,0,'superadmin','超级管理员',NULL,'2015-05-20 15:10:34','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (303,1,0,'superadmin','超级管理员',NULL,'2015-05-20 15:34:44','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (304,1,0,'superadmin','超级管理员',NULL,'2015-05-20 15:59:51','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (305,1,0,'superadmin','超级管理员',NULL,'2015-05-20 16:05:24','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (306,1,0,'superadmin','超级管理员',NULL,'2015-05-20 16:32:03','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (307,1,0,'superadmin','超级管理员',NULL,'2015-05-20 17:07:38','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (308,1,0,'superadmin','超级管理员',NULL,'2015-05-20 17:11:06','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (309,1,0,'superadmin','超级管理员',NULL,'2015-05-20 17:15:23','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (310,1,0,'superadmin','超级管理员',NULL,'2015-05-20 17:38:43','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (311,1,0,'superadmin','超级管理员',NULL,'2015-05-20 17:42:22','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (312,1,0,'superadmin','超级管理员',NULL,'2015-05-20 17:46:51','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (313,1,0,'superadmin','超级管理员',NULL,'2015-05-20 17:49:16','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (314,1,0,'superadmin','超级管理员',NULL,'2015-05-20 17:56:33','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (315,1,0,'superadmin','超级管理员',NULL,'2015-05-21 10:05:39','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (316,1,0,'superadmin','超级管理员',NULL,'2015-05-21 10:12:54','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (317,1,0,'superadmin','超级管理员',NULL,'2015-05-21 13:30:15','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (318,1,0,'superadmin','超级管理员',NULL,'2015-05-21 13:35:56','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (319,1,0,'superadmin','超级管理员',NULL,'2015-05-21 13:37:40','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (320,1,0,'superadmin','超级管理员',NULL,'2015-05-21 13:43:00','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (321,1,0,'superadmin','超级管理员',NULL,'2015-05-21 14:02:15','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (322,1,0,'superadmin','超级管理员',NULL,'2015-05-21 14:05:20','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (323,1,0,'superadmin','超级管理员',NULL,'2015-05-21 14:23:40','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (324,1,0,'superadmin','超级管理员',NULL,'2015-05-21 14:36:08','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (325,1,0,'superadmin','超级管理员',NULL,'2015-05-21 14:40:18','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (326,1,0,'superadmin','超级管理员',NULL,'2015-05-21 14:43:17','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (327,1,0,'superadmin','超级管理员',NULL,'2015-05-21 14:56:41','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (328,1,0,'superadmin','超级管理员',NULL,'2015-05-21 14:59:55','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (329,1,0,'superadmin','超级管理员',NULL,'2015-05-21 15:21:13','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (330,1,0,'superadmin','超级管理员',NULL,'2015-05-21 15:31:24','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (331,1,0,'superadmin','超级管理员',NULL,'2015-05-21 15:35:40','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (332,1,0,'superadmin','超级管理员',NULL,'2015-05-21 15:41:35','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (333,1,0,'superadmin','超级管理员',NULL,'2015-05-21 15:45:48','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (334,1,0,'superadmin','超级管理员',NULL,'2015-05-21 15:46:58','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (335,1,0,'superadmin','超级管理员',NULL,'2015-05-21 15:52:33','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (336,1,0,'superadmin','超级管理员',NULL,'2015-05-21 16:01:15','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (337,1,0,'superadmin','超级管理员',NULL,'2015-05-21 16:08:59','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (338,1,0,'superadmin','超级管理员',NULL,'2015-05-21 16:12:25','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (339,1,0,'superadmin','超级管理员',NULL,'2015-05-21 16:14:41','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (340,1,0,'superadmin','超级管理员',NULL,'2015-05-21 16:17:28','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (341,1,0,'superadmin','超级管理员',NULL,'2015-05-21 16:40:18','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (342,1,0,'superadmin','超级管理员',NULL,'2015-05-21 16:41:54','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (343,1,0,'superadmin','超级管理员',NULL,'2015-05-21 16:44:10','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (344,1,0,'superadmin','超级管理员',NULL,'2015-05-21 16:52:45','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (345,1,0,'superadmin','超级管理员',NULL,'2015-05-21 16:57:28','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (346,1,0,'superadmin','超级管理员',NULL,'2015-05-21 17:04:20','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (347,1,0,'superadmin','超级管理员',NULL,'2015-05-21 17:15:47','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (348,1,0,'superadmin','超级管理员',NULL,'2015-05-21 17:20:07','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (349,1,0,'superadmin','超级管理员',NULL,'2015-05-21 17:23:01','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (350,1,0,'superadmin','超级管理员',NULL,'2015-05-21 17:28:20','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (351,1,0,'superadmin','超级管理员',NULL,'2015-05-21 17:31:22','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (352,1,0,'superadmin','超级管理员',NULL,'2015-05-21 17:33:34','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (353,1,0,'superadmin','超级管理员',NULL,'2015-05-21 17:37:45','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (354,1,0,'superadmin','超级管理员',NULL,'2015-05-21 17:50:44','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (355,1,0,'superadmin','超级管理员',NULL,'2015-05-21 17:54:42','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (356,1,0,'superadmin','超级管理员',NULL,'2015-05-22 09:07:24','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (357,1,0,'superadmin','超级管理员',NULL,'2015-05-22 09:08:54','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (358,1,0,'superadmin','超级管理员',NULL,'2015-05-22 09:57:06','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (359,1,0,'superadmin','超级管理员',NULL,'2015-05-22 10:04:25','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (360,1,0,'superadmin','超级管理员',NULL,'2015-05-22 10:56:54','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (361,1,0,'superadmin','超级管理员',NULL,'2015-05-22 11:25:13','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (362,1,0,'superadmin','超级管理员',NULL,'2015-05-22 11:48:53','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (363,1,0,'superadmin','超级管理员',NULL,'2015-05-22 13:07:46','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (364,1,0,'superadmin','超级管理员',NULL,'2015-05-22 13:16:48','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (365,1,0,'superadmin','超级管理员',NULL,'2015-05-22 13:42:56','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (366,1,0,'superadmin','超级管理员',NULL,'2015-05-22 13:54:08','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (367,1,0,'superadmin','超级管理员',NULL,'2015-05-22 14:22:16','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (368,1,0,'superadmin','超级管理员',NULL,'2015-05-22 15:05:10','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (369,1,0,'superadmin','超级管理员',NULL,'2015-05-22 16:57:07','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (370,1,0,'superadmin','超级管理员',NULL,'2015-05-22 16:59:38','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (371,1,0,'superadmin','超级管理员',NULL,'2015-05-25 11:23:17','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (372,1,0,'superadmin','超级管理员',NULL,'2015-05-25 13:57:50','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (373,1,0,'superadmin','超级管理员',NULL,'2015-05-25 15:10:03','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (374,1,0,'superadmin','超级管理员',NULL,'2015-05-25 16:44:58','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (375,1,0,'superadmin','超级管理员',NULL,'2015-05-25 17:18:57','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (376,1,0,'superadmin','超级管理员',NULL,'2015-05-26 14:02:25','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (377,1,0,'superadmin','超级管理员',NULL,'2015-05-26 14:41:20','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (378,1,0,'superadmin','超级管理员',NULL,'2015-05-26 14:44:58','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (379,1,0,'superadmin','超级管理员',NULL,'2015-05-26 14:54:52','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (380,1,0,'superadmin','超级管理员',NULL,'2015-05-26 15:17:42','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (381,1,0,'superadmin','超级管理员',NULL,'2015-05-26 15:37:17','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (382,1,0,'superadmin','超级管理员',NULL,'2015-05-27 11:35:44','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (383,1,0,'superadmin','超级管理员',NULL,'2015-05-27 11:59:36','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (384,1,0,'superadmin','超级管理员',NULL,'2015-05-27 13:14:57','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (385,1,0,'superadmin','超级管理员',NULL,'2015-05-27 13:26:49','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (386,1,0,'superadmin','超级管理员',NULL,'2015-05-27 13:31:22','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (387,1,0,'superadmin','超级管理员',NULL,'2015-05-27 13:35:41','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (388,1,0,'superadmin','超级管理员',NULL,'2015-05-27 13:44:26','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (389,1,0,'superadmin','超级管理员',NULL,'2015-05-27 14:03:07','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (390,1,0,'superadmin','超级管理员',NULL,'2015-05-27 14:08:51','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (391,1,0,'superadmin','超级管理员',NULL,'2015-05-27 14:17:47','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (392,1,0,'superadmin','超级管理员',NULL,'2015-05-27 14:22:40','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (393,1,0,'superadmin','超级管理员',NULL,'2015-05-27 14:26:29','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (394,1,0,'superadmin','超级管理员',NULL,'2015-05-27 14:27:46','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (395,1,0,'superadmin','超级管理员',NULL,'2015-05-27 14:34:08','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (396,1,0,'superadmin','超级管理员',NULL,'2015-05-27 14:42:17','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (397,1,0,'superadmin','超级管理员',NULL,'2015-05-27 15:13:46','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (398,1,0,'superadmin','超级管理员',NULL,'2015-05-27 15:21:16','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (399,1,0,'superadmin','超级管理员',NULL,'2015-05-29 13:48:22','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (400,1,0,'superadmin','超级管理员',NULL,'2015-05-30 14:38:43','127.0.0.1');
insert  into `sys_user_log`(`id`,`userid`,`type`,`loginname`,`realname`,`note`,`logintime`,`loginip`) values (401,1,0,'superadmin','超级管理员',NULL,'2015-06-08 16:18:40','127.0.0.1');

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `userid` bigint(64) DEFAULT NULL,
  `roleid` int(32) DEFAULT NULL,
  UNIQUE KEY `INDEX_USERROLE` (`userid`,`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`userid`,`roleid`) values (1,2);
insert  into `sys_user_role`(`userid`,`roleid`) values (2,1);
insert  into `sys_user_role`(`userid`,`roleid`) values (2,2);
insert  into `sys_user_role`(`userid`,`roleid`) values (3,1);
insert  into `sys_user_role`(`userid`,`roleid`) values (3,2);
insert  into `sys_user_role`(`userid`,`roleid`) values (4,2);
insert  into `sys_user_role`(`userid`,`roleid`) values (4,3);

/*Table structure for table `wf_config_ip` */

DROP TABLE IF EXISTS `wf_config_ip`;

CREATE TABLE `wf_config_ip` (
  `listip` varchar(20) NOT NULL,
  `hostname` varchar(50) DEFAULT NULL,
  `ipaddress` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `createuserid` varchar(20) DEFAULT NULL,
  `createtime` date DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`listip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `wf_config_ip` */

/*Table structure for table `wf_form_dbconfig` */

DROP TABLE IF EXISTS `wf_form_dbconfig`;

CREATE TABLE `wf_form_dbconfig` (
  `sys_name` varchar(50) NOT NULL,
  `sys_desc` varchar(100) DEFAULT NULL,
  `db_json` varchar(3000) DEFAULT NULL,
  PRIMARY KEY (`sys_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `wf_form_dbconfig` */

insert  into `wf_form_dbconfig`(`sys_name`,`sys_desc`,`db_json`) values ('test','测试业务系统','{url:\"jdbc:mysql://127.0.0.1:3306/form?useUnicode=true&characterEncoding=utf8\",username:\"root\",password:\"pass\",maxActive:\"2\",testWhileIdle:\"true\",			validationQuery:\"SELECT 1\",removeAbandoned:\"true\",removeAbandonedTimeout:\"1800\"}');

/*Table structure for table `wf_hi_activity` */

DROP TABLE IF EXISTS `wf_hi_activity`;

CREATE TABLE `wf_hi_activity` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `processInstanceId` varchar(64) DEFAULT NULL,
  `processDefinitionId` varchar(64) DEFAULT NULL,
  `executionId` varchar(64) DEFAULT NULL,
  `nowActivityId` varchar(255) DEFAULT NULL,
  `nextActivityId` varchar(255) DEFAULT NULL,
  `jsonInfo` varchar(1000) DEFAULT NULL,
  `isAfter` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `wf_hi_activity` */

/*Table structure for table `wf_model_category` */

DROP TABLE IF EXISTS `wf_model_category`;

CREATE TABLE `wf_model_category` (
  `id` varchar(300) DEFAULT NULL,
  `name` varchar(300) DEFAULT NULL,
  `isprivate` double DEFAULT NULL,
  `location` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `wf_model_category` */

insert  into `wf_model_category`(`id`,`name`,`isprivate`,`location`) values ('0001','默认分类',0,0);
insert  into `wf_model_category`(`id`,`name`,`isprivate`,`location`) values ('0002','1212',0,1);

/*Table structure for table `wf_test` */

DROP TABLE IF EXISTS `wf_test`;

CREATE TABLE `wf_test` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FLOW_ID` varchar(50) DEFAULT NULL,
  `TASK_ID` varchar(50) DEFAULT NULL,
  `DAY` int(11) DEFAULT NULL,
  `REASON` varchar(500) DEFAULT NULL,
  `ADD_UID` bigint(32) DEFAULT NULL,
  `ADD_TIME` varchar(20) DEFAULT NULL,
  `NOTE` varchar(500) DEFAULT NULL,
  `CHECK_UID` bigint(32) DEFAULT NULL,
  `CHECK_TIME` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `wf_test` */

insert  into `wf_test`(`ID`,`FLOW_ID`,`TASK_ID`,`DAY`,`REASON`,`ADD_UID`,`ADD_TIME`,`NOTE`,`CHECK_UID`,`CHECK_TIME`) values (1,'250001','250005',1,'困啊嘿嘿',1,'2015-04-28 14:57:34',NULL,0,NULL);
insert  into `wf_test`(`ID`,`FLOW_ID`,`TASK_ID`,`DAY`,`REASON`,`ADD_UID`,`ADD_TIME`,`NOTE`,`CHECK_UID`,`CHECK_TIME`) values (2,'257501','257509',1212,'1',0,'2015-04-28 15:23:45','不同意',1,'2015-04-28 15:28:20');
insert  into `wf_test`(`ID`,`FLOW_ID`,`TASK_ID`,`DAY`,`REASON`,`ADD_UID`,`ADD_TIME`,`NOTE`,`CHECK_UID`,`CHECK_TIME`) values (3,'260007','260023',1212,'1121212122--12121',0,'2015-04-28 15:31:25','同意',1,'2015-04-28 15:31:59');
insert  into `wf_test`(`ID`,`FLOW_ID`,`TASK_ID`,`DAY`,`REASON`,`ADD_UID`,`ADD_TIME`,`NOTE`,`CHECK_UID`,`CHECK_TIME`) values (4,'260027','260035',121221,'1222',0,'2015-04-28 15:33:34','xxxxx',1,'2015-04-28 15:42:42');
insert  into `wf_test`(`ID`,`FLOW_ID`,`TASK_ID`,`DAY`,`REASON`,`ADD_UID`,`ADD_TIME`,`NOTE`,`CHECK_UID`,`CHECK_TIME`) values (5,'260046','260059',1,'2',1,'2015-04-29 09:46:32','3',0,'2015-04-28 16:15:46');
insert  into `wf_test`(`ID`,`FLOW_ID`,`TASK_ID`,`DAY`,`REASON`,`ADD_UID`,`ADD_TIME`,`NOTE`,`CHECK_UID`,`CHECK_TIME`) values (6,'270001','270005',0,NULL,0,'2015-05-04 15:30:09',NULL,0,NULL);
insert  into `wf_test`(`ID`,`FLOW_ID`,`TASK_ID`,`DAY`,`REASON`,`ADD_UID`,`ADD_TIME`,`NOTE`,`CHECK_UID`,`CHECK_TIME`) values (7,'270012','270020',3,'3333',0,'2015-05-04 15:31:54','3333333333333',0,'2015-05-04 15:32:33');
insert  into `wf_test`(`ID`,`FLOW_ID`,`TASK_ID`,`DAY`,`REASON`,`ADD_UID`,`ADD_TIME`,`NOTE`,`CHECK_UID`,`CHECK_TIME`) values (8,'270037','270045',3,'5',0,'2015-05-04 15:46:27','6666666',0,'2015-05-04 15:46:52');
insert  into `wf_test`(`ID`,`FLOW_ID`,`TASK_ID`,`DAY`,`REASON`,`ADD_UID`,`ADD_TIME`,`NOTE`,`CHECK_UID`,`CHECK_TIME`) values (9,'272510','272523',333,'4444444----',0,'2015-05-05 14:51:35','eeeee',0,'2015-05-05 14:50:28');
insert  into `wf_test`(`ID`,`FLOW_ID`,`TASK_ID`,`DAY`,`REASON`,`ADD_UID`,`ADD_TIME`,`NOTE`,`CHECK_UID`,`CHECK_TIME`) values (10,'285008','285017',1212,'1313131313',0,'2015-05-06 17:55:29','5',0,'2015-05-06 17:55:55');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
