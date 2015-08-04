#!/bin/sh

if grep -q PASS_MIN_DAYS /etc/login.defs; then
    sed -i 's/^\([[:space:]]*PASS_MIN_DAYS\).*/\1 1/' /etc/login.defs
else
    echo PASS_MIN_DAYS 1 >> /etc/login.defs
fi
