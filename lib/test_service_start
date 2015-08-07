#!/bin/sh

service="$1"

if service "$service" status >/dev/null 2>&1; then
    exit 0
fi

echo "$service should be running"
exit 1
