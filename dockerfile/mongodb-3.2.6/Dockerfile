#IMAGE mongodb-3.2.6
#DESCRIPTION mongodb-3.2.6 
#docker build -t registry.aliyuncs.com/wzwdev/mongodb:3.2.6 .
#docker run --name mongodb -d -p 27017:27017 --restart=always registry.aliyuncs.com/wzwdev/mongodb:3.2.6

FROM registry.aliyuncs.com/wzwdev/centos:6.6
MAINTAINER wzwdev "wzwdev@126.com"

RUN mkdir -p /alidata/server && wget -O /alidata/server/mongodb-linux-x86_64-3.2.6.tgz ftp://test.ihorn.com.cn/product/mongodb-linux-x86_64-3.2.6.tgz
RUN cd /alidata/server/ && tar -zxf mongodb-linux-x86_64-3.2.6.tgz && mv mongodb-linux-x86_64-3.2.6 mongodb-3.2.6 && rm -f mongodb-linux-x86_64-3.2.6.tgz
ADD files/mongodb.conf /alidata/server/mongodb-3.2.6/mongodb.conf
RUN mkdir -p /alidata/server/mongodb-3.2.6/data && mkdir -p /alidata/server/mongodb-3.2.6/logs

ENV PATH=$PATH:/alidata/server/mongodb-3.2.6/bin

ADD files/run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh && /usr/sbin/sshd -D

EXPOSE 22 80
