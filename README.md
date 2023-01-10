# docker-git-推送
这个项目是一个简单的脚本和 Docker 容器，用于检测对 给定的目录并自动提交和推送任何更改到该目录。 这对于自动将配置文件保存在版本控制中很有用 对于喜欢更改它们的应用程序。


## 构建
```
docker build -t "git-push:latest" .
```

## 运行
```
docker run --name git-push -d  \
    -e GIT_REPO="ssh://git@github.com/user/repository.git" \
    -e GIT_BRANCH="master" \
    -e GIT_ORIGIN="origin" \
    -e COMMIT_USER="Git Service" \
    -e COMMIT_EMAIL="git@example.com" \
    -e WORKING_DIR="/git" \
    -e SSH_KEY="<private key>" \
    -e FILES_TO_COMMIT="." \
    -e SLEEP_INTERVAL="600" \
    -v /path/to/git/repo:/git git-push:latest
```
