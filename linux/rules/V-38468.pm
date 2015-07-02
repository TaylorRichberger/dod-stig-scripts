my $id = 'V-38468';
my $title = 'The audit system must take appropriate action when the audit storage volume is full.';
my $severity = 'medium';
my $description = 'Taking appropriate action in case of a filled audit storage volume will minimize the possibility of losing audit records.';
my $fix = 'The "auditd" service can be configured to take an action when disk space starts to run low. Edit the file "/etc/audit/auditd.conf". Modify the following line, substituting [ACTION] appropriately: disk_full_action = [ACTION]Possible values for [ACTION] are described in the "auditd.conf" man page. These include: "ignore""syslog""exec""suspend""single""halt"Set this to "syslog", "exec", "single", or "halt".';
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
