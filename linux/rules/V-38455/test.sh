#!/bin/sh

if mount | grep 'on /tmp '; then
    exit 0
fi

echo '/tmp is not mounted on its own partition.'
exit 1
