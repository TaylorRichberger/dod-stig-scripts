my $id = 'V-12049';
my $title = 'Network analysis tools must not be installed.';
my $severity = 'medium';
my $description = 'Network analysis tools allow for the capture of network traffic visible to the system.';
my $fix = 'Remove the network analysis tool binary from the system. 

Procedure:
# rm /usr/sbin/tcpdump';
my $auto = 0;

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

sub auto()
{
    return $auto;
}

sub test()
{
    return 0;
}

sub fix()
{
    return 0;
}
