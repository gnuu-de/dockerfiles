#!/bin/sh

# prepare postfix chroot files before service start
if [ -d "/var/spool/postfix/etc" ]; then
  cp /etc/services /var/spool/postfix/etc/
  cp /etc/resolv.conf /var/spool/postfix/etc/
fi
# service starts
# cron for news uucp batcher
/usr/sbin/cron
# syslog for newslog sidecar
/usr/sbin/rsyslogd
# xinetd for uucp service
xinetd  -pidfile /run/xinetd.pid -f /xinetd.conf
# postfix-out for uucp mail out
postfix start
# inn news service runs in foreground
/usr/lib/news/bin/rc.news
