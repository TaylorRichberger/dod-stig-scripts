#!/bin/sh

printrule() {
    . "$1"
    echo '--------------------ID--------------------'
    printid
    echo '-------------------TITLE------------------'
    printtitle
    echo '-----------------SEVERITY-----------------'
    printseverity
    echo '----------------DESCRIPTION---------------'
    printdescription
    echo '--------------------FIX-------------------'
    printfix
    echo '------------------------------------------'
    echo
    echo
    echo
}

TESTONLY=0

if [ "x$1" = 'x-t' ]; then
    TESTONLY=1
    shift
fi

export PATH="./lib:$PATH"

while [ $# -gt 0 ]; do
    ruledir="$1"
    shift

    echo "Testing rule $1"

    if [ -e "$ruledir/test.sh" ]; then
        if ! "$ruledir/test.sh"; then
            echo "FAILED"
            if [ -e "$ruledir/fix.sh" ]; then
                printrule "$ruledir/vars.sh"
                printf "There is a fix available, would you like to run it(y/n)? "
                if [ "$TESTONLY" -eq 0 ]; then
                    read runfix
                    if [ "$runfix" = y -o "$runfix" = Y ]; then
                        "$ruledir/fix.sh"
                    fi
                fi
            else
                echo "There is no fix available, you must fix this yourself:"
                printrule "$ruledir/vars.sh"
            fi
        fi
    else
        echo "Can not test.  You must test manually."
        printrule "$ruledir/vars.sh"
    fi
done
