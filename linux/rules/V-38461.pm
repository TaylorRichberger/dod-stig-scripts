my $id = 'V-38461';
my $title = 'The /etc/group file must have mode 0644 or less permissive.';
my $severity = 'medium';
my $description = 'The "/etc/group" file contains information regarding groups that are configured on the system. Protection of this file is important for system security.';
my $fix = 'To properly set the permissions of "/etc/group", run the command: # chmod 644 /etc/group';
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
