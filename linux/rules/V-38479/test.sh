#!/bin/sh

PASS_MAX_DAYS="$(grep -E '^[[:space:]]*PASS_MAX_DAYS' /etc/login.defs | sed 's/^[[:space:]]*PASS_MAX_DAYS[[:space:]]*//')"

if [ -z "$PASS_MAX_DAYS" ]; then
    PASS_MAX_DAYS=0
fi

if [ "$PASS_MAX_DAYS" -ge 60 ]; then
    echo "password maximum age should be at least 60, but it is $PASS_MAX_DAYS instead"
    exit 1
fi

exit 0
