alias xclip="xclip -selection c"
alias ll="ls -l"
alias la="ls -la"
alias ls="ls --color"
alias cls="clear && pwd && ls"
# alias rwin="rdesktop -g 1192x960 -a 16 -d essent -u james.morse -r disk:PRM=/media/prm -z 7L-2148-6470.ad.essent.us"
alias cdl="cd $1 && ls"
alias rand="strings /dev/urandom |grep -o '[[:alnum:]]' | head -n 30 | tr -d '\n'; echo"
alias randv='function _rando(){ strings /dev/urandom |grep -o '\''[[:alnum:]]'\'' | head -n $1 | tr -d '\''\n'\''; echo; };_rando'
alias netgrep='/home/jmorse/Documents/Projects/Python-misc/net-grep.py'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
