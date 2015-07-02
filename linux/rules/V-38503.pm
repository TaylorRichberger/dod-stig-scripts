my $id = 'V-38503';
my $title = 'The /etc/shadow file must be group-owned by root.';
my $severity = 'medium';
my $description = 'The "/etc/shadow" file stores password hashes. Protection of this file is critical for system security.';
my $fix = 'To properly set the group owner of "/etc/shadow", run the command: # chgrp root /etc/shadow';
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
