# docker-xiaolz

#### 介绍
通过 wine 来运行小栗子框架，附带 novnc


#### 软件架构
软件包含：

1. wine
2. novnc
3. 小栗子框架
4. 小栗子框架 httpapi


#### 安装教程

1. ```git clone https://gitee.com/hhding/docker-xiaolz.git```
2. ```cd docker-xiaolz```
3. ```bash ./get_novnc.sh```
4. ```docker build -t xiaolz .```

#### 使用说明

1. 运行 ```docker-compose -d up``` 或者 ```docker run -it -d --name xiaolz -v /opt/xiaolz/main/data:/opt/xiaolz/main/data -p 9000:8080 -p 10429:10429 -e VNC_PASSWD=xiaolz xiaolz```
2. 访问 http://ip_of_host:9000

#### 如何调试

1. docker logs xiaolz 看日志
2. 运行 ```docker-compose up``` 不退出的情况下看日志
3. ```docker exec -ti xiaolz bash``` 进入容器来调试

#### 参与贡献

1.  Fork 本仓库
2.  新建 Feat_xxx 分支
3.  提交代码
4.  新建 Pull Request


