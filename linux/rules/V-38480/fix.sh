#!/bin/sh

if grep -q PASS_WARN_AGE /etc/login.defs; then
    sed -i 's/^\([[:space:]]*PASS_WARN_AGE\).*/\1 7/' /etc/login.defs
else
    echo PASS_WARN_AGE 7 >> /etc/login.defs
fi

