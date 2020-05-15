# 连接本地mysql
我们进行验收测试，默认是在内存数据库进行的。本文档说明如何连接到本地mysql    
1. 参考[athena测试介绍](https://github.com/data67/athena-test-desc/blob/master/README.md)搭建环境  
2. 用本库中mysql目录下的[mysql/standalone-full.xml](https://github.com/data67/athena-test-desc/blob/master/mysql/standalone-full.xml) 替换解压的wildfly-19.0.0.Final/standalone/configuration/standalone-full.xml文件  
3. 将本库中mysql目录下的module.xml和mysql-connector-java-5.1.40.jar放到wildfly-19.0.0.Final/modules/system/layers/base/com/mysql/connector/java/main目录下，不存在的中间目录请自行创建  
4. 在本地mysql中创建数据库athena-app
5. 在本地mysql中创建用户athena，密码也为athena，并授予athena用户对数据库athena-app的管理权限
