#!/bin/sh
printid() {
    cat <<"ID"
V-38684
ID
}

printtitle() {
    cat <<"TITLE"
The system must limit users to 10 simultaneous system logins, or a site-defined number, in accordance with operational requirements.
TITLE
}

printfix() {
    cat <<"FIX"
Limiting the number of allowed users and sessions per user can limit risks related to denial of service attacks. This addresses concurrent sessions for a single account and does not address concurrent sessions by a single user via multiple accounts. To set the number of concurrent sessions per user add the following line in "/etc/security/limits.conf": * hard maxlogins 10A documented site-defined number may be substituted for 10 in the above.
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
Limiting simultaneous user logins can insulate the system from denial of service problems caused by excessive logins. Automated login processes operating improperly or maliciously may result in an exceptional number of simultaneous login sessions.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

