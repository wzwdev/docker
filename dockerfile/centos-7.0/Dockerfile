#IMAGE centos-7.0
#DESCRIPTION centos7.0:vi/tar
#docker build -t registry.aliyuncs.com/wzwdev/centos:7.0 .
#docker run --name centos -d registry.aliyuncs.com/wzwdev/centos:7.0					    background run,stop not delete
#docker run --name centos --rm registry.aliyuncs.com/wzwdev/centos:7.0                                        background run,stop and delete
#docker run --name centos --rm registry.aliyuncs.com/wzwdev/centos:7.0 echo wzw                       modi CMD(more /etc/redhat-release for echo wzw) finish and delete
#docker run --name centos --rm -it registry.aliyuncs.com/wzwdev/centos:7.0 /bin/bash                    modi CMD(more /etc/redhat-release for /bin/bash) exit and delete

FROM docker.io/centos:7.0.1406
MAINTAINER wzwdev "wzwdev@126.com"

RUN yum install -y wget
RUN rpm --rebuilddb && yum install -y vim
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

ENV LANG en_US.UTF-8

CMD more /etc/redhat-release
