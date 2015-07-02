my $id = 'V-38480';
my $title = 'Users must be warned 7 days in advance of password expiration.';
my $severity = 'low';
my $description = 'Setting the password warning age enables users to make the change at a practical time.';
my $fix = 'To specify how many days prior to password expiration that a warning will be issued to users, edit the file "/etc/login.defs" and add or correct the following line, replacing [DAYS] appropriately: PASS_WARN_AGE [DAYS]The DoD requirement is 7.';
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
