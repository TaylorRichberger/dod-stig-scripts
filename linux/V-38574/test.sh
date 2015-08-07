#!/bin/sh

if grep -qF sha512 /etc/pam.d/system-auth; then
    exit 0
fi

echo 'passwords should be hashed with sha512'
exit 1
