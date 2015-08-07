#!/bin/sh

sed -i '/^[[:space:]]*umask[[:space:]]/d' /etc/init.d/functions
echo 'umask 027' >> /etc/init.d/functions
