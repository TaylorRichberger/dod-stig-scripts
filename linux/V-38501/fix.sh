#!/bin/sh

lines="$(grep -EA2 '^auth.*?pam_unix.so' /etc/pam.d/system-auth-ac)"

if ! echo "$lines" | grep -qE '^auth[[:space:]]+\[default=die\][[:space:]]+pam_faillock.so[[:space:]]+authfail[[:space:]]+deny=3[[:space:]]+unlock_time=604800[[:space:]]+fail_interval=900$'; then
    sed -i 's/^auth.*pam_unix.so.*$/&\nauth [default=die] pam_faillock.so authfail deny=3 unlock_time=604800 fail_interval=900/' /etc/pam.d/system-auth-ac
fi
    
if ! echo "$lines" | grep -qE '^auth[[:space:]]+required[[:space:]]+pam_faillock.so[[:space:]]+authsucc[[:space:]]+deny=3[[:space:]]+unlock_time=604800[[:space:]]+fail_interval=900$'; then
    sed -i 's/^auth[[:space:]]*\[default=die\][[:space:]]*pam_faillock.so[[:space:]]*authfail[[:space:]]*deny=3[[:space:]]*unlock_time=604800[[:space:]]*fail_interval=900$/&\nauth required pam_faillock.so authsucc deny=3 unlock_time=604800 fail_interval=900/' /etc/pam.d/system-auth-ac
fi
