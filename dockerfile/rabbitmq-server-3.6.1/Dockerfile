#IMAGE rabbitmq-server-3.6.1
#DESCRIPTION rabbitmq-server-3.6.1 http://ip:15672 test/test
#docker build -t registry.aliyuncs.com/wzwdev/rabbitmq-server:3.6.1 .
#docker run --name rabbitmq -d registry.aliyuncs.com/wzwdev/rabbitmq-server:3.6.1

FROM registry.aliyuncs.com/wzwdev/erlang:18.3
MAINTAINER wzwdev "wzwdev@126.com"

RUN wget -O /alidata/server/rabbitmq-server-generic-unix-3.6.1.tar.xz http://www.rabbitmq.com/releases/rabbitmq-server/v3.6.1/rabbitmq-server-generic-unix-3.6.1.tar.xz
RUN yum install -y xz
RUN cd /alidata/server && xz -d rabbitmq-server-generic-unix-3.6.1.tar.xz && tar -xf rabbitmq-server-generic-unix-3.6.1.tar && mv rabbitmq_server-3.6.1 rabbitmq-server-3.6.1 && rm -f rabbitmq-server-generic-unix-3.6.1.tar.xz

ADD files/rabbitmq-env.conf /alidata/server/rabbitmq-server-3.6.1/etc/rabbitmq/rabbitmq-env.conf
ADD files/rabbitmq.config /alidata/server/rabbitmq-server-3.6.1/etc/rabbitmq/rabbitmq.config

RUN cd /alidata/server/rabbitmq-server-3.6.1
RUN chmod -R 755 sbin
RUN sbin/rabbitmq-server -detached
RUN sbin/rabbitmq-plugins enable rabbitmq_management
RUN sbin/rabbitmqctl add_user test test 
RUN sbin/rabbitmqctl set_user_tags test administrator  
RUN sbin/rabbitmqctl set_permissions -p "/" test ".*" ".*" ".*"
RUN sbin/rabbitmqctl stop

ADD files/run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh && /usr/sbin/sshd -D

EXPOSE 22 5672 15672