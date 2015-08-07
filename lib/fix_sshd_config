#!/bin/sh

option="$1"
value="$2"

if grep -qE "^[[:space:]]*$option[[:space:]]" /etc/ssh/sshd_config; then
    sed -i "/^[[:space:]]*$option[[:space:]].*/d" /etc/ssh/sshd_config
fi

echo $option $value >> /etc/ssh/sshd_config
