#!/bin/sh

if ! service iptables status >/dev/null 2>&1; then
    echo "iptables is not running"
    exit 1
fi

exit 0
