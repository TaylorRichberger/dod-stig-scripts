#!/bin/sh

sed -i '/^\*[[:space:]]*hard[[:space:]]*maxlogins[[:space:]]*/d' /etc/security/limits.conf
echo '* hard maxlogins 10' >> /etc/security/limits.conf
