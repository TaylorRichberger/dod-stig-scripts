#!/bin/sh

if grep -qE '^[[:space:]]*umask[[:space:]]+02[2367]' /etc/init.d/functions; then
    exit 0
fi

echo 'umask is incorrect in /etc/init.d/functions'
exit 1

