#!/bin/sh

if mount | grep 'on /home '; then
    exit 0
fi

echo '/home is not mounted on its own partition.'
exit 1
