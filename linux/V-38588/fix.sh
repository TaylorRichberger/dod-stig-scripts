#!/bin/sh
if grep -qE '^PROMPT=' /etc/sysconfig/init; then
    sed -i 's/^PROMPT=.*/PROMPT=no/' /etc/sysconfig.init
else
    echo 'PROMPT=no' >> /etc/sysconfig.init
fi

