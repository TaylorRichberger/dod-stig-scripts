#!/bin/sh

PASS_WARN_AGE="$(grep -E '^[[:space:]]*PASS_WARN_AGE' /etc/login.defs | sed 's/^[[:space:]]*PASS_WARN_AGE[[:space:]]*//')"

if [ -z "$PASS_WARN_AGE" ]; then
    PASS_WARN_AGE=0
fi

if [ "$PASS_WARN_AGE" -ne 7 ]; then
    echo "password warn age should be 7, but it is $PASS_WARN_AGE instead"
    exit 1
fi

exit 0
