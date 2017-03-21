#IMAGE mysql-5.6.21
#DESCRIPTION root/root csst/csst
#docker build -t registry.aliyuncs.com/wzwdev/mysql:5.6.21 .
#docker run --name mysql -d -p 3306:3306 --restart=always registry.aliyuncs.com/wzwdev/mysql:5.6.21

FROM registry.aliyuncs.com/wzwdev/centos:6.6
MAINTAINER wzwdev "wzwdev@126.com"

RUN rpm --rebuilddb && yum install -y libaio

RUN wget -O /alidata/server/mysql.tar.gz ftp://test.ihorn.com.cn/mysql.tar.gz
RUN cd /alidata/server/ && tar -zxf mysql.tar.gz && rm -f mysql.tar.gz
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