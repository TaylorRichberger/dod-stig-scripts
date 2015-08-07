#!/bin/sh

if grep -E '^[[:space:]]*inet_interfaces' /etc/postfix/main.cf | grep -qvE '^[[:space:]]*inet_interfaces[[:space:]]*=[[:space:]]*localhost'; then
    echo 'postfix should only listen on localhost'
fi

exit 0
