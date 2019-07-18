---
title: "Fedora镜像使用帮助"
date: 2019-02-07T16:20:09+08:00
draft: false
weight: 2
---
## 地址
https://mirrors.cqu.edu.cn/fedora
## 描述
Fedora Linux 软件仓库
## 收录框架
x86_64
## 收录版本
仅`release`
## 使用说明
首先做好备份操作：
```bash
# fedora
mv /etc/yum.repos.d/fedora.repo /etc/yum.repos.d/fedora.repo.bak
mv /etc/yum.repos.d/fedora-updates.repo /etc/yum.repos.d/fedora-updates.repo.bak
```
```bash
# fedora modular
mv /etc/yum.repos.d/fedora-updates.repo /etc/yum.repos.d/fedora-updates.repo.bak
mv /etc/yum.repos.d/fedora-modular.repo /etc/yum.repos.d/fedora-modular.repo.bak
```
然后执行：
```bash
wget   -O   /etc/yum.repos.d/fedora.repo   http://mirrors.cqu.edu.cn/repo/fedora/fedora.repo
wget   -O   /etc/yum.repos.d/fedora-updates.repo   http://mirrors.cqu.edu.cn/repo/fedora/fedora-updates.repo
```
```bash
wget   -O   /etc/yum.repos.d/fedora-modular.repo   http://mirrors.cqu.edu.cn/repo/fedora/fedora-modular.repo
wget   -O   /etc/yum.repos.d/fedora-updates-modular.repo   http://mirrors.cqu.edu.cn/repo/fedora/fedora-updates-modular.repo
```
