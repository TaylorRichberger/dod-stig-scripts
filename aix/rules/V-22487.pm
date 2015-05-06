my $id = 'V-22487';
my $title = 'The SSH daemon must not allow rhosts RSA authentication.';
my $severity = 'medium';
my $description = 'If SSH permits rhosts RSA authentication, a user may be able to log in based on the keys of the host originating the request and not any user-specific authentication.';
my $fix = 'Edit the /etc/ssh/sshd_config file and remove the RhostsRSAAuthentication setting or change the value of the RhostsRSAAuthentication setting to "no".';
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
