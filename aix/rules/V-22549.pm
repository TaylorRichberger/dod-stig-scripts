my $id = 'V-22549';
my $title = 'The DHCP client must not send dynamic DNS updates.';
my $severity = 'medium';
my $description = 'Dynamic DNS updates transmit unencrypted information about a system including its name and address and should not be used unless needed.';
my $fix = 'Configure the system\'s DHCP client to not send dynamic DNS updates.  

Remove / comment updateDNS lines from the /etc/dhcpcd.ini and /etc/dhcpc.opt files.';
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
