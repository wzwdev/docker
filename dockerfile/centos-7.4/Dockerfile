#IMAGE centos-7.4
#DESCRIPTION centos7.4:root/root,add vim/wget/tar/top/netstat/rz/sz
#docker build -t registry.aliyuncs.com/wzwdev/centos:7.4 .
#docker run --name centos -d -p 50022:22 registry.aliyuncs.com/wzwdev/centos:7.4                       background run,stop not delete
#docker run --name centos --rm registry.aliyuncs.com/wzwdev/centos:7.4                                        background run,stop and delete
#docker run --name centos --rm registry.aliyuncs.com/wzwdev/centos:7.4 echo wzw                       modi CMD(/usr/sbin/sshd -D for echo wzw) finish and delete
#docker run --name centos --rm -it registry.aliyuncs.com/wzwdev/centos:7.4 /bin/bash                    modi CMD(/usr/sbin/sshd -D for /bin/bash) exit and delete

FROM docker.io/centos:7.4.1708
MAINTAINER wzwdev "wzwdev@126.com"

RUN yum install -y wget
RUN rpm --rebuilddb && yum install -y vim
RUN yum install -y tar
RUN rpm --rebuilddb && yum install -y procps
RUN yum install -y net-tools
RUN rpm --rebuilddb && yum install -y lrzsz
RUN touch /wzw.log && echo "Docker container running!" >> /wzw.log  

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo "root:root" | chpasswd

ENV LANG en_US.UTF-8

CMD tail -f /wzw.log