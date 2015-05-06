my $id = 'V-29499';
my $title = 'The system must not have the bootp service active.';
my $severity = 'medium';
my $description = 'The bootp service is used for Network Installation Management (NIM) and remote booting of systems.  The bootp service should not be active unless it is needed for NIM servers or booting remote systems.  Running unnecessary services increases the attack vector of the system.';
my $fix = 'Disable the bootp service from /etc/inetd.conf.

Edit /etc/inetd.conf and comment out bootp service line. 

Restart the inetd service.   
#refresh -s inetd';
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
