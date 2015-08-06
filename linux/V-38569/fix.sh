#!/bin/sh

if grep -qE 'pam_cracklib.*ucredit=' /etc/pam.d/system-auth; then
    sed -i 's/\(pam_cracklib.*ucredit\)=[^[:space:]]*/\1=-1/' /etc/pam.d/system-auth
else
    sed -i 's/\(pam_cracklib.*\)$/\1 ucredit=-1/' /etc/pam.d/system-auth
fi
