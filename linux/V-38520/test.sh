#!/bin/sh

if ! grep -rqE '^[^#]+(@|@@|:omrelp:)' /etc/syslog.*; then
    echo "syslog.conf isn't configured for remote logging"
    exit 1
fi

exit 0
