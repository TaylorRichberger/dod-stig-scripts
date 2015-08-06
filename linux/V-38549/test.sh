#!/bin/sh

if ! service ip6tables status >/dev/null 2>&1; then
    echo "ip6tables is not running"
    exit 1
fi

exit 0
