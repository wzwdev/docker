#IMAGE erlang-18.3
#DESCRIPTION erlang-18.3 
#docker build -t registry.aliyuncs.com/wzwdev/erlang:18.3 .
#docker run --name erlang -d registry.aliyuncs.com/wzwdev/erlang:18.3

FROM registry.aliyuncs.com/wzwdev/jdk:1.7.0
MAINTAINER wzwdev "wzwdev@126.com"

RUN rpm --rebuilddb && yum install -y gcc-c++ ncurses-devel openssl-devel xmlto fop unixODBC-devel
RUN wget -O /alidata/otp_src_18.3.tar.gz http://distfiles.macports.org/erlang/otp_src_18.3.tar.gz
RUN cd /alidata && tar -zxf otp_src_18.3.tar.gz && chmod -R 755 otp_src_18.3
RUN cd /alidata/otp_src_18.3 && ./configure --prefix=/alidata/server/erlang-18.3 && make && make install
RUN rm -fr /alidata/otp_src_18.3
RUN rm -f /alidata/otp_src_18.3.tar.gz

ENV PATH=/alidata/server/erlang-18.3/bin:$PATH

ADD files/run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh && /usr/sbin/sshd -D

EXPOSE 22