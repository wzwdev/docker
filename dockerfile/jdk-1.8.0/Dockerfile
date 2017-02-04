#IMAGE jdk-1.8.0
#DESCRIPTION jdk-1.8.0.74
#docker build -t registry.aliyuncs.com/wzwdev/jdk:1.8.0 .
#docker run --name jdk -d registry.aliyuncs.com/wzwdev/jdk:1.8.0

FROM registry.aliyuncs.com/wzwdev/centos:6.6
MAINTAINER wzwdev "wzwdev@126.com"

ADD http://oss.ninege.cn:9999/oss/soft/jdk-1.8.0.tar.gz /alidata/server/
RUN cd /alidata/server/ && tar -zxf jdk-1.8.0.tar.gz && rm -f jdk-1.8.0.tar.gz

ENV JAVA_HOME=/alidata/server/jdk-1.8.0
ENV PATH=$JAVA_HOME/bin:$PATH
ENV CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar

ADD files/run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh && /usr/sbin/sshd -D

EXPOSE 22