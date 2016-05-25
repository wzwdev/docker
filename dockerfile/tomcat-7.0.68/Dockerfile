#IMAGE tomcat-7.0.68
#DESCRIPTION tomcat-7.0.68
#docker build -t registry.aliyuncs.com/wzwdev/tomcat:7.0.68 .
#docker run --name tomcat -d -p 80:80 --restart=always registry.aliyuncs.com/wzwdev/tomcat:7.0.68

FROM registry.aliyuncs.com/wzwdev/jdk:1.7.0
MAINTAINER wzwdev "wzwdev@126.com"

ADD http://7xsjza.com2.z0.glb.clouddn.com/tomcat-7.0.68.tar.gz /alidata/server/
RUN cd /alidata/server/ && tar -zxf tomcat-7.0.68.tar.gz && rm -f tomcat-7.0.68.tar.gz

ADD http://7xsjza.com2.z0.glb.clouddn.com/tomcat-7.0.68.tar.gz /alidata/server/
RUN cd /alidata/server/ && tar -zxf tomcat-7.0.68.tar.gz && rm -f tomcat-7.0.68.tar.gz


ADD files/run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh && /usr/sbin/sshd -D

EXPOSE 22 80 
