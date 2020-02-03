---
title: "Debian 安全更新使用帮助"
date: 2020-02-03T22:10:00+08:00
draft: false
weight: 2
---
## 地址
<https://mirrors.cqu.edu.cn/debian-security>
## 说明
Debian 安全更新
## 收录架构
x86, amd64 (x86_64), armel, armhl, arm64, mipsel, mips64el, ppc64el, s390x, 源代码

## 收录版本
oldoldstable (jessie), oldstable (stretch), stable (buster), testing (bullseye) 

## 使用说明

{{% notice warning %}}
**一般情况下，用户获取安全更新应该直接使用`http://security.debian.org/debian-security`而非指定别的镜像站。**<br />
Debian 的[安全更新源](security.debian.org)是为了使安全更新**尽快可用**。<br />
使用非官方镜像站会让此增加不必要的麻烦，尤其是这些镜像站没有及时更新时。
详见 <https://www.debian.org/security/>。
{{% /notice %}}

默认情况下，以下命令可以将默认软件源（`security.debian.org/debian-security`）替换为重庆大学镜像站（`mirrors.cqu.edu.cn/debian-security`）并启用安全更新：
{{< highlight shell >}}
su -c "sed -i 's|#*deb http://security.debian.org|deb http://mirrors.cqu.edu.cn|' /etc/apt/sources.list"
{{< /highlight >}}
如果要使用 https，那么可以使用
{{< highlight shell >}}
su -c "sed -i 's|#*deb http://security.debian.org|deb https://mirrors.cqu.edu.cn|' /etc/apt/sources.list"
{{< /highlight >}}
用户亦可手动编辑`/etc/apt/sources.list`（TODO）。
