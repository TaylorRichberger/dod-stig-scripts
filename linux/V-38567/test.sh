#!/bin/sh

for prog in $(find / -type f \( -perm -4000 -o -perm -2000 \) 2>/dev/null); do
    if ! grep -qF "$prog" /etc/audit/audit.rules; then
        echo "$prog is setuid but not audited!"
        exit 1
    fi
done

exit 0
