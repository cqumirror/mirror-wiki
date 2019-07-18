---
title: "Manjaro Linux镜像使用帮助"
date: 2019-02-07T16:20:09+08:00
draft: false
weight: 2
---
## 地址
http://mirrors.cqu.edu.cn/manjaro/
## 说明
Arch Linux软件源
## 收录框架
- x86_64
- i686
## 使用说明
以root身份手动编辑文件`/etc/pacman.d/mirrorlist`，在文件顶端加入
```bash
Server = http://mirrors.cqu.edu.cn/manjaro/stable/$repo/$arch
```
## 相关链接
{{% notice %}}
官方网址：https://www.manjaro.org/
{{% /notice %}}
{{% notice %}}
官方论坛：https://forum.manjaro.org/
{{% /notice %}}
{{% notice %}}
Wiki: https://wiki.manjaro.org/
{{% /notice %}}
