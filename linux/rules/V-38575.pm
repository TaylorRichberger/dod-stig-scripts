my $id = 'V-38575';
my $title = 'The audit system must be configured to audit user deletions of files and programs.';
my $severity = 'low';
my $description = 'Auditing file deletions will create an audit trail for files that are removed from the system. The audit trail could aid in system troubleshooting, as well as detecting malicious processes that attempt to delete log files to conceal their presence.';
my $fix = 'At a minimum, the audit system should collect file deletion events for all users and root. Add the following to "/etc/audit/audit.rules", setting ARCH to either b32 or b64 as appropriate for your system: -a always,exit -F arch=ARCH -S unlink -S unlinkat -S rename -S renameat \-F auid>=500 -F auid!=4294967295 -k delete-a always,exit -F arch=ARCH -S unlink -S unlinkat -S rename -S renameat \-F auid=0 -k delete';
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
