#!/bin/sh

setting="$1"
wanted="$2"

if grep -qE "^[[:space:]]*$setting" /etc/sysctl.conf; then
    sed -i "s/^[[:space:]]*$setting.*$/$setting = $wanted/" /etc/sysctl.conf
else
    echo "$setting = $wanted" >> /etc/sysctl.conf
fi

sysctl -w "$setting=$wanted"
