#!/bin/sh

if grep -qE '^SINGLE=' /etc/sysconfig/init; then
    sed -i 's/^SINGLE=.*/SINGLE=\/sbin\/sulogin/' /etc/sysconfig/init
else
    echo 'SINGLE=/sbin/sulogin' >> /etc/sysconfig/init
fi
