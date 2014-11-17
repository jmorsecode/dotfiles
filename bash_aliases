alias xclip="xclip -selection c"
alias ll="ls -l"
alias la="ls -la"
alias ls="ls --color"
alias cdl="cd $1 && ls"
alias rand="strings /dev/urandom |grep -o '[[:alnum:]]' | head -n 30 | tr -d '\n'; echo"
alias randv='function _rando(){ strings /dev/urandom |grep -o '\''[[:alnum:]]'\'' | head -n $1 | tr -d '\''\n'\''; echo; };_rando'
