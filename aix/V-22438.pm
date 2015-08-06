my $id = 'V-22438';
my $title = 'The aliases file must be group-owned by sys, bin, or system.';
my $severity = 'medium';
my $description = 'If the alias file is not group-owned by a system group, an unauthorized user may modify the file to add aliases to run malicious code or redirect e-mail.';
my $fix = 'Change the group owner of the /etc/mail/aliases file.

Procedure:
# chgrp system /etc/mail/aliases';
my $autotest = 1;
my $autofix = 1;
my $filename = '/etc/mail/aliases';

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
    return STIG::GroupShouldMatch($filename, qr/^(bin|sys|system)$/);
}

sub fix()
{
    return `chgrp system $filename`;
}

1;
