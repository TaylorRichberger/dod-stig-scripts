my $id = 'V-4284';
my $title = 'The securetcpip command must be used.';
my $severity = 'medium';
my $description = 'The AIX securetcpip command disables insecure network utilities, such as rcp, rlogin, rlogind, rsh, rshd, tftp, tftpd, and trpt/d. These services increase the attack surface of the system.';
my $fix = 'Ensure secure tcp/ip has been invoked before allowing operations on the system.';
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
