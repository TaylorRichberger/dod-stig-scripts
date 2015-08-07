#!/bin/sh

for file in $(rpm -Va  | grep '^.M' | awk '{ print $2 }'); do
    wantedmode=$(rpm -q --queryformat "[%{FILENAMES} %{FILEMODES:octal}\n]" $(rpm -qf "$file") | grep -E "^$file [[:digit:]]*$" | sed 's/^.*\(...\)$/\1/')

    if ! test_perms $file $wantedmode >/dev/null 2>&1; then
        chmod $wantedmode "$file"
    fi
done

