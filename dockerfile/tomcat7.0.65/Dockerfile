#IMAGE tomcat7.0.65
#DESCRIPTION admin/12345678
#docker build -t registry.aliyuncs.com/wzwdev/server:tomcat7.0.65 .
#docker run --name tomcat -d -p 80:80 --restart=always registry.aliyuncs.com/wzwdev/server:tomcat7.0.65

FROM 127.0.0.1:5000/jdk/jdk:1.7.0
MAINTAINER wzwdev "wzwdev@126.com"

ADD files/tomcat7.0.65.tar.gz /alidata/server

ADD files/run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh && /usr/sbin/sshd -D

EXPOSE 22 80 
