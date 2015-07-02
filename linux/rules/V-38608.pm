my $id = 'V-38608';
my $title = 'The SSH daemon must set a timeout interval on idle sessions.';
my $severity = 'low';
my $description = 'Causing idle users to be automatically logged out guards against compromises one system leading trivially to compromises on another.';
my $fix = 'SSH allows administrators to set an idle timeout interval. After this interval has passed, the idle user will be automatically logged out. To set an idle timeout interval, edit the following line in "/etc/ssh/sshd_config" as follows: ClientAliveInterval [interval]The timeout [interval] is given in seconds. To have a timeout of 15 minutes, set [interval] to 900. If a shorter timeout has already been set for the login shell, that value will preempt any SSH setting made here. Keep in mind that some processes may stop SSH from correctly detecting that the user is idle.';
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
