#!/bin/bash

LOGFILE=/var/log/vsftpd.log
XFERFILE=/var/log/xferlog

touch "${LOGFILE}"
touch "${XFERFILE}"

tail -Ff "${LOGFILE}" | tee -a /dev/fd/1 &
tail -Ff "${XFERFILE}" | tee -a /dev/fd/1 &

/usr/sbin/vsftpd /etc/vsftpd.conf
