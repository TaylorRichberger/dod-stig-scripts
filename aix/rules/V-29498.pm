my $id = 'V-29498';
my $title = 'The system must provide protection against IP fragmentation attacks.';
my $severity = 'medium';
my $description = 'The parameter ip_nfrag provides an additional layer of protection against IP fragmentation attacks.  The value the ip_nfrag specifies is the maximum number of fragments of an IP packet that can be kept in the IP reassembly queue at any time. The default value of this network option is 200.  This is a reasonable value for most environments and offers protection from IP fragmentation attacks. ';
my $fix = 'Set the ip_nfrag parameter to 200.

# /usr/sbin/no -p -o ip_nfrag=200';
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
    return STIG::TunableShouldNotExceed('ip_nfrag', 200);
}

sub fix()
{
    return `/usr/sbin/no -po 'ip_nfrag=200'`;
}

1;
