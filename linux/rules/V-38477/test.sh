#!/bin/sh

PASS_MIN_DAYS="$(grep -E '^[[:space:]]*PASS_MIN_DAYS' /etc/login.defs | sed 's/^[[:space:]]*PASS_MIN_DAYS[[:space:]]*//')"

if [ -z "$PASS_MIN_DAYS" ]; then
    PASS_MIN_DAYS=0
fi

if [ "$PASS_MIN_DAYS" -lt 1 ]; then
    echo "password minimum days should be 1, but it is $PASS_MIN_DAYS instead"
    exit 1
fi

exit 0
