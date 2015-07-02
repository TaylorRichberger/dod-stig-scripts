my $id = 'V-38679';
my $title = 'The DHCP client must be disabled if not needed.';
my $severity = 'medium';
my $description = 'DHCP relies on trusting the local network. If the local network is not trusted, then it should not be used. However, the automatic configuration provided by DHCP is commonly used and the alternative, manual configuration, presents an unacceptable burden in many circumstances.';
my $fix = 'For each interface [IFACE] on the system (e.g. eth0), edit "/etc/sysconfig/network-scripts/ifcfg-[IFACE]" and make the following changes. Correct the BOOTPROTO line to read:BOOTPROTO=noneAdd or correct the following lines, substituting the appropriate values based on your site\'s addressing scheme:NETMASK=[local LAN netmask]IPADDR=[assigned IP address]GATEWAY=[local LAN default gateway]';
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
