my $id = 'V-22470';
my $title = 'The SSH daemon must restrict login ability to specific users and/or groups.';
my $severity = 'medium';
my $description = 'Restricting SSH logins to a limited group of users, such as system administrators, prevents password-guessing and other SSH attacks from reaching system accounts and other accounts not authorized for SSH access.';
my $fix = 'Edit the SSH daemon configuration and add an AllowGroups directive.';
my $autotest = 1;
my $autofix = 0;
my $filename = '/etc/ssh/sshd_config';

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
    return STIG::FileShouldContain($filename, qr/AllowGroups/);
}

sub fix()
{
    return 0;
}

1;
