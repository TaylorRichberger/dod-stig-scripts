#!/bin/sh
printfix() {
    cat <<"FIX"
To prevent the IPv6 kernel module ("ipv6") from loading the IPv6 networking stack, add the following line to "/etc/modprobe.d/disabled.conf" (or another file in "/etc/modprobe.d"): options ipv6 disable=1This permits the IPv6 module to be loaded (and thus satisfy other modules that depend on it), while disabling support for the IPv6 protocol.
FIX
}

printtitle() {
    cat <<"TITLE"
The IPv6 protocol handler must not be bound to the network stack unless needed.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
Any unnecessary network stacks - including IPv6 - should be disabled, to reduce the vulnerability to exploitation.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printid() {
    cat <<"ID"
V-38546
ID
}

