use warnings;
use strict;

package STIG;

sub ProgramShouldBeRunning($)
{
    my $program = $_[0];
    my $ps = `ps -eo args`;
    if ($ps =~ m/$program/)
    {
        return '';
    } else
    {
        return "$program not found to be running";
    }
}

sub FileShouldNotExist($)
{
    my $filename = $_[0];
    if (-e $filename)
    {
        return "$filename exists";
    } else
    {
        return '';
    }
}

sub FileShouldExist($)
{
    my $filename = $_[0];
    if (-e $filename)
    {
        return '';
    } else
    {
        return "$filename does not exist";
    }
}

sub ModeShouldNotExceed($$)
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

sub OwnerShouldBe($$)
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

sub OwnerShouldMatch($$)
{
    my ($filename, $wantedOwners) = @_;

    if (-e $filename)
    {
        if ((getpwuid((stat($filename))[4]))[0] =~ $wantedOwners)
        {
            return '';
        } else
        {
            return "$filename not owned by $wantedOwners";
        }
    } else
    {
        return '';
    }
}

sub GroupShouldBe($$)
{
    my ($filename, $wantedGroup) = @_;

    if (-e $filename)
    {
        if ((getgrgid((stat($filename))[5]))[0] eq $wantedGroup)
        {
            return '';
        } else
        {
            return "$filename not group owned by $wantedGroup";
        }
    } else
    {
        return '';
    }
}

sub GroupShouldMatch($$)
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

sub checkTunable
{
    my ($tunable, $threshold, $compare, $problem) = @_;

    # Empty evaluates to false
    my $cmd = `/usr/sbin/no -o $tunable`;

    if ($cmd =~ m/^$tunable\s*=\s*(.+)$/)
    {
        my $value = $1;

        if (&{$compare}($value, $threshold))
        {
            return '';
        } else
        {
            return "$tunable $problem $threshold (actual is $value)";
        }
    } else
    {
        return "$tunable is not showing any value.";
    }

}

sub checkSecStanza
{
    my ($filename, $stanza, $attribute, $threshold, $compare, $problem) = @_;
    my @problemusers;

    my $value = `lssec -f $filename -s $stanza -a $attribute`;
    chomp($value);
    $value =~ s/^[^=]*=//;

    my $output = '';
    if ($value eq '')
    {
        $output = "stanza $stanza $attribute not set";
    } elsif (!&{$compare}($value, $threshold))
    {
        $output = "stanza $stanza $attribute $problem $threshold (actual is $value)";
    }

    return $output;
}

sub checkSec
{
    my ($filename, $attribute, $threshold, $compare, $problem) = @_;
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
        } elsif ($line =~ m/^\s+$attribute\s*=\s*(.+)$/)
        {
            if ($user eq 'default')
            {
                $default = 1;
            }

            my $value = $1;
            if (!&{$compare}($value, $threshold))
            {
                if ($output)
                {
                    $output .= ', '
                }
                $output .= "User $user $attribute $problem $threshold (actual is $value)";
                push(@problemusers, $user);
            }
        }
    }
    if (!$default)
    {
        $output .= "default has no $attribute";
        push(@problemusers, 'default');
    }

    return ($output, \@problemusers);
}

sub TunableShouldBeAtLeast($$)
{
    return checkTunable(@_, sub { return $_[0] >= $_[1]; }, 'lower than');
}

sub TunableShouldNotExceed($$)
{
    return checkTunable(@_, sub { return $_[0] <= $_[1]; }, 'higher than');
}

sub SecShouldNotEqual($$$)
{
    return checkSec(@_, sub { return $_[0] ne $_[1]; }, 'should not be');
}

sub SecShouldEqual($$$)
{
    return checkSec(@_, sub { return $_[0] eq $_[1]; }, 'should be');
}

sub SecShouldMatch($$$)
{
    return checkSec(@_, sub { return $_[0] =~ $_[1]; }, 'should match');
}

sub SecShouldNotMatch($$$)
{
    return checkSec(@_, sub { return $_[0] !~ $_[1]; }, 'should not match');
}

sub SecShouldBeAtLeast($$$)
{
    return checkSec(@_, sub { return $_[0] >= $_[1]; }, 'lower than');
}

sub SecShouldNotExceed($$$)
{
    return checkSec(@_, sub { return $_[0] <= $_[1]; }, 'higher than');
}

sub SecStanzaShouldNotEqual($$$$)
{
    return checkSecStanza(@_, sub { return $_[0] ne $_[1]; }, 'should not be');
}

sub SecStanzaShouldEqual($$$$)
{
    return checkSecStanza(@_, sub { return $_[0] eq $_[1]; }, 'should be');
}

sub SecStanzaShouldMatch($$$$)
{
    return checkSecStanza(@_, sub { return $_[0] =~ $_[1]; }, 'should match');
}

sub SecStanzaShouldNotMatch($$$$)
{
    return checkSecStanza(@_, sub { return $_[0] !~ $_[1]; }, 'should not match');
}

sub SecStanzaShouldBeAtLeast($$$$)
{
    return checkSecStanza(@_, sub { return $_[0] >= $_[1]; }, 'too low');
}

sub SecStanzaShouldNotExceed($$$$)
{
    return checkSecStanza(@_, sub { return $_[0] <= $_[1]; }, 'too high');
}

1;
