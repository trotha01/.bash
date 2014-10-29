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

# Navigation
alias sg='cd ~/go/src/github.com/sendgrid'
alias ll='ls -lh'
alias hlgn='ssh trotha01@homework.cs.tufts.edu'

# Redis
alias redis-server='redis-server /usr/local/etc/redis.conf'

# Vagrant
alias vup='vagrant up'
alias vr='vagrant reload'
alias vp='vagrant provision'
alias vpr='vagrant provision'
alias vssh='vagrant ssh'
alias vh='vagrant halt'
alias vd='vagrant destroy'

# power
alias sd='sudo shutdown -h now'

# Searching
alias grep='grep -n --color=always'

# git
alias gitconf='vim ~/.gitconfig'
alias gitconfig='vim ~/.gitconfig'

# Web
alias serve='python -m SimpleHTTPServer 8080'

# Demo
alias keys='key-mon'
