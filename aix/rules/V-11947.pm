my $id = 'V-11947';
my $title = 'The system must require passwords to contain a minimum of 14 characters.';
my $severity = 'medium';
my $description = 'The use of longer passwords reduces the ability of attackers to successfully obtain valid passwords using guessing or exhaustive search techniques by increasing the password search space.';
my $fix = 'Change the minimum password length to 14 or more. 

# chsec -f /etc/security/user -s default -a minlen=14
# chuser minlen=14 <user id>';
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
