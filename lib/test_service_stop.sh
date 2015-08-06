#!/bin/sh

service="$1"

if service "$service" status >/dev/null 2>&1; then
    echo "$service should not be running"
    exit 1
fi

exit 0
