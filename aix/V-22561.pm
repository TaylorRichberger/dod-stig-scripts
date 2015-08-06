my $id = 'V-22561';
my $title = 'If the system is using LDAP for authentication or account information, the /etc/ldap.conf (or equivalent) file must be group-owned by security, bin, sys, or system.';
my $severity = 'medium';
my $description = 'LDAP can be used to provide user authentication and account information, which are vital to system security.  The LDAP client configuration must be protected from unauthorized modification.';
my $fix = 'Change the group owner of the /etc/security/ldap/ldap.cfg file to security, bin, sys, or system.

Procedure:
# chgrp security /etc/security/ldap/ldap.cfg';
my $autotest = 1;
my $autofix = 1;
my $filename = '/etc/security/ldap/ldap.cfg';

use lib 'lib';
use STIG;

sub getId()
{
    return $id;
}

sub getTitle()
{
    return $title;
}

sub getSeverity()
{
    return $severity;
}

sub getDescription()
{
    return $description;
}

sub getFix()
{
    return $fix;
}

sub canTest()
{
    return $autotest;
}

sub canFix()
{
    return $autofix;
}

sub test()
{
    return STIG::GroupShouldMatch($filename, qr/^(bin|sys|system|security)$/);
}

sub fix()
{
    return `chgrp security $filename`;
}

1;
