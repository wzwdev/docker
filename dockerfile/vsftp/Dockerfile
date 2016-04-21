#IMAGE vsftp
#DESCRIPTION ftp://ip  ftpadmin/ftpadmin
#docker build -t registry.aliyuncs.com/wzwdev/vsftp .
#docker run --name vsftp --rm -p 21:21 -it registry.aliyuncs.com/wzwdev/vsftp /bin/bash
#docker run --name vsftp -d -p 21:21 --restart=always registry.aliyuncs.com/wzwdev/vsftp
#docker run --name vsftp -d -p 21:21 -v /alidata/server/vsftp:/alidata/server/vsftp --restart=always registry.aliyuncs.com/wzwdev/vsftp

FROM registry.aliyuncs.com/wzwdev/centos:6.6
MAINTAINER wzwdev "wzwdev@126.com"

RUN yum install -y vsftp

RUN mkdir -p /alidata/ftp
RUN useradd -d /alidata/ftp -s /sbin/nologin ftpadmin 
RUN echo "ftpadmin:ftpadmin" | chpasswd
RUN chown -R ftpadmin:ftpadmin /alidata/ftp
RUN chmod -R 755 /alidata/ftp

RUN echo chroot_local_user=YES >> /etc/vsftp.conf
RUN echo anon_root=/alidata/ftp >> /etc/vsftp.conf
RUN chkconfig vsftpd on
RUN service vsftpd start

ADD files/run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh && /usr/sbin/sshd -D

EXPOSE 22 21