#!/bin/sh

# One-char access
alias v='vim -p'
alias s='ssh'
alias g='git'

# command updated
alias ls='ls -p' # -p writes '/' after directories
alias vi='vim -p' # open vim in tabs
alias vim='vim -p'

# Document access
alias notes='vim ~/Documents/notes.txt'
alias bashrc='vim ~/.bash/.bashrc'
alias host='sudo vim /etc/hosts'
alias hosts='sudo vim /etc/hosts'

# Better cp
alias cp='cp -r'

# Navigation
alias ll='ls -lh'
alias hlgn='ssh trotha01@homework.cs.tufts.edu'

# Redis
alias redis-server='redis-server /usr/local/etc/redis.conf'

# Vagrant
alias vd='vagrant destroy'
alias vh='vagrant halt'
alias vp='vagrant provision'
alias vpr='vagrant provision'
alias vr='vagrant reload'
alias vs='vagrant status'
alias vssh='vagrant ssh'
alias vup='vagrant up'

# power
alias sd='sudo shutdown -h now' # Shutdown
alias po='sudo shutdown -h now' # Poweroff (same as shutdown)

# Searching
alias grep='grep -n --color=always'

# git
alias gitconf='vim ~/.gitconfig'
alias gitconfig='vim ~/.gitconfig'

# Web
alias serve='python -m SimpleHTTPServer 8080'

# Demo
alias keys='key-mon'

# what next
alias wn='lua ~/src/wn.lua'

# open notes file
alias note='vi ~/notes'
