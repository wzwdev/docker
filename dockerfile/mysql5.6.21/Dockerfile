#IMAGE mysql5.6.21
#DESCRIPTION root/root csst/csst
#docker build -t registry.aliyuncs.com/wzwdev/server:mysql5.6.21 .
#docker run --name mysql -d -p 3306:3306 --restart=always registry.aliyuncs.com/wzwdev/server:mysql5.6.21

FROM registry.aliyuncs.com/wzwdev/os:centos6.6
MAINTAINER wzwdev "wzwdev@126.com"

RUN yum install -y libaio

ADD files/mysql.tar.gz /alidata/server
ADD files/mysqld /etc/init.d/mysqld

RUN groupadd mysql
RUN useradd mysql -g mysql

RUN chown -R mysql:mysql /alidata/server/mysql
RUN chmod -R 755 /alidata/server/mysql
RUN chmod 755 /etc/init.d/mysqld

ENV PATH=$PATH:/alidata/server/mysql/bin

ADD files/run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh && /usr/sbin/sshd -D

EXPOSE 22 3306