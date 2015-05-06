my $id = 'V-975';
my $title = 'The cron.allow file must have mode 0600 or less permissive.';
my $severity = 'medium';
my $description = 'A cron.allow file that is readable and/or writable by other than root could allow potential intruders and malicious users to use the file contents to help discern information, such as who is allowed to execute cron programs, which could be harmful to overall system and network security.';
my $fix = 'Change the mode of the cron.allow file to 0600.

Procedure:
# chmod 0600 /var/adm/cron/cron.allow';
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
