my $id = 'V-4084';
my $title = 'The system must prohibit the reuse of passwords within five iterations.';
my $severity = 'medium';
my $description = 'If a user, or root, used the same password continuously or was allowed to change it back shortly after being forced to change it to something else, it would provide a potential intruder with the opportunity to keep guessing at one user\'s password until it was guessed correctly.';
my $fix = 'Use the chsec command to configure the system to prohibit the reuse of passwords within five iterations.

# chsec -f /etc/security/user -s default -a histsize=5
# chuser histsize=5 < user id >';
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
