#!/bin/sh
printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
Sending ICMP redirects permits the system to instruct other systems to update their routing information. The ability to send ICMP redirects is only appropriate for routers.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The system must not send ICMPv4 redirects from any interface.
TITLE
}

printfix() {
    cat <<"FIX"
To set the runtime status of the "net.ipv4.conf.all.send_redirects" kernel parameter, run the following command: # sysctl -w net.ipv4.conf.all.send_redirects=0If this is not the system's default value, add the following line to "/etc/sysctl.conf": net.ipv4.conf.all.send_redirects = 0
FIX
}

printid() {
    cat <<"ID"
V-38601
ID
}

