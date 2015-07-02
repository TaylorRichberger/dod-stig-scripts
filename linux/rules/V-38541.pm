my $id = 'V-38541';
my $title = 'The audit system must be configured to audit modifications to the systems Mandatory Access Control (MAC) configuration (SELinux).';
my $severity = 'low';
my $description = 'The system\'s mandatory access policy (SELinux) should not be arbitrarily changed by anything other than administrator action. All changes to MAC policy should be audited.';
my $fix = 'Add the following to "/etc/audit/audit.rules": -w /etc/selinux/ -p wa -k MAC-policy';
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
