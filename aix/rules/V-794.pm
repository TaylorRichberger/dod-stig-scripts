my $id = 'V-794';
my $title = 'All system command files must have mode 0755 or less permissive.';
my $severity = 'medium';
my $description = 'Restricting permissions will protect system command files from unauthorized modification. System command files include files present in directories used by the operating system for storing default system executables and files present in directories included in the system\'s default executable search paths.';
my $fix = 'Change the mode for system command files to 0755 or less permissive.

Procedure:
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
