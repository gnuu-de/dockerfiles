#!/bin/sh

/usr/sbin/cron
/usr/sbin/rsyslogd
xinetd  -pidfile /run/xinetd.pid -f /xinetd.conf
postfix start
#/usr/lib/postfix/sbin/master -c /work-dir/etc/postfix-out 2>&1
/usr/lib/news/bin/rc.news
