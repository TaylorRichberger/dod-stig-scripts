my $id = 'V-38481';
my $title = 'System security patches and updates must be installed and up-to-date.';
my $severity = 'medium';
my $description = 'Installing software updates is a fundamental mitigation against the exploitation of publicly-known vulnerabilities.';
my $fix = 'If the system is joined to the Red Hat Network, a Red Hat Satellite Server, or a yum server, run the following command to install updates: # yum updateIf the system is not configured to use one of these sources, updates (in the form of RPM packages) can be manually downloaded from the Red Hat Network and installed using "rpm".';
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
