my $id = 'V-798';
my $title = 'The /etc/passwd file must have mode 0644 or less permissive.';
my $severity = 'medium';
my $description = 'If the password file is writable by a group owner or the world, the risk of password file compromise is increased.  The password file contains the list of accounts on the system and associated information.';
my $fix = 'Change the mode of the passwd file to 0644.

Procedure:
# chmod 0644 /etc/passwd

Document all changes.';
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
    return STIG::ModeShouldNotExceed($filename, 0644);
}

sub fix()
{
    return `chmod 0644 $filename`;
}

1;
