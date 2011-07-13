export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="wezm"
source $ZSH/oh-my-zsh.sh

setopt no_beep
setopt no_prompt_cr
setopt interactivecomments
setopt extended_glob

setopt append_history
setopt extended_history
setopt hist_no_store
setopt hist_save_no_dups
setopt hist_ignore_all_dups

export LANG=en_US.UTF-8
export EDITOR=vi
bindkey -v
export PAGER="less"
export PERLLIB=$PATH

export JAVA_OPTS='-server -Dfile.encoding=UTF-8 -Xmx256m -XX:MaxPermSize=128m'
export MAVEN_OPTS='-Xmx256M -XX:MaxPermSize=128M'

function loadrvm() {
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
}

path=(bin $HOME/bin /usr/local/bin /usr/bin $path)
manpath=($manpath /usr/man)
cdpath=(~ ..)
if [[ "$VENDOR" == "apple" ]]; then
    path=($path /opt/local/bin)
    manpath=($manpath /opt/local/share/man)
fi
if [[ "$USER" == "root" ]]; then
    path=($path /sbin /usr/sbin /usr/local/sbin /opt/local/sbin)
fi

alias grep="grep --color"
alias df="df -h"
alias du="du -h"

[ -r ~/.zshrc_local ] && . ~/.zshrc_local

tmux start-server
if ! tmux has-session -t hub; then
    tmux new-session -s hub
elif ! tmux list-clients -t hub; then
    tmux attach-session -d -t hub
else
    clear
fi
