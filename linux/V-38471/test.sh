#!/bin/sh

if [ -e /etc/audisp/plugins.d/syslog.conf ] && grep -qE 'active[[:space:]]*=[[:space:]]*yes' /etc/audisp/plugins.d/syslog.conf; then
    exit 0
fi

echo '/etc/audisp/plugins.d/syslog.conf does not contain an active = yes line'
exit 1
