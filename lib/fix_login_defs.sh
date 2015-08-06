#!/bin/bash

item="$1"
value="$2"

if grep -q "$item" /etc/login.defs; then
    sed -i "s/^\([[:space:]]*$item\).*/\1 $value/" /etc/login.defs
else
    echo $item $value >> /etc/login.defs
fi
