#!/bin/sh

/usr/sbin/cron
/usr/sbin/rsyslogd
/usr/lib/postfix/sbin/master
xinetd  -pidfile /run/xinetd.pid -f /xinetd.conf
/usr/lib/news/bin/rc.news
