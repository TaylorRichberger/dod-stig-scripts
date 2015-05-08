my $id = 'V-22548';
my $title = 'The DHCP client must be disabled if not needed.';
my $severity = 'medium';
my $description = 'DHCP allows for the unauthenticated configuration of network parameters on the system by exchanging information with a DHCP server.';
my $fix = 'Disable the system\'s DHCP client. 

Edit /etc/rc.tcpip, comment out the line starting dhcpcd.  Reboot the system to ensure the DHCP client has been disabled fully.  Configure a static IP for the system, if network connectivity is required.';
my $autotest = 1;
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
    return STIG::ProgramShouldNotBeRunning('dhcpcd');
}

sub fix()
{
    return 0;
}

1;
