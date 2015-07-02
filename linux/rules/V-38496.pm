my $id = 'V-38496';
my $title = 'Default operating system accounts, other than root, must be locked.';
my $severity = 'medium';
my $description = 'Disabling authentication for default system accounts makes it more difficult for attackers to make use of them to compromise a system.';
my $fix = 'Some accounts are not associated with a human user of the system, and exist to perform some administrative function. An attacker should not be able to log into these accounts. Disable login access to these accounts with the command: # passwd -l [SYSACCT]';
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
