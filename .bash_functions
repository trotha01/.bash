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

# `up` with no args is the same as cd ../
# `up 3` is the same as cd ../../../
function up( )
{
    DEFAULT_LIMIT=1
    LIMIT=${1:-$DEFAULT_LIMIT}
    P=$PWD
    for ((i=1; i <= LIMIT; i++))
    do
        B=$B/..
    done
    cd $P$B
    export MPWD=$P
}

function back( )
{
    DEFAULT_LIMIT=1
    LIMIT=${1:-$DEFAULT_LIMIT}
    P=$MPWD
    for ((i=1; i <= LIMIT; i++))
    do
        P=${P%/..}
    done
    cd $P
    export MPWD=$P
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

# fe [FUZZY PATTERN] - Open the selected file with the default editor
#   - Bypass fuzzy finder if there's only one match (--select-1)
#   - Exit if there's no match (--exit-0)
fe() {
  local file
  file=$(fzf --query="$1" --select-1 --exit-0)
  [ -n "$file" ] && ${EDITOR:-vim} "$file"
}

# fd - cd to selected directory
fd() {
  local dir
  dir=$(find ${1:-*} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

# fh - repeat history
fh() {
  eval $(([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
}

# fkill - kill process
fkill() {
  ps -ef | sed 1d | fzf -m | awk '{print $2}' | xargs kill -${1:-9}
}

function master_update() {
 for c in *;
  do cd $c;
  echo "# $c";
  git checkout master;
  git pull;
  cd -;
 done
}
