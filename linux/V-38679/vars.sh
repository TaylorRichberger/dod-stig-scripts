#!/bin/sh
printtitle() {
    cat <<"TITLE"
The DHCP client must be disabled if not needed.
TITLE
}

printfix() {
    cat <<"FIX"
For each interface [IFACE] on the system (e.g. eth0), edit "/etc/sysconfig/network-scripts/ifcfg-[IFACE]" and make the following changes. Correct the BOOTPROTO line to read:BOOTPROTO=noneAdd or correct the following lines, substituting the appropriate values based on your site's addressing scheme:NETMASK=[local LAN netmask]IPADDR=[assigned IP address]GATEWAY=[local LAN default gateway]
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
DHCP relies on trusting the local network. If the local network is not trusted, then it should not be used. However, the automatic configuration provided by DHCP is commonly used and the alternative, manual configuration, presents an unacceptable burden in many circumstances.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38679
ID
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

