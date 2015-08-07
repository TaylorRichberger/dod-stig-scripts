#!/bin/sh

if [ -n "$(rpm -Va  | grep '^.....U')" ]; then
    echo "ownership of files is wrong"
    rpm -Va  | grep '^.....U'
    exit 1
fi

exit 0
