#IMAGE nginx1.7.0-ssl
#DESCRIPTION nginx1.7.0-ssl
#docker build -t registry.aliyuncs.com/wzwdev/nginx:1.7.0-ssl .
#docker run --name nginx -d -p 80:80 --restart=always registry.aliyuncs.com/wzwdev/nginx:1.7.0-ssl

FROM registry.aliyuncs.com/wzwdev/nginx-1.7.0
MAINTAINER wzwdev "wzwdev@126.com"

ADD files/nginx /alidata/server/nginx-1.7.0/nginx
RUN chmod +x /run.sh

ADD files/run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh && /usr/sbin/sshd -D

EXPOSE 22 80
