my $id = 'V-29508';
my $title = 'The system must not have Internet Message Access Protocol (IMAP) service active.';
my $severity = 'medium';
my $description = 'The IMAP service should not be running unless the system is acting as a mail server for client connections.   Running unnecessary services increases the attack vector on the system.';
my $fix = 'Edit /etc/inetd.conf and comment out the imap2 service line. 

Restart the inetd service.   
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
