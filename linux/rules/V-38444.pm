my $id = 'V-38444';
my $title = 'The systems local IPv6 firewall must implement a deny-all, allow-by-exception policy for inbound packets.';
my $severity = 'medium';
my $description = 'In "ip6tables" the default policy is applied only after all the applicable rules in the table are examined for a match. Setting the default policy to "DROP" implements proper design for a firewall, i.e., any packets which are not explicitly permitted should not be accepted.';
my $fix = 'To set the default policy to DROP (instead of ACCEPT) for the built-in INPUT chain which processes incoming packets, add or correct the following line in "/etc/sysconfig/ip6tables": :INPUT DROP [0:0]Restart the IPv6 firewall:# service ip6tables restart';
my $autotest = 1;
my $autofix = 0;
my $filename = '/etc/sysconfig/ip6tables';

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
    return STIG::FileShouldContain($filename, /INPUT DROP/);
}

sub fix()
{
    return 0;
}
