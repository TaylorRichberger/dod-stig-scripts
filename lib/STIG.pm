use warnings;
use strict;

package STIG;
# All tests return a blank string (which evaluates as false) for a succeeded test, and a message for a failed test

# run sed and replace fields inline
sub sedi($$)
{
    my ($filename, $script) = @_;
    my $tmp = "$filename.sedi.$$";

    # Copies the file first, to preserve permissions, and make the replacements essentially atomic.
    system('/bin/cp', $filename, $tmp);

    my $output = `sed -e '$script' '$tmp'`;

    open(my $file, '>', $tmp);
    if ($file)
    {
        print($file $output);
    }
    close($file);
    system('/bin/mv', $filename, "$filename.sedi.$$.backup");
    return system('/bin/mv', $tmp, $filename);
}

sub ProgramShouldBeRunning($)
{
    my $program = $_[0];
    my $ps = `ps -eo args`;
    if ($ps =~ m/$program/)
    {
        return '';
    } else
    {
        return "$program not found to be running\n";
    }
}

sub ProgramShouldNotBeRunning($)
{
    my $program = $_[0];
    my $ps = `ps -eo args`;
    if ($ps =~ m/$program/)
    {
        return "$program found to be running\n";
    } else
    {
        return '';
    }
}

sub FileShouldContain($$)
{
    my ($filename, $pattern) = @_;
    open (my $file, '<', $filename);
    my $found = 0;
    if ($file)
    {
        while (my $line = <$file>)
        {
            chomp($line);
            if ($line =~ $pattern)
            {
                $found = 1;
            }
        }
    } else
    {
        return "$filename could not be opened\n";
    }
    if ($found)
    {
        return '';
    } else
    {
        return "$filename did not contain $pattern\n";
    }
}

sub FileShouldNotContain($$)
{
    my ($filename, $pattern) = @_;
    my $found = 0;
    if (-e $filename)
    {
        open (my $file, '<', $filename);
        if ($file)
        {
            while (my $line = <$file>)
            {
                chomp($line);
                if ($line =~ $pattern)
                {
                    $found = 1;
                }
            }
        } else
        {
            return "$filename could not be opened\n";
        }
    }
    if ($found)
    {
        return "$filename contained $pattern\n";
    } else
    {
        return '';
    }
}

sub FileShouldNotExist($)
{
    my $filename = $_[0];
    if (-e $filename)
    {
        return "$filename exists\n";
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
        return "$filename does not exist\n";
    }
}

# Will error if the mode is not at least as restrictive as the given one
sub ModeShouldNotExceed($$)
{
    my ($filename, $maxMode) = @_;

    if (-e $filename)
    {
        my $mode = (stat($filename))[2];
        # If the mode ANDed with the desired restrictiveness's inverse is not 0, the mode has bits that are outside the restriction
        if (($mode & 07777) & (~$maxMode))
        {
            return "$filename permissions are too permissive\n";
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
            return "$filename not owned by $wantedOwner\n";
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
            return "$filename not owned by $wantedOwners\n";
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
            return "$filename not group owned by $wantedGroup\n";
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
            return "$filename not group owned by $wantedGroups\n";
        }
    } else
    {
        return '';
    }
}

# Errors if the tunable is either empty or doesn't fit the condition
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
            return "$tunable $problem '$threshold' (actual is '$value')\n";
        }
    } else
    {
        return "$tunable is not showing any value.\n";
    }

}

# Errors if the stanza is not set, or if it violates the condition
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
        $output = "stanza $stanza $attribute not set\n";
    } elsif (!&{$compare}($value, $threshold))
    {
        $output = "stanza $stanza $attribute $problem '$threshold' (actual is '$value')\n";
    }

    return $output;
}

# Errors if stanzas are set blank, the default is unset, or violate the condition
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
        } elsif ($line =~ m/^\s+$attribute\s*=\s*(.*)$/)
        {
            if ($user eq 'default')
            {
                $default = 1;
            }

            my $value = $1;
            if (length($value) > 0)
            {
                if (!&{$compare}($value, $threshold))
                {
                    if ($output)
                    {
                        $output .= ', '
                    }
                    $output .= "User $user $attribute $problem '$threshold' (actual is '$value')\n";
                    push(@problemusers, $user);
                }
            } else
            {
                if ($output)
                {
                    $output .= ', '
                }
                $output .= "User $user $attribute not set\n";
                push(@problemusers, $user);
            }
        }
    }
    if (!$default)
    {
        $output .= "default has no $attribute\n";
        push(@problemusers, 'default');
    }

    return ($output, \@problemusers);
}

# Convenience functions for the above
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
