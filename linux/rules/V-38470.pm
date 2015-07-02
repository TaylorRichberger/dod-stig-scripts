my $id = 'V-38470';
my $title = 'The audit system must alert designated staff members when the audit storage volume approaches capacity.';
my $severity = 'medium';
my $description = 'Notifying administrators of an impending disk space problem may allow them to take corrective action prior to any disruption.';
my $fix = 'The "auditd" service can be configured to take an action when disk space starts to run low. Edit the file "/etc/audit/auditd.conf". Modify the following line, substituting [ACTION] appropriately: space_left_action = [ACTION]Possible values for [ACTION] are described in the "auditd.conf" man page. These include: "ignore""syslog""email""exec""suspend""single""halt"Set this to "email" (instead of the default, which is "suspend") as it is more likely to get prompt attention.RHEL-06-000521 ensures that the email generated through the operation "space_left_action" will be sent to an administrator.';
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
