#!/bin/sh

option="$1"
value="$2"

if grep -qE "^[[:space:]]*$option[[:space:]]+$2($|[[:space:]]|#)" /etc/ssh/sshd_config; then
    exit 0
fi

echo "sshd_config should have $option set to $2"
exit 1
