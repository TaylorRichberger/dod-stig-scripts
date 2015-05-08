my $id = 'V-22358';
my $title = 'All skeleton files (typically in /etc/skel) must be group-owned by security.';
my $severity = 'medium';
my $description = 'If the skeleton files are not protected, unauthorized personnel could change user start-up parameters and possibly jeopardize user files.';
my $fix = 'Change the group owner of the skeleton file to security.

Procedure:
# chgrp security /etc/security/.profile /etc/security/mkuser.sys';
my $autotest = 1;
my $autofix = 1;
my @filenames = ('/etc/security/.profile', '/etc/security/mkuser.sys');

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
    my $output = '';
    for my $filename (@filenames)
    {
        $output .= STIG::GroupShouldBe($filename, 'security');
    }
    return $output;
}

sub fix()
{
    my $output = '';
    for my $filename (@filenames)
    {
        $output .= `chgrp security $filename`;
    }
    return $output;
}

1;
