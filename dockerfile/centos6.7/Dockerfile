#IMAGE centos6.7
#DESCRIPTION centos6.7:root/root,add vim/wget/tar
#docker build -t registry.aliyuncs.com/wzwdev/centos:6.7 .
#docker run --name centos -d -p 50022:22 registry.aliyuncs.com/wzwdev/centos:6.7                       background run,stop not delete
#docker run --name centos --rm -p 50022:22 registry.aliyuncs.com/wzwdev/centos:6.7                    background run,stop and delete
#docker run --name centos --rm -p 50022:22 registry.aliyuncs.com/wzwdev/centos:6.7 echo wzw   modi CMD(/usr/sbin/sshd -D,front run) exec finish and delete

FROM docker.io/centos:6.7
MAINTAINER wzwdev "wzwdev@126.com"

RUN yum install -y openssh-server
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key
RUN ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key
RUN ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key

RUN yum install -y wget

RUN mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
RUN wget -O /etc/yum.repos.d/CentOS-Base-Aliyun.repo http://mirrors.aliyun.com/repo/Centos-6.repo 
RUN yum clean all && yum makecache

RUN rpm --rebuilddb && yum install -y vim
RUN yum install -y tar

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo "root:root" | chpasswd

ENV LANG en_US.UTF-8

CMD /usr/sbin/sshd -D

EXPOSE 22