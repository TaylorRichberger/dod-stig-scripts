use warnings;
use strict;

package STIG;

sub checkMode
{
    my ($filename, $maxMode) = @_;

    if (-e $filename)
    {
        my $mode = (stat($filename))[2];
        # If the mode
        if (($mode & 07777) & (~$maxMode))
        {
            return "$filename permissions are too permissive";
        } else
        {
            return '';
        }
    } else
    {
        return '';
    }
}

sub checkOwner
{
    my ($filename, $wantedOwner) = @_;

    if (-e $filename)
    {
        if ((getpwuid((stat($filename))[4]))[0] eq $wantedOwner)
        {
            return '';
        } else
        {
            return "$filename not owned by $wantedOwner";
        }
    } else
    {
        return '';
    }
}

sub checkGroups
{
    my ($filename, $wantedGroups) = @_;

    if (-e $filename)
    {
        if ((getgrgid((stat($filename))[5]))[0] =~ $wantedGroups)
        {
            return '';
        } else
        {
            return "$filename not group owned by $wantedGroups";
        }
    } else
    {
        return '';
    }
}

sub checkSec
{
    my ($filename, $option, $threshold, $compare, $problem) = @_;
    my @problemusers;

    # Empty evaluates to false
    my $output = '';
    open(my $file, '<', $filename);

    my $default = 0;

    my $user;
    while (my $line = <$file>)
    {
        chomp($line);
        if ($line =~ m/^([^\s#\*]+):\s*$/)
        {
            $user = $1;
        } elsif ($line =~ m/^\s+$option\s*=\s*(\d+)$/)
        {
            if ($user eq 'default')
            {
                $default = 1;
            }

            my $value = $1;
            if (&{$compare}($value, $threshold))
            {
                if ($output)
                {
                    $output .= ', '
                }
                $output .= "User $user $option too $problem at $value";
                push(@problemusers, $user);
            }
        }
    }
    if (!$default)
    {
        $output .= "default has no $option";
        push(@problemusers, 'default');
    }

    return ($output, \@problemusers);
}

sub minSec
{
    return checkSec(@_, sub { return $_[0] < $_[1]; }, 'low');
}

sub maxSec
{
    return checkSec(@_, sub { return $_[0] > $_[1]; }, 'high');
}

1;
