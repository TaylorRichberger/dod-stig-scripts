my $id = 'V-38493';
my $title = 'Audit log directories must have mode 0755 or less permissive.';
my $severity = 'medium';
my $description = 'If users can delete audit logs, audit trails can be modified or destroyed.';
my $fix = 'Change the mode of the audit log directories with the following command: # chmod go-w [audit_directory]';
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
