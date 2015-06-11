#!/usr/bin/perl
use strict;
use warnings;
use feature 'say';

my $testonly = 0;

for my $file (@ARGV)
{
    if ($file eq '-t')
    {
        $testonly = 1;
        next;
    }

    require $file;
    print('.');
    if (canTest())
    {
        if (my $testOutput = test())
        {
            print("\n");
            say('==================  FAILED  ==================');
            say("\n\t" . getId());
            say("\n\t" . getSeverity() . ': ' . getTitle());
            if ($testOutput)
            {
                say($testOutput);
            }
            say(getDescription());
            say('fix: ' . getFix());
            if ((!$testonly) and canFix())
            {
                say('Autofixing of this problem is available, press enter to accept this, or type no to skip.');
                my $answer = <STDIN>;
                chomp($answer);
                if ($answer =~ m/^n/i)
                {
                    say('skipping fix');
                } else
                {
                    say('autofixing problem');
                    fix();
                }
            }
            say('');
        }
    } else
    {
        print("\n");
        say('======  COULD NOT TEST, CHECK MANUALLY  ======');
        say("\n\t" . getId());
        say("\n\t" . getSeverity() . ': ' . getTitle());
        say(getDescription());
        say('fix: ' . getFix());
        say('');
    }
}
