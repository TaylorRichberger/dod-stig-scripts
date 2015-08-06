#!/bin/sh

if grep -qE 'pam_cracklib.*ucredit=-0*[1-9]' /etc/pam.d/system-auth; then
    exit 0
fi

echo pam_cracklib must require the use of an uppercase character in passwords
exit 1
