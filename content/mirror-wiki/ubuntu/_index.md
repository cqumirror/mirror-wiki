---
title: "Ubuntu Linux 镜像使用帮助"
draft: false
weight: 2
---
## 地址
http://mirrors.cqu.edu.cn
## 说明
Ubuntu 软件仓库
## 收录架构
x86_64
## 收录版本
Release
具体说明请查看 [Ubuntu Wiki](http://wiki.ubuntu.com/Releases)
## 使用说明
### 简易版本
{{% notice note %}}
此方法仅适用于桌面（Desktop）版本。
{{% /notice %}}
1. 点击`左侧dock`的菜单，进入`Gnome menu`</br>
2. 搜索`software`，打开`Software & Updates`应用
![img1](images/00.jpg)
3. 在打开的对话框中，**第一个标签页** 的下拉选单中（`下载自`）选择`其他站点`。在新打开的对话框选择中国选单，并选择`mirrors.cqu.edu.cn`，点击`选择服务器`
![img2](images/01.jpg)
4. 点击关闭，此时会询问是否刷新 apt 缓存，选择 **是** 进行apt缓存刷新，即可使用
### 通用版本
首先备份`sources.list`
```bash
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
```
然后执行
```bash
sudo nano /etc/apt/sources.list
```
使用`Ctrl+\`搜索`archive.ubuntu.com`,并填入`mirrors.cqu.edu.cn`，回车提交，按`Capital + a`即`A`全部替换。</br>
按`Ctrl+o`进行写入更改，按`Ctrl+x`退出

> 如果源地址为 `cn.archive.ubuntu.com`，那么请将 `cn.archive.ubuntu.com` 替换为 `mirrors.cqu.edu.cn`

通常更改完成应该是这个样子(Ubuntu 20.04 为例):
```bash
deb http://mirrors.cqu.edu.cn/ubuntu/ bionic main restricted universe multiverse
# deb-src http://mirrors.cqu.edu.cn/ubuntu/ bionic main restricted universe multiverse
deb http://mirrors.cqu.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
# deb-src http://mirrors.cqu.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
deb http://mirrors.cqu.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
# deb-src http://mirrors.cqu.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
deb http://mirrors.cqu.edu.cn/ubuntu/ bionic-security main restricted universe multiverse
# deb-src http://mirrors.cqu.edu.cn/ubuntu/ bionic-security main restricted universe multiverse

# deb http://mirrors.cqu.edu.cn/ubuntu/ disco-proposed main restricted universe multiverse
# deb-src http://mirrors.cqu.edu.cn/ubuntu/ disco-proposed main restricted universe multiverse
```
（例子中的发行版版本`bionic`可能与实际版本不同，请以实际情况为准）
然后执行：
```bash
sudo apt update
```
更新apt缓存即可生效
## 相关链接
{{% notice %}}
官方主页
https://www.ubuntu.com/
{{% /notice %}}
{{% notice %}}
文档
https://help.ubuntu.com/
{{% /notice %}}
{{% notice %}}
Wiki
https://wiki.ubuntu.com/
{{% /notice %}}
{{% notice %}}
邮件列表
https://community.ubuntu.com/contribute/support/mailinglists/
{{% /notice %}}
{{% notice %}}
提问
https://askubuntu.com/
{{% /notice %}}
{{% notice %}}
论坛
https://ubuntuforums.org/
{{% /notice %}}
{{% notice %}}
中文论坛
https://forum.ubuntu.org.cn/
{{% /notice %}}
