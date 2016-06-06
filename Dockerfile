FROM arizonatribe/centosnodesupervisor
MAINTAINER David Nunez <arizonatribe@gmail.com>

# Overlay, containing yum.repos.d, supervisord configs and other shell scripts
COPY docker /

RUN yum install -y mongodb-org
RUN yum clean all

RUN mkdir -p /data/db

CMD ["/usr/bin/start"]
