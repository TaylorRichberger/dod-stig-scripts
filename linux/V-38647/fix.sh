#!/bin/sh

if grep -qF umask /etc/profile; then
    sed -i 's/umask [0-9]\+/umask 077/g'
else
    echo 'umask 077' >> /etc/profile
fi
