my $id = 'V-38458';
my $title = 'The /etc/group file must be owned by root.';
my $severity = 'medium';
my $description = 'The "/etc/group" file contains information regarding groups that are configured on the system. Protection of this file is important for system security.';
my $fix = 'To properly set the owner of "/etc/group", run the command: # chown root /etc/group';
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
    return STIG::OwnerShouldBe($filename, 'root');
}

sub fix()
{
    return `chown root $filename`;
}

1;
