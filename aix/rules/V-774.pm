my $id = 'V-774';
my $title = 'The root user\'s home directory must not be the root directory (/).';
my $severity = 'low';
my $description = 'Changing the root home directory to something other than / and assigning it a 0700 protection makes it more difficult for intruders to manipulate the system by reading the files that root places in its default directory. It also gives root the same discretionary access control for root\'s home directory as for the other plain user home directories.';
my $fix = 'The root home directory should be something other than / (such as /root).

Procedure:
# mkdir /root
# chown root /root
# chgrp sys /root
# chmod 700 /root
# cp -r /.??* /root/.

Then, edit the passwd file and change the root home directory to /root. The cp -r /.??* command copies all files and subdirectories of file names that begin with "." into the new root directory, which preserves the previous root environment. Must be in the "/" directory when executing the "cp" command.';
my $autotest = 1;
my $autofix = 1;

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
    setpwent();
    while (my @pw = getpwent())
    {
        if ($pw[0] eq 'root')
        {
            if ($pw[7] eq '/')
            {
                return "root home dir is $pw[7]";
            } else
            {
                return ''
            }
        }
    }
    endpwent();
    return 'root not found?';
}

sub fix()
{
    my $output = '';
    $output .= `mkdir /root`;
    $output .= `chown root /root`;
    $output .= `chgrp sys /root`;
    $output .= `chmod 700 /root`;
    $output .= `cp -r /.??* /root/.`;
    $output .= `usermod -d /root root`;
    return $output
}

1;
