my $id = 'V-766';
my $title = 'The system must disable accounts after three consecutive unsuccessful login attempts.';
my $severity = 'medium';
my $description = 'Disabling accounts after a limited number of unsuccessful login attempts improves protection against password guessing attacks.';
my $fix = 'Use the chsec command to configure the number of unsuccessful logins resulting in account lockout.  

# chsec -f /etc/security/user -s default -a loginretries=3 
# chsec -f /etc/security/user -s <user id> -a loginretries=3';
my $autotest = 0;
my $autofix = 0;

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

sub canTest()
{
    return $autotest;
}

sub canFix()
{
    return $autofix;
}

sub test()
{
    return 0;
}

sub fix()
{
    return 0;
}

1;
