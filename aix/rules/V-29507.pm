my $id = 'V-29507';
my $title = 'The system must not have the echo service active.';
my $severity = 'medium';
my $description = 'The echo service can be used in Denial of Service or SMURF attacks.  It can also used at someone else to get through a firewall or start a data storm.  The echo service is unnecessary and it increases the attack vector of the system.';
my $fix = 'Edit /etc/inetd.conf and comment out the echo service lines for both TCP and UDP. 

Restart the inetd service.   
# refresh -s inetd';
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
