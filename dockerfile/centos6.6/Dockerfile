#IMAGE centos6.6
#DESCRIPTION centos6.6:root/root,add vim/wget/tar

FROM docker.io/centos:centos6.6
MAINTAINER wanghuirui "wanghuirui@126.com"

RUN yum install -y openssh-server
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key
RUN ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key
RUN ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key

RUN yum install -y vim
RUN yum install -y wget
RUN yum install -y tar

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo "root:root" | chpasswd

ENV LANG en_US.UTF-8

CMD /usr/sbin/sshd -D

EXPOSE 22