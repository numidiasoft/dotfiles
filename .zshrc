ulimit -c unlimited

export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="wezm"
source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export EDITOR=vi
bindkey -v
export PAGER="less"
export PERLLIB=$PATH

export JAVA_OPTS='-server -Dfile.encoding=UTF-8 -Xmx512m -XX:MaxPermSize=256m -Dcom.sun.management.jmxremote'
export MAVEN_OPTS='-Xmx512M -XX:MaxPermSize=256M'

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

export WORKON_HOME=$HOME/.virtualenvs
[[ ! -e "$WORKON_HOME" ]] && mkdir "$WORKON_HOME"
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2
source /usr/bin/virtualenvwrapper.sh

alias grep="grep --color"
alias df="df -h"
alias du="du -h"

alias ng-server='java -cp "`lein classpath`" vimclojure.nailgun.NGServer 127.0.0.1' 

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
