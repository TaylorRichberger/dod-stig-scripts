#!/bin/sh

if [ -n "$(rpm -Va | awk '$1 ~ /..5/ && $2 != "c"' | grep -vE '.conf$')" ]; then
    echo 'There is a file with an unexpected hash:'
    rpm -Va | awk '$1 ~ /..5/ && $2 != "c"'
    exit 1
fi

exit 0
