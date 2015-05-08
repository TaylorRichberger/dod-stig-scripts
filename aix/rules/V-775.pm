my $id = 'V-775';
my $title = 'The root account\'s home directory (other than /) must have mode 0700.';
my $severity = 'medium';
my $description = 'Permissions greater than 0700 could allow unauthorized users access to the root home directory.';
my $fix = 'The root home directory will have permissions of 0700. Do not change the protections of the / directory. Use the following command to change protections for the root home directory.
# chmod 0700 /root.';
my $autotest = 1;
my $autofix = 1;
my $filename = '/root';

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
    return STIG::ModeShouldNotExceed($filename, 0700);
}

sub fix()
{
    return `chmod 0700 $filename`;
}

1;
