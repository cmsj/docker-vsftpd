FROM ubuntu:devel
MAINTAINER Chris Jones <cmsj@tenshu.net>

# Install vsftpd
RUN apt-get update && apt-get install -y vsftpd ; apt-get clean

# Make a place for share volume mounts to live
RUN mkdir -p /opt/vsftpd/

# Copy init script
COPY vsftpd.sh /usr/local/bin/

EXPOSE 20 21

# Make the config and data directories volumes
VOLUME ["/etc/vsftpd.conf"]

ENTRYPOINT ["/usr/bin/tini", "--", "/usr/local/bin/vsftpd.sh"]

