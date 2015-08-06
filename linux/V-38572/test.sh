#!/bin/sh

if grep -qE 'pam_cracklib.*difok=[4-9]' /etc/pam.d/system-auth; then
    exit 0
fi

echo pam_cracklib must require at least 4 different characters in password changes
exit 1
