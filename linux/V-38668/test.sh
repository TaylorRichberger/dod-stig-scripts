#!/bin/sh

if grep -qE '^[^#]*/sbin/shutdown' /etc/init/control-alt-delete.conf; then
    echo 'control-alt-delete shuts down the system'
    exit 1
fi

exit 0
