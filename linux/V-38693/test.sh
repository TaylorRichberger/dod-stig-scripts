#!/bin/sh

if grep -qE 'pam_cracklib.*maxrepeat=3' /etc/pam.d/system-auth; then
    exit 0
fi

echo pam_cracklib must renstrict repeating digits to 3
exit 1
