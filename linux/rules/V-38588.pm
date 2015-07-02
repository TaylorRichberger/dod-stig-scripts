my $id = 'V-38588';
my $title = 'The system must not permit interactive boot.';
my $severity = 'medium';
my $description = 'Using interactive boot, the console user could disable auditing, firewalls, or other services, weakening system security.';
my $fix = 'To disable the ability for users to perform interactive startups, edit the file "/etc/sysconfig/init". Add or correct the line: PROMPT=noThe "PROMPT" option allows the console user to perform an interactive system startup, in which it is possible to select the set of services which are started on boot.';
my $autotest = 0;
my $autofix = 0;

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
    return 0;
}

sub fix()
{
    return 0;
}
