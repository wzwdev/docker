#IMAGE nginx-1.3.8
#DESCRIPTION nginx-1.3.8
#docker build -t registry.aliyuncs.com/wzwdev/nginx:1.3.8 .
#docker run --name nginx -d -p 80:80 --restart=always registry.aliyuncs.com/wzwdev/nginx:1.3.8

FROM registry.aliyuncs.com/wzwdev/centos:6.6
MAINTAINER wzwdev "wzwdev@126.com"

RUN rpm --rebuilddb && yum install -y pcre pcre-devel
RUN rpm --rebuilddb && yum install -y zlib zlib-devel
RUN rpm --rebuilddb && yum install -y openssl openssl-devel

ADD http://7xsjza.com1.z0.glb.clouddn.com/nginx-1.3.8.tar.gz /alidata/server/
RUN cd /alidata/server/ && tar -zxf nginx-1.3.8.tar.gz && rm -f nginx-1.3.8.tar.gz

RUN groupadd nginx
RUN useradd nginx -g nginx

ADD files/run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh && /usr/sbin/sshd -D

EXPOSE 22 80
