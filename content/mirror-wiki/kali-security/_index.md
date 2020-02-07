| title | date | draft | weight |
| --- | --- | --- | --- |
| Kali Linux镜像使用帮助 | 2020-1-13 | false | 2 |

# 地址
https://mirror.cqu.edu.cn
# 说明
Kali Linux的安全更新

{{% notice note %}}仓库已于2016年停止更新 {{% /notice %}}
# 使用说明
## 详细的步骤
{{% notice note %}}此步骤假定你是一位Linux的小白，且你需要这份已经多年未更新的源库 {{% /notice %}}
### 1：打开并备份sources.list
> 以下基于vim进行编写
```
$cd /etc/apt/
------------------------------------
$cp sources.list sources.list.txt
------------------------------------
$sudo vim sources.list
------------------------------------
一般未编写source.list的文档内容如下
------------------------------------

# 

# deb cdrom:[Debian GNU/Linux 2019.3 _Kali-rolling_ - Official Snapshot amd64 LIVE/INSTALL Binary 20190827-10:52]/ kali-last-snapshot contrib main non-free

#deb cdrom:[Debian GNU/Linux 2019.3 _Kali-rolling_ - Official Snapshot amd64 LIVE/INSTALL Binary 20190827-10:52]/ kali-last-snapshot contrib main non-free

deb http://http.kali.org/kali kali-rolling main non-free contrib
# deb-src http://http.kali.org/kali kali-rolling main non-free contrib

# This system was installed using small removable media
# (e.g. netinst, live or single CD). The matching "deb cdrom"
# entries were disabled at the end of the installation process.
# For information about how to configure apt package sources,
# see the sources.list(5) manual.
```
### 2: 添加源
* 1：在键盘按下<kbd>i</kbd>键 进入编辑模式
* 2：添加下列代码
```
deb http://old.kali.org/kali-security sana/updates main contrib non-free
# deb http://old.kali.org/kali-security sana/updates main contrib non-free
```
* 3：按下<kbd>Exc</kbd>退出编辑模式，同时按下<kbd>shitf</kbd>+<kbd>;</kbd>键，在输入<kbd>w</kbd>+<kbd>q</kbd>，回车保存 
### 3：刷新缓存
```
$ sudo apt update
```
## 一般更替步骤
在终端中执行下列语句以执行
```
sudo sed -i '1a deb http://old.kali.org/kali-security sana/updates main contrib non-free\
# deb http://old.kali.org/kali-security sana/updates main contrib non-free' /etc/apt/sources.list
```
{{% notice tip %}} 详细有关sed指令的内容请参考sedman page 或者 参阅 [Arch Linux WIKI] {{% /notice %}}

[Arch Linux WIKI]: https://wiki.archlinux.org/index.php/Core_utilities#Essentials

## 相关链接
Kali Linux 主页 https://www.kali.org/

文档 https://www.kali.org/kali-linux-documentation/

论坛 http://forums.kali.org/