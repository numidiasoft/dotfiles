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

export ERL_LIBS=$HOME/.kerl/Site

export GOROOT=$HOME/projects/golang-src
path=($GOROOT/bin $path)

export JAVA_OPTS='-server -Dfile.encoding=UTF-8 -Xmx256m -XX:MaxPermSize=128m'
export MAVEN_OPTS='-Xmx256M -XX:MaxPermSize=128M -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=4000'

export LD_LIBRARY_PATH=/usr/local/lib

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

WORKON_HOME=$HOME/.virtualenvs
[[ ! -e "$WORKON_HOME" ]] && mkdir "$WORKON_HOME"
if [ -e /usr/bin/python2 ]; then
    VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2
fi
if [ -e /usr/bin/virtualenvwrapper.sh ]; then
    source /usr/bin/virtualenvwrapper.sh
fi
if [ -e /usr/local/bin/virtualenvwrapper.sh ]; then
    source /usr/local/bin/virtualenvwrapper.sh
fi

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

bindkey "\e[1~" beginning-of-line # Home
bindkey "\e[4~" end-of-line # End
bindkey '\e[A' history-beginning-search-backward # Up
bindkey '\e[B' history-beginning-search-forward # Down

[ -r ~/.zshrc_local ] && . ~/.zshrc_local

eval `keychain --eval --agents ssh id_rsa`

tmux start-server
X=`tmux list-clients -t hub`
if ! tmux has-session -t hub; then
    echo 'eval `ssh-agent`'
    tmux new-session -s hub
elif [ -z $X ]; then
    tmux attach-session -d -t hub
fi
