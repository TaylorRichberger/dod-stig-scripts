#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
SSH protocol version 1 suffers from design flaws that result in security vulnerabilities and should not be used.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
Only SSH protocol version 2 connections should be permitted. The default setting in "/etc/ssh/sshd_config" is correct, and can be verified by ensuring that the following line appears: Protocol 2
FIX
}

printseverity() {
    cat <<"SEVERITY"
high
SEVERITY
}

printtitle() {
    cat <<"TITLE"
The SSH daemon must be configured to use only the SSHv2 protocol.
TITLE
}

printid() {
    cat <<"ID"
V-38607
ID
}

