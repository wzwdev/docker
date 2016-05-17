#IMAGE rabbitmq-server-3.6.1
#DESCRIPTION rabbitmq-server-3.6.1 http://ip:15672 admin/admin
#docker build -t registry.aliyuncs.com/wzwdev/rabbitmq-server:3.6.1 .
#docker run --name rabbitmq -d registry.aliyuncs.com/wzwdev/rabbitmq-server:3.6.1
#docker exec -it rabbitmq bash
#/alidata/server/rabbitmq-server-3.6.1/sbin/rabbitmq-plugins enable rabbitmq_management
#/alidata/server/rabbitmq-server-3.6.1/sbin/rabbitmqctl add_user admin admin
#/alidata/server/rabbitmq-server-3.6.1/sbin/rabbitmqctl set_user_tags admin administrator
#/alidata/server/rabbitmq-server-3.6.1/sbin/rabbitmqctl set_permissions -p "/" admin ".*" ".*" ".*"

FROM registry.aliyuncs.com/wzwdev/erlang:18.3
MAINTAINER wzwdev "wzwdev@126.com"

#RUN wget -O /alidata/server/rabbitmq-server-generic-unix-3.6.1.tar.xz http://www.rabbitmq.com/releases/rabbitmq-server/v3.6.1/rabbitmq-server-generic-unix-3.6.1.tar.xz
#RUN yum install -y xz
#RUN cd /alidata/server && xz -d rabbitmq-server-generic-unix-3.6.1.tar.xz && tar -xf rabbitmq-server-generic-unix-3.6.1.tar && mv rabbitmq_server-3.6.1 rabbitmq-server-3.6.1 && rm -f rabbitmq-server-generic-unix-3.6.1.tar.xz
RUN wget -O  /alidata/server/rabbitmq-server-3.6.1.tar.gz ftp://test.ihorn.com.cn/product/rabbitmq-server-3.6.1.tar.gz
RUN cd /alidata/server/ && tar -zxf rabbitmq-server-3.6.1.tar.gz && rm -f rabbitmq-server-3.6.1.tar.gz

ADD files/rabbitmq-env.conf /alidata/server/rabbitmq-server-3.6.1/etc/rabbitmq/rabbitmq-env.conf
ADD files/rabbitmq.config /alidata/server/rabbitmq-server-3.6.1/etc/rabbitmq/rabbitmq.config

#update to glibc2.14 for /alidata/server/erlang-18.3/lib/erlang/erts-7.3/bin/erlexec: /lib64/libc.so.6: version `GLIBC_2.14' not found (required by /alidata/server/erlang-18.3/lib/erlang/erts-7.3/bin/erlexec)
RUN wget -O /alidata/glibc-2.14.tar.gz ftp://test.ihorn.com.cn/product/glibc-2.14.tar.gz
RUN cd /alidata && tar -zxf glibc-2.14.tar.gz
RUN rpm --rebuilddb && yum install -y gcc-c++
RUN cd /alidata/glibc-2.14 && mkdir build
RUN cd /alidata/glibc-2.14/build && ../configure --prefix=/opt/glibc-2.14 && make -j4 && make install
RUN rm -f /alidata/glibc-2.14.tar.gz && rm -fr /alidata/glibc-2.14
ENV LD_LIBRARY_PATH=/opt/glibc-2.14/lib:$LD_LIBRARY_PATH  

ADD files/run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh && /usr/sbin/sshd -D

EXPOSE 22 5672 15672