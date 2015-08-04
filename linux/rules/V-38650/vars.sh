#!/bin/sh
printfix() {
    cat <<"FIX"
The "rdisc" service implements the client side of the ICMP Internet Router Discovery Protocol (IRDP), which allows discovery of routers on the local subnet. If a router is discovered then the local routing table is updated with a corresponding default route. By default this daemon is disabled. The "rdisc" service can be disabled with the following commands: # chkconfig rdisc off# service rdisc stop
FIX
}

printtitle() {
    cat <<"TITLE"
The rdisc service must not be running.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
General-purpose systems typically have their network and routing information configured statically by a system administrator. Workstations or some special-purpose systems often use DHCP (instead of IRDP) to retrieve dynamic network configuration information.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38650
ID
}

