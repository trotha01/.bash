
######################
# Sourcing other files
######################
# source aliases
source ~/.bash/aliases

# source functions
source ~/.bash/functions

# Source color functions
[ -d ~/colors ] && source ~/colors/color.sh

# autojump
# BREW_VERSION=`brew --version`
# [[ `brew --version` != "" ]] && echo 'here'
if brew --version; then echo 'here'; fi
# [[ `brew --version` != "" ]] && [[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# git prompt
[ -d ~/bash-git-prompt ] && source ~/bash-git-prompt/gitprompt.sh

# Source for ruby
if [ -f ~/.rvm/scripts/rvm ]; then
    source ~/.rvm/scripts/rvm
fi

# git completions
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Fuzzy finder
# [ -f ~/.fzf.bash ] && source ~/.fzf.bash

######################
# Path Additions
######################
# Add local binaries to path
export PATH=~/bin:$PATH

######################
# Settings
######################
# vim mode
set -o vi

# Always color grep output, even when piping
export GREP_OPTIONS='--color=always'

## Cylcle through completions ###
# [[ $- = *i* ]] && bind TAB:menu-complete
# [[ $- = *i* ]] && bind CONTROL-k:menu-complete
# [[ $- = *i* ]] && bind CONTROL-j:menu-complete-backward

## Ignore case with completion ##
bind 'set completion-ignore-case on'
## Show list after the first tab ##
set show-all-if-ambiguous on

## Minor spell checking with cd ##
shopt -s cdspell

## Case insensitice Filename matching / completions ##
set completion-ignore-case on

## Bash will append (not overwrite) history on disk ##
shopt -s histappend
## Write previous line to disk ##
# PROMPT_COMMAND='history -a'
