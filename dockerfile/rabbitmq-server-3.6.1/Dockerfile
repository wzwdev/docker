#IMAGE rabbitmq-server-3.6.1
#DESCRIPTION rabbitmq-server-3.6.1 http://ip:15672 admin/admin
#docker build -t registry.aliyuncs.com/wzwdev/rabbitmq-server:3.6.1 .
#docker run --name rabbitmq -d registry.aliyuncs.com/wzwdev/rabbitmq-server:3.6.1

FROM registry.aliyuncs.com/wzwdev/erlang:18.3
MAINTAINER wzwdev "wzwdev@126.com"

#RUN wget -O /alidata/server/rabbitmq-server-generic-unix-3.6.1.tar.xz http://www.rabbitmq.com/releases/rabbitmq-server/v3.6.1/rabbitmq-server-generic-unix-3.6.1.tar.xz
#RUN yum install -y xz
#RUN cd /alidata/server && xz -d rabbitmq-server-generic-unix-3.6.1.tar.xz && tar -xf rabbitmq-server-generic-unix-3.6.1.tar && mv rabbitmq_server-3.6.1 rabbitmq-server-3.6.1 && rm -f rabbitmq-server-generic-unix-3.6.1.tar.xz
ADD http://7xsjza.com2.z0.glb.clouddn.com/rabbitmq-server-3.6.1.tar.gz /alidata/server/
RUN cd /alidata/server/ && tar -zxf rabbitmq-server-3.6.1.tar.gz && rm -f rabbitmq-server-3.6.1.tar.gz

ADD files/rabbitmq-env.conf /alidata/server/rabbitmq-server-3.6.1/etc/rabbitmq/rabbitmq-env.conf
ADD files/rabbitmq.config /alidata/server/rabbitmq-server-3.6.1/etc/rabbitmq/rabbitmq.config

RUN wget -O /alidata/glibc-2.14.1.tar.gz http://ftp.gnu.org/gnu/glibc/glibc-2.14.1.tar.gz
RUN wget -O /alidata/glibc-ports-2.14.1.tar.gz http://ftp.gnu.org/gnu/glibc/glibc-ports-2.14.1.tar.gz
RUN cd /alidata && tar -zxf glibc-2.14.1.tar.gz && tar -zxf glibc-ports-2.14.1.tar.gz && mv glibc-ports-2.14.1 glibc-2.14.1/ports
RUN /alidata/glibc-2.14.1/configure  --prefix=/usr --disable-profile --enable-add-ons --with-headers=/usr/include --with-binutils=/usr/bin && make && make install
RUN ll /lib64/libc*
RUN /alidata/server/rabbitmq-server-3.6.1/sbin/rabbitmq-plugins enable rabbitmq_management --offline

ADD files/run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh && /usr/sbin/sshd -D

EXPOSE 22 5672 15672