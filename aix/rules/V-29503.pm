my $id = 'V-29503';
my $title = 'The system must not have the comsat service active.';
my $severity = 'medium';
my $description = 'The comsat daemon notifies users on incoming email.  This is an unnecessary service and is vulnerable to a flood attack.  Running unnecessary services increases the attack vector of the system.';
my $fix = 'Edit /etc/inetd.conf and comment out comsat service line. Restart the inetd service.   
# refresh -s inetd';
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
