#!/bin/bash
echo mirrors_list="{
$(cd content/mirror-wiki/ ; find . -maxdepth 1 ! -name "." -type d -printf '\t"%f": "https://mirrors.cqu.edu.cn/wiki/mirror-wiki/%f",\n')
}" > static/js/mirrors_list.js
./hugo

