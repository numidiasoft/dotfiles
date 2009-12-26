bindkey '\e[3~' delete-char # del
bindkey ';5D' backward-word # ctrl+left
bindkey ';5C' forward-word #ctrl+right

autoload -U compinit promptinit
compinit
promptinit;

if [[ $EUID == 0 ]]
then
PROMPT=$'%{\e[1;31m%}%n %{\e[1;34m%}%~ #%{\e[0m%} ' # user dir %
else
PROMPT=$'%{\e[1;32m%}%n %{\e[1;34m%}%~ %#%{\e[0m%} ' # root dir #
fi
RPROMPT=$'%{\e[1;34m%}%T%{\e[0m%}' # right prompt with time

#alias ls='ls --color=auto'
#alias grep='grep --colour=auto'

export USER_BASH_COMPLETION_DIR=~/.bash_completion.d
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export INFOPATH=/opt/local/share/info:$INFOPATH
export MANPATH=/opt/local/share/man:$MANPATH
export GIT_EDITOR="vim"
export EDITOR=/usr/bin/vim
export DISPLAY=:0.0
