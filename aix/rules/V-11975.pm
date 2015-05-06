my $id = 'V-11975';
my $title = 'The system must require passwords to contain no more than three consecutive repeating characters.';
my $severity = 'medium';
my $description = 'To enforce the use of complex passwords, the number of consecutive repeating characters is limited.  Passwords with excessive repeated characters may be more vulnerable to password-guessing attacks.';
my $fix = 'Use the chsec command to set maxrepeats to 3.

# chsec -f /etc/security/user -s default -a maxrepeats=3

# chuser maxrepeats=3 < user id >';
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
