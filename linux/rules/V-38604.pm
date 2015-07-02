my $id = 'V-38604';
my $title = 'The ypbind service must not be running.';
my $severity = 'medium';
my $description = 'Disabling the "ypbind" service ensures the system is not acting as a client in a NIS or NIS+ domain.';
my $fix = 'The "ypbind" service, which allows the system to act as a client in a NIS or NIS+ domain, should be disabled. The "ypbind" service can be disabled with the following commands: # chkconfig ypbind off# service ypbind stop';
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
