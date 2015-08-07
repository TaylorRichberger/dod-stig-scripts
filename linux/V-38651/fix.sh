#!/bin/sh

if grep -qF umask /etc/bashrc; then
    sed -i 's/umask [0-9]\+/umask 077/g' /etc/bashrc
else
    echo 'umask 077' >> /etc/bashrc
fi

