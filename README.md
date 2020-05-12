# athena应用使用的服务器介绍
athena应用使用Wildfly容器，版本建议使用19.0.0.Final。[下载地址](https://wildfly.org/)  
我们在Windows系统上开发和测试的时候，会使用工具git-scm,这个工具为我们提供bash环境和git命令。[下载地址](https://git-scm.com/)  
我们测试应用的时候：  
>1.安装git-scm  
>2.下载并解压wildfly19  
>3.将本库中的run.sh放在wildfly-19.0.0.Final目录下  
>4.用本库中的standalone-full.xml替换解压的wildfly-19.0.0.Final/standalone/configuration/standalone-full.xml文件  
>5.运行git-bash，切换到wildfly-19.0.0.Final目录，运行run.sh  
>6.另运行一个git-bash，克隆athena应用样例[athena-app-a1s2d3f4-parent](https://github.com/data67/athena-app-a1s2d3f4-parent)  
>7.切换到应用样例目录，运行mvn clean package打包，打包出的ear包，在athena-app-a1s2d3f4-parent/athena-app-a1s2d3f4-ear/target目录下，名为athena-app-a1s2d3f4-ear-1.0.0.Final-SNAPSHOT.ear  
>8.将ear包复制到wildfly-19.0.0.Final/standalone/deployments目录下进行部署  
>9.浏览器访问http://localhost:8080/athena-app/local_resource/swagger-api.html  
