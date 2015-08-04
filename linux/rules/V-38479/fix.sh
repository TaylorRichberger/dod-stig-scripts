#!/bin/sh

if grep -q PASS_MAX_DAYS /etc/login.defs; then
    sed -i 's/^\([[:space:]]*PASS_MAX_DAYS\).*/\1 60/' /etc/login.defs
else
    echo PASS_MAX_DAYS 60 >> /etc/login.defs
fi
