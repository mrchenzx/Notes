## 把文件上传到 root 根目录

## 重建容器

```
docker rm -f <name>
docker run -d -p <port>:8080 --name <name> --restart always nondanee/unblockneteasemusic -o kuwo qq migu
docker cp /root/src/ <name>:/usr/src/app/
docker restart <name>
```

## 我的备份命令

1. 阿里云（国内）

- iOS

```
docker rm -f music_ios
docker run -d -p 2021:8080 --name music_ios --restart always nondanee/unblockneteasemusic -s -o kuwo qq migu -e https://music.163.com
docker cp /root/src/ music_ios:/usr/src/app/
docker restart music_ios
```

- PC

```
docker rm -f music_pc
docker run -d -p 2020:8080 --name music_pc --restart always nondanee/unblockneteasemusic -o kuwo qq migu
docker cp /root/src/ music_pc:/usr/src/app/
docker restart music_pc
```

2. 腾讯云（国外）

- iOS

```
docker rm -f music_ios
docker run -d -p 2020:8080 --name music_ios --restart always nondanee/unblockneteasemusic -s -o joox kuwo -e https://music.163.com
docker cp /root/src/ music_ios:/usr/src/app/
docker restart music_ios
```

- PC

```
docker rm -f music_pc
docker run -d -p 2021:8080 --name music_pc --restart always nondanee/unblockneteasemusic -o joox kuwo
docker cp /root/src/ music_pc:/usr/src/app/
docker restart music_pc
```