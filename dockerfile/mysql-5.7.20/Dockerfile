#IMAGE mysql-5.7.20
#DESCRIPTION root/root
#docker build -t registry.aliyuncs.com/wzwdev/mysql:5.7.20 .
#docker run --name mysql -d -p 3306:3306 --restart=always registry.aliyuncs.com/wzwdev/mysql:5.7.20

FROM registry.aliyuncs.com/wzwdev/centos:7.4
MAINTAINER wzwdev "wzwdev@126.com"

RUN rpm --rebuilddb && yum install -y libaio
RUN rpm --rebuilddb && yum install -y numactl
RUN rpm --rebuilddb && yum install -y hostname

ADD http://114.55.255.20:50080/oss/docker/mysql.tar.gz /alidata/server/
RUN cd /alidata/server/ && tar -zxf mysql.tar.gz && rm -f mysql.tar.gz
ADD files/mysqld /etc/init.d/mysqld

RUN groupadd mysql
RUN useradd mysql -g mysql

RUN chown -R mysql:mysql /alidata/server/mysql
RUN chmod -R 750 /alidata/server/mysql
RUN chmod 750 /etc/init.d/mysqld

ENV PATH=$PATH:/alidata/server/mysql/bin

ADD files/run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh && tail -f /etc/redhat-release
 
EXPOSE 3306