ulimit -c unlimited

export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="wezm"
source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export EDITOR=vi
bindkey -v
export PAGER="less"    
export PERLLIB=$PATH

export JAVA_OPTS='-server -Dfile.encoding=UTF-8 -Xmx256m -XX:MaxPermSize=128m'
export MAVEN_OPTS='-Xmx256M -XX:MaxPermSize=128M'

export LD_LIBRARY_PATH=/usr/local/lib

path=(/usr/local/bin /usr/bin $HOME/bin $path)
manpath=($manpath /usr/man)
cdpath=(~ ..)
if [[ "$VENDOR" == "apple" ]]; then
    path=($path /opt/local/bin)
    manpath=($manpath /opt/local/share/man)
fi
if ((EUID == 0)); then # root
    path=($path /sbin /usr/sbin /usr/local/sbin /opt/local/sbin)
fi

WORKON_HOME=$HOME/.virtualenvs
[[ ! -e "$WORKON_HOME" ]] && mkdir "$WORKON_HOME"
#VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2
if [ -e /usr/bin/virtualenvwrapper.sh ]; then
    source /usr/bin/virtualenvwrapper.sh
fi
if [ -e /usr/local/bin/virtualenvwrapper.sh ]; then
    source /usr/local/bin/virtualenvwrapper.sh
fi

alias grep="grep --color"
alias df="df -h"
alias du="du -h"

alias ng-server='java -cp "`lein classpath`" vimclojure.nailgun.NGServer 127.0.0.1' 

unset TMUX
tmux start-server
if ! tmux has-session -t hub; then
    tmux new-session -s hub
else
    tmux -2 attach-session -d -t hub
fi
