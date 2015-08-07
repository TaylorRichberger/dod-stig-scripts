#!/bin/sh

sed -i '/^[[:space:]]*client[[:space:]]*signing[[:space:]]*/d' /etc/samba/smb.conf
sed -i 's/\[global\]/&\n\tclient signing = mandatory/' /etc/samba/smb.conf
