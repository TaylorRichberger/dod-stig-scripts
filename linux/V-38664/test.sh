#!/bin/sh

if [ -n "$(rpm -V audit | grep '^.....U')" ]; then
    echo "ownership of files is wrong"
    rpm -V audit | grep '^.....U'
    exit 1
fi

exit 0
