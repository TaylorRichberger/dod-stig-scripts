#!/bin/sh

mkdir -p /etc/audisp/plugins.d
touch /etc/audisp/plugins.d/syslog.conf

if grep -qE 'active[[:space:]]*=.*' /etc/audisp/plugins.d/syslog.conf; then
   sed -i 's/active[[:space:]]*=.*/active = yes/' /etc/audisp/plugins.d/syslog.conf
else
    echo 'active = yes' >> /etc/audisp/plugins.d/syslog.conf
fi

