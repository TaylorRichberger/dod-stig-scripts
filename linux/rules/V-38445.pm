my $id = 'V-38445';
my $title = 'Audit log files must be group-owned by root.';
my $severity = 'medium';
my $description = 'If non-privileged users can write to audit logs, audit trails can be modified or destroyed.';
my $fix = 'Change the group owner of the audit log files with the following command: # chgrp root [audit_file]';
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
