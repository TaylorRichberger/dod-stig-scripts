my $id = 'V-38566';
my $title = 'The audit system must be configured to audit failed attempts to access files and programs.';
my $severity = 'low';
my $description = 'Unsuccessful attempts to access files could be an indicator of malicious activity on a system. Auditing these events could serve as evidence of potential system compromise.';
my $fix = 'At a minimum, the audit system should collect unauthorized file accesses for all users and root. Add the following to "/etc/audit/audit.rules", setting ARCH to either b32 or b64 as appropriate for your system: -a always,exit -F arch=ARCH -S creat -S open -S openat -S truncate \-S ftruncate -F exit=-EACCES -F auid>=500 -F auid!=4294967295 -k access-a always,exit -F arch=ARCH -S creat -S open -S openat -S truncate \-S ftruncate -F exit=-EPERM -F auid>=500 -F auid!=4294967295 -k access-a always,exit -F arch=ARCH -S creat -S open -S openat -S truncate \-S ftruncate -F exit=-EACCES -F auid=0 -k access-a always,exit -F arch=ARCH -S creat -S open -S openat -S truncate \-S ftruncate -F exit=-EPERM -F auid=0 -k access';
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
