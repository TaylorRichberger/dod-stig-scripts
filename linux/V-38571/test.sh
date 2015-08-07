#!/bin/sh

if grep -qE 'pam_cracklib.*lcredit=-0*[1-9]' /etc/pam.d/system-auth; then
    exit 0
fi

echo pam_cracklib must require the use of a lower case letter in passwords
exit 1
