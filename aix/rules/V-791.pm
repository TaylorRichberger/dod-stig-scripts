my $id = 'V-791';
my $title = 'The NIS/NIS+/yp files must have mode 0755 or less permissive.';
my $severity = 'medium';
my $description = 'NIS/NIS+/yp files are part of the system\'s identification and authentication processes and are, therefore, critical to system security.  Unauthorized modification of these files could compromise these processes and the system.';
my $fix = 'Change the mode of NIS/NIS+/yp files to 0755 or less permissive.

Procedure (example):
# chmod 0755 <filename>';
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
