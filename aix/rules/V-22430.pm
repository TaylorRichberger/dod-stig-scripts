my $id = 'V-22430';
my $title = 'The portmap or rpcbind service must not be installed unless needed.';
my $severity = 'medium';
my $description = 'The portmap and rpcbind services increase the attack surface of the system and should only be used when needed.  The portmap or rpcbind services are used by a variety of services using Remote Procedure Calls (RPCs).';
my $fix = 'If the portmap or rpcbind service is part of a removable package, consult vendor documentation for the procedure to remove the package. If the service cannot be removed, prevent service activation by removing all permissions from the executable.  

Procedure:
# chmod 0000 /usr/sbin/portmap';
my $autotest = 1;
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
    return STIG::FileShouldNotExist('/usr/sbin/portmap');
}

sub fix()
{
    return 0;
}

1;
