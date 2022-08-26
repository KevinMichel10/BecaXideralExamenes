-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: employee_directory
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `batch_step_execution`
--

DROP TABLE IF EXISTS `batch_step_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch_step_execution` (
  `STEP_EXECUTION_ID` bigint NOT NULL,
  `VERSION` bigint NOT NULL,
  `STEP_NAME` varchar(100) NOT NULL,
  `JOB_EXECUTION_ID` bigint NOT NULL,
  `START_TIME` datetime(6) NOT NULL,
  `END_TIME` datetime(6) DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `COMMIT_COUNT` bigint DEFAULT NULL,
  `READ_COUNT` bigint DEFAULT NULL,
  `FILTER_COUNT` bigint DEFAULT NULL,
  `WRITE_COUNT` bigint DEFAULT NULL,
  `READ_SKIP_COUNT` bigint DEFAULT NULL,
  `WRITE_SKIP_COUNT` bigint DEFAULT NULL,
  `PROCESS_SKIP_COUNT` bigint DEFAULT NULL,
  `ROLLBACK_COUNT` bigint DEFAULT NULL,
  `EXIT_CODE` varchar(2500) DEFAULT NULL,
  `EXIT_MESSAGE` varchar(2500) DEFAULT NULL,
  `LAST_UPDATED` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`STEP_EXECUTION_ID`),
  KEY `JOB_EXEC_STEP_FK` (`JOB_EXECUTION_ID`),
  CONSTRAINT `JOB_EXEC_STEP_FK` FOREIGN KEY (`JOB_EXECUTION_ID`) REFERENCES `batch_job_execution` (`JOB_EXECUTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_step_execution`
--

LOCK TABLES `batch_step_execution` WRITE;
/*!40000 ALTER TABLE `batch_step_execution` DISABLE KEYS */;
INSERT INTO `batch_step_execution` VALUES (1,107,'csv-step',1,'2022-08-23 17:44:28.096000','2022-08-23 17:44:35.816000','COMPLETED',105,1000,0,1000,0,0,0,0,'COMPLETED','','2022-08-23 17:44:35.819000'),(2,106,'csv-step',2,'2022-08-23 21:35:23.592000','2022-08-23 21:35:27.619000','COMPLETED',104,1000,809,191,0,0,0,0,'COMPLETED','','2022-08-23 21:35:27.620000'),(3,107,'csv-step',3,'2022-08-23 23:01:10.012000','2022-08-23 23:01:13.598000','COMPLETED',105,1000,578,422,0,0,0,0,'COMPLETED','','2022-08-23 23:01:13.600000'),(4,2,'csv-step',4,'2022-08-25 14:57:43.634000',NULL,'STARTED',1,10,7,3,0,0,0,0,'EXECUTING','','2022-08-25 14:57:44.209000'),(5,3,'csv-step',5,'2022-08-25 15:02:33.835000',NULL,'STARTED',2,20,17,3,0,0,0,0,'EXECUTING','','2022-08-25 15:02:34.295000'),(6,2,'csv-step',6,'2022-08-25 15:02:51.942000',NULL,'STARTED',1,10,9,1,0,0,0,0,'EXECUTING','','2022-08-25 15:02:51.987000'),(7,12,'csv-step',7,'2022-08-25 15:11:31.003000','2022-08-25 15:11:31.946000','FAILED',10,110,87,13,0,0,0,1,'FAILED','org.springframework.orm.jpa.JpaSystemException: could not execute statement; nested exception is org.hibernate.exception.GenericJDBCException: could not execute statement\r\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.convertHibernateAccessException(HibernateJpaDialect.java:331)\r\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.translateExceptionIfPossible(HibernateJpaDialect.java:233)\r\n	at org.springframework.orm.jpa.JpaTransactionManager.doCommit(JpaTransactionManager.java:566)\r\n	at org.springframework.transaction.support.AbstractPlatformTransactionManager.processCommit(AbstractPlatformTransactionManager.java:743)\r\n	at org.springframework.transaction.support.AbstractPlatformTransactionManager.commit(AbstractPlatformTransactionManager.java:711)\r\n	at jdk.internal.reflect.GeneratedMethodAccessor57.invoke(Unknown Source)\r\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.base/java.lang.reflect.Method.invoke(Method.java:566)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:128)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:215)\r\n	at com.sun.proxy.$Proxy90.commit(Unknown Source)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:152)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.TaskExecutorRepeatTemplate$ExecutingRunnable.run(TaskExecutorRepeatTemplate.java:262)\r\n	at org.springframework.core.task.SimpleAsyncTaskExecutor$ConcurrencyThrottlingRunnable.run(SimpleAsyncTaskExecutor.java:286)\r\n	at java.base/java.lang.Thread.run(Thread.java:834)\r\nCaused by: org.hibernate.exception.GenericJDBCException: could not execute statement\r\n	at org.hibernate.','2022-08-25 15:11:31.948000'),(8,2,'csv-step',8,'2022-08-25 15:12:53.416000',NULL,'STARTED',1,10,9,1,0,0,0,0,'EXECUTING','','2022-08-25 15:12:53.725000'),(9,5,'csv-step',9,'2022-08-25 15:14:23.663000','2022-08-25 15:14:24.524000','FAILED',5,80,38,12,0,0,0,5,'FAILED','org.springframework.orm.jpa.JpaSystemException: could not execute statement; nested exception is org.hibernate.exception.GenericJDBCException: could not execute statement\r\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.convertHibernateAccessException(HibernateJpaDialect.java:331)\r\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.translateExceptionIfPossible(HibernateJpaDialect.java:233)\r\n	at org.springframework.orm.jpa.JpaTransactionManager.doCommit(JpaTransactionManager.java:566)\r\n	at org.springframework.transaction.support.AbstractPlatformTransactionManager.processCommit(AbstractPlatformTransactionManager.java:743)\r\n	at org.springframework.transaction.support.AbstractPlatformTransactionManager.commit(AbstractPlatformTransactionManager.java:711)\r\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.base/java.lang.reflect.Method.invoke(Method.java:566)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:128)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:215)\r\n	at com.sun.proxy.$Proxy90.commit(Unknown Source)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:152)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.TaskExecutorRepeatTemplate$ExecutingRunnable.run(TaskExecutorRepeatTemplate.java:262)\r\n	at org.springframework.core.task.SimpleAsyncTaskExecutor$ConcurrencyThrottlingRunnable.run(SimpleAsyncTaskExecutor.java:286)\r\n	at java.base/java.lang.Thread.run(Thread.java','2022-08-25 15:14:24.526000'),(10,7,'csv-step',10,'2022-08-25 15:18:01.473000','2022-08-25 15:18:01.928000','FAILED',5,90,44,6,0,0,0,4,'FAILED','org.springframework.orm.jpa.JpaSystemException: could not execute statement; nested exception is org.hibernate.exception.GenericJDBCException: could not execute statement\r\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.convertHibernateAccessException(HibernateJpaDialect.java:331)\r\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.translateExceptionIfPossible(HibernateJpaDialect.java:233)\r\n	at org.springframework.orm.jpa.JpaTransactionManager.doCommit(JpaTransactionManager.java:566)\r\n	at org.springframework.transaction.support.AbstractPlatformTransactionManager.processCommit(AbstractPlatformTransactionManager.java:743)\r\n	at org.springframework.transaction.support.AbstractPlatformTransactionManager.commit(AbstractPlatformTransactionManager.java:711)\r\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.base/java.lang.reflect.Method.invoke(Method.java:566)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:128)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:215)\r\n	at com.sun.proxy.$Proxy90.commit(Unknown Source)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:152)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.TaskExecutorRepeatTemplate$ExecutingRunnable.run(TaskExecutorRepeatTemplate.java:262)\r\n	at org.springframework.core.task.SimpleAsyncTaskExecutor$ConcurrencyThrottlingRunnable.run(SimpleAsyncTaskExecutor.java:286)\r\n	at java.base/java.lang.Thread.run(Thread.java','2022-08-25 15:18:01.930000'),(11,5,'csv-step',11,'2022-08-25 15:18:52.424000','2022-08-25 15:18:52.887000','FAILED',3,80,26,4,0,0,0,5,'FAILED','org.springframework.orm.jpa.JpaSystemException: could not execute statement; nested exception is org.hibernate.exception.GenericJDBCException: could not execute statement\r\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.convertHibernateAccessException(HibernateJpaDialect.java:331)\r\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.translateExceptionIfPossible(HibernateJpaDialect.java:233)\r\n	at org.springframework.orm.jpa.JpaTransactionManager.doCommit(JpaTransactionManager.java:566)\r\n	at org.springframework.transaction.support.AbstractPlatformTransactionManager.processCommit(AbstractPlatformTransactionManager.java:743)\r\n	at org.springframework.transaction.support.AbstractPlatformTransactionManager.commit(AbstractPlatformTransactionManager.java:711)\r\n	at jdk.internal.reflect.GeneratedMethodAccessor66.invoke(Unknown Source)\r\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.base/java.lang.reflect.Method.invoke(Method.java:566)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:128)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:215)\r\n	at com.sun.proxy.$Proxy90.commit(Unknown Source)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:152)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.TaskExecutorRepeatTemplate$ExecutingRunnable.run(TaskExecutorRepeatTemplate.java:262)\r\n	at org.springframework.core.task.SimpleAsyncTaskExecutor$ConcurrencyThrottlingRunnable.run(SimpleAsyncTaskExecutor.java:286)\r\n	at java.base/java.lang.Thread.run(Thread.java:834)\r\nCaused by: org.hibernate.exception.GenericJDBCException: could not execute statement\r\n	at org.hibernate.','2022-08-25 15:18:52.887000'),(12,4,'csv-step',12,'2022-08-25 15:24:44.204000',NULL,'STARTED',3,30,27,3,0,0,0,0,'EXECUTING','','2022-08-25 15:24:44.525000'),(13,3,'csv-step',13,'2022-08-25 15:26:00.678000',NULL,'STARTED',2,20,18,2,0,0,0,0,'EXECUTING','','2022-08-25 15:26:00.759000'),(14,107,'csv-step',14,'2022-08-25 15:40:44.085000','2022-08-25 15:40:48.337000','COMPLETED',105,1000,809,191,0,0,0,0,'COMPLETED','','2022-08-25 15:40:48.338000'),(15,106,'csv-step',15,'2022-08-26 01:27:51.108000','2022-08-26 01:27:53.691000','COMPLETED',104,1000,809,191,0,0,0,0,'COMPLETED','','2022-08-26 01:27:53.692000'),(16,106,'csv-step',16,'2022-08-26 01:29:02.637000','2022-08-26 01:29:04.356000','COMPLETED',104,1000,1000,0,0,0,0,0,'COMPLETED','','2022-08-26 01:29:04.357000'),(17,107,'csv-step',17,'2022-08-26 01:33:26.150000','2022-08-26 01:33:28.057000','COMPLETED',105,1000,1000,0,0,0,0,0,'COMPLETED','','2022-08-26 01:33:28.058000'),(18,107,'csv-step',18,'2022-08-26 01:36:03.079000','2022-08-26 01:36:05.778000','COMPLETED',105,1000,870,130,0,0,0,0,'COMPLETED','','2022-08-26 01:36:05.780000'),(19,106,'csv-step',19,'2022-08-26 01:45:02.978000','2022-08-26 01:45:05.512000','COMPLETED',104,1000,871,129,0,0,0,0,'COMPLETED','','2022-08-26 01:45:05.514000'),(20,106,'csv-step',20,'2022-08-26 01:56:01.381000','2022-08-26 01:56:03.216000','COMPLETED',104,1000,1000,0,0,0,0,0,'COMPLETED','','2022-08-26 01:56:03.217000'),(21,13,'csv-step',21,'2022-08-26 02:00:01.665000','2022-08-26 02:00:02.398000','FAILED',11,140,95,15,0,0,0,3,'FAILED','org.springframework.orm.jpa.JpaSystemException: could not execute statement; nested exception is org.hibernate.exception.GenericJDBCException: could not execute statement\r\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.convertHibernateAccessException(HibernateJpaDialect.java:331)\r\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.translateExceptionIfPossible(HibernateJpaDialect.java:233)\r\n	at org.springframework.orm.jpa.JpaTransactionManager.doCommit(JpaTransactionManager.java:566)\r\n	at org.springframework.transaction.support.AbstractPlatformTransactionManager.processCommit(AbstractPlatformTransactionManager.java:743)\r\n	at org.springframework.transaction.support.AbstractPlatformTransactionManager.commit(AbstractPlatformTransactionManager.java:711)\r\n	at jdk.internal.reflect.GeneratedMethodAccessor59.invoke(Unknown Source)\r\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.base/java.lang.reflect.Method.invoke(Method.java:566)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:128)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:215)\r\n	at com.sun.proxy.$Proxy90.commit(Unknown Source)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:152)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.TaskExecutorRepeatTemplate$ExecutingRunnable.run(TaskExecutorRepeatTemplate.java:262)\r\n	at org.springframework.core.task.SimpleAsyncTaskExecutor$ConcurrencyThrottlingRunnable.run(SimpleAsyncTaskExecutor.java:286)\r\n	at java.base/java.lang.Thread.run(Thread.java:834)\r\nCaused by: org.hibernate.exception.GenericJDBCException: could not execute statement\r\n	at org.hibernate.','2022-08-26 02:00:02.399000'),(22,9,'csv-step',22,'2022-08-26 02:04:13.497000',NULL,'STARTED',8,80,69,11,0,0,0,0,'EXECUTING','','2022-08-26 02:04:14.033000'),(23,9,'csv-step',23,'2022-08-26 02:23:50.122000',NULL,'STARTED',8,80,69,11,0,0,0,0,'EXECUTING','','2022-08-26 02:23:50.559000'),(24,107,'csv-step',24,'2022-08-26 02:43:06.748000','2022-08-26 02:43:09.088000','COMPLETED',105,1000,870,130,0,0,0,0,'COMPLETED','','2022-08-26 02:43:09.090000'),(25,107,'csv-step',25,'2022-08-26 02:48:30.690000','2022-08-26 02:48:33.029000','COMPLETED',105,1000,870,130,0,0,0,0,'COMPLETED','','2022-08-26 02:48:33.032000'),(26,107,'csv-step',26,'2022-08-26 02:49:48.836000','2022-08-26 02:49:50.876000','COMPLETED',105,1000,870,130,0,0,0,0,'COMPLETED','','2022-08-26 02:49:50.877000'),(27,107,'csv-step',27,'2022-08-26 03:27:41.375000','2022-08-26 03:27:43.794000','COMPLETED',105,1000,870,130,0,0,0,0,'COMPLETED','','2022-08-26 03:27:43.796000'),(28,106,'csv-step',28,'2022-08-26 03:29:04.084000','2022-08-26 03:29:06.328000','COMPLETED',104,1000,871,129,0,0,0,0,'COMPLETED','','2022-08-26 03:29:06.330000'),(29,107,'csv-step',29,'2022-08-26 03:41:47.613000','2022-08-26 03:41:50.159000','COMPLETED',105,1000,871,129,0,0,0,0,'COMPLETED','','2022-08-26 03:41:50.160000'),(30,107,'csv-step',30,'2022-08-26 17:34:18.969000','2022-08-26 17:34:22.387000','COMPLETED',105,1000,871,129,0,0,0,0,'COMPLETED','','2022-08-26 17:34:22.389000');
/*!40000 ALTER TABLE `batch_step_execution` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-26 13:06:06