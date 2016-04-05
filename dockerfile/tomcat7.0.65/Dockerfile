#IMAGE tomcat7.0.65
#DESCRIPTION tomcat7.0.65
#docker build -t registry.aliyuncs.com/wzwdev/server:tomcat7.0.65 .
#docker run --name tomcat -d -p 80:80 --restart=always registry.aliyuncs.com/wzwdev/server:tomcat7.0.65

FROM registry.aliyuncs.com/wzwdev/server:jdk1.7.0
MAINTAINER wzwdev "wzwdev@126.com"

ADD http://7xsjza.com2.z0.glb.clouddn.com/tomcat7.0.65.tar.gz /alidata/server/
RUN cd /alidata/server/ && tar -zxf tomcat7.0.65.tar.gz && rm -f tomcat7.0.65.tar.gz

ADD files/run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh && /usr/sbin/sshd -D

EXPOSE 22 80 
