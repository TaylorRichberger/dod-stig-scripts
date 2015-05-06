my $id = 'V-22358';
my $title = 'All skeleton files (typically in /etc/skel) must be group-owned by security.';
my $severity = 'medium';
my $description = 'If the skeleton files are not protected, unauthorized personnel could change user start-up parameters and possibly jeopardize user files.';
my $fix = 'Change the group owner of the skeleton file to security.

Procedure:
# chgrp security /etc/security/.profile /etc/security/mkuser.sys';
my $autotest = 0;
my $autofix = 0;

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

1;
