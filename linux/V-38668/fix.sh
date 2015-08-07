#!/bin/sh

if grep -qE '^[^#]*/sbin/shutdown' /etc/init/control-alt-delete.conf; then
    sed -i 's/^[^#]*\/sbin\/shutdown.*/exec \/usr\/bin\/logger -p security.info "Ctrl-Alt-Delete pressed"/' /etc/init/control-alt-delete.conf
else
    echo 'exec /usr/bin/logger -p security.info "Ctrl-Alt-Delete pressed"' >>/etc/init/control-alt-delete.conf
fi
