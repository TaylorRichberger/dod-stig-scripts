my $id = 'V-775';
my $title = 'The root account\'s home directory (other than /) must have mode 0700.';
my $severity = 'medium';
my $description = 'Permissions greater than 0700 could allow unauthorized users access to the root home directory.';
my $fix = 'The root home directory will have permissions of 0700. Do not change the protections of the / directory. Use the following command to change protections for the root home directory.
# chmod 0700 /root.';
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
