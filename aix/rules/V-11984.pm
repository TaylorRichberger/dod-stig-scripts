my $id = 'V-11984';
my $title = 'All skeleton files and directories (typically in /etc/skel) must be owned by root or bin.';
my $severity = 'medium';
my $description = 'If the skeleton files are not protected, unauthorized personnel could change user startup parameters and possibly jeopardize user files.  Failure to give ownership of sensitive files or utilities to root or bin provides the designated owner and unauthorized users with the potential to access sensitive information or change the system configuration which could weaken the system\'s security posture.';
my $fix = 'Change the ownership of skeleton files with incorrect mode.

# chown root /etc/security/.profile /etc/security/mkuser.sys';
my $autotest = 1;
my $autofix = 1;
my @filenames = ('/etc/security/.profile', '/etc/security/mkuser', '/etc/skel');

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
        $output .= STIG::OwnerShouldMatch($filename, qr/^(root|bin)$/);
    }
    return $output;
}

sub fix()
{
    my $output = '';
    for my $filename (@filenames)
    {
        $output .= `chown root $filename`;
    }
    return $output;
}

1;
