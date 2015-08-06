#!/bin/sh

if grep -qE '^[[:space:]]*gpgcheck=' /etc/yum.conf; then
    sed -i 's/gpgcheck=.*/gpgcheck=1/' /etc/yum.conf
else
    sed -i 's/\[main\]/[main]\ngpgcheck=1/' /etc/yum.conf
fi
