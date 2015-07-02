my $id = 'V-38484';
my $title = 'The operating system, upon successful logon, must display to the user the date and time of the last logon or access via ssh.';
my $severity = 'medium';
my $description = 'Users need to be aware of activity that occurs regarding their account. Providing users with information regarding the date and time of their last successful login allows the user to determine if any unauthorized activity has occurred and gives them an opportunity to notify administrators.At ssh login, a user must be presented with the last successful login date and time.';
my $fix = 'Update the "PrintLastLog" keyword to "yes" in /etc/ssh/sshd_config:PrintLastLog yesWhile it is acceptable to remove the keyword entirely since the default action for the SSH daemon is to print the last login date and time, it is preferred to have the value explicitly documented.';
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
