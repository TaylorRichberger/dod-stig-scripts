my $id = 'V-778';
my $title = 'The system must prevent the root account from directly logging in except from the system console.';
my $severity = 'medium';
my $description = 'Limiting the root account direct logins to only system consoles protects the root account from direct unauthorized access from a non-console device.';
my $fix = 'The root account can be protected from non-console device logins by setting rlogin = false in the root: stanza of the /etc/security/user file.
 
#chsec -f /etc/security/user -s root -a rlogin=false';
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
