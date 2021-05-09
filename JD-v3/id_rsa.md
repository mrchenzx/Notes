```
cd ~/.ssh && vi id_rsa
```

```
i (这里不用回车)
```

```
***
```

```
按esc输入:wq
```

```
docker cp ~/.ssh/id_rsa jd:/root/.ssh
```

```
docker exec -it jd bash
```

```
cd ~/.ssh && vi config
```

```
i (这里不用回车)
```

```
Host gitee.com
User git
Identityfile ~/.ssh/id_rsa
```

```
按esc后输入:wq
```

```
chmod 700 ~/.ssh/id_rsa
```

```
cd /jd/scripts
```

```
git remote set-url origin git@gitee.com:lxk0301/jd_scripts.git
```

```
exit
```

```
cd && docker exec -it jd bash git_pull
```