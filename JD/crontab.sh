#!/usr/bin/env bash

if [ ! -d "/ql" ];then
    dir_root=/jd
else
    dir_root=/ql
fi
dir_docker=$dir_root/scripts/docker
file_name="crontab_list.sh"
url="https://ghproxy.com/https://raw.githubusercontent.com/chiupam/Notes/master/JD/crontab_list.sh"
cd $dir_root
wget $url
mv -f $file_name $dir_docker
