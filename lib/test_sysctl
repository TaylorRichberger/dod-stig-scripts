#!/bin/sh

setting="$1"
wanted="$2"

value=$(sysctl $setting | grep -oE '[0-9]+$')

if [ "$value" -ne $wanted ]; then
    echo $setting is $value instead of $wanted
    exit 1
fi

exit 0
