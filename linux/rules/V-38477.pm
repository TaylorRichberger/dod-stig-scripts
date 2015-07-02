my $id = 'V-38477';
my $title = 'Users must not be able to change passwords more than once every 24 hours.';
my $severity = 'medium';
my $description = 'Setting the minimum password age protects against users cycling back to a favorite password after satisfying the password reuse requirement.';
my $fix = 'To specify password minimum age for new accounts, edit the file "/etc/login.defs" and add or correct the following line, replacing [DAYS] appropriately: PASS_MIN_DAYS [DAYS]A value of 1 day is considered sufficient for many environments. The DoD requirement is 1.';
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
