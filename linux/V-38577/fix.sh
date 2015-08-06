#!/bin/sh

if grep -qE '^crypt_style[[:space:]]*=' /etc/libuser.conf; then
    sed -i 's/^crypt_style[[:space:]]*=/& sha512/' /etc/libuser.conf
else
    sed -i 's/^\[defaults\]/&\ncrypt_style = sha512/' /etc/libuser.conf
fi
