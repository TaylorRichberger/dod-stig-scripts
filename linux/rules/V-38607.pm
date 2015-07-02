my $id = 'V-38607';
my $title = 'The SSH daemon must be configured to use only the SSHv2 protocol.';
my $severity = 'high';
my $description = 'SSH protocol version 1 suffers from design flaws that result in security vulnerabilities and should not be used.';
my $fix = 'Only SSH protocol version 2 connections should be permitted. The default setting in "/etc/ssh/sshd_config" is correct, and can be verified by ensuring that the following line appears: Protocol 2';
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
