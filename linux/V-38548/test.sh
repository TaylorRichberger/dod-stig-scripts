#!/bin/sh

setting=net.ipv6.conf.default.accept_redirects
wanted=0

value=$(sysctl $setting | grep -oE '[0-9]+$')

if [ "$value" -ne $wanted ]; then
    echo $setting is $value instead of $wanted
    exit 1
fi

exit 0
