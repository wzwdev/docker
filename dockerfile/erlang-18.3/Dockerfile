#IMAGE erlang-18.3
#DESCRIPTION erlang-18.3 
#docker build -t registry.aliyuncs.com/wzwdev/erlang:18.3 .
#docker run --name erlang -d registry.aliyuncs.com/wzwdev/erlang:18.3

FROM registry.aliyuncs.com/wzwdev/jdk:1.7.0
MAINTAINER wzwdev "wzwdev@126.com"

RUN rpm --rebuilddb && yum install -y gcc-c++ ncurses-devel openssl-devel xmlto fop unixODBC-devel
ADD ftp://test.ihorn.com.cn/product/otp_src_18.3.tar.gz /alidata/
#RUN chmod 755 -R /alidata/otp_src_18.3
RUN ./configure --prefix=/alidata/server/erlang-18.3 && make && make install
RUN rm -fr /alidata/otp_src_18.3
RUN rm -f /alidata/otp_src_18.3.tar.gz

ENV PATH=/alidata/server/erlang-18.3/bin:$PATH

ADD files/run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh && /usr/sbin/sshd -D

EXPOSE 22