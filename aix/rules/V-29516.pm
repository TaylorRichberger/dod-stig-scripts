my $id = 'V-29516';
my $title = 'The system must not have the sprayd service active.';
my $severity = 'medium';
my $description = 'The sprayd service is sometimes used for network and nfs troubleshooting.  The spray service can be used for both buffer overflow and Denial of Service attacks by saturating the network.  The sprayd daemon is an unnecessary service.';
my $fix = 'Edit the /etc/inetd.conf file and comment out the sprayd service line. 

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
