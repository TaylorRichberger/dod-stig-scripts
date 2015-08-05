#!/bin/sh

for file in $(rpm -Va  | grep '^.M' | awk '{ print $2 }'); do
    mode=0$(stat -c %a "$file")
    wantedmode=0$(rpm -q --queryformat "[%{FILENAMES} %{FILEMODES:octal}\n]" $(rpm -qf "$file") | grep -E "^$file [[:digit:]]*$" | sed 's/^.*\(...\)$/\1/')

    # if mode has more unspecified bits that aren't in wantedmode
    if [ "$((($mode | $wantedmode) != $wantedmode))" -ne 0 ]; then
        echo "$file is too permissive"
    fi
done

exit 0
