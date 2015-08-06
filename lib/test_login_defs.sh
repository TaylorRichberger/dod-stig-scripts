#!/bin/bash

item="$1"
operator="$2"
threshold="$3"
value="$(grep -E "^[[:space:]]*$item" /etc/login.defs | sed "s/^[[:space:]]*$item[[:space:]]*//")"

if [ -z "$value" ]; then
    echo "$item is not set in /etc/login.defs"
    exit 1
fi

if [ "$value" -$operator "$threshold" ]; then
    exit 0
fi

echo "$value should be $threshold, but it is $value instead"
exit 1
