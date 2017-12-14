#IMAGE centos-7.4
#DESCRIPTION centos7.4:root/root,add vim/wget/tar
#docker build -t registry.aliyuncs.com/wzwdev/centos:7.4 .
#docker run --name centos -d registry.aliyuncs.com/wzwdev/centos:7.4					    background run,stop not delete
#docker run --name centos --rm registry.aliyuncs.com/wzwdev/centos:7.4                                        background run,stop and delete
#docker run --name centos --rm registry.aliyuncs.com/wzwdev/centos:7.4 echo wzw                       modi CMD(tail -f /running.log for echo wzw) finish and delete
#docker run --name centos --rm -it registry.aliyuncs.com/wzwdev/centos:7.4 /bin/bash                    modi CMD(tail -f /running.log for /bin/bash) exit and delete

FROM docker.io/centos:7.4.1708
MAINTAINER wzwdev "wzwdev@126.com"

RUN yum install -y wget
RUN rpm --rebuilddb && yum install -y vim
RUN yum install -y tar
RUN touch /running.log && echo "Docker container is running!" >> /running.log  

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo "root:root" | chpasswd

ENV LANG en_US.UTF-8

CMD tail -f /running.log