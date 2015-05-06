my $id = 'V-11973';
my $title = 'The system must require that passwords contain at least one special character.';
my $severity = 'medium';
my $description = 'To enforce the use of complex passwords, minimum numbers of characters of different classes are mandated. The use of complex passwords reduces the ability of attackers to successfully obtain valid passwords using guessing or exhaustive search techniques. Complexity requirements increase the password search space by requiring users to construct passwords from a larger character set than they may otherwise use.';
my $fix = 'Use the chsec command to set the minother setting to 1.

# chsec -f /etc/security/user -s default -a minother=1
# chuser minother=1 < user id >';
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
