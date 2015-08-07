#!/bin/sh

if grep -qF umask /etc/csh.cshrc; then
    sed -i 's/umask [0-9]\+/umask 077/g'
else
    echo 'umask 077' >> /etc/csh.cshrc
fi

