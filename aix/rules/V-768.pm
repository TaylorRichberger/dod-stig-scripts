my $id = 'V-768';
my $title = 'The delay between login prompts following a failed login attempt must be at least 4 seconds.';
my $severity = 'medium';
my $description = 'Enforcing a delay between successive failed login attempts increases protection against automated password guessing attacks.';
my $fix = 'Use vi  or the chsec command to change the login delay time period.

#chsec -f /etc/security/login.cfg -s default -a logindelay=4   

OR

# vi /etc/security/login.cfg 
Add logindelay = 4 to the default stanza.';
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
