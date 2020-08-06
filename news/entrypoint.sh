#!/bin/sh

/usr/sbin/cron
/usr/sbin/rsyslogd
xinetd  -pidfile /run/xinetd.pid -f /xinetd.conf
#xinetd  -pidfile /run/xinetd.pid -dontfork -f /xinetd.conf
/usr/lib/news/bin/rc.news
