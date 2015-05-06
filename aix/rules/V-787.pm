my $id = 'V-787';
my $title = 'System log files must have mode 0640 or less permissive.';
my $severity = 'medium';
my $description = 'If the system log files are not protected, unauthorized users could change the logged data, eliminating its forensic value.';
my $fix = 'Change the mode of the system log file(s) to 0640 or less permissive.

Procedure:
# chmod 0640 /path/to/system-log-file

NOTE: Do not confuse system log files with audit logs.   Any subsystems that require less stringent permissions must be documented.';
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
