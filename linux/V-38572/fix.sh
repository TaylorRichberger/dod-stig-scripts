#!/bin/sh

if grep -qE 'pam_cracklib.*difok=' /etc/pam.d/system-auth; then
    sed -i 's/\(pam_cracklib.*difok\)=[^[:space:]]*/\1=4/' /etc/pam.d/system-auth
else
    sed -i 's/\(pam_cracklib.*\)$/\1 difok=4/' /etc/pam.d/system-auth
fi
