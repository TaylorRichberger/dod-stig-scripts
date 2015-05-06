my $id = 'V-4369';
my $title = 'The traceroute command owner must be root.';
my $severity = 'medium';
my $description = 'If the traceroute command owner has not been set to root, an unauthorized user could use this command to obtain knowledge of the network topology inside the firewall.  This information may allow an attacker to determine trusted routers and other network information possibly leading to system and network compromise.';
my $fix = 'Change the owner of the traceroute command to root.
Example:
# chown root /usr/bin/traceroute';
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
