#!/bin/sh

if grep -qE 'pam_cracklib.*dcredit=' /etc/pam.d/system-auth; then
    sed -i 's/\(pam_cracklib.*dcredit\)=[^[:space:]]*/\1=-1/' /etc/pam.d/system-auth
else
    sed -i 's/\(pam_cracklib.*\)^/\1 dcredit=-1/' /etc/pam.d/system-auth
fi
