my $id = 'V-38615';
my $title = 'The SSH daemon must be configured with the Department of Defense (DoD) login banner.';
my $severity = 'medium';
my $description = 'The warning message reinforces policy awareness during the logon process and facilitates possible legal action against attackers. Alternatively, systems whose ownership should not be obvious should ensure usage of a banner that does not provide easy attribution.';
my $fix = 'To enable the warning banner and ensure it is consistent across the system, add or correct the following line in "/etc/ssh/sshd_config": Banner /etc/issueAnother section contains information on how to create an appropriate system-wide warning banner.';
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
