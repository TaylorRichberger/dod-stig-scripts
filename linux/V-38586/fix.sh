#!/bin/sh

if grep -qE '^SINGLE=' /etc/sysconfig/init; then
    sed -i 's/^SINGLE=.*/SINGLE=\/sbin\/sulogon/' /etc/sysconfig.init
else
    echo 'SINGLE=/sbin/sulogon' >> /etc/sysconfig.init
fi
