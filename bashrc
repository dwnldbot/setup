#
# BASHRC
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias l='ls --color=auto'
alias ls='ls --color=auto'
alias la='ls -a --color=auto'
alias ll='ls -l --color=auto'
alias lla='ls -la --color=auto'
alias pdf='apvlv'
alias kitvpn='sudo openvpn --config ~/doc/scc.ovpn'
alias e='exit'
alias pa='pacaur --color always'
alias ..='cd ..'
PS1='\[\e[1;31m\] \w \[\e[1;37m\]'
