my $id = 'V-38610';
my $title = 'The SSH daemon must set a timeout count on idle sessions.';
my $severity = 'low';
my $description = 'This ensures a user login will be terminated as soon as the "ClientAliveCountMax" is reached.';
my $fix = 'To ensure the SSH idle timeout occurs precisely when the "ClientAliveCountMax" is set, edit "/etc/ssh/sshd_config" as follows: ClientAliveCountMax 0';
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
