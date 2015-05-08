my $id = 'V-29517';
my $title = 'The system must not have the rstatd service active.';
my $severity = 'medium';
my $description = 'The rstatd can give out information on the running system, such as  the CPU usage,  the system uptime, its network usage, and other system information that could potentially aid in an attack.  The rstatd service is unnecessary and it weakens the defensive posture of the system.  If systems monitoring is needed,  use a third party tool or SNMP.   ';
my $fix = 'Edit the /etc/inetd.conf file and comment out the rstatd service line. 

Restart the inetd service.   

# refresh -s inetd';
my $autotest = 1;
my $autofix = 1;

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
    return STIG::ProgramShouldNotBeRunning('rstatd');
}

sub fix()
{
    STIG::sedi('/etc/inetd.conf', '/^rstatd/d');
    return `refresh -s inetd`;
}

1;
