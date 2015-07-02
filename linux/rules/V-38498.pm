my $id = 'V-38498';
my $title = 'Audit log files must have mode 0640 or less permissive.';
my $severity = 'medium';
my $description = 'If users can write to audit logs, audit trails can be modified or destroyed.';
my $fix = 'Change the mode of the audit log files with the following command: # chmod 0640 [audit_file]';
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
