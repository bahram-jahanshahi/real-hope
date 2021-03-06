-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: realhope
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `code_generation_config`
--

DROP TABLE IF EXISTS `code_generation_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `code_generation_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code_generation_config_type` varchar(255) NOT NULL,
  `use_case_id` bigint(20) NOT NULL,
  `value` varchar(255) NOT NULL,
  `code_generation_config_content_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKchfit7ins4f1lfwpt0igk3dwa` (`code_generation_config_content_id`),
  CONSTRAINT `FKchfit7ins4f1lfwpt0igk3dwa` FOREIGN KEY (`code_generation_config_content_id`) REFERENCES `code_generation_config_content` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `code_generation_config`
--

LOCK TABLES `code_generation_config` WRITE;
/*!40000 ALTER TABLE `code_generation_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `code_generation_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `code_generation_config_content`
--

DROP TABLE IF EXISTS `code_generation_config_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `code_generation_config_content` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `code_generation_config_content`
--

LOCK TABLES `code_generation_config_content` WRITE;
/*!40000 ALTER TABLE `code_generation_config_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `code_generation_config_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_entity`
--

DROP TABLE IF EXISTS `data_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_entity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `fa_title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_entity`
--

LOCK TABLES `data_entity` WRITE;
/*!40000 ALTER TABLE `data_entity` DISABLE KEYS */;
INSERT INTO `data_entity` VALUES (1,'The contract of sales agent','قرارداد نمایندگی فروش','SalesAgentContract','Sales agent contract','agency'),(2,'The sales agent','نمایندگی','SalesAgent','Sales agent','agency'),(3,'The deposit financial document','سند واریز به بانک','Deposit','Deposit','financial'),(4,'The cheque financial document','سند چک مالی','Cheque','Cheque','financial'),(5,'The draft invoice','پیش فاکتور','DraftInvoice','Draft invoice','financial'),(6,'The software','نرم افزار','Software','Software','project'),(7,'The software module','ماژول نرم افزاری','SoftwareModule','Software module','project'),(8,'The software feature','ویژگی نرم افزاری','SoftwareFeature','Software feature','project'),(9,'The software application panel','پنل نرم افزاری','SoftwareApplicationPanel','Software application panel','project'),(10,'The software role','نقش نرم افزاری','SoftwareRole','Software role','project'),(11,'The use case','مورد کاربری','UseCase','Use case','feature'),(12,'The use case data','داده مورد کاربری','UseCaseData','Use case data','feature'),(13,'The use case data attribute','صفت داده مورد کاربری','UseCaseDataAttribute','Use case data attribute','feature'),(14,'The Domain entity','موجودیت دامنه','DomainEntity','Domain entity','feature'),(15,'The Domain entity attribute','صفت موجودیت دامنه','DomainEntityAttribute','DomainEntityAttribute','feature'),(16,'The data entity','موجودیت دیتابیس','DataEntity','Data entity','data_model'),(17,'The data enum','موجودیت شمارشی','DataEnum','Data enum','data_model');
/*!40000 ALTER TABLE `data_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_enum`
--

DROP TABLE IF EXISTS `data_enum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_enum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_enum`
--

LOCK TABLES `data_enum` WRITE;
/*!40000 ALTER TABLE `data_enum` DISABLE KEYS */;
INSERT INTO `data_enum` VALUES (1,'financial','ChequeStatusEnum'),(2,'financial','DraftInvoiceStatusEnum'),(3,'financial','DraftInvoiceFinalizeStatusEnum'),(4,'feature','UseCaseUsageEnum'),(5,'feature','EntityAttributeQuantityEnum'),(6,'feature','EntityAttributeCategoryEnum'),(7,'feature','PrimitiveAttributeTypeEnum');
/*!40000 ALTER TABLE `data_enum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domain_entity`
--

DROP TABLE IF EXISTS `domain_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `domain_entity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `generation_enable` bit(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `fa_title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `software_feature_id` bigint(20) NOT NULL,
  `software_application_panel_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2tneq4xirr2gxn742lhadvben` (`software_feature_id`),
  KEY `FKn5p2q49rcxqy5spyyic9oek78` (`software_application_panel_id`),
  CONSTRAINT `FK2tneq4xirr2gxn742lhadvben` FOREIGN KEY (`software_feature_id`) REFERENCES `software_feature` (`id`),
  CONSTRAINT `FKn5p2q49rcxqy5spyyic9oek78` FOREIGN KEY (`software_application_panel_id`) REFERENCES `software_application_panel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domain_entity`
--

LOCK TABLES `domain_entity` WRITE;
/*!40000 ALTER TABLE `domain_entity` DISABLE KEYS */;
INSERT INTO `domain_entity` VALUES (1,_binary '','SalesAgentContract4SalesChannelDepartment','Sales agent contract for sales channel department','قرارداد عامل فروش برای واحد کانال فروش','The Sales agent contract for sales channel department',1,1),(2,_binary '','Deposit4SalesChannelDepartment','Deposit for sales channel department','واریزی عامل فروش برای واحد کانال فروش','The Deposit for sales channel department',2,1),(3,_binary '','Cheque4SalesChannelDepartment','Cheque for sales channel department','چک دریافتی عامل فروش برای واحد کانال فروش','The Cheque for sales channel department',3,1),(4,_binary '\0','DraftInvoice4SalesChannelDepartment','Draft invoice for sales channel department','پیش فاکتور عامل فروش برای واحد کانال فروش','The Draft invoice for sales channel department',4,1),(5,_binary '','Software4ProjectManager','Software for project manager','نرم افزار برای مدیر پروژه','The Software for project manager',5,3),(6,_binary '','UseCaseDataAttribute4ProjectManager','Use case data attribute for project manager','صفت داده مورد کاربری برای مدیر پروژه','The Use case data attribute for project manager',7,3),(7,_binary '','UseCase4ProjectManager','Use case for project manager','مورد کاربری برای مدیر پروژه','The use case for project manager',8,3);
/*!40000 ALTER TABLE `domain_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domain_entity_attribute`
--

DROP TABLE IF EXISTS `domain_entity_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `domain_entity_attribute` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attribute_category` varchar(255) NOT NULL,
  `attribute_quantity` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `primitive_attribute_type` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `domain_entity_id` bigint(20) NOT NULL,
  `domain_entity_attribute_type_id` bigint(20) DEFAULT NULL,
  `map_path` varchar(255) DEFAULT NULL,
  `map_path_attribute_type` varchar(255) DEFAULT NULL,
  `fa_title` varchar(255) NOT NULL,
  `ui_column` bigint(20) NOT NULL,
  `ui_row` bigint(20) NOT NULL,
  `ui_grid_list_show` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK241saoex3hl4rnryp2oj8edyg` (`domain_entity_id`),
  KEY `FKt48x5seipvl4mrl133m2d63pe` (`domain_entity_attribute_type_id`),
  CONSTRAINT `FK241saoex3hl4rnryp2oj8edyg` FOREIGN KEY (`domain_entity_id`) REFERENCES `domain_entity` (`id`),
  CONSTRAINT `FKt48x5seipvl4mrl133m2d63pe` FOREIGN KEY (`domain_entity_attribute_type_id`) REFERENCES `domain_entity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domain_entity_attribute`
--

LOCK TABLES `domain_entity_attribute` WRITE;
/*!40000 ALTER TABLE `domain_entity_attribute` DISABLE KEYS */;
INSERT INTO `domain_entity_attribute` VALUES (1,'Primitive','Mono','The id of contract','Id','Long','Contract Id',1,NULL,'Id','Long','شناسه',0,0,_binary ''),(2,'Primitive','Mono','The sales agent title','SalesAgentTitle','String','Sales Agent Title',1,NULL,'SalesAgent.Customer.FaTitle','String','نمایندگی',0,0,_binary ''),(3,'Primitive','Mono','The status of contract','ContractStatus','String','Contract Status',1,NULL,'ContractStatus','Enum','وضعیت',0,0,_binary ''),(4,'Primitive','Mono','The start date of contract','StartDate','String','Start Date',1,NULL,'StartDate','JavaDate','شروع',0,0,_binary ''),(5,'Primitive','Mono','The finish date of contract','FinishDate','String','Finish Date',1,NULL,'FinishDate','JavaDate','پایان',0,0,_binary ''),(10,'Primitive','Mono','The financial document number of deposit','FinancialDocumentNumber','Long','FinancialDocumentNumber ',2,NULL,'FinancialDocument.FinancialDocumentNumber','Long','شماره سند',0,0,_binary ''),(11,'Primitive','Mono','The sales agent title','SalesAgentTitle','String','Sales agent title',2,NULL,'FinancialDocument.SalesAgent.Customer.FaTitle','String','نمایندگی',0,0,_binary ''),(12,'Primitive','Mono','The deposit date','DepositDate','String','Deposit date',2,NULL,'DepositDate','JavaDate','تاریخ واریز',0,0,_binary ''),(13,'Primitive','Mono','The amount of financial document','FinancialDocumentAmount','Long','Financial document amount',2,NULL,'FinancialDocument.Amount','Long','مبلغ سند',0,0,_binary ''),(14,'Primitive','Mono','The name of bank','BankName','String','Bank name',2,NULL,'BankName','String','بانک',0,0,_binary ''),(15,'Primitive','Mono','The name of bank branch','BankBranchName','String','Bank branch name',2,NULL,'BankBranchName','String','شعبه بانک',0,0,_binary ''),(16,'Primitive','Mono','The bank account number','BankAccountNumber','String','Bank account number',2,NULL,'BankAccountNumber','String','شماره حساب',0,0,_binary ''),(17,'Primitive','Mono','The id of deposit','Id','Long','Deposit Id',2,NULL,'Id','Long','شناسه',0,0,_binary ''),(18,'Primitive','Mono','The id of cheque','Id','Long','Cheque Id',3,NULL,'Id','Long','شناسه',0,0,_binary ''),(19,'Primitive','Mono','The financial document number of cheque','FinancialDocumentNumber','Long','Financial document number ',3,NULL,'FinancialDocument.FinancialDocumentNumber','Long','شماره سند',0,0,_binary ''),(20,'Primitive','Mono','The sales agent title','SalesAgentTitle','String','Sales agent title',3,NULL,'FinancialDocument.SalesAgent.Customer.FaTitle','String','نمایندگی',0,0,_binary ''),(21,'Primitive','Mono','The cheque receive date','ReceiveDate','String','Cheque receive Date',3,NULL,'ReceiveDate','JavaDate','تاریخ دریافت',0,0,_binary ''),(22,'Primitive','Mono','The amount of financial document','FinancialDocumentAmount','Long','Financial document amount',3,NULL,'FinancialDocument.Amount','Long','مبلغ چک',0,0,_binary ''),(23,'Primitive','Mono','The name of bank','BankName','String','Bank name',3,NULL,'BankName','String','بانک',0,0,_binary ''),(24,'Primitive','Mono','The name of bank branch','BankBranchName','String','Bank branch name',3,NULL,'BankBranchName','String','شعبه بانک',0,0,_binary ''),(25,'Primitive','Mono','The status od cheque','Status','String','Bank account number',3,NULL,'Status','Enum','وضعیت',0,0,_binary ''),(26,'Primitive','Mono','The due date of cheque','DueDate','String','Cheque due date',3,NULL,'DueDate','JavaDate','سررسید چک',0,0,_binary ''),(27,'Primitive','Mono','The Minimum number of activated serials','MinimumNumberOfActivatedSerials','Long','Minimum number of activated serials',1,NULL,'MinimumNumberOfActivatedSerials','Long','حداقل سریال فعالسازی شده',0,0,_binary ''),(28,'Primitive','Mono','The Maximum payment amount per sales order','MaximumPaymentAmount','Long','Maximum payment amount',1,NULL,'MaximumPaymentAmount','Long','حداکثر مبلغ خرید',0,0,_binary ''),(29,'Primitive','Mono','The id of draft invoice','Id','Long','Draft invoice Id',4,NULL,'Id','Long','شناسه پیش فاکتور',0,0,_binary ''),(30,'Primitive','Mono','The sales agent title','SalesAgentTitle','String','Sales agent title',4,NULL,'SalesAgent.Customer.FaTitle','String','نمایندگی',0,0,_binary ''),(31,'Primitive','Mono','The draft invoice number','DraftInvoiceNumber','Long','Draft invoice number',4,NULL,'DraftInvoiceNumber','Long','شماره پیش فاکتور',0,0,_binary ''),(32,'Primitive','Mono','The draft invoice date','DraftInvoiceDate','String','Draft invoice date',4,NULL,'DraftInvoiceDate','JavaDate','تاریخ پیش فاکتور',0,0,_binary ''),(33,'Primitive','Mono','The status','Status','String','Status',4,NULL,'Status','Enum','وضعیت',0,0,_binary ''),(34,'Primitive','Mono','The finalize status','FinalizeStatus','String','Finalize Status',4,NULL,'FinalizeStatus','Enum','وضعیت پیش فاکتور',0,0,_binary ''),(35,'Primitive','Mono','The create date','CreateDate','String','Create date',4,NULL,'CreateDate','JavaDate','تاریخ ثبت پیش فاکتور',0,0,_binary ''),(36,'Primitive','Mono','The product amount','ProductAmount','Long','Product amount',4,NULL,'ProductAmount','Long','مبلغ محصولات',0,0,_binary ''),(37,'Primitive','Mono','The discount amount','DiscountAmount','Long','Discount amount',4,NULL,'DiscountAmount','Long','مبلغ تخفیف',0,0,_binary ''),(38,'Primitive','Mono','The final amount','FinalAmount','Long','Final amount',4,NULL,'FinalAmount','Long','مبلغ نهایی',0,0,_binary ''),(39,'Primitive','Mono','The final payable amount','FinalAmountPayable','Long','Final amount payable',4,NULL,'FinalAmountPayable','Long','مبلغ نهایی پرداختنی',0,0,_binary ''),(40,'Primitive','Mono','The id of software','Id','Long','Software Id',5,NULL,'Id','Long','شناسه نرم افزار',0,0,_binary ''),(41,'Primitive','Mono','The name of software','Name','String','Software name',5,NULL,'Name','String','نام فنی نرم افزار',0,0,_binary ''),(42,'Primitive','Mono','The title of software','Title','String','Software title',5,NULL,'Title','String','عنوان نرم افزار',0,0,_binary ''),(43,'Primitive','Mono','The id of use case data attribute','Id','Long','Use case data attribute Id',6,NULL,'Id','Long','شناسه',0,0,_binary ''),(44,'Primitive','Mono','The name of use case','UseCaseName','String','Name of use case',6,NULL,'UseCaseData.UseCase.Name','String','مورد کاربری',0,0,_binary ''),(45,'Primitive','Mono','The name of use case data','UseCaseDataName','String','Title of use case data',6,NULL,'UseCaseData.Name','String','داده مورد کاربری',0,0,_binary ''),(46,'Primitive','Mono','The name of use case data attribute','Name','String','Name of use case data attribute',6,NULL,'Name','String','نام فنی',0,0,_binary ''),(47,'Primitive','Mono','The title of use case data attribute','Title','String','Title of use case data attribute',6,NULL,'Title','String','عنوان',0,0,_binary '\0'),(48,'Primitive','Mono','The farsi title of use case data attribute','FaTitle','String','Farsi title of use case data attribute',6,NULL,'FaTitle','String','نام فارسی',0,0,_binary '\0'),(49,'Primitive','Mono','The description of use case data attribute','Description','String','Description of use case data attribute',6,NULL,'Description','String','شرح',0,0,_binary '\0'),(50,'Primitive','Mono','The use case usage','UseCaseUsageEnum','String','Use case usage',6,NULL,'UseCaseUsageEnum','Enum','کاربرد در مورد کاربری',0,0,_binary ''),(51,'Primitive','Mono','The attribute quantity','AttributeQuantity','String','Attribute quantity',6,NULL,'AttributeQuantity','Enum','نوع شمارشی',0,0,_binary '\0'),(52,'Primitive','Mono','The attribute category','AttributeCategory','String','Attribute category',6,NULL,'AttributeCategory','Enum','دسته بندی',0,0,_binary ''),(53,'Primitive','Mono','The primitive attribute','PrimitiveAttributeType','String','Primitive attribute type',6,NULL,'PrimitiveAttributeType','Enum','نوع پایه',0,0,_binary '\0'),(54,'Primitive','Mono','The setter of update path','SetterOfUpdatePath','String','Setter of update path',6,NULL,'SetterOfUpdatePath','String','مسیر setter',0,0,_binary '\0'),(55,'Primitive','Mono','The getter of update path','GetterOfUpdatePath','String','Getter of update path',6,NULL,'GetterOfUpdatePath','String','مسیر getter',0,0,_binary '\0'),(58,'Primitive','Mono','The domain entity attribute type','DomainEntityAttributeType','String','Domain entity attribute type',6,NULL,'DomainEntityAttributeType','Entity','موجودیت دامنه',0,0,_binary '\0'),(59,'Primitive','Mono','The data entity attribute type','DataEntityAttributeType','String','Data entity attribute type',6,NULL,'DataEntityAttributeType','Entity','موجودیت دیتابیس',0,0,_binary '\0'),(60,'Primitive','Mono','The use case data','UseCaseData','String','Use case data',6,NULL,'UseCaseData','Entity','داده مورد کاربری',0,0,_binary '\0'),(61,'Primitive','Mono','The fruit seeds attribute','FruitSeedsAttribute','String','Fruit seeds attribute',6,NULL,'FruitSeedsAttribute','Entity','صفت تامین کننده',0,0,_binary '\0'),(62,'Primitive','Mono','The data enum','DataEnum','String','Data enum',6,NULL,'DataEnum','Entity','موجودیت شمارشی',0,0,_binary '\0'),(63,'Primitive','Mono','nullable','Nullable','Boolean','Nullable',6,NULL,'Nullable','Boolean','آیا null پذیر است؟',0,0,_binary '\0'),(64,'Primitive','Mono','required','Required','Boolean','Required',6,NULL,'Required','Boolean','آیا الزامی است؟',0,0,_binary '\0'),(65,'Primitive','Mono','minLength','MinLength','Long','MinLength',6,NULL,'MinLength','Long','کمترین طول',0,0,_binary '\0'),(66,'Primitive','Mono','maxLength','MaxLength','Long','MaxLength',6,NULL,'MaxLength','Long','بیشترین طول',0,0,_binary '\0'),(67,'Primitive','Mono','min','Min','Long','Min',6,NULL,'Min','Long','مقدار کمینه',0,0,_binary '\0'),(68,'Primitive','Mono','max','Max','Long','Max',6,NULL,'Max','Long','مقدار بیشینه',0,0,_binary '\0'),(69,'Primitive','Mono','errorTip','ErrorTip','String','ErrorTip',6,NULL,'ErrorTip','String','پیام خطا',0,0,_binary '\0'),(72,'Primitive','Mono','The id of use case','Id','Long','Use case Id',7,NULL,'Id','Long','شناسه',0,0,_binary ''),(73,'Primitive','Mono','The name of use case','UseCaseName','String','Name of use case',7,NULL,'Name','String','عنوان فنی',0,0,_binary ''),(74,'Primitive','Mono','The title of use case','Title','String','Title of use case',7,NULL,'Title','String','عنوان',0,0,_binary '\0'),(75,'Primitive','Mono','The farsi title of use case','FaTitle','String','Farsi title of use case',7,NULL,'FaTitle','String','نام فارسی',0,0,_binary '\0'),(76,'Primitive','Mono','The description of use case','Description','String','Description of use case',7,NULL,'Description','String','شرح',0,0,_binary '\0'),(77,'Primitive','Mono','The user interface type','UserInterfaceType','String','User interface type',7,NULL,'UserInterfaceType','Enum','کاربرد در واسط گرافیکی',0,0,_binary ''),(78,'Primitive','Mono','The software name','SoftwareName','String','Software feature name',7,NULL,'SoftwareFeature.SoftwareModule.Software','Entity','نرم افزار',0,0,_binary ''),(79,'Primitive','Mono','The software module name','SoftwareModuleName','String','Software module name',7,NULL,'SoftwareFeature.SoftwareModule','Entity','ماژول نرم افزاری',0,0,_binary ''),(80,'Primitive','Mono','The software feature name','SoftwareFeatureName','String','Software feature name',7,NULL,'SoftwareFeature','Entity','ويژگی نرم افزاری',0,0,_binary ''),(81,'Primitive','Mono','The software application panel','SoftwareApplicationPanelName','String','Software application panel',7,NULL,'SoftwareApplicationPanel','Entity','پنل نرم افزاری',0,0,_binary '\0'),(82,'Primitive','Mono','The software role','SoftwareRole','String','Software role',7,NULL,'SoftwareRole','Entity','نقش کاربری',0,0,_binary ''),(83,'Primitive','Mono','The data entity','DataEntity','String','Data entity',7,NULL,'DataEntity','Entity','موجودیت دیتابیسی',0,0,_binary '\0'),(84,'Primitive','Mono','The generation enable','GenerationEnable','Boolean','Generation enable',7,NULL,'GenerationEnable','Boolean','آیا تولید شود؟',0,0,_binary '');
/*!40000 ALTER TABLE `domain_entity_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privilege`
--

DROP TABLE IF EXISTS `privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `privilege` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privilege`
--

LOCK TABLES `privilege` WRITE;
/*!40000 ALTER TABLE `privilege` DISABLE KEYS */;
/*!40000 ALTER TABLE `privilege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `user_role_name_enum` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ProjectManager','ProjectManager');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_privilege`
--

DROP TABLE IF EXISTS `role_privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_privilege` (
  `role_id` bigint(20) NOT NULL,
  `privilege_id` bigint(20) NOT NULL,
  KEY `FKdkwbrwb5r8h74m1v7dqmhp99c` (`privilege_id`),
  KEY `FKsykrtrdngu5iexmbti7lu9xa` (`role_id`),
  CONSTRAINT `FKdkwbrwb5r8h74m1v7dqmhp99c` FOREIGN KEY (`privilege_id`) REFERENCES `privilege` (`id`),
  CONSTRAINT `FKsykrtrdngu5iexmbti7lu9xa` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_privilege`
--

LOCK TABLES `role_privilege` WRITE;
/*!40000 ALTER TABLE `role_privilege` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_privilege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `software`
--

DROP TABLE IF EXISTS `software`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `software` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `spring_boot_project_path` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `spring_boot_project_main_package` varchar(255) NOT NULL,
  `spring_boot_java_src_path` varchar(255) NOT NULL,
  `fa_title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `software`
--

LOCK TABLES `software` WRITE;
/*!40000 ALTER TABLE `software` DISABLE KEYS */;
INSERT INTO `software` VALUES (1,'AvShop','D:\\Projects\\idea-projects-2020\\AvShop-1.0.0','Padvish Antivirus Shop','ir\\amnpardaz\\enterprise\\avshop','src\\main\\java','فروشگاه پادویش'),(2,'RealHope','D:\\Projects\\idea-projects-2020\\real-hope','Real Hope','ir\\afarinesh\\realhope','src\\main\\java','امید راستین');
/*!40000 ALTER TABLE `software` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `software_application_panel`
--

DROP TABLE IF EXISTS `software_application_panel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `software_application_panel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `software_id` bigint(20) NOT NULL,
  `angular_project_path` varchar(255) NOT NULL,
  `angular_src_path` varchar(255) NOT NULL,
  `fa_title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK14yc55w1jgs0d6ko8xy82ee2p` (`software_id`),
  CONSTRAINT `FK14yc55w1jgs0d6ko8xy82ee2p` FOREIGN KEY (`software_id`) REFERENCES `software` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `software_application_panel`
--

LOCK TABLES `software_application_panel` WRITE;
/*!40000 ALTER TABLE `software_application_panel` DISABLE KEYS */;
INSERT INTO `software_application_panel` VALUES (1,'Admin','راهبری',1,'D:\\Projects\\idea-projects-2020\\AvShopAdmin-ng\\','src','راهبری'),(2,'Agency','نمایندگی',1,'D:\\Projects\\idea-projects-2020\\AvshopAgency-ng\\','src','نمایندگی'),(3,'Admin','مدیریت پروژه',2,'D:\\Projects\\idea-projects-2020\\real-hope-ng\\','src','مدیریت پروژه');
/*!40000 ALTER TABLE `software_application_panel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `software_feature`
--

DROP TABLE IF EXISTS `software_feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `software_feature` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `software_module_id` bigint(20) NOT NULL,
  `fa_title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKf030hbqnenj302mg7x01pbs7m` (`software_module_id`),
  CONSTRAINT `FKf030hbqnenj302mg7x01pbs7m` FOREIGN KEY (`software_module_id`) REFERENCES `software_module` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `software_feature`
--

LOCK TABLES `software_feature` WRITE;
/*!40000 ALTER TABLE `software_feature` DISABLE KEYS */;
INSERT INTO `software_feature` VALUES (1,'Contract management','Contract','Contract',1,'قرارداد'),(2,'Deposit management','Deposit','Deposit',2,'واریز نقدی'),(3,'Cheque management','Cheque','Cheque',2,'چک دریافتی'),(4,'Invoice management','DraftInvoice','DraftInvoice',2,'پیش فاکتور'),(5,'Software management','Software','Software',3,'نرم افزار'),(6,'Use case management','UseCase','UseCase',3,'مورد کاربری'),(7,'Use case data attribute management','UseCaseDataAttribute','UseCaseDataAttribute',3,'صفت داده مورد کاربری'),(8,'Use case management','UseCase','Use case',3,'مورد کاربری');
/*!40000 ALTER TABLE `software_feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `software_module`
--

DROP TABLE IF EXISTS `software_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `software_module` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `software_id` bigint(20) NOT NULL,
  `fa_title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfp1vd8n52fqi53y7sjfi8yqju` (`software_id`),
  CONSTRAINT `FKfp1vd8n52fqi53y7sjfi8yqju` FOREIGN KEY (`software_id`) REFERENCES `software` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `software_module`
--

LOCK TABLES `software_module` WRITE;
/*!40000 ALTER TABLE `software_module` DISABLE KEYS */;
INSERT INTO `software_module` VALUES (1,'Agency Management','Agency','Agency',1,'مدیریت نمایندگان'),(2,'Financial document','Financial','Financial',1,'مدیریت مالی'),(3,'Software design','SoftwareDesign','Software design',2,'طراحی نرم افزار');
/*!40000 ALTER TABLE `software_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `software_role`
--

DROP TABLE IF EXISTS `software_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `software_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `software_id` bigint(20) NOT NULL,
  `fa_title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfpyuld63nqdu6k5ktve95d9og` (`software_id`),
  CONSTRAINT `FKfpyuld63nqdu6k5ktve95d9og` FOREIGN KEY (`software_id`) REFERENCES `software` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `software_role`
--

LOCK TABLES `software_role` WRITE;
/*!40000 ALTER TABLE `software_role` DISABLE KEYS */;
INSERT INTO `software_role` VALUES (1,'SalesChannelManager','Sales Channel Manager',1,'مدیر فروش'),(2,'SalesChannelSupervisor','Sales Channel Supervisor',1,'کارشناس فروش'),(3,'SalesChannelDepartment','Sales Channel Department',1,'واحد فروش'),(4,'ProjectManager','Project Manager',2,'مدیریت پروژه');
/*!40000 ALTER TABLE `software_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `use_case`
--

DROP TABLE IF EXISTS `use_case`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `use_case` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `generation_enable` bit(1) NOT NULL,
  `user_interface_type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `software_feature_id` bigint(20) NOT NULL,
  `software_application_panel_id` bigint(20) NOT NULL,
  `software_role_id` bigint(20) NOT NULL,
  `data_entity_id` bigint(20) NOT NULL,
  `fa_title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK66ng24jsqmyr0dyfm5r8xqj6l` (`software_feature_id`),
  KEY `FKngu8i26awm3x9bmdxdqn5ovlo` (`software_application_panel_id`),
  KEY `FKlhfrn1hyda8us27jbtc9gxv3d` (`software_role_id`),
  KEY `FK1dm62qfuu2o3sw101usp31yg2` (`data_entity_id`),
  CONSTRAINT `FK1dm62qfuu2o3sw101usp31yg2` FOREIGN KEY (`data_entity_id`) REFERENCES `data_entity` (`id`),
  CONSTRAINT `FK66ng24jsqmyr0dyfm5r8xqj6l` FOREIGN KEY (`software_feature_id`) REFERENCES `software_feature` (`id`),
  CONSTRAINT `FKlhfrn1hyda8us27jbtc9gxv3d` FOREIGN KEY (`software_role_id`) REFERENCES `software_role` (`id`),
  CONSTRAINT `FKngu8i26awm3x9bmdxdqn5ovlo` FOREIGN KEY (`software_application_panel_id`) REFERENCES `software_application_panel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `use_case`
--

LOCK TABLES `use_case` WRITE;
/*!40000 ALTER TABLE `use_case` DISABLE KEYS */;
INSERT INTO `use_case` VALUES (1,_binary '','GridList','ListContracts','List contracts by sales department ','List contracts by sales department ',1,1,3,1,'فهرست قراردهای نمایندگان'),(2,_binary '','View','ViewContract','View contract by sales department','View contract by sales department',1,1,3,1,'نمایش قرارداد'),(3,_binary '','Update','UpdateContract','Update contract by sales department','Update contract by sales department',1,1,3,1,'ویرایش قرارداد'),(4,_binary '','GridList','ListDeposit','List deposit by sales department','List deposits by sales department',2,1,3,3,'فهرست سندهای واریزی'),(5,_binary '','View','ViewDeposit','View deposit by sales department','View the deposit by sales department',2,1,3,3,'نمایش سند واریزی'),(6,_binary '','Update','UpdateDeposit','Update deposit by sales department','Update the deposit by sales department',2,1,3,3,'ویرایش سند واریزی'),(7,_binary '','AddNew','AddNewDeposit','Add new deposit by sales department','Add a new deposit by sales department',2,1,3,3,'ثبت سند واریزی'),(8,_binary '','Delete','DeleteDeposit','delete deposit by sales department','delete the deposit by sales department',2,1,3,3,'حذف سند واریزی'),(9,_binary '','GridList','ListCheque','List cheque by sales department','List cheques by sales department',3,1,3,4,'فهرست سند های چک دریافتی'),(10,_binary '','View','ViewCheque','View cheque by sales department','View the cheque by sales department',3,1,3,4,'نمایش سند چک دریافتی'),(11,_binary '','Update','UpdateCheque','Update cheque by sales department','Update the cheque by sales department',3,1,3,4,'ویرایش سند چک دریافتی'),(12,_binary '','AddNew','AddNewCheque','Add new cheque by sales department','Add a new cheque by sales department',3,1,3,4,'ثبت سند چک دریافتی'),(13,_binary '','Delete','DeleteCheque','delete cheque by sales department','delete the cheque by sales department',3,1,3,4,'حذف سند چک دریافتی'),(15,_binary '\0','GridList','ListDraftInvoice','List draft invoices by sales department','List the draft invoices by sales department',4,1,3,5,'فهرست پیش فاکتورها'),(16,_binary '\0','View','ViewDraftInvoice','View draft invoice by sales department','View the draft invoice by sales department',4,1,3,5,'نمایش پیش فاکتور'),(17,_binary '\0','Update','UpdateDraftInvoice','Update draft invoice by sales department','Update the draft invoice by sales department',4,1,3,5,'ویرایش پیش فاکتور'),(18,_binary '\0','AddNew','AddNewDraftInvoice','Add a new draft invoice by sales department','Add a new draft invoice by sales department',4,1,3,5,'ثبت پیش فاکتور'),(19,_binary '','Delete','DeleteDraftInvoice','delete the draft invoice by sales department','delete the draft invoice by sales department',4,1,3,5,'حذف پیش فاکتور'),(20,_binary '','GridList','ListSoftware','List the software by project manager','List the software by project manager',5,3,4,6,'فهرست نرم افزارها'),(21,_binary '','View','ViewSoftware','View the software by project manager','View the software by project manager',5,3,4,6,'نمایش نرم افزار'),(22,_binary '','Update','UpdateSoftware','Update the software by project manager','Update the software by project manager',5,3,4,6,'ویرایش نرم افزار'),(23,_binary '','AddNew','AddNewSoftware','Add a new software by project manager','Add a new software by project manager',5,3,4,6,'ثبت نرم افزار'),(24,_binary '','Delete','DeleteSoftware','Delete the software by project manager','Delete the software by project manager',5,3,4,6,'حذف نرم افزار'),(25,_binary '','GridList','ListUseCaseDataAttribute','List the use case data attribute by project manager','List the use case data attributeby project manager',7,3,4,13,'فهرست صفت های داده مورد کاربری'),(26,_binary '','View','ViewUseCaseDataAttribute','View the use case data attribute by project manager','View the use case data attribute by project manager',7,3,4,13,'نمایش صفت های داده مورد کاربری'),(27,_binary '','Update','UpdateUseCaseDataAttribute','Update the use case data attribute by project manager','Update the use case data attribute by project manager',7,3,4,13,'ویرایش صفت های داده مورد کاربری'),(28,_binary '','AddNew','AddNewUseCaseDataAttribute','Add a new use case data attribute by project manager','Add a new use case data attribute by project manager',7,3,4,13,'افزودن صفت های داده مورد کاربری'),(29,_binary '','GridList','ListUseCase','List the use case by project manager','List the use case by project manager',8,3,4,11,'فهرست موردهای کاربری'),(30,_binary '','View','ViewUseCase','View the use case by project manager','List the use case by project manager',8,3,4,11,'نمایش مورد کاربری');
/*!40000 ALTER TABLE `use_case` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `use_case_data`
--

DROP TABLE IF EXISTS `use_case_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `use_case_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `use_case_data_type` varchar(255) NOT NULL,
  `use_case_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlb32l8op7p377frsk9jbtiiuw` (`use_case_id`),
  CONSTRAINT `FKlb32l8op7p377frsk9jbtiiuw` FOREIGN KEY (`use_case_id`) REFERENCES `use_case` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `use_case_data`
--

LOCK TABLES `use_case_data` WRITE;
/*!40000 ALTER TABLE `use_case_data` DISABLE KEYS */;
INSERT INTO `use_case_data` VALUES (1,'Description','Plant','Plant',1),(2,'Description','Fruit','Fruit',1),(3,'Description','FruitSeeds','FruitSeeds',1),(4,'Description','SeedsCommand','SeedsCommand',1),(5,'Description','Plant','Plant',2),(6,'Description','Fruit','Fruit',2),(7,'Description','FruitSeeds','FruitSeeds',2),(8,'Description','SeedsCommand','SeedsCommand',2),(9,'Description','Plant','Plant',3),(10,'Description','Fruit','Fruit',3),(11,'Description','FruitSeeds','FruitSeeds',3),(12,'Description','SeedsCommand','SeedsCommand',3),(13,'List deposit','Plant','Plant',4),(14,'List deposit','Fruit','Fruit',4),(15,'List deposit','FruitSeeds','FruitSeeds',4),(16,'List deposit','SeedsCommand','SeedsCommand',4),(17,'View deposit','Plant','Plant',5),(18,'View deposit','Fruit','Fruit',5),(19,'View deposit','FruitSeeds','FruitSeeds',5),(20,'View deposit','SeedsCommand','SeedsCommand',5),(21,'Update deposit','Plant','Plant',6),(22,'Update deposit','Fruit','Fruit',6),(23,'Update deposit','SeedsCommand','SeedsCommand',6),(24,'Update deposit','FruitSeeds','FruitSeeds',6),(25,'Add new deposit','Plant','Plant',7),(26,'Add new deposit','Fruit','Fruit',7),(27,'Add new deposit','SeedsCommand','SeedsCommand',7),(28,'Add new deposit','FruitSeeds','FruitSeeds',7),(29,'Delete deposit','Plant','Plant',8),(30,'Delete deposit','Fruit','Fruit',8),(31,'Delete deposit','SeedsCommand','SeedsCommand',8),(32,'Delete deposit','FruitSeeds','FruitSeeds',8),(33,'List cheque','Plant','Plant',9),(34,'List cheque','Fruit','Fruit',9),(35,'List cheque','SeedsCommand','SeedsCommand',9),(36,'List cheque','FruitSeeds','FruitSeeds',9),(37,'View cheque','Plant','Plant',10),(38,'View cheque','Fruit','Fruit',10),(39,'View cheque','SeedsCommand','SeedsCommand',10),(40,'View cheque','FruitSeeds','FruitSeeds',10),(41,'Update cheque','Plant','Plant',11),(42,'Update cheque','Fruit','Fruit',11),(43,'Update cheque','SeedsCommand','SeedsCommand',11),(44,'Update cheque','FruitSeeds','FruitSeeds',11),(45,'Add new cheque','Plant','Plant',12),(46,'Add new cheque','Fruit','Fruit',12),(47,'Add new cheque','SeedsCommand','SeedsCommand',12),(48,'Add new cheque','FruitSeeds','FruitSeeds',12),(49,'Delete cheque','Plant','Plant',13),(50,'Delete cheque','Fruit','Fruit',13),(51,'Delete cheque','SeedsCommand','SeedsCommand',13),(52,'Delete cheque','FruitSeeds','FruitSeeds',13),(53,'List draft invoices','Plant','Plant',15),(54,'List draft invoices','Fruit','Fruit',15),(55,'List draft invoices','SeedsCommand','SeedsCommand',15),(56,'List draft invoices','FruitSeeds','FruitSeeds',15),(57,'View draft invoices','Plant','Plant',16),(58,'View draft invoices','Fruit','Fruit',16),(59,'View draft invoices','SeedsCommand','SeedsCommand',16),(60,'View draft invoices','FruitSeeds','FruitSeeds',16),(61,'Update draft invoices','Plant','Plant',17),(62,'Update draft invoices','Fruit','Fruit',17),(63,'Update draft invoices','SeedsCommand','SeedsCommand',17),(64,'Update draft invoices','FruitSeeds','FruitSeeds',17),(69,'Delete draft invoices','Plant','Plant',19),(70,'Delete draft invoices','Fruit','Fruit',19),(71,'Delete draft invoices','SeedsCommand','SeedsCommand',19),(72,'Delete draft invoices','FruitSeeds','FruitSeeds',19),(73,'List software','Plant','Plant',20),(74,'List software','Fruit','Fruit',20),(75,'List software','SeedsCommand','SeedsCommand',20),(76,'List software','FruitSeeds','FruitSeeds',20),(77,'View software','Plant','Plant',21),(78,'View software','Fruit','Fruit',21),(79,'View software','SeedsCommand','SeedsCommand',21),(80,'View software','FruitSeeds','FruitSeeds',21),(81,'Update software','Plant','Plant',22),(82,'Update software','Fruit','Fruit',22),(83,'Update software','SeedsCommand','SeedsCommand',22),(84,'Update software','FruitSeeds','FruitSeeds',22),(85,'Add new software','Plant','Plant',23),(86,'Add new software','Fruit','Fruit',23),(87,'Add new software','SeedsCommand','SeedsCommand',23),(88,'Add new software','FruitSeeds','FruitSeeds',23),(89,'Delete software','Plant','Plant',24),(90,'Delete software','Fruit','Fruit',24),(91,'Delete software','SeedsCommand','SeedsCommand',24),(92,'Delete software','FruitSeeds','FruitSeeds',24),(93,'List use case data attribute','Plant','Plant',25),(94,'List use case data attribute','Fruit','Fruit',25),(95,'List use case data attribute','SeedsCommand','SeedsCommand',25),(96,'List use case data attribute','FruitSeeds','FruitSeeds',25),(97,'View use case data attribute','Plant','Plant',26),(98,'View use case data attribute','Fruit','Fruit',26),(99,'View use case data attribute','SeedsCommand','SeedsCommand',26),(100,'View use case data attribute','FruitSeeds','FruitSeeds',26),(101,'Update use case data attribute','Plant','Plant',27),(102,'Update use case data attribute','Fruit','Fruit',27),(103,'Update use case data attribute','SeedsCommand','SeedsCommand',27),(104,'Update use case data attribute','FruitSeeds','FruitSeeds',27),(105,'Add new use case data attribute','Plant','Plant',28),(106,'Add new use case data attribute','Fruit','Fruit',28),(107,'Add new use case data attribute','SeedsCommand','SeedsCommand',28),(108,'Add new use case data attribute','FruitSeeds','FruitSeeds',28),(109,'List use case plant','Plant','Plant',29),(110,'List use case fruit','Fruit','Fruit',29),(111,'List use case seeds command','SeedsCommand','SeedsCommand',29),(112,'List use case fruit seeds','FruitSeeds','FruitSeeds',29),(113,'View use case plant','Plant','Plant',30),(114,'View use case fruit','Fruit','Fruit',30),(115,'View use case seeds command','SeedsCommand','SeedsCommand',30),(116,'View use case fruit seeds','FruitSeeds','FruitSeeds',30);
/*!40000 ALTER TABLE `use_case_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `use_case_data_attribute`
--

DROP TABLE IF EXISTS `use_case_data_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `use_case_data_attribute` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `use_case_usage_enum` varchar(255) NOT NULL,
  `use_case_data_id` bigint(20) NOT NULL,
  `attribute_category` varchar(255) NOT NULL,
  `attribute_quantity` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `primitive_attribute_type` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `domain_entity_attribute_type_id` bigint(20) DEFAULT NULL,
  `fa_title` varchar(255) NOT NULL,
  `fruit_seeds_attribute_id` bigint(20) DEFAULT NULL,
  `getter_of_update_path` varchar(255) DEFAULT NULL,
  `setter_of_update_path` varchar(255) DEFAULT NULL,
  `data_entity_attribute_type_id` bigint(20) DEFAULT NULL,
  `ui_column` bigint(20) NOT NULL,
  `ui_row` bigint(20) NOT NULL,
  `data_enum_id` bigint(20) DEFAULT NULL,
  `error_tip` varchar(255) DEFAULT NULL,
  `max` bigint(20) DEFAULT NULL,
  `max_length` bigint(20) DEFAULT NULL,
  `min` bigint(20) DEFAULT NULL,
  `min_length` bigint(20) DEFAULT NULL,
  `nullable` bit(1) NOT NULL,
  `required` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKexgnika71ywxkjf1jqtmi4l6y` (`domain_entity_attribute_type_id`),
  KEY `FKfphxipoaj2swpaj2ctp9353fh` (`use_case_data_id`),
  KEY `FKsmotou867oymqvyi6u5o23wba` (`fruit_seeds_attribute_id`),
  KEY `FK9jp120cgdulycusqn8xiop2x9` (`data_entity_attribute_type_id`),
  KEY `FK9u7pjnpe73fa4qy4huix4wrok` (`data_enum_id`),
  CONSTRAINT `FK9jp120cgdulycusqn8xiop2x9` FOREIGN KEY (`data_entity_attribute_type_id`) REFERENCES `data_entity` (`id`),
  CONSTRAINT `FK9u7pjnpe73fa4qy4huix4wrok` FOREIGN KEY (`data_enum_id`) REFERENCES `data_enum` (`id`),
  CONSTRAINT `FKexgnika71ywxkjf1jqtmi4l6y` FOREIGN KEY (`domain_entity_attribute_type_id`) REFERENCES `domain_entity` (`id`),
  CONSTRAINT `FKfphxipoaj2swpaj2ctp9353fh` FOREIGN KEY (`use_case_data_id`) REFERENCES `use_case_data` (`id`),
  CONSTRAINT `FKsmotou867oymqvyi6u5o23wba` FOREIGN KEY (`fruit_seeds_attribute_id`) REFERENCES `use_case_data_attribute` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=380 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `use_case_data_attribute`
--

LOCK TABLES `use_case_data_attribute` WRITE;
/*!40000 ALTER TABLE `use_case_data_attribute` DISABLE KEYS */;
INSERT INTO `use_case_data_attribute` VALUES (5,'GridListEntity',2,'DomainEntity','List','The list of contracts for sales channel department','DataArray','Entity','Sales agent contract for sales channel department list',1,'فهرست قرارداد',NULL,'','',NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(6,'GridListSearchField',1,'Primitive','Mono','Search sales agent title of contract','SalesAgentTitle','String','Sales Agent Title',NULL,'عنوان نمایندگی',NULL,'','',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(7,'GridListSearchField',1,'Primitive','Mono','Search id of contract','ContractId','Long','Contract Id',NULL,'شناسه قرارداد',NULL,'','',NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(8,'ViewId',5,'Primitive','Mono','contract id to find','Id','Long','Contract Id',NULL,'شناسه قرارداد',NULL,'','',NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(9,'ViewEntity',6,'DomainEntity','Mono','The contract for sales channel department','Entity','Entity','Sales Agent Contract For Sales Channel Department',1,'قرارداد',NULL,'','',NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(10,'UpdateId',9,'Primitive','Mono','The contract id','Id','Long','Contract Id',NULL,'شناسه',17,'','',NULL,0,0,NULL,'شناسه مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(12,'UpdateField',9,'Primitive','Mono','The contract start date','StartDate','JavaDate','Contract Start Date',NULL,'تاریخ شروع قرارداد',19,'','',NULL,0,0,NULL,'تاریخ شروع قرارداد مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(13,'UpdateField',9,'Primitive','Mono','The contract finish date','FinishDate','JavaDate','Contract Finish Date',NULL,'تاریخ پایان قرارداد',20,'','',NULL,0,0,NULL,'تاریخ پایان قرارداد مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(15,'UpdateResult',10,'Primitive','Mono','Is update successful','IsSuccessful','Boolean','Is Update Successful',NULL,'آیا ویرایش موفق بود',NULL,'','',NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(16,'UpdateId',12,'Primitive','Mono','The id of contract','id','Long','Contract Id',NULL,'شناسه قرارداد',NULL,'','',NULL,0,0,NULL,'شناسه قرارداد مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(17,'UpdateId',11,'Primitive','Mono','The contract id','Id','Long','Contract Id',NULL,'شناسه',NULL,'Id','',NULL,0,0,NULL,'شناسه مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(19,'UpdateField',11,'Primitive','Mono','The contract start date','StartDate','JavaDate','Contract Start Date',NULL,'تاریخ شروع قرارداد',NULL,'StartDate','',NULL,0,0,NULL,'تاریخ شروع قرارداد مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(20,'UpdateField',11,'Primitive','Mono','The contract finish date','FinishDate','JavaDate','Contract Finish Date',NULL,'تاریخ پایان قرارداد',NULL,'FinishDate','',NULL,0,0,NULL,'تاریخ پایان قرارداد مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(22,'UpdateField',11,'SelectEnum','Mono','The status of contract','Status','Enum','Status',NULL,'وضعیت قرارداد',NULL,'ContractStatus','',NULL,0,0,NULL,'وضعیت قرارداد مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(23,'UpdateField',9,'SelectEnum','Mono','The status of contract','Status','Enum','Status',NULL,'وضعیت قرارداد',22,'','',NULL,0,0,NULL,'وضعیت قرارداد مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(26,'UpdateField',11,'SelectEntity','Mono','The sales agent of contract','SalesAgent','Entity','Sales Agent',NULL,'نماینده',NULL,'SalesAgent','',2,0,0,NULL,'نماینده مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(27,'UpdateField',9,'SelectEntity','Mono','The sales agent of contract','SalesAgent','Entity','Sales Agent',NULL,'نماینده',26,'','',2,0,0,NULL,'نماینده مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(28,'GridListEntity',14,'DomainEntity','List','The list of deposits for sales channel department','DataArray','Entity','Deposit for sales channel department list',2,'فهرست واریزی',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(29,'GridListSearchField',13,'Primitive','Mono','Search sales agent title of deposit','SalesAgentTitle','String','Sales Agent Title',NULL,'عنوان نمایندگی',NULL,'','',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(30,'GridListSearchField',13,'Primitive','Mono','Search financial document number of deposit','FinancialDocumentNumber','Long','Financial document number',NULL,'شماره سند',NULL,'','',NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(31,'GridListSearchField',13,'Primitive','Mono','Search deposit date begin','DepositDateBegin','JavaDate','Deposit date begin',NULL,'تاریخ واریز از',NULL,'','',NULL,1,2,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(32,'GridListSearchField',13,'Primitive','Mono','Search deposit date end','DepositDateEnd','JavaDate','Deposit date end',NULL,'تاریخ واریز تا',NULL,'','',NULL,2,2,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(33,'GridListSearchField',13,'Primitive','Mono','Search financial document amount begin','FinancialDocumentAmountBegin','Long','Financial document amount begin',NULL,'مبلغ سند از',NULL,'','',NULL,1,3,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(34,'GridListSearchField',13,'Primitive','Mono','Search financial document amount end','FinancialDocumentAmountEnd','Long','Financial document amount end',NULL,'مبلغ سند تا',NULL,'','',NULL,2,3,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(35,'ViewId',17,'Primitive','Mono','deposit id to find','Id','Long','Deposit id',NULL,'شناسه سند واریزی',NULL,'','',NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(36,'ViewEntity',18,'DomainEntity','Mono','The deposit for sales channel department','Entity','Entity','Desposit for sales channel department',2,'سند واریزی',NULL,'','',NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(37,'UpdateId',21,'Primitive','Mono','The deposit id','Id','Long','Deposit Id',NULL,'شناسه',47,'','',NULL,0,0,NULL,'شناسه مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(38,'UpdateField',21,'Primitive','Mono','The financial document number','FinancialDocumentNumber','Long','Financial document number',NULL,'شماره سند',48,'','',NULL,0,0,NULL,'شماره سند مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(39,'UpdateField',21,'Primitive','Mono','The financial document amount','FinancialDocumentAmount','Long','Financial document amount',NULL,'مبلغ سند',49,'','',NULL,0,0,NULL,'مبلغ سند مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(40,'UpdateField',21,'Primitive','Mono','The deposit date','DepositDate','JavaDate','Deposit date',NULL,'تاریخ سند',50,NULL,NULL,NULL,0,0,NULL,'تاریخ سند مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(41,'UpdateField',21,'SelectEntity','Mono','The sales agent of deposit','SalesAgent','Entity','SalesAgent',NULL,'نمایندگی',51,NULL,NULL,2,0,0,NULL,'نمایندگی مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(42,'UpdateField',21,'Primitive','Mono','The bank name','BankName','String','Bank name',NULL,'بانک',52,NULL,NULL,NULL,0,0,NULL,'بانک مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(43,'UpdateField',21,'Primitive','Mono','The bank branch name','BankBranchName','String','Bank branch name',NULL,'شعبه بانک',53,NULL,NULL,NULL,0,0,NULL,'شعبه بانک مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(44,'UpdateField',21,'Primitive','Mono','The bank account number','BankAccountNumber','String','Bank account number',NULL,'شماره حساب',54,NULL,NULL,NULL,0,0,NULL,'شماره حساب مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(45,'UpdateResult',22,'Primitive','Mono','Is update successful','IsSuccessful','Boolean','Is Update Successful',NULL,'آیا ویرایش موفق بود',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(46,'UpdateId',23,'Primitive','Mono','The id of deposit','id','Long','Deposit Id',NULL,'شناسه واریزی',NULL,'','',NULL,0,0,NULL,'شناسه واریزی مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(47,'UpdateId',24,'Primitive','Mono','The deposit id','Id','Long','Deposit Id',NULL,'شناسه',NULL,'Id','',NULL,0,0,NULL,'شناسه مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(48,'UpdateField',24,'Primitive','Mono','The financial document number','FinancialDocumentNumber','Long','Financial document number',NULL,'شماره سند',NULL,'FinancialDocument.FinancialDocumentNumber','',NULL,0,0,NULL,'شماره سند مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(49,'UpdateField',24,'Primitive','Mono','The financial document amount','FinancialDocumentAmount','Long','Financial document amount',NULL,'مبلغ سند',NULL,'FinancialDocument.Amount','',NULL,0,0,NULL,'مبلغ سند مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(50,'UpdateField',24,'Primitive','Mono','The deposit date','DepositDate','JavaDate','Deposit date',NULL,'تاریخ سند',NULL,'DepositDate',NULL,NULL,0,0,NULL,'تاریخ سند مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(51,'UpdateField',24,'SelectEntity','Mono','The sales agent of deposit','SalesAgent','Entity','SalesAgent',NULL,'نمایندگی',NULL,'FinancialDocument.SalesAgent',NULL,2,0,0,NULL,'نمایندگی مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(52,'UpdateField',24,'Primitive','Mono','The bank name','BankName','String','Bank name',NULL,'بانک',NULL,'BankName',NULL,NULL,0,0,NULL,'بانک مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(53,'UpdateField',24,'Primitive','Mono','The bank branch name','BankBranchName','String','Bank branch name',NULL,'شعبه بانک',NULL,'BankBranchName',NULL,NULL,0,0,NULL,'شعبه بانک مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(54,'UpdateField',24,'Primitive','Mono','The bank account number','BankAccountNumber','String','Bank account number',NULL,'شماره حساب',NULL,'BankAccountNumber',NULL,NULL,0,0,NULL,'شماره حساب مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(55,'AddNewId',25,'Primitive','Mono','The deposit id','Id','Long','Deposit Id',NULL,'شناسه',47,'','',NULL,0,0,NULL,'شناسه مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(56,'AddNewField',25,'Primitive','Mono','The financial document number','FinancialDocumentNumber','Long','Financial document number',NULL,'شماره سند',48,'','',NULL,0,0,NULL,'شماره سند مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(57,'AddNewField',25,'Primitive','Mono','The financial document amount','FinancialDocumentAmount','Long','Financial document amount',NULL,'مبلغ سند',49,'','',NULL,0,0,NULL,'مبلغ سند مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(58,'AddNewField',25,'Primitive','Mono','The deposit date','DepositDate','JavaDate','Deposit date',NULL,'تاریخ سند',50,NULL,NULL,NULL,0,0,NULL,'تاریخ سند مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(59,'AddNewField',25,'SelectEntity','Mono','The sales agent of deposit','SalesAgent','Entity','SalesAgent',NULL,'نمایندگی',51,NULL,NULL,2,0,0,NULL,'نمایندگی مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(60,'AddNewField',25,'Primitive','Mono','The bank name','BankName','String','Bank name',NULL,'بانک',52,NULL,NULL,NULL,0,0,NULL,'بانک مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(61,'AddNewField',25,'Primitive','Mono','The bank branch name','BankBranchName','String','Bank branch name',NULL,'شعبه بانک',53,NULL,NULL,NULL,0,0,NULL,'شعبه بانک مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(62,'AddNewField',25,'Primitive','Mono','The bank account number','BankAccountNumber','String','Bank account number',NULL,'شماره حساب',54,NULL,NULL,NULL,0,0,NULL,'شماره حساب مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(63,'AddNewResult',26,'Primitive','Mono','Is update successful','IsSuccessful','Boolean','Is Update Successful',NULL,'آیا ویرایش موفق بود',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(64,'AddNewId',27,'Primitive','Mono','The id of deposit','Id','Long','Deposit Id',NULL,'شناسه واریزی',NULL,'','',NULL,0,0,NULL,'شناسه واریزی مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(65,'AddNewId',28,'Primitive','Mono','The deposit id','Id','Long','Deposit Id',NULL,'شناسه',NULL,'Id','',NULL,0,0,NULL,'شناسه مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(66,'AddNewField',28,'Primitive','Mono','The financial document number','FinancialDocumentNumber','Long','Financial document number',NULL,'شماره سند',NULL,'FinancialDocument.FinancialDocumentNumber','',NULL,0,0,NULL,'شماره سند مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(67,'AddNewField',28,'Primitive','Mono','The financial document amount','FinancialDocumentAmount','Long','Financial document amount',NULL,'مبلغ سند',NULL,'FinancialDocument.Amount','',NULL,0,0,NULL,'مبلغ سند مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(68,'AddNewField',28,'Primitive','Mono','The deposit date','DepositDate','JavaDate','Deposit date',NULL,'تاریخ سند',NULL,'DepositDate',NULL,NULL,0,0,NULL,'تاریخ سند مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(69,'AddNewField',28,'SelectEntity','Mono','The sales agent of deposit','SalesAgent','Entity','SalesAgent',NULL,'نمایندگی',NULL,'FinancialDocument.SalesAgent',NULL,2,0,0,NULL,'نمایندگی مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(70,'AddNewField',28,'Primitive','Mono','The bank name','BankName','String','Bank name',NULL,'بانک',NULL,'BankName',NULL,NULL,0,0,NULL,'بانک مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(71,'AddNewField',28,'Primitive','Mono','The bank branch name','BankBranchName','String','Bank branch name',NULL,'شعبه بانک',NULL,'BankBranchName',NULL,NULL,0,0,NULL,'شعبه بانک مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(72,'AddNewField',28,'Primitive','Mono','The bank account number','BankAccountNumber','String','Bank account number',NULL,'شماره حساب',NULL,'BankAccountNumber',NULL,NULL,0,0,NULL,'شماره حساب مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(73,'DeleteId',29,'Primitive','Mono','The deposit id','Id','Long','Deposit id',NULL,'شناسه واریزی',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(74,'DeleteResult',30,'Primitive','Mono','The delete result','IsSuccessful','Boolean','Is Delete Successful',NULL,'آیا حذف موفق بود',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(75,'DeleteId',31,'Primitive','Mono','The deposit id','Id','Long','Deposit id',NULL,'شناسه واریزی',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(76,'DeleteEntity',32,'DomainEntity','Mono','The deposit for sales channel department','Entity','Entity','Desposit for sales channel department',2,'سند واریزی',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(77,'GridListSearchField',33,'Primitive','Mono','Search sales agent title of cheque','SalesAgentTitle','String','Sales Agent Title',NULL,'عنوان نمایندگی',NULL,'','',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(78,'GridListSearchField',33,'Primitive','Mono','Search financial document number of cheque','FinancialDocumentNumber','Long','Financial document number',NULL,'شماره سند',NULL,'','',NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(79,'GridListSearchField',33,'Primitive','Mono','Search cheque receive date begin','ReceiveDateBegin','JavaDate','Receive date begin',NULL,'تاریخ دریافت از',NULL,'','',NULL,3,1,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(80,'GridListSearchField',33,'Primitive','Mono','Search cheque receive date end','ReceiveDateEnd','JavaDate','Receive date end',NULL,'تاریخ دریافت تا',NULL,'','',NULL,4,1,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(81,'GridListSearchField',33,'Primitive','Mono','Search cheque due date begin','DueDateBegin','JavaDate','Due date begin',NULL,'تاریخ سررسید از',NULL,'','',NULL,1,2,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(82,'GridListSearchField',33,'Primitive','Mono','Search cheque due date end','DueDateEnd','JavaDate','Due date end',NULL,'تاریخ سررسید تا',NULL,'','',NULL,2,2,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(83,'GridListSearchField',33,'Primitive','Mono','Search financial document amount begin','FinancialDocumentAmountBegin','Long','Financial document amount begin',NULL,'مبلغ سند از',NULL,'','',NULL,3,2,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(84,'GridListSearchField',33,'Primitive','Mono','Search financial document amount end','FinancialDocumentAmountEnd','Long','Financial document amount end',NULL,'مبلغ سند تا',NULL,'','',NULL,4,2,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(85,'GridListSearchField',33,'SelectEnum','Mono','Search cheque status','Status','Enum','Cheque status',NULL,'وضعیت چک',NULL,NULL,NULL,NULL,1,3,1,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(87,'GridListEntity',34,'DomainEntity','List','The list of cheque for sales channel department','DataArray','Entity','Cheques for sales channel department list',3,'فهرست چک',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(88,'ViewId',37,'Primitive','Mono','Cheque id to find','Id','Long','Cheque id',NULL,'شناسه سند چک دریافتی',NULL,'','',NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(89,'ViewEntity',38,'DomainEntity','Mono','The cheque for sales channel department','Entity','Entity','Cheque for sales channel department',3,'چک دریافتی',NULL,'','',NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(90,'GridListSearchField',36,'SelectEnum','Mono','Search cheque candidates statuses','Status','Enum','Cheque candidate status list',NULL,'وضعیت های چک',NULL,NULL,NULL,NULL,0,0,1,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(91,'UpdateId',41,'Primitive','Mono','The cheque id','Id','Long','Deposit Id',NULL,'شناسه',102,'','',NULL,0,0,NULL,'شناسه مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(92,'UpdateField',41,'Primitive','Mono','The financial document number','FinancialDocumentNumber','Long','Financial document number',NULL,'شماره سند',103,'','',NULL,0,0,NULL,'شماره سند مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(93,'UpdateField',41,'Primitive','Mono','The financial document amount','FinancialDocumentAmount','Long','Financial document amount',NULL,'مبلغ سند',104,'','',NULL,0,0,NULL,'مبلغ سند مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(94,'UpdateField',41,'Primitive','Mono','The cheque received date','ReceivedDate','JavaDate','Cheque received date',NULL,'تاریخ دریافت چک',105,NULL,NULL,NULL,0,0,NULL,'تاریخ دریافت چک مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(95,'UpdateField',41,'Primitive','Mono','The cheque due date','DueDate','JavaDate','Cheque due date',NULL,'تاریخ سررسید چک',106,NULL,NULL,NULL,0,0,NULL,'تاریخ سررسید چک مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(96,'UpdateField',41,'Primitive','Mono','The bank name','BankName','String','Bank name',NULL,'بانک',107,NULL,NULL,NULL,0,0,NULL,'بانک مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(97,'UpdateField',41,'Primitive','Mono','The bank branch name','BankBranchName','String','Bank branch name',NULL,'شعبه بانک',108,NULL,NULL,NULL,0,0,NULL,'شعبه بانک مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(98,'UpdateField',41,'SelectEntity','Mono','The sales agent of cheque','SalesAgent','Entity','SalesAgent',NULL,'نمایندگی',109,NULL,NULL,2,0,0,NULL,'نمایندگی مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(99,'UpdateField',41,'SelectEnum','Mono','The sales agent of deposit','Status','Enum','Status',NULL,'وضعیت چک',110,NULL,NULL,NULL,0,0,NULL,'وضعیت چک مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(100,'UpdateResult',42,'Primitive','Mono','Is update successful','IsSuccessful','Boolean','Is Update Successful',NULL,'آیا ویرایش موفق بود',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(101,'UpdateId',43,'Primitive','Mono','The id of cheque for update','id','Long','Cheque Id',NULL,'شناسه چک دریافتی',NULL,'','',NULL,0,0,NULL,'شناسه چک دریافتی مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(102,'UpdateId',44,'Primitive','Mono','The cheque id','Id','Long','Deposit Id',NULL,'شناسه',NULL,'Id','',NULL,0,0,NULL,'شناسه مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(103,'UpdateField',44,'Primitive','Mono','The financial document number','FinancialDocumentNumber','Long','Financial document number',NULL,'شماره سند',NULL,'FinancialDocument.FinancialDocumentNumber','',NULL,0,0,NULL,'شماره سند مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(104,'UpdateField',44,'Primitive','Mono','The financial document amount','FinancialDocumentAmount','Long','Financial document amount',NULL,'مبلغ سند',NULL,'FinancialDocument.Amount','',NULL,0,0,NULL,'مبلغ سند مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(105,'UpdateField',44,'Primitive','Mono','The cheque received date','ReceiveDate','JavaDate','Cheque received date',NULL,'تاریخ دریافت چک',NULL,'ReceiveDate',NULL,NULL,0,0,NULL,'تاریخ دریافت چک مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(106,'UpdateField',44,'Primitive','Mono','The cheque due date','DueDate','JavaDate','Cheque due date',NULL,'تاریخ سررسید چک',NULL,'DueDate',NULL,NULL,0,0,NULL,'تاریخ سررسید چک مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(107,'UpdateField',44,'Primitive','Mono','The bank name','BankName','String','Bank name',NULL,'بانک',NULL,'BankName',NULL,NULL,0,0,NULL,'بانک مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(108,'UpdateField',44,'Primitive','Mono','The bank branch name','BankBranchName','String','Bank branch name',NULL,'شعبه بانک',NULL,'BankBranchName',NULL,NULL,0,0,NULL,'شعبه بانک مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(109,'UpdateField',44,'SelectEntity','Mono','The sales agent of cheque','SalesAgent','Entity','SalesAgent',NULL,'نمایندگی',NULL,'FinancialDocument.SalesAgent',NULL,2,0,0,NULL,'نمایندگی مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(110,'UpdateField',44,'SelectEnum','Mono','The sales agent of deposit','Status','Enum','Status',NULL,'وضعیت چک',NULL,'Status',NULL,NULL,0,0,NULL,'وضعیت چک مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(111,'AddNewId',45,'Primitive','Mono','The cheque id','Id','Long','Deposit Id',NULL,'شناسه',122,'','',NULL,0,0,NULL,'شناسه مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(112,'AddNewField',45,'Primitive','Mono','The financial document number','FinancialDocumentNumber','Long','Financial document number',NULL,'شماره سند',123,'','',NULL,0,0,NULL,'شماره سند مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(113,'AddNewField',45,'Primitive','Mono','The financial document amount','FinancialDocumentAmount','Long','Financial document amount',NULL,'مبلغ سند',124,'','',NULL,0,0,NULL,'مبلغ سند مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(114,'AddNewField',45,'Primitive','Mono','The cheque received date','ReceivedDate','JavaDate','Cheque received date',NULL,'تاریخ دریافت چک',125,NULL,NULL,NULL,0,0,NULL,'تاریخ دریافت چک مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(115,'AddNewField',45,'Primitive','Mono','The cheque due date','DueDate','JavaDate','Cheque due date',NULL,'تاریخ سررسید چک',126,NULL,NULL,NULL,0,0,NULL,'تاریخ سررسید چک مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(116,'AddNewField',45,'Primitive','Mono','The bank name','BankName','String','Bank name',NULL,'بانک',127,NULL,NULL,NULL,0,0,NULL,'بانک مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(117,'AddNewField',45,'Primitive','Mono','The bank branch name','BankBranchName','String','Bank branch name',NULL,'شعبه بانک',128,NULL,NULL,NULL,0,0,NULL,'شعبه بانک مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(118,'AddNewField',45,'SelectEntity','Mono','The sales agent of cheque','SalesAgent','Entity','SalesAgent',NULL,'نمایندگی',129,NULL,NULL,2,0,0,NULL,'نمایندگی مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(119,'AddNewField',45,'SelectEnum','Mono','The sales agent of deposit','Status','Enum','Status',NULL,'وضعیت چک',130,NULL,NULL,NULL,0,0,1,'وضعیت چک مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(120,'AddNewResult',46,'Primitive','Mono','Is update successful','IsSuccessful','Boolean','Is Update Successful',NULL,'آیا ویرایش موفق بود',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(121,'AddNewId',47,'Primitive','Mono','The id of cheque for update','id','Long','Cheque Id',NULL,'شناسه چک دریافتی',NULL,'','',NULL,0,0,NULL,'شناسه چک دریافتی مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(122,'AddNewId',48,'Primitive','Mono','The cheque id','Id','Long','Deposit Id',NULL,'شناسه',NULL,'Id','',NULL,0,0,NULL,'شناسه مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(123,'AddNewField',48,'Primitive','Mono','The financial document number','FinancialDocumentNumber','Long','Financial document number',NULL,'شماره سند',NULL,'FinancialDocument.FinancialDocumentNumber','',NULL,0,0,NULL,'شماره سند مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(124,'AddNewField',48,'Primitive','Mono','The financial document amount','FinancialDocumentAmount','Long','Financial document amount',NULL,'مبلغ سند',NULL,'FinancialDocument.Amount','',NULL,0,0,NULL,'مبلغ سند مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(125,'AddNewField',48,'Primitive','Mono','The cheque received date','ReceiveDate','JavaDate','Cheque received date',NULL,'تاریخ دریافت چک',NULL,'ReceiveDate',NULL,NULL,0,0,NULL,'تاریخ دریافت چک مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(126,'AddNewField',48,'Primitive','Mono','The cheque due date','DueDate','JavaDate','Cheque due date',NULL,'تاریخ سررسید چک',NULL,'DueDate',NULL,NULL,0,0,NULL,'تاریخ سررسید چک مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(127,'AddNewField',48,'Primitive','Mono','The bank name','BankName','String','Bank name',NULL,'بانک',NULL,'BankName',NULL,NULL,0,0,NULL,'بانک مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(128,'AddNewField',48,'Primitive','Mono','The bank branch name','BankBranchName','String','Bank branch name',NULL,'شعبه بانک',NULL,'BankBranchName',NULL,NULL,0,0,NULL,'شعبه بانک مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(129,'AddNewField',48,'SelectEntity','Mono','The sales agent of cheque','SalesAgent','Entity','SalesAgent',NULL,'نمایندگی',NULL,'FinancialDocument.SalesAgent',NULL,2,0,0,NULL,'نمایندگی مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(130,'AddNewField',48,'SelectEnum','Mono','The sales agent of deposit','Status','Enum','Status',NULL,'وضعیت چک',NULL,'Status',NULL,NULL,0,0,1,'وضعیت چک مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(131,'DeleteId',49,'Primitive','Mono','The cheque id','Id','Long','Cheque id',NULL,'شناسه چک دریافتی',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(132,'DeleteResult',50,'Primitive','Mono','The delete result','IsSuccessful','Boolean','Is Delete Successful',NULL,'آیا حذف موفق بود',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(133,'DeleteId',51,'Primitive','Mono','The cheque id','Id','Long','Cheque id',NULL,'شناسه چک دریافتی',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(134,'DeleteEntity',52,'DomainEntity','Mono','The cheque for sales channel department','Entity','Entity','Cheque for sales channel department',3,'چک دریافتی',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(135,'GridListSearchField',1,'Primitive','Mono','Search start date begin','StartDateBegin','JavaDate','Start date begin',NULL,'شروع قرارداد از',NULL,'','',NULL,1,2,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(136,'GridListSearchField',1,'Primitive','Mono','Search start date end','StartDateEnd','JavaDate','Start date end',NULL,'شروع قرارداد تا',NULL,'','',NULL,2,2,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(137,'GridListSearchField',1,'Primitive','Mono','Search finish date begin','FinishDateBegin','JavaDate','Finish date begin',NULL,'پایان قرارداد از',NULL,'','',NULL,3,2,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(138,'GridListSearchField',1,'Primitive','Mono','Search finish date end','FinishDateEnd','JavaDate','Finish date end',NULL,'پایان قرارداد تا',NULL,'','',NULL,4,2,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(139,'UpdateField',9,'Primitive','Mono','The Minimum number of activated serials','MinimumNumberOfActivatedSerials','Long','Minimum number of activated serials',NULL,'حداقل درصد فعالسازی سریال',141,'','',NULL,0,0,NULL,'حداقل درصد فعالسازی سریال مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(140,'UpdateField',9,'Primitive','Mono','The Maximum payment amount per sales order','MaximumPaymentAmount','Long','Maximum payment amount',NULL,'حداکثر مبلغ خرید',142,'','',NULL,0,0,NULL,'حداکثر مبلغ خرید مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(141,'UpdateField',11,'Primitive','Mono','The Minimum number of activated serials','MinimumNumberOfActivatedSerials','Long','Minimum number of activated serials',NULL,'حداقل درصد فعالسازی سریال',NULL,'MinimumNumberOfActivatedSerials','',NULL,0,0,NULL,'حداقل درصد فعالسازی سریال مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(142,'UpdateField',11,'Primitive','Mono','The Maximum payment amount per sales order','MaximumPaymentAmount','Long','Maximum payment amount',NULL,'حداکثر مبلغ خرید',NULL,'MaximumPaymentAmount','',NULL,0,0,NULL,'حداکثر مبلغ خرید مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(143,'GridListSearchField',53,'Primitive','Mono','Search sales agent title of draft invoice','SalesAgentTitle','String','Sales Agent Title',NULL,'عنوان نمایندگی',NULL,'','',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(144,'GridListSearchField',53,'Primitive','Mono','Search draft invoice number','DraftInvoiceNumber','Long','Draft invoice number',NULL,'شماره پیش فاکتور',NULL,'','',NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(145,'GridListSearchField',53,'SelectEnum','Mono','Search status','Status','Enum','Status',NULL,'وضعیت پیش فاکتور',NULL,NULL,NULL,NULL,3,1,2,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(146,'GridListSearchField',53,'SelectEnum','Mono','Search finalize status','FinalizeStatus','Enum','Finalize Status',NULL,'وضعیت نهایی',NULL,NULL,NULL,NULL,3,1,3,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(147,'GridListSearchField',53,'Primitive','Mono','Search create date date begin','CreateDateBegin','JavaDate','Create date begin',NULL,'تاریخ ثبت از',NULL,'','',NULL,1,2,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(148,'GridListSearchField',53,'Primitive','Mono','Search create date date end','CreateDateEnd','JavaDate','Create date end',NULL,'تاریخ ثبت تا',NULL,'','',NULL,2,2,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(149,'GridListSearchField',53,'Primitive','Mono','Search draft invoice date begin','DraftInvoiceDateBegin','JavaDate','Draft invoice date begin',NULL,'تاریخ پیش فاکتور از',NULL,'','',NULL,3,2,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(150,'GridListSearchField',53,'Primitive','Mono','Search draft invoice date end','DraftInvoiceDateEnd','JavaDate','Draft invoice date end',NULL,'تاریخ پیش فاکتور تا',NULL,'','',NULL,4,2,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(151,'GridListSearchField',53,'Primitive','Mono','Search product amount begin','ProductAmountBegin','Long','Product amount begin',NULL,'مبلغ محصولات از',NULL,'','',NULL,1,3,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(152,'GridListSearchField',53,'Primitive','Mono','Search product amount end','ProductAmountEnd','Long','Product amount end',NULL,'مبلغ محصولات تا',NULL,'','',NULL,2,3,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(153,'GridListSearchField',53,'Primitive','Mono','Search final amount payable begin','FinalAmountPayableBegin','Long','Final amount payable begin',NULL,'مبلغ نهایی پرداختنی از',NULL,'','',NULL,3,3,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(154,'GridListSearchField',53,'Primitive','Mono','Search final amount payable end','FinalAmountPayableEnd','Long','Final amount payable end',NULL,'مبلغ نهایی پرداختنی تا',NULL,'','',NULL,4,3,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(155,'GridListEntity',54,'DomainEntity','List','The list of draft invoice for sales channel department','DataArray','Entity','Draft invoice for sales channel department list',4,'فهرست پیش فاکتور',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(156,'GridListSearchField',56,'SelectEnum','Mono','Search draft invoice candidates statuses','Status','Enum','Draft invoice candidate status list',NULL,'وضعیت های چک',NULL,NULL,NULL,NULL,0,0,2,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(157,'GridListSearchField',56,'SelectEnum','Mono','Search draft invoice candidates finalize statuses','FinalizeStatus','Enum','Draft invoice candidate finalize status list',NULL,'وضعیت نهایی های چک',NULL,NULL,NULL,NULL,0,0,3,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(158,'ViewId',57,'Primitive','Mono','Draft invoice id to find','Id','Long','Draft invoice id',NULL,'شناسه پیش فاکتور',NULL,'','',NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(159,'ViewEntity',58,'DomainEntity','Mono','The draft invoice for sales channel department','Entity','Entity','Draft invoice for sales channel department',4,'پیش فاکتور',NULL,'','',NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(160,'UpdateId',61,'Primitive','Mono','The id of draft invoice','Id','Long','Draft invoice Id',NULL,'شناسه پیش فاکتور',173,NULL,NULL,NULL,0,0,NULL,'شناسه پیش فاکتور مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(161,'UpdateField',61,'SelectEntity','Mono','The sales agent of draft invoice','SalesAgent','Entity','Sales agent ',NULL,'نمایندگی',174,NULL,NULL,2,0,0,NULL,'نمایندگی مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(162,'UpdateField',61,'Primitive','Mono','The draft invoice number','DraftInvoiceNumber','Long','Draft invoice number',NULL,'شماره پیش فاکتور',175,NULL,NULL,NULL,0,0,NULL,'شماره پیش فاکتور مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(163,'UpdateField',61,'Primitive','Mono','The draft invoice date','DraftInvoiceDate','JavaDate','Draft invoice date',NULL,'تاریخ پیش فاکتور',176,NULL,NULL,NULL,0,0,NULL,'تاریخ پیش فاکتور مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(164,'UpdateField',61,'SelectEnum','Mono','The status','Status','Enum','Status',NULL,'وضعیت',177,NULL,NULL,NULL,0,0,2,'وضعیت مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(165,'UpdateField',61,'SelectEnum','Mono','The finalize status','FinalizeStatus','Enum','Finalize Status',NULL,'وضعیت پیش فاکتور',178,NULL,NULL,NULL,0,0,3,'وضعیت پیش فاکتور مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(167,'UpdateField',61,'Primitive','Mono','The product amount','ProductAmount','Long','Product amount',NULL,'مبلغ محصولات',180,NULL,NULL,NULL,0,0,NULL,'مبلغ محصولات مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(168,'UpdateField',61,'Primitive','Mono','The discount amount','DiscountAmount','Long','Discount amount',NULL,'مبلغ تخفیف',181,NULL,NULL,NULL,0,0,NULL,'مبلغ تخفیف مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(169,'UpdateField',61,'Primitive','Mono','The final amount','FinalAmount','Long','Final amount',NULL,'مبلغ نهایی',182,NULL,NULL,NULL,0,0,NULL,'مبلغ نهایی مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(170,'UpdateField',61,'Primitive','Mono','The final payable amount','FinalAmountPayable','Long','Final amount payable',NULL,'مبلغ نهایی پرداختنی',183,NULL,NULL,NULL,0,0,NULL,'مبلغ نهایی پرداختنی مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(171,'UpdateResult',62,'Primitive','Mono','Is update successful','IsSuccessful','Boolean','Is Update Successful',NULL,'آیا ویرایش موفق بود',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(172,'UpdateId',63,'Primitive','Mono','The id of draft invoice for update','id','Long','Draft invoice Id',NULL,'شناسه پیش فاکتور',NULL,'','',NULL,0,0,NULL,'شناسه پیش فاکتور مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(173,'UpdateId',64,'Primitive','Mono','The id of draft invoice','Id','Long','Draft invoice Id',NULL,'شناسه پیش فاکتور',NULL,'Id',NULL,NULL,0,0,NULL,'شناسه پیش فاکتور مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(174,'UpdateField',64,'SelectEntity','Mono','The sales agent of draft invoice','SalesAgent','Entity','Sales agent ',NULL,'نمایندگی',NULL,'SalesAgent',NULL,2,0,0,NULL,'نمایندگی مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(175,'UpdateField',64,'Primitive','Mono','The draft invoice number','DraftInvoiceNumber','Long','Draft invoice number',NULL,'شماره پیش فاکتور',NULL,'DraftInvoiceNumber',NULL,NULL,0,0,NULL,'شماره پیش فاکتور مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(176,'UpdateField',64,'Primitive','Mono','The draft invoice date','DraftInvoiceDate','JavaDate','Draft invoice date',NULL,'تاریخ پیش فاکتور',NULL,'DraftInvoiceDate',NULL,NULL,0,0,NULL,'تاریخ پیش فاکتور مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(177,'UpdateField',64,'SelectEnum','Mono','The status','Status','Enum','Status',NULL,'وضعیت پیش فاکتور',NULL,'Status',NULL,NULL,0,0,2,'وضعیت پیش فاکتور مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(178,'UpdateField',64,'SelectEnum','Mono','The finalize status','FinalizeStatus','Enum','Finalize Status',NULL,'وضعیت نهایی',NULL,'FinalizeStatus',NULL,NULL,0,0,3,'وضعیت نهایی مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(180,'UpdateField',64,'Primitive','Mono','The product amount','ProductAmount','Long','Product amount',NULL,'مبلغ محصولات',NULL,'ProductAmount',NULL,NULL,0,0,NULL,'مبلغ محصولات مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(181,'UpdateField',64,'Primitive','Mono','The discount amount','DiscountAmount','Long','Discount amount',NULL,'مبلغ تخفیف',NULL,'DiscountAmount',NULL,NULL,0,0,NULL,'مبلغ تخفیف مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(182,'UpdateField',64,'Primitive','Mono','The final amount','FinalAmount','Long','Final amount',NULL,'مبلغ نهایی',NULL,'FinalAmount',NULL,NULL,0,0,NULL,'مبلغ نهایی مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(183,'UpdateField',64,'Primitive','Mono','The final payable amount','FinalAmountPayable','Long','Final amount payable',NULL,'مبلغ نهایی پرداختنی',NULL,'FinalAmountPayable',NULL,NULL,0,0,NULL,'مبلغ نهایی پرداختنی مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(206,'DeleteId',69,'Primitive','Mono','The draft invoice id','Id','Long','Draft invoice id',NULL,'شناسه پیش فاکتور',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(207,'DeleteResult',70,'Primitive','Mono','The delete result','IsSuccessful','Boolean','Is Delete Successful',NULL,'آیا حذف موفق بود',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(208,'DeleteId',71,'Primitive','Mono','The draft invoice id','Id','Long','Draft invoice id',NULL,'شناسه پیش فاکتور',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(209,'DeleteEntity',72,'DomainEntity','Mono','The draft invoice for sales channel department','Entity','Entity','Cheque for sales channel department',4,' چک دریافتی',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(210,'GridListSearchField',73,'Primitive','Mono','Search software name','SoftwareName','String','Software Name',NULL,'نام فنی نرم افزار',NULL,'','',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(211,'GridListSearchField',73,'Primitive','Mono','Search software title','SoftwareTitle','String','Software Title',NULL,'عنوان نرم افزار',NULL,'','',NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(212,'GridListEntity',74,'DomainEntity','List','The list of software for project manager','DataArray','Entity','Software list for project manager',5,'فهرست نرم افزارها',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(213,'ViewId',77,'Primitive','Mono','Software id to find','Id','Long','software id',NULL,'شناسه نرم افزار',NULL,'','',NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(214,'ViewEntity',78,'DomainEntity','Mono','software list for project manager','Entity','Entity','software for project manager',5,'نرم افزار',NULL,'','',NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(215,'UpdateId',81,'Primitive','Mono','The id of software','Id','Long','Software Id',NULL,'شناسه نرم افزار',223,NULL,NULL,NULL,0,0,NULL,'شناسه نرم افزار مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(216,'UpdateField',81,'Primitive','Mono','The software name','SoftwareName','String','Software name',NULL,'نام فنی نرم افزار',224,NULL,NULL,NULL,0,0,NULL,'نام فنی نرم افزار مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(217,'UpdateField',81,'Primitive','Mono','The software title','SoftwareTitle','String','Software title',NULL,'عنوان نرم افزار',225,NULL,NULL,NULL,0,0,NULL,'عنوان مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(218,'UpdateField',81,'Primitive','Mono','The software SpringBoot project path','SpringBootProjectPath','String','SpringBoot project path',NULL,'مسیر پروژه اسپرینگ بوت',226,NULL,NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(219,'UpdateField',81,'Primitive','Mono','The software SpringBoot project main package','SpringBootProjectMainPackage','String','SpringBoot project main package',NULL,'پکیج اصلی پروژه اسپرینگ بوت',227,NULL,NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(220,'UpdateField',81,'Primitive','Mono','The software SpringBoot java src path','SpringBootJavaSrcPath','String','SpringBoot java src path',NULL,'مسیر سورس پروژه اسپرینگ بوت',228,NULL,NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(221,'UpdateResult',82,'Primitive','Mono','Is update successful','IsSuccessful','Boolean','Is Update Successful',NULL,'آیا ویرایش موفق بود',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(222,'UpdateId',83,'Primitive','Mono','The id of software for update','id','Long','Software Id',NULL,'شناسه نرم افزار',NULL,'','',NULL,0,0,NULL,'شناسه نرم افزار مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(223,'UpdateId',84,'Primitive','Mono','The id of software','Id','Long','Software Id',NULL,'شناسه نرم افزار',NULL,'Id',NULL,NULL,0,0,NULL,'شناسه نرم افزار مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(224,'UpdateField',84,'Primitive','Mono','The software name','SoftwareName','String','Software name',NULL,'نام فنی نرم افزار',NULL,'Name',NULL,NULL,0,0,NULL,'نام فنی نرم افزار مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(225,'UpdateField',84,'Primitive','Mono','The software title','SoftwareTitle','String','Software title',NULL,'عنوان نرم افزار',NULL,'Title',NULL,NULL,0,0,NULL,'عنوان مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(226,'UpdateField',84,'Primitive','Mono','The SpringBoot project path','SpringBootProjectPath','String','SpringBoot project path',NULL,'مسیر پروژه اسپرینگ بوت',NULL,'SpringBootProjectPath',NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(227,'UpdateField',84,'Primitive','Mono','THe SpringBoot project main package','SpringBootProjectMainPackage','String','SpringBoot project main package',NULL,'پکیج اصلی پروژه اسپرینگ بوت',NULL,'SpringBootProjectMainPackage',NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(228,'UpdateField',84,'Primitive','Mono','The SpringBoot java src path','SpringBootJavaSrcPath','String','SpringBoot java src path',NULL,'مسیر سورس پروژه اسپرینگ بوت',NULL,'SpringBootJavaSrcPath',NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(229,'AddNewId',85,'Primitive','Mono','The id of software','Id','Long','Software Id',NULL,'شناسه نرم افزار',223,NULL,NULL,NULL,0,0,NULL,'شناسه نرم افزار مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(230,'AddNewField',85,'Primitive','Mono','The software name','SoftwareName','String','Software name',NULL,'نام فنی نرم افزار',224,NULL,NULL,NULL,0,0,NULL,'نام فنی نرم افزار مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(231,'AddNewField',85,'Primitive','Mono','The software title','SoftwareTitle','String','Software title',NULL,'عنوان نرم افزار',225,NULL,NULL,NULL,0,0,NULL,'عنوان مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(232,'AddNewField',85,'Primitive','Mono','The SpringBoot project path','SpringBootProjectPath','String','SpringBoot project path',NULL,'مسیر پروژه اسپرینگ بوت',226,NULL,NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(233,'AddNewField',85,'Primitive','Mono','THe SpringBoot project main package','SpringBootProjectMainPackage','String','SpringBoot project main package',NULL,'پکیج اصلی پروژه اسپرینگ بوت',227,NULL,NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(234,'AddNewField',85,'Primitive','Mono','The SpringBoot java src path','SpringBootJavaSrcPath','String','SpringBoot java src path',NULL,'مسیر سورس پروژه اسپرینگ بوت',228,NULL,NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(235,'AddNewResult',86,'Primitive','Mono','Is update successful','IsSuccessful','Boolean','Is Update Successful',NULL,'آیا ویرایش موفق بود',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(236,'AddNewId',87,'Primitive','Mono','The id of software for update','id','Long','Software Id',NULL,'شناسه نرم افزار',NULL,'','',NULL,0,0,NULL,'شناسه نرم افزار مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(237,'AddNewId',88,'Primitive','Mono','The id of software','Id','Long','Software Id',NULL,'شناسه نرم افزار',NULL,'Id',NULL,NULL,0,0,NULL,'شناسه نرم افزار مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(238,'AddNewField',88,'Primitive','Mono','The software name','SoftwareName','String','Software name',NULL,'نام فنی نرم افزار',NULL,'Name',NULL,NULL,0,0,NULL,'نام فنی نرم افزار مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(239,'AddNewField',88,'Primitive','Mono','The software title','SoftwareTitle','String','Software title',NULL,'عنوان نرم افزار',NULL,'Title',NULL,NULL,0,0,NULL,'عنوان مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(240,'AddNewField',88,'Primitive','Mono','The SpringBoot project path','SpringBootProjectPath','String','SpringBoot project path',NULL,'مسیر پروژه اسپرینگ بوت',NULL,'SpringBootProjectPath',NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(241,'AddNewField',88,'Primitive','Mono','THe SpringBoot project main package','SpringBootProjectMainPackage','String','SpringBoot project main package',NULL,'پکیج اصلی پروژه اسپرینگ بوت',NULL,'SpringBootProjectMainPackage',NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(242,'AddNewField',88,'Primitive','Mono','The SpringBoot java src path','SpringBootJavaSrcPath','String','SpringBoot java src path',NULL,'مسیر سورس پروژه اسپرینگ بوت',NULL,'SpringBootJavaSrcPath',NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(243,'DeleteId',89,'Primitive','Mono','The software id','Id','Long','The software id',NULL,'شناسه نرم افزار',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(244,'DeleteResult',90,'Primitive','Mono','The delete result','IsSuccessful','Boolean','The delete result',NULL,'آیا حذف موفق بود',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(245,'DeleteId',91,'Primitive','Mono','The software id','Id','Long','The software id',NULL,'شناسه نرم افزار',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(246,'DeleteEntity',92,'DomainEntity','Mono','The software for project manager','Entity','Entity','The software for project manager',5,'نرم افزار',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(248,'GridListSearchField',93,'Primitive','Mono','Search use case data attribute name','UseCaseDataAttributeName','String','Use case data attribute name',NULL,'نام فنی صفت',NULL,'','',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(249,'GridListEntity',94,'DomainEntity','List','The list of software for project manager','DataArray','Entity','Use case data attribute list for project manager',6,'فهرست صفت های داده ی مورد کاربری',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(250,'ViewId',97,'Primitive','Mono','Use case data attribute id to find','Id','Long','Use case data attribute id',NULL,'شناسه صفت',NULL,'','',NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(251,'ViewEntity',98,'DomainEntity','Mono','Use case data attribute list for project manager','Entity','Entity','Use case data attribute for project manager',6,'صفت مورد کاربری',NULL,'','',NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(252,'UpdateId',101,'Primitive','Mono','The id of use case data attribute','Id','Long','Use case data attribute Id',NULL,'شناسه صفت داده مورد کاربری',298,NULL,NULL,NULL,0,0,NULL,'شناسه صفت داده مورد کاربری مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(253,'UpdateField',101,'Primitive','Mono','The name','Name','String','Name',NULL,'نام فنی',299,NULL,NULL,NULL,0,0,NULL,'نام فنی مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(254,'UpdateField',101,'Primitive','Mono','The title','Title','String','Title',NULL,'عنوان',300,NULL,NULL,NULL,0,0,NULL,'عنوان مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(255,'UpdateField',101,'Primitive','Mono','The farsi title','FaTitle','String','FaTitle',NULL,'عنوان فارسی',301,NULL,NULL,NULL,0,0,NULL,'عنوان فارسی مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(256,'UpdateField',101,'Primitive','Mono','The description','Description','String','Description',NULL,'شرح',302,NULL,NULL,NULL,0,0,NULL,'شرح مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(257,'UpdateField',101,'Primitive','Mono','The ui row','UiRow','Long','UiRow',NULL,'شماره سطر',303,NULL,NULL,NULL,0,0,NULL,'شماره سطر مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(258,'UpdateField',101,'Primitive','Mono','The ui Column','UiColumn','Long','UiColumn',NULL,'شماره ستون',304,NULL,NULL,NULL,0,0,NULL,'شماره ستون مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(259,'UpdateField',101,'SelectEnum','Mono','The use case usage','UseCaseUsageEnum','Enum','Use case usage',NULL,'نوع کاربرد',305,NULL,NULL,NULL,0,0,4,'نوع کاربرد مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(260,'UpdateField',101,'SelectEnum','Mono','The attribute quantity','AttributeQuantity','Enum','Attribute quantity',NULL,'نوع شمارشی',306,NULL,NULL,NULL,0,0,5,'نوع شمارشی مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(261,'UpdateField',101,'SelectEnum','Mono','The attribute category','AttributeCategory','Enum','Attribute category',NULL,'دسته بندی',307,NULL,NULL,NULL,0,0,6,'دسته بندی مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(262,'UpdateField',101,'SelectEnum','Mono','The primitive attribute type','PrimitiveAttributeType','Enum','Primitive attribute type',NULL,'نوع صفت پایه',308,NULL,NULL,NULL,0,0,7,'نوع صفت پایه مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(263,'UpdateField',101,'Primitive','Mono','The setter of update path','SetterOfUpdatePath','String','Setter of update path',NULL,'مسیر setter',309,NULL,NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(264,'UpdateField',101,'Primitive','Mono','The getter of update path','GetterOfUpdatePath','String','Getter of update path',NULL,'مسیر getter',310,NULL,NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(265,'UpdateField',101,'Primitive','Mono','The nullable','Nullable','Boolean','Nullable',NULL,'آیا nullable است؟',311,NULL,NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(266,'UpdateField',101,'Primitive','Mono','The required','Required','Boolean','Required',NULL,'آیا الزامیست؟',312,NULL,NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(267,'UpdateField',101,'Primitive','Mono','The min length','MinLength','Long','Min length',NULL,'کمینه طول',313,NULL,NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(268,'UpdateField',101,'Primitive','Mono','The max length','MaxLength','Long','Max length',NULL,'بیشینه طول',314,NULL,NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(269,'UpdateField',101,'Primitive','Mono','The min','Min','Long','Min',NULL,'کمینه مقدار',315,NULL,NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(270,'UpdateField',101,'Primitive','Mono','The max','Max','Long','Max',NULL,'بیشینه مقدار',316,NULL,NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(271,'UpdateField',101,'Primitive','Mono','The error tip','ErrorTip','String','Error tip',NULL,'عنوان خطا',317,NULL,NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(272,'UpdateField',101,'SelectEntity','Mono','DomainEntityAttributeType','DomainEntityAttributeType','Entity','DomainEntityAttributeType',NULL,'موجودیت دامنه',318,NULL,NULL,14,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(273,'UpdateField',101,'SelectEntity','Mono','DataEntityAttributeType','DataEntityAttributeType','Entity','DataEntityAttributeType',NULL,'موجودیت دیتابیس',319,NULL,NULL,16,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(274,'UpdateField',101,'SelectEntity','Mono','UseCaseData','UseCaseData','Entity','UseCaseData',NULL,'داده مورد کاربری',320,NULL,NULL,12,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(275,'UpdateField',101,'SelectEntity','Mono','FruitSeedsAttribute','FruitSeedsAttribute','Entity','FruitSeedsAttribute',NULL,'صفت تامین کننده',321,NULL,NULL,13,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(276,'UpdateField',101,'SelectEntity','Mono','DataEnum','DataEnum','Entity','DataEnum',NULL,'موجودیت شمارشی',322,NULL,NULL,17,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(277,'UpdateResult',102,'Primitive','Mono','Is update successful','IsSuccessful','Boolean','Is Update Successful',NULL,'آیا ویرایش موفق بود',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(278,'UpdateId',103,'Primitive','Mono','The id of use case data attribute for update','Id','Long','Use case data attribute Id',NULL,'شناسه صفت داده مورد کاربری',NULL,'','',NULL,0,0,NULL,'شناسه صفت داده مورد کاربری مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(298,'UpdateId',104,'Primitive','Mono','The id of use case data attribute','Id','Long','Use case data attribute Id',NULL,'شناسه صفت داده مورد کاربری',NULL,'Id',NULL,NULL,0,0,NULL,'شناسه صفت داده مورد کاربری مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(299,'UpdateField',104,'Primitive','Mono','The name','Name','String','Name',NULL,'نام فنی',NULL,'Name',NULL,NULL,0,0,NULL,'نام فنی مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(300,'UpdateField',104,'Primitive','Mono','The title','Title','String','Title',NULL,'عنوان',NULL,'Title',NULL,NULL,0,0,NULL,'عنوان مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(301,'UpdateField',104,'Primitive','Mono','The farsi title','FaTitle','String','FaTitle',NULL,'عنوان فارسی',NULL,'FaTitle',NULL,NULL,0,0,NULL,'عنوان فارسی مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(302,'UpdateField',104,'Primitive','Mono','The description','Description','String','Description',NULL,'شرح',NULL,'Description',NULL,NULL,0,0,NULL,'شرح مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(303,'UpdateField',104,'Primitive','Mono','The ui row','UiRow','Long','UiRow',NULL,'شماره سطر',NULL,'UiRow',NULL,NULL,0,0,NULL,'شماره سطر مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(304,'UpdateField',104,'Primitive','Mono','The ui Column','UiColumn','Long','UiColumn',NULL,'شماره ستون',NULL,'UiColumn',NULL,NULL,0,0,NULL,'شماره ستون مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(305,'UpdateField',104,'SelectEnum','Mono','The use case usage','UseCaseUsageEnum','Enum','Use case usage',NULL,'نوع کاربرد',NULL,'UseCaseUsageEnum',NULL,NULL,0,0,4,'نوع کاربرد مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(306,'UpdateField',104,'SelectEnum','Mono','The attribute quantity','AttributeQuantity','Enum','Attribute quantity',NULL,'نوع شمارشی',NULL,'AttributeQuantity',NULL,NULL,0,0,5,'نوع شمارشی مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(307,'UpdateField',104,'SelectEnum','Mono','The attribute category','AttributeCategory','Enum','Attribute category',NULL,'دسته بندی',NULL,'AttributeCategory',NULL,NULL,0,0,6,'دسته بندی مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(308,'UpdateField',104,'SelectEnum','Mono','The primitive attribute type','PrimitiveAttributeType','Enum','Primitive attribute type',NULL,'نوع صفت پایه',NULL,'PrimitiveAttributeType',NULL,NULL,0,0,7,'نوع صفت پایه مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(309,'UpdateField',104,'Primitive','Mono','The setter of update path','SetterOfUpdatePath','String','Setter of update path',NULL,'مسیر setter',NULL,'SetterOfUpdatePath',NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(310,'UpdateField',104,'Primitive','Mono','The getter of update path','GetterOfUpdatePath','String','Getter of update path',NULL,'مسیر getter',NULL,'GetterOfUpdatePath',NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(311,'UpdateField',104,'Primitive','Mono','The nullable','Nullable','Boolean','Nullable',NULL,'آیا nullable است؟',NULL,'Nullable',NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(312,'UpdateField',104,'Primitive','Mono','The required','Required','Boolean','Required',NULL,'آیا الزامیست؟',NULL,'Required',NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(313,'UpdateField',104,'Primitive','Mono','The min length','MinLength','Long','Min length',NULL,'کمینه طول',NULL,'MinLength',NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(314,'UpdateField',104,'Primitive','Mono','The max length','MaxLength','Long','Max length',NULL,'بیشینه طول',NULL,'MaxLength',NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(315,'UpdateField',104,'Primitive','Mono','The min','Min','Long','Min',NULL,'کمینه مقدار',NULL,'Min',NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(316,'UpdateField',104,'Primitive','Mono','The max','Max','Long','Max',NULL,'بیشینه مقدار',NULL,'Max',NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(317,'UpdateField',104,'Primitive','Mono','The error tip','ErrorTip','String','Error tip',NULL,'عنوان خطا',NULL,'ErrorTip',NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(318,'UpdateField',104,'SelectEntity','Mono','DomainEntityAttributeType','DomainEntityAttributeType','Entity','DomainEntityAttributeType',NULL,'موجودیت دامنه',NULL,'DomainEntityAttributeType',NULL,14,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(319,'UpdateField',104,'SelectEntity','Mono','DataEntityAttributeType','DataEntityAttributeType','Entity','DataEntityAttributeType',NULL,'موجودیت دیتابیس',NULL,'DataEntityAttributeType',NULL,16,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(320,'UpdateField',104,'SelectEntity','Mono','UseCaseData','UseCaseData','Entity','UseCaseData',NULL,'داده مورد کاربری',NULL,'UseCaseData',NULL,12,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(321,'UpdateField',104,'SelectEntity','Mono','FruitSeedsAttribute','FruitSeedsAttribute','Entity','FruitSeedsAttribute',NULL,'صفت تامین کننده',NULL,'FruitSeedsAttribute',NULL,13,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(322,'UpdateField',104,'SelectEntity','Mono','DataEnum','DataEnum','Entity','DataEnum',NULL,'موجودیت شمارشی',NULL,'DataEnum',NULL,17,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(323,'AddNewId',105,'Primitive','Mono','The id of use case data attribute','Id','Long','Use case data attribute Id',NULL,'شناسه صفت داده مورد کاربری',298,NULL,NULL,NULL,0,0,NULL,'شناسه صفت داده مورد کاربری مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(324,'AddNewField',105,'Primitive','Mono','The name','Name','String','Name',NULL,'نام فنی',299,NULL,NULL,NULL,0,0,NULL,'نام فنی مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(325,'AddNewField',105,'Primitive','Mono','The title','Title','String','Title',NULL,'عنوان',300,NULL,NULL,NULL,0,0,NULL,'عنوان مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(326,'AddNewField',105,'Primitive','Mono','The farsi title','FaTitle','String','FaTitle',NULL,'عنوان فارسی',301,NULL,NULL,NULL,0,0,NULL,'عنوان فارسی مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(327,'AddNewField',105,'Primitive','Mono','The description','Description','String','Description',NULL,'شرح',302,NULL,NULL,NULL,0,0,NULL,'شرح مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(328,'AddNewField',105,'Primitive','Mono','The ui row','UiRow','Long','UiRow',NULL,'شماره سطر',303,NULL,NULL,NULL,0,0,NULL,'شماره سطر مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(329,'AddNewField',105,'Primitive','Mono','The ui Column','UiColumn','Long','UiColumn',NULL,'شماره ستون',304,NULL,NULL,NULL,0,0,NULL,'شماره ستون مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(330,'AddNewField',105,'SelectEnum','Mono','The use case usage','UseCaseUsageEnum','Enum','Use case usage',NULL,'نوع کاربرد',305,NULL,NULL,NULL,0,0,4,'نوع کاربرد مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(331,'AddNewField',105,'SelectEnum','Mono','The attribute quantity','AttributeQuantity','Enum','Attribute quantity',NULL,'نوع شمارشی',306,NULL,NULL,NULL,0,0,5,'نوع شمارشی مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(332,'AddNewField',105,'SelectEnum','Mono','The attribute category','AttributeCategory','Enum','Attribute category',NULL,'دسته بندی',307,NULL,NULL,NULL,0,0,6,'دسته بندی مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(333,'AddNewField',105,'SelectEnum','Mono','The primitive attribute type','PrimitiveAttributeType','Enum','Primitive attribute type',NULL,'نوع صفت پایه',308,NULL,NULL,NULL,0,0,7,'نوع صفت پایه مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(334,'AddNewField',105,'Primitive','Mono','The setter of update path','SetterOfUpdatePath','String','Setter of update path',NULL,'مسیر setter',309,NULL,NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(335,'AddNewField',105,'Primitive','Mono','The getter of update path','GetterOfUpdatePath','String','Getter of update path',NULL,'مسیر getter',310,NULL,NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(336,'AddNewField',105,'Primitive','Mono','The nullable','Nullable','Boolean','Nullable',NULL,'آیا nullable است؟',311,NULL,NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(337,'AddNewField',105,'Primitive','Mono','The required','Required','Boolean','Required',NULL,'آیا الزامیست؟',312,NULL,NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(338,'AddNewField',105,'Primitive','Mono','The min length','MinLength','Long','Min length',NULL,'کمینه طول',313,NULL,NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(339,'AddNewField',105,'Primitive','Mono','The max length','MaxLength','Long','Max length',NULL,'بیشینه طول',314,NULL,NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(340,'AddNewField',105,'Primitive','Mono','The min','Min','Long','Min',NULL,'کمینه مقدار',315,NULL,NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(341,'AddNewField',105,'Primitive','Mono','The max','Max','Long','Max',NULL,'بیشینه مقدار',316,NULL,NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(342,'AddNewField',105,'Primitive','Mono','The error tip','ErrorTip','String','Error tip',NULL,'عنوان خطا',317,NULL,NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(343,'AddNewField',105,'SelectEntity','Mono','DomainEntityAttributeType','DomainEntityAttributeType','Entity','DomainEntityAttributeType',NULL,'موجودیت دامنه',318,NULL,NULL,14,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(344,'AddNewField',105,'SelectEntity','Mono','DataEntityAttributeType','DataEntityAttributeType','Entity','DataEntityAttributeType',NULL,'موجودیت دیتابیس',319,NULL,NULL,16,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(345,'AddNewField',105,'SelectEntity','Mono','UseCaseData','UseCaseData','Entity','UseCaseData',NULL,'داده مورد کاربری',320,NULL,NULL,12,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(346,'AddNewField',105,'SelectEntity','Mono','FruitSeedsAttribute','FruitSeedsAttribute','Entity','FruitSeedsAttribute',NULL,'صفت تامین کننده',321,NULL,NULL,13,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(347,'AddNewField',105,'SelectEntity','Mono','DataEnum','DataEnum','Entity','DataEnum',NULL,'موجودیت شمارشی',322,NULL,NULL,17,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(348,'AddNewResult',106,'Primitive','Mono','Is update successful','IsSuccessful','Boolean','Is Update Successful',NULL,'آیا ویرایش موفق بود',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(349,'AddNewId',107,'Primitive','Mono','The id of use case data attribute for update','Id','Long','Use case data attribute Id',NULL,'شناسه صفت داده مورد کاربری',NULL,'','',NULL,0,0,NULL,'شناسه صفت داده مورد کاربری مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(350,'AddNewId',108,'Primitive','Mono','The id of use case data attribute','Id','Long','Use case data attribute Id',NULL,'شناسه صفت داده مورد کاربری',NULL,'Id',NULL,NULL,0,0,NULL,'شناسه صفت داده مورد کاربری مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(351,'AddNewField',108,'Primitive','Mono','The name','Name','String','Name',NULL,'نام فنی',NULL,'Name',NULL,NULL,0,0,NULL,'نام فنی مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(352,'AddNewField',108,'Primitive','Mono','The title','Title','String','Title',NULL,'عنوان',NULL,'Title',NULL,NULL,0,0,NULL,'عنوان مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(353,'AddNewField',108,'Primitive','Mono','The farsi title','FaTitle','String','FaTitle',NULL,'عنوان فارسی',NULL,'FaTitle',NULL,NULL,0,0,NULL,'عنوان فارسی مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(354,'AddNewField',108,'Primitive','Mono','The description','Description','String','Description',NULL,'شرح',NULL,'Description',NULL,NULL,0,0,NULL,'شرح مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(355,'AddNewField',108,'Primitive','Mono','The ui row','UiRow','Long','UiRow',NULL,'شماره سطر',NULL,'UiRow',NULL,NULL,0,0,NULL,'شماره سطر مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(356,'AddNewField',108,'Primitive','Mono','The ui Column','UiColumn','Long','UiColumn',NULL,'شماره ستون',NULL,'UiColumn',NULL,NULL,0,0,NULL,'شماره ستون مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(357,'AddNewField',108,'SelectEnum','Mono','The use case usage','UseCaseUsageEnum','Enum','Use case usage',NULL,'نوع کاربرد',NULL,'UseCaseUsageEnum',NULL,NULL,0,0,4,'نوع کاربرد مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(358,'AddNewField',108,'SelectEnum','Mono','The attribute quantity','AttributeQuantity','Enum','Attribute quantity',NULL,'نوع شمارشی',NULL,'AttributeQuantity',NULL,NULL,0,0,5,'نوع شمارشی مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(359,'AddNewField',108,'SelectEnum','Mono','The attribute category','AttributeCategory','Enum','Attribute category',NULL,'دسته بندی',NULL,'AttributeCategory',NULL,NULL,0,0,6,'دسته بندی مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(360,'AddNewField',108,'SelectEnum','Mono','The primitive attribute type','PrimitiveAttributeType','Enum','Primitive attribute type',NULL,'نوع صفت پایه',NULL,'PrimitiveAttributeType',NULL,NULL,0,0,7,'نوع صفت پایه مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(361,'AddNewField',108,'Primitive','Mono','The setter of update path','SetterOfUpdatePath','String','Setter of update path',NULL,'مسیر setter',NULL,'SetterOfUpdatePath',NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(362,'AddNewField',108,'Primitive','Mono','The getter of update path','GetterOfUpdatePath','String','Getter of update path',NULL,'مسیر getter',NULL,'GetterOfUpdatePath',NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(363,'AddNewField',108,'Primitive','Mono','The nullable','Nullable','Boolean','Nullable',NULL,'آیا nullable است؟',NULL,'Nullable',NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(364,'AddNewField',108,'Primitive','Mono','The required','Required','Boolean','Required',NULL,'آیا الزامیست؟',NULL,'Required',NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(365,'AddNewField',108,'Primitive','Mono','The min length','MinLength','Long','Min length',NULL,'کمینه طول',NULL,'MinLength',NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(366,'AddNewField',108,'Primitive','Mono','The max length','MaxLength','Long','Max length',NULL,'بیشینه طول',NULL,'MaxLength',NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(367,'AddNewField',108,'Primitive','Mono','The min','Min','Long','Min',NULL,'کمینه مقدار',NULL,'Min',NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(368,'AddNewField',108,'Primitive','Mono','The max','Max','Long','Max',NULL,'بیشینه مقدار',NULL,'Max',NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(369,'AddNewField',108,'Primitive','Mono','The error tip','ErrorTip','String','Error tip',NULL,'عنوان خطا',NULL,'ErrorTip',NULL,NULL,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(370,'AddNewField',108,'SelectEntity','Mono','DomainEntityAttributeType','DomainEntityAttributeType','Entity','DomainEntityAttributeType',NULL,'موجودیت دامنه',NULL,'DomainEntityAttributeType',NULL,14,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(371,'AddNewField',108,'SelectEntity','Mono','DataEntityAttributeType','DataEntityAttributeType','Entity','DataEntityAttributeType',NULL,'موجودیت دیتابیس',NULL,'DataEntityAttributeType',NULL,16,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(372,'AddNewField',108,'SelectEntity','Mono','UseCaseData','UseCaseData','Entity','UseCaseData',NULL,'داده مورد کاربری',NULL,'UseCaseData',NULL,12,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '\0',_binary ''),(373,'AddNewField',108,'SelectEntity','Mono','FruitSeedsAttribute','FruitSeedsAttribute','Entity','FruitSeedsAttribute',NULL,'صفت تامین کننده',NULL,'FruitSeedsAttribute',NULL,13,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(374,'AddNewField',108,'SelectEntity','Mono','DataEnum','DataEnum','Entity','DataEnum',NULL,'موجودیت شمارشی',NULL,'DataEnum',NULL,17,0,0,NULL,'مشخص نشده است.',NULL,NULL,NULL,NULL,_binary '',_binary '\0'),(376,'GridListSearchField',109,'Primitive','Mono','The use case name','UseCaseName','String','Use case name',NULL,'نام مورد کاربری',NULL,' ',' ',NULL,1,1,NULL,'ندارد',0,100,0,0,_binary '',_binary '\0'),(377,'GridListEntity',110,'DomainEntity','List','The list of use cases for project manager','DataArray','Entity','Use case list for project manager',7,'فهرست موردهای کاربری برای مدیر پروژه',NULL,' ',' ',NULL,0,0,NULL,'None',0,0,0,0,_binary '\0',_binary ''),(378,'ViewId',113,'Primitive','Mono','The use case Id for find','Id','Long','Use case Id',NULL,'شناسه مورد کاربری',NULL,NULL,NULL,NULL,0,0,NULL,'None',100000000,100,1,1,_binary '\0',_binary ''),(379,'ViewEntity',114,'DomainEntity','Mono','The use case to view','Entity','Entity','Use case',7,'مورد کاربری',NULL,NULL,NULL,NULL,0,0,NULL,'None',0,0,0,0,_binary '\0',_binary '');
/*!40000 ALTER TABLE `use_case_data_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `use_case_relation`
--

DROP TABLE IF EXISTS `use_case_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `use_case_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `frontend_action_type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `relation_context` varchar(255) NOT NULL,
  `destination_id` bigint(20) NOT NULL,
  `source_id` bigint(20) NOT NULL,
  `fa_title` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKg5mci3llippakpxp3l8wnov7k` (`destination_id`),
  KEY `FKqthrpwf7wesfd7o909gy0dkr9` (`source_id`),
  CONSTRAINT `FKg5mci3llippakpxp3l8wnov7k` FOREIGN KEY (`destination_id`) REFERENCES `use_case` (`id`),
  CONSTRAINT `FKqthrpwf7wesfd7o909gy0dkr9` FOREIGN KEY (`source_id`) REFERENCES `use_case` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `use_case_relation`
--

LOCK TABLES `use_case_relation` WRITE;
/*!40000 ALTER TABLE `use_case_relation` DISABLE KEYS */;
INSERT INTO `use_case_relation` VALUES (1,'PopupForm','ViewContract','Frontend',2,1,'نمایش','View'),(2,'PopupForm','EditContract','Frontend',3,2,'ویرایش','Edit'),(3,'PopupForm','ViewDeposit','Frontend',5,4,'نمایش','View'),(4,'PopupForm','AddNewDeposit','Frontend',7,4,'ثبت سند واریزی','Add New Deposit'),(5,'PopupForm','EditDeposit','Frontend',6,5,'ویرایش','Edit Deposit'),(6,'PopupForm','DeleteDeposit','Frontend',8,5,'حذف سند واریزی','Delete Deposit'),(7,'PopupForm','ViewCheque','Frontend',10,9,'نمایش','View Cheque'),(8,'PopupForm','AddNewCheque','Frontend',12,9,'ثبت سند چک دریافتی','Add New Cheque'),(9,'PopupForm','EditCheque','Frontend',11,10,'ویرایش','Edit Cheque'),(10,'PopupForm','DeleteCheque','Frontend',13,10,'حذف چک دریافتی','Delete Cheque'),(11,'PopupForm','ViewDraftInvoice','Frontend',16,15,'نمایش','View DraftInvoice'),(12,'PopupForm','AddNewDraftInvoice','Frontend',18,15,'ثبت پیش فاکتور','Add New Draft Invoice'),(13,'PopupForm','EditDraftInvoice','Frontend',17,16,'ویرایش','Edit Draft Invoice'),(14,'PopupForm','DeleteDraftInvoice','Frontend',19,16,'حذف پیش فاکتور','Delete Draft Invoice'),(15,'PopupForm','ViewSoftware','Frontend',21,20,'نمایش','View Software'),(16,'PopupForm','AddNewSoftware','Frontend',23,20,'ثبت نرم افزار','AddNew Software'),(17,'PopupForm','EditSoftware','Frontend',22,21,'ویرایش','Edit Software'),(18,'PopupForm','DeleteSoftware','Frontend',24,21,'حذف نرم افزار','Delete Software'),(19,'PopupForm','ViewUseCaseDataAttribute','Frontend',26,25,'نمایش','View Use Case Data Attribute'),(20,'PopupForm','UpdateUseCaseDataAttribute','Frontend',27,26,'ویرایش','Update Use Case Data Attribute'),(21,'PopupForm','AddNewUseCaseDataAttribute','Frontend',28,25,'افزودن صفت داده مورد کاربری','Add New Use Case Data Attribute'),(22,'PopupForm','ViewUseCase','Frontend',30,29,'نمایش مورد کاربری','View Use Case');
/*!40000 ALTER TABLE `use_case_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account_non_expired` bit(1) NOT NULL,
  `account_non_locked` bit(1) NOT NULL,
  `credentials_non_expired` bit(1) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `fa_first_name` varchar(255) NOT NULL,
  `fa_last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,_binary '',_binary '',_binary '',_binary '','بهرام','جهانشاهی','Bahram','Jahanshahi','$2a$10$NWocq/TWDD.xkhUPH7ZD9Oux0IZMRfGCkp/JUlKuVTdKDCFOeCDbq','bahram');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`),
  KEY `FK859n2jvi8ivhui0rl0esws6o` (`user_id`),
  CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,1);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-17 14:43:24
