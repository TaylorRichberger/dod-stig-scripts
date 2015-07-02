my $id = 'V-38459';
my $title = 'The /etc/group file must be group-owned by root.';
my $severity = 'medium';
my $description = 'The "/etc/group" file contains information regarding groups that are configured on the system. Protection of this file is important for system security.';
my $fix = 'To properly set the group owner of "/etc/group", run the command: # chgrp root /etc/group';
my $autotest = 1;
my $autofix = 1;
my $filename = '/etc/group';

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
    return STIG::GroupShouldBe($filename, 'root');
}

sub fix()
{
    return `chgrp root $filename`;
}

1;
