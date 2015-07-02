my $id = 'V-38613';
my $title = 'The system must not permit root logins using remote access programs such as ssh.';
my $severity = 'medium';
my $description = 'Permitting direct root login reduces auditable information about who ran privileged commands on the system and also allows direct attack attempts on root\'s password.';
my $fix = 'The root user should never be allowed to log in to a system directly over a network. To disable root login via SSH, add or correct the following line in "/etc/ssh/sshd_config": PermitRootLogin no';
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
