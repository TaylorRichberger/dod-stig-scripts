my $id = 'V-38536';
my $title = 'The operating system must automatically audit account disabling actions.';
my $severity = 'low';
my $description = 'In addition to auditing new user and group accounts, these watches will alert the system administrator(s) to any modifications. Any unexpected users, groups, or modifications should be investigated for legitimacy.';
my $fix = 'Add the following to "/etc/audit/audit.rules", in order to capture events that modify account changes: # audit_account_changes-w /etc/group -p wa -k audit_account_changes-w /etc/passwd -p wa -k audit_account_changes-w /etc/gshadow -p wa -k audit_account_changes-w /etc/shadow -p wa -k audit_account_changes-w /etc/security/opasswd -p wa -k audit_account_changes';
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
