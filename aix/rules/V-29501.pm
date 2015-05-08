my $id = 'V-29501';
my $title = 'The system must not have the Calendar Manager Service Daemon (CMSD) service active.';
my $severity = 'medium';
my $description = 'The CMSD service for CDE is an unnecessary process that  runs a root and increases attack vector of the system.  Buffer overflow attacks against the CMSD process can potentially give access to the system.';
my $fix = 'Edit /etc/inetd.conf and comment out the CMSD service. 

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
    return STIG::ProgramShouldNotBeRunning('cmsd');
}

sub fix()
{
    STIG::sedi('/etc/inetd.conf', '/^cmsd/d');
    return `refresh -s inetd`;
}

1;
