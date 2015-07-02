my $id = 'V-38465';
my $title = 'Library files must have mode 0755 or less permissive.';
my $severity = 'medium';
my $description = 'Files from shared library directories are loaded into the address space of processes (including privileged ones) or of the kernel itself at runtime. Restrictive permissions are necessary to protect the integrity of the system.';
my $fix = 'System-wide shared library files, which are linked to executables during process load time or run time, are stored in the following directories by default: /lib/lib64/usr/lib/usr/lib64If any file in these directories is found to be group-writable or world-writable, correct its permission with the following command: # chmod go-w [FILE]';
my $autotest = 0;
my $autofix = 0;

use lib 'lib';
use STIG;

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
