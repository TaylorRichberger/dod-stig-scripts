#!/bin/sh

OS="$(uname -s | tr '[[:upper:]]' '[[:lower:]]')"

./runrules.pl -t ./$OS/rules/*.pm
