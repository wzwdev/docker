#IMAGE subversion
#DESCRIPTION svn://ip/proj/test admin/admin
#docker build -t registry.aliyuncs.com/wzwdev/subversion .
#docker run --name mysql -d -p 3690:3690 --restart=always registry.aliyuncs.com/wzwdev/subversion
#docker run --name mysql -d -p 3690:3690 -v /alidata/server/subversion:/alidata/server/subversion --restart=always registry.aliyuncs.com/wzwdev/subversion

FROM registry.aliyuncs.com/wzwdev/centos:6.6
MAINTAINER wzwdev "wzwdev@126.com"

RUN rpm --rebuilddb && yum install -y subversion

ADD http://7xsjza.com2.z0.glb.clouddn.com/proj.tar.gz /alidata/server/subversion/
RUN cd /alidata/server/subversion && tar -zxf proj.tar.gz && rm -f proj.tar.gz

RUN chmod +x /alidata/server/subversion/proj/test/hooks/pre-commit

ADD files/run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh && /usr/sbin/sshd -D

EXPOSE 22 3690