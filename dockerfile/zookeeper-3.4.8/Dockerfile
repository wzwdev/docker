#IMAGE zookeeper-3.4.8
#DESCRIPTION zookeeper-3.4.8
#docker build -t registry.aliyuncs.com/wzwdev/zookeeper:3.4.8 .
#docker run --name zookeeper -d -p 2181:2181 --restart=always registry.aliyuncs.com/wzwdev/zookeeper:3.4.8

FROM registry.aliyuncs.com/wzwdev/jdk:1.8.0
MAINTAINER wzwdev "wzwdev@126.com"

RUN wget -O /alidata/server/zookeeper-3.4.8.tar.gz ftp://test.ihorn.com.cn/zookeeper-3.4.8.tar.gz
RUN cd /alidata/server && tar -zxvf zookeeper-3.4.8.tar.gz
RUN touch /alidata/server/zookeeper-3.4.8/conf/zoo.cfg
RUN echo tickTime=2000 >> /alidata/server/zookeeper-3.4.8/conf/zoo.cfg
RUN echo dataDir=/alidata/server/zookeeper-3.4.8/data >> /alidata/server/zookeeper-3.4.8/conf/zoo.cfg
RUN echo dataLogDir=/alidata/server/zookeeper-3.4.8/logs >> /alidata/server/zookeeper-3.4.8/conf/zoo.cfg
RUN echo clientPort=2181 >> /alidata/server/zookeeper-3.4.8/conf/zoo.cfg
RUN echo initLimit=5 >> /alidata/server/zookeeper-3.4.8/conf/zoo.cfg
RUN echo syncLimit=2 >> /alidata/server/zookeeper-3.4.8/conf/zoo.cfg

RUN rm -fr /alidata/server/zookeeper-3.4.8.tar.gz

ADD files/run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh && /usr/sbin/sshd -D

EXPOSE 22 2181