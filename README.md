# athena测试介绍
当我们开发完athena模块后，我们需要对其进行验收测试。  
测试步骤如下：  
1. 将athena模块打包进athena应用  
2. 将athena应用部署到本地应用服务器  
3. 本地运行验收测试代码  

athena应用模板为[athena-app-a1s2d3f4-parent](https://github.com/data67/athena-app-a1s2d3f4-parent)  
athena应用使用Wildfly容器作为应用服务器，版本建议使用19.0.0.Final。[下载地址](https://wildfly.org/)  
## 准备工作

准备本地应用服务器：  
1. 安装git-scm [下载地址](https://git-scm.com/) （Unix环境不需要安装此工具；我们在Windows系统上进行测试的时候，会使用工具git-scm,这个工具为我们提供bash环境和git命令）  
2. 下载并解压wildfly19 [下载地址](https://wildfly.org/)  
3. 将本库中的[run.sh](https://github.com/data67/athena-test-desc/blob/master/run.sh) 放在解压出的wildfly-19.0.0.Final目录下  
4. 用本库中的[standalone-full.xml](https://github.com/data67/athena-test-desc/blob/master/standalone-full.xml) 替换解压的wildfly-19.0.0.Final/standalone/configuration/standalone-full.xml文件  
5. 运行git-bash，切换到wildfly-19.0.0.Final目录，运行run.sh

至此本地应用服务器准备好，浏览器访问http://localhost:8080 应该可以看到wildfly欢迎页
## athena应用打包和部署
1. 克隆athena应用模板：git clone https://github.com/data67/athena-app-a1s2d3f4-parent.git  
2. 切换到athena-app-a1s2d3f4-parent/athena-app-a1s2d3f4目录，编辑pom.xml，将你需要测试的athena模块，添加进Maven依赖。该pom.xml默认已经添加了athena-module-user模块依赖  
3. 切换到athena-app-a1s2d3f4-parent目录，运行mvn clean package打包，打包出的ear包，在athena-app-a1s2d3f4-parent/athena-app-a1s2d3f4-ear/target目录下，名为athena-app-a1s2d3f4-ear-1.0.0.Final-SNAPSHOT.ear  
4. 将ear包复制到wildfly-19.0.0.Final/standalone/deployments目录下进行部署  

至此athena应用打包和部署完毕，浏览器访问http://localhost:8080/athena-app/local_resource/swagger-api.html 应该可以看到应用的接口信息   
需要说明的时，应用服务器默认使用的是内存数据库，每次停止服务器后，服务器数据会自动删除。每次重启启动，都是全新的开始。如果单纯地重新部署应用（即不停服地情况下，替换ear包），不会清除数据  
## 运行验收测试
此处以athena-module-user的验收测试为例进行说明  
athena-module-user的验收测试为[athena-test-module-user](https://github.com/data67/athena-test-module-user)  
此验收测试我们已经写好，如果你要为我们贡献验收测试，可以此测试为模板
1. 克隆验收测试代码：git clone https://github.com/data67/athena-test-module-user.git
2. 切换到athena-test-module-user目录
3. mvn clean test

我们的验收测试，使用[rest-assured](https://github.com/rest-assured/rest-assured)
