#!/bin/sh

file="$1"
owner="$2"

if [ "$(stat -c %U "$file")" = "$owner" ]; then
    exit 0
fi
echo "$file not owned by $owner"
exit 1
