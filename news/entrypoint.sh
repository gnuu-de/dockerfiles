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
# inn news service runs as user news
su news -s /bin/sh -c '/usr/lib/news/bin/rc.news' || exit 1

# keep the container alive while innd is running
i=0
while [ "$i" -lt 30 ]; do
    innd_pid=$(cat /run/news/innd.pid 2>/dev/null)
    [ -n "$innd_pid" ] && break
    sleep 1
    i=$((i + 1))
done
if [ -n "$innd_pid" ]; then
    while kill -0 "$innd_pid" 2>/dev/null; do
        sleep 5
    done
fi
