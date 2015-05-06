my $id = 'V-23741';
my $title = 'TCP backlog queue sizes must be set appropriately.';
my $severity = 'medium';
my $description = 'To provide some mitigation to TCP DoS attacks, the clear_partial_conns parameter must be enabled.';
my $fix = '# /usr/sbin/no -po clean_partial_conns=1';
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
