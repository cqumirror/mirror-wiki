| title | date | draft | weight |
| --- | --- | --- | --- |
| Kali Linux镜像使用帮助 | 2020-1-13 | false | 2 |

# 说明
kali Linux的官方软件包仓库
# 使用说明
## 较为详细的步骤
此步骤假定你是一位Linux的小白\
若你是一名比较了解linux系统操作的程序员，在下一个标题下会带有所需软件包代码
### 1：打开下载源的配置文件(注意备份，方便恢复)(不建议跳过)(这里使用vim进行操作，当然，你也可以使用其他编辑器)
```
$ cd /etc/apt/
$ cp sources.list sources.list.txt
$ vim sources.list
(下为sources.list文件的内容，若无法修改，请切换至root权限)
$ su (之后输入你设置的root的密码即可切换至root用户)
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
### 2: 添加源
* 1：在键盘按下<kbd>i</kbd>键 进入编辑模式，将光标移动到上面(_)所示位置
* 2：添加下列代码
* 3：按下<kbd>Exc</kbd>退出编辑模式，同时按下<kbd>shitf</kbd>+<kbd>;</kbd>键，在输入<kbd>w</kbd>+<kbd>q</kbd>，回车保存
```
deb https://mirrors.cqu.edu.cn/kali kali-rolling main non-free contrib
# deb-src https://mirror.cqu.edu.cn/kali kali-rolling main non-free contrib
```
* 4：检查是否可用\
在终端中输入，若显示有重大镜像站的相应网址，则成功
```
$ sudo apt-get update
```

## 添加的软件包源代码
```
deb https://mirrors.cqu.edu.cn/kali kali-rolling main non-free contrib
# deb-src https://mirror.cqu.edu.cn/kali kali-rolling main non-free contrib
```
