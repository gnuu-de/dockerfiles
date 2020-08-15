#!/bin/sh

/usr/sbin/sqlgrey -f /work-dir/etc/sqlgrey/sqlgrey.conf -d
/usr/lib/postfix/sbin/master -c /work-dir/etc/postfix -d 2>&1
