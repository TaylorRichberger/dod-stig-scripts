my $id = 'V-38578';
my $title = 'The audit system must be configured to audit changes to the /etc/sudoers file.';
my $severity = 'low';
my $description = 'The actions taken by system administrators should be audited to keep a record of what was executed on the system, as well as, for accountability purposes.';
my $fix = 'At a minimum, the audit system should collect administrator actions for all users and root. Add the following to "/etc/audit/audit.rules": -w /etc/sudoers -p wa -k actions';
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
