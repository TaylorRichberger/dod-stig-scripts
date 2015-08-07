#!/bin/sh

file="$1"
group="$2"

if [ "$(stat -c %G "$file")" = "$group" ]; then
    exit 0
fi
echo "$file not group-owned by $group"
exit 1
