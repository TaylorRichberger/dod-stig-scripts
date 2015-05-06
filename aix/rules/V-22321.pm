my $id = 'V-22321';
my $title = 'The /etc/resolv.conf file must have mode 0644 or less permissive.';
my $severity = 'medium';
my $description = 'The resolv.conf (or equivalent) file configures the system\'s DNS resolver.  DNS is used to resolve host names to IP addresses.  If DNS configuration is modified maliciously, host name resolution may fail or return incorrect information.  DNS may be used by a variety of system security functions, such as time synchronization, centralized authentication, and remote system logging.';
my $fix = 'Change the mode of the /etc/resolv.conf file to 0644 or less permissive.

# chmod 0644 /etc/resolv.conf';
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
