my $id = 'V-38683';
my $title = 'All accounts on the system must have unique user or account names';
my $severity = 'low';
my $description = 'Unique usernames allow for accountability on the system.';
my $fix = 'Change usernames, or delete accounts, so each has a unique name.';
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
