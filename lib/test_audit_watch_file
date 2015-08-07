#!/bin/bash

file="$1"

if ! auditctl -l | grep -q "watch=$file"
    echo "$file is not watched"
    exit 1
fi

exit 0
