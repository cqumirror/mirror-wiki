---
title: "Arch Linux源使用帮助"
date: 2019-02-07T16:20:09+08:00
draft: false
weight: 1
---
## 地址
http://mirrors.cqu.edu.cn/archlinux/
## 说明
Arch Linux软件源
## 收录框架
x86_64
## 使用说明
以root身份手动编辑文件**/etc/pacman.d/mirrorlist**，在文件顶端加入
```bash
Server = http://mirrors.cqu.edu.cn/archlinux/$repo/os/$arch
```
