my $id = 'V-38681';
my $title = 'All GIDs referenced in /etc/passwd must be defined in /etc/group';
my $severity = 'low';
my $description = 'Inconsistency in GIDs between /etc/passwd and /etc/group could lead to a user having unintended rights.';
my $fix = 'Add a group to the system for each GID referenced without a corresponding group.';
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
