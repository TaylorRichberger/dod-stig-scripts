#!/bin/sh

if grep -qF nullok /etc/pam.d/system-auth-ac; then
    echo 'null passwords are accepted'
    exit 1
fi

exit 0
