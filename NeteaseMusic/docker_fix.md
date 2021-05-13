## 解决方法

1. 先安装 wget 和 unzip（如果已安装请跳过）

```
yum install wget
yum install unzip
```

2. 下载修复包并重建、重启容器

> 其中, `<name>` 修改为容器名, `<port>` 修改为端口号

```
cd && wget -P /root/ https://github.com/pan93412/UnblockNeteaseMusic/archive/refs/heads/fixes/providers-0501.zip
unzip /root/providers-0501.zip -d /root/
docker rm -f <name>
docker run -d -p <port>:8080 --name <name> --restart always nondanee/unblockneteasemusic -o kuwo qq migu
docker cp /root/UnblockNeteaseMusic-fixes-providers-0501/src/ <name>:/usr/src/app/
docker restart <name>
rm -rf /root/UnblockNeteaseMusic-fixes-providers-0501 && rm -rf /root/providers-0501.zip
```
