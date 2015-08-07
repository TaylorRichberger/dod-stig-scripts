#!/bin/sh

if grep -qE 'pam_cracklib.*maxrepeat=' /etc/pam.d/system-auth; then
    sed -i 's/\(pam_cracklib.*maxrepeat\)=[^[:space:]]*/\1=3/' /etc/pam.d/system-auth
else
    sed -i 's/\(pam_cracklib.*\)$/\1 maxrepeat=3/' /etc/pam.d/system-auth
fi
