#!/bin/sh

if grep -q PASS_MIN_LEN /etc/login.defs; then
    sed -i 's/^\([[:space:]]*PASS_MIN_LEN\).*/\1 14/' /etc/login.defs
else
    echo PASS_MIN_LEN 14 >> /etc/login.defs
fi
