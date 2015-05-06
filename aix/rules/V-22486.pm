my $id = 'V-22486';
my $title = 'The SSH daemon must use privilege separation.';
my $severity = 'medium';
my $description = 'SSH daemon privilege separation causes the SSH process to drop root privileges when not needed, which would decrease the impact of software vulnerabilities in the unprivileged section.';
my $fix = 'Edit the /etc/ssh/sshd_config file and remove the UsePrivilegeSeparation setting or change the value of the UsePrivilegeSeparation setting to "yes".';
my $auto = 0;

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

sub auto()
{
    return $auto;
}

sub test()
{
    return 0;
}

sub fix()
{
    return 0;
}
