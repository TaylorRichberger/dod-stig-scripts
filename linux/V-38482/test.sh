#!/bin/sh

if grep -qE 'pam_cracklib.*dcredit=-0*[1-9]' /etc/pam.d/system-auth; then
    exit 0
fi

echo pam_cracklib must require the use of a digit in passwords
exit 1
