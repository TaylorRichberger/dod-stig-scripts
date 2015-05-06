my $id = 'V-831';
my $title = 'The alias file must be owned by root.';
my $severity = 'medium';
my $description = 'If the alias file is not owned by root, an unauthorized user may modify the file to add aliases to run malicious code or redirect email.';
my $fix = 'Change the owner of the /etc/mail/aliases file (or equivalent, such as /usr/lib/aliases) to root.

Procedure:
# chown root /etc/mail/aliases';
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
