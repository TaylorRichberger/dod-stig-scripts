#!/bin/sh

if mount | grep 'on /var '; then
    exit 0
fi

echo '/var is not mounted on its own partition.'
exit 1

exit 0
