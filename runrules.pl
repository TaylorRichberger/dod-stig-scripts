#!/usr/bin/perl
use strict;
use warnings;
use feature 'say';

for my $file (@ARGV)
{
    require $file;
    say("\t" . getSeverity() . ': ' . getTitle());
    my $testOutput = '';
    if (canTest())
    {
        if ($testOutput = test())
        {
            say('FAILED');
            if ($testOutput)
            {
                say($testOutput);
            }
            say(getDescription());
            say('fix: ' . getFix());
            if (canFix())
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
        } else
        {
            say('Passed');
        }
    } else
    {
        say('COULD NOT TEST, CHECK MANUALLY');
        say(getDescription());
        say('fix: ' . getFix());
    }
    say('');
}
