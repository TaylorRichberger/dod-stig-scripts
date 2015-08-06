#!/bin/sh
printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
In "iptables" the default policy is applied only after all the applicable rules in the table are examined for a match. Setting the default policy to "DROP" implements proper design for a firewall, i.e., any packets which are not explicitly permitted should not be accepted.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38686
ID
}

printfix() {
    cat <<"FIX"
To set the default policy to DROP (instead of ACCEPT) for the built-in FORWARD chain which processes packets that will be forwarded from one interface to another, add or correct the following line in "/etc/sysconfig/iptables": :FORWARD DROP [0:0]
FIX
}

printtitle() {
    cat <<"TITLE"
The systems local firewall must implement a deny-all, allow-by-exception policy for forwarded packets.
TITLE
}

