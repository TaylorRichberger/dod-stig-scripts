#!/bin/sh

if [ -n "$(awk -F: '($3 == 0 && $1 != "root") {print}' /etc/passwd)" ]; then
    echo "Following non-root users have uid of 0:"
    awk -F: '($3 == 0 && $1 != "root") {print}' /etc/passwd
    exit 1
fi

exit 0
