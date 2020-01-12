| author | date |
| --- | --- |
| Yinlianlei | 2020-1-12 |

# 前言
kali linux系统主要适用于计算机安全测试，就其镜像文件内就已经预装了许多渗透用测试软件

如果是Linux新手，个人不建议首先使用kali linux，推荐使用ubuntu，Arch，centos等系统
## kali linux系统
kali linux系统是基于Debian的Linux发行版，其为其前代Back|Track5的重写版本

其最为重要的作用是用于安全测试，当然也可以作为无线攻击和网络渗透工具
# 开始使用相关镜像源
此步骤为假定你已经安装了linux系统且需要使用kali的相关源
步骤，且认为是只了解比较基础Linux的小白\
若你是一名比较了解linux系统操作的程序员，在下一个标题下会带有所需代码
* 1：打开下载源的配置文件(注意备份，方便恢复)(不建议跳过)(这里使用vim进行操作，当然，你也可以使用其他编辑器)
```
$cd /etc/apt/
$cp sources.list sources.list.txt
$vim sources.list

# 

# deb cdrom:[Debian GNU/Linux 2019.3 _Kali-rolling_ - Official Snapshot amd64 LIVE/INSTALL Binary 20190827-10:52]/ kali-last-snapshot contrib main non-free

#deb cdrom:[Debian GNU/Linux 2019.3 _Kali-rolling_ - Official Snapshot amd64 LIVE/INSTALL Binary 20190827-10:52]/ kali-last-snapshot contrib main non-free

_(光标位置)

deb http://http.kali.org/kali kali-rolling main non-free contrib
# deb-src http://http.kali.org/kali kali-rolling main non-free contrib

# This system was installed using small removable media
# (e.g. netinst, live or single CD). The matching "deb cdrom"
# entries were disabled at the end of the installation process.
# For information about how to configure apt package sources,
# see the sources.list(5) manual.
```
* 2:添加源
    * 1：在键盘按下 i键 进入编辑模式，将光标移动到上面(_)所示位置
    * 2：添加下列代码
    * 3：按下先后按下Esc shift+; wq (按下Enter键)(+为同时按下)(wq为输入wq) 
```
deb https://mirrors.cqu.edu.cn/kali kali-rolling main non-free contrib
# deb-src https://mirror.cqu.edu.cn/kali kali-rolling main non-free contrib
```
* 3：检查是否可用\
在终端中输入
```
sudo apt-get update
```
若显示有重大镜像站的相应网站，则证明已经成功
## 添加的源代码
```
deb https://mirrors.cqu.edu.cn/kali kali-rolling main non-free contrib
# deb-src https://mirror.cqu.edu.cn/kali kali-rolling main non-free contrib
```
