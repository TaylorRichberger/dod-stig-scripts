#!/bin/sh

if grep -qE 'pam_cracklib.*lcredit=' /etc/pam.d/system-auth; then
    sed -i 's/\(pam_cracklib.*lcredit\)=[^[:space:]]*/\1=-1/' /etc/pam.d/system-auth
else
    sed -i 's/\(pam_cracklib.*\)$/\1 lcredit=-1/' /etc/pam.d/system-auth
fi
