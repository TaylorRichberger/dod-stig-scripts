#!/bin/sh

lines="$(grep -EA2 '^auth.*?pam_unix.so' /etc/pam.d/system-auth-ac)"

if echo "$lines" | grep -qE 'auth[[:space:]]+\[default=die\][[:space:]]+pam_faillock.so[[:space:]]+authfail[[:space:]]+deny=3[[:space:]]+unlock_time=604800[[:space:]]+fail_interval=900' && echo "$lines" | grep -qE 'auth[[:space:]]+required[[:space:]]+pam_faillock.so[[:space:]]+authsucc[[:space:]]+deny=3[[:space:]]+unlock_time=604800[[:space:]]+fail_interval=900'; then
    exit 0
fi

echo 'system-auth-ac is not set to lock out accounts on incorrect attempt limits'
exit 1
