FROM alpine:latest
MAINTAINER  William Edwards <shadowapex@gmail.com>

ENV GIT_REPO=""
ENV GIT_BRANCH="master"
ENV GIT_ORIGIN="origin"
ENV COMMIT_USER="Git Service"
ENV COMMIT_EMAIL="git@example.com"
ENV WORKING_DIR=""
ENV SSH_KEY=""
ENV FILES_TO_COMMIT="."
ENV SLEEP_INTERVAL="600"

RUN apk update && \
        apk add git && \
	apk add openssh-client


#https://ppabc.cn/1227.html
#RUN ssh-keygen -t rsa -N -f /root/.ssh/id_rsa -q -b 2048 -C “ii6uu99@163.com”
#RUN echo -e "\n\n\n\n" | ssh-keygen -t rsa -C "ii6uu99@163.com"

#RUN echo -e "\n\n" | ssh-keygen -t ed25519  -f /root/.ssh/id_rsa -q -C "ii6uu99@163.com"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
