my $id = 'V-788';
my $title = 'All skeleton files (typically those in /etc/skel) must have mode 0644 or less permissive.';
my $severity = 'medium';
my $description = 'If the skeleton files are not protected, unauthorized personnel could change user startup parameters and possibly jeopardize user files.

';
my $fix = 'Change the mode of skeleton files with incorrect mode.
# chmod 0644 /etc/security/.profile  
#chmod 0755 /etc/security/mkuser.sys';
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
        $output .= STIG::ModeShouldNotExceed($filename, 0644);
    }
    return $output;
}

sub fix()
{
    my $output = '';
    for my $filename (@filenames)
    {
        $output .= `chmod 0644 $filename`;
    }
    return $output;
}

1;
