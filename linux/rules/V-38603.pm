my $id = 'V-38603';
my $title = 'The ypserv package must not be installed.';
my $severity = 'medium';
my $description = 'Removing the "ypserv" package decreases the risk of the accidental (or intentional) activation of NIS or NIS+ services.';
my $fix = 'The "ypserv" package can be uninstalled with the following command: # yum erase ypserv';
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
