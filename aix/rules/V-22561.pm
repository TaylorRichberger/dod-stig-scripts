my $id = 'V-22561';
my $title = 'If the system is using LDAP for authentication or account information, the /etc/ldap.conf (or equivalent) file must be group-owned by security, bin, sys, or system.';
my $severity = 'medium';
my $description = 'LDAP can be used to provide user authentication and account information, which are vital to system security.  The LDAP client configuration must be protected from unauthorized modification.';
my $fix = 'Change the group owner of the /etc/security/ldap/ldap.cfg file to security, bin, sys, or system.

Procedure:
# chgrp security /etc/security/ldap/ldap.cfg';
my $auto = 0;

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

sub auto()
{
    return $auto;
}

sub test()
{
    return 0;
}

sub fix()
{
    return 0;
}
