my $id = 'V-29502';
my $title = 'The system must not have the tool-talk database server (ttdbserver) service active.';
my $severity = 'medium';
my $description = 'The ttdbserver service for CDE is an unnecessary service that runs as root and might be compromised.';
my $fix = 'Edit /etc/inetd.conf and comment out ttdbserver service line. 

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
