my $id = 'V-38464';
my $title = 'The audit system must take appropriate action when there are disk errors on the audit storage volume.';
my $severity = 'medium';
my $description = 'Taking appropriate action in case of disk errors will minimize the possibility of losing audit records.';
my $fix = 'Edit the file "/etc/audit/auditd.conf". Modify the following line, substituting [ACTION] appropriately: disk_error_action = [ACTION]Possible values for [ACTION] are described in the "auditd.conf" man page. These include: "ignore""syslog""exec""suspend""single""halt"Set this to "syslog", "exec", "single", or "halt".';
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
