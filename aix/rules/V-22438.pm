my $id = 'V-22438';
my $title = 'The aliases file must be group-owned by sys, bin, or system.';
my $severity = 'medium';
my $description = 'If the alias file is not group-owned by a system group, an unauthorized user may modify the file to add aliases to run malicious code or redirect e-mail.';
my $fix = 'Change the group owner of the /etc/mail/aliases file.

Procedure:
# chgrp system /etc/mail/aliases';
my $autotest = 0;
my $autofix = 0;

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

1;
