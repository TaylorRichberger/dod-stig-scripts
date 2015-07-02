my $id = 'V-38671';
my $title = 'The sendmail package must be removed.';
my $severity = 'medium';
my $description = 'The sendmail software was not developed with security in mind and its design prevents it from being effectively contained by SELinux. Postfix should be used instead.';
my $fix = 'Sendmail is not the default mail transfer agent and is not installed by default. The "sendmail" package can be removed with the following command: # yum erase sendmail';
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
