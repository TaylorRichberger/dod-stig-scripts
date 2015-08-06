#!/bin/sh

if grep -qE 'pam_cracklib.*ocredit=' /etc/pam.d/system-auth; then
    sed -i 's/\(pam_cracklib.*ocredit\)=[^[:space:]]*/\1=-1/' /etc/pam.d/system-auth
else
    sed -i 's/\(pam_cracklib.*\)$/\1 ocredit=-1/' /etc/pam.d/system-auth
fi
