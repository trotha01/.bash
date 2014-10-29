#!/bin/sh
function repeat {
    n=$1
    shift

    for i in $(seq 1 $n); do
        $@
    done
}

# Line break
function lb {
    repeat 10 echo
    echo "========================================"
    repeat 10 echo
}

function cdl {
    cd $1 ; ls
}

# Reading
function spdread {
    cat $1 | speedread -w 250
}

# For changing terminal profile (iterm)
function profile {
    echo -e "\033]50;SetProfile=$1\a"
}
# For changing terminal title (iterm)
function title {
    echo -ne "\033]0;"$*"\007"
}

# Using expect script example
# function _password {
    # echo -n "Enter Password: "
    # read -s pswd
    # echo
    # pswd.exp $pswd $@
# }
#
# function vr { _password vagrant reload; }
# function vup { _password vagrant up; }


