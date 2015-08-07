#!/bin/sh

if [ -n "$(rpm -V audit | awk '$1 ~ /..5/ && $2 != "c"')" ]; then
    echo 'an audit file has a bad hash'
    rpm -V audit
    exit 1
fi

exit 0
