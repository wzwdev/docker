#IMAGE centos-7.0
#DESCRIPTION centos7.0:root/root,add vim/wget/tar/top/netstat/rz/sz
#docker build -t registry.aliyuncs.com/wzwdev/centos:7.0 .
#docker run --name centos -d -p 50022:22 registry.aliyuncs.com/wzwdev/centos:7.0                       background run,stop not delete
#docker run --name centos --rm registry.aliyuncs.com/wzwdev/centos:7.0                                        background run,stop and delete
#docker run --name centos --rm registry.aliyuncs.com/wzwdev/centos:7.0 echo wzw                       modi CMD(/usr/sbin/sshd -D for echo wzw) finish and delete
#docker run --name centos --rm -it registry.aliyuncs.com/wzwdev/centos:7.0 /bin/bash                    modi CMD(/usr/sbin/sshd -D for /bin/bash) exit and delete

FROM docker.io/centos:7.0.1406
MAINTAINER wzwdev "wzwdev@126.com"

RUN yum install -y openssh-server
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key
RUN ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key
RUN ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key
RUN ssh-keygen -t dsa -f /etc/ssh/ssh_host_ed25519_key

RUN yum install -y wget
RUN rpm --rebuilddb && yum install -y vim
RUN yum install -y tar
RUN rpm --rebuilddb && yum install -y procps
RUN yum install -y net-tools
RUN rpm --rebuilddb && yum install -y lrzsz

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo "root:root" | chpasswd

ENV LANG en_US.UTF-8

CMD /usr/sbin/sshd -D

EXPOSE 22