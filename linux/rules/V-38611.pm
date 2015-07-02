my $id = 'V-38611';
my $title = 'The SSH daemon must ignore .rhosts files.';
my $severity = 'medium';
my $description = 'SSH trust relationships mean a compromise on one host can allow an attacker to move trivially to other hosts.';
my $fix = 'SSH can emulate the behavior of the obsolete rsh command in allowing users to enable insecure access to their accounts via ".rhosts" files. To ensure this behavior is disabled, add or correct the following line in "/etc/ssh/sshd_config": IgnoreRhosts yes';
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
