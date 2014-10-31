FROM centos:centos7
MAINTAINER quiver
RUN yum clean all
RUN yum -y update
#RUN yum -y install curl
#RUN curl -o /etc/yum.repos.d/rsyslogall.repo -L http://rpms.adiscon.com/v8-stable/rsyslog.repo
ADD http://rpms.adiscon.com/v8-stable/rsyslog.repo /etc/yum.repos.d/rsyslogall.repo
RUN yum -y update
RUN yum -y install rsyslog

# enable UDP 
COPY rsyslog.conf /etc/rsyslog.conf

#RUN service rsyslog restart

# Define default command.
ENTRYPOINT ["rsyslogd", "-i", "/var/run/syslogd.pid", "-f", "/etc/rsyslog.conf", "-n" ]
#CMD ["-i", "/var/run/syslogd.pid", "-f", "/etc/rsyslog.conf"

# Expose ports.
EXPOSE 514
