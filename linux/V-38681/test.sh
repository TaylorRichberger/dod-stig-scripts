#!/bin/sh

if [ -n "$(pwck -r | grep -F 'no group')" ]; then
    echo A user has an assigned froup that does not exist
    exit 1
fi

exit 0
