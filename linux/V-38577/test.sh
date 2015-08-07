#!/bin/sh

if grep -qE '^crypt_style[[:space:]]*=[[:space:]]*sha512' /etc/libuser.conf; then
    exit 0
fi

echo 'crypt_style must be set to sha512'
exit 1

exit 0
