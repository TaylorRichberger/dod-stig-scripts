#!/bin/sh

PASS_MIN_LEN="$(grep -E '^[[:space:]]*PASS_MIN_LEN' /etc/login.defs | sed 's/^[[:space:]]*PASS_MIN_LEN[[:space:]]*//')"

if [ -z "$PASS_MIN_LEN" ]; then
    PASS_MIN_LEN=0
fi

if [ "$PASS_MIN_LEN" -lt 14 ]; then
    echo "password minimum length should be 14, but it is $PASS_MIN_LEN instead"
    exit 1
fi

exit 0
