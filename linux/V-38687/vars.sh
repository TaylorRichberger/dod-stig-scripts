#!/bin/sh
printfix() {
    cat <<"FIX"
The Openswan package provides an implementation of IPsec and IKE, which permits the creation of secure tunnels over untrusted networks. The "openswan" package can be installed with the following command: # yum install openswan
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
Providing the ability for remote users or systems to initiate a secure VPN connection protects information when it is transmitted over a wide area network.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printid() {
    cat <<"ID"
V-38687
ID
}

printtitle() {
    cat <<"TITLE"
The system must provide VPN connectivity for communications over untrusted networks.
TITLE
}

