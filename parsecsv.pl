#!/usr/bin/perl
# This simple script parses a CSV file formatted into columns id, severity, title, description, fix into perl modules
use strict;
use warnings;

use Text::CSV;
my $csv = Text::CSV->new({ sep_char => ',', binary => 1});
my $filename = $ARGV[0] or die "Need to get CSV file on the command line\n";
 
my $file;
open($file, '<', $filename) or die "Could not open '$file' $!\n";
while (my $row = $csv->getline($file)) {
    my ($id, $severity, $title, $description, $fix) = @{$row};
    $title =~ s/'/\\'/g;
    $description =~ s/'/\\'/g;
    $fix =~ s/'/\\'/g;

    open(my $idfile, '>', "$id.pm");
    printf($idfile "my \$id = '%s';\n", $id);
    printf($idfile "my \$title = '%s';\n", $title);
    printf($idfile "my \$severity = '%s';\n", $severity);
    printf($idfile "my \$description = '%s';\n", $description);
    printf($idfile "my \$fix = '%s';\n", $fix);
    printf($idfile "my \$auto = 0;\n");
    printf($idfile "\n");
    printf($idfile "sub getId()\n{\n    return \$id;\n}\n\n");
    printf($idfile "sub getTitle()\n{\n    return \$title;\n}\n\n");
    printf($idfile "sub getSeverity()\n{\n    return \$severity;\n}\n\n");
    printf($idfile "sub getDescription()\n{\n    return \$description;\n}\n\n");
    printf($idfile "sub getFix()\n{\n    return \$fix;\n}\n\n");
    printf($idfile "sub auto()\n{\n    return \$auto;\n}\n\n");
    printf($idfile "sub test()\n{\n    return 0;\n}\n\n");
    printf($idfile "sub fix()\n{\n    return 0;\n}\n");
    close($idfile);
}
