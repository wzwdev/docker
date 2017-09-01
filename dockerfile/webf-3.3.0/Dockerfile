#IMAGE webf-3.3.0
#DESCRIPTION webf-3.3.0 http://ip/webf super/super admin/admin
#docker build -t registry.aliyuncs.com/wzwdev/webf:3.3.0 .
#docker run --name webf -d -p 80:80 -p 3306:3306 --restart=always registry.aliyuncs.com/wzwdev/webf:3.3.0

FROM registry.aliyuncs.com/wzwdev/mysql-webf:2.0.0
MAINTAINER wzwdev "wzwdev@126.com"

ADD http://101.37.82.250:50080/oss/jdk-1.8.0.tar.gz /alidata/server/
RUN cd /alidata/server/ && tar -zxf jdk-1.8.0.tar.gz && rm -f jdk-1.8.0.tar.gz

ENV JAVA_HOME=/alidata/server/jdk-1.8.0
ENV PATH=$JAVA_HOME/bin:$PATH
ENV CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar

ADD http://101.37.82.250:50080/oss/tomcat-8.0.32.tar.gz /alidata/server/
RUN cd /alidata/server/ && tar -zxf tomcat-8.0.32.tar.gz && rm -f tomcat-8.0.32.tar.gz

RUN wget -O /alidata/server/webf.tar.gz http://101.37.82.250:50080/oss/webf.tar.gz /alidata/server/
RUN cd /alidata/server/ && tar -zxf webf.tar.gz -C /alidata/server/tomcat-8.0.32/webapps && rm -f webf.tar.gz

ADD files/run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh && /usr/sbin/sshd -D

EXPOSE 22 80 3306
