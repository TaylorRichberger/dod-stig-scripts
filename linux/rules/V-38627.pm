my $id = 'V-38627';
my $title = 'The openldap-servers package must not be installed unless required.';
my $severity = 'low';
my $description = 'Unnecessary packages should not be installed to decrease the attack surface of the system.';
my $fix = 'The "openldap-servers" package should be removed if not in use. Is this machine the OpenLDAP server? If not, remove the package. # yum erase openldap-serversThe openldap-servers RPM is not installed by default on RHEL6 machines. It is needed only by the OpenLDAP server, not by the clients which use LDAP for authentication. If the system is not intended for use as an LDAP Server it should be removed.';
my $autotest = 0;
my $autofix = 0;

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
    return 0;
}

sub fix()
{
    return 0;
}
