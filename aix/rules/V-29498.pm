my $id = 'V-29498';
my $title = 'The system must provide protection against IP fragmentation attacks.';
my $severity = 'medium';
my $description = 'The parameter ip_nfrag provides an additional layer of protection against IP fragmentation attacks.  The value the ip_nfrag specifies is the maximum number of fragments of an IP packet that can be kept in the IP reassembly queue at any time. The default value of this network option is 200.  This is a reasonable value for most environments and offers protection from IP fragmentation attacks. ';
my $fix = 'Set the ip_nfrag parameter to 200.

# /usr/sbin/no -p -o ip_nfrag=200';
my $autotest = 0;
my $autofix = 0;

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

1;
