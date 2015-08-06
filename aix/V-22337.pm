my $id = 'V-22337';
my $title = 'The /etc/group file must have mode 0644 or less permissive.';
my $severity = 'medium';
my $description = 'The /etc/group file is critical to system security and must be protected from unauthorized modification.  The group file contains a list of system groups and associated information.';
my $fix = 'Change the mode of the /etc/group file to 0644 or less permissive.
# chmod 0644 /etc/group';
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
    return STIG::ModeShouldNotExceed($filename, 0644);
}

sub fix()
{
    return `chmod 0644 $filename`;
}

1;
