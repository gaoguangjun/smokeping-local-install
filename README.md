## 帮助 ##

http://jaminzhang.github.io/monitoring/smokeping-deploy-practice/#top0
# SmokePing一键管理脚本 #

**此脚本会污染建站环境，请在Docker或干净的机器内使用**

## 介绍 ##
一个Shell脚本，集成SmokePing三种版本(Master/Slaves/单机版)安装、启动、停止、重启等基本操作，方便用户操作。

[https://www.sabia.cc/smokeping-onekey.html](https://www.sabia.cc/smokeping-onekey.html)

## 系统支持 ## 
* CentOS 7

## 功能 ##
- 一键启动、停止、重启SmokePing服务
- 一键安装、卸载SmokePing三种版本
- 一键安装Tcpping (Smokeping专用版本)
- 安装supervisor以守护fcgi进程
- 自动更换至GMT+8时区并对时
- 自动更换阿里云源(可选)
- 支持中文显示
- 覆盖安装提醒

## 缺点 ##
- 仅适配CentOS7系统
- 未设置开机启动
- Master端/单机版会自动安装Nginx并修改Nginx默认配置

## 注意事项 ##
- 请尽量确保服务器环境干净，最好重新安装系统后使用此脚本
- 本脚本只为方便用户安装/管理SmokePing，请用户自行配置SmokePing
- 每次修改SmokePing配置文件后请重启SmokePing
- 此脚本安装的Tcppinng仅适用于SmokePing

## 安装/卸载 ##
    wget -N --no-check-certificate https://raw.githubusercontent.com/ILLKX/smokeping-onekey/master/smokeping.sh && bash smokeping.sh

## 截图 ##
![https://raw.githubusercontent.com/ILLKX/smokeping-onekey/master/1.jpg](1.jpg)

![https://raw.githubusercontent.com/ILLKX/smokeping-onekey/master/2.jpg](2.jpg)

## 程序安装目录 ##
- Nginx配置：/etc/nginx/ /etc/nginx/conf/
- smokeping安装目录：/opt/smokeping/
- smokeping配置文件：/opt/smokeping/etc/config
- fcgi文件：/opt/smokeping/htdocs/smokeping.fcgi

spawn-fcgi、Nginx、supervisor采用yum安装

## 参考资料 ##
[CentOS7详细安装配置SmokePing教程-来自lala.im](https://lala.im/2821.html)

[SmokePing主从服务器详细配置教程-来自lala.im](https://lala.im/2867.html)

[参考逗比的mt-proxy安装脚本部分代码](https://github.com/ToyoDAdoubi/doubi)

[Tcpping-SmokePing](https://github.com/tobbez/tcpping-smokeping)
