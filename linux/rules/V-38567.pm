my $id = 'V-38567';
my $title = 'The audit system must be configured to audit all use of setuid programs.';
my $severity = 'low';
my $description = 'Privileged programs are subject to escalation-of-privilege attacks, which attempt to subvert their normal role of providing some necessary but limited capability. As such, motivation exists to monitor these programs for unusual activity.';
my $fix = 'At a minimum, the audit system should collect the execution of privileged commands for all users and root. To find the relevant setuid programs run the following command for each local partition [PART]: # find [PART] -xdev -type f \( -perm -4000 -o -perm -2000 \) 2>/dev/nullThen, for each setuid program on the system, add a line of the following form to "/etc/audit/audit.rules", where [SETUID_PROG_PATH] is the full path to each setuid program in the list: -a always,exit -F path=[SETUID_PROG_PATH] -F perm=x -F auid>=500 -F auid!=4294967295 -k privileged';
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
