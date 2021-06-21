#!/usr/bin/env bash

if [ ! -d "/ql" ];then
    dir_root=/jd
else
    dir_root=/ql
fi
dir_scripts=$dir_root/scripts
cd $dir_scripts
if [ ! -d "/docker" ];then
    mkdir "docker"
fi
dir_docker=$dir_scripts/docker
cd $dir_root
url="https://ghproxy.com/https://raw.githubusercontent.com/chiupam/Notes/master/JD/crontab_list.sh"
wget $url
file_name="crontab_list.sh"
mv -f $file_name $dir_docker
