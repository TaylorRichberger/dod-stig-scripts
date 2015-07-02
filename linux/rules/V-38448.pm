my $id = 'V-38448';
my $title = 'The /etc/gshadow file must be group-owned by root.';
my $severity = 'medium';
my $description = 'The "/etc/gshadow" file contains group password hashes. Protection of this file is critical for system security.';
my $fix = 'To properly set the group owner of "/etc/gshadow", run the command: # chgrp root /etc/gshadow';
my $autotest = 1;
my $autofix = 1;
my $filename = '/etc/gshadow';

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
