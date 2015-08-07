#!/bin/sh

if grep -qE '^password.*pam_unix.so.*remember=24' /etc/pam.d/system-auth; then
    exit 0
fi

echo pam.d should remember 24 passwords
exit 1

