my $id = 'V-38609';
my $title = 'The TFTP service must not be running.';
my $severity = 'medium';
my $description = 'Disabling the "tftp" service ensures the system is not acting as a tftp server, which does not provide encryption or authentication.';
my $fix = 'The "tftp" service should be disabled. The "tftp" service can be disabled with the following command: # chkconfig tftp off';
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
