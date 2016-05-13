#IMAGE nginx1.7.0
#DESCRIPTION nginx1.7.0
#docker build -t registry.aliyuncs.com/wzwdev/nginx:1.7.0 .
#docker run --name nginx -d -p 80:80 --restart=always registry.aliyuncs.com/wzwdev/nginx:1.7.0

FROM registry.aliyuncs.com/wzwdev/centos:6.6
MAINTAINER wzwdev "wzwdev@126.com"

ADD http://7xsjza.com1.z0.glb.clouddn.com/nginx-1.7.0.tar.gz /alidata/server/
RUN cd /alidata/server/ && tar -zxf nginx-1.7.0.tar.gz && rm -f nginx-1.7.0.tar.gz

RUN groupadd nginx
RUN useradd nginx -g nginx

ADD files/run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh && /usr/sbin/sshd -D

EXPOSE 22 80
