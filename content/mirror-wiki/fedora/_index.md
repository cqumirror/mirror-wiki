---
title: "Fedora 镜像使用帮助"
draft: false
weight: 2
---
## 地址
https://mirrors.cqu.edu.cn/fedora
## 描述
Fedora Linux 软件仓库
## 收录架构
x86_64
## 收录版本
仅`release`
## 使用说明
### 换源
首先提升权限


```bash
sudo su
```
再输入密码即可
然后做好备份操作：
```bash
# fedora
mv /etc/yum.repos.d/fedora.repo /etc/yum.repos.d/fedora.repo.bak
mv /etc/yum.repos.d/fedora-updates.repo /etc/yum.repos.d/fedora-updates.repo.bak
```
```bash
# fedora modular
mv /etc/yum.repos.d/fedora-modular.repo /etc/yum.repos.d/fedora-modular.repo.bak
mv /etc/yum.repos.d/fedora-updates-modular.repo /etc/yum.repos.d/fedora-updates-modular.repo.bak
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

再执行：
```bash
 dnf makecache
```
生成缓存。这一步即将软件源更换为重庆大学开源镜像站。
### 更新
如果将fedora已经安装在本地了且有需要的，建议更新一下系统（最好在速度较稳定的网络下进行，如宽带，否则可能失败）


```bash
dnf upgrade -y
```
之后建议重启使得更新生效
### 中文输入法
fedora本身没有中文输入法，如有需要，请按一下步骤操作


安装输入法及一些中文字体


```bash
dnf install fcitx* wqy-zenhei-fonts wqy-microhei-fonts google-noto-sans-fonts google-noto-cjk-fonts -y
```
安装输入法选择器


```bash
dnf install im-chooser -y
```
之后重启，打开终端，键入


```bash
im-chooser
```
之后双击选择FCITX,再点击log out注销用户，再进行登陆，记得在登陆页面将左下角的桌面会话勾选为Plasma(X11),然后就可以了


最后提示，root(高权限)用过之后记得退出


```bash
exit
```

{{%attachments title="repo 文件直接下载" pattern=".*(repo)"/%}}

## 相关链接
{{% notice %}}
官方主页
https://getfedora.org/
{{% /notice %}}
{{% notice %}}
邮件列表
https://fedoraproject.org/wiki/Communicating_and_getting_help
{{% /notice %}}
{{% notice %}}
论坛
https://forums.fedoraforum.org/
{{% /notice %}}
{{% notice %}}
文档
https://docs.fedoraproject.org/
{{% /notice %}}
{{% notice %}}
Wiki
https://fedoraproject.org/wiki/
{{% /notice %}}
