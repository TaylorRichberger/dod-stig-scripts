#!/bin/sh

mkdir -p /etc/modprobe.d

echo 'install sctp /bin/false' >> /etc/modprobe.d/sctp.conf
