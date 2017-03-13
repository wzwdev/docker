#IMAGE zookeeper-3.4.8
#DESCRIPTION zookeeper-3.4.8
#docker build -t registry.aliyuncs.com/wzwdev/zookeeper:3.4.8 .
#docker run --name zookeeper -d -p 2181:2181 --restart=always registry.aliyuncs.com/wzwdev/zookeeper:3.4.8

FROM registry.aliyuncs.com/wzwdev/jdk:1.8.0
MAINTAINER wzwdev "wzwdev@126.com"

wget -O /alidata/server/zookeeper-3.4.8.tar.gz http://apache.fayea.com/zookeeper/zookeeper-3.4.8/zookeeper-3.4.8.tar.gz
cd /alidata/server && tar -zxvf zookeeper-3.4.8.tar.gz
cp -r /alidata/server/zookeeper-3.4.8 /alidata/server/zookeeper-3.4.8
touch /alidata/server/zookeeper-3.4.8/conf/zoo.cfg
echo tickTime=2000 >> /alidata/server/zookeeper-3.4.8/conf/zoo.cfg
echo dataDir=/alidata/server/zookeeper-3.4.8/data >> /alidata/server/zookeeper-3.4.8/conf/zoo.cfg
echo dataLogDir=/alidata/server/zookeeper-3.4.8/logs >> /alidata/server/zookeeper-3.4.8/conf/zoo.cfg
echo clientPort=2181 >> /alidata/server/zookeeper-3.4.8/conf/zoo.cfg
echo initLimit=5 >> /alidata/server/zookeeper-3.4.8/conf/zoo.cfg
echo syncLimit=2 >> /alidata/server/zookeeper-3.4.8/conf/zoo.cfg

rm -fr /alidata/server/zookeeper-3.4.8.tar.gz

ADD files/run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh && /usr/sbin/sshd -D

EXPOSE 22 2181