#!/bin/sh

mkdir -p /etc/modprobe.d

echo 'install bluetooth /bin/false' >> /etc/modprobe.d/bluetooth.conf
echo 'install net-pf-31 /bin/false' >> /etc/modprobe.d/bluetooth.conf
