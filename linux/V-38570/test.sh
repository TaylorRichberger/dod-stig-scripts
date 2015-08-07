#!/bin/sh

if grep -qE 'pam_cracklib.*ocredit=-0*[1-9]' /etc/pam.d/system-auth; then
    exit 0
fi

echo pam_cracklib must require the use of a special character in passwords
exit 1
