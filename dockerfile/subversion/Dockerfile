#IMAGE subversion
#DESCRIPTION svn://ip/proj/test admin/admin
#docker build -t registry.aliyuncs.com/wzwdev/server:subversion .
#docker run --name mysql -d -p 3690:3690 --restart=always registry.aliyuncs.com/wzwdev/server:subversion
#docker run --name mysql -d -p 3690:3690 -v /alidata/server/subversion:/alidata/server/subversion --restart=always registry.aliyuncs.com/wzwdev/server:subversion

FROM registry.aliyuncs.com/wzwdev/os:centos6.6
MAINTAINER wzwdev "wzwdev@126.com"

RUN yum install -y subversion

ADD files/proj.tar.gz /alidata/server/subversion

RUN chmod +x /alidata/server/subversion/proj/test/pre-commit

ADD files/run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh && /usr/sbin/sshd -D

EXPOSE 22 3690