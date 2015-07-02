my $id = 'V-38446';
my $title = 'The mail system must forward all mail for root to one or more system administrators.';
my $severity = 'medium';
my $description = 'A number of system services utilize email messages sent to the root user to notify system administrators of active or impending issues.  These messages must be forwarded to at least one monitored email address.';
my $fix = 'Set up an alias for root that forwards to a monitored email address:# echo "root: <system.administrator>@mail.mil" >> /etc/aliases# newaliases';
my $autotest = 0;
my $autofix = 0;

use lib 'lib';
use STIG;

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
