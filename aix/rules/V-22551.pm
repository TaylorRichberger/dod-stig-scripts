my $id = 'V-22551';
my $title = 'The system must not send IPv6 ICMP redirects.';
my $severity = 'medium';
my $description = 'ICMP redirect messages are used by routers to inform hosts that a more direct route exists for a particular destination. These messages contain information from the system\'s route table that could reveal portions of the network topology.';
my $fix = 'Configure the system to not send IPv6 ICMP redirects.  
# /usr/sbin/no -p -o ipsendredirects=0';
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
    return STIG::TunableShouldNotExceed('ipsendredirects', 0);
}

sub fix()
{
    return `/usr/sbin/no -po 'ipsendredirects=0'`;
}

1;
