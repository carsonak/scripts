#!/usr/bin/env bash
# Location: ~/.bash_aliases

# python aliases
# alias python='python3'
alias py='python3'

# git
alias g='git'

# memory disk usage
alias get-size='du -sch' # --summarize --total --human-readable

# ls aliases
alias l='ls -C' # 'list by columns'
alias la='ls -a' # --all
alias lh='ls -halF' # --human-readable  'long format' --classify
alias ll='ls -alF'
alias lq='ls -Qa' # --quote-name
alias lr='ls -RP' # --recursive --indicator-style=slash

# free
alias memory='free -ht --si' # --human --total

# clear
alias c='clear'

# rm aliases
alias del="rm -vd --interactive=once" # --verbose --dir
alias rd="rm -r --one-file-system --preserve-root" # --recursive
alias remove="sudo rm -rf" # --force

# Installs and updates
alias apt-install="sudo apt-get install"
alias apt-reinstall="sudo apt-get reinstall"
alias apt-uninstall="sudo apt-get purge"
alias apt-update="sudo apt-get update; sudo apt-get dist-upgrade"
alias apt-tidy="sudo apt-get autoclean; sudo apt-get distclean; sudo apt-get autopurge"

# a.k.a's
alias dir="pwd"
alias copy="cp"
alias rename="mv"
alias move="mv"
alias md="mkdir -p"

# valgrind aliases
alias valg="valgrind"
alias valg-full="valgrind --leak-check=full --trace-children=yes"

# pacman
alias pacman='pacman --color=auto'
# tree
alias tree='tree --dirsfirst -C'
# dmesg
alias dmesg='dmesg --color=auto --reltime --human --nopager --decode'
