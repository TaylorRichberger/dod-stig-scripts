my $id = 'V-29515';
my $title = 'The system must not have the rusersd service active.';
my $severity = 'medium';
my $description = 'The rusersd daemon gives out a list of current uses on the system.   The rusersd daemon is unnecessary and it increases the attack vector of the system by providing information on the current users of the system.';
my $fix = 'Edit the /etc/inetd.conf file and comment out the rusersd service line. 

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
