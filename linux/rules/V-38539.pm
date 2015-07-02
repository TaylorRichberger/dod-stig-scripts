my $id = 'V-38539';
my $title = 'The system must be configured to use TCP syncookies.';
my $severity = 'medium';
my $description = 'A TCP SYN flood attack can cause a denial of service by filling a system\'s TCP connection table with connections in the SYN_RCVD state. Syncookies can be used to track a connection when a subsequent ACK is received, verifying the initiator is attempting a valid connection and is not a flood source. This feature is activated when a flood condition is detected, and enables the system to continue servicing valid connection requests.';
my $fix = 'To set the runtime status of the "net.ipv4.tcp_syncookies" kernel parameter, run the following command: # sysctl -w net.ipv4.tcp_syncookies=1If this is not the system\'s default value, add the following line to "/etc/sysctl.conf": net.ipv4.tcp_syncookies = 1';
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
