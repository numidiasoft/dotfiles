export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="wezm"
source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export EDITOR=vi

bindkey -v

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

alias -s pdf=evince
