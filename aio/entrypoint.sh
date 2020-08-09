#!/bin/sh

# Catch active & newsgroups file
curl -o /var/lib/news/active http://www.gnuu.de/config/active
curl -o /var/lib/news/newsgroups http://www.gnuu.de/config/newsgroups
chown news:news /var/lib/news/*
# start services
/usr/bin/shellinaboxd -tb
/usr/sbin/rsyslogd
/usr/lib/news/bin/rc.news
/usr/lib/postfix/sbin/master
