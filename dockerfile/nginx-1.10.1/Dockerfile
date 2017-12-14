#IMAGE nginx-1.10.1
#DESCRIPTION nginx-1.10.1
#docker build -t registry.aliyuncs.com/wzwdev/nginx:1.10.1 .
#docker run --name nginx -d -p 80:80 --restart=always registry.aliyuncs.com/wzwdev/nginx:1.10.1
#docker run --name nginx -d -p 443:443 --restart=always registry.aliyuncs.com/wzwdev/nginx:1.10.1

FROM registry.aliyuncs.com/wzwdev/centos:7.4
MAINTAINER wzwdev "wzwdev@126.com"

RUN rpm --rebuilddb && yum install -y pcre pcre-devel
RUN rpm --rebuilddb && yum install -y zlib zlib-devel
RUN rpm --rebuilddb && yum install -y openssl openssl-devel

ADD http://114.55.255.20:50080/oss/docker/nginx-1.10.1.tar.gz /alidata/server/
RUN cd /alidata/server/ && tar -zxf nginx-1.10.1.tar.gz && rm -f nginx-1.10.1.tar.gz

RUN groupadd nginx
RUN useradd nginx -g nginx

ADD files/run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh && tail -f /etc/redhat-release

EXPOSE 80 443
