#!/bin/sh

if [ ! -e /etc/xinet/tftp ] || grep -qE '^server_args.*-s'; then
    exit 0
fi

echo tftp should be running in a restricted root
exit 1
