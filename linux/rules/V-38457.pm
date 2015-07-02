my $id = 'V-38457';
my $title = 'The /etc/passwd file must have mode 0644 or less permissive.';
my $severity = 'medium';
my $description = 'If the "/etc/passwd" file is writable by a group-owner or the world the risk of its compromise is increased. The file contains the list of accounts on the system and associated information, and protection of this file is critical for system security.';
my $fix = 'To properly set the permissions of "/etc/passwd", run the command: # chmod 0644 /etc/passwd';
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
