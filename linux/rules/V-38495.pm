my $id = 'V-38495';
my $title = 'Audit log files must be owned by root.';
my $severity = 'medium';
my $description = 'If non-privileged users can write to audit logs, audit trails can be modified or destroyed.';
my $fix = 'Change the owner of the audit log files with the following command: # chown root [audit_file]';
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
