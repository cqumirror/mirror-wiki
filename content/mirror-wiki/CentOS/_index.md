---
title: "CentOS镜像使用帮助"
date: 2019-02-07T16:20:09+08:00
draft: false
weight: 2
---
## 地址
http://mirrors.cqu.edu.cn/CentOS
## 说明
CentOS软件源
## 收录框架
- x86_64
- i386
## 收录版本
- CentOS 5
- CentOS 6
- CentOS 7
## 使用说明
首先备份`CentOS-Base.repo`:
```bash
mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
```
然后查看CentOS版本：
```bash
cat /etc/system-release
```
根据版本号下载相应文件到指定目录：</br>
**CentOS 5**:
```bash
wget   -O   /etc/yum.repos.d/CentOS-Base.repo  http://mirrors.cqu.edu.cn/repo/centos/Centos-5.repo
```
**CentOS 6**:
```bash
wget   -O   /etc/yum.repos.d/CentOS-Base.repo  http://mirrors.cqu.edu.cn/repo/centos/Centos-6.repo
```
**CentOS 7**:
```bash
wget   -O   /etc/yum.repos.d/CentOS-Base.repo  http://mirrors.cqu.edu.cn/repo/centos/Centos-7.repo
```
{{% notice warn %}}
有些情况下系统没有预装`wget`程序，请提前进行安装。
{{% notice %}}
然后刷新yum缓存：
```bash
yum makecache
```
## 相关链接
{{% notice %}}
官方主页：https://www.centos.org/
{{% /notice %}}
{{% notice %}}
邮件列表：https://www.centos.org/modules/tinycontent/index.php?id=16
{{% /notice %}}
{{% notice %}}
论坛：https://www.centos.org/modules/newbb/
{{% /notice %}}
{{% notice %}}
文档：https://www.centos.org/docs/
{{% /notice %}}
{{% notice %}}
Wiki：https://wiki.centos.org/
{{% /notice %}}
