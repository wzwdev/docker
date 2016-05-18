#IMAGE redis-3.2.0
#DESCRIPTION redis-3.2.0 
#docker build -t registry.aliyuncs.com/wzwdev/redis:3.2.0 .
#docker run --name redis -d -p 6379:6379 --restart=always registry.aliyuncs.com/wzwdev/redis:3.2.0

FROM registry.aliyuncs.com/wzwdev/centos:6.6
MAINTAINER wzwdev "wzwdev@126.com"

RUN mkdir -p /alidata/server && wget -O /alidata/server/redis-3.2.0.tar.gz http://download.redis.io/releases/redis-3.2.0.tar.gz
RUN cd /alidata/server/ && tar -zxf redis-3.2.0.tar.gz && rm -f ../redis-3.2.0.tar.gz
RUN rpm --rebuilddb && yum install -y gcc-c++
RUN cd /alidata/server/redis-3.2.0 && make
ADD files/redis.conf /alidata/server/redis-3.2.0/redis.conf
RUN mkdir -p /alidata/server/redis-3.2.0/data && mkdir -p /alidata/server/redis-3.2.0/logs

ENV PATH=$PATH:/alidata/server/redis-3.2.0/src

ADD files/run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh && /usr/sbin/sshd -D

EXPOSE 22 6379
