export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="wezm"
source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export EDITOR=vi
bindkey -v
export PAGER="less"

path=($path /bin /usr/bin /usr/local/bin $HOME/bin)
manpath=($manpath /usr/man)
cdpath=(~ ..)
if [[ "$VENDOR" == "apple" ]]; then
    path=($path /opt/local/bin)
    manpath=($manpath /opt/local/share/man)
fi
if ((EUID == 0)); then # root
    path=($path /sbin /usr/sbin /usr/local/sbin /opt/local/sbin)
fi

alias grep="grep --color"
alias df="df -h"
alias du="du -h"

alias -s pdf=evince
alias -s odt=oowriter
alias -s doc=oowriter
alias -s docx=oowriter
alias -s rtf=oowriter
alias -s ods=oowriter
alias -s xls=oocalc
alias -s xlsx=oocalc
alias -s odp=ooimpress
alias -s ppt=ooimpress
alias -s pptx=ooimpress
alias -s htm=firefox
alias -s html=firefox
alias -s png=eog
alias -s jpg=eog
alias -s gif=eog
alias -s tar=file-roller
alias -s gz=file-roller
alias -s bz2=file-roller
alias -s rar=file-roller
alias -s zip=file-roller
alias -s py=python
alias -s erl=erl

tmux -2
