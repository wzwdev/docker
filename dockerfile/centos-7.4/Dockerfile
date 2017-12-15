#IMAGE centos-7.4
#DESCRIPTION centos7.4
#docker build -t registry.aliyuncs.com/wzwdev/centos:7.4 .
#docker run --name centos -d registry.aliyuncs.com/wzwdev/centos:7.4					    background run,stop not delete
#docker run --name centos --rm registry.aliyuncs.com/wzwdev/centos:7.4                                        background run,stop and delete
#docker run --name centos --rm registry.aliyuncs.com/wzwdev/centos:7.4 echo wzw                       modi CMD(tail -f /etc/redhat-release for echo wzw) finish and delete
#docker run --name centos --rm -it registry.aliyuncs.com/wzwdev/centos:7.4 /bin/bash                    modi CMD(tail -f /etc/redhat-release for /bin/bash) exit and delete

FROM docker.io/centos:7.4.1708
MAINTAINER wzwdev "wzwdev@126.com"

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo "Asia/Shanghai" > /etc/timezone

ENV LANG en_US.UTF-8

CMD tail -f /etc/redhat-release