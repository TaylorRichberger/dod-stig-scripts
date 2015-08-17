#!/bin/sh

if [ -n "$(find / -xdev -type f -name '.netrc')" ]; then
    echo .netrc found
    find / -xdev -type f -name '.netrc'
    exit 1
fi

exit 0
