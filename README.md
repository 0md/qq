# docker-xiaolz

#### 介绍
通过 wine 来运行小栗子框架，附带 novnc

#### 软件架构
软件架构说明


#### 安装教程

1.  docker build -t xiaolz .

#### 使用说明

1.  docker run -ti -d --name xiaolz -v /opt/xiaolz/main/data:/opt/xiaolz/main/data -p 9000:8080 -p 10429:10429 -e VNC_PASSWD=xiaolz xiaolz

#### 参与贡献

1.  Fork 本仓库
2.  新建 Feat_xxx 分支
3.  提交代码
4.  新建 Pull Request


