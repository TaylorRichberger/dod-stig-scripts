#!/bin/sh

mkdir -p /etc/modprobe.d

echo 'install dccp /bin/false' >> /etc/modprobe.d/dccp.conf
