my $id = 'V-38451';
my $title = 'The /etc/passwd file must be group-owned by root.';
my $severity = 'medium';
my $description = 'The "/etc/passwd" file contains information about the users that are configured on the system. Protection of this file is critical for system security.';
my $fix = 'To properly set the group owner of "/etc/passwd", run the command: # chgrp root /etc/passwd';
my $autotest = 1;
my $autofix = 1;
my $filename = '/etc/passwd';

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
