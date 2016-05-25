#IMAGE webf-2.0.0
#DESCRIPTION webf-2.0.0 http://ip/webf super/super admin/admin
#docker build -t registry.aliyuncs.com/wzwdev/webf:2.0.0 .
#docker run --name webf -d -p 80:80 -p 3306:3306 --restart=always registry.aliyuncs.com/wzwdev/webf:2.0.0

FROM registry.aliyuncs.com/wzwdev/mysql-webf:2.0.0
MAINTAINER wzwdev "wzwdev@126.com"

ADD http://7xsjza.com2.z0.glb.clouddn.com/jdk-1.7.0.tar.gz /alidata/server/
RUN cd /alidata/server/ && tar -zxf jdk-1.7.0.tar.gz && rm -f jdk-1.7.0.tar.gz

ENV JAVA_HOME=/alidata/server/jdk-1.7.0
ENV PATH=$JAVA_HOME/bin:$PATH
ENV CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar

ADD http://7xsjza.com2.z0.glb.clouddn.com/tomcat-7.0.68.tar.gz /alidata/server/
RUN cd /alidata/server/ && tar -zxf tomcat-7.0.68.tar.gz && rm -f tomcat-7.0.68.tar.gz

RUN wget -O /alidata/server/webf.tar.gz ftp://test.ihorn.com.cn/oss/ad/webf.tar.gz /alidata/server/
RUN cd /alidata/server/ && tar -zxf webf.tar.gz -C /alidata/server/tomcat-7.0.68/webapps && rm -f webf.tar.gz

ADD files/run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh && /usr/sbin/sshd -D

EXPOSE 22 80 3306
