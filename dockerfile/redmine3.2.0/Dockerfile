#IMAGE redmine3.2.0
#DESCRIPTION admin/12345678
#docker build -t registry.aliyuncs.com/wzwdev/redmine:3.2.0 .
#docker run --name redmine -d -p 80:80 --restart=always registry.aliyuncs.com/wzwdev/redmine:3.2.0

FROM registry.aliyuncs.com/wzwdev/centos:6.7
MAINTAINER wzwdev "wzwdev@126.com"

ADD http://7xsjza.com2.z0.glb.clouddn.com/redmine3.2.0.tar.gz /alidata/server/
RUN cd /alidata/server/ && tar -zxf redmine3.2.0.tar.gz && rm -f redmine3.2.0.tar.gz

RUN groupadd mysql
RUN useradd mysql -g mysql
RUN groupadd subversion
RUN useradd subversion -g subversion

RUN chown -R mysql:mysql /alidata/server/redmine3.2.0/mysql/data
RUN chown -R subversion:subversion /alidata/server/redmine3.2.0/subversion/tmp

ADD files/run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh && /usr/sbin/sshd -D

EXPOSE 22 80 3306 
