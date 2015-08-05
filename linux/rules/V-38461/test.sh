#!/bin/sh

perms=0"$(stat -c %a /etc/group)"

if [ "$((($perms | 0644) != 0644))" -eq 1 ]; then
    echo '/etc/group permissions too permissive'
    exit 1
fi

exit 0
