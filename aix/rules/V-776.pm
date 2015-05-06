my $id = 'V-776';
my $title = 'The root account\'s executable search path must be the vendor default and must contain only absolute paths.';
my $severity = 'medium';
my $description = 'The executable search path (typically the PATH environment variable) contains a list of directories for the shell to search to find executables. If this path includes the current working directory or other relative paths, executables in these directories may be executed instead of system commands. This variable is formatted as a colon-separated list of directories. If there is an empty entry, such as a leading or trailing colon or two consecutive colons, this is interpreted as the current working directory. Entries starting with a slash (/) are absolute paths.';
my $fix = 'Edit the root user\'s local initialization files. Change any found PATH variable settings to the vendor\'s default path for the root user. Remove any empty path entries or references to relative paths.

# cd <root\'s home directory>
# vi .profile .cshrc

If the bash shell is installed, edit these additional files.
# vi .bashrc .bash_profile';
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
