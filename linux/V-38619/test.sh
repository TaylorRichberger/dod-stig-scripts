#!/bin/sh

if [ -n "$(find / -type f -name '.netrc')" ]; then
    echo .netrc found
    find / -type f -name '.netrc'
    exit 1
fi

exit 0
