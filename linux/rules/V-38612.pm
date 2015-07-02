my $id = 'V-38612';
my $title = 'The SSH daemon must not allow host-based authentication.';
my $severity = 'medium';
my $description = 'SSH trust relationships mean a compromise on one host can allow an attacker to move trivially to other hosts.';
my $fix = 'SSH\'s cryptographic host-based authentication is more secure than ".rhosts" authentication, since hosts are cryptographically authenticated. However, it is not recommended that hosts unilaterally trust one another, even within an organization. To disable host-based authentication, add or correct the following line in "/etc/ssh/sshd_config": HostbasedAuthentication no';
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
