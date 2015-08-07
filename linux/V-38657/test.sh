#!/bin/sh

if [ -e /etc/samba ] && ! grep -F sec /etc/fstab /etc/mtab | grep -qE 'krb5i|ntlmv2i'; then
    echo 'samba should be using krb5i or ntlmv2i'
    exit 1
fi

exit 0
