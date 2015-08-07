#!/bin/sh

sed -i '/^[[:space:]]*inet_interfaces[[:space:]]*=/d' /etc/postfix/main.cf
echo 'inet_interfaces = localhost' >> /etc/postfix/main.cf
