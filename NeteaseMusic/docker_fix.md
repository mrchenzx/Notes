## 下载文件夹压缩包

1. [点击下载文件夹压缩包](https://github.com/chiupam/Notes/blob/master/NeteaseMusic/src.rar?raw=true)

2. 解压后上传到服务器的 `/root/` 根目录下

## 重建容器

其中, `<name>` 修改为容器名, `<port>` 修改为端口号

```
docker rm -f <name>
docker run -d -p <port>:8080 --name <name> --restart always nondanee/unblockneteasemusic -o kuwo qq migu
docker cp /root/src/ <name>:/usr/src/app/
docker restart <name>
```
