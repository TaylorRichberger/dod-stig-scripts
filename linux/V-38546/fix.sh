#!/bin/sh

#!/bin/sh

mkdir -p /etc/modprobe.d

echo 'options ipv6 disable=1' >> /etc/modprobe.d/ipv6.conf
