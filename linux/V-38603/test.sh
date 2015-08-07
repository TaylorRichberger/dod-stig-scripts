#!/bin/sh

if rpm -q ypserv 2>/dev/null 1>/dev/null; then
    echo 'ypserv is installed, and it should not be'
    exit 1
fi

exit 0
