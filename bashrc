# ~/.bashrc: executed by bash(1) for non-login shells.

# Source global definitions
if [ -f /etc/bash.bashrc ]; then
        . /etc/bash.bashrc
fi

#if [ -f ~/.bash_profile ]; then
#        . ~/.bash_profile
#fi

KEYCHAIN_KEYS="id_rsa other.id_rsa"                                                                                                            
eval `keychain --eval --agents ssh -Q --inherit any  ${KEYCHAIN_KEYS}`

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# Shorten long term prompts
export PROMPT_DIRTRIM=2

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=6000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"


# If this is an xterm set the title to user@host:dir
#case "$TERM" in
#xterm*|rxvt*)
#     PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
#     PS1="\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] " 
#    ;;
#*)
#    ;;
#esac

PS1="\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] " 

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind space:magic-space

# Ansible No Cows
ANSIBLE_NOCOWS=1
export ANSIBLE_NOCOWS

#if [ -f ~.bashrc.local ]; then
#	. ~/.bashrc.local
#fi
