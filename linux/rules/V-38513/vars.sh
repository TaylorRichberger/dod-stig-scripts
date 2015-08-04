#!/bin/sh
printtitle() {
    cat <<"TITLE"
The systems local IPv4 firewall must implement a deny-all, allow-by-exception policy for inbound packets.
TITLE
}

printid() {
    cat <<"ID"
V-38513
ID
}

printdescription() {
    cat <<"DESCRIPTION"
In "iptables" the default policy is applied only after all the applicable rules in the table are examined for a match. Setting the default policy to "DROP" implements proper design for a firewall, i.e., any packets which are not explicitly permitted should not be accepted.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
To set the default policy to DROP (instead of ACCEPT) for the built-in INPUT chain which processes incoming packets, add or correct the following line in "/etc/sysconfig/iptables": :INPUT DROP [0:0]
FIX
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

