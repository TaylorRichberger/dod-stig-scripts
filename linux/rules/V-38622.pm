my $id = 'V-38622';
my $title = 'Mail relaying must be restricted.';
my $severity = 'medium';
my $description = 'This ensures "postfix" accepts mail messages (such as cron job reports) from the local system only, and not from the network, which protects it from network attack.';
my $fix = 'Edit the file "/etc/postfix/main.cf" to ensure that only the following "inet_interfaces" line appears: inet_interfaces = localhost';
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
