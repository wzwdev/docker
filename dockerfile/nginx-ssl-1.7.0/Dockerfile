#IMAGE nginx-ssl-1.7.0
#DESCRIPTION nginx-ssl-1.7.0
#docker build -t registry.aliyuncs.com/wzwdev/nginx-ssl:1.7.0 .
#docker run --name nginx -d -p 80:80 --restart=always registry.aliyuncs.com/wzwdev/nginx-ssl:1.7.0

FROM registry.aliyuncs.com/wzwdev/nginx:1.7.0
MAINTAINER wzwdev "wzwdev@126.com"

RUN cd lib64 && ln -s libpcre.so.0.0.1 libpcre.so.1

ADD files/nginx /alidata/server/nginx-1.7.0/sbin/nginx
RUN chmod +x /alidata/server/nginx-1.7.0/sbin/nginx

ADD files/run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh && /usr/sbin/sshd -D

EXPOSE 22 80
