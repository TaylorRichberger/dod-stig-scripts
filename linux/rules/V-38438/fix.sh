#!/bin/sh

sed -i -e 's/audit=[[:digit:]]*//g' -e 's/^\([[:space:]]*kernel .*\)$/\1 audit=1/' /etc/grub.conf
