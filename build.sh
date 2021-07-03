#!/bin/bash
mkdir -p static/js
echo mirrors_list="{
$(cd content/mirror-wiki/ ; find . -maxdepth 1 ! -name "." -type d -printf '\t"%f": "https://mirrors.cqu.edu.cn/wiki/mirror-wiki/%f",\n')
}" > static/js/mirrors_list.js
rm -fr public && ./hugo

