#!/bin/sh

if [ -n "$(awk -F: '($2 != "x") {print}' /etc/passwd)" ]; then
    echo "/etc/passwd has password hashes for the following users:"
    awk -F: '($2 != "x") {print $1}' /etc/passwd
    exit 1
fi

exit 0
