my $id = 'V-38680';
my $title = 'The audit system must identify staff members to receive notifications of audit log storage volume capacity issues.';
my $severity = 'medium';
my $description = 'Email sent to the root account is typically aliased to the administrators of the system, who can take appropriate action.';
my $fix = 'The "auditd" service can be configured to send email to a designated account in certain situations. Add or correct the following line in "/etc/audit/auditd.conf" to ensure that administrators are notified via email for those situations: action_mail_acct = root';
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
