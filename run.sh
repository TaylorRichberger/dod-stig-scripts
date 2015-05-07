#!/bin/sh

OS="$(uname -s | tr '[[:upper:]]' '[[:lower:]]')"

./runrules.pl ./$OS/rules/*.pm
