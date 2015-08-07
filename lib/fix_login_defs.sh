#!/bin/bash

item="$1"
value="$2"

if grep -q "$item" /etc/login.defs; then
    sed -i "/^\([[:space:]]*$item[[:space:]]\).*/d" /etc/login.defs
fi

echo $item $value >> /etc/login.defs
