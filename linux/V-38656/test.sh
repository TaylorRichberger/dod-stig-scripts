#!/bin/sh

if [ -e /etc/samba/smb.conf ] && ! grep -qE '^[[:space:]]*client[[:space:]]*signing[[:space:]]*=[[:space:]]*mandatory' /etc/samba/smb.conf; then
    echo smb should require client signing
    exit 1
fi

exit 0
