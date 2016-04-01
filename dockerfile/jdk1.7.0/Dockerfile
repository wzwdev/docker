#IMAGE jdk1.7.0
#DESCRIPTION jdk1.7.0_45
#docker build -t registry.aliyuncs.com/wzwdev/server:jdk1.7.0 .
#docker run --name jdk -d registry.aliyuncs.com/wzwdev/server:jdk1.7.0

FROM registry.aliyuncs.com/wzwdev/os:centos6.6
MAINTAINER wzwdev "wzwdev@126.com"

ADD files/jdk1.7.0.tar.gz /alidata/server

ENV JAVA_HOME=/alidata/server/jdk1.7.0
ENV PATH=$JAVA_HOME/bin:$PATH
ENV CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar

ADD files/run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh && /usr/sbin/sshd -D

EXPOSE 22