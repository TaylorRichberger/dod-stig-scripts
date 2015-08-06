#!/bin/sh
printtitle() {
    cat <<"TITLE"
Mail relaying must be restricted.
TITLE
}

printfix() {
    cat <<"FIX"
Edit the file "/etc/postfix/main.cf" to ensure that only the following "inet_interfaces" line appears: inet_interfaces = localhost
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
This ensures "postfix" accepts mail messages (such as cron job reports) from the local system only, and not from the network, which protects it from network attack.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printid() {
    cat <<"ID"
V-38622
ID
}

