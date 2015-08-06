#!/bin/sh

if [ "$(stat -c %a /etc/gshadow)" -ne 000 ];
then
    echo '/etc/gshadow permissions too permissive'
    exit 1
fi

exit 0
