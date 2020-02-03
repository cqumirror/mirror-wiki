---
title: "Debian 软件仓库使用帮助"
date: 2020-02-03T22:10:00+08:00
draft: false
weight: 2
---
## 地址
<https://mirrors.cqu.edu.cn/debian>
## 说明
Debian 软件仓库
## 收录架构
x86, amd64 (x86_64), armel, armhl, arm64, mipsel, mips64el, ppc64el, s390x, 源代码

## 收录版本
oldoldstable (jessie), oldstable (stretch), stable (buster), testing (bullseye), unstable (sid), experimental 

## 使用说明
默认情况下，以下命令可以将默认软件源（`deb.debian.org/debian`）替换为重庆大学镜像站（`mirrors.cqu.edu.cn/debian`）。
```shell 
su -c "sed -i s/deb.debian.org/mirrors.cqu.edu.cn/ /etc/apt/sources.list"
```
用户亦可手动编辑`/etc/apt/sources.list`（TODO）。
