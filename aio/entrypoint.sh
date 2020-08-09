#!/bin/sh

# Catch active & newsgroups file
curl -o /var/lib/news/active http://www.gnuu.de/config/active
curl -o /var/lib/news/newsgroups http://www.gnuu.de/config/newsgroups
chown news:news /var/lib/news/*
# merge news config
if [ -d /etc/news-aio ]; then
  cp /etc/news-aio/* /etc/news/
fi
# build postfix db
if [ /etc/postfix/transport ]; then
  postmap /etc/postfix/transport
fi
if [ /etc/postfix/virtual ]; then
  postmap /etc/postfix/virtual
fi
# start services
/usr/bin/shellinaboxd -tb
/usr/sbin/rsyslogd
/usr/lib/news/bin/rc.news
/usr/lib/postfix/sbin/master
